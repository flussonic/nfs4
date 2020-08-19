-module(nfs4_server).
-include_lib("kernel/include/logger.hrl").
-include_lib("kernel/include/file.hrl").
-include("nfs4.hrl").

-export([start_link/4, start_link/1]).
-export([init_server/4, init/1, handle_info/2, terminate/2]).

-record(state, {
	port,
	tcp_blocks = [],
	socket,

	%% logic
	opened_files = [],
	root,
	clientid,
	title,
	callback,
	instanceid,
	verifier,
	handles = []
}).

-define(ROOT, <<".">>).
-define(HANDLE_OFFSET, 10000000).

start_link(ListenerPid, Socket, Transport, #{} = Opts) ->
  proc_lib:start_link(?MODULE, init_server, [ListenerPid, Transport, Socket, Opts]).


init_server(ListenerPid, ranch_tcp = _Transport, Socket, #{} = Opts) ->
  proc_lib:init_ack({ok, self()}),
  ranch:accept_ack(ListenerPid),
  init2(Opts#{socket => Socket}).


% This function is only for test launch without ranch. Not for production use
start_link(#{} = Opts) ->
	gen_server:start_link(?MODULE, [Opts], []).

init([#{} = Opts]) ->
  proc_lib:init_ack({ok, self()}),
	receive
		{shoot, Socket} -> init2(Opts#{socket => Socket})
	after
		1000 -> error(start_timeout)
	end.


init2(#{socket := Socket, root := Root} = _Opts) ->
  inet:setopts(Socket, [{active,once},binary,{packet,sunrm}]),
  [_, Pid1,Pid2] = string:tokens(pid_to_list(self()),"<.>"),
  Instanceid = list_to_integer(Pid1) * ?HANDLE_OFFSET,
  ClientId = list_to_integer(Pid2) bsl 32 + list_to_integer(Pid1), 
  State = #state{
  	socket = Socket,
  	root = Root,
  	instanceid = Instanceid,
  	clientid = ClientId
  },
  gen_server:enter_loop(?MODULE, [], State).



handle_info({tcp, Socket, Packet}, #state{} = State) ->
	inet:setopts(Socket, [{active,once}]),
  %% Over TCP, reply records may be diveded into fragments.
  %% First, get the Record Marking 32-bit header
  <<Last:1/integer, _Len:31/integer, Block/binary>> = Packet,
  Blocks = State#state.tcp_blocks,
  if 
  	Last == 1 ->
	    Bin = list_to_binary(lists:reverse([Block|Blocks])),
	    S1 = State#state{tcp_blocks = []},
	    case handle_msg(Bin, S1) of
	    	{reply, Reply, S2} ->
			    gen_tcp:send(Socket, [<<1:1, ((iolist_size(Reply))):31/unsigned>>, Reply]),
			    {noreply, S2};
			  {stop, Reason, S2} ->
			  	{stop, Reason, S2};
			  {stop, Reason, Reply, S2} ->
			    gen_tcp:send(Socket, [<<1:1, ((iolist_size(Reply))):31/unsigned>>, Reply]),
			    {stop, Reason, S2}
			end;
		Last == 0 ->
	    {noreply, State#state{tcp_blocks = [Block|Blocks]}}
  end;

handle_info({tcp_error, _, _}, #state{} = State) ->
	{stop, normal, State};

handle_info({tcp_closed, _}, #state{} = State) ->
	{stop, normal, State}.






terminate(_,_) -> ok.



-define(RPC_VERSION_2, 2).


handle_msg(Msg, S) ->
  {{Xid, Body}, Offset} = rpc_xdr:dec_rpc_msg(Msg, 0),
  <<_:Offset/binary, Args/binary>> = Msg,
  {'CALL', {RpcVsn, Prg, Vsn, Proc, _Cred, Verf}} = Body,
  ?RPC_VERSION_2 = RpcVsn,
  ?NFS4_PROGRAM = Prg,
	?NFS_V4 = Vsn,

	{reply, Bytes, S1} = handle_funcall(Proc, Args, S#state{verifier = Verf}),
  AcceptBody = {'SUCCESS', <<>>},
  ReplyHeader = {Xid, {'REPLY', {'MSG_ACCEPTED', {Verf, AcceptBody}}}},
  Reply = [rpc_xdr:enc_rpc_msg(ReplyHeader), Bytes],

  {reply, Reply, S1}.


-record(ctx, {
	status = 'NFS4_OK',
	path = <<"">>,
	fh
}).

-record(file, {
	path,
	effective_path,
	f,
	stateid,
	seq = 0
}).


handle_funcall(0, _, S) ->
	{reply, [], S};

handle_funcall(1, Bin, S) ->
  {CompoundArgs, _Offset} = nfs4_xdr:dec_COMPOUND4args(Bin, 0),
  {Tag, _MinorVersion, Commands} = CompoundArgs,
	% io:format("Call\n~p\n", [Commands]),
  {Replies, #ctx{status = Status}, S1} = handle_compound_call(Commands, #ctx{}, S),
  Reply = nfs4_xdr:enc_COMPOUND4res({Status, Tag, Replies}),
	{reply, Reply, S1}.


handle_compound_call([], Ctx, S) ->
	{[], Ctx, S};

handle_compound_call([{Command, Args} | List], Ctx, S) ->
	case handle_one_call(Command, Args, Ctx, S) of
		{reply, Reply, Ctx1, S1} ->
			% ?LOG_ERROR("~p(~p) = ~p", [Command, Args, Reply]),
			{Replies, Ctx2, S2} = handle_compound_call(List, Ctx1, S1),
			{[{Command,Reply}|Replies], Ctx2, S2};
		{error, Error, Ctx1, S1} ->
			% ?LOG_ERROR("~p(~p) ! ~p", [Command, Args, Error]),
			{[{Command, Error}], Ctx1, S1}
	end.




handle_one_call('OP_SETCLIENTID', Args, Ctx, #state{clientid = ClientID} = S) ->
	{{Verifier, ClientTitle}, Callback, _Ident} = Args,
	{reply, {'NFS4_OK', {ClientID, Verifier}}, Ctx, S#state{verifier = Verifier, title = ClientTitle, callback = Callback}};

handle_one_call('OP_SETCLIENTID_CONFIRM', _Args, Ctx, #state{} = S) ->
	{reply, {'NFS4_OK'}, Ctx, S};

handle_one_call('OP_PUTROOTFH', _, Ctx, #state{} = S) ->
	{FH, S1} = find_or_alloc_fh(?ROOT, S),
	{reply, {'NFS4_OK'}, Ctx#ctx{path = ?ROOT, fh = FH}, S1};

handle_one_call('OP_GETATTR', {RequestedAttrs}, #ctx{path = Path} = Ctx, #state{root = Root} = S) ->
	EffectivePath = filename:join(Root, Path),
	case file:read_link_info(EffectivePath) of
		{ok, #file_info{} = FileInfo} ->
			Attrs = getattr_on_file_info(RequestedAttrs, FileInfo, Ctx),
			{reply, {'NFS4_OK', {Attrs}}, Ctx, S};
		{error, _} ->
			?LOG_ERROR("Strange, but cannot getattr on ~p (~s)", [Path, EffectivePath]),
			{error, {'NFS4ERR_NOENT', void}, Ctx#ctx{status = 'NFS4ERR_NOENT'}, S}
	end;

handle_one_call('OP_GETFH', _, #ctx{path = Path} = Ctx, #state{} = S) ->
	{FH, S1} = find_or_alloc_fh(Path, S),
	{reply, {'NFS4_OK', {FH}}, Ctx#ctx{fh = FH}, S1};

handle_one_call('OP_PUTFH', {FH}, #ctx{} = Ctx, #state{handles = Handles} = S) ->
	case lists:keyfind(FH, 2, Handles) of
		false ->
			?LOG_ERROR("expired fh ~p", [FH]),
			{error, {'NFS4ERR_FHEXPIRED'}, Ctx#ctx{status = 'NFS4ERR_FHEXPIRED'}, S};
		{Path, _} ->
			% ?LOG_NOTICE("cd ~p ~p", [Path, FH]),
			{reply, {'NFS4_OK'}, Ctx#ctx{fh = FH, path = Path}, S}
	end;

handle_one_call('OP_LOOKUP', {Segment}, #ctx{path = Path} = Ctx, #state{} = S) ->
	false = Segment == <<"..">>,
	nomatch = binary:match(Segment,<<"/">>),
	NewPath = filename:join(Path, Segment),
	EffectivePath = filename:join([effective_path(Path, S), Segment]),
	case file:read_link_info(EffectivePath) of
		{ok, _} ->
			{FH, S1} = find_or_alloc_fh(NewPath, S),
			{reply, {'NFS4_OK'}, Ctx#ctx{path = NewPath, fh = FH}, S1};
		{error, _E} ->
			% ?LOG_ERROR("~p ~s / ~s / ~s", [E, S#state.root, Path, Segment]),
			{error, {'NFS4ERR_NOENT'}, Ctx#ctx{status = 'NFS4ERR_NOENT'}, S}
	end;

handle_one_call('OP_OPEN', Args, #ctx{path = Path} = Ctx, #state{} = S) ->
	{_Seq, _ShareAccess, _ShareDeny, _Owner, _Openhow, OpenClaim} = Args,
	{'CLAIM_NULL', Segment} = OpenClaim,
	SubPath = filename:join(Path, Segment),
	case find_or_open(SubPath, S) of
		{ok, #file{} = File, S1} ->
			OpenOk = {
				{File#file.seq, File#file.stateid},
				{false,0,0}, % change
				0, % result flags
				[], % attributes for create
				{'OPEN_DELEGATE_NONE', void}
			},
			{FH, S2} = find_or_alloc_fh(SubPath, S1),			
			{reply, {'NFS4_OK',OpenOk}, Ctx#ctx{fh = FH, path = SubPath}, S2};
		{error, symlink} ->
			{error, {'NFS4ERR_SYMLINK',void}, Ctx#ctx{status = 'NFS4ERR_SYMLINK'}, S};
		{error, isdir} ->
			{error, {'NFS4ERR_ISDIR',void}, Ctx#ctx{status = 'NFS4ERR_ISDIR'}, S};
		{error, other_type} ->
			{error, {'NFS4ERR_WRONG_TYPE',void}, Ctx#ctx{status = 'NFS4ERR_WRONG_TYPE'}, S};
		{error, _} ->
			{error, {'NFS4ERR_NOENT',void}, Ctx#ctx{status = 'NFS4ERR_NOENT'}, S}
	end;


handle_one_call('OP_CLOSE', {_Seq, {_Seq2, StateId} = St}, #ctx{} = Ctx, #state{} = S) ->
	case close_file(StateId, S) of
		{ok, NewSubPath, S1} ->
			{FH, S2} = find_or_alloc_fh(NewSubPath, S1),			
			{reply, {'NFS4_OK',St}, Ctx#ctx{fh = FH, path = NewSubPath}, S2};
		{error, _} ->
			{error, {'NFS4ERR_NOENT',void}, Ctx#ctx{status = 'NFS4ERR_NOENT'}, S}
	end;


handle_one_call('OP_READDIR', Args, #ctx{path = Path} = Ctx, #state{} = S) ->
	EffectivePath = iolist_to_binary(effective_path(Path, S)),
	List = filelib:wildcard("*", binary_to_list(EffectivePath)),
	{Cookie, _, _Limit1, _Limit2, RequestedAttrs} = Args,
	Verifier = <<0:64>>,
	StartOffset = 3,
	{DirList, S3, _X} = lists:foldr(fun
		(_, {Tail, S1, N}) when N =< Cookie ->
			{Tail, S1, N};
		(Name, {Tail, S1, N}) ->
			VPath = filename:join(Path,Name),
			case file:read_link_info(effective_path(VPath,S)) of
				{ok, FileInfo} ->
					{FH, S2} = find_or_alloc_fh(VPath, S1),
					Attrs = getattr_on_file_info(RequestedAttrs, FileInfo, Ctx#ctx{path = VPath, fh = FH}),
					{{N, Name, Attrs, Tail}, S2, N-1};
				{error, _} ->
					{Tail, S1, N}
			end
	end, {void, S, StartOffset+length(List)}, List),
	% io:format("dirlist: ~p, ~p", [S3#state.handles, List]),
	{reply, {'NFS4_OK', {Verifier, {DirList,true}}}, Ctx, S3};

handle_one_call('OP_READLINK', _, #ctx{path = Path} = Ctx, #state{} = S) ->
	EffectivePath = effective_path(Path, S),
	case file:read_link(EffectivePath) of
		{ok, Link} ->
			{reply, {'NFS4_OK', {Link}}, Ctx, S};
		{error, _} ->
			{error, {'NFS4ERR_NOENT', void}, Ctx#ctx{status = 'NFS4ERR_NOENT'}, S}
	end;

handle_one_call('OP_RENEW', _, #ctx{} = Ctx, #state{} = S) ->
	{reply, {'NFS4_OK'}, Ctx, S};

handle_one_call('OP_ACCESS', {Access}, #ctx{} = Ctx, #state{} = S) ->
	{reply, {'NFS4_OK', {Access, 1 bor 2}}, Ctx, S};

handle_one_call('OP_READ', {{_,StateId}, Offset, Count}, #ctx{} = Ctx, #state{} = S) ->
	case pread(StateId, Offset, Count, S) of
		{ok, Bin} ->
			{reply, {'NFS4_OK', {false, Bin}}, Ctx, S};
		eof ->
			{reply, {'NFS4_OK', {true, <<>>}}, Ctx, S};
		{error, _E} ->
			{error, {'NFS4ERR_IO', vpid}, Ctx#ctx{status = 'NFS4ERR_IO'}, S}
	end;

handle_one_call(_Cmd, _Args, Ctx, #state{} = S) ->
	?LOG_ERROR("~s(~p) unknown", [_Cmd, _Args]),
	{reply, {'NFS4ERR_PERM', void}, Ctx#ctx{status = 'NFS4ERR_PERM'}, S}.



effective_path(Path, #state{root = Root}) ->
	filename:join([Root, Path]).


find_or_open(SubPath, #state{opened_files = Files} = S) ->
	case lists:keyfind(SubPath, #file.path, Files) of
		false ->
			open_file(SubPath, S);
		#file{} = File ->
			{ok, File, S}
	end.

open_file(SubPath, #state{opened_files = Files} = S) ->
	EffectivePath = effective_path(SubPath, S),
	case file:read_link_info(EffectivePath) of
		{ok, #file_info{type = regular}} -> 
			case file:open(EffectivePath, [read,binary]) of
				{ok, F} ->
					File = #file{
						effective_path = EffectivePath,
						path = SubPath,
						f = F,
						seq = 1,
						stateid = crypto:strong_rand_bytes(12)
					},
					{ok, File, S#state{opened_files = [File|Files]}};
				{error, E} ->
					{error, E}
			end;
		{ok, #file_info{type = directory}} ->
			{error, isdir};
		{ok, #file_info{type = symlink}} ->
			{error, symlink};
		{ok, #file_info{}} ->
			{error, other_type};
		{error, E1} ->
			{error, E1}
	end.



close_file(StateId, #state{opened_files = Opened} = S) ->
	case lists:keyfind(StateId, #file.stateid, Opened) of
		false -> 
			{error, enoent};
		#file{f = F, stateid = StateId, path = SubPath} ->
			NewSubPath = filename:dirname(SubPath),
			file:close(F),
			Opened1 = lists:keydelete(StateId, #file.stateid, Opened),
			{ok, NewSubPath, S#state{opened_files = Opened1}}
	end.


pread(StateId, Offset, Count, #state{opened_files = Opened}) ->
	case lists:keyfind(StateId, #file.stateid, Opened) of
		#file{f = F, stateid = StateId} ->
			file:pread(F, Offset, Count);
		_ ->
			{error, enoent}
	end.





find_or_alloc_fh(Path, #state{handles = Handles, instanceid = I} = S) ->
	{FH, Handles1} = case lists:keyfind(Path, 1, Handles) of
		false ->
			FH1 = integer_to_binary(I + length(Handles)+1),
			{FH1, [{Path,FH1}|Handles]};
		{Path,FH1} ->
			{FH1, Handles}
	end,
	{FH, S#state{handles = Handles1}}.





getattr_on_file_info(RequestedAttrs, FileInfo, #ctx{path = Path, fh = FH}) ->
	#file_info{inode = Inode, size = Size, type = Type, mode = Mode} = FileInfo,
	Attrs = lists:flatmap(fun
		(supported_attrs) ->
			[{supported_attrs, [supported_attrs,type,fh_expire_type,change,size,link_support,symlink_support,
			named_attr,fsid,unique_handles,lease_time,rdattr_error,acl,aclsupport,
			cansettime,case_insensitive,case_preserving,chown_restricted,filehandle,fileid,
			files_avail,files_total,fs_locations,homogeneous,maxfilesize, maxlink,maxname,
			maxread,maxwrite,mode,no_trunc,numlinks,owner,owner_group,
			rawdev,space_avail,space_free,space_total,space_used,time_access,time_access_set,
			time_delta,time_metadata,time_modify,time_modify_set,mounted_on_fileid]}];
		(type) ->
			T = case Type of
				device -> 'NF4BLK';
				directory -> 'NF4DIR';
				symlink -> 'NF4LNK';
				_ -> 'NF4REG'
			end,
			[{type, T}];
		(fh_expire_type) ->
			[{fh_expire_type, [volatile_any, noexpire_with_open]}];
		(change) ->
			[{change, 0}];
		(size) ->
			[{size, Size}];
		(link_support) ->
			[{link_support, true}];
		(symlink_support) ->
			[{symlink_support, true}];
		(named_attr) ->
			[{named_attr, false}];
		(fsid) ->
			[{fsid, {0,0}}];
		(unique_handles) ->
			[{unique_handles, true}];
		(lease_time) ->
			[{lease_time, 90}];
		% (rdattr_error) ->
		% 	[{rdattr_error, 'NFS4_OK'}];
		(filehandle) ->
			[{filehandle, FH}];
		% (aclsupport) ->
		% 	[{aclsupport, 0}];
		(cansettime) ->
			[{cansettime, false}];
		(fileid) ->
			[{fileid, Inode}];
		(mode) ->
			[{mode, Mode band 8#777}];
		(numlinks) ->
			[{numlinks, 1}];
		(owner) ->
			[{owner,<<"0">>}];
		(owner_group) ->
			[{owner_group,<<"0">>}];
		(files_total) ->
			[{files_total, 1024}];
		(files_avail) ->
			[{files_avail, 1024}];
		(homogeneous) ->
			[{homogeneous, true}];
		(no_trunc) ->
			[{no_trunc, false}];
		(rawdev) ->
			[{rawdev, {0,0}}];
		(time_access) ->
			[{time_access, {1500000000,0}}];
		(time_modify) ->
			[{time_modify, {1500000000,0}}];
		(time_metadata) ->
			[{time_metadata, {1500000000,0}}];
		(space_used) ->
			[{space_used, Size}];
		(mounted_on_fileid) when Path == <<"">> ->
			[{mounted_on_fileid,Inode}];
		(maxfilesize) ->
			[{maxfilesize,1024*1024*1024*128}];
		(maxread) ->
			[{maxread,131072}];
		(maxwrite) ->
			[{maxwrite,131072}];
		(time_delta) ->
			[{time_delta, {0,0}}];
		(_) ->
			[]
	end, RequestedAttrs),
	% io:format("unhandled attrs: ~p\n", [RequestedAttrs -- [T || {T,_} <- Attrs] ]),
	% io:format("~s: ~p, ~p\n", [Path, Attrs, RequestedAttrs -- [T || {T,_} <- Attrs]]),
	Attrs.