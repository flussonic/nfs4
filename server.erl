#!/usr/bin/env escript
%%


-mode(compile).


main([]) ->
	{ok, _} = application:ensure_all_started(nfs4),
	{ok, _} = application:ensure_all_started(ranch),
	{ok, _} = ranch:start_listener(nfs4_server, 10, ranch_tcp, [{port,2049}], nfs4_server, []),
	receive
		_ -> ok
	end,
	ok.
