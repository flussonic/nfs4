-module(nfs4_server).
-include_lib("kernel/include/logger.hrl").
-include("nfs4.hrl").

-export([start_link/4]).
-export([init_server/3, handle_info/2, terminate/2]).

-record(state, {
	port,
	tcp_blocks = [],
	socket,

	%% logic
	clientid,
	title,
	callback,
	instanceid,
	verifier,
	handles = []
}).


start_link(ListenerPid, Socket, Transport, []) ->
  proc_lib:start_link(?MODULE, init_server, [ListenerPid, Transport, Socket]).


init_server(ListenerPid, Transport, Socket) ->
  proc_lib:init_ack({ok, self()}),
  ranch:accept_ack(ListenerPid),
  Transport:setopts(Socket, [{active,once},binary,{packet,sunrm}]),
  [_, Pid1,Pid2] = string:tokens(pid_to_list(self()),"<.>"),
  Instanceid = list_to_integer(Pid2) bsl 32,
  ClientId = Instanceid + list_to_integer(Pid1), 
  State = #state{
  	socket = Socket,
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
	path = <<"/">>,
	fh
}).


handle_funcall(0, _, S) ->
	{reply, [], S};

handle_funcall(1, Bin, S) ->
  {CompoundArgs, _Offset} = nfs4_xdr:dec_COMPOUND4args(Bin, 0),
  {Tag, _MinorVersion, Commands} = CompoundArgs,
	io:format("Call\n~p\n", [Commands]),
  {Replies, _Ctx, S1} = handle_compound_call(Commands, #ctx{}, S),
  Reply = nfs4_xdr:enc_COMPOUND4res({'NFS4_OK', Tag, Replies}),
	{reply, Reply, S1}.


handle_compound_call([], Ctx, S) ->
	{[], Ctx, S};

handle_compound_call([{Command, Args} | List], Ctx, S) ->
	{reply, Reply, Ctx1, S1} = handle_one_call(Command, Args, Ctx, S),
	{Replies, Ctx2, S2} = handle_compound_call(List, Ctx1, S1),
	{[{Command,Reply}|Replies], Ctx2, S2}.



handle_one_call('OP_SETCLIENTID', Args, Ctx, #state{clientid = ClientID} = S) ->
	{{Verifier, ClientTitle}, Callback, _Ident} = Args,
	io:format("clienid: ~p\n", [ClientTitle]),
	{reply, {'NFS4_OK', {ClientID, Verifier}}, Ctx, S#state{verifier = Verifier, title = ClientTitle, callback = Callback}};

handle_one_call('OP_SETCLIENTID_CONFIRM', _Args, Ctx, #state{} = S) ->
	{reply, {'NFS4_OK'}, Ctx, S};

handle_one_call('OP_PUTROOTFH', _, Ctx, #state{handles = H, instanceid = I} = S) ->
	Handles1 = lists:keystore(<<"/">>, 1, H, {<<"/">>, I}),
	{reply, {'NFS4_OK'}, Ctx#ctx{path = <<"/">>, fh = I}, S#state{handles = Handles1}};

handle_one_call('OP_GETATTR', {RequestedAttrs}, #ctx{path = Path} = Ctx, #state{} = S) ->
	io:format("requested attrs: ~p\n", [RequestedAttrs]),
	Attrs = {[], [<<>>]},
	{reply, {'NFS4_OK', {Attrs}}, Ctx, S};

handle_one_call('OP_GETFH', _, #ctx{path = Path} = Ctx, #state{handles = Handles, instanceid = I} = S) ->
	{FH, Handles1} = case lists:keyfind(Path, 1, Handles) of
		false ->
			FH1 = length(Handles)+1+I,
			{FH1, [{Path,FH1}|Handles]};
		{Path,FH1} ->
			{FH1, Handles}
	end,
	FH2 = integer_to_binary(FH),
	{reply, {'NFS4_OK', {FH2}}, Ctx#ctx{fh = FH2}, S#state{handles = Handles1}};

handle_one_call('OP_PUTFH', {FH}, #ctx{} = Ctx, #state{} = S) ->
	{reply, {'NFS4_OK'}, Ctx#ctx{fh = FH}, S};

handle_one_call('OP_RENEW', _, #ctx{} = Ctx, #state{} = S) ->
	{reply, {'NFS4_OK'}, Ctx, S};

handle_one_call(Cmd, Args, Ctx, #state{} = S) ->
	io:format("unknown ~p(~p)\n", [Cmd, Args]),
	{reply, {'NFS4_OK'}, Ctx, S}.