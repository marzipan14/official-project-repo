; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/aof.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/aof.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.redisObject = type { i32, i32, i8* }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.0 = type { i32, i64, i64 }
%struct.redisOpArray = type { %struct.redisOp*, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32, %struct.redisCommand* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.clusterState = type opaque
%struct.lua_State = type opaque
%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }
%struct.aofrwblock = type { i64, i64, [10485760 x i8] }
%struct.rusage = type { %struct.timeval, %struct.timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon.5 }
%union.anon.5 = type { %struct.anon.8 }
%struct.anon.8 = type { i32*, i32*, i32, i64, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.2, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.2 = type { %struct.anon.4 }
%struct.anon.4 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rdbSaveInfo = type { i32, i32, [41 x i8], i64 }
%struct.quicklistEntry = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i8*, i64, i32, i32 }
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.quicklistIter = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.intset = type { i32, i32, [0 x i8] }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.hashTypeIterator = type { %struct.redisObject*, i32, i8*, i8*, %struct.dictIterator*, %struct.dictEntry* }
%struct.streamID = type { i64, i64 }
%struct.streamConsumer = type { i64, i8*, %struct.rax* }
%struct.streamNACK = type { i64, i64, %struct.streamConsumer* }
%struct.streamIterator = type { %struct.stream*, %struct.streamID, i64, i8*, i8*, i32, i32, [2 x i64], [2 x i64], %struct.raxIterator, i8*, i8*, i8*, [21 x i8], [21 x i8] }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.rax* }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.streamCG = type { %struct.streamID, %struct.rax*, %struct.rax* }
%struct.RedisModuleIO = type { i64, %struct._rio*, %struct.RedisModuleType*, i32, i32, %struct.RedisModuleCtx*, %struct.redisObject* }
%struct.RedisModuleType = type { i64, %struct.RedisModule*, i8* (%struct.RedisModuleIO*, i32)*, void (%struct.RedisModuleIO*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, i64 (i8*)*, void (%struct.RedisModuleDigest*, i8*)*, void (i8*)*, i32 (%struct.RedisModuleIO*, i32, i32)*, void (%struct.RedisModuleIO*, i32)*, i32, [10 x i8] }
%struct.RedisModule = type opaque
%struct.RedisModuleDigest = type { [20 x i8], [20 x i8] }
%struct.RedisModuleCtx = type opaque
%struct.moduleValue = type { %struct.RedisModuleType*, i8* }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [35 x i8] c"Background AOF buffer size: %lu MB\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"server.aof_state != AOF_OFF\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/aof.c\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"server.aof_state == AOF_OFF\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"Redis needs to enable the AOF but can't open the append only file %s (in server root dir %s): %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [137 x i8] c"AOF was enabled but there is already a child process saving an RDB file on disk. An AOF background was scheduled to start when possible.\00", align 1
@.str.7 = private unnamed_addr constant [121 x i8] c"AOF was enabled but there is already an AOF rewriting in background. Stopping background AOF and starting a rewrite now.\00", align 1
@.str.8 = private unnamed_addr constant [136 x i8] c"Redis needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.\00", align 1
@.str.9 = private unnamed_addr constant [147 x i8] c"Asynchronous AOF fsync is taking too long (disk is busy?). Writing the AOF buffer without waiting for fsync to complete, this may slow down Redis.\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"aof-write\00", align 1
@flushAppendOnlyFile.last_write_error_log = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.14 = private unnamed_addr constant [34 x i8] c"Error writing to the AOF file: %s\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"Short write while writing to the AOF file: (nwritten=%lld, expected=%lld)\00", align 1
@.str.16 = private unnamed_addr constant [130 x i8] c"Could not remove short write from the append-only file.  Redis may refuse to load the AOF the next time it starts.  ftruncate: %s\00", align 1
@.str.17 = private unnamed_addr constant [85 x i8] c"Can't recover from AOF write error when the AOF fsync policy is 'always'. Exiting...\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"AOF write error looks solved, Redis can write again.\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"PEXPIREAT\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%lu\0D\0A%s\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"!(exarg && pxarg)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Fatal error: can't open the append log file for reading: %s\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Reading RDB preamble from AOF file...\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"Error reading the RDB preamble of the AOF file, AOF loading aborted\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Reading the remaining AOF tail...\00", align 1
@SDS_NOINIT = external dso_local local_unnamed_addr global i8*, align 8
@.str.34 = private unnamed_addr constant [50 x i8] c"Unknown command '%s' reading the append only file\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"fakeClient->bufpos == 0 && listLength(fakeClient->reply) == 0\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"(fakeClient->flags & CLIENT_BLOCKED) == 0\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"Revert incomplete MULTI/EXEC transaction in AOF file\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"Unrecoverable error reading the append only file: %s\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"!!! Warning: short read while loading the AOF file !!!\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"!!! Truncating the AOF at offset %llu !!!\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Last valid command offset is invalid\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Error truncating the AOF file: %s\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"Can't seek the end of the AOF file: %s\00", align 1
@.str.44 = private unnamed_addr constant [56 x i8] c"AOF loaded anyway because aof-load-truncated is enabled\00", align 1
@.str.45 = private unnamed_addr constant [248 x i8] c"Unexpected end of file reading the append only file. You can: 1) Make a backup of your AOF file, then use ./redis-check-aof --fix <filename>. 2) Alternatively you can set the 'aof-load-truncated' configuration option to yes and restart the server.\00", align 1
@.str.46 = private unnamed_addr constant [122 x i8] c"Bad file format reading the append only file: make a backup of your AOF file, then use ./redis-check-aof --fix <filename>\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"Unknown string encoding\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"RPUSH\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"SADD\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"eptr != NULL\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"sptr != NULL\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"ziplistGet(eptr,&vstr,&vlen,&vll)\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"ZADD\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Unknown sorted zset encoding\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"HMSET\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"%U-%U\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"XCLAIM\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"RETRYCOUNT\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"JUSTID\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"XADD\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"MAXLEN\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"XSETID\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"XGROUP\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@rewriteAppendOnlyFileRio.selectcmd = private unnamed_addr constant [17 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A\00", align 16
@rewriteAppendOnlyFileRio.cmd = private unnamed_addr constant [14 x i8] c"*3\0D\0A$3\0D\0ASET\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@rewriteAppendOnlyFileRio.cmd.74 = private unnamed_addr constant [20 x i8] c"*3\0D\0A$9\0D\0APEXPIREAT\0D\0A\00", align 16
@.str.75 = private unnamed_addr constant [23 x i8] c"temp-rewriteaof-%d.aof\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.77 = private unnamed_addr constant [69 x i8] c"Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"Parent agreed to stop sending diffs. Finalizing AOF...\00", align 1
@.str.80 = private unnamed_addr constant [56 x i8] c"Concatenating %.2f MB of AOF diff received from parent.\00", align 1
@.str.81 = private unnamed_addr constant [64 x i8] c"Error moving temp append only file on the final destination: %s\00", align 1
@.str.82 = private unnamed_addr constant [40 x i8] c"SYNC append only file rewrite performed\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"Write error writing append only file on disk: %s\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"AOF rewrite child asks to stop sending diffs.\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"Can't send ACK to AOF child: %s\00", align 1
@aofCreatePipes.fds = private unnamed_addr constant [6 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.86 = private unnamed_addr constant [49 x i8] c"Error opening /setting AOF rewrite IPC pipes: %s\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"redis-aof-rewrite\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"temp-rewriteaof-bg-%d.aof\00", align 1
@.str.89 = private unnamed_addr constant [52 x i8] c"AOF rewrite: %zu MB of memory used by copy-on-write\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.91 = private unnamed_addr constant [55 x i8] c"Can't rewrite append only file in background: fork: %s\00", align 1
@.str.92 = private unnamed_addr constant [56 x i8] c"Background append only file rewriting started by pid %d\00", align 1
@.str.93 = private unnamed_addr constant [58 x i8] c"Background append only file rewriting already in progress\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"Background append only file rewriting scheduled\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"Background append only file rewriting started\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.96 = private unnamed_addr constant [47 x i8] c"Unable to obtain the AOF file length. stat: %s\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1
@.str.98 = private unnamed_addr constant [47 x i8] c"Background AOF rewrite terminated with success\00", align 1
@.str.99 = private unnamed_addr constant [59 x i8] c"Unable to open the temporary AOF produced by the child: %s\00", align 1
@.str.100 = private unnamed_addr constant [63 x i8] c"Error trying to flush the parent diff to the rewritten AOF: %s\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.102 = private unnamed_addr constant [73 x i8] c"Residual parent diff successfully flushed to the rewritten AOF (%.2f MB)\00", align 1
@.str.103 = private unnamed_addr constant [61 x i8] c"Error trying to rename the temporary AOF file %s into %s: %s\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@.str.105 = private unnamed_addr constant [45 x i8] c"Background AOF rewrite finished successfully\00", align 1
@.str.106 = private unnamed_addr constant [50 x i8] c"Background AOF rewrite signal handler took %lldus\00", align 1
@.str.107 = private unnamed_addr constant [45 x i8] c"Background AOF rewrite terminated with error\00", align 1
@.str.108 = private unnamed_addr constant [47 x i8] c"Background AOF rewrite terminated by signal %d\00", align 1
@.str.109 = private unnamed_addr constant [39 x i8] c"Killing running AOF rewrite child: %ld\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @aofRewriteBufferReset() local_unnamed_addr #0 !dbg !85 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !88, !tbaa !90
  %2 = icmp eq %struct.list* %1, null, !dbg !102
  br i1 %2, label %4, label %3, !dbg !103

; <label>:3:                                      ; preds = %0
  tail call void @listRelease(%struct.list* nonnull %1) #6, !dbg !104
  br label %4, !dbg !104

; <label>:4:                                      ; preds = %0, %3
  %5 = tail call %struct.list* @listCreate() #6, !dbg !105
  store %struct.list* %5, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !106, !tbaa !90
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 3, !dbg !107
  store void (i8*)* @zfree, void (i8*)** %6, align 8, !dbg !107, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  ret void, !dbg !110
}

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) #1

; Function Attrs: noredzone nounwind
define dso_local i64 @aofRewriteBufferSize() local_unnamed_addr #0 !dbg !111 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !144
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !146, !tbaa !90
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #6, !dbg !148
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !149
  %5 = icmp eq %struct.listNode* %4, null, !dbg !151
  br i1 %5, label %17, label %6, !dbg !151

; <label>:6:                                      ; preds = %0, %6
  %7 = phi %struct.listNode* [ %15, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !152
  %10 = bitcast i8** %9 to %struct.aofrwblock**, !dbg !152
  %11 = load %struct.aofrwblock*, %struct.aofrwblock** %10, align 8, !dbg !152, !tbaa !153
  %12 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %11, i64 0, i32 0, !dbg !156
  %13 = load i64, i64* %12, align 8, !dbg !156, !tbaa !157
  %14 = add i64 %13, %8, !dbg !159
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !149
  %16 = icmp eq %struct.listNode* %15, null, !dbg !151
  br i1 %16, label %17, label %6, !dbg !151, !llvm.loop !160

; <label>:17:                                     ; preds = %6, %0
  %18 = phi i64 [ 0, %0 ], [ %14, %6 ], !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  ret i64 %18, !dbg !164
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @aofChildWriteDiffData(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !165 {
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !240, !tbaa !90
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 0, !dbg !240
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !240, !tbaa !242
  %8 = icmp eq %struct.listNode* %7, null, !dbg !244
  br i1 %8, label %19, label %9, !dbg !244

; <label>:9:                                      ; preds = %4, %46
  %10 = phi %struct.list* [ %47, %46 ], [ %5, %4 ]
  %11 = phi %struct.listNode* [ %49, %46 ], [ %7, %4 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !245
  %13 = bitcast i8** %12 to %struct.aofrwblock**, !dbg !245
  %14 = load %struct.aofrwblock*, %struct.aofrwblock** %13, align 8, !dbg !245, !tbaa !153
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !247, !tbaa !249
  %16 = icmp eq i32 %15, 0, !dbg !250
  %17 = icmp ne %struct.aofrwblock* %14, null, !dbg !251
  %18 = and i1 %17, %16, !dbg !252
  br i1 %18, label %22, label %19, !dbg !252

; <label>:19:                                     ; preds = %9, %46, %4
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !253, !tbaa !255
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !256, !tbaa !257
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %20, i32 %21, i32 2) #6, !dbg !258
  br label %51, !dbg !259

; <label>:22:                                     ; preds = %9
  %23 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %14, i64 0, i32 0, !dbg !260
  %24 = load i64, i64* %23, align 8, !dbg !260, !tbaa !157
  %25 = icmp eq i64 %24, 0, !dbg !262
  br i1 %25, label %44, label %26, !dbg !263

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !264, !tbaa !257
  %28 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %14, i64 0, i32 2, i64 0, !dbg !266
  %29 = tail call i64 @write(i32 %27, i8* nonnull %28, i64 %24) #6, !dbg !267
  %30 = icmp slt i64 %29, 1, !dbg !269
  br i1 %30, label %51, label %31, !dbg !271

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %14, i64 0, i32 2, i64 %29, !dbg !272
  %33 = load i64, i64* %23, align 8, !dbg !273, !tbaa !157
  %34 = sub i64 %33, %29, !dbg !274
  %35 = tail call i8* @memmove(i8* nonnull %28, i8* nonnull %32, i64 %34) #6, !dbg !275
  %36 = load i64, i64* %23, align 8, !dbg !276, !tbaa !157
  %37 = sub i64 %36, %29, !dbg !276
  store i64 %37, i64* %23, align 8, !dbg !276, !tbaa !157
  %38 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %14, i64 0, i32 1, !dbg !277
  %39 = load i64, i64* %38, align 8, !dbg !278, !tbaa !279
  %40 = add i64 %39, %29, !dbg !278
  store i64 %40, i64* %38, align 8, !dbg !278, !tbaa !279
  %41 = icmp eq i64 %37, 0, !dbg !280
  br i1 %41, label %42, label %46, !dbg !282

; <label>:42:                                     ; preds = %31
  %43 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !283, !tbaa !90
  br label %44, !dbg !282

; <label>:44:                                     ; preds = %42, %22
  %45 = phi %struct.list* [ %43, %42 ], [ %10, %22 ], !dbg !283
  tail call void @listDelNode(%struct.list* %45, %struct.listNode* nonnull %11) #6, !dbg !284
  br label %46, !dbg !284

; <label>:46:                                     ; preds = %44, %31
  %47 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !240, !tbaa !90
  %48 = getelementptr inbounds %struct.list, %struct.list* %47, i64 0, i32 0, !dbg !240
  %49 = load %struct.listNode*, %struct.listNode** %48, align 8, !dbg !240, !tbaa !242
  %50 = icmp eq %struct.listNode* %49, null, !dbg !244
  br i1 %50, label %19, label %9, !dbg !244, !llvm.loop !285

; <label>:51:                                     ; preds = %26, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  ret void, !dbg !288
}

; Function Attrs: noredzone
declare dso_local void @aeDeleteFileEvent(%struct.aeEventLoop*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofRewriteBufferAppend(i8*, i64) local_unnamed_addr #0 !dbg !289 {
  %3 = alloca %struct.listIter, align 8
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !309, !tbaa !90
  %5 = getelementptr inbounds %struct.list, %struct.list* %4, i64 0, i32 1, !dbg !309
  %6 = load %struct.listNode*, %struct.listNode** %5, align 8, !dbg !309, !tbaa !310
  %7 = icmp eq %struct.listNode* %6, null, !dbg !312
  br i1 %7, label %12, label %8, !dbg !312

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %6, i64 0, i32 2, !dbg !313
  %10 = bitcast i8** %9 to %struct.aofrwblock**, !dbg !313
  %11 = load %struct.aofrwblock*, %struct.aofrwblock** %10, align 8, !dbg !313, !tbaa !153
  br label %12, !dbg !312

; <label>:12:                                     ; preds = %2, %8
  %13 = phi %struct.aofrwblock* [ %11, %8 ], [ null, %2 ], !dbg !312
  %14 = icmp eq i64 %1, 0, !dbg !315
  br i1 %14, label %77, label %15, !dbg !315

; <label>:15:                                     ; preds = %12
  %16 = bitcast %struct.listIter* %3 to i8*
  br label %17, !dbg !315

; <label>:17:                                     ; preds = %15, %75
  %18 = phi i8* [ %0, %15 ], [ %41, %75 ]
  %19 = phi i64 [ %1, %15 ], [ %42, %75 ]
  %20 = phi %struct.aofrwblock* [ %13, %15 ], [ %44, %75 ]
  %21 = icmp eq %struct.aofrwblock* %20, null, !dbg !316
  br i1 %21, label %40, label %22, !dbg !317

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 1, !dbg !318
  %24 = load i64, i64* %23, align 8, !dbg !318, !tbaa !279
  %25 = icmp ult i64 %24, %19, !dbg !319
  %26 = select i1 %25, i64 %24, i64 %19, !dbg !320
  %27 = icmp eq i64 %26, 0, !dbg !322
  br i1 %27, label %40, label %28, !dbg !324

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 0, !dbg !325
  %30 = load i64, i64* %29, align 8, !dbg !325, !tbaa !157
  %31 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 2, i64 %30, !dbg !327
  %32 = call i8* @memcpy(i8* nonnull %31, i8* %18, i64 %26) #6, !dbg !328
  %33 = load i64, i64* %29, align 8, !dbg !329, !tbaa !157
  %34 = add i64 %33, %26, !dbg !329
  store i64 %34, i64* %29, align 8, !dbg !329, !tbaa !157
  %35 = load i64, i64* %23, align 8, !dbg !330, !tbaa !279
  %36 = sub i64 %35, %26, !dbg !330
  store i64 %36, i64* %23, align 8, !dbg !330, !tbaa !279
  %37 = getelementptr inbounds i8, i8* %18, i64 %26, !dbg !331
  %38 = sub i64 %19, %26, !dbg !332
  %39 = icmp eq i64 %38, 0, !dbg !333
  br i1 %39, label %77, label %40, !dbg !334

; <label>:40:                                     ; preds = %22, %17, %28
  %41 = phi i8* [ %37, %28 ], [ %18, %17 ], [ %18, %22 ]
  %42 = phi i64 [ %38, %28 ], [ %19, %17 ], [ %19, %22 ]
  %43 = call i8* @zmalloc(i64 10485776) #6, !dbg !335
  %44 = bitcast i8* %43 to %struct.aofrwblock*, !dbg !335
  %45 = bitcast i8* %43 to <2 x i64>*, !dbg !336
  store <2 x i64> <i64 0, i64 10485760>, <2 x i64>* %45, align 8, !dbg !336, !tbaa !337
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !338, !tbaa !90
  %47 = call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %43) #6, !dbg !339
  %48 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !340, !tbaa !90
  %49 = getelementptr inbounds %struct.list, %struct.list* %48, i64 0, i32 5, !dbg !340
  %50 = load i64, i64* %49, align 8, !dbg !340, !tbaa !341
  %51 = trunc i64 %50 to i32, !dbg !340
  %52 = add nsw i32 %51, 1, !dbg !343
  %53 = srem i32 %52, 10, !dbg !344
  %54 = icmp eq i32 %53, 0, !dbg !345
  br i1 %54, label %55, label %75, !dbg !346

; <label>:55:                                     ; preds = %40
  %56 = srem i32 %52, 100, !dbg !347
  %57 = icmp eq i32 %56, 0, !dbg !348
  %58 = select i1 %57, i32 3, i32 2, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !351
  call void @listRewind(%struct.list* %48, %struct.listIter* nonnull %3) #6, !dbg !355
  %59 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !356
  %60 = icmp eq %struct.listNode* %59, null, !dbg !358
  br i1 %60, label %72, label %61, !dbg !358

; <label>:61:                                     ; preds = %55, %61
  %62 = phi %struct.listNode* [ %70, %61 ], [ %59, %55 ]
  %63 = phi i64 [ %69, %61 ], [ 0, %55 ]
  %64 = getelementptr inbounds %struct.listNode, %struct.listNode* %62, i64 0, i32 2, !dbg !359
  %65 = bitcast i8** %64 to %struct.aofrwblock**, !dbg !359
  %66 = load %struct.aofrwblock*, %struct.aofrwblock** %65, align 8, !dbg !359, !tbaa !153
  %67 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %66, i64 0, i32 0, !dbg !361
  %68 = load i64, i64* %67, align 8, !dbg !361, !tbaa !157
  %69 = add i64 %68, %63, !dbg !362
  %70 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !356
  %71 = icmp eq %struct.listNode* %70, null, !dbg !358
  br i1 %71, label %72, label %61, !dbg !358, !llvm.loop !160

; <label>:72:                                     ; preds = %61, %55
  %73 = phi i64 [ 0, %55 ], [ %69, %61 ], !dbg !363
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %74 = lshr i64 %73, 20, !dbg !366
  call void (i32, i8*, ...) @serverLog(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %74) #6, !dbg !367
  br label %75, !dbg !368

; <label>:75:                                     ; preds = %40, %72
  %76 = icmp eq i64 %42, 0, !dbg !315
  br i1 %76, label %77, label %17, !dbg !315, !llvm.loop !369

; <label>:77:                                     ; preds = %28, %75, %12
  %78 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !371, !tbaa !255
  %79 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !373, !tbaa !257
  %80 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %78, i32 %79) #6, !dbg !374
  %81 = icmp eq i32 %80, 0, !dbg !375
  br i1 %81, label %82, label %86, !dbg !376

; <label>:82:                                     ; preds = %77
  %83 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !377, !tbaa !255
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !379, !tbaa !257
  %85 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %83, i32 %84, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildWriteDiffData, i8* null) #6, !dbg !380
  br label %86, !dbg !381

; <label>:86:                                     ; preds = %82, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  ret void, !dbg !382
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @aeGetFileEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop*, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @aofRewriteBufferWrite(i32) local_unnamed_addr #0 !dbg !383 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !395
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !395
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !397, !tbaa !90
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #6, !dbg !399
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !400
  %6 = icmp eq %struct.listNode* %5, null, !dbg !402
  br i1 %6, label %31, label %7, !dbg !402

; <label>:7:                                      ; preds = %1, %27
  %8 = phi %struct.listNode* [ %29, %27 ], [ %5, %1 ]
  %9 = phi i64 [ %28, %27 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !403
  %11 = bitcast i8** %10 to %struct.aofrwblock**, !dbg !403
  %12 = load %struct.aofrwblock*, %struct.aofrwblock** %11, align 8, !dbg !403, !tbaa !153
  %13 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 0, !dbg !405
  %14 = load i64, i64* %13, align 8, !dbg !405, !tbaa !157
  %15 = icmp eq i64 %14, 0, !dbg !407
  br i1 %15, label %27, label %16, !dbg !408

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 2, i64 0, !dbg !409
  %18 = call i64 @write(i32 %0, i8* nonnull %17, i64 %14) #6, !dbg !411
  %19 = load i64, i64* %13, align 8, !dbg !413, !tbaa !157
  %20 = icmp eq i64 %18, %19, !dbg !415
  br i1 %20, label %25, label %21, !dbg !416

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i64 %18, 0, !dbg !417
  br i1 %22, label %23, label %31, !dbg !420

; <label>:23:                                     ; preds = %21
  %24 = call i32* @__errno() #6, !dbg !421
  store i32 5, i32* %24, align 4, !dbg !422, !tbaa !423
  br label %31, !dbg !421

; <label>:25:                                     ; preds = %16
  %26 = add nsw i64 %18, %9, !dbg !424
  br label %27, !dbg !425

; <label>:27:                                     ; preds = %25, %7
  %28 = phi i64 [ %26, %25 ], [ %9, %7 ], !dbg !426
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !400
  %30 = icmp eq %struct.listNode* %29, null, !dbg !402
  br i1 %30, label %31, label %7, !dbg !402

; <label>:31:                                     ; preds = %27, %1, %21, %23
  %32 = phi i64 [ -1, %23 ], [ -1, %21 ], [ 0, %1 ], [ %28, %27 ], !dbg !427
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  ret i64 %32, !dbg !428
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @aofFsyncInProgress() local_unnamed_addr #0 !dbg !429 {
  %1 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !432
  %2 = icmp ne i64 %1, 0, !dbg !433
  %3 = zext i1 %2 to i32, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  ret i32 %3, !dbg !434
}

; Function Attrs: noredzone
declare dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aof_background_fsync(i32) local_unnamed_addr #0 !dbg !435 {
  %2 = sext i32 %0 to i64, !dbg !439
  %3 = inttoptr i64 %2 to i8*, !dbg !440
  tail call void @bioCreateBackgroundJob(i32 1, i8* %3, i8* null, i8* null) #6, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret void, !dbg !442
}

; Function Attrs: noredzone
declare dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @stopAppendOnly() local_unnamed_addr #0 !dbg !443 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !444, !tbaa !445
  %2 = icmp eq i32 %1, 0, !dbg !444
  br i1 %2, label %3, label %4, !dbg !444

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 235) #6, !dbg !444
  tail call void @_exit(i32 1) #8, !dbg !444
  unreachable, !dbg !444

; <label>:4:                                      ; preds = %0
  tail call void @flushAppendOnlyFile(i32 1) #9, !dbg !446
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !447, !tbaa !448
  %6 = tail call i32 @fsync(i32 %5) #6, !dbg !449
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !450, !tbaa !448
  %8 = tail call i32 @close(i32 %7) #6, !dbg !451
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !452, !tbaa !448
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !453, !tbaa !454
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !455, !tbaa !445
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret void, !dbg !457
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @flushAppendOnlyFile(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !460, !tbaa !462
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !475
  %4 = load i8, i8* %3, align 1, !dbg !475, !tbaa !476
  %5 = trunc i8 %4 to i3, !dbg !478
  switch i3 %5, label %6 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !478

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !480, !tbaa !482
  %8 = icmp eq i32 %7, 2, !dbg !480
  br i1 %8, label %36, label %363, !dbg !483

; <label>:9:                                      ; preds = %1
  %10 = lshr i8 %4, 3, !dbg !486
  %11 = zext i8 %10 to i64, !dbg !486
  br label %30, !dbg !488

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !489
  %14 = load i8, i8* %13, align 1, !dbg !490, !tbaa !476
  %15 = zext i8 %14 to i64, !dbg !489
  br label %30, !dbg !491

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !492
  %18 = bitcast i8* %17 to i16*, !dbg !493
  %19 = load i16, i16* %18, align 1, !dbg !493, !tbaa !494
  %20 = zext i16 %19 to i64, !dbg !492
  br label %30, !dbg !496

; <label>:21:                                     ; preds = %1
  %22 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !497
  %23 = bitcast i8* %22 to i32*, !dbg !498
  %24 = load i32, i32* %23, align 1, !dbg !498, !tbaa !423
  %25 = zext i32 %24 to i64, !dbg !497
  br label %30, !dbg !499

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !500
  %28 = bitcast i8* %27 to i64*, !dbg !501
  %29 = load i64, i64* %28, align 1, !dbg !501, !tbaa !337
  br label %30, !dbg !502

; <label>:30:                                     ; preds = %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %32 = icmp eq i64 %31, 0, !dbg !504
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !480, !tbaa !482
  %34 = icmp eq i32 %33, 2, !dbg !480
  br i1 %32, label %35, label %47, !dbg !505

; <label>:35:                                     ; preds = %30
  br i1 %34, label %36, label %363, !dbg !483

; <label>:36:                                     ; preds = %6, %35
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !506, !tbaa !507
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !508, !tbaa !509
  %39 = icmp eq i64 %37, %38, !dbg !510
  br i1 %39, label %363, label %40, !dbg !511

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !512, !tbaa !513
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !514, !tbaa !515
  %43 = icmp sgt i64 %41, %42, !dbg !516
  br i1 %43, label %44, label %363, !dbg !517

; <label>:44:                                     ; preds = %40
  %45 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !518
  %46 = icmp eq i64 %45, 0, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %46, label %316, label %363, !dbg !522

; <label>:47:                                     ; preds = %30
  br i1 %34, label %48, label %68, !dbg !523

; <label>:48:                                     ; preds = %47
  %49 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !524
  %50 = icmp ne i64 %49, 0, !dbg !526
  %51 = zext i1 %50 to i32, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !528, !tbaa !482
  %53 = icmp eq i32 %52, 2, !dbg !530
  %54 = icmp eq i32 %0, 0, !dbg !531
  %55 = and i1 %54, %53, !dbg !532
  %56 = and i1 %50, %55, !dbg !532
  br i1 %56, label %57, label %68, !dbg !532

; <label>:57:                                     ; preds = %48
  %58 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !533, !tbaa !538
  %59 = icmp eq i64 %58, 0, !dbg !539
  %60 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !540, !tbaa !513
  br i1 %59, label %61, label %62, !dbg !542

; <label>:61:                                     ; preds = %57
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !543, !tbaa !538
  br label %363, !dbg !545

; <label>:62:                                     ; preds = %57
  %63 = sub nsw i64 %60, %58, !dbg !546
  %64 = icmp slt i64 %63, 2, !dbg !547
  br i1 %64, label %363, label %65, !dbg !548

; <label>:65:                                     ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !549, !tbaa !550
  %67 = add i64 %66, 1, !dbg !549
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !549, !tbaa !550
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !551
  br label %68, !dbg !552

; <label>:68:                                     ; preds = %47, %48, %65
  %69 = phi i1 [ %50, %48 ], [ true, %65 ], [ false, %47 ]
  %70 = phi i32 [ %51, %48 ], [ 1, %65 ], [ 0, %47 ]
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !553, !tbaa !555
  %72 = icmp eq i64 %71, 0, !dbg !553
  br i1 %72, label %75, label %73, !dbg !556

; <label>:73:                                     ; preds = %68
  %74 = tail call i64 @mstime() #6, !dbg !557
  br label %75, !dbg !557

; <label>:75:                                     ; preds = %68, %73
  %76 = phi i64 [ %74, %73 ], [ 0, %68 ], !dbg !557
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !560, !tbaa !448
  %78 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !561, !tbaa !462
  %79 = getelementptr inbounds i8, i8* %78, i64 -1, !dbg !564
  %80 = load i8, i8* %79, align 1, !dbg !564, !tbaa !476
  %81 = trunc i8 %80 to i3, !dbg !566
  switch i3 %81, label %103 [
    i3 0, label %82
    i3 1, label %85
    i3 2, label %89
    i3 3, label %94
    i3 -4, label %99
  ], !dbg !566

; <label>:82:                                     ; preds = %75
  %83 = lshr i8 %80, 3, !dbg !567
  %84 = zext i8 %83 to i64, !dbg !567
  br label %103, !dbg !568

; <label>:85:                                     ; preds = %75
  %86 = getelementptr inbounds i8, i8* %78, i64 -3, !dbg !569
  %87 = load i8, i8* %86, align 1, !dbg !570, !tbaa !476
  %88 = zext i8 %87 to i64, !dbg !569
  br label %103, !dbg !571

; <label>:89:                                     ; preds = %75
  %90 = getelementptr inbounds i8, i8* %78, i64 -5, !dbg !572
  %91 = bitcast i8* %90 to i16*, !dbg !573
  %92 = load i16, i16* %91, align 1, !dbg !573, !tbaa !494
  %93 = zext i16 %92 to i64, !dbg !572
  br label %103, !dbg !574

; <label>:94:                                     ; preds = %75
  %95 = getelementptr inbounds i8, i8* %78, i64 -9, !dbg !575
  %96 = bitcast i8* %95 to i32*, !dbg !576
  %97 = load i32, i32* %96, align 1, !dbg !576, !tbaa !423
  %98 = zext i32 %97 to i64, !dbg !575
  br label %103, !dbg !577

; <label>:99:                                     ; preds = %75
  %100 = getelementptr inbounds i8, i8* %78, i64 -17, !dbg !578
  %101 = bitcast i8* %100 to i64*, !dbg !579
  %102 = load i64, i64* %101, align 1, !dbg !579, !tbaa !337
  br label %103, !dbg !580

; <label>:103:                                    ; preds = %75, %82, %85, %89, %94, %99
  %104 = phi i64 [ %102, %99 ], [ %98, %94 ], [ %93, %89 ], [ %88, %85 ], [ %84, %82 ], [ 0, %75 ], !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br label %105, !dbg !603

; <label>:105:                                    ; preds = %121, %103
  %106 = phi i8* [ %123, %121 ], [ %78, %103 ]
  %107 = phi i64 [ %122, %121 ], [ %104, %103 ]
  %108 = phi i64 [ %124, %121 ], [ 0, %103 ]
  %109 = icmp eq i64 %107, 0
  br label %110, !dbg !603

; <label>:110:                                    ; preds = %114, %105
  br i1 %109, label %125, label %111, !dbg !603

; <label>:111:                                    ; preds = %110
  %112 = tail call i64 @write(i32 %77, i8* %106, i64 %107) #6, !dbg !604
  %113 = icmp slt i64 %112, 0, !dbg !606
  br i1 %113, label %114, label %121, !dbg !608

; <label>:114:                                    ; preds = %111
  %115 = tail call i32* @__errno() #6, !dbg !609
  %116 = load i32, i32* %115, align 4, !dbg !609, !tbaa !423
  %117 = icmp eq i32 %116, 4, !dbg !612
  br i1 %117, label %110, label %118, !dbg !613, !llvm.loop !614

; <label>:118:                                    ; preds = %114
  %119 = icmp eq i64 %108, 0, !dbg !617
  %120 = select i1 %119, i64 -1, i64 %108, !dbg !617
  br label %125, !dbg !618

; <label>:121:                                    ; preds = %111
  %122 = sub i64 %107, %112, !dbg !619
  %123 = getelementptr inbounds i8, i8* %106, i64 %112, !dbg !620
  %124 = add nsw i64 %112, %108, !dbg !621
  br label %105, !dbg !603, !llvm.loop !614

; <label>:125:                                    ; preds = %110, %118
  %126 = phi i64 [ %120, %118 ], [ %108, %110 ], !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !625, !tbaa !555
  %128 = icmp eq i64 %127, 0, !dbg !625
  br i1 %128, label %132, label %129, !dbg !627

; <label>:129:                                    ; preds = %125
  %130 = tail call i64 @mstime() #6, !dbg !628
  %131 = sub nsw i64 %130, %76, !dbg !628
  br label %132, !dbg !628

; <label>:132:                                    ; preds = %125, %129
  %133 = phi i64 [ %131, %129 ], [ %76, %125 ], !dbg !630
  br i1 %69, label %134, label %140, !dbg !631

; <label>:134:                                    ; preds = %132
  %135 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !632, !tbaa !555
  %136 = icmp eq i64 %135, 0, !dbg !632
  %137 = icmp slt i64 %133, %135, !dbg !632
  %138 = or i1 %136, %137, !dbg !632
  br i1 %138, label %153, label %139, !dbg !632

; <label>:139:                                    ; preds = %134
  tail call void @latencyAddSample(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %133) #6, !dbg !632
  br label %153, !dbg !632

; <label>:140:                                    ; preds = %132
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !636, !tbaa !638
  %142 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !639
  %143 = and i32 %142, %141, !dbg !640
  %144 = icmp eq i32 %143, -1, !dbg !640
  %145 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !641, !tbaa !555
  %146 = icmp eq i64 %145, 0, !dbg !641
  %147 = icmp slt i64 %133, %145, !dbg !644
  %148 = or i1 %146, %147, !dbg !644
  br i1 %144, label %151, label %149, !dbg !640

; <label>:149:                                    ; preds = %140
  br i1 %148, label %153, label %150, !dbg !647

; <label>:150:                                    ; preds = %149
  tail call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %133) #6, !dbg !647
  br label %153, !dbg !647

; <label>:151:                                    ; preds = %140
  br i1 %148, label %153, label %152, !dbg !648

; <label>:152:                                    ; preds = %151
  tail call void @latencyAddSample(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64 %133) #6, !dbg !648
  br label %153, !dbg !648

; <label>:153:                                    ; preds = %151, %149, %134, %150, %152, %139
  %154 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !649, !tbaa !555
  %155 = icmp eq i64 %154, 0, !dbg !649
  %156 = icmp slt i64 %133, %154, !dbg !649
  %157 = or i1 %155, %156, !dbg !649
  br i1 %157, label %159, label %158, !dbg !649

; <label>:158:                                    ; preds = %153
  tail call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %133) #6, !dbg !649
  br label %159, !dbg !649

; <label>:159:                                    ; preds = %153, %158
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !651, !tbaa !538
  %160 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !652, !tbaa !462
  %161 = getelementptr inbounds i8, i8* %160, i64 -1, !dbg !655
  %162 = load i8, i8* %161, align 1, !dbg !655, !tbaa !476
  %163 = trunc i8 %162 to i3, !dbg !657
  switch i3 %163, label %185 [
    i3 0, label %164
    i3 1, label %167
    i3 2, label %171
    i3 3, label %176
    i3 -4, label %181
  ], !dbg !657

; <label>:164:                                    ; preds = %159
  %165 = lshr i8 %162, 3, !dbg !658
  %166 = zext i8 %165 to i64, !dbg !658
  br label %185, !dbg !659

; <label>:167:                                    ; preds = %159
  %168 = getelementptr inbounds i8, i8* %160, i64 -3, !dbg !660
  %169 = load i8, i8* %168, align 1, !dbg !661, !tbaa !476
  %170 = zext i8 %169 to i64, !dbg !660
  br label %185, !dbg !662

; <label>:171:                                    ; preds = %159
  %172 = getelementptr inbounds i8, i8* %160, i64 -5, !dbg !663
  %173 = bitcast i8* %172 to i16*, !dbg !664
  %174 = load i16, i16* %173, align 1, !dbg !664, !tbaa !494
  %175 = zext i16 %174 to i64, !dbg !663
  br label %185, !dbg !665

; <label>:176:                                    ; preds = %159
  %177 = getelementptr inbounds i8, i8* %160, i64 -9, !dbg !666
  %178 = bitcast i8* %177 to i32*, !dbg !667
  %179 = load i32, i32* %178, align 1, !dbg !667, !tbaa !423
  %180 = zext i32 %179 to i64, !dbg !666
  br label %185, !dbg !668

; <label>:181:                                    ; preds = %159
  %182 = getelementptr inbounds i8, i8* %160, i64 -17, !dbg !669
  %183 = bitcast i8* %182 to i64*, !dbg !670
  %184 = load i64, i64* %183, align 1, !dbg !670, !tbaa !337
  br label %185, !dbg !671

; <label>:185:                                    ; preds = %159, %164, %167, %171, %176, %181
  %186 = phi i64 [ %184, %181 ], [ %180, %176 ], [ %175, %171 ], [ %170, %167 ], [ %166, %164 ], [ 0, %159 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  %187 = icmp eq i64 %126, %186, !dbg !674
  br i1 %187, label %255, label %188, !dbg !675

; <label>:188:                                    ; preds = %185
  %189 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !677, !tbaa !513
  %190 = load i64, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !679, !tbaa !337
  %191 = sub nsw i64 %189, %190, !dbg !680
  %192 = icmp sgt i64 %191, 30, !dbg !681
  br i1 %192, label %193, label %194, !dbg !682

; <label>:193:                                    ; preds = %188
  store i64 %189, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !683, !tbaa !337
  br label %194, !dbg !685

; <label>:194:                                    ; preds = %193, %188
  %195 = phi i1 [ true, %193 ], [ false, %188 ]
  %196 = icmp eq i64 %126, -1, !dbg !686
  br i1 %196, label %197, label %204, !dbg !688

; <label>:197:                                    ; preds = %194
  br i1 %195, label %198, label %244, !dbg !689

; <label>:198:                                    ; preds = %197
  %199 = tail call i32* @__errno() #6, !dbg !691
  %200 = load i32, i32* %199, align 4, !dbg !691, !tbaa !423
  %201 = tail call i8* @strerror(i32 %200) #6, !dbg !694
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %201) #6, !dbg !695
  %202 = tail call i32* @__errno() #6, !dbg !696
  %203 = load i32, i32* %202, align 4, !dbg !696, !tbaa !423
  br label %241, !dbg !697

; <label>:204:                                    ; preds = %194
  br i1 %195, label %205, label %229, !dbg !698

; <label>:205:                                    ; preds = %204
  switch i3 %163, label %227 [
    i3 0, label %206
    i3 1, label %209
    i3 2, label %213
    i3 3, label %218
    i3 -4, label %223
  ], !dbg !705

; <label>:206:                                    ; preds = %205
  %207 = lshr i8 %162, 3, !dbg !706
  %208 = zext i8 %207 to i64, !dbg !706
  br label %227, !dbg !707

; <label>:209:                                    ; preds = %205
  %210 = getelementptr inbounds i8, i8* %160, i64 -3, !dbg !708
  %211 = load i8, i8* %210, align 1, !dbg !709, !tbaa !476
  %212 = zext i8 %211 to i64, !dbg !708
  br label %227, !dbg !710

; <label>:213:                                    ; preds = %205
  %214 = getelementptr inbounds i8, i8* %160, i64 -5, !dbg !711
  %215 = bitcast i8* %214 to i16*, !dbg !712
  %216 = load i16, i16* %215, align 1, !dbg !712, !tbaa !494
  %217 = zext i16 %216 to i64, !dbg !711
  br label %227, !dbg !713

; <label>:218:                                    ; preds = %205
  %219 = getelementptr inbounds i8, i8* %160, i64 -9, !dbg !714
  %220 = bitcast i8* %219 to i32*, !dbg !715
  %221 = load i32, i32* %220, align 1, !dbg !715, !tbaa !423
  %222 = zext i32 %221 to i64, !dbg !714
  br label %227, !dbg !716

; <label>:223:                                    ; preds = %205
  %224 = getelementptr inbounds i8, i8* %160, i64 -17, !dbg !717
  %225 = bitcast i8* %224 to i64*, !dbg !718
  %226 = load i64, i64* %225, align 1, !dbg !718, !tbaa !337
  br label %227, !dbg !719

; <label>:227:                                    ; preds = %205, %206, %209, %213, %218, %223
  %228 = phi i64 [ %226, %223 ], [ %222, %218 ], [ %217, %213 ], [ %212, %209 ], [ %208, %206 ], [ 0, %205 ], !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0), i64 %126, i64 %228) #6, !dbg !722
  br label %229, !dbg !723

; <label>:229:                                    ; preds = %227, %204
  %230 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !724, !tbaa !448
  %231 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !726, !tbaa !509
  %232 = tail call i32 @ftruncate(i32 %230, i64 %231) #6, !dbg !727
  %233 = icmp ne i32 %232, -1, !dbg !728
  %234 = xor i1 %195, true, !dbg !729
  %235 = or i1 %233, %234, !dbg !729
  %236 = select i1 %233, i64 -1, i64 %126, !dbg !729
  br i1 %235, label %241, label %237, !dbg !729

; <label>:237:                                    ; preds = %229
  %238 = tail call i32* @__errno() #6, !dbg !730
  %239 = load i32, i32* %238, align 4, !dbg !730, !tbaa !423
  %240 = tail call i8* @strerror(i32 %239) #6, !dbg !734
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.16, i64 0, i64 0), i8* %240) #6, !dbg !735
  br label %241, !dbg !736

; <label>:241:                                    ; preds = %237, %229, %198
  %242 = phi i32 [ %203, %198 ], [ 28, %229 ], [ 28, %237 ]
  %243 = phi i64 [ -1, %198 ], [ %236, %229 ], [ %126, %237 ]
  store i32 %242, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !737, !tbaa !738
  br label %244, !dbg !739

; <label>:244:                                    ; preds = %241, %197
  %245 = phi i64 [ -1, %197 ], [ %243, %241 ], !dbg !741
  %246 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !739, !tbaa !482
  %247 = icmp eq i32 %246, 1, !dbg !742
  br i1 %247, label %248, label %249, !dbg !743

; <label>:248:                                    ; preds = %244
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !744
  tail call void @exit(i32 1) #8, !dbg !746
  unreachable, !dbg !746

; <label>:249:                                    ; preds = %244
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !747, !tbaa !749
  %250 = icmp sgt i64 %245, 0, !dbg !750
  br i1 %250, label %251, label %363, !dbg !752

; <label>:251:                                    ; preds = %249
  %252 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !753, !tbaa !509
  %253 = add nsw i64 %252, %245, !dbg !753
  store i64 %253, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !753, !tbaa !509
  %254 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !755, !tbaa !462
  tail call void @sdsrange(i8* %254, i64 %245, i64 -1) #6, !dbg !756
  br label %363, !dbg !757

; <label>:255:                                    ; preds = %185
  %256 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !758, !tbaa !749
  %257 = icmp eq i32 %256, -1, !dbg !761
  br i1 %257, label %258, label %261, !dbg !762

; <label>:258:                                    ; preds = %255
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !763
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !765, !tbaa !749
  %259 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !766, !tbaa !462
  %260 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !768
  br label %261, !dbg !770

; <label>:261:                                    ; preds = %255, %258
  %262 = phi i8* [ %161, %255 ], [ %260, %258 ], !dbg !768
  %263 = phi i8* [ %160, %255 ], [ %259, %258 ], !dbg !766
  %264 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !771, !tbaa !509
  %265 = add nsw i64 %264, %126, !dbg !771
  store i64 %265, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !771, !tbaa !509
  %266 = load i8, i8* %262, align 1, !dbg !768, !tbaa !476
  %267 = trunc i8 %266 to i3, !dbg !774
  switch i3 %267, label %307 [
    i3 0, label %268
    i3 1, label %271
    i3 2, label %279
    i3 3, label %289
    i3 -4, label %299
  ], !dbg !774

; <label>:268:                                    ; preds = %261
  %269 = lshr i8 %266, 3, !dbg !775
  %270 = zext i8 %269 to i64, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br label %308, !dbg !793

; <label>:271:                                    ; preds = %261
  %272 = getelementptr inbounds i8, i8* %263, i64 -3, !dbg !794
  %273 = load i8, i8* %272, align 1, !dbg !795, !tbaa !476
  %274 = zext i8 %273 to i64, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %275 = getelementptr inbounds i8, i8* %263, i64 -2, !dbg !797
  %276 = load i8, i8* %275, align 1, !dbg !797, !tbaa !476
  %277 = zext i8 %276 to i64, !dbg !798
  %278 = sub nsw i64 %277, %274, !dbg !799
  br label %308

; <label>:279:                                    ; preds = %261
  %280 = getelementptr inbounds i8, i8* %263, i64 -5, !dbg !800
  %281 = bitcast i8* %280 to i16*, !dbg !801
  %282 = load i16, i16* %281, align 1, !dbg !801, !tbaa !494
  %283 = zext i16 %282 to i64, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %284 = getelementptr inbounds i8, i8* %263, i64 -3, !dbg !803
  %285 = bitcast i8* %284 to i16*, !dbg !803
  %286 = load i16, i16* %285, align 1, !dbg !803, !tbaa !494
  %287 = zext i16 %286 to i64, !dbg !804
  %288 = sub nsw i64 %287, %283, !dbg !805
  br label %308

; <label>:289:                                    ; preds = %261
  %290 = getelementptr inbounds i8, i8* %263, i64 -9, !dbg !806
  %291 = bitcast i8* %290 to i32*, !dbg !807
  %292 = load i32, i32* %291, align 1, !dbg !807, !tbaa !423
  %293 = zext i32 %292 to i64, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %294 = getelementptr inbounds i8, i8* %263, i64 -5, !dbg !809
  %295 = bitcast i8* %294 to i32*, !dbg !809
  %296 = load i32, i32* %295, align 1, !dbg !809, !tbaa !423
  %297 = sub i32 %296, %292, !dbg !810
  %298 = zext i32 %297 to i64, !dbg !811
  br label %308

; <label>:299:                                    ; preds = %261
  %300 = getelementptr inbounds i8, i8* %263, i64 -17, !dbg !812
  %301 = bitcast i8* %300 to i64*, !dbg !813
  %302 = load i64, i64* %301, align 1, !dbg !813, !tbaa !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  %303 = getelementptr inbounds i8, i8* %263, i64 -9, !dbg !815
  %304 = bitcast i8* %303 to i64*, !dbg !815
  %305 = load i64, i64* %304, align 1, !dbg !815, !tbaa !337
  %306 = sub i64 %305, %302, !dbg !816
  br label %308

; <label>:307:                                    ; preds = %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br label %308, !dbg !793

; <label>:308:                                    ; preds = %307, %268, %271, %279, %289, %299
  %309 = phi i64 [ %302, %299 ], [ %293, %289 ], [ %283, %279 ], [ %274, %271 ], [ 0, %307 ], [ %270, %268 ]
  %310 = phi i64 [ %306, %299 ], [ %298, %289 ], [ %288, %279 ], [ %278, %271 ], [ 0, %307 ], [ 0, %268 ], !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %311 = add i64 %310, %309, !dbg !820
  %312 = icmp ult i64 %311, 4000, !dbg !821
  br i1 %312, label %313, label %314, !dbg !822

; <label>:313:                                    ; preds = %308
  tail call void @sdsclear(i8* %263) #6, !dbg !823
  br label %316, !dbg !825

; <label>:314:                                    ; preds = %308
  tail call void @sdsfree(i8* %263) #6, !dbg !826
  %315 = tail call i8* @sdsempty() #6, !dbg !828
  store i8* %315, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !829, !tbaa !462
  br label %316

; <label>:316:                                    ; preds = %44, %313, %314
  %317 = phi i32 [ 0, %44 ], [ %70, %313 ], [ %70, %314 ], !dbg !480
  %318 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 120), align 8, !dbg !830, !tbaa !832
  %319 = icmp eq i32 %318, 0, !dbg !833
  br i1 %319, label %325, label %320, !dbg !834

; <label>:320:                                    ; preds = %316
  %321 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !835, !tbaa !638
  %322 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !836
  %323 = and i32 %322, %321, !dbg !837
  %324 = icmp eq i32 %323, -1, !dbg !837
  br i1 %324, label %325, label %363, !dbg !837

; <label>:325:                                    ; preds = %320, %316
  %326 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !838, !tbaa !482
  switch i32 %326, label %363 [
    i32 1, label %327
    i32 2, label %349
  ], !dbg !840

; <label>:327:                                    ; preds = %325
  %328 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !841, !tbaa !555
  %329 = icmp eq i64 %328, 0, !dbg !841
  br i1 %329, label %332, label %330, !dbg !844

; <label>:330:                                    ; preds = %327
  %331 = tail call i64 @mstime() #6, !dbg !845
  br label %332, !dbg !845

; <label>:332:                                    ; preds = %327, %330
  %333 = phi i64 [ %331, %330 ], [ 0, %327 ], !dbg !845
  %334 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !847, !tbaa !448
  %335 = tail call i32 @fsync(i32 %334) #6, !dbg !848
  %336 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !849, !tbaa !555
  %337 = icmp eq i64 %336, 0, !dbg !849
  br i1 %337, label %346, label %338, !dbg !851

; <label>:338:                                    ; preds = %332
  %339 = tail call i64 @mstime() #6, !dbg !852
  %340 = sub nsw i64 %339, %333, !dbg !852
  %341 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !854, !tbaa !555
  %342 = icmp eq i64 %341, 0, !dbg !854
  %343 = icmp slt i64 %340, %341, !dbg !854
  %344 = or i1 %342, %343, !dbg !854
  br i1 %344, label %346, label %345, !dbg !854

; <label>:345:                                    ; preds = %338
  tail call void @latencyAddSample(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %340) #6, !dbg !854
  br label %346, !dbg !854

; <label>:346:                                    ; preds = %332, %338, %345
  %347 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !856, !tbaa !509
  store i64 %347, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !857, !tbaa !507
  %348 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !858, !tbaa !513
  store i64 %348, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !859, !tbaa !515
  br label %363, !dbg !860

; <label>:349:                                    ; preds = %325
  %350 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !861, !tbaa !513
  %351 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !863, !tbaa !515
  %352 = icmp sgt i64 %350, %351, !dbg !864
  br i1 %352, label %353, label %363, !dbg !865

; <label>:353:                                    ; preds = %349
  %354 = icmp eq i32 %317, 0, !dbg !866
  br i1 %354, label %355, label %361, !dbg !869

; <label>:355:                                    ; preds = %353
  %356 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !870, !tbaa !448
  %357 = sext i32 %356 to i64, !dbg !874
  %358 = inttoptr i64 %357 to i8*, !dbg !875
  tail call void @bioCreateBackgroundJob(i32 1, i8* %358, i8* null, i8* null) #6, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  %359 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !878, !tbaa !509
  store i64 %359, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !879, !tbaa !507
  %360 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !880, !tbaa !513
  br label %361, !dbg !881

; <label>:361:                                    ; preds = %353, %355
  %362 = phi i64 [ %350, %353 ], [ %360, %355 ], !dbg !880
  store i64 %362, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !882, !tbaa !515
  br label %363, !dbg !883

; <label>:363:                                    ; preds = %6, %346, %361, %349, %325, %320, %249, %251, %62, %35, %40, %36, %44, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  ret void, !dbg !884
}

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @killAppendOnlyChild() unnamed_addr #0 !dbg !885 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !901
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !902, !tbaa !638
  %5 = icmp eq i32 %4, -1, !dbg !904
  br i1 %5, label %42, label %6, !dbg !905

; <label>:6:                                      ; preds = %0
  %7 = sext i32 %4 to i64, !dbg !906
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i64 0, i64 0), i64 %7) #6, !dbg !907
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !908, !tbaa !638
  %9 = tail call i32 @kill(i32 %8, i32 10) #6, !dbg !910
  %10 = icmp eq i32 %9, -1, !dbg !911
  br i1 %10, label %15, label %11, !dbg !912

; <label>:11:                                     ; preds = %6, %11
  %12 = call i32 @wait3(i32* nonnull %2, i32 0, %struct.rusage* null) #6, !dbg !914
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !916, !tbaa !638
  %14 = icmp eq i32 %12, %13, !dbg !917
  br i1 %14, label %15, label %11, !dbg !918, !llvm.loop !919

; <label>:15:                                     ; preds = %11, %6
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !921, !tbaa !90
  %17 = icmp eq %struct.list* %16, null, !dbg !923
  br i1 %17, label %19, label %18, !dbg !924

; <label>:18:                                     ; preds = %15
  call void @listRelease(%struct.list* nonnull %16) #6, !dbg !925
  br label %19, !dbg !925

; <label>:19:                                     ; preds = %15, %18
  %20 = call %struct.list* @listCreate() #6, !dbg !926
  store %struct.list* %20, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !927, !tbaa !90
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i64 0, i32 3, !dbg !928
  store void (i8*)* @zfree, void (i8*)** %21, align 8, !dbg !928, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !930, !tbaa !638
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %23) #7, !dbg !932
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %22) #6, !dbg !933
  %25 = call i32 @unlink(i8* nonnull %23) #6, !dbg !934
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %23) #7, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !936, !tbaa !638
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !937, !tbaa !938
  %26 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !939, !tbaa !255
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !942, !tbaa !943
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %26, i32 %27, i32 1) #6, !dbg !944
  %28 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !945, !tbaa !255
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !946, !tbaa !257
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %28, i32 %29, i32 2) #6, !dbg !947
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !948, !tbaa !257
  %31 = call i32 @close(i32 %30) #6, !dbg !949
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !950, !tbaa !951
  %33 = call i32 @close(i32 %32) #6, !dbg !952
  %34 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !953, !tbaa !954
  %35 = call i32 @close(i32 %34) #6, !dbg !955
  %36 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !956, !tbaa !943
  %37 = call i32 @close(i32 %36) #6, !dbg !957
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !958, !tbaa !959
  %39 = call i32 @close(i32 %38) #6, !dbg !960
  %40 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !961, !tbaa !962
  %41 = call i32 @close(i32 %40) #6, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br label %42, !dbg !965

; <label>:42:                                     ; preds = %0, %19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  ret void, !dbg !965
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startAppendOnly() local_unnamed_addr #0 !dbg !966 {
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !976
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !978, !tbaa !979
  %4 = tail call i32 (i8*, i32, ...) @open(i8* %3, i32 521, i32 420) #6, !dbg !980
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !982, !tbaa !445
  %6 = icmp eq i32 %5, 0, !dbg !982
  br i1 %6, label %8, label %7, !dbg !982

; <label>:7:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 253) #6, !dbg !982
  tail call void @_exit(i32 1) #8, !dbg !982
  unreachable, !dbg !982

; <label>:8:                                      ; preds = %0
  %9 = icmp eq i32 %4, -1, !dbg !983
  br i1 %9, label %10, label %18, !dbg !984

; <label>:10:                                     ; preds = %8
  %11 = call i8* @getcwd(i8* nonnull %2, i64 1024) #6, !dbg !985
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !987, !tbaa !979
  %13 = icmp eq i8* %11, null, !dbg !988
  %14 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %11, !dbg !988
  %15 = call i32* @__errno() #6, !dbg !989
  %16 = load i32, i32* %15, align 4, !dbg !989, !tbaa !423
  %17 = call i8* @strerror(i32 %16) #6, !dbg !990
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %14, i8* %17) #6, !dbg !991
  br label %33

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !992, !tbaa !994
  %20 = icmp eq i32 %19, -1, !dbg !995
  br i1 %20, label %22, label %21, !dbg !996

; <label>:21:                                     ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !997, !tbaa !999
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1000
  br label %31, !dbg !1001

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1002, !tbaa !638
  %24 = icmp eq i32 %23, -1, !dbg !1005
  br i1 %24, label %26, label %25, !dbg !1006

; <label>:25:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1007
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !1009
  br label %26, !dbg !1010

; <label>:26:                                     ; preds = %22, %25
  %27 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !1011
  %28 = icmp eq i32 %27, -1, !dbg !1013
  br i1 %28, label %29, label %31, !dbg !1014

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @close(i32 %4) #6, !dbg !1015
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1017
  br label %33, !dbg !1018

; <label>:31:                                     ; preds = %26, %21
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1019, !tbaa !445
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1020, !tbaa !513
  store i64 %32, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !1021, !tbaa !515
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !1022, !tbaa !448
  br label %33, !dbg !1023

; <label>:33:                                     ; preds = %31, %29, %10
  %34 = phi i32 [ -1, %10 ], [ 0, %31 ], [ -1, %29 ], !dbg !1024
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  ret i32 %34, !dbg !1025
}

; Function Attrs: noredzone
declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @getcwd(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileBackground() local_unnamed_addr #0 !dbg !1026 {
  %1 = alloca [256 x i8], align 16
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1036, !tbaa !638
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1038
  %4 = and i32 %3, %2, !dbg !1039
  %5 = icmp eq i32 %4, -1, !dbg !1039
  br i1 %5, label %6, label %67, !dbg !1039

; <label>:6:                                      ; preds = %0
  %7 = tail call i32 @aofCreatePipes() #9, !dbg !1040
  %8 = icmp eq i32 %7, 0, !dbg !1042
  br i1 %8, label %9, label %67, !dbg !1043

; <label>:9:                                      ; preds = %6
  tail call void @openChildInfoPipe() #6, !dbg !1044
  %10 = tail call i64 @ustime() #6, !dbg !1045
  %11 = tail call i32 @fork() #6, !dbg !1047
  %12 = icmp eq i32 %11, 0, !dbg !1049
  br i1 %12, label %13, label %27, !dbg !1050

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !1051
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1051
  tail call void @closeListeningSockets(i32 0) #6, !dbg !1053
  tail call void @redisSetProcTitle(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !1054
  %15 = tail call i32 @getpid() #6, !dbg !1055
  %16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %15) #6, !dbg !1056
  %17 = call i32 @rewriteAppendOnlyFile(i8* nonnull %14) #9, !dbg !1057
  %18 = icmp eq i32 %17, 0, !dbg !1058
  br i1 %18, label %19, label %25, !dbg !1059

; <label>:19:                                     ; preds = %13
  %20 = call i64 @zmalloc_get_private_dirty(i64 -1) #6, !dbg !1060
  %21 = icmp eq i64 %20, 0, !dbg !1062
  br i1 %21, label %24, label %22, !dbg !1064

; <label>:22:                                     ; preds = %19
  %23 = lshr i64 %20, 20, !dbg !1065
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.89, i64 0, i64 0), i64 %23) #6, !dbg !1067
  br label %24, !dbg !1068

; <label>:24:                                     ; preds = %19, %22
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !1069, !tbaa !1070
  call void @sendChildInfo(i32 1) #6, !dbg !1071
  call void @exitFromChild(i32 0) #6, !dbg !1072
  br label %26, !dbg !1073

; <label>:25:                                     ; preds = %13
  call void @exitFromChild(i32 1) #6, !dbg !1074
  br label %26

; <label>:26:                                     ; preds = %25, %24
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1076
  br label %67, !dbg !1077

; <label>:27:                                     ; preds = %9
  %28 = tail call i64 @ustime() #6, !dbg !1078
  %29 = sub nsw i64 %28, %10, !dbg !1080
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1081, !tbaa !1082
  %30 = tail call i64 @zmalloc_used_memory() #6, !dbg !1083
  %31 = uitofp i64 %30 to double, !dbg !1084
  %32 = fmul double %31, 1.000000e+06, !dbg !1085
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1086, !tbaa !1082
  %34 = sitofp i64 %33 to double, !dbg !1087
  %35 = fdiv double %32, %34, !dbg !1088
  %36 = fmul double %35, 0x3E10000000000000, !dbg !1089
  store double %36, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 85), align 8, !dbg !1090, !tbaa !1091
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1092, !tbaa !555
  %38 = icmp eq i64 %37, 0, !dbg !1092
  br i1 %38, label %43, label %39, !dbg !1092

; <label>:39:                                     ; preds = %27
  %40 = sdiv i64 %33, 1000, !dbg !1092
  %41 = icmp slt i64 %40, %37, !dbg !1092
  br i1 %41, label %43, label %42, !dbg !1094

; <label>:42:                                     ; preds = %39
  tail call void @latencyAddSample(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i64 %40) #6, !dbg !1092
  br label %43, !dbg !1092

; <label>:43:                                     ; preds = %39, %27, %42
  %44 = icmp eq i32 %11, -1, !dbg !1095
  br i1 %44, label %45, label %65, !dbg !1097

; <label>:45:                                     ; preds = %43
  tail call void @closeChildInfoPipe() #6, !dbg !1098
  %46 = tail call i32* @__errno() #6, !dbg !1100
  %47 = load i32, i32* %46, align 4, !dbg !1100, !tbaa !423
  %48 = tail call i8* @strerror(i32 %47) #6, !dbg !1101
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.91, i64 0, i64 0), i8* %48) #6, !dbg !1102
  %49 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1103, !tbaa !255
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1105, !tbaa !943
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %49, i32 %50, i32 1) #6, !dbg !1106
  %51 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1107, !tbaa !255
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1108, !tbaa !257
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %51, i32 %52, i32 2) #6, !dbg !1109
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1110, !tbaa !257
  %54 = tail call i32 @close(i32 %53) #6, !dbg !1111
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !1112, !tbaa !951
  %56 = tail call i32 @close(i32 %55) #6, !dbg !1113
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !1114, !tbaa !954
  %58 = tail call i32 @close(i32 %57) #6, !dbg !1115
  %59 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1116, !tbaa !943
  %60 = tail call i32 @close(i32 %59) #6, !dbg !1117
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !1118, !tbaa !959
  %62 = tail call i32 @close(i32 %61) #6, !dbg !1119
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !1120, !tbaa !962
  %64 = tail call i32 @close(i32 %63) #6, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br label %67, !dbg !1123

; <label>:65:                                     ; preds = %43
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i32 %11) #6, !dbg !1124
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !1125, !tbaa !999
  %66 = tail call i64 @time(i64* null) #6, !dbg !1126
  store i64 %66, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !1127, !tbaa !938
  store i32 %11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1128, !tbaa !638
  tail call void @updateDictResizePolicy() #6, !dbg !1129
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1130, !tbaa !454
  tail call void @replicationScriptCacheFlush() #6, !dbg !1131
  br label %67, !dbg !1132

; <label>:67:                                     ; preds = %6, %0, %26, %65, %45
  %68 = phi i32 [ 0, %26 ], [ -1, %45 ], [ 0, %65 ], [ -1, %0 ], [ -1, %6 ], !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  ret i32 %68, !dbg !1134
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aofWrite(i32, i8*, i64) local_unnamed_addr #0 !dbg !584 {
  br label %4, !dbg !615

; <label>:4:                                      ; preds = %20, %3
  %5 = phi i8* [ %22, %20 ], [ %1, %3 ]
  %6 = phi i64 [ %21, %20 ], [ %2, %3 ]
  %7 = phi i64 [ %23, %20 ], [ 0, %3 ]
  %8 = icmp eq i64 %6, 0
  br label %9, !dbg !615

; <label>:9:                                      ; preds = %4, %13
  br i1 %8, label %24, label %10, !dbg !615

; <label>:10:                                     ; preds = %9
  %11 = tail call i64 @write(i32 %0, i8* %5, i64 %6) #6, !dbg !1140
  %12 = icmp slt i64 %11, 0, !dbg !1141
  br i1 %12, label %13, label %20, !dbg !1142

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno() #6, !dbg !1143
  %15 = load i32, i32* %14, align 4, !dbg !1143, !tbaa !423
  %16 = icmp eq i32 %15, 4, !dbg !1144
  br i1 %16, label %9, label %17, !dbg !1145, !llvm.loop !614

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64 %7, 0, !dbg !1146
  %19 = select i1 %18, i64 -1, i64 %7, !dbg !1146
  br label %24, !dbg !1147

; <label>:20:                                     ; preds = %10
  %21 = sub i64 %6, %11, !dbg !1148
  %22 = getelementptr inbounds i8, i8* %5, i64 %11, !dbg !1149
  %23 = add nsw i64 %11, %7, !dbg !1150
  br label %4, !dbg !615, !llvm.loop !614

; <label>:24:                                     ; preds = %9, %17
  %25 = phi i64 [ %19, %17 ], [ %7, %9 ], !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  ret i64 %25, !dbg !1152
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @latencyAddSample(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @ftruncate(i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sdsclear(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @catAppendOnlyGenericCommand(i8*, i32, %struct.redisObject** nocapture readonly) local_unnamed_addr #0 !dbg !1153 {
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1180
  store i8 42, i8* %5, align 16, !dbg !1182, !tbaa !476
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 1, !dbg !1183
  %7 = sext i32 %1 to i64, !dbg !1184
  %8 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %7) #6, !dbg !1185
  %9 = add nsw i32 %8, 1, !dbg !1186
  %10 = add nsw i32 %8, 2, !dbg !1188
  %11 = sext i32 %9 to i64, !dbg !1189
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %11, !dbg !1189
  store i8 13, i8* %12, align 1, !dbg !1190, !tbaa !476
  %13 = add nsw i32 %8, 3, !dbg !1191
  %14 = sext i32 %10 to i64, !dbg !1192
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %14, !dbg !1192
  store i8 10, i8* %15, align 1, !dbg !1193, !tbaa !476
  %16 = sext i32 %13 to i64, !dbg !1194
  %17 = call i8* @sdscatlen(i8* %0, i8* nonnull %5, i64 %16) #6, !dbg !1195
  %18 = icmp sgt i32 %1, 0, !dbg !1197
  br i1 %18, label %19, label %96, !dbg !1200

; <label>:19:                                     ; preds = %3
  %20 = zext i32 %1 to i64
  br label %21, !dbg !1201

; <label>:21:                                     ; preds = %90, %19
  %22 = phi i64 [ 0, %19 ], [ %94, %90 ]
  %23 = phi i8* [ %17, %19 ], [ %93, %90 ]
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %22, !dbg !1201
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1201, !tbaa !1203
  %26 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %25) #6, !dbg !1204
  store i8 36, i8* %5, align 16, !dbg !1206, !tbaa !476
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2, !dbg !1207
  %28 = load i8*, i8** %27, align 8, !dbg !1207, !tbaa !1208
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1212
  %30 = load i8, i8* %29, align 1, !dbg !1212, !tbaa !476
  %31 = trunc i8 %30 to i3, !dbg !1214
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1214

; <label>:32:                                     ; preds = %21
  %33 = lshr i8 %30, 3, !dbg !1215
  %34 = zext i8 %33 to i64, !dbg !1215
  br label %53, !dbg !1216

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !1217
  %37 = load i8, i8* %36, align 1, !dbg !1218, !tbaa !476
  %38 = zext i8 %37 to i64, !dbg !1217
  br label %53, !dbg !1219

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !1220
  %41 = bitcast i8* %40 to i16*, !dbg !1221
  %42 = load i16, i16* %41, align 1, !dbg !1221, !tbaa !494
  %43 = zext i16 %42 to i64, !dbg !1220
  br label %53, !dbg !1222

; <label>:44:                                     ; preds = %21
  %45 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !1223
  %46 = bitcast i8* %45 to i32*, !dbg !1224
  %47 = load i32, i32* %46, align 1, !dbg !1224, !tbaa !423
  %48 = zext i32 %47 to i64, !dbg !1223
  br label %53, !dbg !1225

; <label>:49:                                     ; preds = %21
  %50 = getelementptr inbounds i8, i8* %28, i64 -17, !dbg !1226
  %51 = bitcast i8* %50 to i64*, !dbg !1227
  %52 = load i64, i64* %51, align 1, !dbg !1227, !tbaa !337
  br label %53, !dbg !1228

; <label>:53:                                     ; preds = %21, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %21 ], !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %55 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %54) #6, !dbg !1231
  %56 = add nsw i32 %55, 1, !dbg !1232
  %57 = add nsw i32 %55, 2, !dbg !1233
  %58 = sext i32 %56 to i64, !dbg !1234
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %58, !dbg !1234
  store i8 13, i8* %59, align 1, !dbg !1235, !tbaa !476
  %60 = add nsw i32 %55, 3, !dbg !1236
  %61 = sext i32 %57 to i64, !dbg !1237
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %61, !dbg !1237
  store i8 10, i8* %62, align 1, !dbg !1238, !tbaa !476
  %63 = sext i32 %60 to i64, !dbg !1239
  %64 = call i8* @sdscatlen(i8* %23, i8* nonnull %5, i64 %63) #6, !dbg !1240
  %65 = load i8*, i8** %27, align 8, !dbg !1241, !tbaa !1208
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !1244
  %67 = load i8, i8* %66, align 1, !dbg !1244, !tbaa !476
  %68 = trunc i8 %67 to i3, !dbg !1246
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1246

; <label>:69:                                     ; preds = %53
  %70 = lshr i8 %67, 3, !dbg !1247
  %71 = zext i8 %70 to i64, !dbg !1247
  br label %90, !dbg !1248

; <label>:72:                                     ; preds = %53
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !1249
  %74 = load i8, i8* %73, align 1, !dbg !1250, !tbaa !476
  %75 = zext i8 %74 to i64, !dbg !1249
  br label %90, !dbg !1251

; <label>:76:                                     ; preds = %53
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !1252
  %78 = bitcast i8* %77 to i16*, !dbg !1253
  %79 = load i16, i16* %78, align 1, !dbg !1253, !tbaa !494
  %80 = zext i16 %79 to i64, !dbg !1252
  br label %90, !dbg !1254

; <label>:81:                                     ; preds = %53
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !1255
  %83 = bitcast i8* %82 to i32*, !dbg !1256
  %84 = load i32, i32* %83, align 1, !dbg !1256, !tbaa !423
  %85 = zext i32 %84 to i64, !dbg !1255
  br label %90, !dbg !1257

; <label>:86:                                     ; preds = %53
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !1258
  %88 = bitcast i8* %87 to i64*, !dbg !1259
  %89 = load i64, i64* %88, align 1, !dbg !1259, !tbaa !337
  br label %90, !dbg !1260

; <label>:90:                                     ; preds = %53, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %53 ], !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %92 = call i8* @sdscatlen(i8* %64, i8* %65, i64 %91) #6, !dbg !1263
  %93 = call i8* @sdscatlen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 2) #6, !dbg !1264
  call void @decrRefCount(%struct.redisObject* nonnull %26) #6, !dbg !1265
  %94 = add nuw nsw i64 %22, 1, !dbg !1266
  %95 = icmp eq i64 %94, %20, !dbg !1197
  br i1 %95, label %96, label %21, !dbg !1200, !llvm.loop !1267

; <label>:96:                                     ; preds = %90, %3
  %97 = phi i8* [ %17, %3 ], [ %93, %90 ], !dbg !1269
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  ret i8* %97, !dbg !1271
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @catAppendOnlyExpireAtCommand(i8*, %struct.redisCommand* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1272 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1499
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1499
  %7 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %3) #6, !dbg !1501
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1502
  %9 = load i8*, i8** %8, align 8, !dbg !1502, !tbaa !1208
  %10 = tail call i64 @strtoll(i8* %9, i8** null, i32 10) #6, !dbg !1503
  %11 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %1, i64 0, i32 1, !dbg !1505
  %12 = load void (%struct.client*)*, void (%struct.client*)** %11, align 8, !dbg !1505, !tbaa !1507
  %13 = icmp eq void (%struct.client*)* %12, @expireCommand, !dbg !1509
  %14 = icmp eq void (%struct.client*)* %12, @setexCommand, !dbg !1510
  %15 = or i1 %13, %14, !dbg !1511
  %16 = icmp eq void (%struct.client*)* %12, @expireatCommand, !dbg !1512
  %17 = or i1 %16, %15, !dbg !1511
  %18 = mul nsw i64 %10, 1000, !dbg !1513
  %19 = select i1 %17, i64 %18, i64 %10, !dbg !1511
  %20 = icmp eq void (%struct.client*)* %12, @pexpireCommand, !dbg !1515
  %21 = or i1 %13, %20, !dbg !1517
  %22 = or i1 %14, %21, !dbg !1517
  %23 = icmp eq void (%struct.client*)* %12, @psetexCommand, !dbg !1518
  %24 = or i1 %23, %22, !dbg !1517
  br i1 %24, label %25, label %28, !dbg !1517

; <label>:25:                                     ; preds = %4
  %26 = tail call i64 @mstime() #6, !dbg !1519
  %27 = add nsw i64 %26, %19, !dbg !1521
  br label %28, !dbg !1522

; <label>:28:                                     ; preds = %4, %25
  %29 = phi i64 [ %27, %25 ], [ %19, %4 ], !dbg !1523
  tail call void @decrRefCount(%struct.redisObject* %7) #6, !dbg !1524
  %30 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 9) #6, !dbg !1525
  %31 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1526
  store %struct.redisObject* %30, %struct.redisObject** %31, align 16, !dbg !1527, !tbaa !1203
  %32 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1528
  store %struct.redisObject* %2, %struct.redisObject** %32, align 8, !dbg !1529, !tbaa !1203
  %33 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %29) #6, !dbg !1530
  %34 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1531
  store %struct.redisObject* %33, %struct.redisObject** %34, align 16, !dbg !1532, !tbaa !1203
  %35 = call i8* @catAppendOnlyGenericCommand(i8* %0, i32 3, %struct.redisObject** nonnull %31) #9, !dbg !1533
  tail call void @decrRefCount(%struct.redisObject* %30) #6, !dbg !1534
  tail call void @decrRefCount(%struct.redisObject* %33) #6, !dbg !1535
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  ret i8* %35, !dbg !1537
}

; Function Attrs: noredzone
declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @expireCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local void @setexCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local void @expireatCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local void @pexpireCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local void @psetexCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @feedAppendOnlyFile(%struct.redisCommand* nocapture readonly, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1538 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = alloca [64 x i8], align 16
  %7 = tail call i8* @sdsempty() #6, !dbg !1565
  %8 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1567
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1567
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1569, !tbaa !454
  %10 = icmp eq i32 %9, %1, !dbg !1570
  br i1 %10, label %16, label %11, !dbg !1571

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1572
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %1) #6, !dbg !1574
  %14 = call i64 @strlen(i8* nonnull %12) #6, !dbg !1575
  %15 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i64 %14, i8* nonnull %12) #6, !dbg !1576
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1577, !tbaa !454
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1578
  br label %16, !dbg !1579

; <label>:16:                                     ; preds = %4, %11
  %17 = phi i8* [ %15, %11 ], [ %7, %4 ], !dbg !1580
  %18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 1, !dbg !1581
  %19 = load void (%struct.client*)*, void (%struct.client*)** %18, align 8, !dbg !1581, !tbaa !1507
  %20 = icmp eq void (%struct.client*)* %19, @expireCommand, !dbg !1582
  %21 = icmp eq void (%struct.client*)* %19, @pexpireCommand, !dbg !1583
  %22 = or i1 %20, %21, !dbg !1584
  %23 = icmp eq void (%struct.client*)* %19, @expireatCommand, !dbg !1585
  %24 = or i1 %23, %22, !dbg !1584
  br i1 %24, label %25, label %31, !dbg !1584

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1586
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1586, !tbaa !1203
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1588
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !1588, !tbaa !1203
  %30 = call i8* @catAppendOnlyExpireAtCommand(i8* %17, %struct.redisCommand* nonnull %0, %struct.redisObject* %27, %struct.redisObject* %29) #9, !dbg !1589
  br label %105, !dbg !1590

; <label>:31:                                     ; preds = %16
  %32 = icmp eq void (%struct.client*)* %19, @setexCommand, !dbg !1591
  %33 = icmp eq void (%struct.client*)* %19, @psetexCommand, !dbg !1592
  %34 = or i1 %32, %33, !dbg !1593
  br i1 %34, label %35, label %53, !dbg !1593

; <label>:35:                                     ; preds = %31
  %36 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #6, !dbg !1594
  %37 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1596
  store %struct.redisObject* %36, %struct.redisObject** %37, align 16, !dbg !1597, !tbaa !1203
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1598
  %39 = bitcast %struct.redisObject** %38 to i64*, !dbg !1598
  %40 = load i64, i64* %39, align 8, !dbg !1598, !tbaa !1203
  %41 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1599
  %42 = bitcast %struct.redisObject** %41 to i64*, !dbg !1600
  store i64 %40, i64* %42, align 8, !dbg !1600, !tbaa !1203
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 3, !dbg !1601
  %44 = bitcast %struct.redisObject** %43 to i64*, !dbg !1601
  %45 = load i64, i64* %44, align 8, !dbg !1601, !tbaa !1203
  %46 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1602
  %47 = bitcast %struct.redisObject** %46 to i64*, !dbg !1603
  store i64 %45, i64* %47, align 16, !dbg !1603, !tbaa !1203
  %48 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** nonnull %37) #9, !dbg !1604
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !1605
  %49 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1606, !tbaa !1203
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1607
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1607, !tbaa !1203
  %52 = call i8* @catAppendOnlyExpireAtCommand(i8* %48, %struct.redisCommand* nonnull %0, %struct.redisObject* %49, %struct.redisObject* %51) #9, !dbg !1608
  br label %105, !dbg !1609

; <label>:53:                                     ; preds = %31
  %54 = icmp eq void (%struct.client*)* %19, @setCommand, !dbg !1610
  %55 = icmp sgt i32 %3, 3, !dbg !1611
  %56 = and i1 %55, %54, !dbg !1612
  br i1 %56, label %57, label %103, !dbg !1612

; <label>:57:                                     ; preds = %53
  %58 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** %2) #9, !dbg !1615
  %59 = zext i32 %3 to i64
  br label %60, !dbg !1617

; <label>:60:                                     ; preds = %82, %57
  %61 = phi i64 [ 3, %57 ], [ %78, %82 ]
  %62 = phi %struct.redisObject* [ null, %57 ], [ %83, %82 ]
  %63 = phi %struct.redisObject* [ null, %57 ], [ %75, %82 ]
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %61, !dbg !1619
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !1619, !tbaa !1203
  %66 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %65, i64 0, i32 2, !dbg !1623
  %67 = load i8*, i8** %66, align 8, !dbg !1623, !tbaa !1208
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1624
  %69 = icmp eq i32 %68, 0, !dbg !1624
  br i1 %69, label %70, label %74, !dbg !1625

; <label>:70:                                     ; preds = %60
  %71 = add nuw nsw i64 %61, 1, !dbg !1626
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %71, !dbg !1627
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1627, !tbaa !1203
  br label %74, !dbg !1628

; <label>:74:                                     ; preds = %60, %70
  %75 = phi %struct.redisObject* [ %63, %60 ], [ %73, %70 ], !dbg !1629
  %76 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !1630
  %77 = icmp eq i32 %76, 0, !dbg !1630
  %78 = add nuw nsw i64 %61, 1, !dbg !1632
  br i1 %77, label %79, label %82, !dbg !1633

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %78, !dbg !1634
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1634, !tbaa !1203
  br label %82, !dbg !1635

; <label>:82:                                     ; preds = %74, %79
  %83 = phi %struct.redisObject* [ %81, %79 ], [ %62, %74 ], !dbg !1636
  %84 = icmp eq i64 %78, %59, !dbg !1637
  br i1 %84, label %85, label %60, !dbg !1617, !llvm.loop !1638

; <label>:85:                                     ; preds = %82
  %86 = icmp ne %struct.redisObject* %75, null, !dbg !1640
  %87 = icmp ne %struct.redisObject* %83, null, !dbg !1640
  %88 = and i1 %86, %87, !dbg !1640
  br i1 %88, label %89, label %90, !dbg !1640

; <label>:89:                                     ; preds = %85
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 616) #6, !dbg !1640
  call void @_exit(i32 1) #8, !dbg !1640
  unreachable, !dbg !1640

; <label>:90:                                     ; preds = %85
  br i1 %86, label %91, label %96, !dbg !1641

; <label>:91:                                     ; preds = %90
  %92 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 65), align 8, !dbg !1642, !tbaa !1644
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1645
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !1645, !tbaa !1203
  %95 = call i8* @catAppendOnlyExpireAtCommand(i8* %58, %struct.redisCommand* %92, %struct.redisObject* %94, %struct.redisObject* nonnull %75) #9, !dbg !1646
  br label %96, !dbg !1647

; <label>:96:                                     ; preds = %91, %90
  %97 = phi i8* [ %95, %91 ], [ %58, %90 ], !dbg !1648
  br i1 %87, label %98, label %105, !dbg !1649

; <label>:98:                                     ; preds = %96
  %99 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 66), align 8, !dbg !1650, !tbaa !1652
  %100 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1653
  %101 = load %struct.redisObject*, %struct.redisObject** %100, align 8, !dbg !1653, !tbaa !1203
  %102 = call i8* @catAppendOnlyExpireAtCommand(i8* %97, %struct.redisCommand* %99, %struct.redisObject* %101, %struct.redisObject* nonnull %83) #9, !dbg !1654
  br label %105, !dbg !1655

; <label>:103:                                    ; preds = %53
  %104 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 %3, %struct.redisObject** %2) #9, !dbg !1656
  br label %105

; <label>:105:                                    ; preds = %96, %98, %35, %103, %25
  %106 = phi i8* [ %30, %25 ], [ %52, %35 ], [ %104, %103 ], [ %102, %98 ], [ %97, %96 ], !dbg !1658
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1659, !tbaa !445
  %108 = icmp eq i32 %107, 1, !dbg !1661
  br i1 %108, label %109, label %138, !dbg !1662

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1663, !tbaa !462
  %111 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1666
  %112 = load i8, i8* %111, align 1, !dbg !1666, !tbaa !476
  %113 = trunc i8 %112 to i3, !dbg !1668
  switch i3 %113, label %135 [
    i3 0, label %114
    i3 1, label %117
    i3 2, label %121
    i3 3, label %126
    i3 -4, label %131
  ], !dbg !1668

; <label>:114:                                    ; preds = %109
  %115 = lshr i8 %112, 3, !dbg !1669
  %116 = zext i8 %115 to i64, !dbg !1669
  br label %135, !dbg !1670

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1671
  %119 = load i8, i8* %118, align 1, !dbg !1672, !tbaa !476
  %120 = zext i8 %119 to i64, !dbg !1671
  br label %135, !dbg !1673

; <label>:121:                                    ; preds = %109
  %122 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1674
  %123 = bitcast i8* %122 to i16*, !dbg !1675
  %124 = load i16, i16* %123, align 1, !dbg !1675, !tbaa !494
  %125 = zext i16 %124 to i64, !dbg !1674
  br label %135, !dbg !1676

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1677
  %128 = bitcast i8* %127 to i32*, !dbg !1678
  %129 = load i32, i32* %128, align 1, !dbg !1678, !tbaa !423
  %130 = zext i32 %129 to i64, !dbg !1677
  br label %135, !dbg !1679

; <label>:131:                                    ; preds = %109
  %132 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1680
  %133 = bitcast i8* %132 to i64*, !dbg !1681
  %134 = load i64, i64* %133, align 1, !dbg !1681, !tbaa !337
  br label %135, !dbg !1682

; <label>:135:                                    ; preds = %109, %114, %117, %121, %126, %131
  %136 = phi i64 [ %134, %131 ], [ %130, %126 ], [ %125, %121 ], [ %120, %117 ], [ %116, %114 ], [ 0, %109 ], !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  %137 = call i8* @sdscatlen(i8* %110, i8* nonnull %106, i64 %136) #6, !dbg !1685
  store i8* %137, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1686, !tbaa !462
  br label %138, !dbg !1687

; <label>:138:                                    ; preds = %135, %105
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1688, !tbaa !638
  %140 = icmp eq i32 %139, -1, !dbg !1690
  br i1 %140, label %168, label %141, !dbg !1691

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1694
  %143 = load i8, i8* %142, align 1, !dbg !1694, !tbaa !476
  %144 = trunc i8 %143 to i3, !dbg !1696
  switch i3 %144, label %166 [
    i3 0, label %145
    i3 1, label %148
    i3 2, label %152
    i3 3, label %157
    i3 -4, label %162
  ], !dbg !1696

; <label>:145:                                    ; preds = %141
  %146 = lshr i8 %143, 3, !dbg !1697
  %147 = zext i8 %146 to i64, !dbg !1697
  br label %166, !dbg !1698

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1699
  %150 = load i8, i8* %149, align 1, !dbg !1700, !tbaa !476
  %151 = zext i8 %150 to i64, !dbg !1699
  br label %166, !dbg !1701

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1702
  %154 = bitcast i8* %153 to i16*, !dbg !1703
  %155 = load i16, i16* %154, align 1, !dbg !1703, !tbaa !494
  %156 = zext i16 %155 to i64, !dbg !1702
  br label %166, !dbg !1704

; <label>:157:                                    ; preds = %141
  %158 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1705
  %159 = bitcast i8* %158 to i32*, !dbg !1706
  %160 = load i32, i32* %159, align 1, !dbg !1706, !tbaa !423
  %161 = zext i32 %160 to i64, !dbg !1705
  br label %166, !dbg !1707

; <label>:162:                                    ; preds = %141
  %163 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1708
  %164 = bitcast i8* %163 to i64*, !dbg !1709
  %165 = load i64, i64* %164, align 1, !dbg !1709, !tbaa !337
  br label %166, !dbg !1710

; <label>:166:                                    ; preds = %141, %145, %148, %152, %157, %162
  %167 = phi i64 [ %165, %162 ], [ %161, %157 ], [ %156, %152 ], [ %151, %148 ], [ %147, %145 ], [ 0, %141 ], !dbg !1711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  call void @aofRewriteBufferAppend(i8* nonnull %106, i64 %167) #9, !dbg !1713
  br label %168, !dbg !1713

; <label>:168:                                    ; preds = %138, %166
  call void @sdsfree(i8* %106) #6, !dbg !1714
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1715
  ret void, !dbg !1715
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @setCommand(%struct.client*) #1

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @createFakeClient() local_unnamed_addr #0 !dbg !1716 {
  %1 = tail call i8* @zmalloc(i64 16920) #6, !dbg !1722
  %2 = bitcast i8* %1 to %struct.client*, !dbg !1722
  %3 = tail call i32 @selectDb(%struct.client* %2, i32 0) #6, !dbg !1724
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1725
  %5 = bitcast i8* %4 to i32*, !dbg !1725
  store i32 -1, i32* %5, align 8, !dbg !1726, !tbaa !1727
  %6 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1731
  %7 = bitcast i8* %6 to %struct.redisObject**, !dbg !1731
  store %struct.redisObject* null, %struct.redisObject** %7, align 8, !dbg !1732, !tbaa !1733
  %8 = tail call i8* @sdsempty() #6, !dbg !1734
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1735
  %10 = bitcast i8* %9 to i8**, !dbg !1735
  store i8* %8, i8** %10, align 8, !dbg !1736, !tbaa !1737
  %11 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !1738
  %12 = bitcast i8* %11 to i64*, !dbg !1738
  store i64 0, i64* %12, align 8, !dbg !1739, !tbaa !1740
  %13 = getelementptr inbounds i8, i8* %1, i64 64, !dbg !1741
  %14 = bitcast i8* %13 to i32*, !dbg !1741
  store i32 0, i32* %14, align 8, !dbg !1742, !tbaa !1743
  %15 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !1744
  %16 = bitcast i8* %15 to %struct.redisObject***, !dbg !1744
  store %struct.redisObject** null, %struct.redisObject*** %16, align 8, !dbg !1745, !tbaa !1746
  %17 = getelementptr inbounds i8, i8* %1, i64 528, !dbg !1747
  %18 = bitcast i8* %17 to i32*, !dbg !1747
  store i32 0, i32* %18, align 8, !dbg !1748, !tbaa !1749
  %19 = getelementptr inbounds i8, i8* %1, i64 160, !dbg !1750
  %20 = bitcast i8* %19 to i32*, !dbg !1750
  store i32 0, i32* %20, align 8, !dbg !1751, !tbaa !1752
  %21 = getelementptr inbounds i8, i8* %1, i64 384, !dbg !1753
  %22 = bitcast i8* %21 to i32*, !dbg !1753
  store i32 0, i32* %22, align 8, !dbg !1754, !tbaa !1755
  %23 = getelementptr inbounds i8, i8* %1, i64 168, !dbg !1756
  %24 = bitcast i8* %23 to i32*, !dbg !1756
  store i32 6, i32* %24, align 8, !dbg !1757, !tbaa !1758
  %25 = tail call %struct.list* @listCreate() #6, !dbg !1759
  %26 = getelementptr inbounds i8, i8* %1, i64 112, !dbg !1760
  %27 = bitcast i8* %26 to %struct.list**, !dbg !1760
  store %struct.list* %25, %struct.list** %27, align 8, !dbg !1761, !tbaa !1762
  %28 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !1763
  %29 = bitcast i8* %28 to i64*, !dbg !1763
  store i64 0, i64* %29, align 8, !dbg !1764, !tbaa !1765
  %30 = getelementptr inbounds i8, i8* %1, i64 152, !dbg !1766
  %31 = bitcast i8* %30 to i64*, !dbg !1766
  store i64 0, i64* %31, align 8, !dbg !1767, !tbaa !1768
  %32 = tail call %struct.list* @listCreate() #6, !dbg !1769
  %33 = getelementptr inbounds i8, i8* %1, i64 488, !dbg !1770
  %34 = bitcast i8* %33 to %struct.list**, !dbg !1770
  store %struct.list* %32, %struct.list** %34, align 8, !dbg !1771, !tbaa !1772
  %35 = getelementptr inbounds i8, i8* %1, i64 512, !dbg !1773
  %36 = bitcast i8* %35 to i8**, !dbg !1773
  store i8* null, i8** %36, align 8, !dbg !1774, !tbaa !1775
  %37 = load %struct.list*, %struct.list** %27, align 8, !dbg !1776, !tbaa !1762
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 3, !dbg !1776
  store void (i8*)* @freeClientReplyValue, void (i8*)** %38, align 8, !dbg !1776, !tbaa !108
  %39 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 2, !dbg !1777
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %39, align 8, !dbg !1777, !tbaa !1778
  tail call void @initClientMultiState(%struct.client* %2) #6, !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1780
  ret %struct.client* %2, !dbg !1780
}

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @freeClientReplyValue(i8*) #1

; Function Attrs: noredzone
declare dso_local i8* @dupClientReplyValue(i8*) #1

; Function Attrs: noredzone
declare dso_local void @initClientMultiState(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @freeFakeClientArgv(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1781 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1789
  %3 = load i32, i32* %2, align 8, !dbg !1789, !tbaa !1743
  %4 = icmp sgt i32 %3, 0, !dbg !1792
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1793
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1793, !tbaa !1746
  br i1 %4, label %7, label %17, !dbg !1794

; <label>:7:                                      ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = phi %struct.redisObject** [ %16, %7 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !1795
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1795, !tbaa !1203
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !1796
  %12 = add nuw nsw i64 %8, 1, !dbg !1797
  %13 = load i32, i32* %2, align 8, !dbg !1789, !tbaa !1743
  %14 = sext i32 %13 to i64, !dbg !1792
  %15 = icmp slt i64 %12, %14, !dbg !1792
  %16 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1793, !tbaa !1746
  br i1 %15, label %7, label %17, !dbg !1794, !llvm.loop !1798

; <label>:17:                                     ; preds = %7, %1
  %18 = phi %struct.redisObject** [ %6, %1 ], [ %16, %7 ], !dbg !1793
  %19 = bitcast %struct.redisObject** %18 to i8*, !dbg !1800
  tail call void @zfree(i8* %19) #6, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  ret void, !dbg !1802
}

; Function Attrs: noredzone nounwind
define dso_local void @freeFakeClient(%struct.client*) local_unnamed_addr #0 !dbg !1803 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !1807
  %3 = load i8*, i8** %2, align 8, !dbg !1807, !tbaa !1737
  tail call void @sdsfree(i8* %3) #6, !dbg !1808
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1809
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !1809, !tbaa !1762
  tail call void @listRelease(%struct.list* %5) #6, !dbg !1810
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !1811
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1811, !tbaa !1772
  tail call void @listRelease(%struct.list* %7) #6, !dbg !1812
  tail call void @freeClientMultiState(%struct.client* %0) #6, !dbg !1813
  %8 = bitcast %struct.client* %0 to i8*, !dbg !1814
  tail call void @zfree(i8* %8) #6, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  ret void, !dbg !1816
}

; Function Attrs: noredzone
declare dso_local void @freeClientMultiState(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @loadAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !1817 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct._rio, align 8
  %5 = alloca [128 x i8], align 16
  %6 = tail call %struct.__sFILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2133
  %7 = bitcast %struct.stat* %2 to i8*, !dbg !2135
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2135
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2136, !tbaa !445
  %9 = icmp eq %struct.__sFILE* %6, null, !dbg !2141
  br i1 %9, label %10, label %14, !dbg !2143

; <label>:10:                                     ; preds = %1
  %11 = tail call i32* @__errno() #6, !dbg !2144
  %12 = load i32, i32* %11, align 4, !dbg !2144, !tbaa !423
  %13 = tail call i8* @strerror(i32 %12) #6, !dbg !2146
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0), i8* %13) #6, !dbg !2147
  tail call void @exit(i32 1) #8, !dbg !2148
  unreachable, !dbg !2148

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @fileno(%struct.__sFILE* nonnull %6) #6, !dbg !2149
  %16 = call i32 @fstat(i32 %15, %struct.stat* nonnull %2) #6, !dbg !2152
  %17 = icmp eq i32 %16, -1, !dbg !2153
  br i1 %17, label %24, label %18, !dbg !2154

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 7, !dbg !2155
  %20 = load i64, i64* %19, align 8, !dbg !2155, !tbaa !2156
  %21 = icmp eq i64 %20, 0, !dbg !2159
  br i1 %21, label %22, label %24, !dbg !2160

; <label>:22:                                     ; preds = %18
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124) to <2 x i64>*), align 8, !dbg !2161, !tbaa !337
  %23 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2163
  br label %327, !dbg !2164

; <label>:24:                                     ; preds = %14, %18
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2165, !tbaa !445
  %25 = call i8* @zmalloc(i64 16920) #6, !dbg !2166
  %26 = bitcast i8* %25 to %struct.client*, !dbg !2166
  %27 = call i32 @selectDb(%struct.client* %26, i32 0) #6, !dbg !2169
  %28 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !2170
  %29 = bitcast i8* %28 to i32*, !dbg !2170
  store i32 -1, i32* %29, align 8, !dbg !2171, !tbaa !1727
  %30 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !2172
  %31 = bitcast i8* %30 to %struct.redisObject**, !dbg !2172
  store %struct.redisObject* null, %struct.redisObject** %31, align 8, !dbg !2173, !tbaa !1733
  %32 = call i8* @sdsempty() #6, !dbg !2174
  %33 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !2175
  %34 = bitcast i8* %33 to i8**, !dbg !2175
  store i8* %32, i8** %34, align 8, !dbg !2176, !tbaa !1737
  %35 = getelementptr inbounds i8, i8* %25, i64 56, !dbg !2177
  %36 = bitcast i8* %35 to i64*, !dbg !2177
  store i64 0, i64* %36, align 8, !dbg !2178, !tbaa !1740
  %37 = getelementptr inbounds i8, i8* %25, i64 64, !dbg !2179
  %38 = bitcast i8* %37 to i32*, !dbg !2179
  store i32 0, i32* %38, align 8, !dbg !2180, !tbaa !1743
  %39 = getelementptr inbounds i8, i8* %25, i64 72, !dbg !2181
  %40 = bitcast i8* %39 to %struct.redisObject***, !dbg !2181
  store %struct.redisObject** null, %struct.redisObject*** %40, align 8, !dbg !2182, !tbaa !1746
  %41 = getelementptr inbounds i8, i8* %25, i64 528, !dbg !2183
  %42 = bitcast i8* %41 to i32*, !dbg !2183
  store i32 0, i32* %42, align 8, !dbg !2184, !tbaa !1749
  %43 = getelementptr inbounds i8, i8* %25, i64 160, !dbg !2185
  %44 = bitcast i8* %43 to i32*, !dbg !2185
  store i32 0, i32* %44, align 8, !dbg !2186, !tbaa !1752
  %45 = getelementptr inbounds i8, i8* %25, i64 384, !dbg !2187
  %46 = bitcast i8* %45 to i32*, !dbg !2187
  store i32 0, i32* %46, align 8, !dbg !2188, !tbaa !1755
  %47 = getelementptr inbounds i8, i8* %25, i64 168, !dbg !2189
  %48 = bitcast i8* %47 to i32*, !dbg !2189
  store i32 6, i32* %48, align 8, !dbg !2190, !tbaa !1758
  %49 = call %struct.list* @listCreate() #6, !dbg !2191
  %50 = getelementptr inbounds i8, i8* %25, i64 112, !dbg !2192
  %51 = bitcast i8* %50 to %struct.list**, !dbg !2192
  store %struct.list* %49, %struct.list** %51, align 8, !dbg !2193, !tbaa !1762
  %52 = getelementptr inbounds i8, i8* %25, i64 120, !dbg !2194
  %53 = bitcast i8* %52 to i64*, !dbg !2194
  store i64 0, i64* %53, align 8, !dbg !2195, !tbaa !1765
  %54 = getelementptr inbounds i8, i8* %25, i64 152, !dbg !2196
  %55 = bitcast i8* %54 to i64*, !dbg !2196
  store i64 0, i64* %55, align 8, !dbg !2197, !tbaa !1768
  %56 = call %struct.list* @listCreate() #6, !dbg !2198
  %57 = getelementptr inbounds i8, i8* %25, i64 488, !dbg !2199
  %58 = bitcast i8* %57 to %struct.list**, !dbg !2199
  store %struct.list* %56, %struct.list** %58, align 8, !dbg !2200, !tbaa !1772
  %59 = getelementptr inbounds i8, i8* %25, i64 512, !dbg !2201
  %60 = bitcast i8* %59 to i8**, !dbg !2201
  store i8* null, i8** %60, align 8, !dbg !2202, !tbaa !1775
  %61 = load %struct.list*, %struct.list** %51, align 8, !dbg !2203, !tbaa !1762
  %62 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 3, !dbg !2203
  store void (i8*)* @freeClientReplyValue, void (i8*)** %62, align 8, !dbg !2203, !tbaa !108
  %63 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 2, !dbg !2204
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %63, align 8, !dbg !2204, !tbaa !1778
  call void @initClientMultiState(%struct.client* %26) #6, !dbg !2205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  call void @startLoading(%struct.__sFILE* nonnull %6) #6, !dbg !2208
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !2209
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2209
  %65 = call i64 @fread(i8* nonnull %64, i64 1, i64 5, %struct.__sFILE* nonnull %6) #6, !dbg !2211
  %66 = icmp eq i64 %65, 5, !dbg !2212
  br i1 %66, label %67, label %70, !dbg !2213

; <label>:67:                                     ; preds = %24
  %68 = call i32 @memcmp(i8* nonnull %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i64 5) #6, !dbg !2214
  %69 = icmp eq i32 %68, 0, !dbg !2215
  br i1 %69, label %73, label %70, !dbg !2216

; <label>:70:                                     ; preds = %67, %24
  %71 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2217
  %72 = icmp eq i32 %71, -1, !dbg !2220
  br i1 %72, label %273, label %83, !dbg !2221

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct._rio* %4 to i8*, !dbg !2222
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2222
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2223
  %75 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2224
  %76 = icmp eq i32 %75, -1, !dbg !2226
  br i1 %76, label %81, label %77, !dbg !2227

; <label>:77:                                     ; preds = %73
  call void @rioInitWithFile(%struct._rio* nonnull %4, %struct.__sFILE* nonnull %6) #6, !dbg !2229
  %78 = call i32 @rdbLoadRio(%struct._rio* nonnull %4, %struct.rdbSaveInfo* null, i32 1) #6, !dbg !2230
  %79 = icmp eq i32 %78, 0, !dbg !2232
  br i1 %79, label %82, label %80, !dbg !2233

; <label>:80:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !2234
  br label %81, !dbg !2236

; <label>:81:                                     ; preds = %80, %73
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2237
  br label %273

; <label>:82:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !2238
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2237
  br label %83

; <label>:83:                                     ; preds = %82, %70
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %85 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1
  %87 = bitcast i8* %39 to i8**
  %88 = getelementptr inbounds i8, i8* %25, i64 80
  %89 = bitcast i8* %88 to %struct.redisCommand**
  br label %90, !dbg !2240

; <label>:90:                                     ; preds = %258, %83
  %91 = phi i64 [ 0, %83 ], [ %260, %258 ], !dbg !2140
  %92 = phi i64 [ 0, %83 ], [ %261, %258 ], !dbg !2139
  %93 = phi i64 [ 0, %83 ], [ %94, %258 ], !dbg !2241
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2243
  %94 = add nuw nsw i64 %93, 1, !dbg !2245
  %95 = urem i64 %93, 1000, !dbg !2246
  %96 = icmp eq i64 %95, 0, !dbg !2246
  br i1 %96, label %97, label %100, !dbg !2247

; <label>:97:                                     ; preds = %90
  %98 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2248
  call void @loadingProgress(i64 %98) #6, !dbg !2250
  %99 = call i32 @processEventsWhileBlocked() #6, !dbg !2251
  br label %100, !dbg !2252

; <label>:100:                                    ; preds = %90, %97
  %101 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2253
  %102 = icmp eq i8* %101, null, !dbg !2255
  br i1 %102, label %103, label %108, !dbg !2256

; <label>:103:                                    ; preds = %100
  %104 = load i16, i16* %85, align 8, !dbg !2257, !tbaa !2260
  %105 = and i16 %104, 32, !dbg !2257
  %106 = icmp eq i16 %105, 0, !dbg !2257
  %107 = select i1 %106, i3 2, i3 -4, !dbg !2264
  br label %258, !dbg !2264

; <label>:108:                                    ; preds = %100
  %109 = load i8, i8* %84, align 16, !dbg !2265, !tbaa !476
  %110 = icmp eq i8 %109, 42, !dbg !2267
  br i1 %110, label %111, label %256, !dbg !2268

; <label>:111:                                    ; preds = %108
  %112 = load i8, i8* %86, align 1, !dbg !2269, !tbaa !476
  %113 = icmp eq i8 %112, 0, !dbg !2271
  br i1 %113, label %255, label %114, !dbg !2272

; <label>:114:                                    ; preds = %111
  %115 = call i32 @atoi(i8* nonnull %86) #6, !dbg !2273
  %116 = icmp slt i32 %115, 1, !dbg !2275
  br i1 %116, label %256, label %117, !dbg !2277

; <label>:117:                                    ; preds = %114
  %118 = sext i32 %115 to i64, !dbg !2278
  %119 = shl nsw i64 %118, 3, !dbg !2279
  %120 = call i8* @zmalloc(i64 %119) #6, !dbg !2280
  %121 = bitcast i8* %120 to %struct.redisObject**, !dbg !2280
  store i32 %115, i32* %38, align 8, !dbg !2282, !tbaa !1743
  store i8* %120, i8** %87, align 8, !dbg !2283, !tbaa !1746
  br label %122, !dbg !2285

; <label>:122:                                    ; preds = %173, %117
  %123 = phi i64 [ %178, %173 ], [ 0, %117 ], !dbg !2287
  %124 = icmp slt i64 %123, %118, !dbg !2289
  br i1 %124, label %125, label %194, !dbg !2290

; <label>:125:                                    ; preds = %122
  %126 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2291
  %127 = icmp eq i8* %126, null, !dbg !2294
  br i1 %127, label %128, label %145, !dbg !2295

; <label>:128:                                    ; preds = %125
  %129 = trunc i64 %123 to i32, !dbg !2139
  store i32 %129, i32* %38, align 8, !dbg !2296, !tbaa !1743
  %130 = icmp eq i32 %129, 0, !dbg !2301
  %131 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2302, !tbaa !1746
  br i1 %130, label %142, label %132, !dbg !2303

; <label>:132:                                    ; preds = %128, %132
  %133 = phi i64 [ %137, %132 ], [ 0, %128 ]
  %134 = phi %struct.redisObject** [ %141, %132 ], [ %131, %128 ]
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 %133, !dbg !2304
  %136 = load %struct.redisObject*, %struct.redisObject** %135, align 8, !dbg !2304, !tbaa !1203
  call void @decrRefCount(%struct.redisObject* %136) #6, !dbg !2305
  %137 = add nuw nsw i64 %133, 1, !dbg !2306
  %138 = load i32, i32* %38, align 8, !dbg !2307, !tbaa !1743
  %139 = sext i32 %138 to i64, !dbg !2301
  %140 = icmp slt i64 %137, %139, !dbg !2301
  %141 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2302, !tbaa !1746
  br i1 %140, label %132, label %142, !dbg !2303, !llvm.loop !1798

; <label>:142:                                    ; preds = %132, %128
  %143 = phi %struct.redisObject** [ %131, %128 ], [ %141, %132 ], !dbg !2302
  %144 = bitcast %struct.redisObject** %143 to i8*, !dbg !2308
  call void @zfree(i8* %144) #6, !dbg !2309
  br label %254, !dbg !2310

; <label>:145:                                    ; preds = %125
  %146 = load i8, i8* %84, align 16, !dbg !2311, !tbaa !476
  %147 = icmp eq i8 %146, 36, !dbg !2313
  br i1 %147, label %148, label %256, !dbg !2314

; <label>:148:                                    ; preds = %145
  %149 = call i64 @strtol(i8* nonnull %86, i8** null, i32 10) #6, !dbg !2315
  %150 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !2317, !tbaa !1203
  %151 = call i8* @sdsnewlen(i8* %150, i64 %149) #6, !dbg !2318
  %152 = icmp eq i64 %149, 0, !dbg !2320
  br i1 %152, label %173, label %153, !dbg !2322

; <label>:153:                                    ; preds = %148
  %154 = call i64 @fread(i8* %151, i64 %149, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2323
  %155 = icmp eq i64 %154, 0, !dbg !2324
  br i1 %155, label %156, label %173, !dbg !2325

; <label>:156:                                    ; preds = %153
  %157 = trunc i64 %123 to i32, !dbg !2139
  call void @sdsfree(i8* %151) #6, !dbg !2326
  store i32 %157, i32* %38, align 8, !dbg !2328, !tbaa !1743
  %158 = icmp eq i32 %157, 0, !dbg !2332
  %159 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2333, !tbaa !1746
  br i1 %158, label %170, label %160, !dbg !2334

; <label>:160:                                    ; preds = %156, %160
  %161 = phi i64 [ %165, %160 ], [ 0, %156 ]
  %162 = phi %struct.redisObject** [ %169, %160 ], [ %159, %156 ]
  %163 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %162, i64 %161, !dbg !2335
  %164 = load %struct.redisObject*, %struct.redisObject** %163, align 8, !dbg !2335, !tbaa !1203
  call void @decrRefCount(%struct.redisObject* %164) #6, !dbg !2336
  %165 = add nuw nsw i64 %161, 1, !dbg !2337
  %166 = load i32, i32* %38, align 8, !dbg !2338, !tbaa !1743
  %167 = sext i32 %166 to i64, !dbg !2332
  %168 = icmp slt i64 %165, %167, !dbg !2332
  %169 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2333, !tbaa !1746
  br i1 %168, label %160, label %170, !dbg !2334, !llvm.loop !1798

; <label>:170:                                    ; preds = %160, %156
  %171 = phi %struct.redisObject** [ %159, %156 ], [ %169, %160 ], !dbg !2333
  %172 = bitcast %struct.redisObject** %171 to i8*, !dbg !2339
  call void @zfree(i8* %172) #6, !dbg !2340
  br label %254, !dbg !2341

; <label>:173:                                    ; preds = %148, %153
  %174 = call %struct.redisObject* @createObject(i32 0, i8* %151) #6, !dbg !2342
  %175 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %121, i64 %123, !dbg !2343
  store %struct.redisObject* %174, %struct.redisObject** %175, align 8, !dbg !2344, !tbaa !1203
  %176 = call i64 @fread(i8* nonnull %84, i64 2, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2345
  %177 = icmp eq i64 %176, 0, !dbg !2347
  %178 = add nuw nsw i64 %123, 1, !dbg !2287
  br i1 %177, label %179, label %122, !dbg !2348, !llvm.loop !2349

; <label>:179:                                    ; preds = %173
  %180 = trunc i64 %178 to i32, !dbg !2139
  store i32 %180, i32* %38, align 8, !dbg !2351, !tbaa !1743
  %181 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2356, !tbaa !1746
  br label %182, !dbg !2357

; <label>:182:                                    ; preds = %179, %182
  %183 = phi i64 [ %187, %182 ], [ 0, %179 ]
  %184 = phi %struct.redisObject** [ %191, %182 ], [ %181, %179 ]
  %185 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %184, i64 %183, !dbg !2358
  %186 = load %struct.redisObject*, %struct.redisObject** %185, align 8, !dbg !2358, !tbaa !1203
  call void @decrRefCount(%struct.redisObject* %186) #6, !dbg !2359
  %187 = add nuw nsw i64 %183, 1, !dbg !2360
  %188 = load i32, i32* %38, align 8, !dbg !2361, !tbaa !1743
  %189 = sext i32 %188 to i64, !dbg !2362
  %190 = icmp slt i64 %187, %189, !dbg !2362
  %191 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2356, !tbaa !1746
  br i1 %190, label %182, label %192, !dbg !2357, !llvm.loop !1798

; <label>:192:                                    ; preds = %182
  %193 = bitcast %struct.redisObject** %191 to i8*, !dbg !2363
  call void @zfree(i8* %193) #6, !dbg !2364
  br label %254, !dbg !2365

; <label>:194:                                    ; preds = %122
  %195 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !2366, !tbaa !1203
  %196 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %195, i64 0, i32 2, !dbg !2367
  %197 = load i8*, i8** %196, align 8, !dbg !2367, !tbaa !1208
  %198 = call %struct.redisCommand* @lookupCommand(i8* %197) #6, !dbg !2368
  %199 = icmp eq %struct.redisCommand* %198, null, !dbg !2370
  br i1 %199, label %200, label %205, !dbg !2372

; <label>:200:                                    ; preds = %194
  %201 = bitcast i8* %120 to %struct.redisObject**, !dbg !2280
  %202 = load %struct.redisObject*, %struct.redisObject** %201, align 8, !dbg !2373, !tbaa !1203
  %203 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %202, i64 0, i32 2, !dbg !2375
  %204 = load i8*, i8** %203, align 8, !dbg !2375, !tbaa !1208
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i8* %204) #6, !dbg !2376
  call void @exit(i32 1) #8, !dbg !2377
  unreachable, !dbg !2377

; <label>:205:                                    ; preds = %194
  %206 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !2378, !tbaa !2380
  %207 = icmp eq %struct.redisCommand* %198, %206, !dbg !2381
  %208 = select i1 %207, i64 %92, i64 %91, !dbg !2382
  store %struct.redisCommand* %198, %struct.redisCommand** %89, align 8, !dbg !2383, !tbaa !2384
  %209 = load i32, i32* %44, align 8, !dbg !2385, !tbaa !1752
  %210 = and i32 %209, 8, !dbg !2387
  %211 = icmp eq i32 %210, 0, !dbg !2387
  %212 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %198, i64 0, i32 1
  %213 = load void (%struct.client*)*, void (%struct.client*)** %212, align 8, !dbg !2388, !tbaa !1507
  br i1 %211, label %217, label %214, !dbg !2389

; <label>:214:                                    ; preds = %205
  %215 = icmp eq void (%struct.client*)* %213, @execCommand, !dbg !2390
  br i1 %215, label %217, label %216, !dbg !2391

; <label>:216:                                    ; preds = %214
  call void @queueMultiCommand(%struct.client* nonnull %26) #6, !dbg !2392
  br label %219, !dbg !2394

; <label>:217:                                    ; preds = %205, %214
  %218 = phi void (%struct.client*)* [ @execCommand, %214 ], [ %213, %205 ], !dbg !2395
  call void %218(%struct.client* nonnull %26) #6, !dbg !2397
  br label %219

; <label>:219:                                    ; preds = %217, %216
  %220 = load i32, i32* %42, align 8, !dbg !2398, !tbaa !1749
  %221 = icmp eq i32 %220, 0, !dbg !2398
  br i1 %221, label %222, label %227, !dbg !2398

; <label>:222:                                    ; preds = %219
  %223 = load %struct.list*, %struct.list** %51, align 8, !dbg !2398, !tbaa !1762
  %224 = getelementptr inbounds %struct.list, %struct.list* %223, i64 0, i32 5, !dbg !2398
  %225 = load i64, i64* %224, align 8, !dbg !2398, !tbaa !341
  %226 = icmp eq i64 %225, 0, !dbg !2398
  br i1 %226, label %228, label %227, !dbg !2398

; <label>:227:                                    ; preds = %222, %219
  call void @_serverAssert(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 827) #6, !dbg !2398
  call void @_exit(i32 1) #8, !dbg !2398
  unreachable, !dbg !2398

; <label>:228:                                    ; preds = %222
  %229 = load i32, i32* %44, align 8, !dbg !2399, !tbaa !1752
  %230 = and i32 %229, 16, !dbg !2399
  %231 = icmp eq i32 %230, 0, !dbg !2399
  br i1 %231, label %233, label %232, !dbg !2399

; <label>:232:                                    ; preds = %228
  call void @_serverAssert(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 830) #6, !dbg !2399
  call void @_exit(i32 1) #8, !dbg !2399
  unreachable, !dbg !2399

; <label>:233:                                    ; preds = %228
  %234 = load i32, i32* %38, align 8, !dbg !2403, !tbaa !1743
  %235 = icmp sgt i32 %234, 0, !dbg !2404
  %236 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2405, !tbaa !1746
  br i1 %235, label %237, label %247, !dbg !2406

; <label>:237:                                    ; preds = %233, %237
  %238 = phi i64 [ %242, %237 ], [ 0, %233 ]
  %239 = phi %struct.redisObject** [ %246, %237 ], [ %236, %233 ]
  %240 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %239, i64 %238, !dbg !2407
  %241 = load %struct.redisObject*, %struct.redisObject** %240, align 8, !dbg !2407, !tbaa !1203
  call void @decrRefCount(%struct.redisObject* %241) #6, !dbg !2408
  %242 = add nuw nsw i64 %238, 1, !dbg !2409
  %243 = load i32, i32* %38, align 8, !dbg !2403, !tbaa !1743
  %244 = sext i32 %243 to i64, !dbg !2404
  %245 = icmp slt i64 %242, %244, !dbg !2404
  %246 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2405, !tbaa !1746
  br i1 %245, label %237, label %247, !dbg !2406, !llvm.loop !1798

; <label>:247:                                    ; preds = %237, %233
  %248 = phi %struct.redisObject** [ %236, %233 ], [ %246, %237 ], !dbg !2405
  %249 = bitcast %struct.redisObject** %248 to i8*, !dbg !2410
  call void @zfree(i8* %249) #6, !dbg !2411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  store %struct.redisCommand* null, %struct.redisCommand** %89, align 8, !dbg !2413, !tbaa !2384
  %250 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2414, !tbaa !2416
  %251 = icmp eq i32 %250, 0, !dbg !2417
  br i1 %251, label %258, label %252, !dbg !2418

; <label>:252:                                    ; preds = %247
  %253 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2419
  br label %258, !dbg !2420

; <label>:254:                                    ; preds = %192, %170, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  br label %255, !dbg !2422

; <label>:255:                                    ; preds = %111, %254
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2422
  br label %273

; <label>:256:                                    ; preds = %108, %114, %145
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2422
  %257 = icmp eq i8* %25, null, !dbg !2423
  br i1 %257, label %325, label %321, !dbg !2425

; <label>:258:                                    ; preds = %252, %247, %103
  %259 = phi i3 [ %107, %103 ], [ 0, %247 ], [ 0, %252 ]
  %260 = phi i64 [ %91, %103 ], [ %208, %247 ], [ %208, %252 ], !dbg !2426
  %261 = phi i64 [ %92, %103 ], [ %92, %247 ], [ %253, %252 ], !dbg !2427
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2422
  switch i3 %259, label %326 [
    i3 0, label %90
    i3 -4, label %262
    i3 2, label %273
  ], !llvm.loop !2428

; <label>:262:                                    ; preds = %258
  %263 = load i32, i32* %44, align 8, !dbg !2429, !tbaa !1752
  %264 = and i32 %263, 8, !dbg !2431
  %265 = icmp eq i32 %264, 0, !dbg !2431
  br i1 %265, label %267, label %266, !dbg !2432

; <label>:266:                                    ; preds = %262
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2433
  br label %289, !dbg !2435

; <label>:267:                                    ; preds = %262, %313
  %268 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2436
  %269 = load i8*, i8** %34, align 8, !dbg !2439, !tbaa !1737
  call void @sdsfree(i8* %269) #6, !dbg !2440
  %270 = load %struct.list*, %struct.list** %51, align 8, !dbg !2441, !tbaa !1762
  call void @listRelease(%struct.list* %270) #6, !dbg !2442
  %271 = load %struct.list*, %struct.list** %58, align 8, !dbg !2443, !tbaa !1772
  call void @listRelease(%struct.list* %271) #6, !dbg !2444
  call void @freeClientMultiState(%struct.client* %26) #6, !dbg !2445
  call void @zfree(i8* %25) #6, !dbg !2446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  store i32 %8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2448, !tbaa !445
  call void @stopLoading() #6, !dbg !2449
  call void @aofUpdateCurrentSize() #9, !dbg !2450
  %272 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2451, !tbaa !509
  store i64 %272, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !2452, !tbaa !2453
  store i64 %272, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !2454, !tbaa !507
  br label %326, !dbg !2455

; <label>:273:                                    ; preds = %258, %255, %81, %70
  %274 = phi i64 [ 0, %70 ], [ 0, %81 ], [ %92, %255 ], [ %261, %258 ], !dbg !2139
  %275 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !2456
  %276 = load i16, i16* %275, align 8, !dbg !2456, !tbaa !2260
  %277 = and i16 %276, 32, !dbg !2456
  %278 = icmp eq i16 %277, 0, !dbg !2456
  br i1 %278, label %279, label %289, !dbg !2458

; <label>:279:                                    ; preds = %273
  %280 = icmp eq i8* %25, null, !dbg !2459
  br i1 %280, label %285, label %281, !dbg !2462

; <label>:281:                                    ; preds = %279
  %282 = load i8*, i8** %34, align 8, !dbg !2465, !tbaa !1737
  call void @sdsfree(i8* %282) #6, !dbg !2466
  %283 = load %struct.list*, %struct.list** %51, align 8, !dbg !2467, !tbaa !1762
  call void @listRelease(%struct.list* %283) #6, !dbg !2468
  %284 = load %struct.list*, %struct.list** %58, align 8, !dbg !2469, !tbaa !1772
  call void @listRelease(%struct.list* %284) #6, !dbg !2470
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2471
  call void @zfree(i8* nonnull %25) #6, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  br label %285, !dbg !2474

; <label>:285:                                    ; preds = %279, %281
  %286 = call i32* @__errno() #6, !dbg !2475
  %287 = load i32, i32* %286, align 4, !dbg !2475, !tbaa !423
  %288 = call i8* @strerror(i32 %287) #6, !dbg !2476
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i8* %288) #6, !dbg !2477
  call void @exit(i32 1) #8, !dbg !2478
  unreachable, !dbg !2478

; <label>:289:                                    ; preds = %273, %266
  %290 = phi i64 [ %274, %273 ], [ %260, %266 ], !dbg !2479
  %291 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2480, !tbaa !2416
  %292 = icmp eq i32 %291, 0, !dbg !2482
  br i1 %292, label %314, label %293, !dbg !2483

; <label>:293:                                    ; preds = %289
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2484
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0), i64 %290) #6, !dbg !2486
  %294 = icmp eq i64 %290, -1, !dbg !2487
  br i1 %294, label %298, label %295, !dbg !2489

; <label>:295:                                    ; preds = %293
  %296 = call i32 @truncate(i8* %0, i64 %290) #6, !dbg !2490
  %297 = icmp eq i32 %296, -1, !dbg !2491
  br i1 %297, label %299, label %303, !dbg !2492

; <label>:298:                                    ; preds = %293
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !2493
  br label %314, !dbg !2497

; <label>:299:                                    ; preds = %295
  %300 = call i32* @__errno() #6, !dbg !2498
  %301 = load i32, i32* %300, align 4, !dbg !2498, !tbaa !423
  %302 = call i8* @strerror(i32 %301) #6, !dbg !2500
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i8* %302) #6, !dbg !2501
  br label %314

; <label>:303:                                    ; preds = %295
  %304 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2502, !tbaa !448
  %305 = icmp eq i32 %304, -1, !dbg !2505
  br i1 %305, label %313, label %306, !dbg !2506

; <label>:306:                                    ; preds = %303
  %307 = call i64 @lseek(i32 %304, i64 0, i32 2) #6, !dbg !2507
  %308 = icmp eq i64 %307, -1, !dbg !2508
  br i1 %308, label %309, label %313, !dbg !2509

; <label>:309:                                    ; preds = %306
  %310 = call i32* @__errno() #6, !dbg !2510
  %311 = load i32, i32* %310, align 4, !dbg !2510, !tbaa !423
  %312 = call i8* @strerror(i32 %311) #6, !dbg !2512
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* %312) #6, !dbg !2513
  br label %314

; <label>:313:                                    ; preds = %303, %306
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !2514
  br label %267, !dbg !2516

; <label>:314:                                    ; preds = %289, %309, %299, %298
  %315 = icmp eq i8* %25, null, !dbg !2517
  br i1 %315, label %320, label %316, !dbg !2519

; <label>:316:                                    ; preds = %314
  %317 = load i8*, i8** %34, align 8, !dbg !2522, !tbaa !1737
  call void @sdsfree(i8* %317) #6, !dbg !2523
  %318 = load %struct.list*, %struct.list** %51, align 8, !dbg !2524, !tbaa !1762
  call void @listRelease(%struct.list* %318) #6, !dbg !2525
  %319 = load %struct.list*, %struct.list** %58, align 8, !dbg !2526, !tbaa !1772
  call void @listRelease(%struct.list* %319) #6, !dbg !2527
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2528
  call void @zfree(i8* nonnull %25) #6, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  br label %320, !dbg !2531

; <label>:320:                                    ; preds = %314, %316
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2532
  call void @exit(i32 1) #8, !dbg !2533
  unreachable, !dbg !2533

; <label>:321:                                    ; preds = %256
  %322 = load i8*, i8** %34, align 8, !dbg !2536, !tbaa !1737
  call void @sdsfree(i8* %322) #6, !dbg !2537
  %323 = load %struct.list*, %struct.list** %51, align 8, !dbg !2538, !tbaa !1762
  call void @listRelease(%struct.list* %323) #6, !dbg !2539
  %324 = load %struct.list*, %struct.list** %58, align 8, !dbg !2540, !tbaa !1772
  call void @listRelease(%struct.list* %324) #6, !dbg !2541
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2542
  call void @zfree(i8* nonnull %25) #6, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br label %325, !dbg !2545

; <label>:325:                                    ; preds = %256, %321
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2546
  call void @exit(i32 1) #8, !dbg !2547
  unreachable, !dbg !2547

; <label>:326:                                    ; preds = %258, %267
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2548
  br label %327

; <label>:327:                                    ; preds = %326, %22
  %328 = phi i32 [ -1, %22 ], [ 0, %326 ], !dbg !2549
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  ret i32 %328, !dbg !2548
}

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fileno(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fclose(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @startLoading(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fseek(%struct.__sFILE*, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @rioInitWithFile(%struct._rio*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @rdbLoadRio(%struct._rio*, %struct.rdbSaveInfo*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @loadingProgress(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @ftello(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @processEventsWhileBlocked() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @fgets(i8*, i32, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.redisCommand* @lookupCommand(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @execCommand(%struct.client*) #1

; Function Attrs: noredzone
declare dso_local void @queueMultiCommand(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @stopLoading() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofUpdateCurrentSize() local_unnamed_addr #0 !dbg !2550 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2554
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2555, !tbaa !555
  %4 = icmp eq i64 %3, 0, !dbg !2555
  br i1 %4, label %7, label %5, !dbg !2557

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 @mstime() #6, !dbg !2558
  br label %7, !dbg !2558

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %0 ], !dbg !2558
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2561, !tbaa !448
  %10 = call i32 @fstat(i32 %9, %struct.stat* nonnull %1) #6, !dbg !2564
  %11 = icmp eq i32 %10, -1, !dbg !2565
  br i1 %11, label %12, label %16, !dbg !2566

; <label>:12:                                     ; preds = %7
  %13 = call i32* @__errno() #6, !dbg !2567
  %14 = load i32, i32* %13, align 4, !dbg !2567, !tbaa !423
  %15 = call i8* @strerror(i32 %14) #6, !dbg !2569
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i64 0, i64 0), i8* %15) #6, !dbg !2570
  br label %19, !dbg !2571

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 7, !dbg !2572
  %18 = load i64, i64* %17, align 8, !dbg !2572, !tbaa !2156
  store i64 %18, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2574, !tbaa !509
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2575, !tbaa !555
  %21 = icmp eq i64 %20, 0, !dbg !2575
  br i1 %21, label %30, label %22, !dbg !2577

; <label>:22:                                     ; preds = %19
  %23 = call i64 @mstime() #6, !dbg !2578
  %24 = sub nsw i64 %23, %8, !dbg !2578
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2580, !tbaa !555
  %26 = icmp eq i64 %25, 0, !dbg !2580
  %27 = icmp slt i64 %24, %25, !dbg !2580
  %28 = or i1 %26, %27, !dbg !2580
  br i1 %28, label %30, label %29, !dbg !2580

; <label>:29:                                     ; preds = %22
  call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i64 %24) #6, !dbg !2580
  br label %30, !dbg !2580

; <label>:30:                                     ; preds = %19, %22, %29
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2582
  ret void, !dbg !2582
}

; Function Attrs: noredzone
declare dso_local i32 @truncate(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkObject(%struct._rio*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2583 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2592
  %4 = load i32, i32* %3, align 8, !dbg !2592
  %5 = lshr i32 %4, 4, !dbg !2592
  %6 = trunc i32 %5 to i4, !dbg !2594
  switch i4 %6, label %42 [
    i4 1, label %7
    i4 0, label %12
    i4 -8, label %12
  ], !dbg !2594

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2595
  %9 = bitcast i8** %8 to i64*, !dbg !2595
  %10 = load i64, i64* %9, align 8, !dbg !2595, !tbaa !1208
  %11 = tail call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %10) #6, !dbg !2597
  br label %43, !dbg !2598

; <label>:12:                                     ; preds = %2, %2
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2599
  %14 = load i8*, i8** %13, align 8, !dbg !2599, !tbaa !1208
  %15 = getelementptr inbounds i8, i8* %14, i64 -1, !dbg !2604
  %16 = load i8, i8* %15, align 1, !dbg !2604, !tbaa !476
  %17 = trunc i8 %16 to i3, !dbg !2606
  switch i3 %17, label %39 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !2606

; <label>:18:                                     ; preds = %12
  %19 = lshr i8 %16, 3, !dbg !2607
  %20 = zext i8 %19 to i64, !dbg !2607
  br label %39, !dbg !2608

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %14, i64 -3, !dbg !2609
  %23 = load i8, i8* %22, align 1, !dbg !2610, !tbaa !476
  %24 = zext i8 %23 to i64, !dbg !2609
  br label %39, !dbg !2611

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds i8, i8* %14, i64 -5, !dbg !2612
  %27 = bitcast i8* %26 to i16*, !dbg !2613
  %28 = load i16, i16* %27, align 1, !dbg !2613, !tbaa !494
  %29 = zext i16 %28 to i64, !dbg !2612
  br label %39, !dbg !2614

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds i8, i8* %14, i64 -9, !dbg !2615
  %32 = bitcast i8* %31 to i32*, !dbg !2616
  %33 = load i32, i32* %32, align 1, !dbg !2616, !tbaa !423
  %34 = zext i32 %33 to i64, !dbg !2615
  br label %39, !dbg !2617

; <label>:35:                                     ; preds = %12
  %36 = getelementptr inbounds i8, i8* %14, i64 -17, !dbg !2618
  %37 = bitcast i8* %36 to i64*, !dbg !2619
  %38 = load i64, i64* %37, align 1, !dbg !2619, !tbaa !337
  br label %39, !dbg !2620

; <label>:39:                                     ; preds = %12, %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], [ 0, %12 ], !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  %41 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %14, i64 %40) #6, !dbg !2623
  br label %43, !dbg !2624

; <label>:42:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 916, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2625
  tail call void @_exit(i32 1) #8, !dbg !2625
  unreachable, !dbg !2625

; <label>:43:                                     ; preds = %39, %7
  %44 = phi i64 [ %11, %7 ], [ %41, %39 ]
  %45 = trunc i64 %44 to i32, !dbg !2627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2628
  ret i32 %45, !dbg !2628
}

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteListObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2629 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = tail call i64 @listTypeLength(%struct.redisObject* %2) #6, !dbg !2698
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2700
  %7 = load i32, i32* %6, align 8, !dbg !2700
  %8 = and i32 %7, 240, !dbg !2700
  %9 = icmp eq i32 %8, 144, !dbg !2701
  br i1 %9, label %10, label %63, !dbg !2702

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2703
  %12 = bitcast i8** %11 to %struct.quicklist**, !dbg !2703
  %13 = load %struct.quicklist*, %struct.quicklist** %12, align 8, !dbg !2703, !tbaa !1208
  %14 = tail call %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist* %13, i32 0) #6, !dbg !2705
  %15 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2707
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2707
  %16 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2709
  %17 = icmp eq i32 %16, 0, !dbg !2710
  br i1 %17, label %60, label %18, !dbg !2710

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 4
  %21 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 5
  br label %22, !dbg !2710

; <label>:22:                                     ; preds = %18, %52
  %23 = phi i64 [ 0, %18 ], [ %55, %52 ]
  %24 = phi i64 [ %5, %18 ], [ %56, %52 ]
  %25 = icmp eq i64 %23, 0, !dbg !2711
  br i1 %25, label %26, label %40, !dbg !2712

; <label>:26:                                     ; preds = %22
  %27 = icmp slt i64 %24, 64, !dbg !2713
  %28 = select i1 %27, i64 %24, i64 64, !dbg !2713
  %29 = shl i64 %28, 32, !dbg !2714
  %30 = add i64 %29, 8589934592, !dbg !2714
  %31 = ashr exact i64 %30, 32, !dbg !2714
  %32 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %31) #6, !dbg !2716
  %33 = icmp eq i64 %32, 0, !dbg !2717
  br i1 %33, label %59, label %34, !dbg !2718

; <label>:34:                                     ; preds = %26
  %35 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i64 5) #6, !dbg !2719
  %36 = icmp eq i64 %35, 0, !dbg !2721
  br i1 %36, label %59, label %37, !dbg !2722

; <label>:37:                                     ; preds = %34
  %38 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2723
  %39 = icmp eq i32 %38, 0, !dbg !2725
  br i1 %39, label %59, label %40

; <label>:40:                                     ; preds = %37, %22
  %41 = load i8*, i8** %19, align 8, !dbg !2726, !tbaa !2728
  %42 = icmp eq i8* %41, null, !dbg !2730
  br i1 %42, label %48, label %43, !dbg !2731

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %21, align 8, !dbg !2732, !tbaa !2735
  %45 = zext i32 %44 to i64, !dbg !2736
  %46 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %41, i64 %45) #6, !dbg !2737
  %47 = icmp eq i64 %46, 0, !dbg !2738
  br i1 %47, label %59, label %52, !dbg !2739

; <label>:48:                                     ; preds = %40
  %49 = load i64, i64* %20, align 8, !dbg !2740, !tbaa !2743
  %50 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %49) #6, !dbg !2744
  %51 = icmp eq i64 %50, 0, !dbg !2745
  br i1 %51, label %59, label %52, !dbg !2746

; <label>:52:                                     ; preds = %48, %43
  %53 = add nsw i64 %23, 1, !dbg !2747
  %54 = icmp eq i64 %53, 64, !dbg !2749
  %55 = select i1 %54, i64 0, i64 %53, !dbg !2750
  %56 = add nsw i64 %24, -1, !dbg !2751
  %57 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2709
  %58 = icmp eq i32 %57, 0, !dbg !2710
  br i1 %58, label %60, label %22, !dbg !2710, !llvm.loop !2752

; <label>:59:                                     ; preds = %43, %48, %26, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2754
  br label %61

; <label>:60:                                     ; preds = %52, %10
  call void @quicklistReleaseIterator(%struct.quicklistIter* %14) #6, !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2754
  br label %61

; <label>:61:                                     ; preds = %59, %60
  %62 = phi i32 [ 1, %60 ], [ 0, %59 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2756
  ret i32 %62, !dbg !2756

; <label>:63:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 949, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !2757
  tail call void @_exit(i32 1) #8, !dbg !2757
  unreachable, !dbg !2757
}

; Function Attrs: noredzone
declare dso_local i64 @listTypeLength(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkCount(%struct._rio*, i8 signext, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @quicklistReleaseIterator(%struct.quicklistIter*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2759 {
  %4 = alloca i64, align 8
  %5 = tail call i64 @setTypeSize(%struct.redisObject* %2) #6, !dbg !2798
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2800
  %7 = load i32, i32* %6, align 8, !dbg !2800
  %8 = lshr i32 %7, 4, !dbg !2800
  %9 = trunc i32 %8 to i4, !dbg !2801
  switch i4 %9, label %116 [
    i4 6, label %10
    i4 2, label %51
  ], !dbg !2801

; <label>:10:                                     ; preds = %3
  %11 = bitcast i64* %4 to i8*, !dbg !2803
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2803
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2804
  %13 = bitcast i8** %12 to %struct.intset**, !dbg !2804
  %14 = load %struct.intset*, %struct.intset** %13, align 8, !dbg !2804, !tbaa !1208
  %15 = call zeroext i8 @intsetGet(%struct.intset* %14, i32 0, i64* nonnull %4) #6, !dbg !2806
  %16 = icmp eq i8 %15, 0, !dbg !2807
  br i1 %16, label %50, label %17, !dbg !2807

; <label>:17:                                     ; preds = %10, %40
  %18 = phi i32 [ %46, %40 ], [ 1, %10 ]
  %19 = phi i64 [ %43, %40 ], [ 0, %10 ]
  %20 = phi i64 [ %44, %40 ], [ %5, %10 ]
  %21 = icmp eq i64 %19, 0, !dbg !2808
  br i1 %21, label %22, label %36, !dbg !2809

; <label>:22:                                     ; preds = %17
  %23 = icmp slt i64 %20, 64, !dbg !2810
  %24 = select i1 %23, i64 %20, i64 64, !dbg !2810
  %25 = shl i64 %24, 32, !dbg !2811
  %26 = add i64 %25, 8589934592, !dbg !2811
  %27 = ashr exact i64 %26, 32, !dbg !2811
  %28 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %27) #6, !dbg !2813
  %29 = icmp eq i64 %28, 0, !dbg !2814
  br i1 %29, label %49, label %30, !dbg !2815

; <label>:30:                                     ; preds = %22
  %31 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2816
  %32 = icmp eq i64 %31, 0, !dbg !2818
  br i1 %32, label %49, label %33, !dbg !2819

; <label>:33:                                     ; preds = %30
  %34 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2820
  %35 = icmp eq i32 %34, 0, !dbg !2822
  br i1 %35, label %49, label %36

; <label>:36:                                     ; preds = %33, %17
  %37 = load i64, i64* %4, align 8, !dbg !2823, !tbaa !337
  %38 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %37) #6, !dbg !2825
  %39 = icmp eq i64 %38, 0, !dbg !2826
  br i1 %39, label %49, label %40, !dbg !2827

; <label>:40:                                     ; preds = %36
  %41 = add nsw i64 %19, 1, !dbg !2828
  %42 = icmp eq i64 %41, 64, !dbg !2830
  %43 = select i1 %42, i64 0, i64 %41, !dbg !2831
  %44 = add nsw i64 %20, -1, !dbg !2832
  %45 = load %struct.intset*, %struct.intset** %13, align 8, !dbg !2804, !tbaa !1208
  %46 = add nuw nsw i32 %18, 1, !dbg !2833
  %47 = call zeroext i8 @intsetGet(%struct.intset* %45, i32 %18, i64* nonnull %4) #6, !dbg !2806
  %48 = icmp eq i8 %47, 0, !dbg !2807
  br i1 %48, label %50, label %17, !dbg !2807, !llvm.loop !2834

; <label>:49:                                     ; preds = %36, %22, %30, %33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2836
  br label %117

; <label>:50:                                     ; preds = %40, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2836
  br label %117

; <label>:51:                                     ; preds = %3
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2837
  %53 = bitcast i8** %52 to %struct.dict**, !dbg !2837
  %54 = load %struct.dict*, %struct.dict** %53, align 8, !dbg !2837, !tbaa !1208
  %55 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %54) #6, !dbg !2838
  %56 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %55) #6, !dbg !2840
  %57 = icmp eq %struct.dictEntry* %56, null, !dbg !2842
  br i1 %57, label %115, label %58, !dbg !2843

; <label>:58:                                     ; preds = %51, %108
  %59 = phi %struct.dictEntry* [ %113, %108 ], [ %56, %51 ]
  %60 = phi i64 [ %111, %108 ], [ 0, %51 ]
  %61 = phi i64 [ %112, %108 ], [ %5, %51 ]
  %62 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %59, i64 0, i32 0, !dbg !2844
  %63 = load i8*, i8** %62, align 8, !dbg !2844, !tbaa !2845
  %64 = icmp eq i64 %60, 0, !dbg !2848
  br i1 %64, label %65, label %79, !dbg !2849

; <label>:65:                                     ; preds = %58
  %66 = icmp slt i64 %61, 64, !dbg !2850
  %67 = select i1 %66, i64 %61, i64 64, !dbg !2850
  %68 = shl i64 %67, 32, !dbg !2851
  %69 = add i64 %68, 8589934592, !dbg !2851
  %70 = ashr exact i64 %69, 32, !dbg !2851
  %71 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %70) #6, !dbg !2853
  %72 = icmp eq i64 %71, 0, !dbg !2854
  br i1 %72, label %117, label %73, !dbg !2855

; <label>:73:                                     ; preds = %65
  %74 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2856
  %75 = icmp eq i64 %74, 0, !dbg !2858
  br i1 %75, label %117, label %76, !dbg !2859

; <label>:76:                                     ; preds = %73
  %77 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2860
  %78 = icmp eq i32 %77, 0, !dbg !2862
  br i1 %78, label %117, label %79

; <label>:79:                                     ; preds = %76, %58
  %80 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !2866
  %81 = load i8, i8* %80, align 1, !dbg !2866, !tbaa !476
  %82 = trunc i8 %81 to i3, !dbg !2868
  switch i3 %82, label %104 [
    i3 0, label %83
    i3 1, label %86
    i3 2, label %90
    i3 3, label %95
    i3 -4, label %100
  ], !dbg !2868

; <label>:83:                                     ; preds = %79
  %84 = lshr i8 %81, 3, !dbg !2869
  %85 = zext i8 %84 to i64, !dbg !2869
  br label %104, !dbg !2870

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds i8, i8* %63, i64 -3, !dbg !2871
  %88 = load i8, i8* %87, align 1, !dbg !2872, !tbaa !476
  %89 = zext i8 %88 to i64, !dbg !2871
  br label %104, !dbg !2873

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds i8, i8* %63, i64 -5, !dbg !2874
  %92 = bitcast i8* %91 to i16*, !dbg !2875
  %93 = load i16, i16* %92, align 1, !dbg !2875, !tbaa !494
  %94 = zext i16 %93 to i64, !dbg !2874
  br label %104, !dbg !2876

; <label>:95:                                     ; preds = %79
  %96 = getelementptr inbounds i8, i8* %63, i64 -9, !dbg !2877
  %97 = bitcast i8* %96 to i32*, !dbg !2878
  %98 = load i32, i32* %97, align 1, !dbg !2878, !tbaa !423
  %99 = zext i32 %98 to i64, !dbg !2877
  br label %104, !dbg !2879

; <label>:100:                                    ; preds = %79
  %101 = getelementptr inbounds i8, i8* %63, i64 -17, !dbg !2880
  %102 = bitcast i8* %101 to i64*, !dbg !2881
  %103 = load i64, i64* %102, align 1, !dbg !2881, !tbaa !337
  br label %104, !dbg !2882

; <label>:104:                                    ; preds = %79, %83, %86, %90, %95, %100
  %105 = phi i64 [ %103, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %86 ], [ %85, %83 ], [ 0, %79 ], !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  %106 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %63, i64 %105) #6, !dbg !2885
  %107 = icmp eq i64 %106, 0, !dbg !2886
  br i1 %107, label %117, label %108, !dbg !2887

; <label>:108:                                    ; preds = %104
  %109 = add nsw i64 %60, 1, !dbg !2888
  %110 = icmp eq i64 %109, 64, !dbg !2890
  %111 = select i1 %110, i64 0, i64 %109, !dbg !2891
  %112 = add nsw i64 %61, -1, !dbg !2892
  %113 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %55) #6, !dbg !2840
  %114 = icmp eq %struct.dictEntry* %113, null, !dbg !2842
  br i1 %114, label %115, label %58, !dbg !2843

; <label>:115:                                    ; preds = %108, %51
  tail call void @dictReleaseIterator(%struct.dictIterator* %55) #6, !dbg !2893
  br label %117

; <label>:116:                                    ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 996, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !2894
  tail call void @_exit(i32 1) #8, !dbg !2894
  unreachable, !dbg !2894

; <label>:117:                                    ; preds = %76, %73, %65, %104, %50, %115, %49
  %118 = phi i32 [ 0, %49 ], [ 1, %115 ], [ 1, %50 ], [ 0, %104 ], [ 0, %65 ], [ 0, %73 ], [ 0, %76 ], !dbg !2896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  ret i32 %118, !dbg !2897
}

; Function Attrs: noredzone
declare dso_local i64 @setTypeSize(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local zeroext i8 @intsetGet(%struct.intset*, i32, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteSortedSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2898 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i64 @zsetLength(%struct.redisObject* %2) #6, !dbg !2960
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2962
  %11 = load i32, i32* %10, align 8, !dbg !2962
  %12 = lshr i32 %11, 4, !dbg !2962
  %13 = trunc i32 %12 to i4, !dbg !2963
  switch i4 %13, label %153 [
    i4 5, label %14
    i4 7, label %78
  ], !dbg !2963

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2964
  %16 = load i8*, i8** %15, align 8, !dbg !2964, !tbaa !1208
  %17 = bitcast i8** %4 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2966
  %18 = bitcast i8** %5 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2966
  %19 = bitcast i8** %6 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !2967
  %20 = bitcast i32* %7 to i8*, !dbg !2968
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !2968
  %21 = bitcast i64* %8 to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2969
  %22 = tail call i8* @ziplistIndex(i8* %16, i32 0) #6, !dbg !2970
  store i8* %22, i8** %4, align 8, !dbg !2972, !tbaa !1203
  %23 = icmp eq i8* %22, null, !dbg !2973
  br i1 %23, label %24, label %25, !dbg !2973

; <label>:24:                                     ; preds = %14
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1015) #6, !dbg !2973
  tail call void @_exit(i32 1) #8, !dbg !2973
  unreachable, !dbg !2973

; <label>:25:                                     ; preds = %14
  %26 = tail call i8* @ziplistNext(i8* %16, i8* nonnull %22) #6, !dbg !2974
  store i8* %26, i8** %5, align 8, !dbg !2976, !tbaa !1203
  %27 = icmp eq i8* %26, null, !dbg !2977
  br i1 %27, label %28, label %29, !dbg !2977

; <label>:28:                                     ; preds = %25
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1017) #6, !dbg !2977
  tail call void @_exit(i32 1) #8, !dbg !2977
  unreachable, !dbg !2977

; <label>:29:                                     ; preds = %25, %70
  %30 = phi i8* [ %75, %70 ], [ %22, %25 ]
  %31 = phi i64 [ %73, %70 ], [ 0, %25 ]
  %32 = phi i64 [ %74, %70 ], [ %9, %25 ]
  %33 = call i32 @ziplistGet(i8* nonnull %30, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !2981
  %34 = icmp eq i32 %33, 0, !dbg !2981
  br i1 %34, label %35, label %36, !dbg !2981

; <label>:35:                                     ; preds = %29
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1020) #6, !dbg !2981
  call void @_exit(i32 1) #8, !dbg !2981
  unreachable, !dbg !2981

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %5, align 8, !dbg !2982, !tbaa !1203
  %38 = call double @zzlGetScore(i8* %37) #6, !dbg !2983
  %39 = icmp eq i64 %31, 0, !dbg !2985
  br i1 %39, label %40, label %55, !dbg !2986

; <label>:40:                                     ; preds = %36
  %41 = icmp slt i64 %32, 64, !dbg !2987
  %42 = select i1 %41, i64 %32, i64 64, !dbg !2987
  %43 = trunc i64 %42 to i32, !dbg !2987
  %44 = shl i32 %43, 1, !dbg !2989
  %45 = add nsw i32 %44, 2, !dbg !2991
  %46 = sext i32 %45 to i64, !dbg !2992
  %47 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %46) #6, !dbg !2993
  %48 = icmp eq i64 %47, 0, !dbg !2994
  br i1 %48, label %77, label %49, !dbg !2995

; <label>:49:                                     ; preds = %40
  %50 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !2996
  %51 = icmp eq i64 %50, 0, !dbg !2998
  br i1 %51, label %77, label %52, !dbg !2999

; <label>:52:                                     ; preds = %49
  %53 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3000
  %54 = icmp eq i32 %53, 0, !dbg !3002
  br i1 %54, label %77, label %55

; <label>:55:                                     ; preds = %52, %36
  %56 = call i64 @rioWriteBulkDouble(%struct._rio* %0, double %38) #6, !dbg !3003
  %57 = icmp eq i64 %56, 0, !dbg !3005
  br i1 %57, label %155, label %58, !dbg !3006

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %6, align 8, !dbg !3007, !tbaa !1203
  %60 = icmp eq i8* %59, null, !dbg !3009
  br i1 %60, label %66, label %61, !dbg !3010

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %7, align 4, !dbg !3011, !tbaa !423
  %63 = zext i32 %62 to i64, !dbg !3011
  %64 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %59, i64 %63) #6, !dbg !3014
  %65 = icmp eq i64 %64, 0, !dbg !3015
  br i1 %65, label %156, label %70, !dbg !3016

; <label>:66:                                     ; preds = %58
  %67 = load i64, i64* %8, align 8, !dbg !3017, !tbaa !3020
  %68 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %67) #6, !dbg !3021
  %69 = icmp eq i64 %68, 0, !dbg !3022
  br i1 %69, label %157, label %70, !dbg !3023

; <label>:70:                                     ; preds = %66, %61
  call void @zzlNext(i8* %16, i8** nonnull %4, i8** nonnull %5) #6, !dbg !3024
  %71 = add nsw i64 %31, 1, !dbg !3025
  %72 = icmp eq i64 %71, 64, !dbg !3027
  %73 = select i1 %72, i64 0, i64 %71, !dbg !3028
  %74 = add nsw i64 %32, -1, !dbg !3029
  %75 = load i8*, i8** %4, align 8, !dbg !3030, !tbaa !1203
  %76 = icmp eq i8* %75, null, !dbg !3031
  br i1 %76, label %154, label %29, !dbg !3032, !llvm.loop !3033

; <label>:77:                                     ; preds = %52, %49, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3035
  br label %158

; <label>:78:                                     ; preds = %3
  %79 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3036
  %80 = bitcast i8** %79 to %struct.zset**, !dbg !3036
  %81 = load %struct.zset*, %struct.zset** %80, align 8, !dbg !3036, !tbaa !1208
  %82 = getelementptr inbounds %struct.zset, %struct.zset* %81, i64 0, i32 0, !dbg !3038
  %83 = load %struct.dict*, %struct.dict** %82, align 8, !dbg !3038, !tbaa !3039
  %84 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %83) #6, !dbg !3041
  %85 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %84) #6, !dbg !3043
  %86 = icmp eq %struct.dictEntry* %85, null, !dbg !3045
  br i1 %86, label %152, label %87, !dbg !3046

; <label>:87:                                     ; preds = %78, %145
  %88 = phi %struct.dictEntry* [ %150, %145 ], [ %85, %78 ]
  %89 = phi i64 [ %148, %145 ], [ 0, %78 ]
  %90 = phi i64 [ %149, %145 ], [ %9, %78 ]
  %91 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %88, i64 0, i32 0, !dbg !3047
  %92 = load i8*, i8** %91, align 8, !dbg !3047, !tbaa !2845
  %93 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %88, i64 0, i32 1, i32 0, !dbg !3049
  %94 = bitcast i8** %93 to double**, !dbg !3049
  %95 = load double*, double** %94, align 8, !dbg !3049, !tbaa !476
  %96 = icmp eq i64 %89, 0, !dbg !3051
  br i1 %96, label %97, label %112, !dbg !3052

; <label>:97:                                     ; preds = %87
  %98 = icmp slt i64 %90, 64, !dbg !3053
  %99 = select i1 %98, i64 %90, i64 64, !dbg !3053
  %100 = trunc i64 %99 to i32, !dbg !3053
  %101 = shl i32 %100, 1, !dbg !3055
  %102 = add nsw i32 %101, 2, !dbg !3057
  %103 = sext i32 %102 to i64, !dbg !3058
  %104 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %103) #6, !dbg !3059
  %105 = icmp eq i64 %104, 0, !dbg !3060
  br i1 %105, label %158, label %106, !dbg !3061

; <label>:106:                                    ; preds = %97
  %107 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !3062
  %108 = icmp eq i64 %107, 0, !dbg !3064
  br i1 %108, label %158, label %109, !dbg !3065

; <label>:109:                                    ; preds = %106
  %110 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3066
  %111 = icmp eq i32 %110, 0, !dbg !3068
  br i1 %111, label %158, label %112

; <label>:112:                                    ; preds = %109, %87
  %113 = load double, double* %95, align 8, !dbg !3069, !tbaa !3071
  %114 = tail call i64 @rioWriteBulkDouble(%struct._rio* %0, double %113) #6, !dbg !3072
  %115 = icmp eq i64 %114, 0, !dbg !3073
  br i1 %115, label %158, label %116, !dbg !3074

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !3078
  %118 = load i8, i8* %117, align 1, !dbg !3078, !tbaa !476
  %119 = trunc i8 %118 to i3, !dbg !3080
  switch i3 %119, label %141 [
    i3 0, label %120
    i3 1, label %123
    i3 2, label %127
    i3 3, label %132
    i3 -4, label %137
  ], !dbg !3080

; <label>:120:                                    ; preds = %116
  %121 = lshr i8 %118, 3, !dbg !3081
  %122 = zext i8 %121 to i64, !dbg !3081
  br label %141, !dbg !3082

; <label>:123:                                    ; preds = %116
  %124 = getelementptr inbounds i8, i8* %92, i64 -3, !dbg !3083
  %125 = load i8, i8* %124, align 1, !dbg !3084, !tbaa !476
  %126 = zext i8 %125 to i64, !dbg !3083
  br label %141, !dbg !3085

; <label>:127:                                    ; preds = %116
  %128 = getelementptr inbounds i8, i8* %92, i64 -5, !dbg !3086
  %129 = bitcast i8* %128 to i16*, !dbg !3087
  %130 = load i16, i16* %129, align 1, !dbg !3087, !tbaa !494
  %131 = zext i16 %130 to i64, !dbg !3086
  br label %141, !dbg !3088

; <label>:132:                                    ; preds = %116
  %133 = getelementptr inbounds i8, i8* %92, i64 -9, !dbg !3089
  %134 = bitcast i8* %133 to i32*, !dbg !3090
  %135 = load i32, i32* %134, align 1, !dbg !3090, !tbaa !423
  %136 = zext i32 %135 to i64, !dbg !3089
  br label %141, !dbg !3091

; <label>:137:                                    ; preds = %116
  %138 = getelementptr inbounds i8, i8* %92, i64 -17, !dbg !3092
  %139 = bitcast i8* %138 to i64*, !dbg !3093
  %140 = load i64, i64* %139, align 1, !dbg !3093, !tbaa !337
  br label %141, !dbg !3094

; <label>:141:                                    ; preds = %116, %120, %123, %127, %132, %137
  %142 = phi i64 [ %140, %137 ], [ %136, %132 ], [ %131, %127 ], [ %126, %123 ], [ %122, %120 ], [ 0, %116 ], !dbg !3095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3096
  %143 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %92, i64 %142) #6, !dbg !3097
  %144 = icmp eq i64 %143, 0, !dbg !3098
  br i1 %144, label %158, label %145, !dbg !3099

; <label>:145:                                    ; preds = %141
  %146 = add nsw i64 %89, 1, !dbg !3100
  %147 = icmp eq i64 %146, 64, !dbg !3102
  %148 = select i1 %147, i64 0, i64 %146, !dbg !3103
  %149 = add nsw i64 %90, -1, !dbg !3104
  %150 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %84) #6, !dbg !3043
  %151 = icmp eq %struct.dictEntry* %150, null, !dbg !3045
  br i1 %151, label %152, label %87, !dbg !3046

; <label>:152:                                    ; preds = %145, %78
  tail call void @dictReleaseIterator(%struct.dictIterator* %84) #6, !dbg !3105
  br label %158

; <label>:153:                                    ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1065, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !3106
  tail call void @_exit(i32 1) #8, !dbg !3106
  unreachable, !dbg !3106

; <label>:154:                                    ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3035
  br label %158

; <label>:155:                                    ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3035
  br label %158

; <label>:156:                                    ; preds = %61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3035
  br label %158

; <label>:157:                                    ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3035
  br label %158

; <label>:158:                                    ; preds = %109, %106, %97, %141, %112, %152, %154, %77, %157, %156, %155
  %159 = phi i32 [ 0, %77 ], [ 0, %155 ], [ 0, %156 ], [ 0, %157 ], [ 1, %154 ], [ 1, %152 ], [ 0, %112 ], [ 0, %141 ], [ 0, %97 ], [ 0, %106 ], [ 0, %109 ], !dbg !3108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3109
  ret i32 %159, !dbg !3109
}

; Function Attrs: noredzone
declare dso_local i64 @zsetLength(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @zzlGetScore(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkDouble(%struct._rio*, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @zzlNext(i8*, i8**, i8**) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteHashObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !3110 {
  %4 = tail call i64 @hashTypeLength(%struct.redisObject* %2) #6, !dbg !3136
  %5 = tail call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* %2) #6, !dbg !3138
  %6 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3140
  %7 = icmp eq i32 %6, -1, !dbg !3141
  br i1 %7, label %40, label %8, !dbg !3142

; <label>:8:                                      ; preds = %3, %33
  %9 = phi i64 [ %37, %33 ], [ %4, %3 ]
  %10 = phi i64 [ %36, %33 ], [ 0, %3 ]
  %11 = icmp eq i64 %10, 0, !dbg !3143
  br i1 %11, label %12, label %27, !dbg !3144

; <label>:12:                                     ; preds = %8
  %13 = icmp slt i64 %9, 64, !dbg !3145
  %14 = select i1 %13, i64 %9, i64 64, !dbg !3145
  %15 = trunc i64 %14 to i32, !dbg !3145
  %16 = shl i32 %15, 1, !dbg !3147
  %17 = add nsw i32 %16, 2, !dbg !3149
  %18 = sext i32 %17 to i64, !dbg !3150
  %19 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %18) #6, !dbg !3151
  %20 = icmp eq i64 %19, 0, !dbg !3152
  br i1 %20, label %41, label %21, !dbg !3153

; <label>:21:                                     ; preds = %12
  %22 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i64 5) #6, !dbg !3154
  %23 = icmp eq i64 %22, 0, !dbg !3156
  br i1 %23, label %41, label %24, !dbg !3157

; <label>:24:                                     ; preds = %21
  %25 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3158
  %26 = icmp eq i32 %25, 0, !dbg !3160
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %24, %8
  %28 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 1) #9, !dbg !3161
  %29 = icmp eq i32 %28, 0, !dbg !3163
  br i1 %29, label %41, label %30, !dbg !3164

; <label>:30:                                     ; preds = %27
  %31 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 2) #9, !dbg !3165
  %32 = icmp eq i32 %31, 0, !dbg !3167
  br i1 %32, label %41, label %33, !dbg !3168

; <label>:33:                                     ; preds = %30
  %34 = add nsw i64 %10, 1, !dbg !3169
  %35 = icmp eq i64 %34, 64, !dbg !3171
  %36 = select i1 %35, i64 0, i64 %34, !dbg !3172
  %37 = add nsw i64 %9, -1, !dbg !3173
  %38 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3140
  %39 = icmp eq i32 %38, -1, !dbg !3141
  br i1 %39, label %40, label %8, !dbg !3142, !llvm.loop !3174

; <label>:40:                                     ; preds = %33, %3
  tail call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %5) #6, !dbg !3176
  br label %41, !dbg !3177

; <label>:41:                                     ; preds = %24, %21, %12, %30, %27, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %27 ], [ 0, %30 ], [ 0, %12 ], [ 0, %21 ], [ 0, %24 ], !dbg !3178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3179
  ret i32 %42, !dbg !3179
}

; Function Attrs: noredzone
declare dso_local i64 @hashTypeLength(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @hashTypeNext(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @rioWriteHashIteratorCursor(%struct._rio*, %struct.hashTypeIterator*, i32) unnamed_addr #0 !dbg !3180 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !3198
  %8 = load i32, i32* %7, align 8, !dbg !3198, !tbaa !3199
  switch i32 %8, label %53 [
    i32 5, label %9
    i32 2, label %24
  ], !dbg !3201

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8** %4 to i8*, !dbg !3202
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3202
  store i8* null, i8** %4, align 8, !dbg !3203, !tbaa !1203
  %11 = bitcast i32* %5 to i8*, !dbg !3204
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7, !dbg !3204
  store i32 -1, i32* %5, align 4, !dbg !3205, !tbaa !423
  %12 = bitcast i64* %6 to i8*, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3206
  store i64 9223372036854775807, i64* %6, align 8, !dbg !3207, !tbaa !3020
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #6, !dbg !3208
  %13 = load i8*, i8** %4, align 8, !dbg !3209, !tbaa !1203
  %14 = icmp eq i8* %13, null, !dbg !3209
  br i1 %14, label %19, label %15, !dbg !3211

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !3212, !tbaa !423
  %17 = zext i32 %16 to i64, !dbg !3212
  %18 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %13, i64 %17) #6, !dbg !3213
  br label %22, !dbg !3214

; <label>:19:                                     ; preds = %9
  %20 = load i64, i64* %6, align 8, !dbg !3215, !tbaa !3020
  %21 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %20) #6, !dbg !3216
  br label %22, !dbg !3217

; <label>:22:                                     ; preds = %19, %15
  %23 = phi i64 [ %18, %15 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !3218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3218
  br label %54

; <label>:24:                                     ; preds = %3
  %25 = tail call i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nonnull %1, i32 %2) #6, !dbg !3219
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !3223
  %27 = load i8, i8* %26, align 1, !dbg !3223, !tbaa !476
  %28 = trunc i8 %27 to i3, !dbg !3225
  switch i3 %28, label %50 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !3225

; <label>:29:                                     ; preds = %24
  %30 = lshr i8 %27, 3, !dbg !3226
  %31 = zext i8 %30 to i64, !dbg !3226
  br label %50, !dbg !3227

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !3228
  %34 = load i8, i8* %33, align 1, !dbg !3229, !tbaa !476
  %35 = zext i8 %34 to i64, !dbg !3228
  br label %50, !dbg !3230

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !3231
  %38 = bitcast i8* %37 to i16*, !dbg !3232
  %39 = load i16, i16* %38, align 1, !dbg !3232, !tbaa !494
  %40 = zext i16 %39 to i64, !dbg !3231
  br label %50, !dbg !3233

; <label>:41:                                     ; preds = %24
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !3234
  %43 = bitcast i8* %42 to i32*, !dbg !3235
  %44 = load i32, i32* %43, align 1, !dbg !3235, !tbaa !423
  %45 = zext i32 %44 to i64, !dbg !3234
  br label %50, !dbg !3236

; <label>:46:                                     ; preds = %24
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !3237
  %48 = bitcast i8* %47 to i64*, !dbg !3238
  %49 = load i64, i64* %48, align 1, !dbg !3238, !tbaa !337
  br label %50, !dbg !3239

; <label>:50:                                     ; preds = %24, %29, %32, %36, %41, %46
  %51 = phi i64 [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], [ 0, %24 ], !dbg !3240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3241
  %52 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %25, i64 %51) #6, !dbg !3242
  br label %54

; <label>:53:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1092, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i64 0, i64 0)) #6, !dbg !3243
  tail call void @_exit(i32 1) #8, !dbg !3243
  unreachable, !dbg !3243

; <label>:54:                                     ; preds = %50, %22
  %55 = phi i64 [ %23, %22 ], [ %52, %50 ]
  %56 = trunc i64 %55 to i32, !dbg !3244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3245
  ret i32 %56, !dbg !3245
}

; Function Attrs: noredzone
declare dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkStreamID(%struct._rio*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !3246 {
  %3 = tail call i8* @sdsempty() #6, !dbg !3263
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !3264
  %5 = load i64, i64* %4, align 8, !dbg !3264, !tbaa !3265
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !3267
  %7 = load i64, i64* %6, align 8, !dbg !3267, !tbaa !3268
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i64 %5, i64 %7) #6, !dbg !3269
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !3274
  %10 = load i8, i8* %9, align 1, !dbg !3274, !tbaa !476
  %11 = trunc i8 %10 to i3, !dbg !3276
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !3276

; <label>:12:                                     ; preds = %2
  %13 = lshr i8 %10, 3, !dbg !3277
  %14 = zext i8 %13 to i64, !dbg !3277
  br label %33, !dbg !3278

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !3279
  %17 = load i8, i8* %16, align 1, !dbg !3280, !tbaa !476
  %18 = zext i8 %17 to i64, !dbg !3279
  br label %33, !dbg !3281

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !3282
  %21 = bitcast i8* %20 to i16*, !dbg !3283
  %22 = load i16, i16* %21, align 1, !dbg !3283, !tbaa !494
  %23 = zext i16 %22 to i64, !dbg !3282
  br label %33, !dbg !3284

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !3285
  %26 = bitcast i8* %25 to i32*, !dbg !3286
  %27 = load i32, i32* %26, align 1, !dbg !3286, !tbaa !423
  %28 = zext i32 %27 to i64, !dbg !3285
  br label %33, !dbg !3287

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !3288
  %31 = bitcast i8* %30 to i64*, !dbg !3289
  %32 = load i64, i64* %31, align 1, !dbg !3289, !tbaa !337
  br label %33, !dbg !3290

; <label>:33:                                     ; preds = %2, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %2 ], !dbg !3291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3292
  %35 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %8, i64 %34) #6, !dbg !3293
  %36 = trunc i64 %35 to i32, !dbg !3293
  %37 = icmp eq i32 %36, 0, !dbg !3295
  br i1 %37, label %39, label %38, !dbg !3296

; <label>:38:                                     ; preds = %33
  tail call void @sdsfree(i8* %8) #6, !dbg !3297
  br label %39, !dbg !3298

; <label>:39:                                     ; preds = %33, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3299
  ret i32 %36, !dbg !3299
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteStreamPendingEntry(%struct._rio*, %struct.redisObject* nocapture readonly, i8*, i64, %struct.streamConsumer* nocapture readonly, i8*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !3300 {
  %8 = alloca %struct.streamID, align 8
  %9 = bitcast %struct.streamID* %8 to i8*, !dbg !3351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3351
  call void @streamDecodeID(i8* %5, %struct.streamID* nonnull %8) #6, !dbg !3353
  %10 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 12) #6, !dbg !3354
  %11 = icmp eq i64 %10, 0, !dbg !3356
  br i1 %11, label %81, label %12, !dbg !3357

; <label>:12:                                     ; preds = %7
  %13 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 6) #6, !dbg !3358
  %14 = icmp eq i64 %13, 0, !dbg !3360
  br i1 %14, label %81, label %15, !dbg !3361

; <label>:15:                                     ; preds = %12
  %16 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3362
  %17 = icmp eq i32 %16, 0, !dbg !3364
  br i1 %17, label %81, label %18, !dbg !3365

; <label>:18:                                     ; preds = %15
  %19 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %2, i64 %3) #6, !dbg !3366
  %20 = icmp eq i64 %19, 0, !dbg !3368
  br i1 %20, label %81, label %21, !dbg !3369

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %4, i64 0, i32 1, !dbg !3370
  %23 = load i8*, i8** %22, align 8, !dbg !3370, !tbaa !3372
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !3376
  %25 = load i8, i8* %24, align 1, !dbg !3376, !tbaa !476
  %26 = trunc i8 %25 to i3, !dbg !3378
  switch i3 %26, label %48 [
    i3 0, label %27
    i3 1, label %30
    i3 2, label %34
    i3 3, label %39
    i3 -4, label %44
  ], !dbg !3378

; <label>:27:                                     ; preds = %21
  %28 = lshr i8 %25, 3, !dbg !3379
  %29 = zext i8 %28 to i64, !dbg !3379
  br label %48, !dbg !3380

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds i8, i8* %23, i64 -3, !dbg !3381
  %32 = load i8, i8* %31, align 1, !dbg !3382, !tbaa !476
  %33 = zext i8 %32 to i64, !dbg !3381
  br label %48, !dbg !3383

; <label>:34:                                     ; preds = %21
  %35 = getelementptr inbounds i8, i8* %23, i64 -5, !dbg !3384
  %36 = bitcast i8* %35 to i16*, !dbg !3385
  %37 = load i16, i16* %36, align 1, !dbg !3385, !tbaa !494
  %38 = zext i16 %37 to i64, !dbg !3384
  br label %48, !dbg !3386

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds i8, i8* %23, i64 -9, !dbg !3387
  %41 = bitcast i8* %40 to i32*, !dbg !3388
  %42 = load i32, i32* %41, align 1, !dbg !3388, !tbaa !423
  %43 = zext i32 %42 to i64, !dbg !3387
  br label %48, !dbg !3389

; <label>:44:                                     ; preds = %21
  %45 = getelementptr inbounds i8, i8* %23, i64 -17, !dbg !3390
  %46 = bitcast i8* %45 to i64*, !dbg !3391
  %47 = load i64, i64* %46, align 1, !dbg !3391, !tbaa !337
  br label %48, !dbg !3392

; <label>:48:                                     ; preds = %21, %27, %30, %34, %39, %44
  %49 = phi i64 [ %47, %44 ], [ %43, %39 ], [ %38, %34 ], [ %33, %30 ], [ %29, %27 ], [ 0, %21 ], !dbg !3393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  %50 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %23, i64 %49) #6, !dbg !3395
  %51 = icmp eq i64 %50, 0, !dbg !3396
  br i1 %51, label %81, label %52, !dbg !3397

; <label>:52:                                     ; preds = %48
  %53 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3398
  %54 = icmp eq i64 %53, 0, !dbg !3400
  br i1 %54, label %81, label %55, !dbg !3401

; <label>:55:                                     ; preds = %52
  %56 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %8) #9, !dbg !3402
  %57 = icmp eq i32 %56, 0, !dbg !3404
  br i1 %57, label %81, label %58, !dbg !3405

; <label>:58:                                     ; preds = %55
  %59 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i64 4) #6, !dbg !3406
  %60 = icmp eq i64 %59, 0, !dbg !3408
  br i1 %60, label %81, label %61, !dbg !3409

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 0, !dbg !3410
  %63 = load i64, i64* %62, align 8, !dbg !3410, !tbaa !3412
  %64 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %63) #6, !dbg !3414
  %65 = icmp eq i64 %64, 0, !dbg !3415
  br i1 %65, label %81, label %66, !dbg !3416

; <label>:66:                                     ; preds = %61
  %67 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i64 10) #6, !dbg !3417
  %68 = icmp eq i64 %67, 0, !dbg !3419
  br i1 %68, label %81, label %69, !dbg !3420

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 1, !dbg !3421
  %71 = load i64, i64* %70, align 8, !dbg !3421, !tbaa !3423
  %72 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %71) #6, !dbg !3424
  %73 = icmp eq i64 %72, 0, !dbg !3425
  br i1 %73, label %81, label %74, !dbg !3426

; <label>:74:                                     ; preds = %69
  %75 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i64 6) #6, !dbg !3427
  %76 = icmp eq i64 %75, 0, !dbg !3429
  br i1 %76, label %81, label %77, !dbg !3430

; <label>:77:                                     ; preds = %74
  %78 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i64 5) #6, !dbg !3431
  %79 = icmp ne i64 %78, 0, !dbg !3433
  %80 = zext i1 %79 to i32, !dbg !3434
  br label %81, !dbg !3434

; <label>:81:                                     ; preds = %77, %74, %69, %66, %61, %58, %55, %52, %48, %18, %15, %12, %7
  %82 = phi i32 [ 0, %7 ], [ 0, %12 ], [ 0, %15 ], [ 0, %18 ], [ 0, %48 ], [ 0, %52 ], [ 0, %55 ], [ 0, %58 ], [ 0, %61 ], [ 0, %66 ], [ 0, %69 ], [ 0, %74 ], [ %80, %77 ], !dbg !3435
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3436
  ret i32 %82, !dbg !3436
}

; Function Attrs: noredzone
declare dso_local void @streamDecodeID(i8*, %struct.streamID*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteStreamObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3437 {
  %4 = alloca %struct.streamIterator, align 8
  %5 = alloca %struct.streamID, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.raxIterator, align 8
  %12 = alloca %struct.raxIterator, align 8
  %13 = alloca %struct.raxIterator, align 8
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3533
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !3533
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !3533, !tbaa !1208
  %17 = bitcast %struct.streamIterator* %4 to i8*, !dbg !3535
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3535
  call void @streamIteratorStart(%struct.streamIterator* nonnull %4, %struct.stream* %16, %struct.streamID* null, %struct.streamID* null, i32 0) #6, !dbg !3537
  %18 = bitcast %struct.streamID* %5 to i8*, !dbg !3538
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3538
  %19 = bitcast i64* %6 to i8*, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3539
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !3540
  %21 = load i64, i64* %20, align 8, !dbg !3540, !tbaa !3541
  %22 = icmp eq i64 %21, 0, !dbg !3543
  br i1 %22, label %63, label %23, !dbg !3544

; <label>:23:                                     ; preds = %3
  %24 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3547
  %25 = icmp eq i32 %24, 0, !dbg !3548
  br i1 %25, label %88, label %26, !dbg !3548

; <label>:26:                                     ; preds = %23
  %27 = bitcast i8** %7 to i8*
  %28 = bitcast i8** %8 to i8*
  %29 = bitcast i64* %9 to i8*
  %30 = bitcast i64* %10 to i8*
  br label %34, !dbg !3548

; <label>:31:                                     ; preds = %49
  %32 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3547
  %33 = icmp eq i32 %32, 0, !dbg !3548
  br i1 %33, label %88, label %34, !dbg !3548

; <label>:34:                                     ; preds = %26, %31
  %35 = load i64, i64* %6, align 8, !dbg !3549, !tbaa !337
  %36 = shl i64 %35, 1, !dbg !3551
  %37 = add nsw i64 %36, 3, !dbg !3552
  %38 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %37) #6, !dbg !3553
  %39 = icmp eq i64 %38, 0, !dbg !3554
  br i1 %39, label %176, label %40, !dbg !3555

; <label>:40:                                     ; preds = %34
  %41 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3556
  %42 = icmp eq i64 %41, 0, !dbg !3558
  br i1 %42, label %176, label %43, !dbg !3559

; <label>:43:                                     ; preds = %40
  %44 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3560
  %45 = icmp eq i32 %44, 0, !dbg !3562
  br i1 %45, label %176, label %46, !dbg !3563

; <label>:46:                                     ; preds = %43
  %47 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %5) #9, !dbg !3564
  %48 = icmp eq i32 %47, 0, !dbg !3566
  br i1 %48, label %176, label %49, !dbg !3567

; <label>:49:                                     ; preds = %46, %58
  %50 = load i64, i64* %6, align 8, !dbg !3568, !tbaa !337
  %51 = add nsw i64 %50, -1, !dbg !3568
  store i64 %51, i64* %6, align 8, !dbg !3568, !tbaa !337
  %52 = icmp eq i64 %50, 0, !dbg !3569
  br i1 %52, label %31, label %53, !dbg !3569, !llvm.loop !3570

; <label>:53:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3572
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3572
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3573
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %4, i8** nonnull %7, i8** nonnull %8, i64* nonnull %9, i64* nonnull %10) #6, !dbg !3578
  %54 = load i8*, i8** %7, align 8, !dbg !3579, !tbaa !1203
  %55 = load i64, i64* %9, align 8, !dbg !3581, !tbaa !337
  %56 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %54, i64 %55) #6, !dbg !3582
  %57 = icmp eq i64 %56, 0, !dbg !3583
  br i1 %57, label %175, label %58, !dbg !3584

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %8, align 8, !dbg !3585, !tbaa !1203
  %60 = load i64, i64* %10, align 8, !dbg !3587, !tbaa !337
  %61 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %59, i64 %60) #6, !dbg !3588
  %62 = icmp eq i64 %61, 0, !dbg !3589
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3590
  br i1 %62, label %176, label %49, !llvm.loop !3591

; <label>:63:                                     ; preds = %3
  %64 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 7) #6, !dbg !3592
  %65 = icmp eq i64 %64, 0, !dbg !3595
  br i1 %65, label %176, label %66, !dbg !3596

; <label>:66:                                     ; preds = %63
  %67 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3597
  %68 = icmp eq i64 %67, 0, !dbg !3599
  br i1 %68, label %176, label %69, !dbg !3600

; <label>:69:                                     ; preds = %66
  %70 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3601
  %71 = icmp eq i32 %70, 0, !dbg !3603
  br i1 %71, label %176, label %72, !dbg !3604

; <label>:72:                                     ; preds = %69
  %73 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i64 6) #6, !dbg !3605
  %74 = icmp eq i64 %73, 0, !dbg !3607
  br i1 %74, label %176, label %75, !dbg !3608

; <label>:75:                                     ; preds = %72
  %76 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3609
  %77 = icmp eq i64 %76, 0, !dbg !3611
  br i1 %77, label %176, label %78, !dbg !3612

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3613
  %80 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %79) #9, !dbg !3615
  %81 = icmp eq i32 %80, 0, !dbg !3616
  br i1 %81, label %176, label %82, !dbg !3617

; <label>:82:                                     ; preds = %78
  %83 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1) #6, !dbg !3618
  %84 = icmp eq i64 %83, 0, !dbg !3620
  br i1 %84, label %176, label %85, !dbg !3621

; <label>:85:                                     ; preds = %82
  %86 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1) #6, !dbg !3622
  %87 = icmp eq i64 %86, 0, !dbg !3624
  br i1 %87, label %176, label %88, !dbg !3625

; <label>:88:                                     ; preds = %31, %23, %85
  %89 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 3) #6, !dbg !3626
  %90 = icmp eq i64 %89, 0, !dbg !3628
  br i1 %90, label %176, label %91, !dbg !3629

; <label>:91:                                     ; preds = %88
  %92 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i64 6) #6, !dbg !3630
  %93 = icmp eq i64 %92, 0, !dbg !3632
  br i1 %93, label %176, label %94, !dbg !3633

; <label>:94:                                     ; preds = %91
  %95 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3634
  %96 = icmp eq i32 %95, 0, !dbg !3636
  br i1 %96, label %176, label %97, !dbg !3637

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3638
  %99 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %98) #9, !dbg !3640
  %100 = icmp eq i32 %99, 0, !dbg !3641
  br i1 %100, label %176, label %101, !dbg !3642

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 3, !dbg !3643
  %103 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !3643, !tbaa !3644
  %104 = icmp eq %struct.rax* %103, null, !dbg !3645
  br i1 %104, label %174, label %105, !dbg !3646

; <label>:105:                                    ; preds = %101
  %106 = bitcast %struct.raxIterator* %11 to i8*, !dbg !3647
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3647
  call void @raxStart(%struct.raxIterator* nonnull %11, %struct.rax* nonnull %103) #6, !dbg !3649
  %107 = call i32 @raxSeek(%struct.raxIterator* nonnull %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3650
  %108 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3651
  %109 = icmp eq i32 %108, 0, !dbg !3652
  br i1 %109, label %173, label %110, !dbg !3652

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 3
  %112 = bitcast i8** %111 to %struct.streamCG**
  %113 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 2
  %114 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 4
  %115 = bitcast %struct.raxIterator* %12 to i8*
  %116 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %12, i64 0, i32 3
  %117 = bitcast i8** %116 to %struct.streamConsumer**
  %118 = bitcast %struct.raxIterator* %13 to i8*
  %119 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %13, i64 0, i32 3
  %120 = bitcast i8** %119 to %struct.streamNACK**
  %121 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %13, i64 0, i32 2
  br label %122, !dbg !3652

; <label>:122:                                    ; preds = %110, %169
  %123 = load %struct.streamCG*, %struct.streamCG** %112, align 8, !dbg !3653, !tbaa !3654
  %124 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 5) #6, !dbg !3658
  %125 = icmp eq i64 %124, 0, !dbg !3660
  br i1 %125, label %172, label %126, !dbg !3661

; <label>:126:                                    ; preds = %122
  %127 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6) #6, !dbg !3662
  %128 = icmp eq i64 %127, 0, !dbg !3664
  br i1 %128, label %172, label %129, !dbg !3665

; <label>:129:                                    ; preds = %126
  %130 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i64 6) #6, !dbg !3666
  %131 = icmp eq i64 %130, 0, !dbg !3668
  br i1 %131, label %172, label %132, !dbg !3669

; <label>:132:                                    ; preds = %129
  %133 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3670
  %134 = icmp eq i32 %133, 0, !dbg !3672
  br i1 %134, label %172, label %135, !dbg !3673

; <label>:135:                                    ; preds = %132
  %136 = load i8*, i8** %113, align 8, !dbg !3674, !tbaa !3676
  %137 = load i64, i64* %114, align 8, !dbg !3677, !tbaa !3678
  %138 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %136, i64 %137) #6, !dbg !3679
  %139 = icmp eq i64 %138, 0, !dbg !3680
  br i1 %139, label %172, label %140, !dbg !3681

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %123, i64 0, i32 0, !dbg !3682
  %142 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* %141) #9, !dbg !3684
  %143 = icmp eq i32 %142, 0, !dbg !3685
  br i1 %143, label %172, label %144, !dbg !3686

; <label>:144:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3687
  %145 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %123, i64 0, i32 2, !dbg !3688
  %146 = load %struct.rax*, %struct.rax** %145, align 8, !dbg !3688, !tbaa !3689
  call void @raxStart(%struct.raxIterator* nonnull %12, %struct.rax* %146) #6, !dbg !3692
  %147 = call i32 @raxSeek(%struct.raxIterator* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3693
  %148 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3694
  %149 = icmp eq i32 %148, 0, !dbg !3695
  br i1 %149, label %169, label %150, !dbg !3695

; <label>:150:                                    ; preds = %144, %166
  %151 = load %struct.streamConsumer*, %struct.streamConsumer** %117, align 8, !dbg !3696, !tbaa !3654
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3698
  %152 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %151, i64 0, i32 2, !dbg !3699
  %153 = load %struct.rax*, %struct.rax** %152, align 8, !dbg !3699, !tbaa !3700
  call void @raxStart(%struct.raxIterator* nonnull %13, %struct.rax* %153) #6, !dbg !3702
  %154 = call i32 @raxSeek(%struct.raxIterator* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3703
  br label %155, !dbg !3704

; <label>:155:                                    ; preds = %158, %150
  %156 = call i32 @raxNext(%struct.raxIterator* nonnull %13) #6, !dbg !3705
  %157 = icmp eq i32 %156, 0, !dbg !3704
  br i1 %157, label %166, label %158, !dbg !3704

; <label>:158:                                    ; preds = %155
  %159 = load %struct.streamNACK*, %struct.streamNACK** %120, align 8, !dbg !3706, !tbaa !3654
  %160 = load i8*, i8** %113, align 8, !dbg !3708, !tbaa !3676
  %161 = load i64, i64* %114, align 8, !dbg !3710, !tbaa !3678
  %162 = load i8*, i8** %121, align 8, !dbg !3711, !tbaa !3676
  %163 = call i32 @rioWriteStreamPendingEntry(%struct._rio* %0, %struct.redisObject* %1, i8* %160, i64 %161, %struct.streamConsumer* %151, i8* %162, %struct.streamNACK* %159) #9, !dbg !3712
  %164 = icmp eq i32 %163, 0, !dbg !3713
  br i1 %164, label %165, label %155, !llvm.loop !3714

; <label>:165:                                    ; preds = %158
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3716
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3717
  br label %172

; <label>:166:                                    ; preds = %155
  call void @raxStop(%struct.raxIterator* nonnull %13) #6, !dbg !3718
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3716
  %167 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3694
  %168 = icmp eq i32 %167, 0, !dbg !3695
  br i1 %168, label %169, label %150, !dbg !3695

; <label>:169:                                    ; preds = %166, %144
  call void @raxStop(%struct.raxIterator* nonnull %12) #6, !dbg !3719
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3717
  %170 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3651
  %171 = icmp eq i32 %170, 0, !dbg !3652
  br i1 %171, label %173, label %122, !dbg !3652

; <label>:172:                                    ; preds = %122, %126, %129, %132, %135, %140, %165
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3720
  br label %176

; <label>:173:                                    ; preds = %169, %105
  call void @raxStop(%struct.raxIterator* nonnull %11) #6, !dbg !3721
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3720
  br label %174

; <label>:174:                                    ; preds = %173, %101
  call void @streamIteratorStop(%struct.streamIterator* nonnull %4) #6, !dbg !3722
  br label %176, !dbg !3723

; <label>:175:                                    ; preds = %53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3590
  br label %176

; <label>:176:                                    ; preds = %46, %43, %40, %34, %58, %172, %97, %94, %91, %88, %85, %82, %78, %75, %72, %69, %66, %63, %175, %174
  %177 = phi i32 [ 1, %174 ], [ 0, %175 ], [ 0, %63 ], [ 0, %66 ], [ 0, %69 ], [ 0, %72 ], [ 0, %75 ], [ 0, %78 ], [ 0, %82 ], [ 0, %85 ], [ 0, %88 ], [ 0, %91 ], [ 0, %94 ], [ 0, %97 ], [ 0, %172 ], [ 0, %58 ], [ 0, %34 ], [ 0, %40 ], [ 0, %43 ], [ 0, %46 ], !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3725
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3725
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3725
  ret i32 %177, !dbg !3725
}

; Function Attrs: noredzone
declare dso_local void @streamIteratorStart(%struct.streamIterator*, %struct.stream*, %struct.streamID*, %struct.streamID*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @streamIteratorGetID(%struct.streamIterator*, %struct.streamID*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @streamIteratorGetField(%struct.streamIterator*, i8**, i8**, i64*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @raxNext(%struct.raxIterator*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @raxStop(%struct.raxIterator*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @streamIteratorStop(%struct.streamIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteModuleObject(%struct._rio*, %struct.redisObject*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3726 {
  %4 = alloca %struct.RedisModuleIO, align 8
  %5 = bitcast %struct.RedisModuleIO* %4 to i8*, !dbg !3815
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3815
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3816
  %7 = bitcast i8** %6 to %struct.moduleValue**, !dbg !3816
  %8 = load %struct.moduleValue*, %struct.moduleValue** %7, align 8, !dbg !3816, !tbaa !1208
  %9 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 0, !dbg !3818
  %10 = load %struct.RedisModuleType*, %struct.RedisModuleType** %9, align 8, !dbg !3818, !tbaa !3819
  %11 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 1, !dbg !3822
  store %struct._rio* %0, %struct._rio** %11, align 8, !dbg !3822, !tbaa !3824
  %12 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 2, !dbg !3822
  store %struct.RedisModuleType* %10, %struct.RedisModuleType** %12, align 8, !dbg !3822, !tbaa !3826
  %13 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 0, !dbg !3822
  store i64 0, i64* %13, align 8, !dbg !3822, !tbaa !3827
  %14 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 3, !dbg !3822
  store i32 0, i32* %14, align 8, !dbg !3822, !tbaa !3828
  %15 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 4, !dbg !3822
  store i32 0, i32* %15, align 4, !dbg !3822, !tbaa !3829
  %16 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 6, !dbg !3822
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !3822, !tbaa !3830
  %17 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 5, !dbg !3822
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %17, align 8, !dbg !3822, !tbaa !3831
  %18 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %10, i64 0, i32 4, !dbg !3832
  %19 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %18, align 8, !dbg !3832, !tbaa !3833
  %20 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 1, !dbg !3835
  %21 = load i8*, i8** %20, align 8, !dbg !3835, !tbaa !3836
  call void %19(%struct.RedisModuleIO* nonnull %4, %struct.redisObject* %1, i8* %21) #6, !dbg !3838
  %22 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %17, align 8, !dbg !3839, !tbaa !3831
  %23 = icmp eq %struct.RedisModuleCtx* %22, null, !dbg !3841
  br i1 %23, label %27, label %24, !dbg !3842

; <label>:24:                                     ; preds = %3
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %22) #6, !dbg !3843
  %25 = bitcast %struct.RedisModuleCtx** %17 to i8**, !dbg !3845
  %26 = load i8*, i8** %25, align 8, !dbg !3845, !tbaa !3831
  call void @zfree(i8* %26) #6, !dbg !3846
  br label %27, !dbg !3847

; <label>:27:                                     ; preds = %3, %24
  %28 = load i32, i32* %14, align 8, !dbg !3848, !tbaa !3828
  %29 = icmp eq i32 %28, 0, !dbg !3849
  %30 = zext i1 %29 to i32, !dbg !3849
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3851
  ret i32 %30, !dbg !3851
}

; Function Attrs: noredzone
declare dso_local void @moduleFreeContext(%struct.RedisModuleCtx*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @aofReadDiffFromParent() local_unnamed_addr #0 !dbg !3852 {
  %1 = alloca [65536 x i8], align 16
  %2 = getelementptr inbounds [65536 x i8], [65536 x i8]* %1, i64 0, i64 0, !dbg !3862
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !3862
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3865, !tbaa !951
  %4 = call i64 @read(i32 %3, i8* nonnull %2, i64 65536) #6, !dbg !3866
  %5 = icmp sgt i64 %4, 0, !dbg !3868
  br i1 %5, label %6, label %15, !dbg !3869

; <label>:6:                                      ; preds = %0, %6
  %7 = phi i64 [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !3870, !tbaa !3872
  %10 = call i8* @sdscatlen(i8* %9, i8* nonnull %2, i64 %7) #6, !dbg !3873
  store i8* %10, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !3874, !tbaa !3872
  %11 = add nsw i64 %7, %8, !dbg !3875
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3865, !tbaa !951
  %13 = call i64 @read(i32 %12, i8* nonnull %2, i64 65536) #6, !dbg !3866
  %14 = icmp sgt i64 %13, 0, !dbg !3868
  br i1 %14, label %6, label %15, !dbg !3869, !llvm.loop !3876

; <label>:15:                                     ; preds = %6, %0
  %16 = phi i64 [ 0, %0 ], [ %11, %6 ], !dbg !3878
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !3879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3880
  ret i64 %16, !dbg !3880
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileRio(%struct._rio*) local_unnamed_addr #0 !dbg !3881 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct.RedisModuleIO, align 8
  %4 = alloca [17 x i8], align 16
  %5 = alloca %struct.redisObject, align 8
  %6 = alloca [14 x i8], align 1
  %7 = alloca [20 x i8], align 16
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3922, !tbaa !3923
  %9 = icmp sgt i32 %8, 0, !dbg !3924
  br i1 %9, label %10, label %219, !dbg !3925

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds [17 x i8], [17 x i8]* %4, i64 0, i64 0
  %12 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct._rio, %struct._rio* %0, i64 0, i32 6
  %16 = bitcast %struct.redisObject* %5 to i8*
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 1
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2
  %20 = bitcast i8** %19 to i64*
  %21 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %22 = bitcast %struct.RedisModuleIO* %3 to i8*
  %23 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 1
  %24 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 2
  %25 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 0
  %26 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 3
  %27 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 4
  %28 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 6
  %29 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 5
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %31 = bitcast %struct.RedisModuleCtx** %29 to i8**
  %32 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0
  br label %33, !dbg !3925

; <label>:33:                                     ; preds = %10, %210
  %34 = phi i32 [ %8, %10 ], [ %211, %210 ]
  %35 = phi i64 [ 0, %10 ], [ %213, %210 ]
  %36 = phi i64 [ 0, %10 ], [ %212, %210 ]
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %11) #7, !dbg !3926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %11, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @rewriteAppendOnlyFileRio.selectcmd, i64 0, i64 0), i64 17, i1 false), !dbg !3927
  %37 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3928, !tbaa !3929
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 %35, !dbg !3930
  %39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 0, i32 0, !dbg !3932
  %40 = load %struct.dict*, %struct.dict** %39, align 8, !dbg !3932, !tbaa !3933
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 0, i32 3, !dbg !3936
  %42 = load i64, i64* %41, align 8, !dbg !3936, !tbaa !3938
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 1, i32 3, !dbg !3936
  %44 = load i64, i64* %43, align 8, !dbg !3936, !tbaa !3938
  %45 = sub i64 0, %44, !dbg !3940
  %46 = icmp eq i64 %42, %45, !dbg !3940
  br i1 %46, label %210, label %47, !dbg !3941

; <label>:47:                                     ; preds = %33
  %48 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %40) #6, !dbg !3942
  br label %49, !dbg !3957

; <label>:49:                                     ; preds = %65, %47
  %50 = phi i64 [ 16, %47 ], [ %67, %65 ]
  %51 = phi i8* [ %11, %47 ], [ %66, %65 ]
  %52 = load i64, i64* %12, align 8, !dbg !3958, !tbaa !3959
  %53 = icmp ne i64 %52, 0, !dbg !3961
  %54 = icmp ult i64 %52, %50, !dbg !3962
  %55 = and i1 %53, %54, !dbg !3963
  %56 = select i1 %55, i64 %52, i64 %50, !dbg !3963
  %57 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !3965, !tbaa !3967
  %58 = icmp eq void (%struct._rio*, i8*, i64)* %57, null, !dbg !3968
  br i1 %58, label %60, label %59, !dbg !3969

; <label>:59:                                     ; preds = %49
  call void %57(%struct._rio* nonnull %0, i8* %51, i64 %56) #6, !dbg !3970
  br label %60, !dbg !3970

; <label>:60:                                     ; preds = %59, %49
  %61 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !3971, !tbaa !3973
  %62 = call i64 %61(%struct._rio* nonnull %0, i8* %51, i64 %56) #6, !dbg !3974
  %63 = icmp eq i64 %62, 0, !dbg !3975
  br i1 %63, label %64, label %65, !dbg !3976

; <label>:64:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3977
  br label %216, !dbg !3978

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %51, i64 %56, !dbg !3979
  %67 = sub i64 %50, %56, !dbg !3980
  %68 = load i64, i64* %15, align 8, !dbg !3981, !tbaa !3982
  %69 = add i64 %68, %56, !dbg !3981
  store i64 %69, i64* %15, align 8, !dbg !3981, !tbaa !3982
  %70 = icmp eq i64 %67, 0, !dbg !3957
  br i1 %70, label %71, label %49, !dbg !3957

; <label>:71:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3977
  %72 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %35) #6, !dbg !3983
  %73 = icmp eq i64 %72, 0, !dbg !3985
  br i1 %73, label %216, label %74, !dbg !3986

; <label>:74:                                     ; preds = %71
  %75 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %48) #6, !dbg !3987
  %76 = icmp eq %struct.dictEntry* %75, null, !dbg !3989
  br i1 %76, label %207, label %77, !dbg !3990

; <label>:77:                                     ; preds = %74, %203
  %78 = phi %struct.dictEntry* [ %205, %203 ], [ %75, %74 ]
  %79 = phi i64 [ %204, %203 ], [ %36, %74 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !3991
  %80 = bitcast %struct.dictEntry* %78 to i64*, !dbg !3992
  %81 = load i64, i64* %80, align 8, !dbg !3992, !tbaa !2845
  %82 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %78, i64 0, i32 1, i32 0, !dbg !3994
  %83 = bitcast i8** %82 to %struct.redisObject**, !dbg !3994
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !3994, !tbaa !476
  store i32 1, i32* %17, align 4, !dbg !3996, !tbaa !3998
  store i32 0, i32* %18, align 8, !dbg !3996
  store i64 %81, i64* %20, align 8, !dbg !3996, !tbaa !1208
  %85 = call i64 @getExpire(%struct.redisDb* %38, %struct.redisObject* nonnull %5) #6, !dbg !4000
  %86 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %84, i64 0, i32 0, !dbg !4002
  %87 = load i32, i32* %86, align 8, !dbg !4002
  %88 = trunc i32 %87 to i4, !dbg !4003
  switch i4 %88, label %152 [
    i4 0, label %89
    i4 1, label %120
    i4 2, label %123
    i4 3, label %126
    i4 4, label %129
    i4 6, label %132
    i4 5, label %135
  ], !dbg !4003

; <label>:89:                                     ; preds = %77
  call void @llvm.lifetime.start.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %21, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @rewriteAppendOnlyFileRio.cmd, i64 0, i64 0), i64 14, i1 false), !dbg !4005
  br label %90, !dbg !4011

; <label>:90:                                     ; preds = %106, %89
  %91 = phi i64 [ 13, %89 ], [ %108, %106 ]
  %92 = phi i8* [ %21, %89 ], [ %107, %106 ]
  %93 = load i64, i64* %12, align 8, !dbg !4012, !tbaa !3959
  %94 = icmp ne i64 %93, 0, !dbg !4013
  %95 = icmp ult i64 %93, %91, !dbg !4014
  %96 = and i1 %94, %95, !dbg !4015
  %97 = select i1 %96, i64 %93, i64 %91, !dbg !4015
  %98 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4017, !tbaa !3967
  %99 = icmp eq void (%struct._rio*, i8*, i64)* %98, null, !dbg !4018
  br i1 %99, label %101, label %100, !dbg !4019

; <label>:100:                                    ; preds = %90
  call void %98(%struct._rio* nonnull %0, i8* %92, i64 %97) #6, !dbg !4020
  br label %101, !dbg !4020

; <label>:101:                                    ; preds = %100, %90
  %102 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4021, !tbaa !3973
  %103 = call i64 %102(%struct._rio* nonnull %0, i8* %92, i64 %97) #6, !dbg !4022
  %104 = icmp eq i64 %103, 0, !dbg !4023
  br i1 %104, label %105, label %106, !dbg !4024

; <label>:105:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4025
  br label %118, !dbg !4026

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds i8, i8* %92, i64 %97, !dbg !4027
  %108 = sub i64 %91, %97, !dbg !4028
  %109 = load i64, i64* %15, align 8, !dbg !4029, !tbaa !3982
  %110 = add i64 %109, %97, !dbg !4029
  store i64 %110, i64* %15, align 8, !dbg !4029, !tbaa !3982
  %111 = icmp eq i64 %108, 0, !dbg !4011
  br i1 %111, label %112, label %90, !dbg !4011

; <label>:112:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4025
  %113 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !4030
  %114 = icmp eq i32 %113, 0, !dbg !4032
  br i1 %114, label %118, label %115, !dbg !4033

; <label>:115:                                    ; preds = %112
  %116 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* %84) #9, !dbg !4034
  %117 = icmp eq i32 %116, 0, !dbg !4036
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %112, %115, %105
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4037
  br label %202

; <label>:119:                                    ; preds = %115
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4037
  br label %153

; <label>:120:                                    ; preds = %77
  %121 = call i32 @rewriteListObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %84) #9, !dbg !4038
  %122 = icmp eq i32 %121, 0, !dbg !4042
  br i1 %122, label %202, label %153, !dbg !4043

; <label>:123:                                    ; preds = %77
  %124 = call i32 @rewriteSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %84) #9, !dbg !4044
  %125 = icmp eq i32 %124, 0, !dbg !4048
  br i1 %125, label %202, label %153, !dbg !4049

; <label>:126:                                    ; preds = %77
  %127 = call i32 @rewriteSortedSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %84) #9, !dbg !4050
  %128 = icmp eq i32 %127, 0, !dbg !4054
  br i1 %128, label %202, label %153, !dbg !4055

; <label>:129:                                    ; preds = %77
  %130 = call i32 @rewriteHashObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %84) #9, !dbg !4056
  %131 = icmp eq i32 %130, 0, !dbg !4060
  br i1 %131, label %202, label %153, !dbg !4061

; <label>:132:                                    ; preds = %77
  %133 = call i32 @rewriteStreamObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %84) #9, !dbg !4062
  %134 = icmp eq i32 %133, 0, !dbg !4066
  br i1 %134, label %202, label %153, !dbg !4067

; <label>:135:                                    ; preds = %77
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %22) #7, !dbg !4075
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %84, i64 0, i32 2, !dbg !4076
  %137 = bitcast i8** %136 to %struct.moduleValue**, !dbg !4076
  %138 = load %struct.moduleValue*, %struct.moduleValue** %137, align 8, !dbg !4076, !tbaa !1208
  %139 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %138, i64 0, i32 0, !dbg !4078
  %140 = load %struct.RedisModuleType*, %struct.RedisModuleType** %139, align 8, !dbg !4078, !tbaa !3819
  store %struct._rio* %0, %struct._rio** %23, align 8, !dbg !4080, !tbaa !3824
  store %struct.RedisModuleType* %140, %struct.RedisModuleType** %24, align 8, !dbg !4080, !tbaa !3826
  store i64 0, i64* %25, align 8, !dbg !4080, !tbaa !3827
  store i32 0, i32* %26, align 8, !dbg !4080, !tbaa !3828
  store i32 0, i32* %27, align 4, !dbg !4080, !tbaa !3829
  store %struct.redisObject* %5, %struct.redisObject** %28, align 8, !dbg !4080, !tbaa !3830
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %29, align 8, !dbg !4080, !tbaa !3831
  %141 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %140, i64 0, i32 4, !dbg !4081
  %142 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %141, align 8, !dbg !4081, !tbaa !3833
  %143 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %138, i64 0, i32 1, !dbg !4082
  %144 = load i8*, i8** %143, align 8, !dbg !4082, !tbaa !3836
  call void %142(%struct.RedisModuleIO* nonnull %3, %struct.redisObject* nonnull %5, i8* %144) #6, !dbg !4084
  %145 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %29, align 8, !dbg !4085, !tbaa !3831
  %146 = icmp eq %struct.RedisModuleCtx* %145, null, !dbg !4086
  br i1 %146, label %149, label %147, !dbg !4087

; <label>:147:                                    ; preds = %135
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %145) #6, !dbg !4088
  %148 = load i8*, i8** %31, align 8, !dbg !4089, !tbaa !3831
  call void @zfree(i8* %148) #6, !dbg !4090
  br label %149, !dbg !4091

; <label>:149:                                    ; preds = %135, %147
  %150 = load i32, i32* %26, align 8, !dbg !4092, !tbaa !3828
  %151 = icmp eq i32 %150, 0, !dbg !4093
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %22) #7, !dbg !4094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4095
  br i1 %151, label %153, label %202, !dbg !4096

; <label>:152:                                    ; preds = %77
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1339, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !4097
  call void @_exit(i32 1) #8, !dbg !4097
  unreachable, !dbg !4097

; <label>:153:                                    ; preds = %149, %119, %120, %126, %132, %129, %123
  %154 = icmp eq i64 %85, -1, !dbg !4099
  br i1 %154, label %186, label %155, !dbg !4100

; <label>:155:                                    ; preds = %153
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4101
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %30, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @rewriteAppendOnlyFileRio.cmd.74, i64 0, i64 0), i64 20, i1 false), !dbg !4102
  br label %156, !dbg !4108

; <label>:156:                                    ; preds = %172, %155
  %157 = phi i64 [ 19, %155 ], [ %174, %172 ]
  %158 = phi i8* [ %30, %155 ], [ %173, %172 ]
  %159 = load i64, i64* %12, align 8, !dbg !4109, !tbaa !3959
  %160 = icmp ne i64 %159, 0, !dbg !4110
  %161 = icmp ult i64 %159, %157, !dbg !4111
  %162 = and i1 %160, %161, !dbg !4112
  %163 = select i1 %162, i64 %159, i64 %157, !dbg !4112
  %164 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4114, !tbaa !3967
  %165 = icmp eq void (%struct._rio*, i8*, i64)* %164, null, !dbg !4115
  br i1 %165, label %167, label %166, !dbg !4116

; <label>:166:                                    ; preds = %156
  call void %164(%struct._rio* nonnull %0, i8* %158, i64 %163) #6, !dbg !4117
  br label %167, !dbg !4117

; <label>:167:                                    ; preds = %166, %156
  %168 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4118, !tbaa !3973
  %169 = call i64 %168(%struct._rio* nonnull %0, i8* %158, i64 %163) #6, !dbg !4119
  %170 = icmp eq i64 %169, 0, !dbg !4120
  br i1 %170, label %171, label %172, !dbg !4121

; <label>:171:                                    ; preds = %167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4122
  br label %184, !dbg !4123

; <label>:172:                                    ; preds = %167
  %173 = getelementptr inbounds i8, i8* %158, i64 %163, !dbg !4124
  %174 = sub i64 %157, %163, !dbg !4125
  %175 = load i64, i64* %15, align 8, !dbg !4126, !tbaa !3982
  %176 = add i64 %175, %163, !dbg !4126
  store i64 %176, i64* %15, align 8, !dbg !4126, !tbaa !3982
  %177 = icmp eq i64 %174, 0, !dbg !4108
  br i1 %177, label %178, label %156, !dbg !4108

; <label>:178:                                    ; preds = %172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4122
  %179 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !4127
  %180 = icmp eq i32 %179, 0, !dbg !4129
  br i1 %180, label %184, label %181, !dbg !4130

; <label>:181:                                    ; preds = %178
  %182 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %85) #6, !dbg !4131
  %183 = icmp eq i64 %182, 0, !dbg !4133
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %178, %181, %171
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4134
  br label %202

; <label>:185:                                    ; preds = %181
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4134
  br label %186

; <label>:186:                                    ; preds = %185, %153
  %187 = load i64, i64* %15, align 8, !dbg !4135, !tbaa !3982
  %188 = add i64 %79, 10240, !dbg !4136
  %189 = icmp ugt i64 %187, %188, !dbg !4137
  br i1 %189, label %190, label %203, !dbg !4138

; <label>:190:                                    ; preds = %186
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %32) #7, !dbg !4139
  %191 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4141, !tbaa !951
  %192 = call i64 @read(i32 %191, i8* nonnull %32, i64 65536) #6, !dbg !4142
  %193 = icmp sgt i64 %192, 0, !dbg !4144
  br i1 %193, label %194, label %201, !dbg !4145

; <label>:194:                                    ; preds = %190, %194
  %195 = phi i64 [ %199, %194 ], [ %192, %190 ]
  %196 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4146, !tbaa !3872
  %197 = call i8* @sdscatlen(i8* %196, i8* nonnull %32, i64 %195) #6, !dbg !4147
  store i8* %197, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4148, !tbaa !3872
  %198 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4141, !tbaa !951
  %199 = call i64 @read(i32 %198, i8* nonnull %32, i64 65536) #6, !dbg !4142
  %200 = icmp sgt i64 %199, 0, !dbg !4144
  br i1 %200, label %194, label %201, !dbg !4145, !llvm.loop !3876

; <label>:201:                                    ; preds = %194, %190
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %32) #7, !dbg !4149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4150
  br label %203, !dbg !4151

; <label>:202:                                    ; preds = %149, %120, %123, %126, %129, %132, %118, %184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4152
  br label %216

; <label>:203:                                    ; preds = %186, %201
  %204 = phi i64 [ %187, %201 ], [ %79, %186 ], !dbg !4153
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4152
  %205 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %48) #6, !dbg !3987
  %206 = icmp eq %struct.dictEntry* %205, null, !dbg !3989
  br i1 %206, label %207, label %77, !dbg !3990

; <label>:207:                                    ; preds = %203, %74
  %208 = phi i64 [ %36, %74 ], [ %204, %203 ], !dbg !4154
  call void @dictReleaseIterator(%struct.dictIterator* %48) #6, !dbg !4155
  %209 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3922, !tbaa !3923
  br label %210, !dbg !4156

; <label>:210:                                    ; preds = %207, %33
  %211 = phi i32 [ %209, %207 ], [ %34, %33 ], !dbg !3922
  %212 = phi i64 [ %208, %207 ], [ %36, %33 ], !dbg !4153
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4156
  %213 = add nuw nsw i64 %35, 1, !dbg !4157
  %214 = sext i32 %211 to i64, !dbg !3924
  %215 = icmp slt i64 %213, %214, !dbg !3924
  br i1 %215, label %33, label %219, !dbg !3925, !llvm.loop !4158

; <label>:216:                                    ; preds = %71, %64, %202
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4156
  %217 = icmp eq %struct.dictIterator* %48, null, !dbg !4160
  br i1 %217, label %219, label %218, !dbg !4162

; <label>:218:                                    ; preds = %216
  call void @dictReleaseIterator(%struct.dictIterator* nonnull %48) #6, !dbg !4163
  br label %219, !dbg !4163

; <label>:219:                                    ; preds = %210, %1, %218, %216
  %220 = phi i32 [ -1, %216 ], [ -1, %218 ], [ 0, %1 ], [ 0, %210 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4164
  ret i32 %220, !dbg !4164
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !4165 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct._rio, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = bitcast %struct._rio* %3 to i8*, !dbg !4183
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4183
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !4184
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4184
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4187
  %9 = tail call i32 @getpid() #6, !dbg !4188
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i32 %9) #6, !dbg !4189
  %11 = call %struct.__sFILE* @fopen(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #6, !dbg !4190
  %12 = icmp eq %struct.__sFILE* %11, null, !dbg !4192
  br i1 %12, label %13, label %17, !dbg !4194

; <label>:13:                                     ; preds = %1
  %14 = call i32* @__errno() #6, !dbg !4195
  %15 = load i32, i32* %14, align 4, !dbg !4195, !tbaa !423
  %16 = call i8* @strerror(i32 %15) #6, !dbg !4197
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i64 0, i64 0), i8* %16) #6, !dbg !4198
  br label %214, !dbg !4199

; <label>:17:                                     ; preds = %1
  %18 = call i8* @sdsempty() #6, !dbg !4200
  store i8* %18, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4201, !tbaa !3872
  call void @rioInitWithFile(%struct._rio* nonnull %3, %struct.__sFILE* nonnull %11) #6, !dbg !4203
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 138), align 8, !dbg !4204, !tbaa !4206
  %20 = icmp eq i32 %19, 0, !dbg !4207
  br i1 %20, label %22, label %21, !dbg !4208

; <label>:21:                                     ; preds = %17
  call void @rioSetAutoSync(%struct._rio* nonnull %3, i64 33554432) #6, !dbg !4209
  br label %22, !dbg !4209

; <label>:22:                                     ; preds = %17, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 143), align 4, !dbg !4210, !tbaa !4211
  %24 = icmp eq i32 %23, 0, !dbg !4212
  br i1 %24, label %33, label %25, !dbg !4213

; <label>:25:                                     ; preds = %22
  %26 = bitcast i32* %6 to i8*, !dbg !4214
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4214
  %27 = call i32 @rdbSaveRio(%struct._rio* nonnull %3, i32* nonnull %6, i32 1, %struct.rdbSaveInfo* null) #6, !dbg !4216
  %28 = icmp eq i32 %27, -1, !dbg !4218
  br i1 %28, label %30, label %29, !dbg !4219

; <label>:29:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4220
  br label %36

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %6, align 4, !dbg !4221, !tbaa !423
  %32 = call i32* @__errno() #6, !dbg !4223
  store i32 %31, i32* %32, align 4, !dbg !4224, !tbaa !423
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4220
  br label %208

; <label>:33:                                     ; preds = %22
  %34 = call i32 @rewriteAppendOnlyFileRio(%struct._rio* nonnull %3) #9, !dbg !4225
  %35 = icmp eq i32 %34, -1, !dbg !4228
  br i1 %35, label %208, label %36, !dbg !4229

; <label>:36:                                     ; preds = %29, %33
  %37 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4230
  %38 = icmp eq i32 %37, -1, !dbg !4232
  br i1 %38, label %208, label %39, !dbg !4233

; <label>:39:                                     ; preds = %36
  %40 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4234
  %41 = call i32 @fsync(i32 %40) #6, !dbg !4236
  %42 = icmp eq i32 %41, -1, !dbg !4237
  br i1 %42, label %208, label %43, !dbg !4238

; <label>:43:                                     ; preds = %39
  %44 = call i64 @mstime() #6, !dbg !4240
  %45 = call i64 @mstime() #6, !dbg !4242
  %46 = sub nsw i64 %45, %44, !dbg !4243
  %47 = icmp slt i64 %46, 1000, !dbg !4244
  br i1 %47, label %48, label %76, !dbg !4245

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0
  br label %50, !dbg !4245

; <label>:50:                                     ; preds = %48, %57
  %51 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4246, !tbaa !951
  %53 = call i32 @aeWait(i32 %52, i32 1, i64 1) #6, !dbg !4248
  %54 = icmp slt i32 %53, 1, !dbg !4249
  br i1 %54, label %55, label %64, !dbg !4250

; <label>:55:                                     ; preds = %50
  %56 = add nsw i32 %51, 1, !dbg !4251
  br label %57, !dbg !4253

; <label>:57:                                     ; preds = %55, %75
  %58 = phi i32 [ %56, %55 ], [ 0, %75 ]
  %59 = call i64 @mstime() #6, !dbg !4242
  %60 = sub nsw i64 %59, %44, !dbg !4243
  %61 = icmp slt i64 %60, 1000, !dbg !4244
  %62 = icmp slt i32 %58, 20, !dbg !4254
  %63 = and i1 %62, %61, !dbg !4255
  br i1 %63, label %50, label %76, !dbg !4245, !llvm.loop !4256

; <label>:64:                                     ; preds = %50
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4258
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4260, !tbaa !951
  %66 = call i64 @read(i32 %65, i8* nonnull %49, i64 65536) #6, !dbg !4261
  %67 = icmp sgt i64 %66, 0, !dbg !4263
  br i1 %67, label %68, label %75, !dbg !4264

; <label>:68:                                     ; preds = %64, %68
  %69 = phi i64 [ %73, %68 ], [ %66, %64 ]
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4265, !tbaa !3872
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %49, i64 %69) #6, !dbg !4266
  store i8* %71, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4267, !tbaa !3872
  %72 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4260, !tbaa !951
  %73 = call i64 @read(i32 %72, i8* nonnull %49, i64 65536) #6, !dbg !4261
  %74 = icmp sgt i64 %73, 0, !dbg !4263
  br i1 %74, label %68, label %75, !dbg !4264, !llvm.loop !3876

; <label>:75:                                     ; preds = %68, %64
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4269
  br label %57, !dbg !4245

; <label>:76:                                     ; preds = %57, %43
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4270, !tbaa !954
  %78 = call i64 @write(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4272
  %79 = icmp eq i64 %78, 1, !dbg !4273
  br i1 %79, label %80, label %208, !dbg !4274

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4275, !tbaa !962
  %82 = call i32 @anetNonBlock(i8* null, i32 %81) #6, !dbg !4277
  %83 = icmp eq i32 %82, 0, !dbg !4278
  br i1 %83, label %84, label %208, !dbg !4279

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4280, !tbaa !962
  %86 = call i64 @syncRead(i32 %85, i8* nonnull %5, i64 1, i64 5000) #6, !dbg !4282
  %87 = icmp eq i64 %86, 1, !dbg !4283
  %88 = load i8, i8* %5, align 1, !dbg !4284
  %89 = icmp eq i8 %88, 33, !dbg !4285
  %90 = and i1 %87, %89, !dbg !4286
  br i1 %90, label %91, label %208, !dbg !4286

; <label>:91:                                     ; preds = %84
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !4287
  %92 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0, !dbg !4288
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4288
  %93 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4290, !tbaa !951
  %94 = call i64 @read(i32 %93, i8* nonnull %92, i64 65536) #6, !dbg !4291
  %95 = icmp sgt i64 %94, 0, !dbg !4293
  br i1 %95, label %96, label %103, !dbg !4294

; <label>:96:                                     ; preds = %91, %96
  %97 = phi i64 [ %101, %96 ], [ %94, %91 ]
  %98 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4295, !tbaa !3872
  %99 = call i8* @sdscatlen(i8* %98, i8* nonnull %92, i64 %97) #6, !dbg !4296
  store i8* %99, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4297, !tbaa !3872
  %100 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4290, !tbaa !951
  %101 = call i64 @read(i32 %100, i8* nonnull %92, i64 65536) #6, !dbg !4291
  %102 = icmp sgt i64 %101, 0, !dbg !4293
  br i1 %102, label %96, label %103, !dbg !4294, !llvm.loop !3876

; <label>:103:                                    ; preds = %96, %91
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4299
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4300, !tbaa !3872
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !4303
  %106 = load i8, i8* %105, align 1, !dbg !4303, !tbaa !476
  %107 = trunc i8 %106 to i3, !dbg !4305
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !4305

; <label>:108:                                    ; preds = %103
  %109 = lshr i8 %106, 3, !dbg !4306
  %110 = zext i8 %109 to i64, !dbg !4306
  br label %129, !dbg !4307

; <label>:111:                                    ; preds = %103
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !4308
  %113 = load i8, i8* %112, align 1, !dbg !4309, !tbaa !476
  %114 = zext i8 %113 to i64, !dbg !4308
  br label %129, !dbg !4310

; <label>:115:                                    ; preds = %103
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !4311
  %117 = bitcast i8* %116 to i16*, !dbg !4312
  %118 = load i16, i16* %117, align 1, !dbg !4312, !tbaa !494
  %119 = zext i16 %118 to i64, !dbg !4311
  br label %129, !dbg !4313

; <label>:120:                                    ; preds = %103
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !4314
  %122 = bitcast i8* %121 to i32*, !dbg !4315
  %123 = load i32, i32* %122, align 1, !dbg !4315, !tbaa !423
  %124 = zext i32 %123 to i64, !dbg !4314
  br label %129, !dbg !4316

; <label>:125:                                    ; preds = %103
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !4317
  %127 = bitcast i8* %126 to i64*, !dbg !4318
  %128 = load i64, i64* %127, align 1, !dbg !4318, !tbaa !337
  br label %129, !dbg !4319

; <label>:129:                                    ; preds = %103, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %103 ], !dbg !4320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4321
  %131 = uitofp i64 %130 to double, !dbg !4322
  %132 = fmul double %131, 0x3EB0000000000000, !dbg !4323
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), double %132) #6, !dbg !4324
  %133 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4325, !tbaa !3872
  %134 = getelementptr inbounds i8, i8* %133, i64 -1, !dbg !4329
  %135 = load i8, i8* %134, align 1, !dbg !4329, !tbaa !476
  %136 = trunc i8 %135 to i3, !dbg !4331
  switch i3 %136, label %137 [
    i3 0, label %138
    i3 1, label %141
    i3 2, label %145
    i3 3, label %150
    i3 -4, label %155
  ], !dbg !4331

; <label>:137:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4332
  br label %189, !dbg !4337

; <label>:138:                                    ; preds = %129
  %139 = lshr i8 %135, 3, !dbg !4338
  %140 = zext i8 %139 to i64, !dbg !4338
  br label %159, !dbg !4339

; <label>:141:                                    ; preds = %129
  %142 = getelementptr inbounds i8, i8* %133, i64 -3, !dbg !4340
  %143 = load i8, i8* %142, align 1, !dbg !4341, !tbaa !476
  %144 = zext i8 %143 to i64, !dbg !4340
  br label %159, !dbg !4342

; <label>:145:                                    ; preds = %129
  %146 = getelementptr inbounds i8, i8* %133, i64 -5, !dbg !4343
  %147 = bitcast i8* %146 to i16*, !dbg !4344
  %148 = load i16, i16* %147, align 1, !dbg !4344, !tbaa !494
  %149 = zext i16 %148 to i64, !dbg !4343
  br label %159, !dbg !4345

; <label>:150:                                    ; preds = %129
  %151 = getelementptr inbounds i8, i8* %133, i64 -9, !dbg !4346
  %152 = bitcast i8* %151 to i32*, !dbg !4347
  %153 = load i32, i32* %152, align 1, !dbg !4347, !tbaa !423
  %154 = zext i32 %153 to i64, !dbg !4346
  br label %159, !dbg !4348

; <label>:155:                                    ; preds = %129
  %156 = getelementptr inbounds i8, i8* %133, i64 -17, !dbg !4349
  %157 = bitcast i8* %156 to i64*, !dbg !4350
  %158 = load i64, i64* %157, align 1, !dbg !4350, !tbaa !337
  br label %159, !dbg !4351

; <label>:159:                                    ; preds = %138, %141, %145, %150, %155
  %160 = phi i64 [ %158, %155 ], [ %154, %150 ], [ %149, %145 ], [ %144, %141 ], [ %140, %138 ], !dbg !4352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4332
  %161 = icmp eq i64 %160, 0, !dbg !4337
  br i1 %161, label %189, label %162, !dbg !4337

; <label>:162:                                    ; preds = %159
  %163 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 7
  %164 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 4
  %165 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 1
  %166 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 6
  br label %167, !dbg !4337

; <label>:167:                                    ; preds = %182, %162
  %168 = phi i64 [ %160, %162 ], [ %184, %182 ]
  %169 = phi i8* [ %133, %162 ], [ %183, %182 ]
  %170 = load i64, i64* %163, align 8, !dbg !4353, !tbaa !3959
  %171 = icmp ne i64 %170, 0, !dbg !4354
  %172 = icmp ult i64 %170, %168, !dbg !4355
  %173 = and i1 %171, %172, !dbg !4356
  %174 = select i1 %173, i64 %170, i64 %168, !dbg !4356
  %175 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %164, align 8, !dbg !4358, !tbaa !3967
  %176 = icmp eq void (%struct._rio*, i8*, i64)* %175, null, !dbg !4359
  br i1 %176, label %178, label %177, !dbg !4360

; <label>:177:                                    ; preds = %167
  call void %175(%struct._rio* nonnull %3, i8* %169, i64 %174) #6, !dbg !4361
  br label %178, !dbg !4361

; <label>:178:                                    ; preds = %177, %167
  %179 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %165, align 8, !dbg !4362, !tbaa !3973
  %180 = call i64 %179(%struct._rio* nonnull %3, i8* %169, i64 %174) #6, !dbg !4363
  %181 = icmp eq i64 %180, 0, !dbg !4364
  br i1 %181, label %188, label %182, !dbg !4365

; <label>:182:                                    ; preds = %178
  %183 = getelementptr inbounds i8, i8* %169, i64 %174, !dbg !4366
  %184 = sub i64 %168, %174, !dbg !4367
  %185 = load i64, i64* %166, align 8, !dbg !4368, !tbaa !3982
  %186 = add i64 %185, %174, !dbg !4368
  store i64 %186, i64* %166, align 8, !dbg !4368, !tbaa !3982
  %187 = icmp eq i64 %184, 0, !dbg !4337
  br i1 %187, label %189, label %167, !dbg !4337

; <label>:188:                                    ; preds = %178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4369
  br label %208

; <label>:189:                                    ; preds = %182, %159, %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4369
  %190 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4370
  %191 = icmp eq i32 %190, -1, !dbg !4372
  br i1 %191, label %208, label %192, !dbg !4373

; <label>:192:                                    ; preds = %189
  %193 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4374
  %194 = call i32 @fsync(i32 %193) #6, !dbg !4376
  %195 = icmp eq i32 %194, -1, !dbg !4377
  br i1 %195, label %208, label %196, !dbg !4378

; <label>:196:                                    ; preds = %192
  %197 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4379
  %198 = icmp eq i32 %197, -1, !dbg !4381
  br i1 %198, label %208, label %199, !dbg !4382

; <label>:199:                                    ; preds = %196
  %200 = call i32 @rename(i8* nonnull %8, i8* %0) #6, !dbg !4383
  %201 = icmp eq i32 %200, -1, !dbg !4385
  br i1 %201, label %202, label %207, !dbg !4386

; <label>:202:                                    ; preds = %199
  %203 = call i32* @__errno() #6, !dbg !4387
  %204 = load i32, i32* %203, align 4, !dbg !4387, !tbaa !423
  %205 = call i8* @strerror(i32 %204) #6, !dbg !4389
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.81, i64 0, i64 0), i8* %205) #6, !dbg !4390
  %206 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4391
  br label %214, !dbg !4392

; <label>:207:                                    ; preds = %199
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.82, i64 0, i64 0)) #6, !dbg !4393
  br label %214, !dbg !4394

; <label>:208:                                    ; preds = %188, %30, %84, %80, %76, %196, %192, %189, %39, %36, %33
  %209 = call i32* @__errno() #6, !dbg !4395
  %210 = load i32, i32* %209, align 4, !dbg !4395, !tbaa !423
  %211 = call i8* @strerror(i32 %210) #6, !dbg !4396
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i8* %211) #6, !dbg !4397
  %212 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4398
  %213 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4399
  br label %214, !dbg !4400

; <label>:214:                                    ; preds = %208, %207, %202, %13
  %215 = phi i32 [ -1, %208 ], [ -1, %202 ], [ 0, %207 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4401
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4401
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4401
  ret i32 %215, !dbg !4401
}

; Function Attrs: noredzone
declare dso_local i32 @getpid() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @rioSetAutoSync(%struct._rio*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @rdbSaveRio(%struct._rio*, i32*, i32, %struct.rdbSaveInfo*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @aeWait(i32, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @syncRead(i32, i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @rename(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @unlink(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofChildPipeReadable(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !4402 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4414
  %6 = call i64 @read(i32 %1, i8* nonnull %5, i64 1) #6, !dbg !4415
  %7 = icmp eq i64 %6, 1, !dbg !4417
  %8 = load i8, i8* %5, align 1, !dbg !4418
  %9 = icmp eq i8 %8, 33, !dbg !4419
  %10 = and i1 %7, %9, !dbg !4420
  br i1 %10, label %11, label %19, !dbg !4420

; <label>:11:                                     ; preds = %4
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !4421
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4423, !tbaa !249
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4424, !tbaa !959
  %13 = call i64 @write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4426
  %14 = icmp eq i64 %13, 1, !dbg !4427
  br i1 %14, label %19, label %15, !dbg !4428

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno() #6, !dbg !4429
  %17 = load i32, i32* %16, align 4, !dbg !4429, !tbaa !423
  %18 = call i8* @strerror(i32 %17) #6, !dbg !4431
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i64 0, i64 0), i8* %18) #6, !dbg !4432
  br label %19, !dbg !4433

; <label>:19:                                     ; preds = %11, %15, %4
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4434, !tbaa !255
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4435, !tbaa !943
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %20, i32 %21, i32 1) #6, !dbg !4436
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4437
  ret void, !dbg !4437
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aofCreatePipes() local_unnamed_addr #0 !dbg !4438 {
  %1 = alloca [6 x i32], align 16
  %2 = bitcast [6 x i32]* %1 to i8*, !dbg !4445
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %2, i8* align 16 bitcast ([6 x i32]* @aofCreatePipes.fds to i8*), i64 24, i1 false), !dbg !4446
  %3 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0, !dbg !4447
  %4 = call i32 @pipe(i32* nonnull %3) #6, !dbg !4449
  %5 = icmp eq i32 %4, -1, !dbg !4450
  br i1 %5, label %35, label %6, !dbg !4451

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4452
  %8 = call i32 @pipe(i32* nonnull %7) #6, !dbg !4454
  %9 = icmp eq i32 %8, -1, !dbg !4455
  br i1 %9, label %35, label %10, !dbg !4456

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4457
  %12 = call i32 @pipe(i32* nonnull %11) #6, !dbg !4459
  %13 = icmp eq i32 %12, -1, !dbg !4460
  br i1 %13, label %35, label %14, !dbg !4461

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 16, !dbg !4462, !tbaa !423
  %16 = call i32 @anetNonBlock(i8* null, i32 %15) #6, !dbg !4464
  %17 = icmp eq i32 %16, 0, !dbg !4465
  br i1 %17, label %18, label %35, !dbg !4466

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4467
  %20 = load i32, i32* %19, align 4, !dbg !4467, !tbaa !423
  %21 = call i32 @anetNonBlock(i8* null, i32 %20) #6, !dbg !4469
  %22 = icmp eq i32 %21, 0, !dbg !4470
  br i1 %22, label %23, label %35, !dbg !4471

; <label>:23:                                     ; preds = %18
  %24 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4472, !tbaa !255
  %25 = load i32, i32* %7, align 8, !dbg !4474, !tbaa !423
  %26 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %24, i32 %25, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildPipeReadable, i8* null) #6, !dbg !4475
  %27 = icmp eq i32 %26, -1, !dbg !4476
  br i1 %27, label %35, label %28, !dbg !4477

; <label>:28:                                     ; preds = %23
  %29 = bitcast [6 x i32]* %1 to <4 x i32>*, !dbg !4478
  %30 = load <4 x i32>, <4 x i32>* %29, align 16, !dbg !4478, !tbaa !423
  %31 = shufflevector <4 x i32> %30, <4 x i32> undef, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !4478
  store <4 x i32> %31, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144) to <4 x i32>*), align 8, !dbg !4479, !tbaa !423
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4480
  %33 = load i32, i32* %32, align 4, !dbg !4480, !tbaa !423
  store i32 %33, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4481, !tbaa !959
  %34 = load i32, i32* %11, align 16, !dbg !4482, !tbaa !423
  store i32 %34, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4483, !tbaa !962
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4484, !tbaa !249
  br label %47, !dbg !4485

; <label>:35:                                     ; preds = %18, %14, %23, %10, %6, %0
  %36 = call i32* @__errno() #6, !dbg !4486
  %37 = load i32, i32* %36, align 4, !dbg !4486, !tbaa !423
  %38 = call i8* @strerror(i32 %37) #6, !dbg !4487
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i64 0, i64 0), i8* %38) #6, !dbg !4488
  %39 = load i32, i32* %3, align 16, !dbg !4490, !tbaa !423
  %40 = icmp eq i32 %39, -1, !dbg !4494
  br i1 %40, label %43, label %41, !dbg !4495

; <label>:41:                                     ; preds = %35
  %42 = call i32 @close(i32 %39) #6, !dbg !4496
  br label %43, !dbg !4496

; <label>:43:                                     ; preds = %35, %41
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4490
  %45 = load i32, i32* %44, align 4, !dbg !4490, !tbaa !423
  %46 = icmp eq i32 %45, -1, !dbg !4494
  br i1 %46, label %51, label %49, !dbg !4495

; <label>:47:                                     ; preds = %69, %73, %28
  %48 = phi i32 [ 0, %28 ], [ -1, %73 ], [ -1, %69 ], !dbg !4497
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4498
  ret i32 %48, !dbg !4498

; <label>:49:                                     ; preds = %43
  %50 = call i32 @close(i32 %45) #6, !dbg !4496
  br label %51, !dbg !4496

; <label>:51:                                     ; preds = %49, %43
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4490
  %53 = load i32, i32* %52, align 8, !dbg !4490, !tbaa !423
  %54 = icmp eq i32 %53, -1, !dbg !4494
  br i1 %54, label %57, label %55, !dbg !4495

; <label>:55:                                     ; preds = %51
  %56 = call i32 @close(i32 %53) #6, !dbg !4496
  br label %57, !dbg !4496

; <label>:57:                                     ; preds = %55, %51
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 3, !dbg !4490
  %59 = load i32, i32* %58, align 4, !dbg !4490, !tbaa !423
  %60 = icmp eq i32 %59, -1, !dbg !4494
  br i1 %60, label %63, label %61, !dbg !4495

; <label>:61:                                     ; preds = %57
  %62 = call i32 @close(i32 %59) #6, !dbg !4496
  br label %63, !dbg !4496

; <label>:63:                                     ; preds = %61, %57
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4490
  %65 = load i32, i32* %64, align 16, !dbg !4490, !tbaa !423
  %66 = icmp eq i32 %65, -1, !dbg !4494
  br i1 %66, label %69, label %67, !dbg !4495

; <label>:67:                                     ; preds = %63
  %68 = call i32 @close(i32 %65) #6, !dbg !4496
  br label %69, !dbg !4496

; <label>:69:                                     ; preds = %67, %63
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4490
  %71 = load i32, i32* %70, align 4, !dbg !4490, !tbaa !423
  %72 = icmp eq i32 %71, -1, !dbg !4494
  br i1 %72, label %47, label %73, !dbg !4495

; <label>:73:                                     ; preds = %69
  %74 = call i32 @close(i32 %71) #6, !dbg !4496
  br label %47, !dbg !4496
}

; Function Attrs: noredzone
declare dso_local i32 @pipe(i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofClosePipes() local_unnamed_addr #0 !dbg !940 {
  %1 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4499, !tbaa !255
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4500, !tbaa !943
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %1, i32 %2, i32 1) #6, !dbg !4501
  %3 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4502, !tbaa !255
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4503, !tbaa !257
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %3, i32 %4, i32 2) #6, !dbg !4504
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4505, !tbaa !257
  %6 = tail call i32 @close(i32 %5) #6, !dbg !4506
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4507, !tbaa !951
  %8 = tail call i32 @close(i32 %7) #6, !dbg !4508
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4509, !tbaa !954
  %10 = tail call i32 @close(i32 %9) #6, !dbg !4510
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4511, !tbaa !943
  %12 = tail call i32 @close(i32 %11) #6, !dbg !4512
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4513, !tbaa !959
  %14 = tail call i32 @close(i32 %13) #6, !dbg !4514
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4515, !tbaa !962
  %16 = tail call i32 @close(i32 %15) #6, !dbg !4516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4517
  ret void, !dbg !4517
}

; Function Attrs: noredzone
declare dso_local void @openChildInfoPipe() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @ustime() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fork() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @closeListeningSockets(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @redisSetProcTitle(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_get_private_dirty(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sendChildInfo(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @exitFromChild(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @closeChildInfoPipe() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @updateDictResizePolicy() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @replicationScriptCacheFlush() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @bgrewriteaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !4518 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4522, !tbaa !638
  %3 = icmp eq i32 %2, -1, !dbg !4524
  br i1 %3, label %5, label %4, !dbg !4525

; <label>:4:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.93, i64 0, i64 0)) #6, !dbg !4526
  br label %15, !dbg !4528

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4529, !tbaa !994
  %7 = icmp eq i32 %6, -1, !dbg !4531
  br i1 %7, label %9, label %8, !dbg !4532

; <label>:8:                                      ; preds = %5
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4533, !tbaa !999
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.94, i64 0, i64 0)) #6, !dbg !4535
  br label %15, !dbg !4536

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !4537
  %11 = icmp eq i32 %10, 0, !dbg !4539
  br i1 %11, label %12, label %13, !dbg !4540

; <label>:12:                                     ; preds = %9
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.95, i64 0, i64 0)) #6, !dbg !4541
  br label %15, !dbg !4543

; <label>:13:                                     ; preds = %9
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !4544, !tbaa !4546
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %14) #6, !dbg !4548
  br label %15

; <label>:15:                                     ; preds = %8, %13, %12, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4549
  ret void, !dbg !4549
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofRemoveTempFile(i32) local_unnamed_addr #0 !dbg !889 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !4551
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4551
  %4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %0) #6, !dbg !4553
  %5 = call i32 @unlink(i8* nonnull %3) #6, !dbg !4554
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4555
  ret void, !dbg !4555
}

; Function Attrs: noredzone nounwind
define dso_local void @backgroundRewriteDoneHandler(i32, i32) local_unnamed_addr #0 !dbg !4556 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.listIter, align 8
  %5 = alloca [256 x i8], align 16
  %6 = or i32 %1, %0, !dbg !4573
  %7 = icmp eq i32 %6, 0, !dbg !4573
  br i1 %7, label %8, label %131, !dbg !4573

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !4574
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4574
  %10 = tail call i64 @ustime() #6, !dbg !4576
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.98, i64 0, i64 0)) #6, !dbg !4578
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4579, !tbaa !555
  %12 = icmp eq i64 %11, 0, !dbg !4579
  br i1 %12, label %15, label %13, !dbg !4581

; <label>:13:                                     ; preds = %8
  %14 = tail call i64 @mstime() #6, !dbg !4582
  br label %15, !dbg !4582

; <label>:15:                                     ; preds = %8, %13
  %16 = phi i64 [ %14, %13 ], [ 0, %8 ], !dbg !4582
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4585, !tbaa !638
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %17) #6, !dbg !4586
  %19 = call i32 (i8*, i32, ...) @open(i8* nonnull %9, i32 9) #6, !dbg !4587
  %20 = icmp eq i32 %19, -1, !dbg !4589
  br i1 %20, label %21, label %25, !dbg !4591

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno() #6, !dbg !4592
  %23 = load i32, i32* %22, align 4, !dbg !4592, !tbaa !423
  %24 = call i8* @strerror(i32 %23) #6, !dbg !4594
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.99, i64 0, i64 0), i8* %24) #6, !dbg !4595
  br label %130, !dbg !4596

; <label>:25:                                     ; preds = %15
  %26 = call i64 @aofRewriteBufferWrite(i32 %19) #9, !dbg !4597
  %27 = icmp eq i64 %26, -1, !dbg !4599
  br i1 %27, label %28, label %33, !dbg !4600

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #6, !dbg !4601
  %30 = load i32, i32* %29, align 4, !dbg !4601, !tbaa !423
  %31 = call i8* @strerror(i32 %30) #6, !dbg !4603
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.100, i64 0, i64 0), i8* %31) #6, !dbg !4604
  %32 = call i32 @close(i32 %19) #6, !dbg !4605
  br label %130, !dbg !4606

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4607, !tbaa !555
  %35 = icmp eq i64 %34, 0, !dbg !4607
  br i1 %35, label %44, label %36, !dbg !4609

; <label>:36:                                     ; preds = %33
  %37 = call i64 @mstime() #6, !dbg !4610
  %38 = sub nsw i64 %37, %16, !dbg !4610
  %39 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4612, !tbaa !555
  %40 = icmp eq i64 %39, 0, !dbg !4612
  %41 = icmp slt i64 %38, %39, !dbg !4612
  %42 = or i1 %40, %41, !dbg !4612
  br i1 %42, label %44, label %43, !dbg !4612

; <label>:43:                                     ; preds = %36
  call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0), i64 %38) #6, !dbg !4612
  br label %44, !dbg !4612

; <label>:44:                                     ; preds = %33, %36, %43
  %45 = bitcast %struct.listIter* %4 to i8*, !dbg !4614
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #7, !dbg !4614
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4617, !tbaa !90
  call void @listRewind(%struct.list* %46, %struct.listIter* nonnull %4) #6, !dbg !4619
  %47 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4620
  %48 = icmp eq %struct.listNode* %47, null, !dbg !4622
  br i1 %48, label %63, label %49, !dbg !4622

; <label>:49:                                     ; preds = %44, %49
  %50 = phi %struct.listNode* [ %58, %49 ], [ %47, %44 ]
  %51 = phi i64 [ %57, %49 ], [ 0, %44 ]
  %52 = getelementptr inbounds %struct.listNode, %struct.listNode* %50, i64 0, i32 2, !dbg !4623
  %53 = bitcast i8** %52 to %struct.aofrwblock**, !dbg !4623
  %54 = load %struct.aofrwblock*, %struct.aofrwblock** %53, align 8, !dbg !4623, !tbaa !153
  %55 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %54, i64 0, i32 0, !dbg !4625
  %56 = load i64, i64* %55, align 8, !dbg !4625, !tbaa !157
  %57 = add i64 %56, %51, !dbg !4626
  %58 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4620
  %59 = icmp eq %struct.listNode* %58, null, !dbg !4622
  br i1 %59, label %60, label %49, !dbg !4622, !llvm.loop !160

; <label>:60:                                     ; preds = %49
  %61 = uitofp i64 %57 to double, !dbg !4627
  %62 = fmul double %61, 0x3EB0000000000000, !dbg !4627
  br label %63, !dbg !4627

; <label>:63:                                     ; preds = %60, %44
  %64 = phi double [ 0.000000e+00, %44 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #7, !dbg !4627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4628
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.102, i64 0, i64 0), double %64) #6, !dbg !4629
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4630, !tbaa !448
  %66 = icmp eq i32 %65, -1, !dbg !4632
  br i1 %66, label %67, label %70, !dbg !4633

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4634, !tbaa !979
  %69 = call i32 (i8*, i32, ...) @open(i8* %68, i32 16384) #6, !dbg !4636
  br label %70, !dbg !4638

; <label>:70:                                     ; preds = %63, %67
  %71 = phi i32 [ %69, %67 ], [ -1, %63 ], !dbg !4639
  %72 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4641, !tbaa !555
  %73 = icmp eq i64 %72, 0, !dbg !4641
  br i1 %73, label %76, label %74, !dbg !4643

; <label>:74:                                     ; preds = %70
  %75 = call i64 @mstime() #6, !dbg !4644
  br label %76, !dbg !4644

; <label>:76:                                     ; preds = %70, %74
  %77 = phi i64 [ %75, %74 ], [ 0, %70 ], !dbg !4644
  %78 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4646, !tbaa !979
  %79 = call i32 @rename(i8* nonnull %9, i8* %78) #6, !dbg !4648
  %80 = icmp eq i32 %79, -1, !dbg !4649
  br i1 %80, label %81, label %90, !dbg !4650

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4651, !tbaa !979
  %83 = call i32* @__errno() #6, !dbg !4653
  %84 = load i32, i32* %83, align 4, !dbg !4653, !tbaa !423
  %85 = call i8* @strerror(i32 %84) #6, !dbg !4654
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.103, i64 0, i64 0), i8* nonnull %9, i8* %82, i8* %85) #6, !dbg !4655
  %86 = call i32 @close(i32 %19) #6, !dbg !4656
  %87 = icmp eq i32 %71, -1, !dbg !4657
  br i1 %87, label %130, label %88, !dbg !4659

; <label>:88:                                     ; preds = %81
  %89 = call i32 @close(i32 %71) #6, !dbg !4660
  br label %130, !dbg !4660

; <label>:90:                                     ; preds = %76
  %91 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4661, !tbaa !555
  %92 = icmp eq i64 %91, 0, !dbg !4661
  br i1 %92, label %101, label %93, !dbg !4663

; <label>:93:                                     ; preds = %90
  %94 = call i64 @mstime() #6, !dbg !4664
  %95 = sub nsw i64 %94, %77, !dbg !4664
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4666, !tbaa !555
  %97 = icmp eq i64 %96, 0, !dbg !4666
  %98 = icmp slt i64 %95, %96, !dbg !4666
  %99 = or i1 %97, %98, !dbg !4666
  br i1 %99, label %101, label %100, !dbg !4666

; <label>:100:                                    ; preds = %93
  call void @latencyAddSample(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0), i64 %95) #6, !dbg !4666
  br label %101, !dbg !4666

; <label>:101:                                    ; preds = %90, %93, %100
  %102 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4668, !tbaa !448
  %103 = icmp eq i32 %102, -1, !dbg !4670
  br i1 %103, label %104, label %106, !dbg !4671

; <label>:104:                                    ; preds = %101
  %105 = call i32 @close(i32 %19) #6, !dbg !4672
  br label %117, !dbg !4674

; <label>:106:                                    ; preds = %101
  store i32 %19, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4675, !tbaa !448
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !4677, !tbaa !482
  switch i32 %107, label %113 [
    i32 1, label %108
    i32 2, label %110
  ], !dbg !4679

; <label>:108:                                    ; preds = %106
  %109 = call i32 @fsync(i32 %19) #6, !dbg !4680
  br label %113, !dbg !4680

; <label>:110:                                    ; preds = %106
  %111 = sext i32 %19 to i64, !dbg !4684
  %112 = inttoptr i64 %111 to i8*, !dbg !4685
  call void @bioCreateBackgroundJob(i32 1, i8* %112, i8* null, i8* null) #6, !dbg !4686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4687
  br label %113, !dbg !4688

; <label>:113:                                    ; preds = %106, %110, %108
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !4689, !tbaa !454
  call void @aofUpdateCurrentSize() #9, !dbg !4690
  %114 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !4691, !tbaa !509
  store i64 %114, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !4692, !tbaa !2453
  %115 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4693, !tbaa !462
  call void @sdsfree(i8* %115) #6, !dbg !4694
  %116 = call i8* @sdsempty() #6, !dbg !4695
  store i8* %116, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4696, !tbaa !462
  br label %117

; <label>:117:                                    ; preds = %113, %104
  %118 = phi i32 [ %71, %104 ], [ %102, %113 ], !dbg !4697
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4698, !tbaa !4699
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.105, i64 0, i64 0)) #6, !dbg !4700
  %119 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4701, !tbaa !445
  %120 = icmp eq i32 %119, 2, !dbg !4703
  br i1 %120, label %121, label %122, !dbg !4704

; <label>:121:                                    ; preds = %117
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4705, !tbaa !445
  br label %122, !dbg !4706

; <label>:122:                                    ; preds = %121, %117
  %123 = icmp eq i32 %118, -1, !dbg !4707
  br i1 %123, label %127, label %124, !dbg !4709

; <label>:124:                                    ; preds = %122
  %125 = sext i32 %118 to i64, !dbg !4710
  %126 = inttoptr i64 %125 to i8*, !dbg !4711
  call void @bioCreateBackgroundJob(i32 0, i8* %126, i8* null, i8* null) #6, !dbg !4712
  br label %127, !dbg !4712

; <label>:127:                                    ; preds = %122, %124
  %128 = call i64 @ustime() #6, !dbg !4713
  %129 = sub nsw i64 %128, %10, !dbg !4714
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.106, i64 0, i64 0), i64 %129) #6, !dbg !4715
  br label %130, !dbg !4716

; <label>:130:                                    ; preds = %88, %81, %28, %21, %127
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4716
  br label %137

; <label>:131:                                    ; preds = %2
  %132 = icmp eq i32 %1, 0, !dbg !4717
  %133 = icmp ne i32 %0, 0, !dbg !4718
  %134 = and i1 %133, %132, !dbg !4720
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4721, !tbaa !4699
  br i1 %134, label %135, label %136, !dbg !4720

; <label>:135:                                    ; preds = %131
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0)) #6, !dbg !4723
  br label %137, !dbg !4725

; <label>:136:                                    ; preds = %131
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i32 %1) #6, !dbg !4726
  br label %137

; <label>:137:                                    ; preds = %130, %136, %135
  %138 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4727, !tbaa !255
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4729, !tbaa !943
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %138, i32 %139, i32 1) #6, !dbg !4730
  %140 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4731, !tbaa !255
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4732, !tbaa !257
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %140, i32 %141, i32 2) #6, !dbg !4733
  %142 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4734, !tbaa !257
  %143 = call i32 @close(i32 %142) #6, !dbg !4735
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4736, !tbaa !951
  %145 = call i32 @close(i32 %144) #6, !dbg !4737
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4738, !tbaa !954
  %147 = call i32 @close(i32 %146) #6, !dbg !4739
  %148 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4740, !tbaa !943
  %149 = call i32 @close(i32 %148) #6, !dbg !4741
  %150 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4742, !tbaa !959
  %151 = call i32 @close(i32 %150) #6, !dbg !4743
  %152 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4744, !tbaa !962
  %153 = call i32 @close(i32 %152) #6, !dbg !4745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4746
  %154 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4747, !tbaa !90
  %155 = icmp eq %struct.list* %154, null, !dbg !4749
  br i1 %155, label %157, label %156, !dbg !4750

; <label>:156:                                    ; preds = %137
  call void @listRelease(%struct.list* nonnull %154) #6, !dbg !4751
  br label %157, !dbg !4751

; <label>:157:                                    ; preds = %137, %156
  %158 = call %struct.list* @listCreate() #6, !dbg !4752
  store %struct.list* %158, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4753, !tbaa !90
  %159 = getelementptr inbounds %struct.list, %struct.list* %158, i64 0, i32 3, !dbg !4754
  store void (i8*)* @zfree, void (i8*)** %159, align 8, !dbg !4754, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4755
  %160 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4756, !tbaa !638
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !4758
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %161) #7, !dbg !4758
  %162 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %161, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %160) #6, !dbg !4759
  %163 = call i32 @unlink(i8* nonnull %161) #6, !dbg !4760
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %161) #7, !dbg !4761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4761
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4762, !tbaa !638
  %164 = call i64 @time(i64* null) #6, !dbg !4763
  %165 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4764, !tbaa !938
  %166 = sub nsw i64 %164, %165, !dbg !4765
  store i64 %166, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 134), align 8, !dbg !4766, !tbaa !4767
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4768, !tbaa !938
  %167 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4769, !tbaa !445
  %168 = icmp eq i32 %167, 2, !dbg !4771
  br i1 %168, label %169, label %170, !dbg !4772

; <label>:169:                                    ; preds = %157
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4773, !tbaa !999
  br label %170, !dbg !4774

; <label>:170:                                    ; preds = %169, %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4775
  ret void, !dbg !4775
}

; Function Attrs: noredzone
declare dso_local i32 @kill(i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @wait3(i32*, i32, %struct.rusage*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator*, i32, i8**, i32*, i64*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "last_write_error_log", scope: !2, file: !3, line: 409, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "flushAppendOnlyFile", scope: !3, file: !3, line: 337, type: !4, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !69)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/aof.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !9, globals: !68)
!8 = !{}
!9 = !{!10, !11, !15, !16, !17, !18, !6, !20, !22, !23, !24, !39, !49, !59}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !12, line: 200, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !14, line: 145, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !26, line: 51, size: 24, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !25, file: !26, line: 52, baseType: !29, size: 8)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !32, line: 43, baseType: !19)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !25, file: !26, line: 53, baseType: !29, size: 8, offset: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 54, baseType: !19, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !25, file: !26, line: 55, baseType: !36, offset: 24)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: -1)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !26, line: 57, size: 40, elements: !41)
!41 = !{!42, !46, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !26, line: 58, baseType: !43, size: 16)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !30, line: 36, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !32, line: 57, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !26, line: 59, baseType: !43, size: 16, offset: 16)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !26, line: 60, baseType: !19, size: 8, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !26, line: 61, baseType: !36, offset: 40)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !26, line: 63, size: 72, elements: !51)
!51 = !{!52, !56, !57, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !50, file: !26, line: 64, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 48, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 79, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !50, file: !26, line: 65, baseType: !53, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !26, line: 66, baseType: !19, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !50, file: !26, line: 67, baseType: !36, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !26, line: 69, size: 136, elements: !61)
!61 = !{!62, !65, !66, !67}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !26, line: 70, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 60, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !32, line: 105, baseType: !17)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !26, line: 71, baseType: !63, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !26, line: 72, baseType: !19, size: 8, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !60, file: !26, line: 73, baseType: !36, offset: 136)
!68 = !{!0}
!69 = !{!70, !71, !72, !73, !76}
!70 = !DILocalVariable(name: "force", arg: 1, scope: !2, file: !3, line: 337, type: !6)
!71 = !DILocalVariable(name: "nwritten", scope: !2, file: !3, line: 338, type: !11)
!72 = !DILocalVariable(name: "sync_in_progress", scope: !2, file: !3, line: 339, type: !6)
!73 = !DILocalVariable(name: "latency", scope: !2, file: !3, line: 340, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !75, line: 52, baseType: !16)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !DILocalVariable(name: "can_log", scope: !77, file: !3, line: 410, type: !6)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 408, column: 54)
!78 = distinct !DILexicalBlock(scope: !2, file: !3, line: 408, column: 9)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !80, line: 34, baseType: !15)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 4}
!84 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!85 = distinct !DISubprogram(name: "aofRewriteBufferReset", scope: !3, file: !3, line: 70, type: !86, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!86 = !DISubroutineType(types: !87)
!87 = !{null}
!88 = !DILocation(line: 71, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 71, column: 9)
!90 = !{!91, !95, i64 1944}
!91 = !{!"redisServer", !92, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !92, i64 32, !92, i64 36, !92, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !92, i64 80, !92, i64 84, !92, i64 88, !92, i64 92, !95, i64 96, !95, i64 104, !92, i64 112, !92, i64 116, !93, i64 120, !92, i64 164, !96, i64 168, !92, i64 176, !95, i64 184, !95, i64 192, !95, i64 200, !93, i64 208, !92, i64 216, !92, i64 220, !93, i64 224, !92, i64 352, !95, i64 360, !92, i64 368, !93, i64 372, !92, i64 436, !92, i64 440, !93, i64 444, !92, i64 508, !95, i64 512, !95, i64 520, !95, i64 528, !95, i64 536, !95, i64 544, !95, i64 552, !95, i64 560, !92, i64 568, !97, i64 576, !93, i64 584, !95, i64 840, !96, i64 848, !92, i64 856, !92, i64 860, !96, i64 864, !96, i64 872, !96, i64 880, !96, i64 888, !95, i64 896, !95, i64 904, !95, i64 912, !95, i64 920, !95, i64 928, !95, i64 936, !95, i64 944, !95, i64 952, !95, i64 960, !95, i64 968, !95, i64 976, !95, i64 984, !95, i64 992, !96, i64 1000, !97, i64 1008, !97, i64 1016, !97, i64 1024, !98, i64 1032, !97, i64 1040, !97, i64 1048, !97, i64 1056, !97, i64 1064, !97, i64 1072, !97, i64 1080, !97, i64 1088, !97, i64 1096, !97, i64 1104, !96, i64 1112, !97, i64 1120, !98, i64 1128, !97, i64 1136, !97, i64 1144, !97, i64 1152, !97, i64 1160, !95, i64 1168, !97, i64 1176, !97, i64 1184, !96, i64 1192, !99, i64 1200, !97, i64 1240, !97, i64 1248, !96, i64 1256, !96, i64 1264, !93, i64 1272, !92, i64 1728, !92, i64 1732, !92, i64 1736, !92, i64 1740, !92, i64 1744, !96, i64 1752, !92, i64 1760, !92, i64 1764, !92, i64 1768, !92, i64 1772, !96, i64 1776, !96, i64 1784, !92, i64 1792, !92, i64 1796, !92, i64 1800, !92, i64 1804, !93, i64 1808, !92, i64 1880, !92, i64 1884, !95, i64 1888, !92, i64 1896, !92, i64 1900, !96, i64 1904, !96, i64 1912, !96, i64 1920, !96, i64 1928, !92, i64 1936, !92, i64 1940, !95, i64 1944, !95, i64 1952, !92, i64 1960, !92, i64 1964, !96, i64 1968, !96, i64 1976, !96, i64 1984, !96, i64 1992, !92, i64 2000, !96, i64 2008, !92, i64 2016, !92, i64 2020, !92, i64 2024, !92, i64 2028, !92, i64 2032, !92, i64 2036, !92, i64 2040, !92, i64 2044, !92, i64 2048, !92, i64 2052, !92, i64 2056, !92, i64 2060, !92, i64 2064, !95, i64 2072, !97, i64 2080, !97, i64 2088, !92, i64 2096, !95, i64 2104, !92, i64 2112, !95, i64 2120, !92, i64 2128, !92, i64 2132, !96, i64 2136, !96, i64 2144, !96, i64 2152, !96, i64 2160, !92, i64 2168, !92, i64 2172, !92, i64 2176, !92, i64 2180, !92, i64 2184, !92, i64 2188, !93, i64 2192, !100, i64 2200, !101, i64 2224, !95, i64 2240, !92, i64 2248, !95, i64 2256, !92, i64 2264, !93, i64 2268, !93, i64 2309, !97, i64 2352, !97, i64 2360, !92, i64 2368, !92, i64 2372, !95, i64 2376, !97, i64 2384, !97, i64 2392, !97, i64 2400, !97, i64 2408, !96, i64 2416, !96, i64 2424, !92, i64 2432, !92, i64 2436, !92, i64 2440, !92, i64 2444, !92, i64 2448, !95, i64 2456, !95, i64 2464, !92, i64 2472, !92, i64 2476, !95, i64 2480, !95, i64 2488, !92, i64 2496, !92, i64 2500, !96, i64 2504, !96, i64 2512, !96, i64 2520, !92, i64 2528, !92, i64 2532, !95, i64 2536, !96, i64 2544, !92, i64 2552, !92, i64 2556, !92, i64 2560, !96, i64 2568, !92, i64 2576, !92, i64 2580, !92, i64 2584, !95, i64 2592, !93, i64 2600, !97, i64 2648, !92, i64 2656, !95, i64 2664, !95, i64 2672, !92, i64 2680, !95, i64 2688, !92, i64 2696, !92, i64 2700, !97, i64 2704, !92, i64 2712, !92, i64 2716, !92, i64 2720, !92, i64 2724, !97, i64 2728, !92, i64 2736, !93, i64 2740, !95, i64 2768, !95, i64 2776, !92, i64 2784, !92, i64 2788, !92, i64 2792, !92, i64 2796, !96, i64 2800, !96, i64 2808, !96, i64 2816, !96, i64 2824, !96, i64 2832, !96, i64 2840, !96, i64 2848, !96, i64 2856, !92, i64 2864, !92, i64 2868, !96, i64 2872, !96, i64 2880, !92, i64 2888, !97, i64 2896, !95, i64 2904, !95, i64 2912, !92, i64 2920, !92, i64 2924, !97, i64 2928, !95, i64 2936, !95, i64 2944, !92, i64 2952, !92, i64 2956, !92, i64 2960, !92, i64 2964, !95, i64 2968, !92, i64 2976, !92, i64 2980, !92, i64 2984, !95, i64 2992, !95, i64 3000, !95, i64 3008, !95, i64 3016, !97, i64 3024, !97, i64 3032, !97, i64 3040, !92, i64 3048, !92, i64 3052, !92, i64 3056, !92, i64 3060, !92, i64 3064, !92, i64 3068, !92, i64 3072, !92, i64 3076, !92, i64 3080, !92, i64 3084, !92, i64 3088, !97, i64 3096, !95, i64 3104, !95, i64 3112, !95, i64 3120, !92, i64 3128, !92, i64 3132, !92, i64 3136, !96, i64 3144, !95, i64 3152, !95, i64 3160, !95, i64 3168}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!"any pointer", !93, i64 0}
!96 = !{!"long", !93, i64 0}
!97 = !{!"long long", !93, i64 0}
!98 = !{!"double", !93, i64 0}
!99 = !{!"malloc_stats", !96, i64 0, !96, i64 8, !96, i64 16, !96, i64 24, !96, i64 32}
!100 = !{!"", !92, i64 0, !96, i64 8, !97, i64 16}
!101 = !{!"redisOpArray", !95, i64 0, !92, i64 8}
!102 = !DILocation(line: 71, column: 9, scope: !89)
!103 = !DILocation(line: 71, column: 9, scope: !85)
!104 = !DILocation(line: 72, column: 9, scope: !89)
!105 = !DILocation(line: 74, column: 37, scope: !85)
!106 = !DILocation(line: 74, column: 35, scope: !85)
!107 = !DILocation(line: 75, column: 5, scope: !85)
!108 = !{!109, !95, i64 24}
!109 = !{!"list", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40}
!110 = !DILocation(line: 76, column: 1, scope: !85)
!111 = distinct !DISubprogram(name: "aofRewriteBufferSize", scope: !3, file: !3, line: 79, type: !112, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!17}
!114 = !{!115, !125, !131, !132}
!115 = !DILocalVariable(name: "ln", scope: !111, file: !3, line: 80, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !118, line: 40, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !118, line: 36, size: 192, elements: !120)
!120 = !{!121, !123, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !118, line: 37, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !118, line: 38, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !119, file: !118, line: 39, baseType: !10, size: 64, offset: 128)
!125 = !DILocalVariable(name: "li", scope: !111, file: !3, line: 81, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !118, line: 45, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !118, line: 42, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !118, line: 43, baseType: !116, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !127, file: !118, line: 44, baseType: !6, size: 32, offset: 64)
!131 = !DILocalVariable(name: "size", scope: !111, file: !3, line: 82, type: !17)
!132 = !DILocalVariable(name: "block", scope: !133, file: !3, line: 86, type: !134)
!133 = distinct !DILexicalBlock(scope: !111, file: !3, line: 85, column: 33)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "aofrwblock", file: !3, line: 65, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aofrwblock", file: !3, line: 62, size: 83886208, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !136, file: !3, line: 63, baseType: !17, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !136, file: !3, line: 63, baseType: !17, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !136, file: !3, line: 64, baseType: !141, size: 83886080, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 83886080, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 10485760)
!144 = !DILocation(line: 81, column: 5, scope: !111)
!145 = !DILocation(line: 82, column: 19, scope: !111)
!146 = !DILocation(line: 84, column: 23, scope: !111)
!147 = !DILocation(line: 81, column: 14, scope: !111)
!148 = !DILocation(line: 84, column: 5, scope: !111)
!149 = !DILocation(line: 85, column: 17, scope: !111)
!150 = !DILocation(line: 80, column: 15, scope: !111)
!151 = !DILocation(line: 85, column: 5, scope: !111)
!152 = !DILocation(line: 86, column: 29, scope: !133)
!153 = !{!154, !95, i64 16}
!154 = !{!"listNode", !95, i64 0, !95, i64 8, !95, i64 16}
!155 = !DILocation(line: 86, column: 21, scope: !133)
!156 = !DILocation(line: 87, column: 24, scope: !133)
!157 = !{!158, !96, i64 0}
!158 = !{!"aofrwblock", !96, i64 0, !96, i64 8, !93, i64 16}
!159 = !DILocation(line: 87, column: 14, scope: !133)
!160 = distinct !{!160, !151, !161}
!161 = !DILocation(line: 88, column: 5, scope: !111)
!162 = !DILocation(line: 0, scope: !133)
!163 = !DILocation(line: 90, column: 1, scope: !111)
!164 = !DILocation(line: 89, column: 5, scope: !111)
!165 = distinct !DISubprogram(name: "aofChildWriteDiffData", scope: !3, file: !3, line: 95, type: !166, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !228)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !168, !6, !10, !6}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !170, line: 109, baseType: !171)
!170 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !170, line: 97, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !191, !198, !220, !221, !222, !227}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !171, file: !170, line: 98, baseType: !6, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !171, file: !170, line: 99, baseType: !6, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !171, file: !170, line: 100, baseType: !16, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !171, file: !170, line: 101, baseType: !79, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !171, file: !170, line: 102, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !170, line: 76, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !170, line: 71, size: 256, elements: !181)
!181 = !{!182, !183, !189, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !180, file: !170, line: 72, baseType: !6, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !180, file: !170, line: 73, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !170, line: 65, baseType: !186)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188, !6, !10, !6}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !180, file: !170, line: 74, baseType: !184, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !180, file: !170, line: 75, baseType: !10, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !171, file: !170, line: 103, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !170, line: 94, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !170, line: 91, size: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !194, file: !170, line: 92, baseType: !6, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !194, file: !170, line: 93, baseType: !6, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !171, file: !170, line: 104, baseType: !199, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !170, line: 88, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !170, line: 79, size: 512, elements: !202)
!202 = !{!203, !204, !205, !206, !211, !216, !217, !219}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !201, file: !170, line: 80, baseType: !16, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !201, file: !170, line: 81, baseType: !15, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !201, file: !170, line: 82, baseType: !15, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !201, file: !170, line: 83, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !170, line: 66, baseType: !209)
!209 = !DISubroutineType(types: !210)
!210 = !{!6, !188, !16, !10}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !201, file: !170, line: 84, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !170, line: 67, baseType: !214)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !188, !10}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !201, file: !170, line: 85, baseType: !10, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !170, line: 86, baseType: !218, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !170, line: 87, baseType: !218, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !171, file: !170, line: 105, baseType: !6, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !171, file: !170, line: 106, baseType: !10, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !171, file: !170, line: 107, baseType: !223, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !170, line: 68, baseType: !225)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !188}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !171, file: !170, line: 108, baseType: !223, size: 64, offset: 576)
!228 = !{!229, !230, !231, !232, !233, !234, !235}
!229 = !DILocalVariable(name: "el", arg: 1, scope: !165, file: !3, line: 95, type: !168)
!230 = !DILocalVariable(name: "fd", arg: 2, scope: !165, file: !3, line: 95, type: !6)
!231 = !DILocalVariable(name: "privdata", arg: 3, scope: !165, file: !3, line: 95, type: !10)
!232 = !DILocalVariable(name: "mask", arg: 4, scope: !165, file: !3, line: 95, type: !6)
!233 = !DILocalVariable(name: "ln", scope: !165, file: !3, line: 96, type: !116)
!234 = !DILocalVariable(name: "block", scope: !165, file: !3, line: 97, type: !134)
!235 = !DILocalVariable(name: "nwritten", scope: !165, file: !3, line: 98, type: !11)
!236 = !DILocation(line: 95, column: 41, scope: !165)
!237 = !DILocation(line: 95, column: 49, scope: !165)
!238 = !DILocation(line: 95, column: 59, scope: !165)
!239 = !DILocation(line: 95, column: 73, scope: !165)
!240 = !DILocation(line: 105, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !165, file: !3, line: 104, column: 14)
!242 = !{!109, !95, i64 0}
!243 = !DILocation(line: 96, column: 15, scope: !165)
!244 = !DILocation(line: 106, column: 17, scope: !241)
!245 = !DILocation(line: 106, column: 26, scope: !241)
!246 = !DILocation(line: 97, column: 17, scope: !165)
!247 = !DILocation(line: 107, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !3, line: 107, column: 13)
!249 = !{!91, !92, i64 2064}
!250 = !DILocation(line: 107, column: 13, scope: !248)
!251 = !DILocation(line: 107, column: 46, scope: !248)
!252 = !DILocation(line: 107, column: 42, scope: !248)
!253 = !DILocation(line: 108, column: 38, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !3, line: 107, column: 53)
!255 = !{!91, !95, i64 72}
!256 = !DILocation(line: 108, column: 48, scope: !254)
!257 = !{!91, !92, i64 2040}
!258 = !DILocation(line: 108, column: 13, scope: !254)
!259 = !DILocation(line: 110, column: 13, scope: !254)
!260 = !DILocation(line: 112, column: 20, scope: !261)
!261 = distinct !DILexicalBlock(scope: !241, file: !3, line: 112, column: 13)
!262 = !DILocation(line: 112, column: 25, scope: !261)
!263 = !DILocation(line: 112, column: 13, scope: !241)
!264 = !DILocation(line: 113, column: 37, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 112, column: 30)
!266 = !DILocation(line: 114, column: 30, scope: !265)
!267 = !DILocation(line: 113, column: 24, scope: !265)
!268 = !DILocation(line: 98, column: 13, scope: !165)
!269 = !DILocation(line: 115, column: 26, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 115, column: 17)
!271 = !DILocation(line: 115, column: 17, scope: !265)
!272 = !DILocation(line: 116, column: 42, scope: !265)
!273 = !DILocation(line: 116, column: 59, scope: !265)
!274 = !DILocation(line: 116, column: 63, scope: !265)
!275 = !DILocation(line: 116, column: 13, scope: !265)
!276 = !DILocation(line: 117, column: 25, scope: !265)
!277 = !DILocation(line: 118, column: 20, scope: !265)
!278 = !DILocation(line: 118, column: 25, scope: !265)
!279 = !{!158, !96, i64 8}
!280 = !DILocation(line: 120, column: 25, scope: !281)
!281 = distinct !DILexicalBlock(scope: !241, file: !3, line: 120, column: 13)
!282 = !DILocation(line: 120, column: 13, scope: !241)
!283 = !DILocation(line: 120, column: 50, scope: !281)
!284 = !DILocation(line: 120, column: 31, scope: !281)
!285 = distinct !{!285, !286, !287}
!286 = !DILocation(line: 104, column: 5, scope: !165)
!287 = !DILocation(line: 121, column: 5, scope: !165)
!288 = !DILocation(line: 122, column: 1, scope: !165)
!289 = distinct !DISubprogram(name: "aofRewriteBufferAppend", scope: !3, file: !3, line: 125, type: !290, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !18, !17}
!292 = !{!293, !294, !295, !296, !297, !301, !304}
!293 = !DILocalVariable(name: "s", arg: 1, scope: !289, file: !3, line: 125, type: !18)
!294 = !DILocalVariable(name: "len", arg: 2, scope: !289, file: !3, line: 125, type: !17)
!295 = !DILocalVariable(name: "ln", scope: !289, file: !3, line: 126, type: !116)
!296 = !DILocalVariable(name: "block", scope: !289, file: !3, line: 127, type: !134)
!297 = !DILocalVariable(name: "thislen", scope: !298, file: !3, line: 133, type: !17)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 132, column: 20)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 132, column: 13)
!300 = distinct !DILexicalBlock(scope: !289, file: !3, line: 129, column: 16)
!301 = !DILocalVariable(name: "numblocks", scope: !302, file: !3, line: 144, type: !6)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 143, column: 18)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 143, column: 13)
!304 = !DILocalVariable(name: "level", scope: !305, file: !3, line: 155, type: !6)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 154, column: 44)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 154, column: 17)
!307 = !DILocation(line: 125, column: 44, scope: !289)
!308 = !DILocation(line: 125, column: 61, scope: !289)
!309 = !DILocation(line: 126, column: 20, scope: !289)
!310 = !{!109, !95, i64 8}
!311 = !DILocation(line: 126, column: 15, scope: !289)
!312 = !DILocation(line: 127, column: 25, scope: !289)
!313 = !DILocation(line: 127, column: 34, scope: !289)
!314 = !DILocation(line: 127, column: 17, scope: !289)
!315 = !DILocation(line: 129, column: 5, scope: !289)
!316 = !DILocation(line: 132, column: 13, scope: !299)
!317 = !DILocation(line: 132, column: 13, scope: !300)
!318 = !DILocation(line: 133, column: 45, scope: !298)
!319 = !DILocation(line: 133, column: 50, scope: !298)
!320 = !DILocation(line: 133, column: 37, scope: !298)
!321 = !DILocation(line: 133, column: 27, scope: !298)
!322 = !DILocation(line: 134, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !298, file: !3, line: 134, column: 17)
!324 = !DILocation(line: 134, column: 17, scope: !298)
!325 = !DILocation(line: 135, column: 42, scope: !326)
!326 = distinct !DILexicalBlock(scope: !323, file: !3, line: 134, column: 26)
!327 = !DILocation(line: 135, column: 34, scope: !326)
!328 = !DILocation(line: 135, column: 17, scope: !326)
!329 = !DILocation(line: 136, column: 29, scope: !326)
!330 = !DILocation(line: 137, column: 29, scope: !326)
!331 = !DILocation(line: 138, column: 19, scope: !326)
!332 = !DILocation(line: 139, column: 21, scope: !326)
!333 = !DILocation(line: 143, column: 13, scope: !303)
!334 = !DILocation(line: 143, column: 13, scope: !300)
!335 = !DILocation(line: 146, column: 21, scope: !302)
!336 = !DILocation(line: 148, column: 25, scope: !302)
!337 = !{!96, !96, i64 0}
!338 = !DILocation(line: 149, column: 36, scope: !302)
!339 = !DILocation(line: 149, column: 13, scope: !302)
!340 = !DILocation(line: 153, column: 25, scope: !302)
!341 = !{!109, !96, i64 40}
!342 = !DILocation(line: 144, column: 17, scope: !302)
!343 = !DILocation(line: 154, column: 28, scope: !306)
!344 = !DILocation(line: 154, column: 32, scope: !306)
!345 = !DILocation(line: 154, column: 38, scope: !306)
!346 = !DILocation(line: 154, column: 17, scope: !302)
!347 = !DILocation(line: 155, column: 44, scope: !305)
!348 = !DILocation(line: 155, column: 51, scope: !305)
!349 = !DILocation(line: 155, column: 29, scope: !305)
!350 = !DILocation(line: 155, column: 21, scope: !305)
!351 = !DILocation(line: 81, column: 5, scope: !111, inlinedAt: !352)
!352 = distinct !DILocation(line: 158, column: 21, scope: !305)
!353 = !DILocation(line: 82, column: 19, scope: !111, inlinedAt: !352)
!354 = !DILocation(line: 81, column: 14, scope: !111, inlinedAt: !352)
!355 = !DILocation(line: 84, column: 5, scope: !111, inlinedAt: !352)
!356 = !DILocation(line: 85, column: 17, scope: !111, inlinedAt: !352)
!357 = !DILocation(line: 80, column: 15, scope: !111, inlinedAt: !352)
!358 = !DILocation(line: 85, column: 5, scope: !111, inlinedAt: !352)
!359 = !DILocation(line: 86, column: 29, scope: !133, inlinedAt: !352)
!360 = !DILocation(line: 86, column: 21, scope: !133, inlinedAt: !352)
!361 = !DILocation(line: 87, column: 24, scope: !133, inlinedAt: !352)
!362 = !DILocation(line: 87, column: 14, scope: !133, inlinedAt: !352)
!363 = !DILocation(line: 0, scope: !133, inlinedAt: !352)
!364 = !DILocation(line: 90, column: 1, scope: !111, inlinedAt: !352)
!365 = !DILocation(line: 89, column: 5, scope: !111, inlinedAt: !352)
!366 = !DILocation(line: 158, column: 43, scope: !305)
!367 = !DILocation(line: 157, column: 17, scope: !305)
!368 = !DILocation(line: 159, column: 13, scope: !305)
!369 = distinct !{!369, !315, !370}
!370 = !DILocation(line: 161, column: 5, scope: !289)
!371 = !DILocation(line: 165, column: 32, scope: !372)
!372 = distinct !DILexicalBlock(scope: !289, file: !3, line: 165, column: 9)
!373 = !DILocation(line: 165, column: 42, scope: !372)
!374 = !DILocation(line: 165, column: 9, scope: !372)
!375 = !DILocation(line: 165, column: 72, scope: !372)
!376 = !DILocation(line: 165, column: 9, scope: !289)
!377 = !DILocation(line: 166, column: 34, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !3, line: 165, column: 78)
!379 = !DILocation(line: 166, column: 45, scope: !378)
!380 = !DILocation(line: 166, column: 9, scope: !378)
!381 = !DILocation(line: 168, column: 5, scope: !378)
!382 = !DILocation(line: 169, column: 1, scope: !289)
!383 = distinct !DISubprogram(name: "aofRewriteBufferWrite", scope: !3, file: !3, line: 174, type: !384, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!11, !6}
!386 = !{!387, !388, !389, !390, !391, !393}
!387 = !DILocalVariable(name: "fd", arg: 1, scope: !383, file: !3, line: 174, type: !6)
!388 = !DILocalVariable(name: "ln", scope: !383, file: !3, line: 175, type: !116)
!389 = !DILocalVariable(name: "li", scope: !383, file: !3, line: 176, type: !126)
!390 = !DILocalVariable(name: "count", scope: !383, file: !3, line: 177, type: !11)
!391 = !DILocalVariable(name: "block", scope: !392, file: !3, line: 181, type: !134)
!392 = distinct !DILexicalBlock(scope: !383, file: !3, line: 180, column: 33)
!393 = !DILocalVariable(name: "nwritten", scope: !392, file: !3, line: 182, type: !11)
!394 = !DILocation(line: 174, column: 35, scope: !383)
!395 = !DILocation(line: 176, column: 5, scope: !383)
!396 = !DILocation(line: 177, column: 13, scope: !383)
!397 = !DILocation(line: 179, column: 23, scope: !383)
!398 = !DILocation(line: 176, column: 14, scope: !383)
!399 = !DILocation(line: 179, column: 5, scope: !383)
!400 = !DILocation(line: 180, column: 17, scope: !383)
!401 = !DILocation(line: 175, column: 15, scope: !383)
!402 = !DILocation(line: 180, column: 5, scope: !383)
!403 = !DILocation(line: 181, column: 29, scope: !392)
!404 = !DILocation(line: 181, column: 21, scope: !392)
!405 = !DILocation(line: 184, column: 20, scope: !406)
!406 = distinct !DILexicalBlock(scope: !392, file: !3, line: 184, column: 13)
!407 = !DILocation(line: 184, column: 13, scope: !406)
!408 = !DILocation(line: 184, column: 13, scope: !392)
!409 = !DILocation(line: 185, column: 33, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 184, column: 26)
!411 = !DILocation(line: 185, column: 24, scope: !410)
!412 = !DILocation(line: 182, column: 17, scope: !392)
!413 = !DILocation(line: 186, column: 45, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !3, line: 186, column: 17)
!415 = !DILocation(line: 186, column: 26, scope: !414)
!416 = !DILocation(line: 186, column: 17, scope: !410)
!417 = !DILocation(line: 187, column: 30, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 187, column: 21)
!419 = distinct !DILexicalBlock(scope: !414, file: !3, line: 186, column: 51)
!420 = !DILocation(line: 187, column: 21, scope: !419)
!421 = !DILocation(line: 187, column: 36, scope: !418)
!422 = !DILocation(line: 187, column: 42, scope: !418)
!423 = !{!92, !92, i64 0}
!424 = !DILocation(line: 190, column: 19, scope: !410)
!425 = !DILocation(line: 191, column: 9, scope: !410)
!426 = !DILocation(line: 0, scope: !410)
!427 = !DILocation(line: 0, scope: !383)
!428 = !DILocation(line: 194, column: 1, scope: !383)
!429 = distinct !DISubprogram(name: "aofFsyncInProgress", scope: !3, file: !3, line: 202, type: !430, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!430 = !DISubroutineType(types: !431)
!431 = !{!6}
!432 = !DILocation(line: 203, column: 12, scope: !429)
!433 = !DILocation(line: 203, column: 48, scope: !429)
!434 = !DILocation(line: 203, column: 5, scope: !429)
!435 = distinct !DISubprogram(name: "aof_background_fsync", scope: !3, file: !3, line: 208, type: !4, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !436)
!436 = !{!437}
!437 = !DILocalVariable(name: "fd", arg: 1, scope: !435, file: !3, line: 208, type: !6)
!438 = !DILocation(line: 208, column: 31, scope: !435)
!439 = !DILocation(line: 209, column: 49, scope: !435)
!440 = !DILocation(line: 209, column: 42, scope: !435)
!441 = !DILocation(line: 209, column: 5, scope: !435)
!442 = !DILocation(line: 210, column: 1, scope: !435)
!443 = distinct !DISubprogram(name: "stopAppendOnly", scope: !3, file: !3, line: 234, type: !86, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!444 = !DILocation(line: 235, column: 5, scope: !443)
!445 = !{!91, !92, i64 1880}
!446 = !DILocation(line: 236, column: 5, scope: !443)
!447 = !DILocation(line: 237, column: 24, scope: !443)
!448 = !{!91, !92, i64 1960}
!449 = !DILocation(line: 237, column: 5, scope: !443)
!450 = !DILocation(line: 238, column: 18, scope: !443)
!451 = !DILocation(line: 238, column: 5, scope: !443)
!452 = !DILocation(line: 240, column: 19, scope: !443)
!453 = !DILocation(line: 241, column: 28, scope: !443)
!454 = !{!91, !92, i64 1964}
!455 = !DILocation(line: 242, column: 22, scope: !443)
!456 = !DILocation(line: 243, column: 5, scope: !443)
!457 = !DILocation(line: 244, column: 1, scope: !443)
!458 = !DILocation(line: 337, column: 30, scope: !2)
!459 = !DILocation(line: 339, column: 9, scope: !2)
!460 = !DILocation(line: 342, column: 23, scope: !461)
!461 = distinct !DILexicalBlock(scope: !2, file: !3, line: 342, column: 9)
!462 = !{!91, !95, i64 1952}
!463 = !DILocalVariable(name: "s", arg: 1, scope: !464, file: !26, line: 87, type: !469)
!464 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !465, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !471)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !469}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !468, line: 58, baseType: !17)
!468 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !26, line: 43, baseType: !20)
!471 = !{!463, !472}
!472 = !DILocalVariable(name: "flags", scope: !464, file: !26, line: 88, type: !19)
!473 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !474)
!474 = distinct !DILocation(line: 342, column: 9, scope: !461)
!475 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !474)
!476 = !{!93, !93, i64 0}
!477 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !474)
!478 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !474)
!479 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !474)
!480 = !DILocation(line: 0, scope: !481)
!481 = distinct !DILexicalBlock(scope: !2, file: !3, line: 358, column: 9)
!482 = !{!91, !92, i64 1884}
!483 = !DILocation(line: 348, column: 52, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 348, column: 13)
!485 = distinct !DILexicalBlock(scope: !461, file: !3, line: 342, column: 38)
!486 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !474)
!487 = distinct !DILexicalBlock(scope: !464, file: !26, line: 89, column: 33)
!488 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !474)
!489 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !474)
!490 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !474)
!491 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !474)
!492 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !474)
!493 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !474)
!494 = !{!495, !495, i64 0}
!495 = !{!"short", !93, i64 0}
!496 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !474)
!497 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !474)
!498 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !474)
!499 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !474)
!500 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !474)
!501 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !474)
!502 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !474)
!503 = !DILocation(line: 0, scope: !487, inlinedAt: !474)
!504 = !DILocation(line: 342, column: 32, scope: !461)
!505 = !DILocation(line: 342, column: 9, scope: !2)
!506 = !DILocation(line: 349, column: 20, scope: !484)
!507 = !{!91, !96, i64 1928}
!508 = !DILocation(line: 349, column: 47, scope: !484)
!509 = !{!91, !96, i64 1920}
!510 = !DILocation(line: 349, column: 37, scope: !484)
!511 = !DILocation(line: 349, column: 64, scope: !484)
!512 = !DILocation(line: 350, column: 20, scope: !484)
!513 = !{!91, !96, i64 2872}
!514 = !DILocation(line: 350, column: 38, scope: !484)
!515 = !{!91, !96, i64 1976}
!516 = !DILocation(line: 350, column: 29, scope: !484)
!517 = !DILocation(line: 350, column: 53, scope: !484)
!518 = !DILocation(line: 203, column: 12, scope: !429, inlinedAt: !519)
!519 = distinct !DILocation(line: 351, column: 34, scope: !484)
!520 = !DILocation(line: 203, column: 48, scope: !429, inlinedAt: !519)
!521 = !DILocation(line: 203, column: 5, scope: !429, inlinedAt: !519)
!522 = !DILocation(line: 348, column: 13, scope: !485)
!523 = !DILocation(line: 358, column: 9, scope: !2)
!524 = !DILocation(line: 203, column: 12, scope: !429, inlinedAt: !525)
!525 = distinct !DILocation(line: 359, column: 28, scope: !481)
!526 = !DILocation(line: 203, column: 48, scope: !429, inlinedAt: !525)
!527 = !DILocation(line: 203, column: 5, scope: !429, inlinedAt: !525)
!528 = !DILocation(line: 361, column: 16, scope: !529)
!529 = distinct !DILexicalBlock(scope: !2, file: !3, line: 361, column: 9)
!530 = !DILocation(line: 361, column: 26, scope: !529)
!531 = !DILocation(line: 361, column: 52, scope: !529)
!532 = !DILocation(line: 361, column: 48, scope: !529)
!533 = !DILocation(line: 366, column: 24, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 366, column: 17)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 365, column: 31)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 365, column: 13)
!537 = distinct !DILexicalBlock(scope: !529, file: !3, line: 361, column: 59)
!538 = !{!91, !96, i64 1968}
!539 = !DILocation(line: 366, column: 50, scope: !534)
!540 = !DILocation(line: 0, scope: !541)
!541 = distinct !DILexicalBlock(scope: !534, file: !3, line: 371, column: 24)
!542 = !DILocation(line: 366, column: 17, scope: !535)
!543 = !DILocation(line: 369, column: 50, scope: !544)
!544 = distinct !DILexicalBlock(scope: !534, file: !3, line: 366, column: 56)
!545 = !DILocation(line: 370, column: 17, scope: !544)
!546 = !DILocation(line: 371, column: 40, scope: !541)
!547 = !DILocation(line: 371, column: 75, scope: !541)
!548 = !DILocation(line: 371, column: 24, scope: !534)
!549 = !DILocation(line: 378, column: 37, scope: !535)
!550 = !{!91, !96, i64 2008}
!551 = !DILocation(line: 379, column: 13, scope: !535)
!552 = !DILocation(line: 380, column: 9, scope: !535)
!553 = !DILocation(line: 388, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !2, file: !3, line: 388, column: 5)
!555 = !{!91, !97, i64 3096}
!556 = !DILocation(line: 388, column: 5, scope: !2)
!557 = !DILocation(line: 388, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 388, column: 5)
!559 = !DILocation(line: 340, column: 14, scope: !2)
!560 = !DILocation(line: 389, column: 32, scope: !2)
!561 = !DILocation(line: 389, column: 46, scope: !2)
!562 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !563)
!563 = distinct !DILocation(line: 389, column: 54, scope: !2)
!564 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !563)
!565 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !563)
!566 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !563)
!567 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !563)
!568 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !563)
!569 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !563)
!570 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !563)
!571 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !563)
!572 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !563)
!573 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !563)
!574 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !563)
!575 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !563)
!576 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !563)
!577 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !563)
!578 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !563)
!579 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !563)
!580 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !563)
!581 = !DILocation(line: 0, scope: !487, inlinedAt: !563)
!582 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !563)
!583 = !DILocalVariable(name: "fd", arg: 1, scope: !584, file: !3, line: 297, type: !6)
!584 = distinct !DISubprogram(name: "aofWrite", scope: !3, file: !3, line: 297, type: !585, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !592)
!585 = !DISubroutineType(types: !586)
!586 = !{!11, !6, !587, !589}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !590, line: 40, baseType: !591)
!590 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !14, line: 129, baseType: !17)
!592 = !{!583, !593, !594, !595, !596}
!593 = !DILocalVariable(name: "buf", arg: 2, scope: !584, file: !3, line: 297, type: !587)
!594 = !DILocalVariable(name: "len", arg: 3, scope: !584, file: !3, line: 297, type: !589)
!595 = !DILocalVariable(name: "nwritten", scope: !584, file: !3, line: 298, type: !11)
!596 = !DILocalVariable(name: "totwritten", scope: !584, file: !3, line: 298, type: !11)
!597 = !DILocation(line: 297, column: 22, scope: !584, inlinedAt: !598)
!598 = distinct !DILocation(line: 389, column: 16, scope: !2)
!599 = !DILocation(line: 297, column: 38, scope: !584, inlinedAt: !598)
!600 = !DILocation(line: 297, column: 50, scope: !584, inlinedAt: !598)
!601 = !DILocation(line: 298, column: 13, scope: !584, inlinedAt: !598)
!602 = !DILocation(line: 298, column: 27, scope: !584, inlinedAt: !598)
!603 = !DILocation(line: 300, column: 5, scope: !584, inlinedAt: !598)
!604 = !DILocation(line: 301, column: 20, scope: !605, inlinedAt: !598)
!605 = distinct !DILexicalBlock(scope: !584, file: !3, line: 300, column: 16)
!606 = !DILocation(line: 303, column: 22, scope: !607, inlinedAt: !598)
!607 = distinct !DILexicalBlock(scope: !605, file: !3, line: 303, column: 13)
!608 = !DILocation(line: 303, column: 13, scope: !605, inlinedAt: !598)
!609 = !DILocation(line: 304, column: 17, scope: !610, inlinedAt: !598)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 304, column: 17)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 303, column: 27)
!612 = !DILocation(line: 304, column: 23, scope: !610, inlinedAt: !598)
!613 = !DILocation(line: 304, column: 17, scope: !611, inlinedAt: !598)
!614 = distinct !{!614, !615, !616}
!615 = !DILocation(line: 300, column: 5, scope: !584)
!616 = !DILocation(line: 313, column: 5, scope: !584)
!617 = !DILocation(line: 307, column: 20, scope: !611, inlinedAt: !598)
!618 = !DILocation(line: 307, column: 13, scope: !611, inlinedAt: !598)
!619 = !DILocation(line: 310, column: 13, scope: !605, inlinedAt: !598)
!620 = !DILocation(line: 311, column: 13, scope: !605, inlinedAt: !598)
!621 = !DILocation(line: 312, column: 20, scope: !605, inlinedAt: !598)
!622 = !DILocation(line: 0, scope: !584, inlinedAt: !598)
!623 = !DILocation(line: 316, column: 1, scope: !584, inlinedAt: !598)
!624 = !DILocation(line: 338, column: 13, scope: !2)
!625 = !DILocation(line: 390, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !2, file: !3, line: 390, column: 5)
!627 = !DILocation(line: 390, column: 5, scope: !2)
!628 = !DILocation(line: 390, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 390, column: 5)
!630 = !DILocation(line: 0, scope: !558)
!631 = !DILocation(line: 396, column: 9, scope: !2)
!632 = !DILocation(line: 397, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 397, column: 9)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 396, column: 27)
!635 = distinct !DILexicalBlock(scope: !2, file: !3, line: 396, column: 9)
!636 = !DILocation(line: 398, column: 23, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !3, line: 398, column: 16)
!638 = !{!91, !92, i64 1940}
!639 = !DILocation(line: 398, column: 53, scope: !637)
!640 = !DILocation(line: 398, column: 43, scope: !637)
!641 = !DILocation(line: 0, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 401, column: 9)
!643 = distinct !DILexicalBlock(scope: !637, file: !3, line: 400, column: 12)
!644 = !DILocation(line: 0, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 399, column: 9)
!646 = distinct !DILexicalBlock(scope: !637, file: !3, line: 398, column: 74)
!647 = !DILocation(line: 399, column: 9, scope: !645)
!648 = !DILocation(line: 401, column: 9, scope: !642)
!649 = !DILocation(line: 403, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !2, file: !3, line: 403, column: 5)
!651 = !DILocation(line: 406, column: 38, scope: !2)
!652 = !DILocation(line: 408, column: 44, scope: !78)
!653 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !654)
!654 = distinct !DILocation(line: 408, column: 30, scope: !78)
!655 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !654)
!656 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !654)
!657 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !654)
!658 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !654)
!659 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !654)
!660 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !654)
!661 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !654)
!662 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !654)
!663 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !654)
!664 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !654)
!665 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !654)
!666 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !654)
!667 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !654)
!668 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !654)
!669 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !654)
!670 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !654)
!671 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !654)
!672 = !DILocation(line: 0, scope: !487, inlinedAt: !654)
!673 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !654)
!674 = !DILocation(line: 408, column: 18, scope: !78)
!675 = !DILocation(line: 408, column: 9, scope: !2)
!676 = !DILocation(line: 410, column: 13, scope: !77)
!677 = !DILocation(line: 413, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !77, file: !3, line: 413, column: 13)
!679 = !DILocation(line: 413, column: 32, scope: !678)
!680 = !DILocation(line: 413, column: 30, scope: !678)
!681 = !DILocation(line: 413, column: 54, scope: !678)
!682 = !DILocation(line: 413, column: 13, scope: !77)
!683 = !DILocation(line: 415, column: 34, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !3, line: 413, column: 82)
!685 = !DILocation(line: 416, column: 9, scope: !684)
!686 = !DILocation(line: 419, column: 22, scope: !687)
!687 = distinct !DILexicalBlock(scope: !77, file: !3, line: 419, column: 13)
!688 = !DILocation(line: 419, column: 13, scope: !77)
!689 = !DILocation(line: 420, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 419, column: 29)
!691 = !DILocation(line: 422, column: 30, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 420, column: 26)
!693 = distinct !DILexicalBlock(scope: !690, file: !3, line: 420, column: 17)
!694 = !DILocation(line: 422, column: 21, scope: !692)
!695 = !DILocation(line: 421, column: 17, scope: !692)
!696 = !DILocation(line: 423, column: 47, scope: !692)
!697 = !DILocation(line: 424, column: 13, scope: !692)
!698 = !DILocation(line: 426, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !687, file: !3, line: 425, column: 16)
!700 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !701)
!701 = distinct !DILocation(line: 431, column: 51, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 426, column: 26)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 426, column: 17)
!704 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !701)
!705 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !701)
!706 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !701)
!707 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !701)
!708 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !701)
!709 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !701)
!710 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !701)
!711 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !701)
!712 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !701)
!713 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !701)
!714 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !701)
!715 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !701)
!716 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !701)
!717 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !701)
!718 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !701)
!719 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !701)
!720 = !DILocation(line: 0, scope: !487, inlinedAt: !701)
!721 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !701)
!722 = !DILocation(line: 427, column: 17, scope: !702)
!723 = !DILocation(line: 432, column: 13, scope: !702)
!724 = !DILocation(line: 434, column: 34, scope: !725)
!725 = distinct !DILexicalBlock(scope: !699, file: !3, line: 434, column: 17)
!726 = !DILocation(line: 434, column: 49, scope: !725)
!727 = !DILocation(line: 434, column: 17, scope: !725)
!728 = !DILocation(line: 434, column: 67, scope: !725)
!729 = !DILocation(line: 434, column: 17, scope: !699)
!730 = !DILocation(line: 439, column: 56, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 435, column: 30)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 435, column: 21)
!733 = distinct !DILexicalBlock(scope: !725, file: !3, line: 434, column: 74)
!734 = !DILocation(line: 439, column: 47, scope: !731)
!735 = !DILocation(line: 436, column: 21, scope: !731)
!736 = !DILocation(line: 440, column: 17, scope: !731)
!737 = !DILocation(line: 0, scope: !699)
!738 = !{!91, !92, i64 2028}
!739 = !DILocation(line: 450, column: 20, scope: !740)
!740 = distinct !DILexicalBlock(scope: !77, file: !3, line: 450, column: 13)
!741 = !DILocation(line: 389, column: 14, scope: !2)
!742 = !DILocation(line: 450, column: 30, scope: !740)
!743 = !DILocation(line: 450, column: 13, scope: !77)
!744 = !DILocation(line: 455, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !740, file: !3, line: 450, column: 51)
!746 = !DILocation(line: 456, column: 13, scope: !745)
!747 = !DILocation(line: 461, column: 42, scope: !748)
!748 = distinct !DILexicalBlock(scope: !740, file: !3, line: 457, column: 16)
!749 = !{!91, !92, i64 2024}
!750 = !DILocation(line: 465, column: 26, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 465, column: 17)
!752 = !DILocation(line: 465, column: 17, scope: !748)
!753 = !DILocation(line: 466, column: 41, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 465, column: 31)
!755 = !DILocation(line: 467, column: 33, scope: !754)
!756 = !DILocation(line: 467, column: 17, scope: !754)
!757 = !DILocation(line: 468, column: 13, scope: !754)
!758 = !DILocation(line: 474, column: 20, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 474, column: 13)
!760 = distinct !DILexicalBlock(scope: !78, file: !3, line: 471, column: 12)
!761 = !DILocation(line: 474, column: 42, scope: !759)
!762 = !DILocation(line: 474, column: 13, scope: !760)
!763 = !DILocation(line: 475, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !3, line: 474, column: 52)
!765 = !DILocation(line: 477, column: 42, scope: !764)
!766 = !DILocation(line: 484, column: 24, scope: !767)
!767 = distinct !DILexicalBlock(scope: !2, file: !3, line: 484, column: 9)
!768 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !769)
!769 = distinct !DILocation(line: 484, column: 10, scope: !767)
!770 = !DILocation(line: 478, column: 9, scope: !764)
!771 = !DILocation(line: 480, column: 29, scope: !2)
!772 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !769)
!773 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !769)
!774 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !769)
!775 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !769)
!776 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !769)
!777 = !DILocalVariable(name: "s", arg: 1, scope: !778, file: !26, line: 104, type: !469)
!778 = distinct !DISubprogram(name: "sdsavail", scope: !26, file: !26, line: 104, type: !465, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !779)
!779 = !{!777, !780, !781, !784, !786, !788}
!780 = !DILocalVariable(name: "flags", scope: !778, file: !26, line: 105, type: !19)
!781 = !DILocalVariable(name: "sh", scope: !782, file: !26, line: 111, type: !24)
!782 = distinct !DILexicalBlock(scope: !783, file: !26, line: 110, column: 26)
!783 = distinct !DILexicalBlock(scope: !778, file: !26, line: 106, column: 33)
!784 = !DILocalVariable(name: "sh", scope: !785, file: !26, line: 115, type: !39)
!785 = distinct !DILexicalBlock(scope: !783, file: !26, line: 114, column: 27)
!786 = !DILocalVariable(name: "sh", scope: !787, file: !26, line: 119, type: !49)
!787 = distinct !DILexicalBlock(scope: !783, file: !26, line: 118, column: 27)
!788 = !DILocalVariable(name: "sh", scope: !789, file: !26, line: 123, type: !59)
!789 = distinct !DILexicalBlock(scope: !783, file: !26, line: 122, column: 27)
!790 = !DILocation(line: 104, column: 41, scope: !778, inlinedAt: !791)
!791 = distinct !DILocation(line: 484, column: 33, scope: !767)
!792 = !DILocation(line: 105, column: 19, scope: !778, inlinedAt: !791)
!793 = !DILocation(line: 106, column: 5, scope: !778, inlinedAt: !791)
!794 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !769)
!795 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !769)
!796 = !DILocation(line: 111, column: 13, scope: !782, inlinedAt: !791)
!797 = !DILocation(line: 112, column: 24, scope: !782, inlinedAt: !791)
!798 = !DILocation(line: 112, column: 20, scope: !782, inlinedAt: !791)
!799 = !DILocation(line: 112, column: 30, scope: !782, inlinedAt: !791)
!800 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !769)
!801 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !769)
!802 = !DILocation(line: 115, column: 13, scope: !785, inlinedAt: !791)
!803 = !DILocation(line: 116, column: 24, scope: !785, inlinedAt: !791)
!804 = !DILocation(line: 116, column: 20, scope: !785, inlinedAt: !791)
!805 = !DILocation(line: 116, column: 30, scope: !785, inlinedAt: !791)
!806 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !769)
!807 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !769)
!808 = !DILocation(line: 119, column: 13, scope: !787, inlinedAt: !791)
!809 = !DILocation(line: 120, column: 24, scope: !787, inlinedAt: !791)
!810 = !DILocation(line: 120, column: 30, scope: !787, inlinedAt: !791)
!811 = !DILocation(line: 120, column: 20, scope: !787, inlinedAt: !791)
!812 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !769)
!813 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !769)
!814 = !DILocation(line: 123, column: 13, scope: !789, inlinedAt: !791)
!815 = !DILocation(line: 124, column: 24, scope: !789, inlinedAt: !791)
!816 = !DILocation(line: 124, column: 30, scope: !789, inlinedAt: !791)
!817 = !DILocation(line: 0, scope: !818, inlinedAt: !791)
!818 = distinct !DILexicalBlock(scope: !783, file: !26, line: 107, column: 26)
!819 = !DILocation(line: 128, column: 1, scope: !778, inlinedAt: !791)
!820 = !DILocation(line: 484, column: 32, scope: !767)
!821 = !DILocation(line: 484, column: 59, scope: !767)
!822 = !DILocation(line: 484, column: 9, scope: !2)
!823 = !DILocation(line: 485, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !767, file: !3, line: 484, column: 67)
!825 = !DILocation(line: 486, column: 5, scope: !824)
!826 = !DILocation(line: 487, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !767, file: !3, line: 486, column: 12)
!828 = !DILocation(line: 488, column: 26, scope: !827)
!829 = !DILocation(line: 488, column: 24, scope: !827)
!830 = !DILocation(line: 494, column: 16, scope: !831)
!831 = distinct !DILexicalBlock(scope: !2, file: !3, line: 494, column: 9)
!832 = !{!91, !92, i64 1896}
!833 = !DILocation(line: 494, column: 9, scope: !831)
!834 = !DILocation(line: 494, column: 40, scope: !831)
!835 = !DILocation(line: 495, column: 17, scope: !831)
!836 = !DILocation(line: 495, column: 47, scope: !831)
!837 = !DILocation(line: 495, column: 37, scope: !831)
!838 = !DILocation(line: 499, column: 16, scope: !839)
!839 = distinct !DILexicalBlock(scope: !2, file: !3, line: 499, column: 9)
!840 = !DILocation(line: 499, column: 9, scope: !2)
!841 = !DILocation(line: 502, column: 9, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 502, column: 9)
!843 = distinct !DILexicalBlock(scope: !839, file: !3, line: 499, column: 47)
!844 = !DILocation(line: 502, column: 9, scope: !843)
!845 = !DILocation(line: 502, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !3, line: 502, column: 9)
!847 = !DILocation(line: 503, column: 28, scope: !843)
!848 = !DILocation(line: 503, column: 9, scope: !843)
!849 = !DILocation(line: 504, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !3, line: 504, column: 9)
!851 = !DILocation(line: 504, column: 9, scope: !843)
!852 = !DILocation(line: 504, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 504, column: 9)
!854 = !DILocation(line: 505, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !843, file: !3, line: 505, column: 9)
!856 = !DILocation(line: 506, column: 42, scope: !843)
!857 = !DILocation(line: 506, column: 33, scope: !843)
!858 = !DILocation(line: 507, column: 40, scope: !843)
!859 = !DILocation(line: 507, column: 31, scope: !843)
!860 = !DILocation(line: 508, column: 5, scope: !843)
!861 = !DILocation(line: 509, column: 24, scope: !862)
!862 = distinct !DILexicalBlock(scope: !839, file: !3, line: 508, column: 16)
!863 = !DILocation(line: 509, column: 42, scope: !862)
!864 = !DILocation(line: 509, column: 33, scope: !862)
!865 = !DILocation(line: 508, column: 16, scope: !839)
!866 = !DILocation(line: 510, column: 14, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 510, column: 13)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 509, column: 59)
!869 = !DILocation(line: 510, column: 13, scope: !868)
!870 = !DILocation(line: 511, column: 41, scope: !871)
!871 = distinct !DILexicalBlock(scope: !867, file: !3, line: 510, column: 32)
!872 = !DILocation(line: 208, column: 31, scope: !435, inlinedAt: !873)
!873 = distinct !DILocation(line: 511, column: 13, scope: !871)
!874 = !DILocation(line: 209, column: 49, scope: !435, inlinedAt: !873)
!875 = !DILocation(line: 209, column: 42, scope: !435, inlinedAt: !873)
!876 = !DILocation(line: 209, column: 5, scope: !435, inlinedAt: !873)
!877 = !DILocation(line: 210, column: 1, scope: !435, inlinedAt: !873)
!878 = !DILocation(line: 512, column: 46, scope: !871)
!879 = !DILocation(line: 512, column: 37, scope: !871)
!880 = !DILocation(line: 514, column: 40, scope: !868)
!881 = !DILocation(line: 513, column: 9, scope: !871)
!882 = !DILocation(line: 514, column: 31, scope: !868)
!883 = !DILocation(line: 515, column: 5, scope: !868)
!884 = !DILocation(line: 516, column: 1, scope: !2)
!885 = distinct !DISubprogram(name: "killAppendOnlyChild", scope: !3, file: !3, line: 213, type: !86, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !886)
!886 = !{!887}
!887 = !DILocalVariable(name: "statloc", scope: !885, file: !3, line: 214, type: !6)
!888 = !DILocalVariable(name: "tmpfile", scope: !889, file: !3, line: 1633, type: !896)
!889 = distinct !DISubprogram(name: "aofRemoveTempFile", scope: !3, file: !3, line: 1632, type: !890, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !894)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !893, line: 61, baseType: !6)
!893 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!894 = !{!895, !888}
!895 = !DILocalVariable(name: "childpid", arg: 1, scope: !889, file: !3, line: 1632, type: !892)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 256)
!899 = !DILocation(line: 1633, column: 10, scope: !889, inlinedAt: !900)
!900 = distinct !DILocation(line: 225, column: 5, scope: !885)
!901 = !DILocation(line: 214, column: 5, scope: !885)
!902 = !DILocation(line: 216, column: 16, scope: !903)
!903 = distinct !DILexicalBlock(scope: !885, file: !3, line: 216, column: 9)
!904 = !DILocation(line: 216, column: 30, scope: !903)
!905 = !DILocation(line: 216, column: 9, scope: !885)
!906 = !DILocation(line: 219, column: 9, scope: !885)
!907 = !DILocation(line: 218, column: 5, scope: !885)
!908 = !DILocation(line: 220, column: 21, scope: !909)
!909 = distinct !DILexicalBlock(scope: !885, file: !3, line: 220, column: 9)
!910 = !DILocation(line: 220, column: 9, scope: !909)
!911 = !DILocation(line: 220, column: 44, scope: !909)
!912 = !DILocation(line: 220, column: 9, scope: !885)
!913 = !DILocation(line: 214, column: 9, scope: !885)
!914 = !DILocation(line: 221, column: 15, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !3, line: 220, column: 51)
!916 = !DILocation(line: 221, column: 48, scope: !915)
!917 = !DILocation(line: 221, column: 38, scope: !915)
!918 = !DILocation(line: 221, column: 9, scope: !915)
!919 = distinct !{!919, !918, !920}
!920 = !DILocation(line: 221, column: 62, scope: !915)
!921 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !922)
!922 = distinct !DILocation(line: 224, column: 5, scope: !885)
!923 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !922)
!924 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !922)
!925 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !922)
!926 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !922)
!927 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !922)
!928 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !922)
!929 = !DILocation(line: 76, column: 1, scope: !85, inlinedAt: !922)
!930 = !DILocation(line: 225, column: 30, scope: !885)
!931 = !DILocation(line: 1632, column: 30, scope: !889, inlinedAt: !900)
!932 = !DILocation(line: 1633, column: 5, scope: !889, inlinedAt: !900)
!933 = !DILocation(line: 1635, column: 5, scope: !889, inlinedAt: !900)
!934 = !DILocation(line: 1636, column: 5, scope: !889, inlinedAt: !900)
!935 = !DILocation(line: 1637, column: 1, scope: !889, inlinedAt: !900)
!936 = !DILocation(line: 226, column: 26, scope: !885)
!937 = !DILocation(line: 227, column: 35, scope: !885)
!938 = !{!91, !96, i64 1992}
!939 = !DILocation(line: 1533, column: 30, scope: !940, inlinedAt: !941)
!940 = distinct !DISubprogram(name: "aofClosePipes", scope: !3, file: !3, line: 1532, type: !86, isLocal: false, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!941 = distinct !DILocation(line: 229, column: 5, scope: !885)
!942 = !DILocation(line: 1533, column: 40, scope: !940, inlinedAt: !941)
!943 = !{!91, !92, i64 2052}
!944 = !DILocation(line: 1533, column: 5, scope: !940, inlinedAt: !941)
!945 = !DILocation(line: 1534, column: 30, scope: !940, inlinedAt: !941)
!946 = !DILocation(line: 1534, column: 40, scope: !940, inlinedAt: !941)
!947 = !DILocation(line: 1534, column: 5, scope: !940, inlinedAt: !941)
!948 = !DILocation(line: 1535, column: 18, scope: !940, inlinedAt: !941)
!949 = !DILocation(line: 1535, column: 5, scope: !940, inlinedAt: !941)
!950 = !DILocation(line: 1536, column: 18, scope: !940, inlinedAt: !941)
!951 = !{!91, !92, i64 2044}
!952 = !DILocation(line: 1536, column: 5, scope: !940, inlinedAt: !941)
!953 = !DILocation(line: 1537, column: 18, scope: !940, inlinedAt: !941)
!954 = !{!91, !92, i64 2048}
!955 = !DILocation(line: 1537, column: 5, scope: !940, inlinedAt: !941)
!956 = !DILocation(line: 1538, column: 18, scope: !940, inlinedAt: !941)
!957 = !DILocation(line: 1538, column: 5, scope: !940, inlinedAt: !941)
!958 = !DILocation(line: 1539, column: 18, scope: !940, inlinedAt: !941)
!959 = !{!91, !92, i64 2056}
!960 = !DILocation(line: 1539, column: 5, scope: !940, inlinedAt: !941)
!961 = !DILocation(line: 1540, column: 18, scope: !940, inlinedAt: !941)
!962 = !{!91, !92, i64 2060}
!963 = !DILocation(line: 1540, column: 5, scope: !940, inlinedAt: !941)
!964 = !DILocation(line: 1541, column: 1, scope: !940, inlinedAt: !941)
!965 = !DILocation(line: 230, column: 1, scope: !885)
!966 = distinct !DISubprogram(name: "startAppendOnly", scope: !3, file: !3, line: 248, type: !430, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !967)
!967 = !{!968, !972, !973}
!968 = !DILocalVariable(name: "cwd", scope: !966, file: !3, line: 249, type: !969)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 1024)
!972 = !DILocalVariable(name: "newfd", scope: !966, file: !3, line: 250, type: !6)
!973 = !DILocalVariable(name: "cwdp", scope: !974, file: !3, line: 255, type: !20)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 254, column: 22)
!975 = distinct !DILexicalBlock(scope: !966, file: !3, line: 254, column: 9)
!976 = !DILocation(line: 249, column: 5, scope: !966)
!977 = !DILocation(line: 249, column: 10, scope: !966)
!978 = !DILocation(line: 252, column: 25, scope: !966)
!979 = !{!91, !95, i64 1888}
!980 = !DILocation(line: 252, column: 13, scope: !966)
!981 = !DILocation(line: 250, column: 9, scope: !966)
!982 = !DILocation(line: 253, column: 5, scope: !966)
!983 = !DILocation(line: 254, column: 15, scope: !975)
!984 = !DILocation(line: 254, column: 9, scope: !966)
!985 = !DILocation(line: 255, column: 22, scope: !974)
!986 = !DILocation(line: 255, column: 15, scope: !974)
!987 = !DILocation(line: 260, column: 20, scope: !974)
!988 = !DILocation(line: 261, column: 13, scope: !974)
!989 = !DILocation(line: 262, column: 22, scope: !974)
!990 = !DILocation(line: 262, column: 13, scope: !974)
!991 = !DILocation(line: 257, column: 9, scope: !974)
!992 = !DILocation(line: 265, column: 16, scope: !993)
!993 = distinct !DILexicalBlock(scope: !966, file: !3, line: 265, column: 9)
!994 = !{!91, !92, i64 2096}
!995 = !DILocation(line: 265, column: 30, scope: !993)
!996 = !DILocation(line: 265, column: 9, scope: !966)
!997 = !DILocation(line: 266, column: 38, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !3, line: 265, column: 37)
!999 = !{!91, !92, i64 1936}
!1000 = !DILocation(line: 267, column: 9, scope: !998)
!1001 = !DILocation(line: 268, column: 5, scope: !998)
!1002 = !DILocation(line: 272, column: 20, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 272, column: 13)
!1004 = distinct !DILexicalBlock(scope: !993, file: !3, line: 268, column: 12)
!1005 = !DILocation(line: 272, column: 34, scope: !1003)
!1006 = !DILocation(line: 272, column: 13, scope: !1004)
!1007 = !DILocation(line: 273, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 272, column: 41)
!1009 = !DILocation(line: 274, column: 13, scope: !1008)
!1010 = !DILocation(line: 275, column: 9, scope: !1008)
!1011 = !DILocation(line: 276, column: 13, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 276, column: 13)
!1013 = !DILocation(line: 276, column: 47, scope: !1012)
!1014 = !DILocation(line: 276, column: 13, scope: !1004)
!1015 = !DILocation(line: 277, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 276, column: 57)
!1017 = !DILocation(line: 278, column: 13, scope: !1016)
!1018 = !DILocation(line: 279, column: 13, scope: !1016)
!1019 = !DILocation(line: 284, column: 22, scope: !966)
!1020 = !DILocation(line: 285, column: 36, scope: !966)
!1021 = !DILocation(line: 285, column: 27, scope: !966)
!1022 = !DILocation(line: 286, column: 19, scope: !966)
!1023 = !DILocation(line: 287, column: 5, scope: !966)
!1024 = !DILocation(line: 0, scope: !1016)
!1025 = !DILocation(line: 288, column: 1, scope: !966)
!1026 = distinct !DISubprogram(name: "rewriteAppendOnlyFileBackground", scope: !3, file: !3, line: 1559, type: !430, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1027)
!1027 = !{!1028, !1029, !1030, !1033}
!1028 = !DILocalVariable(name: "childpid", scope: !1026, file: !3, line: 1560, type: !892)
!1029 = !DILocalVariable(name: "start", scope: !1026, file: !3, line: 1561, type: !16)
!1030 = !DILocalVariable(name: "tmpfile", scope: !1031, file: !3, line: 1568, type: !896)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1567, column: 35)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 1567, column: 9)
!1033 = !DILocalVariable(name: "private_dirty", scope: !1034, file: !3, line: 1575, type: !589)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 1574, column: 53)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1574, column: 13)
!1036 = !DILocation(line: 1563, column: 16, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 1563, column: 9)
!1038 = !DILocation(line: 1563, column: 46, scope: !1037)
!1039 = !DILocation(line: 1563, column: 36, scope: !1037)
!1040 = !DILocation(line: 1564, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 1564, column: 9)
!1042 = !DILocation(line: 1564, column: 26, scope: !1041)
!1043 = !DILocation(line: 1564, column: 9, scope: !1026)
!1044 = !DILocation(line: 1565, column: 5, scope: !1026)
!1045 = !DILocation(line: 1566, column: 13, scope: !1026)
!1046 = !DILocation(line: 1561, column: 15, scope: !1026)
!1047 = !DILocation(line: 1567, column: 21, scope: !1032)
!1048 = !DILocation(line: 1560, column: 11, scope: !1026)
!1049 = !DILocation(line: 1567, column: 29, scope: !1032)
!1050 = !DILocation(line: 1567, column: 9, scope: !1026)
!1051 = !DILocation(line: 1568, column: 9, scope: !1031)
!1052 = !DILocation(line: 1568, column: 14, scope: !1031)
!1053 = !DILocation(line: 1571, column: 9, scope: !1031)
!1054 = !DILocation(line: 1572, column: 9, scope: !1031)
!1055 = !DILocation(line: 1573, column: 65, scope: !1031)
!1056 = !DILocation(line: 1573, column: 9, scope: !1031)
!1057 = !DILocation(line: 1574, column: 13, scope: !1035)
!1058 = !DILocation(line: 1574, column: 44, scope: !1035)
!1059 = !DILocation(line: 1574, column: 13, scope: !1031)
!1060 = !DILocation(line: 1575, column: 36, scope: !1034)
!1061 = !DILocation(line: 1575, column: 20, scope: !1034)
!1062 = !DILocation(line: 1577, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1577, column: 17)
!1064 = !DILocation(line: 1577, column: 17, scope: !1034)
!1065 = !DILocation(line: 1580, column: 34, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1577, column: 32)
!1067 = !DILocation(line: 1578, column: 17, scope: !1066)
!1068 = !DILocation(line: 1581, column: 13, scope: !1066)
!1069 = !DILocation(line: 1583, column: 45, scope: !1034)
!1070 = !{!91, !96, i64 2208}
!1071 = !DILocation(line: 1584, column: 13, scope: !1034)
!1072 = !DILocation(line: 1585, column: 13, scope: !1034)
!1073 = !DILocation(line: 1586, column: 9, scope: !1034)
!1074 = !DILocation(line: 1587, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 1586, column: 16)
!1076 = !DILocation(line: 1589, column: 5, scope: !1032)
!1077 = !DILocation(line: 1616, column: 5, scope: !1026)
!1078 = !DILocation(line: 1591, column: 33, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1589, column: 12)
!1080 = !DILocation(line: 1591, column: 41, scope: !1079)
!1081 = !DILocation(line: 1591, column: 31, scope: !1079)
!1082 = !{!91, !97, i64 1120}
!1083 = !DILocation(line: 1592, column: 42, scope: !1079)
!1084 = !DILocation(line: 1592, column: 33, scope: !1079)
!1085 = !DILocation(line: 1592, column: 64, scope: !1079)
!1086 = !DILocation(line: 1592, column: 83, scope: !1079)
!1087 = !DILocation(line: 1592, column: 76, scope: !1079)
!1088 = !DILocation(line: 1592, column: 74, scope: !1079)
!1089 = !DILocation(line: 1592, column: 98, scope: !1079)
!1090 = !DILocation(line: 1592, column: 31, scope: !1079)
!1091 = !{!91, !98, i64 1128}
!1092 = !DILocation(line: 1593, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 1593, column: 9)
!1094 = !DILocation(line: 1593, column: 9, scope: !1079)
!1095 = !DILocation(line: 1594, column: 22, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 1594, column: 13)
!1097 = !DILocation(line: 1594, column: 13, scope: !1079)
!1098 = !DILocation(line: 1595, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 1594, column: 29)
!1100 = !DILocation(line: 1598, column: 26, scope: !1099)
!1101 = !DILocation(line: 1598, column: 17, scope: !1099)
!1102 = !DILocation(line: 1596, column: 13, scope: !1099)
!1103 = !DILocation(line: 1533, column: 30, scope: !940, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 1599, column: 13, scope: !1099)
!1105 = !DILocation(line: 1533, column: 40, scope: !940, inlinedAt: !1104)
!1106 = !DILocation(line: 1533, column: 5, scope: !940, inlinedAt: !1104)
!1107 = !DILocation(line: 1534, column: 30, scope: !940, inlinedAt: !1104)
!1108 = !DILocation(line: 1534, column: 40, scope: !940, inlinedAt: !1104)
!1109 = !DILocation(line: 1534, column: 5, scope: !940, inlinedAt: !1104)
!1110 = !DILocation(line: 1535, column: 18, scope: !940, inlinedAt: !1104)
!1111 = !DILocation(line: 1535, column: 5, scope: !940, inlinedAt: !1104)
!1112 = !DILocation(line: 1536, column: 18, scope: !940, inlinedAt: !1104)
!1113 = !DILocation(line: 1536, column: 5, scope: !940, inlinedAt: !1104)
!1114 = !DILocation(line: 1537, column: 18, scope: !940, inlinedAt: !1104)
!1115 = !DILocation(line: 1537, column: 5, scope: !940, inlinedAt: !1104)
!1116 = !DILocation(line: 1538, column: 18, scope: !940, inlinedAt: !1104)
!1117 = !DILocation(line: 1538, column: 5, scope: !940, inlinedAt: !1104)
!1118 = !DILocation(line: 1539, column: 18, scope: !940, inlinedAt: !1104)
!1119 = !DILocation(line: 1539, column: 5, scope: !940, inlinedAt: !1104)
!1120 = !DILocation(line: 1540, column: 18, scope: !940, inlinedAt: !1104)
!1121 = !DILocation(line: 1540, column: 5, scope: !940, inlinedAt: !1104)
!1122 = !DILocation(line: 1541, column: 1, scope: !940, inlinedAt: !1104)
!1123 = !DILocation(line: 1600, column: 13, scope: !1099)
!1124 = !DILocation(line: 1602, column: 9, scope: !1079)
!1125 = !DILocation(line: 1604, column: 38, scope: !1079)
!1126 = !DILocation(line: 1605, column: 41, scope: !1079)
!1127 = !DILocation(line: 1605, column: 39, scope: !1079)
!1128 = !DILocation(line: 1606, column: 30, scope: !1079)
!1129 = !DILocation(line: 1607, column: 9, scope: !1079)
!1130 = !DILocation(line: 1612, column: 32, scope: !1079)
!1131 = !DILocation(line: 1613, column: 9, scope: !1079)
!1132 = !DILocation(line: 1614, column: 9, scope: !1079)
!1133 = !DILocation(line: 0, scope: !1079)
!1134 = !DILocation(line: 1617, column: 1, scope: !1026)
!1135 = !DILocation(line: 297, column: 22, scope: !584)
!1136 = !DILocation(line: 297, column: 38, scope: !584)
!1137 = !DILocation(line: 297, column: 50, scope: !584)
!1138 = !DILocation(line: 298, column: 13, scope: !584)
!1139 = !DILocation(line: 298, column: 27, scope: !584)
!1140 = !DILocation(line: 301, column: 20, scope: !605)
!1141 = !DILocation(line: 303, column: 22, scope: !607)
!1142 = !DILocation(line: 303, column: 13, scope: !605)
!1143 = !DILocation(line: 304, column: 17, scope: !610)
!1144 = !DILocation(line: 304, column: 23, scope: !610)
!1145 = !DILocation(line: 304, column: 17, scope: !611)
!1146 = !DILocation(line: 307, column: 20, scope: !611)
!1147 = !DILocation(line: 307, column: 13, scope: !611)
!1148 = !DILocation(line: 310, column: 13, scope: !605)
!1149 = !DILocation(line: 311, column: 13, scope: !605)
!1150 = !DILocation(line: 312, column: 20, scope: !605)
!1151 = !DILocation(line: 0, scope: !584)
!1152 = !DILocation(line: 316, column: 1, scope: !584)
!1153 = distinct !DISubprogram(name: "catAppendOnlyGenericCommand", scope: !3, file: !3, line: 518, type: !1154, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1166)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!470, !470, !6, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !75, line: 622, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !75, line: 614, size: 128, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1159, file: !75, line: 615, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1159, file: !75, line: 616, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1159, file: !75, line: 617, baseType: !55, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1159, file: !75, line: 620, baseType: !6, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1159, file: !75, line: 621, baseType: !10, size: 64, offset: 64)
!1166 = !{!1167, !1168, !1169, !1170, !1174, !1175, !1176}
!1167 = !DILocalVariable(name: "dst", arg: 1, scope: !1153, file: !3, line: 518, type: !470)
!1168 = !DILocalVariable(name: "argc", arg: 2, scope: !1153, file: !3, line: 518, type: !6)
!1169 = !DILocalVariable(name: "argv", arg: 3, scope: !1153, file: !3, line: 518, type: !1156)
!1170 = !DILocalVariable(name: "buf", scope: !1153, file: !3, line: 519, type: !1171)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 32)
!1174 = !DILocalVariable(name: "len", scope: !1153, file: !3, line: 520, type: !6)
!1175 = !DILocalVariable(name: "j", scope: !1153, file: !3, line: 520, type: !6)
!1176 = !DILocalVariable(name: "o", scope: !1153, file: !3, line: 521, type: !1157)
!1177 = !DILocation(line: 518, column: 37, scope: !1153)
!1178 = !DILocation(line: 518, column: 46, scope: !1153)
!1179 = !DILocation(line: 518, column: 59, scope: !1153)
!1180 = !DILocation(line: 519, column: 5, scope: !1153)
!1181 = !DILocation(line: 519, column: 10, scope: !1153)
!1182 = !DILocation(line: 523, column: 12, scope: !1153)
!1183 = !DILocation(line: 524, column: 26, scope: !1153)
!1184 = !DILocation(line: 524, column: 43, scope: !1153)
!1185 = !DILocation(line: 524, column: 13, scope: !1153)
!1186 = !DILocation(line: 524, column: 12, scope: !1153)
!1187 = !DILocation(line: 520, column: 9, scope: !1153)
!1188 = !DILocation(line: 525, column: 12, scope: !1153)
!1189 = !DILocation(line: 525, column: 5, scope: !1153)
!1190 = !DILocation(line: 525, column: 16, scope: !1153)
!1191 = !DILocation(line: 526, column: 12, scope: !1153)
!1192 = !DILocation(line: 526, column: 5, scope: !1153)
!1193 = !DILocation(line: 526, column: 16, scope: !1153)
!1194 = !DILocation(line: 527, column: 29, scope: !1153)
!1195 = !DILocation(line: 527, column: 11, scope: !1153)
!1196 = !DILocation(line: 520, column: 14, scope: !1153)
!1197 = !DILocation(line: 529, column: 19, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 529, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 529, column: 5)
!1200 = !DILocation(line: 529, column: 5, scope: !1199)
!1201 = !DILocation(line: 530, column: 30, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 529, column: 32)
!1203 = !{!95, !95, i64 0}
!1204 = !DILocation(line: 530, column: 13, scope: !1202)
!1205 = !DILocation(line: 521, column: 11, scope: !1153)
!1206 = !DILocation(line: 531, column: 16, scope: !1202)
!1207 = !DILocation(line: 532, column: 57, scope: !1202)
!1208 = !{!1209, !95, i64 8}
!1209 = !{!"redisObject", !92, i64 0, !92, i64 0, !92, i64 1, !92, i64 4, !95, i64 8}
!1210 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 532, column: 47, scope: !1202)
!1212 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !1211)
!1213 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !1211)
!1214 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !1211)
!1215 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !1211)
!1216 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !1211)
!1217 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !1211)
!1218 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !1211)
!1219 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !1211)
!1220 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !1211)
!1221 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !1211)
!1222 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !1211)
!1223 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !1211)
!1224 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !1211)
!1225 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !1211)
!1226 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !1211)
!1227 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !1211)
!1228 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !1211)
!1229 = !DILocation(line: 0, scope: !487, inlinedAt: !1211)
!1230 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !1211)
!1231 = !DILocation(line: 532, column: 17, scope: !1202)
!1232 = !DILocation(line: 532, column: 16, scope: !1202)
!1233 = !DILocation(line: 533, column: 16, scope: !1202)
!1234 = !DILocation(line: 533, column: 9, scope: !1202)
!1235 = !DILocation(line: 533, column: 20, scope: !1202)
!1236 = !DILocation(line: 534, column: 16, scope: !1202)
!1237 = !DILocation(line: 534, column: 9, scope: !1202)
!1238 = !DILocation(line: 534, column: 20, scope: !1202)
!1239 = !DILocation(line: 535, column: 33, scope: !1202)
!1240 = !DILocation(line: 535, column: 15, scope: !1202)
!1241 = !DILocation(line: 536, column: 32, scope: !1202)
!1242 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 536, column: 36, scope: !1202)
!1244 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !1243)
!1245 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !1243)
!1246 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !1243)
!1247 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !1243)
!1248 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !1243)
!1249 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !1243)
!1250 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !1243)
!1251 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !1243)
!1252 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !1243)
!1253 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !1243)
!1254 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !1243)
!1255 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !1243)
!1256 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !1243)
!1257 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !1243)
!1258 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !1243)
!1259 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !1243)
!1260 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !1243)
!1261 = !DILocation(line: 0, scope: !487, inlinedAt: !1243)
!1262 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !1243)
!1263 = !DILocation(line: 536, column: 15, scope: !1202)
!1264 = !DILocation(line: 537, column: 15, scope: !1202)
!1265 = !DILocation(line: 538, column: 9, scope: !1202)
!1266 = !DILocation(line: 529, column: 28, scope: !1198)
!1267 = distinct !{!1267, !1200, !1268}
!1268 = !DILocation(line: 539, column: 5, scope: !1199)
!1269 = !DILocation(line: 0, scope: !1202)
!1270 = !DILocation(line: 541, column: 1, scope: !1153)
!1271 = !DILocation(line: 540, column: 5, scope: !1153)
!1272 = distinct !DISubprogram(name: "catAppendOnlyExpireAtCommand", scope: !3, file: !3, line: 550, type: !1273, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1485)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!470, !470, !1275, !1157, !1157}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !75, line: 1307, size: 640, elements: !1277)
!1277 = !{!1278, !1279, !1471, !1472, !1473, !1474, !1480, !1481, !1482, !1483, !1484}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !75, line: 1308, baseType: !20, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1276, file: !75, line: 1309, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !75, line: 1305, baseType: !1282)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !75, line: 780, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !75, line: 723, size: 135360, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1421, !1422, !1426, !1427, !1443, !1444, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1286, file: !75, line: 724, baseType: !63, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1286, file: !75, line: 725, baseType: !6, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1286, file: !75, line: 726, baseType: !1291, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !75, line: 656, baseType: !1293)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !75, line: 647, size: 512, elements: !1294)
!1294 = !{!1295, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1293, file: !75, line: 648, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1298, line: 82, baseType: !1299)
!1298 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1298, line: 76, size: 768, elements: !1300)
!1300 = !{!1301, !1326, !1327, !1355, !1356}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1299, file: !1298, line: 77, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1298, line: 65, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1298, line: 58, size: 384, elements: !1305)
!1305 = !{!1306, !1312, !1316, !1317, !1321, !1325}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1304, file: !1298, line: 59, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!63, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1304, file: !1298, line: 60, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!10, !10, !1310}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1304, file: !1298, line: 61, baseType: !1313, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1304, file: !1298, line: 62, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!6, !10, !1310, !1310}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1304, file: !1298, line: 63, baseType: !1322, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !10, !10}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1304, file: !1298, line: 64, baseType: !1322, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1299, file: !1298, line: 78, baseType: !10, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1299, file: !1298, line: 79, baseType: !1328, size: 512, offset: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 512, elements: !1353)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !1298, line: 74, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !1298, line: 69, size: 256, elements: !1331)
!1331 = !{!1332, !1350, !1351, !1352}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1330, file: !1298, line: 70, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1298, line: 56, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1298, line: 47, size: 192, elements: !1337)
!1337 = !{!1338, !1339, !1348}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1336, file: !1298, line: 48, baseType: !10, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1336, file: !1298, line: 54, baseType: !1340, size: 64, offset: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1336, file: !1298, line: 49, size: 64, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1347}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1340, file: !1298, line: 50, baseType: !10, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1340, file: !1298, line: 51, baseType: !63, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1340, file: !1298, line: 52, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !30, line: 56, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !32, line: 103, baseType: !15)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1340, file: !1298, line: 53, baseType: !23, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1336, file: !1298, line: 55, baseType: !1349, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !1298, line: 71, baseType: !17, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !1330, file: !1298, line: 72, baseType: !17, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1330, file: !1298, line: 73, baseType: !17, size: 64, offset: 192)
!1353 = !{!1354}
!1354 = !DISubrange(count: 2)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1299, file: !1298, line: 80, baseType: !15, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !1299, file: !1298, line: 81, baseType: !17, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1293, file: !75, line: 649, baseType: !1296, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1293, file: !75, line: 650, baseType: !1296, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1293, file: !75, line: 651, baseType: !1296, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1293, file: !75, line: 652, baseType: !1296, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1293, file: !75, line: 653, baseType: !6, size: 32, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1293, file: !75, line: 654, baseType: !16, size: 64, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1293, file: !75, line: 655, baseType: !1364, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !118, line: 54, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !118, line: 47, size: 384, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1374, !1378, !1382}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1366, file: !118, line: 48, baseType: !116, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1366, file: !118, line: 49, baseType: !116, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1366, file: !118, line: 50, baseType: !1371, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!10, !10}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1366, file: !118, line: 51, baseType: !1375, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !10}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1366, file: !118, line: 52, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!6, !10, !10}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1366, file: !118, line: 53, baseType: !17, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1286, file: !75, line: 727, baseType: !1157, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1286, file: !75, line: 728, baseType: !470, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1286, file: !75, line: 729, baseType: !589, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1286, file: !75, line: 730, baseType: !470, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1286, file: !75, line: 734, baseType: !589, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1286, file: !75, line: 735, baseType: !6, size: 32, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1286, file: !75, line: 736, baseType: !1156, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1286, file: !75, line: 737, baseType: !1275, size: 64, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1286, file: !75, line: 737, baseType: !1275, size: 64, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1286, file: !75, line: 738, baseType: !6, size: 32, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1286, file: !75, line: 739, baseType: !6, size: 32, offset: 800)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1286, file: !75, line: 740, baseType: !15, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1286, file: !75, line: 741, baseType: !1364, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1286, file: !75, line: 742, baseType: !22, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1286, file: !75, line: 743, baseType: !589, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1286, file: !75, line: 745, baseType: !79, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1286, file: !75, line: 746, baseType: !79, size: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1286, file: !75, line: 747, baseType: !79, size: 64, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !75, line: 748, baseType: !6, size: 32, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1286, file: !75, line: 749, baseType: !6, size: 32, offset: 1312)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1286, file: !75, line: 750, baseType: !6, size: 32, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1286, file: !75, line: 751, baseType: !6, size: 32, offset: 1376)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1286, file: !75, line: 752, baseType: !6, size: 32, offset: 1408)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1286, file: !75, line: 753, baseType: !1407, size: 64, offset: 1472)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !12, line: 173, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 100, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !14, line: 44, baseType: !15)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1286, file: !75, line: 754, baseType: !1407, size: 64, offset: 1536)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1286, file: !75, line: 755, baseType: !470, size: 64, offset: 1600)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1286, file: !75, line: 756, baseType: !16, size: 64, offset: 1664)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1286, file: !75, line: 757, baseType: !16, size: 64, offset: 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1286, file: !75, line: 758, baseType: !16, size: 64, offset: 1792)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1286, file: !75, line: 759, baseType: !16, size: 64, offset: 1856)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1286, file: !75, line: 760, baseType: !16, size: 64, offset: 1920)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1286, file: !75, line: 763, baseType: !1418, size: 328, offset: 1984)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 328, elements: !1419)
!1419 = !{!1420}
!1420 = !DISubrange(count: 41)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1286, file: !75, line: 764, baseType: !6, size: 32, offset: 2336)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1286, file: !75, line: 765, baseType: !1423, size: 368, offset: 2368)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 368, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 46)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1286, file: !75, line: 766, baseType: !6, size: 32, offset: 2752)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1286, file: !75, line: 767, baseType: !1428, size: 256, offset: 2816)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !75, line: 673, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !75, line: 665, size: 256, elements: !1430)
!1430 = !{!1431, !1439, !1440, !1441, !1442}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1429, file: !75, line: 666, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !75, line: 663, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !75, line: 659, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1434, file: !75, line: 660, baseType: !1156, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1434, file: !75, line: 661, baseType: !6, size: 32, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1434, file: !75, line: 662, baseType: !1275, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !75, line: 667, baseType: !6, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1429, file: !75, line: 668, baseType: !6, size: 32, offset: 96)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1429, file: !75, line: 671, baseType: !6, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1429, file: !75, line: 672, baseType: !79, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1286, file: !75, line: 768, baseType: !6, size: 32, offset: 3072)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1286, file: !75, line: 769, baseType: !1445, size: 704, offset: 3136)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !75, line: 703, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !75, line: 677, size: 704, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1446, file: !75, line: 679, baseType: !74, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1446, file: !75, line: 683, baseType: !1296, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1446, file: !75, line: 685, baseType: !1157, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1446, file: !75, line: 689, baseType: !589, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1446, file: !75, line: 690, baseType: !1157, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1446, file: !75, line: 691, baseType: !1157, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1446, file: !75, line: 692, baseType: !74, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1446, file: !75, line: 692, baseType: !74, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1446, file: !75, line: 693, baseType: !6, size: 32, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1446, file: !75, line: 696, baseType: !6, size: 32, offset: 544)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1446, file: !75, line: 697, baseType: !16, size: 64, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1446, file: !75, line: 700, baseType: !10, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1286, file: !75, line: 770, baseType: !16, size: 64, offset: 3840)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1286, file: !75, line: 771, baseType: !1364, size: 64, offset: 3904)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1286, file: !75, line: 772, baseType: !1296, size: 64, offset: 3968)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1286, file: !75, line: 773, baseType: !1364, size: 64, offset: 4032)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1286, file: !75, line: 774, baseType: !470, size: 64, offset: 4096)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1286, file: !75, line: 775, baseType: !116, size: 64, offset: 4160)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1286, file: !75, line: 778, baseType: !6, size: 32, offset: 4224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1286, file: !75, line: 779, baseType: !1468, size: 131072, offset: 4256)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 131072, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 16384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1276, file: !75, line: 1310, baseType: !6, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1276, file: !75, line: 1311, baseType: !20, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !75, line: 1312, baseType: !6, size: 32, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1276, file: !75, line: 1315, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !75, line: 1306, baseType: !1477)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!1479, !1275, !1156, !6, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1276, file: !75, line: 1317, baseType: !6, size: 32, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1276, file: !75, line: 1318, baseType: !6, size: 32, offset: 416)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1276, file: !75, line: 1319, baseType: !6, size: 32, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1276, file: !75, line: 1320, baseType: !16, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1276, file: !75, line: 1320, baseType: !16, size: 64, offset: 576)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491}
!1486 = !DILocalVariable(name: "buf", arg: 1, scope: !1272, file: !3, line: 550, type: !470)
!1487 = !DILocalVariable(name: "cmd", arg: 2, scope: !1272, file: !3, line: 550, type: !1275)
!1488 = !DILocalVariable(name: "key", arg: 3, scope: !1272, file: !3, line: 550, type: !1157)
!1489 = !DILocalVariable(name: "seconds", arg: 4, scope: !1272, file: !3, line: 550, type: !1157)
!1490 = !DILocalVariable(name: "when", scope: !1272, file: !3, line: 551, type: !16)
!1491 = !DILocalVariable(name: "argv", scope: !1272, file: !3, line: 552, type: !1492)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 192, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 3)
!1495 = !DILocation(line: 550, column: 38, scope: !1272)
!1496 = !DILocation(line: 550, column: 64, scope: !1272)
!1497 = !DILocation(line: 550, column: 75, scope: !1272)
!1498 = !DILocation(line: 550, column: 86, scope: !1272)
!1499 = !DILocation(line: 552, column: 5, scope: !1272)
!1500 = !DILocation(line: 552, column: 11, scope: !1272)
!1501 = !DILocation(line: 555, column: 15, scope: !1272)
!1502 = !DILocation(line: 556, column: 29, scope: !1272)
!1503 = !DILocation(line: 556, column: 12, scope: !1272)
!1504 = !DILocation(line: 551, column: 15, scope: !1272)
!1505 = !DILocation(line: 558, column: 14, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 558, column: 9)
!1507 = !{!1508, !95, i64 8}
!1508 = !{!"redisCommand", !95, i64 0, !95, i64 8, !92, i64 16, !95, i64 24, !92, i64 32, !95, i64 40, !92, i64 48, !92, i64 52, !92, i64 56, !97, i64 64, !97, i64 72}
!1509 = !DILocation(line: 558, column: 19, scope: !1506)
!1510 = !DILocation(line: 558, column: 49, scope: !1506)
!1511 = !DILocation(line: 558, column: 36, scope: !1506)
!1512 = !DILocation(line: 559, column: 19, scope: !1506)
!1513 = !DILocation(line: 561, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 560, column: 5)
!1515 = !DILocation(line: 564, column: 49, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 564, column: 9)
!1517 = !DILocation(line: 564, column: 36, scope: !1516)
!1518 = !DILocation(line: 565, column: 48, scope: !1516)
!1519 = !DILocation(line: 567, column: 17, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 566, column: 5)
!1521 = !DILocation(line: 567, column: 14, scope: !1520)
!1522 = !DILocation(line: 568, column: 5, scope: !1520)
!1523 = !DILocation(line: 0, scope: !1514)
!1524 = !DILocation(line: 569, column: 5, scope: !1272)
!1525 = !DILocation(line: 571, column: 15, scope: !1272)
!1526 = !DILocation(line: 571, column: 5, scope: !1272)
!1527 = !DILocation(line: 571, column: 13, scope: !1272)
!1528 = !DILocation(line: 572, column: 5, scope: !1272)
!1529 = !DILocation(line: 572, column: 13, scope: !1272)
!1530 = !DILocation(line: 573, column: 15, scope: !1272)
!1531 = !DILocation(line: 573, column: 5, scope: !1272)
!1532 = !DILocation(line: 573, column: 13, scope: !1272)
!1533 = !DILocation(line: 574, column: 11, scope: !1272)
!1534 = !DILocation(line: 575, column: 5, scope: !1272)
!1535 = !DILocation(line: 576, column: 5, scope: !1272)
!1536 = !DILocation(line: 578, column: 1, scope: !1272)
!1537 = !DILocation(line: 577, column: 5, scope: !1272)
!1538 = distinct !DISubprogram(name: "feedAppendOnlyFile", scope: !3, file: !3, line: 580, type: !1539, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1275, !6, !1156, !6}
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548, !1554, !1559, !1560}
!1542 = !DILocalVariable(name: "cmd", arg: 1, scope: !1538, file: !3, line: 580, type: !1275)
!1543 = !DILocalVariable(name: "dictid", arg: 2, scope: !1538, file: !3, line: 580, type: !6)
!1544 = !DILocalVariable(name: "argv", arg: 3, scope: !1538, file: !3, line: 580, type: !1156)
!1545 = !DILocalVariable(name: "argc", arg: 4, scope: !1538, file: !3, line: 580, type: !6)
!1546 = !DILocalVariable(name: "buf", scope: !1538, file: !3, line: 581, type: !470)
!1547 = !DILocalVariable(name: "tmpargv", scope: !1538, file: !3, line: 582, type: !1492)
!1548 = !DILocalVariable(name: "seldb", scope: !1549, file: !3, line: 587, type: !1551)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 586, column: 43)
!1550 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 586, column: 9)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: 64)
!1554 = !DILocalVariable(name: "i", scope: !1555, file: !3, line: 608, type: !6)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 607, column: 53)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 607, column: 16)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 599, column: 16)
!1558 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 595, column: 9)
!1559 = !DILocalVariable(name: "exarg", scope: !1555, file: !3, line: 609, type: !1157)
!1560 = !DILocalVariable(name: "pxarg", scope: !1555, file: !3, line: 609, type: !1157)
!1561 = !DILocation(line: 580, column: 46, scope: !1538)
!1562 = !DILocation(line: 580, column: 55, scope: !1538)
!1563 = !DILocation(line: 580, column: 70, scope: !1538)
!1564 = !DILocation(line: 580, column: 80, scope: !1538)
!1565 = !DILocation(line: 581, column: 15, scope: !1538)
!1566 = !DILocation(line: 581, column: 9, scope: !1538)
!1567 = !DILocation(line: 582, column: 5, scope: !1538)
!1568 = !DILocation(line: 582, column: 11, scope: !1538)
!1569 = !DILocation(line: 586, column: 26, scope: !1550)
!1570 = !DILocation(line: 586, column: 16, scope: !1550)
!1571 = !DILocation(line: 586, column: 9, scope: !1538)
!1572 = !DILocation(line: 587, column: 9, scope: !1549)
!1573 = !DILocation(line: 587, column: 14, scope: !1549)
!1574 = !DILocation(line: 589, column: 9, scope: !1549)
!1575 = !DILocation(line: 591, column: 28, scope: !1549)
!1576 = !DILocation(line: 590, column: 15, scope: !1549)
!1577 = !DILocation(line: 592, column: 32, scope: !1549)
!1578 = !DILocation(line: 593, column: 5, scope: !1550)
!1579 = !DILocation(line: 593, column: 5, scope: !1549)
!1580 = !DILocation(line: 0, scope: !1538)
!1581 = !DILocation(line: 595, column: 14, scope: !1558)
!1582 = !DILocation(line: 595, column: 19, scope: !1558)
!1583 = !DILocation(line: 595, column: 49, scope: !1558)
!1584 = !DILocation(line: 595, column: 36, scope: !1558)
!1585 = !DILocation(line: 596, column: 19, scope: !1558)
!1586 = !DILocation(line: 598, column: 52, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 596, column: 39)
!1588 = !DILocation(line: 598, column: 60, scope: !1587)
!1589 = !DILocation(line: 598, column: 15, scope: !1587)
!1590 = !DILocation(line: 599, column: 5, scope: !1587)
!1591 = !DILocation(line: 599, column: 26, scope: !1557)
!1592 = !DILocation(line: 599, column: 55, scope: !1557)
!1593 = !DILocation(line: 599, column: 42, scope: !1557)
!1594 = !DILocation(line: 601, column: 22, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 599, column: 73)
!1596 = !DILocation(line: 601, column: 9, scope: !1595)
!1597 = !DILocation(line: 601, column: 20, scope: !1595)
!1598 = !DILocation(line: 602, column: 22, scope: !1595)
!1599 = !DILocation(line: 602, column: 9, scope: !1595)
!1600 = !DILocation(line: 602, column: 20, scope: !1595)
!1601 = !DILocation(line: 603, column: 22, scope: !1595)
!1602 = !DILocation(line: 603, column: 9, scope: !1595)
!1603 = !DILocation(line: 603, column: 20, scope: !1595)
!1604 = !DILocation(line: 604, column: 15, scope: !1595)
!1605 = !DILocation(line: 605, column: 9, scope: !1595)
!1606 = !DILocation(line: 606, column: 52, scope: !1595)
!1607 = !DILocation(line: 606, column: 60, scope: !1595)
!1608 = !DILocation(line: 606, column: 15, scope: !1595)
!1609 = !DILocation(line: 607, column: 5, scope: !1595)
!1610 = !DILocation(line: 607, column: 26, scope: !1556)
!1611 = !DILocation(line: 607, column: 48, scope: !1556)
!1612 = !DILocation(line: 607, column: 40, scope: !1556)
!1613 = !DILocation(line: 609, column: 15, scope: !1555)
!1614 = !DILocation(line: 609, column: 30, scope: !1555)
!1615 = !DILocation(line: 611, column: 15, scope: !1555)
!1616 = !DILocation(line: 608, column: 13, scope: !1555)
!1617 = !DILocation(line: 612, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 612, column: 9)
!1619 = !DILocation(line: 613, column: 29, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 613, column: 17)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 612, column: 37)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 612, column: 9)
!1623 = !DILocation(line: 613, column: 38, scope: !1620)
!1624 = !DILocation(line: 613, column: 18, scope: !1620)
!1625 = !DILocation(line: 613, column: 17, scope: !1621)
!1626 = !DILocation(line: 613, column: 64, scope: !1620)
!1627 = !DILocation(line: 613, column: 58, scope: !1620)
!1628 = !DILocation(line: 613, column: 50, scope: !1620)
!1629 = !DILocation(line: 0, scope: !1620)
!1630 = !DILocation(line: 614, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 614, column: 17)
!1632 = !DILocation(line: 0, scope: !1622)
!1633 = !DILocation(line: 614, column: 17, scope: !1621)
!1634 = !DILocation(line: 614, column: 58, scope: !1631)
!1635 = !DILocation(line: 614, column: 50, scope: !1631)
!1636 = !DILocation(line: 0, scope: !1631)
!1637 = !DILocation(line: 612, column: 23, scope: !1622)
!1638 = distinct !{!1638, !1617, !1639}
!1639 = !DILocation(line: 615, column: 9, scope: !1618)
!1640 = !DILocation(line: 616, column: 9, scope: !1555)
!1641 = !DILocation(line: 617, column: 13, scope: !1555)
!1642 = !DILocation(line: 618, column: 59, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 617, column: 13)
!1644 = !{!91, !95, i64 968}
!1645 = !DILocation(line: 618, column: 73, scope: !1643)
!1646 = !DILocation(line: 618, column: 19, scope: !1643)
!1647 = !DILocation(line: 618, column: 13, scope: !1643)
!1648 = !DILocation(line: 0, scope: !1555)
!1649 = !DILocation(line: 620, column: 13, scope: !1555)
!1650 = !DILocation(line: 621, column: 59, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 620, column: 13)
!1652 = !{!91, !95, i64 976}
!1653 = !DILocation(line: 621, column: 74, scope: !1651)
!1654 = !DILocation(line: 621, column: 19, scope: !1651)
!1655 = !DILocation(line: 621, column: 13, scope: !1651)
!1656 = !DILocation(line: 627, column: 15, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 623, column: 12)
!1658 = !DILocation(line: 0, scope: !1657)
!1659 = !DILocation(line: 633, column: 16, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 633, column: 9)
!1661 = !DILocation(line: 633, column: 26, scope: !1660)
!1662 = !DILocation(line: 633, column: 9, scope: !1538)
!1663 = !DILocation(line: 634, column: 43, scope: !1660)
!1664 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 634, column: 55, scope: !1660)
!1666 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !1665)
!1667 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !1665)
!1668 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !1665)
!1669 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !1665)
!1670 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !1665)
!1671 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !1665)
!1672 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !1665)
!1673 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !1665)
!1674 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !1665)
!1675 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !1665)
!1676 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !1665)
!1677 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !1665)
!1678 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !1665)
!1679 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !1665)
!1680 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !1665)
!1681 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !1665)
!1682 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !1665)
!1683 = !DILocation(line: 0, scope: !487, inlinedAt: !1665)
!1684 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !1665)
!1685 = !DILocation(line: 634, column: 26, scope: !1660)
!1686 = !DILocation(line: 634, column: 24, scope: !1660)
!1687 = !DILocation(line: 634, column: 9, scope: !1660)
!1688 = !DILocation(line: 640, column: 16, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 640, column: 9)
!1690 = !DILocation(line: 640, column: 30, scope: !1689)
!1691 = !DILocation(line: 640, column: 9, scope: !1538)
!1692 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 641, column: 52, scope: !1689)
!1694 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !1693)
!1695 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !1693)
!1696 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !1693)
!1697 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !1693)
!1698 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !1693)
!1699 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !1693)
!1700 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !1693)
!1701 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !1693)
!1702 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !1693)
!1703 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !1693)
!1704 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !1693)
!1705 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !1693)
!1706 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !1693)
!1707 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !1693)
!1708 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !1693)
!1709 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !1693)
!1710 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !1693)
!1711 = !DILocation(line: 0, scope: !487, inlinedAt: !1693)
!1712 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !1693)
!1713 = !DILocation(line: 641, column: 9, scope: !1689)
!1714 = !DILocation(line: 643, column: 5, scope: !1538)
!1715 = !DILocation(line: 644, column: 1, scope: !1538)
!1716 = distinct !DISubprogram(name: "createFakeClient", scope: !3, file: !3, line: 652, type: !1717, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1720)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1720 = !{!1721}
!1721 = !DILocalVariable(name: "c", scope: !1716, file: !3, line: 653, type: !1719)
!1722 = !DILocation(line: 653, column: 24, scope: !1716)
!1723 = !DILocation(line: 653, column: 20, scope: !1716)
!1724 = !DILocation(line: 655, column: 5, scope: !1716)
!1725 = !DILocation(line: 656, column: 8, scope: !1716)
!1726 = !DILocation(line: 656, column: 11, scope: !1716)
!1727 = !{!1728, !92, i64 8}
!1728 = !{!"client", !96, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !95, i64 48, !96, i64 56, !92, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !92, i64 96, !92, i64 100, !96, i64 104, !95, i64 112, !97, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !92, i64 160, !92, i64 164, !92, i64 168, !92, i64 172, !92, i64 176, !96, i64 184, !96, i64 192, !95, i64 200, !97, i64 208, !97, i64 216, !97, i64 224, !97, i64 232, !97, i64 240, !93, i64 248, !92, i64 292, !93, i64 296, !92, i64 344, !1729, i64 352, !92, i64 384, !1730, i64 392, !97, i64 480, !95, i64 488, !95, i64 496, !95, i64 504, !95, i64 512, !95, i64 520, !92, i64 528, !93, i64 532}
!1729 = !{!"multiState", !95, i64 0, !92, i64 8, !92, i64 12, !92, i64 16, !96, i64 24}
!1730 = !{!"blockingState", !97, i64 0, !95, i64 8, !95, i64 16, !96, i64 24, !95, i64 32, !95, i64 40, !97, i64 48, !97, i64 56, !92, i64 64, !92, i64 68, !97, i64 72, !95, i64 80}
!1731 = !DILocation(line: 657, column: 8, scope: !1716)
!1732 = !DILocation(line: 657, column: 13, scope: !1716)
!1733 = !{!1728, !95, i64 24}
!1734 = !DILocation(line: 658, column: 19, scope: !1716)
!1735 = !DILocation(line: 658, column: 8, scope: !1716)
!1736 = !DILocation(line: 658, column: 17, scope: !1716)
!1737 = !{!1728, !95, i64 32}
!1738 = !DILocation(line: 659, column: 8, scope: !1716)
!1739 = !DILocation(line: 659, column: 22, scope: !1716)
!1740 = !{!1728, !96, i64 56}
!1741 = !DILocation(line: 660, column: 8, scope: !1716)
!1742 = !DILocation(line: 660, column: 13, scope: !1716)
!1743 = !{!1728, !92, i64 64}
!1744 = !DILocation(line: 661, column: 8, scope: !1716)
!1745 = !DILocation(line: 661, column: 13, scope: !1716)
!1746 = !{!1728, !95, i64 72}
!1747 = !DILocation(line: 662, column: 8, scope: !1716)
!1748 = !DILocation(line: 662, column: 15, scope: !1716)
!1749 = !{!1728, !92, i64 528}
!1750 = !DILocation(line: 663, column: 8, scope: !1716)
!1751 = !DILocation(line: 663, column: 14, scope: !1716)
!1752 = !{!1728, !92, i64 160}
!1753 = !DILocation(line: 664, column: 8, scope: !1716)
!1754 = !DILocation(line: 664, column: 14, scope: !1716)
!1755 = !{!1728, !92, i64 384}
!1756 = !DILocation(line: 667, column: 8, scope: !1716)
!1757 = !DILocation(line: 667, column: 18, scope: !1716)
!1758 = !{!1728, !92, i64 168}
!1759 = !DILocation(line: 668, column: 16, scope: !1716)
!1760 = !DILocation(line: 668, column: 8, scope: !1716)
!1761 = !DILocation(line: 668, column: 14, scope: !1716)
!1762 = !{!1728, !95, i64 112}
!1763 = !DILocation(line: 669, column: 8, scope: !1716)
!1764 = !DILocation(line: 669, column: 20, scope: !1716)
!1765 = !{!1728, !97, i64 120}
!1766 = !DILocation(line: 670, column: 8, scope: !1716)
!1767 = !DILocation(line: 670, column: 37, scope: !1716)
!1768 = !{!1728, !96, i64 152}
!1769 = !DILocation(line: 671, column: 23, scope: !1716)
!1770 = !DILocation(line: 671, column: 8, scope: !1716)
!1771 = !DILocation(line: 671, column: 21, scope: !1716)
!1772 = !{!1728, !95, i64 488}
!1773 = !DILocation(line: 672, column: 8, scope: !1716)
!1774 = !DILocation(line: 672, column: 15, scope: !1716)
!1775 = !{!1728, !95, i64 512}
!1776 = !DILocation(line: 673, column: 5, scope: !1716)
!1777 = !DILocation(line: 674, column: 5, scope: !1716)
!1778 = !{!109, !95, i64 16}
!1779 = !DILocation(line: 675, column: 5, scope: !1716)
!1780 = !DILocation(line: 676, column: 5, scope: !1716)
!1781 = distinct !DISubprogram(name: "freeFakeClientArgv", scope: !3, file: !3, line: 679, type: !1782, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1719}
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "c", arg: 1, scope: !1781, file: !3, line: 679, type: !1719)
!1786 = !DILocalVariable(name: "j", scope: !1781, file: !3, line: 680, type: !6)
!1787 = !DILocation(line: 679, column: 40, scope: !1781)
!1788 = !DILocation(line: 680, column: 9, scope: !1781)
!1789 = !DILocation(line: 682, column: 24, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 682, column: 5)
!1791 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 682, column: 5)
!1792 = !DILocation(line: 682, column: 19, scope: !1790)
!1793 = !DILocation(line: 0, scope: !1781)
!1794 = !DILocation(line: 682, column: 5, scope: !1791)
!1795 = !DILocation(line: 683, column: 22, scope: !1790)
!1796 = !DILocation(line: 683, column: 9, scope: !1790)
!1797 = !DILocation(line: 682, column: 31, scope: !1790)
!1798 = distinct !{!1798, !1794, !1799}
!1799 = !DILocation(line: 683, column: 32, scope: !1791)
!1800 = !DILocation(line: 684, column: 11, scope: !1781)
!1801 = !DILocation(line: 684, column: 5, scope: !1781)
!1802 = !DILocation(line: 685, column: 1, scope: !1781)
!1803 = distinct !DISubprogram(name: "freeFakeClient", scope: !3, file: !3, line: 687, type: !1782, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "c", arg: 1, scope: !1803, file: !3, line: 687, type: !1719)
!1806 = !DILocation(line: 687, column: 36, scope: !1803)
!1807 = !DILocation(line: 688, column: 16, scope: !1803)
!1808 = !DILocation(line: 688, column: 5, scope: !1803)
!1809 = !DILocation(line: 689, column: 20, scope: !1803)
!1810 = !DILocation(line: 689, column: 5, scope: !1803)
!1811 = !DILocation(line: 690, column: 20, scope: !1803)
!1812 = !DILocation(line: 690, column: 5, scope: !1803)
!1813 = !DILocation(line: 691, column: 5, scope: !1803)
!1814 = !DILocation(line: 692, column: 11, scope: !1803)
!1815 = !DILocation(line: 692, column: 5, scope: !1803)
!1816 = !DILocation(line: 693, column: 1, scope: !1803)
!1817 = distinct !DISubprogram(name: "loadAppendOnlyFile", scope: !3, file: !3, line: 698, type: !1818, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!6, !20}
!1820 = !{!1821, !1822, !1823, !2023, !2060, !2061, !2062, !2063, !2064, !2068, !2121, !2123, !2124, !2125, !2126, !2130, !2131}
!1821 = !DILocalVariable(name: "filename", arg: 1, scope: !1817, file: !3, line: 698, type: !20)
!1822 = !DILocalVariable(name: "fakeClient", scope: !1817, file: !3, line: 699, type: !1719)
!1823 = !DILocalVariable(name: "fp", scope: !1817, file: !3, line: 700, type: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1826, line: 66, baseType: !1827)
!1826 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1828, line: 287, baseType: !1829)
!1828 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1828, line: 181, size: 1408, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1836, !1837, !1842, !1843, !1844, !1993, !1997, !2002, !2006, !2007, !2008, !2009, !2011, !2013, !2014, !2015, !2016, !2017, !2021, !2022}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1829, file: !1828, line: 182, baseType: !18, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1829, file: !1828, line: 183, baseType: !6, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1829, file: !1828, line: 184, baseType: !6, size: 32, offset: 96)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1829, file: !1828, line: 185, baseType: !1835, size: 16, offset: 128)
!1835 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1829, file: !1828, line: 186, baseType: !1835, size: 16, offset: 144)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1829, file: !1828, line: 187, baseType: !1838, size: 128, offset: 192)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1828, line: 117, size: 128, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1838, file: !1828, line: 118, baseType: !18, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1838, file: !1828, line: 119, baseType: !6, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1829, file: !1828, line: 188, baseType: !6, size: 32, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1829, file: !1828, line: 195, baseType: !10, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1829, file: !1828, line: 197, baseType: !1845, size: 64, offset: 448)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!13, !1848, !10, !20, !6}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !1828, line: 569, size: 14912, elements: !1850)
!1850 = !{!1851, !1852, !1854, !1855, !1856, !1857, !1861, !1862, !1865, !1866, !1870, !1884, !1885, !1886, !1888, !1889, !1890, !1963, !1980, !1981, !1984, !1991}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1849, file: !1828, line: 571, baseType: !6, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1849, file: !1828, line: 576, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1849, file: !1828, line: 576, baseType: !1853, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1849, file: !1828, line: 576, baseType: !1853, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1849, file: !1828, line: 578, baseType: !6, size: 32, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1849, file: !1828, line: 579, baseType: !1858, size: 200, offset: 288)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 200, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 25)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1849, file: !1828, line: 582, baseType: !6, size: 32, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1849, file: !1828, line: 583, baseType: !1863, size: 64, offset: 576)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !1828, line: 40, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1849, file: !1828, line: 585, baseType: !6, size: 32, offset: 640)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1849, file: !1828, line: 587, baseType: !1867, size: 64, offset: 704)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1848}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1849, file: !1828, line: 590, baseType: !1871, size: 64, offset: 768)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !1828, line: 47, size: 256, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1872, file: !1828, line: 49, baseType: !1871, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1872, file: !1828, line: 50, baseType: !6, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1872, file: !1828, line: 50, baseType: !6, size: 32, offset: 96)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1872, file: !1828, line: 50, baseType: !6, size: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1872, file: !1828, line: 50, baseType: !6, size: 32, offset: 160)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1872, file: !1828, line: 51, baseType: !1880, size: 32, offset: 192)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1881, size: 32, elements: !1882)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !1828, line: 25, baseType: !55)
!1882 = !{!1883}
!1883 = !DISubrange(count: 1)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1849, file: !1828, line: 591, baseType: !6, size: 32, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1849, file: !1828, line: 592, baseType: !1871, size: 64, offset: 896)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1849, file: !1828, line: 593, baseType: !1887, size: 64, offset: 960)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1849, file: !1828, line: 596, baseType: !6, size: 32, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1849, file: !1828, line: 597, baseType: !20, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !1849, file: !1828, line: 632, baseType: !1891, size: 2880, offset: 1152)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1849, file: !1828, line: 599, size: 2880, elements: !1892)
!1892 = !{!1893, !1954}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1891, file: !1828, line: 622, baseType: !1894, size: 1728)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1828, line: 601, size: 1728, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1902, !1914, !1915, !1916, !1923, !1937, !1938, !1939, !1943, !1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1894, file: !1828, line: 603, baseType: !55, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1894, file: !1828, line: 604, baseType: !20, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1894, file: !1828, line: 605, baseType: !1899, size: 208, offset: 128)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 208, elements: !1900)
!1900 = !{!1901}
!1901 = !DISubrange(count: 26)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1894, file: !1828, line: 606, baseType: !1903, size: 288, offset: 352)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !1828, line: 55, size: 288, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1903, file: !1828, line: 57, baseType: !6, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1903, file: !1828, line: 58, baseType: !6, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1903, file: !1828, line: 59, baseType: !6, size: 32, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1903, file: !1828, line: 60, baseType: !6, size: 32, offset: 96)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1903, file: !1828, line: 61, baseType: !6, size: 32, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1903, file: !1828, line: 62, baseType: !6, size: 32, offset: 160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1903, file: !1828, line: 63, baseType: !6, size: 32, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1903, file: !1828, line: 64, baseType: !6, size: 32, offset: 224)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1903, file: !1828, line: 65, baseType: !6, size: 32, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1894, file: !1828, line: 607, baseType: !6, size: 32, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1894, file: !1828, line: 608, baseType: !22, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1894, file: !1828, line: 609, baseType: !1917, size: 112, offset: 768)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !1828, line: 319, size: 112, elements: !1918)
!1918 = !{!1919, !1921, !1922}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1917, file: !1828, line: 320, baseType: !1920, size: 48)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !1493)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1917, file: !1828, line: 321, baseType: !1920, size: 48, offset: 48)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1917, file: !1828, line: 322, baseType: !45, size: 16, offset: 96)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1894, file: !1828, line: 610, baseType: !1924, size: 64, offset: 896)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !14, line: 171, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 163, size: 64, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1925, file: !14, line: 165, baseType: !6, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1925, file: !14, line: 170, baseType: !1929, size: 32, offset: 32)
!1929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !14, line: 166, size: 32, elements: !1930)
!1930 = !{!1931, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1929, file: !14, line: 168, baseType: !1932, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !468, line: 124, baseType: !55)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1929, file: !14, line: 169, baseType: !1934, size: 32)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !1935)
!1935 = !{!1936}
!1936 = !DISubrange(count: 4)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1894, file: !1828, line: 611, baseType: !1924, size: 64, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1894, file: !1828, line: 612, baseType: !1924, size: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1894, file: !1828, line: 613, baseType: !1940, size: 64, offset: 1088)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 8)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1894, file: !1828, line: 614, baseType: !1944, size: 192, offset: 1152)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !1945)
!1945 = !{!1946}
!1946 = !DISubrange(count: 24)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1894, file: !1828, line: 615, baseType: !6, size: 32, offset: 1344)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1894, file: !1828, line: 616, baseType: !1924, size: 64, offset: 1376)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1894, file: !1828, line: 617, baseType: !1924, size: 64, offset: 1440)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1894, file: !1828, line: 618, baseType: !1924, size: 64, offset: 1504)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1894, file: !1828, line: 619, baseType: !1924, size: 64, offset: 1568)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1894, file: !1828, line: 620, baseType: !1924, size: 64, offset: 1632)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1894, file: !1828, line: 621, baseType: !6, size: 32, offset: 1696)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1891, file: !1828, line: 631, baseType: !1955, size: 2880)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1828, line: 626, size: 2880, elements: !1956)
!1956 = !{!1957, !1961}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !1955, file: !1828, line: 629, baseType: !1958, size: 1920)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !1959)
!1959 = !{!1960}
!1960 = !DISubrange(count: 30)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !1955, file: !1828, line: 630, baseType: !1962, size: 960, offset: 1920)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 960, elements: !1959)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1849, file: !1828, line: 636, baseType: !1964, size: 64, offset: 4032)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !1828, line: 93, size: 6336, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1972}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1965, file: !1828, line: 94, baseType: !1964, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1965, file: !1828, line: 95, baseType: !6, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1965, file: !1828, line: 97, baseType: !1970, size: 2048, offset: 128)
!1970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1971, size: 2048, elements: !1172)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !1965, file: !1828, line: 98, baseType: !1973, size: 4160, offset: 2176)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !1828, line: 74, size: 4160, elements: !1974)
!1974 = !{!1975, !1977, !1978, !1979}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1973, file: !1828, line: 75, baseType: !1976, size: 2048)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !1172)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1973, file: !1828, line: 76, baseType: !1976, size: 2048, offset: 2048)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1973, file: !1828, line: 78, baseType: !1881, size: 32, offset: 4096)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1973, file: !1828, line: 81, baseType: !1881, size: 32, offset: 4128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1849, file: !1828, line: 637, baseType: !1965, size: 6336, offset: 4096)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1849, file: !1828, line: 641, baseType: !1982, size: 64, offset: 10432)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1849, file: !1828, line: 646, baseType: !1985, size: 192, offset: 10496)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !1828, line: 291, size: 192, elements: !1986)
!1986 = !{!1987, !1989, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1985, file: !1828, line: 293, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1985, file: !1828, line: 294, baseType: !6, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1985, file: !1828, line: 295, baseType: !1853, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1849, file: !1828, line: 648, baseType: !1992, size: 4224, offset: 10688)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 4224, elements: !1493)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1829, file: !1828, line: 199, baseType: !1994, size: 64, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!13, !1848, !10, !587, !6}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1829, file: !1828, line: 202, baseType: !1998, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!2001, !1848, !10, !2001, !6}
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !14, line: 114, baseType: !15)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1829, file: !1828, line: 203, baseType: !2003, size: 64, offset: 640)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!6, !1848, !10}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1829, file: !1828, line: 206, baseType: !1838, size: 128, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !1829, file: !1828, line: 207, baseType: !18, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1829, file: !1828, line: 208, baseType: !6, size: 32, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1829, file: !1828, line: 211, baseType: !2010, size: 24, offset: 928)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !1493)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1829, file: !1828, line: 212, baseType: !2012, size: 8, offset: 952)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !1882)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1829, file: !1828, line: 215, baseType: !1838, size: 128, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1829, file: !1828, line: 218, baseType: !6, size: 32, offset: 1088)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1829, file: !1828, line: 219, baseType: !1409, size: 64, offset: 1152)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1829, file: !1828, line: 222, baseType: !1848, size: 64, offset: 1216)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1829, file: !1828, line: 226, baseType: !2018, size: 32, offset: 1280)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !14, line: 175, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2020, line: 12, baseType: !6)
!2020 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !1829, file: !1828, line: 228, baseType: !1924, size: 64, offset: 1312)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1829, file: !1828, line: 229, baseType: !6, size: 32, offset: 1376)
!2023 = !DILocalVariable(name: "sb", scope: !1817, file: !3, line: 701, type: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2025, line: 27, size: 704, elements: !2026)
!2025 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2026 = !{!2027, !2030, !2033, !2036, !2039, !2042, !2045, !2046, !2047, !2052, !2053, !2054, !2057}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2024, file: !2025, line: 29, baseType: !2028, size: 16)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 177, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !14, line: 54, baseType: !1835)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2024, file: !2025, line: 30, baseType: !2031, size: 16, offset: 16)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !12, line: 155, baseType: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !14, line: 73, baseType: !45)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2024, file: !2025, line: 31, baseType: !2034, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !12, line: 205, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !14, line: 88, baseType: !54)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2024, file: !2025, line: 32, baseType: !2037, size: 16, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !12, line: 210, baseType: !2038)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !14, line: 210, baseType: !45)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2024, file: !2025, line: 33, baseType: !2040, size: 16, offset: 80)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 181, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !14, line: 58, baseType: !45)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2024, file: !2025, line: 34, baseType: !2043, size: 16, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 185, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !14, line: 61, baseType: !45)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2024, file: !2025, line: 35, baseType: !2028, size: 16, offset: 112)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2024, file: !2025, line: 36, baseType: !1407, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2024, file: !2025, line: 37, baseType: !2048, size: 128, offset: 192)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !80, line: 52, size: 128, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2048, file: !80, line: 53, baseType: !79, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2048, file: !80, line: 54, baseType: !15, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2024, file: !2025, line: 38, baseType: !2048, size: 128, offset: 320)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2024, file: !2025, line: 39, baseType: !2048, size: 128, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2024, file: !2025, line: 40, baseType: !2055, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !12, line: 118, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !14, line: 32, baseType: !15)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2024, file: !2025, line: 41, baseType: !2058, size: 64, offset: 640)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 113, baseType: !2059)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !14, line: 28, baseType: !15)
!2060 = !DILocalVariable(name: "old_aof_state", scope: !1817, file: !3, line: 702, type: !6)
!2061 = !DILocalVariable(name: "loops", scope: !1817, file: !3, line: 703, type: !15)
!2062 = !DILocalVariable(name: "valid_up_to", scope: !1817, file: !3, line: 704, type: !1407)
!2063 = !DILocalVariable(name: "valid_before_multi", scope: !1817, file: !3, line: 705, type: !1407)
!2064 = !DILocalVariable(name: "sig", scope: !1817, file: !3, line: 732, type: !2065)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !2066)
!2066 = !{!2067}
!2067 = !DISubrange(count: 5)
!2068 = !DILocalVariable(name: "rdb", scope: !2069, file: !3, line: 738, type: !2071)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 736, column: 12)
!2070 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 733, column: 9)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2072, line: 87, baseType: !2073)
!2072 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2072, line: 39, size: 832, elements: !2074)
!2074 = !{!2075, !2080, !2084, !2088, !2092, !2096, !2097, !2098, !2099}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2073, file: !2072, line: 43, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!467, !2079, !10, !467}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2073, file: !2072, line: 44, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!467, !2079, !1310, !467}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2073, file: !2072, line: 45, baseType: !2085, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!1407, !2079}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2073, file: !2072, line: 46, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!6, !2079}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2073, file: !2072, line: 52, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2079, !1310, !467}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2073, file: !2072, line: 55, baseType: !63, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2073, file: !2072, line: 58, baseType: !467, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2073, file: !2072, line: 61, baseType: !467, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2073, file: !2072, line: 84, baseType: !2100, size: 320, offset: 512)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2073, file: !2072, line: 64, size: 320, elements: !2101)
!2101 = !{!2102, !2107, !2113}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2100, file: !2072, line: 69, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2072, line: 66, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2103, file: !2072, line: 67, baseType: !470, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2103, file: !2072, line: 68, baseType: !1407, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2100, file: !2072, line: 75, baseType: !2108, size: 192)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2072, line: 71, size: 192, elements: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2108, file: !2072, line: 72, baseType: !1824, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2108, file: !2072, line: 73, baseType: !1407, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2108, file: !2072, line: 74, baseType: !1407, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2100, file: !2072, line: 83, baseType: !2114, size: 320)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2100, file: !2072, line: 77, size: 320, elements: !2115)
!2115 = !{!2116, !2117, !2118, !2119, !2120}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2114, file: !2072, line: 78, baseType: !1479, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2114, file: !2072, line: 79, baseType: !1479, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2114, file: !2072, line: 80, baseType: !6, size: 32, offset: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2114, file: !2072, line: 81, baseType: !1407, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2114, file: !2072, line: 82, baseType: !470, size: 64, offset: 256)
!2121 = !DILocalVariable(name: "argc", scope: !2122, file: !3, line: 753, type: !6)
!2122 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 752, column: 14)
!2123 = !DILocalVariable(name: "j", scope: !2122, file: !3, line: 753, type: !6)
!2124 = !DILocalVariable(name: "len", scope: !2122, file: !3, line: 754, type: !17)
!2125 = !DILocalVariable(name: "argv", scope: !2122, file: !3, line: 755, type: !1156)
!2126 = !DILocalVariable(name: "buf", scope: !2122, file: !3, line: 756, type: !2127)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 128)
!2130 = !DILocalVariable(name: "argsds", scope: !2122, file: !3, line: 757, type: !470)
!2131 = !DILocalVariable(name: "cmd", scope: !2122, file: !3, line: 758, type: !1275)
!2132 = !DILocation(line: 698, column: 30, scope: !1817)
!2133 = !DILocation(line: 700, column: 16, scope: !1817)
!2134 = !DILocation(line: 700, column: 11, scope: !1817)
!2135 = !DILocation(line: 701, column: 5, scope: !1817)
!2136 = !DILocation(line: 702, column: 32, scope: !1817)
!2137 = !DILocation(line: 702, column: 9, scope: !1817)
!2138 = !DILocation(line: 703, column: 10, scope: !1817)
!2139 = !DILocation(line: 704, column: 11, scope: !1817)
!2140 = !DILocation(line: 705, column: 11, scope: !1817)
!2141 = !DILocation(line: 707, column: 12, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 707, column: 9)
!2143 = !DILocation(line: 707, column: 9, scope: !1817)
!2144 = !DILocation(line: 708, column: 101, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 707, column: 21)
!2146 = !DILocation(line: 708, column: 92, scope: !2145)
!2147 = !DILocation(line: 708, column: 9, scope: !2145)
!2148 = !DILocation(line: 709, column: 9, scope: !2145)
!2149 = !DILocation(line: 716, column: 27, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 716, column: 9)
!2151 = !DILocation(line: 701, column: 23, scope: !1817)
!2152 = !DILocation(line: 716, column: 15, scope: !2150)
!2153 = !DILocation(line: 716, column: 43, scope: !2150)
!2154 = !DILocation(line: 716, column: 49, scope: !2150)
!2155 = !DILocation(line: 716, column: 55, scope: !2150)
!2156 = !{!2157, !96, i64 16}
!2157 = !{!"stat", !495, i64 0, !495, i64 2, !92, i64 4, !495, i64 8, !495, i64 10, !495, i64 12, !495, i64 14, !96, i64 16, !2158, i64 24, !2158, i64 40, !2158, i64 56, !96, i64 72, !96, i64 80}
!2158 = !{!"timespec", !96, i64 0, !96, i64 8}
!2159 = !DILocation(line: 716, column: 63, scope: !2150)
!2160 = !DILocation(line: 716, column: 9, scope: !1817)
!2161 = !DILocation(line: 717, column: 33, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 716, column: 69)
!2163 = !DILocation(line: 719, column: 9, scope: !2162)
!2164 = !DILocation(line: 720, column: 9, scope: !2162)
!2165 = !DILocation(line: 725, column: 22, scope: !1817)
!2166 = !DILocation(line: 653, column: 24, scope: !1716, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 727, column: 18, scope: !1817)
!2168 = !DILocation(line: 653, column: 20, scope: !1716, inlinedAt: !2167)
!2169 = !DILocation(line: 655, column: 5, scope: !1716, inlinedAt: !2167)
!2170 = !DILocation(line: 656, column: 8, scope: !1716, inlinedAt: !2167)
!2171 = !DILocation(line: 656, column: 11, scope: !1716, inlinedAt: !2167)
!2172 = !DILocation(line: 657, column: 8, scope: !1716, inlinedAt: !2167)
!2173 = !DILocation(line: 657, column: 13, scope: !1716, inlinedAt: !2167)
!2174 = !DILocation(line: 658, column: 19, scope: !1716, inlinedAt: !2167)
!2175 = !DILocation(line: 658, column: 8, scope: !1716, inlinedAt: !2167)
!2176 = !DILocation(line: 658, column: 17, scope: !1716, inlinedAt: !2167)
!2177 = !DILocation(line: 659, column: 8, scope: !1716, inlinedAt: !2167)
!2178 = !DILocation(line: 659, column: 22, scope: !1716, inlinedAt: !2167)
!2179 = !DILocation(line: 660, column: 8, scope: !1716, inlinedAt: !2167)
!2180 = !DILocation(line: 660, column: 13, scope: !1716, inlinedAt: !2167)
!2181 = !DILocation(line: 661, column: 8, scope: !1716, inlinedAt: !2167)
!2182 = !DILocation(line: 661, column: 13, scope: !1716, inlinedAt: !2167)
!2183 = !DILocation(line: 662, column: 8, scope: !1716, inlinedAt: !2167)
!2184 = !DILocation(line: 662, column: 15, scope: !1716, inlinedAt: !2167)
!2185 = !DILocation(line: 663, column: 8, scope: !1716, inlinedAt: !2167)
!2186 = !DILocation(line: 663, column: 14, scope: !1716, inlinedAt: !2167)
!2187 = !DILocation(line: 664, column: 8, scope: !1716, inlinedAt: !2167)
!2188 = !DILocation(line: 664, column: 14, scope: !1716, inlinedAt: !2167)
!2189 = !DILocation(line: 667, column: 8, scope: !1716, inlinedAt: !2167)
!2190 = !DILocation(line: 667, column: 18, scope: !1716, inlinedAt: !2167)
!2191 = !DILocation(line: 668, column: 16, scope: !1716, inlinedAt: !2167)
!2192 = !DILocation(line: 668, column: 8, scope: !1716, inlinedAt: !2167)
!2193 = !DILocation(line: 668, column: 14, scope: !1716, inlinedAt: !2167)
!2194 = !DILocation(line: 669, column: 8, scope: !1716, inlinedAt: !2167)
!2195 = !DILocation(line: 669, column: 20, scope: !1716, inlinedAt: !2167)
!2196 = !DILocation(line: 670, column: 8, scope: !1716, inlinedAt: !2167)
!2197 = !DILocation(line: 670, column: 37, scope: !1716, inlinedAt: !2167)
!2198 = !DILocation(line: 671, column: 23, scope: !1716, inlinedAt: !2167)
!2199 = !DILocation(line: 671, column: 8, scope: !1716, inlinedAt: !2167)
!2200 = !DILocation(line: 671, column: 21, scope: !1716, inlinedAt: !2167)
!2201 = !DILocation(line: 672, column: 8, scope: !1716, inlinedAt: !2167)
!2202 = !DILocation(line: 672, column: 15, scope: !1716, inlinedAt: !2167)
!2203 = !DILocation(line: 673, column: 5, scope: !1716, inlinedAt: !2167)
!2204 = !DILocation(line: 674, column: 5, scope: !1716, inlinedAt: !2167)
!2205 = !DILocation(line: 675, column: 5, scope: !1716, inlinedAt: !2167)
!2206 = !DILocation(line: 676, column: 5, scope: !1716, inlinedAt: !2167)
!2207 = !DILocation(line: 699, column: 20, scope: !1817)
!2208 = !DILocation(line: 728, column: 5, scope: !1817)
!2209 = !DILocation(line: 732, column: 5, scope: !1817)
!2210 = !DILocation(line: 732, column: 10, scope: !1817)
!2211 = !DILocation(line: 733, column: 9, scope: !2070)
!2212 = !DILocation(line: 733, column: 27, scope: !2070)
!2213 = !DILocation(line: 733, column: 32, scope: !2070)
!2214 = !DILocation(line: 733, column: 35, scope: !2070)
!2215 = !DILocation(line: 733, column: 57, scope: !2070)
!2216 = !DILocation(line: 733, column: 9, scope: !1817)
!2217 = !DILocation(line: 735, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 735, column: 13)
!2219 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 733, column: 63)
!2220 = !DILocation(line: 735, column: 34, scope: !2218)
!2221 = !DILocation(line: 735, column: 13, scope: !2219)
!2222 = !DILocation(line: 738, column: 9, scope: !2069)
!2223 = !DILocation(line: 740, column: 9, scope: !2069)
!2224 = !DILocation(line: 741, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 741, column: 13)
!2226 = !DILocation(line: 741, column: 34, scope: !2225)
!2227 = !DILocation(line: 741, column: 13, scope: !2069)
!2228 = !DILocation(line: 738, column: 13, scope: !2069)
!2229 = !DILocation(line: 742, column: 9, scope: !2069)
!2230 = !DILocation(line: 743, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 743, column: 13)
!2232 = !DILocation(line: 743, column: 37, scope: !2231)
!2233 = !DILocation(line: 743, column: 13, scope: !2069)
!2234 = !DILocation(line: 744, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 743, column: 46)
!2236 = !DILocation(line: 745, column: 13, scope: !2235)
!2237 = !DILocation(line: 749, column: 5, scope: !2070)
!2238 = !DILocation(line: 747, column: 13, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 746, column: 16)
!2240 = !DILocation(line: 752, column: 5, scope: !1817)
!2241 = !DILocation(line: 0, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 761, column: 13)
!2243 = !DILocation(line: 756, column: 9, scope: !2122)
!2244 = !DILocation(line: 756, column: 14, scope: !2122)
!2245 = !DILocation(line: 761, column: 20, scope: !2242)
!2246 = !DILocation(line: 761, column: 23, scope: !2242)
!2247 = !DILocation(line: 761, column: 13, scope: !2122)
!2248 = !DILocation(line: 762, column: 29, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 761, column: 32)
!2250 = !DILocation(line: 762, column: 13, scope: !2249)
!2251 = !DILocation(line: 763, column: 13, scope: !2249)
!2252 = !DILocation(line: 764, column: 9, scope: !2249)
!2253 = !DILocation(line: 766, column: 13, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 766, column: 13)
!2255 = !DILocation(line: 766, column: 39, scope: !2254)
!2256 = !DILocation(line: 766, column: 13, scope: !2122)
!2257 = !DILocation(line: 767, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 767, column: 17)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 766, column: 48)
!2260 = !{!2261, !495, i64 16}
!2261 = !{!"__sFILE", !95, i64 0, !92, i64 8, !92, i64 12, !495, i64 16, !495, i64 18, !2262, i64 24, !92, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !2262, i64 88, !95, i64 104, !92, i64 112, !93, i64 116, !93, i64 119, !2262, i64 120, !92, i64 136, !96, i64 144, !95, i64 152, !92, i64 160, !2263, i64 164, !92, i64 172}
!2262 = !{!"__sbuf", !95, i64 0, !92, i64 8}
!2263 = !{!"", !92, i64 0, !93, i64 4}
!2264 = !DILocation(line: 770, column: 17, scope: !2258)
!2265 = !DILocation(line: 772, column: 13, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 772, column: 13)
!2267 = !DILocation(line: 772, column: 20, scope: !2266)
!2268 = !DILocation(line: 772, column: 13, scope: !2122)
!2269 = !DILocation(line: 773, column: 13, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 773, column: 13)
!2271 = !DILocation(line: 773, column: 20, scope: !2270)
!2272 = !DILocation(line: 773, column: 13, scope: !2122)
!2273 = !DILocation(line: 774, column: 16, scope: !2122)
!2274 = !DILocation(line: 753, column: 13, scope: !2122)
!2275 = !DILocation(line: 775, column: 18, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 775, column: 13)
!2277 = !DILocation(line: 775, column: 13, scope: !2122)
!2278 = !DILocation(line: 777, column: 38, scope: !2122)
!2279 = !DILocation(line: 777, column: 37, scope: !2122)
!2280 = !DILocation(line: 777, column: 16, scope: !2122)
!2281 = !DILocation(line: 755, column: 16, scope: !2122)
!2282 = !DILocation(line: 778, column: 26, scope: !2122)
!2283 = !DILocation(line: 779, column: 26, scope: !2122)
!2284 = !DILocation(line: 753, column: 19, scope: !2122)
!2285 = !DILocation(line: 781, column: 14, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 781, column: 9)
!2287 = !DILocation(line: 0, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 781, column: 9)
!2289 = !DILocation(line: 781, column: 23, scope: !2288)
!2290 = !DILocation(line: 781, column: 9, scope: !2286)
!2291 = !DILocation(line: 782, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 782, column: 17)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 781, column: 36)
!2294 = !DILocation(line: 782, column: 43, scope: !2292)
!2295 = !DILocation(line: 782, column: 17, scope: !2293)
!2296 = !DILocation(line: 783, column: 34, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 782, column: 52)
!2298 = !DILocation(line: 679, column: 40, scope: !1781, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 784, column: 17, scope: !2297)
!2300 = !DILocation(line: 680, column: 9, scope: !1781, inlinedAt: !2299)
!2301 = !DILocation(line: 682, column: 19, scope: !1790, inlinedAt: !2299)
!2302 = !DILocation(line: 0, scope: !1781, inlinedAt: !2299)
!2303 = !DILocation(line: 682, column: 5, scope: !1791, inlinedAt: !2299)
!2304 = !DILocation(line: 683, column: 22, scope: !1790, inlinedAt: !2299)
!2305 = !DILocation(line: 683, column: 9, scope: !1790, inlinedAt: !2299)
!2306 = !DILocation(line: 682, column: 31, scope: !1790, inlinedAt: !2299)
!2307 = !DILocation(line: 682, column: 24, scope: !1790, inlinedAt: !2299)
!2308 = !DILocation(line: 684, column: 11, scope: !1781, inlinedAt: !2299)
!2309 = !DILocation(line: 684, column: 5, scope: !1781, inlinedAt: !2299)
!2310 = !DILocation(line: 785, column: 17, scope: !2297)
!2311 = !DILocation(line: 787, column: 17, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 787, column: 17)
!2313 = !DILocation(line: 787, column: 24, scope: !2312)
!2314 = !DILocation(line: 787, column: 17, scope: !2293)
!2315 = !DILocation(line: 788, column: 19, scope: !2293)
!2316 = !DILocation(line: 754, column: 23, scope: !2122)
!2317 = !DILocation(line: 789, column: 32, scope: !2293)
!2318 = !DILocation(line: 789, column: 22, scope: !2293)
!2319 = !DILocation(line: 757, column: 13, scope: !2122)
!2320 = !DILocation(line: 790, column: 17, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 790, column: 17)
!2322 = !DILocation(line: 790, column: 21, scope: !2321)
!2323 = !DILocation(line: 790, column: 24, scope: !2321)
!2324 = !DILocation(line: 790, column: 47, scope: !2321)
!2325 = !DILocation(line: 790, column: 17, scope: !2293)
!2326 = !DILocation(line: 791, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 790, column: 53)
!2328 = !DILocation(line: 792, column: 34, scope: !2327)
!2329 = !DILocation(line: 679, column: 40, scope: !1781, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 793, column: 17, scope: !2327)
!2331 = !DILocation(line: 680, column: 9, scope: !1781, inlinedAt: !2330)
!2332 = !DILocation(line: 682, column: 19, scope: !1790, inlinedAt: !2330)
!2333 = !DILocation(line: 0, scope: !1781, inlinedAt: !2330)
!2334 = !DILocation(line: 682, column: 5, scope: !1791, inlinedAt: !2330)
!2335 = !DILocation(line: 683, column: 22, scope: !1790, inlinedAt: !2330)
!2336 = !DILocation(line: 683, column: 9, scope: !1790, inlinedAt: !2330)
!2337 = !DILocation(line: 682, column: 31, scope: !1790, inlinedAt: !2330)
!2338 = !DILocation(line: 682, column: 24, scope: !1790, inlinedAt: !2330)
!2339 = !DILocation(line: 684, column: 11, scope: !1781, inlinedAt: !2330)
!2340 = !DILocation(line: 684, column: 5, scope: !1781, inlinedAt: !2330)
!2341 = !DILocation(line: 794, column: 17, scope: !2327)
!2342 = !DILocation(line: 796, column: 23, scope: !2293)
!2343 = !DILocation(line: 796, column: 13, scope: !2293)
!2344 = !DILocation(line: 796, column: 21, scope: !2293)
!2345 = !DILocation(line: 797, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 797, column: 17)
!2347 = !DILocation(line: 797, column: 35, scope: !2346)
!2348 = !DILocation(line: 797, column: 17, scope: !2293)
!2349 = distinct !{!2349, !2290, !2350}
!2350 = !DILocation(line: 802, column: 9, scope: !2286)
!2351 = !DILocation(line: 798, column: 34, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 797, column: 41)
!2353 = !DILocation(line: 679, column: 40, scope: !1781, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 799, column: 17, scope: !2352)
!2355 = !DILocation(line: 680, column: 9, scope: !1781, inlinedAt: !2354)
!2356 = !DILocation(line: 0, scope: !1781, inlinedAt: !2354)
!2357 = !DILocation(line: 682, column: 5, scope: !1791, inlinedAt: !2354)
!2358 = !DILocation(line: 683, column: 22, scope: !1790, inlinedAt: !2354)
!2359 = !DILocation(line: 683, column: 9, scope: !1790, inlinedAt: !2354)
!2360 = !DILocation(line: 682, column: 31, scope: !1790, inlinedAt: !2354)
!2361 = !DILocation(line: 682, column: 24, scope: !1790, inlinedAt: !2354)
!2362 = !DILocation(line: 682, column: 19, scope: !1790, inlinedAt: !2354)
!2363 = !DILocation(line: 684, column: 11, scope: !1781, inlinedAt: !2354)
!2364 = !DILocation(line: 684, column: 5, scope: !1781, inlinedAt: !2354)
!2365 = !DILocation(line: 800, column: 17, scope: !2352)
!2366 = !DILocation(line: 805, column: 29, scope: !2122)
!2367 = !DILocation(line: 805, column: 38, scope: !2122)
!2368 = !DILocation(line: 805, column: 15, scope: !2122)
!2369 = !DILocation(line: 758, column: 30, scope: !2122)
!2370 = !DILocation(line: 806, column: 14, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 806, column: 13)
!2372 = !DILocation(line: 806, column: 13, scope: !2122)
!2373 = !DILocation(line: 809, column: 24, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 806, column: 19)
!2375 = !DILocation(line: 809, column: 33, scope: !2374)
!2376 = !DILocation(line: 807, column: 13, scope: !2374)
!2377 = !DILocation(line: 810, column: 13, scope: !2374)
!2378 = !DILocation(line: 813, column: 27, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 813, column: 13)
!2380 = !{!91, !95, i64 904}
!2381 = !DILocation(line: 813, column: 17, scope: !2379)
!2382 = !DILocation(line: 813, column: 13, scope: !2122)
!2383 = !DILocation(line: 816, column: 25, scope: !2122)
!2384 = !{!1728, !95, i64 80}
!2385 = !DILocation(line: 817, column: 25, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 817, column: 13)
!2387 = !DILocation(line: 817, column: 31, scope: !2386)
!2388 = !DILocation(line: 0, scope: !2386)
!2389 = !DILocation(line: 817, column: 46, scope: !2386)
!2390 = !DILocation(line: 818, column: 35, scope: !2386)
!2391 = !DILocation(line: 817, column: 13, scope: !2122)
!2392 = !DILocation(line: 820, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 819, column: 9)
!2394 = !DILocation(line: 821, column: 9, scope: !2393)
!2395 = !DILocation(line: 822, column: 18, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 821, column: 16)
!2397 = !DILocation(line: 822, column: 13, scope: !2396)
!2398 = !DILocation(line: 826, column: 9, scope: !2122)
!2399 = !DILocation(line: 830, column: 9, scope: !2122)
!2400 = !DILocation(line: 679, column: 40, scope: !1781, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 834, column: 9, scope: !2122)
!2402 = !DILocation(line: 680, column: 9, scope: !1781, inlinedAt: !2401)
!2403 = !DILocation(line: 682, column: 24, scope: !1790, inlinedAt: !2401)
!2404 = !DILocation(line: 682, column: 19, scope: !1790, inlinedAt: !2401)
!2405 = !DILocation(line: 0, scope: !1781, inlinedAt: !2401)
!2406 = !DILocation(line: 682, column: 5, scope: !1791, inlinedAt: !2401)
!2407 = !DILocation(line: 683, column: 22, scope: !1790, inlinedAt: !2401)
!2408 = !DILocation(line: 683, column: 9, scope: !1790, inlinedAt: !2401)
!2409 = !DILocation(line: 682, column: 31, scope: !1790, inlinedAt: !2401)
!2410 = !DILocation(line: 684, column: 11, scope: !1781, inlinedAt: !2401)
!2411 = !DILocation(line: 684, column: 5, scope: !1781, inlinedAt: !2401)
!2412 = !DILocation(line: 685, column: 1, scope: !1781, inlinedAt: !2401)
!2413 = !DILocation(line: 835, column: 25, scope: !2122)
!2414 = !DILocation(line: 836, column: 20, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 836, column: 13)
!2416 = !{!91, !92, i64 2032}
!2417 = !DILocation(line: 836, column: 13, scope: !2415)
!2418 = !DILocation(line: 836, column: 13, scope: !2122)
!2419 = !DILocation(line: 836, column: 54, scope: !2415)
!2420 = !DILocation(line: 836, column: 40, scope: !2415)
!2421 = !DILocation(line: 685, column: 1, scope: !1781, inlinedAt: !2299)
!2422 = !DILocation(line: 837, column: 5, scope: !1817)
!2423 = !DILocation(line: 897, column: 9, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 897, column: 9)
!2425 = !DILocation(line: 897, column: 9, scope: !1817)
!2426 = !DILocation(line: 0, scope: !2379)
!2427 = !DILocation(line: 0, scope: !2415)
!2428 = distinct !{!2428, !2240, !2422}
!2429 = !DILocation(line: 843, column: 21, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 843, column: 9)
!2431 = !DILocation(line: 843, column: 27, scope: !2430)
!2432 = !DILocation(line: 843, column: 9, scope: !1817)
!2433 = !DILocation(line: 844, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 843, column: 43)
!2435 = !DILocation(line: 847, column: 9, scope: !2434)
!2436 = !DILocation(line: 851, column: 5, scope: !1817)
!2437 = !DILocation(line: 687, column: 36, scope: !1803, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 852, column: 5, scope: !1817)
!2439 = !DILocation(line: 688, column: 16, scope: !1803, inlinedAt: !2438)
!2440 = !DILocation(line: 688, column: 5, scope: !1803, inlinedAt: !2438)
!2441 = !DILocation(line: 689, column: 20, scope: !1803, inlinedAt: !2438)
!2442 = !DILocation(line: 689, column: 5, scope: !1803, inlinedAt: !2438)
!2443 = !DILocation(line: 690, column: 20, scope: !1803, inlinedAt: !2438)
!2444 = !DILocation(line: 690, column: 5, scope: !1803, inlinedAt: !2438)
!2445 = !DILocation(line: 691, column: 5, scope: !1803, inlinedAt: !2438)
!2446 = !DILocation(line: 692, column: 5, scope: !1803, inlinedAt: !2438)
!2447 = !DILocation(line: 693, column: 1, scope: !1803, inlinedAt: !2438)
!2448 = !DILocation(line: 853, column: 22, scope: !1817)
!2449 = !DILocation(line: 854, column: 5, scope: !1817)
!2450 = !DILocation(line: 855, column: 5, scope: !1817)
!2451 = !DILocation(line: 856, column: 43, scope: !1817)
!2452 = !DILocation(line: 856, column: 34, scope: !1817)
!2453 = !{!91, !96, i64 1912}
!2454 = !DILocation(line: 857, column: 29, scope: !1817)
!2455 = !DILocation(line: 858, column: 5, scope: !1817)
!2456 = !DILocation(line: 861, column: 10, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 861, column: 9)
!2458 = !DILocation(line: 861, column: 9, scope: !1817)
!2459 = !DILocation(line: 862, column: 13, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 862, column: 13)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 861, column: 20)
!2462 = !DILocation(line: 862, column: 13, scope: !2461)
!2463 = !DILocation(line: 687, column: 36, scope: !1803, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 862, column: 25, scope: !2460)
!2465 = !DILocation(line: 688, column: 16, scope: !1803, inlinedAt: !2464)
!2466 = !DILocation(line: 688, column: 5, scope: !1803, inlinedAt: !2464)
!2467 = !DILocation(line: 689, column: 20, scope: !1803, inlinedAt: !2464)
!2468 = !DILocation(line: 689, column: 5, scope: !1803, inlinedAt: !2464)
!2469 = !DILocation(line: 690, column: 20, scope: !1803, inlinedAt: !2464)
!2470 = !DILocation(line: 690, column: 5, scope: !1803, inlinedAt: !2464)
!2471 = !DILocation(line: 691, column: 5, scope: !1803, inlinedAt: !2464)
!2472 = !DILocation(line: 692, column: 5, scope: !1803, inlinedAt: !2464)
!2473 = !DILocation(line: 693, column: 1, scope: !1803, inlinedAt: !2464)
!2474 = !DILocation(line: 862, column: 25, scope: !2460)
!2475 = !DILocation(line: 863, column: 95, scope: !2461)
!2476 = !DILocation(line: 863, column: 86, scope: !2461)
!2477 = !DILocation(line: 863, column: 9, scope: !2461)
!2478 = !DILocation(line: 864, column: 9, scope: !2461)
!2479 = !DILocation(line: 0, scope: !2434)
!2480 = !DILocation(line: 868, column: 16, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 868, column: 9)
!2482 = !DILocation(line: 868, column: 9, scope: !2481)
!2483 = !DILocation(line: 868, column: 9, scope: !1817)
!2484 = !DILocation(line: 869, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 868, column: 36)
!2486 = !DILocation(line: 870, column: 9, scope: !2485)
!2487 = !DILocation(line: 872, column: 25, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 872, column: 13)
!2489 = !DILocation(line: 872, column: 31, scope: !2488)
!2490 = !DILocation(line: 872, column: 34, scope: !2488)
!2491 = !DILocation(line: 872, column: 65, scope: !2488)
!2492 = !DILocation(line: 872, column: 13, scope: !2485)
!2493 = !DILocation(line: 874, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 873, column: 36)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 873, column: 17)
!2496 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 872, column: 72)
!2497 = !DILocation(line: 875, column: 13, scope: !2494)
!2498 = !DILocation(line: 877, column: 30, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 875, column: 20)
!2500 = !DILocation(line: 877, column: 21, scope: !2499)
!2501 = !DILocation(line: 876, column: 17, scope: !2499)
!2502 = !DILocation(line: 882, column: 24, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 882, column: 17)
!2504 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 879, column: 16)
!2505 = !DILocation(line: 882, column: 31, scope: !2503)
!2506 = !DILocation(line: 882, column: 37, scope: !2503)
!2507 = !DILocation(line: 882, column: 40, scope: !2503)
!2508 = !DILocation(line: 882, column: 72, scope: !2503)
!2509 = !DILocation(line: 882, column: 17, scope: !2504)
!2510 = !DILocation(line: 884, column: 30, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 882, column: 79)
!2512 = !DILocation(line: 884, column: 21, scope: !2511)
!2513 = !DILocation(line: 883, column: 17, scope: !2511)
!2514 = !DILocation(line: 886, column: 17, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 885, column: 20)
!2516 = !DILocation(line: 888, column: 17, scope: !2515)
!2517 = !DILocation(line: 892, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 892, column: 9)
!2519 = !DILocation(line: 892, column: 9, scope: !1817)
!2520 = !DILocation(line: 687, column: 36, scope: !1803, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 892, column: 21, scope: !2518)
!2522 = !DILocation(line: 688, column: 16, scope: !1803, inlinedAt: !2521)
!2523 = !DILocation(line: 688, column: 5, scope: !1803, inlinedAt: !2521)
!2524 = !DILocation(line: 689, column: 20, scope: !1803, inlinedAt: !2521)
!2525 = !DILocation(line: 689, column: 5, scope: !1803, inlinedAt: !2521)
!2526 = !DILocation(line: 690, column: 20, scope: !1803, inlinedAt: !2521)
!2527 = !DILocation(line: 690, column: 5, scope: !1803, inlinedAt: !2521)
!2528 = !DILocation(line: 691, column: 5, scope: !1803, inlinedAt: !2521)
!2529 = !DILocation(line: 692, column: 5, scope: !1803, inlinedAt: !2521)
!2530 = !DILocation(line: 693, column: 1, scope: !1803, inlinedAt: !2521)
!2531 = !DILocation(line: 892, column: 21, scope: !2518)
!2532 = !DILocation(line: 893, column: 5, scope: !1817)
!2533 = !DILocation(line: 894, column: 5, scope: !1817)
!2534 = !DILocation(line: 687, column: 36, scope: !1803, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 897, column: 21, scope: !2424)
!2536 = !DILocation(line: 688, column: 16, scope: !1803, inlinedAt: !2535)
!2537 = !DILocation(line: 688, column: 5, scope: !1803, inlinedAt: !2535)
!2538 = !DILocation(line: 689, column: 20, scope: !1803, inlinedAt: !2535)
!2539 = !DILocation(line: 689, column: 5, scope: !1803, inlinedAt: !2535)
!2540 = !DILocation(line: 690, column: 20, scope: !1803, inlinedAt: !2535)
!2541 = !DILocation(line: 690, column: 5, scope: !1803, inlinedAt: !2535)
!2542 = !DILocation(line: 691, column: 5, scope: !1803, inlinedAt: !2535)
!2543 = !DILocation(line: 692, column: 5, scope: !1803, inlinedAt: !2535)
!2544 = !DILocation(line: 693, column: 1, scope: !1803, inlinedAt: !2535)
!2545 = !DILocation(line: 897, column: 21, scope: !2424)
!2546 = !DILocation(line: 898, column: 5, scope: !1817)
!2547 = !DILocation(line: 899, column: 5, scope: !1817)
!2548 = !DILocation(line: 900, column: 1, scope: !1817)
!2549 = !DILocation(line: 0, scope: !1817)
!2550 = distinct !DISubprogram(name: "aofUpdateCurrentSize", scope: !3, file: !3, line: 1643, type: !86, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2551)
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "sb", scope: !2550, file: !3, line: 1644, type: !2024)
!2553 = !DILocalVariable(name: "latency", scope: !2550, file: !3, line: 1645, type: !74)
!2554 = !DILocation(line: 1644, column: 5, scope: !2550)
!2555 = !DILocation(line: 1647, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1647, column: 5)
!2557 = !DILocation(line: 1647, column: 5, scope: !2550)
!2558 = !DILocation(line: 1647, column: 5, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1647, column: 5)
!2560 = !DILocation(line: 1645, column: 14, scope: !2550)
!2561 = !DILocation(line: 1648, column: 28, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1648, column: 9)
!2563 = !DILocation(line: 1644, column: 23, scope: !2550)
!2564 = !DILocation(line: 1648, column: 9, scope: !2562)
!2565 = !DILocation(line: 1648, column: 40, scope: !2562)
!2566 = !DILocation(line: 1648, column: 9, scope: !2550)
!2567 = !DILocation(line: 1650, column: 22, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1648, column: 47)
!2569 = !DILocation(line: 1650, column: 13, scope: !2568)
!2570 = !DILocation(line: 1649, column: 9, scope: !2568)
!2571 = !DILocation(line: 1651, column: 5, scope: !2568)
!2572 = !DILocation(line: 1652, column: 38, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1651, column: 12)
!2574 = !DILocation(line: 1652, column: 33, scope: !2573)
!2575 = !DILocation(line: 1654, column: 5, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1654, column: 5)
!2577 = !DILocation(line: 1654, column: 5, scope: !2550)
!2578 = !DILocation(line: 1654, column: 5, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1654, column: 5)
!2580 = !DILocation(line: 1655, column: 5, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1655, column: 5)
!2582 = !DILocation(line: 1656, column: 1, scope: !2550)
!2583 = distinct !DISubprogram(name: "rioWriteBulkObject", scope: !3, file: !3, line: 908, type: !2584, isLocal: false, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2587)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!6, !2586, !1157}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2587 = !{!2588, !2589}
!2588 = !DILocalVariable(name: "r", arg: 1, scope: !2583, file: !3, line: 908, type: !2586)
!2589 = !DILocalVariable(name: "obj", arg: 2, scope: !2583, file: !3, line: 908, type: !1157)
!2590 = !DILocation(line: 908, column: 29, scope: !2583)
!2591 = !DILocation(line: 908, column: 38, scope: !2583)
!2592 = !DILocation(line: 911, column: 14, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 911, column: 9)
!2594 = !DILocation(line: 911, column: 9, scope: !2583)
!2595 = !DILocation(line: 912, column: 50, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 911, column: 44)
!2597 = !DILocation(line: 912, column: 16, scope: !2596)
!2598 = !DILocation(line: 912, column: 9, scope: !2596)
!2599 = !DILocation(line: 914, column: 42, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 913, column: 39)
!2601 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 913, column: 16)
!2602 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 914, column: 46, scope: !2600)
!2604 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !2603)
!2605 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !2603)
!2606 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !2603)
!2607 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !2603)
!2608 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !2603)
!2609 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !2603)
!2610 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !2603)
!2611 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !2603)
!2612 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !2603)
!2613 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !2603)
!2614 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !2603)
!2615 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !2603)
!2616 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !2603)
!2617 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !2603)
!2618 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !2603)
!2619 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !2603)
!2620 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !2603)
!2621 = !DILocation(line: 0, scope: !487, inlinedAt: !2603)
!2622 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !2603)
!2623 = !DILocation(line: 914, column: 16, scope: !2600)
!2624 = !DILocation(line: 914, column: 9, scope: !2600)
!2625 = !DILocation(line: 916, column: 9, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 915, column: 12)
!2627 = !DILocation(line: 0, scope: !2600)
!2628 = !DILocation(line: 918, column: 1, scope: !2583)
!2629 = distinct !DISubprogram(name: "rewriteListObject", scope: !3, file: !3, line: 922, type: !2630, isLocal: false, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!6, !2586, !1157, !1157}
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2667, !2679, !2690}
!2633 = !DILocalVariable(name: "r", arg: 1, scope: !2629, file: !3, line: 922, type: !2586)
!2634 = !DILocalVariable(name: "key", arg: 2, scope: !2629, file: !3, line: 922, type: !1157)
!2635 = !DILocalVariable(name: "o", arg: 3, scope: !2629, file: !3, line: 922, type: !1157)
!2636 = !DILocalVariable(name: "count", scope: !2629, file: !3, line: 923, type: !16)
!2637 = !DILocalVariable(name: "items", scope: !2629, file: !3, line: 923, type: !16)
!2638 = !DILocalVariable(name: "list", scope: !2639, file: !3, line: 926, type: !2641)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 925, column: 48)
!2640 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 925, column: 9)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !2643, line: 80, baseType: !2644)
!2643 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !2643, line: 73, size: 320, elements: !2645)
!2645 = !{!2646, !2662, !2663, !2664, !2665, !2666}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2644, file: !2643, line: 74, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !2643, line: 55, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !2643, line: 44, size: 256, elements: !2650)
!2650 = !{!2651, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2649, file: !2643, line: 45, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2649, file: !2643, line: 46, baseType: !2652, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !2649, file: !2643, line: 47, baseType: !18, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2649, file: !2643, line: 48, baseType: !55, size: 32, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2649, file: !2643, line: 49, baseType: !55, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !2649, file: !2643, line: 50, baseType: !55, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2649, file: !2643, line: 51, baseType: !55, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !2649, file: !2643, line: 52, baseType: !55, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !2649, file: !2643, line: 53, baseType: !55, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2649, file: !2643, line: 54, baseType: !55, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2644, file: !2643, line: 75, baseType: !2647, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2644, file: !2643, line: 76, baseType: !17, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2644, file: !2643, line: 77, baseType: !17, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !2644, file: !2643, line: 78, baseType: !6, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !2644, file: !2643, line: 79, baseType: !55, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!2667 = !DILocalVariable(name: "li", scope: !2639, file: !3, line: 927, type: !2668)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !2643, line: 88, baseType: !2670)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !2643, line: 82, size: 320, elements: !2671)
!2671 = !{!2672, !2675, !2676, !2677, !2678}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2670, file: !2643, line: 83, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2670, file: !2643, line: 84, baseType: !2647, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2670, file: !2643, line: 85, baseType: !18, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2670, file: !2643, line: 86, baseType: !15, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !2670, file: !2643, line: 87, baseType: !6, size: 32, offset: 256)
!2679 = !DILocalVariable(name: "entry", scope: !2639, file: !3, line: 928, type: !2680)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !2643, line: 98, baseType: !2681)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !2643, line: 90, size: 384, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2681, file: !2643, line: 91, baseType: !2673, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2681, file: !2643, line: 92, baseType: !2647, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2681, file: !2643, line: 93, baseType: !18, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2681, file: !2643, line: 94, baseType: !18, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !2681, file: !2643, line: 95, baseType: !16, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2681, file: !2643, line: 96, baseType: !55, size: 32, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2681, file: !2643, line: 97, baseType: !6, size: 32, offset: 352)
!2690 = !DILocalVariable(name: "cmd_items", scope: !2691, file: !3, line: 932, type: !6)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 931, column: 29)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 931, column: 17)
!2693 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 930, column: 42)
!2694 = !DILocation(line: 922, column: 28, scope: !2629)
!2695 = !DILocation(line: 922, column: 37, scope: !2629)
!2696 = !DILocation(line: 922, column: 48, scope: !2629)
!2697 = !DILocation(line: 923, column: 15, scope: !2629)
!2698 = !DILocation(line: 923, column: 34, scope: !2629)
!2699 = !DILocation(line: 923, column: 26, scope: !2629)
!2700 = !DILocation(line: 925, column: 12, scope: !2640)
!2701 = !DILocation(line: 925, column: 21, scope: !2640)
!2702 = !DILocation(line: 925, column: 9, scope: !2629)
!2703 = !DILocation(line: 926, column: 30, scope: !2639)
!2704 = !DILocation(line: 926, column: 20, scope: !2639)
!2705 = !DILocation(line: 927, column: 29, scope: !2639)
!2706 = !DILocation(line: 927, column: 24, scope: !2639)
!2707 = !DILocation(line: 928, column: 9, scope: !2639)
!2708 = !DILocation(line: 928, column: 24, scope: !2639)
!2709 = !DILocation(line: 930, column: 16, scope: !2639)
!2710 = !DILocation(line: 930, column: 9, scope: !2639)
!2711 = !DILocation(line: 931, column: 23, scope: !2692)
!2712 = !DILocation(line: 931, column: 17, scope: !2693)
!2713 = !DILocation(line: 932, column: 33, scope: !2691)
!2714 = !DILocation(line: 934, column: 45, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 934, column: 21)
!2716 = !DILocation(line: 934, column: 21, scope: !2715)
!2717 = !DILocation(line: 934, column: 58, scope: !2715)
!2718 = !DILocation(line: 934, column: 21, scope: !2691)
!2719 = !DILocation(line: 935, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 935, column: 21)
!2721 = !DILocation(line: 935, column: 53, scope: !2720)
!2722 = !DILocation(line: 935, column: 21, scope: !2691)
!2723 = !DILocation(line: 936, column: 21, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 936, column: 21)
!2725 = !DILocation(line: 936, column: 47, scope: !2724)
!2726 = !DILocation(line: 939, column: 23, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 939, column: 17)
!2728 = !{!2729, !95, i64 24}
!2729 = !{!"quicklistEntry", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !97, i64 32, !92, i64 40, !92, i64 44}
!2730 = !DILocation(line: 939, column: 17, scope: !2727)
!2731 = !DILocation(line: 939, column: 17, scope: !2693)
!2732 = !DILocation(line: 940, column: 67, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 940, column: 21)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 939, column: 30)
!2735 = !{!2729, !92, i64 40}
!2736 = !DILocation(line: 940, column: 61, scope: !2733)
!2737 = !DILocation(line: 940, column: 21, scope: !2733)
!2738 = !DILocation(line: 940, column: 71, scope: !2733)
!2739 = !DILocation(line: 940, column: 21, scope: !2734)
!2740 = !DILocation(line: 942, column: 50, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 942, column: 21)
!2742 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 941, column: 20)
!2743 = !{!2729, !97, i64 32}
!2744 = !DILocation(line: 942, column: 21, scope: !2741)
!2745 = !DILocation(line: 942, column: 59, scope: !2741)
!2746 = !DILocation(line: 942, column: 21, scope: !2742)
!2747 = !DILocation(line: 944, column: 17, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 944, column: 17)
!2749 = !DILocation(line: 944, column: 25, scope: !2748)
!2750 = !DILocation(line: 944, column: 17, scope: !2693)
!2751 = !DILocation(line: 945, column: 18, scope: !2693)
!2752 = distinct !{!2752, !2710, !2753}
!2753 = !DILocation(line: 946, column: 9, scope: !2639)
!2754 = !DILocation(line: 948, column: 5, scope: !2640)
!2755 = !DILocation(line: 947, column: 9, scope: !2639)
!2756 = !DILocation(line: 952, column: 1, scope: !2629)
!2757 = !DILocation(line: 949, column: 9, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 948, column: 12)
!2759 = distinct !DISubprogram(name: "rewriteSetObject", scope: !3, file: !3, line: 956, type: !2630, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2766, !2769, !2770, !2774, !2788, !2789, !2791}
!2761 = !DILocalVariable(name: "r", arg: 1, scope: !2759, file: !3, line: 956, type: !2586)
!2762 = !DILocalVariable(name: "key", arg: 2, scope: !2759, file: !3, line: 956, type: !1157)
!2763 = !DILocalVariable(name: "o", arg: 3, scope: !2759, file: !3, line: 956, type: !1157)
!2764 = !DILocalVariable(name: "count", scope: !2759, file: !3, line: 957, type: !16)
!2765 = !DILocalVariable(name: "items", scope: !2759, file: !3, line: 957, type: !16)
!2766 = !DILocalVariable(name: "ii", scope: !2767, file: !3, line: 960, type: !6)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 959, column: 45)
!2768 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 959, column: 9)
!2769 = !DILocalVariable(name: "llval", scope: !2767, file: !3, line: 961, type: !1345)
!2770 = !DILocalVariable(name: "cmd_items", scope: !2771, file: !3, line: 965, type: !6)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 964, column: 29)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 964, column: 17)
!2773 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 963, column: 46)
!2774 = !DILocalVariable(name: "di", scope: !2775, file: !3, line: 977, type: !2777)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 976, column: 48)
!2776 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 976, column: 16)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !1298, line: 95, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !1298, line: 88, size: 384, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2779, file: !1298, line: 89, baseType: !1296, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2779, file: !1298, line: 90, baseType: !15, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2779, file: !1298, line: 91, baseType: !6, size: 32, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !2779, file: !1298, line: 91, baseType: !6, size: 32, offset: 160)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2779, file: !1298, line: 92, baseType: !1334, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !2779, file: !1298, line: 92, baseType: !1334, size: 64, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !2779, file: !1298, line: 94, baseType: !16, size: 64, offset: 320)
!2788 = !DILocalVariable(name: "de", scope: !2775, file: !3, line: 978, type: !1334)
!2789 = !DILocalVariable(name: "ele", scope: !2790, file: !3, line: 981, type: !470)
!2790 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 980, column: 44)
!2791 = !DILocalVariable(name: "cmd_items", scope: !2792, file: !3, line: 983, type: !6)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 982, column: 29)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 982, column: 17)
!2794 = !DILocation(line: 956, column: 27, scope: !2759)
!2795 = !DILocation(line: 956, column: 36, scope: !2759)
!2796 = !DILocation(line: 956, column: 47, scope: !2759)
!2797 = !DILocation(line: 957, column: 15, scope: !2759)
!2798 = !DILocation(line: 957, column: 34, scope: !2759)
!2799 = !DILocation(line: 957, column: 26, scope: !2759)
!2800 = !DILocation(line: 959, column: 12, scope: !2768)
!2801 = !DILocation(line: 959, column: 9, scope: !2759)
!2802 = !DILocation(line: 960, column: 13, scope: !2767)
!2803 = !DILocation(line: 961, column: 9, scope: !2767)
!2804 = !DILocation(line: 963, column: 28, scope: !2767)
!2805 = !DILocation(line: 961, column: 17, scope: !2767)
!2806 = !DILocation(line: 963, column: 15, scope: !2767)
!2807 = !DILocation(line: 963, column: 9, scope: !2767)
!2808 = !DILocation(line: 964, column: 23, scope: !2772)
!2809 = !DILocation(line: 964, column: 17, scope: !2773)
!2810 = !DILocation(line: 965, column: 33, scope: !2771)
!2811 = !DILocation(line: 968, column: 45, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 968, column: 21)
!2813 = !DILocation(line: 968, column: 21, scope: !2812)
!2814 = !DILocation(line: 968, column: 58, scope: !2812)
!2815 = !DILocation(line: 968, column: 21, scope: !2771)
!2816 = !DILocation(line: 969, column: 21, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 969, column: 21)
!2818 = !DILocation(line: 969, column: 52, scope: !2817)
!2819 = !DILocation(line: 969, column: 21, scope: !2771)
!2820 = !DILocation(line: 970, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 970, column: 21)
!2822 = !DILocation(line: 970, column: 47, scope: !2821)
!2823 = !DILocation(line: 972, column: 40, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 972, column: 17)
!2825 = !DILocation(line: 972, column: 17, scope: !2824)
!2826 = !DILocation(line: 972, column: 47, scope: !2824)
!2827 = !DILocation(line: 972, column: 17, scope: !2773)
!2828 = !DILocation(line: 973, column: 17, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 973, column: 17)
!2830 = !DILocation(line: 973, column: 25, scope: !2829)
!2831 = !DILocation(line: 973, column: 17, scope: !2773)
!2832 = !DILocation(line: 974, column: 18, scope: !2773)
!2833 = !DILocation(line: 963, column: 34, scope: !2767)
!2834 = distinct !{!2834, !2807, !2835}
!2835 = !DILocation(line: 975, column: 9, scope: !2767)
!2836 = !DILocation(line: 976, column: 5, scope: !2768)
!2837 = !DILocation(line: 977, column: 47, scope: !2775)
!2838 = !DILocation(line: 977, column: 28, scope: !2775)
!2839 = !DILocation(line: 977, column: 23, scope: !2775)
!2840 = !DILocation(line: 980, column: 21, scope: !2775)
!2841 = !DILocation(line: 978, column: 20, scope: !2775)
!2842 = !DILocation(line: 980, column: 35, scope: !2775)
!2843 = !DILocation(line: 980, column: 9, scope: !2775)
!2844 = !DILocation(line: 981, column: 23, scope: !2790)
!2845 = !{!2846, !95, i64 0}
!2846 = !{!"dictEntry", !95, i64 0, !93, i64 8, !95, i64 16}
!2847 = !DILocation(line: 981, column: 17, scope: !2790)
!2848 = !DILocation(line: 982, column: 23, scope: !2793)
!2849 = !DILocation(line: 982, column: 17, scope: !2790)
!2850 = !DILocation(line: 983, column: 33, scope: !2792)
!2851 = !DILocation(line: 986, column: 45, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 986, column: 21)
!2853 = !DILocation(line: 986, column: 21, scope: !2852)
!2854 = !DILocation(line: 986, column: 58, scope: !2852)
!2855 = !DILocation(line: 986, column: 21, scope: !2792)
!2856 = !DILocation(line: 987, column: 21, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 987, column: 21)
!2858 = !DILocation(line: 987, column: 52, scope: !2857)
!2859 = !DILocation(line: 987, column: 21, scope: !2792)
!2860 = !DILocation(line: 988, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 988, column: 21)
!2862 = !DILocation(line: 988, column: 47, scope: !2861)
!2863 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 990, column: 42, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 990, column: 17)
!2866 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !2864)
!2867 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !2864)
!2868 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !2864)
!2869 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !2864)
!2870 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !2864)
!2871 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !2864)
!2872 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !2864)
!2873 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !2864)
!2874 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !2864)
!2875 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !2864)
!2876 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !2864)
!2877 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !2864)
!2878 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !2864)
!2879 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !2864)
!2880 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !2864)
!2881 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !2864)
!2882 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !2864)
!2883 = !DILocation(line: 0, scope: !487, inlinedAt: !2864)
!2884 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !2864)
!2885 = !DILocation(line: 990, column: 17, scope: !2865)
!2886 = !DILocation(line: 990, column: 55, scope: !2865)
!2887 = !DILocation(line: 990, column: 17, scope: !2790)
!2888 = !DILocation(line: 991, column: 17, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 991, column: 17)
!2890 = !DILocation(line: 991, column: 25, scope: !2889)
!2891 = !DILocation(line: 991, column: 17, scope: !2790)
!2892 = !DILocation(line: 992, column: 18, scope: !2790)
!2893 = !DILocation(line: 994, column: 9, scope: !2775)
!2894 = !DILocation(line: 996, column: 9, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 995, column: 12)
!2896 = !DILocation(line: 0, scope: !2865)
!2897 = !DILocation(line: 999, column: 1, scope: !2759)
!2898 = distinct !DISubprogram(name: "rewriteSortedSetObject", scope: !3, file: !3, line: 1003, type: !2630, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2918, !2947, !2948, !2949, !2951, !2953}
!2900 = !DILocalVariable(name: "r", arg: 1, scope: !2898, file: !3, line: 1003, type: !2586)
!2901 = !DILocalVariable(name: "key", arg: 2, scope: !2898, file: !3, line: 1003, type: !1157)
!2902 = !DILocalVariable(name: "o", arg: 3, scope: !2898, file: !3, line: 1003, type: !1157)
!2903 = !DILocalVariable(name: "count", scope: !2898, file: !3, line: 1004, type: !16)
!2904 = !DILocalVariable(name: "items", scope: !2898, file: !3, line: 1004, type: !16)
!2905 = !DILocalVariable(name: "zl", scope: !2906, file: !3, line: 1007, type: !18)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1006, column: 46)
!2907 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1006, column: 9)
!2908 = !DILocalVariable(name: "eptr", scope: !2906, file: !3, line: 1008, type: !18)
!2909 = !DILocalVariable(name: "sptr", scope: !2906, file: !3, line: 1008, type: !18)
!2910 = !DILocalVariable(name: "vstr", scope: !2906, file: !3, line: 1009, type: !18)
!2911 = !DILocalVariable(name: "vlen", scope: !2906, file: !3, line: 1010, type: !55)
!2912 = !DILocalVariable(name: "vll", scope: !2906, file: !3, line: 1011, type: !16)
!2913 = !DILocalVariable(name: "score", scope: !2906, file: !3, line: 1012, type: !23)
!2914 = !DILocalVariable(name: "cmd_items", scope: !2915, file: !3, line: 1024, type: !6)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1023, column: 29)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1023, column: 17)
!2917 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1019, column: 30)
!2918 = !DILocalVariable(name: "zs", scope: !2919, file: !3, line: 1042, type: !2921)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1041, column: 54)
!2920 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1041, column: 16)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !75, line: 829, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !75, line: 826, size: 128, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !2923, file: !75, line: 827, baseType: !1296, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !2923, file: !75, line: 828, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !75, line: 824, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !75, line: 820, size: 256, elements: !2930)
!2930 = !{!2931, !2944, !2945, !2946}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2929, file: !75, line: 821, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !75, line: 810, size: 192, elements: !2934)
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !2933, file: !75, line: 811, baseType: !470, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !2933, file: !75, line: 812, baseType: !23, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !2933, file: !75, line: 813, baseType: !2932, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2933, file: !75, line: 817, baseType: !2939, offset: 192)
!2939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2940, elements: !37)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !75, line: 814, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2940, file: !75, line: 815, baseType: !2932, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !2940, file: !75, line: 816, baseType: !17, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2929, file: !75, line: 821, baseType: !2932, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2929, file: !75, line: 822, baseType: !17, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2929, file: !75, line: 823, baseType: !6, size: 32, offset: 192)
!2947 = !DILocalVariable(name: "di", scope: !2919, file: !3, line: 1043, type: !2777)
!2948 = !DILocalVariable(name: "de", scope: !2919, file: !3, line: 1044, type: !1334)
!2949 = !DILocalVariable(name: "ele", scope: !2950, file: !3, line: 1047, type: !470)
!2950 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 1046, column: 44)
!2951 = !DILocalVariable(name: "score", scope: !2950, file: !3, line: 1048, type: !2952)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2953 = !DILocalVariable(name: "cmd_items", scope: !2954, file: !3, line: 1051, type: !6)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1050, column: 29)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1050, column: 17)
!2956 = !DILocation(line: 1003, column: 33, scope: !2898)
!2957 = !DILocation(line: 1003, column: 42, scope: !2898)
!2958 = !DILocation(line: 1003, column: 53, scope: !2898)
!2959 = !DILocation(line: 1004, column: 15, scope: !2898)
!2960 = !DILocation(line: 1004, column: 34, scope: !2898)
!2961 = !DILocation(line: 1004, column: 26, scope: !2898)
!2962 = !DILocation(line: 1006, column: 12, scope: !2907)
!2963 = !DILocation(line: 1006, column: 9, scope: !2898)
!2964 = !DILocation(line: 1007, column: 32, scope: !2906)
!2965 = !DILocation(line: 1007, column: 24, scope: !2906)
!2966 = !DILocation(line: 1008, column: 9, scope: !2906)
!2967 = !DILocation(line: 1009, column: 9, scope: !2906)
!2968 = !DILocation(line: 1010, column: 9, scope: !2906)
!2969 = !DILocation(line: 1011, column: 9, scope: !2906)
!2970 = !DILocation(line: 1014, column: 16, scope: !2906)
!2971 = !DILocation(line: 1008, column: 24, scope: !2906)
!2972 = !DILocation(line: 1014, column: 14, scope: !2906)
!2973 = !DILocation(line: 1015, column: 9, scope: !2906)
!2974 = !DILocation(line: 1016, column: 16, scope: !2906)
!2975 = !DILocation(line: 1008, column: 31, scope: !2906)
!2976 = !DILocation(line: 1016, column: 14, scope: !2906)
!2977 = !DILocation(line: 1017, column: 9, scope: !2906)
!2978 = !DILocation(line: 1009, column: 24, scope: !2906)
!2979 = !DILocation(line: 1010, column: 22, scope: !2906)
!2980 = !DILocation(line: 1011, column: 19, scope: !2906)
!2981 = !DILocation(line: 1020, column: 13, scope: !2917)
!2982 = !DILocation(line: 1021, column: 33, scope: !2917)
!2983 = !DILocation(line: 1021, column: 21, scope: !2917)
!2984 = !DILocation(line: 1012, column: 16, scope: !2906)
!2985 = !DILocation(line: 1023, column: 23, scope: !2916)
!2986 = !DILocation(line: 1023, column: 17, scope: !2917)
!2987 = !DILocation(line: 1024, column: 33, scope: !2915)
!2988 = !DILocation(line: 1024, column: 21, scope: !2915)
!2989 = !DILocation(line: 1027, column: 56, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1027, column: 21)
!2991 = !DILocation(line: 1027, column: 46, scope: !2990)
!2992 = !DILocation(line: 1027, column: 45, scope: !2990)
!2993 = !DILocation(line: 1027, column: 21, scope: !2990)
!2994 = !DILocation(line: 1027, column: 60, scope: !2990)
!2995 = !DILocation(line: 1027, column: 21, scope: !2915)
!2996 = !DILocation(line: 1028, column: 21, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1028, column: 21)
!2998 = !DILocation(line: 1028, column: 52, scope: !2997)
!2999 = !DILocation(line: 1028, column: 21, scope: !2915)
!3000 = !DILocation(line: 1029, column: 21, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1029, column: 21)
!3002 = !DILocation(line: 1029, column: 47, scope: !3001)
!3003 = !DILocation(line: 1031, column: 17, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1031, column: 17)
!3005 = !DILocation(line: 1031, column: 45, scope: !3004)
!3006 = !DILocation(line: 1031, column: 17, scope: !2917)
!3007 = !DILocation(line: 1032, column: 17, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1032, column: 17)
!3009 = !DILocation(line: 1032, column: 22, scope: !3008)
!3010 = !DILocation(line: 1032, column: 17, scope: !2917)
!3011 = !DILocation(line: 1033, column: 54, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1033, column: 21)
!3013 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1032, column: 31)
!3014 = !DILocation(line: 1033, column: 21, scope: !3012)
!3015 = !DILocation(line: 1033, column: 60, scope: !3012)
!3016 = !DILocation(line: 1033, column: 21, scope: !3013)
!3017 = !DILocation(line: 1035, column: 44, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1035, column: 21)
!3019 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1034, column: 20)
!3020 = !{!97, !97, i64 0}
!3021 = !DILocation(line: 1035, column: 21, scope: !3018)
!3022 = !DILocation(line: 1035, column: 49, scope: !3018)
!3023 = !DILocation(line: 1035, column: 21, scope: !3019)
!3024 = !DILocation(line: 1037, column: 13, scope: !2917)
!3025 = !DILocation(line: 1038, column: 17, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1038, column: 17)
!3027 = !DILocation(line: 1038, column: 25, scope: !3026)
!3028 = !DILocation(line: 1038, column: 17, scope: !2917)
!3029 = !DILocation(line: 1039, column: 18, scope: !2917)
!3030 = !DILocation(line: 1019, column: 16, scope: !2906)
!3031 = !DILocation(line: 1019, column: 21, scope: !2906)
!3032 = !DILocation(line: 1019, column: 9, scope: !2906)
!3033 = distinct !{!3033, !3032, !3034}
!3034 = !DILocation(line: 1040, column: 9, scope: !2906)
!3035 = !DILocation(line: 1041, column: 5, scope: !2907)
!3036 = !DILocation(line: 1042, column: 23, scope: !2919)
!3037 = !DILocation(line: 1042, column: 15, scope: !2919)
!3038 = !DILocation(line: 1043, column: 48, scope: !2919)
!3039 = !{!3040, !95, i64 0}
!3040 = !{!"zset", !95, i64 0, !95, i64 8}
!3041 = !DILocation(line: 1043, column: 28, scope: !2919)
!3042 = !DILocation(line: 1043, column: 23, scope: !2919)
!3043 = !DILocation(line: 1046, column: 21, scope: !2919)
!3044 = !DILocation(line: 1044, column: 20, scope: !2919)
!3045 = !DILocation(line: 1046, column: 35, scope: !2919)
!3046 = !DILocation(line: 1046, column: 9, scope: !2919)
!3047 = !DILocation(line: 1047, column: 23, scope: !2950)
!3048 = !DILocation(line: 1047, column: 17, scope: !2950)
!3049 = !DILocation(line: 1048, column: 29, scope: !2950)
!3050 = !DILocation(line: 1048, column: 21, scope: !2950)
!3051 = !DILocation(line: 1050, column: 23, scope: !2955)
!3052 = !DILocation(line: 1050, column: 17, scope: !2950)
!3053 = !DILocation(line: 1051, column: 33, scope: !2954)
!3054 = !DILocation(line: 1051, column: 21, scope: !2954)
!3055 = !DILocation(line: 1054, column: 56, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1054, column: 21)
!3057 = !DILocation(line: 1054, column: 46, scope: !3056)
!3058 = !DILocation(line: 1054, column: 45, scope: !3056)
!3059 = !DILocation(line: 1054, column: 21, scope: !3056)
!3060 = !DILocation(line: 1054, column: 60, scope: !3056)
!3061 = !DILocation(line: 1054, column: 21, scope: !2954)
!3062 = !DILocation(line: 1055, column: 21, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1055, column: 21)
!3064 = !DILocation(line: 1055, column: 52, scope: !3063)
!3065 = !DILocation(line: 1055, column: 21, scope: !2954)
!3066 = !DILocation(line: 1056, column: 21, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1056, column: 21)
!3068 = !DILocation(line: 1056, column: 47, scope: !3067)
!3069 = !DILocation(line: 1058, column: 38, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1058, column: 17)
!3071 = !{!98, !98, i64 0}
!3072 = !DILocation(line: 1058, column: 17, scope: !3070)
!3073 = !DILocation(line: 1058, column: 46, scope: !3070)
!3074 = !DILocation(line: 1058, column: 17, scope: !2950)
!3075 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 1059, column: 42, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1059, column: 17)
!3078 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !3076)
!3079 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !3076)
!3080 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !3076)
!3081 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !3076)
!3082 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !3076)
!3083 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !3076)
!3084 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !3076)
!3085 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !3076)
!3086 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !3076)
!3087 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !3076)
!3088 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !3076)
!3089 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !3076)
!3090 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !3076)
!3091 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !3076)
!3092 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !3076)
!3093 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !3076)
!3094 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !3076)
!3095 = !DILocation(line: 0, scope: !487, inlinedAt: !3076)
!3096 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !3076)
!3097 = !DILocation(line: 1059, column: 17, scope: !3077)
!3098 = !DILocation(line: 1059, column: 55, scope: !3077)
!3099 = !DILocation(line: 1059, column: 17, scope: !2950)
!3100 = !DILocation(line: 1060, column: 17, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1060, column: 17)
!3102 = !DILocation(line: 1060, column: 25, scope: !3101)
!3103 = !DILocation(line: 1060, column: 17, scope: !2950)
!3104 = !DILocation(line: 1061, column: 18, scope: !2950)
!3105 = !DILocation(line: 1063, column: 9, scope: !2919)
!3106 = !DILocation(line: 1065, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1064, column: 12)
!3108 = !DILocation(line: 0, scope: !3070)
!3109 = !DILocation(line: 1068, column: 1, scope: !2898)
!3110 = distinct !DISubprogram(name: "rewriteHashObject", scope: !3, file: !3, line: 1098, type: !2630, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3111)
!3111 = !{!3112, !3113, !3114, !3115, !3126, !3127, !3128}
!3112 = !DILocalVariable(name: "r", arg: 1, scope: !3110, file: !3, line: 1098, type: !2586)
!3113 = !DILocalVariable(name: "key", arg: 2, scope: !3110, file: !3, line: 1098, type: !1157)
!3114 = !DILocalVariable(name: "o", arg: 3, scope: !3110, file: !3, line: 1098, type: !1157)
!3115 = !DILocalVariable(name: "hi", scope: !3110, file: !3, line: 1099, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !75, line: 1375, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 1367, size: 384, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !3118, file: !75, line: 1368, baseType: !1157, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !3118, file: !75, line: 1369, baseType: !6, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !3118, file: !75, line: 1371, baseType: !18, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !3118, file: !75, line: 1371, baseType: !18, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3118, file: !75, line: 1373, baseType: !2777, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !3118, file: !75, line: 1374, baseType: !1334, size: 64, offset: 320)
!3126 = !DILocalVariable(name: "count", scope: !3110, file: !3, line: 1100, type: !16)
!3127 = !DILocalVariable(name: "items", scope: !3110, file: !3, line: 1100, type: !16)
!3128 = !DILocalVariable(name: "cmd_items", scope: !3129, file: !3, line: 1105, type: !6)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1104, column: 25)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1104, column: 13)
!3131 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1103, column: 39)
!3132 = !DILocation(line: 1098, column: 28, scope: !3110)
!3133 = !DILocation(line: 1098, column: 37, scope: !3110)
!3134 = !DILocation(line: 1098, column: 48, scope: !3110)
!3135 = !DILocation(line: 1100, column: 15, scope: !3110)
!3136 = !DILocation(line: 1100, column: 34, scope: !3110)
!3137 = !DILocation(line: 1100, column: 26, scope: !3110)
!3138 = !DILocation(line: 1102, column: 10, scope: !3110)
!3139 = !DILocation(line: 1099, column: 23, scope: !3110)
!3140 = !DILocation(line: 1103, column: 12, scope: !3110)
!3141 = !DILocation(line: 1103, column: 29, scope: !3110)
!3142 = !DILocation(line: 1103, column: 5, scope: !3110)
!3143 = !DILocation(line: 1104, column: 19, scope: !3130)
!3144 = !DILocation(line: 1104, column: 13, scope: !3131)
!3145 = !DILocation(line: 1105, column: 29, scope: !3129)
!3146 = !DILocation(line: 1105, column: 17, scope: !3129)
!3147 = !DILocation(line: 1108, column: 52, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1108, column: 17)
!3149 = !DILocation(line: 1108, column: 42, scope: !3148)
!3150 = !DILocation(line: 1108, column: 41, scope: !3148)
!3151 = !DILocation(line: 1108, column: 17, scope: !3148)
!3152 = !DILocation(line: 1108, column: 56, scope: !3148)
!3153 = !DILocation(line: 1108, column: 17, scope: !3129)
!3154 = !DILocation(line: 1109, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1109, column: 17)
!3156 = !DILocation(line: 1109, column: 49, scope: !3155)
!3157 = !DILocation(line: 1109, column: 17, scope: !3129)
!3158 = !DILocation(line: 1110, column: 17, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1110, column: 17)
!3160 = !DILocation(line: 1110, column: 43, scope: !3159)
!3161 = !DILocation(line: 1113, column: 13, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1113, column: 13)
!3163 = !DILocation(line: 1113, column: 61, scope: !3162)
!3164 = !DILocation(line: 1113, column: 13, scope: !3131)
!3165 = !DILocation(line: 1114, column: 13, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1114, column: 13)
!3167 = !DILocation(line: 1114, column: 63, scope: !3166)
!3168 = !DILocation(line: 1114, column: 13, scope: !3131)
!3169 = !DILocation(line: 1115, column: 13, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1115, column: 13)
!3171 = !DILocation(line: 1115, column: 21, scope: !3170)
!3172 = !DILocation(line: 1115, column: 13, scope: !3131)
!3173 = !DILocation(line: 1116, column: 14, scope: !3131)
!3174 = distinct !{!3174, !3142, !3175}
!3175 = !DILocation(line: 1117, column: 5, scope: !3110)
!3176 = !DILocation(line: 1119, column: 5, scope: !3110)
!3177 = !DILocation(line: 1121, column: 5, scope: !3110)
!3178 = !DILocation(line: 0, scope: !3110)
!3179 = !DILocation(line: 1122, column: 1, scope: !3110)
!3180 = distinct !DISubprogram(name: "rioWriteHashIteratorCursor", scope: !3, file: !3, line: 1076, type: !3181, isLocal: true, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!6, !2586, !3116, !6}
!3183 = !{!3184, !3185, !3186, !3187, !3190, !3191, !3192}
!3184 = !DILocalVariable(name: "r", arg: 1, scope: !3180, file: !3, line: 1076, type: !2586)
!3185 = !DILocalVariable(name: "hi", arg: 2, scope: !3180, file: !3, line: 1076, type: !3116)
!3186 = !DILocalVariable(name: "what", arg: 3, scope: !3180, file: !3, line: 1076, type: !6)
!3187 = !DILocalVariable(name: "vstr", scope: !3188, file: !3, line: 1078, type: !18)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 1077, column: 47)
!3189 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 1077, column: 9)
!3190 = !DILocalVariable(name: "vlen", scope: !3188, file: !3, line: 1079, type: !55)
!3191 = !DILocalVariable(name: "vll", scope: !3188, file: !3, line: 1080, type: !16)
!3192 = !DILocalVariable(name: "value", scope: !3193, file: !3, line: 1088, type: !470)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 1087, column: 49)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 1087, column: 16)
!3195 = !DILocation(line: 1076, column: 44, scope: !3180)
!3196 = !DILocation(line: 1076, column: 65, scope: !3180)
!3197 = !DILocation(line: 1076, column: 73, scope: !3180)
!3198 = !DILocation(line: 1077, column: 13, scope: !3189)
!3199 = !{!3200, !92, i64 8}
!3200 = !{!"", !95, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40}
!3201 = !DILocation(line: 1077, column: 9, scope: !3180)
!3202 = !DILocation(line: 1078, column: 9, scope: !3188)
!3203 = !DILocation(line: 1078, column: 24, scope: !3188)
!3204 = !DILocation(line: 1079, column: 9, scope: !3188)
!3205 = !DILocation(line: 1079, column: 22, scope: !3188)
!3206 = !DILocation(line: 1080, column: 9, scope: !3188)
!3207 = !DILocation(line: 1080, column: 19, scope: !3188)
!3208 = !DILocation(line: 1082, column: 9, scope: !3188)
!3209 = !DILocation(line: 1083, column: 13, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 1083, column: 13)
!3211 = !DILocation(line: 1083, column: 13, scope: !3188)
!3212 = !DILocation(line: 1084, column: 55, scope: !3210)
!3213 = !DILocation(line: 1084, column: 20, scope: !3210)
!3214 = !DILocation(line: 1084, column: 13, scope: !3210)
!3215 = !DILocation(line: 1086, column: 44, scope: !3210)
!3216 = !DILocation(line: 1086, column: 20, scope: !3210)
!3217 = !DILocation(line: 1086, column: 13, scope: !3210)
!3218 = !DILocation(line: 1087, column: 5, scope: !3189)
!3219 = !DILocation(line: 1088, column: 21, scope: !3193)
!3220 = !DILocation(line: 1088, column: 13, scope: !3193)
!3221 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1089, column: 45, scope: !3193)
!3223 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !3222)
!3224 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !3222)
!3225 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !3222)
!3226 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !3222)
!3227 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !3222)
!3228 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !3222)
!3229 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !3222)
!3230 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !3222)
!3231 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !3222)
!3232 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !3222)
!3233 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !3222)
!3234 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !3222)
!3235 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !3222)
!3236 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !3222)
!3237 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !3222)
!3238 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !3222)
!3239 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !3222)
!3240 = !DILocation(line: 0, scope: !487, inlinedAt: !3222)
!3241 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !3222)
!3242 = !DILocation(line: 1089, column: 16, scope: !3193)
!3243 = !DILocation(line: 1092, column: 5, scope: !3180)
!3244 = !DILocation(line: 0, scope: !3193)
!3245 = !DILocation(line: 1094, column: 1, scope: !3180)
!3246 = distinct !DISubprogram(name: "rioWriteBulkStreamID", scope: !3, file: !3, line: 1126, type: !3247, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3256)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!6, !2586, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !3251, line: 14, baseType: !3252)
!3251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !3251, line: 11, size: 128, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !3252, file: !3251, line: 12, baseType: !63, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3252, file: !3251, line: 13, baseType: !63, size: 64, offset: 64)
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DILocalVariable(name: "r", arg: 1, scope: !3246, file: !3, line: 1126, type: !2586)
!3258 = !DILocalVariable(name: "id", arg: 2, scope: !3246, file: !3, line: 1126, type: !3249)
!3259 = !DILocalVariable(name: "retval", scope: !3246, file: !3, line: 1127, type: !6)
!3260 = !DILocalVariable(name: "replyid", scope: !3246, file: !3, line: 1129, type: !470)
!3261 = !DILocation(line: 1126, column: 31, scope: !3246)
!3262 = !DILocation(line: 1126, column: 43, scope: !3246)
!3263 = !DILocation(line: 1129, column: 29, scope: !3246)
!3264 = !DILocation(line: 1129, column: 52, scope: !3246)
!3265 = !{!3266, !96, i64 0}
!3266 = !{!"streamID", !96, i64 0, !96, i64 8}
!3267 = !DILocation(line: 1129, column: 59, scope: !3246)
!3268 = !{!3266, !96, i64 8}
!3269 = !DILocation(line: 1129, column: 19, scope: !3246)
!3270 = !DILocation(line: 1129, column: 9, scope: !3246)
!3271 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 1130, column: 48, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 1130, column: 9)
!3274 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !3272)
!3275 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !3272)
!3276 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !3272)
!3277 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !3272)
!3278 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !3272)
!3279 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !3272)
!3280 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !3272)
!3281 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !3272)
!3282 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !3272)
!3283 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !3272)
!3284 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !3272)
!3285 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !3272)
!3286 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !3272)
!3287 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !3272)
!3288 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !3272)
!3289 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !3272)
!3290 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !3272)
!3291 = !DILocation(line: 0, scope: !487, inlinedAt: !3272)
!3292 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !3272)
!3293 = !DILocation(line: 1130, column: 19, scope: !3273)
!3294 = !DILocation(line: 1127, column: 9, scope: !3246)
!3295 = !DILocation(line: 1130, column: 66, scope: !3273)
!3296 = !DILocation(line: 1130, column: 9, scope: !3246)
!3297 = !DILocation(line: 1131, column: 5, scope: !3246)
!3298 = !DILocation(line: 1132, column: 5, scope: !3246)
!3299 = !DILocation(line: 1133, column: 1, scope: !3246)
!3300 = distinct !DISubprogram(name: "rioWriteStreamPendingEntry", scope: !3, file: !3, line: 1139, type: !3301, isLocal: false, isDefinition: true, scopeLine: 1139, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3335)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!6, !2586, !1157, !587, !589, !3303, !18, !3328}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !3251, line: 79, baseType: !3305)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !3251, line: 67, size: 192, elements: !3306)
!3306 = !{!3307, !3308, !3309}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !3305, file: !3251, line: 68, baseType: !74, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3305, file: !3251, line: 69, baseType: !470, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3305, file: !3251, line: 72, baseType: !3310, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3312, line: 137, baseType: !3313)
!3312 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3312, line: 133, size: 192, elements: !3314)
!3314 = !{!3315, !3326, !3327}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3313, file: !3312, line: 134, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3312, line: 131, baseType: !3318)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3312, line: 98, size: 32, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3323, !3324}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3318, file: !3312, line: 99, baseType: !53, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3318, file: !3312, line: 100, baseType: !53, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3318, file: !3312, line: 101, baseType: !53, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3318, file: !3312, line: 102, baseType: !53, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3318, file: !3312, line: 130, baseType: !3325, offset: 32)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !37)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3313, file: !3312, line: 135, baseType: !63, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3313, file: !3312, line: 136, baseType: !63, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !3251, line: 87, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !3251, line: 82, size: 192, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !3330, file: !3251, line: 83, baseType: !74, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !3330, file: !3251, line: 84, baseType: !63, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !3330, file: !3251, line: 85, baseType: !3303, size: 64, offset: 128)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3336 = !DILocalVariable(name: "r", arg: 1, scope: !3300, file: !3, line: 1139, type: !2586)
!3337 = !DILocalVariable(name: "key", arg: 2, scope: !3300, file: !3, line: 1139, type: !1157)
!3338 = !DILocalVariable(name: "groupname", arg: 3, scope: !3300, file: !3, line: 1139, type: !587)
!3339 = !DILocalVariable(name: "groupname_len", arg: 4, scope: !3300, file: !3, line: 1139, type: !589)
!3340 = !DILocalVariable(name: "consumer", arg: 5, scope: !3300, file: !3, line: 1139, type: !3303)
!3341 = !DILocalVariable(name: "rawid", arg: 6, scope: !3300, file: !3, line: 1139, type: !18)
!3342 = !DILocalVariable(name: "nack", arg: 7, scope: !3300, file: !3, line: 1139, type: !3328)
!3343 = !DILocalVariable(name: "id", scope: !3300, file: !3, line: 1142, type: !3250)
!3344 = !DILocation(line: 1139, column: 37, scope: !3300)
!3345 = !DILocation(line: 1139, column: 46, scope: !3300)
!3346 = !DILocation(line: 1139, column: 63, scope: !3300)
!3347 = !DILocation(line: 1139, column: 81, scope: !3300)
!3348 = !DILocation(line: 1139, column: 112, scope: !3300)
!3349 = !DILocation(line: 1139, column: 137, scope: !3300)
!3350 = !DILocation(line: 1139, column: 156, scope: !3300)
!3351 = !DILocation(line: 1142, column: 5, scope: !3300)
!3352 = !DILocation(line: 1142, column: 14, scope: !3300)
!3353 = !DILocation(line: 1143, column: 5, scope: !3300)
!3354 = !DILocation(line: 1144, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1144, column: 9)
!3356 = !DILocation(line: 1144, column: 37, scope: !3355)
!3357 = !DILocation(line: 1144, column: 9, scope: !3300)
!3358 = !DILocation(line: 1145, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1145, column: 9)
!3360 = !DILocation(line: 1145, column: 42, scope: !3359)
!3361 = !DILocation(line: 1145, column: 9, scope: !3300)
!3362 = !DILocation(line: 1146, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1146, column: 9)
!3364 = !DILocation(line: 1146, column: 35, scope: !3363)
!3365 = !DILocation(line: 1146, column: 9, scope: !3300)
!3366 = !DILocation(line: 1147, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1147, column: 9)
!3368 = !DILocation(line: 1147, column: 55, scope: !3367)
!3369 = !DILocation(line: 1147, column: 9, scope: !3300)
!3370 = !DILocation(line: 1148, column: 40, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1148, column: 9)
!3372 = !{!3373, !95, i64 8}
!3373 = !{!"streamConsumer", !97, i64 0, !95, i64 8, !95, i64 16}
!3374 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 1148, column: 45, scope: !3371)
!3376 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !3375)
!3377 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !3375)
!3378 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !3375)
!3379 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !3375)
!3380 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !3375)
!3381 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !3375)
!3382 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !3375)
!3383 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !3375)
!3384 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !3375)
!3385 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !3375)
!3386 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !3375)
!3387 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !3375)
!3388 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !3375)
!3389 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !3375)
!3390 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !3375)
!3391 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !3375)
!3392 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !3375)
!3393 = !DILocation(line: 0, scope: !487, inlinedAt: !3375)
!3394 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !3375)
!3395 = !DILocation(line: 1148, column: 9, scope: !3371)
!3396 = !DILocation(line: 1148, column: 69, scope: !3371)
!3397 = !DILocation(line: 1148, column: 9, scope: !3300)
!3398 = !DILocation(line: 1149, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1149, column: 9)
!3400 = !DILocation(line: 1149, column: 37, scope: !3399)
!3401 = !DILocation(line: 1149, column: 9, scope: !3300)
!3402 = !DILocation(line: 1150, column: 9, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1150, column: 9)
!3404 = !DILocation(line: 1150, column: 37, scope: !3403)
!3405 = !DILocation(line: 1150, column: 9, scope: !3300)
!3406 = !DILocation(line: 1151, column: 9, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1151, column: 9)
!3408 = !DILocation(line: 1151, column: 40, scope: !3407)
!3409 = !DILocation(line: 1151, column: 9, scope: !3300)
!3410 = !DILocation(line: 1152, column: 38, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1152, column: 9)
!3412 = !{!3413, !97, i64 0}
!3413 = !{!"streamNACK", !97, i64 0, !96, i64 8, !95, i64 16}
!3414 = !DILocation(line: 1152, column: 9, scope: !3411)
!3415 = !DILocation(line: 1152, column: 53, scope: !3411)
!3416 = !DILocation(line: 1152, column: 9, scope: !3300)
!3417 = !DILocation(line: 1153, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1153, column: 9)
!3419 = !DILocation(line: 1153, column: 47, scope: !3418)
!3420 = !DILocation(line: 1153, column: 9, scope: !3300)
!3421 = !DILocation(line: 1154, column: 38, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1154, column: 9)
!3423 = !{!3413, !96, i64 8}
!3424 = !DILocation(line: 1154, column: 9, scope: !3422)
!3425 = !DILocation(line: 1154, column: 54, scope: !3422)
!3426 = !DILocation(line: 1154, column: 9, scope: !3300)
!3427 = !DILocation(line: 1155, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1155, column: 9)
!3429 = !DILocation(line: 1155, column: 42, scope: !3428)
!3430 = !DILocation(line: 1155, column: 9, scope: !3300)
!3431 = !DILocation(line: 1156, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1156, column: 9)
!3433 = !DILocation(line: 1156, column: 41, scope: !3432)
!3434 = !DILocation(line: 1156, column: 47, scope: !3432)
!3435 = !DILocation(line: 0, scope: !3300)
!3436 = !DILocation(line: 1158, column: 1, scope: !3300)
!3437 = distinct !DISubprogram(name: "rewriteStreamObject", scope: !3, file: !3, line: 1162, type: !2630, isLocal: false, isDefinition: true, scopeLine: 1162, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3451, !3502, !3503, !3504, !3509, !3510, !3511, !3512, !3515, !3524, !3525, !3527, !3528}
!3439 = !DILocalVariable(name: "r", arg: 1, scope: !3437, file: !3, line: 1162, type: !2586)
!3440 = !DILocalVariable(name: "key", arg: 2, scope: !3437, file: !3, line: 1162, type: !1157)
!3441 = !DILocalVariable(name: "o", arg: 3, scope: !3437, file: !3, line: 1162, type: !1157)
!3442 = !DILocalVariable(name: "s", scope: !3437, file: !3, line: 1163, type: !3443)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !3251, line: 21, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !3251, line: 16, size: 320, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !3445, file: !3251, line: 17, baseType: !3310, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3445, file: !3251, line: 18, baseType: !63, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3445, file: !3251, line: 19, baseType: !3250, size: 128, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3445, file: !3251, line: 20, baseType: !3310, size: 64, offset: 256)
!3451 = !DILocalVariable(name: "si", scope: !3437, file: !3, line: 1164, type: !3452)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !3251, line: 48, baseType: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !3251, line: 29, size: 5120, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3464, !3465, !3494, !3495, !3496, !3497, !3501}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3453, file: !3251, line: 30, baseType: !3443, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !3453, file: !3251, line: 31, baseType: !3250, size: 128, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !3453, file: !3251, line: 32, baseType: !63, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !3453, file: !3251, line: 33, baseType: !18, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !3453, file: !3251, line: 34, baseType: !18, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !3453, file: !3251, line: 35, baseType: !6, size: 32, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3453, file: !3251, line: 36, baseType: !6, size: 32, offset: 416)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !3453, file: !3251, line: 37, baseType: !3463, size: 128, offset: 448)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1353)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !3453, file: !3251, line: 38, baseType: !3463, size: 128, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !3453, file: !3251, line: 39, baseType: !3466, size: 3840, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3312, line: 186, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3312, line: 175, size: 3840, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3477, !3478, !3488}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3467, file: !3312, line: 176, baseType: !6, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3467, file: !3312, line: 177, baseType: !3310, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3467, file: !3312, line: 178, baseType: !18, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3467, file: !3312, line: 179, baseType: !10, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3467, file: !3312, line: 180, baseType: !589, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3467, file: !3312, line: 181, baseType: !589, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3467, file: !3312, line: 182, baseType: !3476, size: 1024, offset: 384)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !2128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3467, file: !3312, line: 183, baseType: !3316, size: 64, offset: 1408)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3467, file: !3312, line: 184, baseType: !3479, size: 2304, offset: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3312, line: 150, baseType: !3480)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3312, line: 143, size: 2304, elements: !3481)
!3481 = !{!3482, !3484, !3485, !3486, !3487}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3480, file: !3312, line: 144, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3480, file: !3312, line: 145, baseType: !589, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3480, file: !3312, line: 145, baseType: !589, size: 64, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3480, file: !3312, line: 148, baseType: !1976, size: 2048, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3480, file: !3312, line: 149, baseType: !6, size: 32, offset: 2240)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3467, file: !3312, line: 185, baseType: !3489, size: 64, offset: 3776)
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3312, line: 165, baseType: !3490)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!6, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !3453, file: !3251, line: 40, baseType: !18, size: 64, offset: 4544)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !3453, file: !3251, line: 41, baseType: !18, size: 64, offset: 4608)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !3453, file: !3251, line: 42, baseType: !18, size: 64, offset: 4672)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !3453, file: !3251, line: 46, baseType: !3498, size: 168, offset: 4736)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !3499)
!3499 = !{!3500}
!3500 = !DISubrange(count: 21)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !3453, file: !3251, line: 47, baseType: !3498, size: 168, offset: 4904)
!3502 = !DILocalVariable(name: "id", scope: !3437, file: !3, line: 1166, type: !3250)
!3503 = !DILocalVariable(name: "numfields", scope: !3437, file: !3, line: 1167, type: !1345)
!3504 = !DILocalVariable(name: "field", scope: !3505, file: !3, line: 1181, type: !18)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1180, column: 32)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1171, column: 56)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1169, column: 20)
!3508 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1169, column: 9)
!3509 = !DILocalVariable(name: "value", scope: !3505, file: !3, line: 1181, type: !18)
!3510 = !DILocalVariable(name: "field_len", scope: !3505, file: !3, line: 1182, type: !1345)
!3511 = !DILocalVariable(name: "value_len", scope: !3505, file: !3, line: 1182, type: !1345)
!3512 = !DILocalVariable(name: "ri", scope: !3513, file: !3, line: 1212, type: !3466)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 1211, column: 21)
!3514 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1211, column: 9)
!3515 = !DILocalVariable(name: "group", scope: !3516, file: !3, line: 1216, type: !3517)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 1215, column: 29)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !3251, line: 64, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !3251, line: 51, size: 256, elements: !3520)
!3520 = !{!3521, !3522, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3519, file: !3251, line: 52, baseType: !3250, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3519, file: !3251, line: 55, baseType: !3310, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3519, file: !3251, line: 61, baseType: !3310, size: 64, offset: 192)
!3524 = !DILocalVariable(name: "ri_cons", scope: !3516, file: !3, line: 1228, type: !3466)
!3525 = !DILocalVariable(name: "consumer", scope: !3526, file: !3, line: 1232, type: !3303)
!3526 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1231, column: 38)
!3527 = !DILocalVariable(name: "ri_pel", scope: !3526, file: !3, line: 1235, type: !3466)
!3528 = !DILocalVariable(name: "nack", scope: !3529, file: !3, line: 1239, type: !3328)
!3529 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 1238, column: 41)
!3530 = !DILocation(line: 1162, column: 30, scope: !3437)
!3531 = !DILocation(line: 1162, column: 39, scope: !3437)
!3532 = !DILocation(line: 1162, column: 50, scope: !3437)
!3533 = !DILocation(line: 1163, column: 20, scope: !3437)
!3534 = !DILocation(line: 1163, column: 13, scope: !3437)
!3535 = !DILocation(line: 1164, column: 5, scope: !3437)
!3536 = !DILocation(line: 1164, column: 20, scope: !3437)
!3537 = !DILocation(line: 1165, column: 5, scope: !3437)
!3538 = !DILocation(line: 1166, column: 5, scope: !3437)
!3539 = !DILocation(line: 1167, column: 5, scope: !3437)
!3540 = !DILocation(line: 1169, column: 12, scope: !3508)
!3541 = !{!3542, !96, i64 8}
!3542 = !{!"stream", !95, i64 0, !96, i64 8, !3266, i64 16, !95, i64 32}
!3543 = !DILocation(line: 1169, column: 9, scope: !3508)
!3544 = !DILocation(line: 1169, column: 9, scope: !3437)
!3545 = !DILocation(line: 1166, column: 14, scope: !3437)
!3546 = !DILocation(line: 1167, column: 13, scope: !3437)
!3547 = !DILocation(line: 1171, column: 15, scope: !3507)
!3548 = !DILocation(line: 1171, column: 9, scope: !3507)
!3549 = !DILocation(line: 1176, column: 43, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1176, column: 17)
!3551 = !DILocation(line: 1176, column: 52, scope: !3550)
!3552 = !DILocation(line: 1176, column: 42, scope: !3550)
!3553 = !DILocation(line: 1176, column: 17, scope: !3550)
!3554 = !DILocation(line: 1176, column: 56, scope: !3550)
!3555 = !DILocation(line: 1176, column: 17, scope: !3506)
!3556 = !DILocation(line: 1177, column: 17, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1177, column: 17)
!3558 = !DILocation(line: 1177, column: 48, scope: !3557)
!3559 = !DILocation(line: 1177, column: 17, scope: !3506)
!3560 = !DILocation(line: 1178, column: 17, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1178, column: 17)
!3562 = !DILocation(line: 1178, column: 43, scope: !3561)
!3563 = !DILocation(line: 1178, column: 17, scope: !3506)
!3564 = !DILocation(line: 1179, column: 17, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1179, column: 17)
!3566 = !DILocation(line: 1179, column: 45, scope: !3565)
!3567 = !DILocation(line: 1179, column: 17, scope: !3506)
!3568 = !DILocation(line: 1180, column: 28, scope: !3506)
!3569 = !DILocation(line: 1180, column: 13, scope: !3506)
!3570 = distinct !{!3570, !3548, !3571}
!3571 = !DILocation(line: 1187, column: 9, scope: !3507)
!3572 = !DILocation(line: 1181, column: 17, scope: !3505)
!3573 = !DILocation(line: 1182, column: 17, scope: !3505)
!3574 = !DILocation(line: 1181, column: 32, scope: !3505)
!3575 = !DILocation(line: 1181, column: 40, scope: !3505)
!3576 = !DILocation(line: 1182, column: 25, scope: !3505)
!3577 = !DILocation(line: 1182, column: 36, scope: !3505)
!3578 = !DILocation(line: 1183, column: 17, scope: !3505)
!3579 = !DILocation(line: 1184, column: 49, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1184, column: 21)
!3581 = !DILocation(line: 1184, column: 55, scope: !3580)
!3582 = !DILocation(line: 1184, column: 21, scope: !3580)
!3583 = !DILocation(line: 1184, column: 66, scope: !3580)
!3584 = !DILocation(line: 1184, column: 21, scope: !3505)
!3585 = !DILocation(line: 1185, column: 49, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1185, column: 21)
!3587 = !DILocation(line: 1185, column: 55, scope: !3586)
!3588 = !DILocation(line: 1185, column: 21, scope: !3586)
!3589 = !DILocation(line: 1185, column: 66, scope: !3586)
!3590 = !DILocation(line: 1186, column: 13, scope: !3506)
!3591 = distinct !{!3591, !3569, !3590}
!3592 = !DILocation(line: 1192, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1192, column: 13)
!3594 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1188, column: 12)
!3595 = !DILocation(line: 1192, column: 40, scope: !3593)
!3596 = !DILocation(line: 1192, column: 13, scope: !3594)
!3597 = !DILocation(line: 1193, column: 13, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1193, column: 13)
!3599 = !DILocation(line: 1193, column: 44, scope: !3598)
!3600 = !DILocation(line: 1193, column: 13, scope: !3594)
!3601 = !DILocation(line: 1194, column: 13, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1194, column: 13)
!3603 = !DILocation(line: 1194, column: 39, scope: !3602)
!3604 = !DILocation(line: 1194, column: 13, scope: !3594)
!3605 = !DILocation(line: 1195, column: 13, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1195, column: 13)
!3607 = !DILocation(line: 1195, column: 46, scope: !3606)
!3608 = !DILocation(line: 1195, column: 13, scope: !3594)
!3609 = !DILocation(line: 1196, column: 13, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1196, column: 13)
!3611 = !DILocation(line: 1196, column: 41, scope: !3610)
!3612 = !DILocation(line: 1196, column: 13, scope: !3594)
!3613 = !DILocation(line: 1197, column: 40, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1197, column: 13)
!3615 = !DILocation(line: 1197, column: 13, scope: !3614)
!3616 = !DILocation(line: 1197, column: 49, scope: !3614)
!3617 = !DILocation(line: 1197, column: 13, scope: !3594)
!3618 = !DILocation(line: 1198, column: 13, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1198, column: 13)
!3620 = !DILocation(line: 1198, column: 41, scope: !3619)
!3621 = !DILocation(line: 1198, column: 13, scope: !3594)
!3622 = !DILocation(line: 1199, column: 13, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1199, column: 13)
!3624 = !DILocation(line: 1199, column: 41, scope: !3623)
!3625 = !DILocation(line: 1199, column: 13, scope: !3594)
!3626 = !DILocation(line: 1204, column: 9, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1204, column: 9)
!3628 = !DILocation(line: 1204, column: 36, scope: !3627)
!3629 = !DILocation(line: 1204, column: 9, scope: !3437)
!3630 = !DILocation(line: 1205, column: 9, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1205, column: 9)
!3632 = !DILocation(line: 1205, column: 42, scope: !3631)
!3633 = !DILocation(line: 1205, column: 9, scope: !3437)
!3634 = !DILocation(line: 1206, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1206, column: 9)
!3636 = !DILocation(line: 1206, column: 35, scope: !3635)
!3637 = !DILocation(line: 1206, column: 9, scope: !3437)
!3638 = !DILocation(line: 1207, column: 36, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 1207, column: 9)
!3640 = !DILocation(line: 1207, column: 9, scope: !3639)
!3641 = !DILocation(line: 1207, column: 45, scope: !3639)
!3642 = !DILocation(line: 1207, column: 9, scope: !3437)
!3643 = !DILocation(line: 1211, column: 12, scope: !3514)
!3644 = !{!3542, !95, i64 32}
!3645 = !DILocation(line: 1211, column: 9, scope: !3514)
!3646 = !DILocation(line: 1211, column: 9, scope: !3437)
!3647 = !DILocation(line: 1212, column: 9, scope: !3513)
!3648 = !DILocation(line: 1212, column: 21, scope: !3513)
!3649 = !DILocation(line: 1213, column: 9, scope: !3513)
!3650 = !DILocation(line: 1214, column: 9, scope: !3513)
!3651 = !DILocation(line: 1215, column: 15, scope: !3513)
!3652 = !DILocation(line: 1215, column: 9, scope: !3513)
!3653 = !DILocation(line: 1216, column: 34, scope: !3516)
!3654 = !{!3655, !95, i64 24}
!3655 = !{!"raxIterator", !92, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !96, i64 32, !96, i64 40, !93, i64 48, !95, i64 176, !3656, i64 184, !95, i64 472}
!3656 = !{!"raxStack", !95, i64 0, !96, i64 8, !96, i64 16, !93, i64 24, !92, i64 280}
!3657 = !DILocation(line: 1216, column: 23, scope: !3516)
!3658 = !DILocation(line: 1218, column: 17, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1218, column: 17)
!3660 = !DILocation(line: 1218, column: 44, scope: !3659)
!3661 = !DILocation(line: 1218, column: 17, scope: !3516)
!3662 = !DILocation(line: 1219, column: 17, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1219, column: 17)
!3664 = !DILocation(line: 1219, column: 50, scope: !3663)
!3665 = !DILocation(line: 1219, column: 17, scope: !3516)
!3666 = !DILocation(line: 1220, column: 17, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1220, column: 17)
!3668 = !DILocation(line: 1220, column: 50, scope: !3667)
!3669 = !DILocation(line: 1220, column: 17, scope: !3516)
!3670 = !DILocation(line: 1221, column: 17, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1221, column: 17)
!3672 = !DILocation(line: 1221, column: 43, scope: !3671)
!3673 = !DILocation(line: 1221, column: 17, scope: !3516)
!3674 = !DILocation(line: 1222, column: 48, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1222, column: 17)
!3676 = !{!3655, !95, i64 16}
!3677 = !DILocation(line: 1222, column: 55, scope: !3675)
!3678 = !{!3655, !96, i64 32}
!3679 = !DILocation(line: 1222, column: 17, scope: !3675)
!3680 = !DILocation(line: 1222, column: 64, scope: !3675)
!3681 = !DILocation(line: 1222, column: 17, scope: !3516)
!3682 = !DILocation(line: 1223, column: 48, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1223, column: 17)
!3684 = !DILocation(line: 1223, column: 17, scope: !3683)
!3685 = !DILocation(line: 1223, column: 57, scope: !3683)
!3686 = !DILocation(line: 1223, column: 17, scope: !3516)
!3687 = !DILocation(line: 1228, column: 13, scope: !3516)
!3688 = !DILocation(line: 1229, column: 38, scope: !3516)
!3689 = !{!3690, !95, i64 24}
!3690 = !{!"streamCG", !3266, i64 0, !95, i64 16, !95, i64 24}
!3691 = !DILocation(line: 1228, column: 25, scope: !3516)
!3692 = !DILocation(line: 1229, column: 13, scope: !3516)
!3693 = !DILocation(line: 1230, column: 13, scope: !3516)
!3694 = !DILocation(line: 1231, column: 19, scope: !3516)
!3695 = !DILocation(line: 1231, column: 13, scope: !3516)
!3696 = !DILocation(line: 1232, column: 52, scope: !3526)
!3697 = !DILocation(line: 1232, column: 33, scope: !3526)
!3698 = !DILocation(line: 1235, column: 17, scope: !3526)
!3699 = !DILocation(line: 1236, column: 44, scope: !3526)
!3700 = !{!3373, !95, i64 16}
!3701 = !DILocation(line: 1235, column: 29, scope: !3526)
!3702 = !DILocation(line: 1236, column: 17, scope: !3526)
!3703 = !DILocation(line: 1237, column: 17, scope: !3526)
!3704 = !DILocation(line: 1238, column: 17, scope: !3526)
!3705 = !DILocation(line: 1238, column: 23, scope: !3526)
!3706 = !DILocation(line: 1239, column: 47, scope: !3529)
!3707 = !DILocation(line: 1239, column: 33, scope: !3529)
!3708 = !DILocation(line: 1240, column: 68, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 1240, column: 25)
!3710 = !DILocation(line: 1241, column: 55, scope: !3709)
!3711 = !DILocation(line: 1242, column: 59, scope: !3709)
!3712 = !DILocation(line: 1240, column: 25, scope: !3709)
!3713 = !DILocation(line: 1242, column: 69, scope: !3709)
!3714 = distinct !{!3714, !3704, !3715}
!3715 = !DILocation(line: 1246, column: 17, scope: !3526)
!3716 = !DILocation(line: 1248, column: 13, scope: !3516)
!3717 = !DILocation(line: 1250, column: 9, scope: !3513)
!3718 = !DILocation(line: 1247, column: 17, scope: !3526)
!3719 = !DILocation(line: 1249, column: 13, scope: !3516)
!3720 = !DILocation(line: 1252, column: 5, scope: !3514)
!3721 = !DILocation(line: 1251, column: 9, scope: !3513)
!3722 = !DILocation(line: 1254, column: 5, scope: !3437)
!3723 = !DILocation(line: 1255, column: 5, scope: !3437)
!3724 = !DILocation(line: 0, scope: !3623)
!3725 = !DILocation(line: 1256, column: 1, scope: !3437)
!3726 = distinct !DISubprogram(name: "rewriteModuleObject", scope: !3, file: !3, line: 1261, type: !2630, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3804, !3811}
!3728 = !DILocalVariable(name: "r", arg: 1, scope: !3726, file: !3, line: 1261, type: !2586)
!3729 = !DILocalVariable(name: "key", arg: 2, scope: !3726, file: !3, line: 1261, type: !1157)
!3730 = !DILocalVariable(name: "o", arg: 3, scope: !3726, file: !3, line: 1261, type: !1157)
!3731 = !DILocalVariable(name: "io", scope: !3726, file: !3, line: 1262, type: !3732)
!3732 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleIO", file: !75, line: 564, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !75, line: 555, size: 384, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3798, !3799, !3800, !3803}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3733, file: !75, line: 556, baseType: !589, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !3733, file: !75, line: 557, baseType: !2586, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3733, file: !75, line: 558, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !75, line: 530, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !75, line: 517, size: 768, elements: !3741)
!3741 = !{!3742, !3743, !3746, !3752, !3757, !3763, !3768, !3781, !3783, !3788, !3793, !3794}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3740, file: !75, line: 518, baseType: !63, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3740, file: !75, line: 519, baseType: !3744, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !75, line: 496, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !3740, file: !75, line: 520, baseType: !3747, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !75, line: 506, baseType: !3748)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!10, !3751, !6}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !3740, file: !75, line: 521, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !75, line: 507, baseType: !3754)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{null, !3751, !10}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !3740, file: !75, line: 522, baseType: !3758, size: 64, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !75, line: 510, baseType: !3759)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3751, !3762, !10}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !3740, file: !75, line: 523, baseType: !3764, size: 64, offset: 320)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !75, line: 512, baseType: !3765)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!589, !1310}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !3740, file: !75, line: 524, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !75, line: 511, baseType: !3770)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3773, !10}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !75, line: 583, size: 320, elements: !3775)
!3775 = !{!3776, !3780}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !3774, file: !75, line: 584, baseType: !3777, size: 160)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !3778)
!3778 = !{!3779}
!3779 = !DISubrange(count: 20)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3774, file: !75, line: 585, baseType: !3777, size: 160, offset: 160)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3740, file: !75, line: 525, baseType: !3782, size: 64, offset: 448)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !75, line: 513, baseType: !1375)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !3740, file: !75, line: 526, baseType: !3784, size: 64, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !75, line: 508, baseType: !3785)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!6, !3751, !6, !6}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !3740, file: !75, line: 527, baseType: !3789, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !75, line: 509, baseType: !3790)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3751, !6}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !3740, file: !75, line: 528, baseType: !6, size: 32, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3740, file: !75, line: 529, baseType: !3795, size: 80, offset: 672)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !3796)
!3796 = !{!3797}
!3797 = !DISubrange(count: 10)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3733, file: !75, line: 559, baseType: !6, size: 32, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !3733, file: !75, line: 560, baseType: !6, size: 32, offset: 224)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3733, file: !75, line: 562, baseType: !3801, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !75, line: 499, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3733, file: !75, line: 563, baseType: !3762, size: 64, offset: 320)
!3804 = !DILocalVariable(name: "mv", scope: !3726, file: !3, line: 1263, type: !3805)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !75, line: 550, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !75, line: 547, size: 128, elements: !3808)
!3808 = !{!3809, !3810}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3807, file: !75, line: 548, baseType: !3738, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3807, file: !75, line: 549, baseType: !10, size: 64, offset: 64)
!3811 = !DILocalVariable(name: "mt", scope: !3726, file: !3, line: 1264, type: !3738)
!3812 = !DILocation(line: 1261, column: 30, scope: !3726)
!3813 = !DILocation(line: 1261, column: 39, scope: !3726)
!3814 = !DILocation(line: 1261, column: 50, scope: !3726)
!3815 = !DILocation(line: 1262, column: 5, scope: !3726)
!3816 = !DILocation(line: 1263, column: 26, scope: !3726)
!3817 = !DILocation(line: 1263, column: 18, scope: !3726)
!3818 = !DILocation(line: 1264, column: 26, scope: !3726)
!3819 = !{!3820, !95, i64 0}
!3820 = !{!"moduleValue", !95, i64 0, !95, i64 8}
!3821 = !DILocation(line: 1264, column: 17, scope: !3726)
!3822 = !DILocation(line: 1265, column: 5, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 1265, column: 5)
!3824 = !{!3825, !95, i64 8}
!3825 = !{!"RedisModuleIO", !96, i64 0, !95, i64 8, !95, i64 16, !92, i64 24, !92, i64 28, !95, i64 32, !95, i64 40}
!3826 = !{!3825, !95, i64 16}
!3827 = !{!3825, !96, i64 0}
!3828 = !{!3825, !92, i64 24}
!3829 = !{!3825, !92, i64 28}
!3830 = !{!3825, !95, i64 40}
!3831 = !{!3825, !95, i64 32}
!3832 = !DILocation(line: 1266, column: 9, scope: !3726)
!3833 = !{!3834, !95, i64 32}
!3834 = !{!"RedisModuleType", !96, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !92, i64 80, !93, i64 84}
!3835 = !DILocation(line: 1266, column: 33, scope: !3726)
!3836 = !{!3820, !95, i64 8}
!3837 = !DILocation(line: 1262, column: 19, scope: !3726)
!3838 = !DILocation(line: 1266, column: 5, scope: !3726)
!3839 = !DILocation(line: 1267, column: 12, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 1267, column: 9)
!3841 = !DILocation(line: 1267, column: 9, scope: !3840)
!3842 = !DILocation(line: 1267, column: 9, scope: !3726)
!3843 = !DILocation(line: 1268, column: 9, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 1267, column: 17)
!3845 = !DILocation(line: 1269, column: 18, scope: !3844)
!3846 = !DILocation(line: 1269, column: 9, scope: !3844)
!3847 = !DILocation(line: 1270, column: 5, scope: !3844)
!3848 = !DILocation(line: 1271, column: 15, scope: !3726)
!3849 = !DILocation(line: 1271, column: 12, scope: !3726)
!3850 = !DILocation(line: 1272, column: 1, scope: !3726)
!3851 = !DILocation(line: 1271, column: 5, scope: !3726)
!3852 = distinct !DISubprogram(name: "aofReadDiffFromParent", scope: !3, file: !3, line: 1277, type: !3853, isLocal: false, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!11}
!3855 = !{!3856, !3860, !3861}
!3856 = !DILocalVariable(name: "buf", scope: !3852, file: !3, line: 1278, type: !3857)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 524288, elements: !3858)
!3858 = !{!3859}
!3859 = !DISubrange(count: 65536)
!3860 = !DILocalVariable(name: "nread", scope: !3852, file: !3, line: 1279, type: !11)
!3861 = !DILocalVariable(name: "total", scope: !3852, file: !3, line: 1279, type: !11)
!3862 = !DILocation(line: 1278, column: 5, scope: !3852)
!3863 = !DILocation(line: 1278, column: 10, scope: !3852)
!3864 = !DILocation(line: 1279, column: 20, scope: !3852)
!3865 = !DILocation(line: 1282, column: 25, scope: !3852)
!3866 = !DILocation(line: 1282, column: 13, scope: !3852)
!3867 = !DILocation(line: 1279, column: 13, scope: !3852)
!3868 = !DILocation(line: 1282, column: 74, scope: !3852)
!3869 = !DILocation(line: 1281, column: 5, scope: !3852)
!3870 = !DILocation(line: 1283, column: 50, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 1282, column: 79)
!3872 = !{!91, !95, i64 2072}
!3873 = !DILocation(line: 1283, column: 33, scope: !3871)
!3874 = !DILocation(line: 1283, column: 31, scope: !3871)
!3875 = !DILocation(line: 1284, column: 15, scope: !3871)
!3876 = distinct !{!3876, !3869, !3877}
!3877 = !DILocation(line: 1285, column: 5, scope: !3852)
!3878 = !DILocation(line: 0, scope: !3871)
!3879 = !DILocation(line: 1287, column: 1, scope: !3852)
!3880 = !DILocation(line: 1286, column: 5, scope: !3852)
!3881 = distinct !DISubprogram(name: "rewriteAppendOnlyFileRio", scope: !3, file: !3, line: 1289, type: !3882, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!6, !2586}
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3897, !3898, !3899, !3901, !3902, !3903, !3904, !3910}
!3885 = !DILocalVariable(name: "aof", arg: 1, scope: !3881, file: !3, line: 1289, type: !2586)
!3886 = !DILocalVariable(name: "di", scope: !3881, file: !3, line: 1290, type: !2777)
!3887 = !DILocalVariable(name: "de", scope: !3881, file: !3, line: 1291, type: !1334)
!3888 = !DILocalVariable(name: "processed", scope: !3881, file: !3, line: 1292, type: !589)
!3889 = !DILocalVariable(name: "j", scope: !3881, file: !3, line: 1293, type: !6)
!3890 = !DILocalVariable(name: "selectcmd", scope: !3891, file: !3, line: 1296, type: !3894)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 1295, column: 40)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 1295, column: 5)
!3893 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1295, column: 5)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 136, elements: !3895)
!3895 = !{!3896}
!3896 = !DISubrange(count: 17)
!3897 = !DILocalVariable(name: "db", scope: !3891, file: !3, line: 1297, type: !1291)
!3898 = !DILocalVariable(name: "d", scope: !3891, file: !3, line: 1298, type: !1296)
!3899 = !DILocalVariable(name: "keystr", scope: !3900, file: !3, line: 1308, type: !470)
!3900 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1307, column: 44)
!3901 = !DILocalVariable(name: "key", scope: !3900, file: !3, line: 1309, type: !1158)
!3902 = !DILocalVariable(name: "o", scope: !3900, file: !3, line: 1309, type: !1157)
!3903 = !DILocalVariable(name: "expiretime", scope: !3900, file: !3, line: 1310, type: !16)
!3904 = !DILocalVariable(name: "cmd", scope: !3905, file: !3, line: 1321, type: !3907)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1319, column: 40)
!3906 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1319, column: 17)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !3908)
!3908 = !{!3909}
!3909 = !DISubrange(count: 14)
!3910 = !DILocalVariable(name: "cmd", scope: !3911, file: !3, line: 1343, type: !3913)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1342, column: 35)
!3912 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1342, column: 17)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !3778)
!3914 = !DILocation(line: 1278, column: 10, scope: !3852, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 1351, column: 17, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 1349, column: 80)
!3917 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1349, column: 17)
!3918 = !DILocation(line: 1289, column: 35, scope: !3881)
!3919 = !DILocation(line: 1290, column: 19, scope: !3881)
!3920 = !DILocation(line: 1292, column: 12, scope: !3881)
!3921 = !DILocation(line: 1293, column: 9, scope: !3881)
!3922 = !DILocation(line: 1295, column: 28, scope: !3892)
!3923 = !{!91, !92, i64 1792}
!3924 = !DILocation(line: 1295, column: 19, scope: !3892)
!3925 = !DILocation(line: 1295, column: 5, scope: !3893)
!3926 = !DILocation(line: 1296, column: 9, scope: !3891)
!3927 = !DILocation(line: 1296, column: 14, scope: !3891)
!3928 = !DILocation(line: 1297, column: 30, scope: !3891)
!3929 = !{!91, !95, i64 48}
!3930 = !DILocation(line: 1297, column: 32, scope: !3891)
!3931 = !DILocation(line: 1297, column: 18, scope: !3891)
!3932 = !DILocation(line: 1298, column: 23, scope: !3891)
!3933 = !{!3934, !95, i64 0}
!3934 = !{!"redisDb", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !92, i64 40, !97, i64 48, !95, i64 56}
!3935 = !DILocation(line: 1298, column: 15, scope: !3891)
!3936 = !DILocation(line: 1299, column: 13, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1299, column: 13)
!3938 = !{!3939, !96, i64 24}
!3939 = !{!"dictht", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!3940 = !DILocation(line: 1299, column: 25, scope: !3937)
!3941 = !DILocation(line: 1299, column: 13, scope: !3891)
!3942 = !DILocation(line: 1300, column: 14, scope: !3891)
!3943 = !DILocalVariable(name: "r", arg: 1, scope: !3944, file: !2072, line: 93, type: !2586)
!3944 = distinct !DISubprogram(name: "rioWrite", scope: !2072, file: !2072, line: 93, type: !3945, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!467, !2586, !1310, !467}
!3947 = !{!3943, !3948, !3949, !3950}
!3948 = !DILocalVariable(name: "buf", arg: 2, scope: !3944, file: !2072, line: 93, type: !1310)
!3949 = !DILocalVariable(name: "len", arg: 3, scope: !3944, file: !2072, line: 93, type: !467)
!3950 = !DILocalVariable(name: "bytes_to_write", scope: !3951, file: !2072, line: 95, type: !467)
!3951 = distinct !DILexicalBlock(scope: !3944, file: !2072, line: 94, column: 17)
!3952 = !DILocation(line: 93, column: 36, scope: !3944, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 1303, column: 13, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1303, column: 13)
!3955 = !DILocation(line: 93, column: 51, scope: !3944, inlinedAt: !3953)
!3956 = !DILocation(line: 93, column: 63, scope: !3944, inlinedAt: !3953)
!3957 = !DILocation(line: 94, column: 5, scope: !3944, inlinedAt: !3953)
!3958 = !DILocation(line: 95, column: 37, scope: !3951, inlinedAt: !3953)
!3959 = !{!3960, !96, i64 56}
!3960 = !{!"_rio", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !93, i64 64}
!3961 = !DILocation(line: 95, column: 34, scope: !3951, inlinedAt: !3953)
!3962 = !DILocation(line: 95, column: 85, scope: !3951, inlinedAt: !3953)
!3963 = !DILocation(line: 95, column: 58, scope: !3951, inlinedAt: !3953)
!3964 = !DILocation(line: 95, column: 16, scope: !3951, inlinedAt: !3953)
!3965 = !DILocation(line: 96, column: 16, scope: !3966, inlinedAt: !3953)
!3966 = distinct !DILexicalBlock(scope: !3951, file: !2072, line: 96, column: 13)
!3967 = !{!3960, !95, i64 32}
!3968 = !DILocation(line: 96, column: 13, scope: !3966, inlinedAt: !3953)
!3969 = !DILocation(line: 96, column: 13, scope: !3951, inlinedAt: !3953)
!3970 = !DILocation(line: 96, column: 30, scope: !3966, inlinedAt: !3953)
!3971 = !DILocation(line: 97, column: 16, scope: !3972, inlinedAt: !3953)
!3972 = distinct !DILexicalBlock(scope: !3951, file: !2072, line: 97, column: 13)
!3973 = !{!3960, !95, i64 8}
!3974 = !DILocation(line: 97, column: 13, scope: !3972, inlinedAt: !3953)
!3975 = !DILocation(line: 97, column: 44, scope: !3972, inlinedAt: !3953)
!3976 = !DILocation(line: 97, column: 13, scope: !3951, inlinedAt: !3953)
!3977 = !DILocation(line: 104, column: 1, scope: !3944, inlinedAt: !3953)
!3978 = !DILocation(line: 1303, column: 13, scope: !3891)
!3979 = !DILocation(line: 99, column: 26, scope: !3951, inlinedAt: !3953)
!3980 = !DILocation(line: 100, column: 13, scope: !3951, inlinedAt: !3953)
!3981 = !DILocation(line: 101, column: 28, scope: !3951, inlinedAt: !3953)
!3982 = !{!3960, !96, i64 48}
!3983 = !DILocation(line: 1304, column: 13, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1304, column: 13)
!3985 = !DILocation(line: 1304, column: 41, scope: !3984)
!3986 = !DILocation(line: 1304, column: 13, scope: !3891)
!3987 = !DILocation(line: 1307, column: 21, scope: !3891)
!3988 = !DILocation(line: 1291, column: 16, scope: !3881)
!3989 = !DILocation(line: 1307, column: 35, scope: !3891)
!3990 = !DILocation(line: 1307, column: 9, scope: !3891)
!3991 = !DILocation(line: 1309, column: 13, scope: !3900)
!3992 = !DILocation(line: 1312, column: 22, scope: !3900)
!3993 = !DILocation(line: 1308, column: 17, scope: !3900)
!3994 = !DILocation(line: 1313, column: 17, scope: !3900)
!3995 = !DILocation(line: 1309, column: 24, scope: !3900)
!3996 = !DILocation(line: 1314, column: 13, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1314, column: 13)
!3998 = !{!1209, !92, i64 4}
!3999 = !DILocation(line: 1309, column: 18, scope: !3900)
!4000 = !DILocation(line: 1316, column: 26, scope: !3900)
!4001 = !DILocation(line: 1310, column: 23, scope: !3900)
!4002 = !DILocation(line: 1319, column: 20, scope: !3906)
!4003 = !DILocation(line: 1319, column: 17, scope: !3900)
!4004 = !DILocation(line: 1321, column: 17, scope: !3905)
!4005 = !DILocation(line: 1321, column: 22, scope: !3905)
!4006 = !DILocation(line: 93, column: 36, scope: !3944, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 1322, column: 21, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1322, column: 21)
!4009 = !DILocation(line: 93, column: 51, scope: !3944, inlinedAt: !4007)
!4010 = !DILocation(line: 93, column: 63, scope: !3944, inlinedAt: !4007)
!4011 = !DILocation(line: 94, column: 5, scope: !3944, inlinedAt: !4007)
!4012 = !DILocation(line: 95, column: 37, scope: !3951, inlinedAt: !4007)
!4013 = !DILocation(line: 95, column: 34, scope: !3951, inlinedAt: !4007)
!4014 = !DILocation(line: 95, column: 85, scope: !3951, inlinedAt: !4007)
!4015 = !DILocation(line: 95, column: 58, scope: !3951, inlinedAt: !4007)
!4016 = !DILocation(line: 95, column: 16, scope: !3951, inlinedAt: !4007)
!4017 = !DILocation(line: 96, column: 16, scope: !3966, inlinedAt: !4007)
!4018 = !DILocation(line: 96, column: 13, scope: !3966, inlinedAt: !4007)
!4019 = !DILocation(line: 96, column: 13, scope: !3951, inlinedAt: !4007)
!4020 = !DILocation(line: 96, column: 30, scope: !3966, inlinedAt: !4007)
!4021 = !DILocation(line: 97, column: 16, scope: !3972, inlinedAt: !4007)
!4022 = !DILocation(line: 97, column: 13, scope: !3972, inlinedAt: !4007)
!4023 = !DILocation(line: 97, column: 44, scope: !3972, inlinedAt: !4007)
!4024 = !DILocation(line: 97, column: 13, scope: !3951, inlinedAt: !4007)
!4025 = !DILocation(line: 104, column: 1, scope: !3944, inlinedAt: !4007)
!4026 = !DILocation(line: 1322, column: 21, scope: !3905)
!4027 = !DILocation(line: 99, column: 26, scope: !3951, inlinedAt: !4007)
!4028 = !DILocation(line: 100, column: 13, scope: !3951, inlinedAt: !4007)
!4029 = !DILocation(line: 101, column: 28, scope: !3951, inlinedAt: !4007)
!4030 = !DILocation(line: 1324, column: 21, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1324, column: 21)
!4032 = !DILocation(line: 1324, column: 50, scope: !4031)
!4033 = !DILocation(line: 1324, column: 21, scope: !3905)
!4034 = !DILocation(line: 1325, column: 21, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3905, file: !3, line: 1325, column: 21)
!4036 = !DILocation(line: 1325, column: 47, scope: !4035)
!4037 = !DILocation(line: 1326, column: 13, scope: !3906)
!4038 = !DILocation(line: 1327, column: 21, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1327, column: 21)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1326, column: 45)
!4041 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1326, column: 24)
!4042 = !DILocation(line: 1327, column: 51, scope: !4039)
!4043 = !DILocation(line: 1327, column: 21, scope: !4040)
!4044 = !DILocation(line: 1329, column: 21, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 1329, column: 21)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 1328, column: 44)
!4047 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1328, column: 24)
!4048 = !DILocation(line: 1329, column: 50, scope: !4045)
!4049 = !DILocation(line: 1329, column: 21, scope: !4046)
!4050 = !DILocation(line: 1331, column: 21, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 1331, column: 21)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1330, column: 45)
!4053 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 1330, column: 24)
!4054 = !DILocation(line: 1331, column: 56, scope: !4051)
!4055 = !DILocation(line: 1331, column: 21, scope: !4052)
!4056 = !DILocation(line: 1333, column: 21, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 1333, column: 21)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1332, column: 45)
!4059 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1332, column: 24)
!4060 = !DILocation(line: 1333, column: 51, scope: !4057)
!4061 = !DILocation(line: 1333, column: 21, scope: !4058)
!4062 = !DILocation(line: 1335, column: 21, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 1335, column: 21)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 1334, column: 47)
!4065 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1334, column: 24)
!4066 = !DILocation(line: 1335, column: 53, scope: !4063)
!4067 = !DILocation(line: 1335, column: 21, scope: !4064)
!4068 = !DILocation(line: 1261, column: 30, scope: !3726, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1337, column: 21, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !3, line: 1337, column: 21)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1336, column: 47)
!4072 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 1336, column: 24)
!4073 = !DILocation(line: 1261, column: 39, scope: !3726, inlinedAt: !4069)
!4074 = !DILocation(line: 1261, column: 50, scope: !3726, inlinedAt: !4069)
!4075 = !DILocation(line: 1262, column: 5, scope: !3726, inlinedAt: !4069)
!4076 = !DILocation(line: 1263, column: 26, scope: !3726, inlinedAt: !4069)
!4077 = !DILocation(line: 1263, column: 18, scope: !3726, inlinedAt: !4069)
!4078 = !DILocation(line: 1264, column: 26, scope: !3726, inlinedAt: !4069)
!4079 = !DILocation(line: 1264, column: 17, scope: !3726, inlinedAt: !4069)
!4080 = !DILocation(line: 1265, column: 5, scope: !3823, inlinedAt: !4069)
!4081 = !DILocation(line: 1266, column: 9, scope: !3726, inlinedAt: !4069)
!4082 = !DILocation(line: 1266, column: 33, scope: !3726, inlinedAt: !4069)
!4083 = !DILocation(line: 1262, column: 19, scope: !3726, inlinedAt: !4069)
!4084 = !DILocation(line: 1266, column: 5, scope: !3726, inlinedAt: !4069)
!4085 = !DILocation(line: 1267, column: 12, scope: !3840, inlinedAt: !4069)
!4086 = !DILocation(line: 1267, column: 9, scope: !3840, inlinedAt: !4069)
!4087 = !DILocation(line: 1267, column: 9, scope: !3726, inlinedAt: !4069)
!4088 = !DILocation(line: 1268, column: 9, scope: !3844, inlinedAt: !4069)
!4089 = !DILocation(line: 1269, column: 18, scope: !3844, inlinedAt: !4069)
!4090 = !DILocation(line: 1269, column: 9, scope: !3844, inlinedAt: !4069)
!4091 = !DILocation(line: 1270, column: 5, scope: !3844, inlinedAt: !4069)
!4092 = !DILocation(line: 1271, column: 15, scope: !3726, inlinedAt: !4069)
!4093 = !DILocation(line: 1271, column: 12, scope: !3726, inlinedAt: !4069)
!4094 = !DILocation(line: 1272, column: 1, scope: !3726, inlinedAt: !4069)
!4095 = !DILocation(line: 1271, column: 5, scope: !3726, inlinedAt: !4069)
!4096 = !DILocation(line: 1337, column: 21, scope: !4071)
!4097 = !DILocation(line: 1339, column: 17, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1338, column: 20)
!4099 = !DILocation(line: 1342, column: 28, scope: !3912)
!4100 = !DILocation(line: 1342, column: 17, scope: !3900)
!4101 = !DILocation(line: 1343, column: 17, scope: !3911)
!4102 = !DILocation(line: 1343, column: 22, scope: !3911)
!4103 = !DILocation(line: 93, column: 36, scope: !3944, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 1344, column: 21, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1344, column: 21)
!4106 = !DILocation(line: 93, column: 51, scope: !3944, inlinedAt: !4104)
!4107 = !DILocation(line: 93, column: 63, scope: !3944, inlinedAt: !4104)
!4108 = !DILocation(line: 94, column: 5, scope: !3944, inlinedAt: !4104)
!4109 = !DILocation(line: 95, column: 37, scope: !3951, inlinedAt: !4104)
!4110 = !DILocation(line: 95, column: 34, scope: !3951, inlinedAt: !4104)
!4111 = !DILocation(line: 95, column: 85, scope: !3951, inlinedAt: !4104)
!4112 = !DILocation(line: 95, column: 58, scope: !3951, inlinedAt: !4104)
!4113 = !DILocation(line: 95, column: 16, scope: !3951, inlinedAt: !4104)
!4114 = !DILocation(line: 96, column: 16, scope: !3966, inlinedAt: !4104)
!4115 = !DILocation(line: 96, column: 13, scope: !3966, inlinedAt: !4104)
!4116 = !DILocation(line: 96, column: 13, scope: !3951, inlinedAt: !4104)
!4117 = !DILocation(line: 96, column: 30, scope: !3966, inlinedAt: !4104)
!4118 = !DILocation(line: 97, column: 16, scope: !3972, inlinedAt: !4104)
!4119 = !DILocation(line: 97, column: 13, scope: !3972, inlinedAt: !4104)
!4120 = !DILocation(line: 97, column: 44, scope: !3972, inlinedAt: !4104)
!4121 = !DILocation(line: 97, column: 13, scope: !3951, inlinedAt: !4104)
!4122 = !DILocation(line: 104, column: 1, scope: !3944, inlinedAt: !4104)
!4123 = !DILocation(line: 1344, column: 21, scope: !3911)
!4124 = !DILocation(line: 99, column: 26, scope: !3951, inlinedAt: !4104)
!4125 = !DILocation(line: 100, column: 13, scope: !3951, inlinedAt: !4104)
!4126 = !DILocation(line: 101, column: 28, scope: !3951, inlinedAt: !4104)
!4127 = !DILocation(line: 1345, column: 21, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1345, column: 21)
!4129 = !DILocation(line: 1345, column: 50, scope: !4128)
!4130 = !DILocation(line: 1345, column: 21, scope: !3911)
!4131 = !DILocation(line: 1346, column: 21, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1346, column: 21)
!4133 = !DILocation(line: 1346, column: 58, scope: !4132)
!4134 = !DILocation(line: 1347, column: 13, scope: !3912)
!4135 = !DILocation(line: 1349, column: 22, scope: !3917)
!4136 = !DILocation(line: 1349, column: 49, scope: !3917)
!4137 = !DILocation(line: 1349, column: 38, scope: !3917)
!4138 = !DILocation(line: 1349, column: 17, scope: !3900)
!4139 = !DILocation(line: 1278, column: 5, scope: !3852, inlinedAt: !3915)
!4140 = !DILocation(line: 1279, column: 20, scope: !3852, inlinedAt: !3915)
!4141 = !DILocation(line: 1282, column: 25, scope: !3852, inlinedAt: !3915)
!4142 = !DILocation(line: 1282, column: 13, scope: !3852, inlinedAt: !3915)
!4143 = !DILocation(line: 1279, column: 13, scope: !3852, inlinedAt: !3915)
!4144 = !DILocation(line: 1282, column: 74, scope: !3852, inlinedAt: !3915)
!4145 = !DILocation(line: 1281, column: 5, scope: !3852, inlinedAt: !3915)
!4146 = !DILocation(line: 1283, column: 50, scope: !3871, inlinedAt: !3915)
!4147 = !DILocation(line: 1283, column: 33, scope: !3871, inlinedAt: !3915)
!4148 = !DILocation(line: 1283, column: 31, scope: !3871, inlinedAt: !3915)
!4149 = !DILocation(line: 1287, column: 1, scope: !3852, inlinedAt: !3915)
!4150 = !DILocation(line: 1286, column: 5, scope: !3852, inlinedAt: !3915)
!4151 = !DILocation(line: 1352, column: 13, scope: !3916)
!4152 = !DILocation(line: 1353, column: 9, scope: !3891)
!4153 = !DILocation(line: 0, scope: !3881)
!4154 = !DILocation(line: 0, scope: !3916)
!4155 = !DILocation(line: 1354, column: 9, scope: !3891)
!4156 = !DILocation(line: 1356, column: 5, scope: !3892)
!4157 = !DILocation(line: 1295, column: 36, scope: !3892)
!4158 = distinct !{!4158, !3925, !4159}
!4159 = !DILocation(line: 1356, column: 5, scope: !3893)
!4160 = !DILocation(line: 1360, column: 9, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1360, column: 9)
!4162 = !DILocation(line: 1360, column: 9, scope: !3881)
!4163 = !DILocation(line: 1360, column: 13, scope: !4161)
!4164 = !DILocation(line: 1362, column: 1, scope: !3881)
!4165 = distinct !DISubprogram(name: "rewriteAppendOnlyFile", scope: !3, file: !3, line: 1371, type: !1818, isLocal: false, isDefinition: true, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4166)
!4166 = !{!4167, !4168, !4169, !4170, !4171, !4172, !4175, !4176}
!4167 = !DILocalVariable(name: "filename", arg: 1, scope: !4165, file: !3, line: 1371, type: !20)
!4168 = !DILocalVariable(name: "aof", scope: !4165, file: !3, line: 1372, type: !2071)
!4169 = !DILocalVariable(name: "fp", scope: !4165, file: !3, line: 1373, type: !1824)
!4170 = !DILocalVariable(name: "tmpfile", scope: !4165, file: !3, line: 1374, type: !896)
!4171 = !DILocalVariable(name: "byte", scope: !4165, file: !3, line: 1375, type: !21)
!4172 = !DILocalVariable(name: "error", scope: !4173, file: !3, line: 1393, type: !6)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 1392, column: 38)
!4174 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1392, column: 9)
!4175 = !DILocalVariable(name: "nodata", scope: !4165, file: !3, line: 1413, type: !6)
!4176 = !DILocalVariable(name: "start", scope: !4165, file: !3, line: 1414, type: !74)
!4177 = !DILocation(line: 1278, column: 10, scope: !3852, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 1438, column: 5, scope: !4165)
!4179 = !DILocation(line: 1278, column: 10, scope: !3852, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 1423, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1415, column: 49)
!4182 = !DILocation(line: 1371, column: 33, scope: !4165)
!4183 = !DILocation(line: 1372, column: 5, scope: !4165)
!4184 = !DILocation(line: 1374, column: 5, scope: !4165)
!4185 = !DILocation(line: 1374, column: 10, scope: !4165)
!4186 = !DILocation(line: 1375, column: 10, scope: !4165)
!4187 = !DILocation(line: 1375, column: 5, scope: !4165)
!4188 = !DILocation(line: 1379, column: 58, scope: !4165)
!4189 = !DILocation(line: 1379, column: 5, scope: !4165)
!4190 = !DILocation(line: 1380, column: 10, scope: !4165)
!4191 = !DILocation(line: 1373, column: 11, scope: !4165)
!4192 = !DILocation(line: 1381, column: 10, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1381, column: 9)
!4194 = !DILocation(line: 1381, column: 9, scope: !4165)
!4195 = !DILocation(line: 1382, column: 112, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 1381, column: 14)
!4197 = !DILocation(line: 1382, column: 103, scope: !4196)
!4198 = !DILocation(line: 1382, column: 9, scope: !4196)
!4199 = !DILocation(line: 1383, column: 9, scope: !4196)
!4200 = !DILocation(line: 1386, column: 29, scope: !4165)
!4201 = !DILocation(line: 1386, column: 27, scope: !4165)
!4202 = !DILocation(line: 1372, column: 9, scope: !4165)
!4203 = !DILocation(line: 1387, column: 5, scope: !4165)
!4204 = !DILocation(line: 1389, column: 16, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1389, column: 9)
!4206 = !{!91, !92, i64 2016}
!4207 = !DILocation(line: 1389, column: 9, scope: !4205)
!4208 = !DILocation(line: 1389, column: 9, scope: !4165)
!4209 = !DILocation(line: 1390, column: 9, scope: !4205)
!4210 = !DILocation(line: 1392, column: 16, scope: !4174)
!4211 = !{!91, !92, i64 2036}
!4212 = !DILocation(line: 1392, column: 9, scope: !4174)
!4213 = !DILocation(line: 1392, column: 9, scope: !4165)
!4214 = !DILocation(line: 1393, column: 9, scope: !4173)
!4215 = !DILocation(line: 1393, column: 13, scope: !4173)
!4216 = !DILocation(line: 1394, column: 13, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 1394, column: 13)
!4218 = !DILocation(line: 1394, column: 64, scope: !4217)
!4219 = !DILocation(line: 1394, column: 13, scope: !4173)
!4220 = !DILocation(line: 1398, column: 5, scope: !4174)
!4221 = !DILocation(line: 1395, column: 21, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 1394, column: 74)
!4223 = !DILocation(line: 1395, column: 13, scope: !4222)
!4224 = !DILocation(line: 1395, column: 19, scope: !4222)
!4225 = !DILocation(line: 1399, column: 13, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 1399, column: 13)
!4227 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 1398, column: 12)
!4228 = !DILocation(line: 1399, column: 44, scope: !4226)
!4229 = !DILocation(line: 1399, column: 13, scope: !4227)
!4230 = !DILocation(line: 1404, column: 9, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1404, column: 9)
!4232 = !DILocation(line: 1404, column: 20, scope: !4231)
!4233 = !DILocation(line: 1404, column: 9, scope: !4165)
!4234 = !DILocation(line: 1405, column: 15, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1405, column: 9)
!4236 = !DILocation(line: 1405, column: 9, scope: !4235)
!4237 = !DILocation(line: 1405, column: 27, scope: !4235)
!4238 = !DILocation(line: 1405, column: 9, scope: !4165)
!4239 = !DILocation(line: 1413, column: 9, scope: !4165)
!4240 = !DILocation(line: 1414, column: 22, scope: !4165)
!4241 = !DILocation(line: 1414, column: 14, scope: !4165)
!4242 = !DILocation(line: 1415, column: 11, scope: !4165)
!4243 = !DILocation(line: 1415, column: 19, scope: !4165)
!4244 = !DILocation(line: 1415, column: 26, scope: !4165)
!4245 = !DILocation(line: 1415, column: 5, scope: !4165)
!4246 = !DILocation(line: 1416, column: 27, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 1416, column: 13)
!4248 = !DILocation(line: 1416, column: 13, scope: !4247)
!4249 = !DILocation(line: 1416, column: 75, scope: !4247)
!4250 = !DILocation(line: 1416, column: 13, scope: !4181)
!4251 = !DILocation(line: 1418, column: 19, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 1417, column: 9)
!4253 = !DILocation(line: 1419, column: 13, scope: !4252)
!4254 = !DILocation(line: 1415, column: 43, scope: !4165)
!4255 = !DILocation(line: 1415, column: 33, scope: !4165)
!4256 = distinct !{!4256, !4245, !4257}
!4257 = !DILocation(line: 1424, column: 5, scope: !4165)
!4258 = !DILocation(line: 1278, column: 5, scope: !3852, inlinedAt: !4180)
!4259 = !DILocation(line: 1279, column: 20, scope: !3852, inlinedAt: !4180)
!4260 = !DILocation(line: 1282, column: 25, scope: !3852, inlinedAt: !4180)
!4261 = !DILocation(line: 1282, column: 13, scope: !3852, inlinedAt: !4180)
!4262 = !DILocation(line: 1279, column: 13, scope: !3852, inlinedAt: !4180)
!4263 = !DILocation(line: 1282, column: 74, scope: !3852, inlinedAt: !4180)
!4264 = !DILocation(line: 1281, column: 5, scope: !3852, inlinedAt: !4180)
!4265 = !DILocation(line: 1283, column: 50, scope: !3871, inlinedAt: !4180)
!4266 = !DILocation(line: 1283, column: 33, scope: !3871, inlinedAt: !4180)
!4267 = !DILocation(line: 1283, column: 31, scope: !3871, inlinedAt: !4180)
!4268 = !DILocation(line: 1287, column: 1, scope: !3852, inlinedAt: !4180)
!4269 = !DILocation(line: 1286, column: 5, scope: !3852, inlinedAt: !4180)
!4270 = !DILocation(line: 1427, column: 22, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1427, column: 9)
!4272 = !DILocation(line: 1427, column: 9, scope: !4271)
!4273 = !DILocation(line: 1427, column: 58, scope: !4271)
!4274 = !DILocation(line: 1427, column: 9, scope: !4165)
!4275 = !DILocation(line: 1428, column: 34, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1428, column: 9)
!4277 = !DILocation(line: 1428, column: 9, scope: !4276)
!4278 = !DILocation(line: 1428, column: 65, scope: !4276)
!4279 = !DILocation(line: 1428, column: 9, scope: !4165)
!4280 = !DILocation(line: 1433, column: 25, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1433, column: 9)
!4282 = !DILocation(line: 1433, column: 9, scope: !4281)
!4283 = !DILocation(line: 1433, column: 69, scope: !4281)
!4284 = !DILocation(line: 1434, column: 9, scope: !4281)
!4285 = !DILocation(line: 1434, column: 14, scope: !4281)
!4286 = !DILocation(line: 1433, column: 74, scope: !4281)
!4287 = !DILocation(line: 1435, column: 5, scope: !4165)
!4288 = !DILocation(line: 1278, column: 5, scope: !3852, inlinedAt: !4178)
!4289 = !DILocation(line: 1279, column: 20, scope: !3852, inlinedAt: !4178)
!4290 = !DILocation(line: 1282, column: 25, scope: !3852, inlinedAt: !4178)
!4291 = !DILocation(line: 1282, column: 13, scope: !3852, inlinedAt: !4178)
!4292 = !DILocation(line: 1279, column: 13, scope: !3852, inlinedAt: !4178)
!4293 = !DILocation(line: 1282, column: 74, scope: !3852, inlinedAt: !4178)
!4294 = !DILocation(line: 1281, column: 5, scope: !3852, inlinedAt: !4178)
!4295 = !DILocation(line: 1283, column: 50, scope: !3871, inlinedAt: !4178)
!4296 = !DILocation(line: 1283, column: 33, scope: !3871, inlinedAt: !4178)
!4297 = !DILocation(line: 1283, column: 31, scope: !3871, inlinedAt: !4178)
!4298 = !DILocation(line: 1287, column: 1, scope: !3852, inlinedAt: !4178)
!4299 = !DILocation(line: 1286, column: 5, scope: !3852, inlinedAt: !4178)
!4300 = !DILocation(line: 1443, column: 32, scope: !4165)
!4301 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 1443, column: 18, scope: !4165)
!4303 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !4302)
!4304 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !4302)
!4305 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !4302)
!4306 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !4302)
!4307 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !4302)
!4308 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !4302)
!4309 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !4302)
!4310 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !4302)
!4311 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !4302)
!4312 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !4302)
!4313 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !4302)
!4314 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !4302)
!4315 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !4302)
!4316 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !4302)
!4317 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !4302)
!4318 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !4302)
!4319 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !4302)
!4320 = !DILocation(line: 0, scope: !487, inlinedAt: !4302)
!4321 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !4302)
!4322 = !DILocation(line: 1443, column: 9, scope: !4165)
!4323 = !DILocation(line: 1443, column: 48, scope: !4165)
!4324 = !DILocation(line: 1441, column: 5, scope: !4165)
!4325 = !DILocation(line: 1444, column: 30, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1444, column: 9)
!4327 = !DILocation(line: 87, column: 39, scope: !464, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 1444, column: 45, scope: !4326)
!4329 = !DILocation(line: 88, column: 27, scope: !464, inlinedAt: !4328)
!4330 = !DILocation(line: 88, column: 19, scope: !464, inlinedAt: !4328)
!4331 = !DILocation(line: 89, column: 5, scope: !464, inlinedAt: !4328)
!4332 = !DILocation(line: 102, column: 1, scope: !464, inlinedAt: !4328)
!4333 = !DILocation(line: 93, column: 36, scope: !3944, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 1444, column: 9, scope: !4326)
!4335 = !DILocation(line: 93, column: 51, scope: !3944, inlinedAt: !4334)
!4336 = !DILocation(line: 93, column: 63, scope: !3944, inlinedAt: !4334)
!4337 = !DILocation(line: 94, column: 5, scope: !3944, inlinedAt: !4334)
!4338 = !DILocation(line: 91, column: 20, scope: !487, inlinedAt: !4328)
!4339 = !DILocation(line: 91, column: 13, scope: !487, inlinedAt: !4328)
!4340 = !DILocation(line: 93, column: 20, scope: !487, inlinedAt: !4328)
!4341 = !DILocation(line: 93, column: 34, scope: !487, inlinedAt: !4328)
!4342 = !DILocation(line: 93, column: 13, scope: !487, inlinedAt: !4328)
!4343 = !DILocation(line: 95, column: 20, scope: !487, inlinedAt: !4328)
!4344 = !DILocation(line: 95, column: 35, scope: !487, inlinedAt: !4328)
!4345 = !DILocation(line: 95, column: 13, scope: !487, inlinedAt: !4328)
!4346 = !DILocation(line: 97, column: 20, scope: !487, inlinedAt: !4328)
!4347 = !DILocation(line: 97, column: 35, scope: !487, inlinedAt: !4328)
!4348 = !DILocation(line: 97, column: 13, scope: !487, inlinedAt: !4328)
!4349 = !DILocation(line: 99, column: 20, scope: !487, inlinedAt: !4328)
!4350 = !DILocation(line: 99, column: 35, scope: !487, inlinedAt: !4328)
!4351 = !DILocation(line: 99, column: 13, scope: !487, inlinedAt: !4328)
!4352 = !DILocation(line: 0, scope: !487, inlinedAt: !4328)
!4353 = !DILocation(line: 95, column: 37, scope: !3951, inlinedAt: !4334)
!4354 = !DILocation(line: 95, column: 34, scope: !3951, inlinedAt: !4334)
!4355 = !DILocation(line: 95, column: 85, scope: !3951, inlinedAt: !4334)
!4356 = !DILocation(line: 95, column: 58, scope: !3951, inlinedAt: !4334)
!4357 = !DILocation(line: 95, column: 16, scope: !3951, inlinedAt: !4334)
!4358 = !DILocation(line: 96, column: 16, scope: !3966, inlinedAt: !4334)
!4359 = !DILocation(line: 96, column: 13, scope: !3966, inlinedAt: !4334)
!4360 = !DILocation(line: 96, column: 13, scope: !3951, inlinedAt: !4334)
!4361 = !DILocation(line: 96, column: 30, scope: !3966, inlinedAt: !4334)
!4362 = !DILocation(line: 97, column: 16, scope: !3972, inlinedAt: !4334)
!4363 = !DILocation(line: 97, column: 13, scope: !3972, inlinedAt: !4334)
!4364 = !DILocation(line: 97, column: 44, scope: !3972, inlinedAt: !4334)
!4365 = !DILocation(line: 97, column: 13, scope: !3951, inlinedAt: !4334)
!4366 = !DILocation(line: 99, column: 26, scope: !3951, inlinedAt: !4334)
!4367 = !DILocation(line: 100, column: 13, scope: !3951, inlinedAt: !4334)
!4368 = !DILocation(line: 101, column: 28, scope: !3951, inlinedAt: !4334)
!4369 = !DILocation(line: 104, column: 1, scope: !3944, inlinedAt: !4334)
!4370 = !DILocation(line: 1448, column: 9, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1448, column: 9)
!4372 = !DILocation(line: 1448, column: 20, scope: !4371)
!4373 = !DILocation(line: 1448, column: 9, scope: !4165)
!4374 = !DILocation(line: 1449, column: 15, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1449, column: 9)
!4376 = !DILocation(line: 1449, column: 9, scope: !4375)
!4377 = !DILocation(line: 1449, column: 27, scope: !4375)
!4378 = !DILocation(line: 1449, column: 9, scope: !4165)
!4379 = !DILocation(line: 1450, column: 9, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1450, column: 9)
!4381 = !DILocation(line: 1450, column: 20, scope: !4380)
!4382 = !DILocation(line: 1450, column: 9, scope: !4165)
!4383 = !DILocation(line: 1454, column: 9, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1454, column: 9)
!4385 = !DILocation(line: 1454, column: 34, scope: !4384)
!4386 = !DILocation(line: 1454, column: 9, scope: !4165)
!4387 = !DILocation(line: 1455, column: 106, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1454, column: 41)
!4389 = !DILocation(line: 1455, column: 97, scope: !4388)
!4390 = !DILocation(line: 1455, column: 9, scope: !4388)
!4391 = !DILocation(line: 1456, column: 9, scope: !4388)
!4392 = !DILocation(line: 1457, column: 9, scope: !4388)
!4393 = !DILocation(line: 1459, column: 5, scope: !4165)
!4394 = !DILocation(line: 1460, column: 5, scope: !4165)
!4395 = !DILocation(line: 1463, column: 87, scope: !4165)
!4396 = !DILocation(line: 1463, column: 78, scope: !4165)
!4397 = !DILocation(line: 1463, column: 5, scope: !4165)
!4398 = !DILocation(line: 1464, column: 5, scope: !4165)
!4399 = !DILocation(line: 1465, column: 5, scope: !4165)
!4400 = !DILocation(line: 1466, column: 5, scope: !4165)
!4401 = !DILocation(line: 1467, column: 1, scope: !4165)
!4402 = distinct !DISubprogram(name: "aofChildPipeReadable", scope: !3, file: !3, line: 1476, type: !166, isLocal: false, isDefinition: true, scopeLine: 1476, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408}
!4404 = !DILocalVariable(name: "el", arg: 1, scope: !4402, file: !3, line: 1476, type: !168)
!4405 = !DILocalVariable(name: "fd", arg: 2, scope: !4402, file: !3, line: 1476, type: !6)
!4406 = !DILocalVariable(name: "privdata", arg: 3, scope: !4402, file: !3, line: 1476, type: !10)
!4407 = !DILocalVariable(name: "mask", arg: 4, scope: !4402, file: !3, line: 1476, type: !6)
!4408 = !DILocalVariable(name: "byte", scope: !4402, file: !3, line: 1477, type: !21)
!4409 = !DILocation(line: 1476, column: 40, scope: !4402)
!4410 = !DILocation(line: 1476, column: 48, scope: !4402)
!4411 = !DILocation(line: 1476, column: 58, scope: !4402)
!4412 = !DILocation(line: 1476, column: 72, scope: !4402)
!4413 = !DILocation(line: 1477, column: 10, scope: !4402)
!4414 = !DILocation(line: 1477, column: 5, scope: !4402)
!4415 = !DILocation(line: 1482, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 1482, column: 9)
!4417 = !DILocation(line: 1482, column: 26, scope: !4416)
!4418 = !DILocation(line: 1482, column: 34, scope: !4416)
!4419 = !DILocation(line: 1482, column: 39, scope: !4416)
!4420 = !DILocation(line: 1482, column: 31, scope: !4416)
!4421 = !DILocation(line: 1483, column: 9, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 1482, column: 47)
!4423 = !DILocation(line: 1484, column: 38, scope: !4422)
!4424 = !DILocation(line: 1485, column: 26, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1485, column: 13)
!4426 = !DILocation(line: 1485, column: 13, scope: !4425)
!4427 = !DILocation(line: 1485, column: 61, scope: !4425)
!4428 = !DILocation(line: 1485, column: 13, scope: !4422)
!4429 = !DILocation(line: 1491, column: 26, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 1485, column: 67)
!4431 = !DILocation(line: 1491, column: 17, scope: !4430)
!4432 = !DILocation(line: 1490, column: 13, scope: !4430)
!4433 = !DILocation(line: 1492, column: 9, scope: !4430)
!4434 = !DILocation(line: 1496, column: 30, scope: !4402)
!4435 = !DILocation(line: 1496, column: 40, scope: !4402)
!4436 = !DILocation(line: 1496, column: 5, scope: !4402)
!4437 = !DILocation(line: 1497, column: 1, scope: !4402)
!4438 = distinct !DISubprogram(name: "aofCreatePipes", scope: !3, file: !3, line: 1504, type: !430, isLocal: false, isDefinition: true, scopeLine: 1504, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4439)
!4439 = !{!4440, !4444}
!4440 = !DILocalVariable(name: "fds", scope: !4438, file: !3, line: 1505, type: !4441)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !4442)
!4442 = !{!4443}
!4443 = !DISubrange(count: 6)
!4444 = !DILocalVariable(name: "j", scope: !4438, file: !3, line: 1506, type: !6)
!4445 = !DILocation(line: 1505, column: 5, scope: !4438)
!4446 = !DILocation(line: 1505, column: 9, scope: !4438)
!4447 = !DILocation(line: 1508, column: 14, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1508, column: 9)
!4449 = !DILocation(line: 1508, column: 9, scope: !4448)
!4450 = !DILocation(line: 1508, column: 19, scope: !4448)
!4451 = !DILocation(line: 1508, column: 9, scope: !4438)
!4452 = !DILocation(line: 1509, column: 17, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1509, column: 9)
!4454 = !DILocation(line: 1509, column: 9, scope: !4453)
!4455 = !DILocation(line: 1509, column: 21, scope: !4453)
!4456 = !DILocation(line: 1509, column: 9, scope: !4438)
!4457 = !DILocation(line: 1510, column: 17, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1510, column: 9)
!4459 = !DILocation(line: 1510, column: 9, scope: !4458)
!4460 = !DILocation(line: 1510, column: 21, scope: !4458)
!4461 = !DILocation(line: 1510, column: 9, scope: !4438)
!4462 = !DILocation(line: 1512, column: 27, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1512, column: 9)
!4464 = !DILocation(line: 1512, column: 9, scope: !4463)
!4465 = !DILocation(line: 1512, column: 35, scope: !4463)
!4466 = !DILocation(line: 1512, column: 9, scope: !4438)
!4467 = !DILocation(line: 1513, column: 27, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1513, column: 9)
!4469 = !DILocation(line: 1513, column: 9, scope: !4468)
!4470 = !DILocation(line: 1513, column: 35, scope: !4468)
!4471 = !DILocation(line: 1513, column: 9, scope: !4438)
!4472 = !DILocation(line: 1514, column: 34, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1514, column: 9)
!4474 = !DILocation(line: 1514, column: 38, scope: !4473)
!4475 = !DILocation(line: 1514, column: 9, scope: !4473)
!4476 = !DILocation(line: 1514, column: 87, scope: !4473)
!4477 = !DILocation(line: 1514, column: 9, scope: !4438)
!4478 = !DILocation(line: 1517, column: 45, scope: !4438)
!4479 = !DILocation(line: 1516, column: 41, scope: !4438)
!4480 = !DILocation(line: 1520, column: 42, scope: !4438)
!4481 = !DILocation(line: 1520, column: 40, scope: !4438)
!4482 = !DILocation(line: 1521, column: 44, scope: !4438)
!4483 = !DILocation(line: 1521, column: 42, scope: !4438)
!4484 = !DILocation(line: 1522, column: 34, scope: !4438)
!4485 = !DILocation(line: 1523, column: 5, scope: !4438)
!4486 = !DILocation(line: 1527, column: 18, scope: !4438)
!4487 = !DILocation(line: 1527, column: 9, scope: !4438)
!4488 = !DILocation(line: 1526, column: 5, scope: !4438)
!4489 = !DILocation(line: 1506, column: 9, scope: !4438)
!4490 = !DILocation(line: 1528, column: 32, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1528, column: 32)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 1528, column: 5)
!4493 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1528, column: 5)
!4494 = !DILocation(line: 1528, column: 39, scope: !4491)
!4495 = !DILocation(line: 1528, column: 32, scope: !4492)
!4496 = !DILocation(line: 1528, column: 46, scope: !4491)
!4497 = !DILocation(line: 0, scope: !4438)
!4498 = !DILocation(line: 1530, column: 1, scope: !4438)
!4499 = !DILocation(line: 1533, column: 30, scope: !940)
!4500 = !DILocation(line: 1533, column: 40, scope: !940)
!4501 = !DILocation(line: 1533, column: 5, scope: !940)
!4502 = !DILocation(line: 1534, column: 30, scope: !940)
!4503 = !DILocation(line: 1534, column: 40, scope: !940)
!4504 = !DILocation(line: 1534, column: 5, scope: !940)
!4505 = !DILocation(line: 1535, column: 18, scope: !940)
!4506 = !DILocation(line: 1535, column: 5, scope: !940)
!4507 = !DILocation(line: 1536, column: 18, scope: !940)
!4508 = !DILocation(line: 1536, column: 5, scope: !940)
!4509 = !DILocation(line: 1537, column: 18, scope: !940)
!4510 = !DILocation(line: 1537, column: 5, scope: !940)
!4511 = !DILocation(line: 1538, column: 18, scope: !940)
!4512 = !DILocation(line: 1538, column: 5, scope: !940)
!4513 = !DILocation(line: 1539, column: 18, scope: !940)
!4514 = !DILocation(line: 1539, column: 5, scope: !940)
!4515 = !DILocation(line: 1540, column: 18, scope: !940)
!4516 = !DILocation(line: 1540, column: 5, scope: !940)
!4517 = !DILocation(line: 1541, column: 1, scope: !940)
!4518 = distinct !DISubprogram(name: "bgrewriteaofCommand", scope: !3, file: !3, line: 1619, type: !1282, isLocal: false, isDefinition: true, scopeLine: 1619, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4519)
!4519 = !{!4520}
!4520 = !DILocalVariable(name: "c", arg: 1, scope: !4518, file: !3, line: 1619, type: !1284)
!4521 = !DILocation(line: 1619, column: 34, scope: !4518)
!4522 = !DILocation(line: 1620, column: 16, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 1620, column: 9)
!4524 = !DILocation(line: 1620, column: 30, scope: !4523)
!4525 = !DILocation(line: 1620, column: 9, scope: !4518)
!4526 = !DILocation(line: 1621, column: 9, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 1620, column: 37)
!4528 = !DILocation(line: 1622, column: 5, scope: !4527)
!4529 = !DILocation(line: 1622, column: 23, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 1622, column: 16)
!4531 = !DILocation(line: 1622, column: 37, scope: !4530)
!4532 = !DILocation(line: 1622, column: 16, scope: !4523)
!4533 = !DILocation(line: 1623, column: 38, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1622, column: 44)
!4535 = !DILocation(line: 1624, column: 9, scope: !4534)
!4536 = !DILocation(line: 1625, column: 5, scope: !4534)
!4537 = !DILocation(line: 1625, column: 16, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1625, column: 16)
!4539 = !DILocation(line: 1625, column: 50, scope: !4538)
!4540 = !DILocation(line: 1625, column: 16, scope: !4530)
!4541 = !DILocation(line: 1626, column: 9, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 1625, column: 59)
!4543 = !DILocation(line: 1627, column: 5, scope: !4542)
!4544 = !DILocation(line: 1628, column: 27, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 1627, column: 12)
!4546 = !{!4547, !95, i64 16}
!4547 = !{!"sharedObjectsStruct", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !95, i64 96, !95, i64 104, !95, i64 112, !95, i64 120, !95, i64 128, !95, i64 136, !95, i64 144, !95, i64 152, !95, i64 160, !95, i64 168, !95, i64 176, !95, i64 184, !95, i64 192, !95, i64 200, !95, i64 208, !95, i64 216, !95, i64 224, !95, i64 232, !95, i64 240, !95, i64 248, !95, i64 256, !95, i64 264, !95, i64 272, !95, i64 280, !95, i64 288, !95, i64 296, !95, i64 304, !95, i64 312, !95, i64 320, !95, i64 328, !95, i64 336, !95, i64 344, !95, i64 352, !95, i64 360, !93, i64 368, !93, i64 448, !93, i64 80448, !93, i64 80704, !95, i64 80960, !95, i64 80968}
!4548 = !DILocation(line: 1628, column: 9, scope: !4545)
!4549 = !DILocation(line: 1630, column: 1, scope: !4518)
!4550 = !DILocation(line: 1632, column: 30, scope: !889)
!4551 = !DILocation(line: 1633, column: 5, scope: !889)
!4552 = !DILocation(line: 1633, column: 10, scope: !889)
!4553 = !DILocation(line: 1635, column: 5, scope: !889)
!4554 = !DILocation(line: 1636, column: 5, scope: !889)
!4555 = !DILocation(line: 1637, column: 1, scope: !889)
!4556 = distinct !DISubprogram(name: "backgroundRewriteDoneHandler", scope: !3, file: !3, line: 1660, type: !4557, isLocal: false, isDefinition: true, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4559)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{null, !6, !6}
!4559 = !{!4560, !4561, !4562, !4565, !4566, !4567, !4568}
!4560 = !DILocalVariable(name: "exitcode", arg: 1, scope: !4556, file: !3, line: 1660, type: !6)
!4561 = !DILocalVariable(name: "bysignal", arg: 2, scope: !4556, file: !3, line: 1660, type: !6)
!4562 = !DILocalVariable(name: "newfd", scope: !4563, file: !3, line: 1662, type: !6)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 1661, column: 37)
!4564 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 1661, column: 9)
!4565 = !DILocalVariable(name: "oldfd", scope: !4563, file: !3, line: 1662, type: !6)
!4566 = !DILocalVariable(name: "tmpfile", scope: !4563, file: !3, line: 1663, type: !896)
!4567 = !DILocalVariable(name: "now", scope: !4563, file: !3, line: 1664, type: !16)
!4568 = !DILocalVariable(name: "latency", scope: !4563, file: !3, line: 1665, type: !74)
!4569 = !DILocation(line: 1633, column: 10, scope: !889, inlinedAt: !4570)
!4570 = distinct !DILocation(line: 1801, column: 5, scope: !4556)
!4571 = !DILocation(line: 1660, column: 39, scope: !4556)
!4572 = !DILocation(line: 1660, column: 53, scope: !4556)
!4573 = !DILocation(line: 1661, column: 19, scope: !4564)
!4574 = !DILocation(line: 1663, column: 9, scope: !4563)
!4575 = !DILocation(line: 1663, column: 14, scope: !4563)
!4576 = !DILocation(line: 1664, column: 25, scope: !4563)
!4577 = !DILocation(line: 1664, column: 19, scope: !4563)
!4578 = !DILocation(line: 1667, column: 9, scope: !4563)
!4579 = !DILocation(line: 1672, column: 9, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1672, column: 9)
!4581 = !DILocation(line: 1672, column: 9, scope: !4563)
!4582 = !DILocation(line: 1672, column: 9, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 1672, column: 9)
!4584 = !DILocation(line: 1665, column: 18, scope: !4563)
!4585 = !DILocation(line: 1674, column: 25, scope: !4563)
!4586 = !DILocation(line: 1673, column: 9, scope: !4563)
!4587 = !DILocation(line: 1675, column: 17, scope: !4563)
!4588 = !DILocation(line: 1662, column: 13, scope: !4563)
!4589 = !DILocation(line: 1676, column: 19, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1676, column: 13)
!4591 = !DILocation(line: 1676, column: 13, scope: !4563)
!4592 = !DILocation(line: 1678, column: 88, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 1676, column: 26)
!4594 = !DILocation(line: 1678, column: 79, scope: !4593)
!4595 = !DILocation(line: 1677, column: 13, scope: !4593)
!4596 = !DILocation(line: 1679, column: 13, scope: !4593)
!4597 = !DILocation(line: 1682, column: 13, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1682, column: 13)
!4599 = !DILocation(line: 1682, column: 42, scope: !4598)
!4600 = !DILocation(line: 1682, column: 13, scope: !4563)
!4601 = !DILocation(line: 1684, column: 92, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1682, column: 49)
!4603 = !DILocation(line: 1684, column: 83, scope: !4602)
!4604 = !DILocation(line: 1683, column: 13, scope: !4602)
!4605 = !DILocation(line: 1685, column: 13, scope: !4602)
!4606 = !DILocation(line: 1686, column: 13, scope: !4602)
!4607 = !DILocation(line: 1688, column: 9, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1688, column: 9)
!4609 = !DILocation(line: 1688, column: 9, scope: !4563)
!4610 = !DILocation(line: 1688, column: 9, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1688, column: 9)
!4612 = !DILocation(line: 1689, column: 9, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1689, column: 9)
!4614 = !DILocation(line: 81, column: 5, scope: !111, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 1692, column: 98, scope: !4563)
!4616 = !DILocation(line: 82, column: 19, scope: !111, inlinedAt: !4615)
!4617 = !DILocation(line: 84, column: 23, scope: !111, inlinedAt: !4615)
!4618 = !DILocation(line: 81, column: 14, scope: !111, inlinedAt: !4615)
!4619 = !DILocation(line: 84, column: 5, scope: !111, inlinedAt: !4615)
!4620 = !DILocation(line: 85, column: 17, scope: !111, inlinedAt: !4615)
!4621 = !DILocation(line: 80, column: 15, scope: !111, inlinedAt: !4615)
!4622 = !DILocation(line: 85, column: 5, scope: !111, inlinedAt: !4615)
!4623 = !DILocation(line: 86, column: 29, scope: !133, inlinedAt: !4615)
!4624 = !DILocation(line: 86, column: 21, scope: !133, inlinedAt: !4615)
!4625 = !DILocation(line: 87, column: 24, scope: !133, inlinedAt: !4615)
!4626 = !DILocation(line: 87, column: 14, scope: !133, inlinedAt: !4615)
!4627 = !DILocation(line: 90, column: 1, scope: !111, inlinedAt: !4615)
!4628 = !DILocation(line: 89, column: 5, scope: !111, inlinedAt: !4615)
!4629 = !DILocation(line: 1691, column: 9, scope: !4563)
!4630 = !DILocation(line: 1721, column: 20, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1721, column: 13)
!4632 = !DILocation(line: 1721, column: 27, scope: !4631)
!4633 = !DILocation(line: 1721, column: 13, scope: !4563)
!4634 = !DILocation(line: 1727, column: 33, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1721, column: 34)
!4636 = !DILocation(line: 1727, column: 21, scope: !4635)
!4637 = !DILocation(line: 1662, column: 20, scope: !4563)
!4638 = !DILocation(line: 1728, column: 9, scope: !4635)
!4639 = !DILocation(line: 0, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1728, column: 16)
!4641 = !DILocation(line: 1735, column: 9, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1735, column: 9)
!4643 = !DILocation(line: 1735, column: 9, scope: !4563)
!4644 = !DILocation(line: 1735, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 1735, column: 9)
!4646 = !DILocation(line: 1736, column: 35, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1736, column: 13)
!4648 = !DILocation(line: 1736, column: 13, scope: !4647)
!4649 = !DILocation(line: 1736, column: 49, scope: !4647)
!4650 = !DILocation(line: 1736, column: 13, scope: !4563)
!4651 = !DILocation(line: 1740, column: 24, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1736, column: 56)
!4653 = !DILocation(line: 1741, column: 26, scope: !4652)
!4654 = !DILocation(line: 1741, column: 17, scope: !4652)
!4655 = !DILocation(line: 1737, column: 13, scope: !4652)
!4656 = !DILocation(line: 1742, column: 13, scope: !4652)
!4657 = !DILocation(line: 1743, column: 23, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 1743, column: 17)
!4659 = !DILocation(line: 1743, column: 17, scope: !4652)
!4660 = !DILocation(line: 1743, column: 30, scope: !4658)
!4661 = !DILocation(line: 1746, column: 9, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1746, column: 9)
!4663 = !DILocation(line: 1746, column: 9, scope: !4563)
!4664 = !DILocation(line: 1746, column: 9, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 1746, column: 9)
!4666 = !DILocation(line: 1747, column: 9, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1747, column: 9)
!4668 = !DILocation(line: 1749, column: 20, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1749, column: 13)
!4670 = !DILocation(line: 1749, column: 27, scope: !4669)
!4671 = !DILocation(line: 1749, column: 13, scope: !4563)
!4672 = !DILocation(line: 1752, column: 13, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1749, column: 34)
!4674 = !DILocation(line: 1753, column: 9, scope: !4673)
!4675 = !DILocation(line: 1756, column: 27, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1753, column: 16)
!4677 = !DILocation(line: 1757, column: 24, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 1757, column: 17)
!4679 = !DILocation(line: 1757, column: 17, scope: !4676)
!4680 = !DILocation(line: 1758, column: 17, scope: !4678)
!4681 = !DILocation(line: 208, column: 31, scope: !435, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 1760, column: 17, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 1759, column: 22)
!4684 = !DILocation(line: 209, column: 49, scope: !435, inlinedAt: !4682)
!4685 = !DILocation(line: 209, column: 42, scope: !435, inlinedAt: !4682)
!4686 = !DILocation(line: 209, column: 5, scope: !435, inlinedAt: !4682)
!4687 = !DILocation(line: 210, column: 1, scope: !435, inlinedAt: !4682)
!4688 = !DILocation(line: 1760, column: 17, scope: !4683)
!4689 = !DILocation(line: 1761, column: 36, scope: !4676)
!4690 = !DILocation(line: 1762, column: 13, scope: !4676)
!4691 = !DILocation(line: 1763, column: 51, scope: !4676)
!4692 = !DILocation(line: 1763, column: 42, scope: !4676)
!4693 = !DILocation(line: 1768, column: 28, scope: !4676)
!4694 = !DILocation(line: 1768, column: 13, scope: !4676)
!4695 = !DILocation(line: 1769, column: 30, scope: !4676)
!4696 = !DILocation(line: 1769, column: 28, scope: !4676)
!4697 = !DILocation(line: 0, scope: !4676)
!4698 = !DILocation(line: 1772, column: 41, scope: !4563)
!4699 = !{!91, !92, i64 2000}
!4700 = !DILocation(line: 1774, column: 9, scope: !4563)
!4701 = !DILocation(line: 1776, column: 20, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1776, column: 13)
!4703 = !DILocation(line: 1776, column: 30, scope: !4702)
!4704 = !DILocation(line: 1776, column: 13, scope: !4563)
!4705 = !DILocation(line: 1777, column: 30, scope: !4702)
!4706 = !DILocation(line: 1777, column: 13, scope: !4702)
!4707 = !DILocation(line: 1780, column: 19, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1780, column: 13)
!4709 = !DILocation(line: 1780, column: 13, scope: !4563)
!4710 = !DILocation(line: 1780, column: 71, scope: !4708)
!4711 = !DILocation(line: 1780, column: 64, scope: !4708)
!4712 = !DILocation(line: 1780, column: 26, scope: !4708)
!4713 = !DILocation(line: 1783, column: 66, scope: !4563)
!4714 = !DILocation(line: 1783, column: 74, scope: !4563)
!4715 = !DILocation(line: 1782, column: 9, scope: !4563)
!4716 = !DILocation(line: 1784, column: 5, scope: !4564)
!4717 = !DILocation(line: 1661, column: 10, scope: !4564)
!4718 = !DILocation(line: 1784, column: 38, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 1784, column: 16)
!4720 = !DILocation(line: 1784, column: 26, scope: !4719)
!4721 = !DILocation(line: 0, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1791, column: 12)
!4723 = !DILocation(line: 1789, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1784, column: 44)
!4725 = !DILocation(line: 1791, column: 5, scope: !4724)
!4726 = !DILocation(line: 1794, column: 9, scope: !4722)
!4727 = !DILocation(line: 1533, column: 30, scope: !940, inlinedAt: !4728)
!4728 = distinct !DILocation(line: 1799, column: 5, scope: !4556)
!4729 = !DILocation(line: 1533, column: 40, scope: !940, inlinedAt: !4728)
!4730 = !DILocation(line: 1533, column: 5, scope: !940, inlinedAt: !4728)
!4731 = !DILocation(line: 1534, column: 30, scope: !940, inlinedAt: !4728)
!4732 = !DILocation(line: 1534, column: 40, scope: !940, inlinedAt: !4728)
!4733 = !DILocation(line: 1534, column: 5, scope: !940, inlinedAt: !4728)
!4734 = !DILocation(line: 1535, column: 18, scope: !940, inlinedAt: !4728)
!4735 = !DILocation(line: 1535, column: 5, scope: !940, inlinedAt: !4728)
!4736 = !DILocation(line: 1536, column: 18, scope: !940, inlinedAt: !4728)
!4737 = !DILocation(line: 1536, column: 5, scope: !940, inlinedAt: !4728)
!4738 = !DILocation(line: 1537, column: 18, scope: !940, inlinedAt: !4728)
!4739 = !DILocation(line: 1537, column: 5, scope: !940, inlinedAt: !4728)
!4740 = !DILocation(line: 1538, column: 18, scope: !940, inlinedAt: !4728)
!4741 = !DILocation(line: 1538, column: 5, scope: !940, inlinedAt: !4728)
!4742 = !DILocation(line: 1539, column: 18, scope: !940, inlinedAt: !4728)
!4743 = !DILocation(line: 1539, column: 5, scope: !940, inlinedAt: !4728)
!4744 = !DILocation(line: 1540, column: 18, scope: !940, inlinedAt: !4728)
!4745 = !DILocation(line: 1540, column: 5, scope: !940, inlinedAt: !4728)
!4746 = !DILocation(line: 1541, column: 1, scope: !940, inlinedAt: !4728)
!4747 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 1800, column: 5, scope: !4556)
!4749 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !4748)
!4750 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !4748)
!4751 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !4748)
!4752 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !4748)
!4753 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !4748)
!4754 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !4748)
!4755 = !DILocation(line: 76, column: 1, scope: !85, inlinedAt: !4748)
!4756 = !DILocation(line: 1801, column: 30, scope: !4556)
!4757 = !DILocation(line: 1632, column: 30, scope: !889, inlinedAt: !4570)
!4758 = !DILocation(line: 1633, column: 5, scope: !889, inlinedAt: !4570)
!4759 = !DILocation(line: 1635, column: 5, scope: !889, inlinedAt: !4570)
!4760 = !DILocation(line: 1636, column: 5, scope: !889, inlinedAt: !4570)
!4761 = !DILocation(line: 1637, column: 1, scope: !889, inlinedAt: !4570)
!4762 = !DILocation(line: 1802, column: 26, scope: !4556)
!4763 = !DILocation(line: 1803, column: 36, scope: !4556)
!4764 = !DILocation(line: 1803, column: 54, scope: !4556)
!4765 = !DILocation(line: 1803, column: 46, scope: !4556)
!4766 = !DILocation(line: 1803, column: 34, scope: !4556)
!4767 = !{!91, !96, i64 1984}
!4768 = !DILocation(line: 1804, column: 35, scope: !4556)
!4769 = !DILocation(line: 1806, column: 16, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 1806, column: 9)
!4771 = !DILocation(line: 1806, column: 26, scope: !4770)
!4772 = !DILocation(line: 1806, column: 9, scope: !4556)
!4773 = !DILocation(line: 1807, column: 38, scope: !4770)
!4774 = !DILocation(line: 1807, column: 9, scope: !4770)
!4775 = !DILocation(line: 1808, column: 1, scope: !4556)
