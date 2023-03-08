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
  tail call void @xorDigest(i8* %0, i8* %5, i64 %31) #8, !dbg !267
  tail call void @decrRefCount(%struct.redisObject* %3) #7, !dbg !268
  ret void, !dbg !269
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @mixDigest(i8*, i8*, i64) local_unnamed_addr #0 !dbg !270 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %5) #6, !dbg !280
  tail call void @xorDigest(i8* %0, i8* %1, i64 %2) #8, !dbg !282
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !284
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %0, i32 20) #7, !dbg !285
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %4) #7, !dbg !286
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %5) #6, !dbg !287
  ret void, !dbg !287
}

; Function Attrs: noredzone nounwind
define dso_local void @mixStringObjectDigest(i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !288 {
  %3 = alloca %struct.SHA1_CTX, align 4
  %4 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !294
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !295
  %6 = load i8*, i8** %5, align 8, !dbg !295, !tbaa !228
  %7 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !298
  %8 = load i8, i8* %7, align 1, !dbg !298, !tbaa !203
  %9 = trunc i8 %8 to i3, !dbg !300
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !300

; <label>:10:                                     ; preds = %2
  %11 = lshr i8 %8, 3, !dbg !301
  %12 = zext i8 %11 to i64, !dbg !301
  br label %31, !dbg !302

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !303
  %15 = load i8, i8* %14, align 1, !dbg !304, !tbaa !203
  %16 = zext i8 %15 to i64, !dbg !303
  br label %31, !dbg !305

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !306
  %19 = bitcast i8* %18 to i16*, !dbg !307
  %20 = load i16, i16* %19, align 1, !dbg !307, !tbaa !254
  %21 = zext i16 %20 to i64, !dbg !306
  br label %31, !dbg !308

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !309
  %24 = bitcast i8* %23 to i32*, !dbg !310
  %25 = load i32, i32* %24, align 1, !dbg !310, !tbaa !259
  %26 = zext i32 %25 to i64, !dbg !309
  br label %31, !dbg !311

; <label>:27:                                     ; preds = %2
  %28 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !312
  %29 = bitcast i8* %28 to i64*, !dbg !313
  %30 = load i64, i64* %29, align 1, !dbg !313, !tbaa !263
  br label %31, !dbg !314

; <label>:31:                                     ; preds = %2, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %2 ], !dbg !315
  %33 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !320
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %33) #6, !dbg !320
  tail call void @xorDigest(i8* %0, i8* %6, i64 %32) #7, !dbg !322
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #7, !dbg !324
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %0, i32 20) #7, !dbg !325
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %3) #7, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %33) #6, !dbg !327
  call void @decrRefCount(%struct.redisObject* %4) #7, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noredzone nounwind
define dso_local void @xorObjectDigest(%struct.redisDb*, %struct.redisObject*, i8*, %struct.redisObject*) local_unnamed_addr #0 !dbg !330 {
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
  %48 = bitcast i32* %30 to i8*, !dbg !978
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #6, !dbg !978
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 0, !dbg !979
  %50 = load i32, i32* %49, align 8, !dbg !979
  %51 = and i32 %50, 15, !dbg !979
  %52 = tail call i32 @lwip_htonl(i32 %51) #7, !dbg !979
  store i32 %52, i32* %30, align 4, !dbg !980, !tbaa !259
  %53 = bitcast %struct.SHA1_CTX* %29 to i8*, !dbg !985
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %53) #6, !dbg !985
  call void @xorDigest(i8* %2, i8* nonnull %48, i64 4) #7, !dbg !987
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %29) #7, !dbg !989
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %29, i8* %2, i32 20) #7, !dbg !990
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %29) #7, !dbg !991
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %53) #6, !dbg !992
  %54 = call i64 @getExpire(%struct.redisDb* %0, %struct.redisObject* %1) #7, !dbg !993
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %31, i64 0, i64 0, !dbg !995
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %55) #6, !dbg !995
  %56 = load i32, i32* %49, align 8, !dbg !997
  %57 = trunc i32 %56 to i4, !dbg !998
  switch i4 %57, label %611 [
    i4 0, label %58
    i4 1, label %59
    i4 2, label %69
    i4 3, label %104
    i4 4, label %408
    i4 6, label %529
    i4 5, label %594
  ], !dbg !998

; <label>:58:                                     ; preds = %4
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* nonnull %3) #8, !dbg !999
  br label %612, !dbg !1001

; <label>:59:                                     ; preds = %4
  %60 = call %struct.listTypeIterator* @listTypeInitIterator(%struct.redisObject* nonnull %3, i64 0, i8 zeroext 1) #7, !dbg !1002
  %61 = bitcast %struct.listTypeEntry* %32 to i8*, !dbg !1004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %61) #6, !dbg !1004
  %62 = call i32 @listTypeNext(%struct.listTypeIterator* %60, %struct.listTypeEntry* nonnull %32) #7, !dbg !1006
  %63 = icmp eq i32 %62, 0, !dbg !1007
  br i1 %63, label %68, label %64, !dbg !1007

; <label>:64:                                     ; preds = %59, %64
  %65 = call %struct.redisObject* @listTypeGet(%struct.listTypeEntry* nonnull %32) #7, !dbg !1008
  call void @mixStringObjectDigest(i8* %2, %struct.redisObject* %65) #8, !dbg !1010
  call void @decrRefCount(%struct.redisObject* %65) #7, !dbg !1011
  %66 = call i32 @listTypeNext(%struct.listTypeIterator* %60, %struct.listTypeEntry* nonnull %32) #7, !dbg !1006
  %67 = icmp eq i32 %66, 0, !dbg !1007
  br i1 %67, label %68, label %64, !dbg !1007, !llvm.loop !1012

; <label>:68:                                     ; preds = %64, %59
  call void @listTypeReleaseIterator(%struct.listTypeIterator* %60) #7, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %61) #6, !dbg !1015
  br label %612, !dbg !1016

; <label>:69:                                     ; preds = %4
  %70 = call %struct.setTypeIterator* @setTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1017
  %71 = call i8* @setTypeNextObject(%struct.setTypeIterator* %70) #7, !dbg !1019
  %72 = icmp eq i8* %71, null, !dbg !1021
  br i1 %72, label %103, label %73, !dbg !1022

; <label>:73:                                     ; preds = %69, %99
  %74 = phi i8* [ %101, %99 ], [ %71, %69 ]
  %75 = getelementptr inbounds i8, i8* %74, i64 -1, !dbg !1026
  %76 = load i8, i8* %75, align 1, !dbg !1026, !tbaa !203
  %77 = trunc i8 %76 to i3, !dbg !1028
  switch i3 %77, label %99 [
    i3 0, label %78
    i3 1, label %81
    i3 2, label %85
    i3 3, label %90
    i3 -4, label %95
  ], !dbg !1028

; <label>:78:                                     ; preds = %73
  %79 = lshr i8 %76, 3, !dbg !1029
  %80 = zext i8 %79 to i64, !dbg !1029
  br label %99, !dbg !1030

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds i8, i8* %74, i64 -3, !dbg !1031
  %83 = load i8, i8* %82, align 1, !dbg !1032, !tbaa !203
  %84 = zext i8 %83 to i64, !dbg !1031
  br label %99, !dbg !1033

; <label>:85:                                     ; preds = %73
  %86 = getelementptr inbounds i8, i8* %74, i64 -5, !dbg !1034
  %87 = bitcast i8* %86 to i16*, !dbg !1035
  %88 = load i16, i16* %87, align 1, !dbg !1035, !tbaa !254
  %89 = zext i16 %88 to i64, !dbg !1034
  br label %99, !dbg !1036

; <label>:90:                                     ; preds = %73
  %91 = getelementptr inbounds i8, i8* %74, i64 -9, !dbg !1037
  %92 = bitcast i8* %91 to i32*, !dbg !1038
  %93 = load i32, i32* %92, align 1, !dbg !1038, !tbaa !259
  %94 = zext i32 %93 to i64, !dbg !1037
  br label %99, !dbg !1039

; <label>:95:                                     ; preds = %73
  %96 = getelementptr inbounds i8, i8* %74, i64 -17, !dbg !1040
  %97 = bitcast i8* %96 to i64*, !dbg !1041
  %98 = load i64, i64* %97, align 1, !dbg !1041, !tbaa !263
  br label %99, !dbg !1042

; <label>:99:                                     ; preds = %73, %78, %81, %85, %90, %95
  %100 = phi i64 [ %98, %95 ], [ %94, %90 ], [ %89, %85 ], [ %84, %81 ], [ %80, %78 ], [ 0, %73 ], !dbg !1043
  call void @xorDigest(i8* %2, i8* nonnull %74, i64 %100) #8, !dbg !1044
  call void @sdsfree(i8* nonnull %74) #7, !dbg !1045
  %101 = call i8* @setTypeNextObject(%struct.setTypeIterator* %70) #7, !dbg !1019
  %102 = icmp eq i8* %101, null, !dbg !1021
  br i1 %102, label %103, label %73, !dbg !1022, !llvm.loop !1046

; <label>:103:                                    ; preds = %99, %69
  call void @setTypeReleaseIterator(%struct.setTypeIterator* %70) #7, !dbg !1048
  br label %612, !dbg !1049

; <label>:104:                                    ; preds = %4
  %105 = getelementptr inbounds [20 x i8], [20 x i8]* %33, i64 0, i64 0, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %105) #6, !dbg !1050
  %106 = lshr i32 %56, 4, !dbg !1052
  %107 = trunc i32 %106 to i4, !dbg !1053
  switch i4 %107, label %406 [
    i4 5, label %108
    i4 7, label %228
  ], !dbg !1053

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1054
  %110 = load i8*, i8** %109, align 8, !dbg !1054, !tbaa !228
  %111 = bitcast i8** %34 to i8*, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %111) #6, !dbg !1056
  %112 = bitcast i8** %35 to i8*, !dbg !1056
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #6, !dbg !1056
  %113 = bitcast i8** %36 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #6, !dbg !1057
  %114 = bitcast i32* %37 to i8*, !dbg !1058
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #6, !dbg !1058
  %115 = bitcast i64* %38 to i8*, !dbg !1059
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #6, !dbg !1059
  %116 = call i8* @ziplistIndex(i8* %110, i32 0) #7, !dbg !1060
  store i8* %116, i8** %34, align 8, !dbg !1062, !tbaa !1063
  %117 = icmp eq i8* %116, null, !dbg !1064
  br i1 %117, label %118, label %119, !dbg !1064

; <label>:118:                                    ; preds = %108
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 159) #8, !dbg !1064
  call void @_exit(i32 1) #9, !dbg !1064
  unreachable, !dbg !1064

; <label>:119:                                    ; preds = %108
  %120 = call i8* @ziplistNext(i8* %110, i8* nonnull %116) #7, !dbg !1065
  store i8* %120, i8** %35, align 8, !dbg !1067, !tbaa !1063
  %121 = icmp eq i8* %120, null, !dbg !1068
  br i1 %121, label %157, label %122, !dbg !1068

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
  br label %158, !dbg !1069

; <label>:157:                                    ; preds = %119
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 161) #8, !dbg !1068
  call void @_exit(i32 1) #9, !dbg !1068
  unreachable, !dbg !1068

; <label>:158:                                    ; preds = %122, %206
  %159 = phi i8* [ %116, %122 ], [ %225, %206 ]
  %160 = call i32 @ziplistGet(i8* nonnull %159, i8** nonnull %36, i32* nonnull %37, i64* nonnull %38) #7, !dbg !1073
  %161 = icmp eq i32 %160, 0, !dbg !1073
  br i1 %161, label %162, label %163, !dbg !1073

; <label>:162:                                    ; preds = %158
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 164) #8, !dbg !1073
  call void @_exit(i32 1) #9, !dbg !1073
  unreachable, !dbg !1073

; <label>:163:                                    ; preds = %158
  %164 = load i8*, i8** %35, align 8, !dbg !1074, !tbaa !1063
  %165 = call double @zzlGetScore(i8* %164) #7, !dbg !1075
  %166 = call i8* @memset(i8* nonnull %105, i32 0, i64 20) #7, !dbg !1077
  %167 = load i8*, i8** %36, align 8, !dbg !1078, !tbaa !1063
  %168 = icmp eq i8* %167, null, !dbg !1079
  br i1 %168, label %186, label %169, !dbg !1080

; <label>:169:                                    ; preds = %163
  %170 = load i32, i32* %37, align 4, !dbg !1081, !tbaa !259
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %141) #6, !dbg !1084
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %142) #6, !dbg !1088
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %143) #6, !dbg !1089
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %17) #7, !dbg !1092
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %17, i8* nonnull %167, i32 %170) #7, !dbg !1093
  call void @SHA1Final(i8* nonnull %143, %struct.SHA1_CTX* nonnull %17) #7, !dbg !1094
  %171 = load <16 x i8>, <16 x i8>* %154, align 16, !dbg !1096, !tbaa !203
  %172 = load <16 x i8>, <16 x i8>* %155, align 16, !dbg !1097, !tbaa !203
  %173 = xor <16 x i8> %172, %171, !dbg !1097
  store <16 x i8> %173, <16 x i8>* %156, align 16, !dbg !1097, !tbaa !203
  %174 = load i8, i8* %144, align 16, !dbg !1096, !tbaa !203
  %175 = load i8, i8* %127, align 16, !dbg !1097, !tbaa !203
  %176 = xor i8 %175, %174, !dbg !1097
  store i8 %176, i8* %127, align 16, !dbg !1097, !tbaa !203
  %177 = load i8, i8* %145, align 1, !dbg !1096, !tbaa !203
  %178 = load i8, i8* %129, align 1, !dbg !1097, !tbaa !203
  %179 = xor i8 %178, %177, !dbg !1097
  store i8 %179, i8* %129, align 1, !dbg !1097, !tbaa !203
  %180 = load i8, i8* %146, align 2, !dbg !1096, !tbaa !203
  %181 = load i8, i8* %131, align 2, !dbg !1097, !tbaa !203
  %182 = xor i8 %181, %180, !dbg !1097
  store i8 %182, i8* %131, align 2, !dbg !1097, !tbaa !203
  %183 = load i8, i8* %147, align 1, !dbg !1096, !tbaa !203
  %184 = load i8, i8* %133, align 1, !dbg !1097, !tbaa !203
  %185 = xor i8 %184, %183, !dbg !1097
  store i8 %185, i8* %133, align 1, !dbg !1097, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %143) #6, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %142) #6, !dbg !1098
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %28) #7, !dbg !1100
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %28, i8* nonnull %105, i32 20) #7, !dbg !1101
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %28) #7, !dbg !1102
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %141) #6, !dbg !1103
  br label %206, !dbg !1104

; <label>:186:                                    ; preds = %163
  %187 = load i64, i64* %38, align 8, !dbg !1105, !tbaa !1106
  %188 = call i32 @ll2string(i8* nonnull %55, i64 128, i64 %187) #7, !dbg !1108
  %189 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %123) #6, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %124) #6, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %125) #6, !dbg !1119
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %15) #7, !dbg !1122
  %190 = trunc i64 %189 to i32, !dbg !1123
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %15, i8* nonnull %55, i32 %190) #7, !dbg !1124
  call void @SHA1Final(i8* nonnull %125, %struct.SHA1_CTX* nonnull %15) #7, !dbg !1125
  %191 = load <16 x i8>, <16 x i8>* %148, align 16, !dbg !1127, !tbaa !203
  %192 = load <16 x i8>, <16 x i8>* %149, align 16, !dbg !1128, !tbaa !203
  %193 = xor <16 x i8> %192, %191, !dbg !1128
  store <16 x i8> %193, <16 x i8>* %150, align 16, !dbg !1128, !tbaa !203
  %194 = load i8, i8* %126, align 16, !dbg !1127, !tbaa !203
  %195 = load i8, i8* %127, align 16, !dbg !1128, !tbaa !203
  %196 = xor i8 %195, %194, !dbg !1128
  store i8 %196, i8* %127, align 16, !dbg !1128, !tbaa !203
  %197 = load i8, i8* %128, align 1, !dbg !1127, !tbaa !203
  %198 = load i8, i8* %129, align 1, !dbg !1128, !tbaa !203
  %199 = xor i8 %198, %197, !dbg !1128
  store i8 %199, i8* %129, align 1, !dbg !1128, !tbaa !203
  %200 = load i8, i8* %130, align 2, !dbg !1127, !tbaa !203
  %201 = load i8, i8* %131, align 2, !dbg !1128, !tbaa !203
  %202 = xor i8 %201, %200, !dbg !1128
  store i8 %202, i8* %131, align 2, !dbg !1128, !tbaa !203
  %203 = load i8, i8* %132, align 1, !dbg !1127, !tbaa !203
  %204 = load i8, i8* %133, align 1, !dbg !1128, !tbaa !203
  %205 = xor i8 %204, %203, !dbg !1128
  store i8 %205, i8* %133, align 1, !dbg !1128, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %125) #6, !dbg !1129
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %124) #6, !dbg !1129
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %27) #7, !dbg !1131
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %27, i8* nonnull %105, i32 20) #7, !dbg !1132
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %27) #7, !dbg !1133
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %123) #6, !dbg !1134
  br label %206

; <label>:206:                                    ; preds = %186, %169
  %207 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %55, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %165) #7, !dbg !1135
  %208 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %134) #6, !dbg !1140
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %135) #6, !dbg !1145
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %136) #6, !dbg !1146
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %13) #7, !dbg !1149
  %209 = trunc i64 %208 to i32, !dbg !1150
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %13, i8* nonnull %55, i32 %209) #7, !dbg !1151
  call void @SHA1Final(i8* nonnull %136, %struct.SHA1_CTX* nonnull %13) #7, !dbg !1152
  %210 = load <16 x i8>, <16 x i8>* %151, align 16, !dbg !1154, !tbaa !203
  %211 = load <16 x i8>, <16 x i8>* %152, align 16, !dbg !1155, !tbaa !203
  %212 = xor <16 x i8> %211, %210, !dbg !1155
  store <16 x i8> %212, <16 x i8>* %153, align 16, !dbg !1155, !tbaa !203
  %213 = load i8, i8* %137, align 16, !dbg !1154, !tbaa !203
  %214 = load i8, i8* %127, align 16, !dbg !1155, !tbaa !203
  %215 = xor i8 %214, %213, !dbg !1155
  store i8 %215, i8* %127, align 16, !dbg !1155, !tbaa !203
  %216 = load i8, i8* %138, align 1, !dbg !1154, !tbaa !203
  %217 = load i8, i8* %129, align 1, !dbg !1155, !tbaa !203
  %218 = xor i8 %217, %216, !dbg !1155
  store i8 %218, i8* %129, align 1, !dbg !1155, !tbaa !203
  %219 = load i8, i8* %139, align 2, !dbg !1154, !tbaa !203
  %220 = load i8, i8* %131, align 2, !dbg !1155, !tbaa !203
  %221 = xor i8 %220, %219, !dbg !1155
  store i8 %221, i8* %131, align 2, !dbg !1155, !tbaa !203
  %222 = load i8, i8* %140, align 1, !dbg !1154, !tbaa !203
  %223 = load i8, i8* %133, align 1, !dbg !1155, !tbaa !203
  %224 = xor i8 %223, %222, !dbg !1155
  store i8 %224, i8* %133, align 1, !dbg !1155, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %136) #6, !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %135) #6, !dbg !1156
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %26) #7, !dbg !1158
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %26, i8* nonnull %105, i32 20) #7, !dbg !1159
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %26) #7, !dbg !1160
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %134) #6, !dbg !1161
  call void @xorDigest(i8* %2, i8* nonnull %105, i64 20) #8, !dbg !1162
  call void @zzlNext(i8* %110, i8** nonnull %34, i8** nonnull %35) #7, !dbg !1163
  %225 = load i8*, i8** %34, align 8, !dbg !1164, !tbaa !1063
  %226 = icmp eq i8* %225, null, !dbg !1165
  br i1 %226, label %227, label %158, !dbg !1069, !llvm.loop !1166

; <label>:227:                                    ; preds = %206
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #6, !dbg !1168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #6, !dbg !1168
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #6, !dbg !1168
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #6, !dbg !1168
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %111) #6, !dbg !1168
  br label %407, !dbg !1169

; <label>:228:                                    ; preds = %104
  %229 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1170
  %230 = bitcast i8** %229 to %struct.zset**, !dbg !1170
  %231 = load %struct.zset*, %struct.zset** %230, align 8, !dbg !1170, !tbaa !228
  %232 = getelementptr inbounds %struct.zset, %struct.zset* %231, i64 0, i32 0, !dbg !1172
  %233 = load %struct.dict*, %struct.dict** %232, align 8, !dbg !1172, !tbaa !1173
  %234 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %233) #7, !dbg !1175
  %235 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %234) #7, !dbg !1177
  %236 = icmp eq %struct.dictEntry* %235, null, !dbg !1179
  br i1 %236, label %405, label %237, !dbg !1180

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
  br label %289, !dbg !1180

; <label>:289:                                    ; preds = %237, %323
  %290 = phi %struct.dictEntry* [ %235, %237 ], [ %403, %323 ]
  %291 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %290, i64 0, i32 0, !dbg !1181
  %292 = load i8*, i8** %291, align 8, !dbg !1181, !tbaa !1182
  %293 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %290, i64 0, i32 1, i32 0, !dbg !1185
  %294 = bitcast i8** %293 to double**, !dbg !1185
  %295 = load double*, double** %294, align 8, !dbg !1185, !tbaa !203
  %296 = load double, double* %295, align 8, !dbg !1187, !tbaa !1188
  %297 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %55, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %296) #7, !dbg !1190
  %298 = call i8* @memset(i8* nonnull %105, i32 0, i64 20) #7, !dbg !1191
  %299 = getelementptr inbounds i8, i8* %292, i64 -1, !dbg !1194
  %300 = load i8, i8* %299, align 1, !dbg !1194, !tbaa !203
  %301 = trunc i8 %300 to i3, !dbg !1196
  switch i3 %301, label %323 [
    i3 0, label %302
    i3 1, label %305
    i3 2, label %309
    i3 3, label %314
    i3 -4, label %319
  ], !dbg !1196

; <label>:302:                                    ; preds = %289
  %303 = lshr i8 %300, 3, !dbg !1197
  %304 = zext i8 %303 to i64, !dbg !1197
  br label %323, !dbg !1198

; <label>:305:                                    ; preds = %289
  %306 = getelementptr inbounds i8, i8* %292, i64 -3, !dbg !1199
  %307 = load i8, i8* %306, align 1, !dbg !1200, !tbaa !203
  %308 = zext i8 %307 to i64, !dbg !1199
  br label %323, !dbg !1201

; <label>:309:                                    ; preds = %289
  %310 = getelementptr inbounds i8, i8* %292, i64 -5, !dbg !1202
  %311 = bitcast i8* %310 to i16*, !dbg !1203
  %312 = load i16, i16* %311, align 1, !dbg !1203, !tbaa !254
  %313 = zext i16 %312 to i64, !dbg !1202
  br label %323, !dbg !1204

; <label>:314:                                    ; preds = %289
  %315 = getelementptr inbounds i8, i8* %292, i64 -9, !dbg !1205
  %316 = bitcast i8* %315 to i32*, !dbg !1206
  %317 = load i32, i32* %316, align 1, !dbg !1206, !tbaa !259
  %318 = zext i32 %317 to i64, !dbg !1205
  br label %323, !dbg !1207

; <label>:319:                                    ; preds = %289
  %320 = getelementptr inbounds i8, i8* %292, i64 -17, !dbg !1208
  %321 = bitcast i8* %320 to i64*, !dbg !1209
  %322 = load i64, i64* %321, align 1, !dbg !1209, !tbaa !263
  br label %323, !dbg !1210

; <label>:323:                                    ; preds = %289, %302, %305, %309, %314, %319
  %324 = phi i64 [ %322, %319 ], [ %318, %314 ], [ %313, %309 ], [ %308, %305 ], [ %304, %302 ], [ 0, %289 ], !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %238) #6, !dbg !1215
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %239) #6, !dbg !1220
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %240) #6, !dbg !1221
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %11) #7, !dbg !1224
  %325 = trunc i64 %324 to i32, !dbg !1225
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %11, i8* %292, i32 %325) #7, !dbg !1226
  call void @SHA1Final(i8* nonnull %240, %struct.SHA1_CTX* nonnull %11) #7, !dbg !1227
  %326 = load <16 x i8>, <16 x i8>* %286, align 16, !dbg !1229, !tbaa !203
  %327 = load <16 x i8>, <16 x i8>* %287, align 16, !dbg !1230, !tbaa !203
  %328 = xor <16 x i8> %327, %326, !dbg !1230
  store <16 x i8> %328, <16 x i8>* %288, align 16, !dbg !1230, !tbaa !203
  %329 = load i8, i8* %256, align 16, !dbg !1229, !tbaa !203
  %330 = load i8, i8* %257, align 16, !dbg !1230, !tbaa !203
  %331 = xor i8 %330, %329, !dbg !1230
  store i8 %331, i8* %257, align 16, !dbg !1230, !tbaa !203
  %332 = load i8, i8* %258, align 1, !dbg !1229, !tbaa !203
  %333 = load i8, i8* %259, align 1, !dbg !1230, !tbaa !203
  %334 = xor i8 %333, %332, !dbg !1230
  store i8 %334, i8* %259, align 1, !dbg !1230, !tbaa !203
  %335 = load i8, i8* %260, align 2, !dbg !1229, !tbaa !203
  %336 = load i8, i8* %261, align 2, !dbg !1230, !tbaa !203
  %337 = xor i8 %336, %335, !dbg !1230
  store i8 %337, i8* %261, align 2, !dbg !1230, !tbaa !203
  %338 = load i8, i8* %262, align 1, !dbg !1229, !tbaa !203
  %339 = load i8, i8* %263, align 1, !dbg !1230, !tbaa !203
  %340 = xor i8 %339, %338, !dbg !1230
  store i8 %340, i8* %263, align 1, !dbg !1230, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %240) #6, !dbg !1231
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %239) #6, !dbg !1231
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %25) #7, !dbg !1233
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %25, i8* nonnull %105, i32 20) #7, !dbg !1234
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %25) #7, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %238) #6, !dbg !1236
  %341 = call i64 @strlen(i8* nonnull %55) #7, !dbg !1237
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %264) #6, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %265) #6, !dbg !1246
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %266) #6, !dbg !1247
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %9) #7, !dbg !1250
  %342 = trunc i64 %341 to i32, !dbg !1251
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %9, i8* nonnull %55, i32 %342) #7, !dbg !1252
  call void @SHA1Final(i8* nonnull %266, %struct.SHA1_CTX* nonnull %9) #7, !dbg !1253
  %343 = load i8, i8* %266, align 16, !dbg !1255, !tbaa !203
  %344 = load i8, i8* %105, align 16, !dbg !1256, !tbaa !203
  %345 = xor i8 %344, %343, !dbg !1256
  store i8 %345, i8* %105, align 16, !dbg !1256, !tbaa !203
  %346 = load i8, i8* %267, align 1, !dbg !1255, !tbaa !203
  %347 = load i8, i8* %241, align 1, !dbg !1256, !tbaa !203
  %348 = xor i8 %347, %346, !dbg !1256
  store i8 %348, i8* %241, align 1, !dbg !1256, !tbaa !203
  %349 = load i8, i8* %268, align 2, !dbg !1255, !tbaa !203
  %350 = load i8, i8* %242, align 2, !dbg !1256, !tbaa !203
  %351 = xor i8 %350, %349, !dbg !1256
  store i8 %351, i8* %242, align 2, !dbg !1256, !tbaa !203
  %352 = load i8, i8* %269, align 1, !dbg !1255, !tbaa !203
  %353 = load i8, i8* %243, align 1, !dbg !1256, !tbaa !203
  %354 = xor i8 %353, %352, !dbg !1256
  store i8 %354, i8* %243, align 1, !dbg !1256, !tbaa !203
  %355 = load i8, i8* %270, align 4, !dbg !1255, !tbaa !203
  %356 = load i8, i8* %244, align 4, !dbg !1256, !tbaa !203
  %357 = xor i8 %356, %355, !dbg !1256
  store i8 %357, i8* %244, align 4, !dbg !1256, !tbaa !203
  %358 = load i8, i8* %271, align 1, !dbg !1255, !tbaa !203
  %359 = load i8, i8* %245, align 1, !dbg !1256, !tbaa !203
  %360 = xor i8 %359, %358, !dbg !1256
  store i8 %360, i8* %245, align 1, !dbg !1256, !tbaa !203
  %361 = load i8, i8* %272, align 2, !dbg !1255, !tbaa !203
  %362 = load i8, i8* %246, align 2, !dbg !1256, !tbaa !203
  %363 = xor i8 %362, %361, !dbg !1256
  store i8 %363, i8* %246, align 2, !dbg !1256, !tbaa !203
  %364 = load i8, i8* %273, align 1, !dbg !1255, !tbaa !203
  %365 = load i8, i8* %247, align 1, !dbg !1256, !tbaa !203
  %366 = xor i8 %365, %364, !dbg !1256
  store i8 %366, i8* %247, align 1, !dbg !1256, !tbaa !203
  %367 = load i8, i8* %274, align 8, !dbg !1255, !tbaa !203
  %368 = load i8, i8* %248, align 8, !dbg !1256, !tbaa !203
  %369 = xor i8 %368, %367, !dbg !1256
  store i8 %369, i8* %248, align 8, !dbg !1256, !tbaa !203
  %370 = load i8, i8* %275, align 1, !dbg !1255, !tbaa !203
  %371 = load i8, i8* %249, align 1, !dbg !1256, !tbaa !203
  %372 = xor i8 %371, %370, !dbg !1256
  store i8 %372, i8* %249, align 1, !dbg !1256, !tbaa !203
  %373 = load i8, i8* %276, align 2, !dbg !1255, !tbaa !203
  %374 = load i8, i8* %250, align 2, !dbg !1256, !tbaa !203
  %375 = xor i8 %374, %373, !dbg !1256
  store i8 %375, i8* %250, align 2, !dbg !1256, !tbaa !203
  %376 = load i8, i8* %277, align 1, !dbg !1255, !tbaa !203
  %377 = load i8, i8* %251, align 1, !dbg !1256, !tbaa !203
  %378 = xor i8 %377, %376, !dbg !1256
  store i8 %378, i8* %251, align 1, !dbg !1256, !tbaa !203
  %379 = load i8, i8* %278, align 4, !dbg !1255, !tbaa !203
  %380 = load i8, i8* %252, align 4, !dbg !1256, !tbaa !203
  %381 = xor i8 %380, %379, !dbg !1256
  store i8 %381, i8* %252, align 4, !dbg !1256, !tbaa !203
  %382 = load i8, i8* %279, align 1, !dbg !1255, !tbaa !203
  %383 = load i8, i8* %253, align 1, !dbg !1256, !tbaa !203
  %384 = xor i8 %383, %382, !dbg !1256
  store i8 %384, i8* %253, align 1, !dbg !1256, !tbaa !203
  %385 = load i8, i8* %280, align 2, !dbg !1255, !tbaa !203
  %386 = load i8, i8* %254, align 2, !dbg !1256, !tbaa !203
  %387 = xor i8 %386, %385, !dbg !1256
  store i8 %387, i8* %254, align 2, !dbg !1256, !tbaa !203
  %388 = load i8, i8* %281, align 1, !dbg !1255, !tbaa !203
  %389 = load i8, i8* %255, align 1, !dbg !1256, !tbaa !203
  %390 = xor i8 %389, %388, !dbg !1256
  store i8 %390, i8* %255, align 1, !dbg !1256, !tbaa !203
  %391 = load i8, i8* %282, align 16, !dbg !1255, !tbaa !203
  %392 = load i8, i8* %257, align 16, !dbg !1256, !tbaa !203
  %393 = xor i8 %392, %391, !dbg !1256
  store i8 %393, i8* %257, align 16, !dbg !1256, !tbaa !203
  %394 = load i8, i8* %283, align 1, !dbg !1255, !tbaa !203
  %395 = load i8, i8* %259, align 1, !dbg !1256, !tbaa !203
  %396 = xor i8 %395, %394, !dbg !1256
  store i8 %396, i8* %259, align 1, !dbg !1256, !tbaa !203
  %397 = load i8, i8* %284, align 2, !dbg !1255, !tbaa !203
  %398 = load i8, i8* %261, align 2, !dbg !1256, !tbaa !203
  %399 = xor i8 %398, %397, !dbg !1256
  store i8 %399, i8* %261, align 2, !dbg !1256, !tbaa !203
  %400 = load i8, i8* %285, align 1, !dbg !1255, !tbaa !203
  %401 = load i8, i8* %263, align 1, !dbg !1256, !tbaa !203
  %402 = xor i8 %401, %400, !dbg !1256
  store i8 %402, i8* %263, align 1, !dbg !1256, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %266) #6, !dbg !1257
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %265) #6, !dbg !1257
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %24) #7, !dbg !1259
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %24, i8* nonnull %105, i32 20) #7, !dbg !1260
  call void @SHA1Final(i8* nonnull %105, %struct.SHA1_CTX* nonnull %24) #7, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %264) #6, !dbg !1262
  call void @xorDigest(i8* %2, i8* nonnull %105, i64 20) #8, !dbg !1263
  %403 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %234) #7, !dbg !1177
  %404 = icmp eq %struct.dictEntry* %403, null, !dbg !1179
  br i1 %404, label %405, label %289, !dbg !1180, !llvm.loop !1264

; <label>:405:                                    ; preds = %323, %228
  call void @dictReleaseIterator(%struct.dictIterator* %234) #7, !dbg !1266
  br label %407

; <label>:406:                                    ; preds = %104
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1267
  call void @_exit(i32 1) #9, !dbg !1267
  unreachable, !dbg !1267

; <label>:407:                                    ; preds = %405, %227
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %105) #6, !dbg !1269
  br label %612, !dbg !1270

; <label>:408:                                    ; preds = %4
  %409 = call %struct.hashTypeIterator* @hashTypeInitIterator(%struct.redisObject* nonnull %3) #7, !dbg !1271
  %410 = call i32 @hashTypeNext(%struct.hashTypeIterator* %409) #7, !dbg !1273
  %411 = icmp eq i32 %410, -1, !dbg !1274
  br i1 %411, label %528, label %412, !dbg !1275

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
  br label %438, !dbg !1275

; <label>:438:                                    ; preds = %412, %508
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %413) #6, !dbg !1276
  %439 = call i8* @memset(i8* nonnull %413, i32 0, i64 20) #7, !dbg !1278
  %440 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %409, i32 1) #7, !dbg !1279
  %441 = getelementptr inbounds i8, i8* %440, i64 -1, !dbg !1283
  %442 = load i8, i8* %441, align 1, !dbg !1283, !tbaa !203
  %443 = trunc i8 %442 to i3, !dbg !1285
  switch i3 %443, label %465 [
    i3 0, label %444
    i3 1, label %447
    i3 2, label %451
    i3 3, label %456
    i3 -4, label %461
  ], !dbg !1285

; <label>:444:                                    ; preds = %438
  %445 = lshr i8 %442, 3, !dbg !1286
  %446 = zext i8 %445 to i64, !dbg !1286
  br label %465, !dbg !1287

; <label>:447:                                    ; preds = %438
  %448 = getelementptr inbounds i8, i8* %440, i64 -3, !dbg !1288
  %449 = load i8, i8* %448, align 1, !dbg !1289, !tbaa !203
  %450 = zext i8 %449 to i64, !dbg !1288
  br label %465, !dbg !1290

; <label>:451:                                    ; preds = %438
  %452 = getelementptr inbounds i8, i8* %440, i64 -5, !dbg !1291
  %453 = bitcast i8* %452 to i16*, !dbg !1292
  %454 = load i16, i16* %453, align 1, !dbg !1292, !tbaa !254
  %455 = zext i16 %454 to i64, !dbg !1291
  br label %465, !dbg !1293

; <label>:456:                                    ; preds = %438
  %457 = getelementptr inbounds i8, i8* %440, i64 -9, !dbg !1294
  %458 = bitcast i8* %457 to i32*, !dbg !1295
  %459 = load i32, i32* %458, align 1, !dbg !1295, !tbaa !259
  %460 = zext i32 %459 to i64, !dbg !1294
  br label %465, !dbg !1296

; <label>:461:                                    ; preds = %438
  %462 = getelementptr inbounds i8, i8* %440, i64 -17, !dbg !1297
  %463 = bitcast i8* %462 to i64*, !dbg !1298
  %464 = load i64, i64* %463, align 1, !dbg !1298, !tbaa !263
  br label %465, !dbg !1299

; <label>:465:                                    ; preds = %438, %444, %447, %451, %456, %461
  %466 = phi i64 [ %464, %461 ], [ %460, %456 ], [ %455, %451 ], [ %450, %447 ], [ %446, %444 ], [ 0, %438 ], !dbg !1300
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1304
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %415) #6, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %416) #6, !dbg !1310
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %7) #7, !dbg !1313
  %467 = trunc i64 %466 to i32, !dbg !1314
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %7, i8* %440, i32 %467) #7, !dbg !1315
  call void @SHA1Final(i8* nonnull %416, %struct.SHA1_CTX* nonnull %7) #7, !dbg !1316
  %468 = load <16 x i8>, <16 x i8>* %432, align 16, !dbg !1318, !tbaa !203
  %469 = load <16 x i8>, <16 x i8>* %433, align 16, !dbg !1319, !tbaa !203
  %470 = xor <16 x i8> %469, %468, !dbg !1319
  store <16 x i8> %470, <16 x i8>* %434, align 16, !dbg !1319, !tbaa !203
  %471 = load i8, i8* %417, align 16, !dbg !1318, !tbaa !203
  %472 = load i8, i8* %418, align 16, !dbg !1319, !tbaa !203
  %473 = xor i8 %472, %471, !dbg !1319
  store i8 %473, i8* %418, align 16, !dbg !1319, !tbaa !203
  %474 = load i8, i8* %419, align 1, !dbg !1318, !tbaa !203
  %475 = load i8, i8* %420, align 1, !dbg !1319, !tbaa !203
  %476 = xor i8 %475, %474, !dbg !1319
  store i8 %476, i8* %420, align 1, !dbg !1319, !tbaa !203
  %477 = load i8, i8* %421, align 2, !dbg !1318, !tbaa !203
  %478 = load i8, i8* %422, align 2, !dbg !1319, !tbaa !203
  %479 = xor i8 %478, %477, !dbg !1319
  store i8 %479, i8* %422, align 2, !dbg !1319, !tbaa !203
  %480 = load i8, i8* %423, align 1, !dbg !1318, !tbaa !203
  %481 = load i8, i8* %424, align 1, !dbg !1319, !tbaa !203
  %482 = xor i8 %481, %480, !dbg !1319
  store i8 %482, i8* %424, align 1, !dbg !1319, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %416) #6, !dbg !1320
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %415) #6, !dbg !1320
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %23) #7, !dbg !1322
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %23, i8* nonnull %413, i32 20) #7, !dbg !1323
  call void @SHA1Final(i8* nonnull %413, %struct.SHA1_CTX* nonnull %23) #7, !dbg !1324
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %414) #6, !dbg !1325
  call void @sdsfree(i8* %440) #7, !dbg !1326
  %483 = call i8* @hashTypeCurrentObjectNewSds(%struct.hashTypeIterator* %409, i32 2) #7, !dbg !1327
  %484 = getelementptr inbounds i8, i8* %483, i64 -1, !dbg !1330
  %485 = load i8, i8* %484, align 1, !dbg !1330, !tbaa !203
  %486 = trunc i8 %485 to i3, !dbg !1332
  switch i3 %486, label %508 [
    i3 0, label %487
    i3 1, label %490
    i3 2, label %494
    i3 3, label %499
    i3 -4, label %504
  ], !dbg !1332

; <label>:487:                                    ; preds = %465
  %488 = lshr i8 %485, 3, !dbg !1333
  %489 = zext i8 %488 to i64, !dbg !1333
  br label %508, !dbg !1334

; <label>:490:                                    ; preds = %465
  %491 = getelementptr inbounds i8, i8* %483, i64 -3, !dbg !1335
  %492 = load i8, i8* %491, align 1, !dbg !1336, !tbaa !203
  %493 = zext i8 %492 to i64, !dbg !1335
  br label %508, !dbg !1337

; <label>:494:                                    ; preds = %465
  %495 = getelementptr inbounds i8, i8* %483, i64 -5, !dbg !1338
  %496 = bitcast i8* %495 to i16*, !dbg !1339
  %497 = load i16, i16* %496, align 1, !dbg !1339, !tbaa !254
  %498 = zext i16 %497 to i64, !dbg !1338
  br label %508, !dbg !1340

; <label>:499:                                    ; preds = %465
  %500 = getelementptr inbounds i8, i8* %483, i64 -9, !dbg !1341
  %501 = bitcast i8* %500 to i32*, !dbg !1342
  %502 = load i32, i32* %501, align 1, !dbg !1342, !tbaa !259
  %503 = zext i32 %502 to i64, !dbg !1341
  br label %508, !dbg !1343

; <label>:504:                                    ; preds = %465
  %505 = getelementptr inbounds i8, i8* %483, i64 -17, !dbg !1344
  %506 = bitcast i8* %505 to i64*, !dbg !1345
  %507 = load i64, i64* %506, align 1, !dbg !1345, !tbaa !263
  br label %508, !dbg !1346

; <label>:508:                                    ; preds = %465, %487, %490, %494, %499, %504
  %509 = phi i64 [ %507, %504 ], [ %503, %499 ], [ %498, %494 ], [ %493, %490 ], [ %489, %487 ], [ 0, %465 ], !dbg !1347
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %425) #6, !dbg !1351
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %426) #6, !dbg !1356
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %427) #6, !dbg !1357
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #7, !dbg !1360
  %510 = trunc i64 %509 to i32, !dbg !1361
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* %483, i32 %510) #7, !dbg !1362
  call void @SHA1Final(i8* nonnull %427, %struct.SHA1_CTX* nonnull %5) #7, !dbg !1363
  %511 = load <16 x i8>, <16 x i8>* %435, align 16, !dbg !1365, !tbaa !203
  %512 = load <16 x i8>, <16 x i8>* %436, align 16, !dbg !1366, !tbaa !203
  %513 = xor <16 x i8> %512, %511, !dbg !1366
  store <16 x i8> %513, <16 x i8>* %437, align 16, !dbg !1366, !tbaa !203
  %514 = load i8, i8* %428, align 16, !dbg !1365, !tbaa !203
  %515 = load i8, i8* %418, align 16, !dbg !1366, !tbaa !203
  %516 = xor i8 %515, %514, !dbg !1366
  store i8 %516, i8* %418, align 16, !dbg !1366, !tbaa !203
  %517 = load i8, i8* %429, align 1, !dbg !1365, !tbaa !203
  %518 = load i8, i8* %420, align 1, !dbg !1366, !tbaa !203
  %519 = xor i8 %518, %517, !dbg !1366
  store i8 %519, i8* %420, align 1, !dbg !1366, !tbaa !203
  %520 = load i8, i8* %430, align 2, !dbg !1365, !tbaa !203
  %521 = load i8, i8* %422, align 2, !dbg !1366, !tbaa !203
  %522 = xor i8 %521, %520, !dbg !1366
  store i8 %522, i8* %422, align 2, !dbg !1366, !tbaa !203
  %523 = load i8, i8* %431, align 1, !dbg !1365, !tbaa !203
  %524 = load i8, i8* %424, align 1, !dbg !1366, !tbaa !203
  %525 = xor i8 %524, %523, !dbg !1366
  store i8 %525, i8* %424, align 1, !dbg !1366, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %427) #6, !dbg !1367
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %426) #6, !dbg !1367
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %22) #7, !dbg !1369
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %22, i8* nonnull %413, i32 20) #7, !dbg !1370
  call void @SHA1Final(i8* nonnull %413, %struct.SHA1_CTX* nonnull %22) #7, !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %425) #6, !dbg !1372
  call void @sdsfree(i8* %483) #7, !dbg !1373
  call void @xorDigest(i8* %2, i8* nonnull %413, i64 20) #8, !dbg !1374
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %413) #6, !dbg !1375
  %526 = call i32 @hashTypeNext(%struct.hashTypeIterator* %409) #7, !dbg !1273
  %527 = icmp eq i32 %526, -1, !dbg !1274
  br i1 %527, label %528, label %438, !dbg !1275, !llvm.loop !1376

; <label>:528:                                    ; preds = %508, %408
  call void @hashTypeReleaseIterator(%struct.hashTypeIterator* %409) #7, !dbg !1377
  br label %612, !dbg !1378

; <label>:529:                                    ; preds = %4
  %530 = bitcast %struct.streamIterator* %40 to i8*, !dbg !1379
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %530) #6, !dbg !1379
  %531 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1380
  %532 = bitcast i8** %531 to %struct.stream**, !dbg !1380
  %533 = load %struct.stream*, %struct.stream** %532, align 8, !dbg !1380, !tbaa !228
  call void @streamIteratorStart(%struct.streamIterator* nonnull %40, %struct.stream* %533, %struct.streamID* null, %struct.streamID* null, i32 0) #7, !dbg !1382
  %534 = bitcast %struct.streamID* %41 to i8*, !dbg !1383
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %534) #6, !dbg !1383
  %535 = bitcast i64* %42 to i8*, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %535) #6, !dbg !1384
  %536 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %40, %struct.streamID* nonnull %41, i64* nonnull %42) #7, !dbg !1387
  %537 = icmp eq i32 %536, 0, !dbg !1388
  br i1 %537, label %593, label %538, !dbg !1388

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
  br label %551, !dbg !1388

; <label>:548:                                    ; preds = %585, %580
  %549 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %40, %struct.streamID* nonnull %41, i64* nonnull %42) #7, !dbg !1387
  %550 = icmp eq i32 %549, 0, !dbg !1388
  br i1 %550, label %593, label %551, !dbg !1388

; <label>:551:                                    ; preds = %538, %548
  %552 = call i8* @sdsempty() #7, !dbg !1389
  %553 = load i64, i64* %539, align 8, !dbg !1390, !tbaa !1391
  %554 = load i64, i64* %540, align 8, !dbg !1393, !tbaa !1394
  %555 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %553, i64 %554) #7, !dbg !1395
  %556 = getelementptr inbounds i8, i8* %555, i64 -1, !dbg !1399
  %557 = load i8, i8* %556, align 1, !dbg !1399, !tbaa !203
  %558 = trunc i8 %557 to i3, !dbg !1401
  switch i3 %558, label %580 [
    i3 0, label %559
    i3 1, label %562
    i3 2, label %566
    i3 3, label %571
    i3 -4, label %576
  ], !dbg !1401

; <label>:559:                                    ; preds = %551
  %560 = lshr i8 %557, 3, !dbg !1402
  %561 = zext i8 %560 to i64, !dbg !1402
  br label %580, !dbg !1403

; <label>:562:                                    ; preds = %551
  %563 = getelementptr inbounds i8, i8* %555, i64 -3, !dbg !1404
  %564 = load i8, i8* %563, align 1, !dbg !1405, !tbaa !203
  %565 = zext i8 %564 to i64, !dbg !1404
  br label %580, !dbg !1406

; <label>:566:                                    ; preds = %551
  %567 = getelementptr inbounds i8, i8* %555, i64 -5, !dbg !1407
  %568 = bitcast i8* %567 to i16*, !dbg !1408
  %569 = load i16, i16* %568, align 1, !dbg !1408, !tbaa !254
  %570 = zext i16 %569 to i64, !dbg !1407
  br label %580, !dbg !1409

; <label>:571:                                    ; preds = %551
  %572 = getelementptr inbounds i8, i8* %555, i64 -9, !dbg !1410
  %573 = bitcast i8* %572 to i32*, !dbg !1411
  %574 = load i32, i32* %573, align 1, !dbg !1411, !tbaa !259
  %575 = zext i32 %574 to i64, !dbg !1410
  br label %580, !dbg !1412

; <label>:576:                                    ; preds = %551
  %577 = getelementptr inbounds i8, i8* %555, i64 -17, !dbg !1413
  %578 = bitcast i8* %577 to i64*, !dbg !1414
  %579 = load i64, i64* %578, align 1, !dbg !1414, !tbaa !263
  br label %580, !dbg !1415

; <label>:580:                                    ; preds = %551, %559, %562, %566, %571, %576
  %581 = phi i64 [ %579, %576 ], [ %575, %571 ], [ %570, %566 ], [ %565, %562 ], [ %561, %559 ], [ 0, %551 ], !dbg !1416
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %541) #6, !dbg !1421
  call void @xorDigest(i8* %2, i8* %555, i64 %581) #7, !dbg !1423
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %21) #7, !dbg !1425
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %21, i8* %2, i32 20) #7, !dbg !1426
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %21) #7, !dbg !1427
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %541) #6, !dbg !1428
  call void @sdsfree(i8* %555) #7, !dbg !1429
  %582 = load i64, i64* %42, align 8, !dbg !1430, !tbaa !263
  %583 = add nsw i64 %582, -1, !dbg !1430
  store i64 %583, i64* %42, align 8, !dbg !1430, !tbaa !263
  %584 = icmp eq i64 %582, 0, !dbg !1431
  br i1 %584, label %548, label %585, !dbg !1431, !llvm.loop !1432

; <label>:585:                                    ; preds = %580, %585
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %542) #6, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %543) #6, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %544) #6, !dbg !1435
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %545) #6, !dbg !1435
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %40, i8** nonnull %43, i8** nonnull %44, i64* nonnull %45, i64* nonnull %46) #7, !dbg !1440
  %586 = load i8*, i8** %43, align 8, !dbg !1441, !tbaa !1063
  %587 = load i64, i64* %45, align 8, !dbg !1442, !tbaa !263
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %546) #6, !dbg !1447
  call void @xorDigest(i8* %2, i8* %586, i64 %587) #7, !dbg !1449
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %20) #7, !dbg !1451
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %20, i8* %2, i32 20) #7, !dbg !1452
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %20) #7, !dbg !1453
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %546) #6, !dbg !1454
  %588 = load i8*, i8** %44, align 8, !dbg !1455, !tbaa !1063
  %589 = load i64, i64* %46, align 8, !dbg !1456, !tbaa !263
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %547) #6, !dbg !1461
  call void @xorDigest(i8* %2, i8* %588, i64 %589) #7, !dbg !1463
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %19) #7, !dbg !1465
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %19, i8* %2, i32 20) #7, !dbg !1466
  call void @SHA1Final(i8* %2, %struct.SHA1_CTX* nonnull %19) #7, !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %547) #6, !dbg !1468
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %545) #6, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %544) #6, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %543) #6, !dbg !1469
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %542) #6, !dbg !1469
  %590 = load i64, i64* %42, align 8, !dbg !1430, !tbaa !263
  %591 = add nsw i64 %590, -1, !dbg !1430
  store i64 %591, i64* %42, align 8, !dbg !1430, !tbaa !263
  %592 = icmp eq i64 %590, 0, !dbg !1431
  br i1 %592, label %548, label %585, !dbg !1431, !llvm.loop !1470

; <label>:593:                                    ; preds = %548, %529
  call void @streamIteratorStop(%struct.streamIterator* nonnull %40) #7, !dbg !1471
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %535) #6, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %534) #6, !dbg !1472
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %530) #6, !dbg !1472
  br label %612, !dbg !1473

; <label>:594:                                    ; preds = %4
  %595 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %47, i64 0, i32 0, i64 0, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %595) #6, !dbg !1474
  %596 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i64 0, i32 2, !dbg !1475
  %597 = bitcast i8** %596 to %struct.moduleValue**, !dbg !1475
  %598 = load %struct.moduleValue*, %struct.moduleValue** %597, align 8, !dbg !1475, !tbaa !228
  %599 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %598, i64 0, i32 0, !dbg !1477
  %600 = load %struct.RedisModuleType*, %struct.RedisModuleType** %599, align 8, !dbg !1477, !tbaa !1478
  %601 = call i8* @memset(i8* nonnull %595, i32 0, i64 20) #7, !dbg !1481
  %602 = getelementptr inbounds %struct.RedisModuleDigest, %struct.RedisModuleDigest* %47, i64 0, i32 1, i64 0, !dbg !1481
  %603 = call i8* @memset(i8* nonnull %602, i32 0, i64 20) #7, !dbg !1481
  %604 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %600, i64 0, i32 6, !dbg !1483
  %605 = load void (%struct.RedisModuleDigest*, i8*)*, void (%struct.RedisModuleDigest*, i8*)** %604, align 8, !dbg !1483, !tbaa !1485
  %606 = icmp eq void (%struct.RedisModuleDigest*, i8*)* %605, null, !dbg !1487
  br i1 %606, label %610, label %607, !dbg !1488

; <label>:607:                                    ; preds = %594
  %608 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %598, i64 0, i32 1, !dbg !1489
  %609 = load i8*, i8** %608, align 8, !dbg !1489, !tbaa !1491
  call void %605(%struct.RedisModuleDigest* nonnull %47, i8* %609) #7, !dbg !1493
  call void @xorDigest(i8* %2, i8* nonnull %602, i64 20) #8, !dbg !1494
  br label %610, !dbg !1495

; <label>:610:                                    ; preds = %594, %607
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %595) #6, !dbg !1496
  br label %612

; <label>:611:                                    ; preds = %4
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1497
  call void @_exit(i32 1) #9, !dbg !1497
  unreachable, !dbg !1497

; <label>:612:                                    ; preds = %68, %407, %593, %610, %528, %103, %58
  %613 = icmp eq i64 %54, -1, !dbg !1499
  br i1 %613, label %615, label %614, !dbg !1501

; <label>:614:                                    ; preds = %612
  call void @xorDigest(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 10) #8, !dbg !1502
  br label %615, !dbg !1502

; <label>:615:                                    ; preds = %612, %614
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #6, !dbg !1503
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #6, !dbg !1503
  ret void, !dbg !1503
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
define dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1504 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1514, !tbaa !1518
  %5 = icmp eq i32 %4, 0, !dbg !1523
  br i1 %5, label %6, label %7, !dbg !1524

; <label>:6:                                      ; preds = %3
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1525
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1527, !tbaa !1518
  br label %7, !dbg !1528

; <label>:7:                                      ; preds = %3, %6
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !1529
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %1, i32 %2, i8* %0) #7, !dbg !1530
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1531, !tbaa !203
  ret void, !dbg !1532
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
define dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #0 !dbg !1533 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [256 x i8], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !1559
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1559
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !1561
  call void @llvm.va_start(i8* nonnull %6), !dbg !1561
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1562
  %9 = call i32 @vsnprintf(i8* nonnull %8, i64 256, i8* %2, %struct.__va_list_tag* nonnull %7) #7, !dbg !1564
  call void @llvm.va_end(i8* nonnull %6), !dbg !1565
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1566, !tbaa !1518
  %11 = icmp eq i32 %10, 0, !dbg !1568
  br i1 %11, label %12, label %13, !dbg !1569

; <label>:12:                                     ; preds = %3
  call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !1570
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !1571, !tbaa !1518
  br label %13, !dbg !1572

; <label>:13:                                     ; preds = %3, %12
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1573
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.115, i64 0, i64 0)) #7, !dbg !1574
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* nonnull %8, i8* %0, i32 %1) #7, !dbg !1575
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #7, !dbg !1576
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1577, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #6, !dbg !1578
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #6, !dbg !1578
  ret void, !dbg !1578
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
define dso_local void @computeDatasetDigest(i8*) local_unnamed_addr #0 !dbg !1579 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca %struct.SHA1_CTX, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !1601
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #6, !dbg !1601
  %9 = bitcast i32* %7 to i8*, !dbg !1604
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !1604
  %10 = tail call i8* @memset(i8* %0, i32 0, i64 20) #7, !dbg !1605
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1607, !tbaa !1608
  %12 = icmp sgt i32 %11, 0, !dbg !1609
  br i1 %12, label %13, label %133, !dbg !1610

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
  br label %29, !dbg !1610

; <label>:29:                                     ; preds = %13, %128
  %30 = phi i32 [ %11, %13 ], [ %129, %128 ]
  %31 = phi i64 [ 0, %13 ], [ %130, %128 ]
  %32 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !1611, !tbaa !1612
  %33 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i64 %31, !dbg !1613
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %33, i64 0, i32 0, !dbg !1615
  %35 = load %struct.dict*, %struct.dict** %34, align 8, !dbg !1615, !tbaa !1617
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 0, i32 3, !dbg !1615
  %37 = load i64, i64* %36, align 8, !dbg !1615, !tbaa !1619
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 1, i32 3, !dbg !1615
  %39 = load i64, i64* %38, align 8, !dbg !1615, !tbaa !1619
  %40 = sub i64 0, %39, !dbg !1621
  %41 = icmp eq i64 %37, %40, !dbg !1621
  br i1 %41, label %128, label %42, !dbg !1622

; <label>:42:                                     ; preds = %29
  %43 = call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %35) #7, !dbg !1623
  %44 = trunc i64 %31 to i32, !dbg !1624
  %45 = call i32 @lwip_htonl(i32 %44) #7, !dbg !1624
  store i32 %45, i32* %7, align 4, !dbg !1626, !tbaa !259
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %14) #6, !dbg !1631
  call void @xorDigest(i8* %0, i8* nonnull %9, i64 4) #7, !dbg !1633
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %5) #7, !dbg !1635
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %5, i8* %0, i32 20) #7, !dbg !1636
  call void @SHA1Final(i8* %0, %struct.SHA1_CTX* nonnull %5) #7, !dbg !1637
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %14) #6, !dbg !1638
  %46 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %43) #7, !dbg !1639
  %47 = icmp eq %struct.dictEntry* %46, null, !dbg !1641
  br i1 %47, label %126, label %48, !dbg !1642

; <label>:48:                                     ; preds = %42, %103
  %49 = phi %struct.dictEntry* [ %124, %103 ], [ %46, %42 ]
  %50 = call i8* @memset(i8* nonnull %8, i32 0, i64 20) #7, !dbg !1643
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %49, i64 0, i32 0, !dbg !1644
  %52 = load i8*, i8** %51, align 8, !dbg !1644, !tbaa !1182
  %53 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !1648
  %54 = load i8, i8* %53, align 1, !dbg !1648, !tbaa !203
  %55 = trunc i8 %54 to i3, !dbg !1650
  switch i3 %55, label %77 [
    i3 0, label %56
    i3 1, label %59
    i3 2, label %63
    i3 3, label %68
    i3 -4, label %73
  ], !dbg !1650

; <label>:56:                                     ; preds = %48
  %57 = lshr i8 %54, 3, !dbg !1651
  %58 = zext i8 %57 to i64, !dbg !1651
  br label %77, !dbg !1652

; <label>:59:                                     ; preds = %48
  %60 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !1653
  %61 = load i8, i8* %60, align 1, !dbg !1654, !tbaa !203
  %62 = zext i8 %61 to i64, !dbg !1653
  br label %77, !dbg !1655

; <label>:63:                                     ; preds = %48
  %64 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !1656
  %65 = bitcast i8* %64 to i16*, !dbg !1657
  %66 = load i16, i16* %65, align 1, !dbg !1657, !tbaa !254
  %67 = zext i16 %66 to i64, !dbg !1656
  br label %77, !dbg !1658

; <label>:68:                                     ; preds = %48
  %69 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !1659
  %70 = bitcast i8* %69 to i32*, !dbg !1660
  %71 = load i32, i32* %70, align 1, !dbg !1660, !tbaa !259
  %72 = zext i32 %71 to i64, !dbg !1659
  br label %77, !dbg !1661

; <label>:73:                                     ; preds = %48
  %74 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !1662
  %75 = bitcast i8* %74 to i64*, !dbg !1663
  %76 = load i64, i64* %75, align 1, !dbg !1663, !tbaa !263
  br label %77, !dbg !1664

; <label>:77:                                     ; preds = %48, %56, %59, %63, %68, %73
  %78 = phi i64 [ %76, %73 ], [ %72, %68 ], [ %67, %63 ], [ %62, %59 ], [ %58, %56 ], [ 0, %48 ], !dbg !1665
  %79 = call %struct.redisObject* @createStringObject(i8* %52, i64 %78) #7, !dbg !1666
  %80 = load i8, i8* %53, align 1, !dbg !1670, !tbaa !203
  %81 = trunc i8 %80 to i3, !dbg !1672
  switch i3 %81, label %103 [
    i3 0, label %82
    i3 1, label %85
    i3 2, label %89
    i3 3, label %94
    i3 -4, label %99
  ], !dbg !1672

; <label>:82:                                     ; preds = %77
  %83 = lshr i8 %80, 3, !dbg !1673
  %84 = zext i8 %83 to i64, !dbg !1673
  br label %103, !dbg !1674

; <label>:85:                                     ; preds = %77
  %86 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !1675
  %87 = load i8, i8* %86, align 1, !dbg !1676, !tbaa !203
  %88 = zext i8 %87 to i64, !dbg !1675
  br label %103, !dbg !1677

; <label>:89:                                     ; preds = %77
  %90 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !1678
  %91 = bitcast i8* %90 to i16*, !dbg !1679
  %92 = load i16, i16* %91, align 1, !dbg !1679, !tbaa !254
  %93 = zext i16 %92 to i64, !dbg !1678
  br label %103, !dbg !1680

; <label>:94:                                     ; preds = %77
  %95 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !1681
  %96 = bitcast i8* %95 to i32*, !dbg !1682
  %97 = load i32, i32* %96, align 1, !dbg !1682, !tbaa !259
  %98 = zext i32 %97 to i64, !dbg !1681
  br label %103, !dbg !1683

; <label>:99:                                     ; preds = %77
  %100 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !1684
  %101 = bitcast i8* %100 to i64*, !dbg !1685
  %102 = load i64, i64* %101, align 1, !dbg !1685, !tbaa !263
  br label %103, !dbg !1686

; <label>:103:                                    ; preds = %77, %82, %85, %89, %94, %99
  %104 = phi i64 [ %102, %99 ], [ %98, %94 ], [ %93, %89 ], [ %88, %85 ], [ %84, %82 ], [ 0, %77 ], !dbg !1687
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %15) #6, !dbg !1691
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %16) #6, !dbg !1696
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %17) #6, !dbg !1697
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #7, !dbg !1700
  %105 = trunc i64 %104 to i32, !dbg !1701
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* nonnull %52, i32 %105) #7, !dbg !1702
  call void @SHA1Final(i8* nonnull %17, %struct.SHA1_CTX* nonnull %2) #7, !dbg !1703
  %106 = load <16 x i8>, <16 x i8>* %26, align 16, !dbg !1705, !tbaa !203
  %107 = load <16 x i8>, <16 x i8>* %27, align 16, !dbg !1706, !tbaa !203
  %108 = xor <16 x i8> %107, %106, !dbg !1706
  store <16 x i8> %108, <16 x i8>* %28, align 16, !dbg !1706, !tbaa !203
  %109 = load i8, i8* %18, align 16, !dbg !1705, !tbaa !203
  %110 = load i8, i8* %19, align 16, !dbg !1706, !tbaa !203
  %111 = xor i8 %110, %109, !dbg !1706
  store i8 %111, i8* %19, align 16, !dbg !1706, !tbaa !203
  %112 = load i8, i8* %20, align 1, !dbg !1705, !tbaa !203
  %113 = load i8, i8* %21, align 1, !dbg !1706, !tbaa !203
  %114 = xor i8 %113, %112, !dbg !1706
  store i8 %114, i8* %21, align 1, !dbg !1706, !tbaa !203
  %115 = load i8, i8* %22, align 2, !dbg !1705, !tbaa !203
  %116 = load i8, i8* %23, align 2, !dbg !1706, !tbaa !203
  %117 = xor i8 %116, %115, !dbg !1706
  store i8 %117, i8* %23, align 2, !dbg !1706, !tbaa !203
  %118 = load i8, i8* %24, align 1, !dbg !1705, !tbaa !203
  %119 = load i8, i8* %25, align 1, !dbg !1706, !tbaa !203
  %120 = xor i8 %119, %118, !dbg !1706
  store i8 %120, i8* %25, align 1, !dbg !1706, !tbaa !203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %17) #6, !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %16) #6, !dbg !1707
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #7, !dbg !1709
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* nonnull %8, i32 20) #7, !dbg !1710
  call void @SHA1Final(i8* nonnull %8, %struct.SHA1_CTX* nonnull %4) #7, !dbg !1711
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %15) #6, !dbg !1712
  %121 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %49, i64 0, i32 1, i32 0, !dbg !1713
  %122 = bitcast i8** %121 to %struct.redisObject**, !dbg !1713
  %123 = load %struct.redisObject*, %struct.redisObject** %122, align 8, !dbg !1713, !tbaa !203
  call void @xorObjectDigest(%struct.redisDb* %33, %struct.redisObject* %79, i8* nonnull %8, %struct.redisObject* %123) #8, !dbg !1715
  call void @xorDigest(i8* %0, i8* nonnull %8, i64 20) #8, !dbg !1716
  call void @decrRefCount(%struct.redisObject* %79) #7, !dbg !1717
  %124 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %43) #7, !dbg !1639
  %125 = icmp eq %struct.dictEntry* %124, null, !dbg !1641
  br i1 %125, label %126, label %48, !dbg !1642, !llvm.loop !1718

; <label>:126:                                    ; preds = %103, %42
  call void @dictReleaseIterator(%struct.dictIterator* %43) #7, !dbg !1720
  %127 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !1607, !tbaa !1608
  br label %128, !dbg !1721

; <label>:128:                                    ; preds = %29, %126
  %129 = phi i32 [ %30, %29 ], [ %127, %126 ], !dbg !1607
  %130 = add nuw nsw i64 %31, 1, !dbg !1722
  %131 = sext i32 %129 to i64, !dbg !1609
  %132 = icmp slt i64 %130, %131, !dbg !1609
  br i1 %132, label %29, label %133, !dbg !1610, !llvm.loop !1723

; <label>:133:                                    ; preds = %128, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !1725
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #6, !dbg !1725
  ret void, !dbg !1725
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @debugCommand(%struct.client*) local_unnamed_addr #0 !dbg !1726 {
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
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1974
  %16 = load i32, i32* %15, align 8, !dbg !1974, !tbaa !1975
  %17 = icmp eq i32 %16, 2, !dbg !1979
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %19 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !1980, !tbaa !1981
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 1
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !1980, !tbaa !1063
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8, !dbg !1980, !tbaa !228
  br i1 %17, label %24, label %30, !dbg !1982

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1983
  %26 = icmp eq i32 %25, 0, !dbg !1983
  br i1 %26, label %27, label %30, !dbg !1984

; <label>:27:                                     ; preds = %24
  %28 = bitcast [24 x i8*]* %2 to i8*, !dbg !1985
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %28) #6, !dbg !1985
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([24 x i8*]* @debugCommand.help to i8*), i64 192, i1 false), !dbg !1986
  %29 = getelementptr inbounds [24 x i8*], [24 x i8*]* %2, i64 0, i64 0, !dbg !1987
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %29) #7, !dbg !1988
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %28) #6, !dbg !1989
  br label %795, !dbg !1990

; <label>:30:                                     ; preds = %1, %24
  %31 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !1991
  %32 = icmp eq i32 %31, 0, !dbg !1991
  br i1 %32, label %33, label %34, !dbg !1992

; <label>:33:                                     ; preds = %30
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !1993, !tbaa !203
  br label %795, !dbg !1995

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1996
  %36 = icmp eq i32 %35, 0, !dbg !1996
  br i1 %36, label %37, label %39, !dbg !1997

; <label>:37:                                     ; preds = %34
  %38 = tail call i64 @time(i64* null) #7, !dbg !1998
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 332, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i64 %38) #8, !dbg !1998
  tail call void @_exit(i32 1) #9, !dbg !1998
  unreachable, !dbg !1998

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !2000
  %41 = icmp eq i32 %40, 0, !dbg !2000
  br i1 %41, label %45, label %42, !dbg !2001

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !2002
  %44 = icmp eq i32 %43, 0, !dbg !2002
  br i1 %44, label %45, label %69, !dbg !2003

; <label>:45:                                     ; preds = %42, %39
  %46 = bitcast i64* %3 to i8*, !dbg !2004
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #6, !dbg !2004
  store i64 0, i64* %3, align 8, !dbg !2005, !tbaa !1106
  %47 = icmp sgt i32 %16, 2, !dbg !2006
  br i1 %47, label %48, label %57, !dbg !2008

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2009
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !2009, !tbaa !1063
  %51 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, i64* nonnull %3, i8* null) #7, !dbg !2012
  %52 = icmp eq i32 %51, 0, !dbg !2013
  br i1 %52, label %53, label %68, !dbg !2014

; <label>:53:                                     ; preds = %48
  %54 = load i64, i64* %3, align 8, !dbg !2015, !tbaa !1106
  %55 = icmp slt i64 %54, 0, !dbg !2017
  br i1 %55, label %56, label %57, !dbg !2018

; <label>:56:                                     ; preds = %53
  store i64 0, i64* %3, align 8, !dbg !2019, !tbaa !1106
  br label %57, !dbg !2020

; <label>:57:                                     ; preds = %53, %56, %45
  %58 = phi i64 [ %54, %53 ], [ 0, %56 ], [ 0, %45 ], !dbg !2021
  %59 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2022, !tbaa !1981
  %60 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %59, i64 1, !dbg !2023
  %61 = load %struct.redisObject*, %struct.redisObject** %60, align 8, !dbg !2023, !tbaa !1063
  %62 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %61, i64 0, i32 2, !dbg !2024
  %63 = load i8*, i8** %62, align 8, !dbg !2024, !tbaa !228
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !2025
  %65 = icmp eq i32 %64, 0, !dbg !2026
  %66 = select i1 %65, i32 3, i32 0, !dbg !2026
  %67 = call i32 @restartServer(i32 %66, i64 %58) #7, !dbg !2028
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2029
  br label %68, !dbg !2030

; <label>:68:                                     ; preds = %48, %57
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #6, !dbg !2030
  ret void

; <label>:69:                                     ; preds = %42
  %70 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #10, !dbg !2031
  %71 = icmp eq i32 %70, 0, !dbg !2031
  br i1 %71, label %72, label %75, !dbg !2032

; <label>:72:                                     ; preds = %69
  %73 = tail call i8* @zmalloc(i64 -1) #7, !dbg !2033
  tail call void @zfree(i8* %73) #7, !dbg !2035
  %74 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2036, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %74) #7, !dbg !2039
  br label %795, !dbg !2040

; <label>:75:                                     ; preds = %69
  %76 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !2041
  %77 = icmp eq i32 %76, 0, !dbg !2041
  br i1 %77, label %78, label %80, !dbg !2042

; <label>:78:                                     ; preds = %75
  %79 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !2043, !tbaa !1063
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 352) #8, !dbg !2043
  tail call void @_exit(i32 1) #9, !dbg !2043
  unreachable, !dbg !2043

; <label>:80:                                     ; preds = %75
  %81 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !2045
  %82 = icmp eq i32 %81, 0, !dbg !2045
  %83 = icmp eq i32 %16, 3, !dbg !2046
  %84 = and i1 %83, %82, !dbg !2047
  br i1 %84, label %85, label %91, !dbg !2047

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2048
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !2048, !tbaa !1063
  %88 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 2, !dbg !2050
  %89 = load i8*, i8** %88, align 8, !dbg !2050, !tbaa !228
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* %89) #7, !dbg !2051
  %90 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2052, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %90) #7, !dbg !2053
  br label %795, !dbg !2054

; <label>:91:                                     ; preds = %80
  %92 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !2055
  %93 = icmp eq i32 %92, 0, !dbg !2055
  br i1 %93, label %94, label %111, !dbg !2056

; <label>:94:                                     ; preds = %91
  %95 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !2057
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2057
  %96 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #7, !dbg !2059
  %97 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2061, !tbaa !2063
  %98 = call i32 @rdbSave(i8* %97, %struct.rdbSaveInfo* %96) #7, !dbg !2064
  %99 = icmp eq i32 %98, 0, !dbg !2065
  br i1 %99, label %102, label %100, !dbg !2066

; <label>:100:                                    ; preds = %94
  %101 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2067, !tbaa !2069
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %101) #7, !dbg !2070
  br label %110, !dbg !2071

; <label>:102:                                    ; preds = %94
  %103 = call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2072
  call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2073
  %104 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2074, !tbaa !2063
  %105 = call i32 @rdbLoad(i8* %104, %struct.rdbSaveInfo* null) #7, !dbg !2075
  call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2077
  %106 = icmp eq i32 %105, 0, !dbg !2078
  br i1 %106, label %108, label %107, !dbg !2080

; <label>:107:                                    ; preds = %102
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !2081
  br label %110, !dbg !2083

; <label>:108:                                    ; preds = %102
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !2084
  %109 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2085, !tbaa !2037
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %109) #7, !dbg !2086
  br label %110, !dbg !2087

; <label>:110:                                    ; preds = %107, %108, %100
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %95) #6, !dbg !2087
  br label %795

; <label>:111:                                    ; preds = %91
  %112 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !2088
  %113 = icmp eq i32 %112, 0, !dbg !2088
  br i1 %113, label %114, label %127, !dbg !2089

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2090, !tbaa !2092
  %116 = icmp eq i32 %115, 0, !dbg !2093
  br i1 %116, label %118, label %117, !dbg !2094

; <label>:117:                                    ; preds = %114
  tail call void @flushAppendOnlyFile(i32 1) #7, !dbg !2095
  br label %118, !dbg !2095

; <label>:118:                                    ; preds = %114, %117
  %119 = tail call i64 @emptyDb(i32 -1, i32 0, void (i8*)* null) #7, !dbg !2096
  tail call void @protectClient(%struct.client* nonnull %0) #7, !dbg !2097
  %120 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 119), align 8, !dbg !2098, !tbaa !2099
  %121 = tail call i32 @loadAppendOnlyFile(i8* %120) #7, !dbg !2100
  tail call void @unprotectClient(%struct.client* nonnull %0) #7, !dbg !2102
  %122 = icmp eq i32 %121, 0, !dbg !2103
  br i1 %122, label %125, label %123, !dbg !2105

; <label>:123:                                    ; preds = %118
  %124 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 2), align 8, !dbg !2106, !tbaa !2069
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %124) #7, !dbg !2108
  br label %795, !dbg !2109

; <label>:125:                                    ; preds = %118
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2110, !tbaa !2111
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !2112
  %126 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2113, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %126) #7, !dbg !2114
  br label %795, !dbg !2115

; <label>:127:                                    ; preds = %111
  %128 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !2116
  %129 = icmp eq i32 %128, 0, !dbg !2116
  %130 = and i1 %83, %129, !dbg !2117
  br i1 %130, label %131, label %221, !dbg !2117

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2118
  %133 = load %struct.redisDb*, %struct.redisDb** %132, align 8, !dbg !2118, !tbaa !2120
  %134 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %133, i64 0, i32 0, !dbg !2121
  %135 = load %struct.dict*, %struct.dict** %134, align 8, !dbg !2121, !tbaa !1617
  %136 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2122
  %137 = load %struct.redisObject*, %struct.redisObject** %136, align 8, !dbg !2122, !tbaa !1063
  %138 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %137, i64 0, i32 2, !dbg !2123
  %139 = load i8*, i8** %138, align 8, !dbg !2123, !tbaa !228
  %140 = tail call %struct.dictEntry* @dictFind(%struct.dict* %135, i8* %139) #7, !dbg !2124
  %141 = icmp eq %struct.dictEntry* %140, null, !dbg !2126
  br i1 %141, label %142, label %144, !dbg !2127

; <label>:142:                                    ; preds = %131
  %143 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2128, !tbaa !2130
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %143) #7, !dbg !2131
  br label %795, !dbg !2132

; <label>:144:                                    ; preds = %131
  %145 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %140, i64 0, i32 1, i32 0, !dbg !2133
  %146 = load i8*, i8** %145, align 8, !dbg !2133, !tbaa !203
  %147 = bitcast i8* %146 to %struct.redisObject*, !dbg !2133
  %148 = bitcast i8* %146 to i32*, !dbg !2135
  %149 = load i32, i32* %148, align 8, !dbg !2135
  %150 = lshr i32 %149, 4, !dbg !2135
  %151 = and i32 %150, 15, !dbg !2135
  %152 = tail call i8* @strEncoding(i32 %151) #7, !dbg !2136
  %153 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 0, !dbg !2138
  call void @llvm.lifetime.start.p0i8(i64 138, i8* nonnull %153) #6, !dbg !2138
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %153, i8 0, i64 138, i1 false), !dbg !2139
  %154 = load i32, i32* %148, align 8, !dbg !2140
  %155 = and i32 %154, 240, !dbg !2140
  %156 = icmp eq i32 %155, 144, !dbg !2141
  br i1 %156, label %157, label %212, !dbg !2142

; <label>:157:                                    ; preds = %144
  %158 = getelementptr inbounds i8, i8* %146, i64 8, !dbg !2145
  %159 = bitcast i8* %158 to %struct.quicklist**, !dbg !2145
  %160 = load %struct.quicklist*, %struct.quicklist** %159, align 8, !dbg !2145, !tbaa !228
  %161 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 3, !dbg !2147
  %162 = load i64, i64* %161, align 8, !dbg !2147, !tbaa !2148
  %163 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %153, i64 138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i64 %162) #7, !dbg !2150
  %164 = sext i32 %163 to i64, !dbg !2152
  %165 = getelementptr inbounds [138 x i8], [138 x i8]* %5, i64 0, i64 %164, !dbg !2152
  %166 = sub nsw i32 138, %163, !dbg !2153
  %167 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 2, !dbg !2154
  %168 = load i64, i64* %167, align 8, !dbg !2154, !tbaa !2155
  %169 = uitofp i64 %168 to double, !dbg !2156
  %170 = load i64, i64* %161, align 8, !dbg !2157, !tbaa !2148
  %171 = uitofp i64 %170 to double, !dbg !2158
  %172 = fdiv double %169, %171, !dbg !2159
  %173 = sext i32 %166 to i64, !dbg !2161
  %174 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %165, i64 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), double %172) #7, !dbg !2162
  %175 = sext i32 %174 to i64, !dbg !2163
  %176 = getelementptr inbounds i8, i8* %165, i64 %175, !dbg !2163
  %177 = sub nsw i32 %166, %174, !dbg !2164
  %178 = sext i32 %177 to i64, !dbg !2165
  %179 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 4, !dbg !2166
  %180 = load i32, i32* %179, align 8, !dbg !2166
  %181 = shl i32 %180, 16, !dbg !2166
  %182 = ashr exact i32 %181, 16, !dbg !2166
  %183 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %176, i64 %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i32 %182) #7, !dbg !2167
  %184 = sext i32 %183 to i64, !dbg !2168
  %185 = getelementptr inbounds i8, i8* %176, i64 %184, !dbg !2168
  %186 = sub nsw i32 %177, %183, !dbg !2169
  %187 = load i32, i32* %179, align 8, !dbg !2170
  %188 = icmp ugt i32 %187, 65535, !dbg !2171
  %189 = zext i1 %188 to i32, !dbg !2171
  %190 = sext i32 %186 to i64, !dbg !2173
  %191 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %185, i64 %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0), i32 %189) #7, !dbg !2174
  %192 = sext i32 %191 to i64, !dbg !2175
  %193 = getelementptr inbounds i8, i8* %185, i64 %192, !dbg !2175
  %194 = sub nsw i32 %186, %191, !dbg !2176
  %195 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %160, i64 0, i32 0, !dbg !2178
  %196 = load %struct.quicklistNode*, %struct.quicklistNode** %195, align 8, !dbg !2180, !tbaa !1063
  %197 = icmp eq %struct.quicklistNode* %196, null, !dbg !2182
  br i1 %197, label %198, label %202, !dbg !2182

; <label>:198:                                    ; preds = %202, %157
  %199 = phi i64 [ 0, %157 ], [ %208, %202 ], !dbg !2183
  %200 = sext i32 %194 to i64, !dbg !2185
  %201 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %193, i64 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.54, i64 0, i64 0), i64 %199) #7, !dbg !2186
  br label %212, !dbg !2187

; <label>:202:                                    ; preds = %157, %202
  %203 = phi %struct.quicklistNode* [ %210, %202 ], [ %196, %157 ]
  %204 = phi i64 [ %208, %202 ], [ 0, %157 ]
  %205 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %203, i64 0, i32 3, !dbg !2188
  %206 = load i32, i32* %205, align 8, !dbg !2188, !tbaa !2189
  %207 = zext i32 %206 to i64, !dbg !2191
  %208 = add i64 %204, %207, !dbg !2192
  %209 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %203, i64 0, i32 1, !dbg !2193
  %210 = load %struct.quicklistNode*, %struct.quicklistNode** %209, align 8, !dbg !2180, !tbaa !1063
  %211 = icmp eq %struct.quicklistNode* %210, null, !dbg !2182
  br i1 %211, label %198, label %202, !dbg !2182, !llvm.loop !2194

; <label>:212:                                    ; preds = %198, %144
  %213 = getelementptr inbounds i8, i8* %146, i64 4, !dbg !2196
  %214 = bitcast i8* %213 to i32*, !dbg !2196
  %215 = load i32, i32* %214, align 4, !dbg !2196, !tbaa !2197
  %216 = call i64 @rdbSavedObjectLen(%struct.redisObject* %147) #7, !dbg !2198
  %217 = load i32, i32* %148, align 8, !dbg !2199
  %218 = lshr i32 %217, 8, !dbg !2199
  %219 = call i64 @estimateObjectIdleTime(%struct.redisObject* %147) #7, !dbg !2200
  %220 = udiv i64 %219, 1000, !dbg !2201
  call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* %0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.55, i64 0, i64 0), i8* %146, i32 %215, i8* %152, i64 %216, i32 %218, i64 %220, i8* nonnull %153) #7, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 138, i8* nonnull %153) #6, !dbg !2203
  br label %795, !dbg !2203

; <label>:221:                                    ; preds = %127
  %222 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #10, !dbg !2204
  %223 = icmp eq i32 %222, 0, !dbg !2204
  %224 = and i1 %83, %223, !dbg !2205
  br i1 %224, label %225, label %347, !dbg !2205

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2206
  %227 = load %struct.redisDb*, %struct.redisDb** %226, align 8, !dbg !2206, !tbaa !2120
  %228 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %227, i64 0, i32 0, !dbg !2208
  %229 = load %struct.dict*, %struct.dict** %228, align 8, !dbg !2208, !tbaa !1617
  %230 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2209
  %231 = load %struct.redisObject*, %struct.redisObject** %230, align 8, !dbg !2209, !tbaa !1063
  %232 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %231, i64 0, i32 2, !dbg !2210
  %233 = load i8*, i8** %232, align 8, !dbg !2210, !tbaa !228
  %234 = tail call %struct.dictEntry* @dictFind(%struct.dict* %229, i8* %233) #7, !dbg !2211
  %235 = icmp eq %struct.dictEntry* %234, null, !dbg !2213
  br i1 %235, label %236, label %238, !dbg !2214

; <label>:236:                                    ; preds = %225
  %237 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2215, !tbaa !2130
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %237) #7, !dbg !2217
  br label %795, !dbg !2218

; <label>:238:                                    ; preds = %225
  %239 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %234, i64 0, i32 1, i32 0, !dbg !2219
  %240 = bitcast i8** %239 to %struct.redisObject**, !dbg !2219
  %241 = load %struct.redisObject*, %struct.redisObject** %240, align 8, !dbg !2219, !tbaa !203
  %242 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %234, i64 0, i32 0, !dbg !2221
  %243 = load i8*, i8** %242, align 8, !dbg !2221, !tbaa !1182
  %244 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %241, i64 0, i32 0, !dbg !2223
  %245 = load i32, i32* %244, align 8, !dbg !2223
  %246 = and i32 %245, 15, !dbg !2223
  %247 = icmp eq i32 %246, 0, !dbg !2225
  br i1 %247, label %248, label %251, !dbg !2226

; <label>:248:                                    ; preds = %238
  %249 = lshr i32 %245, 4, !dbg !2227
  %250 = trunc i32 %249 to i4, !dbg !2227
  switch i4 %250, label %251 [
    i4 0, label %252
    i4 -8, label %252
  ], !dbg !2227

; <label>:251:                                    ; preds = %248, %238
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2228
  br label %795, !dbg !2230

; <label>:252:                                    ; preds = %248, %248
  %253 = getelementptr inbounds i8, i8* %243, i64 -1, !dbg !2234
  %254 = load i8, i8* %253, align 1, !dbg !2234, !tbaa !203
  %255 = trunc i8 %254 to i3, !dbg !2236
  switch i3 %255, label %295 [
    i3 0, label %256
    i3 1, label %259
    i3 2, label %267
    i3 3, label %277
    i3 -4, label %287
  ], !dbg !2236

; <label>:256:                                    ; preds = %252
  %257 = lshr i8 %254, 3, !dbg !2237
  %258 = zext i8 %257 to i64, !dbg !2237
  br label %295, !dbg !2254

; <label>:259:                                    ; preds = %252
  %260 = getelementptr inbounds i8, i8* %243, i64 -3, !dbg !2255
  %261 = load i8, i8* %260, align 1, !dbg !2256, !tbaa !203
  %262 = zext i8 %261 to i64, !dbg !2255
  %263 = getelementptr inbounds i8, i8* %243, i64 -2, !dbg !2258
  %264 = load i8, i8* %263, align 1, !dbg !2258, !tbaa !203
  %265 = zext i8 %264 to i64, !dbg !2259
  %266 = sub nsw i64 %265, %262, !dbg !2260
  br label %295

; <label>:267:                                    ; preds = %252
  %268 = getelementptr inbounds i8, i8* %243, i64 -5, !dbg !2261
  %269 = bitcast i8* %268 to i16*, !dbg !2262
  %270 = load i16, i16* %269, align 1, !dbg !2262, !tbaa !254
  %271 = zext i16 %270 to i64, !dbg !2261
  %272 = getelementptr inbounds i8, i8* %243, i64 -3, !dbg !2264
  %273 = bitcast i8* %272 to i16*, !dbg !2264
  %274 = load i16, i16* %273, align 1, !dbg !2264, !tbaa !254
  %275 = zext i16 %274 to i64, !dbg !2265
  %276 = sub nsw i64 %275, %271, !dbg !2266
  br label %295

; <label>:277:                                    ; preds = %252
  %278 = getelementptr inbounds i8, i8* %243, i64 -9, !dbg !2267
  %279 = bitcast i8* %278 to i32*, !dbg !2268
  %280 = load i32, i32* %279, align 1, !dbg !2268, !tbaa !259
  %281 = zext i32 %280 to i64, !dbg !2267
  %282 = getelementptr inbounds i8, i8* %243, i64 -5, !dbg !2270
  %283 = bitcast i8* %282 to i32*, !dbg !2270
  %284 = load i32, i32* %283, align 1, !dbg !2270, !tbaa !259
  %285 = sub i32 %284, %280, !dbg !2271
  %286 = zext i32 %285 to i64, !dbg !2272
  br label %295

; <label>:287:                                    ; preds = %252
  %288 = getelementptr inbounds i8, i8* %243, i64 -17, !dbg !2273
  %289 = bitcast i8* %288 to i64*, !dbg !2274
  %290 = load i64, i64* %289, align 1, !dbg !2274, !tbaa !263
  %291 = getelementptr inbounds i8, i8* %243, i64 -9, !dbg !2276
  %292 = bitcast i8* %291 to i64*, !dbg !2276
  %293 = load i64, i64* %292, align 1, !dbg !2276, !tbaa !263
  %294 = sub i64 %293, %290, !dbg !2277
  br label %295

; <label>:295:                                    ; preds = %252, %256, %259, %267, %277, %287
  %296 = phi i64 [ %290, %287 ], [ %281, %277 ], [ %271, %267 ], [ %262, %259 ], [ %258, %256 ], [ 0, %252 ]
  %297 = phi i64 [ %294, %287 ], [ %286, %277 ], [ %276, %267 ], [ %266, %259 ], [ 0, %256 ], [ 0, %252 ], !dbg !2278
  %298 = tail call i64 @sdsZmallocSize(i8* nonnull %243) #7, !dbg !2280
  %299 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %241, i64 0, i32 2, !dbg !2281
  %300 = load i8*, i8** %299, align 8, !dbg !2281, !tbaa !228
  %301 = getelementptr inbounds i8, i8* %300, i64 -1, !dbg !2284
  %302 = load i8, i8* %301, align 1, !dbg !2284, !tbaa !203
  %303 = trunc i8 %302 to i3, !dbg !2286
  switch i3 %303, label %343 [
    i3 0, label %304
    i3 1, label %307
    i3 2, label %315
    i3 3, label %325
    i3 -4, label %335
  ], !dbg !2286

; <label>:304:                                    ; preds = %295
  %305 = lshr i8 %302, 3, !dbg !2287
  %306 = zext i8 %305 to i64, !dbg !2287
  br label %343, !dbg !2291

; <label>:307:                                    ; preds = %295
  %308 = getelementptr inbounds i8, i8* %300, i64 -3, !dbg !2292
  %309 = load i8, i8* %308, align 1, !dbg !2293, !tbaa !203
  %310 = zext i8 %309 to i64, !dbg !2292
  %311 = getelementptr inbounds i8, i8* %300, i64 -2, !dbg !2295
  %312 = load i8, i8* %311, align 1, !dbg !2295, !tbaa !203
  %313 = zext i8 %312 to i64, !dbg !2296
  %314 = sub nsw i64 %313, %310, !dbg !2297
  br label %343

; <label>:315:                                    ; preds = %295
  %316 = getelementptr inbounds i8, i8* %300, i64 -5, !dbg !2298
  %317 = bitcast i8* %316 to i16*, !dbg !2299
  %318 = load i16, i16* %317, align 1, !dbg !2299, !tbaa !254
  %319 = zext i16 %318 to i64, !dbg !2298
  %320 = getelementptr inbounds i8, i8* %300, i64 -3, !dbg !2301
  %321 = bitcast i8* %320 to i16*, !dbg !2301
  %322 = load i16, i16* %321, align 1, !dbg !2301, !tbaa !254
  %323 = zext i16 %322 to i64, !dbg !2302
  %324 = sub nsw i64 %323, %319, !dbg !2303
  br label %343

; <label>:325:                                    ; preds = %295
  %326 = getelementptr inbounds i8, i8* %300, i64 -9, !dbg !2304
  %327 = bitcast i8* %326 to i32*, !dbg !2305
  %328 = load i32, i32* %327, align 1, !dbg !2305, !tbaa !259
  %329 = zext i32 %328 to i64, !dbg !2304
  %330 = getelementptr inbounds i8, i8* %300, i64 -5, !dbg !2307
  %331 = bitcast i8* %330 to i32*, !dbg !2307
  %332 = load i32, i32* %331, align 1, !dbg !2307, !tbaa !259
  %333 = sub i32 %332, %328, !dbg !2308
  %334 = zext i32 %333 to i64, !dbg !2309
  br label %343

; <label>:335:                                    ; preds = %295
  %336 = getelementptr inbounds i8, i8* %300, i64 -17, !dbg !2310
  %337 = bitcast i8* %336 to i64*, !dbg !2311
  %338 = load i64, i64* %337, align 1, !dbg !2311, !tbaa !263
  %339 = getelementptr inbounds i8, i8* %300, i64 -9, !dbg !2313
  %340 = bitcast i8* %339 to i64*, !dbg !2313
  %341 = load i64, i64* %340, align 1, !dbg !2313, !tbaa !263
  %342 = sub i64 %341, %338, !dbg !2314
  br label %343

; <label>:343:                                    ; preds = %295, %304, %307, %315, %325, %335
  %344 = phi i64 [ %338, %335 ], [ %329, %325 ], [ %319, %315 ], [ %310, %307 ], [ %306, %304 ], [ 0, %295 ]
  %345 = phi i64 [ %342, %335 ], [ %334, %325 ], [ %324, %315 ], [ %314, %307 ], [ 0, %304 ], [ 0, %295 ], !dbg !2315
  %346 = tail call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %241) #7, !dbg !2316
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.58, i64 0, i64 0), i64 %296, i64 %297, i64 %298, i64 %344, i64 %345, i64 %346) #7, !dbg !2317
  br label %795

; <label>:347:                                    ; preds = %221
  %348 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !2318
  %349 = icmp eq i32 %348, 0, !dbg !2318
  %350 = and i1 %83, %349, !dbg !2319
  br i1 %350, label %351, label %366, !dbg !2319

; <label>:351:                                    ; preds = %347
  %352 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2320
  %353 = load %struct.redisObject*, %struct.redisObject** %352, align 8, !dbg !2320, !tbaa !1063
  %354 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2322, !tbaa !2130
  %355 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %353, %struct.redisObject* %354) #7, !dbg !2323
  %356 = icmp eq %struct.redisObject* %355, null, !dbg !2325
  br i1 %356, label %795, label %357, !dbg !2326

; <label>:357:                                    ; preds = %351
  %358 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %355, i64 0, i32 0, !dbg !2327
  %359 = load i32, i32* %358, align 8, !dbg !2327
  %360 = and i32 %359, 240, !dbg !2327
  %361 = icmp eq i32 %360, 80, !dbg !2329
  br i1 %361, label %363, label %362, !dbg !2330

; <label>:362:                                    ; preds = %357
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !2331
  br label %795, !dbg !2333

; <label>:363:                                    ; preds = %357
  %364 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %355, i64 0, i32 2, !dbg !2334
  %365 = load i8*, i8** %364, align 8, !dbg !2334, !tbaa !228
  tail call void @ziplistRepr(i8* %365) #7, !dbg !2336
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !2337
  br label %795

; <label>:366:                                    ; preds = %347
  %367 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !2338
  %368 = icmp eq i32 %367, 0, !dbg !2338
  %369 = add i32 %16, -3, !dbg !2339
  %370 = icmp ult i32 %369, 3, !dbg !2339
  %371 = and i1 %370, %368, !dbg !2340
  br i1 %371, label %372, label %448, !dbg !2340

; <label>:372:                                    ; preds = %366
  %373 = bitcast i64* %6 to i8*, !dbg !2341
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %373) #6, !dbg !2341
  %374 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !2342
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %374) #6, !dbg !2342
  %375 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2344
  %376 = load %struct.redisObject*, %struct.redisObject** %375, align 8, !dbg !2344, !tbaa !1063
  %377 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %376, i64* nonnull %6, i8* null) #7, !dbg !2347
  %378 = icmp eq i32 %377, 0, !dbg !2348
  br i1 %378, label %379, label %447, !dbg !2349

; <label>:379:                                    ; preds = %372
  %380 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2350
  %381 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !2350, !tbaa !2120
  %382 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %381, i64 0, i32 0, !dbg !2351
  %383 = load %struct.dict*, %struct.dict** %382, align 8, !dbg !2351, !tbaa !1617
  %384 = load i64, i64* %6, align 8, !dbg !2352, !tbaa !263
  %385 = call i32 @dictExpand(%struct.dict* %383, i64 %384) #7, !dbg !2353
  %386 = load i64, i64* %6, align 8, !dbg !2355, !tbaa !263
  %387 = icmp sgt i64 %386, 0, !dbg !2356
  br i1 %387, label %388, label %445, !dbg !2357

; <label>:388:                                    ; preds = %379
  %389 = bitcast i64* %8 to i8*
  br label %390, !dbg !2357

; <label>:390:                                    ; preds = %388, %441
  %391 = phi i64 [ 0, %388 ], [ %442, %441 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %389) #6, !dbg !2358
  store i64 0, i64* %8, align 8, !dbg !2359, !tbaa !263
  %392 = load i32, i32* %15, align 8, !dbg !2360, !tbaa !1975
  %393 = icmp eq i32 %392, 3, !dbg !2361
  br i1 %393, label %400, label %394, !dbg !2362

; <label>:394:                                    ; preds = %390
  %395 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2363, !tbaa !1981
  %396 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %395, i64 3, !dbg !2364
  %397 = load %struct.redisObject*, %struct.redisObject** %396, align 8, !dbg !2364, !tbaa !1063
  %398 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %397, i64 0, i32 2, !dbg !2365
  %399 = load i8*, i8** %398, align 8, !dbg !2365, !tbaa !228
  br label %400, !dbg !2362

; <label>:400:                                    ; preds = %390, %394
  %401 = phi i8* [ %399, %394 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), %390 ], !dbg !2362
  %402 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %374, i64 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* %401, i64 %391) #7, !dbg !2366
  %403 = call i64 @strlen(i8* nonnull %374) #7, !dbg !2367
  %404 = call %struct.redisObject* @createStringObject(i8* nonnull %374, i64 %403) #7, !dbg !2368
  %405 = load i32, i32* %15, align 8, !dbg !2370, !tbaa !1975
  %406 = icmp eq i32 %405, 5, !dbg !2372
  br i1 %406, label %407, label %413, !dbg !2373

; <label>:407:                                    ; preds = %400
  %408 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2374, !tbaa !1981
  %409 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %408, i64 4, !dbg !2376
  %410 = load %struct.redisObject*, %struct.redisObject** %409, align 8, !dbg !2376, !tbaa !1063
  %411 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %410, i64* nonnull %8, i8* null) #7, !dbg !2377
  %412 = icmp eq i32 %411, 0, !dbg !2378
  br i1 %412, label %413, label %440, !dbg !2379

; <label>:413:                                    ; preds = %407, %400
  %414 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !2380, !tbaa !2120
  %415 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %414, %struct.redisObject* %404) #7, !dbg !2382
  %416 = icmp eq %struct.redisObject* %415, null, !dbg !2383
  br i1 %416, label %418, label %417, !dbg !2384

; <label>:417:                                    ; preds = %413
  call void @decrRefCount(%struct.redisObject* %404) #7, !dbg !2385
  br label %441, !dbg !2387

; <label>:418:                                    ; preds = %413
  %419 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %374, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i64 %391) #7, !dbg !2388
  %420 = load i64, i64* %8, align 8, !dbg !2389, !tbaa !263
  %421 = icmp eq i64 %420, 0, !dbg !2390
  %422 = call i64 @strlen(i8* nonnull %374) #7, !dbg !2391
  br i1 %421, label %423, label %425, !dbg !2392

; <label>:423:                                    ; preds = %418
  %424 = call %struct.redisObject* @createStringObject(i8* nonnull %374, i64 %422) #7, !dbg !2393
  br label %436, !dbg !2395

; <label>:425:                                    ; preds = %418
  %426 = load i64, i64* %8, align 8, !dbg !2396, !tbaa !263
  %427 = call %struct.redisObject* @createStringObject(i8* null, i64 %426) #7, !dbg !2397
  %428 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %427, i64 0, i32 2, !dbg !2398
  %429 = load i8*, i8** %428, align 8, !dbg !2398, !tbaa !228
  %430 = load i64, i64* %8, align 8, !dbg !2399, !tbaa !263
  %431 = shl i64 %422, 32, !dbg !2400
  %432 = ashr exact i64 %431, 32, !dbg !2400
  %433 = icmp sgt i64 %430, %432, !dbg !2401
  %434 = select i1 %433, i64 %432, i64 %430, !dbg !2399
  %435 = call i8* @memcpy(i8* %429, i8* nonnull %374, i64 %434) #7, !dbg !2402
  br label %436

; <label>:436:                                    ; preds = %425, %423
  %437 = phi %struct.redisObject* [ %424, %423 ], [ %427, %425 ], !dbg !2391
  %438 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !2403, !tbaa !2120
  call void @dbAdd(%struct.redisDb* %438, %struct.redisObject* %404, %struct.redisObject* %437) #7, !dbg !2404
  %439 = load %struct.redisDb*, %struct.redisDb** %380, align 8, !dbg !2405, !tbaa !2120
  call void @signalModifiedKey(%struct.redisDb* %439, %struct.redisObject* %404) #7, !dbg !2406
  call void @decrRefCount(%struct.redisObject* %404) #7, !dbg !2407
  br label %441, !dbg !2408

; <label>:440:                                    ; preds = %407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %389) #6, !dbg !2408
  br label %447

; <label>:441:                                    ; preds = %417, %436
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %389) #6, !dbg !2408
  %442 = add nuw nsw i64 %391, 1, !dbg !2409
  %443 = load i64, i64* %6, align 8, !dbg !2355, !tbaa !263
  %444 = icmp slt i64 %442, %443, !dbg !2356
  br i1 %444, label %390, label %445, !dbg !2357, !llvm.loop !2410

; <label>:445:                                    ; preds = %441, %379
  %446 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2412, !tbaa !2037
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %446) #7, !dbg !2413
  br label %447, !dbg !2414

; <label>:447:                                    ; preds = %440, %372, %445
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %374) #6, !dbg !2414
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %373) #6, !dbg !2414
  br label %795

; <label>:448:                                    ; preds = %366
  %449 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !2415
  %450 = icmp ne i32 %449, 0, !dbg !2415
  %451 = xor i1 %17, true, !dbg !2416
  %452 = or i1 %450, %451, !dbg !2416
  br i1 %452, label %535, label %453, !dbg !2416

; <label>:453:                                    ; preds = %448
  %454 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0, !dbg !2417
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %454) #6, !dbg !2417
  %455 = tail call i8* @sdsempty() #7, !dbg !2419
  call void @computeDatasetDigest(i8* nonnull %454) #8, !dbg !2421
  %456 = load i8, i8* %454, align 16, !dbg !2423, !tbaa !203
  %457 = zext i8 %456 to i32, !dbg !2423
  %458 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %455, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %457) #7, !dbg !2425
  %459 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 1, !dbg !2423
  %460 = load i8, i8* %459, align 1, !dbg !2423, !tbaa !203
  %461 = zext i8 %460 to i32, !dbg !2423
  %462 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %458, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %461) #7, !dbg !2425
  %463 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 2, !dbg !2423
  %464 = load i8, i8* %463, align 2, !dbg !2423, !tbaa !203
  %465 = zext i8 %464 to i32, !dbg !2423
  %466 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %465) #7, !dbg !2425
  %467 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 3, !dbg !2423
  %468 = load i8, i8* %467, align 1, !dbg !2423, !tbaa !203
  %469 = zext i8 %468 to i32, !dbg !2423
  %470 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %466, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %469) #7, !dbg !2425
  %471 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 4, !dbg !2423
  %472 = load i8, i8* %471, align 4, !dbg !2423, !tbaa !203
  %473 = zext i8 %472 to i32, !dbg !2423
  %474 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %470, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %473) #7, !dbg !2425
  %475 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 5, !dbg !2423
  %476 = load i8, i8* %475, align 1, !dbg !2423, !tbaa !203
  %477 = zext i8 %476 to i32, !dbg !2423
  %478 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %474, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %477) #7, !dbg !2425
  %479 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 6, !dbg !2423
  %480 = load i8, i8* %479, align 2, !dbg !2423, !tbaa !203
  %481 = zext i8 %480 to i32, !dbg !2423
  %482 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %478, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %481) #7, !dbg !2425
  %483 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 7, !dbg !2423
  %484 = load i8, i8* %483, align 1, !dbg !2423, !tbaa !203
  %485 = zext i8 %484 to i32, !dbg !2423
  %486 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %482, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %485) #7, !dbg !2425
  %487 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 8, !dbg !2423
  %488 = load i8, i8* %487, align 8, !dbg !2423, !tbaa !203
  %489 = zext i8 %488 to i32, !dbg !2423
  %490 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %486, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %489) #7, !dbg !2425
  %491 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 9, !dbg !2423
  %492 = load i8, i8* %491, align 1, !dbg !2423, !tbaa !203
  %493 = zext i8 %492 to i32, !dbg !2423
  %494 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %490, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %493) #7, !dbg !2425
  %495 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 10, !dbg !2423
  %496 = load i8, i8* %495, align 2, !dbg !2423, !tbaa !203
  %497 = zext i8 %496 to i32, !dbg !2423
  %498 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %494, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %497) #7, !dbg !2425
  %499 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 11, !dbg !2423
  %500 = load i8, i8* %499, align 1, !dbg !2423, !tbaa !203
  %501 = zext i8 %500 to i32, !dbg !2423
  %502 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %498, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %501) #7, !dbg !2425
  %503 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 12, !dbg !2423
  %504 = load i8, i8* %503, align 4, !dbg !2423, !tbaa !203
  %505 = zext i8 %504 to i32, !dbg !2423
  %506 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %502, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %505) #7, !dbg !2425
  %507 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 13, !dbg !2423
  %508 = load i8, i8* %507, align 1, !dbg !2423, !tbaa !203
  %509 = zext i8 %508 to i32, !dbg !2423
  %510 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %506, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %509) #7, !dbg !2425
  %511 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 14, !dbg !2423
  %512 = load i8, i8* %511, align 2, !dbg !2423, !tbaa !203
  %513 = zext i8 %512 to i32, !dbg !2423
  %514 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %510, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %513) #7, !dbg !2425
  %515 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 15, !dbg !2423
  %516 = load i8, i8* %515, align 1, !dbg !2423, !tbaa !203
  %517 = zext i8 %516 to i32, !dbg !2423
  %518 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %514, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %517) #7, !dbg !2425
  %519 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 16, !dbg !2423
  %520 = load i8, i8* %519, align 16, !dbg !2423, !tbaa !203
  %521 = zext i8 %520 to i32, !dbg !2423
  %522 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %518, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %521) #7, !dbg !2425
  %523 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 17, !dbg !2423
  %524 = load i8, i8* %523, align 1, !dbg !2423, !tbaa !203
  %525 = zext i8 %524 to i32, !dbg !2423
  %526 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %522, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %525) #7, !dbg !2425
  %527 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 18, !dbg !2423
  %528 = load i8, i8* %527, align 2, !dbg !2423, !tbaa !203
  %529 = zext i8 %528 to i32, !dbg !2423
  %530 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %526, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %529) #7, !dbg !2425
  %531 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 19, !dbg !2423
  %532 = load i8, i8* %531, align 1, !dbg !2423, !tbaa !203
  %533 = zext i8 %532 to i32, !dbg !2423
  %534 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %530, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %533) #7, !dbg !2425
  call void @addReplyStatus(%struct.client* nonnull %0, i8* %534) #7, !dbg !2426
  call void @sdsfree(i8* %534) #7, !dbg !2427
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %454) #6, !dbg !2428
  br label %795, !dbg !2429

; <label>:535:                                    ; preds = %448
  %536 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0)) #10, !dbg !2430
  %537 = icmp eq i32 %536, 0, !dbg !2430
  %538 = icmp sgt i32 %16, 1, !dbg !2431
  %539 = and i1 %538, %537, !dbg !2432
  br i1 %539, label %540, label %647, !dbg !2432

; <label>:540:                                    ; preds = %535
  %541 = add nsw i32 %16, -2, !dbg !2433
  %542 = sext i32 %541 to i64, !dbg !2434
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %542) #7, !dbg !2435
  %543 = load i32, i32* %15, align 8, !dbg !2437, !tbaa !1975
  %544 = icmp sgt i32 %543, 2, !dbg !2438
  br i1 %544, label %545, label %795, !dbg !2439

; <label>:545:                                    ; preds = %540
  %546 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %547 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %548 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 1
  %549 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 2
  %550 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 3
  %551 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 4
  %552 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 5
  %553 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 6
  %554 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 7
  %555 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 8
  %556 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 9
  %557 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 10
  %558 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 11
  %559 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 12
  %560 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 13
  %561 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 14
  %562 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 15
  %563 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 16
  %564 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 17
  %565 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 18
  %566 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 19
  br label %567, !dbg !2439

; <label>:567:                                    ; preds = %545, %581
  %568 = phi i64 [ 2, %545 ], [ %643, %581 ]
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %546) #6, !dbg !2440
  %569 = call i8* @memset(i8* nonnull %546, i32 0, i64 20) #7, !dbg !2442
  %570 = load %struct.redisDb*, %struct.redisDb** %547, align 8, !dbg !2443, !tbaa !2120
  %571 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2444, !tbaa !1981
  %572 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %571, i64 %568, !dbg !2445
  %573 = load %struct.redisObject*, %struct.redisObject** %572, align 8, !dbg !2445, !tbaa !1063
  %574 = call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %570, %struct.redisObject* %573, i32 1) #7, !dbg !2446
  %575 = icmp eq %struct.redisObject* %574, null, !dbg !2448
  br i1 %575, label %581, label %576, !dbg !2450

; <label>:576:                                    ; preds = %567
  %577 = load %struct.redisDb*, %struct.redisDb** %547, align 8, !dbg !2451, !tbaa !2120
  %578 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2452, !tbaa !1981
  %579 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %578, i64 %568, !dbg !2453
  %580 = load %struct.redisObject*, %struct.redisObject** %579, align 8, !dbg !2453, !tbaa !1063
  call void @xorObjectDigest(%struct.redisDb* %577, %struct.redisObject* %580, i8* nonnull %546, %struct.redisObject* nonnull %574) #8, !dbg !2454
  br label %581, !dbg !2454

; <label>:581:                                    ; preds = %567, %576
  %582 = call i8* @sdsempty() #7, !dbg !2455
  %583 = load i8, i8* %546, align 16, !dbg !2458, !tbaa !203
  %584 = zext i8 %583 to i32, !dbg !2458
  %585 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %582, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %584) #7, !dbg !2460
  %586 = load i8, i8* %548, align 1, !dbg !2458, !tbaa !203
  %587 = zext i8 %586 to i32, !dbg !2458
  %588 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %585, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %587) #7, !dbg !2460
  %589 = load i8, i8* %549, align 2, !dbg !2458, !tbaa !203
  %590 = zext i8 %589 to i32, !dbg !2458
  %591 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %588, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %590) #7, !dbg !2460
  %592 = load i8, i8* %550, align 1, !dbg !2458, !tbaa !203
  %593 = zext i8 %592 to i32, !dbg !2458
  %594 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %591, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %593) #7, !dbg !2460
  %595 = load i8, i8* %551, align 4, !dbg !2458, !tbaa !203
  %596 = zext i8 %595 to i32, !dbg !2458
  %597 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %594, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %596) #7, !dbg !2460
  %598 = load i8, i8* %552, align 1, !dbg !2458, !tbaa !203
  %599 = zext i8 %598 to i32, !dbg !2458
  %600 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %597, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %599) #7, !dbg !2460
  %601 = load i8, i8* %553, align 2, !dbg !2458, !tbaa !203
  %602 = zext i8 %601 to i32, !dbg !2458
  %603 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %600, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %602) #7, !dbg !2460
  %604 = load i8, i8* %554, align 1, !dbg !2458, !tbaa !203
  %605 = zext i8 %604 to i32, !dbg !2458
  %606 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %603, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %605) #7, !dbg !2460
  %607 = load i8, i8* %555, align 8, !dbg !2458, !tbaa !203
  %608 = zext i8 %607 to i32, !dbg !2458
  %609 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %606, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %608) #7, !dbg !2460
  %610 = load i8, i8* %556, align 1, !dbg !2458, !tbaa !203
  %611 = zext i8 %610 to i32, !dbg !2458
  %612 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %609, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %611) #7, !dbg !2460
  %613 = load i8, i8* %557, align 2, !dbg !2458, !tbaa !203
  %614 = zext i8 %613 to i32, !dbg !2458
  %615 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %612, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %614) #7, !dbg !2460
  %616 = load i8, i8* %558, align 1, !dbg !2458, !tbaa !203
  %617 = zext i8 %616 to i32, !dbg !2458
  %618 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %615, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %617) #7, !dbg !2460
  %619 = load i8, i8* %559, align 4, !dbg !2458, !tbaa !203
  %620 = zext i8 %619 to i32, !dbg !2458
  %621 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %618, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %620) #7, !dbg !2460
  %622 = load i8, i8* %560, align 1, !dbg !2458, !tbaa !203
  %623 = zext i8 %622 to i32, !dbg !2458
  %624 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %621, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %623) #7, !dbg !2460
  %625 = load i8, i8* %561, align 2, !dbg !2458, !tbaa !203
  %626 = zext i8 %625 to i32, !dbg !2458
  %627 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %624, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %626) #7, !dbg !2460
  %628 = load i8, i8* %562, align 1, !dbg !2458, !tbaa !203
  %629 = zext i8 %628 to i32, !dbg !2458
  %630 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %627, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %629) #7, !dbg !2460
  %631 = load i8, i8* %563, align 16, !dbg !2458, !tbaa !203
  %632 = zext i8 %631 to i32, !dbg !2458
  %633 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %630, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %632) #7, !dbg !2460
  %634 = load i8, i8* %564, align 1, !dbg !2458, !tbaa !203
  %635 = zext i8 %634 to i32, !dbg !2458
  %636 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %633, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %635) #7, !dbg !2460
  %637 = load i8, i8* %565, align 2, !dbg !2458, !tbaa !203
  %638 = zext i8 %637 to i32, !dbg !2458
  %639 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %636, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %638) #7, !dbg !2460
  %640 = load i8, i8* %566, align 1, !dbg !2458, !tbaa !203
  %641 = zext i8 %640 to i32, !dbg !2458
  %642 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %639, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i32 %641) #7, !dbg !2460
  call void @addReplyStatus(%struct.client* nonnull %0, i8* %642) #7, !dbg !2461
  call void @sdsfree(i8* %642) #7, !dbg !2462
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %546) #6, !dbg !2463
  %643 = add nuw nsw i64 %568, 1, !dbg !2464
  %644 = load i32, i32* %15, align 8, !dbg !2437, !tbaa !1975
  %645 = sext i32 %644 to i64, !dbg !2438
  %646 = icmp slt i64 %643, %645, !dbg !2438
  br i1 %646, label %567, label %795, !dbg !2439, !llvm.loop !2465

; <label>:647:                                    ; preds = %535
  %648 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0)) #10, !dbg !2467
  %649 = icmp eq i32 %648, 0, !dbg !2467
  %650 = and i1 %83, %649, !dbg !2468
  br i1 %650, label %651, label %667, !dbg !2468

; <label>:651:                                    ; preds = %647
  %652 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2469
  %653 = load %struct.redisObject*, %struct.redisObject** %652, align 8, !dbg !2469, !tbaa !1063
  %654 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %653, i64 0, i32 2, !dbg !2470
  %655 = load i8*, i8** %654, align 8, !dbg !2470, !tbaa !228
  %656 = tail call double @strtod(i8* %655, i8** null) #7, !dbg !2471
  %657 = fmul double %656, 1.000000e+06, !dbg !2473
  %658 = fptosi double %657 to i64, !dbg !2474
  %659 = bitcast %struct.timespec* %11 to i8*, !dbg !2476
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %659) #6, !dbg !2476
  %660 = sdiv i64 %658, 1000000, !dbg !2477
  %661 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 0, !dbg !2478
  store i64 %660, i64* %661, align 8, !dbg !2479, !tbaa !2480
  %662 = srem i64 %658, 1000000, !dbg !2482
  %663 = mul nsw i64 %662, 1000, !dbg !2483
  %664 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1, !dbg !2484
  store i64 %663, i64* %664, align 8, !dbg !2485, !tbaa !2486
  %665 = call i32 @nanosleep(%struct.timespec* nonnull %11, %struct.timespec* null) #7, !dbg !2488
  %666 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2489, !tbaa !2037
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %666) #7, !dbg !2490
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %659) #6, !dbg !2491
  br label %795, !dbg !2492

; <label>:667:                                    ; preds = %647
  %668 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #10, !dbg !2493
  %669 = icmp eq i32 %668, 0, !dbg !2493
  %670 = and i1 %83, %669, !dbg !2494
  br i1 %670, label %671, label %678, !dbg !2494

; <label>:671:                                    ; preds = %667
  %672 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2495
  %673 = load %struct.redisObject*, %struct.redisObject** %672, align 8, !dbg !2495, !tbaa !1063
  %674 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %673, i64 0, i32 2, !dbg !2497
  %675 = load i8*, i8** %674, align 8, !dbg !2497, !tbaa !228
  %676 = tail call i32 @atoi(i8* %675) #7, !dbg !2498
  store i32 %676, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 103), align 4, !dbg !2499, !tbaa !2500
  %677 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2501, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %677) #7, !dbg !2502
  br label %795, !dbg !2503

; <label>:678:                                    ; preds = %667
  %679 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0)) #10, !dbg !2504
  %680 = icmp eq i32 %679, 0, !dbg !2504
  %681 = and i1 %83, %680, !dbg !2505
  br i1 %681, label %682, label %689, !dbg !2505

; <label>:682:                                    ; preds = %678
  %683 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2506
  %684 = load %struct.redisObject*, %struct.redisObject** %683, align 8, !dbg !2506, !tbaa !1063
  %685 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %684, i64 0, i32 2, !dbg !2508
  %686 = load i8*, i8** %685, align 8, !dbg !2508, !tbaa !228
  %687 = tail call i32 @atoi(i8* %686) #7, !dbg !2509
  store i32 %687, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2510, !tbaa !2511
  %688 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2512, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %688) #7, !dbg !2513
  br label %795, !dbg !2514

; <label>:689:                                    ; preds = %678
  %690 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #10, !dbg !2515
  %691 = icmp eq i32 %690, 0, !dbg !2515
  %692 = and i1 %83, %691, !dbg !2516
  br i1 %692, label %693, label %703, !dbg !2516

; <label>:693:                                    ; preds = %689
  %694 = tail call i8* @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), i64 1) #7, !dbg !2517
  %695 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2519, !tbaa !1981
  %696 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %695, i64 2, !dbg !2520
  %697 = load %struct.redisObject*, %struct.redisObject** %696, align 8, !dbg !2520, !tbaa !1063
  %698 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %697, i64 0, i32 2, !dbg !2521
  %699 = load i8*, i8** %698, align 8, !dbg !2521, !tbaa !228
  %700 = tail call i8* @sdscatsds(i8* %694, i8* %699) #7, !dbg !2522
  %701 = tail call i8* @sdsmapchars(i8* %700, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i64 2) #7, !dbg !2523
  %702 = tail call i8* @sdscatlen(i8* %701, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i64 2) #7, !dbg !2524
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %702) #7, !dbg !2525
  br label %795, !dbg !2526

; <label>:703:                                    ; preds = %689
  %704 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2527
  %705 = icmp ne i32 %704, 0, !dbg !2527
  %706 = or i1 %705, %451, !dbg !2528
  br i1 %706, label %717, label %707, !dbg !2528

; <label>:707:                                    ; preds = %703
  %708 = tail call i8* @sdsempty() #7, !dbg !2529
  %709 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %708, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i32 64) #7, !dbg !2531
  %710 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %709, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0), i32 16) #7, !dbg !2532
  %711 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %710, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i32 24) #7, !dbg !2533
  %712 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %711, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i32 1) #7, !dbg !2534
  %713 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 3) #7, !dbg !2535
  %714 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %713, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i32 5) #7, !dbg !2536
  %715 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %714, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i64 0, i64 0), i32 9) #7, !dbg !2537
  %716 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %715, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i64 0, i64 0), i32 17) #7, !dbg !2538
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %716) #7, !dbg !2539
  br label %795, !dbg !2540

; <label>:717:                                    ; preds = %703
  %718 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !2541
  %719 = icmp eq i32 %718, 0, !dbg !2541
  %720 = and i1 %83, %719, !dbg !2542
  br i1 %720, label %721, label %752, !dbg !2542

; <label>:721:                                    ; preds = %717
  %722 = bitcast i64* %12 to i8*, !dbg !2543
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %722) #6, !dbg !2543
  %723 = tail call i8* @sdsempty() #7, !dbg !2544
  %724 = getelementptr inbounds [4096 x i8], [4096 x i8]* %13, i64 0, i64 0, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %724) #6, !dbg !2546
  %725 = load %struct.redisObject**, %struct.redisObject*** %18, align 8, !dbg !2548, !tbaa !1981
  %726 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %725, i64 2, !dbg !2550
  %727 = load %struct.redisObject*, %struct.redisObject** %726, align 8, !dbg !2550, !tbaa !1063
  %728 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %727, i64* nonnull %12, i8* null) #7, !dbg !2552
  %729 = icmp eq i32 %728, 0, !dbg !2553
  br i1 %729, label %730, label %751, !dbg !2554

; <label>:730:                                    ; preds = %721
  %731 = load i64, i64* %12, align 8, !dbg !2555, !tbaa !263
  %732 = icmp slt i64 %731, 0, !dbg !2557
  br i1 %732, label %737, label %733, !dbg !2558

; <label>:733:                                    ; preds = %730
  %734 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !2559, !tbaa !1608
  %735 = sext i32 %734 to i64, !dbg !2560
  %736 = icmp slt i64 %731, %735, !dbg !2561
  br i1 %736, label %738, label %737, !dbg !2562

; <label>:737:                                    ; preds = %733, %730
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i64 0, i64 0)) #7, !dbg !2563
  br label %751, !dbg !2565

; <label>:738:                                    ; preds = %733
  %739 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %723, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i64 0, i64 0)) #7, !dbg !2566
  %740 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2567, !tbaa !1612
  %741 = load i64, i64* %12, align 8, !dbg !2568, !tbaa !263
  %742 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %740, i64 %741, i32 0, !dbg !2569
  %743 = load %struct.dict*, %struct.dict** %742, align 8, !dbg !2569, !tbaa !1617
  call void @dictGetStats(i8* nonnull %724, i64 4096, %struct.dict* %743) #7, !dbg !2570
  %744 = call i8* @sdscat(i8* %739, i8* nonnull %724) #7, !dbg !2571
  %745 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %744, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0)) #7, !dbg !2572
  %746 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !2573, !tbaa !1612
  %747 = load i64, i64* %12, align 8, !dbg !2574, !tbaa !263
  %748 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %746, i64 %747, i32 1, !dbg !2575
  %749 = load %struct.dict*, %struct.dict** %748, align 8, !dbg !2575, !tbaa !2576
  call void @dictGetStats(i8* nonnull %724, i64 4096, %struct.dict* %749) #7, !dbg !2577
  %750 = call i8* @sdscat(i8* %745, i8* nonnull %724) #7, !dbg !2578
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %750) #7, !dbg !2579
  br label %751, !dbg !2580

; <label>:751:                                    ; preds = %721, %738, %737
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %724) #6, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %722) #6, !dbg !2580
  br label %795

; <label>:752:                                    ; preds = %717
  %753 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0)) #10, !dbg !2581
  %754 = icmp eq i32 %753, 0, !dbg !2581
  %755 = and i1 %83, %754, !dbg !2582
  br i1 %755, label %756, label %782, !dbg !2582

; <label>:756:                                    ; preds = %752
  %757 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 2, !dbg !2584
  %758 = load %struct.redisObject*, %struct.redisObject** %757, align 8, !dbg !2584, !tbaa !1063
  %759 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !2586, !tbaa !2130
  %760 = tail call %struct.redisObject* @objectCommandLookupOrReply(%struct.client* nonnull %0, %struct.redisObject* %758, %struct.redisObject* %759) #7, !dbg !2587
  %761 = icmp eq %struct.redisObject* %760, null, !dbg !2589
  br i1 %761, label %795, label %762, !dbg !2590

; <label>:762:                                    ; preds = %756
  %763 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %760, i64 0, i32 0, !dbg !2591
  %764 = load i32, i32* %763, align 8, !dbg !2591
  %765 = lshr i32 %764, 4, !dbg !2591
  %766 = trunc i32 %765 to i4, !dbg !2592
  switch i4 %766, label %779 [
    i4 7, label %767
    i4 2, label %772
  ], !dbg !2592

; <label>:767:                                    ; preds = %762
  %768 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %760, i64 0, i32 2, !dbg !2593
  %769 = bitcast i8** %768 to %struct.zset**, !dbg !2593
  %770 = load %struct.zset*, %struct.zset** %769, align 8, !dbg !2593, !tbaa !228
  %771 = getelementptr inbounds %struct.zset, %struct.zset* %770, i64 0, i32 0, !dbg !2595
  br label %775, !dbg !2596

; <label>:772:                                    ; preds = %762
  %773 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %760, i64 0, i32 2, !dbg !2597
  %774 = bitcast i8** %773 to %struct.dict**, !dbg !2597
  br label %775, !dbg !2598

; <label>:775:                                    ; preds = %772, %767
  %776 = phi %struct.dict** [ %774, %772 ], [ %771, %767 ]
  %777 = load %struct.dict*, %struct.dict** %776, align 8, !dbg !2599, !tbaa !1063
  %778 = icmp eq %struct.dict* %777, null, !dbg !2600
  br i1 %778, label %779, label %780, !dbg !2601

; <label>:779:                                    ; preds = %762, %775
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.90, i64 0, i64 0)) #7, !dbg !2602
  br label %795, !dbg !2604

; <label>:780:                                    ; preds = %775
  %781 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %781) #6, !dbg !2605
  call void @dictGetStats(i8* nonnull %781, i64 4096, %struct.dict* nonnull %777) #7, !dbg !2607
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* nonnull %781) #7, !dbg !2608
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %781) #6, !dbg !2609
  br label %795

; <label>:782:                                    ; preds = %752
  %783 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0)) #10, !dbg !2610
  %784 = icmp ne i32 %783, 0, !dbg !2610
  %785 = or i1 %784, %451, !dbg !2612
  br i1 %785, label %788, label %786, !dbg !2612

; <label>:786:                                    ; preds = %782
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i64 0, i64 0)) #7, !dbg !2613
  tail call void @changeReplicationId() #7, !dbg !2615
  tail call void @clearReplicationId2() #7, !dbg !2616
  %787 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2617, !tbaa !2037
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %787) #7, !dbg !2618
  br label %795, !dbg !2619

; <label>:788:                                    ; preds = %782
  %789 = tail call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0)) #10, !dbg !2620
  %790 = icmp ne i32 %789, 0, !dbg !2620
  %791 = or i1 %790, %451, !dbg !2622
  br i1 %791, label %794, label %792, !dbg !2622

; <label>:792:                                    ; preds = %788
  %793 = tail call i32 @stringmatchlen_fuzz_test() #7, !dbg !2623
  tail call void @addReplyStatus(%struct.client* nonnull %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i64 0, i64 0)) #7, !dbg !2625
  br label %795

; <label>:794:                                    ; preds = %788
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !2626
  br label %795, !dbg !2628

; <label>:795:                                    ; preds = %581, %540, %756, %780, %779, %351, %363, %362, %236, %343, %251, %142, %212, %123, %125, %751, %447, %110, %33, %453, %651, %682, %707, %792, %786, %693, %671, %85, %72, %794, %27
  ret void, !dbg !2629
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
define dso_local void @_serverAssertWithInfo(%struct.client* readonly, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #0 !dbg !2630 {
  %6 = icmp eq %struct.client* %0, null, !dbg !2648
  br i1 %6, label %8, label %7, !dbg !2650

; <label>:7:                                      ; preds = %5
  tail call void @_serverAssertPrintClientInfo(%struct.client* nonnull %0) #8, !dbg !2651
  br label %8, !dbg !2651

; <label>:8:                                      ; preds = %5, %7
  %9 = icmp eq %struct.redisObject* %1, null, !dbg !2652
  br i1 %9, label %15, label %10, !dbg !2654

; <label>:10:                                     ; preds = %8
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2662, !tbaa !1518
  %12 = icmp eq i32 %11, 0, !dbg !2664
  br i1 %12, label %13, label %14, !dbg !2665

; <label>:13:                                     ; preds = %10
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2666
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2667, !tbaa !1518
  br label %14, !dbg !2668

; <label>:14:                                     ; preds = %10, %13
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2669
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* nonnull %1) #7, !dbg !2670
  br label %15, !dbg !2671

; <label>:15:                                     ; preds = %8, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2676, !tbaa !1518
  %17 = icmp eq i32 %16, 0, !dbg !2678
  br i1 %17, label %18, label %19, !dbg !2679

; <label>:18:                                     ; preds = %15
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2680
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2681, !tbaa !1518
  br label %19, !dbg !2682

; <label>:19:                                     ; preds = %15, %18
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2683
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i8* %3, i32 %4, i8* %2) #7, !dbg !2684
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1, !dbg !2685, !tbaa !203
  ret void, !dbg !2686
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
define dso_local void @bugReportStart() local_unnamed_addr #0 !dbg !1516 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2687, !tbaa !1518
  %2 = icmp eq i32 %1, 0, !dbg !2688
  br i1 %2, label %3, label %4, !dbg !2689

; <label>:3:                                      ; preds = %0
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2690
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2691, !tbaa !1518
  br label %4, !dbg !2692

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !2693
}

; Function Attrs: noredzone nounwind
define dso_local void @_serverAssertPrintClientInfo(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !2694 {
  %2 = alloca [128 x i8], align 16
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2706, !tbaa !1518
  %4 = icmp eq i32 %3, 0, !dbg !2708
  br i1 %4, label %5, label %6, !dbg !2709

; <label>:5:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2710
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2711, !tbaa !1518
  br label %6, !dbg !2712

; <label>:6:                                      ; preds = %1, %5
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i64 0, i64 0)) #7, !dbg !2713
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2714
  %8 = load i32, i32* %7, align 8, !dbg !2714, !tbaa !2715
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i64 0, i64 0), i32 %8) #7, !dbg !2716
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2717
  %10 = load i32, i32* %9, align 8, !dbg !2717, !tbaa !2718
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 %10) #7, !dbg !2719
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2720
  %12 = load i32, i32* %11, align 8, !dbg !2720, !tbaa !1975
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0), i32 %12) #7, !dbg !2721
  %13 = load i32, i32* %11, align 8, !dbg !2723, !tbaa !1975
  %14 = icmp sgt i32 %13, 0, !dbg !2724
  br i1 %14, label %15, label %51, !dbg !2725

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %18, !dbg !2725

; <label>:18:                                     ; preds = %15, %41
  %19 = phi i64 [ 0, %15 ], [ %47, %41 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2726
  %20 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2728, !tbaa !1981
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !2730
  %22 = bitcast %struct.redisObject** %21 to i32**, !dbg !2730
  %23 = load i32*, i32** %22, align 8, !dbg !2730, !tbaa !1063
  %24 = load i32, i32* %23, align 8, !dbg !2731
  %25 = and i32 %24, 15, !dbg !2731
  %26 = icmp eq i32 %25, 0, !dbg !2732
  %27 = bitcast i32* %23 to %struct.redisObject*, !dbg !2733
  %28 = lshr i32 %24, 4, !dbg !2734
  br i1 %26, label %29, label %35, !dbg !2733

; <label>:29:                                     ; preds = %18
  %30 = trunc i32 %28 to i4, !dbg !2736
  switch i4 %30, label %35 [
    i4 0, label %31
    i4 -8, label %31
  ], !dbg !2736

; <label>:31:                                     ; preds = %29, %29
  %32 = getelementptr inbounds i32, i32* %23, i64 2, !dbg !2737
  %33 = bitcast i32* %32 to i8**, !dbg !2737
  %34 = load i8*, i8** %33, align 8, !dbg !2737, !tbaa !228
  br label %41, !dbg !2740

; <label>:35:                                     ; preds = %18, %29
  %36 = and i32 %28, 15, !dbg !2741
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %16, i64 128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.101, i64 0, i64 0), i32 %25, i32 %36) #7, !dbg !2742
  %38 = load %struct.redisObject**, %struct.redisObject*** %17, align 8, !dbg !2743, !tbaa !1981
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %19
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !2744, !tbaa !1063
  br label %41

; <label>:41:                                     ; preds = %35, %31
  %42 = phi %struct.redisObject* [ %27, %31 ], [ %40, %35 ], !dbg !2744
  %43 = phi i8* [ %34, %31 ], [ %16, %35 ], !dbg !2734
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %42, i64 0, i32 1, !dbg !2745
  %45 = load i32, i32* %44, align 4, !dbg !2745, !tbaa !2197
  %46 = trunc i64 %19 to i32, !dbg !2746
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i32 %46, i8* %43, i32 %45) #7, !dbg !2746
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %16) #6, !dbg !2747
  %47 = add nuw nsw i64 %19, 1, !dbg !2748
  %48 = load i32, i32* %11, align 8, !dbg !2723, !tbaa !1975
  %49 = sext i32 %48 to i64, !dbg !2724
  %50 = icmp slt i64 %47, %49, !dbg !2724
  br i1 %50, label %18, label %51, !dbg !2725, !llvm.loop !2749

; <label>:51:                                     ; preds = %41, %6
  ret void, !dbg !2751
}

; Function Attrs: noredzone nounwind
define dso_local void @serverLogObjectDebugInfo(%struct.redisObject*) local_unnamed_addr #0 !dbg !2752 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2761
  %3 = load i32, i32* %2, align 8, !dbg !2761
  %4 = and i32 %3, 15, !dbg !2761
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i32 %4) #7, !dbg !2762
  %5 = load i32, i32* %2, align 8, !dbg !2763
  %6 = lshr i32 %5, 4, !dbg !2763
  %7 = and i32 %6, 15, !dbg !2763
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i32 %7) #7, !dbg !2764
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !2765
  %9 = load i32, i32* %8, align 4, !dbg !2765, !tbaa !2197
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i64 0, i64 0), i32 %9) #7, !dbg !2766
  %10 = load i32, i32* %2, align 8, !dbg !2767
  %11 = trunc i32 %10 to i4, !dbg !2768
  switch i4 %11, label %118 [
    i4 0, label %12
    i4 1, label %95
    i4 2, label %98
    i4 4, label %101
    i4 3, label %104
  ], !dbg !2768

; <label>:12:                                     ; preds = %1
  %13 = lshr i32 %10, 4, !dbg !2769
  %14 = trunc i32 %13 to i4, !dbg !2769
  switch i4 %14, label %118 [
    i4 0, label %15
    i4 -8, label %15
  ], !dbg !2769

; <label>:15:                                     ; preds = %12, %12
  %16 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2770
  %17 = load i8*, i8** %16, align 8, !dbg !2770, !tbaa !228
  %18 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2773
  %19 = load i8, i8* %18, align 1, !dbg !2773, !tbaa !203
  %20 = trunc i8 %19 to i3, !dbg !2775
  switch i3 %20, label %42 [
    i3 0, label %21
    i3 1, label %24
    i3 2, label %28
    i3 3, label %33
    i3 -4, label %38
  ], !dbg !2775

; <label>:21:                                     ; preds = %15
  %22 = lshr i8 %19, 3, !dbg !2776
  %23 = zext i8 %22 to i64, !dbg !2776
  br label %42, !dbg !2777

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %17, i64 -3, !dbg !2778
  %26 = load i8, i8* %25, align 1, !dbg !2779, !tbaa !203
  %27 = zext i8 %26 to i64, !dbg !2778
  br label %42, !dbg !2780

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds i8, i8* %17, i64 -5, !dbg !2781
  %30 = bitcast i8* %29 to i16*, !dbg !2782
  %31 = load i16, i16* %30, align 1, !dbg !2782, !tbaa !254
  %32 = zext i16 %31 to i64, !dbg !2781
  br label %42, !dbg !2783

; <label>:33:                                     ; preds = %15
  %34 = getelementptr inbounds i8, i8* %17, i64 -9, !dbg !2784
  %35 = bitcast i8* %34 to i32*, !dbg !2785
  %36 = load i32, i32* %35, align 1, !dbg !2785, !tbaa !259
  %37 = zext i32 %36 to i64, !dbg !2784
  br label %42, !dbg !2786

; <label>:38:                                     ; preds = %15
  %39 = getelementptr inbounds i8, i8* %17, i64 -17, !dbg !2787
  %40 = bitcast i8* %39 to i64*, !dbg !2788
  %41 = load i64, i64* %40, align 1, !dbg !2788, !tbaa !263
  br label %42, !dbg !2789

; <label>:42:                                     ; preds = %15, %21, %24, %28, %33, %38
  %43 = phi i64 [ %41, %38 ], [ %37, %33 ], [ %32, %28 ], [ %27, %24 ], [ %23, %21 ], [ 0, %15 ], !dbg !2790
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0), i64 %43) #7, !dbg !2791
  %44 = load i8*, i8** %16, align 8, !dbg !2792, !tbaa !228
  %45 = getelementptr inbounds i8, i8* %44, i64 -1, !dbg !2795
  %46 = load i8, i8* %45, align 1, !dbg !2795, !tbaa !203
  %47 = trunc i8 %46 to i3, !dbg !2797
  switch i3 %47, label %65 [
    i3 -4, label %58
    i3 3, label %53
    i3 2, label %48
  ], !dbg !2797

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds i8, i8* %44, i64 -5, !dbg !2798
  %50 = bitcast i8* %49 to i16*, !dbg !2799
  %51 = load i16, i16* %50, align 1, !dbg !2799, !tbaa !254
  %52 = zext i16 %51 to i64, !dbg !2798
  br label %62, !dbg !2800

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds i8, i8* %44, i64 -9, !dbg !2801
  %55 = bitcast i8* %54 to i32*, !dbg !2802
  %56 = load i32, i32* %55, align 1, !dbg !2802, !tbaa !259
  %57 = zext i32 %56 to i64, !dbg !2801
  br label %62, !dbg !2803

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %44, i64 -17, !dbg !2804
  %60 = bitcast i8* %59 to i64*, !dbg !2805
  %61 = load i64, i64* %60, align 1, !dbg !2805, !tbaa !263
  br label %62, !dbg !2806

; <label>:62:                                     ; preds = %48, %53, %58
  %63 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], !dbg !2807
  %64 = icmp ult i64 %63, 4096, !dbg !2808
  br i1 %64, label %65, label %118, !dbg !2809

; <label>:65:                                     ; preds = %42, %62
  %66 = tail call i8* @sdsempty() #7, !dbg !2810
  %67 = load i8*, i8** %16, align 8, !dbg !2811, !tbaa !228
  %68 = getelementptr inbounds i8, i8* %67, i64 -1, !dbg !2814
  %69 = load i8, i8* %68, align 1, !dbg !2814, !tbaa !203
  %70 = trunc i8 %69 to i3, !dbg !2816
  switch i3 %70, label %92 [
    i3 0, label %71
    i3 1, label %74
    i3 2, label %78
    i3 3, label %83
    i3 -4, label %88
  ], !dbg !2816

; <label>:71:                                     ; preds = %65
  %72 = lshr i8 %69, 3, !dbg !2817
  %73 = zext i8 %72 to i64, !dbg !2817
  br label %92, !dbg !2818

; <label>:74:                                     ; preds = %65
  %75 = getelementptr inbounds i8, i8* %67, i64 -3, !dbg !2819
  %76 = load i8, i8* %75, align 1, !dbg !2820, !tbaa !203
  %77 = zext i8 %76 to i64, !dbg !2819
  br label %92, !dbg !2821

; <label>:78:                                     ; preds = %65
  %79 = getelementptr inbounds i8, i8* %67, i64 -5, !dbg !2822
  %80 = bitcast i8* %79 to i16*, !dbg !2823
  %81 = load i16, i16* %80, align 1, !dbg !2823, !tbaa !254
  %82 = zext i16 %81 to i64, !dbg !2822
  br label %92, !dbg !2824

; <label>:83:                                     ; preds = %65
  %84 = getelementptr inbounds i8, i8* %67, i64 -9, !dbg !2825
  %85 = bitcast i8* %84 to i32*, !dbg !2826
  %86 = load i32, i32* %85, align 1, !dbg !2826, !tbaa !259
  %87 = zext i32 %86 to i64, !dbg !2825
  br label %92, !dbg !2827

; <label>:88:                                     ; preds = %65
  %89 = getelementptr inbounds i8, i8* %67, i64 -17, !dbg !2828
  %90 = bitcast i8* %89 to i64*, !dbg !2829
  %91 = load i64, i64* %90, align 1, !dbg !2829, !tbaa !263
  br label %92, !dbg !2830

; <label>:92:                                     ; preds = %65, %71, %74, %78, %83, %88
  %93 = phi i64 [ %91, %88 ], [ %87, %83 ], [ %82, %78 ], [ %77, %74 ], [ %73, %71 ], [ 0, %65 ], !dbg !2831
  %94 = tail call i8* @sdscatrepr(i8* %66, i8* %67, i64 %93) #7, !dbg !2832
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.107, i64 0, i64 0), i8* %94) #7, !dbg !2834
  tail call void @sdsfree(i8* %94) #7, !dbg !2835
  br label %118, !dbg !2836

; <label>:95:                                     ; preds = %1
  %96 = tail call i64 @listTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2837
  %97 = trunc i64 %96 to i32, !dbg !2840
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i64 0, i64 0), i32 %97) #7, !dbg !2841
  br label %118, !dbg !2842

; <label>:98:                                     ; preds = %1
  %99 = tail call i64 @setTypeSize(%struct.redisObject* nonnull %0) #7, !dbg !2843
  %100 = trunc i64 %99 to i32, !dbg !2846
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i64 0, i64 0), i32 %100) #7, !dbg !2847
  br label %118, !dbg !2848

; <label>:101:                                    ; preds = %1
  %102 = tail call i64 @hashTypeLength(%struct.redisObject* nonnull %0) #7, !dbg !2849
  %103 = trunc i64 %102 to i32, !dbg !2852
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i64 0, i64 0), i32 %103) #7, !dbg !2853
  br label %118, !dbg !2854

; <label>:104:                                    ; preds = %1
  %105 = tail call i64 @zsetLength(%struct.redisObject* nonnull %0) #7, !dbg !2855
  %106 = trunc i64 %105 to i32, !dbg !2858
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.111, i64 0, i64 0), i32 %106) #7, !dbg !2859
  %107 = load i32, i32* %2, align 8, !dbg !2860
  %108 = and i32 %107, 240, !dbg !2860
  %109 = icmp eq i32 %108, 112, !dbg !2862
  br i1 %109, label %110, label %118, !dbg !2863

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2864
  %112 = bitcast i8** %111 to %struct.zset**, !dbg !2864
  %113 = load %struct.zset*, %struct.zset** %112, align 8, !dbg !2864, !tbaa !228
  %114 = getelementptr inbounds %struct.zset, %struct.zset* %113, i64 0, i32 1, !dbg !2865
  %115 = load %struct.zskiplist*, %struct.zskiplist** %114, align 8, !dbg !2865, !tbaa !2866
  %116 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %115, i64 0, i32 3, !dbg !2867
  %117 = load i32, i32* %116, align 8, !dbg !2867, !tbaa !2868
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.112, i64 0, i64 0), i32 %117) #7, !dbg !2870
  br label %118, !dbg !2870

; <label>:118:                                    ; preds = %1, %12, %95, %101, %104, %110, %98, %62, %92
  ret void, !dbg !2871
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
define dso_local void @_serverAssertPrintObject(%struct.redisObject*) local_unnamed_addr #0 !dbg !2656 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2873, !tbaa !1518
  %3 = icmp eq i32 %2, 0, !dbg !2875
  br i1 %3, label %4, label %5, !dbg !2876

; <label>:4:                                      ; preds = %1
  tail call void @serverLogRaw(i32 1027, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.117, i64 0, i64 0)) #7, !dbg !2877
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 293), align 4, !dbg !2878, !tbaa !1518
  br label %5, !dbg !2879

; <label>:5:                                      ; preds = %1, %4
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0)) #7, !dbg !2880
  tail call void @serverLogObjectDebugInfo(%struct.redisObject* %0) #8, !dbg !2881
  ret void, !dbg !2882
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
define dso_local void @serverLogHexDump(i32, i8*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2883 {
  %5 = alloca [65 x i8], align 16
  %6 = getelementptr inbounds [65 x i8], [65 x i8]* %5, i64 0, i64 0, !dbg !2905
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %6) #6, !dbg !2905
  tail call void (i32, i8*, ...) @serverLog(i32 %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.118, i64 0, i64 0), i8* %1, i64 %3) #7, !dbg !2909
  %7 = icmp eq i64 %3, 0, !dbg !2911
  br i1 %7, label %8, label %10, !dbg !2911

; <label>:8:                                      ; preds = %4
  %9 = or i32 %0, 1024, !dbg !2912
  br label %39, !dbg !2911

; <label>:10:                                     ; preds = %4
  %11 = ptrtoint [65 x i8]* %5 to i64
  %12 = or i32 %0, 1024
  br label %13, !dbg !2911

; <label>:13:                                     ; preds = %10, %37
  %14 = phi i8* [ %2, %10 ], [ %30, %37 ]
  %15 = phi i8* [ %6, %10 ], [ %38, %37 ]
  %16 = phi i64 [ %3, %10 ], [ %29, %37 ]
  %17 = load i8, i8* %14, align 1, !dbg !2913, !tbaa !203
  %18 = lshr i8 %17, 4, !dbg !2915
  %19 = zext i8 %18 to i64, !dbg !2916
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %19, !dbg !2916
  %21 = load i8, i8* %20, align 1, !dbg !2916, !tbaa !203
  store i8 %21, i8* %15, align 1, !dbg !2917, !tbaa !203
  %22 = load i8, i8* %14, align 1, !dbg !2918, !tbaa !203
  %23 = and i8 %22, 15, !dbg !2919
  %24 = zext i8 %23 to i64, !dbg !2920
  %25 = getelementptr inbounds [17 x i8], [17 x i8]* @serverLogHexDump.charset, i64 0, i64 %24, !dbg !2920
  %26 = load i8, i8* %25, align 1, !dbg !2920, !tbaa !203
  %27 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !2921
  store i8 %26, i8* %27, align 1, !dbg !2922, !tbaa !203
  %28 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !2923
  store i8 0, i8* %28, align 1, !dbg !2924, !tbaa !203
  %29 = add i64 %16, -1, !dbg !2925
  %30 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !2926
  %31 = ptrtoint i8* %28 to i64, !dbg !2927
  %32 = sub i64 %31, %11, !dbg !2927
  %33 = icmp eq i64 %32, 64, !dbg !2929
  %34 = icmp eq i64 %29, 0, !dbg !2930
  %35 = or i1 %34, %33, !dbg !2931
  br i1 %35, label %36, label %37, !dbg !2931

; <label>:36:                                     ; preds = %13
  call void @serverLogRaw(i32 %12, i8* nonnull %6) #7, !dbg !2932
  br label %37, !dbg !2934

; <label>:37:                                     ; preds = %13, %36
  %38 = phi i8* [ %6, %36 ], [ %28, %13 ], !dbg !2935
  br i1 %34, label %39, label %13, !dbg !2911, !llvm.loop !2936

; <label>:39:                                     ; preds = %37, %8
  %40 = phi i32 [ %9, %8 ], [ %12, %37 ], !dbg !2912
  call void @serverLogRaw(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i64 0, i64 0)) #7, !dbg !2938
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %6) #6, !dbg !2939
  ret void, !dbg !2939
}

; Function Attrs: noredzone nounwind
define dso_local void @watchdogSignalHandler(i32, %struct.siginfo_t* nocapture readnone, i8* nocapture readnone) #0 !dbg !2940 {
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.120, i64 0, i64 0)) #7, !dbg !2959
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i64 0, i64 0)) #7, !dbg !2960
  tail call void @serverLogFromHandler(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i64 0, i64 0)) #7, !dbg !2961
  ret void, !dbg !2962
}

; Function Attrs: noredzone
declare dso_local void @serverLogFromHandler(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @watchdogScheduleSignal(i32) local_unnamed_addr #0 !dbg !2963 {
  %2 = alloca %struct.itimerval, align 16
  %3 = bitcast %struct.itimerval* %2 to i8*, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !2978
  %4 = sdiv i32 %0, 1000, !dbg !2979
  %5 = sext i32 %4 to i64, !dbg !2980
  %6 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !2981
  store i64 %5, i64* %6, align 16, !dbg !2982, !tbaa !2983
  %7 = srem i32 %0, 1000, !dbg !2986
  %8 = mul nsw i32 %7, 1000, !dbg !2987
  %9 = sext i32 %8 to i64, !dbg !2988
  %10 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !2989
  store i64 %9, i64* %10, align 8, !dbg !2990, !tbaa !2991
  %11 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !2992
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 16, !dbg !2992, !tbaa !263
  %12 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !2994
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !2995
  ret void, !dbg !2995
}

; Function Attrs: noredzone
declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @enableWatchdog(i32) local_unnamed_addr #0 !dbg !2996 {
  %2 = alloca %struct.itimerval, align 16
  %3 = alloca %struct.sigaction, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3017, !tbaa !3018
  %5 = icmp eq i32 %4, 0, !dbg !3019
  br i1 %5, label %6, label %13, !dbg !3020

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.sigaction* %3 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3021
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 1, !dbg !3022
  %9 = call i32 @sigemptyset(i64* nonnull %8) #7, !dbg !3023
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i64 0, i32 2, !dbg !3024
  store i32 134217732, i32* %10, align 8, !dbg !3025, !tbaa !3026
  %11 = bitcast %struct.sigaction* %3 to void (i32, %struct.siginfo_t*, i8*)**, !dbg !3028
  store void (i32, %struct.siginfo_t*, i8*)* @watchdogSignalHandler, void (i32, %struct.siginfo_t*, i8*)** %11, align 8, !dbg !3029, !tbaa !203
  %12 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %3, %struct.sigaction* null) #7, !dbg !3031
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3032
  br label %13, !dbg !3033

; <label>:13:                                     ; preds = %6, %1
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !3034, !tbaa !3035
  %15 = sdiv i32 1000, %14, !dbg !3036
  %16 = shl nsw i32 %15, 1, !dbg !3037
  %17 = icmp sgt i32 %16, %0, !dbg !3039
  %18 = select i1 %17, i32 %16, i32 %0, !dbg !3041
  %19 = bitcast %struct.itimerval* %2 to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #6, !dbg !3044
  %20 = sdiv i32 %18, 1000, !dbg !3045
  %21 = sext i32 %20 to i64, !dbg !3046
  %22 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 0, !dbg !3047
  store i64 %21, i64* %22, align 16, !dbg !3048, !tbaa !2983
  %23 = srem i32 %18, 1000, !dbg !3049
  %24 = mul nsw i32 %23, 1000, !dbg !3050
  %25 = sext i32 %24 to i64, !dbg !3051
  %26 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %2, i64 0, i32 1, i32 1, !dbg !3052
  store i64 %25, i64* %26, align 8, !dbg !3053, !tbaa !2991
  %27 = bitcast %struct.itimerval* %2 to <2 x i64>*, !dbg !3054
  store <2 x i64> zeroinitializer, <2 x i64>* %27, align 16, !dbg !3054, !tbaa !263
  %28 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %2, %struct.itimerval* null) #7, !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #6, !dbg !3057
  store i32 %18, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3058, !tbaa !3018
  ret void, !dbg !3059
}

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disableWatchdog() local_unnamed_addr #0 !dbg !3060 {
  %1 = alloca %struct.itimerval, align 16
  %2 = alloca %struct.sigaction, align 8
  %3 = bitcast %struct.sigaction* %2 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3063
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3064, !tbaa !3018
  %5 = icmp eq i32 %4, 0, !dbg !3066
  br i1 %5, label %17, label %6, !dbg !3067

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.itimerval* %1 to i8*, !dbg !3070
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3070
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i64 0, i32 1, i32 0, !dbg !3071
  %9 = bitcast i64* %8 to <2 x i64>*, !dbg !3072
  store <2 x i64> zeroinitializer, <2 x i64>* %9, align 16, !dbg !3072, !tbaa !263
  %10 = bitcast %struct.itimerval* %1 to <2 x i64>*, !dbg !3073
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16, !dbg !3073, !tbaa !263
  %11 = call i32 @setitimer(i32 0, %struct.itimerval* nonnull %1, %struct.itimerval* null) #7, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #6, !dbg !3076
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3077
  %13 = call i32 @sigemptyset(i64* nonnull %12) #7, !dbg !3078
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3079
  store i32 0, i32* %14, align 8, !dbg !3080, !tbaa !3026
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3081
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %15, align 8, !dbg !3082, !tbaa !203
  %16 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %2, %struct.sigaction* null) #7, !dbg !3084
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 294), align 8, !dbg !3085, !tbaa !3018
  br label %17, !dbg !3086

; <label>:17:                                     ; preds = %0, %6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6, !dbg !3086
  ret void, !dbg !3086
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
!267 = !DILocation(line: 79, column: 5, scope: !209)
!268 = !DILocation(line: 80, column: 5, scope: !209)
!269 = !DILocation(line: 81, column: 1, scope: !209)
!270 = distinct !DISubprogram(name: "mixDigest", scope: !1, file: !1, line: 97, type: !155, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DILocalVariable(name: "digest", arg: 1, scope: !270, file: !1, line: 97, type: !157)
!273 = !DILocalVariable(name: "ptr", arg: 2, scope: !270, file: !1, line: 97, type: !4)
!274 = !DILocalVariable(name: "len", arg: 3, scope: !270, file: !1, line: 97, type: !158)
!275 = !DILocalVariable(name: "ctx", scope: !270, file: !1, line: 98, type: !167)
!276 = !DILocalVariable(name: "s", scope: !270, file: !1, line: 99, type: !5)
!277 = !DILocation(line: 97, column: 31, scope: !270)
!278 = !DILocation(line: 97, column: 45, scope: !270)
!279 = !DILocation(line: 97, column: 57, scope: !270)
!280 = !DILocation(line: 98, column: 5, scope: !270)
!281 = !DILocation(line: 99, column: 11, scope: !270)
!282 = !DILocation(line: 101, column: 5, scope: !270)
!283 = !DILocation(line: 98, column: 14, scope: !270)
!284 = !DILocation(line: 102, column: 5, scope: !270)
!285 = !DILocation(line: 103, column: 5, scope: !270)
!286 = !DILocation(line: 104, column: 5, scope: !270)
!287 = !DILocation(line: 105, column: 1, scope: !270)
!288 = distinct !DISubprogram(name: "mixStringObjectDigest", scope: !1, file: !1, line: 107, type: !210, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !289)
!289 = !{!290, !291}
!290 = !DILocalVariable(name: "digest", arg: 1, scope: !288, file: !1, line: 107, type: !157)
!291 = !DILocalVariable(name: "o", arg: 2, scope: !288, file: !1, line: 107, type: !212)
!292 = !DILocation(line: 107, column: 43, scope: !288)
!293 = !DILocation(line: 107, column: 57, scope: !288)
!294 = !DILocation(line: 108, column: 9, scope: !288)
!295 = !DILocation(line: 109, column: 25, scope: !288)
!296 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !297)
!297 = distinct !DILocation(line: 109, column: 29, scope: !288)
!298 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !297)
!299 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !297)
!300 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !297)
!301 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !297)
!302 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !297)
!303 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !297)
!304 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !297)
!305 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !297)
!306 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !297)
!307 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !297)
!308 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !297)
!309 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !297)
!310 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !297)
!311 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !297)
!312 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !297)
!313 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !297)
!314 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !297)
!315 = !DILocation(line: 0, scope: !247, inlinedAt: !297)
!316 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !317)
!317 = distinct !DILocation(line: 109, column: 5, scope: !288)
!318 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !317)
!319 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !317)
!320 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !317)
!321 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !317)
!322 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !317)
!323 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !317)
!324 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !317)
!325 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !317)
!326 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !317)
!327 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !317)
!328 = !DILocation(line: 110, column: 5, scope: !288)
!329 = !DILocation(line: 111, column: 1, scope: !288)
!330 = distinct !DISubprogram(name: "xorObjectDigest", scope: !1, file: !1, line: 121, type: !331, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !373)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333, !212, !157, !212}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !13, line: 656, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !13, line: 647, size: 512, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !335, file: !13, line: 648, baseType: !17, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !335, file: !13, line: 649, baseType: !17, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !335, file: !13, line: 650, baseType: !17, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !335, file: !13, line: 651, baseType: !17, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !335, file: !13, line: 652, baseType: !17, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !335, file: !13, line: 653, baseType: !9, size: 32, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !335, file: !13, line: 654, baseType: !8, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !335, file: !13, line: 655, baseType: !345, size: 64, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !347, line: 54, baseType: !348)
!347 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !347, line: 47, size: 384, elements: !349)
!349 = !{!350, !359, !360, !364, !368, !372}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !348, file: !347, line: 48, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !347, line: 40, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !347, line: 36, size: 192, elements: !354)
!354 = !{!355, !357, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !353, file: !347, line: 37, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !347, line: 38, baseType: !356, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !347, line: 39, baseType: !4, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !347, line: 49, baseType: !351, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !348, file: !347, line: 50, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!4, !4}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !348, file: !347, line: 51, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !4}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !348, file: !347, line: 52, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!9, !4, !4}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !348, file: !347, line: 53, baseType: !35, size: 64, offset: 320)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !384, !432, !448, !450, !472, !473, !476, !479, !480, !481, !482, !483, !484, !485, !489, !490, !491, !493, !495, !508, !510, !511, !599, !600, !601, !603, !605, !606, !607, !608, !616, !948}
!374 = !DILocalVariable(name: "db", arg: 1, scope: !330, file: !1, line: 121, type: !333)
!375 = !DILocalVariable(name: "keyobj", arg: 2, scope: !330, file: !1, line: 121, type: !212)
!376 = !DILocalVariable(name: "digest", arg: 3, scope: !330, file: !1, line: 121, type: !157)
!377 = !DILocalVariable(name: "o", arg: 4, scope: !330, file: !1, line: 121, type: !212)
!378 = !DILocalVariable(name: "aux", scope: !330, file: !1, line: 122, type: !137)
!379 = !DILocalVariable(name: "expiretime", scope: !330, file: !1, line: 124, type: !8)
!380 = !DILocalVariable(name: "buf", scope: !330, file: !1, line: 125, type: !381)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 128)
!384 = !DILocalVariable(name: "li", scope: !385, file: !1, line: 131, type: !388)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 130, column: 37)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 130, column: 16)
!387 = distinct !DILexicalBlock(scope: !330, file: !1, line: 128, column: 9)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeIterator", file: !13, line: 1347, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1342, size: 192, elements: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !390, file: !13, line: 1343, baseType: !212, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !390, file: !13, line: 1344, baseType: !118, size: 8, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !390, file: !13, line: 1345, baseType: !118, size: 8, offset: 72)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !390, file: !13, line: 1346, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !398, line: 88, baseType: !399)
!398 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !398, line: 82, size: 320, elements: !400)
!400 = !{!401, !428, !429, !430, !431}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !399, file: !398, line: 83, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !398, line: 80, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !398, line: 73, size: 320, elements: !406)
!406 = !{!407, !423, !424, !425, !426, !427}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !405, file: !398, line: 74, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !398, line: 55, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !398, line: 44, size: 256, elements: !411)
!411 = !{!412, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !410, file: !398, line: 45, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !398, line: 46, baseType: !413, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !410, file: !398, line: 47, baseType: !157, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !410, file: !398, line: 48, baseType: !139, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !398, line: 49, baseType: !139, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !410, file: !398, line: 50, baseType: !139, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !410, file: !398, line: 51, baseType: !139, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !410, file: !398, line: 52, baseType: !139, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !410, file: !398, line: 53, baseType: !139, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !410, file: !398, line: 54, baseType: !139, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !405, file: !398, line: 75, baseType: !408, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !405, file: !398, line: 76, baseType: !35, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !405, file: !398, line: 77, baseType: !35, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !405, file: !398, line: 78, baseType: !9, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !405, file: !398, line: 79, baseType: !139, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !399, file: !398, line: 84, baseType: !408, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !399, file: !398, line: 85, baseType: !157, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !399, file: !398, line: 86, baseType: !73, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !399, file: !398, line: 87, baseType: !9, size: 32, offset: 256)
!432 = !DILocalVariable(name: "entry", scope: !385, file: !1, line: 132, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "listTypeEntry", file: !13, line: 1353, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1350, size: 448, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !434, file: !13, line: 1351, baseType: !388, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !434, file: !13, line: 1352, baseType: !438, size: 384, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !398, line: 98, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !398, line: 90, size: 384, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !439, file: !398, line: 91, baseType: !402, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !398, line: 92, baseType: !408, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !439, file: !398, line: 93, baseType: !157, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !439, file: !398, line: 94, baseType: !157, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !439, file: !398, line: 95, baseType: !8, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !439, file: !398, line: 96, baseType: !139, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !439, file: !398, line: 97, baseType: !9, size: 32, offset: 352)
!448 = !DILocalVariable(name: "eleobj", scope: !449, file: !1, line: 134, type: !212)
!449 = distinct !DILexicalBlock(scope: !385, file: !1, line: 133, column: 40)
!450 = !DILocalVariable(name: "si", scope: !451, file: !1, line: 140, type: !453)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 139, column: 36)
!452 = distinct !DILexicalBlock(scope: !386, file: !1, line: 139, column: 16)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "setTypeIterator", file: !13, line: 1361, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1356, size: 192, elements: !456)
!456 = !{!457, !458, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !455, file: !13, line: 1357, baseType: !212, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !455, file: !13, line: 1358, baseType: !9, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !455, file: !13, line: 1359, baseType: !9, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !455, file: !13, line: 1360, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !19, line: 95, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !19, line: 88, size: 384, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !463, file: !19, line: 89, baseType: !17, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !463, file: !19, line: 90, baseType: !73, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !463, file: !19, line: 91, baseType: !9, size: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !463, file: !19, line: 91, baseType: !9, size: 32, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !463, file: !19, line: 92, baseType: !60, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !463, file: !19, line: 92, baseType: !60, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !463, file: !19, line: 94, baseType: !8, size: 64, offset: 320)
!472 = !DILocalVariable(name: "sdsele", scope: !451, file: !1, line: 141, type: !94)
!473 = !DILocalVariable(name: "eledigest", scope: !474, file: !1, line: 148, type: !182)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 147, column: 37)
!475 = distinct !DILexicalBlock(scope: !452, file: !1, line: 147, column: 16)
!476 = !DILocalVariable(name: "zl", scope: !477, file: !1, line: 151, type: !157)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 150, column: 50)
!478 = distinct !DILexicalBlock(scope: !474, file: !1, line: 150, column: 13)
!479 = !DILocalVariable(name: "eptr", scope: !477, file: !1, line: 152, type: !157)
!480 = !DILocalVariable(name: "sptr", scope: !477, file: !1, line: 152, type: !157)
!481 = !DILocalVariable(name: "vstr", scope: !477, file: !1, line: 153, type: !157)
!482 = !DILocalVariable(name: "vlen", scope: !477, file: !1, line: 154, type: !139)
!483 = !DILocalVariable(name: "vll", scope: !477, file: !1, line: 155, type: !8)
!484 = !DILocalVariable(name: "score", scope: !477, file: !1, line: 156, type: !7)
!485 = !DILocalVariable(name: "zs", scope: !486, file: !1, line: 181, type: !488)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 180, column: 58)
!487 = distinct !DILexicalBlock(scope: !478, file: !1, line: 180, column: 20)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!489 = !DILocalVariable(name: "di", scope: !486, file: !1, line: 182, type: !461)
!490 = !DILocalVariable(name: "de", scope: !486, file: !1, line: 183, type: !60)
!491 = !DILocalVariable(name: "sdsele", scope: !492, file: !1, line: 186, type: !94)
!492 = distinct !DILexicalBlock(scope: !486, file: !1, line: 185, column: 48)
!493 = !DILocalVariable(name: "score", scope: !492, file: !1, line: 187, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!495 = !DILocalVariable(name: "hi", scope: !496, file: !1, line: 200, type: !498)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 199, column: 37)
!497 = distinct !DILexicalBlock(scope: !475, file: !1, line: 199, column: 16)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashTypeIterator", file: !13, line: 1375, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 1367, size: 384, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "subject", scope: !500, file: !13, line: 1368, baseType: !212, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !500, file: !13, line: 1369, baseType: !9, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !500, file: !13, line: 1371, baseType: !157, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vptr", scope: !500, file: !13, line: 1371, baseType: !157, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !500, file: !13, line: 1373, baseType: !461, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !500, file: !13, line: 1374, baseType: !60, size: 64, offset: 320)
!508 = !DILocalVariable(name: "eledigest", scope: !509, file: !1, line: 202, type: !182)
!509 = distinct !DILexicalBlock(scope: !496, file: !1, line: 201, column: 43)
!510 = !DILocalVariable(name: "sdsele", scope: !509, file: !1, line: 203, type: !94)
!511 = !DILocalVariable(name: "si", scope: !512, file: !1, line: 216, type: !514)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 215, column: 39)
!513 = distinct !DILexicalBlock(scope: !497, file: !1, line: 215, column: 16)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !515, line: 48, baseType: !516)
!515 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !515, line: 29, size: 5120, elements: !517)
!517 = !{!518, !550, !551, !552, !553, !554, !555, !556, !558, !559, !591, !592, !593, !594, !598}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !516, file: !515, line: 30, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !515, line: 21, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !515, line: 16, size: 320, elements: !522)
!522 = !{!523, !542, !543, !549}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !521, file: !515, line: 17, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !526, line: 137, baseType: !527)
!526 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !526, line: 133, size: 192, elements: !528)
!528 = !{!529, !540, !541}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !527, file: !526, line: 134, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !526, line: 131, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !526, line: 98, size: 32, elements: !533)
!533 = !{!534, !535, !536, !537, !538}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !532, file: !526, line: 99, baseType: !137, size: 1, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !532, file: !526, line: 100, baseType: !137, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !532, file: !526, line: 101, baseType: !137, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !532, file: !526, line: 102, baseType: !137, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !532, file: !526, line: 130, baseType: !539, offset: 32)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !104)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !527, file: !526, line: 135, baseType: !31, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !527, file: !526, line: 136, baseType: !31, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !521, file: !515, line: 18, baseType: !31, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !521, file: !515, line: 19, baseType: !544, size: 128, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !515, line: 14, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !515, line: 11, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !545, file: !515, line: 12, baseType: !31, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !545, file: !515, line: 13, baseType: !31, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !521, file: !515, line: 20, baseType: !524, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !516, file: !515, line: 31, baseType: !544, size: 128, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !516, file: !515, line: 32, baseType: !31, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !516, file: !515, line: 33, baseType: !157, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !516, file: !515, line: 34, baseType: !157, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !516, file: !515, line: 35, baseType: !9, size: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !516, file: !515, line: 36, baseType: !9, size: 32, offset: 416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !516, file: !515, line: 37, baseType: !557, size: 128, offset: 448)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !516, file: !515, line: 38, baseType: !557, size: 128, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !516, file: !515, line: 39, baseType: !560, size: 3840, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !526, line: 186, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !526, line: 175, size: 3840, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !571, !572, !585}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !526, line: 176, baseType: !9, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !561, file: !526, line: 177, baseType: !524, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !561, file: !526, line: 178, baseType: !157, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !561, file: !526, line: 179, baseType: !4, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !561, file: !526, line: 180, baseType: !158, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !561, file: !526, line: 181, baseType: !158, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !561, file: !526, line: 182, baseType: !570, size: 1024, offset: 384)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !382)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !526, line: 183, baseType: !530, size: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !561, file: !526, line: 184, baseType: !573, size: 2304, offset: 1472)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !526, line: 150, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !526, line: 143, size: 2304, elements: !575)
!575 = !{!576, !578, !579, !580, !584}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !574, file: !526, line: 144, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !574, file: !526, line: 145, baseType: !158, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !574, file: !526, line: 145, baseType: !158, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !574, file: !526, line: 148, baseType: !581, size: 2048, offset: 192)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !574, file: !526, line: 149, baseType: !9, size: 32, offset: 2240)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !561, file: !526, line: 185, baseType: !586, size: 64, offset: 3776)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !526, line: 165, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!9, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !516, file: !515, line: 40, baseType: !157, size: 64, offset: 4544)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !516, file: !515, line: 41, baseType: !157, size: 64, offset: 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !516, file: !515, line: 42, baseType: !157, size: 64, offset: 4672)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !516, file: !515, line: 46, baseType: !595, size: 168, offset: 4736)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 168, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 21)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !516, file: !515, line: 47, baseType: !595, size: 168, offset: 4904)
!599 = !DILocalVariable(name: "id", scope: !512, file: !1, line: 218, type: !544)
!600 = !DILocalVariable(name: "numfields", scope: !512, file: !1, line: 219, type: !71)
!601 = !DILocalVariable(name: "itemid", scope: !602, file: !1, line: 222, type: !94)
!602 = distinct !DILexicalBlock(scope: !512, file: !1, line: 221, column: 56)
!603 = !DILocalVariable(name: "field", scope: !604, file: !1, line: 227, type: !157)
!604 = distinct !DILexicalBlock(scope: !602, file: !1, line: 226, column: 32)
!605 = !DILocalVariable(name: "value", scope: !604, file: !1, line: 227, type: !157)
!606 = !DILocalVariable(name: "field_len", scope: !604, file: !1, line: 228, type: !71)
!607 = !DILocalVariable(name: "value_len", scope: !604, file: !1, line: 228, type: !71)
!608 = !DILocalVariable(name: "md", scope: !609, file: !1, line: 237, type: !611)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 236, column: 39)
!610 = distinct !DILexicalBlock(scope: !513, file: !1, line: 236, column: 16)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleDigest", file: !13, line: 586, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !13, line: 583, size: 320, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !612, file: !13, line: 584, baseType: !182, size: 160)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !612, file: !13, line: 585, baseType: !182, size: 160, offset: 160)
!616 = !DILocalVariable(name: "mv", scope: !609, file: !1, line: 238, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !13, line: 550, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !13, line: 547, size: 128, elements: !620)
!620 = !{!621, !947}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !13, line: 548, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !13, line: 530, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !13, line: 517, size: 768, elements: !625)
!625 = !{!626, !627, !630, !909, !914, !919, !924, !930, !932, !937, !942, !943}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !624, file: !13, line: 518, baseType: !31, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !624, file: !13, line: 519, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !13, line: 496, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !624, file: !13, line: 520, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !13, line: 506, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!4, !635, !9}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !13, line: 555, size: 384, elements: !637)
!637 = !{!638, !639, !901, !902, !903, !904, !907}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !636, file: !13, line: 556, baseType: !158, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !636, file: !13, line: 557, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !642, line: 87, baseType: !643)
!642 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !642, line: 39, size: 832, elements: !644)
!644 = !{!645, !650, !654, !662, !666, !670, !671, !672, !673}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !643, file: !642, line: 43, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!236, !649, !4, !236}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !643, file: !642, line: 44, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!236, !649, !36, !236}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !643, file: !642, line: 45, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!658, !649}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !659, line: 173, baseType: !660)
!659 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !161, line: 100, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !161, line: 44, baseType: !73)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !643, file: !642, line: 46, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!9, !649}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !643, file: !642, line: 52, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !649, !36, !236}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !643, file: !642, line: 55, baseType: !31, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !643, file: !642, line: 58, baseType: !236, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !643, file: !642, line: 61, baseType: !236, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !643, file: !642, line: 84, baseType: !674, size: 320, offset: 512)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !642, line: 64, size: 320, elements: !675)
!675 = !{!676, !681, !892}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !674, file: !642, line: 69, baseType: !677, size: 128)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !642, line: 66, size: 128, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !677, file: !642, line: 67, baseType: !94, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !677, file: !642, line: 68, baseType: !658, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !674, file: !642, line: 75, baseType: !682, size: 192)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !642, line: 71, size: 192, elements: !683)
!683 = !{!684, !890, !891}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !682, file: !642, line: 72, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !687, line: 66, baseType: !688)
!687 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !689, line: 287, baseType: !690)
!689 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !689, line: 181, size: 1408, elements: !691)
!691 = !{!692, !693, !694, !695, !697, !698, !703, !704, !705, !858, !864, !869, !873, !874, !875, !876, !878, !880, !881, !882, !883, !884, !888, !889}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !690, file: !689, line: 182, baseType: !157, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !690, file: !689, line: 183, baseType: !9, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !690, file: !689, line: 184, baseType: !9, size: 32, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !690, file: !689, line: 185, baseType: !696, size: 16, offset: 128)
!696 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !690, file: !689, line: 186, baseType: !696, size: 16, offset: 144)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !690, file: !689, line: 187, baseType: !699, size: 128, offset: 192)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !689, line: 117, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !699, file: !689, line: 118, baseType: !157, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !699, file: !689, line: 119, baseType: !9, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !690, file: !689, line: 188, baseType: !9, size: 32, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !690, file: !689, line: 195, baseType: !4, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !690, file: !689, line: 197, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!709, !710, !4, !5, !9}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !161, line: 145, baseType: !73)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !689, line: 569, size: 14912, elements: !712)
!712 = !{!713, !714, !716, !717, !718, !719, !723, !724, !727, !728, !732, !746, !747, !748, !750, !751, !752, !828, !846, !847, !849, !856}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !711, file: !689, line: 571, baseType: !9, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !711, file: !689, line: 576, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !711, file: !689, line: 576, baseType: !715, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !711, file: !689, line: 576, baseType: !715, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !711, file: !689, line: 578, baseType: !9, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !711, file: !689, line: 579, baseType: !720, size: 200, offset: 288)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 25)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !711, file: !689, line: 582, baseType: !9, size: 32, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !711, file: !689, line: 583, baseType: !725, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !689, line: 40, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !711, file: !689, line: 585, baseType: !9, size: 32, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !711, file: !689, line: 587, baseType: !729, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !710}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !711, file: !689, line: 590, baseType: !733, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !689, line: 47, size: 256, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !734, file: !689, line: 49, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !734, file: !689, line: 50, baseType: !9, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !734, file: !689, line: 50, baseType: !9, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !734, file: !689, line: 50, baseType: !9, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !734, file: !689, line: 50, baseType: !9, size: 32, offset: 160)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !734, file: !689, line: 51, baseType: !742, size: 32, offset: 192)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 32, elements: !744)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !689, line: 25, baseType: !139)
!744 = !{!745}
!745 = !DISubrange(count: 1)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !711, file: !689, line: 591, baseType: !9, size: 32, offset: 832)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !711, file: !689, line: 592, baseType: !733, size: 64, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !711, file: !689, line: 593, baseType: !749, size: 64, offset: 960)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !711, file: !689, line: 596, baseType: !9, size: 32, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !711, file: !689, line: 597, baseType: !5, size: 64, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !711, file: !689, line: 632, baseType: !753, size: 2880, offset: 1152)
!753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !689, line: 599, size: 2880, elements: !754)
!754 = !{!755, !819}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !753, file: !689, line: 622, baseType: !756, size: 1728)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !689, line: 601, size: 1728, elements: !757)
!757 = !{!758, !759, !760, !764, !776, !777, !779, !788, !802, !803, !804, !808, !812, !813, !814, !815, !816, !817, !818}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !756, file: !689, line: 603, baseType: !139, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !756, file: !689, line: 604, baseType: !5, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !756, file: !689, line: 605, baseType: !761, size: 208, offset: 128)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 26)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !756, file: !689, line: 606, baseType: !765, size: 288, offset: 352)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !689, line: 55, size: 288, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !765, file: !689, line: 57, baseType: !9, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !765, file: !689, line: 58, baseType: !9, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !765, file: !689, line: 59, baseType: !9, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !765, file: !689, line: 60, baseType: !9, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !765, file: !689, line: 61, baseType: !9, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !765, file: !689, line: 62, baseType: !9, size: 32, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !765, file: !689, line: 63, baseType: !9, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !765, file: !689, line: 64, baseType: !9, size: 32, offset: 224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !765, file: !689, line: 65, baseType: !9, size: 32, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !756, file: !689, line: 607, baseType: !9, size: 32, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !756, file: !689, line: 608, baseType: !778, size: 64, offset: 704)
!778 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !756, file: !689, line: 609, baseType: !780, size: 112, offset: 768)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !689, line: 319, size: 112, elements: !781)
!781 = !{!782, !786, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !780, file: !689, line: 320, baseType: !783, size: 48)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 3)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !780, file: !689, line: 321, baseType: !783, size: 48, offset: 48)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !780, file: !689, line: 322, baseType: !129, size: 16, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !756, file: !689, line: 610, baseType: !789, size: 64, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !161, line: 171, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 163, size: 64, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !790, file: !161, line: 165, baseType: !9, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !790, file: !161, line: 170, baseType: !794, size: 32, offset: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !161, line: 166, size: 32, elements: !795)
!795 = !{!796, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !794, file: !161, line: 168, baseType: !797, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !237, line: 124, baseType: !139)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !794, file: !161, line: 169, baseType: !799, size: 32)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 4)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !756, file: !689, line: 611, baseType: !789, size: 64, offset: 960)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !756, file: !689, line: 612, baseType: !789, size: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !756, file: !689, line: 613, baseType: !805, size: 64, offset: 1088)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 8)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !756, file: !689, line: 614, baseType: !809, size: 192, offset: 1152)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 24)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !756, file: !689, line: 615, baseType: !9, size: 32, offset: 1344)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !756, file: !689, line: 616, baseType: !789, size: 64, offset: 1376)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !756, file: !689, line: 617, baseType: !789, size: 64, offset: 1440)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !756, file: !689, line: 618, baseType: !789, size: 64, offset: 1504)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !756, file: !689, line: 619, baseType: !789, size: 64, offset: 1568)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !756, file: !689, line: 620, baseType: !789, size: 64, offset: 1632)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !756, file: !689, line: 621, baseType: !9, size: 32, offset: 1696)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !753, file: !689, line: 631, baseType: !820, size: 2880)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !753, file: !689, line: 626, size: 2880, elements: !821)
!821 = !{!822, !826}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !820, file: !689, line: 629, baseType: !823, size: 1920)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1920, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 30)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !820, file: !689, line: 630, baseType: !827, size: 960, offset: 1920)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 960, elements: !824)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !711, file: !689, line: 636, baseType: !829, size: 64, offset: 4032)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !689, line: 93, size: 6336, elements: !831)
!831 = !{!832, !833, !834, !839}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !830, file: !689, line: 94, baseType: !829, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !830, file: !689, line: 95, baseType: !9, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !830, file: !689, line: 97, baseType: !835, size: 2048, offset: 128)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 2048, elements: !582)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !830, file: !689, line: 98, baseType: !840, size: 4160, offset: 2176)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !689, line: 74, size: 4160, elements: !841)
!841 = !{!842, !843, !844, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !840, file: !689, line: 75, baseType: !581, size: 2048)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !840, file: !689, line: 76, baseType: !581, size: 2048, offset: 2048)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !840, file: !689, line: 78, baseType: !743, size: 32, offset: 4096)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !840, file: !689, line: 81, baseType: !743, size: 32, offset: 4128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !711, file: !689, line: 637, baseType: !830, size: 6336, offset: 4096)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !711, file: !689, line: 641, baseType: !848, size: 64, offset: 10432)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !711, file: !689, line: 646, baseType: !850, size: 192, offset: 10496)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !689, line: 291, size: 192, elements: !851)
!851 = !{!852, !854, !855}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !850, file: !689, line: 293, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !850, file: !689, line: 294, baseType: !9, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !850, file: !689, line: 295, baseType: !715, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !711, file: !689, line: 648, baseType: !857, size: 4224, offset: 10688)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 4224, elements: !784)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !690, file: !689, line: 199, baseType: !859, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!709, !710, !4, !862, !9}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !690, file: !689, line: 202, baseType: !865, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !710, !4, !868, !9}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !161, line: 114, baseType: !73)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !690, file: !689, line: 203, baseType: !870, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!9, !710, !4}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !690, file: !689, line: 206, baseType: !699, size: 128, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !690, file: !689, line: 207, baseType: !157, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !690, file: !689, line: 208, baseType: !9, size: 32, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !690, file: !689, line: 211, baseType: !877, size: 24, offset: 928)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 24, elements: !784)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !690, file: !689, line: 212, baseType: !879, size: 8, offset: 952)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 8, elements: !744)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !690, file: !689, line: 215, baseType: !699, size: 128, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !690, file: !689, line: 218, baseType: !9, size: 32, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !690, file: !689, line: 219, baseType: !661, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !690, file: !689, line: 222, baseType: !710, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !690, file: !689, line: 226, baseType: !885, size: 32, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !161, line: 175, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !887, line: 12, baseType: !9)
!887 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !690, file: !689, line: 228, baseType: !789, size: 64, offset: 1312)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !690, file: !689, line: 229, baseType: !9, size: 32, offset: 1376)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !682, file: !642, line: 73, baseType: !658, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !682, file: !642, line: 74, baseType: !658, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !674, file: !642, line: 83, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !642, line: 77, size: 320, elements: !894)
!894 = !{!895, !897, !898, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !893, file: !642, line: 78, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !893, file: !642, line: 79, baseType: !896, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !893, file: !642, line: 80, baseType: !9, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !893, file: !642, line: 81, baseType: !658, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !893, file: !642, line: 82, baseType: !94, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !13, line: 558, baseType: !622, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !636, file: !13, line: 559, baseType: !9, size: 32, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !636, file: !13, line: 560, baseType: !9, size: 32, offset: 224)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !636, file: !13, line: 562, baseType: !905, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !13, line: 499, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !636, file: !13, line: 563, baseType: !908, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !624, file: !13, line: 521, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !13, line: 507, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !635, !4}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !624, file: !13, line: 522, baseType: !915, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !13, line: 510, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !635, !908, !4}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !624, file: !13, line: 523, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !13, line: 512, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!158, !36}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !624, file: !13, line: 524, baseType: !925, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !13, line: 511, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !929, !4}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !624, file: !13, line: 525, baseType: !931, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !13, line: 513, baseType: !365)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !624, file: !13, line: 526, baseType: !933, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !13, line: 508, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!9, !635, !9, !9}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !624, file: !13, line: 527, baseType: !938, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !13, line: 509, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !635, !9}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !624, file: !13, line: 528, baseType: !9, size: 32, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !624, file: !13, line: 529, baseType: !944, size: 80, offset: 672)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 80, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 10)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !13, line: 549, baseType: !4, size: 64, offset: 64)
!948 = !DILocalVariable(name: "mt", scope: !609, file: !1, line: 239, type: !622)
!949 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !950)
!950 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !951)
!951 = distinct !DILocation(line: 210, column: 13, scope: !509)
!952 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !953)
!953 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !954)
!954 = distinct !DILocation(line: 207, column: 13, scope: !509)
!955 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !956)
!956 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !957)
!957 = distinct !DILocation(line: 192, column: 17, scope: !492)
!958 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !959)
!959 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !960)
!960 = distinct !DILocation(line: 191, column: 17, scope: !492)
!961 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !962)
!962 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !963)
!963 = distinct !DILocation(line: 176, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !477, file: !1, line: 163, column: 34)
!965 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !966)
!966 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !967)
!967 = distinct !DILocation(line: 172, column: 21, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !1, line: 170, column: 24)
!969 = distinct !DILexicalBlock(scope: !964, file: !1, line: 168, column: 21)
!970 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !971)
!971 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !972)
!972 = distinct !DILocation(line: 169, column: 21, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !1, line: 168, column: 35)
!974 = !DILocation(line: 121, column: 31, scope: !330)
!975 = !DILocation(line: 121, column: 41, scope: !330)
!976 = !DILocation(line: 121, column: 64, scope: !330)
!977 = !DILocation(line: 121, column: 78, scope: !330)
!978 = !DILocation(line: 122, column: 5, scope: !330)
!979 = !DILocation(line: 122, column: 20, scope: !330)
!980 = !DILocation(line: 122, column: 14, scope: !330)
!981 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !982)
!982 = distinct !DILocation(line: 123, column: 5, scope: !330)
!983 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !982)
!984 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !982)
!985 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !982)
!986 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !982)
!987 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !982)
!988 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !982)
!989 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !982)
!990 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !982)
!991 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !982)
!992 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !982)
!993 = !DILocation(line: 124, column: 28, scope: !330)
!994 = !DILocation(line: 124, column: 15, scope: !330)
!995 = !DILocation(line: 125, column: 5, scope: !330)
!996 = !DILocation(line: 125, column: 10, scope: !330)
!997 = !DILocation(line: 128, column: 12, scope: !387)
!998 = !DILocation(line: 128, column: 9, scope: !330)
!999 = !DILocation(line: 129, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !387, file: !1, line: 128, column: 32)
!1001 = !DILocation(line: 130, column: 5, scope: !1000)
!1002 = !DILocation(line: 131, column: 32, scope: !385)
!1003 = !DILocation(line: 131, column: 27, scope: !385)
!1004 = !DILocation(line: 132, column: 9, scope: !385)
!1005 = !DILocation(line: 132, column: 23, scope: !385)
!1006 = !DILocation(line: 133, column: 15, scope: !385)
!1007 = !DILocation(line: 133, column: 9, scope: !385)
!1008 = !DILocation(line: 134, column: 28, scope: !449)
!1009 = !DILocation(line: 134, column: 19, scope: !449)
!1010 = !DILocation(line: 135, column: 13, scope: !449)
!1011 = !DILocation(line: 136, column: 13, scope: !449)
!1012 = distinct !{!1012, !1007, !1013}
!1013 = !DILocation(line: 137, column: 9, scope: !385)
!1014 = !DILocation(line: 138, column: 9, scope: !385)
!1015 = !DILocation(line: 139, column: 5, scope: !386)
!1016 = !DILocation(line: 139, column: 5, scope: !385)
!1017 = !DILocation(line: 140, column: 31, scope: !451)
!1018 = !DILocation(line: 140, column: 26, scope: !451)
!1019 = !DILocation(line: 142, column: 25, scope: !451)
!1020 = !DILocation(line: 141, column: 13, scope: !451)
!1021 = !DILocation(line: 142, column: 48, scope: !451)
!1022 = !DILocation(line: 142, column: 9, scope: !451)
!1023 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 143, column: 37, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !451, file: !1, line: 142, column: 57)
!1026 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1024)
!1027 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1024)
!1028 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1024)
!1029 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1024)
!1030 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1024)
!1031 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1024)
!1032 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1024)
!1033 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1024)
!1034 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1024)
!1035 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1024)
!1036 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1024)
!1037 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1024)
!1038 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1024)
!1039 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1024)
!1040 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1024)
!1041 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1024)
!1042 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1024)
!1043 = !DILocation(line: 0, scope: !247, inlinedAt: !1024)
!1044 = !DILocation(line: 143, column: 13, scope: !1025)
!1045 = !DILocation(line: 144, column: 13, scope: !1025)
!1046 = distinct !{!1046, !1022, !1047}
!1047 = !DILocation(line: 145, column: 9, scope: !451)
!1048 = !DILocation(line: 146, column: 9, scope: !451)
!1049 = !DILocation(line: 147, column: 5, scope: !451)
!1050 = !DILocation(line: 148, column: 9, scope: !474)
!1051 = !DILocation(line: 148, column: 23, scope: !474)
!1052 = !DILocation(line: 150, column: 16, scope: !478)
!1053 = !DILocation(line: 150, column: 13, scope: !474)
!1054 = !DILocation(line: 151, column: 36, scope: !477)
!1055 = !DILocation(line: 151, column: 28, scope: !477)
!1056 = !DILocation(line: 152, column: 13, scope: !477)
!1057 = !DILocation(line: 153, column: 13, scope: !477)
!1058 = !DILocation(line: 154, column: 13, scope: !477)
!1059 = !DILocation(line: 155, column: 13, scope: !477)
!1060 = !DILocation(line: 158, column: 20, scope: !477)
!1061 = !DILocation(line: 152, column: 28, scope: !477)
!1062 = !DILocation(line: 158, column: 18, scope: !477)
!1063 = !{!231, !231, i64 0}
!1064 = !DILocation(line: 159, column: 13, scope: !477)
!1065 = !DILocation(line: 160, column: 20, scope: !477)
!1066 = !DILocation(line: 152, column: 35, scope: !477)
!1067 = !DILocation(line: 160, column: 18, scope: !477)
!1068 = !DILocation(line: 161, column: 13, scope: !477)
!1069 = !DILocation(line: 163, column: 13, scope: !477)
!1070 = !DILocation(line: 153, column: 28, scope: !477)
!1071 = !DILocation(line: 154, column: 26, scope: !477)
!1072 = !DILocation(line: 155, column: 23, scope: !477)
!1073 = !DILocation(line: 164, column: 17, scope: !964)
!1074 = !DILocation(line: 165, column: 37, scope: !964)
!1075 = !DILocation(line: 165, column: 25, scope: !964)
!1076 = !DILocation(line: 156, column: 20, scope: !477)
!1077 = !DILocation(line: 167, column: 17, scope: !964)
!1078 = !DILocation(line: 168, column: 21, scope: !969)
!1079 = !DILocation(line: 168, column: 26, scope: !969)
!1080 = !DILocation(line: 168, column: 21, scope: !964)
!1081 = !DILocation(line: 169, column: 46, scope: !973)
!1082 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !972)
!1083 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !972)
!1084 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !972)
!1085 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !972)
!1086 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !971)
!1087 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !971)
!1088 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !971)
!1089 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !971)
!1090 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !971)
!1091 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !971)
!1092 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !971)
!1093 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !971)
!1094 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !971)
!1095 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !971)
!1096 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !971)
!1097 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !971)
!1098 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !971)
!1099 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !972)
!1100 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !972)
!1101 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !972)
!1102 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !972)
!1103 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !972)
!1104 = !DILocation(line: 170, column: 17, scope: !973)
!1105 = !DILocation(line: 171, column: 47, scope: !968)
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"long long", !204, i64 0}
!1108 = !DILocation(line: 171, column: 21, scope: !968)
!1109 = !DILocation(line: 172, column: 45, scope: !968)
!1110 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !967)
!1111 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !967)
!1112 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !967)
!1113 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !967)
!1114 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !967)
!1115 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !966)
!1116 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !966)
!1117 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !966)
!1118 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !966)
!1119 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !966)
!1120 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !966)
!1121 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !966)
!1122 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !966)
!1123 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !966)
!1124 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !966)
!1125 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !966)
!1126 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !966)
!1127 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !966)
!1128 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !966)
!1129 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !966)
!1130 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !967)
!1131 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !967)
!1132 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !967)
!1133 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !967)
!1134 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !967)
!1135 = !DILocation(line: 175, column: 17, scope: !964)
!1136 = !DILocation(line: 176, column: 41, scope: !964)
!1137 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !963)
!1138 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !963)
!1139 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !963)
!1140 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !963)
!1141 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !963)
!1142 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !962)
!1143 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !962)
!1144 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !962)
!1145 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !962)
!1146 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !962)
!1147 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !962)
!1148 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !962)
!1149 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !962)
!1150 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !962)
!1151 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !962)
!1152 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !962)
!1153 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !962)
!1154 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !962)
!1155 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !962)
!1156 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !962)
!1157 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !963)
!1158 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !963)
!1159 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !963)
!1160 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !963)
!1161 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !963)
!1162 = !DILocation(line: 177, column: 17, scope: !964)
!1163 = !DILocation(line: 178, column: 17, scope: !964)
!1164 = !DILocation(line: 163, column: 20, scope: !477)
!1165 = !DILocation(line: 163, column: 25, scope: !477)
!1166 = distinct !{!1166, !1069, !1167}
!1167 = !DILocation(line: 179, column: 13, scope: !477)
!1168 = !DILocation(line: 180, column: 9, scope: !478)
!1169 = !DILocation(line: 180, column: 9, scope: !477)
!1170 = !DILocation(line: 181, column: 27, scope: !486)
!1171 = !DILocation(line: 181, column: 19, scope: !486)
!1172 = !DILocation(line: 182, column: 52, scope: !486)
!1173 = !{!1174, !231, i64 0}
!1174 = !{!"zset", !231, i64 0, !231, i64 8}
!1175 = !DILocation(line: 182, column: 32, scope: !486)
!1176 = !DILocation(line: 182, column: 27, scope: !486)
!1177 = !DILocation(line: 185, column: 25, scope: !486)
!1178 = !DILocation(line: 183, column: 24, scope: !486)
!1179 = !DILocation(line: 185, column: 39, scope: !486)
!1180 = !DILocation(line: 185, column: 13, scope: !486)
!1181 = !DILocation(line: 186, column: 30, scope: !492)
!1182 = !{!1183, !231, i64 0}
!1183 = !{!"dictEntry", !231, i64 0, !204, i64 8, !231, i64 16}
!1184 = !DILocation(line: 186, column: 21, scope: !492)
!1185 = !DILocation(line: 187, column: 33, scope: !492)
!1186 = !DILocation(line: 187, column: 25, scope: !492)
!1187 = !DILocation(line: 189, column: 50, scope: !492)
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"double", !204, i64 0}
!1190 = !DILocation(line: 189, column: 17, scope: !492)
!1191 = !DILocation(line: 190, column: 17, scope: !492)
!1192 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 191, column: 44, scope: !492)
!1194 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1193)
!1195 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1193)
!1196 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1193)
!1197 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1193)
!1198 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1193)
!1199 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1193)
!1200 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1193)
!1201 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1193)
!1202 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1193)
!1203 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1193)
!1204 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1193)
!1205 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1193)
!1206 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1193)
!1207 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1193)
!1208 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1193)
!1209 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1193)
!1210 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1193)
!1211 = !DILocation(line: 0, scope: !247, inlinedAt: !1193)
!1212 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !960)
!1213 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !960)
!1214 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !960)
!1215 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !960)
!1216 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !960)
!1217 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !959)
!1218 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !959)
!1219 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !959)
!1220 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !959)
!1221 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !959)
!1222 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !959)
!1223 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !959)
!1224 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !959)
!1225 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !959)
!1226 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !959)
!1227 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !959)
!1228 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !959)
!1229 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !959)
!1230 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !959)
!1231 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !959)
!1232 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !960)
!1233 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !960)
!1234 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !960)
!1235 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !960)
!1236 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !960)
!1237 = !DILocation(line: 192, column: 41, scope: !492)
!1238 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !957)
!1239 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !957)
!1240 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !957)
!1241 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !957)
!1242 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !957)
!1243 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !956)
!1244 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !956)
!1245 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !956)
!1246 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !956)
!1247 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !956)
!1248 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !956)
!1249 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !956)
!1250 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !956)
!1251 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !956)
!1252 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !956)
!1253 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !956)
!1254 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !956)
!1255 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !956)
!1256 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !956)
!1257 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !956)
!1258 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !957)
!1259 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !957)
!1260 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !957)
!1261 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !957)
!1262 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !957)
!1263 = !DILocation(line: 193, column: 17, scope: !492)
!1264 = distinct !{!1264, !1180, !1265}
!1265 = !DILocation(line: 194, column: 13, scope: !486)
!1266 = !DILocation(line: 195, column: 13, scope: !486)
!1267 = !DILocation(line: 197, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !487, file: !1, line: 196, column: 16)
!1269 = !DILocation(line: 199, column: 5, scope: !475)
!1270 = !DILocation(line: 199, column: 5, scope: !474)
!1271 = !DILocation(line: 200, column: 32, scope: !496)
!1272 = !DILocation(line: 200, column: 27, scope: !496)
!1273 = !DILocation(line: 201, column: 16, scope: !496)
!1274 = !DILocation(line: 201, column: 33, scope: !496)
!1275 = !DILocation(line: 201, column: 9, scope: !496)
!1276 = !DILocation(line: 202, column: 13, scope: !509)
!1277 = !DILocation(line: 202, column: 27, scope: !509)
!1278 = !DILocation(line: 205, column: 13, scope: !509)
!1279 = !DILocation(line: 206, column: 22, scope: !509)
!1280 = !DILocation(line: 203, column: 17, scope: !509)
!1281 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 207, column: 40, scope: !509)
!1283 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1282)
!1284 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1282)
!1285 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1282)
!1286 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1282)
!1287 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1282)
!1288 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1282)
!1289 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1282)
!1290 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1282)
!1291 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1282)
!1292 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1282)
!1293 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1282)
!1294 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1282)
!1295 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1282)
!1296 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1282)
!1297 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1282)
!1298 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1282)
!1299 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1282)
!1300 = !DILocation(line: 0, scope: !247, inlinedAt: !1282)
!1301 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !954)
!1302 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !954)
!1303 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !954)
!1304 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !954)
!1305 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !954)
!1306 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !953)
!1307 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !953)
!1308 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !953)
!1309 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !953)
!1310 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !953)
!1311 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !953)
!1312 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !953)
!1313 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !953)
!1314 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !953)
!1315 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !953)
!1316 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !953)
!1317 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !953)
!1318 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !953)
!1319 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !953)
!1320 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !953)
!1321 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !954)
!1322 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !954)
!1323 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !954)
!1324 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !954)
!1325 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !954)
!1326 = !DILocation(line: 208, column: 13, scope: !509)
!1327 = !DILocation(line: 209, column: 22, scope: !509)
!1328 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 210, column: 40, scope: !509)
!1330 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1329)
!1331 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1329)
!1332 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1329)
!1333 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1329)
!1334 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1329)
!1335 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1329)
!1336 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1329)
!1337 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1329)
!1338 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1329)
!1339 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1329)
!1340 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1329)
!1341 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1329)
!1342 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1329)
!1343 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1329)
!1344 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1329)
!1345 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1329)
!1346 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1329)
!1347 = !DILocation(line: 0, scope: !247, inlinedAt: !1329)
!1348 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !951)
!1349 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !951)
!1350 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !951)
!1351 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !951)
!1352 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !951)
!1353 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !950)
!1354 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !950)
!1355 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !950)
!1356 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !950)
!1357 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !950)
!1358 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !950)
!1359 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !950)
!1360 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !950)
!1361 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !950)
!1362 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !950)
!1363 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !950)
!1364 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !950)
!1365 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !950)
!1366 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !950)
!1367 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !950)
!1368 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !951)
!1369 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !951)
!1370 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !951)
!1371 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !951)
!1372 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !951)
!1373 = !DILocation(line: 211, column: 13, scope: !509)
!1374 = !DILocation(line: 212, column: 13, scope: !509)
!1375 = !DILocation(line: 213, column: 9, scope: !496)
!1376 = distinct !{!1376, !1275, !1375}
!1377 = !DILocation(line: 214, column: 9, scope: !496)
!1378 = !DILocation(line: 215, column: 5, scope: !496)
!1379 = !DILocation(line: 216, column: 9, scope: !512)
!1380 = !DILocation(line: 217, column: 36, scope: !512)
!1381 = !DILocation(line: 216, column: 24, scope: !512)
!1382 = !DILocation(line: 217, column: 9, scope: !512)
!1383 = !DILocation(line: 218, column: 9, scope: !512)
!1384 = !DILocation(line: 219, column: 9, scope: !512)
!1385 = !DILocation(line: 218, column: 18, scope: !512)
!1386 = !DILocation(line: 219, column: 17, scope: !512)
!1387 = !DILocation(line: 221, column: 15, scope: !512)
!1388 = !DILocation(line: 221, column: 9, scope: !512)
!1389 = !DILocation(line: 222, column: 36, scope: !602)
!1390 = !DILocation(line: 222, column: 58, scope: !602)
!1391 = !{!1392, !264, i64 0}
!1392 = !{!"streamID", !264, i64 0, !264, i64 8}
!1393 = !DILocation(line: 222, column: 64, scope: !602)
!1394 = !{!1392, !264, i64 8}
!1395 = !DILocation(line: 222, column: 26, scope: !602)
!1396 = !DILocation(line: 222, column: 17, scope: !602)
!1397 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 223, column: 37, scope: !602)
!1399 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1398)
!1400 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1398)
!1401 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1398)
!1402 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1398)
!1403 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1398)
!1404 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1398)
!1405 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1398)
!1406 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1398)
!1407 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1398)
!1408 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1398)
!1409 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1398)
!1410 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1398)
!1411 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1398)
!1412 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1398)
!1413 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1398)
!1414 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1398)
!1415 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1398)
!1416 = !DILocation(line: 0, scope: !247, inlinedAt: !1398)
!1417 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 223, column: 13, scope: !602)
!1419 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !1418)
!1420 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !1418)
!1421 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !1418)
!1422 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !1418)
!1423 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !1418)
!1424 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !1418)
!1425 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !1418)
!1426 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !1418)
!1427 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !1418)
!1428 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !1418)
!1429 = !DILocation(line: 224, column: 13, scope: !602)
!1430 = !DILocation(line: 226, column: 28, scope: !602)
!1431 = !DILocation(line: 226, column: 13, scope: !602)
!1432 = distinct !{!1432, !1388, !1433}
!1433 = !DILocation(line: 234, column: 9, scope: !512)
!1434 = !DILocation(line: 227, column: 17, scope: !604)
!1435 = !DILocation(line: 228, column: 17, scope: !604)
!1436 = !DILocation(line: 227, column: 32, scope: !604)
!1437 = !DILocation(line: 227, column: 40, scope: !604)
!1438 = !DILocation(line: 228, column: 25, scope: !604)
!1439 = !DILocation(line: 228, column: 36, scope: !604)
!1440 = !DILocation(line: 229, column: 17, scope: !604)
!1441 = !DILocation(line: 231, column: 34, scope: !604)
!1442 = !DILocation(line: 231, column: 40, scope: !604)
!1443 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 231, column: 17, scope: !604)
!1445 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !1444)
!1446 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !1444)
!1447 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !1444)
!1448 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !1444)
!1449 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !1444)
!1450 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !1444)
!1451 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !1444)
!1452 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !1444)
!1453 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !1444)
!1454 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !1444)
!1455 = !DILocation(line: 232, column: 34, scope: !604)
!1456 = !DILocation(line: 232, column: 40, scope: !604)
!1457 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 232, column: 17, scope: !604)
!1459 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !1458)
!1460 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !1458)
!1461 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !1458)
!1462 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !1458)
!1463 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !1458)
!1464 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !1458)
!1465 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !1458)
!1466 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !1458)
!1467 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !1458)
!1468 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !1458)
!1469 = !DILocation(line: 233, column: 13, scope: !602)
!1470 = distinct !{!1470, !1431, !1469}
!1471 = !DILocation(line: 235, column: 9, scope: !512)
!1472 = !DILocation(line: 236, column: 5, scope: !513)
!1473 = !DILocation(line: 236, column: 5, scope: !512)
!1474 = !DILocation(line: 237, column: 9, scope: !609)
!1475 = !DILocation(line: 238, column: 30, scope: !609)
!1476 = !DILocation(line: 238, column: 22, scope: !609)
!1477 = !DILocation(line: 239, column: 30, scope: !609)
!1478 = !{!1479, !231, i64 0}
!1479 = !{!"moduleValue", !231, i64 0, !231, i64 8}
!1480 = !DILocation(line: 239, column: 21, scope: !609)
!1481 = !DILocation(line: 240, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !609, file: !1, line: 240, column: 9)
!1483 = !DILocation(line: 241, column: 17, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !609, file: !1, line: 241, column: 13)
!1485 = !{!1486, !231, i64 48}
!1486 = !{!"RedisModuleType", !264, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !231, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !230, i64 80, !204, i64 84}
!1487 = !DILocation(line: 241, column: 13, scope: !1484)
!1488 = !DILocation(line: 241, column: 13, scope: !609)
!1489 = !DILocation(line: 242, column: 32, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1484, file: !1, line: 241, column: 25)
!1491 = !{!1479, !231, i64 8}
!1492 = !DILocation(line: 237, column: 27, scope: !609)
!1493 = !DILocation(line: 242, column: 13, scope: !1490)
!1494 = !DILocation(line: 243, column: 13, scope: !1490)
!1495 = !DILocation(line: 244, column: 9, scope: !1490)
!1496 = !DILocation(line: 245, column: 5, scope: !610)
!1497 = !DILocation(line: 246, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !610, file: !1, line: 245, column: 12)
!1499 = !DILocation(line: 249, column: 20, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !330, file: !1, line: 249, column: 9)
!1501 = !DILocation(line: 249, column: 9, scope: !330)
!1502 = !DILocation(line: 249, column: 27, scope: !1500)
!1503 = !DILocation(line: 250, column: 1, scope: !330)
!1504 = distinct !DISubprogram(name: "_serverAssert", scope: !1, file: !1, line: 635, type: !1505, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !862, !862, !9}
!1507 = !{!1508, !1509, !1510}
!1508 = !DILocalVariable(name: "estr", arg: 1, scope: !1504, file: !1, line: 635, type: !862)
!1509 = !DILocalVariable(name: "file", arg: 2, scope: !1504, file: !1, line: 635, type: !862)
!1510 = !DILocalVariable(name: "line", arg: 3, scope: !1504, file: !1, line: 635, type: !9)
!1511 = !DILocation(line: 635, column: 32, scope: !1504)
!1512 = !DILocation(line: 635, column: 50, scope: !1504)
!1513 = !DILocation(line: 635, column: 60, scope: !1504)
!1514 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !1517)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 727, column: 9)
!1516 = distinct !DISubprogram(name: "bugReportStart", scope: !1, file: !1, line: 726, type: !837, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!1517 = distinct !DILocation(line: 636, column: 5, scope: !1504)
!1518 = !{!1519, !230, i64 3132}
!1519 = !{!"redisServer", !230, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !230, i64 32, !230, i64 36, !230, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !230, i64 80, !230, i64 84, !230, i64 88, !230, i64 92, !231, i64 96, !231, i64 104, !230, i64 112, !230, i64 116, !204, i64 120, !230, i64 164, !264, i64 168, !230, i64 176, !231, i64 184, !231, i64 192, !231, i64 200, !204, i64 208, !230, i64 216, !230, i64 220, !204, i64 224, !230, i64 352, !231, i64 360, !230, i64 368, !204, i64 372, !230, i64 436, !230, i64 440, !204, i64 444, !230, i64 508, !231, i64 512, !231, i64 520, !231, i64 528, !231, i64 536, !231, i64 544, !231, i64 552, !231, i64 560, !230, i64 568, !1107, i64 576, !204, i64 584, !231, i64 840, !264, i64 848, !230, i64 856, !230, i64 860, !264, i64 864, !264, i64 872, !264, i64 880, !264, i64 888, !231, i64 896, !231, i64 904, !231, i64 912, !231, i64 920, !231, i64 928, !231, i64 936, !231, i64 944, !231, i64 952, !231, i64 960, !231, i64 968, !231, i64 976, !231, i64 984, !231, i64 992, !264, i64 1000, !1107, i64 1008, !1107, i64 1016, !1107, i64 1024, !1189, i64 1032, !1107, i64 1040, !1107, i64 1048, !1107, i64 1056, !1107, i64 1064, !1107, i64 1072, !1107, i64 1080, !1107, i64 1088, !1107, i64 1096, !1107, i64 1104, !264, i64 1112, !1107, i64 1120, !1189, i64 1128, !1107, i64 1136, !1107, i64 1144, !1107, i64 1152, !1107, i64 1160, !231, i64 1168, !1107, i64 1176, !1107, i64 1184, !264, i64 1192, !1520, i64 1200, !1107, i64 1240, !1107, i64 1248, !264, i64 1256, !264, i64 1264, !204, i64 1272, !230, i64 1728, !230, i64 1732, !230, i64 1736, !230, i64 1740, !230, i64 1744, !264, i64 1752, !230, i64 1760, !230, i64 1764, !230, i64 1768, !230, i64 1772, !264, i64 1776, !264, i64 1784, !230, i64 1792, !230, i64 1796, !230, i64 1800, !230, i64 1804, !204, i64 1808, !230, i64 1880, !230, i64 1884, !231, i64 1888, !230, i64 1896, !230, i64 1900, !264, i64 1904, !264, i64 1912, !264, i64 1920, !264, i64 1928, !230, i64 1936, !230, i64 1940, !231, i64 1944, !231, i64 1952, !230, i64 1960, !230, i64 1964, !264, i64 1968, !264, i64 1976, !264, i64 1984, !264, i64 1992, !230, i64 2000, !264, i64 2008, !230, i64 2016, !230, i64 2020, !230, i64 2024, !230, i64 2028, !230, i64 2032, !230, i64 2036, !230, i64 2040, !230, i64 2044, !230, i64 2048, !230, i64 2052, !230, i64 2056, !230, i64 2060, !230, i64 2064, !231, i64 2072, !1107, i64 2080, !1107, i64 2088, !230, i64 2096, !231, i64 2104, !230, i64 2112, !231, i64 2120, !230, i64 2128, !230, i64 2132, !264, i64 2136, !264, i64 2144, !264, i64 2152, !264, i64 2160, !230, i64 2168, !230, i64 2172, !230, i64 2176, !230, i64 2180, !230, i64 2184, !230, i64 2188, !204, i64 2192, !1521, i64 2200, !1522, i64 2224, !231, i64 2240, !230, i64 2248, !231, i64 2256, !230, i64 2264, !204, i64 2268, !204, i64 2309, !1107, i64 2352, !1107, i64 2360, !230, i64 2368, !230, i64 2372, !231, i64 2376, !1107, i64 2384, !1107, i64 2392, !1107, i64 2400, !1107, i64 2408, !264, i64 2416, !264, i64 2424, !230, i64 2432, !230, i64 2436, !230, i64 2440, !230, i64 2444, !230, i64 2448, !231, i64 2456, !231, i64 2464, !230, i64 2472, !230, i64 2476, !231, i64 2480, !231, i64 2488, !230, i64 2496, !230, i64 2500, !264, i64 2504, !264, i64 2512, !264, i64 2520, !230, i64 2528, !230, i64 2532, !231, i64 2536, !264, i64 2544, !230, i64 2552, !230, i64 2556, !230, i64 2560, !264, i64 2568, !230, i64 2576, !230, i64 2580, !230, i64 2584, !231, i64 2592, !204, i64 2600, !1107, i64 2648, !230, i64 2656, !231, i64 2664, !231, i64 2672, !230, i64 2680, !231, i64 2688, !230, i64 2696, !230, i64 2700, !1107, i64 2704, !230, i64 2712, !230, i64 2716, !230, i64 2720, !230, i64 2724, !1107, i64 2728, !230, i64 2736, !204, i64 2740, !231, i64 2768, !231, i64 2776, !230, i64 2784, !230, i64 2788, !230, i64 2792, !230, i64 2796, !264, i64 2800, !264, i64 2808, !264, i64 2816, !264, i64 2824, !264, i64 2832, !264, i64 2840, !264, i64 2848, !264, i64 2856, !230, i64 2864, !230, i64 2868, !264, i64 2872, !264, i64 2880, !230, i64 2888, !1107, i64 2896, !231, i64 2904, !231, i64 2912, !230, i64 2920, !230, i64 2924, !1107, i64 2928, !231, i64 2936, !231, i64 2944, !230, i64 2952, !230, i64 2956, !230, i64 2960, !230, i64 2964, !231, i64 2968, !230, i64 2976, !230, i64 2980, !230, i64 2984, !231, i64 2992, !231, i64 3000, !231, i64 3008, !231, i64 3016, !1107, i64 3024, !1107, i64 3032, !1107, i64 3040, !230, i64 3048, !230, i64 3052, !230, i64 3056, !230, i64 3060, !230, i64 3064, !230, i64 3068, !230, i64 3072, !230, i64 3076, !230, i64 3080, !230, i64 3084, !230, i64 3088, !1107, i64 3096, !231, i64 3104, !231, i64 3112, !231, i64 3120, !230, i64 3128, !230, i64 3132, !230, i64 3136, !264, i64 3144, !231, i64 3152, !231, i64 3160, !231, i64 3168}
!1520 = !{!"malloc_stats", !264, i64 0, !264, i64 8, !264, i64 16, !264, i64 24, !264, i64 32}
!1521 = !{!"", !230, i64 0, !264, i64 8, !1107, i64 16}
!1522 = !{!"redisOpArray", !231, i64 0, !230, i64 8}
!1523 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !1517)
!1524 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !1517)
!1525 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !1517)
!1526 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 727, column: 39)
!1527 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !1517)
!1528 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !1517)
!1529 = !DILocation(line: 637, column: 5, scope: !1504)
!1530 = !DILocation(line: 638, column: 5, scope: !1504)
!1531 = !DILocation(line: 645, column: 18, scope: !1504)
!1532 = !DILocation(line: 646, column: 1, scope: !1504)
!1533 = distinct !DISubprogram(name: "_serverPanic", scope: !1, file: !1, line: 708, type: !1534, isLocal: false, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !862, !9, !862, null}
!1536 = !{!1537, !1538, !1539, !1540, !1552}
!1537 = !DILocalVariable(name: "file", arg: 1, scope: !1533, file: !1, line: 708, type: !862)
!1538 = !DILocalVariable(name: "line", arg: 2, scope: !1533, file: !1, line: 708, type: !9)
!1539 = !DILocalVariable(name: "msg", arg: 3, scope: !1533, file: !1, line: 708, type: !862)
!1540 = !DILocalVariable(name: "ap", scope: !1533, file: !1, line: 709, type: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !687, line: 46, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1543, line: 51, baseType: !1544)
!1543 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 709, baseType: !1545)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 192, elements: !744)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 709, size: 192, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1546, file: !1, line: 709, baseType: !139, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1546, file: !1, line: 709, baseType: !139, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1546, file: !1, line: 709, baseType: !4, size: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1546, file: !1, line: 709, baseType: !4, size: 64, offset: 128)
!1552 = !DILocalVariable(name: "fmtmsg", scope: !1533, file: !1, line: 711, type: !1553)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 256)
!1556 = !DILocation(line: 708, column: 31, scope: !1533)
!1557 = !DILocation(line: 708, column: 41, scope: !1533)
!1558 = !DILocation(line: 708, column: 59, scope: !1533)
!1559 = !DILocation(line: 709, column: 5, scope: !1533)
!1560 = !DILocation(line: 709, column: 13, scope: !1533)
!1561 = !DILocation(line: 710, column: 5, scope: !1533)
!1562 = !DILocation(line: 711, column: 5, scope: !1533)
!1563 = !DILocation(line: 711, column: 10, scope: !1533)
!1564 = !DILocation(line: 712, column: 5, scope: !1533)
!1565 = !DILocation(line: 713, column: 5, scope: !1533)
!1566 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 715, column: 5, scope: !1533)
!1568 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !1567)
!1569 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !1567)
!1570 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !1567)
!1571 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !1567)
!1572 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !1567)
!1573 = !DILocation(line: 716, column: 5, scope: !1533)
!1574 = !DILocation(line: 717, column: 5, scope: !1533)
!1575 = !DILocation(line: 718, column: 5, scope: !1533)
!1576 = !DILocation(line: 722, column: 5, scope: !1533)
!1577 = !DILocation(line: 723, column: 18, scope: !1533)
!1578 = !DILocation(line: 724, column: 1, scope: !1533)
!1579 = distinct !DISubprogram(name: "computeDatasetDigest", scope: !1, file: !1, line: 258, type: !1580, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !157}
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1593, !1595, !1596}
!1583 = !DILocalVariable(name: "final", arg: 1, scope: !1579, file: !1, line: 258, type: !157)
!1584 = !DILocalVariable(name: "digest", scope: !1579, file: !1, line: 259, type: !182)
!1585 = !DILocalVariable(name: "di", scope: !1579, file: !1, line: 260, type: !461)
!1586 = !DILocalVariable(name: "de", scope: !1579, file: !1, line: 261, type: !60)
!1587 = !DILocalVariable(name: "j", scope: !1579, file: !1, line: 262, type: !9)
!1588 = !DILocalVariable(name: "aux", scope: !1579, file: !1, line: 263, type: !137)
!1589 = !DILocalVariable(name: "db", scope: !1590, file: !1, line: 268, type: !333)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !1, line: 267, column: 40)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 267, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1579, file: !1, line: 267, column: 5)
!1593 = !DILocalVariable(name: "key", scope: !1594, file: !1, line: 280, type: !94)
!1594 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 279, column: 44)
!1595 = !DILocalVariable(name: "keyobj", scope: !1594, file: !1, line: 281, type: !212)
!1596 = !DILocalVariable(name: "o", scope: !1594, file: !1, line: 281, type: !212)
!1597 = !DILocation(line: 66, column: 19, scope: !154, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 287, column: 13, scope: !1594)
!1600 = !DILocation(line: 258, column: 42, scope: !1579)
!1601 = !DILocation(line: 259, column: 5, scope: !1579)
!1602 = !DILocation(line: 259, column: 19, scope: !1579)
!1603 = !DILocation(line: 260, column: 19, scope: !1579)
!1604 = !DILocation(line: 263, column: 5, scope: !1579)
!1605 = !DILocation(line: 265, column: 5, scope: !1579)
!1606 = !DILocation(line: 262, column: 9, scope: !1579)
!1607 = !DILocation(line: 267, column: 28, scope: !1591)
!1608 = !{!1519, !230, i64 1792}
!1609 = !DILocation(line: 267, column: 19, scope: !1591)
!1610 = !DILocation(line: 267, column: 5, scope: !1592)
!1611 = !DILocation(line: 268, column: 30, scope: !1590)
!1612 = !{!1519, !231, i64 48}
!1613 = !DILocation(line: 268, column: 32, scope: !1590)
!1614 = !DILocation(line: 268, column: 18, scope: !1590)
!1615 = !DILocation(line: 270, column: 13, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 270, column: 13)
!1617 = !{!1618, !231, i64 0}
!1618 = !{!"redisDb", !231, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !230, i64 40, !1107, i64 48, !231, i64 56}
!1619 = !{!1620, !264, i64 24}
!1620 = !{!"dictht", !231, i64 0, !264, i64 8, !264, i64 16, !264, i64 24}
!1621 = !DILocation(line: 270, column: 32, scope: !1616)
!1622 = !DILocation(line: 270, column: 13, scope: !1590)
!1623 = !DILocation(line: 271, column: 14, scope: !1590)
!1624 = !DILocation(line: 275, column: 15, scope: !1590)
!1625 = !DILocation(line: 263, column: 14, scope: !1579)
!1626 = !DILocation(line: 275, column: 13, scope: !1590)
!1627 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 276, column: 9, scope: !1590)
!1629 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !1628)
!1630 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !1628)
!1631 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !1628)
!1632 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !1628)
!1633 = !DILocation(line: 101, column: 5, scope: !270, inlinedAt: !1628)
!1634 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !1628)
!1635 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !1628)
!1636 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !1628)
!1637 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !1628)
!1638 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !1628)
!1639 = !DILocation(line: 279, column: 21, scope: !1590)
!1640 = !DILocation(line: 261, column: 16, scope: !1579)
!1641 = !DILocation(line: 279, column: 35, scope: !1590)
!1642 = !DILocation(line: 279, column: 9, scope: !1590)
!1643 = !DILocation(line: 283, column: 13, scope: !1594)
!1644 = !DILocation(line: 284, column: 19, scope: !1594)
!1645 = !DILocation(line: 280, column: 17, scope: !1594)
!1646 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 285, column: 45, scope: !1594)
!1648 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1647)
!1649 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1647)
!1650 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1647)
!1651 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1647)
!1652 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1647)
!1653 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1647)
!1654 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1647)
!1655 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1647)
!1656 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1647)
!1657 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1647)
!1658 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1647)
!1659 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1647)
!1660 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1647)
!1661 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1647)
!1662 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1647)
!1663 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1647)
!1664 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1647)
!1665 = !DILocation(line: 0, scope: !247, inlinedAt: !1647)
!1666 = !DILocation(line: 285, column: 22, scope: !1594)
!1667 = !DILocation(line: 281, column: 19, scope: !1594)
!1668 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 287, column: 34, scope: !1594)
!1670 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !1669)
!1671 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !1669)
!1672 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !1669)
!1673 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !1669)
!1674 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !1669)
!1675 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !1669)
!1676 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !1669)
!1677 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !1669)
!1678 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !1669)
!1679 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !1669)
!1680 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !1669)
!1681 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !1669)
!1682 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !1669)
!1683 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !1669)
!1684 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !1669)
!1685 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !1669)
!1686 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !1669)
!1687 = !DILocation(line: 0, scope: !247, inlinedAt: !1669)
!1688 = !DILocation(line: 97, column: 31, scope: !270, inlinedAt: !1599)
!1689 = !DILocation(line: 97, column: 45, scope: !270, inlinedAt: !1599)
!1690 = !DILocation(line: 97, column: 57, scope: !270, inlinedAt: !1599)
!1691 = !DILocation(line: 98, column: 5, scope: !270, inlinedAt: !1599)
!1692 = !DILocation(line: 99, column: 11, scope: !270, inlinedAt: !1599)
!1693 = !DILocation(line: 64, column: 31, scope: !154, inlinedAt: !1598)
!1694 = !DILocation(line: 64, column: 45, scope: !154, inlinedAt: !1598)
!1695 = !DILocation(line: 64, column: 57, scope: !154, inlinedAt: !1598)
!1696 = !DILocation(line: 65, column: 5, scope: !154, inlinedAt: !1598)
!1697 = !DILocation(line: 66, column: 5, scope: !154, inlinedAt: !1598)
!1698 = !DILocation(line: 66, column: 30, scope: !154, inlinedAt: !1598)
!1699 = !DILocation(line: 65, column: 14, scope: !154, inlinedAt: !1598)
!1700 = !DILocation(line: 69, column: 5, scope: !154, inlinedAt: !1598)
!1701 = !DILocation(line: 70, column: 23, scope: !154, inlinedAt: !1598)
!1702 = !DILocation(line: 70, column: 5, scope: !154, inlinedAt: !1598)
!1703 = !DILocation(line: 71, column: 5, scope: !154, inlinedAt: !1598)
!1704 = !DILocation(line: 67, column: 9, scope: !154, inlinedAt: !1598)
!1705 = !DILocation(line: 74, column: 22, scope: !201, inlinedAt: !1598)
!1706 = !DILocation(line: 74, column: 19, scope: !201, inlinedAt: !1598)
!1707 = !DILocation(line: 75, column: 1, scope: !154, inlinedAt: !1598)
!1708 = !DILocation(line: 98, column: 14, scope: !270, inlinedAt: !1599)
!1709 = !DILocation(line: 102, column: 5, scope: !270, inlinedAt: !1599)
!1710 = !DILocation(line: 103, column: 5, scope: !270, inlinedAt: !1599)
!1711 = !DILocation(line: 104, column: 5, scope: !270, inlinedAt: !1599)
!1712 = !DILocation(line: 105, column: 1, scope: !270, inlinedAt: !1599)
!1713 = !DILocation(line: 289, column: 17, scope: !1594)
!1714 = !DILocation(line: 281, column: 28, scope: !1594)
!1715 = !DILocation(line: 290, column: 13, scope: !1594)
!1716 = !DILocation(line: 293, column: 13, scope: !1594)
!1717 = !DILocation(line: 294, column: 13, scope: !1594)
!1718 = distinct !{!1718, !1642, !1719}
!1719 = !DILocation(line: 295, column: 9, scope: !1590)
!1720 = !DILocation(line: 296, column: 9, scope: !1590)
!1721 = !DILocation(line: 297, column: 5, scope: !1591)
!1722 = !DILocation(line: 267, column: 36, scope: !1591)
!1723 = distinct !{!1723, !1610, !1724}
!1724 = !DILocation(line: 297, column: 5, scope: !1592)
!1725 = !DILocation(line: 298, column: 1, scope: !1579)
!1726 = distinct !DISubprogram(name: "debugCommand", scope: !1, file: !1, line: 300, type: !1727, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1845)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !13, line: 780, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !13, line: 723, size: 135360, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1744, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1794, !1795, !1799, !1800, !1816, !1817, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1731, file: !13, line: 724, baseType: !31, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1731, file: !13, line: 725, baseType: !9, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1731, file: !13, line: 726, baseType: !333, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !13, line: 727, baseType: !212, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1731, file: !13, line: 728, baseType: !94, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1731, file: !13, line: 729, baseType: !158, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1731, file: !13, line: 730, baseType: !94, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1731, file: !13, line: 734, baseType: !158, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1731, file: !13, line: 735, baseType: !9, size: 32, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1731, file: !13, line: 736, baseType: !1743, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1731, file: !13, line: 737, baseType: !1745, size: 64, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !13, line: 1307, size: 640, elements: !1747)
!1747 = !{!1748, !1749, !1752, !1753, !1754, !1755, !1760, !1761, !1762, !1763, !1764}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1746, file: !13, line: 1308, baseType: !5, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1746, file: !13, line: 1309, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !13, line: 1305, baseType: !1727)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1746, file: !13, line: 1310, baseType: !9, size: 32, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1746, file: !13, line: 1311, baseType: !5, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1746, file: !13, line: 1312, baseType: !9, size: 32, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1746, file: !13, line: 1315, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !13, line: 1306, baseType: !1758)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!896, !1745, !1743, !9, !896}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1746, file: !13, line: 1317, baseType: !9, size: 32, offset: 384)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1746, file: !13, line: 1318, baseType: !9, size: 32, offset: 416)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1746, file: !13, line: 1319, baseType: !9, size: 32, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1746, file: !13, line: 1320, baseType: !8, size: 64, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1746, file: !13, line: 1320, baseType: !8, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1731, file: !13, line: 737, baseType: !1745, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1731, file: !13, line: 738, baseType: !9, size: 32, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1731, file: !13, line: 739, baseType: !9, size: 32, offset: 800)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1731, file: !13, line: 740, baseType: !73, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1731, file: !13, line: 741, baseType: !345, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1731, file: !13, line: 742, baseType: !778, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1731, file: !13, line: 743, baseType: !158, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1731, file: !13, line: 745, baseType: !1773, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1774, line: 34, baseType: !73)
!1774 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1731, file: !13, line: 746, baseType: !1773, size: 64, offset: 1152)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1731, file: !13, line: 747, baseType: !1773, size: 64, offset: 1216)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !13, line: 748, baseType: !9, size: 32, offset: 1280)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1731, file: !13, line: 749, baseType: !9, size: 32, offset: 1312)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1731, file: !13, line: 750, baseType: !9, size: 32, offset: 1344)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1731, file: !13, line: 751, baseType: !9, size: 32, offset: 1376)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1731, file: !13, line: 752, baseType: !9, size: 32, offset: 1408)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1731, file: !13, line: 753, baseType: !658, size: 64, offset: 1472)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1731, file: !13, line: 754, baseType: !658, size: 64, offset: 1536)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1731, file: !13, line: 755, baseType: !94, size: 64, offset: 1600)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1731, file: !13, line: 756, baseType: !8, size: 64, offset: 1664)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1731, file: !13, line: 757, baseType: !8, size: 64, offset: 1728)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1731, file: !13, line: 758, baseType: !8, size: 64, offset: 1792)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1731, file: !13, line: 759, baseType: !8, size: 64, offset: 1856)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1731, file: !13, line: 760, baseType: !8, size: 64, offset: 1920)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1731, file: !13, line: 763, baseType: !1791, size: 328, offset: 1984)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 41)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1731, file: !13, line: 764, baseType: !9, size: 32, offset: 2336)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1731, file: !13, line: 765, baseType: !1796, size: 368, offset: 2368)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 368, elements: !1797)
!1797 = !{!1798}
!1798 = !DISubrange(count: 46)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1731, file: !13, line: 766, baseType: !9, size: 32, offset: 2752)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1731, file: !13, line: 767, baseType: !1801, size: 256, offset: 2816)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !13, line: 673, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !13, line: 665, size: 256, elements: !1803)
!1803 = !{!1804, !1812, !1813, !1814, !1815}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1802, file: !13, line: 666, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !13, line: 663, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !13, line: 659, size: 192, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1807, file: !13, line: 660, baseType: !1743, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1807, file: !13, line: 661, baseType: !9, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1807, file: !13, line: 662, baseType: !1745, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1802, file: !13, line: 667, baseType: !9, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1802, file: !13, line: 668, baseType: !9, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1802, file: !13, line: 671, baseType: !9, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1802, file: !13, line: 672, baseType: !1773, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1731, file: !13, line: 768, baseType: !9, size: 32, offset: 3072)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1731, file: !13, line: 769, baseType: !1818, size: 704, offset: 3136)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !13, line: 703, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !13, line: 677, size: 704, elements: !1820)
!1820 = !{!1821, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1819, file: !13, line: 679, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !13, line: 52, baseType: !8)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1819, file: !13, line: 683, baseType: !17, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1819, file: !13, line: 685, baseType: !212, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1819, file: !13, line: 689, baseType: !158, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1819, file: !13, line: 690, baseType: !212, size: 64, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1819, file: !13, line: 691, baseType: !212, size: 64, offset: 320)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1819, file: !13, line: 692, baseType: !1822, size: 64, offset: 384)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1819, file: !13, line: 692, baseType: !1822, size: 64, offset: 448)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1819, file: !13, line: 693, baseType: !9, size: 32, offset: 512)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1819, file: !13, line: 696, baseType: !9, size: 32, offset: 544)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1819, file: !13, line: 697, baseType: !8, size: 64, offset: 576)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1819, file: !13, line: 700, baseType: !4, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1731, file: !13, line: 770, baseType: !8, size: 64, offset: 3840)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1731, file: !13, line: 771, baseType: !345, size: 64, offset: 3904)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1731, file: !13, line: 772, baseType: !17, size: 64, offset: 3968)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1731, file: !13, line: 773, baseType: !345, size: 64, offset: 4032)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1731, file: !13, line: 774, baseType: !94, size: 64, offset: 4096)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1731, file: !13, line: 775, baseType: !351, size: 64, offset: 4160)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1731, file: !13, line: 778, baseType: !9, size: 32, offset: 4224)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1731, file: !13, line: 779, baseType: !1842, size: 131072, offset: 4256)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 16384)
!1845 = !{!1846, !1847, !1851, !1856, !1857, !1860, !1872, !1874, !1875, !1878, !1881, !1882, !1883, !1887, !1890, !1891, !1893, !1894, !1895, !1896, !1897, !1899, !1902, !1903, !1904, !1907, !1910, !1911, !1912, !1913, !1914, !1918, !1921, !1924, !1925, !1927, !1931, !1934, !1935, !1936, !1938, !1941, !1942, !1947, !1952, !1955, !1958, !1959, !1963, !1966, !1967, !1970}
!1846 = !DILocalVariable(name: "c", arg: 1, scope: !1726, file: !1, line: 300, type: !1729)
!1847 = !DILocalVariable(name: "help", scope: !1848, file: !1, line: 302, type: !1850)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 301, column: 62)
!1849 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 301, column: 9)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 1536, elements: !810)
!1851 = !DILocalVariable(name: "delay", scope: !1852, file: !1, line: 336, type: !8)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 335, column: 5)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 333, column: 16)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 331, column: 16)
!1855 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 329, column: 16)
!1856 = !DILocalVariable(name: "flags", scope: !1852, file: !1, line: 342, type: !9)
!1857 = !DILocalVariable(name: "ptr", scope: !1858, file: !1, line: 348, type: !4)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 347, column: 52)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 347, column: 16)
!1860 = !DILocalVariable(name: "rsi", scope: !1861, file: !1, line: 357, type: !1865)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 356, column: 55)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 356, column: 16)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 353, column: 16)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !1, line: 351, column: 16)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !13, line: 912, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !13, line: 904, size: 512, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !1866, file: !13, line: 906, baseType: !9, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !1866, file: !13, line: 909, baseType: !9, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !1866, file: !13, line: 910, baseType: !1791, size: 328, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !1866, file: !13, line: 911, baseType: !8, size: 64, offset: 448)
!1872 = !DILocalVariable(name: "rsiptr", scope: !1861, file: !1, line: 357, type: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1874 = !DILocalVariable(name: "ret", scope: !1861, file: !1, line: 365, type: !9)
!1875 = !DILocalVariable(name: "ret", scope: !1876, file: !1, line: 377, type: !9)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 373, column: 56)
!1877 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 373, column: 16)
!1878 = !DILocalVariable(name: "de", scope: !1879, file: !1, line: 387, type: !60)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 386, column: 71)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 386, column: 16)
!1881 = !DILocalVariable(name: "val", scope: !1879, file: !1, line: 388, type: !212)
!1882 = !DILocalVariable(name: "strenc", scope: !1879, file: !1, line: 389, type: !5)
!1883 = !DILocalVariable(name: "extra", scope: !1879, file: !1, line: 398, type: !1884)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1104, elements: !1885)
!1885 = !{!1886}
!1886 = !DISubrange(count: 138)
!1887 = !DILocalVariable(name: "nextra", scope: !1888, file: !1, line: 400, type: !5)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 399, column: 54)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 399, column: 13)
!1890 = !DILocalVariable(name: "remaining", scope: !1888, file: !1, line: 401, type: !9)
!1891 = !DILocalVariable(name: "ql", scope: !1888, file: !1, line: 402, type: !1892)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1893 = !DILocalVariable(name: "used", scope: !1888, file: !1, line: 404, type: !9)
!1894 = !DILocalVariable(name: "avg", scope: !1888, file: !1, line: 408, type: !7)
!1895 = !DILocalVariable(name: "compressed", scope: !1888, file: !1, line: 417, type: !9)
!1896 = !DILocalVariable(name: "sz", scope: !1888, file: !1, line: 422, type: !35)
!1897 = !DILocalVariable(name: "node", scope: !1898, file: !1, line: 423, type: !408)
!1898 = distinct !DILexicalBlock(scope: !1888, file: !1, line: 423, column: 13)
!1899 = !DILocalVariable(name: "de", scope: !1900, file: !1, line: 439, type: !60)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 438, column: 71)
!1901 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 438, column: 16)
!1902 = !DILocalVariable(name: "val", scope: !1900, file: !1, line: 440, type: !212)
!1903 = !DILocalVariable(name: "key", scope: !1900, file: !1, line: 441, type: !94)
!1904 = !DILocalVariable(name: "o", scope: !1905, file: !1, line: 464, type: !212)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !1, line: 463, column: 72)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !1, line: 463, column: 16)
!1907 = !DILocalVariable(name: "keys", scope: !1908, file: !1, line: 477, type: !73)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 476, column: 46)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !1, line: 475, column: 16)
!1910 = !DILocalVariable(name: "j", scope: !1908, file: !1, line: 477, type: !73)
!1911 = !DILocalVariable(name: "key", scope: !1908, file: !1, line: 478, type: !212)
!1912 = !DILocalVariable(name: "val", scope: !1908, file: !1, line: 478, type: !212)
!1913 = !DILocalVariable(name: "buf", scope: !1908, file: !1, line: 479, type: !381)
!1914 = !DILocalVariable(name: "valsize", scope: !1915, file: !1, line: 485, type: !73)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 484, column: 36)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !1, line: 484, column: 9)
!1917 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 484, column: 9)
!1918 = !DILocalVariable(name: "buflen", scope: !1919, file: !1, line: 500, type: !9)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1, line: 499, column: 18)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 497, column: 17)
!1921 = !DILocalVariable(name: "digest", scope: !1922, file: !1, line: 511, type: !182)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 509, column: 71)
!1923 = distinct !DILexicalBlock(scope: !1909, file: !1, line: 509, column: 16)
!1924 = !DILocalVariable(name: "d", scope: !1922, file: !1, line: 512, type: !94)
!1925 = !DILocalVariable(name: "i", scope: !1926, file: !1, line: 515, type: !9)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !1, line: 515, column: 9)
!1927 = !DILocalVariable(name: "j", scope: !1928, file: !1, line: 521, type: !9)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 521, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 518, column: 77)
!1930 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 518, column: 16)
!1931 = !DILocalVariable(name: "digest", scope: !1932, file: !1, line: 522, type: !182)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 521, column: 43)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 521, column: 9)
!1934 = !DILocalVariable(name: "o", scope: !1932, file: !1, line: 524, type: !212)
!1935 = !DILocalVariable(name: "d", scope: !1932, file: !1, line: 527, type: !94)
!1936 = !DILocalVariable(name: "i", scope: !1937, file: !1, line: 528, type: !9)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 528, column: 13)
!1938 = !DILocalVariable(name: "dtime", scope: !1939, file: !1, line: 533, type: !7)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 532, column: 70)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 532, column: 16)
!1941 = !DILocalVariable(name: "utime", scope: !1939, file: !1, line: 534, type: !8)
!1942 = !DILocalVariable(name: "tv", scope: !1939, file: !1, line: 535, type: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1774, line: 52, size: 128, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1943, file: !1774, line: 53, baseType: !1773, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1943, file: !1774, line: 54, baseType: !73, size: 64, offset: 64)
!1947 = !DILocalVariable(name: "errstr", scope: !1948, file: !1, line: 552, type: !94)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 551, column: 70)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 551, column: 16)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 546, column: 16)
!1951 = distinct !DILexicalBlock(scope: !1940, file: !1, line: 541, column: 16)
!1952 = !DILocalVariable(name: "sizes", scope: !1953, file: !1, line: 559, type: !94)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 558, column: 75)
!1954 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 558, column: 16)
!1955 = !DILocalVariable(name: "dbid", scope: !1956, file: !1, line: 570, type: !73)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 569, column: 72)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 569, column: 16)
!1958 = !DILocalVariable(name: "stats", scope: !1956, file: !1, line: 571, type: !94)
!1959 = !DILocalVariable(name: "buf", scope: !1956, file: !1, line: 572, type: !1960)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32768, elements: !1961)
!1961 = !{!1962}
!1962 = !DISubrange(count: 4096)
!1963 = !DILocalVariable(name: "o", scope: !1964, file: !1, line: 591, type: !212)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 590, column: 76)
!1965 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 590, column: 16)
!1966 = !DILocalVariable(name: "ht", scope: !1964, file: !1, line: 592, type: !17)
!1967 = !DILocalVariable(name: "zs", scope: !1968, file: !1, line: 601, type: !488)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 600, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 598, column: 30)
!1970 = !DILocalVariable(name: "buf", scope: !1971, file: !1, line: 614, type: !1960)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 613, column: 16)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 610, column: 13)
!1973 = !DILocation(line: 300, column: 27, scope: !1726)
!1974 = !DILocation(line: 301, column: 12, scope: !1849)
!1975 = !{!1976, !230, i64 64}
!1976 = !{!"client", !264, i64 0, !230, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !264, i64 40, !231, i64 48, !264, i64 56, !230, i64 64, !231, i64 72, !231, i64 80, !231, i64 88, !230, i64 96, !230, i64 100, !264, i64 104, !231, i64 112, !1107, i64 120, !264, i64 128, !264, i64 136, !264, i64 144, !264, i64 152, !230, i64 160, !230, i64 164, !230, i64 168, !230, i64 172, !230, i64 176, !264, i64 184, !264, i64 192, !231, i64 200, !1107, i64 208, !1107, i64 216, !1107, i64 224, !1107, i64 232, !1107, i64 240, !204, i64 248, !230, i64 292, !204, i64 296, !230, i64 344, !1977, i64 352, !230, i64 384, !1978, i64 392, !1107, i64 480, !231, i64 488, !231, i64 496, !231, i64 504, !231, i64 512, !231, i64 520, !230, i64 528, !204, i64 532}
!1977 = !{!"multiState", !231, i64 0, !230, i64 8, !230, i64 12, !230, i64 16, !264, i64 24}
!1978 = !{!"blockingState", !1107, i64 0, !231, i64 8, !231, i64 16, !264, i64 24, !231, i64 32, !231, i64 40, !1107, i64 48, !1107, i64 56, !230, i64 64, !230, i64 68, !1107, i64 72, !231, i64 80}
!1979 = !DILocation(line: 301, column: 17, scope: !1849)
!1980 = !DILocation(line: 0, scope: !1855)
!1981 = !{!1976, !231, i64 72}
!1982 = !DILocation(line: 301, column: 22, scope: !1849)
!1983 = !DILocation(line: 301, column: 26, scope: !1849)
!1984 = !DILocation(line: 301, column: 9, scope: !1726)
!1985 = !DILocation(line: 302, column: 9, scope: !1848)
!1986 = !DILocation(line: 302, column: 21, scope: !1848)
!1987 = !DILocation(line: 328, column: 25, scope: !1848)
!1988 = !DILocation(line: 328, column: 9, scope: !1848)
!1989 = !DILocation(line: 329, column: 5, scope: !1849)
!1990 = !DILocation(line: 329, column: 5, scope: !1848)
!1991 = !DILocation(line: 329, column: 17, scope: !1855)
!1992 = !DILocation(line: 329, column: 16, scope: !1849)
!1993 = !DILocation(line: 330, column: 22, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 329, column: 57)
!1995 = !DILocation(line: 331, column: 5, scope: !1994)
!1996 = !DILocation(line: 331, column: 17, scope: !1854)
!1997 = !DILocation(line: 331, column: 16, scope: !1855)
!1998 = !DILocation(line: 332, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1854, file: !1, line: 331, column: 54)
!2000 = !DILocation(line: 333, column: 17, scope: !1853)
!2001 = !DILocation(line: 333, column: 55, scope: !1853)
!2002 = !DILocation(line: 334, column: 17, scope: !1853)
!2003 = !DILocation(line: 333, column: 16, scope: !1854)
!2004 = !DILocation(line: 336, column: 9, scope: !1852)
!2005 = !DILocation(line: 336, column: 19, scope: !1852)
!2006 = !DILocation(line: 337, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 337, column: 13)
!2008 = !DILocation(line: 337, column: 13, scope: !1852)
!2009 = !DILocation(line: 338, column: 49, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 338, column: 17)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 337, column: 27)
!2012 = !DILocation(line: 338, column: 17, scope: !2010)
!2013 = !DILocation(line: 339, column: 17, scope: !2010)
!2014 = !DILocation(line: 338, column: 17, scope: !2011)
!2015 = !DILocation(line: 340, column: 17, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 340, column: 17)
!2017 = !DILocation(line: 340, column: 23, scope: !2016)
!2018 = !DILocation(line: 340, column: 17, scope: !2011)
!2019 = !DILocation(line: 340, column: 34, scope: !2016)
!2020 = !DILocation(line: 340, column: 28, scope: !2016)
!2021 = !DILocation(line: 345, column: 29, scope: !1852)
!2022 = !DILocation(line: 342, column: 36, scope: !1852)
!2023 = !DILocation(line: 342, column: 33, scope: !1852)
!2024 = !DILocation(line: 342, column: 45, scope: !1852)
!2025 = !DILocation(line: 342, column: 22, scope: !1852)
!2026 = !DILocation(line: 342, column: 21, scope: !1852)
!2027 = !DILocation(line: 342, column: 13, scope: !1852)
!2028 = !DILocation(line: 345, column: 9, scope: !1852)
!2029 = !DILocation(line: 346, column: 9, scope: !1852)
!2030 = !DILocation(line: 347, column: 5, scope: !1853)
!2031 = !DILocation(line: 347, column: 17, scope: !1859)
!2032 = !DILocation(line: 347, column: 16, scope: !1853)
!2033 = !DILocation(line: 348, column: 21, scope: !1858)
!2034 = !DILocation(line: 348, column: 15, scope: !1858)
!2035 = !DILocation(line: 349, column: 9, scope: !1858)
!2036 = !DILocation(line: 350, column: 27, scope: !1858)
!2037 = !{!2038, !231, i64 8}
!2038 = !{!"sharedObjectsStruct", !231, i64 0, !231, i64 8, !231, i64 16, !231, i64 24, !231, i64 32, !231, i64 40, !231, i64 48, !231, i64 56, !231, i64 64, !231, i64 72, !231, i64 80, !231, i64 88, !231, i64 96, !231, i64 104, !231, i64 112, !231, i64 120, !231, i64 128, !231, i64 136, !231, i64 144, !231, i64 152, !231, i64 160, !231, i64 168, !231, i64 176, !231, i64 184, !231, i64 192, !231, i64 200, !231, i64 208, !231, i64 216, !231, i64 224, !231, i64 232, !231, i64 240, !231, i64 248, !231, i64 256, !231, i64 264, !231, i64 272, !231, i64 280, !231, i64 288, !231, i64 296, !231, i64 304, !231, i64 312, !231, i64 320, !231, i64 328, !231, i64 336, !231, i64 344, !231, i64 352, !231, i64 360, !204, i64 368, !204, i64 448, !204, i64 80448, !204, i64 80704, !231, i64 80960, !231, i64 80968}
!2039 = !DILocation(line: 350, column: 9, scope: !1858)
!2040 = !DILocation(line: 351, column: 5, scope: !1858)
!2041 = !DILocation(line: 351, column: 17, scope: !1864)
!2042 = !DILocation(line: 351, column: 16, scope: !1859)
!2043 = !DILocation(line: 352, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 351, column: 55)
!2045 = !DILocation(line: 353, column: 17, scope: !1863)
!2046 = !DILocation(line: 353, column: 62, scope: !1863)
!2047 = !DILocation(line: 353, column: 51, scope: !1863)
!2048 = !DILocation(line: 354, column: 55, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 353, column: 68)
!2050 = !DILocation(line: 354, column: 67, scope: !2049)
!2051 = !DILocation(line: 354, column: 9, scope: !2049)
!2052 = !DILocation(line: 355, column: 27, scope: !2049)
!2053 = !DILocation(line: 355, column: 9, scope: !2049)
!2054 = !DILocation(line: 356, column: 5, scope: !2049)
!2055 = !DILocation(line: 356, column: 17, scope: !1862)
!2056 = !DILocation(line: 356, column: 16, scope: !1863)
!2057 = !DILocation(line: 357, column: 9, scope: !1861)
!2058 = !DILocation(line: 357, column: 21, scope: !1861)
!2059 = !DILocation(line: 358, column: 18, scope: !1861)
!2060 = !DILocation(line: 357, column: 27, scope: !1861)
!2061 = !DILocation(line: 359, column: 28, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 359, column: 13)
!2063 = !{!1519, !231, i64 2120}
!2064 = !DILocation(line: 359, column: 13, scope: !2062)
!2065 = !DILocation(line: 359, column: 49, scope: !2062)
!2066 = !DILocation(line: 359, column: 13, scope: !1861)
!2067 = !DILocation(line: 360, column: 31, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 359, column: 58)
!2069 = !{!2038, !231, i64 16}
!2070 = !DILocation(line: 360, column: 13, scope: !2068)
!2071 = !DILocation(line: 361, column: 13, scope: !2068)
!2072 = !DILocation(line: 363, column: 9, scope: !1861)
!2073 = !DILocation(line: 364, column: 9, scope: !1861)
!2074 = !DILocation(line: 365, column: 34, scope: !1861)
!2075 = !DILocation(line: 365, column: 19, scope: !1861)
!2076 = !DILocation(line: 365, column: 13, scope: !1861)
!2077 = !DILocation(line: 366, column: 9, scope: !1861)
!2078 = !DILocation(line: 367, column: 17, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 367, column: 13)
!2080 = !DILocation(line: 367, column: 13, scope: !1861)
!2081 = !DILocation(line: 368, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 367, column: 26)
!2083 = !DILocation(line: 369, column: 13, scope: !2082)
!2084 = !DILocation(line: 371, column: 9, scope: !1861)
!2085 = !DILocation(line: 372, column: 27, scope: !1861)
!2086 = !DILocation(line: 372, column: 9, scope: !1861)
!2087 = !DILocation(line: 373, column: 5, scope: !1862)
!2088 = !DILocation(line: 373, column: 17, scope: !1877)
!2089 = !DILocation(line: 373, column: 16, scope: !1862)
!2090 = !DILocation(line: 374, column: 20, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 374, column: 13)
!2092 = !{!1519, !230, i64 1880}
!2093 = !DILocation(line: 374, column: 30, scope: !2091)
!2094 = !DILocation(line: 374, column: 13, scope: !1876)
!2095 = !DILocation(line: 374, column: 42, scope: !2091)
!2096 = !DILocation(line: 375, column: 9, scope: !1876)
!2097 = !DILocation(line: 376, column: 9, scope: !1876)
!2098 = !DILocation(line: 377, column: 45, scope: !1876)
!2099 = !{!1519, !231, i64 1888}
!2100 = !DILocation(line: 377, column: 19, scope: !1876)
!2101 = !DILocation(line: 377, column: 13, scope: !1876)
!2102 = !DILocation(line: 378, column: 9, scope: !1876)
!2103 = !DILocation(line: 379, column: 17, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 379, column: 13)
!2105 = !DILocation(line: 379, column: 13, scope: !1876)
!2106 = !DILocation(line: 380, column: 31, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !1, line: 379, column: 26)
!2108 = !DILocation(line: 380, column: 13, scope: !2107)
!2109 = !DILocation(line: 381, column: 13, scope: !2107)
!2110 = !DILocation(line: 383, column: 22, scope: !1876)
!2111 = !{!1519, !1107, i64 2080}
!2112 = !DILocation(line: 384, column: 9, scope: !1876)
!2113 = !DILocation(line: 385, column: 27, scope: !1876)
!2114 = !DILocation(line: 385, column: 9, scope: !1876)
!2115 = !DILocation(line: 386, column: 5, scope: !1877)
!2116 = !DILocation(line: 386, column: 17, scope: !1880)
!2117 = !DILocation(line: 386, column: 54, scope: !1880)
!2118 = !DILocation(line: 391, column: 31, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 391, column: 13)
!2120 = !{!1976, !231, i64 16}
!2121 = !DILocation(line: 391, column: 35, scope: !2119)
!2122 = !DILocation(line: 391, column: 40, scope: !2119)
!2123 = !DILocation(line: 391, column: 52, scope: !2119)
!2124 = !DILocation(line: 391, column: 19, scope: !2119)
!2125 = !DILocation(line: 387, column: 20, scope: !1879)
!2126 = !DILocation(line: 391, column: 58, scope: !2119)
!2127 = !DILocation(line: 391, column: 13, scope: !1879)
!2128 = !DILocation(line: 392, column: 31, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 391, column: 67)
!2130 = !{!2038, !231, i64 120}
!2131 = !DILocation(line: 392, column: 13, scope: !2129)
!2132 = !DILocation(line: 393, column: 13, scope: !2129)
!2133 = !DILocation(line: 395, column: 15, scope: !1879)
!2134 = !DILocation(line: 388, column: 15, scope: !1879)
!2135 = !DILocation(line: 396, column: 35, scope: !1879)
!2136 = !DILocation(line: 396, column: 18, scope: !1879)
!2137 = !DILocation(line: 389, column: 15, scope: !1879)
!2138 = !DILocation(line: 398, column: 9, scope: !1879)
!2139 = !DILocation(line: 398, column: 14, scope: !1879)
!2140 = !DILocation(line: 399, column: 18, scope: !1889)
!2141 = !DILocation(line: 399, column: 27, scope: !1889)
!2142 = !DILocation(line: 399, column: 13, scope: !1879)
!2143 = !DILocation(line: 400, column: 19, scope: !1888)
!2144 = !DILocation(line: 401, column: 17, scope: !1888)
!2145 = !DILocation(line: 402, column: 34, scope: !1888)
!2146 = !DILocation(line: 402, column: 24, scope: !1888)
!2147 = !DILocation(line: 404, column: 73, scope: !1888)
!2148 = !{!2149, !264, i64 24}
!2149 = !{!"quicklist", !231, i64 0, !231, i64 8, !264, i64 16, !264, i64 24, !230, i64 32, !230, i64 34}
!2150 = !DILocation(line: 404, column: 24, scope: !1888)
!2151 = !DILocation(line: 404, column: 17, scope: !1888)
!2152 = !DILocation(line: 405, column: 20, scope: !1888)
!2153 = !DILocation(line: 406, column: 23, scope: !1888)
!2154 = !DILocation(line: 408, column: 38, scope: !1888)
!2155 = !{!2149, !264, i64 16}
!2156 = !DILocation(line: 408, column: 26, scope: !1888)
!2157 = !DILocation(line: 408, column: 48, scope: !1888)
!2158 = !DILocation(line: 408, column: 44, scope: !1888)
!2159 = !DILocation(line: 408, column: 43, scope: !1888)
!2160 = !DILocation(line: 408, column: 20, scope: !1888)
!2161 = !DILocation(line: 409, column: 37, scope: !1888)
!2162 = !DILocation(line: 409, column: 20, scope: !1888)
!2163 = !DILocation(line: 410, column: 20, scope: !1888)
!2164 = !DILocation(line: 411, column: 23, scope: !1888)
!2165 = !DILocation(line: 413, column: 37, scope: !1888)
!2166 = !DILocation(line: 413, column: 74, scope: !1888)
!2167 = !DILocation(line: 413, column: 20, scope: !1888)
!2168 = !DILocation(line: 414, column: 20, scope: !1888)
!2169 = !DILocation(line: 415, column: 23, scope: !1888)
!2170 = !DILocation(line: 417, column: 34, scope: !1888)
!2171 = !DILocation(line: 417, column: 43, scope: !1888)
!2172 = !DILocation(line: 417, column: 17, scope: !1888)
!2173 = !DILocation(line: 418, column: 37, scope: !1888)
!2174 = !DILocation(line: 418, column: 20, scope: !1888)
!2175 = !DILocation(line: 419, column: 20, scope: !1888)
!2176 = !DILocation(line: 420, column: 23, scope: !1888)
!2177 = !DILocation(line: 422, column: 27, scope: !1888)
!2178 = !DILocation(line: 423, column: 44, scope: !1898)
!2179 = !DILocation(line: 423, column: 33, scope: !1898)
!2180 = !DILocation(line: 0, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 423, column: 13)
!2182 = !DILocation(line: 423, column: 13, scope: !1898)
!2183 = !DILocation(line: 0, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 423, column: 75)
!2185 = !DILocation(line: 426, column: 37, scope: !1888)
!2186 = !DILocation(line: 426, column: 20, scope: !1888)
!2187 = !DILocation(line: 429, column: 9, scope: !1888)
!2188 = !DILocation(line: 424, column: 29, scope: !2184)
!2189 = !{!2190, !230, i64 24}
!2190 = !{!"quicklistNode", !231, i64 0, !231, i64 8, !231, i64 16, !230, i64 24, !230, i64 28, !230, i64 30, !230, i64 30, !230, i64 30, !230, i64 30, !230, i64 30}
!2191 = !DILocation(line: 424, column: 23, scope: !2184)
!2192 = !DILocation(line: 424, column: 20, scope: !2184)
!2193 = !DILocation(line: 423, column: 69, scope: !2181)
!2194 = distinct !{!2194, !2182, !2195}
!2195 = !DILocation(line: 425, column: 13, scope: !1898)
!2196 = !DILocation(line: 435, column: 30, scope: !1879)
!2197 = !{!229, !230, i64 4}
!2198 = !DILocation(line: 436, column: 21, scope: !1879)
!2199 = !DILocation(line: 437, column: 18, scope: !1879)
!2200 = !DILocation(line: 437, column: 23, scope: !1879)
!2201 = !DILocation(line: 437, column: 50, scope: !1879)
!2202 = !DILocation(line: 431, column: 9, scope: !1879)
!2203 = !DILocation(line: 438, column: 5, scope: !1880)
!2204 = !DILocation(line: 438, column: 17, scope: !1901)
!2205 = !DILocation(line: 438, column: 54, scope: !1901)
!2206 = !DILocation(line: 443, column: 31, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 443, column: 13)
!2208 = !DILocation(line: 443, column: 35, scope: !2207)
!2209 = !DILocation(line: 443, column: 40, scope: !2207)
!2210 = !DILocation(line: 443, column: 52, scope: !2207)
!2211 = !DILocation(line: 443, column: 19, scope: !2207)
!2212 = !DILocation(line: 439, column: 20, scope: !1900)
!2213 = !DILocation(line: 443, column: 58, scope: !2207)
!2214 = !DILocation(line: 443, column: 13, scope: !1900)
!2215 = !DILocation(line: 444, column: 31, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2207, file: !1, line: 443, column: 67)
!2217 = !DILocation(line: 444, column: 13, scope: !2216)
!2218 = !DILocation(line: 445, column: 13, scope: !2216)
!2219 = !DILocation(line: 447, column: 15, scope: !1900)
!2220 = !DILocation(line: 440, column: 15, scope: !1900)
!2221 = !DILocation(line: 448, column: 15, scope: !1900)
!2222 = !DILocation(line: 441, column: 13, scope: !1900)
!2223 = !DILocation(line: 450, column: 18, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1900, file: !1, line: 450, column: 13)
!2225 = !DILocation(line: 450, column: 23, scope: !2224)
!2226 = !DILocation(line: 450, column: 37, scope: !2224)
!2227 = !DILocation(line: 450, column: 41, scope: !2224)
!2228 = !DILocation(line: 451, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 450, column: 64)
!2230 = !DILocation(line: 452, column: 9, scope: !2229)
!2231 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 456, column: 29, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 452, column: 16)
!2234 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2232)
!2235 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2232)
!2236 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2232)
!2237 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2232)
!2238 = !DILocalVariable(name: "s", arg: 1, scope: !2239, file: !95, line: 104, type: !238)
!2239 = distinct !DISubprogram(name: "sdsavail", scope: !95, file: !95, line: 104, type: !234, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2240)
!2240 = !{!2238, !2241, !2242, !2245, !2247, !2249}
!2241 = !DILocalVariable(name: "flags", scope: !2239, file: !95, line: 105, type: !118)
!2242 = !DILocalVariable(name: "sh", scope: !2243, file: !95, line: 111, type: !112)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 110, column: 26)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !95, line: 106, column: 33)
!2245 = !DILocalVariable(name: "sh", scope: !2246, file: !95, line: 115, type: !123)
!2246 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 114, column: 27)
!2247 = !DILocalVariable(name: "sh", scope: !2248, file: !95, line: 119, type: !133)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 118, column: 27)
!2249 = !DILocalVariable(name: "sh", scope: !2250, file: !95, line: 123, type: !143)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 122, column: 27)
!2251 = !DILocation(line: 104, column: 41, scope: !2239, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 457, column: 29, scope: !2233)
!2253 = !DILocation(line: 105, column: 19, scope: !2239, inlinedAt: !2252)
!2254 = !DILocation(line: 106, column: 5, scope: !2239, inlinedAt: !2252)
!2255 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2232)
!2256 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2232)
!2257 = !DILocation(line: 111, column: 13, scope: !2243, inlinedAt: !2252)
!2258 = !DILocation(line: 112, column: 24, scope: !2243, inlinedAt: !2252)
!2259 = !DILocation(line: 112, column: 20, scope: !2243, inlinedAt: !2252)
!2260 = !DILocation(line: 112, column: 30, scope: !2243, inlinedAt: !2252)
!2261 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2232)
!2262 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2232)
!2263 = !DILocation(line: 115, column: 13, scope: !2246, inlinedAt: !2252)
!2264 = !DILocation(line: 116, column: 24, scope: !2246, inlinedAt: !2252)
!2265 = !DILocation(line: 116, column: 20, scope: !2246, inlinedAt: !2252)
!2266 = !DILocation(line: 116, column: 30, scope: !2246, inlinedAt: !2252)
!2267 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2232)
!2268 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2232)
!2269 = !DILocation(line: 119, column: 13, scope: !2248, inlinedAt: !2252)
!2270 = !DILocation(line: 120, column: 24, scope: !2248, inlinedAt: !2252)
!2271 = !DILocation(line: 120, column: 30, scope: !2248, inlinedAt: !2252)
!2272 = !DILocation(line: 120, column: 20, scope: !2248, inlinedAt: !2252)
!2273 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2232)
!2274 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2232)
!2275 = !DILocation(line: 123, column: 13, scope: !2250, inlinedAt: !2252)
!2276 = !DILocation(line: 124, column: 24, scope: !2250, inlinedAt: !2252)
!2277 = !DILocation(line: 124, column: 30, scope: !2250, inlinedAt: !2252)
!2278 = !DILocation(line: 0, scope: !2279, inlinedAt: !2252)
!2279 = distinct !DILexicalBlock(scope: !2244, file: !95, line: 107, column: 26)
!2280 = !DILocation(line: 458, column: 29, scope: !2233)
!2281 = !DILocation(line: 459, column: 41, scope: !2233)
!2282 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 459, column: 29, scope: !2233)
!2284 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2283)
!2285 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2283)
!2286 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2283)
!2287 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2283)
!2288 = !DILocation(line: 104, column: 41, scope: !2239, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 460, column: 29, scope: !2233)
!2290 = !DILocation(line: 105, column: 19, scope: !2239, inlinedAt: !2289)
!2291 = !DILocation(line: 106, column: 5, scope: !2239, inlinedAt: !2289)
!2292 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2283)
!2293 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2283)
!2294 = !DILocation(line: 111, column: 13, scope: !2243, inlinedAt: !2289)
!2295 = !DILocation(line: 112, column: 24, scope: !2243, inlinedAt: !2289)
!2296 = !DILocation(line: 112, column: 20, scope: !2243, inlinedAt: !2289)
!2297 = !DILocation(line: 112, column: 30, scope: !2243, inlinedAt: !2289)
!2298 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2283)
!2299 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2283)
!2300 = !DILocation(line: 115, column: 13, scope: !2246, inlinedAt: !2289)
!2301 = !DILocation(line: 116, column: 24, scope: !2246, inlinedAt: !2289)
!2302 = !DILocation(line: 116, column: 20, scope: !2246, inlinedAt: !2289)
!2303 = !DILocation(line: 116, column: 30, scope: !2246, inlinedAt: !2289)
!2304 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2283)
!2305 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2283)
!2306 = !DILocation(line: 119, column: 13, scope: !2248, inlinedAt: !2289)
!2307 = !DILocation(line: 120, column: 24, scope: !2248, inlinedAt: !2289)
!2308 = !DILocation(line: 120, column: 30, scope: !2248, inlinedAt: !2289)
!2309 = !DILocation(line: 120, column: 20, scope: !2248, inlinedAt: !2289)
!2310 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2283)
!2311 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2283)
!2312 = !DILocation(line: 123, column: 13, scope: !2250, inlinedAt: !2289)
!2313 = !DILocation(line: 124, column: 24, scope: !2250, inlinedAt: !2289)
!2314 = !DILocation(line: 124, column: 30, scope: !2250, inlinedAt: !2289)
!2315 = !DILocation(line: 0, scope: !2279, inlinedAt: !2289)
!2316 = !DILocation(line: 461, column: 29, scope: !2233)
!2317 = !DILocation(line: 453, column: 13, scope: !2233)
!2318 = !DILocation(line: 463, column: 17, scope: !1906)
!2319 = !DILocation(line: 463, column: 55, scope: !1906)
!2320 = !DILocation(line: 466, column: 47, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 466, column: 13)
!2322 = !DILocation(line: 466, column: 65, scope: !2321)
!2323 = !DILocation(line: 466, column: 18, scope: !2321)
!2324 = !DILocation(line: 464, column: 15, scope: !1905)
!2325 = !DILocation(line: 467, column: 17, scope: !2321)
!2326 = !DILocation(line: 466, column: 13, scope: !1905)
!2327 = !DILocation(line: 469, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 469, column: 13)
!2329 = !DILocation(line: 469, column: 25, scope: !2328)
!2330 = !DILocation(line: 469, column: 13, scope: !1905)
!2331 = !DILocation(line: 470, column: 13, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 469, column: 50)
!2333 = !DILocation(line: 471, column: 9, scope: !2332)
!2334 = !DILocation(line: 472, column: 28, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 471, column: 16)
!2336 = !DILocation(line: 472, column: 13, scope: !2335)
!2337 = !DILocation(line: 473, column: 13, scope: !2335)
!2338 = !DILocation(line: 475, column: 17, scope: !1909)
!2339 = !DILocation(line: 476, column: 29, scope: !1909)
!2340 = !DILocation(line: 475, column: 56, scope: !1909)
!2341 = !DILocation(line: 477, column: 9, scope: !1908)
!2342 = !DILocation(line: 479, column: 9, scope: !1908)
!2343 = !DILocation(line: 479, column: 14, scope: !1908)
!2344 = !DILocation(line: 481, column: 41, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 481, column: 13)
!2346 = !DILocation(line: 477, column: 14, scope: !1908)
!2347 = !DILocation(line: 481, column: 13, scope: !2345)
!2348 = !DILocation(line: 481, column: 66, scope: !2345)
!2349 = !DILocation(line: 481, column: 13, scope: !1908)
!2350 = !DILocation(line: 483, column: 23, scope: !1908)
!2351 = !DILocation(line: 483, column: 27, scope: !1908)
!2352 = !DILocation(line: 483, column: 32, scope: !1908)
!2353 = !DILocation(line: 483, column: 9, scope: !1908)
!2354 = !DILocation(line: 477, column: 20, scope: !1908)
!2355 = !DILocation(line: 484, column: 25, scope: !1916)
!2356 = !DILocation(line: 484, column: 23, scope: !1916)
!2357 = !DILocation(line: 484, column: 9, scope: !1917)
!2358 = !DILocation(line: 485, column: 13, scope: !1915)
!2359 = !DILocation(line: 485, column: 18, scope: !1915)
!2360 = !DILocation(line: 487, column: 21, scope: !1915)
!2361 = !DILocation(line: 487, column: 26, scope: !1915)
!2362 = !DILocation(line: 487, column: 17, scope: !1915)
!2363 = !DILocation(line: 487, column: 52, scope: !1915)
!2364 = !DILocation(line: 487, column: 49, scope: !1915)
!2365 = !DILocation(line: 487, column: 61, scope: !1915)
!2366 = !DILocation(line: 486, column: 13, scope: !1915)
!2367 = !DILocation(line: 488, column: 42, scope: !1915)
!2368 = !DILocation(line: 488, column: 19, scope: !1915)
!2369 = !DILocation(line: 478, column: 15, scope: !1908)
!2370 = !DILocation(line: 489, column: 20, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 489, column: 17)
!2372 = !DILocation(line: 489, column: 25, scope: !2371)
!2373 = !DILocation(line: 489, column: 17, scope: !1915)
!2374 = !DILocation(line: 490, column: 52, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !1, line: 490, column: 21)
!2376 = !DILocation(line: 490, column: 49, scope: !2375)
!2377 = !DILocation(line: 490, column: 21, scope: !2375)
!2378 = !DILocation(line: 490, column: 77, scope: !2375)
!2379 = !DILocation(line: 490, column: 21, scope: !2371)
!2380 = !DILocation(line: 492, column: 35, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 492, column: 17)
!2382 = !DILocation(line: 492, column: 17, scope: !2381)
!2383 = !DILocation(line: 492, column: 43, scope: !2381)
!2384 = !DILocation(line: 492, column: 17, scope: !1915)
!2385 = !DILocation(line: 493, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2381, file: !1, line: 492, column: 52)
!2387 = !DILocation(line: 494, column: 17, scope: !2386)
!2388 = !DILocation(line: 496, column: 13, scope: !1915)
!2389 = !DILocation(line: 497, column: 17, scope: !1920)
!2390 = !DILocation(line: 497, column: 24, scope: !1920)
!2391 = !DILocation(line: 0, scope: !1919)
!2392 = !DILocation(line: 497, column: 17, scope: !1915)
!2393 = !DILocation(line: 498, column: 23, scope: !1920)
!2394 = !DILocation(line: 478, column: 21, scope: !1908)
!2395 = !DILocation(line: 498, column: 17, scope: !1920)
!2396 = !DILocation(line: 501, column: 47, scope: !1919)
!2397 = !DILocation(line: 501, column: 23, scope: !1919)
!2398 = !DILocation(line: 502, column: 29, scope: !1919)
!2399 = !DILocation(line: 502, column: 39, scope: !1919)
!2400 = !DILocation(line: 502, column: 48, scope: !1919)
!2401 = !DILocation(line: 502, column: 46, scope: !1919)
!2402 = !DILocation(line: 502, column: 17, scope: !1919)
!2403 = !DILocation(line: 504, column: 22, scope: !1915)
!2404 = !DILocation(line: 504, column: 13, scope: !1915)
!2405 = !DILocation(line: 505, column: 34, scope: !1915)
!2406 = !DILocation(line: 505, column: 13, scope: !1915)
!2407 = !DILocation(line: 506, column: 13, scope: !1915)
!2408 = !DILocation(line: 507, column: 9, scope: !1916)
!2409 = !DILocation(line: 484, column: 32, scope: !1916)
!2410 = distinct !{!2410, !2357, !2411}
!2411 = !DILocation(line: 507, column: 9, scope: !1917)
!2412 = !DILocation(line: 508, column: 27, scope: !1908)
!2413 = !DILocation(line: 508, column: 9, scope: !1908)
!2414 = !DILocation(line: 509, column: 5, scope: !1909)
!2415 = !DILocation(line: 509, column: 17, scope: !1923)
!2416 = !DILocation(line: 509, column: 54, scope: !1923)
!2417 = !DILocation(line: 511, column: 9, scope: !1922)
!2418 = !DILocation(line: 511, column: 23, scope: !1922)
!2419 = !DILocation(line: 512, column: 17, scope: !1922)
!2420 = !DILocation(line: 512, column: 13, scope: !1922)
!2421 = !DILocation(line: 514, column: 9, scope: !1922)
!2422 = !DILocation(line: 515, column: 18, scope: !1926)
!2423 = !DILocation(line: 515, column: 65, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 515, column: 9)
!2425 = !DILocation(line: 515, column: 42, scope: !2424)
!2426 = !DILocation(line: 516, column: 9, scope: !1922)
!2427 = !DILocation(line: 517, column: 9, scope: !1922)
!2428 = !DILocation(line: 518, column: 5, scope: !1923)
!2429 = !DILocation(line: 518, column: 5, scope: !1922)
!2430 = !DILocation(line: 518, column: 17, scope: !1930)
!2431 = !DILocation(line: 518, column: 71, scope: !1930)
!2432 = !DILocation(line: 518, column: 60, scope: !1930)
!2433 = !DILocation(line: 520, column: 39, scope: !1929)
!2434 = !DILocation(line: 520, column: 32, scope: !1929)
!2435 = !DILocation(line: 520, column: 9, scope: !1929)
!2436 = !DILocation(line: 521, column: 18, scope: !1928)
!2437 = !DILocation(line: 521, column: 32, scope: !1933)
!2438 = !DILocation(line: 521, column: 27, scope: !1933)
!2439 = !DILocation(line: 521, column: 9, scope: !1928)
!2440 = !DILocation(line: 522, column: 13, scope: !1932)
!2441 = !DILocation(line: 522, column: 27, scope: !1932)
!2442 = !DILocation(line: 523, column: 13, scope: !1932)
!2443 = !DILocation(line: 524, column: 49, scope: !1932)
!2444 = !DILocation(line: 524, column: 55, scope: !1932)
!2445 = !DILocation(line: 524, column: 52, scope: !1932)
!2446 = !DILocation(line: 524, column: 23, scope: !1932)
!2447 = !DILocation(line: 524, column: 19, scope: !1932)
!2448 = !DILocation(line: 525, column: 17, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !1932, file: !1, line: 525, column: 17)
!2450 = !DILocation(line: 525, column: 17, scope: !1932)
!2451 = !DILocation(line: 525, column: 39, scope: !2449)
!2452 = !DILocation(line: 525, column: 45, scope: !2449)
!2453 = !DILocation(line: 525, column: 42, scope: !2449)
!2454 = !DILocation(line: 525, column: 20, scope: !2449)
!2455 = !DILocation(line: 527, column: 21, scope: !1932)
!2456 = !DILocation(line: 527, column: 17, scope: !1932)
!2457 = !DILocation(line: 528, column: 22, scope: !1937)
!2458 = !DILocation(line: 528, column: 69, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 528, column: 13)
!2460 = !DILocation(line: 528, column: 46, scope: !2459)
!2461 = !DILocation(line: 529, column: 13, scope: !1932)
!2462 = !DILocation(line: 530, column: 13, scope: !1932)
!2463 = !DILocation(line: 531, column: 9, scope: !1933)
!2464 = !DILocation(line: 521, column: 39, scope: !1933)
!2465 = distinct !{!2465, !2439, !2466}
!2466 = !DILocation(line: 531, column: 9, scope: !1928)
!2467 = !DILocation(line: 532, column: 17, scope: !1940)
!2468 = !DILocation(line: 532, column: 53, scope: !1940)
!2469 = !DILocation(line: 533, column: 31, scope: !1939)
!2470 = !DILocation(line: 533, column: 43, scope: !1939)
!2471 = !DILocation(line: 533, column: 24, scope: !1939)
!2472 = !DILocation(line: 533, column: 16, scope: !1939)
!2473 = !DILocation(line: 534, column: 32, scope: !1939)
!2474 = !DILocation(line: 534, column: 27, scope: !1939)
!2475 = !DILocation(line: 534, column: 19, scope: !1939)
!2476 = !DILocation(line: 535, column: 9, scope: !1939)
!2477 = !DILocation(line: 537, column: 27, scope: !1939)
!2478 = !DILocation(line: 537, column: 12, scope: !1939)
!2479 = !DILocation(line: 537, column: 19, scope: !1939)
!2480 = !{!2481, !264, i64 0}
!2481 = !{!"timespec", !264, i64 0, !264, i64 8}
!2482 = !DILocation(line: 538, column: 29, scope: !1939)
!2483 = !DILocation(line: 538, column: 40, scope: !1939)
!2484 = !DILocation(line: 538, column: 12, scope: !1939)
!2485 = !DILocation(line: 538, column: 20, scope: !1939)
!2486 = !{!2481, !264, i64 8}
!2487 = !DILocation(line: 535, column: 25, scope: !1939)
!2488 = !DILocation(line: 539, column: 9, scope: !1939)
!2489 = !DILocation(line: 540, column: 27, scope: !1939)
!2490 = !DILocation(line: 540, column: 9, scope: !1939)
!2491 = !DILocation(line: 541, column: 5, scope: !1940)
!2492 = !DILocation(line: 541, column: 5, scope: !1939)
!2493 = !DILocation(line: 541, column: 17, scope: !1951)
!2494 = !DILocation(line: 541, column: 65, scope: !1951)
!2495 = !DILocation(line: 544, column: 45, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 543, column: 5)
!2497 = !DILocation(line: 544, column: 57, scope: !2496)
!2498 = !DILocation(line: 544, column: 40, scope: !2496)
!2499 = !DILocation(line: 544, column: 38, scope: !2496)
!2500 = !{!1519, !230, i64 1740}
!2501 = !DILocation(line: 545, column: 27, scope: !2496)
!2502 = !DILocation(line: 545, column: 9, scope: !2496)
!2503 = !DILocation(line: 546, column: 5, scope: !2496)
!2504 = !DILocation(line: 546, column: 17, scope: !1950)
!2505 = !DILocation(line: 546, column: 77, scope: !1950)
!2506 = !DILocation(line: 549, column: 53, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !1950, file: !1, line: 548, column: 5)
!2508 = !DILocation(line: 549, column: 65, scope: !2507)
!2509 = !DILocation(line: 549, column: 48, scope: !2507)
!2510 = !DILocation(line: 549, column: 46, scope: !2507)
!2511 = !{!1519, !230, i64 3076}
!2512 = !DILocation(line: 550, column: 27, scope: !2507)
!2513 = !DILocation(line: 550, column: 9, scope: !2507)
!2514 = !DILocation(line: 551, column: 5, scope: !2507)
!2515 = !DILocation(line: 551, column: 17, scope: !1949)
!2516 = !DILocation(line: 551, column: 53, scope: !1949)
!2517 = !DILocation(line: 552, column: 22, scope: !1948)
!2518 = !DILocation(line: 552, column: 13, scope: !1948)
!2519 = !DILocation(line: 554, column: 38, scope: !1948)
!2520 = !DILocation(line: 554, column: 35, scope: !1948)
!2521 = !DILocation(line: 554, column: 47, scope: !1948)
!2522 = !DILocation(line: 554, column: 18, scope: !1948)
!2523 = !DILocation(line: 555, column: 18, scope: !1948)
!2524 = !DILocation(line: 556, column: 18, scope: !1948)
!2525 = !DILocation(line: 557, column: 9, scope: !1948)
!2526 = !DILocation(line: 558, column: 5, scope: !1948)
!2527 = !DILocation(line: 558, column: 17, scope: !1954)
!2528 = !DILocation(line: 558, column: 58, scope: !1954)
!2529 = !DILocation(line: 559, column: 21, scope: !1953)
!2530 = !DILocation(line: 559, column: 13, scope: !1953)
!2531 = !DILocation(line: 560, column: 17, scope: !1953)
!2532 = !DILocation(line: 561, column: 17, scope: !1953)
!2533 = !DILocation(line: 562, column: 17, scope: !1953)
!2534 = !DILocation(line: 563, column: 17, scope: !1953)
!2535 = !DILocation(line: 564, column: 17, scope: !1953)
!2536 = !DILocation(line: 565, column: 17, scope: !1953)
!2537 = !DILocation(line: 566, column: 17, scope: !1953)
!2538 = !DILocation(line: 567, column: 17, scope: !1953)
!2539 = !DILocation(line: 568, column: 9, scope: !1953)
!2540 = !DILocation(line: 569, column: 5, scope: !1953)
!2541 = !DILocation(line: 569, column: 17, scope: !1957)
!2542 = !DILocation(line: 569, column: 55, scope: !1957)
!2543 = !DILocation(line: 570, column: 9, scope: !1956)
!2544 = !DILocation(line: 571, column: 21, scope: !1956)
!2545 = !DILocation(line: 571, column: 13, scope: !1956)
!2546 = !DILocation(line: 572, column: 9, scope: !1956)
!2547 = !DILocation(line: 572, column: 14, scope: !1956)
!2548 = !DILocation(line: 574, column: 44, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !1956, file: !1, line: 574, column: 13)
!2550 = !DILocation(line: 574, column: 41, scope: !2549)
!2551 = !DILocation(line: 570, column: 14, scope: !1956)
!2552 = !DILocation(line: 574, column: 13, scope: !2549)
!2553 = !DILocation(line: 574, column: 66, scope: !2549)
!2554 = !DILocation(line: 574, column: 13, scope: !1956)
!2555 = !DILocation(line: 576, column: 13, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !1956, file: !1, line: 576, column: 13)
!2557 = !DILocation(line: 576, column: 18, scope: !2556)
!2558 = !DILocation(line: 576, column: 22, scope: !2556)
!2559 = !DILocation(line: 576, column: 40, scope: !2556)
!2560 = !DILocation(line: 576, column: 33, scope: !2556)
!2561 = !DILocation(line: 576, column: 30, scope: !2556)
!2562 = !DILocation(line: 576, column: 13, scope: !1956)
!2563 = !DILocation(line: 577, column: 13, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 576, column: 47)
!2565 = !DILocation(line: 578, column: 13, scope: !2564)
!2566 = !DILocation(line: 581, column: 17, scope: !1956)
!2567 = !DILocation(line: 582, column: 45, scope: !1956)
!2568 = !DILocation(line: 582, column: 48, scope: !1956)
!2569 = !DILocation(line: 582, column: 54, scope: !1956)
!2570 = !DILocation(line: 582, column: 9, scope: !1956)
!2571 = !DILocation(line: 583, column: 17, scope: !1956)
!2572 = !DILocation(line: 585, column: 17, scope: !1956)
!2573 = !DILocation(line: 586, column: 45, scope: !1956)
!2574 = !DILocation(line: 586, column: 48, scope: !1956)
!2575 = !DILocation(line: 586, column: 54, scope: !1956)
!2576 = !{!1618, !231, i64 8}
!2577 = !DILocation(line: 586, column: 9, scope: !1956)
!2578 = !DILocation(line: 587, column: 17, scope: !1956)
!2579 = !DILocation(line: 589, column: 9, scope: !1956)
!2580 = !DILocation(line: 590, column: 5, scope: !1957)
!2581 = !DILocation(line: 590, column: 17, scope: !1965)
!2582 = !DILocation(line: 590, column: 59, scope: !1965)
!2583 = !DILocation(line: 592, column: 15, scope: !1964)
!2584 = !DILocation(line: 594, column: 47, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !1964, file: !1, line: 594, column: 13)
!2586 = !DILocation(line: 594, column: 65, scope: !2585)
!2587 = !DILocation(line: 594, column: 18, scope: !2585)
!2588 = !DILocation(line: 591, column: 15, scope: !1964)
!2589 = !DILocation(line: 595, column: 17, scope: !2585)
!2590 = !DILocation(line: 594, column: 13, scope: !1964)
!2591 = !DILocation(line: 598, column: 20, scope: !1964)
!2592 = !DILocation(line: 598, column: 9, scope: !1964)
!2593 = !DILocation(line: 601, column: 31, scope: !1968)
!2594 = !DILocation(line: 601, column: 23, scope: !1968)
!2595 = !DILocation(line: 602, column: 26, scope: !1968)
!2596 = !DILocation(line: 604, column: 13, scope: !1969)
!2597 = !DILocation(line: 606, column: 21, scope: !1969)
!2598 = !DILocation(line: 607, column: 13, scope: !1969)
!2599 = !DILocation(line: 0, scope: !1968)
!2600 = !DILocation(line: 610, column: 16, scope: !1972)
!2601 = !DILocation(line: 610, column: 13, scope: !1964)
!2602 = !DILocation(line: 611, column: 13, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 610, column: 25)
!2604 = !DILocation(line: 613, column: 9, scope: !2603)
!2605 = !DILocation(line: 614, column: 13, scope: !1971)
!2606 = !DILocation(line: 614, column: 18, scope: !1971)
!2607 = !DILocation(line: 615, column: 13, scope: !1971)
!2608 = !DILocation(line: 616, column: 13, scope: !1971)
!2609 = !DILocation(line: 617, column: 9, scope: !1972)
!2610 = !DILocation(line: 618, column: 17, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 618, column: 16)
!2612 = !DILocation(line: 618, column: 62, scope: !2611)
!2613 = !DILocation(line: 619, column: 9, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 618, column: 79)
!2615 = !DILocation(line: 620, column: 9, scope: !2614)
!2616 = !DILocation(line: 621, column: 9, scope: !2614)
!2617 = !DILocation(line: 622, column: 27, scope: !2614)
!2618 = !DILocation(line: 622, column: 9, scope: !2614)
!2619 = !DILocation(line: 623, column: 5, scope: !2614)
!2620 = !DILocation(line: 623, column: 17, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 623, column: 16)
!2622 = !DILocation(line: 623, column: 64, scope: !2621)
!2623 = !DILocation(line: 625, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 624, column: 5)
!2625 = !DILocation(line: 626, column: 9, scope: !2624)
!2626 = !DILocation(line: 628, column: 9, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 627, column: 12)
!2628 = !DILocation(line: 629, column: 9, scope: !2627)
!2629 = !DILocation(line: 631, column: 1, scope: !1726)
!2630 = distinct !DISubprogram(name: "_serverAssertWithInfo", scope: !1, file: !1, line: 702, type: !2631, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2637)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2633, !2635, !862, !862, !9}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!2637 = !{!2638, !2639, !2640, !2641, !2642}
!2638 = !DILocalVariable(name: "c", arg: 1, scope: !2630, file: !1, line: 702, type: !2633)
!2639 = !DILocalVariable(name: "o", arg: 2, scope: !2630, file: !1, line: 702, type: !2635)
!2640 = !DILocalVariable(name: "estr", arg: 3, scope: !2630, file: !1, line: 702, type: !862)
!2641 = !DILocalVariable(name: "file", arg: 4, scope: !2630, file: !1, line: 702, type: !862)
!2642 = !DILocalVariable(name: "line", arg: 5, scope: !2630, file: !1, line: 702, type: !9)
!2643 = !DILocation(line: 702, column: 42, scope: !2630)
!2644 = !DILocation(line: 702, column: 57, scope: !2630)
!2645 = !DILocation(line: 702, column: 72, scope: !2630)
!2646 = !DILocation(line: 702, column: 90, scope: !2630)
!2647 = !DILocation(line: 702, column: 100, scope: !2630)
!2648 = !DILocation(line: 703, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2630, file: !1, line: 703, column: 9)
!2650 = !DILocation(line: 703, column: 9, scope: !2630)
!2651 = !DILocation(line: 703, column: 12, scope: !2649)
!2652 = !DILocation(line: 704, column: 9, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2630, file: !1, line: 704, column: 9)
!2654 = !DILocation(line: 704, column: 9, scope: !2630)
!2655 = !DILocalVariable(name: "o", arg: 1, scope: !2656, file: !1, line: 696, type: !2635)
!2656 = distinct !DISubprogram(name: "_serverAssertPrintObject", scope: !1, file: !1, line: 696, type: !2657, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !2635}
!2659 = !{!2655}
!2660 = !DILocation(line: 696, column: 43, scope: !2656, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 704, column: 12, scope: !2653)
!2662 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 697, column: 5, scope: !2656, inlinedAt: !2661)
!2664 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !2663)
!2665 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !2663)
!2666 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !2663)
!2667 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !2663)
!2668 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !2663)
!2669 = !DILocation(line: 698, column: 5, scope: !2656, inlinedAt: !2661)
!2670 = !DILocation(line: 699, column: 5, scope: !2656, inlinedAt: !2661)
!2671 = !DILocation(line: 704, column: 12, scope: !2653)
!2672 = !DILocation(line: 635, column: 32, scope: !1504, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 705, column: 5, scope: !2630)
!2674 = !DILocation(line: 635, column: 50, scope: !1504, inlinedAt: !2673)
!2675 = !DILocation(line: 635, column: 60, scope: !1504, inlinedAt: !2673)
!2676 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 636, column: 5, scope: !1504, inlinedAt: !2673)
!2678 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !2677)
!2679 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !2677)
!2680 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !2677)
!2681 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !2677)
!2682 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !2677)
!2683 = !DILocation(line: 637, column: 5, scope: !1504, inlinedAt: !2673)
!2684 = !DILocation(line: 638, column: 5, scope: !1504, inlinedAt: !2673)
!2685 = !DILocation(line: 645, column: 18, scope: !1504, inlinedAt: !2673)
!2686 = !DILocation(line: 706, column: 1, scope: !2630)
!2687 = !DILocation(line: 727, column: 16, scope: !1515)
!2688 = !DILocation(line: 727, column: 33, scope: !1515)
!2689 = !DILocation(line: 727, column: 9, scope: !1516)
!2690 = !DILocation(line: 728, column: 9, scope: !1526)
!2691 = !DILocation(line: 730, column: 33, scope: !1526)
!2692 = !DILocation(line: 731, column: 5, scope: !1526)
!2693 = !DILocation(line: 732, column: 1, scope: !1516)
!2694 = distinct !DISubprogram(name: "_serverAssertPrintClientInfo", scope: !1, file: !1, line: 648, type: !2695, isLocal: false, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !2633}
!2697 = !{!2698, !2699, !2700, !2704}
!2698 = !DILocalVariable(name: "c", arg: 1, scope: !2694, file: !1, line: 648, type: !2633)
!2699 = !DILocalVariable(name: "j", scope: !2694, file: !1, line: 649, type: !9)
!2700 = !DILocalVariable(name: "buf", scope: !2701, file: !1, line: 657, type: !381)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !1, line: 656, column: 33)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 656, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 656, column: 5)
!2704 = !DILocalVariable(name: "arg", scope: !2701, file: !1, line: 658, type: !5)
!2705 = !DILocation(line: 648, column: 49, scope: !2694)
!2706 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 651, column: 5, scope: !2694)
!2708 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !2707)
!2709 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !2707)
!2710 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !2707)
!2711 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !2707)
!2712 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !2707)
!2713 = !DILocation(line: 652, column: 5, scope: !2694)
!2714 = !DILocation(line: 653, column: 51, scope: !2694)
!2715 = !{!1976, !230, i64 160}
!2716 = !DILocation(line: 653, column: 5, scope: !2694)
!2717 = !DILocation(line: 654, column: 48, scope: !2694)
!2718 = !{!1976, !230, i64 8}
!2719 = !DILocation(line: 654, column: 5, scope: !2694)
!2720 = !DILocation(line: 655, column: 50, scope: !2694)
!2721 = !DILocation(line: 655, column: 5, scope: !2694)
!2722 = !DILocation(line: 649, column: 9, scope: !2694)
!2723 = !DILocation(line: 656, column: 22, scope: !2702)
!2724 = !DILocation(line: 656, column: 17, scope: !2702)
!2725 = !DILocation(line: 656, column: 5, scope: !2703)
!2726 = !DILocation(line: 657, column: 9, scope: !2701)
!2727 = !DILocation(line: 657, column: 14, scope: !2701)
!2728 = !DILocation(line: 660, column: 16, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 660, column: 13)
!2730 = !DILocation(line: 660, column: 13, scope: !2729)
!2731 = !DILocation(line: 660, column: 25, scope: !2729)
!2732 = !DILocation(line: 660, column: 30, scope: !2729)
!2733 = !DILocation(line: 660, column: 44, scope: !2729)
!2734 = !DILocation(line: 0, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 662, column: 16)
!2736 = !DILocation(line: 660, column: 47, scope: !2729)
!2737 = !DILocation(line: 661, column: 39, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 660, column: 77)
!2739 = !DILocation(line: 658, column: 15, scope: !2701)
!2740 = !DILocation(line: 662, column: 9, scope: !2738)
!2741 = !DILocation(line: 664, column: 47, scope: !2735)
!2742 = !DILocation(line: 663, column: 13, scope: !2735)
!2743 = !DILocation(line: 668, column: 24, scope: !2701)
!2744 = !DILocation(line: 668, column: 21, scope: !2701)
!2745 = !DILocation(line: 668, column: 33, scope: !2701)
!2746 = !DILocation(line: 667, column: 9, scope: !2701)
!2747 = !DILocation(line: 669, column: 5, scope: !2702)
!2748 = !DILocation(line: 656, column: 29, scope: !2702)
!2749 = distinct !{!2749, !2725, !2750}
!2750 = !DILocation(line: 669, column: 5, scope: !2703)
!2751 = !DILocation(line: 670, column: 1, scope: !2694)
!2752 = distinct !DISubprogram(name: "serverLogObjectDebugInfo", scope: !1, file: !1, line: 672, type: !2657, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2753)
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "o", arg: 1, scope: !2752, file: !1, line: 672, type: !2635)
!2755 = !DILocalVariable(name: "repr", scope: !2756, file: !1, line: 679, type: !94)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !1, line: 678, column: 36)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !1, line: 678, column: 13)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 676, column: 55)
!2759 = distinct !DILexicalBlock(scope: !2752, file: !1, line: 676, column: 9)
!2760 = !DILocation(line: 672, column: 43, scope: !2752)
!2761 = !DILocation(line: 673, column: 48, scope: !2752)
!2762 = !DILocation(line: 673, column: 5, scope: !2752)
!2763 = !DILocation(line: 674, column: 52, scope: !2752)
!2764 = !DILocation(line: 674, column: 5, scope: !2752)
!2765 = !DILocation(line: 675, column: 52, scope: !2752)
!2766 = !DILocation(line: 675, column: 5, scope: !2752)
!2767 = !DILocation(line: 676, column: 12, scope: !2759)
!2768 = !DILocation(line: 676, column: 31, scope: !2759)
!2769 = !DILocation(line: 676, column: 34, scope: !2759)
!2770 = !DILocation(line: 677, column: 70, scope: !2758)
!2771 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 677, column: 60, scope: !2758)
!2773 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2772)
!2774 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2772)
!2775 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2772)
!2776 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2772)
!2777 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !2772)
!2778 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2772)
!2779 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2772)
!2780 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !2772)
!2781 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2772)
!2782 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2772)
!2783 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2772)
!2784 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2772)
!2785 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2772)
!2786 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2772)
!2787 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2772)
!2788 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2772)
!2789 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2772)
!2790 = !DILocation(line: 0, scope: !247, inlinedAt: !2772)
!2791 = !DILocation(line: 677, column: 9, scope: !2758)
!2792 = !DILocation(line: 678, column: 23, scope: !2757)
!2793 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 678, column: 13, scope: !2757)
!2795 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2794)
!2796 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2794)
!2797 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2794)
!2798 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2794)
!2799 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2794)
!2800 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2794)
!2801 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2794)
!2802 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2794)
!2803 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2794)
!2804 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2794)
!2805 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2794)
!2806 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2794)
!2807 = !DILocation(line: 0, scope: !247, inlinedAt: !2794)
!2808 = !DILocation(line: 678, column: 28, scope: !2757)
!2809 = !DILocation(line: 678, column: 13, scope: !2758)
!2810 = !DILocation(line: 679, column: 35, scope: !2756)
!2811 = !DILocation(line: 679, column: 49, scope: !2756)
!2812 = !DILocation(line: 87, column: 39, scope: !233, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 679, column: 53, scope: !2756)
!2814 = !DILocation(line: 88, column: 27, scope: !233, inlinedAt: !2813)
!2815 = !DILocation(line: 88, column: 19, scope: !233, inlinedAt: !2813)
!2816 = !DILocation(line: 89, column: 5, scope: !233, inlinedAt: !2813)
!2817 = !DILocation(line: 91, column: 20, scope: !247, inlinedAt: !2813)
!2818 = !DILocation(line: 91, column: 13, scope: !247, inlinedAt: !2813)
!2819 = !DILocation(line: 93, column: 20, scope: !247, inlinedAt: !2813)
!2820 = !DILocation(line: 93, column: 34, scope: !247, inlinedAt: !2813)
!2821 = !DILocation(line: 93, column: 13, scope: !247, inlinedAt: !2813)
!2822 = !DILocation(line: 95, column: 20, scope: !247, inlinedAt: !2813)
!2823 = !DILocation(line: 95, column: 35, scope: !247, inlinedAt: !2813)
!2824 = !DILocation(line: 95, column: 13, scope: !247, inlinedAt: !2813)
!2825 = !DILocation(line: 97, column: 20, scope: !247, inlinedAt: !2813)
!2826 = !DILocation(line: 97, column: 35, scope: !247, inlinedAt: !2813)
!2827 = !DILocation(line: 97, column: 13, scope: !247, inlinedAt: !2813)
!2828 = !DILocation(line: 99, column: 20, scope: !247, inlinedAt: !2813)
!2829 = !DILocation(line: 99, column: 35, scope: !247, inlinedAt: !2813)
!2830 = !DILocation(line: 99, column: 13, scope: !247, inlinedAt: !2813)
!2831 = !DILocation(line: 0, scope: !247, inlinedAt: !2813)
!2832 = !DILocation(line: 679, column: 24, scope: !2756)
!2833 = !DILocation(line: 679, column: 17, scope: !2756)
!2834 = !DILocation(line: 680, column: 13, scope: !2756)
!2835 = !DILocation(line: 681, column: 13, scope: !2756)
!2836 = !DILocation(line: 682, column: 9, scope: !2756)
!2837 = !DILocation(line: 684, column: 55, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !1, line: 683, column: 37)
!2839 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 683, column: 16)
!2840 = !DILocation(line: 684, column: 49, scope: !2838)
!2841 = !DILocation(line: 684, column: 9, scope: !2838)
!2842 = !DILocation(line: 685, column: 5, scope: !2838)
!2843 = !DILocation(line: 686, column: 52, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 685, column: 36)
!2845 = distinct !DILexicalBlock(scope: !2839, file: !1, line: 685, column: 16)
!2846 = !DILocation(line: 686, column: 46, scope: !2844)
!2847 = !DILocation(line: 686, column: 9, scope: !2844)
!2848 = !DILocation(line: 687, column: 5, scope: !2844)
!2849 = !DILocation(line: 688, column: 53, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 687, column: 37)
!2851 = distinct !DILexicalBlock(scope: !2845, file: !1, line: 687, column: 16)
!2852 = !DILocation(line: 688, column: 47, scope: !2850)
!2853 = !DILocation(line: 688, column: 9, scope: !2850)
!2854 = !DILocation(line: 689, column: 5, scope: !2850)
!2855 = !DILocation(line: 690, column: 59, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !1, line: 689, column: 37)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !1, line: 689, column: 16)
!2858 = !DILocation(line: 690, column: 53, scope: !2856)
!2859 = !DILocation(line: 690, column: 9, scope: !2856)
!2860 = !DILocation(line: 691, column: 16, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !1, line: 691, column: 13)
!2862 = !DILocation(line: 691, column: 25, scope: !2861)
!2863 = !DILocation(line: 691, column: 13, scope: !2856)
!2864 = !DILocation(line: 692, column: 79, scope: !2861)
!2865 = !DILocation(line: 692, column: 85, scope: !2861)
!2866 = !{!1174, !231, i64 8}
!2867 = !DILocation(line: 692, column: 90, scope: !2861)
!2868 = !{!2869, !230, i64 24}
!2869 = !{!"zskiplist", !231, i64 0, !231, i64 8, !264, i64 16, !230, i64 24}
!2870 = !DILocation(line: 692, column: 13, scope: !2861)
!2871 = !DILocation(line: 694, column: 1, scope: !2752)
!2872 = !DILocation(line: 696, column: 43, scope: !2656)
!2873 = !DILocation(line: 727, column: 16, scope: !1515, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 697, column: 5, scope: !2656)
!2875 = !DILocation(line: 727, column: 33, scope: !1515, inlinedAt: !2874)
!2876 = !DILocation(line: 727, column: 9, scope: !1516, inlinedAt: !2874)
!2877 = !DILocation(line: 728, column: 9, scope: !1526, inlinedAt: !2874)
!2878 = !DILocation(line: 730, column: 33, scope: !1526, inlinedAt: !2874)
!2879 = !DILocation(line: 731, column: 5, scope: !1526, inlinedAt: !2874)
!2880 = !DILocation(line: 698, column: 5, scope: !2656)
!2881 = !DILocation(line: 699, column: 5, scope: !2656)
!2882 = !DILocation(line: 700, column: 1, scope: !2656)
!2883 = distinct !DISubprogram(name: "serverLogHexDump", scope: !1, file: !1, line: 1352, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !9, !5, !4, !158}
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2895, !2896, !2897}
!2887 = !DILocalVariable(name: "level", arg: 1, scope: !2883, file: !1, line: 1352, type: !9)
!2888 = !DILocalVariable(name: "descr", arg: 2, scope: !2883, file: !1, line: 1352, type: !5)
!2889 = !DILocalVariable(name: "value", arg: 3, scope: !2883, file: !1, line: 1352, type: !4)
!2890 = !DILocalVariable(name: "len", arg: 4, scope: !2883, file: !1, line: 1352, type: !158)
!2891 = !DILocalVariable(name: "buf", scope: !2883, file: !1, line: 1353, type: !2892)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 520, elements: !2893)
!2893 = !{!2894}
!2894 = !DISubrange(count: 65)
!2895 = !DILocalVariable(name: "b", scope: !2883, file: !1, line: 1353, type: !5)
!2896 = !DILocalVariable(name: "v", scope: !2883, file: !1, line: 1354, type: !157)
!2897 = !DILocalVariable(name: "charset", scope: !2883, file: !1, line: 1355, type: !2898)
!2898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 136, elements: !2899)
!2899 = !{!2900}
!2900 = !DISubrange(count: 17)
!2901 = !DILocation(line: 1352, column: 27, scope: !2883)
!2902 = !DILocation(line: 1352, column: 40, scope: !2883)
!2903 = !DILocation(line: 1352, column: 53, scope: !2883)
!2904 = !DILocation(line: 1352, column: 67, scope: !2883)
!2905 = !DILocation(line: 1353, column: 5, scope: !2883)
!2906 = !DILocation(line: 1353, column: 10, scope: !2883)
!2907 = !DILocation(line: 1354, column: 20, scope: !2883)
!2908 = !DILocation(line: 1355, column: 10, scope: !2883)
!2909 = !DILocation(line: 1357, column: 5, scope: !2883)
!2910 = !DILocation(line: 1353, column: 20, scope: !2883)
!2911 = !DILocation(line: 1359, column: 5, scope: !2883)
!2912 = !DILocation(line: 1371, column: 23, scope: !2883)
!2913 = !DILocation(line: 1360, column: 25, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2883, file: !1, line: 1359, column: 16)
!2915 = !DILocation(line: 1360, column: 28, scope: !2914)
!2916 = !DILocation(line: 1360, column: 16, scope: !2914)
!2917 = !DILocation(line: 1360, column: 14, scope: !2914)
!2918 = !DILocation(line: 1361, column: 25, scope: !2914)
!2919 = !DILocation(line: 1361, column: 28, scope: !2914)
!2920 = !DILocation(line: 1361, column: 16, scope: !2914)
!2921 = !DILocation(line: 1361, column: 9, scope: !2914)
!2922 = !DILocation(line: 1361, column: 14, scope: !2914)
!2923 = !DILocation(line: 1362, column: 9, scope: !2914)
!2924 = !DILocation(line: 1362, column: 14, scope: !2914)
!2925 = !DILocation(line: 1364, column: 12, scope: !2914)
!2926 = !DILocation(line: 1365, column: 10, scope: !2914)
!2927 = !DILocation(line: 1366, column: 14, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2914, file: !1, line: 1366, column: 13)
!2929 = !DILocation(line: 1366, column: 19, scope: !2928)
!2930 = !DILocation(line: 1366, column: 32, scope: !2928)
!2931 = !DILocation(line: 1366, column: 25, scope: !2928)
!2932 = !DILocation(line: 1367, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !1, line: 1366, column: 38)
!2934 = !DILocation(line: 1369, column: 9, scope: !2933)
!2935 = !DILocation(line: 0, scope: !2914)
!2936 = distinct !{!2936, !2911, !2937}
!2937 = !DILocation(line: 1370, column: 5, scope: !2883)
!2938 = !DILocation(line: 1371, column: 5, scope: !2883)
!2939 = !DILocation(line: 1372, column: 1, scope: !2883)
!2940 = distinct !DISubprogram(name: "watchdogSignalHandler", scope: !1, file: !1, line: 1377, type: !2941, isLocal: false, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2952)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !9, !2943, !4}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !2945, line: 72, baseType: !2946)
!2945 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2945, line: 68, size: 96, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2946, file: !2945, line: 69, baseType: !9, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2946, file: !2945, line: 70, baseType: !9, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !2946, file: !2945, line: 71, baseType: !2951, size: 32, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !2945, line: 61, baseType: !9)
!2952 = !{!2953, !2954, !2955}
!2953 = !DILocalVariable(name: "sig", arg: 1, scope: !2940, file: !1, line: 1377, type: !9)
!2954 = !DILocalVariable(name: "info", arg: 2, scope: !2940, file: !1, line: 1377, type: !2943)
!2955 = !DILocalVariable(name: "secret", arg: 3, scope: !2940, file: !1, line: 1377, type: !4)
!2956 = !DILocation(line: 1377, column: 32, scope: !2940)
!2957 = !DILocation(line: 1377, column: 48, scope: !2940)
!2958 = !DILocation(line: 1377, column: 60, scope: !2940)
!2959 = !DILocation(line: 1386, column: 5, scope: !2940)
!2960 = !DILocation(line: 1390, column: 5, scope: !2940)
!2961 = !DILocation(line: 1392, column: 5, scope: !2940)
!2962 = !DILocation(line: 1393, column: 1, scope: !2940)
!2963 = distinct !DISubprogram(name: "watchdogScheduleSignal", scope: !1, file: !1, line: 1398, type: !110, isLocal: false, isDefinition: true, scopeLine: 1398, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2964)
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "period", arg: 1, scope: !2963, file: !1, line: 1398, type: !9)
!2966 = !DILocalVariable(name: "it", scope: !2963, file: !1, line: 1399, type: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerval", file: !2968, line: 25, size: 256, elements: !2969)
!2968 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/sys/time.h", directory: "/root/.unikraft/apps/redis/build")
!2969 = !{!2970, !2976}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !2967, file: !2968, line: 26, baseType: !2971, size: 128)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1774, line: 44, size: 128, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2971, file: !1774, line: 45, baseType: !1773, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !2971, file: !1774, line: 46, baseType: !2975, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !1774, line: 39, baseType: !73)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !2967, file: !2968, line: 27, baseType: !2971, size: 128, offset: 128)
!2977 = !DILocation(line: 1398, column: 33, scope: !2963)
!2978 = !DILocation(line: 1399, column: 5, scope: !2963)
!2979 = !DILocation(line: 1402, column: 32, scope: !2963)
!2980 = !DILocation(line: 1402, column: 26, scope: !2963)
!2981 = !DILocation(line: 1402, column: 17, scope: !2963)
!2982 = !DILocation(line: 1402, column: 24, scope: !2963)
!2983 = !{!2984, !264, i64 16}
!2984 = !{!"itimerval", !2985, i64 0, !2985, i64 16}
!2985 = !{!"timeval", !264, i64 0, !264, i64 8}
!2986 = !DILocation(line: 1403, column: 34, scope: !2963)
!2987 = !DILocation(line: 1403, column: 40, scope: !2963)
!2988 = !DILocation(line: 1403, column: 27, scope: !2963)
!2989 = !DILocation(line: 1403, column: 17, scope: !2963)
!2990 = !DILocation(line: 1403, column: 25, scope: !2963)
!2991 = !{!2984, !264, i64 24}
!2992 = !DILocation(line: 1405, column: 27, scope: !2963)
!2993 = !DILocation(line: 1399, column: 22, scope: !2963)
!2994 = !DILocation(line: 1407, column: 5, scope: !2963)
!2995 = !DILocation(line: 1408, column: 1, scope: !2963)
!2996 = distinct !DISubprogram(name: "enableWatchdog", scope: !1, file: !1, line: 1411, type: !110, isLocal: false, isDefinition: true, scopeLine: 1411, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DILocalVariable(name: "period", arg: 1, scope: !2996, file: !1, line: 1411, type: !9)
!2999 = !DILocalVariable(name: "min_period", scope: !2996, file: !1, line: 1412, type: !9)
!3000 = !DILocalVariable(name: "act", scope: !3001, file: !1, line: 1415, type: !3003)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !1, line: 1414, column: 38)
!3002 = distinct !DILexicalBlock(scope: !2996, file: !1, line: 1414, column: 9)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2945, line: 74, size: 256, elements: !3004)
!3004 = !{!3005, !3011, !3014, !3015}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3003, file: !2945, line: 78, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3003, file: !2945, line: 75, size: 64, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3006, file: !2945, line: 76, baseType: !109, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3006, file: !2945, line: 77, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3003, file: !2945, line: 79, baseType: !3012, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2945, line: 64, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !2945, line: 63, baseType: !35)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3003, file: !2945, line: 80, baseType: !9, size: 32, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3003, file: !2945, line: 81, baseType: !836, size: 64, offset: 192)
!3016 = !DILocation(line: 1411, column: 25, scope: !2996)
!3017 = !DILocation(line: 1414, column: 16, scope: !3002)
!3018 = !{!1519, !230, i64 3136}
!3019 = !DILocation(line: 1414, column: 32, scope: !3002)
!3020 = !DILocation(line: 1414, column: 9, scope: !2996)
!3021 = !DILocation(line: 1415, column: 9, scope: !3001)
!3022 = !DILocation(line: 1419, column: 26, scope: !3001)
!3023 = !DILocation(line: 1419, column: 9, scope: !3001)
!3024 = !DILocation(line: 1420, column: 13, scope: !3001)
!3025 = !DILocation(line: 1420, column: 22, scope: !3001)
!3026 = !{!3027, !230, i64 16}
!3027 = !{!"sigaction", !204, i64 0, !264, i64 8, !230, i64 16, !231, i64 24}
!3028 = !DILocation(line: 1421, column: 13, scope: !3001)
!3029 = !DILocation(line: 1421, column: 26, scope: !3001)
!3030 = !DILocation(line: 1415, column: 26, scope: !3001)
!3031 = !DILocation(line: 1422, column: 9, scope: !3001)
!3032 = !DILocation(line: 1423, column: 5, scope: !3002)
!3033 = !DILocation(line: 1423, column: 5, scope: !3001)
!3034 = !DILocation(line: 1427, column: 31, scope: !2996)
!3035 = !{!1519, !230, i64 40}
!3036 = !DILocation(line: 1427, column: 23, scope: !2996)
!3037 = !DILocation(line: 1427, column: 34, scope: !2996)
!3038 = !DILocation(line: 1412, column: 9, scope: !2996)
!3039 = !DILocation(line: 1428, column: 16, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2996, file: !1, line: 1428, column: 9)
!3041 = !DILocation(line: 1428, column: 9, scope: !2996)
!3042 = !DILocation(line: 1398, column: 33, scope: !2963, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1429, column: 5, scope: !2996)
!3044 = !DILocation(line: 1399, column: 5, scope: !2963, inlinedAt: !3043)
!3045 = !DILocation(line: 1402, column: 32, scope: !2963, inlinedAt: !3043)
!3046 = !DILocation(line: 1402, column: 26, scope: !2963, inlinedAt: !3043)
!3047 = !DILocation(line: 1402, column: 17, scope: !2963, inlinedAt: !3043)
!3048 = !DILocation(line: 1402, column: 24, scope: !2963, inlinedAt: !3043)
!3049 = !DILocation(line: 1403, column: 34, scope: !2963, inlinedAt: !3043)
!3050 = !DILocation(line: 1403, column: 40, scope: !2963, inlinedAt: !3043)
!3051 = !DILocation(line: 1403, column: 27, scope: !2963, inlinedAt: !3043)
!3052 = !DILocation(line: 1403, column: 17, scope: !2963, inlinedAt: !3043)
!3053 = !DILocation(line: 1403, column: 25, scope: !2963, inlinedAt: !3043)
!3054 = !DILocation(line: 1405, column: 27, scope: !2963, inlinedAt: !3043)
!3055 = !DILocation(line: 1399, column: 22, scope: !2963, inlinedAt: !3043)
!3056 = !DILocation(line: 1407, column: 5, scope: !2963, inlinedAt: !3043)
!3057 = !DILocation(line: 1408, column: 1, scope: !2963, inlinedAt: !3043)
!3058 = !DILocation(line: 1430, column: 28, scope: !2996)
!3059 = !DILocation(line: 1431, column: 1, scope: !2996)
!3060 = distinct !DISubprogram(name: "disableWatchdog", scope: !1, file: !1, line: 1434, type: !837, isLocal: false, isDefinition: true, scopeLine: 1434, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3061)
!3061 = !{!3062}
!3062 = !DILocalVariable(name: "act", scope: !3060, file: !1, line: 1435, type: !3003)
!3063 = !DILocation(line: 1435, column: 5, scope: !3060)
!3064 = !DILocation(line: 1436, column: 16, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 1436, column: 9)
!3066 = !DILocation(line: 1436, column: 32, scope: !3065)
!3067 = !DILocation(line: 1436, column: 9, scope: !3060)
!3068 = !DILocation(line: 1398, column: 33, scope: !2963, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1437, column: 5, scope: !3060)
!3070 = !DILocation(line: 1399, column: 5, scope: !2963, inlinedAt: !3069)
!3071 = !DILocation(line: 1402, column: 17, scope: !2963, inlinedAt: !3069)
!3072 = !DILocation(line: 1402, column: 24, scope: !2963, inlinedAt: !3069)
!3073 = !DILocation(line: 1405, column: 27, scope: !2963, inlinedAt: !3069)
!3074 = !DILocation(line: 1399, column: 22, scope: !2963, inlinedAt: !3069)
!3075 = !DILocation(line: 1407, column: 5, scope: !2963, inlinedAt: !3069)
!3076 = !DILocation(line: 1408, column: 1, scope: !2963, inlinedAt: !3069)
!3077 = !DILocation(line: 1441, column: 22, scope: !3060)
!3078 = !DILocation(line: 1441, column: 5, scope: !3060)
!3079 = !DILocation(line: 1442, column: 9, scope: !3060)
!3080 = !DILocation(line: 1442, column: 18, scope: !3060)
!3081 = !DILocation(line: 1443, column: 9, scope: !3060)
!3082 = !DILocation(line: 1443, column: 20, scope: !3060)
!3083 = !DILocation(line: 1435, column: 22, scope: !3060)
!3084 = !DILocation(line: 1444, column: 5, scope: !3060)
!3085 = !DILocation(line: 1445, column: 28, scope: !3060)
!3086 = !DILocation(line: 1446, column: 1, scope: !3060)
