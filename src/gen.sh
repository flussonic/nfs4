#!/bin/sh

ERL_LIBS=../../erpcgen/_build/default/lib erl -infile nfs4 -outfile nfs4 -options '[hrl,xdr,xdr_inc,svc_callback].' -s erpcgen  -s init stop

