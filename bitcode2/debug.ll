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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br label %9, !dbg !202

; <label>:9:                                      ; preds = %9, %3
  %10 = phi i64 [ 0, %3 ], [ %22, %9 ]
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %10, !dbg !203
  %12 = load i8, i8* %11, align 2, !dbg !203, !tbaa !205
  %13 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !208
  %14 = load i8, i8* %13, align 1, !dbg !209, !tbaa !205
  %15 = xor i8 %14, %12, !dbg !209
  store i8 %15, i8* %13, align 1, !dbg !209, !tbaa !205
  %16 = or i64 %10, 1, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %16, !dbg !203
  %18 = load i8, i8* %17, align 1, !dbg !203, !tbaa !205
  %19 = getelementptr inbounds i8, i8* %0, i64 %16, !dbg !208
  %20 = load i8, i8* %19, align 1, !dbg !209, !tbaa !205
  %21 = xor i8 %20, %18, !dbg !209
  store i8 %21, i8* %19, align 1, !dbg !209, !tbaa !205
  %22 = add nuw nsw i64 %10, 2, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  %23 = icmp eq i64 %22, 20, !dbg !212
  br i1 %23, label %24, label %9, !dbg !202, !llvm.loop !213

; <label>:24:                                     ; preds = %9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #6, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %6) #6, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  ret void, !dbg !215
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
define dso_local void @xorStringObjectDigest(i8* nocapture, %struct.redisObject*) local_unnamed_addr #0 !dbg !216 {
  %3 = alloca %struct.SHA1_CTX, align 4
  %4 = alloca [20 x i8], align 16
  %5 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !235
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !236
  %7 = load i8*, i8** %6, align 8, !dbg !236, !tbaa !237
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !252
  %9 = load i8, i8* %8, align 1, !dbg !252, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  %10 = trunc i8 %9 to i3, !dbg !254
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !254

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !255
  %13 = zext i8 %12 to i64, !dbg !255
  br label %32, !dbg !257

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !258
  %16 = load i8, i8* %15, align 1, !dbg !259, !tbaa !205
  %17 = zext i8 %16 to i64, !dbg !258
  br label %32, !dbg !260

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !261
  %20 = bitcast i8* %19 to i16*, !dbg !262
  %21 = load i16, i16* %20, align 1, !dbg !262, !tbaa !263
  %22 = zext i16 %21 to i64, !dbg !261
  br label %32, !dbg !265

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !266
  %25 = bitcast i8* %24 to i32*, !dbg !267
  %26 = load i32, i32* %25, align 1, !dbg !267, !tbaa !268
  %27 = zext i32 %26 to i64, !dbg !266
  br label %32, !dbg !269

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !270
  %30 = bitcast i8* %29 to i64*, !dbg !271
  %31 = load i64, i64* %30, align 1, !dbg !271, !tbaa !272
  br label %32, !dbg !274

; <label>:32:                                     ; preds = %2, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %2 ], !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %34 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %34) #6, !dbg !281
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !282
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %35) #6, !dbg !282
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #7, !dbg !285
  %36 = trunc i64 %33 to i32, !dbg !286
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %7, i32 %36) #7, !dbg !287
  call void @SHA1Final(i8* nonnull %35, %struct.SHA1_CTX* nonnull %3) #7, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %37, !dbg !291

; <label>:37:                                     ; preds = %37, %32
  %38 = phi i64 [ 0, %32 ], [ %50, %37 ]
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %38, !dbg !292
  %40 = load i8, i8* %39, align 2, !dbg !292, !tbaa !205
  %41 = getelementptr inbounds i8, i8* %0, i64 %38, !dbg !293
  %42 = load i8, i8* %41, align 1, !dbg !294, !tbaa !205
  %43 = xor i8 %42, %40, !dbg !294
  store i8 %43, i8* %41, align 1, !dbg !294, !tbaa !205
  %44 = or i64 %38, 1, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %44, !dbg !292
  %46 = load i8, i8* %45, align 1, !dbg !292, !tbaa !205
  %47 = getelementptr inbounds i8, i8* %0, i64 %44, !dbg !293
  %48 = load i8, i8* %47, align 1, !dbg !294, !tbaa !205
  %49 = xor i8 %48, %46, !dbg !294
  store i8 %49, i8* %47, align 1, !dbg !294, !tbaa !205
  %50 = add nuw nsw i64 %38, 2, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %51 = icmp eq i64 %50, 20, !dbg !297
  br i1 %51, label %52, label %37, !dbg !291, !llvm.loop !213

; <label>:52:                                     ; preds = %37
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %35) #6, !dbg !298
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %34) #6, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  call void @decrRefCount(%struct.redisObject* %5) #7, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mixDigest(i8*, i8*, i64) local_unnamed_addr #0 !dbg !301 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca %struct.SHA1_CTX, align 4
  %7 = bitcast %struct.SHA1_CTX* %6 to i8*, !dbg !313
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %7) #6, !dbg !313
  %8 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %8) #6, !dbg !318
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !319
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #6, !dbg !319
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !322
  %10 = trunc i64 %2 to i32, !dbg !323
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %1, i32 %10) #7, !dbg !324
  call void @SHA1Final(i8* nonnull %9, %struct.SHA1_CTX* nonnull %4) #7, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br label %11, !dbg !328

; <label>:11:                                     ; preds = %11, %3
  %12 = phi i64 [ 0, %3 ], [ %24, %11 ]
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %12, !dbg !329
  %14 = load i8, i8* %13, align 2, !dbg !329, !tbaa !205
  %15 = getelementptr inbounds i8, i8* %0, i64 %12, !dbg !330
  %16 = load i8, i8* %15, align 1, !dbg !331, !tbaa !205
  %17 = xor i8 %16, %14, !dbg !331
  store i8 %17, i8* %15, align 1, !dbg !331, !tbaa !205
  %18 = or i64 %12, 1, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %18, !dbg !329
  %20 = load i8, i8* %19, align 1, !dbg !329, !tbaa !205
  %21 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !330
  %22 = load i8, i8* %21, align 1, !dbg !331, !tbaa !205
  %23 = xor i8 %22, %20, !dbg !331
  store i8 %23, i8* %21, align 1, !dbg !331, !tbaa !205
  %24 = add nuw nsw i64 %12, 2, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %25 = icmp eq i64 %24, 20, !dbg !334
  br i1 %25, label %26, label %11, !dbg !328, !llvm.loop !213

; <label>:26:                                     ; preds = %11
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #6, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %8) #6, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %6) #7, !dbg !337
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %6, i8* nonnull %0, i32 20) #7, !dbg !338
  call void @SHA1Final(i8* nonnull %0, %struct.SHA1_CTX* nonnull %6) #7, !dbg !339
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %7) #6, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret void, !dbg !340
}

; Function Attrs: noredzone nounwind
define dso_local void @mixStringObjectDigest(i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !341 {
  %3 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !347
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !348
  %5 = load i8*, i8** %4, align 8, !dbg !348, !tbaa !237
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !351
  %7 = load i8, i8* %6, align 1, !dbg !351, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  %8 = trunc i8 %7 to i3, !dbg !353
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !353

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !354
  %11 = zext i8 %10 to i64, !dbg !354
  br label %30, !dbg !355

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !356
  %14 = load i8, i8* %13, align 1, !dbg !357, !tbaa !205
  %15 = zext i8 %14 to i64, !dbg !356
  br label %30, !dbg !358

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !359
  %18 = bitcast i8* %17 to i16*, !dbg !360
  %19 = load i16, i16* %18, align 1, !dbg !360, !tbaa !263
  %20 = zext i16 %19 to i64, !dbg !359
  br label %30, !dbg !361

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !362
  %23 = bitcast i8* %22 to i32*, !dbg !363
  %24 = load i32, i32* %23, align 1, !dbg !363, !tbaa !268
  %25 = zext i32 %24 to i64, !dbg !362
  br label %30, !dbg !364

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !365
  %28 = bitcast i8* %27 to i64*, !dbg !366
  %29 = load i64, i64* %28, align 1, !dbg !366, !tbaa !272
  br label %30, !dbg !367

; <label>:30:                                     ; preds = %2, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  tail call void @mixDigest(i8* %0, i8* %5, i64 %31) #8, !dbg !371
  tail call void @decrRefCount(%struct.redisObject* %3) #7, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: noredzone nounwind
define dso_local void @xorObjectDigest(%struct.redisDb*, %struct.redisObject*, i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !374 {
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = alloca %struct.SHA1_CTX, align 4
  %7 = alloca %struct.SHA1_CTX, align 4
  %8 = alloca %struct.SHA1_CTX, align 4
  %9 = alloca %struct.SHA1_CTX, align 4
  %10 = alloca %struct.SHA1_CTX, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca %struct.listTypeEntry, align 8
  %15 = alloca [20 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca [20 x i8], align 16
  %22 = alloca %struct.streamIterator, align 8
  %23 = alloca %struct.streamID, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.RedisModuleDigest, align 1
  %30 = bitcast i32* %12 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #6, !dbg !1014
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 0, !dbg !1015
  %32 = load i32, i32* %31, align 8, !dbg !1015
  %33 = and i32 %32, 15, !dbg !1015
  %34 = tail call i32 @lwip_htonl(i32 %33) #7, !dbg !1015
  store i32 %34, i32* %12, align 4, !dbg !1016, !tbaa !268
  call void @mixDigest(i8* %2, i8* nonnull %30, i64 4) #8, !dbg !1017
  %35 = call i64 @getExpire(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !1018
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %36) #6, !dbg !1020
  %37 = load i32, i32* %31, align 8, !dbg !1022
  %38 = and i32 %37, 15, !dbg !1022
  %39 = icmp eq i32 %38, 0, !dbg !1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  br i1 %39, label %40, label %41, !dbg !1024

; <label>:40:                                     ; preds = %4
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* nonnull %3) #8, !dbg !1025
  br label %434, !dbg !1027

; <label>:41:                                     ; preds = %4
  %42 = icmp eq i32 %38, 1, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %42, label %43, label %53, !dbg !1029

; <label>:43:                                     ; preds = %41
  %44 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %3, i64 0, i8 zeroext 1) #7, !dbg !1030
  %45 = bitcast %struct.listTypeEntry* %14 to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %45) #6, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  %46 = call i32 @listTypeNext(%struct.listTypeIterator* %44, %struct.listTypeEntry* nonnull %14) #7, !dbg !1035
  %47 = icmp eq i32 %46, 0, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %47, label %52, label %48, !dbg !1033

; <label>:48:                                     ; preds = %43, %48
  %49 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %14) #7, !dbg !1036
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* %49) #8, !dbg !1038
  call void @decrRefCount(%struct.redisObject* %49) #7, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  %50 = call i32 @listTypeNext(%struct.listTypeIterator* %44, %struct.listTypeEntry* nonnull %14) #7, !dbg !1035
  %51 = icmp eq i32 %50, 0, !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %51, label %52, label %48, !dbg !1033, !llvm.loop !1040

; <label>:52:                                     ; preds = %48, %43
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %44) #7, !dbg !1042
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %45) #6, !dbg !1043
  br label %434, !dbg !1044

; <label>:53:                                     ; preds = %41
  %54 = icmp eq i32 %38, 2, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br i1 %54, label %55, label %110, !dbg !1046

; <label>:55:                                     ; preds = %53
  %56 = call %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  %57 = call i8* @setTypeNextObject(%struct.setTypeIterator* %56) #7, !dbg !1050
  %58 = icmp eq i8* %57, null, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %58, label %109, label %59, !dbg !1049

; <label>:59:                                     ; preds = %55
  %60 = bitcast %struct.SHA1_CTX* %9 to i8*
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  br label %62, !dbg !1049

; <label>:62:                                     ; preds = %59, %106
  %63 = phi i8* [ %57, %59 ], [ %107, %106 ]
  %64 = getelementptr inbounds i8, i8* %63, i64 -1, !dbg !1055
  %65 = load i8, i8* %64, align 1, !dbg !1055, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %66 = trunc i8 %65 to i3, !dbg !1057
  switch i3 %66, label %88 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !1057

; <label>:67:                                     ; preds = %62
  %68 = lshr i8 %65, 3, !dbg !1058
  %69 = zext i8 %68 to i64, !dbg !1058
  br label %88, !dbg !1059

; <label>:70:                                     ; preds = %62
  %71 = getelementptr inbounds i8, i8* %63, i64 -3, !dbg !1060
  %72 = load i8, i8* %71, align 1, !dbg !1061, !tbaa !205
  %73 = zext i8 %72 to i64, !dbg !1060
  br label %88, !dbg !1062

; <label>:74:                                     ; preds = %62
  %75 = getelementptr inbounds i8, i8* %63, i64 -5, !dbg !1063
  %76 = bitcast i8* %75 to i16*, !dbg !1064
  %77 = load i16, i16* %76, align 1, !dbg !1064, !tbaa !263
  %78 = zext i16 %77 to i64, !dbg !1063
  br label %88, !dbg !1065

; <label>:79:                                     ; preds = %62
  %80 = getelementptr inbounds i8, i8* %63, i64 -9, !dbg !1066
  %81 = bitcast i8* %80 to i32*, !dbg !1067
  %82 = load i32, i32* %81, align 1, !dbg !1067, !tbaa !268
  %83 = zext i32 %82 to i64, !dbg !1066
  br label %88, !dbg !1068

; <label>:84:                                     ; preds = %62
  %85 = getelementptr inbounds i8, i8* %63, i64 -17, !dbg !1069
  %86 = bitcast i8* %85 to i64*, !dbg !1070
  %87 = load i64, i64* %86, align 1, !dbg !1070, !tbaa !272
  br label %88, !dbg !1071

; <label>:88:                                     ; preds = %62, %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], [ 0, %62 ], !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %60) #6, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %61) #6, !dbg !1079
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %9) #7, !dbg !1082
  %90 = trunc i64 %89 to i32, !dbg !1083
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %9, i8* nonnull %63, i32 %90) #7, !dbg !1084
  call void @SHA1Final(i8* nonnull %61, %struct.SHA1_CTX* nonnull %9) #7, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br label %91, !dbg !1088

; <label>:91:                                     ; preds = %91, %88
  %92 = phi i64 [ 0, %88 ], [ %104, %91 ]
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %92, !dbg !1089
  %94 = load i8, i8* %93, align 2, !dbg !1089, !tbaa !205
  %95 = getelementptr inbounds i8, i8* %2, i64 %92, !dbg !1090
  %96 = load i8, i8* %95, align 1, !dbg !1091, !tbaa !205
  %97 = xor i8 %96, %94, !dbg !1091
  store i8 %97, i8* %95, align 1, !dbg !1091, !tbaa !205
  %98 = or i64 %92, 1, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  %99 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %98, !dbg !1089
  %100 = load i8, i8* %99, align 1, !dbg !1089, !tbaa !205
  %101 = getelementptr inbounds i8, i8* %2, i64 %98, !dbg !1090
  %102 = load i8, i8* %101, align 1, !dbg !1091, !tbaa !205
  %103 = xor i8 %102, %100, !dbg !1091
  store i8 %103, i8* %101, align 1, !dbg !1091, !tbaa !205
  %104 = add nuw nsw i64 %92, 2, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  %105 = icmp eq i64 %104, 20, !dbg !1094
  br i1 %105, label %106, label %91, !dbg !1088, !llvm.loop !213

; <label>:106:                                    ; preds = %91
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %61) #6, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %60) #6, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  call void @sdsfree(i8* nonnull %63) #7, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  %107 = call i8* @setTypeNextObject(%struct.setTypeIterator* %56) #7, !dbg !1050
  %108 = icmp eq i8* %107, null, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %108, label %109, label %62, !dbg !1049, !llvm.loop !1097

; <label>:109:                                    ; preds = %106, %55
  call void @setTypeReleaseIterator(%struct.setTypeIterator* %56) #7, !dbg !1099
  br label %434, !dbg !1100

; <label>:110:                                    ; preds = %53
  %111 = icmp eq i32 %38, 3, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  br i1 %111, label %112, label %247, !dbg !1102

; <label>:112:                                    ; preds = %110
  %113 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %113) #6, !dbg !1103
  %114 = lshr i32 %37, 4, !dbg !1105
  %115 = and i32 %114, 15, !dbg !1105
  %116 = icmp eq i32 %115, 5, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br i1 %116, label %117, label %175, !dbg !1107

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1108
  %119 = load i8*, i8** %118, align 8, !dbg !1108, !tbaa !237
  %120 = bitcast i8** %16 to i8*, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #6, !dbg !1110
  %121 = bitcast i8** %17 to i8*, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #6, !dbg !1110
  %122 = bitcast i8** %18 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #6, !dbg !1111
  %123 = bitcast i32* %19 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %123) #6, !dbg !1112
  %124 = bitcast i64* %20 to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %124) #6, !dbg !1113
  %125 = call i8* @ziplistIndex(i8* %119, i32 0) #7, !dbg !1114
  store i8* %125, i8** %16, align 8, !dbg !1116, !tbaa !1117
  %126 = icmp eq i8* %125, null, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %126, label %127, label %128, !dbg !1118

; <label>:127:                                    ; preds = %117
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 159) #8, !dbg !1118
  call void @_exit(i32 1) #9, !dbg !1118
  unreachable

; <label>:128:                                    ; preds = %117
  %129 = call i8* @ziplistNext(i8* %119, i8* nonnull %125) #7, !dbg !1119
  store i8* %129, i8** %17, align 8, !dbg !1121, !tbaa !1117
  %130 = icmp eq i8* %129, null, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %130, label %134, label %131, !dbg !1122

; <label>:131:                                    ; preds = %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  %132 = bitcast %struct.SHA1_CTX* %8 to i8*
  %133 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  br label %135, !dbg !1123

; <label>:134:                                    ; preds = %128
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 161) #8, !dbg !1122
  call void @_exit(i32 1) #9, !dbg !1122
  unreachable

; <label>:135:                                    ; preds = %131, %171
  %136 = phi i8* [ %125, %131 ], [ %172, %171 ]
  %137 = call i32 @ziplistGet(i8* nonnull %136, i8** nonnull %18, i32* nonnull %19, i64* nonnull %20) #7, !dbg !1127
  %138 = icmp eq i32 %137, 0, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %138, label %139, label %140, !dbg !1127

; <label>:139:                                    ; preds = %135
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 164) #8, !dbg !1127
  call void @_exit(i32 1) #9, !dbg !1127
  unreachable

; <label>:140:                                    ; preds = %135
  %141 = load i8*, i8** %17, align 8, !dbg !1128, !tbaa !1117
  %142 = call double @zzlGetScore(i8* %141) #7, !dbg !1129
  %143 = call i8* @memset(i8* nonnull %113, i32 0, i64 20) #7, !dbg !1131
  %144 = load i8*, i8** %18, align 8, !dbg !1132, !tbaa !1117
  %145 = icmp eq i8* %144, null, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  br i1 %145, label %149, label %146, !dbg !1135

; <label>:146:                                    ; preds = %140
  %147 = load i32, i32* %19, align 4, !dbg !1136, !tbaa !268
  %148 = zext i32 %147 to i64, !dbg !1136
  call void @mixDigest(i8* nonnull %113, i8* nonnull %144, i64 %148) #8, !dbg !1138
  br label %153, !dbg !1139

; <label>:149:                                    ; preds = %140
  %150 = load i64, i64* %20, align 8, !dbg !1140, !tbaa !1142
  %151 = call i32 @ll2string(i8* nonnull %36, i64 128, i64 %150) #7, !dbg !1144
  %152 = call i64 @strlen(i8* nonnull %36) #7, !dbg !1145
  call void @mixDigest(i8* nonnull %113, i8* nonnull %36, i64 %152) #8, !dbg !1146
  br label %153

; <label>:153:                                    ; preds = %149, %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %154 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %36, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %142) #7, !dbg !1147
  %155 = call i64 @strlen(i8* nonnull %36) #7, !dbg !1148
  call void @mixDigest(i8* nonnull %113, i8* nonnull %36, i64 %155) #8, !dbg !1149
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %132) #6, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %133) #6, !dbg !1154
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %8) #7, !dbg !1157
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %8, i8* nonnull %113, i32 20) #7, !dbg !1158
  call void @SHA1Final(i8* nonnull %133, %struct.SHA1_CTX* nonnull %8) #7, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %156, !dbg !1162

; <label>:156:                                    ; preds = %156, %153
  %157 = phi i64 [ 0, %153 ], [ %169, %156 ]
  %158 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %157, !dbg !1163
  %159 = load i8, i8* %158, align 2, !dbg !1163, !tbaa !205
  %160 = getelementptr inbounds i8, i8* %2, i64 %157, !dbg !1164
  %161 = load i8, i8* %160, align 1, !dbg !1165, !tbaa !205
  %162 = xor i8 %161, %159, !dbg !1165
  store i8 %162, i8* %160, align 1, !dbg !1165, !tbaa !205
  %163 = or i64 %157, 1, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  %164 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %163, !dbg !1163
  %165 = load i8, i8* %164, align 1, !dbg !1163, !tbaa !205
  %166 = getelementptr inbounds i8, i8* %2, i64 %163, !dbg !1164
  %167 = load i8, i8* %166, align 1, !dbg !1165, !tbaa !205
  %168 = xor i8 %167, %165, !dbg !1165
  store i8 %168, i8* %166, align 1, !dbg !1165, !tbaa !205
  %169 = add nuw nsw i64 %157, 2, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  %170 = icmp eq i64 %169, 20, !dbg !1168
  br i1 %170, label %171, label %156, !dbg !1162, !llvm.loop !213

; <label>:171:                                    ; preds = %156
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %133) #6, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %132) #6, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  call void @zzlNext(i8* %119, i8** nonnull %16, i8** nonnull %17) #7, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  %172 = load i8*, i8** %16, align 8, !dbg !1171, !tbaa !1117
  %173 = icmp eq i8* %172, null, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  br i1 %173, label %174, label %135, !dbg !1123, !llvm.loop !1173

; <label>:174:                                    ; preds = %171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %124) #6, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %123) #6, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #6, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #6, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #6, !dbg !1175
  br label %246, !dbg !1176

; <label>:175:                                    ; preds = %112
  %176 = icmp eq i32 %115, 7, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %176, label %177, label %245, !dbg !1178

; <label>:177:                                    ; preds = %175
  %178 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1179
  %179 = bitcast i8** %178 to %struct.zset**, !dbg !1179
  %180 = load %struct.zset*, %struct.zset** %179, align 8, !dbg !1179, !tbaa !237
  %181 = getelementptr inbounds %struct.zset, %struct.zset* %180, i64 0, i32 0, !dbg !1181
  %182 = load %struct.dict*, %struct.dict** %181, align 8, !dbg !1181, !tbaa !1182
  %183 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %182) #7, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %184 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %183) #7, !dbg !1187
  %185 = icmp eq %struct.dictEntry* %184, null, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %185, label %244, label %186, !dbg !1186

; <label>:186:                                    ; preds = %177
  %187 = bitcast %struct.SHA1_CTX* %7 to i8*
  %188 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  br label %189, !dbg !1186

; <label>:189:                                    ; preds = %186, %241
  %190 = phi %struct.dictEntry* [ %184, %186 ], [ %242, %241 ]
  %191 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %190, i64 0, i32 0, !dbg !1190
  %192 = load i8*, i8** %191, align 8, !dbg !1190, !tbaa !1191
  %193 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %190, i64 0, i32 1, i32 0, !dbg !1194
  %194 = bitcast i8** %193 to double**, !dbg !1194
  %195 = load double*, double** %194, align 8, !dbg !1194, !tbaa !205
  %196 = load double, double* %195, align 8, !dbg !1196, !tbaa !1197
  %197 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %36, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %196) #7, !dbg !1199
  %198 = call i8* @memset(i8* nonnull %113, i32 0, i64 20) #7, !dbg !1200
  %199 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !1203
  %200 = load i8, i8* %199, align 1, !dbg !1203, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  %201 = trunc i8 %200 to i3, !dbg !1205
  switch i3 %201, label %223 [
    i3 0, label %202
    i3 1, label %205
    i3 2, label %209
    i3 3, label %214
    i3 -4, label %219
  ], !dbg !1205

; <label>:202:                                    ; preds = %189
  %203 = lshr i8 %200, 3, !dbg !1206
  %204 = zext i8 %203 to i64, !dbg !1206
  br label %223, !dbg !1207

; <label>:205:                                    ; preds = %189
  %206 = getelementptr inbounds i8, i8* %192, i64 -3, !dbg !1208
  %207 = load i8, i8* %206, align 1, !dbg !1209, !tbaa !205
  %208 = zext i8 %207 to i64, !dbg !1208
  br label %223, !dbg !1210

; <label>:209:                                    ; preds = %189
  %210 = getelementptr inbounds i8, i8* %192, i64 -5, !dbg !1211
  %211 = bitcast i8* %210 to i16*, !dbg !1212
  %212 = load i16, i16* %211, align 1, !dbg !1212, !tbaa !263
  %213 = zext i16 %212 to i64, !dbg !1211
  br label %223, !dbg !1213

; <label>:214:                                    ; preds = %189
  %215 = getelementptr inbounds i8, i8* %192, i64 -9, !dbg !1214
  %216 = bitcast i8* %215 to i32*, !dbg !1215
  %217 = load i32, i32* %216, align 1, !dbg !1215, !tbaa !268
  %218 = zext i32 %217 to i64, !dbg !1214
  br label %223, !dbg !1216

; <label>:219:                                    ; preds = %189
  %220 = getelementptr inbounds i8, i8* %192, i64 -17, !dbg !1217
  %221 = bitcast i8* %220 to i64*, !dbg !1218
  %222 = load i64, i64* %221, align 1, !dbg !1218, !tbaa !272
  br label %223, !dbg !1219

; <label>:223:                                    ; preds = %189, %202, %205, %209, %214, %219
  %224 = phi i64 [ %222, %219 ], [ %218, %214 ], [ %213, %209 ], [ %208, %205 ], [ %204, %202 ], [ 0, %189 ], !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  call void @mixDigest(i8* nonnull %113, i8* %192, i64 %224) #8, !dbg !1223
  %225 = call i64 @strlen(i8* nonnull %36) #7, !dbg !1224
  call void @mixDigest(i8* nonnull %113, i8* nonnull %36, i64 %225) #8, !dbg !1225
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %187) #6, !dbg !1229
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %188) #6, !dbg !1230
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %7) #7, !dbg !1233
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %7, i8* nonnull %113, i32 20) #7, !dbg !1234
  call void @SHA1Final(i8* nonnull %188, %struct.SHA1_CTX* nonnull %7) #7, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  br label %226, !dbg !1238

; <label>:226:                                    ; preds = %226, %223
  %227 = phi i64 [ 0, %223 ], [ %239, %226 ]
  %228 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %227, !dbg !1239
  %229 = load i8, i8* %228, align 2, !dbg !1239, !tbaa !205
  %230 = getelementptr inbounds i8, i8* %2, i64 %227, !dbg !1240
  %231 = load i8, i8* %230, align 1, !dbg !1241, !tbaa !205
  %232 = xor i8 %231, %229, !dbg !1241
  store i8 %232, i8* %230, align 1, !dbg !1241, !tbaa !205
  %233 = or i64 %227, 1, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %234 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %233, !dbg !1239
  %235 = load i8, i8* %234, align 1, !dbg !1239, !tbaa !205
  %236 = getelementptr inbounds i8, i8* %2, i64 %233, !dbg !1240
  %237 = load i8, i8* %236, align 1, !dbg !1241, !tbaa !205
  %238 = xor i8 %237, %235, !dbg !1241
  store i8 %238, i8* %236, align 1, !dbg !1241, !tbaa !205
  %239 = add nuw nsw i64 %227, 2, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %240 = icmp eq i64 %239, 20, !dbg !1244
  br i1 %240, label %241, label %226, !dbg !1238, !llvm.loop !213

; <label>:241:                                    ; preds = %226
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %188) #6, !dbg !1245
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %187) #6, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  %242 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %183) #7, !dbg !1187
  %243 = icmp eq %struct.dictEntry* %242, null, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %243, label %244, label %189, !dbg !1186, !llvm.loop !1246

; <label>:244:                                    ; preds = %241, %177
  call void @dictReleaseIterator(%struct.dictIterator* %183) #7, !dbg !1248
  br label %246

; <label>:245:                                    ; preds = %175
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1249
  call void @_exit(i32 1) #9, !dbg !1249
  unreachable

; <label>:246:                                    ; preds = %244, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %113) #6, !dbg !1251
  br label %434, !dbg !1252

; <label>:247:                                    ; preds = %110
  %248 = icmp eq i32 %38, 4, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  br i1 %248, label %249, label %332, !dbg !1254

; <label>:249:                                    ; preds = %247
  %250 = call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %251 = call i32 @hashTypeNext(%struct.hashTypeIterator* %250) #7, !dbg !1258
  %252 = icmp eq i32 %251, -1, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %252, label %331, label %253, !dbg !1257

; <label>:253:                                    ; preds = %249
  %254 = getelementptr inbounds [20 x i8], [20 x i8]* %21, i64 0, i64 0
  %255 = bitcast %struct.SHA1_CTX* %6 to i8*
  %256 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  br label %257, !dbg !1257

; <label>:257:                                    ; preds = %253, %328
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %254) #6, !dbg !1260
  %258 = call i8* @memset(i8* nonnull %254, i32 0, i64 20) #7, !dbg !1262
  %259 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %250, i32 1) #7, !dbg !1263
  %260 = getelementptr inbounds i8, i8* %259, i64 -1, !dbg !1267
  %261 = load i8, i8* %260, align 1, !dbg !1267, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  %262 = trunc i8 %261 to i3, !dbg !1269
  switch i3 %262, label %284 [
    i3 0, label %263
    i3 1, label %266
    i3 2, label %270
    i3 3, label %275
    i3 -4, label %280
  ], !dbg !1269

; <label>:263:                                    ; preds = %257
  %264 = lshr i8 %261, 3, !dbg !1270
  %265 = zext i8 %264 to i64, !dbg !1270
  br label %284, !dbg !1271

; <label>:266:                                    ; preds = %257
  %267 = getelementptr inbounds i8, i8* %259, i64 -3, !dbg !1272
  %268 = load i8, i8* %267, align 1, !dbg !1273, !tbaa !205
  %269 = zext i8 %268 to i64, !dbg !1272
  br label %284, !dbg !1274

; <label>:270:                                    ; preds = %257
  %271 = getelementptr inbounds i8, i8* %259, i64 -5, !dbg !1275
  %272 = bitcast i8* %271 to i16*, !dbg !1276
  %273 = load i16, i16* %272, align 1, !dbg !1276, !tbaa !263
  %274 = zext i16 %273 to i64, !dbg !1275
  br label %284, !dbg !1277

; <label>:275:                                    ; preds = %257
  %276 = getelementptr inbounds i8, i8* %259, i64 -9, !dbg !1278
  %277 = bitcast i8* %276 to i32*, !dbg !1279
  %278 = load i32, i32* %277, align 1, !dbg !1279, !tbaa !268
  %279 = zext i32 %278 to i64, !dbg !1278
  br label %284, !dbg !1280

; <label>:280:                                    ; preds = %257
  %281 = getelementptr inbounds i8, i8* %259, i64 -17, !dbg !1281
  %282 = bitcast i8* %281 to i64*, !dbg !1282
  %283 = load i64, i64* %282, align 1, !dbg !1282, !tbaa !272
  br label %284, !dbg !1283

; <label>:284:                                    ; preds = %257, %263, %266, %270, %275, %280
  %285 = phi i64 [ %283, %280 ], [ %279, %275 ], [ %274, %270 ], [ %269, %266 ], [ %265, %263 ], [ 0, %257 ], !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  call void @mixDigest(i8* nonnull %254, i8* %259, i64 %285) #8, !dbg !1287
  call void @sdsfree(i8* %259) #7, !dbg !1288
  %286 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %250, i32 2) #7, !dbg !1289
  %287 = getelementptr inbounds i8, i8* %286, i64 -1, !dbg !1292
  %288 = load i8, i8* %287, align 1, !dbg !1292, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  %289 = trunc i8 %288 to i3, !dbg !1294
  switch i3 %289, label %311 [
    i3 0, label %290
    i3 1, label %293
    i3 2, label %297
    i3 3, label %302
    i3 -4, label %307
  ], !dbg !1294

; <label>:290:                                    ; preds = %284
  %291 = lshr i8 %288, 3, !dbg !1295
  %292 = zext i8 %291 to i64, !dbg !1295
  br label %311, !dbg !1296

; <label>:293:                                    ; preds = %284
  %294 = getelementptr inbounds i8, i8* %286, i64 -3, !dbg !1297
  %295 = load i8, i8* %294, align 1, !dbg !1298, !tbaa !205
  %296 = zext i8 %295 to i64, !dbg !1297
  br label %311, !dbg !1299

; <label>:297:                                    ; preds = %284
  %298 = getelementptr inbounds i8, i8* %286, i64 -5, !dbg !1300
  %299 = bitcast i8* %298 to i16*, !dbg !1301
  %300 = load i16, i16* %299, align 1, !dbg !1301, !tbaa !263
  %301 = zext i16 %300 to i64, !dbg !1300
  br label %311, !dbg !1302

; <label>:302:                                    ; preds = %284
  %303 = getelementptr inbounds i8, i8* %286, i64 -9, !dbg !1303
  %304 = bitcast i8* %303 to i32*, !dbg !1304
  %305 = load i32, i32* %304, align 1, !dbg !1304, !tbaa !268
  %306 = zext i32 %305 to i64, !dbg !1303
  br label %311, !dbg !1305

; <label>:307:                                    ; preds = %284
  %308 = getelementptr inbounds i8, i8* %286, i64 -17, !dbg !1306
  %309 = bitcast i8* %308 to i64*, !dbg !1307
  %310 = load i64, i64* %309, align 1, !dbg !1307, !tbaa !272
  br label %311, !dbg !1308

; <label>:311:                                    ; preds = %284, %290, %293, %297, %302, %307
  %312 = phi i64 [ %310, %307 ], [ %306, %302 ], [ %301, %297 ], [ %296, %293 ], [ %292, %290 ], [ 0, %284 ], !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  call void @mixDigest(i8* nonnull %254, i8* %286, i64 %312) #8, !dbg !1311
  call void @sdsfree(i8* %286) #7, !dbg !1312
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %255) #6, !dbg !1316
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %256) #6, !dbg !1317
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %6) #7, !dbg !1320
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %6, i8* nonnull %254, i32 20) #7, !dbg !1321
  call void @SHA1Final(i8* nonnull %256, %struct.SHA1_CTX* nonnull %6) #7, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  br label %313, !dbg !1325

; <label>:313:                                    ; preds = %313, %311
  %314 = phi i64 [ 0, %311 ], [ %326, %313 ]
  %315 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %314, !dbg !1326
  %316 = load i8, i8* %315, align 2, !dbg !1326, !tbaa !205
  %317 = getelementptr inbounds i8, i8* %2, i64 %314, !dbg !1327
  %318 = load i8, i8* %317, align 1, !dbg !1328, !tbaa !205
  %319 = xor i8 %318, %316, !dbg !1328
  store i8 %319, i8* %317, align 1, !dbg !1328, !tbaa !205
  %320 = or i64 %314, 1, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  %321 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %320, !dbg !1326
  %322 = load i8, i8* %321, align 1, !dbg !1326, !tbaa !205
  %323 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1327
  %324 = load i8, i8* %323, align 1, !dbg !1328, !tbaa !205
  %325 = xor i8 %324, %322, !dbg !1328
  store i8 %325, i8* %323, align 1, !dbg !1328, !tbaa !205
  %326 = add nuw nsw i64 %314, 2, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1325
  %327 = icmp eq i64 %326, 20, !dbg !1331
  br i1 %327, label %328, label %313, !dbg !1325, !llvm.loop !213

; <label>:328:                                    ; preds = %313
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %256) #6, !dbg !1332
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %255) #6, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %254) #6, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  %329 = call i32 @hashTypeNext(%struct.hashTypeIterator* %250) #7, !dbg !1258
  %330 = icmp eq i32 %329, -1, !dbg !1259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %330, label %331, label %257, !dbg !1257, !llvm.loop !1334

; <label>:331:                                    ; preds = %328, %249
  call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %250) #7, !dbg !1335
  br label %434, !dbg !1336

; <label>:332:                                    ; preds = %247
  %333 = icmp eq i32 %38, 6, !dbg !1337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1338
  br i1 %333, label %334, label %396, !dbg !1338

; <label>:334:                                    ; preds = %332
  %335 = bitcast %struct.streamIterator* %22 to i8*, !dbg !1339
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %335) #6, !dbg !1339
  %336 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1340
  %337 = bitcast i8** %336 to %struct.stream**, !dbg !1340
  %338 = load %struct.stream*, %struct.stream** %337, align 8, !dbg !1340, !tbaa !237
  call void @streamIteratorStart(%struct.streamIterator* nonnull %22, %struct.stream* %338, %struct.streamID* null, %struct.streamID* null, i32 0) #7, !dbg !1342
  %339 = bitcast %struct.streamID* %23 to i8*, !dbg !1343
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %339) #6, !dbg !1343
  %340 = bitcast i64* %24 to i8*, !dbg !1344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %340) #6, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  %341 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %22, %struct.streamID* nonnull %23, i64* nonnull %24) #7, !dbg !1348
  %342 = icmp eq i32 %341, 0, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %342, label %395, label %343, !dbg !1345

; <label>:343:                                    ; preds = %334
  %344 = getelementptr inbounds %struct.streamID, %struct.streamID* %23, i64 0, i32 0
  %345 = getelementptr inbounds %struct.streamID, %struct.streamID* %23, i64 0, i32 1
  %346 = bitcast i8** %25 to i8*
  %347 = bitcast i8** %26 to i8*
  %348 = bitcast i64* %27 to i8*
  %349 = bitcast i64* %28 to i8*
  br label %350, !dbg !1345

; <label>:350:                                    ; preds = %343, %392
  %351 = call i8* @sdsempty() #7, !dbg !1349
  %352 = load i64, i64* %344, align 8, !dbg !1350, !tbaa !1351
  %353 = load i64, i64* %345, align 8, !dbg !1353, !tbaa !1354
  %354 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %352, i64 %353) #7, !dbg !1355
  %355 = getelementptr inbounds i8, i8* %354, i64 -1, !dbg !1359
  %356 = load i8, i8* %355, align 1, !dbg !1359, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  %357 = trunc i8 %356 to i3, !dbg !1361
  switch i3 %357, label %379 [
    i3 0, label %358
    i3 1, label %361
    i3 2, label %365
    i3 3, label %370
    i3 -4, label %375
  ], !dbg !1361

; <label>:358:                                    ; preds = %350
  %359 = lshr i8 %356, 3, !dbg !1362
  %360 = zext i8 %359 to i64, !dbg !1362
  br label %379, !dbg !1363

; <label>:361:                                    ; preds = %350
  %362 = getelementptr inbounds i8, i8* %354, i64 -3, !dbg !1364
  %363 = load i8, i8* %362, align 1, !dbg !1365, !tbaa !205
  %364 = zext i8 %363 to i64, !dbg !1364
  br label %379, !dbg !1366

; <label>:365:                                    ; preds = %350
  %366 = getelementptr inbounds i8, i8* %354, i64 -5, !dbg !1367
  %367 = bitcast i8* %366 to i16*, !dbg !1368
  %368 = load i16, i16* %367, align 1, !dbg !1368, !tbaa !263
  %369 = zext i16 %368 to i64, !dbg !1367
  br label %379, !dbg !1369

; <label>:370:                                    ; preds = %350
  %371 = getelementptr inbounds i8, i8* %354, i64 -9, !dbg !1370
  %372 = bitcast i8* %371 to i32*, !dbg !1371
  %373 = load i32, i32* %372, align 1, !dbg !1371, !tbaa !268
  %374 = zext i32 %373 to i64, !dbg !1370
  br label %379, !dbg !1372

; <label>:375:                                    ; preds = %350
  %376 = getelementptr inbounds i8, i8* %354, i64 -17, !dbg !1373
  %377 = bitcast i8* %376 to i64*, !dbg !1374
  %378 = load i64, i64* %377, align 1, !dbg !1374, !tbaa !272
  br label %379, !dbg !1375

; <label>:379:                                    ; preds = %350, %358, %361, %365, %370, %375
  %380 = phi i64 [ %378, %375 ], [ %374, %370 ], [ %369, %365 ], [ %364, %361 ], [ %360, %358 ], [ 0, %350 ], !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  call void @mixDigest(i8* %2, i8* %354, i64 %380) #8, !dbg !1379
  call void @sdsfree(i8* %354) #7, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  %381 = load i64, i64* %24, align 8, !dbg !1382, !tbaa !272
  %382 = add nsw i64 %381, -1, !dbg !1382
  store i64 %382, i64* %24, align 8, !dbg !1382, !tbaa !272
  %383 = icmp eq i64 %381, 0, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %383, label %392, label %384, !dbg !1381

; <label>:384:                                    ; preds = %379, %384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %346) #6, !dbg !1383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %347) #6, !dbg !1383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %348) #6, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %349) #6, !dbg !1384
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %22, i8** nonnull %25, i8** nonnull %26, i64* nonnull %27, i64* nonnull %28) #7, !dbg !1389
  %385 = load i8*, i8** %25, align 8, !dbg !1390, !tbaa !1117
  %386 = load i64, i64* %27, align 8, !dbg !1391, !tbaa !272
  call void @mixDigest(i8* %2, i8* %385, i64 %386) #8, !dbg !1392
  %387 = load i8*, i8** %26, align 8, !dbg !1393, !tbaa !1117
  %388 = load i64, i64* %28, align 8, !dbg !1394, !tbaa !272
  call void @mixDigest(i8* %2, i8* %387, i64 %388) #8, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %349) #6, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %348) #6, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %347) #6, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %346) #6, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  %389 = load i64, i64* %24, align 8, !dbg !1382, !tbaa !272
  %390 = add nsw i64 %389, -1, !dbg !1382
  store i64 %390, i64* %24, align 8, !dbg !1382, !tbaa !272
  %391 = icmp eq i64 %389, 0, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %391, label %392, label %384, !dbg !1381, !llvm.loop !1397

; <label>:392:                                    ; preds = %384, %379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  %393 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %22, %struct.streamID* nonnull %23, i64* nonnull %24) #7, !dbg !1348
  %394 = icmp eq i32 %393, 0, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %394, label %395, label %350, !dbg !1345, !llvm.loop !1398

; <label>:395:                                    ; preds = %392, %334
  call void @streamIteratorStop(%struct.streamIterator* nonnull %22) #7, !dbg !1400
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %340) #6, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %339) #6, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %335) #6, !dbg !1401
  br label %434, !dbg !1402

; <label>:396:                                    ; preds = %332
  %397 = icmp eq i32 %38, 5, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  br i1 %397, label %398, label %433, !dbg !1404

; <label>:398:                                    ; preds = %396
  %399 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %29, i64 0, i32 0, i64 0, !dbg !1405
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %399) #6, !dbg !1405
  %400 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1406
  %401 = bitcast i8** %400 to %struct.moduleValue**, !dbg !1406
  %402 = load %struct.moduleValue*, %struct.moduleValue** %401, align 8, !dbg !1406, !tbaa !237
  %403 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %402, i64 0, i32 0, !dbg !1408
  %404 = load %struct.RedisModuleType*, %struct.RedisModuleType** %403, align 8, !dbg !1408, !tbaa !1409
  %405 = call i8* @memset(i8* nonnull %399, i32 0, i64 20) #7, !dbg !1412
  %406 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %29, i64 0, i32 1, i64 0, !dbg !1412
  %407 = call i8* @memset(i8* nonnull %406, i32 0, i64 20) #7, !dbg !1412
  %408 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %404, i64 0, i32 6, !dbg !1414
  %409 = load void (%struct.RedisModuleDigest*, i8*)*, void (%struct.RedisModuleDigest*, i8*)** %408, align 8, !dbg !1414, !tbaa !1415
  %410 = icmp eq void (%struct.RedisModuleDigest*, i8*)* %409, null, !dbg !1417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %410, label %432, label %411, !dbg !1418

; <label>:411:                                    ; preds = %398
  %412 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %402, i64 0, i32 1, !dbg !1419
  %413 = load i8*, i8** %412, align 8, !dbg !1419, !tbaa !1420
  call void %409(%struct.RedisModuleDigest* nonnull %29, i8* %413) #7, !dbg !1422
  %414 = bitcast %struct.SHA1_CTX* %5 to i8*, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1426
  %415 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0, !dbg !1427
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %415) #6, !dbg !1427
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #7, !dbg !1430
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* nonnull %406, i32 20) #7, !dbg !1431
  call void @SHA1Final(i8* nonnull %415, %struct.SHA1_CTX* nonnull %5) #7, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br label %416, !dbg !1435

; <label>:416:                                    ; preds = %416, %411
  %417 = phi i64 [ 0, %411 ], [ %429, %416 ]
  %418 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %417, !dbg !1436
  %419 = load i8, i8* %418, align 2, !dbg !1436, !tbaa !205
  %420 = getelementptr inbounds i8, i8* %2, i64 %417, !dbg !1437
  %421 = load i8, i8* %420, align 1, !dbg !1438, !tbaa !205
  %422 = xor i8 %421, %419, !dbg !1438
  store i8 %422, i8* %420, align 1, !dbg !1438, !tbaa !205
  %423 = or i64 %417, 1, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  %424 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %423, !dbg !1436
  %425 = load i8, i8* %424, align 1, !dbg !1436, !tbaa !205
  %426 = getelementptr inbounds i8, i8* %2, i64 %423, !dbg !1437
  %427 = load i8, i8* %426, align 1, !dbg !1438, !tbaa !205
  %428 = xor i8 %427, %425, !dbg !1438
  store i8 %428, i8* %426, align 1, !dbg !1438, !tbaa !205
  %429 = add nuw nsw i64 %417, 2, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  %430 = icmp eq i64 %429, 20, !dbg !1441
  br i1 %430, label %431, label %416, !dbg !1435, !llvm.loop !213

; <label>:431:                                    ; preds = %416
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %415) #6, !dbg !1442
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  br label %432, !dbg !1443

; <label>:432:                                    ; preds = %398, %431
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %399) #6, !dbg !1444
  br label %434

; <label>:433:                                    ; preds = %396
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1445
  call void @_exit(i32 1) #9, !dbg !1445
  unreachable

; <label>:434:                                    ; preds = %52, %246, %395, %432, %331, %109, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %435 = icmp eq i64 %35, -1, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %435, label %455, label %436, !dbg !1448

; <label>:436:                                    ; preds = %434
  %437 = bitcast %struct.SHA1_CTX* %10 to i8*, !dbg !1452
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %437) #6, !dbg !1452
  %438 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0, !dbg !1453
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %438) #6, !dbg !1453
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %10) #7, !dbg !1456
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10) #7, !dbg !1457
  call void @SHA1Final(i8* nonnull %438, %struct.SHA1_CTX* nonnull %10) #7, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br label %439, !dbg !1461

; <label>:439:                                    ; preds = %439, %436
  %440 = phi i64 [ 0, %436 ], [ %452, %439 ]
  %441 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %440, !dbg !1462
  %442 = load i8, i8* %441, align 2, !dbg !1462, !tbaa !205
  %443 = getelementptr inbounds i8, i8* %2, i64 %440, !dbg !1463
  %444 = load i8, i8* %443, align 1, !dbg !1464, !tbaa !205
  %445 = xor i8 %444, %442, !dbg !1464
  store i8 %445, i8* %443, align 1, !dbg !1464, !tbaa !205
  %446 = or i64 %440, 1, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %447 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %446, !dbg !1462
  %448 = load i8, i8* %447, align 1, !dbg !1462, !tbaa !205
  %449 = getelementptr inbounds i8, i8* %2, i64 %446, !dbg !1463
  %450 = load i8, i8* %449, align 1, !dbg !1464, !tbaa !205
  %451 = xor i8 %450, %448, !dbg !1464
  store i8 %451, i8* %449, align 1, !dbg !1464, !tbaa !205
  %452 = add nuw nsw i64 %440, 2, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %453 = icmp eq i64 %452, 20, !dbg !1467
  br i1 %453, label %454, label %439, !dbg !1461, !llvm.loop !213

; <label>:454:                                    ; preds = %439
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %438) #6, !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %437) #6, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br label %455, !dbg !1469

; <label>:455:                                    ; preds = %434, %454
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %36) #6, !dbg !1470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #6, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  ret void, !dbg !1470
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
define dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1471 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1481, !tbaa !1485
  %5 = icmp eq i32 %4, 0, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %5, label %6, label %7, !dbg !1491

; <label>:6:                                      ; preds = %3
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1492
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1494, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  br label %7, !dbg !1495

; <label>:7:                                      ; preds = %3, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !1497
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %1, i32 %2, i8* %0) #7, !dbg !1498
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1499, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  ret void, !dbg !1500
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
define dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #0 !dbg !1501 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [256 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1527
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1527
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1529
  call void @llvm.va_start(i8* nonnull %6), !dbg !1529
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1530
  %9 = call i32 @vsnprintf(i8* nonnull %8, i64 256, i8* %2, %struct.__va_list_tag* nonnull %7) #7, !dbg !1532
  call void @llvm.va_end(i8* nonnull %6), !dbg !1533
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1534, !tbaa !1485
  %11 = icmp eq i32 %10, 0, !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %11, label %12, label %13, !dbg !1537

; <label>:12:                                     ; preds = %3
  call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1538
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1539, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br label %13, !dbg !1540

; <label>:13:                                     ; preds = %3, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1542
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.115, i64 0, i64 0)) #7, !dbg !1543
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* nonnull %8, i8* %0, i32 %1) #7, !dbg !1544
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1545
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1546, !tbaa !205
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1547
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  ret void, !dbg !1547
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
define dso_local void @computeDatasetDigest(i8*) local_unnamed_addr #0 !dbg !1548 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %6) #6, !dbg !1569
  %7 = bitcast i32* %5 to i8*, !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #6, !dbg !1572
  %8 = tail call i8* @memset(i8* %0, i32 0, i64 20) #7, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1576, !tbaa !1577
  %10 = icmp sgt i32 %9, 0, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %10, label %11, label %119, !dbg !1579

; <label>:11:                                     ; preds = %1
  %12 = bitcast %struct.SHA1_CTX* %2 to i8*
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  br label %14, !dbg !1579

; <label>:14:                                     ; preds = %11, %114
  %15 = phi i32 [ %9, %11 ], [ %115, %114 ]
  %16 = phi i64 [ 0, %11 ], [ %116, %114 ]
  %17 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1580, !tbaa !1581
  %18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %17, i64 %16, !dbg !1582
  %19 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %18, i64 0, i32 0, !dbg !1584
  %20 = load %struct.dict*, %struct.dict** %19, align 8, !dbg !1584, !tbaa !1586
  %21 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 0, i32 3, !dbg !1584
  %22 = load i64, i64* %21, align 8, !dbg !1584, !tbaa !1588
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %20, i64 0, i32 2, i64 1, i32 3, !dbg !1584
  %24 = load i64, i64* %23, align 8, !dbg !1584, !tbaa !1588
  %25 = sub i64 0, %24, !dbg !1590
  %26 = icmp eq i64 %22, %25, !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %26, label %27, label %28, !dbg !1591

; <label>:27:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br label %114, !dbg !1592

; <label>:28:                                     ; preds = %14
  %29 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %20) #7, !dbg !1593
  %30 = trunc i64 %16 to i32, !dbg !1594
  %31 = call i32 @lwip_htonl(i32 %30) #7, !dbg !1594
  store i32 %31, i32* %5, align 4, !dbg !1596, !tbaa !268
  call void @mixDigest(i8* %0, i8* nonnull %7, i64 4) #8, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %32 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %29) #7, !dbg !1599
  %33 = icmp eq %struct.dictEntry* %32, null, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %33, label %112, label %34, !dbg !1598

; <label>:34:                                     ; preds = %28, %109
  %35 = phi %struct.dictEntry* [ %110, %109 ], [ %32, %28 ]
  %36 = call i8* @memset(i8* nonnull %6, i32 0, i64 20) #7, !dbg !1602
  %37 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 0, !dbg !1603
  %38 = load i8*, i8** %37, align 8, !dbg !1603, !tbaa !1191
  %39 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !1607
  %40 = load i8, i8* %39, align 1, !dbg !1607, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  %41 = trunc i8 %40 to i3, !dbg !1609
  switch i3 %41, label %63 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !1609

; <label>:42:                                     ; preds = %34
  %43 = lshr i8 %40, 3, !dbg !1610
  %44 = zext i8 %43 to i64, !dbg !1610
  br label %63, !dbg !1611

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds i8, i8* %38, i64 -3, !dbg !1612
  %47 = load i8, i8* %46, align 1, !dbg !1613, !tbaa !205
  %48 = zext i8 %47 to i64, !dbg !1612
  br label %63, !dbg !1614

; <label>:49:                                     ; preds = %34
  %50 = getelementptr inbounds i8, i8* %38, i64 -5, !dbg !1615
  %51 = bitcast i8* %50 to i16*, !dbg !1616
  %52 = load i16, i16* %51, align 1, !dbg !1616, !tbaa !263
  %53 = zext i16 %52 to i64, !dbg !1615
  br label %63, !dbg !1617

; <label>:54:                                     ; preds = %34
  %55 = getelementptr inbounds i8, i8* %38, i64 -9, !dbg !1618
  %56 = bitcast i8* %55 to i32*, !dbg !1619
  %57 = load i32, i32* %56, align 1, !dbg !1619, !tbaa !268
  %58 = zext i32 %57 to i64, !dbg !1618
  br label %63, !dbg !1620

; <label>:59:                                     ; preds = %34
  %60 = getelementptr inbounds i8, i8* %38, i64 -17, !dbg !1621
  %61 = bitcast i8* %60 to i64*, !dbg !1622
  %62 = load i64, i64* %61, align 1, !dbg !1622, !tbaa !272
  br label %63, !dbg !1623

; <label>:63:                                     ; preds = %34, %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], [ 0, %34 ], !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1626
  %65 = call %struct.redisObject* @createStringObject(i8* %38, i64 %64) #7, !dbg !1627
  %66 = load i8, i8* %39, align 1, !dbg !1631, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %67 = trunc i8 %66 to i3, !dbg !1633
  switch i3 %67, label %89 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %75
    i3 3, label %80
    i3 -4, label %85
  ], !dbg !1633

; <label>:68:                                     ; preds = %63
  %69 = lshr i8 %66, 3, !dbg !1634
  %70 = zext i8 %69 to i64, !dbg !1634
  br label %89, !dbg !1635

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds i8, i8* %38, i64 -3, !dbg !1636
  %73 = load i8, i8* %72, align 1, !dbg !1637, !tbaa !205
  %74 = zext i8 %73 to i64, !dbg !1636
  br label %89, !dbg !1638

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds i8, i8* %38, i64 -5, !dbg !1639
  %77 = bitcast i8* %76 to i16*, !dbg !1640
  %78 = load i16, i16* %77, align 1, !dbg !1640, !tbaa !263
  %79 = zext i16 %78 to i64, !dbg !1639
  br label %89, !dbg !1641

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds i8, i8* %38, i64 -9, !dbg !1642
  %82 = bitcast i8* %81 to i32*, !dbg !1643
  %83 = load i32, i32* %82, align 1, !dbg !1643, !tbaa !268
  %84 = zext i32 %83 to i64, !dbg !1642
  br label %89, !dbg !1644

; <label>:85:                                     ; preds = %63
  %86 = getelementptr inbounds i8, i8* %38, i64 -17, !dbg !1645
  %87 = bitcast i8* %86 to i64*, !dbg !1646
  %88 = load i64, i64* %87, align 1, !dbg !1646, !tbaa !272
  br label %89, !dbg !1647

; <label>:89:                                     ; preds = %63, %68, %71, %75, %80, %85
  %90 = phi i64 [ %88, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %71 ], [ %70, %68 ], [ 0, %63 ], !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  call void @mixDigest(i8* nonnull %6, i8* nonnull %38, i64 %90) #8, !dbg !1650
  %91 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 1, i32 0, !dbg !1651
  %92 = bitcast i8** %91 to %struct.redisObject**, !dbg !1651
  %93 = load %struct.redisObject*, %struct.redisObject** %92, align 8, !dbg !1651, !tbaa !205
  call void @xorObjectDigest(%struct.redisDb* %18, %struct.redisObject* %65, i8* nonnull %6, %struct.redisObject* %93) #8, !dbg !1653
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %12) #6, !dbg !1657
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #6, !dbg !1658
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #7, !dbg !1661
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* nonnull %6, i32 20) #7, !dbg !1662
  call void @SHA1Final(i8* nonnull %13, %struct.SHA1_CTX* nonnull %2) #7, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  br label %94, !dbg !1666

; <label>:94:                                     ; preds = %94, %89
  %95 = phi i64 [ 0, %89 ], [ %107, %94 ]
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %95, !dbg !1667
  %97 = load i8, i8* %96, align 2, !dbg !1667, !tbaa !205
  %98 = getelementptr inbounds i8, i8* %0, i64 %95, !dbg !1668
  %99 = load i8, i8* %98, align 1, !dbg !1669, !tbaa !205
  %100 = xor i8 %99, %97, !dbg !1669
  store i8 %100, i8* %98, align 1, !dbg !1669, !tbaa !205
  %101 = or i64 %95, 1, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %101, !dbg !1667
  %103 = load i8, i8* %102, align 1, !dbg !1667, !tbaa !205
  %104 = getelementptr inbounds i8, i8* %0, i64 %101, !dbg !1668
  %105 = load i8, i8* %104, align 1, !dbg !1669, !tbaa !205
  %106 = xor i8 %105, %103, !dbg !1669
  store i8 %106, i8* %104, align 1, !dbg !1669, !tbaa !205
  %107 = add nuw nsw i64 %95, 2, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  %108 = icmp eq i64 %107, 20, !dbg !1672
  br i1 %108, label %109, label %94, !dbg !1666, !llvm.loop !213

; <label>:109:                                    ; preds = %94
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %13) #6, !dbg !1673
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %12) #6, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  call void @decrRefCount(%struct.redisObject* %65) #7, !dbg !1674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %110 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %29) #7, !dbg !1599
  %111 = icmp eq %struct.dictEntry* %110, null, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %111, label %112, label %34, !dbg !1598, !llvm.loop !1675

; <label>:112:                                    ; preds = %109, %28
  call void @dictReleaseIterator(%struct.dictIterator* %29) #7, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  %113 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1576, !tbaa !1577
  br label %114, !dbg !1678

; <label>:114:                                    ; preds = %112, %27
  %115 = phi i32 [ %113, %112 ], [ %15, %27 ], !dbg !1576
  %116 = add nuw nsw i64 %16, 1, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  %117 = sext i32 %115 to i64, !dbg !1578
  %118 = icmp slt i64 %116, %117, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %118, label %14, label %119, !dbg !1579, !llvm.loop !1681

; <label>:119:                                    ; preds = %114, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #6, !dbg !1683
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %6) #6, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  ret void, !dbg !1683
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @debugCommand(%struct.client*) local_unnamed_addr #0 !dbg !1684 {
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
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1932
  %16 = load i32, i32* %15, align 8, !dbg !1932, !tbaa !1933
  %17 = icmp eq i32 %16, 2, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %19 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !1939, !tbaa !1940
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1939, !tbaa !1117
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8, !dbg !1939, !tbaa !237
  br i1 %17, label %24, label %30, !dbg !1938

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1941
  %26 = icmp eq i32 %25, 0, !dbg !1941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  br i1 %26, label %27, label %30, !dbg !1942

; <label>:27:                                     ; preds = %24
  %28 = bitcast [24 x i8*]* %2 to i8*, !dbg !1943
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %28) #6, !dbg !1943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([24 x i8*]* @debugCommand.help to i8*), i64 192, i1 false), !dbg !1944
  %29 = getelementptr inbounds [24 x i8*], [24 x i8*]* %2, i64 0, i64 0, !dbg !1945
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %29) #7, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %28) #6, !dbg !1947
  br label %681, !dbg !1948

; <label>:30:                                     ; preds = %1, %24
  %31 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !1949
  %32 = icmp eq i32 %31, 0, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %32, label %33, label %34, !dbg !1950

; <label>:33:                                     ; preds = %30
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1951, !tbaa !205
  br label %681, !dbg !1953

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1954
  %36 = icmp eq i32 %35, 0, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %36, label %37, label %39, !dbg !1955

; <label>:37:                                     ; preds = %34
  %38 = tail call i64 @time(i64* null) #7, !dbg !1956
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 332, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i64 %38) #8, !dbg !1956
  tail call void @_exit(i32 1) #9, !dbg !1956
  unreachable

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !1958
  %41 = icmp eq i32 %40, 0, !dbg !1958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1959
  br i1 %41, label %45, label %42, !dbg !1959

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !1960
  %44 = icmp eq i32 %43, 0, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  br i1 %44, label %45, label %69, !dbg !1961

; <label>:45:                                     ; preds = %42, %39
  %46 = bitcast i64* %3 to i8*, !dbg !1962
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #6, !dbg !1962
  store i64 0, i64* %3, align 8, !dbg !1963, !tbaa !1142
  %47 = icmp sgt i32 %16, 2, !dbg !1964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1966
  br i1 %47, label %48, label %57, !dbg !1966

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !1967
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !1967, !tbaa !1117
  %51 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, i64* nonnull %3, i8* null) #7, !dbg !1970
  %52 = icmp eq i32 %51, 0, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %52, label %53, label %68, !dbg !1972

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %3, align 8, !dbg !1973, !tbaa !1142
  %55 = icmp slt i64 %54, 0, !dbg !1975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %55, label %56, label %57, !dbg !1976

; <label>:56:                                     ; preds = %53
  store i64 0, i64* %3, align 8, !dbg !1977, !tbaa !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br label %57, !dbg !1978

; <label>:57:                                     ; preds = %53, %56, %45
  %58 = phi i64 [ %54, %53 ], [ 0, %56 ], [ 0, %45 ], !dbg !1979
  %59 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !1980, !tbaa !1940
  %60 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %59, i64 1, !dbg !1981
  %61 = load %struct.redisObject*, %struct.redisObject** %60, align 8, !dbg !1981, !tbaa !1117
  %62 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %61, i64 0, i32 2, !dbg !1982
  %63 = load i8*, i8** %62, align 8, !dbg !1982, !tbaa !237
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !1983
  %65 = icmp eq i32 %64, 0, !dbg !1984
  %66 = select i1 %65, i32 3, i32 0, !dbg !1984
  %67 = call i32 @restartServer(i32 %66, i64 %58) #7, !dbg !1986
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1987
  br label %68, !dbg !1988

; <label>:68:                                     ; preds = %48, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #6, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:69:                                     ; preds = %42
  %70 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !1990
  %71 = icmp eq i32 %70, 0, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br i1 %71, label %72, label %75, !dbg !1991

; <label>:72:                                     ; preds = %69
  %73 = tail call i8* @zmalloc(i64 -1) #7, !dbg !1992
  tail call void @zfree(i8* %73) #7, !dbg !1994
  %74 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !1995, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %74) #7, !dbg !1998
  br label %681, !dbg !1999

; <label>:75:                                     ; preds = %69
  %76 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !2000
  %77 = icmp eq i32 %76, 0, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br i1 %77, label %78, label %80, !dbg !2001

; <label>:78:                                     ; preds = %75
  %79 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !2002, !tbaa !1117
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 352) #8, !dbg !2002
  tail call void @_exit(i32 1) #9, !dbg !2002
  unreachable

; <label>:80:                                     ; preds = %75
  %81 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !2004
  %82 = icmp eq i32 %81, 0, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br i1 %82, label %83, label %91, !dbg !2005

; <label>:83:                                     ; preds = %80
  %84 = icmp eq i32 %16, 3, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %84, label %85, label %91, !dbg !2007

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2008
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !2008, !tbaa !1117
  %88 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 2, !dbg !2010
  %89 = load i8*, i8** %88, align 8, !dbg !2010, !tbaa !237
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* %89) #7, !dbg !2011
  %90 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2012, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %90) #7, !dbg !2013
  br label %681, !dbg !2014

; <label>:91:                                     ; preds = %80, %83
  %92 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !2015
  %93 = icmp eq i32 %92, 0, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br i1 %93, label %94, label %112, !dbg !2016

; <label>:94:                                     ; preds = %91
  %95 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2017
  %96 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #7, !dbg !2019
  %97 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2021, !tbaa !2023
  %98 = call i32 @rdbSave(i8* %97, %struct.rdbSaveInfo* %96) #7, !dbg !2024
  %99 = icmp eq i32 %98, 0, !dbg !2025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  br i1 %99, label %102, label %100, !dbg !2026

; <label>:100:                                    ; preds = %94
  %101 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2027, !tbaa !2029
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %101) #7, !dbg !2030
  br label %111, !dbg !2031

; <label>:102:                                    ; preds = %94
  %103 = call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2032
  call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2033
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2034, !tbaa !2023
  %105 = call i32 @rdbLoad(i8* %104, %struct.rdbSaveInfo* null) #7, !dbg !2035
  call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2037
  %106 = icmp eq i32 %105, 0, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  br i1 %106, label %108, label %107, !dbg !2040

; <label>:107:                                    ; preds = %102
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2041
  br label %110, !dbg !2043

; <label>:108:                                    ; preds = %102
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !2044
  %109 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2045, !tbaa !1996
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %109) #7, !dbg !2046
  br label %110, !dbg !2047

; <label>:110:                                    ; preds = %108, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br label %111

; <label>:111:                                    ; preds = %110, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2047
  br label %681

; <label>:112:                                    ; preds = %91
  %113 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !2049
  %114 = icmp eq i32 %113, 0, !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  br i1 %114, label %115, label %129, !dbg !2050

; <label>:115:                                    ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2051, !tbaa !2053
  %117 = icmp eq i32 %116, 0, !dbg !2054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  br i1 %117, label %119, label %118, !dbg !2055

; <label>:118:                                    ; preds = %115
  tail call void @flushAppendOnlyFile(i32 1) #7, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br label %119, !dbg !2056

; <label>:119:                                    ; preds = %115, %118
  %120 = tail call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2057
  tail call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2058
  %121 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !2059, !tbaa !2060
  %122 = tail call i32 @loadAppendOnlyFile(i8* %121) #7, !dbg !2061
  tail call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2063
  %123 = icmp eq i32 %122, 0, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br i1 %123, label %126, label %124, !dbg !2066

; <label>:124:                                    ; preds = %119
  %125 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2067, !tbaa !2029
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %125) #7, !dbg !2069
  br label %128, !dbg !2070

; <label>:126:                                    ; preds = %119
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2071, !tbaa !2072
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !2073
  %127 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2074, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %127) #7, !dbg !2075
  br label %128, !dbg !2076

; <label>:128:                                    ; preds = %126, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2077
  br label %681

; <label>:129:                                    ; preds = %112
  %130 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !2078
  %131 = icmp eq i32 %130, 0, !dbg !2078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2079
  br i1 %131, label %132, label %225, !dbg !2079

; <label>:132:                                    ; preds = %129
  %133 = icmp eq i32 %16, 3, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  br i1 %133, label %134, label %225, !dbg !2081

; <label>:134:                                    ; preds = %132
  %135 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2082
  %136 = load %struct.redisDb*, %struct.redisDb** %135, align 8, !dbg !2082, !tbaa !2084
  %137 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %136, i64 0, i32 0, !dbg !2085
  %138 = load %struct.dict*, %struct.dict** %137, align 8, !dbg !2085, !tbaa !1586
  %139 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2086
  %140 = load %struct.redisObject*, %struct.redisObject** %139, align 8, !dbg !2086, !tbaa !1117
  %141 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %140, i64 0, i32 2, !dbg !2087
  %142 = load i8*, i8** %141, align 8, !dbg !2087, !tbaa !237
  %143 = tail call %struct.dictEntry* @dictFind(%struct.dict* %138, i8* %142) #7, !dbg !2088
  %144 = icmp eq %struct.dictEntry* %143, null, !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br i1 %144, label %145, label %147, !dbg !2091

; <label>:145:                                    ; preds = %134
  %146 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2092, !tbaa !2094
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %146) #7, !dbg !2095
  br label %224, !dbg !2096

; <label>:147:                                    ; preds = %134
  %148 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %143, i64 0, i32 1, i32 0, !dbg !2097
  %149 = load i8*, i8** %148, align 8, !dbg !2097, !tbaa !205
  %150 = bitcast i8* %149 to %struct.redisObject*, !dbg !2097
  %151 = bitcast i8* %149 to i32*, !dbg !2099
  %152 = load i32, i32* %151, align 8, !dbg !2099
  %153 = lshr i32 %152, 4, !dbg !2099
  %154 = and i32 %153, 15, !dbg !2099
  %155 = tail call i8* @strEncoding(i32 %154) #7, !dbg !2100
  %156 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 0, !dbg !2102
  call void @llvm.lifetime.start.p0i8(i64 138, i8* nonnull %156) #6, !dbg !2102
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %156, i8 0, i64 138, i1 false), !dbg !2103
  %157 = load i32, i32* %151, align 8, !dbg !2104
  %158 = and i32 %157, 240, !dbg !2104
  %159 = icmp eq i32 %158, 144, !dbg !2105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2106
  br i1 %159, label %160, label %215, !dbg !2106

; <label>:160:                                    ; preds = %147
  %161 = getelementptr inbounds i8, i8* %149, i64 8, !dbg !2109
  %162 = bitcast i8* %161 to %struct.quicklist**, !dbg !2109
  %163 = load %struct.quicklist*, %struct.quicklist** %162, align 8, !dbg !2109, !tbaa !237
  %164 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %163, i64 0, i32 3, !dbg !2111
  %165 = load i64, i64* %164, align 8, !dbg !2111, !tbaa !2112
  %166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %156, i64 138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i64 %165) #7, !dbg !2114
  %167 = sext i32 %166 to i64, !dbg !2116
  %168 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 %167, !dbg !2116
  %169 = sub nsw i32 138, %166, !dbg !2117
  %170 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %163, i64 0, i32 2, !dbg !2118
  %171 = load i64, i64* %170, align 8, !dbg !2118, !tbaa !2119
  %172 = uitofp i64 %171 to double, !dbg !2120
  %173 = load i64, i64* %164, align 8, !dbg !2121, !tbaa !2112
  %174 = uitofp i64 %173 to double, !dbg !2122
  %175 = fdiv double %172, %174, !dbg !2123
  %176 = sext i32 %169 to i64, !dbg !2125
  %177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %168, i64 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), double %175) #7, !dbg !2126
  %178 = sext i32 %177 to i64, !dbg !2127
  %179 = getelementptr inbounds i8, i8* %168, i64 %178, !dbg !2127
  %180 = sub nsw i32 %169, %177, !dbg !2128
  %181 = sext i32 %180 to i64, !dbg !2129
  %182 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %163, i64 0, i32 4, !dbg !2130
  %183 = load i32, i32* %182, align 8, !dbg !2130
  %184 = shl i32 %183, 16, !dbg !2130
  %185 = ashr exact i32 %184, 16, !dbg !2130
  %186 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %179, i64 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i32 %185) #7, !dbg !2131
  %187 = sext i32 %186 to i64, !dbg !2132
  %188 = getelementptr inbounds i8, i8* %179, i64 %187, !dbg !2132
  %189 = sub nsw i32 %180, %186, !dbg !2133
  %190 = load i32, i32* %182, align 8, !dbg !2134
  %191 = icmp ugt i32 %190, 65535, !dbg !2135
  %192 = zext i1 %191 to i32, !dbg !2135
  %193 = sext i32 %189 to i64, !dbg !2137
  %194 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %188, i64 %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i32 %192) #7, !dbg !2138
  %195 = sext i32 %194 to i64, !dbg !2139
  %196 = getelementptr inbounds i8, i8* %188, i64 %195, !dbg !2139
  %197 = sub nsw i32 %189, %194, !dbg !2140
  %198 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %163, i64 0, i32 0, !dbg !2142
  %199 = load %struct.quicklistNode*, %struct.quicklistNode** %198, align 8, !dbg !2142, !tbaa !2143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  %200 = icmp eq %struct.quicklistNode* %199, null, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %200, label %201, label %205, !dbg !2146

; <label>:201:                                    ; preds = %205, %160
  %202 = phi i64 [ 0, %160 ], [ %211, %205 ], !dbg !2147
  %203 = sext i32 %197 to i64, !dbg !2150
  %204 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %196, i64 %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i64 0, i64 0), i64 %202) #7, !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br label %215, !dbg !2152

; <label>:205:                                    ; preds = %160, %205
  %206 = phi i64 [ %211, %205 ], [ 0, %160 ]
  %207 = phi %struct.quicklistNode* [ %213, %205 ], [ %199, %160 ]
  %208 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %207, i64 0, i32 3, !dbg !2153
  %209 = load i32, i32* %208, align 8, !dbg !2153, !tbaa !2154
  %210 = zext i32 %209 to i64, !dbg !2156
  %211 = add i64 %206, %210, !dbg !2157
  %212 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %207, i64 0, i32 1, !dbg !2158
  %213 = load %struct.quicklistNode*, %struct.quicklistNode** %212, align 8, !dbg !2158, !tbaa !2159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %214 = icmp eq %struct.quicklistNode* %213, null, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %214, label %201, label %205, !dbg !2146, !llvm.loop !2161

; <label>:215:                                    ; preds = %201, %147
  %216 = getelementptr inbounds i8, i8* %149, i64 4, !dbg !2163
  %217 = bitcast i8* %216 to i32*, !dbg !2163
  %218 = load i32, i32* %217, align 4, !dbg !2163, !tbaa !2164
  %219 = call i64 @rdbSavedObjectLen(%struct.redisObject* %150) #7, !dbg !2165
  %220 = load i32, i32* %151, align 8, !dbg !2166
  %221 = lshr i32 %220, 8, !dbg !2166
  %222 = call i64 @estimateObjectIdleTime(%struct.redisObject* %150) #7, !dbg !2167
  %223 = udiv i64 %222, 1000, !dbg !2168
  call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* %0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.55, i64 0, i64 0), i8* %149, i32 %218, i8* %155, i64 %219, i32 %221, i64 %223, i8* nonnull %156) #7, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 138, i8* nonnull %156) #6, !dbg !2170
  br label %224, !dbg !2170

; <label>:224:                                    ; preds = %215, %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  br label %681

; <label>:225:                                    ; preds = %129, %132
  %226 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #10, !dbg !2172
  %227 = icmp eq i32 %226, 0, !dbg !2172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  br i1 %227, label %228, label %359, !dbg !2173

; <label>:228:                                    ; preds = %225
  %229 = icmp eq i32 %16, 3, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br i1 %229, label %230, label %359, !dbg !2175

; <label>:230:                                    ; preds = %228
  %231 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2176
  %232 = load %struct.redisDb*, %struct.redisDb** %231, align 8, !dbg !2176, !tbaa !2084
  %233 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %232, i64 0, i32 0, !dbg !2178
  %234 = load %struct.dict*, %struct.dict** %233, align 8, !dbg !2178, !tbaa !1586
  %235 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2179
  %236 = load %struct.redisObject*, %struct.redisObject** %235, align 8, !dbg !2179, !tbaa !1117
  %237 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %236, i64 0, i32 2, !dbg !2180
  %238 = load i8*, i8** %237, align 8, !dbg !2180, !tbaa !237
  %239 = tail call %struct.dictEntry* @dictFind(%struct.dict* %234, i8* %238) #7, !dbg !2181
  %240 = icmp eq %struct.dictEntry* %239, null, !dbg !2183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  br i1 %240, label %241, label %243, !dbg !2184

; <label>:241:                                    ; preds = %230
  %242 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2185, !tbaa !2094
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %242) #7, !dbg !2187
  br label %358, !dbg !2188

; <label>:243:                                    ; preds = %230
  %244 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 1, i32 0, !dbg !2189
  %245 = bitcast i8** %244 to %struct.redisObject**, !dbg !2189
  %246 = load %struct.redisObject*, %struct.redisObject** %245, align 8, !dbg !2189, !tbaa !205
  %247 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 0, !dbg !2191
  %248 = load i8*, i8** %247, align 8, !dbg !2191, !tbaa !1191
  %249 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %246, i64 0, i32 0, !dbg !2193
  %250 = load i32, i32* %249, align 8, !dbg !2193
  %251 = and i32 %250, 15, !dbg !2193
  %252 = icmp eq i32 %251, 0, !dbg !2195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2196
  br i1 %252, label %253, label %259, !dbg !2196

; <label>:253:                                    ; preds = %243
  %254 = lshr i32 %250, 4, !dbg !2197
  %255 = and i32 %254, 15, !dbg !2197
  %256 = icmp eq i32 %255, 0, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br i1 %256, label %260, label %257, !dbg !2197

; <label>:257:                                    ; preds = %253
  %258 = icmp eq i32 %255, 8, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2198
  br i1 %258, label %260, label %259, !dbg !2198

; <label>:259:                                    ; preds = %243, %257
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2199
  br label %357, !dbg !2201

; <label>:260:                                    ; preds = %257, %253
  %261 = getelementptr inbounds i8, i8* %248, i64 -1, !dbg !2205
  %262 = load i8, i8* %261, align 1, !dbg !2205, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %263 = trunc i8 %262 to i3, !dbg !2207
  switch i3 %263, label %303 [
    i3 0, label %264
    i3 1, label %267
    i3 2, label %275
    i3 3, label %285
    i3 -4, label %295
  ], !dbg !2207

; <label>:264:                                    ; preds = %260
  %265 = lshr i8 %262, 3, !dbg !2208
  %266 = zext i8 %265 to i64, !dbg !2208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  br label %304, !dbg !2228

; <label>:267:                                    ; preds = %260
  %268 = getelementptr inbounds i8, i8* %248, i64 -3, !dbg !2230
  %269 = load i8, i8* %268, align 1, !dbg !2231, !tbaa !205
  %270 = zext i8 %269 to i64, !dbg !2230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  %271 = getelementptr inbounds i8, i8* %248, i64 -2, !dbg !2234
  %272 = load i8, i8* %271, align 1, !dbg !2234, !tbaa !205
  %273 = zext i8 %272 to i64, !dbg !2235
  %274 = sub nsw i64 %273, %270, !dbg !2236
  br label %304

; <label>:275:                                    ; preds = %260
  %276 = getelementptr inbounds i8, i8* %248, i64 -5, !dbg !2237
  %277 = bitcast i8* %276 to i16*, !dbg !2238
  %278 = load i16, i16* %277, align 1, !dbg !2238, !tbaa !263
  %279 = zext i16 %278 to i64, !dbg !2237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  %280 = getelementptr inbounds i8, i8* %248, i64 -3, !dbg !2241
  %281 = bitcast i8* %280 to i16*, !dbg !2241
  %282 = load i16, i16* %281, align 1, !dbg !2241, !tbaa !263
  %283 = zext i16 %282 to i64, !dbg !2242
  %284 = sub nsw i64 %283, %279, !dbg !2243
  br label %304

; <label>:285:                                    ; preds = %260
  %286 = getelementptr inbounds i8, i8* %248, i64 -9, !dbg !2244
  %287 = bitcast i8* %286 to i32*, !dbg !2245
  %288 = load i32, i32* %287, align 1, !dbg !2245, !tbaa !268
  %289 = zext i32 %288 to i64, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  %290 = getelementptr inbounds i8, i8* %248, i64 -5, !dbg !2248
  %291 = bitcast i8* %290 to i32*, !dbg !2248
  %292 = load i32, i32* %291, align 1, !dbg !2248, !tbaa !268
  %293 = sub i32 %292, %288, !dbg !2249
  %294 = zext i32 %293 to i64, !dbg !2250
  br label %304

; <label>:295:                                    ; preds = %260
  %296 = getelementptr inbounds i8, i8* %248, i64 -17, !dbg !2251
  %297 = bitcast i8* %296 to i64*, !dbg !2252
  %298 = load i64, i64* %297, align 1, !dbg !2252, !tbaa !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  %299 = getelementptr inbounds i8, i8* %248, i64 -9, !dbg !2255
  %300 = bitcast i8* %299 to i64*, !dbg !2255
  %301 = load i64, i64* %300, align 1, !dbg !2255, !tbaa !272
  %302 = sub i64 %301, %298, !dbg !2256
  br label %304

; <label>:303:                                    ; preds = %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2227
  br label %304, !dbg !2258

; <label>:304:                                    ; preds = %264, %267, %275, %285, %295, %303
  %305 = phi i64 [ 0, %303 ], [ %298, %295 ], [ %289, %285 ], [ %279, %275 ], [ %270, %267 ], [ %266, %264 ]
  %306 = phi i64 [ 0, %303 ], [ %302, %295 ], [ %294, %285 ], [ %284, %275 ], [ %274, %267 ], [ 0, %264 ], !dbg !2259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2260
  %307 = tail call i64 @sdsZmallocSize(i8* nonnull %248) #7, !dbg !2261
  %308 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %246, i64 0, i32 2, !dbg !2262
  %309 = load i8*, i8** %308, align 8, !dbg !2262, !tbaa !237
  %310 = getelementptr inbounds i8, i8* %309, i64 -1, !dbg !2265
  %311 = load i8, i8* %310, align 1, !dbg !2265, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2267
  %312 = trunc i8 %311 to i3, !dbg !2267
  switch i3 %312, label %352 [
    i3 0, label %313
    i3 1, label %316
    i3 2, label %324
    i3 3, label %334
    i3 -4, label %344
  ], !dbg !2267

; <label>:313:                                    ; preds = %304
  %314 = lshr i8 %311, 3, !dbg !2268
  %315 = zext i8 %314 to i64, !dbg !2268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br label %353, !dbg !2275

; <label>:316:                                    ; preds = %304
  %317 = getelementptr inbounds i8, i8* %309, i64 -3, !dbg !2276
  %318 = load i8, i8* %317, align 1, !dbg !2277, !tbaa !205
  %319 = zext i8 %318 to i64, !dbg !2276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  %320 = getelementptr inbounds i8, i8* %309, i64 -2, !dbg !2280
  %321 = load i8, i8* %320, align 1, !dbg !2280, !tbaa !205
  %322 = zext i8 %321 to i64, !dbg !2281
  %323 = sub nsw i64 %322, %319, !dbg !2282
  br label %353

; <label>:324:                                    ; preds = %304
  %325 = getelementptr inbounds i8, i8* %309, i64 -5, !dbg !2283
  %326 = bitcast i8* %325 to i16*, !dbg !2284
  %327 = load i16, i16* %326, align 1, !dbg !2284, !tbaa !263
  %328 = zext i16 %327 to i64, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  %329 = getelementptr inbounds i8, i8* %309, i64 -3, !dbg !2287
  %330 = bitcast i8* %329 to i16*, !dbg !2287
  %331 = load i16, i16* %330, align 1, !dbg !2287, !tbaa !263
  %332 = zext i16 %331 to i64, !dbg !2288
  %333 = sub nsw i64 %332, %328, !dbg !2289
  br label %353

; <label>:334:                                    ; preds = %304
  %335 = getelementptr inbounds i8, i8* %309, i64 -9, !dbg !2290
  %336 = bitcast i8* %335 to i32*, !dbg !2291
  %337 = load i32, i32* %336, align 1, !dbg !2291, !tbaa !268
  %338 = zext i32 %337 to i64, !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  %339 = getelementptr inbounds i8, i8* %309, i64 -5, !dbg !2294
  %340 = bitcast i8* %339 to i32*, !dbg !2294
  %341 = load i32, i32* %340, align 1, !dbg !2294, !tbaa !268
  %342 = sub i32 %341, %337, !dbg !2295
  %343 = zext i32 %342 to i64, !dbg !2296
  br label %353

; <label>:344:                                    ; preds = %304
  %345 = getelementptr inbounds i8, i8* %309, i64 -17, !dbg !2297
  %346 = bitcast i8* %345 to i64*, !dbg !2298
  %347 = load i64, i64* %346, align 1, !dbg !2298, !tbaa !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  %348 = getelementptr inbounds i8, i8* %309, i64 -9, !dbg !2301
  %349 = bitcast i8* %348 to i64*, !dbg !2301
  %350 = load i64, i64* %349, align 1, !dbg !2301, !tbaa !272
  %351 = sub i64 %350, %347, !dbg !2302
  br label %353

; <label>:352:                                    ; preds = %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br label %353, !dbg !2304

; <label>:353:                                    ; preds = %313, %316, %324, %334, %344, %352
  %354 = phi i64 [ 0, %352 ], [ %347, %344 ], [ %338, %334 ], [ %328, %324 ], [ %319, %316 ], [ %315, %313 ]
  %355 = phi i64 [ 0, %352 ], [ %351, %344 ], [ %343, %334 ], [ %333, %324 ], [ %323, %316 ], [ 0, %313 ], !dbg !2305
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  %356 = tail call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %246) #7, !dbg !2307
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.58, i64 0, i64 0), i64 %305, i64 %306, i64 %307, i64 %354, i64 %355, i64 %356) #7, !dbg !2308
  br label %357

; <label>:357:                                    ; preds = %353, %259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %358, !dbg !2309

; <label>:358:                                    ; preds = %357, %241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  br label %681

; <label>:359:                                    ; preds = %225, %228
  %360 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !2311
  %361 = icmp eq i32 %360, 0, !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  br i1 %361, label %362, label %381, !dbg !2312

; <label>:362:                                    ; preds = %359
  %363 = icmp eq i32 %16, 3, !dbg !2313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2314
  br i1 %363, label %364, label %381, !dbg !2314

; <label>:364:                                    ; preds = %362
  %365 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2315
  %366 = load %struct.redisObject*, %struct.redisObject** %365, align 8, !dbg !2315, !tbaa !1117
  %367 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2317, !tbaa !2094
  %368 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %366, %struct.redisObject* %367) #7, !dbg !2318
  %369 = icmp eq %struct.redisObject* %368, null, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  br i1 %369, label %380, label %370, !dbg !2321

; <label>:370:                                    ; preds = %364
  %371 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %368, i64 0, i32 0, !dbg !2322
  %372 = load i32, i32* %371, align 8, !dbg !2322
  %373 = and i32 %372, 240, !dbg !2322
  %374 = icmp eq i32 %373, 80, !dbg !2324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2325
  br i1 %374, label %376, label %375, !dbg !2325

; <label>:375:                                    ; preds = %370
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2326
  br label %379, !dbg !2328

; <label>:376:                                    ; preds = %370
  %377 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %368, i64 0, i32 2, !dbg !2329
  %378 = load i8*, i8** %377, align 8, !dbg !2329, !tbaa !237
  tail call void @ziplistRepr(i8* %378) #7, !dbg !2331
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !2332
  br label %379

; <label>:379:                                    ; preds = %376, %375
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %380, !dbg !2333

; <label>:380:                                    ; preds = %364, %379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  br label %681

; <label>:381:                                    ; preds = %359, %362
  %382 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !2335
  %383 = icmp eq i32 %382, 0, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br i1 %383, label %384, label %464, !dbg !2336

; <label>:384:                                    ; preds = %381
  %385 = icmp sgt i32 %16, 2, !dbg !2337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2338
  br i1 %385, label %386, label %464, !dbg !2338

; <label>:386:                                    ; preds = %384
  %387 = icmp slt i32 %16, 6, !dbg !2339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  br i1 %387, label %388, label %464, !dbg !2340

; <label>:388:                                    ; preds = %386
  %389 = bitcast i64* %6 to i8*, !dbg !2341
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %389) #6, !dbg !2341
  %390 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !2342
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %390) #6, !dbg !2342
  %391 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2344
  %392 = load %struct.redisObject*, %struct.redisObject** %391, align 8, !dbg !2344, !tbaa !1117
  %393 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %392, i64* nonnull %6, i8* null) #7, !dbg !2347
  %394 = icmp eq i32 %393, 0, !dbg !2348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2349
  br i1 %394, label %395, label %463, !dbg !2349

; <label>:395:                                    ; preds = %388
  %396 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2350
  %397 = load %struct.redisDb*, %struct.redisDb** %396, align 8, !dbg !2350, !tbaa !2084
  %398 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %397, i64 0, i32 0, !dbg !2351
  %399 = load %struct.dict*, %struct.dict** %398, align 8, !dbg !2351, !tbaa !1586
  %400 = load i64, i64* %6, align 8, !dbg !2352, !tbaa !272
  %401 = call i32 @dictExpand(%struct.dict* %399, i64 %400) #7, !dbg !2353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  %402 = load i64, i64* %6, align 8, !dbg !2356, !tbaa !272
  %403 = icmp sgt i64 %402, 0, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br i1 %403, label %404, label %461, !dbg !2358

; <label>:404:                                    ; preds = %395
  %405 = bitcast i64* %8 to i8*
  br label %406, !dbg !2358

; <label>:406:                                    ; preds = %404, %457
  %407 = phi i64 [ 0, %404 ], [ %458, %457 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %405) #6, !dbg !2359
  store i64 0, i64* %8, align 8, !dbg !2360, !tbaa !272
  %408 = load i32, i32* %15, align 8, !dbg !2361, !tbaa !1933
  %409 = icmp eq i32 %408, 3, !dbg !2362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  br i1 %409, label %416, label %410, !dbg !2363

; <label>:410:                                    ; preds = %406
  %411 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2364, !tbaa !1940
  %412 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %411, i64 3, !dbg !2365
  %413 = load %struct.redisObject*, %struct.redisObject** %412, align 8, !dbg !2365, !tbaa !1117
  %414 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %413, i64 0, i32 2, !dbg !2366
  %415 = load i8*, i8** %414, align 8, !dbg !2366, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  br label %416, !dbg !2363

; <label>:416:                                    ; preds = %406, %410
  %417 = phi i8* [ %415, %410 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), %406 ], !dbg !2363
  %418 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %390, i64 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %417, i64 %407) #7, !dbg !2367
  %419 = call i64 @strlen(i8* nonnull %390) #7, !dbg !2368
  %420 = call %struct.redisObject* @createStringObject(i8* nonnull %390, i64 %419) #7, !dbg !2369
  %421 = load i32, i32* %15, align 8, !dbg !2371, !tbaa !1933
  %422 = icmp eq i32 %421, 5, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  br i1 %422, label %423, label %429, !dbg !2374

; <label>:423:                                    ; preds = %416
  %424 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2375, !tbaa !1940
  %425 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %424, i64 4, !dbg !2377
  %426 = load %struct.redisObject*, %struct.redisObject** %425, align 8, !dbg !2377, !tbaa !1117
  %427 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %426, i64* nonnull %8, i8* null) #7, !dbg !2378
  %428 = icmp eq i32 %427, 0, !dbg !2379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  br i1 %428, label %429, label %456, !dbg !2380

; <label>:429:                                    ; preds = %423, %416
  %430 = load %struct.redisDb*, %struct.redisDb** %396, align 8, !dbg !2381, !tbaa !2084
  %431 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %430, %struct.redisObject* %420) #7, !dbg !2383
  %432 = icmp eq %struct.redisObject* %431, null, !dbg !2384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2385
  br i1 %432, label %434, label %433, !dbg !2385

; <label>:433:                                    ; preds = %429
  call void @decrRefCount(%struct.redisObject* %420) #7, !dbg !2386
  br label %457, !dbg !2388

; <label>:434:                                    ; preds = %429
  %435 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %390, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i64 %407) #7, !dbg !2389
  %436 = load i64, i64* %8, align 8, !dbg !2390, !tbaa !272
  %437 = icmp eq i64 %436, 0, !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  %438 = call i64 @strlen(i8* nonnull %390) #7, !dbg !2393
  br i1 %437, label %439, label %441, !dbg !2392

; <label>:439:                                    ; preds = %434
  %440 = call %struct.redisObject* @createStringObject(i8* nonnull %390, i64 %438) #7, !dbg !2394
  br label %452, !dbg !2396

; <label>:441:                                    ; preds = %434
  %442 = load i64, i64* %8, align 8, !dbg !2397, !tbaa !272
  %443 = call %struct.redisObject* @createStringObject(i8* null, i64 %442) #7, !dbg !2398
  %444 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %443, i64 0, i32 2, !dbg !2399
  %445 = load i8*, i8** %444, align 8, !dbg !2399, !tbaa !237
  %446 = load i64, i64* %8, align 8, !dbg !2400, !tbaa !272
  %447 = shl i64 %438, 32, !dbg !2401
  %448 = ashr exact i64 %447, 32, !dbg !2401
  %449 = icmp sgt i64 %446, %448, !dbg !2402
  %450 = select i1 %449, i64 %448, i64 %446, !dbg !2400
  %451 = call i8* @memcpy(i8* %445, i8* nonnull %390, i64 %450) #7, !dbg !2403
  br label %452

; <label>:452:                                    ; preds = %441, %439
  %453 = phi %struct.redisObject* [ %440, %439 ], [ %443, %441 ], !dbg !2393
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %454 = load %struct.redisDb*, %struct.redisDb** %396, align 8, !dbg !2404, !tbaa !2084
  call void @dbAdd(%struct.redisDb* %454, %struct.redisObject* %420, %struct.redisObject* %453) #7, !dbg !2405
  %455 = load %struct.redisDb*, %struct.redisDb** %396, align 8, !dbg !2406, !tbaa !2084
  call void @signalModifiedKey(%struct.redisDb* %455, %struct.redisObject* %420) #7, !dbg !2407
  call void @decrRefCount(%struct.redisObject* %420) #7, !dbg !2408
  br label %457, !dbg !2409

; <label>:456:                                    ; preds = %423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %405) #6, !dbg !2409
  br label %463

; <label>:457:                                    ; preds = %433, %452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %405) #6, !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %458 = add nuw nsw i64 %407, 1, !dbg !2412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2413
  %459 = load i64, i64* %6, align 8, !dbg !2356, !tbaa !272
  %460 = icmp slt i64 %458, %459, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  br i1 %460, label %406, label %461, !dbg !2358, !llvm.loop !2414

; <label>:461:                                    ; preds = %457, %395
  %462 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2416, !tbaa !1996
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %462) #7, !dbg !2417
  br label %463, !dbg !2418

; <label>:463:                                    ; preds = %388, %456, %461
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %390) #6, !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %389) #6, !dbg !2418
  br label %681

; <label>:464:                                    ; preds = %381, %386, %384
  %465 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !2419
  %466 = icmp eq i32 %465, 0, !dbg !2419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  br i1 %466, label %467, label %481, !dbg !2420

; <label>:467:                                    ; preds = %464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  br i1 %17, label %468, label %481, !dbg !2421

; <label>:468:                                    ; preds = %467
  %469 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %469) #6, !dbg !2422
  %470 = tail call i8* @sdsempty() #7, !dbg !2424
  call void @computeDatasetDigest(i8* nonnull %469) #8, !dbg !2426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  br label %472, !dbg !2429

; <label>:471:                                    ; preds = %472
  call void @addReplyStatus(%struct.client* %0, i8* %478) #7, !dbg !2430
  call void @sdsfree(i8* %478) #7, !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %469) #6, !dbg !2432
  br label %681, !dbg !2433

; <label>:472:                                    ; preds = %472, %468
  %473 = phi i64 [ 0, %468 ], [ %479, %472 ]
  %474 = phi i8* [ %470, %468 ], [ %478, %472 ]
  %475 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 %473, !dbg !2434
  %476 = load i8, i8* %475, align 1, !dbg !2434, !tbaa !205
  %477 = zext i8 %476 to i32, !dbg !2434
  %478 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %477) #7, !dbg !2436
  %479 = add nuw nsw i64 %473, 1, !dbg !2437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  %480 = icmp eq i64 %479, 20, !dbg !2439
  br i1 %480, label %471, label %472, !dbg !2429, !llvm.loop !2440

; <label>:481:                                    ; preds = %464, %467
  %482 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #10, !dbg !2442
  %483 = icmp eq i32 %482, 0, !dbg !2442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2443
  br i1 %483, label %484, label %524, !dbg !2443

; <label>:484:                                    ; preds = %481
  %485 = icmp sgt i32 %16, 1, !dbg !2444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2445
  br i1 %485, label %486, label %524, !dbg !2445

; <label>:486:                                    ; preds = %484
  %487 = add nsw i32 %16, -2, !dbg !2446
  %488 = sext i32 %487 to i64, !dbg !2447
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %488) #7, !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2450
  %489 = load i32, i32* %15, align 8, !dbg !2451, !tbaa !1933
  %490 = icmp sgt i32 %489, 2, !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  br i1 %490, label %491, label %681, !dbg !2453

; <label>:491:                                    ; preds = %486
  %492 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %493 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  br label %494, !dbg !2453

; <label>:494:                                    ; preds = %491, %510
  %495 = phi i64 [ 2, %491 ], [ %511, %510 ]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %492) #6, !dbg !2454
  %496 = call i8* @memset(i8* nonnull %492, i32 0, i64 20) #7, !dbg !2456
  %497 = load %struct.redisDb*, %struct.redisDb** %493, align 8, !dbg !2457, !tbaa !2084
  %498 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2458, !tbaa !1940
  %499 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %498, i64 %495, !dbg !2459
  %500 = load %struct.redisObject*, %struct.redisObject** %499, align 8, !dbg !2459, !tbaa !1117
  %501 = call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %497, %struct.redisObject* %500, i32 1) #7, !dbg !2460
  %502 = icmp eq %struct.redisObject* %501, null, !dbg !2462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2464
  br i1 %502, label %508, label %503, !dbg !2464

; <label>:503:                                    ; preds = %494
  %504 = load %struct.redisDb*, %struct.redisDb** %493, align 8, !dbg !2465, !tbaa !2084
  %505 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2466, !tbaa !1940
  %506 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %505, i64 %495, !dbg !2467
  %507 = load %struct.redisObject*, %struct.redisObject** %506, align 8, !dbg !2467, !tbaa !1117
  call void @xorObjectDigest(%struct.redisDb* %504, %struct.redisObject* %507, i8* nonnull %492, %struct.redisObject* nonnull %501) #8, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  br label %508, !dbg !2468

; <label>:508:                                    ; preds = %494, %503
  %509 = call i8* @sdsempty() #7, !dbg !2469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  br label %515, !dbg !2473

; <label>:510:                                    ; preds = %515
  call void @addReplyStatus(%struct.client* %0, i8* %521) #7, !dbg !2474
  call void @sdsfree(i8* %521) #7, !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %492) #6, !dbg !2476
  %511 = add nuw nsw i64 %495, 1, !dbg !2477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  %512 = load i32, i32* %15, align 8, !dbg !2451, !tbaa !1933
  %513 = sext i32 %512 to i64, !dbg !2452
  %514 = icmp slt i64 %511, %513, !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  br i1 %514, label %494, label %681, !dbg !2453, !llvm.loop !2479

; <label>:515:                                    ; preds = %515, %508
  %516 = phi i64 [ 0, %508 ], [ %522, %515 ]
  %517 = phi i8* [ %509, %508 ], [ %521, %515 ]
  %518 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 %516, !dbg !2481
  %519 = load i8, i8* %518, align 1, !dbg !2481, !tbaa !205
  %520 = zext i8 %519 to i32, !dbg !2481
  %521 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %517, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %520) #7, !dbg !2483
  %522 = add nuw nsw i64 %516, 1, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  %523 = icmp eq i64 %522, 20, !dbg !2486
  br i1 %523, label %510, label %515, !dbg !2473, !llvm.loop !2487

; <label>:524:                                    ; preds = %481, %484
  %525 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0)) #10, !dbg !2489
  %526 = icmp eq i32 %525, 0, !dbg !2489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  br i1 %526, label %527, label %545, !dbg !2490

; <label>:527:                                    ; preds = %524
  %528 = icmp eq i32 %16, 3, !dbg !2491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  br i1 %528, label %529, label %545, !dbg !2492

; <label>:529:                                    ; preds = %527
  %530 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2493
  %531 = load %struct.redisObject*, %struct.redisObject** %530, align 8, !dbg !2493, !tbaa !1117
  %532 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %531, i64 0, i32 2, !dbg !2494
  %533 = load i8*, i8** %532, align 8, !dbg !2494, !tbaa !237
  %534 = tail call double @strtod(i8* %533, i8** null) #7, !dbg !2495
  %535 = fmul double %534, 1.000000e+06, !dbg !2497
  %536 = fptosi double %535 to i64, !dbg !2498
  %537 = bitcast %struct.timespec* %11 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %537) #6, !dbg !2500
  %538 = sdiv i64 %536, 1000000, !dbg !2501
  %539 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 0, !dbg !2502
  store i64 %538, i64* %539, align 8, !dbg !2503, !tbaa !2504
  %540 = srem i64 %536, 1000000, !dbg !2506
  %541 = mul nsw i64 %540, 1000, !dbg !2507
  %542 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1, !dbg !2508
  store i64 %541, i64* %542, align 8, !dbg !2509, !tbaa !2510
  %543 = call i32 @nanosleep(%struct.timespec* nonnull %11, %struct.timespec* null) #7, !dbg !2512
  %544 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2513, !tbaa !1996
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %544) #7, !dbg !2514
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %537) #6, !dbg !2515
  br label %681, !dbg !2516

; <label>:545:                                    ; preds = %524, %527
  %546 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !2517
  %547 = icmp eq i32 %546, 0, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  br i1 %547, label %548, label %557, !dbg !2518

; <label>:548:                                    ; preds = %545
  %549 = icmp eq i32 %16, 3, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %549, label %550, label %557, !dbg !2520

; <label>:550:                                    ; preds = %548
  %551 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2521
  %552 = load %struct.redisObject*, %struct.redisObject** %551, align 8, !dbg !2521, !tbaa !1117
  %553 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %552, i64 0, i32 2, !dbg !2523
  %554 = load i8*, i8** %553, align 8, !dbg !2523, !tbaa !237
  %555 = tail call i32 @atoi(i8* %554) #7, !dbg !2524
  store i32 %555, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 103), align 4, !dbg !2525, !tbaa !2526
  %556 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2527, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %556) #7, !dbg !2528
  br label %681, !dbg !2529

; <label>:557:                                    ; preds = %545, %548
  %558 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2530
  %559 = icmp eq i32 %558, 0, !dbg !2530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2531
  br i1 %559, label %560, label %569, !dbg !2531

; <label>:560:                                    ; preds = %557
  %561 = icmp eq i32 %16, 3, !dbg !2532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2533
  br i1 %561, label %562, label %569, !dbg !2533

; <label>:562:                                    ; preds = %560
  %563 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2534
  %564 = load %struct.redisObject*, %struct.redisObject** %563, align 8, !dbg !2534, !tbaa !1117
  %565 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %564, i64 0, i32 2, !dbg !2536
  %566 = load i8*, i8** %565, align 8, !dbg !2536, !tbaa !237
  %567 = tail call i32 @atoi(i8* %566) #7, !dbg !2537
  store i32 %567, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2538, !tbaa !2539
  %568 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2540, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %568) #7, !dbg !2541
  br label %681, !dbg !2542

; <label>:569:                                    ; preds = %557, %560
  %570 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #10, !dbg !2543
  %571 = icmp eq i32 %570, 0, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br i1 %571, label %572, label %584, !dbg !2544

; <label>:572:                                    ; preds = %569
  %573 = icmp eq i32 %16, 3, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2546
  br i1 %573, label %574, label %584, !dbg !2546

; <label>:574:                                    ; preds = %572
  %575 = tail call i8* @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), i64 1) #7, !dbg !2547
  %576 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2549, !tbaa !1940
  %577 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %576, i64 2, !dbg !2550
  %578 = load %struct.redisObject*, %struct.redisObject** %577, align 8, !dbg !2550, !tbaa !1117
  %579 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %578, i64 0, i32 2, !dbg !2551
  %580 = load i8*, i8** %579, align 8, !dbg !2551, !tbaa !237
  %581 = tail call i8* @sdscatsds(i8* %575, i8* %580) #7, !dbg !2552
  %582 = tail call i8* @sdsmapchars(i8* %581, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2) #7, !dbg !2553
  %583 = tail call i8* @sdscatlen(i8* %582, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i64 2) #7, !dbg !2554
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %583) #7, !dbg !2555
  br label %681, !dbg !2556

; <label>:584:                                    ; preds = %569, %572
  %585 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2557
  %586 = icmp eq i32 %585, 0, !dbg !2557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  br i1 %586, label %587, label %598, !dbg !2558

; <label>:587:                                    ; preds = %584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  br i1 %17, label %588, label %598, !dbg !2559

; <label>:588:                                    ; preds = %587
  %589 = tail call i8* @sdsempty() #7, !dbg !2560
  %590 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %589, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i32 64) #7, !dbg !2562
  %591 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %590, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i32 16) #7, !dbg !2563
  %592 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %591, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i32 24) #7, !dbg !2564
  %593 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i32 1) #7, !dbg !2565
  %594 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %593, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 3) #7, !dbg !2566
  %595 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %594, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i32 5) #7, !dbg !2567
  %596 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %595, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i32 9) #7, !dbg !2568
  %597 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %596, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i64 0, i64 0), i32 17) #7, !dbg !2569
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %597) #7, !dbg !2570
  br label %681, !dbg !2571

; <label>:598:                                    ; preds = %584, %587
  %599 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !2572
  %600 = icmp eq i32 %599, 0, !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  br i1 %600, label %601, label %634, !dbg !2573

; <label>:601:                                    ; preds = %598
  %602 = icmp eq i32 %16, 3, !dbg !2574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2575
  br i1 %602, label %603, label %634, !dbg !2575

; <label>:603:                                    ; preds = %601
  %604 = bitcast i64* %12 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %604) #6, !dbg !2576
  %605 = tail call i8* @sdsempty() #7, !dbg !2577
  %606 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %606) #6, !dbg !2579
  %607 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2581, !tbaa !1940
  %608 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %607, i64 2, !dbg !2583
  %609 = load %struct.redisObject*, %struct.redisObject** %608, align 8, !dbg !2583, !tbaa !1117
  %610 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %609, i64* nonnull %12, i8* null) #7, !dbg !2585
  %611 = icmp eq i32 %610, 0, !dbg !2586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2587
  br i1 %611, label %612, label %633, !dbg !2587

; <label>:612:                                    ; preds = %603
  %613 = load i64, i64* %12, align 8, !dbg !2588, !tbaa !272
  %614 = icmp slt i64 %613, 0, !dbg !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2591
  br i1 %614, label %619, label %615, !dbg !2591

; <label>:615:                                    ; preds = %612
  %616 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2592, !tbaa !1577
  %617 = sext i32 %616 to i64, !dbg !2593
  %618 = icmp slt i64 %613, %617, !dbg !2594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2595
  br i1 %618, label %620, label %619, !dbg !2595

; <label>:619:                                    ; preds = %615, %612
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0)) #7, !dbg !2596
  br label %633, !dbg !2598

; <label>:620:                                    ; preds = %615
  %621 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %605, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i64 0, i64 0)) #7, !dbg !2599
  %622 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2600, !tbaa !1581
  %623 = load i64, i64* %12, align 8, !dbg !2601, !tbaa !272
  %624 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %622, i64 %623, i32 0, !dbg !2602
  %625 = load %struct.dict*, %struct.dict** %624, align 8, !dbg !2602, !tbaa !1586
  call void @dictGetStats(i8* nonnull %606, i64 4096, %struct.dict* %625) #7, !dbg !2603
  %626 = call i8* @sdscat(i8* %621, i8* nonnull %606) #7, !dbg !2604
  %627 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %626, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0)) #7, !dbg !2605
  %628 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2606, !tbaa !1581
  %629 = load i64, i64* %12, align 8, !dbg !2607, !tbaa !272
  %630 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %628, i64 %629, i32 1, !dbg !2608
  %631 = load %struct.dict*, %struct.dict** %630, align 8, !dbg !2608, !tbaa !2609
  call void @dictGetStats(i8* nonnull %606, i64 4096, %struct.dict* %631) #7, !dbg !2610
  %632 = call i8* @sdscat(i8* %627, i8* nonnull %606) #7, !dbg !2611
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %632) #7, !dbg !2612
  br label %633, !dbg !2613

; <label>:633:                                    ; preds = %603, %620, %619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %606) #6, !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %604) #6, !dbg !2613
  br label %681

; <label>:634:                                    ; preds = %598, %601
  %635 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0)) #10, !dbg !2615
  %636 = icmp eq i32 %635, 0, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br i1 %636, label %637, label %668, !dbg !2616

; <label>:637:                                    ; preds = %634
  %638 = icmp eq i32 %16, 3, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  br i1 %638, label %639, label %668, !dbg !2618

; <label>:639:                                    ; preds = %637
  %640 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2620
  %641 = load %struct.redisObject*, %struct.redisObject** %640, align 8, !dbg !2620, !tbaa !1117
  %642 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2622, !tbaa !2094
  %643 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %641, %struct.redisObject* %642) #7, !dbg !2623
  %644 = icmp eq %struct.redisObject* %643, null, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  br i1 %644, label %667, label %645, !dbg !2626

; <label>:645:                                    ; preds = %639
  %646 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %643, i64 0, i32 0, !dbg !2627
  %647 = load i32, i32* %646, align 8, !dbg !2627
  %648 = lshr i32 %647, 4, !dbg !2627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2628
  %649 = trunc i32 %648 to i4, !dbg !2628
  switch i4 %649, label %650 [
    i4 7, label %651
    i4 2, label %656
  ], !dbg !2628

; <label>:650:                                    ; preds = %645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  br label %663, !dbg !2629

; <label>:651:                                    ; preds = %645
  %652 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %643, i64 0, i32 2, !dbg !2630
  %653 = bitcast i8** %652 to %struct.zset**, !dbg !2630
  %654 = load %struct.zset*, %struct.zset** %653, align 8, !dbg !2630, !tbaa !237
  %655 = getelementptr inbounds %struct.zset, %struct.zset* %654, i64 0, i32 0, !dbg !2632
  br label %659, !dbg !2633

; <label>:656:                                    ; preds = %645
  %657 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %643, i64 0, i32 2, !dbg !2634
  %658 = bitcast i8** %657 to %struct.dict**, !dbg !2634
  br label %659, !dbg !2635

; <label>:659:                                    ; preds = %656, %651
  %660 = phi %struct.dict** [ %658, %656 ], [ %655, %651 ]
  %661 = load %struct.dict*, %struct.dict** %660, align 8, !dbg !2636, !tbaa !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  %662 = icmp eq %struct.dict* %661, null, !dbg !2638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  br i1 %662, label %663, label %664, !dbg !2629

; <label>:663:                                    ; preds = %650, %659
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.90, i64 0, i64 0)) #7, !dbg !2639
  br label %666, !dbg !2641

; <label>:664:                                    ; preds = %659
  %665 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %665) #6, !dbg !2642
  call void @dictGetStats(i8* nonnull %665, i64 4096, %struct.dict* nonnull %661) #7, !dbg !2644
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* nonnull %665) #7, !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %665) #6, !dbg !2646
  br label %666

; <label>:666:                                    ; preds = %664, %663
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %667, !dbg !2647

; <label>:667:                                    ; preds = %639, %666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  br label %681

; <label>:668:                                    ; preds = %634, %637
  %669 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0)) #10, !dbg !2649
  %670 = icmp eq i32 %669, 0, !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  br i1 %670, label %671, label %674, !dbg !2651

; <label>:671:                                    ; preds = %668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  br i1 %17, label %672, label %674, !dbg !2652

; <label>:672:                                    ; preds = %671
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0)) #7, !dbg !2653
  tail call void @changeReplicationId() #7, !dbg !2655
  tail call void @clearReplicationId2() #7, !dbg !2656
  %673 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2657, !tbaa !1996
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %673) #7, !dbg !2658
  br label %681, !dbg !2659

; <label>:674:                                    ; preds = %668, %671
  %675 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0)) #10, !dbg !2660
  %676 = icmp eq i32 %675, 0, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  br i1 %676, label %677, label %680, !dbg !2662

; <label>:677:                                    ; preds = %674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %17, label %678, label %680, !dbg !2663

; <label>:678:                                    ; preds = %677
  %679 = tail call i32 @stringmatchlen_fuzz_test() #7, !dbg !2664
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0)) #7, !dbg !2666
  br label %681

; <label>:680:                                    ; preds = %674, %677
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !2667
  br label %681, !dbg !2669

; <label>:681:                                    ; preds = %510, %486, %667, %633, %463, %380, %358, %224, %128, %111, %33, %471, %529, %562, %588, %678, %672, %574, %550, %85, %72, %680, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2670
  ret void, !dbg !2670
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
define dso_local void @_serverAssertWithInfo(%struct.client* readonly, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !2671 {
  %6 = icmp eq %struct.client* %0, null, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  br i1 %6, label %8, label %7, !dbg !2691

; <label>:7:                                      ; preds = %5
  tail call void @_serverAssertPrintClientInfo(%struct.client* nonnull %0) #8, !dbg !2692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2692
  br label %8, !dbg !2692

; <label>:8:                                      ; preds = %5, %7
  %9 = icmp eq %struct.redisObject* %1, null, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %9, label %15, label %10, !dbg !2695

; <label>:10:                                     ; preds = %8
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2703, !tbaa !1485
  %12 = icmp eq i32 %11, 0, !dbg !2705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  br i1 %12, label %13, label %14, !dbg !2706

; <label>:13:                                     ; preds = %10
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2707
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2708, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  br label %14, !dbg !2709

; <label>:14:                                     ; preds = %10, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2711
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* nonnull %1) #7, !dbg !2712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  br label %15, !dbg !2714

; <label>:15:                                     ; preds = %8, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2719, !tbaa !1485
  %17 = icmp eq i32 %16, 0, !dbg !2721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2722
  br i1 %17, label %18, label %19, !dbg !2722

; <label>:18:                                     ; preds = %15
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2723
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2724, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  br label %19, !dbg !2725

; <label>:19:                                     ; preds = %15, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2727
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %3, i32 %4, i8* %2) #7, !dbg !2728
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !2729, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  ret void, !dbg !2731
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
define dso_local void @bugReportStart() local_unnamed_addr #0 !dbg !1483 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2732, !tbaa !1485
  %2 = icmp eq i32 %1, 0, !dbg !2733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br i1 %2, label %3, label %4, !dbg !2734

; <label>:3:                                      ; preds = %0
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2735
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2736, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  br label %4, !dbg !2737

; <label>:4:                                      ; preds = %3, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  ret void, !dbg !2738
}

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssertPrintClientInfo(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !2739 {
  %2 = alloca [128 x i8], align 16
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2751, !tbaa !1485
  %4 = icmp eq i32 %3, 0, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %4, label %5, label %6, !dbg !2754

; <label>:5:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2755
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2756, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2757
  br label %6, !dbg !2757

; <label>:6:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i64 0, i64 0)) #7, !dbg !2759
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2760
  %8 = load i32, i32* %7, align 8, !dbg !2760, !tbaa !2761
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0), i32 %8) #7, !dbg !2762
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2763
  %10 = load i32, i32* %9, align 8, !dbg !2763, !tbaa !2764
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 %10) #7, !dbg !2765
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2766
  %12 = load i32, i32* %11, align 8, !dbg !2766, !tbaa !1933
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0), i32 %12) #7, !dbg !2767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2769
  %13 = load i32, i32* %11, align 8, !dbg !2770, !tbaa !1933
  %14 = icmp sgt i32 %13, 0, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %14, label %15, label %53, !dbg !2772

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %18, !dbg !2772

; <label>:18:                                     ; preds = %15, %43
  %19 = phi i64 [ 0, %15 ], [ %49, %43 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2773
  %20 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2775, !tbaa !1940
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !2777
  %22 = bitcast %struct.redisObject** %21 to i32**, !dbg !2777
  %23 = load i32*, i32** %22, align 8, !dbg !2777, !tbaa !1117
  %24 = load i32, i32* %23, align 8, !dbg !2778
  %25 = and i32 %24, 15, !dbg !2778
  %26 = icmp eq i32 %25, 0, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  %27 = bitcast i32* %23 to %struct.redisObject*, !dbg !2780
  %28 = lshr i32 %24, 4, !dbg !2781
  %29 = and i32 %28, 15, !dbg !2781
  br i1 %26, label %30, label %38, !dbg !2780

; <label>:30:                                     ; preds = %18
  %31 = icmp eq i32 %29, 0, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br i1 %31, label %34, label %32, !dbg !2783

; <label>:32:                                     ; preds = %30
  %33 = icmp eq i32 %29, 8, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2784
  br i1 %33, label %34, label %38, !dbg !2784

; <label>:34:                                     ; preds = %32, %30
  %35 = getelementptr inbounds i32, i32* %23, i64 2, !dbg !2785
  %36 = bitcast i32* %35 to i8**, !dbg !2785
  %37 = load i8*, i8** %36, align 8, !dbg !2785, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br label %43, !dbg !2788

; <label>:38:                                     ; preds = %18, %32
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %16, i64 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0), i32 %25, i32 %29) #7, !dbg !2789
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2790, !tbaa !1940
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 %19
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !2791, !tbaa !1117
  br label %43

; <label>:43:                                     ; preds = %38, %34
  %44 = phi %struct.redisObject* [ %27, %34 ], [ %42, %38 ], !dbg !2791
  %45 = phi i8* [ %37, %34 ], [ %16, %38 ], !dbg !2781
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 1, !dbg !2792
  %47 = load i32, i32* %46, align 4, !dbg !2792, !tbaa !2164
  %48 = trunc i64 %19 to i32, !dbg !2793
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i32 %48, i8* %45, i32 %47) #7, !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2794
  %49 = add nuw nsw i64 %19, 1, !dbg !2795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2796
  %50 = load i32, i32* %11, align 8, !dbg !2770, !tbaa !1933
  %51 = sext i32 %50 to i64, !dbg !2771
  %52 = icmp slt i64 %49, %51, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br i1 %52, label %18, label %53, !dbg !2772, !llvm.loop !2797

; <label>:53:                                     ; preds = %43, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  ret void, !dbg !2799
}

; Function Attrs: noredzone nounwind
define dso_local void @serverLogObjectDebugInfo(%struct.redisObject*) local_unnamed_addr #0 !dbg !2800 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2809
  %3 = load i32, i32* %2, align 8, !dbg !2809
  %4 = and i32 %3, 15, !dbg !2809
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i32 %4) #7, !dbg !2810
  %5 = load i32, i32* %2, align 8, !dbg !2811
  %6 = lshr i32 %5, 4, !dbg !2811
  %7 = and i32 %6, 15, !dbg !2811
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i32 %7) #7, !dbg !2812
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !2813
  %9 = load i32, i32* %8, align 4, !dbg !2813, !tbaa !2164
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i64 0, i64 0), i32 %9) #7, !dbg !2814
  %10 = load i32, i32* %2, align 8, !dbg !2815
  %11 = and i32 %10, 15, !dbg !2815
  %12 = icmp eq i32 %11, 0, !dbg !2816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2817
  br i1 %12, label %13, label %101, !dbg !2817

; <label>:13:                                     ; preds = %1
  %14 = lshr i32 %10, 4, !dbg !2818
  %15 = and i32 %14, 15, !dbg !2818
  %16 = icmp eq i32 %15, 0, !dbg !2818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  br i1 %16, label %20, label %17, !dbg !2818

; <label>:17:                                     ; preds = %13
  %18 = icmp eq i32 %15, 8, !dbg !2818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2819
  br i1 %18, label %20, label %19, !dbg !2819

; <label>:19:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  br label %132, !dbg !2825

; <label>:20:                                     ; preds = %17, %13
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2827
  %22 = load i8*, i8** %21, align 8, !dbg !2827, !tbaa !237
  %23 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !2830
  %24 = load i8, i8* %23, align 1, !dbg !2830, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  %25 = trunc i8 %24 to i3, !dbg !2832
  switch i3 %25, label %47 [
    i3 0, label %26
    i3 1, label %29
    i3 2, label %33
    i3 3, label %38
    i3 -4, label %43
  ], !dbg !2832

; <label>:26:                                     ; preds = %20
  %27 = lshr i8 %24, 3, !dbg !2833
  %28 = zext i8 %27 to i64, !dbg !2833
  br label %47, !dbg !2834

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !2835
  %31 = load i8, i8* %30, align 1, !dbg !2836, !tbaa !205
  %32 = zext i8 %31 to i64, !dbg !2835
  br label %47, !dbg !2837

; <label>:33:                                     ; preds = %20
  %34 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !2838
  %35 = bitcast i8* %34 to i16*, !dbg !2839
  %36 = load i16, i16* %35, align 1, !dbg !2839, !tbaa !263
  %37 = zext i16 %36 to i64, !dbg !2838
  br label %47, !dbg !2840

; <label>:38:                                     ; preds = %20
  %39 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !2841
  %40 = bitcast i8* %39 to i32*, !dbg !2842
  %41 = load i32, i32* %40, align 1, !dbg !2842, !tbaa !268
  %42 = zext i32 %41 to i64, !dbg !2841
  br label %47, !dbg !2843

; <label>:43:                                     ; preds = %20
  %44 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !2844
  %45 = bitcast i8* %44 to i64*, !dbg !2845
  %46 = load i64, i64* %45, align 1, !dbg !2845, !tbaa !272
  br label %47, !dbg !2846

; <label>:47:                                     ; preds = %20, %26, %29, %33, %38, %43
  %48 = phi i64 [ %46, %43 ], [ %42, %38 ], [ %37, %33 ], [ %32, %29 ], [ %28, %26 ], [ 0, %20 ], !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0), i64 %48) #7, !dbg !2850
  %49 = load i8*, i8** %21, align 8, !dbg !2851, !tbaa !237
  %50 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !2854
  %51 = load i8, i8* %50, align 1, !dbg !2854, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2856
  %52 = trunc i8 %51 to i3, !dbg !2856
  switch i3 %52, label %67 [
    i3 -4, label %63
    i3 3, label %58
    i3 2, label %53
  ], !dbg !2856

; <label>:53:                                     ; preds = %47
  %54 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !2857
  %55 = bitcast i8* %54 to i16*, !dbg !2858
  %56 = load i16, i16* %55, align 1, !dbg !2858, !tbaa !263
  %57 = zext i16 %56 to i64, !dbg !2857
  br label %68, !dbg !2859

; <label>:58:                                     ; preds = %47
  %59 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !2860
  %60 = bitcast i8* %59 to i32*, !dbg !2861
  %61 = load i32, i32* %60, align 1, !dbg !2861, !tbaa !268
  %62 = zext i32 %61 to i64, !dbg !2860
  br label %68, !dbg !2862

; <label>:63:                                     ; preds = %47
  %64 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !2863
  %65 = bitcast i8* %64 to i64*, !dbg !2864
  %66 = load i64, i64* %65, align 1, !dbg !2864, !tbaa !272
  br label %68, !dbg !2865

; <label>:67:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2868
  br label %71, !dbg !2868

; <label>:68:                                     ; preds = %53, %58, %63
  %69 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], !dbg !2869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  %70 = icmp ult i64 %69, 4096, !dbg !2870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2868
  br i1 %70, label %71, label %132, !dbg !2868

; <label>:71:                                     ; preds = %67, %68
  %72 = tail call i8* @sdsempty() #7, !dbg !2871
  %73 = load i8*, i8** %21, align 8, !dbg !2872, !tbaa !237
  %74 = getelementptr inbounds i8, i8* %73, i64 -1, !dbg !2875
  %75 = load i8, i8* %74, align 1, !dbg !2875, !tbaa !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2877
  %76 = trunc i8 %75 to i3, !dbg !2877
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !2877

; <label>:77:                                     ; preds = %71
  %78 = lshr i8 %75, 3, !dbg !2878
  %79 = zext i8 %78 to i64, !dbg !2878
  br label %98, !dbg !2879

; <label>:80:                                     ; preds = %71
  %81 = getelementptr inbounds i8, i8* %73, i64 -3, !dbg !2880
  %82 = load i8, i8* %81, align 1, !dbg !2881, !tbaa !205
  %83 = zext i8 %82 to i64, !dbg !2880
  br label %98, !dbg !2882

; <label>:84:                                     ; preds = %71
  %85 = getelementptr inbounds i8, i8* %73, i64 -5, !dbg !2883
  %86 = bitcast i8* %85 to i16*, !dbg !2884
  %87 = load i16, i16* %86, align 1, !dbg !2884, !tbaa !263
  %88 = zext i16 %87 to i64, !dbg !2883
  br label %98, !dbg !2885

; <label>:89:                                     ; preds = %71
  %90 = getelementptr inbounds i8, i8* %73, i64 -9, !dbg !2886
  %91 = bitcast i8* %90 to i32*, !dbg !2887
  %92 = load i32, i32* %91, align 1, !dbg !2887, !tbaa !268
  %93 = zext i32 %92 to i64, !dbg !2886
  br label %98, !dbg !2888

; <label>:94:                                     ; preds = %71
  %95 = getelementptr inbounds i8, i8* %73, i64 -17, !dbg !2889
  %96 = bitcast i8* %95 to i64*, !dbg !2890
  %97 = load i64, i64* %96, align 1, !dbg !2890, !tbaa !272
  br label %98, !dbg !2891

; <label>:98:                                     ; preds = %71, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %71 ], !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  %100 = tail call i8* @sdscatrepr(i8* %72, i8* %73, i64 %99) #7, !dbg !2895
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i8* %100) #7, !dbg !2897
  tail call void @sdsfree(i8* %100) #7, !dbg !2898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2899
  br label %132, !dbg !2899

; <label>:101:                                    ; preds = %1
  %102 = icmp eq i32 %11, 1, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  br i1 %102, label %103, label %106, !dbg !2820

; <label>:103:                                    ; preds = %101
  %104 = tail call i64 @listTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2901
  %105 = trunc i64 %104 to i32, !dbg !2903
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i64 0, i64 0), i32 %105) #7, !dbg !2904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  br label %132, !dbg !2905

; <label>:106:                                    ; preds = %101
  %107 = icmp eq i32 %11, 2, !dbg !2906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2821
  br i1 %107, label %108, label %111, !dbg !2821

; <label>:108:                                    ; preds = %106
  %109 = tail call i64 @setTypeSize(%struct.redisObject* nonnull %0) #7, !dbg !2907
  %110 = trunc i64 %109 to i32, !dbg !2909
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i64 0, i64 0), i32 %110) #7, !dbg !2910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2911
  br label %132, !dbg !2911

; <label>:111:                                    ; preds = %106
  %112 = icmp eq i32 %11, 4, !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  br i1 %112, label %113, label %116, !dbg !2823

; <label>:113:                                    ; preds = %111
  %114 = tail call i64 @hashTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2913
  %115 = trunc i64 %114 to i32, !dbg !2915
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i64 0, i64 0), i32 %115) #7, !dbg !2916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2917
  br label %132, !dbg !2917

; <label>:116:                                    ; preds = %111
  %117 = icmp eq i32 %11, 3, !dbg !2918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  br i1 %117, label %118, label %132, !dbg !2825

; <label>:118:                                    ; preds = %116
  %119 = tail call i64 @zsetLength(%struct.redisObject* nonnull %0) #7, !dbg !2920
  %120 = trunc i64 %119 to i32, !dbg !2922
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i64 0, i64 0), i32 %120) #7, !dbg !2923
  %121 = load i32, i32* %2, align 8, !dbg !2924
  %122 = and i32 %121, 240, !dbg !2924
  %123 = icmp eq i32 %122, 112, !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  br i1 %123, label %124, label %132, !dbg !2927

; <label>:124:                                    ; preds = %118
  %125 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2928
  %126 = bitcast i8** %125 to %struct.zset**, !dbg !2928
  %127 = load %struct.zset*, %struct.zset** %126, align 8, !dbg !2928, !tbaa !237
  %128 = getelementptr inbounds %struct.zset, %struct.zset* %127, i64 0, i32 1, !dbg !2929
  %129 = load %struct.zskiplist*, %struct.zskiplist** %128, align 8, !dbg !2929, !tbaa !2930
  %130 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %129, i64 0, i32 3, !dbg !2931
  %131 = load i32, i32* %130, align 8, !dbg !2931, !tbaa !2932
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i64 0, i64 0), i32 %131) #7, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br label %132, !dbg !2934

; <label>:132:                                    ; preds = %19, %103, %113, %118, %124, %116, %108, %68, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  ret void, !dbg !2935
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
define dso_local void @_serverAssertPrintObject(%struct.redisObject*) local_unnamed_addr #0 !dbg !2697 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2937, !tbaa !1485
  %3 = icmp eq i32 %2, 0, !dbg !2939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br i1 %3, label %4, label %5, !dbg !2940

; <label>:4:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2941
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2942, !tbaa !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2943
  br label %5, !dbg !2943

; <label>:5:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2944
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2945
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* %0) #8, !dbg !2946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  ret void, !dbg !2947
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
define dso_local void @serverLogHexDump(i32, i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2948 {
  %5 = alloca [65 x i8], align 16
  %6 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0, !dbg !2970
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %6) #6, !dbg !2970
  tail call void (i32, i8*, ...) @serverLog(i32 %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0), i8* %1, i64 %3) #7, !dbg !2974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  %7 = icmp eq i64 %3, 0, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  br i1 %7, label %8, label %10, !dbg !2976

; <label>:8:                                      ; preds = %4
  %9 = or i32 %0, 1024, !dbg !2977
  br label %39, !dbg !2976

; <label>:10:                                     ; preds = %4
  %11 = ptrtoint [65 x i8]* %5 to i64
  %12 = or i32 %0, 1024
  br label %13, !dbg !2976

; <label>:13:                                     ; preds = %10, %37
  %14 = phi i8* [ %2, %10 ], [ %30, %37 ]
  %15 = phi i8* [ %6, %10 ], [ %38, %37 ]
  %16 = phi i64 [ %3, %10 ], [ %29, %37 ]
  %17 = load i8, i8* %14, align 1, !dbg !2978, !tbaa !205
  %18 = lshr i8 %17, 4, !dbg !2980
  %19 = zext i8 %18 to i64, !dbg !2981
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %19, !dbg !2981
  %21 = load i8, i8* %20, align 1, !dbg !2981, !tbaa !205
  store i8 %21, i8* %15, align 1, !dbg !2982, !tbaa !205
  %22 = load i8, i8* %14, align 1, !dbg !2983, !tbaa !205
  %23 = and i8 %22, 15, !dbg !2984
  %24 = zext i8 %23 to i64, !dbg !2985
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %24, !dbg !2985
  %26 = load i8, i8* %25, align 1, !dbg !2985, !tbaa !205
  %27 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2986
  store i8 %26, i8* %27, align 1, !dbg !2987, !tbaa !205
  %28 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !2988
  store i8 0, i8* %28, align 1, !dbg !2989, !tbaa !205
  %29 = add i64 %16, -1, !dbg !2990
  %30 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !2991
  %31 = ptrtoint i8* %28 to i64, !dbg !2992
  %32 = sub i64 %31, %11, !dbg !2992
  %33 = icmp eq i64 %32, 64, !dbg !2994
  %34 = icmp eq i64 %29, 0, !dbg !2995
  %35 = or i1 %34, %33, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2996
  br i1 %35, label %36, label %37, !dbg !2996

; <label>:36:                                     ; preds = %13
  call void @serverLogRaw(i32 %12, i8* nonnull %6) #7, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2999
  br label %37, !dbg !2999

; <label>:37:                                     ; preds = %13, %36
  %38 = phi i8* [ %6, %36 ], [ %28, %13 ], !dbg !3000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  br i1 %34, label %39, label %13, !dbg !2976, !llvm.loop !3001

; <label>:39:                                     ; preds = %37, %8
  %40 = phi i32 [ %9, %8 ], [ %12, %37 ], !dbg !2977
  call void @serverLogRaw(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #7, !dbg !3003
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %6) #6, !dbg !3004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  ret void, !dbg !3004
}

; Function Attrs: noredzone nounwind
define dso_local void @watchdogSignalHandler(i32, %struct.siginfo_t* nocapture readnone, i8* nocapture readnone) #0 !dbg !3005 {
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.120, i64 0, i64 0)) #7, !dbg !3024
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i64 0, i64 0)) #7, !dbg !3025
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0)) #7, !dbg !3026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3027
  ret void, !dbg !3027
}

; Function Attrs: noredzone
declare dso_local void @serverLogFromHandler(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @watchdogScheduleSignal(i32) local_unnamed_addr #0 !dbg !3028 {
  %2 = alloca %struct.itimerval, align 16
  %3 = bitcast %struct.itimerval* %2 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3043
  %4 = sdiv i32 %0, 1000, !dbg !3044
  %5 = sext i32 %4 to i64, !dbg !3045
  %6 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !3046
  store i64 %5, i64* %6, align 16, !dbg !3047, !tbaa !3048
  %7 = srem i32 %0, 1000, !dbg !3051
  %8 = mul nsw i32 %7, 1000, !dbg !3052
  %9 = sext i32 %8 to i64, !dbg !3053
  %10 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !3054
  store i64 %9, i64* %10, align 8, !dbg !3055, !tbaa !3056
  %11 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !3057
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 16, !dbg !3057, !tbaa !272
  %12 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !3059
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3060
  ret void, !dbg !3060
}

; Function Attrs: noredzone
declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @enableWatchdog(i32) local_unnamed_addr #0 !dbg !3061 {
  %2 = alloca %struct.itimerval, align 16
  %3 = alloca %struct.sigaction, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3082, !tbaa !3083
  %5 = icmp eq i32 %4, 0, !dbg !3084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  br i1 %5, label %6, label %13, !dbg !3085

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.sigaction* %3 to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3086
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 1, !dbg !3087
  %9 = call i32 @sigemptyset(i64* nonnull %8) #7, !dbg !3088
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 2, !dbg !3089
  store i32 134217732, i32* %10, align 8, !dbg !3090, !tbaa !3091
  %11 = bitcast %struct.sigaction* %3 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !3093
  store void (i32, %struct.siginfo_t*, i8*)* @watchdogSignalHandler, void (i32, %struct.siginfo_t*, i8*)** %11, align 8, !dbg !3094, !tbaa !205
  %12 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %3, %struct.sigaction* null) #7, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  br label %13, !dbg !3098

; <label>:13:                                     ; preds = %6, %1
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !3099, !tbaa !3100
  %15 = sdiv i32 1000, %14, !dbg !3101
  %16 = shl nsw i32 %15, 1, !dbg !3102
  %17 = icmp sgt i32 %16, %0, !dbg !3104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3106
  br i1 %17, label %18, label %19, !dbg !3106

; <label>:18:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3107
  br label %19, !dbg !3107

; <label>:19:                                     ; preds = %18, %13
  %20 = phi i32 [ %16, %18 ], [ %0, %13 ]
  %21 = bitcast %struct.itimerval* %2 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #6, !dbg !3110
  %22 = sdiv i32 %20, 1000, !dbg !3111
  %23 = sext i32 %22 to i64, !dbg !3112
  %24 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !3113
  store i64 %23, i64* %24, align 16, !dbg !3114, !tbaa !3048
  %25 = srem i32 %20, 1000, !dbg !3115
  %26 = mul nsw i32 %25, 1000, !dbg !3116
  %27 = sext i32 %26 to i64, !dbg !3117
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !3118
  store i64 %27, i64* %28, align 8, !dbg !3119, !tbaa !3056
  %29 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !3120
  store <2 x i64> zeroinitializer, <2 x i64>* %29, align 16, !dbg !3120, !tbaa !272
  %30 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !3122
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #6, !dbg !3123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  store i32 %20, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3124, !tbaa !3083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3125
  ret void, !dbg !3125
}

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disableWatchdog() local_unnamed_addr #0 !dbg !3126 {
  %1 = alloca %struct.itimerval, align 16
  %2 = alloca %struct.sigaction, align 8
  %3 = bitcast %struct.sigaction* %2 to i8*, !dbg !3129
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3129
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3130, !tbaa !3083
  %5 = icmp eq i32 %4, 0, !dbg !3132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3133
  br i1 %5, label %17, label %6, !dbg !3133

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.itimerval* %1 to i8*, !dbg !3136
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3136
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i64 0, i32 1, i32 0, !dbg !3137
  %9 = bitcast i64* %8 to <2 x i64>*, !dbg !3138
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16, !dbg !3138, !tbaa !272
  %10 = bitcast %struct.itimerval* %1 to <2 x i64>*, !dbg !3139
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16, !dbg !3139, !tbaa !272
  %11 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %1, %struct.itimerval* null) #7, !dbg !3141
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3142
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3143
  %13 = call i32 @sigemptyset(i64* nonnull %12) #7, !dbg !3144
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3145
  store i32 0, i32* %14, align 8, !dbg !3146, !tbaa !3091
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3147
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %15, align 8, !dbg !3148, !tbaa !205
  %16 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %2, %struct.sigaction* null) #7, !dbg !3150
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3151, !tbaa !3083
  br label %17, !dbg !3152

; <label>:17:                                     ; preds = %0, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  ret void, !dbg !3152
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
!200 = !DILocation(line: 73, column: 10, scope: !201)
!201 = distinct !DILexicalBlock(scope: !154, file: !1, line: 73, column: 5)
!202 = !DILocation(line: 73, column: 5, scope: !201)
!203 = !DILocation(line: 74, column: 22, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 73, column: 5)
!205 = !{!206, !206, i64 0}
!206 = !{!"omnipotent char", !207, i64 0}
!207 = !{!"Simple C/C++ TBAA"}
!208 = !DILocation(line: 74, column: 9, scope: !204)
!209 = !DILocation(line: 74, column: 19, scope: !204)
!210 = !DILocation(line: 73, column: 26, scope: !204)
!211 = !DILocation(line: 73, column: 5, scope: !204)
!212 = !DILocation(line: 73, column: 19, scope: !204)
!213 = distinct !{!213, !202, !214}
!214 = !DILocation(line: 74, column: 28, scope: !201)
!215 = !DILocation(line: 75, column: 1, scope: !154)
!216 = distinct !DISubprogram(name: "xorStringObjectDigest", scope: !1, file: !1, line: 77, type: !217, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !228)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !157, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !13, line: 622, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !13, line: 614, size: 128, elements: !222)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !13, line: 615, baseType: !139, size: 4, flags: DIFlagBitField, extraData: i64 0)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !221, file: !13, line: 616, baseType: !139, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !221, file: !13, line: 617, baseType: !139, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !221, file: !13, line: 620, baseType: !9, size: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !221, file: !13, line: 621, baseType: !4, size: 64, offset: 64)
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "digest", arg: 1, scope: !216, file: !1, line: 77, type: !157)
!230 = !DILocalVariable(name: "o", arg: 2, scope: !216, file: !1, line: 77, type: !219)
!231 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !232)
!232 = distinct !DILocation(line: 79, column: 5, scope: !216)
!233 = !DILocation(line: 77, column: 43, scope: !216)
!234 = !DILocation(line: 77, column: 57, scope: !216)
!235 = !DILocation(line: 78, column: 9, scope: !216)
!236 = !DILocation(line: 79, column: 25, scope: !216)
!237 = !{!238, !240, i64 8}
!238 = !{!"redisObject", !239, i64 0, !239, i64 0, !239, i64 1, !239, i64 4, !240, i64 8}
!239 = !{!"int", !206, i64 0}
!240 = !{!"any pointer", !206, i64 0}
!241 = !DILocalVariable(name: "s", arg: 1, scope: !242, file: !95, line: 87, type: !247)
!242 = distinct !DISubprogram(name: "sdslen", scope: !95, file: !95, line: 87, type: !243, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !247}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !246, line: 58, baseType: !35)
!246 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!248 = !{!241, !249}
!249 = !DILocalVariable(name: "flags", scope: !242, file: !95, line: 88, type: !118)
!250 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !251)
!251 = distinct !DILocation(line: 79, column: 29, scope: !216)
!252 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !251)
!253 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !251)
!254 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !251)
!255 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !251)
!256 = distinct !DILexicalBlock(scope: !242, file: !95, line: 89, column: 33)
!257 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !251)
!258 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !251)
!259 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !251)
!260 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !251)
!261 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !251)
!262 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !251)
!263 = !{!264, !264, i64 0}
!264 = !{!"short", !206, i64 0}
!265 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !251)
!266 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !251)
!267 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !251)
!268 = !{!239, !239, i64 0}
!269 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !251)
!270 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !251)
!271 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !251)
!272 = !{!273, !273, i64 0}
!273 = !{!"long", !206, i64 0}
!274 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !251)
!275 = !DILocation(line: 0, scope: !256, inlinedAt: !251)
!276 = !DILocation(line: 0, scope: !216)
!277 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !251)
!278 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !232)
!279 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !232)
!280 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !232)
!281 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !232)
!282 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !232)
!283 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !232)
!284 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !232)
!285 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !232)
!286 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !232)
!287 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !232)
!288 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !232)
!289 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !232)
!290 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !232)
!291 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !232)
!292 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !232)
!293 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !232)
!294 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !232)
!295 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !232)
!296 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !232)
!297 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !232)
!298 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !232)
!299 = !DILocation(line: 80, column: 5, scope: !216)
!300 = !DILocation(line: 81, column: 1, scope: !216)
!301 = distinct !DISubprogram(name: "mixDigest", scope: !1, file: !1, line: 97, type: !155, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !302)
!302 = !{!303, !304, !305, !306, !307}
!303 = !DILocalVariable(name: "digest", arg: 1, scope: !301, file: !1, line: 97, type: !157)
!304 = !DILocalVariable(name: "ptr", arg: 2, scope: !301, file: !1, line: 97, type: !4)
!305 = !DILocalVariable(name: "len", arg: 3, scope: !301, file: !1, line: 97, type: !158)
!306 = !DILocalVariable(name: "ctx", scope: !301, file: !1, line: 98, type: !167)
!307 = !DILocalVariable(name: "s", scope: !301, file: !1, line: 99, type: !5)
!308 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !309)
!309 = distinct !DILocation(line: 101, column: 5, scope: !301)
!310 = !DILocation(line: 97, column: 31, scope: !301)
!311 = !DILocation(line: 97, column: 45, scope: !301)
!312 = !DILocation(line: 97, column: 57, scope: !301)
!313 = !DILocation(line: 98, column: 5, scope: !301)
!314 = !DILocation(line: 99, column: 11, scope: !301)
!315 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !309)
!316 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !309)
!317 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !309)
!318 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !309)
!319 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !309)
!320 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !309)
!321 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !309)
!322 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !309)
!323 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !309)
!324 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !309)
!325 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !309)
!326 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !309)
!327 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !309)
!328 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !309)
!329 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !309)
!330 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !309)
!331 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !309)
!332 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !309)
!333 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !309)
!334 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !309)
!335 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !309)
!336 = !DILocation(line: 98, column: 14, scope: !301)
!337 = !DILocation(line: 102, column: 5, scope: !301)
!338 = !DILocation(line: 103, column: 5, scope: !301)
!339 = !DILocation(line: 104, column: 5, scope: !301)
!340 = !DILocation(line: 105, column: 1, scope: !301)
!341 = distinct !DISubprogram(name: "mixStringObjectDigest", scope: !1, file: !1, line: 107, type: !217, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !342)
!342 = !{!343, !344}
!343 = !DILocalVariable(name: "digest", arg: 1, scope: !341, file: !1, line: 107, type: !157)
!344 = !DILocalVariable(name: "o", arg: 2, scope: !341, file: !1, line: 107, type: !219)
!345 = !DILocation(line: 107, column: 43, scope: !341)
!346 = !DILocation(line: 107, column: 57, scope: !341)
!347 = !DILocation(line: 108, column: 9, scope: !341)
!348 = !DILocation(line: 109, column: 25, scope: !341)
!349 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !350)
!350 = distinct !DILocation(line: 109, column: 29, scope: !341)
!351 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !350)
!352 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !350)
!353 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !350)
!354 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !350)
!355 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !350)
!356 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !350)
!357 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !350)
!358 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !350)
!359 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !350)
!360 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !350)
!361 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !350)
!362 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !350)
!363 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !350)
!364 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !350)
!365 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !350)
!366 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !350)
!367 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !350)
!368 = !DILocation(line: 0, scope: !256, inlinedAt: !350)
!369 = !DILocation(line: 0, scope: !341)
!370 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !350)
!371 = !DILocation(line: 109, column: 5, scope: !341)
!372 = !DILocation(line: 110, column: 5, scope: !341)
!373 = !DILocation(line: 111, column: 1, scope: !341)
!374 = distinct !DISubprogram(name: "xorObjectDigest", scope: !1, file: !1, line: 121, type: !375, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !417)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !219, !157, !219}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !13, line: 656, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !13, line: 647, size: 512, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !379, file: !13, line: 648, baseType: !17, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !379, file: !13, line: 649, baseType: !17, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !379, file: !13, line: 650, baseType: !17, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !379, file: !13, line: 651, baseType: !17, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !379, file: !13, line: 652, baseType: !17, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !379, file: !13, line: 653, baseType: !9, size: 32, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !379, file: !13, line: 654, baseType: !8, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !379, file: !13, line: 655, baseType: !389, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !391, line: 54, baseType: !392)
!391 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !391, line: 47, size: 384, elements: !393)
!393 = !{!394, !403, !404, !408, !412, !416}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !392, file: !391, line: 48, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !391, line: 40, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !391, line: 36, size: 192, elements: !398)
!398 = !{!399, !401, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !397, file: !391, line: 37, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !391, line: 38, baseType: !400, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !391, line: 39, baseType: !4, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !392, file: !391, line: 49, baseType: !395, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !392, file: !391, line: 50, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!4, !4}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !392, file: !391, line: 51, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !4}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !392, file: !391, line: 52, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!9, !4, !4}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !392, file: !391, line: 53, baseType: !35, size: 64, offset: 320)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !428, !476, !492, !494, !516, !517, !520, !523, !524, !525, !526, !527, !528, !529, !533, !534, !535, !537, !539, !552, !554, !555, !643, !644, !645, !647, !649, !650, !651, !652, !660, !992}
!418 = !DILocalVariable(name: "db", arg: 1, scope: !374, file: !1, line: 121, type: !377)
!419 = !DILocalVariable(name: "keyobj", arg: 2, scope: !374, file: !1, line: 121, type: !219)
!420 = !DILocalVariable(name: "digest", arg: 3, scope: !374, file: !1, line: 121, type: !157)
!421 = !DILocalVariable(name: "o", arg: 4, scope: !374, file: !1, line: 121, type: !219)
!422 = !DILocalVariable(name: "aux", scope: !374, file: !1, line: 122, type: !137)
!423 = !DILocalVariable(name: "expiretime", scope: !374, file: !1, line: 124, type: !8)
!424 = !DILocalVariable(name: "buf", scope: !374, file: !1, line: 125, type: !425)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 128)
!428 = !DILocalVariable(name: "li", scope: !429, file: !1, line: 131, type: !432)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 130, column: 37)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 130, column: 16)
!431 = distinct !DILexicalBlock(scope: !374, file: !1, line: 128, column: 9)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !13, line: 1347, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1342, size: 192, elements: !435)
!435 = !{!436, !437, !438, !439}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !434, file: !13, line: 1343, baseType: !219, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !434, file: !13, line: 1344, baseType: !118, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !434, file: !13, line: 1345, baseType: !118, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !434, file: !13, line: 1346, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !442, line: 88, baseType: !443)
!442 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !442, line: 82, size: 320, elements: !444)
!444 = !{!445, !472, !473, !474, !475}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !443, file: !442, line: 83, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !442, line: 80, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !442, line: 73, size: 320, elements: !450)
!450 = !{!451, !467, !468, !469, !470, !471}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !449, file: !442, line: 74, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !442, line: 55, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !442, line: 44, size: 256, elements: !455)
!455 = !{!456, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !442, line: 45, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !442, line: 46, baseType: !457, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !454, file: !442, line: 47, baseType: !157, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !454, file: !442, line: 48, baseType: !139, size: 32, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !442, line: 49, baseType: !139, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !454, file: !442, line: 50, baseType: !139, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !454, file: !442, line: 51, baseType: !139, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !454, file: !442, line: 52, baseType: !139, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !454, file: !442, line: 53, baseType: !139, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !454, file: !442, line: 54, baseType: !139, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !449, file: !442, line: 75, baseType: !452, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !449, file: !442, line: 76, baseType: !35, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !449, file: !442, line: 77, baseType: !35, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !449, file: !442, line: 78, baseType: !9, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !449, file: !442, line: 79, baseType: !139, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !443, file: !442, line: 84, baseType: !452, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !443, file: !442, line: 85, baseType: !157, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !443, file: !442, line: 86, baseType: !73, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !443, file: !442, line: 87, baseType: !9, size: 32, offset: 256)
!476 = !DILocalVariable(name: "entry", scope: !429, file: !1, line: 132, type: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !13, line: 1353, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1350, size: 448, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !478, file: !13, line: 1351, baseType: !432, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !478, file: !13, line: 1352, baseType: !482, size: 384, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !442, line: 98, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !442, line: 90, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !483, file: !442, line: 91, baseType: !446, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !483, file: !442, line: 92, baseType: !452, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !483, file: !442, line: 93, baseType: !157, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !483, file: !442, line: 94, baseType: !157, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !483, file: !442, line: 95, baseType: !8, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !483, file: !442, line: 96, baseType: !139, size: 32, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !483, file: !442, line: 97, baseType: !9, size: 32, offset: 352)
!492 = !DILocalVariable(name: "eleobj", scope: !493, file: !1, line: 134, type: !219)
!493 = distinct !DILexicalBlock(scope: !429, file: !1, line: 133, column: 40)
!494 = !DILocalVariable(name: "si", scope: !495, file: !1, line: 140, type: !497)
!495 = distinct !DILexicalBlock(scope: !496, file: !1, line: 139, column: 36)
!496 = distinct !DILexicalBlock(scope: !430, file: !1, line: 139, column: 16)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "setTypeIterator", file: !13, line: 1361, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1356, size: 192, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !499, file: !13, line: 1357, baseType: !219, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !499, file: !13, line: 1358, baseType: !9, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !499, file: !13, line: 1359, baseType: !9, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !499, file: !13, line: 1360, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !19, line: 95, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !19, line: 88, size: 384, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !507, file: !19, line: 89, baseType: !17, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !507, file: !19, line: 90, baseType: !73, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !507, file: !19, line: 91, baseType: !9, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !507, file: !19, line: 91, baseType: !9, size: 32, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !507, file: !19, line: 92, baseType: !60, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !507, file: !19, line: 92, baseType: !60, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !507, file: !19, line: 94, baseType: !8, size: 64, offset: 320)
!516 = !DILocalVariable(name: "sdsele", scope: !495, file: !1, line: 141, type: !94)
!517 = !DILocalVariable(name: "eledigest", scope: !518, file: !1, line: 148, type: !182)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 147, column: 37)
!519 = distinct !DILexicalBlock(scope: !496, file: !1, line: 147, column: 16)
!520 = !DILocalVariable(name: "zl", scope: !521, file: !1, line: 151, type: !157)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 150, column: 50)
!522 = distinct !DILexicalBlock(scope: !518, file: !1, line: 150, column: 13)
!523 = !DILocalVariable(name: "eptr", scope: !521, file: !1, line: 152, type: !157)
!524 = !DILocalVariable(name: "sptr", scope: !521, file: !1, line: 152, type: !157)
!525 = !DILocalVariable(name: "vstr", scope: !521, file: !1, line: 153, type: !157)
!526 = !DILocalVariable(name: "vlen", scope: !521, file: !1, line: 154, type: !139)
!527 = !DILocalVariable(name: "vll", scope: !521, file: !1, line: 155, type: !8)
!528 = !DILocalVariable(name: "score", scope: !521, file: !1, line: 156, type: !7)
!529 = !DILocalVariable(name: "zs", scope: !530, file: !1, line: 181, type: !532)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 180, column: 58)
!531 = distinct !DILexicalBlock(scope: !522, file: !1, line: 180, column: 20)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!533 = !DILocalVariable(name: "di", scope: !530, file: !1, line: 182, type: !505)
!534 = !DILocalVariable(name: "de", scope: !530, file: !1, line: 183, type: !60)
!535 = !DILocalVariable(name: "sdsele", scope: !536, file: !1, line: 186, type: !94)
!536 = distinct !DILexicalBlock(scope: !530, file: !1, line: 185, column: 48)
!537 = !DILocalVariable(name: "score", scope: !536, file: !1, line: 187, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!539 = !DILocalVariable(name: "hi", scope: !540, file: !1, line: 200, type: !542)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 199, column: 37)
!541 = distinct !DILexicalBlock(scope: !519, file: !1, line: 199, column: 16)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !13, line: 1375, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1367, size: 384, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !544, file: !13, line: 1368, baseType: !219, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !544, file: !13, line: 1369, baseType: !9, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !544, file: !13, line: 1371, baseType: !157, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !544, file: !13, line: 1371, baseType: !157, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !544, file: !13, line: 1373, baseType: !505, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !544, file: !13, line: 1374, baseType: !60, size: 64, offset: 320)
!552 = !DILocalVariable(name: "eledigest", scope: !553, file: !1, line: 202, type: !182)
!553 = distinct !DILexicalBlock(scope: !540, file: !1, line: 201, column: 43)
!554 = !DILocalVariable(name: "sdsele", scope: !553, file: !1, line: 203, type: !94)
!555 = !DILocalVariable(name: "si", scope: !556, file: !1, line: 216, type: !558)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 215, column: 39)
!557 = distinct !DILexicalBlock(scope: !541, file: !1, line: 215, column: 16)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !559, line: 48, baseType: !560)
!559 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !559, line: 29, size: 5120, elements: !561)
!561 = !{!562, !594, !595, !596, !597, !598, !599, !600, !602, !603, !635, !636, !637, !638, !642}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !560, file: !559, line: 30, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !559, line: 21, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !559, line: 16, size: 320, elements: !566)
!566 = !{!567, !586, !587, !593}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !565, file: !559, line: 17, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !570, line: 137, baseType: !571)
!570 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !570, line: 133, size: 192, elements: !572)
!572 = !{!573, !584, !585}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !571, file: !570, line: 134, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !570, line: 131, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !570, line: 98, size: 32, elements: !577)
!577 = !{!578, !579, !580, !581, !582}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !576, file: !570, line: 99, baseType: !137, size: 1, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !576, file: !570, line: 100, baseType: !137, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !576, file: !570, line: 101, baseType: !137, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !576, file: !570, line: 102, baseType: !137, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !576, file: !570, line: 130, baseType: !583, offset: 32)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !104)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !571, file: !570, line: 135, baseType: !31, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !571, file: !570, line: 136, baseType: !31, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !565, file: !559, line: 18, baseType: !31, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !565, file: !559, line: 19, baseType: !588, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !559, line: 14, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !559, line: 11, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !589, file: !559, line: 12, baseType: !31, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !589, file: !559, line: 13, baseType: !31, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !565, file: !559, line: 20, baseType: !568, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !560, file: !559, line: 31, baseType: !588, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !560, file: !559, line: 32, baseType: !31, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !560, file: !559, line: 33, baseType: !157, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !560, file: !559, line: 34, baseType: !157, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !560, file: !559, line: 35, baseType: !9, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !560, file: !559, line: 36, baseType: !9, size: 32, offset: 416)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !560, file: !559, line: 37, baseType: !601, size: 128, offset: 448)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !560, file: !559, line: 38, baseType: !601, size: 128, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !560, file: !559, line: 39, baseType: !604, size: 3840, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !570, line: 186, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !570, line: 175, size: 3840, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !615, !616, !629}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !570, line: 176, baseType: !9, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !605, file: !570, line: 177, baseType: !568, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !605, file: !570, line: 178, baseType: !157, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !605, file: !570, line: 179, baseType: !4, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !605, file: !570, line: 180, baseType: !158, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !605, file: !570, line: 181, baseType: !158, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !605, file: !570, line: 182, baseType: !614, size: 1024, offset: 384)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !426)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !570, line: 183, baseType: !574, size: 64, offset: 1408)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !605, file: !570, line: 184, baseType: !617, size: 2304, offset: 1472)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !570, line: 150, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !570, line: 143, size: 2304, elements: !619)
!619 = !{!620, !622, !623, !624, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !618, file: !570, line: 144, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !618, file: !570, line: 145, baseType: !158, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !618, file: !570, line: 145, baseType: !158, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !618, file: !570, line: 148, baseType: !625, size: 2048, offset: 192)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !618, file: !570, line: 149, baseType: !9, size: 32, offset: 2240)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !605, file: !570, line: 185, baseType: !630, size: 64, offset: 3776)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !570, line: 165, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!9, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !560, file: !559, line: 40, baseType: !157, size: 64, offset: 4544)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !560, file: !559, line: 41, baseType: !157, size: 64, offset: 4608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !560, file: !559, line: 42, baseType: !157, size: 64, offset: 4672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !560, file: !559, line: 46, baseType: !639, size: 168, offset: 4736)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 168, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 21)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !560, file: !559, line: 47, baseType: !639, size: 168, offset: 4904)
!643 = !DILocalVariable(name: "id", scope: !556, file: !1, line: 218, type: !588)
!644 = !DILocalVariable(name: "numfields", scope: !556, file: !1, line: 219, type: !71)
!645 = !DILocalVariable(name: "itemid", scope: !646, file: !1, line: 222, type: !94)
!646 = distinct !DILexicalBlock(scope: !556, file: !1, line: 221, column: 56)
!647 = !DILocalVariable(name: "field", scope: !648, file: !1, line: 227, type: !157)
!648 = distinct !DILexicalBlock(scope: !646, file: !1, line: 226, column: 32)
!649 = !DILocalVariable(name: "value", scope: !648, file: !1, line: 227, type: !157)
!650 = !DILocalVariable(name: "field_len", scope: !648, file: !1, line: 228, type: !71)
!651 = !DILocalVariable(name: "value_len", scope: !648, file: !1, line: 228, type: !71)
!652 = !DILocalVariable(name: "md", scope: !653, file: !1, line: 237, type: !655)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 236, column: 39)
!654 = distinct !DILexicalBlock(scope: !557, file: !1, line: 236, column: 16)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleDigest", file: !13, line: 586, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !13, line: 583, size: 320, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !656, file: !13, line: 584, baseType: !182, size: 160)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !656, file: !13, line: 585, baseType: !182, size: 160, offset: 160)
!660 = !DILocalVariable(name: "mv", scope: !653, file: !1, line: 238, type: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !13, line: 550, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !13, line: 547, size: 128, elements: !664)
!664 = !{!665, !991}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !13, line: 548, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !13, line: 530, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !13, line: 517, size: 768, elements: !669)
!669 = !{!670, !671, !674, !953, !958, !963, !968, !974, !976, !981, !986, !987}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !668, file: !13, line: 518, baseType: !31, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !668, file: !13, line: 519, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !13, line: 496, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !668, file: !13, line: 520, baseType: !675, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !13, line: 506, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!4, !679, !9}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !13, line: 555, size: 384, elements: !681)
!681 = !{!682, !683, !945, !946, !947, !948, !951}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !680, file: !13, line: 556, baseType: !158, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !680, file: !13, line: 557, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !686, line: 87, baseType: !687)
!686 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !686, line: 39, size: 832, elements: !688)
!688 = !{!689, !694, !698, !706, !710, !714, !715, !716, !717}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !687, file: !686, line: 43, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!245, !693, !4, !245}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !687, file: !686, line: 44, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!245, !693, !36, !245}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !687, file: !686, line: 45, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !693}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !703, line: 173, baseType: !704)
!703 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !161, line: 100, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !161, line: 44, baseType: !73)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !687, file: !686, line: 46, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!9, !693}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !687, file: !686, line: 52, baseType: !711, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !693, !36, !245}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !687, file: !686, line: 55, baseType: !31, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !687, file: !686, line: 58, baseType: !245, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !687, file: !686, line: 61, baseType: !245, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !687, file: !686, line: 84, baseType: !718, size: 320, offset: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !686, line: 64, size: 320, elements: !719)
!719 = !{!720, !725, !936}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !718, file: !686, line: 69, baseType: !721, size: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !686, line: 66, size: 128, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !721, file: !686, line: 67, baseType: !94, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !721, file: !686, line: 68, baseType: !702, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !718, file: !686, line: 75, baseType: !726, size: 192)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !686, line: 71, size: 192, elements: !727)
!727 = !{!728, !934, !935}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !726, file: !686, line: 72, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !731, line: 66, baseType: !732)
!731 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !733, line: 287, baseType: !734)
!733 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !733, line: 181, size: 1408, elements: !735)
!735 = !{!736, !737, !738, !739, !741, !742, !747, !748, !749, !902, !908, !913, !917, !918, !919, !920, !922, !924, !925, !926, !927, !928, !932, !933}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !734, file: !733, line: 182, baseType: !157, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !734, file: !733, line: 183, baseType: !9, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !734, file: !733, line: 184, baseType: !9, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !734, file: !733, line: 185, baseType: !740, size: 16, offset: 128)
!740 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !734, file: !733, line: 186, baseType: !740, size: 16, offset: 144)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !734, file: !733, line: 187, baseType: !743, size: 128, offset: 192)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !733, line: 117, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !743, file: !733, line: 118, baseType: !157, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !743, file: !733, line: 119, baseType: !9, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !734, file: !733, line: 188, baseType: !9, size: 32, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !734, file: !733, line: 195, baseType: !4, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !734, file: !733, line: 197, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!753, !754, !4, !5, !9}
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !161, line: 145, baseType: !73)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !733, line: 569, size: 14912, elements: !756)
!756 = !{!757, !758, !760, !761, !762, !763, !767, !768, !771, !772, !776, !790, !791, !792, !794, !795, !796, !872, !890, !891, !893, !900}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !755, file: !733, line: 571, baseType: !9, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !755, file: !733, line: 576, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !755, file: !733, line: 576, baseType: !759, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !755, file: !733, line: 576, baseType: !759, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !755, file: !733, line: 578, baseType: !9, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !755, file: !733, line: 579, baseType: !764, size: 200, offset: 288)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 25)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !755, file: !733, line: 582, baseType: !9, size: 32, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !755, file: !733, line: 583, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !733, line: 40, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !755, file: !733, line: 585, baseType: !9, size: 32, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !755, file: !733, line: 587, baseType: !773, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !754}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !755, file: !733, line: 590, baseType: !777, size: 64, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !733, line: 47, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !778, file: !733, line: 49, baseType: !777, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !778, file: !733, line: 50, baseType: !9, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !778, file: !733, line: 50, baseType: !9, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !778, file: !733, line: 50, baseType: !9, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !778, file: !733, line: 50, baseType: !9, size: 32, offset: 160)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !778, file: !733, line: 51, baseType: !786, size: 32, offset: 192)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 32, elements: !788)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !733, line: 25, baseType: !139)
!788 = !{!789}
!789 = !DISubrange(count: 1)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !755, file: !733, line: 591, baseType: !9, size: 32, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !755, file: !733, line: 592, baseType: !777, size: 64, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !755, file: !733, line: 593, baseType: !793, size: 64, offset: 960)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !755, file: !733, line: 596, baseType: !9, size: 32, offset: 1024)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !755, file: !733, line: 597, baseType: !5, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !755, file: !733, line: 632, baseType: !797, size: 2880, offset: 1152)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !733, line: 599, size: 2880, elements: !798)
!798 = !{!799, !863}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !797, file: !733, line: 622, baseType: !800, size: 1728)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !733, line: 601, size: 1728, elements: !801)
!801 = !{!802, !803, !804, !808, !820, !821, !823, !832, !846, !847, !848, !852, !856, !857, !858, !859, !860, !861, !862}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !800, file: !733, line: 603, baseType: !139, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !800, file: !733, line: 604, baseType: !5, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !800, file: !733, line: 605, baseType: !805, size: 208, offset: 128)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 26)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !800, file: !733, line: 606, baseType: !809, size: 288, offset: 352)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !733, line: 55, size: 288, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !816, !817, !818, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !809, file: !733, line: 57, baseType: !9, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !809, file: !733, line: 58, baseType: !9, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !809, file: !733, line: 59, baseType: !9, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !809, file: !733, line: 60, baseType: !9, size: 32, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !809, file: !733, line: 61, baseType: !9, size: 32, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !809, file: !733, line: 62, baseType: !9, size: 32, offset: 160)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !809, file: !733, line: 63, baseType: !9, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !809, file: !733, line: 64, baseType: !9, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !809, file: !733, line: 65, baseType: !9, size: 32, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !800, file: !733, line: 607, baseType: !9, size: 32, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !800, file: !733, line: 608, baseType: !822, size: 64, offset: 704)
!822 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !800, file: !733, line: 609, baseType: !824, size: 112, offset: 768)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !733, line: 319, size: 112, elements: !825)
!825 = !{!826, !830, !831}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !824, file: !733, line: 320, baseType: !827, size: 48)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 3)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !824, file: !733, line: 321, baseType: !827, size: 48, offset: 48)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !824, file: !733, line: 322, baseType: !129, size: 16, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !800, file: !733, line: 610, baseType: !833, size: 64, offset: 896)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !161, line: 171, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 163, size: 64, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !834, file: !161, line: 165, baseType: !9, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !834, file: !161, line: 170, baseType: !838, size: 32, offset: 32)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !161, line: 166, size: 32, elements: !839)
!839 = !{!840, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !838, file: !161, line: 168, baseType: !841, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !246, line: 124, baseType: !139)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !838, file: !161, line: 169, baseType: !843, size: 32)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 4)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !800, file: !733, line: 611, baseType: !833, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !800, file: !733, line: 612, baseType: !833, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !800, file: !733, line: 613, baseType: !849, size: 64, offset: 1088)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 8)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !800, file: !733, line: 614, baseType: !853, size: 192, offset: 1152)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 24)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !800, file: !733, line: 615, baseType: !9, size: 32, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !800, file: !733, line: 616, baseType: !833, size: 64, offset: 1376)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !800, file: !733, line: 617, baseType: !833, size: 64, offset: 1440)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !800, file: !733, line: 618, baseType: !833, size: 64, offset: 1504)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !800, file: !733, line: 619, baseType: !833, size: 64, offset: 1568)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !800, file: !733, line: 620, baseType: !833, size: 64, offset: 1632)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !800, file: !733, line: 621, baseType: !9, size: 32, offset: 1696)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !797, file: !733, line: 631, baseType: !864, size: 2880)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !733, line: 626, size: 2880, elements: !865)
!865 = !{!866, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !864, file: !733, line: 629, baseType: !867, size: 1920)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1920, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 30)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !864, file: !733, line: 630, baseType: !871, size: 960, offset: 1920)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 960, elements: !868)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !755, file: !733, line: 636, baseType: !873, size: 64, offset: 4032)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !733, line: 93, size: 6336, elements: !875)
!875 = !{!876, !877, !878, !883}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !874, file: !733, line: 94, baseType: !873, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !874, file: !733, line: 95, baseType: !9, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !874, file: !733, line: 97, baseType: !879, size: 2048, offset: 128)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 2048, elements: !626)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !874, file: !733, line: 98, baseType: !884, size: 4160, offset: 2176)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !733, line: 74, size: 4160, elements: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !884, file: !733, line: 75, baseType: !625, size: 2048)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !884, file: !733, line: 76, baseType: !625, size: 2048, offset: 2048)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !884, file: !733, line: 78, baseType: !787, size: 32, offset: 4096)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !884, file: !733, line: 81, baseType: !787, size: 32, offset: 4128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !755, file: !733, line: 637, baseType: !874, size: 6336, offset: 4096)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !755, file: !733, line: 641, baseType: !892, size: 64, offset: 10432)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !755, file: !733, line: 646, baseType: !894, size: 192, offset: 10496)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !733, line: 291, size: 192, elements: !895)
!895 = !{!896, !898, !899}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !894, file: !733, line: 293, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !894, file: !733, line: 294, baseType: !9, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !894, file: !733, line: 295, baseType: !759, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !755, file: !733, line: 648, baseType: !901, size: 4224, offset: 10688)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 4224, elements: !828)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !734, file: !733, line: 199, baseType: !903, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!753, !754, !4, !906, !9}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !734, file: !733, line: 202, baseType: !909, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!912, !754, !4, !912, !9}
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !161, line: 114, baseType: !73)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !734, file: !733, line: 203, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!9, !754, !4}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !734, file: !733, line: 206, baseType: !743, size: 128, offset: 704)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !734, file: !733, line: 207, baseType: !157, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !734, file: !733, line: 208, baseType: !9, size: 32, offset: 896)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !734, file: !733, line: 211, baseType: !921, size: 24, offset: 928)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 24, elements: !828)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !734, file: !733, line: 212, baseType: !923, size: 8, offset: 952)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 8, elements: !788)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !734, file: !733, line: 215, baseType: !743, size: 128, offset: 960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !734, file: !733, line: 218, baseType: !9, size: 32, offset: 1088)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !734, file: !733, line: 219, baseType: !705, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !734, file: !733, line: 222, baseType: !754, size: 64, offset: 1216)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !734, file: !733, line: 226, baseType: !929, size: 32, offset: 1280)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !161, line: 175, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !931, line: 12, baseType: !9)
!931 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !734, file: !733, line: 228, baseType: !833, size: 64, offset: 1312)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !734, file: !733, line: 229, baseType: !9, size: 32, offset: 1376)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !726, file: !686, line: 73, baseType: !702, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !726, file: !686, line: 74, baseType: !702, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !718, file: !686, line: 83, baseType: !937, size: 320)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !686, line: 77, size: 320, elements: !938)
!938 = !{!939, !941, !942, !943, !944}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !937, file: !686, line: 78, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !937, file: !686, line: 79, baseType: !940, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !937, file: !686, line: 80, baseType: !9, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !937, file: !686, line: 81, baseType: !702, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !937, file: !686, line: 82, baseType: !94, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !13, line: 558, baseType: !666, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !680, file: !13, line: 559, baseType: !9, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !680, file: !13, line: 560, baseType: !9, size: 32, offset: 224)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !680, file: !13, line: 562, baseType: !949, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !13, line: 499, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !680, file: !13, line: 563, baseType: !952, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !668, file: !13, line: 521, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !13, line: 507, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !679, !4}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !668, file: !13, line: 522, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !13, line: 510, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !679, !952, !4}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !668, file: !13, line: 523, baseType: !964, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !13, line: 512, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!158, !36}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !668, file: !13, line: 524, baseType: !969, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !13, line: 511, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !973, !4}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !668, file: !13, line: 525, baseType: !975, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !13, line: 513, baseType: !409)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !668, file: !13, line: 526, baseType: !977, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !13, line: 508, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!9, !679, !9, !9}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !668, file: !13, line: 527, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !13, line: 509, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !679, !9}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !668, file: !13, line: 528, baseType: !9, size: 32, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !13, line: 529, baseType: !988, size: 80, offset: 672)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 80, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 10)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !13, line: 549, baseType: !4, size: 64, offset: 64)
!992 = !DILocalVariable(name: "mt", scope: !653, file: !1, line: 239, type: !666)
!993 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !994)
!994 = distinct !DILocation(line: 243, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !1, line: 241, column: 25)
!996 = distinct !DILexicalBlock(scope: !653, file: !1, line: 241, column: 13)
!997 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !998)
!998 = distinct !DILocation(line: 212, column: 13, scope: !553)
!999 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 193, column: 17, scope: !536)
!1001 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 177, column: 17, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !521, file: !1, line: 163, column: 34)
!1004 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 143, column: 13, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !495, file: !1, line: 142, column: 57)
!1007 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 249, column: 27, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !374, file: !1, line: 249, column: 9)
!1010 = !DILocation(line: 121, column: 31, scope: !374)
!1011 = !DILocation(line: 121, column: 41, scope: !374)
!1012 = !DILocation(line: 121, column: 64, scope: !374)
!1013 = !DILocation(line: 121, column: 78, scope: !374)
!1014 = !DILocation(line: 122, column: 5, scope: !374)
!1015 = !DILocation(line: 122, column: 20, scope: !374)
!1016 = !DILocation(line: 122, column: 14, scope: !374)
!1017 = !DILocation(line: 123, column: 5, scope: !374)
!1018 = !DILocation(line: 124, column: 28, scope: !374)
!1019 = !DILocation(line: 124, column: 15, scope: !374)
!1020 = !DILocation(line: 125, column: 5, scope: !374)
!1021 = !DILocation(line: 125, column: 10, scope: !374)
!1022 = !DILocation(line: 128, column: 12, scope: !431)
!1023 = !DILocation(line: 128, column: 17, scope: !431)
!1024 = !DILocation(line: 128, column: 9, scope: !374)
!1025 = !DILocation(line: 129, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !431, file: !1, line: 128, column: 32)
!1027 = !DILocation(line: 130, column: 5, scope: !1026)
!1028 = !DILocation(line: 130, column: 24, scope: !430)
!1029 = !DILocation(line: 130, column: 16, scope: !431)
!1030 = !DILocation(line: 131, column: 32, scope: !429)
!1031 = !DILocation(line: 131, column: 27, scope: !429)
!1032 = !DILocation(line: 132, column: 9, scope: !429)
!1033 = !DILocation(line: 133, column: 9, scope: !429)
!1034 = !DILocation(line: 132, column: 23, scope: !429)
!1035 = !DILocation(line: 133, column: 15, scope: !429)
!1036 = !DILocation(line: 134, column: 28, scope: !493)
!1037 = !DILocation(line: 134, column: 19, scope: !493)
!1038 = !DILocation(line: 135, column: 13, scope: !493)
!1039 = !DILocation(line: 136, column: 13, scope: !493)
!1040 = distinct !{!1040, !1033, !1041}
!1041 = !DILocation(line: 137, column: 9, scope: !429)
!1042 = !DILocation(line: 138, column: 9, scope: !429)
!1043 = !DILocation(line: 139, column: 5, scope: !430)
!1044 = !DILocation(line: 139, column: 5, scope: !429)
!1045 = !DILocation(line: 139, column: 24, scope: !496)
!1046 = !DILocation(line: 139, column: 16, scope: !430)
!1047 = !DILocation(line: 140, column: 31, scope: !495)
!1048 = !DILocation(line: 140, column: 26, scope: !495)
!1049 = !DILocation(line: 142, column: 9, scope: !495)
!1050 = !DILocation(line: 142, column: 25, scope: !495)
!1051 = !DILocation(line: 141, column: 13, scope: !495)
!1052 = !DILocation(line: 142, column: 48, scope: !495)
!1053 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 143, column: 37, scope: !1006)
!1055 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1054)
!1056 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1054)
!1057 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1054)
!1058 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1054)
!1059 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1054)
!1060 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1054)
!1061 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1054)
!1062 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1054)
!1063 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1054)
!1064 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1054)
!1065 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1054)
!1066 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1054)
!1067 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1054)
!1068 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1054)
!1069 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1054)
!1070 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1054)
!1071 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1054)
!1072 = !DILocation(line: 0, scope: !256, inlinedAt: !1054)
!1073 = !DILocation(line: 0, scope: !1006)
!1074 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1054)
!1075 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1005)
!1076 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1005)
!1077 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1005)
!1078 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1005)
!1079 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1005)
!1080 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1005)
!1081 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1005)
!1082 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1005)
!1083 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !1005)
!1084 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1005)
!1085 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1005)
!1086 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1005)
!1087 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !1005)
!1088 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !1005)
!1089 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !1005)
!1090 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !1005)
!1091 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !1005)
!1092 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !1005)
!1093 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !1005)
!1094 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !1005)
!1095 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1005)
!1096 = !DILocation(line: 144, column: 13, scope: !1006)
!1097 = distinct !{!1097, !1049, !1098}
!1098 = !DILocation(line: 145, column: 9, scope: !495)
!1099 = !DILocation(line: 146, column: 9, scope: !495)
!1100 = !DILocation(line: 147, column: 5, scope: !495)
!1101 = !DILocation(line: 147, column: 24, scope: !519)
!1102 = !DILocation(line: 147, column: 16, scope: !496)
!1103 = !DILocation(line: 148, column: 9, scope: !518)
!1104 = !DILocation(line: 148, column: 23, scope: !518)
!1105 = !DILocation(line: 150, column: 16, scope: !522)
!1106 = !DILocation(line: 150, column: 25, scope: !522)
!1107 = !DILocation(line: 150, column: 13, scope: !518)
!1108 = !DILocation(line: 151, column: 36, scope: !521)
!1109 = !DILocation(line: 151, column: 28, scope: !521)
!1110 = !DILocation(line: 152, column: 13, scope: !521)
!1111 = !DILocation(line: 153, column: 13, scope: !521)
!1112 = !DILocation(line: 154, column: 13, scope: !521)
!1113 = !DILocation(line: 155, column: 13, scope: !521)
!1114 = !DILocation(line: 158, column: 20, scope: !521)
!1115 = !DILocation(line: 152, column: 28, scope: !521)
!1116 = !DILocation(line: 158, column: 18, scope: !521)
!1117 = !{!240, !240, i64 0}
!1118 = !DILocation(line: 159, column: 13, scope: !521)
!1119 = !DILocation(line: 160, column: 20, scope: !521)
!1120 = !DILocation(line: 152, column: 35, scope: !521)
!1121 = !DILocation(line: 160, column: 18, scope: !521)
!1122 = !DILocation(line: 161, column: 13, scope: !521)
!1123 = !DILocation(line: 163, column: 13, scope: !521)
!1124 = !DILocation(line: 153, column: 28, scope: !521)
!1125 = !DILocation(line: 154, column: 26, scope: !521)
!1126 = !DILocation(line: 155, column: 23, scope: !521)
!1127 = !DILocation(line: 164, column: 17, scope: !1003)
!1128 = !DILocation(line: 165, column: 37, scope: !1003)
!1129 = !DILocation(line: 165, column: 25, scope: !1003)
!1130 = !DILocation(line: 156, column: 20, scope: !521)
!1131 = !DILocation(line: 167, column: 17, scope: !1003)
!1132 = !DILocation(line: 168, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 168, column: 21)
!1134 = !DILocation(line: 168, column: 26, scope: !1133)
!1135 = !DILocation(line: 168, column: 21, scope: !1003)
!1136 = !DILocation(line: 169, column: 46, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 168, column: 35)
!1138 = !DILocation(line: 169, column: 21, scope: !1137)
!1139 = !DILocation(line: 170, column: 17, scope: !1137)
!1140 = !DILocation(line: 171, column: 47, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 170, column: 24)
!1142 = !{!1143, !1143, i64 0}
!1143 = !{!"long long", !206, i64 0}
!1144 = !DILocation(line: 171, column: 21, scope: !1141)
!1145 = !DILocation(line: 172, column: 45, scope: !1141)
!1146 = !DILocation(line: 172, column: 21, scope: !1141)
!1147 = !DILocation(line: 175, column: 17, scope: !1003)
!1148 = !DILocation(line: 176, column: 41, scope: !1003)
!1149 = !DILocation(line: 176, column: 17, scope: !1003)
!1150 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1002)
!1151 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1002)
!1152 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1002)
!1153 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1002)
!1154 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1002)
!1155 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1002)
!1156 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1002)
!1157 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1002)
!1158 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1002)
!1159 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1002)
!1160 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1002)
!1161 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !1002)
!1162 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !1002)
!1163 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !1002)
!1164 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !1002)
!1165 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !1002)
!1166 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !1002)
!1167 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !1002)
!1168 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !1002)
!1169 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1002)
!1170 = !DILocation(line: 178, column: 17, scope: !1003)
!1171 = !DILocation(line: 163, column: 20, scope: !521)
!1172 = !DILocation(line: 163, column: 25, scope: !521)
!1173 = distinct !{!1173, !1123, !1174}
!1174 = !DILocation(line: 179, column: 13, scope: !521)
!1175 = !DILocation(line: 180, column: 9, scope: !522)
!1176 = !DILocation(line: 180, column: 9, scope: !521)
!1177 = !DILocation(line: 180, column: 32, scope: !531)
!1178 = !DILocation(line: 180, column: 20, scope: !522)
!1179 = !DILocation(line: 181, column: 27, scope: !530)
!1180 = !DILocation(line: 181, column: 19, scope: !530)
!1181 = !DILocation(line: 182, column: 52, scope: !530)
!1182 = !{!1183, !240, i64 0}
!1183 = !{!"zset", !240, i64 0, !240, i64 8}
!1184 = !DILocation(line: 182, column: 32, scope: !530)
!1185 = !DILocation(line: 182, column: 27, scope: !530)
!1186 = !DILocation(line: 185, column: 13, scope: !530)
!1187 = !DILocation(line: 185, column: 25, scope: !530)
!1188 = !DILocation(line: 183, column: 24, scope: !530)
!1189 = !DILocation(line: 185, column: 39, scope: !530)
!1190 = !DILocation(line: 186, column: 30, scope: !536)
!1191 = !{!1192, !240, i64 0}
!1192 = !{!"dictEntry", !240, i64 0, !206, i64 8, !240, i64 16}
!1193 = !DILocation(line: 186, column: 21, scope: !536)
!1194 = !DILocation(line: 187, column: 33, scope: !536)
!1195 = !DILocation(line: 187, column: 25, scope: !536)
!1196 = !DILocation(line: 189, column: 50, scope: !536)
!1197 = !{!1198, !1198, i64 0}
!1198 = !{!"double", !206, i64 0}
!1199 = !DILocation(line: 189, column: 17, scope: !536)
!1200 = !DILocation(line: 190, column: 17, scope: !536)
!1201 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 191, column: 44, scope: !536)
!1203 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1202)
!1204 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1202)
!1205 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1202)
!1206 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1202)
!1207 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1202)
!1208 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1202)
!1209 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1202)
!1210 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1202)
!1211 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1202)
!1212 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1202)
!1213 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1202)
!1214 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1202)
!1215 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1202)
!1216 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1202)
!1217 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1202)
!1218 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1202)
!1219 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1202)
!1220 = !DILocation(line: 0, scope: !256, inlinedAt: !1202)
!1221 = !DILocation(line: 0, scope: !536)
!1222 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1202)
!1223 = !DILocation(line: 191, column: 17, scope: !536)
!1224 = !DILocation(line: 192, column: 41, scope: !536)
!1225 = !DILocation(line: 192, column: 17, scope: !536)
!1226 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1000)
!1227 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1000)
!1228 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1000)
!1229 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1000)
!1230 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1000)
!1231 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1000)
!1232 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1000)
!1233 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1000)
!1234 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1000)
!1235 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1000)
!1236 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1000)
!1237 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !1000)
!1238 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !1000)
!1239 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !1000)
!1240 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !1000)
!1241 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !1000)
!1242 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !1000)
!1243 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !1000)
!1244 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !1000)
!1245 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1000)
!1246 = distinct !{!1246, !1186, !1247}
!1247 = !DILocation(line: 194, column: 13, scope: !530)
!1248 = !DILocation(line: 195, column: 13, scope: !530)
!1249 = !DILocation(line: 197, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !531, file: !1, line: 196, column: 16)
!1251 = !DILocation(line: 199, column: 5, scope: !519)
!1252 = !DILocation(line: 199, column: 5, scope: !518)
!1253 = !DILocation(line: 199, column: 24, scope: !541)
!1254 = !DILocation(line: 199, column: 16, scope: !519)
!1255 = !DILocation(line: 200, column: 32, scope: !540)
!1256 = !DILocation(line: 200, column: 27, scope: !540)
!1257 = !DILocation(line: 201, column: 9, scope: !540)
!1258 = !DILocation(line: 201, column: 16, scope: !540)
!1259 = !DILocation(line: 201, column: 33, scope: !540)
!1260 = !DILocation(line: 202, column: 13, scope: !553)
!1261 = !DILocation(line: 202, column: 27, scope: !553)
!1262 = !DILocation(line: 205, column: 13, scope: !553)
!1263 = !DILocation(line: 206, column: 22, scope: !553)
!1264 = !DILocation(line: 203, column: 17, scope: !553)
!1265 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 207, column: 40, scope: !553)
!1267 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1266)
!1268 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1266)
!1269 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1266)
!1270 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1266)
!1271 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1266)
!1272 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1266)
!1273 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1266)
!1274 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1266)
!1275 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1266)
!1276 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1266)
!1277 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1266)
!1278 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1266)
!1279 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1266)
!1280 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1266)
!1281 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1266)
!1282 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1266)
!1283 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1266)
!1284 = !DILocation(line: 0, scope: !256, inlinedAt: !1266)
!1285 = !DILocation(line: 0, scope: !553)
!1286 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1266)
!1287 = !DILocation(line: 207, column: 13, scope: !553)
!1288 = !DILocation(line: 208, column: 13, scope: !553)
!1289 = !DILocation(line: 209, column: 22, scope: !553)
!1290 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 210, column: 40, scope: !553)
!1292 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1291)
!1293 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1291)
!1294 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1291)
!1295 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1291)
!1296 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1291)
!1297 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1291)
!1298 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1291)
!1299 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1291)
!1300 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1291)
!1301 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1291)
!1302 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1291)
!1303 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1291)
!1304 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1291)
!1305 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1291)
!1306 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1291)
!1307 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1291)
!1308 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1291)
!1309 = !DILocation(line: 0, scope: !256, inlinedAt: !1291)
!1310 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1291)
!1311 = !DILocation(line: 210, column: 13, scope: !553)
!1312 = !DILocation(line: 211, column: 13, scope: !553)
!1313 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !998)
!1314 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !998)
!1315 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !998)
!1316 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !998)
!1317 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !998)
!1318 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !998)
!1319 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !998)
!1320 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !998)
!1321 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !998)
!1322 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !998)
!1323 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !998)
!1324 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !998)
!1325 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !998)
!1326 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !998)
!1327 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !998)
!1328 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !998)
!1329 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !998)
!1330 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !998)
!1331 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !998)
!1332 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !998)
!1333 = !DILocation(line: 213, column: 9, scope: !540)
!1334 = distinct !{!1334, !1257, !1333}
!1335 = !DILocation(line: 214, column: 9, scope: !540)
!1336 = !DILocation(line: 215, column: 5, scope: !540)
!1337 = !DILocation(line: 215, column: 24, scope: !557)
!1338 = !DILocation(line: 215, column: 16, scope: !541)
!1339 = !DILocation(line: 216, column: 9, scope: !556)
!1340 = !DILocation(line: 217, column: 36, scope: !556)
!1341 = !DILocation(line: 216, column: 24, scope: !556)
!1342 = !DILocation(line: 217, column: 9, scope: !556)
!1343 = !DILocation(line: 218, column: 9, scope: !556)
!1344 = !DILocation(line: 219, column: 9, scope: !556)
!1345 = !DILocation(line: 221, column: 9, scope: !556)
!1346 = !DILocation(line: 218, column: 18, scope: !556)
!1347 = !DILocation(line: 219, column: 17, scope: !556)
!1348 = !DILocation(line: 221, column: 15, scope: !556)
!1349 = !DILocation(line: 222, column: 36, scope: !646)
!1350 = !DILocation(line: 222, column: 58, scope: !646)
!1351 = !{!1352, !273, i64 0}
!1352 = !{!"streamID", !273, i64 0, !273, i64 8}
!1353 = !DILocation(line: 222, column: 64, scope: !646)
!1354 = !{!1352, !273, i64 8}
!1355 = !DILocation(line: 222, column: 26, scope: !646)
!1356 = !DILocation(line: 222, column: 17, scope: !646)
!1357 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 223, column: 37, scope: !646)
!1359 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1358)
!1360 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1358)
!1361 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1358)
!1362 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1358)
!1363 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1358)
!1364 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1358)
!1365 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1358)
!1366 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1358)
!1367 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1358)
!1368 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1358)
!1369 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1358)
!1370 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1358)
!1371 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1358)
!1372 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1358)
!1373 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1358)
!1374 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1358)
!1375 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1358)
!1376 = !DILocation(line: 0, scope: !256, inlinedAt: !1358)
!1377 = !DILocation(line: 0, scope: !646)
!1378 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1358)
!1379 = !DILocation(line: 223, column: 13, scope: !646)
!1380 = !DILocation(line: 224, column: 13, scope: !646)
!1381 = !DILocation(line: 226, column: 13, scope: !646)
!1382 = !DILocation(line: 226, column: 28, scope: !646)
!1383 = !DILocation(line: 227, column: 17, scope: !648)
!1384 = !DILocation(line: 228, column: 17, scope: !648)
!1385 = !DILocation(line: 227, column: 32, scope: !648)
!1386 = !DILocation(line: 227, column: 40, scope: !648)
!1387 = !DILocation(line: 228, column: 25, scope: !648)
!1388 = !DILocation(line: 228, column: 36, scope: !648)
!1389 = !DILocation(line: 229, column: 17, scope: !648)
!1390 = !DILocation(line: 231, column: 34, scope: !648)
!1391 = !DILocation(line: 231, column: 40, scope: !648)
!1392 = !DILocation(line: 231, column: 17, scope: !648)
!1393 = !DILocation(line: 232, column: 34, scope: !648)
!1394 = !DILocation(line: 232, column: 40, scope: !648)
!1395 = !DILocation(line: 232, column: 17, scope: !648)
!1396 = !DILocation(line: 233, column: 13, scope: !646)
!1397 = distinct !{!1397, !1381, !1396}
!1398 = distinct !{!1398, !1345, !1399}
!1399 = !DILocation(line: 234, column: 9, scope: !556)
!1400 = !DILocation(line: 235, column: 9, scope: !556)
!1401 = !DILocation(line: 236, column: 5, scope: !557)
!1402 = !DILocation(line: 236, column: 5, scope: !556)
!1403 = !DILocation(line: 236, column: 24, scope: !654)
!1404 = !DILocation(line: 236, column: 16, scope: !557)
!1405 = !DILocation(line: 237, column: 9, scope: !653)
!1406 = !DILocation(line: 238, column: 30, scope: !653)
!1407 = !DILocation(line: 238, column: 22, scope: !653)
!1408 = !DILocation(line: 239, column: 30, scope: !653)
!1409 = !{!1410, !240, i64 0}
!1410 = !{!"moduleValue", !240, i64 0, !240, i64 8}
!1411 = !DILocation(line: 239, column: 21, scope: !653)
!1412 = !DILocation(line: 240, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !653, file: !1, line: 240, column: 9)
!1414 = !DILocation(line: 241, column: 17, scope: !996)
!1415 = !{!1416, !240, i64 48}
!1416 = !{!"RedisModuleType", !273, i64 0, !240, i64 8, !240, i64 16, !240, i64 24, !240, i64 32, !240, i64 40, !240, i64 48, !240, i64 56, !240, i64 64, !240, i64 72, !239, i64 80, !206, i64 84}
!1417 = !DILocation(line: 241, column: 13, scope: !996)
!1418 = !DILocation(line: 241, column: 13, scope: !653)
!1419 = !DILocation(line: 242, column: 32, scope: !995)
!1420 = !{!1410, !240, i64 8}
!1421 = !DILocation(line: 237, column: 27, scope: !653)
!1422 = !DILocation(line: 242, column: 13, scope: !995)
!1423 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !994)
!1424 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !994)
!1425 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !994)
!1426 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !994)
!1427 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !994)
!1428 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !994)
!1429 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !994)
!1430 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !994)
!1431 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !994)
!1432 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !994)
!1433 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !994)
!1434 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !994)
!1435 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !994)
!1436 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !994)
!1437 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !994)
!1438 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !994)
!1439 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !994)
!1440 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !994)
!1441 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !994)
!1442 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !994)
!1443 = !DILocation(line: 244, column: 9, scope: !995)
!1444 = !DILocation(line: 245, column: 5, scope: !654)
!1445 = !DILocation(line: 246, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !654, file: !1, line: 245, column: 12)
!1447 = !DILocation(line: 249, column: 20, scope: !1009)
!1448 = !DILocation(line: 249, column: 9, scope: !374)
!1449 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1008)
!1450 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1008)
!1451 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1008)
!1452 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1008)
!1453 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1008)
!1454 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1008)
!1455 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1008)
!1456 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1008)
!1457 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1008)
!1458 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1008)
!1459 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1008)
!1460 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !1008)
!1461 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !1008)
!1462 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !1008)
!1463 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !1008)
!1464 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !1008)
!1465 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !1008)
!1466 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !1008)
!1467 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !1008)
!1468 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1008)
!1469 = !DILocation(line: 249, column: 27, scope: !1009)
!1470 = !DILocation(line: 250, column: 1, scope: !374)
!1471 = distinct !DISubprogram(name: "_serverAssert", scope: !1, file: !1, line: 635, type: !1472, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !906, !906, !9}
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "estr", arg: 1, scope: !1471, file: !1, line: 635, type: !906)
!1476 = !DILocalVariable(name: "file", arg: 2, scope: !1471, file: !1, line: 635, type: !906)
!1477 = !DILocalVariable(name: "line", arg: 3, scope: !1471, file: !1, line: 635, type: !9)
!1478 = !DILocation(line: 635, column: 32, scope: !1471)
!1479 = !DILocation(line: 635, column: 50, scope: !1471)
!1480 = !DILocation(line: 635, column: 60, scope: !1471)
!1481 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !1484)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 727, column: 9)
!1483 = distinct !DISubprogram(name: "bugReportStart", scope: !1, file: !1, line: 726, type: !881, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1484 = distinct !DILocation(line: 636, column: 5, scope: !1471)
!1485 = !{!1486, !239, i64 3132}
!1486 = !{!"redisServer", !239, i64 0, !240, i64 8, !240, i64 16, !240, i64 24, !239, i64 32, !239, i64 36, !239, i64 40, !240, i64 48, !240, i64 56, !240, i64 64, !240, i64 72, !239, i64 80, !239, i64 84, !239, i64 88, !239, i64 92, !240, i64 96, !240, i64 104, !239, i64 112, !239, i64 116, !206, i64 120, !239, i64 164, !273, i64 168, !239, i64 176, !240, i64 184, !240, i64 192, !240, i64 200, !206, i64 208, !239, i64 216, !239, i64 220, !206, i64 224, !239, i64 352, !240, i64 360, !239, i64 368, !206, i64 372, !239, i64 436, !239, i64 440, !206, i64 444, !239, i64 508, !240, i64 512, !240, i64 520, !240, i64 528, !240, i64 536, !240, i64 544, !240, i64 552, !240, i64 560, !239, i64 568, !1143, i64 576, !206, i64 584, !240, i64 840, !273, i64 848, !239, i64 856, !239, i64 860, !273, i64 864, !273, i64 872, !273, i64 880, !273, i64 888, !240, i64 896, !240, i64 904, !240, i64 912, !240, i64 920, !240, i64 928, !240, i64 936, !240, i64 944, !240, i64 952, !240, i64 960, !240, i64 968, !240, i64 976, !240, i64 984, !240, i64 992, !273, i64 1000, !1143, i64 1008, !1143, i64 1016, !1143, i64 1024, !1198, i64 1032, !1143, i64 1040, !1143, i64 1048, !1143, i64 1056, !1143, i64 1064, !1143, i64 1072, !1143, i64 1080, !1143, i64 1088, !1143, i64 1096, !1143, i64 1104, !273, i64 1112, !1143, i64 1120, !1198, i64 1128, !1143, i64 1136, !1143, i64 1144, !1143, i64 1152, !1143, i64 1160, !240, i64 1168, !1143, i64 1176, !1143, i64 1184, !273, i64 1192, !1487, i64 1200, !1143, i64 1240, !1143, i64 1248, !273, i64 1256, !273, i64 1264, !206, i64 1272, !239, i64 1728, !239, i64 1732, !239, i64 1736, !239, i64 1740, !239, i64 1744, !273, i64 1752, !239, i64 1760, !239, i64 1764, !239, i64 1768, !239, i64 1772, !273, i64 1776, !273, i64 1784, !239, i64 1792, !239, i64 1796, !239, i64 1800, !239, i64 1804, !206, i64 1808, !239, i64 1880, !239, i64 1884, !240, i64 1888, !239, i64 1896, !239, i64 1900, !273, i64 1904, !273, i64 1912, !273, i64 1920, !273, i64 1928, !239, i64 1936, !239, i64 1940, !240, i64 1944, !240, i64 1952, !239, i64 1960, !239, i64 1964, !273, i64 1968, !273, i64 1976, !273, i64 1984, !273, i64 1992, !239, i64 2000, !273, i64 2008, !239, i64 2016, !239, i64 2020, !239, i64 2024, !239, i64 2028, !239, i64 2032, !239, i64 2036, !239, i64 2040, !239, i64 2044, !239, i64 2048, !239, i64 2052, !239, i64 2056, !239, i64 2060, !239, i64 2064, !240, i64 2072, !1143, i64 2080, !1143, i64 2088, !239, i64 2096, !240, i64 2104, !239, i64 2112, !240, i64 2120, !239, i64 2128, !239, i64 2132, !273, i64 2136, !273, i64 2144, !273, i64 2152, !273, i64 2160, !239, i64 2168, !239, i64 2172, !239, i64 2176, !239, i64 2180, !239, i64 2184, !239, i64 2188, !206, i64 2192, !1488, i64 2200, !1489, i64 2224, !240, i64 2240, !239, i64 2248, !240, i64 2256, !239, i64 2264, !206, i64 2268, !206, i64 2309, !1143, i64 2352, !1143, i64 2360, !239, i64 2368, !239, i64 2372, !240, i64 2376, !1143, i64 2384, !1143, i64 2392, !1143, i64 2400, !1143, i64 2408, !273, i64 2416, !273, i64 2424, !239, i64 2432, !239, i64 2436, !239, i64 2440, !239, i64 2444, !239, i64 2448, !240, i64 2456, !240, i64 2464, !239, i64 2472, !239, i64 2476, !240, i64 2480, !240, i64 2488, !239, i64 2496, !239, i64 2500, !273, i64 2504, !273, i64 2512, !273, i64 2520, !239, i64 2528, !239, i64 2532, !240, i64 2536, !273, i64 2544, !239, i64 2552, !239, i64 2556, !239, i64 2560, !273, i64 2568, !239, i64 2576, !239, i64 2580, !239, i64 2584, !240, i64 2592, !206, i64 2600, !1143, i64 2648, !239, i64 2656, !240, i64 2664, !240, i64 2672, !239, i64 2680, !240, i64 2688, !239, i64 2696, !239, i64 2700, !1143, i64 2704, !239, i64 2712, !239, i64 2716, !239, i64 2720, !239, i64 2724, !1143, i64 2728, !239, i64 2736, !206, i64 2740, !240, i64 2768, !240, i64 2776, !239, i64 2784, !239, i64 2788, !239, i64 2792, !239, i64 2796, !273, i64 2800, !273, i64 2808, !273, i64 2816, !273, i64 2824, !273, i64 2832, !273, i64 2840, !273, i64 2848, !273, i64 2856, !239, i64 2864, !239, i64 2868, !273, i64 2872, !273, i64 2880, !239, i64 2888, !1143, i64 2896, !240, i64 2904, !240, i64 2912, !239, i64 2920, !239, i64 2924, !1143, i64 2928, !240, i64 2936, !240, i64 2944, !239, i64 2952, !239, i64 2956, !239, i64 2960, !239, i64 2964, !240, i64 2968, !239, i64 2976, !239, i64 2980, !239, i64 2984, !240, i64 2992, !240, i64 3000, !240, i64 3008, !240, i64 3016, !1143, i64 3024, !1143, i64 3032, !1143, i64 3040, !239, i64 3048, !239, i64 3052, !239, i64 3056, !239, i64 3060, !239, i64 3064, !239, i64 3068, !239, i64 3072, !239, i64 3076, !239, i64 3080, !239, i64 3084, !239, i64 3088, !1143, i64 3096, !240, i64 3104, !240, i64 3112, !240, i64 3120, !239, i64 3128, !239, i64 3132, !239, i64 3136, !273, i64 3144, !240, i64 3152, !240, i64 3160, !240, i64 3168}
!1487 = !{!"malloc_stats", !273, i64 0, !273, i64 8, !273, i64 16, !273, i64 24, !273, i64 32}
!1488 = !{!"", !239, i64 0, !273, i64 8, !1143, i64 16}
!1489 = !{!"redisOpArray", !240, i64 0, !239, i64 8}
!1490 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !1484)
!1491 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !1484)
!1492 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !1484)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 727, column: 39)
!1494 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !1484)
!1495 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !1484)
!1496 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !1484)
!1497 = !DILocation(line: 637, column: 5, scope: !1471)
!1498 = !DILocation(line: 638, column: 5, scope: !1471)
!1499 = !DILocation(line: 645, column: 18, scope: !1471)
!1500 = !DILocation(line: 646, column: 1, scope: !1471)
!1501 = distinct !DISubprogram(name: "_serverPanic", scope: !1, file: !1, line: 708, type: !1502, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !906, !9, !906, null}
!1504 = !{!1505, !1506, !1507, !1508, !1520}
!1505 = !DILocalVariable(name: "file", arg: 1, scope: !1501, file: !1, line: 708, type: !906)
!1506 = !DILocalVariable(name: "line", arg: 2, scope: !1501, file: !1, line: 708, type: !9)
!1507 = !DILocalVariable(name: "msg", arg: 3, scope: !1501, file: !1, line: 708, type: !906)
!1508 = !DILocalVariable(name: "ap", scope: !1501, file: !1, line: 709, type: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !731, line: 46, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1511, line: 51, baseType: !1512)
!1511 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 709, baseType: !1513)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 192, elements: !788)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 709, size: 192, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1514, file: !1, line: 709, baseType: !139, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1514, file: !1, line: 709, baseType: !139, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1514, file: !1, line: 709, baseType: !4, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1514, file: !1, line: 709, baseType: !4, size: 64, offset: 128)
!1520 = !DILocalVariable(name: "fmtmsg", scope: !1501, file: !1, line: 711, type: !1521)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1522)
!1522 = !{!1523}
!1523 = !DISubrange(count: 256)
!1524 = !DILocation(line: 708, column: 31, scope: !1501)
!1525 = !DILocation(line: 708, column: 41, scope: !1501)
!1526 = !DILocation(line: 708, column: 59, scope: !1501)
!1527 = !DILocation(line: 709, column: 5, scope: !1501)
!1528 = !DILocation(line: 709, column: 13, scope: !1501)
!1529 = !DILocation(line: 710, column: 5, scope: !1501)
!1530 = !DILocation(line: 711, column: 5, scope: !1501)
!1531 = !DILocation(line: 711, column: 10, scope: !1501)
!1532 = !DILocation(line: 712, column: 5, scope: !1501)
!1533 = !DILocation(line: 713, column: 5, scope: !1501)
!1534 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 715, column: 5, scope: !1501)
!1536 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !1535)
!1537 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !1535)
!1538 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !1535)
!1539 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !1535)
!1540 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !1535)
!1541 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !1535)
!1542 = !DILocation(line: 716, column: 5, scope: !1501)
!1543 = !DILocation(line: 717, column: 5, scope: !1501)
!1544 = !DILocation(line: 718, column: 5, scope: !1501)
!1545 = !DILocation(line: 722, column: 5, scope: !1501)
!1546 = !DILocation(line: 723, column: 18, scope: !1501)
!1547 = !DILocation(line: 724, column: 1, scope: !1501)
!1548 = distinct !DISubprogram(name: "computeDatasetDigest", scope: !1, file: !1, line: 258, type: !1549, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !157}
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1562, !1564, !1565}
!1552 = !DILocalVariable(name: "final", arg: 1, scope: !1548, file: !1, line: 258, type: !157)
!1553 = !DILocalVariable(name: "digest", scope: !1548, file: !1, line: 259, type: !182)
!1554 = !DILocalVariable(name: "di", scope: !1548, file: !1, line: 260, type: !505)
!1555 = !DILocalVariable(name: "de", scope: !1548, file: !1, line: 261, type: !60)
!1556 = !DILocalVariable(name: "j", scope: !1548, file: !1, line: 262, type: !9)
!1557 = !DILocalVariable(name: "aux", scope: !1548, file: !1, line: 263, type: !137)
!1558 = !DILocalVariable(name: "db", scope: !1559, file: !1, line: 268, type: !377)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 267, column: 40)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 267, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !1, line: 267, column: 5)
!1562 = !DILocalVariable(name: "key", scope: !1563, file: !1, line: 280, type: !94)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 279, column: 44)
!1564 = !DILocalVariable(name: "keyobj", scope: !1563, file: !1, line: 281, type: !219)
!1565 = !DILocalVariable(name: "o", scope: !1563, file: !1, line: 281, type: !219)
!1566 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 293, column: 13, scope: !1563)
!1568 = !DILocation(line: 258, column: 42, scope: !1548)
!1569 = !DILocation(line: 259, column: 5, scope: !1548)
!1570 = !DILocation(line: 259, column: 19, scope: !1548)
!1571 = !DILocation(line: 260, column: 19, scope: !1548)
!1572 = !DILocation(line: 263, column: 5, scope: !1548)
!1573 = !DILocation(line: 265, column: 5, scope: !1548)
!1574 = !DILocation(line: 262, column: 9, scope: !1548)
!1575 = !DILocation(line: 267, column: 10, scope: !1561)
!1576 = !DILocation(line: 267, column: 28, scope: !1560)
!1577 = !{!1486, !239, i64 1792}
!1578 = !DILocation(line: 267, column: 19, scope: !1560)
!1579 = !DILocation(line: 267, column: 5, scope: !1561)
!1580 = !DILocation(line: 268, column: 30, scope: !1559)
!1581 = !{!1486, !240, i64 48}
!1582 = !DILocation(line: 268, column: 32, scope: !1559)
!1583 = !DILocation(line: 268, column: 18, scope: !1559)
!1584 = !DILocation(line: 270, column: 13, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 270, column: 13)
!1586 = !{!1587, !240, i64 0}
!1587 = !{!"redisDb", !240, i64 0, !240, i64 8, !240, i64 16, !240, i64 24, !240, i64 32, !239, i64 40, !1143, i64 48, !240, i64 56}
!1588 = !{!1589, !273, i64 24}
!1589 = !{!"dictht", !240, i64 0, !273, i64 8, !273, i64 16, !273, i64 24}
!1590 = !DILocation(line: 270, column: 32, scope: !1585)
!1591 = !DILocation(line: 270, column: 13, scope: !1559)
!1592 = !DILocation(line: 270, column: 38, scope: !1585)
!1593 = !DILocation(line: 271, column: 14, scope: !1559)
!1594 = !DILocation(line: 275, column: 15, scope: !1559)
!1595 = !DILocation(line: 263, column: 14, scope: !1548)
!1596 = !DILocation(line: 275, column: 13, scope: !1559)
!1597 = !DILocation(line: 276, column: 9, scope: !1559)
!1598 = !DILocation(line: 279, column: 9, scope: !1559)
!1599 = !DILocation(line: 279, column: 21, scope: !1559)
!1600 = !DILocation(line: 261, column: 16, scope: !1548)
!1601 = !DILocation(line: 279, column: 35, scope: !1559)
!1602 = !DILocation(line: 283, column: 13, scope: !1563)
!1603 = !DILocation(line: 284, column: 19, scope: !1563)
!1604 = !DILocation(line: 280, column: 17, scope: !1563)
!1605 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 285, column: 45, scope: !1563)
!1607 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1606)
!1608 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1606)
!1609 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1606)
!1610 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1606)
!1611 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1606)
!1612 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1606)
!1613 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1606)
!1614 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1606)
!1615 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1606)
!1616 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1606)
!1617 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1606)
!1618 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1606)
!1619 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1606)
!1620 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1606)
!1621 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1606)
!1622 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1606)
!1623 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1606)
!1624 = !DILocation(line: 0, scope: !256, inlinedAt: !1606)
!1625 = !DILocation(line: 0, scope: !1563)
!1626 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1606)
!1627 = !DILocation(line: 285, column: 22, scope: !1563)
!1628 = !DILocation(line: 281, column: 19, scope: !1563)
!1629 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 287, column: 34, scope: !1563)
!1631 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !1630)
!1632 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !1630)
!1633 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !1630)
!1634 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !1630)
!1635 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !1630)
!1636 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !1630)
!1637 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !1630)
!1638 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !1630)
!1639 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !1630)
!1640 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !1630)
!1641 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !1630)
!1642 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !1630)
!1643 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !1630)
!1644 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !1630)
!1645 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !1630)
!1646 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !1630)
!1647 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !1630)
!1648 = !DILocation(line: 0, scope: !256, inlinedAt: !1630)
!1649 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !1630)
!1650 = !DILocation(line: 287, column: 13, scope: !1563)
!1651 = !DILocation(line: 289, column: 17, scope: !1563)
!1652 = !DILocation(line: 281, column: 28, scope: !1563)
!1653 = !DILocation(line: 290, column: 13, scope: !1563)
!1654 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1567)
!1655 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1567)
!1656 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1567)
!1657 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1567)
!1658 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1567)
!1659 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1567)
!1660 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1567)
!1661 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1567)
!1662 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1567)
!1663 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1567)
!1664 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1567)
!1665 = !DILocation(line: 73, column: 10, scope: !201, inlinedAt: !1567)
!1666 = !DILocation(line: 73, column: 5, scope: !201, inlinedAt: !1567)
!1667 = !DILocation(line: 74, column: 22, scope: !204, inlinedAt: !1567)
!1668 = !DILocation(line: 74, column: 9, scope: !204, inlinedAt: !1567)
!1669 = !DILocation(line: 74, column: 19, scope: !204, inlinedAt: !1567)
!1670 = !DILocation(line: 73, column: 26, scope: !204, inlinedAt: !1567)
!1671 = !DILocation(line: 73, column: 5, scope: !204, inlinedAt: !1567)
!1672 = !DILocation(line: 73, column: 19, scope: !204, inlinedAt: !1567)
!1673 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1567)
!1674 = !DILocation(line: 294, column: 13, scope: !1563)
!1675 = distinct !{!1675, !1598, !1676}
!1676 = !DILocation(line: 295, column: 9, scope: !1559)
!1677 = !DILocation(line: 296, column: 9, scope: !1559)
!1678 = !DILocation(line: 297, column: 5, scope: !1560)
!1679 = !DILocation(line: 267, column: 36, scope: !1560)
!1680 = !DILocation(line: 267, column: 5, scope: !1560)
!1681 = distinct !{!1681, !1579, !1682}
!1682 = !DILocation(line: 297, column: 5, scope: !1561)
!1683 = !DILocation(line: 298, column: 1, scope: !1548)
!1684 = distinct !DISubprogram(name: "debugCommand", scope: !1, file: !1, line: 300, type: !1685, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1803)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !13, line: 780, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !13, line: 723, size: 135360, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1702, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1752, !1753, !1757, !1758, !1774, !1775, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1689, file: !13, line: 724, baseType: !31, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1689, file: !13, line: 725, baseType: !9, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1689, file: !13, line: 726, baseType: !377, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1689, file: !13, line: 727, baseType: !219, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1689, file: !13, line: 728, baseType: !94, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1689, file: !13, line: 729, baseType: !158, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1689, file: !13, line: 730, baseType: !94, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1689, file: !13, line: 734, baseType: !158, size: 64, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1689, file: !13, line: 735, baseType: !9, size: 32, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1689, file: !13, line: 736, baseType: !1701, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1689, file: !13, line: 737, baseType: !1703, size: 64, offset: 640)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !13, line: 1307, size: 640, elements: !1705)
!1705 = !{!1706, !1707, !1710, !1711, !1712, !1713, !1718, !1719, !1720, !1721, !1722}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1704, file: !13, line: 1308, baseType: !5, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1704, file: !13, line: 1309, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !13, line: 1305, baseType: !1685)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1704, file: !13, line: 1310, baseType: !9, size: 32, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1704, file: !13, line: 1311, baseType: !5, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1704, file: !13, line: 1312, baseType: !9, size: 32, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1704, file: !13, line: 1315, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !13, line: 1306, baseType: !1716)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!940, !1703, !1701, !9, !940}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1704, file: !13, line: 1317, baseType: !9, size: 32, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1704, file: !13, line: 1318, baseType: !9, size: 32, offset: 416)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1704, file: !13, line: 1319, baseType: !9, size: 32, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1704, file: !13, line: 1320, baseType: !8, size: 64, offset: 512)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1704, file: !13, line: 1320, baseType: !8, size: 64, offset: 576)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1689, file: !13, line: 737, baseType: !1703, size: 64, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1689, file: !13, line: 738, baseType: !9, size: 32, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1689, file: !13, line: 739, baseType: !9, size: 32, offset: 800)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1689, file: !13, line: 740, baseType: !73, size: 64, offset: 832)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1689, file: !13, line: 741, baseType: !389, size: 64, offset: 896)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1689, file: !13, line: 742, baseType: !822, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1689, file: !13, line: 743, baseType: !158, size: 64, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1689, file: !13, line: 745, baseType: !1731, size: 64, offset: 1088)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1732, line: 34, baseType: !73)
!1732 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1689, file: !13, line: 746, baseType: !1731, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1689, file: !13, line: 747, baseType: !1731, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1689, file: !13, line: 748, baseType: !9, size: 32, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1689, file: !13, line: 749, baseType: !9, size: 32, offset: 1312)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1689, file: !13, line: 750, baseType: !9, size: 32, offset: 1344)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1689, file: !13, line: 751, baseType: !9, size: 32, offset: 1376)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1689, file: !13, line: 752, baseType: !9, size: 32, offset: 1408)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1689, file: !13, line: 753, baseType: !702, size: 64, offset: 1472)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1689, file: !13, line: 754, baseType: !702, size: 64, offset: 1536)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1689, file: !13, line: 755, baseType: !94, size: 64, offset: 1600)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1689, file: !13, line: 756, baseType: !8, size: 64, offset: 1664)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1689, file: !13, line: 757, baseType: !8, size: 64, offset: 1728)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1689, file: !13, line: 758, baseType: !8, size: 64, offset: 1792)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1689, file: !13, line: 759, baseType: !8, size: 64, offset: 1856)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1689, file: !13, line: 760, baseType: !8, size: 64, offset: 1920)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1689, file: !13, line: 763, baseType: !1749, size: 328, offset: 1984)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 41)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1689, file: !13, line: 764, baseType: !9, size: 32, offset: 2336)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1689, file: !13, line: 765, baseType: !1754, size: 368, offset: 2368)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 368, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 46)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1689, file: !13, line: 766, baseType: !9, size: 32, offset: 2752)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1689, file: !13, line: 767, baseType: !1759, size: 256, offset: 2816)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !13, line: 673, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !13, line: 665, size: 256, elements: !1761)
!1761 = !{!1762, !1770, !1771, !1772, !1773}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1760, file: !13, line: 666, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !13, line: 663, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !13, line: 659, size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1765, file: !13, line: 660, baseType: !1701, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1765, file: !13, line: 661, baseType: !9, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1765, file: !13, line: 662, baseType: !1703, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !13, line: 667, baseType: !9, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1760, file: !13, line: 668, baseType: !9, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1760, file: !13, line: 671, baseType: !9, size: 32, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1760, file: !13, line: 672, baseType: !1731, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1689, file: !13, line: 768, baseType: !9, size: 32, offset: 3072)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1689, file: !13, line: 769, baseType: !1776, size: 704, offset: 3136)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !13, line: 703, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !13, line: 677, size: 704, elements: !1778)
!1778 = !{!1779, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1777, file: !13, line: 679, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !13, line: 52, baseType: !8)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1777, file: !13, line: 683, baseType: !17, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1777, file: !13, line: 685, baseType: !219, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1777, file: !13, line: 689, baseType: !158, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1777, file: !13, line: 690, baseType: !219, size: 64, offset: 256)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1777, file: !13, line: 691, baseType: !219, size: 64, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1777, file: !13, line: 692, baseType: !1780, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1777, file: !13, line: 692, baseType: !1780, size: 64, offset: 448)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1777, file: !13, line: 693, baseType: !9, size: 32, offset: 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1777, file: !13, line: 696, baseType: !9, size: 32, offset: 544)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1777, file: !13, line: 697, baseType: !8, size: 64, offset: 576)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1777, file: !13, line: 700, baseType: !4, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1689, file: !13, line: 770, baseType: !8, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1689, file: !13, line: 771, baseType: !389, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1689, file: !13, line: 772, baseType: !17, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1689, file: !13, line: 773, baseType: !389, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1689, file: !13, line: 774, baseType: !94, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1689, file: !13, line: 775, baseType: !395, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1689, file: !13, line: 778, baseType: !9, size: 32, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1689, file: !13, line: 779, baseType: !1800, size: 131072, offset: 4256)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !1801)
!1801 = !{!1802}
!1802 = !DISubrange(count: 16384)
!1803 = !{!1804, !1805, !1809, !1814, !1815, !1818, !1830, !1832, !1833, !1836, !1839, !1840, !1841, !1845, !1848, !1849, !1851, !1852, !1853, !1854, !1855, !1857, !1860, !1861, !1862, !1865, !1868, !1869, !1870, !1871, !1872, !1876, !1879, !1882, !1883, !1885, !1889, !1892, !1893, !1894, !1896, !1899, !1900, !1905, !1910, !1913, !1916, !1917, !1921, !1924, !1925, !1928}
!1804 = !DILocalVariable(name: "c", arg: 1, scope: !1684, file: !1, line: 300, type: !1687)
!1805 = !DILocalVariable(name: "help", scope: !1806, file: !1, line: 302, type: !1808)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !1, line: 301, column: 62)
!1807 = distinct !DILexicalBlock(scope: !1684, file: !1, line: 301, column: 9)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 1536, elements: !854)
!1809 = !DILocalVariable(name: "delay", scope: !1810, file: !1, line: 336, type: !8)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 335, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 333, column: 16)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 331, column: 16)
!1813 = distinct !DILexicalBlock(scope: !1807, file: !1, line: 329, column: 16)
!1814 = !DILocalVariable(name: "flags", scope: !1810, file: !1, line: 342, type: !9)
!1815 = !DILocalVariable(name: "ptr", scope: !1816, file: !1, line: 348, type: !4)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 347, column: 52)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 347, column: 16)
!1818 = !DILocalVariable(name: "rsi", scope: !1819, file: !1, line: 357, type: !1823)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 356, column: 55)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 356, column: 16)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 353, column: 16)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 351, column: 16)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !13, line: 912, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !13, line: 904, size: 512, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1824, file: !13, line: 906, baseType: !9, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1824, file: !13, line: 909, baseType: !9, size: 32, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1824, file: !13, line: 910, baseType: !1749, size: 328, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1824, file: !13, line: 911, baseType: !8, size: 64, offset: 448)
!1830 = !DILocalVariable(name: "rsiptr", scope: !1819, file: !1, line: 357, type: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1832 = !DILocalVariable(name: "ret", scope: !1819, file: !1, line: 365, type: !9)
!1833 = !DILocalVariable(name: "ret", scope: !1834, file: !1, line: 377, type: !9)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 373, column: 56)
!1835 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 373, column: 16)
!1836 = !DILocalVariable(name: "de", scope: !1837, file: !1, line: 387, type: !60)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 386, column: 71)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !1, line: 386, column: 16)
!1839 = !DILocalVariable(name: "val", scope: !1837, file: !1, line: 388, type: !219)
!1840 = !DILocalVariable(name: "strenc", scope: !1837, file: !1, line: 389, type: !5)
!1841 = !DILocalVariable(name: "extra", scope: !1837, file: !1, line: 398, type: !1842)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1104, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 138)
!1845 = !DILocalVariable(name: "nextra", scope: !1846, file: !1, line: 400, type: !5)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !1, line: 399, column: 54)
!1847 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 399, column: 13)
!1848 = !DILocalVariable(name: "remaining", scope: !1846, file: !1, line: 401, type: !9)
!1849 = !DILocalVariable(name: "ql", scope: !1846, file: !1, line: 402, type: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1851 = !DILocalVariable(name: "used", scope: !1846, file: !1, line: 404, type: !9)
!1852 = !DILocalVariable(name: "avg", scope: !1846, file: !1, line: 408, type: !7)
!1853 = !DILocalVariable(name: "compressed", scope: !1846, file: !1, line: 417, type: !9)
!1854 = !DILocalVariable(name: "sz", scope: !1846, file: !1, line: 422, type: !35)
!1855 = !DILocalVariable(name: "node", scope: !1856, file: !1, line: 423, type: !452)
!1856 = distinct !DILexicalBlock(scope: !1846, file: !1, line: 423, column: 13)
!1857 = !DILocalVariable(name: "de", scope: !1858, file: !1, line: 439, type: !60)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 438, column: 71)
!1859 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 438, column: 16)
!1860 = !DILocalVariable(name: "val", scope: !1858, file: !1, line: 440, type: !219)
!1861 = !DILocalVariable(name: "key", scope: !1858, file: !1, line: 441, type: !94)
!1862 = !DILocalVariable(name: "o", scope: !1863, file: !1, line: 464, type: !219)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 463, column: 72)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 463, column: 16)
!1865 = !DILocalVariable(name: "keys", scope: !1866, file: !1, line: 477, type: !73)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 476, column: 46)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 475, column: 16)
!1868 = !DILocalVariable(name: "j", scope: !1866, file: !1, line: 477, type: !73)
!1869 = !DILocalVariable(name: "key", scope: !1866, file: !1, line: 478, type: !219)
!1870 = !DILocalVariable(name: "val", scope: !1866, file: !1, line: 478, type: !219)
!1871 = !DILocalVariable(name: "buf", scope: !1866, file: !1, line: 479, type: !425)
!1872 = !DILocalVariable(name: "valsize", scope: !1873, file: !1, line: 485, type: !73)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 484, column: 36)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 484, column: 9)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 484, column: 9)
!1876 = !DILocalVariable(name: "buflen", scope: !1877, file: !1, line: 500, type: !9)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1, line: 499, column: 18)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 497, column: 17)
!1879 = !DILocalVariable(name: "digest", scope: !1880, file: !1, line: 511, type: !182)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 509, column: 71)
!1881 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 509, column: 16)
!1882 = !DILocalVariable(name: "d", scope: !1880, file: !1, line: 512, type: !94)
!1883 = !DILocalVariable(name: "i", scope: !1884, file: !1, line: 515, type: !9)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 515, column: 9)
!1885 = !DILocalVariable(name: "j", scope: !1886, file: !1, line: 521, type: !9)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 521, column: 9)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 518, column: 77)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 518, column: 16)
!1889 = !DILocalVariable(name: "digest", scope: !1890, file: !1, line: 522, type: !182)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !1, line: 521, column: 43)
!1891 = distinct !DILexicalBlock(scope: !1886, file: !1, line: 521, column: 9)
!1892 = !DILocalVariable(name: "o", scope: !1890, file: !1, line: 524, type: !219)
!1893 = !DILocalVariable(name: "d", scope: !1890, file: !1, line: 527, type: !94)
!1894 = !DILocalVariable(name: "i", scope: !1895, file: !1, line: 528, type: !9)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 528, column: 13)
!1896 = !DILocalVariable(name: "dtime", scope: !1897, file: !1, line: 533, type: !7)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 532, column: 70)
!1898 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 532, column: 16)
!1899 = !DILocalVariable(name: "utime", scope: !1897, file: !1, line: 534, type: !8)
!1900 = !DILocalVariable(name: "tv", scope: !1897, file: !1, line: 535, type: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1732, line: 52, size: 128, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1901, file: !1732, line: 53, baseType: !1731, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1901, file: !1732, line: 54, baseType: !73, size: 64, offset: 64)
!1905 = !DILocalVariable(name: "errstr", scope: !1906, file: !1, line: 552, type: !94)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !1, line: 551, column: 70)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 551, column: 16)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 546, column: 16)
!1909 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 541, column: 16)
!1910 = !DILocalVariable(name: "sizes", scope: !1911, file: !1, line: 559, type: !94)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 558, column: 75)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !1, line: 558, column: 16)
!1913 = !DILocalVariable(name: "dbid", scope: !1914, file: !1, line: 570, type: !73)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 569, column: 72)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 569, column: 16)
!1916 = !DILocalVariable(name: "stats", scope: !1914, file: !1, line: 571, type: !94)
!1917 = !DILocalVariable(name: "buf", scope: !1914, file: !1, line: 572, type: !1918)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32768, elements: !1919)
!1919 = !{!1920}
!1920 = !DISubrange(count: 4096)
!1921 = !DILocalVariable(name: "o", scope: !1922, file: !1, line: 591, type: !219)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 590, column: 76)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 590, column: 16)
!1924 = !DILocalVariable(name: "ht", scope: !1922, file: !1, line: 592, type: !17)
!1925 = !DILocalVariable(name: "zs", scope: !1926, file: !1, line: 601, type: !532)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 600, column: 13)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 598, column: 30)
!1928 = !DILocalVariable(name: "buf", scope: !1929, file: !1, line: 614, type: !1918)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 613, column: 16)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 610, column: 13)
!1931 = !DILocation(line: 300, column: 27, scope: !1684)
!1932 = !DILocation(line: 301, column: 12, scope: !1807)
!1933 = !{!1934, !239, i64 64}
!1934 = !{!"client", !273, i64 0, !239, i64 8, !240, i64 16, !240, i64 24, !240, i64 32, !273, i64 40, !240, i64 48, !273, i64 56, !239, i64 64, !240, i64 72, !240, i64 80, !240, i64 88, !239, i64 96, !239, i64 100, !273, i64 104, !240, i64 112, !1143, i64 120, !273, i64 128, !273, i64 136, !273, i64 144, !273, i64 152, !239, i64 160, !239, i64 164, !239, i64 168, !239, i64 172, !239, i64 176, !273, i64 184, !273, i64 192, !240, i64 200, !1143, i64 208, !1143, i64 216, !1143, i64 224, !1143, i64 232, !1143, i64 240, !206, i64 248, !239, i64 292, !206, i64 296, !239, i64 344, !1935, i64 352, !239, i64 384, !1936, i64 392, !1143, i64 480, !240, i64 488, !240, i64 496, !240, i64 504, !240, i64 512, !240, i64 520, !239, i64 528, !206, i64 532}
!1935 = !{!"multiState", !240, i64 0, !239, i64 8, !239, i64 12, !239, i64 16, !273, i64 24}
!1936 = !{!"blockingState", !1143, i64 0, !240, i64 8, !240, i64 16, !273, i64 24, !240, i64 32, !240, i64 40, !1143, i64 48, !1143, i64 56, !239, i64 64, !239, i64 68, !1143, i64 72, !240, i64 80}
!1937 = !DILocation(line: 301, column: 17, scope: !1807)
!1938 = !DILocation(line: 301, column: 22, scope: !1807)
!1939 = !DILocation(line: 0, scope: !1813)
!1940 = !{!1934, !240, i64 72}
!1941 = !DILocation(line: 301, column: 26, scope: !1807)
!1942 = !DILocation(line: 301, column: 9, scope: !1684)
!1943 = !DILocation(line: 302, column: 9, scope: !1806)
!1944 = !DILocation(line: 302, column: 21, scope: !1806)
!1945 = !DILocation(line: 328, column: 25, scope: !1806)
!1946 = !DILocation(line: 328, column: 9, scope: !1806)
!1947 = !DILocation(line: 329, column: 5, scope: !1807)
!1948 = !DILocation(line: 329, column: 5, scope: !1806)
!1949 = !DILocation(line: 329, column: 17, scope: !1813)
!1950 = !DILocation(line: 329, column: 16, scope: !1807)
!1951 = !DILocation(line: 330, column: 22, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 329, column: 57)
!1953 = !DILocation(line: 331, column: 5, scope: !1952)
!1954 = !DILocation(line: 331, column: 17, scope: !1812)
!1955 = !DILocation(line: 331, column: 16, scope: !1813)
!1956 = !DILocation(line: 332, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 331, column: 54)
!1958 = !DILocation(line: 333, column: 17, scope: !1811)
!1959 = !DILocation(line: 333, column: 55, scope: !1811)
!1960 = !DILocation(line: 334, column: 17, scope: !1811)
!1961 = !DILocation(line: 333, column: 16, scope: !1812)
!1962 = !DILocation(line: 336, column: 9, scope: !1810)
!1963 = !DILocation(line: 336, column: 19, scope: !1810)
!1964 = !DILocation(line: 337, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 337, column: 13)
!1966 = !DILocation(line: 337, column: 13, scope: !1810)
!1967 = !DILocation(line: 338, column: 49, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 338, column: 17)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 337, column: 27)
!1970 = !DILocation(line: 338, column: 17, scope: !1968)
!1971 = !DILocation(line: 339, column: 17, scope: !1968)
!1972 = !DILocation(line: 338, column: 17, scope: !1969)
!1973 = !DILocation(line: 340, column: 17, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 340, column: 17)
!1975 = !DILocation(line: 340, column: 23, scope: !1974)
!1976 = !DILocation(line: 340, column: 17, scope: !1969)
!1977 = !DILocation(line: 340, column: 34, scope: !1974)
!1978 = !DILocation(line: 340, column: 28, scope: !1974)
!1979 = !DILocation(line: 345, column: 29, scope: !1810)
!1980 = !DILocation(line: 342, column: 36, scope: !1810)
!1981 = !DILocation(line: 342, column: 33, scope: !1810)
!1982 = !DILocation(line: 342, column: 45, scope: !1810)
!1983 = !DILocation(line: 342, column: 22, scope: !1810)
!1984 = !DILocation(line: 342, column: 21, scope: !1810)
!1985 = !DILocation(line: 342, column: 13, scope: !1810)
!1986 = !DILocation(line: 345, column: 9, scope: !1810)
!1987 = !DILocation(line: 346, column: 9, scope: !1810)
!1988 = !DILocation(line: 347, column: 5, scope: !1811)
!1989 = !DILocation(line: 0, scope: !1968)
!1990 = !DILocation(line: 347, column: 17, scope: !1817)
!1991 = !DILocation(line: 347, column: 16, scope: !1811)
!1992 = !DILocation(line: 348, column: 21, scope: !1816)
!1993 = !DILocation(line: 348, column: 15, scope: !1816)
!1994 = !DILocation(line: 349, column: 9, scope: !1816)
!1995 = !DILocation(line: 350, column: 27, scope: !1816)
!1996 = !{!1997, !240, i64 8}
!1997 = !{!"sharedObjectsStruct", !240, i64 0, !240, i64 8, !240, i64 16, !240, i64 24, !240, i64 32, !240, i64 40, !240, i64 48, !240, i64 56, !240, i64 64, !240, i64 72, !240, i64 80, !240, i64 88, !240, i64 96, !240, i64 104, !240, i64 112, !240, i64 120, !240, i64 128, !240, i64 136, !240, i64 144, !240, i64 152, !240, i64 160, !240, i64 168, !240, i64 176, !240, i64 184, !240, i64 192, !240, i64 200, !240, i64 208, !240, i64 216, !240, i64 224, !240, i64 232, !240, i64 240, !240, i64 248, !240, i64 256, !240, i64 264, !240, i64 272, !240, i64 280, !240, i64 288, !240, i64 296, !240, i64 304, !240, i64 312, !240, i64 320, !240, i64 328, !240, i64 336, !240, i64 344, !240, i64 352, !240, i64 360, !206, i64 368, !206, i64 448, !206, i64 80448, !206, i64 80704, !240, i64 80960, !240, i64 80968}
!1998 = !DILocation(line: 350, column: 9, scope: !1816)
!1999 = !DILocation(line: 351, column: 5, scope: !1816)
!2000 = !DILocation(line: 351, column: 17, scope: !1822)
!2001 = !DILocation(line: 351, column: 16, scope: !1817)
!2002 = !DILocation(line: 352, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 351, column: 55)
!2004 = !DILocation(line: 353, column: 17, scope: !1821)
!2005 = !DILocation(line: 353, column: 51, scope: !1821)
!2006 = !DILocation(line: 353, column: 62, scope: !1821)
!2007 = !DILocation(line: 353, column: 16, scope: !1822)
!2008 = !DILocation(line: 354, column: 55, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 353, column: 68)
!2010 = !DILocation(line: 354, column: 67, scope: !2009)
!2011 = !DILocation(line: 354, column: 9, scope: !2009)
!2012 = !DILocation(line: 355, column: 27, scope: !2009)
!2013 = !DILocation(line: 355, column: 9, scope: !2009)
!2014 = !DILocation(line: 356, column: 5, scope: !2009)
!2015 = !DILocation(line: 356, column: 17, scope: !1820)
!2016 = !DILocation(line: 356, column: 16, scope: !1821)
!2017 = !DILocation(line: 357, column: 9, scope: !1819)
!2018 = !DILocation(line: 357, column: 21, scope: !1819)
!2019 = !DILocation(line: 358, column: 18, scope: !1819)
!2020 = !DILocation(line: 357, column: 27, scope: !1819)
!2021 = !DILocation(line: 359, column: 28, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 359, column: 13)
!2023 = !{!1486, !240, i64 2120}
!2024 = !DILocation(line: 359, column: 13, scope: !2022)
!2025 = !DILocation(line: 359, column: 49, scope: !2022)
!2026 = !DILocation(line: 359, column: 13, scope: !1819)
!2027 = !DILocation(line: 360, column: 31, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 359, column: 58)
!2029 = !{!1997, !240, i64 16}
!2030 = !DILocation(line: 360, column: 13, scope: !2028)
!2031 = !DILocation(line: 361, column: 13, scope: !2028)
!2032 = !DILocation(line: 363, column: 9, scope: !1819)
!2033 = !DILocation(line: 364, column: 9, scope: !1819)
!2034 = !DILocation(line: 365, column: 34, scope: !1819)
!2035 = !DILocation(line: 365, column: 19, scope: !1819)
!2036 = !DILocation(line: 365, column: 13, scope: !1819)
!2037 = !DILocation(line: 366, column: 9, scope: !1819)
!2038 = !DILocation(line: 367, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 367, column: 13)
!2040 = !DILocation(line: 367, column: 13, scope: !1819)
!2041 = !DILocation(line: 368, column: 13, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 367, column: 26)
!2043 = !DILocation(line: 369, column: 13, scope: !2042)
!2044 = !DILocation(line: 371, column: 9, scope: !1819)
!2045 = !DILocation(line: 372, column: 27, scope: !1819)
!2046 = !DILocation(line: 372, column: 9, scope: !1819)
!2047 = !DILocation(line: 373, column: 5, scope: !1820)
!2048 = !DILocation(line: 0, scope: !2042)
!2049 = !DILocation(line: 373, column: 17, scope: !1835)
!2050 = !DILocation(line: 373, column: 16, scope: !1820)
!2051 = !DILocation(line: 374, column: 20, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 374, column: 13)
!2053 = !{!1486, !239, i64 1880}
!2054 = !DILocation(line: 374, column: 30, scope: !2052)
!2055 = !DILocation(line: 374, column: 13, scope: !1834)
!2056 = !DILocation(line: 374, column: 42, scope: !2052)
!2057 = !DILocation(line: 375, column: 9, scope: !1834)
!2058 = !DILocation(line: 376, column: 9, scope: !1834)
!2059 = !DILocation(line: 377, column: 45, scope: !1834)
!2060 = !{!1486, !240, i64 1888}
!2061 = !DILocation(line: 377, column: 19, scope: !1834)
!2062 = !DILocation(line: 377, column: 13, scope: !1834)
!2063 = !DILocation(line: 378, column: 9, scope: !1834)
!2064 = !DILocation(line: 379, column: 17, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 379, column: 13)
!2066 = !DILocation(line: 379, column: 13, scope: !1834)
!2067 = !DILocation(line: 380, column: 31, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 379, column: 26)
!2069 = !DILocation(line: 380, column: 13, scope: !2068)
!2070 = !DILocation(line: 381, column: 13, scope: !2068)
!2071 = !DILocation(line: 383, column: 22, scope: !1834)
!2072 = !{!1486, !1143, i64 2080}
!2073 = !DILocation(line: 384, column: 9, scope: !1834)
!2074 = !DILocation(line: 385, column: 27, scope: !1834)
!2075 = !DILocation(line: 385, column: 9, scope: !1834)
!2076 = !DILocation(line: 386, column: 5, scope: !1835)
!2077 = !DILocation(line: 0, scope: !2068)
!2078 = !DILocation(line: 386, column: 17, scope: !1838)
!2079 = !DILocation(line: 386, column: 54, scope: !1838)
!2080 = !DILocation(line: 386, column: 65, scope: !1838)
!2081 = !DILocation(line: 386, column: 16, scope: !1835)
!2082 = !DILocation(line: 391, column: 31, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 391, column: 13)
!2084 = !{!1934, !240, i64 16}
!2085 = !DILocation(line: 391, column: 35, scope: !2083)
!2086 = !DILocation(line: 391, column: 40, scope: !2083)
!2087 = !DILocation(line: 391, column: 52, scope: !2083)
!2088 = !DILocation(line: 391, column: 19, scope: !2083)
!2089 = !DILocation(line: 387, column: 20, scope: !1837)
!2090 = !DILocation(line: 391, column: 58, scope: !2083)
!2091 = !DILocation(line: 391, column: 13, scope: !1837)
!2092 = !DILocation(line: 392, column: 31, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2083, file: !1, line: 391, column: 67)
!2094 = !{!1997, !240, i64 120}
!2095 = !DILocation(line: 392, column: 13, scope: !2093)
!2096 = !DILocation(line: 393, column: 13, scope: !2093)
!2097 = !DILocation(line: 395, column: 15, scope: !1837)
!2098 = !DILocation(line: 388, column: 15, scope: !1837)
!2099 = !DILocation(line: 396, column: 35, scope: !1837)
!2100 = !DILocation(line: 396, column: 18, scope: !1837)
!2101 = !DILocation(line: 389, column: 15, scope: !1837)
!2102 = !DILocation(line: 398, column: 9, scope: !1837)
!2103 = !DILocation(line: 398, column: 14, scope: !1837)
!2104 = !DILocation(line: 399, column: 18, scope: !1847)
!2105 = !DILocation(line: 399, column: 27, scope: !1847)
!2106 = !DILocation(line: 399, column: 13, scope: !1837)
!2107 = !DILocation(line: 400, column: 19, scope: !1846)
!2108 = !DILocation(line: 401, column: 17, scope: !1846)
!2109 = !DILocation(line: 402, column: 34, scope: !1846)
!2110 = !DILocation(line: 402, column: 24, scope: !1846)
!2111 = !DILocation(line: 404, column: 73, scope: !1846)
!2112 = !{!2113, !273, i64 24}
!2113 = !{!"quicklist", !240, i64 0, !240, i64 8, !273, i64 16, !273, i64 24, !239, i64 32, !239, i64 34}
!2114 = !DILocation(line: 404, column: 24, scope: !1846)
!2115 = !DILocation(line: 404, column: 17, scope: !1846)
!2116 = !DILocation(line: 405, column: 20, scope: !1846)
!2117 = !DILocation(line: 406, column: 23, scope: !1846)
!2118 = !DILocation(line: 408, column: 38, scope: !1846)
!2119 = !{!2113, !273, i64 16}
!2120 = !DILocation(line: 408, column: 26, scope: !1846)
!2121 = !DILocation(line: 408, column: 48, scope: !1846)
!2122 = !DILocation(line: 408, column: 44, scope: !1846)
!2123 = !DILocation(line: 408, column: 43, scope: !1846)
!2124 = !DILocation(line: 408, column: 20, scope: !1846)
!2125 = !DILocation(line: 409, column: 37, scope: !1846)
!2126 = !DILocation(line: 409, column: 20, scope: !1846)
!2127 = !DILocation(line: 410, column: 20, scope: !1846)
!2128 = !DILocation(line: 411, column: 23, scope: !1846)
!2129 = !DILocation(line: 413, column: 37, scope: !1846)
!2130 = !DILocation(line: 413, column: 74, scope: !1846)
!2131 = !DILocation(line: 413, column: 20, scope: !1846)
!2132 = !DILocation(line: 414, column: 20, scope: !1846)
!2133 = !DILocation(line: 415, column: 23, scope: !1846)
!2134 = !DILocation(line: 417, column: 34, scope: !1846)
!2135 = !DILocation(line: 417, column: 43, scope: !1846)
!2136 = !DILocation(line: 417, column: 17, scope: !1846)
!2137 = !DILocation(line: 418, column: 37, scope: !1846)
!2138 = !DILocation(line: 418, column: 20, scope: !1846)
!2139 = !DILocation(line: 419, column: 20, scope: !1846)
!2140 = !DILocation(line: 420, column: 23, scope: !1846)
!2141 = !DILocation(line: 422, column: 27, scope: !1846)
!2142 = !DILocation(line: 423, column: 44, scope: !1856)
!2143 = !{!2113, !240, i64 0}
!2144 = !DILocation(line: 423, column: 33, scope: !1856)
!2145 = !DILocation(line: 423, column: 18, scope: !1856)
!2146 = !DILocation(line: 423, column: 13, scope: !1856)
!2147 = !DILocation(line: 0, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 423, column: 75)
!2149 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 423, column: 13)
!2150 = !DILocation(line: 426, column: 37, scope: !1846)
!2151 = !DILocation(line: 426, column: 20, scope: !1846)
!2152 = !DILocation(line: 429, column: 9, scope: !1846)
!2153 = !DILocation(line: 424, column: 29, scope: !2148)
!2154 = !{!2155, !239, i64 24}
!2155 = !{!"quicklistNode", !240, i64 0, !240, i64 8, !240, i64 16, !239, i64 24, !239, i64 28, !239, i64 30, !239, i64 30, !239, i64 30, !239, i64 30, !239, i64 30}
!2156 = !DILocation(line: 424, column: 23, scope: !2148)
!2157 = !DILocation(line: 424, column: 20, scope: !2148)
!2158 = !DILocation(line: 423, column: 69, scope: !2149)
!2159 = !{!2155, !240, i64 8}
!2160 = !DILocation(line: 423, column: 13, scope: !2149)
!2161 = distinct !{!2161, !2146, !2162}
!2162 = !DILocation(line: 425, column: 13, scope: !1856)
!2163 = !DILocation(line: 435, column: 30, scope: !1837)
!2164 = !{!238, !239, i64 4}
!2165 = !DILocation(line: 436, column: 21, scope: !1837)
!2166 = !DILocation(line: 437, column: 18, scope: !1837)
!2167 = !DILocation(line: 437, column: 23, scope: !1837)
!2168 = !DILocation(line: 437, column: 50, scope: !1837)
!2169 = !DILocation(line: 431, column: 9, scope: !1837)
!2170 = !DILocation(line: 438, column: 5, scope: !1838)
!2171 = !DILocation(line: 0, scope: !2093)
!2172 = !DILocation(line: 438, column: 17, scope: !1859)
!2173 = !DILocation(line: 438, column: 54, scope: !1859)
!2174 = !DILocation(line: 438, column: 65, scope: !1859)
!2175 = !DILocation(line: 438, column: 16, scope: !1838)
!2176 = !DILocation(line: 443, column: 31, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 443, column: 13)
!2178 = !DILocation(line: 443, column: 35, scope: !2177)
!2179 = !DILocation(line: 443, column: 40, scope: !2177)
!2180 = !DILocation(line: 443, column: 52, scope: !2177)
!2181 = !DILocation(line: 443, column: 19, scope: !2177)
!2182 = !DILocation(line: 439, column: 20, scope: !1858)
!2183 = !DILocation(line: 443, column: 58, scope: !2177)
!2184 = !DILocation(line: 443, column: 13, scope: !1858)
!2185 = !DILocation(line: 444, column: 31, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 443, column: 67)
!2187 = !DILocation(line: 444, column: 13, scope: !2186)
!2188 = !DILocation(line: 445, column: 13, scope: !2186)
!2189 = !DILocation(line: 447, column: 15, scope: !1858)
!2190 = !DILocation(line: 440, column: 15, scope: !1858)
!2191 = !DILocation(line: 448, column: 15, scope: !1858)
!2192 = !DILocation(line: 441, column: 13, scope: !1858)
!2193 = !DILocation(line: 450, column: 18, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 450, column: 13)
!2195 = !DILocation(line: 450, column: 23, scope: !2194)
!2196 = !DILocation(line: 450, column: 37, scope: !2194)
!2197 = !DILocation(line: 450, column: 41, scope: !2194)
!2198 = !DILocation(line: 450, column: 13, scope: !1858)
!2199 = !DILocation(line: 451, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 450, column: 64)
!2201 = !DILocation(line: 452, column: 9, scope: !2200)
!2202 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 456, column: 29, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2194, file: !1, line: 452, column: 16)
!2205 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !2203)
!2206 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !2203)
!2207 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !2203)
!2208 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !2203)
!2209 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !2203)
!2210 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !2203)
!2211 = !DILocalVariable(name: "s", arg: 1, scope: !2212, file: !95, line: 104, type: !247)
!2212 = distinct !DISubprogram(name: "sdsavail", scope: !95, file: !95, line: 104, type: !243, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2213)
!2213 = !{!2211, !2214, !2215, !2218, !2220, !2222}
!2214 = !DILocalVariable(name: "flags", scope: !2212, file: !95, line: 105, type: !118)
!2215 = !DILocalVariable(name: "sh", scope: !2216, file: !95, line: 111, type: !112)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 110, column: 26)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !95, line: 106, column: 33)
!2218 = !DILocalVariable(name: "sh", scope: !2219, file: !95, line: 115, type: !123)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 114, column: 27)
!2220 = !DILocalVariable(name: "sh", scope: !2221, file: !95, line: 119, type: !133)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 118, column: 27)
!2222 = !DILocalVariable(name: "sh", scope: !2223, file: !95, line: 123, type: !143)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 122, column: 27)
!2224 = !DILocation(line: 104, column: 41, scope: !2212, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 457, column: 29, scope: !2204)
!2226 = !DILocation(line: 105, column: 19, scope: !2212, inlinedAt: !2225)
!2227 = !DILocation(line: 106, column: 5, scope: !2212, inlinedAt: !2225)
!2228 = !DILocation(line: 108, column: 13, scope: !2229, inlinedAt: !2225)
!2229 = distinct !DILexicalBlock(scope: !2217, file: !95, line: 107, column: 26)
!2230 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !2203)
!2231 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !2203)
!2232 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !2203)
!2233 = !DILocation(line: 111, column: 13, scope: !2216, inlinedAt: !2225)
!2234 = !DILocation(line: 112, column: 24, scope: !2216, inlinedAt: !2225)
!2235 = !DILocation(line: 112, column: 20, scope: !2216, inlinedAt: !2225)
!2236 = !DILocation(line: 112, column: 30, scope: !2216, inlinedAt: !2225)
!2237 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !2203)
!2238 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !2203)
!2239 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !2203)
!2240 = !DILocation(line: 115, column: 13, scope: !2219, inlinedAt: !2225)
!2241 = !DILocation(line: 116, column: 24, scope: !2219, inlinedAt: !2225)
!2242 = !DILocation(line: 116, column: 20, scope: !2219, inlinedAt: !2225)
!2243 = !DILocation(line: 116, column: 30, scope: !2219, inlinedAt: !2225)
!2244 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !2203)
!2245 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !2203)
!2246 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !2203)
!2247 = !DILocation(line: 119, column: 13, scope: !2221, inlinedAt: !2225)
!2248 = !DILocation(line: 120, column: 24, scope: !2221, inlinedAt: !2225)
!2249 = !DILocation(line: 120, column: 30, scope: !2221, inlinedAt: !2225)
!2250 = !DILocation(line: 120, column: 20, scope: !2221, inlinedAt: !2225)
!2251 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !2203)
!2252 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !2203)
!2253 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !2203)
!2254 = !DILocation(line: 123, column: 13, scope: !2223, inlinedAt: !2225)
!2255 = !DILocation(line: 124, column: 24, scope: !2223, inlinedAt: !2225)
!2256 = !DILocation(line: 124, column: 30, scope: !2223, inlinedAt: !2225)
!2257 = !DILocation(line: 101, column: 5, scope: !242, inlinedAt: !2203)
!2258 = !DILocation(line: 127, column: 5, scope: !2212, inlinedAt: !2225)
!2259 = !DILocation(line: 0, scope: !2229, inlinedAt: !2225)
!2260 = !DILocation(line: 128, column: 1, scope: !2212, inlinedAt: !2225)
!2261 = !DILocation(line: 458, column: 29, scope: !2204)
!2262 = !DILocation(line: 459, column: 41, scope: !2204)
!2263 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 459, column: 29, scope: !2204)
!2265 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !2264)
!2266 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !2264)
!2267 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !2264)
!2268 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !2264)
!2269 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !2264)
!2270 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !2264)
!2271 = !DILocation(line: 104, column: 41, scope: !2212, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 460, column: 29, scope: !2204)
!2273 = !DILocation(line: 105, column: 19, scope: !2212, inlinedAt: !2272)
!2274 = !DILocation(line: 106, column: 5, scope: !2212, inlinedAt: !2272)
!2275 = !DILocation(line: 108, column: 13, scope: !2229, inlinedAt: !2272)
!2276 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !2264)
!2277 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !2264)
!2278 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !2264)
!2279 = !DILocation(line: 111, column: 13, scope: !2216, inlinedAt: !2272)
!2280 = !DILocation(line: 112, column: 24, scope: !2216, inlinedAt: !2272)
!2281 = !DILocation(line: 112, column: 20, scope: !2216, inlinedAt: !2272)
!2282 = !DILocation(line: 112, column: 30, scope: !2216, inlinedAt: !2272)
!2283 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !2264)
!2284 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !2264)
!2285 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !2264)
!2286 = !DILocation(line: 115, column: 13, scope: !2219, inlinedAt: !2272)
!2287 = !DILocation(line: 116, column: 24, scope: !2219, inlinedAt: !2272)
!2288 = !DILocation(line: 116, column: 20, scope: !2219, inlinedAt: !2272)
!2289 = !DILocation(line: 116, column: 30, scope: !2219, inlinedAt: !2272)
!2290 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !2264)
!2291 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !2264)
!2292 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !2264)
!2293 = !DILocation(line: 119, column: 13, scope: !2221, inlinedAt: !2272)
!2294 = !DILocation(line: 120, column: 24, scope: !2221, inlinedAt: !2272)
!2295 = !DILocation(line: 120, column: 30, scope: !2221, inlinedAt: !2272)
!2296 = !DILocation(line: 120, column: 20, scope: !2221, inlinedAt: !2272)
!2297 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !2264)
!2298 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !2264)
!2299 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !2264)
!2300 = !DILocation(line: 123, column: 13, scope: !2223, inlinedAt: !2272)
!2301 = !DILocation(line: 124, column: 24, scope: !2223, inlinedAt: !2272)
!2302 = !DILocation(line: 124, column: 30, scope: !2223, inlinedAt: !2272)
!2303 = !DILocation(line: 101, column: 5, scope: !242, inlinedAt: !2264)
!2304 = !DILocation(line: 127, column: 5, scope: !2212, inlinedAt: !2272)
!2305 = !DILocation(line: 0, scope: !2229, inlinedAt: !2272)
!2306 = !DILocation(line: 128, column: 1, scope: !2212, inlinedAt: !2272)
!2307 = !DILocation(line: 461, column: 29, scope: !2204)
!2308 = !DILocation(line: 453, column: 13, scope: !2204)
!2309 = !DILocation(line: 463, column: 5, scope: !1859)
!2310 = !DILocation(line: 0, scope: !2186)
!2311 = !DILocation(line: 463, column: 17, scope: !1864)
!2312 = !DILocation(line: 463, column: 55, scope: !1864)
!2313 = !DILocation(line: 463, column: 66, scope: !1864)
!2314 = !DILocation(line: 463, column: 16, scope: !1859)
!2315 = !DILocation(line: 466, column: 47, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 466, column: 13)
!2317 = !DILocation(line: 466, column: 65, scope: !2316)
!2318 = !DILocation(line: 466, column: 18, scope: !2316)
!2319 = !DILocation(line: 464, column: 15, scope: !1863)
!2320 = !DILocation(line: 467, column: 17, scope: !2316)
!2321 = !DILocation(line: 466, column: 13, scope: !1863)
!2322 = !DILocation(line: 469, column: 16, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 469, column: 13)
!2324 = !DILocation(line: 469, column: 25, scope: !2323)
!2325 = !DILocation(line: 469, column: 13, scope: !1863)
!2326 = !DILocation(line: 470, column: 13, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 469, column: 50)
!2328 = !DILocation(line: 471, column: 9, scope: !2327)
!2329 = !DILocation(line: 472, column: 28, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 471, column: 16)
!2331 = !DILocation(line: 472, column: 13, scope: !2330)
!2332 = !DILocation(line: 473, column: 13, scope: !2330)
!2333 = !DILocation(line: 475, column: 5, scope: !1864)
!2334 = !DILocation(line: 0, scope: !2316)
!2335 = !DILocation(line: 475, column: 17, scope: !1867)
!2336 = !DILocation(line: 475, column: 56, scope: !1867)
!2337 = !DILocation(line: 476, column: 24, scope: !1867)
!2338 = !DILocation(line: 476, column: 29, scope: !1867)
!2339 = !DILocation(line: 476, column: 40, scope: !1867)
!2340 = !DILocation(line: 475, column: 16, scope: !1864)
!2341 = !DILocation(line: 477, column: 9, scope: !1866)
!2342 = !DILocation(line: 479, column: 9, scope: !1866)
!2343 = !DILocation(line: 479, column: 14, scope: !1866)
!2344 = !DILocation(line: 481, column: 41, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1866, file: !1, line: 481, column: 13)
!2346 = !DILocation(line: 477, column: 14, scope: !1866)
!2347 = !DILocation(line: 481, column: 13, scope: !2345)
!2348 = !DILocation(line: 481, column: 66, scope: !2345)
!2349 = !DILocation(line: 481, column: 13, scope: !1866)
!2350 = !DILocation(line: 483, column: 23, scope: !1866)
!2351 = !DILocation(line: 483, column: 27, scope: !1866)
!2352 = !DILocation(line: 483, column: 32, scope: !1866)
!2353 = !DILocation(line: 483, column: 9, scope: !1866)
!2354 = !DILocation(line: 477, column: 20, scope: !1866)
!2355 = !DILocation(line: 484, column: 14, scope: !1875)
!2356 = !DILocation(line: 484, column: 25, scope: !1874)
!2357 = !DILocation(line: 484, column: 23, scope: !1874)
!2358 = !DILocation(line: 484, column: 9, scope: !1875)
!2359 = !DILocation(line: 485, column: 13, scope: !1873)
!2360 = !DILocation(line: 485, column: 18, scope: !1873)
!2361 = !DILocation(line: 487, column: 21, scope: !1873)
!2362 = !DILocation(line: 487, column: 26, scope: !1873)
!2363 = !DILocation(line: 487, column: 17, scope: !1873)
!2364 = !DILocation(line: 487, column: 52, scope: !1873)
!2365 = !DILocation(line: 487, column: 49, scope: !1873)
!2366 = !DILocation(line: 487, column: 61, scope: !1873)
!2367 = !DILocation(line: 486, column: 13, scope: !1873)
!2368 = !DILocation(line: 488, column: 42, scope: !1873)
!2369 = !DILocation(line: 488, column: 19, scope: !1873)
!2370 = !DILocation(line: 478, column: 15, scope: !1866)
!2371 = !DILocation(line: 489, column: 20, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 489, column: 17)
!2373 = !DILocation(line: 489, column: 25, scope: !2372)
!2374 = !DILocation(line: 489, column: 17, scope: !1873)
!2375 = !DILocation(line: 490, column: 52, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 490, column: 21)
!2377 = !DILocation(line: 490, column: 49, scope: !2376)
!2378 = !DILocation(line: 490, column: 21, scope: !2376)
!2379 = !DILocation(line: 490, column: 77, scope: !2376)
!2380 = !DILocation(line: 490, column: 21, scope: !2372)
!2381 = !DILocation(line: 492, column: 35, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 492, column: 17)
!2383 = !DILocation(line: 492, column: 17, scope: !2382)
!2384 = !DILocation(line: 492, column: 43, scope: !2382)
!2385 = !DILocation(line: 492, column: 17, scope: !1873)
!2386 = !DILocation(line: 493, column: 17, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !1, line: 492, column: 52)
!2388 = !DILocation(line: 494, column: 17, scope: !2387)
!2389 = !DILocation(line: 496, column: 13, scope: !1873)
!2390 = !DILocation(line: 497, column: 17, scope: !1878)
!2391 = !DILocation(line: 497, column: 24, scope: !1878)
!2392 = !DILocation(line: 497, column: 17, scope: !1873)
!2393 = !DILocation(line: 0, scope: !1877)
!2394 = !DILocation(line: 498, column: 23, scope: !1878)
!2395 = !DILocation(line: 478, column: 21, scope: !1866)
!2396 = !DILocation(line: 498, column: 17, scope: !1878)
!2397 = !DILocation(line: 501, column: 47, scope: !1877)
!2398 = !DILocation(line: 501, column: 23, scope: !1877)
!2399 = !DILocation(line: 502, column: 29, scope: !1877)
!2400 = !DILocation(line: 502, column: 39, scope: !1877)
!2401 = !DILocation(line: 502, column: 48, scope: !1877)
!2402 = !DILocation(line: 502, column: 46, scope: !1877)
!2403 = !DILocation(line: 502, column: 17, scope: !1877)
!2404 = !DILocation(line: 504, column: 22, scope: !1873)
!2405 = !DILocation(line: 504, column: 13, scope: !1873)
!2406 = !DILocation(line: 505, column: 34, scope: !1873)
!2407 = !DILocation(line: 505, column: 13, scope: !1873)
!2408 = !DILocation(line: 506, column: 13, scope: !1873)
!2409 = !DILocation(line: 507, column: 9, scope: !1874)
!2410 = !DILocation(line: 491, column: 21, scope: !2376)
!2411 = !DILocation(line: 0, scope: !1874)
!2412 = !DILocation(line: 484, column: 32, scope: !1874)
!2413 = !DILocation(line: 484, column: 9, scope: !1874)
!2414 = distinct !{!2414, !2358, !2415}
!2415 = !DILocation(line: 507, column: 9, scope: !1875)
!2416 = !DILocation(line: 508, column: 27, scope: !1866)
!2417 = !DILocation(line: 508, column: 9, scope: !1866)
!2418 = !DILocation(line: 509, column: 5, scope: !1867)
!2419 = !DILocation(line: 509, column: 17, scope: !1881)
!2420 = !DILocation(line: 509, column: 54, scope: !1881)
!2421 = !DILocation(line: 509, column: 16, scope: !1867)
!2422 = !DILocation(line: 511, column: 9, scope: !1880)
!2423 = !DILocation(line: 511, column: 23, scope: !1880)
!2424 = !DILocation(line: 512, column: 17, scope: !1880)
!2425 = !DILocation(line: 512, column: 13, scope: !1880)
!2426 = !DILocation(line: 514, column: 9, scope: !1880)
!2427 = !DILocation(line: 515, column: 18, scope: !1884)
!2428 = !DILocation(line: 515, column: 14, scope: !1884)
!2429 = !DILocation(line: 515, column: 9, scope: !1884)
!2430 = !DILocation(line: 516, column: 9, scope: !1880)
!2431 = !DILocation(line: 517, column: 9, scope: !1880)
!2432 = !DILocation(line: 518, column: 5, scope: !1881)
!2433 = !DILocation(line: 518, column: 5, scope: !1880)
!2434 = !DILocation(line: 515, column: 65, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 515, column: 9)
!2436 = !DILocation(line: 515, column: 42, scope: !2435)
!2437 = !DILocation(line: 515, column: 34, scope: !2435)
!2438 = !DILocation(line: 515, column: 9, scope: !2435)
!2439 = !DILocation(line: 515, column: 27, scope: !2435)
!2440 = distinct !{!2440, !2429, !2441}
!2441 = !DILocation(line: 515, column: 74, scope: !1884)
!2442 = !DILocation(line: 518, column: 17, scope: !1888)
!2443 = !DILocation(line: 518, column: 60, scope: !1888)
!2444 = !DILocation(line: 518, column: 71, scope: !1888)
!2445 = !DILocation(line: 518, column: 16, scope: !1881)
!2446 = !DILocation(line: 520, column: 39, scope: !1887)
!2447 = !DILocation(line: 520, column: 32, scope: !1887)
!2448 = !DILocation(line: 520, column: 9, scope: !1887)
!2449 = !DILocation(line: 521, column: 18, scope: !1886)
!2450 = !DILocation(line: 521, column: 14, scope: !1886)
!2451 = !DILocation(line: 521, column: 32, scope: !1891)
!2452 = !DILocation(line: 521, column: 27, scope: !1891)
!2453 = !DILocation(line: 521, column: 9, scope: !1886)
!2454 = !DILocation(line: 522, column: 13, scope: !1890)
!2455 = !DILocation(line: 522, column: 27, scope: !1890)
!2456 = !DILocation(line: 523, column: 13, scope: !1890)
!2457 = !DILocation(line: 524, column: 49, scope: !1890)
!2458 = !DILocation(line: 524, column: 55, scope: !1890)
!2459 = !DILocation(line: 524, column: 52, scope: !1890)
!2460 = !DILocation(line: 524, column: 23, scope: !1890)
!2461 = !DILocation(line: 524, column: 19, scope: !1890)
!2462 = !DILocation(line: 525, column: 17, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 525, column: 17)
!2464 = !DILocation(line: 525, column: 17, scope: !1890)
!2465 = !DILocation(line: 525, column: 39, scope: !2463)
!2466 = !DILocation(line: 525, column: 45, scope: !2463)
!2467 = !DILocation(line: 525, column: 42, scope: !2463)
!2468 = !DILocation(line: 525, column: 20, scope: !2463)
!2469 = !DILocation(line: 527, column: 21, scope: !1890)
!2470 = !DILocation(line: 527, column: 17, scope: !1890)
!2471 = !DILocation(line: 528, column: 22, scope: !1895)
!2472 = !DILocation(line: 528, column: 18, scope: !1895)
!2473 = !DILocation(line: 528, column: 13, scope: !1895)
!2474 = !DILocation(line: 529, column: 13, scope: !1890)
!2475 = !DILocation(line: 530, column: 13, scope: !1890)
!2476 = !DILocation(line: 531, column: 9, scope: !1891)
!2477 = !DILocation(line: 521, column: 39, scope: !1891)
!2478 = !DILocation(line: 521, column: 9, scope: !1891)
!2479 = distinct !{!2479, !2453, !2480}
!2480 = !DILocation(line: 531, column: 9, scope: !1886)
!2481 = !DILocation(line: 528, column: 69, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 528, column: 13)
!2483 = !DILocation(line: 528, column: 46, scope: !2482)
!2484 = !DILocation(line: 528, column: 38, scope: !2482)
!2485 = !DILocation(line: 528, column: 13, scope: !2482)
!2486 = !DILocation(line: 528, column: 31, scope: !2482)
!2487 = distinct !{!2487, !2473, !2488}
!2488 = !DILocation(line: 528, column: 78, scope: !1895)
!2489 = !DILocation(line: 532, column: 17, scope: !1898)
!2490 = !DILocation(line: 532, column: 53, scope: !1898)
!2491 = !DILocation(line: 532, column: 64, scope: !1898)
!2492 = !DILocation(line: 532, column: 16, scope: !1888)
!2493 = !DILocation(line: 533, column: 31, scope: !1897)
!2494 = !DILocation(line: 533, column: 43, scope: !1897)
!2495 = !DILocation(line: 533, column: 24, scope: !1897)
!2496 = !DILocation(line: 533, column: 16, scope: !1897)
!2497 = !DILocation(line: 534, column: 32, scope: !1897)
!2498 = !DILocation(line: 534, column: 27, scope: !1897)
!2499 = !DILocation(line: 534, column: 19, scope: !1897)
!2500 = !DILocation(line: 535, column: 9, scope: !1897)
!2501 = !DILocation(line: 537, column: 27, scope: !1897)
!2502 = !DILocation(line: 537, column: 12, scope: !1897)
!2503 = !DILocation(line: 537, column: 19, scope: !1897)
!2504 = !{!2505, !273, i64 0}
!2505 = !{!"timespec", !273, i64 0, !273, i64 8}
!2506 = !DILocation(line: 538, column: 29, scope: !1897)
!2507 = !DILocation(line: 538, column: 40, scope: !1897)
!2508 = !DILocation(line: 538, column: 12, scope: !1897)
!2509 = !DILocation(line: 538, column: 20, scope: !1897)
!2510 = !{!2505, !273, i64 8}
!2511 = !DILocation(line: 535, column: 25, scope: !1897)
!2512 = !DILocation(line: 539, column: 9, scope: !1897)
!2513 = !DILocation(line: 540, column: 27, scope: !1897)
!2514 = !DILocation(line: 540, column: 9, scope: !1897)
!2515 = !DILocation(line: 541, column: 5, scope: !1898)
!2516 = !DILocation(line: 541, column: 5, scope: !1897)
!2517 = !DILocation(line: 541, column: 17, scope: !1909)
!2518 = !DILocation(line: 541, column: 65, scope: !1909)
!2519 = !DILocation(line: 542, column: 24, scope: !1909)
!2520 = !DILocation(line: 541, column: 16, scope: !1898)
!2521 = !DILocation(line: 544, column: 45, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 543, column: 5)
!2523 = !DILocation(line: 544, column: 57, scope: !2522)
!2524 = !DILocation(line: 544, column: 40, scope: !2522)
!2525 = !DILocation(line: 544, column: 38, scope: !2522)
!2526 = !{!1486, !239, i64 1740}
!2527 = !DILocation(line: 545, column: 27, scope: !2522)
!2528 = !DILocation(line: 545, column: 9, scope: !2522)
!2529 = !DILocation(line: 546, column: 5, scope: !2522)
!2530 = !DILocation(line: 546, column: 17, scope: !1908)
!2531 = !DILocation(line: 546, column: 77, scope: !1908)
!2532 = !DILocation(line: 547, column: 24, scope: !1908)
!2533 = !DILocation(line: 546, column: 16, scope: !1909)
!2534 = !DILocation(line: 549, column: 53, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 548, column: 5)
!2536 = !DILocation(line: 549, column: 65, scope: !2535)
!2537 = !DILocation(line: 549, column: 48, scope: !2535)
!2538 = !DILocation(line: 549, column: 46, scope: !2535)
!2539 = !{!1486, !239, i64 3076}
!2540 = !DILocation(line: 550, column: 27, scope: !2535)
!2541 = !DILocation(line: 550, column: 9, scope: !2535)
!2542 = !DILocation(line: 551, column: 5, scope: !2535)
!2543 = !DILocation(line: 551, column: 17, scope: !1907)
!2544 = !DILocation(line: 551, column: 53, scope: !1907)
!2545 = !DILocation(line: 551, column: 64, scope: !1907)
!2546 = !DILocation(line: 551, column: 16, scope: !1908)
!2547 = !DILocation(line: 552, column: 22, scope: !1906)
!2548 = !DILocation(line: 552, column: 13, scope: !1906)
!2549 = !DILocation(line: 554, column: 38, scope: !1906)
!2550 = !DILocation(line: 554, column: 35, scope: !1906)
!2551 = !DILocation(line: 554, column: 47, scope: !1906)
!2552 = !DILocation(line: 554, column: 18, scope: !1906)
!2553 = !DILocation(line: 555, column: 18, scope: !1906)
!2554 = !DILocation(line: 556, column: 18, scope: !1906)
!2555 = !DILocation(line: 557, column: 9, scope: !1906)
!2556 = !DILocation(line: 558, column: 5, scope: !1906)
!2557 = !DILocation(line: 558, column: 17, scope: !1912)
!2558 = !DILocation(line: 558, column: 58, scope: !1912)
!2559 = !DILocation(line: 558, column: 16, scope: !1907)
!2560 = !DILocation(line: 559, column: 21, scope: !1911)
!2561 = !DILocation(line: 559, column: 13, scope: !1911)
!2562 = !DILocation(line: 560, column: 17, scope: !1911)
!2563 = !DILocation(line: 561, column: 17, scope: !1911)
!2564 = !DILocation(line: 562, column: 17, scope: !1911)
!2565 = !DILocation(line: 563, column: 17, scope: !1911)
!2566 = !DILocation(line: 564, column: 17, scope: !1911)
!2567 = !DILocation(line: 565, column: 17, scope: !1911)
!2568 = !DILocation(line: 566, column: 17, scope: !1911)
!2569 = !DILocation(line: 567, column: 17, scope: !1911)
!2570 = !DILocation(line: 568, column: 9, scope: !1911)
!2571 = !DILocation(line: 569, column: 5, scope: !1911)
!2572 = !DILocation(line: 569, column: 17, scope: !1915)
!2573 = !DILocation(line: 569, column: 55, scope: !1915)
!2574 = !DILocation(line: 569, column: 66, scope: !1915)
!2575 = !DILocation(line: 569, column: 16, scope: !1912)
!2576 = !DILocation(line: 570, column: 9, scope: !1914)
!2577 = !DILocation(line: 571, column: 21, scope: !1914)
!2578 = !DILocation(line: 571, column: 13, scope: !1914)
!2579 = !DILocation(line: 572, column: 9, scope: !1914)
!2580 = !DILocation(line: 572, column: 14, scope: !1914)
!2581 = !DILocation(line: 574, column: 44, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 574, column: 13)
!2583 = !DILocation(line: 574, column: 41, scope: !2582)
!2584 = !DILocation(line: 570, column: 14, scope: !1914)
!2585 = !DILocation(line: 574, column: 13, scope: !2582)
!2586 = !DILocation(line: 574, column: 66, scope: !2582)
!2587 = !DILocation(line: 574, column: 13, scope: !1914)
!2588 = !DILocation(line: 576, column: 13, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !1914, file: !1, line: 576, column: 13)
!2590 = !DILocation(line: 576, column: 18, scope: !2589)
!2591 = !DILocation(line: 576, column: 22, scope: !2589)
!2592 = !DILocation(line: 576, column: 40, scope: !2589)
!2593 = !DILocation(line: 576, column: 33, scope: !2589)
!2594 = !DILocation(line: 576, column: 30, scope: !2589)
!2595 = !DILocation(line: 576, column: 13, scope: !1914)
!2596 = !DILocation(line: 577, column: 13, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2589, file: !1, line: 576, column: 47)
!2598 = !DILocation(line: 578, column: 13, scope: !2597)
!2599 = !DILocation(line: 581, column: 17, scope: !1914)
!2600 = !DILocation(line: 582, column: 45, scope: !1914)
!2601 = !DILocation(line: 582, column: 48, scope: !1914)
!2602 = !DILocation(line: 582, column: 54, scope: !1914)
!2603 = !DILocation(line: 582, column: 9, scope: !1914)
!2604 = !DILocation(line: 583, column: 17, scope: !1914)
!2605 = !DILocation(line: 585, column: 17, scope: !1914)
!2606 = !DILocation(line: 586, column: 45, scope: !1914)
!2607 = !DILocation(line: 586, column: 48, scope: !1914)
!2608 = !DILocation(line: 586, column: 54, scope: !1914)
!2609 = !{!1587, !240, i64 8}
!2610 = !DILocation(line: 586, column: 9, scope: !1914)
!2611 = !DILocation(line: 587, column: 17, scope: !1914)
!2612 = !DILocation(line: 589, column: 9, scope: !1914)
!2613 = !DILocation(line: 590, column: 5, scope: !1915)
!2614 = !DILocation(line: 0, scope: !2582)
!2615 = !DILocation(line: 590, column: 17, scope: !1923)
!2616 = !DILocation(line: 590, column: 59, scope: !1923)
!2617 = !DILocation(line: 590, column: 70, scope: !1923)
!2618 = !DILocation(line: 590, column: 16, scope: !1915)
!2619 = !DILocation(line: 592, column: 15, scope: !1922)
!2620 = !DILocation(line: 594, column: 47, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 594, column: 13)
!2622 = !DILocation(line: 594, column: 65, scope: !2621)
!2623 = !DILocation(line: 594, column: 18, scope: !2621)
!2624 = !DILocation(line: 591, column: 15, scope: !1922)
!2625 = !DILocation(line: 595, column: 17, scope: !2621)
!2626 = !DILocation(line: 594, column: 13, scope: !1922)
!2627 = !DILocation(line: 598, column: 20, scope: !1922)
!2628 = !DILocation(line: 598, column: 9, scope: !1922)
!2629 = !DILocation(line: 610, column: 13, scope: !1922)
!2630 = !DILocation(line: 601, column: 31, scope: !1926)
!2631 = !DILocation(line: 601, column: 23, scope: !1926)
!2632 = !DILocation(line: 602, column: 26, scope: !1926)
!2633 = !DILocation(line: 604, column: 13, scope: !1927)
!2634 = !DILocation(line: 606, column: 21, scope: !1927)
!2635 = !DILocation(line: 607, column: 13, scope: !1927)
!2636 = !DILocation(line: 0, scope: !1926)
!2637 = !DILocation(line: 0, scope: !1927)
!2638 = !DILocation(line: 610, column: 16, scope: !1930)
!2639 = !DILocation(line: 611, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 610, column: 25)
!2641 = !DILocation(line: 613, column: 9, scope: !2640)
!2642 = !DILocation(line: 614, column: 13, scope: !1929)
!2643 = !DILocation(line: 614, column: 18, scope: !1929)
!2644 = !DILocation(line: 615, column: 13, scope: !1929)
!2645 = !DILocation(line: 616, column: 13, scope: !1929)
!2646 = !DILocation(line: 617, column: 9, scope: !1930)
!2647 = !DILocation(line: 618, column: 5, scope: !1923)
!2648 = !DILocation(line: 0, scope: !2621)
!2649 = !DILocation(line: 618, column: 17, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 618, column: 16)
!2651 = !DILocation(line: 618, column: 62, scope: !2650)
!2652 = !DILocation(line: 618, column: 16, scope: !1923)
!2653 = !DILocation(line: 619, column: 9, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !1, line: 618, column: 79)
!2655 = !DILocation(line: 620, column: 9, scope: !2654)
!2656 = !DILocation(line: 621, column: 9, scope: !2654)
!2657 = !DILocation(line: 622, column: 27, scope: !2654)
!2658 = !DILocation(line: 622, column: 9, scope: !2654)
!2659 = !DILocation(line: 623, column: 5, scope: !2654)
!2660 = !DILocation(line: 623, column: 17, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2650, file: !1, line: 623, column: 16)
!2662 = !DILocation(line: 623, column: 64, scope: !2661)
!2663 = !DILocation(line: 623, column: 16, scope: !2650)
!2664 = !DILocation(line: 625, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 624, column: 5)
!2666 = !DILocation(line: 626, column: 9, scope: !2665)
!2667 = !DILocation(line: 628, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 627, column: 12)
!2669 = !DILocation(line: 629, column: 9, scope: !2668)
!2670 = !DILocation(line: 631, column: 1, scope: !1684)
!2671 = distinct !DISubprogram(name: "_serverAssertWithInfo", scope: !1, file: !1, line: 702, type: !2672, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2678)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2674, !2676, !906, !906, !9}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!2678 = !{!2679, !2680, !2681, !2682, !2683}
!2679 = !DILocalVariable(name: "c", arg: 1, scope: !2671, file: !1, line: 702, type: !2674)
!2680 = !DILocalVariable(name: "o", arg: 2, scope: !2671, file: !1, line: 702, type: !2676)
!2681 = !DILocalVariable(name: "estr", arg: 3, scope: !2671, file: !1, line: 702, type: !906)
!2682 = !DILocalVariable(name: "file", arg: 4, scope: !2671, file: !1, line: 702, type: !906)
!2683 = !DILocalVariable(name: "line", arg: 5, scope: !2671, file: !1, line: 702, type: !9)
!2684 = !DILocation(line: 702, column: 42, scope: !2671)
!2685 = !DILocation(line: 702, column: 57, scope: !2671)
!2686 = !DILocation(line: 702, column: 72, scope: !2671)
!2687 = !DILocation(line: 702, column: 90, scope: !2671)
!2688 = !DILocation(line: 702, column: 100, scope: !2671)
!2689 = !DILocation(line: 703, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 703, column: 9)
!2691 = !DILocation(line: 703, column: 9, scope: !2671)
!2692 = !DILocation(line: 703, column: 12, scope: !2690)
!2693 = !DILocation(line: 704, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2671, file: !1, line: 704, column: 9)
!2695 = !DILocation(line: 704, column: 9, scope: !2671)
!2696 = !DILocalVariable(name: "o", arg: 1, scope: !2697, file: !1, line: 696, type: !2676)
!2697 = distinct !DISubprogram(name: "_serverAssertPrintObject", scope: !1, file: !1, line: 696, type: !2698, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !2676}
!2700 = !{!2696}
!2701 = !DILocation(line: 696, column: 43, scope: !2697, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 704, column: 12, scope: !2694)
!2703 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 697, column: 5, scope: !2697, inlinedAt: !2702)
!2705 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !2704)
!2706 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !2704)
!2707 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !2704)
!2708 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !2704)
!2709 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !2704)
!2710 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !2704)
!2711 = !DILocation(line: 698, column: 5, scope: !2697, inlinedAt: !2702)
!2712 = !DILocation(line: 699, column: 5, scope: !2697, inlinedAt: !2702)
!2713 = !DILocation(line: 700, column: 1, scope: !2697, inlinedAt: !2702)
!2714 = !DILocation(line: 704, column: 12, scope: !2694)
!2715 = !DILocation(line: 635, column: 32, scope: !1471, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 705, column: 5, scope: !2671)
!2717 = !DILocation(line: 635, column: 50, scope: !1471, inlinedAt: !2716)
!2718 = !DILocation(line: 635, column: 60, scope: !1471, inlinedAt: !2716)
!2719 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 636, column: 5, scope: !1471, inlinedAt: !2716)
!2721 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !2720)
!2722 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !2720)
!2723 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !2720)
!2724 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !2720)
!2725 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !2720)
!2726 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !2720)
!2727 = !DILocation(line: 637, column: 5, scope: !1471, inlinedAt: !2716)
!2728 = !DILocation(line: 638, column: 5, scope: !1471, inlinedAt: !2716)
!2729 = !DILocation(line: 645, column: 18, scope: !1471, inlinedAt: !2716)
!2730 = !DILocation(line: 646, column: 1, scope: !1471, inlinedAt: !2716)
!2731 = !DILocation(line: 706, column: 1, scope: !2671)
!2732 = !DILocation(line: 727, column: 16, scope: !1482)
!2733 = !DILocation(line: 727, column: 33, scope: !1482)
!2734 = !DILocation(line: 727, column: 9, scope: !1483)
!2735 = !DILocation(line: 728, column: 9, scope: !1493)
!2736 = !DILocation(line: 730, column: 33, scope: !1493)
!2737 = !DILocation(line: 731, column: 5, scope: !1493)
!2738 = !DILocation(line: 732, column: 1, scope: !1483)
!2739 = distinct !DISubprogram(name: "_serverAssertPrintClientInfo", scope: !1, file: !1, line: 648, type: !2740, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2674}
!2742 = !{!2743, !2744, !2745, !2749}
!2743 = !DILocalVariable(name: "c", arg: 1, scope: !2739, file: !1, line: 648, type: !2674)
!2744 = !DILocalVariable(name: "j", scope: !2739, file: !1, line: 649, type: !9)
!2745 = !DILocalVariable(name: "buf", scope: !2746, file: !1, line: 657, type: !425)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 656, column: 33)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 656, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2739, file: !1, line: 656, column: 5)
!2749 = !DILocalVariable(name: "arg", scope: !2746, file: !1, line: 658, type: !5)
!2750 = !DILocation(line: 648, column: 49, scope: !2739)
!2751 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 651, column: 5, scope: !2739)
!2753 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !2752)
!2754 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !2752)
!2755 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !2752)
!2756 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !2752)
!2757 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !2752)
!2758 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !2752)
!2759 = !DILocation(line: 652, column: 5, scope: !2739)
!2760 = !DILocation(line: 653, column: 51, scope: !2739)
!2761 = !{!1934, !239, i64 160}
!2762 = !DILocation(line: 653, column: 5, scope: !2739)
!2763 = !DILocation(line: 654, column: 48, scope: !2739)
!2764 = !{!1934, !239, i64 8}
!2765 = !DILocation(line: 654, column: 5, scope: !2739)
!2766 = !DILocation(line: 655, column: 50, scope: !2739)
!2767 = !DILocation(line: 655, column: 5, scope: !2739)
!2768 = !DILocation(line: 649, column: 9, scope: !2739)
!2769 = !DILocation(line: 656, column: 10, scope: !2748)
!2770 = !DILocation(line: 656, column: 22, scope: !2747)
!2771 = !DILocation(line: 656, column: 17, scope: !2747)
!2772 = !DILocation(line: 656, column: 5, scope: !2748)
!2773 = !DILocation(line: 657, column: 9, scope: !2746)
!2774 = !DILocation(line: 657, column: 14, scope: !2746)
!2775 = !DILocation(line: 660, column: 16, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 660, column: 13)
!2777 = !DILocation(line: 660, column: 13, scope: !2776)
!2778 = !DILocation(line: 660, column: 25, scope: !2776)
!2779 = !DILocation(line: 660, column: 30, scope: !2776)
!2780 = !DILocation(line: 660, column: 44, scope: !2776)
!2781 = !DILocation(line: 0, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 662, column: 16)
!2783 = !DILocation(line: 660, column: 47, scope: !2776)
!2784 = !DILocation(line: 660, column: 13, scope: !2746)
!2785 = !DILocation(line: 661, column: 39, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 660, column: 77)
!2787 = !DILocation(line: 658, column: 15, scope: !2746)
!2788 = !DILocation(line: 662, column: 9, scope: !2786)
!2789 = !DILocation(line: 663, column: 13, scope: !2782)
!2790 = !DILocation(line: 668, column: 24, scope: !2746)
!2791 = !DILocation(line: 668, column: 21, scope: !2746)
!2792 = !DILocation(line: 668, column: 33, scope: !2746)
!2793 = !DILocation(line: 667, column: 9, scope: !2746)
!2794 = !DILocation(line: 669, column: 5, scope: !2747)
!2795 = !DILocation(line: 656, column: 29, scope: !2747)
!2796 = !DILocation(line: 656, column: 5, scope: !2747)
!2797 = distinct !{!2797, !2772, !2798}
!2798 = !DILocation(line: 669, column: 5, scope: !2748)
!2799 = !DILocation(line: 670, column: 1, scope: !2739)
!2800 = distinct !DISubprogram(name: "serverLogObjectDebugInfo", scope: !1, file: !1, line: 672, type: !2698, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2801)
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "o", arg: 1, scope: !2800, file: !1, line: 672, type: !2676)
!2803 = !DILocalVariable(name: "repr", scope: !2804, file: !1, line: 679, type: !94)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !1, line: 678, column: 36)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !1, line: 678, column: 13)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 676, column: 55)
!2807 = distinct !DILexicalBlock(scope: !2800, file: !1, line: 676, column: 9)
!2808 = !DILocation(line: 672, column: 43, scope: !2800)
!2809 = !DILocation(line: 673, column: 48, scope: !2800)
!2810 = !DILocation(line: 673, column: 5, scope: !2800)
!2811 = !DILocation(line: 674, column: 52, scope: !2800)
!2812 = !DILocation(line: 674, column: 5, scope: !2800)
!2813 = !DILocation(line: 675, column: 52, scope: !2800)
!2814 = !DILocation(line: 675, column: 5, scope: !2800)
!2815 = !DILocation(line: 676, column: 12, scope: !2807)
!2816 = !DILocation(line: 676, column: 17, scope: !2807)
!2817 = !DILocation(line: 676, column: 31, scope: !2807)
!2818 = !DILocation(line: 676, column: 34, scope: !2807)
!2819 = !DILocation(line: 676, column: 9, scope: !2800)
!2820 = !DILocation(line: 683, column: 16, scope: !2807)
!2821 = !DILocation(line: 685, column: 16, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 683, column: 16)
!2823 = !DILocation(line: 687, column: 16, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 685, column: 16)
!2825 = !DILocation(line: 689, column: 16, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2824, file: !1, line: 687, column: 16)
!2827 = !DILocation(line: 677, column: 70, scope: !2806)
!2828 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 677, column: 60, scope: !2806)
!2830 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !2829)
!2831 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !2829)
!2832 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !2829)
!2833 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !2829)
!2834 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !2829)
!2835 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !2829)
!2836 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !2829)
!2837 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !2829)
!2838 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !2829)
!2839 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !2829)
!2840 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !2829)
!2841 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !2829)
!2842 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !2829)
!2843 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !2829)
!2844 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !2829)
!2845 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !2829)
!2846 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !2829)
!2847 = !DILocation(line: 0, scope: !256, inlinedAt: !2829)
!2848 = !DILocation(line: 0, scope: !2806)
!2849 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !2829)
!2850 = !DILocation(line: 677, column: 9, scope: !2806)
!2851 = !DILocation(line: 678, column: 23, scope: !2805)
!2852 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 678, column: 13, scope: !2805)
!2854 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !2853)
!2855 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !2853)
!2856 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !2853)
!2857 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !2853)
!2858 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !2853)
!2859 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !2853)
!2860 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !2853)
!2861 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !2853)
!2862 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !2853)
!2863 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !2853)
!2864 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !2853)
!2865 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !2853)
!2866 = !DILocation(line: 0, scope: !2805)
!2867 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !2853)
!2868 = !DILocation(line: 678, column: 13, scope: !2806)
!2869 = !DILocation(line: 0, scope: !256, inlinedAt: !2853)
!2870 = !DILocation(line: 678, column: 28, scope: !2805)
!2871 = !DILocation(line: 679, column: 35, scope: !2804)
!2872 = !DILocation(line: 679, column: 49, scope: !2804)
!2873 = !DILocation(line: 87, column: 39, scope: !242, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 679, column: 53, scope: !2804)
!2875 = !DILocation(line: 88, column: 27, scope: !242, inlinedAt: !2874)
!2876 = !DILocation(line: 88, column: 19, scope: !242, inlinedAt: !2874)
!2877 = !DILocation(line: 89, column: 5, scope: !242, inlinedAt: !2874)
!2878 = !DILocation(line: 91, column: 20, scope: !256, inlinedAt: !2874)
!2879 = !DILocation(line: 91, column: 13, scope: !256, inlinedAt: !2874)
!2880 = !DILocation(line: 93, column: 20, scope: !256, inlinedAt: !2874)
!2881 = !DILocation(line: 93, column: 34, scope: !256, inlinedAt: !2874)
!2882 = !DILocation(line: 93, column: 13, scope: !256, inlinedAt: !2874)
!2883 = !DILocation(line: 95, column: 20, scope: !256, inlinedAt: !2874)
!2884 = !DILocation(line: 95, column: 35, scope: !256, inlinedAt: !2874)
!2885 = !DILocation(line: 95, column: 13, scope: !256, inlinedAt: !2874)
!2886 = !DILocation(line: 97, column: 20, scope: !256, inlinedAt: !2874)
!2887 = !DILocation(line: 97, column: 35, scope: !256, inlinedAt: !2874)
!2888 = !DILocation(line: 97, column: 13, scope: !256, inlinedAt: !2874)
!2889 = !DILocation(line: 99, column: 20, scope: !256, inlinedAt: !2874)
!2890 = !DILocation(line: 99, column: 35, scope: !256, inlinedAt: !2874)
!2891 = !DILocation(line: 99, column: 13, scope: !256, inlinedAt: !2874)
!2892 = !DILocation(line: 0, scope: !256, inlinedAt: !2874)
!2893 = !DILocation(line: 0, scope: !2804)
!2894 = !DILocation(line: 102, column: 1, scope: !242, inlinedAt: !2874)
!2895 = !DILocation(line: 679, column: 24, scope: !2804)
!2896 = !DILocation(line: 679, column: 17, scope: !2804)
!2897 = !DILocation(line: 680, column: 13, scope: !2804)
!2898 = !DILocation(line: 681, column: 13, scope: !2804)
!2899 = !DILocation(line: 682, column: 9, scope: !2804)
!2900 = !DILocation(line: 683, column: 24, scope: !2822)
!2901 = !DILocation(line: 684, column: 55, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 683, column: 37)
!2903 = !DILocation(line: 684, column: 49, scope: !2902)
!2904 = !DILocation(line: 684, column: 9, scope: !2902)
!2905 = !DILocation(line: 685, column: 5, scope: !2902)
!2906 = !DILocation(line: 685, column: 24, scope: !2824)
!2907 = !DILocation(line: 686, column: 52, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2824, file: !1, line: 685, column: 36)
!2909 = !DILocation(line: 686, column: 46, scope: !2908)
!2910 = !DILocation(line: 686, column: 9, scope: !2908)
!2911 = !DILocation(line: 687, column: 5, scope: !2908)
!2912 = !DILocation(line: 687, column: 24, scope: !2826)
!2913 = !DILocation(line: 688, column: 53, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 687, column: 37)
!2915 = !DILocation(line: 688, column: 47, scope: !2914)
!2916 = !DILocation(line: 688, column: 9, scope: !2914)
!2917 = !DILocation(line: 689, column: 5, scope: !2914)
!2918 = !DILocation(line: 689, column: 24, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2826, file: !1, line: 689, column: 16)
!2920 = !DILocation(line: 690, column: 59, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !1, line: 689, column: 37)
!2922 = !DILocation(line: 690, column: 53, scope: !2921)
!2923 = !DILocation(line: 690, column: 9, scope: !2921)
!2924 = !DILocation(line: 691, column: 16, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 691, column: 13)
!2926 = !DILocation(line: 691, column: 25, scope: !2925)
!2927 = !DILocation(line: 691, column: 13, scope: !2921)
!2928 = !DILocation(line: 692, column: 79, scope: !2925)
!2929 = !DILocation(line: 692, column: 85, scope: !2925)
!2930 = !{!1183, !240, i64 8}
!2931 = !DILocation(line: 692, column: 90, scope: !2925)
!2932 = !{!2933, !239, i64 24}
!2933 = !{!"zskiplist", !240, i64 0, !240, i64 8, !273, i64 16, !239, i64 24}
!2934 = !DILocation(line: 692, column: 13, scope: !2925)
!2935 = !DILocation(line: 694, column: 1, scope: !2800)
!2936 = !DILocation(line: 696, column: 43, scope: !2697)
!2937 = !DILocation(line: 727, column: 16, scope: !1482, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 697, column: 5, scope: !2697)
!2939 = !DILocation(line: 727, column: 33, scope: !1482, inlinedAt: !2938)
!2940 = !DILocation(line: 727, column: 9, scope: !1483, inlinedAt: !2938)
!2941 = !DILocation(line: 728, column: 9, scope: !1493, inlinedAt: !2938)
!2942 = !DILocation(line: 730, column: 33, scope: !1493, inlinedAt: !2938)
!2943 = !DILocation(line: 731, column: 5, scope: !1493, inlinedAt: !2938)
!2944 = !DILocation(line: 732, column: 1, scope: !1483, inlinedAt: !2938)
!2945 = !DILocation(line: 698, column: 5, scope: !2697)
!2946 = !DILocation(line: 699, column: 5, scope: !2697)
!2947 = !DILocation(line: 700, column: 1, scope: !2697)
!2948 = distinct !DISubprogram(name: "serverLogHexDump", scope: !1, file: !1, line: 1352, type: !2949, isLocal: false, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !9, !5, !4, !158}
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2960, !2961, !2962}
!2952 = !DILocalVariable(name: "level", arg: 1, scope: !2948, file: !1, line: 1352, type: !9)
!2953 = !DILocalVariable(name: "descr", arg: 2, scope: !2948, file: !1, line: 1352, type: !5)
!2954 = !DILocalVariable(name: "value", arg: 3, scope: !2948, file: !1, line: 1352, type: !4)
!2955 = !DILocalVariable(name: "len", arg: 4, scope: !2948, file: !1, line: 1352, type: !158)
!2956 = !DILocalVariable(name: "buf", scope: !2948, file: !1, line: 1353, type: !2957)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 520, elements: !2958)
!2958 = !{!2959}
!2959 = !DISubrange(count: 65)
!2960 = !DILocalVariable(name: "b", scope: !2948, file: !1, line: 1353, type: !5)
!2961 = !DILocalVariable(name: "v", scope: !2948, file: !1, line: 1354, type: !157)
!2962 = !DILocalVariable(name: "charset", scope: !2948, file: !1, line: 1355, type: !2963)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 136, elements: !2964)
!2964 = !{!2965}
!2965 = !DISubrange(count: 17)
!2966 = !DILocation(line: 1352, column: 27, scope: !2948)
!2967 = !DILocation(line: 1352, column: 40, scope: !2948)
!2968 = !DILocation(line: 1352, column: 53, scope: !2948)
!2969 = !DILocation(line: 1352, column: 67, scope: !2948)
!2970 = !DILocation(line: 1353, column: 5, scope: !2948)
!2971 = !DILocation(line: 1353, column: 10, scope: !2948)
!2972 = !DILocation(line: 1354, column: 20, scope: !2948)
!2973 = !DILocation(line: 1355, column: 10, scope: !2948)
!2974 = !DILocation(line: 1357, column: 5, scope: !2948)
!2975 = !DILocation(line: 1353, column: 20, scope: !2948)
!2976 = !DILocation(line: 1359, column: 5, scope: !2948)
!2977 = !DILocation(line: 1371, column: 23, scope: !2948)
!2978 = !DILocation(line: 1360, column: 25, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2948, file: !1, line: 1359, column: 16)
!2980 = !DILocation(line: 1360, column: 28, scope: !2979)
!2981 = !DILocation(line: 1360, column: 16, scope: !2979)
!2982 = !DILocation(line: 1360, column: 14, scope: !2979)
!2983 = !DILocation(line: 1361, column: 25, scope: !2979)
!2984 = !DILocation(line: 1361, column: 28, scope: !2979)
!2985 = !DILocation(line: 1361, column: 16, scope: !2979)
!2986 = !DILocation(line: 1361, column: 9, scope: !2979)
!2987 = !DILocation(line: 1361, column: 14, scope: !2979)
!2988 = !DILocation(line: 1362, column: 9, scope: !2979)
!2989 = !DILocation(line: 1362, column: 14, scope: !2979)
!2990 = !DILocation(line: 1364, column: 12, scope: !2979)
!2991 = !DILocation(line: 1365, column: 10, scope: !2979)
!2992 = !DILocation(line: 1366, column: 14, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2979, file: !1, line: 1366, column: 13)
!2994 = !DILocation(line: 1366, column: 19, scope: !2993)
!2995 = !DILocation(line: 1366, column: 32, scope: !2993)
!2996 = !DILocation(line: 1366, column: 25, scope: !2993)
!2997 = !DILocation(line: 1367, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1366, column: 38)
!2999 = !DILocation(line: 1369, column: 9, scope: !2998)
!3000 = !DILocation(line: 0, scope: !2979)
!3001 = distinct !{!3001, !2976, !3002}
!3002 = !DILocation(line: 1370, column: 5, scope: !2948)
!3003 = !DILocation(line: 1371, column: 5, scope: !2948)
!3004 = !DILocation(line: 1372, column: 1, scope: !2948)
!3005 = distinct !DISubprogram(name: "watchdogSignalHandler", scope: !1, file: !1, line: 1377, type: !3006, isLocal: false, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3017)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !9, !3008, !4}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !3010, line: 72, baseType: !3011)
!3010 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3010, line: 68, size: 96, elements: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3011, file: !3010, line: 69, baseType: !9, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3011, file: !3010, line: 70, baseType: !9, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !3011, file: !3010, line: 71, baseType: !3016, size: 32, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !3010, line: 61, baseType: !9)
!3017 = !{!3018, !3019, !3020}
!3018 = !DILocalVariable(name: "sig", arg: 1, scope: !3005, file: !1, line: 1377, type: !9)
!3019 = !DILocalVariable(name: "info", arg: 2, scope: !3005, file: !1, line: 1377, type: !3008)
!3020 = !DILocalVariable(name: "secret", arg: 3, scope: !3005, file: !1, line: 1377, type: !4)
!3021 = !DILocation(line: 1377, column: 32, scope: !3005)
!3022 = !DILocation(line: 1377, column: 48, scope: !3005)
!3023 = !DILocation(line: 1377, column: 60, scope: !3005)
!3024 = !DILocation(line: 1386, column: 5, scope: !3005)
!3025 = !DILocation(line: 1390, column: 5, scope: !3005)
!3026 = !DILocation(line: 1392, column: 5, scope: !3005)
!3027 = !DILocation(line: 1393, column: 1, scope: !3005)
!3028 = distinct !DISubprogram(name: "watchdogScheduleSignal", scope: !1, file: !1, line: 1398, type: !110, isLocal: false, isDefinition: true, scopeLine: 1398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "period", arg: 1, scope: !3028, file: !1, line: 1398, type: !9)
!3031 = !DILocalVariable(name: "it", scope: !3028, file: !1, line: 1399, type: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerval", file: !3033, line: 25, size: 256, elements: !3034)
!3033 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/sys/time.h", directory: "/root/.unikraft/apps/redis/build")
!3034 = !{!3035, !3041}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !3032, file: !3033, line: 26, baseType: !3036, size: 128)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1732, line: 44, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3036, file: !1732, line: 45, baseType: !1731, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3036, file: !1732, line: 46, baseType: !3040, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1732, line: 39, baseType: !73)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !3032, file: !3033, line: 27, baseType: !3036, size: 128, offset: 128)
!3042 = !DILocation(line: 1398, column: 33, scope: !3028)
!3043 = !DILocation(line: 1399, column: 5, scope: !3028)
!3044 = !DILocation(line: 1402, column: 32, scope: !3028)
!3045 = !DILocation(line: 1402, column: 26, scope: !3028)
!3046 = !DILocation(line: 1402, column: 17, scope: !3028)
!3047 = !DILocation(line: 1402, column: 24, scope: !3028)
!3048 = !{!3049, !273, i64 16}
!3049 = !{!"itimerval", !3050, i64 0, !3050, i64 16}
!3050 = !{!"timeval", !273, i64 0, !273, i64 8}
!3051 = !DILocation(line: 1403, column: 34, scope: !3028)
!3052 = !DILocation(line: 1403, column: 40, scope: !3028)
!3053 = !DILocation(line: 1403, column: 27, scope: !3028)
!3054 = !DILocation(line: 1403, column: 17, scope: !3028)
!3055 = !DILocation(line: 1403, column: 25, scope: !3028)
!3056 = !{!3049, !273, i64 24}
!3057 = !DILocation(line: 1405, column: 27, scope: !3028)
!3058 = !DILocation(line: 1399, column: 22, scope: !3028)
!3059 = !DILocation(line: 1407, column: 5, scope: !3028)
!3060 = !DILocation(line: 1408, column: 1, scope: !3028)
!3061 = distinct !DISubprogram(name: "enableWatchdog", scope: !1, file: !1, line: 1411, type: !110, isLocal: false, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DILocalVariable(name: "period", arg: 1, scope: !3061, file: !1, line: 1411, type: !9)
!3064 = !DILocalVariable(name: "min_period", scope: !3061, file: !1, line: 1412, type: !9)
!3065 = !DILocalVariable(name: "act", scope: !3066, file: !1, line: 1415, type: !3068)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !1, line: 1414, column: 38)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !1, line: 1414, column: 9)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3010, line: 74, size: 256, elements: !3069)
!3069 = !{!3070, !3076, !3079, !3080}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3068, file: !3010, line: 78, baseType: !3071, size: 64)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3068, file: !3010, line: 75, size: 64, elements: !3072)
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3071, file: !3010, line: 76, baseType: !109, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3071, file: !3010, line: 77, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3068, file: !3010, line: 79, baseType: !3077, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3010, line: 64, baseType: !3078)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !3010, line: 63, baseType: !35)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3068, file: !3010, line: 80, baseType: !9, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3068, file: !3010, line: 81, baseType: !880, size: 64, offset: 192)
!3081 = !DILocation(line: 1411, column: 25, scope: !3061)
!3082 = !DILocation(line: 1414, column: 16, scope: !3067)
!3083 = !{!1486, !239, i64 3136}
!3084 = !DILocation(line: 1414, column: 32, scope: !3067)
!3085 = !DILocation(line: 1414, column: 9, scope: !3061)
!3086 = !DILocation(line: 1415, column: 9, scope: !3066)
!3087 = !DILocation(line: 1419, column: 26, scope: !3066)
!3088 = !DILocation(line: 1419, column: 9, scope: !3066)
!3089 = !DILocation(line: 1420, column: 13, scope: !3066)
!3090 = !DILocation(line: 1420, column: 22, scope: !3066)
!3091 = !{!3092, !239, i64 16}
!3092 = !{!"sigaction", !206, i64 0, !273, i64 8, !239, i64 16, !240, i64 24}
!3093 = !DILocation(line: 1421, column: 13, scope: !3066)
!3094 = !DILocation(line: 1421, column: 26, scope: !3066)
!3095 = !DILocation(line: 1415, column: 26, scope: !3066)
!3096 = !DILocation(line: 1422, column: 9, scope: !3066)
!3097 = !DILocation(line: 1423, column: 5, scope: !3067)
!3098 = !DILocation(line: 1423, column: 5, scope: !3066)
!3099 = !DILocation(line: 1427, column: 31, scope: !3061)
!3100 = !{!1486, !239, i64 40}
!3101 = !DILocation(line: 1427, column: 23, scope: !3061)
!3102 = !DILocation(line: 1427, column: 34, scope: !3061)
!3103 = !DILocation(line: 1412, column: 9, scope: !3061)
!3104 = !DILocation(line: 1428, column: 16, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3061, file: !1, line: 1428, column: 9)
!3106 = !DILocation(line: 1428, column: 9, scope: !3061)
!3107 = !DILocation(line: 1428, column: 30, scope: !3105)
!3108 = !DILocation(line: 1398, column: 33, scope: !3028, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 1429, column: 5, scope: !3061)
!3110 = !DILocation(line: 1399, column: 5, scope: !3028, inlinedAt: !3109)
!3111 = !DILocation(line: 1402, column: 32, scope: !3028, inlinedAt: !3109)
!3112 = !DILocation(line: 1402, column: 26, scope: !3028, inlinedAt: !3109)
!3113 = !DILocation(line: 1402, column: 17, scope: !3028, inlinedAt: !3109)
!3114 = !DILocation(line: 1402, column: 24, scope: !3028, inlinedAt: !3109)
!3115 = !DILocation(line: 1403, column: 34, scope: !3028, inlinedAt: !3109)
!3116 = !DILocation(line: 1403, column: 40, scope: !3028, inlinedAt: !3109)
!3117 = !DILocation(line: 1403, column: 27, scope: !3028, inlinedAt: !3109)
!3118 = !DILocation(line: 1403, column: 17, scope: !3028, inlinedAt: !3109)
!3119 = !DILocation(line: 1403, column: 25, scope: !3028, inlinedAt: !3109)
!3120 = !DILocation(line: 1405, column: 27, scope: !3028, inlinedAt: !3109)
!3121 = !DILocation(line: 1399, column: 22, scope: !3028, inlinedAt: !3109)
!3122 = !DILocation(line: 1407, column: 5, scope: !3028, inlinedAt: !3109)
!3123 = !DILocation(line: 1408, column: 1, scope: !3028, inlinedAt: !3109)
!3124 = !DILocation(line: 1430, column: 28, scope: !3061)
!3125 = !DILocation(line: 1431, column: 1, scope: !3061)
!3126 = distinct !DISubprogram(name: "disableWatchdog", scope: !1, file: !1, line: 1434, type: !881, isLocal: false, isDefinition: true, scopeLine: 1434, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3127)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "act", scope: !3126, file: !1, line: 1435, type: !3068)
!3129 = !DILocation(line: 1435, column: 5, scope: !3126)
!3130 = !DILocation(line: 1436, column: 16, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !1, line: 1436, column: 9)
!3132 = !DILocation(line: 1436, column: 32, scope: !3131)
!3133 = !DILocation(line: 1436, column: 9, scope: !3126)
!3134 = !DILocation(line: 1398, column: 33, scope: !3028, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 1437, column: 5, scope: !3126)
!3136 = !DILocation(line: 1399, column: 5, scope: !3028, inlinedAt: !3135)
!3137 = !DILocation(line: 1402, column: 17, scope: !3028, inlinedAt: !3135)
!3138 = !DILocation(line: 1402, column: 24, scope: !3028, inlinedAt: !3135)
!3139 = !DILocation(line: 1405, column: 27, scope: !3028, inlinedAt: !3135)
!3140 = !DILocation(line: 1399, column: 22, scope: !3028, inlinedAt: !3135)
!3141 = !DILocation(line: 1407, column: 5, scope: !3028, inlinedAt: !3135)
!3142 = !DILocation(line: 1408, column: 1, scope: !3028, inlinedAt: !3135)
!3143 = !DILocation(line: 1441, column: 22, scope: !3126)
!3144 = !DILocation(line: 1441, column: 5, scope: !3126)
!3145 = !DILocation(line: 1442, column: 9, scope: !3126)
!3146 = !DILocation(line: 1442, column: 18, scope: !3126)
!3147 = !DILocation(line: 1443, column: 9, scope: !3126)
!3148 = !DILocation(line: 1443, column: 20, scope: !3126)
!3149 = !DILocation(line: 1435, column: 22, scope: !3126)
!3150 = !DILocation(line: 1444, column: 5, scope: !3126)
!3151 = !DILocation(line: 1445, column: 28, scope: !3126)
!3152 = !DILocation(line: 1446, column: 1, scope: !3126)
!3153 = !DILocation(line: 0, scope: !3131)
