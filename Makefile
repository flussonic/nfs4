all:
	./rebar3 compile


run:
	ERL_LIBS=../flussonic/_build/default/lib:_build/default/lib ./server.erl

