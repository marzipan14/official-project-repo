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
  %74 = lshr i64 %73, 20, !dbg !365
  call void (i32, i8*, ...) @serverLog(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %74) #6, !dbg !366
  br label %75, !dbg !367

; <label>:75:                                     ; preds = %40, %72
  %76 = icmp eq i64 %42, 0, !dbg !315
  br i1 %76, label %77, label %17, !dbg !315, !llvm.loop !368

; <label>:77:                                     ; preds = %28, %75, %12
  %78 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !370, !tbaa !255
  %79 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !372, !tbaa !257
  %80 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %78, i32 %79) #6, !dbg !373
  %81 = icmp eq i32 %80, 0, !dbg !374
  br i1 %81, label %82, label %86, !dbg !375

; <label>:82:                                     ; preds = %77
  %83 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !376, !tbaa !255
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !378, !tbaa !257
  %85 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %83, i32 %84, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildWriteDiffData, i8* null) #6, !dbg !379
  br label %86, !dbg !380

; <label>:86:                                     ; preds = %82, %77
  ret void, !dbg !381
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
define dso_local i64 @aofRewriteBufferWrite(i32) local_unnamed_addr #0 !dbg !382 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !394
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !394
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !396, !tbaa !90
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #6, !dbg !398
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !399
  %6 = icmp eq %struct.listNode* %5, null, !dbg !401
  br i1 %6, label %31, label %7, !dbg !401

; <label>:7:                                      ; preds = %1, %27
  %8 = phi %struct.listNode* [ %29, %27 ], [ %5, %1 ]
  %9 = phi i64 [ %28, %27 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !402
  %11 = bitcast i8** %10 to %struct.aofrwblock**, !dbg !402
  %12 = load %struct.aofrwblock*, %struct.aofrwblock** %11, align 8, !dbg !402, !tbaa !153
  %13 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 0, !dbg !404
  %14 = load i64, i64* %13, align 8, !dbg !404, !tbaa !157
  %15 = icmp eq i64 %14, 0, !dbg !406
  br i1 %15, label %27, label %16, !dbg !407

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %12, i64 0, i32 2, i64 0, !dbg !408
  %18 = call i64 @write(i32 %0, i8* nonnull %17, i64 %14) #6, !dbg !410
  %19 = load i64, i64* %13, align 8, !dbg !412, !tbaa !157
  %20 = icmp eq i64 %18, %19, !dbg !414
  br i1 %20, label %25, label %21, !dbg !415

; <label>:21:                                     ; preds = %16
  %22 = icmp eq i64 %18, 0, !dbg !416
  br i1 %22, label %23, label %31, !dbg !419

; <label>:23:                                     ; preds = %21
  %24 = call i32* @__errno() #6, !dbg !420
  store i32 5, i32* %24, align 4, !dbg !421, !tbaa !422
  br label %31, !dbg !420

; <label>:25:                                     ; preds = %16
  %26 = add nsw i64 %18, %9, !dbg !423
  br label %27, !dbg !424

; <label>:27:                                     ; preds = %25, %7
  %28 = phi i64 [ %26, %25 ], [ %9, %7 ], !dbg !425
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !399
  %30 = icmp eq %struct.listNode* %29, null, !dbg !401
  br i1 %30, label %31, label %7, !dbg !401

; <label>:31:                                     ; preds = %27, %1, %21, %23
  %32 = phi i64 [ -1, %23 ], [ -1, %21 ], [ 0, %1 ], [ %28, %27 ], !dbg !426
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !427
  ret i64 %32, !dbg !427
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @aofFsyncInProgress() local_unnamed_addr #0 !dbg !428 {
  %1 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !431
  %2 = icmp ne i64 %1, 0, !dbg !432
  %3 = zext i1 %2 to i32, !dbg !432
  ret i32 %3, !dbg !433
}

; Function Attrs: noredzone
declare dso_local i64 @bioPendingJobsOfType(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aof_background_fsync(i32) local_unnamed_addr #0 !dbg !434 {
  %2 = sext i32 %0 to i64, !dbg !438
  %3 = inttoptr i64 %2 to i8*, !dbg !439
  tail call void @bioCreateBackgroundJob(i32 1, i8* %3, i8* null, i8* null) #6, !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noredzone
declare dso_local void @bioCreateBackgroundJob(i32, i8*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @stopAppendOnly() local_unnamed_addr #0 !dbg !442 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !443, !tbaa !444
  %2 = icmp eq i32 %1, 0, !dbg !443
  br i1 %2, label %3, label %4, !dbg !443

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 235) #6, !dbg !443
  tail call void @_exit(i32 1) #8, !dbg !443
  unreachable, !dbg !443

; <label>:4:                                      ; preds = %0
  tail call void @flushAppendOnlyFile(i32 1) #9, !dbg !445
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !446, !tbaa !447
  %6 = tail call i32 @fsync(i32 %5) #6, !dbg !448
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !449, !tbaa !447
  %8 = tail call i32 @close(i32 %7) #6, !dbg !450
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !451, !tbaa !447
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !452, !tbaa !453
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !454, !tbaa !444
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @flushAppendOnlyFile(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !459, !tbaa !461
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !474
  %4 = load i8, i8* %3, align 1, !dbg !474, !tbaa !475
  %5 = trunc i8 %4 to i3, !dbg !477
  switch i3 %5, label %6 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !477

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !478, !tbaa !480
  %8 = icmp eq i32 %7, 2, !dbg !478
  br i1 %8, label %36, label %362, !dbg !481

; <label>:9:                                      ; preds = %1
  %10 = lshr i8 %4, 3, !dbg !484
  %11 = zext i8 %10 to i64, !dbg !484
  br label %30, !dbg !486

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !487
  %14 = load i8, i8* %13, align 1, !dbg !488, !tbaa !475
  %15 = zext i8 %14 to i64, !dbg !487
  br label %30, !dbg !489

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !490
  %18 = bitcast i8* %17 to i16*, !dbg !491
  %19 = load i16, i16* %18, align 1, !dbg !491, !tbaa !492
  %20 = zext i16 %19 to i64, !dbg !490
  br label %30, !dbg !494

; <label>:21:                                     ; preds = %1
  %22 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !495
  %23 = bitcast i8* %22 to i32*, !dbg !496
  %24 = load i32, i32* %23, align 1, !dbg !496, !tbaa !422
  %25 = zext i32 %24 to i64, !dbg !495
  br label %30, !dbg !497

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !498
  %28 = bitcast i8* %27 to i64*, !dbg !499
  %29 = load i64, i64* %28, align 1, !dbg !499, !tbaa !337
  br label %30, !dbg !500

; <label>:30:                                     ; preds = %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], !dbg !501
  %32 = icmp eq i64 %31, 0, !dbg !502
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !478, !tbaa !480
  %34 = icmp eq i32 %33, 2, !dbg !478
  br i1 %32, label %35, label %47, !dbg !503

; <label>:35:                                     ; preds = %30
  br i1 %34, label %36, label %362, !dbg !481

; <label>:36:                                     ; preds = %6, %35
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !504, !tbaa !505
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !506, !tbaa !507
  %39 = icmp eq i64 %37, %38, !dbg !508
  br i1 %39, label %362, label %40, !dbg !509

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !510, !tbaa !511
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !512, !tbaa !513
  %43 = icmp sgt i64 %41, %42, !dbg !514
  br i1 %43, label %44, label %362, !dbg !515

; <label>:44:                                     ; preds = %40
  %45 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !516
  %46 = icmp eq i64 %45, 0, !dbg !518
  br i1 %46, label %315, label %362, !dbg !519

; <label>:47:                                     ; preds = %30
  br i1 %34, label %48, label %68, !dbg !520

; <label>:48:                                     ; preds = %47
  %49 = tail call i64 @bioPendingJobsOfType(i32 1) #6, !dbg !521
  %50 = icmp ne i64 %49, 0, !dbg !523
  %51 = zext i1 %50 to i32, !dbg !523
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !524, !tbaa !480
  %53 = icmp eq i32 %52, 2, !dbg !526
  %54 = icmp eq i32 %0, 0, !dbg !527
  %55 = and i1 %54, %53, !dbg !528
  %56 = and i1 %50, %55, !dbg !528
  br i1 %56, label %57, label %68, !dbg !528

; <label>:57:                                     ; preds = %48
  %58 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !529, !tbaa !534
  %59 = icmp eq i64 %58, 0, !dbg !535
  %60 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !536, !tbaa !511
  br i1 %59, label %61, label %62, !dbg !538

; <label>:61:                                     ; preds = %57
  store i64 %60, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !539, !tbaa !534
  br label %362, !dbg !541

; <label>:62:                                     ; preds = %57
  %63 = sub nsw i64 %60, %58, !dbg !542
  %64 = icmp slt i64 %63, 2, !dbg !543
  br i1 %64, label %362, label %65, !dbg !544

; <label>:65:                                     ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !545, !tbaa !546
  %67 = add i64 %66, 1, !dbg !545
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 137), align 8, !dbg !545, !tbaa !546
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !547
  br label %68, !dbg !548

; <label>:68:                                     ; preds = %47, %48, %65
  %69 = phi i1 [ %50, %48 ], [ true, %65 ], [ false, %47 ]
  %70 = phi i32 [ %51, %48 ], [ 1, %65 ], [ 0, %47 ]
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !549, !tbaa !551
  %72 = icmp eq i64 %71, 0, !dbg !549
  br i1 %72, label %75, label %73, !dbg !552

; <label>:73:                                     ; preds = %68
  %74 = tail call i64 @mstime() #6, !dbg !553
  br label %75, !dbg !553

; <label>:75:                                     ; preds = %68, %73
  %76 = phi i64 [ %74, %73 ], [ 0, %68 ], !dbg !553
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !556, !tbaa !447
  %78 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !557, !tbaa !461
  %79 = getelementptr inbounds i8, i8* %78, i64 -1, !dbg !560
  %80 = load i8, i8* %79, align 1, !dbg !560, !tbaa !475
  %81 = trunc i8 %80 to i3, !dbg !562
  switch i3 %81, label %103 [
    i3 0, label %82
    i3 1, label %85
    i3 2, label %89
    i3 3, label %94
    i3 -4, label %99
  ], !dbg !562

; <label>:82:                                     ; preds = %75
  %83 = lshr i8 %80, 3, !dbg !563
  %84 = zext i8 %83 to i64, !dbg !563
  br label %103, !dbg !564

; <label>:85:                                     ; preds = %75
  %86 = getelementptr inbounds i8, i8* %78, i64 -3, !dbg !565
  %87 = load i8, i8* %86, align 1, !dbg !566, !tbaa !475
  %88 = zext i8 %87 to i64, !dbg !565
  br label %103, !dbg !567

; <label>:89:                                     ; preds = %75
  %90 = getelementptr inbounds i8, i8* %78, i64 -5, !dbg !568
  %91 = bitcast i8* %90 to i16*, !dbg !569
  %92 = load i16, i16* %91, align 1, !dbg !569, !tbaa !492
  %93 = zext i16 %92 to i64, !dbg !568
  br label %103, !dbg !570

; <label>:94:                                     ; preds = %75
  %95 = getelementptr inbounds i8, i8* %78, i64 -9, !dbg !571
  %96 = bitcast i8* %95 to i32*, !dbg !572
  %97 = load i32, i32* %96, align 1, !dbg !572, !tbaa !422
  %98 = zext i32 %97 to i64, !dbg !571
  br label %103, !dbg !573

; <label>:99:                                     ; preds = %75
  %100 = getelementptr inbounds i8, i8* %78, i64 -17, !dbg !574
  %101 = bitcast i8* %100 to i64*, !dbg !575
  %102 = load i64, i64* %101, align 1, !dbg !575, !tbaa !337
  br label %103, !dbg !576

; <label>:103:                                    ; preds = %75, %82, %85, %89, %94, %99
  %104 = phi i64 [ %102, %99 ], [ %98, %94 ], [ %93, %89 ], [ %88, %85 ], [ %84, %82 ], [ 0, %75 ]
  br label %105

; <label>:105:                                    ; preds = %103, %121
  %106 = phi i8* [ %123, %121 ], [ %78, %103 ]
  %107 = phi i64 [ %122, %121 ], [ %104, %103 ]
  %108 = phi i64 [ %124, %121 ], [ 0, %103 ]
  %109 = icmp eq i64 %107, 0
  br label %110, !dbg !577

; <label>:110:                                    ; preds = %114, %105
  br i1 %109, label %125, label %111, !dbg !577

; <label>:111:                                    ; preds = %110
  %112 = tail call i64 @write(i32 %77, i8* %106, i64 %107) #6, !dbg !596
  %113 = icmp slt i64 %112, 0, !dbg !599
  br i1 %113, label %114, label %121, !dbg !601

; <label>:114:                                    ; preds = %111
  %115 = tail call i32* @__errno() #6, !dbg !602
  %116 = load i32, i32* %115, align 4, !dbg !602, !tbaa !422
  %117 = icmp eq i32 %116, 4, !dbg !605
  br i1 %117, label %110, label %118, !dbg !606, !llvm.loop !607

; <label>:118:                                    ; preds = %114
  %119 = icmp eq i64 %108, 0, !dbg !610
  %120 = select i1 %119, i64 -1, i64 %108, !dbg !610
  br label %125, !dbg !611

; <label>:121:                                    ; preds = %111
  %122 = sub i64 %107, %112, !dbg !612
  %123 = getelementptr inbounds i8, i8* %106, i64 %112, !dbg !613
  %124 = add nsw i64 %112, %108, !dbg !614
  br label %105, !dbg !577, !llvm.loop !607

; <label>:125:                                    ; preds = %110, %118
  %126 = phi i64 [ %120, %118 ], [ %108, %110 ], !dbg !615
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !617, !tbaa !551
  %128 = icmp eq i64 %127, 0, !dbg !617
  br i1 %128, label %132, label %129, !dbg !619

; <label>:129:                                    ; preds = %125
  %130 = tail call i64 @mstime() #6, !dbg !620
  %131 = sub nsw i64 %130, %76, !dbg !620
  br label %132, !dbg !620

; <label>:132:                                    ; preds = %125, %129
  %133 = phi i64 [ %131, %129 ], [ %76, %125 ], !dbg !622
  br i1 %69, label %134, label %140, !dbg !623

; <label>:134:                                    ; preds = %132
  %135 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !624, !tbaa !551
  %136 = icmp eq i64 %135, 0, !dbg !624
  %137 = icmp slt i64 %133, %135, !dbg !624
  %138 = or i1 %136, %137, !dbg !624
  br i1 %138, label %153, label %139, !dbg !624

; <label>:139:                                    ; preds = %134
  tail call void @latencyAddSample(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %133) #6, !dbg !624
  br label %153, !dbg !624

; <label>:140:                                    ; preds = %132
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !628, !tbaa !630
  %142 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !631
  %143 = and i32 %142, %141, !dbg !632
  %144 = icmp eq i32 %143, -1, !dbg !632
  %145 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !633, !tbaa !551
  %146 = icmp eq i64 %145, 0, !dbg !633
  %147 = icmp slt i64 %133, %145, !dbg !636
  %148 = or i1 %146, %147, !dbg !636
  br i1 %144, label %151, label %149, !dbg !632

; <label>:149:                                    ; preds = %140
  br i1 %148, label %153, label %150, !dbg !639

; <label>:150:                                    ; preds = %149
  tail call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %133) #6, !dbg !639
  br label %153, !dbg !639

; <label>:151:                                    ; preds = %140
  br i1 %148, label %153, label %152, !dbg !640

; <label>:152:                                    ; preds = %151
  tail call void @latencyAddSample(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i64 %133) #6, !dbg !640
  br label %153, !dbg !640

; <label>:153:                                    ; preds = %151, %149, %134, %150, %152, %139
  %154 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !641, !tbaa !551
  %155 = icmp eq i64 %154, 0, !dbg !641
  %156 = icmp slt i64 %133, %154, !dbg !641
  %157 = or i1 %155, %156, !dbg !641
  br i1 %157, label %159, label %158, !dbg !641

; <label>:158:                                    ; preds = %153
  tail call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %133) #6, !dbg !641
  br label %159, !dbg !641

; <label>:159:                                    ; preds = %153, %158
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 132), align 8, !dbg !643, !tbaa !534
  %160 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !644, !tbaa !461
  %161 = getelementptr inbounds i8, i8* %160, i64 -1, !dbg !647
  %162 = load i8, i8* %161, align 1, !dbg !647, !tbaa !475
  %163 = trunc i8 %162 to i3, !dbg !649
  switch i3 %163, label %185 [
    i3 0, label %164
    i3 1, label %167
    i3 2, label %171
    i3 3, label %176
    i3 -4, label %181
  ], !dbg !649

; <label>:164:                                    ; preds = %159
  %165 = lshr i8 %162, 3, !dbg !650
  %166 = zext i8 %165 to i64, !dbg !650
  br label %185, !dbg !651

; <label>:167:                                    ; preds = %159
  %168 = getelementptr inbounds i8, i8* %160, i64 -3, !dbg !652
  %169 = load i8, i8* %168, align 1, !dbg !653, !tbaa !475
  %170 = zext i8 %169 to i64, !dbg !652
  br label %185, !dbg !654

; <label>:171:                                    ; preds = %159
  %172 = getelementptr inbounds i8, i8* %160, i64 -5, !dbg !655
  %173 = bitcast i8* %172 to i16*, !dbg !656
  %174 = load i16, i16* %173, align 1, !dbg !656, !tbaa !492
  %175 = zext i16 %174 to i64, !dbg !655
  br label %185, !dbg !657

; <label>:176:                                    ; preds = %159
  %177 = getelementptr inbounds i8, i8* %160, i64 -9, !dbg !658
  %178 = bitcast i8* %177 to i32*, !dbg !659
  %179 = load i32, i32* %178, align 1, !dbg !659, !tbaa !422
  %180 = zext i32 %179 to i64, !dbg !658
  br label %185, !dbg !660

; <label>:181:                                    ; preds = %159
  %182 = getelementptr inbounds i8, i8* %160, i64 -17, !dbg !661
  %183 = bitcast i8* %182 to i64*, !dbg !662
  %184 = load i64, i64* %183, align 1, !dbg !662, !tbaa !337
  br label %185, !dbg !663

; <label>:185:                                    ; preds = %159, %164, %167, %171, %176, %181
  %186 = phi i64 [ %184, %181 ], [ %180, %176 ], [ %175, %171 ], [ %170, %167 ], [ %166, %164 ], [ 0, %159 ], !dbg !664
  %187 = icmp eq i64 %126, %186, !dbg !665
  br i1 %187, label %255, label %188, !dbg !666

; <label>:188:                                    ; preds = %185
  %189 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !668, !tbaa !511
  %190 = load i64, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !670, !tbaa !337
  %191 = sub nsw i64 %189, %190, !dbg !671
  %192 = icmp sgt i64 %191, 30, !dbg !672
  br i1 %192, label %193, label %194, !dbg !673

; <label>:193:                                    ; preds = %188
  store i64 %189, i64* @flushAppendOnlyFile.last_write_error_log, align 8, !dbg !674, !tbaa !337
  br label %194, !dbg !676

; <label>:194:                                    ; preds = %193, %188
  %195 = phi i1 [ true, %193 ], [ false, %188 ]
  %196 = icmp eq i64 %126, -1, !dbg !677
  br i1 %196, label %197, label %204, !dbg !679

; <label>:197:                                    ; preds = %194
  br i1 %195, label %198, label %244, !dbg !680

; <label>:198:                                    ; preds = %197
  %199 = tail call i32* @__errno() #6, !dbg !682
  %200 = load i32, i32* %199, align 4, !dbg !682, !tbaa !422
  %201 = tail call i8* @strerror(i32 %200) #6, !dbg !685
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %201) #6, !dbg !686
  %202 = tail call i32* @__errno() #6, !dbg !687
  %203 = load i32, i32* %202, align 4, !dbg !687, !tbaa !422
  br label %241, !dbg !688

; <label>:204:                                    ; preds = %194
  br i1 %195, label %205, label %229, !dbg !689

; <label>:205:                                    ; preds = %204
  switch i3 %163, label %227 [
    i3 0, label %206
    i3 1, label %209
    i3 2, label %213
    i3 3, label %218
    i3 -4, label %223
  ], !dbg !696

; <label>:206:                                    ; preds = %205
  %207 = lshr i8 %162, 3, !dbg !697
  %208 = zext i8 %207 to i64, !dbg !697
  br label %227, !dbg !698

; <label>:209:                                    ; preds = %205
  %210 = getelementptr inbounds i8, i8* %160, i64 -3, !dbg !699
  %211 = load i8, i8* %210, align 1, !dbg !700, !tbaa !475
  %212 = zext i8 %211 to i64, !dbg !699
  br label %227, !dbg !701

; <label>:213:                                    ; preds = %205
  %214 = getelementptr inbounds i8, i8* %160, i64 -5, !dbg !702
  %215 = bitcast i8* %214 to i16*, !dbg !703
  %216 = load i16, i16* %215, align 1, !dbg !703, !tbaa !492
  %217 = zext i16 %216 to i64, !dbg !702
  br label %227, !dbg !704

; <label>:218:                                    ; preds = %205
  %219 = getelementptr inbounds i8, i8* %160, i64 -9, !dbg !705
  %220 = bitcast i8* %219 to i32*, !dbg !706
  %221 = load i32, i32* %220, align 1, !dbg !706, !tbaa !422
  %222 = zext i32 %221 to i64, !dbg !705
  br label %227, !dbg !707

; <label>:223:                                    ; preds = %205
  %224 = getelementptr inbounds i8, i8* %160, i64 -17, !dbg !708
  %225 = bitcast i8* %224 to i64*, !dbg !709
  %226 = load i64, i64* %225, align 1, !dbg !709, !tbaa !337
  br label %227, !dbg !710

; <label>:227:                                    ; preds = %205, %206, %209, %213, %218, %223
  %228 = phi i64 [ %226, %223 ], [ %222, %218 ], [ %217, %213 ], [ %212, %209 ], [ %208, %206 ], [ 0, %205 ], !dbg !711
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0), i64 %126, i64 %228) #6, !dbg !712
  br label %229, !dbg !713

; <label>:229:                                    ; preds = %227, %204
  %230 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !714, !tbaa !447
  %231 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !716, !tbaa !507
  %232 = tail call i32 @ftruncate(i32 %230, i64 %231) #6, !dbg !717
  %233 = icmp ne i32 %232, -1, !dbg !718
  %234 = xor i1 %195, true, !dbg !719
  %235 = or i1 %233, %234, !dbg !719
  %236 = select i1 %233, i64 -1, i64 %126, !dbg !719
  br i1 %235, label %241, label %237, !dbg !719

; <label>:237:                                    ; preds = %229
  %238 = tail call i32* @__errno() #6, !dbg !720
  %239 = load i32, i32* %238, align 4, !dbg !720, !tbaa !422
  %240 = tail call i8* @strerror(i32 %239) #6, !dbg !724
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.16, i64 0, i64 0), i8* %240) #6, !dbg !725
  br label %241, !dbg !726

; <label>:241:                                    ; preds = %237, %229, %198
  %242 = phi i32 [ %203, %198 ], [ 28, %229 ], [ 28, %237 ]
  %243 = phi i64 [ -1, %198 ], [ %236, %229 ], [ %126, %237 ]
  store i32 %242, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !727, !tbaa !728
  br label %244, !dbg !729

; <label>:244:                                    ; preds = %241, %197
  %245 = phi i64 [ -1, %197 ], [ %243, %241 ], !dbg !731
  %246 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !729, !tbaa !480
  %247 = icmp eq i32 %246, 1, !dbg !732
  br i1 %247, label %248, label %249, !dbg !733

; <label>:248:                                    ; preds = %244
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !734
  tail call void @exit(i32 1) #8, !dbg !736
  unreachable, !dbg !736

; <label>:249:                                    ; preds = %244
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !737, !tbaa !739
  %250 = icmp sgt i64 %245, 0, !dbg !740
  br i1 %250, label %251, label %362, !dbg !742

; <label>:251:                                    ; preds = %249
  %252 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !743, !tbaa !507
  %253 = add nsw i64 %252, %245, !dbg !743
  store i64 %253, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !743, !tbaa !507
  %254 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !745, !tbaa !461
  tail call void @sdsrange(i8* %254, i64 %245, i64 -1) #6, !dbg !746
  br label %362, !dbg !747

; <label>:255:                                    ; preds = %185
  %256 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !748, !tbaa !739
  %257 = icmp eq i32 %256, -1, !dbg !751
  br i1 %257, label %258, label %261, !dbg !752

; <label>:258:                                    ; preds = %255
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !753
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 140), align 8, !dbg !755, !tbaa !739
  %259 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !756, !tbaa !461
  %260 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !758
  br label %261, !dbg !760

; <label>:261:                                    ; preds = %255, %258
  %262 = phi i8* [ %161, %255 ], [ %260, %258 ], !dbg !758
  %263 = phi i8* [ %160, %255 ], [ %259, %258 ], !dbg !756
  %264 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !761, !tbaa !507
  %265 = add nsw i64 %264, %126, !dbg !761
  store i64 %265, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !761, !tbaa !507
  %266 = load i8, i8* %262, align 1, !dbg !758, !tbaa !475
  %267 = trunc i8 %266 to i3, !dbg !764
  switch i3 %267, label %307 [
    i3 0, label %268
    i3 1, label %271
    i3 2, label %279
    i3 3, label %289
    i3 -4, label %299
  ], !dbg !764

; <label>:268:                                    ; preds = %261
  %269 = lshr i8 %266, 3, !dbg !765
  %270 = zext i8 %269 to i64, !dbg !765
  br label %307, !dbg !782

; <label>:271:                                    ; preds = %261
  %272 = getelementptr inbounds i8, i8* %263, i64 -3, !dbg !783
  %273 = load i8, i8* %272, align 1, !dbg !784, !tbaa !475
  %274 = zext i8 %273 to i64, !dbg !783
  %275 = getelementptr inbounds i8, i8* %263, i64 -2, !dbg !786
  %276 = load i8, i8* %275, align 1, !dbg !786, !tbaa !475
  %277 = zext i8 %276 to i64, !dbg !787
  %278 = sub nsw i64 %277, %274, !dbg !788
  br label %307

; <label>:279:                                    ; preds = %261
  %280 = getelementptr inbounds i8, i8* %263, i64 -5, !dbg !789
  %281 = bitcast i8* %280 to i16*, !dbg !790
  %282 = load i16, i16* %281, align 1, !dbg !790, !tbaa !492
  %283 = zext i16 %282 to i64, !dbg !789
  %284 = getelementptr inbounds i8, i8* %263, i64 -3, !dbg !792
  %285 = bitcast i8* %284 to i16*, !dbg !792
  %286 = load i16, i16* %285, align 1, !dbg !792, !tbaa !492
  %287 = zext i16 %286 to i64, !dbg !793
  %288 = sub nsw i64 %287, %283, !dbg !794
  br label %307

; <label>:289:                                    ; preds = %261
  %290 = getelementptr inbounds i8, i8* %263, i64 -9, !dbg !795
  %291 = bitcast i8* %290 to i32*, !dbg !796
  %292 = load i32, i32* %291, align 1, !dbg !796, !tbaa !422
  %293 = zext i32 %292 to i64, !dbg !795
  %294 = getelementptr inbounds i8, i8* %263, i64 -5, !dbg !798
  %295 = bitcast i8* %294 to i32*, !dbg !798
  %296 = load i32, i32* %295, align 1, !dbg !798, !tbaa !422
  %297 = sub i32 %296, %292, !dbg !799
  %298 = zext i32 %297 to i64, !dbg !800
  br label %307

; <label>:299:                                    ; preds = %261
  %300 = getelementptr inbounds i8, i8* %263, i64 -17, !dbg !801
  %301 = bitcast i8* %300 to i64*, !dbg !802
  %302 = load i64, i64* %301, align 1, !dbg !802, !tbaa !337
  %303 = getelementptr inbounds i8, i8* %263, i64 -9, !dbg !804
  %304 = bitcast i8* %303 to i64*, !dbg !804
  %305 = load i64, i64* %304, align 1, !dbg !804, !tbaa !337
  %306 = sub i64 %305, %302, !dbg !805
  br label %307

; <label>:307:                                    ; preds = %261, %268, %271, %279, %289, %299
  %308 = phi i64 [ %302, %299 ], [ %293, %289 ], [ %283, %279 ], [ %274, %271 ], [ %270, %268 ], [ 0, %261 ]
  %309 = phi i64 [ %306, %299 ], [ %298, %289 ], [ %288, %279 ], [ %278, %271 ], [ 0, %268 ], [ 0, %261 ], !dbg !806
  %310 = add i64 %309, %308, !dbg !808
  %311 = icmp ult i64 %310, 4000, !dbg !809
  br i1 %311, label %312, label %313, !dbg !810

; <label>:312:                                    ; preds = %307
  tail call void @sdsclear(i8* %263) #6, !dbg !811
  br label %315, !dbg !813

; <label>:313:                                    ; preds = %307
  tail call void @sdsfree(i8* %263) #6, !dbg !814
  %314 = tail call i8* @sdsempty() #6, !dbg !816
  store i8* %314, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !817, !tbaa !461
  br label %315

; <label>:315:                                    ; preds = %44, %312, %313
  %316 = phi i32 [ 0, %44 ], [ %70, %312 ], [ %70, %313 ], !dbg !478
  %317 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 120), align 8, !dbg !818, !tbaa !820
  %318 = icmp eq i32 %317, 0, !dbg !821
  br i1 %318, label %324, label %319, !dbg !822

; <label>:319:                                    ; preds = %315
  %320 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !823, !tbaa !630
  %321 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !824
  %322 = and i32 %321, %320, !dbg !825
  %323 = icmp eq i32 %322, -1, !dbg !825
  br i1 %323, label %324, label %362, !dbg !825

; <label>:324:                                    ; preds = %319, %315
  %325 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !826, !tbaa !480
  switch i32 %325, label %362 [
    i32 1, label %326
    i32 2, label %348
  ], !dbg !828

; <label>:326:                                    ; preds = %324
  %327 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !829, !tbaa !551
  %328 = icmp eq i64 %327, 0, !dbg !829
  br i1 %328, label %331, label %329, !dbg !832

; <label>:329:                                    ; preds = %326
  %330 = tail call i64 @mstime() #6, !dbg !833
  br label %331, !dbg !833

; <label>:331:                                    ; preds = %326, %329
  %332 = phi i64 [ %330, %329 ], [ 0, %326 ], !dbg !833
  %333 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !835, !tbaa !447
  %334 = tail call i32 @fsync(i32 %333) #6, !dbg !836
  %335 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !837, !tbaa !551
  %336 = icmp eq i64 %335, 0, !dbg !837
  br i1 %336, label %345, label %337, !dbg !839

; <label>:337:                                    ; preds = %331
  %338 = tail call i64 @mstime() #6, !dbg !840
  %339 = sub nsw i64 %338, %332, !dbg !840
  %340 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !842, !tbaa !551
  %341 = icmp eq i64 %340, 0, !dbg !842
  %342 = icmp slt i64 %339, %340, !dbg !842
  %343 = or i1 %341, %342, !dbg !842
  br i1 %343, label %345, label %344, !dbg !842

; <label>:344:                                    ; preds = %337
  tail call void @latencyAddSample(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i64 %339) #6, !dbg !842
  br label %345, !dbg !842

; <label>:345:                                    ; preds = %331, %337, %344
  %346 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !844, !tbaa !507
  store i64 %346, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !845, !tbaa !505
  %347 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !846, !tbaa !511
  store i64 %347, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !847, !tbaa !513
  br label %362, !dbg !848

; <label>:348:                                    ; preds = %324
  %349 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !849, !tbaa !511
  %350 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !851, !tbaa !513
  %351 = icmp sgt i64 %349, %350, !dbg !852
  br i1 %351, label %352, label %362, !dbg !853

; <label>:352:                                    ; preds = %348
  %353 = icmp eq i32 %316, 0, !dbg !854
  br i1 %353, label %354, label %360, !dbg !857

; <label>:354:                                    ; preds = %352
  %355 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !858, !tbaa !447
  %356 = sext i32 %355 to i64, !dbg !862
  %357 = inttoptr i64 %356 to i8*, !dbg !863
  tail call void @bioCreateBackgroundJob(i32 1, i8* %357, i8* null, i8* null) #6, !dbg !864
  %358 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !865, !tbaa !507
  store i64 %358, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !866, !tbaa !505
  %359 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !867, !tbaa !511
  br label %360, !dbg !868

; <label>:360:                                    ; preds = %352, %354
  %361 = phi i64 [ %349, %352 ], [ %359, %354 ], !dbg !867
  store i64 %361, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !869, !tbaa !513
  br label %362, !dbg !870

; <label>:362:                                    ; preds = %6, %345, %360, %348, %324, %319, %249, %251, %62, %35, %40, %36, %44, %61
  ret void, !dbg !871
}

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @killAppendOnlyChild() unnamed_addr #0 !dbg !872 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7, !dbg !888
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !889, !tbaa !630
  %5 = icmp eq i32 %4, -1, !dbg !891
  br i1 %5, label %42, label %6, !dbg !892

; <label>:6:                                      ; preds = %0
  %7 = sext i32 %4 to i64, !dbg !893
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.109, i64 0, i64 0), i64 %7) #6, !dbg !894
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !895, !tbaa !630
  %9 = tail call i32 @kill(i32 %8, i32 10) #6, !dbg !897
  %10 = icmp eq i32 %9, -1, !dbg !898
  br i1 %10, label %15, label %11, !dbg !899

; <label>:11:                                     ; preds = %6, %11
  %12 = call i32 @wait3(i32* nonnull %2, i32 0, %struct.rusage* null) #6, !dbg !901
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !903, !tbaa !630
  %14 = icmp eq i32 %12, %13, !dbg !904
  br i1 %14, label %15, label %11, !dbg !905, !llvm.loop !906

; <label>:15:                                     ; preds = %11, %6
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !908, !tbaa !90
  %17 = icmp eq %struct.list* %16, null, !dbg !910
  br i1 %17, label %19, label %18, !dbg !911

; <label>:18:                                     ; preds = %15
  call void @listRelease(%struct.list* nonnull %16) #6, !dbg !912
  br label %19, !dbg !912

; <label>:19:                                     ; preds = %15, %18
  %20 = call %struct.list* @listCreate() #6, !dbg !913
  store %struct.list* %20, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !914, !tbaa !90
  %21 = getelementptr inbounds %struct.list, %struct.list* %20, i64 0, i32 3, !dbg !915
  store void (i8*)* @zfree, void (i8*)** %21, align 8, !dbg !915, !tbaa !108
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !916, !tbaa !630
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !918
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %23) #7, !dbg !918
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %23, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %22) #6, !dbg !919
  %25 = call i32 @unlink(i8* nonnull %23) #6, !dbg !920
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %23) #7, !dbg !921
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !922, !tbaa !630
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !923, !tbaa !924
  %26 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !925, !tbaa !255
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !928, !tbaa !929
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %26, i32 %27, i32 1) #6, !dbg !930
  %28 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !931, !tbaa !255
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !932, !tbaa !257
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %28, i32 %29, i32 2) #6, !dbg !933
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !934, !tbaa !257
  %31 = call i32 @close(i32 %30) #6, !dbg !935
  %32 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !936, !tbaa !937
  %33 = call i32 @close(i32 %32) #6, !dbg !938
  %34 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !939, !tbaa !940
  %35 = call i32 @close(i32 %34) #6, !dbg !941
  %36 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !942, !tbaa !929
  %37 = call i32 @close(i32 %36) #6, !dbg !943
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !944, !tbaa !945
  %39 = call i32 @close(i32 %38) #6, !dbg !946
  %40 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !947, !tbaa !948
  %41 = call i32 @close(i32 %40) #6, !dbg !949
  br label %42, !dbg !950

; <label>:42:                                     ; preds = %0, %19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7, !dbg !950
  ret void, !dbg !950
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startAppendOnly() local_unnamed_addr #0 !dbg !951 {
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0, !dbg !961
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !961
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !963, !tbaa !964
  %4 = tail call i32 (i8*, i32, ...) @open(i8* %3, i32 521, i32 420) #6, !dbg !965
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !967, !tbaa !444
  %6 = icmp eq i32 %5, 0, !dbg !967
  br i1 %6, label %8, label %7, !dbg !967

; <label>:7:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 253) #6, !dbg !967
  tail call void @_exit(i32 1) #8, !dbg !967
  unreachable, !dbg !967

; <label>:8:                                      ; preds = %0
  %9 = icmp eq i32 %4, -1, !dbg !968
  br i1 %9, label %10, label %18, !dbg !969

; <label>:10:                                     ; preds = %8
  %11 = call i8* @getcwd(i8* nonnull %2, i64 1024) #6, !dbg !970
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !972, !tbaa !964
  %13 = icmp eq i8* %11, null, !dbg !973
  %14 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %11, !dbg !973
  %15 = call i32* @__errno() #6, !dbg !974
  %16 = load i32, i32* %15, align 4, !dbg !974, !tbaa !422
  %17 = call i8* @strerror(i32 %16) #6, !dbg !975
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %14, i8* %17) #6, !dbg !976
  br label %33

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !977, !tbaa !979
  %20 = icmp eq i32 %19, -1, !dbg !980
  br i1 %20, label %22, label %21, !dbg !981

; <label>:21:                                     ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !982, !tbaa !984
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !985
  br label %31, !dbg !986

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !987, !tbaa !630
  %24 = icmp eq i32 %23, -1, !dbg !990
  br i1 %24, label %26, label %25, !dbg !991

; <label>:25:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !992
  tail call fastcc void @killAppendOnlyChild() #9, !dbg !994
  br label %26, !dbg !995

; <label>:26:                                     ; preds = %22, %25
  %27 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !996
  %28 = icmp eq i32 %27, -1, !dbg !998
  br i1 %28, label %29, label %31, !dbg !999

; <label>:29:                                     ; preds = %26
  %30 = tail call i32 @close(i32 %4) #6, !dbg !1000
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1002
  br label %33, !dbg !1003

; <label>:31:                                     ; preds = %26, %21
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1004, !tbaa !444
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1005, !tbaa !511
  store i64 %32, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 133), align 8, !dbg !1006, !tbaa !513
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !1007, !tbaa !447
  br label %33, !dbg !1008

; <label>:33:                                     ; preds = %31, %29, %10
  %34 = phi i32 [ -1, %10 ], [ 0, %31 ], [ -1, %29 ], !dbg !1009
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #7, !dbg !1010
  ret i32 %34, !dbg !1010
}

; Function Attrs: noredzone
declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @getcwd(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileBackground() local_unnamed_addr #0 !dbg !1011 {
  %1 = alloca [256 x i8], align 16
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1021, !tbaa !630
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1023
  %4 = and i32 %3, %2, !dbg !1024
  %5 = icmp eq i32 %4, -1, !dbg !1024
  br i1 %5, label %6, label %67, !dbg !1024

; <label>:6:                                      ; preds = %0
  %7 = tail call i32 @aofCreatePipes() #9, !dbg !1025
  %8 = icmp eq i32 %7, 0, !dbg !1027
  br i1 %8, label %9, label %67, !dbg !1028

; <label>:9:                                      ; preds = %6
  tail call void @openChildInfoPipe() #6, !dbg !1029
  %10 = tail call i64 @ustime() #6, !dbg !1030
  %11 = tail call i32 @fork() #6, !dbg !1032
  %12 = icmp eq i32 %11, 0, !dbg !1034
  br i1 %12, label %13, label %27, !dbg !1035

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !1036
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1036
  tail call void @closeListeningSockets(i32 0) #6, !dbg !1038
  tail call void @redisSetProcTitle(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !1039
  %15 = tail call i32 @getpid() #6, !dbg !1040
  %16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %14, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %15) #6, !dbg !1041
  %17 = call i32 @rewriteAppendOnlyFile(i8* nonnull %14) #9, !dbg !1042
  %18 = icmp eq i32 %17, 0, !dbg !1043
  br i1 %18, label %19, label %25, !dbg !1044

; <label>:19:                                     ; preds = %13
  %20 = call i64 @zmalloc_get_private_dirty(i64 -1) #6, !dbg !1045
  %21 = icmp eq i64 %20, 0, !dbg !1047
  br i1 %21, label %24, label %22, !dbg !1049

; <label>:22:                                     ; preds = %19
  %23 = lshr i64 %20, 20, !dbg !1050
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.89, i64 0, i64 0), i64 %23) #6, !dbg !1052
  br label %24, !dbg !1053

; <label>:24:                                     ; preds = %19, %22
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 171, i32 1), align 8, !dbg !1054, !tbaa !1055
  call void @sendChildInfo(i32 1) #6, !dbg !1056
  call void @exitFromChild(i32 0) #6, !dbg !1057
  br label %26, !dbg !1058

; <label>:25:                                     ; preds = %13
  call void @exitFromChild(i32 1) #6, !dbg !1059
  br label %26

; <label>:26:                                     ; preds = %25, %24
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %14) #7, !dbg !1061
  br label %67, !dbg !1062

; <label>:27:                                     ; preds = %9
  %28 = tail call i64 @ustime() #6, !dbg !1063
  %29 = sub nsw i64 %28, %10, !dbg !1065
  store i64 %29, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1066, !tbaa !1067
  %30 = tail call i64 @zmalloc_used_memory() #6, !dbg !1068
  %31 = uitofp i64 %30 to double, !dbg !1069
  %32 = fmul double %31, 1.000000e+06, !dbg !1070
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 84), align 8, !dbg !1071, !tbaa !1067
  %34 = sitofp i64 %33 to double, !dbg !1072
  %35 = fdiv double %32, %34, !dbg !1073
  %36 = fmul double %35, 0x3E10000000000000, !dbg !1074
  store double %36, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 85), align 8, !dbg !1075, !tbaa !1076
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !1077, !tbaa !551
  %38 = icmp eq i64 %37, 0, !dbg !1077
  br i1 %38, label %43, label %39, !dbg !1077

; <label>:39:                                     ; preds = %27
  %40 = sdiv i64 %33, 1000, !dbg !1077
  %41 = icmp slt i64 %40, %37, !dbg !1077
  br i1 %41, label %43, label %42, !dbg !1079

; <label>:42:                                     ; preds = %39
  tail call void @latencyAddSample(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i64 %40) #6, !dbg !1077
  br label %43, !dbg !1077

; <label>:43:                                     ; preds = %39, %27, %42
  %44 = icmp eq i32 %11, -1, !dbg !1080
  br i1 %44, label %45, label %65, !dbg !1082

; <label>:45:                                     ; preds = %43
  tail call void @closeChildInfoPipe() #6, !dbg !1083
  %46 = tail call i32* @__errno() #6, !dbg !1085
  %47 = load i32, i32* %46, align 4, !dbg !1085, !tbaa !422
  %48 = tail call i8* @strerror(i32 %47) #6, !dbg !1086
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.91, i64 0, i64 0), i8* %48) #6, !dbg !1087
  %49 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1088, !tbaa !255
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1090, !tbaa !929
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %49, i32 %50, i32 1) #6, !dbg !1091
  %51 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !1092, !tbaa !255
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1093, !tbaa !257
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %51, i32 %52, i32 2) #6, !dbg !1094
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !1095, !tbaa !257
  %54 = tail call i32 @close(i32 %53) #6, !dbg !1096
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !1097, !tbaa !937
  %56 = tail call i32 @close(i32 %55) #6, !dbg !1098
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !1099, !tbaa !940
  %58 = tail call i32 @close(i32 %57) #6, !dbg !1100
  %59 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !1101, !tbaa !929
  %60 = tail call i32 @close(i32 %59) #6, !dbg !1102
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !1103, !tbaa !945
  %62 = tail call i32 @close(i32 %61) #6, !dbg !1104
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !1105, !tbaa !948
  %64 = tail call i32 @close(i32 %63) #6, !dbg !1106
  br label %67, !dbg !1107

; <label>:65:                                     ; preds = %43
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i32 %11) #6, !dbg !1108
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !1109, !tbaa !984
  %66 = tail call i64 @time(i64* null) #6, !dbg !1110
  store i64 %66, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !1111, !tbaa !924
  store i32 %11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1112, !tbaa !630
  tail call void @updateDictResizePolicy() #6, !dbg !1113
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1114, !tbaa !453
  tail call void @replicationScriptCacheFlush() #6, !dbg !1115
  br label %67, !dbg !1116

; <label>:67:                                     ; preds = %6, %0, %26, %65, %45
  %68 = phi i32 [ 0, %26 ], [ -1, %45 ], [ 0, %65 ], [ -1, %0 ], [ -1, %6 ], !dbg !1117
  ret i32 %68, !dbg !1118
}

; Function Attrs: noredzone nounwind
define dso_local i64 @aofWrite(i32, i8*, i64) local_unnamed_addr #0 !dbg !578 {
  br label %4, !dbg !608

; <label>:4:                                      ; preds = %20, %3
  %5 = phi i8* [ %22, %20 ], [ %1, %3 ]
  %6 = phi i64 [ %21, %20 ], [ %2, %3 ]
  %7 = phi i64 [ %23, %20 ], [ 0, %3 ]
  %8 = icmp eq i64 %6, 0
  br label %9, !dbg !608

; <label>:9:                                      ; preds = %4, %13
  br i1 %8, label %24, label %10, !dbg !608

; <label>:10:                                     ; preds = %9
  %11 = tail call i64 @write(i32 %0, i8* %5, i64 %6) #6, !dbg !1124
  %12 = icmp slt i64 %11, 0, !dbg !1125
  br i1 %12, label %13, label %20, !dbg !1126

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno() #6, !dbg !1127
  %15 = load i32, i32* %14, align 4, !dbg !1127, !tbaa !422
  %16 = icmp eq i32 %15, 4, !dbg !1128
  br i1 %16, label %9, label %17, !dbg !1129, !llvm.loop !607

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i64 %7, 0, !dbg !1130
  %19 = select i1 %18, i64 -1, i64 %7, !dbg !1130
  br label %24, !dbg !1131

; <label>:20:                                     ; preds = %10
  %21 = sub i64 %6, %11, !dbg !1132
  %22 = getelementptr inbounds i8, i8* %5, i64 %11, !dbg !1133
  %23 = add nsw i64 %11, %7, !dbg !1134
  br label %4, !dbg !608, !llvm.loop !607

; <label>:24:                                     ; preds = %9, %17
  %25 = phi i64 [ %19, %17 ], [ %7, %9 ], !dbg !1135
  ret i64 %25, !dbg !1136
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
define dso_local i8* @catAppendOnlyGenericCommand(i8*, i32, %struct.redisObject** nocapture readonly) local_unnamed_addr #0 !dbg !1137 {
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !1164
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1164
  store i8 42, i8* %5, align 16, !dbg !1166, !tbaa !475
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 1, !dbg !1167
  %7 = sext i32 %1 to i64, !dbg !1168
  %8 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %7) #6, !dbg !1169
  %9 = add nsw i32 %8, 1, !dbg !1170
  %10 = add nsw i32 %8, 2, !dbg !1172
  %11 = sext i32 %9 to i64, !dbg !1173
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %11, !dbg !1173
  store i8 13, i8* %12, align 1, !dbg !1174, !tbaa !475
  %13 = add nsw i32 %8, 3, !dbg !1175
  %14 = sext i32 %10 to i64, !dbg !1176
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %14, !dbg !1176
  store i8 10, i8* %15, align 1, !dbg !1177, !tbaa !475
  %16 = sext i32 %13 to i64, !dbg !1178
  %17 = call i8* @sdscatlen(i8* %0, i8* nonnull %5, i64 %16) #6, !dbg !1179
  %18 = icmp sgt i32 %1, 0, !dbg !1181
  br i1 %18, label %19, label %96, !dbg !1184

; <label>:19:                                     ; preds = %3
  %20 = zext i32 %1 to i64
  br label %21, !dbg !1185

; <label>:21:                                     ; preds = %90, %19
  %22 = phi i64 [ 0, %19 ], [ %94, %90 ]
  %23 = phi i8* [ %17, %19 ], [ %93, %90 ]
  %24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %22, !dbg !1185
  %25 = load %struct.redisObject*, %struct.redisObject** %24, align 8, !dbg !1185, !tbaa !1187
  %26 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %25) #6, !dbg !1188
  store i8 36, i8* %5, align 16, !dbg !1190, !tbaa !475
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %26, i64 0, i32 2, !dbg !1191
  %28 = load i8*, i8** %27, align 8, !dbg !1191, !tbaa !1192
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !1196
  %30 = load i8, i8* %29, align 1, !dbg !1196, !tbaa !475
  %31 = trunc i8 %30 to i3, !dbg !1198
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !1198

; <label>:32:                                     ; preds = %21
  %33 = lshr i8 %30, 3, !dbg !1199
  %34 = zext i8 %33 to i64, !dbg !1199
  br label %53, !dbg !1200

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds i8, i8* %28, i64 -3, !dbg !1201
  %37 = load i8, i8* %36, align 1, !dbg !1202, !tbaa !475
  %38 = zext i8 %37 to i64, !dbg !1201
  br label %53, !dbg !1203

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds i8, i8* %28, i64 -5, !dbg !1204
  %41 = bitcast i8* %40 to i16*, !dbg !1205
  %42 = load i16, i16* %41, align 1, !dbg !1205, !tbaa !492
  %43 = zext i16 %42 to i64, !dbg !1204
  br label %53, !dbg !1206

; <label>:44:                                     ; preds = %21
  %45 = getelementptr inbounds i8, i8* %28, i64 -9, !dbg !1207
  %46 = bitcast i8* %45 to i32*, !dbg !1208
  %47 = load i32, i32* %46, align 1, !dbg !1208, !tbaa !422
  %48 = zext i32 %47 to i64, !dbg !1207
  br label %53, !dbg !1209

; <label>:49:                                     ; preds = %21
  %50 = getelementptr inbounds i8, i8* %28, i64 -17, !dbg !1210
  %51 = bitcast i8* %50 to i64*, !dbg !1211
  %52 = load i64, i64* %51, align 1, !dbg !1211, !tbaa !337
  br label %53, !dbg !1212

; <label>:53:                                     ; preds = %21, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %21 ], !dbg !1213
  %55 = call i32 @ll2string(i8* nonnull %6, i64 31, i64 %54) #6, !dbg !1214
  %56 = add nsw i32 %55, 1, !dbg !1215
  %57 = add nsw i32 %55, 2, !dbg !1216
  %58 = sext i32 %56 to i64, !dbg !1217
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %58, !dbg !1217
  store i8 13, i8* %59, align 1, !dbg !1218, !tbaa !475
  %60 = add nsw i32 %55, 3, !dbg !1219
  %61 = sext i32 %57 to i64, !dbg !1220
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 %61, !dbg !1220
  store i8 10, i8* %62, align 1, !dbg !1221, !tbaa !475
  %63 = sext i32 %60 to i64, !dbg !1222
  %64 = call i8* @sdscatlen(i8* %23, i8* nonnull %5, i64 %63) #6, !dbg !1223
  %65 = load i8*, i8** %27, align 8, !dbg !1224, !tbaa !1192
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !1227
  %67 = load i8, i8* %66, align 1, !dbg !1227, !tbaa !475
  %68 = trunc i8 %67 to i3, !dbg !1229
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1229

; <label>:69:                                     ; preds = %53
  %70 = lshr i8 %67, 3, !dbg !1230
  %71 = zext i8 %70 to i64, !dbg !1230
  br label %90, !dbg !1231

; <label>:72:                                     ; preds = %53
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !1232
  %74 = load i8, i8* %73, align 1, !dbg !1233, !tbaa !475
  %75 = zext i8 %74 to i64, !dbg !1232
  br label %90, !dbg !1234

; <label>:76:                                     ; preds = %53
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !1235
  %78 = bitcast i8* %77 to i16*, !dbg !1236
  %79 = load i16, i16* %78, align 1, !dbg !1236, !tbaa !492
  %80 = zext i16 %79 to i64, !dbg !1235
  br label %90, !dbg !1237

; <label>:81:                                     ; preds = %53
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !1238
  %83 = bitcast i8* %82 to i32*, !dbg !1239
  %84 = load i32, i32* %83, align 1, !dbg !1239, !tbaa !422
  %85 = zext i32 %84 to i64, !dbg !1238
  br label %90, !dbg !1240

; <label>:86:                                     ; preds = %53
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !1241
  %88 = bitcast i8* %87 to i64*, !dbg !1242
  %89 = load i64, i64* %88, align 1, !dbg !1242, !tbaa !337
  br label %90, !dbg !1243

; <label>:90:                                     ; preds = %53, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %53 ], !dbg !1244
  %92 = call i8* @sdscatlen(i8* %64, i8* %65, i64 %91) #6, !dbg !1245
  %93 = call i8* @sdscatlen(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 2) #6, !dbg !1246
  call void @decrRefCount(%struct.redisObject* nonnull %26) #6, !dbg !1247
  %94 = add nuw nsw i64 %22, 1, !dbg !1248
  %95 = icmp eq i64 %94, %20, !dbg !1181
  br i1 %95, label %96, label %21, !dbg !1184, !llvm.loop !1249

; <label>:96:                                     ; preds = %90, %3
  %97 = phi i8* [ %17, %3 ], [ %93, %90 ], !dbg !1251
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !1252
  ret i8* %97, !dbg !1253
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
define dso_local i8* @catAppendOnlyExpireAtCommand(i8*, %struct.redisCommand* nocapture readonly, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1254 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1481
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1481
  %7 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %3) #6, !dbg !1483
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1484
  %9 = load i8*, i8** %8, align 8, !dbg !1484, !tbaa !1192
  %10 = tail call i64 @strtoll(i8* %9, i8** null, i32 10) #6, !dbg !1485
  %11 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %1, i64 0, i32 1, !dbg !1487
  %12 = load void (%struct.client*)*, void (%struct.client*)** %11, align 8, !dbg !1487, !tbaa !1489
  %13 = icmp eq void (%struct.client*)* %12, @expireCommand, !dbg !1491
  %14 = icmp eq void (%struct.client*)* %12, @setexCommand, !dbg !1492
  %15 = or i1 %13, %14, !dbg !1493
  %16 = icmp eq void (%struct.client*)* %12, @expireatCommand, !dbg !1494
  %17 = or i1 %16, %15, !dbg !1493
  %18 = mul nsw i64 %10, 1000, !dbg !1495
  %19 = select i1 %17, i64 %18, i64 %10, !dbg !1493
  %20 = icmp eq void (%struct.client*)* %12, @pexpireCommand, !dbg !1497
  %21 = or i1 %13, %20, !dbg !1499
  %22 = or i1 %14, %21, !dbg !1499
  %23 = icmp eq void (%struct.client*)* %12, @psetexCommand, !dbg !1500
  %24 = or i1 %23, %22, !dbg !1499
  br i1 %24, label %25, label %28, !dbg !1499

; <label>:25:                                     ; preds = %4
  %26 = tail call i64 @mstime() #6, !dbg !1501
  %27 = add nsw i64 %26, %19, !dbg !1503
  br label %28, !dbg !1504

; <label>:28:                                     ; preds = %4, %25
  %29 = phi i64 [ %27, %25 ], [ %19, %4 ], !dbg !1505
  tail call void @decrRefCount(%struct.redisObject* %7) #6, !dbg !1506
  %30 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 9) #6, !dbg !1507
  %31 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1508
  store %struct.redisObject* %30, %struct.redisObject** %31, align 16, !dbg !1509, !tbaa !1187
  %32 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1510
  store %struct.redisObject* %2, %struct.redisObject** %32, align 8, !dbg !1511, !tbaa !1187
  %33 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %29) #6, !dbg !1512
  %34 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1513
  store %struct.redisObject* %33, %struct.redisObject** %34, align 16, !dbg !1514, !tbaa !1187
  %35 = call i8* @catAppendOnlyGenericCommand(i8* %0, i32 3, %struct.redisObject** nonnull %31) #9, !dbg !1515
  tail call void @decrRefCount(%struct.redisObject* %30) #6, !dbg !1516
  tail call void @decrRefCount(%struct.redisObject* %33) #6, !dbg !1517
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7, !dbg !1518
  ret i8* %35, !dbg !1519
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
define dso_local void @feedAppendOnlyFile(%struct.redisCommand* nocapture readonly, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1520 {
  %5 = alloca [3 x %struct.redisObject*], align 16
  %6 = alloca [64 x i8], align 16
  %7 = tail call i8* @sdsempty() #6, !dbg !1547
  %8 = bitcast [3 x %struct.redisObject*]* %5 to i8*, !dbg !1549
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1549
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1551, !tbaa !453
  %10 = icmp eq i32 %9, %1, !dbg !1552
  br i1 %10, label %16, label %11, !dbg !1553

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !1554
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1554
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %1) #6, !dbg !1556
  %14 = call i64 @strlen(i8* nonnull %12) #6, !dbg !1557
  %15 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i64 %14, i8* nonnull %12) #6, !dbg !1558
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !1559, !tbaa !453
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1560
  br label %16, !dbg !1561

; <label>:16:                                     ; preds = %4, %11
  %17 = phi i8* [ %15, %11 ], [ %7, %4 ], !dbg !1562
  %18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %0, i64 0, i32 1, !dbg !1563
  %19 = load void (%struct.client*)*, void (%struct.client*)** %18, align 8, !dbg !1563, !tbaa !1489
  %20 = icmp eq void (%struct.client*)* %19, @expireCommand, !dbg !1564
  %21 = icmp eq void (%struct.client*)* %19, @pexpireCommand, !dbg !1565
  %22 = or i1 %20, %21, !dbg !1566
  %23 = icmp eq void (%struct.client*)* %19, @expireatCommand, !dbg !1567
  %24 = or i1 %23, %22, !dbg !1566
  br i1 %24, label %25, label %31, !dbg !1566

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1568
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1568, !tbaa !1187
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1570
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !1570, !tbaa !1187
  %30 = call i8* @catAppendOnlyExpireAtCommand(i8* %17, %struct.redisCommand* nonnull %0, %struct.redisObject* %27, %struct.redisObject* %29) #9, !dbg !1571
  br label %105, !dbg !1572

; <label>:31:                                     ; preds = %16
  %32 = icmp eq void (%struct.client*)* %19, @setexCommand, !dbg !1573
  %33 = icmp eq void (%struct.client*)* %19, @psetexCommand, !dbg !1574
  %34 = or i1 %32, %33, !dbg !1575
  br i1 %34, label %35, label %53, !dbg !1575

; <label>:35:                                     ; preds = %31
  %36 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #6, !dbg !1576
  %37 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !1578
  store %struct.redisObject* %36, %struct.redisObject** %37, align 16, !dbg !1579, !tbaa !1187
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1580
  %39 = bitcast %struct.redisObject** %38 to i64*, !dbg !1580
  %40 = load i64, i64* %39, align 8, !dbg !1580, !tbaa !1187
  %41 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !1581
  %42 = bitcast %struct.redisObject** %41 to i64*, !dbg !1582
  store i64 %40, i64* %42, align 8, !dbg !1582, !tbaa !1187
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 3, !dbg !1583
  %44 = bitcast %struct.redisObject** %43 to i64*, !dbg !1583
  %45 = load i64, i64* %44, align 8, !dbg !1583, !tbaa !1187
  %46 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !1584
  %47 = bitcast %struct.redisObject** %46 to i64*, !dbg !1585
  store i64 %45, i64* %47, align 16, !dbg !1585, !tbaa !1187
  %48 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** nonnull %37) #9, !dbg !1586
  call void @decrRefCount(%struct.redisObject* %36) #6, !dbg !1587
  %49 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1588, !tbaa !1187
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 2, !dbg !1589
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1589, !tbaa !1187
  %52 = call i8* @catAppendOnlyExpireAtCommand(i8* %48, %struct.redisCommand* nonnull %0, %struct.redisObject* %49, %struct.redisObject* %51) #9, !dbg !1590
  br label %105, !dbg !1591

; <label>:53:                                     ; preds = %31
  %54 = icmp eq void (%struct.client*)* %19, @setCommand, !dbg !1592
  %55 = icmp sgt i32 %3, 3, !dbg !1593
  %56 = and i1 %55, %54, !dbg !1594
  br i1 %56, label %57, label %103, !dbg !1594

; <label>:57:                                     ; preds = %53
  %58 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 3, %struct.redisObject** %2) #9, !dbg !1597
  %59 = zext i32 %3 to i64
  br label %60, !dbg !1599

; <label>:60:                                     ; preds = %82, %57
  %61 = phi i64 [ 3, %57 ], [ %78, %82 ]
  %62 = phi %struct.redisObject* [ null, %57 ], [ %83, %82 ]
  %63 = phi %struct.redisObject* [ null, %57 ], [ %75, %82 ]
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %61, !dbg !1601
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !1601, !tbaa !1187
  %66 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %65, i64 0, i32 2, !dbg !1605
  %67 = load i8*, i8** %66, align 8, !dbg !1605, !tbaa !1192
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1606
  %69 = icmp eq i32 %68, 0, !dbg !1606
  br i1 %69, label %70, label %74, !dbg !1607

; <label>:70:                                     ; preds = %60
  %71 = add nuw nsw i64 %61, 1, !dbg !1608
  %72 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %71, !dbg !1609
  %73 = load %struct.redisObject*, %struct.redisObject** %72, align 8, !dbg !1609, !tbaa !1187
  br label %74, !dbg !1610

; <label>:74:                                     ; preds = %60, %70
  %75 = phi %struct.redisObject* [ %63, %60 ], [ %73, %70 ], !dbg !1611
  %76 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !1612
  %77 = icmp eq i32 %76, 0, !dbg !1612
  %78 = add nuw nsw i64 %61, 1, !dbg !1614
  br i1 %77, label %79, label %82, !dbg !1615

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %78, !dbg !1616
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !1616, !tbaa !1187
  br label %82, !dbg !1617

; <label>:82:                                     ; preds = %74, %79
  %83 = phi %struct.redisObject* [ %81, %79 ], [ %62, %74 ], !dbg !1618
  %84 = icmp eq i64 %78, %59, !dbg !1619
  br i1 %84, label %85, label %60, !dbg !1599, !llvm.loop !1620

; <label>:85:                                     ; preds = %82
  %86 = icmp ne %struct.redisObject* %75, null, !dbg !1622
  %87 = icmp ne %struct.redisObject* %83, null, !dbg !1622
  %88 = and i1 %86, %87, !dbg !1622
  br i1 %88, label %89, label %90, !dbg !1622

; <label>:89:                                     ; preds = %85
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 616) #6, !dbg !1622
  call void @_exit(i32 1) #8, !dbg !1622
  unreachable, !dbg !1622

; <label>:90:                                     ; preds = %85
  br i1 %86, label %91, label %96, !dbg !1623

; <label>:91:                                     ; preds = %90
  %92 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 65), align 8, !dbg !1624, !tbaa !1626
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1627
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !1627, !tbaa !1187
  %95 = call i8* @catAppendOnlyExpireAtCommand(i8* %58, %struct.redisCommand* %92, %struct.redisObject* %94, %struct.redisObject* nonnull %75) #9, !dbg !1628
  br label %96, !dbg !1629

; <label>:96:                                     ; preds = %91, %90
  %97 = phi i8* [ %95, %91 ], [ %58, %90 ], !dbg !1630
  br i1 %87, label %98, label %105, !dbg !1631

; <label>:98:                                     ; preds = %96
  %99 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 66), align 8, !dbg !1632, !tbaa !1634
  %100 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 1, !dbg !1635
  %101 = load %struct.redisObject*, %struct.redisObject** %100, align 8, !dbg !1635, !tbaa !1187
  %102 = call i8* @catAppendOnlyExpireAtCommand(i8* %97, %struct.redisCommand* %99, %struct.redisObject* %101, %struct.redisObject* nonnull %83) #9, !dbg !1636
  br label %105, !dbg !1637

; <label>:103:                                    ; preds = %53
  %104 = call i8* @catAppendOnlyGenericCommand(i8* %17, i32 %3, %struct.redisObject** %2) #9, !dbg !1638
  br label %105

; <label>:105:                                    ; preds = %96, %98, %35, %103, %25
  %106 = phi i8* [ %30, %25 ], [ %52, %35 ], [ %104, %103 ], [ %102, %98 ], [ %97, %96 ], !dbg !1640
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !1641, !tbaa !444
  %108 = icmp eq i32 %107, 1, !dbg !1643
  br i1 %108, label %109, label %138, !dbg !1644

; <label>:109:                                    ; preds = %105
  %110 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1645, !tbaa !461
  %111 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1648
  %112 = load i8, i8* %111, align 1, !dbg !1648, !tbaa !475
  %113 = trunc i8 %112 to i3, !dbg !1650
  switch i3 %113, label %135 [
    i3 0, label %114
    i3 1, label %117
    i3 2, label %121
    i3 3, label %126
    i3 -4, label %131
  ], !dbg !1650

; <label>:114:                                    ; preds = %109
  %115 = lshr i8 %112, 3, !dbg !1651
  %116 = zext i8 %115 to i64, !dbg !1651
  br label %135, !dbg !1652

; <label>:117:                                    ; preds = %109
  %118 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1653
  %119 = load i8, i8* %118, align 1, !dbg !1654, !tbaa !475
  %120 = zext i8 %119 to i64, !dbg !1653
  br label %135, !dbg !1655

; <label>:121:                                    ; preds = %109
  %122 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1656
  %123 = bitcast i8* %122 to i16*, !dbg !1657
  %124 = load i16, i16* %123, align 1, !dbg !1657, !tbaa !492
  %125 = zext i16 %124 to i64, !dbg !1656
  br label %135, !dbg !1658

; <label>:126:                                    ; preds = %109
  %127 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1659
  %128 = bitcast i8* %127 to i32*, !dbg !1660
  %129 = load i32, i32* %128, align 1, !dbg !1660, !tbaa !422
  %130 = zext i32 %129 to i64, !dbg !1659
  br label %135, !dbg !1661

; <label>:131:                                    ; preds = %109
  %132 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1662
  %133 = bitcast i8* %132 to i64*, !dbg !1663
  %134 = load i64, i64* %133, align 1, !dbg !1663, !tbaa !337
  br label %135, !dbg !1664

; <label>:135:                                    ; preds = %109, %114, %117, %121, %126, %131
  %136 = phi i64 [ %134, %131 ], [ %130, %126 ], [ %125, %121 ], [ %120, %117 ], [ %116, %114 ], [ 0, %109 ], !dbg !1665
  %137 = call i8* @sdscatlen(i8* %110, i8* nonnull %106, i64 %136) #6, !dbg !1666
  store i8* %137, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !1667, !tbaa !461
  br label %138, !dbg !1668

; <label>:138:                                    ; preds = %135, %105
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1669, !tbaa !630
  %140 = icmp eq i32 %139, -1, !dbg !1671
  br i1 %140, label %168, label %141, !dbg !1672

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds i8, i8* %106, i64 -1, !dbg !1675
  %143 = load i8, i8* %142, align 1, !dbg !1675, !tbaa !475
  %144 = trunc i8 %143 to i3, !dbg !1677
  switch i3 %144, label %166 [
    i3 0, label %145
    i3 1, label %148
    i3 2, label %152
    i3 3, label %157
    i3 -4, label %162
  ], !dbg !1677

; <label>:145:                                    ; preds = %141
  %146 = lshr i8 %143, 3, !dbg !1678
  %147 = zext i8 %146 to i64, !dbg !1678
  br label %166, !dbg !1679

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds i8, i8* %106, i64 -3, !dbg !1680
  %150 = load i8, i8* %149, align 1, !dbg !1681, !tbaa !475
  %151 = zext i8 %150 to i64, !dbg !1680
  br label %166, !dbg !1682

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %106, i64 -5, !dbg !1683
  %154 = bitcast i8* %153 to i16*, !dbg !1684
  %155 = load i16, i16* %154, align 1, !dbg !1684, !tbaa !492
  %156 = zext i16 %155 to i64, !dbg !1683
  br label %166, !dbg !1685

; <label>:157:                                    ; preds = %141
  %158 = getelementptr inbounds i8, i8* %106, i64 -9, !dbg !1686
  %159 = bitcast i8* %158 to i32*, !dbg !1687
  %160 = load i32, i32* %159, align 1, !dbg !1687, !tbaa !422
  %161 = zext i32 %160 to i64, !dbg !1686
  br label %166, !dbg !1688

; <label>:162:                                    ; preds = %141
  %163 = getelementptr inbounds i8, i8* %106, i64 -17, !dbg !1689
  %164 = bitcast i8* %163 to i64*, !dbg !1690
  %165 = load i64, i64* %164, align 1, !dbg !1690, !tbaa !337
  br label %166, !dbg !1691

; <label>:166:                                    ; preds = %141, %145, %148, %152, %157, %162
  %167 = phi i64 [ %165, %162 ], [ %161, %157 ], [ %156, %152 ], [ %151, %148 ], [ %147, %145 ], [ 0, %141 ], !dbg !1692
  call void @aofRewriteBufferAppend(i8* nonnull %106, i64 %167) #9, !dbg !1693
  br label %168, !dbg !1693

; <label>:168:                                    ; preds = %138, %166
  call void @sdsfree(i8* %106) #6, !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !1695
  ret void, !dbg !1695
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
define dso_local %struct.client* @createFakeClient() local_unnamed_addr #0 !dbg !1696 {
  %1 = tail call i8* @zmalloc(i64 16920) #6, !dbg !1702
  %2 = bitcast i8* %1 to %struct.client*, !dbg !1702
  %3 = tail call i32 @selectDb(%struct.client* %2, i32 0) #6, !dbg !1704
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1705
  %5 = bitcast i8* %4 to i32*, !dbg !1705
  store i32 -1, i32* %5, align 8, !dbg !1706, !tbaa !1707
  %6 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !1711
  %7 = bitcast i8* %6 to %struct.redisObject**, !dbg !1711
  store %struct.redisObject* null, %struct.redisObject** %7, align 8, !dbg !1712, !tbaa !1713
  %8 = tail call i8* @sdsempty() #6, !dbg !1714
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1715
  %10 = bitcast i8* %9 to i8**, !dbg !1715
  store i8* %8, i8** %10, align 8, !dbg !1716, !tbaa !1717
  %11 = getelementptr inbounds i8, i8* %1, i64 56, !dbg !1718
  %12 = bitcast i8* %11 to i64*, !dbg !1718
  store i64 0, i64* %12, align 8, !dbg !1719, !tbaa !1720
  %13 = getelementptr inbounds i8, i8* %1, i64 64, !dbg !1721
  %14 = bitcast i8* %13 to i32*, !dbg !1721
  store i32 0, i32* %14, align 8, !dbg !1722, !tbaa !1723
  %15 = getelementptr inbounds i8, i8* %1, i64 72, !dbg !1724
  %16 = bitcast i8* %15 to %struct.redisObject***, !dbg !1724
  store %struct.redisObject** null, %struct.redisObject*** %16, align 8, !dbg !1725, !tbaa !1726
  %17 = getelementptr inbounds i8, i8* %1, i64 528, !dbg !1727
  %18 = bitcast i8* %17 to i32*, !dbg !1727
  store i32 0, i32* %18, align 8, !dbg !1728, !tbaa !1729
  %19 = getelementptr inbounds i8, i8* %1, i64 160, !dbg !1730
  %20 = bitcast i8* %19 to i32*, !dbg !1730
  store i32 0, i32* %20, align 8, !dbg !1731, !tbaa !1732
  %21 = getelementptr inbounds i8, i8* %1, i64 384, !dbg !1733
  %22 = bitcast i8* %21 to i32*, !dbg !1733
  store i32 0, i32* %22, align 8, !dbg !1734, !tbaa !1735
  %23 = getelementptr inbounds i8, i8* %1, i64 168, !dbg !1736
  %24 = bitcast i8* %23 to i32*, !dbg !1736
  store i32 6, i32* %24, align 8, !dbg !1737, !tbaa !1738
  %25 = tail call %struct.list* @listCreate() #6, !dbg !1739
  %26 = getelementptr inbounds i8, i8* %1, i64 112, !dbg !1740
  %27 = bitcast i8* %26 to %struct.list**, !dbg !1740
  store %struct.list* %25, %struct.list** %27, align 8, !dbg !1741, !tbaa !1742
  %28 = getelementptr inbounds i8, i8* %1, i64 120, !dbg !1743
  %29 = bitcast i8* %28 to i64*, !dbg !1743
  store i64 0, i64* %29, align 8, !dbg !1744, !tbaa !1745
  %30 = getelementptr inbounds i8, i8* %1, i64 152, !dbg !1746
  %31 = bitcast i8* %30 to i64*, !dbg !1746
  store i64 0, i64* %31, align 8, !dbg !1747, !tbaa !1748
  %32 = tail call %struct.list* @listCreate() #6, !dbg !1749
  %33 = getelementptr inbounds i8, i8* %1, i64 488, !dbg !1750
  %34 = bitcast i8* %33 to %struct.list**, !dbg !1750
  store %struct.list* %32, %struct.list** %34, align 8, !dbg !1751, !tbaa !1752
  %35 = getelementptr inbounds i8, i8* %1, i64 512, !dbg !1753
  %36 = bitcast i8* %35 to i8**, !dbg !1753
  store i8* null, i8** %36, align 8, !dbg !1754, !tbaa !1755
  %37 = load %struct.list*, %struct.list** %27, align 8, !dbg !1756, !tbaa !1742
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 3, !dbg !1756
  store void (i8*)* @freeClientReplyValue, void (i8*)** %38, align 8, !dbg !1756, !tbaa !108
  %39 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 2, !dbg !1757
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %39, align 8, !dbg !1757, !tbaa !1758
  tail call void @initClientMultiState(%struct.client* %2) #6, !dbg !1759
  ret %struct.client* %2, !dbg !1760
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
define dso_local void @freeFakeClientArgv(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1761 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1769
  %3 = load i32, i32* %2, align 8, !dbg !1769, !tbaa !1723
  %4 = icmp sgt i32 %3, 0, !dbg !1772
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1773
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1773, !tbaa !1726
  br i1 %4, label %7, label %17, !dbg !1774

; <label>:7:                                      ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = phi %struct.redisObject** [ %16, %7 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !1775
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1775, !tbaa !1187
  tail call void @decrRefCount(%struct.redisObject* %11) #6, !dbg !1776
  %12 = add nuw nsw i64 %8, 1, !dbg !1777
  %13 = load i32, i32* %2, align 8, !dbg !1769, !tbaa !1723
  %14 = sext i32 %13 to i64, !dbg !1772
  %15 = icmp slt i64 %12, %14, !dbg !1772
  %16 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !1773, !tbaa !1726
  br i1 %15, label %7, label %17, !dbg !1774, !llvm.loop !1778

; <label>:17:                                     ; preds = %7, %1
  %18 = phi %struct.redisObject** [ %6, %1 ], [ %16, %7 ], !dbg !1773
  %19 = bitcast %struct.redisObject** %18 to i8*, !dbg !1780
  tail call void @zfree(i8* %19) #6, !dbg !1781
  ret void, !dbg !1782
}

; Function Attrs: noredzone nounwind
define dso_local void @freeFakeClient(%struct.client*) local_unnamed_addr #0 !dbg !1783 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !1787
  %3 = load i8*, i8** %2, align 8, !dbg !1787, !tbaa !1717
  tail call void @sdsfree(i8* %3) #6, !dbg !1788
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1789
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !1789, !tbaa !1742
  tail call void @listRelease(%struct.list* %5) #6, !dbg !1790
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !1791
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1791, !tbaa !1752
  tail call void @listRelease(%struct.list* %7) #6, !dbg !1792
  tail call void @freeClientMultiState(%struct.client* %0) #6, !dbg !1793
  %8 = bitcast %struct.client* %0 to i8*, !dbg !1794
  tail call void @zfree(i8* %8) #6, !dbg !1795
  ret void, !dbg !1796
}

; Function Attrs: noredzone
declare dso_local void @freeClientMultiState(%struct.client*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @loadAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !1797 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct._rio, align 8
  %5 = alloca [128 x i8], align 16
  %6 = tail call %struct.__sFILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2113
  %7 = bitcast %struct.stat* %2 to i8*, !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2115
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2116, !tbaa !444
  %9 = icmp eq %struct.__sFILE* %6, null, !dbg !2121
  br i1 %9, label %10, label %14, !dbg !2123

; <label>:10:                                     ; preds = %1
  %11 = tail call i32* @__errno() #6, !dbg !2124
  %12 = load i32, i32* %11, align 4, !dbg !2124, !tbaa !422
  %13 = tail call i8* @strerror(i32 %12) #6, !dbg !2126
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0), i8* %13) #6, !dbg !2127
  tail call void @exit(i32 1) #8, !dbg !2128
  unreachable, !dbg !2128

; <label>:14:                                     ; preds = %1
  %15 = tail call i32 @fileno(%struct.__sFILE* nonnull %6) #6, !dbg !2129
  %16 = call i32 @fstat(i32 %15, %struct.stat* nonnull %2) #6, !dbg !2132
  %17 = icmp eq i32 %16, -1, !dbg !2133
  br i1 %17, label %24, label %18, !dbg !2134

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 7, !dbg !2135
  %20 = load i64, i64* %19, align 8, !dbg !2135, !tbaa !2136
  %21 = icmp eq i64 %20, 0, !dbg !2139
  br i1 %21, label %22, label %24, !dbg !2140

; <label>:22:                                     ; preds = %18
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124) to <2 x i64>*), align 8, !dbg !2141, !tbaa !337
  %23 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2143
  br label %326, !dbg !2144

; <label>:24:                                     ; preds = %14, %18
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2145, !tbaa !444
  %25 = call i8* @zmalloc(i64 16920) #6, !dbg !2146
  %26 = bitcast i8* %25 to %struct.client*, !dbg !2146
  %27 = call i32 @selectDb(%struct.client* %26, i32 0) #6, !dbg !2149
  %28 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !2150
  %29 = bitcast i8* %28 to i32*, !dbg !2150
  store i32 -1, i32* %29, align 8, !dbg !2151, !tbaa !1707
  %30 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !2152
  %31 = bitcast i8* %30 to %struct.redisObject**, !dbg !2152
  store %struct.redisObject* null, %struct.redisObject** %31, align 8, !dbg !2153, !tbaa !1713
  %32 = call i8* @sdsempty() #6, !dbg !2154
  %33 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !2155
  %34 = bitcast i8* %33 to i8**, !dbg !2155
  store i8* %32, i8** %34, align 8, !dbg !2156, !tbaa !1717
  %35 = getelementptr inbounds i8, i8* %25, i64 56, !dbg !2157
  %36 = bitcast i8* %35 to i64*, !dbg !2157
  store i64 0, i64* %36, align 8, !dbg !2158, !tbaa !1720
  %37 = getelementptr inbounds i8, i8* %25, i64 64, !dbg !2159
  %38 = bitcast i8* %37 to i32*, !dbg !2159
  store i32 0, i32* %38, align 8, !dbg !2160, !tbaa !1723
  %39 = getelementptr inbounds i8, i8* %25, i64 72, !dbg !2161
  %40 = bitcast i8* %39 to %struct.redisObject***, !dbg !2161
  store %struct.redisObject** null, %struct.redisObject*** %40, align 8, !dbg !2162, !tbaa !1726
  %41 = getelementptr inbounds i8, i8* %25, i64 528, !dbg !2163
  %42 = bitcast i8* %41 to i32*, !dbg !2163
  store i32 0, i32* %42, align 8, !dbg !2164, !tbaa !1729
  %43 = getelementptr inbounds i8, i8* %25, i64 160, !dbg !2165
  %44 = bitcast i8* %43 to i32*, !dbg !2165
  store i32 0, i32* %44, align 8, !dbg !2166, !tbaa !1732
  %45 = getelementptr inbounds i8, i8* %25, i64 384, !dbg !2167
  %46 = bitcast i8* %45 to i32*, !dbg !2167
  store i32 0, i32* %46, align 8, !dbg !2168, !tbaa !1735
  %47 = getelementptr inbounds i8, i8* %25, i64 168, !dbg !2169
  %48 = bitcast i8* %47 to i32*, !dbg !2169
  store i32 6, i32* %48, align 8, !dbg !2170, !tbaa !1738
  %49 = call %struct.list* @listCreate() #6, !dbg !2171
  %50 = getelementptr inbounds i8, i8* %25, i64 112, !dbg !2172
  %51 = bitcast i8* %50 to %struct.list**, !dbg !2172
  store %struct.list* %49, %struct.list** %51, align 8, !dbg !2173, !tbaa !1742
  %52 = getelementptr inbounds i8, i8* %25, i64 120, !dbg !2174
  %53 = bitcast i8* %52 to i64*, !dbg !2174
  store i64 0, i64* %53, align 8, !dbg !2175, !tbaa !1745
  %54 = getelementptr inbounds i8, i8* %25, i64 152, !dbg !2176
  %55 = bitcast i8* %54 to i64*, !dbg !2176
  store i64 0, i64* %55, align 8, !dbg !2177, !tbaa !1748
  %56 = call %struct.list* @listCreate() #6, !dbg !2178
  %57 = getelementptr inbounds i8, i8* %25, i64 488, !dbg !2179
  %58 = bitcast i8* %57 to %struct.list**, !dbg !2179
  store %struct.list* %56, %struct.list** %58, align 8, !dbg !2180, !tbaa !1752
  %59 = getelementptr inbounds i8, i8* %25, i64 512, !dbg !2181
  %60 = bitcast i8* %59 to i8**, !dbg !2181
  store i8* null, i8** %60, align 8, !dbg !2182, !tbaa !1755
  %61 = load %struct.list*, %struct.list** %51, align 8, !dbg !2183, !tbaa !1742
  %62 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 3, !dbg !2183
  store void (i8*)* @freeClientReplyValue, void (i8*)** %62, align 8, !dbg !2183, !tbaa !108
  %63 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 2, !dbg !2184
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %63, align 8, !dbg !2184, !tbaa !1758
  call void @initClientMultiState(%struct.client* %26) #6, !dbg !2185
  call void @startLoading(%struct.__sFILE* nonnull %6) #6, !dbg !2187
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !2188
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2188
  %65 = call i64 @fread(i8* nonnull %64, i64 1, i64 5, %struct.__sFILE* nonnull %6) #6, !dbg !2190
  %66 = icmp eq i64 %65, 5, !dbg !2191
  br i1 %66, label %67, label %70, !dbg !2192

; <label>:67:                                     ; preds = %24
  %68 = call i32 @memcmp(i8* nonnull %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i64 5) #6, !dbg !2193
  %69 = icmp eq i32 %68, 0, !dbg !2194
  br i1 %69, label %73, label %70, !dbg !2195

; <label>:70:                                     ; preds = %67, %24
  %71 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2196
  %72 = icmp eq i32 %71, -1, !dbg !2199
  br i1 %72, label %272, label %83, !dbg !2200

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct._rio* %4 to i8*, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2201
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2202
  %75 = call i32 @fseek(%struct.__sFILE* nonnull %6, i64 0, i32 0) #6, !dbg !2203
  %76 = icmp eq i32 %75, -1, !dbg !2205
  br i1 %76, label %81, label %77, !dbg !2206

; <label>:77:                                     ; preds = %73
  call void @rioInitWithFile(%struct._rio* nonnull %4, %struct.__sFILE* nonnull %6) #6, !dbg !2208
  %78 = call i32 @rdbLoadRio(%struct._rio* nonnull %4, %struct.rdbSaveInfo* null, i32 1) #6, !dbg !2209
  %79 = icmp eq i32 %78, 0, !dbg !2211
  br i1 %79, label %82, label %80, !dbg !2212

; <label>:80:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !2213
  br label %81, !dbg !2215

; <label>:81:                                     ; preds = %80, %73
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2216
  br label %272

; <label>:82:                                     ; preds = %77
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %74) #7, !dbg !2216
  br label %83

; <label>:83:                                     ; preds = %82, %70
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %85 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1
  %87 = bitcast i8* %39 to i8**
  %88 = getelementptr inbounds i8, i8* %25, i64 80
  %89 = bitcast i8* %88 to %struct.redisCommand**
  br label %90, !dbg !2219

; <label>:90:                                     ; preds = %257, %83
  %91 = phi i64 [ 0, %83 ], [ %259, %257 ], !dbg !2120
  %92 = phi i64 [ 0, %83 ], [ %260, %257 ], !dbg !2119
  %93 = phi i64 [ 0, %83 ], [ %94, %257 ], !dbg !2220
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2222
  %94 = add nuw nsw i64 %93, 1, !dbg !2224
  %95 = urem i64 %93, 1000, !dbg !2225
  %96 = icmp eq i64 %95, 0, !dbg !2225
  br i1 %96, label %97, label %100, !dbg !2226

; <label>:97:                                     ; preds = %90
  %98 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2227
  call void @loadingProgress(i64 %98) #6, !dbg !2229
  %99 = call i32 @processEventsWhileBlocked() #6, !dbg !2230
  br label %100, !dbg !2231

; <label>:100:                                    ; preds = %90, %97
  %101 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2232
  %102 = icmp eq i8* %101, null, !dbg !2234
  br i1 %102, label %103, label %108, !dbg !2235

; <label>:103:                                    ; preds = %100
  %104 = load i16, i16* %85, align 8, !dbg !2236, !tbaa !2239
  %105 = and i16 %104, 32, !dbg !2236
  %106 = icmp eq i16 %105, 0, !dbg !2236
  %107 = select i1 %106, i3 2, i3 -4, !dbg !2243
  br label %257, !dbg !2243

; <label>:108:                                    ; preds = %100
  %109 = load i8, i8* %84, align 16, !dbg !2244, !tbaa !475
  %110 = icmp eq i8 %109, 42, !dbg !2246
  br i1 %110, label %111, label %255, !dbg !2247

; <label>:111:                                    ; preds = %108
  %112 = load i8, i8* %86, align 1, !dbg !2248, !tbaa !475
  %113 = icmp eq i8 %112, 0, !dbg !2250
  br i1 %113, label %254, label %114, !dbg !2251

; <label>:114:                                    ; preds = %111
  %115 = call i32 @atoi(i8* nonnull %86) #6, !dbg !2252
  %116 = icmp slt i32 %115, 1, !dbg !2254
  br i1 %116, label %255, label %117, !dbg !2256

; <label>:117:                                    ; preds = %114
  %118 = sext i32 %115 to i64, !dbg !2257
  %119 = shl nsw i64 %118, 3, !dbg !2258
  %120 = call i8* @zmalloc(i64 %119) #6, !dbg !2259
  %121 = bitcast i8* %120 to %struct.redisObject**, !dbg !2259
  store i32 %115, i32* %38, align 8, !dbg !2261, !tbaa !1723
  store i8* %120, i8** %87, align 8, !dbg !2262, !tbaa !1726
  br label %122, !dbg !2264

; <label>:122:                                    ; preds = %173, %117
  %123 = phi i64 [ %178, %173 ], [ 0, %117 ], !dbg !2266
  %124 = icmp slt i64 %123, %118, !dbg !2268
  br i1 %124, label %125, label %194, !dbg !2269

; <label>:125:                                    ; preds = %122
  %126 = call i8* @fgets(i8* nonnull %84, i32 128, %struct.__sFILE* nonnull %6) #6, !dbg !2270
  %127 = icmp eq i8* %126, null, !dbg !2273
  br i1 %127, label %128, label %145, !dbg !2274

; <label>:128:                                    ; preds = %125
  %129 = trunc i64 %123 to i32, !dbg !2119
  store i32 %129, i32* %38, align 8, !dbg !2275, !tbaa !1723
  %130 = icmp eq i32 %129, 0, !dbg !2280
  %131 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2281, !tbaa !1726
  br i1 %130, label %142, label %132, !dbg !2282

; <label>:132:                                    ; preds = %128, %132
  %133 = phi i64 [ %137, %132 ], [ 0, %128 ]
  %134 = phi %struct.redisObject** [ %141, %132 ], [ %131, %128 ]
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 %133, !dbg !2283
  %136 = load %struct.redisObject*, %struct.redisObject** %135, align 8, !dbg !2283, !tbaa !1187
  call void @decrRefCount(%struct.redisObject* %136) #6, !dbg !2284
  %137 = add nuw nsw i64 %133, 1, !dbg !2285
  %138 = load i32, i32* %38, align 8, !dbg !2286, !tbaa !1723
  %139 = sext i32 %138 to i64, !dbg !2280
  %140 = icmp slt i64 %137, %139, !dbg !2280
  %141 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2281, !tbaa !1726
  br i1 %140, label %132, label %142, !dbg !2282, !llvm.loop !1778

; <label>:142:                                    ; preds = %132, %128
  %143 = phi %struct.redisObject** [ %131, %128 ], [ %141, %132 ], !dbg !2281
  %144 = bitcast %struct.redisObject** %143 to i8*, !dbg !2287
  call void @zfree(i8* %144) #6, !dbg !2288
  br label %254, !dbg !2289

; <label>:145:                                    ; preds = %125
  %146 = load i8, i8* %84, align 16, !dbg !2290, !tbaa !475
  %147 = icmp eq i8 %146, 36, !dbg !2292
  br i1 %147, label %148, label %255, !dbg !2293

; <label>:148:                                    ; preds = %145
  %149 = call i64 @strtol(i8* nonnull %86, i8** null, i32 10) #6, !dbg !2294
  %150 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !2296, !tbaa !1187
  %151 = call i8* @sdsnewlen(i8* %150, i64 %149) #6, !dbg !2297
  %152 = icmp eq i64 %149, 0, !dbg !2299
  br i1 %152, label %173, label %153, !dbg !2301

; <label>:153:                                    ; preds = %148
  %154 = call i64 @fread(i8* %151, i64 %149, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2302
  %155 = icmp eq i64 %154, 0, !dbg !2303
  br i1 %155, label %156, label %173, !dbg !2304

; <label>:156:                                    ; preds = %153
  %157 = trunc i64 %123 to i32, !dbg !2119
  call void @sdsfree(i8* %151) #6, !dbg !2305
  store i32 %157, i32* %38, align 8, !dbg !2307, !tbaa !1723
  %158 = icmp eq i32 %157, 0, !dbg !2311
  %159 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2312, !tbaa !1726
  br i1 %158, label %170, label %160, !dbg !2313

; <label>:160:                                    ; preds = %156, %160
  %161 = phi i64 [ %165, %160 ], [ 0, %156 ]
  %162 = phi %struct.redisObject** [ %169, %160 ], [ %159, %156 ]
  %163 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %162, i64 %161, !dbg !2314
  %164 = load %struct.redisObject*, %struct.redisObject** %163, align 8, !dbg !2314, !tbaa !1187
  call void @decrRefCount(%struct.redisObject* %164) #6, !dbg !2315
  %165 = add nuw nsw i64 %161, 1, !dbg !2316
  %166 = load i32, i32* %38, align 8, !dbg !2317, !tbaa !1723
  %167 = sext i32 %166 to i64, !dbg !2311
  %168 = icmp slt i64 %165, %167, !dbg !2311
  %169 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2312, !tbaa !1726
  br i1 %168, label %160, label %170, !dbg !2313, !llvm.loop !1778

; <label>:170:                                    ; preds = %160, %156
  %171 = phi %struct.redisObject** [ %159, %156 ], [ %169, %160 ], !dbg !2312
  %172 = bitcast %struct.redisObject** %171 to i8*, !dbg !2318
  call void @zfree(i8* %172) #6, !dbg !2319
  br label %254, !dbg !2320

; <label>:173:                                    ; preds = %148, %153
  %174 = call %struct.redisObject* @createObject(i32 0, i8* %151) #6, !dbg !2321
  %175 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %121, i64 %123, !dbg !2322
  store %struct.redisObject* %174, %struct.redisObject** %175, align 8, !dbg !2323, !tbaa !1187
  %176 = call i64 @fread(i8* nonnull %84, i64 2, i64 1, %struct.__sFILE* nonnull %6) #6, !dbg !2324
  %177 = icmp eq i64 %176, 0, !dbg !2326
  %178 = add nuw nsw i64 %123, 1, !dbg !2266
  br i1 %177, label %179, label %122, !dbg !2327, !llvm.loop !2328

; <label>:179:                                    ; preds = %173
  %180 = trunc i64 %178 to i32, !dbg !2119
  store i32 %180, i32* %38, align 8, !dbg !2330, !tbaa !1723
  %181 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2335, !tbaa !1726
  br label %182, !dbg !2336

; <label>:182:                                    ; preds = %179, %182
  %183 = phi i64 [ %187, %182 ], [ 0, %179 ]
  %184 = phi %struct.redisObject** [ %191, %182 ], [ %181, %179 ]
  %185 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %184, i64 %183, !dbg !2337
  %186 = load %struct.redisObject*, %struct.redisObject** %185, align 8, !dbg !2337, !tbaa !1187
  call void @decrRefCount(%struct.redisObject* %186) #6, !dbg !2338
  %187 = add nuw nsw i64 %183, 1, !dbg !2339
  %188 = load i32, i32* %38, align 8, !dbg !2340, !tbaa !1723
  %189 = sext i32 %188 to i64, !dbg !2341
  %190 = icmp slt i64 %187, %189, !dbg !2341
  %191 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2335, !tbaa !1726
  br i1 %190, label %182, label %192, !dbg !2336, !llvm.loop !1778

; <label>:192:                                    ; preds = %182
  %193 = bitcast %struct.redisObject** %191 to i8*, !dbg !2342
  call void @zfree(i8* %193) #6, !dbg !2343
  br label %254, !dbg !2344

; <label>:194:                                    ; preds = %122
  %195 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !2345, !tbaa !1187
  %196 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %195, i64 0, i32 2, !dbg !2346
  %197 = load i8*, i8** %196, align 8, !dbg !2346, !tbaa !1192
  %198 = call %struct.redisCommand* @lookupCommand(i8* %197) #6, !dbg !2347
  %199 = icmp eq %struct.redisCommand* %198, null, !dbg !2349
  br i1 %199, label %200, label %205, !dbg !2351

; <label>:200:                                    ; preds = %194
  %201 = bitcast i8* %120 to %struct.redisObject**, !dbg !2259
  %202 = load %struct.redisObject*, %struct.redisObject** %201, align 8, !dbg !2352, !tbaa !1187
  %203 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %202, i64 0, i32 2, !dbg !2354
  %204 = load i8*, i8** %203, align 8, !dbg !2354, !tbaa !1192
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i8* %204) #6, !dbg !2355
  call void @exit(i32 1) #8, !dbg !2356
  unreachable, !dbg !2356

; <label>:205:                                    ; preds = %194
  %206 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 57), align 8, !dbg !2357, !tbaa !2359
  %207 = icmp eq %struct.redisCommand* %198, %206, !dbg !2360
  %208 = select i1 %207, i64 %92, i64 %91, !dbg !2361
  store %struct.redisCommand* %198, %struct.redisCommand** %89, align 8, !dbg !2362, !tbaa !2363
  %209 = load i32, i32* %44, align 8, !dbg !2364, !tbaa !1732
  %210 = and i32 %209, 8, !dbg !2366
  %211 = icmp eq i32 %210, 0, !dbg !2366
  %212 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %198, i64 0, i32 1
  %213 = load void (%struct.client*)*, void (%struct.client*)** %212, align 8, !dbg !2367, !tbaa !1489
  br i1 %211, label %217, label %214, !dbg !2368

; <label>:214:                                    ; preds = %205
  %215 = icmp eq void (%struct.client*)* %213, @execCommand, !dbg !2369
  br i1 %215, label %217, label %216, !dbg !2370

; <label>:216:                                    ; preds = %214
  call void @queueMultiCommand(%struct.client* nonnull %26) #6, !dbg !2371
  br label %219, !dbg !2373

; <label>:217:                                    ; preds = %205, %214
  %218 = phi void (%struct.client*)* [ @execCommand, %214 ], [ %213, %205 ], !dbg !2374
  call void %218(%struct.client* nonnull %26) #6, !dbg !2376
  br label %219

; <label>:219:                                    ; preds = %217, %216
  %220 = load i32, i32* %42, align 8, !dbg !2377, !tbaa !1729
  %221 = icmp eq i32 %220, 0, !dbg !2377
  br i1 %221, label %222, label %227, !dbg !2377

; <label>:222:                                    ; preds = %219
  %223 = load %struct.list*, %struct.list** %51, align 8, !dbg !2377, !tbaa !1742
  %224 = getelementptr inbounds %struct.list, %struct.list* %223, i64 0, i32 5, !dbg !2377
  %225 = load i64, i64* %224, align 8, !dbg !2377, !tbaa !341
  %226 = icmp eq i64 %225, 0, !dbg !2377
  br i1 %226, label %228, label %227, !dbg !2377

; <label>:227:                                    ; preds = %222, %219
  call void @_serverAssert(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 827) #6, !dbg !2377
  call void @_exit(i32 1) #8, !dbg !2377
  unreachable, !dbg !2377

; <label>:228:                                    ; preds = %222
  %229 = load i32, i32* %44, align 8, !dbg !2378, !tbaa !1732
  %230 = and i32 %229, 16, !dbg !2378
  %231 = icmp eq i32 %230, 0, !dbg !2378
  br i1 %231, label %233, label %232, !dbg !2378

; <label>:232:                                    ; preds = %228
  call void @_serverAssert(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 830) #6, !dbg !2378
  call void @_exit(i32 1) #8, !dbg !2378
  unreachable, !dbg !2378

; <label>:233:                                    ; preds = %228
  %234 = load i32, i32* %38, align 8, !dbg !2382, !tbaa !1723
  %235 = icmp sgt i32 %234, 0, !dbg !2383
  %236 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2384, !tbaa !1726
  br i1 %235, label %237, label %247, !dbg !2385

; <label>:237:                                    ; preds = %233, %237
  %238 = phi i64 [ %242, %237 ], [ 0, %233 ]
  %239 = phi %struct.redisObject** [ %246, %237 ], [ %236, %233 ]
  %240 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %239, i64 %238, !dbg !2386
  %241 = load %struct.redisObject*, %struct.redisObject** %240, align 8, !dbg !2386, !tbaa !1187
  call void @decrRefCount(%struct.redisObject* %241) #6, !dbg !2387
  %242 = add nuw nsw i64 %238, 1, !dbg !2388
  %243 = load i32, i32* %38, align 8, !dbg !2382, !tbaa !1723
  %244 = sext i32 %243 to i64, !dbg !2383
  %245 = icmp slt i64 %242, %244, !dbg !2383
  %246 = load %struct.redisObject**, %struct.redisObject*** %40, align 8, !dbg !2384, !tbaa !1726
  br i1 %245, label %237, label %247, !dbg !2385, !llvm.loop !1778

; <label>:247:                                    ; preds = %237, %233
  %248 = phi %struct.redisObject** [ %236, %233 ], [ %246, %237 ], !dbg !2384
  %249 = bitcast %struct.redisObject** %248 to i8*, !dbg !2389
  call void @zfree(i8* %249) #6, !dbg !2390
  store %struct.redisCommand* null, %struct.redisCommand** %89, align 8, !dbg !2391, !tbaa !2363
  %250 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2392, !tbaa !2394
  %251 = icmp eq i32 %250, 0, !dbg !2395
  br i1 %251, label %257, label %252, !dbg !2396

; <label>:252:                                    ; preds = %247
  %253 = call i64 @ftello(%struct.__sFILE* nonnull %6) #6, !dbg !2397
  br label %257, !dbg !2398

; <label>:254:                                    ; preds = %111, %142, %170, %192
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2399
  br label %272

; <label>:255:                                    ; preds = %108, %114, %145
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2399
  %256 = icmp eq i8* %25, null, !dbg !2400
  br i1 %256, label %324, label %320, !dbg !2402

; <label>:257:                                    ; preds = %252, %247, %103
  %258 = phi i3 [ %107, %103 ], [ 0, %247 ], [ 0, %252 ]
  %259 = phi i64 [ %91, %103 ], [ %208, %247 ], [ %208, %252 ], !dbg !2403
  %260 = phi i64 [ %92, %103 ], [ %92, %247 ], [ %253, %252 ], !dbg !2404
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #7, !dbg !2399
  switch i3 %258, label %325 [
    i3 0, label %90
    i3 -4, label %261
    i3 2, label %272
  ], !llvm.loop !2405

; <label>:261:                                    ; preds = %257
  %262 = load i32, i32* %44, align 8, !dbg !2406, !tbaa !1732
  %263 = and i32 %262, 8, !dbg !2408
  %264 = icmp eq i32 %263, 0, !dbg !2408
  br i1 %264, label %266, label %265, !dbg !2409

; <label>:265:                                    ; preds = %261
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2410
  br label %288, !dbg !2412

; <label>:266:                                    ; preds = %261, %312
  %267 = call i32 @fclose(%struct.__sFILE* nonnull %6) #6, !dbg !2413
  %268 = load i8*, i8** %34, align 8, !dbg !2416, !tbaa !1717
  call void @sdsfree(i8* %268) #6, !dbg !2417
  %269 = load %struct.list*, %struct.list** %51, align 8, !dbg !2418, !tbaa !1742
  call void @listRelease(%struct.list* %269) #6, !dbg !2419
  %270 = load %struct.list*, %struct.list** %58, align 8, !dbg !2420, !tbaa !1752
  call void @listRelease(%struct.list* %270) #6, !dbg !2421
  call void @freeClientMultiState(%struct.client* %26) #6, !dbg !2422
  call void @zfree(i8* %25) #6, !dbg !2423
  store i32 %8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2424, !tbaa !444
  call void @stopLoading() #6, !dbg !2425
  call void @aofUpdateCurrentSize() #9, !dbg !2426
  %271 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2427, !tbaa !507
  store i64 %271, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !2428, !tbaa !2429
  store i64 %271, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 125), align 8, !dbg !2430, !tbaa !505
  br label %325, !dbg !2431

; <label>:272:                                    ; preds = %257, %254, %81, %70
  %273 = phi i64 [ 0, %70 ], [ 0, %81 ], [ %92, %254 ], [ %260, %257 ], !dbg !2119
  %274 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !2432
  %275 = load i16, i16* %274, align 8, !dbg !2432, !tbaa !2239
  %276 = and i16 %275, 32, !dbg !2432
  %277 = icmp eq i16 %276, 0, !dbg !2432
  br i1 %277, label %278, label %288, !dbg !2434

; <label>:278:                                    ; preds = %272
  %279 = icmp eq i8* %25, null, !dbg !2435
  br i1 %279, label %284, label %280, !dbg !2438

; <label>:280:                                    ; preds = %278
  %281 = load i8*, i8** %34, align 8, !dbg !2441, !tbaa !1717
  call void @sdsfree(i8* %281) #6, !dbg !2442
  %282 = load %struct.list*, %struct.list** %51, align 8, !dbg !2443, !tbaa !1742
  call void @listRelease(%struct.list* %282) #6, !dbg !2444
  %283 = load %struct.list*, %struct.list** %58, align 8, !dbg !2445, !tbaa !1752
  call void @listRelease(%struct.list* %283) #6, !dbg !2446
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2447
  call void @zfree(i8* nonnull %25) #6, !dbg !2448
  br label %284, !dbg !2449

; <label>:284:                                    ; preds = %278, %280
  %285 = call i32* @__errno() #6, !dbg !2450
  %286 = load i32, i32* %285, align 4, !dbg !2450, !tbaa !422
  %287 = call i8* @strerror(i32 %286) #6, !dbg !2451
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i64 0, i64 0), i8* %287) #6, !dbg !2452
  call void @exit(i32 1) #8, !dbg !2453
  unreachable, !dbg !2453

; <label>:288:                                    ; preds = %272, %265
  %289 = phi i64 [ %273, %272 ], [ %259, %265 ], !dbg !2454
  %290 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 142), align 8, !dbg !2455, !tbaa !2394
  %291 = icmp eq i32 %290, 0, !dbg !2457
  br i1 %291, label %313, label %292, !dbg !2458

; <label>:292:                                    ; preds = %288
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2459
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i64 0, i64 0), i64 %289) #6, !dbg !2461
  %293 = icmp eq i64 %289, -1, !dbg !2462
  br i1 %293, label %297, label %294, !dbg !2464

; <label>:294:                                    ; preds = %292
  %295 = call i32 @truncate(i8* %0, i64 %289) #6, !dbg !2465
  %296 = icmp eq i32 %295, -1, !dbg !2466
  br i1 %296, label %298, label %302, !dbg !2467

; <label>:297:                                    ; preds = %292
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !2468
  br label %313, !dbg !2472

; <label>:298:                                    ; preds = %294
  %299 = call i32* @__errno() #6, !dbg !2473
  %300 = load i32, i32* %299, align 4, !dbg !2473, !tbaa !422
  %301 = call i8* @strerror(i32 %300) #6, !dbg !2475
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i8* %301) #6, !dbg !2476
  br label %313

; <label>:302:                                    ; preds = %294
  %303 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2477, !tbaa !447
  %304 = icmp eq i32 %303, -1, !dbg !2480
  br i1 %304, label %312, label %305, !dbg !2481

; <label>:305:                                    ; preds = %302
  %306 = call i64 @lseek(i32 %303, i64 0, i32 2) #6, !dbg !2482
  %307 = icmp eq i64 %306, -1, !dbg !2483
  br i1 %307, label %308, label %312, !dbg !2484

; <label>:308:                                    ; preds = %305
  %309 = call i32* @__errno() #6, !dbg !2485
  %310 = load i32, i32* %309, align 4, !dbg !2485, !tbaa !422
  %311 = call i8* @strerror(i32 %310) #6, !dbg !2487
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* %311) #6, !dbg !2488
  br label %313

; <label>:312:                                    ; preds = %302, %305
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !2489
  br label %266, !dbg !2491

; <label>:313:                                    ; preds = %288, %308, %298, %297
  %314 = icmp eq i8* %25, null, !dbg !2492
  br i1 %314, label %319, label %315, !dbg !2494

; <label>:315:                                    ; preds = %313
  %316 = load i8*, i8** %34, align 8, !dbg !2497, !tbaa !1717
  call void @sdsfree(i8* %316) #6, !dbg !2498
  %317 = load %struct.list*, %struct.list** %51, align 8, !dbg !2499, !tbaa !1742
  call void @listRelease(%struct.list* %317) #6, !dbg !2500
  %318 = load %struct.list*, %struct.list** %58, align 8, !dbg !2501, !tbaa !1752
  call void @listRelease(%struct.list* %318) #6, !dbg !2502
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2503
  call void @zfree(i8* nonnull %25) #6, !dbg !2504
  br label %319, !dbg !2505

; <label>:319:                                    ; preds = %313, %315
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2506
  call void @exit(i32 1) #8, !dbg !2507
  unreachable, !dbg !2507

; <label>:320:                                    ; preds = %255
  %321 = load i8*, i8** %34, align 8, !dbg !2510, !tbaa !1717
  call void @sdsfree(i8* %321) #6, !dbg !2511
  %322 = load %struct.list*, %struct.list** %51, align 8, !dbg !2512, !tbaa !1742
  call void @listRelease(%struct.list* %322) #6, !dbg !2513
  %323 = load %struct.list*, %struct.list** %58, align 8, !dbg !2514, !tbaa !1752
  call void @listRelease(%struct.list* %323) #6, !dbg !2515
  call void @freeClientMultiState(%struct.client* nonnull %26) #6, !dbg !2516
  call void @zfree(i8* nonnull %25) #6, !dbg !2517
  br label %324, !dbg !2518

; <label>:324:                                    ; preds = %255, %320
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2519
  call void @exit(i32 1) #8, !dbg !2520
  unreachable, !dbg !2520

; <label>:325:                                    ; preds = %257, %266
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %64) #7, !dbg !2521
  br label %326

; <label>:326:                                    ; preds = %325, %22
  %327 = phi i32 [ -1, %22 ], [ 0, %325 ], !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %7) #7, !dbg !2521
  ret i32 %327, !dbg !2521
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
define dso_local void @aofUpdateCurrentSize() local_unnamed_addr #0 !dbg !2523 {
  %1 = alloca %struct.stat, align 8
  %2 = bitcast %struct.stat* %1 to i8*, !dbg !2527
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2527
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2528, !tbaa !551
  %4 = icmp eq i64 %3, 0, !dbg !2528
  br i1 %4, label %7, label %5, !dbg !2530

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 @mstime() #6, !dbg !2531
  br label %7, !dbg !2531

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %0 ], !dbg !2531
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !2534, !tbaa !447
  %10 = call i32 @fstat(i32 %9, %struct.stat* nonnull %1) #6, !dbg !2537
  %11 = icmp eq i32 %10, -1, !dbg !2538
  br i1 %11, label %12, label %16, !dbg !2539

; <label>:12:                                     ; preds = %7
  %13 = call i32* @__errno() #6, !dbg !2540
  %14 = load i32, i32* %13, align 4, !dbg !2540, !tbaa !422
  %15 = call i8* @strerror(i32 %14) #6, !dbg !2542
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i64 0, i64 0), i8* %15) #6, !dbg !2543
  br label %19, !dbg !2544

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 7, !dbg !2545
  %18 = load i64, i64* %17, align 8, !dbg !2545, !tbaa !2136
  store i64 %18, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !2547, !tbaa !507
  br label %19

; <label>:19:                                     ; preds = %16, %12
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2548, !tbaa !551
  %21 = icmp eq i64 %20, 0, !dbg !2548
  br i1 %21, label %30, label %22, !dbg !2550

; <label>:22:                                     ; preds = %19
  %23 = call i64 @mstime() #6, !dbg !2551
  %24 = sub nsw i64 %23, %8, !dbg !2551
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !2553, !tbaa !551
  %26 = icmp eq i64 %25, 0, !dbg !2553
  %27 = icmp slt i64 %24, %25, !dbg !2553
  %28 = or i1 %26, %27, !dbg !2553
  br i1 %28, label %30, label %29, !dbg !2553

; <label>:29:                                     ; preds = %22
  call void @latencyAddSample(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i64 %24) #6, !dbg !2553
  br label %30, !dbg !2553

; <label>:30:                                     ; preds = %19, %22, %29
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #7, !dbg !2555
  ret void, !dbg !2555
}

; Function Attrs: noredzone
declare dso_local i32 @truncate(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkObject(%struct._rio*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2556 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2565
  %4 = load i32, i32* %3, align 8, !dbg !2565
  %5 = lshr i32 %4, 4, !dbg !2565
  %6 = trunc i32 %5 to i4, !dbg !2567
  switch i4 %6, label %42 [
    i4 1, label %7
    i4 0, label %12
    i4 -8, label %12
  ], !dbg !2567

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2568
  %9 = bitcast i8** %8 to i64*, !dbg !2568
  %10 = load i64, i64* %9, align 8, !dbg !2568, !tbaa !1192
  %11 = tail call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %10) #6, !dbg !2570
  br label %43, !dbg !2571

; <label>:12:                                     ; preds = %2, %2
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2572
  %14 = load i8*, i8** %13, align 8, !dbg !2572, !tbaa !1192
  %15 = getelementptr inbounds i8, i8* %14, i64 -1, !dbg !2577
  %16 = load i8, i8* %15, align 1, !dbg !2577, !tbaa !475
  %17 = trunc i8 %16 to i3, !dbg !2579
  switch i3 %17, label %39 [
    i3 0, label %18
    i3 1, label %21
    i3 2, label %25
    i3 3, label %30
    i3 -4, label %35
  ], !dbg !2579

; <label>:18:                                     ; preds = %12
  %19 = lshr i8 %16, 3, !dbg !2580
  %20 = zext i8 %19 to i64, !dbg !2580
  br label %39, !dbg !2581

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %14, i64 -3, !dbg !2582
  %23 = load i8, i8* %22, align 1, !dbg !2583, !tbaa !475
  %24 = zext i8 %23 to i64, !dbg !2582
  br label %39, !dbg !2584

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds i8, i8* %14, i64 -5, !dbg !2585
  %27 = bitcast i8* %26 to i16*, !dbg !2586
  %28 = load i16, i16* %27, align 1, !dbg !2586, !tbaa !492
  %29 = zext i16 %28 to i64, !dbg !2585
  br label %39, !dbg !2587

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds i8, i8* %14, i64 -9, !dbg !2588
  %32 = bitcast i8* %31 to i32*, !dbg !2589
  %33 = load i32, i32* %32, align 1, !dbg !2589, !tbaa !422
  %34 = zext i32 %33 to i64, !dbg !2588
  br label %39, !dbg !2590

; <label>:35:                                     ; preds = %12
  %36 = getelementptr inbounds i8, i8* %14, i64 -17, !dbg !2591
  %37 = bitcast i8* %36 to i64*, !dbg !2592
  %38 = load i64, i64* %37, align 1, !dbg !2592, !tbaa !337
  br label %39, !dbg !2593

; <label>:39:                                     ; preds = %12, %18, %21, %25, %30, %35
  %40 = phi i64 [ %38, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %21 ], [ %20, %18 ], [ 0, %12 ], !dbg !2594
  %41 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %14, i64 %40) #6, !dbg !2595
  br label %43, !dbg !2596

; <label>:42:                                     ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 916, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2597
  tail call void @_exit(i32 1) #8, !dbg !2597
  unreachable, !dbg !2597

; <label>:43:                                     ; preds = %39, %7
  %44 = phi i64 [ %11, %7 ], [ %41, %39 ]
  %45 = trunc i64 %44 to i32, !dbg !2599
  ret i32 %45, !dbg !2600
}

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkLongLong(%struct._rio*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @rioWriteBulkString(%struct._rio*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteListObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2601 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = tail call i64 @listTypeLength(%struct.redisObject* %2) #6, !dbg !2670
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2672
  %7 = load i32, i32* %6, align 8, !dbg !2672
  %8 = and i32 %7, 240, !dbg !2672
  %9 = icmp eq i32 %8, 144, !dbg !2673
  br i1 %9, label %10, label %63, !dbg !2674

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2675
  %12 = bitcast i8** %11 to %struct.quicklist**, !dbg !2675
  %13 = load %struct.quicklist*, %struct.quicklist** %12, align 8, !dbg !2675, !tbaa !1192
  %14 = tail call %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist* %13, i32 0) #6, !dbg !2677
  %15 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2679
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2679
  %16 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2681
  %17 = icmp eq i32 %16, 0, !dbg !2682
  br i1 %17, label %60, label %18, !dbg !2682

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 4
  %21 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 5
  br label %22, !dbg !2682

; <label>:22:                                     ; preds = %18, %52
  %23 = phi i64 [ 0, %18 ], [ %55, %52 ]
  %24 = phi i64 [ %5, %18 ], [ %56, %52 ]
  %25 = icmp eq i64 %23, 0, !dbg !2683
  br i1 %25, label %26, label %40, !dbg !2684

; <label>:26:                                     ; preds = %22
  %27 = icmp slt i64 %24, 64, !dbg !2685
  %28 = select i1 %27, i64 %24, i64 64, !dbg !2685
  %29 = shl i64 %28, 32, !dbg !2686
  %30 = add i64 %29, 8589934592, !dbg !2686
  %31 = ashr exact i64 %30, 32, !dbg !2686
  %32 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %31) #6, !dbg !2688
  %33 = icmp eq i64 %32, 0, !dbg !2689
  br i1 %33, label %59, label %34, !dbg !2690

; <label>:34:                                     ; preds = %26
  %35 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i64 5) #6, !dbg !2691
  %36 = icmp eq i64 %35, 0, !dbg !2693
  br i1 %36, label %59, label %37, !dbg !2694

; <label>:37:                                     ; preds = %34
  %38 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2695
  %39 = icmp eq i32 %38, 0, !dbg !2697
  br i1 %39, label %59, label %40

; <label>:40:                                     ; preds = %37, %22
  %41 = load i8*, i8** %19, align 8, !dbg !2698, !tbaa !2700
  %42 = icmp eq i8* %41, null, !dbg !2702
  br i1 %42, label %48, label %43, !dbg !2703

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %21, align 8, !dbg !2704, !tbaa !2707
  %45 = zext i32 %44 to i64, !dbg !2708
  %46 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %41, i64 %45) #6, !dbg !2709
  %47 = icmp eq i64 %46, 0, !dbg !2710
  br i1 %47, label %59, label %52, !dbg !2711

; <label>:48:                                     ; preds = %40
  %49 = load i64, i64* %20, align 8, !dbg !2712, !tbaa !2715
  %50 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %49) #6, !dbg !2716
  %51 = icmp eq i64 %50, 0, !dbg !2717
  br i1 %51, label %59, label %52, !dbg !2718

; <label>:52:                                     ; preds = %48, %43
  %53 = add nsw i64 %23, 1, !dbg !2719
  %54 = icmp eq i64 %53, 64, !dbg !2721
  %55 = select i1 %54, i64 0, i64 %53, !dbg !2722
  %56 = add nsw i64 %24, -1, !dbg !2723
  %57 = call i32 @quicklistNext(%struct.quicklistIter* %14, %struct.quicklistEntry* nonnull %4) #6, !dbg !2681
  %58 = icmp eq i32 %57, 0, !dbg !2682
  br i1 %58, label %60, label %22, !dbg !2682, !llvm.loop !2724

; <label>:59:                                     ; preds = %43, %48, %26, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2726
  br label %61

; <label>:60:                                     ; preds = %52, %10
  call void @quicklistReleaseIterator(%struct.quicklistIter* %14) #6, !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15) #7, !dbg !2726
  br label %61

; <label>:61:                                     ; preds = %59, %60
  %62 = phi i32 [ 1, %60 ], [ 0, %59 ]
  ret i32 %62, !dbg !2728

; <label>:63:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 949, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !2729
  tail call void @_exit(i32 1) #8, !dbg !2729
  unreachable, !dbg !2729
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
define dso_local i32 @rewriteSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2731 {
  %4 = alloca i64, align 8
  %5 = tail call i64 @setTypeSize(%struct.redisObject* %2) #6, !dbg !2770
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2772
  %7 = load i32, i32* %6, align 8, !dbg !2772
  %8 = lshr i32 %7, 4, !dbg !2772
  %9 = trunc i32 %8 to i4, !dbg !2773
  switch i4 %9, label %116 [
    i4 6, label %10
    i4 2, label %51
  ], !dbg !2773

; <label>:10:                                     ; preds = %3
  %11 = bitcast i64* %4 to i8*, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2775
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2776
  %13 = bitcast i8** %12 to %struct.intset**, !dbg !2776
  %14 = load %struct.intset*, %struct.intset** %13, align 8, !dbg !2776, !tbaa !1192
  %15 = call zeroext i8 @intsetGet(%struct.intset* %14, i32 0, i64* nonnull %4) #6, !dbg !2778
  %16 = icmp eq i8 %15, 0, !dbg !2779
  br i1 %16, label %50, label %17, !dbg !2779

; <label>:17:                                     ; preds = %10, %40
  %18 = phi i32 [ %46, %40 ], [ 1, %10 ]
  %19 = phi i64 [ %43, %40 ], [ 0, %10 ]
  %20 = phi i64 [ %44, %40 ], [ %5, %10 ]
  %21 = icmp eq i64 %19, 0, !dbg !2780
  br i1 %21, label %22, label %36, !dbg !2781

; <label>:22:                                     ; preds = %17
  %23 = icmp slt i64 %20, 64, !dbg !2782
  %24 = select i1 %23, i64 %20, i64 64, !dbg !2782
  %25 = shl i64 %24, 32, !dbg !2783
  %26 = add i64 %25, 8589934592, !dbg !2783
  %27 = ashr exact i64 %26, 32, !dbg !2783
  %28 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %27) #6, !dbg !2785
  %29 = icmp eq i64 %28, 0, !dbg !2786
  br i1 %29, label %49, label %30, !dbg !2787

; <label>:30:                                     ; preds = %22
  %31 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2788
  %32 = icmp eq i64 %31, 0, !dbg !2790
  br i1 %32, label %49, label %33, !dbg !2791

; <label>:33:                                     ; preds = %30
  %34 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2792
  %35 = icmp eq i32 %34, 0, !dbg !2794
  br i1 %35, label %49, label %36

; <label>:36:                                     ; preds = %33, %17
  %37 = load i64, i64* %4, align 8, !dbg !2795, !tbaa !337
  %38 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %37) #6, !dbg !2797
  %39 = icmp eq i64 %38, 0, !dbg !2798
  br i1 %39, label %49, label %40, !dbg !2799

; <label>:40:                                     ; preds = %36
  %41 = add nsw i64 %19, 1, !dbg !2800
  %42 = icmp eq i64 %41, 64, !dbg !2802
  %43 = select i1 %42, i64 0, i64 %41, !dbg !2803
  %44 = add nsw i64 %20, -1, !dbg !2804
  %45 = load %struct.intset*, %struct.intset** %13, align 8, !dbg !2776, !tbaa !1192
  %46 = add nuw nsw i32 %18, 1, !dbg !2805
  %47 = call zeroext i8 @intsetGet(%struct.intset* %45, i32 %18, i64* nonnull %4) #6, !dbg !2778
  %48 = icmp eq i8 %47, 0, !dbg !2779
  br i1 %48, label %50, label %17, !dbg !2779, !llvm.loop !2806

; <label>:49:                                     ; preds = %36, %22, %30, %33
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2808
  br label %117

; <label>:50:                                     ; preds = %40, %10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2808
  br label %117

; <label>:51:                                     ; preds = %3
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2809
  %53 = bitcast i8** %52 to %struct.dict**, !dbg !2809
  %54 = load %struct.dict*, %struct.dict** %53, align 8, !dbg !2809, !tbaa !1192
  %55 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %54) #6, !dbg !2810
  %56 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %55) #6, !dbg !2812
  %57 = icmp eq %struct.dictEntry* %56, null, !dbg !2814
  br i1 %57, label %115, label %58, !dbg !2815

; <label>:58:                                     ; preds = %51, %108
  %59 = phi %struct.dictEntry* [ %113, %108 ], [ %56, %51 ]
  %60 = phi i64 [ %111, %108 ], [ 0, %51 ]
  %61 = phi i64 [ %112, %108 ], [ %5, %51 ]
  %62 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %59, i64 0, i32 0, !dbg !2816
  %63 = load i8*, i8** %62, align 8, !dbg !2816, !tbaa !2817
  %64 = icmp eq i64 %60, 0, !dbg !2820
  br i1 %64, label %65, label %79, !dbg !2821

; <label>:65:                                     ; preds = %58
  %66 = icmp slt i64 %61, 64, !dbg !2822
  %67 = select i1 %66, i64 %61, i64 64, !dbg !2822
  %68 = shl i64 %67, 32, !dbg !2823
  %69 = add i64 %68, 8589934592, !dbg !2823
  %70 = ashr exact i64 %69, 32, !dbg !2823
  %71 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %70) #6, !dbg !2825
  %72 = icmp eq i64 %71, 0, !dbg !2826
  br i1 %72, label %117, label %73, !dbg !2827

; <label>:73:                                     ; preds = %65
  %74 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 4) #6, !dbg !2828
  %75 = icmp eq i64 %74, 0, !dbg !2830
  br i1 %75, label %117, label %76, !dbg !2831

; <label>:76:                                     ; preds = %73
  %77 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2832
  %78 = icmp eq i32 %77, 0, !dbg !2834
  br i1 %78, label %117, label %79

; <label>:79:                                     ; preds = %76, %58
  %80 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !2838
  %81 = load i8, i8* %80, align 1, !dbg !2838, !tbaa !475
  %82 = trunc i8 %81 to i3, !dbg !2840
  switch i3 %82, label %104 [
    i3 0, label %83
    i3 1, label %86
    i3 2, label %90
    i3 3, label %95
    i3 -4, label %100
  ], !dbg !2840

; <label>:83:                                     ; preds = %79
  %84 = lshr i8 %81, 3, !dbg !2841
  %85 = zext i8 %84 to i64, !dbg !2841
  br label %104, !dbg !2842

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds i8, i8* %63, i64 -3, !dbg !2843
  %88 = load i8, i8* %87, align 1, !dbg !2844, !tbaa !475
  %89 = zext i8 %88 to i64, !dbg !2843
  br label %104, !dbg !2845

; <label>:90:                                     ; preds = %79
  %91 = getelementptr inbounds i8, i8* %63, i64 -5, !dbg !2846
  %92 = bitcast i8* %91 to i16*, !dbg !2847
  %93 = load i16, i16* %92, align 1, !dbg !2847, !tbaa !492
  %94 = zext i16 %93 to i64, !dbg !2846
  br label %104, !dbg !2848

; <label>:95:                                     ; preds = %79
  %96 = getelementptr inbounds i8, i8* %63, i64 -9, !dbg !2849
  %97 = bitcast i8* %96 to i32*, !dbg !2850
  %98 = load i32, i32* %97, align 1, !dbg !2850, !tbaa !422
  %99 = zext i32 %98 to i64, !dbg !2849
  br label %104, !dbg !2851

; <label>:100:                                    ; preds = %79
  %101 = getelementptr inbounds i8, i8* %63, i64 -17, !dbg !2852
  %102 = bitcast i8* %101 to i64*, !dbg !2853
  %103 = load i64, i64* %102, align 1, !dbg !2853, !tbaa !337
  br label %104, !dbg !2854

; <label>:104:                                    ; preds = %79, %83, %86, %90, %95, %100
  %105 = phi i64 [ %103, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %86 ], [ %85, %83 ], [ 0, %79 ], !dbg !2855
  %106 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %63, i64 %105) #6, !dbg !2856
  %107 = icmp eq i64 %106, 0, !dbg !2857
  br i1 %107, label %117, label %108, !dbg !2858

; <label>:108:                                    ; preds = %104
  %109 = add nsw i64 %60, 1, !dbg !2859
  %110 = icmp eq i64 %109, 64, !dbg !2861
  %111 = select i1 %110, i64 0, i64 %109, !dbg !2862
  %112 = add nsw i64 %61, -1, !dbg !2863
  %113 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %55) #6, !dbg !2812
  %114 = icmp eq %struct.dictEntry* %113, null, !dbg !2814
  br i1 %114, label %115, label %58, !dbg !2815

; <label>:115:                                    ; preds = %108, %51
  tail call void @dictReleaseIterator(%struct.dictIterator* %55) #6, !dbg !2864
  br label %117

; <label>:116:                                    ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 996, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !2865
  tail call void @_exit(i32 1) #8, !dbg !2865
  unreachable, !dbg !2865

; <label>:117:                                    ; preds = %76, %73, %65, %104, %50, %115, %49
  %118 = phi i32 [ 0, %49 ], [ 1, %115 ], [ 1, %50 ], [ 0, %104 ], [ 0, %65 ], [ 0, %73 ], [ 0, %76 ], !dbg !2867
  ret i32 %118, !dbg !2868
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
define dso_local i32 @rewriteSortedSetObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2869 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i64 @zsetLength(%struct.redisObject* %2) #6, !dbg !2931
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 0, !dbg !2933
  %11 = load i32, i32* %10, align 8, !dbg !2933
  %12 = lshr i32 %11, 4, !dbg !2933
  %13 = trunc i32 %12 to i4, !dbg !2934
  switch i4 %13, label %153 [
    i4 5, label %14
    i4 7, label %78
  ], !dbg !2934

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2935
  %16 = load i8*, i8** %15, align 8, !dbg !2935, !tbaa !1192
  %17 = bitcast i8** %4 to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2937
  %18 = bitcast i8** %5 to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2937
  %19 = bitcast i8** %6 to i8*, !dbg !2938
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !2938
  %20 = bitcast i32* %7 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !2939
  %21 = bitcast i64* %8 to i8*, !dbg !2940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2940
  %22 = tail call i8* @ziplistIndex(i8* %16, i32 0) #6, !dbg !2941
  store i8* %22, i8** %4, align 8, !dbg !2943, !tbaa !1187
  %23 = icmp eq i8* %22, null, !dbg !2944
  br i1 %23, label %24, label %25, !dbg !2944

; <label>:24:                                     ; preds = %14
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1015) #6, !dbg !2944
  tail call void @_exit(i32 1) #8, !dbg !2944
  unreachable, !dbg !2944

; <label>:25:                                     ; preds = %14
  %26 = tail call i8* @ziplistNext(i8* %16, i8* nonnull %22) #6, !dbg !2945
  store i8* %26, i8** %5, align 8, !dbg !2947, !tbaa !1187
  %27 = icmp eq i8* %26, null, !dbg !2948
  br i1 %27, label %28, label %29, !dbg !2948

; <label>:28:                                     ; preds = %25
  tail call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1017) #6, !dbg !2948
  tail call void @_exit(i32 1) #8, !dbg !2948
  unreachable, !dbg !2948

; <label>:29:                                     ; preds = %25, %70
  %30 = phi i8* [ %75, %70 ], [ %22, %25 ]
  %31 = phi i64 [ %73, %70 ], [ 0, %25 ]
  %32 = phi i64 [ %74, %70 ], [ %9, %25 ]
  %33 = call i32 @ziplistGet(i8* nonnull %30, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8) #6, !dbg !2952
  %34 = icmp eq i32 %33, 0, !dbg !2952
  br i1 %34, label %35, label %36, !dbg !2952

; <label>:35:                                     ; preds = %29
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1020) #6, !dbg !2952
  call void @_exit(i32 1) #8, !dbg !2952
  unreachable, !dbg !2952

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %5, align 8, !dbg !2953, !tbaa !1187
  %38 = call double @zzlGetScore(i8* %37) #6, !dbg !2954
  %39 = icmp eq i64 %31, 0, !dbg !2956
  br i1 %39, label %40, label %55, !dbg !2957

; <label>:40:                                     ; preds = %36
  %41 = icmp slt i64 %32, 64, !dbg !2958
  %42 = select i1 %41, i64 %32, i64 64, !dbg !2958
  %43 = trunc i64 %42 to i32, !dbg !2958
  %44 = shl i32 %43, 1, !dbg !2960
  %45 = add nsw i32 %44, 2, !dbg !2962
  %46 = sext i32 %45 to i64, !dbg !2963
  %47 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %46) #6, !dbg !2964
  %48 = icmp eq i64 %47, 0, !dbg !2965
  br i1 %48, label %77, label %49, !dbg !2966

; <label>:49:                                     ; preds = %40
  %50 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !2967
  %51 = icmp eq i64 %50, 0, !dbg !2969
  br i1 %51, label %77, label %52, !dbg !2970

; <label>:52:                                     ; preds = %49
  %53 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !2971
  %54 = icmp eq i32 %53, 0, !dbg !2973
  br i1 %54, label %77, label %55

; <label>:55:                                     ; preds = %52, %36
  %56 = call i64 @rioWriteBulkDouble(%struct._rio* %0, double %38) #6, !dbg !2974
  %57 = icmp eq i64 %56, 0, !dbg !2976
  br i1 %57, label %155, label %58, !dbg !2977

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %6, align 8, !dbg !2978, !tbaa !1187
  %60 = icmp eq i8* %59, null, !dbg !2980
  br i1 %60, label %66, label %61, !dbg !2981

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* %7, align 4, !dbg !2982, !tbaa !422
  %63 = zext i32 %62 to i64, !dbg !2982
  %64 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %59, i64 %63) #6, !dbg !2985
  %65 = icmp eq i64 %64, 0, !dbg !2986
  br i1 %65, label %156, label %70, !dbg !2987

; <label>:66:                                     ; preds = %58
  %67 = load i64, i64* %8, align 8, !dbg !2988, !tbaa !2991
  %68 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %67) #6, !dbg !2992
  %69 = icmp eq i64 %68, 0, !dbg !2993
  br i1 %69, label %157, label %70, !dbg !2994

; <label>:70:                                     ; preds = %66, %61
  call void @zzlNext(i8* %16, i8** nonnull %4, i8** nonnull %5) #6, !dbg !2995
  %71 = add nsw i64 %31, 1, !dbg !2996
  %72 = icmp eq i64 %71, 64, !dbg !2998
  %73 = select i1 %72, i64 0, i64 %71, !dbg !2999
  %74 = add nsw i64 %32, -1, !dbg !3000
  %75 = load i8*, i8** %4, align 8, !dbg !3001, !tbaa !1187
  %76 = icmp eq i8* %75, null, !dbg !3002
  br i1 %76, label %154, label %29, !dbg !3003, !llvm.loop !3004

; <label>:77:                                     ; preds = %52, %49, %40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3006
  br label %158

; <label>:78:                                     ; preds = %3
  %79 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3007
  %80 = bitcast i8** %79 to %struct.zset**, !dbg !3007
  %81 = load %struct.zset*, %struct.zset** %80, align 8, !dbg !3007, !tbaa !1192
  %82 = getelementptr inbounds %struct.zset, %struct.zset* %81, i64 0, i32 0, !dbg !3009
  %83 = load %struct.dict*, %struct.dict** %82, align 8, !dbg !3009, !tbaa !3010
  %84 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %83) #6, !dbg !3012
  %85 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %84) #6, !dbg !3014
  %86 = icmp eq %struct.dictEntry* %85, null, !dbg !3016
  br i1 %86, label %152, label %87, !dbg !3017

; <label>:87:                                     ; preds = %78, %145
  %88 = phi %struct.dictEntry* [ %150, %145 ], [ %85, %78 ]
  %89 = phi i64 [ %148, %145 ], [ 0, %78 ]
  %90 = phi i64 [ %149, %145 ], [ %9, %78 ]
  %91 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %88, i64 0, i32 0, !dbg !3018
  %92 = load i8*, i8** %91, align 8, !dbg !3018, !tbaa !2817
  %93 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %88, i64 0, i32 1, i32 0, !dbg !3020
  %94 = bitcast i8** %93 to double**, !dbg !3020
  %95 = load double*, double** %94, align 8, !dbg !3020, !tbaa !475
  %96 = icmp eq i64 %89, 0, !dbg !3022
  br i1 %96, label %97, label %112, !dbg !3023

; <label>:97:                                     ; preds = %87
  %98 = icmp slt i64 %90, 64, !dbg !3024
  %99 = select i1 %98, i64 %90, i64 64, !dbg !3024
  %100 = trunc i64 %99 to i32, !dbg !3024
  %101 = shl i32 %100, 1, !dbg !3026
  %102 = add nsw i32 %101, 2, !dbg !3028
  %103 = sext i32 %102 to i64, !dbg !3029
  %104 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %103) #6, !dbg !3030
  %105 = icmp eq i64 %104, 0, !dbg !3031
  br i1 %105, label %158, label %106, !dbg !3032

; <label>:106:                                    ; preds = %97
  %107 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #6, !dbg !3033
  %108 = icmp eq i64 %107, 0, !dbg !3035
  br i1 %108, label %158, label %109, !dbg !3036

; <label>:109:                                    ; preds = %106
  %110 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3037
  %111 = icmp eq i32 %110, 0, !dbg !3039
  br i1 %111, label %158, label %112

; <label>:112:                                    ; preds = %109, %87
  %113 = load double, double* %95, align 8, !dbg !3040, !tbaa !3042
  %114 = tail call i64 @rioWriteBulkDouble(%struct._rio* %0, double %113) #6, !dbg !3043
  %115 = icmp eq i64 %114, 0, !dbg !3044
  br i1 %115, label %158, label %116, !dbg !3045

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %92, i64 -1, !dbg !3049
  %118 = load i8, i8* %117, align 1, !dbg !3049, !tbaa !475
  %119 = trunc i8 %118 to i3, !dbg !3051
  switch i3 %119, label %141 [
    i3 0, label %120
    i3 1, label %123
    i3 2, label %127
    i3 3, label %132
    i3 -4, label %137
  ], !dbg !3051

; <label>:120:                                    ; preds = %116
  %121 = lshr i8 %118, 3, !dbg !3052
  %122 = zext i8 %121 to i64, !dbg !3052
  br label %141, !dbg !3053

; <label>:123:                                    ; preds = %116
  %124 = getelementptr inbounds i8, i8* %92, i64 -3, !dbg !3054
  %125 = load i8, i8* %124, align 1, !dbg !3055, !tbaa !475
  %126 = zext i8 %125 to i64, !dbg !3054
  br label %141, !dbg !3056

; <label>:127:                                    ; preds = %116
  %128 = getelementptr inbounds i8, i8* %92, i64 -5, !dbg !3057
  %129 = bitcast i8* %128 to i16*, !dbg !3058
  %130 = load i16, i16* %129, align 1, !dbg !3058, !tbaa !492
  %131 = zext i16 %130 to i64, !dbg !3057
  br label %141, !dbg !3059

; <label>:132:                                    ; preds = %116
  %133 = getelementptr inbounds i8, i8* %92, i64 -9, !dbg !3060
  %134 = bitcast i8* %133 to i32*, !dbg !3061
  %135 = load i32, i32* %134, align 1, !dbg !3061, !tbaa !422
  %136 = zext i32 %135 to i64, !dbg !3060
  br label %141, !dbg !3062

; <label>:137:                                    ; preds = %116
  %138 = getelementptr inbounds i8, i8* %92, i64 -17, !dbg !3063
  %139 = bitcast i8* %138 to i64*, !dbg !3064
  %140 = load i64, i64* %139, align 1, !dbg !3064, !tbaa !337
  br label %141, !dbg !3065

; <label>:141:                                    ; preds = %116, %120, %123, %127, %132, %137
  %142 = phi i64 [ %140, %137 ], [ %136, %132 ], [ %131, %127 ], [ %126, %123 ], [ %122, %120 ], [ 0, %116 ], !dbg !3066
  %143 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %92, i64 %142) #6, !dbg !3067
  %144 = icmp eq i64 %143, 0, !dbg !3068
  br i1 %144, label %158, label %145, !dbg !3069

; <label>:145:                                    ; preds = %141
  %146 = add nsw i64 %89, 1, !dbg !3070
  %147 = icmp eq i64 %146, 64, !dbg !3072
  %148 = select i1 %147, i64 0, i64 %146, !dbg !3073
  %149 = add nsw i64 %90, -1, !dbg !3074
  %150 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %84) #6, !dbg !3014
  %151 = icmp eq %struct.dictEntry* %150, null, !dbg !3016
  br i1 %151, label %152, label %87, !dbg !3017

; <label>:152:                                    ; preds = %145, %78
  tail call void @dictReleaseIterator(%struct.dictIterator* %84) #6, !dbg !3075
  br label %158

; <label>:153:                                    ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1065, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !3076
  tail call void @_exit(i32 1) #8, !dbg !3076
  unreachable, !dbg !3076

; <label>:154:                                    ; preds = %70
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3006
  br label %158

; <label>:155:                                    ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3006
  br label %158

; <label>:156:                                    ; preds = %61
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3006
  br label %158

; <label>:157:                                    ; preds = %66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3006
  br label %158

; <label>:158:                                    ; preds = %109, %106, %97, %141, %112, %152, %154, %77, %157, %156, %155
  %159 = phi i32 [ 0, %77 ], [ 0, %155 ], [ 0, %156 ], [ 0, %157 ], [ 1, %154 ], [ 1, %152 ], [ 0, %112 ], [ 0, %141 ], [ 0, %97 ], [ 0, %106 ], [ 0, %109 ], !dbg !3078
  ret i32 %159, !dbg !3079
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
define dso_local i32 @rewriteHashObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !3080 {
  %4 = tail call i64 @hashTypeLength(%struct.redisObject* %2) #6, !dbg !3106
  %5 = tail call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* %2) #6, !dbg !3108
  %6 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3110
  %7 = icmp eq i32 %6, -1, !dbg !3111
  br i1 %7, label %40, label %8, !dbg !3112

; <label>:8:                                      ; preds = %3, %33
  %9 = phi i64 [ %37, %33 ], [ %4, %3 ]
  %10 = phi i64 [ %36, %33 ], [ 0, %3 ]
  %11 = icmp eq i64 %10, 0, !dbg !3113
  br i1 %11, label %12, label %27, !dbg !3114

; <label>:12:                                     ; preds = %8
  %13 = icmp slt i64 %9, 64, !dbg !3115
  %14 = select i1 %13, i64 %9, i64 64, !dbg !3115
  %15 = trunc i64 %14 to i32, !dbg !3115
  %16 = shl i32 %15, 1, !dbg !3117
  %17 = add nsw i32 %16, 2, !dbg !3119
  %18 = sext i32 %17 to i64, !dbg !3120
  %19 = tail call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %18) #6, !dbg !3121
  %20 = icmp eq i64 %19, 0, !dbg !3122
  br i1 %20, label %41, label %21, !dbg !3123

; <label>:21:                                     ; preds = %12
  %22 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i64 5) #6, !dbg !3124
  %23 = icmp eq i64 %22, 0, !dbg !3126
  br i1 %23, label %41, label %24, !dbg !3127

; <label>:24:                                     ; preds = %21
  %25 = tail call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3128
  %26 = icmp eq i32 %25, 0, !dbg !3130
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %24, %8
  %28 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 1) #9, !dbg !3131
  %29 = icmp eq i32 %28, 0, !dbg !3133
  br i1 %29, label %41, label %30, !dbg !3134

; <label>:30:                                     ; preds = %27
  %31 = tail call fastcc i32 @rioWriteHashIteratorCursor(%struct._rio* %0, %struct.hashTypeIterator* %5, i32 2) #9, !dbg !3135
  %32 = icmp eq i32 %31, 0, !dbg !3137
  br i1 %32, label %41, label %33, !dbg !3138

; <label>:33:                                     ; preds = %30
  %34 = add nsw i64 %10, 1, !dbg !3139
  %35 = icmp eq i64 %34, 64, !dbg !3141
  %36 = select i1 %35, i64 0, i64 %34, !dbg !3142
  %37 = add nsw i64 %9, -1, !dbg !3143
  %38 = tail call i32 @hashTypeNext(%struct.hashTypeIterator* %5) #6, !dbg !3110
  %39 = icmp eq i32 %38, -1, !dbg !3111
  br i1 %39, label %40, label %8, !dbg !3112, !llvm.loop !3144

; <label>:40:                                     ; preds = %33, %3
  tail call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %5) #6, !dbg !3146
  br label %41, !dbg !3147

; <label>:41:                                     ; preds = %24, %21, %12, %30, %27, %40
  %42 = phi i32 [ 1, %40 ], [ 0, %27 ], [ 0, %30 ], [ 0, %12 ], [ 0, %21 ], [ 0, %24 ], !dbg !3148
  ret i32 %42, !dbg !3149
}

; Function Attrs: noredzone
declare dso_local i64 @hashTypeLength(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @hashTypeNext(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc i32 @rioWriteHashIteratorCursor(%struct._rio*, %struct.hashTypeIterator*, i32) unnamed_addr #0 !dbg !3150 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.hashTypeIterator, %struct.hashTypeIterator* %1, i64 0, i32 1, !dbg !3168
  %8 = load i32, i32* %7, align 8, !dbg !3168, !tbaa !3169
  switch i32 %8, label %53 [
    i32 5, label %9
    i32 2, label %24
  ], !dbg !3171

; <label>:9:                                      ; preds = %3
  %10 = bitcast i8** %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3172
  store i8* null, i8** %4, align 8, !dbg !3173, !tbaa !1187
  %11 = bitcast i32* %5 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7, !dbg !3174
  store i32 -1, i32* %5, align 4, !dbg !3175, !tbaa !422
  %12 = bitcast i64* %6 to i8*, !dbg !3176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3176
  store i64 9223372036854775807, i64* %6, align 8, !dbg !3177, !tbaa !2991
  call void @hashTypeCurrentFromZiplist(%struct.hashTypeIterator* nonnull %1, i32 %2, i8** nonnull %4, i32* nonnull %5, i64* nonnull %6) #6, !dbg !3178
  %13 = load i8*, i8** %4, align 8, !dbg !3179, !tbaa !1187
  %14 = icmp eq i8* %13, null, !dbg !3179
  br i1 %14, label %19, label %15, !dbg !3181

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4, !dbg !3182, !tbaa !422
  %17 = zext i32 %16 to i64, !dbg !3182
  %18 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* nonnull %13, i64 %17) #6, !dbg !3183
  br label %22, !dbg !3184

; <label>:19:                                     ; preds = %9
  %20 = load i64, i64* %6, align 8, !dbg !3185, !tbaa !2991
  %21 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %20) #6, !dbg !3186
  br label %22, !dbg !3187

; <label>:22:                                     ; preds = %19, %15
  %23 = phi i64 [ %18, %15 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3188
  br label %54

; <label>:24:                                     ; preds = %3
  %25 = tail call i8* @hashTypeCurrentFromHashTable(%struct.hashTypeIterator* nonnull %1, i32 %2) #6, !dbg !3189
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !3193
  %27 = load i8, i8* %26, align 1, !dbg !3193, !tbaa !475
  %28 = trunc i8 %27 to i3, !dbg !3195
  switch i3 %28, label %50 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !3195

; <label>:29:                                     ; preds = %24
  %30 = lshr i8 %27, 3, !dbg !3196
  %31 = zext i8 %30 to i64, !dbg !3196
  br label %50, !dbg !3197

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !3198
  %34 = load i8, i8* %33, align 1, !dbg !3199, !tbaa !475
  %35 = zext i8 %34 to i64, !dbg !3198
  br label %50, !dbg !3200

; <label>:36:                                     ; preds = %24
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !3201
  %38 = bitcast i8* %37 to i16*, !dbg !3202
  %39 = load i16, i16* %38, align 1, !dbg !3202, !tbaa !492
  %40 = zext i16 %39 to i64, !dbg !3201
  br label %50, !dbg !3203

; <label>:41:                                     ; preds = %24
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !3204
  %43 = bitcast i8* %42 to i32*, !dbg !3205
  %44 = load i32, i32* %43, align 1, !dbg !3205, !tbaa !422
  %45 = zext i32 %44 to i64, !dbg !3204
  br label %50, !dbg !3206

; <label>:46:                                     ; preds = %24
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !3207
  %48 = bitcast i8* %47 to i64*, !dbg !3208
  %49 = load i64, i64* %48, align 1, !dbg !3208, !tbaa !337
  br label %50, !dbg !3209

; <label>:50:                                     ; preds = %24, %29, %32, %36, %41, %46
  %51 = phi i64 [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], [ 0, %24 ], !dbg !3210
  %52 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %25, i64 %51) #6, !dbg !3211
  br label %54

; <label>:53:                                     ; preds = %3
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1092, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i64 0, i64 0)) #6, !dbg !3212
  tail call void @_exit(i32 1) #8, !dbg !3212
  unreachable, !dbg !3212

; <label>:54:                                     ; preds = %50, %22
  %55 = phi i64 [ %23, %22 ], [ %52, %50 ]
  %56 = trunc i64 %55 to i32, !dbg !3213
  ret i32 %56, !dbg !3214
}

; Function Attrs: noredzone
declare dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteBulkStreamID(%struct._rio*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !3215 {
  %3 = tail call i8* @sdsempty() #6, !dbg !3232
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !3233
  %5 = load i64, i64* %4, align 8, !dbg !3233, !tbaa !3234
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !3236
  %7 = load i64, i64* %6, align 8, !dbg !3236, !tbaa !3237
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i64 %5, i64 %7) #6, !dbg !3238
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !3243
  %10 = load i8, i8* %9, align 1, !dbg !3243, !tbaa !475
  %11 = trunc i8 %10 to i3, !dbg !3245
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !3245

; <label>:12:                                     ; preds = %2
  %13 = lshr i8 %10, 3, !dbg !3246
  %14 = zext i8 %13 to i64, !dbg !3246
  br label %33, !dbg !3247

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !3248
  %17 = load i8, i8* %16, align 1, !dbg !3249, !tbaa !475
  %18 = zext i8 %17 to i64, !dbg !3248
  br label %33, !dbg !3250

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !3251
  %21 = bitcast i8* %20 to i16*, !dbg !3252
  %22 = load i16, i16* %21, align 1, !dbg !3252, !tbaa !492
  %23 = zext i16 %22 to i64, !dbg !3251
  br label %33, !dbg !3253

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !3254
  %26 = bitcast i8* %25 to i32*, !dbg !3255
  %27 = load i32, i32* %26, align 1, !dbg !3255, !tbaa !422
  %28 = zext i32 %27 to i64, !dbg !3254
  br label %33, !dbg !3256

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !3257
  %31 = bitcast i8* %30 to i64*, !dbg !3258
  %32 = load i64, i64* %31, align 1, !dbg !3258, !tbaa !337
  br label %33, !dbg !3259

; <label>:33:                                     ; preds = %2, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %2 ], !dbg !3260
  %35 = tail call i64 @rioWriteBulkString(%struct._rio* %0, i8* %8, i64 %34) #6, !dbg !3261
  %36 = trunc i64 %35 to i32, !dbg !3261
  %37 = icmp eq i32 %36, 0, !dbg !3263
  br i1 %37, label %39, label %38, !dbg !3264

; <label>:38:                                     ; preds = %33
  tail call void @sdsfree(i8* %8) #6, !dbg !3265
  br label %39, !dbg !3266

; <label>:39:                                     ; preds = %33, %38
  ret i32 %36, !dbg !3267
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rioWriteStreamPendingEntry(%struct._rio*, %struct.redisObject* nocapture readonly, i8*, i64, %struct.streamConsumer* nocapture readonly, i8*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !3268 {
  %8 = alloca %struct.streamID, align 8
  %9 = bitcast %struct.streamID* %8 to i8*, !dbg !3319
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3319
  call void @streamDecodeID(i8* %5, %struct.streamID* nonnull %8) #6, !dbg !3321
  %10 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 12) #6, !dbg !3322
  %11 = icmp eq i64 %10, 0, !dbg !3324
  br i1 %11, label %81, label %12, !dbg !3325

; <label>:12:                                     ; preds = %7
  %13 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 6) #6, !dbg !3326
  %14 = icmp eq i64 %13, 0, !dbg !3328
  br i1 %14, label %81, label %15, !dbg !3329

; <label>:15:                                     ; preds = %12
  %16 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3330
  %17 = icmp eq i32 %16, 0, !dbg !3332
  br i1 %17, label %81, label %18, !dbg !3333

; <label>:18:                                     ; preds = %15
  %19 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %2, i64 %3) #6, !dbg !3334
  %20 = icmp eq i64 %19, 0, !dbg !3336
  br i1 %20, label %81, label %21, !dbg !3337

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %4, i64 0, i32 1, !dbg !3338
  %23 = load i8*, i8** %22, align 8, !dbg !3338, !tbaa !3340
  %24 = getelementptr inbounds i8, i8* %23, i64 -1, !dbg !3344
  %25 = load i8, i8* %24, align 1, !dbg !3344, !tbaa !475
  %26 = trunc i8 %25 to i3, !dbg !3346
  switch i3 %26, label %48 [
    i3 0, label %27
    i3 1, label %30
    i3 2, label %34
    i3 3, label %39
    i3 -4, label %44
  ], !dbg !3346

; <label>:27:                                     ; preds = %21
  %28 = lshr i8 %25, 3, !dbg !3347
  %29 = zext i8 %28 to i64, !dbg !3347
  br label %48, !dbg !3348

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds i8, i8* %23, i64 -3, !dbg !3349
  %32 = load i8, i8* %31, align 1, !dbg !3350, !tbaa !475
  %33 = zext i8 %32 to i64, !dbg !3349
  br label %48, !dbg !3351

; <label>:34:                                     ; preds = %21
  %35 = getelementptr inbounds i8, i8* %23, i64 -5, !dbg !3352
  %36 = bitcast i8* %35 to i16*, !dbg !3353
  %37 = load i16, i16* %36, align 1, !dbg !3353, !tbaa !492
  %38 = zext i16 %37 to i64, !dbg !3352
  br label %48, !dbg !3354

; <label>:39:                                     ; preds = %21
  %40 = getelementptr inbounds i8, i8* %23, i64 -9, !dbg !3355
  %41 = bitcast i8* %40 to i32*, !dbg !3356
  %42 = load i32, i32* %41, align 1, !dbg !3356, !tbaa !422
  %43 = zext i32 %42 to i64, !dbg !3355
  br label %48, !dbg !3357

; <label>:44:                                     ; preds = %21
  %45 = getelementptr inbounds i8, i8* %23, i64 -17, !dbg !3358
  %46 = bitcast i8* %45 to i64*, !dbg !3359
  %47 = load i64, i64* %46, align 1, !dbg !3359, !tbaa !337
  br label %48, !dbg !3360

; <label>:48:                                     ; preds = %21, %27, %30, %34, %39, %44
  %49 = phi i64 [ %47, %44 ], [ %43, %39 ], [ %38, %34 ], [ %33, %30 ], [ %29, %27 ], [ 0, %21 ], !dbg !3361
  %50 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %23, i64 %49) #6, !dbg !3362
  %51 = icmp eq i64 %50, 0, !dbg !3363
  br i1 %51, label %81, label %52, !dbg !3364

; <label>:52:                                     ; preds = %48
  %53 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3365
  %54 = icmp eq i64 %53, 0, !dbg !3367
  br i1 %54, label %81, label %55, !dbg !3368

; <label>:55:                                     ; preds = %52
  %56 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %8) #9, !dbg !3369
  %57 = icmp eq i32 %56, 0, !dbg !3371
  br i1 %57, label %81, label %58, !dbg !3372

; <label>:58:                                     ; preds = %55
  %59 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i64 4) #6, !dbg !3373
  %60 = icmp eq i64 %59, 0, !dbg !3375
  br i1 %60, label %81, label %61, !dbg !3376

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 0, !dbg !3377
  %63 = load i64, i64* %62, align 8, !dbg !3377, !tbaa !3379
  %64 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %63) #6, !dbg !3381
  %65 = icmp eq i64 %64, 0, !dbg !3382
  br i1 %65, label %81, label %66, !dbg !3383

; <label>:66:                                     ; preds = %61
  %67 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i64 0, i64 0), i64 10) #6, !dbg !3384
  %68 = icmp eq i64 %67, 0, !dbg !3386
  br i1 %68, label %81, label %69, !dbg !3387

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %6, i64 0, i32 1, !dbg !3388
  %71 = load i64, i64* %70, align 8, !dbg !3388, !tbaa !3390
  %72 = call i64 @rioWriteBulkLongLong(%struct._rio* %0, i64 %71) #6, !dbg !3391
  %73 = icmp eq i64 %72, 0, !dbg !3392
  br i1 %73, label %81, label %74, !dbg !3393

; <label>:74:                                     ; preds = %69
  %75 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i64 6) #6, !dbg !3394
  %76 = icmp eq i64 %75, 0, !dbg !3396
  br i1 %76, label %81, label %77, !dbg !3397

; <label>:77:                                     ; preds = %74
  %78 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0), i64 5) #6, !dbg !3398
  %79 = icmp ne i64 %78, 0, !dbg !3400
  %80 = zext i1 %79 to i32, !dbg !3401
  br label %81, !dbg !3401

; <label>:81:                                     ; preds = %77, %74, %69, %66, %61, %58, %55, %52, %48, %18, %15, %12, %7
  %82 = phi i32 [ 0, %7 ], [ 0, %12 ], [ 0, %15 ], [ 0, %18 ], [ 0, %48 ], [ 0, %52 ], [ 0, %55 ], [ 0, %58 ], [ 0, %61 ], [ 0, %66 ], [ 0, %69 ], [ 0, %74 ], [ %80, %77 ], !dbg !3402
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3403
  ret i32 %82, !dbg !3403
}

; Function Attrs: noredzone
declare dso_local void @streamDecodeID(i8*, %struct.streamID*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteStreamObject(%struct._rio*, %struct.redisObject* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3404 {
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
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3500
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !3500
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !3500, !tbaa !1192
  %17 = bitcast %struct.streamIterator* %4 to i8*, !dbg !3502
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3502
  call void @streamIteratorStart(%struct.streamIterator* nonnull %4, %struct.stream* %16, %struct.streamID* null, %struct.streamID* null, i32 0) #6, !dbg !3504
  %18 = bitcast %struct.streamID* %5 to i8*, !dbg !3505
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3505
  %19 = bitcast i64* %6 to i8*, !dbg !3506
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3506
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !3507
  %21 = load i64, i64* %20, align 8, !dbg !3507, !tbaa !3508
  %22 = icmp eq i64 %21, 0, !dbg !3510
  br i1 %22, label %63, label %23, !dbg !3511

; <label>:23:                                     ; preds = %3
  %24 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3514
  %25 = icmp eq i32 %24, 0, !dbg !3515
  br i1 %25, label %88, label %26, !dbg !3515

; <label>:26:                                     ; preds = %23
  %27 = bitcast i8** %7 to i8*
  %28 = bitcast i8** %8 to i8*
  %29 = bitcast i64* %9 to i8*
  %30 = bitcast i64* %10 to i8*
  br label %34, !dbg !3515

; <label>:31:                                     ; preds = %49
  %32 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %5, i64* nonnull %6) #6, !dbg !3514
  %33 = icmp eq i32 %32, 0, !dbg !3515
  br i1 %33, label %88, label %34, !dbg !3515

; <label>:34:                                     ; preds = %26, %31
  %35 = load i64, i64* %6, align 8, !dbg !3516, !tbaa !337
  %36 = shl i64 %35, 1, !dbg !3518
  %37 = add nsw i64 %36, 3, !dbg !3519
  %38 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 %37) #6, !dbg !3520
  %39 = icmp eq i64 %38, 0, !dbg !3521
  br i1 %39, label %176, label %40, !dbg !3522

; <label>:40:                                     ; preds = %34
  %41 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3523
  %42 = icmp eq i64 %41, 0, !dbg !3525
  br i1 %42, label %176, label %43, !dbg !3526

; <label>:43:                                     ; preds = %40
  %44 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3527
  %45 = icmp eq i32 %44, 0, !dbg !3529
  br i1 %45, label %176, label %46, !dbg !3530

; <label>:46:                                     ; preds = %43
  %47 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %5) #9, !dbg !3531
  %48 = icmp eq i32 %47, 0, !dbg !3533
  br i1 %48, label %176, label %49, !dbg !3534

; <label>:49:                                     ; preds = %46, %58
  %50 = load i64, i64* %6, align 8, !dbg !3535, !tbaa !337
  %51 = add nsw i64 %50, -1, !dbg !3535
  store i64 %51, i64* %6, align 8, !dbg !3535, !tbaa !337
  %52 = icmp eq i64 %50, 0, !dbg !3536
  br i1 %52, label %31, label %53, !dbg !3536, !llvm.loop !3537

; <label>:53:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3540
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %4, i8** nonnull %7, i8** nonnull %8, i64* nonnull %9, i64* nonnull %10) #6, !dbg !3545
  %54 = load i8*, i8** %7, align 8, !dbg !3546, !tbaa !1187
  %55 = load i64, i64* %9, align 8, !dbg !3548, !tbaa !337
  %56 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %54, i64 %55) #6, !dbg !3549
  %57 = icmp eq i64 %56, 0, !dbg !3550
  br i1 %57, label %175, label %58, !dbg !3551

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %8, align 8, !dbg !3552, !tbaa !1187
  %60 = load i64, i64* %10, align 8, !dbg !3554, !tbaa !337
  %61 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %59, i64 %60) #6, !dbg !3555
  %62 = icmp eq i64 %61, 0, !dbg !3556
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3557
  br i1 %62, label %176, label %49, !llvm.loop !3558

; <label>:63:                                     ; preds = %3
  %64 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 7) #6, !dbg !3559
  %65 = icmp eq i64 %64, 0, !dbg !3562
  br i1 %65, label %176, label %66, !dbg !3563

; <label>:66:                                     ; preds = %63
  %67 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i64 4) #6, !dbg !3564
  %68 = icmp eq i64 %67, 0, !dbg !3566
  br i1 %68, label %176, label %69, !dbg !3567

; <label>:69:                                     ; preds = %66
  %70 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3568
  %71 = icmp eq i32 %70, 0, !dbg !3570
  br i1 %71, label %176, label %72, !dbg !3571

; <label>:72:                                     ; preds = %69
  %73 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i64 6) #6, !dbg !3572
  %74 = icmp eq i64 %73, 0, !dbg !3574
  br i1 %74, label %176, label %75, !dbg !3575

; <label>:75:                                     ; preds = %72
  %76 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), i64 1) #6, !dbg !3576
  %77 = icmp eq i64 %76, 0, !dbg !3578
  br i1 %77, label %176, label %78, !dbg !3579

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3580
  %80 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %79) #9, !dbg !3582
  %81 = icmp eq i32 %80, 0, !dbg !3583
  br i1 %81, label %176, label %82, !dbg !3584

; <label>:82:                                     ; preds = %78
  %83 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i64 1) #6, !dbg !3585
  %84 = icmp eq i64 %83, 0, !dbg !3587
  br i1 %84, label %176, label %85, !dbg !3588

; <label>:85:                                     ; preds = %82
  %86 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), i64 1) #6, !dbg !3589
  %87 = icmp eq i64 %86, 0, !dbg !3591
  br i1 %87, label %176, label %88, !dbg !3592

; <label>:88:                                     ; preds = %31, %23, %85
  %89 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 3) #6, !dbg !3593
  %90 = icmp eq i64 %89, 0, !dbg !3595
  br i1 %90, label %176, label %91, !dbg !3596

; <label>:91:                                     ; preds = %88
  %92 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i64 6) #6, !dbg !3597
  %93 = icmp eq i64 %92, 0, !dbg !3599
  br i1 %93, label %176, label %94, !dbg !3600

; <label>:94:                                     ; preds = %91
  %95 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3601
  %96 = icmp eq i32 %95, 0, !dbg !3603
  br i1 %96, label %176, label %97, !dbg !3604

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 2, !dbg !3605
  %99 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* nonnull %98) #9, !dbg !3607
  %100 = icmp eq i32 %99, 0, !dbg !3608
  br i1 %100, label %176, label %101, !dbg !3609

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 3, !dbg !3610
  %103 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !3610, !tbaa !3611
  %104 = icmp eq %struct.rax* %103, null, !dbg !3612
  br i1 %104, label %174, label %105, !dbg !3613

; <label>:105:                                    ; preds = %101
  %106 = bitcast %struct.raxIterator* %11 to i8*, !dbg !3614
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3614
  call void @raxStart(%struct.raxIterator* nonnull %11, %struct.rax* nonnull %103) #6, !dbg !3616
  %107 = call i32 @raxSeek(%struct.raxIterator* nonnull %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3617
  %108 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3618
  %109 = icmp eq i32 %108, 0, !dbg !3619
  br i1 %109, label %173, label %110, !dbg !3619

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
  br label %122, !dbg !3619

; <label>:122:                                    ; preds = %110, %169
  %123 = load %struct.streamCG*, %struct.streamCG** %112, align 8, !dbg !3620, !tbaa !3621
  %124 = call i64 @rioWriteBulkCount(%struct._rio* %0, i8 signext 42, i64 5) #6, !dbg !3625
  %125 = icmp eq i64 %124, 0, !dbg !3627
  br i1 %125, label %172, label %126, !dbg !3628

; <label>:126:                                    ; preds = %122
  %127 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 6) #6, !dbg !3629
  %128 = icmp eq i64 %127, 0, !dbg !3631
  br i1 %128, label %172, label %129, !dbg !3632

; <label>:129:                                    ; preds = %126
  %130 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i64 6) #6, !dbg !3633
  %131 = icmp eq i64 %130, 0, !dbg !3635
  br i1 %131, label %172, label %132, !dbg !3636

; <label>:132:                                    ; preds = %129
  %133 = call i32 @rioWriteBulkObject(%struct._rio* %0, %struct.redisObject* %1) #9, !dbg !3637
  %134 = icmp eq i32 %133, 0, !dbg !3639
  br i1 %134, label %172, label %135, !dbg !3640

; <label>:135:                                    ; preds = %132
  %136 = load i8*, i8** %113, align 8, !dbg !3641, !tbaa !3643
  %137 = load i64, i64* %114, align 8, !dbg !3644, !tbaa !3645
  %138 = call i64 @rioWriteBulkString(%struct._rio* %0, i8* %136, i64 %137) #6, !dbg !3646
  %139 = icmp eq i64 %138, 0, !dbg !3647
  br i1 %139, label %172, label %140, !dbg !3648

; <label>:140:                                    ; preds = %135
  %141 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %123, i64 0, i32 0, !dbg !3649
  %142 = call i32 @rioWriteBulkStreamID(%struct._rio* %0, %struct.streamID* %141) #9, !dbg !3651
  %143 = icmp eq i32 %142, 0, !dbg !3652
  br i1 %143, label %172, label %144, !dbg !3653

; <label>:144:                                    ; preds = %140
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3654
  %145 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %123, i64 0, i32 2, !dbg !3655
  %146 = load %struct.rax*, %struct.rax** %145, align 8, !dbg !3655, !tbaa !3656
  call void @raxStart(%struct.raxIterator* nonnull %12, %struct.rax* %146) #6, !dbg !3659
  %147 = call i32 @raxSeek(%struct.raxIterator* nonnull %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3660
  %148 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3661
  %149 = icmp eq i32 %148, 0, !dbg !3662
  br i1 %149, label %169, label %150, !dbg !3662

; <label>:150:                                    ; preds = %144, %166
  %151 = load %struct.streamConsumer*, %struct.streamConsumer** %117, align 8, !dbg !3663, !tbaa !3621
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3665
  %152 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %151, i64 0, i32 2, !dbg !3666
  %153 = load %struct.rax*, %struct.rax** %152, align 8, !dbg !3666, !tbaa !3667
  call void @raxStart(%struct.raxIterator* nonnull %13, %struct.rax* %153) #6, !dbg !3669
  %154 = call i32 @raxSeek(%struct.raxIterator* nonnull %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3670
  br label %155, !dbg !3671

; <label>:155:                                    ; preds = %158, %150
  %156 = call i32 @raxNext(%struct.raxIterator* nonnull %13) #6, !dbg !3672
  %157 = icmp eq i32 %156, 0, !dbg !3671
  br i1 %157, label %166, label %158, !dbg !3671

; <label>:158:                                    ; preds = %155
  %159 = load %struct.streamNACK*, %struct.streamNACK** %120, align 8, !dbg !3673, !tbaa !3621
  %160 = load i8*, i8** %113, align 8, !dbg !3675, !tbaa !3643
  %161 = load i64, i64* %114, align 8, !dbg !3677, !tbaa !3645
  %162 = load i8*, i8** %121, align 8, !dbg !3678, !tbaa !3643
  %163 = call i32 @rioWriteStreamPendingEntry(%struct._rio* %0, %struct.redisObject* %1, i8* %160, i64 %161, %struct.streamConsumer* %151, i8* %162, %struct.streamNACK* %159) #9, !dbg !3679
  %164 = icmp eq i32 %163, 0, !dbg !3680
  br i1 %164, label %165, label %155, !llvm.loop !3681

; <label>:165:                                    ; preds = %158
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3683
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3684
  br label %172

; <label>:166:                                    ; preds = %155
  call void @raxStop(%struct.raxIterator* nonnull %13) #6, !dbg !3685
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %118) #7, !dbg !3683
  %167 = call i32 @raxNext(%struct.raxIterator* nonnull %12) #6, !dbg !3661
  %168 = icmp eq i32 %167, 0, !dbg !3662
  br i1 %168, label %169, label %150, !dbg !3662

; <label>:169:                                    ; preds = %166, %144
  call void @raxStop(%struct.raxIterator* nonnull %12) #6, !dbg !3686
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %115) #7, !dbg !3684
  %170 = call i32 @raxNext(%struct.raxIterator* nonnull %11) #6, !dbg !3618
  %171 = icmp eq i32 %170, 0, !dbg !3619
  br i1 %171, label %173, label %122, !dbg !3619

; <label>:172:                                    ; preds = %122, %126, %129, %132, %135, %140, %165
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3687
  br label %176

; <label>:173:                                    ; preds = %169, %105
  call void @raxStop(%struct.raxIterator* nonnull %11) #6, !dbg !3688
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %106) #7, !dbg !3687
  br label %174

; <label>:174:                                    ; preds = %173, %101
  call void @streamIteratorStop(%struct.streamIterator* nonnull %4) #6, !dbg !3689
  br label %176, !dbg !3690

; <label>:175:                                    ; preds = %53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #7, !dbg !3557
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3557
  br label %176

; <label>:176:                                    ; preds = %46, %43, %40, %34, %58, %172, %97, %94, %91, %88, %85, %82, %78, %75, %72, %69, %66, %63, %175, %174
  %177 = phi i32 [ 1, %174 ], [ 0, %175 ], [ 0, %63 ], [ 0, %66 ], [ 0, %69 ], [ 0, %72 ], [ 0, %75 ], [ 0, %78 ], [ 0, %82 ], [ 0, %85 ], [ 0, %88 ], [ 0, %91 ], [ 0, %94 ], [ 0, %97 ], [ 0, %172 ], [ 0, %58 ], [ 0, %34 ], [ 0, %40 ], [ 0, %43 ], [ 0, %46 ], !dbg !3691
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %17) #7, !dbg !3692
  ret i32 %177, !dbg !3692
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
define dso_local i32 @rewriteModuleObject(%struct._rio*, %struct.redisObject*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3693 {
  %4 = alloca %struct.RedisModuleIO, align 8
  %5 = bitcast %struct.RedisModuleIO* %4 to i8*, !dbg !3782
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3782
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !3783
  %7 = bitcast i8** %6 to %struct.moduleValue**, !dbg !3783
  %8 = load %struct.moduleValue*, %struct.moduleValue** %7, align 8, !dbg !3783, !tbaa !1192
  %9 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 0, !dbg !3785
  %10 = load %struct.RedisModuleType*, %struct.RedisModuleType** %9, align 8, !dbg !3785, !tbaa !3786
  %11 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 1, !dbg !3789
  store %struct._rio* %0, %struct._rio** %11, align 8, !dbg !3789, !tbaa !3791
  %12 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 2, !dbg !3789
  store %struct.RedisModuleType* %10, %struct.RedisModuleType** %12, align 8, !dbg !3789, !tbaa !3793
  %13 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 0, !dbg !3789
  store i64 0, i64* %13, align 8, !dbg !3789, !tbaa !3794
  %14 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 3, !dbg !3789
  store i32 0, i32* %14, align 8, !dbg !3789, !tbaa !3795
  %15 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 4, !dbg !3789
  store i32 0, i32* %15, align 4, !dbg !3789, !tbaa !3796
  %16 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 6, !dbg !3789
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !3789, !tbaa !3797
  %17 = getelementptr inbounds %struct.RedisModuleIO, %struct.RedisModuleIO* %4, i64 0, i32 5, !dbg !3789
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %17, align 8, !dbg !3789, !tbaa !3798
  %18 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %10, i64 0, i32 4, !dbg !3799
  %19 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %18, align 8, !dbg !3799, !tbaa !3800
  %20 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %8, i64 0, i32 1, !dbg !3802
  %21 = load i8*, i8** %20, align 8, !dbg !3802, !tbaa !3803
  call void %19(%struct.RedisModuleIO* nonnull %4, %struct.redisObject* %1, i8* %21) #6, !dbg !3805
  %22 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %17, align 8, !dbg !3806, !tbaa !3798
  %23 = icmp eq %struct.RedisModuleCtx* %22, null, !dbg !3808
  br i1 %23, label %27, label %24, !dbg !3809

; <label>:24:                                     ; preds = %3
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %22) #6, !dbg !3810
  %25 = bitcast %struct.RedisModuleCtx** %17 to i8**, !dbg !3812
  %26 = load i8*, i8** %25, align 8, !dbg !3812, !tbaa !3798
  call void @zfree(i8* %26) #6, !dbg !3813
  br label %27, !dbg !3814

; <label>:27:                                     ; preds = %3, %24
  %28 = load i32, i32* %14, align 8, !dbg !3815, !tbaa !3795
  %29 = icmp eq i32 %28, 0, !dbg !3816
  %30 = zext i1 %29 to i32, !dbg !3816
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !3817
  ret i32 %30, !dbg !3818
}

; Function Attrs: noredzone
declare dso_local void @moduleFreeContext(%struct.RedisModuleCtx*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @aofReadDiffFromParent() local_unnamed_addr #0 !dbg !3819 {
  %1 = alloca [65536 x i8], align 16
  %2 = getelementptr inbounds [65536 x i8], [65536 x i8]* %1, i64 0, i64 0, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !3829
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3832, !tbaa !937
  %4 = call i64 @read(i32 %3, i8* nonnull %2, i64 65536) #6, !dbg !3833
  %5 = icmp sgt i64 %4, 0, !dbg !3835
  br i1 %5, label %6, label %15, !dbg !3836

; <label>:6:                                      ; preds = %0, %6
  %7 = phi i64 [ %13, %6 ], [ %4, %0 ]
  %8 = phi i64 [ %11, %6 ], [ 0, %0 ]
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !3837, !tbaa !3839
  %10 = call i8* @sdscatlen(i8* %9, i8* nonnull %2, i64 %7) #6, !dbg !3840
  store i8* %10, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !3841, !tbaa !3839
  %11 = add nsw i64 %7, %8, !dbg !3842
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !3832, !tbaa !937
  %13 = call i64 @read(i32 %12, i8* nonnull %2, i64 65536) #6, !dbg !3833
  %14 = icmp sgt i64 %13, 0, !dbg !3835
  br i1 %14, label %6, label %15, !dbg !3836, !llvm.loop !3843

; <label>:15:                                     ; preds = %6, %0
  %16 = phi i64 [ 0, %0 ], [ %11, %6 ], !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %2) #7, !dbg !3846
  ret i64 %16, !dbg !3847
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFileRio(%struct._rio*) local_unnamed_addr #0 !dbg !3848 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct.RedisModuleIO, align 8
  %4 = alloca [17 x i8], align 16
  %5 = alloca %struct.redisObject, align 8
  %6 = alloca [14 x i8], align 1
  %7 = alloca [20 x i8], align 16
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3889, !tbaa !3890
  %9 = icmp sgt i32 %8, 0, !dbg !3891
  br i1 %9, label %10, label %216, !dbg !3892

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
  br label %33, !dbg !3892

; <label>:33:                                     ; preds = %10, %207
  %34 = phi i32 [ %8, %10 ], [ %208, %207 ]
  %35 = phi i64 [ 0, %10 ], [ %210, %207 ]
  %36 = phi i64 [ 0, %10 ], [ %209, %207 ]
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %11) #7, !dbg !3893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %11, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @rewriteAppendOnlyFileRio.selectcmd, i64 0, i64 0), i64 17, i1 false), !dbg !3894
  %37 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3895, !tbaa !3896
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 %35, !dbg !3897
  %39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 0, i32 0, !dbg !3899
  %40 = load %struct.dict*, %struct.dict** %39, align 8, !dbg !3899, !tbaa !3900
  %41 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 0, i32 3, !dbg !3903
  %42 = load i64, i64* %41, align 8, !dbg !3903, !tbaa !3905
  %43 = getelementptr inbounds %struct.dict, %struct.dict* %40, i64 0, i32 2, i64 1, i32 3, !dbg !3903
  %44 = load i64, i64* %43, align 8, !dbg !3903, !tbaa !3905
  %45 = sub i64 0, %44, !dbg !3907
  %46 = icmp eq i64 %42, %45, !dbg !3907
  br i1 %46, label %207, label %47, !dbg !3908

; <label>:47:                                     ; preds = %33
  %48 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %40) #6, !dbg !3909
  br label %49, !dbg !3924

; <label>:49:                                     ; preds = %64, %47
  %50 = phi i64 [ 16, %47 ], [ %66, %64 ]
  %51 = phi i8* [ %11, %47 ], [ %65, %64 ]
  %52 = load i64, i64* %12, align 8, !dbg !3925, !tbaa !3926
  %53 = icmp ne i64 %52, 0, !dbg !3928
  %54 = icmp ult i64 %52, %50, !dbg !3929
  %55 = and i1 %53, %54, !dbg !3930
  %56 = select i1 %55, i64 %52, i64 %50, !dbg !3930
  %57 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !3932, !tbaa !3934
  %58 = icmp eq void (%struct._rio*, i8*, i64)* %57, null, !dbg !3935
  br i1 %58, label %60, label %59, !dbg !3936

; <label>:59:                                     ; preds = %49
  call void %57(%struct._rio* nonnull %0, i8* %51, i64 %56) #6, !dbg !3937
  br label %60, !dbg !3937

; <label>:60:                                     ; preds = %59, %49
  %61 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !3938, !tbaa !3940
  %62 = call i64 %61(%struct._rio* nonnull %0, i8* %51, i64 %56) #6, !dbg !3941
  %63 = icmp eq i64 %62, 0, !dbg !3942
  br i1 %63, label %213, label %64, !dbg !3943

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %51, i64 %56, !dbg !3944
  %66 = sub i64 %50, %56, !dbg !3945
  %67 = load i64, i64* %15, align 8, !dbg !3946, !tbaa !3947
  %68 = add i64 %67, %56, !dbg !3946
  store i64 %68, i64* %15, align 8, !dbg !3946, !tbaa !3947
  %69 = icmp eq i64 %66, 0, !dbg !3924
  br i1 %69, label %70, label %49, !dbg !3924

; <label>:70:                                     ; preds = %64
  %71 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %35) #6, !dbg !3948
  %72 = icmp eq i64 %71, 0, !dbg !3950
  br i1 %72, label %213, label %73, !dbg !3951

; <label>:73:                                     ; preds = %70
  %74 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %48) #6, !dbg !3952
  %75 = icmp eq %struct.dictEntry* %74, null, !dbg !3954
  br i1 %75, label %204, label %76, !dbg !3955

; <label>:76:                                     ; preds = %73, %200
  %77 = phi %struct.dictEntry* [ %202, %200 ], [ %74, %73 ]
  %78 = phi i64 [ %201, %200 ], [ %36, %73 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !3956
  %79 = bitcast %struct.dictEntry* %77 to i64*, !dbg !3957
  %80 = load i64, i64* %79, align 8, !dbg !3957, !tbaa !2817
  %81 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %77, i64 0, i32 1, i32 0, !dbg !3959
  %82 = bitcast i8** %81 to %struct.redisObject**, !dbg !3959
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !3959, !tbaa !475
  store i32 1, i32* %17, align 4, !dbg !3961, !tbaa !3963
  store i32 0, i32* %18, align 8, !dbg !3961
  store i64 %80, i64* %20, align 8, !dbg !3961, !tbaa !1192
  %84 = call i64 @getExpire(%struct.redisDb* %38, %struct.redisObject* nonnull %5) #6, !dbg !3965
  %85 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 0, !dbg !3967
  %86 = load i32, i32* %85, align 8, !dbg !3967
  %87 = trunc i32 %86 to i4, !dbg !3968
  switch i4 %87, label %150 [
    i4 0, label %88
    i4 1, label %118
    i4 2, label %121
    i4 3, label %124
    i4 4, label %127
    i4 6, label %130
    i4 5, label %133
  ], !dbg !3968

; <label>:88:                                     ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 14, i8* nonnull %21) #7, !dbg !3969
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %21, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @rewriteAppendOnlyFileRio.cmd, i64 0, i64 0), i64 14, i1 false), !dbg !3970
  br label %89, !dbg !3976

; <label>:89:                                     ; preds = %104, %88
  %90 = phi i64 [ 13, %88 ], [ %106, %104 ]
  %91 = phi i8* [ %21, %88 ], [ %105, %104 ]
  %92 = load i64, i64* %12, align 8, !dbg !3977, !tbaa !3926
  %93 = icmp ne i64 %92, 0, !dbg !3978
  %94 = icmp ult i64 %92, %90, !dbg !3979
  %95 = and i1 %93, %94, !dbg !3980
  %96 = select i1 %95, i64 %92, i64 %90, !dbg !3980
  %97 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !3982, !tbaa !3934
  %98 = icmp eq void (%struct._rio*, i8*, i64)* %97, null, !dbg !3983
  br i1 %98, label %100, label %99, !dbg !3984

; <label>:99:                                     ; preds = %89
  call void %97(%struct._rio* nonnull %0, i8* %91, i64 %96) #6, !dbg !3985
  br label %100, !dbg !3985

; <label>:100:                                    ; preds = %99, %89
  %101 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !3986, !tbaa !3940
  %102 = call i64 %101(%struct._rio* nonnull %0, i8* %91, i64 %96) #6, !dbg !3987
  %103 = icmp eq i64 %102, 0, !dbg !3988
  br i1 %103, label %116, label %104, !dbg !3989

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds i8, i8* %91, i64 %96, !dbg !3990
  %106 = sub i64 %90, %96, !dbg !3991
  %107 = load i64, i64* %15, align 8, !dbg !3992, !tbaa !3947
  %108 = add i64 %107, %96, !dbg !3992
  store i64 %108, i64* %15, align 8, !dbg !3992, !tbaa !3947
  %109 = icmp eq i64 %106, 0, !dbg !3976
  br i1 %109, label %110, label %89, !dbg !3976

; <label>:110:                                    ; preds = %104
  %111 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !3993
  %112 = icmp eq i32 %111, 0, !dbg !3995
  br i1 %112, label %116, label %113, !dbg !3996

; <label>:113:                                    ; preds = %110
  %114 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* %83) #9, !dbg !3997
  %115 = icmp eq i32 %114, 0, !dbg !3999
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %110, %113, %100
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4000
  br label %199

; <label>:117:                                    ; preds = %113
  call void @llvm.lifetime.end.p0i8(i64 14, i8* nonnull %21) #7, !dbg !4000
  br label %151

; <label>:118:                                    ; preds = %76
  %119 = call i32 @rewriteListObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %83) #9, !dbg !4001
  %120 = icmp eq i32 %119, 0, !dbg !4005
  br i1 %120, label %199, label %151, !dbg !4006

; <label>:121:                                    ; preds = %76
  %122 = call i32 @rewriteSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %83) #9, !dbg !4007
  %123 = icmp eq i32 %122, 0, !dbg !4011
  br i1 %123, label %199, label %151, !dbg !4012

; <label>:124:                                    ; preds = %76
  %125 = call i32 @rewriteSortedSetObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %83) #9, !dbg !4013
  %126 = icmp eq i32 %125, 0, !dbg !4017
  br i1 %126, label %199, label %151, !dbg !4018

; <label>:127:                                    ; preds = %76
  %128 = call i32 @rewriteHashObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %83) #9, !dbg !4019
  %129 = icmp eq i32 %128, 0, !dbg !4023
  br i1 %129, label %199, label %151, !dbg !4024

; <label>:130:                                    ; preds = %76
  %131 = call i32 @rewriteStreamObject(%struct._rio* %0, %struct.redisObject* nonnull %5, %struct.redisObject* %83) #9, !dbg !4025
  %132 = icmp eq i32 %131, 0, !dbg !4029
  br i1 %132, label %199, label %151, !dbg !4030

; <label>:133:                                    ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %22) #7, !dbg !4038
  %134 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !4039
  %135 = bitcast i8** %134 to %struct.moduleValue**, !dbg !4039
  %136 = load %struct.moduleValue*, %struct.moduleValue** %135, align 8, !dbg !4039, !tbaa !1192
  %137 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %136, i64 0, i32 0, !dbg !4041
  %138 = load %struct.RedisModuleType*, %struct.RedisModuleType** %137, align 8, !dbg !4041, !tbaa !3786
  store %struct._rio* %0, %struct._rio** %23, align 8, !dbg !4043, !tbaa !3791
  store %struct.RedisModuleType* %138, %struct.RedisModuleType** %24, align 8, !dbg !4043, !tbaa !3793
  store i64 0, i64* %25, align 8, !dbg !4043, !tbaa !3794
  store i32 0, i32* %26, align 8, !dbg !4043, !tbaa !3795
  store i32 0, i32* %27, align 4, !dbg !4043, !tbaa !3796
  store %struct.redisObject* %5, %struct.redisObject** %28, align 8, !dbg !4043, !tbaa !3797
  store %struct.RedisModuleCtx* null, %struct.RedisModuleCtx** %29, align 8, !dbg !4043, !tbaa !3798
  %139 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %138, i64 0, i32 4, !dbg !4044
  %140 = load void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)** %139, align 8, !dbg !4044, !tbaa !3800
  %141 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %136, i64 0, i32 1, !dbg !4045
  %142 = load i8*, i8** %141, align 8, !dbg !4045, !tbaa !3803
  call void %140(%struct.RedisModuleIO* nonnull %3, %struct.redisObject* nonnull %5, i8* %142) #6, !dbg !4047
  %143 = load %struct.RedisModuleCtx*, %struct.RedisModuleCtx** %29, align 8, !dbg !4048, !tbaa !3798
  %144 = icmp eq %struct.RedisModuleCtx* %143, null, !dbg !4049
  br i1 %144, label %147, label %145, !dbg !4050

; <label>:145:                                    ; preds = %133
  call void @moduleFreeContext(%struct.RedisModuleCtx* nonnull %143) #6, !dbg !4051
  %146 = load i8*, i8** %31, align 8, !dbg !4052, !tbaa !3798
  call void @zfree(i8* %146) #6, !dbg !4053
  br label %147, !dbg !4054

; <label>:147:                                    ; preds = %133, %145
  %148 = load i32, i32* %26, align 8, !dbg !4055, !tbaa !3795
  %149 = icmp eq i32 %148, 0, !dbg !4056
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %22) #7, !dbg !4057
  br i1 %149, label %151, label %199, !dbg !4058

; <label>:150:                                    ; preds = %76
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 1339, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !4059
  call void @_exit(i32 1) #8, !dbg !4059
  unreachable, !dbg !4059

; <label>:151:                                    ; preds = %147, %117, %118, %124, %130, %127, %121
  %152 = icmp eq i64 %84, -1, !dbg !4061
  br i1 %152, label %183, label %153, !dbg !4062

; <label>:153:                                    ; preds = %151
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %30, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @rewriteAppendOnlyFileRio.cmd.74, i64 0, i64 0), i64 20, i1 false), !dbg !4064
  br label %154, !dbg !4070

; <label>:154:                                    ; preds = %169, %153
  %155 = phi i64 [ 19, %153 ], [ %171, %169 ]
  %156 = phi i8* [ %30, %153 ], [ %170, %169 ]
  %157 = load i64, i64* %12, align 8, !dbg !4071, !tbaa !3926
  %158 = icmp ne i64 %157, 0, !dbg !4072
  %159 = icmp ult i64 %157, %155, !dbg !4073
  %160 = and i1 %158, %159, !dbg !4074
  %161 = select i1 %160, i64 %157, i64 %155, !dbg !4074
  %162 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %13, align 8, !dbg !4076, !tbaa !3934
  %163 = icmp eq void (%struct._rio*, i8*, i64)* %162, null, !dbg !4077
  br i1 %163, label %165, label %164, !dbg !4078

; <label>:164:                                    ; preds = %154
  call void %162(%struct._rio* nonnull %0, i8* %156, i64 %161) #6, !dbg !4079
  br label %165, !dbg !4079

; <label>:165:                                    ; preds = %164, %154
  %166 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %14, align 8, !dbg !4080, !tbaa !3940
  %167 = call i64 %166(%struct._rio* nonnull %0, i8* %156, i64 %161) #6, !dbg !4081
  %168 = icmp eq i64 %167, 0, !dbg !4082
  br i1 %168, label %181, label %169, !dbg !4083

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds i8, i8* %156, i64 %161, !dbg !4084
  %171 = sub i64 %155, %161, !dbg !4085
  %172 = load i64, i64* %15, align 8, !dbg !4086, !tbaa !3947
  %173 = add i64 %172, %161, !dbg !4086
  store i64 %173, i64* %15, align 8, !dbg !4086, !tbaa !3947
  %174 = icmp eq i64 %171, 0, !dbg !4070
  br i1 %174, label %175, label %154, !dbg !4070

; <label>:175:                                    ; preds = %169
  %176 = call i32 @rioWriteBulkObject(%struct._rio* nonnull %0, %struct.redisObject* nonnull %5) #9, !dbg !4087
  %177 = icmp eq i32 %176, 0, !dbg !4089
  br i1 %177, label %181, label %178, !dbg !4090

; <label>:178:                                    ; preds = %175
  %179 = call i64 @rioWriteBulkLongLong(%struct._rio* nonnull %0, i64 %84) #6, !dbg !4091
  %180 = icmp eq i64 %179, 0, !dbg !4093
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %175, %178, %165
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4094
  br label %199

; <label>:182:                                    ; preds = %178
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %30) #7, !dbg !4094
  br label %183

; <label>:183:                                    ; preds = %182, %151
  %184 = load i64, i64* %15, align 8, !dbg !4095, !tbaa !3947
  %185 = add i64 %78, 10240, !dbg !4096
  %186 = icmp ugt i64 %184, %185, !dbg !4097
  br i1 %186, label %187, label %200, !dbg !4098

; <label>:187:                                    ; preds = %183
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %32) #7, !dbg !4099
  %188 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4101, !tbaa !937
  %189 = call i64 @read(i32 %188, i8* nonnull %32, i64 65536) #6, !dbg !4102
  %190 = icmp sgt i64 %189, 0, !dbg !4104
  br i1 %190, label %191, label %198, !dbg !4105

; <label>:191:                                    ; preds = %187, %191
  %192 = phi i64 [ %196, %191 ], [ %189, %187 ]
  %193 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4106, !tbaa !3839
  %194 = call i8* @sdscatlen(i8* %193, i8* nonnull %32, i64 %192) #6, !dbg !4107
  store i8* %194, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4108, !tbaa !3839
  %195 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4101, !tbaa !937
  %196 = call i64 @read(i32 %195, i8* nonnull %32, i64 65536) #6, !dbg !4102
  %197 = icmp sgt i64 %196, 0, !dbg !4104
  br i1 %197, label %191, label %198, !dbg !4105, !llvm.loop !3843

; <label>:198:                                    ; preds = %191, %187
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %32) #7, !dbg !4109
  br label %200, !dbg !4110

; <label>:199:                                    ; preds = %147, %118, %121, %124, %127, %130, %116, %181
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4111
  br label %213

; <label>:200:                                    ; preds = %183, %198
  %201 = phi i64 [ %184, %198 ], [ %78, %183 ], !dbg !4112
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !4111
  %202 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %48) #6, !dbg !3952
  %203 = icmp eq %struct.dictEntry* %202, null, !dbg !3954
  br i1 %203, label %204, label %76, !dbg !3955

; <label>:204:                                    ; preds = %200, %73
  %205 = phi i64 [ %36, %73 ], [ %201, %200 ], !dbg !4113
  call void @dictReleaseIterator(%struct.dictIterator* %48) #6, !dbg !4114
  %206 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3889, !tbaa !3890
  br label %207, !dbg !4115

; <label>:207:                                    ; preds = %204, %33
  %208 = phi i32 [ %206, %204 ], [ %34, %33 ], !dbg !3889
  %209 = phi i64 [ %205, %204 ], [ %36, %33 ], !dbg !4112
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4115
  %210 = add nuw nsw i64 %35, 1, !dbg !4116
  %211 = sext i32 %208 to i64, !dbg !3891
  %212 = icmp slt i64 %210, %211, !dbg !3891
  br i1 %212, label %33, label %216, !dbg !3892, !llvm.loop !4117

; <label>:213:                                    ; preds = %70, %60, %199
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %11) #7, !dbg !4115
  %214 = icmp eq %struct.dictIterator* %48, null, !dbg !4119
  br i1 %214, label %216, label %215, !dbg !4121

; <label>:215:                                    ; preds = %213
  call void @dictReleaseIterator(%struct.dictIterator* nonnull %48) #6, !dbg !4122
  br label %216, !dbg !4122

; <label>:216:                                    ; preds = %207, %1, %215, %213
  %217 = phi i32 [ -1, %213 ], [ -1, %215 ], [ 0, %1 ], [ 0, %207 ]
  ret i32 %217, !dbg !4123
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @rewriteAppendOnlyFile(i8*) local_unnamed_addr #0 !dbg !4124 {
  %2 = alloca [65536 x i8], align 16
  %3 = alloca %struct._rio, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = bitcast %struct._rio* %3 to i8*, !dbg !4142
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4142
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !4143
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4143
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4146
  %9 = tail call i32 @getpid() #6, !dbg !4147
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i32 %9) #6, !dbg !4148
  %11 = call %struct.__sFILE* @fopen(i8* nonnull %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #6, !dbg !4149
  %12 = icmp eq %struct.__sFILE* %11, null, !dbg !4151
  br i1 %12, label %13, label %17, !dbg !4153

; <label>:13:                                     ; preds = %1
  %14 = call i32* @__errno() #6, !dbg !4154
  %15 = load i32, i32* %14, align 4, !dbg !4154, !tbaa !422
  %16 = call i8* @strerror(i32 %15) #6, !dbg !4156
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i64 0, i64 0), i8* %16) #6, !dbg !4157
  br label %212, !dbg !4158

; <label>:17:                                     ; preds = %1
  %18 = call i8* @sdsempty() #6, !dbg !4159
  store i8* %18, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4160, !tbaa !3839
  call void @rioInitWithFile(%struct._rio* nonnull %3, %struct.__sFILE* nonnull %11) #6, !dbg !4162
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 138), align 8, !dbg !4163, !tbaa !4165
  %20 = icmp eq i32 %19, 0, !dbg !4166
  br i1 %20, label %22, label %21, !dbg !4167

; <label>:21:                                     ; preds = %17
  call void @rioSetAutoSync(%struct._rio* nonnull %3, i64 33554432) #6, !dbg !4168
  br label %22, !dbg !4168

; <label>:22:                                     ; preds = %17, %21
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 143), align 4, !dbg !4169, !tbaa !4170
  %24 = icmp eq i32 %23, 0, !dbg !4171
  br i1 %24, label %33, label %25, !dbg !4172

; <label>:25:                                     ; preds = %22
  %26 = bitcast i32* %6 to i8*, !dbg !4173
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4173
  %27 = call i32 @rdbSaveRio(%struct._rio* nonnull %3, i32* nonnull %6, i32 1, %struct.rdbSaveInfo* null) #6, !dbg !4175
  %28 = icmp eq i32 %27, -1, !dbg !4177
  br i1 %28, label %30, label %29, !dbg !4178

; <label>:29:                                     ; preds = %25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4179
  br label %36

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %6, align 4, !dbg !4180, !tbaa !422
  %32 = call i32* @__errno() #6, !dbg !4182
  store i32 %31, i32* %32, align 4, !dbg !4183, !tbaa !422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #7, !dbg !4179
  br label %206

; <label>:33:                                     ; preds = %22
  %34 = call i32 @rewriteAppendOnlyFileRio(%struct._rio* nonnull %3) #9, !dbg !4184
  %35 = icmp eq i32 %34, -1, !dbg !4187
  br i1 %35, label %206, label %36, !dbg !4188

; <label>:36:                                     ; preds = %29, %33
  %37 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4189
  %38 = icmp eq i32 %37, -1, !dbg !4191
  br i1 %38, label %206, label %39, !dbg !4192

; <label>:39:                                     ; preds = %36
  %40 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4193
  %41 = call i32 @fsync(i32 %40) #6, !dbg !4195
  %42 = icmp eq i32 %41, -1, !dbg !4196
  br i1 %42, label %206, label %43, !dbg !4197

; <label>:43:                                     ; preds = %39
  %44 = call i64 @mstime() #6, !dbg !4199
  %45 = call i64 @mstime() #6, !dbg !4201
  %46 = sub nsw i64 %45, %44, !dbg !4202
  %47 = icmp slt i64 %46, 1000, !dbg !4203
  br i1 %47, label %48, label %76, !dbg !4204

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0
  br label %50, !dbg !4204

; <label>:50:                                     ; preds = %48, %57
  %51 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4205, !tbaa !937
  %53 = call i32 @aeWait(i32 %52, i32 1, i64 1) #6, !dbg !4207
  %54 = icmp slt i32 %53, 1, !dbg !4208
  br i1 %54, label %55, label %64, !dbg !4209

; <label>:55:                                     ; preds = %50
  %56 = add nsw i32 %51, 1, !dbg !4210
  br label %57, !dbg !4212

; <label>:57:                                     ; preds = %55, %75
  %58 = phi i32 [ %56, %55 ], [ 0, %75 ]
  %59 = call i64 @mstime() #6, !dbg !4201
  %60 = sub nsw i64 %59, %44, !dbg !4202
  %61 = icmp slt i64 %60, 1000, !dbg !4203
  %62 = icmp slt i32 %58, 20, !dbg !4213
  %63 = and i1 %62, %61, !dbg !4214
  br i1 %63, label %50, label %76, !dbg !4204, !llvm.loop !4215

; <label>:64:                                     ; preds = %50
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4217
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4219, !tbaa !937
  %66 = call i64 @read(i32 %65, i8* nonnull %49, i64 65536) #6, !dbg !4220
  %67 = icmp sgt i64 %66, 0, !dbg !4222
  br i1 %67, label %68, label %75, !dbg !4223

; <label>:68:                                     ; preds = %64, %68
  %69 = phi i64 [ %73, %68 ], [ %66, %64 ]
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4224, !tbaa !3839
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %49, i64 %69) #6, !dbg !4225
  store i8* %71, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4226, !tbaa !3839
  %72 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4219, !tbaa !937
  %73 = call i64 @read(i32 %72, i8* nonnull %49, i64 65536) #6, !dbg !4220
  %74 = icmp sgt i64 %73, 0, !dbg !4222
  br i1 %74, label %68, label %75, !dbg !4223, !llvm.loop !3843

; <label>:75:                                     ; preds = %68, %64
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %49) #7, !dbg !4227
  br label %57, !dbg !4204

; <label>:76:                                     ; preds = %57, %43
  %77 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4228, !tbaa !940
  %78 = call i64 @write(i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4230
  %79 = icmp eq i64 %78, 1, !dbg !4231
  br i1 %79, label %80, label %206, !dbg !4232

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4233, !tbaa !948
  %82 = call i32 @anetNonBlock(i8* null, i32 %81) #6, !dbg !4235
  %83 = icmp eq i32 %82, 0, !dbg !4236
  br i1 %83, label %84, label %206, !dbg !4237

; <label>:84:                                     ; preds = %80
  %85 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4238, !tbaa !948
  %86 = call i64 @syncRead(i32 %85, i8* nonnull %5, i64 1, i64 5000) #6, !dbg !4240
  %87 = icmp eq i64 %86, 1, !dbg !4241
  %88 = load i8, i8* %5, align 1, !dbg !4242
  %89 = icmp eq i8 %88, 33, !dbg !4243
  %90 = and i1 %87, %89, !dbg !4244
  br i1 %90, label %91, label %206, !dbg !4244

; <label>:91:                                     ; preds = %84
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !4245
  %92 = getelementptr inbounds [65536 x i8], [65536 x i8]* %2, i64 0, i64 0, !dbg !4246
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4246
  %93 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4248, !tbaa !937
  %94 = call i64 @read(i32 %93, i8* nonnull %92, i64 65536) #6, !dbg !4249
  %95 = icmp sgt i64 %94, 0, !dbg !4251
  br i1 %95, label %96, label %103, !dbg !4252

; <label>:96:                                     ; preds = %91, %96
  %97 = phi i64 [ %101, %96 ], [ %94, %91 ]
  %98 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4253, !tbaa !3839
  %99 = call i8* @sdscatlen(i8* %98, i8* nonnull %92, i64 %97) #6, !dbg !4254
  store i8* %99, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4255, !tbaa !3839
  %100 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4248, !tbaa !937
  %101 = call i64 @read(i32 %100, i8* nonnull %92, i64 65536) #6, !dbg !4249
  %102 = icmp sgt i64 %101, 0, !dbg !4251
  br i1 %102, label %96, label %103, !dbg !4252, !llvm.loop !3843

; <label>:103:                                    ; preds = %96, %91
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %92) #7, !dbg !4256
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4257, !tbaa !3839
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !4260
  %106 = load i8, i8* %105, align 1, !dbg !4260, !tbaa !475
  %107 = trunc i8 %106 to i3, !dbg !4262
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !4262

; <label>:108:                                    ; preds = %103
  %109 = lshr i8 %106, 3, !dbg !4263
  %110 = zext i8 %109 to i64, !dbg !4263
  br label %129, !dbg !4264

; <label>:111:                                    ; preds = %103
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !4265
  %113 = load i8, i8* %112, align 1, !dbg !4266, !tbaa !475
  %114 = zext i8 %113 to i64, !dbg !4265
  br label %129, !dbg !4267

; <label>:115:                                    ; preds = %103
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !4268
  %117 = bitcast i8* %116 to i16*, !dbg !4269
  %118 = load i16, i16* %117, align 1, !dbg !4269, !tbaa !492
  %119 = zext i16 %118 to i64, !dbg !4268
  br label %129, !dbg !4270

; <label>:120:                                    ; preds = %103
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !4271
  %122 = bitcast i8* %121 to i32*, !dbg !4272
  %123 = load i32, i32* %122, align 1, !dbg !4272, !tbaa !422
  %124 = zext i32 %123 to i64, !dbg !4271
  br label %129, !dbg !4273

; <label>:125:                                    ; preds = %103
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !4274
  %127 = bitcast i8* %126 to i64*, !dbg !4275
  %128 = load i64, i64* %127, align 1, !dbg !4275, !tbaa !337
  br label %129, !dbg !4276

; <label>:129:                                    ; preds = %103, %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], [ 0, %103 ], !dbg !4277
  %131 = uitofp i64 %130 to double, !dbg !4278
  %132 = fmul double %131, 0x3EB0000000000000, !dbg !4279
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), double %132) #6, !dbg !4280
  %133 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 151), align 8, !dbg !4281, !tbaa !3839
  %134 = getelementptr inbounds i8, i8* %133, i64 -1, !dbg !4285
  %135 = load i8, i8* %134, align 1, !dbg !4285, !tbaa !475
  %136 = trunc i8 %135 to i3, !dbg !4287
  switch i3 %136, label %187 [
    i3 0, label %137
    i3 1, label %140
    i3 2, label %144
    i3 3, label %149
    i3 -4, label %154
  ], !dbg !4287

; <label>:137:                                    ; preds = %129
  %138 = lshr i8 %135, 3, !dbg !4288
  %139 = zext i8 %138 to i64, !dbg !4288
  br label %158, !dbg !4289

; <label>:140:                                    ; preds = %129
  %141 = getelementptr inbounds i8, i8* %133, i64 -3, !dbg !4290
  %142 = load i8, i8* %141, align 1, !dbg !4291, !tbaa !475
  %143 = zext i8 %142 to i64, !dbg !4290
  br label %158, !dbg !4292

; <label>:144:                                    ; preds = %129
  %145 = getelementptr inbounds i8, i8* %133, i64 -5, !dbg !4293
  %146 = bitcast i8* %145 to i16*, !dbg !4294
  %147 = load i16, i16* %146, align 1, !dbg !4294, !tbaa !492
  %148 = zext i16 %147 to i64, !dbg !4293
  br label %158, !dbg !4295

; <label>:149:                                    ; preds = %129
  %150 = getelementptr inbounds i8, i8* %133, i64 -9, !dbg !4296
  %151 = bitcast i8* %150 to i32*, !dbg !4297
  %152 = load i32, i32* %151, align 1, !dbg !4297, !tbaa !422
  %153 = zext i32 %152 to i64, !dbg !4296
  br label %158, !dbg !4298

; <label>:154:                                    ; preds = %129
  %155 = getelementptr inbounds i8, i8* %133, i64 -17, !dbg !4299
  %156 = bitcast i8* %155 to i64*, !dbg !4300
  %157 = load i64, i64* %156, align 1, !dbg !4300, !tbaa !337
  br label %158, !dbg !4301

; <label>:158:                                    ; preds = %137, %140, %144, %149, %154
  %159 = phi i64 [ %157, %154 ], [ %153, %149 ], [ %148, %144 ], [ %143, %140 ], [ %139, %137 ], !dbg !4302
  %160 = icmp eq i64 %159, 0, !dbg !4307
  br i1 %160, label %187, label %161, !dbg !4307

; <label>:161:                                    ; preds = %158
  %162 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 7
  %163 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 4
  %164 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 1
  %165 = getelementptr inbounds %struct._rio, %struct._rio* %3, i64 0, i32 6
  br label %166, !dbg !4307

; <label>:166:                                    ; preds = %181, %161
  %167 = phi i64 [ %159, %161 ], [ %183, %181 ]
  %168 = phi i8* [ %133, %161 ], [ %182, %181 ]
  %169 = load i64, i64* %162, align 8, !dbg !4308, !tbaa !3926
  %170 = icmp ne i64 %169, 0, !dbg !4309
  %171 = icmp ult i64 %169, %167, !dbg !4310
  %172 = and i1 %170, %171, !dbg !4311
  %173 = select i1 %172, i64 %169, i64 %167, !dbg !4311
  %174 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %163, align 8, !dbg !4313, !tbaa !3934
  %175 = icmp eq void (%struct._rio*, i8*, i64)* %174, null, !dbg !4314
  br i1 %175, label %177, label %176, !dbg !4315

; <label>:176:                                    ; preds = %166
  call void %174(%struct._rio* nonnull %3, i8* %168, i64 %173) #6, !dbg !4316
  br label %177, !dbg !4316

; <label>:177:                                    ; preds = %176, %166
  %178 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %164, align 8, !dbg !4317, !tbaa !3940
  %179 = call i64 %178(%struct._rio* nonnull %3, i8* %168, i64 %173) #6, !dbg !4318
  %180 = icmp eq i64 %179, 0, !dbg !4319
  br i1 %180, label %206, label %181, !dbg !4320

; <label>:181:                                    ; preds = %177
  %182 = getelementptr inbounds i8, i8* %168, i64 %173, !dbg !4321
  %183 = sub i64 %167, %173, !dbg !4322
  %184 = load i64, i64* %165, align 8, !dbg !4323, !tbaa !3947
  %185 = add i64 %184, %173, !dbg !4323
  store i64 %185, i64* %165, align 8, !dbg !4323, !tbaa !3947
  %186 = icmp eq i64 %183, 0, !dbg !4307
  br i1 %186, label %187, label %166, !dbg !4307

; <label>:187:                                    ; preds = %181, %129, %158
  %188 = call i32 @fflush(%struct.__sFILE* nonnull %11) #6, !dbg !4324
  %189 = icmp eq i32 %188, -1, !dbg !4326
  br i1 %189, label %206, label %190, !dbg !4327

; <label>:190:                                    ; preds = %187
  %191 = call i32 @fileno(%struct.__sFILE* nonnull %11) #6, !dbg !4328
  %192 = call i32 @fsync(i32 %191) #6, !dbg !4330
  %193 = icmp eq i32 %192, -1, !dbg !4331
  br i1 %193, label %206, label %194, !dbg !4332

; <label>:194:                                    ; preds = %190
  %195 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4333
  %196 = icmp eq i32 %195, -1, !dbg !4335
  br i1 %196, label %206, label %197, !dbg !4336

; <label>:197:                                    ; preds = %194
  %198 = call i32 @rename(i8* nonnull %8, i8* %0) #6, !dbg !4337
  %199 = icmp eq i32 %198, -1, !dbg !4339
  br i1 %199, label %200, label %205, !dbg !4340

; <label>:200:                                    ; preds = %197
  %201 = call i32* @__errno() #6, !dbg !4341
  %202 = load i32, i32* %201, align 4, !dbg !4341, !tbaa !422
  %203 = call i8* @strerror(i32 %202) #6, !dbg !4343
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.81, i64 0, i64 0), i8* %203) #6, !dbg !4344
  %204 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4345
  br label %212, !dbg !4346

; <label>:205:                                    ; preds = %197
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.82, i64 0, i64 0)) #6, !dbg !4347
  br label %212, !dbg !4348

; <label>:206:                                    ; preds = %177, %30, %84, %80, %76, %194, %190, %187, %39, %36, %33
  %207 = call i32* @__errno() #6, !dbg !4349
  %208 = load i32, i32* %207, align 4, !dbg !4349, !tbaa !422
  %209 = call i8* @strerror(i32 %208) #6, !dbg !4350
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i8* %209) #6, !dbg !4351
  %210 = call i32 @fclose(%struct.__sFILE* nonnull %11) #6, !dbg !4352
  %211 = call i32 @unlink(i8* nonnull %8) #6, !dbg !4353
  br label %212, !dbg !4354

; <label>:212:                                    ; preds = %206, %205, %200, %13
  %213 = phi i32 [ -1, %206 ], [ -1, %200 ], [ 0, %205 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4355
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !4355
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %7) #7, !dbg !4355
  ret i32 %213, !dbg !4355
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
define dso_local void @aofChildPipeReadable(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !4356 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4368
  %6 = call i64 @read(i32 %1, i8* nonnull %5, i64 1) #6, !dbg !4369
  %7 = icmp eq i64 %6, 1, !dbg !4371
  %8 = load i8, i8* %5, align 1, !dbg !4372
  %9 = icmp eq i8 %8, 33, !dbg !4373
  %10 = and i1 %7, %9, !dbg !4374
  br i1 %10, label %11, label %19, !dbg !4374

; <label>:11:                                     ; preds = %4
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !4375
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4377, !tbaa !249
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4378, !tbaa !945
  %13 = call i64 @write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 1) #6, !dbg !4380
  %14 = icmp eq i64 %13, 1, !dbg !4381
  br i1 %14, label %19, label %15, !dbg !4382

; <label>:15:                                     ; preds = %11
  %16 = call i32* @__errno() #6, !dbg !4383
  %17 = load i32, i32* %16, align 4, !dbg !4383, !tbaa !422
  %18 = call i8* @strerror(i32 %17) #6, !dbg !4385
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i64 0, i64 0), i8* %18) #6, !dbg !4386
  br label %19, !dbg !4387

; <label>:19:                                     ; preds = %11, %15, %4
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4388, !tbaa !255
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4389, !tbaa !929
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %20, i32 %21, i32 1) #6, !dbg !4390
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #7, !dbg !4391
  ret void, !dbg !4391
}

; Function Attrs: noredzone nounwind
define dso_local i32 @aofCreatePipes() local_unnamed_addr #0 !dbg !4392 {
  %1 = alloca [6 x i32], align 16
  %2 = bitcast [6 x i32]* %1 to i8*, !dbg !4399
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %2, i8* align 16 bitcast ([6 x i32]* @aofCreatePipes.fds to i8*), i64 24, i1 false), !dbg !4400
  %3 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0, !dbg !4401
  %4 = call i32 @pipe(i32* nonnull %3) #6, !dbg !4403
  %5 = icmp eq i32 %4, -1, !dbg !4404
  br i1 %5, label %35, label %6, !dbg !4405

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4406
  %8 = call i32 @pipe(i32* nonnull %7) #6, !dbg !4408
  %9 = icmp eq i32 %8, -1, !dbg !4409
  br i1 %9, label %35, label %10, !dbg !4410

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4411
  %12 = call i32 @pipe(i32* nonnull %11) #6, !dbg !4413
  %13 = icmp eq i32 %12, -1, !dbg !4414
  br i1 %13, label %35, label %14, !dbg !4415

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 16, !dbg !4416, !tbaa !422
  %16 = call i32 @anetNonBlock(i8* null, i32 %15) #6, !dbg !4418
  %17 = icmp eq i32 %16, 0, !dbg !4419
  br i1 %17, label %18, label %35, !dbg !4420

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4421
  %20 = load i32, i32* %19, align 4, !dbg !4421, !tbaa !422
  %21 = call i32 @anetNonBlock(i8* null, i32 %20) #6, !dbg !4423
  %22 = icmp eq i32 %21, 0, !dbg !4424
  br i1 %22, label %23, label %35, !dbg !4425

; <label>:23:                                     ; preds = %18
  %24 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4426, !tbaa !255
  %25 = load i32, i32* %7, align 8, !dbg !4428, !tbaa !422
  %26 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %24, i32 %25, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @aofChildPipeReadable, i8* null) #6, !dbg !4429
  %27 = icmp eq i32 %26, -1, !dbg !4430
  br i1 %27, label %35, label %28, !dbg !4431

; <label>:28:                                     ; preds = %23
  %29 = bitcast [6 x i32]* %1 to <4 x i32>*, !dbg !4432
  %30 = load <4 x i32>, <4 x i32>* %29, align 16, !dbg !4432, !tbaa !422
  %31 = shufflevector <4 x i32> %30, <4 x i32> undef, <4 x i32> <i32 1, i32 0, i32 3, i32 2>, !dbg !4432
  store <4 x i32> %31, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144) to <4 x i32>*), align 8, !dbg !4433, !tbaa !422
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4434
  %33 = load i32, i32* %32, align 4, !dbg !4434, !tbaa !422
  store i32 %33, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4435, !tbaa !945
  %34 = load i32, i32* %11, align 16, !dbg !4436, !tbaa !422
  store i32 %34, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4437, !tbaa !948
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 150), align 8, !dbg !4438, !tbaa !249
  br label %47, !dbg !4439

; <label>:35:                                     ; preds = %18, %14, %23, %10, %6, %0
  %36 = call i32* @__errno() #6, !dbg !4440
  %37 = load i32, i32* %36, align 4, !dbg !4440, !tbaa !422
  %38 = call i8* @strerror(i32 %37) #6, !dbg !4441
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i64 0, i64 0), i8* %38) #6, !dbg !4442
  %39 = load i32, i32* %3, align 16, !dbg !4444, !tbaa !422
  %40 = icmp eq i32 %39, -1, !dbg !4448
  br i1 %40, label %43, label %41, !dbg !4449

; <label>:41:                                     ; preds = %35
  %42 = call i32 @close(i32 %39) #6, !dbg !4450
  br label %43, !dbg !4450

; <label>:43:                                     ; preds = %35, %41
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 1, !dbg !4444
  %45 = load i32, i32* %44, align 4, !dbg !4444, !tbaa !422
  %46 = icmp eq i32 %45, -1, !dbg !4448
  br i1 %46, label %51, label %49, !dbg !4449

; <label>:47:                                     ; preds = %69, %73, %28
  %48 = phi i32 [ 0, %28 ], [ -1, %73 ], [ -1, %69 ], !dbg !4451
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4452
  ret i32 %48, !dbg !4452

; <label>:49:                                     ; preds = %43
  %50 = call i32 @close(i32 %45) #6, !dbg !4450
  br label %51, !dbg !4450

; <label>:51:                                     ; preds = %49, %43
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 2, !dbg !4444
  %53 = load i32, i32* %52, align 8, !dbg !4444, !tbaa !422
  %54 = icmp eq i32 %53, -1, !dbg !4448
  br i1 %54, label %57, label %55, !dbg !4449

; <label>:55:                                     ; preds = %51
  %56 = call i32 @close(i32 %53) #6, !dbg !4450
  br label %57, !dbg !4450

; <label>:57:                                     ; preds = %55, %51
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 3, !dbg !4444
  %59 = load i32, i32* %58, align 4, !dbg !4444, !tbaa !422
  %60 = icmp eq i32 %59, -1, !dbg !4448
  br i1 %60, label %63, label %61, !dbg !4449

; <label>:61:                                     ; preds = %57
  %62 = call i32 @close(i32 %59) #6, !dbg !4450
  br label %63, !dbg !4450

; <label>:63:                                     ; preds = %61, %57
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 4, !dbg !4444
  %65 = load i32, i32* %64, align 16, !dbg !4444, !tbaa !422
  %66 = icmp eq i32 %65, -1, !dbg !4448
  br i1 %66, label %69, label %67, !dbg !4449

; <label>:67:                                     ; preds = %63
  %68 = call i32 @close(i32 %65) #6, !dbg !4450
  br label %69, !dbg !4450

; <label>:69:                                     ; preds = %67, %63
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5, !dbg !4444
  %71 = load i32, i32* %70, align 4, !dbg !4444, !tbaa !422
  %72 = icmp eq i32 %71, -1, !dbg !4448
  br i1 %72, label %47, label %73, !dbg !4449

; <label>:73:                                     ; preds = %69
  %74 = call i32 @close(i32 %71) #6, !dbg !4450
  br label %47, !dbg !4450
}

; Function Attrs: noredzone
declare dso_local i32 @pipe(i32*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofClosePipes() local_unnamed_addr #0 !dbg !926 {
  %1 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4453, !tbaa !255
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4454, !tbaa !929
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %1, i32 %2, i32 1) #6, !dbg !4455
  %3 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4456, !tbaa !255
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4457, !tbaa !257
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %3, i32 %4, i32 2) #6, !dbg !4458
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4459, !tbaa !257
  %6 = tail call i32 @close(i32 %5) #6, !dbg !4460
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4461, !tbaa !937
  %8 = tail call i32 @close(i32 %7) #6, !dbg !4462
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4463, !tbaa !940
  %10 = tail call i32 @close(i32 %9) #6, !dbg !4464
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4465, !tbaa !929
  %12 = tail call i32 @close(i32 %11) #6, !dbg !4466
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4467, !tbaa !945
  %14 = tail call i32 @close(i32 %13) #6, !dbg !4468
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4469, !tbaa !948
  %16 = tail call i32 @close(i32 %15) #6, !dbg !4470
  ret void, !dbg !4471
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
define dso_local void @bgrewriteaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !4472 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4476, !tbaa !630
  %3 = icmp eq i32 %2, -1, !dbg !4478
  br i1 %3, label %5, label %4, !dbg !4479

; <label>:4:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.93, i64 0, i64 0)) #6, !dbg !4480
  br label %15, !dbg !4482

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4483, !tbaa !979
  %7 = icmp eq i32 %6, -1, !dbg !4485
  br i1 %7, label %9, label %8, !dbg !4486

; <label>:8:                                      ; preds = %5
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4487, !tbaa !984
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.94, i64 0, i64 0)) #6, !dbg !4489
  br label %15, !dbg !4490

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @rewriteAppendOnlyFileBackground() #9, !dbg !4491
  %11 = icmp eq i32 %10, 0, !dbg !4493
  br i1 %11, label %12, label %13, !dbg !4494

; <label>:12:                                     ; preds = %9
  tail call void @addReplyStatus(%struct.client* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.95, i64 0, i64 0)) #6, !dbg !4495
  br label %15, !dbg !4497

; <label>:13:                                     ; preds = %9
  %14 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !4498, !tbaa !4500
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %14) #6, !dbg !4502
  br label %15

; <label>:15:                                     ; preds = %8, %13, %12, %4
  ret void, !dbg !4503
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @aofRemoveTempFile(i32) local_unnamed_addr #0 !dbg !876 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !4505
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4505
  %4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %0) #6, !dbg !4507
  %5 = call i32 @unlink(i8* nonnull %3) #6, !dbg !4508
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #7, !dbg !4509
  ret void, !dbg !4509
}

; Function Attrs: noredzone nounwind
define dso_local void @backgroundRewriteDoneHandler(i32, i32) local_unnamed_addr #0 !dbg !4510 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.listIter, align 8
  %5 = alloca [256 x i8], align 16
  %6 = or i32 %1, %0, !dbg !4527
  %7 = icmp eq i32 %6, 0, !dbg !4527
  br i1 %7, label %8, label %131, !dbg !4527

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !4528
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4528
  %10 = tail call i64 @ustime() #6, !dbg !4530
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.98, i64 0, i64 0)) #6, !dbg !4532
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4533, !tbaa !551
  %12 = icmp eq i64 %11, 0, !dbg !4533
  br i1 %12, label %15, label %13, !dbg !4535

; <label>:13:                                     ; preds = %8
  %14 = tail call i64 @mstime() #6, !dbg !4536
  br label %15, !dbg !4536

; <label>:15:                                     ; preds = %8, %13
  %16 = phi i64 [ %14, %13 ], [ 0, %8 ], !dbg !4536
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4539, !tbaa !630
  %18 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %17) #6, !dbg !4540
  %19 = call i32 (i8*, i32, ...) @open(i8* nonnull %9, i32 9) #6, !dbg !4541
  %20 = icmp eq i32 %19, -1, !dbg !4543
  br i1 %20, label %21, label %25, !dbg !4545

; <label>:21:                                     ; preds = %15
  %22 = call i32* @__errno() #6, !dbg !4546
  %23 = load i32, i32* %22, align 4, !dbg !4546, !tbaa !422
  %24 = call i8* @strerror(i32 %23) #6, !dbg !4548
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.99, i64 0, i64 0), i8* %24) #6, !dbg !4549
  br label %130, !dbg !4550

; <label>:25:                                     ; preds = %15
  %26 = call i64 @aofRewriteBufferWrite(i32 %19) #9, !dbg !4551
  %27 = icmp eq i64 %26, -1, !dbg !4553
  br i1 %27, label %28, label %33, !dbg !4554

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #6, !dbg !4555
  %30 = load i32, i32* %29, align 4, !dbg !4555, !tbaa !422
  %31 = call i8* @strerror(i32 %30) #6, !dbg !4557
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.100, i64 0, i64 0), i8* %31) #6, !dbg !4558
  %32 = call i32 @close(i32 %19) #6, !dbg !4559
  br label %130, !dbg !4560

; <label>:33:                                     ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4561, !tbaa !551
  %35 = icmp eq i64 %34, 0, !dbg !4561
  br i1 %35, label %44, label %36, !dbg !4563

; <label>:36:                                     ; preds = %33
  %37 = call i64 @mstime() #6, !dbg !4564
  %38 = sub nsw i64 %37, %16, !dbg !4564
  %39 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4566, !tbaa !551
  %40 = icmp eq i64 %39, 0, !dbg !4566
  %41 = icmp slt i64 %38, %39, !dbg !4566
  %42 = or i1 %40, %41, !dbg !4566
  br i1 %42, label %44, label %43, !dbg !4566

; <label>:43:                                     ; preds = %36
  call void @latencyAddSample(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0), i64 %38) #6, !dbg !4566
  br label %44, !dbg !4566

; <label>:44:                                     ; preds = %33, %36, %43
  %45 = bitcast %struct.listIter* %4 to i8*, !dbg !4568
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #7, !dbg !4568
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4571, !tbaa !90
  call void @listRewind(%struct.list* %46, %struct.listIter* nonnull %4) #6, !dbg !4573
  %47 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4574
  %48 = icmp eq %struct.listNode* %47, null, !dbg !4576
  br i1 %48, label %63, label %49, !dbg !4576

; <label>:49:                                     ; preds = %44, %49
  %50 = phi %struct.listNode* [ %58, %49 ], [ %47, %44 ]
  %51 = phi i64 [ %57, %49 ], [ 0, %44 ]
  %52 = getelementptr inbounds %struct.listNode, %struct.listNode* %50, i64 0, i32 2, !dbg !4577
  %53 = bitcast i8** %52 to %struct.aofrwblock**, !dbg !4577
  %54 = load %struct.aofrwblock*, %struct.aofrwblock** %53, align 8, !dbg !4577, !tbaa !153
  %55 = getelementptr inbounds %struct.aofrwblock, %struct.aofrwblock* %54, i64 0, i32 0, !dbg !4579
  %56 = load i64, i64* %55, align 8, !dbg !4579, !tbaa !157
  %57 = add i64 %56, %51, !dbg !4580
  %58 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !4574
  %59 = icmp eq %struct.listNode* %58, null, !dbg !4576
  br i1 %59, label %60, label %49, !dbg !4576, !llvm.loop !160

; <label>:60:                                     ; preds = %49
  %61 = uitofp i64 %57 to double, !dbg !4581
  %62 = fmul double %61, 0x3EB0000000000000, !dbg !4581
  br label %63, !dbg !4581

; <label>:63:                                     ; preds = %60, %44
  %64 = phi double [ 0.000000e+00, %44 ], [ %62, %60 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #7, !dbg !4581
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.102, i64 0, i64 0), double %64) #6, !dbg !4582
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4583, !tbaa !447
  %66 = icmp eq i32 %65, -1, !dbg !4585
  br i1 %66, label %67, label %70, !dbg !4586

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4587, !tbaa !964
  %69 = call i32 (i8*, i32, ...) @open(i8* %68, i32 16384) #6, !dbg !4589
  br label %70, !dbg !4591

; <label>:70:                                     ; preds = %63, %67
  %71 = phi i32 [ %69, %67 ], [ -1, %63 ], !dbg !4592
  %72 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4594, !tbaa !551
  %73 = icmp eq i64 %72, 0, !dbg !4594
  br i1 %73, label %76, label %74, !dbg !4596

; <label>:74:                                     ; preds = %70
  %75 = call i64 @mstime() #6, !dbg !4597
  br label %76, !dbg !4597

; <label>:76:                                     ; preds = %70, %74
  %77 = phi i64 [ %75, %74 ], [ 0, %70 ], !dbg !4597
  %78 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4599, !tbaa !964
  %79 = call i32 @rename(i8* nonnull %9, i8* %78) #6, !dbg !4601
  %80 = icmp eq i32 %79, -1, !dbg !4602
  br i1 %80, label %81, label %90, !dbg !4603

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !4604, !tbaa !964
  %83 = call i32* @__errno() #6, !dbg !4606
  %84 = load i32, i32* %83, align 4, !dbg !4606, !tbaa !422
  %85 = call i8* @strerror(i32 %84) #6, !dbg !4607
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.103, i64 0, i64 0), i8* nonnull %9, i8* %82, i8* %85) #6, !dbg !4608
  %86 = call i32 @close(i32 %19) #6, !dbg !4609
  %87 = icmp eq i32 %71, -1, !dbg !4610
  br i1 %87, label %130, label %88, !dbg !4612

; <label>:88:                                     ; preds = %81
  %89 = call i32 @close(i32 %71) #6, !dbg !4613
  br label %130, !dbg !4613

; <label>:90:                                     ; preds = %76
  %91 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4614, !tbaa !551
  %92 = icmp eq i64 %91, 0, !dbg !4614
  br i1 %92, label %101, label %93, !dbg !4616

; <label>:93:                                     ; preds = %90
  %94 = call i64 @mstime() #6, !dbg !4617
  %95 = sub nsw i64 %94, %77, !dbg !4617
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !4619, !tbaa !551
  %97 = icmp eq i64 %96, 0, !dbg !4619
  %98 = icmp slt i64 %95, %96, !dbg !4619
  %99 = or i1 %97, %98, !dbg !4619
  br i1 %99, label %101, label %100, !dbg !4619

; <label>:100:                                    ; preds = %93
  call void @latencyAddSample(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0), i64 %95) #6, !dbg !4619
  br label %101, !dbg !4619

; <label>:101:                                    ; preds = %90, %93, %100
  %102 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4621, !tbaa !447
  %103 = icmp eq i32 %102, -1, !dbg !4623
  br i1 %103, label %104, label %106, !dbg !4624

; <label>:104:                                    ; preds = %101
  %105 = call i32 @close(i32 %19) #6, !dbg !4625
  br label %117, !dbg !4627

; <label>:106:                                    ; preds = %101
  store i32 %19, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 130), align 8, !dbg !4628, !tbaa !447
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !4630, !tbaa !480
  switch i32 %107, label %113 [
    i32 1, label %108
    i32 2, label %110
  ], !dbg !4632

; <label>:108:                                    ; preds = %106
  %109 = call i32 @fsync(i32 %19) #6, !dbg !4633
  br label %113, !dbg !4633

; <label>:110:                                    ; preds = %106
  %111 = sext i32 %19 to i64, !dbg !4637
  %112 = inttoptr i64 %111 to i8*, !dbg !4638
  call void @bioCreateBackgroundJob(i32 1, i8* %112, i8* null, i8* null) #6, !dbg !4639
  br label %113, !dbg !4640

; <label>:113:                                    ; preds = %106, %110, %108
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 131), align 4, !dbg !4641, !tbaa !453
  call void @aofUpdateCurrentSize() #9, !dbg !4642
  %114 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 124), align 8, !dbg !4643, !tbaa !507
  store i64 %114, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 123), align 8, !dbg !4644, !tbaa !2429
  %115 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4645, !tbaa !461
  call void @sdsfree(i8* %115) #6, !dbg !4646
  %116 = call i8* @sdsempty() #6, !dbg !4647
  store i8* %116, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !4648, !tbaa !461
  br label %117

; <label>:117:                                    ; preds = %113, %104
  %118 = phi i32 [ %71, %104 ], [ %102, %113 ], !dbg !4649
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4650, !tbaa !4651
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.105, i64 0, i64 0)) #6, !dbg !4652
  %119 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4653, !tbaa !444
  %120 = icmp eq i32 %119, 2, !dbg !4655
  br i1 %120, label %121, label %122, !dbg !4656

; <label>:121:                                    ; preds = %117
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4657, !tbaa !444
  br label %122, !dbg !4658

; <label>:122:                                    ; preds = %121, %117
  %123 = icmp eq i32 %118, -1, !dbg !4659
  br i1 %123, label %127, label %124, !dbg !4661

; <label>:124:                                    ; preds = %122
  %125 = sext i32 %118 to i64, !dbg !4662
  %126 = inttoptr i64 %125 to i8*, !dbg !4663
  call void @bioCreateBackgroundJob(i32 0, i8* %126, i8* null, i8* null) #6, !dbg !4664
  br label %127, !dbg !4664

; <label>:127:                                    ; preds = %122, %124
  %128 = call i64 @ustime() #6, !dbg !4665
  %129 = sub nsw i64 %128, %10, !dbg !4666
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.106, i64 0, i64 0), i64 %129) #6, !dbg !4667
  br label %130, !dbg !4668

; <label>:130:                                    ; preds = %88, %81, %28, %21, %127
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #7, !dbg !4668
  br label %137

; <label>:131:                                    ; preds = %2
  %132 = icmp eq i32 %1, 0, !dbg !4669
  %133 = icmp ne i32 %0, 0, !dbg !4670
  %134 = and i1 %133, %132, !dbg !4672
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 136), align 8, !dbg !4673, !tbaa !4651
  br i1 %134, label %135, label %136, !dbg !4672

; <label>:135:                                    ; preds = %131
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.107, i64 0, i64 0)) #6, !dbg !4675
  br label %137, !dbg !4677

; <label>:136:                                    ; preds = %131
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i32 %1) #6, !dbg !4678
  br label %137

; <label>:137:                                    ; preds = %130, %136, %135
  %138 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4679, !tbaa !255
  %139 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4681, !tbaa !929
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %138, i32 %139, i32 1) #6, !dbg !4682
  %140 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4683, !tbaa !255
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4684, !tbaa !257
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %140, i32 %141, i32 2) #6, !dbg !4685
  %142 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 144), align 8, !dbg !4686, !tbaa !257
  %143 = call i32 @close(i32 %142) #6, !dbg !4687
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 145), align 4, !dbg !4688, !tbaa !937
  %145 = call i32 @close(i32 %144) #6, !dbg !4689
  %146 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 146), align 8, !dbg !4690, !tbaa !940
  %147 = call i32 @close(i32 %146) #6, !dbg !4691
  %148 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 147), align 4, !dbg !4692, !tbaa !929
  %149 = call i32 @close(i32 %148) #6, !dbg !4693
  %150 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 148), align 8, !dbg !4694, !tbaa !945
  %151 = call i32 @close(i32 %150) #6, !dbg !4695
  %152 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 149), align 4, !dbg !4696, !tbaa !948
  %153 = call i32 @close(i32 %152) #6, !dbg !4697
  %154 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4698, !tbaa !90
  %155 = icmp eq %struct.list* %154, null, !dbg !4700
  br i1 %155, label %157, label %156, !dbg !4701

; <label>:156:                                    ; preds = %137
  call void @listRelease(%struct.list* nonnull %154) #6, !dbg !4702
  br label %157, !dbg !4702

; <label>:157:                                    ; preds = %137, %156
  %158 = call %struct.list* @listCreate() #6, !dbg !4703
  store %struct.list* %158, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 128), align 8, !dbg !4704, !tbaa !90
  %159 = getelementptr inbounds %struct.list, %struct.list* %158, i64 0, i32 3, !dbg !4705
  store void (i8*)* @zfree, void (i8*)** %159, align 8, !dbg !4705, !tbaa !108
  %160 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4706, !tbaa !630
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !4708
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %161) #7, !dbg !4708
  %162 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %161, i64 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i64 0, i64 0), i32 %160) #6, !dbg !4709
  %163 = call i32 @unlink(i8* nonnull %161) #6, !dbg !4710
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %161) #7, !dbg !4711
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4712, !tbaa !630
  %164 = call i64 @time(i64* null) #6, !dbg !4713
  %165 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4714, !tbaa !924
  %166 = sub nsw i64 %164, %165, !dbg !4715
  store i64 %166, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 134), align 8, !dbg !4716, !tbaa !4717
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 135), align 8, !dbg !4718, !tbaa !924
  %167 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4719, !tbaa !444
  %168 = icmp eq i32 %167, 2, !dbg !4721
  br i1 %168, label %169, label %170, !dbg !4722

; <label>:169:                                    ; preds = %157
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 126), align 8, !dbg !4723, !tbaa !984
  br label %170, !dbg !4724

; <label>:170:                                    ; preds = %169, %157
  ret void, !dbg !4725
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
!365 = !DILocation(line: 158, column: 43, scope: !305)
!366 = !DILocation(line: 157, column: 17, scope: !305)
!367 = !DILocation(line: 159, column: 13, scope: !305)
!368 = distinct !{!368, !315, !369}
!369 = !DILocation(line: 161, column: 5, scope: !289)
!370 = !DILocation(line: 165, column: 32, scope: !371)
!371 = distinct !DILexicalBlock(scope: !289, file: !3, line: 165, column: 9)
!372 = !DILocation(line: 165, column: 42, scope: !371)
!373 = !DILocation(line: 165, column: 9, scope: !371)
!374 = !DILocation(line: 165, column: 72, scope: !371)
!375 = !DILocation(line: 165, column: 9, scope: !289)
!376 = !DILocation(line: 166, column: 34, scope: !377)
!377 = distinct !DILexicalBlock(scope: !371, file: !3, line: 165, column: 78)
!378 = !DILocation(line: 166, column: 45, scope: !377)
!379 = !DILocation(line: 166, column: 9, scope: !377)
!380 = !DILocation(line: 168, column: 5, scope: !377)
!381 = !DILocation(line: 169, column: 1, scope: !289)
!382 = distinct !DISubprogram(name: "aofRewriteBufferWrite", scope: !3, file: !3, line: 174, type: !383, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!11, !6}
!385 = !{!386, !387, !388, !389, !390, !392}
!386 = !DILocalVariable(name: "fd", arg: 1, scope: !382, file: !3, line: 174, type: !6)
!387 = !DILocalVariable(name: "ln", scope: !382, file: !3, line: 175, type: !116)
!388 = !DILocalVariable(name: "li", scope: !382, file: !3, line: 176, type: !126)
!389 = !DILocalVariable(name: "count", scope: !382, file: !3, line: 177, type: !11)
!390 = !DILocalVariable(name: "block", scope: !391, file: !3, line: 181, type: !134)
!391 = distinct !DILexicalBlock(scope: !382, file: !3, line: 180, column: 33)
!392 = !DILocalVariable(name: "nwritten", scope: !391, file: !3, line: 182, type: !11)
!393 = !DILocation(line: 174, column: 35, scope: !382)
!394 = !DILocation(line: 176, column: 5, scope: !382)
!395 = !DILocation(line: 177, column: 13, scope: !382)
!396 = !DILocation(line: 179, column: 23, scope: !382)
!397 = !DILocation(line: 176, column: 14, scope: !382)
!398 = !DILocation(line: 179, column: 5, scope: !382)
!399 = !DILocation(line: 180, column: 17, scope: !382)
!400 = !DILocation(line: 175, column: 15, scope: !382)
!401 = !DILocation(line: 180, column: 5, scope: !382)
!402 = !DILocation(line: 181, column: 29, scope: !391)
!403 = !DILocation(line: 181, column: 21, scope: !391)
!404 = !DILocation(line: 184, column: 20, scope: !405)
!405 = distinct !DILexicalBlock(scope: !391, file: !3, line: 184, column: 13)
!406 = !DILocation(line: 184, column: 13, scope: !405)
!407 = !DILocation(line: 184, column: 13, scope: !391)
!408 = !DILocation(line: 185, column: 33, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !3, line: 184, column: 26)
!410 = !DILocation(line: 185, column: 24, scope: !409)
!411 = !DILocation(line: 182, column: 17, scope: !391)
!412 = !DILocation(line: 186, column: 45, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !3, line: 186, column: 17)
!414 = !DILocation(line: 186, column: 26, scope: !413)
!415 = !DILocation(line: 186, column: 17, scope: !409)
!416 = !DILocation(line: 187, column: 30, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 187, column: 21)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 186, column: 51)
!419 = !DILocation(line: 187, column: 21, scope: !418)
!420 = !DILocation(line: 187, column: 36, scope: !417)
!421 = !DILocation(line: 187, column: 42, scope: !417)
!422 = !{!92, !92, i64 0}
!423 = !DILocation(line: 190, column: 19, scope: !409)
!424 = !DILocation(line: 191, column: 9, scope: !409)
!425 = !DILocation(line: 0, scope: !409)
!426 = !DILocation(line: 0, scope: !382)
!427 = !DILocation(line: 194, column: 1, scope: !382)
!428 = distinct !DISubprogram(name: "aofFsyncInProgress", scope: !3, file: !3, line: 202, type: !429, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!429 = !DISubroutineType(types: !430)
!430 = !{!6}
!431 = !DILocation(line: 203, column: 12, scope: !428)
!432 = !DILocation(line: 203, column: 48, scope: !428)
!433 = !DILocation(line: 203, column: 5, scope: !428)
!434 = distinct !DISubprogram(name: "aof_background_fsync", scope: !3, file: !3, line: 208, type: !4, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !435)
!435 = !{!436}
!436 = !DILocalVariable(name: "fd", arg: 1, scope: !434, file: !3, line: 208, type: !6)
!437 = !DILocation(line: 208, column: 31, scope: !434)
!438 = !DILocation(line: 209, column: 49, scope: !434)
!439 = !DILocation(line: 209, column: 42, scope: !434)
!440 = !DILocation(line: 209, column: 5, scope: !434)
!441 = !DILocation(line: 210, column: 1, scope: !434)
!442 = distinct !DISubprogram(name: "stopAppendOnly", scope: !3, file: !3, line: 234, type: !86, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!443 = !DILocation(line: 235, column: 5, scope: !442)
!444 = !{!91, !92, i64 1880}
!445 = !DILocation(line: 236, column: 5, scope: !442)
!446 = !DILocation(line: 237, column: 24, scope: !442)
!447 = !{!91, !92, i64 1960}
!448 = !DILocation(line: 237, column: 5, scope: !442)
!449 = !DILocation(line: 238, column: 18, scope: !442)
!450 = !DILocation(line: 238, column: 5, scope: !442)
!451 = !DILocation(line: 240, column: 19, scope: !442)
!452 = !DILocation(line: 241, column: 28, scope: !442)
!453 = !{!91, !92, i64 1964}
!454 = !DILocation(line: 242, column: 22, scope: !442)
!455 = !DILocation(line: 243, column: 5, scope: !442)
!456 = !DILocation(line: 244, column: 1, scope: !442)
!457 = !DILocation(line: 337, column: 30, scope: !2)
!458 = !DILocation(line: 339, column: 9, scope: !2)
!459 = !DILocation(line: 342, column: 23, scope: !460)
!460 = distinct !DILexicalBlock(scope: !2, file: !3, line: 342, column: 9)
!461 = !{!91, !95, i64 1952}
!462 = !DILocalVariable(name: "s", arg: 1, scope: !463, file: !26, line: 87, type: !468)
!463 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !464, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !470)
!464 = !DISubroutineType(types: !465)
!465 = !{!466, !468}
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !467, line: 58, baseType: !17)
!467 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !26, line: 43, baseType: !20)
!470 = !{!462, !471}
!471 = !DILocalVariable(name: "flags", scope: !463, file: !26, line: 88, type: !19)
!472 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !473)
!473 = distinct !DILocation(line: 342, column: 9, scope: !460)
!474 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !473)
!475 = !{!93, !93, i64 0}
!476 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !473)
!477 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !473)
!478 = !DILocation(line: 0, scope: !479)
!479 = distinct !DILexicalBlock(scope: !2, file: !3, line: 358, column: 9)
!480 = !{!91, !92, i64 1884}
!481 = !DILocation(line: 348, column: 52, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 348, column: 13)
!483 = distinct !DILexicalBlock(scope: !460, file: !3, line: 342, column: 38)
!484 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !473)
!485 = distinct !DILexicalBlock(scope: !463, file: !26, line: 89, column: 33)
!486 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !473)
!487 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !473)
!488 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !473)
!489 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !473)
!490 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !473)
!491 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !473)
!492 = !{!493, !493, i64 0}
!493 = !{!"short", !93, i64 0}
!494 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !473)
!495 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !473)
!496 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !473)
!497 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !473)
!498 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !473)
!499 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !473)
!500 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !473)
!501 = !DILocation(line: 0, scope: !485, inlinedAt: !473)
!502 = !DILocation(line: 342, column: 32, scope: !460)
!503 = !DILocation(line: 342, column: 9, scope: !2)
!504 = !DILocation(line: 349, column: 20, scope: !482)
!505 = !{!91, !96, i64 1928}
!506 = !DILocation(line: 349, column: 47, scope: !482)
!507 = !{!91, !96, i64 1920}
!508 = !DILocation(line: 349, column: 37, scope: !482)
!509 = !DILocation(line: 349, column: 64, scope: !482)
!510 = !DILocation(line: 350, column: 20, scope: !482)
!511 = !{!91, !96, i64 2872}
!512 = !DILocation(line: 350, column: 38, scope: !482)
!513 = !{!91, !96, i64 1976}
!514 = !DILocation(line: 350, column: 29, scope: !482)
!515 = !DILocation(line: 350, column: 53, scope: !482)
!516 = !DILocation(line: 203, column: 12, scope: !428, inlinedAt: !517)
!517 = distinct !DILocation(line: 351, column: 34, scope: !482)
!518 = !DILocation(line: 203, column: 48, scope: !428, inlinedAt: !517)
!519 = !DILocation(line: 348, column: 13, scope: !483)
!520 = !DILocation(line: 358, column: 9, scope: !2)
!521 = !DILocation(line: 203, column: 12, scope: !428, inlinedAt: !522)
!522 = distinct !DILocation(line: 359, column: 28, scope: !479)
!523 = !DILocation(line: 203, column: 48, scope: !428, inlinedAt: !522)
!524 = !DILocation(line: 361, column: 16, scope: !525)
!525 = distinct !DILexicalBlock(scope: !2, file: !3, line: 361, column: 9)
!526 = !DILocation(line: 361, column: 26, scope: !525)
!527 = !DILocation(line: 361, column: 52, scope: !525)
!528 = !DILocation(line: 361, column: 48, scope: !525)
!529 = !DILocation(line: 366, column: 24, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 366, column: 17)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 365, column: 31)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 365, column: 13)
!533 = distinct !DILexicalBlock(scope: !525, file: !3, line: 361, column: 59)
!534 = !{!91, !96, i64 1968}
!535 = !DILocation(line: 366, column: 50, scope: !530)
!536 = !DILocation(line: 0, scope: !537)
!537 = distinct !DILexicalBlock(scope: !530, file: !3, line: 371, column: 24)
!538 = !DILocation(line: 366, column: 17, scope: !531)
!539 = !DILocation(line: 369, column: 50, scope: !540)
!540 = distinct !DILexicalBlock(scope: !530, file: !3, line: 366, column: 56)
!541 = !DILocation(line: 370, column: 17, scope: !540)
!542 = !DILocation(line: 371, column: 40, scope: !537)
!543 = !DILocation(line: 371, column: 75, scope: !537)
!544 = !DILocation(line: 371, column: 24, scope: !530)
!545 = !DILocation(line: 378, column: 37, scope: !531)
!546 = !{!91, !96, i64 2008}
!547 = !DILocation(line: 379, column: 13, scope: !531)
!548 = !DILocation(line: 380, column: 9, scope: !531)
!549 = !DILocation(line: 388, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !2, file: !3, line: 388, column: 5)
!551 = !{!91, !97, i64 3096}
!552 = !DILocation(line: 388, column: 5, scope: !2)
!553 = !DILocation(line: 388, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 388, column: 5)
!555 = !DILocation(line: 340, column: 14, scope: !2)
!556 = !DILocation(line: 389, column: 32, scope: !2)
!557 = !DILocation(line: 389, column: 46, scope: !2)
!558 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !559)
!559 = distinct !DILocation(line: 389, column: 54, scope: !2)
!560 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !559)
!561 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !559)
!562 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !559)
!563 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !559)
!564 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !559)
!565 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !559)
!566 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !559)
!567 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !559)
!568 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !559)
!569 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !559)
!570 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !559)
!571 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !559)
!572 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !559)
!573 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !559)
!574 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !559)
!575 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !559)
!576 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !559)
!577 = !DILocation(line: 300, column: 5, scope: !578, inlinedAt: !592)
!578 = distinct !DISubprogram(name: "aofWrite", scope: !3, file: !3, line: 297, type: !579, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !586)
!579 = !DISubroutineType(types: !580)
!580 = !{!11, !6, !581, !583}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !584, line: 40, baseType: !585)
!584 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !14, line: 129, baseType: !17)
!586 = !{!587, !588, !589, !590, !591}
!587 = !DILocalVariable(name: "fd", arg: 1, scope: !578, file: !3, line: 297, type: !6)
!588 = !DILocalVariable(name: "buf", arg: 2, scope: !578, file: !3, line: 297, type: !581)
!589 = !DILocalVariable(name: "len", arg: 3, scope: !578, file: !3, line: 297, type: !583)
!590 = !DILocalVariable(name: "nwritten", scope: !578, file: !3, line: 298, type: !11)
!591 = !DILocalVariable(name: "totwritten", scope: !578, file: !3, line: 298, type: !11)
!592 = distinct !DILocation(line: 389, column: 16, scope: !2)
!593 = !DILocation(line: 298, column: 27, scope: !578, inlinedAt: !592)
!594 = !DILocation(line: 297, column: 50, scope: !578, inlinedAt: !592)
!595 = !DILocation(line: 297, column: 38, scope: !578, inlinedAt: !592)
!596 = !DILocation(line: 301, column: 20, scope: !597, inlinedAt: !592)
!597 = distinct !DILexicalBlock(scope: !578, file: !3, line: 300, column: 16)
!598 = !DILocation(line: 298, column: 13, scope: !578, inlinedAt: !592)
!599 = !DILocation(line: 303, column: 22, scope: !600, inlinedAt: !592)
!600 = distinct !DILexicalBlock(scope: !597, file: !3, line: 303, column: 13)
!601 = !DILocation(line: 303, column: 13, scope: !597, inlinedAt: !592)
!602 = !DILocation(line: 304, column: 17, scope: !603, inlinedAt: !592)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 304, column: 17)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 303, column: 27)
!605 = !DILocation(line: 304, column: 23, scope: !603, inlinedAt: !592)
!606 = !DILocation(line: 304, column: 17, scope: !604, inlinedAt: !592)
!607 = distinct !{!607, !608, !609}
!608 = !DILocation(line: 300, column: 5, scope: !578)
!609 = !DILocation(line: 313, column: 5, scope: !578)
!610 = !DILocation(line: 307, column: 20, scope: !604, inlinedAt: !592)
!611 = !DILocation(line: 307, column: 13, scope: !604, inlinedAt: !592)
!612 = !DILocation(line: 310, column: 13, scope: !597, inlinedAt: !592)
!613 = !DILocation(line: 311, column: 13, scope: !597, inlinedAt: !592)
!614 = !DILocation(line: 312, column: 20, scope: !597, inlinedAt: !592)
!615 = !DILocation(line: 0, scope: !578, inlinedAt: !592)
!616 = !DILocation(line: 338, column: 13, scope: !2)
!617 = !DILocation(line: 390, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !2, file: !3, line: 390, column: 5)
!619 = !DILocation(line: 390, column: 5, scope: !2)
!620 = !DILocation(line: 390, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 390, column: 5)
!622 = !DILocation(line: 0, scope: !554)
!623 = !DILocation(line: 396, column: 9, scope: !2)
!624 = !DILocation(line: 397, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 397, column: 9)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 396, column: 27)
!627 = distinct !DILexicalBlock(scope: !2, file: !3, line: 396, column: 9)
!628 = !DILocation(line: 398, column: 23, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 398, column: 16)
!630 = !{!91, !92, i64 1940}
!631 = !DILocation(line: 398, column: 53, scope: !629)
!632 = !DILocation(line: 398, column: 43, scope: !629)
!633 = !DILocation(line: 0, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 401, column: 9)
!635 = distinct !DILexicalBlock(scope: !629, file: !3, line: 400, column: 12)
!636 = !DILocation(line: 0, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 399, column: 9)
!638 = distinct !DILexicalBlock(scope: !629, file: !3, line: 398, column: 74)
!639 = !DILocation(line: 399, column: 9, scope: !637)
!640 = !DILocation(line: 401, column: 9, scope: !634)
!641 = !DILocation(line: 403, column: 5, scope: !642)
!642 = distinct !DILexicalBlock(scope: !2, file: !3, line: 403, column: 5)
!643 = !DILocation(line: 406, column: 38, scope: !2)
!644 = !DILocation(line: 408, column: 44, scope: !78)
!645 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !646)
!646 = distinct !DILocation(line: 408, column: 30, scope: !78)
!647 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !646)
!648 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !646)
!649 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !646)
!650 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !646)
!651 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !646)
!652 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !646)
!653 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !646)
!654 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !646)
!655 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !646)
!656 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !646)
!657 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !646)
!658 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !646)
!659 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !646)
!660 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !646)
!661 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !646)
!662 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !646)
!663 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !646)
!664 = !DILocation(line: 0, scope: !485, inlinedAt: !646)
!665 = !DILocation(line: 408, column: 18, scope: !78)
!666 = !DILocation(line: 408, column: 9, scope: !2)
!667 = !DILocation(line: 410, column: 13, scope: !77)
!668 = !DILocation(line: 413, column: 21, scope: !669)
!669 = distinct !DILexicalBlock(scope: !77, file: !3, line: 413, column: 13)
!670 = !DILocation(line: 413, column: 32, scope: !669)
!671 = !DILocation(line: 413, column: 30, scope: !669)
!672 = !DILocation(line: 413, column: 54, scope: !669)
!673 = !DILocation(line: 413, column: 13, scope: !77)
!674 = !DILocation(line: 415, column: 34, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !3, line: 413, column: 82)
!676 = !DILocation(line: 416, column: 9, scope: !675)
!677 = !DILocation(line: 419, column: 22, scope: !678)
!678 = distinct !DILexicalBlock(scope: !77, file: !3, line: 419, column: 13)
!679 = !DILocation(line: 419, column: 13, scope: !77)
!680 = !DILocation(line: 420, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 419, column: 29)
!682 = !DILocation(line: 422, column: 30, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 420, column: 26)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 420, column: 17)
!685 = !DILocation(line: 422, column: 21, scope: !683)
!686 = !DILocation(line: 421, column: 17, scope: !683)
!687 = !DILocation(line: 423, column: 47, scope: !683)
!688 = !DILocation(line: 424, column: 13, scope: !683)
!689 = !DILocation(line: 426, column: 17, scope: !690)
!690 = distinct !DILexicalBlock(scope: !678, file: !3, line: 425, column: 16)
!691 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !692)
!692 = distinct !DILocation(line: 431, column: 51, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 426, column: 26)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 426, column: 17)
!695 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !692)
!696 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !692)
!697 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !692)
!698 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !692)
!699 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !692)
!700 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !692)
!701 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !692)
!702 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !692)
!703 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !692)
!704 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !692)
!705 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !692)
!706 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !692)
!707 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !692)
!708 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !692)
!709 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !692)
!710 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !692)
!711 = !DILocation(line: 0, scope: !485, inlinedAt: !692)
!712 = !DILocation(line: 427, column: 17, scope: !693)
!713 = !DILocation(line: 432, column: 13, scope: !693)
!714 = !DILocation(line: 434, column: 34, scope: !715)
!715 = distinct !DILexicalBlock(scope: !690, file: !3, line: 434, column: 17)
!716 = !DILocation(line: 434, column: 49, scope: !715)
!717 = !DILocation(line: 434, column: 17, scope: !715)
!718 = !DILocation(line: 434, column: 67, scope: !715)
!719 = !DILocation(line: 434, column: 17, scope: !690)
!720 = !DILocation(line: 439, column: 56, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 435, column: 30)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 435, column: 21)
!723 = distinct !DILexicalBlock(scope: !715, file: !3, line: 434, column: 74)
!724 = !DILocation(line: 439, column: 47, scope: !721)
!725 = !DILocation(line: 436, column: 21, scope: !721)
!726 = !DILocation(line: 440, column: 17, scope: !721)
!727 = !DILocation(line: 0, scope: !690)
!728 = !{!91, !92, i64 2028}
!729 = !DILocation(line: 450, column: 20, scope: !730)
!730 = distinct !DILexicalBlock(scope: !77, file: !3, line: 450, column: 13)
!731 = !DILocation(line: 389, column: 14, scope: !2)
!732 = !DILocation(line: 450, column: 30, scope: !730)
!733 = !DILocation(line: 450, column: 13, scope: !77)
!734 = !DILocation(line: 455, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !3, line: 450, column: 51)
!736 = !DILocation(line: 456, column: 13, scope: !735)
!737 = !DILocation(line: 461, column: 42, scope: !738)
!738 = distinct !DILexicalBlock(scope: !730, file: !3, line: 457, column: 16)
!739 = !{!91, !92, i64 2024}
!740 = !DILocation(line: 465, column: 26, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !3, line: 465, column: 17)
!742 = !DILocation(line: 465, column: 17, scope: !738)
!743 = !DILocation(line: 466, column: 41, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !3, line: 465, column: 31)
!745 = !DILocation(line: 467, column: 33, scope: !744)
!746 = !DILocation(line: 467, column: 17, scope: !744)
!747 = !DILocation(line: 468, column: 13, scope: !744)
!748 = !DILocation(line: 474, column: 20, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 474, column: 13)
!750 = distinct !DILexicalBlock(scope: !78, file: !3, line: 471, column: 12)
!751 = !DILocation(line: 474, column: 42, scope: !749)
!752 = !DILocation(line: 474, column: 13, scope: !750)
!753 = !DILocation(line: 475, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 474, column: 52)
!755 = !DILocation(line: 477, column: 42, scope: !754)
!756 = !DILocation(line: 484, column: 24, scope: !757)
!757 = distinct !DILexicalBlock(scope: !2, file: !3, line: 484, column: 9)
!758 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !759)
!759 = distinct !DILocation(line: 484, column: 10, scope: !757)
!760 = !DILocation(line: 478, column: 9, scope: !754)
!761 = !DILocation(line: 480, column: 29, scope: !2)
!762 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !759)
!763 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !759)
!764 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !759)
!765 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !759)
!766 = !DILocalVariable(name: "s", arg: 1, scope: !767, file: !26, line: 104, type: !468)
!767 = distinct !DISubprogram(name: "sdsavail", scope: !26, file: !26, line: 104, type: !464, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !768)
!768 = !{!766, !769, !770, !773, !775, !777}
!769 = !DILocalVariable(name: "flags", scope: !767, file: !26, line: 105, type: !19)
!770 = !DILocalVariable(name: "sh", scope: !771, file: !26, line: 111, type: !24)
!771 = distinct !DILexicalBlock(scope: !772, file: !26, line: 110, column: 26)
!772 = distinct !DILexicalBlock(scope: !767, file: !26, line: 106, column: 33)
!773 = !DILocalVariable(name: "sh", scope: !774, file: !26, line: 115, type: !39)
!774 = distinct !DILexicalBlock(scope: !772, file: !26, line: 114, column: 27)
!775 = !DILocalVariable(name: "sh", scope: !776, file: !26, line: 119, type: !49)
!776 = distinct !DILexicalBlock(scope: !772, file: !26, line: 118, column: 27)
!777 = !DILocalVariable(name: "sh", scope: !778, file: !26, line: 123, type: !59)
!778 = distinct !DILexicalBlock(scope: !772, file: !26, line: 122, column: 27)
!779 = !DILocation(line: 104, column: 41, scope: !767, inlinedAt: !780)
!780 = distinct !DILocation(line: 484, column: 33, scope: !757)
!781 = !DILocation(line: 105, column: 19, scope: !767, inlinedAt: !780)
!782 = !DILocation(line: 106, column: 5, scope: !767, inlinedAt: !780)
!783 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !759)
!784 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !759)
!785 = !DILocation(line: 111, column: 13, scope: !771, inlinedAt: !780)
!786 = !DILocation(line: 112, column: 24, scope: !771, inlinedAt: !780)
!787 = !DILocation(line: 112, column: 20, scope: !771, inlinedAt: !780)
!788 = !DILocation(line: 112, column: 30, scope: !771, inlinedAt: !780)
!789 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !759)
!790 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !759)
!791 = !DILocation(line: 115, column: 13, scope: !774, inlinedAt: !780)
!792 = !DILocation(line: 116, column: 24, scope: !774, inlinedAt: !780)
!793 = !DILocation(line: 116, column: 20, scope: !774, inlinedAt: !780)
!794 = !DILocation(line: 116, column: 30, scope: !774, inlinedAt: !780)
!795 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !759)
!796 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !759)
!797 = !DILocation(line: 119, column: 13, scope: !776, inlinedAt: !780)
!798 = !DILocation(line: 120, column: 24, scope: !776, inlinedAt: !780)
!799 = !DILocation(line: 120, column: 30, scope: !776, inlinedAt: !780)
!800 = !DILocation(line: 120, column: 20, scope: !776, inlinedAt: !780)
!801 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !759)
!802 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !759)
!803 = !DILocation(line: 123, column: 13, scope: !778, inlinedAt: !780)
!804 = !DILocation(line: 124, column: 24, scope: !778, inlinedAt: !780)
!805 = !DILocation(line: 124, column: 30, scope: !778, inlinedAt: !780)
!806 = !DILocation(line: 0, scope: !807, inlinedAt: !780)
!807 = distinct !DILexicalBlock(scope: !772, file: !26, line: 107, column: 26)
!808 = !DILocation(line: 484, column: 32, scope: !757)
!809 = !DILocation(line: 484, column: 59, scope: !757)
!810 = !DILocation(line: 484, column: 9, scope: !2)
!811 = !DILocation(line: 485, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !757, file: !3, line: 484, column: 67)
!813 = !DILocation(line: 486, column: 5, scope: !812)
!814 = !DILocation(line: 487, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !757, file: !3, line: 486, column: 12)
!816 = !DILocation(line: 488, column: 26, scope: !815)
!817 = !DILocation(line: 488, column: 24, scope: !815)
!818 = !DILocation(line: 494, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !2, file: !3, line: 494, column: 9)
!820 = !{!91, !92, i64 1896}
!821 = !DILocation(line: 494, column: 9, scope: !819)
!822 = !DILocation(line: 494, column: 40, scope: !819)
!823 = !DILocation(line: 495, column: 17, scope: !819)
!824 = !DILocation(line: 495, column: 47, scope: !819)
!825 = !DILocation(line: 495, column: 37, scope: !819)
!826 = !DILocation(line: 499, column: 16, scope: !827)
!827 = distinct !DILexicalBlock(scope: !2, file: !3, line: 499, column: 9)
!828 = !DILocation(line: 499, column: 9, scope: !2)
!829 = !DILocation(line: 502, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 502, column: 9)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 499, column: 47)
!832 = !DILocation(line: 502, column: 9, scope: !831)
!833 = !DILocation(line: 502, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !3, line: 502, column: 9)
!835 = !DILocation(line: 503, column: 28, scope: !831)
!836 = !DILocation(line: 503, column: 9, scope: !831)
!837 = !DILocation(line: 504, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !831, file: !3, line: 504, column: 9)
!839 = !DILocation(line: 504, column: 9, scope: !831)
!840 = !DILocation(line: 504, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 504, column: 9)
!842 = !DILocation(line: 505, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !831, file: !3, line: 505, column: 9)
!844 = !DILocation(line: 506, column: 42, scope: !831)
!845 = !DILocation(line: 506, column: 33, scope: !831)
!846 = !DILocation(line: 507, column: 40, scope: !831)
!847 = !DILocation(line: 507, column: 31, scope: !831)
!848 = !DILocation(line: 508, column: 5, scope: !831)
!849 = !DILocation(line: 509, column: 24, scope: !850)
!850 = distinct !DILexicalBlock(scope: !827, file: !3, line: 508, column: 16)
!851 = !DILocation(line: 509, column: 42, scope: !850)
!852 = !DILocation(line: 509, column: 33, scope: !850)
!853 = !DILocation(line: 508, column: 16, scope: !827)
!854 = !DILocation(line: 510, column: 14, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 510, column: 13)
!856 = distinct !DILexicalBlock(scope: !850, file: !3, line: 509, column: 59)
!857 = !DILocation(line: 510, column: 13, scope: !856)
!858 = !DILocation(line: 511, column: 41, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !3, line: 510, column: 32)
!860 = !DILocation(line: 208, column: 31, scope: !434, inlinedAt: !861)
!861 = distinct !DILocation(line: 511, column: 13, scope: !859)
!862 = !DILocation(line: 209, column: 49, scope: !434, inlinedAt: !861)
!863 = !DILocation(line: 209, column: 42, scope: !434, inlinedAt: !861)
!864 = !DILocation(line: 209, column: 5, scope: !434, inlinedAt: !861)
!865 = !DILocation(line: 512, column: 46, scope: !859)
!866 = !DILocation(line: 512, column: 37, scope: !859)
!867 = !DILocation(line: 514, column: 40, scope: !856)
!868 = !DILocation(line: 513, column: 9, scope: !859)
!869 = !DILocation(line: 514, column: 31, scope: !856)
!870 = !DILocation(line: 515, column: 5, scope: !856)
!871 = !DILocation(line: 516, column: 1, scope: !2)
!872 = distinct !DISubprogram(name: "killAppendOnlyChild", scope: !3, file: !3, line: 213, type: !86, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !873)
!873 = !{!874}
!874 = !DILocalVariable(name: "statloc", scope: !872, file: !3, line: 214, type: !6)
!875 = !DILocalVariable(name: "tmpfile", scope: !876, file: !3, line: 1633, type: !883)
!876 = distinct !DISubprogram(name: "aofRemoveTempFile", scope: !3, file: !3, line: 1632, type: !877, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !881)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !879}
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !880, line: 61, baseType: !6)
!880 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!881 = !{!882, !875}
!882 = !DILocalVariable(name: "childpid", arg: 1, scope: !876, file: !3, line: 1632, type: !879)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 256)
!886 = !DILocation(line: 1633, column: 10, scope: !876, inlinedAt: !887)
!887 = distinct !DILocation(line: 225, column: 5, scope: !872)
!888 = !DILocation(line: 214, column: 5, scope: !872)
!889 = !DILocation(line: 216, column: 16, scope: !890)
!890 = distinct !DILexicalBlock(scope: !872, file: !3, line: 216, column: 9)
!891 = !DILocation(line: 216, column: 30, scope: !890)
!892 = !DILocation(line: 216, column: 9, scope: !872)
!893 = !DILocation(line: 219, column: 9, scope: !872)
!894 = !DILocation(line: 218, column: 5, scope: !872)
!895 = !DILocation(line: 220, column: 21, scope: !896)
!896 = distinct !DILexicalBlock(scope: !872, file: !3, line: 220, column: 9)
!897 = !DILocation(line: 220, column: 9, scope: !896)
!898 = !DILocation(line: 220, column: 44, scope: !896)
!899 = !DILocation(line: 220, column: 9, scope: !872)
!900 = !DILocation(line: 214, column: 9, scope: !872)
!901 = !DILocation(line: 221, column: 15, scope: !902)
!902 = distinct !DILexicalBlock(scope: !896, file: !3, line: 220, column: 51)
!903 = !DILocation(line: 221, column: 48, scope: !902)
!904 = !DILocation(line: 221, column: 38, scope: !902)
!905 = !DILocation(line: 221, column: 9, scope: !902)
!906 = distinct !{!906, !905, !907}
!907 = !DILocation(line: 221, column: 62, scope: !902)
!908 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !909)
!909 = distinct !DILocation(line: 224, column: 5, scope: !872)
!910 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !909)
!911 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !909)
!912 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !909)
!913 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !909)
!914 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !909)
!915 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !909)
!916 = !DILocation(line: 225, column: 30, scope: !872)
!917 = !DILocation(line: 1632, column: 30, scope: !876, inlinedAt: !887)
!918 = !DILocation(line: 1633, column: 5, scope: !876, inlinedAt: !887)
!919 = !DILocation(line: 1635, column: 5, scope: !876, inlinedAt: !887)
!920 = !DILocation(line: 1636, column: 5, scope: !876, inlinedAt: !887)
!921 = !DILocation(line: 1637, column: 1, scope: !876, inlinedAt: !887)
!922 = !DILocation(line: 226, column: 26, scope: !872)
!923 = !DILocation(line: 227, column: 35, scope: !872)
!924 = !{!91, !96, i64 1992}
!925 = !DILocation(line: 1533, column: 30, scope: !926, inlinedAt: !927)
!926 = distinct !DISubprogram(name: "aofClosePipes", scope: !3, file: !3, line: 1532, type: !86, isLocal: false, isDefinition: true, scopeLine: 1532, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !8)
!927 = distinct !DILocation(line: 229, column: 5, scope: !872)
!928 = !DILocation(line: 1533, column: 40, scope: !926, inlinedAt: !927)
!929 = !{!91, !92, i64 2052}
!930 = !DILocation(line: 1533, column: 5, scope: !926, inlinedAt: !927)
!931 = !DILocation(line: 1534, column: 30, scope: !926, inlinedAt: !927)
!932 = !DILocation(line: 1534, column: 40, scope: !926, inlinedAt: !927)
!933 = !DILocation(line: 1534, column: 5, scope: !926, inlinedAt: !927)
!934 = !DILocation(line: 1535, column: 18, scope: !926, inlinedAt: !927)
!935 = !DILocation(line: 1535, column: 5, scope: !926, inlinedAt: !927)
!936 = !DILocation(line: 1536, column: 18, scope: !926, inlinedAt: !927)
!937 = !{!91, !92, i64 2044}
!938 = !DILocation(line: 1536, column: 5, scope: !926, inlinedAt: !927)
!939 = !DILocation(line: 1537, column: 18, scope: !926, inlinedAt: !927)
!940 = !{!91, !92, i64 2048}
!941 = !DILocation(line: 1537, column: 5, scope: !926, inlinedAt: !927)
!942 = !DILocation(line: 1538, column: 18, scope: !926, inlinedAt: !927)
!943 = !DILocation(line: 1538, column: 5, scope: !926, inlinedAt: !927)
!944 = !DILocation(line: 1539, column: 18, scope: !926, inlinedAt: !927)
!945 = !{!91, !92, i64 2056}
!946 = !DILocation(line: 1539, column: 5, scope: !926, inlinedAt: !927)
!947 = !DILocation(line: 1540, column: 18, scope: !926, inlinedAt: !927)
!948 = !{!91, !92, i64 2060}
!949 = !DILocation(line: 1540, column: 5, scope: !926, inlinedAt: !927)
!950 = !DILocation(line: 230, column: 1, scope: !872)
!951 = distinct !DISubprogram(name: "startAppendOnly", scope: !3, file: !3, line: 248, type: !429, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !952)
!952 = !{!953, !957, !958}
!953 = !DILocalVariable(name: "cwd", scope: !951, file: !3, line: 249, type: !954)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 1024)
!957 = !DILocalVariable(name: "newfd", scope: !951, file: !3, line: 250, type: !6)
!958 = !DILocalVariable(name: "cwdp", scope: !959, file: !3, line: 255, type: !20)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 254, column: 22)
!960 = distinct !DILexicalBlock(scope: !951, file: !3, line: 254, column: 9)
!961 = !DILocation(line: 249, column: 5, scope: !951)
!962 = !DILocation(line: 249, column: 10, scope: !951)
!963 = !DILocation(line: 252, column: 25, scope: !951)
!964 = !{!91, !95, i64 1888}
!965 = !DILocation(line: 252, column: 13, scope: !951)
!966 = !DILocation(line: 250, column: 9, scope: !951)
!967 = !DILocation(line: 253, column: 5, scope: !951)
!968 = !DILocation(line: 254, column: 15, scope: !960)
!969 = !DILocation(line: 254, column: 9, scope: !951)
!970 = !DILocation(line: 255, column: 22, scope: !959)
!971 = !DILocation(line: 255, column: 15, scope: !959)
!972 = !DILocation(line: 260, column: 20, scope: !959)
!973 = !DILocation(line: 261, column: 13, scope: !959)
!974 = !DILocation(line: 262, column: 22, scope: !959)
!975 = !DILocation(line: 262, column: 13, scope: !959)
!976 = !DILocation(line: 257, column: 9, scope: !959)
!977 = !DILocation(line: 265, column: 16, scope: !978)
!978 = distinct !DILexicalBlock(scope: !951, file: !3, line: 265, column: 9)
!979 = !{!91, !92, i64 2096}
!980 = !DILocation(line: 265, column: 30, scope: !978)
!981 = !DILocation(line: 265, column: 9, scope: !951)
!982 = !DILocation(line: 266, column: 38, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 265, column: 37)
!984 = !{!91, !92, i64 1936}
!985 = !DILocation(line: 267, column: 9, scope: !983)
!986 = !DILocation(line: 268, column: 5, scope: !983)
!987 = !DILocation(line: 272, column: 20, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 272, column: 13)
!989 = distinct !DILexicalBlock(scope: !978, file: !3, line: 268, column: 12)
!990 = !DILocation(line: 272, column: 34, scope: !988)
!991 = !DILocation(line: 272, column: 13, scope: !989)
!992 = !DILocation(line: 273, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !988, file: !3, line: 272, column: 41)
!994 = !DILocation(line: 274, column: 13, scope: !993)
!995 = !DILocation(line: 275, column: 9, scope: !993)
!996 = !DILocation(line: 276, column: 13, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !3, line: 276, column: 13)
!998 = !DILocation(line: 276, column: 47, scope: !997)
!999 = !DILocation(line: 276, column: 13, scope: !989)
!1000 = !DILocation(line: 277, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 276, column: 57)
!1002 = !DILocation(line: 278, column: 13, scope: !1001)
!1003 = !DILocation(line: 279, column: 13, scope: !1001)
!1004 = !DILocation(line: 284, column: 22, scope: !951)
!1005 = !DILocation(line: 285, column: 36, scope: !951)
!1006 = !DILocation(line: 285, column: 27, scope: !951)
!1007 = !DILocation(line: 286, column: 19, scope: !951)
!1008 = !DILocation(line: 287, column: 5, scope: !951)
!1009 = !DILocation(line: 0, scope: !1001)
!1010 = !DILocation(line: 288, column: 1, scope: !951)
!1011 = distinct !DISubprogram(name: "rewriteAppendOnlyFileBackground", scope: !3, file: !3, line: 1559, type: !429, isLocal: false, isDefinition: true, scopeLine: 1559, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1012)
!1012 = !{!1013, !1014, !1015, !1018}
!1013 = !DILocalVariable(name: "childpid", scope: !1011, file: !3, line: 1560, type: !879)
!1014 = !DILocalVariable(name: "start", scope: !1011, file: !3, line: 1561, type: !16)
!1015 = !DILocalVariable(name: "tmpfile", scope: !1016, file: !3, line: 1568, type: !883)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1567, column: 35)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1567, column: 9)
!1018 = !DILocalVariable(name: "private_dirty", scope: !1019, file: !3, line: 1575, type: !583)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1574, column: 53)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1574, column: 13)
!1021 = !DILocation(line: 1563, column: 16, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1563, column: 9)
!1023 = !DILocation(line: 1563, column: 46, scope: !1022)
!1024 = !DILocation(line: 1563, column: 36, scope: !1022)
!1025 = !DILocation(line: 1564, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1564, column: 9)
!1027 = !DILocation(line: 1564, column: 26, scope: !1026)
!1028 = !DILocation(line: 1564, column: 9, scope: !1011)
!1029 = !DILocation(line: 1565, column: 5, scope: !1011)
!1030 = !DILocation(line: 1566, column: 13, scope: !1011)
!1031 = !DILocation(line: 1561, column: 15, scope: !1011)
!1032 = !DILocation(line: 1567, column: 21, scope: !1017)
!1033 = !DILocation(line: 1560, column: 11, scope: !1011)
!1034 = !DILocation(line: 1567, column: 29, scope: !1017)
!1035 = !DILocation(line: 1567, column: 9, scope: !1011)
!1036 = !DILocation(line: 1568, column: 9, scope: !1016)
!1037 = !DILocation(line: 1568, column: 14, scope: !1016)
!1038 = !DILocation(line: 1571, column: 9, scope: !1016)
!1039 = !DILocation(line: 1572, column: 9, scope: !1016)
!1040 = !DILocation(line: 1573, column: 65, scope: !1016)
!1041 = !DILocation(line: 1573, column: 9, scope: !1016)
!1042 = !DILocation(line: 1574, column: 13, scope: !1020)
!1043 = !DILocation(line: 1574, column: 44, scope: !1020)
!1044 = !DILocation(line: 1574, column: 13, scope: !1016)
!1045 = !DILocation(line: 1575, column: 36, scope: !1019)
!1046 = !DILocation(line: 1575, column: 20, scope: !1019)
!1047 = !DILocation(line: 1577, column: 17, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1577, column: 17)
!1049 = !DILocation(line: 1577, column: 17, scope: !1019)
!1050 = !DILocation(line: 1580, column: 34, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 1577, column: 32)
!1052 = !DILocation(line: 1578, column: 17, scope: !1051)
!1053 = !DILocation(line: 1581, column: 13, scope: !1051)
!1054 = !DILocation(line: 1583, column: 45, scope: !1019)
!1055 = !{!91, !96, i64 2208}
!1056 = !DILocation(line: 1584, column: 13, scope: !1019)
!1057 = !DILocation(line: 1585, column: 13, scope: !1019)
!1058 = !DILocation(line: 1586, column: 9, scope: !1019)
!1059 = !DILocation(line: 1587, column: 13, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1586, column: 16)
!1061 = !DILocation(line: 1589, column: 5, scope: !1017)
!1062 = !DILocation(line: 1616, column: 5, scope: !1011)
!1063 = !DILocation(line: 1591, column: 33, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1589, column: 12)
!1065 = !DILocation(line: 1591, column: 41, scope: !1064)
!1066 = !DILocation(line: 1591, column: 31, scope: !1064)
!1067 = !{!91, !97, i64 1120}
!1068 = !DILocation(line: 1592, column: 42, scope: !1064)
!1069 = !DILocation(line: 1592, column: 33, scope: !1064)
!1070 = !DILocation(line: 1592, column: 64, scope: !1064)
!1071 = !DILocation(line: 1592, column: 83, scope: !1064)
!1072 = !DILocation(line: 1592, column: 76, scope: !1064)
!1073 = !DILocation(line: 1592, column: 74, scope: !1064)
!1074 = !DILocation(line: 1592, column: 98, scope: !1064)
!1075 = !DILocation(line: 1592, column: 31, scope: !1064)
!1076 = !{!91, !98, i64 1128}
!1077 = !DILocation(line: 1593, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 1593, column: 9)
!1079 = !DILocation(line: 1593, column: 9, scope: !1064)
!1080 = !DILocation(line: 1594, column: 22, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 1594, column: 13)
!1082 = !DILocation(line: 1594, column: 13, scope: !1064)
!1083 = !DILocation(line: 1595, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1594, column: 29)
!1085 = !DILocation(line: 1598, column: 26, scope: !1084)
!1086 = !DILocation(line: 1598, column: 17, scope: !1084)
!1087 = !DILocation(line: 1596, column: 13, scope: !1084)
!1088 = !DILocation(line: 1533, column: 30, scope: !926, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 1599, column: 13, scope: !1084)
!1090 = !DILocation(line: 1533, column: 40, scope: !926, inlinedAt: !1089)
!1091 = !DILocation(line: 1533, column: 5, scope: !926, inlinedAt: !1089)
!1092 = !DILocation(line: 1534, column: 30, scope: !926, inlinedAt: !1089)
!1093 = !DILocation(line: 1534, column: 40, scope: !926, inlinedAt: !1089)
!1094 = !DILocation(line: 1534, column: 5, scope: !926, inlinedAt: !1089)
!1095 = !DILocation(line: 1535, column: 18, scope: !926, inlinedAt: !1089)
!1096 = !DILocation(line: 1535, column: 5, scope: !926, inlinedAt: !1089)
!1097 = !DILocation(line: 1536, column: 18, scope: !926, inlinedAt: !1089)
!1098 = !DILocation(line: 1536, column: 5, scope: !926, inlinedAt: !1089)
!1099 = !DILocation(line: 1537, column: 18, scope: !926, inlinedAt: !1089)
!1100 = !DILocation(line: 1537, column: 5, scope: !926, inlinedAt: !1089)
!1101 = !DILocation(line: 1538, column: 18, scope: !926, inlinedAt: !1089)
!1102 = !DILocation(line: 1538, column: 5, scope: !926, inlinedAt: !1089)
!1103 = !DILocation(line: 1539, column: 18, scope: !926, inlinedAt: !1089)
!1104 = !DILocation(line: 1539, column: 5, scope: !926, inlinedAt: !1089)
!1105 = !DILocation(line: 1540, column: 18, scope: !926, inlinedAt: !1089)
!1106 = !DILocation(line: 1540, column: 5, scope: !926, inlinedAt: !1089)
!1107 = !DILocation(line: 1600, column: 13, scope: !1084)
!1108 = !DILocation(line: 1602, column: 9, scope: !1064)
!1109 = !DILocation(line: 1604, column: 38, scope: !1064)
!1110 = !DILocation(line: 1605, column: 41, scope: !1064)
!1111 = !DILocation(line: 1605, column: 39, scope: !1064)
!1112 = !DILocation(line: 1606, column: 30, scope: !1064)
!1113 = !DILocation(line: 1607, column: 9, scope: !1064)
!1114 = !DILocation(line: 1612, column: 32, scope: !1064)
!1115 = !DILocation(line: 1613, column: 9, scope: !1064)
!1116 = !DILocation(line: 1614, column: 9, scope: !1064)
!1117 = !DILocation(line: 0, scope: !1064)
!1118 = !DILocation(line: 1617, column: 1, scope: !1011)
!1119 = !DILocation(line: 297, column: 22, scope: !578)
!1120 = !DILocation(line: 297, column: 38, scope: !578)
!1121 = !DILocation(line: 297, column: 50, scope: !578)
!1122 = !DILocation(line: 298, column: 13, scope: !578)
!1123 = !DILocation(line: 298, column: 27, scope: !578)
!1124 = !DILocation(line: 301, column: 20, scope: !597)
!1125 = !DILocation(line: 303, column: 22, scope: !600)
!1126 = !DILocation(line: 303, column: 13, scope: !597)
!1127 = !DILocation(line: 304, column: 17, scope: !603)
!1128 = !DILocation(line: 304, column: 23, scope: !603)
!1129 = !DILocation(line: 304, column: 17, scope: !604)
!1130 = !DILocation(line: 307, column: 20, scope: !604)
!1131 = !DILocation(line: 307, column: 13, scope: !604)
!1132 = !DILocation(line: 310, column: 13, scope: !597)
!1133 = !DILocation(line: 311, column: 13, scope: !597)
!1134 = !DILocation(line: 312, column: 20, scope: !597)
!1135 = !DILocation(line: 0, scope: !578)
!1136 = !DILocation(line: 316, column: 1, scope: !578)
!1137 = distinct !DISubprogram(name: "catAppendOnlyGenericCommand", scope: !3, file: !3, line: 518, type: !1138, isLocal: false, isDefinition: true, scopeLine: 518, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1150)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!469, !469, !6, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !75, line: 622, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !75, line: 614, size: 128, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !75, line: 615, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !1143, file: !75, line: 616, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1143, file: !75, line: 617, baseType: !55, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1143, file: !75, line: 620, baseType: !6, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1143, file: !75, line: 621, baseType: !10, size: 64, offset: 64)
!1150 = !{!1151, !1152, !1153, !1154, !1158, !1159, !1160}
!1151 = !DILocalVariable(name: "dst", arg: 1, scope: !1137, file: !3, line: 518, type: !469)
!1152 = !DILocalVariable(name: "argc", arg: 2, scope: !1137, file: !3, line: 518, type: !6)
!1153 = !DILocalVariable(name: "argv", arg: 3, scope: !1137, file: !3, line: 518, type: !1140)
!1154 = !DILocalVariable(name: "buf", scope: !1137, file: !3, line: 519, type: !1155)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 32)
!1158 = !DILocalVariable(name: "len", scope: !1137, file: !3, line: 520, type: !6)
!1159 = !DILocalVariable(name: "j", scope: !1137, file: !3, line: 520, type: !6)
!1160 = !DILocalVariable(name: "o", scope: !1137, file: !3, line: 521, type: !1141)
!1161 = !DILocation(line: 518, column: 37, scope: !1137)
!1162 = !DILocation(line: 518, column: 46, scope: !1137)
!1163 = !DILocation(line: 518, column: 59, scope: !1137)
!1164 = !DILocation(line: 519, column: 5, scope: !1137)
!1165 = !DILocation(line: 519, column: 10, scope: !1137)
!1166 = !DILocation(line: 523, column: 12, scope: !1137)
!1167 = !DILocation(line: 524, column: 26, scope: !1137)
!1168 = !DILocation(line: 524, column: 43, scope: !1137)
!1169 = !DILocation(line: 524, column: 13, scope: !1137)
!1170 = !DILocation(line: 524, column: 12, scope: !1137)
!1171 = !DILocation(line: 520, column: 9, scope: !1137)
!1172 = !DILocation(line: 525, column: 12, scope: !1137)
!1173 = !DILocation(line: 525, column: 5, scope: !1137)
!1174 = !DILocation(line: 525, column: 16, scope: !1137)
!1175 = !DILocation(line: 526, column: 12, scope: !1137)
!1176 = !DILocation(line: 526, column: 5, scope: !1137)
!1177 = !DILocation(line: 526, column: 16, scope: !1137)
!1178 = !DILocation(line: 527, column: 29, scope: !1137)
!1179 = !DILocation(line: 527, column: 11, scope: !1137)
!1180 = !DILocation(line: 520, column: 14, scope: !1137)
!1181 = !DILocation(line: 529, column: 19, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 529, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 529, column: 5)
!1184 = !DILocation(line: 529, column: 5, scope: !1183)
!1185 = !DILocation(line: 530, column: 30, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 529, column: 32)
!1187 = !{!95, !95, i64 0}
!1188 = !DILocation(line: 530, column: 13, scope: !1186)
!1189 = !DILocation(line: 521, column: 11, scope: !1137)
!1190 = !DILocation(line: 531, column: 16, scope: !1186)
!1191 = !DILocation(line: 532, column: 57, scope: !1186)
!1192 = !{!1193, !95, i64 8}
!1193 = !{!"redisObject", !92, i64 0, !92, i64 0, !92, i64 1, !92, i64 4, !95, i64 8}
!1194 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 532, column: 47, scope: !1186)
!1196 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !1195)
!1197 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !1195)
!1198 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !1195)
!1199 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !1195)
!1200 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !1195)
!1201 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !1195)
!1202 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !1195)
!1203 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !1195)
!1204 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !1195)
!1205 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !1195)
!1206 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !1195)
!1207 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !1195)
!1208 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !1195)
!1209 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !1195)
!1210 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !1195)
!1211 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !1195)
!1212 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !1195)
!1213 = !DILocation(line: 0, scope: !485, inlinedAt: !1195)
!1214 = !DILocation(line: 532, column: 17, scope: !1186)
!1215 = !DILocation(line: 532, column: 16, scope: !1186)
!1216 = !DILocation(line: 533, column: 16, scope: !1186)
!1217 = !DILocation(line: 533, column: 9, scope: !1186)
!1218 = !DILocation(line: 533, column: 20, scope: !1186)
!1219 = !DILocation(line: 534, column: 16, scope: !1186)
!1220 = !DILocation(line: 534, column: 9, scope: !1186)
!1221 = !DILocation(line: 534, column: 20, scope: !1186)
!1222 = !DILocation(line: 535, column: 33, scope: !1186)
!1223 = !DILocation(line: 535, column: 15, scope: !1186)
!1224 = !DILocation(line: 536, column: 32, scope: !1186)
!1225 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 536, column: 36, scope: !1186)
!1227 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !1226)
!1228 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !1226)
!1229 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !1226)
!1230 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !1226)
!1231 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !1226)
!1232 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !1226)
!1233 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !1226)
!1234 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !1226)
!1235 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !1226)
!1236 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !1226)
!1237 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !1226)
!1238 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !1226)
!1239 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !1226)
!1240 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !1226)
!1241 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !1226)
!1242 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !1226)
!1243 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !1226)
!1244 = !DILocation(line: 0, scope: !485, inlinedAt: !1226)
!1245 = !DILocation(line: 536, column: 15, scope: !1186)
!1246 = !DILocation(line: 537, column: 15, scope: !1186)
!1247 = !DILocation(line: 538, column: 9, scope: !1186)
!1248 = !DILocation(line: 529, column: 28, scope: !1182)
!1249 = distinct !{!1249, !1184, !1250}
!1250 = !DILocation(line: 539, column: 5, scope: !1183)
!1251 = !DILocation(line: 0, scope: !1186)
!1252 = !DILocation(line: 541, column: 1, scope: !1137)
!1253 = !DILocation(line: 540, column: 5, scope: !1137)
!1254 = distinct !DISubprogram(name: "catAppendOnlyExpireAtCommand", scope: !3, file: !3, line: 550, type: !1255, isLocal: false, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1467)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!469, !469, !1257, !1141, !1141}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !75, line: 1307, size: 640, elements: !1259)
!1259 = !{!1260, !1261, !1453, !1454, !1455, !1456, !1462, !1463, !1464, !1465, !1466}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1258, file: !75, line: 1308, baseType: !20, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1258, file: !75, line: 1309, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !75, line: 1305, baseType: !1264)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !75, line: 780, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !75, line: 723, size: 135360, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1403, !1404, !1408, !1409, !1425, !1426, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1268, file: !75, line: 724, baseType: !63, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1268, file: !75, line: 725, baseType: !6, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1268, file: !75, line: 726, baseType: !1273, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !75, line: 656, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !75, line: 647, size: 512, elements: !1276)
!1276 = !{!1277, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1275, file: !75, line: 648, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1280, line: 82, baseType: !1281)
!1280 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1280, line: 76, size: 768, elements: !1282)
!1282 = !{!1283, !1308, !1309, !1337, !1338}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !1280, line: 77, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1280, line: 65, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1280, line: 58, size: 384, elements: !1287)
!1287 = !{!1288, !1294, !1298, !1299, !1303, !1307}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1286, file: !1280, line: 59, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!63, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1286, file: !1280, line: 60, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!10, !10, !1292}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1286, file: !1280, line: 61, baseType: !1295, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1286, file: !1280, line: 62, baseType: !1300, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!6, !10, !1292, !1292}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1286, file: !1280, line: 63, baseType: !1304, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !10, !10}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1286, file: !1280, line: 64, baseType: !1304, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !1281, file: !1280, line: 78, baseType: !10, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !1281, file: !1280, line: 79, baseType: !1310, size: 512, offset: 128)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 512, elements: !1335)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !1280, line: 74, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !1280, line: 69, size: 256, elements: !1313)
!1313 = !{!1314, !1332, !1333, !1334}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1312, file: !1280, line: 70, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1280, line: 56, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1280, line: 47, size: 192, elements: !1319)
!1319 = !{!1320, !1321, !1330}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1318, file: !1280, line: 48, baseType: !10, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1318, file: !1280, line: 54, baseType: !1322, size: 64, offset: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1280, line: 49, size: 64, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1329}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1322, file: !1280, line: 50, baseType: !10, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1322, file: !1280, line: 51, baseType: !63, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1322, file: !1280, line: 52, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !30, line: 56, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !32, line: 103, baseType: !15)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1322, file: !1280, line: 53, baseType: !23, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !1280, line: 55, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1312, file: !1280, line: 71, baseType: !17, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !1312, file: !1280, line: 72, baseType: !17, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1312, file: !1280, line: 73, baseType: !17, size: 64, offset: 192)
!1335 = !{!1336}
!1336 = !DISubrange(count: 2)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1281, file: !1280, line: 80, baseType: !15, size: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !1281, file: !1280, line: 81, baseType: !17, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1275, file: !75, line: 649, baseType: !1278, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1275, file: !75, line: 650, baseType: !1278, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1275, file: !75, line: 651, baseType: !1278, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1275, file: !75, line: 652, baseType: !1278, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1275, file: !75, line: 653, baseType: !6, size: 32, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1275, file: !75, line: 654, baseType: !16, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1275, file: !75, line: 655, baseType: !1346, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !118, line: 54, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !118, line: 47, size: 384, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1356, !1360, !1364}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1348, file: !118, line: 48, baseType: !116, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1348, file: !118, line: 49, baseType: !116, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1348, file: !118, line: 50, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!10, !10}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1348, file: !118, line: 51, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !10}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1348, file: !118, line: 52, baseType: !1361, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!6, !10, !10}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1348, file: !118, line: 53, baseType: !17, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1268, file: !75, line: 727, baseType: !1141, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1268, file: !75, line: 728, baseType: !469, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1268, file: !75, line: 729, baseType: !583, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1268, file: !75, line: 730, baseType: !469, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1268, file: !75, line: 734, baseType: !583, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1268, file: !75, line: 735, baseType: !6, size: 32, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1268, file: !75, line: 736, baseType: !1140, size: 64, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1268, file: !75, line: 737, baseType: !1257, size: 64, offset: 640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1268, file: !75, line: 737, baseType: !1257, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1268, file: !75, line: 738, baseType: !6, size: 32, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1268, file: !75, line: 739, baseType: !6, size: 32, offset: 800)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1268, file: !75, line: 740, baseType: !15, size: 64, offset: 832)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1268, file: !75, line: 741, baseType: !1346, size: 64, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1268, file: !75, line: 742, baseType: !22, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1268, file: !75, line: 743, baseType: !583, size: 64, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1268, file: !75, line: 745, baseType: !79, size: 64, offset: 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1268, file: !75, line: 746, baseType: !79, size: 64, offset: 1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1268, file: !75, line: 747, baseType: !79, size: 64, offset: 1216)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !75, line: 748, baseType: !6, size: 32, offset: 1280)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1268, file: !75, line: 749, baseType: !6, size: 32, offset: 1312)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1268, file: !75, line: 750, baseType: !6, size: 32, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1268, file: !75, line: 751, baseType: !6, size: 32, offset: 1376)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1268, file: !75, line: 752, baseType: !6, size: 32, offset: 1408)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1268, file: !75, line: 753, baseType: !1389, size: 64, offset: 1472)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !12, line: 173, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 100, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !14, line: 44, baseType: !15)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1268, file: !75, line: 754, baseType: !1389, size: 64, offset: 1536)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1268, file: !75, line: 755, baseType: !469, size: 64, offset: 1600)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1268, file: !75, line: 756, baseType: !16, size: 64, offset: 1664)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1268, file: !75, line: 757, baseType: !16, size: 64, offset: 1728)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1268, file: !75, line: 758, baseType: !16, size: 64, offset: 1792)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1268, file: !75, line: 759, baseType: !16, size: 64, offset: 1856)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1268, file: !75, line: 760, baseType: !16, size: 64, offset: 1920)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1268, file: !75, line: 763, baseType: !1400, size: 328, offset: 1984)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 328, elements: !1401)
!1401 = !{!1402}
!1402 = !DISubrange(count: 41)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1268, file: !75, line: 764, baseType: !6, size: 32, offset: 2336)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1268, file: !75, line: 765, baseType: !1405, size: 368, offset: 2368)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 368, elements: !1406)
!1406 = !{!1407}
!1407 = !DISubrange(count: 46)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1268, file: !75, line: 766, baseType: !6, size: 32, offset: 2752)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1268, file: !75, line: 767, baseType: !1410, size: 256, offset: 2816)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !75, line: 673, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !75, line: 665, size: 256, elements: !1412)
!1412 = !{!1413, !1421, !1422, !1423, !1424}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1411, file: !75, line: 666, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !75, line: 663, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !75, line: 659, size: 192, elements: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1416, file: !75, line: 660, baseType: !1140, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1416, file: !75, line: 661, baseType: !6, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1416, file: !75, line: 662, baseType: !1257, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1411, file: !75, line: 667, baseType: !6, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1411, file: !75, line: 668, baseType: !6, size: 32, offset: 96)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1411, file: !75, line: 671, baseType: !6, size: 32, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1411, file: !75, line: 672, baseType: !79, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1268, file: !75, line: 768, baseType: !6, size: 32, offset: 3072)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1268, file: !75, line: 769, baseType: !1427, size: 704, offset: 3136)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !75, line: 703, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !75, line: 677, size: 704, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1428, file: !75, line: 679, baseType: !74, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1428, file: !75, line: 683, baseType: !1278, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1428, file: !75, line: 685, baseType: !1141, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1428, file: !75, line: 689, baseType: !583, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1428, file: !75, line: 690, baseType: !1141, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1428, file: !75, line: 691, baseType: !1141, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1428, file: !75, line: 692, baseType: !74, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1428, file: !75, line: 692, baseType: !74, size: 64, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1428, file: !75, line: 693, baseType: !6, size: 32, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1428, file: !75, line: 696, baseType: !6, size: 32, offset: 544)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1428, file: !75, line: 697, baseType: !16, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1428, file: !75, line: 700, baseType: !10, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1268, file: !75, line: 770, baseType: !16, size: 64, offset: 3840)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1268, file: !75, line: 771, baseType: !1346, size: 64, offset: 3904)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1268, file: !75, line: 772, baseType: !1278, size: 64, offset: 3968)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1268, file: !75, line: 773, baseType: !1346, size: 64, offset: 4032)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1268, file: !75, line: 774, baseType: !469, size: 64, offset: 4096)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1268, file: !75, line: 775, baseType: !116, size: 64, offset: 4160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1268, file: !75, line: 778, baseType: !6, size: 32, offset: 4224)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1268, file: !75, line: 779, baseType: !1450, size: 131072, offset: 4256)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 131072, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 16384)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1258, file: !75, line: 1310, baseType: !6, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1258, file: !75, line: 1311, baseType: !20, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1258, file: !75, line: 1312, baseType: !6, size: 32, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1258, file: !75, line: 1315, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !75, line: 1306, baseType: !1459)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1461, !1257, !1140, !6, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1258, file: !75, line: 1317, baseType: !6, size: 32, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1258, file: !75, line: 1318, baseType: !6, size: 32, offset: 416)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1258, file: !75, line: 1319, baseType: !6, size: 32, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1258, file: !75, line: 1320, baseType: !16, size: 64, offset: 512)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1258, file: !75, line: 1320, baseType: !16, size: 64, offset: 576)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473}
!1468 = !DILocalVariable(name: "buf", arg: 1, scope: !1254, file: !3, line: 550, type: !469)
!1469 = !DILocalVariable(name: "cmd", arg: 2, scope: !1254, file: !3, line: 550, type: !1257)
!1470 = !DILocalVariable(name: "key", arg: 3, scope: !1254, file: !3, line: 550, type: !1141)
!1471 = !DILocalVariable(name: "seconds", arg: 4, scope: !1254, file: !3, line: 550, type: !1141)
!1472 = !DILocalVariable(name: "when", scope: !1254, file: !3, line: 551, type: !16)
!1473 = !DILocalVariable(name: "argv", scope: !1254, file: !3, line: 552, type: !1474)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 192, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 3)
!1477 = !DILocation(line: 550, column: 38, scope: !1254)
!1478 = !DILocation(line: 550, column: 64, scope: !1254)
!1479 = !DILocation(line: 550, column: 75, scope: !1254)
!1480 = !DILocation(line: 550, column: 86, scope: !1254)
!1481 = !DILocation(line: 552, column: 5, scope: !1254)
!1482 = !DILocation(line: 552, column: 11, scope: !1254)
!1483 = !DILocation(line: 555, column: 15, scope: !1254)
!1484 = !DILocation(line: 556, column: 29, scope: !1254)
!1485 = !DILocation(line: 556, column: 12, scope: !1254)
!1486 = !DILocation(line: 551, column: 15, scope: !1254)
!1487 = !DILocation(line: 558, column: 14, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 558, column: 9)
!1489 = !{!1490, !95, i64 8}
!1490 = !{!"redisCommand", !95, i64 0, !95, i64 8, !92, i64 16, !95, i64 24, !92, i64 32, !95, i64 40, !92, i64 48, !92, i64 52, !92, i64 56, !97, i64 64, !97, i64 72}
!1491 = !DILocation(line: 558, column: 19, scope: !1488)
!1492 = !DILocation(line: 558, column: 49, scope: !1488)
!1493 = !DILocation(line: 558, column: 36, scope: !1488)
!1494 = !DILocation(line: 559, column: 19, scope: !1488)
!1495 = !DILocation(line: 561, column: 14, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 560, column: 5)
!1497 = !DILocation(line: 564, column: 49, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 564, column: 9)
!1499 = !DILocation(line: 564, column: 36, scope: !1498)
!1500 = !DILocation(line: 565, column: 48, scope: !1498)
!1501 = !DILocation(line: 567, column: 17, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 566, column: 5)
!1503 = !DILocation(line: 567, column: 14, scope: !1502)
!1504 = !DILocation(line: 568, column: 5, scope: !1502)
!1505 = !DILocation(line: 0, scope: !1496)
!1506 = !DILocation(line: 569, column: 5, scope: !1254)
!1507 = !DILocation(line: 571, column: 15, scope: !1254)
!1508 = !DILocation(line: 571, column: 5, scope: !1254)
!1509 = !DILocation(line: 571, column: 13, scope: !1254)
!1510 = !DILocation(line: 572, column: 5, scope: !1254)
!1511 = !DILocation(line: 572, column: 13, scope: !1254)
!1512 = !DILocation(line: 573, column: 15, scope: !1254)
!1513 = !DILocation(line: 573, column: 5, scope: !1254)
!1514 = !DILocation(line: 573, column: 13, scope: !1254)
!1515 = !DILocation(line: 574, column: 11, scope: !1254)
!1516 = !DILocation(line: 575, column: 5, scope: !1254)
!1517 = !DILocation(line: 576, column: 5, scope: !1254)
!1518 = !DILocation(line: 578, column: 1, scope: !1254)
!1519 = !DILocation(line: 577, column: 5, scope: !1254)
!1520 = distinct !DISubprogram(name: "feedAppendOnlyFile", scope: !3, file: !3, line: 580, type: !1521, isLocal: false, isDefinition: true, scopeLine: 580, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !1257, !6, !1140, !6}
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1529, !1530, !1536, !1541, !1542}
!1524 = !DILocalVariable(name: "cmd", arg: 1, scope: !1520, file: !3, line: 580, type: !1257)
!1525 = !DILocalVariable(name: "dictid", arg: 2, scope: !1520, file: !3, line: 580, type: !6)
!1526 = !DILocalVariable(name: "argv", arg: 3, scope: !1520, file: !3, line: 580, type: !1140)
!1527 = !DILocalVariable(name: "argc", arg: 4, scope: !1520, file: !3, line: 580, type: !6)
!1528 = !DILocalVariable(name: "buf", scope: !1520, file: !3, line: 581, type: !469)
!1529 = !DILocalVariable(name: "tmpargv", scope: !1520, file: !3, line: 582, type: !1474)
!1530 = !DILocalVariable(name: "seldb", scope: !1531, file: !3, line: 587, type: !1533)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 586, column: 43)
!1532 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 586, column: 9)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 64)
!1536 = !DILocalVariable(name: "i", scope: !1537, file: !3, line: 608, type: !6)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 607, column: 53)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 607, column: 16)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 599, column: 16)
!1540 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 595, column: 9)
!1541 = !DILocalVariable(name: "exarg", scope: !1537, file: !3, line: 609, type: !1141)
!1542 = !DILocalVariable(name: "pxarg", scope: !1537, file: !3, line: 609, type: !1141)
!1543 = !DILocation(line: 580, column: 46, scope: !1520)
!1544 = !DILocation(line: 580, column: 55, scope: !1520)
!1545 = !DILocation(line: 580, column: 70, scope: !1520)
!1546 = !DILocation(line: 580, column: 80, scope: !1520)
!1547 = !DILocation(line: 581, column: 15, scope: !1520)
!1548 = !DILocation(line: 581, column: 9, scope: !1520)
!1549 = !DILocation(line: 582, column: 5, scope: !1520)
!1550 = !DILocation(line: 582, column: 11, scope: !1520)
!1551 = !DILocation(line: 586, column: 26, scope: !1532)
!1552 = !DILocation(line: 586, column: 16, scope: !1532)
!1553 = !DILocation(line: 586, column: 9, scope: !1520)
!1554 = !DILocation(line: 587, column: 9, scope: !1531)
!1555 = !DILocation(line: 587, column: 14, scope: !1531)
!1556 = !DILocation(line: 589, column: 9, scope: !1531)
!1557 = !DILocation(line: 591, column: 28, scope: !1531)
!1558 = !DILocation(line: 590, column: 15, scope: !1531)
!1559 = !DILocation(line: 592, column: 32, scope: !1531)
!1560 = !DILocation(line: 593, column: 5, scope: !1532)
!1561 = !DILocation(line: 593, column: 5, scope: !1531)
!1562 = !DILocation(line: 0, scope: !1520)
!1563 = !DILocation(line: 595, column: 14, scope: !1540)
!1564 = !DILocation(line: 595, column: 19, scope: !1540)
!1565 = !DILocation(line: 595, column: 49, scope: !1540)
!1566 = !DILocation(line: 595, column: 36, scope: !1540)
!1567 = !DILocation(line: 596, column: 19, scope: !1540)
!1568 = !DILocation(line: 598, column: 52, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 596, column: 39)
!1570 = !DILocation(line: 598, column: 60, scope: !1569)
!1571 = !DILocation(line: 598, column: 15, scope: !1569)
!1572 = !DILocation(line: 599, column: 5, scope: !1569)
!1573 = !DILocation(line: 599, column: 26, scope: !1539)
!1574 = !DILocation(line: 599, column: 55, scope: !1539)
!1575 = !DILocation(line: 599, column: 42, scope: !1539)
!1576 = !DILocation(line: 601, column: 22, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 599, column: 73)
!1578 = !DILocation(line: 601, column: 9, scope: !1577)
!1579 = !DILocation(line: 601, column: 20, scope: !1577)
!1580 = !DILocation(line: 602, column: 22, scope: !1577)
!1581 = !DILocation(line: 602, column: 9, scope: !1577)
!1582 = !DILocation(line: 602, column: 20, scope: !1577)
!1583 = !DILocation(line: 603, column: 22, scope: !1577)
!1584 = !DILocation(line: 603, column: 9, scope: !1577)
!1585 = !DILocation(line: 603, column: 20, scope: !1577)
!1586 = !DILocation(line: 604, column: 15, scope: !1577)
!1587 = !DILocation(line: 605, column: 9, scope: !1577)
!1588 = !DILocation(line: 606, column: 52, scope: !1577)
!1589 = !DILocation(line: 606, column: 60, scope: !1577)
!1590 = !DILocation(line: 606, column: 15, scope: !1577)
!1591 = !DILocation(line: 607, column: 5, scope: !1577)
!1592 = !DILocation(line: 607, column: 26, scope: !1538)
!1593 = !DILocation(line: 607, column: 48, scope: !1538)
!1594 = !DILocation(line: 607, column: 40, scope: !1538)
!1595 = !DILocation(line: 609, column: 15, scope: !1537)
!1596 = !DILocation(line: 609, column: 30, scope: !1537)
!1597 = !DILocation(line: 611, column: 15, scope: !1537)
!1598 = !DILocation(line: 608, column: 13, scope: !1537)
!1599 = !DILocation(line: 612, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 612, column: 9)
!1601 = !DILocation(line: 613, column: 29, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 613, column: 17)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 612, column: 37)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 612, column: 9)
!1605 = !DILocation(line: 613, column: 38, scope: !1602)
!1606 = !DILocation(line: 613, column: 18, scope: !1602)
!1607 = !DILocation(line: 613, column: 17, scope: !1603)
!1608 = !DILocation(line: 613, column: 64, scope: !1602)
!1609 = !DILocation(line: 613, column: 58, scope: !1602)
!1610 = !DILocation(line: 613, column: 50, scope: !1602)
!1611 = !DILocation(line: 0, scope: !1602)
!1612 = !DILocation(line: 614, column: 18, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 614, column: 17)
!1614 = !DILocation(line: 0, scope: !1604)
!1615 = !DILocation(line: 614, column: 17, scope: !1603)
!1616 = !DILocation(line: 614, column: 58, scope: !1613)
!1617 = !DILocation(line: 614, column: 50, scope: !1613)
!1618 = !DILocation(line: 0, scope: !1613)
!1619 = !DILocation(line: 612, column: 23, scope: !1604)
!1620 = distinct !{!1620, !1599, !1621}
!1621 = !DILocation(line: 615, column: 9, scope: !1600)
!1622 = !DILocation(line: 616, column: 9, scope: !1537)
!1623 = !DILocation(line: 617, column: 13, scope: !1537)
!1624 = !DILocation(line: 618, column: 59, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 617, column: 13)
!1626 = !{!91, !95, i64 968}
!1627 = !DILocation(line: 618, column: 73, scope: !1625)
!1628 = !DILocation(line: 618, column: 19, scope: !1625)
!1629 = !DILocation(line: 618, column: 13, scope: !1625)
!1630 = !DILocation(line: 0, scope: !1537)
!1631 = !DILocation(line: 620, column: 13, scope: !1537)
!1632 = !DILocation(line: 621, column: 59, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 620, column: 13)
!1634 = !{!91, !95, i64 976}
!1635 = !DILocation(line: 621, column: 74, scope: !1633)
!1636 = !DILocation(line: 621, column: 19, scope: !1633)
!1637 = !DILocation(line: 621, column: 13, scope: !1633)
!1638 = !DILocation(line: 627, column: 15, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 623, column: 12)
!1640 = !DILocation(line: 0, scope: !1639)
!1641 = !DILocation(line: 633, column: 16, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 633, column: 9)
!1643 = !DILocation(line: 633, column: 26, scope: !1642)
!1644 = !DILocation(line: 633, column: 9, scope: !1520)
!1645 = !DILocation(line: 634, column: 43, scope: !1642)
!1646 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 634, column: 55, scope: !1642)
!1648 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !1647)
!1649 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !1647)
!1650 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !1647)
!1651 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !1647)
!1652 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !1647)
!1653 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !1647)
!1654 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !1647)
!1655 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !1647)
!1656 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !1647)
!1657 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !1647)
!1658 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !1647)
!1659 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !1647)
!1660 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !1647)
!1661 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !1647)
!1662 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !1647)
!1663 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !1647)
!1664 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !1647)
!1665 = !DILocation(line: 0, scope: !485, inlinedAt: !1647)
!1666 = !DILocation(line: 634, column: 26, scope: !1642)
!1667 = !DILocation(line: 634, column: 24, scope: !1642)
!1668 = !DILocation(line: 634, column: 9, scope: !1642)
!1669 = !DILocation(line: 640, column: 16, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 640, column: 9)
!1671 = !DILocation(line: 640, column: 30, scope: !1670)
!1672 = !DILocation(line: 640, column: 9, scope: !1520)
!1673 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 641, column: 52, scope: !1670)
!1675 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !1674)
!1676 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !1674)
!1677 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !1674)
!1678 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !1674)
!1679 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !1674)
!1680 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !1674)
!1681 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !1674)
!1682 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !1674)
!1683 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !1674)
!1684 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !1674)
!1685 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !1674)
!1686 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !1674)
!1687 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !1674)
!1688 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !1674)
!1689 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !1674)
!1690 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !1674)
!1691 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !1674)
!1692 = !DILocation(line: 0, scope: !485, inlinedAt: !1674)
!1693 = !DILocation(line: 641, column: 9, scope: !1670)
!1694 = !DILocation(line: 643, column: 5, scope: !1520)
!1695 = !DILocation(line: 644, column: 1, scope: !1520)
!1696 = distinct !DISubprogram(name: "createFakeClient", scope: !3, file: !3, line: 652, type: !1697, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1700)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "c", scope: !1696, file: !3, line: 653, type: !1699)
!1702 = !DILocation(line: 653, column: 24, scope: !1696)
!1703 = !DILocation(line: 653, column: 20, scope: !1696)
!1704 = !DILocation(line: 655, column: 5, scope: !1696)
!1705 = !DILocation(line: 656, column: 8, scope: !1696)
!1706 = !DILocation(line: 656, column: 11, scope: !1696)
!1707 = !{!1708, !92, i64 8}
!1708 = !{!"client", !96, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !95, i64 48, !96, i64 56, !92, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !92, i64 96, !92, i64 100, !96, i64 104, !95, i64 112, !97, i64 120, !96, i64 128, !96, i64 136, !96, i64 144, !96, i64 152, !92, i64 160, !92, i64 164, !92, i64 168, !92, i64 172, !92, i64 176, !96, i64 184, !96, i64 192, !95, i64 200, !97, i64 208, !97, i64 216, !97, i64 224, !97, i64 232, !97, i64 240, !93, i64 248, !92, i64 292, !93, i64 296, !92, i64 344, !1709, i64 352, !92, i64 384, !1710, i64 392, !97, i64 480, !95, i64 488, !95, i64 496, !95, i64 504, !95, i64 512, !95, i64 520, !92, i64 528, !93, i64 532}
!1709 = !{!"multiState", !95, i64 0, !92, i64 8, !92, i64 12, !92, i64 16, !96, i64 24}
!1710 = !{!"blockingState", !97, i64 0, !95, i64 8, !95, i64 16, !96, i64 24, !95, i64 32, !95, i64 40, !97, i64 48, !97, i64 56, !92, i64 64, !92, i64 68, !97, i64 72, !95, i64 80}
!1711 = !DILocation(line: 657, column: 8, scope: !1696)
!1712 = !DILocation(line: 657, column: 13, scope: !1696)
!1713 = !{!1708, !95, i64 24}
!1714 = !DILocation(line: 658, column: 19, scope: !1696)
!1715 = !DILocation(line: 658, column: 8, scope: !1696)
!1716 = !DILocation(line: 658, column: 17, scope: !1696)
!1717 = !{!1708, !95, i64 32}
!1718 = !DILocation(line: 659, column: 8, scope: !1696)
!1719 = !DILocation(line: 659, column: 22, scope: !1696)
!1720 = !{!1708, !96, i64 56}
!1721 = !DILocation(line: 660, column: 8, scope: !1696)
!1722 = !DILocation(line: 660, column: 13, scope: !1696)
!1723 = !{!1708, !92, i64 64}
!1724 = !DILocation(line: 661, column: 8, scope: !1696)
!1725 = !DILocation(line: 661, column: 13, scope: !1696)
!1726 = !{!1708, !95, i64 72}
!1727 = !DILocation(line: 662, column: 8, scope: !1696)
!1728 = !DILocation(line: 662, column: 15, scope: !1696)
!1729 = !{!1708, !92, i64 528}
!1730 = !DILocation(line: 663, column: 8, scope: !1696)
!1731 = !DILocation(line: 663, column: 14, scope: !1696)
!1732 = !{!1708, !92, i64 160}
!1733 = !DILocation(line: 664, column: 8, scope: !1696)
!1734 = !DILocation(line: 664, column: 14, scope: !1696)
!1735 = !{!1708, !92, i64 384}
!1736 = !DILocation(line: 667, column: 8, scope: !1696)
!1737 = !DILocation(line: 667, column: 18, scope: !1696)
!1738 = !{!1708, !92, i64 168}
!1739 = !DILocation(line: 668, column: 16, scope: !1696)
!1740 = !DILocation(line: 668, column: 8, scope: !1696)
!1741 = !DILocation(line: 668, column: 14, scope: !1696)
!1742 = !{!1708, !95, i64 112}
!1743 = !DILocation(line: 669, column: 8, scope: !1696)
!1744 = !DILocation(line: 669, column: 20, scope: !1696)
!1745 = !{!1708, !97, i64 120}
!1746 = !DILocation(line: 670, column: 8, scope: !1696)
!1747 = !DILocation(line: 670, column: 37, scope: !1696)
!1748 = !{!1708, !96, i64 152}
!1749 = !DILocation(line: 671, column: 23, scope: !1696)
!1750 = !DILocation(line: 671, column: 8, scope: !1696)
!1751 = !DILocation(line: 671, column: 21, scope: !1696)
!1752 = !{!1708, !95, i64 488}
!1753 = !DILocation(line: 672, column: 8, scope: !1696)
!1754 = !DILocation(line: 672, column: 15, scope: !1696)
!1755 = !{!1708, !95, i64 512}
!1756 = !DILocation(line: 673, column: 5, scope: !1696)
!1757 = !DILocation(line: 674, column: 5, scope: !1696)
!1758 = !{!109, !95, i64 16}
!1759 = !DILocation(line: 675, column: 5, scope: !1696)
!1760 = !DILocation(line: 676, column: 5, scope: !1696)
!1761 = distinct !DISubprogram(name: "freeFakeClientArgv", scope: !3, file: !3, line: 679, type: !1762, isLocal: false, isDefinition: true, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1699}
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "c", arg: 1, scope: !1761, file: !3, line: 679, type: !1699)
!1766 = !DILocalVariable(name: "j", scope: !1761, file: !3, line: 680, type: !6)
!1767 = !DILocation(line: 679, column: 40, scope: !1761)
!1768 = !DILocation(line: 680, column: 9, scope: !1761)
!1769 = !DILocation(line: 682, column: 24, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 682, column: 5)
!1771 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 682, column: 5)
!1772 = !DILocation(line: 682, column: 19, scope: !1770)
!1773 = !DILocation(line: 0, scope: !1761)
!1774 = !DILocation(line: 682, column: 5, scope: !1771)
!1775 = !DILocation(line: 683, column: 22, scope: !1770)
!1776 = !DILocation(line: 683, column: 9, scope: !1770)
!1777 = !DILocation(line: 682, column: 31, scope: !1770)
!1778 = distinct !{!1778, !1774, !1779}
!1779 = !DILocation(line: 683, column: 32, scope: !1771)
!1780 = !DILocation(line: 684, column: 11, scope: !1761)
!1781 = !DILocation(line: 684, column: 5, scope: !1761)
!1782 = !DILocation(line: 685, column: 1, scope: !1761)
!1783 = distinct !DISubprogram(name: "freeFakeClient", scope: !3, file: !3, line: 687, type: !1762, isLocal: false, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1784)
!1784 = !{!1785}
!1785 = !DILocalVariable(name: "c", arg: 1, scope: !1783, file: !3, line: 687, type: !1699)
!1786 = !DILocation(line: 687, column: 36, scope: !1783)
!1787 = !DILocation(line: 688, column: 16, scope: !1783)
!1788 = !DILocation(line: 688, column: 5, scope: !1783)
!1789 = !DILocation(line: 689, column: 20, scope: !1783)
!1790 = !DILocation(line: 689, column: 5, scope: !1783)
!1791 = !DILocation(line: 690, column: 20, scope: !1783)
!1792 = !DILocation(line: 690, column: 5, scope: !1783)
!1793 = !DILocation(line: 691, column: 5, scope: !1783)
!1794 = !DILocation(line: 692, column: 11, scope: !1783)
!1795 = !DILocation(line: 692, column: 5, scope: !1783)
!1796 = !DILocation(line: 693, column: 1, scope: !1783)
!1797 = distinct !DISubprogram(name: "loadAppendOnlyFile", scope: !3, file: !3, line: 698, type: !1798, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!6, !20}
!1800 = !{!1801, !1802, !1803, !2003, !2040, !2041, !2042, !2043, !2044, !2048, !2101, !2103, !2104, !2105, !2106, !2110, !2111}
!1801 = !DILocalVariable(name: "filename", arg: 1, scope: !1797, file: !3, line: 698, type: !20)
!1802 = !DILocalVariable(name: "fakeClient", scope: !1797, file: !3, line: 699, type: !1699)
!1803 = !DILocalVariable(name: "fp", scope: !1797, file: !3, line: 700, type: !1804)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1806, line: 66, baseType: !1807)
!1806 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1808, line: 287, baseType: !1809)
!1808 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1808, line: 181, size: 1408, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1816, !1817, !1822, !1823, !1824, !1973, !1977, !1982, !1986, !1987, !1988, !1989, !1991, !1993, !1994, !1995, !1996, !1997, !2001, !2002}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1809, file: !1808, line: 182, baseType: !18, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1809, file: !1808, line: 183, baseType: !6, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1809, file: !1808, line: 184, baseType: !6, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1809, file: !1808, line: 185, baseType: !1815, size: 16, offset: 128)
!1815 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1809, file: !1808, line: 186, baseType: !1815, size: 16, offset: 144)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1809, file: !1808, line: 187, baseType: !1818, size: 128, offset: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1808, line: 117, size: 128, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1818, file: !1808, line: 118, baseType: !18, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1818, file: !1808, line: 119, baseType: !6, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1809, file: !1808, line: 188, baseType: !6, size: 32, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1809, file: !1808, line: 195, baseType: !10, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1809, file: !1808, line: 197, baseType: !1825, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!13, !1828, !10, !20, !6}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !1808, line: 569, size: 14912, elements: !1830)
!1830 = !{!1831, !1832, !1834, !1835, !1836, !1837, !1841, !1842, !1845, !1846, !1850, !1864, !1865, !1866, !1868, !1869, !1870, !1943, !1960, !1961, !1964, !1971}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1829, file: !1808, line: 571, baseType: !6, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1829, file: !1808, line: 576, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1829, file: !1808, line: 576, baseType: !1833, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1829, file: !1808, line: 576, baseType: !1833, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1829, file: !1808, line: 578, baseType: !6, size: 32, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1829, file: !1808, line: 579, baseType: !1838, size: 200, offset: 288)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 200, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 25)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1829, file: !1808, line: 582, baseType: !6, size: 32, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1829, file: !1808, line: 583, baseType: !1843, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !1808, line: 40, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1829, file: !1808, line: 585, baseType: !6, size: 32, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1829, file: !1808, line: 587, baseType: !1847, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1828}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1829, file: !1808, line: 590, baseType: !1851, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !1808, line: 47, size: 256, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1852, file: !1808, line: 49, baseType: !1851, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1852, file: !1808, line: 50, baseType: !6, size: 32, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1852, file: !1808, line: 50, baseType: !6, size: 32, offset: 96)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1852, file: !1808, line: 50, baseType: !6, size: 32, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1852, file: !1808, line: 50, baseType: !6, size: 32, offset: 160)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1852, file: !1808, line: 51, baseType: !1860, size: 32, offset: 192)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, size: 32, elements: !1862)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !1808, line: 25, baseType: !55)
!1862 = !{!1863}
!1863 = !DISubrange(count: 1)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1829, file: !1808, line: 591, baseType: !6, size: 32, offset: 832)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1829, file: !1808, line: 592, baseType: !1851, size: 64, offset: 896)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1829, file: !1808, line: 593, baseType: !1867, size: 64, offset: 960)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1829, file: !1808, line: 596, baseType: !6, size: 32, offset: 1024)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1829, file: !1808, line: 597, baseType: !20, size: 64, offset: 1088)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !1829, file: !1808, line: 632, baseType: !1871, size: 2880, offset: 1152)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1808, line: 599, size: 2880, elements: !1872)
!1872 = !{!1873, !1934}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1871, file: !1808, line: 622, baseType: !1874, size: 1728)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1808, line: 601, size: 1728, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1882, !1894, !1895, !1896, !1903, !1917, !1918, !1919, !1923, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1874, file: !1808, line: 603, baseType: !55, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1874, file: !1808, line: 604, baseType: !20, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1874, file: !1808, line: 605, baseType: !1879, size: 208, offset: 128)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 208, elements: !1880)
!1880 = !{!1881}
!1881 = !DISubrange(count: 26)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1874, file: !1808, line: 606, baseType: !1883, size: 288, offset: 352)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !1808, line: 55, size: 288, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1883, file: !1808, line: 57, baseType: !6, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1883, file: !1808, line: 58, baseType: !6, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1883, file: !1808, line: 59, baseType: !6, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1883, file: !1808, line: 60, baseType: !6, size: 32, offset: 96)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1883, file: !1808, line: 61, baseType: !6, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1883, file: !1808, line: 62, baseType: !6, size: 32, offset: 160)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1883, file: !1808, line: 63, baseType: !6, size: 32, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1883, file: !1808, line: 64, baseType: !6, size: 32, offset: 224)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1883, file: !1808, line: 65, baseType: !6, size: 32, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1874, file: !1808, line: 607, baseType: !6, size: 32, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1874, file: !1808, line: 608, baseType: !22, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1874, file: !1808, line: 609, baseType: !1897, size: 112, offset: 768)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !1808, line: 319, size: 112, elements: !1898)
!1898 = !{!1899, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1897, file: !1808, line: 320, baseType: !1900, size: 48)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, elements: !1475)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1897, file: !1808, line: 321, baseType: !1900, size: 48, offset: 48)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1897, file: !1808, line: 322, baseType: !45, size: 16, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1874, file: !1808, line: 610, baseType: !1904, size: 64, offset: 896)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !14, line: 171, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 163, size: 64, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1905, file: !14, line: 165, baseType: !6, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1905, file: !14, line: 170, baseType: !1909, size: 32, offset: 32)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1905, file: !14, line: 166, size: 32, elements: !1910)
!1910 = !{!1911, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1909, file: !14, line: 168, baseType: !1912, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !467, line: 124, baseType: !55)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1909, file: !14, line: 169, baseType: !1914, size: 32)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !1915)
!1915 = !{!1916}
!1916 = !DISubrange(count: 4)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1874, file: !1808, line: 611, baseType: !1904, size: 64, offset: 960)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1874, file: !1808, line: 612, baseType: !1904, size: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1874, file: !1808, line: 613, baseType: !1920, size: 64, offset: 1088)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 8)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1874, file: !1808, line: 614, baseType: !1924, size: 192, offset: 1152)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !1925)
!1925 = !{!1926}
!1926 = !DISubrange(count: 24)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1874, file: !1808, line: 615, baseType: !6, size: 32, offset: 1344)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1874, file: !1808, line: 616, baseType: !1904, size: 64, offset: 1376)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1874, file: !1808, line: 617, baseType: !1904, size: 64, offset: 1440)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1874, file: !1808, line: 618, baseType: !1904, size: 64, offset: 1504)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1874, file: !1808, line: 619, baseType: !1904, size: 64, offset: 1568)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1874, file: !1808, line: 620, baseType: !1904, size: 64, offset: 1632)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1874, file: !1808, line: 621, baseType: !6, size: 32, offset: 1696)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1871, file: !1808, line: 631, baseType: !1935, size: 2880)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1808, line: 626, size: 2880, elements: !1936)
!1936 = !{!1937, !1941}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !1935, file: !1808, line: 629, baseType: !1938, size: 1920)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !1939)
!1939 = !{!1940}
!1940 = !DISubrange(count: 30)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !1935, file: !1808, line: 630, baseType: !1942, size: 960, offset: 1920)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 960, elements: !1939)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1829, file: !1808, line: 636, baseType: !1944, size: 64, offset: 4032)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !1808, line: 93, size: 6336, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1952}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1945, file: !1808, line: 94, baseType: !1944, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1945, file: !1808, line: 95, baseType: !6, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1945, file: !1808, line: 97, baseType: !1950, size: 2048, offset: 128)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1951, size: 2048, elements: !1156)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !1945, file: !1808, line: 98, baseType: !1953, size: 4160, offset: 2176)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !1808, line: 74, size: 4160, elements: !1954)
!1954 = !{!1955, !1957, !1958, !1959}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1953, file: !1808, line: 75, baseType: !1956, size: 2048)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !1156)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1953, file: !1808, line: 76, baseType: !1956, size: 2048, offset: 2048)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1953, file: !1808, line: 78, baseType: !1861, size: 32, offset: 4096)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1953, file: !1808, line: 81, baseType: !1861, size: 32, offset: 4128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1829, file: !1808, line: 637, baseType: !1945, size: 6336, offset: 4096)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1829, file: !1808, line: 641, baseType: !1962, size: 64, offset: 10432)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1829, file: !1808, line: 646, baseType: !1965, size: 192, offset: 10496)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !1808, line: 291, size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1965, file: !1808, line: 293, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1965, file: !1808, line: 294, baseType: !6, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1965, file: !1808, line: 295, baseType: !1833, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1829, file: !1808, line: 648, baseType: !1972, size: 4224, offset: 10688)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1807, size: 4224, elements: !1475)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1809, file: !1808, line: 199, baseType: !1974, size: 64, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!13, !1828, !10, !581, !6}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1809, file: !1808, line: 202, baseType: !1978, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1981, !1828, !10, !1981, !6}
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !14, line: 114, baseType: !15)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1809, file: !1808, line: 203, baseType: !1983, size: 64, offset: 640)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!6, !1828, !10}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1809, file: !1808, line: 206, baseType: !1818, size: 128, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !1809, file: !1808, line: 207, baseType: !18, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1809, file: !1808, line: 208, baseType: !6, size: 32, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1809, file: !1808, line: 211, baseType: !1990, size: 24, offset: 928)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !1475)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1809, file: !1808, line: 212, baseType: !1992, size: 8, offset: 952)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !1862)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1809, file: !1808, line: 215, baseType: !1818, size: 128, offset: 960)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1809, file: !1808, line: 218, baseType: !6, size: 32, offset: 1088)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1809, file: !1808, line: 219, baseType: !1391, size: 64, offset: 1152)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1809, file: !1808, line: 222, baseType: !1828, size: 64, offset: 1216)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1809, file: !1808, line: 226, baseType: !1998, size: 32, offset: 1280)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !14, line: 175, baseType: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !2000, line: 12, baseType: !6)
!2000 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !1809, file: !1808, line: 228, baseType: !1904, size: 64, offset: 1312)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1809, file: !1808, line: 229, baseType: !6, size: 32, offset: 1376)
!2003 = !DILocalVariable(name: "sb", scope: !1797, file: !3, line: 701, type: !2004)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2005, line: 27, size: 704, elements: !2006)
!2005 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2006 = !{!2007, !2010, !2013, !2016, !2019, !2022, !2025, !2026, !2027, !2032, !2033, !2034, !2037}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2004, file: !2005, line: 29, baseType: !2008, size: 16)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 177, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !14, line: 54, baseType: !1815)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2004, file: !2005, line: 30, baseType: !2011, size: 16, offset: 16)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !12, line: 155, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !14, line: 73, baseType: !45)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2004, file: !2005, line: 31, baseType: !2014, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !12, line: 205, baseType: !2015)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !14, line: 88, baseType: !54)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2004, file: !2005, line: 32, baseType: !2017, size: 16, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !12, line: 210, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !14, line: 210, baseType: !45)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2004, file: !2005, line: 33, baseType: !2020, size: 16, offset: 80)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !12, line: 181, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !14, line: 58, baseType: !45)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2004, file: !2005, line: 34, baseType: !2023, size: 16, offset: 96)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !12, line: 185, baseType: !2024)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !14, line: 61, baseType: !45)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2004, file: !2005, line: 35, baseType: !2008, size: 16, offset: 112)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2004, file: !2005, line: 36, baseType: !1389, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2004, file: !2005, line: 37, baseType: !2028, size: 128, offset: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !80, line: 52, size: 128, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2028, file: !80, line: 53, baseType: !79, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2028, file: !80, line: 54, baseType: !15, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2004, file: !2005, line: 38, baseType: !2028, size: 128, offset: 320)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2004, file: !2005, line: 39, baseType: !2028, size: 128, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2004, file: !2005, line: 40, baseType: !2035, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !12, line: 118, baseType: !2036)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !14, line: 32, baseType: !15)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2004, file: !2005, line: 41, baseType: !2038, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !12, line: 113, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !14, line: 28, baseType: !15)
!2040 = !DILocalVariable(name: "old_aof_state", scope: !1797, file: !3, line: 702, type: !6)
!2041 = !DILocalVariable(name: "loops", scope: !1797, file: !3, line: 703, type: !15)
!2042 = !DILocalVariable(name: "valid_up_to", scope: !1797, file: !3, line: 704, type: !1389)
!2043 = !DILocalVariable(name: "valid_before_multi", scope: !1797, file: !3, line: 705, type: !1389)
!2044 = !DILocalVariable(name: "sig", scope: !1797, file: !3, line: 732, type: !2045)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !2046)
!2046 = !{!2047}
!2047 = !DISubrange(count: 5)
!2048 = !DILocalVariable(name: "rdb", scope: !2049, file: !3, line: 738, type: !2051)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 736, column: 12)
!2050 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 733, column: 9)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2052, line: 87, baseType: !2053)
!2052 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2052, line: 39, size: 832, elements: !2054)
!2054 = !{!2055, !2060, !2064, !2068, !2072, !2076, !2077, !2078, !2079}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2053, file: !2052, line: 43, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!466, !2059, !10, !466}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2053, file: !2052, line: 44, baseType: !2061, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!466, !2059, !1292, !466}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2053, file: !2052, line: 45, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!1389, !2059}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2053, file: !2052, line: 46, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!6, !2059}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2053, file: !2052, line: 52, baseType: !2073, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2059, !1292, !466}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2053, file: !2052, line: 55, baseType: !63, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2053, file: !2052, line: 58, baseType: !466, size: 64, offset: 384)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2053, file: !2052, line: 61, baseType: !466, size: 64, offset: 448)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2053, file: !2052, line: 84, baseType: !2080, size: 320, offset: 512)
!2080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2052, line: 64, size: 320, elements: !2081)
!2081 = !{!2082, !2087, !2093}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2080, file: !2052, line: 69, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2052, line: 66, size: 128, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2083, file: !2052, line: 67, baseType: !469, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2083, file: !2052, line: 68, baseType: !1389, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2080, file: !2052, line: 75, baseType: !2088, size: 192)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2052, line: 71, size: 192, elements: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2088, file: !2052, line: 72, baseType: !1804, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2088, file: !2052, line: 73, baseType: !1389, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2088, file: !2052, line: 74, baseType: !1389, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !2080, file: !2052, line: 83, baseType: !2094, size: 320)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2080, file: !2052, line: 77, size: 320, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099, !2100}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !2094, file: !2052, line: 78, baseType: !1461, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2094, file: !2052, line: 79, baseType: !1461, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !2094, file: !2052, line: 80, baseType: !6, size: 32, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2094, file: !2052, line: 81, baseType: !1389, size: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2094, file: !2052, line: 82, baseType: !469, size: 64, offset: 256)
!2101 = !DILocalVariable(name: "argc", scope: !2102, file: !3, line: 753, type: !6)
!2102 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 752, column: 14)
!2103 = !DILocalVariable(name: "j", scope: !2102, file: !3, line: 753, type: !6)
!2104 = !DILocalVariable(name: "len", scope: !2102, file: !3, line: 754, type: !17)
!2105 = !DILocalVariable(name: "argv", scope: !2102, file: !3, line: 755, type: !1140)
!2106 = !DILocalVariable(name: "buf", scope: !2102, file: !3, line: 756, type: !2107)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 128)
!2110 = !DILocalVariable(name: "argsds", scope: !2102, file: !3, line: 757, type: !469)
!2111 = !DILocalVariable(name: "cmd", scope: !2102, file: !3, line: 758, type: !1257)
!2112 = !DILocation(line: 698, column: 30, scope: !1797)
!2113 = !DILocation(line: 700, column: 16, scope: !1797)
!2114 = !DILocation(line: 700, column: 11, scope: !1797)
!2115 = !DILocation(line: 701, column: 5, scope: !1797)
!2116 = !DILocation(line: 702, column: 32, scope: !1797)
!2117 = !DILocation(line: 702, column: 9, scope: !1797)
!2118 = !DILocation(line: 703, column: 10, scope: !1797)
!2119 = !DILocation(line: 704, column: 11, scope: !1797)
!2120 = !DILocation(line: 705, column: 11, scope: !1797)
!2121 = !DILocation(line: 707, column: 12, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 707, column: 9)
!2123 = !DILocation(line: 707, column: 9, scope: !1797)
!2124 = !DILocation(line: 708, column: 101, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 707, column: 21)
!2126 = !DILocation(line: 708, column: 92, scope: !2125)
!2127 = !DILocation(line: 708, column: 9, scope: !2125)
!2128 = !DILocation(line: 709, column: 9, scope: !2125)
!2129 = !DILocation(line: 716, column: 27, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 716, column: 9)
!2131 = !DILocation(line: 701, column: 23, scope: !1797)
!2132 = !DILocation(line: 716, column: 15, scope: !2130)
!2133 = !DILocation(line: 716, column: 43, scope: !2130)
!2134 = !DILocation(line: 716, column: 49, scope: !2130)
!2135 = !DILocation(line: 716, column: 55, scope: !2130)
!2136 = !{!2137, !96, i64 16}
!2137 = !{!"stat", !493, i64 0, !493, i64 2, !92, i64 4, !493, i64 8, !493, i64 10, !493, i64 12, !493, i64 14, !96, i64 16, !2138, i64 24, !2138, i64 40, !2138, i64 56, !96, i64 72, !96, i64 80}
!2138 = !{!"timespec", !96, i64 0, !96, i64 8}
!2139 = !DILocation(line: 716, column: 63, scope: !2130)
!2140 = !DILocation(line: 716, column: 9, scope: !1797)
!2141 = !DILocation(line: 717, column: 33, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 716, column: 69)
!2143 = !DILocation(line: 719, column: 9, scope: !2142)
!2144 = !DILocation(line: 720, column: 9, scope: !2142)
!2145 = !DILocation(line: 725, column: 22, scope: !1797)
!2146 = !DILocation(line: 653, column: 24, scope: !1696, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 727, column: 18, scope: !1797)
!2148 = !DILocation(line: 653, column: 20, scope: !1696, inlinedAt: !2147)
!2149 = !DILocation(line: 655, column: 5, scope: !1696, inlinedAt: !2147)
!2150 = !DILocation(line: 656, column: 8, scope: !1696, inlinedAt: !2147)
!2151 = !DILocation(line: 656, column: 11, scope: !1696, inlinedAt: !2147)
!2152 = !DILocation(line: 657, column: 8, scope: !1696, inlinedAt: !2147)
!2153 = !DILocation(line: 657, column: 13, scope: !1696, inlinedAt: !2147)
!2154 = !DILocation(line: 658, column: 19, scope: !1696, inlinedAt: !2147)
!2155 = !DILocation(line: 658, column: 8, scope: !1696, inlinedAt: !2147)
!2156 = !DILocation(line: 658, column: 17, scope: !1696, inlinedAt: !2147)
!2157 = !DILocation(line: 659, column: 8, scope: !1696, inlinedAt: !2147)
!2158 = !DILocation(line: 659, column: 22, scope: !1696, inlinedAt: !2147)
!2159 = !DILocation(line: 660, column: 8, scope: !1696, inlinedAt: !2147)
!2160 = !DILocation(line: 660, column: 13, scope: !1696, inlinedAt: !2147)
!2161 = !DILocation(line: 661, column: 8, scope: !1696, inlinedAt: !2147)
!2162 = !DILocation(line: 661, column: 13, scope: !1696, inlinedAt: !2147)
!2163 = !DILocation(line: 662, column: 8, scope: !1696, inlinedAt: !2147)
!2164 = !DILocation(line: 662, column: 15, scope: !1696, inlinedAt: !2147)
!2165 = !DILocation(line: 663, column: 8, scope: !1696, inlinedAt: !2147)
!2166 = !DILocation(line: 663, column: 14, scope: !1696, inlinedAt: !2147)
!2167 = !DILocation(line: 664, column: 8, scope: !1696, inlinedAt: !2147)
!2168 = !DILocation(line: 664, column: 14, scope: !1696, inlinedAt: !2147)
!2169 = !DILocation(line: 667, column: 8, scope: !1696, inlinedAt: !2147)
!2170 = !DILocation(line: 667, column: 18, scope: !1696, inlinedAt: !2147)
!2171 = !DILocation(line: 668, column: 16, scope: !1696, inlinedAt: !2147)
!2172 = !DILocation(line: 668, column: 8, scope: !1696, inlinedAt: !2147)
!2173 = !DILocation(line: 668, column: 14, scope: !1696, inlinedAt: !2147)
!2174 = !DILocation(line: 669, column: 8, scope: !1696, inlinedAt: !2147)
!2175 = !DILocation(line: 669, column: 20, scope: !1696, inlinedAt: !2147)
!2176 = !DILocation(line: 670, column: 8, scope: !1696, inlinedAt: !2147)
!2177 = !DILocation(line: 670, column: 37, scope: !1696, inlinedAt: !2147)
!2178 = !DILocation(line: 671, column: 23, scope: !1696, inlinedAt: !2147)
!2179 = !DILocation(line: 671, column: 8, scope: !1696, inlinedAt: !2147)
!2180 = !DILocation(line: 671, column: 21, scope: !1696, inlinedAt: !2147)
!2181 = !DILocation(line: 672, column: 8, scope: !1696, inlinedAt: !2147)
!2182 = !DILocation(line: 672, column: 15, scope: !1696, inlinedAt: !2147)
!2183 = !DILocation(line: 673, column: 5, scope: !1696, inlinedAt: !2147)
!2184 = !DILocation(line: 674, column: 5, scope: !1696, inlinedAt: !2147)
!2185 = !DILocation(line: 675, column: 5, scope: !1696, inlinedAt: !2147)
!2186 = !DILocation(line: 699, column: 20, scope: !1797)
!2187 = !DILocation(line: 728, column: 5, scope: !1797)
!2188 = !DILocation(line: 732, column: 5, scope: !1797)
!2189 = !DILocation(line: 732, column: 10, scope: !1797)
!2190 = !DILocation(line: 733, column: 9, scope: !2050)
!2191 = !DILocation(line: 733, column: 27, scope: !2050)
!2192 = !DILocation(line: 733, column: 32, scope: !2050)
!2193 = !DILocation(line: 733, column: 35, scope: !2050)
!2194 = !DILocation(line: 733, column: 57, scope: !2050)
!2195 = !DILocation(line: 733, column: 9, scope: !1797)
!2196 = !DILocation(line: 735, column: 13, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 735, column: 13)
!2198 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 733, column: 63)
!2199 = !DILocation(line: 735, column: 34, scope: !2197)
!2200 = !DILocation(line: 735, column: 13, scope: !2198)
!2201 = !DILocation(line: 738, column: 9, scope: !2049)
!2202 = !DILocation(line: 740, column: 9, scope: !2049)
!2203 = !DILocation(line: 741, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 741, column: 13)
!2205 = !DILocation(line: 741, column: 34, scope: !2204)
!2206 = !DILocation(line: 741, column: 13, scope: !2049)
!2207 = !DILocation(line: 738, column: 13, scope: !2049)
!2208 = !DILocation(line: 742, column: 9, scope: !2049)
!2209 = !DILocation(line: 743, column: 13, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 743, column: 13)
!2211 = !DILocation(line: 743, column: 37, scope: !2210)
!2212 = !DILocation(line: 743, column: 13, scope: !2049)
!2213 = !DILocation(line: 744, column: 13, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 743, column: 46)
!2215 = !DILocation(line: 745, column: 13, scope: !2214)
!2216 = !DILocation(line: 749, column: 5, scope: !2050)
!2217 = !DILocation(line: 747, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 746, column: 16)
!2219 = !DILocation(line: 752, column: 5, scope: !1797)
!2220 = !DILocation(line: 0, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 761, column: 13)
!2222 = !DILocation(line: 756, column: 9, scope: !2102)
!2223 = !DILocation(line: 756, column: 14, scope: !2102)
!2224 = !DILocation(line: 761, column: 20, scope: !2221)
!2225 = !DILocation(line: 761, column: 23, scope: !2221)
!2226 = !DILocation(line: 761, column: 13, scope: !2102)
!2227 = !DILocation(line: 762, column: 29, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 761, column: 32)
!2229 = !DILocation(line: 762, column: 13, scope: !2228)
!2230 = !DILocation(line: 763, column: 13, scope: !2228)
!2231 = !DILocation(line: 764, column: 9, scope: !2228)
!2232 = !DILocation(line: 766, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 766, column: 13)
!2234 = !DILocation(line: 766, column: 39, scope: !2233)
!2235 = !DILocation(line: 766, column: 13, scope: !2102)
!2236 = !DILocation(line: 767, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 767, column: 17)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 766, column: 48)
!2239 = !{!2240, !493, i64 16}
!2240 = !{!"__sFILE", !95, i64 0, !92, i64 8, !92, i64 12, !493, i64 16, !493, i64 18, !2241, i64 24, !92, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !2241, i64 88, !95, i64 104, !92, i64 112, !93, i64 116, !93, i64 119, !2241, i64 120, !92, i64 136, !96, i64 144, !95, i64 152, !92, i64 160, !2242, i64 164, !92, i64 172}
!2241 = !{!"__sbuf", !95, i64 0, !92, i64 8}
!2242 = !{!"", !92, i64 0, !93, i64 4}
!2243 = !DILocation(line: 770, column: 17, scope: !2237)
!2244 = !DILocation(line: 772, column: 13, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 772, column: 13)
!2246 = !DILocation(line: 772, column: 20, scope: !2245)
!2247 = !DILocation(line: 772, column: 13, scope: !2102)
!2248 = !DILocation(line: 773, column: 13, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 773, column: 13)
!2250 = !DILocation(line: 773, column: 20, scope: !2249)
!2251 = !DILocation(line: 773, column: 13, scope: !2102)
!2252 = !DILocation(line: 774, column: 16, scope: !2102)
!2253 = !DILocation(line: 753, column: 13, scope: !2102)
!2254 = !DILocation(line: 775, column: 18, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 775, column: 13)
!2256 = !DILocation(line: 775, column: 13, scope: !2102)
!2257 = !DILocation(line: 777, column: 38, scope: !2102)
!2258 = !DILocation(line: 777, column: 37, scope: !2102)
!2259 = !DILocation(line: 777, column: 16, scope: !2102)
!2260 = !DILocation(line: 755, column: 16, scope: !2102)
!2261 = !DILocation(line: 778, column: 26, scope: !2102)
!2262 = !DILocation(line: 779, column: 26, scope: !2102)
!2263 = !DILocation(line: 753, column: 19, scope: !2102)
!2264 = !DILocation(line: 781, column: 14, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 781, column: 9)
!2266 = !DILocation(line: 0, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 781, column: 9)
!2268 = !DILocation(line: 781, column: 23, scope: !2267)
!2269 = !DILocation(line: 781, column: 9, scope: !2265)
!2270 = !DILocation(line: 782, column: 17, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 782, column: 17)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 781, column: 36)
!2273 = !DILocation(line: 782, column: 43, scope: !2271)
!2274 = !DILocation(line: 782, column: 17, scope: !2272)
!2275 = !DILocation(line: 783, column: 34, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 782, column: 52)
!2277 = !DILocation(line: 679, column: 40, scope: !1761, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 784, column: 17, scope: !2276)
!2279 = !DILocation(line: 680, column: 9, scope: !1761, inlinedAt: !2278)
!2280 = !DILocation(line: 682, column: 19, scope: !1770, inlinedAt: !2278)
!2281 = !DILocation(line: 0, scope: !1761, inlinedAt: !2278)
!2282 = !DILocation(line: 682, column: 5, scope: !1771, inlinedAt: !2278)
!2283 = !DILocation(line: 683, column: 22, scope: !1770, inlinedAt: !2278)
!2284 = !DILocation(line: 683, column: 9, scope: !1770, inlinedAt: !2278)
!2285 = !DILocation(line: 682, column: 31, scope: !1770, inlinedAt: !2278)
!2286 = !DILocation(line: 682, column: 24, scope: !1770, inlinedAt: !2278)
!2287 = !DILocation(line: 684, column: 11, scope: !1761, inlinedAt: !2278)
!2288 = !DILocation(line: 684, column: 5, scope: !1761, inlinedAt: !2278)
!2289 = !DILocation(line: 785, column: 17, scope: !2276)
!2290 = !DILocation(line: 787, column: 17, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 787, column: 17)
!2292 = !DILocation(line: 787, column: 24, scope: !2291)
!2293 = !DILocation(line: 787, column: 17, scope: !2272)
!2294 = !DILocation(line: 788, column: 19, scope: !2272)
!2295 = !DILocation(line: 754, column: 23, scope: !2102)
!2296 = !DILocation(line: 789, column: 32, scope: !2272)
!2297 = !DILocation(line: 789, column: 22, scope: !2272)
!2298 = !DILocation(line: 757, column: 13, scope: !2102)
!2299 = !DILocation(line: 790, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 790, column: 17)
!2301 = !DILocation(line: 790, column: 21, scope: !2300)
!2302 = !DILocation(line: 790, column: 24, scope: !2300)
!2303 = !DILocation(line: 790, column: 47, scope: !2300)
!2304 = !DILocation(line: 790, column: 17, scope: !2272)
!2305 = !DILocation(line: 791, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 790, column: 53)
!2307 = !DILocation(line: 792, column: 34, scope: !2306)
!2308 = !DILocation(line: 679, column: 40, scope: !1761, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 793, column: 17, scope: !2306)
!2310 = !DILocation(line: 680, column: 9, scope: !1761, inlinedAt: !2309)
!2311 = !DILocation(line: 682, column: 19, scope: !1770, inlinedAt: !2309)
!2312 = !DILocation(line: 0, scope: !1761, inlinedAt: !2309)
!2313 = !DILocation(line: 682, column: 5, scope: !1771, inlinedAt: !2309)
!2314 = !DILocation(line: 683, column: 22, scope: !1770, inlinedAt: !2309)
!2315 = !DILocation(line: 683, column: 9, scope: !1770, inlinedAt: !2309)
!2316 = !DILocation(line: 682, column: 31, scope: !1770, inlinedAt: !2309)
!2317 = !DILocation(line: 682, column: 24, scope: !1770, inlinedAt: !2309)
!2318 = !DILocation(line: 684, column: 11, scope: !1761, inlinedAt: !2309)
!2319 = !DILocation(line: 684, column: 5, scope: !1761, inlinedAt: !2309)
!2320 = !DILocation(line: 794, column: 17, scope: !2306)
!2321 = !DILocation(line: 796, column: 23, scope: !2272)
!2322 = !DILocation(line: 796, column: 13, scope: !2272)
!2323 = !DILocation(line: 796, column: 21, scope: !2272)
!2324 = !DILocation(line: 797, column: 17, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 797, column: 17)
!2326 = !DILocation(line: 797, column: 35, scope: !2325)
!2327 = !DILocation(line: 797, column: 17, scope: !2272)
!2328 = distinct !{!2328, !2269, !2329}
!2329 = !DILocation(line: 802, column: 9, scope: !2265)
!2330 = !DILocation(line: 798, column: 34, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 797, column: 41)
!2332 = !DILocation(line: 679, column: 40, scope: !1761, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 799, column: 17, scope: !2331)
!2334 = !DILocation(line: 680, column: 9, scope: !1761, inlinedAt: !2333)
!2335 = !DILocation(line: 0, scope: !1761, inlinedAt: !2333)
!2336 = !DILocation(line: 682, column: 5, scope: !1771, inlinedAt: !2333)
!2337 = !DILocation(line: 683, column: 22, scope: !1770, inlinedAt: !2333)
!2338 = !DILocation(line: 683, column: 9, scope: !1770, inlinedAt: !2333)
!2339 = !DILocation(line: 682, column: 31, scope: !1770, inlinedAt: !2333)
!2340 = !DILocation(line: 682, column: 24, scope: !1770, inlinedAt: !2333)
!2341 = !DILocation(line: 682, column: 19, scope: !1770, inlinedAt: !2333)
!2342 = !DILocation(line: 684, column: 11, scope: !1761, inlinedAt: !2333)
!2343 = !DILocation(line: 684, column: 5, scope: !1761, inlinedAt: !2333)
!2344 = !DILocation(line: 800, column: 17, scope: !2331)
!2345 = !DILocation(line: 805, column: 29, scope: !2102)
!2346 = !DILocation(line: 805, column: 38, scope: !2102)
!2347 = !DILocation(line: 805, column: 15, scope: !2102)
!2348 = !DILocation(line: 758, column: 30, scope: !2102)
!2349 = !DILocation(line: 806, column: 14, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 806, column: 13)
!2351 = !DILocation(line: 806, column: 13, scope: !2102)
!2352 = !DILocation(line: 809, column: 24, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 806, column: 19)
!2354 = !DILocation(line: 809, column: 33, scope: !2353)
!2355 = !DILocation(line: 807, column: 13, scope: !2353)
!2356 = !DILocation(line: 810, column: 13, scope: !2353)
!2357 = !DILocation(line: 813, column: 27, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 813, column: 13)
!2359 = !{!91, !95, i64 904}
!2360 = !DILocation(line: 813, column: 17, scope: !2358)
!2361 = !DILocation(line: 813, column: 13, scope: !2102)
!2362 = !DILocation(line: 816, column: 25, scope: !2102)
!2363 = !{!1708, !95, i64 80}
!2364 = !DILocation(line: 817, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 817, column: 13)
!2366 = !DILocation(line: 817, column: 31, scope: !2365)
!2367 = !DILocation(line: 0, scope: !2365)
!2368 = !DILocation(line: 817, column: 46, scope: !2365)
!2369 = !DILocation(line: 818, column: 35, scope: !2365)
!2370 = !DILocation(line: 817, column: 13, scope: !2102)
!2371 = !DILocation(line: 820, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 819, column: 9)
!2373 = !DILocation(line: 821, column: 9, scope: !2372)
!2374 = !DILocation(line: 822, column: 18, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 821, column: 16)
!2376 = !DILocation(line: 822, column: 13, scope: !2375)
!2377 = !DILocation(line: 826, column: 9, scope: !2102)
!2378 = !DILocation(line: 830, column: 9, scope: !2102)
!2379 = !DILocation(line: 679, column: 40, scope: !1761, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 834, column: 9, scope: !2102)
!2381 = !DILocation(line: 680, column: 9, scope: !1761, inlinedAt: !2380)
!2382 = !DILocation(line: 682, column: 24, scope: !1770, inlinedAt: !2380)
!2383 = !DILocation(line: 682, column: 19, scope: !1770, inlinedAt: !2380)
!2384 = !DILocation(line: 0, scope: !1761, inlinedAt: !2380)
!2385 = !DILocation(line: 682, column: 5, scope: !1771, inlinedAt: !2380)
!2386 = !DILocation(line: 683, column: 22, scope: !1770, inlinedAt: !2380)
!2387 = !DILocation(line: 683, column: 9, scope: !1770, inlinedAt: !2380)
!2388 = !DILocation(line: 682, column: 31, scope: !1770, inlinedAt: !2380)
!2389 = !DILocation(line: 684, column: 11, scope: !1761, inlinedAt: !2380)
!2390 = !DILocation(line: 684, column: 5, scope: !1761, inlinedAt: !2380)
!2391 = !DILocation(line: 835, column: 25, scope: !2102)
!2392 = !DILocation(line: 836, column: 20, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 836, column: 13)
!2394 = !{!91, !92, i64 2032}
!2395 = !DILocation(line: 836, column: 13, scope: !2393)
!2396 = !DILocation(line: 836, column: 13, scope: !2102)
!2397 = !DILocation(line: 836, column: 54, scope: !2393)
!2398 = !DILocation(line: 836, column: 40, scope: !2393)
!2399 = !DILocation(line: 837, column: 5, scope: !1797)
!2400 = !DILocation(line: 897, column: 9, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 897, column: 9)
!2402 = !DILocation(line: 897, column: 9, scope: !1797)
!2403 = !DILocation(line: 0, scope: !2358)
!2404 = !DILocation(line: 0, scope: !2393)
!2405 = distinct !{!2405, !2219, !2399}
!2406 = !DILocation(line: 843, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 843, column: 9)
!2408 = !DILocation(line: 843, column: 27, scope: !2407)
!2409 = !DILocation(line: 843, column: 9, scope: !1797)
!2410 = !DILocation(line: 844, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 843, column: 43)
!2412 = !DILocation(line: 847, column: 9, scope: !2411)
!2413 = !DILocation(line: 851, column: 5, scope: !1797)
!2414 = !DILocation(line: 687, column: 36, scope: !1783, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 852, column: 5, scope: !1797)
!2416 = !DILocation(line: 688, column: 16, scope: !1783, inlinedAt: !2415)
!2417 = !DILocation(line: 688, column: 5, scope: !1783, inlinedAt: !2415)
!2418 = !DILocation(line: 689, column: 20, scope: !1783, inlinedAt: !2415)
!2419 = !DILocation(line: 689, column: 5, scope: !1783, inlinedAt: !2415)
!2420 = !DILocation(line: 690, column: 20, scope: !1783, inlinedAt: !2415)
!2421 = !DILocation(line: 690, column: 5, scope: !1783, inlinedAt: !2415)
!2422 = !DILocation(line: 691, column: 5, scope: !1783, inlinedAt: !2415)
!2423 = !DILocation(line: 692, column: 5, scope: !1783, inlinedAt: !2415)
!2424 = !DILocation(line: 853, column: 22, scope: !1797)
!2425 = !DILocation(line: 854, column: 5, scope: !1797)
!2426 = !DILocation(line: 855, column: 5, scope: !1797)
!2427 = !DILocation(line: 856, column: 43, scope: !1797)
!2428 = !DILocation(line: 856, column: 34, scope: !1797)
!2429 = !{!91, !96, i64 1912}
!2430 = !DILocation(line: 857, column: 29, scope: !1797)
!2431 = !DILocation(line: 858, column: 5, scope: !1797)
!2432 = !DILocation(line: 861, column: 10, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 861, column: 9)
!2434 = !DILocation(line: 861, column: 9, scope: !1797)
!2435 = !DILocation(line: 862, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 862, column: 13)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 861, column: 20)
!2438 = !DILocation(line: 862, column: 13, scope: !2437)
!2439 = !DILocation(line: 687, column: 36, scope: !1783, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 862, column: 25, scope: !2436)
!2441 = !DILocation(line: 688, column: 16, scope: !1783, inlinedAt: !2440)
!2442 = !DILocation(line: 688, column: 5, scope: !1783, inlinedAt: !2440)
!2443 = !DILocation(line: 689, column: 20, scope: !1783, inlinedAt: !2440)
!2444 = !DILocation(line: 689, column: 5, scope: !1783, inlinedAt: !2440)
!2445 = !DILocation(line: 690, column: 20, scope: !1783, inlinedAt: !2440)
!2446 = !DILocation(line: 690, column: 5, scope: !1783, inlinedAt: !2440)
!2447 = !DILocation(line: 691, column: 5, scope: !1783, inlinedAt: !2440)
!2448 = !DILocation(line: 692, column: 5, scope: !1783, inlinedAt: !2440)
!2449 = !DILocation(line: 862, column: 25, scope: !2436)
!2450 = !DILocation(line: 863, column: 95, scope: !2437)
!2451 = !DILocation(line: 863, column: 86, scope: !2437)
!2452 = !DILocation(line: 863, column: 9, scope: !2437)
!2453 = !DILocation(line: 864, column: 9, scope: !2437)
!2454 = !DILocation(line: 0, scope: !2411)
!2455 = !DILocation(line: 868, column: 16, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 868, column: 9)
!2457 = !DILocation(line: 868, column: 9, scope: !2456)
!2458 = !DILocation(line: 868, column: 9, scope: !1797)
!2459 = !DILocation(line: 869, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 868, column: 36)
!2461 = !DILocation(line: 870, column: 9, scope: !2460)
!2462 = !DILocation(line: 872, column: 25, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 872, column: 13)
!2464 = !DILocation(line: 872, column: 31, scope: !2463)
!2465 = !DILocation(line: 872, column: 34, scope: !2463)
!2466 = !DILocation(line: 872, column: 65, scope: !2463)
!2467 = !DILocation(line: 872, column: 13, scope: !2460)
!2468 = !DILocation(line: 874, column: 17, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 873, column: 36)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 873, column: 17)
!2471 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 872, column: 72)
!2472 = !DILocation(line: 875, column: 13, scope: !2469)
!2473 = !DILocation(line: 877, column: 30, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 875, column: 20)
!2475 = !DILocation(line: 877, column: 21, scope: !2474)
!2476 = !DILocation(line: 876, column: 17, scope: !2474)
!2477 = !DILocation(line: 882, column: 24, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 882, column: 17)
!2479 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 879, column: 16)
!2480 = !DILocation(line: 882, column: 31, scope: !2478)
!2481 = !DILocation(line: 882, column: 37, scope: !2478)
!2482 = !DILocation(line: 882, column: 40, scope: !2478)
!2483 = !DILocation(line: 882, column: 72, scope: !2478)
!2484 = !DILocation(line: 882, column: 17, scope: !2479)
!2485 = !DILocation(line: 884, column: 30, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 882, column: 79)
!2487 = !DILocation(line: 884, column: 21, scope: !2486)
!2488 = !DILocation(line: 883, column: 17, scope: !2486)
!2489 = !DILocation(line: 886, column: 17, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 885, column: 20)
!2491 = !DILocation(line: 888, column: 17, scope: !2490)
!2492 = !DILocation(line: 892, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 892, column: 9)
!2494 = !DILocation(line: 892, column: 9, scope: !1797)
!2495 = !DILocation(line: 687, column: 36, scope: !1783, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 892, column: 21, scope: !2493)
!2497 = !DILocation(line: 688, column: 16, scope: !1783, inlinedAt: !2496)
!2498 = !DILocation(line: 688, column: 5, scope: !1783, inlinedAt: !2496)
!2499 = !DILocation(line: 689, column: 20, scope: !1783, inlinedAt: !2496)
!2500 = !DILocation(line: 689, column: 5, scope: !1783, inlinedAt: !2496)
!2501 = !DILocation(line: 690, column: 20, scope: !1783, inlinedAt: !2496)
!2502 = !DILocation(line: 690, column: 5, scope: !1783, inlinedAt: !2496)
!2503 = !DILocation(line: 691, column: 5, scope: !1783, inlinedAt: !2496)
!2504 = !DILocation(line: 692, column: 5, scope: !1783, inlinedAt: !2496)
!2505 = !DILocation(line: 892, column: 21, scope: !2493)
!2506 = !DILocation(line: 893, column: 5, scope: !1797)
!2507 = !DILocation(line: 894, column: 5, scope: !1797)
!2508 = !DILocation(line: 687, column: 36, scope: !1783, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 897, column: 21, scope: !2401)
!2510 = !DILocation(line: 688, column: 16, scope: !1783, inlinedAt: !2509)
!2511 = !DILocation(line: 688, column: 5, scope: !1783, inlinedAt: !2509)
!2512 = !DILocation(line: 689, column: 20, scope: !1783, inlinedAt: !2509)
!2513 = !DILocation(line: 689, column: 5, scope: !1783, inlinedAt: !2509)
!2514 = !DILocation(line: 690, column: 20, scope: !1783, inlinedAt: !2509)
!2515 = !DILocation(line: 690, column: 5, scope: !1783, inlinedAt: !2509)
!2516 = !DILocation(line: 691, column: 5, scope: !1783, inlinedAt: !2509)
!2517 = !DILocation(line: 692, column: 5, scope: !1783, inlinedAt: !2509)
!2518 = !DILocation(line: 897, column: 21, scope: !2401)
!2519 = !DILocation(line: 898, column: 5, scope: !1797)
!2520 = !DILocation(line: 899, column: 5, scope: !1797)
!2521 = !DILocation(line: 900, column: 1, scope: !1797)
!2522 = !DILocation(line: 0, scope: !1797)
!2523 = distinct !DISubprogram(name: "aofUpdateCurrentSize", scope: !3, file: !3, line: 1643, type: !86, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2524)
!2524 = !{!2525, !2526}
!2525 = !DILocalVariable(name: "sb", scope: !2523, file: !3, line: 1644, type: !2004)
!2526 = !DILocalVariable(name: "latency", scope: !2523, file: !3, line: 1645, type: !74)
!2527 = !DILocation(line: 1644, column: 5, scope: !2523)
!2528 = !DILocation(line: 1647, column: 5, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1647, column: 5)
!2530 = !DILocation(line: 1647, column: 5, scope: !2523)
!2531 = !DILocation(line: 1647, column: 5, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1647, column: 5)
!2533 = !DILocation(line: 1645, column: 14, scope: !2523)
!2534 = !DILocation(line: 1648, column: 28, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1648, column: 9)
!2536 = !DILocation(line: 1644, column: 23, scope: !2523)
!2537 = !DILocation(line: 1648, column: 9, scope: !2535)
!2538 = !DILocation(line: 1648, column: 40, scope: !2535)
!2539 = !DILocation(line: 1648, column: 9, scope: !2523)
!2540 = !DILocation(line: 1650, column: 22, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1648, column: 47)
!2542 = !DILocation(line: 1650, column: 13, scope: !2541)
!2543 = !DILocation(line: 1649, column: 9, scope: !2541)
!2544 = !DILocation(line: 1651, column: 5, scope: !2541)
!2545 = !DILocation(line: 1652, column: 38, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1651, column: 12)
!2547 = !DILocation(line: 1652, column: 33, scope: !2546)
!2548 = !DILocation(line: 1654, column: 5, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1654, column: 5)
!2550 = !DILocation(line: 1654, column: 5, scope: !2523)
!2551 = !DILocation(line: 1654, column: 5, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1654, column: 5)
!2553 = !DILocation(line: 1655, column: 5, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1655, column: 5)
!2555 = !DILocation(line: 1656, column: 1, scope: !2523)
!2556 = distinct !DISubprogram(name: "rioWriteBulkObject", scope: !3, file: !3, line: 908, type: !2557, isLocal: false, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2560)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!6, !2559, !1141}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2560 = !{!2561, !2562}
!2561 = !DILocalVariable(name: "r", arg: 1, scope: !2556, file: !3, line: 908, type: !2559)
!2562 = !DILocalVariable(name: "obj", arg: 2, scope: !2556, file: !3, line: 908, type: !1141)
!2563 = !DILocation(line: 908, column: 29, scope: !2556)
!2564 = !DILocation(line: 908, column: 38, scope: !2556)
!2565 = !DILocation(line: 911, column: 14, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 911, column: 9)
!2567 = !DILocation(line: 911, column: 9, scope: !2556)
!2568 = !DILocation(line: 912, column: 50, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 911, column: 44)
!2570 = !DILocation(line: 912, column: 16, scope: !2569)
!2571 = !DILocation(line: 912, column: 9, scope: !2569)
!2572 = !DILocation(line: 914, column: 42, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 913, column: 39)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 913, column: 16)
!2575 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 914, column: 46, scope: !2573)
!2577 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !2576)
!2578 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !2576)
!2579 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !2576)
!2580 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !2576)
!2581 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !2576)
!2582 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !2576)
!2583 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !2576)
!2584 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !2576)
!2585 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !2576)
!2586 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !2576)
!2587 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !2576)
!2588 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !2576)
!2589 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !2576)
!2590 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !2576)
!2591 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !2576)
!2592 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !2576)
!2593 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !2576)
!2594 = !DILocation(line: 0, scope: !485, inlinedAt: !2576)
!2595 = !DILocation(line: 914, column: 16, scope: !2573)
!2596 = !DILocation(line: 914, column: 9, scope: !2573)
!2597 = !DILocation(line: 916, column: 9, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 915, column: 12)
!2599 = !DILocation(line: 0, scope: !2573)
!2600 = !DILocation(line: 918, column: 1, scope: !2556)
!2601 = distinct !DISubprogram(name: "rewriteListObject", scope: !3, file: !3, line: 922, type: !2602, isLocal: false, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!6, !2559, !1141, !1141}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2639, !2651, !2662}
!2605 = !DILocalVariable(name: "r", arg: 1, scope: !2601, file: !3, line: 922, type: !2559)
!2606 = !DILocalVariable(name: "key", arg: 2, scope: !2601, file: !3, line: 922, type: !1141)
!2607 = !DILocalVariable(name: "o", arg: 3, scope: !2601, file: !3, line: 922, type: !1141)
!2608 = !DILocalVariable(name: "count", scope: !2601, file: !3, line: 923, type: !16)
!2609 = !DILocalVariable(name: "items", scope: !2601, file: !3, line: 923, type: !16)
!2610 = !DILocalVariable(name: "list", scope: !2611, file: !3, line: 926, type: !2613)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 925, column: 48)
!2612 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 925, column: 9)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !2615, line: 80, baseType: !2616)
!2615 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !2615, line: 73, size: 320, elements: !2617)
!2617 = !{!2618, !2634, !2635, !2636, !2637, !2638}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2616, file: !2615, line: 74, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !2615, line: 55, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !2615, line: 44, size: 256, elements: !2622)
!2622 = !{!2623, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2621, file: !2615, line: 45, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2621, file: !2615, line: 46, baseType: !2624, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !2621, file: !2615, line: 47, baseType: !18, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2621, file: !2615, line: 48, baseType: !55, size: 32, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2621, file: !2615, line: 49, baseType: !55, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !2621, file: !2615, line: 50, baseType: !55, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2621, file: !2615, line: 51, baseType: !55, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !2621, file: !2615, line: 52, baseType: !55, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !2621, file: !2615, line: 53, baseType: !55, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2621, file: !2615, line: 54, baseType: !55, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2616, file: !2615, line: 75, baseType: !2619, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2616, file: !2615, line: 76, baseType: !17, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2616, file: !2615, line: 77, baseType: !17, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !2616, file: !2615, line: 78, baseType: !6, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !2616, file: !2615, line: 79, baseType: !55, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!2639 = !DILocalVariable(name: "li", scope: !2611, file: !3, line: 927, type: !2640)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !2615, line: 88, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !2615, line: 82, size: 320, elements: !2643)
!2643 = !{!2644, !2647, !2648, !2649, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2642, file: !2615, line: 83, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2642, file: !2615, line: 84, baseType: !2619, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2642, file: !2615, line: 85, baseType: !18, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2642, file: !2615, line: 86, baseType: !15, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !2642, file: !2615, line: 87, baseType: !6, size: 32, offset: 256)
!2651 = !DILocalVariable(name: "entry", scope: !2611, file: !3, line: 928, type: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !2615, line: 98, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !2615, line: 90, size: 384, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !2653, file: !2615, line: 91, baseType: !2645, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2653, file: !2615, line: 92, baseType: !2619, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !2653, file: !2615, line: 93, baseType: !18, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2653, file: !2615, line: 94, baseType: !18, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !2653, file: !2615, line: 95, baseType: !16, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2653, file: !2615, line: 96, baseType: !55, size: 32, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2653, file: !2615, line: 97, baseType: !6, size: 32, offset: 352)
!2662 = !DILocalVariable(name: "cmd_items", scope: !2663, file: !3, line: 932, type: !6)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 931, column: 29)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 931, column: 17)
!2665 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 930, column: 42)
!2666 = !DILocation(line: 922, column: 28, scope: !2601)
!2667 = !DILocation(line: 922, column: 37, scope: !2601)
!2668 = !DILocation(line: 922, column: 48, scope: !2601)
!2669 = !DILocation(line: 923, column: 15, scope: !2601)
!2670 = !DILocation(line: 923, column: 34, scope: !2601)
!2671 = !DILocation(line: 923, column: 26, scope: !2601)
!2672 = !DILocation(line: 925, column: 12, scope: !2612)
!2673 = !DILocation(line: 925, column: 21, scope: !2612)
!2674 = !DILocation(line: 925, column: 9, scope: !2601)
!2675 = !DILocation(line: 926, column: 30, scope: !2611)
!2676 = !DILocation(line: 926, column: 20, scope: !2611)
!2677 = !DILocation(line: 927, column: 29, scope: !2611)
!2678 = !DILocation(line: 927, column: 24, scope: !2611)
!2679 = !DILocation(line: 928, column: 9, scope: !2611)
!2680 = !DILocation(line: 928, column: 24, scope: !2611)
!2681 = !DILocation(line: 930, column: 16, scope: !2611)
!2682 = !DILocation(line: 930, column: 9, scope: !2611)
!2683 = !DILocation(line: 931, column: 23, scope: !2664)
!2684 = !DILocation(line: 931, column: 17, scope: !2665)
!2685 = !DILocation(line: 932, column: 33, scope: !2663)
!2686 = !DILocation(line: 934, column: 45, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 934, column: 21)
!2688 = !DILocation(line: 934, column: 21, scope: !2687)
!2689 = !DILocation(line: 934, column: 58, scope: !2687)
!2690 = !DILocation(line: 934, column: 21, scope: !2663)
!2691 = !DILocation(line: 935, column: 21, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 935, column: 21)
!2693 = !DILocation(line: 935, column: 53, scope: !2692)
!2694 = !DILocation(line: 935, column: 21, scope: !2663)
!2695 = !DILocation(line: 936, column: 21, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 936, column: 21)
!2697 = !DILocation(line: 936, column: 47, scope: !2696)
!2698 = !DILocation(line: 939, column: 23, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 939, column: 17)
!2700 = !{!2701, !95, i64 24}
!2701 = !{!"quicklistEntry", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !97, i64 32, !92, i64 40, !92, i64 44}
!2702 = !DILocation(line: 939, column: 17, scope: !2699)
!2703 = !DILocation(line: 939, column: 17, scope: !2665)
!2704 = !DILocation(line: 940, column: 67, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 940, column: 21)
!2706 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 939, column: 30)
!2707 = !{!2701, !92, i64 40}
!2708 = !DILocation(line: 940, column: 61, scope: !2705)
!2709 = !DILocation(line: 940, column: 21, scope: !2705)
!2710 = !DILocation(line: 940, column: 71, scope: !2705)
!2711 = !DILocation(line: 940, column: 21, scope: !2706)
!2712 = !DILocation(line: 942, column: 50, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 942, column: 21)
!2714 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 941, column: 20)
!2715 = !{!2701, !97, i64 32}
!2716 = !DILocation(line: 942, column: 21, scope: !2713)
!2717 = !DILocation(line: 942, column: 59, scope: !2713)
!2718 = !DILocation(line: 942, column: 21, scope: !2714)
!2719 = !DILocation(line: 944, column: 17, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 944, column: 17)
!2721 = !DILocation(line: 944, column: 25, scope: !2720)
!2722 = !DILocation(line: 944, column: 17, scope: !2665)
!2723 = !DILocation(line: 945, column: 18, scope: !2665)
!2724 = distinct !{!2724, !2682, !2725}
!2725 = !DILocation(line: 946, column: 9, scope: !2611)
!2726 = !DILocation(line: 948, column: 5, scope: !2612)
!2727 = !DILocation(line: 947, column: 9, scope: !2611)
!2728 = !DILocation(line: 952, column: 1, scope: !2601)
!2729 = !DILocation(line: 949, column: 9, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 948, column: 12)
!2731 = distinct !DISubprogram(name: "rewriteSetObject", scope: !3, file: !3, line: 956, type: !2602, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2741, !2742, !2746, !2760, !2761, !2763}
!2733 = !DILocalVariable(name: "r", arg: 1, scope: !2731, file: !3, line: 956, type: !2559)
!2734 = !DILocalVariable(name: "key", arg: 2, scope: !2731, file: !3, line: 956, type: !1141)
!2735 = !DILocalVariable(name: "o", arg: 3, scope: !2731, file: !3, line: 956, type: !1141)
!2736 = !DILocalVariable(name: "count", scope: !2731, file: !3, line: 957, type: !16)
!2737 = !DILocalVariable(name: "items", scope: !2731, file: !3, line: 957, type: !16)
!2738 = !DILocalVariable(name: "ii", scope: !2739, file: !3, line: 960, type: !6)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 959, column: 45)
!2740 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 959, column: 9)
!2741 = !DILocalVariable(name: "llval", scope: !2739, file: !3, line: 961, type: !1327)
!2742 = !DILocalVariable(name: "cmd_items", scope: !2743, file: !3, line: 965, type: !6)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 964, column: 29)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 964, column: 17)
!2745 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 963, column: 46)
!2746 = !DILocalVariable(name: "di", scope: !2747, file: !3, line: 977, type: !2749)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 976, column: 48)
!2748 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 976, column: 16)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !1280, line: 95, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !1280, line: 88, size: 384, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2751, file: !1280, line: 89, baseType: !1278, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2751, file: !1280, line: 90, baseType: !15, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2751, file: !1280, line: 91, baseType: !6, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !2751, file: !1280, line: 91, baseType: !6, size: 32, offset: 160)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2751, file: !1280, line: 92, baseType: !1316, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !2751, file: !1280, line: 92, baseType: !1316, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !2751, file: !1280, line: 94, baseType: !16, size: 64, offset: 320)
!2760 = !DILocalVariable(name: "de", scope: !2747, file: !3, line: 978, type: !1316)
!2761 = !DILocalVariable(name: "ele", scope: !2762, file: !3, line: 981, type: !469)
!2762 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 980, column: 44)
!2763 = !DILocalVariable(name: "cmd_items", scope: !2764, file: !3, line: 983, type: !6)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 982, column: 29)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 982, column: 17)
!2766 = !DILocation(line: 956, column: 27, scope: !2731)
!2767 = !DILocation(line: 956, column: 36, scope: !2731)
!2768 = !DILocation(line: 956, column: 47, scope: !2731)
!2769 = !DILocation(line: 957, column: 15, scope: !2731)
!2770 = !DILocation(line: 957, column: 34, scope: !2731)
!2771 = !DILocation(line: 957, column: 26, scope: !2731)
!2772 = !DILocation(line: 959, column: 12, scope: !2740)
!2773 = !DILocation(line: 959, column: 9, scope: !2731)
!2774 = !DILocation(line: 960, column: 13, scope: !2739)
!2775 = !DILocation(line: 961, column: 9, scope: !2739)
!2776 = !DILocation(line: 963, column: 28, scope: !2739)
!2777 = !DILocation(line: 961, column: 17, scope: !2739)
!2778 = !DILocation(line: 963, column: 15, scope: !2739)
!2779 = !DILocation(line: 963, column: 9, scope: !2739)
!2780 = !DILocation(line: 964, column: 23, scope: !2744)
!2781 = !DILocation(line: 964, column: 17, scope: !2745)
!2782 = !DILocation(line: 965, column: 33, scope: !2743)
!2783 = !DILocation(line: 968, column: 45, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 968, column: 21)
!2785 = !DILocation(line: 968, column: 21, scope: !2784)
!2786 = !DILocation(line: 968, column: 58, scope: !2784)
!2787 = !DILocation(line: 968, column: 21, scope: !2743)
!2788 = !DILocation(line: 969, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 969, column: 21)
!2790 = !DILocation(line: 969, column: 52, scope: !2789)
!2791 = !DILocation(line: 969, column: 21, scope: !2743)
!2792 = !DILocation(line: 970, column: 21, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 970, column: 21)
!2794 = !DILocation(line: 970, column: 47, scope: !2793)
!2795 = !DILocation(line: 972, column: 40, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 972, column: 17)
!2797 = !DILocation(line: 972, column: 17, scope: !2796)
!2798 = !DILocation(line: 972, column: 47, scope: !2796)
!2799 = !DILocation(line: 972, column: 17, scope: !2745)
!2800 = !DILocation(line: 973, column: 17, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 973, column: 17)
!2802 = !DILocation(line: 973, column: 25, scope: !2801)
!2803 = !DILocation(line: 973, column: 17, scope: !2745)
!2804 = !DILocation(line: 974, column: 18, scope: !2745)
!2805 = !DILocation(line: 963, column: 34, scope: !2739)
!2806 = distinct !{!2806, !2779, !2807}
!2807 = !DILocation(line: 975, column: 9, scope: !2739)
!2808 = !DILocation(line: 976, column: 5, scope: !2740)
!2809 = !DILocation(line: 977, column: 47, scope: !2747)
!2810 = !DILocation(line: 977, column: 28, scope: !2747)
!2811 = !DILocation(line: 977, column: 23, scope: !2747)
!2812 = !DILocation(line: 980, column: 21, scope: !2747)
!2813 = !DILocation(line: 978, column: 20, scope: !2747)
!2814 = !DILocation(line: 980, column: 35, scope: !2747)
!2815 = !DILocation(line: 980, column: 9, scope: !2747)
!2816 = !DILocation(line: 981, column: 23, scope: !2762)
!2817 = !{!2818, !95, i64 0}
!2818 = !{!"dictEntry", !95, i64 0, !93, i64 8, !95, i64 16}
!2819 = !DILocation(line: 981, column: 17, scope: !2762)
!2820 = !DILocation(line: 982, column: 23, scope: !2765)
!2821 = !DILocation(line: 982, column: 17, scope: !2762)
!2822 = !DILocation(line: 983, column: 33, scope: !2764)
!2823 = !DILocation(line: 986, column: 45, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 986, column: 21)
!2825 = !DILocation(line: 986, column: 21, scope: !2824)
!2826 = !DILocation(line: 986, column: 58, scope: !2824)
!2827 = !DILocation(line: 986, column: 21, scope: !2764)
!2828 = !DILocation(line: 987, column: 21, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 987, column: 21)
!2830 = !DILocation(line: 987, column: 52, scope: !2829)
!2831 = !DILocation(line: 987, column: 21, scope: !2764)
!2832 = !DILocation(line: 988, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 988, column: 21)
!2834 = !DILocation(line: 988, column: 47, scope: !2833)
!2835 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 990, column: 42, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 990, column: 17)
!2838 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !2836)
!2839 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !2836)
!2840 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !2836)
!2841 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !2836)
!2842 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !2836)
!2843 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !2836)
!2844 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !2836)
!2845 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !2836)
!2846 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !2836)
!2847 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !2836)
!2848 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !2836)
!2849 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !2836)
!2850 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !2836)
!2851 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !2836)
!2852 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !2836)
!2853 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !2836)
!2854 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !2836)
!2855 = !DILocation(line: 0, scope: !485, inlinedAt: !2836)
!2856 = !DILocation(line: 990, column: 17, scope: !2837)
!2857 = !DILocation(line: 990, column: 55, scope: !2837)
!2858 = !DILocation(line: 990, column: 17, scope: !2762)
!2859 = !DILocation(line: 991, column: 17, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 991, column: 17)
!2861 = !DILocation(line: 991, column: 25, scope: !2860)
!2862 = !DILocation(line: 991, column: 17, scope: !2762)
!2863 = !DILocation(line: 992, column: 18, scope: !2762)
!2864 = !DILocation(line: 994, column: 9, scope: !2747)
!2865 = !DILocation(line: 996, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 995, column: 12)
!2867 = !DILocation(line: 0, scope: !2837)
!2868 = !DILocation(line: 999, column: 1, scope: !2731)
!2869 = distinct !DISubprogram(name: "rewriteSortedSetObject", scope: !3, file: !3, line: 1003, type: !2602, isLocal: false, isDefinition: true, scopeLine: 1003, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !2870)
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2889, !2918, !2919, !2920, !2922, !2924}
!2871 = !DILocalVariable(name: "r", arg: 1, scope: !2869, file: !3, line: 1003, type: !2559)
!2872 = !DILocalVariable(name: "key", arg: 2, scope: !2869, file: !3, line: 1003, type: !1141)
!2873 = !DILocalVariable(name: "o", arg: 3, scope: !2869, file: !3, line: 1003, type: !1141)
!2874 = !DILocalVariable(name: "count", scope: !2869, file: !3, line: 1004, type: !16)
!2875 = !DILocalVariable(name: "items", scope: !2869, file: !3, line: 1004, type: !16)
!2876 = !DILocalVariable(name: "zl", scope: !2877, file: !3, line: 1007, type: !18)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1006, column: 46)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 1006, column: 9)
!2879 = !DILocalVariable(name: "eptr", scope: !2877, file: !3, line: 1008, type: !18)
!2880 = !DILocalVariable(name: "sptr", scope: !2877, file: !3, line: 1008, type: !18)
!2881 = !DILocalVariable(name: "vstr", scope: !2877, file: !3, line: 1009, type: !18)
!2882 = !DILocalVariable(name: "vlen", scope: !2877, file: !3, line: 1010, type: !55)
!2883 = !DILocalVariable(name: "vll", scope: !2877, file: !3, line: 1011, type: !16)
!2884 = !DILocalVariable(name: "score", scope: !2877, file: !3, line: 1012, type: !23)
!2885 = !DILocalVariable(name: "cmd_items", scope: !2886, file: !3, line: 1024, type: !6)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1023, column: 29)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1023, column: 17)
!2888 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 1019, column: 30)
!2889 = !DILocalVariable(name: "zs", scope: !2890, file: !3, line: 1042, type: !2892)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1041, column: 54)
!2891 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1041, column: 16)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !75, line: 829, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !75, line: 826, size: 128, elements: !2895)
!2895 = !{!2896, !2897}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !2894, file: !75, line: 827, baseType: !1278, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !2894, file: !75, line: 828, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !75, line: 824, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !75, line: 820, size: 256, elements: !2901)
!2901 = !{!2902, !2915, !2916, !2917}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2900, file: !75, line: 821, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !75, line: 810, size: 192, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !2904, file: !75, line: 811, baseType: !469, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !2904, file: !75, line: 812, baseType: !23, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !2904, file: !75, line: 813, baseType: !2903, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2904, file: !75, line: 817, baseType: !2910, offset: 192)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2911, elements: !37)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !75, line: 814, size: 128, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !2911, file: !75, line: 815, baseType: !2903, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !2911, file: !75, line: 816, baseType: !17, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2900, file: !75, line: 821, baseType: !2903, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2900, file: !75, line: 822, baseType: !17, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2900, file: !75, line: 823, baseType: !6, size: 32, offset: 192)
!2918 = !DILocalVariable(name: "di", scope: !2890, file: !3, line: 1043, type: !2749)
!2919 = !DILocalVariable(name: "de", scope: !2890, file: !3, line: 1044, type: !1316)
!2920 = !DILocalVariable(name: "ele", scope: !2921, file: !3, line: 1047, type: !469)
!2921 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1046, column: 44)
!2922 = !DILocalVariable(name: "score", scope: !2921, file: !3, line: 1048, type: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!2924 = !DILocalVariable(name: "cmd_items", scope: !2925, file: !3, line: 1051, type: !6)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1050, column: 29)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1050, column: 17)
!2927 = !DILocation(line: 1003, column: 33, scope: !2869)
!2928 = !DILocation(line: 1003, column: 42, scope: !2869)
!2929 = !DILocation(line: 1003, column: 53, scope: !2869)
!2930 = !DILocation(line: 1004, column: 15, scope: !2869)
!2931 = !DILocation(line: 1004, column: 34, scope: !2869)
!2932 = !DILocation(line: 1004, column: 26, scope: !2869)
!2933 = !DILocation(line: 1006, column: 12, scope: !2878)
!2934 = !DILocation(line: 1006, column: 9, scope: !2869)
!2935 = !DILocation(line: 1007, column: 32, scope: !2877)
!2936 = !DILocation(line: 1007, column: 24, scope: !2877)
!2937 = !DILocation(line: 1008, column: 9, scope: !2877)
!2938 = !DILocation(line: 1009, column: 9, scope: !2877)
!2939 = !DILocation(line: 1010, column: 9, scope: !2877)
!2940 = !DILocation(line: 1011, column: 9, scope: !2877)
!2941 = !DILocation(line: 1014, column: 16, scope: !2877)
!2942 = !DILocation(line: 1008, column: 24, scope: !2877)
!2943 = !DILocation(line: 1014, column: 14, scope: !2877)
!2944 = !DILocation(line: 1015, column: 9, scope: !2877)
!2945 = !DILocation(line: 1016, column: 16, scope: !2877)
!2946 = !DILocation(line: 1008, column: 31, scope: !2877)
!2947 = !DILocation(line: 1016, column: 14, scope: !2877)
!2948 = !DILocation(line: 1017, column: 9, scope: !2877)
!2949 = !DILocation(line: 1009, column: 24, scope: !2877)
!2950 = !DILocation(line: 1010, column: 22, scope: !2877)
!2951 = !DILocation(line: 1011, column: 19, scope: !2877)
!2952 = !DILocation(line: 1020, column: 13, scope: !2888)
!2953 = !DILocation(line: 1021, column: 33, scope: !2888)
!2954 = !DILocation(line: 1021, column: 21, scope: !2888)
!2955 = !DILocation(line: 1012, column: 16, scope: !2877)
!2956 = !DILocation(line: 1023, column: 23, scope: !2887)
!2957 = !DILocation(line: 1023, column: 17, scope: !2888)
!2958 = !DILocation(line: 1024, column: 33, scope: !2886)
!2959 = !DILocation(line: 1024, column: 21, scope: !2886)
!2960 = !DILocation(line: 1027, column: 56, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1027, column: 21)
!2962 = !DILocation(line: 1027, column: 46, scope: !2961)
!2963 = !DILocation(line: 1027, column: 45, scope: !2961)
!2964 = !DILocation(line: 1027, column: 21, scope: !2961)
!2965 = !DILocation(line: 1027, column: 60, scope: !2961)
!2966 = !DILocation(line: 1027, column: 21, scope: !2886)
!2967 = !DILocation(line: 1028, column: 21, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1028, column: 21)
!2969 = !DILocation(line: 1028, column: 52, scope: !2968)
!2970 = !DILocation(line: 1028, column: 21, scope: !2886)
!2971 = !DILocation(line: 1029, column: 21, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1029, column: 21)
!2973 = !DILocation(line: 1029, column: 47, scope: !2972)
!2974 = !DILocation(line: 1031, column: 17, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1031, column: 17)
!2976 = !DILocation(line: 1031, column: 45, scope: !2975)
!2977 = !DILocation(line: 1031, column: 17, scope: !2888)
!2978 = !DILocation(line: 1032, column: 17, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1032, column: 17)
!2980 = !DILocation(line: 1032, column: 22, scope: !2979)
!2981 = !DILocation(line: 1032, column: 17, scope: !2888)
!2982 = !DILocation(line: 1033, column: 54, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1033, column: 21)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1032, column: 31)
!2985 = !DILocation(line: 1033, column: 21, scope: !2983)
!2986 = !DILocation(line: 1033, column: 60, scope: !2983)
!2987 = !DILocation(line: 1033, column: 21, scope: !2984)
!2988 = !DILocation(line: 1035, column: 44, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1035, column: 21)
!2990 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1034, column: 20)
!2991 = !{!97, !97, i64 0}
!2992 = !DILocation(line: 1035, column: 21, scope: !2989)
!2993 = !DILocation(line: 1035, column: 49, scope: !2989)
!2994 = !DILocation(line: 1035, column: 21, scope: !2990)
!2995 = !DILocation(line: 1037, column: 13, scope: !2888)
!2996 = !DILocation(line: 1038, column: 17, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1038, column: 17)
!2998 = !DILocation(line: 1038, column: 25, scope: !2997)
!2999 = !DILocation(line: 1038, column: 17, scope: !2888)
!3000 = !DILocation(line: 1039, column: 18, scope: !2888)
!3001 = !DILocation(line: 1019, column: 16, scope: !2877)
!3002 = !DILocation(line: 1019, column: 21, scope: !2877)
!3003 = !DILocation(line: 1019, column: 9, scope: !2877)
!3004 = distinct !{!3004, !3003, !3005}
!3005 = !DILocation(line: 1040, column: 9, scope: !2877)
!3006 = !DILocation(line: 1041, column: 5, scope: !2878)
!3007 = !DILocation(line: 1042, column: 23, scope: !2890)
!3008 = !DILocation(line: 1042, column: 15, scope: !2890)
!3009 = !DILocation(line: 1043, column: 48, scope: !2890)
!3010 = !{!3011, !95, i64 0}
!3011 = !{!"zset", !95, i64 0, !95, i64 8}
!3012 = !DILocation(line: 1043, column: 28, scope: !2890)
!3013 = !DILocation(line: 1043, column: 23, scope: !2890)
!3014 = !DILocation(line: 1046, column: 21, scope: !2890)
!3015 = !DILocation(line: 1044, column: 20, scope: !2890)
!3016 = !DILocation(line: 1046, column: 35, scope: !2890)
!3017 = !DILocation(line: 1046, column: 9, scope: !2890)
!3018 = !DILocation(line: 1047, column: 23, scope: !2921)
!3019 = !DILocation(line: 1047, column: 17, scope: !2921)
!3020 = !DILocation(line: 1048, column: 29, scope: !2921)
!3021 = !DILocation(line: 1048, column: 21, scope: !2921)
!3022 = !DILocation(line: 1050, column: 23, scope: !2926)
!3023 = !DILocation(line: 1050, column: 17, scope: !2921)
!3024 = !DILocation(line: 1051, column: 33, scope: !2925)
!3025 = !DILocation(line: 1051, column: 21, scope: !2925)
!3026 = !DILocation(line: 1054, column: 56, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1054, column: 21)
!3028 = !DILocation(line: 1054, column: 46, scope: !3027)
!3029 = !DILocation(line: 1054, column: 45, scope: !3027)
!3030 = !DILocation(line: 1054, column: 21, scope: !3027)
!3031 = !DILocation(line: 1054, column: 60, scope: !3027)
!3032 = !DILocation(line: 1054, column: 21, scope: !2925)
!3033 = !DILocation(line: 1055, column: 21, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1055, column: 21)
!3035 = !DILocation(line: 1055, column: 52, scope: !3034)
!3036 = !DILocation(line: 1055, column: 21, scope: !2925)
!3037 = !DILocation(line: 1056, column: 21, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1056, column: 21)
!3039 = !DILocation(line: 1056, column: 47, scope: !3038)
!3040 = !DILocation(line: 1058, column: 38, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1058, column: 17)
!3042 = !{!98, !98, i64 0}
!3043 = !DILocation(line: 1058, column: 17, scope: !3041)
!3044 = !DILocation(line: 1058, column: 46, scope: !3041)
!3045 = !DILocation(line: 1058, column: 17, scope: !2921)
!3046 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1059, column: 42, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1059, column: 17)
!3049 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !3047)
!3050 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !3047)
!3051 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !3047)
!3052 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !3047)
!3053 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !3047)
!3054 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !3047)
!3055 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !3047)
!3056 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !3047)
!3057 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !3047)
!3058 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !3047)
!3059 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !3047)
!3060 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !3047)
!3061 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !3047)
!3062 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !3047)
!3063 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !3047)
!3064 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !3047)
!3065 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !3047)
!3066 = !DILocation(line: 0, scope: !485, inlinedAt: !3047)
!3067 = !DILocation(line: 1059, column: 17, scope: !3048)
!3068 = !DILocation(line: 1059, column: 55, scope: !3048)
!3069 = !DILocation(line: 1059, column: 17, scope: !2921)
!3070 = !DILocation(line: 1060, column: 17, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 1060, column: 17)
!3072 = !DILocation(line: 1060, column: 25, scope: !3071)
!3073 = !DILocation(line: 1060, column: 17, scope: !2921)
!3074 = !DILocation(line: 1061, column: 18, scope: !2921)
!3075 = !DILocation(line: 1063, column: 9, scope: !2890)
!3076 = !DILocation(line: 1065, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1064, column: 12)
!3078 = !DILocation(line: 0, scope: !3041)
!3079 = !DILocation(line: 1068, column: 1, scope: !2869)
!3080 = distinct !DISubprogram(name: "rewriteHashObject", scope: !3, file: !3, line: 1098, type: !2602, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3081)
!3081 = !{!3082, !3083, !3084, !3085, !3096, !3097, !3098}
!3082 = !DILocalVariable(name: "r", arg: 1, scope: !3080, file: !3, line: 1098, type: !2559)
!3083 = !DILocalVariable(name: "key", arg: 2, scope: !3080, file: !3, line: 1098, type: !1141)
!3084 = !DILocalVariable(name: "o", arg: 3, scope: !3080, file: !3, line: 1098, type: !1141)
!3085 = !DILocalVariable(name: "hi", scope: !3080, file: !3, line: 1099, type: !3086)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !75, line: 1375, baseType: !3088)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 1367, size: 384, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !3088, file: !75, line: 1368, baseType: !1141, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !3088, file: !75, line: 1369, baseType: !6, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !3088, file: !75, line: 1371, baseType: !18, size: 64, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !3088, file: !75, line: 1371, baseType: !18, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3088, file: !75, line: 1373, baseType: !2749, size: 64, offset: 256)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !3088, file: !75, line: 1374, baseType: !1316, size: 64, offset: 320)
!3096 = !DILocalVariable(name: "count", scope: !3080, file: !3, line: 1100, type: !16)
!3097 = !DILocalVariable(name: "items", scope: !3080, file: !3, line: 1100, type: !16)
!3098 = !DILocalVariable(name: "cmd_items", scope: !3099, file: !3, line: 1105, type: !6)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1104, column: 25)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1104, column: 13)
!3101 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1103, column: 39)
!3102 = !DILocation(line: 1098, column: 28, scope: !3080)
!3103 = !DILocation(line: 1098, column: 37, scope: !3080)
!3104 = !DILocation(line: 1098, column: 48, scope: !3080)
!3105 = !DILocation(line: 1100, column: 15, scope: !3080)
!3106 = !DILocation(line: 1100, column: 34, scope: !3080)
!3107 = !DILocation(line: 1100, column: 26, scope: !3080)
!3108 = !DILocation(line: 1102, column: 10, scope: !3080)
!3109 = !DILocation(line: 1099, column: 23, scope: !3080)
!3110 = !DILocation(line: 1103, column: 12, scope: !3080)
!3111 = !DILocation(line: 1103, column: 29, scope: !3080)
!3112 = !DILocation(line: 1103, column: 5, scope: !3080)
!3113 = !DILocation(line: 1104, column: 19, scope: !3100)
!3114 = !DILocation(line: 1104, column: 13, scope: !3101)
!3115 = !DILocation(line: 1105, column: 29, scope: !3099)
!3116 = !DILocation(line: 1105, column: 17, scope: !3099)
!3117 = !DILocation(line: 1108, column: 52, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1108, column: 17)
!3119 = !DILocation(line: 1108, column: 42, scope: !3118)
!3120 = !DILocation(line: 1108, column: 41, scope: !3118)
!3121 = !DILocation(line: 1108, column: 17, scope: !3118)
!3122 = !DILocation(line: 1108, column: 56, scope: !3118)
!3123 = !DILocation(line: 1108, column: 17, scope: !3099)
!3124 = !DILocation(line: 1109, column: 17, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1109, column: 17)
!3126 = !DILocation(line: 1109, column: 49, scope: !3125)
!3127 = !DILocation(line: 1109, column: 17, scope: !3099)
!3128 = !DILocation(line: 1110, column: 17, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1110, column: 17)
!3130 = !DILocation(line: 1110, column: 43, scope: !3129)
!3131 = !DILocation(line: 1113, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1113, column: 13)
!3133 = !DILocation(line: 1113, column: 61, scope: !3132)
!3134 = !DILocation(line: 1113, column: 13, scope: !3101)
!3135 = !DILocation(line: 1114, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1114, column: 13)
!3137 = !DILocation(line: 1114, column: 63, scope: !3136)
!3138 = !DILocation(line: 1114, column: 13, scope: !3101)
!3139 = !DILocation(line: 1115, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 1115, column: 13)
!3141 = !DILocation(line: 1115, column: 21, scope: !3140)
!3142 = !DILocation(line: 1115, column: 13, scope: !3101)
!3143 = !DILocation(line: 1116, column: 14, scope: !3101)
!3144 = distinct !{!3144, !3112, !3145}
!3145 = !DILocation(line: 1117, column: 5, scope: !3080)
!3146 = !DILocation(line: 1119, column: 5, scope: !3080)
!3147 = !DILocation(line: 1121, column: 5, scope: !3080)
!3148 = !DILocation(line: 0, scope: !3080)
!3149 = !DILocation(line: 1122, column: 1, scope: !3080)
!3150 = distinct !DISubprogram(name: "rioWriteHashIteratorCursor", scope: !3, file: !3, line: 1076, type: !3151, isLocal: true, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!6, !2559, !3086, !6}
!3153 = !{!3154, !3155, !3156, !3157, !3160, !3161, !3162}
!3154 = !DILocalVariable(name: "r", arg: 1, scope: !3150, file: !3, line: 1076, type: !2559)
!3155 = !DILocalVariable(name: "hi", arg: 2, scope: !3150, file: !3, line: 1076, type: !3086)
!3156 = !DILocalVariable(name: "what", arg: 3, scope: !3150, file: !3, line: 1076, type: !6)
!3157 = !DILocalVariable(name: "vstr", scope: !3158, file: !3, line: 1078, type: !18)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1077, column: 47)
!3159 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1077, column: 9)
!3160 = !DILocalVariable(name: "vlen", scope: !3158, file: !3, line: 1079, type: !55)
!3161 = !DILocalVariable(name: "vll", scope: !3158, file: !3, line: 1080, type: !16)
!3162 = !DILocalVariable(name: "value", scope: !3163, file: !3, line: 1088, type: !469)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 1087, column: 49)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1087, column: 16)
!3165 = !DILocation(line: 1076, column: 44, scope: !3150)
!3166 = !DILocation(line: 1076, column: 65, scope: !3150)
!3167 = !DILocation(line: 1076, column: 73, scope: !3150)
!3168 = !DILocation(line: 1077, column: 13, scope: !3159)
!3169 = !{!3170, !92, i64 8}
!3170 = !{!"", !95, i64 0, !92, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40}
!3171 = !DILocation(line: 1077, column: 9, scope: !3150)
!3172 = !DILocation(line: 1078, column: 9, scope: !3158)
!3173 = !DILocation(line: 1078, column: 24, scope: !3158)
!3174 = !DILocation(line: 1079, column: 9, scope: !3158)
!3175 = !DILocation(line: 1079, column: 22, scope: !3158)
!3176 = !DILocation(line: 1080, column: 9, scope: !3158)
!3177 = !DILocation(line: 1080, column: 19, scope: !3158)
!3178 = !DILocation(line: 1082, column: 9, scope: !3158)
!3179 = !DILocation(line: 1083, column: 13, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1083, column: 13)
!3181 = !DILocation(line: 1083, column: 13, scope: !3158)
!3182 = !DILocation(line: 1084, column: 55, scope: !3180)
!3183 = !DILocation(line: 1084, column: 20, scope: !3180)
!3184 = !DILocation(line: 1084, column: 13, scope: !3180)
!3185 = !DILocation(line: 1086, column: 44, scope: !3180)
!3186 = !DILocation(line: 1086, column: 20, scope: !3180)
!3187 = !DILocation(line: 1086, column: 13, scope: !3180)
!3188 = !DILocation(line: 1087, column: 5, scope: !3159)
!3189 = !DILocation(line: 1088, column: 21, scope: !3163)
!3190 = !DILocation(line: 1088, column: 13, scope: !3163)
!3191 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1089, column: 45, scope: !3163)
!3193 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !3192)
!3194 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !3192)
!3195 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !3192)
!3196 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !3192)
!3197 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !3192)
!3198 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !3192)
!3199 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !3192)
!3200 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !3192)
!3201 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !3192)
!3202 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !3192)
!3203 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !3192)
!3204 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !3192)
!3205 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !3192)
!3206 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !3192)
!3207 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !3192)
!3208 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !3192)
!3209 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !3192)
!3210 = !DILocation(line: 0, scope: !485, inlinedAt: !3192)
!3211 = !DILocation(line: 1089, column: 16, scope: !3163)
!3212 = !DILocation(line: 1092, column: 5, scope: !3150)
!3213 = !DILocation(line: 0, scope: !3163)
!3214 = !DILocation(line: 1094, column: 1, scope: !3150)
!3215 = distinct !DISubprogram(name: "rioWriteBulkStreamID", scope: !3, file: !3, line: 1126, type: !3216, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3225)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!6, !2559, !3218}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !3220, line: 14, baseType: !3221)
!3220 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !3220, line: 11, size: 128, elements: !3222)
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !3221, file: !3220, line: 12, baseType: !63, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3221, file: !3220, line: 13, baseType: !63, size: 64, offset: 64)
!3225 = !{!3226, !3227, !3228, !3229}
!3226 = !DILocalVariable(name: "r", arg: 1, scope: !3215, file: !3, line: 1126, type: !2559)
!3227 = !DILocalVariable(name: "id", arg: 2, scope: !3215, file: !3, line: 1126, type: !3218)
!3228 = !DILocalVariable(name: "retval", scope: !3215, file: !3, line: 1127, type: !6)
!3229 = !DILocalVariable(name: "replyid", scope: !3215, file: !3, line: 1129, type: !469)
!3230 = !DILocation(line: 1126, column: 31, scope: !3215)
!3231 = !DILocation(line: 1126, column: 43, scope: !3215)
!3232 = !DILocation(line: 1129, column: 29, scope: !3215)
!3233 = !DILocation(line: 1129, column: 52, scope: !3215)
!3234 = !{!3235, !96, i64 0}
!3235 = !{!"streamID", !96, i64 0, !96, i64 8}
!3236 = !DILocation(line: 1129, column: 59, scope: !3215)
!3237 = !{!3235, !96, i64 8}
!3238 = !DILocation(line: 1129, column: 19, scope: !3215)
!3239 = !DILocation(line: 1129, column: 9, scope: !3215)
!3240 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 1130, column: 48, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1130, column: 9)
!3243 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !3241)
!3244 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !3241)
!3245 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !3241)
!3246 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !3241)
!3247 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !3241)
!3248 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !3241)
!3249 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !3241)
!3250 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !3241)
!3251 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !3241)
!3252 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !3241)
!3253 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !3241)
!3254 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !3241)
!3255 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !3241)
!3256 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !3241)
!3257 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !3241)
!3258 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !3241)
!3259 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !3241)
!3260 = !DILocation(line: 0, scope: !485, inlinedAt: !3241)
!3261 = !DILocation(line: 1130, column: 19, scope: !3242)
!3262 = !DILocation(line: 1127, column: 9, scope: !3215)
!3263 = !DILocation(line: 1130, column: 66, scope: !3242)
!3264 = !DILocation(line: 1130, column: 9, scope: !3215)
!3265 = !DILocation(line: 1131, column: 5, scope: !3215)
!3266 = !DILocation(line: 1132, column: 5, scope: !3215)
!3267 = !DILocation(line: 1133, column: 1, scope: !3215)
!3268 = distinct !DISubprogram(name: "rioWriteStreamPendingEntry", scope: !3, file: !3, line: 1139, type: !3269, isLocal: false, isDefinition: true, scopeLine: 1139, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3303)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!6, !2559, !1141, !581, !583, !3271, !18, !3296}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !3220, line: 79, baseType: !3273)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !3220, line: 67, size: 192, elements: !3274)
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !3273, file: !3220, line: 68, baseType: !74, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3273, file: !3220, line: 69, baseType: !469, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3273, file: !3220, line: 72, baseType: !3278, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !3280, line: 137, baseType: !3281)
!3280 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !3280, line: 133, size: 192, elements: !3282)
!3282 = !{!3283, !3294, !3295}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3281, file: !3280, line: 134, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !3280, line: 131, baseType: !3286)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !3280, line: 98, size: 32, elements: !3287)
!3287 = !{!3288, !3289, !3290, !3291, !3292}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !3286, file: !3280, line: 99, baseType: !53, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !3286, file: !3280, line: 100, baseType: !53, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !3286, file: !3280, line: 101, baseType: !53, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3286, file: !3280, line: 102, baseType: !53, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3286, file: !3280, line: 130, baseType: !3293, offset: 32)
!3293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !37)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !3281, file: !3280, line: 135, baseType: !63, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !3281, file: !3280, line: 136, baseType: !63, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !3220, line: 87, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !3220, line: 82, size: 192, elements: !3299)
!3299 = !{!3300, !3301, !3302}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !3298, file: !3220, line: 83, baseType: !74, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !3298, file: !3220, line: 84, baseType: !63, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !3298, file: !3220, line: 85, baseType: !3271, size: 64, offset: 128)
!3303 = !{!3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3304 = !DILocalVariable(name: "r", arg: 1, scope: !3268, file: !3, line: 1139, type: !2559)
!3305 = !DILocalVariable(name: "key", arg: 2, scope: !3268, file: !3, line: 1139, type: !1141)
!3306 = !DILocalVariable(name: "groupname", arg: 3, scope: !3268, file: !3, line: 1139, type: !581)
!3307 = !DILocalVariable(name: "groupname_len", arg: 4, scope: !3268, file: !3, line: 1139, type: !583)
!3308 = !DILocalVariable(name: "consumer", arg: 5, scope: !3268, file: !3, line: 1139, type: !3271)
!3309 = !DILocalVariable(name: "rawid", arg: 6, scope: !3268, file: !3, line: 1139, type: !18)
!3310 = !DILocalVariable(name: "nack", arg: 7, scope: !3268, file: !3, line: 1139, type: !3296)
!3311 = !DILocalVariable(name: "id", scope: !3268, file: !3, line: 1142, type: !3219)
!3312 = !DILocation(line: 1139, column: 37, scope: !3268)
!3313 = !DILocation(line: 1139, column: 46, scope: !3268)
!3314 = !DILocation(line: 1139, column: 63, scope: !3268)
!3315 = !DILocation(line: 1139, column: 81, scope: !3268)
!3316 = !DILocation(line: 1139, column: 112, scope: !3268)
!3317 = !DILocation(line: 1139, column: 137, scope: !3268)
!3318 = !DILocation(line: 1139, column: 156, scope: !3268)
!3319 = !DILocation(line: 1142, column: 5, scope: !3268)
!3320 = !DILocation(line: 1142, column: 14, scope: !3268)
!3321 = !DILocation(line: 1143, column: 5, scope: !3268)
!3322 = !DILocation(line: 1144, column: 9, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1144, column: 9)
!3324 = !DILocation(line: 1144, column: 37, scope: !3323)
!3325 = !DILocation(line: 1144, column: 9, scope: !3268)
!3326 = !DILocation(line: 1145, column: 9, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1145, column: 9)
!3328 = !DILocation(line: 1145, column: 42, scope: !3327)
!3329 = !DILocation(line: 1145, column: 9, scope: !3268)
!3330 = !DILocation(line: 1146, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1146, column: 9)
!3332 = !DILocation(line: 1146, column: 35, scope: !3331)
!3333 = !DILocation(line: 1146, column: 9, scope: !3268)
!3334 = !DILocation(line: 1147, column: 9, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1147, column: 9)
!3336 = !DILocation(line: 1147, column: 55, scope: !3335)
!3337 = !DILocation(line: 1147, column: 9, scope: !3268)
!3338 = !DILocation(line: 1148, column: 40, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1148, column: 9)
!3340 = !{!3341, !95, i64 8}
!3341 = !{!"streamConsumer", !97, i64 0, !95, i64 8, !95, i64 16}
!3342 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1148, column: 45, scope: !3339)
!3344 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !3343)
!3345 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !3343)
!3346 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !3343)
!3347 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !3343)
!3348 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !3343)
!3349 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !3343)
!3350 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !3343)
!3351 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !3343)
!3352 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !3343)
!3353 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !3343)
!3354 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !3343)
!3355 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !3343)
!3356 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !3343)
!3357 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !3343)
!3358 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !3343)
!3359 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !3343)
!3360 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !3343)
!3361 = !DILocation(line: 0, scope: !485, inlinedAt: !3343)
!3362 = !DILocation(line: 1148, column: 9, scope: !3339)
!3363 = !DILocation(line: 1148, column: 69, scope: !3339)
!3364 = !DILocation(line: 1148, column: 9, scope: !3268)
!3365 = !DILocation(line: 1149, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1149, column: 9)
!3367 = !DILocation(line: 1149, column: 37, scope: !3366)
!3368 = !DILocation(line: 1149, column: 9, scope: !3268)
!3369 = !DILocation(line: 1150, column: 9, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1150, column: 9)
!3371 = !DILocation(line: 1150, column: 37, scope: !3370)
!3372 = !DILocation(line: 1150, column: 9, scope: !3268)
!3373 = !DILocation(line: 1151, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1151, column: 9)
!3375 = !DILocation(line: 1151, column: 40, scope: !3374)
!3376 = !DILocation(line: 1151, column: 9, scope: !3268)
!3377 = !DILocation(line: 1152, column: 38, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1152, column: 9)
!3379 = !{!3380, !97, i64 0}
!3380 = !{!"streamNACK", !97, i64 0, !96, i64 8, !95, i64 16}
!3381 = !DILocation(line: 1152, column: 9, scope: !3378)
!3382 = !DILocation(line: 1152, column: 53, scope: !3378)
!3383 = !DILocation(line: 1152, column: 9, scope: !3268)
!3384 = !DILocation(line: 1153, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1153, column: 9)
!3386 = !DILocation(line: 1153, column: 47, scope: !3385)
!3387 = !DILocation(line: 1153, column: 9, scope: !3268)
!3388 = !DILocation(line: 1154, column: 38, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1154, column: 9)
!3390 = !{!3380, !96, i64 8}
!3391 = !DILocation(line: 1154, column: 9, scope: !3389)
!3392 = !DILocation(line: 1154, column: 54, scope: !3389)
!3393 = !DILocation(line: 1154, column: 9, scope: !3268)
!3394 = !DILocation(line: 1155, column: 9, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1155, column: 9)
!3396 = !DILocation(line: 1155, column: 42, scope: !3395)
!3397 = !DILocation(line: 1155, column: 9, scope: !3268)
!3398 = !DILocation(line: 1156, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1156, column: 9)
!3400 = !DILocation(line: 1156, column: 41, scope: !3399)
!3401 = !DILocation(line: 1156, column: 47, scope: !3399)
!3402 = !DILocation(line: 0, scope: !3268)
!3403 = !DILocation(line: 1158, column: 1, scope: !3268)
!3404 = distinct !DISubprogram(name: "rewriteStreamObject", scope: !3, file: !3, line: 1162, type: !2602, isLocal: false, isDefinition: true, scopeLine: 1162, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3418, !3469, !3470, !3471, !3476, !3477, !3478, !3479, !3482, !3491, !3492, !3494, !3495}
!3406 = !DILocalVariable(name: "r", arg: 1, scope: !3404, file: !3, line: 1162, type: !2559)
!3407 = !DILocalVariable(name: "key", arg: 2, scope: !3404, file: !3, line: 1162, type: !1141)
!3408 = !DILocalVariable(name: "o", arg: 3, scope: !3404, file: !3, line: 1162, type: !1141)
!3409 = !DILocalVariable(name: "s", scope: !3404, file: !3, line: 1163, type: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !3220, line: 21, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !3220, line: 16, size: 320, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !3412, file: !3220, line: 17, baseType: !3278, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3412, file: !3220, line: 18, baseType: !63, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3412, file: !3220, line: 19, baseType: !3219, size: 128, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3412, file: !3220, line: 20, baseType: !3278, size: 64, offset: 256)
!3418 = !DILocalVariable(name: "si", scope: !3404, file: !3, line: 1164, type: !3419)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !3220, line: 48, baseType: !3420)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !3220, line: 29, size: 5120, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3431, !3432, !3461, !3462, !3463, !3464, !3468}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3420, file: !3220, line: 30, baseType: !3410, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !3420, file: !3220, line: 31, baseType: !3219, size: 128, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !3420, file: !3220, line: 32, baseType: !63, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !3420, file: !3220, line: 33, baseType: !18, size: 64, offset: 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !3420, file: !3220, line: 34, baseType: !18, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !3420, file: !3220, line: 35, baseType: !6, size: 32, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3420, file: !3220, line: 36, baseType: !6, size: 32, offset: 416)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !3420, file: !3220, line: 37, baseType: !3430, size: 128, offset: 448)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1335)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !3420, file: !3220, line: 38, baseType: !3430, size: 128, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !3420, file: !3220, line: 39, baseType: !3433, size: 3840, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !3280, line: 186, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !3280, line: 175, size: 3840, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3445, !3455}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3434, file: !3280, line: 176, baseType: !6, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3434, file: !3280, line: 177, baseType: !3278, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3434, file: !3280, line: 178, baseType: !18, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3434, file: !3280, line: 179, baseType: !10, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3434, file: !3280, line: 180, baseType: !583, size: 64, offset: 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !3434, file: !3280, line: 181, baseType: !583, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !3434, file: !3280, line: 182, baseType: !3443, size: 1024, offset: 384)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !2108)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3434, file: !3280, line: 183, baseType: !3284, size: 64, offset: 1408)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3434, file: !3280, line: 184, baseType: !3446, size: 2304, offset: 1472)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !3280, line: 150, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !3280, line: 143, size: 2304, elements: !3448)
!3448 = !{!3449, !3451, !3452, !3453, !3454}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3447, file: !3280, line: 144, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !3447, file: !3280, line: 145, baseType: !583, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !3447, file: !3280, line: 145, baseType: !583, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !3447, file: !3280, line: 148, baseType: !1956, size: 2048, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !3447, file: !3280, line: 149, baseType: !6, size: 32, offset: 2240)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !3434, file: !3280, line: 185, baseType: !3456, size: 64, offset: 3776)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !3280, line: 165, baseType: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!6, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !3420, file: !3220, line: 40, baseType: !18, size: 64, offset: 4544)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !3420, file: !3220, line: 41, baseType: !18, size: 64, offset: 4608)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !3420, file: !3220, line: 42, baseType: !18, size: 64, offset: 4672)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !3420, file: !3220, line: 46, baseType: !3465, size: 168, offset: 4736)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 168, elements: !3466)
!3466 = !{!3467}
!3467 = !DISubrange(count: 21)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !3420, file: !3220, line: 47, baseType: !3465, size: 168, offset: 4904)
!3469 = !DILocalVariable(name: "id", scope: !3404, file: !3, line: 1166, type: !3219)
!3470 = !DILocalVariable(name: "numfields", scope: !3404, file: !3, line: 1167, type: !1327)
!3471 = !DILocalVariable(name: "field", scope: !3472, file: !3, line: 1181, type: !18)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1180, column: 32)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1171, column: 56)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1169, column: 20)
!3475 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1169, column: 9)
!3476 = !DILocalVariable(name: "value", scope: !3472, file: !3, line: 1181, type: !18)
!3477 = !DILocalVariable(name: "field_len", scope: !3472, file: !3, line: 1182, type: !1327)
!3478 = !DILocalVariable(name: "value_len", scope: !3472, file: !3, line: 1182, type: !1327)
!3479 = !DILocalVariable(name: "ri", scope: !3480, file: !3, line: 1212, type: !3433)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 1211, column: 21)
!3481 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1211, column: 9)
!3482 = !DILocalVariable(name: "group", scope: !3483, file: !3, line: 1216, type: !3484)
!3483 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 1215, column: 29)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !3220, line: 64, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !3220, line: 51, size: 256, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !3486, file: !3220, line: 52, baseType: !3219, size: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3486, file: !3220, line: 55, baseType: !3278, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3486, file: !3220, line: 61, baseType: !3278, size: 64, offset: 192)
!3491 = !DILocalVariable(name: "ri_cons", scope: !3483, file: !3, line: 1228, type: !3433)
!3492 = !DILocalVariable(name: "consumer", scope: !3493, file: !3, line: 1232, type: !3271)
!3493 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1231, column: 38)
!3494 = !DILocalVariable(name: "ri_pel", scope: !3493, file: !3, line: 1235, type: !3433)
!3495 = !DILocalVariable(name: "nack", scope: !3496, file: !3, line: 1239, type: !3296)
!3496 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1238, column: 41)
!3497 = !DILocation(line: 1162, column: 30, scope: !3404)
!3498 = !DILocation(line: 1162, column: 39, scope: !3404)
!3499 = !DILocation(line: 1162, column: 50, scope: !3404)
!3500 = !DILocation(line: 1163, column: 20, scope: !3404)
!3501 = !DILocation(line: 1163, column: 13, scope: !3404)
!3502 = !DILocation(line: 1164, column: 5, scope: !3404)
!3503 = !DILocation(line: 1164, column: 20, scope: !3404)
!3504 = !DILocation(line: 1165, column: 5, scope: !3404)
!3505 = !DILocation(line: 1166, column: 5, scope: !3404)
!3506 = !DILocation(line: 1167, column: 5, scope: !3404)
!3507 = !DILocation(line: 1169, column: 12, scope: !3475)
!3508 = !{!3509, !96, i64 8}
!3509 = !{!"stream", !95, i64 0, !96, i64 8, !3235, i64 16, !95, i64 32}
!3510 = !DILocation(line: 1169, column: 9, scope: !3475)
!3511 = !DILocation(line: 1169, column: 9, scope: !3404)
!3512 = !DILocation(line: 1166, column: 14, scope: !3404)
!3513 = !DILocation(line: 1167, column: 13, scope: !3404)
!3514 = !DILocation(line: 1171, column: 15, scope: !3474)
!3515 = !DILocation(line: 1171, column: 9, scope: !3474)
!3516 = !DILocation(line: 1176, column: 43, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1176, column: 17)
!3518 = !DILocation(line: 1176, column: 52, scope: !3517)
!3519 = !DILocation(line: 1176, column: 42, scope: !3517)
!3520 = !DILocation(line: 1176, column: 17, scope: !3517)
!3521 = !DILocation(line: 1176, column: 56, scope: !3517)
!3522 = !DILocation(line: 1176, column: 17, scope: !3473)
!3523 = !DILocation(line: 1177, column: 17, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1177, column: 17)
!3525 = !DILocation(line: 1177, column: 48, scope: !3524)
!3526 = !DILocation(line: 1177, column: 17, scope: !3473)
!3527 = !DILocation(line: 1178, column: 17, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1178, column: 17)
!3529 = !DILocation(line: 1178, column: 43, scope: !3528)
!3530 = !DILocation(line: 1178, column: 17, scope: !3473)
!3531 = !DILocation(line: 1179, column: 17, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1179, column: 17)
!3533 = !DILocation(line: 1179, column: 45, scope: !3532)
!3534 = !DILocation(line: 1179, column: 17, scope: !3473)
!3535 = !DILocation(line: 1180, column: 28, scope: !3473)
!3536 = !DILocation(line: 1180, column: 13, scope: !3473)
!3537 = distinct !{!3537, !3515, !3538}
!3538 = !DILocation(line: 1187, column: 9, scope: !3474)
!3539 = !DILocation(line: 1181, column: 17, scope: !3472)
!3540 = !DILocation(line: 1182, column: 17, scope: !3472)
!3541 = !DILocation(line: 1181, column: 32, scope: !3472)
!3542 = !DILocation(line: 1181, column: 40, scope: !3472)
!3543 = !DILocation(line: 1182, column: 25, scope: !3472)
!3544 = !DILocation(line: 1182, column: 36, scope: !3472)
!3545 = !DILocation(line: 1183, column: 17, scope: !3472)
!3546 = !DILocation(line: 1184, column: 49, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1184, column: 21)
!3548 = !DILocation(line: 1184, column: 55, scope: !3547)
!3549 = !DILocation(line: 1184, column: 21, scope: !3547)
!3550 = !DILocation(line: 1184, column: 66, scope: !3547)
!3551 = !DILocation(line: 1184, column: 21, scope: !3472)
!3552 = !DILocation(line: 1185, column: 49, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1185, column: 21)
!3554 = !DILocation(line: 1185, column: 55, scope: !3553)
!3555 = !DILocation(line: 1185, column: 21, scope: !3553)
!3556 = !DILocation(line: 1185, column: 66, scope: !3553)
!3557 = !DILocation(line: 1186, column: 13, scope: !3473)
!3558 = distinct !{!3558, !3536, !3557}
!3559 = !DILocation(line: 1192, column: 13, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1192, column: 13)
!3561 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1188, column: 12)
!3562 = !DILocation(line: 1192, column: 40, scope: !3560)
!3563 = !DILocation(line: 1192, column: 13, scope: !3561)
!3564 = !DILocation(line: 1193, column: 13, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1193, column: 13)
!3566 = !DILocation(line: 1193, column: 44, scope: !3565)
!3567 = !DILocation(line: 1193, column: 13, scope: !3561)
!3568 = !DILocation(line: 1194, column: 13, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1194, column: 13)
!3570 = !DILocation(line: 1194, column: 39, scope: !3569)
!3571 = !DILocation(line: 1194, column: 13, scope: !3561)
!3572 = !DILocation(line: 1195, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1195, column: 13)
!3574 = !DILocation(line: 1195, column: 46, scope: !3573)
!3575 = !DILocation(line: 1195, column: 13, scope: !3561)
!3576 = !DILocation(line: 1196, column: 13, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1196, column: 13)
!3578 = !DILocation(line: 1196, column: 41, scope: !3577)
!3579 = !DILocation(line: 1196, column: 13, scope: !3561)
!3580 = !DILocation(line: 1197, column: 40, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1197, column: 13)
!3582 = !DILocation(line: 1197, column: 13, scope: !3581)
!3583 = !DILocation(line: 1197, column: 49, scope: !3581)
!3584 = !DILocation(line: 1197, column: 13, scope: !3561)
!3585 = !DILocation(line: 1198, column: 13, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1198, column: 13)
!3587 = !DILocation(line: 1198, column: 41, scope: !3586)
!3588 = !DILocation(line: 1198, column: 13, scope: !3561)
!3589 = !DILocation(line: 1199, column: 13, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1199, column: 13)
!3591 = !DILocation(line: 1199, column: 41, scope: !3590)
!3592 = !DILocation(line: 1199, column: 13, scope: !3561)
!3593 = !DILocation(line: 1204, column: 9, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1204, column: 9)
!3595 = !DILocation(line: 1204, column: 36, scope: !3594)
!3596 = !DILocation(line: 1204, column: 9, scope: !3404)
!3597 = !DILocation(line: 1205, column: 9, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1205, column: 9)
!3599 = !DILocation(line: 1205, column: 42, scope: !3598)
!3600 = !DILocation(line: 1205, column: 9, scope: !3404)
!3601 = !DILocation(line: 1206, column: 9, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1206, column: 9)
!3603 = !DILocation(line: 1206, column: 35, scope: !3602)
!3604 = !DILocation(line: 1206, column: 9, scope: !3404)
!3605 = !DILocation(line: 1207, column: 36, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 1207, column: 9)
!3607 = !DILocation(line: 1207, column: 9, scope: !3606)
!3608 = !DILocation(line: 1207, column: 45, scope: !3606)
!3609 = !DILocation(line: 1207, column: 9, scope: !3404)
!3610 = !DILocation(line: 1211, column: 12, scope: !3481)
!3611 = !{!3509, !95, i64 32}
!3612 = !DILocation(line: 1211, column: 9, scope: !3481)
!3613 = !DILocation(line: 1211, column: 9, scope: !3404)
!3614 = !DILocation(line: 1212, column: 9, scope: !3480)
!3615 = !DILocation(line: 1212, column: 21, scope: !3480)
!3616 = !DILocation(line: 1213, column: 9, scope: !3480)
!3617 = !DILocation(line: 1214, column: 9, scope: !3480)
!3618 = !DILocation(line: 1215, column: 15, scope: !3480)
!3619 = !DILocation(line: 1215, column: 9, scope: !3480)
!3620 = !DILocation(line: 1216, column: 34, scope: !3483)
!3621 = !{!3622, !95, i64 24}
!3622 = !{!"raxIterator", !92, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !96, i64 32, !96, i64 40, !93, i64 48, !95, i64 176, !3623, i64 184, !95, i64 472}
!3623 = !{!"raxStack", !95, i64 0, !96, i64 8, !96, i64 16, !93, i64 24, !92, i64 280}
!3624 = !DILocation(line: 1216, column: 23, scope: !3483)
!3625 = !DILocation(line: 1218, column: 17, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1218, column: 17)
!3627 = !DILocation(line: 1218, column: 44, scope: !3626)
!3628 = !DILocation(line: 1218, column: 17, scope: !3483)
!3629 = !DILocation(line: 1219, column: 17, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1219, column: 17)
!3631 = !DILocation(line: 1219, column: 50, scope: !3630)
!3632 = !DILocation(line: 1219, column: 17, scope: !3483)
!3633 = !DILocation(line: 1220, column: 17, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1220, column: 17)
!3635 = !DILocation(line: 1220, column: 50, scope: !3634)
!3636 = !DILocation(line: 1220, column: 17, scope: !3483)
!3637 = !DILocation(line: 1221, column: 17, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1221, column: 17)
!3639 = !DILocation(line: 1221, column: 43, scope: !3638)
!3640 = !DILocation(line: 1221, column: 17, scope: !3483)
!3641 = !DILocation(line: 1222, column: 48, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1222, column: 17)
!3643 = !{!3622, !95, i64 16}
!3644 = !DILocation(line: 1222, column: 55, scope: !3642)
!3645 = !{!3622, !96, i64 32}
!3646 = !DILocation(line: 1222, column: 17, scope: !3642)
!3647 = !DILocation(line: 1222, column: 64, scope: !3642)
!3648 = !DILocation(line: 1222, column: 17, scope: !3483)
!3649 = !DILocation(line: 1223, column: 48, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1223, column: 17)
!3651 = !DILocation(line: 1223, column: 17, scope: !3650)
!3652 = !DILocation(line: 1223, column: 57, scope: !3650)
!3653 = !DILocation(line: 1223, column: 17, scope: !3483)
!3654 = !DILocation(line: 1228, column: 13, scope: !3483)
!3655 = !DILocation(line: 1229, column: 38, scope: !3483)
!3656 = !{!3657, !95, i64 24}
!3657 = !{!"streamCG", !3235, i64 0, !95, i64 16, !95, i64 24}
!3658 = !DILocation(line: 1228, column: 25, scope: !3483)
!3659 = !DILocation(line: 1229, column: 13, scope: !3483)
!3660 = !DILocation(line: 1230, column: 13, scope: !3483)
!3661 = !DILocation(line: 1231, column: 19, scope: !3483)
!3662 = !DILocation(line: 1231, column: 13, scope: !3483)
!3663 = !DILocation(line: 1232, column: 52, scope: !3493)
!3664 = !DILocation(line: 1232, column: 33, scope: !3493)
!3665 = !DILocation(line: 1235, column: 17, scope: !3493)
!3666 = !DILocation(line: 1236, column: 44, scope: !3493)
!3667 = !{!3341, !95, i64 16}
!3668 = !DILocation(line: 1235, column: 29, scope: !3493)
!3669 = !DILocation(line: 1236, column: 17, scope: !3493)
!3670 = !DILocation(line: 1237, column: 17, scope: !3493)
!3671 = !DILocation(line: 1238, column: 17, scope: !3493)
!3672 = !DILocation(line: 1238, column: 23, scope: !3493)
!3673 = !DILocation(line: 1239, column: 47, scope: !3496)
!3674 = !DILocation(line: 1239, column: 33, scope: !3496)
!3675 = !DILocation(line: 1240, column: 68, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1240, column: 25)
!3677 = !DILocation(line: 1241, column: 55, scope: !3676)
!3678 = !DILocation(line: 1242, column: 59, scope: !3676)
!3679 = !DILocation(line: 1240, column: 25, scope: !3676)
!3680 = !DILocation(line: 1242, column: 69, scope: !3676)
!3681 = distinct !{!3681, !3671, !3682}
!3682 = !DILocation(line: 1246, column: 17, scope: !3493)
!3683 = !DILocation(line: 1248, column: 13, scope: !3483)
!3684 = !DILocation(line: 1250, column: 9, scope: !3480)
!3685 = !DILocation(line: 1247, column: 17, scope: !3493)
!3686 = !DILocation(line: 1249, column: 13, scope: !3483)
!3687 = !DILocation(line: 1252, column: 5, scope: !3481)
!3688 = !DILocation(line: 1251, column: 9, scope: !3480)
!3689 = !DILocation(line: 1254, column: 5, scope: !3404)
!3690 = !DILocation(line: 1255, column: 5, scope: !3404)
!3691 = !DILocation(line: 0, scope: !3590)
!3692 = !DILocation(line: 1256, column: 1, scope: !3404)
!3693 = distinct !DISubprogram(name: "rewriteModuleObject", scope: !3, file: !3, line: 1261, type: !2602, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3771, !3778}
!3695 = !DILocalVariable(name: "r", arg: 1, scope: !3693, file: !3, line: 1261, type: !2559)
!3696 = !DILocalVariable(name: "key", arg: 2, scope: !3693, file: !3, line: 1261, type: !1141)
!3697 = !DILocalVariable(name: "o", arg: 3, scope: !3693, file: !3, line: 1261, type: !1141)
!3698 = !DILocalVariable(name: "io", scope: !3693, file: !3, line: 1262, type: !3699)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleIO", file: !75, line: 564, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !75, line: 555, size: 384, elements: !3701)
!3701 = !{!3702, !3703, !3704, !3765, !3766, !3767, !3770}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !3700, file: !75, line: 556, baseType: !583, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !3700, file: !75, line: 557, baseType: !2559, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3700, file: !75, line: 558, baseType: !3705, size: 64, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !75, line: 530, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !75, line: 517, size: 768, elements: !3708)
!3708 = !{!3709, !3710, !3713, !3719, !3724, !3730, !3735, !3748, !3750, !3755, !3760, !3761}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3707, file: !75, line: 518, baseType: !63, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3707, file: !75, line: 519, baseType: !3711, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !75, line: 496, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !3707, file: !75, line: 520, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !75, line: 506, baseType: !3715)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!10, !3718, !6}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !3707, file: !75, line: 521, baseType: !3720, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !75, line: 507, baseType: !3721)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3718, !10}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !3707, file: !75, line: 522, baseType: !3725, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !75, line: 510, baseType: !3726)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3718, !3729, !10}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !3707, file: !75, line: 523, baseType: !3731, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !75, line: 512, baseType: !3732)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!583, !1292}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !3707, file: !75, line: 524, baseType: !3736, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !75, line: 511, baseType: !3737)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{null, !3740, !10}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !75, line: 583, size: 320, elements: !3742)
!3742 = !{!3743, !3747}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !3741, file: !75, line: 584, baseType: !3744, size: 160)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !3745)
!3745 = !{!3746}
!3746 = !DISubrange(count: 20)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3741, file: !75, line: 585, baseType: !3744, size: 160, offset: 160)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3707, file: !75, line: 525, baseType: !3749, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !75, line: 513, baseType: !1357)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !3707, file: !75, line: 526, baseType: !3751, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !75, line: 508, baseType: !3752)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!6, !3718, !6, !6}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !3707, file: !75, line: 527, baseType: !3756, size: 64, offset: 576)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !75, line: 509, baseType: !3757)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3718, !6}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !3707, file: !75, line: 528, baseType: !6, size: 32, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3707, file: !75, line: 529, baseType: !3762, size: 80, offset: 672)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !3763)
!3763 = !{!3764}
!3764 = !DISubrange(count: 10)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3700, file: !75, line: 559, baseType: !6, size: 32, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !3700, file: !75, line: 560, baseType: !6, size: 32, offset: 224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3700, file: !75, line: 562, baseType: !3768, size: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !75, line: 499, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3700, file: !75, line: 563, baseType: !3729, size: 64, offset: 320)
!3771 = !DILocalVariable(name: "mv", scope: !3693, file: !3, line: 1263, type: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !75, line: 550, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !75, line: 547, size: 128, elements: !3775)
!3775 = !{!3776, !3777}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3774, file: !75, line: 548, baseType: !3705, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3774, file: !75, line: 549, baseType: !10, size: 64, offset: 64)
!3778 = !DILocalVariable(name: "mt", scope: !3693, file: !3, line: 1264, type: !3705)
!3779 = !DILocation(line: 1261, column: 30, scope: !3693)
!3780 = !DILocation(line: 1261, column: 39, scope: !3693)
!3781 = !DILocation(line: 1261, column: 50, scope: !3693)
!3782 = !DILocation(line: 1262, column: 5, scope: !3693)
!3783 = !DILocation(line: 1263, column: 26, scope: !3693)
!3784 = !DILocation(line: 1263, column: 18, scope: !3693)
!3785 = !DILocation(line: 1264, column: 26, scope: !3693)
!3786 = !{!3787, !95, i64 0}
!3787 = !{!"moduleValue", !95, i64 0, !95, i64 8}
!3788 = !DILocation(line: 1264, column: 17, scope: !3693)
!3789 = !DILocation(line: 1265, column: 5, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 1265, column: 5)
!3791 = !{!3792, !95, i64 8}
!3792 = !{!"RedisModuleIO", !96, i64 0, !95, i64 8, !95, i64 16, !92, i64 24, !92, i64 28, !95, i64 32, !95, i64 40}
!3793 = !{!3792, !95, i64 16}
!3794 = !{!3792, !96, i64 0}
!3795 = !{!3792, !92, i64 24}
!3796 = !{!3792, !92, i64 28}
!3797 = !{!3792, !95, i64 40}
!3798 = !{!3792, !95, i64 32}
!3799 = !DILocation(line: 1266, column: 9, scope: !3693)
!3800 = !{!3801, !95, i64 32}
!3801 = !{!"RedisModuleType", !96, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !92, i64 80, !93, i64 84}
!3802 = !DILocation(line: 1266, column: 33, scope: !3693)
!3803 = !{!3787, !95, i64 8}
!3804 = !DILocation(line: 1262, column: 19, scope: !3693)
!3805 = !DILocation(line: 1266, column: 5, scope: !3693)
!3806 = !DILocation(line: 1267, column: 12, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 1267, column: 9)
!3808 = !DILocation(line: 1267, column: 9, scope: !3807)
!3809 = !DILocation(line: 1267, column: 9, scope: !3693)
!3810 = !DILocation(line: 1268, column: 9, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 1267, column: 17)
!3812 = !DILocation(line: 1269, column: 18, scope: !3811)
!3813 = !DILocation(line: 1269, column: 9, scope: !3811)
!3814 = !DILocation(line: 1270, column: 5, scope: !3811)
!3815 = !DILocation(line: 1271, column: 15, scope: !3693)
!3816 = !DILocation(line: 1271, column: 12, scope: !3693)
!3817 = !DILocation(line: 1272, column: 1, scope: !3693)
!3818 = !DILocation(line: 1271, column: 5, scope: !3693)
!3819 = distinct !DISubprogram(name: "aofReadDiffFromParent", scope: !3, file: !3, line: 1277, type: !3820, isLocal: false, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!11}
!3822 = !{!3823, !3827, !3828}
!3823 = !DILocalVariable(name: "buf", scope: !3819, file: !3, line: 1278, type: !3824)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 524288, elements: !3825)
!3825 = !{!3826}
!3826 = !DISubrange(count: 65536)
!3827 = !DILocalVariable(name: "nread", scope: !3819, file: !3, line: 1279, type: !11)
!3828 = !DILocalVariable(name: "total", scope: !3819, file: !3, line: 1279, type: !11)
!3829 = !DILocation(line: 1278, column: 5, scope: !3819)
!3830 = !DILocation(line: 1278, column: 10, scope: !3819)
!3831 = !DILocation(line: 1279, column: 20, scope: !3819)
!3832 = !DILocation(line: 1282, column: 25, scope: !3819)
!3833 = !DILocation(line: 1282, column: 13, scope: !3819)
!3834 = !DILocation(line: 1279, column: 13, scope: !3819)
!3835 = !DILocation(line: 1282, column: 74, scope: !3819)
!3836 = !DILocation(line: 1281, column: 5, scope: !3819)
!3837 = !DILocation(line: 1283, column: 50, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 1282, column: 79)
!3839 = !{!91, !95, i64 2072}
!3840 = !DILocation(line: 1283, column: 33, scope: !3838)
!3841 = !DILocation(line: 1283, column: 31, scope: !3838)
!3842 = !DILocation(line: 1284, column: 15, scope: !3838)
!3843 = distinct !{!3843, !3836, !3844}
!3844 = !DILocation(line: 1285, column: 5, scope: !3819)
!3845 = !DILocation(line: 0, scope: !3838)
!3846 = !DILocation(line: 1287, column: 1, scope: !3819)
!3847 = !DILocation(line: 1286, column: 5, scope: !3819)
!3848 = distinct !DISubprogram(name: "rewriteAppendOnlyFileRio", scope: !3, file: !3, line: 1289, type: !3849, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!6, !2559}
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3864, !3865, !3866, !3868, !3869, !3870, !3871, !3877}
!3852 = !DILocalVariable(name: "aof", arg: 1, scope: !3848, file: !3, line: 1289, type: !2559)
!3853 = !DILocalVariable(name: "di", scope: !3848, file: !3, line: 1290, type: !2749)
!3854 = !DILocalVariable(name: "de", scope: !3848, file: !3, line: 1291, type: !1316)
!3855 = !DILocalVariable(name: "processed", scope: !3848, file: !3, line: 1292, type: !583)
!3856 = !DILocalVariable(name: "j", scope: !3848, file: !3, line: 1293, type: !6)
!3857 = !DILocalVariable(name: "selectcmd", scope: !3858, file: !3, line: 1296, type: !3861)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 1295, column: 40)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 1295, column: 5)
!3860 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1295, column: 5)
!3861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 136, elements: !3862)
!3862 = !{!3863}
!3863 = !DISubrange(count: 17)
!3864 = !DILocalVariable(name: "db", scope: !3858, file: !3, line: 1297, type: !1273)
!3865 = !DILocalVariable(name: "d", scope: !3858, file: !3, line: 1298, type: !1278)
!3866 = !DILocalVariable(name: "keystr", scope: !3867, file: !3, line: 1308, type: !469)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1307, column: 44)
!3868 = !DILocalVariable(name: "key", scope: !3867, file: !3, line: 1309, type: !1142)
!3869 = !DILocalVariable(name: "o", scope: !3867, file: !3, line: 1309, type: !1141)
!3870 = !DILocalVariable(name: "expiretime", scope: !3867, file: !3, line: 1310, type: !16)
!3871 = !DILocalVariable(name: "cmd", scope: !3872, file: !3, line: 1321, type: !3874)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1319, column: 40)
!3873 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1319, column: 17)
!3874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !3875)
!3875 = !{!3876}
!3876 = !DISubrange(count: 14)
!3877 = !DILocalVariable(name: "cmd", scope: !3878, file: !3, line: 1343, type: !3880)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 1342, column: 35)
!3879 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1342, column: 17)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !3745)
!3881 = !DILocation(line: 1278, column: 10, scope: !3819, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 1351, column: 17, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 1349, column: 80)
!3884 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1349, column: 17)
!3885 = !DILocation(line: 1289, column: 35, scope: !3848)
!3886 = !DILocation(line: 1290, column: 19, scope: !3848)
!3887 = !DILocation(line: 1292, column: 12, scope: !3848)
!3888 = !DILocation(line: 1293, column: 9, scope: !3848)
!3889 = !DILocation(line: 1295, column: 28, scope: !3859)
!3890 = !{!91, !92, i64 1792}
!3891 = !DILocation(line: 1295, column: 19, scope: !3859)
!3892 = !DILocation(line: 1295, column: 5, scope: !3860)
!3893 = !DILocation(line: 1296, column: 9, scope: !3858)
!3894 = !DILocation(line: 1296, column: 14, scope: !3858)
!3895 = !DILocation(line: 1297, column: 30, scope: !3858)
!3896 = !{!91, !95, i64 48}
!3897 = !DILocation(line: 1297, column: 32, scope: !3858)
!3898 = !DILocation(line: 1297, column: 18, scope: !3858)
!3899 = !DILocation(line: 1298, column: 23, scope: !3858)
!3900 = !{!3901, !95, i64 0}
!3901 = !{!"redisDb", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !92, i64 40, !97, i64 48, !95, i64 56}
!3902 = !DILocation(line: 1298, column: 15, scope: !3858)
!3903 = !DILocation(line: 1299, column: 13, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1299, column: 13)
!3905 = !{!3906, !96, i64 24}
!3906 = !{!"dictht", !95, i64 0, !96, i64 8, !96, i64 16, !96, i64 24}
!3907 = !DILocation(line: 1299, column: 25, scope: !3904)
!3908 = !DILocation(line: 1299, column: 13, scope: !3858)
!3909 = !DILocation(line: 1300, column: 14, scope: !3858)
!3910 = !DILocalVariable(name: "r", arg: 1, scope: !3911, file: !2052, line: 93, type: !2559)
!3911 = distinct !DISubprogram(name: "rioWrite", scope: !2052, file: !2052, line: 93, type: !3912, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!466, !2559, !1292, !466}
!3914 = !{!3910, !3915, !3916, !3917}
!3915 = !DILocalVariable(name: "buf", arg: 2, scope: !3911, file: !2052, line: 93, type: !1292)
!3916 = !DILocalVariable(name: "len", arg: 3, scope: !3911, file: !2052, line: 93, type: !466)
!3917 = !DILocalVariable(name: "bytes_to_write", scope: !3918, file: !2052, line: 95, type: !466)
!3918 = distinct !DILexicalBlock(scope: !3911, file: !2052, line: 94, column: 17)
!3919 = !DILocation(line: 93, column: 36, scope: !3911, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 1303, column: 13, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1303, column: 13)
!3922 = !DILocation(line: 93, column: 51, scope: !3911, inlinedAt: !3920)
!3923 = !DILocation(line: 93, column: 63, scope: !3911, inlinedAt: !3920)
!3924 = !DILocation(line: 94, column: 5, scope: !3911, inlinedAt: !3920)
!3925 = !DILocation(line: 95, column: 37, scope: !3918, inlinedAt: !3920)
!3926 = !{!3927, !96, i64 56}
!3927 = !{!"_rio", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !96, i64 40, !96, i64 48, !96, i64 56, !93, i64 64}
!3928 = !DILocation(line: 95, column: 34, scope: !3918, inlinedAt: !3920)
!3929 = !DILocation(line: 95, column: 85, scope: !3918, inlinedAt: !3920)
!3930 = !DILocation(line: 95, column: 58, scope: !3918, inlinedAt: !3920)
!3931 = !DILocation(line: 95, column: 16, scope: !3918, inlinedAt: !3920)
!3932 = !DILocation(line: 96, column: 16, scope: !3933, inlinedAt: !3920)
!3933 = distinct !DILexicalBlock(scope: !3918, file: !2052, line: 96, column: 13)
!3934 = !{!3927, !95, i64 32}
!3935 = !DILocation(line: 96, column: 13, scope: !3933, inlinedAt: !3920)
!3936 = !DILocation(line: 96, column: 13, scope: !3918, inlinedAt: !3920)
!3937 = !DILocation(line: 96, column: 30, scope: !3933, inlinedAt: !3920)
!3938 = !DILocation(line: 97, column: 16, scope: !3939, inlinedAt: !3920)
!3939 = distinct !DILexicalBlock(scope: !3918, file: !2052, line: 97, column: 13)
!3940 = !{!3927, !95, i64 8}
!3941 = !DILocation(line: 97, column: 13, scope: !3939, inlinedAt: !3920)
!3942 = !DILocation(line: 97, column: 44, scope: !3939, inlinedAt: !3920)
!3943 = !DILocation(line: 97, column: 13, scope: !3918, inlinedAt: !3920)
!3944 = !DILocation(line: 99, column: 26, scope: !3918, inlinedAt: !3920)
!3945 = !DILocation(line: 100, column: 13, scope: !3918, inlinedAt: !3920)
!3946 = !DILocation(line: 101, column: 28, scope: !3918, inlinedAt: !3920)
!3947 = !{!3927, !96, i64 48}
!3948 = !DILocation(line: 1304, column: 13, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 1304, column: 13)
!3950 = !DILocation(line: 1304, column: 41, scope: !3949)
!3951 = !DILocation(line: 1304, column: 13, scope: !3858)
!3952 = !DILocation(line: 1307, column: 21, scope: !3858)
!3953 = !DILocation(line: 1291, column: 16, scope: !3848)
!3954 = !DILocation(line: 1307, column: 35, scope: !3858)
!3955 = !DILocation(line: 1307, column: 9, scope: !3858)
!3956 = !DILocation(line: 1309, column: 13, scope: !3867)
!3957 = !DILocation(line: 1312, column: 22, scope: !3867)
!3958 = !DILocation(line: 1308, column: 17, scope: !3867)
!3959 = !DILocation(line: 1313, column: 17, scope: !3867)
!3960 = !DILocation(line: 1309, column: 24, scope: !3867)
!3961 = !DILocation(line: 1314, column: 13, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1314, column: 13)
!3963 = !{!1193, !92, i64 4}
!3964 = !DILocation(line: 1309, column: 18, scope: !3867)
!3965 = !DILocation(line: 1316, column: 26, scope: !3867)
!3966 = !DILocation(line: 1310, column: 23, scope: !3867)
!3967 = !DILocation(line: 1319, column: 20, scope: !3873)
!3968 = !DILocation(line: 1319, column: 17, scope: !3867)
!3969 = !DILocation(line: 1321, column: 17, scope: !3872)
!3970 = !DILocation(line: 1321, column: 22, scope: !3872)
!3971 = !DILocation(line: 93, column: 36, scope: !3911, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 1322, column: 21, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1322, column: 21)
!3974 = !DILocation(line: 93, column: 51, scope: !3911, inlinedAt: !3972)
!3975 = !DILocation(line: 93, column: 63, scope: !3911, inlinedAt: !3972)
!3976 = !DILocation(line: 94, column: 5, scope: !3911, inlinedAt: !3972)
!3977 = !DILocation(line: 95, column: 37, scope: !3918, inlinedAt: !3972)
!3978 = !DILocation(line: 95, column: 34, scope: !3918, inlinedAt: !3972)
!3979 = !DILocation(line: 95, column: 85, scope: !3918, inlinedAt: !3972)
!3980 = !DILocation(line: 95, column: 58, scope: !3918, inlinedAt: !3972)
!3981 = !DILocation(line: 95, column: 16, scope: !3918, inlinedAt: !3972)
!3982 = !DILocation(line: 96, column: 16, scope: !3933, inlinedAt: !3972)
!3983 = !DILocation(line: 96, column: 13, scope: !3933, inlinedAt: !3972)
!3984 = !DILocation(line: 96, column: 13, scope: !3918, inlinedAt: !3972)
!3985 = !DILocation(line: 96, column: 30, scope: !3933, inlinedAt: !3972)
!3986 = !DILocation(line: 97, column: 16, scope: !3939, inlinedAt: !3972)
!3987 = !DILocation(line: 97, column: 13, scope: !3939, inlinedAt: !3972)
!3988 = !DILocation(line: 97, column: 44, scope: !3939, inlinedAt: !3972)
!3989 = !DILocation(line: 97, column: 13, scope: !3918, inlinedAt: !3972)
!3990 = !DILocation(line: 99, column: 26, scope: !3918, inlinedAt: !3972)
!3991 = !DILocation(line: 100, column: 13, scope: !3918, inlinedAt: !3972)
!3992 = !DILocation(line: 101, column: 28, scope: !3918, inlinedAt: !3972)
!3993 = !DILocation(line: 1324, column: 21, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1324, column: 21)
!3995 = !DILocation(line: 1324, column: 50, scope: !3994)
!3996 = !DILocation(line: 1324, column: 21, scope: !3872)
!3997 = !DILocation(line: 1325, column: 21, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1325, column: 21)
!3999 = !DILocation(line: 1325, column: 47, scope: !3998)
!4000 = !DILocation(line: 1326, column: 13, scope: !3873)
!4001 = !DILocation(line: 1327, column: 21, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1327, column: 21)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 1326, column: 45)
!4004 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1326, column: 24)
!4005 = !DILocation(line: 1327, column: 51, scope: !4002)
!4006 = !DILocation(line: 1327, column: 21, scope: !4003)
!4007 = !DILocation(line: 1329, column: 21, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1329, column: 21)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 1328, column: 44)
!4010 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 1328, column: 24)
!4011 = !DILocation(line: 1329, column: 50, scope: !4008)
!4012 = !DILocation(line: 1329, column: 21, scope: !4009)
!4013 = !DILocation(line: 1331, column: 21, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1331, column: 21)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 1330, column: 45)
!4016 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 1330, column: 24)
!4017 = !DILocation(line: 1331, column: 56, scope: !4014)
!4018 = !DILocation(line: 1331, column: 21, scope: !4015)
!4019 = !DILocation(line: 1333, column: 21, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1333, column: 21)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1332, column: 45)
!4022 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 1332, column: 24)
!4023 = !DILocation(line: 1333, column: 51, scope: !4020)
!4024 = !DILocation(line: 1333, column: 21, scope: !4021)
!4025 = !DILocation(line: 1335, column: 21, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1335, column: 21)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1334, column: 47)
!4028 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1334, column: 24)
!4029 = !DILocation(line: 1335, column: 53, scope: !4026)
!4030 = !DILocation(line: 1335, column: 21, scope: !4027)
!4031 = !DILocation(line: 1261, column: 30, scope: !3693, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 1337, column: 21, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 1337, column: 21)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1336, column: 47)
!4035 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1336, column: 24)
!4036 = !DILocation(line: 1261, column: 39, scope: !3693, inlinedAt: !4032)
!4037 = !DILocation(line: 1261, column: 50, scope: !3693, inlinedAt: !4032)
!4038 = !DILocation(line: 1262, column: 5, scope: !3693, inlinedAt: !4032)
!4039 = !DILocation(line: 1263, column: 26, scope: !3693, inlinedAt: !4032)
!4040 = !DILocation(line: 1263, column: 18, scope: !3693, inlinedAt: !4032)
!4041 = !DILocation(line: 1264, column: 26, scope: !3693, inlinedAt: !4032)
!4042 = !DILocation(line: 1264, column: 17, scope: !3693, inlinedAt: !4032)
!4043 = !DILocation(line: 1265, column: 5, scope: !3790, inlinedAt: !4032)
!4044 = !DILocation(line: 1266, column: 9, scope: !3693, inlinedAt: !4032)
!4045 = !DILocation(line: 1266, column: 33, scope: !3693, inlinedAt: !4032)
!4046 = !DILocation(line: 1262, column: 19, scope: !3693, inlinedAt: !4032)
!4047 = !DILocation(line: 1266, column: 5, scope: !3693, inlinedAt: !4032)
!4048 = !DILocation(line: 1267, column: 12, scope: !3807, inlinedAt: !4032)
!4049 = !DILocation(line: 1267, column: 9, scope: !3807, inlinedAt: !4032)
!4050 = !DILocation(line: 1267, column: 9, scope: !3693, inlinedAt: !4032)
!4051 = !DILocation(line: 1268, column: 9, scope: !3811, inlinedAt: !4032)
!4052 = !DILocation(line: 1269, column: 18, scope: !3811, inlinedAt: !4032)
!4053 = !DILocation(line: 1269, column: 9, scope: !3811, inlinedAt: !4032)
!4054 = !DILocation(line: 1270, column: 5, scope: !3811, inlinedAt: !4032)
!4055 = !DILocation(line: 1271, column: 15, scope: !3693, inlinedAt: !4032)
!4056 = !DILocation(line: 1271, column: 12, scope: !3693, inlinedAt: !4032)
!4057 = !DILocation(line: 1272, column: 1, scope: !3693, inlinedAt: !4032)
!4058 = !DILocation(line: 1337, column: 21, scope: !4034)
!4059 = !DILocation(line: 1339, column: 17, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1338, column: 20)
!4061 = !DILocation(line: 1342, column: 28, scope: !3879)
!4062 = !DILocation(line: 1342, column: 17, scope: !3867)
!4063 = !DILocation(line: 1343, column: 17, scope: !3878)
!4064 = !DILocation(line: 1343, column: 22, scope: !3878)
!4065 = !DILocation(line: 93, column: 36, scope: !3911, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 1344, column: 21, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1344, column: 21)
!4068 = !DILocation(line: 93, column: 51, scope: !3911, inlinedAt: !4066)
!4069 = !DILocation(line: 93, column: 63, scope: !3911, inlinedAt: !4066)
!4070 = !DILocation(line: 94, column: 5, scope: !3911, inlinedAt: !4066)
!4071 = !DILocation(line: 95, column: 37, scope: !3918, inlinedAt: !4066)
!4072 = !DILocation(line: 95, column: 34, scope: !3918, inlinedAt: !4066)
!4073 = !DILocation(line: 95, column: 85, scope: !3918, inlinedAt: !4066)
!4074 = !DILocation(line: 95, column: 58, scope: !3918, inlinedAt: !4066)
!4075 = !DILocation(line: 95, column: 16, scope: !3918, inlinedAt: !4066)
!4076 = !DILocation(line: 96, column: 16, scope: !3933, inlinedAt: !4066)
!4077 = !DILocation(line: 96, column: 13, scope: !3933, inlinedAt: !4066)
!4078 = !DILocation(line: 96, column: 13, scope: !3918, inlinedAt: !4066)
!4079 = !DILocation(line: 96, column: 30, scope: !3933, inlinedAt: !4066)
!4080 = !DILocation(line: 97, column: 16, scope: !3939, inlinedAt: !4066)
!4081 = !DILocation(line: 97, column: 13, scope: !3939, inlinedAt: !4066)
!4082 = !DILocation(line: 97, column: 44, scope: !3939, inlinedAt: !4066)
!4083 = !DILocation(line: 97, column: 13, scope: !3918, inlinedAt: !4066)
!4084 = !DILocation(line: 99, column: 26, scope: !3918, inlinedAt: !4066)
!4085 = !DILocation(line: 100, column: 13, scope: !3918, inlinedAt: !4066)
!4086 = !DILocation(line: 101, column: 28, scope: !3918, inlinedAt: !4066)
!4087 = !DILocation(line: 1345, column: 21, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1345, column: 21)
!4089 = !DILocation(line: 1345, column: 50, scope: !4088)
!4090 = !DILocation(line: 1345, column: 21, scope: !3878)
!4091 = !DILocation(line: 1346, column: 21, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1346, column: 21)
!4093 = !DILocation(line: 1346, column: 58, scope: !4092)
!4094 = !DILocation(line: 1347, column: 13, scope: !3879)
!4095 = !DILocation(line: 1349, column: 22, scope: !3884)
!4096 = !DILocation(line: 1349, column: 49, scope: !3884)
!4097 = !DILocation(line: 1349, column: 38, scope: !3884)
!4098 = !DILocation(line: 1349, column: 17, scope: !3867)
!4099 = !DILocation(line: 1278, column: 5, scope: !3819, inlinedAt: !3882)
!4100 = !DILocation(line: 1279, column: 20, scope: !3819, inlinedAt: !3882)
!4101 = !DILocation(line: 1282, column: 25, scope: !3819, inlinedAt: !3882)
!4102 = !DILocation(line: 1282, column: 13, scope: !3819, inlinedAt: !3882)
!4103 = !DILocation(line: 1279, column: 13, scope: !3819, inlinedAt: !3882)
!4104 = !DILocation(line: 1282, column: 74, scope: !3819, inlinedAt: !3882)
!4105 = !DILocation(line: 1281, column: 5, scope: !3819, inlinedAt: !3882)
!4106 = !DILocation(line: 1283, column: 50, scope: !3838, inlinedAt: !3882)
!4107 = !DILocation(line: 1283, column: 33, scope: !3838, inlinedAt: !3882)
!4108 = !DILocation(line: 1283, column: 31, scope: !3838, inlinedAt: !3882)
!4109 = !DILocation(line: 1287, column: 1, scope: !3819, inlinedAt: !3882)
!4110 = !DILocation(line: 1352, column: 13, scope: !3883)
!4111 = !DILocation(line: 1353, column: 9, scope: !3858)
!4112 = !DILocation(line: 0, scope: !3848)
!4113 = !DILocation(line: 0, scope: !3883)
!4114 = !DILocation(line: 1354, column: 9, scope: !3858)
!4115 = !DILocation(line: 1356, column: 5, scope: !3859)
!4116 = !DILocation(line: 1295, column: 36, scope: !3859)
!4117 = distinct !{!4117, !3892, !4118}
!4118 = !DILocation(line: 1356, column: 5, scope: !3860)
!4119 = !DILocation(line: 1360, column: 9, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1360, column: 9)
!4121 = !DILocation(line: 1360, column: 9, scope: !3848)
!4122 = !DILocation(line: 1360, column: 13, scope: !4120)
!4123 = !DILocation(line: 1362, column: 1, scope: !3848)
!4124 = distinct !DISubprogram(name: "rewriteAppendOnlyFile", scope: !3, file: !3, line: 1371, type: !1798, isLocal: false, isDefinition: true, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4125)
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4131, !4134, !4135}
!4126 = !DILocalVariable(name: "filename", arg: 1, scope: !4124, file: !3, line: 1371, type: !20)
!4127 = !DILocalVariable(name: "aof", scope: !4124, file: !3, line: 1372, type: !2051)
!4128 = !DILocalVariable(name: "fp", scope: !4124, file: !3, line: 1373, type: !1804)
!4129 = !DILocalVariable(name: "tmpfile", scope: !4124, file: !3, line: 1374, type: !883)
!4130 = !DILocalVariable(name: "byte", scope: !4124, file: !3, line: 1375, type: !21)
!4131 = !DILocalVariable(name: "error", scope: !4132, file: !3, line: 1393, type: !6)
!4132 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1392, column: 38)
!4133 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1392, column: 9)
!4134 = !DILocalVariable(name: "nodata", scope: !4124, file: !3, line: 1413, type: !6)
!4135 = !DILocalVariable(name: "start", scope: !4124, file: !3, line: 1414, type: !74)
!4136 = !DILocation(line: 1278, column: 10, scope: !3819, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 1438, column: 5, scope: !4124)
!4138 = !DILocation(line: 1278, column: 10, scope: !3819, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 1423, column: 9, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1415, column: 49)
!4141 = !DILocation(line: 1371, column: 33, scope: !4124)
!4142 = !DILocation(line: 1372, column: 5, scope: !4124)
!4143 = !DILocation(line: 1374, column: 5, scope: !4124)
!4144 = !DILocation(line: 1374, column: 10, scope: !4124)
!4145 = !DILocation(line: 1375, column: 10, scope: !4124)
!4146 = !DILocation(line: 1375, column: 5, scope: !4124)
!4147 = !DILocation(line: 1379, column: 58, scope: !4124)
!4148 = !DILocation(line: 1379, column: 5, scope: !4124)
!4149 = !DILocation(line: 1380, column: 10, scope: !4124)
!4150 = !DILocation(line: 1373, column: 11, scope: !4124)
!4151 = !DILocation(line: 1381, column: 10, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1381, column: 9)
!4153 = !DILocation(line: 1381, column: 9, scope: !4124)
!4154 = !DILocation(line: 1382, column: 112, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 1381, column: 14)
!4156 = !DILocation(line: 1382, column: 103, scope: !4155)
!4157 = !DILocation(line: 1382, column: 9, scope: !4155)
!4158 = !DILocation(line: 1383, column: 9, scope: !4155)
!4159 = !DILocation(line: 1386, column: 29, scope: !4124)
!4160 = !DILocation(line: 1386, column: 27, scope: !4124)
!4161 = !DILocation(line: 1372, column: 9, scope: !4124)
!4162 = !DILocation(line: 1387, column: 5, scope: !4124)
!4163 = !DILocation(line: 1389, column: 16, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1389, column: 9)
!4165 = !{!91, !92, i64 2016}
!4166 = !DILocation(line: 1389, column: 9, scope: !4164)
!4167 = !DILocation(line: 1389, column: 9, scope: !4124)
!4168 = !DILocation(line: 1390, column: 9, scope: !4164)
!4169 = !DILocation(line: 1392, column: 16, scope: !4133)
!4170 = !{!91, !92, i64 2036}
!4171 = !DILocation(line: 1392, column: 9, scope: !4133)
!4172 = !DILocation(line: 1392, column: 9, scope: !4124)
!4173 = !DILocation(line: 1393, column: 9, scope: !4132)
!4174 = !DILocation(line: 1393, column: 13, scope: !4132)
!4175 = !DILocation(line: 1394, column: 13, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 1394, column: 13)
!4177 = !DILocation(line: 1394, column: 64, scope: !4176)
!4178 = !DILocation(line: 1394, column: 13, scope: !4132)
!4179 = !DILocation(line: 1398, column: 5, scope: !4133)
!4180 = !DILocation(line: 1395, column: 21, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 1394, column: 74)
!4182 = !DILocation(line: 1395, column: 13, scope: !4181)
!4183 = !DILocation(line: 1395, column: 19, scope: !4181)
!4184 = !DILocation(line: 1399, column: 13, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 1399, column: 13)
!4186 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 1398, column: 12)
!4187 = !DILocation(line: 1399, column: 44, scope: !4185)
!4188 = !DILocation(line: 1399, column: 13, scope: !4186)
!4189 = !DILocation(line: 1404, column: 9, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1404, column: 9)
!4191 = !DILocation(line: 1404, column: 20, scope: !4190)
!4192 = !DILocation(line: 1404, column: 9, scope: !4124)
!4193 = !DILocation(line: 1405, column: 15, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1405, column: 9)
!4195 = !DILocation(line: 1405, column: 9, scope: !4194)
!4196 = !DILocation(line: 1405, column: 27, scope: !4194)
!4197 = !DILocation(line: 1405, column: 9, scope: !4124)
!4198 = !DILocation(line: 1413, column: 9, scope: !4124)
!4199 = !DILocation(line: 1414, column: 22, scope: !4124)
!4200 = !DILocation(line: 1414, column: 14, scope: !4124)
!4201 = !DILocation(line: 1415, column: 11, scope: !4124)
!4202 = !DILocation(line: 1415, column: 19, scope: !4124)
!4203 = !DILocation(line: 1415, column: 26, scope: !4124)
!4204 = !DILocation(line: 1415, column: 5, scope: !4124)
!4205 = !DILocation(line: 1416, column: 27, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 1416, column: 13)
!4207 = !DILocation(line: 1416, column: 13, scope: !4206)
!4208 = !DILocation(line: 1416, column: 75, scope: !4206)
!4209 = !DILocation(line: 1416, column: 13, scope: !4140)
!4210 = !DILocation(line: 1418, column: 19, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 1417, column: 9)
!4212 = !DILocation(line: 1419, column: 13, scope: !4211)
!4213 = !DILocation(line: 1415, column: 43, scope: !4124)
!4214 = !DILocation(line: 1415, column: 33, scope: !4124)
!4215 = distinct !{!4215, !4204, !4216}
!4216 = !DILocation(line: 1424, column: 5, scope: !4124)
!4217 = !DILocation(line: 1278, column: 5, scope: !3819, inlinedAt: !4139)
!4218 = !DILocation(line: 1279, column: 20, scope: !3819, inlinedAt: !4139)
!4219 = !DILocation(line: 1282, column: 25, scope: !3819, inlinedAt: !4139)
!4220 = !DILocation(line: 1282, column: 13, scope: !3819, inlinedAt: !4139)
!4221 = !DILocation(line: 1279, column: 13, scope: !3819, inlinedAt: !4139)
!4222 = !DILocation(line: 1282, column: 74, scope: !3819, inlinedAt: !4139)
!4223 = !DILocation(line: 1281, column: 5, scope: !3819, inlinedAt: !4139)
!4224 = !DILocation(line: 1283, column: 50, scope: !3838, inlinedAt: !4139)
!4225 = !DILocation(line: 1283, column: 33, scope: !3838, inlinedAt: !4139)
!4226 = !DILocation(line: 1283, column: 31, scope: !3838, inlinedAt: !4139)
!4227 = !DILocation(line: 1287, column: 1, scope: !3819, inlinedAt: !4139)
!4228 = !DILocation(line: 1427, column: 22, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1427, column: 9)
!4230 = !DILocation(line: 1427, column: 9, scope: !4229)
!4231 = !DILocation(line: 1427, column: 58, scope: !4229)
!4232 = !DILocation(line: 1427, column: 9, scope: !4124)
!4233 = !DILocation(line: 1428, column: 34, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1428, column: 9)
!4235 = !DILocation(line: 1428, column: 9, scope: !4234)
!4236 = !DILocation(line: 1428, column: 65, scope: !4234)
!4237 = !DILocation(line: 1428, column: 9, scope: !4124)
!4238 = !DILocation(line: 1433, column: 25, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1433, column: 9)
!4240 = !DILocation(line: 1433, column: 9, scope: !4239)
!4241 = !DILocation(line: 1433, column: 69, scope: !4239)
!4242 = !DILocation(line: 1434, column: 9, scope: !4239)
!4243 = !DILocation(line: 1434, column: 14, scope: !4239)
!4244 = !DILocation(line: 1433, column: 74, scope: !4239)
!4245 = !DILocation(line: 1435, column: 5, scope: !4124)
!4246 = !DILocation(line: 1278, column: 5, scope: !3819, inlinedAt: !4137)
!4247 = !DILocation(line: 1279, column: 20, scope: !3819, inlinedAt: !4137)
!4248 = !DILocation(line: 1282, column: 25, scope: !3819, inlinedAt: !4137)
!4249 = !DILocation(line: 1282, column: 13, scope: !3819, inlinedAt: !4137)
!4250 = !DILocation(line: 1279, column: 13, scope: !3819, inlinedAt: !4137)
!4251 = !DILocation(line: 1282, column: 74, scope: !3819, inlinedAt: !4137)
!4252 = !DILocation(line: 1281, column: 5, scope: !3819, inlinedAt: !4137)
!4253 = !DILocation(line: 1283, column: 50, scope: !3838, inlinedAt: !4137)
!4254 = !DILocation(line: 1283, column: 33, scope: !3838, inlinedAt: !4137)
!4255 = !DILocation(line: 1283, column: 31, scope: !3838, inlinedAt: !4137)
!4256 = !DILocation(line: 1287, column: 1, scope: !3819, inlinedAt: !4137)
!4257 = !DILocation(line: 1443, column: 32, scope: !4124)
!4258 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !4259)
!4259 = distinct !DILocation(line: 1443, column: 18, scope: !4124)
!4260 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !4259)
!4261 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !4259)
!4262 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !4259)
!4263 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !4259)
!4264 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !4259)
!4265 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !4259)
!4266 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !4259)
!4267 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !4259)
!4268 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !4259)
!4269 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !4259)
!4270 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !4259)
!4271 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !4259)
!4272 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !4259)
!4273 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !4259)
!4274 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !4259)
!4275 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !4259)
!4276 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !4259)
!4277 = !DILocation(line: 0, scope: !485, inlinedAt: !4259)
!4278 = !DILocation(line: 1443, column: 9, scope: !4124)
!4279 = !DILocation(line: 1443, column: 48, scope: !4124)
!4280 = !DILocation(line: 1441, column: 5, scope: !4124)
!4281 = !DILocation(line: 1444, column: 30, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1444, column: 9)
!4283 = !DILocation(line: 87, column: 39, scope: !463, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 1444, column: 45, scope: !4282)
!4285 = !DILocation(line: 88, column: 27, scope: !463, inlinedAt: !4284)
!4286 = !DILocation(line: 88, column: 19, scope: !463, inlinedAt: !4284)
!4287 = !DILocation(line: 89, column: 5, scope: !463, inlinedAt: !4284)
!4288 = !DILocation(line: 91, column: 20, scope: !485, inlinedAt: !4284)
!4289 = !DILocation(line: 91, column: 13, scope: !485, inlinedAt: !4284)
!4290 = !DILocation(line: 93, column: 20, scope: !485, inlinedAt: !4284)
!4291 = !DILocation(line: 93, column: 34, scope: !485, inlinedAt: !4284)
!4292 = !DILocation(line: 93, column: 13, scope: !485, inlinedAt: !4284)
!4293 = !DILocation(line: 95, column: 20, scope: !485, inlinedAt: !4284)
!4294 = !DILocation(line: 95, column: 35, scope: !485, inlinedAt: !4284)
!4295 = !DILocation(line: 95, column: 13, scope: !485, inlinedAt: !4284)
!4296 = !DILocation(line: 97, column: 20, scope: !485, inlinedAt: !4284)
!4297 = !DILocation(line: 97, column: 35, scope: !485, inlinedAt: !4284)
!4298 = !DILocation(line: 97, column: 13, scope: !485, inlinedAt: !4284)
!4299 = !DILocation(line: 99, column: 20, scope: !485, inlinedAt: !4284)
!4300 = !DILocation(line: 99, column: 35, scope: !485, inlinedAt: !4284)
!4301 = !DILocation(line: 99, column: 13, scope: !485, inlinedAt: !4284)
!4302 = !DILocation(line: 0, scope: !485, inlinedAt: !4284)
!4303 = !DILocation(line: 93, column: 36, scope: !3911, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 1444, column: 9, scope: !4282)
!4305 = !DILocation(line: 93, column: 51, scope: !3911, inlinedAt: !4304)
!4306 = !DILocation(line: 93, column: 63, scope: !3911, inlinedAt: !4304)
!4307 = !DILocation(line: 94, column: 5, scope: !3911, inlinedAt: !4304)
!4308 = !DILocation(line: 95, column: 37, scope: !3918, inlinedAt: !4304)
!4309 = !DILocation(line: 95, column: 34, scope: !3918, inlinedAt: !4304)
!4310 = !DILocation(line: 95, column: 85, scope: !3918, inlinedAt: !4304)
!4311 = !DILocation(line: 95, column: 58, scope: !3918, inlinedAt: !4304)
!4312 = !DILocation(line: 95, column: 16, scope: !3918, inlinedAt: !4304)
!4313 = !DILocation(line: 96, column: 16, scope: !3933, inlinedAt: !4304)
!4314 = !DILocation(line: 96, column: 13, scope: !3933, inlinedAt: !4304)
!4315 = !DILocation(line: 96, column: 13, scope: !3918, inlinedAt: !4304)
!4316 = !DILocation(line: 96, column: 30, scope: !3933, inlinedAt: !4304)
!4317 = !DILocation(line: 97, column: 16, scope: !3939, inlinedAt: !4304)
!4318 = !DILocation(line: 97, column: 13, scope: !3939, inlinedAt: !4304)
!4319 = !DILocation(line: 97, column: 44, scope: !3939, inlinedAt: !4304)
!4320 = !DILocation(line: 97, column: 13, scope: !3918, inlinedAt: !4304)
!4321 = !DILocation(line: 99, column: 26, scope: !3918, inlinedAt: !4304)
!4322 = !DILocation(line: 100, column: 13, scope: !3918, inlinedAt: !4304)
!4323 = !DILocation(line: 101, column: 28, scope: !3918, inlinedAt: !4304)
!4324 = !DILocation(line: 1448, column: 9, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1448, column: 9)
!4326 = !DILocation(line: 1448, column: 20, scope: !4325)
!4327 = !DILocation(line: 1448, column: 9, scope: !4124)
!4328 = !DILocation(line: 1449, column: 15, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1449, column: 9)
!4330 = !DILocation(line: 1449, column: 9, scope: !4329)
!4331 = !DILocation(line: 1449, column: 27, scope: !4329)
!4332 = !DILocation(line: 1449, column: 9, scope: !4124)
!4333 = !DILocation(line: 1450, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1450, column: 9)
!4335 = !DILocation(line: 1450, column: 20, scope: !4334)
!4336 = !DILocation(line: 1450, column: 9, scope: !4124)
!4337 = !DILocation(line: 1454, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1454, column: 9)
!4339 = !DILocation(line: 1454, column: 34, scope: !4338)
!4340 = !DILocation(line: 1454, column: 9, scope: !4124)
!4341 = !DILocation(line: 1455, column: 106, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !3, line: 1454, column: 41)
!4343 = !DILocation(line: 1455, column: 97, scope: !4342)
!4344 = !DILocation(line: 1455, column: 9, scope: !4342)
!4345 = !DILocation(line: 1456, column: 9, scope: !4342)
!4346 = !DILocation(line: 1457, column: 9, scope: !4342)
!4347 = !DILocation(line: 1459, column: 5, scope: !4124)
!4348 = !DILocation(line: 1460, column: 5, scope: !4124)
!4349 = !DILocation(line: 1463, column: 87, scope: !4124)
!4350 = !DILocation(line: 1463, column: 78, scope: !4124)
!4351 = !DILocation(line: 1463, column: 5, scope: !4124)
!4352 = !DILocation(line: 1464, column: 5, scope: !4124)
!4353 = !DILocation(line: 1465, column: 5, scope: !4124)
!4354 = !DILocation(line: 1466, column: 5, scope: !4124)
!4355 = !DILocation(line: 1467, column: 1, scope: !4124)
!4356 = distinct !DISubprogram(name: "aofChildPipeReadable", scope: !3, file: !3, line: 1476, type: !166, isLocal: false, isDefinition: true, scopeLine: 1476, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362}
!4358 = !DILocalVariable(name: "el", arg: 1, scope: !4356, file: !3, line: 1476, type: !168)
!4359 = !DILocalVariable(name: "fd", arg: 2, scope: !4356, file: !3, line: 1476, type: !6)
!4360 = !DILocalVariable(name: "privdata", arg: 3, scope: !4356, file: !3, line: 1476, type: !10)
!4361 = !DILocalVariable(name: "mask", arg: 4, scope: !4356, file: !3, line: 1476, type: !6)
!4362 = !DILocalVariable(name: "byte", scope: !4356, file: !3, line: 1477, type: !21)
!4363 = !DILocation(line: 1476, column: 40, scope: !4356)
!4364 = !DILocation(line: 1476, column: 48, scope: !4356)
!4365 = !DILocation(line: 1476, column: 58, scope: !4356)
!4366 = !DILocation(line: 1476, column: 72, scope: !4356)
!4367 = !DILocation(line: 1477, column: 10, scope: !4356)
!4368 = !DILocation(line: 1477, column: 5, scope: !4356)
!4369 = !DILocation(line: 1482, column: 9, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1482, column: 9)
!4371 = !DILocation(line: 1482, column: 26, scope: !4370)
!4372 = !DILocation(line: 1482, column: 34, scope: !4370)
!4373 = !DILocation(line: 1482, column: 39, scope: !4370)
!4374 = !DILocation(line: 1482, column: 31, scope: !4370)
!4375 = !DILocation(line: 1483, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 1482, column: 47)
!4377 = !DILocation(line: 1484, column: 38, scope: !4376)
!4378 = !DILocation(line: 1485, column: 26, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 1485, column: 13)
!4380 = !DILocation(line: 1485, column: 13, scope: !4379)
!4381 = !DILocation(line: 1485, column: 61, scope: !4379)
!4382 = !DILocation(line: 1485, column: 13, scope: !4376)
!4383 = !DILocation(line: 1491, column: 26, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 1485, column: 67)
!4385 = !DILocation(line: 1491, column: 17, scope: !4384)
!4386 = !DILocation(line: 1490, column: 13, scope: !4384)
!4387 = !DILocation(line: 1492, column: 9, scope: !4384)
!4388 = !DILocation(line: 1496, column: 30, scope: !4356)
!4389 = !DILocation(line: 1496, column: 40, scope: !4356)
!4390 = !DILocation(line: 1496, column: 5, scope: !4356)
!4391 = !DILocation(line: 1497, column: 1, scope: !4356)
!4392 = distinct !DISubprogram(name: "aofCreatePipes", scope: !3, file: !3, line: 1504, type: !429, isLocal: false, isDefinition: true, scopeLine: 1504, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4393)
!4393 = !{!4394, !4398}
!4394 = !DILocalVariable(name: "fds", scope: !4392, file: !3, line: 1505, type: !4395)
!4395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !4396)
!4396 = !{!4397}
!4397 = !DISubrange(count: 6)
!4398 = !DILocalVariable(name: "j", scope: !4392, file: !3, line: 1506, type: !6)
!4399 = !DILocation(line: 1505, column: 5, scope: !4392)
!4400 = !DILocation(line: 1505, column: 9, scope: !4392)
!4401 = !DILocation(line: 1508, column: 14, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1508, column: 9)
!4403 = !DILocation(line: 1508, column: 9, scope: !4402)
!4404 = !DILocation(line: 1508, column: 19, scope: !4402)
!4405 = !DILocation(line: 1508, column: 9, scope: !4392)
!4406 = !DILocation(line: 1509, column: 17, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1509, column: 9)
!4408 = !DILocation(line: 1509, column: 9, scope: !4407)
!4409 = !DILocation(line: 1509, column: 21, scope: !4407)
!4410 = !DILocation(line: 1509, column: 9, scope: !4392)
!4411 = !DILocation(line: 1510, column: 17, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1510, column: 9)
!4413 = !DILocation(line: 1510, column: 9, scope: !4412)
!4414 = !DILocation(line: 1510, column: 21, scope: !4412)
!4415 = !DILocation(line: 1510, column: 9, scope: !4392)
!4416 = !DILocation(line: 1512, column: 27, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1512, column: 9)
!4418 = !DILocation(line: 1512, column: 9, scope: !4417)
!4419 = !DILocation(line: 1512, column: 35, scope: !4417)
!4420 = !DILocation(line: 1512, column: 9, scope: !4392)
!4421 = !DILocation(line: 1513, column: 27, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1513, column: 9)
!4423 = !DILocation(line: 1513, column: 9, scope: !4422)
!4424 = !DILocation(line: 1513, column: 35, scope: !4422)
!4425 = !DILocation(line: 1513, column: 9, scope: !4392)
!4426 = !DILocation(line: 1514, column: 34, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1514, column: 9)
!4428 = !DILocation(line: 1514, column: 38, scope: !4427)
!4429 = !DILocation(line: 1514, column: 9, scope: !4427)
!4430 = !DILocation(line: 1514, column: 87, scope: !4427)
!4431 = !DILocation(line: 1514, column: 9, scope: !4392)
!4432 = !DILocation(line: 1517, column: 45, scope: !4392)
!4433 = !DILocation(line: 1516, column: 41, scope: !4392)
!4434 = !DILocation(line: 1520, column: 42, scope: !4392)
!4435 = !DILocation(line: 1520, column: 40, scope: !4392)
!4436 = !DILocation(line: 1521, column: 44, scope: !4392)
!4437 = !DILocation(line: 1521, column: 42, scope: !4392)
!4438 = !DILocation(line: 1522, column: 34, scope: !4392)
!4439 = !DILocation(line: 1523, column: 5, scope: !4392)
!4440 = !DILocation(line: 1527, column: 18, scope: !4392)
!4441 = !DILocation(line: 1527, column: 9, scope: !4392)
!4442 = !DILocation(line: 1526, column: 5, scope: !4392)
!4443 = !DILocation(line: 1506, column: 9, scope: !4392)
!4444 = !DILocation(line: 1528, column: 32, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 1528, column: 32)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 1528, column: 5)
!4447 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1528, column: 5)
!4448 = !DILocation(line: 1528, column: 39, scope: !4445)
!4449 = !DILocation(line: 1528, column: 32, scope: !4446)
!4450 = !DILocation(line: 1528, column: 46, scope: !4445)
!4451 = !DILocation(line: 0, scope: !4392)
!4452 = !DILocation(line: 1530, column: 1, scope: !4392)
!4453 = !DILocation(line: 1533, column: 30, scope: !926)
!4454 = !DILocation(line: 1533, column: 40, scope: !926)
!4455 = !DILocation(line: 1533, column: 5, scope: !926)
!4456 = !DILocation(line: 1534, column: 30, scope: !926)
!4457 = !DILocation(line: 1534, column: 40, scope: !926)
!4458 = !DILocation(line: 1534, column: 5, scope: !926)
!4459 = !DILocation(line: 1535, column: 18, scope: !926)
!4460 = !DILocation(line: 1535, column: 5, scope: !926)
!4461 = !DILocation(line: 1536, column: 18, scope: !926)
!4462 = !DILocation(line: 1536, column: 5, scope: !926)
!4463 = !DILocation(line: 1537, column: 18, scope: !926)
!4464 = !DILocation(line: 1537, column: 5, scope: !926)
!4465 = !DILocation(line: 1538, column: 18, scope: !926)
!4466 = !DILocation(line: 1538, column: 5, scope: !926)
!4467 = !DILocation(line: 1539, column: 18, scope: !926)
!4468 = !DILocation(line: 1539, column: 5, scope: !926)
!4469 = !DILocation(line: 1540, column: 18, scope: !926)
!4470 = !DILocation(line: 1540, column: 5, scope: !926)
!4471 = !DILocation(line: 1541, column: 1, scope: !926)
!4472 = distinct !DISubprogram(name: "bgrewriteaofCommand", scope: !3, file: !3, line: 1619, type: !1264, isLocal: false, isDefinition: true, scopeLine: 1619, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4473)
!4473 = !{!4474}
!4474 = !DILocalVariable(name: "c", arg: 1, scope: !4472, file: !3, line: 1619, type: !1266)
!4475 = !DILocation(line: 1619, column: 34, scope: !4472)
!4476 = !DILocation(line: 1620, column: 16, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 1620, column: 9)
!4478 = !DILocation(line: 1620, column: 30, scope: !4477)
!4479 = !DILocation(line: 1620, column: 9, scope: !4472)
!4480 = !DILocation(line: 1621, column: 9, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1620, column: 37)
!4482 = !DILocation(line: 1622, column: 5, scope: !4481)
!4483 = !DILocation(line: 1622, column: 23, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1622, column: 16)
!4485 = !DILocation(line: 1622, column: 37, scope: !4484)
!4486 = !DILocation(line: 1622, column: 16, scope: !4477)
!4487 = !DILocation(line: 1623, column: 38, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1622, column: 44)
!4489 = !DILocation(line: 1624, column: 9, scope: !4488)
!4490 = !DILocation(line: 1625, column: 5, scope: !4488)
!4491 = !DILocation(line: 1625, column: 16, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1625, column: 16)
!4493 = !DILocation(line: 1625, column: 50, scope: !4492)
!4494 = !DILocation(line: 1625, column: 16, scope: !4484)
!4495 = !DILocation(line: 1626, column: 9, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1625, column: 59)
!4497 = !DILocation(line: 1627, column: 5, scope: !4496)
!4498 = !DILocation(line: 1628, column: 27, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1627, column: 12)
!4500 = !{!4501, !95, i64 16}
!4501 = !{!"sharedObjectsStruct", !95, i64 0, !95, i64 8, !95, i64 16, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !95, i64 80, !95, i64 88, !95, i64 96, !95, i64 104, !95, i64 112, !95, i64 120, !95, i64 128, !95, i64 136, !95, i64 144, !95, i64 152, !95, i64 160, !95, i64 168, !95, i64 176, !95, i64 184, !95, i64 192, !95, i64 200, !95, i64 208, !95, i64 216, !95, i64 224, !95, i64 232, !95, i64 240, !95, i64 248, !95, i64 256, !95, i64 264, !95, i64 272, !95, i64 280, !95, i64 288, !95, i64 296, !95, i64 304, !95, i64 312, !95, i64 320, !95, i64 328, !95, i64 336, !95, i64 344, !95, i64 352, !95, i64 360, !93, i64 368, !93, i64 448, !93, i64 80448, !93, i64 80704, !95, i64 80960, !95, i64 80968}
!4502 = !DILocation(line: 1628, column: 9, scope: !4499)
!4503 = !DILocation(line: 1630, column: 1, scope: !4472)
!4504 = !DILocation(line: 1632, column: 30, scope: !876)
!4505 = !DILocation(line: 1633, column: 5, scope: !876)
!4506 = !DILocation(line: 1633, column: 10, scope: !876)
!4507 = !DILocation(line: 1635, column: 5, scope: !876)
!4508 = !DILocation(line: 1636, column: 5, scope: !876)
!4509 = !DILocation(line: 1637, column: 1, scope: !876)
!4510 = distinct !DISubprogram(name: "backgroundRewriteDoneHandler", scope: !3, file: !3, line: 1660, type: !4511, isLocal: false, isDefinition: true, scopeLine: 1660, flags: DIFlagPrototyped, isOptimized: true, unit: !7, retainedNodes: !4513)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !6, !6}
!4513 = !{!4514, !4515, !4516, !4519, !4520, !4521, !4522}
!4514 = !DILocalVariable(name: "exitcode", arg: 1, scope: !4510, file: !3, line: 1660, type: !6)
!4515 = !DILocalVariable(name: "bysignal", arg: 2, scope: !4510, file: !3, line: 1660, type: !6)
!4516 = !DILocalVariable(name: "newfd", scope: !4517, file: !3, line: 1662, type: !6)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 1661, column: 37)
!4518 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1661, column: 9)
!4519 = !DILocalVariable(name: "oldfd", scope: !4517, file: !3, line: 1662, type: !6)
!4520 = !DILocalVariable(name: "tmpfile", scope: !4517, file: !3, line: 1663, type: !883)
!4521 = !DILocalVariable(name: "now", scope: !4517, file: !3, line: 1664, type: !16)
!4522 = !DILocalVariable(name: "latency", scope: !4517, file: !3, line: 1665, type: !74)
!4523 = !DILocation(line: 1633, column: 10, scope: !876, inlinedAt: !4524)
!4524 = distinct !DILocation(line: 1801, column: 5, scope: !4510)
!4525 = !DILocation(line: 1660, column: 39, scope: !4510)
!4526 = !DILocation(line: 1660, column: 53, scope: !4510)
!4527 = !DILocation(line: 1661, column: 19, scope: !4518)
!4528 = !DILocation(line: 1663, column: 9, scope: !4517)
!4529 = !DILocation(line: 1663, column: 14, scope: !4517)
!4530 = !DILocation(line: 1664, column: 25, scope: !4517)
!4531 = !DILocation(line: 1664, column: 19, scope: !4517)
!4532 = !DILocation(line: 1667, column: 9, scope: !4517)
!4533 = !DILocation(line: 1672, column: 9, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1672, column: 9)
!4535 = !DILocation(line: 1672, column: 9, scope: !4517)
!4536 = !DILocation(line: 1672, column: 9, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1672, column: 9)
!4538 = !DILocation(line: 1665, column: 18, scope: !4517)
!4539 = !DILocation(line: 1674, column: 25, scope: !4517)
!4540 = !DILocation(line: 1673, column: 9, scope: !4517)
!4541 = !DILocation(line: 1675, column: 17, scope: !4517)
!4542 = !DILocation(line: 1662, column: 13, scope: !4517)
!4543 = !DILocation(line: 1676, column: 19, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1676, column: 13)
!4545 = !DILocation(line: 1676, column: 13, scope: !4517)
!4546 = !DILocation(line: 1678, column: 88, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 1676, column: 26)
!4548 = !DILocation(line: 1678, column: 79, scope: !4547)
!4549 = !DILocation(line: 1677, column: 13, scope: !4547)
!4550 = !DILocation(line: 1679, column: 13, scope: !4547)
!4551 = !DILocation(line: 1682, column: 13, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1682, column: 13)
!4553 = !DILocation(line: 1682, column: 42, scope: !4552)
!4554 = !DILocation(line: 1682, column: 13, scope: !4517)
!4555 = !DILocation(line: 1684, column: 92, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 1682, column: 49)
!4557 = !DILocation(line: 1684, column: 83, scope: !4556)
!4558 = !DILocation(line: 1683, column: 13, scope: !4556)
!4559 = !DILocation(line: 1685, column: 13, scope: !4556)
!4560 = !DILocation(line: 1686, column: 13, scope: !4556)
!4561 = !DILocation(line: 1688, column: 9, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1688, column: 9)
!4563 = !DILocation(line: 1688, column: 9, scope: !4517)
!4564 = !DILocation(line: 1688, column: 9, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 1688, column: 9)
!4566 = !DILocation(line: 1689, column: 9, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1689, column: 9)
!4568 = !DILocation(line: 81, column: 5, scope: !111, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 1692, column: 98, scope: !4517)
!4570 = !DILocation(line: 82, column: 19, scope: !111, inlinedAt: !4569)
!4571 = !DILocation(line: 84, column: 23, scope: !111, inlinedAt: !4569)
!4572 = !DILocation(line: 81, column: 14, scope: !111, inlinedAt: !4569)
!4573 = !DILocation(line: 84, column: 5, scope: !111, inlinedAt: !4569)
!4574 = !DILocation(line: 85, column: 17, scope: !111, inlinedAt: !4569)
!4575 = !DILocation(line: 80, column: 15, scope: !111, inlinedAt: !4569)
!4576 = !DILocation(line: 85, column: 5, scope: !111, inlinedAt: !4569)
!4577 = !DILocation(line: 86, column: 29, scope: !133, inlinedAt: !4569)
!4578 = !DILocation(line: 86, column: 21, scope: !133, inlinedAt: !4569)
!4579 = !DILocation(line: 87, column: 24, scope: !133, inlinedAt: !4569)
!4580 = !DILocation(line: 87, column: 14, scope: !133, inlinedAt: !4569)
!4581 = !DILocation(line: 90, column: 1, scope: !111, inlinedAt: !4569)
!4582 = !DILocation(line: 1691, column: 9, scope: !4517)
!4583 = !DILocation(line: 1721, column: 20, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1721, column: 13)
!4585 = !DILocation(line: 1721, column: 27, scope: !4584)
!4586 = !DILocation(line: 1721, column: 13, scope: !4517)
!4587 = !DILocation(line: 1727, column: 33, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1721, column: 34)
!4589 = !DILocation(line: 1727, column: 21, scope: !4588)
!4590 = !DILocation(line: 1662, column: 20, scope: !4517)
!4591 = !DILocation(line: 1728, column: 9, scope: !4588)
!4592 = !DILocation(line: 0, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 1728, column: 16)
!4594 = !DILocation(line: 1735, column: 9, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1735, column: 9)
!4596 = !DILocation(line: 1735, column: 9, scope: !4517)
!4597 = !DILocation(line: 1735, column: 9, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 1735, column: 9)
!4599 = !DILocation(line: 1736, column: 35, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1736, column: 13)
!4601 = !DILocation(line: 1736, column: 13, scope: !4600)
!4602 = !DILocation(line: 1736, column: 49, scope: !4600)
!4603 = !DILocation(line: 1736, column: 13, scope: !4517)
!4604 = !DILocation(line: 1740, column: 24, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 1736, column: 56)
!4606 = !DILocation(line: 1741, column: 26, scope: !4605)
!4607 = !DILocation(line: 1741, column: 17, scope: !4605)
!4608 = !DILocation(line: 1737, column: 13, scope: !4605)
!4609 = !DILocation(line: 1742, column: 13, scope: !4605)
!4610 = !DILocation(line: 1743, column: 23, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 1743, column: 17)
!4612 = !DILocation(line: 1743, column: 17, scope: !4605)
!4613 = !DILocation(line: 1743, column: 30, scope: !4611)
!4614 = !DILocation(line: 1746, column: 9, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1746, column: 9)
!4616 = !DILocation(line: 1746, column: 9, scope: !4517)
!4617 = !DILocation(line: 1746, column: 9, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1746, column: 9)
!4619 = !DILocation(line: 1747, column: 9, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1747, column: 9)
!4621 = !DILocation(line: 1749, column: 20, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1749, column: 13)
!4623 = !DILocation(line: 1749, column: 27, scope: !4622)
!4624 = !DILocation(line: 1749, column: 13, scope: !4517)
!4625 = !DILocation(line: 1752, column: 13, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1749, column: 34)
!4627 = !DILocation(line: 1753, column: 9, scope: !4626)
!4628 = !DILocation(line: 1756, column: 27, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1753, column: 16)
!4630 = !DILocation(line: 1757, column: 24, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 1757, column: 17)
!4632 = !DILocation(line: 1757, column: 17, scope: !4629)
!4633 = !DILocation(line: 1758, column: 17, scope: !4631)
!4634 = !DILocation(line: 208, column: 31, scope: !434, inlinedAt: !4635)
!4635 = distinct !DILocation(line: 1760, column: 17, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1759, column: 22)
!4637 = !DILocation(line: 209, column: 49, scope: !434, inlinedAt: !4635)
!4638 = !DILocation(line: 209, column: 42, scope: !434, inlinedAt: !4635)
!4639 = !DILocation(line: 209, column: 5, scope: !434, inlinedAt: !4635)
!4640 = !DILocation(line: 1760, column: 17, scope: !4636)
!4641 = !DILocation(line: 1761, column: 36, scope: !4629)
!4642 = !DILocation(line: 1762, column: 13, scope: !4629)
!4643 = !DILocation(line: 1763, column: 51, scope: !4629)
!4644 = !DILocation(line: 1763, column: 42, scope: !4629)
!4645 = !DILocation(line: 1768, column: 28, scope: !4629)
!4646 = !DILocation(line: 1768, column: 13, scope: !4629)
!4647 = !DILocation(line: 1769, column: 30, scope: !4629)
!4648 = !DILocation(line: 1769, column: 28, scope: !4629)
!4649 = !DILocation(line: 0, scope: !4629)
!4650 = !DILocation(line: 1772, column: 41, scope: !4517)
!4651 = !{!91, !92, i64 2000}
!4652 = !DILocation(line: 1774, column: 9, scope: !4517)
!4653 = !DILocation(line: 1776, column: 20, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1776, column: 13)
!4655 = !DILocation(line: 1776, column: 30, scope: !4654)
!4656 = !DILocation(line: 1776, column: 13, scope: !4517)
!4657 = !DILocation(line: 1777, column: 30, scope: !4654)
!4658 = !DILocation(line: 1777, column: 13, scope: !4654)
!4659 = !DILocation(line: 1780, column: 19, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 1780, column: 13)
!4661 = !DILocation(line: 1780, column: 13, scope: !4517)
!4662 = !DILocation(line: 1780, column: 71, scope: !4660)
!4663 = !DILocation(line: 1780, column: 64, scope: !4660)
!4664 = !DILocation(line: 1780, column: 26, scope: !4660)
!4665 = !DILocation(line: 1783, column: 66, scope: !4517)
!4666 = !DILocation(line: 1783, column: 74, scope: !4517)
!4667 = !DILocation(line: 1782, column: 9, scope: !4517)
!4668 = !DILocation(line: 1784, column: 5, scope: !4518)
!4669 = !DILocation(line: 1661, column: 10, scope: !4518)
!4670 = !DILocation(line: 1784, column: 38, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 1784, column: 16)
!4672 = !DILocation(line: 1784, column: 26, scope: !4671)
!4673 = !DILocation(line: 0, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1791, column: 12)
!4675 = !DILocation(line: 1789, column: 9, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 1784, column: 44)
!4677 = !DILocation(line: 1791, column: 5, scope: !4676)
!4678 = !DILocation(line: 1794, column: 9, scope: !4674)
!4679 = !DILocation(line: 1533, column: 30, scope: !926, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 1799, column: 5, scope: !4510)
!4681 = !DILocation(line: 1533, column: 40, scope: !926, inlinedAt: !4680)
!4682 = !DILocation(line: 1533, column: 5, scope: !926, inlinedAt: !4680)
!4683 = !DILocation(line: 1534, column: 30, scope: !926, inlinedAt: !4680)
!4684 = !DILocation(line: 1534, column: 40, scope: !926, inlinedAt: !4680)
!4685 = !DILocation(line: 1534, column: 5, scope: !926, inlinedAt: !4680)
!4686 = !DILocation(line: 1535, column: 18, scope: !926, inlinedAt: !4680)
!4687 = !DILocation(line: 1535, column: 5, scope: !926, inlinedAt: !4680)
!4688 = !DILocation(line: 1536, column: 18, scope: !926, inlinedAt: !4680)
!4689 = !DILocation(line: 1536, column: 5, scope: !926, inlinedAt: !4680)
!4690 = !DILocation(line: 1537, column: 18, scope: !926, inlinedAt: !4680)
!4691 = !DILocation(line: 1537, column: 5, scope: !926, inlinedAt: !4680)
!4692 = !DILocation(line: 1538, column: 18, scope: !926, inlinedAt: !4680)
!4693 = !DILocation(line: 1538, column: 5, scope: !926, inlinedAt: !4680)
!4694 = !DILocation(line: 1539, column: 18, scope: !926, inlinedAt: !4680)
!4695 = !DILocation(line: 1539, column: 5, scope: !926, inlinedAt: !4680)
!4696 = !DILocation(line: 1540, column: 18, scope: !926, inlinedAt: !4680)
!4697 = !DILocation(line: 1540, column: 5, scope: !926, inlinedAt: !4680)
!4698 = !DILocation(line: 71, column: 16, scope: !89, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 1800, column: 5, scope: !4510)
!4700 = !DILocation(line: 71, column: 9, scope: !89, inlinedAt: !4699)
!4701 = !DILocation(line: 71, column: 9, scope: !85, inlinedAt: !4699)
!4702 = !DILocation(line: 72, column: 9, scope: !89, inlinedAt: !4699)
!4703 = !DILocation(line: 74, column: 37, scope: !85, inlinedAt: !4699)
!4704 = !DILocation(line: 74, column: 35, scope: !85, inlinedAt: !4699)
!4705 = !DILocation(line: 75, column: 5, scope: !85, inlinedAt: !4699)
!4706 = !DILocation(line: 1801, column: 30, scope: !4510)
!4707 = !DILocation(line: 1632, column: 30, scope: !876, inlinedAt: !4524)
!4708 = !DILocation(line: 1633, column: 5, scope: !876, inlinedAt: !4524)
!4709 = !DILocation(line: 1635, column: 5, scope: !876, inlinedAt: !4524)
!4710 = !DILocation(line: 1636, column: 5, scope: !876, inlinedAt: !4524)
!4711 = !DILocation(line: 1637, column: 1, scope: !876, inlinedAt: !4524)
!4712 = !DILocation(line: 1802, column: 26, scope: !4510)
!4713 = !DILocation(line: 1803, column: 36, scope: !4510)
!4714 = !DILocation(line: 1803, column: 54, scope: !4510)
!4715 = !DILocation(line: 1803, column: 46, scope: !4510)
!4716 = !DILocation(line: 1803, column: 34, scope: !4510)
!4717 = !{!91, !96, i64 1984}
!4718 = !DILocation(line: 1804, column: 35, scope: !4510)
!4719 = !DILocation(line: 1806, column: 16, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 1806, column: 9)
!4721 = !DILocation(line: 1806, column: 26, scope: !4720)
!4722 = !DILocation(line: 1806, column: 9, scope: !4510)
!4723 = !DILocation(line: 1807, column: 38, scope: !4720)
!4724 = !DILocation(line: 1807, column: 9, scope: !4720)
!4725 = !DILocation(line: 1808, column: 1, scope: !4510)
