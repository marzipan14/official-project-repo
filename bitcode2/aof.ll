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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %2, label %4, label %3, !dbg !103

; <label>:3:                                      ; preds = %0
  tail call void @listRelease(%struct.list* nonnull %1) #6, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !150
  %5 = icmp eq %struct.listNode* %4, null, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %5, label %17, label %6, !dbg !149

; <label>:6:                                      ; preds = %0, %6
  %7 = phi %struct.listNode* [ %15, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %0 ]
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !152
  %10 = bitcast i8** %9 to %struct.aofrwblock**, !dbg !152
  %11 = load %struct.aofrwblock*, %struct.aofrwblock** %10, align 8, !dbg !152, !tbaa !153
  %12 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %11, i64 0, i32 0, !dbg !156
  %13 = load i64, i64* %12, align 8, !dbg !156, !tbaa !157
  %14 = add i64 %13, %8, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !150
  %16 = icmp eq %struct.listNode* %15, null, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %16, label %17, label %6, !dbg !149, !llvm.loop !160

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !241, !tbaa !90
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 0, !dbg !241
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !241, !tbaa !243
  %8 = icmp eq %struct.listNode* %7, null, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %8, label %9, label %10, !dbg !245

; <label>:9:                                      ; preds = %48, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br label %20, !dbg !247

; <label>:10:                                     ; preds = %4, %48
  %11 = phi %struct.list* [ %49, %48 ], [ %5, %4 ]
  %12 = phi %struct.listNode* [ %51, %48 ], [ %7, %4 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !249
  %14 = bitcast i8** %13 to %struct.aofrwblock**, !dbg !249
  %15 = load %struct.aofrwblock*, %struct.aofrwblock** %14, align 8, !dbg !249, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !250, !tbaa !251
  %17 = icmp eq i32 %16, 0, !dbg !252
  %18 = icmp ne %struct.aofrwblock* %15, null, !dbg !253
  %19 = and i1 %18, %17, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %19, label %23, label %20, !dbg !247

; <label>:20:                                     ; preds = %10, %9
  %21 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !254, !tbaa !256
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !257, !tbaa !258
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %21, i32 %22, i32 2) #6, !dbg !259
  br label %53, !dbg !260

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %15, i64 0, i32 0, !dbg !261
  %25 = load i64, i64* %24, align 8, !dbg !261, !tbaa !157
  %26 = icmp eq i64 %25, 0, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %26, label %27, label %28, !dbg !264

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br label %46, !dbg !265

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !266, !tbaa !258
  %30 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %15, i64 0, i32 2, i64 0, !dbg !268
  %31 = tail call i64 @write(i32 %29, i8* nonnull %30, i64 %25) #6, !dbg !269
  %32 = icmp slt i64 %31, 1, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %32, label %53, label %33, !dbg !273

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %15, i64 0, i32 2, i64 %31, !dbg !274
  %35 = load i64, i64* %24, align 8, !dbg !275, !tbaa !157
  %36 = sub i64 %35, %31, !dbg !276
  %37 = tail call i8* @memmove(i8* nonnull %30, i8* nonnull %34, i64 %36) #6, !dbg !277
  %38 = load i64, i64* %24, align 8, !dbg !278, !tbaa !157
  %39 = sub i64 %38, %31, !dbg !278
  store i64 %39, i64* %24, align 8, !dbg !278, !tbaa !157
  %40 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %15, i64 0, i32 1, !dbg !279
  %41 = load i64, i64* %40, align 8, !dbg !280, !tbaa !281
  %42 = add i64 %41, %31, !dbg !280
  store i64 %42, i64* %40, align 8, !dbg !280, !tbaa !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  %43 = icmp eq i64 %39, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %43, label %44, label %48, !dbg !265

; <label>:44:                                     ; preds = %33
  %45 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !285, !tbaa !90
  br label %46, !dbg !265

; <label>:46:                                     ; preds = %44, %27
  %47 = phi %struct.list* [ %45, %44 ], [ %11, %27 ], !dbg !285
  tail call void @listDelNode(%struct.list* %47, %struct.listNode* nonnull %12) #6, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %48, !dbg !286

; <label>:48:                                     ; preds = %46, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !241, !tbaa !90
  %50 = getelementptr inbounds %struct.list, %struct.list* %49, i64 0, i32 0, !dbg !241
  %51 = load %struct.listNode*, %struct.listNode** %50, align 8, !dbg !241, !tbaa !243
  %52 = icmp eq %struct.listNode* %51, null, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %52, label %9, label %10, !dbg !245, !llvm.loop !287

; <label>:53:                                     ; preds = %28, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  ret void, !dbg !290
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
define dso_local void @aofRewriteBufferAppend(i8*, i64) local_unnamed_addr #0 !dbg !291 {
  %3 = alloca %struct.listIter, align 8
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !311, !tbaa !90
  %5 = getelementptr inbounds %struct.list, %struct.list* %4, i64 0, i32 1, !dbg !311
  %6 = load %struct.listNode*, %struct.listNode** %5, align 8, !dbg !311, !tbaa !312
  %7 = icmp eq %struct.listNode* %6, null, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %7, label %12, label %8, !dbg !314

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %6, i64 0, i32 2, !dbg !315
  %10 = bitcast i8** %9 to %struct.aofrwblock**, !dbg !315
  %11 = load %struct.aofrwblock*, %struct.aofrwblock** %10, align 8, !dbg !315, !tbaa !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br label %12, !dbg !314

; <label>:12:                                     ; preds = %2, %8
  %13 = phi %struct.aofrwblock* [ %11, %8 ], [ null, %2 ], !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %14 = icmp eq i64 %1, 0, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %14, label %80, label %15, !dbg !317

; <label>:15:                                     ; preds = %12
  %16 = bitcast %struct.listIter* %3 to i8*
  br label %17, !dbg !317

; <label>:17:                                     ; preds = %15, %78
  %18 = phi i8* [ %0, %15 ], [ %44, %78 ]
  %19 = phi i64 [ %1, %15 ], [ %45, %78 ]
  %20 = phi %struct.aofrwblock* [ %13, %15 ], [ %47, %78 ]
  %21 = icmp eq %struct.aofrwblock* %20, null, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %21, label %42, label %22, !dbg !319

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 1, !dbg !320
  %24 = load i64, i64* %23, align 8, !dbg !320, !tbaa !281
  %25 = icmp ult i64 %24, %19, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %26 = select i1 %25, i64 %24, i64 %19, !dbg !322
  %27 = icmp eq i64 %26, 0, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %27, label %28, label %29, !dbg !326

; <label>:28:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br label %42, !dbg !328

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 0, !dbg !329
  %31 = load i64, i64* %30, align 8, !dbg !329, !tbaa !157
  %32 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %20, i64 0, i32 2, i64 %31, !dbg !331
  %33 = call i8* @memcpy(i8* nonnull %32, i8* %18, i64 %26) #6, !dbg !332
  %34 = load i64, i64* %30, align 8, !dbg !333, !tbaa !157
  %35 = add i64 %34, %26, !dbg !333
  store i64 %35, i64* %30, align 8, !dbg !333, !tbaa !157
  %36 = load i64, i64* %23, align 8, !dbg !334, !tbaa !281
  %37 = sub i64 %36, %26, !dbg !334
  store i64 %37, i64* %23, align 8, !dbg !334, !tbaa !281
  %38 = getelementptr inbounds i8, i8* %18, i64 %26, !dbg !335
  %39 = sub i64 %19, %26, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %40 = icmp eq i64 %39, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %40, label %41, label %43, !dbg !328

; <label>:41:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br label %80, !dbg !317

; <label>:42:                                     ; preds = %17, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br label %43, !dbg !339

; <label>:43:                                     ; preds = %42, %29
  %44 = phi i8* [ %38, %29 ], [ %18, %42 ]
  %45 = phi i64 [ %39, %29 ], [ %19, %42 ]
  %46 = call i8* @zmalloc(i64 10485776) #6, !dbg !339
  %47 = bitcast i8* %46 to %struct.aofrwblock*, !dbg !339
  %48 = bitcast i8* %46 to <2 x i64>*, !dbg !340
  store <2 x i64> <i64 0, i64 10485760>, <2 x i64>* %48, align 8, !dbg !340, !tbaa !341
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !342, !tbaa !90
  %50 = call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %46) #6, !dbg !343
  %51 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !344, !tbaa !90
  %52 = getelementptr inbounds %struct.list, %struct.list* %51, i64 0, i32 5, !dbg !344
  %53 = load i64, i64* %52, align 8, !dbg !344, !tbaa !345
  %54 = trunc i64 %53 to i32, !dbg !344
  %55 = add nsw i32 %54, 1, !dbg !347
  %56 = srem i32 %55, 10, !dbg !348
  %57 = icmp eq i32 %56, 0, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %57, label %58, label %78, !dbg !350

; <label>:58:                                     ; preds = %43
  %59 = srem i32 %55, 100, !dbg !351
  %60 = icmp eq i32 %59, 0, !dbg !352
  %61 = select i1 %60, i32 3, i32 2, !dbg !353
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !355
  call void @listRewind(%struct.list* %51, %struct.listIter* nonnull %3) #6, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  %62 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !361
  %63 = icmp eq %struct.listNode* %62, null, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %63, label %75, label %64, !dbg !360

; <label>:64:                                     ; preds = %58, %64
  %65 = phi %struct.listNode* [ %73, %64 ], [ %62, %58 ]
  %66 = phi i64 [ %72, %64 ], [ 0, %58 ]
  %67 = getelementptr inbounds %struct.listNode, %struct.listNode* %65, i64 0, i32 2, !dbg !363
  %68 = bitcast i8** %67 to %struct.aofrwblock**, !dbg !363
  %69 = load %struct.aofrwblock*, %struct.aofrwblock** %68, align 8, !dbg !363, !tbaa !153
  %70 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %69, i64 0, i32 0, !dbg !365
  %71 = load i64, i64* %70, align 8, !dbg !365, !tbaa !157
  %72 = add i64 %71, %66, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  %73 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !361
  %74 = icmp eq %struct.listNode* %73, null, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %74, label %75, label %64, !dbg !360, !llvm.loop !160

; <label>:75:                                     ; preds = %64, %58
  %76 = phi i64 [ 0, %58 ], [ %72, %64 ], !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  %77 = lshr i64 %76, 20, !dbg !370
  call void (i32, i8*, ...) @serverLog(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %77) #6, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br label %78, !dbg !372

; <label>:78:                                     ; preds = %43, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %79 = icmp eq i64 %45, 0, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %79, label %80, label %17, !dbg !317, !llvm.loop !374

; <label>:80:                                     ; preds = %78, %41, %12
  %81 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !376, !tbaa !256
  %82 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !378, !tbaa !258
  %83 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %81, i32 %82) #6, !dbg !379
  %84 = icmp eq i32 %83, 0, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %84, label %85, label %89, !dbg !381

; <label>:85:                                     ; preds = %80
  %86 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !382, !tbaa !256
  %87 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !384, !tbaa !258
  %88 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %86, i32 %87, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildWriteDiffData, i8* null) #6, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %89, !dbg !386

; <label>:89:                                     ; preds = %85, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  ret void, !dbg !387
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
define dso_local i64 @aofRewriteBufferWrite(i32) local_unnamed_addr #0 !dbg !388 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !400
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !400
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !402, !tbaa !90
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #6, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !406
  %6 = icmp eq %struct.listNode* %5, null, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %6, label %32, label %7, !dbg !405

; <label>:7:                                      ; preds = %1, %28
  %8 = phi %struct.listNode* [ %30, %28 ], [ %5, %1 ]
  %9 = phi i64 [ %29, %28 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !408
  %11 = bitcast i8** %10 to %struct.aofrwblock**, !dbg !408
  %12 = load %struct.aofrwblock*, %struct.aofrwblock** %11, align 8, !dbg !408, !tbaa !153
  %13 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 0, !dbg !410
  %14 = load i64, i64* %13, align 8, !dbg !410, !tbaa !157
  %15 = icmp eq i64 %14, 0, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %15, label %28, label %16, !dbg !413

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 2, i64 0, !dbg !414
  %18 = call i64 @write(i32 %0, i8* nonnull %17, i64 %14) #6, !dbg !416
  %19 = load i64, i64* %13, align 8, !dbg !418, !tbaa !157
  %20 = icmp eq i64 %18, %19, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %20, label %26, label %21, !dbg !421

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i64 %18, 0, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %22, label %23, label %25, !dbg !425

; <label>:23:                                     ; preds = %21
  %24 = call i32* @__errno() #6, !dbg !426
  store i32 5, i32* %24, align 4, !dbg !427, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %25, !dbg !426

; <label>:25:                                     ; preds = %21, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br label %32

; <label>:26:                                     ; preds = %16
  %27 = add nsw i64 %18, %9, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  br label %28, !dbg !431

; <label>:28:                                     ; preds = %26, %7
  %29 = phi i64 [ %27, %26 ], [ %9, %7 ], !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !406
  %31 = icmp eq %struct.listNode* %30, null, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %31, label %32, label %7, !dbg !405

; <label>:32:                                     ; preds = %28, %1, %25
  %33 = phi i64 [ -1, %25 ], [ 0, %1 ], [ %29, %28 ], !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  ret i64 %33, !dbg !434
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @aofFsyncInProgress() local_unnamed_addr #0 !dbg !435 {
  %1 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !438
  %2 = icmp ne i64 %1, 0, !dbg !439
  %3 = zext i1 %2 to i32, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  ret i32 %3, !dbg !440
}

; Function Attrs: noredzone
declare dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aof_background_fsync(i32) local_unnamed_addr #0 !dbg !441 {
  %2 = sext i32 %0 to i64, !dbg !445
  %3 = inttoptr i64 %2 to i8*, !dbg !446
  tail call void @bioCreateBackgroundJob(i32 1, i8* %3, i8* null, i8* null) #6, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  ret void, !dbg !448
}

; Function Attrs: noredzone
declare dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @stopAppendOnly() local_unnamed_addr #0 !dbg !449 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !450, !tbaa !451
  %2 = icmp eq i32 %1, 0, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %2, label %3, label %4, !dbg !450

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 235) #6, !dbg !450
  tail call void @_exit(i32 1) #8, !dbg !450
  unreachable

; <label>:4:                                      ; preds = %0
  tail call void @flushAppendOnlyFile(i32 1) #9, !dbg !452
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !453, !tbaa !454
  %6 = tail call i32 @fsync(i32 %5) #6, !dbg !455
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !456, !tbaa !454
  %8 = tail call i32 @close(i32 %7) #6, !dbg !457
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !458, !tbaa !454
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !459, !tbaa !460
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !461, !tbaa !451
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  ret void, !dbg !463
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @flushAppendOnlyFile(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !466, !tbaa !468
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !481
  %4 = load i8, i8* %3, align 1, !dbg !481, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  %5 = trunc i8 %4 to i3, !dbg !484
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !484

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %4, 3, !dbg !485
  %8 = zext i8 %7 to i64, !dbg !485
  br label %30, !dbg !487

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !488
  %11 = load i8, i8* %10, align 1, !dbg !489, !tbaa !482
  %12 = zext i8 %11 to i64, !dbg !488
  br label %30, !dbg !490

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !491
  %15 = bitcast i8* %14 to i16*, !dbg !492
  %16 = load i16, i16* %15, align 1, !dbg !492, !tbaa !493
  %17 = zext i16 %16 to i64, !dbg !491
  br label %30, !dbg !495

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !496
  %20 = bitcast i8* %19 to i32*, !dbg !497
  %21 = load i32, i32* %20, align 1, !dbg !497, !tbaa !428
  %22 = zext i32 %21 to i64, !dbg !496
  br label %30, !dbg !498

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !499
  %25 = bitcast i8* %24 to i64*, !dbg !500
  %26 = load i64, i64* %25, align 1, !dbg !500, !tbaa !341
  br label %30, !dbg !501

; <label>:27:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !504, !tbaa !506
  %29 = icmp eq i32 %28, 2, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %29, label %36, label %374, !dbg !509

; <label>:30:                                     ; preds = %6, %9, %13, %18, %23
  %31 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  %32 = icmp eq i64 %31, 0, !dbg !514
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !504, !tbaa !506
  %34 = icmp eq i32 %33, 2, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br i1 %32, label %35, label %47, !dbg !507

; <label>:35:                                     ; preds = %30
  br i1 %34, label %36, label %374, !dbg !509

; <label>:36:                                     ; preds = %27, %35
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !515, !tbaa !516
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !517, !tbaa !518
  %39 = icmp eq i64 %37, %38, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %39, label %374, label %40, !dbg !520

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !521, !tbaa !522
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !523, !tbaa !524
  %43 = icmp sgt i64 %41, %42, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %43, label %44, label %374, !dbg !526

; <label>:44:                                     ; preds = %40
  %45 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !527
  %46 = icmp eq i64 %45, 0, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br i1 %46, label %323, label %374, !dbg !531

; <label>:47:                                     ; preds = %30
  br i1 %34, label %48, label %68, !dbg !532

; <label>:48:                                     ; preds = %47
  %49 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !533
  %50 = icmp ne i64 %49, 0, !dbg !535
  %51 = zext i1 %50 to i32, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !538, !tbaa !506
  %53 = icmp eq i32 %52, 2, !dbg !540
  %54 = icmp eq i32 %0, 0, !dbg !541
  %55 = and i1 %54, %53, !dbg !542
  %56 = and i1 %50, %55, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %56, label %57, label %71, !dbg !542

; <label>:57:                                     ; preds = %48
  %58 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !543, !tbaa !548
  %59 = icmp eq i64 %58, 0, !dbg !549
  %60 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !550, !tbaa !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %59, label %61, label %62, !dbg !552

; <label>:61:                                     ; preds = %57
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !553, !tbaa !548
  br label %374, !dbg !555

; <label>:62:                                     ; preds = %57
  %63 = sub nsw i64 %60, %58, !dbg !556
  %64 = icmp slt i64 %63, 2, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %64, label %374, label %65, !dbg !558

; <label>:65:                                     ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !559, !tbaa !560
  %67 = add i64 %66, 1, !dbg !559
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !559, !tbaa !560
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !561
  br label %68, !dbg !562

; <label>:68:                                     ; preds = %47, %65
  %69 = phi i1 [ %50, %65 ], [ false, %47 ]
  %70 = phi i32 [ 1, %65 ], [ 0, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  br label %71, !dbg !564

; <label>:71:                                     ; preds = %68, %48
  %72 = phi i1 [ %50, %48 ], [ %69, %68 ]
  %73 = phi i32 [ %51, %48 ], [ %70, %68 ]
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !564, !tbaa !566
  %75 = icmp eq i64 %74, 0, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %75, label %78, label %76, !dbg !567

; <label>:76:                                     ; preds = %71
  %77 = tail call i64 @mstime() #6, !dbg !568
  br label %78, !dbg !568

; <label>:78:                                     ; preds = %71, %76
  %79 = phi i64 [ %77, %76 ], [ 0, %71 ], !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !571, !tbaa !454
  %81 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !572, !tbaa !468
  %82 = getelementptr inbounds i8, i8* %81, i64 -1, !dbg !575
  %83 = load i8, i8* %82, align 1, !dbg !575, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  %84 = trunc i8 %83 to i3, !dbg !577
  switch i3 %84, label %106 [
    i3 0, label %85
    i3 1, label %88
    i3 2, label %92
    i3 3, label %97
    i3 -4, label %102
  ], !dbg !577

; <label>:85:                                     ; preds = %78
  %86 = lshr i8 %83, 3, !dbg !578
  %87 = zext i8 %86 to i64, !dbg !578
  br label %106, !dbg !579

; <label>:88:                                     ; preds = %78
  %89 = getelementptr inbounds i8, i8* %81, i64 -3, !dbg !580
  %90 = load i8, i8* %89, align 1, !dbg !581, !tbaa !482
  %91 = zext i8 %90 to i64, !dbg !580
  br label %106, !dbg !582

; <label>:92:                                     ; preds = %78
  %93 = getelementptr inbounds i8, i8* %81, i64 -5, !dbg !583
  %94 = bitcast i8* %93 to i16*, !dbg !584
  %95 = load i16, i16* %94, align 1, !dbg !584, !tbaa !493
  %96 = zext i16 %95 to i64, !dbg !583
  br label %106, !dbg !585

; <label>:97:                                     ; preds = %78
  %98 = getelementptr inbounds i8, i8* %81, i64 -9, !dbg !586
  %99 = bitcast i8* %98 to i32*, !dbg !587
  %100 = load i32, i32* %99, align 1, !dbg !587, !tbaa !428
  %101 = zext i32 %100 to i64, !dbg !586
  br label %106, !dbg !588

; <label>:102:                                    ; preds = %78
  %103 = getelementptr inbounds i8, i8* %81, i64 -17, !dbg !589
  %104 = bitcast i8* %103 to i64*, !dbg !590
  %105 = load i64, i64* %104, align 1, !dbg !590, !tbaa !341
  br label %106, !dbg !591

; <label>:106:                                    ; preds = %78, %85, %88, %92, %97, %102
  %107 = phi i64 [ %105, %102 ], [ %101, %97 ], [ %96, %92 ], [ %91, %88 ], [ %87, %85 ], [ 0, %78 ], !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br label %108, !dbg !614

; <label>:108:                                    ; preds = %124, %106
  %109 = phi i8* [ %126, %124 ], [ %81, %106 ]
  %110 = phi i64 [ %125, %124 ], [ %107, %106 ]
  %111 = phi i64 [ %127, %124 ], [ 0, %106 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %112 = icmp eq i64 %110, 0
  br label %113, !dbg !614

; <label>:113:                                    ; preds = %117, %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %112, label %128, label %114, !dbg !614

; <label>:114:                                    ; preds = %113
  %115 = tail call i64 @write(i32 %80, i8* %109, i64 %110) #6, !dbg !615
  %116 = icmp slt i64 %115, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %116, label %117, label %124, !dbg !619

; <label>:117:                                    ; preds = %114
  %118 = tail call i32* @__errno() #6, !dbg !620
  %119 = load i32, i32* %118, align 4, !dbg !620, !tbaa !428
  %120 = icmp eq i32 %119, 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %120, label %113, label %121, !dbg !624, !llvm.loop !625

; <label>:121:                                    ; preds = %117
  %122 = icmp eq i64 %111, 0, !dbg !628
  %123 = select i1 %122, i64 -1, i64 %111, !dbg !628
  br label %128, !dbg !629

; <label>:124:                                    ; preds = %114
  %125 = sub i64 %110, %115, !dbg !630
  %126 = getelementptr inbounds i8, i8* %109, i64 %115, !dbg !631
  %127 = add nsw i64 %115, %111, !dbg !632
  br label %108, !dbg !614, !llvm.loop !625

; <label>:128:                                    ; preds = %113, %121
  %129 = phi i64 [ %123, %121 ], [ %111, %113 ], !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  %130 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !636, !tbaa !566
  %131 = icmp eq i64 %130, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %131, label %135, label %132, !dbg !638

; <label>:132:                                    ; preds = %128
  %133 = tail call i64 @mstime() #6, !dbg !639
  %134 = sub nsw i64 %133, %79, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %135, !dbg !639

; <label>:135:                                    ; preds = %128, %132
  %136 = phi i64 [ %134, %132 ], [ %79, %128 ], !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %72, label %137, label %143, !dbg !642

; <label>:137:                                    ; preds = %135
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !643, !tbaa !566
  %139 = icmp eq i64 %138, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %139, label %158, label %140, !dbg !643

; <label>:140:                                    ; preds = %137
  %141 = icmp slt i64 %136, %138, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  br i1 %141, label %159, label %142, !dbg !647

; <label>:142:                                    ; preds = %140
  tail call void @latencyAddSample(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %136) #6, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br label %159, !dbg !643

; <label>:143:                                    ; preds = %135
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !648, !tbaa !650
  %145 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !651
  %146 = and i32 %145, %144, !dbg !652
  %147 = icmp eq i32 %146, -1, !dbg !652
  %148 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !653, !tbaa !566
  %149 = icmp ne i64 %148, 0, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  br i1 %147, label %154, label %150, !dbg !652

; <label>:150:                                    ; preds = %143
  br i1 %149, label %151, label %158, !dbg !659

; <label>:151:                                    ; preds = %150
  %152 = icmp slt i64 %136, %148, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %152, label %159, label %153, !dbg !660

; <label>:153:                                    ; preds = %151
  tail call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %136) #6, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br label %159, !dbg !659

; <label>:154:                                    ; preds = %143
  br i1 %149, label %155, label %158, !dbg !661

; <label>:155:                                    ; preds = %154
  %156 = icmp slt i64 %136, %148, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %156, label %159, label %157, !dbg !662

; <label>:157:                                    ; preds = %155
  tail call void @latencyAddSample(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64 %136) #6, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br label %159, !dbg !661

; <label>:158:                                    ; preds = %137, %150, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %165, !dbg !663

; <label>:159:                                    ; preds = %140, %151, %155, %153, %157, %142
  %160 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !663, !tbaa !566
  %161 = icmp eq i64 %160, 0, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br i1 %161, label %165, label %162, !dbg !663

; <label>:162:                                    ; preds = %159
  %163 = icmp slt i64 %136, %160, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br i1 %163, label %165, label %164, !dbg !665

; <label>:164:                                    ; preds = %162
  tail call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %136) #6, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %165, !dbg !663

; <label>:165:                                    ; preds = %158, %162, %159, %164
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !666, !tbaa !548
  %166 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !667, !tbaa !468
  %167 = getelementptr inbounds i8, i8* %166, i64 -1, !dbg !670
  %168 = load i8, i8* %167, align 1, !dbg !670, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  %169 = trunc i8 %168 to i3, !dbg !672
  switch i3 %169, label %191 [
    i3 0, label %170
    i3 1, label %173
    i3 2, label %177
    i3 3, label %182
    i3 -4, label %187
  ], !dbg !672

; <label>:170:                                    ; preds = %165
  %171 = lshr i8 %168, 3, !dbg !673
  %172 = zext i8 %171 to i64, !dbg !673
  br label %191, !dbg !674

; <label>:173:                                    ; preds = %165
  %174 = getelementptr inbounds i8, i8* %166, i64 -3, !dbg !675
  %175 = load i8, i8* %174, align 1, !dbg !676, !tbaa !482
  %176 = zext i8 %175 to i64, !dbg !675
  br label %191, !dbg !677

; <label>:177:                                    ; preds = %165
  %178 = getelementptr inbounds i8, i8* %166, i64 -5, !dbg !678
  %179 = bitcast i8* %178 to i16*, !dbg !679
  %180 = load i16, i16* %179, align 1, !dbg !679, !tbaa !493
  %181 = zext i16 %180 to i64, !dbg !678
  br label %191, !dbg !680

; <label>:182:                                    ; preds = %165
  %183 = getelementptr inbounds i8, i8* %166, i64 -9, !dbg !681
  %184 = bitcast i8* %183 to i32*, !dbg !682
  %185 = load i32, i32* %184, align 1, !dbg !682, !tbaa !428
  %186 = zext i32 %185 to i64, !dbg !681
  br label %191, !dbg !683

; <label>:187:                                    ; preds = %165
  %188 = getelementptr inbounds i8, i8* %166, i64 -17, !dbg !684
  %189 = bitcast i8* %188 to i64*, !dbg !685
  %190 = load i64, i64* %189, align 1, !dbg !685, !tbaa !341
  br label %191, !dbg !686

; <label>:191:                                    ; preds = %165, %170, %173, %177, %182, %187
  %192 = phi i64 [ %190, %187 ], [ %186, %182 ], [ %181, %177 ], [ %176, %173 ], [ %172, %170 ], [ 0, %165 ], !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %193 = icmp eq i64 %129, %192, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %193, label %261, label %194, !dbg !691

; <label>:194:                                    ; preds = %191
  %195 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !693, !tbaa !522
  %196 = load i64, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !695, !tbaa !341
  %197 = sub nsw i64 %195, %196, !dbg !696
  %198 = icmp sgt i64 %197, 30, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br i1 %198, label %199, label %200, !dbg !698

; <label>:199:                                    ; preds = %194
  store i64 %195, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !699, !tbaa !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br label %200, !dbg !701

; <label>:200:                                    ; preds = %199, %194
  %201 = phi i1 [ true, %199 ], [ false, %194 ]
  %202 = icmp eq i64 %129, -1, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %202, label %203, label %210, !dbg !704

; <label>:203:                                    ; preds = %200
  br i1 %201, label %204, label %250, !dbg !707

; <label>:204:                                    ; preds = %203
  %205 = tail call i32* @__errno() #6, !dbg !709
  %206 = load i32, i32* %205, align 4, !dbg !709, !tbaa !428
  %207 = tail call i8* @strerror(i32 %206) #6, !dbg !712
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %207) #6, !dbg !713
  %208 = tail call i32* @__errno() #6, !dbg !714
  %209 = load i32, i32* %208, align 4, !dbg !714, !tbaa !428
  br label %247, !dbg !715

; <label>:210:                                    ; preds = %200
  br i1 %201, label %211, label %235, !dbg !716

; <label>:211:                                    ; preds = %210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  switch i3 %169, label %233 [
    i3 0, label %212
    i3 1, label %215
    i3 2, label %219
    i3 3, label %224
    i3 -4, label %229
  ], !dbg !722

; <label>:212:                                    ; preds = %211
  %213 = lshr i8 %168, 3, !dbg !723
  %214 = zext i8 %213 to i64, !dbg !723
  br label %233, !dbg !724

; <label>:215:                                    ; preds = %211
  %216 = getelementptr inbounds i8, i8* %166, i64 -3, !dbg !725
  %217 = load i8, i8* %216, align 1, !dbg !726, !tbaa !482
  %218 = zext i8 %217 to i64, !dbg !725
  br label %233, !dbg !727

; <label>:219:                                    ; preds = %211
  %220 = getelementptr inbounds i8, i8* %166, i64 -5, !dbg !728
  %221 = bitcast i8* %220 to i16*, !dbg !729
  %222 = load i16, i16* %221, align 1, !dbg !729, !tbaa !493
  %223 = zext i16 %222 to i64, !dbg !728
  br label %233, !dbg !730

; <label>:224:                                    ; preds = %211
  %225 = getelementptr inbounds i8, i8* %166, i64 -9, !dbg !731
  %226 = bitcast i8* %225 to i32*, !dbg !732
  %227 = load i32, i32* %226, align 1, !dbg !732, !tbaa !428
  %228 = zext i32 %227 to i64, !dbg !731
  br label %233, !dbg !733

; <label>:229:                                    ; preds = %211
  %230 = getelementptr inbounds i8, i8* %166, i64 -17, !dbg !734
  %231 = bitcast i8* %230 to i64*, !dbg !735
  %232 = load i64, i64* %231, align 1, !dbg !735, !tbaa !341
  br label %233, !dbg !736

; <label>:233:                                    ; preds = %211, %212, %215, %219, %224, %229
  %234 = phi i64 [ %232, %229 ], [ %228, %224 ], [ %223, %219 ], [ %218, %215 ], [ %214, %212 ], [ 0, %211 ], !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0), i64 %129, i64 %234) #6, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %235, !dbg !741

; <label>:235:                                    ; preds = %233, %210
  %236 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !742, !tbaa !454
  %237 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !744, !tbaa !518
  %238 = tail call i32 @ftruncate(i32 %236, i64 %237) #6, !dbg !745
  %239 = icmp ne i32 %238, -1, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %240 = xor i1 %201, true, !dbg !747
  %241 = or i1 %239, %240, !dbg !747
  %242 = select i1 %239, i64 -1, i64 %129, !dbg !747
  br i1 %241, label %247, label %243, !dbg !747

; <label>:243:                                    ; preds = %235
  %244 = tail call i32* @__errno() #6, !dbg !748
  %245 = load i32, i32* %244, align 4, !dbg !748, !tbaa !428
  %246 = tail call i8* @strerror(i32 %245) #6, !dbg !752
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.16, i64 0, i64 0), i8* %246) #6, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br label %247, !dbg !754

; <label>:247:                                    ; preds = %243, %235, %204
  %248 = phi i32 [ %209, %204 ], [ 28, %235 ], [ 28, %243 ]
  %249 = phi i64 [ -1, %204 ], [ %242, %235 ], [ %129, %243 ]
  store i32 %248, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !705, !tbaa !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %250, !dbg !756

; <label>:250:                                    ; preds = %247, %203
  %251 = phi i64 [ -1, %203 ], [ %249, %247 ], !dbg !758
  %252 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !756, !tbaa !506
  %253 = icmp eq i32 %252, 1, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br i1 %253, label %254, label %255, !dbg !760

; <label>:254:                                    ; preds = %250
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !761
  tail call void @exit(i32 1) #8, !dbg !763
  unreachable

; <label>:255:                                    ; preds = %250
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !764, !tbaa !766
  %256 = icmp sgt i64 %251, 0, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %256, label %257, label %374, !dbg !769

; <label>:257:                                    ; preds = %255
  %258 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !770, !tbaa !518
  %259 = add nsw i64 %258, %251, !dbg !770
  store i64 %259, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !770, !tbaa !518
  %260 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !772, !tbaa !468
  tail call void @sdsrange(i8* %260, i64 %251, i64 -1) #6, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br label %374, !dbg !774

; <label>:261:                                    ; preds = %191
  %262 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !775, !tbaa !766
  %263 = icmp eq i32 %262, -1, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %263, label %264, label %267, !dbg !779

; <label>:264:                                    ; preds = %261
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !780
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !782, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %265 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !784, !tbaa !468
  %266 = getelementptr inbounds i8, i8* %265, i64 -1, !dbg !786
  br label %267, !dbg !783

; <label>:267:                                    ; preds = %261, %264
  %268 = phi i8* [ %167, %261 ], [ %266, %264 ], !dbg !786
  %269 = phi i8* [ %166, %261 ], [ %265, %264 ], !dbg !784
  %270 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !788, !tbaa !518
  %271 = add nsw i64 %270, %129, !dbg !788
  store i64 %271, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !788, !tbaa !518
  %272 = load i8, i8* %268, align 1, !dbg !786, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  %273 = trunc i8 %272 to i3, !dbg !791
  switch i3 %273, label %313 [
    i3 0, label %274
    i3 1, label %277
    i3 2, label %285
    i3 3, label %295
    i3 -4, label %305
  ], !dbg !791

; <label>:274:                                    ; preds = %267
  %275 = lshr i8 %272, 3, !dbg !792
  %276 = zext i8 %275 to i64, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br label %314, !dbg !812

; <label>:277:                                    ; preds = %267
  %278 = getelementptr inbounds i8, i8* %269, i64 -3, !dbg !814
  %279 = load i8, i8* %278, align 1, !dbg !815, !tbaa !482
  %280 = zext i8 %279 to i64, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %281 = getelementptr inbounds i8, i8* %269, i64 -2, !dbg !818
  %282 = load i8, i8* %281, align 1, !dbg !818, !tbaa !482
  %283 = zext i8 %282 to i64, !dbg !819
  %284 = sub nsw i64 %283, %280, !dbg !820
  br label %314

; <label>:285:                                    ; preds = %267
  %286 = getelementptr inbounds i8, i8* %269, i64 -5, !dbg !821
  %287 = bitcast i8* %286 to i16*, !dbg !822
  %288 = load i16, i16* %287, align 1, !dbg !822, !tbaa !493
  %289 = zext i16 %288 to i64, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %290 = getelementptr inbounds i8, i8* %269, i64 -3, !dbg !825
  %291 = bitcast i8* %290 to i16*, !dbg !825
  %292 = load i16, i16* %291, align 1, !dbg !825, !tbaa !493
  %293 = zext i16 %292 to i64, !dbg !826
  %294 = sub nsw i64 %293, %289, !dbg !827
  br label %314

; <label>:295:                                    ; preds = %267
  %296 = getelementptr inbounds i8, i8* %269, i64 -9, !dbg !828
  %297 = bitcast i8* %296 to i32*, !dbg !829
  %298 = load i32, i32* %297, align 1, !dbg !829, !tbaa !428
  %299 = zext i32 %298 to i64, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %300 = getelementptr inbounds i8, i8* %269, i64 -5, !dbg !832
  %301 = bitcast i8* %300 to i32*, !dbg !832
  %302 = load i32, i32* %301, align 1, !dbg !832, !tbaa !428
  %303 = sub i32 %302, %298, !dbg !833
  %304 = zext i32 %303 to i64, !dbg !834
  br label %314

; <label>:305:                                    ; preds = %267
  %306 = getelementptr inbounds i8, i8* %269, i64 -17, !dbg !835
  %307 = bitcast i8* %306 to i64*, !dbg !836
  %308 = load i64, i64* %307, align 1, !dbg !836, !tbaa !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %309 = getelementptr inbounds i8, i8* %269, i64 -9, !dbg !839
  %310 = bitcast i8* %309 to i64*, !dbg !839
  %311 = load i64, i64* %310, align 1, !dbg !839, !tbaa !341
  %312 = sub i64 %311, %308, !dbg !840
  br label %314

; <label>:313:                                    ; preds = %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br label %314, !dbg !842

; <label>:314:                                    ; preds = %274, %277, %285, %295, %305, %313
  %315 = phi i64 [ 0, %313 ], [ %308, %305 ], [ %299, %295 ], [ %289, %285 ], [ %280, %277 ], [ %276, %274 ]
  %316 = phi i64 [ 0, %313 ], [ %312, %305 ], [ %304, %295 ], [ %294, %285 ], [ %284, %277 ], [ 0, %274 ], !dbg !843
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  %317 = add i64 %316, %315, !dbg !845
  %318 = icmp ult i64 %317, 4000, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %318, label %319, label %320, !dbg !847

; <label>:319:                                    ; preds = %314
  tail call void @sdsclear(i8* %269) #6, !dbg !848
  br label %322, !dbg !850

; <label>:320:                                    ; preds = %314
  tail call void @sdsfree(i8* %269) #6, !dbg !851
  %321 = tail call i8* @sdsempty() #6, !dbg !853
  store i8* %321, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !854, !tbaa !468
  br label %322

; <label>:322:                                    ; preds = %320, %319
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %323, !dbg !855

; <label>:323:                                    ; preds = %322, %44
  %324 = phi i32 [ 0, %44 ], [ %73, %322 ], !dbg !504
  %325 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 120), align 8, !dbg !855, !tbaa !857
  %326 = icmp eq i32 %325, 0, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br i1 %326, label %332, label %327, !dbg !859

; <label>:327:                                    ; preds = %323
  %328 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !860, !tbaa !650
  %329 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !861
  %330 = and i32 %329, %328, !dbg !862
  %331 = icmp eq i32 %330, -1, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br i1 %331, label %332, label %374, !dbg !862

; <label>:332:                                    ; preds = %327, %323
  %333 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !863, !tbaa !506
  %334 = icmp eq i32 %333, 1, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %334, label %335, label %358, !dbg !866

; <label>:335:                                    ; preds = %332
  %336 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !867, !tbaa !566
  %337 = icmp eq i64 %336, 0, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %337, label %340, label %338, !dbg !870

; <label>:338:                                    ; preds = %335
  %339 = tail call i64 @mstime() #6, !dbg !871
  br label %340, !dbg !871

; <label>:340:                                    ; preds = %335, %338
  %341 = phi i64 [ %339, %338 ], [ 0, %335 ], !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %342 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !873, !tbaa !454
  %343 = tail call i32 @fsync(i32 %342) #6, !dbg !874
  %344 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !875, !tbaa !566
  %345 = icmp eq i64 %344, 0, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br i1 %345, label %346, label %347, !dbg !877

; <label>:346:                                    ; preds = %340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br label %355, !dbg !878

; <label>:347:                                    ; preds = %340
  %348 = tail call i64 @mstime() #6, !dbg !880
  %349 = sub nsw i64 %348, %341, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  %350 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !878, !tbaa !566
  %351 = icmp eq i64 %350, 0, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %351, label %355, label %352, !dbg !878

; <label>:352:                                    ; preds = %347
  %353 = icmp slt i64 %349, %350, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  br i1 %353, label %355, label %354, !dbg !882

; <label>:354:                                    ; preds = %352
  tail call void @latencyAddSample(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %349) #6, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br label %355, !dbg !878

; <label>:355:                                    ; preds = %346, %352, %347, %354
  %356 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !883, !tbaa !518
  store i64 %356, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !884, !tbaa !516
  %357 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !885, !tbaa !522
  store i64 %357, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !886, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  br label %374, !dbg !887

; <label>:358:                                    ; preds = %332
  %359 = icmp eq i32 %333, 2, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %359, label %360, label %374, !dbg !890

; <label>:360:                                    ; preds = %358
  %361 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !891, !tbaa !522
  %362 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !892, !tbaa !524
  %363 = icmp sgt i64 %361, %362, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %363, label %364, label %374, !dbg !894

; <label>:364:                                    ; preds = %360
  %365 = icmp eq i32 %324, 0, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %365, label %366, label %372, !dbg !898

; <label>:366:                                    ; preds = %364
  %367 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !899, !tbaa !454
  %368 = sext i32 %367 to i64, !dbg !903
  %369 = inttoptr i64 %368 to i8*, !dbg !904
  tail call void @bioCreateBackgroundJob(i32 1, i8* %369, i8* null, i8* null) #6, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  %370 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !907, !tbaa !518
  store i64 %370, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !908, !tbaa !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  %371 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !910, !tbaa !522
  br label %372, !dbg !909

; <label>:372:                                    ; preds = %364, %366
  %373 = phi i64 [ %361, %364 ], [ %371, %366 ], !dbg !910
  store i64 %373, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !911, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br label %374, !dbg !912

; <label>:374:                                    ; preds = %355, %372, %360, %358, %327, %255, %257, %62, %35, %40, %36, %44, %27, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  ret void, !dbg !913
}

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @killAppendOnlyChild() unnamed_addr #0 !dbg !914 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !930
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !931, !tbaa !650
  %5 = icmp eq i32 %4, -1, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %5, label %42, label %6, !dbg !934

; <label>:6:                                      ; preds = %0
  %7 = sext i32 %4 to i64, !dbg !935
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i64 0, i64 0), i64 %7) #6, !dbg !936
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !937, !tbaa !650
  %9 = tail call i32 @kill(i32 %8, i32 10) #6, !dbg !939
  %10 = icmp eq i32 %9, -1, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %10, label %15, label %11, !dbg !941

; <label>:11:                                     ; preds = %6, %11
  %12 = call i32 @wait3(i32* nonnull %2, i32 0, %struct.rusage* null) #6, !dbg !943
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !945, !tbaa !650
  %14 = icmp eq i32 %12, %13, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %14, label %15, label %11, !dbg !947, !llvm.loop !948

; <label>:15:                                     ; preds = %11, %6
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !950, !tbaa !90
  %17 = icmp eq %struct.list* %16, null, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !953
  br i1 %17, label %19, label %18, !dbg !953

; <label>:18:                                     ; preds = %15
  call void @listRelease(%struct.list* nonnull %16) #6, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br label %19, !dbg !954

; <label>:19:                                     ; preds = %15, %18
  %20 = call %struct.list* @listCreate() #6, !dbg !955
  store %struct.list* %20, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !956, !tbaa !90
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i64 0, i32 3, !dbg !957
  store void (i8*)* @zfree, void (i8*)** %21, align 8, !dbg !957, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !959, !tbaa !650
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %23) #7, !dbg !961
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %22) #6, !dbg !962
  %25 = call i32 @unlink(i8* nonnull %23) #6, !dbg !963
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %23) #7, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !965, !tbaa !650
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !966, !tbaa !967
  %26 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !968, !tbaa !256
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !971, !tbaa !972
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %26, i32 %27, i32 1) #6, !dbg !973
  %28 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !974, !tbaa !256
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !975, !tbaa !258
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %28, i32 %29, i32 2) #6, !dbg !976
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !977, !tbaa !258
  %31 = call i32 @close(i32 %30) #6, !dbg !978
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !979, !tbaa !980
  %33 = call i32 @close(i32 %32) #6, !dbg !981
  %34 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !982, !tbaa !983
  %35 = call i32 @close(i32 %34) #6, !dbg !984
  %36 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !985, !tbaa !972
  %37 = call i32 @close(i32 %36) #6, !dbg !986
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !987, !tbaa !988
  %39 = call i32 @close(i32 %38) #6, !dbg !989
  %40 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !990, !tbaa !991
  %41 = call i32 @close(i32 %40) #6, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br label %42, !dbg !994

; <label>:42:                                     ; preds = %0, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  ret void, !dbg !994
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startAppendOnly() local_unnamed_addr #0 !dbg !996 {
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !1006
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !1008, !tbaa !1009
  %4 = tail call i32 (i8*, i32, ...) @open(i8* %3, i32 521, i32 420) #6, !dbg !1010
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1012, !tbaa !451
  %6 = icmp eq i32 %5, 0, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br i1 %6, label %8, label %7, !dbg !1012

; <label>:7:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 253) #6, !dbg !1012
  tail call void @_exit(i32 1) #8, !dbg !1012
  unreachable

; <label>:8:                                      ; preds = %0
  %9 = icmp eq i32 %4, -1, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %9, label %10, label %18, !dbg !1014

; <label>:10:                                     ; preds = %8
  %11 = call i8* @getcwd(i8* nonnull %2, i64 1024) #6, !dbg !1015
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !1017, !tbaa !1009
  %13 = icmp eq i8* %11, null, !dbg !1018
  %14 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %11, !dbg !1018
  %15 = call i32* @__errno() #6, !dbg !1019
  %16 = load i32, i32* %15, align 4, !dbg !1019, !tbaa !428
  %17 = call i8* @strerror(i32 %16) #6, !dbg !1020
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %14, i8* %17) #6, !dbg !1021
  br label %33

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1022, !tbaa !1024
  %20 = icmp eq i32 %19, -1, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br i1 %20, label %22, label %21, !dbg !1026

; <label>:21:                                     ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !1027, !tbaa !1029
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br label %31, !dbg !1031

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1032, !tbaa !650
  %24 = icmp eq i32 %23, -1, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %24, label %26, label %25, !dbg !1036

; <label>:25:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1037
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %26, !dbg !1040

; <label>:26:                                     ; preds = %22, %25
  %27 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !1041
  %28 = icmp eq i32 %27, -1, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %28, label %29, label %31, !dbg !1044

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @close(i32 %4) #6, !dbg !1045
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1047
  br label %33, !dbg !1048

; <label>:31:                                     ; preds = %26, %21
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1049, !tbaa !451
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1050, !tbaa !522
  store i64 %32, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !1051, !tbaa !524
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !1052, !tbaa !454
  br label %33, !dbg !1053

; <label>:33:                                     ; preds = %31, %29, %10
  %34 = phi i32 [ -1, %10 ], [ 0, %31 ], [ -1, %29 ], !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  ret i32 %34, !dbg !1055
}

; Function Attrs: noredzone
declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @getcwd(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileBackground() local_unnamed_addr #0 !dbg !1056 {
  %1 = alloca [256 x i8], align 16
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1066, !tbaa !650
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1068
  %4 = and i32 %3, %2, !dbg !1069
  %5 = icmp eq i32 %4, -1, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  br i1 %5, label %6, label %67, !dbg !1069

; <label>:6:                                      ; preds = %0
  %7 = tail call i32 @aofCreatePipes() #9, !dbg !1070
  %8 = icmp eq i32 %7, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %8, label %9, label %67, !dbg !1073

; <label>:9:                                      ; preds = %6
  tail call void @openChildInfoPipe() #6, !dbg !1074
  %10 = tail call i64 @ustime() #6, !dbg !1075
  %11 = tail call i32 @fork() #6, !dbg !1077
  %12 = icmp eq i32 %11, 0, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %12, label %13, label %27, !dbg !1080

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !1081
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1081
  tail call void @closeListeningSockets(i32 0) #6, !dbg !1083
  tail call void @redisSetProcTitle(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !1084
  %15 = tail call i32 @getpid() #6, !dbg !1085
  %16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %15) #6, !dbg !1086
  %17 = call i32 @rewriteAppendOnlyFile(i8* nonnull %14) #9, !dbg !1087
  %18 = icmp eq i32 %17, 0, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  br i1 %18, label %19, label %25, !dbg !1089

; <label>:19:                                     ; preds = %13
  %20 = call i64 @zmalloc_get_private_dirty(i64 -1) #6, !dbg !1090
  %21 = icmp eq i64 %20, 0, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1094
  br i1 %21, label %24, label %22, !dbg !1094

; <label>:22:                                     ; preds = %19
  %23 = lshr i64 %20, 20, !dbg !1095
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.89, i64 0, i64 0), i64 %23) #6, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br label %24, !dbg !1098

; <label>:24:                                     ; preds = %19, %22
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !1099, !tbaa !1100
  call void @sendChildInfo(i32 1) #6, !dbg !1101
  call void @exitFromChild(i32 0) #6, !dbg !1102
  br label %26, !dbg !1103

; <label>:25:                                     ; preds = %13
  call void @exitFromChild(i32 1) #6, !dbg !1104
  br label %26

; <label>:26:                                     ; preds = %25, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1106
  br label %67, !dbg !1107

; <label>:27:                                     ; preds = %9
  %28 = tail call i64 @ustime() #6, !dbg !1108
  %29 = sub nsw i64 %28, %10, !dbg !1110
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1111, !tbaa !1112
  %30 = tail call i64 @zmalloc_used_memory() #6, !dbg !1113
  %31 = uitofp i64 %30 to double, !dbg !1114
  %32 = fmul double %31, 1.000000e+06, !dbg !1115
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1116, !tbaa !1112
  %34 = sitofp i64 %33 to double, !dbg !1117
  %35 = fdiv double %32, %34, !dbg !1118
  %36 = fmul double %35, 0x3E10000000000000, !dbg !1119
  store double %36, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 85), align 8, !dbg !1120, !tbaa !1121
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1122, !tbaa !566
  %38 = icmp eq i64 %37, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %38, label %43, label %39, !dbg !1122

; <label>:39:                                     ; preds = %27
  %40 = sdiv i64 %33, 1000, !dbg !1122
  %41 = icmp slt i64 %40, %37, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %41, label %43, label %42, !dbg !1124

; <label>:42:                                     ; preds = %39
  tail call void @latencyAddSample(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i64 %40) #6, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br label %43, !dbg !1122

; <label>:43:                                     ; preds = %39, %27, %42
  %44 = icmp eq i32 %11, -1, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %44, label %45, label %65, !dbg !1127

; <label>:45:                                     ; preds = %43
  tail call void @closeChildInfoPipe() #6, !dbg !1128
  %46 = tail call i32* @__errno() #6, !dbg !1130
  %47 = load i32, i32* %46, align 4, !dbg !1130, !tbaa !428
  %48 = tail call i8* @strerror(i32 %47) #6, !dbg !1131
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.91, i64 0, i64 0), i8* %48) #6, !dbg !1132
  %49 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1133, !tbaa !256
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1135, !tbaa !972
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %49, i32 %50, i32 1) #6, !dbg !1136
  %51 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1137, !tbaa !256
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1138, !tbaa !258
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %51, i32 %52, i32 2) #6, !dbg !1139
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1140, !tbaa !258
  %54 = tail call i32 @close(i32 %53) #6, !dbg !1141
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !1142, !tbaa !980
  %56 = tail call i32 @close(i32 %55) #6, !dbg !1143
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !1144, !tbaa !983
  %58 = tail call i32 @close(i32 %57) #6, !dbg !1145
  %59 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1146, !tbaa !972
  %60 = tail call i32 @close(i32 %59) #6, !dbg !1147
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !1148, !tbaa !988
  %62 = tail call i32 @close(i32 %61) #6, !dbg !1149
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !1150, !tbaa !991
  %64 = tail call i32 @close(i32 %63) #6, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br label %67, !dbg !1153

; <label>:65:                                     ; preds = %43
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i32 %11) #6, !dbg !1154
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !1155, !tbaa !1029
  %66 = tail call i64 @time(i64* null) #6, !dbg !1156
  store i64 %66, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !1157, !tbaa !967
  store i32 %11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1158, !tbaa !650
  tail call void @updateDictResizePolicy() #6, !dbg !1159
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1160, !tbaa !460
  tail call void @replicationScriptCacheFlush() #6, !dbg !1161
  br label %67, !dbg !1162

; <label>:67:                                     ; preds = %6, %0, %26, %65, %45
  %68 = phi i32 [ 0, %26 ], [ -1, %45 ], [ 0, %65 ], [ -1, %0 ], [ -1, %6 ], !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  ret i32 %68, !dbg !1165
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aofWrite(i32, i8*, i64) local_unnamed_addr #0 !dbg !595 {
  br label %4, !dbg !626

; <label>:4:                                      ; preds = %20, %3
  %5 = phi i8* [ %22, %20 ], [ %1, %3 ]
  %6 = phi i64 [ %21, %20 ], [ %2, %3 ]
  %7 = phi i64 [ %23, %20 ], [ 0, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  %8 = icmp eq i64 %6, 0
  br label %9, !dbg !626

; <label>:9:                                      ; preds = %4, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %8, label %24, label %10, !dbg !626

; <label>:10:                                     ; preds = %9
  %11 = tail call i64 @write(i32 %0, i8* %5, i64 %6) #6, !dbg !1171
  %12 = icmp slt i64 %11, 0, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br i1 %12, label %13, label %20, !dbg !1173

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno() #6, !dbg !1174
  %15 = load i32, i32* %14, align 4, !dbg !1174, !tbaa !428
  %16 = icmp eq i32 %15, 4, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %16, label %9, label %17, !dbg !1176, !llvm.loop !625

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64 %7, 0, !dbg !1177
  %19 = select i1 %18, i64 -1, i64 %7, !dbg !1177
  br label %24, !dbg !1178

; <label>:20:                                     ; preds = %10
  %21 = sub i64 %6, %11, !dbg !1179
  %22 = getelementptr inbounds i8, i8* %5, i64 %11, !dbg !1180
  %23 = add nsw i64 %11, %7, !dbg !1181
  br label %4, !dbg !626, !llvm.loop !625

; <label>:24:                                     ; preds = %9, %17
  %25 = phi i64 [ %19, %17 ], [ %7, %9 ], !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret i64 %25, !dbg !1184
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
define dso_local i8* @catAppendOnlyGenericCommand(i8*, i32, %struct.redisObject** nocapture readonly) local_unnamed_addr #0 !dbg !1185 {
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !1212
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1212
  store i8 42, i8* %5, align 16, !dbg !1214, !tbaa !482
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 1, !dbg !1215
  %7 = sext i32 %1 to i64, !dbg !1216
  %8 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %7) #6, !dbg !1217
  %9 = add nsw i32 %8, 1, !dbg !1218
  %10 = add nsw i32 %8, 2, !dbg !1220
  %11 = sext i32 %9 to i64, !dbg !1221
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %11, !dbg !1221
  store i8 13, i8* %12, align 1, !dbg !1222, !tbaa !482
  %13 = add nsw i32 %8, 3, !dbg !1223
  %14 = sext i32 %10 to i64, !dbg !1224
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %14, !dbg !1224
  store i8 10, i8* %15, align 1, !dbg !1225, !tbaa !482
  %16 = sext i32 %13 to i64, !dbg !1226
  %17 = call i8* @sdscatlen(i8* %0, i8* nonnull %5, i64 %16) #6, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1229
  %18 = icmp sgt i32 %1, 0, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  br i1 %18, label %19, label %96, !dbg !1233

; <label>:19:                                     ; preds = %3
  %20 = zext i32 %1 to i64
  br label %21, !dbg !1234

; <label>:21:                                     ; preds = %90, %19
  %22 = phi i64 [ 0, %19 ], [ %94, %90 ]
  %23 = phi i8* [ %17, %19 ], [ %93, %90 ]
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %22, !dbg !1234
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1234, !tbaa !1236
  %26 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %25) #6, !dbg !1237
  store i8 36, i8* %5, align 16, !dbg !1239, !tbaa !482
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2, !dbg !1240
  %28 = load i8*, i8** %27, align 8, !dbg !1240, !tbaa !1241
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1245
  %30 = load i8, i8* %29, align 1, !dbg !1245, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %31 = trunc i8 %30 to i3, !dbg !1247
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1247

; <label>:32:                                     ; preds = %21
  %33 = lshr i8 %30, 3, !dbg !1248
  %34 = zext i8 %33 to i64, !dbg !1248
  br label %53, !dbg !1249

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !1250
  %37 = load i8, i8* %36, align 1, !dbg !1251, !tbaa !482
  %38 = zext i8 %37 to i64, !dbg !1250
  br label %53, !dbg !1252

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !1253
  %41 = bitcast i8* %40 to i16*, !dbg !1254
  %42 = load i16, i16* %41, align 1, !dbg !1254, !tbaa !493
  %43 = zext i16 %42 to i64, !dbg !1253
  br label %53, !dbg !1255

; <label>:44:                                     ; preds = %21
  %45 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !1256
  %46 = bitcast i8* %45 to i32*, !dbg !1257
  %47 = load i32, i32* %46, align 1, !dbg !1257, !tbaa !428
  %48 = zext i32 %47 to i64, !dbg !1256
  br label %53, !dbg !1258

; <label>:49:                                     ; preds = %21
  %50 = getelementptr inbounds i8, i8* %28, i64 -17, !dbg !1259
  %51 = bitcast i8* %50 to i64*, !dbg !1260
  %52 = load i64, i64* %51, align 1, !dbg !1260, !tbaa !341
  br label %53, !dbg !1261

; <label>:53:                                     ; preds = %21, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %21 ], !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  %55 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %54) #6, !dbg !1265
  %56 = add nsw i32 %55, 1, !dbg !1266
  %57 = add nsw i32 %55, 2, !dbg !1267
  %58 = sext i32 %56 to i64, !dbg !1268
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %58, !dbg !1268
  store i8 13, i8* %59, align 1, !dbg !1269, !tbaa !482
  %60 = add nsw i32 %55, 3, !dbg !1270
  %61 = sext i32 %57 to i64, !dbg !1271
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %61, !dbg !1271
  store i8 10, i8* %62, align 1, !dbg !1272, !tbaa !482
  %63 = sext i32 %60 to i64, !dbg !1273
  %64 = call i8* @sdscatlen(i8* %23, i8* nonnull %5, i64 %63) #6, !dbg !1274
  %65 = load i8*, i8** %27, align 8, !dbg !1275, !tbaa !1241
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !1278
  %67 = load i8, i8* %66, align 1, !dbg !1278, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  %68 = trunc i8 %67 to i3, !dbg !1280
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1280

; <label>:69:                                     ; preds = %53
  %70 = lshr i8 %67, 3, !dbg !1281
  %71 = zext i8 %70 to i64, !dbg !1281
  br label %90, !dbg !1282

; <label>:72:                                     ; preds = %53
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !1283
  %74 = load i8, i8* %73, align 1, !dbg !1284, !tbaa !482
  %75 = zext i8 %74 to i64, !dbg !1283
  br label %90, !dbg !1285

; <label>:76:                                     ; preds = %53
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !1286
  %78 = bitcast i8* %77 to i16*, !dbg !1287
  %79 = load i16, i16* %78, align 1, !dbg !1287, !tbaa !493
  %80 = zext i16 %79 to i64, !dbg !1286
  br label %90, !dbg !1288

; <label>:81:                                     ; preds = %53
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !1289
  %83 = bitcast i8* %82 to i32*, !dbg !1290
  %84 = load i32, i32* %83, align 1, !dbg !1290, !tbaa !428
  %85 = zext i32 %84 to i64, !dbg !1289
  br label %90, !dbg !1291

; <label>:86:                                     ; preds = %53
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !1292
  %88 = bitcast i8* %87 to i64*, !dbg !1293
  %89 = load i64, i64* %88, align 1, !dbg !1293, !tbaa !341
  br label %90, !dbg !1294

; <label>:90:                                     ; preds = %53, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %53 ], !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  %92 = call i8* @sdscatlen(i8* %64, i8* %65, i64 %91) #6, !dbg !1297
  %93 = call i8* @sdscatlen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 2) #6, !dbg !1298
  call void @decrRefCount(%struct.redisObject* nonnull %26) #6, !dbg !1299
  %94 = add nuw nsw i64 %22, 1, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  %95 = icmp eq i64 %94, %20, !dbg !1231
  br i1 %95, label %96, label %21, !dbg !1233, !llvm.loop !1302

; <label>:96:                                     ; preds = %90, %3
  %97 = phi i8* [ %17, %3 ], [ %93, %90 ], !dbg !1263
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  ret i8* %97, !dbg !1305
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
define dso_local i8* @catAppendOnlyExpireAtCommand(i8*, %struct.redisCommand* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1306 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1533
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1533
  %7 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %3) #6, !dbg !1535
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1536
  %9 = load i8*, i8** %8, align 8, !dbg !1536, !tbaa !1241
  %10 = tail call i64 @strtoll(i8* %9, i8** null, i32 10) #6, !dbg !1537
  %11 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %1, i64 0, i32 1, !dbg !1539
  %12 = load void (%struct.client*)*, void (%struct.client*)** %11, align 8, !dbg !1539, !tbaa !1541
  %13 = icmp eq void (%struct.client*)* %12, @expireCommand, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  br i1 %13, label %20, label %14, !dbg !1544

; <label>:14:                                     ; preds = %4
  %15 = icmp eq void (%struct.client*)* %12, @setexCommand, !dbg !1545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br i1 %15, label %18, label %16, !dbg !1546

; <label>:16:                                     ; preds = %14
  %17 = icmp eq void (%struct.client*)* %12, @expireatCommand, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1548
  br i1 %17, label %18, label %22, !dbg !1548

; <label>:18:                                     ; preds = %14, %16
  %19 = mul nsw i64 %10, 1000, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br label %22, !dbg !1552

; <label>:20:                                     ; preds = %4
  %21 = mul nsw i64 %10, 1000, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  br label %28

; <label>:22:                                     ; preds = %16, %18
  %23 = phi i64 [ %19, %18 ], [ %10, %16 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  %24 = icmp eq void (%struct.client*)* %12, @pexpireCommand, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %24, label %28, label %25, !dbg !1555

; <label>:25:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br i1 %15, label %28, label %26, !dbg !1556

; <label>:26:                                     ; preds = %25
  %27 = icmp eq void (%struct.client*)* %12, @psetexCommand, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br i1 %27, label %28, label %32, !dbg !1558

; <label>:28:                                     ; preds = %20, %26, %25, %22
  %29 = phi i64 [ %23, %26 ], [ %23, %25 ], [ %23, %22 ], [ %21, %20 ]
  %30 = tail call i64 @mstime() #6, !dbg !1559
  %31 = add nsw i64 %30, %29, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  br label %32, !dbg !1562

; <label>:32:                                     ; preds = %28, %26
  %33 = phi i64 [ %31, %28 ], [ %23, %26 ], !dbg !1563
  tail call void @decrRefCount(%struct.redisObject* %7) #6, !dbg !1564
  %34 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 9) #6, !dbg !1565
  %35 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1566
  store %struct.redisObject* %34, %struct.redisObject** %35, align 16, !dbg !1567, !tbaa !1236
  %36 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1568
  store %struct.redisObject* %2, %struct.redisObject** %36, align 8, !dbg !1569, !tbaa !1236
  %37 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %33) #6, !dbg !1570
  %38 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1571
  store %struct.redisObject* %37, %struct.redisObject** %38, align 16, !dbg !1572, !tbaa !1236
  %39 = call i8* @catAppendOnlyGenericCommand(i8* %0, i32 3, %struct.redisObject** nonnull %35) #9, !dbg !1573
  tail call void @decrRefCount(%struct.redisObject* %34) #6, !dbg !1574
  tail call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  ret i8* %39, !dbg !1577
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
define dso_local void @feedAppendOnlyFile(%struct.redisCommand* nocapture readonly, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1578 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = alloca [64 x i8], align 16
  %7 = tail call i8* @sdsempty() #6, !dbg !1605
  %8 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1607
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1607
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1609, !tbaa !460
  %10 = icmp eq i32 %9, %1, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %10, label %16, label %11, !dbg !1611

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1612
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1612
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %1) #6, !dbg !1614
  %14 = call i64 @strlen(i8* nonnull %12) #6, !dbg !1615
  %15 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i64 %14, i8* nonnull %12) #6, !dbg !1616
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1617, !tbaa !460
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br label %16, !dbg !1619

; <label>:16:                                     ; preds = %4, %11
  %17 = phi i8* [ %15, %11 ], [ %7, %4 ], !dbg !1620
  %18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 1, !dbg !1621
  %19 = load void (%struct.client*)*, void (%struct.client*)** %18, align 8, !dbg !1621, !tbaa !1541
  %20 = icmp eq void (%struct.client*)* %19, @expireCommand, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  br i1 %20, label %25, label %21, !dbg !1623

; <label>:21:                                     ; preds = %16
  %22 = icmp eq void (%struct.client*)* %19, @pexpireCommand, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %22, label %25, label %23, !dbg !1625

; <label>:23:                                     ; preds = %21
  %24 = icmp eq void (%struct.client*)* %19, @expireatCommand, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br i1 %24, label %25, label %31, !dbg !1627

; <label>:25:                                     ; preds = %23, %21, %16
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1628
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1628, !tbaa !1236
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1630
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !1630, !tbaa !1236
  %30 = call i8* @catAppendOnlyExpireAtCommand(i8* %17, %struct.redisCommand* nonnull %0, %struct.redisObject* %27, %struct.redisObject* %29) #9, !dbg !1631
  br label %105, !dbg !1632

; <label>:31:                                     ; preds = %23
  %32 = icmp eq void (%struct.client*)* %19, @setexCommand, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %32, label %35, label %33, !dbg !1634

; <label>:33:                                     ; preds = %31
  %34 = icmp eq void (%struct.client*)* %19, @psetexCommand, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br i1 %34, label %35, label %53, !dbg !1636

; <label>:35:                                     ; preds = %33, %31
  %36 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #6, !dbg !1637
  %37 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1639
  store %struct.redisObject* %36, %struct.redisObject** %37, align 16, !dbg !1640, !tbaa !1236
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1641
  %39 = bitcast %struct.redisObject** %38 to i64*, !dbg !1641
  %40 = load i64, i64* %39, align 8, !dbg !1641, !tbaa !1236
  %41 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1642
  %42 = bitcast %struct.redisObject** %41 to i64*, !dbg !1643
  store i64 %40, i64* %42, align 8, !dbg !1643, !tbaa !1236
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 3, !dbg !1644
  %44 = bitcast %struct.redisObject** %43 to i64*, !dbg !1644
  %45 = load i64, i64* %44, align 8, !dbg !1644, !tbaa !1236
  %46 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1645
  %47 = bitcast %struct.redisObject** %46 to i64*, !dbg !1646
  store i64 %45, i64* %47, align 16, !dbg !1646, !tbaa !1236
  %48 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** nonnull %37) #9, !dbg !1647
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !1648
  %49 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1649, !tbaa !1236
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1650
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1650, !tbaa !1236
  %52 = call i8* @catAppendOnlyExpireAtCommand(i8* %48, %struct.redisCommand* nonnull %0, %struct.redisObject* %49, %struct.redisObject* %51) #9, !dbg !1651
  br label %105, !dbg !1652

; <label>:53:                                     ; preds = %33
  %54 = icmp eq void (%struct.client*)* %19, @setCommand, !dbg !1653
  %55 = icmp sgt i32 %3, 3, !dbg !1654
  %56 = and i1 %55, %54, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %56, label %57, label %103, !dbg !1655

; <label>:57:                                     ; preds = %53
  %58 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** %2) #9, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  %59 = zext i32 %3 to i64
  br label %60, !dbg !1662

; <label>:60:                                     ; preds = %82, %57
  %61 = phi i64 [ 3, %57 ], [ %78, %82 ]
  %62 = phi %struct.redisObject* [ null, %57 ], [ %83, %82 ]
  %63 = phi %struct.redisObject* [ null, %57 ], [ %75, %82 ]
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %61, !dbg !1663
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !1663, !tbaa !1236
  %66 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %65, i64 0, i32 2, !dbg !1667
  %67 = load i8*, i8** %66, align 8, !dbg !1667, !tbaa !1241
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1668
  %69 = icmp eq i32 %68, 0, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %69, label %70, label %74, !dbg !1669

; <label>:70:                                     ; preds = %60
  %71 = add nuw nsw i64 %61, 1, !dbg !1670
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %71, !dbg !1671
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1671, !tbaa !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1672
  br label %74, !dbg !1672

; <label>:74:                                     ; preds = %60, %70
  %75 = phi %struct.redisObject* [ %63, %60 ], [ %73, %70 ], !dbg !1673
  %76 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !1674
  %77 = icmp eq i32 %76, 0, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %78 = add nuw nsw i64 %61, 1, !dbg !1677
  br i1 %77, label %79, label %82, !dbg !1676

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %78, !dbg !1678
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1678, !tbaa !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  br label %82, !dbg !1679

; <label>:82:                                     ; preds = %74, %79
  %83 = phi %struct.redisObject* [ %81, %79 ], [ %62, %74 ], !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  %84 = icmp eq i64 %78, %59, !dbg !1682
  br i1 %84, label %85, label %60, !dbg !1662, !llvm.loop !1683

; <label>:85:                                     ; preds = %82
  %86 = icmp ne %struct.redisObject* %75, null, !dbg !1685
  %87 = icmp ne %struct.redisObject* %83, null, !dbg !1685
  %88 = and i1 %86, %87, !dbg !1685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1685
  br i1 %88, label %89, label %90, !dbg !1685

; <label>:89:                                     ; preds = %85
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 616) #6, !dbg !1685
  call void @_exit(i32 1) #8, !dbg !1685
  unreachable

; <label>:90:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  br i1 %86, label %91, label %96, !dbg !1686

; <label>:91:                                     ; preds = %90
  %92 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 65), align 8, !dbg !1687, !tbaa !1689
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1690
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !1690, !tbaa !1236
  %95 = call i8* @catAppendOnlyExpireAtCommand(i8* %58, %struct.redisCommand* %92, %struct.redisObject* %94, %struct.redisObject* nonnull %75) #9, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  br label %96, !dbg !1692

; <label>:96:                                     ; preds = %91, %90
  %97 = phi i8* [ %95, %91 ], [ %58, %90 ], !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %87, label %98, label %105, !dbg !1694

; <label>:98:                                     ; preds = %96
  %99 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 66), align 8, !dbg !1695, !tbaa !1697
  %100 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1698
  %101 = load %struct.redisObject*, %struct.redisObject** %100, align 8, !dbg !1698, !tbaa !1236
  %102 = call i8* @catAppendOnlyExpireAtCommand(i8* %97, %struct.redisCommand* %99, %struct.redisObject* %101, %struct.redisObject* nonnull %83) #9, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br label %105, !dbg !1700

; <label>:103:                                    ; preds = %53
  %104 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 %3, %struct.redisObject** %2) #9, !dbg !1701
  br label %105

; <label>:105:                                    ; preds = %96, %98, %35, %103, %25
  %106 = phi i8* [ %30, %25 ], [ %52, %35 ], [ %104, %103 ], [ %102, %98 ], [ %97, %96 ], !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1704, !tbaa !451
  %108 = icmp eq i32 %107, 1, !dbg !1706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1707
  br i1 %108, label %109, label %138, !dbg !1707

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1708, !tbaa !468
  %111 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1711
  %112 = load i8, i8* %111, align 1, !dbg !1711, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  %113 = trunc i8 %112 to i3, !dbg !1713
  switch i3 %113, label %135 [
    i3 0, label %114
    i3 1, label %117
    i3 2, label %121
    i3 3, label %126
    i3 -4, label %131
  ], !dbg !1713

; <label>:114:                                    ; preds = %109
  %115 = lshr i8 %112, 3, !dbg !1714
  %116 = zext i8 %115 to i64, !dbg !1714
  br label %135, !dbg !1715

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1716
  %119 = load i8, i8* %118, align 1, !dbg !1717, !tbaa !482
  %120 = zext i8 %119 to i64, !dbg !1716
  br label %135, !dbg !1718

; <label>:121:                                    ; preds = %109
  %122 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1719
  %123 = bitcast i8* %122 to i16*, !dbg !1720
  %124 = load i16, i16* %123, align 1, !dbg !1720, !tbaa !493
  %125 = zext i16 %124 to i64, !dbg !1719
  br label %135, !dbg !1721

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1722
  %128 = bitcast i8* %127 to i32*, !dbg !1723
  %129 = load i32, i32* %128, align 1, !dbg !1723, !tbaa !428
  %130 = zext i32 %129 to i64, !dbg !1722
  br label %135, !dbg !1724

; <label>:131:                                    ; preds = %109
  %132 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1725
  %133 = bitcast i8* %132 to i64*, !dbg !1726
  %134 = load i64, i64* %133, align 1, !dbg !1726, !tbaa !341
  br label %135, !dbg !1727

; <label>:135:                                    ; preds = %109, %114, %117, %121, %126, %131
  %136 = phi i64 [ %134, %131 ], [ %130, %126 ], [ %125, %121 ], [ %120, %117 ], [ %116, %114 ], [ 0, %109 ], !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  %137 = call i8* @sdscatlen(i8* %110, i8* nonnull %106, i64 %136) #6, !dbg !1731
  store i8* %137, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1732, !tbaa !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  br label %138, !dbg !1733

; <label>:138:                                    ; preds = %135, %105
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1734, !tbaa !650
  %140 = icmp eq i32 %139, -1, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1737
  br i1 %140, label %168, label %141, !dbg !1737

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1740
  %143 = load i8, i8* %142, align 1, !dbg !1740, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  %144 = trunc i8 %143 to i3, !dbg !1742
  switch i3 %144, label %166 [
    i3 0, label %145
    i3 1, label %148
    i3 2, label %152
    i3 3, label %157
    i3 -4, label %162
  ], !dbg !1742

; <label>:145:                                    ; preds = %141
  %146 = lshr i8 %143, 3, !dbg !1743
  %147 = zext i8 %146 to i64, !dbg !1743
  br label %166, !dbg !1744

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1745
  %150 = load i8, i8* %149, align 1, !dbg !1746, !tbaa !482
  %151 = zext i8 %150 to i64, !dbg !1745
  br label %166, !dbg !1747

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1748
  %154 = bitcast i8* %153 to i16*, !dbg !1749
  %155 = load i16, i16* %154, align 1, !dbg !1749, !tbaa !493
  %156 = zext i16 %155 to i64, !dbg !1748
  br label %166, !dbg !1750

; <label>:157:                                    ; preds = %141
  %158 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1751
  %159 = bitcast i8* %158 to i32*, !dbg !1752
  %160 = load i32, i32* %159, align 1, !dbg !1752, !tbaa !428
  %161 = zext i32 %160 to i64, !dbg !1751
  br label %166, !dbg !1753

; <label>:162:                                    ; preds = %141
  %163 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1754
  %164 = bitcast i8* %163 to i64*, !dbg !1755
  %165 = load i64, i64* %164, align 1, !dbg !1755, !tbaa !341
  br label %166, !dbg !1756

; <label>:166:                                    ; preds = %141, %145, %148, %152, %157, %162
  %167 = phi i64 [ %165, %162 ], [ %161, %157 ], [ %156, %152 ], [ %151, %148 ], [ %147, %145 ], [ 0, %141 ], !dbg !1757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  call void @aofRewriteBufferAppend(i8* nonnull %106, i64 %167) #9, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %168, !dbg !1760

; <label>:168:                                    ; preds = %138, %166
  call void @sdsfree(i8* %106) #6, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  ret void, !dbg !1762
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
define dso_local %struct.client* @createFakeClient() local_unnamed_addr #0 !dbg !1763 {
  %1 = tail call i8* @zmalloc(i64 16920) #6, !dbg !1769
  %2 = bitcast i8* %1 to %struct.client*, !dbg !1769
  %3 = tail call i32 @selectDb(%struct.client* %2, i32 0) #6, !dbg !1771
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1772
  %5 = bitcast i8* %4 to i32*, !dbg !1772
  store i32 -1, i32* %5, align 8, !dbg !1773, !tbaa !1774
  %6 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1778
  %7 = bitcast i8* %6 to %struct.redisObject**, !dbg !1778
  store %struct.redisObject* null, %struct.redisObject** %7, align 8, !dbg !1779, !tbaa !1780
  %8 = tail call i8* @sdsempty() #6, !dbg !1781
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1782
  %10 = bitcast i8* %9 to i8**, !dbg !1782
  store i8* %8, i8** %10, align 8, !dbg !1783, !tbaa !1784
  %11 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !1785
  %12 = bitcast i8* %11 to i64*, !dbg !1785
  store i64 0, i64* %12, align 8, !dbg !1786, !tbaa !1787
  %13 = getelementptr inbounds i8, i8* %1, i64 64, !dbg !1788
  %14 = bitcast i8* %13 to i32*, !dbg !1788
  store i32 0, i32* %14, align 8, !dbg !1789, !tbaa !1790
  %15 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !1791
  %16 = bitcast i8* %15 to %struct.redisObject***, !dbg !1791
  store %struct.redisObject** null, %struct.redisObject*** %16, align 8, !dbg !1792, !tbaa !1793
  %17 = getelementptr inbounds i8, i8* %1, i64 528, !dbg !1794
  %18 = bitcast i8* %17 to i32*, !dbg !1794
  store i32 0, i32* %18, align 8, !dbg !1795, !tbaa !1796
  %19 = getelementptr inbounds i8, i8* %1, i64 160, !dbg !1797
  %20 = bitcast i8* %19 to i32*, !dbg !1797
  store i32 0, i32* %20, align 8, !dbg !1798, !tbaa !1799
  %21 = getelementptr inbounds i8, i8* %1, i64 384, !dbg !1800
  %22 = bitcast i8* %21 to i32*, !dbg !1800
  store i32 0, i32* %22, align 8, !dbg !1801, !tbaa !1802
  %23 = getelementptr inbounds i8, i8* %1, i64 168, !dbg !1803
  %24 = bitcast i8* %23 to i32*, !dbg !1803
  store i32 6, i32* %24, align 8, !dbg !1804, !tbaa !1805
  %25 = tail call %struct.list* @listCreate() #6, !dbg !1806
  %26 = getelementptr inbounds i8, i8* %1, i64 112, !dbg !1807
  %27 = bitcast i8* %26 to %struct.list**, !dbg !1807
  store %struct.list* %25, %struct.list** %27, align 8, !dbg !1808, !tbaa !1809
  %28 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !1810
  %29 = bitcast i8* %28 to i64*, !dbg !1810
  store i64 0, i64* %29, align 8, !dbg !1811, !tbaa !1812
  %30 = getelementptr inbounds i8, i8* %1, i64 152, !dbg !1813
  %31 = bitcast i8* %30 to i64*, !dbg !1813
  store i64 0, i64* %31, align 8, !dbg !1814, !tbaa !1815
  %32 = tail call %struct.list* @listCreate() #6, !dbg !1816
  %33 = getelementptr inbounds i8, i8* %1, i64 488, !dbg !1817
  %34 = bitcast i8* %33 to %struct.list**, !dbg !1817
  store %struct.list* %32, %struct.list** %34, align 8, !dbg !1818, !tbaa !1819
  %35 = getelementptr inbounds i8, i8* %1, i64 512, !dbg !1820
  %36 = bitcast i8* %35 to i8**, !dbg !1820
  store i8* null, i8** %36, align 8, !dbg !1821, !tbaa !1822
  %37 = load %struct.list*, %struct.list** %27, align 8, !dbg !1823, !tbaa !1809
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 3, !dbg !1823
  store void (i8*)* @freeClientReplyValue, void (i8*)** %38, align 8, !dbg !1823, !tbaa !108
  %39 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 2, !dbg !1824
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %39, align 8, !dbg !1824, !tbaa !1825
  tail call void @initClientMultiState(%struct.client* %2) #6, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  ret %struct.client* %2, !dbg !1827
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
define dso_local void @freeFakeClientArgv(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1828 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1838
  %3 = load i32, i32* %2, align 8, !dbg !1838, !tbaa !1790
  %4 = icmp sgt i32 %3, 0, !dbg !1840
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1841
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1841, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %4, label %7, label %17, !dbg !1842

; <label>:7:                                      ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = phi %struct.redisObject** [ %16, %7 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !1843
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1843, !tbaa !1236
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !1844
  %12 = add nuw nsw i64 %8, 1, !dbg !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  %13 = load i32, i32* %2, align 8, !dbg !1838, !tbaa !1790
  %14 = sext i32 %13 to i64, !dbg !1840
  %15 = icmp slt i64 %12, %14, !dbg !1840
  %16 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1841, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %15, label %7, label %17, !dbg !1842, !llvm.loop !1847

; <label>:17:                                     ; preds = %7, %1
  %18 = phi %struct.redisObject** [ %6, %1 ], [ %16, %7 ], !dbg !1841
  %19 = bitcast %struct.redisObject** %18 to i8*, !dbg !1849
  tail call void @zfree(i8* %19) #6, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  ret void, !dbg !1851
}

; Function Attrs: noredzone nounwind
define dso_local void @freeFakeClient(%struct.client*) local_unnamed_addr #0 !dbg !1852 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !1856
  %3 = load i8*, i8** %2, align 8, !dbg !1856, !tbaa !1784
  tail call void @sdsfree(i8* %3) #6, !dbg !1857
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1858
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !1858, !tbaa !1809
  tail call void @listRelease(%struct.list* %5) #6, !dbg !1859
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !1860
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1860, !tbaa !1819
  tail call void @listRelease(%struct.list* %7) #6, !dbg !1861
  tail call void @freeClientMultiState(%struct.client* %0) #6, !dbg !1862
  %8 = bitcast %struct.client* %0 to i8*, !dbg !1863
  tail call void @zfree(i8* %8) #6, !dbg !1864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  ret void, !dbg !1865
}

; Function Attrs: noredzone
declare dso_local void @freeClientMultiState(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @loadAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !1866 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct._rio, align 8
  %5 = alloca [128 x i8], align 16
  %6 = tail call %struct.__sFILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2182
  %7 = bitcast %struct.stat* %2 to i8*, !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2184
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2185, !tbaa !451
  %9 = icmp eq %struct.__sFILE* %6, null, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2192
  br i1 %9, label %10, label %14, !dbg !2192

; <label>:10:                                     ; preds = %1
  %11 = tail call i32* @__errno() #6, !dbg !2193
  %12 = load i32, i32* %11, align 4, !dbg !2193, !tbaa !428
  %13 = tail call i8* @strerror(i32 %12) #6, !dbg !2195
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0), i8* %13) #6, !dbg !2196
  tail call void @exit(i32 1) #8, !dbg !2197
  unreachable

; <label>:14:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  %15 = tail call i32 @fileno(%struct.__sFILE* nonnull %6) #6, !dbg !2200
  %16 = call i32 @fstat(i32 %15, %struct.stat* nonnull %2) #6, !dbg !2202
  %17 = icmp eq i32 %16, -1, !dbg !2203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  br i1 %17, label %24, label %18, !dbg !2204

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 7, !dbg !2205
  %20 = load i64, i64* %19, align 8, !dbg !2205, !tbaa !2206
  %21 = icmp eq i64 %20, 0, !dbg !2209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  br i1 %21, label %22, label %24, !dbg !2210

; <label>:22:                                     ; preds = %18
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124) to <2 x i64>*), align 8, !dbg !2211, !tbaa !341
  %23 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2213
  br label %332, !dbg !2214

; <label>:24:                                     ; preds = %14, %18
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2215, !tbaa !451
  %25 = call i8* @zmalloc(i64 16920) #6, !dbg !2216
  %26 = bitcast i8* %25 to %struct.client*, !dbg !2216
  %27 = call i32 @selectDb(%struct.client* %26, i32 0) #6, !dbg !2219
  %28 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !2220
  %29 = bitcast i8* %28 to i32*, !dbg !2220
  store i32 -1, i32* %29, align 8, !dbg !2221, !tbaa !1774
  %30 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !2222
  %31 = bitcast i8* %30 to %struct.redisObject**, !dbg !2222
  store %struct.redisObject* null, %struct.redisObject** %31, align 8, !dbg !2223, !tbaa !1780
  %32 = call i8* @sdsempty() #6, !dbg !2224
  %33 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !2225
  %34 = bitcast i8* %33 to i8**, !dbg !2225
  store i8* %32, i8** %34, align 8, !dbg !2226, !tbaa !1784
  %35 = getelementptr inbounds i8, i8* %25, i64 56, !dbg !2227
  %36 = bitcast i8* %35 to i64*, !dbg !2227
  store i64 0, i64* %36, align 8, !dbg !2228, !tbaa !1787
  %37 = getelementptr inbounds i8, i8* %25, i64 64, !dbg !2229
  %38 = bitcast i8* %37 to i32*, !dbg !2229
  store i32 0, i32* %38, align 8, !dbg !2230, !tbaa !1790
  %39 = getelementptr inbounds i8, i8* %25, i64 72, !dbg !2231
  %40 = bitcast i8* %39 to %struct.redisObject***, !dbg !2231
  store %struct.redisObject** null, %struct.redisObject*** %40, align 8, !dbg !2232, !tbaa !1793
  %41 = getelementptr inbounds i8, i8* %25, i64 528, !dbg !2233
  %42 = bitcast i8* %41 to i32*, !dbg !2233
  store i32 0, i32* %42, align 8, !dbg !2234, !tbaa !1796
  %43 = getelementptr inbounds i8, i8* %25, i64 160, !dbg !2235
  %44 = bitcast i8* %43 to i32*, !dbg !2235
  store i32 0, i32* %44, align 8, !dbg !2236, !tbaa !1799
  %45 = getelementptr inbounds i8, i8* %25, i64 384, !dbg !2237
  %46 = bitcast i8* %45 to i32*, !dbg !2237
  store i32 0, i32* %46, align 8, !dbg !2238, !tbaa !1802
  %47 = getelementptr inbounds i8, i8* %25, i64 168, !dbg !2239
  %48 = bitcast i8* %47 to i32*, !dbg !2239
  store i32 6, i32* %48, align 8, !dbg !2240, !tbaa !1805
  %49 = call %struct.list* @listCreate() #6, !dbg !2241
  %50 = getelementptr inbounds i8, i8* %25, i64 112, !dbg !2242
  %51 = bitcast i8* %50 to %struct.list**, !dbg !2242
  store %struct.list* %49, %struct.list** %51, align 8, !dbg !2243, !tbaa !1809
  %52 = getelementptr inbounds i8, i8* %25, i64 120, !dbg !2244
  %53 = bitcast i8* %52 to i64*, !dbg !2244
  store i64 0, i64* %53, align 8, !dbg !2245, !tbaa !1812
  %54 = getelementptr inbounds i8, i8* %25, i64 152, !dbg !2246
  %55 = bitcast i8* %54 to i64*, !dbg !2246
  store i64 0, i64* %55, align 8, !dbg !2247, !tbaa !1815
  %56 = call %struct.list* @listCreate() #6, !dbg !2248
  %57 = getelementptr inbounds i8, i8* %25, i64 488, !dbg !2249
  %58 = bitcast i8* %57 to %struct.list**, !dbg !2249
  store %struct.list* %56, %struct.list** %58, align 8, !dbg !2250, !tbaa !1819
  %59 = getelementptr inbounds i8, i8* %25, i64 512, !dbg !2251
  %60 = bitcast i8* %59 to i8**, !dbg !2251
  store i8* null, i8** %60, align 8, !dbg !2252, !tbaa !1822
  %61 = load %struct.list*, %struct.list** %51, align 8, !dbg !2253, !tbaa !1809
  %62 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 3, !dbg !2253
  store void (i8*)* @freeClientReplyValue, void (i8*)** %62, align 8, !dbg !2253, !tbaa !108
  %63 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 2, !dbg !2254
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %63, align 8, !dbg !2254, !tbaa !1825
  call void @initClientMultiState(%struct.client* %26) #6, !dbg !2255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2256
  call void @startLoading(%struct.__sFILE* nonnull %6) #6, !dbg !2258
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !2259
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2259
  %65 = call i64 @fread(i8* nonnull %64, i64 1, i64 5, %struct.__sFILE* nonnull %6) #6, !dbg !2261
  %66 = icmp eq i64 %65, 5, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  br i1 %66, label %67, label %70, !dbg !2263

; <label>:67:                                     ; preds = %24
  %68 = call i32 @memcmp(i8* nonnull %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i64 5) #6, !dbg !2264
  %69 = icmp eq i32 %68, 0, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  br i1 %69, label %73, label %70, !dbg !2266

; <label>:70:                                     ; preds = %67, %24
  %71 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2267
  %72 = icmp eq i32 %71, -1, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br i1 %72, label %277, label %83, !dbg !2271

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct._rio* %4 to i8*, !dbg !2272
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2272
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2273
  %75 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2274
  %76 = icmp eq i32 %75, -1, !dbg !2276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2277
  br i1 %76, label %81, label %77, !dbg !2277

; <label>:77:                                     ; preds = %73
  call void @rioInitWithFile(%struct._rio* nonnull %4, %struct.__sFILE* nonnull %6) #6, !dbg !2279
  %78 = call i32 @rdbLoadRio(%struct._rio* nonnull %4, %struct.rdbSaveInfo* null, i32 1) #6, !dbg !2280
  %79 = icmp eq i32 %78, 0, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2283
  br i1 %79, label %82, label %80, !dbg !2283

; <label>:80:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !2284
  br label %81, !dbg !2286

; <label>:81:                                     ; preds = %73, %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:82:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !2289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %83

; <label>:83:                                     ; preds = %82, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %85 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1
  %87 = bitcast i8* %39 to i8**
  %88 = getelementptr inbounds i8, i8* %25, i64 80
  %89 = bitcast i8* %88 to %struct.redisCommand**
  br label %90, !dbg !2291

; <label>:90:                                     ; preds = %262, %83
  %91 = phi i64 [ 0, %83 ], [ %264, %262 ], !dbg !2189
  %92 = phi i64 [ 0, %83 ], [ %265, %262 ], !dbg !2188
  %93 = phi i64 [ 0, %83 ], [ %94, %262 ], !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2294
  %94 = add nuw nsw i64 %93, 1, !dbg !2296
  %95 = urem i64 %93, 1000, !dbg !2297
  %96 = icmp eq i64 %95, 0, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  br i1 %96, label %97, label %100, !dbg !2298

; <label>:97:                                     ; preds = %90
  %98 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2299
  call void @loadingProgress(i64 %98) #6, !dbg !2301
  %99 = call i32 @processEventsWhileBlocked() #6, !dbg !2302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  br label %100, !dbg !2303

; <label>:100:                                    ; preds = %90, %97
  %101 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2304
  %102 = icmp eq i8* %101, null, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2307
  br i1 %102, label %103, label %108, !dbg !2307

; <label>:103:                                    ; preds = %100
  %104 = load i16, i16* %85, align 8, !dbg !2308, !tbaa !2311
  %105 = and i16 %104, 32, !dbg !2308
  %106 = icmp eq i16 %105, 0, !dbg !2308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2316
  %107 = select i1 %106, i3 2, i3 -4, !dbg !2317
  br label %262, !dbg !2317

; <label>:108:                                    ; preds = %100
  %109 = load i8, i8* %84, align 16, !dbg !2318, !tbaa !482
  %110 = icmp eq i8 %109, 42, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  br i1 %110, label %111, label %260, !dbg !2321

; <label>:111:                                    ; preds = %108
  %112 = load i8, i8* %86, align 1, !dbg !2322, !tbaa !482
  %113 = icmp eq i8 %112, 0, !dbg !2324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2325
  br i1 %113, label %259, label %114, !dbg !2325

; <label>:114:                                    ; preds = %111
  %115 = call i32 @atoi(i8* nonnull %86) #6, !dbg !2326
  %116 = icmp slt i32 %115, 1, !dbg !2328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br i1 %116, label %260, label %117, !dbg !2330

; <label>:117:                                    ; preds = %114
  %118 = sext i32 %115 to i64, !dbg !2331
  %119 = shl nsw i64 %118, 3, !dbg !2332
  %120 = call i8* @zmalloc(i64 %119) #6, !dbg !2333
  %121 = bitcast i8* %120 to %struct.redisObject**, !dbg !2333
  store i32 %115, i32* %38, align 8, !dbg !2335, !tbaa !1790
  store i8* %120, i8** %87, align 8, !dbg !2336, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  br label %122, !dbg !2341

; <label>:122:                                    ; preds = %117, %192
  %123 = phi i64 [ 0, %117 ], [ %176, %192 ]
  %124 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2341
  %125 = icmp eq i8* %124, null, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  br i1 %125, label %126, label %143, !dbg !2346

; <label>:126:                                    ; preds = %122
  %127 = trunc i64 %123 to i32, !dbg !2188
  store i32 %127, i32* %38, align 8, !dbg !2347, !tbaa !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  %128 = icmp eq i32 %127, 0, !dbg !2353
  %129 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2354, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  br i1 %128, label %140, label %130, !dbg !2355

; <label>:130:                                    ; preds = %126, %130
  %131 = phi i64 [ %135, %130 ], [ 0, %126 ]
  %132 = phi %struct.redisObject** [ %139, %130 ], [ %129, %126 ]
  %133 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %131, !dbg !2356
  %134 = load %struct.redisObject*, %struct.redisObject** %133, align 8, !dbg !2356, !tbaa !1236
  call void @decrRefCount(%struct.redisObject* %134) #6, !dbg !2357
  %135 = add nuw nsw i64 %131, 1, !dbg !2358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
  %136 = load i32, i32* %38, align 8, !dbg !2360, !tbaa !1790
  %137 = sext i32 %136 to i64, !dbg !2353
  %138 = icmp slt i64 %135, %137, !dbg !2353
  %139 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2354, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  br i1 %138, label %130, label %140, !dbg !2355, !llvm.loop !1847

; <label>:140:                                    ; preds = %130, %126
  %141 = phi %struct.redisObject** [ %129, %126 ], [ %139, %130 ], !dbg !2354
  %142 = bitcast %struct.redisObject** %141 to i8*, !dbg !2361
  call void @zfree(i8* %142) #6, !dbg !2362
  br label %258, !dbg !2363

; <label>:143:                                    ; preds = %122
  %144 = load i8, i8* %84, align 16, !dbg !2364, !tbaa !482
  %145 = icmp eq i8 %144, 36, !dbg !2366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2367
  br i1 %145, label %146, label %260, !dbg !2367

; <label>:146:                                    ; preds = %143
  %147 = call i64 @strtol(i8* nonnull %86, i8** null, i32 10) #6, !dbg !2368
  %148 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !2370, !tbaa !1236
  %149 = call i8* @sdsnewlen(i8* %148, i64 %147) #6, !dbg !2371
  %150 = icmp eq i64 %147, 0, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  br i1 %150, label %171, label %151, !dbg !2375

; <label>:151:                                    ; preds = %146
  %152 = call i64 @fread(i8* %149, i64 %147, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2376
  %153 = icmp eq i64 %152, 0, !dbg !2377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2378
  br i1 %153, label %154, label %171, !dbg !2378

; <label>:154:                                    ; preds = %151
  %155 = trunc i64 %123 to i32, !dbg !2188
  call void @sdsfree(i8* %149) #6, !dbg !2379
  store i32 %155, i32* %38, align 8, !dbg !2381, !tbaa !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  %156 = icmp eq i32 %155, 0, !dbg !2386
  %157 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2387, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %156, label %168, label %158, !dbg !2388

; <label>:158:                                    ; preds = %154, %158
  %159 = phi i64 [ %163, %158 ], [ 0, %154 ]
  %160 = phi %struct.redisObject** [ %167, %158 ], [ %157, %154 ]
  %161 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %160, i64 %159, !dbg !2389
  %162 = load %struct.redisObject*, %struct.redisObject** %161, align 8, !dbg !2389, !tbaa !1236
  call void @decrRefCount(%struct.redisObject* %162) #6, !dbg !2390
  %163 = add nuw nsw i64 %159, 1, !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  %164 = load i32, i32* %38, align 8, !dbg !2393, !tbaa !1790
  %165 = sext i32 %164 to i64, !dbg !2386
  %166 = icmp slt i64 %163, %165, !dbg !2386
  %167 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2387, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  br i1 %166, label %158, label %168, !dbg !2388, !llvm.loop !1847

; <label>:168:                                    ; preds = %158, %154
  %169 = phi %struct.redisObject** [ %157, %154 ], [ %167, %158 ], !dbg !2387
  %170 = bitcast %struct.redisObject** %169 to i8*, !dbg !2394
  call void @zfree(i8* %170) #6, !dbg !2395
  br label %258, !dbg !2396

; <label>:171:                                    ; preds = %146, %151
  %172 = call %struct.redisObject* @createObject(i32 0, i8* %149) #6, !dbg !2397
  %173 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %121, i64 %123, !dbg !2398
  store %struct.redisObject* %172, %struct.redisObject** %173, align 8, !dbg !2399, !tbaa !1236
  %174 = call i64 @fread(i8* nonnull %84, i64 2, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2400
  %175 = icmp eq i64 %174, 0, !dbg !2402
  %176 = add nuw nsw i64 %123, 1, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2404
  br i1 %175, label %177, label %192, !dbg !2404

; <label>:177:                                    ; preds = %171
  %178 = trunc i64 %176 to i32, !dbg !2188
  store i32 %178, i32* %38, align 8, !dbg !2405, !tbaa !1790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  %179 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2411, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  br label %180, !dbg !2412

; <label>:180:                                    ; preds = %177, %180
  %181 = phi i64 [ %185, %180 ], [ 0, %177 ]
  %182 = phi %struct.redisObject** [ %189, %180 ], [ %179, %177 ]
  %183 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %182, i64 %181, !dbg !2413
  %184 = load %struct.redisObject*, %struct.redisObject** %183, align 8, !dbg !2413, !tbaa !1236
  call void @decrRefCount(%struct.redisObject* %184) #6, !dbg !2414
  %185 = add nuw nsw i64 %181, 1, !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  %186 = load i32, i32* %38, align 8, !dbg !2417, !tbaa !1790
  %187 = sext i32 %186 to i64, !dbg !2418
  %188 = icmp slt i64 %185, %187, !dbg !2418
  %189 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2411, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  br i1 %188, label %180, label %190, !dbg !2412, !llvm.loop !1847

; <label>:190:                                    ; preds = %180
  %191 = bitcast %struct.redisObject** %189 to i8*, !dbg !2419
  call void @zfree(i8* %191) #6, !dbg !2420
  br label %258, !dbg !2421

; <label>:192:                                    ; preds = %171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  %193 = icmp slt i64 %176, %118, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  br i1 %193, label %122, label %194, !dbg !2340, !llvm.loop !2424

; <label>:194:                                    ; preds = %192
  %195 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !2426, !tbaa !1236
  %196 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %195, i64 0, i32 2, !dbg !2427
  %197 = load i8*, i8** %196, align 8, !dbg !2427, !tbaa !1241
  %198 = call %struct.redisCommand* @lookupCommand(i8* %197) #6, !dbg !2428
  %199 = icmp eq %struct.redisCommand* %198, null, !dbg !2430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2432
  br i1 %199, label %200, label %205, !dbg !2432

; <label>:200:                                    ; preds = %194
  %201 = bitcast i8* %120 to %struct.redisObject**, !dbg !2333
  %202 = load %struct.redisObject*, %struct.redisObject** %201, align 8, !dbg !2433, !tbaa !1236
  %203 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %202, i64 0, i32 2, !dbg !2435
  %204 = load i8*, i8** %203, align 8, !dbg !2435, !tbaa !1241
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i8* %204) #6, !dbg !2436
  call void @exit(i32 1) #8, !dbg !2437
  unreachable

; <label>:205:                                    ; preds = %194
  %206 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !2438, !tbaa !2440
  %207 = icmp eq %struct.redisCommand* %198, %206, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2442
  br i1 %207, label %208, label %209, !dbg !2442

; <label>:208:                                    ; preds = %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  br label %209, !dbg !2443

; <label>:209:                                    ; preds = %208, %205
  %210 = phi i64 [ %92, %208 ], [ %91, %205 ], !dbg !2444
  store %struct.redisCommand* %198, %struct.redisCommand** %89, align 8, !dbg !2445, !tbaa !2446
  %211 = load i32, i32* %44, align 8, !dbg !2447, !tbaa !1799
  %212 = and i32 %211, 8, !dbg !2449
  %213 = icmp eq i32 %212, 0, !dbg !2449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2450
  %214 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %198, i64 0, i32 1
  %215 = load void (%struct.client*)*, void (%struct.client*)** %214, align 8, !dbg !2451, !tbaa !1541
  br i1 %213, label %219, label %216, !dbg !2450

; <label>:216:                                    ; preds = %209
  %217 = icmp eq void (%struct.client*)* %215, @execCommand, !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  br i1 %217, label %219, label %218, !dbg !2453

; <label>:218:                                    ; preds = %216
  call void @queueMultiCommand(%struct.client* nonnull %26) #6, !dbg !2454
  br label %221, !dbg !2456

; <label>:219:                                    ; preds = %209, %216
  %220 = phi void (%struct.client*)* [ @execCommand, %216 ], [ %215, %209 ], !dbg !2457
  call void %220(%struct.client* nonnull %26) #6, !dbg !2459
  br label %221

; <label>:221:                                    ; preds = %219, %218
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %222 = load i32, i32* %42, align 8, !dbg !2460, !tbaa !1796
  %223 = icmp eq i32 %222, 0, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  br i1 %223, label %224, label %229, !dbg !2460

; <label>:224:                                    ; preds = %221
  %225 = load %struct.list*, %struct.list** %51, align 8, !dbg !2460, !tbaa !1809
  %226 = getelementptr inbounds %struct.list, %struct.list* %225, i64 0, i32 5, !dbg !2460
  %227 = load i64, i64* %226, align 8, !dbg !2460, !tbaa !345
  %228 = icmp eq i64 %227, 0, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  br i1 %228, label %230, label %229, !dbg !2460

; <label>:229:                                    ; preds = %224, %221
  call void @_serverAssert(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 827) #6, !dbg !2460
  call void @_exit(i32 1) #8, !dbg !2460
  unreachable

; <label>:230:                                    ; preds = %224
  %231 = load i32, i32* %44, align 8, !dbg !2461, !tbaa !1799
  %232 = and i32 %231, 16, !dbg !2461
  %233 = icmp eq i32 %232, 0, !dbg !2461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  br i1 %233, label %235, label %234, !dbg !2461

; <label>:234:                                    ; preds = %230
  call void @_serverAssert(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 830) #6, !dbg !2461
  call void @_exit(i32 1) #8, !dbg !2461
  unreachable

; <label>:235:                                    ; preds = %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2465
  %236 = load i32, i32* %38, align 8, !dbg !2466, !tbaa !1790
  %237 = icmp sgt i32 %236, 0, !dbg !2467
  %238 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2468, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  br i1 %237, label %239, label %249, !dbg !2469

; <label>:239:                                    ; preds = %235, %239
  %240 = phi i64 [ %244, %239 ], [ 0, %235 ]
  %241 = phi %struct.redisObject** [ %248, %239 ], [ %238, %235 ]
  %242 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %241, i64 %240, !dbg !2470
  %243 = load %struct.redisObject*, %struct.redisObject** %242, align 8, !dbg !2470, !tbaa !1236
  call void @decrRefCount(%struct.redisObject* %243) #6, !dbg !2471
  %244 = add nuw nsw i64 %240, 1, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  %245 = load i32, i32* %38, align 8, !dbg !2466, !tbaa !1790
  %246 = sext i32 %245 to i64, !dbg !2467
  %247 = icmp slt i64 %244, %246, !dbg !2467
  %248 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2468, !tbaa !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  br i1 %247, label %239, label %249, !dbg !2469, !llvm.loop !1847

; <label>:249:                                    ; preds = %239, %235
  %250 = phi %struct.redisObject** [ %238, %235 ], [ %248, %239 ], !dbg !2468
  %251 = bitcast %struct.redisObject** %250 to i8*, !dbg !2474
  call void @zfree(i8* %251) #6, !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  store %struct.redisCommand* null, %struct.redisCommand** %89, align 8, !dbg !2477, !tbaa !2446
  %252 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2478, !tbaa !2480
  %253 = icmp eq i32 %252, 0, !dbg !2481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  br i1 %253, label %256, label %254, !dbg !2482

; <label>:254:                                    ; preds = %249
  %255 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  br label %256, !dbg !2484

; <label>:256:                                    ; preds = %249, %254
  %257 = phi i64 [ %255, %254 ], [ %92, %249 ], !dbg !2444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br label %262, !dbg !2485

; <label>:258:                                    ; preds = %190, %168, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  br label %259, !dbg !2487

; <label>:259:                                    ; preds = %111, %258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:260:                                    ; preds = %114, %108, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2488
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %261 = icmp eq i8* %25, null, !dbg !2489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  br i1 %261, label %330, label %326, !dbg !2491

; <label>:262:                                    ; preds = %103, %256
  %263 = phi i3 [ 0, %256 ], [ %107, %103 ]
  %264 = phi i64 [ %210, %256 ], [ %91, %103 ], !dbg !2492
  %265 = phi i64 [ %257, %256 ], [ %92, %103 ], !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  switch i3 %263, label %331 [
    i3 0, label %90
    i3 -4, label %266
    i3 2, label %277
  ], !llvm.loop !2494

; <label>:266:                                    ; preds = %262
  %267 = load i32, i32* %44, align 8, !dbg !2495, !tbaa !1799
  %268 = and i32 %267, 8, !dbg !2497
  %269 = icmp eq i32 %268, 0, !dbg !2497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2498
  br i1 %269, label %271, label %270, !dbg !2498

; <label>:270:                                    ; preds = %266
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  br label %293, !dbg !2501

; <label>:271:                                    ; preds = %266, %317
  %272 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2502
  %273 = load i8*, i8** %34, align 8, !dbg !2505, !tbaa !1784
  call void @sdsfree(i8* %273) #6, !dbg !2506
  %274 = load %struct.list*, %struct.list** %51, align 8, !dbg !2507, !tbaa !1809
  call void @listRelease(%struct.list* %274) #6, !dbg !2508
  %275 = load %struct.list*, %struct.list** %58, align 8, !dbg !2509, !tbaa !1819
  call void @listRelease(%struct.list* %275) #6, !dbg !2510
  call void @freeClientMultiState(%struct.client* %26) #6, !dbg !2511
  call void @zfree(i8* %25) #6, !dbg !2512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2513
  store i32 %8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2514, !tbaa !451
  call void @stopLoading() #6, !dbg !2515
  call void @aofUpdateCurrentSize() #9, !dbg !2516
  %276 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2517, !tbaa !518
  store i64 %276, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !2518, !tbaa !2519
  store i64 %276, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !2520, !tbaa !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  br label %331, !dbg !2521

; <label>:277:                                    ; preds = %262, %259, %81, %70
  %278 = phi i64 [ 0, %70 ], [ 0, %81 ], [ %92, %259 ], [ %265, %262 ], !dbg !2188
  %279 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !2522
  %280 = load i16, i16* %279, align 8, !dbg !2522, !tbaa !2311
  %281 = and i16 %280, 32, !dbg !2522
  %282 = icmp eq i16 %281, 0, !dbg !2522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2524
  br i1 %282, label %283, label %293, !dbg !2524

; <label>:283:                                    ; preds = %277
  %284 = icmp eq i8* %25, null, !dbg !2525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2528
  br i1 %284, label %289, label %285, !dbg !2528

; <label>:285:                                    ; preds = %283
  %286 = load i8*, i8** %34, align 8, !dbg !2531, !tbaa !1784
  call void @sdsfree(i8* %286) #6, !dbg !2532
  %287 = load %struct.list*, %struct.list** %51, align 8, !dbg !2533, !tbaa !1809
  call void @listRelease(%struct.list* %287) #6, !dbg !2534
  %288 = load %struct.list*, %struct.list** %58, align 8, !dbg !2535, !tbaa !1819
  call void @listRelease(%struct.list* %288) #6, !dbg !2536
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2537
  call void @zfree(i8* nonnull %25) #6, !dbg !2538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  br label %289, !dbg !2540

; <label>:289:                                    ; preds = %283, %285
  %290 = call i32* @__errno() #6, !dbg !2541
  %291 = load i32, i32* %290, align 4, !dbg !2541, !tbaa !428
  %292 = call i8* @strerror(i32 %291) #6, !dbg !2542
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i8* %292) #6, !dbg !2543
  call void @exit(i32 1) #8, !dbg !2544
  unreachable

; <label>:293:                                    ; preds = %277, %270
  %294 = phi i64 [ %278, %277 ], [ %264, %270 ], !dbg !2545
  %295 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2546, !tbaa !2480
  %296 = icmp eq i32 %295, 0, !dbg !2548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2549
  br i1 %296, label %319, label %297, !dbg !2549

; <label>:297:                                    ; preds = %293
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2550
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0), i64 %294) #6, !dbg !2552
  %298 = icmp eq i64 %294, -1, !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  br i1 %298, label %302, label %299, !dbg !2555

; <label>:299:                                    ; preds = %297
  %300 = call i32 @truncate(i8* %0, i64 %294) #6, !dbg !2556
  %301 = icmp eq i32 %300, -1, !dbg !2557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  br i1 %301, label %303, label %307, !dbg !2558

; <label>:302:                                    ; preds = %297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !2561
  br label %318, !dbg !2564

; <label>:303:                                    ; preds = %299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  %304 = call i32* @__errno() #6, !dbg !2565
  %305 = load i32, i32* %304, align 4, !dbg !2565, !tbaa !428
  %306 = call i8* @strerror(i32 %305) #6, !dbg !2567
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i8* %306) #6, !dbg !2568
  br label %318

; <label>:307:                                    ; preds = %299
  %308 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2569, !tbaa !454
  %309 = icmp eq i32 %308, -1, !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  br i1 %309, label %317, label %310, !dbg !2573

; <label>:310:                                    ; preds = %307
  %311 = call i64 @lseek(i32 %308, i64 0, i32 2) #6, !dbg !2574
  %312 = icmp eq i64 %311, -1, !dbg !2575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2576
  br i1 %312, label %313, label %317, !dbg !2576

; <label>:313:                                    ; preds = %310
  %314 = call i32* @__errno() #6, !dbg !2577
  %315 = load i32, i32* %314, align 4, !dbg !2577, !tbaa !428
  %316 = call i8* @strerror(i32 %315) #6, !dbg !2579
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* %316) #6, !dbg !2580
  br label %318

; <label>:317:                                    ; preds = %307, %310
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br label %271, !dbg !2583

; <label>:318:                                    ; preds = %302, %303, %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %319, !dbg !2584

; <label>:319:                                    ; preds = %318, %293
  %320 = icmp eq i8* %25, null, !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %320, label %325, label %321, !dbg !2586

; <label>:321:                                    ; preds = %319
  %322 = load i8*, i8** %34, align 8, !dbg !2589, !tbaa !1784
  call void @sdsfree(i8* %322) #6, !dbg !2590
  %323 = load %struct.list*, %struct.list** %51, align 8, !dbg !2591, !tbaa !1809
  call void @listRelease(%struct.list* %323) #6, !dbg !2592
  %324 = load %struct.list*, %struct.list** %58, align 8, !dbg !2593, !tbaa !1819
  call void @listRelease(%struct.list* %324) #6, !dbg !2594
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2595
  call void @zfree(i8* nonnull %25) #6, !dbg !2596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  br label %325, !dbg !2598

; <label>:325:                                    ; preds = %319, %321
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2599
  call void @exit(i32 1) #8, !dbg !2600
  unreachable

; <label>:326:                                    ; preds = %260
  %327 = load i8*, i8** %34, align 8, !dbg !2603, !tbaa !1784
  call void @sdsfree(i8* %327) #6, !dbg !2604
  %328 = load %struct.list*, %struct.list** %51, align 8, !dbg !2605, !tbaa !1809
  call void @listRelease(%struct.list* %328) #6, !dbg !2606
  %329 = load %struct.list*, %struct.list** %58, align 8, !dbg !2607, !tbaa !1819
  call void @listRelease(%struct.list* %329) #6, !dbg !2608
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2609
  call void @zfree(i8* nonnull %25) #6, !dbg !2610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  br label %330, !dbg !2612

; <label>:330:                                    ; preds = %260, %326
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2613
  call void @exit(i32 1) #8, !dbg !2614
  unreachable

; <label>:331:                                    ; preds = %262, %271
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2615
  br label %332

; <label>:332:                                    ; preds = %331, %22
  %333 = phi i32 [ -1, %22 ], [ 0, %331 ], !dbg !2444
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  ret i32 %333, !dbg !2615
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
define dso_local void @aofUpdateCurrentSize() local_unnamed_addr #0 !dbg !2616 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2620
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2621, !tbaa !566
  %4 = icmp eq i64 %3, 0, !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  br i1 %4, label %7, label %5, !dbg !2623

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 @mstime() #6, !dbg !2624
  br label %7, !dbg !2624

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %0 ], !dbg !2624
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2627, !tbaa !454
  %10 = call i32 @fstat(i32 %9, %struct.stat* nonnull %1) #6, !dbg !2630
  %11 = icmp eq i32 %10, -1, !dbg !2631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  br i1 %11, label %12, label %16, !dbg !2632

; <label>:12:                                     ; preds = %7
  %13 = call i32* @__errno() #6, !dbg !2633
  %14 = load i32, i32* %13, align 4, !dbg !2633, !tbaa !428
  %15 = call i8* @strerror(i32 %14) #6, !dbg !2635
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i64 0, i64 0), i8* %15) #6, !dbg !2636
  br label %19, !dbg !2637

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 7, !dbg !2638
  %18 = load i64, i64* %17, align 8, !dbg !2638, !tbaa !2206
  store i64 %18, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2640, !tbaa !518
  br label %19

; <label>:19:                                     ; preds = %16, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2641, !tbaa !566
  %21 = icmp eq i64 %20, 0, !dbg !2641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %21, label %22, label %23, !dbg !2643

; <label>:22:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  br label %31, !dbg !2644

; <label>:23:                                     ; preds = %19
  %24 = call i64 @mstime() #6, !dbg !2646
  %25 = sub nsw i64 %24, %8, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2644, !tbaa !566
  %27 = icmp eq i64 %26, 0, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  br i1 %27, label %31, label %28, !dbg !2644

; <label>:28:                                     ; preds = %23
  %29 = icmp slt i64 %25, %26, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  br i1 %29, label %31, label %30, !dbg !2648

; <label>:30:                                     ; preds = %28
  call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i64 %25) #6, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  br label %31, !dbg !2644

; <label>:31:                                     ; preds = %22, %28, %23, %30
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  ret void, !dbg !2649
}

; Function Attrs: noredzone
declare dso_local i32 @truncate(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkObject(%struct._rio*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2650 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2659
  %4 = load i32, i32* %3, align 8, !dbg !2659
  %5 = lshr i32 %4, 4, !dbg !2659
  %6 = and i32 %5, 15, !dbg !2659
  %7 = icmp eq i32 %6, 1, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  br i1 %7, label %8, label %13, !dbg !2662

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2663
  %10 = bitcast i8** %9 to i64*, !dbg !2663
  %11 = load i64, i64* %10, align 8, !dbg !2663, !tbaa !1241
  %12 = tail call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %11) #6, !dbg !2665
  br label %48, !dbg !2666

; <label>:13:                                     ; preds = %2
  %14 = icmp eq i32 %6, 0, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2667
  br i1 %14, label %17, label %15, !dbg !2667

; <label>:15:                                     ; preds = %13
  %16 = icmp eq i32 %6, 8, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br i1 %16, label %17, label %47, !dbg !2669

; <label>:17:                                     ; preds = %15, %13
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2670
  %19 = load i8*, i8** %18, align 8, !dbg !2670, !tbaa !1241
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2674
  %21 = load i8, i8* %20, align 1, !dbg !2674, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2676
  %22 = trunc i8 %21 to i3, !dbg !2676
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !2676

; <label>:23:                                     ; preds = %17
  %24 = lshr i8 %21, 3, !dbg !2677
  %25 = zext i8 %24 to i64, !dbg !2677
  br label %44, !dbg !2678

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !2679
  %28 = load i8, i8* %27, align 1, !dbg !2680, !tbaa !482
  %29 = zext i8 %28 to i64, !dbg !2679
  br label %44, !dbg !2681

; <label>:30:                                     ; preds = %17
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !2682
  %32 = bitcast i8* %31 to i16*, !dbg !2683
  %33 = load i16, i16* %32, align 1, !dbg !2683, !tbaa !493
  %34 = zext i16 %33 to i64, !dbg !2682
  br label %44, !dbg !2684

; <label>:35:                                     ; preds = %17
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !2685
  %37 = bitcast i8* %36 to i32*, !dbg !2686
  %38 = load i32, i32* %37, align 1, !dbg !2686, !tbaa !428
  %39 = zext i32 %38 to i64, !dbg !2685
  br label %44, !dbg !2687

; <label>:40:                                     ; preds = %17
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !2688
  %42 = bitcast i8* %41 to i64*, !dbg !2689
  %43 = load i64, i64* %42, align 1, !dbg !2689, !tbaa !341
  br label %44, !dbg !2690

; <label>:44:                                     ; preds = %17, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %17 ], !dbg !2691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  %46 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %19, i64 %45) #6, !dbg !2694
  br label %48, !dbg !2695

; <label>:47:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 916, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2696
  tail call void @_exit(i32 1) #8, !dbg !2696
  unreachable

; <label>:48:                                     ; preds = %44, %8
  %49 = phi i64 [ %12, %8 ], [ %46, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2698
  %50 = trunc i64 %49 to i32, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2699
  ret i32 %50, !dbg !2699
}

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteListObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2700 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = tail call i64 @listTypeLength(%struct.redisObject* %2) #6, !dbg !2769
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2771
  %7 = load i32, i32* %6, align 8, !dbg !2771
  %8 = and i32 %7, 240, !dbg !2771
  %9 = icmp eq i32 %8, 144, !dbg !2772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2773
  br i1 %9, label %10, label %62, !dbg !2773

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2774
  %12 = bitcast i8** %11 to %struct.quicklist**, !dbg !2774
  %13 = load %struct.quicklist*, %struct.quicklist** %12, align 8, !dbg !2774, !tbaa !1241
  %14 = tail call %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist* %13, i32 0) #6, !dbg !2776
  %15 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2778
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  %16 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2781
  %17 = icmp eq i32 %16, 0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  br i1 %17, label %63, label %18, !dbg !2779

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 4
  %21 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 5
  br label %22, !dbg !2779

; <label>:22:                                     ; preds = %18, %54
  %23 = phi i64 [ 0, %18 ], [ %57, %54 ]
  %24 = phi i64 [ %5, %18 ], [ %58, %54 ]
  %25 = icmp eq i64 %23, 0, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br i1 %25, label %26, label %42, !dbg !2783

; <label>:26:                                     ; preds = %22
  %27 = icmp slt i64 %24, 64, !dbg !2784
  %28 = select i1 %27, i64 %24, i64 64, !dbg !2784
  %29 = shl i64 %28, 32, !dbg !2785
  %30 = add i64 %29, 8589934592, !dbg !2785
  %31 = ashr exact i64 %30, 32, !dbg !2785
  %32 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %31) #6, !dbg !2787
  %33 = icmp eq i64 %32, 0, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  br i1 %33, label %40, label %34, !dbg !2789

; <label>:34:                                     ; preds = %26
  %35 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i64 5) #6, !dbg !2790
  %36 = icmp eq i64 %35, 0, !dbg !2792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  br i1 %36, label %40, label %37, !dbg !2793

; <label>:37:                                     ; preds = %34
  %38 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2794
  %39 = icmp eq i32 %38, 0, !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2798
  br i1 %39, label %61, label %41

; <label>:40:                                     ; preds = %34, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  br label %61

; <label>:41:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %22
  %43 = load i8*, i8** %19, align 8, !dbg !2800, !tbaa !2802
  %44 = icmp eq i8* %43, null, !dbg !2804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  br i1 %44, label %50, label %45, !dbg !2805

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %21, align 8, !dbg !2806, !tbaa !2809
  %47 = zext i32 %46 to i64, !dbg !2810
  %48 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %43, i64 %47) #6, !dbg !2811
  %49 = icmp eq i64 %48, 0, !dbg !2812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2813
  br i1 %49, label %61, label %54, !dbg !2813

; <label>:50:                                     ; preds = %42
  %51 = load i64, i64* %20, align 8, !dbg !2814, !tbaa !2817
  %52 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %51) #6, !dbg !2818
  %53 = icmp eq i64 %52, 0, !dbg !2819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  br i1 %53, label %61, label %54, !dbg !2820

; <label>:54:                                     ; preds = %50, %45
  %55 = add nsw i64 %23, 1, !dbg !2821
  %56 = icmp eq i64 %55, 64, !dbg !2823
  %57 = select i1 %56, i64 0, i64 %55, !dbg !2824
  %58 = add nsw i64 %24, -1, !dbg !2825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  %59 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2781
  %60 = icmp eq i32 %59, 0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  br i1 %60, label %63, label %22, !dbg !2779, !llvm.loop !2826

; <label>:61:                                     ; preds = %50, %45, %37, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2828
  br label %64

; <label>:62:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 949, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !2829
  tail call void @_exit(i32 1) #8, !dbg !2829
  unreachable

; <label>:63:                                     ; preds = %54, %10
  call void @quicklistReleaseIterator(%struct.quicklistIter* %14) #6, !dbg !2831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %64, !dbg !2832

; <label>:64:                                     ; preds = %61, %63
  %65 = phi i32 [ 1, %63 ], [ 0, %61 ], !dbg !2833
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  ret i32 %65, !dbg !2834
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
define dso_local i32 @rewriteSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2835 {
  %4 = alloca i64, align 8
  %5 = tail call i64 @setTypeSize(%struct.redisObject* %2) #6, !dbg !2874
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2876
  %7 = load i32, i32* %6, align 8, !dbg !2876
  %8 = lshr i32 %7, 4, !dbg !2876
  %9 = and i32 %8, 15, !dbg !2876
  %10 = icmp eq i32 %9, 6, !dbg !2877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  br i1 %10, label %11, label %54, !dbg !2878

; <label>:11:                                     ; preds = %3
  %12 = bitcast i64* %4 to i8*, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !2880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2882
  %14 = bitcast i8** %13 to %struct.intset**, !dbg !2882
  %15 = load %struct.intset*, %struct.intset** %14, align 8, !dbg !2882, !tbaa !1241
  %16 = call zeroext i8 @intsetGet(%struct.intset* %15, i32 0, i64* nonnull %4) #6, !dbg !2884
  %17 = icmp eq i8 %16, 0, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  br i1 %17, label %53, label %18, !dbg !2881

; <label>:18:                                     ; preds = %11, %43
  %19 = phi i32 [ %49, %43 ], [ 1, %11 ]
  %20 = phi i64 [ %46, %43 ], [ 0, %11 ]
  %21 = phi i64 [ %47, %43 ], [ %5, %11 ]
  %22 = icmp eq i64 %20, 0, !dbg !2885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2886
  br i1 %22, label %23, label %39, !dbg !2886

; <label>:23:                                     ; preds = %18
  %24 = icmp slt i64 %21, 64, !dbg !2887
  %25 = select i1 %24, i64 %21, i64 64, !dbg !2887
  %26 = shl i64 %25, 32, !dbg !2888
  %27 = add i64 %26, 8589934592, !dbg !2888
  %28 = ashr exact i64 %27, 32, !dbg !2888
  %29 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %28) #6, !dbg !2890
  %30 = icmp eq i64 %29, 0, !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2892
  br i1 %30, label %37, label %31, !dbg !2892

; <label>:31:                                     ; preds = %23
  %32 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2893
  %33 = icmp eq i64 %32, 0, !dbg !2895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  br i1 %33, label %37, label %34, !dbg !2896

; <label>:34:                                     ; preds = %31
  %35 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2897
  %36 = icmp eq i32 %35, 0, !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  br i1 %36, label %52, label %38

; <label>:37:                                     ; preds = %31, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2902
  br label %52

; <label>:38:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %39

; <label>:39:                                     ; preds = %38, %18
  %40 = load i64, i64* %4, align 8, !dbg !2903, !tbaa !341
  %41 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %40) #6, !dbg !2905
  %42 = icmp eq i64 %41, 0, !dbg !2906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2907
  br i1 %42, label %52, label %43, !dbg !2907

; <label>:43:                                     ; preds = %39
  %44 = add nsw i64 %20, 1, !dbg !2908
  %45 = icmp eq i64 %44, 64, !dbg !2910
  %46 = select i1 %45, i64 0, i64 %44, !dbg !2911
  %47 = add nsw i64 %21, -1, !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  %48 = load %struct.intset*, %struct.intset** %14, align 8, !dbg !2882, !tbaa !1241
  %49 = add nuw nsw i32 %19, 1, !dbg !2913
  %50 = call zeroext i8 @intsetGet(%struct.intset* %48, i32 %19, i64* nonnull %4) #6, !dbg !2884
  %51 = icmp eq i8 %50, 0, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  br i1 %51, label %53, label %18, !dbg !2881, !llvm.loop !2914

; <label>:52:                                     ; preds = %39, %34, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !2916
  br label %126

; <label>:53:                                     ; preds = %43, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !2916
  br label %125

; <label>:54:                                     ; preds = %3
  %55 = icmp eq i32 %9, 2, !dbg !2917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2918
  br i1 %55, label %56, label %124, !dbg !2918

; <label>:56:                                     ; preds = %54
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2919
  %58 = bitcast i8** %57 to %struct.dict**, !dbg !2919
  %59 = load %struct.dict*, %struct.dict** %58, align 8, !dbg !2919, !tbaa !1241
  %60 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %59) #6, !dbg !2920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2922
  %61 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %60) #6, !dbg !2923
  %62 = icmp eq %struct.dictEntry* %61, null, !dbg !2925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2922
  br i1 %62, label %122, label %63, !dbg !2922

; <label>:63:                                     ; preds = %56, %115
  %64 = phi %struct.dictEntry* [ %120, %115 ], [ %61, %56 ]
  %65 = phi i64 [ %118, %115 ], [ 0, %56 ]
  %66 = phi i64 [ %119, %115 ], [ %5, %56 ]
  %67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %64, i64 0, i32 0, !dbg !2926
  %68 = load i8*, i8** %67, align 8, !dbg !2926, !tbaa !2927
  %69 = icmp eq i64 %65, 0, !dbg !2930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2931
  br i1 %69, label %70, label %86, !dbg !2931

; <label>:70:                                     ; preds = %63
  %71 = icmp slt i64 %66, 64, !dbg !2932
  %72 = select i1 %71, i64 %66, i64 64, !dbg !2932
  %73 = shl i64 %72, 32, !dbg !2933
  %74 = add i64 %73, 8589934592, !dbg !2933
  %75 = ashr exact i64 %74, 32, !dbg !2933
  %76 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %75) #6, !dbg !2935
  %77 = icmp eq i64 %76, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2937
  br i1 %77, label %84, label %78, !dbg !2937

; <label>:78:                                     ; preds = %70
  %79 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2938
  %80 = icmp eq i64 %79, 0, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  br i1 %80, label %84, label %81, !dbg !2941

; <label>:81:                                     ; preds = %78
  %82 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2942
  %83 = icmp eq i32 %82, 0, !dbg !2944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2946
  br i1 %83, label %123, label %85

; <label>:84:                                     ; preds = %78, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br label %123

; <label>:85:                                     ; preds = %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %86

; <label>:86:                                     ; preds = %85, %63
  %87 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !2951
  %88 = load i8, i8* %87, align 1, !dbg !2951, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  %89 = trunc i8 %88 to i3, !dbg !2953
  switch i3 %89, label %111 [
    i3 0, label %90
    i3 1, label %93
    i3 2, label %97
    i3 3, label %102
    i3 -4, label %107
  ], !dbg !2953

; <label>:90:                                     ; preds = %86
  %91 = lshr i8 %88, 3, !dbg !2954
  %92 = zext i8 %91 to i64, !dbg !2954
  br label %111, !dbg !2955

; <label>:93:                                     ; preds = %86
  %94 = getelementptr inbounds i8, i8* %68, i64 -3, !dbg !2956
  %95 = load i8, i8* %94, align 1, !dbg !2957, !tbaa !482
  %96 = zext i8 %95 to i64, !dbg !2956
  br label %111, !dbg !2958

; <label>:97:                                     ; preds = %86
  %98 = getelementptr inbounds i8, i8* %68, i64 -5, !dbg !2959
  %99 = bitcast i8* %98 to i16*, !dbg !2960
  %100 = load i16, i16* %99, align 1, !dbg !2960, !tbaa !493
  %101 = zext i16 %100 to i64, !dbg !2959
  br label %111, !dbg !2961

; <label>:102:                                    ; preds = %86
  %103 = getelementptr inbounds i8, i8* %68, i64 -9, !dbg !2962
  %104 = bitcast i8* %103 to i32*, !dbg !2963
  %105 = load i32, i32* %104, align 1, !dbg !2963, !tbaa !428
  %106 = zext i32 %105 to i64, !dbg !2962
  br label %111, !dbg !2964

; <label>:107:                                    ; preds = %86
  %108 = getelementptr inbounds i8, i8* %68, i64 -17, !dbg !2965
  %109 = bitcast i8* %108 to i64*, !dbg !2966
  %110 = load i64, i64* %109, align 1, !dbg !2966, !tbaa !341
  br label %111, !dbg !2967

; <label>:111:                                    ; preds = %86, %90, %93, %97, %102, %107
  %112 = phi i64 [ %110, %107 ], [ %106, %102 ], [ %101, %97 ], [ %96, %93 ], [ %92, %90 ], [ 0, %86 ], !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2970
  %113 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %68, i64 %112) #6, !dbg !2971
  %114 = icmp eq i64 %113, 0, !dbg !2972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  br i1 %114, label %123, label %115, !dbg !2973

; <label>:115:                                    ; preds = %111
  %116 = add nsw i64 %65, 1, !dbg !2974
  %117 = icmp eq i64 %116, 64, !dbg !2976
  %118 = select i1 %117, i64 0, i64 %116, !dbg !2977
  %119 = add nsw i64 %66, -1, !dbg !2978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %120 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %60) #6, !dbg !2923
  %121 = icmp eq %struct.dictEntry* %120, null, !dbg !2925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2922
  br i1 %121, label %122, label %63, !dbg !2922

; <label>:122:                                    ; preds = %115, %56
  tail call void @dictReleaseIterator(%struct.dictIterator* %60) #6, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  br label %125

; <label>:123:                                    ; preds = %111, %81, %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %126

; <label>:124:                                    ; preds = %54
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 996, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !2982
  tail call void @_exit(i32 1) #8, !dbg !2982
  unreachable

; <label>:125:                                    ; preds = %122, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %126, !dbg !2984

; <label>:126:                                    ; preds = %123, %52, %125
  %127 = phi i32 [ 1, %125 ], [ 0, %123 ], [ 0, %52 ], !dbg !2969
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2985
  ret i32 %127, !dbg !2985
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
define dso_local i32 @rewriteSortedSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2986 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i64 @zsetLength(%struct.redisObject* %2) #6, !dbg !3048
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !3050
  %11 = load i32, i32* %10, align 8, !dbg !3050
  %12 = lshr i32 %11, 4, !dbg !3050
  %13 = and i32 %12, 15, !dbg !3050
  %14 = icmp eq i32 %13, 5, !dbg !3051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  br i1 %14, label %15, label %86, !dbg !3052

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3053
  %17 = load i8*, i8** %16, align 8, !dbg !3053, !tbaa !1241
  %18 = bitcast i8** %4 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3055
  %19 = bitcast i8** %5 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3055
  %20 = bitcast i8** %6 to i8*, !dbg !3056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3056
  %21 = bitcast i32* %7 to i8*, !dbg !3057
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3057
  %22 = bitcast i64* %8 to i8*, !dbg !3058
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3058
  %23 = tail call i8* @ziplistIndex(i8* %17, i32 0) #6, !dbg !3059
  store i8* %23, i8** %4, align 8, !dbg !3061, !tbaa !1236
  %24 = icmp eq i8* %23, null, !dbg !3062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3062
  br i1 %24, label %25, label %26, !dbg !3062

; <label>:25:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1015) #6, !dbg !3062
  tail call void @_exit(i32 1) #8, !dbg !3062
  unreachable

; <label>:26:                                     ; preds = %15
  %27 = tail call i8* @ziplistNext(i8* %17, i8* nonnull %23) #6, !dbg !3063
  store i8* %27, i8** %5, align 8, !dbg !3065, !tbaa !1236
  %28 = icmp eq i8* %27, null, !dbg !3066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3066
  br i1 %28, label %30, label %29, !dbg !3066

; <label>:29:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  br label %31, !dbg !3068

; <label>:30:                                     ; preds = %26
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1017) #6, !dbg !3066
  tail call void @_exit(i32 1) #8, !dbg !3066
  unreachable

; <label>:31:                                     ; preds = %29, %78
  %32 = phi i8* [ %83, %78 ], [ %23, %29 ]
  %33 = phi i64 [ %81, %78 ], [ 0, %29 ]
  %34 = phi i64 [ %82, %78 ], [ %9, %29 ]
  %35 = call i32 @ziplistGet(i8* nonnull %32, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !3068
  %36 = icmp eq i32 %35, 0, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  br i1 %36, label %37, label %38, !dbg !3068

; <label>:37:                                     ; preds = %31
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1020) #6, !dbg !3068
  call void @_exit(i32 1) #8, !dbg !3068
  unreachable

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %5, align 8, !dbg !3072, !tbaa !1236
  %40 = call double @zzlGetScore(i8* %39) #6, !dbg !3073
  %41 = icmp eq i64 %33, 0, !dbg !3075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3076
  br i1 %41, label %42, label %60, !dbg !3076

; <label>:42:                                     ; preds = %38
  %43 = icmp slt i64 %34, 64, !dbg !3077
  %44 = select i1 %43, i64 %34, i64 64, !dbg !3077
  %45 = trunc i64 %44 to i32, !dbg !3077
  %46 = shl i32 %45, 1, !dbg !3079
  %47 = add nsw i32 %46, 2, !dbg !3081
  %48 = sext i32 %47 to i64, !dbg !3082
  %49 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %48) #6, !dbg !3083
  %50 = icmp eq i64 %49, 0, !dbg !3084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  br i1 %50, label %57, label %51, !dbg !3085

; <label>:51:                                     ; preds = %42
  %52 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !3086
  %53 = icmp eq i64 %52, 0, !dbg !3088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  br i1 %53, label %57, label %54, !dbg !3089

; <label>:54:                                     ; preds = %51
  %55 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3090
  %56 = icmp eq i32 %55, 0, !dbg !3092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  br i1 %56, label %58, label %59

; <label>:57:                                     ; preds = %51, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3095
  br label %58

; <label>:58:                                     ; preds = %54, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3096
  br label %168

; <label>:59:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %60

; <label>:60:                                     ; preds = %59, %38
  %61 = call i64 @rioWriteBulkDouble(%struct._rio* %0, double %40) #6, !dbg !3097
  %62 = icmp eq i64 %61, 0, !dbg !3099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  br i1 %62, label %63, label %64, !dbg !3100

; <label>:63:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3096
  br label %168

; <label>:64:                                     ; preds = %60
  %65 = load i8*, i8** %6, align 8, !dbg !3102, !tbaa !1236
  %66 = icmp eq i8* %65, null, !dbg !3104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3105
  br i1 %66, label %73, label %67, !dbg !3105

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %7, align 4, !dbg !3106, !tbaa !428
  %69 = zext i32 %68 to i64, !dbg !3106
  %70 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %65, i64 %69) #6, !dbg !3109
  %71 = icmp eq i64 %70, 0, !dbg !3110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3111
  br i1 %71, label %72, label %78, !dbg !3111

; <label>:72:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3096
  br label %168

; <label>:73:                                     ; preds = %64
  %74 = load i64, i64* %8, align 8, !dbg !3113, !tbaa !3116
  %75 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %74) #6, !dbg !3117
  %76 = icmp eq i64 %75, 0, !dbg !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3119
  br i1 %76, label %77, label %78, !dbg !3119

; <label>:77:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3096
  br label %168

; <label>:78:                                     ; preds = %73, %67
  call void @zzlNext(i8* %17, i8** nonnull %4, i8** nonnull %5) #6, !dbg !3121
  %79 = add nsw i64 %33, 1, !dbg !3122
  %80 = icmp eq i64 %79, 64, !dbg !3124
  %81 = select i1 %80, i64 0, i64 %79, !dbg !3125
  %82 = add nsw i64 %34, -1, !dbg !3126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  %83 = load i8*, i8** %4, align 8, !dbg !3127, !tbaa !1236
  %84 = icmp eq i8* %83, null, !dbg !3128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  br i1 %84, label %85, label %31, !dbg !3067, !llvm.loop !3129

; <label>:85:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3096
  br label %167

; <label>:86:                                     ; preds = %3
  %87 = icmp eq i32 %13, 7, !dbg !3131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3132
  br i1 %87, label %88, label %166, !dbg !3132

; <label>:88:                                     ; preds = %86
  %89 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3133
  %90 = bitcast i8** %89 to %struct.zset**, !dbg !3133
  %91 = load %struct.zset*, %struct.zset** %90, align 8, !dbg !3133, !tbaa !1241
  %92 = getelementptr inbounds %struct.zset, %struct.zset* %91, i64 0, i32 0, !dbg !3135
  %93 = load %struct.dict*, %struct.dict** %92, align 8, !dbg !3135, !tbaa !3136
  %94 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %93) #6, !dbg !3138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  %95 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #6, !dbg !3141
  %96 = icmp eq %struct.dictEntry* %95, null, !dbg !3143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  br i1 %96, label %164, label %97, !dbg !3140

; <label>:97:                                     ; preds = %88, %157
  %98 = phi %struct.dictEntry* [ %162, %157 ], [ %95, %88 ]
  %99 = phi i64 [ %160, %157 ], [ 0, %88 ]
  %100 = phi i64 [ %161, %157 ], [ %9, %88 ]
  %101 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %98, i64 0, i32 0, !dbg !3144
  %102 = load i8*, i8** %101, align 8, !dbg !3144, !tbaa !2927
  %103 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %98, i64 0, i32 1, i32 0, !dbg !3146
  %104 = bitcast i8** %103 to double**, !dbg !3146
  %105 = load double*, double** %104, align 8, !dbg !3146, !tbaa !482
  %106 = icmp eq i64 %99, 0, !dbg !3148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  br i1 %106, label %107, label %124, !dbg !3149

; <label>:107:                                    ; preds = %97
  %108 = icmp slt i64 %100, 64, !dbg !3150
  %109 = select i1 %108, i64 %100, i64 64, !dbg !3150
  %110 = trunc i64 %109 to i32, !dbg !3150
  %111 = shl i32 %110, 1, !dbg !3152
  %112 = add nsw i32 %111, 2, !dbg !3154
  %113 = sext i32 %112 to i64, !dbg !3155
  %114 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %113) #6, !dbg !3156
  %115 = icmp eq i64 %114, 0, !dbg !3157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  br i1 %115, label %122, label %116, !dbg !3158

; <label>:116:                                    ; preds = %107
  %117 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !3159
  %118 = icmp eq i64 %117, 0, !dbg !3161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3162
  br i1 %118, label %122, label %119, !dbg !3162

; <label>:119:                                    ; preds = %116
  %120 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3163
  %121 = icmp eq i32 %120, 0, !dbg !3165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3167
  br i1 %121, label %165, label %123

; <label>:122:                                    ; preds = %116, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3168
  br label %165

; <label>:123:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %124

; <label>:124:                                    ; preds = %123, %97
  %125 = load double, double* %105, align 8, !dbg !3169, !tbaa !3171
  %126 = tail call i64 @rioWriteBulkDouble(%struct._rio* %0, double %125) #6, !dbg !3172
  %127 = icmp eq i64 %126, 0, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  br i1 %127, label %165, label %128, !dbg !3174

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds i8, i8* %102, i64 -1, !dbg !3178
  %130 = load i8, i8* %129, align 1, !dbg !3178, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3180
  %131 = trunc i8 %130 to i3, !dbg !3180
  switch i3 %131, label %153 [
    i3 0, label %132
    i3 1, label %135
    i3 2, label %139
    i3 3, label %144
    i3 -4, label %149
  ], !dbg !3180

; <label>:132:                                    ; preds = %128
  %133 = lshr i8 %130, 3, !dbg !3181
  %134 = zext i8 %133 to i64, !dbg !3181
  br label %153, !dbg !3182

; <label>:135:                                    ; preds = %128
  %136 = getelementptr inbounds i8, i8* %102, i64 -3, !dbg !3183
  %137 = load i8, i8* %136, align 1, !dbg !3184, !tbaa !482
  %138 = zext i8 %137 to i64, !dbg !3183
  br label %153, !dbg !3185

; <label>:139:                                    ; preds = %128
  %140 = getelementptr inbounds i8, i8* %102, i64 -5, !dbg !3186
  %141 = bitcast i8* %140 to i16*, !dbg !3187
  %142 = load i16, i16* %141, align 1, !dbg !3187, !tbaa !493
  %143 = zext i16 %142 to i64, !dbg !3186
  br label %153, !dbg !3188

; <label>:144:                                    ; preds = %128
  %145 = getelementptr inbounds i8, i8* %102, i64 -9, !dbg !3189
  %146 = bitcast i8* %145 to i32*, !dbg !3190
  %147 = load i32, i32* %146, align 1, !dbg !3190, !tbaa !428
  %148 = zext i32 %147 to i64, !dbg !3189
  br label %153, !dbg !3191

; <label>:149:                                    ; preds = %128
  %150 = getelementptr inbounds i8, i8* %102, i64 -17, !dbg !3192
  %151 = bitcast i8* %150 to i64*, !dbg !3193
  %152 = load i64, i64* %151, align 1, !dbg !3193, !tbaa !341
  br label %153, !dbg !3194

; <label>:153:                                    ; preds = %128, %132, %135, %139, %144, %149
  %154 = phi i64 [ %152, %149 ], [ %148, %144 ], [ %143, %139 ], [ %138, %135 ], [ %134, %132 ], [ 0, %128 ], !dbg !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3197
  %155 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %102, i64 %154) #6, !dbg !3198
  %156 = icmp eq i64 %155, 0, !dbg !3199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3200
  br i1 %156, label %165, label %157, !dbg !3200

; <label>:157:                                    ; preds = %153
  %158 = add nsw i64 %99, 1, !dbg !3201
  %159 = icmp eq i64 %158, 64, !dbg !3203
  %160 = select i1 %159, i64 0, i64 %158, !dbg !3204
  %161 = add nsw i64 %100, -1, !dbg !3205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %162 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #6, !dbg !3141
  %163 = icmp eq %struct.dictEntry* %162, null, !dbg !3143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  br i1 %163, label %164, label %97, !dbg !3140

; <label>:164:                                    ; preds = %157, %88
  tail call void @dictReleaseIterator(%struct.dictIterator* %94) #6, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3208
  br label %167

; <label>:165:                                    ; preds = %153, %124, %119, %122
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %168

; <label>:166:                                    ; preds = %86
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1065, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !3209
  tail call void @_exit(i32 1) #8, !dbg !3209
  unreachable

; <label>:167:                                    ; preds = %85, %164
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %168, !dbg !3211

; <label>:168:                                    ; preds = %58, %77, %72, %63, %165, %167
  %169 = phi i32 [ 1, %167 ], [ 0, %58 ], [ 0, %165 ], [ 0, %63 ], [ 0, %72 ], [ 0, %77 ], !dbg !3212
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3213
  ret i32 %169, !dbg !3213
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
define dso_local i32 @rewriteHashObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !3214 {
  %4 = tail call i64 @hashTypeLength(%struct.redisObject* %2) #6, !dbg !3240
  %5 = tail call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* %2) #6, !dbg !3242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  %6 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3245
  %7 = icmp eq i32 %6, -1, !dbg !3246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  br i1 %7, label %42, label %8, !dbg !3244

; <label>:8:                                      ; preds = %3, %35
  %9 = phi i64 [ %39, %35 ], [ %4, %3 ]
  %10 = phi i64 [ %38, %35 ], [ 0, %3 ]
  %11 = icmp eq i64 %10, 0, !dbg !3247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3248
  br i1 %11, label %12, label %29, !dbg !3248

; <label>:12:                                     ; preds = %8
  %13 = icmp slt i64 %9, 64, !dbg !3249
  %14 = select i1 %13, i64 %9, i64 64, !dbg !3249
  %15 = trunc i64 %14 to i32, !dbg !3249
  %16 = shl i32 %15, 1, !dbg !3251
  %17 = add nsw i32 %16, 2, !dbg !3253
  %18 = sext i32 %17 to i64, !dbg !3254
  %19 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %18) #6, !dbg !3255
  %20 = icmp eq i64 %19, 0, !dbg !3256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  br i1 %20, label %21, label %22, !dbg !3257

; <label>:21:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3258
  br label %43

; <label>:22:                                     ; preds = %12
  %23 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i64 5) #6, !dbg !3259
  %24 = icmp eq i64 %23, 0, !dbg !3261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  br i1 %24, label %25, label %26, !dbg !3262

; <label>:25:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3263
  br label %43

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3264
  %28 = icmp eq i32 %27, 0, !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %28, label %45, label %29

; <label>:29:                                     ; preds = %26, %8
  %30 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 1) #9, !dbg !3269
  %31 = icmp eq i32 %30, 0, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br i1 %31, label %43, label %32, !dbg !3272

; <label>:32:                                     ; preds = %29
  %33 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 2) #9, !dbg !3273
  %34 = icmp eq i32 %33, 0, !dbg !3275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  br i1 %34, label %43, label %35, !dbg !3276

; <label>:35:                                     ; preds = %32
  %36 = add nsw i64 %10, 1, !dbg !3277
  %37 = icmp eq i64 %36, 64, !dbg !3279
  %38 = select i1 %37, i64 0, i64 %36, !dbg !3280
  %39 = add nsw i64 %9, -1, !dbg !3281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  %40 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3245
  %41 = icmp eq i32 %40, -1, !dbg !3246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  br i1 %41, label %42, label %8, !dbg !3244, !llvm.loop !3282

; <label>:42:                                     ; preds = %35, %3
  tail call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %5) #6, !dbg !3284
  br label %43, !dbg !3285

; <label>:43:                                     ; preds = %32, %29, %42, %21, %25
  %44 = phi i32 [ 0, %25 ], [ 0, %21 ], [ 1, %42 ], [ 0, %29 ], [ 0, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %45, !dbg !3286

; <label>:45:                                     ; preds = %26, %43
  %46 = phi i32 [ %44, %43 ], [ 0, %26 ], !dbg !3287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  ret i32 %46, !dbg !3286
}

; Function Attrs: noredzone
declare dso_local i64 @hashTypeLength(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @hashTypeNext(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @rioWriteHashIteratorCursor(%struct._rio*, %struct.hashTypeIterator*, i32) unnamed_addr #0 !dbg !3288 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !3306
  %8 = load i32, i32* %7, align 8, !dbg !3306, !tbaa !3307
  %9 = icmp eq i32 %8, 5, !dbg !3309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3310
  br i1 %9, label %10, label %25, !dbg !3310

; <label>:10:                                     ; preds = %3
  %11 = bitcast i8** %4 to i8*, !dbg !3311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7, !dbg !3311
  store i8* null, i8** %4, align 8, !dbg !3312, !tbaa !1236
  %12 = bitcast i32* %5 to i8*, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #7, !dbg !3313
  store i32 -1, i32* %5, align 4, !dbg !3314, !tbaa !428
  %13 = bitcast i64* %6 to i8*, !dbg !3315
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3315
  store i64 9223372036854775807, i64* %6, align 8, !dbg !3316, !tbaa !3116
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #6, !dbg !3317
  %14 = load i8*, i8** %4, align 8, !dbg !3318, !tbaa !1236
  %15 = icmp eq i8* %14, null, !dbg !3318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  br i1 %15, label %20, label %16, !dbg !3320

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %5, align 4, !dbg !3321, !tbaa !428
  %18 = zext i32 %17 to i64, !dbg !3321
  %19 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %14, i64 %18) #6, !dbg !3322
  br label %23, !dbg !3323

; <label>:20:                                     ; preds = %10
  %21 = load i64, i64* %6, align 8, !dbg !3324, !tbaa !3116
  %22 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %21) #6, !dbg !3325
  br label %23, !dbg !3326

; <label>:23:                                     ; preds = %20, %16
  %24 = phi i64 [ %19, %16 ], [ %22, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #7, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !3328
  br label %57

; <label>:25:                                     ; preds = %3
  %26 = icmp eq i32 %8, 2, !dbg !3329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3330
  br i1 %26, label %27, label %56, !dbg !3330

; <label>:27:                                     ; preds = %25
  %28 = tail call i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nonnull %1, i32 %2) #6, !dbg !3331
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !3335
  %30 = load i8, i8* %29, align 1, !dbg !3335, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3337
  %31 = trunc i8 %30 to i3, !dbg !3337
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !3337

; <label>:32:                                     ; preds = %27
  %33 = lshr i8 %30, 3, !dbg !3338
  %34 = zext i8 %33 to i64, !dbg !3338
  br label %53, !dbg !3339

; <label>:35:                                     ; preds = %27
  %36 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !3340
  %37 = load i8, i8* %36, align 1, !dbg !3341, !tbaa !482
  %38 = zext i8 %37 to i64, !dbg !3340
  br label %53, !dbg !3342

; <label>:39:                                     ; preds = %27
  %40 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !3343
  %41 = bitcast i8* %40 to i16*, !dbg !3344
  %42 = load i16, i16* %41, align 1, !dbg !3344, !tbaa !493
  %43 = zext i16 %42 to i64, !dbg !3343
  br label %53, !dbg !3345

; <label>:44:                                     ; preds = %27
  %45 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !3346
  %46 = bitcast i8* %45 to i32*, !dbg !3347
  %47 = load i32, i32* %46, align 1, !dbg !3347, !tbaa !428
  %48 = zext i32 %47 to i64, !dbg !3346
  br label %53, !dbg !3348

; <label>:49:                                     ; preds = %27
  %50 = getelementptr inbounds i8, i8* %28, i64 -17, !dbg !3349
  %51 = bitcast i8* %50 to i64*, !dbg !3350
  %52 = load i64, i64* %51, align 1, !dbg !3350, !tbaa !341
  br label %53, !dbg !3351

; <label>:53:                                     ; preds = %27, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %27 ], !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  %55 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %28, i64 %54) #6, !dbg !3355
  br label %57

; <label>:56:                                     ; preds = %25
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1092, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i64 0, i64 0)) #6, !dbg !3356
  tail call void @_exit(i32 1) #8, !dbg !3356
  unreachable

; <label>:57:                                     ; preds = %53, %23
  %58 = phi i64 [ %24, %23 ], [ %55, %53 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %59 = trunc i64 %58 to i32, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3357
  ret i32 %59, !dbg !3357
}

; Function Attrs: noredzone
declare dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkStreamID(%struct._rio*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !3358 {
  %3 = tail call i8* @sdsempty() #6, !dbg !3375
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !3376
  %5 = load i64, i64* %4, align 8, !dbg !3376, !tbaa !3377
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !3379
  %7 = load i64, i64* %6, align 8, !dbg !3379, !tbaa !3380
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i64 %5, i64 %7) #6, !dbg !3381
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !3386
  %10 = load i8, i8* %9, align 1, !dbg !3386, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3388
  %11 = trunc i8 %10 to i3, !dbg !3388
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !3388

; <label>:12:                                     ; preds = %2
  %13 = lshr i8 %10, 3, !dbg !3389
  %14 = zext i8 %13 to i64, !dbg !3389
  br label %33, !dbg !3390

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !3391
  %17 = load i8, i8* %16, align 1, !dbg !3392, !tbaa !482
  %18 = zext i8 %17 to i64, !dbg !3391
  br label %33, !dbg !3393

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !3394
  %21 = bitcast i8* %20 to i16*, !dbg !3395
  %22 = load i16, i16* %21, align 1, !dbg !3395, !tbaa !493
  %23 = zext i16 %22 to i64, !dbg !3394
  br label %33, !dbg !3396

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !3397
  %26 = bitcast i8* %25 to i32*, !dbg !3398
  %27 = load i32, i32* %26, align 1, !dbg !3398, !tbaa !428
  %28 = zext i32 %27 to i64, !dbg !3397
  br label %33, !dbg !3399

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !3400
  %31 = bitcast i8* %30 to i64*, !dbg !3401
  %32 = load i64, i64* %31, align 1, !dbg !3401, !tbaa !341
  br label %33, !dbg !3402

; <label>:33:                                     ; preds = %2, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %2 ], !dbg !3403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3405
  %35 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %8, i64 %34) #6, !dbg !3406
  %36 = trunc i64 %35 to i32, !dbg !3406
  %37 = icmp eq i32 %36, 0, !dbg !3408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3409
  br i1 %37, label %39, label %38, !dbg !3409

; <label>:38:                                     ; preds = %33
  tail call void @sdsfree(i8* %8) #6, !dbg !3410
  br label %39, !dbg !3411

; <label>:39:                                     ; preds = %33, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3412
  ret i32 %36, !dbg !3412
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteStreamPendingEntry(%struct._rio*, %struct.redisObject* nocapture readonly, i8*, i64, %struct.streamConsumer* nocapture readonly, i8*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !3413 {
  %8 = alloca %struct.streamID, align 8
  %9 = bitcast %struct.streamID* %8 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3464
  call void @streamDecodeID(i8* %5, %struct.streamID* nonnull %8) #6, !dbg !3466
  %10 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 12) #6, !dbg !3467
  %11 = icmp eq i64 %10, 0, !dbg !3469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3470
  br i1 %11, label %12, label %13, !dbg !3470

; <label>:12:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3471
  br label %93, !dbg !3471

; <label>:13:                                     ; preds = %7
  %14 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 6) #6, !dbg !3472
  %15 = icmp eq i64 %14, 0, !dbg !3474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  br i1 %15, label %16, label %17, !dbg !3475

; <label>:16:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3476
  br label %93, !dbg !3476

; <label>:17:                                     ; preds = %13
  %18 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3477
  %19 = icmp eq i32 %18, 0, !dbg !3479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3480
  br i1 %19, label %20, label %21, !dbg !3480

; <label>:20:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3481
  br label %93, !dbg !3481

; <label>:21:                                     ; preds = %17
  %22 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %2, i64 %3) #6, !dbg !3482
  %23 = icmp eq i64 %22, 0, !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  br i1 %23, label %24, label %25, !dbg !3485

; <label>:24:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3486
  br label %93, !dbg !3486

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %4, i64 0, i32 1, !dbg !3487
  %27 = load i8*, i8** %26, align 8, !dbg !3487, !tbaa !3489
  %28 = getelementptr inbounds i8, i8* %27, i64 -1, !dbg !3493
  %29 = load i8, i8* %28, align 1, !dbg !3493, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  %30 = trunc i8 %29 to i3, !dbg !3495
  switch i3 %30, label %52 [
    i3 0, label %31
    i3 1, label %34
    i3 2, label %38
    i3 3, label %43
    i3 -4, label %48
  ], !dbg !3495

; <label>:31:                                     ; preds = %25
  %32 = lshr i8 %29, 3, !dbg !3496
  %33 = zext i8 %32 to i64, !dbg !3496
  br label %52, !dbg !3497

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds i8, i8* %27, i64 -3, !dbg !3498
  %36 = load i8, i8* %35, align 1, !dbg !3499, !tbaa !482
  %37 = zext i8 %36 to i64, !dbg !3498
  br label %52, !dbg !3500

; <label>:38:                                     ; preds = %25
  %39 = getelementptr inbounds i8, i8* %27, i64 -5, !dbg !3501
  %40 = bitcast i8* %39 to i16*, !dbg !3502
  %41 = load i16, i16* %40, align 1, !dbg !3502, !tbaa !493
  %42 = zext i16 %41 to i64, !dbg !3501
  br label %52, !dbg !3503

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds i8, i8* %27, i64 -9, !dbg !3504
  %45 = bitcast i8* %44 to i32*, !dbg !3505
  %46 = load i32, i32* %45, align 1, !dbg !3505, !tbaa !428
  %47 = zext i32 %46 to i64, !dbg !3504
  br label %52, !dbg !3506

; <label>:48:                                     ; preds = %25
  %49 = getelementptr inbounds i8, i8* %27, i64 -17, !dbg !3507
  %50 = bitcast i8* %49 to i64*, !dbg !3508
  %51 = load i64, i64* %50, align 1, !dbg !3508, !tbaa !341
  br label %52, !dbg !3509

; <label>:52:                                     ; preds = %25, %31, %34, %38, %43, %48
  %53 = phi i64 [ %51, %48 ], [ %47, %43 ], [ %42, %38 ], [ %37, %34 ], [ %33, %31 ], [ 0, %25 ], !dbg !3510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3512
  %54 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %27, i64 %53) #6, !dbg !3513
  %55 = icmp eq i64 %54, 0, !dbg !3514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  br i1 %55, label %56, label %57, !dbg !3515

; <label>:56:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3516
  br label %93, !dbg !3516

; <label>:57:                                     ; preds = %52
  %58 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3517
  %59 = icmp eq i64 %58, 0, !dbg !3519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3520
  br i1 %59, label %60, label %61, !dbg !3520

; <label>:60:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  br label %93, !dbg !3521

; <label>:61:                                     ; preds = %57
  %62 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %8) #9, !dbg !3522
  %63 = icmp eq i32 %62, 0, !dbg !3524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3525
  br i1 %63, label %64, label %65, !dbg !3525

; <label>:64:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  br label %93, !dbg !3526

; <label>:65:                                     ; preds = %61
  %66 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i64 4) #6, !dbg !3527
  %67 = icmp eq i64 %66, 0, !dbg !3529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  br i1 %67, label %68, label %69, !dbg !3530

; <label>:68:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3531
  br label %93, !dbg !3531

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 0, !dbg !3532
  %71 = load i64, i64* %70, align 8, !dbg !3532, !tbaa !3534
  %72 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %71) #6, !dbg !3536
  %73 = icmp eq i64 %72, 0, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3538
  br i1 %73, label %74, label %75, !dbg !3538

; <label>:74:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3539
  br label %93, !dbg !3539

; <label>:75:                                     ; preds = %69
  %76 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i64 10) #6, !dbg !3540
  %77 = icmp eq i64 %76, 0, !dbg !3542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3543
  br i1 %77, label %78, label %79, !dbg !3543

; <label>:78:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  br label %93, !dbg !3544

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 1, !dbg !3545
  %81 = load i64, i64* %80, align 8, !dbg !3545, !tbaa !3547
  %82 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %81) #6, !dbg !3548
  %83 = icmp eq i64 %82, 0, !dbg !3549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  br i1 %83, label %84, label %85, !dbg !3550

; <label>:84:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3551
  br label %93, !dbg !3551

; <label>:85:                                     ; preds = %79
  %86 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i64 6) #6, !dbg !3552
  %87 = icmp eq i64 %86, 0, !dbg !3554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3555
  br i1 %87, label %88, label %89, !dbg !3555

; <label>:88:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3556
  br label %93, !dbg !3556

; <label>:89:                                     ; preds = %85
  %90 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i64 5) #6, !dbg !3557
  %91 = icmp ne i64 %90, 0, !dbg !3559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3561
  %92 = zext i1 %91 to i32, !dbg !3562
  br label %93, !dbg !3562

; <label>:93:                                     ; preds = %89, %88, %84, %78, %74, %68, %64, %60, %56, %24, %20, %16, %12
  %94 = phi i32 [ 0, %12 ], [ 0, %16 ], [ 0, %20 ], [ 0, %24 ], [ 0, %56 ], [ 0, %60 ], [ 0, %64 ], [ 0, %68 ], [ 0, %74 ], [ 0, %78 ], [ 0, %84 ], [ 0, %88 ], [ %92, %89 ], !dbg !3561
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3563
  ret i32 %94, !dbg !3563
}

; Function Attrs: noredzone
declare dso_local void @streamDecodeID(i8*, %struct.streamID*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteStreamObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3564 {
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
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3660
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !3660
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !3660, !tbaa !1241
  %17 = bitcast %struct.streamIterator* %4 to i8*, !dbg !3662
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3662
  call void @streamIteratorStart(%struct.streamIterator* nonnull %4, %struct.stream* %16, %struct.streamID* null, %struct.streamID* null, i32 0) #6, !dbg !3664
  %18 = bitcast %struct.streamID* %5 to i8*, !dbg !3665
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3665
  %19 = bitcast i64* %6 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3666
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !3667
  %21 = load i64, i64* %20, align 8, !dbg !3667, !tbaa !3668
  %22 = icmp eq i64 %21, 0, !dbg !3670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3671
  br i1 %22, label %64, label %23, !dbg !3671

; <label>:23:                                     ; preds = %3
  %24 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3674
  %25 = icmp eq i32 %24, 0, !dbg !3675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3675
  br i1 %25, label %89, label %26, !dbg !3675

; <label>:26:                                     ; preds = %23
  %27 = bitcast i8** %7 to i8*
  %28 = bitcast i8** %8 to i8*
  %29 = bitcast i64* %9 to i8*
  %30 = bitcast i64* %10 to i8*
  br label %34, !dbg !3675

; <label>:31:                                     ; preds = %49
  %32 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3674
  %33 = icmp eq i32 %32, 0, !dbg !3675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3675
  br i1 %33, label %89, label %34, !dbg !3675

; <label>:34:                                     ; preds = %26, %31
  %35 = load i64, i64* %6, align 8, !dbg !3676, !tbaa !341
  %36 = shl i64 %35, 1, !dbg !3678
  %37 = add nsw i64 %36, 3, !dbg !3679
  %38 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %37) #6, !dbg !3680
  %39 = icmp eq i64 %38, 0, !dbg !3681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3682
  br i1 %39, label %176, label %40, !dbg !3682

; <label>:40:                                     ; preds = %34
  %41 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3683
  %42 = icmp eq i64 %41, 0, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3686
  br i1 %42, label %176, label %43, !dbg !3686

; <label>:43:                                     ; preds = %40
  %44 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3687
  %45 = icmp eq i32 %44, 0, !dbg !3689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3690
  br i1 %45, label %176, label %46, !dbg !3690

; <label>:46:                                     ; preds = %43
  %47 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %5) #9, !dbg !3691
  %48 = icmp eq i32 %47, 0, !dbg !3693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3694
  br i1 %48, label %176, label %49, !dbg !3694

; <label>:49:                                     ; preds = %46, %59
  %50 = load i64, i64* %6, align 8, !dbg !3695, !tbaa !341
  %51 = add nsw i64 %50, -1, !dbg !3695
  store i64 %51, i64* %6, align 8, !dbg !3695, !tbaa !341
  %52 = icmp eq i64 %50, 0, !dbg !3696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3696
  br i1 %52, label %31, label %53, !dbg !3696, !llvm.loop !3697

; <label>:53:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3699
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3699
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3700
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3700
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %4, i8** nonnull %7, i8** nonnull %8, i64* nonnull %9, i64* nonnull %10) #6, !dbg !3705
  %54 = load i8*, i8** %7, align 8, !dbg !3706, !tbaa !1236
  %55 = load i64, i64* %9, align 8, !dbg !3708, !tbaa !341
  %56 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %54, i64 %55) #6, !dbg !3709
  %57 = icmp eq i64 %56, 0, !dbg !3710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3711
  br i1 %57, label %58, label %59, !dbg !3711

; <label>:58:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3713
  br label %176

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %8, align 8, !dbg !3714, !tbaa !1236
  %61 = load i64, i64* %10, align 8, !dbg !3716, !tbaa !341
  %62 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %60, i64 %61) #6, !dbg !3717
  %63 = icmp eq i64 %62, 0, !dbg !3718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3713
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %63, label %178, label %49, !llvm.loop !3721

; <label>:64:                                     ; preds = %3
  %65 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 7) #6, !dbg !3722
  %66 = icmp eq i64 %65, 0, !dbg !3725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3726
  br i1 %66, label %176, label %67, !dbg !3726

; <label>:67:                                     ; preds = %64
  %68 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3727
  %69 = icmp eq i64 %68, 0, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3730
  br i1 %69, label %176, label %70, !dbg !3730

; <label>:70:                                     ; preds = %67
  %71 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3731
  %72 = icmp eq i32 %71, 0, !dbg !3733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3734
  br i1 %72, label %176, label %73, !dbg !3734

; <label>:73:                                     ; preds = %70
  %74 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i64 6) #6, !dbg !3735
  %75 = icmp eq i64 %74, 0, !dbg !3737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3738
  br i1 %75, label %176, label %76, !dbg !3738

; <label>:76:                                     ; preds = %73
  %77 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3739
  %78 = icmp eq i64 %77, 0, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3742
  br i1 %78, label %176, label %79, !dbg !3742

; <label>:79:                                     ; preds = %76
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3743
  %81 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %80) #9, !dbg !3745
  %82 = icmp eq i32 %81, 0, !dbg !3746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3747
  br i1 %82, label %176, label %83, !dbg !3747

; <label>:83:                                     ; preds = %79
  %84 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1) #6, !dbg !3748
  %85 = icmp eq i64 %84, 0, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3751
  br i1 %85, label %176, label %86, !dbg !3751

; <label>:86:                                     ; preds = %83
  %87 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1) #6, !dbg !3752
  %88 = icmp eq i64 %87, 0, !dbg !3754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3755
  br i1 %88, label %176, label %89, !dbg !3755

; <label>:89:                                     ; preds = %31, %23, %86
  %90 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 3) #6, !dbg !3756
  %91 = icmp eq i64 %90, 0, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  br i1 %91, label %176, label %92, !dbg !3759

; <label>:92:                                     ; preds = %89
  %93 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i64 6) #6, !dbg !3760
  %94 = icmp eq i64 %93, 0, !dbg !3762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  br i1 %94, label %176, label %95, !dbg !3763

; <label>:95:                                     ; preds = %92
  %96 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3764
  %97 = icmp eq i32 %96, 0, !dbg !3766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3767
  br i1 %97, label %176, label %98, !dbg !3767

; <label>:98:                                     ; preds = %95
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3768
  %100 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %99) #9, !dbg !3770
  %101 = icmp eq i32 %100, 0, !dbg !3771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3772
  br i1 %101, label %176, label %102, !dbg !3772

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 3, !dbg !3773
  %104 = load %struct.rax*, %struct.rax** %103, align 8, !dbg !3773, !tbaa !3774
  %105 = icmp eq %struct.rax* %104, null, !dbg !3775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  br i1 %105, label %175, label %106, !dbg !3776

; <label>:106:                                    ; preds = %102
  %107 = bitcast %struct.raxIterator* %11 to i8*, !dbg !3777
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %107) #7, !dbg !3777
  call void @raxStart(%struct.raxIterator* nonnull %11, %struct.rax* nonnull %104) #6, !dbg !3779
  %108 = call i32 @raxSeek(%struct.raxIterator* nonnull %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3781
  %109 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3782
  %110 = icmp eq i32 %109, 0, !dbg !3781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3781
  br i1 %110, label %174, label %111, !dbg !3781

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 3
  %113 = bitcast i8** %112 to %struct.streamCG**
  %114 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 2
  %115 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i64 0, i32 4
  %116 = bitcast %struct.raxIterator* %12 to i8*
  %117 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %12, i64 0, i32 3
  %118 = bitcast i8** %117 to %struct.streamConsumer**
  %119 = bitcast %struct.raxIterator* %13 to i8*
  %120 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %13, i64 0, i32 3
  %121 = bitcast i8** %120 to %struct.streamNACK**
  %122 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %13, i64 0, i32 2
  br label %123, !dbg !3781

; <label>:123:                                    ; preds = %111, %170
  %124 = load %struct.streamCG*, %struct.streamCG** %113, align 8, !dbg !3783, !tbaa !3784
  %125 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 5) #6, !dbg !3788
  %126 = icmp eq i64 %125, 0, !dbg !3790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3791
  br i1 %126, label %173, label %127, !dbg !3791

; <label>:127:                                    ; preds = %123
  %128 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6) #6, !dbg !3792
  %129 = icmp eq i64 %128, 0, !dbg !3794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3795
  br i1 %129, label %173, label %130, !dbg !3795

; <label>:130:                                    ; preds = %127
  %131 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i64 6) #6, !dbg !3796
  %132 = icmp eq i64 %131, 0, !dbg !3798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3799
  br i1 %132, label %173, label %133, !dbg !3799

; <label>:133:                                    ; preds = %130
  %134 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3800
  %135 = icmp eq i32 %134, 0, !dbg !3802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3803
  br i1 %135, label %173, label %136, !dbg !3803

; <label>:136:                                    ; preds = %133
  %137 = load i8*, i8** %114, align 8, !dbg !3804, !tbaa !3806
  %138 = load i64, i64* %115, align 8, !dbg !3807, !tbaa !3808
  %139 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %137, i64 %138) #6, !dbg !3809
  %140 = icmp eq i64 %139, 0, !dbg !3810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3811
  br i1 %140, label %173, label %141, !dbg !3811

; <label>:141:                                    ; preds = %136
  %142 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %124, i64 0, i32 0, !dbg !3812
  %143 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* %142) #9, !dbg !3814
  %144 = icmp eq i32 %143, 0, !dbg !3815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3816
  br i1 %144, label %173, label %145, !dbg !3816

; <label>:145:                                    ; preds = %141
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %116) #7, !dbg !3817
  %146 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %124, i64 0, i32 2, !dbg !3818
  %147 = load %struct.rax*, %struct.rax** %146, align 8, !dbg !3818, !tbaa !3819
  call void @raxStart(%struct.raxIterator* nonnull %12, %struct.rax* %147) #6, !dbg !3822
  %148 = call i32 @raxSeek(%struct.raxIterator* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3824
  %149 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3825
  %150 = icmp eq i32 %149, 0, !dbg !3824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3824
  br i1 %150, label %170, label %151, !dbg !3824

; <label>:151:                                    ; preds = %145, %167
  %152 = load %struct.streamConsumer*, %struct.streamConsumer** %118, align 8, !dbg !3826, !tbaa !3784
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %119) #7, !dbg !3828
  %153 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %152, i64 0, i32 2, !dbg !3829
  %154 = load %struct.rax*, %struct.rax** %153, align 8, !dbg !3829, !tbaa !3830
  call void @raxStart(%struct.raxIterator* nonnull %13, %struct.rax* %154) #6, !dbg !3832
  %155 = call i32 @raxSeek(%struct.raxIterator* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3834
  br label %156, !dbg !3834

; <label>:156:                                    ; preds = %159, %151
  %157 = call i32 @raxNext(%struct.raxIterator* nonnull %13) #6, !dbg !3835
  %158 = icmp eq i32 %157, 0, !dbg !3834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3834
  br i1 %158, label %167, label %159, !dbg !3834

; <label>:159:                                    ; preds = %156
  %160 = load %struct.streamNACK*, %struct.streamNACK** %121, align 8, !dbg !3836, !tbaa !3784
  %161 = load i8*, i8** %114, align 8, !dbg !3838, !tbaa !3806
  %162 = load i64, i64* %115, align 8, !dbg !3840, !tbaa !3808
  %163 = load i8*, i8** %122, align 8, !dbg !3841, !tbaa !3806
  %164 = call i32 @rioWriteStreamPendingEntry(%struct._rio* %0, %struct.redisObject* %1, i8* %161, i64 %162, %struct.streamConsumer* %152, i8* %163, %struct.streamNACK* %160) #9, !dbg !3842
  %165 = icmp eq i32 %164, 0, !dbg !3843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3845
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %165, label %166, label %156, !llvm.loop !3846

; <label>:166:                                    ; preds = %159
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %119) #7, !dbg !3848
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %116) #7, !dbg !3849
  br label %173

; <label>:167:                                    ; preds = %156
  call void @raxStop(%struct.raxIterator* nonnull %13) #6, !dbg !3850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3848
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %119) #7, !dbg !3848
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %168 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3825
  %169 = icmp eq i32 %168, 0, !dbg !3824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3824
  br i1 %169, label %170, label %151, !dbg !3824

; <label>:170:                                    ; preds = %167, %145
  call void @raxStop(%struct.raxIterator* nonnull %12) #6, !dbg !3851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3849
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %116) #7, !dbg !3849
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %171 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3782
  %172 = icmp eq i32 %171, 0, !dbg !3781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3781
  br i1 %172, label %174, label %123, !dbg !3781

; <label>:173:                                    ; preds = %123, %127, %130, %133, %136, %141, %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %107) #7, !dbg !3852
  br label %176

; <label>:174:                                    ; preds = %170, %106
  call void @raxStop(%struct.raxIterator* nonnull %11) #6, !dbg !3853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3852
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %107) #7, !dbg !3852
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %175

; <label>:175:                                    ; preds = %174, %102
  call void @streamIteratorStop(%struct.streamIterator* nonnull %4) #6, !dbg !3854
  br label %176, !dbg !3855

; <label>:176:                                    ; preds = %46, %43, %40, %34, %98, %95, %92, %89, %86, %83, %79, %76, %73, %70, %67, %64, %175, %58, %173
  %177 = phi i32 [ 0, %173 ], [ 0, %58 ], [ 1, %175 ], [ 0, %64 ], [ 0, %67 ], [ 0, %70 ], [ 0, %73 ], [ 0, %76 ], [ 0, %79 ], [ 0, %83 ], [ 0, %86 ], [ 0, %89 ], [ 0, %92 ], [ 0, %95 ], [ 0, %98 ], [ 0, %34 ], [ 0, %40 ], [ 0, %43 ], [ 0, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %178, !dbg !3856

; <label>:178:                                    ; preds = %59, %176
  %179 = phi i32 [ %177, %176 ], [ 0, %59 ], !dbg !3857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3856
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3856
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3856
  ret i32 %179, !dbg !3856
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
define dso_local i32 @rewriteModuleObject(%struct._rio*, %struct.redisObject*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3858 {
  %4 = alloca %struct.RedisModuleIO, align 8
  %5 = bitcast %struct.RedisModuleIO* %4 to i8*, !dbg !3947
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3947
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3948
  %7 = bitcast i8** %6 to %struct.moduleValue**, !dbg !3948
  %8 = load %struct.moduleValue*, %struct.moduleValue** %7, align 8, !dbg !3948, !tbaa !1241
  %9 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 0, !dbg !3950
  %10 = load %struct.RedisModuleType*, %struct.RedisModuleType** %9, align 8, !dbg !3950, !tbaa !3951
  %11 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 1, !dbg !3954
  store %struct._rio* %0, %struct._rio** %11, align 8, !dbg !3954, !tbaa !3956
  %12 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 2, !dbg !3954
  store %struct.RedisModuleType* %10, %struct.RedisModuleType** %12, align 8, !dbg !3954, !tbaa !3958
  %13 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 0, !dbg !3954
  store i64 0, i64* %13, align 8, !dbg !3954, !tbaa !3959
  %14 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 3, !dbg !3954
  store i32 0, i32* %14, align 8, !dbg !3954, !tbaa !3960
  %15 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 4, !dbg !3954
  store i32 0, i32* %15, align 4, !dbg !3954, !tbaa !3961
  %16 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 6, !dbg !3954
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !3954, !tbaa !3962
  %17 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 5, !dbg !3954
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %17, align 8, !dbg !3954, !tbaa !3963
  %18 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %10, i64 0, i32 4, !dbg !3964
  %19 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %18, align 8, !dbg !3964, !tbaa !3965
  %20 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 1, !dbg !3967
  %21 = load i8*, i8** %20, align 8, !dbg !3967, !tbaa !3968
  call void %19(%struct.RedisModuleIO* nonnull %4, %struct.redisObject* %1, i8* %21) #6, !dbg !3970
  %22 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %17, align 8, !dbg !3971, !tbaa !3963
  %23 = icmp eq %struct.RedisModuleCtx* %22, null, !dbg !3973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3974
  br i1 %23, label %27, label %24, !dbg !3974

; <label>:24:                                     ; preds = %3
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %22) #6, !dbg !3975
  %25 = bitcast %struct.RedisModuleCtx** %17 to i8**, !dbg !3977
  %26 = load i8*, i8** %25, align 8, !dbg !3977, !tbaa !3963
  call void @zfree(i8* %26) #6, !dbg !3978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3979
  br label %27, !dbg !3979

; <label>:27:                                     ; preds = %3, %24
  %28 = load i32, i32* %14, align 8, !dbg !3980, !tbaa !3960
  %29 = icmp eq i32 %28, 0, !dbg !3981
  %30 = zext i1 %29 to i32, !dbg !3981
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3983
  ret i32 %30, !dbg !3983
}

; Function Attrs: noredzone
declare dso_local void @moduleFreeContext(%struct.RedisModuleCtx*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @aofReadDiffFromParent() local_unnamed_addr #0 !dbg !3984 {
  %1 = alloca [65536 x i8], align 16
  %2 = getelementptr inbounds [65536 x i8], [65536 x i8]* %1, i64 0, i64 0, !dbg !3994
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !3994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3998, !tbaa !980
  %4 = call i64 @read(i32 %3, i8* nonnull %2, i64 65536) #6, !dbg !3999
  %5 = icmp sgt i64 %4, 0, !dbg !4001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  br i1 %5, label %6, label %15, !dbg !3997

; <label>:6:                                      ; preds = %0, %6
  %7 = phi i64 [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4002, !tbaa !4004
  %10 = call i8* @sdscatlen(i8* %9, i8* nonnull %2, i64 %7) #6, !dbg !4005
  store i8* %10, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4006, !tbaa !4004
  %11 = add nsw i64 %7, %8, !dbg !4007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3998, !tbaa !980
  %13 = call i64 @read(i32 %12, i8* nonnull %2, i64 65536) #6, !dbg !3999
  %14 = icmp sgt i64 %13, 0, !dbg !4001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3997
  br i1 %14, label %6, label %15, !dbg !3997, !llvm.loop !4008

; <label>:15:                                     ; preds = %6, %0
  %16 = phi i64 [ 0, %0 ], [ %11, %6 ], !dbg !4010
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !4011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4012
  ret i64 %16, !dbg !4012
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileRio(%struct._rio*) local_unnamed_addr #0 !dbg !4013 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct.RedisModuleIO, align 8
  %4 = alloca [17 x i8], align 16
  %5 = alloca %struct.redisObject, align 8
  %6 = alloca [14 x i8], align 1
  %7 = alloca [20 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4054
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !4055, !tbaa !4056
  %9 = icmp sgt i32 %8, 0, !dbg !4057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4058
  br i1 %9, label %10, label %241, !dbg !4058

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
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %23 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0
  %24 = bitcast %struct.RedisModuleIO* %3 to i8*
  %25 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 1
  %26 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 2
  %27 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 0
  %28 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 3
  %29 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 4
  %30 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 6
  %31 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %3, i64 0, i32 5
  %32 = bitcast %struct.RedisModuleCtx** %31 to i8**
  br label %33, !dbg !4058

; <label>:33:                                     ; preds = %10, %232
  %34 = phi i32 [ %8, %10 ], [ %233, %232 ]
  %35 = phi i64 [ 0, %10 ], [ %235, %232 ]
  %36 = phi i64 [ 0, %10 ], [ %234, %232 ]
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4059
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %11, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @rewriteAppendOnlyFileRio.selectcmd, i64 0, i64 0), i64 17, i1 false), !dbg !4060
  %37 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !4061, !tbaa !4062
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 %35, !dbg !4063
  %39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 0, i32 0, !dbg !4065
  %40 = load %struct.dict*, %struct.dict** %39, align 8, !dbg !4065, !tbaa !4066
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 0, i32 3, !dbg !4069
  %42 = load i64, i64* %41, align 8, !dbg !4069, !tbaa !4071
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 1, i32 3, !dbg !4069
  %44 = load i64, i64* %43, align 8, !dbg !4069, !tbaa !4071
  %45 = sub i64 0, %44, !dbg !4073
  %46 = icmp eq i64 %42, %45, !dbg !4073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4074
  br i1 %46, label %47, label %48, !dbg !4074

; <label>:47:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4075
  br label %232, !dbg !4075

; <label>:48:                                     ; preds = %33
  %49 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %40) #6, !dbg !4076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  br label %50, !dbg !4091

; <label>:50:                                     ; preds = %67, %48
  %51 = phi i64 [ 16, %48 ], [ %69, %67 ]
  %52 = phi i8* [ %11, %48 ], [ %68, %67 ]
  %53 = load i64, i64* %12, align 8, !dbg !4092, !tbaa !4093
  %54 = icmp eq i64 %53, 0, !dbg !4095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4096
  br i1 %54, label %57, label %55, !dbg !4096

; <label>:55:                                     ; preds = %50
  %56 = icmp ult i64 %53, %51, !dbg !4097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4098
  br i1 %56, label %58, label %57, !dbg !4098

; <label>:57:                                     ; preds = %55, %50
  br label %58, !dbg !4098

; <label>:58:                                     ; preds = %55, %57
  %59 = phi i64 [ %51, %57 ], [ %53, %55 ], !dbg !4098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4098
  %60 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4100, !tbaa !4102
  %61 = icmp eq void (%struct._rio*, i8*, i64)* %60, null, !dbg !4103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4104
  br i1 %61, label %63, label %62, !dbg !4104

; <label>:62:                                     ; preds = %58
  call void %60(%struct._rio* nonnull %0, i8* %52, i64 %59) #6, !dbg !4105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4105
  br label %63, !dbg !4105

; <label>:63:                                     ; preds = %62, %58
  %64 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4106, !tbaa !4108
  %65 = call i64 %64(%struct._rio* nonnull %0, i8* %52, i64 %59) #6, !dbg !4109
  %66 = icmp eq i64 %65, 0, !dbg !4110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4111
  br i1 %66, label %73, label %67, !dbg !4111

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds i8, i8* %52, i64 %59, !dbg !4112
  %69 = sub i64 %51, %59, !dbg !4113
  %70 = load i64, i64* %15, align 8, !dbg !4114, !tbaa !4115
  %71 = add i64 %70, %59, !dbg !4114
  store i64 %71, i64* %15, align 8, !dbg !4114, !tbaa !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4116
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = icmp eq i64 %69, 0, !dbg !4091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  br i1 %72, label %74, label %50, !dbg !4091

; <label>:73:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4119
  br label %238, !dbg !4120

; <label>:74:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4119
  %75 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %35) #6, !dbg !4122
  %76 = icmp eq i64 %75, 0, !dbg !4124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4125
  br i1 %76, label %238, label %77, !dbg !4125

; <label>:77:                                     ; preds = %74
  %78 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %49) #6, !dbg !4126
  %79 = icmp eq %struct.dictEntry* %78, null, !dbg !4128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4129
  br i1 %79, label %229, label %80, !dbg !4129

; <label>:80:                                     ; preds = %77, %225
  %81 = phi %struct.dictEntry* [ %227, %225 ], [ %78, %77 ]
  %82 = phi i64 [ %226, %225 ], [ %36, %77 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4130
  %83 = bitcast %struct.dictEntry* %81 to i64*, !dbg !4131
  %84 = load i64, i64* %83, align 8, !dbg !4131, !tbaa !2927
  %85 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %81, i64 0, i32 1, i32 0, !dbg !4133
  %86 = bitcast i8** %85 to %struct.redisObject**, !dbg !4133
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !4133, !tbaa !482
  store i32 1, i32* %17, align 4, !dbg !4135, !tbaa !4137
  store i32 0, i32* %18, align 8, !dbg !4135
  store i64 %84, i64* %20, align 8, !dbg !4135, !tbaa !1241
  %88 = call i64 @getExpire(%struct.redisDb* %38, %struct.redisObject* nonnull %5) #6, !dbg !4139
  %89 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 0, !dbg !4141
  %90 = load i32, i32* %89, align 8, !dbg !4141
  %91 = and i32 %90, 15, !dbg !4141
  %92 = icmp eq i32 %91, 0, !dbg !4142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4143
  br i1 %92, label %93, label %127, !dbg !4143

; <label>:93:                                     ; preds = %80
  call void @llvm.lifetime.start.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %21, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @rewriteAppendOnlyFileRio.cmd, i64 0, i64 0), i64 14, i1 false), !dbg !4145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4151
  br label %94, !dbg !4151

; <label>:94:                                     ; preds = %111, %93
  %95 = phi i64 [ 13, %93 ], [ %113, %111 ]
  %96 = phi i8* [ %21, %93 ], [ %112, %111 ]
  %97 = load i64, i64* %12, align 8, !dbg !4152, !tbaa !4093
  %98 = icmp eq i64 %97, 0, !dbg !4153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4154
  br i1 %98, label %101, label %99, !dbg !4154

; <label>:99:                                     ; preds = %94
  %100 = icmp ult i64 %97, %95, !dbg !4155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4156
  br i1 %100, label %102, label %101, !dbg !4156

; <label>:101:                                    ; preds = %99, %94
  br label %102, !dbg !4156

; <label>:102:                                    ; preds = %99, %101
  %103 = phi i64 [ %95, %101 ], [ %97, %99 ], !dbg !4156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4156
  %104 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4158, !tbaa !4102
  %105 = icmp eq void (%struct._rio*, i8*, i64)* %104, null, !dbg !4159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4160
  br i1 %105, label %107, label %106, !dbg !4160

; <label>:106:                                    ; preds = %102
  call void %104(%struct._rio* nonnull %0, i8* %96, i64 %103) #6, !dbg !4161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4161
  br label %107, !dbg !4161

; <label>:107:                                    ; preds = %106, %102
  %108 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4162, !tbaa !4108
  %109 = call i64 %108(%struct._rio* nonnull %0, i8* %96, i64 %103) #6, !dbg !4163
  %110 = icmp eq i64 %109, 0, !dbg !4164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4165
  br i1 %110, label %117, label %111, !dbg !4165

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds i8, i8* %96, i64 %103, !dbg !4166
  %113 = sub i64 %95, %103, !dbg !4167
  %114 = load i64, i64* %15, align 8, !dbg !4168, !tbaa !4115
  %115 = add i64 %114, %103, !dbg !4168
  store i64 %115, i64* %15, align 8, !dbg !4168, !tbaa !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4169
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %116 = icmp eq i64 %113, 0, !dbg !4151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4151
  br i1 %116, label %118, label %94, !dbg !4151

; <label>:117:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4170
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4172
  br label %124, !dbg !4173

; <label>:118:                                    ; preds = %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4172
  %119 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !4175
  %120 = icmp eq i32 %119, 0, !dbg !4177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4178
  br i1 %120, label %124, label %121, !dbg !4178

; <label>:121:                                    ; preds = %118
  %122 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* %87) #9, !dbg !4179
  %123 = icmp eq i32 %122, 0, !dbg !4181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4183
  br i1 %123, label %125, label %126

; <label>:124:                                    ; preds = %118, %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4184
  br label %125, !dbg !4185

; <label>:125:                                    ; preds = %121, %124
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4185
  br label %224

; <label>:126:                                    ; preds = %121
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4185
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %172

; <label>:127:                                    ; preds = %80
  %128 = icmp eq i32 %91, 1, !dbg !4186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4188
  br i1 %128, label %129, label %132, !dbg !4188

; <label>:129:                                    ; preds = %127
  %130 = call i32 @rewriteListObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %87) #9, !dbg !4189
  %131 = icmp eq i32 %130, 0, !dbg !4192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4193
  br i1 %131, label %224, label %172, !dbg !4193

; <label>:132:                                    ; preds = %127
  %133 = icmp eq i32 %91, 2, !dbg !4194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4196
  br i1 %133, label %134, label %137, !dbg !4196

; <label>:134:                                    ; preds = %132
  %135 = call i32 @rewriteSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %87) #9, !dbg !4197
  %136 = icmp eq i32 %135, 0, !dbg !4200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4201
  br i1 %136, label %224, label %172, !dbg !4201

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i32 %91, 3, !dbg !4202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4204
  br i1 %138, label %139, label %142, !dbg !4204

; <label>:139:                                    ; preds = %137
  %140 = call i32 @rewriteSortedSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %87) #9, !dbg !4205
  %141 = icmp eq i32 %140, 0, !dbg !4208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4209
  br i1 %141, label %224, label %172, !dbg !4209

; <label>:142:                                    ; preds = %137
  %143 = icmp eq i32 %91, 4, !dbg !4210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4212
  br i1 %143, label %144, label %147, !dbg !4212

; <label>:144:                                    ; preds = %142
  %145 = call i32 @rewriteHashObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %87) #9, !dbg !4213
  %146 = icmp eq i32 %145, 0, !dbg !4216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4217
  br i1 %146, label %224, label %172, !dbg !4217

; <label>:147:                                    ; preds = %142
  %148 = icmp eq i32 %91, 6, !dbg !4218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4220
  br i1 %148, label %149, label %152, !dbg !4220

; <label>:149:                                    ; preds = %147
  %150 = call i32 @rewriteStreamObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %87) #9, !dbg !4221
  %151 = icmp eq i32 %150, 0, !dbg !4224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4225
  br i1 %151, label %224, label %172, !dbg !4225

; <label>:152:                                    ; preds = %147
  %153 = icmp eq i32 %91, 5, !dbg !4226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4228
  br i1 %153, label %154, label %171, !dbg !4228

; <label>:154:                                    ; preds = %152
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %24) #7, !dbg !4235
  %155 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 2, !dbg !4236
  %156 = bitcast i8** %155 to %struct.moduleValue**, !dbg !4236
  %157 = load %struct.moduleValue*, %struct.moduleValue** %156, align 8, !dbg !4236, !tbaa !1241
  %158 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %157, i64 0, i32 0, !dbg !4238
  %159 = load %struct.RedisModuleType*, %struct.RedisModuleType** %158, align 8, !dbg !4238, !tbaa !3951
  store %struct._rio* %0, %struct._rio** %25, align 8, !dbg !4240, !tbaa !3956
  store %struct.RedisModuleType* %159, %struct.RedisModuleType** %26, align 8, !dbg !4240, !tbaa !3958
  store i64 0, i64* %27, align 8, !dbg !4240, !tbaa !3959
  store i32 0, i32* %28, align 8, !dbg !4240, !tbaa !3960
  store i32 0, i32* %29, align 4, !dbg !4240, !tbaa !3961
  store %struct.redisObject* %5, %struct.redisObject** %30, align 8, !dbg !4240, !tbaa !3962
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %31, align 8, !dbg !4240, !tbaa !3963
  %160 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %159, i64 0, i32 4, !dbg !4241
  %161 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %160, align 8, !dbg !4241, !tbaa !3965
  %162 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %157, i64 0, i32 1, !dbg !4242
  %163 = load i8*, i8** %162, align 8, !dbg !4242, !tbaa !3968
  call void %161(%struct.RedisModuleIO* nonnull %3, %struct.redisObject* nonnull %5, i8* %163) #6, !dbg !4244
  %164 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %31, align 8, !dbg !4245, !tbaa !3963
  %165 = icmp eq %struct.RedisModuleCtx* %164, null, !dbg !4246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4247
  br i1 %165, label %168, label %166, !dbg !4247

; <label>:166:                                    ; preds = %154
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %164) #6, !dbg !4248
  %167 = load i8*, i8** %32, align 8, !dbg !4249, !tbaa !3963
  call void @zfree(i8* %167) #6, !dbg !4250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4251
  br label %168, !dbg !4251

; <label>:168:                                    ; preds = %154, %166
  %169 = load i32, i32* %28, align 8, !dbg !4252, !tbaa !3960
  %170 = icmp eq i32 %169, 0, !dbg !4253
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %24) #7, !dbg !4254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4256
  br i1 %170, label %172, label %224, !dbg !4256

; <label>:171:                                    ; preds = %152
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1339, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !4257
  call void @_exit(i32 1) #8, !dbg !4257
  unreachable

; <label>:172:                                    ; preds = %168, %126, %129, %139, %149, %144, %134
  %173 = icmp eq i64 %88, -1, !dbg !4259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4260
  br i1 %173, label %208, label %174, !dbg !4260

; <label>:174:                                    ; preds = %172
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %22) #7, !dbg !4261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @rewriteAppendOnlyFileRio.cmd.74, i64 0, i64 0), i64 20, i1 false), !dbg !4262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4268
  br label %175, !dbg !4268

; <label>:175:                                    ; preds = %192, %174
  %176 = phi i64 [ 19, %174 ], [ %194, %192 ]
  %177 = phi i8* [ %22, %174 ], [ %193, %192 ]
  %178 = load i64, i64* %12, align 8, !dbg !4269, !tbaa !4093
  %179 = icmp eq i64 %178, 0, !dbg !4270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4271
  br i1 %179, label %182, label %180, !dbg !4271

; <label>:180:                                    ; preds = %175
  %181 = icmp ult i64 %178, %176, !dbg !4272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4273
  br i1 %181, label %183, label %182, !dbg !4273

; <label>:182:                                    ; preds = %180, %175
  br label %183, !dbg !4273

; <label>:183:                                    ; preds = %180, %182
  %184 = phi i64 [ %176, %182 ], [ %178, %180 ], !dbg !4273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4273
  %185 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4275, !tbaa !4102
  %186 = icmp eq void (%struct._rio*, i8*, i64)* %185, null, !dbg !4276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4277
  br i1 %186, label %188, label %187, !dbg !4277

; <label>:187:                                    ; preds = %183
  call void %185(%struct._rio* nonnull %0, i8* %177, i64 %184) #6, !dbg !4278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4278
  br label %188, !dbg !4278

; <label>:188:                                    ; preds = %187, %183
  %189 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4279, !tbaa !4108
  %190 = call i64 %189(%struct._rio* nonnull %0, i8* %177, i64 %184) #6, !dbg !4280
  %191 = icmp eq i64 %190, 0, !dbg !4281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4282
  br i1 %191, label %198, label %192, !dbg !4282

; <label>:192:                                    ; preds = %188
  %193 = getelementptr inbounds i8, i8* %177, i64 %184, !dbg !4283
  %194 = sub i64 %176, %184, !dbg !4284
  %195 = load i64, i64* %15, align 8, !dbg !4285, !tbaa !4115
  %196 = add i64 %195, %184, !dbg !4285
  store i64 %196, i64* %15, align 8, !dbg !4285, !tbaa !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4286
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %197 = icmp eq i64 %194, 0, !dbg !4268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4268
  br i1 %197, label %199, label %175, !dbg !4268

; <label>:198:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4287
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4289
  br label %205, !dbg !4290

; <label>:199:                                    ; preds = %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4289
  %200 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !4292
  %201 = icmp eq i32 %200, 0, !dbg !4294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4295
  br i1 %201, label %205, label %202, !dbg !4295

; <label>:202:                                    ; preds = %199
  %203 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %88) #6, !dbg !4296
  %204 = icmp eq i64 %203, 0, !dbg !4298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4300
  br i1 %204, label %206, label %207

; <label>:205:                                    ; preds = %199, %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4301
  br label %206, !dbg !4302

; <label>:206:                                    ; preds = %202, %205
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %22) #7, !dbg !4302
  br label %224

; <label>:207:                                    ; preds = %202
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %22) #7, !dbg !4302
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %208

; <label>:208:                                    ; preds = %207, %172
  %209 = load i64, i64* %15, align 8, !dbg !4303, !tbaa !4115
  %210 = add i64 %82, 10240, !dbg !4304
  %211 = icmp ugt i64 %209, %210, !dbg !4305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4306
  br i1 %211, label %212, label %225, !dbg !4306

; <label>:212:                                    ; preds = %208
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %23) #7, !dbg !4307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4309
  %213 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4310, !tbaa !980
  %214 = call i64 @read(i32 %213, i8* nonnull %23, i64 65536) #6, !dbg !4311
  %215 = icmp sgt i64 %214, 0, !dbg !4313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4309
  br i1 %215, label %216, label %223, !dbg !4309

; <label>:216:                                    ; preds = %212, %216
  %217 = phi i64 [ %221, %216 ], [ %214, %212 ]
  %218 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4314, !tbaa !4004
  %219 = call i8* @sdscatlen(i8* %218, i8* nonnull %23, i64 %217) #6, !dbg !4315
  store i8* %219, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4316, !tbaa !4004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4309
  %220 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4310, !tbaa !980
  %221 = call i64 @read(i32 %220, i8* nonnull %23, i64 65536) #6, !dbg !4311
  %222 = icmp sgt i64 %221, 0, !dbg !4313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4309
  br i1 %222, label %216, label %223, !dbg !4309, !llvm.loop !4008

; <label>:223:                                    ; preds = %216, %212
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %23) #7, !dbg !4317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4319
  br label %225, !dbg !4319

; <label>:224:                                    ; preds = %168, %149, %144, %139, %134, %129, %125, %206
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4320
  br label %238

; <label>:225:                                    ; preds = %208, %223
  %226 = phi i64 [ %209, %223 ], [ %82, %208 ], !dbg !4321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4320
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4320
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %227 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %49) #6, !dbg !4126
  %228 = icmp eq %struct.dictEntry* %227, null, !dbg !4128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4129
  br i1 %228, label %229, label %80, !dbg !4129

; <label>:229:                                    ; preds = %225, %77
  %230 = phi i64 [ %36, %77 ], [ %226, %225 ], !dbg !4322
  call void @dictReleaseIterator(%struct.dictIterator* %49) #6, !dbg !4323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  %231 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !4055, !tbaa !4056
  br label %232, !dbg !4324

; <label>:232:                                    ; preds = %47, %229
  %233 = phi i32 [ %34, %47 ], [ %231, %229 ], !dbg !4055
  %234 = phi i64 [ %36, %47 ], [ %230, %229 ], !dbg !4321
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %235 = add nuw nsw i64 %35, 1, !dbg !4325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4326
  %236 = sext i32 %233 to i64, !dbg !4057
  %237 = icmp slt i64 %235, %236, !dbg !4057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4058
  br i1 %237, label %33, label %241, !dbg !4058, !llvm.loop !4327

; <label>:238:                                    ; preds = %74, %73, %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %239 = icmp eq %struct.dictIterator* %49, null, !dbg !4329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4331
  br i1 %239, label %241, label %240, !dbg !4331

; <label>:240:                                    ; preds = %238
  call void @dictReleaseIterator(%struct.dictIterator* nonnull %49) #6, !dbg !4332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4332
  br label %241, !dbg !4332

; <label>:241:                                    ; preds = %232, %240, %238, %1
  %242 = phi i32 [ 0, %1 ], [ -1, %238 ], [ -1, %240 ], [ 0, %232 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4333
  ret i32 %242, !dbg !4333
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !4334 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct._rio, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = bitcast %struct._rio* %3 to i8*, !dbg !4352
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4352
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !4353
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4353
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4356
  %9 = tail call i32 @getpid() #6, !dbg !4357
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i32 %9) #6, !dbg !4358
  %11 = call %struct.__sFILE* @fopen(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #6, !dbg !4359
  %12 = icmp eq %struct.__sFILE* %11, null, !dbg !4361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4363
  br i1 %12, label %13, label %17, !dbg !4363

; <label>:13:                                     ; preds = %1
  %14 = call i32* @__errno() #6, !dbg !4364
  %15 = load i32, i32* %14, align 4, !dbg !4364, !tbaa !428
  %16 = call i8* @strerror(i32 %15) #6, !dbg !4366
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i64 0, i64 0), i8* %16) #6, !dbg !4367
  br label %216, !dbg !4368

; <label>:17:                                     ; preds = %1
  %18 = call i8* @sdsempty() #6, !dbg !4369
  store i8* %18, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4370, !tbaa !4004
  call void @rioInitWithFile(%struct._rio* nonnull %3, %struct.__sFILE* nonnull %11) #6, !dbg !4372
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 138), align 8, !dbg !4373, !tbaa !4375
  %20 = icmp eq i32 %19, 0, !dbg !4376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4377
  br i1 %20, label %22, label %21, !dbg !4377

; <label>:21:                                     ; preds = %17
  call void @rioSetAutoSync(%struct._rio* nonnull %3, i64 33554432) #6, !dbg !4378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4378
  br label %22, !dbg !4378

; <label>:22:                                     ; preds = %17, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 143), align 4, !dbg !4379, !tbaa !4380
  %24 = icmp eq i32 %23, 0, !dbg !4381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4382
  br i1 %24, label %33, label %25, !dbg !4382

; <label>:25:                                     ; preds = %22
  %26 = bitcast i32* %6 to i8*, !dbg !4383
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4383
  %27 = call i32 @rdbSaveRio(%struct._rio* nonnull %3, i32* nonnull %6, i32 1, %struct.rdbSaveInfo* null) #6, !dbg !4385
  %28 = icmp eq i32 %27, -1, !dbg !4387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4388
  br i1 %28, label %30, label %29, !dbg !4388

; <label>:29:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %36

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %6, align 4, !dbg !4390, !tbaa !428
  %32 = call i32* @__errno() #6, !dbg !4392
  store i32 %31, i32* %32, align 4, !dbg !4393, !tbaa !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4394
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %210

; <label>:33:                                     ; preds = %22
  %34 = call i32 @rewriteAppendOnlyFileRio(%struct._rio* nonnull %3) #9, !dbg !4395
  %35 = icmp eq i32 %34, -1, !dbg !4398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4399
  br i1 %35, label %210, label %36, !dbg !4399

; <label>:36:                                     ; preds = %29, %33
  %37 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4400
  %38 = icmp eq i32 %37, -1, !dbg !4402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4403
  br i1 %38, label %210, label %39, !dbg !4403

; <label>:39:                                     ; preds = %36
  %40 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4404
  %41 = call i32 @fsync(i32 %40) #6, !dbg !4406
  %42 = icmp eq i32 %41, -1, !dbg !4407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4408
  br i1 %42, label %210, label %43, !dbg !4408

; <label>:43:                                     ; preds = %39
  %44 = call i64 @mstime() #6, !dbg !4410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4412
  %45 = call i64 @mstime() #6, !dbg !4413
  %46 = sub nsw i64 %45, %44, !dbg !4414
  %47 = icmp slt i64 %46, 1000, !dbg !4415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4412
  br i1 %47, label %48, label %76, !dbg !4412

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0
  br label %50, !dbg !4412

; <label>:50:                                     ; preds = %48, %57
  %51 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4416, !tbaa !980
  %53 = call i32 @aeWait(i32 %52, i32 1, i64 1) #6, !dbg !4418
  %54 = icmp slt i32 %53, 1, !dbg !4419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4420
  br i1 %54, label %55, label %64, !dbg !4420

; <label>:55:                                     ; preds = %50
  %56 = add nsw i32 %51, 1, !dbg !4421
  br label %57, !dbg !4423

; <label>:57:                                     ; preds = %55, %75
  %58 = phi i32 [ %56, %55 ], [ 0, %75 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4424
  %59 = call i64 @mstime() #6, !dbg !4413
  %60 = sub nsw i64 %59, %44, !dbg !4414
  %61 = icmp slt i64 %60, 1000, !dbg !4415
  %62 = icmp slt i32 %58, 20, !dbg !4425
  %63 = and i1 %62, %61, !dbg !4426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4412
  br i1 %63, label %50, label %76, !dbg !4412, !llvm.loop !4427

; <label>:64:                                     ; preds = %50
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4431
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4432, !tbaa !980
  %66 = call i64 @read(i32 %65, i8* nonnull %49, i64 65536) #6, !dbg !4433
  %67 = icmp sgt i64 %66, 0, !dbg !4435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4431
  br i1 %67, label %68, label %75, !dbg !4431

; <label>:68:                                     ; preds = %64, %68
  %69 = phi i64 [ %73, %68 ], [ %66, %64 ]
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4436, !tbaa !4004
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %49, i64 %69) #6, !dbg !4437
  store i8* %71, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4438, !tbaa !4004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4431
  %72 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4432, !tbaa !980
  %73 = call i64 @read(i32 %72, i8* nonnull %49, i64 65536) #6, !dbg !4433
  %74 = icmp sgt i64 %73, 0, !dbg !4435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4431
  br i1 %74, label %68, label %75, !dbg !4431, !llvm.loop !4008

; <label>:75:                                     ; preds = %68, %64
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4440
  br label %57, !dbg !4412

; <label>:76:                                     ; preds = %57, %43
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4441, !tbaa !983
  %78 = call i64 @write(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4443
  %79 = icmp eq i64 %78, 1, !dbg !4444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4445
  br i1 %79, label %80, label %210, !dbg !4445

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4446, !tbaa !991
  %82 = call i32 @anetNonBlock(i8* null, i32 %81) #6, !dbg !4448
  %83 = icmp eq i32 %82, 0, !dbg !4449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4450
  br i1 %83, label %84, label %210, !dbg !4450

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4451, !tbaa !991
  %86 = call i64 @syncRead(i32 %85, i8* nonnull %5, i64 1, i64 5000) #6, !dbg !4453
  %87 = icmp eq i64 %86, 1, !dbg !4454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4455
  br i1 %87, label %88, label %210, !dbg !4455

; <label>:88:                                     ; preds = %84
  %89 = load i8, i8* %5, align 1, !dbg !4456, !tbaa !482
  %90 = icmp eq i8 %89, 33, !dbg !4457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4458
  br i1 %90, label %91, label %210, !dbg !4458

; <label>:91:                                     ; preds = %88
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !4459
  %92 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0, !dbg !4460
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4462
  %93 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4463, !tbaa !980
  %94 = call i64 @read(i32 %93, i8* nonnull %92, i64 65536) #6, !dbg !4464
  %95 = icmp sgt i64 %94, 0, !dbg !4466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4462
  br i1 %95, label %96, label %103, !dbg !4462

; <label>:96:                                     ; preds = %91, %96
  %97 = phi i64 [ %101, %96 ], [ %94, %91 ]
  %98 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4467, !tbaa !4004
  %99 = call i8* @sdscatlen(i8* %98, i8* nonnull %92, i64 %97) #6, !dbg !4468
  store i8* %99, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4469, !tbaa !4004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4462
  %100 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4463, !tbaa !980
  %101 = call i64 @read(i32 %100, i8* nonnull %92, i64 65536) #6, !dbg !4464
  %102 = icmp sgt i64 %101, 0, !dbg !4466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4462
  br i1 %102, label %96, label %103, !dbg !4462, !llvm.loop !4008

; <label>:103:                                    ; preds = %96, %91
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4471
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4472, !tbaa !4004
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !4475
  %106 = load i8, i8* %105, align 1, !dbg !4475, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4477
  %107 = trunc i8 %106 to i3, !dbg !4477
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !4477

; <label>:108:                                    ; preds = %103
  %109 = lshr i8 %106, 3, !dbg !4478
  %110 = zext i8 %109 to i64, !dbg !4478
  br label %129, !dbg !4479

; <label>:111:                                    ; preds = %103
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !4480
  %113 = load i8, i8* %112, align 1, !dbg !4481, !tbaa !482
  %114 = zext i8 %113 to i64, !dbg !4480
  br label %129, !dbg !4482

; <label>:115:                                    ; preds = %103
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !4483
  %117 = bitcast i8* %116 to i16*, !dbg !4484
  %118 = load i16, i16* %117, align 1, !dbg !4484, !tbaa !493
  %119 = zext i16 %118 to i64, !dbg !4483
  br label %129, !dbg !4485

; <label>:120:                                    ; preds = %103
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !4486
  %122 = bitcast i8* %121 to i32*, !dbg !4487
  %123 = load i32, i32* %122, align 1, !dbg !4487, !tbaa !428
  %124 = zext i32 %123 to i64, !dbg !4486
  br label %129, !dbg !4488

; <label>:125:                                    ; preds = %103
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !4489
  %127 = bitcast i8* %126 to i64*, !dbg !4490
  %128 = load i64, i64* %127, align 1, !dbg !4490, !tbaa !341
  br label %129, !dbg !4491

; <label>:129:                                    ; preds = %103, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %103 ], !dbg !4492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4493
  %131 = uitofp i64 %130 to double, !dbg !4494
  %132 = fmul double %131, 0x3EB0000000000000, !dbg !4495
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), double %132) #6, !dbg !4496
  %133 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4497, !tbaa !4004
  %134 = getelementptr inbounds i8, i8* %133, i64 -1, !dbg !4501
  %135 = load i8, i8* %134, align 1, !dbg !4501, !tbaa !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4503
  %136 = trunc i8 %135 to i3, !dbg !4503
  switch i3 %136, label %158 [
    i3 0, label %137
    i3 1, label %140
    i3 2, label %144
    i3 3, label %149
    i3 -4, label %154
  ], !dbg !4503

; <label>:137:                                    ; preds = %129
  %138 = lshr i8 %135, 3, !dbg !4504
  %139 = zext i8 %138 to i64, !dbg !4504
  br label %159, !dbg !4505

; <label>:140:                                    ; preds = %129
  %141 = getelementptr inbounds i8, i8* %133, i64 -3, !dbg !4506
  %142 = load i8, i8* %141, align 1, !dbg !4507, !tbaa !482
  %143 = zext i8 %142 to i64, !dbg !4506
  br label %159, !dbg !4508

; <label>:144:                                    ; preds = %129
  %145 = getelementptr inbounds i8, i8* %133, i64 -5, !dbg !4509
  %146 = bitcast i8* %145 to i16*, !dbg !4510
  %147 = load i16, i16* %146, align 1, !dbg !4510, !tbaa !493
  %148 = zext i16 %147 to i64, !dbg !4509
  br label %159, !dbg !4511

; <label>:149:                                    ; preds = %129
  %150 = getelementptr inbounds i8, i8* %133, i64 -9, !dbg !4512
  %151 = bitcast i8* %150 to i32*, !dbg !4513
  %152 = load i32, i32* %151, align 1, !dbg !4513, !tbaa !428
  %153 = zext i32 %152 to i64, !dbg !4512
  br label %159, !dbg !4514

; <label>:154:                                    ; preds = %129
  %155 = getelementptr inbounds i8, i8* %133, i64 -17, !dbg !4515
  %156 = bitcast i8* %155 to i64*, !dbg !4516
  %157 = load i64, i64* %156, align 1, !dbg !4516, !tbaa !341
  br label %159, !dbg !4517

; <label>:158:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  br label %191, !dbg !4524

; <label>:159:                                    ; preds = %137, %140, %144, %149, %154
  %160 = phi i64 [ %157, %154 ], [ %153, %149 ], [ %148, %144 ], [ %143, %140 ], [ %139, %137 ], !dbg !4525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  %161 = icmp eq i64 %160, 0, !dbg !4524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  br i1 %161, label %191, label %162, !dbg !4524

; <label>:162:                                    ; preds = %159
  %163 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 7
  %164 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 4
  %165 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 1
  %166 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 6
  br label %167, !dbg !4524

; <label>:167:                                    ; preds = %185, %162
  %168 = phi i64 [ %160, %162 ], [ %187, %185 ]
  %169 = phi i8* [ %133, %162 ], [ %186, %185 ]
  %170 = load i64, i64* %163, align 8, !dbg !4527, !tbaa !4093
  %171 = icmp eq i64 %170, 0, !dbg !4528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4529
  br i1 %171, label %174, label %172, !dbg !4529

; <label>:172:                                    ; preds = %167
  %173 = icmp ult i64 %170, %168, !dbg !4530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4531
  br i1 %173, label %175, label %174, !dbg !4531

; <label>:174:                                    ; preds = %172, %167
  br label %175, !dbg !4531

; <label>:175:                                    ; preds = %172, %174
  %176 = phi i64 [ %168, %174 ], [ %170, %172 ], !dbg !4531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4531
  %177 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %164, align 8, !dbg !4533, !tbaa !4102
  %178 = icmp eq void (%struct._rio*, i8*, i64)* %177, null, !dbg !4534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4535
  br i1 %178, label %180, label %179, !dbg !4535

; <label>:179:                                    ; preds = %175
  call void %177(%struct._rio* nonnull %3, i8* %169, i64 %176) #6, !dbg !4536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4536
  br label %180, !dbg !4536

; <label>:180:                                    ; preds = %179, %175
  %181 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %165, align 8, !dbg !4537, !tbaa !4108
  %182 = call i64 %181(%struct._rio* nonnull %3, i8* %169, i64 %176) #6, !dbg !4538
  %183 = icmp eq i64 %182, 0, !dbg !4539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4540
  br i1 %183, label %184, label %185, !dbg !4540

; <label>:184:                                    ; preds = %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4541
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4543
  br label %210, !dbg !4543

; <label>:185:                                    ; preds = %180
  %186 = getelementptr inbounds i8, i8* %169, i64 %176, !dbg !4544
  %187 = sub i64 %168, %176, !dbg !4545
  %188 = load i64, i64* %166, align 8, !dbg !4546, !tbaa !4115
  %189 = add i64 %188, %176, !dbg !4546
  store i64 %189, i64* %166, align 8, !dbg !4546, !tbaa !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4547
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %190 = icmp eq i64 %187, 0, !dbg !4524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  br i1 %190, label %191, label %167, !dbg !4524

; <label>:191:                                    ; preds = %185, %158, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4543
  %192 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4549
  %193 = icmp eq i32 %192, -1, !dbg !4551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4552
  br i1 %193, label %210, label %194, !dbg !4552

; <label>:194:                                    ; preds = %191
  %195 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4553
  %196 = call i32 @fsync(i32 %195) #6, !dbg !4555
  %197 = icmp eq i32 %196, -1, !dbg !4556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4557
  br i1 %197, label %210, label %198, !dbg !4557

; <label>:198:                                    ; preds = %194
  %199 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4558
  %200 = icmp eq i32 %199, -1, !dbg !4560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4561
  br i1 %200, label %210, label %201, !dbg !4561

; <label>:201:                                    ; preds = %198
  %202 = call i32 @rename(i8* nonnull %8, i8* %0) #6, !dbg !4562
  %203 = icmp eq i32 %202, -1, !dbg !4564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4565
  br i1 %203, label %204, label %209, !dbg !4565

; <label>:204:                                    ; preds = %201
  %205 = call i32* @__errno() #6, !dbg !4566
  %206 = load i32, i32* %205, align 4, !dbg !4566, !tbaa !428
  %207 = call i8* @strerror(i32 %206) #6, !dbg !4568
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.81, i64 0, i64 0), i8* %207) #6, !dbg !4569
  %208 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4570
  br label %216, !dbg !4571

; <label>:209:                                    ; preds = %201
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.82, i64 0, i64 0)) #6, !dbg !4572
  br label %216, !dbg !4573

; <label>:210:                                    ; preds = %184, %30, %88, %84, %80, %76, %198, %194, %191, %39, %36, %33
  %211 = call i32* @__errno() #6, !dbg !4574
  %212 = load i32, i32* %211, align 4, !dbg !4574, !tbaa !428
  %213 = call i8* @strerror(i32 %212) #6, !dbg !4575
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i8* %213) #6, !dbg !4576
  %214 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4577
  %215 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4578
  br label %216, !dbg !4579

; <label>:216:                                    ; preds = %210, %209, %204, %13
  %217 = phi i32 [ -1, %210 ], [ -1, %204 ], [ 0, %209 ], [ -1, %13 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4580
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4581
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4581
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4581
  ret i32 %217, !dbg !4581
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
define dso_local void @aofChildPipeReadable(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !4582 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4594
  %6 = call i64 @read(i32 %1, i8* nonnull %5, i64 1) #6, !dbg !4595
  %7 = icmp eq i64 %6, 1, !dbg !4597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  br i1 %7, label %8, label %19, !dbg !4598

; <label>:8:                                      ; preds = %4
  %9 = load i8, i8* %5, align 1, !dbg !4599, !tbaa !482
  %10 = icmp eq i8 %9, 33, !dbg !4600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4601
  br i1 %10, label %11, label %19, !dbg !4601

; <label>:11:                                     ; preds = %8
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !4602
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4604, !tbaa !251
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4605, !tbaa !988
  %13 = call i64 @write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4607
  %14 = icmp eq i64 %13, 1, !dbg !4608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4609
  br i1 %14, label %19, label %15, !dbg !4609

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno() #6, !dbg !4610
  %17 = load i32, i32* %16, align 4, !dbg !4610, !tbaa !428
  %18 = call i8* @strerror(i32 %17) #6, !dbg !4612
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i64 0, i64 0), i8* %18) #6, !dbg !4613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4614
  br label %19, !dbg !4614

; <label>:19:                                     ; preds = %11, %15, %8, %4
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4615, !tbaa !256
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4616, !tbaa !972
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %20, i32 %21, i32 1) #6, !dbg !4617
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4618
  ret void, !dbg !4618
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aofCreatePipes() local_unnamed_addr #0 !dbg !4619 {
  %1 = alloca [6 x i32], align 16
  %2 = bitcast [6 x i32]* %1 to i8*, !dbg !4626
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %2, i8* align 16 bitcast ([6 x i32]* @aofCreatePipes.fds to i8*), i64 24, i1 false), !dbg !4627
  %3 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0, !dbg !4628
  %4 = call i32 @pipe(i32* nonnull %3) #6, !dbg !4630
  %5 = icmp eq i32 %4, -1, !dbg !4631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4632
  br i1 %5, label %35, label %6, !dbg !4632

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4633
  %8 = call i32 @pipe(i32* nonnull %7) #6, !dbg !4635
  %9 = icmp eq i32 %8, -1, !dbg !4636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4637
  br i1 %9, label %35, label %10, !dbg !4637

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4638
  %12 = call i32 @pipe(i32* nonnull %11) #6, !dbg !4640
  %13 = icmp eq i32 %12, -1, !dbg !4641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4642
  br i1 %13, label %35, label %14, !dbg !4642

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 16, !dbg !4643, !tbaa !428
  %16 = call i32 @anetNonBlock(i8* null, i32 %15) #6, !dbg !4645
  %17 = icmp eq i32 %16, 0, !dbg !4646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4647
  br i1 %17, label %18, label %35, !dbg !4647

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4648
  %20 = load i32, i32* %19, align 4, !dbg !4648, !tbaa !428
  %21 = call i32 @anetNonBlock(i8* null, i32 %20) #6, !dbg !4650
  %22 = icmp eq i32 %21, 0, !dbg !4651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4652
  br i1 %22, label %23, label %35, !dbg !4652

; <label>:23:                                     ; preds = %18
  %24 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4653, !tbaa !256
  %25 = load i32, i32* %7, align 8, !dbg !4655, !tbaa !428
  %26 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %24, i32 %25, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildPipeReadable, i8* null) #6, !dbg !4656
  %27 = icmp eq i32 %26, -1, !dbg !4657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4658
  br i1 %27, label %35, label %28, !dbg !4658

; <label>:28:                                     ; preds = %23
  %29 = bitcast [6 x i32]* %1 to <4 x i32>*, !dbg !4659
  %30 = load <4 x i32>, <4 x i32>* %29, align 16, !dbg !4659, !tbaa !428
  %31 = shufflevector <4 x i32> %30, <4 x i32> undef, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !4659
  store <4 x i32> %31, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144) to <4 x i32>*), align 8, !dbg !4660, !tbaa !428
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4661
  %33 = load i32, i32* %32, align 4, !dbg !4661, !tbaa !428
  store i32 %33, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4662, !tbaa !988
  %34 = load i32, i32* %11, align 16, !dbg !4663, !tbaa !428
  store i32 %34, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4664, !tbaa !991
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4665, !tbaa !251
  br label %47, !dbg !4666

; <label>:35:                                     ; preds = %18, %14, %23, %10, %6, %0
  %36 = call i32* @__errno() #6, !dbg !4667
  %37 = load i32, i32* %36, align 4, !dbg !4667, !tbaa !428
  %38 = call i8* @strerror(i32 %37) #6, !dbg !4668
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i64 0, i64 0), i8* %38) #6, !dbg !4669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %39 = load i32, i32* %3, align 16, !dbg !4674, !tbaa !428
  %40 = icmp eq i32 %39, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %40, label %43, label %41, !dbg !4678

; <label>:41:                                     ; preds = %35
  %42 = call i32 @close(i32 %39) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %43, !dbg !4679

; <label>:43:                                     ; preds = %35, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4674
  %45 = load i32, i32* %44, align 4, !dbg !4674, !tbaa !428
  %46 = icmp eq i32 %45, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %46, label %51, label %49, !dbg !4678

; <label>:47:                                     ; preds = %75, %28
  %48 = phi i32 [ -1, %75 ], [ 0, %28 ], !dbg !4681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4681
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4682
  ret i32 %48, !dbg !4682

; <label>:49:                                     ; preds = %43
  %50 = call i32 @close(i32 %45) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %51, !dbg !4679

; <label>:51:                                     ; preds = %49, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4674
  %53 = load i32, i32* %52, align 8, !dbg !4674, !tbaa !428
  %54 = icmp eq i32 %53, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %54, label %57, label %55, !dbg !4678

; <label>:55:                                     ; preds = %51
  %56 = call i32 @close(i32 %53) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %57, !dbg !4679

; <label>:57:                                     ; preds = %55, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 3, !dbg !4674
  %59 = load i32, i32* %58, align 4, !dbg !4674, !tbaa !428
  %60 = icmp eq i32 %59, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %60, label %63, label %61, !dbg !4678

; <label>:61:                                     ; preds = %57
  %62 = call i32 @close(i32 %59) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %63, !dbg !4679

; <label>:63:                                     ; preds = %61, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4674
  %65 = load i32, i32* %64, align 16, !dbg !4674, !tbaa !428
  %66 = icmp eq i32 %65, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %66, label %69, label %67, !dbg !4678

; <label>:67:                                     ; preds = %63
  %68 = call i32 @close(i32 %65) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %69, !dbg !4679

; <label>:69:                                     ; preds = %67, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4674
  %71 = load i32, i32* %70, align 4, !dbg !4674, !tbaa !428
  %72 = icmp eq i32 %71, -1, !dbg !4677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %72, label %75, label %73, !dbg !4678

; <label>:73:                                     ; preds = %69
  %74 = call i32 @close(i32 %71) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4679
  br label %75, !dbg !4679

; <label>:75:                                     ; preds = %73, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4673
  br label %47, !dbg !4683
}

; Function Attrs: noredzone
declare dso_local i32 @pipe(i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofClosePipes() local_unnamed_addr #0 !dbg !969 {
  %1 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4684, !tbaa !256
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4685, !tbaa !972
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %1, i32 %2, i32 1) #6, !dbg !4686
  %3 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4687, !tbaa !256
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4688, !tbaa !258
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %3, i32 %4, i32 2) #6, !dbg !4689
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4690, !tbaa !258
  %6 = tail call i32 @close(i32 %5) #6, !dbg !4691
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4692, !tbaa !980
  %8 = tail call i32 @close(i32 %7) #6, !dbg !4693
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4694, !tbaa !983
  %10 = tail call i32 @close(i32 %9) #6, !dbg !4695
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4696, !tbaa !972
  %12 = tail call i32 @close(i32 %11) #6, !dbg !4697
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4698, !tbaa !988
  %14 = tail call i32 @close(i32 %13) #6, !dbg !4699
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4700, !tbaa !991
  %16 = tail call i32 @close(i32 %15) #6, !dbg !4701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4702
  ret void, !dbg !4702
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
define dso_local void @bgrewriteaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !4703 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4707, !tbaa !650
  %3 = icmp eq i32 %2, -1, !dbg !4709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4710
  br i1 %3, label %5, label %4, !dbg !4710

; <label>:4:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.93, i64 0, i64 0)) #6, !dbg !4711
  br label %15, !dbg !4713

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4714, !tbaa !1024
  %7 = icmp eq i32 %6, -1, !dbg !4716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4717
  br i1 %7, label %9, label %8, !dbg !4717

; <label>:8:                                      ; preds = %5
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4718, !tbaa !1029
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.94, i64 0, i64 0)) #6, !dbg !4720
  br label %15, !dbg !4721

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !4722
  %11 = icmp eq i32 %10, 0, !dbg !4724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4725
  br i1 %11, label %12, label %13, !dbg !4725

; <label>:12:                                     ; preds = %9
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.95, i64 0, i64 0)) #6, !dbg !4726
  br label %15, !dbg !4728

; <label>:13:                                     ; preds = %9
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !4729, !tbaa !4731
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %14) #6, !dbg !4733
  br label %15

; <label>:15:                                     ; preds = %8, %13, %12, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4734
  ret void, !dbg !4734
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofRemoveTempFile(i32) local_unnamed_addr #0 !dbg !918 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !4736
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4736
  %4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %0) #6, !dbg !4738
  %5 = call i32 @unlink(i8* nonnull %3) #6, !dbg !4739
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4740
  ret void, !dbg !4740
}

; Function Attrs: noredzone nounwind
define dso_local void @backgroundRewriteDoneHandler(i32, i32) local_unnamed_addr #0 !dbg !4741 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.listIter, align 8
  %5 = alloca [256 x i8], align 16
  %6 = or i32 %1, %0, !dbg !4758
  %7 = icmp eq i32 %6, 0, !dbg !4758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4758
  br i1 %7, label %8, label %137, !dbg !4758

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !4759
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4759
  %10 = tail call i64 @ustime() #6, !dbg !4761
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.98, i64 0, i64 0)) #6, !dbg !4763
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4764, !tbaa !566
  %12 = icmp eq i64 %11, 0, !dbg !4764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4766
  br i1 %12, label %15, label %13, !dbg !4766

; <label>:13:                                     ; preds = %8
  %14 = tail call i64 @mstime() #6, !dbg !4767
  br label %15, !dbg !4767

; <label>:15:                                     ; preds = %8, %13
  %16 = phi i64 [ %14, %13 ], [ 0, %8 ], !dbg !4767
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4770, !tbaa !650
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %17) #6, !dbg !4771
  %19 = call i32 (i8*, i32, ...) @open(i8* nonnull %9, i32 9) #6, !dbg !4772
  %20 = icmp eq i32 %19, -1, !dbg !4774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4776
  br i1 %20, label %21, label %25, !dbg !4776

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno() #6, !dbg !4777
  %23 = load i32, i32* %22, align 4, !dbg !4777, !tbaa !428
  %24 = call i8* @strerror(i32 %23) #6, !dbg !4779
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.99, i64 0, i64 0), i8* %24) #6, !dbg !4780
  br label %136, !dbg !4781

; <label>:25:                                     ; preds = %15
  %26 = call i64 @aofRewriteBufferWrite(i32 %19) #9, !dbg !4782
  %27 = icmp eq i64 %26, -1, !dbg !4784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4785
  br i1 %27, label %28, label %33, !dbg !4785

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #6, !dbg !4786
  %30 = load i32, i32* %29, align 4, !dbg !4786, !tbaa !428
  %31 = call i8* @strerror(i32 %30) #6, !dbg !4788
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.100, i64 0, i64 0), i8* %31) #6, !dbg !4789
  %32 = call i32 @close(i32 %19) #6, !dbg !4790
  br label %136, !dbg !4791

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4792, !tbaa !566
  %35 = icmp eq i64 %34, 0, !dbg !4792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4794
  br i1 %35, label %36, label %37, !dbg !4794

; <label>:36:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4795
  br label %45, !dbg !4795

; <label>:37:                                     ; preds = %33
  %38 = call i64 @mstime() #6, !dbg !4797
  %39 = sub nsw i64 %38, %16, !dbg !4797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4797
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4795, !tbaa !566
  %41 = icmp eq i64 %40, 0, !dbg !4795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4795
  br i1 %41, label %45, label %42, !dbg !4795

; <label>:42:                                     ; preds = %37
  %43 = icmp slt i64 %39, %40, !dbg !4795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4799
  br i1 %43, label %45, label %44, !dbg !4799

; <label>:44:                                     ; preds = %42
  call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0), i64 %39) #6, !dbg !4795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4795
  br label %45, !dbg !4795

; <label>:45:                                     ; preds = %36, %42, %37, %44
  %46 = bitcast %struct.listIter* %4 to i8*, !dbg !4800
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #7, !dbg !4800
  %47 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4803, !tbaa !90
  call void @listRewind(%struct.list* %47, %struct.listIter* nonnull %4) #6, !dbg !4805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4806
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4807
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4806
  br i1 %49, label %64, label %50, !dbg !4806

; <label>:50:                                     ; preds = %45, %50
  %51 = phi %struct.listNode* [ %59, %50 ], [ %48, %45 ]
  %52 = phi i64 [ %58, %50 ], [ 0, %45 ]
  %53 = getelementptr inbounds %struct.listNode, %struct.listNode* %51, i64 0, i32 2, !dbg !4809
  %54 = bitcast i8** %53 to %struct.aofrwblock**, !dbg !4809
  %55 = load %struct.aofrwblock*, %struct.aofrwblock** %54, align 8, !dbg !4809, !tbaa !153
  %56 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %55, i64 0, i32 0, !dbg !4811
  %57 = load i64, i64* %56, align 8, !dbg !4811, !tbaa !157
  %58 = add i64 %57, %52, !dbg !4812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4806
  %59 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4807
  %60 = icmp eq %struct.listNode* %59, null, !dbg !4806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4806
  br i1 %60, label %61, label %50, !dbg !4806, !llvm.loop !160

; <label>:61:                                     ; preds = %50
  %62 = uitofp i64 %58 to double, !dbg !4813
  %63 = fmul double %62, 0x3EB0000000000000, !dbg !4813
  br label %64, !dbg !4813

; <label>:64:                                     ; preds = %61, %45
  %65 = phi double [ 0.000000e+00, %45 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #7, !dbg !4813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4814
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.102, i64 0, i64 0), double %65) #6, !dbg !4815
  %66 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4816, !tbaa !454
  %67 = icmp eq i32 %66, -1, !dbg !4818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4819
  br i1 %67, label %68, label %71, !dbg !4819

; <label>:68:                                     ; preds = %64
  %69 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4820, !tbaa !1009
  %70 = call i32 (i8*, i32, ...) @open(i8* %69, i32 16384) #6, !dbg !4822
  br label %71, !dbg !4824

; <label>:71:                                     ; preds = %64, %68
  %72 = phi i32 [ %70, %68 ], [ -1, %64 ], !dbg !4825
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4827, !tbaa !566
  %74 = icmp eq i64 %73, 0, !dbg !4827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4829
  br i1 %74, label %77, label %75, !dbg !4829

; <label>:75:                                     ; preds = %71
  %76 = call i64 @mstime() #6, !dbg !4830
  br label %77, !dbg !4830

; <label>:77:                                     ; preds = %71, %75
  %78 = phi i64 [ %76, %75 ], [ 0, %71 ], !dbg !4830
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %79 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4832, !tbaa !1009
  %80 = call i32 @rename(i8* nonnull %9, i8* %79) #6, !dbg !4834
  %81 = icmp eq i32 %80, -1, !dbg !4835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4836
  br i1 %81, label %82, label %91, !dbg !4836

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4837, !tbaa !1009
  %84 = call i32* @__errno() #6, !dbg !4839
  %85 = load i32, i32* %84, align 4, !dbg !4839, !tbaa !428
  %86 = call i8* @strerror(i32 %85) #6, !dbg !4840
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.103, i64 0, i64 0), i8* nonnull %9, i8* %83, i8* %86) #6, !dbg !4841
  %87 = call i32 @close(i32 %19) #6, !dbg !4842
  %88 = icmp eq i32 %72, -1, !dbg !4843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4845
  br i1 %88, label %136, label %89, !dbg !4845

; <label>:89:                                     ; preds = %82
  %90 = call i32 @close(i32 %72) #6, !dbg !4846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4846
  br label %136, !dbg !4846

; <label>:91:                                     ; preds = %77
  %92 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4847, !tbaa !566
  %93 = icmp eq i64 %92, 0, !dbg !4847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4849
  br i1 %93, label %94, label %95, !dbg !4849

; <label>:94:                                     ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4850
  br label %103, !dbg !4850

; <label>:95:                                     ; preds = %91
  %96 = call i64 @mstime() #6, !dbg !4852
  %97 = sub nsw i64 %96, %78, !dbg !4852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4852
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4850, !tbaa !566
  %99 = icmp eq i64 %98, 0, !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4850
  br i1 %99, label %103, label %100, !dbg !4850

; <label>:100:                                    ; preds = %95
  %101 = icmp slt i64 %97, %98, !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4854
  br i1 %101, label %103, label %102, !dbg !4854

; <label>:102:                                    ; preds = %100
  call void @latencyAddSample(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0), i64 %97) #6, !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4850
  br label %103, !dbg !4850

; <label>:103:                                    ; preds = %94, %100, %95, %102
  %104 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4855, !tbaa !454
  %105 = icmp eq i32 %104, -1, !dbg !4857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4858
  br i1 %105, label %106, label %108, !dbg !4858

; <label>:106:                                    ; preds = %103
  %107 = call i32 @close(i32 %19) #6, !dbg !4859
  br label %123, !dbg !4861

; <label>:108:                                    ; preds = %103
  store i32 %19, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4862, !tbaa !454
  %109 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !4864, !tbaa !506
  %110 = icmp eq i32 %109, 1, !dbg !4866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4867
  br i1 %110, label %111, label %113, !dbg !4867

; <label>:111:                                    ; preds = %108
  %112 = call i32 @fsync(i32 %19) #6, !dbg !4868
  br label %118, !dbg !4868

; <label>:113:                                    ; preds = %108
  %114 = icmp eq i32 %109, 2, !dbg !4869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4871
  br i1 %114, label %115, label %119, !dbg !4871

; <label>:115:                                    ; preds = %113
  %116 = sext i32 %19 to i64, !dbg !4874
  %117 = inttoptr i64 %116 to i8*, !dbg !4875
  call void @bioCreateBackgroundJob(i32 1, i8* %117, i8* null, i8* null) #6, !dbg !4876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4877
  br label %118, !dbg !4878

; <label>:118:                                    ; preds = %111, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4879
  br label %119, !dbg !4880

; <label>:119:                                    ; preds = %118, %113
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !4880, !tbaa !460
  call void @aofUpdateCurrentSize() #9, !dbg !4881
  %120 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !4882, !tbaa !518
  store i64 %120, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !4883, !tbaa !2519
  %121 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4884, !tbaa !468
  call void @sdsfree(i8* %121) #6, !dbg !4885
  %122 = call i8* @sdsempty() #6, !dbg !4886
  store i8* %122, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4887, !tbaa !468
  br label %123

; <label>:123:                                    ; preds = %119, %106
  %124 = phi i32 [ %72, %106 ], [ %104, %119 ], !dbg !4888
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4889, !tbaa !4890
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.105, i64 0, i64 0)) #6, !dbg !4891
  %125 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4892, !tbaa !451
  %126 = icmp eq i32 %125, 2, !dbg !4894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4895
  br i1 %126, label %127, label %128, !dbg !4895

; <label>:127:                                    ; preds = %123
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4896, !tbaa !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4897
  br label %128, !dbg !4897

; <label>:128:                                    ; preds = %127, %123
  %129 = icmp eq i32 %124, -1, !dbg !4898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4900
  br i1 %129, label %133, label %130, !dbg !4900

; <label>:130:                                    ; preds = %128
  %131 = sext i32 %124 to i64, !dbg !4901
  %132 = inttoptr i64 %131 to i8*, !dbg !4902
  call void @bioCreateBackgroundJob(i32 0, i8* %132, i8* null, i8* null) #6, !dbg !4903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4903
  br label %133, !dbg !4903

; <label>:133:                                    ; preds = %128, %130
  %134 = call i64 @ustime() #6, !dbg !4904
  %135 = sub nsw i64 %134, %10, !dbg !4905
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.106, i64 0, i64 0), i64 %135) #6, !dbg !4906
  br label %136, !dbg !4907

; <label>:136:                                    ; preds = %89, %82, %28, %21, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4908
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4907
  br label %143

; <label>:137:                                    ; preds = %2
  %138 = icmp eq i32 %1, 0, !dbg !4909
  %139 = icmp ne i32 %0, 0, !dbg !4910
  %140 = and i1 %139, %138, !dbg !4912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4912
  br i1 %140, label %141, label %142, !dbg !4912

; <label>:141:                                    ; preds = %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4913
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4915, !tbaa !4890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4917
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0)) #6, !dbg !4918
  br label %143, !dbg !4919

; <label>:142:                                    ; preds = %137
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4920, !tbaa !4890
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i32 %1) #6, !dbg !4922
  br label %143

; <label>:143:                                    ; preds = %136, %142, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %144 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4923, !tbaa !256
  %145 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4925, !tbaa !972
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %144, i32 %145, i32 1) #6, !dbg !4926
  %146 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4927, !tbaa !256
  %147 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4928, !tbaa !258
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %146, i32 %147, i32 2) #6, !dbg !4929
  %148 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4930, !tbaa !258
  %149 = call i32 @close(i32 %148) #6, !dbg !4931
  %150 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4932, !tbaa !980
  %151 = call i32 @close(i32 %150) #6, !dbg !4933
  %152 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4934, !tbaa !983
  %153 = call i32 @close(i32 %152) #6, !dbg !4935
  %154 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4936, !tbaa !972
  %155 = call i32 @close(i32 %154) #6, !dbg !4937
  %156 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4938, !tbaa !988
  %157 = call i32 @close(i32 %156) #6, !dbg !4939
  %158 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4940, !tbaa !991
  %159 = call i32 @close(i32 %158) #6, !dbg !4941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4942
  %160 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4943, !tbaa !90
  %161 = icmp eq %struct.list* %160, null, !dbg !4945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4946
  br i1 %161, label %163, label %162, !dbg !4946

; <label>:162:                                    ; preds = %143
  call void @listRelease(%struct.list* nonnull %160) #6, !dbg !4947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4947
  br label %163, !dbg !4947

; <label>:163:                                    ; preds = %143, %162
  %164 = call %struct.list* @listCreate() #6, !dbg !4948
  store %struct.list* %164, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4949, !tbaa !90
  %165 = getelementptr inbounds %struct.list, %struct.list* %164, i64 0, i32 3, !dbg !4950
  store void (i8*)* @zfree, void (i8*)** %165, align 8, !dbg !4950, !tbaa !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4951
  %166 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4952, !tbaa !650
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !4954
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %167) #7, !dbg !4954
  %168 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %167, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %166) #6, !dbg !4955
  %169 = call i32 @unlink(i8* nonnull %167) #6, !dbg !4956
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %167) #7, !dbg !4957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4957
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4958, !tbaa !650
  %170 = call i64 @time(i64* null) #6, !dbg !4959
  %171 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4960, !tbaa !967
  %172 = sub nsw i64 %170, %171, !dbg !4961
  store i64 %172, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 134), align 8, !dbg !4962, !tbaa !4963
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4964, !tbaa !967
  %173 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4965, !tbaa !451
  %174 = icmp eq i32 %173, 2, !dbg !4967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4968
  br i1 %174, label %175, label %176, !dbg !4968

; <label>:175:                                    ; preds = %163
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4969, !tbaa !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4970
  br label %176, !dbg !4970

; <label>:176:                                    ; preds = %175, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4971
  ret void, !dbg !4971
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
!149 = !DILocation(line: 85, column: 5, scope: !111)
!150 = !DILocation(line: 85, column: 17, scope: !111)
!151 = !DILocation(line: 80, column: 15, scope: !111)
!152 = !DILocation(line: 86, column: 29, scope: !133)
!153 = !{!154, !95, i64 16}
!154 = !{!"listNode", !95, i64 0, !95, i64 8, !95, i64 16}
!155 = !DILocation(line: 86, column: 21, scope: !133)
!156 = !DILocation(line: 87, column: 24, scope: !133)
!157 = !{!158, !96, i64 0}
!158 = !{!"aofrwblock", !96, i64 0, !96, i64 8, !93, i64 16}
!159 = !DILocation(line: 87, column: 14, scope: !133)
!160 = distinct !{!160, !149, !161}
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
!240 = !DILocation(line: 104, column: 5, scope: !165)
!241 = !DILocation(line: 105, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !165, file: !3, line: 104, column: 14)
!243 = !{!109, !95, i64 0}
!244 = !DILocation(line: 96, column: 15, scope: !165)
!245 = !DILocation(line: 106, column: 17, scope: !242)
!246 = !DILocation(line: 97, column: 17, scope: !165)
!247 = !DILocation(line: 107, column: 42, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !3, line: 107, column: 13)
!249 = !DILocation(line: 106, column: 26, scope: !242)
!250 = !DILocation(line: 107, column: 20, scope: !248)
!251 = !{!91, !92, i64 2064}
!252 = !DILocation(line: 107, column: 13, scope: !248)
!253 = !DILocation(line: 107, column: 46, scope: !248)
!254 = !DILocation(line: 108, column: 38, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !3, line: 107, column: 53)
!256 = !{!91, !95, i64 72}
!257 = !DILocation(line: 108, column: 48, scope: !255)
!258 = !{!91, !92, i64 2040}
!259 = !DILocation(line: 108, column: 13, scope: !255)
!260 = !DILocation(line: 110, column: 13, scope: !255)
!261 = !DILocation(line: 112, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !242, file: !3, line: 112, column: 13)
!263 = !DILocation(line: 112, column: 25, scope: !262)
!264 = !DILocation(line: 112, column: 13, scope: !242)
!265 = !DILocation(line: 120, column: 13, scope: !242)
!266 = !DILocation(line: 113, column: 37, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 112, column: 30)
!268 = !DILocation(line: 114, column: 30, scope: !267)
!269 = !DILocation(line: 113, column: 24, scope: !267)
!270 = !DILocation(line: 98, column: 13, scope: !165)
!271 = !DILocation(line: 115, column: 26, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !3, line: 115, column: 17)
!273 = !DILocation(line: 115, column: 17, scope: !267)
!274 = !DILocation(line: 116, column: 42, scope: !267)
!275 = !DILocation(line: 116, column: 59, scope: !267)
!276 = !DILocation(line: 116, column: 63, scope: !267)
!277 = !DILocation(line: 116, column: 13, scope: !267)
!278 = !DILocation(line: 117, column: 25, scope: !267)
!279 = !DILocation(line: 118, column: 20, scope: !267)
!280 = !DILocation(line: 118, column: 25, scope: !267)
!281 = !{!158, !96, i64 8}
!282 = !DILocation(line: 119, column: 9, scope: !267)
!283 = !DILocation(line: 120, column: 25, scope: !284)
!284 = distinct !DILexicalBlock(scope: !242, file: !3, line: 120, column: 13)
!285 = !DILocation(line: 120, column: 50, scope: !284)
!286 = !DILocation(line: 120, column: 31, scope: !284)
!287 = distinct !{!287, !240, !288}
!288 = !DILocation(line: 121, column: 5, scope: !165)
!289 = !DILocation(line: 0, scope: !255)
!290 = !DILocation(line: 122, column: 1, scope: !165)
!291 = distinct !DISubprogram(name: "aofRewriteBufferAppend", scope: !3, file: !3, line: 125, type: !292, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !18, !17}
!294 = !{!295, !296, !297, !298, !299, !303, !306}
!295 = !DILocalVariable(name: "s", arg: 1, scope: !291, file: !3, line: 125, type: !18)
!296 = !DILocalVariable(name: "len", arg: 2, scope: !291, file: !3, line: 125, type: !17)
!297 = !DILocalVariable(name: "ln", scope: !291, file: !3, line: 126, type: !116)
!298 = !DILocalVariable(name: "block", scope: !291, file: !3, line: 127, type: !134)
!299 = !DILocalVariable(name: "thislen", scope: !300, file: !3, line: 133, type: !17)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 132, column: 20)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 132, column: 13)
!302 = distinct !DILexicalBlock(scope: !291, file: !3, line: 129, column: 16)
!303 = !DILocalVariable(name: "numblocks", scope: !304, file: !3, line: 144, type: !6)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 143, column: 18)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 143, column: 13)
!306 = !DILocalVariable(name: "level", scope: !307, file: !3, line: 155, type: !6)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 154, column: 44)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 154, column: 17)
!309 = !DILocation(line: 125, column: 44, scope: !291)
!310 = !DILocation(line: 125, column: 61, scope: !291)
!311 = !DILocation(line: 126, column: 20, scope: !291)
!312 = !{!109, !95, i64 8}
!313 = !DILocation(line: 126, column: 15, scope: !291)
!314 = !DILocation(line: 127, column: 25, scope: !291)
!315 = !DILocation(line: 127, column: 34, scope: !291)
!316 = !DILocation(line: 127, column: 17, scope: !291)
!317 = !DILocation(line: 129, column: 5, scope: !291)
!318 = !DILocation(line: 132, column: 13, scope: !301)
!319 = !DILocation(line: 132, column: 13, scope: !302)
!320 = !DILocation(line: 133, column: 45, scope: !300)
!321 = !DILocation(line: 133, column: 50, scope: !300)
!322 = !DILocation(line: 133, column: 37, scope: !300)
!323 = !DILocation(line: 133, column: 27, scope: !300)
!324 = !DILocation(line: 134, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !300, file: !3, line: 134, column: 17)
!326 = !DILocation(line: 134, column: 17, scope: !300)
!327 = !DILocation(line: 141, column: 9, scope: !300)
!328 = !DILocation(line: 143, column: 13, scope: !302)
!329 = !DILocation(line: 135, column: 42, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 134, column: 26)
!331 = !DILocation(line: 135, column: 34, scope: !330)
!332 = !DILocation(line: 135, column: 17, scope: !330)
!333 = !DILocation(line: 136, column: 29, scope: !330)
!334 = !DILocation(line: 137, column: 29, scope: !330)
!335 = !DILocation(line: 138, column: 19, scope: !330)
!336 = !DILocation(line: 139, column: 21, scope: !330)
!337 = !DILocation(line: 140, column: 13, scope: !330)
!338 = !DILocation(line: 143, column: 13, scope: !305)
!339 = !DILocation(line: 146, column: 21, scope: !304)
!340 = !DILocation(line: 148, column: 25, scope: !304)
!341 = !{!96, !96, i64 0}
!342 = !DILocation(line: 149, column: 36, scope: !304)
!343 = !DILocation(line: 149, column: 13, scope: !304)
!344 = !DILocation(line: 153, column: 25, scope: !304)
!345 = !{!109, !96, i64 40}
!346 = !DILocation(line: 144, column: 17, scope: !304)
!347 = !DILocation(line: 154, column: 28, scope: !308)
!348 = !DILocation(line: 154, column: 32, scope: !308)
!349 = !DILocation(line: 154, column: 38, scope: !308)
!350 = !DILocation(line: 154, column: 17, scope: !304)
!351 = !DILocation(line: 155, column: 44, scope: !307)
!352 = !DILocation(line: 155, column: 51, scope: !307)
!353 = !DILocation(line: 155, column: 29, scope: !307)
!354 = !DILocation(line: 155, column: 21, scope: !307)
!355 = !DILocation(line: 81, column: 5, scope: !111, inlinedAt: !356)
!356 = distinct !DILocation(line: 158, column: 21, scope: !307)
!357 = !DILocation(line: 82, column: 19, scope: !111, inlinedAt: !356)
!358 = !DILocation(line: 81, column: 14, scope: !111, inlinedAt: !356)
!359 = !DILocation(line: 84, column: 5, scope: !111, inlinedAt: !356)
!360 = !DILocation(line: 85, column: 5, scope: !111, inlinedAt: !356)
!361 = !DILocation(line: 85, column: 17, scope: !111, inlinedAt: !356)
!362 = !DILocation(line: 80, column: 15, scope: !111, inlinedAt: !356)
!363 = !DILocation(line: 86, column: 29, scope: !133, inlinedAt: !356)
!364 = !DILocation(line: 86, column: 21, scope: !133, inlinedAt: !356)
!365 = !DILocation(line: 87, column: 24, scope: !133, inlinedAt: !356)
!366 = !DILocation(line: 87, column: 14, scope: !133, inlinedAt: !356)
!367 = !DILocation(line: 0, scope: !133, inlinedAt: !356)
!368 = !DILocation(line: 90, column: 1, scope: !111, inlinedAt: !356)
!369 = !DILocation(line: 89, column: 5, scope: !111, inlinedAt: !356)
!370 = !DILocation(line: 158, column: 43, scope: !307)
!371 = !DILocation(line: 157, column: 17, scope: !307)
!372 = !DILocation(line: 159, column: 13, scope: !307)
!373 = !DILocation(line: 160, column: 9, scope: !304)
!374 = distinct !{!374, !317, !375}
!375 = !DILocation(line: 161, column: 5, scope: !291)
!376 = !DILocation(line: 165, column: 32, scope: !377)
!377 = distinct !DILexicalBlock(scope: !291, file: !3, line: 165, column: 9)
!378 = !DILocation(line: 165, column: 42, scope: !377)
!379 = !DILocation(line: 165, column: 9, scope: !377)
!380 = !DILocation(line: 165, column: 72, scope: !377)
!381 = !DILocation(line: 165, column: 9, scope: !291)
!382 = !DILocation(line: 166, column: 34, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 165, column: 78)
!384 = !DILocation(line: 166, column: 45, scope: !383)
!385 = !DILocation(line: 166, column: 9, scope: !383)
!386 = !DILocation(line: 168, column: 5, scope: !383)
!387 = !DILocation(line: 169, column: 1, scope: !291)
!388 = distinct !DISubprogram(name: "aofRewriteBufferWrite", scope: !3, file: !3, line: 174, type: !389, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!11, !6}
!391 = !{!392, !393, !394, !395, !396, !398}
!392 = !DILocalVariable(name: "fd", arg: 1, scope: !388, file: !3, line: 174, type: !6)
!393 = !DILocalVariable(name: "ln", scope: !388, file: !3, line: 175, type: !116)
!394 = !DILocalVariable(name: "li", scope: !388, file: !3, line: 176, type: !126)
!395 = !DILocalVariable(name: "count", scope: !388, file: !3, line: 177, type: !11)
!396 = !DILocalVariable(name: "block", scope: !397, file: !3, line: 181, type: !134)
!397 = distinct !DILexicalBlock(scope: !388, file: !3, line: 180, column: 33)
!398 = !DILocalVariable(name: "nwritten", scope: !397, file: !3, line: 182, type: !11)
!399 = !DILocation(line: 174, column: 35, scope: !388)
!400 = !DILocation(line: 176, column: 5, scope: !388)
!401 = !DILocation(line: 177, column: 13, scope: !388)
!402 = !DILocation(line: 179, column: 23, scope: !388)
!403 = !DILocation(line: 176, column: 14, scope: !388)
!404 = !DILocation(line: 179, column: 5, scope: !388)
!405 = !DILocation(line: 180, column: 5, scope: !388)
!406 = !DILocation(line: 180, column: 17, scope: !388)
!407 = !DILocation(line: 175, column: 15, scope: !388)
!408 = !DILocation(line: 181, column: 29, scope: !397)
!409 = !DILocation(line: 181, column: 21, scope: !397)
!410 = !DILocation(line: 184, column: 20, scope: !411)
!411 = distinct !DILexicalBlock(scope: !397, file: !3, line: 184, column: 13)
!412 = !DILocation(line: 184, column: 13, scope: !411)
!413 = !DILocation(line: 184, column: 13, scope: !397)
!414 = !DILocation(line: 185, column: 33, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 184, column: 26)
!416 = !DILocation(line: 185, column: 24, scope: !415)
!417 = !DILocation(line: 182, column: 17, scope: !397)
!418 = !DILocation(line: 186, column: 45, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 186, column: 17)
!420 = !DILocation(line: 186, column: 26, scope: !419)
!421 = !DILocation(line: 186, column: 17, scope: !415)
!422 = !DILocation(line: 187, column: 30, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 187, column: 21)
!424 = distinct !DILexicalBlock(scope: !419, file: !3, line: 186, column: 51)
!425 = !DILocation(line: 187, column: 21, scope: !424)
!426 = !DILocation(line: 187, column: 36, scope: !423)
!427 = !DILocation(line: 187, column: 42, scope: !423)
!428 = !{!92, !92, i64 0}
!429 = !DILocation(line: 188, column: 17, scope: !424)
!430 = !DILocation(line: 190, column: 19, scope: !415)
!431 = !DILocation(line: 191, column: 9, scope: !415)
!432 = !DILocation(line: 0, scope: !388)
!433 = !DILocation(line: 192, column: 5, scope: !388)
!434 = !DILocation(line: 194, column: 1, scope: !388)
!435 = distinct !DISubprogram(name: "aofFsyncInProgress", scope: !3, file: !3, line: 202, type: !436, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!436 = !DISubroutineType(types: !437)
!437 = !{!6}
!438 = !DILocation(line: 203, column: 12, scope: !435)
!439 = !DILocation(line: 203, column: 48, scope: !435)
!440 = !DILocation(line: 203, column: 5, scope: !435)
!441 = distinct !DISubprogram(name: "aof_background_fsync", scope: !3, file: !3, line: 208, type: !4, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !442)
!442 = !{!443}
!443 = !DILocalVariable(name: "fd", arg: 1, scope: !441, file: !3, line: 208, type: !6)
!444 = !DILocation(line: 208, column: 31, scope: !441)
!445 = !DILocation(line: 209, column: 49, scope: !441)
!446 = !DILocation(line: 209, column: 42, scope: !441)
!447 = !DILocation(line: 209, column: 5, scope: !441)
!448 = !DILocation(line: 210, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "stopAppendOnly", scope: !3, file: !3, line: 234, type: !86, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!450 = !DILocation(line: 235, column: 5, scope: !449)
!451 = !{!91, !92, i64 1880}
!452 = !DILocation(line: 236, column: 5, scope: !449)
!453 = !DILocation(line: 237, column: 24, scope: !449)
!454 = !{!91, !92, i64 1960}
!455 = !DILocation(line: 237, column: 5, scope: !449)
!456 = !DILocation(line: 238, column: 18, scope: !449)
!457 = !DILocation(line: 238, column: 5, scope: !449)
!458 = !DILocation(line: 240, column: 19, scope: !449)
!459 = !DILocation(line: 241, column: 28, scope: !449)
!460 = !{!91, !92, i64 1964}
!461 = !DILocation(line: 242, column: 22, scope: !449)
!462 = !DILocation(line: 243, column: 5, scope: !449)
!463 = !DILocation(line: 244, column: 1, scope: !449)
!464 = !DILocation(line: 337, column: 30, scope: !2)
!465 = !DILocation(line: 339, column: 9, scope: !2)
!466 = !DILocation(line: 342, column: 23, scope: !467)
!467 = distinct !DILexicalBlock(scope: !2, file: !3, line: 342, column: 9)
!468 = !{!91, !95, i64 1952}
!469 = !DILocalVariable(name: "s", arg: 1, scope: !470, file: !26, line: 87, type: !475)
!470 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !471, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !477)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !475}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !474, line: 58, baseType: !17)
!474 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !26, line: 43, baseType: !20)
!477 = !{!469, !478}
!478 = !DILocalVariable(name: "flags", scope: !470, file: !26, line: 88, type: !19)
!479 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !480)
!480 = distinct !DILocation(line: 342, column: 9, scope: !467)
!481 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !480)
!482 = !{!93, !93, i64 0}
!483 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !480)
!484 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !480)
!485 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !480)
!486 = distinct !DILexicalBlock(scope: !470, file: !26, line: 89, column: 33)
!487 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !480)
!488 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !480)
!489 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !480)
!490 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !480)
!491 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !480)
!492 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !480)
!493 = !{!494, !494, i64 0}
!494 = !{!"short", !93, i64 0}
!495 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !480)
!496 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !480)
!497 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !480)
!498 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !480)
!499 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !480)
!500 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !480)
!501 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !480)
!502 = !DILocation(line: 101, column: 5, scope: !470, inlinedAt: !480)
!503 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !480)
!504 = !DILocation(line: 0, scope: !505)
!505 = distinct !DILexicalBlock(scope: !2, file: !3, line: 358, column: 9)
!506 = !{!91, !92, i64 1884}
!507 = !DILocation(line: 342, column: 9, scope: !2)
!508 = !DILocation(line: 0, scope: !2)
!509 = !DILocation(line: 348, column: 52, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 348, column: 13)
!511 = distinct !DILexicalBlock(scope: !467, file: !3, line: 342, column: 38)
!512 = !DILocation(line: 0, scope: !486, inlinedAt: !480)
!513 = !DILocation(line: 0, scope: !467)
!514 = !DILocation(line: 342, column: 32, scope: !467)
!515 = !DILocation(line: 349, column: 20, scope: !510)
!516 = !{!91, !96, i64 1928}
!517 = !DILocation(line: 349, column: 47, scope: !510)
!518 = !{!91, !96, i64 1920}
!519 = !DILocation(line: 349, column: 37, scope: !510)
!520 = !DILocation(line: 349, column: 64, scope: !510)
!521 = !DILocation(line: 350, column: 20, scope: !510)
!522 = !{!91, !96, i64 2872}
!523 = !DILocation(line: 350, column: 38, scope: !510)
!524 = !{!91, !96, i64 1976}
!525 = !DILocation(line: 350, column: 29, scope: !510)
!526 = !DILocation(line: 350, column: 53, scope: !510)
!527 = !DILocation(line: 203, column: 12, scope: !435, inlinedAt: !528)
!528 = distinct !DILocation(line: 351, column: 34, scope: !510)
!529 = !DILocation(line: 203, column: 48, scope: !435, inlinedAt: !528)
!530 = !DILocation(line: 203, column: 5, scope: !435, inlinedAt: !528)
!531 = !DILocation(line: 348, column: 13, scope: !511)
!532 = !DILocation(line: 358, column: 9, scope: !2)
!533 = !DILocation(line: 203, column: 12, scope: !435, inlinedAt: !534)
!534 = distinct !DILocation(line: 359, column: 28, scope: !505)
!535 = !DILocation(line: 203, column: 48, scope: !435, inlinedAt: !534)
!536 = !DILocation(line: 203, column: 5, scope: !435, inlinedAt: !534)
!537 = !DILocation(line: 359, column: 9, scope: !505)
!538 = !DILocation(line: 361, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !2, file: !3, line: 361, column: 9)
!540 = !DILocation(line: 361, column: 26, scope: !539)
!541 = !DILocation(line: 361, column: 52, scope: !539)
!542 = !DILocation(line: 361, column: 48, scope: !539)
!543 = !DILocation(line: 366, column: 24, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 366, column: 17)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 365, column: 31)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 365, column: 13)
!547 = distinct !DILexicalBlock(scope: !539, file: !3, line: 361, column: 59)
!548 = !{!91, !96, i64 1968}
!549 = !DILocation(line: 366, column: 50, scope: !544)
!550 = !DILocation(line: 0, scope: !551)
!551 = distinct !DILexicalBlock(scope: !544, file: !3, line: 371, column: 24)
!552 = !DILocation(line: 366, column: 17, scope: !545)
!553 = !DILocation(line: 369, column: 50, scope: !554)
!554 = distinct !DILexicalBlock(scope: !544, file: !3, line: 366, column: 56)
!555 = !DILocation(line: 370, column: 17, scope: !554)
!556 = !DILocation(line: 371, column: 40, scope: !551)
!557 = !DILocation(line: 371, column: 75, scope: !551)
!558 = !DILocation(line: 371, column: 24, scope: !544)
!559 = !DILocation(line: 378, column: 37, scope: !545)
!560 = !{!91, !96, i64 2008}
!561 = !DILocation(line: 379, column: 13, scope: !545)
!562 = !DILocation(line: 380, column: 9, scope: !545)
!563 = !DILocation(line: 0, scope: !545)
!564 = !DILocation(line: 388, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !2, file: !3, line: 388, column: 5)
!566 = !{!91, !97, i64 3096}
!567 = !DILocation(line: 388, column: 5, scope: !2)
!568 = !DILocation(line: 388, column: 5, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 388, column: 5)
!570 = !DILocation(line: 340, column: 14, scope: !2)
!571 = !DILocation(line: 389, column: 32, scope: !2)
!572 = !DILocation(line: 389, column: 46, scope: !2)
!573 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !574)
!574 = distinct !DILocation(line: 389, column: 54, scope: !2)
!575 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !574)
!576 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !574)
!577 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !574)
!578 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !574)
!579 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !574)
!580 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !574)
!581 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !574)
!582 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !574)
!583 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !574)
!584 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !574)
!585 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !574)
!586 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !574)
!587 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !574)
!588 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !574)
!589 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !574)
!590 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !574)
!591 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !574)
!592 = !DILocation(line: 0, scope: !486, inlinedAt: !574)
!593 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !574)
!594 = !DILocalVariable(name: "fd", arg: 1, scope: !595, file: !3, line: 297, type: !6)
!595 = distinct !DISubprogram(name: "aofWrite", scope: !3, file: !3, line: 297, type: !596, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !603)
!596 = !DISubroutineType(types: !597)
!597 = !{!11, !6, !598, !600}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !601, line: 40, baseType: !602)
!601 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !14, line: 129, baseType: !17)
!603 = !{!594, !604, !605, !606, !607}
!604 = !DILocalVariable(name: "buf", arg: 2, scope: !595, file: !3, line: 297, type: !598)
!605 = !DILocalVariable(name: "len", arg: 3, scope: !595, file: !3, line: 297, type: !600)
!606 = !DILocalVariable(name: "nwritten", scope: !595, file: !3, line: 298, type: !11)
!607 = !DILocalVariable(name: "totwritten", scope: !595, file: !3, line: 298, type: !11)
!608 = !DILocation(line: 297, column: 22, scope: !595, inlinedAt: !609)
!609 = distinct !DILocation(line: 389, column: 16, scope: !2)
!610 = !DILocation(line: 297, column: 38, scope: !595, inlinedAt: !609)
!611 = !DILocation(line: 297, column: 50, scope: !595, inlinedAt: !609)
!612 = !DILocation(line: 298, column: 13, scope: !595, inlinedAt: !609)
!613 = !DILocation(line: 298, column: 27, scope: !595, inlinedAt: !609)
!614 = !DILocation(line: 300, column: 5, scope: !595, inlinedAt: !609)
!615 = !DILocation(line: 301, column: 20, scope: !616, inlinedAt: !609)
!616 = distinct !DILexicalBlock(scope: !595, file: !3, line: 300, column: 16)
!617 = !DILocation(line: 303, column: 22, scope: !618, inlinedAt: !609)
!618 = distinct !DILexicalBlock(scope: !616, file: !3, line: 303, column: 13)
!619 = !DILocation(line: 303, column: 13, scope: !616, inlinedAt: !609)
!620 = !DILocation(line: 304, column: 17, scope: !621, inlinedAt: !609)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 304, column: 17)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 303, column: 27)
!623 = !DILocation(line: 304, column: 23, scope: !621, inlinedAt: !609)
!624 = !DILocation(line: 304, column: 17, scope: !622, inlinedAt: !609)
!625 = distinct !{!625, !626, !627}
!626 = !DILocation(line: 300, column: 5, scope: !595)
!627 = !DILocation(line: 313, column: 5, scope: !595)
!628 = !DILocation(line: 307, column: 20, scope: !622, inlinedAt: !609)
!629 = !DILocation(line: 307, column: 13, scope: !622, inlinedAt: !609)
!630 = !DILocation(line: 310, column: 13, scope: !616, inlinedAt: !609)
!631 = !DILocation(line: 311, column: 13, scope: !616, inlinedAt: !609)
!632 = !DILocation(line: 312, column: 20, scope: !616, inlinedAt: !609)
!633 = !DILocation(line: 0, scope: !595, inlinedAt: !609)
!634 = !DILocation(line: 316, column: 1, scope: !595, inlinedAt: !609)
!635 = !DILocation(line: 338, column: 13, scope: !2)
!636 = !DILocation(line: 390, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !2, file: !3, line: 390, column: 5)
!638 = !DILocation(line: 390, column: 5, scope: !2)
!639 = !DILocation(line: 390, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !3, line: 390, column: 5)
!641 = !DILocation(line: 0, scope: !569)
!642 = !DILocation(line: 396, column: 9, scope: !2)
!643 = !DILocation(line: 397, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 397, column: 9)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 396, column: 27)
!646 = distinct !DILexicalBlock(scope: !2, file: !3, line: 396, column: 9)
!647 = !DILocation(line: 397, column: 9, scope: !645)
!648 = !DILocation(line: 398, column: 23, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 398, column: 16)
!650 = !{!91, !92, i64 1940}
!651 = !DILocation(line: 398, column: 53, scope: !649)
!652 = !DILocation(line: 398, column: 43, scope: !649)
!653 = !DILocation(line: 0, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 401, column: 9)
!655 = distinct !DILexicalBlock(scope: !649, file: !3, line: 400, column: 12)
!656 = !DILocation(line: 0, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 399, column: 9)
!658 = distinct !DILexicalBlock(scope: !649, file: !3, line: 398, column: 74)
!659 = !DILocation(line: 399, column: 9, scope: !657)
!660 = !DILocation(line: 399, column: 9, scope: !658)
!661 = !DILocation(line: 401, column: 9, scope: !654)
!662 = !DILocation(line: 401, column: 9, scope: !655)
!663 = !DILocation(line: 403, column: 5, scope: !664)
!664 = distinct !DILexicalBlock(scope: !2, file: !3, line: 403, column: 5)
!665 = !DILocation(line: 403, column: 5, scope: !2)
!666 = !DILocation(line: 406, column: 38, scope: !2)
!667 = !DILocation(line: 408, column: 44, scope: !78)
!668 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !669)
!669 = distinct !DILocation(line: 408, column: 30, scope: !78)
!670 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !669)
!671 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !669)
!672 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !669)
!673 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !669)
!674 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !669)
!675 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !669)
!676 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !669)
!677 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !669)
!678 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !669)
!679 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !669)
!680 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !669)
!681 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !669)
!682 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !669)
!683 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !669)
!684 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !669)
!685 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !669)
!686 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !669)
!687 = !DILocation(line: 0, scope: !486, inlinedAt: !669)
!688 = !DILocation(line: 0, scope: !78)
!689 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !669)
!690 = !DILocation(line: 408, column: 18, scope: !78)
!691 = !DILocation(line: 408, column: 9, scope: !2)
!692 = !DILocation(line: 410, column: 13, scope: !77)
!693 = !DILocation(line: 413, column: 21, scope: !694)
!694 = distinct !DILexicalBlock(scope: !77, file: !3, line: 413, column: 13)
!695 = !DILocation(line: 413, column: 32, scope: !694)
!696 = !DILocation(line: 413, column: 30, scope: !694)
!697 = !DILocation(line: 413, column: 54, scope: !694)
!698 = !DILocation(line: 413, column: 13, scope: !77)
!699 = !DILocation(line: 415, column: 34, scope: !700)
!700 = distinct !DILexicalBlock(scope: !694, file: !3, line: 413, column: 82)
!701 = !DILocation(line: 416, column: 9, scope: !700)
!702 = !DILocation(line: 419, column: 22, scope: !703)
!703 = distinct !DILexicalBlock(scope: !77, file: !3, line: 419, column: 13)
!704 = !DILocation(line: 419, column: 13, scope: !77)
!705 = !DILocation(line: 0, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 425, column: 16)
!707 = !DILocation(line: 420, column: 17, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !3, line: 419, column: 29)
!709 = !DILocation(line: 422, column: 30, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 420, column: 26)
!711 = distinct !DILexicalBlock(scope: !708, file: !3, line: 420, column: 17)
!712 = !DILocation(line: 422, column: 21, scope: !710)
!713 = !DILocation(line: 421, column: 17, scope: !710)
!714 = !DILocation(line: 423, column: 47, scope: !710)
!715 = !DILocation(line: 424, column: 13, scope: !710)
!716 = !DILocation(line: 426, column: 17, scope: !706)
!717 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !718)
!718 = distinct !DILocation(line: 431, column: 51, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 426, column: 26)
!720 = distinct !DILexicalBlock(scope: !706, file: !3, line: 426, column: 17)
!721 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !718)
!722 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !718)
!723 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !718)
!724 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !718)
!725 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !718)
!726 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !718)
!727 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !718)
!728 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !718)
!729 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !718)
!730 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !718)
!731 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !718)
!732 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !718)
!733 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !718)
!734 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !718)
!735 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !718)
!736 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !718)
!737 = !DILocation(line: 0, scope: !486, inlinedAt: !718)
!738 = !DILocation(line: 0, scope: !719)
!739 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !718)
!740 = !DILocation(line: 427, column: 17, scope: !719)
!741 = !DILocation(line: 432, column: 13, scope: !719)
!742 = !DILocation(line: 434, column: 34, scope: !743)
!743 = distinct !DILexicalBlock(scope: !706, file: !3, line: 434, column: 17)
!744 = !DILocation(line: 434, column: 49, scope: !743)
!745 = !DILocation(line: 434, column: 17, scope: !743)
!746 = !DILocation(line: 434, column: 67, scope: !743)
!747 = !DILocation(line: 434, column: 17, scope: !706)
!748 = !DILocation(line: 439, column: 56, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 435, column: 30)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 435, column: 21)
!751 = distinct !DILexicalBlock(scope: !743, file: !3, line: 434, column: 74)
!752 = !DILocation(line: 439, column: 47, scope: !749)
!753 = !DILocation(line: 436, column: 21, scope: !749)
!754 = !DILocation(line: 440, column: 17, scope: !749)
!755 = !{!91, !92, i64 2028}
!756 = !DILocation(line: 450, column: 20, scope: !757)
!757 = distinct !DILexicalBlock(scope: !77, file: !3, line: 450, column: 13)
!758 = !DILocation(line: 389, column: 14, scope: !2)
!759 = !DILocation(line: 450, column: 30, scope: !757)
!760 = !DILocation(line: 450, column: 13, scope: !77)
!761 = !DILocation(line: 455, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 450, column: 51)
!763 = !DILocation(line: 456, column: 13, scope: !762)
!764 = !DILocation(line: 461, column: 42, scope: !765)
!765 = distinct !DILexicalBlock(scope: !757, file: !3, line: 457, column: 16)
!766 = !{!91, !92, i64 2024}
!767 = !DILocation(line: 465, column: 26, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 465, column: 17)
!769 = !DILocation(line: 465, column: 17, scope: !765)
!770 = !DILocation(line: 466, column: 41, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !3, line: 465, column: 31)
!772 = !DILocation(line: 467, column: 33, scope: !771)
!773 = !DILocation(line: 467, column: 17, scope: !771)
!774 = !DILocation(line: 468, column: 13, scope: !771)
!775 = !DILocation(line: 474, column: 20, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 474, column: 13)
!777 = distinct !DILexicalBlock(scope: !78, file: !3, line: 471, column: 12)
!778 = !DILocation(line: 474, column: 42, scope: !776)
!779 = !DILocation(line: 474, column: 13, scope: !777)
!780 = !DILocation(line: 475, column: 13, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !3, line: 474, column: 52)
!782 = !DILocation(line: 477, column: 42, scope: !781)
!783 = !DILocation(line: 478, column: 9, scope: !781)
!784 = !DILocation(line: 484, column: 24, scope: !785)
!785 = distinct !DILexicalBlock(scope: !2, file: !3, line: 484, column: 9)
!786 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !787)
!787 = distinct !DILocation(line: 484, column: 10, scope: !785)
!788 = !DILocation(line: 480, column: 29, scope: !2)
!789 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !787)
!790 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !787)
!791 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !787)
!792 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !787)
!793 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !787)
!794 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !787)
!795 = !DILocalVariable(name: "s", arg: 1, scope: !796, file: !26, line: 104, type: !475)
!796 = distinct !DISubprogram(name: "sdsavail", scope: !26, file: !26, line: 104, type: !471, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !797)
!797 = !{!795, !798, !799, !802, !804, !806}
!798 = !DILocalVariable(name: "flags", scope: !796, file: !26, line: 105, type: !19)
!799 = !DILocalVariable(name: "sh", scope: !800, file: !26, line: 111, type: !24)
!800 = distinct !DILexicalBlock(scope: !801, file: !26, line: 110, column: 26)
!801 = distinct !DILexicalBlock(scope: !796, file: !26, line: 106, column: 33)
!802 = !DILocalVariable(name: "sh", scope: !803, file: !26, line: 115, type: !39)
!803 = distinct !DILexicalBlock(scope: !801, file: !26, line: 114, column: 27)
!804 = !DILocalVariable(name: "sh", scope: !805, file: !26, line: 119, type: !49)
!805 = distinct !DILexicalBlock(scope: !801, file: !26, line: 118, column: 27)
!806 = !DILocalVariable(name: "sh", scope: !807, file: !26, line: 123, type: !59)
!807 = distinct !DILexicalBlock(scope: !801, file: !26, line: 122, column: 27)
!808 = !DILocation(line: 104, column: 41, scope: !796, inlinedAt: !809)
!809 = distinct !DILocation(line: 484, column: 33, scope: !785)
!810 = !DILocation(line: 105, column: 19, scope: !796, inlinedAt: !809)
!811 = !DILocation(line: 106, column: 5, scope: !796, inlinedAt: !809)
!812 = !DILocation(line: 108, column: 13, scope: !813, inlinedAt: !809)
!813 = distinct !DILexicalBlock(scope: !801, file: !26, line: 107, column: 26)
!814 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !787)
!815 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !787)
!816 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !787)
!817 = !DILocation(line: 111, column: 13, scope: !800, inlinedAt: !809)
!818 = !DILocation(line: 112, column: 24, scope: !800, inlinedAt: !809)
!819 = !DILocation(line: 112, column: 20, scope: !800, inlinedAt: !809)
!820 = !DILocation(line: 112, column: 30, scope: !800, inlinedAt: !809)
!821 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !787)
!822 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !787)
!823 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !787)
!824 = !DILocation(line: 115, column: 13, scope: !803, inlinedAt: !809)
!825 = !DILocation(line: 116, column: 24, scope: !803, inlinedAt: !809)
!826 = !DILocation(line: 116, column: 20, scope: !803, inlinedAt: !809)
!827 = !DILocation(line: 116, column: 30, scope: !803, inlinedAt: !809)
!828 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !787)
!829 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !787)
!830 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !787)
!831 = !DILocation(line: 119, column: 13, scope: !805, inlinedAt: !809)
!832 = !DILocation(line: 120, column: 24, scope: !805, inlinedAt: !809)
!833 = !DILocation(line: 120, column: 30, scope: !805, inlinedAt: !809)
!834 = !DILocation(line: 120, column: 20, scope: !805, inlinedAt: !809)
!835 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !787)
!836 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !787)
!837 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !787)
!838 = !DILocation(line: 123, column: 13, scope: !807, inlinedAt: !809)
!839 = !DILocation(line: 124, column: 24, scope: !807, inlinedAt: !809)
!840 = !DILocation(line: 124, column: 30, scope: !807, inlinedAt: !809)
!841 = !DILocation(line: 101, column: 5, scope: !470, inlinedAt: !787)
!842 = !DILocation(line: 127, column: 5, scope: !796, inlinedAt: !809)
!843 = !DILocation(line: 0, scope: !813, inlinedAt: !809)
!844 = !DILocation(line: 128, column: 1, scope: !796, inlinedAt: !809)
!845 = !DILocation(line: 484, column: 32, scope: !785)
!846 = !DILocation(line: 484, column: 59, scope: !785)
!847 = !DILocation(line: 484, column: 9, scope: !2)
!848 = !DILocation(line: 485, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !785, file: !3, line: 484, column: 67)
!850 = !DILocation(line: 486, column: 5, scope: !849)
!851 = !DILocation(line: 487, column: 9, scope: !852)
!852 = distinct !DILexicalBlock(scope: !785, file: !3, line: 486, column: 12)
!853 = !DILocation(line: 488, column: 26, scope: !852)
!854 = !DILocation(line: 488, column: 24, scope: !852)
!855 = !DILocation(line: 494, column: 16, scope: !856)
!856 = distinct !DILexicalBlock(scope: !2, file: !3, line: 494, column: 9)
!857 = !{!91, !92, i64 1896}
!858 = !DILocation(line: 494, column: 9, scope: !856)
!859 = !DILocation(line: 494, column: 40, scope: !856)
!860 = !DILocation(line: 495, column: 17, scope: !856)
!861 = !DILocation(line: 495, column: 47, scope: !856)
!862 = !DILocation(line: 495, column: 37, scope: !856)
!863 = !DILocation(line: 499, column: 16, scope: !864)
!864 = distinct !DILexicalBlock(scope: !2, file: !3, line: 499, column: 9)
!865 = !DILocation(line: 499, column: 26, scope: !864)
!866 = !DILocation(line: 499, column: 9, scope: !2)
!867 = !DILocation(line: 502, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 502, column: 9)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 499, column: 47)
!870 = !DILocation(line: 502, column: 9, scope: !869)
!871 = !DILocation(line: 502, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !3, line: 502, column: 9)
!873 = !DILocation(line: 503, column: 28, scope: !869)
!874 = !DILocation(line: 503, column: 9, scope: !869)
!875 = !DILocation(line: 504, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !869, file: !3, line: 504, column: 9)
!877 = !DILocation(line: 504, column: 9, scope: !869)
!878 = !DILocation(line: 505, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !869, file: !3, line: 505, column: 9)
!880 = !DILocation(line: 504, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 504, column: 9)
!882 = !DILocation(line: 505, column: 9, scope: !869)
!883 = !DILocation(line: 506, column: 42, scope: !869)
!884 = !DILocation(line: 506, column: 33, scope: !869)
!885 = !DILocation(line: 507, column: 40, scope: !869)
!886 = !DILocation(line: 507, column: 31, scope: !869)
!887 = !DILocation(line: 508, column: 5, scope: !869)
!888 = !DILocation(line: 508, column: 34, scope: !889)
!889 = distinct !DILexicalBlock(scope: !864, file: !3, line: 508, column: 16)
!890 = !DILocation(line: 508, column: 56, scope: !889)
!891 = !DILocation(line: 509, column: 24, scope: !889)
!892 = !DILocation(line: 509, column: 42, scope: !889)
!893 = !DILocation(line: 509, column: 33, scope: !889)
!894 = !DILocation(line: 508, column: 16, scope: !864)
!895 = !DILocation(line: 510, column: 14, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 510, column: 13)
!897 = distinct !DILexicalBlock(scope: !889, file: !3, line: 509, column: 59)
!898 = !DILocation(line: 510, column: 13, scope: !897)
!899 = !DILocation(line: 511, column: 41, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 510, column: 32)
!901 = !DILocation(line: 208, column: 31, scope: !441, inlinedAt: !902)
!902 = distinct !DILocation(line: 511, column: 13, scope: !900)
!903 = !DILocation(line: 209, column: 49, scope: !441, inlinedAt: !902)
!904 = !DILocation(line: 209, column: 42, scope: !441, inlinedAt: !902)
!905 = !DILocation(line: 209, column: 5, scope: !441, inlinedAt: !902)
!906 = !DILocation(line: 210, column: 1, scope: !441, inlinedAt: !902)
!907 = !DILocation(line: 512, column: 46, scope: !900)
!908 = !DILocation(line: 512, column: 37, scope: !900)
!909 = !DILocation(line: 513, column: 9, scope: !900)
!910 = !DILocation(line: 514, column: 40, scope: !897)
!911 = !DILocation(line: 514, column: 31, scope: !897)
!912 = !DILocation(line: 515, column: 5, scope: !897)
!913 = !DILocation(line: 516, column: 1, scope: !2)
!914 = distinct !DISubprogram(name: "killAppendOnlyChild", scope: !3, file: !3, line: 213, type: !86, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !915)
!915 = !{!916}
!916 = !DILocalVariable(name: "statloc", scope: !914, file: !3, line: 214, type: !6)
!917 = !DILocalVariable(name: "tmpfile", scope: !918, file: !3, line: 1633, type: !925)
!918 = distinct !DISubprogram(name: "aofRemoveTempFile", scope: !3, file: !3, line: 1632, type: !919, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !923)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !921}
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !922, line: 61, baseType: !6)
!922 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!923 = !{!924, !917}
!924 = !DILocalVariable(name: "childpid", arg: 1, scope: !918, file: !3, line: 1632, type: !921)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 256)
!928 = !DILocation(line: 1633, column: 10, scope: !918, inlinedAt: !929)
!929 = distinct !DILocation(line: 225, column: 5, scope: !914)
!930 = !DILocation(line: 214, column: 5, scope: !914)
!931 = !DILocation(line: 216, column: 16, scope: !932)
!932 = distinct !DILexicalBlock(scope: !914, file: !3, line: 216, column: 9)
!933 = !DILocation(line: 216, column: 30, scope: !932)
!934 = !DILocation(line: 216, column: 9, scope: !914)
!935 = !DILocation(line: 219, column: 9, scope: !914)
!936 = !DILocation(line: 218, column: 5, scope: !914)
!937 = !DILocation(line: 220, column: 21, scope: !938)
!938 = distinct !DILexicalBlock(scope: !914, file: !3, line: 220, column: 9)
!939 = !DILocation(line: 220, column: 9, scope: !938)
!940 = !DILocation(line: 220, column: 44, scope: !938)
!941 = !DILocation(line: 220, column: 9, scope: !914)
!942 = !DILocation(line: 214, column: 9, scope: !914)
!943 = !DILocation(line: 221, column: 15, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !3, line: 220, column: 51)
!945 = !DILocation(line: 221, column: 48, scope: !944)
!946 = !DILocation(line: 221, column: 38, scope: !944)
!947 = !DILocation(line: 221, column: 9, scope: !944)
!948 = distinct !{!948, !947, !949}
!949 = !DILocation(line: 221, column: 62, scope: !944)
!950 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !951)
!951 = distinct !DILocation(line: 224, column: 5, scope: !914)
!952 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !951)
!953 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !951)
!954 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !951)
!955 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !951)
!956 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !951)
!957 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !951)
!958 = !DILocation(line: 76, column: 1, scope: !85, inlinedAt: !951)
!959 = !DILocation(line: 225, column: 30, scope: !914)
!960 = !DILocation(line: 1632, column: 30, scope: !918, inlinedAt: !929)
!961 = !DILocation(line: 1633, column: 5, scope: !918, inlinedAt: !929)
!962 = !DILocation(line: 1635, column: 5, scope: !918, inlinedAt: !929)
!963 = !DILocation(line: 1636, column: 5, scope: !918, inlinedAt: !929)
!964 = !DILocation(line: 1637, column: 1, scope: !918, inlinedAt: !929)
!965 = !DILocation(line: 226, column: 26, scope: !914)
!966 = !DILocation(line: 227, column: 35, scope: !914)
!967 = !{!91, !96, i64 1992}
!968 = !DILocation(line: 1533, column: 30, scope: !969, inlinedAt: !970)
!969 = distinct !DISubprogram(name: "aofClosePipes", scope: !3, file: !3, line: 1532, type: !86, isLocal: false, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!970 = distinct !DILocation(line: 229, column: 5, scope: !914)
!971 = !DILocation(line: 1533, column: 40, scope: !969, inlinedAt: !970)
!972 = !{!91, !92, i64 2052}
!973 = !DILocation(line: 1533, column: 5, scope: !969, inlinedAt: !970)
!974 = !DILocation(line: 1534, column: 30, scope: !969, inlinedAt: !970)
!975 = !DILocation(line: 1534, column: 40, scope: !969, inlinedAt: !970)
!976 = !DILocation(line: 1534, column: 5, scope: !969, inlinedAt: !970)
!977 = !DILocation(line: 1535, column: 18, scope: !969, inlinedAt: !970)
!978 = !DILocation(line: 1535, column: 5, scope: !969, inlinedAt: !970)
!979 = !DILocation(line: 1536, column: 18, scope: !969, inlinedAt: !970)
!980 = !{!91, !92, i64 2044}
!981 = !DILocation(line: 1536, column: 5, scope: !969, inlinedAt: !970)
!982 = !DILocation(line: 1537, column: 18, scope: !969, inlinedAt: !970)
!983 = !{!91, !92, i64 2048}
!984 = !DILocation(line: 1537, column: 5, scope: !969, inlinedAt: !970)
!985 = !DILocation(line: 1538, column: 18, scope: !969, inlinedAt: !970)
!986 = !DILocation(line: 1538, column: 5, scope: !969, inlinedAt: !970)
!987 = !DILocation(line: 1539, column: 18, scope: !969, inlinedAt: !970)
!988 = !{!91, !92, i64 2056}
!989 = !DILocation(line: 1539, column: 5, scope: !969, inlinedAt: !970)
!990 = !DILocation(line: 1540, column: 18, scope: !969, inlinedAt: !970)
!991 = !{!91, !92, i64 2060}
!992 = !DILocation(line: 1540, column: 5, scope: !969, inlinedAt: !970)
!993 = !DILocation(line: 1541, column: 1, scope: !969, inlinedAt: !970)
!994 = !DILocation(line: 230, column: 1, scope: !914)
!995 = !DILocation(line: 0, scope: !932)
!996 = distinct !DISubprogram(name: "startAppendOnly", scope: !3, file: !3, line: 248, type: !436, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !997)
!997 = !{!998, !1002, !1003}
!998 = !DILocalVariable(name: "cwd", scope: !996, file: !3, line: 249, type: !999)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 1024)
!1002 = !DILocalVariable(name: "newfd", scope: !996, file: !3, line: 250, type: !6)
!1003 = !DILocalVariable(name: "cwdp", scope: !1004, file: !3, line: 255, type: !20)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 254, column: 22)
!1005 = distinct !DILexicalBlock(scope: !996, file: !3, line: 254, column: 9)
!1006 = !DILocation(line: 249, column: 5, scope: !996)
!1007 = !DILocation(line: 249, column: 10, scope: !996)
!1008 = !DILocation(line: 252, column: 25, scope: !996)
!1009 = !{!91, !95, i64 1888}
!1010 = !DILocation(line: 252, column: 13, scope: !996)
!1011 = !DILocation(line: 250, column: 9, scope: !996)
!1012 = !DILocation(line: 253, column: 5, scope: !996)
!1013 = !DILocation(line: 254, column: 15, scope: !1005)
!1014 = !DILocation(line: 254, column: 9, scope: !996)
!1015 = !DILocation(line: 255, column: 22, scope: !1004)
!1016 = !DILocation(line: 255, column: 15, scope: !1004)
!1017 = !DILocation(line: 260, column: 20, scope: !1004)
!1018 = !DILocation(line: 261, column: 13, scope: !1004)
!1019 = !DILocation(line: 262, column: 22, scope: !1004)
!1020 = !DILocation(line: 262, column: 13, scope: !1004)
!1021 = !DILocation(line: 257, column: 9, scope: !1004)
!1022 = !DILocation(line: 265, column: 16, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !996, file: !3, line: 265, column: 9)
!1024 = !{!91, !92, i64 2096}
!1025 = !DILocation(line: 265, column: 30, scope: !1023)
!1026 = !DILocation(line: 265, column: 9, scope: !996)
!1027 = !DILocation(line: 266, column: 38, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 265, column: 37)
!1029 = !{!91, !92, i64 1936}
!1030 = !DILocation(line: 267, column: 9, scope: !1028)
!1031 = !DILocation(line: 268, column: 5, scope: !1028)
!1032 = !DILocation(line: 272, column: 20, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 272, column: 13)
!1034 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 268, column: 12)
!1035 = !DILocation(line: 272, column: 34, scope: !1033)
!1036 = !DILocation(line: 272, column: 13, scope: !1034)
!1037 = !DILocation(line: 273, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 272, column: 41)
!1039 = !DILocation(line: 274, column: 13, scope: !1038)
!1040 = !DILocation(line: 275, column: 9, scope: !1038)
!1041 = !DILocation(line: 276, column: 13, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 276, column: 13)
!1043 = !DILocation(line: 276, column: 47, scope: !1042)
!1044 = !DILocation(line: 276, column: 13, scope: !1034)
!1045 = !DILocation(line: 277, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 276, column: 57)
!1047 = !DILocation(line: 278, column: 13, scope: !1046)
!1048 = !DILocation(line: 279, column: 13, scope: !1046)
!1049 = !DILocation(line: 284, column: 22, scope: !996)
!1050 = !DILocation(line: 285, column: 36, scope: !996)
!1051 = !DILocation(line: 285, column: 27, scope: !996)
!1052 = !DILocation(line: 286, column: 19, scope: !996)
!1053 = !DILocation(line: 287, column: 5, scope: !996)
!1054 = !DILocation(line: 0, scope: !1046)
!1055 = !DILocation(line: 288, column: 1, scope: !996)
!1056 = distinct !DISubprogram(name: "rewriteAppendOnlyFileBackground", scope: !3, file: !3, line: 1559, type: !436, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1057)
!1057 = !{!1058, !1059, !1060, !1063}
!1058 = !DILocalVariable(name: "childpid", scope: !1056, file: !3, line: 1560, type: !921)
!1059 = !DILocalVariable(name: "start", scope: !1056, file: !3, line: 1561, type: !16)
!1060 = !DILocalVariable(name: "tmpfile", scope: !1061, file: !3, line: 1568, type: !925)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 1567, column: 35)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1567, column: 9)
!1063 = !DILocalVariable(name: "private_dirty", scope: !1064, file: !3, line: 1575, type: !600)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1574, column: 53)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 1574, column: 13)
!1066 = !DILocation(line: 1563, column: 16, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1563, column: 9)
!1068 = !DILocation(line: 1563, column: 46, scope: !1067)
!1069 = !DILocation(line: 1563, column: 36, scope: !1067)
!1070 = !DILocation(line: 1564, column: 9, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1564, column: 9)
!1072 = !DILocation(line: 1564, column: 26, scope: !1071)
!1073 = !DILocation(line: 1564, column: 9, scope: !1056)
!1074 = !DILocation(line: 1565, column: 5, scope: !1056)
!1075 = !DILocation(line: 1566, column: 13, scope: !1056)
!1076 = !DILocation(line: 1561, column: 15, scope: !1056)
!1077 = !DILocation(line: 1567, column: 21, scope: !1062)
!1078 = !DILocation(line: 1560, column: 11, scope: !1056)
!1079 = !DILocation(line: 1567, column: 29, scope: !1062)
!1080 = !DILocation(line: 1567, column: 9, scope: !1056)
!1081 = !DILocation(line: 1568, column: 9, scope: !1061)
!1082 = !DILocation(line: 1568, column: 14, scope: !1061)
!1083 = !DILocation(line: 1571, column: 9, scope: !1061)
!1084 = !DILocation(line: 1572, column: 9, scope: !1061)
!1085 = !DILocation(line: 1573, column: 65, scope: !1061)
!1086 = !DILocation(line: 1573, column: 9, scope: !1061)
!1087 = !DILocation(line: 1574, column: 13, scope: !1065)
!1088 = !DILocation(line: 1574, column: 44, scope: !1065)
!1089 = !DILocation(line: 1574, column: 13, scope: !1061)
!1090 = !DILocation(line: 1575, column: 36, scope: !1064)
!1091 = !DILocation(line: 1575, column: 20, scope: !1064)
!1092 = !DILocation(line: 1577, column: 17, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 1577, column: 17)
!1094 = !DILocation(line: 1577, column: 17, scope: !1064)
!1095 = !DILocation(line: 1580, column: 34, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1577, column: 32)
!1097 = !DILocation(line: 1578, column: 17, scope: !1096)
!1098 = !DILocation(line: 1581, column: 13, scope: !1096)
!1099 = !DILocation(line: 1583, column: 45, scope: !1064)
!1100 = !{!91, !96, i64 2208}
!1101 = !DILocation(line: 1584, column: 13, scope: !1064)
!1102 = !DILocation(line: 1585, column: 13, scope: !1064)
!1103 = !DILocation(line: 1586, column: 9, scope: !1064)
!1104 = !DILocation(line: 1587, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1586, column: 16)
!1106 = !DILocation(line: 1589, column: 5, scope: !1062)
!1107 = !DILocation(line: 1616, column: 5, scope: !1056)
!1108 = !DILocation(line: 1591, column: 33, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 1589, column: 12)
!1110 = !DILocation(line: 1591, column: 41, scope: !1109)
!1111 = !DILocation(line: 1591, column: 31, scope: !1109)
!1112 = !{!91, !97, i64 1120}
!1113 = !DILocation(line: 1592, column: 42, scope: !1109)
!1114 = !DILocation(line: 1592, column: 33, scope: !1109)
!1115 = !DILocation(line: 1592, column: 64, scope: !1109)
!1116 = !DILocation(line: 1592, column: 83, scope: !1109)
!1117 = !DILocation(line: 1592, column: 76, scope: !1109)
!1118 = !DILocation(line: 1592, column: 74, scope: !1109)
!1119 = !DILocation(line: 1592, column: 98, scope: !1109)
!1120 = !DILocation(line: 1592, column: 31, scope: !1109)
!1121 = !{!91, !98, i64 1128}
!1122 = !DILocation(line: 1593, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 1593, column: 9)
!1124 = !DILocation(line: 1593, column: 9, scope: !1109)
!1125 = !DILocation(line: 1594, column: 22, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 1594, column: 13)
!1127 = !DILocation(line: 1594, column: 13, scope: !1109)
!1128 = !DILocation(line: 1595, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1594, column: 29)
!1130 = !DILocation(line: 1598, column: 26, scope: !1129)
!1131 = !DILocation(line: 1598, column: 17, scope: !1129)
!1132 = !DILocation(line: 1596, column: 13, scope: !1129)
!1133 = !DILocation(line: 1533, column: 30, scope: !969, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 1599, column: 13, scope: !1129)
!1135 = !DILocation(line: 1533, column: 40, scope: !969, inlinedAt: !1134)
!1136 = !DILocation(line: 1533, column: 5, scope: !969, inlinedAt: !1134)
!1137 = !DILocation(line: 1534, column: 30, scope: !969, inlinedAt: !1134)
!1138 = !DILocation(line: 1534, column: 40, scope: !969, inlinedAt: !1134)
!1139 = !DILocation(line: 1534, column: 5, scope: !969, inlinedAt: !1134)
!1140 = !DILocation(line: 1535, column: 18, scope: !969, inlinedAt: !1134)
!1141 = !DILocation(line: 1535, column: 5, scope: !969, inlinedAt: !1134)
!1142 = !DILocation(line: 1536, column: 18, scope: !969, inlinedAt: !1134)
!1143 = !DILocation(line: 1536, column: 5, scope: !969, inlinedAt: !1134)
!1144 = !DILocation(line: 1537, column: 18, scope: !969, inlinedAt: !1134)
!1145 = !DILocation(line: 1537, column: 5, scope: !969, inlinedAt: !1134)
!1146 = !DILocation(line: 1538, column: 18, scope: !969, inlinedAt: !1134)
!1147 = !DILocation(line: 1538, column: 5, scope: !969, inlinedAt: !1134)
!1148 = !DILocation(line: 1539, column: 18, scope: !969, inlinedAt: !1134)
!1149 = !DILocation(line: 1539, column: 5, scope: !969, inlinedAt: !1134)
!1150 = !DILocation(line: 1540, column: 18, scope: !969, inlinedAt: !1134)
!1151 = !DILocation(line: 1540, column: 5, scope: !969, inlinedAt: !1134)
!1152 = !DILocation(line: 1541, column: 1, scope: !969, inlinedAt: !1134)
!1153 = !DILocation(line: 1600, column: 13, scope: !1129)
!1154 = !DILocation(line: 1602, column: 9, scope: !1109)
!1155 = !DILocation(line: 1604, column: 38, scope: !1109)
!1156 = !DILocation(line: 1605, column: 41, scope: !1109)
!1157 = !DILocation(line: 1605, column: 39, scope: !1109)
!1158 = !DILocation(line: 1606, column: 30, scope: !1109)
!1159 = !DILocation(line: 1607, column: 9, scope: !1109)
!1160 = !DILocation(line: 1612, column: 32, scope: !1109)
!1161 = !DILocation(line: 1613, column: 9, scope: !1109)
!1162 = !DILocation(line: 1614, column: 9, scope: !1109)
!1163 = !DILocation(line: 0, scope: !1109)
!1164 = !DILocation(line: 0, scope: !1067)
!1165 = !DILocation(line: 1617, column: 1, scope: !1056)
!1166 = !DILocation(line: 297, column: 22, scope: !595)
!1167 = !DILocation(line: 297, column: 38, scope: !595)
!1168 = !DILocation(line: 297, column: 50, scope: !595)
!1169 = !DILocation(line: 298, column: 13, scope: !595)
!1170 = !DILocation(line: 298, column: 27, scope: !595)
!1171 = !DILocation(line: 301, column: 20, scope: !616)
!1172 = !DILocation(line: 303, column: 22, scope: !618)
!1173 = !DILocation(line: 303, column: 13, scope: !616)
!1174 = !DILocation(line: 304, column: 17, scope: !621)
!1175 = !DILocation(line: 304, column: 23, scope: !621)
!1176 = !DILocation(line: 304, column: 17, scope: !622)
!1177 = !DILocation(line: 307, column: 20, scope: !622)
!1178 = !DILocation(line: 307, column: 13, scope: !622)
!1179 = !DILocation(line: 310, column: 13, scope: !616)
!1180 = !DILocation(line: 311, column: 13, scope: !616)
!1181 = !DILocation(line: 312, column: 20, scope: !616)
!1182 = !DILocation(line: 0, scope: !595)
!1183 = !DILocation(line: 0, scope: !622)
!1184 = !DILocation(line: 316, column: 1, scope: !595)
!1185 = distinct !DISubprogram(name: "catAppendOnlyGenericCommand", scope: !3, file: !3, line: 518, type: !1186, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1198)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!476, !476, !6, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !75, line: 622, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !75, line: 614, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1191, file: !75, line: 615, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1191, file: !75, line: 616, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1191, file: !75, line: 617, baseType: !55, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1191, file: !75, line: 620, baseType: !6, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1191, file: !75, line: 621, baseType: !10, size: 64, offset: 64)
!1198 = !{!1199, !1200, !1201, !1202, !1206, !1207, !1208}
!1199 = !DILocalVariable(name: "dst", arg: 1, scope: !1185, file: !3, line: 518, type: !476)
!1200 = !DILocalVariable(name: "argc", arg: 2, scope: !1185, file: !3, line: 518, type: !6)
!1201 = !DILocalVariable(name: "argv", arg: 3, scope: !1185, file: !3, line: 518, type: !1188)
!1202 = !DILocalVariable(name: "buf", scope: !1185, file: !3, line: 519, type: !1203)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 32)
!1206 = !DILocalVariable(name: "len", scope: !1185, file: !3, line: 520, type: !6)
!1207 = !DILocalVariable(name: "j", scope: !1185, file: !3, line: 520, type: !6)
!1208 = !DILocalVariable(name: "o", scope: !1185, file: !3, line: 521, type: !1189)
!1209 = !DILocation(line: 518, column: 37, scope: !1185)
!1210 = !DILocation(line: 518, column: 46, scope: !1185)
!1211 = !DILocation(line: 518, column: 59, scope: !1185)
!1212 = !DILocation(line: 519, column: 5, scope: !1185)
!1213 = !DILocation(line: 519, column: 10, scope: !1185)
!1214 = !DILocation(line: 523, column: 12, scope: !1185)
!1215 = !DILocation(line: 524, column: 26, scope: !1185)
!1216 = !DILocation(line: 524, column: 43, scope: !1185)
!1217 = !DILocation(line: 524, column: 13, scope: !1185)
!1218 = !DILocation(line: 524, column: 12, scope: !1185)
!1219 = !DILocation(line: 520, column: 9, scope: !1185)
!1220 = !DILocation(line: 525, column: 12, scope: !1185)
!1221 = !DILocation(line: 525, column: 5, scope: !1185)
!1222 = !DILocation(line: 525, column: 16, scope: !1185)
!1223 = !DILocation(line: 526, column: 12, scope: !1185)
!1224 = !DILocation(line: 526, column: 5, scope: !1185)
!1225 = !DILocation(line: 526, column: 16, scope: !1185)
!1226 = !DILocation(line: 527, column: 29, scope: !1185)
!1227 = !DILocation(line: 527, column: 11, scope: !1185)
!1228 = !DILocation(line: 520, column: 14, scope: !1185)
!1229 = !DILocation(line: 529, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 529, column: 5)
!1231 = !DILocation(line: 529, column: 19, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 529, column: 5)
!1233 = !DILocation(line: 529, column: 5, scope: !1230)
!1234 = !DILocation(line: 530, column: 30, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 529, column: 32)
!1236 = !{!95, !95, i64 0}
!1237 = !DILocation(line: 530, column: 13, scope: !1235)
!1238 = !DILocation(line: 521, column: 11, scope: !1185)
!1239 = !DILocation(line: 531, column: 16, scope: !1235)
!1240 = !DILocation(line: 532, column: 57, scope: !1235)
!1241 = !{!1242, !95, i64 8}
!1242 = !{!"redisObject", !92, i64 0, !92, i64 0, !92, i64 1, !92, i64 4, !95, i64 8}
!1243 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 532, column: 47, scope: !1235)
!1245 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !1244)
!1246 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !1244)
!1247 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !1244)
!1248 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !1244)
!1249 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !1244)
!1250 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !1244)
!1251 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !1244)
!1252 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !1244)
!1253 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !1244)
!1254 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !1244)
!1255 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !1244)
!1256 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !1244)
!1257 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !1244)
!1258 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !1244)
!1259 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !1244)
!1260 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !1244)
!1261 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !1244)
!1262 = !DILocation(line: 0, scope: !486, inlinedAt: !1244)
!1263 = !DILocation(line: 0, scope: !1235)
!1264 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !1244)
!1265 = !DILocation(line: 532, column: 17, scope: !1235)
!1266 = !DILocation(line: 532, column: 16, scope: !1235)
!1267 = !DILocation(line: 533, column: 16, scope: !1235)
!1268 = !DILocation(line: 533, column: 9, scope: !1235)
!1269 = !DILocation(line: 533, column: 20, scope: !1235)
!1270 = !DILocation(line: 534, column: 16, scope: !1235)
!1271 = !DILocation(line: 534, column: 9, scope: !1235)
!1272 = !DILocation(line: 534, column: 20, scope: !1235)
!1273 = !DILocation(line: 535, column: 33, scope: !1235)
!1274 = !DILocation(line: 535, column: 15, scope: !1235)
!1275 = !DILocation(line: 536, column: 32, scope: !1235)
!1276 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 536, column: 36, scope: !1235)
!1278 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !1277)
!1279 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !1277)
!1280 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !1277)
!1281 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !1277)
!1282 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !1277)
!1283 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !1277)
!1284 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !1277)
!1285 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !1277)
!1286 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !1277)
!1287 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !1277)
!1288 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !1277)
!1289 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !1277)
!1290 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !1277)
!1291 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !1277)
!1292 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !1277)
!1293 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !1277)
!1294 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !1277)
!1295 = !DILocation(line: 0, scope: !486, inlinedAt: !1277)
!1296 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !1277)
!1297 = !DILocation(line: 536, column: 15, scope: !1235)
!1298 = !DILocation(line: 537, column: 15, scope: !1235)
!1299 = !DILocation(line: 538, column: 9, scope: !1235)
!1300 = !DILocation(line: 529, column: 28, scope: !1232)
!1301 = !DILocation(line: 529, column: 5, scope: !1232)
!1302 = distinct !{!1302, !1233, !1303}
!1303 = !DILocation(line: 539, column: 5, scope: !1230)
!1304 = !DILocation(line: 541, column: 1, scope: !1185)
!1305 = !DILocation(line: 540, column: 5, scope: !1185)
!1306 = distinct !DISubprogram(name: "catAppendOnlyExpireAtCommand", scope: !3, file: !3, line: 550, type: !1307, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1519)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!476, !476, !1309, !1189, !1189}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !75, line: 1307, size: 640, elements: !1311)
!1311 = !{!1312, !1313, !1505, !1506, !1507, !1508, !1514, !1515, !1516, !1517, !1518}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1310, file: !75, line: 1308, baseType: !20, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1310, file: !75, line: 1309, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !75, line: 1305, baseType: !1316)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !75, line: 780, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !75, line: 723, size: 135360, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1455, !1456, !1460, !1461, !1477, !1478, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1320, file: !75, line: 724, baseType: !63, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1320, file: !75, line: 725, baseType: !6, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1320, file: !75, line: 726, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !75, line: 656, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !75, line: 647, size: 512, elements: !1328)
!1328 = !{!1329, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1327, file: !75, line: 648, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1332, line: 82, baseType: !1333)
!1332 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1332, line: 76, size: 768, elements: !1334)
!1334 = !{!1335, !1360, !1361, !1389, !1390}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1333, file: !1332, line: 77, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1332, line: 65, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1332, line: 58, size: 384, elements: !1339)
!1339 = !{!1340, !1346, !1350, !1351, !1355, !1359}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1338, file: !1332, line: 59, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!63, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1338, file: !1332, line: 60, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!10, !10, !1344}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1338, file: !1332, line: 61, baseType: !1347, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1338, file: !1332, line: 62, baseType: !1352, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!6, !10, !1344, !1344}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1338, file: !1332, line: 63, baseType: !1356, size: 64, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !10, !10}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1338, file: !1332, line: 64, baseType: !1356, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1333, file: !1332, line: 78, baseType: !10, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1333, file: !1332, line: 79, baseType: !1362, size: 512, offset: 128)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1363, size: 512, elements: !1387)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !1332, line: 74, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !1332, line: 69, size: 256, elements: !1365)
!1365 = !{!1366, !1384, !1385, !1386}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1364, file: !1332, line: 70, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1332, line: 56, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1332, line: 47, size: 192, elements: !1371)
!1371 = !{!1372, !1373, !1382}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1370, file: !1332, line: 48, baseType: !10, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1370, file: !1332, line: 54, baseType: !1374, size: 64, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !1332, line: 49, size: 64, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1381}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1374, file: !1332, line: 50, baseType: !10, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1374, file: !1332, line: 51, baseType: !63, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1374, file: !1332, line: 52, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !30, line: 56, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !32, line: 103, baseType: !15)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1374, file: !1332, line: 53, baseType: !23, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1370, file: !1332, line: 55, baseType: !1383, size: 64, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1364, file: !1332, line: 71, baseType: !17, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !1364, file: !1332, line: 72, baseType: !17, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1364, file: !1332, line: 73, baseType: !17, size: 64, offset: 192)
!1387 = !{!1388}
!1388 = !DISubrange(count: 2)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1333, file: !1332, line: 80, baseType: !15, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !1333, file: !1332, line: 81, baseType: !17, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1327, file: !75, line: 649, baseType: !1330, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1327, file: !75, line: 650, baseType: !1330, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1327, file: !75, line: 651, baseType: !1330, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1327, file: !75, line: 652, baseType: !1330, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1327, file: !75, line: 653, baseType: !6, size: 32, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1327, file: !75, line: 654, baseType: !16, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1327, file: !75, line: 655, baseType: !1398, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !118, line: 54, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !118, line: 47, size: 384, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1408, !1412, !1416}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1400, file: !118, line: 48, baseType: !116, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1400, file: !118, line: 49, baseType: !116, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1400, file: !118, line: 50, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!10, !10}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1400, file: !118, line: 51, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !10}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1400, file: !118, line: 52, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!6, !10, !10}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1400, file: !118, line: 53, baseType: !17, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1320, file: !75, line: 727, baseType: !1189, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1320, file: !75, line: 728, baseType: !476, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1320, file: !75, line: 729, baseType: !600, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1320, file: !75, line: 730, baseType: !476, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1320, file: !75, line: 734, baseType: !600, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1320, file: !75, line: 735, baseType: !6, size: 32, offset: 512)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1320, file: !75, line: 736, baseType: !1188, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1320, file: !75, line: 737, baseType: !1309, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1320, file: !75, line: 737, baseType: !1309, size: 64, offset: 704)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1320, file: !75, line: 738, baseType: !6, size: 32, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1320, file: !75, line: 739, baseType: !6, size: 32, offset: 800)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1320, file: !75, line: 740, baseType: !15, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1320, file: !75, line: 741, baseType: !1398, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1320, file: !75, line: 742, baseType: !22, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1320, file: !75, line: 743, baseType: !600, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1320, file: !75, line: 745, baseType: !79, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1320, file: !75, line: 746, baseType: !79, size: 64, offset: 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1320, file: !75, line: 747, baseType: !79, size: 64, offset: 1216)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !75, line: 748, baseType: !6, size: 32, offset: 1280)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1320, file: !75, line: 749, baseType: !6, size: 32, offset: 1312)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1320, file: !75, line: 750, baseType: !6, size: 32, offset: 1344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1320, file: !75, line: 751, baseType: !6, size: 32, offset: 1376)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1320, file: !75, line: 752, baseType: !6, size: 32, offset: 1408)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1320, file: !75, line: 753, baseType: !1441, size: 64, offset: 1472)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !12, line: 173, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 100, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !14, line: 44, baseType: !15)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1320, file: !75, line: 754, baseType: !1441, size: 64, offset: 1536)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1320, file: !75, line: 755, baseType: !476, size: 64, offset: 1600)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1320, file: !75, line: 756, baseType: !16, size: 64, offset: 1664)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1320, file: !75, line: 757, baseType: !16, size: 64, offset: 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1320, file: !75, line: 758, baseType: !16, size: 64, offset: 1792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1320, file: !75, line: 759, baseType: !16, size: 64, offset: 1856)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1320, file: !75, line: 760, baseType: !16, size: 64, offset: 1920)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1320, file: !75, line: 763, baseType: !1452, size: 328, offset: 1984)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 328, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 41)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1320, file: !75, line: 764, baseType: !6, size: 32, offset: 2336)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1320, file: !75, line: 765, baseType: !1457, size: 368, offset: 2368)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 368, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 46)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1320, file: !75, line: 766, baseType: !6, size: 32, offset: 2752)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1320, file: !75, line: 767, baseType: !1462, size: 256, offset: 2816)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !75, line: 673, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !75, line: 665, size: 256, elements: !1464)
!1464 = !{!1465, !1473, !1474, !1475, !1476}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1463, file: !75, line: 666, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !75, line: 663, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !75, line: 659, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1468, file: !75, line: 660, baseType: !1188, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1468, file: !75, line: 661, baseType: !6, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1468, file: !75, line: 662, baseType: !1309, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1463, file: !75, line: 667, baseType: !6, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1463, file: !75, line: 668, baseType: !6, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1463, file: !75, line: 671, baseType: !6, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1463, file: !75, line: 672, baseType: !79, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1320, file: !75, line: 768, baseType: !6, size: 32, offset: 3072)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1320, file: !75, line: 769, baseType: !1479, size: 704, offset: 3136)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !75, line: 703, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !75, line: 677, size: 704, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1480, file: !75, line: 679, baseType: !74, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1480, file: !75, line: 683, baseType: !1330, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1480, file: !75, line: 685, baseType: !1189, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1480, file: !75, line: 689, baseType: !600, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1480, file: !75, line: 690, baseType: !1189, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1480, file: !75, line: 691, baseType: !1189, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1480, file: !75, line: 692, baseType: !74, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1480, file: !75, line: 692, baseType: !74, size: 64, offset: 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1480, file: !75, line: 693, baseType: !6, size: 32, offset: 512)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1480, file: !75, line: 696, baseType: !6, size: 32, offset: 544)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1480, file: !75, line: 697, baseType: !16, size: 64, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1480, file: !75, line: 700, baseType: !10, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1320, file: !75, line: 770, baseType: !16, size: 64, offset: 3840)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1320, file: !75, line: 771, baseType: !1398, size: 64, offset: 3904)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1320, file: !75, line: 772, baseType: !1330, size: 64, offset: 3968)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1320, file: !75, line: 773, baseType: !1398, size: 64, offset: 4032)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1320, file: !75, line: 774, baseType: !476, size: 64, offset: 4096)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1320, file: !75, line: 775, baseType: !116, size: 64, offset: 4160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1320, file: !75, line: 778, baseType: !6, size: 32, offset: 4224)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1320, file: !75, line: 779, baseType: !1502, size: 131072, offset: 4256)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 131072, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 16384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1310, file: !75, line: 1310, baseType: !6, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1310, file: !75, line: 1311, baseType: !20, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !75, line: 1312, baseType: !6, size: 32, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1310, file: !75, line: 1315, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !75, line: 1306, baseType: !1511)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!1513, !1309, !1188, !6, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1310, file: !75, line: 1317, baseType: !6, size: 32, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1310, file: !75, line: 1318, baseType: !6, size: 32, offset: 416)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1310, file: !75, line: 1319, baseType: !6, size: 32, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1310, file: !75, line: 1320, baseType: !16, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1310, file: !75, line: 1320, baseType: !16, size: 64, offset: 576)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525}
!1520 = !DILocalVariable(name: "buf", arg: 1, scope: !1306, file: !3, line: 550, type: !476)
!1521 = !DILocalVariable(name: "cmd", arg: 2, scope: !1306, file: !3, line: 550, type: !1309)
!1522 = !DILocalVariable(name: "key", arg: 3, scope: !1306, file: !3, line: 550, type: !1189)
!1523 = !DILocalVariable(name: "seconds", arg: 4, scope: !1306, file: !3, line: 550, type: !1189)
!1524 = !DILocalVariable(name: "when", scope: !1306, file: !3, line: 551, type: !16)
!1525 = !DILocalVariable(name: "argv", scope: !1306, file: !3, line: 552, type: !1526)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 192, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 3)
!1529 = !DILocation(line: 550, column: 38, scope: !1306)
!1530 = !DILocation(line: 550, column: 64, scope: !1306)
!1531 = !DILocation(line: 550, column: 75, scope: !1306)
!1532 = !DILocation(line: 550, column: 86, scope: !1306)
!1533 = !DILocation(line: 552, column: 5, scope: !1306)
!1534 = !DILocation(line: 552, column: 11, scope: !1306)
!1535 = !DILocation(line: 555, column: 15, scope: !1306)
!1536 = !DILocation(line: 556, column: 29, scope: !1306)
!1537 = !DILocation(line: 556, column: 12, scope: !1306)
!1538 = !DILocation(line: 551, column: 15, scope: !1306)
!1539 = !DILocation(line: 558, column: 14, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 558, column: 9)
!1541 = !{!1542, !95, i64 8}
!1542 = !{!"redisCommand", !95, i64 0, !95, i64 8, !92, i64 16, !95, i64 24, !92, i64 32, !95, i64 40, !92, i64 48, !92, i64 52, !92, i64 56, !97, i64 64, !97, i64 72}
!1543 = !DILocation(line: 558, column: 19, scope: !1540)
!1544 = !DILocation(line: 558, column: 36, scope: !1540)
!1545 = !DILocation(line: 558, column: 49, scope: !1540)
!1546 = !DILocation(line: 558, column: 65, scope: !1540)
!1547 = !DILocation(line: 559, column: 19, scope: !1540)
!1548 = !DILocation(line: 558, column: 9, scope: !1306)
!1549 = !DILocation(line: 561, column: 14, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 560, column: 5)
!1551 = !DILocation(line: 562, column: 5, scope: !1550)
!1552 = !DILocation(line: 564, column: 36, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 564, column: 9)
!1554 = !DILocation(line: 564, column: 49, scope: !1553)
!1555 = !DILocation(line: 564, column: 67, scope: !1553)
!1556 = !DILocation(line: 565, column: 35, scope: !1553)
!1557 = !DILocation(line: 565, column: 48, scope: !1553)
!1558 = !DILocation(line: 564, column: 9, scope: !1306)
!1559 = !DILocation(line: 567, column: 17, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 566, column: 5)
!1561 = !DILocation(line: 567, column: 14, scope: !1560)
!1562 = !DILocation(line: 568, column: 5, scope: !1560)
!1563 = !DILocation(line: 0, scope: !1550)
!1564 = !DILocation(line: 569, column: 5, scope: !1306)
!1565 = !DILocation(line: 571, column: 15, scope: !1306)
!1566 = !DILocation(line: 571, column: 5, scope: !1306)
!1567 = !DILocation(line: 571, column: 13, scope: !1306)
!1568 = !DILocation(line: 572, column: 5, scope: !1306)
!1569 = !DILocation(line: 572, column: 13, scope: !1306)
!1570 = !DILocation(line: 573, column: 15, scope: !1306)
!1571 = !DILocation(line: 573, column: 5, scope: !1306)
!1572 = !DILocation(line: 573, column: 13, scope: !1306)
!1573 = !DILocation(line: 574, column: 11, scope: !1306)
!1574 = !DILocation(line: 575, column: 5, scope: !1306)
!1575 = !DILocation(line: 576, column: 5, scope: !1306)
!1576 = !DILocation(line: 578, column: 1, scope: !1306)
!1577 = !DILocation(line: 577, column: 5, scope: !1306)
!1578 = distinct !DISubprogram(name: "feedAppendOnlyFile", scope: !3, file: !3, line: 580, type: !1579, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1309, !6, !1188, !6}
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1594, !1599, !1600}
!1582 = !DILocalVariable(name: "cmd", arg: 1, scope: !1578, file: !3, line: 580, type: !1309)
!1583 = !DILocalVariable(name: "dictid", arg: 2, scope: !1578, file: !3, line: 580, type: !6)
!1584 = !DILocalVariable(name: "argv", arg: 3, scope: !1578, file: !3, line: 580, type: !1188)
!1585 = !DILocalVariable(name: "argc", arg: 4, scope: !1578, file: !3, line: 580, type: !6)
!1586 = !DILocalVariable(name: "buf", scope: !1578, file: !3, line: 581, type: !476)
!1587 = !DILocalVariable(name: "tmpargv", scope: !1578, file: !3, line: 582, type: !1526)
!1588 = !DILocalVariable(name: "seldb", scope: !1589, file: !3, line: 587, type: !1591)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 586, column: 43)
!1590 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 586, column: 9)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1592)
!1592 = !{!1593}
!1593 = !DISubrange(count: 64)
!1594 = !DILocalVariable(name: "i", scope: !1595, file: !3, line: 608, type: !6)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 607, column: 53)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 607, column: 16)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 599, column: 16)
!1598 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 595, column: 9)
!1599 = !DILocalVariable(name: "exarg", scope: !1595, file: !3, line: 609, type: !1189)
!1600 = !DILocalVariable(name: "pxarg", scope: !1595, file: !3, line: 609, type: !1189)
!1601 = !DILocation(line: 580, column: 46, scope: !1578)
!1602 = !DILocation(line: 580, column: 55, scope: !1578)
!1603 = !DILocation(line: 580, column: 70, scope: !1578)
!1604 = !DILocation(line: 580, column: 80, scope: !1578)
!1605 = !DILocation(line: 581, column: 15, scope: !1578)
!1606 = !DILocation(line: 581, column: 9, scope: !1578)
!1607 = !DILocation(line: 582, column: 5, scope: !1578)
!1608 = !DILocation(line: 582, column: 11, scope: !1578)
!1609 = !DILocation(line: 586, column: 26, scope: !1590)
!1610 = !DILocation(line: 586, column: 16, scope: !1590)
!1611 = !DILocation(line: 586, column: 9, scope: !1578)
!1612 = !DILocation(line: 587, column: 9, scope: !1589)
!1613 = !DILocation(line: 587, column: 14, scope: !1589)
!1614 = !DILocation(line: 589, column: 9, scope: !1589)
!1615 = !DILocation(line: 591, column: 28, scope: !1589)
!1616 = !DILocation(line: 590, column: 15, scope: !1589)
!1617 = !DILocation(line: 592, column: 32, scope: !1589)
!1618 = !DILocation(line: 593, column: 5, scope: !1590)
!1619 = !DILocation(line: 593, column: 5, scope: !1589)
!1620 = !DILocation(line: 0, scope: !1578)
!1621 = !DILocation(line: 595, column: 14, scope: !1598)
!1622 = !DILocation(line: 595, column: 19, scope: !1598)
!1623 = !DILocation(line: 595, column: 36, scope: !1598)
!1624 = !DILocation(line: 595, column: 49, scope: !1598)
!1625 = !DILocation(line: 595, column: 67, scope: !1598)
!1626 = !DILocation(line: 596, column: 19, scope: !1598)
!1627 = !DILocation(line: 595, column: 9, scope: !1578)
!1628 = !DILocation(line: 598, column: 52, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 596, column: 39)
!1630 = !DILocation(line: 598, column: 60, scope: !1629)
!1631 = !DILocation(line: 598, column: 15, scope: !1629)
!1632 = !DILocation(line: 599, column: 5, scope: !1629)
!1633 = !DILocation(line: 599, column: 26, scope: !1597)
!1634 = !DILocation(line: 599, column: 42, scope: !1597)
!1635 = !DILocation(line: 599, column: 55, scope: !1597)
!1636 = !DILocation(line: 599, column: 16, scope: !1598)
!1637 = !DILocation(line: 601, column: 22, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 599, column: 73)
!1639 = !DILocation(line: 601, column: 9, scope: !1638)
!1640 = !DILocation(line: 601, column: 20, scope: !1638)
!1641 = !DILocation(line: 602, column: 22, scope: !1638)
!1642 = !DILocation(line: 602, column: 9, scope: !1638)
!1643 = !DILocation(line: 602, column: 20, scope: !1638)
!1644 = !DILocation(line: 603, column: 22, scope: !1638)
!1645 = !DILocation(line: 603, column: 9, scope: !1638)
!1646 = !DILocation(line: 603, column: 20, scope: !1638)
!1647 = !DILocation(line: 604, column: 15, scope: !1638)
!1648 = !DILocation(line: 605, column: 9, scope: !1638)
!1649 = !DILocation(line: 606, column: 52, scope: !1638)
!1650 = !DILocation(line: 606, column: 60, scope: !1638)
!1651 = !DILocation(line: 606, column: 15, scope: !1638)
!1652 = !DILocation(line: 607, column: 5, scope: !1638)
!1653 = !DILocation(line: 607, column: 26, scope: !1596)
!1654 = !DILocation(line: 607, column: 48, scope: !1596)
!1655 = !DILocation(line: 607, column: 40, scope: !1596)
!1656 = !DILocation(line: 609, column: 15, scope: !1595)
!1657 = !DILocation(line: 609, column: 30, scope: !1595)
!1658 = !DILocation(line: 611, column: 15, scope: !1595)
!1659 = !DILocation(line: 608, column: 13, scope: !1595)
!1660 = !DILocation(line: 612, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 612, column: 9)
!1662 = !DILocation(line: 612, column: 9, scope: !1661)
!1663 = !DILocation(line: 613, column: 29, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 613, column: 17)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 612, column: 37)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 612, column: 9)
!1667 = !DILocation(line: 613, column: 38, scope: !1664)
!1668 = !DILocation(line: 613, column: 18, scope: !1664)
!1669 = !DILocation(line: 613, column: 17, scope: !1665)
!1670 = !DILocation(line: 613, column: 64, scope: !1664)
!1671 = !DILocation(line: 613, column: 58, scope: !1664)
!1672 = !DILocation(line: 613, column: 50, scope: !1664)
!1673 = !DILocation(line: 0, scope: !1664)
!1674 = !DILocation(line: 614, column: 18, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 614, column: 17)
!1676 = !DILocation(line: 614, column: 17, scope: !1665)
!1677 = !DILocation(line: 0, scope: !1666)
!1678 = !DILocation(line: 614, column: 58, scope: !1675)
!1679 = !DILocation(line: 614, column: 50, scope: !1675)
!1680 = !DILocation(line: 0, scope: !1675)
!1681 = !DILocation(line: 612, column: 9, scope: !1666)
!1682 = !DILocation(line: 612, column: 23, scope: !1666)
!1683 = distinct !{!1683, !1662, !1684}
!1684 = !DILocation(line: 615, column: 9, scope: !1661)
!1685 = !DILocation(line: 616, column: 9, scope: !1595)
!1686 = !DILocation(line: 617, column: 13, scope: !1595)
!1687 = !DILocation(line: 618, column: 59, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 617, column: 13)
!1689 = !{!91, !95, i64 968}
!1690 = !DILocation(line: 618, column: 73, scope: !1688)
!1691 = !DILocation(line: 618, column: 19, scope: !1688)
!1692 = !DILocation(line: 618, column: 13, scope: !1688)
!1693 = !DILocation(line: 0, scope: !1595)
!1694 = !DILocation(line: 620, column: 13, scope: !1595)
!1695 = !DILocation(line: 621, column: 59, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 620, column: 13)
!1697 = !{!91, !95, i64 976}
!1698 = !DILocation(line: 621, column: 74, scope: !1696)
!1699 = !DILocation(line: 621, column: 19, scope: !1696)
!1700 = !DILocation(line: 621, column: 13, scope: !1696)
!1701 = !DILocation(line: 627, column: 15, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 623, column: 12)
!1703 = !DILocation(line: 0, scope: !1702)
!1704 = !DILocation(line: 633, column: 16, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 633, column: 9)
!1706 = !DILocation(line: 633, column: 26, scope: !1705)
!1707 = !DILocation(line: 633, column: 9, scope: !1578)
!1708 = !DILocation(line: 634, column: 43, scope: !1705)
!1709 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 634, column: 55, scope: !1705)
!1711 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !1710)
!1712 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !1710)
!1713 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !1710)
!1714 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !1710)
!1715 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !1710)
!1716 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !1710)
!1717 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !1710)
!1718 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !1710)
!1719 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !1710)
!1720 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !1710)
!1721 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !1710)
!1722 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !1710)
!1723 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !1710)
!1724 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !1710)
!1725 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !1710)
!1726 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !1710)
!1727 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !1710)
!1728 = !DILocation(line: 0, scope: !486, inlinedAt: !1710)
!1729 = !DILocation(line: 0, scope: !1705)
!1730 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !1710)
!1731 = !DILocation(line: 634, column: 26, scope: !1705)
!1732 = !DILocation(line: 634, column: 24, scope: !1705)
!1733 = !DILocation(line: 634, column: 9, scope: !1705)
!1734 = !DILocation(line: 640, column: 16, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 640, column: 9)
!1736 = !DILocation(line: 640, column: 30, scope: !1735)
!1737 = !DILocation(line: 640, column: 9, scope: !1578)
!1738 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 641, column: 52, scope: !1735)
!1740 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !1739)
!1741 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !1739)
!1742 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !1739)
!1743 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !1739)
!1744 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !1739)
!1745 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !1739)
!1746 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !1739)
!1747 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !1739)
!1748 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !1739)
!1749 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !1739)
!1750 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !1739)
!1751 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !1739)
!1752 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !1739)
!1753 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !1739)
!1754 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !1739)
!1755 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !1739)
!1756 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !1739)
!1757 = !DILocation(line: 0, scope: !486, inlinedAt: !1739)
!1758 = !DILocation(line: 0, scope: !1735)
!1759 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !1739)
!1760 = !DILocation(line: 641, column: 9, scope: !1735)
!1761 = !DILocation(line: 643, column: 5, scope: !1578)
!1762 = !DILocation(line: 644, column: 1, scope: !1578)
!1763 = distinct !DISubprogram(name: "createFakeClient", scope: !3, file: !3, line: 652, type: !1764, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1767)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "c", scope: !1763, file: !3, line: 653, type: !1766)
!1769 = !DILocation(line: 653, column: 24, scope: !1763)
!1770 = !DILocation(line: 653, column: 20, scope: !1763)
!1771 = !DILocation(line: 655, column: 5, scope: !1763)
!1772 = !DILocation(line: 656, column: 8, scope: !1763)
!1773 = !DILocation(line: 656, column: 11, scope: !1763)
!1774 = !{!1775, !92, i64 8}
!1775 = !{!"client", !96, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !95, i64 48, !96, i64 56, !92, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !92, i64 96, !92, i64 100, !96, i64 104, !95, i64 112, !97, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !92, i64 160, !92, i64 164, !92, i64 168, !92, i64 172, !92, i64 176, !96, i64 184, !96, i64 192, !95, i64 200, !97, i64 208, !97, i64 216, !97, i64 224, !97, i64 232, !97, i64 240, !93, i64 248, !92, i64 292, !93, i64 296, !92, i64 344, !1776, i64 352, !92, i64 384, !1777, i64 392, !97, i64 480, !95, i64 488, !95, i64 496, !95, i64 504, !95, i64 512, !95, i64 520, !92, i64 528, !93, i64 532}
!1776 = !{!"multiState", !95, i64 0, !92, i64 8, !92, i64 12, !92, i64 16, !96, i64 24}
!1777 = !{!"blockingState", !97, i64 0, !95, i64 8, !95, i64 16, !96, i64 24, !95, i64 32, !95, i64 40, !97, i64 48, !97, i64 56, !92, i64 64, !92, i64 68, !97, i64 72, !95, i64 80}
!1778 = !DILocation(line: 657, column: 8, scope: !1763)
!1779 = !DILocation(line: 657, column: 13, scope: !1763)
!1780 = !{!1775, !95, i64 24}
!1781 = !DILocation(line: 658, column: 19, scope: !1763)
!1782 = !DILocation(line: 658, column: 8, scope: !1763)
!1783 = !DILocation(line: 658, column: 17, scope: !1763)
!1784 = !{!1775, !95, i64 32}
!1785 = !DILocation(line: 659, column: 8, scope: !1763)
!1786 = !DILocation(line: 659, column: 22, scope: !1763)
!1787 = !{!1775, !96, i64 56}
!1788 = !DILocation(line: 660, column: 8, scope: !1763)
!1789 = !DILocation(line: 660, column: 13, scope: !1763)
!1790 = !{!1775, !92, i64 64}
!1791 = !DILocation(line: 661, column: 8, scope: !1763)
!1792 = !DILocation(line: 661, column: 13, scope: !1763)
!1793 = !{!1775, !95, i64 72}
!1794 = !DILocation(line: 662, column: 8, scope: !1763)
!1795 = !DILocation(line: 662, column: 15, scope: !1763)
!1796 = !{!1775, !92, i64 528}
!1797 = !DILocation(line: 663, column: 8, scope: !1763)
!1798 = !DILocation(line: 663, column: 14, scope: !1763)
!1799 = !{!1775, !92, i64 160}
!1800 = !DILocation(line: 664, column: 8, scope: !1763)
!1801 = !DILocation(line: 664, column: 14, scope: !1763)
!1802 = !{!1775, !92, i64 384}
!1803 = !DILocation(line: 667, column: 8, scope: !1763)
!1804 = !DILocation(line: 667, column: 18, scope: !1763)
!1805 = !{!1775, !92, i64 168}
!1806 = !DILocation(line: 668, column: 16, scope: !1763)
!1807 = !DILocation(line: 668, column: 8, scope: !1763)
!1808 = !DILocation(line: 668, column: 14, scope: !1763)
!1809 = !{!1775, !95, i64 112}
!1810 = !DILocation(line: 669, column: 8, scope: !1763)
!1811 = !DILocation(line: 669, column: 20, scope: !1763)
!1812 = !{!1775, !97, i64 120}
!1813 = !DILocation(line: 670, column: 8, scope: !1763)
!1814 = !DILocation(line: 670, column: 37, scope: !1763)
!1815 = !{!1775, !96, i64 152}
!1816 = !DILocation(line: 671, column: 23, scope: !1763)
!1817 = !DILocation(line: 671, column: 8, scope: !1763)
!1818 = !DILocation(line: 671, column: 21, scope: !1763)
!1819 = !{!1775, !95, i64 488}
!1820 = !DILocation(line: 672, column: 8, scope: !1763)
!1821 = !DILocation(line: 672, column: 15, scope: !1763)
!1822 = !{!1775, !95, i64 512}
!1823 = !DILocation(line: 673, column: 5, scope: !1763)
!1824 = !DILocation(line: 674, column: 5, scope: !1763)
!1825 = !{!109, !95, i64 16}
!1826 = !DILocation(line: 675, column: 5, scope: !1763)
!1827 = !DILocation(line: 676, column: 5, scope: !1763)
!1828 = distinct !DISubprogram(name: "freeFakeClientArgv", scope: !3, file: !3, line: 679, type: !1829, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1766}
!1831 = !{!1832, !1833}
!1832 = !DILocalVariable(name: "c", arg: 1, scope: !1828, file: !3, line: 679, type: !1766)
!1833 = !DILocalVariable(name: "j", scope: !1828, file: !3, line: 680, type: !6)
!1834 = !DILocation(line: 679, column: 40, scope: !1828)
!1835 = !DILocation(line: 680, column: 9, scope: !1828)
!1836 = !DILocation(line: 682, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 682, column: 5)
!1838 = !DILocation(line: 682, column: 24, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 682, column: 5)
!1840 = !DILocation(line: 682, column: 19, scope: !1839)
!1841 = !DILocation(line: 0, scope: !1828)
!1842 = !DILocation(line: 682, column: 5, scope: !1837)
!1843 = !DILocation(line: 683, column: 22, scope: !1839)
!1844 = !DILocation(line: 683, column: 9, scope: !1839)
!1845 = !DILocation(line: 682, column: 31, scope: !1839)
!1846 = !DILocation(line: 682, column: 5, scope: !1839)
!1847 = distinct !{!1847, !1842, !1848}
!1848 = !DILocation(line: 683, column: 32, scope: !1837)
!1849 = !DILocation(line: 684, column: 11, scope: !1828)
!1850 = !DILocation(line: 684, column: 5, scope: !1828)
!1851 = !DILocation(line: 685, column: 1, scope: !1828)
!1852 = distinct !DISubprogram(name: "freeFakeClient", scope: !3, file: !3, line: 687, type: !1829, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "c", arg: 1, scope: !1852, file: !3, line: 687, type: !1766)
!1855 = !DILocation(line: 687, column: 36, scope: !1852)
!1856 = !DILocation(line: 688, column: 16, scope: !1852)
!1857 = !DILocation(line: 688, column: 5, scope: !1852)
!1858 = !DILocation(line: 689, column: 20, scope: !1852)
!1859 = !DILocation(line: 689, column: 5, scope: !1852)
!1860 = !DILocation(line: 690, column: 20, scope: !1852)
!1861 = !DILocation(line: 690, column: 5, scope: !1852)
!1862 = !DILocation(line: 691, column: 5, scope: !1852)
!1863 = !DILocation(line: 692, column: 11, scope: !1852)
!1864 = !DILocation(line: 692, column: 5, scope: !1852)
!1865 = !DILocation(line: 693, column: 1, scope: !1852)
!1866 = distinct !DISubprogram(name: "loadAppendOnlyFile", scope: !3, file: !3, line: 698, type: !1867, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!6, !20}
!1869 = !{!1870, !1871, !1872, !2072, !2109, !2110, !2111, !2112, !2113, !2117, !2170, !2172, !2173, !2174, !2175, !2179, !2180}
!1870 = !DILocalVariable(name: "filename", arg: 1, scope: !1866, file: !3, line: 698, type: !20)
!1871 = !DILocalVariable(name: "fakeClient", scope: !1866, file: !3, line: 699, type: !1766)
!1872 = !DILocalVariable(name: "fp", scope: !1866, file: !3, line: 700, type: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1875, line: 66, baseType: !1876)
!1875 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1877, line: 287, baseType: !1878)
!1877 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1877, line: 181, size: 1408, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1885, !1886, !1891, !1892, !1893, !2042, !2046, !2051, !2055, !2056, !2057, !2058, !2060, !2062, !2063, !2064, !2065, !2066, !2070, !2071}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1878, file: !1877, line: 182, baseType: !18, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1878, file: !1877, line: 183, baseType: !6, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1878, file: !1877, line: 184, baseType: !6, size: 32, offset: 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1878, file: !1877, line: 185, baseType: !1884, size: 16, offset: 128)
!1884 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1878, file: !1877, line: 186, baseType: !1884, size: 16, offset: 144)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1878, file: !1877, line: 187, baseType: !1887, size: 128, offset: 192)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1877, line: 117, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1887, file: !1877, line: 118, baseType: !18, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1887, file: !1877, line: 119, baseType: !6, size: 32, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1878, file: !1877, line: 188, baseType: !6, size: 32, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1878, file: !1877, line: 195, baseType: !10, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1878, file: !1877, line: 197, baseType: !1894, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!13, !1897, !10, !20, !6}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !1877, line: 569, size: 14912, elements: !1899)
!1899 = !{!1900, !1901, !1903, !1904, !1905, !1906, !1910, !1911, !1914, !1915, !1919, !1933, !1934, !1935, !1937, !1938, !1939, !2012, !2029, !2030, !2033, !2040}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1898, file: !1877, line: 571, baseType: !6, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1898, file: !1877, line: 576, baseType: !1902, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1898, file: !1877, line: 576, baseType: !1902, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1898, file: !1877, line: 576, baseType: !1902, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1898, file: !1877, line: 578, baseType: !6, size: 32, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1898, file: !1877, line: 579, baseType: !1907, size: 200, offset: 288)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 200, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 25)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1898, file: !1877, line: 582, baseType: !6, size: 32, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1898, file: !1877, line: 583, baseType: !1912, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !1877, line: 40, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1898, file: !1877, line: 585, baseType: !6, size: 32, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1898, file: !1877, line: 587, baseType: !1916, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1897}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1898, file: !1877, line: 590, baseType: !1920, size: 64, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !1877, line: 47, size: 256, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1921, file: !1877, line: 49, baseType: !1920, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1921, file: !1877, line: 50, baseType: !6, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1921, file: !1877, line: 50, baseType: !6, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1921, file: !1877, line: 50, baseType: !6, size: 32, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1921, file: !1877, line: 50, baseType: !6, size: 32, offset: 160)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1921, file: !1877, line: 51, baseType: !1929, size: 32, offset: 192)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1930, size: 32, elements: !1931)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !1877, line: 25, baseType: !55)
!1931 = !{!1932}
!1932 = !DISubrange(count: 1)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1898, file: !1877, line: 591, baseType: !6, size: 32, offset: 832)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1898, file: !1877, line: 592, baseType: !1920, size: 64, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1898, file: !1877, line: 593, baseType: !1936, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1898, file: !1877, line: 596, baseType: !6, size: 32, offset: 1024)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1898, file: !1877, line: 597, baseType: !20, size: 64, offset: 1088)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !1898, file: !1877, line: 632, baseType: !1940, size: 2880, offset: 1152)
!1940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1898, file: !1877, line: 599, size: 2880, elements: !1941)
!1941 = !{!1942, !2003}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1940, file: !1877, line: 622, baseType: !1943, size: 1728)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1877, line: 601, size: 1728, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1951, !1963, !1964, !1965, !1972, !1986, !1987, !1988, !1992, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1943, file: !1877, line: 603, baseType: !55, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1943, file: !1877, line: 604, baseType: !20, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1943, file: !1877, line: 605, baseType: !1948, size: 208, offset: 128)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 208, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 26)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1943, file: !1877, line: 606, baseType: !1952, size: 288, offset: 352)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !1877, line: 55, size: 288, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1952, file: !1877, line: 57, baseType: !6, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1952, file: !1877, line: 58, baseType: !6, size: 32, offset: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1952, file: !1877, line: 59, baseType: !6, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1952, file: !1877, line: 60, baseType: !6, size: 32, offset: 96)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1952, file: !1877, line: 61, baseType: !6, size: 32, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1952, file: !1877, line: 62, baseType: !6, size: 32, offset: 160)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1952, file: !1877, line: 63, baseType: !6, size: 32, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1952, file: !1877, line: 64, baseType: !6, size: 32, offset: 224)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1952, file: !1877, line: 65, baseType: !6, size: 32, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1943, file: !1877, line: 607, baseType: !6, size: 32, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1943, file: !1877, line: 608, baseType: !22, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1943, file: !1877, line: 609, baseType: !1966, size: 112, offset: 768)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !1877, line: 319, size: 112, elements: !1967)
!1967 = !{!1968, !1970, !1971}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1966, file: !1877, line: 320, baseType: !1969, size: 48)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !1527)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1966, file: !1877, line: 321, baseType: !1969, size: 48, offset: 48)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1966, file: !1877, line: 322, baseType: !45, size: 16, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1943, file: !1877, line: 610, baseType: !1973, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !14, line: 171, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 163, size: 64, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1974, file: !14, line: 165, baseType: !6, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1974, file: !14, line: 170, baseType: !1978, size: 32, offset: 32)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !14, line: 166, size: 32, elements: !1979)
!1979 = !{!1980, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1978, file: !14, line: 168, baseType: !1981, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !474, line: 124, baseType: !55)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1978, file: !14, line: 169, baseType: !1983, size: 32)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 4)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1943, file: !1877, line: 611, baseType: !1973, size: 64, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1943, file: !1877, line: 612, baseType: !1973, size: 64, offset: 1024)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1943, file: !1877, line: 613, baseType: !1989, size: 64, offset: 1088)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1990)
!1990 = !{!1991}
!1991 = !DISubrange(count: 8)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1943, file: !1877, line: 614, baseType: !1993, size: 192, offset: 1152)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !1994)
!1994 = !{!1995}
!1995 = !DISubrange(count: 24)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1943, file: !1877, line: 615, baseType: !6, size: 32, offset: 1344)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1943, file: !1877, line: 616, baseType: !1973, size: 64, offset: 1376)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1943, file: !1877, line: 617, baseType: !1973, size: 64, offset: 1440)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1943, file: !1877, line: 618, baseType: !1973, size: 64, offset: 1504)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1943, file: !1877, line: 619, baseType: !1973, size: 64, offset: 1568)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1943, file: !1877, line: 620, baseType: !1973, size: 64, offset: 1632)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1943, file: !1877, line: 621, baseType: !6, size: 32, offset: 1696)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1940, file: !1877, line: 631, baseType: !2004, size: 2880)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1940, file: !1877, line: 626, size: 2880, elements: !2005)
!2005 = !{!2006, !2010}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !2004, file: !1877, line: 629, baseType: !2007, size: 1920)
!2007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !2008)
!2008 = !{!2009}
!2009 = !DISubrange(count: 30)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !2004, file: !1877, line: 630, baseType: !2011, size: 960, offset: 1920)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 960, elements: !2008)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1898, file: !1877, line: 636, baseType: !2013, size: 64, offset: 4032)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !1877, line: 93, size: 6336, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2021}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2014, file: !1877, line: 94, baseType: !2013, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !2014, file: !1877, line: 95, baseType: !6, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !2014, file: !1877, line: 97, baseType: !2019, size: 2048, offset: 128)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 2048, elements: !1204)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !2014, file: !1877, line: 98, baseType: !2022, size: 4160, offset: 2176)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !1877, line: 74, size: 4160, elements: !2023)
!2023 = !{!2024, !2026, !2027, !2028}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !2022, file: !1877, line: 75, baseType: !2025, size: 2048)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !1204)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !2022, file: !1877, line: 76, baseType: !2025, size: 2048, offset: 2048)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !2022, file: !1877, line: 78, baseType: !1930, size: 32, offset: 4096)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !2022, file: !1877, line: 81, baseType: !1930, size: 32, offset: 4128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1898, file: !1877, line: 637, baseType: !2014, size: 6336, offset: 4096)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1898, file: !1877, line: 641, baseType: !2031, size: 64, offset: 10432)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1898, file: !1877, line: 646, baseType: !2034, size: 192, offset: 10496)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !1877, line: 291, size: 192, elements: !2035)
!2035 = !{!2036, !2038, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2034, file: !1877, line: 293, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !2034, file: !1877, line: 294, baseType: !6, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !2034, file: !1877, line: 295, baseType: !1902, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1898, file: !1877, line: 648, baseType: !2041, size: 4224, offset: 10688)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1876, size: 4224, elements: !1527)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1878, file: !1877, line: 199, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!13, !1897, !10, !598, !6}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1878, file: !1877, line: 202, baseType: !2047, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2050, !1897, !10, !2050, !6}
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !14, line: 114, baseType: !15)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1878, file: !1877, line: 203, baseType: !2052, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!6, !1897, !10}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1878, file: !1877, line: 206, baseType: !1887, size: 128, offset: 704)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !1878, file: !1877, line: 207, baseType: !18, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1878, file: !1877, line: 208, baseType: !6, size: 32, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1878, file: !1877, line: 211, baseType: !2059, size: 24, offset: 928)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !1527)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1878, file: !1877, line: 212, baseType: !2061, size: 8, offset: 952)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !1931)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1878, file: !1877, line: 215, baseType: !1887, size: 128, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1878, file: !1877, line: 218, baseType: !6, size: 32, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1878, file: !1877, line: 219, baseType: !1443, size: 64, offset: 1152)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1878, file: !1877, line: 222, baseType: !1897, size: 64, offset: 1216)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1878, file: !1877, line: 226, baseType: !2067, size: 32, offset: 1280)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !14, line: 175, baseType: !2068)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2069, line: 12, baseType: !6)
!2069 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !1878, file: !1877, line: 228, baseType: !1973, size: 64, offset: 1312)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1878, file: !1877, line: 229, baseType: !6, size: 32, offset: 1376)
!2072 = !DILocalVariable(name: "sb", scope: !1866, file: !3, line: 701, type: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2074, line: 27, size: 704, elements: !2075)
!2074 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2075 = !{!2076, !2079, !2082, !2085, !2088, !2091, !2094, !2095, !2096, !2101, !2102, !2103, !2106}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2073, file: !2074, line: 29, baseType: !2077, size: 16)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 177, baseType: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !14, line: 54, baseType: !1884)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2073, file: !2074, line: 30, baseType: !2080, size: 16, offset: 16)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !12, line: 155, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !14, line: 73, baseType: !45)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2073, file: !2074, line: 31, baseType: !2083, size: 32, offset: 32)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !12, line: 205, baseType: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !14, line: 88, baseType: !54)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2073, file: !2074, line: 32, baseType: !2086, size: 16, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !12, line: 210, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !14, line: 210, baseType: !45)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2073, file: !2074, line: 33, baseType: !2089, size: 16, offset: 80)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 181, baseType: !2090)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !14, line: 58, baseType: !45)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2073, file: !2074, line: 34, baseType: !2092, size: 16, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 185, baseType: !2093)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !14, line: 61, baseType: !45)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2073, file: !2074, line: 35, baseType: !2077, size: 16, offset: 112)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2073, file: !2074, line: 36, baseType: !1441, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2073, file: !2074, line: 37, baseType: !2097, size: 128, offset: 192)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !80, line: 52, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2097, file: !80, line: 53, baseType: !79, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2097, file: !80, line: 54, baseType: !15, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2073, file: !2074, line: 38, baseType: !2097, size: 128, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2073, file: !2074, line: 39, baseType: !2097, size: 128, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2073, file: !2074, line: 40, baseType: !2104, size: 64, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !12, line: 118, baseType: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !14, line: 32, baseType: !15)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2073, file: !2074, line: 41, baseType: !2107, size: 64, offset: 640)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 113, baseType: !2108)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !14, line: 28, baseType: !15)
!2109 = !DILocalVariable(name: "old_aof_state", scope: !1866, file: !3, line: 702, type: !6)
!2110 = !DILocalVariable(name: "loops", scope: !1866, file: !3, line: 703, type: !15)
!2111 = !DILocalVariable(name: "valid_up_to", scope: !1866, file: !3, line: 704, type: !1441)
!2112 = !DILocalVariable(name: "valid_before_multi", scope: !1866, file: !3, line: 705, type: !1441)
!2113 = !DILocalVariable(name: "sig", scope: !1866, file: !3, line: 732, type: !2114)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 5)
!2117 = !DILocalVariable(name: "rdb", scope: !2118, file: !3, line: 738, type: !2120)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 736, column: 12)
!2119 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 733, column: 9)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2121, line: 87, baseType: !2122)
!2121 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2121, line: 39, size: 832, elements: !2123)
!2123 = !{!2124, !2129, !2133, !2137, !2141, !2145, !2146, !2147, !2148}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2122, file: !2121, line: 43, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!473, !2128, !10, !473}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2122, file: !2121, line: 44, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!473, !2128, !1344, !473}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2122, file: !2121, line: 45, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!1441, !2128}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2122, file: !2121, line: 46, baseType: !2138, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!6, !2128}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2122, file: !2121, line: 52, baseType: !2142, size: 64, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !2128, !1344, !473}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2122, file: !2121, line: 55, baseType: !63, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2122, file: !2121, line: 58, baseType: !473, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2122, file: !2121, line: 61, baseType: !473, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2122, file: !2121, line: 84, baseType: !2149, size: 320, offset: 512)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2122, file: !2121, line: 64, size: 320, elements: !2150)
!2150 = !{!2151, !2156, !2162}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2149, file: !2121, line: 69, baseType: !2152, size: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2121, line: 66, size: 128, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2152, file: !2121, line: 67, baseType: !476, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2152, file: !2121, line: 68, baseType: !1441, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2149, file: !2121, line: 75, baseType: !2157, size: 192)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2121, line: 71, size: 192, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2157, file: !2121, line: 72, baseType: !1873, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2157, file: !2121, line: 73, baseType: !1441, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2157, file: !2121, line: 74, baseType: !1441, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2149, file: !2121, line: 83, baseType: !2163, size: 320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2121, line: 77, size: 320, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2163, file: !2121, line: 78, baseType: !1513, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2163, file: !2121, line: 79, baseType: !1513, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2163, file: !2121, line: 80, baseType: !6, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2163, file: !2121, line: 81, baseType: !1441, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2163, file: !2121, line: 82, baseType: !476, size: 64, offset: 256)
!2170 = !DILocalVariable(name: "argc", scope: !2171, file: !3, line: 753, type: !6)
!2171 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 752, column: 14)
!2172 = !DILocalVariable(name: "j", scope: !2171, file: !3, line: 753, type: !6)
!2173 = !DILocalVariable(name: "len", scope: !2171, file: !3, line: 754, type: !17)
!2174 = !DILocalVariable(name: "argv", scope: !2171, file: !3, line: 755, type: !1188)
!2175 = !DILocalVariable(name: "buf", scope: !2171, file: !3, line: 756, type: !2176)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !2177)
!2177 = !{!2178}
!2178 = !DISubrange(count: 128)
!2179 = !DILocalVariable(name: "argsds", scope: !2171, file: !3, line: 757, type: !476)
!2180 = !DILocalVariable(name: "cmd", scope: !2171, file: !3, line: 758, type: !1309)
!2181 = !DILocation(line: 698, column: 30, scope: !1866)
!2182 = !DILocation(line: 700, column: 16, scope: !1866)
!2183 = !DILocation(line: 700, column: 11, scope: !1866)
!2184 = !DILocation(line: 701, column: 5, scope: !1866)
!2185 = !DILocation(line: 702, column: 32, scope: !1866)
!2186 = !DILocation(line: 702, column: 9, scope: !1866)
!2187 = !DILocation(line: 703, column: 10, scope: !1866)
!2188 = !DILocation(line: 704, column: 11, scope: !1866)
!2189 = !DILocation(line: 705, column: 11, scope: !1866)
!2190 = !DILocation(line: 707, column: 12, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 707, column: 9)
!2192 = !DILocation(line: 707, column: 9, scope: !1866)
!2193 = !DILocation(line: 708, column: 101, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 707, column: 21)
!2195 = !DILocation(line: 708, column: 92, scope: !2194)
!2196 = !DILocation(line: 708, column: 9, scope: !2194)
!2197 = !DILocation(line: 709, column: 9, scope: !2194)
!2198 = !DILocation(line: 716, column: 12, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 716, column: 9)
!2200 = !DILocation(line: 716, column: 27, scope: !2199)
!2201 = !DILocation(line: 701, column: 23, scope: !1866)
!2202 = !DILocation(line: 716, column: 15, scope: !2199)
!2203 = !DILocation(line: 716, column: 43, scope: !2199)
!2204 = !DILocation(line: 716, column: 49, scope: !2199)
!2205 = !DILocation(line: 716, column: 55, scope: !2199)
!2206 = !{!2207, !96, i64 16}
!2207 = !{!"stat", !494, i64 0, !494, i64 2, !92, i64 4, !494, i64 8, !494, i64 10, !494, i64 12, !494, i64 14, !96, i64 16, !2208, i64 24, !2208, i64 40, !2208, i64 56, !96, i64 72, !96, i64 80}
!2208 = !{!"timespec", !96, i64 0, !96, i64 8}
!2209 = !DILocation(line: 716, column: 63, scope: !2199)
!2210 = !DILocation(line: 716, column: 9, scope: !1866)
!2211 = !DILocation(line: 717, column: 33, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 716, column: 69)
!2213 = !DILocation(line: 719, column: 9, scope: !2212)
!2214 = !DILocation(line: 720, column: 9, scope: !2212)
!2215 = !DILocation(line: 725, column: 22, scope: !1866)
!2216 = !DILocation(line: 653, column: 24, scope: !1763, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 727, column: 18, scope: !1866)
!2218 = !DILocation(line: 653, column: 20, scope: !1763, inlinedAt: !2217)
!2219 = !DILocation(line: 655, column: 5, scope: !1763, inlinedAt: !2217)
!2220 = !DILocation(line: 656, column: 8, scope: !1763, inlinedAt: !2217)
!2221 = !DILocation(line: 656, column: 11, scope: !1763, inlinedAt: !2217)
!2222 = !DILocation(line: 657, column: 8, scope: !1763, inlinedAt: !2217)
!2223 = !DILocation(line: 657, column: 13, scope: !1763, inlinedAt: !2217)
!2224 = !DILocation(line: 658, column: 19, scope: !1763, inlinedAt: !2217)
!2225 = !DILocation(line: 658, column: 8, scope: !1763, inlinedAt: !2217)
!2226 = !DILocation(line: 658, column: 17, scope: !1763, inlinedAt: !2217)
!2227 = !DILocation(line: 659, column: 8, scope: !1763, inlinedAt: !2217)
!2228 = !DILocation(line: 659, column: 22, scope: !1763, inlinedAt: !2217)
!2229 = !DILocation(line: 660, column: 8, scope: !1763, inlinedAt: !2217)
!2230 = !DILocation(line: 660, column: 13, scope: !1763, inlinedAt: !2217)
!2231 = !DILocation(line: 661, column: 8, scope: !1763, inlinedAt: !2217)
!2232 = !DILocation(line: 661, column: 13, scope: !1763, inlinedAt: !2217)
!2233 = !DILocation(line: 662, column: 8, scope: !1763, inlinedAt: !2217)
!2234 = !DILocation(line: 662, column: 15, scope: !1763, inlinedAt: !2217)
!2235 = !DILocation(line: 663, column: 8, scope: !1763, inlinedAt: !2217)
!2236 = !DILocation(line: 663, column: 14, scope: !1763, inlinedAt: !2217)
!2237 = !DILocation(line: 664, column: 8, scope: !1763, inlinedAt: !2217)
!2238 = !DILocation(line: 664, column: 14, scope: !1763, inlinedAt: !2217)
!2239 = !DILocation(line: 667, column: 8, scope: !1763, inlinedAt: !2217)
!2240 = !DILocation(line: 667, column: 18, scope: !1763, inlinedAt: !2217)
!2241 = !DILocation(line: 668, column: 16, scope: !1763, inlinedAt: !2217)
!2242 = !DILocation(line: 668, column: 8, scope: !1763, inlinedAt: !2217)
!2243 = !DILocation(line: 668, column: 14, scope: !1763, inlinedAt: !2217)
!2244 = !DILocation(line: 669, column: 8, scope: !1763, inlinedAt: !2217)
!2245 = !DILocation(line: 669, column: 20, scope: !1763, inlinedAt: !2217)
!2246 = !DILocation(line: 670, column: 8, scope: !1763, inlinedAt: !2217)
!2247 = !DILocation(line: 670, column: 37, scope: !1763, inlinedAt: !2217)
!2248 = !DILocation(line: 671, column: 23, scope: !1763, inlinedAt: !2217)
!2249 = !DILocation(line: 671, column: 8, scope: !1763, inlinedAt: !2217)
!2250 = !DILocation(line: 671, column: 21, scope: !1763, inlinedAt: !2217)
!2251 = !DILocation(line: 672, column: 8, scope: !1763, inlinedAt: !2217)
!2252 = !DILocation(line: 672, column: 15, scope: !1763, inlinedAt: !2217)
!2253 = !DILocation(line: 673, column: 5, scope: !1763, inlinedAt: !2217)
!2254 = !DILocation(line: 674, column: 5, scope: !1763, inlinedAt: !2217)
!2255 = !DILocation(line: 675, column: 5, scope: !1763, inlinedAt: !2217)
!2256 = !DILocation(line: 676, column: 5, scope: !1763, inlinedAt: !2217)
!2257 = !DILocation(line: 699, column: 20, scope: !1866)
!2258 = !DILocation(line: 728, column: 5, scope: !1866)
!2259 = !DILocation(line: 732, column: 5, scope: !1866)
!2260 = !DILocation(line: 732, column: 10, scope: !1866)
!2261 = !DILocation(line: 733, column: 9, scope: !2119)
!2262 = !DILocation(line: 733, column: 27, scope: !2119)
!2263 = !DILocation(line: 733, column: 32, scope: !2119)
!2264 = !DILocation(line: 733, column: 35, scope: !2119)
!2265 = !DILocation(line: 733, column: 57, scope: !2119)
!2266 = !DILocation(line: 733, column: 9, scope: !1866)
!2267 = !DILocation(line: 735, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 735, column: 13)
!2269 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 733, column: 63)
!2270 = !DILocation(line: 735, column: 34, scope: !2268)
!2271 = !DILocation(line: 735, column: 13, scope: !2269)
!2272 = !DILocation(line: 738, column: 9, scope: !2118)
!2273 = !DILocation(line: 740, column: 9, scope: !2118)
!2274 = !DILocation(line: 741, column: 13, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 741, column: 13)
!2276 = !DILocation(line: 741, column: 34, scope: !2275)
!2277 = !DILocation(line: 741, column: 13, scope: !2118)
!2278 = !DILocation(line: 738, column: 13, scope: !2118)
!2279 = !DILocation(line: 742, column: 9, scope: !2118)
!2280 = !DILocation(line: 743, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 743, column: 13)
!2282 = !DILocation(line: 743, column: 37, scope: !2281)
!2283 = !DILocation(line: 743, column: 13, scope: !2118)
!2284 = !DILocation(line: 744, column: 13, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 743, column: 46)
!2286 = !DILocation(line: 745, column: 13, scope: !2285)
!2287 = !DILocation(line: 0, scope: !2285)
!2288 = !DILocation(line: 749, column: 5, scope: !2119)
!2289 = !DILocation(line: 747, column: 13, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 746, column: 16)
!2291 = !DILocation(line: 752, column: 5, scope: !1866)
!2292 = !DILocation(line: 0, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 761, column: 13)
!2294 = !DILocation(line: 756, column: 9, scope: !2171)
!2295 = !DILocation(line: 756, column: 14, scope: !2171)
!2296 = !DILocation(line: 761, column: 20, scope: !2293)
!2297 = !DILocation(line: 761, column: 23, scope: !2293)
!2298 = !DILocation(line: 761, column: 13, scope: !2171)
!2299 = !DILocation(line: 762, column: 29, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 761, column: 32)
!2301 = !DILocation(line: 762, column: 13, scope: !2300)
!2302 = !DILocation(line: 763, column: 13, scope: !2300)
!2303 = !DILocation(line: 764, column: 9, scope: !2300)
!2304 = !DILocation(line: 766, column: 13, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 766, column: 13)
!2306 = !DILocation(line: 766, column: 39, scope: !2305)
!2307 = !DILocation(line: 766, column: 13, scope: !2171)
!2308 = !DILocation(line: 767, column: 17, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 767, column: 17)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 766, column: 48)
!2311 = !{!2312, !494, i64 16}
!2312 = !{!"__sFILE", !95, i64 0, !92, i64 8, !92, i64 12, !494, i64 16, !494, i64 18, !2313, i64 24, !92, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !2313, i64 88, !95, i64 104, !92, i64 112, !93, i64 116, !93, i64 119, !2313, i64 120, !92, i64 136, !96, i64 144, !95, i64 152, !92, i64 160, !2314, i64 164, !92, i64 172}
!2313 = !{!"__sbuf", !95, i64 0, !92, i64 8}
!2314 = !{!"", !92, i64 0, !93, i64 4}
!2315 = !DILocation(line: 767, column: 17, scope: !2310)
!2316 = !DILocation(line: 0, scope: !2309)
!2317 = !DILocation(line: 770, column: 17, scope: !2309)
!2318 = !DILocation(line: 772, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 772, column: 13)
!2320 = !DILocation(line: 772, column: 20, scope: !2319)
!2321 = !DILocation(line: 772, column: 13, scope: !2171)
!2322 = !DILocation(line: 773, column: 13, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 773, column: 13)
!2324 = !DILocation(line: 773, column: 20, scope: !2323)
!2325 = !DILocation(line: 773, column: 13, scope: !2171)
!2326 = !DILocation(line: 774, column: 16, scope: !2171)
!2327 = !DILocation(line: 753, column: 13, scope: !2171)
!2328 = !DILocation(line: 775, column: 18, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 775, column: 13)
!2330 = !DILocation(line: 775, column: 13, scope: !2171)
!2331 = !DILocation(line: 777, column: 38, scope: !2171)
!2332 = !DILocation(line: 777, column: 37, scope: !2171)
!2333 = !DILocation(line: 777, column: 16, scope: !2171)
!2334 = !DILocation(line: 755, column: 16, scope: !2171)
!2335 = !DILocation(line: 778, column: 26, scope: !2171)
!2336 = !DILocation(line: 779, column: 26, scope: !2171)
!2337 = !DILocation(line: 753, column: 19, scope: !2171)
!2338 = !DILocation(line: 781, column: 14, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 781, column: 9)
!2340 = !DILocation(line: 781, column: 9, scope: !2339)
!2341 = !DILocation(line: 782, column: 17, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 782, column: 17)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 781, column: 36)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 781, column: 9)
!2345 = !DILocation(line: 782, column: 43, scope: !2342)
!2346 = !DILocation(line: 782, column: 17, scope: !2343)
!2347 = !DILocation(line: 783, column: 34, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 782, column: 52)
!2349 = !DILocation(line: 679, column: 40, scope: !1828, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 784, column: 17, scope: !2348)
!2351 = !DILocation(line: 680, column: 9, scope: !1828, inlinedAt: !2350)
!2352 = !DILocation(line: 682, column: 10, scope: !1837, inlinedAt: !2350)
!2353 = !DILocation(line: 682, column: 19, scope: !1839, inlinedAt: !2350)
!2354 = !DILocation(line: 0, scope: !1828, inlinedAt: !2350)
!2355 = !DILocation(line: 682, column: 5, scope: !1837, inlinedAt: !2350)
!2356 = !DILocation(line: 683, column: 22, scope: !1839, inlinedAt: !2350)
!2357 = !DILocation(line: 683, column: 9, scope: !1839, inlinedAt: !2350)
!2358 = !DILocation(line: 682, column: 31, scope: !1839, inlinedAt: !2350)
!2359 = !DILocation(line: 682, column: 5, scope: !1839, inlinedAt: !2350)
!2360 = !DILocation(line: 682, column: 24, scope: !1839, inlinedAt: !2350)
!2361 = !DILocation(line: 684, column: 11, scope: !1828, inlinedAt: !2350)
!2362 = !DILocation(line: 684, column: 5, scope: !1828, inlinedAt: !2350)
!2363 = !DILocation(line: 785, column: 17, scope: !2348)
!2364 = !DILocation(line: 787, column: 17, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 787, column: 17)
!2366 = !DILocation(line: 787, column: 24, scope: !2365)
!2367 = !DILocation(line: 787, column: 17, scope: !2343)
!2368 = !DILocation(line: 788, column: 19, scope: !2343)
!2369 = !DILocation(line: 754, column: 23, scope: !2171)
!2370 = !DILocation(line: 789, column: 32, scope: !2343)
!2371 = !DILocation(line: 789, column: 22, scope: !2343)
!2372 = !DILocation(line: 757, column: 13, scope: !2171)
!2373 = !DILocation(line: 790, column: 17, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 790, column: 17)
!2375 = !DILocation(line: 790, column: 21, scope: !2374)
!2376 = !DILocation(line: 790, column: 24, scope: !2374)
!2377 = !DILocation(line: 790, column: 47, scope: !2374)
!2378 = !DILocation(line: 790, column: 17, scope: !2343)
!2379 = !DILocation(line: 791, column: 17, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 790, column: 53)
!2381 = !DILocation(line: 792, column: 34, scope: !2380)
!2382 = !DILocation(line: 679, column: 40, scope: !1828, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 793, column: 17, scope: !2380)
!2384 = !DILocation(line: 680, column: 9, scope: !1828, inlinedAt: !2383)
!2385 = !DILocation(line: 682, column: 10, scope: !1837, inlinedAt: !2383)
!2386 = !DILocation(line: 682, column: 19, scope: !1839, inlinedAt: !2383)
!2387 = !DILocation(line: 0, scope: !1828, inlinedAt: !2383)
!2388 = !DILocation(line: 682, column: 5, scope: !1837, inlinedAt: !2383)
!2389 = !DILocation(line: 683, column: 22, scope: !1839, inlinedAt: !2383)
!2390 = !DILocation(line: 683, column: 9, scope: !1839, inlinedAt: !2383)
!2391 = !DILocation(line: 682, column: 31, scope: !1839, inlinedAt: !2383)
!2392 = !DILocation(line: 682, column: 5, scope: !1839, inlinedAt: !2383)
!2393 = !DILocation(line: 682, column: 24, scope: !1839, inlinedAt: !2383)
!2394 = !DILocation(line: 684, column: 11, scope: !1828, inlinedAt: !2383)
!2395 = !DILocation(line: 684, column: 5, scope: !1828, inlinedAt: !2383)
!2396 = !DILocation(line: 794, column: 17, scope: !2380)
!2397 = !DILocation(line: 796, column: 23, scope: !2343)
!2398 = !DILocation(line: 796, column: 13, scope: !2343)
!2399 = !DILocation(line: 796, column: 21, scope: !2343)
!2400 = !DILocation(line: 797, column: 17, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 797, column: 17)
!2402 = !DILocation(line: 797, column: 35, scope: !2401)
!2403 = !DILocation(line: 0, scope: !2344)
!2404 = !DILocation(line: 797, column: 17, scope: !2343)
!2405 = !DILocation(line: 798, column: 34, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 797, column: 41)
!2407 = !DILocation(line: 679, column: 40, scope: !1828, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 799, column: 17, scope: !2406)
!2409 = !DILocation(line: 680, column: 9, scope: !1828, inlinedAt: !2408)
!2410 = !DILocation(line: 682, column: 10, scope: !1837, inlinedAt: !2408)
!2411 = !DILocation(line: 0, scope: !1828, inlinedAt: !2408)
!2412 = !DILocation(line: 682, column: 5, scope: !1837, inlinedAt: !2408)
!2413 = !DILocation(line: 683, column: 22, scope: !1839, inlinedAt: !2408)
!2414 = !DILocation(line: 683, column: 9, scope: !1839, inlinedAt: !2408)
!2415 = !DILocation(line: 682, column: 31, scope: !1839, inlinedAt: !2408)
!2416 = !DILocation(line: 682, column: 5, scope: !1839, inlinedAt: !2408)
!2417 = !DILocation(line: 682, column: 24, scope: !1839, inlinedAt: !2408)
!2418 = !DILocation(line: 682, column: 19, scope: !1839, inlinedAt: !2408)
!2419 = !DILocation(line: 684, column: 11, scope: !1828, inlinedAt: !2408)
!2420 = !DILocation(line: 684, column: 5, scope: !1828, inlinedAt: !2408)
!2421 = !DILocation(line: 800, column: 17, scope: !2406)
!2422 = !DILocation(line: 781, column: 9, scope: !2344)
!2423 = !DILocation(line: 781, column: 23, scope: !2344)
!2424 = distinct !{!2424, !2340, !2425}
!2425 = !DILocation(line: 802, column: 9, scope: !2339)
!2426 = !DILocation(line: 805, column: 29, scope: !2171)
!2427 = !DILocation(line: 805, column: 38, scope: !2171)
!2428 = !DILocation(line: 805, column: 15, scope: !2171)
!2429 = !DILocation(line: 758, column: 30, scope: !2171)
!2430 = !DILocation(line: 806, column: 14, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 806, column: 13)
!2432 = !DILocation(line: 806, column: 13, scope: !2171)
!2433 = !DILocation(line: 809, column: 24, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 806, column: 19)
!2435 = !DILocation(line: 809, column: 33, scope: !2434)
!2436 = !DILocation(line: 807, column: 13, scope: !2434)
!2437 = !DILocation(line: 810, column: 13, scope: !2434)
!2438 = !DILocation(line: 813, column: 27, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 813, column: 13)
!2440 = !{!91, !95, i64 904}
!2441 = !DILocation(line: 813, column: 17, scope: !2439)
!2442 = !DILocation(line: 813, column: 13, scope: !2171)
!2443 = !DILocation(line: 813, column: 41, scope: !2439)
!2444 = !DILocation(line: 0, scope: !1866)
!2445 = !DILocation(line: 816, column: 25, scope: !2171)
!2446 = !{!1775, !95, i64 80}
!2447 = !DILocation(line: 817, column: 25, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 817, column: 13)
!2449 = !DILocation(line: 817, column: 31, scope: !2448)
!2450 = !DILocation(line: 817, column: 46, scope: !2448)
!2451 = !DILocation(line: 0, scope: !2448)
!2452 = !DILocation(line: 818, column: 35, scope: !2448)
!2453 = !DILocation(line: 817, column: 13, scope: !2171)
!2454 = !DILocation(line: 820, column: 13, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 819, column: 9)
!2456 = !DILocation(line: 821, column: 9, scope: !2455)
!2457 = !DILocation(line: 822, column: 18, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 821, column: 16)
!2459 = !DILocation(line: 822, column: 13, scope: !2458)
!2460 = !DILocation(line: 826, column: 9, scope: !2171)
!2461 = !DILocation(line: 830, column: 9, scope: !2171)
!2462 = !DILocation(line: 679, column: 40, scope: !1828, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 834, column: 9, scope: !2171)
!2464 = !DILocation(line: 680, column: 9, scope: !1828, inlinedAt: !2463)
!2465 = !DILocation(line: 682, column: 10, scope: !1837, inlinedAt: !2463)
!2466 = !DILocation(line: 682, column: 24, scope: !1839, inlinedAt: !2463)
!2467 = !DILocation(line: 682, column: 19, scope: !1839, inlinedAt: !2463)
!2468 = !DILocation(line: 0, scope: !1828, inlinedAt: !2463)
!2469 = !DILocation(line: 682, column: 5, scope: !1837, inlinedAt: !2463)
!2470 = !DILocation(line: 683, column: 22, scope: !1839, inlinedAt: !2463)
!2471 = !DILocation(line: 683, column: 9, scope: !1839, inlinedAt: !2463)
!2472 = !DILocation(line: 682, column: 31, scope: !1839, inlinedAt: !2463)
!2473 = !DILocation(line: 682, column: 5, scope: !1839, inlinedAt: !2463)
!2474 = !DILocation(line: 684, column: 11, scope: !1828, inlinedAt: !2463)
!2475 = !DILocation(line: 684, column: 5, scope: !1828, inlinedAt: !2463)
!2476 = !DILocation(line: 685, column: 1, scope: !1828, inlinedAt: !2463)
!2477 = !DILocation(line: 835, column: 25, scope: !2171)
!2478 = !DILocation(line: 836, column: 20, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 836, column: 13)
!2480 = !{!91, !92, i64 2032}
!2481 = !DILocation(line: 836, column: 13, scope: !2479)
!2482 = !DILocation(line: 836, column: 13, scope: !2171)
!2483 = !DILocation(line: 836, column: 54, scope: !2479)
!2484 = !DILocation(line: 836, column: 40, scope: !2479)
!2485 = !DILocation(line: 837, column: 5, scope: !1866)
!2486 = !DILocation(line: 685, column: 1, scope: !1828, inlinedAt: !2350)
!2487 = !DILocation(line: 0, scope: !2406)
!2488 = !DILocation(line: 0, scope: !2365)
!2489 = !DILocation(line: 897, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 897, column: 9)
!2491 = !DILocation(line: 897, column: 9, scope: !1866)
!2492 = !DILocation(line: 0, scope: !2439)
!2493 = !DILocation(line: 0, scope: !2479)
!2494 = distinct !{!2494, !2291, !2485}
!2495 = !DILocation(line: 843, column: 21, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 843, column: 9)
!2497 = !DILocation(line: 843, column: 27, scope: !2496)
!2498 = !DILocation(line: 843, column: 9, scope: !1866)
!2499 = !DILocation(line: 844, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 843, column: 43)
!2501 = !DILocation(line: 847, column: 9, scope: !2500)
!2502 = !DILocation(line: 851, column: 5, scope: !1866)
!2503 = !DILocation(line: 687, column: 36, scope: !1852, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 852, column: 5, scope: !1866)
!2505 = !DILocation(line: 688, column: 16, scope: !1852, inlinedAt: !2504)
!2506 = !DILocation(line: 688, column: 5, scope: !1852, inlinedAt: !2504)
!2507 = !DILocation(line: 689, column: 20, scope: !1852, inlinedAt: !2504)
!2508 = !DILocation(line: 689, column: 5, scope: !1852, inlinedAt: !2504)
!2509 = !DILocation(line: 690, column: 20, scope: !1852, inlinedAt: !2504)
!2510 = !DILocation(line: 690, column: 5, scope: !1852, inlinedAt: !2504)
!2511 = !DILocation(line: 691, column: 5, scope: !1852, inlinedAt: !2504)
!2512 = !DILocation(line: 692, column: 5, scope: !1852, inlinedAt: !2504)
!2513 = !DILocation(line: 693, column: 1, scope: !1852, inlinedAt: !2504)
!2514 = !DILocation(line: 853, column: 22, scope: !1866)
!2515 = !DILocation(line: 854, column: 5, scope: !1866)
!2516 = !DILocation(line: 855, column: 5, scope: !1866)
!2517 = !DILocation(line: 856, column: 43, scope: !1866)
!2518 = !DILocation(line: 856, column: 34, scope: !1866)
!2519 = !{!91, !96, i64 1912}
!2520 = !DILocation(line: 857, column: 29, scope: !1866)
!2521 = !DILocation(line: 858, column: 5, scope: !1866)
!2522 = !DILocation(line: 861, column: 10, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 861, column: 9)
!2524 = !DILocation(line: 861, column: 9, scope: !1866)
!2525 = !DILocation(line: 862, column: 13, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 862, column: 13)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 861, column: 20)
!2528 = !DILocation(line: 862, column: 13, scope: !2527)
!2529 = !DILocation(line: 687, column: 36, scope: !1852, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 862, column: 25, scope: !2526)
!2531 = !DILocation(line: 688, column: 16, scope: !1852, inlinedAt: !2530)
!2532 = !DILocation(line: 688, column: 5, scope: !1852, inlinedAt: !2530)
!2533 = !DILocation(line: 689, column: 20, scope: !1852, inlinedAt: !2530)
!2534 = !DILocation(line: 689, column: 5, scope: !1852, inlinedAt: !2530)
!2535 = !DILocation(line: 690, column: 20, scope: !1852, inlinedAt: !2530)
!2536 = !DILocation(line: 690, column: 5, scope: !1852, inlinedAt: !2530)
!2537 = !DILocation(line: 691, column: 5, scope: !1852, inlinedAt: !2530)
!2538 = !DILocation(line: 692, column: 5, scope: !1852, inlinedAt: !2530)
!2539 = !DILocation(line: 693, column: 1, scope: !1852, inlinedAt: !2530)
!2540 = !DILocation(line: 862, column: 25, scope: !2526)
!2541 = !DILocation(line: 863, column: 95, scope: !2527)
!2542 = !DILocation(line: 863, column: 86, scope: !2527)
!2543 = !DILocation(line: 863, column: 9, scope: !2527)
!2544 = !DILocation(line: 864, column: 9, scope: !2527)
!2545 = !DILocation(line: 0, scope: !2500)
!2546 = !DILocation(line: 868, column: 16, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 868, column: 9)
!2548 = !DILocation(line: 868, column: 9, scope: !2547)
!2549 = !DILocation(line: 868, column: 9, scope: !1866)
!2550 = !DILocation(line: 869, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 868, column: 36)
!2552 = !DILocation(line: 870, column: 9, scope: !2551)
!2553 = !DILocation(line: 872, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 872, column: 13)
!2555 = !DILocation(line: 872, column: 31, scope: !2554)
!2556 = !DILocation(line: 872, column: 34, scope: !2554)
!2557 = !DILocation(line: 872, column: 65, scope: !2554)
!2558 = !DILocation(line: 872, column: 13, scope: !2551)
!2559 = !DILocation(line: 873, column: 17, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 872, column: 72)
!2561 = !DILocation(line: 874, column: 17, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 873, column: 36)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 873, column: 17)
!2564 = !DILocation(line: 875, column: 13, scope: !2562)
!2565 = !DILocation(line: 877, column: 30, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 875, column: 20)
!2567 = !DILocation(line: 877, column: 21, scope: !2566)
!2568 = !DILocation(line: 876, column: 17, scope: !2566)
!2569 = !DILocation(line: 882, column: 24, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 882, column: 17)
!2571 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 879, column: 16)
!2572 = !DILocation(line: 882, column: 31, scope: !2570)
!2573 = !DILocation(line: 882, column: 37, scope: !2570)
!2574 = !DILocation(line: 882, column: 40, scope: !2570)
!2575 = !DILocation(line: 882, column: 72, scope: !2570)
!2576 = !DILocation(line: 882, column: 17, scope: !2571)
!2577 = !DILocation(line: 884, column: 30, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 882, column: 79)
!2579 = !DILocation(line: 884, column: 21, scope: !2578)
!2580 = !DILocation(line: 883, column: 17, scope: !2578)
!2581 = !DILocation(line: 886, column: 17, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 885, column: 20)
!2583 = !DILocation(line: 888, column: 17, scope: !2582)
!2584 = !DILocation(line: 892, column: 9, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 892, column: 9)
!2586 = !DILocation(line: 892, column: 9, scope: !1866)
!2587 = !DILocation(line: 687, column: 36, scope: !1852, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 892, column: 21, scope: !2585)
!2589 = !DILocation(line: 688, column: 16, scope: !1852, inlinedAt: !2588)
!2590 = !DILocation(line: 688, column: 5, scope: !1852, inlinedAt: !2588)
!2591 = !DILocation(line: 689, column: 20, scope: !1852, inlinedAt: !2588)
!2592 = !DILocation(line: 689, column: 5, scope: !1852, inlinedAt: !2588)
!2593 = !DILocation(line: 690, column: 20, scope: !1852, inlinedAt: !2588)
!2594 = !DILocation(line: 690, column: 5, scope: !1852, inlinedAt: !2588)
!2595 = !DILocation(line: 691, column: 5, scope: !1852, inlinedAt: !2588)
!2596 = !DILocation(line: 692, column: 5, scope: !1852, inlinedAt: !2588)
!2597 = !DILocation(line: 693, column: 1, scope: !1852, inlinedAt: !2588)
!2598 = !DILocation(line: 892, column: 21, scope: !2585)
!2599 = !DILocation(line: 893, column: 5, scope: !1866)
!2600 = !DILocation(line: 894, column: 5, scope: !1866)
!2601 = !DILocation(line: 687, column: 36, scope: !1852, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 897, column: 21, scope: !2490)
!2603 = !DILocation(line: 688, column: 16, scope: !1852, inlinedAt: !2602)
!2604 = !DILocation(line: 688, column: 5, scope: !1852, inlinedAt: !2602)
!2605 = !DILocation(line: 689, column: 20, scope: !1852, inlinedAt: !2602)
!2606 = !DILocation(line: 689, column: 5, scope: !1852, inlinedAt: !2602)
!2607 = !DILocation(line: 690, column: 20, scope: !1852, inlinedAt: !2602)
!2608 = !DILocation(line: 690, column: 5, scope: !1852, inlinedAt: !2602)
!2609 = !DILocation(line: 691, column: 5, scope: !1852, inlinedAt: !2602)
!2610 = !DILocation(line: 692, column: 5, scope: !1852, inlinedAt: !2602)
!2611 = !DILocation(line: 693, column: 1, scope: !1852, inlinedAt: !2602)
!2612 = !DILocation(line: 897, column: 21, scope: !2490)
!2613 = !DILocation(line: 898, column: 5, scope: !1866)
!2614 = !DILocation(line: 899, column: 5, scope: !1866)
!2615 = !DILocation(line: 900, column: 1, scope: !1866)
!2616 = distinct !DISubprogram(name: "aofUpdateCurrentSize", scope: !3, file: !3, line: 1643, type: !86, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2617)
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "sb", scope: !2616, file: !3, line: 1644, type: !2073)
!2619 = !DILocalVariable(name: "latency", scope: !2616, file: !3, line: 1645, type: !74)
!2620 = !DILocation(line: 1644, column: 5, scope: !2616)
!2621 = !DILocation(line: 1647, column: 5, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1647, column: 5)
!2623 = !DILocation(line: 1647, column: 5, scope: !2616)
!2624 = !DILocation(line: 1647, column: 5, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1647, column: 5)
!2626 = !DILocation(line: 1645, column: 14, scope: !2616)
!2627 = !DILocation(line: 1648, column: 28, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1648, column: 9)
!2629 = !DILocation(line: 1644, column: 23, scope: !2616)
!2630 = !DILocation(line: 1648, column: 9, scope: !2628)
!2631 = !DILocation(line: 1648, column: 40, scope: !2628)
!2632 = !DILocation(line: 1648, column: 9, scope: !2616)
!2633 = !DILocation(line: 1650, column: 22, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1648, column: 47)
!2635 = !DILocation(line: 1650, column: 13, scope: !2634)
!2636 = !DILocation(line: 1649, column: 9, scope: !2634)
!2637 = !DILocation(line: 1651, column: 5, scope: !2634)
!2638 = !DILocation(line: 1652, column: 38, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1651, column: 12)
!2640 = !DILocation(line: 1652, column: 33, scope: !2639)
!2641 = !DILocation(line: 1654, column: 5, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1654, column: 5)
!2643 = !DILocation(line: 1654, column: 5, scope: !2616)
!2644 = !DILocation(line: 1655, column: 5, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1655, column: 5)
!2646 = !DILocation(line: 1654, column: 5, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 1654, column: 5)
!2648 = !DILocation(line: 1655, column: 5, scope: !2616)
!2649 = !DILocation(line: 1656, column: 1, scope: !2616)
!2650 = distinct !DISubprogram(name: "rioWriteBulkObject", scope: !3, file: !3, line: 908, type: !2651, isLocal: false, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2654)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!6, !2653, !1189}
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2654 = !{!2655, !2656}
!2655 = !DILocalVariable(name: "r", arg: 1, scope: !2650, file: !3, line: 908, type: !2653)
!2656 = !DILocalVariable(name: "obj", arg: 2, scope: !2650, file: !3, line: 908, type: !1189)
!2657 = !DILocation(line: 908, column: 29, scope: !2650)
!2658 = !DILocation(line: 908, column: 38, scope: !2650)
!2659 = !DILocation(line: 911, column: 14, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 911, column: 9)
!2661 = !DILocation(line: 911, column: 23, scope: !2660)
!2662 = !DILocation(line: 911, column: 9, scope: !2650)
!2663 = !DILocation(line: 912, column: 50, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 911, column: 44)
!2665 = !DILocation(line: 912, column: 16, scope: !2664)
!2666 = !DILocation(line: 912, column: 9, scope: !2664)
!2667 = !DILocation(line: 913, column: 16, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 913, column: 16)
!2669 = !DILocation(line: 913, column: 16, scope: !2660)
!2670 = !DILocation(line: 914, column: 42, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 913, column: 39)
!2672 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 914, column: 46, scope: !2671)
!2674 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !2673)
!2675 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !2673)
!2676 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !2673)
!2677 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !2673)
!2678 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !2673)
!2679 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !2673)
!2680 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !2673)
!2681 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !2673)
!2682 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !2673)
!2683 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !2673)
!2684 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !2673)
!2685 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !2673)
!2686 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !2673)
!2687 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !2673)
!2688 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !2673)
!2689 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !2673)
!2690 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !2673)
!2691 = !DILocation(line: 0, scope: !486, inlinedAt: !2673)
!2692 = !DILocation(line: 0, scope: !2671)
!2693 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !2673)
!2694 = !DILocation(line: 914, column: 16, scope: !2671)
!2695 = !DILocation(line: 914, column: 9, scope: !2671)
!2696 = !DILocation(line: 916, column: 9, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 915, column: 12)
!2698 = !DILocation(line: 0, scope: !2664)
!2699 = !DILocation(line: 918, column: 1, scope: !2650)
!2700 = distinct !DISubprogram(name: "rewriteListObject", scope: !3, file: !3, line: 922, type: !2701, isLocal: false, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!6, !2653, !1189, !1189}
!2703 = !{!2704, !2705, !2706, !2707, !2708, !2709, !2738, !2750, !2761}
!2704 = !DILocalVariable(name: "r", arg: 1, scope: !2700, file: !3, line: 922, type: !2653)
!2705 = !DILocalVariable(name: "key", arg: 2, scope: !2700, file: !3, line: 922, type: !1189)
!2706 = !DILocalVariable(name: "o", arg: 3, scope: !2700, file: !3, line: 922, type: !1189)
!2707 = !DILocalVariable(name: "count", scope: !2700, file: !3, line: 923, type: !16)
!2708 = !DILocalVariable(name: "items", scope: !2700, file: !3, line: 923, type: !16)
!2709 = !DILocalVariable(name: "list", scope: !2710, file: !3, line: 926, type: !2712)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 925, column: 48)
!2711 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 925, column: 9)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !2714, line: 80, baseType: !2715)
!2714 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !2714, line: 73, size: 320, elements: !2716)
!2716 = !{!2717, !2733, !2734, !2735, !2736, !2737}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2715, file: !2714, line: 74, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !2714, line: 55, baseType: !2720)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !2714, line: 44, size: 256, elements: !2721)
!2721 = !{!2722, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2720, file: !2714, line: 45, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2720, file: !2714, line: 46, baseType: !2723, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !2720, file: !2714, line: 47, baseType: !18, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2720, file: !2714, line: 48, baseType: !55, size: 32, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2720, file: !2714, line: 49, baseType: !55, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !2720, file: !2714, line: 50, baseType: !55, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2720, file: !2714, line: 51, baseType: !55, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !2720, file: !2714, line: 52, baseType: !55, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !2720, file: !2714, line: 53, baseType: !55, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2720, file: !2714, line: 54, baseType: !55, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2715, file: !2714, line: 75, baseType: !2718, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2715, file: !2714, line: 76, baseType: !17, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2715, file: !2714, line: 77, baseType: !17, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !2715, file: !2714, line: 78, baseType: !6, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !2715, file: !2714, line: 79, baseType: !55, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!2738 = !DILocalVariable(name: "li", scope: !2710, file: !3, line: 927, type: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !2714, line: 88, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !2714, line: 82, size: 320, elements: !2742)
!2742 = !{!2743, !2746, !2747, !2748, !2749}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2741, file: !2714, line: 83, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2741, file: !2714, line: 84, baseType: !2718, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2741, file: !2714, line: 85, baseType: !18, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2741, file: !2714, line: 86, baseType: !15, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !2741, file: !2714, line: 87, baseType: !6, size: 32, offset: 256)
!2750 = !DILocalVariable(name: "entry", scope: !2710, file: !3, line: 928, type: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !2714, line: 98, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !2714, line: 90, size: 384, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2752, file: !2714, line: 91, baseType: !2744, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2752, file: !2714, line: 92, baseType: !2718, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2752, file: !2714, line: 93, baseType: !18, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2752, file: !2714, line: 94, baseType: !18, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !2752, file: !2714, line: 95, baseType: !16, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2752, file: !2714, line: 96, baseType: !55, size: 32, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2752, file: !2714, line: 97, baseType: !6, size: 32, offset: 352)
!2761 = !DILocalVariable(name: "cmd_items", scope: !2762, file: !3, line: 932, type: !6)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 931, column: 29)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 931, column: 17)
!2764 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 930, column: 42)
!2765 = !DILocation(line: 922, column: 28, scope: !2700)
!2766 = !DILocation(line: 922, column: 37, scope: !2700)
!2767 = !DILocation(line: 922, column: 48, scope: !2700)
!2768 = !DILocation(line: 923, column: 15, scope: !2700)
!2769 = !DILocation(line: 923, column: 34, scope: !2700)
!2770 = !DILocation(line: 923, column: 26, scope: !2700)
!2771 = !DILocation(line: 925, column: 12, scope: !2711)
!2772 = !DILocation(line: 925, column: 21, scope: !2711)
!2773 = !DILocation(line: 925, column: 9, scope: !2700)
!2774 = !DILocation(line: 926, column: 30, scope: !2710)
!2775 = !DILocation(line: 926, column: 20, scope: !2710)
!2776 = !DILocation(line: 927, column: 29, scope: !2710)
!2777 = !DILocation(line: 927, column: 24, scope: !2710)
!2778 = !DILocation(line: 928, column: 9, scope: !2710)
!2779 = !DILocation(line: 930, column: 9, scope: !2710)
!2780 = !DILocation(line: 928, column: 24, scope: !2710)
!2781 = !DILocation(line: 930, column: 16, scope: !2710)
!2782 = !DILocation(line: 931, column: 23, scope: !2763)
!2783 = !DILocation(line: 931, column: 17, scope: !2764)
!2784 = !DILocation(line: 932, column: 33, scope: !2762)
!2785 = !DILocation(line: 934, column: 45, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 934, column: 21)
!2787 = !DILocation(line: 934, column: 21, scope: !2786)
!2788 = !DILocation(line: 934, column: 58, scope: !2786)
!2789 = !DILocation(line: 934, column: 21, scope: !2762)
!2790 = !DILocation(line: 935, column: 21, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 935, column: 21)
!2792 = !DILocation(line: 935, column: 53, scope: !2791)
!2793 = !DILocation(line: 935, column: 21, scope: !2762)
!2794 = !DILocation(line: 936, column: 21, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 936, column: 21)
!2796 = !DILocation(line: 936, column: 47, scope: !2795)
!2797 = !DILocation(line: 936, column: 21, scope: !2762)
!2798 = !DILocation(line: 0, scope: !2763)
!2799 = !DILocation(line: 0, scope: !2791)
!2800 = !DILocation(line: 939, column: 23, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 939, column: 17)
!2802 = !{!2803, !95, i64 24}
!2803 = !{!"quicklistEntry", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !97, i64 32, !92, i64 40, !92, i64 44}
!2804 = !DILocation(line: 939, column: 17, scope: !2801)
!2805 = !DILocation(line: 939, column: 17, scope: !2764)
!2806 = !DILocation(line: 940, column: 67, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 940, column: 21)
!2808 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 939, column: 30)
!2809 = !{!2803, !92, i64 40}
!2810 = !DILocation(line: 940, column: 61, scope: !2807)
!2811 = !DILocation(line: 940, column: 21, scope: !2807)
!2812 = !DILocation(line: 940, column: 71, scope: !2807)
!2813 = !DILocation(line: 940, column: 21, scope: !2808)
!2814 = !DILocation(line: 942, column: 50, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 942, column: 21)
!2816 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 941, column: 20)
!2817 = !{!2803, !97, i64 32}
!2818 = !DILocation(line: 942, column: 21, scope: !2815)
!2819 = !DILocation(line: 942, column: 59, scope: !2815)
!2820 = !DILocation(line: 942, column: 21, scope: !2816)
!2821 = !DILocation(line: 944, column: 17, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 944, column: 17)
!2823 = !DILocation(line: 944, column: 25, scope: !2822)
!2824 = !DILocation(line: 944, column: 17, scope: !2764)
!2825 = !DILocation(line: 945, column: 18, scope: !2764)
!2826 = distinct !{!2826, !2779, !2827}
!2827 = !DILocation(line: 946, column: 9, scope: !2710)
!2828 = !DILocation(line: 948, column: 5, scope: !2711)
!2829 = !DILocation(line: 949, column: 9, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 948, column: 12)
!2831 = !DILocation(line: 947, column: 9, scope: !2710)
!2832 = !DILocation(line: 951, column: 5, scope: !2700)
!2833 = !DILocation(line: 0, scope: !2807)
!2834 = !DILocation(line: 952, column: 1, scope: !2700)
!2835 = distinct !DISubprogram(name: "rewriteSetObject", scope: !3, file: !3, line: 956, type: !2701, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2845, !2846, !2850, !2864, !2865, !2867}
!2837 = !DILocalVariable(name: "r", arg: 1, scope: !2835, file: !3, line: 956, type: !2653)
!2838 = !DILocalVariable(name: "key", arg: 2, scope: !2835, file: !3, line: 956, type: !1189)
!2839 = !DILocalVariable(name: "o", arg: 3, scope: !2835, file: !3, line: 956, type: !1189)
!2840 = !DILocalVariable(name: "count", scope: !2835, file: !3, line: 957, type: !16)
!2841 = !DILocalVariable(name: "items", scope: !2835, file: !3, line: 957, type: !16)
!2842 = !DILocalVariable(name: "ii", scope: !2843, file: !3, line: 960, type: !6)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 959, column: 45)
!2844 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 959, column: 9)
!2845 = !DILocalVariable(name: "llval", scope: !2843, file: !3, line: 961, type: !1379)
!2846 = !DILocalVariable(name: "cmd_items", scope: !2847, file: !3, line: 965, type: !6)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 964, column: 29)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 964, column: 17)
!2849 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 963, column: 46)
!2850 = !DILocalVariable(name: "di", scope: !2851, file: !3, line: 977, type: !2853)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 976, column: 48)
!2852 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 976, column: 16)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !1332, line: 95, baseType: !2855)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !1332, line: 88, size: 384, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2855, file: !1332, line: 89, baseType: !1330, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2855, file: !1332, line: 90, baseType: !15, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2855, file: !1332, line: 91, baseType: !6, size: 32, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !2855, file: !1332, line: 91, baseType: !6, size: 32, offset: 160)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2855, file: !1332, line: 92, baseType: !1368, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !2855, file: !1332, line: 92, baseType: !1368, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !2855, file: !1332, line: 94, baseType: !16, size: 64, offset: 320)
!2864 = !DILocalVariable(name: "de", scope: !2851, file: !3, line: 978, type: !1368)
!2865 = !DILocalVariable(name: "ele", scope: !2866, file: !3, line: 981, type: !476)
!2866 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 980, column: 44)
!2867 = !DILocalVariable(name: "cmd_items", scope: !2868, file: !3, line: 983, type: !6)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 982, column: 29)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 982, column: 17)
!2870 = !DILocation(line: 956, column: 27, scope: !2835)
!2871 = !DILocation(line: 956, column: 36, scope: !2835)
!2872 = !DILocation(line: 956, column: 47, scope: !2835)
!2873 = !DILocation(line: 957, column: 15, scope: !2835)
!2874 = !DILocation(line: 957, column: 34, scope: !2835)
!2875 = !DILocation(line: 957, column: 26, scope: !2835)
!2876 = !DILocation(line: 959, column: 12, scope: !2844)
!2877 = !DILocation(line: 959, column: 21, scope: !2844)
!2878 = !DILocation(line: 959, column: 9, scope: !2835)
!2879 = !DILocation(line: 960, column: 13, scope: !2843)
!2880 = !DILocation(line: 961, column: 9, scope: !2843)
!2881 = !DILocation(line: 963, column: 9, scope: !2843)
!2882 = !DILocation(line: 963, column: 28, scope: !2843)
!2883 = !DILocation(line: 961, column: 17, scope: !2843)
!2884 = !DILocation(line: 963, column: 15, scope: !2843)
!2885 = !DILocation(line: 964, column: 23, scope: !2848)
!2886 = !DILocation(line: 964, column: 17, scope: !2849)
!2887 = !DILocation(line: 965, column: 33, scope: !2847)
!2888 = !DILocation(line: 968, column: 45, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 968, column: 21)
!2890 = !DILocation(line: 968, column: 21, scope: !2889)
!2891 = !DILocation(line: 968, column: 58, scope: !2889)
!2892 = !DILocation(line: 968, column: 21, scope: !2847)
!2893 = !DILocation(line: 969, column: 21, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 969, column: 21)
!2895 = !DILocation(line: 969, column: 52, scope: !2894)
!2896 = !DILocation(line: 969, column: 21, scope: !2847)
!2897 = !DILocation(line: 970, column: 21, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 970, column: 21)
!2899 = !DILocation(line: 970, column: 47, scope: !2898)
!2900 = !DILocation(line: 970, column: 21, scope: !2847)
!2901 = !DILocation(line: 0, scope: !2848)
!2902 = !DILocation(line: 0, scope: !2894)
!2903 = !DILocation(line: 972, column: 40, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 972, column: 17)
!2905 = !DILocation(line: 972, column: 17, scope: !2904)
!2906 = !DILocation(line: 972, column: 47, scope: !2904)
!2907 = !DILocation(line: 972, column: 17, scope: !2849)
!2908 = !DILocation(line: 973, column: 17, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 973, column: 17)
!2910 = !DILocation(line: 973, column: 25, scope: !2909)
!2911 = !DILocation(line: 973, column: 17, scope: !2849)
!2912 = !DILocation(line: 974, column: 18, scope: !2849)
!2913 = !DILocation(line: 963, column: 34, scope: !2843)
!2914 = distinct !{!2914, !2881, !2915}
!2915 = !DILocation(line: 975, column: 9, scope: !2843)
!2916 = !DILocation(line: 976, column: 5, scope: !2844)
!2917 = !DILocation(line: 976, column: 28, scope: !2852)
!2918 = !DILocation(line: 976, column: 16, scope: !2844)
!2919 = !DILocation(line: 977, column: 47, scope: !2851)
!2920 = !DILocation(line: 977, column: 28, scope: !2851)
!2921 = !DILocation(line: 977, column: 23, scope: !2851)
!2922 = !DILocation(line: 980, column: 9, scope: !2851)
!2923 = !DILocation(line: 980, column: 21, scope: !2851)
!2924 = !DILocation(line: 978, column: 20, scope: !2851)
!2925 = !DILocation(line: 980, column: 35, scope: !2851)
!2926 = !DILocation(line: 981, column: 23, scope: !2866)
!2927 = !{!2928, !95, i64 0}
!2928 = !{!"dictEntry", !95, i64 0, !93, i64 8, !95, i64 16}
!2929 = !DILocation(line: 981, column: 17, scope: !2866)
!2930 = !DILocation(line: 982, column: 23, scope: !2869)
!2931 = !DILocation(line: 982, column: 17, scope: !2866)
!2932 = !DILocation(line: 983, column: 33, scope: !2868)
!2933 = !DILocation(line: 986, column: 45, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 986, column: 21)
!2935 = !DILocation(line: 986, column: 21, scope: !2934)
!2936 = !DILocation(line: 986, column: 58, scope: !2934)
!2937 = !DILocation(line: 986, column: 21, scope: !2868)
!2938 = !DILocation(line: 987, column: 21, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 987, column: 21)
!2940 = !DILocation(line: 987, column: 52, scope: !2939)
!2941 = !DILocation(line: 987, column: 21, scope: !2868)
!2942 = !DILocation(line: 988, column: 21, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 988, column: 21)
!2944 = !DILocation(line: 988, column: 47, scope: !2943)
!2945 = !DILocation(line: 988, column: 21, scope: !2868)
!2946 = !DILocation(line: 0, scope: !2869)
!2947 = !DILocation(line: 0, scope: !2939)
!2948 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 990, column: 42, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 990, column: 17)
!2951 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !2949)
!2952 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !2949)
!2953 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !2949)
!2954 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !2949)
!2955 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !2949)
!2956 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !2949)
!2957 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !2949)
!2958 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !2949)
!2959 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !2949)
!2960 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !2949)
!2961 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !2949)
!2962 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !2949)
!2963 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !2949)
!2964 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !2949)
!2965 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !2949)
!2966 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !2949)
!2967 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !2949)
!2968 = !DILocation(line: 0, scope: !486, inlinedAt: !2949)
!2969 = !DILocation(line: 0, scope: !2950)
!2970 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !2949)
!2971 = !DILocation(line: 990, column: 17, scope: !2950)
!2972 = !DILocation(line: 990, column: 55, scope: !2950)
!2973 = !DILocation(line: 990, column: 17, scope: !2866)
!2974 = !DILocation(line: 991, column: 17, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 991, column: 17)
!2976 = !DILocation(line: 991, column: 25, scope: !2975)
!2977 = !DILocation(line: 991, column: 17, scope: !2866)
!2978 = !DILocation(line: 992, column: 18, scope: !2866)
!2979 = !DILocation(line: 993, column: 9, scope: !2851)
!2980 = !DILocation(line: 994, column: 9, scope: !2851)
!2981 = !DILocation(line: 995, column: 5, scope: !2852)
!2982 = !DILocation(line: 996, column: 9, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 995, column: 12)
!2984 = !DILocation(line: 998, column: 5, scope: !2835)
!2985 = !DILocation(line: 999, column: 1, scope: !2835)
!2986 = distinct !DISubprogram(name: "rewriteSortedSetObject", scope: !3, file: !3, line: 1003, type: !2701, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3006, !3035, !3036, !3037, !3039, !3041}
!2988 = !DILocalVariable(name: "r", arg: 1, scope: !2986, file: !3, line: 1003, type: !2653)
!2989 = !DILocalVariable(name: "key", arg: 2, scope: !2986, file: !3, line: 1003, type: !1189)
!2990 = !DILocalVariable(name: "o", arg: 3, scope: !2986, file: !3, line: 1003, type: !1189)
!2991 = !DILocalVariable(name: "count", scope: !2986, file: !3, line: 1004, type: !16)
!2992 = !DILocalVariable(name: "items", scope: !2986, file: !3, line: 1004, type: !16)
!2993 = !DILocalVariable(name: "zl", scope: !2994, file: !3, line: 1007, type: !18)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1006, column: 46)
!2995 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 1006, column: 9)
!2996 = !DILocalVariable(name: "eptr", scope: !2994, file: !3, line: 1008, type: !18)
!2997 = !DILocalVariable(name: "sptr", scope: !2994, file: !3, line: 1008, type: !18)
!2998 = !DILocalVariable(name: "vstr", scope: !2994, file: !3, line: 1009, type: !18)
!2999 = !DILocalVariable(name: "vlen", scope: !2994, file: !3, line: 1010, type: !55)
!3000 = !DILocalVariable(name: "vll", scope: !2994, file: !3, line: 1011, type: !16)
!3001 = !DILocalVariable(name: "score", scope: !2994, file: !3, line: 1012, type: !23)
!3002 = !DILocalVariable(name: "cmd_items", scope: !3003, file: !3, line: 1024, type: !6)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 1023, column: 29)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1023, column: 17)
!3005 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1019, column: 30)
!3006 = !DILocalVariable(name: "zs", scope: !3007, file: !3, line: 1042, type: !3009)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1041, column: 54)
!3008 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1041, column: 16)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !75, line: 829, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !75, line: 826, size: 128, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !3011, file: !75, line: 827, baseType: !1330, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !3011, file: !75, line: 828, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !75, line: 824, baseType: !3017)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !75, line: 820, size: 256, elements: !3018)
!3018 = !{!3019, !3032, !3033, !3034}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3017, file: !75, line: 821, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !75, line: 810, size: 192, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !3021, file: !75, line: 811, baseType: !476, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !3021, file: !75, line: 812, baseType: !23, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !3021, file: !75, line: 813, baseType: !3020, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3021, file: !75, line: 817, baseType: !3027, offset: 192)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, elements: !37)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !75, line: 814, size: 128, elements: !3029)
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !3028, file: !75, line: 815, baseType: !3020, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !3028, file: !75, line: 816, baseType: !17, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3017, file: !75, line: 821, baseType: !3020, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3017, file: !75, line: 822, baseType: !17, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3017, file: !75, line: 823, baseType: !6, size: 32, offset: 192)
!3035 = !DILocalVariable(name: "di", scope: !3007, file: !3, line: 1043, type: !2853)
!3036 = !DILocalVariable(name: "de", scope: !3007, file: !3, line: 1044, type: !1368)
!3037 = !DILocalVariable(name: "ele", scope: !3038, file: !3, line: 1047, type: !476)
!3038 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1046, column: 44)
!3039 = !DILocalVariable(name: "score", scope: !3038, file: !3, line: 1048, type: !3040)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!3041 = !DILocalVariable(name: "cmd_items", scope: !3042, file: !3, line: 1051, type: !6)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1050, column: 29)
!3043 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1050, column: 17)
!3044 = !DILocation(line: 1003, column: 33, scope: !2986)
!3045 = !DILocation(line: 1003, column: 42, scope: !2986)
!3046 = !DILocation(line: 1003, column: 53, scope: !2986)
!3047 = !DILocation(line: 1004, column: 15, scope: !2986)
!3048 = !DILocation(line: 1004, column: 34, scope: !2986)
!3049 = !DILocation(line: 1004, column: 26, scope: !2986)
!3050 = !DILocation(line: 1006, column: 12, scope: !2995)
!3051 = !DILocation(line: 1006, column: 21, scope: !2995)
!3052 = !DILocation(line: 1006, column: 9, scope: !2986)
!3053 = !DILocation(line: 1007, column: 32, scope: !2994)
!3054 = !DILocation(line: 1007, column: 24, scope: !2994)
!3055 = !DILocation(line: 1008, column: 9, scope: !2994)
!3056 = !DILocation(line: 1009, column: 9, scope: !2994)
!3057 = !DILocation(line: 1010, column: 9, scope: !2994)
!3058 = !DILocation(line: 1011, column: 9, scope: !2994)
!3059 = !DILocation(line: 1014, column: 16, scope: !2994)
!3060 = !DILocation(line: 1008, column: 24, scope: !2994)
!3061 = !DILocation(line: 1014, column: 14, scope: !2994)
!3062 = !DILocation(line: 1015, column: 9, scope: !2994)
!3063 = !DILocation(line: 1016, column: 16, scope: !2994)
!3064 = !DILocation(line: 1008, column: 31, scope: !2994)
!3065 = !DILocation(line: 1016, column: 14, scope: !2994)
!3066 = !DILocation(line: 1017, column: 9, scope: !2994)
!3067 = !DILocation(line: 1019, column: 9, scope: !2994)
!3068 = !DILocation(line: 1020, column: 13, scope: !3005)
!3069 = !DILocation(line: 1009, column: 24, scope: !2994)
!3070 = !DILocation(line: 1010, column: 22, scope: !2994)
!3071 = !DILocation(line: 1011, column: 19, scope: !2994)
!3072 = !DILocation(line: 1021, column: 33, scope: !3005)
!3073 = !DILocation(line: 1021, column: 21, scope: !3005)
!3074 = !DILocation(line: 1012, column: 16, scope: !2994)
!3075 = !DILocation(line: 1023, column: 23, scope: !3004)
!3076 = !DILocation(line: 1023, column: 17, scope: !3005)
!3077 = !DILocation(line: 1024, column: 33, scope: !3003)
!3078 = !DILocation(line: 1024, column: 21, scope: !3003)
!3079 = !DILocation(line: 1027, column: 56, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1027, column: 21)
!3081 = !DILocation(line: 1027, column: 46, scope: !3080)
!3082 = !DILocation(line: 1027, column: 45, scope: !3080)
!3083 = !DILocation(line: 1027, column: 21, scope: !3080)
!3084 = !DILocation(line: 1027, column: 60, scope: !3080)
!3085 = !DILocation(line: 1027, column: 21, scope: !3003)
!3086 = !DILocation(line: 1028, column: 21, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1028, column: 21)
!3088 = !DILocation(line: 1028, column: 52, scope: !3087)
!3089 = !DILocation(line: 1028, column: 21, scope: !3003)
!3090 = !DILocation(line: 1029, column: 21, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1029, column: 21)
!3092 = !DILocation(line: 1029, column: 47, scope: !3091)
!3093 = !DILocation(line: 1029, column: 21, scope: !3003)
!3094 = !DILocation(line: 0, scope: !3004)
!3095 = !DILocation(line: 0, scope: !3087)
!3096 = !DILocation(line: 1041, column: 5, scope: !2995)
!3097 = !DILocation(line: 1031, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1031, column: 17)
!3099 = !DILocation(line: 1031, column: 45, scope: !3098)
!3100 = !DILocation(line: 1031, column: 17, scope: !3005)
!3101 = !DILocation(line: 1031, column: 51, scope: !3098)
!3102 = !DILocation(line: 1032, column: 17, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1032, column: 17)
!3104 = !DILocation(line: 1032, column: 22, scope: !3103)
!3105 = !DILocation(line: 1032, column: 17, scope: !3005)
!3106 = !DILocation(line: 1033, column: 54, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1033, column: 21)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1032, column: 31)
!3109 = !DILocation(line: 1033, column: 21, scope: !3107)
!3110 = !DILocation(line: 1033, column: 60, scope: !3107)
!3111 = !DILocation(line: 1033, column: 21, scope: !3108)
!3112 = !DILocation(line: 1033, column: 66, scope: !3107)
!3113 = !DILocation(line: 1035, column: 44, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1035, column: 21)
!3115 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1034, column: 20)
!3116 = !{!97, !97, i64 0}
!3117 = !DILocation(line: 1035, column: 21, scope: !3114)
!3118 = !DILocation(line: 1035, column: 49, scope: !3114)
!3119 = !DILocation(line: 1035, column: 21, scope: !3115)
!3120 = !DILocation(line: 1035, column: 55, scope: !3114)
!3121 = !DILocation(line: 1037, column: 13, scope: !3005)
!3122 = !DILocation(line: 1038, column: 17, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1038, column: 17)
!3124 = !DILocation(line: 1038, column: 25, scope: !3123)
!3125 = !DILocation(line: 1038, column: 17, scope: !3005)
!3126 = !DILocation(line: 1039, column: 18, scope: !3005)
!3127 = !DILocation(line: 1019, column: 16, scope: !2994)
!3128 = !DILocation(line: 1019, column: 21, scope: !2994)
!3129 = distinct !{!3129, !3067, !3130}
!3130 = !DILocation(line: 1040, column: 9, scope: !2994)
!3131 = !DILocation(line: 1041, column: 28, scope: !3008)
!3132 = !DILocation(line: 1041, column: 16, scope: !2995)
!3133 = !DILocation(line: 1042, column: 23, scope: !3007)
!3134 = !DILocation(line: 1042, column: 15, scope: !3007)
!3135 = !DILocation(line: 1043, column: 48, scope: !3007)
!3136 = !{!3137, !95, i64 0}
!3137 = !{!"zset", !95, i64 0, !95, i64 8}
!3138 = !DILocation(line: 1043, column: 28, scope: !3007)
!3139 = !DILocation(line: 1043, column: 23, scope: !3007)
!3140 = !DILocation(line: 1046, column: 9, scope: !3007)
!3141 = !DILocation(line: 1046, column: 21, scope: !3007)
!3142 = !DILocation(line: 1044, column: 20, scope: !3007)
!3143 = !DILocation(line: 1046, column: 35, scope: !3007)
!3144 = !DILocation(line: 1047, column: 23, scope: !3038)
!3145 = !DILocation(line: 1047, column: 17, scope: !3038)
!3146 = !DILocation(line: 1048, column: 29, scope: !3038)
!3147 = !DILocation(line: 1048, column: 21, scope: !3038)
!3148 = !DILocation(line: 1050, column: 23, scope: !3043)
!3149 = !DILocation(line: 1050, column: 17, scope: !3038)
!3150 = !DILocation(line: 1051, column: 33, scope: !3042)
!3151 = !DILocation(line: 1051, column: 21, scope: !3042)
!3152 = !DILocation(line: 1054, column: 56, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1054, column: 21)
!3154 = !DILocation(line: 1054, column: 46, scope: !3153)
!3155 = !DILocation(line: 1054, column: 45, scope: !3153)
!3156 = !DILocation(line: 1054, column: 21, scope: !3153)
!3157 = !DILocation(line: 1054, column: 60, scope: !3153)
!3158 = !DILocation(line: 1054, column: 21, scope: !3042)
!3159 = !DILocation(line: 1055, column: 21, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1055, column: 21)
!3161 = !DILocation(line: 1055, column: 52, scope: !3160)
!3162 = !DILocation(line: 1055, column: 21, scope: !3042)
!3163 = !DILocation(line: 1056, column: 21, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1056, column: 21)
!3165 = !DILocation(line: 1056, column: 47, scope: !3164)
!3166 = !DILocation(line: 1056, column: 21, scope: !3042)
!3167 = !DILocation(line: 0, scope: !3043)
!3168 = !DILocation(line: 0, scope: !3160)
!3169 = !DILocation(line: 1058, column: 38, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1058, column: 17)
!3171 = !{!98, !98, i64 0}
!3172 = !DILocation(line: 1058, column: 17, scope: !3170)
!3173 = !DILocation(line: 1058, column: 46, scope: !3170)
!3174 = !DILocation(line: 1058, column: 17, scope: !3038)
!3175 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 1059, column: 42, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1059, column: 17)
!3178 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !3176)
!3179 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !3176)
!3180 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !3176)
!3181 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !3176)
!3182 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !3176)
!3183 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !3176)
!3184 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !3176)
!3185 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !3176)
!3186 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !3176)
!3187 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !3176)
!3188 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !3176)
!3189 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !3176)
!3190 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !3176)
!3191 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !3176)
!3192 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !3176)
!3193 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !3176)
!3194 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !3176)
!3195 = !DILocation(line: 0, scope: !486, inlinedAt: !3176)
!3196 = !DILocation(line: 0, scope: !3177)
!3197 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !3176)
!3198 = !DILocation(line: 1059, column: 17, scope: !3177)
!3199 = !DILocation(line: 1059, column: 55, scope: !3177)
!3200 = !DILocation(line: 1059, column: 17, scope: !3038)
!3201 = !DILocation(line: 1060, column: 17, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1060, column: 17)
!3203 = !DILocation(line: 1060, column: 25, scope: !3202)
!3204 = !DILocation(line: 1060, column: 17, scope: !3038)
!3205 = !DILocation(line: 1061, column: 18, scope: !3038)
!3206 = !DILocation(line: 1062, column: 9, scope: !3007)
!3207 = !DILocation(line: 1063, column: 9, scope: !3007)
!3208 = !DILocation(line: 1064, column: 5, scope: !3008)
!3209 = !DILocation(line: 1065, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1064, column: 12)
!3211 = !DILocation(line: 1067, column: 5, scope: !2986)
!3212 = !DILocation(line: 0, scope: !3170)
!3213 = !DILocation(line: 1068, column: 1, scope: !2986)
!3214 = distinct !DISubprogram(name: "rewriteHashObject", scope: !3, file: !3, line: 1098, type: !2701, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3230, !3231, !3232}
!3216 = !DILocalVariable(name: "r", arg: 1, scope: !3214, file: !3, line: 1098, type: !2653)
!3217 = !DILocalVariable(name: "key", arg: 2, scope: !3214, file: !3, line: 1098, type: !1189)
!3218 = !DILocalVariable(name: "o", arg: 3, scope: !3214, file: !3, line: 1098, type: !1189)
!3219 = !DILocalVariable(name: "hi", scope: !3214, file: !3, line: 1099, type: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !75, line: 1375, baseType: !3222)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 1367, size: 384, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !3222, file: !75, line: 1368, baseType: !1189, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !3222, file: !75, line: 1369, baseType: !6, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !3222, file: !75, line: 1371, baseType: !18, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !3222, file: !75, line: 1371, baseType: !18, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3222, file: !75, line: 1373, baseType: !2853, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !3222, file: !75, line: 1374, baseType: !1368, size: 64, offset: 320)
!3230 = !DILocalVariable(name: "count", scope: !3214, file: !3, line: 1100, type: !16)
!3231 = !DILocalVariable(name: "items", scope: !3214, file: !3, line: 1100, type: !16)
!3232 = !DILocalVariable(name: "cmd_items", scope: !3233, file: !3, line: 1105, type: !6)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 1104, column: 25)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1104, column: 13)
!3235 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 1103, column: 39)
!3236 = !DILocation(line: 1098, column: 28, scope: !3214)
!3237 = !DILocation(line: 1098, column: 37, scope: !3214)
!3238 = !DILocation(line: 1098, column: 48, scope: !3214)
!3239 = !DILocation(line: 1100, column: 15, scope: !3214)
!3240 = !DILocation(line: 1100, column: 34, scope: !3214)
!3241 = !DILocation(line: 1100, column: 26, scope: !3214)
!3242 = !DILocation(line: 1102, column: 10, scope: !3214)
!3243 = !DILocation(line: 1099, column: 23, scope: !3214)
!3244 = !DILocation(line: 1103, column: 5, scope: !3214)
!3245 = !DILocation(line: 1103, column: 12, scope: !3214)
!3246 = !DILocation(line: 1103, column: 29, scope: !3214)
!3247 = !DILocation(line: 1104, column: 19, scope: !3234)
!3248 = !DILocation(line: 1104, column: 13, scope: !3235)
!3249 = !DILocation(line: 1105, column: 29, scope: !3233)
!3250 = !DILocation(line: 1105, column: 17, scope: !3233)
!3251 = !DILocation(line: 1108, column: 52, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1108, column: 17)
!3253 = !DILocation(line: 1108, column: 42, scope: !3252)
!3254 = !DILocation(line: 1108, column: 41, scope: !3252)
!3255 = !DILocation(line: 1108, column: 17, scope: !3252)
!3256 = !DILocation(line: 1108, column: 56, scope: !3252)
!3257 = !DILocation(line: 1108, column: 17, scope: !3233)
!3258 = !DILocation(line: 1108, column: 62, scope: !3252)
!3259 = !DILocation(line: 1109, column: 17, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1109, column: 17)
!3261 = !DILocation(line: 1109, column: 49, scope: !3260)
!3262 = !DILocation(line: 1109, column: 17, scope: !3233)
!3263 = !DILocation(line: 1109, column: 55, scope: !3260)
!3264 = !DILocation(line: 1110, column: 17, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1110, column: 17)
!3266 = !DILocation(line: 1110, column: 43, scope: !3265)
!3267 = !DILocation(line: 1110, column: 17, scope: !3233)
!3268 = !DILocation(line: 0, scope: !3234)
!3269 = !DILocation(line: 1113, column: 13, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1113, column: 13)
!3271 = !DILocation(line: 1113, column: 61, scope: !3270)
!3272 = !DILocation(line: 1113, column: 13, scope: !3235)
!3273 = !DILocation(line: 1114, column: 13, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1114, column: 13)
!3275 = !DILocation(line: 1114, column: 63, scope: !3274)
!3276 = !DILocation(line: 1114, column: 13, scope: !3235)
!3277 = !DILocation(line: 1115, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1115, column: 13)
!3279 = !DILocation(line: 1115, column: 21, scope: !3278)
!3280 = !DILocation(line: 1115, column: 13, scope: !3235)
!3281 = !DILocation(line: 1116, column: 14, scope: !3235)
!3282 = distinct !{!3282, !3244, !3283}
!3283 = !DILocation(line: 1117, column: 5, scope: !3214)
!3284 = !DILocation(line: 1119, column: 5, scope: !3214)
!3285 = !DILocation(line: 1121, column: 5, scope: !3214)
!3286 = !DILocation(line: 1122, column: 1, scope: !3214)
!3287 = !DILocation(line: 0, scope: !3214)
!3288 = distinct !DISubprogram(name: "rioWriteHashIteratorCursor", scope: !3, file: !3, line: 1076, type: !3289, isLocal: true, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!6, !2653, !3220, !6}
!3291 = !{!3292, !3293, !3294, !3295, !3298, !3299, !3300}
!3292 = !DILocalVariable(name: "r", arg: 1, scope: !3288, file: !3, line: 1076, type: !2653)
!3293 = !DILocalVariable(name: "hi", arg: 2, scope: !3288, file: !3, line: 1076, type: !3220)
!3294 = !DILocalVariable(name: "what", arg: 3, scope: !3288, file: !3, line: 1076, type: !6)
!3295 = !DILocalVariable(name: "vstr", scope: !3296, file: !3, line: 1078, type: !18)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 1077, column: 47)
!3297 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 1077, column: 9)
!3298 = !DILocalVariable(name: "vlen", scope: !3296, file: !3, line: 1079, type: !55)
!3299 = !DILocalVariable(name: "vll", scope: !3296, file: !3, line: 1080, type: !16)
!3300 = !DILocalVariable(name: "value", scope: !3301, file: !3, line: 1088, type: !476)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1087, column: 49)
!3302 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 1087, column: 16)
!3303 = !DILocation(line: 1076, column: 44, scope: !3288)
!3304 = !DILocation(line: 1076, column: 65, scope: !3288)
!3305 = !DILocation(line: 1076, column: 73, scope: !3288)
!3306 = !DILocation(line: 1077, column: 13, scope: !3297)
!3307 = !{!3308, !92, i64 8}
!3308 = !{!"", !95, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40}
!3309 = !DILocation(line: 1077, column: 22, scope: !3297)
!3310 = !DILocation(line: 1077, column: 9, scope: !3288)
!3311 = !DILocation(line: 1078, column: 9, scope: !3296)
!3312 = !DILocation(line: 1078, column: 24, scope: !3296)
!3313 = !DILocation(line: 1079, column: 9, scope: !3296)
!3314 = !DILocation(line: 1079, column: 22, scope: !3296)
!3315 = !DILocation(line: 1080, column: 9, scope: !3296)
!3316 = !DILocation(line: 1080, column: 19, scope: !3296)
!3317 = !DILocation(line: 1082, column: 9, scope: !3296)
!3318 = !DILocation(line: 1083, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 1083, column: 13)
!3320 = !DILocation(line: 1083, column: 13, scope: !3296)
!3321 = !DILocation(line: 1084, column: 55, scope: !3319)
!3322 = !DILocation(line: 1084, column: 20, scope: !3319)
!3323 = !DILocation(line: 1084, column: 13, scope: !3319)
!3324 = !DILocation(line: 1086, column: 44, scope: !3319)
!3325 = !DILocation(line: 1086, column: 20, scope: !3319)
!3326 = !DILocation(line: 1086, column: 13, scope: !3319)
!3327 = !DILocation(line: 0, scope: !3319)
!3328 = !DILocation(line: 1087, column: 5, scope: !3297)
!3329 = !DILocation(line: 1087, column: 29, scope: !3302)
!3330 = !DILocation(line: 1087, column: 16, scope: !3297)
!3331 = !DILocation(line: 1088, column: 21, scope: !3301)
!3332 = !DILocation(line: 1088, column: 13, scope: !3301)
!3333 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1089, column: 45, scope: !3301)
!3335 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !3334)
!3336 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !3334)
!3337 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !3334)
!3338 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !3334)
!3339 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !3334)
!3340 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !3334)
!3341 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !3334)
!3342 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !3334)
!3343 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !3334)
!3344 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !3334)
!3345 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !3334)
!3346 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !3334)
!3347 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !3334)
!3348 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !3334)
!3349 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !3334)
!3350 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !3334)
!3351 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !3334)
!3352 = !DILocation(line: 0, scope: !486, inlinedAt: !3334)
!3353 = !DILocation(line: 0, scope: !3301)
!3354 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !3334)
!3355 = !DILocation(line: 1089, column: 16, scope: !3301)
!3356 = !DILocation(line: 1092, column: 5, scope: !3288)
!3357 = !DILocation(line: 1094, column: 1, scope: !3288)
!3358 = distinct !DISubprogram(name: "rioWriteBulkStreamID", scope: !3, file: !3, line: 1126, type: !3359, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3368)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!6, !2653, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !3363, line: 14, baseType: !3364)
!3363 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !3363, line: 11, size: 128, elements: !3365)
!3365 = !{!3366, !3367}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !3364, file: !3363, line: 12, baseType: !63, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3364, file: !3363, line: 13, baseType: !63, size: 64, offset: 64)
!3368 = !{!3369, !3370, !3371, !3372}
!3369 = !DILocalVariable(name: "r", arg: 1, scope: !3358, file: !3, line: 1126, type: !2653)
!3370 = !DILocalVariable(name: "id", arg: 2, scope: !3358, file: !3, line: 1126, type: !3361)
!3371 = !DILocalVariable(name: "retval", scope: !3358, file: !3, line: 1127, type: !6)
!3372 = !DILocalVariable(name: "replyid", scope: !3358, file: !3, line: 1129, type: !476)
!3373 = !DILocation(line: 1126, column: 31, scope: !3358)
!3374 = !DILocation(line: 1126, column: 43, scope: !3358)
!3375 = !DILocation(line: 1129, column: 29, scope: !3358)
!3376 = !DILocation(line: 1129, column: 52, scope: !3358)
!3377 = !{!3378, !96, i64 0}
!3378 = !{!"streamID", !96, i64 0, !96, i64 8}
!3379 = !DILocation(line: 1129, column: 59, scope: !3358)
!3380 = !{!3378, !96, i64 8}
!3381 = !DILocation(line: 1129, column: 19, scope: !3358)
!3382 = !DILocation(line: 1129, column: 9, scope: !3358)
!3383 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1130, column: 48, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1130, column: 9)
!3386 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !3384)
!3387 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !3384)
!3388 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !3384)
!3389 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !3384)
!3390 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !3384)
!3391 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !3384)
!3392 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !3384)
!3393 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !3384)
!3394 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !3384)
!3395 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !3384)
!3396 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !3384)
!3397 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !3384)
!3398 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !3384)
!3399 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !3384)
!3400 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !3384)
!3401 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !3384)
!3402 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !3384)
!3403 = !DILocation(line: 0, scope: !486, inlinedAt: !3384)
!3404 = !DILocation(line: 0, scope: !3385)
!3405 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !3384)
!3406 = !DILocation(line: 1130, column: 19, scope: !3385)
!3407 = !DILocation(line: 1127, column: 9, scope: !3358)
!3408 = !DILocation(line: 1130, column: 66, scope: !3385)
!3409 = !DILocation(line: 1130, column: 9, scope: !3358)
!3410 = !DILocation(line: 1131, column: 5, scope: !3358)
!3411 = !DILocation(line: 1132, column: 5, scope: !3358)
!3412 = !DILocation(line: 1133, column: 1, scope: !3358)
!3413 = distinct !DISubprogram(name: "rioWriteStreamPendingEntry", scope: !3, file: !3, line: 1139, type: !3414, isLocal: false, isDefinition: true, scopeLine: 1139, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3448)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!6, !2653, !1189, !598, !600, !3416, !18, !3441}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !3363, line: 79, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !3363, line: 67, size: 192, elements: !3419)
!3419 = !{!3420, !3421, !3422}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !3418, file: !3363, line: 68, baseType: !74, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !3363, line: 69, baseType: !476, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3418, file: !3363, line: 72, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3425, line: 137, baseType: !3426)
!3425 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3425, line: 133, size: 192, elements: !3427)
!3427 = !{!3428, !3439, !3440}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3426, file: !3425, line: 134, baseType: !3429, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3425, line: 131, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3425, line: 98, size: 32, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3431, file: !3425, line: 99, baseType: !53, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3431, file: !3425, line: 100, baseType: !53, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3431, file: !3425, line: 101, baseType: !53, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3431, file: !3425, line: 102, baseType: !53, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3431, file: !3425, line: 130, baseType: !3438, offset: 32)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !37)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3426, file: !3425, line: 135, baseType: !63, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3426, file: !3425, line: 136, baseType: !63, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !3363, line: 87, baseType: !3443)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !3363, line: 82, size: 192, elements: !3444)
!3444 = !{!3445, !3446, !3447}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !3443, file: !3363, line: 83, baseType: !74, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !3443, file: !3363, line: 84, baseType: !63, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !3443, file: !3363, line: 85, baseType: !3416, size: 64, offset: 128)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3449 = !DILocalVariable(name: "r", arg: 1, scope: !3413, file: !3, line: 1139, type: !2653)
!3450 = !DILocalVariable(name: "key", arg: 2, scope: !3413, file: !3, line: 1139, type: !1189)
!3451 = !DILocalVariable(name: "groupname", arg: 3, scope: !3413, file: !3, line: 1139, type: !598)
!3452 = !DILocalVariable(name: "groupname_len", arg: 4, scope: !3413, file: !3, line: 1139, type: !600)
!3453 = !DILocalVariable(name: "consumer", arg: 5, scope: !3413, file: !3, line: 1139, type: !3416)
!3454 = !DILocalVariable(name: "rawid", arg: 6, scope: !3413, file: !3, line: 1139, type: !18)
!3455 = !DILocalVariable(name: "nack", arg: 7, scope: !3413, file: !3, line: 1139, type: !3441)
!3456 = !DILocalVariable(name: "id", scope: !3413, file: !3, line: 1142, type: !3362)
!3457 = !DILocation(line: 1139, column: 37, scope: !3413)
!3458 = !DILocation(line: 1139, column: 46, scope: !3413)
!3459 = !DILocation(line: 1139, column: 63, scope: !3413)
!3460 = !DILocation(line: 1139, column: 81, scope: !3413)
!3461 = !DILocation(line: 1139, column: 112, scope: !3413)
!3462 = !DILocation(line: 1139, column: 137, scope: !3413)
!3463 = !DILocation(line: 1139, column: 156, scope: !3413)
!3464 = !DILocation(line: 1142, column: 5, scope: !3413)
!3465 = !DILocation(line: 1142, column: 14, scope: !3413)
!3466 = !DILocation(line: 1143, column: 5, scope: !3413)
!3467 = !DILocation(line: 1144, column: 9, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1144, column: 9)
!3469 = !DILocation(line: 1144, column: 37, scope: !3468)
!3470 = !DILocation(line: 1144, column: 9, scope: !3413)
!3471 = !DILocation(line: 1144, column: 43, scope: !3468)
!3472 = !DILocation(line: 1145, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1145, column: 9)
!3474 = !DILocation(line: 1145, column: 42, scope: !3473)
!3475 = !DILocation(line: 1145, column: 9, scope: !3413)
!3476 = !DILocation(line: 1145, column: 48, scope: !3473)
!3477 = !DILocation(line: 1146, column: 9, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1146, column: 9)
!3479 = !DILocation(line: 1146, column: 35, scope: !3478)
!3480 = !DILocation(line: 1146, column: 9, scope: !3413)
!3481 = !DILocation(line: 1146, column: 41, scope: !3478)
!3482 = !DILocation(line: 1147, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1147, column: 9)
!3484 = !DILocation(line: 1147, column: 55, scope: !3483)
!3485 = !DILocation(line: 1147, column: 9, scope: !3413)
!3486 = !DILocation(line: 1147, column: 61, scope: !3483)
!3487 = !DILocation(line: 1148, column: 40, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1148, column: 9)
!3489 = !{!3490, !95, i64 8}
!3490 = !{!"streamConsumer", !97, i64 0, !95, i64 8, !95, i64 16}
!3491 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 1148, column: 45, scope: !3488)
!3493 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !3492)
!3494 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !3492)
!3495 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !3492)
!3496 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !3492)
!3497 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !3492)
!3498 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !3492)
!3499 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !3492)
!3500 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !3492)
!3501 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !3492)
!3502 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !3492)
!3503 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !3492)
!3504 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !3492)
!3505 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !3492)
!3506 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !3492)
!3507 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !3492)
!3508 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !3492)
!3509 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !3492)
!3510 = !DILocation(line: 0, scope: !486, inlinedAt: !3492)
!3511 = !DILocation(line: 0, scope: !3488)
!3512 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !3492)
!3513 = !DILocation(line: 1148, column: 9, scope: !3488)
!3514 = !DILocation(line: 1148, column: 69, scope: !3488)
!3515 = !DILocation(line: 1148, column: 9, scope: !3413)
!3516 = !DILocation(line: 1148, column: 75, scope: !3488)
!3517 = !DILocation(line: 1149, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1149, column: 9)
!3519 = !DILocation(line: 1149, column: 37, scope: !3518)
!3520 = !DILocation(line: 1149, column: 9, scope: !3413)
!3521 = !DILocation(line: 1149, column: 43, scope: !3518)
!3522 = !DILocation(line: 1150, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1150, column: 9)
!3524 = !DILocation(line: 1150, column: 37, scope: !3523)
!3525 = !DILocation(line: 1150, column: 9, scope: !3413)
!3526 = !DILocation(line: 1150, column: 43, scope: !3523)
!3527 = !DILocation(line: 1151, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1151, column: 9)
!3529 = !DILocation(line: 1151, column: 40, scope: !3528)
!3530 = !DILocation(line: 1151, column: 9, scope: !3413)
!3531 = !DILocation(line: 1151, column: 46, scope: !3528)
!3532 = !DILocation(line: 1152, column: 38, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1152, column: 9)
!3534 = !{!3535, !97, i64 0}
!3535 = !{!"streamNACK", !97, i64 0, !96, i64 8, !95, i64 16}
!3536 = !DILocation(line: 1152, column: 9, scope: !3533)
!3537 = !DILocation(line: 1152, column: 53, scope: !3533)
!3538 = !DILocation(line: 1152, column: 9, scope: !3413)
!3539 = !DILocation(line: 1152, column: 59, scope: !3533)
!3540 = !DILocation(line: 1153, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1153, column: 9)
!3542 = !DILocation(line: 1153, column: 47, scope: !3541)
!3543 = !DILocation(line: 1153, column: 9, scope: !3413)
!3544 = !DILocation(line: 1153, column: 53, scope: !3541)
!3545 = !DILocation(line: 1154, column: 38, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1154, column: 9)
!3547 = !{!3535, !96, i64 8}
!3548 = !DILocation(line: 1154, column: 9, scope: !3546)
!3549 = !DILocation(line: 1154, column: 54, scope: !3546)
!3550 = !DILocation(line: 1154, column: 9, scope: !3413)
!3551 = !DILocation(line: 1154, column: 60, scope: !3546)
!3552 = !DILocation(line: 1155, column: 9, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1155, column: 9)
!3554 = !DILocation(line: 1155, column: 42, scope: !3553)
!3555 = !DILocation(line: 1155, column: 9, scope: !3413)
!3556 = !DILocation(line: 1155, column: 48, scope: !3553)
!3557 = !DILocation(line: 1156, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1156, column: 9)
!3559 = !DILocation(line: 1156, column: 41, scope: !3558)
!3560 = !DILocation(line: 1156, column: 9, scope: !3413)
!3561 = !DILocation(line: 0, scope: !3413)
!3562 = !DILocation(line: 1156, column: 47, scope: !3558)
!3563 = !DILocation(line: 1158, column: 1, scope: !3413)
!3564 = distinct !DISubprogram(name: "rewriteStreamObject", scope: !3, file: !3, line: 1162, type: !2701, isLocal: false, isDefinition: true, scopeLine: 1162, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3578, !3629, !3630, !3631, !3636, !3637, !3638, !3639, !3642, !3651, !3652, !3654, !3655}
!3566 = !DILocalVariable(name: "r", arg: 1, scope: !3564, file: !3, line: 1162, type: !2653)
!3567 = !DILocalVariable(name: "key", arg: 2, scope: !3564, file: !3, line: 1162, type: !1189)
!3568 = !DILocalVariable(name: "o", arg: 3, scope: !3564, file: !3, line: 1162, type: !1189)
!3569 = !DILocalVariable(name: "s", scope: !3564, file: !3, line: 1163, type: !3570)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !3363, line: 21, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !3363, line: 16, size: 320, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !3572, file: !3363, line: 17, baseType: !3423, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3572, file: !3363, line: 18, baseType: !63, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3572, file: !3363, line: 19, baseType: !3362, size: 128, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3572, file: !3363, line: 20, baseType: !3423, size: 64, offset: 256)
!3578 = !DILocalVariable(name: "si", scope: !3564, file: !3, line: 1164, type: !3579)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !3363, line: 48, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !3363, line: 29, size: 5120, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3591, !3592, !3621, !3622, !3623, !3624, !3628}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3580, file: !3363, line: 30, baseType: !3570, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !3580, file: !3363, line: 31, baseType: !3362, size: 128, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !3580, file: !3363, line: 32, baseType: !63, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !3580, file: !3363, line: 33, baseType: !18, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !3580, file: !3363, line: 34, baseType: !18, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !3580, file: !3363, line: 35, baseType: !6, size: 32, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3580, file: !3363, line: 36, baseType: !6, size: 32, offset: 416)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !3580, file: !3363, line: 37, baseType: !3590, size: 128, offset: 448)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1387)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !3580, file: !3363, line: 38, baseType: !3590, size: 128, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !3580, file: !3363, line: 39, baseType: !3593, size: 3840, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3425, line: 186, baseType: !3594)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3425, line: 175, size: 3840, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3604, !3605, !3615}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3594, file: !3425, line: 176, baseType: !6, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3594, file: !3425, line: 177, baseType: !3423, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3594, file: !3425, line: 178, baseType: !18, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3594, file: !3425, line: 179, baseType: !10, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3594, file: !3425, line: 180, baseType: !600, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3594, file: !3425, line: 181, baseType: !600, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3594, file: !3425, line: 182, baseType: !3603, size: 1024, offset: 384)
!3603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !2177)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3594, file: !3425, line: 183, baseType: !3429, size: 64, offset: 1408)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3594, file: !3425, line: 184, baseType: !3606, size: 2304, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3425, line: 150, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3425, line: 143, size: 2304, elements: !3608)
!3608 = !{!3609, !3611, !3612, !3613, !3614}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3607, file: !3425, line: 144, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3607, file: !3425, line: 145, baseType: !600, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3607, file: !3425, line: 145, baseType: !600, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3607, file: !3425, line: 148, baseType: !2025, size: 2048, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3607, file: !3425, line: 149, baseType: !6, size: 32, offset: 2240)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3594, file: !3425, line: 185, baseType: !3616, size: 64, offset: 3776)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3425, line: 165, baseType: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!6, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !3580, file: !3363, line: 40, baseType: !18, size: 64, offset: 4544)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !3580, file: !3363, line: 41, baseType: !18, size: 64, offset: 4608)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !3580, file: !3363, line: 42, baseType: !18, size: 64, offset: 4672)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !3580, file: !3363, line: 46, baseType: !3625, size: 168, offset: 4736)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !3626)
!3626 = !{!3627}
!3627 = !DISubrange(count: 21)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !3580, file: !3363, line: 47, baseType: !3625, size: 168, offset: 4904)
!3629 = !DILocalVariable(name: "id", scope: !3564, file: !3, line: 1166, type: !3362)
!3630 = !DILocalVariable(name: "numfields", scope: !3564, file: !3, line: 1167, type: !1379)
!3631 = !DILocalVariable(name: "field", scope: !3632, file: !3, line: 1181, type: !18)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1180, column: 32)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1171, column: 56)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1169, column: 20)
!3635 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1169, column: 9)
!3636 = !DILocalVariable(name: "value", scope: !3632, file: !3, line: 1181, type: !18)
!3637 = !DILocalVariable(name: "field_len", scope: !3632, file: !3, line: 1182, type: !1379)
!3638 = !DILocalVariable(name: "value_len", scope: !3632, file: !3, line: 1182, type: !1379)
!3639 = !DILocalVariable(name: "ri", scope: !3640, file: !3, line: 1212, type: !3593)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 1211, column: 21)
!3641 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1211, column: 9)
!3642 = !DILocalVariable(name: "group", scope: !3643, file: !3, line: 1216, type: !3644)
!3643 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1215, column: 29)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !3363, line: 64, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !3363, line: 51, size: 256, elements: !3647)
!3647 = !{!3648, !3649, !3650}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3646, file: !3363, line: 52, baseType: !3362, size: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3646, file: !3363, line: 55, baseType: !3423, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3646, file: !3363, line: 61, baseType: !3423, size: 64, offset: 192)
!3651 = !DILocalVariable(name: "ri_cons", scope: !3643, file: !3, line: 1228, type: !3593)
!3652 = !DILocalVariable(name: "consumer", scope: !3653, file: !3, line: 1232, type: !3416)
!3653 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1231, column: 38)
!3654 = !DILocalVariable(name: "ri_pel", scope: !3653, file: !3, line: 1235, type: !3593)
!3655 = !DILocalVariable(name: "nack", scope: !3656, file: !3, line: 1239, type: !3441)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 1238, column: 41)
!3657 = !DILocation(line: 1162, column: 30, scope: !3564)
!3658 = !DILocation(line: 1162, column: 39, scope: !3564)
!3659 = !DILocation(line: 1162, column: 50, scope: !3564)
!3660 = !DILocation(line: 1163, column: 20, scope: !3564)
!3661 = !DILocation(line: 1163, column: 13, scope: !3564)
!3662 = !DILocation(line: 1164, column: 5, scope: !3564)
!3663 = !DILocation(line: 1164, column: 20, scope: !3564)
!3664 = !DILocation(line: 1165, column: 5, scope: !3564)
!3665 = !DILocation(line: 1166, column: 5, scope: !3564)
!3666 = !DILocation(line: 1167, column: 5, scope: !3564)
!3667 = !DILocation(line: 1169, column: 12, scope: !3635)
!3668 = !{!3669, !96, i64 8}
!3669 = !{!"stream", !95, i64 0, !96, i64 8, !3378, i64 16, !95, i64 32}
!3670 = !DILocation(line: 1169, column: 9, scope: !3635)
!3671 = !DILocation(line: 1169, column: 9, scope: !3564)
!3672 = !DILocation(line: 1166, column: 14, scope: !3564)
!3673 = !DILocation(line: 1167, column: 13, scope: !3564)
!3674 = !DILocation(line: 1171, column: 15, scope: !3634)
!3675 = !DILocation(line: 1171, column: 9, scope: !3634)
!3676 = !DILocation(line: 1176, column: 43, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1176, column: 17)
!3678 = !DILocation(line: 1176, column: 52, scope: !3677)
!3679 = !DILocation(line: 1176, column: 42, scope: !3677)
!3680 = !DILocation(line: 1176, column: 17, scope: !3677)
!3681 = !DILocation(line: 1176, column: 56, scope: !3677)
!3682 = !DILocation(line: 1176, column: 17, scope: !3633)
!3683 = !DILocation(line: 1177, column: 17, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1177, column: 17)
!3685 = !DILocation(line: 1177, column: 48, scope: !3684)
!3686 = !DILocation(line: 1177, column: 17, scope: !3633)
!3687 = !DILocation(line: 1178, column: 17, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1178, column: 17)
!3689 = !DILocation(line: 1178, column: 43, scope: !3688)
!3690 = !DILocation(line: 1178, column: 17, scope: !3633)
!3691 = !DILocation(line: 1179, column: 17, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 1179, column: 17)
!3693 = !DILocation(line: 1179, column: 45, scope: !3692)
!3694 = !DILocation(line: 1179, column: 17, scope: !3633)
!3695 = !DILocation(line: 1180, column: 28, scope: !3633)
!3696 = !DILocation(line: 1180, column: 13, scope: !3633)
!3697 = distinct !{!3697, !3675, !3698}
!3698 = !DILocation(line: 1187, column: 9, scope: !3634)
!3699 = !DILocation(line: 1181, column: 17, scope: !3632)
!3700 = !DILocation(line: 1182, column: 17, scope: !3632)
!3701 = !DILocation(line: 1181, column: 32, scope: !3632)
!3702 = !DILocation(line: 1181, column: 40, scope: !3632)
!3703 = !DILocation(line: 1182, column: 25, scope: !3632)
!3704 = !DILocation(line: 1182, column: 36, scope: !3632)
!3705 = !DILocation(line: 1183, column: 17, scope: !3632)
!3706 = !DILocation(line: 1184, column: 49, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1184, column: 21)
!3708 = !DILocation(line: 1184, column: 55, scope: !3707)
!3709 = !DILocation(line: 1184, column: 21, scope: !3707)
!3710 = !DILocation(line: 1184, column: 66, scope: !3707)
!3711 = !DILocation(line: 1184, column: 21, scope: !3632)
!3712 = !DILocation(line: 1184, column: 72, scope: !3707)
!3713 = !DILocation(line: 1186, column: 13, scope: !3633)
!3714 = !DILocation(line: 1185, column: 49, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1185, column: 21)
!3716 = !DILocation(line: 1185, column: 55, scope: !3715)
!3717 = !DILocation(line: 1185, column: 21, scope: !3715)
!3718 = !DILocation(line: 1185, column: 66, scope: !3715)
!3719 = !DILocation(line: 1185, column: 21, scope: !3632)
!3720 = !DILocation(line: 0, scope: !3633)
!3721 = distinct !{!3721, !3696, !3713}
!3722 = !DILocation(line: 1192, column: 13, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1192, column: 13)
!3724 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1188, column: 12)
!3725 = !DILocation(line: 1192, column: 40, scope: !3723)
!3726 = !DILocation(line: 1192, column: 13, scope: !3724)
!3727 = !DILocation(line: 1193, column: 13, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1193, column: 13)
!3729 = !DILocation(line: 1193, column: 44, scope: !3728)
!3730 = !DILocation(line: 1193, column: 13, scope: !3724)
!3731 = !DILocation(line: 1194, column: 13, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1194, column: 13)
!3733 = !DILocation(line: 1194, column: 39, scope: !3732)
!3734 = !DILocation(line: 1194, column: 13, scope: !3724)
!3735 = !DILocation(line: 1195, column: 13, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1195, column: 13)
!3737 = !DILocation(line: 1195, column: 46, scope: !3736)
!3738 = !DILocation(line: 1195, column: 13, scope: !3724)
!3739 = !DILocation(line: 1196, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1196, column: 13)
!3741 = !DILocation(line: 1196, column: 41, scope: !3740)
!3742 = !DILocation(line: 1196, column: 13, scope: !3724)
!3743 = !DILocation(line: 1197, column: 40, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1197, column: 13)
!3745 = !DILocation(line: 1197, column: 13, scope: !3744)
!3746 = !DILocation(line: 1197, column: 49, scope: !3744)
!3747 = !DILocation(line: 1197, column: 13, scope: !3724)
!3748 = !DILocation(line: 1198, column: 13, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1198, column: 13)
!3750 = !DILocation(line: 1198, column: 41, scope: !3749)
!3751 = !DILocation(line: 1198, column: 13, scope: !3724)
!3752 = !DILocation(line: 1199, column: 13, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 1199, column: 13)
!3754 = !DILocation(line: 1199, column: 41, scope: !3753)
!3755 = !DILocation(line: 1199, column: 13, scope: !3724)
!3756 = !DILocation(line: 1204, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1204, column: 9)
!3758 = !DILocation(line: 1204, column: 36, scope: !3757)
!3759 = !DILocation(line: 1204, column: 9, scope: !3564)
!3760 = !DILocation(line: 1205, column: 9, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1205, column: 9)
!3762 = !DILocation(line: 1205, column: 42, scope: !3761)
!3763 = !DILocation(line: 1205, column: 9, scope: !3564)
!3764 = !DILocation(line: 1206, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1206, column: 9)
!3766 = !DILocation(line: 1206, column: 35, scope: !3765)
!3767 = !DILocation(line: 1206, column: 9, scope: !3564)
!3768 = !DILocation(line: 1207, column: 36, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 1207, column: 9)
!3770 = !DILocation(line: 1207, column: 9, scope: !3769)
!3771 = !DILocation(line: 1207, column: 45, scope: !3769)
!3772 = !DILocation(line: 1207, column: 9, scope: !3564)
!3773 = !DILocation(line: 1211, column: 12, scope: !3641)
!3774 = !{!3669, !95, i64 32}
!3775 = !DILocation(line: 1211, column: 9, scope: !3641)
!3776 = !DILocation(line: 1211, column: 9, scope: !3564)
!3777 = !DILocation(line: 1212, column: 9, scope: !3640)
!3778 = !DILocation(line: 1212, column: 21, scope: !3640)
!3779 = !DILocation(line: 1213, column: 9, scope: !3640)
!3780 = !DILocation(line: 1214, column: 9, scope: !3640)
!3781 = !DILocation(line: 1215, column: 9, scope: !3640)
!3782 = !DILocation(line: 1215, column: 15, scope: !3640)
!3783 = !DILocation(line: 1216, column: 34, scope: !3643)
!3784 = !{!3785, !95, i64 24}
!3785 = !{!"raxIterator", !92, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !96, i64 32, !96, i64 40, !93, i64 48, !95, i64 176, !3786, i64 184, !95, i64 472}
!3786 = !{!"raxStack", !95, i64 0, !96, i64 8, !96, i64 16, !93, i64 24, !92, i64 280}
!3787 = !DILocation(line: 1216, column: 23, scope: !3643)
!3788 = !DILocation(line: 1218, column: 17, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1218, column: 17)
!3790 = !DILocation(line: 1218, column: 44, scope: !3789)
!3791 = !DILocation(line: 1218, column: 17, scope: !3643)
!3792 = !DILocation(line: 1219, column: 17, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1219, column: 17)
!3794 = !DILocation(line: 1219, column: 50, scope: !3793)
!3795 = !DILocation(line: 1219, column: 17, scope: !3643)
!3796 = !DILocation(line: 1220, column: 17, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1220, column: 17)
!3798 = !DILocation(line: 1220, column: 50, scope: !3797)
!3799 = !DILocation(line: 1220, column: 17, scope: !3643)
!3800 = !DILocation(line: 1221, column: 17, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1221, column: 17)
!3802 = !DILocation(line: 1221, column: 43, scope: !3801)
!3803 = !DILocation(line: 1221, column: 17, scope: !3643)
!3804 = !DILocation(line: 1222, column: 48, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1222, column: 17)
!3806 = !{!3785, !95, i64 16}
!3807 = !DILocation(line: 1222, column: 55, scope: !3805)
!3808 = !{!3785, !96, i64 32}
!3809 = !DILocation(line: 1222, column: 17, scope: !3805)
!3810 = !DILocation(line: 1222, column: 64, scope: !3805)
!3811 = !DILocation(line: 1222, column: 17, scope: !3643)
!3812 = !DILocation(line: 1223, column: 48, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1223, column: 17)
!3814 = !DILocation(line: 1223, column: 17, scope: !3813)
!3815 = !DILocation(line: 1223, column: 57, scope: !3813)
!3816 = !DILocation(line: 1223, column: 17, scope: !3643)
!3817 = !DILocation(line: 1228, column: 13, scope: !3643)
!3818 = !DILocation(line: 1229, column: 38, scope: !3643)
!3819 = !{!3820, !95, i64 24}
!3820 = !{!"streamCG", !3378, i64 0, !95, i64 16, !95, i64 24}
!3821 = !DILocation(line: 1228, column: 25, scope: !3643)
!3822 = !DILocation(line: 1229, column: 13, scope: !3643)
!3823 = !DILocation(line: 1230, column: 13, scope: !3643)
!3824 = !DILocation(line: 1231, column: 13, scope: !3643)
!3825 = !DILocation(line: 1231, column: 19, scope: !3643)
!3826 = !DILocation(line: 1232, column: 52, scope: !3653)
!3827 = !DILocation(line: 1232, column: 33, scope: !3653)
!3828 = !DILocation(line: 1235, column: 17, scope: !3653)
!3829 = !DILocation(line: 1236, column: 44, scope: !3653)
!3830 = !{!3490, !95, i64 16}
!3831 = !DILocation(line: 1235, column: 29, scope: !3653)
!3832 = !DILocation(line: 1236, column: 17, scope: !3653)
!3833 = !DILocation(line: 1237, column: 17, scope: !3653)
!3834 = !DILocation(line: 1238, column: 17, scope: !3653)
!3835 = !DILocation(line: 1238, column: 23, scope: !3653)
!3836 = !DILocation(line: 1239, column: 47, scope: !3656)
!3837 = !DILocation(line: 1239, column: 33, scope: !3656)
!3838 = !DILocation(line: 1240, column: 68, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1240, column: 25)
!3840 = !DILocation(line: 1241, column: 55, scope: !3839)
!3841 = !DILocation(line: 1242, column: 59, scope: !3839)
!3842 = !DILocation(line: 1240, column: 25, scope: !3839)
!3843 = !DILocation(line: 1242, column: 69, scope: !3839)
!3844 = !DILocation(line: 1240, column: 25, scope: !3656)
!3845 = !DILocation(line: 0, scope: !3653)
!3846 = distinct !{!3846, !3834, !3847}
!3847 = !DILocation(line: 1246, column: 17, scope: !3653)
!3848 = !DILocation(line: 1248, column: 13, scope: !3643)
!3849 = !DILocation(line: 1250, column: 9, scope: !3640)
!3850 = !DILocation(line: 1247, column: 17, scope: !3653)
!3851 = !DILocation(line: 1249, column: 13, scope: !3643)
!3852 = !DILocation(line: 1252, column: 5, scope: !3641)
!3853 = !DILocation(line: 1251, column: 9, scope: !3640)
!3854 = !DILocation(line: 1254, column: 5, scope: !3564)
!3855 = !DILocation(line: 1255, column: 5, scope: !3564)
!3856 = !DILocation(line: 1256, column: 1, scope: !3564)
!3857 = !DILocation(line: 0, scope: !3753)
!3858 = distinct !DISubprogram(name: "rewriteModuleObject", scope: !3, file: !3, line: 1261, type: !2701, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3936, !3943}
!3860 = !DILocalVariable(name: "r", arg: 1, scope: !3858, file: !3, line: 1261, type: !2653)
!3861 = !DILocalVariable(name: "key", arg: 2, scope: !3858, file: !3, line: 1261, type: !1189)
!3862 = !DILocalVariable(name: "o", arg: 3, scope: !3858, file: !3, line: 1261, type: !1189)
!3863 = !DILocalVariable(name: "io", scope: !3858, file: !3, line: 1262, type: !3864)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleIO", file: !75, line: 564, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !75, line: 555, size: 384, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3930, !3931, !3932, !3935}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3865, file: !75, line: 556, baseType: !600, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !3865, file: !75, line: 557, baseType: !2653, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3865, file: !75, line: 558, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !75, line: 530, baseType: !3872)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !75, line: 517, size: 768, elements: !3873)
!3873 = !{!3874, !3875, !3878, !3884, !3889, !3895, !3900, !3913, !3915, !3920, !3925, !3926}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3872, file: !75, line: 518, baseType: !63, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3872, file: !75, line: 519, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !75, line: 496, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !3872, file: !75, line: 520, baseType: !3879, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !75, line: 506, baseType: !3880)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!10, !3883, !6}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !3872, file: !75, line: 521, baseType: !3885, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !75, line: 507, baseType: !3886)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3883, !10}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !3872, file: !75, line: 522, baseType: !3890, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !75, line: 510, baseType: !3891)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3883, !3894, !10}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !3872, file: !75, line: 523, baseType: !3896, size: 64, offset: 320)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !75, line: 512, baseType: !3897)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!600, !1344}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !3872, file: !75, line: 524, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !75, line: 511, baseType: !3902)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !3905, !10}
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !75, line: 583, size: 320, elements: !3907)
!3907 = !{!3908, !3912}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !3906, file: !75, line: 584, baseType: !3909, size: 160)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !3910)
!3910 = !{!3911}
!3911 = !DISubrange(count: 20)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3906, file: !75, line: 585, baseType: !3909, size: 160, offset: 160)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3872, file: !75, line: 525, baseType: !3914, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !75, line: 513, baseType: !1409)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !3872, file: !75, line: 526, baseType: !3916, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !75, line: 508, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!6, !3883, !6, !6}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !3872, file: !75, line: 527, baseType: !3921, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !75, line: 509, baseType: !3922)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3883, !6}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !3872, file: !75, line: 528, baseType: !6, size: 32, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3872, file: !75, line: 529, baseType: !3927, size: 80, offset: 672)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !3928)
!3928 = !{!3929}
!3929 = !DISubrange(count: 10)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3865, file: !75, line: 559, baseType: !6, size: 32, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !3865, file: !75, line: 560, baseType: !6, size: 32, offset: 224)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3865, file: !75, line: 562, baseType: !3933, size: 64, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !75, line: 499, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3865, file: !75, line: 563, baseType: !3894, size: 64, offset: 320)
!3936 = !DILocalVariable(name: "mv", scope: !3858, file: !3, line: 1263, type: !3937)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !75, line: 550, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !75, line: 547, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3939, file: !75, line: 548, baseType: !3870, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3939, file: !75, line: 549, baseType: !10, size: 64, offset: 64)
!3943 = !DILocalVariable(name: "mt", scope: !3858, file: !3, line: 1264, type: !3870)
!3944 = !DILocation(line: 1261, column: 30, scope: !3858)
!3945 = !DILocation(line: 1261, column: 39, scope: !3858)
!3946 = !DILocation(line: 1261, column: 50, scope: !3858)
!3947 = !DILocation(line: 1262, column: 5, scope: !3858)
!3948 = !DILocation(line: 1263, column: 26, scope: !3858)
!3949 = !DILocation(line: 1263, column: 18, scope: !3858)
!3950 = !DILocation(line: 1264, column: 26, scope: !3858)
!3951 = !{!3952, !95, i64 0}
!3952 = !{!"moduleValue", !95, i64 0, !95, i64 8}
!3953 = !DILocation(line: 1264, column: 17, scope: !3858)
!3954 = !DILocation(line: 1265, column: 5, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1265, column: 5)
!3956 = !{!3957, !95, i64 8}
!3957 = !{!"RedisModuleIO", !96, i64 0, !95, i64 8, !95, i64 16, !92, i64 24, !92, i64 28, !95, i64 32, !95, i64 40}
!3958 = !{!3957, !95, i64 16}
!3959 = !{!3957, !96, i64 0}
!3960 = !{!3957, !92, i64 24}
!3961 = !{!3957, !92, i64 28}
!3962 = !{!3957, !95, i64 40}
!3963 = !{!3957, !95, i64 32}
!3964 = !DILocation(line: 1266, column: 9, scope: !3858)
!3965 = !{!3966, !95, i64 32}
!3966 = !{!"RedisModuleType", !96, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !92, i64 80, !93, i64 84}
!3967 = !DILocation(line: 1266, column: 33, scope: !3858)
!3968 = !{!3952, !95, i64 8}
!3969 = !DILocation(line: 1262, column: 19, scope: !3858)
!3970 = !DILocation(line: 1266, column: 5, scope: !3858)
!3971 = !DILocation(line: 1267, column: 12, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1267, column: 9)
!3973 = !DILocation(line: 1267, column: 9, scope: !3972)
!3974 = !DILocation(line: 1267, column: 9, scope: !3858)
!3975 = !DILocation(line: 1268, column: 9, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 1267, column: 17)
!3977 = !DILocation(line: 1269, column: 18, scope: !3976)
!3978 = !DILocation(line: 1269, column: 9, scope: !3976)
!3979 = !DILocation(line: 1270, column: 5, scope: !3976)
!3980 = !DILocation(line: 1271, column: 15, scope: !3858)
!3981 = !DILocation(line: 1271, column: 12, scope: !3858)
!3982 = !DILocation(line: 1272, column: 1, scope: !3858)
!3983 = !DILocation(line: 1271, column: 5, scope: !3858)
!3984 = distinct !DISubprogram(name: "aofReadDiffFromParent", scope: !3, file: !3, line: 1277, type: !3985, isLocal: false, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!11}
!3987 = !{!3988, !3992, !3993}
!3988 = !DILocalVariable(name: "buf", scope: !3984, file: !3, line: 1278, type: !3989)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 524288, elements: !3990)
!3990 = !{!3991}
!3991 = !DISubrange(count: 65536)
!3992 = !DILocalVariable(name: "nread", scope: !3984, file: !3, line: 1279, type: !11)
!3993 = !DILocalVariable(name: "total", scope: !3984, file: !3, line: 1279, type: !11)
!3994 = !DILocation(line: 1278, column: 5, scope: !3984)
!3995 = !DILocation(line: 1278, column: 10, scope: !3984)
!3996 = !DILocation(line: 1279, column: 20, scope: !3984)
!3997 = !DILocation(line: 1281, column: 5, scope: !3984)
!3998 = !DILocation(line: 1282, column: 25, scope: !3984)
!3999 = !DILocation(line: 1282, column: 13, scope: !3984)
!4000 = !DILocation(line: 1279, column: 13, scope: !3984)
!4001 = !DILocation(line: 1282, column: 74, scope: !3984)
!4002 = !DILocation(line: 1283, column: 50, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 1282, column: 79)
!4004 = !{!91, !95, i64 2072}
!4005 = !DILocation(line: 1283, column: 33, scope: !4003)
!4006 = !DILocation(line: 1283, column: 31, scope: !4003)
!4007 = !DILocation(line: 1284, column: 15, scope: !4003)
!4008 = distinct !{!4008, !3997, !4009}
!4009 = !DILocation(line: 1285, column: 5, scope: !3984)
!4010 = !DILocation(line: 0, scope: !4003)
!4011 = !DILocation(line: 1287, column: 1, scope: !3984)
!4012 = !DILocation(line: 1286, column: 5, scope: !3984)
!4013 = distinct !DISubprogram(name: "rewriteAppendOnlyFileRio", scope: !3, file: !3, line: 1289, type: !4014, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!6, !2653}
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022, !4029, !4030, !4031, !4033, !4034, !4035, !4036, !4042}
!4017 = !DILocalVariable(name: "aof", arg: 1, scope: !4013, file: !3, line: 1289, type: !2653)
!4018 = !DILocalVariable(name: "di", scope: !4013, file: !3, line: 1290, type: !2853)
!4019 = !DILocalVariable(name: "de", scope: !4013, file: !3, line: 1291, type: !1368)
!4020 = !DILocalVariable(name: "processed", scope: !4013, file: !3, line: 1292, type: !600)
!4021 = !DILocalVariable(name: "j", scope: !4013, file: !3, line: 1293, type: !6)
!4022 = !DILocalVariable(name: "selectcmd", scope: !4023, file: !3, line: 1296, type: !4026)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 1295, column: 40)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1295, column: 5)
!4025 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 1295, column: 5)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 136, elements: !4027)
!4027 = !{!4028}
!4028 = !DISubrange(count: 17)
!4029 = !DILocalVariable(name: "db", scope: !4023, file: !3, line: 1297, type: !1325)
!4030 = !DILocalVariable(name: "d", scope: !4023, file: !3, line: 1298, type: !1330)
!4031 = !DILocalVariable(name: "keystr", scope: !4032, file: !3, line: 1308, type: !476)
!4032 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1307, column: 44)
!4033 = !DILocalVariable(name: "key", scope: !4032, file: !3, line: 1309, type: !1190)
!4034 = !DILocalVariable(name: "o", scope: !4032, file: !3, line: 1309, type: !1189)
!4035 = !DILocalVariable(name: "expiretime", scope: !4032, file: !3, line: 1310, type: !16)
!4036 = !DILocalVariable(name: "cmd", scope: !4037, file: !3, line: 1321, type: !4039)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1319, column: 40)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1319, column: 17)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 14)
!4042 = !DILocalVariable(name: "cmd", scope: !4043, file: !3, line: 1343, type: !4045)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1342, column: 35)
!4044 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1342, column: 17)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !3910)
!4046 = !DILocation(line: 1278, column: 10, scope: !3984, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 1351, column: 17, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 1349, column: 80)
!4049 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1349, column: 17)
!4050 = !DILocation(line: 1289, column: 35, scope: !4013)
!4051 = !DILocation(line: 1290, column: 19, scope: !4013)
!4052 = !DILocation(line: 1292, column: 12, scope: !4013)
!4053 = !DILocation(line: 1293, column: 9, scope: !4013)
!4054 = !DILocation(line: 1295, column: 10, scope: !4025)
!4055 = !DILocation(line: 1295, column: 28, scope: !4024)
!4056 = !{!91, !92, i64 1792}
!4057 = !DILocation(line: 1295, column: 19, scope: !4024)
!4058 = !DILocation(line: 1295, column: 5, scope: !4025)
!4059 = !DILocation(line: 1296, column: 9, scope: !4023)
!4060 = !DILocation(line: 1296, column: 14, scope: !4023)
!4061 = !DILocation(line: 1297, column: 30, scope: !4023)
!4062 = !{!91, !95, i64 48}
!4063 = !DILocation(line: 1297, column: 32, scope: !4023)
!4064 = !DILocation(line: 1297, column: 18, scope: !4023)
!4065 = !DILocation(line: 1298, column: 23, scope: !4023)
!4066 = !{!4067, !95, i64 0}
!4067 = !{!"redisDb", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !92, i64 40, !97, i64 48, !95, i64 56}
!4068 = !DILocation(line: 1298, column: 15, scope: !4023)
!4069 = !DILocation(line: 1299, column: 13, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1299, column: 13)
!4071 = !{!4072, !96, i64 24}
!4072 = !{!"dictht", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!4073 = !DILocation(line: 1299, column: 25, scope: !4070)
!4074 = !DILocation(line: 1299, column: 13, scope: !4023)
!4075 = !DILocation(line: 1299, column: 31, scope: !4070)
!4076 = !DILocation(line: 1300, column: 14, scope: !4023)
!4077 = !DILocalVariable(name: "r", arg: 1, scope: !4078, file: !2121, line: 93, type: !2653)
!4078 = distinct !DISubprogram(name: "rioWrite", scope: !2121, file: !2121, line: 93, type: !4079, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!473, !2653, !1344, !473}
!4081 = !{!4077, !4082, !4083, !4084}
!4082 = !DILocalVariable(name: "buf", arg: 2, scope: !4078, file: !2121, line: 93, type: !1344)
!4083 = !DILocalVariable(name: "len", arg: 3, scope: !4078, file: !2121, line: 93, type: !473)
!4084 = !DILocalVariable(name: "bytes_to_write", scope: !4085, file: !2121, line: 95, type: !473)
!4085 = distinct !DILexicalBlock(scope: !4078, file: !2121, line: 94, column: 17)
!4086 = !DILocation(line: 93, column: 36, scope: !4078, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 1303, column: 13, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1303, column: 13)
!4089 = !DILocation(line: 93, column: 51, scope: !4078, inlinedAt: !4087)
!4090 = !DILocation(line: 93, column: 63, scope: !4078, inlinedAt: !4087)
!4091 = !DILocation(line: 94, column: 5, scope: !4078, inlinedAt: !4087)
!4092 = !DILocation(line: 95, column: 37, scope: !4085, inlinedAt: !4087)
!4093 = !{!4094, !96, i64 56}
!4094 = !{!"_rio", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !93, i64 64}
!4095 = !DILocation(line: 95, column: 34, scope: !4085, inlinedAt: !4087)
!4096 = !DILocation(line: 95, column: 58, scope: !4085, inlinedAt: !4087)
!4097 = !DILocation(line: 95, column: 85, scope: !4085, inlinedAt: !4087)
!4098 = !DILocation(line: 95, column: 33, scope: !4085, inlinedAt: !4087)
!4099 = !DILocation(line: 95, column: 16, scope: !4085, inlinedAt: !4087)
!4100 = !DILocation(line: 96, column: 16, scope: !4101, inlinedAt: !4087)
!4101 = distinct !DILexicalBlock(scope: !4085, file: !2121, line: 96, column: 13)
!4102 = !{!4094, !95, i64 32}
!4103 = !DILocation(line: 96, column: 13, scope: !4101, inlinedAt: !4087)
!4104 = !DILocation(line: 96, column: 13, scope: !4085, inlinedAt: !4087)
!4105 = !DILocation(line: 96, column: 30, scope: !4101, inlinedAt: !4087)
!4106 = !DILocation(line: 97, column: 16, scope: !4107, inlinedAt: !4087)
!4107 = distinct !DILexicalBlock(scope: !4085, file: !2121, line: 97, column: 13)
!4108 = !{!4094, !95, i64 8}
!4109 = !DILocation(line: 97, column: 13, scope: !4107, inlinedAt: !4087)
!4110 = !DILocation(line: 97, column: 44, scope: !4107, inlinedAt: !4087)
!4111 = !DILocation(line: 97, column: 13, scope: !4085, inlinedAt: !4087)
!4112 = !DILocation(line: 99, column: 26, scope: !4085, inlinedAt: !4087)
!4113 = !DILocation(line: 100, column: 13, scope: !4085, inlinedAt: !4087)
!4114 = !DILocation(line: 101, column: 28, scope: !4085, inlinedAt: !4087)
!4115 = !{!4094, !96, i64 48}
!4116 = !DILocation(line: 102, column: 5, scope: !4078, inlinedAt: !4087)
!4117 = !DILocation(line: 98, column: 13, scope: !4107, inlinedAt: !4087)
!4118 = !DILocation(line: 104, column: 1, scope: !4078, inlinedAt: !4087)
!4119 = !DILocation(line: 1303, column: 13, scope: !4023)
!4120 = !DILocation(line: 1303, column: 63, scope: !4088)
!4121 = !DILocation(line: 103, column: 5, scope: !4078, inlinedAt: !4087)
!4122 = !DILocation(line: 1304, column: 13, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 1304, column: 13)
!4124 = !DILocation(line: 1304, column: 41, scope: !4123)
!4125 = !DILocation(line: 1304, column: 13, scope: !4023)
!4126 = !DILocation(line: 1307, column: 21, scope: !4023)
!4127 = !DILocation(line: 1291, column: 16, scope: !4013)
!4128 = !DILocation(line: 1307, column: 35, scope: !4023)
!4129 = !DILocation(line: 1307, column: 9, scope: !4023)
!4130 = !DILocation(line: 1309, column: 13, scope: !4032)
!4131 = !DILocation(line: 1312, column: 22, scope: !4032)
!4132 = !DILocation(line: 1308, column: 17, scope: !4032)
!4133 = !DILocation(line: 1313, column: 17, scope: !4032)
!4134 = !DILocation(line: 1309, column: 24, scope: !4032)
!4135 = !DILocation(line: 1314, column: 13, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4032, file: !3, line: 1314, column: 13)
!4137 = !{!1242, !92, i64 4}
!4138 = !DILocation(line: 1309, column: 18, scope: !4032)
!4139 = !DILocation(line: 1316, column: 26, scope: !4032)
!4140 = !DILocation(line: 1310, column: 23, scope: !4032)
!4141 = !DILocation(line: 1319, column: 20, scope: !4038)
!4142 = !DILocation(line: 1319, column: 25, scope: !4038)
!4143 = !DILocation(line: 1319, column: 17, scope: !4032)
!4144 = !DILocation(line: 1321, column: 17, scope: !4037)
!4145 = !DILocation(line: 1321, column: 22, scope: !4037)
!4146 = !DILocation(line: 93, column: 36, scope: !4078, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1322, column: 21, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 1322, column: 21)
!4149 = !DILocation(line: 93, column: 51, scope: !4078, inlinedAt: !4147)
!4150 = !DILocation(line: 93, column: 63, scope: !4078, inlinedAt: !4147)
!4151 = !DILocation(line: 94, column: 5, scope: !4078, inlinedAt: !4147)
!4152 = !DILocation(line: 95, column: 37, scope: !4085, inlinedAt: !4147)
!4153 = !DILocation(line: 95, column: 34, scope: !4085, inlinedAt: !4147)
!4154 = !DILocation(line: 95, column: 58, scope: !4085, inlinedAt: !4147)
!4155 = !DILocation(line: 95, column: 85, scope: !4085, inlinedAt: !4147)
!4156 = !DILocation(line: 95, column: 33, scope: !4085, inlinedAt: !4147)
!4157 = !DILocation(line: 95, column: 16, scope: !4085, inlinedAt: !4147)
!4158 = !DILocation(line: 96, column: 16, scope: !4101, inlinedAt: !4147)
!4159 = !DILocation(line: 96, column: 13, scope: !4101, inlinedAt: !4147)
!4160 = !DILocation(line: 96, column: 13, scope: !4085, inlinedAt: !4147)
!4161 = !DILocation(line: 96, column: 30, scope: !4101, inlinedAt: !4147)
!4162 = !DILocation(line: 97, column: 16, scope: !4107, inlinedAt: !4147)
!4163 = !DILocation(line: 97, column: 13, scope: !4107, inlinedAt: !4147)
!4164 = !DILocation(line: 97, column: 44, scope: !4107, inlinedAt: !4147)
!4165 = !DILocation(line: 97, column: 13, scope: !4085, inlinedAt: !4147)
!4166 = !DILocation(line: 99, column: 26, scope: !4085, inlinedAt: !4147)
!4167 = !DILocation(line: 100, column: 13, scope: !4085, inlinedAt: !4147)
!4168 = !DILocation(line: 101, column: 28, scope: !4085, inlinedAt: !4147)
!4169 = !DILocation(line: 102, column: 5, scope: !4078, inlinedAt: !4147)
!4170 = !DILocation(line: 98, column: 13, scope: !4107, inlinedAt: !4147)
!4171 = !DILocation(line: 104, column: 1, scope: !4078, inlinedAt: !4147)
!4172 = !DILocation(line: 1322, column: 21, scope: !4037)
!4173 = !DILocation(line: 1322, column: 59, scope: !4148)
!4174 = !DILocation(line: 103, column: 5, scope: !4078, inlinedAt: !4147)
!4175 = !DILocation(line: 1324, column: 21, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 1324, column: 21)
!4177 = !DILocation(line: 1324, column: 50, scope: !4176)
!4178 = !DILocation(line: 1324, column: 21, scope: !4037)
!4179 = !DILocation(line: 1325, column: 21, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 1325, column: 21)
!4181 = !DILocation(line: 1325, column: 47, scope: !4180)
!4182 = !DILocation(line: 1325, column: 21, scope: !4037)
!4183 = !DILocation(line: 0, scope: !4038)
!4184 = !DILocation(line: 0, scope: !4176)
!4185 = !DILocation(line: 1326, column: 13, scope: !4038)
!4186 = !DILocation(line: 1326, column: 32, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1326, column: 24)
!4188 = !DILocation(line: 1326, column: 24, scope: !4038)
!4189 = !DILocation(line: 1327, column: 21, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 1327, column: 21)
!4191 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 1326, column: 45)
!4192 = !DILocation(line: 1327, column: 51, scope: !4190)
!4193 = !DILocation(line: 1327, column: 21, scope: !4191)
!4194 = !DILocation(line: 1328, column: 32, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 1328, column: 24)
!4196 = !DILocation(line: 1328, column: 24, scope: !4187)
!4197 = !DILocation(line: 1329, column: 21, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 1329, column: 21)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 1328, column: 44)
!4200 = !DILocation(line: 1329, column: 50, scope: !4198)
!4201 = !DILocation(line: 1329, column: 21, scope: !4199)
!4202 = !DILocation(line: 1330, column: 32, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 1330, column: 24)
!4204 = !DILocation(line: 1330, column: 24, scope: !4195)
!4205 = !DILocation(line: 1331, column: 21, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 1331, column: 21)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1330, column: 45)
!4208 = !DILocation(line: 1331, column: 56, scope: !4206)
!4209 = !DILocation(line: 1331, column: 21, scope: !4207)
!4210 = !DILocation(line: 1332, column: 32, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1332, column: 24)
!4212 = !DILocation(line: 1332, column: 24, scope: !4203)
!4213 = !DILocation(line: 1333, column: 21, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 1333, column: 21)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 1332, column: 45)
!4216 = !DILocation(line: 1333, column: 51, scope: !4214)
!4217 = !DILocation(line: 1333, column: 21, scope: !4215)
!4218 = !DILocation(line: 1334, column: 32, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 1334, column: 24)
!4220 = !DILocation(line: 1334, column: 24, scope: !4211)
!4221 = !DILocation(line: 1335, column: 21, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 1335, column: 21)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 1334, column: 47)
!4224 = !DILocation(line: 1335, column: 53, scope: !4222)
!4225 = !DILocation(line: 1335, column: 21, scope: !4223)
!4226 = !DILocation(line: 1336, column: 32, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 1336, column: 24)
!4228 = !DILocation(line: 1336, column: 24, scope: !4219)
!4229 = !DILocation(line: 1261, column: 30, scope: !3858, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 1337, column: 21, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 1337, column: 21)
!4232 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 1336, column: 47)
!4233 = !DILocation(line: 1261, column: 39, scope: !3858, inlinedAt: !4230)
!4234 = !DILocation(line: 1261, column: 50, scope: !3858, inlinedAt: !4230)
!4235 = !DILocation(line: 1262, column: 5, scope: !3858, inlinedAt: !4230)
!4236 = !DILocation(line: 1263, column: 26, scope: !3858, inlinedAt: !4230)
!4237 = !DILocation(line: 1263, column: 18, scope: !3858, inlinedAt: !4230)
!4238 = !DILocation(line: 1264, column: 26, scope: !3858, inlinedAt: !4230)
!4239 = !DILocation(line: 1264, column: 17, scope: !3858, inlinedAt: !4230)
!4240 = !DILocation(line: 1265, column: 5, scope: !3955, inlinedAt: !4230)
!4241 = !DILocation(line: 1266, column: 9, scope: !3858, inlinedAt: !4230)
!4242 = !DILocation(line: 1266, column: 33, scope: !3858, inlinedAt: !4230)
!4243 = !DILocation(line: 1262, column: 19, scope: !3858, inlinedAt: !4230)
!4244 = !DILocation(line: 1266, column: 5, scope: !3858, inlinedAt: !4230)
!4245 = !DILocation(line: 1267, column: 12, scope: !3972, inlinedAt: !4230)
!4246 = !DILocation(line: 1267, column: 9, scope: !3972, inlinedAt: !4230)
!4247 = !DILocation(line: 1267, column: 9, scope: !3858, inlinedAt: !4230)
!4248 = !DILocation(line: 1268, column: 9, scope: !3976, inlinedAt: !4230)
!4249 = !DILocation(line: 1269, column: 18, scope: !3976, inlinedAt: !4230)
!4250 = !DILocation(line: 1269, column: 9, scope: !3976, inlinedAt: !4230)
!4251 = !DILocation(line: 1270, column: 5, scope: !3976, inlinedAt: !4230)
!4252 = !DILocation(line: 1271, column: 15, scope: !3858, inlinedAt: !4230)
!4253 = !DILocation(line: 1271, column: 12, scope: !3858, inlinedAt: !4230)
!4254 = !DILocation(line: 1272, column: 1, scope: !3858, inlinedAt: !4230)
!4255 = !DILocation(line: 1271, column: 5, scope: !3858, inlinedAt: !4230)
!4256 = !DILocation(line: 1337, column: 21, scope: !4232)
!4257 = !DILocation(line: 1339, column: 17, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 1338, column: 20)
!4259 = !DILocation(line: 1342, column: 28, scope: !4044)
!4260 = !DILocation(line: 1342, column: 17, scope: !4032)
!4261 = !DILocation(line: 1343, column: 17, scope: !4043)
!4262 = !DILocation(line: 1343, column: 22, scope: !4043)
!4263 = !DILocation(line: 93, column: 36, scope: !4078, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 1344, column: 21, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1344, column: 21)
!4266 = !DILocation(line: 93, column: 51, scope: !4078, inlinedAt: !4264)
!4267 = !DILocation(line: 93, column: 63, scope: !4078, inlinedAt: !4264)
!4268 = !DILocation(line: 94, column: 5, scope: !4078, inlinedAt: !4264)
!4269 = !DILocation(line: 95, column: 37, scope: !4085, inlinedAt: !4264)
!4270 = !DILocation(line: 95, column: 34, scope: !4085, inlinedAt: !4264)
!4271 = !DILocation(line: 95, column: 58, scope: !4085, inlinedAt: !4264)
!4272 = !DILocation(line: 95, column: 85, scope: !4085, inlinedAt: !4264)
!4273 = !DILocation(line: 95, column: 33, scope: !4085, inlinedAt: !4264)
!4274 = !DILocation(line: 95, column: 16, scope: !4085, inlinedAt: !4264)
!4275 = !DILocation(line: 96, column: 16, scope: !4101, inlinedAt: !4264)
!4276 = !DILocation(line: 96, column: 13, scope: !4101, inlinedAt: !4264)
!4277 = !DILocation(line: 96, column: 13, scope: !4085, inlinedAt: !4264)
!4278 = !DILocation(line: 96, column: 30, scope: !4101, inlinedAt: !4264)
!4279 = !DILocation(line: 97, column: 16, scope: !4107, inlinedAt: !4264)
!4280 = !DILocation(line: 97, column: 13, scope: !4107, inlinedAt: !4264)
!4281 = !DILocation(line: 97, column: 44, scope: !4107, inlinedAt: !4264)
!4282 = !DILocation(line: 97, column: 13, scope: !4085, inlinedAt: !4264)
!4283 = !DILocation(line: 99, column: 26, scope: !4085, inlinedAt: !4264)
!4284 = !DILocation(line: 100, column: 13, scope: !4085, inlinedAt: !4264)
!4285 = !DILocation(line: 101, column: 28, scope: !4085, inlinedAt: !4264)
!4286 = !DILocation(line: 102, column: 5, scope: !4078, inlinedAt: !4264)
!4287 = !DILocation(line: 98, column: 13, scope: !4107, inlinedAt: !4264)
!4288 = !DILocation(line: 104, column: 1, scope: !4078, inlinedAt: !4264)
!4289 = !DILocation(line: 1344, column: 21, scope: !4043)
!4290 = !DILocation(line: 1344, column: 59, scope: !4265)
!4291 = !DILocation(line: 103, column: 5, scope: !4078, inlinedAt: !4264)
!4292 = !DILocation(line: 1345, column: 21, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1345, column: 21)
!4294 = !DILocation(line: 1345, column: 50, scope: !4293)
!4295 = !DILocation(line: 1345, column: 21, scope: !4043)
!4296 = !DILocation(line: 1346, column: 21, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1346, column: 21)
!4298 = !DILocation(line: 1346, column: 58, scope: !4297)
!4299 = !DILocation(line: 1346, column: 21, scope: !4043)
!4300 = !DILocation(line: 0, scope: !4044)
!4301 = !DILocation(line: 0, scope: !4293)
!4302 = !DILocation(line: 1347, column: 13, scope: !4044)
!4303 = !DILocation(line: 1349, column: 22, scope: !4049)
!4304 = !DILocation(line: 1349, column: 49, scope: !4049)
!4305 = !DILocation(line: 1349, column: 38, scope: !4049)
!4306 = !DILocation(line: 1349, column: 17, scope: !4032)
!4307 = !DILocation(line: 1278, column: 5, scope: !3984, inlinedAt: !4047)
!4308 = !DILocation(line: 1279, column: 20, scope: !3984, inlinedAt: !4047)
!4309 = !DILocation(line: 1281, column: 5, scope: !3984, inlinedAt: !4047)
!4310 = !DILocation(line: 1282, column: 25, scope: !3984, inlinedAt: !4047)
!4311 = !DILocation(line: 1282, column: 13, scope: !3984, inlinedAt: !4047)
!4312 = !DILocation(line: 1279, column: 13, scope: !3984, inlinedAt: !4047)
!4313 = !DILocation(line: 1282, column: 74, scope: !3984, inlinedAt: !4047)
!4314 = !DILocation(line: 1283, column: 50, scope: !4003, inlinedAt: !4047)
!4315 = !DILocation(line: 1283, column: 33, scope: !4003, inlinedAt: !4047)
!4316 = !DILocation(line: 1283, column: 31, scope: !4003, inlinedAt: !4047)
!4317 = !DILocation(line: 1287, column: 1, scope: !3984, inlinedAt: !4047)
!4318 = !DILocation(line: 1286, column: 5, scope: !3984, inlinedAt: !4047)
!4319 = !DILocation(line: 1352, column: 13, scope: !4048)
!4320 = !DILocation(line: 1353, column: 9, scope: !4023)
!4321 = !DILocation(line: 0, scope: !4013)
!4322 = !DILocation(line: 0, scope: !4048)
!4323 = !DILocation(line: 1354, column: 9, scope: !4023)
!4324 = !DILocation(line: 1356, column: 5, scope: !4024)
!4325 = !DILocation(line: 1295, column: 36, scope: !4024)
!4326 = !DILocation(line: 1295, column: 5, scope: !4024)
!4327 = distinct !{!4327, !4058, !4328}
!4328 = !DILocation(line: 1356, column: 5, scope: !4025)
!4329 = !DILocation(line: 1360, column: 9, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 1360, column: 9)
!4331 = !DILocation(line: 1360, column: 9, scope: !4013)
!4332 = !DILocation(line: 1360, column: 13, scope: !4330)
!4333 = !DILocation(line: 1362, column: 1, scope: !4013)
!4334 = distinct !DISubprogram(name: "rewriteAppendOnlyFile", scope: !3, file: !3, line: 1371, type: !1867, isLocal: false, isDefinition: true, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4335)
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341, !4344, !4345}
!4336 = !DILocalVariable(name: "filename", arg: 1, scope: !4334, file: !3, line: 1371, type: !20)
!4337 = !DILocalVariable(name: "aof", scope: !4334, file: !3, line: 1372, type: !2120)
!4338 = !DILocalVariable(name: "fp", scope: !4334, file: !3, line: 1373, type: !1873)
!4339 = !DILocalVariable(name: "tmpfile", scope: !4334, file: !3, line: 1374, type: !925)
!4340 = !DILocalVariable(name: "byte", scope: !4334, file: !3, line: 1375, type: !21)
!4341 = !DILocalVariable(name: "error", scope: !4342, file: !3, line: 1393, type: !6)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 1392, column: 38)
!4343 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1392, column: 9)
!4344 = !DILocalVariable(name: "nodata", scope: !4334, file: !3, line: 1413, type: !6)
!4345 = !DILocalVariable(name: "start", scope: !4334, file: !3, line: 1414, type: !74)
!4346 = !DILocation(line: 1278, column: 10, scope: !3984, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 1438, column: 5, scope: !4334)
!4348 = !DILocation(line: 1278, column: 10, scope: !3984, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 1423, column: 9, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1415, column: 49)
!4351 = !DILocation(line: 1371, column: 33, scope: !4334)
!4352 = !DILocation(line: 1372, column: 5, scope: !4334)
!4353 = !DILocation(line: 1374, column: 5, scope: !4334)
!4354 = !DILocation(line: 1374, column: 10, scope: !4334)
!4355 = !DILocation(line: 1375, column: 10, scope: !4334)
!4356 = !DILocation(line: 1375, column: 5, scope: !4334)
!4357 = !DILocation(line: 1379, column: 58, scope: !4334)
!4358 = !DILocation(line: 1379, column: 5, scope: !4334)
!4359 = !DILocation(line: 1380, column: 10, scope: !4334)
!4360 = !DILocation(line: 1373, column: 11, scope: !4334)
!4361 = !DILocation(line: 1381, column: 10, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1381, column: 9)
!4363 = !DILocation(line: 1381, column: 9, scope: !4334)
!4364 = !DILocation(line: 1382, column: 112, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 1381, column: 14)
!4366 = !DILocation(line: 1382, column: 103, scope: !4365)
!4367 = !DILocation(line: 1382, column: 9, scope: !4365)
!4368 = !DILocation(line: 1383, column: 9, scope: !4365)
!4369 = !DILocation(line: 1386, column: 29, scope: !4334)
!4370 = !DILocation(line: 1386, column: 27, scope: !4334)
!4371 = !DILocation(line: 1372, column: 9, scope: !4334)
!4372 = !DILocation(line: 1387, column: 5, scope: !4334)
!4373 = !DILocation(line: 1389, column: 16, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1389, column: 9)
!4375 = !{!91, !92, i64 2016}
!4376 = !DILocation(line: 1389, column: 9, scope: !4374)
!4377 = !DILocation(line: 1389, column: 9, scope: !4334)
!4378 = !DILocation(line: 1390, column: 9, scope: !4374)
!4379 = !DILocation(line: 1392, column: 16, scope: !4343)
!4380 = !{!91, !92, i64 2036}
!4381 = !DILocation(line: 1392, column: 9, scope: !4343)
!4382 = !DILocation(line: 1392, column: 9, scope: !4334)
!4383 = !DILocation(line: 1393, column: 9, scope: !4342)
!4384 = !DILocation(line: 1393, column: 13, scope: !4342)
!4385 = !DILocation(line: 1394, column: 13, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 1394, column: 13)
!4387 = !DILocation(line: 1394, column: 64, scope: !4386)
!4388 = !DILocation(line: 1394, column: 13, scope: !4342)
!4389 = !DILocation(line: 1398, column: 5, scope: !4343)
!4390 = !DILocation(line: 1395, column: 21, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 1394, column: 74)
!4392 = !DILocation(line: 1395, column: 13, scope: !4391)
!4393 = !DILocation(line: 1395, column: 19, scope: !4391)
!4394 = !DILocation(line: 1396, column: 13, scope: !4391)
!4395 = !DILocation(line: 1399, column: 13, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 1399, column: 13)
!4397 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 1398, column: 12)
!4398 = !DILocation(line: 1399, column: 44, scope: !4396)
!4399 = !DILocation(line: 1399, column: 13, scope: !4397)
!4400 = !DILocation(line: 1404, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1404, column: 9)
!4402 = !DILocation(line: 1404, column: 20, scope: !4401)
!4403 = !DILocation(line: 1404, column: 9, scope: !4334)
!4404 = !DILocation(line: 1405, column: 15, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1405, column: 9)
!4406 = !DILocation(line: 1405, column: 9, scope: !4405)
!4407 = !DILocation(line: 1405, column: 27, scope: !4405)
!4408 = !DILocation(line: 1405, column: 9, scope: !4334)
!4409 = !DILocation(line: 1413, column: 9, scope: !4334)
!4410 = !DILocation(line: 1414, column: 22, scope: !4334)
!4411 = !DILocation(line: 1414, column: 14, scope: !4334)
!4412 = !DILocation(line: 1415, column: 5, scope: !4334)
!4413 = !DILocation(line: 1415, column: 11, scope: !4334)
!4414 = !DILocation(line: 1415, column: 19, scope: !4334)
!4415 = !DILocation(line: 1415, column: 26, scope: !4334)
!4416 = !DILocation(line: 1416, column: 27, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 1416, column: 13)
!4418 = !DILocation(line: 1416, column: 13, scope: !4417)
!4419 = !DILocation(line: 1416, column: 75, scope: !4417)
!4420 = !DILocation(line: 1416, column: 13, scope: !4350)
!4421 = !DILocation(line: 1418, column: 19, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 1417, column: 9)
!4423 = !DILocation(line: 1419, column: 13, scope: !4422)
!4424 = !DILocation(line: 0, scope: !4334)
!4425 = !DILocation(line: 1415, column: 43, scope: !4334)
!4426 = !DILocation(line: 1415, column: 33, scope: !4334)
!4427 = distinct !{!4427, !4412, !4428}
!4428 = !DILocation(line: 1424, column: 5, scope: !4334)
!4429 = !DILocation(line: 1278, column: 5, scope: !3984, inlinedAt: !4349)
!4430 = !DILocation(line: 1279, column: 20, scope: !3984, inlinedAt: !4349)
!4431 = !DILocation(line: 1281, column: 5, scope: !3984, inlinedAt: !4349)
!4432 = !DILocation(line: 1282, column: 25, scope: !3984, inlinedAt: !4349)
!4433 = !DILocation(line: 1282, column: 13, scope: !3984, inlinedAt: !4349)
!4434 = !DILocation(line: 1279, column: 13, scope: !3984, inlinedAt: !4349)
!4435 = !DILocation(line: 1282, column: 74, scope: !3984, inlinedAt: !4349)
!4436 = !DILocation(line: 1283, column: 50, scope: !4003, inlinedAt: !4349)
!4437 = !DILocation(line: 1283, column: 33, scope: !4003, inlinedAt: !4349)
!4438 = !DILocation(line: 1283, column: 31, scope: !4003, inlinedAt: !4349)
!4439 = !DILocation(line: 1287, column: 1, scope: !3984, inlinedAt: !4349)
!4440 = !DILocation(line: 1286, column: 5, scope: !3984, inlinedAt: !4349)
!4441 = !DILocation(line: 1427, column: 22, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1427, column: 9)
!4443 = !DILocation(line: 1427, column: 9, scope: !4442)
!4444 = !DILocation(line: 1427, column: 58, scope: !4442)
!4445 = !DILocation(line: 1427, column: 9, scope: !4334)
!4446 = !DILocation(line: 1428, column: 34, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1428, column: 9)
!4448 = !DILocation(line: 1428, column: 9, scope: !4447)
!4449 = !DILocation(line: 1428, column: 65, scope: !4447)
!4450 = !DILocation(line: 1428, column: 9, scope: !4334)
!4451 = !DILocation(line: 1433, column: 25, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1433, column: 9)
!4453 = !DILocation(line: 1433, column: 9, scope: !4452)
!4454 = !DILocation(line: 1433, column: 69, scope: !4452)
!4455 = !DILocation(line: 1433, column: 74, scope: !4452)
!4456 = !DILocation(line: 1434, column: 9, scope: !4452)
!4457 = !DILocation(line: 1434, column: 14, scope: !4452)
!4458 = !DILocation(line: 1433, column: 9, scope: !4334)
!4459 = !DILocation(line: 1435, column: 5, scope: !4334)
!4460 = !DILocation(line: 1278, column: 5, scope: !3984, inlinedAt: !4347)
!4461 = !DILocation(line: 1279, column: 20, scope: !3984, inlinedAt: !4347)
!4462 = !DILocation(line: 1281, column: 5, scope: !3984, inlinedAt: !4347)
!4463 = !DILocation(line: 1282, column: 25, scope: !3984, inlinedAt: !4347)
!4464 = !DILocation(line: 1282, column: 13, scope: !3984, inlinedAt: !4347)
!4465 = !DILocation(line: 1279, column: 13, scope: !3984, inlinedAt: !4347)
!4466 = !DILocation(line: 1282, column: 74, scope: !3984, inlinedAt: !4347)
!4467 = !DILocation(line: 1283, column: 50, scope: !4003, inlinedAt: !4347)
!4468 = !DILocation(line: 1283, column: 33, scope: !4003, inlinedAt: !4347)
!4469 = !DILocation(line: 1283, column: 31, scope: !4003, inlinedAt: !4347)
!4470 = !DILocation(line: 1287, column: 1, scope: !3984, inlinedAt: !4347)
!4471 = !DILocation(line: 1286, column: 5, scope: !3984, inlinedAt: !4347)
!4472 = !DILocation(line: 1443, column: 32, scope: !4334)
!4473 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 1443, column: 18, scope: !4334)
!4475 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !4474)
!4476 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !4474)
!4477 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !4474)
!4478 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !4474)
!4479 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !4474)
!4480 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !4474)
!4481 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !4474)
!4482 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !4474)
!4483 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !4474)
!4484 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !4474)
!4485 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !4474)
!4486 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !4474)
!4487 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !4474)
!4488 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !4474)
!4489 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !4474)
!4490 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !4474)
!4491 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !4474)
!4492 = !DILocation(line: 0, scope: !486, inlinedAt: !4474)
!4493 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !4474)
!4494 = !DILocation(line: 1443, column: 9, scope: !4334)
!4495 = !DILocation(line: 1443, column: 48, scope: !4334)
!4496 = !DILocation(line: 1441, column: 5, scope: !4334)
!4497 = !DILocation(line: 1444, column: 30, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1444, column: 9)
!4499 = !DILocation(line: 87, column: 39, scope: !470, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 1444, column: 45, scope: !4498)
!4501 = !DILocation(line: 88, column: 27, scope: !470, inlinedAt: !4500)
!4502 = !DILocation(line: 88, column: 19, scope: !470, inlinedAt: !4500)
!4503 = !DILocation(line: 89, column: 5, scope: !470, inlinedAt: !4500)
!4504 = !DILocation(line: 91, column: 20, scope: !486, inlinedAt: !4500)
!4505 = !DILocation(line: 91, column: 13, scope: !486, inlinedAt: !4500)
!4506 = !DILocation(line: 93, column: 20, scope: !486, inlinedAt: !4500)
!4507 = !DILocation(line: 93, column: 34, scope: !486, inlinedAt: !4500)
!4508 = !DILocation(line: 93, column: 13, scope: !486, inlinedAt: !4500)
!4509 = !DILocation(line: 95, column: 20, scope: !486, inlinedAt: !4500)
!4510 = !DILocation(line: 95, column: 35, scope: !486, inlinedAt: !4500)
!4511 = !DILocation(line: 95, column: 13, scope: !486, inlinedAt: !4500)
!4512 = !DILocation(line: 97, column: 20, scope: !486, inlinedAt: !4500)
!4513 = !DILocation(line: 97, column: 35, scope: !486, inlinedAt: !4500)
!4514 = !DILocation(line: 97, column: 13, scope: !486, inlinedAt: !4500)
!4515 = !DILocation(line: 99, column: 20, scope: !486, inlinedAt: !4500)
!4516 = !DILocation(line: 99, column: 35, scope: !486, inlinedAt: !4500)
!4517 = !DILocation(line: 99, column: 13, scope: !486, inlinedAt: !4500)
!4518 = !DILocation(line: 101, column: 5, scope: !470, inlinedAt: !4500)
!4519 = !DILocation(line: 102, column: 1, scope: !470, inlinedAt: !4500)
!4520 = !DILocation(line: 93, column: 36, scope: !4078, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 1444, column: 9, scope: !4498)
!4522 = !DILocation(line: 93, column: 51, scope: !4078, inlinedAt: !4521)
!4523 = !DILocation(line: 93, column: 63, scope: !4078, inlinedAt: !4521)
!4524 = !DILocation(line: 94, column: 5, scope: !4078, inlinedAt: !4521)
!4525 = !DILocation(line: 0, scope: !486, inlinedAt: !4500)
!4526 = !DILocation(line: 0, scope: !4498)
!4527 = !DILocation(line: 95, column: 37, scope: !4085, inlinedAt: !4521)
!4528 = !DILocation(line: 95, column: 34, scope: !4085, inlinedAt: !4521)
!4529 = !DILocation(line: 95, column: 58, scope: !4085, inlinedAt: !4521)
!4530 = !DILocation(line: 95, column: 85, scope: !4085, inlinedAt: !4521)
!4531 = !DILocation(line: 95, column: 33, scope: !4085, inlinedAt: !4521)
!4532 = !DILocation(line: 95, column: 16, scope: !4085, inlinedAt: !4521)
!4533 = !DILocation(line: 96, column: 16, scope: !4101, inlinedAt: !4521)
!4534 = !DILocation(line: 96, column: 13, scope: !4101, inlinedAt: !4521)
!4535 = !DILocation(line: 96, column: 13, scope: !4085, inlinedAt: !4521)
!4536 = !DILocation(line: 96, column: 30, scope: !4101, inlinedAt: !4521)
!4537 = !DILocation(line: 97, column: 16, scope: !4107, inlinedAt: !4521)
!4538 = !DILocation(line: 97, column: 13, scope: !4107, inlinedAt: !4521)
!4539 = !DILocation(line: 97, column: 44, scope: !4107, inlinedAt: !4521)
!4540 = !DILocation(line: 97, column: 13, scope: !4085, inlinedAt: !4521)
!4541 = !DILocation(line: 98, column: 13, scope: !4107, inlinedAt: !4521)
!4542 = !DILocation(line: 104, column: 1, scope: !4078, inlinedAt: !4521)
!4543 = !DILocation(line: 1444, column: 9, scope: !4334)
!4544 = !DILocation(line: 99, column: 26, scope: !4085, inlinedAt: !4521)
!4545 = !DILocation(line: 100, column: 13, scope: !4085, inlinedAt: !4521)
!4546 = !DILocation(line: 101, column: 28, scope: !4085, inlinedAt: !4521)
!4547 = !DILocation(line: 102, column: 5, scope: !4078, inlinedAt: !4521)
!4548 = !DILocation(line: 103, column: 5, scope: !4078, inlinedAt: !4521)
!4549 = !DILocation(line: 1448, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1448, column: 9)
!4551 = !DILocation(line: 1448, column: 20, scope: !4550)
!4552 = !DILocation(line: 1448, column: 9, scope: !4334)
!4553 = !DILocation(line: 1449, column: 15, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1449, column: 9)
!4555 = !DILocation(line: 1449, column: 9, scope: !4554)
!4556 = !DILocation(line: 1449, column: 27, scope: !4554)
!4557 = !DILocation(line: 1449, column: 9, scope: !4334)
!4558 = !DILocation(line: 1450, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1450, column: 9)
!4560 = !DILocation(line: 1450, column: 20, scope: !4559)
!4561 = !DILocation(line: 1450, column: 9, scope: !4334)
!4562 = !DILocation(line: 1454, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1454, column: 9)
!4564 = !DILocation(line: 1454, column: 34, scope: !4563)
!4565 = !DILocation(line: 1454, column: 9, scope: !4334)
!4566 = !DILocation(line: 1455, column: 106, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1454, column: 41)
!4568 = !DILocation(line: 1455, column: 97, scope: !4567)
!4569 = !DILocation(line: 1455, column: 9, scope: !4567)
!4570 = !DILocation(line: 1456, column: 9, scope: !4567)
!4571 = !DILocation(line: 1457, column: 9, scope: !4567)
!4572 = !DILocation(line: 1459, column: 5, scope: !4334)
!4573 = !DILocation(line: 1460, column: 5, scope: !4334)
!4574 = !DILocation(line: 1463, column: 87, scope: !4334)
!4575 = !DILocation(line: 1463, column: 78, scope: !4334)
!4576 = !DILocation(line: 1463, column: 5, scope: !4334)
!4577 = !DILocation(line: 1464, column: 5, scope: !4334)
!4578 = !DILocation(line: 1465, column: 5, scope: !4334)
!4579 = !DILocation(line: 1466, column: 5, scope: !4334)
!4580 = !DILocation(line: 0, scope: !4365)
!4581 = !DILocation(line: 1467, column: 1, scope: !4334)
!4582 = distinct !DISubprogram(name: "aofChildPipeReadable", scope: !3, file: !3, line: 1476, type: !166, isLocal: false, isDefinition: true, scopeLine: 1476, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4583)
!4583 = !{!4584, !4585, !4586, !4587, !4588}
!4584 = !DILocalVariable(name: "el", arg: 1, scope: !4582, file: !3, line: 1476, type: !168)
!4585 = !DILocalVariable(name: "fd", arg: 2, scope: !4582, file: !3, line: 1476, type: !6)
!4586 = !DILocalVariable(name: "privdata", arg: 3, scope: !4582, file: !3, line: 1476, type: !10)
!4587 = !DILocalVariable(name: "mask", arg: 4, scope: !4582, file: !3, line: 1476, type: !6)
!4588 = !DILocalVariable(name: "byte", scope: !4582, file: !3, line: 1477, type: !21)
!4589 = !DILocation(line: 1476, column: 40, scope: !4582)
!4590 = !DILocation(line: 1476, column: 48, scope: !4582)
!4591 = !DILocation(line: 1476, column: 58, scope: !4582)
!4592 = !DILocation(line: 1476, column: 72, scope: !4582)
!4593 = !DILocation(line: 1477, column: 10, scope: !4582)
!4594 = !DILocation(line: 1477, column: 5, scope: !4582)
!4595 = !DILocation(line: 1482, column: 9, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 1482, column: 9)
!4597 = !DILocation(line: 1482, column: 26, scope: !4596)
!4598 = !DILocation(line: 1482, column: 31, scope: !4596)
!4599 = !DILocation(line: 1482, column: 34, scope: !4596)
!4600 = !DILocation(line: 1482, column: 39, scope: !4596)
!4601 = !DILocation(line: 1482, column: 9, scope: !4582)
!4602 = !DILocation(line: 1483, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 1482, column: 47)
!4604 = !DILocation(line: 1484, column: 38, scope: !4603)
!4605 = !DILocation(line: 1485, column: 26, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 1485, column: 13)
!4607 = !DILocation(line: 1485, column: 13, scope: !4606)
!4608 = !DILocation(line: 1485, column: 61, scope: !4606)
!4609 = !DILocation(line: 1485, column: 13, scope: !4603)
!4610 = !DILocation(line: 1491, column: 26, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 1485, column: 67)
!4612 = !DILocation(line: 1491, column: 17, scope: !4611)
!4613 = !DILocation(line: 1490, column: 13, scope: !4611)
!4614 = !DILocation(line: 1492, column: 9, scope: !4611)
!4615 = !DILocation(line: 1496, column: 30, scope: !4582)
!4616 = !DILocation(line: 1496, column: 40, scope: !4582)
!4617 = !DILocation(line: 1496, column: 5, scope: !4582)
!4618 = !DILocation(line: 1497, column: 1, scope: !4582)
!4619 = distinct !DISubprogram(name: "aofCreatePipes", scope: !3, file: !3, line: 1504, type: !436, isLocal: false, isDefinition: true, scopeLine: 1504, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4620)
!4620 = !{!4621, !4625}
!4621 = !DILocalVariable(name: "fds", scope: !4619, file: !3, line: 1505, type: !4622)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !4623)
!4623 = !{!4624}
!4624 = !DISubrange(count: 6)
!4625 = !DILocalVariable(name: "j", scope: !4619, file: !3, line: 1506, type: !6)
!4626 = !DILocation(line: 1505, column: 5, scope: !4619)
!4627 = !DILocation(line: 1505, column: 9, scope: !4619)
!4628 = !DILocation(line: 1508, column: 14, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1508, column: 9)
!4630 = !DILocation(line: 1508, column: 9, scope: !4629)
!4631 = !DILocation(line: 1508, column: 19, scope: !4629)
!4632 = !DILocation(line: 1508, column: 9, scope: !4619)
!4633 = !DILocation(line: 1509, column: 17, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1509, column: 9)
!4635 = !DILocation(line: 1509, column: 9, scope: !4634)
!4636 = !DILocation(line: 1509, column: 21, scope: !4634)
!4637 = !DILocation(line: 1509, column: 9, scope: !4619)
!4638 = !DILocation(line: 1510, column: 17, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1510, column: 9)
!4640 = !DILocation(line: 1510, column: 9, scope: !4639)
!4641 = !DILocation(line: 1510, column: 21, scope: !4639)
!4642 = !DILocation(line: 1510, column: 9, scope: !4619)
!4643 = !DILocation(line: 1512, column: 27, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1512, column: 9)
!4645 = !DILocation(line: 1512, column: 9, scope: !4644)
!4646 = !DILocation(line: 1512, column: 35, scope: !4644)
!4647 = !DILocation(line: 1512, column: 9, scope: !4619)
!4648 = !DILocation(line: 1513, column: 27, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1513, column: 9)
!4650 = !DILocation(line: 1513, column: 9, scope: !4649)
!4651 = !DILocation(line: 1513, column: 35, scope: !4649)
!4652 = !DILocation(line: 1513, column: 9, scope: !4619)
!4653 = !DILocation(line: 1514, column: 34, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1514, column: 9)
!4655 = !DILocation(line: 1514, column: 38, scope: !4654)
!4656 = !DILocation(line: 1514, column: 9, scope: !4654)
!4657 = !DILocation(line: 1514, column: 87, scope: !4654)
!4658 = !DILocation(line: 1514, column: 9, scope: !4619)
!4659 = !DILocation(line: 1517, column: 45, scope: !4619)
!4660 = !DILocation(line: 1516, column: 41, scope: !4619)
!4661 = !DILocation(line: 1520, column: 42, scope: !4619)
!4662 = !DILocation(line: 1520, column: 40, scope: !4619)
!4663 = !DILocation(line: 1521, column: 44, scope: !4619)
!4664 = !DILocation(line: 1521, column: 42, scope: !4619)
!4665 = !DILocation(line: 1522, column: 34, scope: !4619)
!4666 = !DILocation(line: 1523, column: 5, scope: !4619)
!4667 = !DILocation(line: 1527, column: 18, scope: !4619)
!4668 = !DILocation(line: 1527, column: 9, scope: !4619)
!4669 = !DILocation(line: 1526, column: 5, scope: !4619)
!4670 = !DILocation(line: 1506, column: 9, scope: !4619)
!4671 = !DILocation(line: 1528, column: 10, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 1528, column: 5)
!4673 = !DILocation(line: 1528, column: 5, scope: !4672)
!4674 = !DILocation(line: 1528, column: 32, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 1528, column: 32)
!4676 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1528, column: 5)
!4677 = !DILocation(line: 1528, column: 39, scope: !4675)
!4678 = !DILocation(line: 1528, column: 32, scope: !4676)
!4679 = !DILocation(line: 1528, column: 46, scope: !4675)
!4680 = !DILocation(line: 1528, column: 5, scope: !4676)
!4681 = !DILocation(line: 0, scope: !4619)
!4682 = !DILocation(line: 1530, column: 1, scope: !4619)
!4683 = !DILocation(line: 1529, column: 5, scope: !4619)
!4684 = !DILocation(line: 1533, column: 30, scope: !969)
!4685 = !DILocation(line: 1533, column: 40, scope: !969)
!4686 = !DILocation(line: 1533, column: 5, scope: !969)
!4687 = !DILocation(line: 1534, column: 30, scope: !969)
!4688 = !DILocation(line: 1534, column: 40, scope: !969)
!4689 = !DILocation(line: 1534, column: 5, scope: !969)
!4690 = !DILocation(line: 1535, column: 18, scope: !969)
!4691 = !DILocation(line: 1535, column: 5, scope: !969)
!4692 = !DILocation(line: 1536, column: 18, scope: !969)
!4693 = !DILocation(line: 1536, column: 5, scope: !969)
!4694 = !DILocation(line: 1537, column: 18, scope: !969)
!4695 = !DILocation(line: 1537, column: 5, scope: !969)
!4696 = !DILocation(line: 1538, column: 18, scope: !969)
!4697 = !DILocation(line: 1538, column: 5, scope: !969)
!4698 = !DILocation(line: 1539, column: 18, scope: !969)
!4699 = !DILocation(line: 1539, column: 5, scope: !969)
!4700 = !DILocation(line: 1540, column: 18, scope: !969)
!4701 = !DILocation(line: 1540, column: 5, scope: !969)
!4702 = !DILocation(line: 1541, column: 1, scope: !969)
!4703 = distinct !DISubprogram(name: "bgrewriteaofCommand", scope: !3, file: !3, line: 1619, type: !1316, isLocal: false, isDefinition: true, scopeLine: 1619, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4704)
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "c", arg: 1, scope: !4703, file: !3, line: 1619, type: !1318)
!4706 = !DILocation(line: 1619, column: 34, scope: !4703)
!4707 = !DILocation(line: 1620, column: 16, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 1620, column: 9)
!4709 = !DILocation(line: 1620, column: 30, scope: !4708)
!4710 = !DILocation(line: 1620, column: 9, scope: !4703)
!4711 = !DILocation(line: 1621, column: 9, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1620, column: 37)
!4713 = !DILocation(line: 1622, column: 5, scope: !4712)
!4714 = !DILocation(line: 1622, column: 23, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1622, column: 16)
!4716 = !DILocation(line: 1622, column: 37, scope: !4715)
!4717 = !DILocation(line: 1622, column: 16, scope: !4708)
!4718 = !DILocation(line: 1623, column: 38, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 1622, column: 44)
!4720 = !DILocation(line: 1624, column: 9, scope: !4719)
!4721 = !DILocation(line: 1625, column: 5, scope: !4719)
!4722 = !DILocation(line: 1625, column: 16, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 1625, column: 16)
!4724 = !DILocation(line: 1625, column: 50, scope: !4723)
!4725 = !DILocation(line: 1625, column: 16, scope: !4715)
!4726 = !DILocation(line: 1626, column: 9, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 1625, column: 59)
!4728 = !DILocation(line: 1627, column: 5, scope: !4727)
!4729 = !DILocation(line: 1628, column: 27, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 1627, column: 12)
!4731 = !{!4732, !95, i64 16}
!4732 = !{!"sharedObjectsStruct", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !95, i64 96, !95, i64 104, !95, i64 112, !95, i64 120, !95, i64 128, !95, i64 136, !95, i64 144, !95, i64 152, !95, i64 160, !95, i64 168, !95, i64 176, !95, i64 184, !95, i64 192, !95, i64 200, !95, i64 208, !95, i64 216, !95, i64 224, !95, i64 232, !95, i64 240, !95, i64 248, !95, i64 256, !95, i64 264, !95, i64 272, !95, i64 280, !95, i64 288, !95, i64 296, !95, i64 304, !95, i64 312, !95, i64 320, !95, i64 328, !95, i64 336, !95, i64 344, !95, i64 352, !95, i64 360, !93, i64 368, !93, i64 448, !93, i64 80448, !93, i64 80704, !95, i64 80960, !95, i64 80968}
!4733 = !DILocation(line: 1628, column: 9, scope: !4730)
!4734 = !DILocation(line: 1630, column: 1, scope: !4703)
!4735 = !DILocation(line: 1632, column: 30, scope: !918)
!4736 = !DILocation(line: 1633, column: 5, scope: !918)
!4737 = !DILocation(line: 1633, column: 10, scope: !918)
!4738 = !DILocation(line: 1635, column: 5, scope: !918)
!4739 = !DILocation(line: 1636, column: 5, scope: !918)
!4740 = !DILocation(line: 1637, column: 1, scope: !918)
!4741 = distinct !DISubprogram(name: "backgroundRewriteDoneHandler", scope: !3, file: !3, line: 1660, type: !4742, isLocal: false, isDefinition: true, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4744)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{null, !6, !6}
!4744 = !{!4745, !4746, !4747, !4750, !4751, !4752, !4753}
!4745 = !DILocalVariable(name: "exitcode", arg: 1, scope: !4741, file: !3, line: 1660, type: !6)
!4746 = !DILocalVariable(name: "bysignal", arg: 2, scope: !4741, file: !3, line: 1660, type: !6)
!4747 = !DILocalVariable(name: "newfd", scope: !4748, file: !3, line: 1662, type: !6)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1661, column: 37)
!4749 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 1661, column: 9)
!4750 = !DILocalVariable(name: "oldfd", scope: !4748, file: !3, line: 1662, type: !6)
!4751 = !DILocalVariable(name: "tmpfile", scope: !4748, file: !3, line: 1663, type: !925)
!4752 = !DILocalVariable(name: "now", scope: !4748, file: !3, line: 1664, type: !16)
!4753 = !DILocalVariable(name: "latency", scope: !4748, file: !3, line: 1665, type: !74)
!4754 = !DILocation(line: 1633, column: 10, scope: !918, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 1801, column: 5, scope: !4741)
!4756 = !DILocation(line: 1660, column: 39, scope: !4741)
!4757 = !DILocation(line: 1660, column: 53, scope: !4741)
!4758 = !DILocation(line: 1661, column: 19, scope: !4749)
!4759 = !DILocation(line: 1663, column: 9, scope: !4748)
!4760 = !DILocation(line: 1663, column: 14, scope: !4748)
!4761 = !DILocation(line: 1664, column: 25, scope: !4748)
!4762 = !DILocation(line: 1664, column: 19, scope: !4748)
!4763 = !DILocation(line: 1667, column: 9, scope: !4748)
!4764 = !DILocation(line: 1672, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1672, column: 9)
!4766 = !DILocation(line: 1672, column: 9, scope: !4748)
!4767 = !DILocation(line: 1672, column: 9, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 1672, column: 9)
!4769 = !DILocation(line: 1665, column: 18, scope: !4748)
!4770 = !DILocation(line: 1674, column: 25, scope: !4748)
!4771 = !DILocation(line: 1673, column: 9, scope: !4748)
!4772 = !DILocation(line: 1675, column: 17, scope: !4748)
!4773 = !DILocation(line: 1662, column: 13, scope: !4748)
!4774 = !DILocation(line: 1676, column: 19, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1676, column: 13)
!4776 = !DILocation(line: 1676, column: 13, scope: !4748)
!4777 = !DILocation(line: 1678, column: 88, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 1676, column: 26)
!4779 = !DILocation(line: 1678, column: 79, scope: !4778)
!4780 = !DILocation(line: 1677, column: 13, scope: !4778)
!4781 = !DILocation(line: 1679, column: 13, scope: !4778)
!4782 = !DILocation(line: 1682, column: 13, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1682, column: 13)
!4784 = !DILocation(line: 1682, column: 42, scope: !4783)
!4785 = !DILocation(line: 1682, column: 13, scope: !4748)
!4786 = !DILocation(line: 1684, column: 92, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 1682, column: 49)
!4788 = !DILocation(line: 1684, column: 83, scope: !4787)
!4789 = !DILocation(line: 1683, column: 13, scope: !4787)
!4790 = !DILocation(line: 1685, column: 13, scope: !4787)
!4791 = !DILocation(line: 1686, column: 13, scope: !4787)
!4792 = !DILocation(line: 1688, column: 9, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1688, column: 9)
!4794 = !DILocation(line: 1688, column: 9, scope: !4748)
!4795 = !DILocation(line: 1689, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1689, column: 9)
!4797 = !DILocation(line: 1688, column: 9, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 1688, column: 9)
!4799 = !DILocation(line: 1689, column: 9, scope: !4748)
!4800 = !DILocation(line: 81, column: 5, scope: !111, inlinedAt: !4801)
!4801 = distinct !DILocation(line: 1692, column: 98, scope: !4748)
!4802 = !DILocation(line: 82, column: 19, scope: !111, inlinedAt: !4801)
!4803 = !DILocation(line: 84, column: 23, scope: !111, inlinedAt: !4801)
!4804 = !DILocation(line: 81, column: 14, scope: !111, inlinedAt: !4801)
!4805 = !DILocation(line: 84, column: 5, scope: !111, inlinedAt: !4801)
!4806 = !DILocation(line: 85, column: 5, scope: !111, inlinedAt: !4801)
!4807 = !DILocation(line: 85, column: 17, scope: !111, inlinedAt: !4801)
!4808 = !DILocation(line: 80, column: 15, scope: !111, inlinedAt: !4801)
!4809 = !DILocation(line: 86, column: 29, scope: !133, inlinedAt: !4801)
!4810 = !DILocation(line: 86, column: 21, scope: !133, inlinedAt: !4801)
!4811 = !DILocation(line: 87, column: 24, scope: !133, inlinedAt: !4801)
!4812 = !DILocation(line: 87, column: 14, scope: !133, inlinedAt: !4801)
!4813 = !DILocation(line: 90, column: 1, scope: !111, inlinedAt: !4801)
!4814 = !DILocation(line: 89, column: 5, scope: !111, inlinedAt: !4801)
!4815 = !DILocation(line: 1691, column: 9, scope: !4748)
!4816 = !DILocation(line: 1721, column: 20, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1721, column: 13)
!4818 = !DILocation(line: 1721, column: 27, scope: !4817)
!4819 = !DILocation(line: 1721, column: 13, scope: !4748)
!4820 = !DILocation(line: 1727, column: 33, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1721, column: 34)
!4822 = !DILocation(line: 1727, column: 21, scope: !4821)
!4823 = !DILocation(line: 1662, column: 20, scope: !4748)
!4824 = !DILocation(line: 1728, column: 9, scope: !4821)
!4825 = !DILocation(line: 0, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1728, column: 16)
!4827 = !DILocation(line: 1735, column: 9, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1735, column: 9)
!4829 = !DILocation(line: 1735, column: 9, scope: !4748)
!4830 = !DILocation(line: 1735, column: 9, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1735, column: 9)
!4832 = !DILocation(line: 1736, column: 35, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1736, column: 13)
!4834 = !DILocation(line: 1736, column: 13, scope: !4833)
!4835 = !DILocation(line: 1736, column: 49, scope: !4833)
!4836 = !DILocation(line: 1736, column: 13, scope: !4748)
!4837 = !DILocation(line: 1740, column: 24, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 1736, column: 56)
!4839 = !DILocation(line: 1741, column: 26, scope: !4838)
!4840 = !DILocation(line: 1741, column: 17, scope: !4838)
!4841 = !DILocation(line: 1737, column: 13, scope: !4838)
!4842 = !DILocation(line: 1742, column: 13, scope: !4838)
!4843 = !DILocation(line: 1743, column: 23, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 1743, column: 17)
!4845 = !DILocation(line: 1743, column: 17, scope: !4838)
!4846 = !DILocation(line: 1743, column: 30, scope: !4844)
!4847 = !DILocation(line: 1746, column: 9, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1746, column: 9)
!4849 = !DILocation(line: 1746, column: 9, scope: !4748)
!4850 = !DILocation(line: 1747, column: 9, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1747, column: 9)
!4852 = !DILocation(line: 1746, column: 9, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 1746, column: 9)
!4854 = !DILocation(line: 1747, column: 9, scope: !4748)
!4855 = !DILocation(line: 1749, column: 20, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1749, column: 13)
!4857 = !DILocation(line: 1749, column: 27, scope: !4856)
!4858 = !DILocation(line: 1749, column: 13, scope: !4748)
!4859 = !DILocation(line: 1752, column: 13, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 1749, column: 34)
!4861 = !DILocation(line: 1753, column: 9, scope: !4860)
!4862 = !DILocation(line: 1756, column: 27, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 1753, column: 16)
!4864 = !DILocation(line: 1757, column: 24, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 1757, column: 17)
!4866 = !DILocation(line: 1757, column: 34, scope: !4865)
!4867 = !DILocation(line: 1757, column: 17, scope: !4863)
!4868 = !DILocation(line: 1758, column: 17, scope: !4865)
!4869 = !DILocation(line: 1759, column: 39, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 1759, column: 22)
!4871 = !DILocation(line: 1759, column: 22, scope: !4865)
!4872 = !DILocation(line: 208, column: 31, scope: !441, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 1760, column: 17, scope: !4870)
!4874 = !DILocation(line: 209, column: 49, scope: !441, inlinedAt: !4873)
!4875 = !DILocation(line: 209, column: 42, scope: !441, inlinedAt: !4873)
!4876 = !DILocation(line: 209, column: 5, scope: !441, inlinedAt: !4873)
!4877 = !DILocation(line: 210, column: 1, scope: !441, inlinedAt: !4873)
!4878 = !DILocation(line: 1760, column: 17, scope: !4870)
!4879 = !DILocation(line: 0, scope: !4865)
!4880 = !DILocation(line: 1761, column: 36, scope: !4863)
!4881 = !DILocation(line: 1762, column: 13, scope: !4863)
!4882 = !DILocation(line: 1763, column: 51, scope: !4863)
!4883 = !DILocation(line: 1763, column: 42, scope: !4863)
!4884 = !DILocation(line: 1768, column: 28, scope: !4863)
!4885 = !DILocation(line: 1768, column: 13, scope: !4863)
!4886 = !DILocation(line: 1769, column: 30, scope: !4863)
!4887 = !DILocation(line: 1769, column: 28, scope: !4863)
!4888 = !DILocation(line: 0, scope: !4863)
!4889 = !DILocation(line: 1772, column: 41, scope: !4748)
!4890 = !{!91, !92, i64 2000}
!4891 = !DILocation(line: 1774, column: 9, scope: !4748)
!4892 = !DILocation(line: 1776, column: 20, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1776, column: 13)
!4894 = !DILocation(line: 1776, column: 30, scope: !4893)
!4895 = !DILocation(line: 1776, column: 13, scope: !4748)
!4896 = !DILocation(line: 1777, column: 30, scope: !4893)
!4897 = !DILocation(line: 1777, column: 13, scope: !4893)
!4898 = !DILocation(line: 1780, column: 19, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 1780, column: 13)
!4900 = !DILocation(line: 1780, column: 13, scope: !4748)
!4901 = !DILocation(line: 1780, column: 71, scope: !4899)
!4902 = !DILocation(line: 1780, column: 64, scope: !4899)
!4903 = !DILocation(line: 1780, column: 26, scope: !4899)
!4904 = !DILocation(line: 1783, column: 66, scope: !4748)
!4905 = !DILocation(line: 1783, column: 74, scope: !4748)
!4906 = !DILocation(line: 1782, column: 9, scope: !4748)
!4907 = !DILocation(line: 1784, column: 5, scope: !4749)
!4908 = !DILocation(line: 0, scope: !4749)
!4909 = !DILocation(line: 1661, column: 10, scope: !4749)
!4910 = !DILocation(line: 1784, column: 38, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1784, column: 16)
!4912 = !DILocation(line: 1784, column: 26, scope: !4911)
!4913 = !DILocation(line: 1787, column: 13, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 1784, column: 44)
!4915 = !DILocation(line: 1788, column: 45, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 1787, column: 13)
!4917 = !DILocation(line: 1788, column: 13, scope: !4916)
!4918 = !DILocation(line: 1789, column: 9, scope: !4914)
!4919 = !DILocation(line: 1791, column: 5, scope: !4914)
!4920 = !DILocation(line: 1792, column: 41, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 1791, column: 12)
!4922 = !DILocation(line: 1794, column: 9, scope: !4921)
!4923 = !DILocation(line: 1533, column: 30, scope: !969, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 1799, column: 5, scope: !4741)
!4925 = !DILocation(line: 1533, column: 40, scope: !969, inlinedAt: !4924)
!4926 = !DILocation(line: 1533, column: 5, scope: !969, inlinedAt: !4924)
!4927 = !DILocation(line: 1534, column: 30, scope: !969, inlinedAt: !4924)
!4928 = !DILocation(line: 1534, column: 40, scope: !969, inlinedAt: !4924)
!4929 = !DILocation(line: 1534, column: 5, scope: !969, inlinedAt: !4924)
!4930 = !DILocation(line: 1535, column: 18, scope: !969, inlinedAt: !4924)
!4931 = !DILocation(line: 1535, column: 5, scope: !969, inlinedAt: !4924)
!4932 = !DILocation(line: 1536, column: 18, scope: !969, inlinedAt: !4924)
!4933 = !DILocation(line: 1536, column: 5, scope: !969, inlinedAt: !4924)
!4934 = !DILocation(line: 1537, column: 18, scope: !969, inlinedAt: !4924)
!4935 = !DILocation(line: 1537, column: 5, scope: !969, inlinedAt: !4924)
!4936 = !DILocation(line: 1538, column: 18, scope: !969, inlinedAt: !4924)
!4937 = !DILocation(line: 1538, column: 5, scope: !969, inlinedAt: !4924)
!4938 = !DILocation(line: 1539, column: 18, scope: !969, inlinedAt: !4924)
!4939 = !DILocation(line: 1539, column: 5, scope: !969, inlinedAt: !4924)
!4940 = !DILocation(line: 1540, column: 18, scope: !969, inlinedAt: !4924)
!4941 = !DILocation(line: 1540, column: 5, scope: !969, inlinedAt: !4924)
!4942 = !DILocation(line: 1541, column: 1, scope: !969, inlinedAt: !4924)
!4943 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 1800, column: 5, scope: !4741)
!4945 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !4944)
!4946 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !4944)
!4947 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !4944)
!4948 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !4944)
!4949 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !4944)
!4950 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !4944)
!4951 = !DILocation(line: 76, column: 1, scope: !85, inlinedAt: !4944)
!4952 = !DILocation(line: 1801, column: 30, scope: !4741)
!4953 = !DILocation(line: 1632, column: 30, scope: !918, inlinedAt: !4755)
!4954 = !DILocation(line: 1633, column: 5, scope: !918, inlinedAt: !4755)
!4955 = !DILocation(line: 1635, column: 5, scope: !918, inlinedAt: !4755)
!4956 = !DILocation(line: 1636, column: 5, scope: !918, inlinedAt: !4755)
!4957 = !DILocation(line: 1637, column: 1, scope: !918, inlinedAt: !4755)
!4958 = !DILocation(line: 1802, column: 26, scope: !4741)
!4959 = !DILocation(line: 1803, column: 36, scope: !4741)
!4960 = !DILocation(line: 1803, column: 54, scope: !4741)
!4961 = !DILocation(line: 1803, column: 46, scope: !4741)
!4962 = !DILocation(line: 1803, column: 34, scope: !4741)
!4963 = !{!91, !96, i64 1984}
!4964 = !DILocation(line: 1804, column: 35, scope: !4741)
!4965 = !DILocation(line: 1806, column: 16, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 1806, column: 9)
!4967 = !DILocation(line: 1806, column: 26, scope: !4966)
!4968 = !DILocation(line: 1806, column: 9, scope: !4741)
!4969 = !DILocation(line: 1807, column: 38, scope: !4966)
!4970 = !DILocation(line: 1807, column: 9, scope: !4966)
!4971 = !DILocation(line: 1808, column: 1, scope: !4741)
