#!/usr/bin/env escript
%%
%%! -env ERL_LIBS _build/default/lib



-mode(compile).


main([]) ->
	{ok, _} = application:ensure_all_started(nfs4),
  {ok, Cwd} = file:get_cwd(),

  % Use this code for production.
  % {ok, _} = application:ensure_all_started(ranch),
	% {ok, _} = ranch:start_listener(nfs4_server, 10, ranch_tcp, [{port,2049}], nfs4_server, #{root => Cwd}),
  % receive
  %   _ -> ok
  % end,

  % However test usage does not include ranch, so take this trivial socket acceptor
  {ok, L} = gen_tcp:listen(2049, [{active,false}, binary]),
  loop(L, #{root => Cwd}),
	ok.


loop(L, Opts) ->
  {ok, ClientSocket} = gen_tcp:accept(L),
  {ok, Pid} = nfs4_server:start_link(Opts),
  unlink(Pid),
  gen_tcp:controlling_process(ClientSocket, Pid),
  Pid ! {shoot, ClientSocket},
  loop(L, Opts).