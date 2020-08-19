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


Why?
====


There are 2 NFS servers in wild nature: kernel nfs and ganesha.

None of them can work from inside docker because they require proper working openat syscall.
openat + docker + overlayfs - no luck.

This code is using only trivial erlang subset of POSIX API, so it will work everywhere.


