
enc_nfs_ftype4(_1) ->
    case _1 of
        'NF4REG' ->
            <<1:32>>;
        'NF4DIR' ->
            <<2:32>>;
        'NF4BLK' ->
            <<3:32>>;
        'NF4CHR' ->
            <<4:32>>;
        'NF4LNK' ->
            <<5:32>>;
        'NF4SOCK' ->
            <<6:32>>;
        'NF4FIFO' ->
            <<7:32>>;
        'NF4ATTRDIR' ->
            <<8:32>>;
        'NF4NAMEDATTR' ->
            <<9:32>>
    end.

dec_nfs_ftype4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'NF4REG', _2 + 4};
            2 ->
                {'NF4DIR', _2 + 4};
            3 ->
                {'NF4BLK', _2 + 4};
            4 ->
                {'NF4CHR', _2 + 4};
            5 ->
                {'NF4LNK', _2 + 4};
            6 ->
                {'NF4SOCK', _2 + 4};
            7 ->
                {'NF4FIFO', _2 + 4};
            8 ->
                {'NF4ATTRDIR', _2 + 4};
            9 ->
                {'NF4NAMEDATTR', _2 + 4}
        end
    end.

dec_nfs_ftype4_i2a(_4) ->
    case _4 of
        1 ->
            'NF4REG';
        2 ->
            'NF4DIR';
        3 ->
            'NF4BLK';
        4 ->
            'NF4CHR';
        5 ->
            'NF4LNK';
        6 ->
            'NF4SOCK';
        7 ->
            'NF4FIFO';
        8 ->
            'NF4ATTRDIR';
        9 ->
            'NF4NAMEDATTR'
    end.

enc_nfsstat4(_1) ->
    case _1 of
        'NFS4_OK' ->
            <<0:32>>;
        'NFS4ERR_PERM' ->
            <<1:32>>;
        'NFS4ERR_NOENT' ->
            <<2:32>>;
        'NFS4ERR_IO' ->
            <<5:32>>;
        'NFS4ERR_NXIO' ->
            <<6:32>>;
        'NFS4ERR_ACCESS' ->
            <<13:32>>;
        'NFS4ERR_EXIST' ->
            <<17:32>>;
        'NFS4ERR_XDEV' ->
            <<18:32>>;
        'NFS4ERR_NOTDIR' ->
            <<20:32>>;
        'NFS4ERR_ISDIR' ->
            <<21:32>>;
        'NFS4ERR_INVAL' ->
            <<22:32>>;
        'NFS4ERR_FBIG' ->
            <<27:32>>;
        'NFS4ERR_NOSPC' ->
            <<28:32>>;
        'NFS4ERR_ROFS' ->
            <<30:32>>;
        'NFS4ERR_MLINK' ->
            <<31:32>>;
        'NFS4ERR_NAMETOOLONG' ->
            <<63:32>>;
        'NFS4ERR_NOTEMPTY' ->
            <<66:32>>;
        'NFS4ERR_DQUOT' ->
            <<69:32>>;
        'NFS4ERR_STALE' ->
            <<70:32>>;
        'NFS4ERR_BADHANDLE' ->
            <<10001:32>>;
        'NFS4ERR_BAD_COOKIE' ->
            <<10003:32>>;
        'NFS4ERR_NOTSUPP' ->
            <<10004:32>>;
        'NFS4ERR_TOOSMALL' ->
            <<10005:32>>;
        'NFS4ERR_SERVERFAULT' ->
            <<10006:32>>;
        'NFS4ERR_BADTYPE' ->
            <<10007:32>>;
        'NFS4ERR_DELAY' ->
            <<10008:32>>;
        'NFS4ERR_SAME' ->
            <<10009:32>>;
        'NFS4ERR_DENIED' ->
            <<10010:32>>;
        'NFS4ERR_EXPIRED' ->
            <<10011:32>>;
        'NFS4ERR_LOCKED' ->
            <<10012:32>>;
        'NFS4ERR_GRACE' ->
            <<10013:32>>;
        'NFS4ERR_FHEXPIRED' ->
            <<10014:32>>;
        'NFS4ERR_SHARE_DENIED' ->
            <<10015:32>>;
        'NFS4ERR_WRONGSEC' ->
            <<10016:32>>;
        'NFS4ERR_CLID_INUSE' ->
            <<10017:32>>;
        'NFS4ERR_RESOURCE' ->
            <<10018:32>>;
        'NFS4ERR_MOVED' ->
            <<10019:32>>;
        'NFS4ERR_NOFILEHANDLE' ->
            <<10020:32>>;
        'NFS4ERR_MINOR_VERS_MISMATCH' ->
            <<10021:32>>;
        'NFS4ERR_STALE_CLIENTID' ->
            <<10022:32>>;
        'NFS4ERR_STALE_STATEID' ->
            <<10023:32>>;
        'NFS4ERR_OLD_STATEID' ->
            <<10024:32>>;
        'NFS4ERR_BAD_STATEID' ->
            <<10025:32>>;
        'NFS4ERR_BAD_SEQID' ->
            <<10026:32>>;
        'NFS4ERR_NOT_SAME' ->
            <<10027:32>>;
        'NFS4ERR_LOCK_RANGE' ->
            <<10028:32>>;
        'NFS4ERR_SYMLINK' ->
            <<10029:32>>;
        'NFS4ERR_RESTOREFH' ->
            <<10030:32>>;
        'NFS4ERR_LEASE_MOVED' ->
            <<10031:32>>;
        'NFS4ERR_ATTRNOTSUPP' ->
            <<10032:32>>;
        'NFS4ERR_NO_GRACE' ->
            <<10033:32>>;
        'NFS4ERR_RECLAIM_BAD' ->
            <<10034:32>>;
        'NFS4ERR_RECLAIM_CONFLICT' ->
            <<10035:32>>;
        'NFS4ERR_BADZDR' ->
            <<10036:32>>;
        'NFS4ERR_LOCKS_HELD' ->
            <<10037:32>>;
        'NFS4ERR_OPENMODE' ->
            <<10038:32>>;
        'NFS4ERR_BADOWNER' ->
            <<10039:32>>;
        'NFS4ERR_BADCHAR' ->
            <<10040:32>>;
        'NFS4ERR_BADNAME' ->
            <<10041:32>>;
        'NFS4ERR_BAD_RANGE' ->
            <<10042:32>>;
        'NFS4ERR_LOCK_NOTSUPP' ->
            <<10043:32>>;
        'NFS4ERR_OP_ILLEGAL' ->
            <<10044:32>>;
        'NFS4ERR_DEADLOCK' ->
            <<10045:32>>;
        'NFS4ERR_FILE_OPEN' ->
            <<10046:32>>;
        'NFS4ERR_ADMIN_REVOKED' ->
            <<10047:32>>;
        'NFS4ERR_CB_PATH_DOWN' ->
            <<10048:32>>;
        'NFS4ERR_BADIOMODE' ->
            <<10049:32>>;
        'NFS4ERR_BADLAYOUT' ->
            <<10050:32>>;
        'NFS4ERR_BAD_SESSION_DIGEST' ->
            <<10051:32>>;
        'NFS4ERR_BADSESSION' ->
            <<10052:32>>;
        'NFS4ERR_BADSLOT' ->
            <<10053:32>>;
        'NFS4ERR_COMPLETE_ALREADY' ->
            <<10054:32>>;
        'NFS4ERR_CONN_NOT_BOUND_TO_SESSION' ->
            <<10055:32>>;
        'NFS4ERR_DELEG_ALREADY_WANTED' ->
            <<10056:32>>;
        'NFS4ERR_BACK_CHAN_BUSY' ->
            <<10057:32>>;
        'NFS4ERR_LAYOUTTRYLATER' ->
            <<10058:32>>;
        'NFS4ERR_LAYOUTUNAVAILABLE' ->
            <<10059:32>>;
        'NFS4ERR_NOMATCHING_LAYOUT' ->
            <<10060:32>>;
        'NFS4ERR_RECALLCONFLICT' ->
            <<10061:32>>
    end.

dec_nfsstat4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'NFS4_OK', _2 + 4};
            1 ->
                {'NFS4ERR_PERM', _2 + 4};
            2 ->
                {'NFS4ERR_NOENT', _2 + 4};
            5 ->
                {'NFS4ERR_IO', _2 + 4};
            6 ->
                {'NFS4ERR_NXIO', _2 + 4};
            13 ->
                {'NFS4ERR_ACCESS', _2 + 4};
            17 ->
                {'NFS4ERR_EXIST', _2 + 4};
            18 ->
                {'NFS4ERR_XDEV', _2 + 4};
            20 ->
                {'NFS4ERR_NOTDIR', _2 + 4};
            21 ->
                {'NFS4ERR_ISDIR', _2 + 4};
            22 ->
                {'NFS4ERR_INVAL', _2 + 4};
            27 ->
                {'NFS4ERR_FBIG', _2 + 4};
            28 ->
                {'NFS4ERR_NOSPC', _2 + 4};
            30 ->
                {'NFS4ERR_ROFS', _2 + 4};
            31 ->
                {'NFS4ERR_MLINK', _2 + 4};
            63 ->
                {'NFS4ERR_NAMETOOLONG', _2 + 4};
            66 ->
                {'NFS4ERR_NOTEMPTY', _2 + 4};
            69 ->
                {'NFS4ERR_DQUOT', _2 + 4};
            70 ->
                {'NFS4ERR_STALE', _2 + 4};
            10001 ->
                {'NFS4ERR_BADHANDLE', _2 + 4};
            10003 ->
                {'NFS4ERR_BAD_COOKIE', _2 + 4};
            10004 ->
                {'NFS4ERR_NOTSUPP', _2 + 4};
            10005 ->
                {'NFS4ERR_TOOSMALL', _2 + 4};
            10006 ->
                {'NFS4ERR_SERVERFAULT', _2 + 4};
            10007 ->
                {'NFS4ERR_BADTYPE', _2 + 4};
            10008 ->
                {'NFS4ERR_DELAY', _2 + 4};
            10009 ->
                {'NFS4ERR_SAME', _2 + 4};
            10010 ->
                {'NFS4ERR_DENIED', _2 + 4};
            10011 ->
                {'NFS4ERR_EXPIRED', _2 + 4};
            10012 ->
                {'NFS4ERR_LOCKED', _2 + 4};
            10013 ->
                {'NFS4ERR_GRACE', _2 + 4};
            10014 ->
                {'NFS4ERR_FHEXPIRED', _2 + 4};
            10015 ->
                {'NFS4ERR_SHARE_DENIED', _2 + 4};
            10016 ->
                {'NFS4ERR_WRONGSEC', _2 + 4};
            10017 ->
                {'NFS4ERR_CLID_INUSE', _2 + 4};
            10018 ->
                {'NFS4ERR_RESOURCE', _2 + 4};
            10019 ->
                {'NFS4ERR_MOVED', _2 + 4};
            10020 ->
                {'NFS4ERR_NOFILEHANDLE', _2 + 4};
            10021 ->
                {'NFS4ERR_MINOR_VERS_MISMATCH', _2 + 4};
            10022 ->
                {'NFS4ERR_STALE_CLIENTID', _2 + 4};
            10023 ->
                {'NFS4ERR_STALE_STATEID', _2 + 4};
            10024 ->
                {'NFS4ERR_OLD_STATEID', _2 + 4};
            10025 ->
                {'NFS4ERR_BAD_STATEID', _2 + 4};
            10026 ->
                {'NFS4ERR_BAD_SEQID', _2 + 4};
            10027 ->
                {'NFS4ERR_NOT_SAME', _2 + 4};
            10028 ->
                {'NFS4ERR_LOCK_RANGE', _2 + 4};
            10029 ->
                {'NFS4ERR_SYMLINK', _2 + 4};
            10030 ->
                {'NFS4ERR_RESTOREFH', _2 + 4};
            10031 ->
                {'NFS4ERR_LEASE_MOVED', _2 + 4};
            10032 ->
                {'NFS4ERR_ATTRNOTSUPP', _2 + 4};
            10033 ->
                {'NFS4ERR_NO_GRACE', _2 + 4};
            10034 ->
                {'NFS4ERR_RECLAIM_BAD', _2 + 4};
            10035 ->
                {'NFS4ERR_RECLAIM_CONFLICT', _2 + 4};
            10036 ->
                {'NFS4ERR_BADZDR', _2 + 4};
            10037 ->
                {'NFS4ERR_LOCKS_HELD', _2 + 4};
            10038 ->
                {'NFS4ERR_OPENMODE', _2 + 4};
            10039 ->
                {'NFS4ERR_BADOWNER', _2 + 4};
            10040 ->
                {'NFS4ERR_BADCHAR', _2 + 4};
            10041 ->
                {'NFS4ERR_BADNAME', _2 + 4};
            10042 ->
                {'NFS4ERR_BAD_RANGE', _2 + 4};
            10043 ->
                {'NFS4ERR_LOCK_NOTSUPP', _2 + 4};
            10044 ->
                {'NFS4ERR_OP_ILLEGAL', _2 + 4};
            10045 ->
                {'NFS4ERR_DEADLOCK', _2 + 4};
            10046 ->
                {'NFS4ERR_FILE_OPEN', _2 + 4};
            10047 ->
                {'NFS4ERR_ADMIN_REVOKED', _2 + 4};
            10048 ->
                {'NFS4ERR_CB_PATH_DOWN', _2 + 4};
            10049 ->
                {'NFS4ERR_BADIOMODE', _2 + 4};
            10050 ->
                {'NFS4ERR_BADLAYOUT', _2 + 4};
            10051 ->
                {'NFS4ERR_BAD_SESSION_DIGEST', _2 + 4};
            10052 ->
                {'NFS4ERR_BADSESSION', _2 + 4};
            10053 ->
                {'NFS4ERR_BADSLOT', _2 + 4};
            10054 ->
                {'NFS4ERR_COMPLETE_ALREADY', _2 + 4};
            10055 ->
                {'NFS4ERR_CONN_NOT_BOUND_TO_SESSION', _2 + 4};
            10056 ->
                {'NFS4ERR_DELEG_ALREADY_WANTED', _2 + 4};
            10057 ->
                {'NFS4ERR_BACK_CHAN_BUSY', _2 + 4};
            10058 ->
                {'NFS4ERR_LAYOUTTRYLATER', _2 + 4};
            10059 ->
                {'NFS4ERR_LAYOUTUNAVAILABLE', _2 + 4};
            10060 ->
                {'NFS4ERR_NOMATCHING_LAYOUT', _2 + 4};
            10061 ->
                {'NFS4ERR_RECALLCONFLICT', _2 + 4}
        end
    end.

dec_nfsstat4_i2a(_4) ->
    case _4 of
        0 ->
            'NFS4_OK';
        1 ->
            'NFS4ERR_PERM';
        2 ->
            'NFS4ERR_NOENT';
        5 ->
            'NFS4ERR_IO';
        6 ->
            'NFS4ERR_NXIO';
        13 ->
            'NFS4ERR_ACCESS';
        17 ->
            'NFS4ERR_EXIST';
        18 ->
            'NFS4ERR_XDEV';
        20 ->
            'NFS4ERR_NOTDIR';
        21 ->
            'NFS4ERR_ISDIR';
        22 ->
            'NFS4ERR_INVAL';
        27 ->
            'NFS4ERR_FBIG';
        28 ->
            'NFS4ERR_NOSPC';
        30 ->
            'NFS4ERR_ROFS';
        31 ->
            'NFS4ERR_MLINK';
        63 ->
            'NFS4ERR_NAMETOOLONG';
        66 ->
            'NFS4ERR_NOTEMPTY';
        69 ->
            'NFS4ERR_DQUOT';
        70 ->
            'NFS4ERR_STALE';
        10001 ->
            'NFS4ERR_BADHANDLE';
        10003 ->
            'NFS4ERR_BAD_COOKIE';
        10004 ->
            'NFS4ERR_NOTSUPP';
        10005 ->
            'NFS4ERR_TOOSMALL';
        10006 ->
            'NFS4ERR_SERVERFAULT';
        10007 ->
            'NFS4ERR_BADTYPE';
        10008 ->
            'NFS4ERR_DELAY';
        10009 ->
            'NFS4ERR_SAME';
        10010 ->
            'NFS4ERR_DENIED';
        10011 ->
            'NFS4ERR_EXPIRED';
        10012 ->
            'NFS4ERR_LOCKED';
        10013 ->
            'NFS4ERR_GRACE';
        10014 ->
            'NFS4ERR_FHEXPIRED';
        10015 ->
            'NFS4ERR_SHARE_DENIED';
        10016 ->
            'NFS4ERR_WRONGSEC';
        10017 ->
            'NFS4ERR_CLID_INUSE';
        10018 ->
            'NFS4ERR_RESOURCE';
        10019 ->
            'NFS4ERR_MOVED';
        10020 ->
            'NFS4ERR_NOFILEHANDLE';
        10021 ->
            'NFS4ERR_MINOR_VERS_MISMATCH';
        10022 ->
            'NFS4ERR_STALE_CLIENTID';
        10023 ->
            'NFS4ERR_STALE_STATEID';
        10024 ->
            'NFS4ERR_OLD_STATEID';
        10025 ->
            'NFS4ERR_BAD_STATEID';
        10026 ->
            'NFS4ERR_BAD_SEQID';
        10027 ->
            'NFS4ERR_NOT_SAME';
        10028 ->
            'NFS4ERR_LOCK_RANGE';
        10029 ->
            'NFS4ERR_SYMLINK';
        10030 ->
            'NFS4ERR_RESTOREFH';
        10031 ->
            'NFS4ERR_LEASE_MOVED';
        10032 ->
            'NFS4ERR_ATTRNOTSUPP';
        10033 ->
            'NFS4ERR_NO_GRACE';
        10034 ->
            'NFS4ERR_RECLAIM_BAD';
        10035 ->
            'NFS4ERR_RECLAIM_CONFLICT';
        10036 ->
            'NFS4ERR_BADZDR';
        10037 ->
            'NFS4ERR_LOCKS_HELD';
        10038 ->
            'NFS4ERR_OPENMODE';
        10039 ->
            'NFS4ERR_BADOWNER';
        10040 ->
            'NFS4ERR_BADCHAR';
        10041 ->
            'NFS4ERR_BADNAME';
        10042 ->
            'NFS4ERR_BAD_RANGE';
        10043 ->
            'NFS4ERR_LOCK_NOTSUPP';
        10044 ->
            'NFS4ERR_OP_ILLEGAL';
        10045 ->
            'NFS4ERR_DEADLOCK';
        10046 ->
            'NFS4ERR_FILE_OPEN';
        10047 ->
            'NFS4ERR_ADMIN_REVOKED';
        10048 ->
            'NFS4ERR_CB_PATH_DOWN';
        10049 ->
            'NFS4ERR_BADIOMODE';
        10050 ->
            'NFS4ERR_BADLAYOUT';
        10051 ->
            'NFS4ERR_BAD_SESSION_DIGEST';
        10052 ->
            'NFS4ERR_BADSESSION';
        10053 ->
            'NFS4ERR_BADSLOT';
        10054 ->
            'NFS4ERR_COMPLETE_ALREADY';
        10055 ->
            'NFS4ERR_CONN_NOT_BOUND_TO_SESSION';
        10056 ->
            'NFS4ERR_DELEG_ALREADY_WANTED';
        10057 ->
            'NFS4ERR_BACK_CHAN_BUSY';
        10058 ->
            'NFS4ERR_LAYOUTTRYLATER';
        10059 ->
            'NFS4ERR_LAYOUTUNAVAILABLE';
        10060 ->
            'NFS4ERR_NOMATCHING_LAYOUT';
        10061 ->
            'NFS4ERR_RECALLCONFLICT'
    end.

enc_uint64_t(_1) ->
    <<_1:64>>.

dec_uint64_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:64/unsigned,_/binary>> = _1,
        {_3, _2 + 8}
    end.

enc_int64_t(_1) ->
    <<_1:64>>.

dec_int64_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:64/signed,_/binary>> = _1,
        {_3, _2 + 8}
    end.

enc_uint32_t(_1) ->
    <<_1:32>>.

dec_uint32_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        {_3, _2 + 4}
    end.

enc_int32_t(_1) ->
    <<_1:32>>.

dec_int32_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        {_3, _2 + 4}
    end.

enc_authsys(_1) ->
    case _1 of
        'AUTH_NONE' ->
            <<0:32>>;
        'AUTH_SYS' ->
            <<1:32>>
    end.

dec_authsys(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'AUTH_NONE', _2 + 4};
            1 ->
                {'AUTH_SYS', _2 + 4}
        end
    end.

dec_authsys_i2a(_4) ->
    case _4 of
        0 ->
            'AUTH_NONE';
        1 ->
            'AUTH_SYS'
    end.

enc_bitmap4(_1) ->
    begin
        _3 = length(_1),
        [<<_3:32/unsigned>>,
         lists:map(fun(_2) ->
                          enc_uint32_t(_2)
                   end,
                   _1)]
    end.

dec_bitmap4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        map_elem(fun(_4, _5) ->
                        dec_uint32_t(_4, _5)
                 end,
                 _1,
                 _2 + 4,
                 infinity, _3)
    end.

enc_offset4(_1) ->
    enc_uint64_t(_1).

dec_offset4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_count4(_1) ->
    enc_uint32_t(_1).

dec_count4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_length4(_1) ->
    enc_uint64_t(_1).

dec_length4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_clientid4(_1) ->
    enc_uint64_t(_1).

dec_clientid4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_sequenceid4(_1) ->
    enc_uint32_t(_1).

dec_sequenceid4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_seqid4(_1) ->
    enc_uint32_t(_1).

dec_seqid4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_slotid4(_1) ->
    enc_uint32_t(_1).

dec_slotid4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_utf8string(_1) ->
    begin
        _2 = io_list_len(_1),
        [<<_2:32/unsigned>>, _1, enc_align(_2)]
    end.

dec_utf8string(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        _4 = _2 + 4,
        <<_:_4/binary,_5:_3/binary,_/binary>> = _1,
        {_5, _4 + align(_3)}
    end.

enc_utf8str_cis(_1) ->
    enc_utf8string(_1).

dec_utf8str_cis(_1, _2) ->
    dec_utf8string(_1, _2).

enc_utf8str_cs(_1) ->
    enc_utf8string(_1).

dec_utf8str_cs(_1, _2) ->
    dec_utf8string(_1, _2).

enc_utf8str_mixed(_1) ->
    enc_utf8string(_1).

dec_utf8str_mixed(_1, _2) ->
    dec_utf8string(_1, _2).

enc_component4(_1) ->
    enc_utf8str_cs(_1).

dec_component4(_1, _2) ->
    dec_utf8str_cs(_1, _2).

enc_pathname4(_1) ->
    begin
        _3 = length(_1),
        [<<_3:32/unsigned>>,
         lists:map(fun(_2) ->
                          enc_component4(_2)
                   end,
                   _1)]
    end.

dec_pathname4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        map_elem(fun(_4, _5) ->
                        dec_component4(_4, _5)
                 end,
                 _1,
                 _2 + 4,
                 infinity, _3)
    end.

enc_nfs_lockid4(_1) ->
    enc_uint64_t(_1).

dec_nfs_lockid4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_nfs_cookie4(_1) ->
    enc_uint64_t(_1).

dec_nfs_cookie4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_linktext4(_1) ->
    enc_utf8str_cs(_1).

dec_linktext4(_1, _2) ->
    dec_utf8str_cs(_1, _2).

enc_sec_oid4(_1) ->
    begin
        _2 = io_list_len(_1),
        [<<_2:32/unsigned>>, _1, enc_align(_2)]
    end.

dec_sec_oid4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        _4 = _2 + 4,
        <<_:_4/binary,_5:_3/binary,_/binary>> = _1,
        {_5, _4 + align(_3)}
    end.

enc_qop4(_1) ->
    enc_uint32_t(_1).

dec_qop4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_mode4(_1) ->
    enc_uint32_t(_1).

dec_mode4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_changeid4(_1) ->
    enc_uint64_t(_1).

dec_changeid4(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_verifier4(_1) ->
    case io_list_len(_1) of
        8 ->
            _1;
        _ ->
            exit({xdr, limit})
    end.

dec_verifier4(_1, _2) ->
    begin
        <<_:_2/binary,_3:8/binary,_/binary>> = _1,
        {_3, _2 + 8}
    end.

enc_sessionid4(_1) ->
    case io_list_len(_1) of
        16 ->
            _1;
        _ ->
            exit({xdr, limit})
    end.

dec_sessionid4(_1, _2) ->
    begin
        <<_:_2/binary,_3:16/binary,_/binary>> = _1,
        {_3, _2 + 16}
    end.

enc_authsys_parms(_1) ->
    case _1 of
        {_9, _7, _6, _5, _2} ->
            [<<_9:32>>,
             begin
                 _8 = io_list_len(_7),
                 if
                     _8 =< 255 ->
                         [<<_8:32/unsigned>>, _7, enc_align(_8)];
                     true ->
                         exit({xdr, limit})
                 end
             end,
             <<_6:32>>,
             <<_5:32>>,
             begin
                 _4 = length(_2),
                 if
                     _4 =< 16 ->
                         [<<_4:32/unsigned>>,
                          lists:map(fun(_3) ->
                                           <<_3:32>>
                                    end,
                                    _2)];
                     true ->
                         exit({xdr, limit})
                 end
             end]
    end.

dec_authsys_parms(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
            _4 = _2 + 4
        end,
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 255 ->
                        exit({xdr, limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9, _8 + align(_7)}
                end
            end,
        begin
            <<_:_6/binary,_10:32/unsigned,_/binary>> = _1,
            _11 = _6 + 4
        end,
        begin
            <<_:_11/binary,_12:32/unsigned,_/binary>> = _1,
            _13 = _11 + 4
        end,
        {_14, _15} =
            begin
                <<_:_13/binary,_16:32/unsigned,_/binary>> = _1,
                map_elem(fun(_17, _18) ->
                                begin
                                    <<_:_18/binary,
                                      _19:32/unsigned,
                                      _/binary>> =
                                        _17,
                                    {_19, _18 + 4}
                                end
                         end,
                         _1,
                         _13 + 4,
                         16, _16)
            end,
        {{_3, _5, _10, _12, _14}, _15}
    end.

enc_deviceid4(_1) ->
    case io_list_len(_1) of
        16 ->
            _1;
        _ ->
            exit({xdr, limit})
    end.

dec_deviceid4(_1, _2) ->
    begin
        <<_:_2/binary,_3:16/binary,_/binary>> = _1,
        {_3, _2 + 16}
    end.

enc_layouttype4(_1) ->
    case _1 of
        'LAYOUT4_NFSV4_1_FILES' ->
            <<1:32>>;
        'LAYOUT4_OSD2_OBJECTS' ->
            <<2:32>>;
        'LAYOUT4_BLOCK_VOLUME' ->
            <<3:32>>
    end.

dec_layouttype4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'LAYOUT4_NFSV4_1_FILES', _2 + 4};
            2 ->
                {'LAYOUT4_OSD2_OBJECTS', _2 + 4};
            3 ->
                {'LAYOUT4_BLOCK_VOLUME', _2 + 4}
        end
    end.

dec_layouttype4_i2a(_4) ->
    case _4 of
        1 ->
            'LAYOUT4_NFSV4_1_FILES';
        2 ->
            'LAYOUT4_OSD2_OBJECTS';
        3 ->
            'LAYOUT4_BLOCK_VOLUME'
    end.

enc_layoutupdate4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_layouttype4(_4),
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_layoutupdate4(_1, _2) ->
    begin
        {_3, _4} = dec_layouttype4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _8 = _4 + 4,
                <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                {_9, _8 + align(_7)}
            end,
        {{_3, _5}, _6}
    end.

enc_device_addr4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_layouttype4(_4),
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_device_addr4(_1, _2) ->
    begin
        {_3, _4} = dec_layouttype4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _8 = _4 + 4,
                <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                {_9, _8 + align(_7)}
            end,
        {{_3, _5}, _6}
    end.

enc_nfstime4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_int64_t(_3), enc_uint32_t(_2)]
    end.

dec_nfstime4(_1, _2) ->
    begin
        {_3, _4} = dec_int64_t(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {{_3, _5}, _6}
    end.

enc_time_how4(_1) ->
    case _1 of
        'SET_TO_SERVER_TIME4' ->
            <<0:32>>;
        'SET_TO_CLIENT_TIME4' ->
            <<1:32>>
    end.

dec_time_how4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'SET_TO_SERVER_TIME4', _2 + 4};
            1 ->
                {'SET_TO_CLIENT_TIME4', _2 + 4}
        end
    end.

dec_time_how4_i2a(_4) ->
    case _4 of
        0 ->
            'SET_TO_SERVER_TIME4';
        1 ->
            'SET_TO_CLIENT_TIME4'
    end.

enc_layoutiomode4(_1) ->
    case _1 of
        'LAYOUTIOMODE4_READ' ->
            <<1:32>>;
        'LAYOUTIOMODE4_RW' ->
            <<2:32>>;
        'LAYOUTIOMODE4_ANY' ->
            <<3:32>>
    end.

dec_layoutiomode4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'LAYOUTIOMODE4_READ', _2 + 4};
            2 ->
                {'LAYOUTIOMODE4_RW', _2 + 4};
            3 ->
                {'LAYOUTIOMODE4_ANY', _2 + 4}
        end
    end.

dec_layoutiomode4_i2a(_4) ->
    case _4 of
        1 ->
            'LAYOUTIOMODE4_READ';
        2 ->
            'LAYOUTIOMODE4_RW';
        3 ->
            'LAYOUTIOMODE4_ANY'
    end.

enc_layout_content4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_layouttype4(_4),
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_layout_content4(_1, _2) ->
    begin
        {_3, _4} = dec_layouttype4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _8 = _4 + 4,
                <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                {_9, _8 + align(_7)}
            end,
        {{_3, _5}, _6}
    end.

enc_layout4(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_offset4(_5),
             enc_length4(_4),
             enc_layoutiomode4(_3),
             enc_layout_content4(_2)]
    end.

dec_layout4(_1, _2) ->
    begin
        {_3, _4} = dec_offset4(_1, _2),
        {_5, _6} = dec_length4(_1, _4),
        {_7, _8} = dec_layoutiomode4(_1, _6),
        {_9, _10} = dec_layout_content4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_settime4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_time_how4(_2),
             case _2 of
                 'SET_TO_CLIENT_TIME4' ->
                     enc_nfstime4(_3);
                 _ ->
                     []
             end]
    end.

dec_settime4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_nfstime4(_1, _6),
                {{'SET_TO_CLIENT_TIME4', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_time_how4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_nfs_fh4(_1) ->
    begin
        _2 = io_list_len(_1),
        if
            _2 =< 128 ->
                [<<_2:32/unsigned>>, _1, enc_align(_2)];
            true ->
                exit({xdr, limit})
        end
    end.

dec_nfs_fh4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        if
            _3 > 128 ->
                exit({xdr, limit});
            true ->
                _4 = _2 + 4,
                <<_:_4/binary,_5:_3/binary,_/binary>> = _1,
                {_5, _4 + align(_3)}
        end
    end.

enc_fsid4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint64_t(_3), enc_uint64_t(_2)]
    end.

dec_fsid4(_1, _2) ->
    begin
        {_3, _4} = dec_uint64_t(_1, _2),
        {_5, _6} = dec_uint64_t(_1, _4),
        {{_3, _5}, _6}
    end.

enc_fs_location4(_1) ->
    case _1 of
        {_3, _2} ->
            [begin
                 _5 = length(_3),
                 [<<_5:32/unsigned>>,
                  lists:map(fun(_4) ->
                                   enc_utf8str_cis(_4)
                            end,
                            _3)]
             end,
             enc_pathname4(_2)]
    end.

dec_fs_location4(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                map_elem(fun(_6, _7) ->
                                dec_utf8str_cis(_6, _7)
                         end,
                         _1,
                         _2 + 4,
                         infinity, _5)
            end,
        {_8, _9} = dec_pathname4(_1, _4),
        {{_3, _8}, _9}
    end.

enc_fs_locations4(_1) ->
    case _1 of
        {_5, _2} ->
            [enc_pathname4(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_fs_location4(_3)
                            end,
                            _2)]
             end]
    end.

dec_fs_locations4(_1, _2) ->
    begin
        {_3, _4} = dec_pathname4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                map_elem(fun(_8, _9) ->
                                dec_fs_location4(_8, _9)
                         end,
                         _1,
                         _4 + 4,
                         infinity, _7)
            end,
        {{_3, _5}, _6}
    end.

enc_acetype4(_1) ->
    enc_uint32_t(_1).

dec_acetype4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_aceflag4(_1) ->
    enc_uint32_t(_1).

dec_aceflag4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_acemask4(_1) ->
    enc_uint32_t(_1).

dec_acemask4(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_nfsace4(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_acetype4(_5),
             enc_aceflag4(_4),
             enc_acemask4(_3),
             enc_utf8str_mixed(_2)]
    end.

dec_nfsace4(_1, _2) ->
    begin
        {_3, _4} = dec_acetype4(_1, _2),
        {_5, _6} = dec_aceflag4(_1, _4),
        {_7, _8} = dec_acemask4(_1, _6),
        {_9, _10} = dec_utf8str_mixed(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_specdata4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3), enc_uint32_t(_2)]
    end.

dec_specdata4(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {{_3, _5}, _6}
    end.

enc_fattr4_supported_attrs(_1) ->
    enc_bitmap4(_1).

dec_fattr4_supported_attrs(_1, _2) ->
    dec_bitmap4(_1, _2).

enc_fattr4_type(_1) ->
    enc_nfs_ftype4(_1).

dec_fattr4_type(_1, _2) ->
    dec_nfs_ftype4(_1, _2).

enc_fattr4_fh_expire_type(_1) ->
    enc_uint32_t(_1).

dec_fattr4_fh_expire_type(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_change(_1) ->
    enc_changeid4(_1).

dec_fattr4_change(_1, _2) ->
    dec_changeid4(_1, _2).

enc_fattr4_size(_1) ->
    enc_uint64_t(_1).

dec_fattr4_size(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_link_support(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_link_support(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_symlink_support(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_symlink_support(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_named_attr(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_named_attr(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_fsid(_1) ->
    enc_fsid4(_1).

dec_fattr4_fsid(_1, _2) ->
    dec_fsid4(_1, _2).

enc_fattr4_unique_handles(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_unique_handles(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_lease_time(_1) ->
    enc_uint32_t(_1).

dec_fattr4_lease_time(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_rdattr_error(_1) ->
    enc_nfsstat4(_1).

dec_fattr4_rdattr_error(_1, _2) ->
    dec_nfsstat4(_1, _2).

enc_fattr4_acl(_1) ->
    begin
        _3 = length(_1),
        [<<_3:32/unsigned>>,
         lists:map(fun(_2) ->
                          enc_nfsace4(_2)
                   end,
                   _1)]
    end.

dec_fattr4_acl(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        map_elem(fun(_4, _5) ->
                        dec_nfsace4(_4, _5)
                 end,
                 _1,
                 _2 + 4,
                 infinity, _3)
    end.

enc_fattr4_aclsupport(_1) ->
    enc_uint32_t(_1).

dec_fattr4_aclsupport(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_archive(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_archive(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_cansettime(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_cansettime(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_case_insensitive(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_case_insensitive(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_case_preserving(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_case_preserving(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_chown_restricted(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_chown_restricted(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_fileid(_1) ->
    enc_uint64_t(_1).

dec_fattr4_fileid(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_files_avail(_1) ->
    enc_uint64_t(_1).

dec_fattr4_files_avail(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_filehandle(_1) ->
    enc_nfs_fh4(_1).

dec_fattr4_filehandle(_1, _2) ->
    dec_nfs_fh4(_1, _2).

enc_fattr4_files_free(_1) ->
    enc_uint64_t(_1).

dec_fattr4_files_free(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_files_total(_1) ->
    enc_uint64_t(_1).

dec_fattr4_files_total(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_fs_locations(_1) ->
    enc_fs_locations4(_1).

dec_fattr4_fs_locations(_1, _2) ->
    dec_fs_locations4(_1, _2).

enc_fattr4_hidden(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_hidden(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_homogeneous(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_homogeneous(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_maxfilesize(_1) ->
    enc_uint64_t(_1).

dec_fattr4_maxfilesize(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_maxlink(_1) ->
    enc_uint32_t(_1).

dec_fattr4_maxlink(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_maxname(_1) ->
    enc_uint32_t(_1).

dec_fattr4_maxname(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_maxread(_1) ->
    enc_uint64_t(_1).

dec_fattr4_maxread(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_maxwrite(_1) ->
    enc_uint64_t(_1).

dec_fattr4_maxwrite(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_mimetype(_1) ->
    enc_utf8str_cs(_1).

dec_fattr4_mimetype(_1, _2) ->
    dec_utf8str_cs(_1, _2).

enc_fattr4_mode(_1) ->
    enc_mode4(_1).

dec_fattr4_mode(_1, _2) ->
    dec_mode4(_1, _2).

enc_fattr4_mounted_on_fileid(_1) ->
    enc_uint64_t(_1).

dec_fattr4_mounted_on_fileid(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_no_trunc(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_no_trunc(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_numlinks(_1) ->
    enc_uint32_t(_1).

dec_fattr4_numlinks(_1, _2) ->
    dec_uint32_t(_1, _2).

enc_fattr4_owner(_1) ->
    enc_utf8str_mixed(_1).

dec_fattr4_owner(_1, _2) ->
    dec_utf8str_mixed(_1, _2).

enc_fattr4_owner_group(_1) ->
    enc_utf8str_mixed(_1).

dec_fattr4_owner_group(_1, _2) ->
    dec_utf8str_mixed(_1, _2).

enc_fattr4_quota_avail_hard(_1) ->
    enc_uint64_t(_1).

dec_fattr4_quota_avail_hard(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_quota_avail_soft(_1) ->
    enc_uint64_t(_1).

dec_fattr4_quota_avail_soft(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_quota_used(_1) ->
    enc_uint64_t(_1).

dec_fattr4_quota_used(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_rawdev(_1) ->
    enc_specdata4(_1).

dec_fattr4_rawdev(_1, _2) ->
    dec_specdata4(_1, _2).

enc_fattr4_space_avail(_1) ->
    enc_uint64_t(_1).

dec_fattr4_space_avail(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_space_free(_1) ->
    enc_uint64_t(_1).

dec_fattr4_space_free(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_space_total(_1) ->
    enc_uint64_t(_1).

dec_fattr4_space_total(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_space_used(_1) ->
    enc_uint64_t(_1).

dec_fattr4_space_used(_1, _2) ->
    dec_uint64_t(_1, _2).

enc_fattr4_system(_1) ->
    if
        _1 == true ->
            <<1:32>>;
        _1 == false ->
            <<0:32>>
    end.

dec_fattr4_system(_1, _2) ->
    begin
        begin
            <<_:_2/binary,_4:32/unsigned,_/binary>> = _1,
            _3 =
                if
                    _4 == 0 ->
                        false;
                    _4 == 1 ->
                        true
                end
        end,
        {_3, _2 + 4}
    end.

enc_fattr4_time_access(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_access(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_access_set(_1) ->
    enc_settime4(_1).

dec_fattr4_time_access_set(_1, _2) ->
    dec_settime4(_1, _2).

enc_fattr4_time_backup(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_backup(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_create(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_create(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_delta(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_delta(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_metadata(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_metadata(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_modify(_1) ->
    enc_nfstime4(_1).

dec_fattr4_time_modify(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_fattr4_time_modify_set(_1) ->
    enc_settime4(_1).

dec_fattr4_time_modify_set(_1, _2) ->
    dec_settime4(_1, _2).

enc_attrlist4(_1) ->
    begin
        _2 = io_list_len(_1),
        [<<_2:32/unsigned>>, _1, enc_align(_2)]
    end.

dec_attrlist4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        _4 = _2 + 4,
        <<_:_4/binary,_5:_3/binary,_/binary>> = _1,
        {_5, _4 + align(_3)}
    end.

enc_fattr4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_bitmap4(_3), enc_attrlist4(_2)]
    end.

dec_fattr4(_1, _2) ->
    begin
        {_3, _4} = dec_bitmap4(_1, _2),
        {_5, _6} = dec_attrlist4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_change_info4(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [if
                 _4 == true ->
                     <<1:32>>;
                 _4 == false ->
                     <<0:32>>
             end,
             enc_changeid4(_3),
             enc_changeid4(_2)]
    end.

dec_change_info4(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} = dec_changeid4(_1, _4),
        {_8, _9} = dec_changeid4(_1, _7),
        {{_3, _6, _8}, _9}
    end.

enc_clientaddr4(_1) ->
    case _1 of
        {_4, _2} ->
            [begin
                 _5 = io_list_len(_4),
                 [<<_5:32/unsigned>>, _4, enc_align(_5)]
             end,
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_clientaddr4(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _6 = _2 + 4,
                <<_:_6/binary,_7:_5/binary,_/binary>> = _1,
                {_7, _6 + align(_5)}
            end,
        {_8, _9} =
            begin
                <<_:_4/binary,_10:32/unsigned,_/binary>> = _1,
                _11 = _4 + 4,
                <<_:_11/binary,_12:_10/binary,_/binary>> = _1,
                {_12, _11 + align(_10)}
            end,
        {{_3, _8}, _9}
    end.

enc_cb_client4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3), enc_clientaddr4(_2)]
    end.

dec_cb_client4(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {_5, _6} = dec_clientaddr4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_stateid4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3),
             case io_list_len(_2) of
                 12 ->
                     _2;
                 _ ->
                     exit({xdr, limit})
             end]
    end.

dec_stateid4(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        begin
            <<_:_4/binary,_5:12/binary,_/binary>> = _1,
            _6 = _4 + 12
        end,
        {{_3, _5}, _6}
    end.

enc_nfs_client_id4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_verifier4(_4),
             begin
                 _3 = io_list_len(_2),
                 if
                     _3 =< 1024 ->
                         [<<_3:32/unsigned>>, _2, enc_align(_3)];
                     true ->
                         exit({xdr, limit})
                 end
             end]
    end.

dec_nfs_client_id4(_1, _2) ->
    begin
        {_3, _4} = dec_verifier4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 1024 ->
                        exit({xdr, limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9, _8 + align(_7)}
                end
            end,
        {{_3, _5}, _6}
    end.

enc_open_owner4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_clientid4(_4),
             begin
                 _3 = io_list_len(_2),
                 if
                     _3 =< 1024 ->
                         [<<_3:32/unsigned>>, _2, enc_align(_3)];
                     true ->
                         exit({xdr, limit})
                 end
             end]
    end.

dec_open_owner4(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 1024 ->
                        exit({xdr, limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9, _8 + align(_7)}
                end
            end,
        {{_3, _5}, _6}
    end.

enc_lock_owner4(_1) ->
    case _1 of
        {_4, _2} ->
            [enc_clientid4(_4),
             begin
                 _3 = io_list_len(_2),
                 if
                     _3 =< 1024 ->
                         [<<_3:32/unsigned>>, _2, enc_align(_3)];
                     true ->
                         exit({xdr, limit})
                 end
             end]
    end.

dec_lock_owner4(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {_5, _6} =
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                if
                    _7 > 1024 ->
                        exit({xdr, limit});
                    true ->
                        _8 = _4 + 4,
                        <<_:_8/binary,_9:_7/binary,_/binary>> = _1,
                        {_9, _8 + align(_7)}
                end
            end,
        {{_3, _5}, _6}
    end.

enc_nfs_lock_type4(_1) ->
    case _1 of
        'READ_LT' ->
            <<1:32>>;
        'WRITE_LT' ->
            <<2:32>>;
        'READW_LT' ->
            <<3:32>>;
        'WRITEW_LT' ->
            <<4:32>>
    end.

dec_nfs_lock_type4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'READ_LT', _2 + 4};
            2 ->
                {'WRITE_LT', _2 + 4};
            3 ->
                {'READW_LT', _2 + 4};
            4 ->
                {'WRITEW_LT', _2 + 4}
        end
    end.

dec_nfs_lock_type4_i2a(_4) ->
    case _4 of
        1 ->
            'READ_LT';
        2 ->
            'WRITE_LT';
        3 ->
            'READW_LT';
        4 ->
            'WRITEW_LT'
    end.

enc_ACCESS4args(_1) ->
    case _1 of
        {_2} ->
            [enc_uint32_t(_2)]
    end.

dec_ACCESS4args(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {{_3}, _4}
    end.

enc_ACCESS4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3), enc_uint32_t(_2)]
    end.

dec_ACCESS4resok(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {{_3, _5}, _6}
    end.

enc_ACCESS4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_ACCESS4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_ACCESS4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_ACCESS4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_CLOSE4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_seqid4(_3), enc_stateid4(_2)]
    end.

dec_CLOSE4args(_1, _2) ->
    begin
        {_3, _4} = dec_seqid4(_1, _2),
        {_5, _6} = dec_stateid4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_CLOSE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_stateid4(_3);
                 _ ->
                     []
             end]
    end.

dec_CLOSE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_stateid4(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_COMMIT4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_offset4(_3), enc_count4(_2)]
    end.

dec_COMMIT4args(_1, _2) ->
    begin
        {_3, _4} = dec_offset4(_1, _2),
        {_5, _6} = dec_count4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_COMMIT4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_verifier4(_2)]
    end.

dec_COMMIT4resok(_1, _2) ->
    begin
        {_3, _4} = dec_verifier4(_1, _2),
        {{_3}, _4}
    end.

enc_COMMIT4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_COMMIT4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_COMMIT4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_COMMIT4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_createtype4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfs_ftype4(_2),
             case _2 of
                 'NF4LNK' ->
                     enc_linktext4(_3);
                 'NF4BLK' ->
                     [];
                 'NF4CHR' ->
                     enc_specdata4(_3);
                 'NF4SOCK' ->
                     [];
                 'NF4FIFO' ->
                     [];
                 'NF4DIR' ->
                     [];
                 _ ->
                     []
             end]
    end.

dec_createtype4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            5 ->
                {_4, _5} = dec_linktext4(_1, _6),
                {{'NF4LNK', _4}, _5};
            3 ->
                {_4, _5} = {void, _6},
                {{'NF4BLK', _4}, _5};
            4 ->
                {_4, _5} = dec_specdata4(_1, _6),
                {{'NF4CHR', _4}, _5};
            6 ->
                {_4, _5} = {void, _6},
                {{'NF4SOCK', _4}, _5};
            7 ->
                {_4, _5} = {void, _6},
                {{'NF4FIFO', _4}, _5};
            2 ->
                {_4, _5} = {void, _6},
                {{'NF4DIR', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfs_ftype4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_CREATE4args(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_createtype4(_4), enc_component4(_3), enc_fattr4(_2)]
    end.

dec_CREATE4args(_1, _2) ->
    begin
        {_3, _4} = dec_createtype4(_1, _2),
        {_5, _6} = dec_component4(_1, _4),
        {_7, _8} = dec_fattr4(_1, _6),
        {{_3, _5, _7}, _8}
    end.

enc_CREATE4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_change_info4(_3), enc_bitmap4(_2)]
    end.

dec_CREATE4resok(_1, _2) ->
    begin
        {_3, _4} = dec_change_info4(_1, _2),
        {_5, _6} = dec_bitmap4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_CREATE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_CREATE4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_CREATE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_CREATE4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_DELEGPURGE4args(_1) ->
    case _1 of
        {_2} ->
            [enc_clientid4(_2)]
    end.

dec_DELEGPURGE4args(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {{_3}, _4}
    end.

enc_DELEGPURGE4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_DELEGPURGE4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_DELEGRETURN4args(_1) ->
    case _1 of
        {_2} ->
            [enc_stateid4(_2)]
    end.

dec_DELEGRETURN4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {{_3}, _4}
    end.

enc_DELEGRETURN4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_DELEGRETURN4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_GETATTR4args(_1) ->
    case _1 of
        {_2} ->
            [enc_bitmap4(_2)]
    end.

dec_GETATTR4args(_1, _2) ->
    begin
        {_3, _4} = dec_bitmap4(_1, _2),
        {{_3}, _4}
    end.

enc_GETATTR4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_fattr4(_2)]
    end.

dec_GETATTR4resok(_1, _2) ->
    begin
        {_3, _4} = dec_fattr4(_1, _2),
        {{_3}, _4}
    end.

enc_GETATTR4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_GETATTR4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_GETATTR4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GETATTR4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_GETFH4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_nfs_fh4(_2)]
    end.

dec_GETFH4resok(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_fh4(_1, _2),
        {{_3}, _4}
    end.

enc_GETFH4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_GETFH4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_GETFH4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GETFH4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LINK4args(_1) ->
    case _1 of
        {_2} ->
            [enc_component4(_2)]
    end.

dec_LINK4args(_1, _2) ->
    begin
        {_3, _4} = dec_component4(_1, _2),
        {{_3}, _4}
    end.

enc_LINK4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_change_info4(_2)]
    end.

dec_LINK4resok(_1, _2) ->
    begin
        {_3, _4} = dec_change_info4(_1, _2),
        {{_3}, _4}
    end.

enc_LINK4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_LINK4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_LINK4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_LINK4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_open_to_lock_owner4(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_seqid4(_5),
             enc_stateid4(_4),
             enc_seqid4(_3),
             enc_lock_owner4(_2)]
    end.

dec_open_to_lock_owner4(_1, _2) ->
    begin
        {_3, _4} = dec_seqid4(_1, _2),
        {_5, _6} = dec_stateid4(_1, _4),
        {_7, _8} = dec_seqid4(_1, _6),
        {_9, _10} = dec_lock_owner4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_exist_lock_owner4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_stateid4(_3), enc_seqid4(_2)]
    end.

dec_exist_lock_owner4(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_seqid4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_locker4(_1) ->
    case _1 of
        {_2, _3} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end,
             case _2 of
                 true ->
                     enc_open_to_lock_owner4(_3);
                 false ->
                     enc_exist_lock_owner4(_3)
             end]
    end.

dec_locker4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_open_to_lock_owner4(_1, _6),
                {{true, _4}, _5};
            0 ->
                {_4, _5} = dec_exist_lock_owner4(_1, _6),
                {{false, _4}, _5}
        end
    end.

enc_LOCK4args(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_nfs_lock_type4(_6),
             if
                 _5 == true ->
                     <<1:32>>;
                 _5 == false ->
                     <<0:32>>
             end,
             enc_offset4(_4),
             enc_length4(_3),
             enc_locker4(_2)]
    end.

dec_LOCK4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_lock_type4(_1, _2),
        begin
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _5 =
                    if
                        _7 == 0 ->
                            false;
                        _7 == 1 ->
                            true
                    end
            end,
            _6 = _4 + 4
        end,
        {_8, _9} = dec_offset4(_1, _6),
        {_10, _11} = dec_length4(_1, _9),
        {_12, _13} = dec_locker4(_1, _11),
        {{_3, _5, _8, _10, _12}, _13}
    end.

enc_LOCK4denied(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_offset4(_5),
             enc_length4(_4),
             enc_nfs_lock_type4(_3),
             enc_lock_owner4(_2)]
    end.

dec_LOCK4denied(_1, _2) ->
    begin
        {_3, _4} = dec_offset4(_1, _2),
        {_5, _6} = dec_length4(_1, _4),
        {_7, _8} = dec_nfs_lock_type4(_1, _6),
        {_9, _10} = dec_lock_owner4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_LOCK4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_stateid4(_2)]
    end.

dec_LOCK4resok(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {{_3}, _4}
    end.

enc_LOCK4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_LOCK4resok(_3);
                 'NFS4ERR_DENIED' ->
                     enc_LOCK4denied(_3);
                 _ ->
                     []
             end]
    end.

dec_LOCK4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_LOCK4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            10010 ->
                {_4, _5} = dec_LOCK4denied(_1, _6),
                {{'NFS4ERR_DENIED', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LOCKT4args(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_nfs_lock_type4(_5),
             enc_offset4(_4),
             enc_length4(_3),
             enc_lock_owner4(_2)]
    end.

dec_LOCKT4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_lock_type4(_1, _2),
        {_5, _6} = dec_offset4(_1, _4),
        {_7, _8} = dec_length4(_1, _6),
        {_9, _10} = dec_lock_owner4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_LOCKT4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4ERR_DENIED' ->
                     enc_LOCK4denied(_3);
                 'NFS4_OK' ->
                     [];
                 _ ->
                     []
             end]
    end.

dec_LOCKT4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            10010 ->
                {_4, _5} = dec_LOCK4denied(_1, _6),
                {{'NFS4ERR_DENIED', _4}, _5};
            0 ->
                {_4, _5} = {void, _6},
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LOCKU4args(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_nfs_lock_type4(_6),
             enc_seqid4(_5),
             enc_stateid4(_4),
             enc_offset4(_3),
             enc_length4(_2)]
    end.

dec_LOCKU4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_lock_type4(_1, _2),
        {_5, _6} = dec_seqid4(_1, _4),
        {_7, _8} = dec_stateid4(_1, _6),
        {_9, _10} = dec_offset4(_1, _8),
        {_11, _12} = dec_length4(_1, _10),
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_LOCKU4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_stateid4(_3);
                 _ ->
                     []
             end]
    end.

dec_LOCKU4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_stateid4(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LOOKUP4args(_1) ->
    case _1 of
        {_2} ->
            [enc_component4(_2)]
    end.

dec_LOOKUP4args(_1, _2) ->
    begin
        {_3, _4} = dec_component4(_1, _2),
        {{_3}, _4}
    end.

enc_LOOKUP4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_LOOKUP4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_LOOKUPP4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_LOOKUPP4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_NVERIFY4args(_1) ->
    case _1 of
        {_2} ->
            [enc_fattr4(_2)]
    end.

dec_NVERIFY4args(_1, _2) ->
    begin
        {_3, _4} = dec_fattr4(_1, _2),
        {{_3}, _4}
    end.

enc_NVERIFY4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_NVERIFY4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_createmode4(_1) ->
    case _1 of
        'UNCHECKED4' ->
            <<0:32>>;
        'GUARDED4' ->
            <<1:32>>;
        'EXCLUSIVE4' ->
            <<2:32>>
    end.

dec_createmode4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'UNCHECKED4', _2 + 4};
            1 ->
                {'GUARDED4', _2 + 4};
            2 ->
                {'EXCLUSIVE4', _2 + 4}
        end
    end.

dec_createmode4_i2a(_4) ->
    case _4 of
        0 ->
            'UNCHECKED4';
        1 ->
            'GUARDED4';
        2 ->
            'EXCLUSIVE4'
    end.

enc_createhow4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_createmode4(_2),
             case _2 of
                 'UNCHECKED4' ->
                     [];
                 'GUARDED4' ->
                     enc_fattr4(_3);
                 'EXCLUSIVE4' ->
                     enc_verifier4(_3)
             end]
    end.

dec_createhow4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = {void, _6},
                {{'UNCHECKED4', _4}, _5};
            1 ->
                {_4, _5} = dec_fattr4(_1, _6),
                {{'GUARDED4', _4}, _5};
            2 ->
                {_4, _5} = dec_verifier4(_1, _6),
                {{'EXCLUSIVE4', _4}, _5}
        end
    end.

enc_opentype4(_1) ->
    case _1 of
        'OPEN4_NOCREATE' ->
            <<0:32>>;
        'OPEN4_CREATE' ->
            <<1:32>>
    end.

dec_opentype4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'OPEN4_NOCREATE', _2 + 4};
            1 ->
                {'OPEN4_CREATE', _2 + 4}
        end
    end.

dec_opentype4_i2a(_4) ->
    case _4 of
        0 ->
            'OPEN4_NOCREATE';
        1 ->
            'OPEN4_CREATE'
    end.

enc_openflag4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_opentype4(_2),
             case _2 of
                 'OPEN4_CREATE' ->
                     enc_createhow4(_3);
                 _ ->
                     []
             end]
    end.

dec_openflag4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_createhow4(_1, _6),
                {{'OPEN4_CREATE', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_opentype4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_limit_by4(_1) ->
    case _1 of
        'NFS_LIMIT_SIZE' ->
            <<1:32>>;
        'NFS_LIMIT_BLOCKS' ->
            <<2:32>>
    end.

dec_limit_by4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'NFS_LIMIT_SIZE', _2 + 4};
            2 ->
                {'NFS_LIMIT_BLOCKS', _2 + 4}
        end
    end.

dec_limit_by4_i2a(_4) ->
    case _4 of
        1 ->
            'NFS_LIMIT_SIZE';
        2 ->
            'NFS_LIMIT_BLOCKS'
    end.

enc_nfs_modified_limit4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3), enc_uint32_t(_2)]
    end.

dec_nfs_modified_limit4(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {{_3, _5}, _6}
    end.

enc_nfs_space_limit4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_limit_by4(_2),
             case _2 of
                 'NFS_LIMIT_SIZE' ->
                     enc_uint64_t(_3);
                 'NFS_LIMIT_BLOCKS' ->
                     enc_nfs_modified_limit4(_3)
             end]
    end.

dec_nfs_space_limit4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_uint64_t(_1, _6),
                {{'NFS_LIMIT_SIZE', _4}, _5};
            2 ->
                {_4, _5} = dec_nfs_modified_limit4(_1, _6),
                {{'NFS_LIMIT_BLOCKS', _4}, _5}
        end
    end.

enc_open_delegation_type4(_1) ->
    case _1 of
        'OPEN_DELEGATE_NONE' ->
            <<0:32>>;
        'OPEN_DELEGATE_READ' ->
            <<1:32>>;
        'OPEN_DELEGATE_WRITE' ->
            <<2:32>>
    end.

dec_open_delegation_type4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'OPEN_DELEGATE_NONE', _2 + 4};
            1 ->
                {'OPEN_DELEGATE_READ', _2 + 4};
            2 ->
                {'OPEN_DELEGATE_WRITE', _2 + 4}
        end
    end.

dec_open_delegation_type4_i2a(_4) ->
    case _4 of
        0 ->
            'OPEN_DELEGATE_NONE';
        1 ->
            'OPEN_DELEGATE_READ';
        2 ->
            'OPEN_DELEGATE_WRITE'
    end.

enc_open_claim_type4(_1) ->
    case _1 of
        'CLAIM_NULL' ->
            <<0:32>>;
        'CLAIM_PREVIOUS' ->
            <<1:32>>;
        'CLAIM_DELEGATE_CUR' ->
            <<2:32>>;
        'CLAIM_DELEGATE_PREV' ->
            <<3:32>>;
        'CLAIM_FH' ->
            <<4:32>>;
        'CLAIM_DELEG_CUR_FH' ->
            <<5:32>>;
        'CLAIM_DELEG_PREV_FH' ->
            <<6:32>>
    end.

dec_open_claim_type4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'CLAIM_NULL', _2 + 4};
            1 ->
                {'CLAIM_PREVIOUS', _2 + 4};
            2 ->
                {'CLAIM_DELEGATE_CUR', _2 + 4};
            3 ->
                {'CLAIM_DELEGATE_PREV', _2 + 4};
            4 ->
                {'CLAIM_FH', _2 + 4};
            5 ->
                {'CLAIM_DELEG_CUR_FH', _2 + 4};
            6 ->
                {'CLAIM_DELEG_PREV_FH', _2 + 4}
        end
    end.

dec_open_claim_type4_i2a(_4) ->
    case _4 of
        0 ->
            'CLAIM_NULL';
        1 ->
            'CLAIM_PREVIOUS';
        2 ->
            'CLAIM_DELEGATE_CUR';
        3 ->
            'CLAIM_DELEGATE_PREV';
        4 ->
            'CLAIM_FH';
        5 ->
            'CLAIM_DELEG_CUR_FH';
        6 ->
            'CLAIM_DELEG_PREV_FH'
    end.

enc_open_claim_delegate_cur4(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_stateid4(_3), enc_component4(_2)]
    end.

dec_open_claim_delegate_cur4(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_component4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_open_claim4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_open_claim_type4(_2),
             case _2 of
                 'CLAIM_NULL' ->
                     enc_component4(_3);
                 'CLAIM_PREVIOUS' ->
                     enc_open_delegation_type4(_3);
                 'CLAIM_DELEGATE_CUR' ->
                     enc_open_claim_delegate_cur4(_3);
                 'CLAIM_DELEGATE_PREV' ->
                     enc_component4(_3)
             end]
    end.

dec_open_claim4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_component4(_1, _6),
                {{'CLAIM_NULL', _4}, _5};
            1 ->
                {_4, _5} = dec_open_delegation_type4(_1, _6),
                {{'CLAIM_PREVIOUS', _4}, _5};
            2 ->
                {_4, _5} = dec_open_claim_delegate_cur4(_1, _6),
                {{'CLAIM_DELEGATE_CUR', _4}, _5};
            3 ->
                {_4, _5} = dec_component4(_1, _6),
                {{'CLAIM_DELEGATE_PREV', _4}, _5}
        end
    end.

enc_OPEN4args(_1) ->
    case _1 of
        {_7, _6, _5, _4, _3, _2} ->
            [enc_seqid4(_7),
             enc_uint32_t(_6),
             enc_uint32_t(_5),
             enc_open_owner4(_4),
             enc_openflag4(_3),
             enc_open_claim4(_2)]
    end.

dec_OPEN4args(_1, _2) ->
    begin
        {_3, _4} = dec_seqid4(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} = dec_open_owner4(_1, _8),
        {_11, _12} = dec_openflag4(_1, _10),
        {_13, _14} = dec_open_claim4(_1, _12),
        {{_3, _5, _7, _9, _11, _13}, _14}
    end.

enc_open_read_delegation4(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_stateid4(_4),
             if
                 _3 == true ->
                     <<1:32>>;
                 _3 == false ->
                     <<0:32>>
             end,
             enc_nfsace4(_2)]
    end.

dec_open_read_delegation4(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        begin
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _5 =
                    if
                        _7 == 0 ->
                            false;
                        _7 == 1 ->
                            true
                    end
            end,
            _6 = _4 + 4
        end,
        {_8, _9} = dec_nfsace4(_1, _6),
        {{_3, _5, _8}, _9}
    end.

enc_open_write_delegation4(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_stateid4(_5),
             if
                 _4 == true ->
                     <<1:32>>;
                 _4 == false ->
                     <<0:32>>
             end,
             enc_nfs_space_limit4(_3),
             enc_nfsace4(_2)]
    end.

dec_open_write_delegation4(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        begin
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _5 =
                    if
                        _7 == 0 ->
                            false;
                        _7 == 1 ->
                            true
                    end
            end,
            _6 = _4 + 4
        end,
        {_8, _9} = dec_nfs_space_limit4(_1, _6),
        {_10, _11} = dec_nfsace4(_1, _9),
        {{_3, _5, _8, _10}, _11}
    end.

enc_open_delegation4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_open_delegation_type4(_2),
             case _2 of
                 'OPEN_DELEGATE_NONE' ->
                     [];
                 'OPEN_DELEGATE_READ' ->
                     enc_open_read_delegation4(_3);
                 'OPEN_DELEGATE_WRITE' ->
                     enc_open_write_delegation4(_3)
             end]
    end.

dec_open_delegation4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = {void, _6},
                {{'OPEN_DELEGATE_NONE', _4}, _5};
            1 ->
                {_4, _5} = dec_open_read_delegation4(_1, _6),
                {{'OPEN_DELEGATE_READ', _4}, _5};
            2 ->
                {_4, _5} = dec_open_write_delegation4(_1, _6),
                {{'OPEN_DELEGATE_WRITE', _4}, _5}
        end
    end.

enc_OPEN4resok(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_stateid4(_6),
             enc_change_info4(_5),
             enc_uint32_t(_4),
             enc_bitmap4(_3),
             enc_open_delegation4(_2)]
    end.

dec_OPEN4resok(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_change_info4(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} = dec_bitmap4(_1, _8),
        {_11, _12} = dec_open_delegation4(_1, _10),
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_OPEN4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_OPEN4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_OPEN4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_OPEN4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_OPENATTR4args(_1) ->
    case _1 of
        {_2} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end]
    end.

dec_OPENATTR4args(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {{_3}, _4}
    end.

enc_OPENATTR4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_OPENATTR4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_OPEN_CONFIRM4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_stateid4(_3), enc_seqid4(_2)]
    end.

dec_OPEN_CONFIRM4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_seqid4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_OPEN_CONFIRM4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_stateid4(_2)]
    end.

dec_OPEN_CONFIRM4resok(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {{_3}, _4}
    end.

enc_OPEN_CONFIRM4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_OPEN_CONFIRM4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_OPEN_CONFIRM4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_OPEN_CONFIRM4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_OPEN_DOWNGRADE4args(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_stateid4(_5),
             enc_seqid4(_4),
             enc_uint32_t(_3),
             enc_uint32_t(_2)]
    end.

dec_OPEN_DOWNGRADE4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_seqid4(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} = dec_uint32_t(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_OPEN_DOWNGRADE4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_stateid4(_2)]
    end.

dec_OPEN_DOWNGRADE4resok(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {{_3}, _4}
    end.

enc_OPEN_DOWNGRADE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_OPEN_DOWNGRADE4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_OPEN_DOWNGRADE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_OPEN_DOWNGRADE4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_PUTFH4args(_1) ->
    case _1 of
        {_2} ->
            [enc_nfs_fh4(_2)]
    end.

dec_PUTFH4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_fh4(_1, _2),
        {{_3}, _4}
    end.

enc_PUTFH4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_PUTFH4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_PUTPUBFH4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_PUTPUBFH4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_PUTROOTFH4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_PUTROOTFH4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_READ4args(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_stateid4(_4), enc_offset4(_3), enc_count4(_2)]
    end.

dec_READ4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_offset4(_1, _4),
        {_7, _8} = dec_count4(_1, _6),
        {{_3, _5, _7}, _8}
    end.

enc_READ4resok(_1) ->
    case _1 of
        {_4, _2} ->
            [if
                 _4 == true ->
                     <<1:32>>;
                 _4 == false ->
                     <<0:32>>
             end,
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_READ4resok(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} =
            begin
                <<_:_4/binary,_8:32/unsigned,_/binary>> = _1,
                _9 = _4 + 4,
                <<_:_9/binary,_10:_8/binary,_/binary>> = _1,
                {_10, _9 + align(_8)}
            end,
        {{_3, _6}, _7}
    end.

enc_READ4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_READ4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_READ4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_READ4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_READDIR4args(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_nfs_cookie4(_6),
             enc_verifier4(_5),
             enc_count4(_4),
             enc_count4(_3),
             enc_bitmap4(_2)]
    end.

dec_READDIR4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_cookie4(_1, _2),
        {_5, _6} = dec_verifier4(_1, _4),
        {_7, _8} = dec_count4(_1, _6),
        {_9, _10} = dec_count4(_1, _8),
        {_11, _12} = dec_bitmap4(_1, _10),
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_entry4(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_nfs_cookie4(_5),
             enc_component4(_4),
             enc_fattr4(_3),
             case _2 of
                 void ->
                     <<0:32>>;
                 _ ->
                     [<<1:32>>, enc_entry4(_2)]
             end]
    end.

dec_entry4(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_cookie4(_1, _2),
        {_5, _6} = dec_component4(_1, _4),
        {_7, _8} = dec_fattr4(_1, _6),
        {_9, _10} =
            begin
                <<_:_8/binary,_11:32/unsigned,_/binary>> = _1,
                _12 = _8 + 4,
                if
                    _11 == 0 ->
                        {void, _12};
                    _11 == 1 ->
                        dec_entry4(_1, _12)
                end
            end,
        {{_3, _5, _7, _9}, _10}
    end.

enc_dirlist4(_1) ->
    case _1 of
        {_3, _2} ->
            [case _3 of
                 void ->
                     <<0:32>>;
                 _ ->
                     [<<1:32>>, enc_entry4(_3)]
             end,
             if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end]
    end.

dec_dirlist4(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _6 = _2 + 4,
                if
                    _5 == 0 ->
                        {void, _6};
                    _5 == 1 ->
                        dec_entry4(_1, _6)
                end
            end,
        begin
            begin
                <<_:_4/binary,_9:32/unsigned,_/binary>> = _1,
                _7 =
                    if
                        _9 == 0 ->
                            false;
                        _9 == 1 ->
                            true
                    end
            end,
            _8 = _4 + 4
        end,
        {{_3, _7}, _8}
    end.

enc_READDIR4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_verifier4(_3), enc_dirlist4(_2)]
    end.

dec_READDIR4resok(_1, _2) ->
    begin
        {_3, _4} = dec_verifier4(_1, _2),
        {_5, _6} = dec_dirlist4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_READDIR4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_READDIR4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_READDIR4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_READDIR4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_READLINK4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_linktext4(_2)]
    end.

dec_READLINK4resok(_1, _2) ->
    begin
        {_3, _4} = dec_linktext4(_1, _2),
        {{_3}, _4}
    end.

enc_READLINK4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_READLINK4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_READLINK4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_READLINK4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_REMOVE4args(_1) ->
    case _1 of
        {_2} ->
            [enc_component4(_2)]
    end.

dec_REMOVE4args(_1, _2) ->
    begin
        {_3, _4} = dec_component4(_1, _2),
        {{_3}, _4}
    end.

enc_REMOVE4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_change_info4(_2)]
    end.

dec_REMOVE4resok(_1, _2) ->
    begin
        {_3, _4} = dec_change_info4(_1, _2),
        {{_3}, _4}
    end.

enc_REMOVE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_REMOVE4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_REMOVE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_REMOVE4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_RENAME4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_component4(_3), enc_component4(_2)]
    end.

dec_RENAME4args(_1, _2) ->
    begin
        {_3, _4} = dec_component4(_1, _2),
        {_5, _6} = dec_component4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_RENAME4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_change_info4(_3), enc_change_info4(_2)]
    end.

dec_RENAME4resok(_1, _2) ->
    begin
        {_3, _4} = dec_change_info4(_1, _2),
        {_5, _6} = dec_change_info4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_RENAME4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_RENAME4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_RENAME4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_RENAME4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_RENEW4args(_1) ->
    case _1 of
        {_2} ->
            [enc_clientid4(_2)]
    end.

dec_RENEW4args(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {{_3}, _4}
    end.

enc_RENEW4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_RENEW4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_RESTOREFH4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_RESTOREFH4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_SAVEFH4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_SAVEFH4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_SECINFO4args(_1) ->
    case _1 of
        {_2} ->
            [enc_component4(_2)]
    end.

dec_SECINFO4args(_1, _2) ->
    begin
        {_3, _4} = dec_component4(_1, _2),
        {{_3}, _4}
    end.

enc_rpc_gss_svc_t(_1) ->
    case _1 of
        'RPC_GSS_SVC_NONE' ->
            <<1:32>>;
        'RPC_GSS_SVC_INTEGRITY' ->
            <<2:32>>;
        'RPC_GSS_SVC_PRIVACY' ->
            <<3:32>>
    end.

dec_rpc_gss_svc_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'RPC_GSS_SVC_NONE', _2 + 4};
            2 ->
                {'RPC_GSS_SVC_INTEGRITY', _2 + 4};
            3 ->
                {'RPC_GSS_SVC_PRIVACY', _2 + 4}
        end
    end.

dec_rpc_gss_svc_t_i2a(_4) ->
    case _4 of
        1 ->
            'RPC_GSS_SVC_NONE';
        2 ->
            'RPC_GSS_SVC_INTEGRITY';
        3 ->
            'RPC_GSS_SVC_PRIVACY'
    end.

enc_rpcsec_gss_info(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_sec_oid4(_4), enc_qop4(_3), enc_rpc_gss_svc_t(_2)]
    end.

dec_rpcsec_gss_info(_1, _2) ->
    begin
        {_3, _4} = dec_sec_oid4(_1, _2),
        {_5, _6} = dec_qop4(_1, _4),
        {_7, _8} = dec_rpc_gss_svc_t(_1, _6),
        {{_3, _5, _7}, _8}
    end.

enc_rpcsec_t(_1) ->
    case _1 of
        'RPCSEC_GSS' ->
            <<6:32>>
    end.

dec_rpcsec_t(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            6 ->
                {'RPCSEC_GSS', _2 + 4}
        end
    end.

dec_rpcsec_t_i2a(_4) ->
    case _4 of
        6 ->
            'RPCSEC_GSS'
    end.

enc_secinfo4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_rpcsec_t(_2),
             case _2 of
                 'RPCSEC_GSS' ->
                     enc_rpcsec_gss_info(_3);
                 _ ->
                     []
             end]
    end.

dec_secinfo4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            6 ->
                {_4, _5} = dec_rpcsec_gss_info(_1, _6),
                {{'RPCSEC_GSS', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_rpcsec_t_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_SECINFO4resok(_1) ->
    begin
        _3 = length(_1),
        [<<_3:32/unsigned>>,
         lists:map(fun(_2) ->
                          enc_secinfo4(_2)
                   end,
                   _1)]
    end.

dec_SECINFO4resok(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/unsigned,_/binary>> = _1,
        map_elem(fun(_4, _5) ->
                        dec_secinfo4(_4, _5)
                 end,
                 _1,
                 _2 + 4,
                 infinity, _3)
    end.

enc_SECINFO4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_SECINFO4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_SECINFO4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_SECINFO4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_SETATTR4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_stateid4(_3), enc_fattr4(_2)]
    end.

dec_SETATTR4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_fattr4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_SETATTR4res(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_nfsstat4(_3), enc_bitmap4(_2)]
    end.

dec_SETATTR4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {_5, _6} = dec_bitmap4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_SETCLIENTID4args(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_nfs_client_id4(_4),
             enc_cb_client4(_3),
             enc_uint32_t(_2)]
    end.

dec_SETCLIENTID4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_client_id4(_1, _2),
        {_5, _6} = dec_cb_client4(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {{_3, _5, _7}, _8}
    end.

enc_SETCLIENTID4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_clientid4(_3), enc_verifier4(_2)]
    end.

dec_SETCLIENTID4resok(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {_5, _6} = dec_verifier4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_SETCLIENTID4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_SETCLIENTID4resok(_3);
                 'NFS4ERR_CLID_INUSE' ->
                     enc_clientaddr4(_3);
                 _ ->
                     []
             end]
    end.

dec_SETCLIENTID4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_SETCLIENTID4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            10017 ->
                {_4, _5} = dec_clientaddr4(_1, _6),
                {{'NFS4ERR_CLID_INUSE', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_SETCLIENTID_CONFIRM4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_clientid4(_3), enc_verifier4(_2)]
    end.

dec_SETCLIENTID_CONFIRM4args(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {_5, _6} = dec_verifier4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_SETCLIENTID_CONFIRM4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_SETCLIENTID_CONFIRM4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_VERIFY4args(_1) ->
    case _1 of
        {_2} ->
            [enc_fattr4(_2)]
    end.

dec_VERIFY4args(_1, _2) ->
    begin
        {_3, _4} = dec_fattr4(_1, _2),
        {{_3}, _4}
    end.

enc_VERIFY4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_VERIFY4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_stable_how4(_1) ->
    case _1 of
        'UNSTABLE4' ->
            <<0:32>>;
        'DATA_SYNC4' ->
            <<1:32>>;
        'FILE_SYNC4' ->
            <<2:32>>
    end.

dec_stable_how4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'UNSTABLE4', _2 + 4};
            1 ->
                {'DATA_SYNC4', _2 + 4};
            2 ->
                {'FILE_SYNC4', _2 + 4}
        end
    end.

dec_stable_how4_i2a(_4) ->
    case _4 of
        0 ->
            'UNSTABLE4';
        1 ->
            'DATA_SYNC4';
        2 ->
            'FILE_SYNC4'
    end.

enc_WRITE4args(_1) ->
    case _1 of
        {_6, _5, _4, _2} ->
            [enc_stateid4(_6),
             enc_offset4(_5),
             enc_stable_how4(_4),
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_WRITE4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {_5, _6} = dec_offset4(_1, _4),
        {_7, _8} = dec_stable_how4(_1, _6),
        {_9, _10} =
            begin
                <<_:_8/binary,_11:32/unsigned,_/binary>> = _1,
                _12 = _8 + 4,
                <<_:_12/binary,_13:_11/binary,_/binary>> = _1,
                {_13, _12 + align(_11)}
            end,
        {{_3, _5, _7, _9}, _10}
    end.

enc_WRITE4resok(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_count4(_4), enc_stable_how4(_3), enc_verifier4(_2)]
    end.

dec_WRITE4resok(_1, _2) ->
    begin
        {_3, _4} = dec_count4(_1, _2),
        {_5, _6} = dec_stable_how4(_1, _4),
        {_7, _8} = dec_verifier4(_1, _6),
        {{_3, _5, _7}, _8}
    end.

enc_WRITE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_WRITE4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_WRITE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_WRITE4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_RELEASE_LOCKOWNER4args(_1) ->
    case _1 of
        {_2} ->
            [enc_lock_owner4(_2)]
    end.

dec_RELEASE_LOCKOWNER4args(_1, _2) ->
    begin
        {_3, _4} = dec_lock_owner4(_1, _2),
        {{_3}, _4}
    end.

enc_RELEASE_LOCKOWNER4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_RELEASE_LOCKOWNER4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_callback_sec_parms4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_authsys(_2),
             case _2 of
                 'AUTH_NONE' ->
                     [];
                 'AUTH_SYS' ->
                     enc_authsys_parms(_3)
             end]
    end.

dec_callback_sec_parms4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = {void, _6},
                {{'AUTH_NONE', _4}, _5};
            1 ->
                {_4, _5} = dec_authsys_parms(_1, _6),
                {{'AUTH_SYS', _4}, _5}
        end
    end.

enc_channel_attrs4(_1) ->
    case _1 of
        {_10, _9, _8, _7, _6, _5, _2} ->
            [enc_count4(_10),
             enc_count4(_9),
             enc_count4(_8),
             enc_count4(_7),
             enc_count4(_6),
             enc_count4(_5),
             begin
                 _4 = length(_2),
                 if
                     _4 =< 1 ->
                         [<<_4:32/unsigned>>,
                          lists:map(fun(_3) ->
                                           enc_uint32_t(_3)
                                    end,
                                    _2)];
                     true ->
                         exit({xdr, limit})
                 end
             end]
    end.

dec_channel_attrs4(_1, _2) ->
    begin
        {_3, _4} = dec_count4(_1, _2),
        {_5, _6} = dec_count4(_1, _4),
        {_7, _8} = dec_count4(_1, _6),
        {_9, _10} = dec_count4(_1, _8),
        {_11, _12} = dec_count4(_1, _10),
        {_13, _14} = dec_count4(_1, _12),
        {_15, _16} =
            begin
                <<_:_14/binary,_17:32/unsigned,_/binary>> = _1,
                map_elem(fun(_18, _19) ->
                                dec_uint32_t(_18, _19)
                         end,
                         _1,
                         _14 + 4,
                         1, _17)
            end,
        {{_3, _5, _7, _9, _11, _13, _15}, _16}
    end.

enc_CREATE_SESSION4args(_1) ->
    case _1 of
        {_10, _9, _8, _7, _6, _5, _2} ->
            [enc_clientid4(_10),
             enc_sequenceid4(_9),
             enc_uint32_t(_8),
             enc_channel_attrs4(_7),
             enc_channel_attrs4(_6),
             enc_uint32_t(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_callback_sec_parms4(_3)
                            end,
                            _2)]
             end]
    end.

dec_CREATE_SESSION4args(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {_5, _6} = dec_sequenceid4(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} = dec_channel_attrs4(_1, _8),
        {_11, _12} = dec_channel_attrs4(_1, _10),
        {_13, _14} = dec_uint32_t(_1, _12),
        {_15, _16} =
            begin
                <<_:_14/binary,_17:32/unsigned,_/binary>> = _1,
                map_elem(fun(_18, _19) ->
                                dec_callback_sec_parms4(_18, _19)
                         end,
                         _1,
                         _14 + 4,
                         infinity, _17)
            end,
        {{_3, _5, _7, _9, _11, _13, _15}, _16}
    end.

enc_CREATE_SESSION4resok(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_sessionid4(_6),
             enc_sequenceid4(_5),
             enc_uint32_t(_4),
             enc_channel_attrs4(_3),
             enc_channel_attrs4(_2)]
    end.

dec_CREATE_SESSION4resok(_1, _2) ->
    begin
        {_3, _4} = dec_sessionid4(_1, _2),
        {_5, _6} = dec_sequenceid4(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} = dec_channel_attrs4(_1, _8),
        {_11, _12} = dec_channel_attrs4(_1, _10),
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_CREATE_SESSION4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_CREATE_SESSION4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_CREATE_SESSION4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_CREATE_SESSION4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_DESTROY_SESSION4args(_1) ->
    case _1 of
        {_2} ->
            [enc_sessionid4(_2)]
    end.

dec_DESTROY_SESSION4args(_1, _2) ->
    begin
        {_3, _4} = dec_sessionid4(_1, _2),
        {{_3}, _4}
    end.

enc_DESTROY_SESSION4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_DESTROY_SESSION4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_FREE_STATEID4args(_1) ->
    case _1 of
        {_2} ->
            [enc_stateid4(_2)]
    end.

dec_FREE_STATEID4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        {{_3}, _4}
    end.

enc_FREE_STATEID4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_FREE_STATEID4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_attr_notice4(_1) ->
    enc_nfstime4(_1).

dec_attr_notice4(_1, _2) ->
    dec_nfstime4(_1, _2).

enc_GET_DIR_DELEGATION4args(_1) ->
    case _1 of
        {_7, _6, _5, _4, _3, _2} ->
            [if
                 _7 == true ->
                     <<1:32>>;
                 _7 == false ->
                     <<0:32>>
             end,
             enc_bitmap4(_6),
             enc_attr_notice4(_5),
             enc_attr_notice4(_4),
             enc_bitmap4(_3),
             enc_bitmap4(_2)]
    end.

dec_GET_DIR_DELEGATION4args(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} = dec_bitmap4(_1, _4),
        {_8, _9} = dec_attr_notice4(_1, _7),
        {_10, _11} = dec_attr_notice4(_1, _9),
        {_12, _13} = dec_bitmap4(_1, _11),
        {_14, _15} = dec_bitmap4(_1, _13),
        {{_3, _6, _8, _10, _12, _14}, _15}
    end.

enc_GET_DIR_DELEGATION4resok(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_verifier4(_6),
             enc_stateid4(_5),
             enc_bitmap4(_4),
             enc_bitmap4(_3),
             enc_bitmap4(_2)]
    end.

dec_GET_DIR_DELEGATION4resok(_1, _2) ->
    begin
        {_3, _4} = dec_verifier4(_1, _2),
        {_5, _6} = dec_stateid4(_1, _4),
        {_7, _8} = dec_bitmap4(_1, _6),
        {_9, _10} = dec_bitmap4(_1, _8),
        {_11, _12} = dec_bitmap4(_1, _10),
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_gddrnf4_status(_1) ->
    case _1 of
        'GDD4_OK' ->
            <<0:32>>;
        'GDD4_UNAVAIL' ->
            <<1:32>>
    end.

dec_gddrnf4_status(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'GDD4_OK', _2 + 4};
            1 ->
                {'GDD4_UNAVAIL', _2 + 4}
        end
    end.

dec_gddrnf4_status_i2a(_4) ->
    case _4 of
        0 ->
            'GDD4_OK';
        1 ->
            'GDD4_UNAVAIL'
    end.

enc_GET_DIR_DELEGATION4res_non_fatal(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_gddrnf4_status(_2),
             case _2 of
                 'GDD4_OK' ->
                     enc_GET_DIR_DELEGATION4resok(_3);
                 'GDD4_UNAVAIL' ->
                     if
                         _3 == true ->
                             <<1:32>>;
                         _3 == false ->
                             <<0:32>>
                     end
             end]
    end.

dec_GET_DIR_DELEGATION4res_non_fatal(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GET_DIR_DELEGATION4resok(_1, _6),
                {{'GDD4_OK', _4}, _5};
            1 ->
                begin
                    begin
                        <<_:_6/binary,_7:32/unsigned,_/binary>> = _1,
                        _4 =
                            if
                                _7 == 0 ->
                                    false;
                                _7 == 1 ->
                                    true
                            end
                    end,
                    _5 = _6 + 4
                end,
                {{'GDD4_UNAVAIL', _4}, _5}
        end
    end.

enc_GET_DIR_DELEGATION4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_GET_DIR_DELEGATION4res_non_fatal(_3);
                 _ ->
                     []
             end]
    end.

dec_GET_DIR_DELEGATION4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GET_DIR_DELEGATION4res_non_fatal(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_GETDEVICEINFO4args(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_deviceid4(_5),
             enc_layouttype4(_4),
             enc_count4(_3),
             enc_bitmap4(_2)]
    end.

dec_GETDEVICEINFO4args(_1, _2) ->
    begin
        {_3, _4} = dec_deviceid4(_1, _2),
        {_5, _6} = dec_layouttype4(_1, _4),
        {_7, _8} = dec_count4(_1, _6),
        {_9, _10} = dec_bitmap4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_GETDEVICEINFO4resok(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_device_addr4(_3), enc_bitmap4(_2)]
    end.

dec_GETDEVICEINFO4resok(_1, _2) ->
    begin
        {_3, _4} = dec_device_addr4(_1, _2),
        {_5, _6} = dec_bitmap4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_GETDEVICEINFO4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_GETDEVICEINFO4resok(_3);
                 'NFS4ERR_TOOSMALL' ->
                     enc_count4(_3);
                 _ ->
                     []
             end]
    end.

dec_GETDEVICEINFO4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GETDEVICEINFO4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            10005 ->
                {_4, _5} = dec_count4(_1, _6),
                {{'NFS4ERR_TOOSMALL', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_GETDEVICELIST4args(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [enc_layouttype4(_5),
             enc_count4(_4),
             enc_nfs_cookie4(_3),
             enc_verifier4(_2)]
    end.

dec_GETDEVICELIST4args(_1, _2) ->
    begin
        {_3, _4} = dec_layouttype4(_1, _2),
        {_5, _6} = dec_count4(_1, _4),
        {_7, _8} = dec_nfs_cookie4(_1, _6),
        {_9, _10} = dec_verifier4(_1, _8),
        {{_3, _5, _7, _9}, _10}
    end.

enc_GETDEVICELIST4resok(_1) ->
    case _1 of
        {_7, _6, _3, _2} ->
            [enc_nfs_cookie4(_7),
             enc_verifier4(_6),
             begin
                 _5 = length(_3),
                 [<<_5:32/unsigned>>,
                  lists:map(fun(_4) ->
                                   enc_deviceid4(_4)
                            end,
                            _3)]
             end,
             if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end]
    end.

dec_GETDEVICELIST4resok(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_cookie4(_1, _2),
        {_5, _6} = dec_verifier4(_1, _4),
        {_7, _8} =
            begin
                <<_:_6/binary,_9:32/unsigned,_/binary>> = _1,
                map_elem(fun(_10, _11) ->
                                dec_deviceid4(_10, _11)
                         end,
                         _1,
                         _6 + 4,
                         infinity, _9)
            end,
        begin
            begin
                <<_:_8/binary,_14:32/unsigned,_/binary>> = _1,
                _12 =
                    if
                        _14 == 0 ->
                            false;
                        _14 == 1 ->
                            true
                    end
            end,
            _13 = _8 + 4
        end,
        {{_3, _5, _7, _12}, _13}
    end.

enc_GETDEVICELIST4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_GETDEVICELIST4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_GETDEVICELIST4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_GETDEVICELIST4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_newtime4(_1) ->
    case _1 of
        {_2, _3} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end,
             case _2 of
                 true ->
                     enc_nfstime4(_3);
                 false ->
                     []
             end]
    end.

dec_newtime4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_nfstime4(_1, _6),
                {{true, _4}, _5};
            0 ->
                {_4, _5} = {void, _6},
                {{false, _4}, _5}
        end
    end.

enc_newoffset4(_1) ->
    case _1 of
        {_2, _3} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end,
             case _2 of
                 true ->
                     enc_offset4(_3);
                 false ->
                     []
             end]
    end.

dec_newoffset4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_offset4(_1, _6),
                {{true, _4}, _5};
            0 ->
                {_4, _5} = {void, _6},
                {{false, _4}, _5}
        end
    end.

enc_LAYOUTCOMMIT4args(_1) ->
    case _1 of
        {_8, _7, _6, _5, _4, _3, _2} ->
            [enc_offset4(_8),
             enc_length4(_7),
             if
                 _6 == true ->
                     <<1:32>>;
                 _6 == false ->
                     <<0:32>>
             end,
             enc_stateid4(_5),
             enc_newoffset4(_4),
             enc_newtime4(_3),
             enc_layoutupdate4(_2)]
    end.

dec_LAYOUTCOMMIT4args(_1, _2) ->
    begin
        {_3, _4} = dec_offset4(_1, _2),
        {_5, _6} = dec_length4(_1, _4),
        begin
            begin
                <<_:_6/binary,_9:32/unsigned,_/binary>> = _1,
                _7 =
                    if
                        _9 == 0 ->
                            false;
                        _9 == 1 ->
                            true
                    end
            end,
            _8 = _6 + 4
        end,
        {_10, _11} = dec_stateid4(_1, _8),
        {_12, _13} = dec_newoffset4(_1, _11),
        {_14, _15} = dec_newtime4(_1, _13),
        {_16, _17} = dec_layoutupdate4(_1, _15),
        {{_3, _5, _7, _10, _12, _14, _16}, _17}
    end.

enc_newsize4(_1) ->
    case _1 of
        {_2, _3} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end,
             case _2 of
                 true ->
                     enc_length4(_3);
                 false ->
                     []
             end]
    end.

dec_newsize4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_length4(_1, _6),
                {{true, _4}, _5};
            0 ->
                {_4, _5} = {void, _6},
                {{false, _4}, _5}
        end
    end.

enc_LAYOUTCOMMIT4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_newsize4(_2)]
    end.

dec_LAYOUTCOMMIT4resok(_1, _2) ->
    begin
        {_3, _4} = dec_newsize4(_1, _2),
        {{_3}, _4}
    end.

enc_LAYOUTCOMMIT4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_LAYOUTCOMMIT4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_LAYOUTCOMMIT4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_LAYOUTCOMMIT4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LAYOUTGET4args(_1) ->
    case _1 of
        {_9, _8, _7, _6, _5, _4, _3, _2} ->
            [if
                 _9 == true ->
                     <<1:32>>;
                 _9 == false ->
                     <<0:32>>
             end,
             enc_layouttype4(_8),
             enc_layoutiomode4(_7),
             enc_offset4(_6),
             enc_length4(_5),
             enc_length4(_4),
             enc_stateid4(_3),
             enc_count4(_2)]
    end.

dec_LAYOUTGET4args(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} = dec_layouttype4(_1, _4),
        {_8, _9} = dec_layoutiomode4(_1, _7),
        {_10, _11} = dec_offset4(_1, _9),
        {_12, _13} = dec_length4(_1, _11),
        {_14, _15} = dec_length4(_1, _13),
        {_16, _17} = dec_stateid4(_1, _15),
        {_18, _19} = dec_count4(_1, _17),
        {{_3, _6, _8, _10, _12, _14, _16, _18}, _19}
    end.

enc_LAYOUTGET4resok(_1) ->
    case _1 of
        {_6, _5, _2} ->
            [if
                 _6 == true ->
                     <<1:32>>;
                 _6 == false ->
                     <<0:32>>
             end,
             enc_stateid4(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_layout4(_3)
                            end,
                            _2)]
             end]
    end.

dec_LAYOUTGET4resok(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} = dec_stateid4(_1, _4),
        {_8, _9} =
            begin
                <<_:_7/binary,_10:32/unsigned,_/binary>> = _1,
                map_elem(fun(_11, _12) ->
                                dec_layout4(_11, _12)
                         end,
                         _1,
                         _7 + 4,
                         infinity, _10)
            end,
        {{_3, _6, _8}, _9}
    end.

enc_LAYOUTGET4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_LAYOUTGET4resok(_3);
                 'NFS4ERR_LAYOUTTRYLATER' ->
                     if
                         _3 == true ->
                             <<1:32>>;
                         _3 == false ->
                             <<0:32>>
                     end;
                 _ ->
                     []
             end]
    end.

dec_LAYOUTGET4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_LAYOUTGET4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            10058 ->
                begin
                    begin
                        <<_:_6/binary,_8:32/unsigned,_/binary>> = _1,
                        _4 =
                            if
                                _8 == 0 ->
                                    false;
                                _8 == 1 ->
                                    true
                            end
                    end,
                    _5 = _6 + 4
                end,
                {{'NFS4ERR_LAYOUTTRYLATER', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_layoutreturn_type4(_1) ->
    case _1 of
        'LAYOUTRETURN4_FILE' ->
            <<1:32>>;
        'LAYOUTRETURN4_FSID' ->
            <<2:32>>;
        'LAYOUTRETURN4_ALL' ->
            <<3:32>>
    end.

dec_layoutreturn_type4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            1 ->
                {'LAYOUTRETURN4_FILE', _2 + 4};
            2 ->
                {'LAYOUTRETURN4_FSID', _2 + 4};
            3 ->
                {'LAYOUTRETURN4_ALL', _2 + 4}
        end
    end.

dec_layoutreturn_type4_i2a(_4) ->
    case _4 of
        1 ->
            'LAYOUTRETURN4_FILE';
        2 ->
            'LAYOUTRETURN4_FSID';
        3 ->
            'LAYOUTRETURN4_ALL'
    end.

enc_layoutreturn_file4(_1) ->
    case _1 of
        {_6, _5, _4, _2} ->
            [enc_offset4(_6),
             enc_length4(_5),
             enc_stateid4(_4),
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_layoutreturn_file4(_1, _2) ->
    begin
        {_3, _4} = dec_offset4(_1, _2),
        {_5, _6} = dec_length4(_1, _4),
        {_7, _8} = dec_stateid4(_1, _6),
        {_9, _10} =
            begin
                <<_:_8/binary,_11:32/unsigned,_/binary>> = _1,
                _12 = _8 + 4,
                <<_:_12/binary,_13:_11/binary,_/binary>> = _1,
                {_13, _12 + align(_11)}
            end,
        {{_3, _5, _7, _9}, _10}
    end.

enc_layoutreturn4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_layoutreturn_type4(_2),
             case _2 of
                 'LAYOUTRETURN4_FILE' ->
                     enc_layoutreturn_file4(_3);
                 _ ->
                     []
             end]
    end.

dec_layoutreturn4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_layoutreturn_file4(_1, _6),
                {{'LAYOUTRETURN4_FILE', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_layoutreturn_type4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_LAYOUTRETURN4args(_1) ->
    case _1 of
        {_5, _4, _3, _2} ->
            [if
                 _5 == true ->
                     <<1:32>>;
                 _5 == false ->
                     <<0:32>>
             end,
             enc_layouttype4(_4),
             enc_layoutiomode4(_3),
             enc_layoutreturn4(_2)]
    end.

dec_LAYOUTRETURN4args(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {_6, _7} = dec_layouttype4(_1, _4),
        {_8, _9} = dec_layoutiomode4(_1, _7),
        {_10, _11} = dec_layoutreturn4(_1, _9),
        {{_3, _6, _8, _10}, _11}
    end.

enc_layoutreturn_stateid(_1) ->
    case _1 of
        {_2, _3} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end,
             case _2 of
                 true ->
                     enc_stateid4(_3);
                 false ->
                     []
             end]
    end.

dec_layoutreturn_stateid(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            1 ->
                {_4, _5} = dec_stateid4(_1, _6),
                {{true, _4}, _5};
            0 ->
                {_4, _5} = {void, _6},
                {{false, _4}, _5}
        end
    end.

enc_LAYOUTRETURN4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_layoutreturn_stateid(_3);
                 _ ->
                     []
             end]
    end.

dec_LAYOUTRETURN4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_layoutreturn_stateid(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_secinfo_style4(_1) ->
    case _1 of
        'SECINFO_STYLE4_CURRENT_FH' ->
            <<0:32>>;
        'SECINFO_STYLE4_PARENT' ->
            <<1:32>>
    end.

dec_secinfo_style4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            0 ->
                {'SECINFO_STYLE4_CURRENT_FH', _2 + 4};
            1 ->
                {'SECINFO_STYLE4_PARENT', _2 + 4}
        end
    end.

dec_secinfo_style4_i2a(_4) ->
    case _4 of
        0 ->
            'SECINFO_STYLE4_CURRENT_FH';
        1 ->
            'SECINFO_STYLE4_PARENT'
    end.

enc_SECINFO_NO_NAME4args(_1) ->
    enc_secinfo_style4(_1).

dec_SECINFO_NO_NAME4args(_1, _2) ->
    dec_secinfo_style4(_1, _2).

enc_SECINFO_NO_NAME4res(_1) ->
    enc_SECINFO4res(_1).

dec_SECINFO_NO_NAME4res(_1, _2) ->
    dec_SECINFO4res(_1, _2).

enc_SEQUENCE4args(_1) ->
    case _1 of
        {_6, _5, _4, _3, _2} ->
            [enc_sessionid4(_6),
             enc_sequenceid4(_5),
             enc_slotid4(_4),
             enc_slotid4(_3),
             if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end]
    end.

dec_SEQUENCE4args(_1, _2) ->
    begin
        {_3, _4} = dec_sessionid4(_1, _2),
        {_5, _6} = dec_sequenceid4(_1, _4),
        {_7, _8} = dec_slotid4(_1, _6),
        {_9, _10} = dec_slotid4(_1, _8),
        begin
            begin
                <<_:_10/binary,_13:32/unsigned,_/binary>> = _1,
                _11 =
                    if
                        _13 == 0 ->
                            false;
                        _13 == 1 ->
                            true
                    end
            end,
            _12 = _10 + 4
        end,
        {{_3, _5, _7, _9, _11}, _12}
    end.

enc_SEQUENCE4resok(_1) ->
    case _1 of
        {_7, _6, _5, _4, _3, _2} ->
            [enc_sessionid4(_7),
             enc_sequenceid4(_6),
             enc_slotid4(_5),
             enc_slotid4(_4),
             enc_slotid4(_3),
             enc_uint32_t(_2)]
    end.

dec_SEQUENCE4resok(_1, _2) ->
    begin
        {_3, _4} = dec_sessionid4(_1, _2),
        {_5, _6} = dec_sequenceid4(_1, _4),
        {_7, _8} = dec_slotid4(_1, _6),
        {_9, _10} = dec_slotid4(_1, _8),
        {_11, _12} = dec_slotid4(_1, _10),
        {_13, _14} = dec_uint32_t(_1, _12),
        {{_3, _5, _7, _9, _11, _13}, _14}
    end.

enc_SEQUENCE4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_SEQUENCE4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_SEQUENCE4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_SEQUENCE4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_ssa_digest_input4(_1) ->
    case _1 of
        {_2} ->
            [enc_SEQUENCE4args(_2)]
    end.

dec_ssa_digest_input4(_1, _2) ->
    begin
        {_3, _4} = dec_SEQUENCE4args(_1, _2),
        {{_3}, _4}
    end.

enc_SET_SSV4args(_1) ->
    case _1 of
        {_4, _2} ->
            [begin
                 _5 = io_list_len(_4),
                 [<<_5:32/unsigned>>, _4, enc_align(_5)]
             end,
             begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_SET_SSV4args(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _6 = _2 + 4,
                <<_:_6/binary,_7:_5/binary,_/binary>> = _1,
                {_7, _6 + align(_5)}
            end,
        {_8, _9} =
            begin
                <<_:_4/binary,_10:32/unsigned,_/binary>> = _1,
                _11 = _4 + 4,
                <<_:_11/binary,_12:_10/binary,_/binary>> = _1,
                {_12, _11 + align(_10)}
            end,
        {{_3, _8}, _9}
    end.

enc_ssr_digest_input4(_1) ->
    case _1 of
        {_2} ->
            [enc_SEQUENCE4res(_2)]
    end.

dec_ssr_digest_input4(_1, _2) ->
    begin
        {_3, _4} = dec_SEQUENCE4res(_1, _2),
        {{_3}, _4}
    end.

enc_SET_SSV4resok(_1) ->
    case _1 of
        {_2} ->
            [begin
                 _3 = io_list_len(_2),
                 [<<_3:32/unsigned>>, _2, enc_align(_3)]
             end]
    end.

dec_SET_SSV4resok(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _6 = _2 + 4,
                <<_:_6/binary,_7:_5/binary,_/binary>> = _1,
                {_7, _6 + align(_5)}
            end,
        {{_3}, _4}
    end.

enc_SET_SSV4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_SET_SSV4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_SET_SSV4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_SET_SSV4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_TEST_STATEID4args(_1) ->
    case _1 of
        {_2} ->
            [begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_stateid4(_3)
                            end,
                            _2)]
             end]
    end.

dec_TEST_STATEID4args(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                map_elem(fun(_6, _7) ->
                                dec_stateid4(_6, _7)
                         end,
                         _1,
                         _2 + 4,
                         infinity, _5)
            end,
        {{_3}, _4}
    end.

enc_TEST_STATEID4resok(_1) ->
    case _1 of
        {_2} ->
            [begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_nfsstat4(_3)
                            end,
                            _2)]
             end]
    end.

dec_TEST_STATEID4resok(_1, _2) ->
    begin
        {_3, _4} =
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                map_elem(fun(_6, _7) ->
                                dec_nfsstat4(_6, _7)
                         end,
                         _1,
                         _2 + 4,
                         infinity, _5)
            end,
        {{_3}, _4}
    end.

enc_TEST_STATEID4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_TEST_STATEID4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_TEST_STATEID4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_TEST_STATEID4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_deleg_claim4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_open_claim_type4(_2),
             case _2 of
                 'CLAIM_FH' ->
                     [];
                 'CLAIM_DELEG_PREV_FH' ->
                     [];
                 'CLAIM_PREVIOUS' ->
                     enc_open_delegation_type4(_3)
             end]
    end.

dec_deleg_claim4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            4 ->
                {_4, _5} = {void, _6},
                {{'CLAIM_FH', _4}, _5};
            6 ->
                {_4, _5} = {void, _6},
                {{'CLAIM_DELEG_PREV_FH', _4}, _5};
            1 ->
                {_4, _5} = dec_open_delegation_type4(_1, _6),
                {{'CLAIM_PREVIOUS', _4}, _5}
        end
    end.

enc_WANT_DELEGATION4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_uint32_t(_3), enc_deleg_claim4(_2)]
    end.

dec_WANT_DELEGATION4args(_1, _2) ->
    begin
        {_3, _4} = dec_uint32_t(_1, _2),
        {_5, _6} = dec_deleg_claim4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_WANT_DELEGATION4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_open_delegation4(_3);
                 _ ->
                     []
             end]
    end.

dec_WANT_DELEGATION4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_open_delegation4(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_DESTROY_CLIENTID4args(_1) ->
    case _1 of
        {_2} ->
            [enc_clientid4(_2)]
    end.

dec_DESTROY_CLIENTID4args(_1, _2) ->
    begin
        {_3, _4} = dec_clientid4(_1, _2),
        {{_3}, _4}
    end.

enc_DESTROY_CLIENTID4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_DESTROY_CLIENTID4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_RECLAIM_COMPLETE4args(_1) ->
    case _1 of
        {_2} ->
            [if
                 _2 == true ->
                     <<1:32>>;
                 _2 == false ->
                     <<0:32>>
             end]
    end.

dec_RECLAIM_COMPLETE4args(_1, _2) ->
    begin
        begin
            begin
                <<_:_2/binary,_5:32/unsigned,_/binary>> = _1,
                _3 =
                    if
                        _5 == 0 ->
                            false;
                        _5 == 1 ->
                            true
                    end
            end,
            _4 = _2 + 4
        end,
        {{_3}, _4}
    end.

enc_RECLAIM_COMPLETE4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_RECLAIM_COMPLETE4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_ILLEGAL4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_ILLEGAL4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_nfs_opnum4(_1) ->
    case _1 of
        'OP_ACCESS' ->
            <<3:32>>;
        'OP_CLOSE' ->
            <<4:32>>;
        'OP_COMMIT' ->
            <<5:32>>;
        'OP_CREATE' ->
            <<6:32>>;
        'OP_DELEGPURGE' ->
            <<7:32>>;
        'OP_DELEGRETURN' ->
            <<8:32>>;
        'OP_GETATTR' ->
            <<9:32>>;
        'OP_GETFH' ->
            <<10:32>>;
        'OP_LINK' ->
            <<11:32>>;
        'OP_LOCK' ->
            <<12:32>>;
        'OP_LOCKT' ->
            <<13:32>>;
        'OP_LOCKU' ->
            <<14:32>>;
        'OP_LOOKUP' ->
            <<15:32>>;
        'OP_LOOKUPP' ->
            <<16:32>>;
        'OP_NVERIFY' ->
            <<17:32>>;
        'OP_OPEN' ->
            <<18:32>>;
        'OP_OPENATTR' ->
            <<19:32>>;
        'OP_OPEN_CONFIRM' ->
            <<20:32>>;
        'OP_OPEN_DOWNGRADE' ->
            <<21:32>>;
        'OP_PUTFH' ->
            <<22:32>>;
        'OP_PUTPUBFH' ->
            <<23:32>>;
        'OP_PUTROOTFH' ->
            <<24:32>>;
        'OP_READ' ->
            <<25:32>>;
        'OP_READDIR' ->
            <<26:32>>;
        'OP_READLINK' ->
            <<27:32>>;
        'OP_REMOVE' ->
            <<28:32>>;
        'OP_RENAME' ->
            <<29:32>>;
        'OP_RENEW' ->
            <<30:32>>;
        'OP_RESTOREFH' ->
            <<31:32>>;
        'OP_SAVEFH' ->
            <<32:32>>;
        'OP_SECINFO' ->
            <<33:32>>;
        'OP_SETATTR' ->
            <<34:32>>;
        'OP_SETCLIENTID' ->
            <<35:32>>;
        'OP_SETCLIENTID_CONFIRM' ->
            <<36:32>>;
        'OP_VERIFY' ->
            <<37:32>>;
        'OP_WRITE' ->
            <<38:32>>;
        'OP_RELEASE_LOCKOWNER' ->
            <<39:32>>;
        'OP_CREATE_SESSION' ->
            <<43:32>>;
        'OP_DESTROY_SESSION' ->
            <<44:32>>;
        'OP_FREE_STATEID' ->
            <<45:32>>;
        'OP_GET_DIR_DELEGATION' ->
            <<46:32>>;
        'OP_GETDEVICEINFO' ->
            <<47:32>>;
        'OP_GETDEVICELIST' ->
            <<48:32>>;
        'OP_LAYOUTCOMMIT' ->
            <<49:32>>;
        'OP_LAYOUTGET' ->
            <<50:32>>;
        'OP_LAYOUTRETURN' ->
            <<51:32>>;
        'OP_SECINFO_NO_NAME' ->
            <<52:32>>;
        'OP_SEQUENCE' ->
            <<53:32>>;
        'OP_SET_SSV' ->
            <<54:32>>;
        'OP_TEST_STATEID' ->
            <<55:32>>;
        'OP_WANT_DELEGATION' ->
            <<56:32>>;
        'OP_DESTROY_CLIENTID' ->
            <<57:32>>;
        'OP_RECLAIM_COMPLETE' ->
            <<58:32>>;
        'OP_ILLEGAL' ->
            <<10044:32>>
    end.

dec_nfs_opnum4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            3 ->
                {'OP_ACCESS', _2 + 4};
            4 ->
                {'OP_CLOSE', _2 + 4};
            5 ->
                {'OP_COMMIT', _2 + 4};
            6 ->
                {'OP_CREATE', _2 + 4};
            7 ->
                {'OP_DELEGPURGE', _2 + 4};
            8 ->
                {'OP_DELEGRETURN', _2 + 4};
            9 ->
                {'OP_GETATTR', _2 + 4};
            10 ->
                {'OP_GETFH', _2 + 4};
            11 ->
                {'OP_LINK', _2 + 4};
            12 ->
                {'OP_LOCK', _2 + 4};
            13 ->
                {'OP_LOCKT', _2 + 4};
            14 ->
                {'OP_LOCKU', _2 + 4};
            15 ->
                {'OP_LOOKUP', _2 + 4};
            16 ->
                {'OP_LOOKUPP', _2 + 4};
            17 ->
                {'OP_NVERIFY', _2 + 4};
            18 ->
                {'OP_OPEN', _2 + 4};
            19 ->
                {'OP_OPENATTR', _2 + 4};
            20 ->
                {'OP_OPEN_CONFIRM', _2 + 4};
            21 ->
                {'OP_OPEN_DOWNGRADE', _2 + 4};
            22 ->
                {'OP_PUTFH', _2 + 4};
            23 ->
                {'OP_PUTPUBFH', _2 + 4};
            24 ->
                {'OP_PUTROOTFH', _2 + 4};
            25 ->
                {'OP_READ', _2 + 4};
            26 ->
                {'OP_READDIR', _2 + 4};
            27 ->
                {'OP_READLINK', _2 + 4};
            28 ->
                {'OP_REMOVE', _2 + 4};
            29 ->
                {'OP_RENAME', _2 + 4};
            30 ->
                {'OP_RENEW', _2 + 4};
            31 ->
                {'OP_RESTOREFH', _2 + 4};
            32 ->
                {'OP_SAVEFH', _2 + 4};
            33 ->
                {'OP_SECINFO', _2 + 4};
            34 ->
                {'OP_SETATTR', _2 + 4};
            35 ->
                {'OP_SETCLIENTID', _2 + 4};
            36 ->
                {'OP_SETCLIENTID_CONFIRM', _2 + 4};
            37 ->
                {'OP_VERIFY', _2 + 4};
            38 ->
                {'OP_WRITE', _2 + 4};
            39 ->
                {'OP_RELEASE_LOCKOWNER', _2 + 4};
            43 ->
                {'OP_CREATE_SESSION', _2 + 4};
            44 ->
                {'OP_DESTROY_SESSION', _2 + 4};
            45 ->
                {'OP_FREE_STATEID', _2 + 4};
            46 ->
                {'OP_GET_DIR_DELEGATION', _2 + 4};
            47 ->
                {'OP_GETDEVICEINFO', _2 + 4};
            48 ->
                {'OP_GETDEVICELIST', _2 + 4};
            49 ->
                {'OP_LAYOUTCOMMIT', _2 + 4};
            50 ->
                {'OP_LAYOUTGET', _2 + 4};
            51 ->
                {'OP_LAYOUTRETURN', _2 + 4};
            52 ->
                {'OP_SECINFO_NO_NAME', _2 + 4};
            53 ->
                {'OP_SEQUENCE', _2 + 4};
            54 ->
                {'OP_SET_SSV', _2 + 4};
            55 ->
                {'OP_TEST_STATEID', _2 + 4};
            56 ->
                {'OP_WANT_DELEGATION', _2 + 4};
            57 ->
                {'OP_DESTROY_CLIENTID', _2 + 4};
            58 ->
                {'OP_RECLAIM_COMPLETE', _2 + 4};
            10044 ->
                {'OP_ILLEGAL', _2 + 4}
        end
    end.

dec_nfs_opnum4_i2a(_4) ->
    case _4 of
        3 ->
            'OP_ACCESS';
        4 ->
            'OP_CLOSE';
        5 ->
            'OP_COMMIT';
        6 ->
            'OP_CREATE';
        7 ->
            'OP_DELEGPURGE';
        8 ->
            'OP_DELEGRETURN';
        9 ->
            'OP_GETATTR';
        10 ->
            'OP_GETFH';
        11 ->
            'OP_LINK';
        12 ->
            'OP_LOCK';
        13 ->
            'OP_LOCKT';
        14 ->
            'OP_LOCKU';
        15 ->
            'OP_LOOKUP';
        16 ->
            'OP_LOOKUPP';
        17 ->
            'OP_NVERIFY';
        18 ->
            'OP_OPEN';
        19 ->
            'OP_OPENATTR';
        20 ->
            'OP_OPEN_CONFIRM';
        21 ->
            'OP_OPEN_DOWNGRADE';
        22 ->
            'OP_PUTFH';
        23 ->
            'OP_PUTPUBFH';
        24 ->
            'OP_PUTROOTFH';
        25 ->
            'OP_READ';
        26 ->
            'OP_READDIR';
        27 ->
            'OP_READLINK';
        28 ->
            'OP_REMOVE';
        29 ->
            'OP_RENAME';
        30 ->
            'OP_RENEW';
        31 ->
            'OP_RESTOREFH';
        32 ->
            'OP_SAVEFH';
        33 ->
            'OP_SECINFO';
        34 ->
            'OP_SETATTR';
        35 ->
            'OP_SETCLIENTID';
        36 ->
            'OP_SETCLIENTID_CONFIRM';
        37 ->
            'OP_VERIFY';
        38 ->
            'OP_WRITE';
        39 ->
            'OP_RELEASE_LOCKOWNER';
        43 ->
            'OP_CREATE_SESSION';
        44 ->
            'OP_DESTROY_SESSION';
        45 ->
            'OP_FREE_STATEID';
        46 ->
            'OP_GET_DIR_DELEGATION';
        47 ->
            'OP_GETDEVICEINFO';
        48 ->
            'OP_GETDEVICELIST';
        49 ->
            'OP_LAYOUTCOMMIT';
        50 ->
            'OP_LAYOUTGET';
        51 ->
            'OP_LAYOUTRETURN';
        52 ->
            'OP_SECINFO_NO_NAME';
        53 ->
            'OP_SEQUENCE';
        54 ->
            'OP_SET_SSV';
        55 ->
            'OP_TEST_STATEID';
        56 ->
            'OP_WANT_DELEGATION';
        57 ->
            'OP_DESTROY_CLIENTID';
        58 ->
            'OP_RECLAIM_COMPLETE';
        10044 ->
            'OP_ILLEGAL'
    end.

enc_nfs_argop4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfs_opnum4(_2),
             case _2 of
                 'OP_ACCESS' ->
                     enc_ACCESS4args(_3);
                 'OP_CLOSE' ->
                     enc_CLOSE4args(_3);
                 'OP_COMMIT' ->
                     enc_COMMIT4args(_3);
                 'OP_CREATE' ->
                     enc_CREATE4args(_3);
                 'OP_DELEGPURGE' ->
                     enc_DELEGPURGE4args(_3);
                 'OP_DELEGRETURN' ->
                     enc_DELEGRETURN4args(_3);
                 'OP_GETATTR' ->
                     enc_GETATTR4args(_3);
                 'OP_GETFH' ->
                     [];
                 'OP_LINK' ->
                     enc_LINK4args(_3);
                 'OP_LOCK' ->
                     enc_LOCK4args(_3);
                 'OP_LOCKT' ->
                     enc_LOCKT4args(_3);
                 'OP_LOCKU' ->
                     enc_LOCKU4args(_3);
                 'OP_LOOKUP' ->
                     enc_LOOKUP4args(_3);
                 'OP_LOOKUPP' ->
                     [];
                 'OP_NVERIFY' ->
                     enc_NVERIFY4args(_3);
                 'OP_OPEN' ->
                     enc_OPEN4args(_3);
                 'OP_OPENATTR' ->
                     enc_OPENATTR4args(_3);
                 'OP_OPEN_CONFIRM' ->
                     enc_OPEN_CONFIRM4args(_3);
                 'OP_OPEN_DOWNGRADE' ->
                     enc_OPEN_DOWNGRADE4args(_3);
                 'OP_PUTFH' ->
                     enc_PUTFH4args(_3);
                 'OP_PUTPUBFH' ->
                     [];
                 'OP_PUTROOTFH' ->
                     [];
                 'OP_READ' ->
                     enc_READ4args(_3);
                 'OP_READDIR' ->
                     enc_READDIR4args(_3);
                 'OP_READLINK' ->
                     [];
                 'OP_REMOVE' ->
                     enc_REMOVE4args(_3);
                 'OP_RENAME' ->
                     enc_RENAME4args(_3);
                 'OP_RENEW' ->
                     enc_RENEW4args(_3);
                 'OP_RESTOREFH' ->
                     [];
                 'OP_SAVEFH' ->
                     [];
                 'OP_SECINFO' ->
                     enc_SECINFO4args(_3);
                 'OP_SETATTR' ->
                     enc_SETATTR4args(_3);
                 'OP_SETCLIENTID' ->
                     enc_SETCLIENTID4args(_3);
                 'OP_SETCLIENTID_CONFIRM' ->
                     enc_SETCLIENTID_CONFIRM4args(_3);
                 'OP_VERIFY' ->
                     enc_VERIFY4args(_3);
                 'OP_WRITE' ->
                     enc_WRITE4args(_3);
                 'OP_RELEASE_LOCKOWNER' ->
                     enc_RELEASE_LOCKOWNER4args(_3);
                 'OP_CREATE_SESSION' ->
                     enc_CREATE_SESSION4args(_3);
                 'OP_DESTROY_SESSION' ->
                     enc_DESTROY_SESSION4args(_3);
                 'OP_FREE_STATEID' ->
                     enc_FREE_STATEID4args(_3);
                 'OP_GET_DIR_DELEGATION' ->
                     enc_GET_DIR_DELEGATION4args(_3);
                 'OP_GETDEVICEINFO' ->
                     enc_GETDEVICEINFO4args(_3);
                 'OP_GETDEVICELIST' ->
                     enc_GETDEVICELIST4args(_3);
                 'OP_LAYOUTCOMMIT' ->
                     enc_LAYOUTCOMMIT4args(_3);
                 'OP_LAYOUTGET' ->
                     enc_LAYOUTGET4args(_3);
                 'OP_LAYOUTRETURN' ->
                     enc_LAYOUTRETURN4args(_3);
                 'OP_SECINFO_NO_NAME' ->
                     enc_SECINFO_NO_NAME4args(_3);
                 'OP_SEQUENCE' ->
                     enc_SEQUENCE4args(_3);
                 'OP_SET_SSV' ->
                     enc_SET_SSV4args(_3);
                 'OP_TEST_STATEID' ->
                     enc_TEST_STATEID4args(_3);
                 'OP_WANT_DELEGATION' ->
                     enc_WANT_DELEGATION4args(_3);
                 'OP_DESTROY_CLIENTID' ->
                     enc_DESTROY_CLIENTID4args(_3);
                 'OP_RECLAIM_COMPLETE' ->
                     enc_RECLAIM_COMPLETE4args(_3);
                 'OP_ILLEGAL' ->
                     []
             end]
    end.

dec_nfs_argop4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            3 ->
                {_4, _5} = dec_ACCESS4args(_1, _6),
                {{'OP_ACCESS', _4}, _5};
            4 ->
                {_4, _5} = dec_CLOSE4args(_1, _6),
                {{'OP_CLOSE', _4}, _5};
            5 ->
                {_4, _5} = dec_COMMIT4args(_1, _6),
                {{'OP_COMMIT', _4}, _5};
            6 ->
                {_4, _5} = dec_CREATE4args(_1, _6),
                {{'OP_CREATE', _4}, _5};
            7 ->
                {_4, _5} = dec_DELEGPURGE4args(_1, _6),
                {{'OP_DELEGPURGE', _4}, _5};
            8 ->
                {_4, _5} = dec_DELEGRETURN4args(_1, _6),
                {{'OP_DELEGRETURN', _4}, _5};
            9 ->
                {_4, _5} = dec_GETATTR4args(_1, _6),
                {{'OP_GETATTR', _4}, _5};
            10 ->
                {_4, _5} = {void, _6},
                {{'OP_GETFH', _4}, _5};
            11 ->
                {_4, _5} = dec_LINK4args(_1, _6),
                {{'OP_LINK', _4}, _5};
            12 ->
                {_4, _5} = dec_LOCK4args(_1, _6),
                {{'OP_LOCK', _4}, _5};
            13 ->
                {_4, _5} = dec_LOCKT4args(_1, _6),
                {{'OP_LOCKT', _4}, _5};
            14 ->
                {_4, _5} = dec_LOCKU4args(_1, _6),
                {{'OP_LOCKU', _4}, _5};
            15 ->
                {_4, _5} = dec_LOOKUP4args(_1, _6),
                {{'OP_LOOKUP', _4}, _5};
            16 ->
                {_4, _5} = {void, _6},
                {{'OP_LOOKUPP', _4}, _5};
            17 ->
                {_4, _5} = dec_NVERIFY4args(_1, _6),
                {{'OP_NVERIFY', _4}, _5};
            18 ->
                {_4, _5} = dec_OPEN4args(_1, _6),
                {{'OP_OPEN', _4}, _5};
            19 ->
                {_4, _5} = dec_OPENATTR4args(_1, _6),
                {{'OP_OPENATTR', _4}, _5};
            20 ->
                {_4, _5} = dec_OPEN_CONFIRM4args(_1, _6),
                {{'OP_OPEN_CONFIRM', _4}, _5};
            21 ->
                {_4, _5} = dec_OPEN_DOWNGRADE4args(_1, _6),
                {{'OP_OPEN_DOWNGRADE', _4}, _5};
            22 ->
                {_4, _5} = dec_PUTFH4args(_1, _6),
                {{'OP_PUTFH', _4}, _5};
            23 ->
                {_4, _5} = {void, _6},
                {{'OP_PUTPUBFH', _4}, _5};
            24 ->
                {_4, _5} = {void, _6},
                {{'OP_PUTROOTFH', _4}, _5};
            25 ->
                {_4, _5} = dec_READ4args(_1, _6),
                {{'OP_READ', _4}, _5};
            26 ->
                {_4, _5} = dec_READDIR4args(_1, _6),
                {{'OP_READDIR', _4}, _5};
            27 ->
                {_4, _5} = {void, _6},
                {{'OP_READLINK', _4}, _5};
            28 ->
                {_4, _5} = dec_REMOVE4args(_1, _6),
                {{'OP_REMOVE', _4}, _5};
            29 ->
                {_4, _5} = dec_RENAME4args(_1, _6),
                {{'OP_RENAME', _4}, _5};
            30 ->
                {_4, _5} = dec_RENEW4args(_1, _6),
                {{'OP_RENEW', _4}, _5};
            31 ->
                {_4, _5} = {void, _6},
                {{'OP_RESTOREFH', _4}, _5};
            32 ->
                {_4, _5} = {void, _6},
                {{'OP_SAVEFH', _4}, _5};
            33 ->
                {_4, _5} = dec_SECINFO4args(_1, _6),
                {{'OP_SECINFO', _4}, _5};
            34 ->
                {_4, _5} = dec_SETATTR4args(_1, _6),
                {{'OP_SETATTR', _4}, _5};
            35 ->
                {_4, _5} = dec_SETCLIENTID4args(_1, _6),
                {{'OP_SETCLIENTID', _4}, _5};
            36 ->
                {_4, _5} = dec_SETCLIENTID_CONFIRM4args(_1, _6),
                {{'OP_SETCLIENTID_CONFIRM', _4}, _5};
            37 ->
                {_4, _5} = dec_VERIFY4args(_1, _6),
                {{'OP_VERIFY', _4}, _5};
            38 ->
                {_4, _5} = dec_WRITE4args(_1, _6),
                {{'OP_WRITE', _4}, _5};
            39 ->
                {_4, _5} = dec_RELEASE_LOCKOWNER4args(_1, _6),
                {{'OP_RELEASE_LOCKOWNER', _4}, _5};
            43 ->
                {_4, _5} = dec_CREATE_SESSION4args(_1, _6),
                {{'OP_CREATE_SESSION', _4}, _5};
            44 ->
                {_4, _5} = dec_DESTROY_SESSION4args(_1, _6),
                {{'OP_DESTROY_SESSION', _4}, _5};
            45 ->
                {_4, _5} = dec_FREE_STATEID4args(_1, _6),
                {{'OP_FREE_STATEID', _4}, _5};
            46 ->
                {_4, _5} = dec_GET_DIR_DELEGATION4args(_1, _6),
                {{'OP_GET_DIR_DELEGATION', _4}, _5};
            47 ->
                {_4, _5} = dec_GETDEVICEINFO4args(_1, _6),
                {{'OP_GETDEVICEINFO', _4}, _5};
            48 ->
                {_4, _5} = dec_GETDEVICELIST4args(_1, _6),
                {{'OP_GETDEVICELIST', _4}, _5};
            49 ->
                {_4, _5} = dec_LAYOUTCOMMIT4args(_1, _6),
                {{'OP_LAYOUTCOMMIT', _4}, _5};
            50 ->
                {_4, _5} = dec_LAYOUTGET4args(_1, _6),
                {{'OP_LAYOUTGET', _4}, _5};
            51 ->
                {_4, _5} = dec_LAYOUTRETURN4args(_1, _6),
                {{'OP_LAYOUTRETURN', _4}, _5};
            52 ->
                {_4, _5} = dec_SECINFO_NO_NAME4args(_1, _6),
                {{'OP_SECINFO_NO_NAME', _4}, _5};
            53 ->
                {_4, _5} = dec_SEQUENCE4args(_1, _6),
                {{'OP_SEQUENCE', _4}, _5};
            54 ->
                {_4, _5} = dec_SET_SSV4args(_1, _6),
                {{'OP_SET_SSV', _4}, _5};
            55 ->
                {_4, _5} = dec_TEST_STATEID4args(_1, _6),
                {{'OP_TEST_STATEID', _4}, _5};
            56 ->
                {_4, _5} = dec_WANT_DELEGATION4args(_1, _6),
                {{'OP_WANT_DELEGATION', _4}, _5};
            57 ->
                {_4, _5} = dec_DESTROY_CLIENTID4args(_1, _6),
                {{'OP_DESTROY_CLIENTID', _4}, _5};
            58 ->
                {_4, _5} = dec_RECLAIM_COMPLETE4args(_1, _6),
                {{'OP_RECLAIM_COMPLETE', _4}, _5};
            10044 ->
                {_4, _5} = {void, _6},
                {{'OP_ILLEGAL', _4}, _5}
        end
    end.

enc_nfs_resop4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfs_opnum4(_2),
             case _2 of
                 'OP_ACCESS' ->
                     enc_ACCESS4res(_3);
                 'OP_CLOSE' ->
                     enc_CLOSE4res(_3);
                 'OP_COMMIT' ->
                     enc_COMMIT4res(_3);
                 'OP_CREATE' ->
                     enc_CREATE4res(_3);
                 'OP_DELEGPURGE' ->
                     enc_DELEGPURGE4res(_3);
                 'OP_DELEGRETURN' ->
                     enc_DELEGRETURN4res(_3);
                 'OP_GETATTR' ->
                     enc_GETATTR4res(_3);
                 'OP_GETFH' ->
                     enc_GETFH4res(_3);
                 'OP_LINK' ->
                     enc_LINK4res(_3);
                 'OP_LOCK' ->
                     enc_LOCK4res(_3);
                 'OP_LOCKT' ->
                     enc_LOCKT4res(_3);
                 'OP_LOCKU' ->
                     enc_LOCKU4res(_3);
                 'OP_LOOKUP' ->
                     enc_LOOKUP4res(_3);
                 'OP_LOOKUPP' ->
                     enc_LOOKUPP4res(_3);
                 'OP_NVERIFY' ->
                     enc_NVERIFY4res(_3);
                 'OP_OPEN' ->
                     enc_OPEN4res(_3);
                 'OP_OPENATTR' ->
                     enc_OPENATTR4res(_3);
                 'OP_OPEN_CONFIRM' ->
                     enc_OPEN_CONFIRM4res(_3);
                 'OP_OPEN_DOWNGRADE' ->
                     enc_OPEN_DOWNGRADE4res(_3);
                 'OP_PUTFH' ->
                     enc_PUTFH4res(_3);
                 'OP_PUTPUBFH' ->
                     enc_PUTPUBFH4res(_3);
                 'OP_PUTROOTFH' ->
                     enc_PUTROOTFH4res(_3);
                 'OP_READ' ->
                     enc_READ4res(_3);
                 'OP_READDIR' ->
                     enc_READDIR4res(_3);
                 'OP_READLINK' ->
                     enc_READLINK4res(_3);
                 'OP_REMOVE' ->
                     enc_REMOVE4res(_3);
                 'OP_RENAME' ->
                     enc_RENAME4res(_3);
                 'OP_RENEW' ->
                     enc_RENEW4res(_3);
                 'OP_RESTOREFH' ->
                     enc_RESTOREFH4res(_3);
                 'OP_SAVEFH' ->
                     enc_SAVEFH4res(_3);
                 'OP_SECINFO' ->
                     enc_SECINFO4res(_3);
                 'OP_SETATTR' ->
                     enc_SETATTR4res(_3);
                 'OP_SETCLIENTID' ->
                     enc_SETCLIENTID4res(_3);
                 'OP_SETCLIENTID_CONFIRM' ->
                     enc_SETCLIENTID_CONFIRM4res(_3);
                 'OP_VERIFY' ->
                     enc_VERIFY4res(_3);
                 'OP_WRITE' ->
                     enc_WRITE4res(_3);
                 'OP_RELEASE_LOCKOWNER' ->
                     enc_RELEASE_LOCKOWNER4res(_3);
                 'OP_CREATE_SESSION' ->
                     enc_CREATE_SESSION4res(_3);
                 'OP_DESTROY_SESSION' ->
                     enc_DESTROY_SESSION4res(_3);
                 'OP_FREE_STATEID' ->
                     enc_FREE_STATEID4res(_3);
                 'OP_GET_DIR_DELEGATION' ->
                     enc_GET_DIR_DELEGATION4res(_3);
                 'OP_GETDEVICEINFO' ->
                     enc_GETDEVICEINFO4res(_3);
                 'OP_GETDEVICELIST' ->
                     enc_GETDEVICELIST4res(_3);
                 'OP_LAYOUTCOMMIT' ->
                     enc_LAYOUTCOMMIT4res(_3);
                 'OP_LAYOUTGET' ->
                     enc_LAYOUTGET4res(_3);
                 'OP_LAYOUTRETURN' ->
                     enc_LAYOUTRETURN4res(_3);
                 'OP_SECINFO_NO_NAME' ->
                     enc_SECINFO_NO_NAME4res(_3);
                 'OP_SEQUENCE' ->
                     enc_SEQUENCE4res(_3);
                 'OP_SET_SSV' ->
                     enc_SET_SSV4res(_3);
                 'OP_TEST_STATEID' ->
                     enc_TEST_STATEID4res(_3);
                 'OP_WANT_DELEGATION' ->
                     enc_WANT_DELEGATION4res(_3);
                 'OP_DESTROY_CLIENTID' ->
                     enc_DESTROY_CLIENTID4res(_3);
                 'OP_RECLAIM_COMPLETE' ->
                     enc_RECLAIM_COMPLETE4res(_3);
                 'OP_ILLEGAL' ->
                     enc_ILLEGAL4res(_3)
             end]
    end.

dec_nfs_resop4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            3 ->
                {_4, _5} = dec_ACCESS4res(_1, _6),
                {{'OP_ACCESS', _4}, _5};
            4 ->
                {_4, _5} = dec_CLOSE4res(_1, _6),
                {{'OP_CLOSE', _4}, _5};
            5 ->
                {_4, _5} = dec_COMMIT4res(_1, _6),
                {{'OP_COMMIT', _4}, _5};
            6 ->
                {_4, _5} = dec_CREATE4res(_1, _6),
                {{'OP_CREATE', _4}, _5};
            7 ->
                {_4, _5} = dec_DELEGPURGE4res(_1, _6),
                {{'OP_DELEGPURGE', _4}, _5};
            8 ->
                {_4, _5} = dec_DELEGRETURN4res(_1, _6),
                {{'OP_DELEGRETURN', _4}, _5};
            9 ->
                {_4, _5} = dec_GETATTR4res(_1, _6),
                {{'OP_GETATTR', _4}, _5};
            10 ->
                {_4, _5} = dec_GETFH4res(_1, _6),
                {{'OP_GETFH', _4}, _5};
            11 ->
                {_4, _5} = dec_LINK4res(_1, _6),
                {{'OP_LINK', _4}, _5};
            12 ->
                {_4, _5} = dec_LOCK4res(_1, _6),
                {{'OP_LOCK', _4}, _5};
            13 ->
                {_4, _5} = dec_LOCKT4res(_1, _6),
                {{'OP_LOCKT', _4}, _5};
            14 ->
                {_4, _5} = dec_LOCKU4res(_1, _6),
                {{'OP_LOCKU', _4}, _5};
            15 ->
                {_4, _5} = dec_LOOKUP4res(_1, _6),
                {{'OP_LOOKUP', _4}, _5};
            16 ->
                {_4, _5} = dec_LOOKUPP4res(_1, _6),
                {{'OP_LOOKUPP', _4}, _5};
            17 ->
                {_4, _5} = dec_NVERIFY4res(_1, _6),
                {{'OP_NVERIFY', _4}, _5};
            18 ->
                {_4, _5} = dec_OPEN4res(_1, _6),
                {{'OP_OPEN', _4}, _5};
            19 ->
                {_4, _5} = dec_OPENATTR4res(_1, _6),
                {{'OP_OPENATTR', _4}, _5};
            20 ->
                {_4, _5} = dec_OPEN_CONFIRM4res(_1, _6),
                {{'OP_OPEN_CONFIRM', _4}, _5};
            21 ->
                {_4, _5} = dec_OPEN_DOWNGRADE4res(_1, _6),
                {{'OP_OPEN_DOWNGRADE', _4}, _5};
            22 ->
                {_4, _5} = dec_PUTFH4res(_1, _6),
                {{'OP_PUTFH', _4}, _5};
            23 ->
                {_4, _5} = dec_PUTPUBFH4res(_1, _6),
                {{'OP_PUTPUBFH', _4}, _5};
            24 ->
                {_4, _5} = dec_PUTROOTFH4res(_1, _6),
                {{'OP_PUTROOTFH', _4}, _5};
            25 ->
                {_4, _5} = dec_READ4res(_1, _6),
                {{'OP_READ', _4}, _5};
            26 ->
                {_4, _5} = dec_READDIR4res(_1, _6),
                {{'OP_READDIR', _4}, _5};
            27 ->
                {_4, _5} = dec_READLINK4res(_1, _6),
                {{'OP_READLINK', _4}, _5};
            28 ->
                {_4, _5} = dec_REMOVE4res(_1, _6),
                {{'OP_REMOVE', _4}, _5};
            29 ->
                {_4, _5} = dec_RENAME4res(_1, _6),
                {{'OP_RENAME', _4}, _5};
            30 ->
                {_4, _5} = dec_RENEW4res(_1, _6),
                {{'OP_RENEW', _4}, _5};
            31 ->
                {_4, _5} = dec_RESTOREFH4res(_1, _6),
                {{'OP_RESTOREFH', _4}, _5};
            32 ->
                {_4, _5} = dec_SAVEFH4res(_1, _6),
                {{'OP_SAVEFH', _4}, _5};
            33 ->
                {_4, _5} = dec_SECINFO4res(_1, _6),
                {{'OP_SECINFO', _4}, _5};
            34 ->
                {_4, _5} = dec_SETATTR4res(_1, _6),
                {{'OP_SETATTR', _4}, _5};
            35 ->
                {_4, _5} = dec_SETCLIENTID4res(_1, _6),
                {{'OP_SETCLIENTID', _4}, _5};
            36 ->
                {_4, _5} = dec_SETCLIENTID_CONFIRM4res(_1, _6),
                {{'OP_SETCLIENTID_CONFIRM', _4}, _5};
            37 ->
                {_4, _5} = dec_VERIFY4res(_1, _6),
                {{'OP_VERIFY', _4}, _5};
            38 ->
                {_4, _5} = dec_WRITE4res(_1, _6),
                {{'OP_WRITE', _4}, _5};
            39 ->
                {_4, _5} = dec_RELEASE_LOCKOWNER4res(_1, _6),
                {{'OP_RELEASE_LOCKOWNER', _4}, _5};
            43 ->
                {_4, _5} = dec_CREATE_SESSION4res(_1, _6),
                {{'OP_CREATE_SESSION', _4}, _5};
            44 ->
                {_4, _5} = dec_DESTROY_SESSION4res(_1, _6),
                {{'OP_DESTROY_SESSION', _4}, _5};
            45 ->
                {_4, _5} = dec_FREE_STATEID4res(_1, _6),
                {{'OP_FREE_STATEID', _4}, _5};
            46 ->
                {_4, _5} = dec_GET_DIR_DELEGATION4res(_1, _6),
                {{'OP_GET_DIR_DELEGATION', _4}, _5};
            47 ->
                {_4, _5} = dec_GETDEVICEINFO4res(_1, _6),
                {{'OP_GETDEVICEINFO', _4}, _5};
            48 ->
                {_4, _5} = dec_GETDEVICELIST4res(_1, _6),
                {{'OP_GETDEVICELIST', _4}, _5};
            49 ->
                {_4, _5} = dec_LAYOUTCOMMIT4res(_1, _6),
                {{'OP_LAYOUTCOMMIT', _4}, _5};
            50 ->
                {_4, _5} = dec_LAYOUTGET4res(_1, _6),
                {{'OP_LAYOUTGET', _4}, _5};
            51 ->
                {_4, _5} = dec_LAYOUTRETURN4res(_1, _6),
                {{'OP_LAYOUTRETURN', _4}, _5};
            52 ->
                {_4, _5} = dec_SECINFO_NO_NAME4res(_1, _6),
                {{'OP_SECINFO_NO_NAME', _4}, _5};
            53 ->
                {_4, _5} = dec_SEQUENCE4res(_1, _6),
                {{'OP_SEQUENCE', _4}, _5};
            54 ->
                {_4, _5} = dec_SET_SSV4res(_1, _6),
                {{'OP_SET_SSV', _4}, _5};
            55 ->
                {_4, _5} = dec_TEST_STATEID4res(_1, _6),
                {{'OP_TEST_STATEID', _4}, _5};
            56 ->
                {_4, _5} = dec_WANT_DELEGATION4res(_1, _6),
                {{'OP_WANT_DELEGATION', _4}, _5};
            57 ->
                {_4, _5} = dec_DESTROY_CLIENTID4res(_1, _6),
                {{'OP_DESTROY_CLIENTID', _4}, _5};
            58 ->
                {_4, _5} = dec_RECLAIM_COMPLETE4res(_1, _6),
                {{'OP_RECLAIM_COMPLETE', _4}, _5};
            10044 ->
                {_4, _5} = dec_ILLEGAL4res(_1, _6),
                {{'OP_ILLEGAL', _4}, _5}
        end
    end.

enc_COMPOUND4args(_1) ->
    case _1 of
        {_6, _5, _2} ->
            [enc_utf8str_cs(_6),
             enc_uint32_t(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_nfs_argop4(_3)
                            end,
                            _2)]
             end]
    end.

dec_COMPOUND4args(_1, _2) ->
    begin
        {_3, _4} = dec_utf8str_cs(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {_7, _8} =
            begin
                <<_:_6/binary,_9:32/unsigned,_/binary>> = _1,
                map_elem(fun(_10, _11) ->
                                dec_nfs_argop4(_10, _11)
                         end,
                         _1,
                         _6 + 4,
                         infinity, _9)
            end,
        {{_3, _5, _7}, _8}
    end.

enc_COMPOUND4res(_1) ->
    case _1 of
        {_6, _5, _2} ->
            [enc_nfsstat4(_6),
             enc_utf8str_cs(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_nfs_resop4(_3)
                            end,
                            _2)]
             end]
    end.

dec_COMPOUND4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {_5, _6} = dec_utf8str_cs(_1, _4),
        {_7, _8} =
            begin
                <<_:_6/binary,_9:32/unsigned,_/binary>> = _1,
                map_elem(fun(_10, _11) ->
                                dec_nfs_resop4(_10, _11)
                         end,
                         _1,
                         _6 + 4,
                         infinity, _9)
            end,
        {{_3, _5, _7}, _8}
    end.

enc_CB_GETATTR4args(_1) ->
    case _1 of
        {_3, _2} ->
            [enc_nfs_fh4(_3), enc_bitmap4(_2)]
    end.

dec_CB_GETATTR4args(_1, _2) ->
    begin
        {_3, _4} = dec_nfs_fh4(_1, _2),
        {_5, _6} = dec_bitmap4(_1, _4),
        {{_3, _5}, _6}
    end.

enc_CB_GETATTR4resok(_1) ->
    case _1 of
        {_2} ->
            [enc_fattr4(_2)]
    end.

dec_CB_GETATTR4resok(_1, _2) ->
    begin
        {_3, _4} = dec_fattr4(_1, _2),
        {{_3}, _4}
    end.

enc_CB_GETATTR4res(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfsstat4(_2),
             case _2 of
                 'NFS4_OK' ->
                     enc_CB_GETATTR4resok(_3);
                 _ ->
                     []
             end]
    end.

dec_CB_GETATTR4res(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            0 ->
                {_4, _5} = dec_CB_GETATTR4resok(_1, _6),
                {{'NFS4_OK', _4}, _5};
            _ ->
                {_4, _5} = {void, _6},
                _7 = dec_nfsstat4_i2a(_3),
                {{_7, _4}, _5}
        end
    end.

enc_CB_RECALL4args(_1) ->
    case _1 of
        {_4, _3, _2} ->
            [enc_stateid4(_4),
             if
                 _3 == true ->
                     <<1:32>>;
                 _3 == false ->
                     <<0:32>>
             end,
             enc_nfs_fh4(_2)]
    end.

dec_CB_RECALL4args(_1, _2) ->
    begin
        {_3, _4} = dec_stateid4(_1, _2),
        begin
            begin
                <<_:_4/binary,_7:32/unsigned,_/binary>> = _1,
                _5 =
                    if
                        _7 == 0 ->
                            false;
                        _7 == 1 ->
                            true
                    end
            end,
            _6 = _4 + 4
        end,
        {_8, _9} = dec_nfs_fh4(_1, _6),
        {{_3, _5, _8}, _9}
    end.

enc_CB_RECALL4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_CB_RECALL4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_CB_ILLEGAL4res(_1) ->
    case _1 of
        {_2} ->
            [enc_nfsstat4(_2)]
    end.

dec_CB_ILLEGAL4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {{_3}, _4}
    end.

enc_nfs_cb_opnum4(_1) ->
    case _1 of
        'OP_CB_GETATTR' ->
            <<3:32>>;
        'OP_CB_RECALL' ->
            <<4:32>>;
        'OP_CB_ILLEGAL' ->
            <<10044:32>>
    end.

dec_nfs_cb_opnum4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32,_/binary>> = _1,
        case _3 of
            3 ->
                {'OP_CB_GETATTR', _2 + 4};
            4 ->
                {'OP_CB_RECALL', _2 + 4};
            10044 ->
                {'OP_CB_ILLEGAL', _2 + 4}
        end
    end.

dec_nfs_cb_opnum4_i2a(_4) ->
    case _4 of
        3 ->
            'OP_CB_GETATTR';
        4 ->
            'OP_CB_RECALL';
        10044 ->
            'OP_CB_ILLEGAL'
    end.

enc_nfs_cb_argop4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfs_cb_opnum4(_2),
             case _2 of
                 'OP_CB_GETATTR' ->
                     enc_CB_GETATTR4args(_3);
                 'OP_CB_RECALL' ->
                     enc_CB_RECALL4args(_3);
                 'OP_CB_ILLEGAL' ->
                     []
             end]
    end.

dec_nfs_cb_argop4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            3 ->
                {_4, _5} = dec_CB_GETATTR4args(_1, _6),
                {{'OP_CB_GETATTR', _4}, _5};
            4 ->
                {_4, _5} = dec_CB_RECALL4args(_1, _6),
                {{'OP_CB_RECALL', _4}, _5};
            10044 ->
                {_4, _5} = {void, _6},
                {{'OP_CB_ILLEGAL', _4}, _5}
        end
    end.

enc_nfs_cb_resop4(_1) ->
    case _1 of
        {_2, _3} ->
            [enc_nfs_cb_opnum4(_2),
             case _2 of
                 'OP_CB_GETATTR' ->
                     enc_CB_GETATTR4res(_3);
                 'OP_CB_RECALL' ->
                     enc_CB_RECALL4res(_3);
                 'OP_CB_ILLEGAL' ->
                     enc_CB_ILLEGAL4res(_3)
             end]
    end.

dec_nfs_cb_resop4(_1, _2) ->
    begin
        <<_:_2/binary,_3:32/signed,_/binary>> = _1,
        _6 = _2 + 4,
        case _3 of
            3 ->
                {_4, _5} = dec_CB_GETATTR4res(_1, _6),
                {{'OP_CB_GETATTR', _4}, _5};
            4 ->
                {_4, _5} = dec_CB_RECALL4res(_1, _6),
                {{'OP_CB_RECALL', _4}, _5};
            10044 ->
                {_4, _5} = dec_CB_ILLEGAL4res(_1, _6),
                {{'OP_CB_ILLEGAL', _4}, _5}
        end
    end.

enc_CB_COMPOUND4args(_1) ->
    case _1 of
        {_7, _6, _5, _2} ->
            [enc_utf8str_cs(_7),
             enc_uint32_t(_6),
             enc_uint32_t(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_nfs_cb_argop4(_3)
                            end,
                            _2)]
             end]
    end.

dec_CB_COMPOUND4args(_1, _2) ->
    begin
        {_3, _4} = dec_utf8str_cs(_1, _2),
        {_5, _6} = dec_uint32_t(_1, _4),
        {_7, _8} = dec_uint32_t(_1, _6),
        {_9, _10} =
            begin
                <<_:_8/binary,_11:32/unsigned,_/binary>> = _1,
                map_elem(fun(_12, _13) ->
                                dec_nfs_cb_argop4(_12, _13)
                         end,
                         _1,
                         _8 + 4,
                         infinity, _11)
            end,
        {{_3, _5, _7, _9}, _10}
    end.

enc_CB_COMPOUND4res(_1) ->
    case _1 of
        {_6, _5, _2} ->
            [enc_nfsstat4(_6),
             enc_utf8str_cs(_5),
             begin
                 _4 = length(_2),
                 [<<_4:32/unsigned>>,
                  lists:map(fun(_3) ->
                                   enc_nfs_cb_resop4(_3)
                            end,
                            _2)]
             end]
    end.

dec_CB_COMPOUND4res(_1, _2) ->
    begin
        {_3, _4} = dec_nfsstat4(_1, _2),
        {_5, _6} = dec_utf8str_cs(_1, _4),
        {_7, _8} =
            begin
                <<_:_6/binary,_9:32/unsigned,_/binary>> = _1,
                map_elem(fun(_10, _11) ->
                                dec_nfs_cb_resop4(_10, _11)
                         end,
                         _1,
                         _6 + 4,
                         infinity, _9)
            end,
        {{_3, _5, _7}, _8}
    end.

map_elem(Fun, Bin, Off, infinity, N) ->
  map_elem0(Fun, Bin, Off, N, []);
map_elem(Fun, Bin, Off, Max, N) when N =< Max ->
  map_elem0(Fun, Bin, Off, N, []).

map_elem0(Fun, Bin, Off, 0, L) ->
  {lists:reverse(L,[]), Off};
map_elem0(Fun, Bin, Off, N, L) ->
  {E,Off1} = Fun(Bin, Off),
map_elem0(Fun, Bin, Off1, N-1, [E|L]).

io_list_len(L) -> io_list_len(L, 0).
io_list_len([H|T], N) ->
  if
    H >= 0, H =< 255 -> io_list_len(T, N+1);
    is_list(H) -> io_list_len(T, io_list_len(H,N));
    is_binary(H) -> io_list_len(T, size(H) + N);
    true -> exit({xdr, opaque})
  end;
io_list_len(H, N) when is_binary(H) ->
  size(H) + N;
io_list_len([], N) ->
N.

enc_align(Len) ->
  case Len rem 4 of
    0 -> <<>>;
    1 -> <<0,0,0>>;
    2 -> <<0,0>>;
    3 -> <<0>>
  end.

align(Len) ->
  case Len rem 4 of
    0 -> Len;
    1 -> Len+3;
    2 -> Len+2;
    3 -> Len+1
  end.
