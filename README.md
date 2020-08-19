Erlang NFS4 server
==================



This is a simple NFS4 server that can be used for user-space readonly access.

You can launch it from non-privilleged user even on macos and then mount share from it:

```
./server.erl
```


```
mount -t nfs -o vers=4,port=2049,proto=tcp 127.0.0.1:/  mydirectory
ls mydirectory

.git		LICENSE		Makefile	_build		rebar.lock	rebar3		server.erl	src
```


It uses excellent https://github.com/msantos/erpcgen


