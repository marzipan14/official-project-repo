; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/debug.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/debug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon.7], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.8, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
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
%struct.anon.7 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.8 = type { i32, i64, i64 }
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
%struct.SHA1_CTX = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.listTypeEntry = type { %struct.listTypeIterator*, %struct.quicklistEntry }
%struct.listTypeIterator = type { %struct.redisObject*, i8, i8, %struct.quicklistIter* }
%struct.quicklistIter = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.quicklistEntry = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i8*, i64, i32, i32 }
%struct.streamIterator = type { %struct.stream*, %struct.streamID, i64, i8*, i8*, i32, i32, [2 x i64], [2 x i64], %struct.raxIterator, i8*, i8*, i8*, [21 x i8], [21 x i8] }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.rax* }
%struct.streamID = type { i64, i64 }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.RedisModuleDigest = type { [20 x i8], [20 x i8] }
%struct.setTypeIterator = type { %struct.redisObject*, i32, i32, %struct.dictIterator* }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.hashTypeIterator = type { %struct.redisObject*, i32, i8*, i8*, %struct.dictIterator*, %struct.dictEntry* }
%struct.moduleValue = type { %struct.RedisModuleType*, i8* }
%struct.RedisModuleType = type { i64, %struct.RedisModule*, i8* (%struct.RedisModuleIO*, i32)*, void (%struct.RedisModuleIO*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, i64 (i8*)*, void (%struct.RedisModuleDigest*, i8*)*, void (i8*)*, i32 (%struct.RedisModuleIO*, i32, i32)*, void (%struct.RedisModuleIO*, i32)*, i32, [10 x i8] }
%struct.RedisModule = type opaque
%struct.RedisModuleIO = type { i64, %struct._rio*, %struct.RedisModuleType*, i32, i32, %struct.RedisModuleCtx*, %struct.redisObject* }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32*, i32, i64, i8* }
%struct.RedisModuleCtx = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.rdbSaveInfo = type { i32, i32, [41 x i8], i64 }
%struct.timespec = type { i64, i64 }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.sigaction = type { %union.anon.9, i64, i32, void ()* }
%union.anon.9 = type { void (i32)* }

@.str = private unnamed_addr constant [13 x i8] c"eptr != NULL\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/debug.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sptr != NULL\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ziplistGet(eptr,&vstr,&vlen,&vll)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%U.%U\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"!!expire!!\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"ASSERT -- Crash by assertion failed.\00", align 1
@.str.11 = private unnamed_addr constant [132 x i8] c"CHANGE-REPL-ID -- Change the replication IDs of the instance. Dangerous, should be used only for testing the replication subsystem.\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"CRASH-AND-RECOVER <milliseconds> -- Hard crash and restart after <milliseconds> delay.\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"DIGEST -- Output a hex signature representing the current DB content.\00", align 1
@.str.14 = private unnamed_addr constant [99 x i8] c"DIGEST-VALUE <key-1> ... <key-N>-- Output a hex signature of the values of all the specified keys.\00", align 1
@.str.15 = private unnamed_addr constant [130 x i8] c"ERROR <string> -- Return a Redis protocol error with <string> as message. Useful for clients unit tests to simulate Redis errors.\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"LOG <message> -- write message to the server log.\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"HTSTATS <dbid> -- Return hash table statistics of the specified Redis database.\00", align 1
@.str.18 = private unnamed_addr constant [80 x i8] c"HTSTATS-KEY <key> -- Like htstats but for the hash table stored as key's value.\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"LOADAOF -- Flush the AOF buffers on disk and reload the AOF in memory.\00", align 1
@.str.20 = private unnamed_addr constant [177 x i8] c"LUA-ALWAYS-REPLICATE-COMMANDS <0|1> -- Setting it to 1 makes Lua replication defaulting to replicating single commands, without the script having to enable effects replication.\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"OBJECT <key> -- Show low level info about key and associated value.\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"PANIC -- Crash the server simulating a panic.\00", align 1
@.str.23 = private unnamed_addr constant [142 x i8] c"POPULATE <count> [prefix] [size] -- Create <count> string keys named key:<num>. If a prefix is specified is used instead of the 'key' prefix.\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"RELOAD -- Save the RDB on disk and reload it back in memory.\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"RESTART -- Graceful restart: save config, db, restart.\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"SDSLEN <key> -- Show low level SDS string info representing key and value.\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"SEGFAULT -- Crash the server with sigsegv.\00", align 1
@.str.28 = private unnamed_addr constant [183 x i8] c"SET-ACTIVE-EXPIRE <0|1> -- Setting it to 0 disables expiring keys in background when they are not accessed (otherwise the Redis behavior). Setting it to 1 reenables back the default.\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"SLEEP <seconds> -- Stop the server for <seconds>. Decimals allowed.\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"STRUCTSIZE -- Return the size of different Redis core C structures.\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"ZIPLIST <key> -- Show low level info about the ziplist encoding.\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"STRINGMATCH-TEST -- Run a fuzz tester against the stringmatchlen() function.\00", align 1
@debugCommand.help = private unnamed_addr constant [24 x i8*] [i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"segfault\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"DEBUG PANIC called at Unix time %ld\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"crash-and-recover\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"failed to restart the server. Check server logs.\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"oom\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"1 == 2\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"DEBUG LOG: %s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Error trying to load the RDB dump\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"DB reloaded by DEBUG RELOAD\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"loadaof\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"Append Only File loaded by DEBUG LOADAOF\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c" ql_nodes:%lu\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c" ql_avg_node:%.2f\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c" ql_ziplist_max:%d\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c" ql_compressed:%d\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c" ql_uncompressed_size:%lu\00", align 1
@.str.55 = private unnamed_addr constant [88 x i8] c"Value at:%p refcount:%d encoding:%s serializedlength:%zu lru:%d lru_seconds_idle:%llu%s\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"sdslen\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Not an sds encoded string.\00", align 1
@.str.58 = private unnamed_addr constant [113 x i8] c"key_sds_len:%lld, key_sds_avail:%lld, key_zmalloc: %lld, val_sds_len:%lld, val_sds_avail:%lld, val_zmalloc: %lld\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"ziplist\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"Ziplist structure printed on stdout\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"populate\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%s:%lu\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"value:%lu\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"digest-value\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"set-active-expire\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"lua-always-replicate-commands\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"structsize\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"bits:%d \00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"robj:%d \00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"dictentry:%d \00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"sdshdr5:%d \00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"sdshdr8:%d \00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"sdshdr16:%d \00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"sdshdr32:%d \00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"sdshdr64:%d \00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"htstats\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"Out of range database\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"[Dictionary HT]\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"[Expires HT]\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"htstats-key\00", align 1
@.str.90 = private unnamed_addr constant [77 x i8] c"The value stored at the specified key is not represented using an hash table\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"change-repl-id\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"Changing replication IDs after receiving DEBUG change-repl-id\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"stringmatch-test\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"Apparently Redis did not crash: test passed\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"=== ASSERTION FAILED ===\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"==> %s:%d '%s' is not true\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"=== ASSERTION FAILED CLIENT CONTEXT ===\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"client->flags = %d\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"client->fd = %d\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"client->argc = %d\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"Object type: %u, encoding: %u\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"client->argv[%d] = \22%s\22 (refcount: %d)\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"Object type: %d\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"Object encoding: %d\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"Object refcount: %d\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Object raw string len: %zu\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"Object raw string content: %s\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"List length: %d\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"Set size: %d\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"Hash size: %d\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"Sorted set size: %d\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"Skiplist level: %d\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"=== ASSERTION FAILED OBJECT CONTEXT ===\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"------------------------------------------------\00", align 1
@.str.115 = private unnamed_addr constant [58 x i8] c"!!! Software Failure. Press left mouse button to continue\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Guru Meditation: %s #%s:%d\00", align 1
@.str.117 = private unnamed_addr constant [66 x i8] c"\0A\0A=== REDIS BUG REPORT START: Cut & paste starting from here ===\0A\00", align 1
@serverLogHexDump.charset = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.118 = private unnamed_addr constant [27 x i8] c"%s (hexdump of %zu bytes):\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"\0A--- WATCHDOG TIMER EXPIRED ---\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Sorry: no support for backtrace().\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"--------\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @xorDigest(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !154 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !190
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %6) #6, !dbg !190
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !191
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #6, !dbg !191
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !195
  %8 = trunc i64 %2 to i32, !dbg !196
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %1, i32 %8) #7, !dbg !197
  call void @SHA1Final(i8* nonnull %7, %struct.SHA1_CTX* nonnull %4) #7, !dbg !198
  %9 = bitcast [20 x i8]* %5 to <16 x i8>*, !dbg !200
  %10 = load <16 x i8>, <16 x i8>* %9, align 16, !dbg !200, !tbaa !203
  %11 = bitcast i8* %0 to <16 x i8>*, !dbg !206
  %12 = load <16 x i8>, <16 x i8>* %11, align 1, !dbg !206, !tbaa !203
  %13 = xor <16 x i8> %12, %10, !dbg !206
  %14 = bitcast i8* %0 to <16 x i8>*, !dbg !206
  store <16 x i8> %13, <16 x i8>* %14, align 1, !dbg !206, !tbaa !203
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 16, !dbg !200
  %16 = load i8, i8* %15, align 16, !dbg !200, !tbaa !203
  %17 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !207
  %18 = load i8, i8* %17, align 1, !dbg !206, !tbaa !203
  %19 = xor i8 %18, %16, !dbg !206
  store i8 %19, i8* %17, align 1, !dbg !206, !tbaa !203
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 17, !dbg !200
  %21 = load i8, i8* %20, align 1, !dbg !200, !tbaa !203
  %22 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !207
  %23 = load i8, i8* %22, align 1, !dbg !206, !tbaa !203
  %24 = xor i8 %23, %21, !dbg !206
  store i8 %24, i8* %22, align 1, !dbg !206, !tbaa !203
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 18, !dbg !200
  %26 = load i8, i8* %25, align 2, !dbg !200, !tbaa !203
  %27 = getelementptr inbounds i8, i8* %0, i64 18, !dbg !207
  %28 = load i8, i8* %27, align 1, !dbg !206, !tbaa !203
  %29 = xor i8 %28, %26, !dbg !206
  store i8 %29, i8* %27, align 1, !dbg !206, !tbaa !203
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 19, !dbg !200
  %31 = load i8, i8* %30, align 1, !dbg !200, !tbaa !203
  %32 = getelementptr inbounds i8, i8* %0, i64 19, !dbg !207
  %33 = load i8, i8* %32, align 1, !dbg !206, !tbaa !203
  %34 = xor i8 %33, %31, !dbg !206
  store i8 %34, i8* %32, align 1, !dbg !206, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #6, !dbg !208
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %6) #6, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  ret void, !dbg !208
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @SHA1Init(%struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Update(%struct.SHA1_CTX*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Final(i8*, %struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @xorStringObjectDigest(i8* nocapture, %struct.redisObject*) local_unnamed_addr #0 !dbg !209 {
  %3 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !226
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !227
  %5 = load i8*, i8** %4, align 8, !dbg !227, !tbaa !228
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !243
  %7 = load i8, i8* %6, align 1, !dbg !243, !tbaa !203
  %8 = trunc i8 %7 to i3, !dbg !245
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !245

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !246
  %11 = zext i8 %10 to i64, !dbg !246
  br label %30, !dbg !248

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !249
  %14 = load i8, i8* %13, align 1, !dbg !250, !tbaa !203
  %15 = zext i8 %14 to i64, !dbg !249
  br label %30, !dbg !251

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !252
  %18 = bitcast i8* %17 to i16*, !dbg !253
  %19 = load i16, i16* %18, align 1, !dbg !253, !tbaa !254
  %20 = zext i16 %19 to i64, !dbg !252
  br label %30, !dbg !256

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !257
  %23 = bitcast i8* %22 to i32*, !dbg !258
  %24 = load i32, i32* %23, align 1, !dbg !258, !tbaa !259
  %25 = zext i32 %24 to i64, !dbg !257
  br label %30, !dbg !260

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !261
  %28 = bitcast i8* %27 to i64*, !dbg !262
  %29 = load i64, i64* %28, align 1, !dbg !262, !tbaa !263
  br label %30, !dbg !265

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  tail call void @xorDigest(i8* %0, i8* %5, i64 %31) #8, !dbg !268
  tail call void @decrRefCount(%struct.redisObject* %3) #7, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  ret void, !dbg !270
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mixDigest(i8*, i8*, i64) local_unnamed_addr #0 !dbg !271 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %5) #6, !dbg !281
  tail call void @xorDigest(i8* %0, i8* %1, i64 %2) #8, !dbg !283
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !285
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %0, i32 20) #7, !dbg !286
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %4) #7, !dbg !287
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %5) #6, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  ret void, !dbg !288
}

; Function Attrs: noredzone nounwind
define dso_local void @mixStringObjectDigest(i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !289 {
  %3 = alloca %struct.SHA1_CTX, align 4
  %4 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !295
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !296
  %6 = load i8*, i8** %5, align 8, !dbg !296, !tbaa !228
  %7 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !299
  %8 = load i8, i8* %7, align 1, !dbg !299, !tbaa !203
  %9 = trunc i8 %8 to i3, !dbg !301
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !301

; <label>:10:                                     ; preds = %2
  %11 = lshr i8 %8, 3, !dbg !302
  %12 = zext i8 %11 to i64, !dbg !302
  br label %31, !dbg !303

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !304
  %15 = load i8, i8* %14, align 1, !dbg !305, !tbaa !203
  %16 = zext i8 %15 to i64, !dbg !304
  br label %31, !dbg !306

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !307
  %19 = bitcast i8* %18 to i16*, !dbg !308
  %20 = load i16, i16* %19, align 1, !dbg !308, !tbaa !254
  %21 = zext i16 %20 to i64, !dbg !307
  br label %31, !dbg !309

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !310
  %24 = bitcast i8* %23 to i32*, !dbg !311
  %25 = load i32, i32* %24, align 1, !dbg !311, !tbaa !259
  %26 = zext i32 %25 to i64, !dbg !310
  br label %31, !dbg !312

; <label>:27:                                     ; preds = %2
  %28 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !313
  %29 = bitcast i8* %28 to i64*, !dbg !314
  %30 = load i64, i64* %29, align 1, !dbg !314, !tbaa !263
  br label %31, !dbg !315

; <label>:31:                                     ; preds = %2, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %2 ], !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %33 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %33) #6, !dbg !322
  tail call void @xorDigest(i8* %0, i8* %6, i64 %32) #7, !dbg !324
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #7, !dbg !326
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %0, i32 20) #7, !dbg !327
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %3) #7, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %33) #6, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  call void @decrRefCount(%struct.redisObject* %4) #7, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: noredzone nounwind
define dso_local void @xorObjectDigest(%struct.redisDb*, %struct.redisObject*, i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !332 {
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct.SHA1_CTX, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca %struct.SHA1_CTX, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.SHA1_CTX, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca %struct.SHA1_CTX, align 4
  %14 = alloca [20 x i8], align 16
  %15 = alloca %struct.SHA1_CTX, align 4
  %16 = alloca [20 x i8], align 16
  %17 = alloca %struct.SHA1_CTX, align 4
  %18 = alloca [20 x i8], align 16
  %19 = alloca %struct.SHA1_CTX, align 4
  %20 = alloca %struct.SHA1_CTX, align 4
  %21 = alloca %struct.SHA1_CTX, align 4
  %22 = alloca %struct.SHA1_CTX, align 4
  %23 = alloca %struct.SHA1_CTX, align 4
  %24 = alloca %struct.SHA1_CTX, align 4
  %25 = alloca %struct.SHA1_CTX, align 4
  %26 = alloca %struct.SHA1_CTX, align 4
  %27 = alloca %struct.SHA1_CTX, align 4
  %28 = alloca %struct.SHA1_CTX, align 4
  %29 = alloca %struct.SHA1_CTX, align 4
  %30 = alloca i32, align 4
  %31 = alloca [128 x i8], align 16
  %32 = alloca %struct.listTypeEntry, align 8
  %33 = alloca [20 x i8], align 16
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca [20 x i8], align 16
  %40 = alloca %struct.streamIterator, align 8
  %41 = alloca %struct.streamID, align 8
  %42 = alloca i64, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca %struct.RedisModuleDigest, align 1
  %48 = bitcast i32* %30 to i8*, !dbg !980
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #6, !dbg !980
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 0, !dbg !981
  %50 = load i32, i32* %49, align 8, !dbg !981
  %51 = and i32 %50, 15, !dbg !981
  %52 = tail call i32 @lwip_htonl(i32 %51) #7, !dbg !981
  store i32 %52, i32* %30, align 4, !dbg !982, !tbaa !259
  %53 = bitcast %struct.SHA1_CTX* %29 to i8*, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %53) #6, !dbg !987
  call void @xorDigest(i8* %2, i8* nonnull %48, i64 4) #7, !dbg !989
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %29) #7, !dbg !991
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %29, i8* %2, i32 20) #7, !dbg !992
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %29) #7, !dbg !993
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %53) #6, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  %54 = call i64 @getExpire(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !995
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0, !dbg !997
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %55) #6, !dbg !997
  %56 = load i32, i32* %49, align 8, !dbg !999
  %57 = trunc i32 %56 to i4, !dbg !1000
  switch i4 %57, label %611 [
    i4 0, label %58
    i4 1, label %59
    i4 2, label %69
    i4 3, label %104
    i4 4, label %408
    i4 6, label %529
    i4 5, label %594
  ], !dbg !1000

; <label>:58:                                     ; preds = %4
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* nonnull %3) #8, !dbg !1001
  br label %612, !dbg !1003

; <label>:59:                                     ; preds = %4
  %60 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %3, i64 0, i8 zeroext 1) #7, !dbg !1004
  %61 = bitcast %struct.listTypeEntry* %32 to i8*, !dbg !1006
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %61) #6, !dbg !1006
  %62 = call i32 @listTypeNext(%struct.listTypeIterator* %60, %struct.listTypeEntry* nonnull %32) #7, !dbg !1008
  %63 = icmp eq i32 %62, 0, !dbg !1009
  br i1 %63, label %68, label %64, !dbg !1009

; <label>:64:                                     ; preds = %59, %64
  %65 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %32) #7, !dbg !1010
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* %65) #8, !dbg !1012
  call void @decrRefCount(%struct.redisObject* %65) #7, !dbg !1013
  %66 = call i32 @listTypeNext(%struct.listTypeIterator* %60, %struct.listTypeEntry* nonnull %32) #7, !dbg !1008
  %67 = icmp eq i32 %66, 0, !dbg !1009
  br i1 %67, label %68, label %64, !dbg !1009, !llvm.loop !1014

; <label>:68:                                     ; preds = %64, %59
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %60) #7, !dbg !1016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %61) #6, !dbg !1017
  br label %612, !dbg !1018

; <label>:69:                                     ; preds = %4
  %70 = call %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1019
  %71 = call i8* @setTypeNextObject(%struct.setTypeIterator* %70) #7, !dbg !1021
  %72 = icmp eq i8* %71, null, !dbg !1023
  br i1 %72, label %103, label %73, !dbg !1024

; <label>:73:                                     ; preds = %69, %99
  %74 = phi i8* [ %101, %99 ], [ %71, %69 ]
  %75 = getelementptr inbounds i8, i8* %74, i64 -1, !dbg !1028
  %76 = load i8, i8* %75, align 1, !dbg !1028, !tbaa !203
  %77 = trunc i8 %76 to i3, !dbg !1030
  switch i3 %77, label %99 [
    i3 0, label %78
    i3 1, label %81
    i3 2, label %85
    i3 3, label %90
    i3 -4, label %95
  ], !dbg !1030

; <label>:78:                                     ; preds = %73
  %79 = lshr i8 %76, 3, !dbg !1031
  %80 = zext i8 %79 to i64, !dbg !1031
  br label %99, !dbg !1032

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds i8, i8* %74, i64 -3, !dbg !1033
  %83 = load i8, i8* %82, align 1, !dbg !1034, !tbaa !203
  %84 = zext i8 %83 to i64, !dbg !1033
  br label %99, !dbg !1035

; <label>:85:                                     ; preds = %73
  %86 = getelementptr inbounds i8, i8* %74, i64 -5, !dbg !1036
  %87 = bitcast i8* %86 to i16*, !dbg !1037
  %88 = load i16, i16* %87, align 1, !dbg !1037, !tbaa !254
  %89 = zext i16 %88 to i64, !dbg !1036
  br label %99, !dbg !1038

; <label>:90:                                     ; preds = %73
  %91 = getelementptr inbounds i8, i8* %74, i64 -9, !dbg !1039
  %92 = bitcast i8* %91 to i32*, !dbg !1040
  %93 = load i32, i32* %92, align 1, !dbg !1040, !tbaa !259
  %94 = zext i32 %93 to i64, !dbg !1039
  br label %99, !dbg !1041

; <label>:95:                                     ; preds = %73
  %96 = getelementptr inbounds i8, i8* %74, i64 -17, !dbg !1042
  %97 = bitcast i8* %96 to i64*, !dbg !1043
  %98 = load i64, i64* %97, align 1, !dbg !1043, !tbaa !263
  br label %99, !dbg !1044

; <label>:99:                                     ; preds = %73, %78, %81, %85, %90, %95
  %100 = phi i64 [ %98, %95 ], [ %94, %90 ], [ %89, %85 ], [ %84, %81 ], [ %80, %78 ], [ 0, %73 ], !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  call void @xorDigest(i8* %2, i8* nonnull %74, i64 %100) #8, !dbg !1047
  call void @sdsfree(i8* nonnull %74) #7, !dbg !1048
  %101 = call i8* @setTypeNextObject(%struct.setTypeIterator* %70) #7, !dbg !1021
  %102 = icmp eq i8* %101, null, !dbg !1023
  br i1 %102, label %103, label %73, !dbg !1024, !llvm.loop !1049

; <label>:103:                                    ; preds = %99, %69
  call void @setTypeReleaseIterator(%struct.setTypeIterator* %70) #7, !dbg !1051
  br label %612, !dbg !1052

; <label>:104:                                    ; preds = %4
  %105 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 0, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %105) #6, !dbg !1053
  %106 = lshr i32 %56, 4, !dbg !1055
  %107 = trunc i32 %106 to i4, !dbg !1056
  switch i4 %107, label %406 [
    i4 5, label %108
    i4 7, label %228
  ], !dbg !1056

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1057
  %110 = load i8*, i8** %109, align 8, !dbg !1057, !tbaa !228
  %111 = bitcast i8** %34 to i8*, !dbg !1059
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %111) #6, !dbg !1059
  %112 = bitcast i8** %35 to i8*, !dbg !1059
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #6, !dbg !1059
  %113 = bitcast i8** %36 to i8*, !dbg !1060
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #6, !dbg !1060
  %114 = bitcast i32* %37 to i8*, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #6, !dbg !1061
  %115 = bitcast i64* %38 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #6, !dbg !1062
  %116 = call i8* @ziplistIndex(i8* %110, i32 0) #7, !dbg !1063
  store i8* %116, i8** %34, align 8, !dbg !1065, !tbaa !1066
  %117 = icmp eq i8* %116, null, !dbg !1067
  br i1 %117, label %118, label %119, !dbg !1067

; <label>:118:                                    ; preds = %108
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 159) #8, !dbg !1067
  call void @_exit(i32 1) #9, !dbg !1067
  unreachable, !dbg !1067

; <label>:119:                                    ; preds = %108
  %120 = call i8* @ziplistNext(i8* %110, i8* nonnull %116) #7, !dbg !1068
  store i8* %120, i8** %35, align 8, !dbg !1070, !tbaa !1066
  %121 = icmp eq i8* %120, null, !dbg !1071
  br i1 %121, label %157, label %122, !dbg !1071

; <label>:122:                                    ; preds = %119
  %123 = bitcast %struct.SHA1_CTX* %27 to i8*
  %124 = bitcast %struct.SHA1_CTX* %15 to i8*
  %125 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 16
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 16
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 17
  %129 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 17
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 18
  %131 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 18
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 19
  %133 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 19
  %134 = bitcast %struct.SHA1_CTX* %26 to i8*
  %135 = bitcast %struct.SHA1_CTX* %13 to i8*
  %136 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %137 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 16
  %138 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 17
  %139 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 18
  %140 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 19
  %141 = bitcast %struct.SHA1_CTX* %28 to i8*
  %142 = bitcast %struct.SHA1_CTX* %17 to i8*
  %143 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %144 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 16
  %145 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 17
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 18
  %147 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 19
  %148 = bitcast [20 x i8]* %16 to <16 x i8>*
  %149 = bitcast [20 x i8]* %33 to <16 x i8>*
  %150 = bitcast [20 x i8]* %33 to <16 x i8>*
  %151 = bitcast [20 x i8]* %14 to <16 x i8>*
  %152 = bitcast [20 x i8]* %33 to <16 x i8>*
  %153 = bitcast [20 x i8]* %33 to <16 x i8>*
  %154 = bitcast [20 x i8]* %18 to <16 x i8>*
  %155 = bitcast [20 x i8]* %33 to <16 x i8>*
  %156 = bitcast [20 x i8]* %33 to <16 x i8>*
  br label %158, !dbg !1072

; <label>:157:                                    ; preds = %119
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 161) #8, !dbg !1071
  call void @_exit(i32 1) #9, !dbg !1071
  unreachable, !dbg !1071

; <label>:158:                                    ; preds = %122, %206
  %159 = phi i8* [ %116, %122 ], [ %225, %206 ]
  %160 = call i32 @ziplistGet(i8* nonnull %159, i8** nonnull %36, i32* nonnull %37, i64* nonnull %38) #7, !dbg !1076
  %161 = icmp eq i32 %160, 0, !dbg !1076
  br i1 %161, label %162, label %163, !dbg !1076

; <label>:162:                                    ; preds = %158
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 164) #8, !dbg !1076
  call void @_exit(i32 1) #9, !dbg !1076
  unreachable, !dbg !1076

; <label>:163:                                    ; preds = %158
  %164 = load i8*, i8** %35, align 8, !dbg !1077, !tbaa !1066
  %165 = call double @zzlGetScore(i8* %164) #7, !dbg !1078
  %166 = call i8* @memset(i8* nonnull %105, i32 0, i64 20) #7, !dbg !1080
  %167 = load i8*, i8** %36, align 8, !dbg !1081, !tbaa !1066
  %168 = icmp eq i8* %167, null, !dbg !1082
  br i1 %168, label %186, label %169, !dbg !1083

; <label>:169:                                    ; preds = %163
  %170 = load i32, i32* %37, align 4, !dbg !1084, !tbaa !259
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %141) #6, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %142) #6, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %143) #6, !dbg !1092
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %17) #7, !dbg !1095
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %17, i8* nonnull %167, i32 %170) #7, !dbg !1096
  call void @SHA1Final(i8* nonnull %143, %struct.SHA1_CTX* nonnull %17) #7, !dbg !1097
  %171 = load <16 x i8>, <16 x i8>* %154, align 16, !dbg !1099, !tbaa !203
  %172 = load <16 x i8>, <16 x i8>* %155, align 16, !dbg !1100, !tbaa !203
  %173 = xor <16 x i8> %172, %171, !dbg !1100
  store <16 x i8> %173, <16 x i8>* %156, align 16, !dbg !1100, !tbaa !203
  %174 = load i8, i8* %144, align 16, !dbg !1099, !tbaa !203
  %175 = load i8, i8* %127, align 16, !dbg !1100, !tbaa !203
  %176 = xor i8 %175, %174, !dbg !1100
  store i8 %176, i8* %127, align 16, !dbg !1100, !tbaa !203
  %177 = load i8, i8* %145, align 1, !dbg !1099, !tbaa !203
  %178 = load i8, i8* %129, align 1, !dbg !1100, !tbaa !203
  %179 = xor i8 %178, %177, !dbg !1100
  store i8 %179, i8* %129, align 1, !dbg !1100, !tbaa !203
  %180 = load i8, i8* %146, align 2, !dbg !1099, !tbaa !203
  %181 = load i8, i8* %131, align 2, !dbg !1100, !tbaa !203
  %182 = xor i8 %181, %180, !dbg !1100
  store i8 %182, i8* %131, align 2, !dbg !1100, !tbaa !203
  %183 = load i8, i8* %147, align 1, !dbg !1099, !tbaa !203
  %184 = load i8, i8* %133, align 1, !dbg !1100, !tbaa !203
  %185 = xor i8 %184, %183, !dbg !1100
  store i8 %185, i8* %133, align 1, !dbg !1100, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %143) #6, !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %142) #6, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %28) #7, !dbg !1103
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %28, i8* nonnull %105, i32 20) #7, !dbg !1104
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %28) #7, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %141) #6, !dbg !1106
  br label %206, !dbg !1107

; <label>:186:                                    ; preds = %163
  %187 = load i64, i64* %38, align 8, !dbg !1108, !tbaa !1109
  %188 = call i32 @ll2string(i8* nonnull %55, i64 128, i64 %187) #7, !dbg !1111
  %189 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %123) #6, !dbg !1116
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %124) #6, !dbg !1121
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %125) #6, !dbg !1122
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %15) #7, !dbg !1125
  %190 = trunc i64 %189 to i32, !dbg !1126
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %15, i8* nonnull %55, i32 %190) #7, !dbg !1127
  call void @SHA1Final(i8* nonnull %125, %struct.SHA1_CTX* nonnull %15) #7, !dbg !1128
  %191 = load <16 x i8>, <16 x i8>* %148, align 16, !dbg !1130, !tbaa !203
  %192 = load <16 x i8>, <16 x i8>* %149, align 16, !dbg !1131, !tbaa !203
  %193 = xor <16 x i8> %192, %191, !dbg !1131
  store <16 x i8> %193, <16 x i8>* %150, align 16, !dbg !1131, !tbaa !203
  %194 = load i8, i8* %126, align 16, !dbg !1130, !tbaa !203
  %195 = load i8, i8* %127, align 16, !dbg !1131, !tbaa !203
  %196 = xor i8 %195, %194, !dbg !1131
  store i8 %196, i8* %127, align 16, !dbg !1131, !tbaa !203
  %197 = load i8, i8* %128, align 1, !dbg !1130, !tbaa !203
  %198 = load i8, i8* %129, align 1, !dbg !1131, !tbaa !203
  %199 = xor i8 %198, %197, !dbg !1131
  store i8 %199, i8* %129, align 1, !dbg !1131, !tbaa !203
  %200 = load i8, i8* %130, align 2, !dbg !1130, !tbaa !203
  %201 = load i8, i8* %131, align 2, !dbg !1131, !tbaa !203
  %202 = xor i8 %201, %200, !dbg !1131
  store i8 %202, i8* %131, align 2, !dbg !1131, !tbaa !203
  %203 = load i8, i8* %132, align 1, !dbg !1130, !tbaa !203
  %204 = load i8, i8* %133, align 1, !dbg !1131, !tbaa !203
  %205 = xor i8 %204, %203, !dbg !1131
  store i8 %205, i8* %133, align 1, !dbg !1131, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %125) #6, !dbg !1132
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %124) #6, !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %27) #7, !dbg !1134
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %27, i8* nonnull %105, i32 20) #7, !dbg !1135
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %27) #7, !dbg !1136
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %123) #6, !dbg !1137
  br label %206

; <label>:206:                                    ; preds = %186, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  %207 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %55, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %165) #7, !dbg !1138
  %208 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %134) #6, !dbg !1143
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %135) #6, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %136) #6, !dbg !1149
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %13) #7, !dbg !1152
  %209 = trunc i64 %208 to i32, !dbg !1153
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %13, i8* nonnull %55, i32 %209) #7, !dbg !1154
  call void @SHA1Final(i8* nonnull %136, %struct.SHA1_CTX* nonnull %13) #7, !dbg !1155
  %210 = load <16 x i8>, <16 x i8>* %151, align 16, !dbg !1157, !tbaa !203
  %211 = load <16 x i8>, <16 x i8>* %152, align 16, !dbg !1158, !tbaa !203
  %212 = xor <16 x i8> %211, %210, !dbg !1158
  store <16 x i8> %212, <16 x i8>* %153, align 16, !dbg !1158, !tbaa !203
  %213 = load i8, i8* %137, align 16, !dbg !1157, !tbaa !203
  %214 = load i8, i8* %127, align 16, !dbg !1158, !tbaa !203
  %215 = xor i8 %214, %213, !dbg !1158
  store i8 %215, i8* %127, align 16, !dbg !1158, !tbaa !203
  %216 = load i8, i8* %138, align 1, !dbg !1157, !tbaa !203
  %217 = load i8, i8* %129, align 1, !dbg !1158, !tbaa !203
  %218 = xor i8 %217, %216, !dbg !1158
  store i8 %218, i8* %129, align 1, !dbg !1158, !tbaa !203
  %219 = load i8, i8* %139, align 2, !dbg !1157, !tbaa !203
  %220 = load i8, i8* %131, align 2, !dbg !1158, !tbaa !203
  %221 = xor i8 %220, %219, !dbg !1158
  store i8 %221, i8* %131, align 2, !dbg !1158, !tbaa !203
  %222 = load i8, i8* %140, align 1, !dbg !1157, !tbaa !203
  %223 = load i8, i8* %133, align 1, !dbg !1158, !tbaa !203
  %224 = xor i8 %223, %222, !dbg !1158
  store i8 %224, i8* %133, align 1, !dbg !1158, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %136) #6, !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %135) #6, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %26) #7, !dbg !1161
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %26, i8* nonnull %105, i32 20) #7, !dbg !1162
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %26) #7, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %134) #6, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  call void @xorDigest(i8* %2, i8* nonnull %105, i64 20) #8, !dbg !1165
  call void @zzlNext(i8* %110, i8** nonnull %34, i8** nonnull %35) #7, !dbg !1166
  %225 = load i8*, i8** %34, align 8, !dbg !1167, !tbaa !1066
  %226 = icmp eq i8* %225, null, !dbg !1168
  br i1 %226, label %227, label %158, !dbg !1072, !llvm.loop !1169

; <label>:227:                                    ; preds = %206
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #6, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #6, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #6, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #6, !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %111) #6, !dbg !1171
  br label %407, !dbg !1172

; <label>:228:                                    ; preds = %104
  %229 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1173
  %230 = bitcast i8** %229 to %struct.zset**, !dbg !1173
  %231 = load %struct.zset*, %struct.zset** %230, align 8, !dbg !1173, !tbaa !228
  %232 = getelementptr inbounds %struct.zset, %struct.zset* %231, i64 0, i32 0, !dbg !1175
  %233 = load %struct.dict*, %struct.dict** %232, align 8, !dbg !1175, !tbaa !1176
  %234 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %233) #7, !dbg !1178
  %235 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %234) #7, !dbg !1180
  %236 = icmp eq %struct.dictEntry* %235, null, !dbg !1182
  br i1 %236, label %405, label %237, !dbg !1183

; <label>:237:                                    ; preds = %228
  %238 = bitcast %struct.SHA1_CTX* %25 to i8*
  %239 = bitcast %struct.SHA1_CTX* %11 to i8*
  %240 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %241 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 1
  %242 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 2
  %243 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 3
  %244 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 4
  %245 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 5
  %246 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 6
  %247 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 7
  %248 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 8
  %249 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 9
  %250 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 10
  %251 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 11
  %252 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 12
  %253 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 13
  %254 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 14
  %255 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 15
  %256 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 16
  %257 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 16
  %258 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 17
  %259 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 17
  %260 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 18
  %261 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 18
  %262 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 19
  %263 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 19
  %264 = bitcast %struct.SHA1_CTX* %24 to i8*
  %265 = bitcast %struct.SHA1_CTX* %9 to i8*
  %266 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %267 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 1
  %268 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2
  %269 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3
  %270 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 4
  %271 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 5
  %272 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 6
  %273 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 7
  %274 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 8
  %275 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 9
  %276 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 10
  %277 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 11
  %278 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 12
  %279 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 13
  %280 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 14
  %281 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 15
  %282 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 16
  %283 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 17
  %284 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 18
  %285 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 19
  %286 = bitcast [20 x i8]* %12 to <16 x i8>*
  %287 = bitcast [20 x i8]* %33 to <16 x i8>*
  %288 = bitcast [20 x i8]* %33 to <16 x i8>*
  br label %289, !dbg !1183

; <label>:289:                                    ; preds = %237, %323
  %290 = phi %struct.dictEntry* [ %235, %237 ], [ %403, %323 ]
  %291 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %290, i64 0, i32 0, !dbg !1184
  %292 = load i8*, i8** %291, align 8, !dbg !1184, !tbaa !1185
  %293 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %290, i64 0, i32 1, i32 0, !dbg !1188
  %294 = bitcast i8** %293 to double**, !dbg !1188
  %295 = load double*, double** %294, align 8, !dbg !1188, !tbaa !203
  %296 = load double, double* %295, align 8, !dbg !1190, !tbaa !1191
  %297 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %55, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %296) #7, !dbg !1193
  %298 = call i8* @memset(i8* nonnull %105, i32 0, i64 20) #7, !dbg !1194
  %299 = getelementptr inbounds i8, i8* %292, i64 -1, !dbg !1197
  %300 = load i8, i8* %299, align 1, !dbg !1197, !tbaa !203
  %301 = trunc i8 %300 to i3, !dbg !1199
  switch i3 %301, label %323 [
    i3 0, label %302
    i3 1, label %305
    i3 2, label %309
    i3 3, label %314
    i3 -4, label %319
  ], !dbg !1199

; <label>:302:                                    ; preds = %289
  %303 = lshr i8 %300, 3, !dbg !1200
  %304 = zext i8 %303 to i64, !dbg !1200
  br label %323, !dbg !1201

; <label>:305:                                    ; preds = %289
  %306 = getelementptr inbounds i8, i8* %292, i64 -3, !dbg !1202
  %307 = load i8, i8* %306, align 1, !dbg !1203, !tbaa !203
  %308 = zext i8 %307 to i64, !dbg !1202
  br label %323, !dbg !1204

; <label>:309:                                    ; preds = %289
  %310 = getelementptr inbounds i8, i8* %292, i64 -5, !dbg !1205
  %311 = bitcast i8* %310 to i16*, !dbg !1206
  %312 = load i16, i16* %311, align 1, !dbg !1206, !tbaa !254
  %313 = zext i16 %312 to i64, !dbg !1205
  br label %323, !dbg !1207

; <label>:314:                                    ; preds = %289
  %315 = getelementptr inbounds i8, i8* %292, i64 -9, !dbg !1208
  %316 = bitcast i8* %315 to i32*, !dbg !1209
  %317 = load i32, i32* %316, align 1, !dbg !1209, !tbaa !259
  %318 = zext i32 %317 to i64, !dbg !1208
  br label %323, !dbg !1210

; <label>:319:                                    ; preds = %289
  %320 = getelementptr inbounds i8, i8* %292, i64 -17, !dbg !1211
  %321 = bitcast i8* %320 to i64*, !dbg !1212
  %322 = load i64, i64* %321, align 1, !dbg !1212, !tbaa !263
  br label %323, !dbg !1213

; <label>:323:                                    ; preds = %289, %302, %305, %309, %314, %319
  %324 = phi i64 [ %322, %319 ], [ %318, %314 ], [ %313, %309 ], [ %308, %305 ], [ %304, %302 ], [ 0, %289 ], !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %238) #6, !dbg !1219
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %239) #6, !dbg !1224
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %240) #6, !dbg !1225
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %11) #7, !dbg !1228
  %325 = trunc i64 %324 to i32, !dbg !1229
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %11, i8* %292, i32 %325) #7, !dbg !1230
  call void @SHA1Final(i8* nonnull %240, %struct.SHA1_CTX* nonnull %11) #7, !dbg !1231
  %326 = load <16 x i8>, <16 x i8>* %286, align 16, !dbg !1233, !tbaa !203
  %327 = load <16 x i8>, <16 x i8>* %287, align 16, !dbg !1234, !tbaa !203
  %328 = xor <16 x i8> %327, %326, !dbg !1234
  store <16 x i8> %328, <16 x i8>* %288, align 16, !dbg !1234, !tbaa !203
  %329 = load i8, i8* %256, align 16, !dbg !1233, !tbaa !203
  %330 = load i8, i8* %257, align 16, !dbg !1234, !tbaa !203
  %331 = xor i8 %330, %329, !dbg !1234
  store i8 %331, i8* %257, align 16, !dbg !1234, !tbaa !203
  %332 = load i8, i8* %258, align 1, !dbg !1233, !tbaa !203
  %333 = load i8, i8* %259, align 1, !dbg !1234, !tbaa !203
  %334 = xor i8 %333, %332, !dbg !1234
  store i8 %334, i8* %259, align 1, !dbg !1234, !tbaa !203
  %335 = load i8, i8* %260, align 2, !dbg !1233, !tbaa !203
  %336 = load i8, i8* %261, align 2, !dbg !1234, !tbaa !203
  %337 = xor i8 %336, %335, !dbg !1234
  store i8 %337, i8* %261, align 2, !dbg !1234, !tbaa !203
  %338 = load i8, i8* %262, align 1, !dbg !1233, !tbaa !203
  %339 = load i8, i8* %263, align 1, !dbg !1234, !tbaa !203
  %340 = xor i8 %339, %338, !dbg !1234
  store i8 %340, i8* %263, align 1, !dbg !1234, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %239) #6, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %25) #7, !dbg !1237
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %25, i8* nonnull %105, i32 20) #7, !dbg !1238
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %25) #7, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %238) #6, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  %341 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %264) #6, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %265) #6, !dbg !1250
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %266) #6, !dbg !1251
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %9) #7, !dbg !1254
  %342 = trunc i64 %341 to i32, !dbg !1255
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %9, i8* nonnull %55, i32 %342) #7, !dbg !1256
  call void @SHA1Final(i8* nonnull %266, %struct.SHA1_CTX* nonnull %9) #7, !dbg !1257
  %343 = load i8, i8* %266, align 16, !dbg !1259, !tbaa !203
  %344 = load i8, i8* %105, align 16, !dbg !1260, !tbaa !203
  %345 = xor i8 %344, %343, !dbg !1260
  store i8 %345, i8* %105, align 16, !dbg !1260, !tbaa !203
  %346 = load i8, i8* %267, align 1, !dbg !1259, !tbaa !203
  %347 = load i8, i8* %241, align 1, !dbg !1260, !tbaa !203
  %348 = xor i8 %347, %346, !dbg !1260
  store i8 %348, i8* %241, align 1, !dbg !1260, !tbaa !203
  %349 = load i8, i8* %268, align 2, !dbg !1259, !tbaa !203
  %350 = load i8, i8* %242, align 2, !dbg !1260, !tbaa !203
  %351 = xor i8 %350, %349, !dbg !1260
  store i8 %351, i8* %242, align 2, !dbg !1260, !tbaa !203
  %352 = load i8, i8* %269, align 1, !dbg !1259, !tbaa !203
  %353 = load i8, i8* %243, align 1, !dbg !1260, !tbaa !203
  %354 = xor i8 %353, %352, !dbg !1260
  store i8 %354, i8* %243, align 1, !dbg !1260, !tbaa !203
  %355 = load i8, i8* %270, align 4, !dbg !1259, !tbaa !203
  %356 = load i8, i8* %244, align 4, !dbg !1260, !tbaa !203
  %357 = xor i8 %356, %355, !dbg !1260
  store i8 %357, i8* %244, align 4, !dbg !1260, !tbaa !203
  %358 = load i8, i8* %271, align 1, !dbg !1259, !tbaa !203
  %359 = load i8, i8* %245, align 1, !dbg !1260, !tbaa !203
  %360 = xor i8 %359, %358, !dbg !1260
  store i8 %360, i8* %245, align 1, !dbg !1260, !tbaa !203
  %361 = load i8, i8* %272, align 2, !dbg !1259, !tbaa !203
  %362 = load i8, i8* %246, align 2, !dbg !1260, !tbaa !203
  %363 = xor i8 %362, %361, !dbg !1260
  store i8 %363, i8* %246, align 2, !dbg !1260, !tbaa !203
  %364 = load i8, i8* %273, align 1, !dbg !1259, !tbaa !203
  %365 = load i8, i8* %247, align 1, !dbg !1260, !tbaa !203
  %366 = xor i8 %365, %364, !dbg !1260
  store i8 %366, i8* %247, align 1, !dbg !1260, !tbaa !203
  %367 = load i8, i8* %274, align 8, !dbg !1259, !tbaa !203
  %368 = load i8, i8* %248, align 8, !dbg !1260, !tbaa !203
  %369 = xor i8 %368, %367, !dbg !1260
  store i8 %369, i8* %248, align 8, !dbg !1260, !tbaa !203
  %370 = load i8, i8* %275, align 1, !dbg !1259, !tbaa !203
  %371 = load i8, i8* %249, align 1, !dbg !1260, !tbaa !203
  %372 = xor i8 %371, %370, !dbg !1260
  store i8 %372, i8* %249, align 1, !dbg !1260, !tbaa !203
  %373 = load i8, i8* %276, align 2, !dbg !1259, !tbaa !203
  %374 = load i8, i8* %250, align 2, !dbg !1260, !tbaa !203
  %375 = xor i8 %374, %373, !dbg !1260
  store i8 %375, i8* %250, align 2, !dbg !1260, !tbaa !203
  %376 = load i8, i8* %277, align 1, !dbg !1259, !tbaa !203
  %377 = load i8, i8* %251, align 1, !dbg !1260, !tbaa !203
  %378 = xor i8 %377, %376, !dbg !1260
  store i8 %378, i8* %251, align 1, !dbg !1260, !tbaa !203
  %379 = load i8, i8* %278, align 4, !dbg !1259, !tbaa !203
  %380 = load i8, i8* %252, align 4, !dbg !1260, !tbaa !203
  %381 = xor i8 %380, %379, !dbg !1260
  store i8 %381, i8* %252, align 4, !dbg !1260, !tbaa !203
  %382 = load i8, i8* %279, align 1, !dbg !1259, !tbaa !203
  %383 = load i8, i8* %253, align 1, !dbg !1260, !tbaa !203
  %384 = xor i8 %383, %382, !dbg !1260
  store i8 %384, i8* %253, align 1, !dbg !1260, !tbaa !203
  %385 = load i8, i8* %280, align 2, !dbg !1259, !tbaa !203
  %386 = load i8, i8* %254, align 2, !dbg !1260, !tbaa !203
  %387 = xor i8 %386, %385, !dbg !1260
  store i8 %387, i8* %254, align 2, !dbg !1260, !tbaa !203
  %388 = load i8, i8* %281, align 1, !dbg !1259, !tbaa !203
  %389 = load i8, i8* %255, align 1, !dbg !1260, !tbaa !203
  %390 = xor i8 %389, %388, !dbg !1260
  store i8 %390, i8* %255, align 1, !dbg !1260, !tbaa !203
  %391 = load i8, i8* %282, align 16, !dbg !1259, !tbaa !203
  %392 = load i8, i8* %257, align 16, !dbg !1260, !tbaa !203
  %393 = xor i8 %392, %391, !dbg !1260
  store i8 %393, i8* %257, align 16, !dbg !1260, !tbaa !203
  %394 = load i8, i8* %283, align 1, !dbg !1259, !tbaa !203
  %395 = load i8, i8* %259, align 1, !dbg !1260, !tbaa !203
  %396 = xor i8 %395, %394, !dbg !1260
  store i8 %396, i8* %259, align 1, !dbg !1260, !tbaa !203
  %397 = load i8, i8* %284, align 2, !dbg !1259, !tbaa !203
  %398 = load i8, i8* %261, align 2, !dbg !1260, !tbaa !203
  %399 = xor i8 %398, %397, !dbg !1260
  store i8 %399, i8* %261, align 2, !dbg !1260, !tbaa !203
  %400 = load i8, i8* %285, align 1, !dbg !1259, !tbaa !203
  %401 = load i8, i8* %263, align 1, !dbg !1260, !tbaa !203
  %402 = xor i8 %401, %400, !dbg !1260
  store i8 %402, i8* %263, align 1, !dbg !1260, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %266) #6, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %265) #6, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %24) #7, !dbg !1263
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %24, i8* nonnull %105, i32 20) #7, !dbg !1264
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %24) #7, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %264) #6, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  call void @xorDigest(i8* %2, i8* nonnull %105, i64 20) #8, !dbg !1267
  %403 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %234) #7, !dbg !1180
  %404 = icmp eq %struct.dictEntry* %403, null, !dbg !1182
  br i1 %404, label %405, label %289, !dbg !1183, !llvm.loop !1268

; <label>:405:                                    ; preds = %323, %228
  call void @dictReleaseIterator(%struct.dictIterator* %234) #7, !dbg !1270
  br label %407

; <label>:406:                                    ; preds = %104
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1271
  call void @_exit(i32 1) #9, !dbg !1271
  unreachable, !dbg !1271

; <label>:407:                                    ; preds = %405, %227
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %105) #6, !dbg !1273
  br label %612, !dbg !1274

; <label>:408:                                    ; preds = %4
  %409 = call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1275
  %410 = call i32 @hashTypeNext(%struct.hashTypeIterator* %409) #7, !dbg !1277
  %411 = icmp eq i32 %410, -1, !dbg !1278
  br i1 %411, label %528, label %412, !dbg !1279

; <label>:412:                                    ; preds = %408
  %413 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 0
  %414 = bitcast %struct.SHA1_CTX* %23 to i8*
  %415 = bitcast %struct.SHA1_CTX* %7 to i8*
  %416 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %417 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 16
  %418 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 16
  %419 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 17
  %420 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 17
  %421 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 18
  %422 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 18
  %423 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 19
  %424 = getelementptr inbounds [20 x i8], [20 x i8]* %39, i64 0, i64 19
  %425 = bitcast %struct.SHA1_CTX* %22 to i8*
  %426 = bitcast %struct.SHA1_CTX* %5 to i8*
  %427 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %428 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 16
  %429 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 17
  %430 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 18
  %431 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 19
  %432 = bitcast [20 x i8]* %8 to <16 x i8>*
  %433 = bitcast [20 x i8]* %39 to <16 x i8>*
  %434 = bitcast [20 x i8]* %39 to <16 x i8>*
  %435 = bitcast [20 x i8]* %6 to <16 x i8>*
  %436 = bitcast [20 x i8]* %39 to <16 x i8>*
  %437 = bitcast [20 x i8]* %39 to <16 x i8>*
  br label %438, !dbg !1279

; <label>:438:                                    ; preds = %412, %508
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %413) #6, !dbg !1280
  %439 = call i8* @memset(i8* nonnull %413, i32 0, i64 20) #7, !dbg !1282
  %440 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %409, i32 1) #7, !dbg !1283
  %441 = getelementptr inbounds i8, i8* %440, i64 -1, !dbg !1287
  %442 = load i8, i8* %441, align 1, !dbg !1287, !tbaa !203
  %443 = trunc i8 %442 to i3, !dbg !1289
  switch i3 %443, label %465 [
    i3 0, label %444
    i3 1, label %447
    i3 2, label %451
    i3 3, label %456
    i3 -4, label %461
  ], !dbg !1289

; <label>:444:                                    ; preds = %438
  %445 = lshr i8 %442, 3, !dbg !1290
  %446 = zext i8 %445 to i64, !dbg !1290
  br label %465, !dbg !1291

; <label>:447:                                    ; preds = %438
  %448 = getelementptr inbounds i8, i8* %440, i64 -3, !dbg !1292
  %449 = load i8, i8* %448, align 1, !dbg !1293, !tbaa !203
  %450 = zext i8 %449 to i64, !dbg !1292
  br label %465, !dbg !1294

; <label>:451:                                    ; preds = %438
  %452 = getelementptr inbounds i8, i8* %440, i64 -5, !dbg !1295
  %453 = bitcast i8* %452 to i16*, !dbg !1296
  %454 = load i16, i16* %453, align 1, !dbg !1296, !tbaa !254
  %455 = zext i16 %454 to i64, !dbg !1295
  br label %465, !dbg !1297

; <label>:456:                                    ; preds = %438
  %457 = getelementptr inbounds i8, i8* %440, i64 -9, !dbg !1298
  %458 = bitcast i8* %457 to i32*, !dbg !1299
  %459 = load i32, i32* %458, align 1, !dbg !1299, !tbaa !259
  %460 = zext i32 %459 to i64, !dbg !1298
  br label %465, !dbg !1300

; <label>:461:                                    ; preds = %438
  %462 = getelementptr inbounds i8, i8* %440, i64 -17, !dbg !1301
  %463 = bitcast i8* %462 to i64*, !dbg !1302
  %464 = load i64, i64* %463, align 1, !dbg !1302, !tbaa !263
  br label %465, !dbg !1303

; <label>:465:                                    ; preds = %438, %444, %447, %451, %456, %461
  %466 = phi i64 [ %464, %461 ], [ %460, %456 ], [ %455, %451 ], [ %450, %447 ], [ %446, %444 ], [ 0, %438 ], !dbg !1304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %415) #6, !dbg !1314
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %416) #6, !dbg !1315
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %7) #7, !dbg !1318
  %467 = trunc i64 %466 to i32, !dbg !1319
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %7, i8* %440, i32 %467) #7, !dbg !1320
  call void @SHA1Final(i8* nonnull %416, %struct.SHA1_CTX* nonnull %7) #7, !dbg !1321
  %468 = load <16 x i8>, <16 x i8>* %432, align 16, !dbg !1323, !tbaa !203
  %469 = load <16 x i8>, <16 x i8>* %433, align 16, !dbg !1324, !tbaa !203
  %470 = xor <16 x i8> %469, %468, !dbg !1324
  store <16 x i8> %470, <16 x i8>* %434, align 16, !dbg !1324, !tbaa !203
  %471 = load i8, i8* %417, align 16, !dbg !1323, !tbaa !203
  %472 = load i8, i8* %418, align 16, !dbg !1324, !tbaa !203
  %473 = xor i8 %472, %471, !dbg !1324
  store i8 %473, i8* %418, align 16, !dbg !1324, !tbaa !203
  %474 = load i8, i8* %419, align 1, !dbg !1323, !tbaa !203
  %475 = load i8, i8* %420, align 1, !dbg !1324, !tbaa !203
  %476 = xor i8 %475, %474, !dbg !1324
  store i8 %476, i8* %420, align 1, !dbg !1324, !tbaa !203
  %477 = load i8, i8* %421, align 2, !dbg !1323, !tbaa !203
  %478 = load i8, i8* %422, align 2, !dbg !1324, !tbaa !203
  %479 = xor i8 %478, %477, !dbg !1324
  store i8 %479, i8* %422, align 2, !dbg !1324, !tbaa !203
  %480 = load i8, i8* %423, align 1, !dbg !1323, !tbaa !203
  %481 = load i8, i8* %424, align 1, !dbg !1324, !tbaa !203
  %482 = xor i8 %481, %480, !dbg !1324
  store i8 %482, i8* %424, align 1, !dbg !1324, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %416) #6, !dbg !1325
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %415) #6, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %23) #7, !dbg !1327
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %23, i8* nonnull %413, i32 20) #7, !dbg !1328
  call void @SHA1Final(i8* nonnull %413, %struct.SHA1_CTX* nonnull %23) #7, !dbg !1329
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  call void @sdsfree(i8* %440) #7, !dbg !1331
  %483 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %409, i32 2) #7, !dbg !1332
  %484 = getelementptr inbounds i8, i8* %483, i64 -1, !dbg !1335
  %485 = load i8, i8* %484, align 1, !dbg !1335, !tbaa !203
  %486 = trunc i8 %485 to i3, !dbg !1337
  switch i3 %486, label %508 [
    i3 0, label %487
    i3 1, label %490
    i3 2, label %494
    i3 3, label %499
    i3 -4, label %504
  ], !dbg !1337

; <label>:487:                                    ; preds = %465
  %488 = lshr i8 %485, 3, !dbg !1338
  %489 = zext i8 %488 to i64, !dbg !1338
  br label %508, !dbg !1339

; <label>:490:                                    ; preds = %465
  %491 = getelementptr inbounds i8, i8* %483, i64 -3, !dbg !1340
  %492 = load i8, i8* %491, align 1, !dbg !1341, !tbaa !203
  %493 = zext i8 %492 to i64, !dbg !1340
  br label %508, !dbg !1342

; <label>:494:                                    ; preds = %465
  %495 = getelementptr inbounds i8, i8* %483, i64 -5, !dbg !1343
  %496 = bitcast i8* %495 to i16*, !dbg !1344
  %497 = load i16, i16* %496, align 1, !dbg !1344, !tbaa !254
  %498 = zext i16 %497 to i64, !dbg !1343
  br label %508, !dbg !1345

; <label>:499:                                    ; preds = %465
  %500 = getelementptr inbounds i8, i8* %483, i64 -9, !dbg !1346
  %501 = bitcast i8* %500 to i32*, !dbg !1347
  %502 = load i32, i32* %501, align 1, !dbg !1347, !tbaa !259
  %503 = zext i32 %502 to i64, !dbg !1346
  br label %508, !dbg !1348

; <label>:504:                                    ; preds = %465
  %505 = getelementptr inbounds i8, i8* %483, i64 -17, !dbg !1349
  %506 = bitcast i8* %505 to i64*, !dbg !1350
  %507 = load i64, i64* %506, align 1, !dbg !1350, !tbaa !263
  br label %508, !dbg !1351

; <label>:508:                                    ; preds = %465, %487, %490, %494, %499, %504
  %509 = phi i64 [ %507, %504 ], [ %503, %499 ], [ %498, %494 ], [ %493, %490 ], [ %489, %487 ], [ 0, %465 ], !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %425) #6, !dbg !1357
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %426) #6, !dbg !1362
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %427) #6, !dbg !1363
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #7, !dbg !1366
  %510 = trunc i64 %509 to i32, !dbg !1367
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* %483, i32 %510) #7, !dbg !1368
  call void @SHA1Final(i8* nonnull %427, %struct.SHA1_CTX* nonnull %5) #7, !dbg !1369
  %511 = load <16 x i8>, <16 x i8>* %435, align 16, !dbg !1371, !tbaa !203
  %512 = load <16 x i8>, <16 x i8>* %436, align 16, !dbg !1372, !tbaa !203
  %513 = xor <16 x i8> %512, %511, !dbg !1372
  store <16 x i8> %513, <16 x i8>* %437, align 16, !dbg !1372, !tbaa !203
  %514 = load i8, i8* %428, align 16, !dbg !1371, !tbaa !203
  %515 = load i8, i8* %418, align 16, !dbg !1372, !tbaa !203
  %516 = xor i8 %515, %514, !dbg !1372
  store i8 %516, i8* %418, align 16, !dbg !1372, !tbaa !203
  %517 = load i8, i8* %429, align 1, !dbg !1371, !tbaa !203
  %518 = load i8, i8* %420, align 1, !dbg !1372, !tbaa !203
  %519 = xor i8 %518, %517, !dbg !1372
  store i8 %519, i8* %420, align 1, !dbg !1372, !tbaa !203
  %520 = load i8, i8* %430, align 2, !dbg !1371, !tbaa !203
  %521 = load i8, i8* %422, align 2, !dbg !1372, !tbaa !203
  %522 = xor i8 %521, %520, !dbg !1372
  store i8 %522, i8* %422, align 2, !dbg !1372, !tbaa !203
  %523 = load i8, i8* %431, align 1, !dbg !1371, !tbaa !203
  %524 = load i8, i8* %424, align 1, !dbg !1372, !tbaa !203
  %525 = xor i8 %524, %523, !dbg !1372
  store i8 %525, i8* %424, align 1, !dbg !1372, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %427) #6, !dbg !1373
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %426) #6, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %22) #7, !dbg !1375
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %22, i8* nonnull %413, i32 20) #7, !dbg !1376
  call void @SHA1Final(i8* nonnull %413, %struct.SHA1_CTX* nonnull %22) #7, !dbg !1377
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %425) #6, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  call void @sdsfree(i8* %483) #7, !dbg !1379
  call void @xorDigest(i8* %2, i8* nonnull %413, i64 20) #8, !dbg !1380
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %413) #6, !dbg !1381
  %526 = call i32 @hashTypeNext(%struct.hashTypeIterator* %409) #7, !dbg !1277
  %527 = icmp eq i32 %526, -1, !dbg !1278
  br i1 %527, label %528, label %438, !dbg !1279, !llvm.loop !1382

; <label>:528:                                    ; preds = %508, %408
  call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %409) #7, !dbg !1383
  br label %612, !dbg !1384

; <label>:529:                                    ; preds = %4
  %530 = bitcast %struct.streamIterator* %40 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %530) #6, !dbg !1385
  %531 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1386
  %532 = bitcast i8** %531 to %struct.stream**, !dbg !1386
  %533 = load %struct.stream*, %struct.stream** %532, align 8, !dbg !1386, !tbaa !228
  call void @streamIteratorStart(%struct.streamIterator* nonnull %40, %struct.stream* %533, %struct.streamID* null, %struct.streamID* null, i32 0) #7, !dbg !1388
  %534 = bitcast %struct.streamID* %41 to i8*, !dbg !1389
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %534) #6, !dbg !1389
  %535 = bitcast i64* %42 to i8*, !dbg !1390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %535) #6, !dbg !1390
  %536 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %40, %struct.streamID* nonnull %41, i64* nonnull %42) #7, !dbg !1393
  %537 = icmp eq i32 %536, 0, !dbg !1394
  br i1 %537, label %593, label %538, !dbg !1394

; <label>:538:                                    ; preds = %529
  %539 = getelementptr inbounds %struct.streamID, %struct.streamID* %41, i64 0, i32 0
  %540 = getelementptr inbounds %struct.streamID, %struct.streamID* %41, i64 0, i32 1
  %541 = bitcast %struct.SHA1_CTX* %21 to i8*
  %542 = bitcast i8** %43 to i8*
  %543 = bitcast i8** %44 to i8*
  %544 = bitcast i64* %45 to i8*
  %545 = bitcast i64* %46 to i8*
  %546 = bitcast %struct.SHA1_CTX* %20 to i8*
  %547 = bitcast %struct.SHA1_CTX* %19 to i8*
  br label %551, !dbg !1394

; <label>:548:                                    ; preds = %585, %580
  %549 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %40, %struct.streamID* nonnull %41, i64* nonnull %42) #7, !dbg !1393
  %550 = icmp eq i32 %549, 0, !dbg !1394
  br i1 %550, label %593, label %551, !dbg !1394

; <label>:551:                                    ; preds = %538, %548
  %552 = call i8* @sdsempty() #7, !dbg !1395
  %553 = load i64, i64* %539, align 8, !dbg !1396, !tbaa !1397
  %554 = load i64, i64* %540, align 8, !dbg !1399, !tbaa !1400
  %555 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %553, i64 %554) #7, !dbg !1401
  %556 = getelementptr inbounds i8, i8* %555, i64 -1, !dbg !1405
  %557 = load i8, i8* %556, align 1, !dbg !1405, !tbaa !203
  %558 = trunc i8 %557 to i3, !dbg !1407
  switch i3 %558, label %580 [
    i3 0, label %559
    i3 1, label %562
    i3 2, label %566
    i3 3, label %571
    i3 -4, label %576
  ], !dbg !1407

; <label>:559:                                    ; preds = %551
  %560 = lshr i8 %557, 3, !dbg !1408
  %561 = zext i8 %560 to i64, !dbg !1408
  br label %580, !dbg !1409

; <label>:562:                                    ; preds = %551
  %563 = getelementptr inbounds i8, i8* %555, i64 -3, !dbg !1410
  %564 = load i8, i8* %563, align 1, !dbg !1411, !tbaa !203
  %565 = zext i8 %564 to i64, !dbg !1410
  br label %580, !dbg !1412

; <label>:566:                                    ; preds = %551
  %567 = getelementptr inbounds i8, i8* %555, i64 -5, !dbg !1413
  %568 = bitcast i8* %567 to i16*, !dbg !1414
  %569 = load i16, i16* %568, align 1, !dbg !1414, !tbaa !254
  %570 = zext i16 %569 to i64, !dbg !1413
  br label %580, !dbg !1415

; <label>:571:                                    ; preds = %551
  %572 = getelementptr inbounds i8, i8* %555, i64 -9, !dbg !1416
  %573 = bitcast i8* %572 to i32*, !dbg !1417
  %574 = load i32, i32* %573, align 1, !dbg !1417, !tbaa !259
  %575 = zext i32 %574 to i64, !dbg !1416
  br label %580, !dbg !1418

; <label>:576:                                    ; preds = %551
  %577 = getelementptr inbounds i8, i8* %555, i64 -17, !dbg !1419
  %578 = bitcast i8* %577 to i64*, !dbg !1420
  %579 = load i64, i64* %578, align 1, !dbg !1420, !tbaa !263
  br label %580, !dbg !1421

; <label>:580:                                    ; preds = %551, %559, %562, %566, %571, %576
  %581 = phi i64 [ %579, %576 ], [ %575, %571 ], [ %570, %566 ], [ %565, %562 ], [ %561, %559 ], [ 0, %551 ], !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %541) #6, !dbg !1428
  call void @xorDigest(i8* %2, i8* %555, i64 %581) #7, !dbg !1430
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %21) #7, !dbg !1432
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %21, i8* %2, i32 20) #7, !dbg !1433
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %21) #7, !dbg !1434
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %541) #6, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  call void @sdsfree(i8* %555) #7, !dbg !1436
  %582 = load i64, i64* %42, align 8, !dbg !1437, !tbaa !263
  %583 = add nsw i64 %582, -1, !dbg !1437
  store i64 %583, i64* %42, align 8, !dbg !1437, !tbaa !263
  %584 = icmp eq i64 %582, 0, !dbg !1438
  br i1 %584, label %548, label %585, !dbg !1438, !llvm.loop !1439

; <label>:585:                                    ; preds = %580, %585
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %542) #6, !dbg !1441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %543) #6, !dbg !1441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %544) #6, !dbg !1442
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %545) #6, !dbg !1442
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %40, i8** nonnull %43, i8** nonnull %44, i64* nonnull %45, i64* nonnull %46) #7, !dbg !1447
  %586 = load i8*, i8** %43, align 8, !dbg !1448, !tbaa !1066
  %587 = load i64, i64* %45, align 8, !dbg !1449, !tbaa !263
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %546) #6, !dbg !1454
  call void @xorDigest(i8* %2, i8* %586, i64 %587) #7, !dbg !1456
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %20) #7, !dbg !1458
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %20, i8* %2, i32 20) #7, !dbg !1459
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %20) #7, !dbg !1460
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %546) #6, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %588 = load i8*, i8** %44, align 8, !dbg !1462, !tbaa !1066
  %589 = load i64, i64* %46, align 8, !dbg !1463, !tbaa !263
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %547) #6, !dbg !1468
  call void @xorDigest(i8* %2, i8* %588, i64 %589) #7, !dbg !1470
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %19) #7, !dbg !1472
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %19, i8* %2, i32 20) #7, !dbg !1473
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %19) #7, !dbg !1474
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %547) #6, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %545) #6, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %544) #6, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %543) #6, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %542) #6, !dbg !1476
  %590 = load i64, i64* %42, align 8, !dbg !1437, !tbaa !263
  %591 = add nsw i64 %590, -1, !dbg !1437
  store i64 %591, i64* %42, align 8, !dbg !1437, !tbaa !263
  %592 = icmp eq i64 %590, 0, !dbg !1438
  br i1 %592, label %548, label %585, !dbg !1438, !llvm.loop !1477

; <label>:593:                                    ; preds = %548, %529
  call void @streamIteratorStop(%struct.streamIterator* nonnull %40) #7, !dbg !1478
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %535) #6, !dbg !1479
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %534) #6, !dbg !1479
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %530) #6, !dbg !1479
  br label %612, !dbg !1480

; <label>:594:                                    ; preds = %4
  %595 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %47, i64 0, i32 0, i64 0, !dbg !1481
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %595) #6, !dbg !1481
  %596 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1482
  %597 = bitcast i8** %596 to %struct.moduleValue**, !dbg !1482
  %598 = load %struct.moduleValue*, %struct.moduleValue** %597, align 8, !dbg !1482, !tbaa !228
  %599 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %598, i64 0, i32 0, !dbg !1484
  %600 = load %struct.RedisModuleType*, %struct.RedisModuleType** %599, align 8, !dbg !1484, !tbaa !1485
  %601 = call i8* @memset(i8* nonnull %595, i32 0, i64 20) #7, !dbg !1488
  %602 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %47, i64 0, i32 1, i64 0, !dbg !1488
  %603 = call i8* @memset(i8* nonnull %602, i32 0, i64 20) #7, !dbg !1488
  %604 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %600, i64 0, i32 6, !dbg !1490
  %605 = load void (%struct.RedisModuleDigest*, i8*)*, void (%struct.RedisModuleDigest*, i8*)** %604, align 8, !dbg !1490, !tbaa !1492
  %606 = icmp eq void (%struct.RedisModuleDigest*, i8*)* %605, null, !dbg !1494
  br i1 %606, label %610, label %607, !dbg !1495

; <label>:607:                                    ; preds = %594
  %608 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %598, i64 0, i32 1, !dbg !1496
  %609 = load i8*, i8** %608, align 8, !dbg !1496, !tbaa !1498
  call void %605(%struct.RedisModuleDigest* nonnull %47, i8* %609) #7, !dbg !1500
  call void @xorDigest(i8* %2, i8* nonnull %602, i64 20) #8, !dbg !1501
  br label %610, !dbg !1502

; <label>:610:                                    ; preds = %594, %607
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %595) #6, !dbg !1503
  br label %612

; <label>:611:                                    ; preds = %4
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1504
  call void @_exit(i32 1) #9, !dbg !1504
  unreachable, !dbg !1504

; <label>:612:                                    ; preds = %68, %407, %593, %610, %528, %103, %58
  %613 = icmp eq i64 %54, -1, !dbg !1506
  br i1 %613, label %615, label %614, !dbg !1508

; <label>:614:                                    ; preds = %612
  call void @xorDigest(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 10) #8, !dbg !1509
  br label %615, !dbg !1509

; <label>:615:                                    ; preds = %612, %614
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #6, !dbg !1510
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #6, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  ret void, !dbg !1510
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject*, i64, i8 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @listTypeNext(%struct.listTypeIterator*, %struct.listTypeEntry*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @listTypeGet(%struct.listTypeEntry*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listTypeReleaseIterator(%struct.listTypeIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @setTypeNextObject(%struct.setTypeIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setTypeReleaseIterator(%struct.setTypeIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1511 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1521, !tbaa !1525
  %5 = icmp eq i32 %4, 0, !dbg !1530
  br i1 %5, label %6, label %7, !dbg !1531

; <label>:6:                                      ; preds = %3
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1532
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1534, !tbaa !1525
  br label %7, !dbg !1535

; <label>:7:                                      ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !1537
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %1, i32 %2, i8* %0) #7, !dbg !1538
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1539, !tbaa !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  ret void, !dbg !1540
}

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @zzlGetScore(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zzlNext(i8*, i8**, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #0 !dbg !1541 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [256 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1567
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1567
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1569
  call void @llvm.va_start(i8* nonnull %6), !dbg !1569
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !1570
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1570
  %9 = call i32 @vsnprintf(i8* nonnull %8, i64 256, i8* %2, %struct.__va_list_tag* nonnull %7) #7, !dbg !1572
  call void @llvm.va_end(i8* nonnull %6), !dbg !1573
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1574, !tbaa !1525
  %11 = icmp eq i32 %10, 0, !dbg !1576
  br i1 %11, label %12, label %13, !dbg !1577

; <label>:12:                                     ; preds = %3
  call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1578
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1579, !tbaa !1525
  br label %13, !dbg !1580

; <label>:13:                                     ; preds = %3, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1582
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.115, i64 0, i64 0)) #7, !dbg !1583
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* nonnull %8, i8* %0, i32 %1) #7, !dbg !1584
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1585
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1586, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1587
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1587
  ret void, !dbg !1587
}

; Function Attrs: noredzone
declare dso_local %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @hashTypeNext(%struct.hashTypeIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @hashTypeReleaseIterator(%struct.hashTypeIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @streamIteratorStart(%struct.streamIterator*, %struct.stream*, %struct.streamID*, %struct.streamID*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @streamIteratorGetID(%struct.streamIterator*, %struct.streamID*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @streamIteratorGetField(%struct.streamIterator*, i8**, i8**, i64*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @streamIteratorStop(%struct.streamIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @computeDatasetDigest(i8*) local_unnamed_addr #0 !dbg !1588 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #6, !dbg !1610
  %9 = bitcast i32* %7 to i8*, !dbg !1613
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !1613
  %10 = tail call i8* @memset(i8* %0, i32 0, i64 20) #7, !dbg !1614
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1616, !tbaa !1617
  %12 = icmp sgt i32 %11, 0, !dbg !1618
  br i1 %12, label %13, label %133, !dbg !1619

; <label>:13:                                     ; preds = %1
  %14 = bitcast %struct.SHA1_CTX* %5 to i8*
  %15 = bitcast %struct.SHA1_CTX* %4 to i8*
  %16 = bitcast %struct.SHA1_CTX* %2 to i8*
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 16
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 16
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 17
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 17
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 18
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 18
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 19
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 19
  %26 = bitcast [20 x i8]* %3 to <16 x i8>*
  %27 = bitcast [20 x i8]* %6 to <16 x i8>*
  %28 = bitcast [20 x i8]* %6 to <16 x i8>*
  br label %29, !dbg !1619

; <label>:29:                                     ; preds = %13, %128
  %30 = phi i32 [ %11, %13 ], [ %129, %128 ]
  %31 = phi i64 [ 0, %13 ], [ %130, %128 ]
  %32 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1620, !tbaa !1621
  %33 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %31, !dbg !1622
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %33, i64 0, i32 0, !dbg !1624
  %35 = load %struct.dict*, %struct.dict** %34, align 8, !dbg !1624, !tbaa !1626
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 0, i32 3, !dbg !1624
  %37 = load i64, i64* %36, align 8, !dbg !1624, !tbaa !1628
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 1, i32 3, !dbg !1624
  %39 = load i64, i64* %38, align 8, !dbg !1624, !tbaa !1628
  %40 = sub i64 0, %39, !dbg !1630
  %41 = icmp eq i64 %37, %40, !dbg !1630
  br i1 %41, label %128, label %42, !dbg !1631

; <label>:42:                                     ; preds = %29
  %43 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %35) #7, !dbg !1632
  %44 = trunc i64 %31 to i32, !dbg !1633
  %45 = call i32 @lwip_htonl(i32 %44) #7, !dbg !1633
  store i32 %45, i32* %7, align 4, !dbg !1635, !tbaa !259
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %14) #6, !dbg !1640
  call void @xorDigest(i8* %0, i8* nonnull %9, i64 4) #7, !dbg !1642
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #7, !dbg !1644
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* %0, i32 20) #7, !dbg !1645
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %5) #7, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %14) #6, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  %46 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %43) #7, !dbg !1648
  %47 = icmp eq %struct.dictEntry* %46, null, !dbg !1650
  br i1 %47, label %126, label %48, !dbg !1651

; <label>:48:                                     ; preds = %42, %103
  %49 = phi %struct.dictEntry* [ %124, %103 ], [ %46, %42 ]
  %50 = call i8* @memset(i8* nonnull %8, i32 0, i64 20) #7, !dbg !1652
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %49, i64 0, i32 0, !dbg !1653
  %52 = load i8*, i8** %51, align 8, !dbg !1653, !tbaa !1185
  %53 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !1657
  %54 = load i8, i8* %53, align 1, !dbg !1657, !tbaa !203
  %55 = trunc i8 %54 to i3, !dbg !1659
  switch i3 %55, label %77 [
    i3 0, label %56
    i3 1, label %59
    i3 2, label %63
    i3 3, label %68
    i3 -4, label %73
  ], !dbg !1659

; <label>:56:                                     ; preds = %48
  %57 = lshr i8 %54, 3, !dbg !1660
  %58 = zext i8 %57 to i64, !dbg !1660
  br label %77, !dbg !1661

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !1662
  %61 = load i8, i8* %60, align 1, !dbg !1663, !tbaa !203
  %62 = zext i8 %61 to i64, !dbg !1662
  br label %77, !dbg !1664

; <label>:63:                                     ; preds = %48
  %64 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !1665
  %65 = bitcast i8* %64 to i16*, !dbg !1666
  %66 = load i16, i16* %65, align 1, !dbg !1666, !tbaa !254
  %67 = zext i16 %66 to i64, !dbg !1665
  br label %77, !dbg !1667

; <label>:68:                                     ; preds = %48
  %69 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !1668
  %70 = bitcast i8* %69 to i32*, !dbg !1669
  %71 = load i32, i32* %70, align 1, !dbg !1669, !tbaa !259
  %72 = zext i32 %71 to i64, !dbg !1668
  br label %77, !dbg !1670

; <label>:73:                                     ; preds = %48
  %74 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !1671
  %75 = bitcast i8* %74 to i64*, !dbg !1672
  %76 = load i64, i64* %75, align 1, !dbg !1672, !tbaa !263
  br label %77, !dbg !1673

; <label>:77:                                     ; preds = %48, %56, %59, %63, %68, %73
  %78 = phi i64 [ %76, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %59 ], [ %58, %56 ], [ 0, %48 ], !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  %79 = call %struct.redisObject* @createStringObject(i8* %52, i64 %78) #7, !dbg !1676
  %80 = load i8, i8* %53, align 1, !dbg !1680, !tbaa !203
  %81 = trunc i8 %80 to i3, !dbg !1682
  switch i3 %81, label %103 [
    i3 0, label %82
    i3 1, label %85
    i3 2, label %89
    i3 3, label %94
    i3 -4, label %99
  ], !dbg !1682

; <label>:82:                                     ; preds = %77
  %83 = lshr i8 %80, 3, !dbg !1683
  %84 = zext i8 %83 to i64, !dbg !1683
  br label %103, !dbg !1684

; <label>:85:                                     ; preds = %77
  %86 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !1685
  %87 = load i8, i8* %86, align 1, !dbg !1686, !tbaa !203
  %88 = zext i8 %87 to i64, !dbg !1685
  br label %103, !dbg !1687

; <label>:89:                                     ; preds = %77
  %90 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !1688
  %91 = bitcast i8* %90 to i16*, !dbg !1689
  %92 = load i16, i16* %91, align 1, !dbg !1689, !tbaa !254
  %93 = zext i16 %92 to i64, !dbg !1688
  br label %103, !dbg !1690

; <label>:94:                                     ; preds = %77
  %95 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !1691
  %96 = bitcast i8* %95 to i32*, !dbg !1692
  %97 = load i32, i32* %96, align 1, !dbg !1692, !tbaa !259
  %98 = zext i32 %97 to i64, !dbg !1691
  br label %103, !dbg !1693

; <label>:99:                                     ; preds = %77
  %100 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !1694
  %101 = bitcast i8* %100 to i64*, !dbg !1695
  %102 = load i64, i64* %101, align 1, !dbg !1695, !tbaa !263
  br label %103, !dbg !1696

; <label>:103:                                    ; preds = %77, %82, %85, %89, %94, %99
  %104 = phi i64 [ %102, %99 ], [ %98, %94 ], [ %93, %89 ], [ %88, %85 ], [ %84, %82 ], [ 0, %77 ], !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1698
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %15) #6, !dbg !1702
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %16) #6, !dbg !1707
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %17) #6, !dbg !1708
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #7, !dbg !1711
  %105 = trunc i64 %104 to i32, !dbg !1712
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* nonnull %52, i32 %105) #7, !dbg !1713
  call void @SHA1Final(i8* nonnull %17, %struct.SHA1_CTX* nonnull %2) #7, !dbg !1714
  %106 = load <16 x i8>, <16 x i8>* %26, align 16, !dbg !1716, !tbaa !203
  %107 = load <16 x i8>, <16 x i8>* %27, align 16, !dbg !1717, !tbaa !203
  %108 = xor <16 x i8> %107, %106, !dbg !1717
  store <16 x i8> %108, <16 x i8>* %28, align 16, !dbg !1717, !tbaa !203
  %109 = load i8, i8* %18, align 16, !dbg !1716, !tbaa !203
  %110 = load i8, i8* %19, align 16, !dbg !1717, !tbaa !203
  %111 = xor i8 %110, %109, !dbg !1717
  store i8 %111, i8* %19, align 16, !dbg !1717, !tbaa !203
  %112 = load i8, i8* %20, align 1, !dbg !1716, !tbaa !203
  %113 = load i8, i8* %21, align 1, !dbg !1717, !tbaa !203
  %114 = xor i8 %113, %112, !dbg !1717
  store i8 %114, i8* %21, align 1, !dbg !1717, !tbaa !203
  %115 = load i8, i8* %22, align 2, !dbg !1716, !tbaa !203
  %116 = load i8, i8* %23, align 2, !dbg !1717, !tbaa !203
  %117 = xor i8 %116, %115, !dbg !1717
  store i8 %117, i8* %23, align 2, !dbg !1717, !tbaa !203
  %118 = load i8, i8* %24, align 1, !dbg !1716, !tbaa !203
  %119 = load i8, i8* %25, align 1, !dbg !1717, !tbaa !203
  %120 = xor i8 %119, %118, !dbg !1717
  store i8 %120, i8* %25, align 1, !dbg !1717, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %17) #6, !dbg !1718
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %16) #6, !dbg !1718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !1720
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* nonnull %8, i32 20) #7, !dbg !1721
  call void @SHA1Final(i8* nonnull %8, %struct.SHA1_CTX* nonnull %4) #7, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %15) #6, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  %121 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %49, i64 0, i32 1, i32 0, !dbg !1724
  %122 = bitcast i8** %121 to %struct.redisObject**, !dbg !1724
  %123 = load %struct.redisObject*, %struct.redisObject** %122, align 8, !dbg !1724, !tbaa !203
  call void @xorObjectDigest(%struct.redisDb* %33, %struct.redisObject* %79, i8* nonnull %8, %struct.redisObject* %123) #8, !dbg !1726
  call void @xorDigest(i8* %0, i8* nonnull %8, i64 20) #8, !dbg !1727
  call void @decrRefCount(%struct.redisObject* %79) #7, !dbg !1728
  %124 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %43) #7, !dbg !1648
  %125 = icmp eq %struct.dictEntry* %124, null, !dbg !1650
  br i1 %125, label %126, label %48, !dbg !1651, !llvm.loop !1729

; <label>:126:                                    ; preds = %103, %42
  call void @dictReleaseIterator(%struct.dictIterator* %43) #7, !dbg !1731
  %127 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1616, !tbaa !1617
  br label %128, !dbg !1732

; <label>:128:                                    ; preds = %29, %126
  %129 = phi i32 [ %30, %29 ], [ %127, %126 ], !dbg !1616
  %130 = add nuw nsw i64 %31, 1, !dbg !1733
  %131 = sext i32 %129 to i64, !dbg !1618
  %132 = icmp slt i64 %130, %131, !dbg !1618
  br i1 %132, label %29, label %133, !dbg !1619, !llvm.loop !1734

; <label>:133:                                    ; preds = %128, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !1736
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #6, !dbg !1736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  ret void, !dbg !1736
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @debugCommand(%struct.client*) local_unnamed_addr #0 !dbg !1737 {
  %2 = alloca [24 x i8*], align 16
  %3 = alloca i64, align 8
  %4 = alloca %struct.rdbSaveInfo, align 8
  %5 = alloca [138 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.timespec, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4096 x i8], align 16
  %14 = alloca [4096 x i8], align 16
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1985
  %16 = load i32, i32* %15, align 8, !dbg !1985, !tbaa !1986
  %17 = icmp eq i32 %16, 2, !dbg !1990
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %19 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !1991, !tbaa !1992
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1991, !tbaa !1066
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8, !dbg !1991, !tbaa !228
  br i1 %17, label %24, label %30, !dbg !1993

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1994
  %26 = icmp eq i32 %25, 0, !dbg !1994
  br i1 %26, label %27, label %30, !dbg !1995

; <label>:27:                                     ; preds = %24
  %28 = bitcast [24 x i8*]* %2 to i8*, !dbg !1996
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %28) #6, !dbg !1996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([24 x i8*]* @debugCommand.help to i8*), i64 192, i1 false), !dbg !1997
  %29 = getelementptr inbounds [24 x i8*], [24 x i8*]* %2, i64 0, i64 0, !dbg !1998
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %29) #7, !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %28) #6, !dbg !2000
  br label %797, !dbg !2001

; <label>:30:                                     ; preds = %1, %24
  %31 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !2002
  %32 = icmp eq i32 %31, 0, !dbg !2002
  br i1 %32, label %33, label %34, !dbg !2003

; <label>:33:                                     ; preds = %30
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !2004, !tbaa !203
  br label %797, !dbg !2006

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !2007
  %36 = icmp eq i32 %35, 0, !dbg !2007
  br i1 %36, label %37, label %39, !dbg !2008

; <label>:37:                                     ; preds = %34
  %38 = tail call i64 @time(i64* null) #7, !dbg !2009
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 332, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i64 %38) #8, !dbg !2009
  tail call void @_exit(i32 1) #9, !dbg !2009
  unreachable, !dbg !2009

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !2011
  %41 = icmp eq i32 %40, 0, !dbg !2011
  br i1 %41, label %45, label %42, !dbg !2012

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !2013
  %44 = icmp eq i32 %43, 0, !dbg !2013
  br i1 %44, label %45, label %69, !dbg !2014

; <label>:45:                                     ; preds = %42, %39
  %46 = bitcast i64* %3 to i8*, !dbg !2015
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #6, !dbg !2015
  store i64 0, i64* %3, align 8, !dbg !2016, !tbaa !1109
  %47 = icmp sgt i32 %16, 2, !dbg !2017
  br i1 %47, label %48, label %57, !dbg !2019

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2020
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !2020, !tbaa !1066
  %51 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, i64* nonnull %3, i8* null) #7, !dbg !2023
  %52 = icmp eq i32 %51, 0, !dbg !2024
  br i1 %52, label %53, label %68, !dbg !2025

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %3, align 8, !dbg !2026, !tbaa !1109
  %55 = icmp slt i64 %54, 0, !dbg !2028
  br i1 %55, label %56, label %57, !dbg !2029

; <label>:56:                                     ; preds = %53
  store i64 0, i64* %3, align 8, !dbg !2030, !tbaa !1109
  br label %57, !dbg !2031

; <label>:57:                                     ; preds = %53, %56, %45
  %58 = phi i64 [ %54, %53 ], [ 0, %56 ], [ 0, %45 ], !dbg !2032
  %59 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2033, !tbaa !1992
  %60 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %59, i64 1, !dbg !2034
  %61 = load %struct.redisObject*, %struct.redisObject** %60, align 8, !dbg !2034, !tbaa !1066
  %62 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %61, i64 0, i32 2, !dbg !2035
  %63 = load i8*, i8** %62, align 8, !dbg !2035, !tbaa !228
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !2036
  %65 = icmp eq i32 %64, 0, !dbg !2037
  %66 = select i1 %65, i32 3, i32 0, !dbg !2037
  %67 = call i32 @restartServer(i32 %66, i64 %58) #7, !dbg !2039
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2040
  br label %68, !dbg !2041

; <label>:68:                                     ; preds = %48, %57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #6, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:69:                                     ; preds = %42
  %70 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !2042
  %71 = icmp eq i32 %70, 0, !dbg !2042
  br i1 %71, label %72, label %75, !dbg !2043

; <label>:72:                                     ; preds = %69
  %73 = tail call i8* @zmalloc(i64 -1) #7, !dbg !2044
  tail call void @zfree(i8* %73) #7, !dbg !2046
  %74 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2047, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %74) #7, !dbg !2050
  br label %797, !dbg !2051

; <label>:75:                                     ; preds = %69
  %76 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !2052
  %77 = icmp eq i32 %76, 0, !dbg !2052
  br i1 %77, label %78, label %80, !dbg !2053

; <label>:78:                                     ; preds = %75
  %79 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !2054, !tbaa !1066
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 352) #8, !dbg !2054
  tail call void @_exit(i32 1) #9, !dbg !2054
  unreachable, !dbg !2054

; <label>:80:                                     ; preds = %75
  %81 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !2056
  %82 = icmp eq i32 %81, 0, !dbg !2056
  %83 = icmp eq i32 %16, 3, !dbg !2057
  %84 = and i1 %83, %82, !dbg !2058
  br i1 %84, label %85, label %91, !dbg !2058

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2059
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !2059, !tbaa !1066
  %88 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 2, !dbg !2061
  %89 = load i8*, i8** %88, align 8, !dbg !2061, !tbaa !228
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* %89) #7, !dbg !2062
  %90 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2063, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %90) #7, !dbg !2064
  br label %797, !dbg !2065

; <label>:91:                                     ; preds = %80
  %92 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !2066
  %93 = icmp eq i32 %92, 0, !dbg !2066
  br i1 %93, label %94, label %111, !dbg !2067

; <label>:94:                                     ; preds = %91
  %95 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !2068
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2068
  %96 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #7, !dbg !2070
  %97 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2072, !tbaa !2074
  %98 = call i32 @rdbSave(i8* %97, %struct.rdbSaveInfo* %96) #7, !dbg !2075
  %99 = icmp eq i32 %98, 0, !dbg !2076
  br i1 %99, label %102, label %100, !dbg !2077

; <label>:100:                                    ; preds = %94
  %101 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2078, !tbaa !2080
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %101) #7, !dbg !2081
  br label %110, !dbg !2082

; <label>:102:                                    ; preds = %94
  %103 = call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2083
  call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2084
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2085, !tbaa !2074
  %105 = call i32 @rdbLoad(i8* %104, %struct.rdbSaveInfo* null) #7, !dbg !2086
  call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2088
  %106 = icmp eq i32 %105, 0, !dbg !2089
  br i1 %106, label %108, label %107, !dbg !2091

; <label>:107:                                    ; preds = %102
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2092
  br label %110, !dbg !2094

; <label>:108:                                    ; preds = %102
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !2095
  %109 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2096, !tbaa !2048
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %109) #7, !dbg !2097
  br label %110, !dbg !2098

; <label>:110:                                    ; preds = %107, %108, %100
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2098
  br label %797

; <label>:111:                                    ; preds = %91
  %112 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !2099
  %113 = icmp eq i32 %112, 0, !dbg !2099
  br i1 %113, label %114, label %127, !dbg !2100

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2101, !tbaa !2103
  %116 = icmp eq i32 %115, 0, !dbg !2104
  br i1 %116, label %118, label %117, !dbg !2105

; <label>:117:                                    ; preds = %114
  tail call void @flushAppendOnlyFile(i32 1) #7, !dbg !2106
  br label %118, !dbg !2106

; <label>:118:                                    ; preds = %114, %117
  %119 = tail call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2107
  tail call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2108
  %120 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !2109, !tbaa !2110
  %121 = tail call i32 @loadAppendOnlyFile(i8* %120) #7, !dbg !2111
  tail call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2113
  %122 = icmp eq i32 %121, 0, !dbg !2114
  br i1 %122, label %125, label %123, !dbg !2116

; <label>:123:                                    ; preds = %118
  %124 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2117, !tbaa !2080
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %124) #7, !dbg !2119
  br label %797, !dbg !2120

; <label>:125:                                    ; preds = %118
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2121, !tbaa !2122
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !2123
  %126 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2124, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %126) #7, !dbg !2125
  br label %797, !dbg !2126

; <label>:127:                                    ; preds = %111
  %128 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !2127
  %129 = icmp eq i32 %128, 0, !dbg !2127
  %130 = and i1 %83, %129, !dbg !2128
  br i1 %130, label %131, label %221, !dbg !2128

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2129
  %133 = load %struct.redisDb*, %struct.redisDb** %132, align 8, !dbg !2129, !tbaa !2131
  %134 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %133, i64 0, i32 0, !dbg !2132
  %135 = load %struct.dict*, %struct.dict** %134, align 8, !dbg !2132, !tbaa !1626
  %136 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2133
  %137 = load %struct.redisObject*, %struct.redisObject** %136, align 8, !dbg !2133, !tbaa !1066
  %138 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %137, i64 0, i32 2, !dbg !2134
  %139 = load i8*, i8** %138, align 8, !dbg !2134, !tbaa !228
  %140 = tail call %struct.dictEntry* @dictFind(%struct.dict* %135, i8* %139) #7, !dbg !2135
  %141 = icmp eq %struct.dictEntry* %140, null, !dbg !2137
  br i1 %141, label %142, label %144, !dbg !2138

; <label>:142:                                    ; preds = %131
  %143 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2139, !tbaa !2141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %143) #7, !dbg !2142
  br label %797, !dbg !2143

; <label>:144:                                    ; preds = %131
  %145 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %140, i64 0, i32 1, i32 0, !dbg !2144
  %146 = load i8*, i8** %145, align 8, !dbg !2144, !tbaa !203
  %147 = bitcast i8* %146 to %struct.redisObject*, !dbg !2144
  %148 = bitcast i8* %146 to i32*, !dbg !2146
  %149 = load i32, i32* %148, align 8, !dbg !2146
  %150 = lshr i32 %149, 4, !dbg !2146
  %151 = and i32 %150, 15, !dbg !2146
  %152 = tail call i8* @strEncoding(i32 %151) #7, !dbg !2147
  %153 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 0, !dbg !2149
  call void @llvm.lifetime.start.p0i8(i64 138, i8* nonnull %153) #6, !dbg !2149
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %153, i8 0, i64 138, i1 false), !dbg !2150
  %154 = load i32, i32* %148, align 8, !dbg !2151
  %155 = and i32 %154, 240, !dbg !2151
  %156 = icmp eq i32 %155, 144, !dbg !2152
  br i1 %156, label %157, label %212, !dbg !2153

; <label>:157:                                    ; preds = %144
  %158 = getelementptr inbounds i8, i8* %146, i64 8, !dbg !2156
  %159 = bitcast i8* %158 to %struct.quicklist**, !dbg !2156
  %160 = load %struct.quicklist*, %struct.quicklist** %159, align 8, !dbg !2156, !tbaa !228
  %161 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 3, !dbg !2158
  %162 = load i64, i64* %161, align 8, !dbg !2158, !tbaa !2159
  %163 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %153, i64 138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i64 %162) #7, !dbg !2161
  %164 = sext i32 %163 to i64, !dbg !2163
  %165 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 %164, !dbg !2163
  %166 = sub nsw i32 138, %163, !dbg !2164
  %167 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 2, !dbg !2165
  %168 = load i64, i64* %167, align 8, !dbg !2165, !tbaa !2166
  %169 = uitofp i64 %168 to double, !dbg !2167
  %170 = load i64, i64* %161, align 8, !dbg !2168, !tbaa !2159
  %171 = uitofp i64 %170 to double, !dbg !2169
  %172 = fdiv double %169, %171, !dbg !2170
  %173 = sext i32 %166 to i64, !dbg !2172
  %174 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %165, i64 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), double %172) #7, !dbg !2173
  %175 = sext i32 %174 to i64, !dbg !2174
  %176 = getelementptr inbounds i8, i8* %165, i64 %175, !dbg !2174
  %177 = sub nsw i32 %166, %174, !dbg !2175
  %178 = sext i32 %177 to i64, !dbg !2176
  %179 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 4, !dbg !2177
  %180 = load i32, i32* %179, align 8, !dbg !2177
  %181 = shl i32 %180, 16, !dbg !2177
  %182 = ashr exact i32 %181, 16, !dbg !2177
  %183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %176, i64 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i32 %182) #7, !dbg !2178
  %184 = sext i32 %183 to i64, !dbg !2179
  %185 = getelementptr inbounds i8, i8* %176, i64 %184, !dbg !2179
  %186 = sub nsw i32 %177, %183, !dbg !2180
  %187 = load i32, i32* %179, align 8, !dbg !2181
  %188 = icmp ugt i32 %187, 65535, !dbg !2182
  %189 = zext i1 %188 to i32, !dbg !2182
  %190 = sext i32 %186 to i64, !dbg !2184
  %191 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %185, i64 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i32 %189) #7, !dbg !2185
  %192 = sext i32 %191 to i64, !dbg !2186
  %193 = getelementptr inbounds i8, i8* %185, i64 %192, !dbg !2186
  %194 = sub nsw i32 %186, %191, !dbg !2187
  %195 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 0, !dbg !2189
  %196 = load %struct.quicklistNode*, %struct.quicklistNode** %195, align 8, !dbg !2191, !tbaa !1066
  %197 = icmp eq %struct.quicklistNode* %196, null, !dbg !2193
  br i1 %197, label %198, label %202, !dbg !2193

; <label>:198:                                    ; preds = %202, %157
  %199 = phi i64 [ 0, %157 ], [ %208, %202 ], !dbg !2194
  %200 = sext i32 %194 to i64, !dbg !2196
  %201 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %193, i64 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i64 0, i64 0), i64 %199) #7, !dbg !2197
  br label %212, !dbg !2198

; <label>:202:                                    ; preds = %157, %202
  %203 = phi %struct.quicklistNode* [ %210, %202 ], [ %196, %157 ]
  %204 = phi i64 [ %208, %202 ], [ 0, %157 ]
  %205 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %203, i64 0, i32 3, !dbg !2199
  %206 = load i32, i32* %205, align 8, !dbg !2199, !tbaa !2200
  %207 = zext i32 %206 to i64, !dbg !2202
  %208 = add i64 %204, %207, !dbg !2203
  %209 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %203, i64 0, i32 1, !dbg !2204
  %210 = load %struct.quicklistNode*, %struct.quicklistNode** %209, align 8, !dbg !2191, !tbaa !1066
  %211 = icmp eq %struct.quicklistNode* %210, null, !dbg !2193
  br i1 %211, label %198, label %202, !dbg !2193, !llvm.loop !2205

; <label>:212:                                    ; preds = %198, %144
  %213 = getelementptr inbounds i8, i8* %146, i64 4, !dbg !2207
  %214 = bitcast i8* %213 to i32*, !dbg !2207
  %215 = load i32, i32* %214, align 4, !dbg !2207, !tbaa !2208
  %216 = call i64 @rdbSavedObjectLen(%struct.redisObject* %147) #7, !dbg !2209
  %217 = load i32, i32* %148, align 8, !dbg !2210
  %218 = lshr i32 %217, 8, !dbg !2210
  %219 = call i64 @estimateObjectIdleTime(%struct.redisObject* %147) #7, !dbg !2211
  %220 = udiv i64 %219, 1000, !dbg !2212
  call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* %0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.55, i64 0, i64 0), i8* %146, i32 %215, i8* %152, i64 %216, i32 %218, i64 %220, i8* nonnull %153) #7, !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 138, i8* nonnull %153) #6, !dbg !2214
  br label %797, !dbg !2214

; <label>:221:                                    ; preds = %127
  %222 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #10, !dbg !2215
  %223 = icmp eq i32 %222, 0, !dbg !2215
  %224 = and i1 %83, %223, !dbg !2216
  br i1 %224, label %225, label %349, !dbg !2216

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2217
  %227 = load %struct.redisDb*, %struct.redisDb** %226, align 8, !dbg !2217, !tbaa !2131
  %228 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %227, i64 0, i32 0, !dbg !2219
  %229 = load %struct.dict*, %struct.dict** %228, align 8, !dbg !2219, !tbaa !1626
  %230 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2220
  %231 = load %struct.redisObject*, %struct.redisObject** %230, align 8, !dbg !2220, !tbaa !1066
  %232 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %231, i64 0, i32 2, !dbg !2221
  %233 = load i8*, i8** %232, align 8, !dbg !2221, !tbaa !228
  %234 = tail call %struct.dictEntry* @dictFind(%struct.dict* %229, i8* %233) #7, !dbg !2222
  %235 = icmp eq %struct.dictEntry* %234, null, !dbg !2224
  br i1 %235, label %236, label %238, !dbg !2225

; <label>:236:                                    ; preds = %225
  %237 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2226, !tbaa !2141
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %237) #7, !dbg !2228
  br label %797, !dbg !2229

; <label>:238:                                    ; preds = %225
  %239 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %234, i64 0, i32 1, i32 0, !dbg !2230
  %240 = bitcast i8** %239 to %struct.redisObject**, !dbg !2230
  %241 = load %struct.redisObject*, %struct.redisObject** %240, align 8, !dbg !2230, !tbaa !203
  %242 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %234, i64 0, i32 0, !dbg !2232
  %243 = load i8*, i8** %242, align 8, !dbg !2232, !tbaa !1185
  %244 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %241, i64 0, i32 0, !dbg !2234
  %245 = load i32, i32* %244, align 8, !dbg !2234
  %246 = and i32 %245, 15, !dbg !2234
  %247 = icmp eq i32 %246, 0, !dbg !2236
  br i1 %247, label %248, label %251, !dbg !2237

; <label>:248:                                    ; preds = %238
  %249 = lshr i32 %245, 4, !dbg !2238
  %250 = trunc i32 %249 to i4, !dbg !2238
  switch i4 %250, label %251 [
    i4 0, label %252
    i4 -8, label %252
  ], !dbg !2238

; <label>:251:                                    ; preds = %248, %238
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2239
  br label %797, !dbg !2241

; <label>:252:                                    ; preds = %248, %248
  %253 = getelementptr inbounds i8, i8* %243, i64 -1, !dbg !2245
  %254 = load i8, i8* %253, align 1, !dbg !2245, !tbaa !203
  %255 = trunc i8 %254 to i3, !dbg !2247
  switch i3 %255, label %295 [
    i3 0, label %256
    i3 1, label %259
    i3 2, label %267
    i3 3, label %277
    i3 -4, label %287
  ], !dbg !2247

; <label>:256:                                    ; preds = %252
  %257 = lshr i8 %254, 3, !dbg !2248
  %258 = zext i8 %257 to i64, !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br label %296, !dbg !2266

; <label>:259:                                    ; preds = %252
  %260 = getelementptr inbounds i8, i8* %243, i64 -3, !dbg !2267
  %261 = load i8, i8* %260, align 1, !dbg !2268, !tbaa !203
  %262 = zext i8 %261 to i64, !dbg !2267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %263 = getelementptr inbounds i8, i8* %243, i64 -2, !dbg !2270
  %264 = load i8, i8* %263, align 1, !dbg !2270, !tbaa !203
  %265 = zext i8 %264 to i64, !dbg !2271
  %266 = sub nsw i64 %265, %262, !dbg !2272
  br label %296

; <label>:267:                                    ; preds = %252
  %268 = getelementptr inbounds i8, i8* %243, i64 -5, !dbg !2273
  %269 = bitcast i8* %268 to i16*, !dbg !2274
  %270 = load i16, i16* %269, align 1, !dbg !2274, !tbaa !254
  %271 = zext i16 %270 to i64, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %272 = getelementptr inbounds i8, i8* %243, i64 -3, !dbg !2276
  %273 = bitcast i8* %272 to i16*, !dbg !2276
  %274 = load i16, i16* %273, align 1, !dbg !2276, !tbaa !254
  %275 = zext i16 %274 to i64, !dbg !2277
  %276 = sub nsw i64 %275, %271, !dbg !2278
  br label %296

; <label>:277:                                    ; preds = %252
  %278 = getelementptr inbounds i8, i8* %243, i64 -9, !dbg !2279
  %279 = bitcast i8* %278 to i32*, !dbg !2280
  %280 = load i32, i32* %279, align 1, !dbg !2280, !tbaa !259
  %281 = zext i32 %280 to i64, !dbg !2279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %282 = getelementptr inbounds i8, i8* %243, i64 -5, !dbg !2282
  %283 = bitcast i8* %282 to i32*, !dbg !2282
  %284 = load i32, i32* %283, align 1, !dbg !2282, !tbaa !259
  %285 = sub i32 %284, %280, !dbg !2283
  %286 = zext i32 %285 to i64, !dbg !2284
  br label %296

; <label>:287:                                    ; preds = %252
  %288 = getelementptr inbounds i8, i8* %243, i64 -17, !dbg !2285
  %289 = bitcast i8* %288 to i64*, !dbg !2286
  %290 = load i64, i64* %289, align 1, !dbg !2286, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %291 = getelementptr inbounds i8, i8* %243, i64 -9, !dbg !2288
  %292 = bitcast i8* %291 to i64*, !dbg !2288
  %293 = load i64, i64* %292, align 1, !dbg !2288, !tbaa !263
  %294 = sub i64 %293, %290, !dbg !2289
  br label %296

; <label>:295:                                    ; preds = %252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br label %296, !dbg !2266

; <label>:296:                                    ; preds = %295, %256, %259, %267, %277, %287
  %297 = phi i64 [ %290, %287 ], [ %281, %277 ], [ %271, %267 ], [ %262, %259 ], [ 0, %295 ], [ %258, %256 ]
  %298 = phi i64 [ %294, %287 ], [ %286, %277 ], [ %276, %267 ], [ %266, %259 ], [ 0, %295 ], [ 0, %256 ], !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  %299 = tail call i64 @sdsZmallocSize(i8* nonnull %243) #7, !dbg !2293
  %300 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %241, i64 0, i32 2, !dbg !2294
  %301 = load i8*, i8** %300, align 8, !dbg !2294, !tbaa !228
  %302 = getelementptr inbounds i8, i8* %301, i64 -1, !dbg !2297
  %303 = load i8, i8* %302, align 1, !dbg !2297, !tbaa !203
  %304 = trunc i8 %303 to i3, !dbg !2299
  switch i3 %304, label %344 [
    i3 0, label %305
    i3 1, label %308
    i3 2, label %316
    i3 3, label %326
    i3 -4, label %336
  ], !dbg !2299

; <label>:305:                                    ; preds = %296
  %306 = lshr i8 %303, 3, !dbg !2300
  %307 = zext i8 %306 to i64, !dbg !2300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  br label %345, !dbg !2305

; <label>:308:                                    ; preds = %296
  %309 = getelementptr inbounds i8, i8* %301, i64 -3, !dbg !2306
  %310 = load i8, i8* %309, align 1, !dbg !2307, !tbaa !203
  %311 = zext i8 %310 to i64, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  %312 = getelementptr inbounds i8, i8* %301, i64 -2, !dbg !2309
  %313 = load i8, i8* %312, align 1, !dbg !2309, !tbaa !203
  %314 = zext i8 %313 to i64, !dbg !2310
  %315 = sub nsw i64 %314, %311, !dbg !2311
  br label %345

; <label>:316:                                    ; preds = %296
  %317 = getelementptr inbounds i8, i8* %301, i64 -5, !dbg !2312
  %318 = bitcast i8* %317 to i16*, !dbg !2313
  %319 = load i16, i16* %318, align 1, !dbg !2313, !tbaa !254
  %320 = zext i16 %319 to i64, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  %321 = getelementptr inbounds i8, i8* %301, i64 -3, !dbg !2315
  %322 = bitcast i8* %321 to i16*, !dbg !2315
  %323 = load i16, i16* %322, align 1, !dbg !2315, !tbaa !254
  %324 = zext i16 %323 to i64, !dbg !2316
  %325 = sub nsw i64 %324, %320, !dbg !2317
  br label %345

; <label>:326:                                    ; preds = %296
  %327 = getelementptr inbounds i8, i8* %301, i64 -9, !dbg !2318
  %328 = bitcast i8* %327 to i32*, !dbg !2319
  %329 = load i32, i32* %328, align 1, !dbg !2319, !tbaa !259
  %330 = zext i32 %329 to i64, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  %331 = getelementptr inbounds i8, i8* %301, i64 -5, !dbg !2321
  %332 = bitcast i8* %331 to i32*, !dbg !2321
  %333 = load i32, i32* %332, align 1, !dbg !2321, !tbaa !259
  %334 = sub i32 %333, %329, !dbg !2322
  %335 = zext i32 %334 to i64, !dbg !2323
  br label %345

; <label>:336:                                    ; preds = %296
  %337 = getelementptr inbounds i8, i8* %301, i64 -17, !dbg !2324
  %338 = bitcast i8* %337 to i64*, !dbg !2325
  %339 = load i64, i64* %338, align 1, !dbg !2325, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  %340 = getelementptr inbounds i8, i8* %301, i64 -9, !dbg !2327
  %341 = bitcast i8* %340 to i64*, !dbg !2327
  %342 = load i64, i64* %341, align 1, !dbg !2327, !tbaa !263
  %343 = sub i64 %342, %339, !dbg !2328
  br label %345

; <label>:344:                                    ; preds = %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  br label %345, !dbg !2305

; <label>:345:                                    ; preds = %344, %305, %308, %316, %326, %336
  %346 = phi i64 [ %339, %336 ], [ %330, %326 ], [ %320, %316 ], [ %311, %308 ], [ 0, %344 ], [ %307, %305 ]
  %347 = phi i64 [ %343, %336 ], [ %335, %326 ], [ %325, %316 ], [ %315, %308 ], [ 0, %344 ], [ 0, %305 ], !dbg !2329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  %348 = tail call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %241) #7, !dbg !2331
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.58, i64 0, i64 0), i64 %297, i64 %298, i64 %299, i64 %346, i64 %347, i64 %348) #7, !dbg !2332
  br label %797

; <label>:349:                                    ; preds = %221
  %350 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !2333
  %351 = icmp eq i32 %350, 0, !dbg !2333
  %352 = and i1 %83, %351, !dbg !2334
  br i1 %352, label %353, label %368, !dbg !2334

; <label>:353:                                    ; preds = %349
  %354 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2335
  %355 = load %struct.redisObject*, %struct.redisObject** %354, align 8, !dbg !2335, !tbaa !1066
  %356 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2337, !tbaa !2141
  %357 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %355, %struct.redisObject* %356) #7, !dbg !2338
  %358 = icmp eq %struct.redisObject* %357, null, !dbg !2340
  br i1 %358, label %797, label %359, !dbg !2341

; <label>:359:                                    ; preds = %353
  %360 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %357, i64 0, i32 0, !dbg !2342
  %361 = load i32, i32* %360, align 8, !dbg !2342
  %362 = and i32 %361, 240, !dbg !2342
  %363 = icmp eq i32 %362, 80, !dbg !2344
  br i1 %363, label %365, label %364, !dbg !2345

; <label>:364:                                    ; preds = %359
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2346
  br label %797, !dbg !2348

; <label>:365:                                    ; preds = %359
  %366 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %357, i64 0, i32 2, !dbg !2349
  %367 = load i8*, i8** %366, align 8, !dbg !2349, !tbaa !228
  tail call void @ziplistRepr(i8* %367) #7, !dbg !2351
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !2352
  br label %797

; <label>:368:                                    ; preds = %349
  %369 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !2353
  %370 = icmp eq i32 %369, 0, !dbg !2353
  %371 = add i32 %16, -3, !dbg !2354
  %372 = icmp ult i32 %371, 3, !dbg !2354
  %373 = and i1 %372, %370, !dbg !2355
  br i1 %373, label %374, label %450, !dbg !2355

; <label>:374:                                    ; preds = %368
  %375 = bitcast i64* %6 to i8*, !dbg !2356
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %375) #6, !dbg !2356
  %376 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !2357
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %376) #6, !dbg !2357
  %377 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2359
  %378 = load %struct.redisObject*, %struct.redisObject** %377, align 8, !dbg !2359, !tbaa !1066
  %379 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %378, i64* nonnull %6, i8* null) #7, !dbg !2362
  %380 = icmp eq i32 %379, 0, !dbg !2363
  br i1 %380, label %381, label %449, !dbg !2364

; <label>:381:                                    ; preds = %374
  %382 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2365
  %383 = load %struct.redisDb*, %struct.redisDb** %382, align 8, !dbg !2365, !tbaa !2131
  %384 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %383, i64 0, i32 0, !dbg !2366
  %385 = load %struct.dict*, %struct.dict** %384, align 8, !dbg !2366, !tbaa !1626
  %386 = load i64, i64* %6, align 8, !dbg !2367, !tbaa !263
  %387 = call i32 @dictExpand(%struct.dict* %385, i64 %386) #7, !dbg !2368
  %388 = load i64, i64* %6, align 8, !dbg !2370, !tbaa !263
  %389 = icmp sgt i64 %388, 0, !dbg !2371
  br i1 %389, label %390, label %447, !dbg !2372

; <label>:390:                                    ; preds = %381
  %391 = bitcast i64* %8 to i8*
  br label %392, !dbg !2372

; <label>:392:                                    ; preds = %390, %443
  %393 = phi i64 [ 0, %390 ], [ %444, %443 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %391) #6, !dbg !2373
  store i64 0, i64* %8, align 8, !dbg !2374, !tbaa !263
  %394 = load i32, i32* %15, align 8, !dbg !2375, !tbaa !1986
  %395 = icmp eq i32 %394, 3, !dbg !2376
  br i1 %395, label %402, label %396, !dbg !2377

; <label>:396:                                    ; preds = %392
  %397 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2378, !tbaa !1992
  %398 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %397, i64 3, !dbg !2379
  %399 = load %struct.redisObject*, %struct.redisObject** %398, align 8, !dbg !2379, !tbaa !1066
  %400 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %399, i64 0, i32 2, !dbg !2380
  %401 = load i8*, i8** %400, align 8, !dbg !2380, !tbaa !228
  br label %402, !dbg !2377

; <label>:402:                                    ; preds = %392, %396
  %403 = phi i8* [ %401, %396 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), %392 ], !dbg !2377
  %404 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %376, i64 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %403, i64 %393) #7, !dbg !2381
  %405 = call i64 @strlen(i8* nonnull %376) #7, !dbg !2382
  %406 = call %struct.redisObject* @createStringObject(i8* nonnull %376, i64 %405) #7, !dbg !2383
  %407 = load i32, i32* %15, align 8, !dbg !2385, !tbaa !1986
  %408 = icmp eq i32 %407, 5, !dbg !2387
  br i1 %408, label %409, label %415, !dbg !2388

; <label>:409:                                    ; preds = %402
  %410 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2389, !tbaa !1992
  %411 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %410, i64 4, !dbg !2391
  %412 = load %struct.redisObject*, %struct.redisObject** %411, align 8, !dbg !2391, !tbaa !1066
  %413 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %412, i64* nonnull %8, i8* null) #7, !dbg !2392
  %414 = icmp eq i32 %413, 0, !dbg !2393
  br i1 %414, label %415, label %442, !dbg !2394

; <label>:415:                                    ; preds = %409, %402
  %416 = load %struct.redisDb*, %struct.redisDb** %382, align 8, !dbg !2395, !tbaa !2131
  %417 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %416, %struct.redisObject* %406) #7, !dbg !2397
  %418 = icmp eq %struct.redisObject* %417, null, !dbg !2398
  br i1 %418, label %420, label %419, !dbg !2399

; <label>:419:                                    ; preds = %415
  call void @decrRefCount(%struct.redisObject* %406) #7, !dbg !2400
  br label %443, !dbg !2402

; <label>:420:                                    ; preds = %415
  %421 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %376, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i64 %393) #7, !dbg !2403
  %422 = load i64, i64* %8, align 8, !dbg !2404, !tbaa !263
  %423 = icmp eq i64 %422, 0, !dbg !2405
  %424 = call i64 @strlen(i8* nonnull %376) #7, !dbg !2406
  br i1 %423, label %425, label %427, !dbg !2407

; <label>:425:                                    ; preds = %420
  %426 = call %struct.redisObject* @createStringObject(i8* nonnull %376, i64 %424) #7, !dbg !2408
  br label %438, !dbg !2410

; <label>:427:                                    ; preds = %420
  %428 = load i64, i64* %8, align 8, !dbg !2411, !tbaa !263
  %429 = call %struct.redisObject* @createStringObject(i8* null, i64 %428) #7, !dbg !2412
  %430 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %429, i64 0, i32 2, !dbg !2413
  %431 = load i8*, i8** %430, align 8, !dbg !2413, !tbaa !228
  %432 = load i64, i64* %8, align 8, !dbg !2414, !tbaa !263
  %433 = shl i64 %424, 32, !dbg !2415
  %434 = ashr exact i64 %433, 32, !dbg !2415
  %435 = icmp sgt i64 %432, %434, !dbg !2416
  %436 = select i1 %435, i64 %434, i64 %432, !dbg !2414
  %437 = call i8* @memcpy(i8* %431, i8* nonnull %376, i64 %436) #7, !dbg !2417
  br label %438

; <label>:438:                                    ; preds = %427, %425
  %439 = phi %struct.redisObject* [ %426, %425 ], [ %429, %427 ], !dbg !2406
  %440 = load %struct.redisDb*, %struct.redisDb** %382, align 8, !dbg !2418, !tbaa !2131
  call void @dbAdd(%struct.redisDb* %440, %struct.redisObject* %406, %struct.redisObject* %439) #7, !dbg !2419
  %441 = load %struct.redisDb*, %struct.redisDb** %382, align 8, !dbg !2420, !tbaa !2131
  call void @signalModifiedKey(%struct.redisDb* %441, %struct.redisObject* %406) #7, !dbg !2421
  call void @decrRefCount(%struct.redisObject* %406) #7, !dbg !2422
  br label %443, !dbg !2423

; <label>:442:                                    ; preds = %409
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %391) #6, !dbg !2423
  br label %449

; <label>:443:                                    ; preds = %419, %438
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %391) #6, !dbg !2423
  %444 = add nuw nsw i64 %393, 1, !dbg !2424
  %445 = load i64, i64* %6, align 8, !dbg !2370, !tbaa !263
  %446 = icmp slt i64 %444, %445, !dbg !2371
  br i1 %446, label %392, label %447, !dbg !2372, !llvm.loop !2425

; <label>:447:                                    ; preds = %443, %381
  %448 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2427, !tbaa !2048
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %448) #7, !dbg !2428
  br label %449, !dbg !2429

; <label>:449:                                    ; preds = %442, %374, %447
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %376) #6, !dbg !2429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %375) #6, !dbg !2429
  br label %797

; <label>:450:                                    ; preds = %368
  %451 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !2430
  %452 = icmp ne i32 %451, 0, !dbg !2430
  %453 = xor i1 %17, true, !dbg !2431
  %454 = or i1 %452, %453, !dbg !2431
  br i1 %454, label %537, label %455, !dbg !2431

; <label>:455:                                    ; preds = %450
  %456 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %456) #6, !dbg !2432
  %457 = tail call i8* @sdsempty() #7, !dbg !2434
  call void @computeDatasetDigest(i8* nonnull %456) #8, !dbg !2436
  %458 = load i8, i8* %456, align 16, !dbg !2438, !tbaa !203
  %459 = zext i8 %458 to i32, !dbg !2438
  %460 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %457, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %459) #7, !dbg !2440
  %461 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 1, !dbg !2438
  %462 = load i8, i8* %461, align 1, !dbg !2438, !tbaa !203
  %463 = zext i8 %462 to i32, !dbg !2438
  %464 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %460, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %463) #7, !dbg !2440
  %465 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 2, !dbg !2438
  %466 = load i8, i8* %465, align 2, !dbg !2438, !tbaa !203
  %467 = zext i8 %466 to i32, !dbg !2438
  %468 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %464, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %467) #7, !dbg !2440
  %469 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 3, !dbg !2438
  %470 = load i8, i8* %469, align 1, !dbg !2438, !tbaa !203
  %471 = zext i8 %470 to i32, !dbg !2438
  %472 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %468, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %471) #7, !dbg !2440
  %473 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 4, !dbg !2438
  %474 = load i8, i8* %473, align 4, !dbg !2438, !tbaa !203
  %475 = zext i8 %474 to i32, !dbg !2438
  %476 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %472, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %475) #7, !dbg !2440
  %477 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 5, !dbg !2438
  %478 = load i8, i8* %477, align 1, !dbg !2438, !tbaa !203
  %479 = zext i8 %478 to i32, !dbg !2438
  %480 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %476, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %479) #7, !dbg !2440
  %481 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 6, !dbg !2438
  %482 = load i8, i8* %481, align 2, !dbg !2438, !tbaa !203
  %483 = zext i8 %482 to i32, !dbg !2438
  %484 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %480, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %483) #7, !dbg !2440
  %485 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 7, !dbg !2438
  %486 = load i8, i8* %485, align 1, !dbg !2438, !tbaa !203
  %487 = zext i8 %486 to i32, !dbg !2438
  %488 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %484, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %487) #7, !dbg !2440
  %489 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 8, !dbg !2438
  %490 = load i8, i8* %489, align 8, !dbg !2438, !tbaa !203
  %491 = zext i8 %490 to i32, !dbg !2438
  %492 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %488, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %491) #7, !dbg !2440
  %493 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 9, !dbg !2438
  %494 = load i8, i8* %493, align 1, !dbg !2438, !tbaa !203
  %495 = zext i8 %494 to i32, !dbg !2438
  %496 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %495) #7, !dbg !2440
  %497 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 10, !dbg !2438
  %498 = load i8, i8* %497, align 2, !dbg !2438, !tbaa !203
  %499 = zext i8 %498 to i32, !dbg !2438
  %500 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %496, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %499) #7, !dbg !2440
  %501 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 11, !dbg !2438
  %502 = load i8, i8* %501, align 1, !dbg !2438, !tbaa !203
  %503 = zext i8 %502 to i32, !dbg !2438
  %504 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %500, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %503) #7, !dbg !2440
  %505 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 12, !dbg !2438
  %506 = load i8, i8* %505, align 4, !dbg !2438, !tbaa !203
  %507 = zext i8 %506 to i32, !dbg !2438
  %508 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %504, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %507) #7, !dbg !2440
  %509 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 13, !dbg !2438
  %510 = load i8, i8* %509, align 1, !dbg !2438, !tbaa !203
  %511 = zext i8 %510 to i32, !dbg !2438
  %512 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %511) #7, !dbg !2440
  %513 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 14, !dbg !2438
  %514 = load i8, i8* %513, align 2, !dbg !2438, !tbaa !203
  %515 = zext i8 %514 to i32, !dbg !2438
  %516 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %515) #7, !dbg !2440
  %517 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 15, !dbg !2438
  %518 = load i8, i8* %517, align 1, !dbg !2438, !tbaa !203
  %519 = zext i8 %518 to i32, !dbg !2438
  %520 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %516, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %519) #7, !dbg !2440
  %521 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 16, !dbg !2438
  %522 = load i8, i8* %521, align 16, !dbg !2438, !tbaa !203
  %523 = zext i8 %522 to i32, !dbg !2438
  %524 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %520, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %523) #7, !dbg !2440
  %525 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 17, !dbg !2438
  %526 = load i8, i8* %525, align 1, !dbg !2438, !tbaa !203
  %527 = zext i8 %526 to i32, !dbg !2438
  %528 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %524, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %527) #7, !dbg !2440
  %529 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 18, !dbg !2438
  %530 = load i8, i8* %529, align 2, !dbg !2438, !tbaa !203
  %531 = zext i8 %530 to i32, !dbg !2438
  %532 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %528, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %531) #7, !dbg !2440
  %533 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 19, !dbg !2438
  %534 = load i8, i8* %533, align 1, !dbg !2438, !tbaa !203
  %535 = zext i8 %534 to i32, !dbg !2438
  %536 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %532, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %535) #7, !dbg !2440
  call void @addReplyStatus(%struct.client* nonnull %0, i8* %536) #7, !dbg !2441
  call void @sdsfree(i8* %536) #7, !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %456) #6, !dbg !2443
  br label %797, !dbg !2444

; <label>:537:                                    ; preds = %450
  %538 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #10, !dbg !2445
  %539 = icmp eq i32 %538, 0, !dbg !2445
  %540 = icmp sgt i32 %16, 1, !dbg !2446
  %541 = and i1 %540, %539, !dbg !2447
  br i1 %541, label %542, label %649, !dbg !2447

; <label>:542:                                    ; preds = %537
  %543 = add nsw i32 %16, -2, !dbg !2448
  %544 = sext i32 %543 to i64, !dbg !2449
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %544) #7, !dbg !2450
  %545 = load i32, i32* %15, align 8, !dbg !2452, !tbaa !1986
  %546 = icmp sgt i32 %545, 2, !dbg !2453
  br i1 %546, label %547, label %797, !dbg !2454

; <label>:547:                                    ; preds = %542
  %548 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %549 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %550 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 1
  %551 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2
  %552 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3
  %553 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 4
  %554 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 5
  %555 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 6
  %556 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 7
  %557 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 8
  %558 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 9
  %559 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 10
  %560 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 11
  %561 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 12
  %562 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 13
  %563 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 14
  %564 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 15
  %565 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 16
  %566 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 17
  %567 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 18
  %568 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 19
  br label %569, !dbg !2454

; <label>:569:                                    ; preds = %547, %583
  %570 = phi i64 [ 2, %547 ], [ %645, %583 ]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %548) #6, !dbg !2455
  %571 = call i8* @memset(i8* nonnull %548, i32 0, i64 20) #7, !dbg !2457
  %572 = load %struct.redisDb*, %struct.redisDb** %549, align 8, !dbg !2458, !tbaa !2131
  %573 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2459, !tbaa !1992
  %574 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %573, i64 %570, !dbg !2460
  %575 = load %struct.redisObject*, %struct.redisObject** %574, align 8, !dbg !2460, !tbaa !1066
  %576 = call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %572, %struct.redisObject* %575, i32 1) #7, !dbg !2461
  %577 = icmp eq %struct.redisObject* %576, null, !dbg !2463
  br i1 %577, label %583, label %578, !dbg !2465

; <label>:578:                                    ; preds = %569
  %579 = load %struct.redisDb*, %struct.redisDb** %549, align 8, !dbg !2466, !tbaa !2131
  %580 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2467, !tbaa !1992
  %581 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %580, i64 %570, !dbg !2468
  %582 = load %struct.redisObject*, %struct.redisObject** %581, align 8, !dbg !2468, !tbaa !1066
  call void @xorObjectDigest(%struct.redisDb* %579, %struct.redisObject* %582, i8* nonnull %548, %struct.redisObject* nonnull %576) #8, !dbg !2469
  br label %583, !dbg !2469

; <label>:583:                                    ; preds = %569, %578
  %584 = call i8* @sdsempty() #7, !dbg !2470
  %585 = load i8, i8* %548, align 16, !dbg !2473, !tbaa !203
  %586 = zext i8 %585 to i32, !dbg !2473
  %587 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %584, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %586) #7, !dbg !2475
  %588 = load i8, i8* %550, align 1, !dbg !2473, !tbaa !203
  %589 = zext i8 %588 to i32, !dbg !2473
  %590 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %587, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %589) #7, !dbg !2475
  %591 = load i8, i8* %551, align 2, !dbg !2473, !tbaa !203
  %592 = zext i8 %591 to i32, !dbg !2473
  %593 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %590, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %592) #7, !dbg !2475
  %594 = load i8, i8* %552, align 1, !dbg !2473, !tbaa !203
  %595 = zext i8 %594 to i32, !dbg !2473
  %596 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %593, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %595) #7, !dbg !2475
  %597 = load i8, i8* %553, align 4, !dbg !2473, !tbaa !203
  %598 = zext i8 %597 to i32, !dbg !2473
  %599 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %596, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %598) #7, !dbg !2475
  %600 = load i8, i8* %554, align 1, !dbg !2473, !tbaa !203
  %601 = zext i8 %600 to i32, !dbg !2473
  %602 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %599, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %601) #7, !dbg !2475
  %603 = load i8, i8* %555, align 2, !dbg !2473, !tbaa !203
  %604 = zext i8 %603 to i32, !dbg !2473
  %605 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %602, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %604) #7, !dbg !2475
  %606 = load i8, i8* %556, align 1, !dbg !2473, !tbaa !203
  %607 = zext i8 %606 to i32, !dbg !2473
  %608 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %605, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %607) #7, !dbg !2475
  %609 = load i8, i8* %557, align 8, !dbg !2473, !tbaa !203
  %610 = zext i8 %609 to i32, !dbg !2473
  %611 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %608, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %610) #7, !dbg !2475
  %612 = load i8, i8* %558, align 1, !dbg !2473, !tbaa !203
  %613 = zext i8 %612 to i32, !dbg !2473
  %614 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %611, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %613) #7, !dbg !2475
  %615 = load i8, i8* %559, align 2, !dbg !2473, !tbaa !203
  %616 = zext i8 %615 to i32, !dbg !2473
  %617 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %614, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %616) #7, !dbg !2475
  %618 = load i8, i8* %560, align 1, !dbg !2473, !tbaa !203
  %619 = zext i8 %618 to i32, !dbg !2473
  %620 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %617, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %619) #7, !dbg !2475
  %621 = load i8, i8* %561, align 4, !dbg !2473, !tbaa !203
  %622 = zext i8 %621 to i32, !dbg !2473
  %623 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %620, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %622) #7, !dbg !2475
  %624 = load i8, i8* %562, align 1, !dbg !2473, !tbaa !203
  %625 = zext i8 %624 to i32, !dbg !2473
  %626 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %623, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %625) #7, !dbg !2475
  %627 = load i8, i8* %563, align 2, !dbg !2473, !tbaa !203
  %628 = zext i8 %627 to i32, !dbg !2473
  %629 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %626, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %628) #7, !dbg !2475
  %630 = load i8, i8* %564, align 1, !dbg !2473, !tbaa !203
  %631 = zext i8 %630 to i32, !dbg !2473
  %632 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %629, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %631) #7, !dbg !2475
  %633 = load i8, i8* %565, align 16, !dbg !2473, !tbaa !203
  %634 = zext i8 %633 to i32, !dbg !2473
  %635 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %632, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %634) #7, !dbg !2475
  %636 = load i8, i8* %566, align 1, !dbg !2473, !tbaa !203
  %637 = zext i8 %636 to i32, !dbg !2473
  %638 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %635, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %637) #7, !dbg !2475
  %639 = load i8, i8* %567, align 2, !dbg !2473, !tbaa !203
  %640 = zext i8 %639 to i32, !dbg !2473
  %641 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %638, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %640) #7, !dbg !2475
  %642 = load i8, i8* %568, align 1, !dbg !2473, !tbaa !203
  %643 = zext i8 %642 to i32, !dbg !2473
  %644 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %641, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %643) #7, !dbg !2475
  call void @addReplyStatus(%struct.client* nonnull %0, i8* %644) #7, !dbg !2476
  call void @sdsfree(i8* %644) #7, !dbg !2477
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %548) #6, !dbg !2478
  %645 = add nuw nsw i64 %570, 1, !dbg !2479
  %646 = load i32, i32* %15, align 8, !dbg !2452, !tbaa !1986
  %647 = sext i32 %646 to i64, !dbg !2453
  %648 = icmp slt i64 %645, %647, !dbg !2453
  br i1 %648, label %569, label %797, !dbg !2454, !llvm.loop !2480

; <label>:649:                                    ; preds = %537
  %650 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0)) #10, !dbg !2482
  %651 = icmp eq i32 %650, 0, !dbg !2482
  %652 = and i1 %83, %651, !dbg !2483
  br i1 %652, label %653, label %669, !dbg !2483

; <label>:653:                                    ; preds = %649
  %654 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2484
  %655 = load %struct.redisObject*, %struct.redisObject** %654, align 8, !dbg !2484, !tbaa !1066
  %656 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %655, i64 0, i32 2, !dbg !2485
  %657 = load i8*, i8** %656, align 8, !dbg !2485, !tbaa !228
  %658 = tail call double @strtod(i8* %657, i8** null) #7, !dbg !2486
  %659 = fmul double %658, 1.000000e+06, !dbg !2488
  %660 = fptosi double %659 to i64, !dbg !2489
  %661 = bitcast %struct.timespec* %11 to i8*, !dbg !2491
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %661) #6, !dbg !2491
  %662 = sdiv i64 %660, 1000000, !dbg !2492
  %663 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 0, !dbg !2493
  store i64 %662, i64* %663, align 8, !dbg !2494, !tbaa !2495
  %664 = srem i64 %660, 1000000, !dbg !2497
  %665 = mul nsw i64 %664, 1000, !dbg !2498
  %666 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1, !dbg !2499
  store i64 %665, i64* %666, align 8, !dbg !2500, !tbaa !2501
  %667 = call i32 @nanosleep(%struct.timespec* nonnull %11, %struct.timespec* null) #7, !dbg !2503
  %668 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2504, !tbaa !2048
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %668) #7, !dbg !2505
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %661) #6, !dbg !2506
  br label %797, !dbg !2507

; <label>:669:                                    ; preds = %649
  %670 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !2508
  %671 = icmp eq i32 %670, 0, !dbg !2508
  %672 = and i1 %83, %671, !dbg !2509
  br i1 %672, label %673, label %680, !dbg !2509

; <label>:673:                                    ; preds = %669
  %674 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2510
  %675 = load %struct.redisObject*, %struct.redisObject** %674, align 8, !dbg !2510, !tbaa !1066
  %676 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %675, i64 0, i32 2, !dbg !2512
  %677 = load i8*, i8** %676, align 8, !dbg !2512, !tbaa !228
  %678 = tail call i32 @atoi(i8* %677) #7, !dbg !2513
  store i32 %678, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 103), align 4, !dbg !2514, !tbaa !2515
  %679 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2516, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %679) #7, !dbg !2517
  br label %797, !dbg !2518

; <label>:680:                                    ; preds = %669
  %681 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2519
  %682 = icmp eq i32 %681, 0, !dbg !2519
  %683 = and i1 %83, %682, !dbg !2520
  br i1 %683, label %684, label %691, !dbg !2520

; <label>:684:                                    ; preds = %680
  %685 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2521
  %686 = load %struct.redisObject*, %struct.redisObject** %685, align 8, !dbg !2521, !tbaa !1066
  %687 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %686, i64 0, i32 2, !dbg !2523
  %688 = load i8*, i8** %687, align 8, !dbg !2523, !tbaa !228
  %689 = tail call i32 @atoi(i8* %688) #7, !dbg !2524
  store i32 %689, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2525, !tbaa !2526
  %690 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2527, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %690) #7, !dbg !2528
  br label %797, !dbg !2529

; <label>:691:                                    ; preds = %680
  %692 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #10, !dbg !2530
  %693 = icmp eq i32 %692, 0, !dbg !2530
  %694 = and i1 %83, %693, !dbg !2531
  br i1 %694, label %695, label %705, !dbg !2531

; <label>:695:                                    ; preds = %691
  %696 = tail call i8* @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), i64 1) #7, !dbg !2532
  %697 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2534, !tbaa !1992
  %698 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %697, i64 2, !dbg !2535
  %699 = load %struct.redisObject*, %struct.redisObject** %698, align 8, !dbg !2535, !tbaa !1066
  %700 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %699, i64 0, i32 2, !dbg !2536
  %701 = load i8*, i8** %700, align 8, !dbg !2536, !tbaa !228
  %702 = tail call i8* @sdscatsds(i8* %696, i8* %701) #7, !dbg !2537
  %703 = tail call i8* @sdsmapchars(i8* %702, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2) #7, !dbg !2538
  %704 = tail call i8* @sdscatlen(i8* %703, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i64 2) #7, !dbg !2539
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %704) #7, !dbg !2540
  br label %797, !dbg !2541

; <label>:705:                                    ; preds = %691
  %706 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2542
  %707 = icmp ne i32 %706, 0, !dbg !2542
  %708 = or i1 %707, %453, !dbg !2543
  br i1 %708, label %719, label %709, !dbg !2543

; <label>:709:                                    ; preds = %705
  %710 = tail call i8* @sdsempty() #7, !dbg !2544
  %711 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %710, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i32 64) #7, !dbg !2546
  %712 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %711, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i32 16) #7, !dbg !2547
  %713 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %712, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i32 24) #7, !dbg !2548
  %714 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %713, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i32 1) #7, !dbg !2549
  %715 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %714, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 3) #7, !dbg !2550
  %716 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %715, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i32 5) #7, !dbg !2551
  %717 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %716, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i32 9) #7, !dbg !2552
  %718 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %717, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i64 0, i64 0), i32 17) #7, !dbg !2553
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %718) #7, !dbg !2554
  br label %797, !dbg !2555

; <label>:719:                                    ; preds = %705
  %720 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !2556
  %721 = icmp eq i32 %720, 0, !dbg !2556
  %722 = and i1 %83, %721, !dbg !2557
  br i1 %722, label %723, label %754, !dbg !2557

; <label>:723:                                    ; preds = %719
  %724 = bitcast i64* %12 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %724) #6, !dbg !2558
  %725 = tail call i8* @sdsempty() #7, !dbg !2559
  %726 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %726) #6, !dbg !2561
  %727 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2563, !tbaa !1992
  %728 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %727, i64 2, !dbg !2565
  %729 = load %struct.redisObject*, %struct.redisObject** %728, align 8, !dbg !2565, !tbaa !1066
  %730 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %729, i64* nonnull %12, i8* null) #7, !dbg !2567
  %731 = icmp eq i32 %730, 0, !dbg !2568
  br i1 %731, label %732, label %753, !dbg !2569

; <label>:732:                                    ; preds = %723
  %733 = load i64, i64* %12, align 8, !dbg !2570, !tbaa !263
  %734 = icmp slt i64 %733, 0, !dbg !2572
  br i1 %734, label %739, label %735, !dbg !2573

; <label>:735:                                    ; preds = %732
  %736 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2574, !tbaa !1617
  %737 = sext i32 %736 to i64, !dbg !2575
  %738 = icmp slt i64 %733, %737, !dbg !2576
  br i1 %738, label %740, label %739, !dbg !2577

; <label>:739:                                    ; preds = %735, %732
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0)) #7, !dbg !2578
  br label %753, !dbg !2580

; <label>:740:                                    ; preds = %735
  %741 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %725, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i64 0, i64 0)) #7, !dbg !2581
  %742 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2582, !tbaa !1621
  %743 = load i64, i64* %12, align 8, !dbg !2583, !tbaa !263
  %744 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %742, i64 %743, i32 0, !dbg !2584
  %745 = load %struct.dict*, %struct.dict** %744, align 8, !dbg !2584, !tbaa !1626
  call void @dictGetStats(i8* nonnull %726, i64 4096, %struct.dict* %745) #7, !dbg !2585
  %746 = call i8* @sdscat(i8* %741, i8* nonnull %726) #7, !dbg !2586
  %747 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %746, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0)) #7, !dbg !2587
  %748 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2588, !tbaa !1621
  %749 = load i64, i64* %12, align 8, !dbg !2589, !tbaa !263
  %750 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %748, i64 %749, i32 1, !dbg !2590
  %751 = load %struct.dict*, %struct.dict** %750, align 8, !dbg !2590, !tbaa !2591
  call void @dictGetStats(i8* nonnull %726, i64 4096, %struct.dict* %751) #7, !dbg !2592
  %752 = call i8* @sdscat(i8* %747, i8* nonnull %726) #7, !dbg !2593
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %752) #7, !dbg !2594
  br label %753, !dbg !2595

; <label>:753:                                    ; preds = %723, %740, %739
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %726) #6, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %724) #6, !dbg !2595
  br label %797

; <label>:754:                                    ; preds = %719
  %755 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0)) #10, !dbg !2596
  %756 = icmp eq i32 %755, 0, !dbg !2596
  %757 = and i1 %83, %756, !dbg !2597
  br i1 %757, label %758, label %784, !dbg !2597

; <label>:758:                                    ; preds = %754
  %759 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2599
  %760 = load %struct.redisObject*, %struct.redisObject** %759, align 8, !dbg !2599, !tbaa !1066
  %761 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2601, !tbaa !2141
  %762 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %760, %struct.redisObject* %761) #7, !dbg !2602
  %763 = icmp eq %struct.redisObject* %762, null, !dbg !2604
  br i1 %763, label %797, label %764, !dbg !2605

; <label>:764:                                    ; preds = %758
  %765 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %762, i64 0, i32 0, !dbg !2606
  %766 = load i32, i32* %765, align 8, !dbg !2606
  %767 = lshr i32 %766, 4, !dbg !2606
  %768 = trunc i32 %767 to i4, !dbg !2607
  switch i4 %768, label %781 [
    i4 7, label %769
    i4 2, label %774
  ], !dbg !2607

; <label>:769:                                    ; preds = %764
  %770 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %762, i64 0, i32 2, !dbg !2608
  %771 = bitcast i8** %770 to %struct.zset**, !dbg !2608
  %772 = load %struct.zset*, %struct.zset** %771, align 8, !dbg !2608, !tbaa !228
  %773 = getelementptr inbounds %struct.zset, %struct.zset* %772, i64 0, i32 0, !dbg !2610
  br label %777, !dbg !2611

; <label>:774:                                    ; preds = %764
  %775 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %762, i64 0, i32 2, !dbg !2612
  %776 = bitcast i8** %775 to %struct.dict**, !dbg !2612
  br label %777, !dbg !2613

; <label>:777:                                    ; preds = %774, %769
  %778 = phi %struct.dict** [ %776, %774 ], [ %773, %769 ]
  %779 = load %struct.dict*, %struct.dict** %778, align 8, !dbg !2614, !tbaa !1066
  %780 = icmp eq %struct.dict* %779, null, !dbg !2615
  br i1 %780, label %781, label %782, !dbg !2616

; <label>:781:                                    ; preds = %764, %777
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.90, i64 0, i64 0)) #7, !dbg !2617
  br label %797, !dbg !2619

; <label>:782:                                    ; preds = %777
  %783 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0, !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %783) #6, !dbg !2620
  call void @dictGetStats(i8* nonnull %783, i64 4096, %struct.dict* nonnull %779) #7, !dbg !2622
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* nonnull %783) #7, !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %783) #6, !dbg !2624
  br label %797

; <label>:784:                                    ; preds = %754
  %785 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0)) #10, !dbg !2625
  %786 = icmp ne i32 %785, 0, !dbg !2625
  %787 = or i1 %786, %453, !dbg !2627
  br i1 %787, label %790, label %788, !dbg !2627

; <label>:788:                                    ; preds = %784
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0)) #7, !dbg !2628
  tail call void @changeReplicationId() #7, !dbg !2630
  tail call void @clearReplicationId2() #7, !dbg !2631
  %789 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2632, !tbaa !2048
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %789) #7, !dbg !2633
  br label %797, !dbg !2634

; <label>:790:                                    ; preds = %784
  %791 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0)) #10, !dbg !2635
  %792 = icmp ne i32 %791, 0, !dbg !2635
  %793 = or i1 %792, %453, !dbg !2637
  br i1 %793, label %796, label %794, !dbg !2637

; <label>:794:                                    ; preds = %790
  %795 = tail call i32 @stringmatchlen_fuzz_test() #7, !dbg !2638
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0)) #7, !dbg !2640
  br label %797

; <label>:796:                                    ; preds = %790
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !2641
  br label %797, !dbg !2643

; <label>:797:                                    ; preds = %583, %542, %758, %782, %781, %353, %365, %364, %236, %345, %251, %142, %212, %123, %125, %753, %449, %110, %33, %455, %653, %684, %709, %794, %788, %695, %673, %85, %72, %796, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  ret void, !dbg !2644
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @restartServer(i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssertWithInfo(%struct.client* readonly, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !2645 {
  %6 = icmp eq %struct.client* %0, null, !dbg !2663
  br i1 %6, label %8, label %7, !dbg !2665

; <label>:7:                                      ; preds = %5
  tail call void @_serverAssertPrintClientInfo(%struct.client* nonnull %0) #8, !dbg !2666
  br label %8, !dbg !2666

; <label>:8:                                      ; preds = %5, %7
  %9 = icmp eq %struct.redisObject* %1, null, !dbg !2667
  br i1 %9, label %15, label %10, !dbg !2669

; <label>:10:                                     ; preds = %8
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2677, !tbaa !1525
  %12 = icmp eq i32 %11, 0, !dbg !2679
  br i1 %12, label %13, label %14, !dbg !2680

; <label>:13:                                     ; preds = %10
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2681
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2682, !tbaa !1525
  br label %14, !dbg !2683

; <label>:14:                                     ; preds = %10, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2685
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* nonnull %1) #7, !dbg !2686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  br label %15, !dbg !2688

; <label>:15:                                     ; preds = %8, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2693, !tbaa !1525
  %17 = icmp eq i32 %16, 0, !dbg !2695
  br i1 %17, label %18, label %19, !dbg !2696

; <label>:18:                                     ; preds = %15
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2697
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2698, !tbaa !1525
  br label %19, !dbg !2699

; <label>:19:                                     ; preds = %15, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2700
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2701
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %3, i32 %4, i8* %2) #7, !dbg !2702
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !2703, !tbaa !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  ret void, !dbg !2705
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rdbSave(i8*, %struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @emptyDb(i32, i32, void (i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @protectClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rdbLoad(i8*, %struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @unprotectClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @flushAppendOnlyFile(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @loadAppendOnlyFile(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strEncoding(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @addReplyStatusFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @rdbSavedObjectLen(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @estimateObjectIdleTime(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @sdsZmallocSize(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @getStringObjectSdsUsedMemory(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @objectCommandLookupOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ziplistRepr(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictExpand(%struct.dict*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsmapchars(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictGetStats(i8*, i64, %struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @changeReplicationId() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @clearReplicationId2() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @stringmatchlen_fuzz_test() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @bugReportStart() local_unnamed_addr #0 !dbg !1523 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2706, !tbaa !1525
  %2 = icmp eq i32 %1, 0, !dbg !2707
  br i1 %2, label %3, label %4, !dbg !2708

; <label>:3:                                      ; preds = %0
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2709
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2710, !tbaa !1525
  br label %4, !dbg !2711

; <label>:4:                                      ; preds = %3, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2712
  ret void, !dbg !2712
}

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssertPrintClientInfo(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !2713 {
  %2 = alloca [128 x i8], align 16
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2725, !tbaa !1525
  %4 = icmp eq i32 %3, 0, !dbg !2727
  br i1 %4, label %5, label %6, !dbg !2728

; <label>:5:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2729
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2730, !tbaa !1525
  br label %6, !dbg !2731

; <label>:6:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2732
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i64 0, i64 0)) #7, !dbg !2733
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2734
  %8 = load i32, i32* %7, align 8, !dbg !2734, !tbaa !2735
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0), i32 %8) #7, !dbg !2736
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2737
  %10 = load i32, i32* %9, align 8, !dbg !2737, !tbaa !2738
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 %10) #7, !dbg !2739
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2740
  %12 = load i32, i32* %11, align 8, !dbg !2740, !tbaa !1986
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0), i32 %12) #7, !dbg !2741
  %13 = load i32, i32* %11, align 8, !dbg !2743, !tbaa !1986
  %14 = icmp sgt i32 %13, 0, !dbg !2744
  br i1 %14, label %15, label %51, !dbg !2745

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %18, !dbg !2745

; <label>:18:                                     ; preds = %15, %41
  %19 = phi i64 [ 0, %15 ], [ %47, %41 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2746
  %20 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2748, !tbaa !1992
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !2750
  %22 = bitcast %struct.redisObject** %21 to i32**, !dbg !2750
  %23 = load i32*, i32** %22, align 8, !dbg !2750, !tbaa !1066
  %24 = load i32, i32* %23, align 8, !dbg !2751
  %25 = and i32 %24, 15, !dbg !2751
  %26 = icmp eq i32 %25, 0, !dbg !2752
  %27 = bitcast i32* %23 to %struct.redisObject*, !dbg !2753
  %28 = lshr i32 %24, 4, !dbg !2754
  br i1 %26, label %29, label %35, !dbg !2753

; <label>:29:                                     ; preds = %18
  %30 = trunc i32 %28 to i4, !dbg !2756
  switch i4 %30, label %35 [
    i4 0, label %31
    i4 -8, label %31
  ], !dbg !2756

; <label>:31:                                     ; preds = %29, %29
  %32 = getelementptr inbounds i32, i32* %23, i64 2, !dbg !2757
  %33 = bitcast i32* %32 to i8**, !dbg !2757
  %34 = load i8*, i8** %33, align 8, !dbg !2757, !tbaa !228
  br label %41, !dbg !2760

; <label>:35:                                     ; preds = %18, %29
  %36 = and i32 %28, 15, !dbg !2761
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %16, i64 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0), i32 %25, i32 %36) #7, !dbg !2762
  %38 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2763, !tbaa !1992
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %19
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !2764, !tbaa !1066
  br label %41

; <label>:41:                                     ; preds = %35, %31
  %42 = phi %struct.redisObject* [ %27, %31 ], [ %40, %35 ], !dbg !2764
  %43 = phi i8* [ %34, %31 ], [ %16, %35 ], !dbg !2754
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %42, i64 0, i32 1, !dbg !2765
  %45 = load i32, i32* %44, align 4, !dbg !2765, !tbaa !2208
  %46 = trunc i64 %19 to i32, !dbg !2766
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i32 %46, i8* %43, i32 %45) #7, !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2767
  %47 = add nuw nsw i64 %19, 1, !dbg !2768
  %48 = load i32, i32* %11, align 8, !dbg !2743, !tbaa !1986
  %49 = sext i32 %48 to i64, !dbg !2744
  %50 = icmp slt i64 %47, %49, !dbg !2744
  br i1 %50, label %18, label %51, !dbg !2745, !llvm.loop !2769

; <label>:51:                                     ; preds = %41, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  ret void, !dbg !2771
}

; Function Attrs: noredzone nounwind
define dso_local void @serverLogObjectDebugInfo(%struct.redisObject*) local_unnamed_addr #0 !dbg !2772 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2781
  %3 = load i32, i32* %2, align 8, !dbg !2781
  %4 = and i32 %3, 15, !dbg !2781
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i32 %4) #7, !dbg !2782
  %5 = load i32, i32* %2, align 8, !dbg !2783
  %6 = lshr i32 %5, 4, !dbg !2783
  %7 = and i32 %6, 15, !dbg !2783
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i32 %7) #7, !dbg !2784
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !2785
  %9 = load i32, i32* %8, align 4, !dbg !2785, !tbaa !2208
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i64 0, i64 0), i32 %9) #7, !dbg !2786
  %10 = load i32, i32* %2, align 8, !dbg !2787
  %11 = trunc i32 %10 to i4, !dbg !2788
  switch i4 %11, label %119 [
    i4 0, label %12
    i4 1, label %96
    i4 2, label %99
    i4 4, label %102
    i4 3, label %105
  ], !dbg !2788

; <label>:12:                                     ; preds = %1
  %13 = lshr i32 %10, 4, !dbg !2789
  %14 = trunc i32 %13 to i4, !dbg !2789
  switch i4 %14, label %119 [
    i4 0, label %15
    i4 -8, label %15
  ], !dbg !2789

; <label>:15:                                     ; preds = %12, %12
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2790
  %17 = load i8*, i8** %16, align 8, !dbg !2790, !tbaa !228
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2793
  %19 = load i8, i8* %18, align 1, !dbg !2793, !tbaa !203
  %20 = trunc i8 %19 to i3, !dbg !2795
  switch i3 %20, label %42 [
    i3 0, label %21
    i3 1, label %24
    i3 2, label %28
    i3 3, label %33
    i3 -4, label %38
  ], !dbg !2795

; <label>:21:                                     ; preds = %15
  %22 = lshr i8 %19, 3, !dbg !2796
  %23 = zext i8 %22 to i64, !dbg !2796
  br label %42, !dbg !2797

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %17, i64 -3, !dbg !2798
  %26 = load i8, i8* %25, align 1, !dbg !2799, !tbaa !203
  %27 = zext i8 %26 to i64, !dbg !2798
  br label %42, !dbg !2800

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds i8, i8* %17, i64 -5, !dbg !2801
  %30 = bitcast i8* %29 to i16*, !dbg !2802
  %31 = load i16, i16* %30, align 1, !dbg !2802, !tbaa !254
  %32 = zext i16 %31 to i64, !dbg !2801
  br label %42, !dbg !2803

; <label>:33:                                     ; preds = %15
  %34 = getelementptr inbounds i8, i8* %17, i64 -9, !dbg !2804
  %35 = bitcast i8* %34 to i32*, !dbg !2805
  %36 = load i32, i32* %35, align 1, !dbg !2805, !tbaa !259
  %37 = zext i32 %36 to i64, !dbg !2804
  br label %42, !dbg !2806

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds i8, i8* %17, i64 -17, !dbg !2807
  %40 = bitcast i8* %39 to i64*, !dbg !2808
  %41 = load i64, i64* %40, align 1, !dbg !2808, !tbaa !263
  br label %42, !dbg !2809

; <label>:42:                                     ; preds = %15, %21, %24, %28, %33, %38
  %43 = phi i64 [ %41, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %24 ], [ %23, %21 ], [ 0, %15 ], !dbg !2810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2811
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0), i64 %43) #7, !dbg !2812
  %44 = load i8*, i8** %16, align 8, !dbg !2813, !tbaa !228
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2816
  %46 = load i8, i8* %45, align 1, !dbg !2816, !tbaa !203
  %47 = trunc i8 %46 to i3, !dbg !2818
  switch i3 %47, label %62 [
    i3 -4, label %58
    i3 3, label %53
    i3 2, label %48
  ], !dbg !2818

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !2819
  %50 = bitcast i8* %49 to i16*, !dbg !2820
  %51 = load i16, i16* %50, align 1, !dbg !2820, !tbaa !254
  %52 = zext i16 %51 to i64, !dbg !2819
  br label %63, !dbg !2821

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !2822
  %55 = bitcast i8* %54 to i32*, !dbg !2823
  %56 = load i32, i32* %55, align 1, !dbg !2823, !tbaa !259
  %57 = zext i32 %56 to i64, !dbg !2822
  br label %63, !dbg !2824

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !2825
  %60 = bitcast i8* %59 to i64*, !dbg !2826
  %61 = load i64, i64* %60, align 1, !dbg !2826, !tbaa !263
  br label %63, !dbg !2827

; <label>:62:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  br label %66, !dbg !2829

; <label>:63:                                     ; preds = %48, %53, %58
  %64 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], !dbg !2830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  %65 = icmp ult i64 %64, 4096, !dbg !2831
  br i1 %65, label %66, label %119, !dbg !2829

; <label>:66:                                     ; preds = %62, %63
  %67 = tail call i8* @sdsempty() #7, !dbg !2832
  %68 = load i8*, i8** %16, align 8, !dbg !2833, !tbaa !228
  %69 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !2836
  %70 = load i8, i8* %69, align 1, !dbg !2836, !tbaa !203
  %71 = trunc i8 %70 to i3, !dbg !2838
  switch i3 %71, label %93 [
    i3 0, label %72
    i3 1, label %75
    i3 2, label %79
    i3 3, label %84
    i3 -4, label %89
  ], !dbg !2838

; <label>:72:                                     ; preds = %66
  %73 = lshr i8 %70, 3, !dbg !2839
  %74 = zext i8 %73 to i64, !dbg !2839
  br label %93, !dbg !2840

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds i8, i8* %68, i64 -3, !dbg !2841
  %77 = load i8, i8* %76, align 1, !dbg !2842, !tbaa !203
  %78 = zext i8 %77 to i64, !dbg !2841
  br label %93, !dbg !2843

; <label>:79:                                     ; preds = %66
  %80 = getelementptr inbounds i8, i8* %68, i64 -5, !dbg !2844
  %81 = bitcast i8* %80 to i16*, !dbg !2845
  %82 = load i16, i16* %81, align 1, !dbg !2845, !tbaa !254
  %83 = zext i16 %82 to i64, !dbg !2844
  br label %93, !dbg !2846

; <label>:84:                                     ; preds = %66
  %85 = getelementptr inbounds i8, i8* %68, i64 -9, !dbg !2847
  %86 = bitcast i8* %85 to i32*, !dbg !2848
  %87 = load i32, i32* %86, align 1, !dbg !2848, !tbaa !259
  %88 = zext i32 %87 to i64, !dbg !2847
  br label %93, !dbg !2849

; <label>:89:                                     ; preds = %66
  %90 = getelementptr inbounds i8, i8* %68, i64 -17, !dbg !2850
  %91 = bitcast i8* %90 to i64*, !dbg !2851
  %92 = load i64, i64* %91, align 1, !dbg !2851, !tbaa !263
  br label %93, !dbg !2852

; <label>:93:                                     ; preds = %66, %72, %75, %79, %84, %89
  %94 = phi i64 [ %92, %89 ], [ %88, %84 ], [ %83, %79 ], [ %78, %75 ], [ %74, %72 ], [ 0, %66 ], !dbg !2853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2854
  %95 = tail call i8* @sdscatrepr(i8* %67, i8* %68, i64 %94) #7, !dbg !2855
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i8* %95) #7, !dbg !2857
  tail call void @sdsfree(i8* %95) #7, !dbg !2858
  br label %119, !dbg !2859

; <label>:96:                                     ; preds = %1
  %97 = tail call i64 @listTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2860
  %98 = trunc i64 %97 to i32, !dbg !2863
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i64 0, i64 0), i32 %98) #7, !dbg !2864
  br label %119, !dbg !2865

; <label>:99:                                     ; preds = %1
  %100 = tail call i64 @setTypeSize(%struct.redisObject* nonnull %0) #7, !dbg !2866
  %101 = trunc i64 %100 to i32, !dbg !2869
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i64 0, i64 0), i32 %101) #7, !dbg !2870
  br label %119, !dbg !2871

; <label>:102:                                    ; preds = %1
  %103 = tail call i64 @hashTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2872
  %104 = trunc i64 %103 to i32, !dbg !2875
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i64 0, i64 0), i32 %104) #7, !dbg !2876
  br label %119, !dbg !2877

; <label>:105:                                    ; preds = %1
  %106 = tail call i64 @zsetLength(%struct.redisObject* nonnull %0) #7, !dbg !2878
  %107 = trunc i64 %106 to i32, !dbg !2881
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i64 0, i64 0), i32 %107) #7, !dbg !2882
  %108 = load i32, i32* %2, align 8, !dbg !2883
  %109 = and i32 %108, 240, !dbg !2883
  %110 = icmp eq i32 %109, 112, !dbg !2885
  br i1 %110, label %111, label %119, !dbg !2886

; <label>:111:                                    ; preds = %105
  %112 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2887
  %113 = bitcast i8** %112 to %struct.zset**, !dbg !2887
  %114 = load %struct.zset*, %struct.zset** %113, align 8, !dbg !2887, !tbaa !228
  %115 = getelementptr inbounds %struct.zset, %struct.zset* %114, i64 0, i32 1, !dbg !2888
  %116 = load %struct.zskiplist*, %struct.zskiplist** %115, align 8, !dbg !2888, !tbaa !2889
  %117 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %116, i64 0, i32 3, !dbg !2890
  %118 = load i32, i32* %117, align 8, !dbg !2890, !tbaa !2891
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i64 0, i64 0), i32 %118) #7, !dbg !2893
  br label %119, !dbg !2893

; <label>:119:                                    ; preds = %1, %12, %96, %102, %105, %111, %99, %63, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  ret void, !dbg !2894
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @listTypeLength(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @setTypeSize(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @hashTypeLength(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zsetLength(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssertPrintObject(%struct.redisObject*) local_unnamed_addr #0 !dbg !2671 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2896, !tbaa !1525
  %3 = icmp eq i32 %2, 0, !dbg !2898
  br i1 %3, label %4, label %5, !dbg !2899

; <label>:4:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2900
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2901, !tbaa !1525
  br label %5, !dbg !2902

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2904
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* %0) #8, !dbg !2905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2906
  ret void, !dbg !2906
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local void @serverLogRaw(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @serverLogHexDump(i32, i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2907 {
  %5 = alloca [65 x i8], align 16
  %6 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0, !dbg !2929
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %6) #6, !dbg !2929
  tail call void (i32, i8*, ...) @serverLog(i32 %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0), i8* %1, i64 %3) #7, !dbg !2933
  %7 = icmp eq i64 %3, 0, !dbg !2935
  br i1 %7, label %8, label %10, !dbg !2935

; <label>:8:                                      ; preds = %4
  %9 = or i32 %0, 1024, !dbg !2936
  br label %39, !dbg !2935

; <label>:10:                                     ; preds = %4
  %11 = ptrtoint [65 x i8]* %5 to i64
  %12 = or i32 %0, 1024
  br label %13, !dbg !2935

; <label>:13:                                     ; preds = %10, %37
  %14 = phi i8* [ %2, %10 ], [ %30, %37 ]
  %15 = phi i8* [ %6, %10 ], [ %38, %37 ]
  %16 = phi i64 [ %3, %10 ], [ %29, %37 ]
  %17 = load i8, i8* %14, align 1, !dbg !2937, !tbaa !203
  %18 = lshr i8 %17, 4, !dbg !2939
  %19 = zext i8 %18 to i64, !dbg !2940
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %19, !dbg !2940
  %21 = load i8, i8* %20, align 1, !dbg !2940, !tbaa !203
  store i8 %21, i8* %15, align 1, !dbg !2941, !tbaa !203
  %22 = load i8, i8* %14, align 1, !dbg !2942, !tbaa !203
  %23 = and i8 %22, 15, !dbg !2943
  %24 = zext i8 %23 to i64, !dbg !2944
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %24, !dbg !2944
  %26 = load i8, i8* %25, align 1, !dbg !2944, !tbaa !203
  %27 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2945
  store i8 %26, i8* %27, align 1, !dbg !2946, !tbaa !203
  %28 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !2947
  store i8 0, i8* %28, align 1, !dbg !2948, !tbaa !203
  %29 = add i64 %16, -1, !dbg !2949
  %30 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !2950
  %31 = ptrtoint i8* %28 to i64, !dbg !2951
  %32 = sub i64 %31, %11, !dbg !2951
  %33 = icmp eq i64 %32, 64, !dbg !2953
  %34 = icmp eq i64 %29, 0, !dbg !2954
  %35 = or i1 %34, %33, !dbg !2955
  br i1 %35, label %36, label %37, !dbg !2955

; <label>:36:                                     ; preds = %13
  call void @serverLogRaw(i32 %12, i8* nonnull %6) #7, !dbg !2956
  br label %37, !dbg !2958

; <label>:37:                                     ; preds = %13, %36
  %38 = phi i8* [ %6, %36 ], [ %28, %13 ], !dbg !2959
  br i1 %34, label %39, label %13, !dbg !2935, !llvm.loop !2960

; <label>:39:                                     ; preds = %37, %8
  %40 = phi i32 [ %9, %8 ], [ %12, %37 ], !dbg !2936
  call void @serverLogRaw(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #7, !dbg !2962
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %6) #6, !dbg !2963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2963
  ret void, !dbg !2963
}

; Function Attrs: noredzone nounwind
define dso_local void @watchdogSignalHandler(i32, %struct.siginfo_t* nocapture readnone, i8* nocapture readnone) #0 !dbg !2964 {
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.120, i64 0, i64 0)) #7, !dbg !2983
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i64 0, i64 0)) #7, !dbg !2984
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0)) #7, !dbg !2985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  ret void, !dbg !2986
}

; Function Attrs: noredzone
declare dso_local void @serverLogFromHandler(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @watchdogScheduleSignal(i32) local_unnamed_addr #0 !dbg !2987 {
  %2 = alloca %struct.itimerval, align 16
  %3 = bitcast %struct.itimerval* %2 to i8*, !dbg !3002
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3002
  %4 = sdiv i32 %0, 1000, !dbg !3003
  %5 = sext i32 %4 to i64, !dbg !3004
  %6 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !3005
  store i64 %5, i64* %6, align 16, !dbg !3006, !tbaa !3007
  %7 = srem i32 %0, 1000, !dbg !3010
  %8 = mul nsw i32 %7, 1000, !dbg !3011
  %9 = sext i32 %8 to i64, !dbg !3012
  %10 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !3013
  store i64 %9, i64* %10, align 8, !dbg !3014, !tbaa !3015
  %11 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !3016
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 16, !dbg !3016, !tbaa !263
  %12 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !3018
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3019
  ret void, !dbg !3019
}

; Function Attrs: noredzone
declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @enableWatchdog(i32) local_unnamed_addr #0 !dbg !3020 {
  %2 = alloca %struct.itimerval, align 16
  %3 = alloca %struct.sigaction, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3041, !tbaa !3042
  %5 = icmp eq i32 %4, 0, !dbg !3043
  br i1 %5, label %6, label %13, !dbg !3044

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.sigaction* %3 to i8*, !dbg !3045
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3045
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 1, !dbg !3046
  %9 = call i32 @sigemptyset(i64* nonnull %8) #7, !dbg !3047
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 2, !dbg !3048
  store i32 134217732, i32* %10, align 8, !dbg !3049, !tbaa !3050
  %11 = bitcast %struct.sigaction* %3 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !3052
  store void (i32, %struct.siginfo_t*, i8*)* @watchdogSignalHandler, void (i32, %struct.siginfo_t*, i8*)** %11, align 8, !dbg !3053, !tbaa !203
  %12 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %3, %struct.sigaction* null) #7, !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3056
  br label %13, !dbg !3057

; <label>:13:                                     ; preds = %6, %1
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !3058, !tbaa !3059
  %15 = sdiv i32 1000, %14, !dbg !3060
  %16 = shl nsw i32 %15, 1, !dbg !3061
  %17 = icmp sgt i32 %16, %0, !dbg !3063
  %18 = select i1 %17, i32 %16, i32 %0, !dbg !3065
  %19 = bitcast %struct.itimerval* %2 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #6, !dbg !3068
  %20 = sdiv i32 %18, 1000, !dbg !3069
  %21 = sext i32 %20 to i64, !dbg !3070
  %22 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !3071
  store i64 %21, i64* %22, align 16, !dbg !3072, !tbaa !3007
  %23 = srem i32 %18, 1000, !dbg !3073
  %24 = mul nsw i32 %23, 1000, !dbg !3074
  %25 = sext i32 %24 to i64, !dbg !3075
  %26 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !3076
  store i64 %25, i64* %26, align 8, !dbg !3077, !tbaa !3015
  %27 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !3078
  store <2 x i64> zeroinitializer, <2 x i64>* %27, align 16, !dbg !3078, !tbaa !263
  %28 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #6, !dbg !3081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3081
  store i32 %18, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3082, !tbaa !3042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  ret void, !dbg !3083
}

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disableWatchdog() local_unnamed_addr #0 !dbg !3084 {
  %1 = alloca %struct.itimerval, align 16
  %2 = alloca %struct.sigaction, align 8
  %3 = bitcast %struct.sigaction* %2 to i8*, !dbg !3087
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3087
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3088, !tbaa !3042
  %5 = icmp eq i32 %4, 0, !dbg !3090
  br i1 %5, label %17, label %6, !dbg !3091

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.itimerval* %1 to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3094
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i64 0, i32 1, i32 0, !dbg !3095
  %9 = bitcast i64* %8 to <2 x i64>*, !dbg !3096
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16, !dbg !3096, !tbaa !263
  %10 = bitcast %struct.itimerval* %1 to <2 x i64>*, !dbg !3097
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16, !dbg !3097, !tbaa !263
  %11 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %1, %struct.itimerval* null) #7, !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3101
  %13 = call i32 @sigemptyset(i64* nonnull %12) #7, !dbg !3102
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3103
  store i32 0, i32* %14, align 8, !dbg !3104, !tbaa !3050
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3105
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %15, align 8, !dbg !3106, !tbaa !203
  %16 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %2, %struct.sigaction* null) #7, !dbg !3108
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3109, !tbaa !3042
  br label %17, !dbg !3110

; <label>:17:                                     ; preds = %0, %6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3110
  ret void, !dbg !3110
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!150, !151, !152}
!llvm.ident = !{!153}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/debug.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !8, !9, !10, !109, !112, !123, !133, !143}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !13, line: 829, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !13, line: 826, size: 128, elements: !15)
!15 = !{!16, !84}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !14, file: !13, line: 827, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !19, line: 82, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !19, line: 76, size: 768, elements: !21)
!21 = !{!22, !52, !53, !82, !83}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 77, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !19, line: 65, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !19, line: 58, size: 384, elements: !26)
!26 = !{!27, !38, !42, !43, !47, !51}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !25, file: !19, line: 59, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !36}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 60, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 105, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !25, file: !19, line: 60, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!4, !4, !36}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !25, file: !19, line: 61, baseType: !39, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !25, file: !19, line: 62, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!9, !4, !36, !36}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !25, file: !19, line: 63, baseType: !48, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !4, !4}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !25, file: !19, line: 64, baseType: !48, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !20, file: !19, line: 78, baseType: !4, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !20, file: !19, line: 79, baseType: !54, size: 512, offset: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !80)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !19, line: 74, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !19, line: 69, size: 256, elements: !57)
!57 = !{!58, !77, !78, !79}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !56, file: !19, line: 70, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !19, line: 56, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !19, line: 47, size: 192, elements: !63)
!63 = !{!64, !65, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !62, file: !19, line: 48, baseType: !4, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !62, file: !19, line: 54, baseType: !66, size: 64, offset: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !19, line: 49, size: 64, elements: !67)
!67 = !{!68, !69, !70, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !66, file: !19, line: 50, baseType: !4, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !66, file: !19, line: 51, baseType: !31, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !66, file: !19, line: 52, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !32, line: 56, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !34, line: 103, baseType: !73)
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !66, file: !19, line: 53, baseType: !7, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !19, line: 55, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !19, line: 71, baseType: !35, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !56, file: !19, line: 72, baseType: !35, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !56, file: !19, line: 73, baseType: !35, size: 64, offset: 192)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !20, file: !19, line: 80, baseType: !73, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !20, file: !19, line: 81, baseType: !35, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !14, file: !13, line: 828, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !13, line: 824, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !13, line: 820, size: 256, elements: !88)
!88 = !{!89, !106, !107, !108}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !87, file: !13, line: 821, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !13, line: 810, size: 192, elements: !92)
!92 = !{!93, !96, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !91, file: !13, line: 811, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !95, line: 43, baseType: !5)
!95 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !91, file: !13, line: 812, baseType: !7, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !91, file: !13, line: 813, baseType: !90, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !91, file: !13, line: 817, baseType: !99, offset: 192)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, elements: !104)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !13, line: 814, size: 128, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !100, file: !13, line: 815, baseType: !90, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !100, file: !13, line: 816, baseType: !35, size: 64, offset: 64)
!104 = !{!105}
!105 = !DISubrange(count: -1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !87, file: !13, line: 821, baseType: !90, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !13, line: 822, baseType: !35, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !87, file: !13, line: 823, baseType: !9, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !9}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !95, line: 51, size: 24, elements: !114)
!114 = !{!115, !119, !120, !121}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !113, file: !95, line: 52, baseType: !116, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 43, baseType: !118)
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !113, file: !95, line: 53, baseType: !116, size: 8, offset: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !95, line: 54, baseType: !118, size: 8, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !113, file: !95, line: 55, baseType: !122, offset: 24)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !104)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !95, line: 57, size: 40, elements: !125)
!125 = !{!126, !130, !131, !132}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !124, file: !95, line: 58, baseType: !127, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !32, line: 36, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !34, line: 57, baseType: !129)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !124, file: !95, line: 59, baseType: !127, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !95, line: 60, baseType: !118, size: 8, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !124, file: !95, line: 61, baseType: !122, offset: 40)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !95, line: 63, size: 72, elements: !135)
!135 = !{!136, !140, !141, !142}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !134, file: !95, line: 64, baseType: !137, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 48, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 79, baseType: !139)
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !134, file: !95, line: 65, baseType: !137, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !95, line: 66, baseType: !118, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !95, line: 67, baseType: !122, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !95, line: 69, size: 136, elements: !145)
!145 = !{!146, !147, !148, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !144, file: !95, line: 70, baseType: !31, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !144, file: !95, line: 71, baseType: !31, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !95, line: 72, baseType: !118, size: 8, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !144, file: !95, line: 73, baseType: !122, offset: 136)
!150 = !{i32 2, !"Dwarf Version", i32 4}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 4}
!153 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!154 = distinct !DISubprogram(name: "xorDigest", scope: !1, file: !1, line: 64, type: !155, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !162)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !157, !4, !158}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 40, baseType: !160)
!159 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !161, line: 129, baseType: !35)
!161 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!162 = !{!163, !164, !165, !166, !181, !185, !186}
!163 = !DILocalVariable(name: "digest", arg: 1, scope: !154, file: !1, line: 64, type: !157)
!164 = !DILocalVariable(name: "ptr", arg: 2, scope: !154, file: !1, line: 64, type: !4)
!165 = !DILocalVariable(name: "len", arg: 3, scope: !154, file: !1, line: 64, type: !158)
!166 = !DILocalVariable(name: "ctx", scope: !154, file: !1, line: 65, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA1_CTX", file: !168, line: 14, baseType: !169)
!168 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sha1.h", directory: "/root/.unikraft/apps/redis/build")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 10, size: 736, elements: !170)
!170 = !{!171, !175, !177}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !169, file: !168, line: 11, baseType: !172, size: 160)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 160, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 5)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !169, file: !168, line: 12, baseType: !176, size: 64, offset: 160)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !169, file: !168, line: 13, baseType: !178, size: 512, offset: 224)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 512, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 64)
!181 = !DILocalVariable(name: "hash", scope: !154, file: !1, line: 66, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 160, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 20)
!185 = !DILocalVariable(name: "s", scope: !154, file: !1, line: 66, type: !157)
!186 = !DILocalVariable(name: "j", scope: !154, file: !1, line: 67, type: !9)
!187 = !DILocation(line: 64, column: 31, scope: !154)
!188 = !DILocation(line: 64, column: 45, scope: !154)
!189 = !DILocation(line: 64, column: 57, scope: !154)
!190 = !DILocation(line: 65, column: 5, scope: !154)
!191 = !DILocation(line: 66, column: 5, scope: !154)
!192 = !DILocation(line: 66, column: 19, scope: !154)
!193 = !DILocation(line: 66, column: 30, scope: !154)
!194 = !DILocation(line: 65, column: 14, scope: !154)
!195 = !DILocation(line: 69, column: 5, scope: !154)
!196 = !DILocation(line: 70, column: 23, scope: !154)
!197 = !DILocation(line: 70, column: 5, scope: !154)
!198 = !DILocation(line: 71, column: 5, scope: !154)
!199 = !DILocation(line: 67, column: 9, scope: !154)
!200 = !DILocation(line: 74, column: 22, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 73, column: 5)
!202 = distinct !DILexicalBlock(scope: !154, file: !1, line: 73, column: 5)
!203 = !{!204, !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 74, column: 19, scope: !201)
!207 = !DILocation(line: 74, column: 9, scope: !201)
!208 = !DILocation(line: 75, column: 1, scope: !154)
!209 = distinct !DISubprogram(name: "xorStringObjectDigest", scope: !1, file: !1, line: 77, type: !210, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !221)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !157, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !13, line: 622, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !13, line: 614, size: 128, elements: !215)
!215 = !{!216, !217, !218, !219, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !214, file: !13, line: 615, baseType: !139, size: 4, flags: DIFlagBitField, extraData: i64 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !214, file: !13, line: 616, baseType: !139, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !214, file: !13, line: 617, baseType: !139, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !214, file: !13, line: 620, baseType: !9, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !214, file: !13, line: 621, baseType: !4, size: 64, offset: 64)
!221 = !{!222, !223}
!222 = !DILocalVariable(name: "digest", arg: 1, scope: !209, file: !1, line: 77, type: !157)
!223 = !DILocalVariable(name: "o", arg: 2, scope: !209, file: !1, line: 77, type: !212)
!224 = !DILocation(line: 77, column: 43, scope: !209)
!225 = !DILocation(line: 77, column: 57, scope: !209)
!226 = !DILocation(line: 78, column: 9, scope: !209)
!227 = !DILocation(line: 79, column: 25, scope: !209)
!228 = !{!229, !231, i64 8}
!229 = !{!"redisObject", !230, i64 0, !230, i64 0, !230, i64 1, !230, i64 4, !231, i64 8}
!230 = !{!"int", !204, i64 0}
!231 = !{!"any pointer", !204, i64 0}
!232 = !DILocalVariable(name: "s", arg: 1, scope: !233, file: !95, line: 87, type: !238)
!233 = distinct !DISubprogram(name: "sdslen", scope: !95, file: !95, line: 87, type: !234, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !239)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !237, line: 58, baseType: !35)
!237 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!239 = !{!232, !240}
!240 = !DILocalVariable(name: "flags", scope: !233, file: !95, line: 88, type: !118)
!241 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !242)
!242 = distinct !DILocation(line: 79, column: 29, scope: !209)
!243 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !242)
!244 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !242)
!245 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !242)
!246 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !242)
!247 = distinct !DILexicalBlock(scope: !233, file: !95, line: 89, column: 33)
!248 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !242)
!249 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !242)
!250 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !242)
!251 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !242)
!252 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !242)
!253 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !242)
!254 = !{!255, !255, i64 0}
!255 = !{!"short", !204, i64 0}
!256 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !242)
!257 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !242)
!258 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !242)
!259 = !{!230, !230, i64 0}
!260 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !242)
!261 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !242)
!262 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !242)
!263 = !{!264, !264, i64 0}
!264 = !{!"long", !204, i64 0}
!265 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !242)
!266 = !DILocation(line: 0, scope: !247, inlinedAt: !242)
!267 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !242)
!268 = !DILocation(line: 79, column: 5, scope: !209)
!269 = !DILocation(line: 80, column: 5, scope: !209)
!270 = !DILocation(line: 81, column: 1, scope: !209)
!271 = distinct !DISubprogram(name: "mixDigest", scope: !1, file: !1, line: 97, type: !155, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !277}
!273 = !DILocalVariable(name: "digest", arg: 1, scope: !271, file: !1, line: 97, type: !157)
!274 = !DILocalVariable(name: "ptr", arg: 2, scope: !271, file: !1, line: 97, type: !4)
!275 = !DILocalVariable(name: "len", arg: 3, scope: !271, file: !1, line: 97, type: !158)
!276 = !DILocalVariable(name: "ctx", scope: !271, file: !1, line: 98, type: !167)
!277 = !DILocalVariable(name: "s", scope: !271, file: !1, line: 99, type: !5)
!278 = !DILocation(line: 97, column: 31, scope: !271)
!279 = !DILocation(line: 97, column: 45, scope: !271)
!280 = !DILocation(line: 97, column: 57, scope: !271)
!281 = !DILocation(line: 98, column: 5, scope: !271)
!282 = !DILocation(line: 99, column: 11, scope: !271)
!283 = !DILocation(line: 101, column: 5, scope: !271)
!284 = !DILocation(line: 98, column: 14, scope: !271)
!285 = !DILocation(line: 102, column: 5, scope: !271)
!286 = !DILocation(line: 103, column: 5, scope: !271)
!287 = !DILocation(line: 104, column: 5, scope: !271)
!288 = !DILocation(line: 105, column: 1, scope: !271)
!289 = distinct !DISubprogram(name: "mixStringObjectDigest", scope: !1, file: !1, line: 107, type: !210, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !290)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "digest", arg: 1, scope: !289, file: !1, line: 107, type: !157)
!292 = !DILocalVariable(name: "o", arg: 2, scope: !289, file: !1, line: 107, type: !212)
!293 = !DILocation(line: 107, column: 43, scope: !289)
!294 = !DILocation(line: 107, column: 57, scope: !289)
!295 = !DILocation(line: 108, column: 9, scope: !289)
!296 = !DILocation(line: 109, column: 25, scope: !289)
!297 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !298)
!298 = distinct !DILocation(line: 109, column: 29, scope: !289)
!299 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !298)
!300 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !298)
!301 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !298)
!302 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !298)
!303 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !298)
!304 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !298)
!305 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !298)
!306 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !298)
!307 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !298)
!308 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !298)
!309 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !298)
!310 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !298)
!311 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !298)
!312 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !298)
!313 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !298)
!314 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !298)
!315 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !298)
!316 = !DILocation(line: 0, scope: !247, inlinedAt: !298)
!317 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !298)
!318 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !319)
!319 = distinct !DILocation(line: 109, column: 5, scope: !289)
!320 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !319)
!321 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !319)
!322 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !319)
!323 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !319)
!324 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !319)
!325 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !319)
!326 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !319)
!327 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !319)
!328 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !319)
!329 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !319)
!330 = !DILocation(line: 110, column: 5, scope: !289)
!331 = !DILocation(line: 111, column: 1, scope: !289)
!332 = distinct !DISubprogram(name: "xorObjectDigest", scope: !1, file: !1, line: 121, type: !333, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !375)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !212, !157, !212}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !13, line: 656, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !13, line: 647, size: 512, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !337, file: !13, line: 648, baseType: !17, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !337, file: !13, line: 649, baseType: !17, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !337, file: !13, line: 650, baseType: !17, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !337, file: !13, line: 651, baseType: !17, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !337, file: !13, line: 652, baseType: !17, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !337, file: !13, line: 653, baseType: !9, size: 32, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !337, file: !13, line: 654, baseType: !8, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !337, file: !13, line: 655, baseType: !347, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !349, line: 54, baseType: !350)
!349 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !349, line: 47, size: 384, elements: !351)
!351 = !{!352, !361, !362, !366, !370, !374}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !350, file: !349, line: 48, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !349, line: 40, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !349, line: 36, size: 192, elements: !356)
!356 = !{!357, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !355, file: !349, line: 37, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !349, line: 38, baseType: !358, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !349, line: 39, baseType: !4, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !350, file: !349, line: 49, baseType: !353, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !350, file: !349, line: 50, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!4, !4}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !350, file: !349, line: 51, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !4}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !350, file: !349, line: 52, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!9, !4, !4}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !350, file: !349, line: 53, baseType: !35, size: 64, offset: 320)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !386, !434, !450, !452, !474, !475, !478, !481, !482, !483, !484, !485, !486, !487, !491, !492, !493, !495, !497, !510, !512, !513, !601, !602, !603, !605, !607, !608, !609, !610, !618, !950}
!376 = !DILocalVariable(name: "db", arg: 1, scope: !332, file: !1, line: 121, type: !335)
!377 = !DILocalVariable(name: "keyobj", arg: 2, scope: !332, file: !1, line: 121, type: !212)
!378 = !DILocalVariable(name: "digest", arg: 3, scope: !332, file: !1, line: 121, type: !157)
!379 = !DILocalVariable(name: "o", arg: 4, scope: !332, file: !1, line: 121, type: !212)
!380 = !DILocalVariable(name: "aux", scope: !332, file: !1, line: 122, type: !137)
!381 = !DILocalVariable(name: "expiretime", scope: !332, file: !1, line: 124, type: !8)
!382 = !DILocalVariable(name: "buf", scope: !332, file: !1, line: 125, type: !383)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 128)
!386 = !DILocalVariable(name: "li", scope: !387, file: !1, line: 131, type: !390)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 130, column: 37)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 130, column: 16)
!389 = distinct !DILexicalBlock(scope: !332, file: !1, line: 128, column: 9)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !13, line: 1347, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1342, size: 192, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !392, file: !13, line: 1343, baseType: !212, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !392, file: !13, line: 1344, baseType: !118, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !392, file: !13, line: 1345, baseType: !118, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !392, file: !13, line: 1346, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !400, line: 88, baseType: !401)
!400 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !400, line: 82, size: 320, elements: !402)
!402 = !{!403, !430, !431, !432, !433}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !401, file: !400, line: 83, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !400, line: 80, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !400, line: 73, size: 320, elements: !408)
!408 = !{!409, !425, !426, !427, !428, !429}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !407, file: !400, line: 74, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !400, line: 55, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !400, line: 44, size: 256, elements: !413)
!413 = !{!414, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !412, file: !400, line: 45, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !400, line: 46, baseType: !415, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !412, file: !400, line: 47, baseType: !157, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !412, file: !400, line: 48, baseType: !139, size: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !412, file: !400, line: 49, baseType: !139, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !412, file: !400, line: 50, baseType: !139, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !412, file: !400, line: 51, baseType: !139, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !412, file: !400, line: 52, baseType: !139, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !412, file: !400, line: 53, baseType: !139, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !412, file: !400, line: 54, baseType: !139, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !407, file: !400, line: 75, baseType: !410, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !400, line: 76, baseType: !35, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !407, file: !400, line: 77, baseType: !35, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !407, file: !400, line: 78, baseType: !9, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !407, file: !400, line: 79, baseType: !139, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !401, file: !400, line: 84, baseType: !410, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !401, file: !400, line: 85, baseType: !157, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !401, file: !400, line: 86, baseType: !73, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !401, file: !400, line: 87, baseType: !9, size: 32, offset: 256)
!434 = !DILocalVariable(name: "entry", scope: !387, file: !1, line: 132, type: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !13, line: 1353, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1350, size: 448, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !436, file: !13, line: 1351, baseType: !390, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !436, file: !13, line: 1352, baseType: !440, size: 384, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !400, line: 98, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !400, line: 90, size: 384, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !441, file: !400, line: 91, baseType: !404, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !400, line: 92, baseType: !410, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !441, file: !400, line: 93, baseType: !157, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !441, file: !400, line: 94, baseType: !157, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !441, file: !400, line: 95, baseType: !8, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !441, file: !400, line: 96, baseType: !139, size: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !441, file: !400, line: 97, baseType: !9, size: 32, offset: 352)
!450 = !DILocalVariable(name: "eleobj", scope: !451, file: !1, line: 134, type: !212)
!451 = distinct !DILexicalBlock(scope: !387, file: !1, line: 133, column: 40)
!452 = !DILocalVariable(name: "si", scope: !453, file: !1, line: 140, type: !455)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 139, column: 36)
!454 = distinct !DILexicalBlock(scope: !388, file: !1, line: 139, column: 16)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "setTypeIterator", file: !13, line: 1361, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1356, size: 192, elements: !458)
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !457, file: !13, line: 1357, baseType: !212, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !457, file: !13, line: 1358, baseType: !9, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !457, file: !13, line: 1359, baseType: !9, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !457, file: !13, line: 1360, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !19, line: 95, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !19, line: 88, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !465, file: !19, line: 89, baseType: !17, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !465, file: !19, line: 90, baseType: !73, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !465, file: !19, line: 91, baseType: !9, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !465, file: !19, line: 91, baseType: !9, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !465, file: !19, line: 92, baseType: !60, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !465, file: !19, line: 92, baseType: !60, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !465, file: !19, line: 94, baseType: !8, size: 64, offset: 320)
!474 = !DILocalVariable(name: "sdsele", scope: !453, file: !1, line: 141, type: !94)
!475 = !DILocalVariable(name: "eledigest", scope: !476, file: !1, line: 148, type: !182)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 147, column: 37)
!477 = distinct !DILexicalBlock(scope: !454, file: !1, line: 147, column: 16)
!478 = !DILocalVariable(name: "zl", scope: !479, file: !1, line: 151, type: !157)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 150, column: 50)
!480 = distinct !DILexicalBlock(scope: !476, file: !1, line: 150, column: 13)
!481 = !DILocalVariable(name: "eptr", scope: !479, file: !1, line: 152, type: !157)
!482 = !DILocalVariable(name: "sptr", scope: !479, file: !1, line: 152, type: !157)
!483 = !DILocalVariable(name: "vstr", scope: !479, file: !1, line: 153, type: !157)
!484 = !DILocalVariable(name: "vlen", scope: !479, file: !1, line: 154, type: !139)
!485 = !DILocalVariable(name: "vll", scope: !479, file: !1, line: 155, type: !8)
!486 = !DILocalVariable(name: "score", scope: !479, file: !1, line: 156, type: !7)
!487 = !DILocalVariable(name: "zs", scope: !488, file: !1, line: 181, type: !490)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 180, column: 58)
!489 = distinct !DILexicalBlock(scope: !480, file: !1, line: 180, column: 20)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!491 = !DILocalVariable(name: "di", scope: !488, file: !1, line: 182, type: !463)
!492 = !DILocalVariable(name: "de", scope: !488, file: !1, line: 183, type: !60)
!493 = !DILocalVariable(name: "sdsele", scope: !494, file: !1, line: 186, type: !94)
!494 = distinct !DILexicalBlock(scope: !488, file: !1, line: 185, column: 48)
!495 = !DILocalVariable(name: "score", scope: !494, file: !1, line: 187, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!497 = !DILocalVariable(name: "hi", scope: !498, file: !1, line: 200, type: !500)
!498 = distinct !DILexicalBlock(scope: !499, file: !1, line: 199, column: 37)
!499 = distinct !DILexicalBlock(scope: !477, file: !1, line: 199, column: 16)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !13, line: 1375, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1367, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !502, file: !13, line: 1368, baseType: !212, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !502, file: !13, line: 1369, baseType: !9, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !502, file: !13, line: 1371, baseType: !157, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !502, file: !13, line: 1371, baseType: !157, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !502, file: !13, line: 1373, baseType: !463, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !502, file: !13, line: 1374, baseType: !60, size: 64, offset: 320)
!510 = !DILocalVariable(name: "eledigest", scope: !511, file: !1, line: 202, type: !182)
!511 = distinct !DILexicalBlock(scope: !498, file: !1, line: 201, column: 43)
!512 = !DILocalVariable(name: "sdsele", scope: !511, file: !1, line: 203, type: !94)
!513 = !DILocalVariable(name: "si", scope: !514, file: !1, line: 216, type: !516)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 215, column: 39)
!515 = distinct !DILexicalBlock(scope: !499, file: !1, line: 215, column: 16)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !517, line: 48, baseType: !518)
!517 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !517, line: 29, size: 5120, elements: !519)
!519 = !{!520, !552, !553, !554, !555, !556, !557, !558, !560, !561, !593, !594, !595, !596, !600}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !518, file: !517, line: 30, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !517, line: 21, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !517, line: 16, size: 320, elements: !524)
!524 = !{!525, !544, !545, !551}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !523, file: !517, line: 17, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !528, line: 137, baseType: !529)
!528 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !528, line: 133, size: 192, elements: !530)
!530 = !{!531, !542, !543}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !529, file: !528, line: 134, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !528, line: 131, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !528, line: 98, size: 32, elements: !535)
!535 = !{!536, !537, !538, !539, !540}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !534, file: !528, line: 99, baseType: !137, size: 1, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !534, file: !528, line: 100, baseType: !137, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !534, file: !528, line: 101, baseType: !137, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !528, line: 102, baseType: !137, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !534, file: !528, line: 130, baseType: !541, offset: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !104)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !529, file: !528, line: 135, baseType: !31, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !529, file: !528, line: 136, baseType: !31, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !523, file: !517, line: 18, baseType: !31, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !523, file: !517, line: 19, baseType: !546, size: 128, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !517, line: 14, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !517, line: 11, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !547, file: !517, line: 12, baseType: !31, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !547, file: !517, line: 13, baseType: !31, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !523, file: !517, line: 20, baseType: !526, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !518, file: !517, line: 31, baseType: !546, size: 128, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !518, file: !517, line: 32, baseType: !31, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !518, file: !517, line: 33, baseType: !157, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !518, file: !517, line: 34, baseType: !157, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !518, file: !517, line: 35, baseType: !9, size: 32, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !518, file: !517, line: 36, baseType: !9, size: 32, offset: 416)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !518, file: !517, line: 37, baseType: !559, size: 128, offset: 448)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !518, file: !517, line: 38, baseType: !559, size: 128, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !518, file: !517, line: 39, baseType: !562, size: 3840, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !528, line: 186, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !528, line: 175, size: 3840, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !573, !574, !587}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !528, line: 176, baseType: !9, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !563, file: !528, line: 177, baseType: !526, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !563, file: !528, line: 178, baseType: !157, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !563, file: !528, line: 179, baseType: !4, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !563, file: !528, line: 180, baseType: !158, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !563, file: !528, line: 181, baseType: !158, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !563, file: !528, line: 182, baseType: !572, size: 1024, offset: 384)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !563, file: !528, line: 183, baseType: !532, size: 64, offset: 1408)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !563, file: !528, line: 184, baseType: !575, size: 2304, offset: 1472)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !528, line: 150, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !528, line: 143, size: 2304, elements: !577)
!577 = !{!578, !580, !581, !582, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !576, file: !528, line: 144, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !576, file: !528, line: 145, baseType: !158, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !576, file: !528, line: 145, baseType: !158, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !576, file: !528, line: 148, baseType: !583, size: 2048, offset: 192)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !576, file: !528, line: 149, baseType: !9, size: 32, offset: 2240)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !563, file: !528, line: 185, baseType: !588, size: 64, offset: 3776)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !528, line: 165, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!9, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !518, file: !517, line: 40, baseType: !157, size: 64, offset: 4544)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !518, file: !517, line: 41, baseType: !157, size: 64, offset: 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !518, file: !517, line: 42, baseType: !157, size: 64, offset: 4672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !518, file: !517, line: 46, baseType: !597, size: 168, offset: 4736)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 168, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 21)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !518, file: !517, line: 47, baseType: !597, size: 168, offset: 4904)
!601 = !DILocalVariable(name: "id", scope: !514, file: !1, line: 218, type: !546)
!602 = !DILocalVariable(name: "numfields", scope: !514, file: !1, line: 219, type: !71)
!603 = !DILocalVariable(name: "itemid", scope: !604, file: !1, line: 222, type: !94)
!604 = distinct !DILexicalBlock(scope: !514, file: !1, line: 221, column: 56)
!605 = !DILocalVariable(name: "field", scope: !606, file: !1, line: 227, type: !157)
!606 = distinct !DILexicalBlock(scope: !604, file: !1, line: 226, column: 32)
!607 = !DILocalVariable(name: "value", scope: !606, file: !1, line: 227, type: !157)
!608 = !DILocalVariable(name: "field_len", scope: !606, file: !1, line: 228, type: !71)
!609 = !DILocalVariable(name: "value_len", scope: !606, file: !1, line: 228, type: !71)
!610 = !DILocalVariable(name: "md", scope: !611, file: !1, line: 237, type: !613)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 236, column: 39)
!612 = distinct !DILexicalBlock(scope: !515, file: !1, line: 236, column: 16)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleDigest", file: !13, line: 586, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !13, line: 583, size: 320, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !614, file: !13, line: 584, baseType: !182, size: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !614, file: !13, line: 585, baseType: !182, size: 160, offset: 160)
!618 = !DILocalVariable(name: "mv", scope: !611, file: !1, line: 238, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !13, line: 550, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !13, line: 547, size: 128, elements: !622)
!622 = !{!623, !949}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !13, line: 548, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !13, line: 530, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !13, line: 517, size: 768, elements: !627)
!627 = !{!628, !629, !632, !911, !916, !921, !926, !932, !934, !939, !944, !945}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !626, file: !13, line: 518, baseType: !31, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !626, file: !13, line: 519, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !13, line: 496, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !626, file: !13, line: 520, baseType: !633, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !13, line: 506, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!4, !637, !9}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !13, line: 555, size: 384, elements: !639)
!639 = !{!640, !641, !903, !904, !905, !906, !909}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !638, file: !13, line: 556, baseType: !158, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !638, file: !13, line: 557, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !644, line: 87, baseType: !645)
!644 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !644, line: 39, size: 832, elements: !646)
!646 = !{!647, !652, !656, !664, !668, !672, !673, !674, !675}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !645, file: !644, line: 43, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!236, !651, !4, !236}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !645, file: !644, line: 44, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!236, !651, !36, !236}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !645, file: !644, line: 45, baseType: !657, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!660, !651}
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !661, line: 173, baseType: !662)
!661 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !161, line: 100, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !161, line: 44, baseType: !73)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !645, file: !644, line: 46, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!9, !651}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !645, file: !644, line: 52, baseType: !669, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !651, !36, !236}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !645, file: !644, line: 55, baseType: !31, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !645, file: !644, line: 58, baseType: !236, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !645, file: !644, line: 61, baseType: !236, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !645, file: !644, line: 84, baseType: !676, size: 320, offset: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !644, line: 64, size: 320, elements: !677)
!677 = !{!678, !683, !894}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !676, file: !644, line: 69, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !644, line: 66, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !679, file: !644, line: 67, baseType: !94, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !679, file: !644, line: 68, baseType: !660, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !676, file: !644, line: 75, baseType: !684, size: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !644, line: 71, size: 192, elements: !685)
!685 = !{!686, !892, !893}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !684, file: !644, line: 72, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !689, line: 66, baseType: !690)
!689 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !691, line: 287, baseType: !692)
!691 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !691, line: 181, size: 1408, elements: !693)
!693 = !{!694, !695, !696, !697, !699, !700, !705, !706, !707, !860, !866, !871, !875, !876, !877, !878, !880, !882, !883, !884, !885, !886, !890, !891}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !692, file: !691, line: 182, baseType: !157, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !692, file: !691, line: 183, baseType: !9, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !692, file: !691, line: 184, baseType: !9, size: 32, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !692, file: !691, line: 185, baseType: !698, size: 16, offset: 128)
!698 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !692, file: !691, line: 186, baseType: !698, size: 16, offset: 144)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !692, file: !691, line: 187, baseType: !701, size: 128, offset: 192)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !691, line: 117, size: 128, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !701, file: !691, line: 118, baseType: !157, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !701, file: !691, line: 119, baseType: !9, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !692, file: !691, line: 188, baseType: !9, size: 32, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !692, file: !691, line: 195, baseType: !4, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !692, file: !691, line: 197, baseType: !708, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !712, !4, !5, !9}
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !161, line: 145, baseType: !73)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !691, line: 569, size: 14912, elements: !714)
!714 = !{!715, !716, !718, !719, !720, !721, !725, !726, !729, !730, !734, !748, !749, !750, !752, !753, !754, !830, !848, !849, !851, !858}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !713, file: !691, line: 571, baseType: !9, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !713, file: !691, line: 576, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !713, file: !691, line: 576, baseType: !717, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !713, file: !691, line: 576, baseType: !717, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !713, file: !691, line: 578, baseType: !9, size: 32, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !713, file: !691, line: 579, baseType: !722, size: 200, offset: 288)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 25)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !713, file: !691, line: 582, baseType: !9, size: 32, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !713, file: !691, line: 583, baseType: !727, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !691, line: 40, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !713, file: !691, line: 585, baseType: !9, size: 32, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !713, file: !691, line: 587, baseType: !731, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !712}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !713, file: !691, line: 590, baseType: !735, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !691, line: 47, size: 256, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !736, file: !691, line: 49, baseType: !735, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !736, file: !691, line: 50, baseType: !9, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !736, file: !691, line: 50, baseType: !9, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !736, file: !691, line: 50, baseType: !9, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !736, file: !691, line: 50, baseType: !9, size: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !736, file: !691, line: 51, baseType: !744, size: 32, offset: 192)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 32, elements: !746)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !691, line: 25, baseType: !139)
!746 = !{!747}
!747 = !DISubrange(count: 1)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !713, file: !691, line: 591, baseType: !9, size: 32, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !713, file: !691, line: 592, baseType: !735, size: 64, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !713, file: !691, line: 593, baseType: !751, size: 64, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !713, file: !691, line: 596, baseType: !9, size: 32, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !713, file: !691, line: 597, baseType: !5, size: 64, offset: 1088)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !713, file: !691, line: 632, baseType: !755, size: 2880, offset: 1152)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !691, line: 599, size: 2880, elements: !756)
!756 = !{!757, !821}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !755, file: !691, line: 622, baseType: !758, size: 1728)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !691, line: 601, size: 1728, elements: !759)
!759 = !{!760, !761, !762, !766, !778, !779, !781, !790, !804, !805, !806, !810, !814, !815, !816, !817, !818, !819, !820}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !758, file: !691, line: 603, baseType: !139, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !758, file: !691, line: 604, baseType: !5, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !758, file: !691, line: 605, baseType: !763, size: 208, offset: 128)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 26)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !758, file: !691, line: 606, baseType: !767, size: 288, offset: 352)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !691, line: 55, size: 288, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !767, file: !691, line: 57, baseType: !9, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !767, file: !691, line: 58, baseType: !9, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !767, file: !691, line: 59, baseType: !9, size: 32, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !767, file: !691, line: 60, baseType: !9, size: 32, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !767, file: !691, line: 61, baseType: !9, size: 32, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !767, file: !691, line: 62, baseType: !9, size: 32, offset: 160)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !767, file: !691, line: 63, baseType: !9, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !767, file: !691, line: 64, baseType: !9, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !767, file: !691, line: 65, baseType: !9, size: 32, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !758, file: !691, line: 607, baseType: !9, size: 32, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !758, file: !691, line: 608, baseType: !780, size: 64, offset: 704)
!780 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !758, file: !691, line: 609, baseType: !782, size: 112, offset: 768)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !691, line: 319, size: 112, elements: !783)
!783 = !{!784, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !782, file: !691, line: 320, baseType: !785, size: 48)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 3)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !782, file: !691, line: 321, baseType: !785, size: 48, offset: 48)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !782, file: !691, line: 322, baseType: !129, size: 16, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !758, file: !691, line: 610, baseType: !791, size: 64, offset: 896)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !161, line: 171, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 163, size: 64, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !792, file: !161, line: 165, baseType: !9, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !792, file: !161, line: 170, baseType: !796, size: 32, offset: 32)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !161, line: 166, size: 32, elements: !797)
!797 = !{!798, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !796, file: !161, line: 168, baseType: !799, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !237, line: 124, baseType: !139)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !796, file: !161, line: 169, baseType: !801, size: 32)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 4)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !758, file: !691, line: 611, baseType: !791, size: 64, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !758, file: !691, line: 612, baseType: !791, size: 64, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !758, file: !691, line: 613, baseType: !807, size: 64, offset: 1088)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 8)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !758, file: !691, line: 614, baseType: !811, size: 192, offset: 1152)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 24)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !758, file: !691, line: 615, baseType: !9, size: 32, offset: 1344)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !758, file: !691, line: 616, baseType: !791, size: 64, offset: 1376)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !758, file: !691, line: 617, baseType: !791, size: 64, offset: 1440)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !758, file: !691, line: 618, baseType: !791, size: 64, offset: 1504)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !758, file: !691, line: 619, baseType: !791, size: 64, offset: 1568)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !758, file: !691, line: 620, baseType: !791, size: 64, offset: 1632)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !758, file: !691, line: 621, baseType: !9, size: 32, offset: 1696)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !755, file: !691, line: 631, baseType: !822, size: 2880)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !691, line: 626, size: 2880, elements: !823)
!823 = !{!824, !828}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !822, file: !691, line: 629, baseType: !825, size: 1920)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1920, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 30)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !822, file: !691, line: 630, baseType: !829, size: 960, offset: 1920)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 960, elements: !826)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !713, file: !691, line: 636, baseType: !831, size: 64, offset: 4032)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !691, line: 93, size: 6336, elements: !833)
!833 = !{!834, !835, !836, !841}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !832, file: !691, line: 94, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !832, file: !691, line: 95, baseType: !9, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !832, file: !691, line: 97, baseType: !837, size: 2048, offset: 128)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 2048, elements: !584)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !832, file: !691, line: 98, baseType: !842, size: 4160, offset: 2176)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !691, line: 74, size: 4160, elements: !843)
!843 = !{!844, !845, !846, !847}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !842, file: !691, line: 75, baseType: !583, size: 2048)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !842, file: !691, line: 76, baseType: !583, size: 2048, offset: 2048)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !842, file: !691, line: 78, baseType: !745, size: 32, offset: 4096)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !842, file: !691, line: 81, baseType: !745, size: 32, offset: 4128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !713, file: !691, line: 637, baseType: !832, size: 6336, offset: 4096)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !713, file: !691, line: 641, baseType: !850, size: 64, offset: 10432)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !713, file: !691, line: 646, baseType: !852, size: 192, offset: 10496)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !691, line: 291, size: 192, elements: !853)
!853 = !{!854, !856, !857}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !852, file: !691, line: 293, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !852, file: !691, line: 294, baseType: !9, size: 32, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !852, file: !691, line: 295, baseType: !717, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !713, file: !691, line: 648, baseType: !859, size: 4224, offset: 10688)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 4224, elements: !786)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !692, file: !691, line: 199, baseType: !861, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!711, !712, !4, !864, !9}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !692, file: !691, line: 202, baseType: !867, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !712, !4, !870, !9}
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !161, line: 114, baseType: !73)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !692, file: !691, line: 203, baseType: !872, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!9, !712, !4}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !692, file: !691, line: 206, baseType: !701, size: 128, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !692, file: !691, line: 207, baseType: !157, size: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !692, file: !691, line: 208, baseType: !9, size: 32, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !692, file: !691, line: 211, baseType: !879, size: 24, offset: 928)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 24, elements: !786)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !692, file: !691, line: 212, baseType: !881, size: 8, offset: 952)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 8, elements: !746)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !692, file: !691, line: 215, baseType: !701, size: 128, offset: 960)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !692, file: !691, line: 218, baseType: !9, size: 32, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !692, file: !691, line: 219, baseType: !663, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !692, file: !691, line: 222, baseType: !712, size: 64, offset: 1216)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !692, file: !691, line: 226, baseType: !887, size: 32, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !161, line: 175, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !889, line: 12, baseType: !9)
!889 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !692, file: !691, line: 228, baseType: !791, size: 64, offset: 1312)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !692, file: !691, line: 229, baseType: !9, size: 32, offset: 1376)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !684, file: !644, line: 73, baseType: !660, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !684, file: !644, line: 74, baseType: !660, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !676, file: !644, line: 83, baseType: !895, size: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !644, line: 77, size: 320, elements: !896)
!896 = !{!897, !899, !900, !901, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !895, file: !644, line: 78, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !895, file: !644, line: 79, baseType: !898, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !895, file: !644, line: 80, baseType: !9, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !895, file: !644, line: 81, baseType: !660, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !895, file: !644, line: 82, baseType: !94, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !13, line: 558, baseType: !624, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !638, file: !13, line: 559, baseType: !9, size: 32, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !638, file: !13, line: 560, baseType: !9, size: 32, offset: 224)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !638, file: !13, line: 562, baseType: !907, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !13, line: 499, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !638, file: !13, line: 563, baseType: !910, size: 64, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !626, file: !13, line: 521, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !13, line: 507, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !637, !4}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !626, file: !13, line: 522, baseType: !917, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !13, line: 510, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !637, !910, !4}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !626, file: !13, line: 523, baseType: !922, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !13, line: 512, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!158, !36}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !626, file: !13, line: 524, baseType: !927, size: 64, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !13, line: 511, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !931, !4}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !626, file: !13, line: 525, baseType: !933, size: 64, offset: 448)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !13, line: 513, baseType: !367)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !626, file: !13, line: 526, baseType: !935, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !13, line: 508, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!9, !637, !9, !9}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !626, file: !13, line: 527, baseType: !940, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !13, line: 509, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !637, !9}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !626, file: !13, line: 528, baseType: !9, size: 32, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !626, file: !13, line: 529, baseType: !946, size: 80, offset: 672)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 80, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 10)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !13, line: 549, baseType: !4, size: 64, offset: 64)
!950 = !DILocalVariable(name: "mt", scope: !611, file: !1, line: 239, type: !624)
!951 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !952)
!952 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !953)
!953 = distinct !DILocation(line: 210, column: 13, scope: !511)
!954 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !955)
!955 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !956)
!956 = distinct !DILocation(line: 207, column: 13, scope: !511)
!957 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !958)
!958 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !959)
!959 = distinct !DILocation(line: 192, column: 17, scope: !494)
!960 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !961)
!961 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !962)
!962 = distinct !DILocation(line: 191, column: 17, scope: !494)
!963 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !964)
!964 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !965)
!965 = distinct !DILocation(line: 176, column: 17, scope: !966)
!966 = distinct !DILexicalBlock(scope: !479, file: !1, line: 163, column: 34)
!967 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !968)
!968 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !969)
!969 = distinct !DILocation(line: 172, column: 21, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 170, column: 24)
!971 = distinct !DILexicalBlock(scope: !966, file: !1, line: 168, column: 21)
!972 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !973)
!973 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !974)
!974 = distinct !DILocation(line: 169, column: 21, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !1, line: 168, column: 35)
!976 = !DILocation(line: 121, column: 31, scope: !332)
!977 = !DILocation(line: 121, column: 41, scope: !332)
!978 = !DILocation(line: 121, column: 64, scope: !332)
!979 = !DILocation(line: 121, column: 78, scope: !332)
!980 = !DILocation(line: 122, column: 5, scope: !332)
!981 = !DILocation(line: 122, column: 20, scope: !332)
!982 = !DILocation(line: 122, column: 14, scope: !332)
!983 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !984)
!984 = distinct !DILocation(line: 123, column: 5, scope: !332)
!985 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !984)
!986 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !984)
!987 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !984)
!988 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !984)
!989 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !984)
!990 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !984)
!991 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !984)
!992 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !984)
!993 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !984)
!994 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !984)
!995 = !DILocation(line: 124, column: 28, scope: !332)
!996 = !DILocation(line: 124, column: 15, scope: !332)
!997 = !DILocation(line: 125, column: 5, scope: !332)
!998 = !DILocation(line: 125, column: 10, scope: !332)
!999 = !DILocation(line: 128, column: 12, scope: !389)
!1000 = !DILocation(line: 128, column: 9, scope: !332)
!1001 = !DILocation(line: 129, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !389, file: !1, line: 128, column: 32)
!1003 = !DILocation(line: 130, column: 5, scope: !1002)
!1004 = !DILocation(line: 131, column: 32, scope: !387)
!1005 = !DILocation(line: 131, column: 27, scope: !387)
!1006 = !DILocation(line: 132, column: 9, scope: !387)
!1007 = !DILocation(line: 132, column: 23, scope: !387)
!1008 = !DILocation(line: 133, column: 15, scope: !387)
!1009 = !DILocation(line: 133, column: 9, scope: !387)
!1010 = !DILocation(line: 134, column: 28, scope: !451)
!1011 = !DILocation(line: 134, column: 19, scope: !451)
!1012 = !DILocation(line: 135, column: 13, scope: !451)
!1013 = !DILocation(line: 136, column: 13, scope: !451)
!1014 = distinct !{!1014, !1009, !1015}
!1015 = !DILocation(line: 137, column: 9, scope: !387)
!1016 = !DILocation(line: 138, column: 9, scope: !387)
!1017 = !DILocation(line: 139, column: 5, scope: !388)
!1018 = !DILocation(line: 139, column: 5, scope: !387)
!1019 = !DILocation(line: 140, column: 31, scope: !453)
!1020 = !DILocation(line: 140, column: 26, scope: !453)
!1021 = !DILocation(line: 142, column: 25, scope: !453)
!1022 = !DILocation(line: 141, column: 13, scope: !453)
!1023 = !DILocation(line: 142, column: 48, scope: !453)
!1024 = !DILocation(line: 142, column: 9, scope: !453)
!1025 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 143, column: 37, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !453, file: !1, line: 142, column: 57)
!1028 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1026)
!1029 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1026)
!1030 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1026)
!1031 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1026)
!1032 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1026)
!1033 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1026)
!1034 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1026)
!1035 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1026)
!1036 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1026)
!1037 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1026)
!1038 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1026)
!1039 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1026)
!1040 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1026)
!1041 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1026)
!1042 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1026)
!1043 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1026)
!1044 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1026)
!1045 = !DILocation(line: 0, scope: !247, inlinedAt: !1026)
!1046 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1026)
!1047 = !DILocation(line: 143, column: 13, scope: !1027)
!1048 = !DILocation(line: 144, column: 13, scope: !1027)
!1049 = distinct !{!1049, !1024, !1050}
!1050 = !DILocation(line: 145, column: 9, scope: !453)
!1051 = !DILocation(line: 146, column: 9, scope: !453)
!1052 = !DILocation(line: 147, column: 5, scope: !453)
!1053 = !DILocation(line: 148, column: 9, scope: !476)
!1054 = !DILocation(line: 148, column: 23, scope: !476)
!1055 = !DILocation(line: 150, column: 16, scope: !480)
!1056 = !DILocation(line: 150, column: 13, scope: !476)
!1057 = !DILocation(line: 151, column: 36, scope: !479)
!1058 = !DILocation(line: 151, column: 28, scope: !479)
!1059 = !DILocation(line: 152, column: 13, scope: !479)
!1060 = !DILocation(line: 153, column: 13, scope: !479)
!1061 = !DILocation(line: 154, column: 13, scope: !479)
!1062 = !DILocation(line: 155, column: 13, scope: !479)
!1063 = !DILocation(line: 158, column: 20, scope: !479)
!1064 = !DILocation(line: 152, column: 28, scope: !479)
!1065 = !DILocation(line: 158, column: 18, scope: !479)
!1066 = !{!231, !231, i64 0}
!1067 = !DILocation(line: 159, column: 13, scope: !479)
!1068 = !DILocation(line: 160, column: 20, scope: !479)
!1069 = !DILocation(line: 152, column: 35, scope: !479)
!1070 = !DILocation(line: 160, column: 18, scope: !479)
!1071 = !DILocation(line: 161, column: 13, scope: !479)
!1072 = !DILocation(line: 163, column: 13, scope: !479)
!1073 = !DILocation(line: 153, column: 28, scope: !479)
!1074 = !DILocation(line: 154, column: 26, scope: !479)
!1075 = !DILocation(line: 155, column: 23, scope: !479)
!1076 = !DILocation(line: 164, column: 17, scope: !966)
!1077 = !DILocation(line: 165, column: 37, scope: !966)
!1078 = !DILocation(line: 165, column: 25, scope: !966)
!1079 = !DILocation(line: 156, column: 20, scope: !479)
!1080 = !DILocation(line: 167, column: 17, scope: !966)
!1081 = !DILocation(line: 168, column: 21, scope: !971)
!1082 = !DILocation(line: 168, column: 26, scope: !971)
!1083 = !DILocation(line: 168, column: 21, scope: !966)
!1084 = !DILocation(line: 169, column: 46, scope: !975)
!1085 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !974)
!1086 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !974)
!1087 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !974)
!1088 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !974)
!1089 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !973)
!1090 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !973)
!1091 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !973)
!1092 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !973)
!1093 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !973)
!1094 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !973)
!1095 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !973)
!1096 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !973)
!1097 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !973)
!1098 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !973)
!1099 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !973)
!1100 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !973)
!1101 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !973)
!1102 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !974)
!1103 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !974)
!1104 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !974)
!1105 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !974)
!1106 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !974)
!1107 = !DILocation(line: 170, column: 17, scope: !975)
!1108 = !DILocation(line: 171, column: 47, scope: !970)
!1109 = !{!1110, !1110, i64 0}
!1110 = !{!"long long", !204, i64 0}
!1111 = !DILocation(line: 171, column: 21, scope: !970)
!1112 = !DILocation(line: 172, column: 45, scope: !970)
!1113 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !969)
!1114 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !969)
!1115 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !969)
!1116 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !969)
!1117 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !969)
!1118 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !968)
!1119 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !968)
!1120 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !968)
!1121 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !968)
!1122 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !968)
!1123 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !968)
!1124 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !968)
!1125 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !968)
!1126 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !968)
!1127 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !968)
!1128 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !968)
!1129 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !968)
!1130 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !968)
!1131 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !968)
!1132 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !968)
!1133 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !969)
!1134 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !969)
!1135 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !969)
!1136 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !969)
!1137 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !969)
!1138 = !DILocation(line: 175, column: 17, scope: !966)
!1139 = !DILocation(line: 176, column: 41, scope: !966)
!1140 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !965)
!1141 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !965)
!1142 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !965)
!1143 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !965)
!1144 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !965)
!1145 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !964)
!1146 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !964)
!1147 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !964)
!1148 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !964)
!1149 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !964)
!1150 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !964)
!1151 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !964)
!1152 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !964)
!1153 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !964)
!1154 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !964)
!1155 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !964)
!1156 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !964)
!1157 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !964)
!1158 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !964)
!1159 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !964)
!1160 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !965)
!1161 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !965)
!1162 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !965)
!1163 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !965)
!1164 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !965)
!1165 = !DILocation(line: 177, column: 17, scope: !966)
!1166 = !DILocation(line: 178, column: 17, scope: !966)
!1167 = !DILocation(line: 163, column: 20, scope: !479)
!1168 = !DILocation(line: 163, column: 25, scope: !479)
!1169 = distinct !{!1169, !1072, !1170}
!1170 = !DILocation(line: 179, column: 13, scope: !479)
!1171 = !DILocation(line: 180, column: 9, scope: !480)
!1172 = !DILocation(line: 180, column: 9, scope: !479)
!1173 = !DILocation(line: 181, column: 27, scope: !488)
!1174 = !DILocation(line: 181, column: 19, scope: !488)
!1175 = !DILocation(line: 182, column: 52, scope: !488)
!1176 = !{!1177, !231, i64 0}
!1177 = !{!"zset", !231, i64 0, !231, i64 8}
!1178 = !DILocation(line: 182, column: 32, scope: !488)
!1179 = !DILocation(line: 182, column: 27, scope: !488)
!1180 = !DILocation(line: 185, column: 25, scope: !488)
!1181 = !DILocation(line: 183, column: 24, scope: !488)
!1182 = !DILocation(line: 185, column: 39, scope: !488)
!1183 = !DILocation(line: 185, column: 13, scope: !488)
!1184 = !DILocation(line: 186, column: 30, scope: !494)
!1185 = !{!1186, !231, i64 0}
!1186 = !{!"dictEntry", !231, i64 0, !204, i64 8, !231, i64 16}
!1187 = !DILocation(line: 186, column: 21, scope: !494)
!1188 = !DILocation(line: 187, column: 33, scope: !494)
!1189 = !DILocation(line: 187, column: 25, scope: !494)
!1190 = !DILocation(line: 189, column: 50, scope: !494)
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"double", !204, i64 0}
!1193 = !DILocation(line: 189, column: 17, scope: !494)
!1194 = !DILocation(line: 190, column: 17, scope: !494)
!1195 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 191, column: 44, scope: !494)
!1197 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1196)
!1198 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1196)
!1199 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1196)
!1200 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1196)
!1201 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1196)
!1202 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1196)
!1203 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1196)
!1204 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1196)
!1205 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1196)
!1206 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1196)
!1207 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1196)
!1208 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1196)
!1209 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1196)
!1210 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1196)
!1211 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1196)
!1212 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1196)
!1213 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1196)
!1214 = !DILocation(line: 0, scope: !247, inlinedAt: !1196)
!1215 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1196)
!1216 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !962)
!1217 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !962)
!1218 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !962)
!1219 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !962)
!1220 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !962)
!1221 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !961)
!1222 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !961)
!1223 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !961)
!1224 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !961)
!1225 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !961)
!1226 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !961)
!1227 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !961)
!1228 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !961)
!1229 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !961)
!1230 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !961)
!1231 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !961)
!1232 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !961)
!1233 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !961)
!1234 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !961)
!1235 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !961)
!1236 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !962)
!1237 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !962)
!1238 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !962)
!1239 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !962)
!1240 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !962)
!1241 = !DILocation(line: 192, column: 41, scope: !494)
!1242 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !959)
!1243 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !959)
!1244 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !959)
!1245 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !959)
!1246 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !959)
!1247 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !958)
!1248 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !958)
!1249 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !958)
!1250 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !958)
!1251 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !958)
!1252 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !958)
!1253 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !958)
!1254 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !958)
!1255 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !958)
!1256 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !958)
!1257 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !958)
!1258 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !958)
!1259 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !958)
!1260 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !958)
!1261 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !958)
!1262 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !959)
!1263 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !959)
!1264 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !959)
!1265 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !959)
!1266 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !959)
!1267 = !DILocation(line: 193, column: 17, scope: !494)
!1268 = distinct !{!1268, !1183, !1269}
!1269 = !DILocation(line: 194, column: 13, scope: !488)
!1270 = !DILocation(line: 195, column: 13, scope: !488)
!1271 = !DILocation(line: 197, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !489, file: !1, line: 196, column: 16)
!1273 = !DILocation(line: 199, column: 5, scope: !477)
!1274 = !DILocation(line: 199, column: 5, scope: !476)
!1275 = !DILocation(line: 200, column: 32, scope: !498)
!1276 = !DILocation(line: 200, column: 27, scope: !498)
!1277 = !DILocation(line: 201, column: 16, scope: !498)
!1278 = !DILocation(line: 201, column: 33, scope: !498)
!1279 = !DILocation(line: 201, column: 9, scope: !498)
!1280 = !DILocation(line: 202, column: 13, scope: !511)
!1281 = !DILocation(line: 202, column: 27, scope: !511)
!1282 = !DILocation(line: 205, column: 13, scope: !511)
!1283 = !DILocation(line: 206, column: 22, scope: !511)
!1284 = !DILocation(line: 203, column: 17, scope: !511)
!1285 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 207, column: 40, scope: !511)
!1287 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1286)
!1288 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1286)
!1289 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1286)
!1290 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1286)
!1291 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1286)
!1292 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1286)
!1293 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1286)
!1294 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1286)
!1295 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1286)
!1296 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1286)
!1297 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1286)
!1298 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1286)
!1299 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1286)
!1300 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1286)
!1301 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1286)
!1302 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1286)
!1303 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1286)
!1304 = !DILocation(line: 0, scope: !247, inlinedAt: !1286)
!1305 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1286)
!1306 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !956)
!1307 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !956)
!1308 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !956)
!1309 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !956)
!1310 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !956)
!1311 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !955)
!1312 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !955)
!1313 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !955)
!1314 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !955)
!1315 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !955)
!1316 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !955)
!1317 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !955)
!1318 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !955)
!1319 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !955)
!1320 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !955)
!1321 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !955)
!1322 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !955)
!1323 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !955)
!1324 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !955)
!1325 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !955)
!1326 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !956)
!1327 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !956)
!1328 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !956)
!1329 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !956)
!1330 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !956)
!1331 = !DILocation(line: 208, column: 13, scope: !511)
!1332 = !DILocation(line: 209, column: 22, scope: !511)
!1333 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 210, column: 40, scope: !511)
!1335 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1334)
!1336 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1334)
!1337 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1334)
!1338 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1334)
!1339 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1334)
!1340 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1334)
!1341 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1334)
!1342 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1334)
!1343 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1334)
!1344 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1334)
!1345 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1334)
!1346 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1334)
!1347 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1334)
!1348 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1334)
!1349 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1334)
!1350 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1334)
!1351 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1334)
!1352 = !DILocation(line: 0, scope: !247, inlinedAt: !1334)
!1353 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1334)
!1354 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !953)
!1355 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !953)
!1356 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !953)
!1357 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !953)
!1358 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !953)
!1359 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !952)
!1360 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !952)
!1361 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !952)
!1362 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !952)
!1363 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !952)
!1364 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !952)
!1365 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !952)
!1366 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !952)
!1367 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !952)
!1368 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !952)
!1369 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !952)
!1370 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !952)
!1371 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !952)
!1372 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !952)
!1373 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !952)
!1374 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !953)
!1375 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !953)
!1376 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !953)
!1377 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !953)
!1378 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !953)
!1379 = !DILocation(line: 211, column: 13, scope: !511)
!1380 = !DILocation(line: 212, column: 13, scope: !511)
!1381 = !DILocation(line: 213, column: 9, scope: !498)
!1382 = distinct !{!1382, !1279, !1381}
!1383 = !DILocation(line: 214, column: 9, scope: !498)
!1384 = !DILocation(line: 215, column: 5, scope: !498)
!1385 = !DILocation(line: 216, column: 9, scope: !514)
!1386 = !DILocation(line: 217, column: 36, scope: !514)
!1387 = !DILocation(line: 216, column: 24, scope: !514)
!1388 = !DILocation(line: 217, column: 9, scope: !514)
!1389 = !DILocation(line: 218, column: 9, scope: !514)
!1390 = !DILocation(line: 219, column: 9, scope: !514)
!1391 = !DILocation(line: 218, column: 18, scope: !514)
!1392 = !DILocation(line: 219, column: 17, scope: !514)
!1393 = !DILocation(line: 221, column: 15, scope: !514)
!1394 = !DILocation(line: 221, column: 9, scope: !514)
!1395 = !DILocation(line: 222, column: 36, scope: !604)
!1396 = !DILocation(line: 222, column: 58, scope: !604)
!1397 = !{!1398, !264, i64 0}
!1398 = !{!"streamID", !264, i64 0, !264, i64 8}
!1399 = !DILocation(line: 222, column: 64, scope: !604)
!1400 = !{!1398, !264, i64 8}
!1401 = !DILocation(line: 222, column: 26, scope: !604)
!1402 = !DILocation(line: 222, column: 17, scope: !604)
!1403 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 223, column: 37, scope: !604)
!1405 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1404)
!1406 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1404)
!1407 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1404)
!1408 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1404)
!1409 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1404)
!1410 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1404)
!1411 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1404)
!1412 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1404)
!1413 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1404)
!1414 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1404)
!1415 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1404)
!1416 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1404)
!1417 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1404)
!1418 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1404)
!1419 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1404)
!1420 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1404)
!1421 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1404)
!1422 = !DILocation(line: 0, scope: !247, inlinedAt: !1404)
!1423 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1404)
!1424 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 223, column: 13, scope: !604)
!1426 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !1425)
!1427 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !1425)
!1428 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !1425)
!1429 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !1425)
!1430 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !1425)
!1431 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !1425)
!1432 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !1425)
!1433 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !1425)
!1434 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !1425)
!1435 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !1425)
!1436 = !DILocation(line: 224, column: 13, scope: !604)
!1437 = !DILocation(line: 226, column: 28, scope: !604)
!1438 = !DILocation(line: 226, column: 13, scope: !604)
!1439 = distinct !{!1439, !1394, !1440}
!1440 = !DILocation(line: 234, column: 9, scope: !514)
!1441 = !DILocation(line: 227, column: 17, scope: !606)
!1442 = !DILocation(line: 228, column: 17, scope: !606)
!1443 = !DILocation(line: 227, column: 32, scope: !606)
!1444 = !DILocation(line: 227, column: 40, scope: !606)
!1445 = !DILocation(line: 228, column: 25, scope: !606)
!1446 = !DILocation(line: 228, column: 36, scope: !606)
!1447 = !DILocation(line: 229, column: 17, scope: !606)
!1448 = !DILocation(line: 231, column: 34, scope: !606)
!1449 = !DILocation(line: 231, column: 40, scope: !606)
!1450 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 231, column: 17, scope: !606)
!1452 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !1451)
!1453 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !1451)
!1454 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !1451)
!1455 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !1451)
!1456 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !1451)
!1457 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !1451)
!1458 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !1451)
!1459 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !1451)
!1460 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !1451)
!1461 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !1451)
!1462 = !DILocation(line: 232, column: 34, scope: !606)
!1463 = !DILocation(line: 232, column: 40, scope: !606)
!1464 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 232, column: 17, scope: !606)
!1466 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !1465)
!1467 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !1465)
!1468 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !1465)
!1469 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !1465)
!1470 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !1465)
!1471 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !1465)
!1472 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !1465)
!1473 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !1465)
!1474 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !1465)
!1475 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !1465)
!1476 = !DILocation(line: 233, column: 13, scope: !604)
!1477 = distinct !{!1477, !1438, !1476}
!1478 = !DILocation(line: 235, column: 9, scope: !514)
!1479 = !DILocation(line: 236, column: 5, scope: !515)
!1480 = !DILocation(line: 236, column: 5, scope: !514)
!1481 = !DILocation(line: 237, column: 9, scope: !611)
!1482 = !DILocation(line: 238, column: 30, scope: !611)
!1483 = !DILocation(line: 238, column: 22, scope: !611)
!1484 = !DILocation(line: 239, column: 30, scope: !611)
!1485 = !{!1486, !231, i64 0}
!1486 = !{!"moduleValue", !231, i64 0, !231, i64 8}
!1487 = !DILocation(line: 239, column: 21, scope: !611)
!1488 = !DILocation(line: 240, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !611, file: !1, line: 240, column: 9)
!1490 = !DILocation(line: 241, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !611, file: !1, line: 241, column: 13)
!1492 = !{!1493, !231, i64 48}
!1493 = !{!"RedisModuleType", !264, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !231, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !230, i64 80, !204, i64 84}
!1494 = !DILocation(line: 241, column: 13, scope: !1491)
!1495 = !DILocation(line: 241, column: 13, scope: !611)
!1496 = !DILocation(line: 242, column: 32, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 241, column: 25)
!1498 = !{!1486, !231, i64 8}
!1499 = !DILocation(line: 237, column: 27, scope: !611)
!1500 = !DILocation(line: 242, column: 13, scope: !1497)
!1501 = !DILocation(line: 243, column: 13, scope: !1497)
!1502 = !DILocation(line: 244, column: 9, scope: !1497)
!1503 = !DILocation(line: 245, column: 5, scope: !612)
!1504 = !DILocation(line: 246, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !612, file: !1, line: 245, column: 12)
!1506 = !DILocation(line: 249, column: 20, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !332, file: !1, line: 249, column: 9)
!1508 = !DILocation(line: 249, column: 9, scope: !332)
!1509 = !DILocation(line: 249, column: 27, scope: !1507)
!1510 = !DILocation(line: 250, column: 1, scope: !332)
!1511 = distinct !DISubprogram(name: "_serverAssert", scope: !1, file: !1, line: 635, type: !1512, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !864, !864, !9}
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "estr", arg: 1, scope: !1511, file: !1, line: 635, type: !864)
!1516 = !DILocalVariable(name: "file", arg: 2, scope: !1511, file: !1, line: 635, type: !864)
!1517 = !DILocalVariable(name: "line", arg: 3, scope: !1511, file: !1, line: 635, type: !9)
!1518 = !DILocation(line: 635, column: 32, scope: !1511)
!1519 = !DILocation(line: 635, column: 50, scope: !1511)
!1520 = !DILocation(line: 635, column: 60, scope: !1511)
!1521 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !1524)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 727, column: 9)
!1523 = distinct !DISubprogram(name: "bugReportStart", scope: !1, file: !1, line: 726, type: !839, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1524 = distinct !DILocation(line: 636, column: 5, scope: !1511)
!1525 = !{!1526, !230, i64 3132}
!1526 = !{!"redisServer", !230, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !230, i64 32, !230, i64 36, !230, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !230, i64 80, !230, i64 84, !230, i64 88, !230, i64 92, !231, i64 96, !231, i64 104, !230, i64 112, !230, i64 116, !204, i64 120, !230, i64 164, !264, i64 168, !230, i64 176, !231, i64 184, !231, i64 192, !231, i64 200, !204, i64 208, !230, i64 216, !230, i64 220, !204, i64 224, !230, i64 352, !231, i64 360, !230, i64 368, !204, i64 372, !230, i64 436, !230, i64 440, !204, i64 444, !230, i64 508, !231, i64 512, !231, i64 520, !231, i64 528, !231, i64 536, !231, i64 544, !231, i64 552, !231, i64 560, !230, i64 568, !1110, i64 576, !204, i64 584, !231, i64 840, !264, i64 848, !230, i64 856, !230, i64 860, !264, i64 864, !264, i64 872, !264, i64 880, !264, i64 888, !231, i64 896, !231, i64 904, !231, i64 912, !231, i64 920, !231, i64 928, !231, i64 936, !231, i64 944, !231, i64 952, !231, i64 960, !231, i64 968, !231, i64 976, !231, i64 984, !231, i64 992, !264, i64 1000, !1110, i64 1008, !1110, i64 1016, !1110, i64 1024, !1192, i64 1032, !1110, i64 1040, !1110, i64 1048, !1110, i64 1056, !1110, i64 1064, !1110, i64 1072, !1110, i64 1080, !1110, i64 1088, !1110, i64 1096, !1110, i64 1104, !264, i64 1112, !1110, i64 1120, !1192, i64 1128, !1110, i64 1136, !1110, i64 1144, !1110, i64 1152, !1110, i64 1160, !231, i64 1168, !1110, i64 1176, !1110, i64 1184, !264, i64 1192, !1527, i64 1200, !1110, i64 1240, !1110, i64 1248, !264, i64 1256, !264, i64 1264, !204, i64 1272, !230, i64 1728, !230, i64 1732, !230, i64 1736, !230, i64 1740, !230, i64 1744, !264, i64 1752, !230, i64 1760, !230, i64 1764, !230, i64 1768, !230, i64 1772, !264, i64 1776, !264, i64 1784, !230, i64 1792, !230, i64 1796, !230, i64 1800, !230, i64 1804, !204, i64 1808, !230, i64 1880, !230, i64 1884, !231, i64 1888, !230, i64 1896, !230, i64 1900, !264, i64 1904, !264, i64 1912, !264, i64 1920, !264, i64 1928, !230, i64 1936, !230, i64 1940, !231, i64 1944, !231, i64 1952, !230, i64 1960, !230, i64 1964, !264, i64 1968, !264, i64 1976, !264, i64 1984, !264, i64 1992, !230, i64 2000, !264, i64 2008, !230, i64 2016, !230, i64 2020, !230, i64 2024, !230, i64 2028, !230, i64 2032, !230, i64 2036, !230, i64 2040, !230, i64 2044, !230, i64 2048, !230, i64 2052, !230, i64 2056, !230, i64 2060, !230, i64 2064, !231, i64 2072, !1110, i64 2080, !1110, i64 2088, !230, i64 2096, !231, i64 2104, !230, i64 2112, !231, i64 2120, !230, i64 2128, !230, i64 2132, !264, i64 2136, !264, i64 2144, !264, i64 2152, !264, i64 2160, !230, i64 2168, !230, i64 2172, !230, i64 2176, !230, i64 2180, !230, i64 2184, !230, i64 2188, !204, i64 2192, !1528, i64 2200, !1529, i64 2224, !231, i64 2240, !230, i64 2248, !231, i64 2256, !230, i64 2264, !204, i64 2268, !204, i64 2309, !1110, i64 2352, !1110, i64 2360, !230, i64 2368, !230, i64 2372, !231, i64 2376, !1110, i64 2384, !1110, i64 2392, !1110, i64 2400, !1110, i64 2408, !264, i64 2416, !264, i64 2424, !230, i64 2432, !230, i64 2436, !230, i64 2440, !230, i64 2444, !230, i64 2448, !231, i64 2456, !231, i64 2464, !230, i64 2472, !230, i64 2476, !231, i64 2480, !231, i64 2488, !230, i64 2496, !230, i64 2500, !264, i64 2504, !264, i64 2512, !264, i64 2520, !230, i64 2528, !230, i64 2532, !231, i64 2536, !264, i64 2544, !230, i64 2552, !230, i64 2556, !230, i64 2560, !264, i64 2568, !230, i64 2576, !230, i64 2580, !230, i64 2584, !231, i64 2592, !204, i64 2600, !1110, i64 2648, !230, i64 2656, !231, i64 2664, !231, i64 2672, !230, i64 2680, !231, i64 2688, !230, i64 2696, !230, i64 2700, !1110, i64 2704, !230, i64 2712, !230, i64 2716, !230, i64 2720, !230, i64 2724, !1110, i64 2728, !230, i64 2736, !204, i64 2740, !231, i64 2768, !231, i64 2776, !230, i64 2784, !230, i64 2788, !230, i64 2792, !230, i64 2796, !264, i64 2800, !264, i64 2808, !264, i64 2816, !264, i64 2824, !264, i64 2832, !264, i64 2840, !264, i64 2848, !264, i64 2856, !230, i64 2864, !230, i64 2868, !264, i64 2872, !264, i64 2880, !230, i64 2888, !1110, i64 2896, !231, i64 2904, !231, i64 2912, !230, i64 2920, !230, i64 2924, !1110, i64 2928, !231, i64 2936, !231, i64 2944, !230, i64 2952, !230, i64 2956, !230, i64 2960, !230, i64 2964, !231, i64 2968, !230, i64 2976, !230, i64 2980, !230, i64 2984, !231, i64 2992, !231, i64 3000, !231, i64 3008, !231, i64 3016, !1110, i64 3024, !1110, i64 3032, !1110, i64 3040, !230, i64 3048, !230, i64 3052, !230, i64 3056, !230, i64 3060, !230, i64 3064, !230, i64 3068, !230, i64 3072, !230, i64 3076, !230, i64 3080, !230, i64 3084, !230, i64 3088, !1110, i64 3096, !231, i64 3104, !231, i64 3112, !231, i64 3120, !230, i64 3128, !230, i64 3132, !230, i64 3136, !264, i64 3144, !231, i64 3152, !231, i64 3160, !231, i64 3168}
!1527 = !{!"malloc_stats", !264, i64 0, !264, i64 8, !264, i64 16, !264, i64 24, !264, i64 32}
!1528 = !{!"", !230, i64 0, !264, i64 8, !1110, i64 16}
!1529 = !{!"redisOpArray", !231, i64 0, !230, i64 8}
!1530 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !1524)
!1531 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !1524)
!1532 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !1524)
!1533 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 727, column: 39)
!1534 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !1524)
!1535 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !1524)
!1536 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !1524)
!1537 = !DILocation(line: 637, column: 5, scope: !1511)
!1538 = !DILocation(line: 638, column: 5, scope: !1511)
!1539 = !DILocation(line: 645, column: 18, scope: !1511)
!1540 = !DILocation(line: 646, column: 1, scope: !1511)
!1541 = distinct !DISubprogram(name: "_serverPanic", scope: !1, file: !1, line: 708, type: !1542, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !864, !9, !864, null}
!1544 = !{!1545, !1546, !1547, !1548, !1560}
!1545 = !DILocalVariable(name: "file", arg: 1, scope: !1541, file: !1, line: 708, type: !864)
!1546 = !DILocalVariable(name: "line", arg: 2, scope: !1541, file: !1, line: 708, type: !9)
!1547 = !DILocalVariable(name: "msg", arg: 3, scope: !1541, file: !1, line: 708, type: !864)
!1548 = !DILocalVariable(name: "ap", scope: !1541, file: !1, line: 709, type: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !689, line: 46, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1551, line: 51, baseType: !1552)
!1551 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 709, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1554, size: 192, elements: !746)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 709, size: 192, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1559}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1554, file: !1, line: 709, baseType: !139, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1554, file: !1, line: 709, baseType: !139, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1554, file: !1, line: 709, baseType: !4, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1554, file: !1, line: 709, baseType: !4, size: 64, offset: 128)
!1560 = !DILocalVariable(name: "fmtmsg", scope: !1541, file: !1, line: 711, type: !1561)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 256)
!1564 = !DILocation(line: 708, column: 31, scope: !1541)
!1565 = !DILocation(line: 708, column: 41, scope: !1541)
!1566 = !DILocation(line: 708, column: 59, scope: !1541)
!1567 = !DILocation(line: 709, column: 5, scope: !1541)
!1568 = !DILocation(line: 709, column: 13, scope: !1541)
!1569 = !DILocation(line: 710, column: 5, scope: !1541)
!1570 = !DILocation(line: 711, column: 5, scope: !1541)
!1571 = !DILocation(line: 711, column: 10, scope: !1541)
!1572 = !DILocation(line: 712, column: 5, scope: !1541)
!1573 = !DILocation(line: 713, column: 5, scope: !1541)
!1574 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 715, column: 5, scope: !1541)
!1576 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !1575)
!1577 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !1575)
!1578 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !1575)
!1579 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !1575)
!1580 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !1575)
!1581 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !1575)
!1582 = !DILocation(line: 716, column: 5, scope: !1541)
!1583 = !DILocation(line: 717, column: 5, scope: !1541)
!1584 = !DILocation(line: 718, column: 5, scope: !1541)
!1585 = !DILocation(line: 722, column: 5, scope: !1541)
!1586 = !DILocation(line: 723, column: 18, scope: !1541)
!1587 = !DILocation(line: 724, column: 1, scope: !1541)
!1588 = distinct !DISubprogram(name: "computeDatasetDigest", scope: !1, file: !1, line: 258, type: !1589, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !157}
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1602, !1604, !1605}
!1592 = !DILocalVariable(name: "final", arg: 1, scope: !1588, file: !1, line: 258, type: !157)
!1593 = !DILocalVariable(name: "digest", scope: !1588, file: !1, line: 259, type: !182)
!1594 = !DILocalVariable(name: "di", scope: !1588, file: !1, line: 260, type: !463)
!1595 = !DILocalVariable(name: "de", scope: !1588, file: !1, line: 261, type: !60)
!1596 = !DILocalVariable(name: "j", scope: !1588, file: !1, line: 262, type: !9)
!1597 = !DILocalVariable(name: "aux", scope: !1588, file: !1, line: 263, type: !137)
!1598 = !DILocalVariable(name: "db", scope: !1599, file: !1, line: 268, type: !335)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 267, column: 40)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 267, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 267, column: 5)
!1602 = !DILocalVariable(name: "key", scope: !1603, file: !1, line: 280, type: !94)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 279, column: 44)
!1604 = !DILocalVariable(name: "keyobj", scope: !1603, file: !1, line: 281, type: !212)
!1605 = !DILocalVariable(name: "o", scope: !1603, file: !1, line: 281, type: !212)
!1606 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 287, column: 13, scope: !1603)
!1609 = !DILocation(line: 258, column: 42, scope: !1588)
!1610 = !DILocation(line: 259, column: 5, scope: !1588)
!1611 = !DILocation(line: 259, column: 19, scope: !1588)
!1612 = !DILocation(line: 260, column: 19, scope: !1588)
!1613 = !DILocation(line: 263, column: 5, scope: !1588)
!1614 = !DILocation(line: 265, column: 5, scope: !1588)
!1615 = !DILocation(line: 262, column: 9, scope: !1588)
!1616 = !DILocation(line: 267, column: 28, scope: !1600)
!1617 = !{!1526, !230, i64 1792}
!1618 = !DILocation(line: 267, column: 19, scope: !1600)
!1619 = !DILocation(line: 267, column: 5, scope: !1601)
!1620 = !DILocation(line: 268, column: 30, scope: !1599)
!1621 = !{!1526, !231, i64 48}
!1622 = !DILocation(line: 268, column: 32, scope: !1599)
!1623 = !DILocation(line: 268, column: 18, scope: !1599)
!1624 = !DILocation(line: 270, column: 13, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 270, column: 13)
!1626 = !{!1627, !231, i64 0}
!1627 = !{!"redisDb", !231, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !230, i64 40, !1110, i64 48, !231, i64 56}
!1628 = !{!1629, !264, i64 24}
!1629 = !{!"dictht", !231, i64 0, !264, i64 8, !264, i64 16, !264, i64 24}
!1630 = !DILocation(line: 270, column: 32, scope: !1625)
!1631 = !DILocation(line: 270, column: 13, scope: !1599)
!1632 = !DILocation(line: 271, column: 14, scope: !1599)
!1633 = !DILocation(line: 275, column: 15, scope: !1599)
!1634 = !DILocation(line: 263, column: 14, scope: !1588)
!1635 = !DILocation(line: 275, column: 13, scope: !1599)
!1636 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 276, column: 9, scope: !1599)
!1638 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !1637)
!1639 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !1637)
!1640 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !1637)
!1641 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !1637)
!1642 = !DILocation(line: 101, column: 5, scope: !271, inlinedAt: !1637)
!1643 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !1637)
!1644 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !1637)
!1645 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !1637)
!1646 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !1637)
!1647 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !1637)
!1648 = !DILocation(line: 279, column: 21, scope: !1599)
!1649 = !DILocation(line: 261, column: 16, scope: !1588)
!1650 = !DILocation(line: 279, column: 35, scope: !1599)
!1651 = !DILocation(line: 279, column: 9, scope: !1599)
!1652 = !DILocation(line: 283, column: 13, scope: !1603)
!1653 = !DILocation(line: 284, column: 19, scope: !1603)
!1654 = !DILocation(line: 280, column: 17, scope: !1603)
!1655 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 285, column: 45, scope: !1603)
!1657 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1656)
!1658 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1656)
!1659 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1656)
!1660 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1656)
!1661 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1656)
!1662 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1656)
!1663 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1656)
!1664 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1656)
!1665 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1656)
!1666 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1656)
!1667 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1656)
!1668 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1656)
!1669 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1656)
!1670 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1656)
!1671 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1656)
!1672 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1656)
!1673 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1656)
!1674 = !DILocation(line: 0, scope: !247, inlinedAt: !1656)
!1675 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1656)
!1676 = !DILocation(line: 285, column: 22, scope: !1603)
!1677 = !DILocation(line: 281, column: 19, scope: !1603)
!1678 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 287, column: 34, scope: !1603)
!1680 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1679)
!1681 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1679)
!1682 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1679)
!1683 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1679)
!1684 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1679)
!1685 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1679)
!1686 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1679)
!1687 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1679)
!1688 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1679)
!1689 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1679)
!1690 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1679)
!1691 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1679)
!1692 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1679)
!1693 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1679)
!1694 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1679)
!1695 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1679)
!1696 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1679)
!1697 = !DILocation(line: 0, scope: !247, inlinedAt: !1679)
!1698 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !1679)
!1699 = !DILocation(line: 97, column: 31, scope: !271, inlinedAt: !1608)
!1700 = !DILocation(line: 97, column: 45, scope: !271, inlinedAt: !1608)
!1701 = !DILocation(line: 97, column: 57, scope: !271, inlinedAt: !1608)
!1702 = !DILocation(line: 98, column: 5, scope: !271, inlinedAt: !1608)
!1703 = !DILocation(line: 99, column: 11, scope: !271, inlinedAt: !1608)
!1704 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1607)
!1705 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1607)
!1706 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1607)
!1707 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1607)
!1708 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1607)
!1709 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1607)
!1710 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1607)
!1711 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1607)
!1712 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !1607)
!1713 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1607)
!1714 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1607)
!1715 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1607)
!1716 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !1607)
!1717 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !1607)
!1718 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1607)
!1719 = !DILocation(line: 98, column: 14, scope: !271, inlinedAt: !1608)
!1720 = !DILocation(line: 102, column: 5, scope: !271, inlinedAt: !1608)
!1721 = !DILocation(line: 103, column: 5, scope: !271, inlinedAt: !1608)
!1722 = !DILocation(line: 104, column: 5, scope: !271, inlinedAt: !1608)
!1723 = !DILocation(line: 105, column: 1, scope: !271, inlinedAt: !1608)
!1724 = !DILocation(line: 289, column: 17, scope: !1603)
!1725 = !DILocation(line: 281, column: 28, scope: !1603)
!1726 = !DILocation(line: 290, column: 13, scope: !1603)
!1727 = !DILocation(line: 293, column: 13, scope: !1603)
!1728 = !DILocation(line: 294, column: 13, scope: !1603)
!1729 = distinct !{!1729, !1651, !1730}
!1730 = !DILocation(line: 295, column: 9, scope: !1599)
!1731 = !DILocation(line: 296, column: 9, scope: !1599)
!1732 = !DILocation(line: 297, column: 5, scope: !1600)
!1733 = !DILocation(line: 267, column: 36, scope: !1600)
!1734 = distinct !{!1734, !1619, !1735}
!1735 = !DILocation(line: 297, column: 5, scope: !1601)
!1736 = !DILocation(line: 298, column: 1, scope: !1588)
!1737 = distinct !DISubprogram(name: "debugCommand", scope: !1, file: !1, line: 300, type: !1738, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1856)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !13, line: 780, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !13, line: 723, size: 135360, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1755, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1805, !1806, !1810, !1811, !1827, !1828, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1742, file: !13, line: 724, baseType: !31, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1742, file: !13, line: 725, baseType: !9, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1742, file: !13, line: 726, baseType: !335, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1742, file: !13, line: 727, baseType: !212, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1742, file: !13, line: 728, baseType: !94, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1742, file: !13, line: 729, baseType: !158, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1742, file: !13, line: 730, baseType: !94, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1742, file: !13, line: 734, baseType: !158, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1742, file: !13, line: 735, baseType: !9, size: 32, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1742, file: !13, line: 736, baseType: !1754, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1742, file: !13, line: 737, baseType: !1756, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !13, line: 1307, size: 640, elements: !1758)
!1758 = !{!1759, !1760, !1763, !1764, !1765, !1766, !1771, !1772, !1773, !1774, !1775}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !13, line: 1308, baseType: !5, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1757, file: !13, line: 1309, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !13, line: 1305, baseType: !1738)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1757, file: !13, line: 1310, baseType: !9, size: 32, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1757, file: !13, line: 1311, baseType: !5, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !13, line: 1312, baseType: !9, size: 32, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1757, file: !13, line: 1315, baseType: !1767, size: 64, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !13, line: 1306, baseType: !1769)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!898, !1756, !1754, !9, !898}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1757, file: !13, line: 1317, baseType: !9, size: 32, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1757, file: !13, line: 1318, baseType: !9, size: 32, offset: 416)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1757, file: !13, line: 1319, baseType: !9, size: 32, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1757, file: !13, line: 1320, baseType: !8, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1757, file: !13, line: 1320, baseType: !8, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1742, file: !13, line: 737, baseType: !1756, size: 64, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1742, file: !13, line: 738, baseType: !9, size: 32, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1742, file: !13, line: 739, baseType: !9, size: 32, offset: 800)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1742, file: !13, line: 740, baseType: !73, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1742, file: !13, line: 741, baseType: !347, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1742, file: !13, line: 742, baseType: !780, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1742, file: !13, line: 743, baseType: !158, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1742, file: !13, line: 745, baseType: !1784, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1785, line: 34, baseType: !73)
!1785 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1742, file: !13, line: 746, baseType: !1784, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1742, file: !13, line: 747, baseType: !1784, size: 64, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !13, line: 748, baseType: !9, size: 32, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1742, file: !13, line: 749, baseType: !9, size: 32, offset: 1312)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1742, file: !13, line: 750, baseType: !9, size: 32, offset: 1344)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1742, file: !13, line: 751, baseType: !9, size: 32, offset: 1376)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1742, file: !13, line: 752, baseType: !9, size: 32, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1742, file: !13, line: 753, baseType: !660, size: 64, offset: 1472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1742, file: !13, line: 754, baseType: !660, size: 64, offset: 1536)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1742, file: !13, line: 755, baseType: !94, size: 64, offset: 1600)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1742, file: !13, line: 756, baseType: !8, size: 64, offset: 1664)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1742, file: !13, line: 757, baseType: !8, size: 64, offset: 1728)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1742, file: !13, line: 758, baseType: !8, size: 64, offset: 1792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1742, file: !13, line: 759, baseType: !8, size: 64, offset: 1856)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1742, file: !13, line: 760, baseType: !8, size: 64, offset: 1920)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1742, file: !13, line: 763, baseType: !1802, size: 328, offset: 1984)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 41)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1742, file: !13, line: 764, baseType: !9, size: 32, offset: 2336)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1742, file: !13, line: 765, baseType: !1807, size: 368, offset: 2368)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 368, elements: !1808)
!1808 = !{!1809}
!1809 = !DISubrange(count: 46)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1742, file: !13, line: 766, baseType: !9, size: 32, offset: 2752)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1742, file: !13, line: 767, baseType: !1812, size: 256, offset: 2816)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !13, line: 673, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !13, line: 665, size: 256, elements: !1814)
!1814 = !{!1815, !1823, !1824, !1825, !1826}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1813, file: !13, line: 666, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !13, line: 663, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !13, line: 659, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1818, file: !13, line: 660, baseType: !1754, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1818, file: !13, line: 661, baseType: !9, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1818, file: !13, line: 662, baseType: !1756, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1813, file: !13, line: 667, baseType: !9, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1813, file: !13, line: 668, baseType: !9, size: 32, offset: 96)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1813, file: !13, line: 671, baseType: !9, size: 32, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1813, file: !13, line: 672, baseType: !1784, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1742, file: !13, line: 768, baseType: !9, size: 32, offset: 3072)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1742, file: !13, line: 769, baseType: !1829, size: 704, offset: 3136)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !13, line: 703, baseType: !1830)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !13, line: 677, size: 704, elements: !1831)
!1831 = !{!1832, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1830, file: !13, line: 679, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !13, line: 52, baseType: !8)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1830, file: !13, line: 683, baseType: !17, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1830, file: !13, line: 685, baseType: !212, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1830, file: !13, line: 689, baseType: !158, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1830, file: !13, line: 690, baseType: !212, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1830, file: !13, line: 691, baseType: !212, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1830, file: !13, line: 692, baseType: !1833, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1830, file: !13, line: 692, baseType: !1833, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1830, file: !13, line: 693, baseType: !9, size: 32, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1830, file: !13, line: 696, baseType: !9, size: 32, offset: 544)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1830, file: !13, line: 697, baseType: !8, size: 64, offset: 576)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1830, file: !13, line: 700, baseType: !4, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1742, file: !13, line: 770, baseType: !8, size: 64, offset: 3840)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1742, file: !13, line: 771, baseType: !347, size: 64, offset: 3904)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1742, file: !13, line: 772, baseType: !17, size: 64, offset: 3968)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1742, file: !13, line: 773, baseType: !347, size: 64, offset: 4032)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1742, file: !13, line: 774, baseType: !94, size: 64, offset: 4096)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1742, file: !13, line: 775, baseType: !353, size: 64, offset: 4160)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1742, file: !13, line: 778, baseType: !9, size: 32, offset: 4224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1742, file: !13, line: 779, baseType: !1853, size: 131072, offset: 4256)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !1854)
!1854 = !{!1855}
!1855 = !DISubrange(count: 16384)
!1856 = !{!1857, !1858, !1862, !1867, !1868, !1871, !1883, !1885, !1886, !1889, !1892, !1893, !1894, !1898, !1901, !1902, !1904, !1905, !1906, !1907, !1908, !1910, !1913, !1914, !1915, !1918, !1921, !1922, !1923, !1924, !1925, !1929, !1932, !1935, !1936, !1938, !1942, !1945, !1946, !1947, !1949, !1952, !1953, !1958, !1963, !1966, !1969, !1970, !1974, !1977, !1978, !1981}
!1857 = !DILocalVariable(name: "c", arg: 1, scope: !1737, file: !1, line: 300, type: !1740)
!1858 = !DILocalVariable(name: "help", scope: !1859, file: !1, line: 302, type: !1861)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 301, column: 62)
!1860 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 301, column: 9)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 1536, elements: !812)
!1862 = !DILocalVariable(name: "delay", scope: !1863, file: !1, line: 336, type: !8)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 335, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 333, column: 16)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 331, column: 16)
!1866 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 329, column: 16)
!1867 = !DILocalVariable(name: "flags", scope: !1863, file: !1, line: 342, type: !9)
!1868 = !DILocalVariable(name: "ptr", scope: !1869, file: !1, line: 348, type: !4)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 347, column: 52)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 347, column: 16)
!1871 = !DILocalVariable(name: "rsi", scope: !1872, file: !1, line: 357, type: !1876)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 356, column: 55)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 356, column: 16)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 353, column: 16)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !1, line: 351, column: 16)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !13, line: 912, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !13, line: 904, size: 512, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1877, file: !13, line: 906, baseType: !9, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1877, file: !13, line: 909, baseType: !9, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1877, file: !13, line: 910, baseType: !1802, size: 328, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1877, file: !13, line: 911, baseType: !8, size: 64, offset: 448)
!1883 = !DILocalVariable(name: "rsiptr", scope: !1872, file: !1, line: 357, type: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1885 = !DILocalVariable(name: "ret", scope: !1872, file: !1, line: 365, type: !9)
!1886 = !DILocalVariable(name: "ret", scope: !1887, file: !1, line: 377, type: !9)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 373, column: 56)
!1888 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 373, column: 16)
!1889 = !DILocalVariable(name: "de", scope: !1890, file: !1, line: 387, type: !60)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 386, column: 71)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 386, column: 16)
!1892 = !DILocalVariable(name: "val", scope: !1890, file: !1, line: 388, type: !212)
!1893 = !DILocalVariable(name: "strenc", scope: !1890, file: !1, line: 389, type: !5)
!1894 = !DILocalVariable(name: "extra", scope: !1890, file: !1, line: 398, type: !1895)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1104, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 138)
!1898 = !DILocalVariable(name: "nextra", scope: !1899, file: !1, line: 400, type: !5)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 399, column: 54)
!1900 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 399, column: 13)
!1901 = !DILocalVariable(name: "remaining", scope: !1899, file: !1, line: 401, type: !9)
!1902 = !DILocalVariable(name: "ql", scope: !1899, file: !1, line: 402, type: !1903)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1904 = !DILocalVariable(name: "used", scope: !1899, file: !1, line: 404, type: !9)
!1905 = !DILocalVariable(name: "avg", scope: !1899, file: !1, line: 408, type: !7)
!1906 = !DILocalVariable(name: "compressed", scope: !1899, file: !1, line: 417, type: !9)
!1907 = !DILocalVariable(name: "sz", scope: !1899, file: !1, line: 422, type: !35)
!1908 = !DILocalVariable(name: "node", scope: !1909, file: !1, line: 423, type: !410)
!1909 = distinct !DILexicalBlock(scope: !1899, file: !1, line: 423, column: 13)
!1910 = !DILocalVariable(name: "de", scope: !1911, file: !1, line: 439, type: !60)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 438, column: 71)
!1912 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 438, column: 16)
!1913 = !DILocalVariable(name: "val", scope: !1911, file: !1, line: 440, type: !212)
!1914 = !DILocalVariable(name: "key", scope: !1911, file: !1, line: 441, type: !94)
!1915 = !DILocalVariable(name: "o", scope: !1916, file: !1, line: 464, type: !212)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 463, column: 72)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 463, column: 16)
!1918 = !DILocalVariable(name: "keys", scope: !1919, file: !1, line: 477, type: !73)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 476, column: 46)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 475, column: 16)
!1921 = !DILocalVariable(name: "j", scope: !1919, file: !1, line: 477, type: !73)
!1922 = !DILocalVariable(name: "key", scope: !1919, file: !1, line: 478, type: !212)
!1923 = !DILocalVariable(name: "val", scope: !1919, file: !1, line: 478, type: !212)
!1924 = !DILocalVariable(name: "buf", scope: !1919, file: !1, line: 479, type: !383)
!1925 = !DILocalVariable(name: "valsize", scope: !1926, file: !1, line: 485, type: !73)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 484, column: 36)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 484, column: 9)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 484, column: 9)
!1929 = !DILocalVariable(name: "buflen", scope: !1930, file: !1, line: 500, type: !9)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 499, column: 18)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 497, column: 17)
!1932 = !DILocalVariable(name: "digest", scope: !1933, file: !1, line: 511, type: !182)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 509, column: 71)
!1934 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 509, column: 16)
!1935 = !DILocalVariable(name: "d", scope: !1933, file: !1, line: 512, type: !94)
!1936 = !DILocalVariable(name: "i", scope: !1937, file: !1, line: 515, type: !9)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 515, column: 9)
!1938 = !DILocalVariable(name: "j", scope: !1939, file: !1, line: 521, type: !9)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 521, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 518, column: 77)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 518, column: 16)
!1942 = !DILocalVariable(name: "digest", scope: !1943, file: !1, line: 522, type: !182)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !1, line: 521, column: 43)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 521, column: 9)
!1945 = !DILocalVariable(name: "o", scope: !1943, file: !1, line: 524, type: !212)
!1946 = !DILocalVariable(name: "d", scope: !1943, file: !1, line: 527, type: !94)
!1947 = !DILocalVariable(name: "i", scope: !1948, file: !1, line: 528, type: !9)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 528, column: 13)
!1949 = !DILocalVariable(name: "dtime", scope: !1950, file: !1, line: 533, type: !7)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 532, column: 70)
!1951 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 532, column: 16)
!1952 = !DILocalVariable(name: "utime", scope: !1950, file: !1, line: 534, type: !8)
!1953 = !DILocalVariable(name: "tv", scope: !1950, file: !1, line: 535, type: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1785, line: 52, size: 128, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1954, file: !1785, line: 53, baseType: !1784, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1954, file: !1785, line: 54, baseType: !73, size: 64, offset: 64)
!1958 = !DILocalVariable(name: "errstr", scope: !1959, file: !1, line: 552, type: !94)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 551, column: 70)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 551, column: 16)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 546, column: 16)
!1962 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 541, column: 16)
!1963 = !DILocalVariable(name: "sizes", scope: !1964, file: !1, line: 559, type: !94)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 558, column: 75)
!1965 = distinct !DILexicalBlock(scope: !1960, file: !1, line: 558, column: 16)
!1966 = !DILocalVariable(name: "dbid", scope: !1967, file: !1, line: 570, type: !73)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 569, column: 72)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 569, column: 16)
!1969 = !DILocalVariable(name: "stats", scope: !1967, file: !1, line: 571, type: !94)
!1970 = !DILocalVariable(name: "buf", scope: !1967, file: !1, line: 572, type: !1971)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32768, elements: !1972)
!1972 = !{!1973}
!1973 = !DISubrange(count: 4096)
!1974 = !DILocalVariable(name: "o", scope: !1975, file: !1, line: 591, type: !212)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 590, column: 76)
!1976 = distinct !DILexicalBlock(scope: !1968, file: !1, line: 590, column: 16)
!1977 = !DILocalVariable(name: "ht", scope: !1975, file: !1, line: 592, type: !17)
!1978 = !DILocalVariable(name: "zs", scope: !1979, file: !1, line: 601, type: !490)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1, line: 600, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 598, column: 30)
!1981 = !DILocalVariable(name: "buf", scope: !1982, file: !1, line: 614, type: !1971)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 613, column: 16)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 610, column: 13)
!1984 = !DILocation(line: 300, column: 27, scope: !1737)
!1985 = !DILocation(line: 301, column: 12, scope: !1860)
!1986 = !{!1987, !230, i64 64}
!1987 = !{!"client", !264, i64 0, !230, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !264, i64 40, !231, i64 48, !264, i64 56, !230, i64 64, !231, i64 72, !231, i64 80, !231, i64 88, !230, i64 96, !230, i64 100, !264, i64 104, !231, i64 112, !1110, i64 120, !264, i64 128, !264, i64 136, !264, i64 144, !264, i64 152, !230, i64 160, !230, i64 164, !230, i64 168, !230, i64 172, !230, i64 176, !264, i64 184, !264, i64 192, !231, i64 200, !1110, i64 208, !1110, i64 216, !1110, i64 224, !1110, i64 232, !1110, i64 240, !204, i64 248, !230, i64 292, !204, i64 296, !230, i64 344, !1988, i64 352, !230, i64 384, !1989, i64 392, !1110, i64 480, !231, i64 488, !231, i64 496, !231, i64 504, !231, i64 512, !231, i64 520, !230, i64 528, !204, i64 532}
!1988 = !{!"multiState", !231, i64 0, !230, i64 8, !230, i64 12, !230, i64 16, !264, i64 24}
!1989 = !{!"blockingState", !1110, i64 0, !231, i64 8, !231, i64 16, !264, i64 24, !231, i64 32, !231, i64 40, !1110, i64 48, !1110, i64 56, !230, i64 64, !230, i64 68, !1110, i64 72, !231, i64 80}
!1990 = !DILocation(line: 301, column: 17, scope: !1860)
!1991 = !DILocation(line: 0, scope: !1866)
!1992 = !{!1987, !231, i64 72}
!1993 = !DILocation(line: 301, column: 22, scope: !1860)
!1994 = !DILocation(line: 301, column: 26, scope: !1860)
!1995 = !DILocation(line: 301, column: 9, scope: !1737)
!1996 = !DILocation(line: 302, column: 9, scope: !1859)
!1997 = !DILocation(line: 302, column: 21, scope: !1859)
!1998 = !DILocation(line: 328, column: 25, scope: !1859)
!1999 = !DILocation(line: 328, column: 9, scope: !1859)
!2000 = !DILocation(line: 329, column: 5, scope: !1860)
!2001 = !DILocation(line: 329, column: 5, scope: !1859)
!2002 = !DILocation(line: 329, column: 17, scope: !1866)
!2003 = !DILocation(line: 329, column: 16, scope: !1860)
!2004 = !DILocation(line: 330, column: 22, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 329, column: 57)
!2006 = !DILocation(line: 331, column: 5, scope: !2005)
!2007 = !DILocation(line: 331, column: 17, scope: !1865)
!2008 = !DILocation(line: 331, column: 16, scope: !1866)
!2009 = !DILocation(line: 332, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 331, column: 54)
!2011 = !DILocation(line: 333, column: 17, scope: !1864)
!2012 = !DILocation(line: 333, column: 55, scope: !1864)
!2013 = !DILocation(line: 334, column: 17, scope: !1864)
!2014 = !DILocation(line: 333, column: 16, scope: !1865)
!2015 = !DILocation(line: 336, column: 9, scope: !1863)
!2016 = !DILocation(line: 336, column: 19, scope: !1863)
!2017 = !DILocation(line: 337, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 337, column: 13)
!2019 = !DILocation(line: 337, column: 13, scope: !1863)
!2020 = !DILocation(line: 338, column: 49, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 338, column: 17)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 337, column: 27)
!2023 = !DILocation(line: 338, column: 17, scope: !2021)
!2024 = !DILocation(line: 339, column: 17, scope: !2021)
!2025 = !DILocation(line: 338, column: 17, scope: !2022)
!2026 = !DILocation(line: 340, column: 17, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 340, column: 17)
!2028 = !DILocation(line: 340, column: 23, scope: !2027)
!2029 = !DILocation(line: 340, column: 17, scope: !2022)
!2030 = !DILocation(line: 340, column: 34, scope: !2027)
!2031 = !DILocation(line: 340, column: 28, scope: !2027)
!2032 = !DILocation(line: 345, column: 29, scope: !1863)
!2033 = !DILocation(line: 342, column: 36, scope: !1863)
!2034 = !DILocation(line: 342, column: 33, scope: !1863)
!2035 = !DILocation(line: 342, column: 45, scope: !1863)
!2036 = !DILocation(line: 342, column: 22, scope: !1863)
!2037 = !DILocation(line: 342, column: 21, scope: !1863)
!2038 = !DILocation(line: 342, column: 13, scope: !1863)
!2039 = !DILocation(line: 345, column: 9, scope: !1863)
!2040 = !DILocation(line: 346, column: 9, scope: !1863)
!2041 = !DILocation(line: 347, column: 5, scope: !1864)
!2042 = !DILocation(line: 347, column: 17, scope: !1870)
!2043 = !DILocation(line: 347, column: 16, scope: !1864)
!2044 = !DILocation(line: 348, column: 21, scope: !1869)
!2045 = !DILocation(line: 348, column: 15, scope: !1869)
!2046 = !DILocation(line: 349, column: 9, scope: !1869)
!2047 = !DILocation(line: 350, column: 27, scope: !1869)
!2048 = !{!2049, !231, i64 8}
!2049 = !{!"sharedObjectsStruct", !231, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !231, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !231, i64 80, !231, i64 88, !231, i64 96, !231, i64 104, !231, i64 112, !231, i64 120, !231, i64 128, !231, i64 136, !231, i64 144, !231, i64 152, !231, i64 160, !231, i64 168, !231, i64 176, !231, i64 184, !231, i64 192, !231, i64 200, !231, i64 208, !231, i64 216, !231, i64 224, !231, i64 232, !231, i64 240, !231, i64 248, !231, i64 256, !231, i64 264, !231, i64 272, !231, i64 280, !231, i64 288, !231, i64 296, !231, i64 304, !231, i64 312, !231, i64 320, !231, i64 328, !231, i64 336, !231, i64 344, !231, i64 352, !231, i64 360, !204, i64 368, !204, i64 448, !204, i64 80448, !204, i64 80704, !231, i64 80960, !231, i64 80968}
!2050 = !DILocation(line: 350, column: 9, scope: !1869)
!2051 = !DILocation(line: 351, column: 5, scope: !1869)
!2052 = !DILocation(line: 351, column: 17, scope: !1875)
!2053 = !DILocation(line: 351, column: 16, scope: !1870)
!2054 = !DILocation(line: 352, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 351, column: 55)
!2056 = !DILocation(line: 353, column: 17, scope: !1874)
!2057 = !DILocation(line: 353, column: 62, scope: !1874)
!2058 = !DILocation(line: 353, column: 51, scope: !1874)
!2059 = !DILocation(line: 354, column: 55, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 353, column: 68)
!2061 = !DILocation(line: 354, column: 67, scope: !2060)
!2062 = !DILocation(line: 354, column: 9, scope: !2060)
!2063 = !DILocation(line: 355, column: 27, scope: !2060)
!2064 = !DILocation(line: 355, column: 9, scope: !2060)
!2065 = !DILocation(line: 356, column: 5, scope: !2060)
!2066 = !DILocation(line: 356, column: 17, scope: !1873)
!2067 = !DILocation(line: 356, column: 16, scope: !1874)
!2068 = !DILocation(line: 357, column: 9, scope: !1872)
!2069 = !DILocation(line: 357, column: 21, scope: !1872)
!2070 = !DILocation(line: 358, column: 18, scope: !1872)
!2071 = !DILocation(line: 357, column: 27, scope: !1872)
!2072 = !DILocation(line: 359, column: 28, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 359, column: 13)
!2074 = !{!1526, !231, i64 2120}
!2075 = !DILocation(line: 359, column: 13, scope: !2073)
!2076 = !DILocation(line: 359, column: 49, scope: !2073)
!2077 = !DILocation(line: 359, column: 13, scope: !1872)
!2078 = !DILocation(line: 360, column: 31, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 359, column: 58)
!2080 = !{!2049, !231, i64 16}
!2081 = !DILocation(line: 360, column: 13, scope: !2079)
!2082 = !DILocation(line: 361, column: 13, scope: !2079)
!2083 = !DILocation(line: 363, column: 9, scope: !1872)
!2084 = !DILocation(line: 364, column: 9, scope: !1872)
!2085 = !DILocation(line: 365, column: 34, scope: !1872)
!2086 = !DILocation(line: 365, column: 19, scope: !1872)
!2087 = !DILocation(line: 365, column: 13, scope: !1872)
!2088 = !DILocation(line: 366, column: 9, scope: !1872)
!2089 = !DILocation(line: 367, column: 17, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 367, column: 13)
!2091 = !DILocation(line: 367, column: 13, scope: !1872)
!2092 = !DILocation(line: 368, column: 13, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !1, line: 367, column: 26)
!2094 = !DILocation(line: 369, column: 13, scope: !2093)
!2095 = !DILocation(line: 371, column: 9, scope: !1872)
!2096 = !DILocation(line: 372, column: 27, scope: !1872)
!2097 = !DILocation(line: 372, column: 9, scope: !1872)
!2098 = !DILocation(line: 373, column: 5, scope: !1873)
!2099 = !DILocation(line: 373, column: 17, scope: !1888)
!2100 = !DILocation(line: 373, column: 16, scope: !1873)
!2101 = !DILocation(line: 374, column: 20, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 374, column: 13)
!2103 = !{!1526, !230, i64 1880}
!2104 = !DILocation(line: 374, column: 30, scope: !2102)
!2105 = !DILocation(line: 374, column: 13, scope: !1887)
!2106 = !DILocation(line: 374, column: 42, scope: !2102)
!2107 = !DILocation(line: 375, column: 9, scope: !1887)
!2108 = !DILocation(line: 376, column: 9, scope: !1887)
!2109 = !DILocation(line: 377, column: 45, scope: !1887)
!2110 = !{!1526, !231, i64 1888}
!2111 = !DILocation(line: 377, column: 19, scope: !1887)
!2112 = !DILocation(line: 377, column: 13, scope: !1887)
!2113 = !DILocation(line: 378, column: 9, scope: !1887)
!2114 = !DILocation(line: 379, column: 17, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 379, column: 13)
!2116 = !DILocation(line: 379, column: 13, scope: !1887)
!2117 = !DILocation(line: 380, column: 31, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 379, column: 26)
!2119 = !DILocation(line: 380, column: 13, scope: !2118)
!2120 = !DILocation(line: 381, column: 13, scope: !2118)
!2121 = !DILocation(line: 383, column: 22, scope: !1887)
!2122 = !{!1526, !1110, i64 2080}
!2123 = !DILocation(line: 384, column: 9, scope: !1887)
!2124 = !DILocation(line: 385, column: 27, scope: !1887)
!2125 = !DILocation(line: 385, column: 9, scope: !1887)
!2126 = !DILocation(line: 386, column: 5, scope: !1888)
!2127 = !DILocation(line: 386, column: 17, scope: !1891)
!2128 = !DILocation(line: 386, column: 54, scope: !1891)
!2129 = !DILocation(line: 391, column: 31, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 391, column: 13)
!2131 = !{!1987, !231, i64 16}
!2132 = !DILocation(line: 391, column: 35, scope: !2130)
!2133 = !DILocation(line: 391, column: 40, scope: !2130)
!2134 = !DILocation(line: 391, column: 52, scope: !2130)
!2135 = !DILocation(line: 391, column: 19, scope: !2130)
!2136 = !DILocation(line: 387, column: 20, scope: !1890)
!2137 = !DILocation(line: 391, column: 58, scope: !2130)
!2138 = !DILocation(line: 391, column: 13, scope: !1890)
!2139 = !DILocation(line: 392, column: 31, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 391, column: 67)
!2141 = !{!2049, !231, i64 120}
!2142 = !DILocation(line: 392, column: 13, scope: !2140)
!2143 = !DILocation(line: 393, column: 13, scope: !2140)
!2144 = !DILocation(line: 395, column: 15, scope: !1890)
!2145 = !DILocation(line: 388, column: 15, scope: !1890)
!2146 = !DILocation(line: 396, column: 35, scope: !1890)
!2147 = !DILocation(line: 396, column: 18, scope: !1890)
!2148 = !DILocation(line: 389, column: 15, scope: !1890)
!2149 = !DILocation(line: 398, column: 9, scope: !1890)
!2150 = !DILocation(line: 398, column: 14, scope: !1890)
!2151 = !DILocation(line: 399, column: 18, scope: !1900)
!2152 = !DILocation(line: 399, column: 27, scope: !1900)
!2153 = !DILocation(line: 399, column: 13, scope: !1890)
!2154 = !DILocation(line: 400, column: 19, scope: !1899)
!2155 = !DILocation(line: 401, column: 17, scope: !1899)
!2156 = !DILocation(line: 402, column: 34, scope: !1899)
!2157 = !DILocation(line: 402, column: 24, scope: !1899)
!2158 = !DILocation(line: 404, column: 73, scope: !1899)
!2159 = !{!2160, !264, i64 24}
!2160 = !{!"quicklist", !231, i64 0, !231, i64 8, !264, i64 16, !264, i64 24, !230, i64 32, !230, i64 34}
!2161 = !DILocation(line: 404, column: 24, scope: !1899)
!2162 = !DILocation(line: 404, column: 17, scope: !1899)
!2163 = !DILocation(line: 405, column: 20, scope: !1899)
!2164 = !DILocation(line: 406, column: 23, scope: !1899)
!2165 = !DILocation(line: 408, column: 38, scope: !1899)
!2166 = !{!2160, !264, i64 16}
!2167 = !DILocation(line: 408, column: 26, scope: !1899)
!2168 = !DILocation(line: 408, column: 48, scope: !1899)
!2169 = !DILocation(line: 408, column: 44, scope: !1899)
!2170 = !DILocation(line: 408, column: 43, scope: !1899)
!2171 = !DILocation(line: 408, column: 20, scope: !1899)
!2172 = !DILocation(line: 409, column: 37, scope: !1899)
!2173 = !DILocation(line: 409, column: 20, scope: !1899)
!2174 = !DILocation(line: 410, column: 20, scope: !1899)
!2175 = !DILocation(line: 411, column: 23, scope: !1899)
!2176 = !DILocation(line: 413, column: 37, scope: !1899)
!2177 = !DILocation(line: 413, column: 74, scope: !1899)
!2178 = !DILocation(line: 413, column: 20, scope: !1899)
!2179 = !DILocation(line: 414, column: 20, scope: !1899)
!2180 = !DILocation(line: 415, column: 23, scope: !1899)
!2181 = !DILocation(line: 417, column: 34, scope: !1899)
!2182 = !DILocation(line: 417, column: 43, scope: !1899)
!2183 = !DILocation(line: 417, column: 17, scope: !1899)
!2184 = !DILocation(line: 418, column: 37, scope: !1899)
!2185 = !DILocation(line: 418, column: 20, scope: !1899)
!2186 = !DILocation(line: 419, column: 20, scope: !1899)
!2187 = !DILocation(line: 420, column: 23, scope: !1899)
!2188 = !DILocation(line: 422, column: 27, scope: !1899)
!2189 = !DILocation(line: 423, column: 44, scope: !1909)
!2190 = !DILocation(line: 423, column: 33, scope: !1909)
!2191 = !DILocation(line: 0, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 423, column: 13)
!2193 = !DILocation(line: 423, column: 13, scope: !1909)
!2194 = !DILocation(line: 0, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 423, column: 75)
!2196 = !DILocation(line: 426, column: 37, scope: !1899)
!2197 = !DILocation(line: 426, column: 20, scope: !1899)
!2198 = !DILocation(line: 429, column: 9, scope: !1899)
!2199 = !DILocation(line: 424, column: 29, scope: !2195)
!2200 = !{!2201, !230, i64 24}
!2201 = !{!"quicklistNode", !231, i64 0, !231, i64 8, !231, i64 16, !230, i64 24, !230, i64 28, !230, i64 30, !230, i64 30, !230, i64 30, !230, i64 30, !230, i64 30}
!2202 = !DILocation(line: 424, column: 23, scope: !2195)
!2203 = !DILocation(line: 424, column: 20, scope: !2195)
!2204 = !DILocation(line: 423, column: 69, scope: !2192)
!2205 = distinct !{!2205, !2193, !2206}
!2206 = !DILocation(line: 425, column: 13, scope: !1909)
!2207 = !DILocation(line: 435, column: 30, scope: !1890)
!2208 = !{!229, !230, i64 4}
!2209 = !DILocation(line: 436, column: 21, scope: !1890)
!2210 = !DILocation(line: 437, column: 18, scope: !1890)
!2211 = !DILocation(line: 437, column: 23, scope: !1890)
!2212 = !DILocation(line: 437, column: 50, scope: !1890)
!2213 = !DILocation(line: 431, column: 9, scope: !1890)
!2214 = !DILocation(line: 438, column: 5, scope: !1891)
!2215 = !DILocation(line: 438, column: 17, scope: !1912)
!2216 = !DILocation(line: 438, column: 54, scope: !1912)
!2217 = !DILocation(line: 443, column: 31, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 443, column: 13)
!2219 = !DILocation(line: 443, column: 35, scope: !2218)
!2220 = !DILocation(line: 443, column: 40, scope: !2218)
!2221 = !DILocation(line: 443, column: 52, scope: !2218)
!2222 = !DILocation(line: 443, column: 19, scope: !2218)
!2223 = !DILocation(line: 439, column: 20, scope: !1911)
!2224 = !DILocation(line: 443, column: 58, scope: !2218)
!2225 = !DILocation(line: 443, column: 13, scope: !1911)
!2226 = !DILocation(line: 444, column: 31, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 443, column: 67)
!2228 = !DILocation(line: 444, column: 13, scope: !2227)
!2229 = !DILocation(line: 445, column: 13, scope: !2227)
!2230 = !DILocation(line: 447, column: 15, scope: !1911)
!2231 = !DILocation(line: 440, column: 15, scope: !1911)
!2232 = !DILocation(line: 448, column: 15, scope: !1911)
!2233 = !DILocation(line: 441, column: 13, scope: !1911)
!2234 = !DILocation(line: 450, column: 18, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 450, column: 13)
!2236 = !DILocation(line: 450, column: 23, scope: !2235)
!2237 = !DILocation(line: 450, column: 37, scope: !2235)
!2238 = !DILocation(line: 450, column: 41, scope: !2235)
!2239 = !DILocation(line: 451, column: 13, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 450, column: 64)
!2241 = !DILocation(line: 452, column: 9, scope: !2240)
!2242 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 456, column: 29, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 452, column: 16)
!2245 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2243)
!2246 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2243)
!2247 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2243)
!2248 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2243)
!2249 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !2243)
!2250 = !DILocalVariable(name: "s", arg: 1, scope: !2251, file: !95, line: 104, type: !238)
!2251 = distinct !DISubprogram(name: "sdsavail", scope: !95, file: !95, line: 104, type: !234, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2252)
!2252 = !{!2250, !2253, !2254, !2257, !2259, !2261}
!2253 = !DILocalVariable(name: "flags", scope: !2251, file: !95, line: 105, type: !118)
!2254 = !DILocalVariable(name: "sh", scope: !2255, file: !95, line: 111, type: !112)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !95, line: 110, column: 26)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !95, line: 106, column: 33)
!2257 = !DILocalVariable(name: "sh", scope: !2258, file: !95, line: 115, type: !123)
!2258 = distinct !DILexicalBlock(scope: !2256, file: !95, line: 114, column: 27)
!2259 = !DILocalVariable(name: "sh", scope: !2260, file: !95, line: 119, type: !133)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !95, line: 118, column: 27)
!2261 = !DILocalVariable(name: "sh", scope: !2262, file: !95, line: 123, type: !143)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !95, line: 122, column: 27)
!2263 = !DILocation(line: 104, column: 41, scope: !2251, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 457, column: 29, scope: !2244)
!2265 = !DILocation(line: 105, column: 19, scope: !2251, inlinedAt: !2264)
!2266 = !DILocation(line: 106, column: 5, scope: !2251, inlinedAt: !2264)
!2267 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2243)
!2268 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2243)
!2269 = !DILocation(line: 111, column: 13, scope: !2255, inlinedAt: !2264)
!2270 = !DILocation(line: 112, column: 24, scope: !2255, inlinedAt: !2264)
!2271 = !DILocation(line: 112, column: 20, scope: !2255, inlinedAt: !2264)
!2272 = !DILocation(line: 112, column: 30, scope: !2255, inlinedAt: !2264)
!2273 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2243)
!2274 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2243)
!2275 = !DILocation(line: 115, column: 13, scope: !2258, inlinedAt: !2264)
!2276 = !DILocation(line: 116, column: 24, scope: !2258, inlinedAt: !2264)
!2277 = !DILocation(line: 116, column: 20, scope: !2258, inlinedAt: !2264)
!2278 = !DILocation(line: 116, column: 30, scope: !2258, inlinedAt: !2264)
!2279 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2243)
!2280 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2243)
!2281 = !DILocation(line: 119, column: 13, scope: !2260, inlinedAt: !2264)
!2282 = !DILocation(line: 120, column: 24, scope: !2260, inlinedAt: !2264)
!2283 = !DILocation(line: 120, column: 30, scope: !2260, inlinedAt: !2264)
!2284 = !DILocation(line: 120, column: 20, scope: !2260, inlinedAt: !2264)
!2285 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2243)
!2286 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2243)
!2287 = !DILocation(line: 123, column: 13, scope: !2262, inlinedAt: !2264)
!2288 = !DILocation(line: 124, column: 24, scope: !2262, inlinedAt: !2264)
!2289 = !DILocation(line: 124, column: 30, scope: !2262, inlinedAt: !2264)
!2290 = !DILocation(line: 0, scope: !2291, inlinedAt: !2264)
!2291 = distinct !DILexicalBlock(scope: !2256, file: !95, line: 107, column: 26)
!2292 = !DILocation(line: 128, column: 1, scope: !2251, inlinedAt: !2264)
!2293 = !DILocation(line: 458, column: 29, scope: !2244)
!2294 = !DILocation(line: 459, column: 41, scope: !2244)
!2295 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 459, column: 29, scope: !2244)
!2297 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2296)
!2298 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2296)
!2299 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2296)
!2300 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2296)
!2301 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !2296)
!2302 = !DILocation(line: 104, column: 41, scope: !2251, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 460, column: 29, scope: !2244)
!2304 = !DILocation(line: 105, column: 19, scope: !2251, inlinedAt: !2303)
!2305 = !DILocation(line: 106, column: 5, scope: !2251, inlinedAt: !2303)
!2306 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2296)
!2307 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2296)
!2308 = !DILocation(line: 111, column: 13, scope: !2255, inlinedAt: !2303)
!2309 = !DILocation(line: 112, column: 24, scope: !2255, inlinedAt: !2303)
!2310 = !DILocation(line: 112, column: 20, scope: !2255, inlinedAt: !2303)
!2311 = !DILocation(line: 112, column: 30, scope: !2255, inlinedAt: !2303)
!2312 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2296)
!2313 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2296)
!2314 = !DILocation(line: 115, column: 13, scope: !2258, inlinedAt: !2303)
!2315 = !DILocation(line: 116, column: 24, scope: !2258, inlinedAt: !2303)
!2316 = !DILocation(line: 116, column: 20, scope: !2258, inlinedAt: !2303)
!2317 = !DILocation(line: 116, column: 30, scope: !2258, inlinedAt: !2303)
!2318 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2296)
!2319 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2296)
!2320 = !DILocation(line: 119, column: 13, scope: !2260, inlinedAt: !2303)
!2321 = !DILocation(line: 120, column: 24, scope: !2260, inlinedAt: !2303)
!2322 = !DILocation(line: 120, column: 30, scope: !2260, inlinedAt: !2303)
!2323 = !DILocation(line: 120, column: 20, scope: !2260, inlinedAt: !2303)
!2324 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2296)
!2325 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2296)
!2326 = !DILocation(line: 123, column: 13, scope: !2262, inlinedAt: !2303)
!2327 = !DILocation(line: 124, column: 24, scope: !2262, inlinedAt: !2303)
!2328 = !DILocation(line: 124, column: 30, scope: !2262, inlinedAt: !2303)
!2329 = !DILocation(line: 0, scope: !2291, inlinedAt: !2303)
!2330 = !DILocation(line: 128, column: 1, scope: !2251, inlinedAt: !2303)
!2331 = !DILocation(line: 461, column: 29, scope: !2244)
!2332 = !DILocation(line: 453, column: 13, scope: !2244)
!2333 = !DILocation(line: 463, column: 17, scope: !1917)
!2334 = !DILocation(line: 463, column: 55, scope: !1917)
!2335 = !DILocation(line: 466, column: 47, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 466, column: 13)
!2337 = !DILocation(line: 466, column: 65, scope: !2336)
!2338 = !DILocation(line: 466, column: 18, scope: !2336)
!2339 = !DILocation(line: 464, column: 15, scope: !1916)
!2340 = !DILocation(line: 467, column: 17, scope: !2336)
!2341 = !DILocation(line: 466, column: 13, scope: !1916)
!2342 = !DILocation(line: 469, column: 16, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 469, column: 13)
!2344 = !DILocation(line: 469, column: 25, scope: !2343)
!2345 = !DILocation(line: 469, column: 13, scope: !1916)
!2346 = !DILocation(line: 470, column: 13, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2343, file: !1, line: 469, column: 50)
!2348 = !DILocation(line: 471, column: 9, scope: !2347)
!2349 = !DILocation(line: 472, column: 28, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2343, file: !1, line: 471, column: 16)
!2351 = !DILocation(line: 472, column: 13, scope: !2350)
!2352 = !DILocation(line: 473, column: 13, scope: !2350)
!2353 = !DILocation(line: 475, column: 17, scope: !1920)
!2354 = !DILocation(line: 476, column: 29, scope: !1920)
!2355 = !DILocation(line: 475, column: 56, scope: !1920)
!2356 = !DILocation(line: 477, column: 9, scope: !1919)
!2357 = !DILocation(line: 479, column: 9, scope: !1919)
!2358 = !DILocation(line: 479, column: 14, scope: !1919)
!2359 = !DILocation(line: 481, column: 41, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 481, column: 13)
!2361 = !DILocation(line: 477, column: 14, scope: !1919)
!2362 = !DILocation(line: 481, column: 13, scope: !2360)
!2363 = !DILocation(line: 481, column: 66, scope: !2360)
!2364 = !DILocation(line: 481, column: 13, scope: !1919)
!2365 = !DILocation(line: 483, column: 23, scope: !1919)
!2366 = !DILocation(line: 483, column: 27, scope: !1919)
!2367 = !DILocation(line: 483, column: 32, scope: !1919)
!2368 = !DILocation(line: 483, column: 9, scope: !1919)
!2369 = !DILocation(line: 477, column: 20, scope: !1919)
!2370 = !DILocation(line: 484, column: 25, scope: !1927)
!2371 = !DILocation(line: 484, column: 23, scope: !1927)
!2372 = !DILocation(line: 484, column: 9, scope: !1928)
!2373 = !DILocation(line: 485, column: 13, scope: !1926)
!2374 = !DILocation(line: 485, column: 18, scope: !1926)
!2375 = !DILocation(line: 487, column: 21, scope: !1926)
!2376 = !DILocation(line: 487, column: 26, scope: !1926)
!2377 = !DILocation(line: 487, column: 17, scope: !1926)
!2378 = !DILocation(line: 487, column: 52, scope: !1926)
!2379 = !DILocation(line: 487, column: 49, scope: !1926)
!2380 = !DILocation(line: 487, column: 61, scope: !1926)
!2381 = !DILocation(line: 486, column: 13, scope: !1926)
!2382 = !DILocation(line: 488, column: 42, scope: !1926)
!2383 = !DILocation(line: 488, column: 19, scope: !1926)
!2384 = !DILocation(line: 478, column: 15, scope: !1919)
!2385 = !DILocation(line: 489, column: 20, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 489, column: 17)
!2387 = !DILocation(line: 489, column: 25, scope: !2386)
!2388 = !DILocation(line: 489, column: 17, scope: !1926)
!2389 = !DILocation(line: 490, column: 52, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 490, column: 21)
!2391 = !DILocation(line: 490, column: 49, scope: !2390)
!2392 = !DILocation(line: 490, column: 21, scope: !2390)
!2393 = !DILocation(line: 490, column: 77, scope: !2390)
!2394 = !DILocation(line: 490, column: 21, scope: !2386)
!2395 = !DILocation(line: 492, column: 35, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 492, column: 17)
!2397 = !DILocation(line: 492, column: 17, scope: !2396)
!2398 = !DILocation(line: 492, column: 43, scope: !2396)
!2399 = !DILocation(line: 492, column: 17, scope: !1926)
!2400 = !DILocation(line: 493, column: 17, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2396, file: !1, line: 492, column: 52)
!2402 = !DILocation(line: 494, column: 17, scope: !2401)
!2403 = !DILocation(line: 496, column: 13, scope: !1926)
!2404 = !DILocation(line: 497, column: 17, scope: !1931)
!2405 = !DILocation(line: 497, column: 24, scope: !1931)
!2406 = !DILocation(line: 0, scope: !1930)
!2407 = !DILocation(line: 497, column: 17, scope: !1926)
!2408 = !DILocation(line: 498, column: 23, scope: !1931)
!2409 = !DILocation(line: 478, column: 21, scope: !1919)
!2410 = !DILocation(line: 498, column: 17, scope: !1931)
!2411 = !DILocation(line: 501, column: 47, scope: !1930)
!2412 = !DILocation(line: 501, column: 23, scope: !1930)
!2413 = !DILocation(line: 502, column: 29, scope: !1930)
!2414 = !DILocation(line: 502, column: 39, scope: !1930)
!2415 = !DILocation(line: 502, column: 48, scope: !1930)
!2416 = !DILocation(line: 502, column: 46, scope: !1930)
!2417 = !DILocation(line: 502, column: 17, scope: !1930)
!2418 = !DILocation(line: 504, column: 22, scope: !1926)
!2419 = !DILocation(line: 504, column: 13, scope: !1926)
!2420 = !DILocation(line: 505, column: 34, scope: !1926)
!2421 = !DILocation(line: 505, column: 13, scope: !1926)
!2422 = !DILocation(line: 506, column: 13, scope: !1926)
!2423 = !DILocation(line: 507, column: 9, scope: !1927)
!2424 = !DILocation(line: 484, column: 32, scope: !1927)
!2425 = distinct !{!2425, !2372, !2426}
!2426 = !DILocation(line: 507, column: 9, scope: !1928)
!2427 = !DILocation(line: 508, column: 27, scope: !1919)
!2428 = !DILocation(line: 508, column: 9, scope: !1919)
!2429 = !DILocation(line: 509, column: 5, scope: !1920)
!2430 = !DILocation(line: 509, column: 17, scope: !1934)
!2431 = !DILocation(line: 509, column: 54, scope: !1934)
!2432 = !DILocation(line: 511, column: 9, scope: !1933)
!2433 = !DILocation(line: 511, column: 23, scope: !1933)
!2434 = !DILocation(line: 512, column: 17, scope: !1933)
!2435 = !DILocation(line: 512, column: 13, scope: !1933)
!2436 = !DILocation(line: 514, column: 9, scope: !1933)
!2437 = !DILocation(line: 515, column: 18, scope: !1937)
!2438 = !DILocation(line: 515, column: 65, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 515, column: 9)
!2440 = !DILocation(line: 515, column: 42, scope: !2439)
!2441 = !DILocation(line: 516, column: 9, scope: !1933)
!2442 = !DILocation(line: 517, column: 9, scope: !1933)
!2443 = !DILocation(line: 518, column: 5, scope: !1934)
!2444 = !DILocation(line: 518, column: 5, scope: !1933)
!2445 = !DILocation(line: 518, column: 17, scope: !1941)
!2446 = !DILocation(line: 518, column: 71, scope: !1941)
!2447 = !DILocation(line: 518, column: 60, scope: !1941)
!2448 = !DILocation(line: 520, column: 39, scope: !1940)
!2449 = !DILocation(line: 520, column: 32, scope: !1940)
!2450 = !DILocation(line: 520, column: 9, scope: !1940)
!2451 = !DILocation(line: 521, column: 18, scope: !1939)
!2452 = !DILocation(line: 521, column: 32, scope: !1944)
!2453 = !DILocation(line: 521, column: 27, scope: !1944)
!2454 = !DILocation(line: 521, column: 9, scope: !1939)
!2455 = !DILocation(line: 522, column: 13, scope: !1943)
!2456 = !DILocation(line: 522, column: 27, scope: !1943)
!2457 = !DILocation(line: 523, column: 13, scope: !1943)
!2458 = !DILocation(line: 524, column: 49, scope: !1943)
!2459 = !DILocation(line: 524, column: 55, scope: !1943)
!2460 = !DILocation(line: 524, column: 52, scope: !1943)
!2461 = !DILocation(line: 524, column: 23, scope: !1943)
!2462 = !DILocation(line: 524, column: 19, scope: !1943)
!2463 = !DILocation(line: 525, column: 17, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 525, column: 17)
!2465 = !DILocation(line: 525, column: 17, scope: !1943)
!2466 = !DILocation(line: 525, column: 39, scope: !2464)
!2467 = !DILocation(line: 525, column: 45, scope: !2464)
!2468 = !DILocation(line: 525, column: 42, scope: !2464)
!2469 = !DILocation(line: 525, column: 20, scope: !2464)
!2470 = !DILocation(line: 527, column: 21, scope: !1943)
!2471 = !DILocation(line: 527, column: 17, scope: !1943)
!2472 = !DILocation(line: 528, column: 22, scope: !1948)
!2473 = !DILocation(line: 528, column: 69, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 528, column: 13)
!2475 = !DILocation(line: 528, column: 46, scope: !2474)
!2476 = !DILocation(line: 529, column: 13, scope: !1943)
!2477 = !DILocation(line: 530, column: 13, scope: !1943)
!2478 = !DILocation(line: 531, column: 9, scope: !1944)
!2479 = !DILocation(line: 521, column: 39, scope: !1944)
!2480 = distinct !{!2480, !2454, !2481}
!2481 = !DILocation(line: 531, column: 9, scope: !1939)
!2482 = !DILocation(line: 532, column: 17, scope: !1951)
!2483 = !DILocation(line: 532, column: 53, scope: !1951)
!2484 = !DILocation(line: 533, column: 31, scope: !1950)
!2485 = !DILocation(line: 533, column: 43, scope: !1950)
!2486 = !DILocation(line: 533, column: 24, scope: !1950)
!2487 = !DILocation(line: 533, column: 16, scope: !1950)
!2488 = !DILocation(line: 534, column: 32, scope: !1950)
!2489 = !DILocation(line: 534, column: 27, scope: !1950)
!2490 = !DILocation(line: 534, column: 19, scope: !1950)
!2491 = !DILocation(line: 535, column: 9, scope: !1950)
!2492 = !DILocation(line: 537, column: 27, scope: !1950)
!2493 = !DILocation(line: 537, column: 12, scope: !1950)
!2494 = !DILocation(line: 537, column: 19, scope: !1950)
!2495 = !{!2496, !264, i64 0}
!2496 = !{!"timespec", !264, i64 0, !264, i64 8}
!2497 = !DILocation(line: 538, column: 29, scope: !1950)
!2498 = !DILocation(line: 538, column: 40, scope: !1950)
!2499 = !DILocation(line: 538, column: 12, scope: !1950)
!2500 = !DILocation(line: 538, column: 20, scope: !1950)
!2501 = !{!2496, !264, i64 8}
!2502 = !DILocation(line: 535, column: 25, scope: !1950)
!2503 = !DILocation(line: 539, column: 9, scope: !1950)
!2504 = !DILocation(line: 540, column: 27, scope: !1950)
!2505 = !DILocation(line: 540, column: 9, scope: !1950)
!2506 = !DILocation(line: 541, column: 5, scope: !1951)
!2507 = !DILocation(line: 541, column: 5, scope: !1950)
!2508 = !DILocation(line: 541, column: 17, scope: !1962)
!2509 = !DILocation(line: 541, column: 65, scope: !1962)
!2510 = !DILocation(line: 544, column: 45, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !1962, file: !1, line: 543, column: 5)
!2512 = !DILocation(line: 544, column: 57, scope: !2511)
!2513 = !DILocation(line: 544, column: 40, scope: !2511)
!2514 = !DILocation(line: 544, column: 38, scope: !2511)
!2515 = !{!1526, !230, i64 1740}
!2516 = !DILocation(line: 545, column: 27, scope: !2511)
!2517 = !DILocation(line: 545, column: 9, scope: !2511)
!2518 = !DILocation(line: 546, column: 5, scope: !2511)
!2519 = !DILocation(line: 546, column: 17, scope: !1961)
!2520 = !DILocation(line: 546, column: 77, scope: !1961)
!2521 = !DILocation(line: 549, column: 53, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 548, column: 5)
!2523 = !DILocation(line: 549, column: 65, scope: !2522)
!2524 = !DILocation(line: 549, column: 48, scope: !2522)
!2525 = !DILocation(line: 549, column: 46, scope: !2522)
!2526 = !{!1526, !230, i64 3076}
!2527 = !DILocation(line: 550, column: 27, scope: !2522)
!2528 = !DILocation(line: 550, column: 9, scope: !2522)
!2529 = !DILocation(line: 551, column: 5, scope: !2522)
!2530 = !DILocation(line: 551, column: 17, scope: !1960)
!2531 = !DILocation(line: 551, column: 53, scope: !1960)
!2532 = !DILocation(line: 552, column: 22, scope: !1959)
!2533 = !DILocation(line: 552, column: 13, scope: !1959)
!2534 = !DILocation(line: 554, column: 38, scope: !1959)
!2535 = !DILocation(line: 554, column: 35, scope: !1959)
!2536 = !DILocation(line: 554, column: 47, scope: !1959)
!2537 = !DILocation(line: 554, column: 18, scope: !1959)
!2538 = !DILocation(line: 555, column: 18, scope: !1959)
!2539 = !DILocation(line: 556, column: 18, scope: !1959)
!2540 = !DILocation(line: 557, column: 9, scope: !1959)
!2541 = !DILocation(line: 558, column: 5, scope: !1959)
!2542 = !DILocation(line: 558, column: 17, scope: !1965)
!2543 = !DILocation(line: 558, column: 58, scope: !1965)
!2544 = !DILocation(line: 559, column: 21, scope: !1964)
!2545 = !DILocation(line: 559, column: 13, scope: !1964)
!2546 = !DILocation(line: 560, column: 17, scope: !1964)
!2547 = !DILocation(line: 561, column: 17, scope: !1964)
!2548 = !DILocation(line: 562, column: 17, scope: !1964)
!2549 = !DILocation(line: 563, column: 17, scope: !1964)
!2550 = !DILocation(line: 564, column: 17, scope: !1964)
!2551 = !DILocation(line: 565, column: 17, scope: !1964)
!2552 = !DILocation(line: 566, column: 17, scope: !1964)
!2553 = !DILocation(line: 567, column: 17, scope: !1964)
!2554 = !DILocation(line: 568, column: 9, scope: !1964)
!2555 = !DILocation(line: 569, column: 5, scope: !1964)
!2556 = !DILocation(line: 569, column: 17, scope: !1968)
!2557 = !DILocation(line: 569, column: 55, scope: !1968)
!2558 = !DILocation(line: 570, column: 9, scope: !1967)
!2559 = !DILocation(line: 571, column: 21, scope: !1967)
!2560 = !DILocation(line: 571, column: 13, scope: !1967)
!2561 = !DILocation(line: 572, column: 9, scope: !1967)
!2562 = !DILocation(line: 572, column: 14, scope: !1967)
!2563 = !DILocation(line: 574, column: 44, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 574, column: 13)
!2565 = !DILocation(line: 574, column: 41, scope: !2564)
!2566 = !DILocation(line: 570, column: 14, scope: !1967)
!2567 = !DILocation(line: 574, column: 13, scope: !2564)
!2568 = !DILocation(line: 574, column: 66, scope: !2564)
!2569 = !DILocation(line: 574, column: 13, scope: !1967)
!2570 = !DILocation(line: 576, column: 13, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 576, column: 13)
!2572 = !DILocation(line: 576, column: 18, scope: !2571)
!2573 = !DILocation(line: 576, column: 22, scope: !2571)
!2574 = !DILocation(line: 576, column: 40, scope: !2571)
!2575 = !DILocation(line: 576, column: 33, scope: !2571)
!2576 = !DILocation(line: 576, column: 30, scope: !2571)
!2577 = !DILocation(line: 576, column: 13, scope: !1967)
!2578 = !DILocation(line: 577, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 576, column: 47)
!2580 = !DILocation(line: 578, column: 13, scope: !2579)
!2581 = !DILocation(line: 581, column: 17, scope: !1967)
!2582 = !DILocation(line: 582, column: 45, scope: !1967)
!2583 = !DILocation(line: 582, column: 48, scope: !1967)
!2584 = !DILocation(line: 582, column: 54, scope: !1967)
!2585 = !DILocation(line: 582, column: 9, scope: !1967)
!2586 = !DILocation(line: 583, column: 17, scope: !1967)
!2587 = !DILocation(line: 585, column: 17, scope: !1967)
!2588 = !DILocation(line: 586, column: 45, scope: !1967)
!2589 = !DILocation(line: 586, column: 48, scope: !1967)
!2590 = !DILocation(line: 586, column: 54, scope: !1967)
!2591 = !{!1627, !231, i64 8}
!2592 = !DILocation(line: 586, column: 9, scope: !1967)
!2593 = !DILocation(line: 587, column: 17, scope: !1967)
!2594 = !DILocation(line: 589, column: 9, scope: !1967)
!2595 = !DILocation(line: 590, column: 5, scope: !1968)
!2596 = !DILocation(line: 590, column: 17, scope: !1976)
!2597 = !DILocation(line: 590, column: 59, scope: !1976)
!2598 = !DILocation(line: 592, column: 15, scope: !1975)
!2599 = !DILocation(line: 594, column: 47, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 594, column: 13)
!2601 = !DILocation(line: 594, column: 65, scope: !2600)
!2602 = !DILocation(line: 594, column: 18, scope: !2600)
!2603 = !DILocation(line: 591, column: 15, scope: !1975)
!2604 = !DILocation(line: 595, column: 17, scope: !2600)
!2605 = !DILocation(line: 594, column: 13, scope: !1975)
!2606 = !DILocation(line: 598, column: 20, scope: !1975)
!2607 = !DILocation(line: 598, column: 9, scope: !1975)
!2608 = !DILocation(line: 601, column: 31, scope: !1979)
!2609 = !DILocation(line: 601, column: 23, scope: !1979)
!2610 = !DILocation(line: 602, column: 26, scope: !1979)
!2611 = !DILocation(line: 604, column: 13, scope: !1980)
!2612 = !DILocation(line: 606, column: 21, scope: !1980)
!2613 = !DILocation(line: 607, column: 13, scope: !1980)
!2614 = !DILocation(line: 0, scope: !1979)
!2615 = !DILocation(line: 610, column: 16, scope: !1983)
!2616 = !DILocation(line: 610, column: 13, scope: !1975)
!2617 = !DILocation(line: 611, column: 13, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1983, file: !1, line: 610, column: 25)
!2619 = !DILocation(line: 613, column: 9, scope: !2618)
!2620 = !DILocation(line: 614, column: 13, scope: !1982)
!2621 = !DILocation(line: 614, column: 18, scope: !1982)
!2622 = !DILocation(line: 615, column: 13, scope: !1982)
!2623 = !DILocation(line: 616, column: 13, scope: !1982)
!2624 = !DILocation(line: 617, column: 9, scope: !1983)
!2625 = !DILocation(line: 618, column: 17, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 618, column: 16)
!2627 = !DILocation(line: 618, column: 62, scope: !2626)
!2628 = !DILocation(line: 619, column: 9, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 618, column: 79)
!2630 = !DILocation(line: 620, column: 9, scope: !2629)
!2631 = !DILocation(line: 621, column: 9, scope: !2629)
!2632 = !DILocation(line: 622, column: 27, scope: !2629)
!2633 = !DILocation(line: 622, column: 9, scope: !2629)
!2634 = !DILocation(line: 623, column: 5, scope: !2629)
!2635 = !DILocation(line: 623, column: 17, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 623, column: 16)
!2637 = !DILocation(line: 623, column: 64, scope: !2636)
!2638 = !DILocation(line: 625, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 624, column: 5)
!2640 = !DILocation(line: 626, column: 9, scope: !2639)
!2641 = !DILocation(line: 628, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 627, column: 12)
!2643 = !DILocation(line: 629, column: 9, scope: !2642)
!2644 = !DILocation(line: 631, column: 1, scope: !1737)
!2645 = distinct !DISubprogram(name: "_serverAssertWithInfo", scope: !1, file: !1, line: 702, type: !2646, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2652)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2648, !2650, !864, !864, !9}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!2652 = !{!2653, !2654, !2655, !2656, !2657}
!2653 = !DILocalVariable(name: "c", arg: 1, scope: !2645, file: !1, line: 702, type: !2648)
!2654 = !DILocalVariable(name: "o", arg: 2, scope: !2645, file: !1, line: 702, type: !2650)
!2655 = !DILocalVariable(name: "estr", arg: 3, scope: !2645, file: !1, line: 702, type: !864)
!2656 = !DILocalVariable(name: "file", arg: 4, scope: !2645, file: !1, line: 702, type: !864)
!2657 = !DILocalVariable(name: "line", arg: 5, scope: !2645, file: !1, line: 702, type: !9)
!2658 = !DILocation(line: 702, column: 42, scope: !2645)
!2659 = !DILocation(line: 702, column: 57, scope: !2645)
!2660 = !DILocation(line: 702, column: 72, scope: !2645)
!2661 = !DILocation(line: 702, column: 90, scope: !2645)
!2662 = !DILocation(line: 702, column: 100, scope: !2645)
!2663 = !DILocation(line: 703, column: 9, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 703, column: 9)
!2665 = !DILocation(line: 703, column: 9, scope: !2645)
!2666 = !DILocation(line: 703, column: 12, scope: !2664)
!2667 = !DILocation(line: 704, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 704, column: 9)
!2669 = !DILocation(line: 704, column: 9, scope: !2645)
!2670 = !DILocalVariable(name: "o", arg: 1, scope: !2671, file: !1, line: 696, type: !2650)
!2671 = distinct !DISubprogram(name: "_serverAssertPrintObject", scope: !1, file: !1, line: 696, type: !2672, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2650}
!2674 = !{!2670}
!2675 = !DILocation(line: 696, column: 43, scope: !2671, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 704, column: 12, scope: !2668)
!2677 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 697, column: 5, scope: !2671, inlinedAt: !2676)
!2679 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !2678)
!2680 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !2678)
!2681 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !2678)
!2682 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !2678)
!2683 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !2678)
!2684 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !2678)
!2685 = !DILocation(line: 698, column: 5, scope: !2671, inlinedAt: !2676)
!2686 = !DILocation(line: 699, column: 5, scope: !2671, inlinedAt: !2676)
!2687 = !DILocation(line: 700, column: 1, scope: !2671, inlinedAt: !2676)
!2688 = !DILocation(line: 704, column: 12, scope: !2668)
!2689 = !DILocation(line: 635, column: 32, scope: !1511, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 705, column: 5, scope: !2645)
!2691 = !DILocation(line: 635, column: 50, scope: !1511, inlinedAt: !2690)
!2692 = !DILocation(line: 635, column: 60, scope: !1511, inlinedAt: !2690)
!2693 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 636, column: 5, scope: !1511, inlinedAt: !2690)
!2695 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !2694)
!2696 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !2694)
!2697 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !2694)
!2698 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !2694)
!2699 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !2694)
!2700 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !2694)
!2701 = !DILocation(line: 637, column: 5, scope: !1511, inlinedAt: !2690)
!2702 = !DILocation(line: 638, column: 5, scope: !1511, inlinedAt: !2690)
!2703 = !DILocation(line: 645, column: 18, scope: !1511, inlinedAt: !2690)
!2704 = !DILocation(line: 646, column: 1, scope: !1511, inlinedAt: !2690)
!2705 = !DILocation(line: 706, column: 1, scope: !2645)
!2706 = !DILocation(line: 727, column: 16, scope: !1522)
!2707 = !DILocation(line: 727, column: 33, scope: !1522)
!2708 = !DILocation(line: 727, column: 9, scope: !1523)
!2709 = !DILocation(line: 728, column: 9, scope: !1533)
!2710 = !DILocation(line: 730, column: 33, scope: !1533)
!2711 = !DILocation(line: 731, column: 5, scope: !1533)
!2712 = !DILocation(line: 732, column: 1, scope: !1523)
!2713 = distinct !DISubprogram(name: "_serverAssertPrintClientInfo", scope: !1, file: !1, line: 648, type: !2714, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !2648}
!2716 = !{!2717, !2718, !2719, !2723}
!2717 = !DILocalVariable(name: "c", arg: 1, scope: !2713, file: !1, line: 648, type: !2648)
!2718 = !DILocalVariable(name: "j", scope: !2713, file: !1, line: 649, type: !9)
!2719 = !DILocalVariable(name: "buf", scope: !2720, file: !1, line: 657, type: !383)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !1, line: 656, column: 33)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 656, column: 5)
!2722 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 656, column: 5)
!2723 = !DILocalVariable(name: "arg", scope: !2720, file: !1, line: 658, type: !5)
!2724 = !DILocation(line: 648, column: 49, scope: !2713)
!2725 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 651, column: 5, scope: !2713)
!2727 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !2726)
!2728 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !2726)
!2729 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !2726)
!2730 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !2726)
!2731 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !2726)
!2732 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !2726)
!2733 = !DILocation(line: 652, column: 5, scope: !2713)
!2734 = !DILocation(line: 653, column: 51, scope: !2713)
!2735 = !{!1987, !230, i64 160}
!2736 = !DILocation(line: 653, column: 5, scope: !2713)
!2737 = !DILocation(line: 654, column: 48, scope: !2713)
!2738 = !{!1987, !230, i64 8}
!2739 = !DILocation(line: 654, column: 5, scope: !2713)
!2740 = !DILocation(line: 655, column: 50, scope: !2713)
!2741 = !DILocation(line: 655, column: 5, scope: !2713)
!2742 = !DILocation(line: 649, column: 9, scope: !2713)
!2743 = !DILocation(line: 656, column: 22, scope: !2721)
!2744 = !DILocation(line: 656, column: 17, scope: !2721)
!2745 = !DILocation(line: 656, column: 5, scope: !2722)
!2746 = !DILocation(line: 657, column: 9, scope: !2720)
!2747 = !DILocation(line: 657, column: 14, scope: !2720)
!2748 = !DILocation(line: 660, column: 16, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 660, column: 13)
!2750 = !DILocation(line: 660, column: 13, scope: !2749)
!2751 = !DILocation(line: 660, column: 25, scope: !2749)
!2752 = !DILocation(line: 660, column: 30, scope: !2749)
!2753 = !DILocation(line: 660, column: 44, scope: !2749)
!2754 = !DILocation(line: 0, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2749, file: !1, line: 662, column: 16)
!2756 = !DILocation(line: 660, column: 47, scope: !2749)
!2757 = !DILocation(line: 661, column: 39, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2749, file: !1, line: 660, column: 77)
!2759 = !DILocation(line: 658, column: 15, scope: !2720)
!2760 = !DILocation(line: 662, column: 9, scope: !2758)
!2761 = !DILocation(line: 664, column: 47, scope: !2755)
!2762 = !DILocation(line: 663, column: 13, scope: !2755)
!2763 = !DILocation(line: 668, column: 24, scope: !2720)
!2764 = !DILocation(line: 668, column: 21, scope: !2720)
!2765 = !DILocation(line: 668, column: 33, scope: !2720)
!2766 = !DILocation(line: 667, column: 9, scope: !2720)
!2767 = !DILocation(line: 669, column: 5, scope: !2721)
!2768 = !DILocation(line: 656, column: 29, scope: !2721)
!2769 = distinct !{!2769, !2745, !2770}
!2770 = !DILocation(line: 669, column: 5, scope: !2722)
!2771 = !DILocation(line: 670, column: 1, scope: !2713)
!2772 = distinct !DISubprogram(name: "serverLogObjectDebugInfo", scope: !1, file: !1, line: 672, type: !2672, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2773)
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "o", arg: 1, scope: !2772, file: !1, line: 672, type: !2650)
!2775 = !DILocalVariable(name: "repr", scope: !2776, file: !1, line: 679, type: !94)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !1, line: 678, column: 36)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !1, line: 678, column: 13)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !1, line: 676, column: 55)
!2779 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 676, column: 9)
!2780 = !DILocation(line: 672, column: 43, scope: !2772)
!2781 = !DILocation(line: 673, column: 48, scope: !2772)
!2782 = !DILocation(line: 673, column: 5, scope: !2772)
!2783 = !DILocation(line: 674, column: 52, scope: !2772)
!2784 = !DILocation(line: 674, column: 5, scope: !2772)
!2785 = !DILocation(line: 675, column: 52, scope: !2772)
!2786 = !DILocation(line: 675, column: 5, scope: !2772)
!2787 = !DILocation(line: 676, column: 12, scope: !2779)
!2788 = !DILocation(line: 676, column: 31, scope: !2779)
!2789 = !DILocation(line: 676, column: 34, scope: !2779)
!2790 = !DILocation(line: 677, column: 70, scope: !2778)
!2791 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 677, column: 60, scope: !2778)
!2793 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2792)
!2794 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2792)
!2795 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2792)
!2796 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2792)
!2797 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !2792)
!2798 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2792)
!2799 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2792)
!2800 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !2792)
!2801 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2792)
!2802 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2792)
!2803 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2792)
!2804 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2792)
!2805 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2792)
!2806 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2792)
!2807 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2792)
!2808 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2792)
!2809 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2792)
!2810 = !DILocation(line: 0, scope: !247, inlinedAt: !2792)
!2811 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !2792)
!2812 = !DILocation(line: 677, column: 9, scope: !2778)
!2813 = !DILocation(line: 678, column: 23, scope: !2777)
!2814 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 678, column: 13, scope: !2777)
!2816 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2815)
!2817 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2815)
!2818 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2815)
!2819 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2815)
!2820 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2815)
!2821 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2815)
!2822 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2815)
!2823 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2815)
!2824 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2815)
!2825 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2815)
!2826 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2815)
!2827 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2815)
!2828 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !2815)
!2829 = !DILocation(line: 678, column: 13, scope: !2778)
!2830 = !DILocation(line: 0, scope: !247, inlinedAt: !2815)
!2831 = !DILocation(line: 678, column: 28, scope: !2777)
!2832 = !DILocation(line: 679, column: 35, scope: !2776)
!2833 = !DILocation(line: 679, column: 49, scope: !2776)
!2834 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 679, column: 53, scope: !2776)
!2836 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2835)
!2837 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2835)
!2838 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2835)
!2839 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2835)
!2840 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !2835)
!2841 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2835)
!2842 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2835)
!2843 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !2835)
!2844 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2835)
!2845 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2835)
!2846 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2835)
!2847 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2835)
!2848 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2835)
!2849 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2835)
!2850 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2835)
!2851 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2835)
!2852 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2835)
!2853 = !DILocation(line: 0, scope: !247, inlinedAt: !2835)
!2854 = !DILocation(line: 102, column: 1, scope: !233, inlinedAt: !2835)
!2855 = !DILocation(line: 679, column: 24, scope: !2776)
!2856 = !DILocation(line: 679, column: 17, scope: !2776)
!2857 = !DILocation(line: 680, column: 13, scope: !2776)
!2858 = !DILocation(line: 681, column: 13, scope: !2776)
!2859 = !DILocation(line: 682, column: 9, scope: !2776)
!2860 = !DILocation(line: 684, column: 55, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 683, column: 37)
!2862 = distinct !DILexicalBlock(scope: !2779, file: !1, line: 683, column: 16)
!2863 = !DILocation(line: 684, column: 49, scope: !2861)
!2864 = !DILocation(line: 684, column: 9, scope: !2861)
!2865 = !DILocation(line: 685, column: 5, scope: !2861)
!2866 = !DILocation(line: 686, column: 52, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 685, column: 36)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 685, column: 16)
!2869 = !DILocation(line: 686, column: 46, scope: !2867)
!2870 = !DILocation(line: 686, column: 9, scope: !2867)
!2871 = !DILocation(line: 687, column: 5, scope: !2867)
!2872 = !DILocation(line: 688, column: 53, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 687, column: 37)
!2874 = distinct !DILexicalBlock(scope: !2868, file: !1, line: 687, column: 16)
!2875 = !DILocation(line: 688, column: 47, scope: !2873)
!2876 = !DILocation(line: 688, column: 9, scope: !2873)
!2877 = !DILocation(line: 689, column: 5, scope: !2873)
!2878 = !DILocation(line: 690, column: 59, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 689, column: 37)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 689, column: 16)
!2881 = !DILocation(line: 690, column: 53, scope: !2879)
!2882 = !DILocation(line: 690, column: 9, scope: !2879)
!2883 = !DILocation(line: 691, column: 16, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2879, file: !1, line: 691, column: 13)
!2885 = !DILocation(line: 691, column: 25, scope: !2884)
!2886 = !DILocation(line: 691, column: 13, scope: !2879)
!2887 = !DILocation(line: 692, column: 79, scope: !2884)
!2888 = !DILocation(line: 692, column: 85, scope: !2884)
!2889 = !{!1177, !231, i64 8}
!2890 = !DILocation(line: 692, column: 90, scope: !2884)
!2891 = !{!2892, !230, i64 24}
!2892 = !{!"zskiplist", !231, i64 0, !231, i64 8, !264, i64 16, !230, i64 24}
!2893 = !DILocation(line: 692, column: 13, scope: !2884)
!2894 = !DILocation(line: 694, column: 1, scope: !2772)
!2895 = !DILocation(line: 696, column: 43, scope: !2671)
!2896 = !DILocation(line: 727, column: 16, scope: !1522, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 697, column: 5, scope: !2671)
!2898 = !DILocation(line: 727, column: 33, scope: !1522, inlinedAt: !2897)
!2899 = !DILocation(line: 727, column: 9, scope: !1523, inlinedAt: !2897)
!2900 = !DILocation(line: 728, column: 9, scope: !1533, inlinedAt: !2897)
!2901 = !DILocation(line: 730, column: 33, scope: !1533, inlinedAt: !2897)
!2902 = !DILocation(line: 731, column: 5, scope: !1533, inlinedAt: !2897)
!2903 = !DILocation(line: 732, column: 1, scope: !1523, inlinedAt: !2897)
!2904 = !DILocation(line: 698, column: 5, scope: !2671)
!2905 = !DILocation(line: 699, column: 5, scope: !2671)
!2906 = !DILocation(line: 700, column: 1, scope: !2671)
!2907 = distinct !DISubprogram(name: "serverLogHexDump", scope: !1, file: !1, line: 1352, type: !2908, isLocal: false, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !9, !5, !4, !158}
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2919, !2920, !2921}
!2911 = !DILocalVariable(name: "level", arg: 1, scope: !2907, file: !1, line: 1352, type: !9)
!2912 = !DILocalVariable(name: "descr", arg: 2, scope: !2907, file: !1, line: 1352, type: !5)
!2913 = !DILocalVariable(name: "value", arg: 3, scope: !2907, file: !1, line: 1352, type: !4)
!2914 = !DILocalVariable(name: "len", arg: 4, scope: !2907, file: !1, line: 1352, type: !158)
!2915 = !DILocalVariable(name: "buf", scope: !2907, file: !1, line: 1353, type: !2916)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 520, elements: !2917)
!2917 = !{!2918}
!2918 = !DISubrange(count: 65)
!2919 = !DILocalVariable(name: "b", scope: !2907, file: !1, line: 1353, type: !5)
!2920 = !DILocalVariable(name: "v", scope: !2907, file: !1, line: 1354, type: !157)
!2921 = !DILocalVariable(name: "charset", scope: !2907, file: !1, line: 1355, type: !2922)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 136, elements: !2923)
!2923 = !{!2924}
!2924 = !DISubrange(count: 17)
!2925 = !DILocation(line: 1352, column: 27, scope: !2907)
!2926 = !DILocation(line: 1352, column: 40, scope: !2907)
!2927 = !DILocation(line: 1352, column: 53, scope: !2907)
!2928 = !DILocation(line: 1352, column: 67, scope: !2907)
!2929 = !DILocation(line: 1353, column: 5, scope: !2907)
!2930 = !DILocation(line: 1353, column: 10, scope: !2907)
!2931 = !DILocation(line: 1354, column: 20, scope: !2907)
!2932 = !DILocation(line: 1355, column: 10, scope: !2907)
!2933 = !DILocation(line: 1357, column: 5, scope: !2907)
!2934 = !DILocation(line: 1353, column: 20, scope: !2907)
!2935 = !DILocation(line: 1359, column: 5, scope: !2907)
!2936 = !DILocation(line: 1371, column: 23, scope: !2907)
!2937 = !DILocation(line: 1360, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2907, file: !1, line: 1359, column: 16)
!2939 = !DILocation(line: 1360, column: 28, scope: !2938)
!2940 = !DILocation(line: 1360, column: 16, scope: !2938)
!2941 = !DILocation(line: 1360, column: 14, scope: !2938)
!2942 = !DILocation(line: 1361, column: 25, scope: !2938)
!2943 = !DILocation(line: 1361, column: 28, scope: !2938)
!2944 = !DILocation(line: 1361, column: 16, scope: !2938)
!2945 = !DILocation(line: 1361, column: 9, scope: !2938)
!2946 = !DILocation(line: 1361, column: 14, scope: !2938)
!2947 = !DILocation(line: 1362, column: 9, scope: !2938)
!2948 = !DILocation(line: 1362, column: 14, scope: !2938)
!2949 = !DILocation(line: 1364, column: 12, scope: !2938)
!2950 = !DILocation(line: 1365, column: 10, scope: !2938)
!2951 = !DILocation(line: 1366, column: 14, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !1, line: 1366, column: 13)
!2953 = !DILocation(line: 1366, column: 19, scope: !2952)
!2954 = !DILocation(line: 1366, column: 32, scope: !2952)
!2955 = !DILocation(line: 1366, column: 25, scope: !2952)
!2956 = !DILocation(line: 1367, column: 13, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !1, line: 1366, column: 38)
!2958 = !DILocation(line: 1369, column: 9, scope: !2957)
!2959 = !DILocation(line: 0, scope: !2938)
!2960 = distinct !{!2960, !2935, !2961}
!2961 = !DILocation(line: 1370, column: 5, scope: !2907)
!2962 = !DILocation(line: 1371, column: 5, scope: !2907)
!2963 = !DILocation(line: 1372, column: 1, scope: !2907)
!2964 = distinct !DISubprogram(name: "watchdogSignalHandler", scope: !1, file: !1, line: 1377, type: !2965, isLocal: false, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2976)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !9, !2967, !4}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !2969, line: 72, baseType: !2970)
!2969 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2969, line: 68, size: 96, elements: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2970, file: !2969, line: 69, baseType: !9, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2970, file: !2969, line: 70, baseType: !9, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !2970, file: !2969, line: 71, baseType: !2975, size: 32, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !2969, line: 61, baseType: !9)
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "sig", arg: 1, scope: !2964, file: !1, line: 1377, type: !9)
!2978 = !DILocalVariable(name: "info", arg: 2, scope: !2964, file: !1, line: 1377, type: !2967)
!2979 = !DILocalVariable(name: "secret", arg: 3, scope: !2964, file: !1, line: 1377, type: !4)
!2980 = !DILocation(line: 1377, column: 32, scope: !2964)
!2981 = !DILocation(line: 1377, column: 48, scope: !2964)
!2982 = !DILocation(line: 1377, column: 60, scope: !2964)
!2983 = !DILocation(line: 1386, column: 5, scope: !2964)
!2984 = !DILocation(line: 1390, column: 5, scope: !2964)
!2985 = !DILocation(line: 1392, column: 5, scope: !2964)
!2986 = !DILocation(line: 1393, column: 1, scope: !2964)
!2987 = distinct !DISubprogram(name: "watchdogScheduleSignal", scope: !1, file: !1, line: 1398, type: !110, isLocal: false, isDefinition: true, scopeLine: 1398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2988)
!2988 = !{!2989, !2990}
!2989 = !DILocalVariable(name: "period", arg: 1, scope: !2987, file: !1, line: 1398, type: !9)
!2990 = !DILocalVariable(name: "it", scope: !2987, file: !1, line: 1399, type: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerval", file: !2992, line: 25, size: 256, elements: !2993)
!2992 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/sys/time.h", directory: "/root/.unikraft/apps/redis/build")
!2993 = !{!2994, !3000}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !2991, file: !2992, line: 26, baseType: !2995, size: 128)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1785, line: 44, size: 128, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2995, file: !1785, line: 45, baseType: !1784, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2995, file: !1785, line: 46, baseType: !2999, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1785, line: 39, baseType: !73)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !2991, file: !2992, line: 27, baseType: !2995, size: 128, offset: 128)
!3001 = !DILocation(line: 1398, column: 33, scope: !2987)
!3002 = !DILocation(line: 1399, column: 5, scope: !2987)
!3003 = !DILocation(line: 1402, column: 32, scope: !2987)
!3004 = !DILocation(line: 1402, column: 26, scope: !2987)
!3005 = !DILocation(line: 1402, column: 17, scope: !2987)
!3006 = !DILocation(line: 1402, column: 24, scope: !2987)
!3007 = !{!3008, !264, i64 16}
!3008 = !{!"itimerval", !3009, i64 0, !3009, i64 16}
!3009 = !{!"timeval", !264, i64 0, !264, i64 8}
!3010 = !DILocation(line: 1403, column: 34, scope: !2987)
!3011 = !DILocation(line: 1403, column: 40, scope: !2987)
!3012 = !DILocation(line: 1403, column: 27, scope: !2987)
!3013 = !DILocation(line: 1403, column: 17, scope: !2987)
!3014 = !DILocation(line: 1403, column: 25, scope: !2987)
!3015 = !{!3008, !264, i64 24}
!3016 = !DILocation(line: 1405, column: 27, scope: !2987)
!3017 = !DILocation(line: 1399, column: 22, scope: !2987)
!3018 = !DILocation(line: 1407, column: 5, scope: !2987)
!3019 = !DILocation(line: 1408, column: 1, scope: !2987)
!3020 = distinct !DISubprogram(name: "enableWatchdog", scope: !1, file: !1, line: 1411, type: !110, isLocal: false, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DILocalVariable(name: "period", arg: 1, scope: !3020, file: !1, line: 1411, type: !9)
!3023 = !DILocalVariable(name: "min_period", scope: !3020, file: !1, line: 1412, type: !9)
!3024 = !DILocalVariable(name: "act", scope: !3025, file: !1, line: 1415, type: !3027)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !1, line: 1414, column: 38)
!3026 = distinct !DILexicalBlock(scope: !3020, file: !1, line: 1414, column: 9)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2969, line: 74, size: 256, elements: !3028)
!3028 = !{!3029, !3035, !3038, !3039}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3027, file: !2969, line: 78, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !2969, line: 75, size: 64, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3030, file: !2969, line: 76, baseType: !109, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3030, file: !2969, line: 77, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3027, file: !2969, line: 79, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2969, line: 64, baseType: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !2969, line: 63, baseType: !35)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3027, file: !2969, line: 80, baseType: !9, size: 32, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3027, file: !2969, line: 81, baseType: !838, size: 64, offset: 192)
!3040 = !DILocation(line: 1411, column: 25, scope: !3020)
!3041 = !DILocation(line: 1414, column: 16, scope: !3026)
!3042 = !{!1526, !230, i64 3136}
!3043 = !DILocation(line: 1414, column: 32, scope: !3026)
!3044 = !DILocation(line: 1414, column: 9, scope: !3020)
!3045 = !DILocation(line: 1415, column: 9, scope: !3025)
!3046 = !DILocation(line: 1419, column: 26, scope: !3025)
!3047 = !DILocation(line: 1419, column: 9, scope: !3025)
!3048 = !DILocation(line: 1420, column: 13, scope: !3025)
!3049 = !DILocation(line: 1420, column: 22, scope: !3025)
!3050 = !{!3051, !230, i64 16}
!3051 = !{!"sigaction", !204, i64 0, !264, i64 8, !230, i64 16, !231, i64 24}
!3052 = !DILocation(line: 1421, column: 13, scope: !3025)
!3053 = !DILocation(line: 1421, column: 26, scope: !3025)
!3054 = !DILocation(line: 1415, column: 26, scope: !3025)
!3055 = !DILocation(line: 1422, column: 9, scope: !3025)
!3056 = !DILocation(line: 1423, column: 5, scope: !3026)
!3057 = !DILocation(line: 1423, column: 5, scope: !3025)
!3058 = !DILocation(line: 1427, column: 31, scope: !3020)
!3059 = !{!1526, !230, i64 40}
!3060 = !DILocation(line: 1427, column: 23, scope: !3020)
!3061 = !DILocation(line: 1427, column: 34, scope: !3020)
!3062 = !DILocation(line: 1412, column: 9, scope: !3020)
!3063 = !DILocation(line: 1428, column: 16, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3020, file: !1, line: 1428, column: 9)
!3065 = !DILocation(line: 1428, column: 9, scope: !3020)
!3066 = !DILocation(line: 1398, column: 33, scope: !2987, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1429, column: 5, scope: !3020)
!3068 = !DILocation(line: 1399, column: 5, scope: !2987, inlinedAt: !3067)
!3069 = !DILocation(line: 1402, column: 32, scope: !2987, inlinedAt: !3067)
!3070 = !DILocation(line: 1402, column: 26, scope: !2987, inlinedAt: !3067)
!3071 = !DILocation(line: 1402, column: 17, scope: !2987, inlinedAt: !3067)
!3072 = !DILocation(line: 1402, column: 24, scope: !2987, inlinedAt: !3067)
!3073 = !DILocation(line: 1403, column: 34, scope: !2987, inlinedAt: !3067)
!3074 = !DILocation(line: 1403, column: 40, scope: !2987, inlinedAt: !3067)
!3075 = !DILocation(line: 1403, column: 27, scope: !2987, inlinedAt: !3067)
!3076 = !DILocation(line: 1403, column: 17, scope: !2987, inlinedAt: !3067)
!3077 = !DILocation(line: 1403, column: 25, scope: !2987, inlinedAt: !3067)
!3078 = !DILocation(line: 1405, column: 27, scope: !2987, inlinedAt: !3067)
!3079 = !DILocation(line: 1399, column: 22, scope: !2987, inlinedAt: !3067)
!3080 = !DILocation(line: 1407, column: 5, scope: !2987, inlinedAt: !3067)
!3081 = !DILocation(line: 1408, column: 1, scope: !2987, inlinedAt: !3067)
!3082 = !DILocation(line: 1430, column: 28, scope: !3020)
!3083 = !DILocation(line: 1431, column: 1, scope: !3020)
!3084 = distinct !DISubprogram(name: "disableWatchdog", scope: !1, file: !1, line: 1434, type: !839, isLocal: false, isDefinition: true, scopeLine: 1434, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3085)
!3085 = !{!3086}
!3086 = !DILocalVariable(name: "act", scope: !3084, file: !1, line: 1435, type: !3027)
!3087 = !DILocation(line: 1435, column: 5, scope: !3084)
!3088 = !DILocation(line: 1436, column: 16, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 1436, column: 9)
!3090 = !DILocation(line: 1436, column: 32, scope: !3089)
!3091 = !DILocation(line: 1436, column: 9, scope: !3084)
!3092 = !DILocation(line: 1398, column: 33, scope: !2987, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1437, column: 5, scope: !3084)
!3094 = !DILocation(line: 1399, column: 5, scope: !2987, inlinedAt: !3093)
!3095 = !DILocation(line: 1402, column: 17, scope: !2987, inlinedAt: !3093)
!3096 = !DILocation(line: 1402, column: 24, scope: !2987, inlinedAt: !3093)
!3097 = !DILocation(line: 1405, column: 27, scope: !2987, inlinedAt: !3093)
!3098 = !DILocation(line: 1399, column: 22, scope: !2987, inlinedAt: !3093)
!3099 = !DILocation(line: 1407, column: 5, scope: !2987, inlinedAt: !3093)
!3100 = !DILocation(line: 1408, column: 1, scope: !2987, inlinedAt: !3093)
!3101 = !DILocation(line: 1441, column: 22, scope: !3084)
!3102 = !DILocation(line: 1441, column: 5, scope: !3084)
!3103 = !DILocation(line: 1442, column: 9, scope: !3084)
!3104 = !DILocation(line: 1442, column: 18, scope: !3084)
!3105 = !DILocation(line: 1443, column: 9, scope: !3084)
!3106 = !DILocation(line: 1443, column: 20, scope: !3084)
!3107 = !DILocation(line: 1435, column: 22, scope: !3084)
!3108 = !DILocation(line: 1444, column: 5, scope: !3084)
!3109 = !DILocation(line: 1445, column: 28, scope: !3084)
!3110 = !DILocation(line: 1446, column: 1, scope: !3084)
