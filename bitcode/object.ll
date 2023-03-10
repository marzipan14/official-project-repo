; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/object.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/object.c"
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
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.intset = type { i32, i32, [0 x i8] }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.rax* }
%struct.streamID = type { i64, i64 }
%struct.RedisModuleType = type { i64, %struct.RedisModule*, i8* (%struct.RedisModuleIO*, i32)*, void (%struct.RedisModuleIO*, i8*)*, void (%struct.RedisModuleIO*, %struct.redisObject*, i8*)*, i64 (i8*)*, void (%struct.RedisModuleDigest*, i8*)*, void (i8*)*, i32 (%struct.RedisModuleIO*, i32, i32)*, void (%struct.RedisModuleIO*, i32)*, i32, [10 x i8] }
%struct.RedisModule = type opaque
%struct.RedisModuleIO = type { i64, %struct._rio*, %struct.RedisModuleType*, i32, i32, %struct.RedisModuleCtx*, %struct.redisObject* }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, %union.anon.1 }
%union.anon.1 = type { %struct.anon.5 }
%struct.anon.5 = type { i32*, i32*, i32, i64, i8* }
%struct.RedisModuleCtx = type opaque
%struct.RedisModuleDigest = type { [20 x i8], [20 x i8] }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.streamCG = type { %struct.streamID, %struct.rax*, %struct.rax* }
%struct.streamConsumer = type { i64, i8*, %struct.rax* }
%struct.moduleValue = type { %struct.RedisModuleType*, i8* }
%struct.redisMemOverhead = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, float, float, float, i64, float, i64, float, i64, float, i64, i64, %struct.anon.9* }
%struct.anon.9 = type { i64, i64, i64 }
%struct.listIter = type { %struct.listNode*, i32 }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [17 x i8] c"o->refcount == 1\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/object.c\00", align 1
@SDS_NOINIT = external dso_local local_unnamed_addr global i8*, align 8
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"o->type == OBJ_STRING\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Wrong encoding.\00", align 1
@setDictType = external dso_local global %struct.dictType, align 8
@zsetDictType = external dso_local global %struct.dictType, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown list encoding type\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Unknown set encoding type\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unknown hash encoding type\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"decrRefCount against refcount <= 0\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unknown encoding type\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"a->type == OBJ_STRING && b->type == OBJ_STRING\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unknown string encoding\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"value is not a valid float\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"value is not an integer or out of range\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"hashtable\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"quicklist\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"ziplist\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"intset\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"skiplist\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"embstr\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Unknown list encoding\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.30 = private unnamed_addr constant [106 x i8] c"Hi Sam, I can't find any memory issue in your instance. I can only account for what occurs on this base.\0A\00", align 1
@.str.31 = private unnamed_addr constant [269 x i8] c"Hi Sam, this instance is empty or is using very little memory, my issues detector can't be used in these conditions. Please, leave for your mission on Earth and fill it with some data. The new Sam and I will be back to our programming as soon as I finished rebooting.\0A\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Sam, I detected a few issues in this Redis instance memory implants:\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [641 x i8] c" * Peak memory: In the past this instance used more than 150% the memory that is currently using. The allocator is normally not able to release memory after a peak, so you can expect to see a big fragmentation ratio, however this is actually harmless and is only due to the memory peak, and if the Redis instance Resident Set Size (RSS) is currently bigger than expected, the memory will be used as soon as you fill the Redis instance with more data. If the memory peak was only occasional and you want to try to reclaim memory, please try the MEMORY PURGE command, otherwise the only other option is to shutdown and restart the instance.\0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [627 x i8] c" * High total RSS: This instance has a memory fragmentation and RSS overhead greater than 1.4 (this means that the Resident Set Size of the Redis process is much larger than the sum of the logical allocations Redis performed). This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. If the problem is a large peak memory, then there is no issue. Otherwise, make sure you are using the Jemalloc allocator and not the default libc malloc. Note: The currently used allocator is \22%s\22.\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@.str.36 = private unnamed_addr constant [358 x i8] c" * High allocator fragmentation: This instance has an allocator external fragmentation greater than 1.1. This problem is usually due either to a large peak memory (check if there is a peak memory entry above in the report) or may result from a workload that causes the allocator to fragment memory a lot. You can try enabling 'activedefrag' config option.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [379 x i8] c" * High allocator RSS overhead: This instance has an RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the allocator is much larger than the sum what the allocator actually holds). This problem is usually due to a large peak memory (check if there is a peak memory entry above in the report), you can try the MEMORY PURGE command to reclaim it.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [265 x i8] c" * High process RSS overhead: This instance has non-allocator RSS memory overhead is greater than 1.1 (this means that the Resident Set Size of the Redis process is much larger than the RSS the allocator holds). This problem may be due to Lua scripts or Modules.\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [545 x i8] c" * Big replica buffers: The replica output buffers in this instance are greater than 10MB for each replica (on average). This likely means that there is some replica instance that is struggling receiving data, either because it is too slow or because of networking issues. As a result, data piles on the master output buffers. Please try to identify what replica is not receiving data correctly and why. You can use the INFO output in order to check the replicas delays and the CLIENT LIST command to check the output buffers of each replica.\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [583 x i8] c" * Big client buffers: The clients output buffers in this instance are greater than 200K per client (on average). This may result from different causes, like Pub/Sub clients subscribed to channels bot not receiving data fast enough, so that data piles on the Redis instance output buffer, or clients sending commands with large replies or very large sequences of commands in the same pipeline. Please use the CLIENT LIST command in order to investigate the issue if it causes problems in your instance, or to understand better why certain clients are using a big amount of memory.\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [341 x i8] c" * Many scripts: There seem to be many cached scripts in this instance (more than 1000). This may be because scripts are generated and `EVAL`ed, instead of being parameterized (with KEYS and ARGV), `SCRIPT LOAD`ed and `EVALSHA`ed. Unless `SCRIPT FLUSH` is called periodically, the scripts' caches may end up consuming most of your memory.\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"I'm here to keep you safe, Sam. I want to help you.\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"lfu_freq <= 255\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.45 = private unnamed_addr constant [117 x i8] c"ENCODING <key> -- Return the kind of internal representation used in order to store the value associated with a key.\00", align 1
@.str.46 = private unnamed_addr constant [157 x i8] c"FREQ <key> -- Return the access frequency index of the key. The returned integer is proportional to the logarithm of the recent access frequency of the key.\00", align 1
@.str.47 = private unnamed_addr constant [136 x i8] c"IDLETIME <key> -- Return the idle time of the key, that is the approximated number of seconds elapsed since the last access to the key.\00", align 1
@.str.48 = private unnamed_addr constant [98 x i8] c"REFCOUNT <key> -- Return the number of references of the value associated with the specified key.\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"refcount\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"idletime\00", align 1
@.str.52 = private unnamed_addr constant [168 x i8] c"An LFU maxmemory policy is selected, idle time not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.54 = private unnamed_addr constant [179 x i8] c"An LFU maxmemory policy is not selected, access frequency not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"DOCTOR - Return memory problems reports.\00", align 1
@.str.56 = private unnamed_addr constant [77 x i8] c"MALLOC-STATS -- Return internal statistics report from the memory allocator.\00", align 1
@.str.57 = private unnamed_addr constant [72 x i8] c"PURGE -- Attempt to purge dirty pages for reclamation by the allocator.\00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"STATS -- Return information about the memory usage of the server.\00", align 1
@.str.59 = private unnamed_addr constant [145 x i8] c"USAGE <key> [SAMPLES <count>] -- Return memory in bytes used by <key> and its value. Nested values are sampled up to <count> times (default: 5).\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"peak.allocated\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"total.allocated\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"startup.allocated\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"replication.backlog\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"clients.slaves\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"clients.normal\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"aof.buffer\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"lua.caches\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"db.%zd\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"overhead.hashtable.main\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"overhead.hashtable.expires\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"overhead.total\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"keys.count\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"keys.bytes-per-key\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"dataset.bytes\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"dataset.percentage\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"peak.percentage\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"allocator.allocated\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"allocator.active\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"allocator.resident\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.ratio\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"allocator-fragmentation.bytes\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"allocator-rss.ratio\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"allocator-rss.bytes\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"rss-overhead.ratio\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"rss-overhead.bytes\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"fragmentation\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"fragmentation.bytes\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"malloc-stats\00", align 1
@.str.92 = private unnamed_addr constant [46 x i8] c"Stats not supported for the current allocator\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@.str.95 = private unnamed_addr constant [74 x i8] c"Unknown subcommand or wrong number of arguments for '%s'. Try MEMORY HELP\00", align 1
@__A_VARIABLE = internal global i32 0
@switch.table.strEncoding = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)]
@switch.table.objectCommand = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #0 !dbg !166 {
  %3 = tail call i8* @zmalloc(i64 16) #6, !dbg !175
  %4 = bitcast i8* %3 to %struct.redisObject*, !dbg !175
  %5 = bitcast i8* %3 to i32*, !dbg !177
  %6 = load i32, i32* %5, align 8, !dbg !178
  %7 = and i32 %0, 15, !dbg !178
  %8 = and i32 %6, -256, !dbg !178
  %9 = or i32 %8, %7, !dbg !178
  store i32 %9, i32* %5, align 8, !dbg !179
  %10 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !180
  %11 = bitcast i8* %10 to i8**, !dbg !180
  store i8* %1, i8** %11, align 8, !dbg !181, !tbaa !182
  %12 = getelementptr inbounds i8, i8* %3, i64 4, !dbg !188
  %13 = bitcast i8* %12 to i32*, !dbg !188
  store i32 1, i32* %13, align 4, !dbg !189, !tbaa !190
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !191, !tbaa !193
  %15 = and i32 %14, 2, !dbg !201
  %16 = icmp eq i32 %15, 0, !dbg !201
  br i1 %16, label %25, label %17, !dbg !202

; <label>:17:                                     ; preds = %2
  %18 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !203
  %19 = trunc i64 %18 to i32, !dbg !205
  %20 = load i32, i32* %5, align 8, !dbg !206
  %21 = shl i32 %19, 16, !dbg !206
  %22 = and i32 %20, 255, !dbg !206
  %23 = or i32 %21, %22, !dbg !206
  %24 = or i32 %23, 1280, !dbg !206
  br label %31, !dbg !207

; <label>:25:                                     ; preds = %2
  %26 = tail call i32 @LRU_CLOCK() #6, !dbg !208
  %27 = load i32, i32* %5, align 8, !dbg !210
  %28 = shl i32 %26, 8, !dbg !210
  %29 = and i32 %27, 255, !dbg !210
  %30 = or i32 %29, %28, !dbg !210
  br label %31

; <label>:31:                                     ; preds = %25, %17
  %32 = phi i32 [ %30, %25 ], [ %24, %17 ]
  store i32 %32, i32* %5, align 8, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  ret %struct.redisObject* %4, !dbg !212
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @LFUGetTimeInMinutes() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @LRU_CLOCK() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @makeObjectShared(%struct.redisObject* returned) local_unnamed_addr #0 !dbg !213 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !219
  %3 = load i32, i32* %2, align 4, !dbg !219, !tbaa !190
  %4 = icmp eq i32 %3, 1, !dbg !219
  br i1 %4, label %6, label %5, !dbg !219

; <label>:5:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 70) #6, !dbg !219
  tail call void @_exit(i32 1) #7, !dbg !219
  unreachable, !dbg !219

; <label>:6:                                      ; preds = %1
  store i32 2147483647, i32* %2, align 4, !dbg !220, !tbaa !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  ret %struct.redisObject* %0, !dbg !221
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #0 !dbg !222 {
  %3 = tail call i8* @sdsnewlen(i8* %0, i64 %1) #6, !dbg !230
  %4 = tail call i8* @zmalloc(i64 16) #6, !dbg !234
  %5 = bitcast i8* %4 to %struct.redisObject*, !dbg !234
  %6 = bitcast i8* %4 to i32*, !dbg !236
  %7 = load i32, i32* %6, align 8, !dbg !237
  %8 = and i32 %7, -256, !dbg !237
  store i32 %8, i32* %6, align 8, !dbg !238
  %9 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !239
  %10 = bitcast i8* %9 to i8**, !dbg !239
  store i8* %3, i8** %10, align 8, !dbg !240, !tbaa !182
  %11 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !241
  %12 = bitcast i8* %11 to i32*, !dbg !241
  store i32 1, i32* %12, align 4, !dbg !242, !tbaa !190
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !243, !tbaa !193
  %14 = and i32 %13, 2, !dbg !244
  %15 = icmp eq i32 %14, 0, !dbg !244
  br i1 %15, label %24, label %16, !dbg !245

; <label>:16:                                     ; preds = %2
  %17 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !246
  %18 = trunc i64 %17 to i32, !dbg !247
  %19 = load i32, i32* %6, align 8, !dbg !248
  %20 = shl i32 %18, 16, !dbg !248
  %21 = and i32 %19, 255, !dbg !248
  %22 = or i32 %21, %20, !dbg !248
  %23 = or i32 %22, 1280, !dbg !248
  br label %30, !dbg !249

; <label>:24:                                     ; preds = %2
  %25 = tail call i32 @LRU_CLOCK() #6, !dbg !250
  %26 = load i32, i32* %6, align 8, !dbg !251
  %27 = shl i32 %25, 8, !dbg !251
  %28 = and i32 %26, 255, !dbg !251
  %29 = or i32 %28, %27, !dbg !251
  br label %30

; <label>:30:                                     ; preds = %16, %24
  %31 = phi i32 [ %29, %24 ], [ %23, %16 ]
  store i32 %31, i32* %6, align 8, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  ret %struct.redisObject* %5, !dbg !254
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createEmbeddedStringObject(i8*, i64) local_unnamed_addr #0 !dbg !255 {
  %3 = add i64 %1, 20, !dbg !263
  %4 = tail call i8* @zmalloc(i64 %3) #6, !dbg !264
  %5 = bitcast i8* %4 to %struct.redisObject*, !dbg !264
  %6 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !266
  %7 = bitcast i8* %4 to i32*, !dbg !268
  %8 = load i32, i32* %7, align 8, !dbg !269
  %9 = and i32 %8, -256, !dbg !270
  %10 = or i32 %9, 128, !dbg !270
  store i32 %10, i32* %7, align 8, !dbg !270
  %11 = getelementptr inbounds i8, i8* %4, i64 19, !dbg !271
  %12 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !272
  %13 = bitcast i8* %12 to i8**, !dbg !272
  store i8* %11, i8** %13, align 8, !dbg !273, !tbaa !182
  %14 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !274
  %15 = bitcast i8* %14 to i32*, !dbg !274
  store i32 1, i32* %15, align 4, !dbg !275, !tbaa !190
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !276, !tbaa !193
  %17 = and i32 %16, 2, !dbg !278
  %18 = icmp eq i32 %17, 0, !dbg !278
  br i1 %18, label %27, label %19, !dbg !279

; <label>:19:                                     ; preds = %2
  %20 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !280
  %21 = trunc i64 %20 to i32, !dbg !282
  %22 = load i32, i32* %7, align 8, !dbg !283
  %23 = shl i32 %21, 16, !dbg !283
  %24 = and i32 %22, 255, !dbg !283
  %25 = or i32 %23, %24, !dbg !283
  %26 = or i32 %25, 1280, !dbg !283
  br label %33, !dbg !284

; <label>:27:                                     ; preds = %2
  %28 = tail call i32 @LRU_CLOCK() #6, !dbg !285
  %29 = load i32, i32* %7, align 8, !dbg !287
  %30 = shl i32 %28, 8, !dbg !287
  %31 = and i32 %29, 255, !dbg !287
  %32 = or i32 %31, %30, !dbg !287
  br label %33

; <label>:33:                                     ; preds = %27, %19
  %34 = phi i32 [ %32, %27 ], [ %26, %19 ]
  store i32 %34, i32* %7, align 8, !dbg !288
  %35 = trunc i64 %1 to i8, !dbg !289
  store i8 %35, i8* %6, align 1, !dbg !290, !tbaa !291
  %36 = getelementptr inbounds i8, i8* %4, i64 17, !dbg !292
  store i8 %35, i8* %36, align 1, !dbg !293, !tbaa !291
  %37 = getelementptr inbounds i8, i8* %4, i64 18, !dbg !294
  store i8 1, i8* %37, align 1, !dbg !295, !tbaa !291
  %38 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !296, !tbaa !298
  %39 = icmp eq i8* %38, %0, !dbg !299
  br i1 %39, label %40, label %42, !dbg !300

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds i8, i8* %11, i64 %1, !dbg !301
  store i8 0, i8* %41, align 1, !dbg !302, !tbaa !291
  br label %50, !dbg !301

; <label>:42:                                     ; preds = %33
  %43 = icmp eq i8* %0, null, !dbg !303
  br i1 %43, label %47, label %44, !dbg !305

; <label>:44:                                     ; preds = %42
  %45 = tail call i8* @memcpy(i8* nonnull %11, i8* nonnull %0, i64 %1) #6, !dbg !306
  %46 = getelementptr inbounds i8, i8* %11, i64 %1, !dbg !308
  store i8 0, i8* %46, align 1, !dbg !309, !tbaa !291
  br label %50, !dbg !310

; <label>:47:                                     ; preds = %42
  %48 = add i64 %1, 1, !dbg !311
  %49 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %48) #6, !dbg !313
  br label %50

; <label>:50:                                     ; preds = %44, %47, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  ret %struct.redisObject* %5, !dbg !314
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #0 !dbg !315 {
  %3 = icmp ult i64 %1, 45, !dbg !321
  br i1 %3, label %4, label %6, !dbg !323

; <label>:4:                                      ; preds = %2
  %5 = tail call %struct.redisObject* @createEmbeddedStringObject(i8* %0, i64 %1) #9, !dbg !324
  br label %36, !dbg !325

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @sdsnewlen(i8* %0, i64 %1) #6, !dbg !329
  %8 = tail call i8* @zmalloc(i64 16) #6, !dbg !333
  %9 = bitcast i8* %8 to %struct.redisObject*, !dbg !333
  %10 = bitcast i8* %8 to i32*, !dbg !335
  %11 = load i32, i32* %10, align 8, !dbg !336
  %12 = and i32 %11, -256, !dbg !336
  store i32 %12, i32* %10, align 8, !dbg !337
  %13 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !338
  %14 = bitcast i8* %13 to i8**, !dbg !338
  store i8* %7, i8** %14, align 8, !dbg !339, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !340
  %16 = bitcast i8* %15 to i32*, !dbg !340
  store i32 1, i32* %16, align 4, !dbg !341, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !342, !tbaa !193
  %18 = and i32 %17, 2, !dbg !343
  %19 = icmp eq i32 %18, 0, !dbg !343
  br i1 %19, label %28, label %20, !dbg !344

; <label>:20:                                     ; preds = %6
  %21 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !345
  %22 = trunc i64 %21 to i32, !dbg !346
  %23 = load i32, i32* %10, align 8, !dbg !347
  %24 = shl i32 %22, 16, !dbg !347
  %25 = and i32 %23, 255, !dbg !347
  %26 = or i32 %24, %25, !dbg !347
  %27 = or i32 %26, 1280, !dbg !347
  br label %34, !dbg !348

; <label>:28:                                     ; preds = %6
  %29 = tail call i32 @LRU_CLOCK() #6, !dbg !349
  %30 = load i32, i32* %10, align 8, !dbg !350
  %31 = shl i32 %29, 8, !dbg !350
  %32 = and i32 %30, 255, !dbg !350
  %33 = or i32 %32, %31, !dbg !350
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  store i32 %35, i32* %10, align 8, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br label %36, !dbg !354

; <label>:36:                                     ; preds = %34, %4
  %37 = phi %struct.redisObject* [ %5, %4 ], [ %9, %34 ], !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  ret %struct.redisObject* %37, !dbg !356
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64, i32) local_unnamed_addr #0 !dbg !357 {
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !367, !tbaa !369
  %4 = icmp eq i64 %3, 0, !dbg !370
  br i1 %4, label %9, label %5, !dbg !371

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !372, !tbaa !193
  %7 = and i32 %6, 3, !dbg !373
  %8 = icmp eq i32 %7, 0, !dbg !373
  br i1 %8, label %9, label %10, !dbg !374

; <label>:9:                                      ; preds = %5, %2
  br label %10, !dbg !375

; <label>:10:                                     ; preds = %5, %9
  %11 = phi i32 [ 0, %9 ], [ %1, %5 ]
  %12 = icmp ult i64 %0, 10000, !dbg !377
  %13 = icmp eq i32 %11, 0, !dbg !379
  %14 = and i1 %12, %13, !dbg !377
  br i1 %14, label %15, label %24, !dbg !377

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 47, i64 %0, !dbg !380
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !380, !tbaa !298
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 1, !dbg !389
  %19 = load i32, i32* %18, align 4, !dbg !389, !tbaa !190
  %20 = icmp eq i32 %19, 2147483647, !dbg !391
  br i1 %20, label %23, label %21, !dbg !392

; <label>:21:                                     ; preds = %15
  %22 = add nsw i32 %19, 1, !dbg !393
  store i32 %22, i32* %18, align 4, !dbg !393, !tbaa !190
  br label %23, !dbg !394

; <label>:23:                                     ; preds = %15, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br label %56, !dbg !397

; <label>:24:                                     ; preds = %10
  %25 = tail call i8* @zmalloc(i64 16) #6, !dbg !404
  %26 = bitcast i8* %25 to %struct.redisObject*, !dbg !404
  %27 = bitcast i8* %25 to i32*, !dbg !406
  %28 = load i32, i32* %27, align 8, !dbg !407
  %29 = and i32 %28, -256, !dbg !407
  store i32 %29, i32* %27, align 8, !dbg !408
  %30 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !409
  %31 = bitcast i8* %30 to i8**, !dbg !409
  store i8* null, i8** %31, align 8, !dbg !410, !tbaa !182
  %32 = getelementptr inbounds i8, i8* %25, i64 4, !dbg !411
  %33 = bitcast i8* %32 to i32*, !dbg !411
  store i32 1, i32* %33, align 4, !dbg !412, !tbaa !190
  %34 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !413, !tbaa !193
  %35 = and i32 %34, 2, !dbg !414
  %36 = icmp eq i32 %35, 0, !dbg !414
  br i1 %36, label %45, label %37, !dbg !415

; <label>:37:                                     ; preds = %24
  %38 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !416
  %39 = trunc i64 %38 to i32, !dbg !417
  %40 = load i32, i32* %27, align 8, !dbg !418
  %41 = shl i32 %39, 16, !dbg !418
  %42 = and i32 %40, 255, !dbg !418
  %43 = or i32 %42, %41, !dbg !418
  %44 = or i32 %43, 1280, !dbg !418
  br label %51, !dbg !419

; <label>:45:                                     ; preds = %24
  %46 = tail call i32 @LRU_CLOCK() #6, !dbg !420
  %47 = load i32, i32* %27, align 8, !dbg !421
  %48 = shl i32 %46, 8, !dbg !421
  %49 = and i32 %47, 255, !dbg !421
  %50 = or i32 %49, %48, !dbg !421
  br label %51

; <label>:51:                                     ; preds = %37, %45
  %52 = phi i32 [ %50, %45 ], [ %44, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %53 = and i32 %52, -241, !dbg !423
  %54 = or i32 %53, 16, !dbg !423
  store i32 %54, i32* %27, align 8, !dbg !423
  %55 = inttoptr i64 %0 to i8*, !dbg !424
  store i8* %55, i8** %31, align 8, !dbg !425, !tbaa !182
  br label %56, !dbg !426

; <label>:56:                                     ; preds = %51, %23
  %57 = phi %struct.redisObject* [ %17, %23 ], [ %26, %51 ], !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret %struct.redisObject* %57, !dbg !429
}

; Function Attrs: noredzone nounwind
define dso_local void @incrRefCount(%struct.redisObject* nocapture) local_unnamed_addr #0 !dbg !383 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !431
  %3 = load i32, i32* %2, align 4, !dbg !431, !tbaa !190
  %4 = icmp eq i32 %3, 2147483647, !dbg !432
  br i1 %4, label %7, label %5, !dbg !433

; <label>:5:                                      ; preds = %1
  %6 = add nsw i32 %3, 1, !dbg !434
  store i32 %6, i32* %2, align 4, !dbg !434, !tbaa !190
  br label %7, !dbg !435

; <label>:7:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  ret void, !dbg !436
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #0 !dbg !437 {
  %2 = tail call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %0, i32 0) #9, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  ret %struct.redisObject* %2, !dbg !444
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLongForValue(i64) local_unnamed_addr #0 !dbg !445 {
  %2 = tail call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %0, i32 1) #9, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  ret %struct.redisObject* %2, !dbg !450
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #0 !dbg !451 {
  %3 = alloca [5120 x i8], align 16
  %4 = getelementptr inbounds [5120 x i8], [5120 x i8]* %3, i64 0, i64 0, !dbg !465
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %4) #8, !dbg !465
  %5 = call i32 @ld2string(i8* nonnull %4, i64 5120, x86_fp80 %0, i32 %1) #6, !dbg !467
  %6 = sext i32 %5 to i64, !dbg !469
  %7 = call %struct.redisObject* @createStringObject(i8* nonnull %4, i64 %6) #9, !dbg !470
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %4) #8, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  ret %struct.redisObject* %7, !dbg !472
}

; Function Attrs: noredzone
declare dso_local i32 @ld2string(i8*, i64, x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dupStringObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !473 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !482
  %3 = load i32, i32* %2, align 8, !dbg !482
  %4 = and i32 %3, 15, !dbg !482
  %5 = icmp eq i32 %4, 0, !dbg !482
  br i1 %5, label %7, label %6, !dbg !482

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 196) #6, !dbg !482
  tail call void @_exit(i32 1) #7, !dbg !482
  unreachable, !dbg !482

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !483
  %9 = trunc i32 %8 to i4, !dbg !484
  switch i4 %9, label %133 [
    i4 0, label %10
    i4 -8, label %68
    i4 1, label %98
  ], !dbg !484

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !485
  %12 = load i8*, i8** %11, align 8, !dbg !485, !tbaa !182
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !498
  %14 = load i8, i8* %13, align 1, !dbg !498, !tbaa !291
  %15 = trunc i8 %14 to i3, !dbg !500
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !500

; <label>:16:                                     ; preds = %10
  %17 = lshr i8 %14, 3, !dbg !501
  %18 = zext i8 %17 to i64, !dbg !501
  br label %37, !dbg !503

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !504
  %21 = load i8, i8* %20, align 1, !dbg !505, !tbaa !291
  %22 = zext i8 %21 to i64, !dbg !504
  br label %37, !dbg !506

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !507
  %25 = bitcast i8* %24 to i16*, !dbg !508
  %26 = load i16, i16* %25, align 1, !dbg !508, !tbaa !509
  %27 = zext i16 %26 to i64, !dbg !507
  br label %37, !dbg !511

; <label>:28:                                     ; preds = %10
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !512
  %30 = bitcast i8* %29 to i32*, !dbg !513
  %31 = load i32, i32* %30, align 1, !dbg !513, !tbaa !514
  %32 = zext i32 %31 to i64, !dbg !512
  br label %37, !dbg !515

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !516
  %35 = bitcast i8* %34 to i64*, !dbg !517
  %36 = load i64, i64* %35, align 1, !dbg !517, !tbaa !518
  br label %37, !dbg !519

; <label>:37:                                     ; preds = %10, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %10 ], !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  %39 = tail call i8* @sdsnewlen(i8* %12, i64 %38) #6, !dbg !525
  %40 = tail call i8* @zmalloc(i64 16) #6, !dbg !529
  %41 = bitcast i8* %40 to %struct.redisObject*, !dbg !529
  %42 = bitcast i8* %40 to i32*, !dbg !531
  %43 = load i32, i32* %42, align 8, !dbg !532
  %44 = and i32 %43, -256, !dbg !532
  store i32 %44, i32* %42, align 8, !dbg !533
  %45 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !534
  %46 = bitcast i8* %45 to i8**, !dbg !534
  store i8* %39, i8** %46, align 8, !dbg !535, !tbaa !182
  %47 = getelementptr inbounds i8, i8* %40, i64 4, !dbg !536
  %48 = bitcast i8* %47 to i32*, !dbg !536
  store i32 1, i32* %48, align 4, !dbg !537, !tbaa !190
  %49 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !538, !tbaa !193
  %50 = and i32 %49, 2, !dbg !539
  %51 = icmp eq i32 %50, 0, !dbg !539
  br i1 %51, label %60, label %52, !dbg !540

; <label>:52:                                     ; preds = %37
  %53 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !541
  %54 = trunc i64 %53 to i32, !dbg !542
  %55 = load i32, i32* %42, align 8, !dbg !543
  %56 = shl i32 %54, 16, !dbg !543
  %57 = and i32 %55, 255, !dbg !543
  %58 = or i32 %56, %57, !dbg !543
  %59 = or i32 %58, 1280, !dbg !543
  br label %66, !dbg !544

; <label>:60:                                     ; preds = %37
  %61 = tail call i32 @LRU_CLOCK() #6, !dbg !545
  %62 = load i32, i32* %42, align 8, !dbg !546
  %63 = shl i32 %61, 8, !dbg !546
  %64 = and i32 %62, 255, !dbg !546
  %65 = or i32 %64, %63, !dbg !546
  br label %66

; <label>:66:                                     ; preds = %52, %60
  %67 = phi i32 [ %65, %60 ], [ %59, %52 ]
  store i32 %67, i32* %42, align 8, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br label %134, !dbg !550

; <label>:68:                                     ; preds = %7
  %69 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !551
  %70 = load i8*, i8** %69, align 8, !dbg !551, !tbaa !182
  %71 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !554
  %72 = load i8, i8* %71, align 1, !dbg !554, !tbaa !291
  %73 = trunc i8 %72 to i3, !dbg !556
  switch i3 %73, label %95 [
    i3 0, label %74
    i3 1, label %77
    i3 2, label %81
    i3 3, label %86
    i3 -4, label %91
  ], !dbg !556

; <label>:74:                                     ; preds = %68
  %75 = lshr i8 %72, 3, !dbg !557
  %76 = zext i8 %75 to i64, !dbg !557
  br label %95, !dbg !558

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i8, i8* %70, i64 -3, !dbg !559
  %79 = load i8, i8* %78, align 1, !dbg !560, !tbaa !291
  %80 = zext i8 %79 to i64, !dbg !559
  br label %95, !dbg !561

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds i8, i8* %70, i64 -5, !dbg !562
  %83 = bitcast i8* %82 to i16*, !dbg !563
  %84 = load i16, i16* %83, align 1, !dbg !563, !tbaa !509
  %85 = zext i16 %84 to i64, !dbg !562
  br label %95, !dbg !564

; <label>:86:                                     ; preds = %68
  %87 = getelementptr inbounds i8, i8* %70, i64 -9, !dbg !565
  %88 = bitcast i8* %87 to i32*, !dbg !566
  %89 = load i32, i32* %88, align 1, !dbg !566, !tbaa !514
  %90 = zext i32 %89 to i64, !dbg !565
  br label %95, !dbg !567

; <label>:91:                                     ; preds = %68
  %92 = getelementptr inbounds i8, i8* %70, i64 -17, !dbg !568
  %93 = bitcast i8* %92 to i64*, !dbg !569
  %94 = load i64, i64* %93, align 1, !dbg !569, !tbaa !518
  br label %95, !dbg !570

; <label>:95:                                     ; preds = %68, %74, %77, %81, %86, %91
  %96 = phi i64 [ %94, %91 ], [ %90, %86 ], [ %85, %81 ], [ %80, %77 ], [ %76, %74 ], [ 0, %68 ], !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %97 = tail call %struct.redisObject* @createEmbeddedStringObject(i8* %70, i64 %96) #9, !dbg !573
  br label %134, !dbg !574

; <label>:98:                                     ; preds = %7
  %99 = tail call i8* @zmalloc(i64 16) #6, !dbg !578
  %100 = bitcast i8* %99 to %struct.redisObject*, !dbg !578
  %101 = bitcast i8* %99 to i32*, !dbg !580
  %102 = load i32, i32* %101, align 8, !dbg !581
  %103 = and i32 %102, -256, !dbg !581
  store i32 %103, i32* %101, align 8, !dbg !582
  %104 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !583
  %105 = bitcast i8* %104 to i8**, !dbg !583
  store i8* null, i8** %105, align 8, !dbg !584, !tbaa !182
  %106 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !585
  %107 = bitcast i8* %106 to i32*, !dbg !585
  store i32 1, i32* %107, align 4, !dbg !586, !tbaa !190
  %108 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !587, !tbaa !193
  %109 = and i32 %108, 2, !dbg !588
  %110 = icmp eq i32 %109, 0, !dbg !588
  br i1 %110, label %119, label %111, !dbg !589

; <label>:111:                                    ; preds = %98
  %112 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !590
  %113 = trunc i64 %112 to i32, !dbg !591
  %114 = load i32, i32* %101, align 8, !dbg !592
  %115 = shl i32 %113, 16, !dbg !592
  %116 = and i32 %114, 255, !dbg !592
  %117 = or i32 %116, %115, !dbg !592
  %118 = or i32 %117, 1280, !dbg !592
  br label %125, !dbg !593

; <label>:119:                                    ; preds = %98
  %120 = tail call i32 @LRU_CLOCK() #6, !dbg !594
  %121 = load i32, i32* %101, align 8, !dbg !595
  %122 = shl i32 %120, 8, !dbg !595
  %123 = and i32 %121, 255, !dbg !595
  %124 = or i32 %123, %122, !dbg !595
  br label %125

; <label>:125:                                    ; preds = %111, %119
  %126 = phi i32 [ %124, %119 ], [ %118, %111 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %127 = and i32 %126, -241, !dbg !598
  %128 = or i32 %127, 16, !dbg !598
  store i32 %128, i32* %101, align 8, !dbg !598
  %129 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !599
  %130 = bitcast i8** %129 to i64*, !dbg !599
  %131 = load i64, i64* %130, align 8, !dbg !599, !tbaa !182
  %132 = bitcast i8* %104 to i64*, !dbg !600
  store i64 %131, i64* %132, align 8, !dbg !600, !tbaa !182
  br label %134, !dbg !601

; <label>:133:                                    ; preds = %7
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !602
  tail call void @_exit(i32 1) #7, !dbg !602
  unreachable, !dbg !602

; <label>:134:                                    ; preds = %125, %95, %66
  %135 = phi %struct.redisObject* [ %100, %125 ], [ %97, %95 ], [ %41, %66 ], !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  ret %struct.redisObject* %135, !dbg !604
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createQuicklistObject() local_unnamed_addr #0 !dbg !605 {
  %1 = tail call %struct.quicklist* @quicklistCreate() #6, !dbg !638
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !643
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !643
  %4 = bitcast i8* %2 to i32*, !dbg !645
  %5 = load i32, i32* %4, align 8, !dbg !646
  %6 = and i32 %5, -256, !dbg !646
  %7 = or i32 %6, 1, !dbg !646
  store i32 %7, i32* %4, align 8, !dbg !647
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !648
  %9 = bitcast i8* %8 to %struct.quicklist**, !dbg !649
  store %struct.quicklist* %1, %struct.quicklist** %9, align 8, !dbg !649, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !650
  %11 = bitcast i8* %10 to i32*, !dbg !650
  store i32 1, i32* %11, align 4, !dbg !651, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !652, !tbaa !193
  %13 = and i32 %12, 2, !dbg !653
  %14 = icmp eq i32 %13, 0, !dbg !653
  br i1 %14, label %23, label %15, !dbg !654

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !655
  %17 = trunc i64 %16 to i32, !dbg !656
  %18 = load i32, i32* %4, align 8, !dbg !657
  %19 = shl i32 %17, 16, !dbg !657
  %20 = and i32 %18, 255, !dbg !657
  %21 = or i32 %20, %19, !dbg !657
  %22 = or i32 %21, 1280, !dbg !657
  br label %29, !dbg !658

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !659
  %25 = load i32, i32* %4, align 8, !dbg !660
  %26 = shl i32 %24, 8, !dbg !660
  %27 = and i32 %25, 255, !dbg !660
  %28 = or i32 %27, %26, !dbg !660
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %31 = and i32 %30, -241, !dbg !663
  %32 = or i32 %31, 144, !dbg !663
  store i32 %32, i32* %4, align 8, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  ret %struct.redisObject* %3, !dbg !664
}

; Function Attrs: noredzone
declare dso_local %struct.quicklist* @quicklistCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZiplistObject() local_unnamed_addr #0 !dbg !665 {
  %1 = tail call i8* @ziplistNew() #6, !dbg !669
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !674
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !674
  %4 = bitcast i8* %2 to i32*, !dbg !676
  %5 = load i32, i32* %4, align 8, !dbg !677
  %6 = and i32 %5, -256, !dbg !677
  %7 = or i32 %6, 1, !dbg !677
  store i32 %7, i32* %4, align 8, !dbg !678
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !679
  %9 = bitcast i8* %8 to i8**, !dbg !679
  store i8* %1, i8** %9, align 8, !dbg !680, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !681
  %11 = bitcast i8* %10 to i32*, !dbg !681
  store i32 1, i32* %11, align 4, !dbg !682, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !683, !tbaa !193
  %13 = and i32 %12, 2, !dbg !684
  %14 = icmp eq i32 %13, 0, !dbg !684
  br i1 %14, label %23, label %15, !dbg !685

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !686
  %17 = trunc i64 %16 to i32, !dbg !687
  %18 = load i32, i32* %4, align 8, !dbg !688
  %19 = shl i32 %17, 16, !dbg !688
  %20 = and i32 %18, 255, !dbg !688
  %21 = or i32 %20, %19, !dbg !688
  %22 = or i32 %21, 1280, !dbg !688
  br label %29, !dbg !689

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !690
  %25 = load i32, i32* %4, align 8, !dbg !691
  %26 = shl i32 %24, 8, !dbg !691
  %27 = and i32 %25, 255, !dbg !691
  %28 = or i32 %27, %26, !dbg !691
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  %31 = and i32 %30, -241, !dbg !694
  %32 = or i32 %31, 80, !dbg !694
  store i32 %32, i32* %4, align 8, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  ret %struct.redisObject* %3, !dbg !695
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createSetObject() local_unnamed_addr #0 !dbg !696 {
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @setDictType, i8* null) #6, !dbg !700
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !705
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !705
  %4 = bitcast i8* %2 to i32*, !dbg !707
  %5 = load i32, i32* %4, align 8, !dbg !708
  %6 = and i32 %5, -256, !dbg !708
  %7 = or i32 %6, 2, !dbg !708
  store i32 %7, i32* %4, align 8, !dbg !709
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !710
  %9 = bitcast i8* %8 to %struct.dict**, !dbg !711
  store %struct.dict* %1, %struct.dict** %9, align 8, !dbg !711, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !712
  %11 = bitcast i8* %10 to i32*, !dbg !712
  store i32 1, i32* %11, align 4, !dbg !713, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !714, !tbaa !193
  %13 = and i32 %12, 2, !dbg !715
  %14 = icmp eq i32 %13, 0, !dbg !715
  br i1 %14, label %23, label %15, !dbg !716

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !717
  %17 = trunc i64 %16 to i32, !dbg !718
  %18 = load i32, i32* %4, align 8, !dbg !719
  %19 = shl i32 %17, 16, !dbg !719
  %20 = and i32 %18, 255, !dbg !719
  %21 = or i32 %20, %19, !dbg !719
  %22 = or i32 %21, 1280, !dbg !719
  br label %29, !dbg !720

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !721
  %25 = load i32, i32* %4, align 8, !dbg !722
  %26 = shl i32 %24, 8, !dbg !722
  %27 = and i32 %25, 255, !dbg !722
  %28 = or i32 %27, %26, !dbg !722
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  %31 = and i32 %30, -241, !dbg !725
  %32 = or i32 %31, 32, !dbg !725
  store i32 %32, i32* %4, align 8, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  ret %struct.redisObject* %3, !dbg !726
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createIntsetObject() local_unnamed_addr #0 !dbg !727 {
  %1 = tail call %struct.intset* @intsetNew() #6, !dbg !743
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !748
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !748
  %4 = bitcast i8* %2 to i32*, !dbg !750
  %5 = load i32, i32* %4, align 8, !dbg !751
  %6 = and i32 %5, -256, !dbg !751
  %7 = or i32 %6, 2, !dbg !751
  store i32 %7, i32* %4, align 8, !dbg !752
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !753
  %9 = bitcast i8* %8 to %struct.intset**, !dbg !754
  store %struct.intset* %1, %struct.intset** %9, align 8, !dbg !754, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !755
  %11 = bitcast i8* %10 to i32*, !dbg !755
  store i32 1, i32* %11, align 4, !dbg !756, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !757, !tbaa !193
  %13 = and i32 %12, 2, !dbg !758
  %14 = icmp eq i32 %13, 0, !dbg !758
  br i1 %14, label %23, label %15, !dbg !759

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !760
  %17 = trunc i64 %16 to i32, !dbg !761
  %18 = load i32, i32* %4, align 8, !dbg !762
  %19 = shl i32 %17, 16, !dbg !762
  %20 = and i32 %18, 255, !dbg !762
  %21 = or i32 %20, %19, !dbg !762
  %22 = or i32 %21, 1280, !dbg !762
  br label %29, !dbg !763

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !764
  %25 = load i32, i32* %4, align 8, !dbg !765
  %26 = shl i32 %24, 8, !dbg !765
  %27 = and i32 %25, 255, !dbg !765
  %28 = or i32 %27, %26, !dbg !765
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %31 = and i32 %30, -241, !dbg !768
  %32 = or i32 %31, 96, !dbg !768
  store i32 %32, i32* %4, align 8, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret %struct.redisObject* %3, !dbg !769
}

; Function Attrs: noredzone
declare dso_local %struct.intset* @intsetNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createHashObject() local_unnamed_addr #0 !dbg !770 {
  %1 = tail call i8* @ziplistNew() #6, !dbg !774
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !779
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !779
  %4 = bitcast i8* %2 to i32*, !dbg !781
  %5 = load i32, i32* %4, align 8, !dbg !782
  %6 = and i32 %5, -256, !dbg !782
  %7 = or i32 %6, 4, !dbg !782
  store i32 %7, i32* %4, align 8, !dbg !783
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !784
  %9 = bitcast i8* %8 to i8**, !dbg !784
  store i8* %1, i8** %9, align 8, !dbg !785, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !786
  %11 = bitcast i8* %10 to i32*, !dbg !786
  store i32 1, i32* %11, align 4, !dbg !787, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !788, !tbaa !193
  %13 = and i32 %12, 2, !dbg !789
  %14 = icmp eq i32 %13, 0, !dbg !789
  br i1 %14, label %23, label %15, !dbg !790

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !791
  %17 = trunc i64 %16 to i32, !dbg !792
  %18 = load i32, i32* %4, align 8, !dbg !793
  %19 = shl i32 %17, 16, !dbg !793
  %20 = and i32 %18, 255, !dbg !793
  %21 = or i32 %20, %19, !dbg !793
  %22 = or i32 %21, 1280, !dbg !793
  br label %29, !dbg !794

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !795
  %25 = load i32, i32* %4, align 8, !dbg !796
  %26 = shl i32 %24, 8, !dbg !796
  %27 = and i32 %25, 255, !dbg !796
  %28 = or i32 %27, %26, !dbg !796
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  %31 = and i32 %30, -241, !dbg !799
  %32 = or i32 %31, 80, !dbg !799
  store i32 %32, i32* %4, align 8, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  ret %struct.redisObject* %3, !dbg !800
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZsetObject() local_unnamed_addr #0 !dbg !801 {
  %1 = tail call i8* @zmalloc(i64 16) #6, !dbg !805
  %2 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @zsetDictType, i8* null) #6, !dbg !807
  %3 = bitcast i8* %1 to %struct.dict**, !dbg !808
  store %struct.dict* %2, %struct.dict** %3, align 8, !dbg !809, !tbaa !810
  %4 = tail call %struct.zskiplist* @zslCreate() #6, !dbg !812
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !813
  %6 = bitcast i8* %5 to %struct.zskiplist**, !dbg !813
  store %struct.zskiplist* %4, %struct.zskiplist** %6, align 8, !dbg !814, !tbaa !815
  %7 = tail call i8* @zmalloc(i64 16) #6, !dbg !819
  %8 = bitcast i8* %7 to %struct.redisObject*, !dbg !819
  %9 = bitcast i8* %7 to i32*, !dbg !821
  %10 = load i32, i32* %9, align 8, !dbg !822
  %11 = and i32 %10, -256, !dbg !822
  %12 = or i32 %11, 3, !dbg !822
  store i32 %12, i32* %9, align 8, !dbg !823
  %13 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !824
  %14 = bitcast i8* %13 to i8**, !dbg !824
  store i8* %1, i8** %14, align 8, !dbg !825, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !826
  %16 = bitcast i8* %15 to i32*, !dbg !826
  store i32 1, i32* %16, align 4, !dbg !827, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !828, !tbaa !193
  %18 = and i32 %17, 2, !dbg !829
  %19 = icmp eq i32 %18, 0, !dbg !829
  br i1 %19, label %28, label %20, !dbg !830

; <label>:20:                                     ; preds = %0
  %21 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !831
  %22 = trunc i64 %21 to i32, !dbg !832
  %23 = load i32, i32* %9, align 8, !dbg !833
  %24 = shl i32 %22, 16, !dbg !833
  %25 = and i32 %23, 255, !dbg !833
  %26 = or i32 %25, %24, !dbg !833
  %27 = or i32 %26, 1280, !dbg !833
  br label %34, !dbg !834

; <label>:28:                                     ; preds = %0
  %29 = tail call i32 @LRU_CLOCK() #6, !dbg !835
  %30 = load i32, i32* %9, align 8, !dbg !836
  %31 = shl i32 %29, 8, !dbg !836
  %32 = and i32 %30, 255, !dbg !836
  %33 = or i32 %32, %31, !dbg !836
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  %36 = and i32 %35, -241, !dbg !839
  %37 = or i32 %36, 112, !dbg !839
  store i32 %37, i32* %9, align 8, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  ret %struct.redisObject* %8, !dbg !840
}

; Function Attrs: noredzone
declare dso_local %struct.zskiplist* @zslCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZsetZiplistObject() local_unnamed_addr #0 !dbg !841 {
  %1 = tail call i8* @ziplistNew() #6, !dbg !845
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !850
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !850
  %4 = bitcast i8* %2 to i32*, !dbg !852
  %5 = load i32, i32* %4, align 8, !dbg !853
  %6 = and i32 %5, -256, !dbg !853
  %7 = or i32 %6, 3, !dbg !853
  store i32 %7, i32* %4, align 8, !dbg !854
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !855
  %9 = bitcast i8* %8 to i8**, !dbg !855
  store i8* %1, i8** %9, align 8, !dbg !856, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !857
  %11 = bitcast i8* %10 to i32*, !dbg !857
  store i32 1, i32* %11, align 4, !dbg !858, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !859, !tbaa !193
  %13 = and i32 %12, 2, !dbg !860
  %14 = icmp eq i32 %13, 0, !dbg !860
  br i1 %14, label %23, label %15, !dbg !861

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !862
  %17 = trunc i64 %16 to i32, !dbg !863
  %18 = load i32, i32* %4, align 8, !dbg !864
  %19 = shl i32 %17, 16, !dbg !864
  %20 = and i32 %18, 255, !dbg !864
  %21 = or i32 %20, %19, !dbg !864
  %22 = or i32 %21, 1280, !dbg !864
  br label %29, !dbg !865

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !866
  %25 = load i32, i32* %4, align 8, !dbg !867
  %26 = shl i32 %24, 8, !dbg !867
  %27 = and i32 %25, 255, !dbg !867
  %28 = or i32 %27, %26, !dbg !867
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %31 = and i32 %30, -241, !dbg !870
  %32 = or i32 %31, 80, !dbg !870
  store i32 %32, i32* %4, align 8, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  ret %struct.redisObject* %3, !dbg !871
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStreamObject() local_unnamed_addr #0 !dbg !872 {
  %1 = tail call %struct.stream* @streamNew() #6, !dbg !908
  %2 = tail call i8* @zmalloc(i64 16) #6, !dbg !913
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !913
  %4 = bitcast i8* %2 to i32*, !dbg !915
  %5 = load i32, i32* %4, align 8, !dbg !916
  %6 = and i32 %5, -256, !dbg !916
  %7 = or i32 %6, 6, !dbg !916
  store i32 %7, i32* %4, align 8, !dbg !917
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !918
  %9 = bitcast i8* %8 to %struct.stream**, !dbg !919
  store %struct.stream* %1, %struct.stream** %9, align 8, !dbg !919, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !920
  %11 = bitcast i8* %10 to i32*, !dbg !920
  store i32 1, i32* %11, align 4, !dbg !921, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !922, !tbaa !193
  %13 = and i32 %12, 2, !dbg !923
  %14 = icmp eq i32 %13, 0, !dbg !923
  br i1 %14, label %23, label %15, !dbg !924

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !925
  %17 = trunc i64 %16 to i32, !dbg !926
  %18 = load i32, i32* %4, align 8, !dbg !927
  %19 = shl i32 %17, 16, !dbg !927
  %20 = and i32 %18, 255, !dbg !927
  %21 = or i32 %20, %19, !dbg !927
  %22 = or i32 %21, 1280, !dbg !927
  br label %29, !dbg !928

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #6, !dbg !929
  %25 = load i32, i32* %4, align 8, !dbg !930
  %26 = shl i32 %24, 8, !dbg !930
  %27 = and i32 %25, 255, !dbg !930
  %28 = or i32 %27, %26, !dbg !930
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  %31 = and i32 %30, -241, !dbg !933
  %32 = or i32 %31, 160, !dbg !933
  store i32 %32, i32* %4, align 8, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  ret %struct.redisObject* %3, !dbg !934
}

; Function Attrs: noredzone
declare dso_local %struct.stream* @streamNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createModuleObject(%struct.RedisModuleType*, i8*) local_unnamed_addr #0 !dbg !935 {
  %3 = tail call i8* @zmalloc(i64 16) #6, !dbg !1289
  %4 = bitcast i8* %3 to %struct.RedisModuleType**, !dbg !1291
  store %struct.RedisModuleType* %0, %struct.RedisModuleType** %4, align 8, !dbg !1292, !tbaa !1293
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1295
  %6 = bitcast i8* %5 to i8**, !dbg !1295
  store i8* %1, i8** %6, align 8, !dbg !1296, !tbaa !1297
  %7 = tail call i8* @zmalloc(i64 16) #6, !dbg !1301
  %8 = bitcast i8* %7 to %struct.redisObject*, !dbg !1301
  %9 = bitcast i8* %7 to i32*, !dbg !1303
  %10 = load i32, i32* %9, align 8, !dbg !1304
  %11 = and i32 %10, -256, !dbg !1304
  %12 = or i32 %11, 5, !dbg !1304
  store i32 %12, i32* %9, align 8, !dbg !1305
  %13 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1306
  %14 = bitcast i8* %13 to i8**, !dbg !1306
  store i8* %3, i8** %14, align 8, !dbg !1307, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1308
  %16 = bitcast i8* %15 to i32*, !dbg !1308
  store i32 1, i32* %16, align 4, !dbg !1309, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1310, !tbaa !193
  %18 = and i32 %17, 2, !dbg !1311
  %19 = icmp eq i32 %18, 0, !dbg !1311
  br i1 %19, label %28, label %20, !dbg !1312

; <label>:20:                                     ; preds = %2
  %21 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !1313
  %22 = trunc i64 %21 to i32, !dbg !1314
  %23 = load i32, i32* %9, align 8, !dbg !1315
  %24 = shl i32 %22, 16, !dbg !1315
  %25 = and i32 %23, 255, !dbg !1315
  %26 = or i32 %25, %24, !dbg !1315
  %27 = or i32 %26, 1280, !dbg !1315
  br label %34, !dbg !1316

; <label>:28:                                     ; preds = %2
  %29 = tail call i32 @LRU_CLOCK() #6, !dbg !1317
  %30 = load i32, i32* %9, align 8, !dbg !1318
  %31 = shl i32 %29, 8, !dbg !1318
  %32 = and i32 %30, 255, !dbg !1318
  %33 = or i32 %32, %31, !dbg !1318
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  store i32 %35, i32* %9, align 8, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  ret %struct.redisObject* %8, !dbg !1321
}

; Function Attrs: noredzone nounwind
define dso_local void @freeStringObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1322 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1326
  %3 = load i32, i32* %2, align 8, !dbg !1326
  %4 = and i32 %3, 240, !dbg !1326
  %5 = icmp eq i32 %4, 0, !dbg !1328
  br i1 %5, label %6, label %9, !dbg !1329

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1330
  %8 = load i8*, i8** %7, align 8, !dbg !1330, !tbaa !182
  tail call void @sdsfree(i8* %8) #6, !dbg !1332
  br label %9, !dbg !1333

; <label>:9:                                      ; preds = %6, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  ret void, !dbg !1334
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeListObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1335 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1339
  %3 = load i32, i32* %2, align 8, !dbg !1339
  %4 = and i32 %3, 240, !dbg !1339
  %5 = icmp eq i32 %4, 144, !dbg !1341
  br i1 %5, label %6, label %10, !dbg !1342

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1343
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !1343
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !1343, !tbaa !182
  tail call void @quicklistRelease(%struct.quicklist* %9) #6, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  ret void, !dbg !1346

; <label>:10:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1347
  tail call void @_exit(i32 1) #7, !dbg !1347
  unreachable, !dbg !1347
}

; Function Attrs: noredzone
declare dso_local void @quicklistRelease(%struct.quicklist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeSetObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1349 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1353
  %3 = load i32, i32* %2, align 8, !dbg !1353
  %4 = lshr i32 %3, 4, !dbg !1353
  %5 = trunc i32 %4 to i4, !dbg !1354
  switch i4 %5, label %13 [
    i4 2, label %6
    i4 6, label %10
  ], !dbg !1354

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1355
  %8 = bitcast i8** %7 to %struct.dict**, !dbg !1355
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !1355, !tbaa !182
  tail call void @dictRelease(%struct.dict* %9) #6, !dbg !1357
  br label %14, !dbg !1358

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1359
  %12 = load i8*, i8** %11, align 8, !dbg !1359, !tbaa !182
  tail call void @zfree(i8* %12) #6, !dbg !1360
  br label %14, !dbg !1361

; <label>:13:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1362
  tail call void @_exit(i32 1) #7, !dbg !1362
  unreachable, !dbg !1362

; <label>:14:                                     ; preds = %10, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  ret void, !dbg !1363
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeZsetObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1364 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1369
  %3 = load i32, i32* %2, align 8, !dbg !1369
  %4 = lshr i32 %3, 4, !dbg !1369
  %5 = trunc i32 %4 to i4, !dbg !1370
  switch i4 %5, label %17 [
    i4 7, label %6
    i4 5, label %14
  ], !dbg !1370

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1371
  %8 = load i8*, i8** %7, align 8, !dbg !1371, !tbaa !182
  %9 = bitcast i8* %8 to %struct.dict**, !dbg !1374
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1374, !tbaa !810
  tail call void @dictRelease(%struct.dict* %10) #6, !dbg !1375
  %11 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !1376
  %12 = bitcast i8* %11 to %struct.zskiplist**, !dbg !1376
  %13 = load %struct.zskiplist*, %struct.zskiplist** %12, align 8, !dbg !1376, !tbaa !815
  tail call void @zslFree(%struct.zskiplist* %13) #6, !dbg !1377
  tail call void @zfree(i8* %8) #6, !dbg !1378
  br label %18, !dbg !1379

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1380
  %16 = load i8*, i8** %15, align 8, !dbg !1380, !tbaa !182
  tail call void @zfree(i8* %16) #6, !dbg !1381
  br label %18, !dbg !1382

; <label>:17:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1383
  tail call void @_exit(i32 1) #7, !dbg !1383
  unreachable, !dbg !1383

; <label>:18:                                     ; preds = %14, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  ret void, !dbg !1384
}

; Function Attrs: noredzone
declare dso_local void @zslFree(%struct.zskiplist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeHashObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1385 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1389
  %3 = load i32, i32* %2, align 8, !dbg !1389
  %4 = lshr i32 %3, 4, !dbg !1389
  %5 = trunc i32 %4 to i4, !dbg !1390
  switch i4 %5, label %13 [
    i4 2, label %6
    i4 5, label %10
  ], !dbg !1390

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1391
  %8 = bitcast i8** %7 to %struct.dict**, !dbg !1391
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !1391, !tbaa !182
  tail call void @dictRelease(%struct.dict* %9) #6, !dbg !1393
  br label %14, !dbg !1394

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1395
  %12 = load i8*, i8** %11, align 8, !dbg !1395, !tbaa !182
  tail call void @zfree(i8* %12) #6, !dbg !1396
  br label %14, !dbg !1397

; <label>:13:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1398
  tail call void @_exit(i32 1) #7, !dbg !1398
  unreachable, !dbg !1398

; <label>:14:                                     ; preds = %10, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  ret void, !dbg !1399
}

; Function Attrs: noredzone nounwind
define dso_local void @freeModuleObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1400 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1405
  %3 = load i8*, i8** %2, align 8, !dbg !1405, !tbaa !182
  %4 = bitcast i8* %3 to %struct.RedisModuleType**, !dbg !1407
  %5 = load %struct.RedisModuleType*, %struct.RedisModuleType** %4, align 8, !dbg !1407, !tbaa !1293
  %6 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %5, i64 0, i32 7, !dbg !1408
  %7 = load void (i8*)*, void (i8*)** %6, align 8, !dbg !1408, !tbaa !1409
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1411
  %9 = bitcast i8* %8 to i8**, !dbg !1411
  %10 = load i8*, i8** %9, align 8, !dbg !1411, !tbaa !1297
  tail call void %7(i8* %10) #6, !dbg !1412
  tail call void @zfree(i8* %3) #6, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  ret void, !dbg !1414
}

; Function Attrs: noredzone nounwind
define dso_local void @freeStreamObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1415 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1419
  %3 = bitcast i8** %2 to %struct.stream**, !dbg !1419
  %4 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1419, !tbaa !182
  tail call void @freeStream(%struct.stream* %4) #6, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  ret void, !dbg !1421
}

; Function Attrs: noredzone
declare dso_local void @freeStream(%struct.stream*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #0 !dbg !1422 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1426
  %3 = load i32, i32* %2, align 4, !dbg !1426, !tbaa !190
  %4 = icmp eq i32 %3, 1, !dbg !1428
  br i1 %4, label %5, label %66, !dbg !1429

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1430
  %7 = load i32, i32* %6, align 8, !dbg !1430
  %8 = trunc i32 %7 to i4, !dbg !1432
  switch i4 %8, label %63 [
    i4 0, label %9
    i4 1, label %16
    i4 2, label %24
    i4 3, label %36
    i4 4, label %37
    i4 5, label %49
    i4 6, label %59
  ], !dbg !1432

; <label>:9:                                      ; preds = %5
  %10 = and i32 %7, 240, !dbg !1436
  %11 = icmp eq i32 %10, 0, !dbg !1437
  br i1 %11, label %12, label %15, !dbg !1438

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1439
  %14 = load i8*, i8** %13, align 8, !dbg !1439, !tbaa !182
  tail call void @sdsfree(i8* %14) #6, !dbg !1440
  br label %15, !dbg !1441

; <label>:15:                                     ; preds = %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1442
  br label %64, !dbg !1443

; <label>:16:                                     ; preds = %5
  %17 = and i32 %7, 240, !dbg !1446
  %18 = icmp eq i32 %17, 144, !dbg !1447
  br i1 %18, label %20, label %19, !dbg !1448

; <label>:19:                                     ; preds = %16
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1449
  tail call void @_exit(i32 1) #7, !dbg !1449
  unreachable, !dbg !1449

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1450
  %22 = bitcast i8** %21 to %struct.quicklist**, !dbg !1450
  %23 = load %struct.quicklist*, %struct.quicklist** %22, align 8, !dbg !1450, !tbaa !182
  tail call void @quicklistRelease(%struct.quicklist* %23) #6, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br label %64, !dbg !1453

; <label>:24:                                     ; preds = %5
  %25 = lshr i32 %7, 4, !dbg !1456
  %26 = trunc i32 %25 to i4, !dbg !1457
  switch i4 %26, label %34 [
    i4 2, label %27
    i4 6, label %31
  ], !dbg !1457

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1458
  %29 = bitcast i8** %28 to %struct.dict**, !dbg !1458
  %30 = load %struct.dict*, %struct.dict** %29, align 8, !dbg !1458, !tbaa !182
  tail call void @dictRelease(%struct.dict* %30) #6, !dbg !1459
  br label %35, !dbg !1460

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1461
  %33 = load i8*, i8** %32, align 8, !dbg !1461, !tbaa !182
  tail call void @zfree(i8* %33) #6, !dbg !1462
  br label %35, !dbg !1463

; <label>:34:                                     ; preds = %24
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1464
  tail call void @_exit(i32 1) #7, !dbg !1464
  unreachable, !dbg !1464

; <label>:35:                                     ; preds = %27, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br label %64, !dbg !1466

; <label>:36:                                     ; preds = %5
  tail call void @freeZsetObject(%struct.redisObject* nonnull %0) #9, !dbg !1467
  br label %64, !dbg !1468

; <label>:37:                                     ; preds = %5
  %38 = lshr i32 %7, 4, !dbg !1471
  %39 = trunc i32 %38 to i4, !dbg !1472
  switch i4 %39, label %47 [
    i4 2, label %40
    i4 5, label %44
  ], !dbg !1472

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1473
  %42 = bitcast i8** %41 to %struct.dict**, !dbg !1473
  %43 = load %struct.dict*, %struct.dict** %42, align 8, !dbg !1473, !tbaa !182
  tail call void @dictRelease(%struct.dict* %43) #6, !dbg !1474
  br label %48, !dbg !1475

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1476
  %46 = load i8*, i8** %45, align 8, !dbg !1476, !tbaa !182
  tail call void @zfree(i8* %46) #6, !dbg !1477
  br label %48, !dbg !1478

; <label>:47:                                     ; preds = %37
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1479
  tail call void @_exit(i32 1) #7, !dbg !1479
  unreachable, !dbg !1479

; <label>:48:                                     ; preds = %40, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %64, !dbg !1481

; <label>:49:                                     ; preds = %5
  %50 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1484
  %51 = load i8*, i8** %50, align 8, !dbg !1484, !tbaa !182
  %52 = bitcast i8* %51 to %struct.RedisModuleType**, !dbg !1486
  %53 = load %struct.RedisModuleType*, %struct.RedisModuleType** %52, align 8, !dbg !1486, !tbaa !1293
  %54 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %53, i64 0, i32 7, !dbg !1487
  %55 = load void (i8*)*, void (i8*)** %54, align 8, !dbg !1487, !tbaa !1409
  %56 = getelementptr inbounds i8, i8* %51, i64 8, !dbg !1488
  %57 = bitcast i8* %56 to i8**, !dbg !1488
  %58 = load i8*, i8** %57, align 8, !dbg !1488, !tbaa !1297
  tail call void %55(i8* %58) #6, !dbg !1489
  tail call void @zfree(i8* %51) #6, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br label %64, !dbg !1492

; <label>:59:                                     ; preds = %5
  %60 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1495
  %61 = bitcast i8** %60 to %struct.stream**, !dbg !1495
  %62 = load %struct.stream*, %struct.stream** %61, align 8, !dbg !1495, !tbaa !182
  tail call void @freeStream(%struct.stream* %62) #6, !dbg !1496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br label %64, !dbg !1498

; <label>:63:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1499
  tail call void @_exit(i32 1) #7, !dbg !1499
  unreachable, !dbg !1499

; <label>:64:                                     ; preds = %59, %49, %48, %36, %35, %20, %15
  %65 = bitcast %struct.redisObject* %0 to i8*, !dbg !1500
  tail call void @zfree(i8* %65) #6, !dbg !1501
  br label %73, !dbg !1502

; <label>:66:                                     ; preds = %1
  %67 = icmp slt i32 %3, 1, !dbg !1503
  br i1 %67, label %68, label %69, !dbg !1506

; <label>:68:                                     ; preds = %66
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1507
  tail call void @_exit(i32 1) #7, !dbg !1507
  unreachable, !dbg !1507

; <label>:69:                                     ; preds = %66
  %70 = icmp eq i32 %3, 2147483647, !dbg !1508
  br i1 %70, label %73, label %71, !dbg !1510

; <label>:71:                                     ; preds = %69
  %72 = add nsw i32 %3, -1, !dbg !1511
  store i32 %72, i32* %2, align 4, !dbg !1511, !tbaa !190
  br label %73, !dbg !1512

; <label>:73:                                     ; preds = %69, %71, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  ret void, !dbg !1513
}

; Function Attrs: noredzone nounwind
define dso_local void @decrRefCountVoid(i8*) local_unnamed_addr #0 !dbg !1514 {
  %2 = bitcast i8* %0 to %struct.redisObject*, !dbg !1518
  tail call void @decrRefCount(%struct.redisObject* %2) #9, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  ret void, !dbg !1520
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @resetRefCount(%struct.redisObject* returned) local_unnamed_addr #0 !dbg !1521 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1525
  store i32 0, i32* %2, align 4, !dbg !1526, !tbaa !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  ret %struct.redisObject* %0, !dbg !1527
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkType(%struct.client*, %struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1528 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1693
  %5 = load i32, i32* %4, align 8, !dbg !1693
  %6 = and i32 %5, 15, !dbg !1693
  %7 = icmp eq i32 %6, %2, !dbg !1695
  br i1 %7, label %10, label %8, !dbg !1696

; <label>:8:                                      ; preds = %3
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1697, !tbaa !1699
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #6, !dbg !1701
  br label %10, !dbg !1702

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %3 ], !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  ret i32 %11, !dbg !1704
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @isSdsRepresentableAsLongLong(i8*, i64*) local_unnamed_addr #0 !dbg !1705 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1716
  %4 = load i8, i8* %3, align 1, !dbg !1716, !tbaa !291
  %5 = trunc i8 %4 to i3, !dbg !1718
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1718

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1719
  %8 = zext i8 %7 to i64, !dbg !1719
  br label %27, !dbg !1720

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1721
  %11 = load i8, i8* %10, align 1, !dbg !1722, !tbaa !291
  %12 = zext i8 %11 to i64, !dbg !1721
  br label %27, !dbg !1723

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1724
  %15 = bitcast i8* %14 to i16*, !dbg !1725
  %16 = load i16, i16* %15, align 1, !dbg !1725, !tbaa !509
  %17 = zext i16 %16 to i64, !dbg !1724
  br label %27, !dbg !1726

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1727
  %20 = bitcast i8* %19 to i32*, !dbg !1728
  %21 = load i32, i32* %20, align 1, !dbg !1728, !tbaa !514
  %22 = zext i32 %21 to i64, !dbg !1727
  br label %27, !dbg !1729

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1730
  %25 = bitcast i8* %24 to i64*, !dbg !1731
  %26 = load i64, i64* %25, align 1, !dbg !1731, !tbaa !518
  br label %27, !dbg !1732

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  %29 = tail call i32 @string2ll(i8* nonnull %0, i64 %28, i64* %1) #6, !dbg !1735
  %30 = icmp eq i32 %29, 0, !dbg !1735
  %31 = sext i1 %30 to i32, !dbg !1735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  ret i32 %31, !dbg !1736
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @isObjectRepresentableAsLongLong(%struct.redisObject*, i64*) local_unnamed_addr #0 !dbg !1737 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1745
  %4 = load i32, i32* %3, align 8, !dbg !1745
  %5 = and i32 %4, 15, !dbg !1745
  %6 = icmp eq i32 %5, 0, !dbg !1745
  br i1 %6, label %8, label %7, !dbg !1745

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 409) #6, !dbg !1745
  tail call void @_exit(i32 1) #7, !dbg !1745
  unreachable, !dbg !1745

; <label>:8:                                      ; preds = %2
  %9 = and i32 %4, 240, !dbg !1746
  %10 = icmp eq i32 %9, 16, !dbg !1748
  br i1 %10, label %11, label %17, !dbg !1749

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i64* %1, null, !dbg !1750
  br i1 %12, label %49, label %13, !dbg !1753

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1754
  %15 = bitcast i8** %14 to i64*, !dbg !1754
  %16 = load i64, i64* %15, align 8, !dbg !1754, !tbaa !182
  store i64 %16, i64* %1, align 8, !dbg !1755, !tbaa !1756
  br label %49, !dbg !1757

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1758
  %19 = load i8*, i8** %18, align 8, !dbg !1758, !tbaa !182
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1765
  %21 = load i8, i8* %20, align 1, !dbg !1765, !tbaa !291
  %22 = trunc i8 %21 to i3, !dbg !1767
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !1767

; <label>:23:                                     ; preds = %17
  %24 = lshr i8 %21, 3, !dbg !1768
  %25 = zext i8 %24 to i64, !dbg !1768
  br label %44, !dbg !1769

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !1770
  %28 = load i8, i8* %27, align 1, !dbg !1771, !tbaa !291
  %29 = zext i8 %28 to i64, !dbg !1770
  br label %44, !dbg !1772

; <label>:30:                                     ; preds = %17
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !1773
  %32 = bitcast i8* %31 to i16*, !dbg !1774
  %33 = load i16, i16* %32, align 1, !dbg !1774, !tbaa !509
  %34 = zext i16 %33 to i64, !dbg !1773
  br label %44, !dbg !1775

; <label>:35:                                     ; preds = %17
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !1776
  %37 = bitcast i8* %36 to i32*, !dbg !1777
  %38 = load i32, i32* %37, align 1, !dbg !1777, !tbaa !514
  %39 = zext i32 %38 to i64, !dbg !1776
  br label %44, !dbg !1778

; <label>:40:                                     ; preds = %17
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !1779
  %42 = bitcast i8* %41 to i64*, !dbg !1780
  %43 = load i64, i64* %42, align 1, !dbg !1780, !tbaa !518
  br label %44, !dbg !1781

; <label>:44:                                     ; preds = %17, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %17 ], !dbg !1782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  %46 = tail call i32 @string2ll(i8* nonnull %19, i64 %45, i64* %1) #6, !dbg !1784
  %47 = icmp eq i32 %46, 0, !dbg !1784
  %48 = sext i1 %47 to i32, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br label %49, !dbg !1786

; <label>:49:                                     ; preds = %13, %11, %44
  %50 = phi i32 [ %48, %44 ], [ 0, %11 ], [ 0, %13 ], !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  ret i32 %50, !dbg !1788
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @trimStringObjectIfNeeded(%struct.redisObject* nocapture) local_unnamed_addr #0 !dbg !1789 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1793
  %3 = load i32, i32* %2, align 8, !dbg !1793
  %4 = and i32 %3, 240, !dbg !1793
  %5 = icmp eq i32 %4, 0, !dbg !1795
  br i1 %5, label %6, label %56, !dbg !1796

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1797
  %8 = load i8*, i8** %7, align 8, !dbg !1797, !tbaa !182
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1813
  %10 = load i8, i8* %9, align 1, !dbg !1813, !tbaa !291
  %11 = trunc i8 %10 to i3, !dbg !1815
  switch i3 %11, label %48 [
    i3 -4, label %40
    i3 1, label %12
    i3 2, label %20
    i3 3, label %30
  ], !dbg !1815

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1816
  %14 = getelementptr inbounds i8, i8* %8, i64 -2, !dbg !1817
  %15 = load i8, i8* %14, align 1, !dbg !1817, !tbaa !291
  %16 = zext i8 %15 to i64, !dbg !1818
  %17 = load i8, i8* %13, align 1, !dbg !1819, !tbaa !291
  %18 = zext i8 %17 to i64, !dbg !1820
  %19 = sub nsw i64 %16, %18, !dbg !1821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br label %49, !dbg !1826

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1827
  %22 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1828
  %23 = bitcast i8* %22 to i16*, !dbg !1828
  %24 = load i16, i16* %23, align 1, !dbg !1828, !tbaa !509
  %25 = zext i16 %24 to i64, !dbg !1829
  %26 = bitcast i8* %21 to i16*, !dbg !1830
  %27 = load i16, i16* %26, align 1, !dbg !1830, !tbaa !509
  %28 = zext i16 %27 to i64, !dbg !1831
  %29 = sub nsw i64 %25, %28, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br label %49, !dbg !1833

; <label>:30:                                     ; preds = %6
  %31 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1834
  %32 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1835
  %33 = bitcast i8* %32 to i32*, !dbg !1835
  %34 = load i32, i32* %33, align 1, !dbg !1835, !tbaa !514
  %35 = bitcast i8* %31 to i32*, !dbg !1836
  %36 = load i32, i32* %35, align 1, !dbg !1836, !tbaa !514
  %37 = sub i32 %34, %36, !dbg !1837
  %38 = zext i32 %37 to i64, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  %39 = zext i32 %36 to i64, !dbg !1839
  br label %49, !dbg !1840

; <label>:40:                                     ; preds = %6
  %41 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1841
  %42 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1842
  %43 = bitcast i8* %42 to i64*, !dbg !1842
  %44 = load i64, i64* %43, align 1, !dbg !1842, !tbaa !518
  %45 = bitcast i8* %41 to i64*, !dbg !1843
  %46 = load i64, i64* %45, align 1, !dbg !1843, !tbaa !518
  %47 = sub i64 %44, %46, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  br label %49, !dbg !1845

; <label>:48:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  br label %56, !dbg !1847

; <label>:49:                                     ; preds = %12, %20, %30, %40
  %50 = phi i64 [ %47, %40 ], [ %38, %30 ], [ %29, %20 ], [ %19, %12 ]
  %51 = phi i64 [ %46, %40 ], [ %39, %30 ], [ %28, %20 ], [ %18, %12 ], !dbg !1848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  %52 = udiv i64 %51, 10, !dbg !1849
  %53 = icmp ugt i64 %50, %52, !dbg !1850
  br i1 %53, label %54, label %56, !dbg !1847

; <label>:54:                                     ; preds = %49
  %55 = tail call i8* @sdsRemoveFreeSpace(i8* nonnull %8) #6, !dbg !1851
  store i8* %55, i8** %7, align 8, !dbg !1853, !tbaa !182
  br label %56, !dbg !1854

; <label>:56:                                     ; preds = %48, %54, %49, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  ret void, !dbg !1855
}

; Function Attrs: noredzone
declare dso_local i8* @sdsRemoveFreeSpace(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @tryObjectEncoding(%struct.redisObject*) local_unnamed_addr #0 !dbg !1856 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1866
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1867
  %5 = load i8*, i8** %4, align 8, !dbg !1867, !tbaa !182
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1869
  %7 = load i32, i32* %6, align 8, !dbg !1869
  %8 = and i32 %7, 15, !dbg !1869
  %9 = icmp eq i32 %8, 0, !dbg !1869
  br i1 %9, label %11, label %10, !dbg !1869

; <label>:10:                                     ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 440) #6, !dbg !1869
  tail call void @_exit(i32 1) #7, !dbg !1869
  unreachable, !dbg !1869

; <label>:11:                                     ; preds = %1
  %12 = lshr i32 %7, 4, !dbg !1870
  %13 = trunc i32 %12 to i4, !dbg !1870
  switch i4 %13, label %172 [
    i4 0, label %14
    i4 -8, label %14
  ], !dbg !1870

; <label>:14:                                     ; preds = %11, %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1872
  %16 = load i32, i32* %15, align 4, !dbg !1872, !tbaa !190
  %17 = icmp sgt i32 %16, 1, !dbg !1874
  br i1 %17, label %172, label %18, !dbg !1875

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1878
  %20 = load i8, i8* %19, align 1, !dbg !1878, !tbaa !291
  %21 = trunc i8 %20 to i3, !dbg !1880
  switch i3 %21, label %22 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !1880

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  br label %47, !dbg !1883

; <label>:23:                                     ; preds = %18
  %24 = lshr i8 %20, 3, !dbg !1885
  %25 = zext i8 %24 to i64, !dbg !1885
  br label %44, !dbg !1886

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1887
  %28 = load i8, i8* %27, align 1, !dbg !1888, !tbaa !291
  %29 = zext i8 %28 to i64, !dbg !1887
  br label %44, !dbg !1889

; <label>:30:                                     ; preds = %18
  %31 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1890
  %32 = bitcast i8* %31 to i16*, !dbg !1891
  %33 = load i16, i16* %32, align 1, !dbg !1891, !tbaa !509
  %34 = zext i16 %33 to i64, !dbg !1890
  br label %44, !dbg !1892

; <label>:35:                                     ; preds = %18
  %36 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1893
  %37 = bitcast i8* %36 to i32*, !dbg !1894
  %38 = load i32, i32* %37, align 1, !dbg !1894, !tbaa !514
  %39 = zext i32 %38 to i64, !dbg !1893
  br label %44, !dbg !1895

; <label>:40:                                     ; preds = %18
  %41 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !1896
  %42 = bitcast i8* %41 to i64*, !dbg !1897
  %43 = load i64, i64* %42, align 1, !dbg !1897, !tbaa !518
  br label %44, !dbg !1898

; <label>:44:                                     ; preds = %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  %46 = icmp ult i64 %45, 21, !dbg !1900
  br i1 %46, label %47, label %90, !dbg !1883

; <label>:47:                                     ; preds = %22, %44
  %48 = phi i64 [ 0, %22 ], [ %45, %44 ]
  %49 = call i32 @string2l(i8* nonnull %5, i64 %48, i64* nonnull %2) #6, !dbg !1902
  %50 = icmp eq i32 %49, 0, !dbg !1902
  br i1 %50, label %51, label %53, !dbg !1903

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %6, align 8, !dbg !1904
  br label %92, !dbg !1903

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1906, !tbaa !369
  %55 = icmp eq i64 %54, 0, !dbg !1909
  br i1 %55, label %63, label %56, !dbg !1910

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1911, !tbaa !193
  %58 = and i32 %57, 3, !dbg !1912
  %59 = icmp eq i32 %58, 0, !dbg !1912
  %60 = load i64, i64* %2, align 8, !dbg !1913
  %61 = icmp ult i64 %60, 10000, !dbg !1914
  %62 = and i1 %61, %59, !dbg !1914
  br i1 %62, label %66, label %76, !dbg !1914

; <label>:63:                                     ; preds = %53
  %64 = load i64, i64* %2, align 8, !dbg !1913, !tbaa !518
  %65 = icmp ult i64 %64, 10000, !dbg !1915
  br i1 %65, label %66, label %76, !dbg !1915

; <label>:66:                                     ; preds = %63, %56
  call void @decrRefCount(%struct.redisObject* nonnull %0) #9, !dbg !1916
  %67 = load i64, i64* %2, align 8, !dbg !1918, !tbaa !518
  %68 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 47, i64 %67, !dbg !1919
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !1919, !tbaa !298
  %70 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %69, i64 0, i32 1, !dbg !1922
  %71 = load i32, i32* %70, align 4, !dbg !1922, !tbaa !190
  %72 = icmp eq i32 %71, 2147483647, !dbg !1923
  br i1 %72, label %75, label %73, !dbg !1924

; <label>:73:                                     ; preds = %66
  %74 = add nsw i32 %71, 1, !dbg !1925
  store i32 %74, i32* %70, align 4, !dbg !1925, !tbaa !190
  br label %75, !dbg !1926

; <label>:75:                                     ; preds = %66, %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  br label %172, !dbg !1928

; <label>:76:                                     ; preds = %56, %63
  %77 = load i32, i32* %6, align 8, !dbg !1929
  %78 = lshr i32 %77, 4, !dbg !1929
  %79 = trunc i32 %78 to i4, !dbg !1932
  switch i4 %79, label %92 [
    i4 0, label %80
    i4 -8, label %87
  ], !dbg !1932

; <label>:80:                                     ; preds = %76
  %81 = load i8*, i8** %4, align 8, !dbg !1933, !tbaa !182
  call void @sdsfree(i8* %81) #6, !dbg !1935
  %82 = load i32, i32* %6, align 8, !dbg !1936
  %83 = and i32 %82, -241, !dbg !1936
  %84 = or i32 %83, 16, !dbg !1936
  store i32 %84, i32* %6, align 8, !dbg !1936
  %85 = load i64, i64* %2, align 8, !dbg !1937, !tbaa !518
  %86 = bitcast i8** %4 to i64*, !dbg !1938
  store i64 %85, i64* %86, align 8, !dbg !1938, !tbaa !182
  br label %172, !dbg !1939

; <label>:87:                                     ; preds = %76
  call void @decrRefCount(%struct.redisObject* nonnull %0) #9, !dbg !1940
  %88 = load i64, i64* %2, align 8, !dbg !1943, !tbaa !518
  %89 = call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %88, i32 1) #6, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  br label %172, !dbg !1948

; <label>:90:                                     ; preds = %44
  %91 = icmp ult i64 %45, 45, !dbg !1949
  br i1 %91, label %92, label %123, !dbg !1950

; <label>:92:                                     ; preds = %51, %76, %90
  %93 = phi i32 [ %52, %51 ], [ %77, %76 ], [ %7, %90 ], !dbg !1904
  %94 = and i32 %93, 240, !dbg !1904
  %95 = icmp eq i32 %94, 128, !dbg !1951
  br i1 %95, label %172, label %96, !dbg !1952

; <label>:96:                                     ; preds = %92
  %97 = load i8, i8* %19, align 1, !dbg !1955, !tbaa !291
  %98 = trunc i8 %97 to i3, !dbg !1957
  switch i3 %98, label %120 [
    i3 0, label %99
    i3 1, label %102
    i3 2, label %106
    i3 3, label %111
    i3 -4, label %116
  ], !dbg !1957

; <label>:99:                                     ; preds = %96
  %100 = lshr i8 %97, 3, !dbg !1958
  %101 = zext i8 %100 to i64, !dbg !1958
  br label %120, !dbg !1959

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1960
  %104 = load i8, i8* %103, align 1, !dbg !1961, !tbaa !291
  %105 = zext i8 %104 to i64, !dbg !1960
  br label %120, !dbg !1962

; <label>:106:                                    ; preds = %96
  %107 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1963
  %108 = bitcast i8* %107 to i16*, !dbg !1964
  %109 = load i16, i16* %108, align 1, !dbg !1964, !tbaa !509
  %110 = zext i16 %109 to i64, !dbg !1963
  br label %120, !dbg !1965

; <label>:111:                                    ; preds = %96
  %112 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1966
  %113 = bitcast i8* %112 to i32*, !dbg !1967
  %114 = load i32, i32* %113, align 1, !dbg !1967, !tbaa !514
  %115 = zext i32 %114 to i64, !dbg !1966
  br label %120, !dbg !1968

; <label>:116:                                    ; preds = %96
  %117 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !1969
  %118 = bitcast i8* %117 to i64*, !dbg !1970
  %119 = load i64, i64* %118, align 1, !dbg !1970, !tbaa !518
  br label %120, !dbg !1971

; <label>:120:                                    ; preds = %96, %99, %102, %106, %111, %116
  %121 = phi i64 [ %119, %116 ], [ %115, %111 ], [ %110, %106 ], [ %105, %102 ], [ %101, %99 ], [ 0, %96 ], !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  %122 = call %struct.redisObject* @createEmbeddedStringObject(i8* nonnull %5, i64 %121) #9, !dbg !1974
  call void @decrRefCount(%struct.redisObject* nonnull %0) #9, !dbg !1976
  br label %172, !dbg !1977

; <label>:123:                                    ; preds = %90
  %124 = and i32 %7, 240, !dbg !1980
  %125 = icmp eq i32 %124, 0, !dbg !1981
  br i1 %125, label %126, label %171, !dbg !1982

; <label>:126:                                    ; preds = %123
  switch i3 %21, label %163 [
    i3 -4, label %155
    i3 1, label %127
    i3 2, label %135
    i3 3, label %145
  ], !dbg !1986

; <label>:127:                                    ; preds = %126
  %128 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1987
  %129 = getelementptr inbounds i8, i8* %5, i64 -2, !dbg !1988
  %130 = load i8, i8* %129, align 1, !dbg !1988, !tbaa !291
  %131 = zext i8 %130 to i64, !dbg !1989
  %132 = load i8, i8* %128, align 1, !dbg !1990, !tbaa !291
  %133 = zext i8 %132 to i64, !dbg !1991
  %134 = sub nsw i64 %131, %133, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  br label %164, !dbg !1997

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1998
  %137 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1999
  %138 = bitcast i8* %137 to i16*, !dbg !1999
  %139 = load i16, i16* %138, align 1, !dbg !1999, !tbaa !509
  %140 = zext i16 %139 to i64, !dbg !2000
  %141 = bitcast i8* %136 to i16*, !dbg !2001
  %142 = load i16, i16* %141, align 1, !dbg !2001, !tbaa !509
  %143 = zext i16 %142 to i64, !dbg !2002
  %144 = sub nsw i64 %140, %143, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  br label %164, !dbg !2004

; <label>:145:                                    ; preds = %126
  %146 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !2005
  %147 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !2006
  %148 = bitcast i8* %147 to i32*, !dbg !2006
  %149 = load i32, i32* %148, align 1, !dbg !2006, !tbaa !514
  %150 = bitcast i8* %146 to i32*, !dbg !2007
  %151 = load i32, i32* %150, align 1, !dbg !2007, !tbaa !514
  %152 = sub i32 %149, %151, !dbg !2008
  %153 = zext i32 %152 to i64, !dbg !2009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  %154 = zext i32 %151 to i64, !dbg !2010
  br label %164, !dbg !2011

; <label>:155:                                    ; preds = %126
  %156 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !2012
  %157 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !2013
  %158 = bitcast i8* %157 to i64*, !dbg !2013
  %159 = load i64, i64* %158, align 1, !dbg !2013, !tbaa !518
  %160 = bitcast i8* %156 to i64*, !dbg !2014
  %161 = load i64, i64* %160, align 1, !dbg !2014, !tbaa !518
  %162 = sub i64 %159, %161, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  br label %164, !dbg !2016

; <label>:163:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2017
  br label %171, !dbg !2018

; <label>:164:                                    ; preds = %155, %145, %135, %127
  %165 = phi i64 [ %162, %155 ], [ %153, %145 ], [ %144, %135 ], [ %134, %127 ]
  %166 = phi i64 [ %161, %155 ], [ %154, %145 ], [ %143, %135 ], [ %133, %127 ], !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2017
  %167 = udiv i64 %166, 10, !dbg !2020
  %168 = icmp ugt i64 %165, %167, !dbg !2021
  br i1 %168, label %169, label %171, !dbg !2018

; <label>:169:                                    ; preds = %164
  %170 = tail call i8* @sdsRemoveFreeSpace(i8* nonnull %5) #6, !dbg !2022
  store i8* %170, i8** %4, align 8, !dbg !2023, !tbaa !182
  br label %171, !dbg !2024

; <label>:171:                                    ; preds = %123, %163, %164, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2025
  br label %172, !dbg !2026

; <label>:172:                                    ; preds = %120, %92, %14, %11, %171, %87, %80, %75
  %173 = phi %struct.redisObject* [ %69, %75 ], [ %0, %80 ], [ %89, %87 ], [ %0, %171 ], [ %0, %11 ], [ %0, %14 ], [ %122, %120 ], [ %0, %92 ], !dbg !2027
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2028
  ret %struct.redisObject* %173, !dbg !2028
}

; Function Attrs: noredzone
declare dso_local i32 @string2l(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #0 !dbg !2029 {
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2038
  %4 = load i32, i32* %3, align 8, !dbg !2038
  %5 = lshr i32 %4, 4, !dbg !2038
  %6 = trunc i32 %5 to i4, !dbg !2038
  switch i4 %6, label %14 [
    i4 0, label %7
    i4 -8, label %7
  ], !dbg !2038

; <label>:7:                                      ; preds = %1, %1
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !2043
  %9 = load i32, i32* %8, align 4, !dbg !2043, !tbaa !190
  %10 = icmp eq i32 %9, 2147483647, !dbg !2044
  br i1 %10, label %13, label %11, !dbg !2045

; <label>:11:                                     ; preds = %7
  %12 = add nsw i32 %9, 1, !dbg !2046
  store i32 %12, i32* %8, align 4, !dbg !2046, !tbaa !190
  br label %13, !dbg !2047

; <label>:13:                                     ; preds = %7, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br label %26, !dbg !2049

; <label>:14:                                     ; preds = %1
  %15 = and i32 %4, 255, !dbg !2050
  %16 = icmp eq i32 %15, 16, !dbg !2050
  br i1 %16, label %17, label %25, !dbg !2050

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #8, !dbg !2051
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2053
  %20 = bitcast i8** %19 to i64*, !dbg !2053
  %21 = load i64, i64* %20, align 8, !dbg !2053, !tbaa !182
  %22 = call i32 @ll2string(i8* nonnull %18, i64 32, i64 %21) #6, !dbg !2054
  %23 = call i64 @strlen(i8* nonnull %18) #6, !dbg !2055
  %24 = call %struct.redisObject* @createStringObject(i8* nonnull %18, i64 %23) #9, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #8, !dbg !2058
  br label %26

; <label>:25:                                     ; preds = %14
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2059
  tail call void @_exit(i32 1) #7, !dbg !2059
  unreachable, !dbg !2059

; <label>:26:                                     ; preds = %17, %13
  %27 = phi %struct.redisObject* [ %0, %13 ], [ %24, %17 ], !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  ret %struct.redisObject* %27, !dbg !2062
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @compareStringObjectsWithFlags(%struct.redisObject*, %struct.redisObject* readonly, i32) local_unnamed_addr #0 !dbg !2063 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2086
  %7 = load i32, i32* %6, align 8, !dbg !2086
  %8 = and i32 %7, 15, !dbg !2086
  %9 = icmp eq i32 %8, 0, !dbg !2086
  br i1 %9, label %10, label %15, !dbg !2086

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2086
  %12 = load i32, i32* %11, align 8, !dbg !2086
  %13 = and i32 %12, 15, !dbg !2086
  %14 = icmp eq i32 %13, 0, !dbg !2086
  br i1 %14, label %16, label %15, !dbg !2086

; <label>:15:                                     ; preds = %10, %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 542) #6, !dbg !2086
  tail call void @_exit(i32 1) #7, !dbg !2086
  unreachable, !dbg !2086

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %17) #8, !dbg !2087
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %18) #8, !dbg !2087
  %19 = icmp eq %struct.redisObject* %0, %1, !dbg !2090
  br i1 %19, label %115, label %20, !dbg !2092

; <label>:20:                                     ; preds = %16
  %21 = lshr i32 %7, 4, !dbg !2093
  %22 = trunc i32 %21 to i4, !dbg !2093
  switch i4 %22, label %52 [
    i4 0, label %23
    i4 -8, label %23
  ], !dbg !2093

; <label>:23:                                     ; preds = %20, %20
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2095
  %25 = load i8*, i8** %24, align 8, !dbg !2095, !tbaa !182
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !2100
  %27 = load i8, i8* %26, align 1, !dbg !2100, !tbaa !291
  %28 = trunc i8 %27 to i3, !dbg !2102
  switch i3 %28, label %50 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !2102

; <label>:29:                                     ; preds = %23
  %30 = lshr i8 %27, 3, !dbg !2103
  %31 = zext i8 %30 to i64, !dbg !2103
  br label %50, !dbg !2104

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !2105
  %34 = load i8, i8* %33, align 1, !dbg !2106, !tbaa !291
  %35 = zext i8 %34 to i64, !dbg !2105
  br label %50, !dbg !2107

; <label>:36:                                     ; preds = %23
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !2108
  %38 = bitcast i8* %37 to i16*, !dbg !2109
  %39 = load i16, i16* %38, align 1, !dbg !2109, !tbaa !509
  %40 = zext i16 %39 to i64, !dbg !2108
  br label %50, !dbg !2110

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !2111
  %43 = bitcast i8* %42 to i32*, !dbg !2112
  %44 = load i32, i32* %43, align 1, !dbg !2112, !tbaa !514
  %45 = zext i32 %44 to i64, !dbg !2111
  br label %50, !dbg !2113

; <label>:46:                                     ; preds = %23
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !2114
  %48 = bitcast i8* %47 to i64*, !dbg !2115
  %49 = load i64, i64* %48, align 1, !dbg !2115, !tbaa !518
  br label %50, !dbg !2116

; <label>:50:                                     ; preds = %23, %29, %32, %36, %41, %46
  %51 = phi i64 [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], [ 0, %23 ], !dbg !2117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2118
  br label %59, !dbg !2120

; <label>:52:                                     ; preds = %20
  %53 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2121
  %54 = bitcast i8** %53 to i64*, !dbg !2121
  %55 = load i64, i64* %54, align 8, !dbg !2121, !tbaa !182
  %56 = call i32 @ll2string(i8* nonnull %17, i64 128, i64 %55) #6, !dbg !2123
  %57 = sext i32 %56 to i64, !dbg !2123
  %58 = load i32, i32* %11, align 8, !dbg !2124
  br label %59

; <label>:59:                                     ; preds = %52, %50
  %60 = phi i32 [ %12, %50 ], [ %58, %52 ], !dbg !2124
  %61 = phi i64 [ %51, %50 ], [ %57, %52 ], !dbg !2126
  %62 = phi i8* [ %25, %50 ], [ %17, %52 ], !dbg !2126
  %63 = lshr i32 %60, 4, !dbg !2124
  %64 = trunc i32 %63 to i4, !dbg !2124
  switch i4 %64, label %94 [
    i4 0, label %65
    i4 -8, label %65
  ], !dbg !2124

; <label>:65:                                     ; preds = %59, %59
  %66 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2127
  %67 = load i8*, i8** %66, align 8, !dbg !2127, !tbaa !182
  %68 = getelementptr inbounds i8, i8* %67, i64 -1, !dbg !2132
  %69 = load i8, i8* %68, align 1, !dbg !2132, !tbaa !291
  %70 = trunc i8 %69 to i3, !dbg !2134
  switch i3 %70, label %92 [
    i3 0, label %71
    i3 1, label %74
    i3 2, label %78
    i3 3, label %83
    i3 -4, label %88
  ], !dbg !2134

; <label>:71:                                     ; preds = %65
  %72 = lshr i8 %69, 3, !dbg !2135
  %73 = zext i8 %72 to i64, !dbg !2135
  br label %92, !dbg !2136

; <label>:74:                                     ; preds = %65
  %75 = getelementptr inbounds i8, i8* %67, i64 -3, !dbg !2137
  %76 = load i8, i8* %75, align 1, !dbg !2138, !tbaa !291
  %77 = zext i8 %76 to i64, !dbg !2137
  br label %92, !dbg !2139

; <label>:78:                                     ; preds = %65
  %79 = getelementptr inbounds i8, i8* %67, i64 -5, !dbg !2140
  %80 = bitcast i8* %79 to i16*, !dbg !2141
  %81 = load i16, i16* %80, align 1, !dbg !2141, !tbaa !509
  %82 = zext i16 %81 to i64, !dbg !2140
  br label %92, !dbg !2142

; <label>:83:                                     ; preds = %65
  %84 = getelementptr inbounds i8, i8* %67, i64 -9, !dbg !2143
  %85 = bitcast i8* %84 to i32*, !dbg !2144
  %86 = load i32, i32* %85, align 1, !dbg !2144, !tbaa !514
  %87 = zext i32 %86 to i64, !dbg !2143
  br label %92, !dbg !2145

; <label>:88:                                     ; preds = %65
  %89 = getelementptr inbounds i8, i8* %67, i64 -17, !dbg !2146
  %90 = bitcast i8* %89 to i64*, !dbg !2147
  %91 = load i64, i64* %90, align 1, !dbg !2147, !tbaa !518
  br label %92, !dbg !2148

; <label>:92:                                     ; preds = %65, %71, %74, %78, %83, %88
  %93 = phi i64 [ %91, %88 ], [ %87, %83 ], [ %82, %78 ], [ %77, %74 ], [ %73, %71 ], [ 0, %65 ], !dbg !2149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  br label %100, !dbg !2152

; <label>:94:                                     ; preds = %59
  %95 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2153
  %96 = bitcast i8** %95 to i64*, !dbg !2153
  %97 = load i64, i64* %96, align 8, !dbg !2153, !tbaa !182
  %98 = call i32 @ll2string(i8* nonnull %18, i64 128, i64 %97) #6, !dbg !2155
  %99 = sext i32 %98 to i64, !dbg !2155
  br label %100

; <label>:100:                                    ; preds = %94, %92
  %101 = phi i8* [ %67, %92 ], [ %18, %94 ], !dbg !2156
  %102 = phi i64 [ %93, %92 ], [ %99, %94 ], !dbg !2156
  %103 = and i32 %2, 2, !dbg !2157
  %104 = icmp eq i32 %103, 0, !dbg !2157
  br i1 %104, label %107, label %105, !dbg !2158

; <label>:105:                                    ; preds = %100
  %106 = call i32 @strcoll(i8* %62, i8* %101) #6, !dbg !2159
  br label %115, !dbg !2161

; <label>:107:                                    ; preds = %100
  %108 = icmp ult i64 %61, %102, !dbg !2162
  %109 = select i1 %108, i64 %61, i64 %102, !dbg !2163
  %110 = call i32 @memcmp(i8* %62, i8* %101, i64 %109) #6, !dbg !2165
  %111 = icmp eq i32 %110, 0, !dbg !2167
  %112 = sub i64 %61, %102, !dbg !2169
  %113 = trunc i64 %112 to i32, !dbg !2170
  %114 = select i1 %111, i32 %113, i32 %110, !dbg !2171
  br label %115, !dbg !2171

; <label>:115:                                    ; preds = %107, %16, %105
  %116 = phi i32 [ %106, %105 ], [ 0, %16 ], [ %114, %107 ], !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %18) #8, !dbg !2173
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %17) #8, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  ret i32 %116, !dbg !2173
}

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @compareStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2174 {
  %3 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* %0, %struct.redisObject* %1, i32 1) #9, !dbg !2182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  ret i32 %3, !dbg !2183
}

; Function Attrs: noredzone nounwind
define dso_local i32 @collateStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2184 {
  %3 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* %0, %struct.redisObject* %1, i32 2) #9, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  ret i32 %3, !dbg !2191
}

; Function Attrs: noredzone nounwind
define dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2192 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2198
  %4 = load i32, i32* %3, align 8, !dbg !2198
  %5 = and i32 %4, 240, !dbg !2198
  %6 = icmp eq i32 %5, 16, !dbg !2200
  br i1 %6, label %7, label %18, !dbg !2201

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2202
  %9 = load i32, i32* %8, align 8, !dbg !2202
  %10 = and i32 %9, 240, !dbg !2202
  %11 = icmp eq i32 %10, 16, !dbg !2203
  br i1 %11, label %12, label %18, !dbg !2204

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2205
  %14 = load i8*, i8** %13, align 8, !dbg !2205, !tbaa !182
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2207
  %16 = load i8*, i8** %15, align 8, !dbg !2207, !tbaa !182
  %17 = icmp eq i8* %14, %16, !dbg !2208
  br label %21, !dbg !2209

; <label>:18:                                     ; preds = %7, %2
  %19 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* nonnull %0, %struct.redisObject* %1, i32 1) #6, !dbg !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  %20 = icmp eq i32 %19, 0, !dbg !2216
  br label %21, !dbg !2217

; <label>:21:                                     ; preds = %18, %12
  %22 = phi i1 [ %17, %12 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  ret i32 %23, !dbg !2219
}

; Function Attrs: noredzone nounwind
define dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #0 !dbg !2220 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2226
  %3 = load i32, i32* %2, align 8, !dbg !2226
  %4 = and i32 %3, 15, !dbg !2226
  %5 = icmp eq i32 %4, 0, !dbg !2226
  br i1 %5, label %7, label %6, !dbg !2226

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 599) #6, !dbg !2226
  tail call void @_exit(i32 1) #7, !dbg !2226
  unreachable, !dbg !2226

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !2227
  %9 = trunc i32 %8 to i4, !dbg !2227
  switch i4 %9, label %39 [
    i4 0, label %10
    i4 -8, label %10
  ], !dbg !2227

; <label>:10:                                     ; preds = %7, %7
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2229
  %12 = load i8*, i8** %11, align 8, !dbg !2229, !tbaa !182
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !2233
  %14 = load i8, i8* %13, align 1, !dbg !2233, !tbaa !291
  %15 = trunc i8 %14 to i3, !dbg !2235
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !2235

; <label>:16:                                     ; preds = %10
  %17 = lshr i8 %14, 3, !dbg !2236
  %18 = zext i8 %17 to i64, !dbg !2236
  br label %37, !dbg !2237

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !2238
  %21 = load i8, i8* %20, align 1, !dbg !2239, !tbaa !291
  %22 = zext i8 %21 to i64, !dbg !2238
  br label %37, !dbg !2240

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !2241
  %25 = bitcast i8* %24 to i16*, !dbg !2242
  %26 = load i16, i16* %25, align 1, !dbg !2242, !tbaa !509
  %27 = zext i16 %26 to i64, !dbg !2241
  br label %37, !dbg !2243

; <label>:28:                                     ; preds = %10
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !2244
  %30 = bitcast i8* %29 to i32*, !dbg !2245
  %31 = load i32, i32* %30, align 1, !dbg !2245, !tbaa !514
  %32 = zext i32 %31 to i64, !dbg !2244
  br label %37, !dbg !2246

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !2247
  %35 = bitcast i8* %34 to i64*, !dbg !2248
  %36 = load i64, i64* %35, align 1, !dbg !2248, !tbaa !518
  br label %37, !dbg !2249

; <label>:37:                                     ; preds = %10, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %10 ], !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2251
  br label %45, !dbg !2252

; <label>:39:                                     ; preds = %7
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2253
  %41 = bitcast i8** %40 to i64*, !dbg !2253
  %42 = load i64, i64* %41, align 8, !dbg !2253, !tbaa !182
  %43 = tail call i32 @sdigits10(i64 %42) #6, !dbg !2255
  %44 = zext i32 %43 to i64, !dbg !2255
  br label %45, !dbg !2256

; <label>:45:                                     ; preds = %39, %37
  %46 = phi i64 [ %38, %37 ], [ %44, %39 ], !dbg !2257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  ret i64 %46, !dbg !2258
}

; Function Attrs: noredzone
declare dso_local i32 @sdigits10(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getDoubleFromObject(%struct.redisObject*, double* nocapture) local_unnamed_addr #0 !dbg !2259 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !2270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2270
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2271
  br i1 %5, label %110, label %6, !dbg !2273

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2274
  %8 = load i32, i32* %7, align 8, !dbg !2274
  %9 = and i32 %8, 15, !dbg !2274
  %10 = icmp eq i32 %9, 0, !dbg !2274
  br i1 %10, label %12, label %11, !dbg !2274

; <label>:11:                                     ; preds = %6
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 614) #6, !dbg !2274
  tail call void @_exit(i32 1) #7, !dbg !2274
  unreachable, !dbg !2274

; <label>:12:                                     ; preds = %6
  %13 = lshr i32 %8, 4, !dbg !2276
  %14 = trunc i32 %13 to i4, !dbg !2276
  switch i4 %14, label %109 [
    i4 0, label %15
    i4 -8, label %15
    i4 1, label %104
  ], !dbg !2276

; <label>:15:                                     ; preds = %12, %12
  %16 = tail call i32* @__errno() #6, !dbg !2278
  store i32 0, i32* %16, align 4, !dbg !2280, !tbaa !514
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2281
  %18 = load i8*, i8** %17, align 8, !dbg !2281, !tbaa !182
  %19 = call double @strtod(i8* %18, i8** nonnull %3) #6, !dbg !2283
  %20 = load i8*, i8** %17, align 8, !dbg !2285, !tbaa !182
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !2289
  %22 = load i8, i8* %21, align 1, !dbg !2289, !tbaa !291
  %23 = trunc i8 %22 to i3, !dbg !2291
  switch i3 %23, label %24 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !2291

; <label>:24:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br label %112, !dbg !2293

; <label>:25:                                     ; preds = %15
  %26 = lshr i8 %22, 3, !dbg !2294
  %27 = zext i8 %26 to i64, !dbg !2294
  br label %46, !dbg !2295

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !2296
  %30 = load i8, i8* %29, align 1, !dbg !2297, !tbaa !291
  %31 = zext i8 %30 to i64, !dbg !2296
  br label %46, !dbg !2298

; <label>:32:                                     ; preds = %15
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !2299
  %34 = bitcast i8* %33 to i16*, !dbg !2300
  %35 = load i16, i16* %34, align 1, !dbg !2300, !tbaa !509
  %36 = zext i16 %35 to i64, !dbg !2299
  br label %46, !dbg !2301

; <label>:37:                                     ; preds = %15
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !2302
  %39 = bitcast i8* %38 to i32*, !dbg !2303
  %40 = load i32, i32* %39, align 1, !dbg !2303, !tbaa !514
  %41 = zext i32 %40 to i64, !dbg !2302
  br label %46, !dbg !2304

; <label>:42:                                     ; preds = %15
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !2305
  %44 = bitcast i8* %43 to i64*, !dbg !2306
  %45 = load i64, i64* %44, align 1, !dbg !2306, !tbaa !518
  br label %46, !dbg !2307

; <label>:46:                                     ; preds = %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], !dbg !2308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  %48 = icmp eq i64 %47, 0, !dbg !2309
  br i1 %48, label %112, label %49, !dbg !2293

; <label>:49:                                     ; preds = %46
  %50 = call i8* @__locale_ctype_ptr() #6, !dbg !2310
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2310
  %52 = load i8*, i8** %17, align 8, !dbg !2310, !tbaa !182
  %53 = load i8, i8* %52, align 1, !dbg !2310, !tbaa !291
  %54 = sext i8 %53 to i64, !dbg !2310
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !2310
  %56 = load i8, i8* %55, align 1, !dbg !2310, !tbaa !291
  %57 = and i8 %56, 8, !dbg !2310
  %58 = icmp eq i8 %57, 0, !dbg !2310
  br i1 %58, label %59, label %112, !dbg !2311

; <label>:59:                                     ; preds = %49
  %60 = bitcast i8** %3 to i64*, !dbg !2312
  %61 = load i64, i64* %60, align 8, !dbg !2312, !tbaa !298
  %62 = ptrtoint i8* %52 to i64, !dbg !2313
  %63 = sub i64 %61, %62, !dbg !2313
  %64 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !2316
  %65 = load i8, i8* %64, align 1, !dbg !2316, !tbaa !291
  %66 = trunc i8 %65 to i3, !dbg !2318
  switch i3 %66, label %88 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !2318

; <label>:67:                                     ; preds = %59
  %68 = lshr i8 %65, 3, !dbg !2319
  %69 = zext i8 %68 to i64, !dbg !2319
  br label %88, !dbg !2320

; <label>:70:                                     ; preds = %59
  %71 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !2321
  %72 = load i8, i8* %71, align 1, !dbg !2322, !tbaa !291
  %73 = zext i8 %72 to i64, !dbg !2321
  br label %88, !dbg !2323

; <label>:74:                                     ; preds = %59
  %75 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !2324
  %76 = bitcast i8* %75 to i16*, !dbg !2325
  %77 = load i16, i16* %76, align 1, !dbg !2325, !tbaa !509
  %78 = zext i16 %77 to i64, !dbg !2324
  br label %88, !dbg !2326

; <label>:79:                                     ; preds = %59
  %80 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !2327
  %81 = bitcast i8* %80 to i32*, !dbg !2328
  %82 = load i32, i32* %81, align 1, !dbg !2328, !tbaa !514
  %83 = zext i32 %82 to i64, !dbg !2327
  br label %88, !dbg !2329

; <label>:84:                                     ; preds = %59
  %85 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !2330
  %86 = bitcast i8* %85 to i64*, !dbg !2331
  %87 = load i64, i64* %86, align 1, !dbg !2331, !tbaa !518
  br label %88, !dbg !2332

; <label>:88:                                     ; preds = %59, %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], [ 0, %59 ], !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  %90 = icmp eq i64 %63, %89, !dbg !2335
  br i1 %90, label %91, label %112, !dbg !2336

; <label>:91:                                     ; preds = %88
  %92 = call i32* @__errno() #6, !dbg !2337
  %93 = load i32, i32* %92, align 4, !dbg !2337, !tbaa !514
  %94 = icmp eq i32 %93, 34, !dbg !2338
  br i1 %94, label %95, label %101, !dbg !2339

; <label>:95:                                     ; preds = %91
  %96 = fcmp oeq double %19, 0x7FF0000000000000, !dbg !2340
  %97 = fcmp oeq double %19, 0xFFF0000000000000, !dbg !2341
  %98 = or i1 %96, %97, !dbg !2342
  %99 = fcmp oeq double %19, 0.000000e+00, !dbg !2343
  %100 = or i1 %99, %98, !dbg !2342
  br i1 %100, label %112, label %101, !dbg !2342

; <label>:101:                                    ; preds = %95, %91
  %102 = call i32 @__fpclassifyd(double %19) #6, !dbg !2344
  %103 = icmp eq i32 %102, 0, !dbg !2344
  br i1 %103, label %112, label %110, !dbg !2345

; <label>:104:                                    ; preds = %12
  %105 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2346
  %106 = bitcast i8** %105 to i64*, !dbg !2346
  %107 = load i64, i64* %106, align 8, !dbg !2346, !tbaa !182
  %108 = sitofp i64 %107 to double, !dbg !2349
  br label %110

; <label>:109:                                    ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 628, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2350
  tail call void @_exit(i32 1) #7, !dbg !2350
  unreachable, !dbg !2350

; <label>:110:                                    ; preds = %2, %104, %101
  %111 = phi double [ %19, %101 ], [ %108, %104 ], [ 0.000000e+00, %2 ], !dbg !2352
  store double %111, double* %1, align 8, !dbg !2353, !tbaa !2354
  br label %112, !dbg !2355

; <label>:112:                                    ; preds = %24, %46, %95, %101, %49, %88, %110
  %113 = phi i32 [ 0, %110 ], [ -1, %88 ], [ -1, %49 ], [ -1, %101 ], [ -1, %95 ], [ -1, %46 ], [ -1, %24 ], !dbg !2356
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2357
  ret i32 %113, !dbg !2357
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, double* nocapture, i8*) local_unnamed_addr #0 !dbg !2358 {
  %5 = alloca double, align 8
  %6 = bitcast double* %5 to i8*, !dbg !2371
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2371
  %7 = call i32 @getDoubleFromObject(%struct.redisObject* %1, double* nonnull %5) #9, !dbg !2373
  %8 = icmp eq i32 %7, 0, !dbg !2375
  br i1 %8, label %13, label %9, !dbg !2376

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2377
  br i1 %10, label %12, label %11, !dbg !2380

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* nonnull %3) #6, !dbg !2381
  br label %17, !dbg !2383

; <label>:12:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2384
  br label %17

; <label>:13:                                     ; preds = %4
  %14 = bitcast double* %5 to i64*, !dbg !2386
  %15 = load i64, i64* %14, align 8, !dbg !2386, !tbaa !2354
  %16 = bitcast double* %2 to i64*, !dbg !2387
  store i64 %15, i64* %16, align 8, !dbg !2387, !tbaa !2354
  br label %17, !dbg !2388

; <label>:17:                                     ; preds = %11, %12, %13
  %18 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2390
  ret i32 %18, !dbg !2390
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongDoubleFromObject(%struct.redisObject*, x86_fp80* nocapture) local_unnamed_addr #0 !dbg !2391 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !2402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2402
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2403
  br i1 %5, label %111, label %6, !dbg !2405

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2406
  %8 = load i32, i32* %7, align 8, !dbg !2406
  %9 = and i32 %8, 15, !dbg !2406
  %10 = icmp eq i32 %9, 0, !dbg !2406
  br i1 %10, label %12, label %11, !dbg !2406

; <label>:11:                                     ; preds = %6
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 656) #6, !dbg !2406
  tail call void @_exit(i32 1) #7, !dbg !2406
  unreachable, !dbg !2406

; <label>:12:                                     ; preds = %6
  %13 = lshr i32 %8, 4, !dbg !2408
  %14 = trunc i32 %13 to i4, !dbg !2408
  switch i4 %14, label %110 [
    i4 0, label %15
    i4 -8, label %15
    i4 1, label %105
  ], !dbg !2408

; <label>:15:                                     ; preds = %12, %12
  %16 = tail call i32* @__errno() #6, !dbg !2410
  store i32 0, i32* %16, align 4, !dbg !2412, !tbaa !514
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2413
  %18 = load i8*, i8** %17, align 8, !dbg !2413, !tbaa !182
  %19 = call x86_fp80 @strtold(i8* %18, i8** nonnull %3) #6, !dbg !2415
  %20 = load i8*, i8** %17, align 8, !dbg !2417, !tbaa !182
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !2421
  %22 = load i8, i8* %21, align 1, !dbg !2421, !tbaa !291
  %23 = trunc i8 %22 to i3, !dbg !2423
  switch i3 %23, label %24 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !2423

; <label>:24:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  br label %113, !dbg !2425

; <label>:25:                                     ; preds = %15
  %26 = lshr i8 %22, 3, !dbg !2426
  %27 = zext i8 %26 to i64, !dbg !2426
  br label %46, !dbg !2427

; <label>:28:                                     ; preds = %15
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !2428
  %30 = load i8, i8* %29, align 1, !dbg !2429, !tbaa !291
  %31 = zext i8 %30 to i64, !dbg !2428
  br label %46, !dbg !2430

; <label>:32:                                     ; preds = %15
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !2431
  %34 = bitcast i8* %33 to i16*, !dbg !2432
  %35 = load i16, i16* %34, align 1, !dbg !2432, !tbaa !509
  %36 = zext i16 %35 to i64, !dbg !2431
  br label %46, !dbg !2433

; <label>:37:                                     ; preds = %15
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !2434
  %39 = bitcast i8* %38 to i32*, !dbg !2435
  %40 = load i32, i32* %39, align 1, !dbg !2435, !tbaa !514
  %41 = zext i32 %40 to i64, !dbg !2434
  br label %46, !dbg !2436

; <label>:42:                                     ; preds = %15
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !2437
  %44 = bitcast i8* %43 to i64*, !dbg !2438
  %45 = load i64, i64* %44, align 1, !dbg !2438, !tbaa !518
  br label %46, !dbg !2439

; <label>:46:                                     ; preds = %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], !dbg !2440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  %48 = icmp eq i64 %47, 0, !dbg !2441
  br i1 %48, label %113, label %49, !dbg !2425

; <label>:49:                                     ; preds = %46
  %50 = call i8* @__locale_ctype_ptr() #6, !dbg !2442
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2442
  %52 = load i8*, i8** %17, align 8, !dbg !2442, !tbaa !182
  %53 = load i8, i8* %52, align 1, !dbg !2442, !tbaa !291
  %54 = sext i8 %53 to i64, !dbg !2442
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !2442
  %56 = load i8, i8* %55, align 1, !dbg !2442, !tbaa !291
  %57 = and i8 %56, 8, !dbg !2442
  %58 = icmp eq i8 %57, 0, !dbg !2442
  br i1 %58, label %59, label %113, !dbg !2443

; <label>:59:                                     ; preds = %49
  %60 = bitcast i8** %3 to i64*, !dbg !2444
  %61 = load i64, i64* %60, align 8, !dbg !2444, !tbaa !298
  %62 = ptrtoint i8* %52 to i64, !dbg !2445
  %63 = sub i64 %61, %62, !dbg !2445
  %64 = getelementptr inbounds i8, i8* %52, i64 -1, !dbg !2448
  %65 = load i8, i8* %64, align 1, !dbg !2448, !tbaa !291
  %66 = trunc i8 %65 to i3, !dbg !2450
  switch i3 %66, label %88 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !2450

; <label>:67:                                     ; preds = %59
  %68 = lshr i8 %65, 3, !dbg !2451
  %69 = zext i8 %68 to i64, !dbg !2451
  br label %88, !dbg !2452

; <label>:70:                                     ; preds = %59
  %71 = getelementptr inbounds i8, i8* %52, i64 -3, !dbg !2453
  %72 = load i8, i8* %71, align 1, !dbg !2454, !tbaa !291
  %73 = zext i8 %72 to i64, !dbg !2453
  br label %88, !dbg !2455

; <label>:74:                                     ; preds = %59
  %75 = getelementptr inbounds i8, i8* %52, i64 -5, !dbg !2456
  %76 = bitcast i8* %75 to i16*, !dbg !2457
  %77 = load i16, i16* %76, align 1, !dbg !2457, !tbaa !509
  %78 = zext i16 %77 to i64, !dbg !2456
  br label %88, !dbg !2458

; <label>:79:                                     ; preds = %59
  %80 = getelementptr inbounds i8, i8* %52, i64 -9, !dbg !2459
  %81 = bitcast i8* %80 to i32*, !dbg !2460
  %82 = load i32, i32* %81, align 1, !dbg !2460, !tbaa !514
  %83 = zext i32 %82 to i64, !dbg !2459
  br label %88, !dbg !2461

; <label>:84:                                     ; preds = %59
  %85 = getelementptr inbounds i8, i8* %52, i64 -17, !dbg !2462
  %86 = bitcast i8* %85 to i64*, !dbg !2463
  %87 = load i64, i64* %86, align 1, !dbg !2463, !tbaa !518
  br label %88, !dbg !2464

; <label>:88:                                     ; preds = %59, %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], [ 0, %59 ], !dbg !2465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %90 = icmp eq i64 %63, %89, !dbg !2467
  br i1 %90, label %91, label %113, !dbg !2468

; <label>:91:                                     ; preds = %88
  %92 = call i32* @__errno() #6, !dbg !2469
  %93 = load i32, i32* %92, align 4, !dbg !2469, !tbaa !514
  %94 = icmp eq i32 %93, 34, !dbg !2470
  br i1 %94, label %95, label %101, !dbg !2471

; <label>:95:                                     ; preds = %91
  %96 = fcmp oeq x86_fp80 %19, 0xK7FFF8000000000000000, !dbg !2472
  %97 = fcmp oeq x86_fp80 %19, 0xKFFFF8000000000000000, !dbg !2473
  %98 = or i1 %96, %97, !dbg !2474
  %99 = fcmp oeq x86_fp80 %19, 0xK00000000000000000000, !dbg !2475
  %100 = or i1 %99, %98, !dbg !2474
  br i1 %100, label %113, label %101, !dbg !2474

; <label>:101:                                    ; preds = %95, %91
  %102 = fptrunc x86_fp80 %19 to double, !dbg !2476
  %103 = call i32 @__fpclassifyd(double %102) #6, !dbg !2476
  %104 = icmp eq i32 %103, 0, !dbg !2476
  br i1 %104, label %113, label %111, !dbg !2477

; <label>:105:                                    ; preds = %12
  %106 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2478
  %107 = bitcast i8** %106 to i64*, !dbg !2478
  %108 = load i64, i64* %107, align 8, !dbg !2478, !tbaa !182
  %109 = sitofp i64 %108 to x86_fp80, !dbg !2481
  br label %111

; <label>:110:                                    ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2482
  tail call void @_exit(i32 1) #7, !dbg !2482
  unreachable, !dbg !2482

; <label>:111:                                    ; preds = %2, %105, %101
  %112 = phi x86_fp80 [ %19, %101 ], [ %109, %105 ], [ 0xK00000000000000000000, %2 ], !dbg !2484
  store x86_fp80 %112, x86_fp80* %1, align 16, !dbg !2485, !tbaa !2486
  br label %113, !dbg !2488

; <label>:113:                                    ; preds = %24, %46, %95, %101, %49, %88, %111
  %114 = phi i32 [ 0, %111 ], [ -1, %88 ], [ -1, %49 ], [ -1, %101 ], [ -1, %95 ], [ -1, %46 ], [ -1, %24 ], !dbg !2489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  ret i32 %114, !dbg !2490
}

; Function Attrs: noredzone
declare dso_local x86_fp80 @strtold(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, x86_fp80* nocapture, i8*) local_unnamed_addr #0 !dbg !2491 {
  %5 = alloca x86_fp80, align 16
  %6 = bitcast x86_fp80* %5 to i8*, !dbg !2504
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2504
  %7 = call i32 @getLongDoubleFromObject(%struct.redisObject* %1, x86_fp80* nonnull %5) #9, !dbg !2506
  %8 = icmp eq i32 %7, 0, !dbg !2508
  br i1 %8, label %13, label %9, !dbg !2509

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2510
  br i1 %10, label %12, label %11, !dbg !2513

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* nonnull %3) #6, !dbg !2514
  br label %15, !dbg !2516

; <label>:12:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2517
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = load x86_fp80, x86_fp80* %5, align 16, !dbg !2519, !tbaa !2486
  store x86_fp80 %14, x86_fp80* %2, align 16, !dbg !2520, !tbaa !2486
  br label %15, !dbg !2521

; <label>:15:                                     ; preds = %11, %12, %13
  %16 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2523
  ret i32 %16, !dbg !2523
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #0 !dbg !2524 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2531
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2532
  br i1 %5, label %6, label %7, !dbg !2534

; <label>:6:                                      ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !2536, !tbaa !1756
  br label %52, !dbg !2538

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2539
  %9 = load i32, i32* %8, align 8, !dbg !2539
  %10 = and i32 %9, 15, !dbg !2539
  %11 = icmp eq i32 %10, 0, !dbg !2539
  br i1 %11, label %13, label %12, !dbg !2539

; <label>:12:                                     ; preds = %7
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 697) #6, !dbg !2539
  tail call void @_exit(i32 1) #7, !dbg !2539
  unreachable, !dbg !2539

; <label>:13:                                     ; preds = %7
  %14 = lshr i32 %9, 4, !dbg !2541
  %15 = trunc i32 %14 to i4, !dbg !2541
  switch i4 %15, label %51 [
    i4 0, label %16
    i4 -8, label %16
    i4 1, label %47
  ], !dbg !2541

; <label>:16:                                     ; preds = %13, %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2543
  %18 = load i8*, i8** %17, align 8, !dbg !2543, !tbaa !182
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !2548
  %20 = load i8, i8* %19, align 1, !dbg !2548, !tbaa !291
  %21 = trunc i8 %20 to i3, !dbg !2550
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !2550

; <label>:22:                                     ; preds = %16
  %23 = lshr i8 %20, 3, !dbg !2551
  %24 = zext i8 %23 to i64, !dbg !2551
  br label %43, !dbg !2552

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !2553
  %27 = load i8, i8* %26, align 1, !dbg !2554, !tbaa !291
  %28 = zext i8 %27 to i64, !dbg !2553
  br label %43, !dbg !2555

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !2556
  %31 = bitcast i8* %30 to i16*, !dbg !2557
  %32 = load i16, i16* %31, align 1, !dbg !2557, !tbaa !509
  %33 = zext i16 %32 to i64, !dbg !2556
  br label %43, !dbg !2558

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !2559
  %36 = bitcast i8* %35 to i32*, !dbg !2560
  %37 = load i32, i32* %36, align 1, !dbg !2560, !tbaa !514
  %38 = zext i32 %37 to i64, !dbg !2559
  br label %43, !dbg !2561

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !2562
  %41 = bitcast i8* %40 to i64*, !dbg !2563
  %42 = load i64, i64* %41, align 1, !dbg !2563, !tbaa !518
  br label %43, !dbg !2564

; <label>:43:                                     ; preds = %16, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %16 ], !dbg !2565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2566
  %45 = call i32 @string2ll(i8* %18, i64 %44, i64* nonnull %3) #6, !dbg !2567
  %46 = icmp eq i32 %45, 0, !dbg !2568
  br i1 %46, label %56, label %52, !dbg !2569

; <label>:47:                                     ; preds = %13
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2570
  %49 = bitcast i8** %48 to i64*, !dbg !2570
  %50 = load i64, i64* %49, align 8, !dbg !2570, !tbaa !182
  store i64 %50, i64* %3, align 8, !dbg !2573, !tbaa !1756
  br label %52

; <label>:51:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 703, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2574
  tail call void @_exit(i32 1) #7, !dbg !2574
  unreachable, !dbg !2574

; <label>:52:                                     ; preds = %47, %43, %6
  %53 = icmp eq i64* %1, null, !dbg !2576
  br i1 %53, label %56, label %54, !dbg !2578

; <label>:54:                                     ; preds = %52
  %55 = load i64, i64* %3, align 8, !dbg !2579, !tbaa !1756
  store i64 %55, i64* %1, align 8, !dbg !2580, !tbaa !1756
  br label %56, !dbg !2581

; <label>:56:                                     ; preds = %54, %52, %43
  %57 = phi i32 [ -1, %43 ], [ 0, %52 ], [ 0, %54 ], !dbg !2582
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  ret i32 %57, !dbg !2583
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !2584 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2597
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2597
  %7 = call i32 @getLongLongFromObject(%struct.redisObject* %1, i64* nonnull %5) #9, !dbg !2599
  %8 = icmp eq i32 %7, 0, !dbg !2601
  br i1 %8, label %13, label %9, !dbg !2602

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2603
  br i1 %10, label %12, label %11, !dbg !2606

; <label>:11:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* nonnull %3) #6, !dbg !2607
  br label %15, !dbg !2609

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2610
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = load i64, i64* %5, align 8, !dbg !2612, !tbaa !1756
  store i64 %14, i64* %2, align 8, !dbg !2613, !tbaa !1756
  br label %15, !dbg !2614

; <label>:15:                                     ; preds = %11, %12, %13
  %16 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  ret i32 %16, !dbg !2616
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !2617 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2636
  %7 = call i32 @getLongLongFromObject(%struct.redisObject* %1, i64* nonnull %5) #6, !dbg !2638
  %8 = icmp eq i32 %7, 0, !dbg !2639
  br i1 %8, label %14, label %9, !dbg !2640

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2641
  br i1 %10, label %12, label %11, !dbg !2642

; <label>:11:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* nonnull %3) #6, !dbg !2643
  br label %13, !dbg !2644

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2645
  br label %13

; <label>:13:                                     ; preds = %12, %11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  br label %16, !dbg !2647

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %5, align 8, !dbg !2648, !tbaa !1756
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store i64 %15, i64* %2, align 8, !dbg !2650, !tbaa !518
  br label %16, !dbg !2651

; <label>:16:                                     ; preds = %13, %14
  %17 = phi i32 [ 0, %14 ], [ -1, %13 ], !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  ret i32 %17, !dbg !2653
}

; Function Attrs: noredzone nounwind
define dso_local i8* @strEncoding(i32) local_unnamed_addr #0 !dbg !2654 {
  %2 = icmp ult i32 %0, 10, !dbg !2660
  br i1 %2, label %3, label %7, !dbg !2660

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !2660
  %5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @switch.table.strEncoding, i64 0, i64 %4, !dbg !2660
  %6 = load i8*, i8** %5, align 8, !dbg !2660
  br label %7, !dbg !2660

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i8* [ %6, %3 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), %1 ], !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  ret i8* %8, !dbg !2663
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamRadixTreeMemoryUsage(%struct.rax* nocapture readonly) local_unnamed_addr #0 !dbg !2664 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !2671
  %3 = load i64, i64* %2, align 8, !dbg !2671, !tbaa !2672
  %4 = shl i64 %3, 4, !dbg !2674
  %5 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2676
  %6 = load i64, i64* %5, align 8, !dbg !2676, !tbaa !2677
  %7 = mul i64 %6, 244
  %8 = add i64 %7, %4, !dbg !2678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  ret i64 %8, !dbg !2679
}

; Function Attrs: noredzone nounwind
define dso_local i64 @objectComputeSize(%struct.redisObject* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2680 {
  %3 = alloca %struct.raxIterator, align 8
  %4 = alloca %struct.raxIterator, align 8
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2794
  %6 = load i32, i32* %5, align 8, !dbg !2794
  %7 = trunc i32 %6 to i4, !dbg !2795
  switch i4 %7, label %430 [
    i4 0, label %8
    i4 1, label %47
    i4 2, label %87
    i4 3, label %147
    i4 4, label %213
    i4 6, label %271
    i4 5, label %417
  ], !dbg !2795

; <label>:8:                                      ; preds = %2
  %9 = lshr i32 %6, 4, !dbg !2796
  %10 = trunc i32 %9 to i4, !dbg !2799
  switch i4 %10, label %46 [
    i4 1, label %431
    i4 0, label %11
    i4 -8, label %16
  ], !dbg !2799

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2800
  %13 = load i8*, i8** %12, align 8, !dbg !2800, !tbaa !182
  %14 = tail call i64 @sdsAllocSize(i8* %13) #6, !dbg !2803
  %15 = add i64 %14, 16, !dbg !2804
  br label %431, !dbg !2805

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2806
  %18 = load i8*, i8** %17, align 8, !dbg !2806, !tbaa !182
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !2811
  %20 = load i8, i8* %19, align 1, !dbg !2811, !tbaa !291
  %21 = trunc i8 %20 to i3, !dbg !2813
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !2813

; <label>:22:                                     ; preds = %16
  %23 = lshr i8 %20, 3, !dbg !2814
  %24 = zext i8 %23 to i64, !dbg !2814
  br label %43, !dbg !2815

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !2816
  %27 = load i8, i8* %26, align 1, !dbg !2817, !tbaa !291
  %28 = zext i8 %27 to i64, !dbg !2816
  br label %43, !dbg !2818

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !2819
  %31 = bitcast i8* %30 to i16*, !dbg !2820
  %32 = load i16, i16* %31, align 1, !dbg !2820, !tbaa !509
  %33 = zext i16 %32 to i64, !dbg !2819
  br label %43, !dbg !2821

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !2822
  %36 = bitcast i8* %35 to i32*, !dbg !2823
  %37 = load i32, i32* %36, align 1, !dbg !2823, !tbaa !514
  %38 = zext i32 %37 to i64, !dbg !2822
  br label %43, !dbg !2824

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !2825
  %41 = bitcast i8* %40 to i64*, !dbg !2826
  %42 = load i64, i64* %41, align 1, !dbg !2826, !tbaa !518
  br label %43, !dbg !2827

; <label>:43:                                     ; preds = %16, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %16 ], !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %45 = add i64 %44, 18, !dbg !2830
  br label %431

; <label>:46:                                     ; preds = %8
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 800, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2831
  tail call void @_exit(i32 1) #7, !dbg !2831
  unreachable, !dbg !2831

; <label>:47:                                     ; preds = %2
  %48 = lshr i32 %6, 4, !dbg !2833
  %49 = trunc i32 %48 to i4, !dbg !2834
  switch i4 %49, label %86 [
    i4 -7, label %50
    i4 5, label %81
  ], !dbg !2834

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2835
  %52 = bitcast i8** %51 to %struct.quicklist**, !dbg !2835
  %53 = load %struct.quicklist*, %struct.quicklist** %52, align 8, !dbg !2835, !tbaa !182
  %54 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %53, i64 0, i32 0, !dbg !2837
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %54, align 8, !dbg !2837, !tbaa !2838
  br label %56, !dbg !2841

; <label>:56:                                     ; preds = %56, %50
  %57 = phi %struct.quicklistNode* [ %55, %50 ], [ %67, %56 ], !dbg !2842
  %58 = phi i64 [ 0, %50 ], [ %65, %56 ], !dbg !2843
  %59 = phi i64 [ 0, %50 ], [ %64, %56 ], !dbg !2843
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %57, i64 0, i32 2, !dbg !2845
  %61 = load i8*, i8** %60, align 8, !dbg !2845, !tbaa !2846
  %62 = tail call i64 @ziplistBlobLen(i8* %61) #6, !dbg !2848
  %63 = add i64 %59, 32, !dbg !2849
  %64 = add i64 %63, %62, !dbg !2850
  %65 = add nuw i64 %58, 1, !dbg !2851
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %57, i64 0, i32 1, !dbg !2852
  %67 = load %struct.quicklistNode*, %struct.quicklistNode** %66, align 8, !dbg !2852, !tbaa !2853
  %68 = icmp ne %struct.quicklistNode* %67, null, !dbg !2854
  %69 = icmp ult i64 %65, %1, !dbg !2855
  %70 = and i1 %69, %68, !dbg !2856
  br i1 %70, label %56, label %71, !dbg !2856, !llvm.loop !2857

; <label>:71:                                     ; preds = %56
  %72 = uitofp i64 %64 to double, !dbg !2859
  %73 = uitofp i64 %65 to double, !dbg !2860
  %74 = fdiv double %72, %73, !dbg !2861
  %75 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %53, i64 0, i32 3, !dbg !2862
  %76 = load i64, i64* %75, align 8, !dbg !2862, !tbaa !2863
  %77 = uitofp i64 %76 to double, !dbg !2864
  %78 = fmul double %74, %77, !dbg !2865
  %79 = fadd double %78, 5.600000e+01, !dbg !2866
  %80 = fptoui double %79 to i64, !dbg !2866
  br label %431, !dbg !2867

; <label>:81:                                     ; preds = %47
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2868
  %83 = load i8*, i8** %82, align 8, !dbg !2868, !tbaa !182
  %84 = tail call i64 @ziplistBlobLen(i8* %83) #6, !dbg !2871
  %85 = add i64 %84, 16, !dbg !2872
  br label %431

; <label>:86:                                     ; preds = %47
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 815, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2873
  tail call void @_exit(i32 1) #7, !dbg !2873
  unreachable, !dbg !2873

; <label>:87:                                     ; preds = %2
  %88 = lshr i32 %6, 4, !dbg !2875
  %89 = trunc i32 %88 to i4, !dbg !2876
  switch i4 %89, label %146 [
    i4 2, label %90
    i4 6, label %135
  ], !dbg !2876

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2877
  %92 = bitcast i8** %91 to %struct.dict**, !dbg !2877
  %93 = load %struct.dict*, %struct.dict** %92, align 8, !dbg !2877, !tbaa !182
  %94 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %93) #6, !dbg !2880
  %95 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 0, i32 1, !dbg !2882
  %96 = load i64, i64* %95, align 8, !dbg !2882, !tbaa !2883
  %97 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 1, i32 1, !dbg !2882
  %98 = load i64, i64* %97, align 8, !dbg !2882, !tbaa !2883
  %99 = add i64 %98, %96, !dbg !2882
  %100 = shl i64 %99, 3, !dbg !2885
  %101 = add i64 %100, 112, !dbg !2886
  %102 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #6, !dbg !2887
  %103 = icmp ne %struct.dictEntry* %102, null, !dbg !2889
  %104 = icmp ne i64 %1, 0, !dbg !2890
  %105 = and i1 %104, %103, !dbg !2891
  br i1 %105, label %107, label %106, !dbg !2891

; <label>:106:                                    ; preds = %90
  tail call void @dictReleaseIterator(%struct.dictIterator* %94) #6, !dbg !2892
  br label %431, !dbg !2893

; <label>:107:                                    ; preds = %90, %107
  %108 = phi %struct.dictEntry* [ %117, %107 ], [ %102, %90 ]
  %109 = phi i64 [ %115, %107 ], [ 0, %90 ]
  %110 = phi i64 [ %116, %107 ], [ 0, %90 ]
  %111 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %108, i64 0, i32 0, !dbg !2894
  %112 = load i8*, i8** %111, align 8, !dbg !2894, !tbaa !2896
  %113 = tail call i64 @sdsAllocSize(i8* %112) #6, !dbg !2899
  %114 = add i64 %109, 24, !dbg !2900
  %115 = add i64 %114, %113, !dbg !2901
  %116 = add nuw i64 %110, 1, !dbg !2902
  %117 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #6, !dbg !2887
  %118 = icmp ne %struct.dictEntry* %117, null, !dbg !2889
  %119 = icmp ult i64 %116, %1, !dbg !2890
  %120 = and i1 %119, %118, !dbg !2891
  br i1 %120, label %107, label %121, !dbg !2891, !llvm.loop !2903

; <label>:121:                                    ; preds = %107
  %122 = uitofp i64 %115 to double, !dbg !2892
  tail call void @dictReleaseIterator(%struct.dictIterator* %94) #6, !dbg !2892
  %123 = uitofp i64 %116 to double, !dbg !2906
  %124 = fdiv double %122, %123, !dbg !2908
  %125 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 0, i32 3, !dbg !2909
  %126 = load i64, i64* %125, align 8, !dbg !2909, !tbaa !2910
  %127 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 1, i32 3, !dbg !2909
  %128 = load i64, i64* %127, align 8, !dbg !2909, !tbaa !2910
  %129 = add i64 %128, %126, !dbg !2909
  %130 = uitofp i64 %129 to double, !dbg !2909
  %131 = fmul double %124, %130, !dbg !2911
  %132 = uitofp i64 %101 to double, !dbg !2912
  %133 = fadd double %131, %132, !dbg !2912
  %134 = fptoui double %133 to i64, !dbg !2912
  br label %431, !dbg !2913

; <label>:135:                                    ; preds = %87
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2914
  %137 = bitcast i8** %136 to %struct.intset**, !dbg !2914
  %138 = load %struct.intset*, %struct.intset** %137, align 8, !dbg !2914, !tbaa !182
  %139 = getelementptr inbounds %struct.intset, %struct.intset* %138, i64 0, i32 0, !dbg !2916
  %140 = load i32, i32* %139, align 4, !dbg !2916, !tbaa !514
  %141 = getelementptr inbounds %struct.intset, %struct.intset* %138, i64 0, i32 1, !dbg !2917
  %142 = load i32, i32* %141, align 4, !dbg !2917, !tbaa !514
  %143 = mul i32 %142, %140, !dbg !2918
  %144 = zext i32 %143 to i64, !dbg !2919
  %145 = add nuw nsw i64 %144, 24, !dbg !2920
  br label %431

; <label>:146:                                    ; preds = %87
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 833, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2921
  tail call void @_exit(i32 1) #7, !dbg !2921
  unreachable, !dbg !2921

; <label>:147:                                    ; preds = %2
  %148 = lshr i32 %6, 4, !dbg !2923
  %149 = trunc i32 %148 to i4, !dbg !2924
  switch i4 %149, label %212 [
    i4 5, label %150
    i4 7, label %155
  ], !dbg !2924

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2925
  %152 = load i8*, i8** %151, align 8, !dbg !2925, !tbaa !182
  %153 = tail call i64 @ziplistBlobLen(i8* %152) #6, !dbg !2927
  %154 = add i64 %153, 16, !dbg !2928
  br label %431, !dbg !2929

; <label>:155:                                    ; preds = %147
  %156 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2930
  %157 = bitcast i8** %156 to %struct.zset**, !dbg !2930
  %158 = load %struct.zset*, %struct.zset** %157, align 8, !dbg !2930, !tbaa !182
  %159 = getelementptr inbounds %struct.zset, %struct.zset* %158, i64 0, i32 0, !dbg !2931
  %160 = load %struct.dict*, %struct.dict** %159, align 8, !dbg !2931, !tbaa !810
  %161 = getelementptr inbounds %struct.zset, %struct.zset* %158, i64 0, i32 1, !dbg !2932
  %162 = load %struct.zskiplist*, %struct.zskiplist** %161, align 8, !dbg !2932, !tbaa !815
  %163 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %162, i64 0, i32 0, !dbg !2934
  %164 = load %struct.zskiplistNode*, %struct.zskiplistNode** %163, align 8, !dbg !2934, !tbaa !2935
  %165 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %164, i64 0, i32 3, i64 0, i32 0, !dbg !2937
  %166 = load %struct.zskiplistNode*, %struct.zskiplistNode** %165, align 8, !dbg !2937, !tbaa !2938
  %167 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 0, i32 1, !dbg !2941
  %168 = load i64, i64* %167, align 8, !dbg !2941, !tbaa !2883
  %169 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 1, i32 1, !dbg !2941
  %170 = load i64, i64* %169, align 8, !dbg !2941, !tbaa !2883
  %171 = add i64 %170, %168, !dbg !2941
  %172 = shl i64 %171, 3, !dbg !2942
  %173 = bitcast %struct.zskiplistNode* %164 to i8*, !dbg !2943
  %174 = tail call i64 @zmalloc_size(i8* %173) #6, !dbg !2944
  %175 = add i64 %174, 160, !dbg !2945
  %176 = add i64 %175, %172, !dbg !2946
  %177 = icmp ne %struct.zskiplistNode* %166, null, !dbg !2947
  %178 = icmp ne i64 %1, 0, !dbg !2948
  %179 = and i1 %178, %177, !dbg !2949
  br i1 %179, label %180, label %431, !dbg !2949

; <label>:180:                                    ; preds = %155, %180
  %181 = phi i64 [ %191, %180 ], [ 0, %155 ]
  %182 = phi %struct.zskiplistNode* [ %194, %180 ], [ %166, %155 ]
  %183 = phi i64 [ %192, %180 ], [ 0, %155 ]
  %184 = bitcast %struct.zskiplistNode* %182 to i8*, !dbg !2940
  %185 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %182, i64 0, i32 0, !dbg !2950
  %186 = load i8*, i8** %185, align 8, !dbg !2950, !tbaa !298
  %187 = tail call i64 @sdsAllocSize(i8* %186) #6, !dbg !2952
  %188 = tail call i64 @zmalloc_size(i8* %184) #6, !dbg !2953
  %189 = add i64 %181, 24, !dbg !2954
  %190 = add i64 %189, %187, !dbg !2955
  %191 = add i64 %190, %188, !dbg !2956
  %192 = add nuw i64 %183, 1, !dbg !2957
  %193 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %182, i64 0, i32 3, i64 0, i32 0, !dbg !2958
  %194 = load %struct.zskiplistNode*, %struct.zskiplistNode** %193, align 8, !dbg !2958, !tbaa !2938
  %195 = icmp ne %struct.zskiplistNode* %194, null, !dbg !2947
  %196 = icmp ult i64 %192, %1, !dbg !2948
  %197 = and i1 %196, %195, !dbg !2949
  br i1 %197, label %180, label %198, !dbg !2949, !llvm.loop !2959

; <label>:198:                                    ; preds = %180
  %199 = uitofp i64 %191 to double, !dbg !2962
  %200 = uitofp i64 %192 to double, !dbg !2964
  %201 = fdiv double %199, %200, !dbg !2965
  %202 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 0, i32 3, !dbg !2966
  %203 = load i64, i64* %202, align 8, !dbg !2966, !tbaa !2910
  %204 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 1, i32 3, !dbg !2966
  %205 = load i64, i64* %204, align 8, !dbg !2966, !tbaa !2910
  %206 = add i64 %205, %203, !dbg !2966
  %207 = uitofp i64 %206 to double, !dbg !2966
  %208 = fmul double %201, %207, !dbg !2967
  %209 = uitofp i64 %176 to double, !dbg !2968
  %210 = fadd double %208, %209, !dbg !2968
  %211 = fptoui double %210 to i64, !dbg !2968
  br label %431, !dbg !2969

; <label>:212:                                    ; preds = %147
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 853, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2970
  tail call void @_exit(i32 1) #7, !dbg !2970
  unreachable, !dbg !2970

; <label>:213:                                    ; preds = %2
  %214 = lshr i32 %6, 4, !dbg !2972
  %215 = trunc i32 %214 to i4, !dbg !2975
  switch i4 %215, label %270 [
    i4 5, label %216
    i4 2, label %221
  ], !dbg !2975

; <label>:216:                                    ; preds = %213
  %217 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2976
  %218 = load i8*, i8** %217, align 8, !dbg !2976, !tbaa !182
  %219 = tail call i64 @ziplistBlobLen(i8* %218) #6, !dbg !2978
  %220 = add i64 %219, 16, !dbg !2979
  br label %431, !dbg !2980

; <label>:221:                                    ; preds = %213
  %222 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2981
  %223 = bitcast i8** %222 to %struct.dict**, !dbg !2981
  %224 = load %struct.dict*, %struct.dict** %223, align 8, !dbg !2981, !tbaa !182
  %225 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %224) #6, !dbg !2984
  %226 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 0, i32 1, !dbg !2985
  %227 = load i64, i64* %226, align 8, !dbg !2985, !tbaa !2883
  %228 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 1, i32 1, !dbg !2985
  %229 = load i64, i64* %228, align 8, !dbg !2985, !tbaa !2883
  %230 = add i64 %229, %227, !dbg !2985
  %231 = shl i64 %230, 3, !dbg !2986
  %232 = add i64 %231, 112, !dbg !2987
  %233 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %225) #6, !dbg !2988
  %234 = icmp ne %struct.dictEntry* %233, null, !dbg !2989
  %235 = icmp ne i64 %1, 0, !dbg !2990
  %236 = and i1 %235, %234, !dbg !2991
  br i1 %236, label %238, label %237, !dbg !2991

; <label>:237:                                    ; preds = %221
  tail call void @dictReleaseIterator(%struct.dictIterator* %225) #6, !dbg !2992
  br label %431, !dbg !2993

; <label>:238:                                    ; preds = %221, %238
  %239 = phi %struct.dictEntry* [ %252, %238 ], [ %233, %221 ]
  %240 = phi i64 [ %250, %238 ], [ 0, %221 ]
  %241 = phi i64 [ %251, %238 ], [ 0, %221 ]
  %242 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 0, !dbg !2994
  %243 = load i8*, i8** %242, align 8, !dbg !2994, !tbaa !2896
  %244 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 1, i32 0, !dbg !2996
  %245 = load i8*, i8** %244, align 8, !dbg !2996, !tbaa !291
  %246 = tail call i64 @sdsAllocSize(i8* %243) #6, !dbg !2998
  %247 = tail call i64 @sdsAllocSize(i8* %245) #6, !dbg !2999
  %248 = add i64 %240, 24, !dbg !3000
  %249 = add i64 %248, %246, !dbg !3001
  %250 = add i64 %249, %247, !dbg !3002
  %251 = add nuw i64 %241, 1, !dbg !3003
  %252 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %225) #6, !dbg !2988
  %253 = icmp ne %struct.dictEntry* %252, null, !dbg !2989
  %254 = icmp ult i64 %251, %1, !dbg !2990
  %255 = and i1 %254, %253, !dbg !2991
  br i1 %255, label %238, label %256, !dbg !2991, !llvm.loop !3004

; <label>:256:                                    ; preds = %238
  %257 = uitofp i64 %250 to double, !dbg !2992
  tail call void @dictReleaseIterator(%struct.dictIterator* %225) #6, !dbg !2992
  %258 = uitofp i64 %251 to double, !dbg !3007
  %259 = fdiv double %257, %258, !dbg !3009
  %260 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 0, i32 3, !dbg !3010
  %261 = load i64, i64* %260, align 8, !dbg !3010, !tbaa !2910
  %262 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 1, i32 3, !dbg !3010
  %263 = load i64, i64* %262, align 8, !dbg !3010, !tbaa !2910
  %264 = add i64 %263, %261, !dbg !3010
  %265 = uitofp i64 %264 to double, !dbg !3010
  %266 = fmul double %259, %265, !dbg !3011
  %267 = uitofp i64 %232 to double, !dbg !3012
  %268 = fadd double %266, %267, !dbg !3012
  %269 = fptoui double %268 to i64, !dbg !3012
  br label %431, !dbg !3013

; <label>:270:                                    ; preds = %213
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 872, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !3014
  tail call void @_exit(i32 1) #7, !dbg !3014
  unreachable, !dbg !3014

; <label>:271:                                    ; preds = %2
  %272 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3016
  %273 = bitcast i8** %272 to %struct.stream**, !dbg !3016
  %274 = load %struct.stream*, %struct.stream** %273, align 8, !dbg !3016, !tbaa !182
  %275 = getelementptr inbounds %struct.stream, %struct.stream* %274, i64 0, i32 0, !dbg !3018
  %276 = load %struct.rax*, %struct.rax** %275, align 8, !dbg !3018, !tbaa !3019
  %277 = getelementptr inbounds %struct.rax, %struct.rax* %276, i64 0, i32 1, !dbg !3024
  %278 = load i64, i64* %277, align 8, !dbg !3024, !tbaa !2672
  %279 = shl i64 %278, 4, !dbg !3025
  %280 = getelementptr inbounds %struct.rax, %struct.rax* %276, i64 0, i32 2, !dbg !3027
  %281 = load i64, i64* %280, align 8, !dbg !3027, !tbaa !2677
  %282 = mul i64 %281, 244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3028
  %283 = add i64 %279, 16, !dbg !3029
  %284 = add i64 %283, %282, !dbg !3030
  %285 = bitcast %struct.raxIterator* %3 to i8*, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %285) #8, !dbg !3031
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %276) #6, !dbg !3033
  %286 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3034
  %287 = icmp eq i64 %1, 0, !dbg !3037
  br i1 %287, label %302, label %288, !dbg !3038

; <label>:288:                                    ; preds = %271
  %289 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  br label %290, !dbg !3038

; <label>:290:                                    ; preds = %288, %295
  %291 = phi i64 [ 0, %288 ], [ %300, %295 ]
  %292 = phi i64 [ 0, %288 ], [ %299, %295 ]
  %293 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !3039
  %294 = icmp eq i32 %293, 0, !dbg !3038
  br i1 %294, label %302, label %295, !dbg !3040

; <label>:295:                                    ; preds = %290
  %296 = load i8*, i8** %289, align 8, !dbg !3041, !tbaa !3042
  %297 = call i32 @lpBytes(i8* %296) #6, !dbg !3046
  %298 = zext i32 %297 to i64, !dbg !3046
  %299 = add i64 %292, %298, !dbg !3047
  %300 = add nuw i64 %291, 1, !dbg !3048
  %301 = icmp ult i64 %300, %1, !dbg !3037
  br i1 %301, label %290, label %302, !dbg !3038, !llvm.loop !3049

; <label>:302:                                    ; preds = %295, %290, %271
  %303 = phi i64 [ 0, %271 ], [ %292, %290 ], [ %299, %295 ], !dbg !3051
  %304 = phi i64 [ 0, %271 ], [ %291, %290 ], [ %300, %295 ], !dbg !3051
  %305 = load %struct.rax*, %struct.rax** %275, align 8, !dbg !3052, !tbaa !3019
  %306 = getelementptr inbounds %struct.rax, %struct.rax* %305, i64 0, i32 1, !dbg !3054
  %307 = load i64, i64* %306, align 8, !dbg !3054, !tbaa !2672
  %308 = icmp ugt i64 %307, %304, !dbg !3055
  br i1 %308, label %311, label %309, !dbg !3056

; <label>:309:                                    ; preds = %302
  %310 = add i64 %303, %284, !dbg !3057
  br label %327, !dbg !3059

; <label>:311:                                    ; preds = %302
  %312 = icmp eq i64 %304, 0, !dbg !3060
  br i1 %312, label %315, label %313, !dbg !3063

; <label>:313:                                    ; preds = %311
  %314 = udiv i64 %303, %304, !dbg !3064
  br label %315, !dbg !3065

; <label>:315:                                    ; preds = %311, %313
  %316 = phi i64 [ %314, %313 ], [ %303, %311 ], !dbg !3066
  %317 = add i64 %307, -1, !dbg !3067
  %318 = mul i64 %316, %317, !dbg !3068
  %319 = add i64 %318, %284, !dbg !3069
  %320 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3070
  %321 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !3071
  %322 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3, !dbg !3072
  %323 = load i8*, i8** %322, align 8, !dbg !3072, !tbaa !3042
  %324 = call i32 @lpBytes(i8* %323) #6, !dbg !3073
  %325 = zext i32 %324 to i64, !dbg !3073
  %326 = add i64 %319, %325, !dbg !3074
  br label %327

; <label>:327:                                    ; preds = %315, %309
  %328 = phi i64 [ %310, %309 ], [ %326, %315 ], !dbg !3075
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !3076
  %329 = getelementptr inbounds %struct.stream, %struct.stream* %274, i64 0, i32 3, !dbg !3077
  %330 = load %struct.rax*, %struct.rax** %329, align 8, !dbg !3077, !tbaa !3078
  %331 = icmp eq %struct.rax* %330, null, !dbg !3079
  br i1 %331, label %415, label %332, !dbg !3080

; <label>:332:                                    ; preds = %327
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* nonnull %330) #6, !dbg !3081
  %333 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3082
  %334 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !3083
  %335 = icmp eq i32 %334, 0, !dbg !3084
  br i1 %335, label %413, label %336, !dbg !3084

; <label>:336:                                    ; preds = %332
  %337 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %338 = bitcast i8** %337 to %struct.streamCG**
  %339 = bitcast %struct.raxIterator* %4 to i8*
  %340 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 3
  %341 = bitcast i8** %340 to %struct.streamConsumer**
  br label %342, !dbg !3084

; <label>:342:                                    ; preds = %336, %409
  %343 = phi i64 [ %328, %336 ], [ %410, %409 ]
  %344 = load %struct.streamCG*, %struct.streamCG** %338, align 8, !dbg !3085, !tbaa !3042
  %345 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %344, i64 0, i32 1, !dbg !3087
  %346 = load %struct.rax*, %struct.rax** %345, align 8, !dbg !3087, !tbaa !3088
  %347 = getelementptr inbounds %struct.rax, %struct.rax* %346, i64 0, i32 1, !dbg !3092
  %348 = load i64, i64* %347, align 8, !dbg !3092, !tbaa !2672
  %349 = shl i64 %348, 4, !dbg !3093
  %350 = getelementptr inbounds %struct.rax, %struct.rax* %346, i64 0, i32 2, !dbg !3095
  %351 = load i64, i64* %350, align 8, !dbg !3095, !tbaa !2677
  %352 = mul i64 %351, 244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3096
  %353 = call i64 @raxSize(%struct.rax* %346) #6, !dbg !3097
  %354 = mul i64 %353, 24, !dbg !3098
  %355 = add i64 %343, 32, !dbg !3099
  %356 = add i64 %355, %349, !dbg !3100
  %357 = add i64 %356, %352, !dbg !3101
  %358 = add i64 %357, %354, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %339) #8, !dbg !3103
  %359 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %344, i64 0, i32 2, !dbg !3104
  %360 = load %struct.rax*, %struct.rax** %359, align 8, !dbg !3104, !tbaa !3105
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %360) #6, !dbg !3107
  %361 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #6, !dbg !3108
  %362 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !3109
  %363 = icmp eq i32 %362, 0, !dbg !3110
  br i1 %363, label %409, label %364, !dbg !3110

; <label>:364:                                    ; preds = %342, %393
  %365 = phi i64 [ %406, %393 ], [ %358, %342 ]
  %366 = load %struct.streamConsumer*, %struct.streamConsumer** %341, align 8, !dbg !3111, !tbaa !3042
  %367 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %366, i64 0, i32 1, !dbg !3113
  %368 = load i8*, i8** %367, align 8, !dbg !3113, !tbaa !3114
  %369 = getelementptr inbounds i8, i8* %368, i64 -1, !dbg !3118
  %370 = load i8, i8* %369, align 1, !dbg !3118, !tbaa !291
  %371 = trunc i8 %370 to i3, !dbg !3120
  switch i3 %371, label %393 [
    i3 0, label %372
    i3 1, label %375
    i3 2, label %379
    i3 3, label %384
    i3 -4, label %389
  ], !dbg !3120

; <label>:372:                                    ; preds = %364
  %373 = lshr i8 %370, 3, !dbg !3121
  %374 = zext i8 %373 to i64, !dbg !3121
  br label %393, !dbg !3122

; <label>:375:                                    ; preds = %364
  %376 = getelementptr inbounds i8, i8* %368, i64 -3, !dbg !3123
  %377 = load i8, i8* %376, align 1, !dbg !3124, !tbaa !291
  %378 = zext i8 %377 to i64, !dbg !3123
  br label %393, !dbg !3125

; <label>:379:                                    ; preds = %364
  %380 = getelementptr inbounds i8, i8* %368, i64 -5, !dbg !3126
  %381 = bitcast i8* %380 to i16*, !dbg !3127
  %382 = load i16, i16* %381, align 1, !dbg !3127, !tbaa !509
  %383 = zext i16 %382 to i64, !dbg !3126
  br label %393, !dbg !3128

; <label>:384:                                    ; preds = %364
  %385 = getelementptr inbounds i8, i8* %368, i64 -9, !dbg !3129
  %386 = bitcast i8* %385 to i32*, !dbg !3130
  %387 = load i32, i32* %386, align 1, !dbg !3130, !tbaa !514
  %388 = zext i32 %387 to i64, !dbg !3129
  br label %393, !dbg !3131

; <label>:389:                                    ; preds = %364
  %390 = getelementptr inbounds i8, i8* %368, i64 -17, !dbg !3132
  %391 = bitcast i8* %390 to i64*, !dbg !3133
  %392 = load i64, i64* %391, align 1, !dbg !3133, !tbaa !518
  br label %393, !dbg !3134

; <label>:393:                                    ; preds = %364, %372, %375, %379, %384, %389
  %394 = phi i64 [ %392, %389 ], [ %388, %384 ], [ %383, %379 ], [ %378, %375 ], [ %374, %372 ], [ 0, %364 ], !dbg !3135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  %395 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %366, i64 0, i32 2, !dbg !3137
  %396 = load %struct.rax*, %struct.rax** %395, align 8, !dbg !3137, !tbaa !3138
  %397 = getelementptr inbounds %struct.rax, %struct.rax* %396, i64 0, i32 1, !dbg !3141
  %398 = load i64, i64* %397, align 8, !dbg !3141, !tbaa !2672
  %399 = shl i64 %398, 4, !dbg !3142
  %400 = getelementptr inbounds %struct.rax, %struct.rax* %396, i64 0, i32 2, !dbg !3144
  %401 = load i64, i64* %400, align 8, !dbg !3144, !tbaa !2677
  %402 = mul i64 %401, 244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3145
  %403 = add i64 %365, 24, !dbg !3146
  %404 = add i64 %403, %394, !dbg !3147
  %405 = add i64 %404, %399, !dbg !3148
  %406 = add i64 %405, %402, !dbg !3149
  %407 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !3109
  %408 = icmp eq i32 %407, 0, !dbg !3110
  br i1 %408, label %409, label %364, !dbg !3110, !llvm.loop !3150

; <label>:409:                                    ; preds = %393, %342
  %410 = phi i64 [ %358, %342 ], [ %406, %393 ], !dbg !3152
  call void @raxStop(%struct.raxIterator* nonnull %4) #6, !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %339) #8, !dbg !3154
  %411 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !3083
  %412 = icmp eq i32 %411, 0, !dbg !3084
  br i1 %412, label %413, label %342, !dbg !3084, !llvm.loop !3155

; <label>:413:                                    ; preds = %409, %332
  %414 = phi i64 [ %328, %332 ], [ %410, %409 ], !dbg !3156
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !3157
  br label %415, !dbg !3158

; <label>:415:                                    ; preds = %327, %413
  %416 = phi i64 [ %414, %413 ], [ %328, %327 ], !dbg !3057
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %285) #8, !dbg !3159
  br label %431, !dbg !3160

; <label>:417:                                    ; preds = %2
  %418 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3161
  %419 = bitcast i8** %418 to %struct.moduleValue**, !dbg !3161
  %420 = load %struct.moduleValue*, %struct.moduleValue** %419, align 8, !dbg !3161, !tbaa !182
  %421 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %420, i64 0, i32 0, !dbg !3163
  %422 = load %struct.RedisModuleType*, %struct.RedisModuleType** %421, align 8, !dbg !3163, !tbaa !1293
  %423 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %422, i64 0, i32 5, !dbg !3165
  %424 = load i64 (i8*)*, i64 (i8*)** %423, align 8, !dbg !3165, !tbaa !3167
  %425 = icmp eq i64 (i8*)* %424, null, !dbg !3168
  br i1 %425, label %431, label %426, !dbg !3169

; <label>:426:                                    ; preds = %417
  %427 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %420, i64 0, i32 1, !dbg !3170
  %428 = load i8*, i8** %427, align 8, !dbg !3170, !tbaa !1297
  %429 = tail call i64 %424(i8* %428) #6, !dbg !3172
  br label %431, !dbg !3173

; <label>:430:                                    ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 944, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3174
  tail call void @_exit(i32 1) #7, !dbg !3174
  unreachable, !dbg !3174

; <label>:431:                                    ; preds = %155, %237, %106, %426, %417, %198, %8, %81, %71, %150, %415, %216, %256, %135, %121, %43, %11
  %432 = phi i64 [ %15, %11 ], [ %45, %43 ], [ %80, %71 ], [ %85, %81 ], [ %134, %121 ], [ %145, %135 ], [ %154, %150 ], [ %220, %216 ], [ %269, %256 ], [ %416, %415 ], [ 16, %8 ], [ %211, %198 ], [ %429, %426 ], [ 0, %417 ], [ %101, %106 ], [ %232, %237 ], [ %176, %155 ], !dbg !3176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3177
  ret i64 %432, !dbg !3177
}

; Function Attrs: noredzone
declare dso_local i64 @sdsAllocSize(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_size(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxNext(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lpBytes(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @raxStop(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @raxSize(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeMemoryOverheadData(%struct.redisMemOverhead*) local_unnamed_addr #0 !dbg !3178 {
  %2 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %0, i64 0, i32 23, !dbg !3218
  %3 = bitcast %struct.anon.9** %2 to i8**, !dbg !3218
  %4 = load i8*, i8** %3, align 8, !dbg !3218, !tbaa !3219
  tail call void @zfree(i8* %4) #6, !dbg !3222
  %5 = bitcast %struct.redisMemOverhead* %0 to i8*, !dbg !3223
  tail call void @zfree(i8* %5) #6, !dbg !3224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  ret void, !dbg !3225
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisMemOverhead* @getMemoryOverheadData() local_unnamed_addr #0 !dbg !3226 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = tail call i64 @zmalloc_used_memory() #6, !dbg !3260
  %4 = tail call i8* @zcalloc(i64 184) #6, !dbg !3262
  %5 = bitcast i8* %4 to %struct.redisMemOverhead*, !dbg !3262
  %6 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !3264
  %7 = bitcast i8* %6 to i64*, !dbg !3264
  store i64 %3, i64* %7, align 8, !dbg !3265, !tbaa !3266
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 21), align 8, !dbg !3267, !tbaa !3268
  %9 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !3269
  %10 = bitcast i8* %9 to i64*, !dbg !3269
  store i64 %8, i64* %10, align 8, !dbg !3270, !tbaa !3271
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 83), align 8, !dbg !3272, !tbaa !3273
  %12 = bitcast i8* %4 to i64*, !dbg !3274
  store i64 %11, i64* %12, align 8, !dbg !3275, !tbaa !3276
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 1), align 8, !dbg !3277, !tbaa !3278
  %14 = uitofp i64 %13 to float, !dbg !3279
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 0), align 8, !dbg !3280, !tbaa !3281
  %16 = uitofp i64 %15 to float, !dbg !3282
  %17 = fdiv float %14, %16, !dbg !3283
  %18 = getelementptr inbounds i8, i8* %4, i64 104, !dbg !3284
  %19 = bitcast i8* %18 to float*, !dbg !3284
  store float %17, float* %19, align 8, !dbg !3285, !tbaa !3286
  %20 = sub i64 %13, %15, !dbg !3287
  %21 = getelementptr inbounds i8, i8* %4, i64 112, !dbg !3288
  %22 = bitcast i8* %21 to i64*, !dbg !3288
  store i64 %20, i64* %22, align 8, !dbg !3289, !tbaa !3290
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 3), align 8, !dbg !3291, !tbaa !3292
  %24 = uitofp i64 %23 to float, !dbg !3293
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 2), align 8, !dbg !3294, !tbaa !3295
  %26 = uitofp i64 %25 to float, !dbg !3296
  %27 = fdiv float %24, %26, !dbg !3297
  %28 = getelementptr inbounds i8, i8* %4, i64 120, !dbg !3298
  %29 = bitcast i8* %28 to float*, !dbg !3298
  store float %27, float* %29, align 8, !dbg !3299, !tbaa !3300
  %30 = sub i64 %23, %25, !dbg !3301
  %31 = getelementptr inbounds i8, i8* %4, i64 128, !dbg !3302
  %32 = bitcast i8* %31 to i64*, !dbg !3302
  store i64 %30, i64* %32, align 8, !dbg !3303, !tbaa !3304
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 4), align 8, !dbg !3305, !tbaa !3306
  %34 = uitofp i64 %33 to float, !dbg !3307
  %35 = fdiv float %34, %24, !dbg !3308
  %36 = getelementptr inbounds i8, i8* %4, i64 136, !dbg !3309
  %37 = bitcast i8* %36 to float*, !dbg !3309
  store float %35, float* %37, align 8, !dbg !3310, !tbaa !3311
  %38 = sub i64 %33, %23, !dbg !3312
  %39 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !3313
  %40 = bitcast i8* %39 to i64*, !dbg !3313
  store i64 %38, i64* %40, align 8, !dbg !3314, !tbaa !3315
  %41 = fdiv float %14, %34, !dbg !3316
  %42 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !3317
  %43 = bitcast i8* %42 to float*, !dbg !3317
  store float %41, float* %43, align 8, !dbg !3318, !tbaa !3319
  %44 = sub i64 %13, %33, !dbg !3320
  %45 = getelementptr inbounds i8, i8* %4, i64 160, !dbg !3321
  %46 = bitcast i8* %45 to i64*, !dbg !3321
  store i64 %44, i64* %46, align 8, !dbg !3322, !tbaa !3323
  %47 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3324, !tbaa !3326
  %48 = icmp eq i8* %47, null, !dbg !3327
  br i1 %48, label %51, label %49, !dbg !3328

; <label>:49:                                     ; preds = %0
  %50 = tail call i64 @zmalloc_size(i8* nonnull %47) #6, !dbg !3329
  br label %51, !dbg !3330

; <label>:51:                                     ; preds = %0, %49
  %52 = phi i64 [ %50, %49 ], [ 0, %0 ], !dbg !3331
  %53 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !3332
  %54 = bitcast i8* %53 to i64*, !dbg !3332
  store i64 %52, i64* %54, align 8, !dbg !3333, !tbaa !3334
  %55 = add i64 %52, %8, !dbg !3335
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3336, !tbaa !3337
  %57 = getelementptr inbounds %struct.list, %struct.list* %56, i64 0, i32 5, !dbg !3336
  %58 = load i64, i64* %57, align 8, !dbg !3336, !tbaa !3338
  %59 = icmp eq i64 %58, 0, !dbg !3336
  br i1 %59, label %81, label %60, !dbg !3340

; <label>:60:                                     ; preds = %51
  %61 = bitcast %struct.listIter* %1 to i8*, !dbg !3341
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #8, !dbg !3341
  call void @listRewind(%struct.list* %56, %struct.listIter* nonnull %1) #6, !dbg !3343
  %62 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !3344
  %63 = icmp eq %struct.listNode* %62, null, !dbg !3346
  br i1 %63, label %79, label %64, !dbg !3346

; <label>:64:                                     ; preds = %60, %64
  %65 = phi %struct.listNode* [ %77, %64 ], [ %62, %60 ]
  %66 = phi i64 [ %76, %64 ], [ 0, %60 ]
  %67 = getelementptr inbounds %struct.listNode, %struct.listNode* %65, i64 0, i32 2, !dbg !3347
  %68 = bitcast i8** %67 to %struct.client**, !dbg !3347
  %69 = load %struct.client*, %struct.client** %68, align 8, !dbg !3347, !tbaa !3348
  %70 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %69) #6, !dbg !3351
  %71 = getelementptr inbounds %struct.client, %struct.client* %69, i64 0, i32 4, !dbg !3352
  %72 = load i8*, i8** %71, align 8, !dbg !3352, !tbaa !3353
  %73 = call i64 @sdsAllocSize(i8* %72) #6, !dbg !3357
  %74 = add i64 %66, 16920, !dbg !3358
  %75 = add i64 %74, %70, !dbg !3359
  %76 = add i64 %75, %73, !dbg !3360
  %77 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !3344
  %78 = icmp eq %struct.listNode* %77, null, !dbg !3346
  br i1 %78, label %79, label %64, !dbg !3346, !llvm.loop !3361

; <label>:79:                                     ; preds = %64, %60
  %80 = phi i64 [ 0, %60 ], [ %76, %64 ], !dbg !3363
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #8, !dbg !3364
  br label %81, !dbg !3365

; <label>:81:                                     ; preds = %51, %79
  %82 = phi i64 [ %80, %79 ], [ 0, %51 ], !dbg !3366
  %83 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !3367
  %84 = bitcast i8* %83 to i64*, !dbg !3367
  store i64 %82, i64* %84, align 8, !dbg !3368, !tbaa !3369
  %85 = add i64 %55, %82, !dbg !3370
  %86 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !3371, !tbaa !3372
  %87 = getelementptr inbounds %struct.list, %struct.list* %86, i64 0, i32 5, !dbg !3371
  %88 = load i64, i64* %87, align 8, !dbg !3371, !tbaa !3338
  %89 = icmp eq i64 %88, 0, !dbg !3371
  br i1 %89, label %118, label %90, !dbg !3373

; <label>:90:                                     ; preds = %81
  %91 = bitcast %struct.listIter* %2 to i8*, !dbg !3374
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #8, !dbg !3374
  call void @listRewind(%struct.list* %86, %struct.listIter* nonnull %2) #6, !dbg !3376
  %92 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !3377
  %93 = icmp eq %struct.listNode* %92, null, !dbg !3379
  br i1 %93, label %116, label %94, !dbg !3379

; <label>:94:                                     ; preds = %90, %112
  %95 = phi %struct.listNode* [ %114, %112 ], [ %92, %90 ]
  %96 = phi i64 [ %113, %112 ], [ 0, %90 ]
  %97 = getelementptr inbounds %struct.listNode, %struct.listNode* %95, i64 0, i32 2, !dbg !3380
  %98 = bitcast i8** %97 to %struct.client**, !dbg !3380
  %99 = load %struct.client*, %struct.client** %98, align 8, !dbg !3380, !tbaa !3348
  %100 = getelementptr inbounds %struct.client, %struct.client* %99, i64 0, i32 21, !dbg !3382
  %101 = load i32, i32* %100, align 8, !dbg !3382, !tbaa !3384
  %102 = and i32 %101, 5, !dbg !3385
  %103 = icmp eq i32 %102, 1, !dbg !3385
  br i1 %103, label %112, label %104, !dbg !3385, !llvm.loop !3386

; <label>:104:                                    ; preds = %94
  %105 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %99) #6, !dbg !3388
  %106 = getelementptr inbounds %struct.client, %struct.client* %99, i64 0, i32 4, !dbg !3389
  %107 = load i8*, i8** %106, align 8, !dbg !3389, !tbaa !3353
  %108 = call i64 @sdsAllocSize(i8* %107) #6, !dbg !3390
  %109 = add i64 %96, 16920, !dbg !3391
  %110 = add i64 %109, %105, !dbg !3392
  %111 = add i64 %110, %108, !dbg !3393
  br label %112, !dbg !3387

; <label>:112:                                    ; preds = %94, %104
  %113 = phi i64 [ %111, %104 ], [ %96, %94 ], !dbg !3331
  %114 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !3377
  %115 = icmp eq %struct.listNode* %114, null, !dbg !3379
  br i1 %115, label %116, label %94, !dbg !3379

; <label>:116:                                    ; preds = %112, %90
  %117 = phi i64 [ 0, %90 ], [ %113, %112 ], !dbg !3394
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #8, !dbg !3395
  br label %118, !dbg !3396

; <label>:118:                                    ; preds = %81, %116
  %119 = phi i64 [ %117, %116 ], [ 0, %81 ], !dbg !3397
  %120 = getelementptr inbounds i8, i8* %4, i64 40, !dbg !3398
  %121 = bitcast i8* %120 to i64*, !dbg !3398
  store i64 %119, i64* %121, align 8, !dbg !3399, !tbaa !3400
  %122 = add i64 %85, %119, !dbg !3401
  %123 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3402, !tbaa !3404
  %124 = icmp eq i32 %123, 0, !dbg !3405
  br i1 %124, label %155, label %125, !dbg !3406

; <label>:125:                                    ; preds = %118
  %126 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !3407, !tbaa !3409
  %127 = getelementptr inbounds i8, i8* %126, i64 -1, !dbg !3416
  %128 = load i8, i8* %127, align 1, !dbg !3416, !tbaa !291
  %129 = trunc i8 %128 to i3, !dbg !3418
  switch i3 %129, label %151 [
    i3 0, label %130
    i3 1, label %133
    i3 2, label %137
    i3 3, label %142
    i3 -4, label %147
  ], !dbg !3418

; <label>:130:                                    ; preds = %125
  %131 = lshr i8 %128, 3, !dbg !3419
  %132 = zext i8 %131 to i64, !dbg !3419
  br label %151, !dbg !3421

; <label>:133:                                    ; preds = %125
  %134 = getelementptr inbounds i8, i8* %126, i64 -2, !dbg !3422
  %135 = load i8, i8* %134, align 1, !dbg !3422, !tbaa !291
  %136 = zext i8 %135 to i64, !dbg !3423
  br label %151, !dbg !3424

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds i8, i8* %126, i64 -3, !dbg !3425
  %139 = bitcast i8* %138 to i16*, !dbg !3425
  %140 = load i16, i16* %139, align 1, !dbg !3425, !tbaa !509
  %141 = zext i16 %140 to i64, !dbg !3426
  br label %151, !dbg !3427

; <label>:142:                                    ; preds = %125
  %143 = getelementptr inbounds i8, i8* %126, i64 -5, !dbg !3428
  %144 = bitcast i8* %143 to i32*, !dbg !3428
  %145 = load i32, i32* %144, align 1, !dbg !3428, !tbaa !514
  %146 = zext i32 %145 to i64, !dbg !3429
  br label %151, !dbg !3430

; <label>:147:                                    ; preds = %125
  %148 = getelementptr inbounds i8, i8* %126, i64 -9, !dbg !3431
  %149 = bitcast i8* %148 to i64*, !dbg !3431
  %150 = load i64, i64* %149, align 1, !dbg !3431, !tbaa !518
  br label %151, !dbg !3432

; <label>:151:                                    ; preds = %125, %130, %133, %137, %142, %147
  %152 = phi i64 [ %150, %147 ], [ %146, %142 ], [ %141, %137 ], [ %136, %133 ], [ %132, %130 ], [ 0, %125 ], !dbg !3433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3434
  %153 = call i64 @aofRewriteBufferSize() #6, !dbg !3435
  %154 = add i64 %153, %152, !dbg !3436
  br label %155, !dbg !3437

; <label>:155:                                    ; preds = %118, %151
  %156 = phi i64 [ %154, %151 ], [ 0, %118 ], !dbg !3331
  %157 = getelementptr inbounds i8, i8* %4, i64 48, !dbg !3438
  %158 = bitcast i8* %157 to i64*, !dbg !3438
  store i64 %156, i64* %158, align 8, !dbg !3439, !tbaa !3440
  %159 = add i64 %122, %156, !dbg !3441
  %160 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !3442, !tbaa !3443
  %161 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3444, !tbaa !3445
  %162 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 0, i32 3, !dbg !3444
  %163 = load i64, i64* %162, align 8, !dbg !3444, !tbaa !2910
  %164 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 1, i32 3, !dbg !3444
  %165 = load i64, i64* %164, align 8, !dbg !3444, !tbaa !2910
  %166 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 0, i32 1, !dbg !3446
  %167 = load i64, i64* %166, align 8, !dbg !3446, !tbaa !2883
  %168 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 1, i32 1, !dbg !3446
  %169 = load i64, i64* %168, align 8, !dbg !3446, !tbaa !2883
  %170 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !3447, !tbaa !3448
  %171 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 0, i32 3, !dbg !3447
  %172 = load i64, i64* %171, align 8, !dbg !3447, !tbaa !2910
  %173 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 1, i32 3, !dbg !3447
  %174 = load i64, i64* %173, align 8, !dbg !3447, !tbaa !2910
  %175 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 0, i32 1, !dbg !3449
  %176 = load i64, i64* %175, align 8, !dbg !3449, !tbaa !2883
  %177 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 1, i32 1, !dbg !3449
  %178 = load i64, i64* %177, align 8, !dbg !3449, !tbaa !2883
  %179 = add i64 %169, %167, !dbg !3449
  %180 = add i64 %179, %176, !dbg !3446
  %181 = add i64 %180, %178
  %182 = shl i64 %181, 3
  %183 = add i64 %165, %163, !dbg !3447
  %184 = add i64 %183, %172, !dbg !3444
  %185 = add i64 %184, %174
  %186 = mul i64 %185, 24
  %187 = add i64 %186, %160, !dbg !3450
  %188 = add i64 %187, %182, !dbg !3451
  %189 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !3452, !tbaa !3454
  %190 = getelementptr inbounds %struct.list, %struct.list* %189, i64 0, i32 5, !dbg !3452
  %191 = load i64, i64* %190, align 8, !dbg !3452, !tbaa !3338
  %192 = icmp eq i64 %191, 0, !dbg !3455
  br i1 %192, label %202, label %193, !dbg !3456

; <label>:193:                                    ; preds = %155
  %194 = getelementptr inbounds %struct.list, %struct.list* %189, i64 0, i32 0, !dbg !3457
  %195 = load %struct.listNode*, %struct.listNode** %194, align 8, !dbg !3457, !tbaa !3459
  %196 = getelementptr inbounds %struct.listNode, %struct.listNode* %195, i64 0, i32 2, !dbg !3457
  %197 = load i8*, i8** %196, align 8, !dbg !3457, !tbaa !3348
  %198 = call i64 @sdsZmallocSize(i8* %197) #6, !dbg !3460
  %199 = add i64 %198, 24, !dbg !3461
  %200 = mul i64 %199, %191, !dbg !3462
  %201 = add i64 %200, %188, !dbg !3463
  br label %202, !dbg !3464

; <label>:202:                                    ; preds = %155, %193
  %203 = phi i64 [ %201, %193 ], [ %188, %155 ], !dbg !3331
  %204 = getelementptr inbounds i8, i8* %4, i64 56, !dbg !3465
  %205 = bitcast i8* %204 to i64*, !dbg !3465
  store i64 %203, i64* %205, align 8, !dbg !3466, !tbaa !3467
  %206 = add i64 %159, %203, !dbg !3468
  %207 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3470, !tbaa !3471
  %208 = icmp sgt i32 %207, 0, !dbg !3472
  %209 = getelementptr inbounds i8, i8* %4, i64 80
  %210 = bitcast i8* %209 to i64*
  br i1 %208, label %211, label %281, !dbg !3473

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds i8, i8* %4, i64 176
  %213 = bitcast i8* %212 to i8**
  %214 = getelementptr inbounds i8, i8* %4, i64 168
  %215 = bitcast i8* %214 to i64*
  br label %216, !dbg !3473

; <label>:216:                                    ; preds = %211, %275
  %217 = phi i32 [ %207, %211 ], [ %276, %275 ]
  %218 = phi i64 [ 0, %211 ], [ %278, %275 ]
  %219 = phi i64 [ %206, %211 ], [ %277, %275 ]
  %220 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3474, !tbaa !3475
  %221 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %220, i64 %218, i32 0, !dbg !3476
  %222 = load %struct.dict*, %struct.dict** %221, align 8, !dbg !3476, !tbaa !3477
  %223 = getelementptr inbounds %struct.dict, %struct.dict* %222, i64 0, i32 2, i64 0, i32 3, !dbg !3476
  %224 = load i64, i64* %223, align 8, !dbg !3476, !tbaa !2910
  %225 = getelementptr inbounds %struct.dict, %struct.dict* %222, i64 0, i32 2, i64 1, i32 3, !dbg !3476
  %226 = load i64, i64* %225, align 8, !dbg !3476, !tbaa !2910
  %227 = add i64 %226, %224, !dbg !3476
  %228 = icmp eq i64 %227, 0, !dbg !3480
  br i1 %228, label %275, label %229, !dbg !3482

; <label>:229:                                    ; preds = %216
  %230 = load i64, i64* %210, align 8, !dbg !3483, !tbaa !3484
  %231 = add i64 %230, %227, !dbg !3483
  store i64 %231, i64* %210, align 8, !dbg !3483, !tbaa !3484
  %232 = load i8*, i8** %213, align 8, !dbg !3485, !tbaa !3219
  %233 = load i64, i64* %215, align 8, !dbg !3486, !tbaa !3487
  %234 = mul i64 %233, 24, !dbg !3488
  %235 = add i64 %234, 24, !dbg !3488
  %236 = call i8* @zrealloc(i8* %232, i64 %235) #6, !dbg !3489
  %237 = bitcast i8* %236 to %struct.anon.9*, !dbg !3489
  store i8* %236, i8** %213, align 8, !dbg !3490, !tbaa !3219
  %238 = load i64, i64* %215, align 8, !dbg !3491, !tbaa !3487
  %239 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 0, !dbg !3492
  store i64 %218, i64* %239, align 8, !dbg !3493, !tbaa !3494
  %240 = load %struct.dict*, %struct.dict** %221, align 8, !dbg !3496, !tbaa !3477
  %241 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 0, i32 3, !dbg !3496
  %242 = load i64, i64* %241, align 8, !dbg !3496, !tbaa !2910
  %243 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 1, i32 3, !dbg !3496
  %244 = load i64, i64* %243, align 8, !dbg !3496, !tbaa !2910
  %245 = add i64 %244, %242, !dbg !3496
  %246 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 0, i32 1, !dbg !3497
  %247 = load i64, i64* %246, align 8, !dbg !3497, !tbaa !2883
  %248 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 1, i32 1, !dbg !3497
  %249 = load i64, i64* %248, align 8, !dbg !3497, !tbaa !2883
  %250 = add i64 %249, %247, !dbg !3497
  %251 = shl i64 %250, 3, !dbg !3498
  %252 = mul i64 %245, 40, !dbg !3499
  %253 = add i64 %252, %251, !dbg !3500
  %254 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 1, !dbg !3501
  store i64 %253, i64* %254, align 8, !dbg !3502, !tbaa !3503
  %255 = add i64 %253, %219, !dbg !3504
  %256 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %220, i64 %218, i32 1, !dbg !3505
  %257 = load %struct.dict*, %struct.dict** %256, align 8, !dbg !3505, !tbaa !3506
  %258 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 0, i32 3, !dbg !3505
  %259 = load i64, i64* %258, align 8, !dbg !3505, !tbaa !2910
  %260 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 1, i32 3, !dbg !3505
  %261 = load i64, i64* %260, align 8, !dbg !3505, !tbaa !2910
  %262 = add i64 %261, %259, !dbg !3505
  %263 = mul i64 %262, 24, !dbg !3507
  %264 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 0, i32 1, !dbg !3508
  %265 = load i64, i64* %264, align 8, !dbg !3508, !tbaa !2883
  %266 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 1, i32 1, !dbg !3508
  %267 = load i64, i64* %266, align 8, !dbg !3508, !tbaa !2883
  %268 = add i64 %267, %265, !dbg !3508
  %269 = shl i64 %268, 3, !dbg !3509
  %270 = add i64 %269, %263, !dbg !3510
  %271 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 2, !dbg !3511
  store i64 %270, i64* %271, align 8, !dbg !3512, !tbaa !3513
  %272 = add i64 %255, %270, !dbg !3514
  %273 = add i64 %238, 1, !dbg !3515
  store i64 %273, i64* %215, align 8, !dbg !3515, !tbaa !3487
  %274 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3470, !tbaa !3471
  br label %275, !dbg !3516

; <label>:275:                                    ; preds = %216, %229
  %276 = phi i32 [ %274, %229 ], [ %217, %216 ], !dbg !3470
  %277 = phi i64 [ %272, %229 ], [ %219, %216 ], !dbg !3517
  %278 = add nuw nsw i64 %218, 1, !dbg !3518
  %279 = sext i32 %276 to i64, !dbg !3472
  %280 = icmp slt i64 %278, %279, !dbg !3472
  br i1 %280, label %216, label %281, !dbg !3473, !llvm.loop !3519

; <label>:281:                                    ; preds = %275, %202
  %282 = phi i64 [ %206, %202 ], [ %277, %275 ], !dbg !3468
  %283 = getelementptr inbounds i8, i8* %4, i64 64, !dbg !3521
  %284 = bitcast i8* %283 to i64*, !dbg !3521
  store i64 %282, i64* %284, align 8, !dbg !3522, !tbaa !3523
  %285 = sub i64 %3, %282, !dbg !3524
  %286 = getelementptr inbounds i8, i8* %4, i64 72, !dbg !3525
  %287 = bitcast i8* %286 to i64*, !dbg !3525
  store i64 %285, i64* %287, align 8, !dbg !3526, !tbaa !3527
  %288 = uitofp i64 %3 to float, !dbg !3528
  %289 = fmul float %288, 1.000000e+02, !dbg !3529
  %290 = load i64, i64* %12, align 8, !dbg !3530, !tbaa !3276
  %291 = uitofp i64 %290 to float, !dbg !3531
  %292 = fdiv float %289, %291, !dbg !3532
  %293 = getelementptr inbounds i8, i8* %4, i64 100, !dbg !3533
  %294 = bitcast i8* %293 to float*, !dbg !3533
  store float %292, float* %294, align 4, !dbg !3534, !tbaa !3535
  %295 = load i64, i64* %10, align 8, !dbg !3537, !tbaa !3271
  %296 = icmp ugt i64 %3, %295, !dbg !3539
  %297 = sub i64 %3, %295, !dbg !3540
  %298 = select i1 %296, i64 %297, i64 1, !dbg !3541
  %299 = uitofp i64 %285 to float, !dbg !3542
  %300 = fmul float %299, 1.000000e+02, !dbg !3543
  %301 = uitofp i64 %298 to float, !dbg !3544
  %302 = fdiv float %300, %301, !dbg !3545
  %303 = getelementptr inbounds i8, i8* %4, i64 96, !dbg !3546
  %304 = bitcast i8* %303 to float*, !dbg !3546
  store float %302, float* %304, align 8, !dbg !3547, !tbaa !3548
  %305 = load i64, i64* %210, align 8, !dbg !3549, !tbaa !3484
  %306 = icmp eq i64 %305, 0, !dbg !3550
  br i1 %306, label %309, label %307, !dbg !3550

; <label>:307:                                    ; preds = %281
  %308 = udiv i64 %298, %305, !dbg !3551
  br label %309, !dbg !3550

; <label>:309:                                    ; preds = %281, %307
  %310 = phi i64 [ %308, %307 ], [ 0, %281 ], !dbg !3550
  %311 = getelementptr inbounds i8, i8* %4, i64 88, !dbg !3552
  %312 = bitcast i8* %311 to i64*, !dbg !3552
  store i64 %310, i64* %312, align 8, !dbg !3553, !tbaa !3554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3555
  ret %struct.redisMemOverhead* %5, !dbg !3555
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zcalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @aofRewriteBufferSize() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @sdsZmallocSize(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @inputCatSds(i8* nocapture, i8*) local_unnamed_addr #0 !dbg !3556 {
  %3 = bitcast i8* %0 to i8**, !dbg !3565
  %4 = load i8*, i8** %3, align 8, !dbg !3567, !tbaa !298
  %5 = tail call i8* @sdscat(i8* %4, i8* %1) #6, !dbg !3568
  store i8* %5, i8** %3, align 8, !dbg !3569, !tbaa !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3570
  ret void, !dbg !3570
}

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getMemoryDoctorReport() local_unnamed_addr #0 !dbg !3571 {
  %1 = tail call %struct.redisMemOverhead* @getMemoryOverheadData() #9, !dbg !3601
  %2 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 1, !dbg !3603
  %3 = load i64, i64* %2, align 8, !dbg !3603, !tbaa !3266
  %4 = icmp ult i64 %3, 5242880, !dbg !3604
  br i1 %4, label %101, label %5, !dbg !3605

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 0, !dbg !3606
  %7 = load i64, i64* %6, align 8, !dbg !3606, !tbaa !3276
  %8 = uitofp i64 %7 to float, !dbg !3608
  %9 = uitofp i64 %3 to float, !dbg !3609
  %10 = fdiv float %8, %9, !dbg !3610
  %11 = fcmp ogt float %10, 1.500000e+00, !dbg !3611
  %12 = zext i1 %11 to i32, !dbg !3612
  %13 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 14, !dbg !3613
  %14 = load float, float* %13, align 8, !dbg !3613, !tbaa !3286
  %15 = fpext float %14 to double, !dbg !3615
  %16 = fcmp ogt double %15, 1.400000e+00, !dbg !3616
  br i1 %16, label %17, label %24, !dbg !3617

; <label>:17:                                     ; preds = %5
  %18 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 15, !dbg !3618
  %19 = load i64, i64* %18, align 8, !dbg !3618, !tbaa !3290
  %20 = icmp sgt i64 %19, 10485760, !dbg !3619
  %21 = select i1 %11, i32 2, i32 1, !dbg !3620
  %22 = select i1 %20, i32 %21, i32 %12, !dbg !3622
  %23 = zext i1 %20 to i32, !dbg !3622
  br label %24, !dbg !3622

; <label>:24:                                     ; preds = %17, %5
  %25 = phi i32 [ %12, %5 ], [ %22, %17 ], !dbg !3623
  %26 = phi i32 [ 0, %5 ], [ %23, %17 ], !dbg !3625
  %27 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 16, !dbg !3626
  %28 = load float, float* %27, align 8, !dbg !3626, !tbaa !3300
  %29 = fpext float %28 to double, !dbg !3628
  %30 = fcmp ogt double %29, 1.100000e+00, !dbg !3629
  br i1 %30, label %31, label %37, !dbg !3630

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 17, !dbg !3631
  %33 = load i64, i64* %32, align 8, !dbg !3631, !tbaa !3304
  %34 = icmp sgt i64 %33, 10485760, !dbg !3632
  %35 = zext i1 %34 to i32, !dbg !3633
  %36 = add nsw i32 %25, %35, !dbg !3633
  br label %37, !dbg !3633

; <label>:37:                                     ; preds = %31, %24
  %38 = phi i32 [ 0, %24 ], [ %35, %31 ], !dbg !3625
  %39 = phi i32 [ %25, %24 ], [ %36, %31 ], !dbg !3634
  %40 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 18, !dbg !3635
  %41 = load float, float* %40, align 8, !dbg !3635, !tbaa !3311
  %42 = fpext float %41 to double, !dbg !3637
  %43 = fcmp ogt double %42, 1.100000e+00, !dbg !3638
  br i1 %43, label %44, label %50, !dbg !3639

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 19, !dbg !3640
  %46 = load i64, i64* %45, align 8, !dbg !3640, !tbaa !3315
  %47 = icmp sgt i64 %46, 10485760, !dbg !3641
  %48 = zext i1 %47 to i32, !dbg !3642
  %49 = add nsw i32 %39, %48, !dbg !3642
  br label %50, !dbg !3642

; <label>:50:                                     ; preds = %44, %37
  %51 = phi i32 [ 0, %37 ], [ %48, %44 ], !dbg !3625
  %52 = phi i32 [ %39, %37 ], [ %49, %44 ], !dbg !3643
  %53 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 20, !dbg !3645
  %54 = load float, float* %53, align 8, !dbg !3645, !tbaa !3319
  %55 = fpext float %54 to double, !dbg !3647
  %56 = fcmp ogt double %55, 1.100000e+00, !dbg !3648
  br i1 %56, label %57, label %63, !dbg !3649

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 21, !dbg !3650
  %59 = load i64, i64* %58, align 8, !dbg !3650, !tbaa !3323
  %60 = icmp ugt i64 %59, 10485760, !dbg !3651
  %61 = zext i1 %60 to i32, !dbg !3652
  %62 = add nsw i32 %52, %61, !dbg !3652
  br label %63, !dbg !3652

; <label>:63:                                     ; preds = %57, %50
  %64 = phi i32 [ 0, %50 ], [ %61, %57 ], !dbg !3625
  %65 = phi i32 [ %52, %50 ], [ %62, %57 ], !dbg !3653
  %66 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3655, !tbaa !3337
  %67 = getelementptr inbounds %struct.list, %struct.list* %66, i64 0, i32 5, !dbg !3655
  %68 = load i64, i64* %67, align 8, !dbg !3655, !tbaa !3338
  %69 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !3657, !tbaa !3372
  %70 = getelementptr inbounds %struct.list, %struct.list* %69, i64 0, i32 5, !dbg !3657
  %71 = load i64, i64* %70, align 8, !dbg !3657, !tbaa !3338
  %72 = sub i64 %71, %68, !dbg !3658
  %73 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 5, !dbg !3660
  %74 = load i64, i64* %73, align 8, !dbg !3660, !tbaa !3400
  %75 = udiv i64 %74, %72, !dbg !3662
  %76 = icmp ugt i64 %75, 204800, !dbg !3663
  %77 = zext i1 %76 to i32, !dbg !3664
  %78 = add nsw i32 %65, %77, !dbg !3664
  %79 = icmp sgt i64 %68, 0, !dbg !3665
  br i1 %79, label %80, label %87, !dbg !3667

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 4, !dbg !3668
  %82 = load i64, i64* %81, align 8, !dbg !3668, !tbaa !3369
  %83 = udiv i64 %82, %68, !dbg !3669
  %84 = icmp ugt i64 %83, 10485760, !dbg !3670
  %85 = zext i1 %84 to i32, !dbg !3671
  %86 = add nsw i32 %78, %85, !dbg !3671
  br label %87, !dbg !3671

; <label>:87:                                     ; preds = %80, %63
  %88 = phi i32 [ 0, %63 ], [ %85, %80 ], !dbg !3625
  %89 = phi i32 [ %78, %63 ], [ %86, %80 ], !dbg !3672
  %90 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3674, !tbaa !3445
  %91 = getelementptr inbounds %struct.dict, %struct.dict* %90, i64 0, i32 2, i64 0, i32 3, !dbg !3674
  %92 = load i64, i64* %91, align 8, !dbg !3674, !tbaa !2910
  %93 = getelementptr inbounds %struct.dict, %struct.dict* %90, i64 0, i32 2, i64 1, i32 3, !dbg !3674
  %94 = load i64, i64* %93, align 8, !dbg !3674, !tbaa !2910
  %95 = add i64 %94, %92, !dbg !3674
  %96 = icmp ugt i64 %95, 1000, !dbg !3676
  br i1 %96, label %103, label %97

; <label>:97:                                     ; preds = %87
  %98 = icmp eq i32 %89, 0, !dbg !3677
  br i1 %98, label %99, label %103, !dbg !3679

; <label>:99:                                     ; preds = %97
  %100 = tail call i8* @sdsnew(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3680
  br label %145, !dbg !3683

; <label>:101:                                    ; preds = %0
  %102 = tail call i8* @sdsnew(i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !3684
  br label %145, !dbg !3687

; <label>:103:                                    ; preds = %97, %87
  %104 = phi i32 [ 1, %87 ], [ 0, %97 ]
  %105 = tail call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3688
  br i1 %11, label %106, label %108, !dbg !3690

; <label>:106:                                    ; preds = %103
  %107 = tail call i8* @sdscat(i8* %105, i8* getelementptr inbounds ([641 x i8], [641 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !3691
  br label %108, !dbg !3694

; <label>:108:                                    ; preds = %103, %106
  %109 = phi i8* [ %107, %106 ], [ %105, %103 ], !dbg !3695
  %110 = icmp eq i32 %26, 0, !dbg !3696
  br i1 %110, label %113, label %111, !dbg !3698

; <label>:111:                                    ; preds = %108
  %112 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %109, i8* getelementptr inbounds ([627 x i8], [627 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !3699
  br label %113, !dbg !3701

; <label>:113:                                    ; preds = %108, %111
  %114 = phi i8* [ %112, %111 ], [ %109, %108 ], !dbg !3702
  %115 = icmp eq i32 %38, 0, !dbg !3703
  br i1 %115, label %118, label %116, !dbg !3705

; <label>:116:                                    ; preds = %113
  %117 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %114, i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3706
  br label %118, !dbg !3708

; <label>:118:                                    ; preds = %113, %116
  %119 = phi i8* [ %117, %116 ], [ %114, %113 ], !dbg !3709
  %120 = icmp eq i32 %51, 0, !dbg !3710
  br i1 %120, label %123, label %121, !dbg !3712

; <label>:121:                                    ; preds = %118
  %122 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %119, i8* getelementptr inbounds ([379 x i8], [379 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !3713
  br label %123, !dbg !3715

; <label>:123:                                    ; preds = %118, %121
  %124 = phi i8* [ %122, %121 ], [ %119, %118 ], !dbg !3716
  %125 = icmp eq i32 %64, 0, !dbg !3717
  br i1 %125, label %128, label %126, !dbg !3719

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %124, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !3720
  br label %128, !dbg !3722

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8* [ %127, %126 ], [ %124, %123 ], !dbg !3723
  %130 = icmp eq i32 %88, 0, !dbg !3724
  br i1 %130, label %133, label %131, !dbg !3726

; <label>:131:                                    ; preds = %128
  %132 = tail call i8* @sdscat(i8* %129, i8* getelementptr inbounds ([545 x i8], [545 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !3727
  br label %133, !dbg !3729

; <label>:133:                                    ; preds = %128, %131
  %134 = phi i8* [ %132, %131 ], [ %129, %128 ], !dbg !3730
  br i1 %76, label %135, label %137, !dbg !3731

; <label>:135:                                    ; preds = %133
  %136 = tail call i8* @sdscat(i8* %134, i8* getelementptr inbounds ([583 x i8], [583 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !3732
  br label %137, !dbg !3735

; <label>:137:                                    ; preds = %133, %135
  %138 = phi i8* [ %136, %135 ], [ %134, %133 ], !dbg !3736
  %139 = icmp eq i32 %104, 0, !dbg !3737
  br i1 %139, label %142, label %140, !dbg !3739

; <label>:140:                                    ; preds = %137
  %141 = tail call i8* @sdscat(i8* %138, i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3740
  br label %142, !dbg !3742

; <label>:142:                                    ; preds = %137, %140
  %143 = phi i8* [ %141, %140 ], [ %138, %137 ], !dbg !3743
  %144 = tail call i8* @sdscat(i8* %143, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !3744
  br label %145

; <label>:145:                                    ; preds = %101, %142, %99
  %146 = phi i8* [ %100, %99 ], [ %102, %101 ], [ %144, %142 ], !dbg !3695
  %147 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 23, !dbg !3747
  %148 = bitcast %struct.anon.9** %147 to i8**, !dbg !3747
  %149 = load i8*, i8** %148, align 8, !dbg !3747, !tbaa !3219
  tail call void @zfree(i8* %149) #6, !dbg !3748
  %150 = bitcast %struct.redisMemOverhead* %1 to i8*, !dbg !3749
  tail call void @zfree(i8* %150) #6, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3752
  ret i8* %146, !dbg !3752
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @objectSetLRUOrLFU(%struct.redisObject* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !3753 {
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !3769, !tbaa !193
  %6 = and i32 %5, 2, !dbg !3770
  %7 = icmp eq i32 %6, 0, !dbg !3770
  br i1 %7, label %23, label %8, !dbg !3771

; <label>:8:                                      ; preds = %4
  %9 = icmp sgt i64 %1, -1, !dbg !3772
  br i1 %9, label %10, label %39, !dbg !3775

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i64 %1, 256, !dbg !3776
  br i1 %11, label %13, label %12, !dbg !3776

; <label>:12:                                     ; preds = %10
  tail call void @_serverAssert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 1216) #6, !dbg !3776
  tail call void @_exit(i32 1) #7, !dbg !3776
  unreachable, !dbg !3776

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @LFUGetTimeInMinutes() #6, !dbg !3778
  %15 = shl i64 %14, 8, !dbg !3779
  %16 = or i64 %15, %1, !dbg !3780
  %17 = trunc i64 %16 to i32, !dbg !3781
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !3782
  %19 = load i32, i32* %18, align 8, !dbg !3783
  %20 = shl i32 %17, 8, !dbg !3783
  %21 = and i32 %19, 255, !dbg !3783
  %22 = or i32 %20, %21, !dbg !3783
  store i32 %22, i32* %18, align 8, !dbg !3783
  br label %39, !dbg !3784

; <label>:23:                                     ; preds = %4
  %24 = icmp sgt i64 %2, -1, !dbg !3785
  br i1 %24, label %25, label %39, !dbg !3786

; <label>:25:                                     ; preds = %23
  %26 = sub nsw i64 %3, %2, !dbg !3787
  %27 = icmp slt i64 %26, 0, !dbg !3789
  br i1 %27, label %28, label %31, !dbg !3791

; <label>:28:                                     ; preds = %25
  %29 = add nsw i64 %3, 8388607, !dbg !3792
  %30 = srem i64 %29, 16777215, !dbg !3793
  br label %31, !dbg !3794

; <label>:31:                                     ; preds = %28, %25
  %32 = phi i64 [ %30, %28 ], [ %26, %25 ], !dbg !3795
  %33 = trunc i64 %32 to i32, !dbg !3796
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !3797
  %35 = load i32, i32* %34, align 8, !dbg !3798
  %36 = shl i32 %33, 8, !dbg !3798
  %37 = and i32 %35, 255, !dbg !3798
  %38 = or i32 %37, %36, !dbg !3798
  store i32 %38, i32* %34, align 8, !dbg !3798
  br label %39, !dbg !3799

; <label>:39:                                     ; preds = %23, %31, %8, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3800
  ret void, !dbg !3800
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @objectCommandLookup(%struct.client* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3801 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3810
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !3810, !tbaa !3812
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %4, i64 0, i32 0, !dbg !3813
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !3813, !tbaa !3477
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !3814
  %8 = load i8*, i8** %7, align 8, !dbg !3814, !tbaa !182
  %9 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8) #6, !dbg !3815
  %10 = icmp eq %struct.dictEntry* %9, null, !dbg !3817
  br i1 %10, label %15, label %11, !dbg !3818

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 1, i32 0, !dbg !3819
  %13 = bitcast i8** %12 to %struct.redisObject**, !dbg !3819
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !3819, !tbaa !291
  br label %15, !dbg !3820

; <label>:15:                                     ; preds = %2, %11
  %16 = phi %struct.redisObject* [ %14, %11 ], [ null, %2 ], !dbg !3821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3822
  ret %struct.redisObject* %16, !dbg !3822
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @objectCommandLookupOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !3823 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3837
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !3837, !tbaa !3812
  %6 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %5, i64 0, i32 0, !dbg !3838
  %7 = load %struct.dict*, %struct.dict** %6, align 8, !dbg !3838, !tbaa !3477
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !3839
  %9 = load i8*, i8** %8, align 8, !dbg !3839, !tbaa !182
  %10 = tail call %struct.dictEntry* @dictFind(%struct.dict* %7, i8* %9) #6, !dbg !3840
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !3842
  br i1 %11, label %12, label %13, !dbg !3843

; <label>:12:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3844
  br label %18, !dbg !3846

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %10, i64 0, i32 1, i32 0, !dbg !3847
  %15 = bitcast i8** %14 to %struct.redisObject**, !dbg !3847
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !3847, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3844
  %17 = icmp eq %struct.redisObject* %16, null, !dbg !3848
  br i1 %17, label %18, label %19, !dbg !3846

; <label>:18:                                     ; preds = %12, %13
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #6, !dbg !3850
  br label %19, !dbg !3850

; <label>:19:                                     ; preds = %13, %18
  %20 = phi %struct.redisObject* [ %16, %13 ], [ null, %18 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3851
  ret %struct.redisObject* %20, !dbg !3851
}

; Function Attrs: noredzone nounwind
define dso_local void @objectCommand(%struct.client*) local_unnamed_addr #0 !dbg !3852 {
  %2 = alloca [5 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3863
  %4 = load i32, i32* %3, align 8, !dbg !3863, !tbaa !3864
  %5 = icmp eq i32 %4, 2, !dbg !3865
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !3866, !tbaa !3868
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !3866, !tbaa !298
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !dbg !3866, !tbaa !182
  br i1 %5, label %12, label %23, !dbg !3869

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !3870
  %14 = icmp eq i32 %13, 0, !dbg !3870
  br i1 %14, label %15, label %23, !dbg !3871

; <label>:15:                                     ; preds = %12
  %16 = bitcast [5 x i8*]* %2 to i8*, !dbg !3872
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #8, !dbg !3872
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %18 = bitcast i8** %17 to i64*, !dbg !3873
  store i64 0, i64* %18, align 16, !dbg !3873
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !3873
  %20 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !3873
  store <2 x i8*> <i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.46, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3873
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !3873
  %22 = bitcast i8** %21 to <2 x i8*>*, !dbg !3873
  store <2 x i8*> <i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.48, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !3873
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %19) #6, !dbg !3874
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #8, !dbg !3875
  br label %145, !dbg !3876

; <label>:23:                                     ; preds = %1, %12
  %24 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !3877
  %25 = icmp eq i32 %24, 0, !dbg !3877
  %26 = icmp eq i32 %4, 3, !dbg !3878
  %27 = and i1 %26, %25, !dbg !3879
  br i1 %27, label %28, label %51, !dbg !3879

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3880
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !3880, !tbaa !298
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3883, !tbaa !3884
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3892
  %33 = load %struct.redisDb*, %struct.redisDb** %32, align 8, !dbg !3892, !tbaa !3812
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %33, i64 0, i32 0, !dbg !3893
  %35 = load %struct.dict*, %struct.dict** %34, align 8, !dbg !3893, !tbaa !3477
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %30, i64 0, i32 2, !dbg !3894
  %37 = load i8*, i8** %36, align 8, !dbg !3894, !tbaa !182
  %38 = tail call %struct.dictEntry* @dictFind(%struct.dict* %35, i8* %37) #6, !dbg !3895
  %39 = icmp eq %struct.dictEntry* %38, null, !dbg !3897
  br i1 %39, label %40, label %41, !dbg !3898

; <label>:40:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3899
  br label %46, !dbg !3901

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 1, i32 0, !dbg !3902
  %43 = bitcast i8** %42 to %struct.redisObject**, !dbg !3902
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !3902, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3899
  %45 = icmp eq %struct.redisObject* %44, null, !dbg !3903
  br i1 %45, label %46, label %47, !dbg !3901

; <label>:46:                                     ; preds = %40, %41
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #6, !dbg !3904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br label %145, !dbg !3907

; <label>:47:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 1, !dbg !3908
  %49 = load i32, i32* %48, align 4, !dbg !3908, !tbaa !190
  %50 = sext i32 %49 to i64, !dbg !3909
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %50) #6, !dbg !3910
  br label %145, !dbg !3911

; <label>:51:                                     ; preds = %23
  %52 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #10, !dbg !3912
  %53 = icmp eq i32 %52, 0, !dbg !3912
  %54 = and i1 %26, %53, !dbg !3914
  br i1 %54, label %55, label %83, !dbg !3914

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3915
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !3915, !tbaa !298
  %58 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3918, !tbaa !3884
  %59 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3926
  %60 = load %struct.redisDb*, %struct.redisDb** %59, align 8, !dbg !3926, !tbaa !3812
  %61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %60, i64 0, i32 0, !dbg !3927
  %62 = load %struct.dict*, %struct.dict** %61, align 8, !dbg !3927, !tbaa !3477
  %63 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2, !dbg !3928
  %64 = load i8*, i8** %63, align 8, !dbg !3928, !tbaa !182
  %65 = tail call %struct.dictEntry* @dictFind(%struct.dict* %62, i8* %64) #6, !dbg !3929
  %66 = icmp eq %struct.dictEntry* %65, null, !dbg !3931
  br i1 %66, label %67, label %68, !dbg !3932

; <label>:67:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3933
  br label %73, !dbg !3935

; <label>:68:                                     ; preds = %55
  %69 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %65, i64 0, i32 1, i32 0, !dbg !3936
  %70 = bitcast i8** %69 to %struct.redisObject**, !dbg !3936
  %71 = load %struct.redisObject*, %struct.redisObject** %70, align 8, !dbg !3936, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3933
  %72 = icmp eq %struct.redisObject* %71, null, !dbg !3937
  br i1 %72, label %73, label %74, !dbg !3935

; <label>:73:                                     ; preds = %67, %68
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %58) #6, !dbg !3938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3939
  br label %145, !dbg !3940

; <label>:74:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3939
  %75 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %71, i64 0, i32 0, !dbg !3941
  %76 = load i32, i32* %75, align 8, !dbg !3941
  %77 = lshr i32 %76, 4, !dbg !3941
  %78 = and i32 %77, 15, !dbg !3944
  %79 = xor i32 %78, 8, !dbg !3944
  %80 = zext i32 %79 to i64, !dbg !3944
  %81 = getelementptr inbounds [16 x i8*], [16 x i8*]* @switch.table.objectCommand, i64 0, i64 %80, !dbg !3944
  %82 = load i8*, i8** %81, align 8, !dbg !3944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3945
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* nonnull %82) #6, !dbg !3946
  br label %145, !dbg !3947

; <label>:83:                                     ; preds = %51
  %84 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !3948
  %85 = icmp eq i32 %84, 0, !dbg !3948
  %86 = and i1 %26, %85, !dbg !3950
  br i1 %86, label %87, label %114, !dbg !3950

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3951
  %89 = load %struct.redisObject*, %struct.redisObject** %88, align 8, !dbg !3951, !tbaa !298
  %90 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3954, !tbaa !3884
  %91 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3962
  %92 = load %struct.redisDb*, %struct.redisDb** %91, align 8, !dbg !3962, !tbaa !3812
  %93 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %92, i64 0, i32 0, !dbg !3963
  %94 = load %struct.dict*, %struct.dict** %93, align 8, !dbg !3963, !tbaa !3477
  %95 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %89, i64 0, i32 2, !dbg !3964
  %96 = load i8*, i8** %95, align 8, !dbg !3964, !tbaa !182
  %97 = tail call %struct.dictEntry* @dictFind(%struct.dict* %94, i8* %96) #6, !dbg !3965
  %98 = icmp eq %struct.dictEntry* %97, null, !dbg !3967
  br i1 %98, label %99, label %100, !dbg !3968

; <label>:99:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3969
  br label %105, !dbg !3971

; <label>:100:                                    ; preds = %87
  %101 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %97, i64 0, i32 1, i32 0, !dbg !3972
  %102 = bitcast i8** %101 to %struct.redisObject**, !dbg !3972
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !3972, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3969
  %104 = icmp eq %struct.redisObject* %103, null, !dbg !3973
  br i1 %104, label %105, label %106, !dbg !3971

; <label>:105:                                    ; preds = %99, %100
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %90) #6, !dbg !3974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3975
  br label %145, !dbg !3976

; <label>:106:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3975
  %107 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !3977, !tbaa !193
  %108 = and i32 %107, 2, !dbg !3979
  %109 = icmp eq i32 %108, 0, !dbg !3979
  br i1 %109, label %111, label %110, !dbg !3980

; <label>:110:                                    ; preds = %106
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.52, i64 0, i64 0)) #6, !dbg !3981
  br label %145, !dbg !3983

; <label>:111:                                    ; preds = %106
  %112 = tail call i64 @estimateObjectIdleTime(%struct.redisObject* nonnull %103) #6, !dbg !3984
  %113 = udiv i64 %112, 1000, !dbg !3985
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %113) #6, !dbg !3986
  br label %145, !dbg !3987

; <label>:114:                                    ; preds = %83
  %115 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #10, !dbg !3988
  %116 = icmp eq i32 %115, 0, !dbg !3988
  %117 = and i1 %26, %116, !dbg !3990
  br i1 %117, label %118, label %144, !dbg !3990

; <label>:118:                                    ; preds = %114
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3991
  %120 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !3991, !tbaa !298
  %121 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3994, !tbaa !3884
  %122 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4002
  %123 = load %struct.redisDb*, %struct.redisDb** %122, align 8, !dbg !4002, !tbaa !3812
  %124 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %123, i64 0, i32 0, !dbg !4003
  %125 = load %struct.dict*, %struct.dict** %124, align 8, !dbg !4003, !tbaa !3477
  %126 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %120, i64 0, i32 2, !dbg !4004
  %127 = load i8*, i8** %126, align 8, !dbg !4004, !tbaa !182
  %128 = tail call %struct.dictEntry* @dictFind(%struct.dict* %125, i8* %127) #6, !dbg !4005
  %129 = icmp eq %struct.dictEntry* %128, null, !dbg !4007
  br i1 %129, label %130, label %131, !dbg !4008

; <label>:130:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4009
  br label %136, !dbg !4011

; <label>:131:                                    ; preds = %118
  %132 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %128, i64 0, i32 1, i32 0, !dbg !4012
  %133 = bitcast i8** %132 to %struct.redisObject**, !dbg !4012
  %134 = load %struct.redisObject*, %struct.redisObject** %133, align 8, !dbg !4012, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4009
  %135 = icmp eq %struct.redisObject* %134, null, !dbg !4013
  br i1 %135, label %136, label %137, !dbg !4011

; <label>:136:                                    ; preds = %130, %131
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %121) #6, !dbg !4014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4015
  br label %145, !dbg !4016

; <label>:137:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4015
  %138 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !4017, !tbaa !193
  %139 = and i32 %138, 2, !dbg !4019
  %140 = icmp eq i32 %139, 0, !dbg !4019
  br i1 %140, label %141, label %142, !dbg !4020

; <label>:141:                                    ; preds = %137
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !4021
  br label %145, !dbg !4023

; <label>:142:                                    ; preds = %137
  %143 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* nonnull %134) #6, !dbg !4024
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %143) #6, !dbg !4025
  br label %145, !dbg !4026

; <label>:144:                                    ; preds = %114
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !4027
  br label %145

; <label>:145:                                    ; preds = %136, %105, %73, %46, %15, %74, %142, %144, %111, %47, %141, %110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4029
  ret void, !dbg !4029
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @estimateObjectIdleTime(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @LFUDecrAndReturn(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @memoryCommand(%struct.client*) local_unnamed_addr #0 !dbg !4030 {
  %2 = alloca i64, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4059
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !4059, !tbaa !3868
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !4060
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !4060, !tbaa !298
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !4061
  %10 = load i8*, i8** %9, align 8, !dbg !4061, !tbaa !182
  %11 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !4062
  %12 = icmp eq i32 %11, 0, !dbg !4062
  br i1 %12, label %13, label %24, !dbg !4063

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4064
  %15 = load i32, i32* %14, align 8, !dbg !4064, !tbaa !3864
  %16 = icmp eq i32 %15, 2, !dbg !4065
  br i1 %16, label %17, label %24, !dbg !4066

; <label>:17:                                     ; preds = %13
  %18 = bitcast [6 x i8*]* %3 to i8*, !dbg !4067
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #8, !dbg !4067
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 48, i1 false), !dbg !4068
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0, !dbg !4068
  %20 = bitcast [6 x i8*]* %3 to <2 x i8*>*, !dbg !4068
  store <2 x i8*> <i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !4068
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 2, !dbg !4068
  %22 = bitcast i8** %21 to <2 x i8*>*, !dbg !4068
  store <2 x i8*> <i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !4068
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 4, !dbg !4068
  store i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.59, i64 0, i64 0), i8** %23, align 16, !dbg !4068
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %19) #6, !dbg !4069
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #8, !dbg !4070
  br label %224, !dbg !4071

; <label>:24:                                     ; preds = %1, %13
  %25 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !4072
  %26 = icmp eq i32 %25, 0, !dbg !4072
  br i1 %26, label %27, label %104, !dbg !4073

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4074
  %29 = load i32, i32* %28, align 8, !dbg !4074, !tbaa !3864
  %30 = icmp sgt i32 %29, 2, !dbg !4075
  br i1 %30, label %31, label %104, !dbg !4076

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i32 %29, 3, !dbg !4078
  br i1 %32, label %78, label %33, !dbg !4080

; <label>:33:                                     ; preds = %31
  %34 = bitcast i64* %2 to i8*
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 3, !dbg !4081
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !4081, !tbaa !298
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !4084
  %38 = load i8*, i8** %37, align 8, !dbg !4084, !tbaa !182
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !4085
  %40 = icmp eq i32 %39, 0, !dbg !4085
  br i1 %40, label %41, label %72, !dbg !4086

; <label>:41:                                     ; preds = %33, %64
  %42 = phi i32 [ %61, %64 ], [ %29, %33 ]
  %43 = phi i64 [ %60, %64 ], [ 3, %33 ]
  %44 = phi %struct.redisObject** [ %65, %64 ], [ %6, %33 ]
  %45 = add nuw nsw i64 %43, 1, !dbg !4087
  %46 = trunc i64 %45 to i32, !dbg !4088
  %47 = icmp sgt i32 %42, %46, !dbg !4088
  br i1 %47, label %48, label %72, !dbg !4089

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 %45, !dbg !4090
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !4090, !tbaa !298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #8, !dbg !4097
  %51 = call i32 @getLongLongFromObject(%struct.redisObject* %50, i64* nonnull %2) #6, !dbg !4099
  %52 = icmp eq i32 %51, 0, !dbg !4100
  br i1 %52, label %54, label %53, !dbg !4101

; <label>:53:                                     ; preds = %48
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4102
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !4103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4103
  br label %103, !dbg !4104

; <label>:54:                                     ; preds = %48
  %55 = load i64, i64* %2, align 8, !dbg !4105, !tbaa !1756
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !4103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4103
  %56 = icmp slt i64 %55, 0, !dbg !4107
  br i1 %56, label %57, label %59, !dbg !4109

; <label>:57:                                     ; preds = %54
  %58 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4110, !tbaa !4112
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %58) #6, !dbg !4113
  br label %103

; <label>:59:                                     ; preds = %54
  %60 = add nuw i64 %43, 2, !dbg !4114
  %61 = load i32, i32* %28, align 8, !dbg !4115, !tbaa !3864
  %62 = trunc i64 %60 to i32, !dbg !4078
  %63 = icmp sgt i32 %61, %62, !dbg !4078
  br i1 %63, label %64, label %74, !dbg !4080, !llvm.loop !4116

; <label>:64:                                     ; preds = %59
  %65 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !4118, !tbaa !3868
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %65, i64 %60, !dbg !4081
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !4081, !tbaa !298
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !4084
  %69 = load i8*, i8** %68, align 8, !dbg !4084, !tbaa !182
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #10, !dbg !4085
  %71 = icmp eq i32 %70, 0, !dbg !4085
  br i1 %71, label %41, label %72, !dbg !4086

; <label>:72:                                     ; preds = %41, %64, %33
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4119, !tbaa !4112
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #6, !dbg !4121
  br label %103

; <label>:74:                                     ; preds = %59
  %75 = icmp eq i64 %55, 0, !dbg !4122
  %76 = select i1 %75, i64 9223372036854775807, i64 %55, !dbg !4124
  %77 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !4125, !tbaa !3868
  br label %78, !dbg !4080

; <label>:78:                                     ; preds = %31, %74
  %79 = phi %struct.redisObject** [ %77, %74 ], [ %6, %31 ], !dbg !4125
  %80 = phi i64 [ %76, %74 ], [ 5, %31 ], !dbg !4127
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4128
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !4128, !tbaa !3812
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 0, !dbg !4129
  %84 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !4129, !tbaa !3477
  %85 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 2, !dbg !4130
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !4130, !tbaa !298
  %87 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %86, i64 0, i32 2, !dbg !4131
  %88 = load i8*, i8** %87, align 8, !dbg !4131, !tbaa !182
  %89 = call %struct.dictEntry* @dictFind(%struct.dict* %84, i8* %88) #6, !dbg !4132
  %90 = icmp eq %struct.dictEntry* %89, null, !dbg !4134
  br i1 %90, label %91, label %93, !dbg !4135

; <label>:91:                                     ; preds = %78
  %92 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !4136, !tbaa !3884
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %92) #6, !dbg !4138
  br label %103, !dbg !4139

; <label>:93:                                     ; preds = %78
  %94 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %89, i64 0, i32 1, i32 0, !dbg !4140
  %95 = bitcast i8** %94 to %struct.redisObject**, !dbg !4140
  %96 = load %struct.redisObject*, %struct.redisObject** %95, align 8, !dbg !4140, !tbaa !291
  %97 = call i64 @objectComputeSize(%struct.redisObject* %96, i64 %80) #9, !dbg !4141
  %98 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %89, i64 0, i32 0, !dbg !4143
  %99 = load i8*, i8** %98, align 8, !dbg !4143, !tbaa !2896
  %100 = call i64 @sdsAllocSize(i8* %99) #6, !dbg !4144
  %101 = add i64 %97, 24, !dbg !4145
  %102 = add i64 %101, %100, !dbg !4146
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %102) #6, !dbg !4147
  br label %103, !dbg !4148

; <label>:103:                                    ; preds = %53, %57, %72, %93, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:104:                                    ; preds = %24, %27
  %105 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #10, !dbg !4149
  %106 = icmp eq i32 %105, 0, !dbg !4149
  br i1 %106, label %107, label %197, !dbg !4150

; <label>:107:                                    ; preds = %104
  %108 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4151
  %109 = load i32, i32* %108, align 8, !dbg !4151, !tbaa !3864
  %110 = icmp eq i32 %109, 2, !dbg !4152
  br i1 %110, label %111, label %197, !dbg !4153

; <label>:111:                                    ; preds = %107
  %112 = tail call %struct.redisMemOverhead* @getMemoryOverheadData() #9, !dbg !4154
  %113 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 22, !dbg !4156
  %114 = load i64, i64* %113, align 8, !dbg !4156, !tbaa !3487
  %115 = shl i64 %114, 1, !dbg !4157
  %116 = add i64 %115, 50, !dbg !4157
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %116) #6, !dbg !4158
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !4159
  %117 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 0, !dbg !4160
  %118 = load i64, i64* %117, align 8, !dbg !4160, !tbaa !3276
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %118) #6, !dbg !4161
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !4162
  %119 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 1, !dbg !4163
  %120 = load i64, i64* %119, align 8, !dbg !4163, !tbaa !3266
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #6, !dbg !4164
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #6, !dbg !4165
  %121 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 2, !dbg !4166
  %122 = load i64, i64* %121, align 8, !dbg !4166, !tbaa !3271
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %122) #6, !dbg !4167
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !4168
  %123 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 3, !dbg !4169
  %124 = load i64, i64* %123, align 8, !dbg !4169, !tbaa !3334
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %124) #6, !dbg !4170
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !4171
  %125 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 4, !dbg !4172
  %126 = load i64, i64* %125, align 8, !dbg !4172, !tbaa !3369
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %126) #6, !dbg !4173
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !4174
  %127 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 5, !dbg !4175
  %128 = load i64, i64* %127, align 8, !dbg !4175, !tbaa !3400
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %128) #6, !dbg !4176
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0)) #6, !dbg !4177
  %129 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 6, !dbg !4178
  %130 = load i64, i64* %129, align 8, !dbg !4178, !tbaa !3440
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %130) #6, !dbg !4179
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !4180
  %131 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 7, !dbg !4181
  %132 = load i64, i64* %131, align 8, !dbg !4181, !tbaa !3467
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %132) #6, !dbg !4182
  %133 = load i64, i64* %113, align 8, !dbg !4184, !tbaa !3487
  %134 = icmp eq i64 %133, 0, !dbg !4185
  br i1 %134, label %135, label %137, !dbg !4186

; <label>:135:                                    ; preds = %111
  %136 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 23, !dbg !4187
  br label %140, !dbg !4186

; <label>:137:                                    ; preds = %111
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %139 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 23
  br label %182, !dbg !4186

; <label>:140:                                    ; preds = %182, %135
  %141 = phi %struct.anon.9** [ %136, %135 ], [ %139, %182 ], !dbg !4187
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !4189
  %142 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 8, !dbg !4190
  %143 = load i64, i64* %142, align 8, !dbg !4190, !tbaa !3523
  call void @addReplyLongLong(%struct.client* %0, i64 %143) #6, !dbg !4191
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0)) #6, !dbg !4192
  %144 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 10, !dbg !4193
  %145 = load i64, i64* %144, align 8, !dbg !4193, !tbaa !3484
  call void @addReplyLongLong(%struct.client* %0, i64 %145) #6, !dbg !4194
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i64 0, i64 0)) #6, !dbg !4195
  %146 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 11, !dbg !4196
  %147 = load i64, i64* %146, align 8, !dbg !4196, !tbaa !3554
  call void @addReplyLongLong(%struct.client* %0, i64 %147) #6, !dbg !4197
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !4198
  %148 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 9, !dbg !4199
  %149 = load i64, i64* %148, align 8, !dbg !4199, !tbaa !3527
  call void @addReplyLongLong(%struct.client* %0, i64 %149) #6, !dbg !4200
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0)) #6, !dbg !4201
  %150 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 12, !dbg !4202
  %151 = load float, float* %150, align 8, !dbg !4202, !tbaa !3548
  %152 = fpext float %151 to double, !dbg !4203
  call void @addReplyDouble(%struct.client* %0, double %152) #6, !dbg !4204
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !4205
  %153 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 13, !dbg !4206
  %154 = load float, float* %153, align 4, !dbg !4206, !tbaa !3535
  %155 = fpext float %154 to double, !dbg !4207
  call void @addReplyDouble(%struct.client* %0, double %155) #6, !dbg !4208
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !4209
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 2), align 8, !dbg !4210, !tbaa !3295
  call void @addReplyLongLong(%struct.client* %0, i64 %156) #6, !dbg !4211
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !4212
  %157 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 3), align 8, !dbg !4213, !tbaa !3292
  call void @addReplyLongLong(%struct.client* %0, i64 %157) #6, !dbg !4214
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0)) #6, !dbg !4215
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 4), align 8, !dbg !4216, !tbaa !3306
  call void @addReplyLongLong(%struct.client* %0, i64 %158) #6, !dbg !4217
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i64 0, i64 0)) #6, !dbg !4218
  %159 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 16, !dbg !4219
  %160 = load float, float* %159, align 8, !dbg !4219, !tbaa !3300
  %161 = fpext float %160 to double, !dbg !4220
  call void @addReplyDouble(%struct.client* %0, double %161) #6, !dbg !4221
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !4222
  %162 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 17, !dbg !4223
  %163 = load i64, i64* %162, align 8, !dbg !4223, !tbaa !3304
  call void @addReplyLongLong(%struct.client* %0, i64 %163) #6, !dbg !4224
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0)) #6, !dbg !4225
  %164 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 18, !dbg !4226
  %165 = load float, float* %164, align 8, !dbg !4226, !tbaa !3311
  %166 = fpext float %165 to double, !dbg !4227
  call void @addReplyDouble(%struct.client* %0, double %166) #6, !dbg !4228
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i64 0, i64 0)) #6, !dbg !4229
  %167 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 19, !dbg !4230
  %168 = load i64, i64* %167, align 8, !dbg !4230, !tbaa !3315
  call void @addReplyLongLong(%struct.client* %0, i64 %168) #6, !dbg !4231
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !4232
  %169 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 20, !dbg !4233
  %170 = load float, float* %169, align 8, !dbg !4233, !tbaa !3319
  %171 = fpext float %170 to double, !dbg !4234
  call void @addReplyDouble(%struct.client* %0, double %171) #6, !dbg !4235
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0)) #6, !dbg !4236
  %172 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 21, !dbg !4237
  %173 = load i64, i64* %172, align 8, !dbg !4237, !tbaa !3323
  call void @addReplyLongLong(%struct.client* %0, i64 %173) #6, !dbg !4238
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0)) #6, !dbg !4239
  %174 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 14, !dbg !4240
  %175 = load float, float* %174, align 8, !dbg !4240, !tbaa !3286
  %176 = fpext float %175 to double, !dbg !4241
  call void @addReplyDouble(%struct.client* %0, double %176) #6, !dbg !4242
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i64 0, i64 0)) #6, !dbg !4243
  %177 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 15, !dbg !4244
  %178 = load i64, i64* %177, align 8, !dbg !4244, !tbaa !3290
  call void @addReplyLongLong(%struct.client* %0, i64 %178) #6, !dbg !4245
  %179 = bitcast %struct.anon.9** %141 to i8**, !dbg !4187
  %180 = load i8*, i8** %179, align 8, !dbg !4187, !tbaa !3219
  call void @zfree(i8* %180) #6, !dbg !4247
  %181 = bitcast %struct.redisMemOverhead* %112 to i8*, !dbg !4248
  call void @zfree(i8* %181) #6, !dbg !4249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4250
  br label %224, !dbg !4251

; <label>:182:                                    ; preds = %137, %182
  %183 = phi i64 [ 0, %137 ], [ %194, %182 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %138) #8, !dbg !4252
  %184 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4254, !tbaa !3219
  %185 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %184, i64 %183, i32 0, !dbg !4255
  %186 = load i64, i64* %185, align 8, !dbg !4255, !tbaa !3494
  %187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %138, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 %186) #6, !dbg !4256
  call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %138) #6, !dbg !4257
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #6, !dbg !4258
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !4259
  %188 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4260, !tbaa !3219
  %189 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %188, i64 %183, i32 1, !dbg !4261
  %190 = load i64, i64* %189, align 8, !dbg !4261, !tbaa !3503
  call void @addReplyLongLong(%struct.client* %0, i64 %190) #6, !dbg !4262
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !4263
  %191 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4264, !tbaa !3219
  %192 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %191, i64 %183, i32 2, !dbg !4265
  %193 = load i64, i64* %192, align 8, !dbg !4265, !tbaa !3513
  call void @addReplyLongLong(%struct.client* %0, i64 %193) #6, !dbg !4266
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %138) #8, !dbg !4267
  %194 = add nuw i64 %183, 1, !dbg !4268
  %195 = load i64, i64* %113, align 8, !dbg !4184, !tbaa !3487
  %196 = icmp ult i64 %194, %195, !dbg !4185
  br i1 %196, label %182, label %140, !dbg !4186, !llvm.loop !4269

; <label>:197:                                    ; preds = %104, %107
  %198 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0)) #10, !dbg !4271
  %199 = icmp eq i32 %198, 0, !dbg !4271
  br i1 %199, label %200, label %205, !dbg !4272

; <label>:200:                                    ; preds = %197
  %201 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4273
  %202 = load i32, i32* %201, align 8, !dbg !4273, !tbaa !3864
  %203 = icmp eq i32 %202, 2, !dbg !4274
  br i1 %203, label %204, label %205, !dbg !4275

; <label>:204:                                    ; preds = %200
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.92, i64 0, i64 0)) #6, !dbg !4276
  br label %224, !dbg !4278

; <label>:205:                                    ; preds = %197, %200
  %206 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0)) #10, !dbg !4279
  %207 = icmp eq i32 %206, 0, !dbg !4279
  br i1 %207, label %208, label %214, !dbg !4280

; <label>:208:                                    ; preds = %205
  %209 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4281
  %210 = load i32, i32* %209, align 8, !dbg !4281, !tbaa !3864
  %211 = icmp eq i32 %210, 2, !dbg !4282
  br i1 %211, label %212, label %214, !dbg !4283

; <label>:212:                                    ; preds = %208
  %213 = tail call i8* @getMemoryDoctorReport() #9, !dbg !4284
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %213) #6, !dbg !4286
  br label %224, !dbg !4287

; <label>:214:                                    ; preds = %205, %208
  %215 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #10, !dbg !4288
  %216 = icmp eq i32 %215, 0, !dbg !4288
  br i1 %216, label %217, label %223, !dbg !4290

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4291
  %219 = load i32, i32* %218, align 8, !dbg !4291, !tbaa !3864
  %220 = icmp eq i32 %219, 2, !dbg !4292
  br i1 %220, label %221, label %223, !dbg !4293

; <label>:221:                                    ; preds = %217
  %222 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4294, !tbaa !4296
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %222) #6, !dbg !4297
  br label %224, !dbg !4298

; <label>:223:                                    ; preds = %214, %217
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.95, i64 0, i64 0), i8* %10) #6, !dbg !4299
  br label %224

; <label>:224:                                    ; preds = %204, %221, %223, %212, %140, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4301
  ret void, !dbg !4301
}

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyDouble(%struct.client*, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!162, !163, !164}
!llvm.ident = !{!165}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/object.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !36, !74, !77, !81, !64, !82, !113, !114, !115, !125, !136, !146, !155}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !8, line: 82, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !8, line: 76, size: 768, elements: !10)
!10 = !{!11, !42, !43, !72, !73}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !8, line: 77, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !8, line: 65, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !8, line: 58, size: 384, elements: !15)
!15 = !{!16, !27, !31, !32, !37, !41}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !14, file: !8, line: 59, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !25}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 60, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !23, line: 105, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !14, file: !8, line: 60, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!4, !4, !25}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !14, file: !8, line: 61, baseType: !28, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !14, file: !8, line: 62, baseType: !33, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !4, !25, !25}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !14, file: !8, line: 63, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !4, !4}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !14, file: !8, line: 64, baseType: !38, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !9, file: !8, line: 78, baseType: !4, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !9, file: !8, line: 79, baseType: !44, size: 512, offset: 128)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, elements: !70)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !8, line: 74, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !8, line: 69, size: 256, elements: !47)
!47 = !{!48, !67, !68, !69}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !46, file: !8, line: 70, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !8, line: 56, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !8, line: 47, size: 192, elements: !53)
!53 = !{!54, !55, !65}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !52, file: !8, line: 48, baseType: !4, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !52, file: !8, line: 54, baseType: !56, size: 64, offset: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !8, line: 49, size: 64, elements: !57)
!57 = !{!58, !59, !60, !63}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !8, line: 50, baseType: !4, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !56, file: !8, line: 51, baseType: !20, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !56, file: !8, line: 52, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !21, line: 56, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !23, line: 103, baseType: !5)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !56, file: !8, line: 53, baseType: !64, size: 64)
!64 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !8, line: 55, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !8, line: 71, baseType: !24, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !46, file: !8, line: 72, baseType: !24, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !46, file: !8, line: 73, baseType: !24, size: 64, offset: 192)
!70 = !{!71}
!71 = !DISubrange(count: 2)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !9, file: !8, line: 80, baseType: !5, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !9, file: !8, line: 81, baseType: !24, size: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 40, baseType: !79)
!78 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !80, line: 129, baseType: !24)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !84, line: 829, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !84, line: 826, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !85, file: !84, line: 827, baseType: !6, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !85, file: !84, line: 828, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !84, line: 824, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !84, line: 820, size: 256, elements: !92)
!92 = !{!93, !110, !111, !112}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !91, file: !84, line: 821, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !84, line: 810, size: 192, elements: !96)
!96 = !{!97, !100, !101, !102}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !95, file: !84, line: 811, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !99, line: 43, baseType: !81)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !95, file: !84, line: 812, baseType: !64, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !95, file: !84, line: 813, baseType: !94, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !95, file: !84, line: 817, baseType: !103, offset: 192)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !108)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !84, line: 814, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !104, file: !84, line: 815, baseType: !94, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !104, file: !84, line: 816, baseType: !24, size: 64, offset: 64)
!108 = !{!109}
!109 = !DISubrange(count: -1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !91, file: !84, line: 821, baseType: !94, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !91, file: !84, line: 822, baseType: !24, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !91, file: !84, line: 823, baseType: !36, size: 32, offset: 192)
!113 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !84, line: 622, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !84, line: 614, size: 128, elements: !118)
!118 = !{!119, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !84, line: 615, baseType: !120, size: 4, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !117, file: !84, line: 616, baseType: !120, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !117, file: !84, line: 617, baseType: !120, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !117, file: !84, line: 620, baseType: !36, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !117, file: !84, line: 621, baseType: !4, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !99, line: 51, size: 24, elements: !127)
!127 = !{!128, !132, !133, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !126, file: !99, line: 52, baseType: !129, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 24, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !23, line: 43, baseType: !131)
!131 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !126, file: !99, line: 53, baseType: !129, size: 8, offset: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !99, line: 54, baseType: !131, size: 8, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !126, file: !99, line: 55, baseType: !135, offset: 24)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !108)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !99, line: 57, size: 40, elements: !138)
!138 = !{!139, !143, !144, !145}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !137, file: !99, line: 58, baseType: !140, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 36, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !23, line: 57, baseType: !142)
!142 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !137, file: !99, line: 59, baseType: !140, size: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !99, line: 60, baseType: !131, size: 8, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !137, file: !99, line: 61, baseType: !135, offset: 40)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !99, line: 63, size: 72, elements: !148)
!148 = !{!149, !152, !153, !154}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !99, line: 64, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 48, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 79, baseType: !120)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !147, file: !99, line: 65, baseType: !150, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !99, line: 66, baseType: !131, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !147, file: !99, line: 67, baseType: !135, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !99, line: 69, size: 136, elements: !157)
!157 = !{!158, !159, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !156, file: !99, line: 70, baseType: !20, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !156, file: !99, line: 71, baseType: !20, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !99, line: 72, baseType: !131, size: 8, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !99, line: 73, baseType: !135, offset: 136)
!162 = !{i32 2, !"Dwarf Version", i32 4}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 4}
!165 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!166 = distinct !DISubprogram(name: "createObject", scope: !1, file: !1, line: 41, type: !167, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!115, !36, !4}
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(name: "type", arg: 1, scope: !166, file: !1, line: 41, type: !36)
!171 = !DILocalVariable(name: "ptr", arg: 2, scope: !166, file: !1, line: 41, type: !4)
!172 = !DILocalVariable(name: "o", scope: !166, file: !1, line: 42, type: !115)
!173 = !DILocation(line: 41, column: 24, scope: !166)
!174 = !DILocation(line: 41, column: 36, scope: !166)
!175 = !DILocation(line: 42, column: 15, scope: !166)
!176 = !DILocation(line: 42, column: 11, scope: !166)
!177 = !DILocation(line: 43, column: 8, scope: !166)
!178 = !DILocation(line: 43, column: 13, scope: !166)
!179 = !DILocation(line: 44, column: 17, scope: !166)
!180 = !DILocation(line: 45, column: 8, scope: !166)
!181 = !DILocation(line: 45, column: 12, scope: !166)
!182 = !{!183, !187, i64 8}
!183 = !{!"redisObject", !184, i64 0, !184, i64 0, !184, i64 1, !184, i64 4, !187, i64 8}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !{!"any pointer", !185, i64 0}
!188 = !DILocation(line: 46, column: 8, scope: !166)
!189 = !DILocation(line: 46, column: 17, scope: !166)
!190 = !{!183, !184, i64 4}
!191 = !DILocation(line: 50, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !1, line: 50, column: 9)
!193 = !{!194, !184, i64 2712}
!194 = !{!"redisServer", !184, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !184, i64 32, !184, i64 36, !184, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !184, i64 80, !184, i64 84, !184, i64 88, !184, i64 92, !187, i64 96, !187, i64 104, !184, i64 112, !184, i64 116, !185, i64 120, !184, i64 164, !195, i64 168, !184, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !185, i64 208, !184, i64 216, !184, i64 220, !185, i64 224, !184, i64 352, !187, i64 360, !184, i64 368, !185, i64 372, !184, i64 436, !184, i64 440, !185, i64 444, !184, i64 508, !187, i64 512, !187, i64 520, !187, i64 528, !187, i64 536, !187, i64 544, !187, i64 552, !187, i64 560, !184, i64 568, !196, i64 576, !185, i64 584, !187, i64 840, !195, i64 848, !184, i64 856, !184, i64 860, !195, i64 864, !195, i64 872, !195, i64 880, !195, i64 888, !187, i64 896, !187, i64 904, !187, i64 912, !187, i64 920, !187, i64 928, !187, i64 936, !187, i64 944, !187, i64 952, !187, i64 960, !187, i64 968, !187, i64 976, !187, i64 984, !187, i64 992, !195, i64 1000, !196, i64 1008, !196, i64 1016, !196, i64 1024, !197, i64 1032, !196, i64 1040, !196, i64 1048, !196, i64 1056, !196, i64 1064, !196, i64 1072, !196, i64 1080, !196, i64 1088, !196, i64 1096, !196, i64 1104, !195, i64 1112, !196, i64 1120, !197, i64 1128, !196, i64 1136, !196, i64 1144, !196, i64 1152, !196, i64 1160, !187, i64 1168, !196, i64 1176, !196, i64 1184, !195, i64 1192, !198, i64 1200, !196, i64 1240, !196, i64 1248, !195, i64 1256, !195, i64 1264, !185, i64 1272, !184, i64 1728, !184, i64 1732, !184, i64 1736, !184, i64 1740, !184, i64 1744, !195, i64 1752, !184, i64 1760, !184, i64 1764, !184, i64 1768, !184, i64 1772, !195, i64 1776, !195, i64 1784, !184, i64 1792, !184, i64 1796, !184, i64 1800, !184, i64 1804, !185, i64 1808, !184, i64 1880, !184, i64 1884, !187, i64 1888, !184, i64 1896, !184, i64 1900, !195, i64 1904, !195, i64 1912, !195, i64 1920, !195, i64 1928, !184, i64 1936, !184, i64 1940, !187, i64 1944, !187, i64 1952, !184, i64 1960, !184, i64 1964, !195, i64 1968, !195, i64 1976, !195, i64 1984, !195, i64 1992, !184, i64 2000, !195, i64 2008, !184, i64 2016, !184, i64 2020, !184, i64 2024, !184, i64 2028, !184, i64 2032, !184, i64 2036, !184, i64 2040, !184, i64 2044, !184, i64 2048, !184, i64 2052, !184, i64 2056, !184, i64 2060, !184, i64 2064, !187, i64 2072, !196, i64 2080, !196, i64 2088, !184, i64 2096, !187, i64 2104, !184, i64 2112, !187, i64 2120, !184, i64 2128, !184, i64 2132, !195, i64 2136, !195, i64 2144, !195, i64 2152, !195, i64 2160, !184, i64 2168, !184, i64 2172, !184, i64 2176, !184, i64 2180, !184, i64 2184, !184, i64 2188, !185, i64 2192, !199, i64 2200, !200, i64 2224, !187, i64 2240, !184, i64 2248, !187, i64 2256, !184, i64 2264, !185, i64 2268, !185, i64 2309, !196, i64 2352, !196, i64 2360, !184, i64 2368, !184, i64 2372, !187, i64 2376, !196, i64 2384, !196, i64 2392, !196, i64 2400, !196, i64 2408, !195, i64 2416, !195, i64 2424, !184, i64 2432, !184, i64 2436, !184, i64 2440, !184, i64 2444, !184, i64 2448, !187, i64 2456, !187, i64 2464, !184, i64 2472, !184, i64 2476, !187, i64 2480, !187, i64 2488, !184, i64 2496, !184, i64 2500, !195, i64 2504, !195, i64 2512, !195, i64 2520, !184, i64 2528, !184, i64 2532, !187, i64 2536, !195, i64 2544, !184, i64 2552, !184, i64 2556, !184, i64 2560, !195, i64 2568, !184, i64 2576, !184, i64 2580, !184, i64 2584, !187, i64 2592, !185, i64 2600, !196, i64 2648, !184, i64 2656, !187, i64 2664, !187, i64 2672, !184, i64 2680, !187, i64 2688, !184, i64 2696, !184, i64 2700, !196, i64 2704, !184, i64 2712, !184, i64 2716, !184, i64 2720, !184, i64 2724, !196, i64 2728, !184, i64 2736, !185, i64 2740, !187, i64 2768, !187, i64 2776, !184, i64 2784, !184, i64 2788, !184, i64 2792, !184, i64 2796, !195, i64 2800, !195, i64 2808, !195, i64 2816, !195, i64 2824, !195, i64 2832, !195, i64 2840, !195, i64 2848, !195, i64 2856, !184, i64 2864, !184, i64 2868, !195, i64 2872, !195, i64 2880, !184, i64 2888, !196, i64 2896, !187, i64 2904, !187, i64 2912, !184, i64 2920, !184, i64 2924, !196, i64 2928, !187, i64 2936, !187, i64 2944, !184, i64 2952, !184, i64 2956, !184, i64 2960, !184, i64 2964, !187, i64 2968, !184, i64 2976, !184, i64 2980, !184, i64 2984, !187, i64 2992, !187, i64 3000, !187, i64 3008, !187, i64 3016, !196, i64 3024, !196, i64 3032, !196, i64 3040, !184, i64 3048, !184, i64 3052, !184, i64 3056, !184, i64 3060, !184, i64 3064, !184, i64 3068, !184, i64 3072, !184, i64 3076, !184, i64 3080, !184, i64 3084, !184, i64 3088, !196, i64 3096, !187, i64 3104, !187, i64 3112, !187, i64 3120, !184, i64 3128, !184, i64 3132, !184, i64 3136, !195, i64 3144, !187, i64 3152, !187, i64 3160, !187, i64 3168}
!195 = !{!"long", !185, i64 0}
!196 = !{!"long long", !185, i64 0}
!197 = !{!"double", !185, i64 0}
!198 = !{!"malloc_stats", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32}
!199 = !{!"", !184, i64 0, !195, i64 8, !196, i64 16}
!200 = !{!"redisOpArray", !187, i64 0, !184, i64 8}
!201 = !DILocation(line: 50, column: 33, scope: !192)
!202 = !DILocation(line: 50, column: 9, scope: !166)
!203 = !DILocation(line: 51, column: 19, scope: !204)
!204 = distinct !DILexicalBlock(scope: !192, file: !1, line: 50, column: 55)
!205 = !DILocation(line: 51, column: 18, scope: !204)
!206 = !DILocation(line: 51, column: 16, scope: !204)
!207 = !DILocation(line: 52, column: 5, scope: !204)
!208 = !DILocation(line: 53, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !192, file: !1, line: 52, column: 12)
!210 = !DILocation(line: 53, column: 16, scope: !209)
!211 = !DILocation(line: 0, scope: !204)
!212 = !DILocation(line: 55, column: 5, scope: !166)
!213 = distinct !DISubprogram(name: "makeObjectShared", scope: !1, file: !1, line: 69, type: !214, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!115, !115}
!216 = !{!217}
!217 = !DILocalVariable(name: "o", arg: 1, scope: !213, file: !1, line: 69, type: !115)
!218 = !DILocation(line: 69, column: 30, scope: !213)
!219 = !DILocation(line: 70, column: 5, scope: !213)
!220 = !DILocation(line: 71, column: 17, scope: !213)
!221 = !DILocation(line: 72, column: 5, scope: !213)
!222 = distinct !DISubprogram(name: "createRawStringObject", scope: !1, file: !1, line: 77, type: !223, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!115, !74, !77}
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "ptr", arg: 1, scope: !222, file: !1, line: 77, type: !74)
!227 = !DILocalVariable(name: "len", arg: 2, scope: !222, file: !1, line: 77, type: !77)
!228 = !DILocation(line: 77, column: 41, scope: !222)
!229 = !DILocation(line: 77, column: 53, scope: !222)
!230 = !DILocation(line: 78, column: 37, scope: !222)
!231 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !232)
!232 = distinct !DILocation(line: 78, column: 12, scope: !222)
!233 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !232)
!234 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !232)
!235 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !232)
!236 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !232)
!237 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !232)
!238 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !232)
!239 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !232)
!240 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !232)
!241 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !232)
!242 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !232)
!243 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !232)
!244 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !232)
!245 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !232)
!246 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !232)
!247 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !232)
!248 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !232)
!249 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !232)
!250 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !232)
!251 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !232)
!252 = !DILocation(line: 0, scope: !204, inlinedAt: !232)
!253 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !232)
!254 = !DILocation(line: 78, column: 5, scope: !222)
!255 = distinct !DISubprogram(name: "createEmbeddedStringObject", scope: !1, file: !1, line: 84, type: !223, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !256)
!256 = !{!257, !258, !259, !260}
!257 = !DILocalVariable(name: "ptr", arg: 1, scope: !255, file: !1, line: 84, type: !74)
!258 = !DILocalVariable(name: "len", arg: 2, scope: !255, file: !1, line: 84, type: !77)
!259 = !DILocalVariable(name: "o", scope: !255, file: !1, line: 85, type: !115)
!260 = !DILocalVariable(name: "sh", scope: !255, file: !1, line: 86, type: !125)
!261 = !DILocation(line: 84, column: 46, scope: !255)
!262 = !DILocation(line: 84, column: 58, scope: !255)
!263 = !DILocation(line: 85, column: 62, scope: !255)
!264 = !DILocation(line: 85, column: 15, scope: !255)
!265 = !DILocation(line: 85, column: 11, scope: !255)
!266 = !DILocation(line: 86, column: 35, scope: !255)
!267 = !DILocation(line: 86, column: 21, scope: !255)
!268 = !DILocation(line: 88, column: 8, scope: !255)
!269 = !DILocation(line: 88, column: 13, scope: !255)
!270 = !DILocation(line: 89, column: 17, scope: !255)
!271 = !DILocation(line: 90, column: 16, scope: !255)
!272 = !DILocation(line: 90, column: 8, scope: !255)
!273 = !DILocation(line: 90, column: 12, scope: !255)
!274 = !DILocation(line: 91, column: 8, scope: !255)
!275 = !DILocation(line: 91, column: 17, scope: !255)
!276 = !DILocation(line: 92, column: 16, scope: !277)
!277 = distinct !DILexicalBlock(scope: !255, file: !1, line: 92, column: 9)
!278 = !DILocation(line: 92, column: 33, scope: !277)
!279 = !DILocation(line: 92, column: 9, scope: !255)
!280 = !DILocation(line: 93, column: 19, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !1, line: 92, column: 55)
!282 = !DILocation(line: 93, column: 18, scope: !281)
!283 = !DILocation(line: 93, column: 16, scope: !281)
!284 = !DILocation(line: 94, column: 5, scope: !281)
!285 = !DILocation(line: 95, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !277, file: !1, line: 94, column: 12)
!287 = !DILocation(line: 95, column: 16, scope: !286)
!288 = !DILocation(line: 0, scope: !281)
!289 = !DILocation(line: 98, column: 15, scope: !255)
!290 = !DILocation(line: 98, column: 13, scope: !255)
!291 = !{!185, !185, i64 0}
!292 = !DILocation(line: 99, column: 9, scope: !255)
!293 = !DILocation(line: 99, column: 15, scope: !255)
!294 = !DILocation(line: 100, column: 9, scope: !255)
!295 = !DILocation(line: 100, column: 15, scope: !255)
!296 = !DILocation(line: 101, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !255, file: !1, line: 101, column: 9)
!298 = !{!187, !187, i64 0}
!299 = !DILocation(line: 101, column: 13, scope: !297)
!300 = !DILocation(line: 101, column: 9, scope: !255)
!301 = !DILocation(line: 102, column: 9, scope: !297)
!302 = !DILocation(line: 102, column: 22, scope: !297)
!303 = !DILocation(line: 103, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !1, line: 103, column: 14)
!305 = !DILocation(line: 103, column: 14, scope: !297)
!306 = !DILocation(line: 104, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 103, column: 19)
!308 = !DILocation(line: 105, column: 9, scope: !307)
!309 = !DILocation(line: 105, column: 22, scope: !307)
!310 = !DILocation(line: 106, column: 5, scope: !307)
!311 = !DILocation(line: 107, column: 29, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !1, line: 106, column: 12)
!313 = !DILocation(line: 107, column: 9, scope: !312)
!314 = !DILocation(line: 109, column: 5, scope: !255)
!315 = distinct !DISubprogram(name: "createStringObject", scope: !1, file: !1, line: 119, type: !223, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !316)
!316 = !{!317, !318}
!317 = !DILocalVariable(name: "ptr", arg: 1, scope: !315, file: !1, line: 119, type: !74)
!318 = !DILocalVariable(name: "len", arg: 2, scope: !315, file: !1, line: 119, type: !77)
!319 = !DILocation(line: 119, column: 38, scope: !315)
!320 = !DILocation(line: 119, column: 50, scope: !315)
!321 = !DILocation(line: 120, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !1, line: 120, column: 9)
!323 = !DILocation(line: 120, column: 9, scope: !315)
!324 = !DILocation(line: 121, column: 16, scope: !322)
!325 = !DILocation(line: 121, column: 9, scope: !322)
!326 = !DILocation(line: 77, column: 41, scope: !222, inlinedAt: !327)
!327 = distinct !DILocation(line: 123, column: 16, scope: !322)
!328 = !DILocation(line: 77, column: 53, scope: !222, inlinedAt: !327)
!329 = !DILocation(line: 78, column: 37, scope: !222, inlinedAt: !327)
!330 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !331)
!331 = distinct !DILocation(line: 78, column: 12, scope: !222, inlinedAt: !327)
!332 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !331)
!333 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !331)
!334 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !331)
!335 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !331)
!336 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !331)
!337 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !331)
!338 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !331)
!339 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !331)
!340 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !331)
!341 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !331)
!342 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !331)
!343 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !331)
!344 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !331)
!345 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !331)
!346 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !331)
!347 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !331)
!348 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !331)
!349 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !331)
!350 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !331)
!351 = !DILocation(line: 0, scope: !204, inlinedAt: !331)
!352 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !331)
!353 = !DILocation(line: 78, column: 5, scope: !222, inlinedAt: !327)
!354 = !DILocation(line: 123, column: 9, scope: !322)
!355 = !DILocation(line: 0, scope: !322)
!356 = !DILocation(line: 124, column: 1, scope: !315)
!357 = distinct !DISubprogram(name: "createStringObjectFromLongLongWithOptions", scope: !1, file: !1, line: 133, type: !358, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !361)
!358 = !DISubroutineType(types: !359)
!359 = !{!115, !360, !36}
!360 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!361 = !{!362, !363, !364}
!362 = !DILocalVariable(name: "value", arg: 1, scope: !357, file: !1, line: 133, type: !360)
!363 = !DILocalVariable(name: "valueobj", arg: 2, scope: !357, file: !1, line: 133, type: !36)
!364 = !DILocalVariable(name: "o", scope: !357, file: !1, line: 134, type: !115)
!365 = !DILocation(line: 133, column: 59, scope: !357)
!366 = !DILocation(line: 133, column: 70, scope: !357)
!367 = !DILocation(line: 136, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !357, file: !1, line: 136, column: 9)
!369 = !{!194, !196, i64 2704}
!370 = !DILocation(line: 136, column: 26, scope: !368)
!371 = !DILocation(line: 136, column: 31, scope: !368)
!372 = !DILocation(line: 137, column: 18, scope: !368)
!373 = !DILocation(line: 137, column: 35, scope: !368)
!374 = !DILocation(line: 136, column: 9, scope: !357)
!375 = !DILocation(line: 142, column: 5, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !1, line: 138, column: 5)
!377 = !DILocation(line: 144, column: 20, scope: !378)
!378 = distinct !DILexicalBlock(scope: !357, file: !1, line: 144, column: 9)
!379 = !DILocation(line: 144, column: 63, scope: !378)
!380 = !DILocation(line: 145, column: 22, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 144, column: 69)
!382 = !DILocalVariable(name: "o", arg: 1, scope: !383, file: !1, line: 349, type: !115)
!383 = distinct !DISubprogram(name: "incrRefCount", scope: !1, file: !1, line: 349, type: !384, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !115}
!386 = !{!382}
!387 = !DILocation(line: 349, column: 25, scope: !383, inlinedAt: !388)
!388 = distinct !DILocation(line: 145, column: 9, scope: !381)
!389 = !DILocation(line: 350, column: 12, scope: !390, inlinedAt: !388)
!390 = distinct !DILexicalBlock(scope: !383, file: !1, line: 350, column: 9)
!391 = !DILocation(line: 350, column: 21, scope: !390, inlinedAt: !388)
!392 = !DILocation(line: 350, column: 9, scope: !383, inlinedAt: !388)
!393 = !DILocation(line: 350, column: 56, scope: !390, inlinedAt: !388)
!394 = !DILocation(line: 350, column: 45, scope: !390, inlinedAt: !388)
!395 = !DILocation(line: 351, column: 1, scope: !383, inlinedAt: !388)
!396 = !DILocation(line: 134, column: 11, scope: !357)
!397 = !DILocation(line: 147, column: 5, scope: !381)
!398 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !399)
!399 = distinct !DILocation(line: 149, column: 17, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 148, column: 53)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 148, column: 13)
!402 = distinct !DILexicalBlock(scope: !378, file: !1, line: 147, column: 12)
!403 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !399)
!404 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !399)
!405 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !399)
!406 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !399)
!407 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !399)
!408 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !399)
!409 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !399)
!410 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !399)
!411 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !399)
!412 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !399)
!413 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !399)
!414 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !399)
!415 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !399)
!416 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !399)
!417 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !399)
!418 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !399)
!419 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !399)
!420 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !399)
!421 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !399)
!422 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !399)
!423 = !DILocation(line: 150, column: 25, scope: !400)
!424 = !DILocation(line: 151, column: 22, scope: !400)
!425 = !DILocation(line: 151, column: 20, scope: !400)
!426 = !DILocation(line: 152, column: 9, scope: !400)
!427 = !DILocation(line: 0, scope: !428)
!428 = distinct !DILexicalBlock(scope: !401, file: !1, line: 152, column: 16)
!429 = !DILocation(line: 156, column: 5, scope: !357)
!430 = !DILocation(line: 349, column: 25, scope: !383)
!431 = !DILocation(line: 350, column: 12, scope: !390)
!432 = !DILocation(line: 350, column: 21, scope: !390)
!433 = !DILocation(line: 350, column: 9, scope: !383)
!434 = !DILocation(line: 350, column: 56, scope: !390)
!435 = !DILocation(line: 350, column: 45, scope: !390)
!436 = !DILocation(line: 351, column: 1, scope: !383)
!437 = distinct !DISubprogram(name: "createStringObjectFromLongLong", scope: !1, file: !1, line: 161, type: !438, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!115, !360}
!440 = !{!441}
!441 = !DILocalVariable(name: "value", arg: 1, scope: !437, file: !1, line: 161, type: !360)
!442 = !DILocation(line: 161, column: 48, scope: !437)
!443 = !DILocation(line: 162, column: 12, scope: !437)
!444 = !DILocation(line: 162, column: 5, scope: !437)
!445 = distinct !DISubprogram(name: "createStringObjectFromLongLongForValue", scope: !1, file: !1, line: 169, type: !438, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !446)
!446 = !{!447}
!447 = !DILocalVariable(name: "value", arg: 1, scope: !445, file: !1, line: 169, type: !360)
!448 = !DILocation(line: 169, column: 56, scope: !445)
!449 = !DILocation(line: 170, column: 12, scope: !445)
!450 = !DILocation(line: 170, column: 5, scope: !445)
!451 = distinct !DISubprogram(name: "createStringObjectFromLongDouble", scope: !1, file: !1, line: 179, type: !452, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !455)
!452 = !DISubroutineType(types: !453)
!453 = !{!115, !454, !36}
!454 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!455 = !{!456, !457, !458, !462}
!456 = !DILocalVariable(name: "value", arg: 1, scope: !451, file: !1, line: 179, type: !454)
!457 = !DILocalVariable(name: "humanfriendly", arg: 2, scope: !451, file: !1, line: 179, type: !36)
!458 = !DILocalVariable(name: "buf", scope: !451, file: !1, line: 180, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 40960, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 5120)
!462 = !DILocalVariable(name: "len", scope: !451, file: !1, line: 181, type: !36)
!463 = !DILocation(line: 179, column: 52, scope: !451)
!464 = !DILocation(line: 179, column: 63, scope: !451)
!465 = !DILocation(line: 180, column: 5, scope: !451)
!466 = !DILocation(line: 180, column: 10, scope: !451)
!467 = !DILocation(line: 181, column: 15, scope: !451)
!468 = !DILocation(line: 181, column: 9, scope: !451)
!469 = !DILocation(line: 182, column: 35, scope: !451)
!470 = !DILocation(line: 182, column: 12, scope: !451)
!471 = !DILocation(line: 183, column: 1, scope: !451)
!472 = !DILocation(line: 182, column: 5, scope: !451)
!473 = distinct !DISubprogram(name: "dupStringObject", scope: !1, file: !1, line: 193, type: !474, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !478)
!474 = !DISubroutineType(types: !475)
!475 = !{!115, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "o", arg: 1, scope: !473, file: !1, line: 193, type: !476)
!480 = !DILocalVariable(name: "d", scope: !473, file: !1, line: 194, type: !115)
!481 = !DILocation(line: 193, column: 35, scope: !473)
!482 = !DILocation(line: 196, column: 5, scope: !473)
!483 = !DILocation(line: 198, column: 15, scope: !473)
!484 = !DILocation(line: 198, column: 5, scope: !473)
!485 = !DILocation(line: 200, column: 41, scope: !486)
!486 = distinct !DILexicalBlock(scope: !473, file: !1, line: 198, column: 25)
!487 = !DILocalVariable(name: "s", arg: 1, scope: !488, file: !99, line: 87, type: !493)
!488 = distinct !DISubprogram(name: "sdslen", scope: !99, file: !99, line: 87, type: !489, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !494)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !493}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !492, line: 58, baseType: !24)
!492 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!494 = !{!487, !495}
!495 = !DILocalVariable(name: "flags", scope: !488, file: !99, line: 88, type: !131)
!496 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !497)
!497 = distinct !DILocation(line: 200, column: 45, scope: !486)
!498 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !497)
!499 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !497)
!500 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !497)
!501 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !497)
!502 = distinct !DILexicalBlock(scope: !488, file: !99, line: 89, column: 33)
!503 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !497)
!504 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !497)
!505 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !497)
!506 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !497)
!507 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !497)
!508 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !497)
!509 = !{!510, !510, i64 0}
!510 = !{!"short", !185, i64 0}
!511 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !497)
!512 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !497)
!513 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !497)
!514 = !{!184, !184, i64 0}
!515 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !497)
!516 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !497)
!517 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !497)
!518 = !{!195, !195, i64 0}
!519 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !497)
!520 = !DILocation(line: 0, scope: !502, inlinedAt: !497)
!521 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !497)
!522 = !DILocation(line: 77, column: 41, scope: !222, inlinedAt: !523)
!523 = distinct !DILocation(line: 200, column: 16, scope: !486)
!524 = !DILocation(line: 77, column: 53, scope: !222, inlinedAt: !523)
!525 = !DILocation(line: 78, column: 37, scope: !222, inlinedAt: !523)
!526 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !527)
!527 = distinct !DILocation(line: 78, column: 12, scope: !222, inlinedAt: !523)
!528 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !527)
!529 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !527)
!530 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !527)
!531 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !527)
!532 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !527)
!533 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !527)
!534 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !527)
!535 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !527)
!536 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !527)
!537 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !527)
!538 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !527)
!539 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !527)
!540 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !527)
!541 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !527)
!542 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !527)
!543 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !527)
!544 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !527)
!545 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !527)
!546 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !527)
!547 = !DILocation(line: 0, scope: !204, inlinedAt: !527)
!548 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !527)
!549 = !DILocation(line: 78, column: 5, scope: !222, inlinedAt: !523)
!550 = !DILocation(line: 200, column: 9, scope: !486)
!551 = !DILocation(line: 202, column: 46, scope: !486)
!552 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !553)
!553 = distinct !DILocation(line: 202, column: 50, scope: !486)
!554 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !553)
!555 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !553)
!556 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !553)
!557 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !553)
!558 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !553)
!559 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !553)
!560 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !553)
!561 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !553)
!562 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !553)
!563 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !553)
!564 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !553)
!565 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !553)
!566 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !553)
!567 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !553)
!568 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !553)
!569 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !553)
!570 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !553)
!571 = !DILocation(line: 0, scope: !502, inlinedAt: !553)
!572 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !553)
!573 = !DILocation(line: 202, column: 16, scope: !486)
!574 = !DILocation(line: 202, column: 9, scope: !486)
!575 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !576)
!576 = distinct !DILocation(line: 204, column: 13, scope: !486)
!577 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !576)
!578 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !576)
!579 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !576)
!580 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !576)
!581 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !576)
!582 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !576)
!583 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !576)
!584 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !576)
!585 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !576)
!586 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !576)
!587 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !576)
!588 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !576)
!589 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !576)
!590 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !576)
!591 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !576)
!592 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !576)
!593 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !576)
!594 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !576)
!595 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !576)
!596 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !576)
!597 = !DILocation(line: 194, column: 11, scope: !473)
!598 = !DILocation(line: 205, column: 21, scope: !486)
!599 = !DILocation(line: 206, column: 21, scope: !486)
!600 = !DILocation(line: 206, column: 16, scope: !486)
!601 = !DILocation(line: 207, column: 9, scope: !486)
!602 = !DILocation(line: 209, column: 9, scope: !486)
!603 = !DILocation(line: 0, scope: !486)
!604 = !DILocation(line: 212, column: 1, scope: !473)
!605 = distinct !DISubprogram(name: "createQuicklistObject", scope: !1, file: !1, line: 214, type: !606, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!115}
!608 = !{!609, !637}
!609 = !DILocalVariable(name: "l", scope: !605, file: !1, line: 215, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !612, line: 80, baseType: !613)
!612 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !612, line: 73, size: 320, elements: !614)
!614 = !{!615, !632, !633, !634, !635, !636}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !613, file: !612, line: 74, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !612, line: 55, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !612, line: 44, size: 256, elements: !619)
!619 = !{!620, !622, !623, !625, !626, !627, !628, !629, !630, !631}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !618, file: !612, line: 45, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !612, line: 46, baseType: !621, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !618, file: !612, line: 47, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !618, file: !612, line: 48, baseType: !120, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !618, file: !612, line: 49, baseType: !120, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !618, file: !612, line: 50, baseType: !120, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !618, file: !612, line: 51, baseType: !120, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !618, file: !612, line: 52, baseType: !120, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !618, file: !612, line: 53, baseType: !120, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !618, file: !612, line: 54, baseType: !120, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !613, file: !612, line: 75, baseType: !616, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !613, file: !612, line: 76, baseType: !24, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !613, file: !612, line: 77, baseType: !24, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !613, file: !612, line: 78, baseType: !36, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !613, file: !612, line: 79, baseType: !120, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!637 = !DILocalVariable(name: "o", scope: !605, file: !1, line: 216, type: !115)
!638 = !DILocation(line: 215, column: 20, scope: !605)
!639 = !DILocation(line: 215, column: 16, scope: !605)
!640 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !641)
!641 = distinct !DILocation(line: 216, column: 15, scope: !605)
!642 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !641)
!643 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !641)
!644 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !641)
!645 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !641)
!646 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !641)
!647 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !641)
!648 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !641)
!649 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !641)
!650 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !641)
!651 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !641)
!652 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !641)
!653 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !641)
!654 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !641)
!655 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !641)
!656 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !641)
!657 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !641)
!658 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !641)
!659 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !641)
!660 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !641)
!661 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !641)
!662 = !DILocation(line: 216, column: 11, scope: !605)
!663 = !DILocation(line: 217, column: 17, scope: !605)
!664 = !DILocation(line: 218, column: 5, scope: !605)
!665 = distinct !DISubprogram(name: "createZiplistObject", scope: !1, file: !1, line: 221, type: !606, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !666)
!666 = !{!667, !668}
!667 = !DILocalVariable(name: "zl", scope: !665, file: !1, line: 222, type: !624)
!668 = !DILocalVariable(name: "o", scope: !665, file: !1, line: 223, type: !115)
!669 = !DILocation(line: 222, column: 25, scope: !665)
!670 = !DILocation(line: 222, column: 20, scope: !665)
!671 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !672)
!672 = distinct !DILocation(line: 223, column: 15, scope: !665)
!673 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !672)
!674 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !672)
!675 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !672)
!676 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !672)
!677 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !672)
!678 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !672)
!679 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !672)
!680 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !672)
!681 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !672)
!682 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !672)
!683 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !672)
!684 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !672)
!685 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !672)
!686 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !672)
!687 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !672)
!688 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !672)
!689 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !672)
!690 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !672)
!691 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !672)
!692 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !672)
!693 = !DILocation(line: 223, column: 11, scope: !665)
!694 = !DILocation(line: 224, column: 17, scope: !665)
!695 = !DILocation(line: 225, column: 5, scope: !665)
!696 = distinct !DISubprogram(name: "createSetObject", scope: !1, file: !1, line: 228, type: !606, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !697)
!697 = !{!698, !699}
!698 = !DILocalVariable(name: "d", scope: !696, file: !1, line: 229, type: !6)
!699 = !DILocalVariable(name: "o", scope: !696, file: !1, line: 230, type: !115)
!700 = !DILocation(line: 229, column: 15, scope: !696)
!701 = !DILocation(line: 229, column: 11, scope: !696)
!702 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !703)
!703 = distinct !DILocation(line: 230, column: 15, scope: !696)
!704 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !703)
!705 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !703)
!706 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !703)
!707 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !703)
!708 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !703)
!709 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !703)
!710 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !703)
!711 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !703)
!712 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !703)
!713 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !703)
!714 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !703)
!715 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !703)
!716 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !703)
!717 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !703)
!718 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !703)
!719 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !703)
!720 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !703)
!721 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !703)
!722 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !703)
!723 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !703)
!724 = !DILocation(line: 230, column: 11, scope: !696)
!725 = !DILocation(line: 231, column: 17, scope: !696)
!726 = !DILocation(line: 232, column: 5, scope: !696)
!727 = distinct !DISubprogram(name: "createIntsetObject", scope: !1, file: !1, line: 235, type: !606, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !728)
!728 = !{!729, !742}
!729 = !DILocalVariable(name: "is", scope: !727, file: !1, line: 236, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "intset", file: !732, line: 39, baseType: !733)
!732 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.h", directory: "/root/.unikraft/apps/redis/build")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intset", file: !732, line: 35, size: 64, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !733, file: !732, line: 36, baseType: !150, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !733, file: !732, line: 37, baseType: !150, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !733, file: !732, line: 38, baseType: !738, offset: 64)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, elements: !108)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !21, line: 20, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !23, line: 41, baseType: !741)
!741 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!742 = !DILocalVariable(name: "o", scope: !727, file: !1, line: 237, type: !115)
!743 = !DILocation(line: 236, column: 18, scope: !727)
!744 = !DILocation(line: 236, column: 13, scope: !727)
!745 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !746)
!746 = distinct !DILocation(line: 237, column: 15, scope: !727)
!747 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !746)
!748 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !746)
!749 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !746)
!750 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !746)
!751 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !746)
!752 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !746)
!753 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !746)
!754 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !746)
!755 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !746)
!756 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !746)
!757 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !746)
!758 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !746)
!759 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !746)
!760 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !746)
!761 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !746)
!762 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !746)
!763 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !746)
!764 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !746)
!765 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !746)
!766 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !746)
!767 = !DILocation(line: 237, column: 11, scope: !727)
!768 = !DILocation(line: 238, column: 17, scope: !727)
!769 = !DILocation(line: 239, column: 5, scope: !727)
!770 = distinct !DISubprogram(name: "createHashObject", scope: !1, file: !1, line: 242, type: !606, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !771)
!771 = !{!772, !773}
!772 = !DILocalVariable(name: "zl", scope: !770, file: !1, line: 243, type: !624)
!773 = !DILocalVariable(name: "o", scope: !770, file: !1, line: 244, type: !115)
!774 = !DILocation(line: 243, column: 25, scope: !770)
!775 = !DILocation(line: 243, column: 20, scope: !770)
!776 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !777)
!777 = distinct !DILocation(line: 244, column: 15, scope: !770)
!778 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !777)
!779 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !777)
!780 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !777)
!781 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !777)
!782 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !777)
!783 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !777)
!784 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !777)
!785 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !777)
!786 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !777)
!787 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !777)
!788 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !777)
!789 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !777)
!790 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !777)
!791 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !777)
!792 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !777)
!793 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !777)
!794 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !777)
!795 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !777)
!796 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !777)
!797 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !777)
!798 = !DILocation(line: 244, column: 11, scope: !770)
!799 = !DILocation(line: 245, column: 17, scope: !770)
!800 = !DILocation(line: 246, column: 5, scope: !770)
!801 = distinct !DISubprogram(name: "createZsetObject", scope: !1, file: !1, line: 249, type: !606, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !802)
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "zs", scope: !801, file: !1, line: 250, type: !82)
!804 = !DILocalVariable(name: "o", scope: !801, file: !1, line: 251, type: !115)
!805 = !DILocation(line: 250, column: 16, scope: !801)
!806 = !DILocation(line: 250, column: 11, scope: !801)
!807 = !DILocation(line: 253, column: 16, scope: !801)
!808 = !DILocation(line: 253, column: 9, scope: !801)
!809 = !DILocation(line: 253, column: 14, scope: !801)
!810 = !{!811, !187, i64 0}
!811 = !{!"zset", !187, i64 0, !187, i64 8}
!812 = !DILocation(line: 254, column: 15, scope: !801)
!813 = !DILocation(line: 254, column: 9, scope: !801)
!814 = !DILocation(line: 254, column: 13, scope: !801)
!815 = !{!811, !187, i64 8}
!816 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !817)
!817 = distinct !DILocation(line: 255, column: 9, scope: !801)
!818 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !817)
!819 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !817)
!820 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !817)
!821 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !817)
!822 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !817)
!823 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !817)
!824 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !817)
!825 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !817)
!826 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !817)
!827 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !817)
!828 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !817)
!829 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !817)
!830 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !817)
!831 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !817)
!832 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !817)
!833 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !817)
!834 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !817)
!835 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !817)
!836 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !817)
!837 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !817)
!838 = !DILocation(line: 251, column: 11, scope: !801)
!839 = !DILocation(line: 256, column: 17, scope: !801)
!840 = !DILocation(line: 257, column: 5, scope: !801)
!841 = distinct !DISubprogram(name: "createZsetZiplistObject", scope: !1, file: !1, line: 260, type: !606, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "zl", scope: !841, file: !1, line: 261, type: !624)
!844 = !DILocalVariable(name: "o", scope: !841, file: !1, line: 262, type: !115)
!845 = !DILocation(line: 261, column: 25, scope: !841)
!846 = !DILocation(line: 261, column: 20, scope: !841)
!847 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !848)
!848 = distinct !DILocation(line: 262, column: 15, scope: !841)
!849 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !848)
!850 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !848)
!851 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !848)
!852 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !848)
!853 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !848)
!854 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !848)
!855 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !848)
!856 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !848)
!857 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !848)
!858 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !848)
!859 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !848)
!860 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !848)
!861 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !848)
!862 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !848)
!863 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !848)
!864 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !848)
!865 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !848)
!866 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !848)
!867 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !848)
!868 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !848)
!869 = !DILocation(line: 262, column: 11, scope: !841)
!870 = !DILocation(line: 263, column: 17, scope: !841)
!871 = !DILocation(line: 264, column: 5, scope: !841)
!872 = distinct !DISubprogram(name: "createStreamObject", scope: !1, file: !1, line: 267, type: !606, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !873)
!873 = !{!874, !907}
!874 = !DILocalVariable(name: "s", scope: !872, file: !1, line: 268, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !877, line: 21, baseType: !878)
!877 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !877, line: 16, size: 320, elements: !879)
!879 = !{!880, !899, !900, !906}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !878, file: !877, line: 17, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !883, line: 137, baseType: !884)
!883 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !883, line: 133, size: 192, elements: !885)
!885 = !{!886, !897, !898}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !884, file: !883, line: 134, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !883, line: 131, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !883, line: 98, size: 32, elements: !890)
!890 = !{!891, !892, !893, !894, !895}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !889, file: !883, line: 99, baseType: !150, size: 1, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !889, file: !883, line: 100, baseType: !150, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !889, file: !883, line: 101, baseType: !150, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !889, file: !883, line: 102, baseType: !150, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !889, file: !883, line: 130, baseType: !896, offset: 32)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !108)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !884, file: !883, line: 135, baseType: !20, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !884, file: !883, line: 136, baseType: !20, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !878, file: !877, line: 18, baseType: !20, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !878, file: !877, line: 19, baseType: !901, size: 128, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !877, line: 14, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !877, line: 11, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !902, file: !877, line: 12, baseType: !20, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !902, file: !877, line: 13, baseType: !20, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !878, file: !877, line: 20, baseType: !881, size: 64, offset: 256)
!907 = !DILocalVariable(name: "o", scope: !872, file: !1, line: 269, type: !115)
!908 = !DILocation(line: 268, column: 17, scope: !872)
!909 = !DILocation(line: 268, column: 13, scope: !872)
!910 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !911)
!911 = distinct !DILocation(line: 269, column: 15, scope: !872)
!912 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !911)
!913 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !911)
!914 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !911)
!915 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !911)
!916 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !911)
!917 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !911)
!918 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !911)
!919 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !911)
!920 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !911)
!921 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !911)
!922 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !911)
!923 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !911)
!924 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !911)
!925 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !911)
!926 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !911)
!927 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !911)
!928 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !911)
!929 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !911)
!930 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !911)
!931 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !911)
!932 = !DILocation(line: 269, column: 11, scope: !872)
!933 = !DILocation(line: 270, column: 17, scope: !872)
!934 = !DILocation(line: 271, column: 5, scope: !872)
!935 = distinct !DISubprogram(name: "createModuleObject", scope: !1, file: !1, line: 274, type: !936, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1277)
!936 = !DISubroutineType(types: !937)
!937 = !{!115, !938, !4}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !84, line: 530, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !84, line: 517, size: 768, elements: !941)
!941 = !{!942, !943, !946, !1229, !1234, !1239, !1244, !1257, !1262, !1267, !1272, !1273}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !940, file: !84, line: 518, baseType: !20, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !940, file: !84, line: 519, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !84, line: 496, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !940, file: !84, line: 520, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !84, line: 506, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!4, !951, !36}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !84, line: 555, size: 384, elements: !953)
!953 = !{!954, !955, !1221, !1222, !1223, !1224, !1227}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !952, file: !84, line: 556, baseType: !77, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !952, file: !84, line: 557, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !958, line: 87, baseType: !959)
!958 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !958, line: 39, size: 832, elements: !960)
!960 = !{!961, !966, !970, !978, !982, !986, !987, !988, !989}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !959, file: !958, line: 43, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!491, !965, !4, !491}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !959, file: !958, line: 44, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!491, !965, !25, !491}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !959, file: !958, line: 45, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !965}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !975, line: 173, baseType: !976)
!975 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 100, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !80, line: 44, baseType: !5)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !959, file: !958, line: 46, baseType: !979, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!36, !965}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !959, file: !958, line: 52, baseType: !983, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !965, !25, !491}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !959, file: !958, line: 55, baseType: !20, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !959, file: !958, line: 58, baseType: !491, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !959, file: !958, line: 61, baseType: !491, size: 64, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !959, file: !958, line: 84, baseType: !990, size: 320, offset: 512)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !958, line: 64, size: 320, elements: !991)
!991 = !{!992, !997, !1212}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !990, file: !958, line: 69, baseType: !993, size: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !958, line: 66, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !993, file: !958, line: 67, baseType: !98, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !993, file: !958, line: 68, baseType: !974, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !990, file: !958, line: 75, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !958, line: 71, size: 192, elements: !999)
!999 = !{!1000, !1210, !1211}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !998, file: !958, line: 72, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1003, line: 66, baseType: !1004)
!1003 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1005, line: 287, baseType: !1006)
!1005 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1005, line: 181, size: 1408, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1013, !1014, !1019, !1020, !1021, !1180, !1184, !1189, !1193, !1194, !1195, !1196, !1198, !1200, !1201, !1202, !1203, !1204, !1208, !1209}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1006, file: !1005, line: 182, baseType: !624, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1006, file: !1005, line: 183, baseType: !36, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1006, file: !1005, line: 184, baseType: !36, size: 32, offset: 96)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1006, file: !1005, line: 185, baseType: !1012, size: 16, offset: 128)
!1012 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1006, file: !1005, line: 186, baseType: !1012, size: 16, offset: 144)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1006, file: !1005, line: 187, baseType: !1015, size: 128, offset: 192)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1005, line: 117, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1015, file: !1005, line: 118, baseType: !624, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1015, file: !1005, line: 119, baseType: !36, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1006, file: !1005, line: 188, baseType: !36, size: 32, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1006, file: !1005, line: 195, baseType: !4, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1006, file: !1005, line: 197, baseType: !1022, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!1025, !1026, !4, !81, !36}
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !80, line: 145, baseType: !5)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !1005, line: 569, size: 14912, elements: !1028)
!1028 = !{!1029, !1030, !1032, !1033, !1034, !1035, !1039, !1040, !1043, !1044, !1048, !1062, !1063, !1064, !1066, !1067, !1068, !1144, !1165, !1166, !1171, !1178}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1027, file: !1005, line: 571, baseType: !36, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1027, file: !1005, line: 576, baseType: !1031, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1027, file: !1005, line: 576, baseType: !1031, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1027, file: !1005, line: 576, baseType: !1031, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1027, file: !1005, line: 578, baseType: !36, size: 32, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1027, file: !1005, line: 579, baseType: !1036, size: 200, offset: 288)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 200, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 25)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1027, file: !1005, line: 582, baseType: !36, size: 32, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1027, file: !1005, line: 583, baseType: !1041, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !1005, line: 40, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1027, file: !1005, line: 585, baseType: !36, size: 32, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1027, file: !1005, line: 587, baseType: !1045, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1026}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1027, file: !1005, line: 590, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !1005, line: 47, size: 256, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1050, file: !1005, line: 49, baseType: !1049, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1050, file: !1005, line: 50, baseType: !36, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1050, file: !1005, line: 50, baseType: !36, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1050, file: !1005, line: 50, baseType: !36, size: 32, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1050, file: !1005, line: 50, baseType: !36, size: 32, offset: 160)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1050, file: !1005, line: 51, baseType: !1058, size: 32, offset: 192)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 32, elements: !1060)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !1005, line: 25, baseType: !120)
!1060 = !{!1061}
!1061 = !DISubrange(count: 1)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1027, file: !1005, line: 591, baseType: !36, size: 32, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1027, file: !1005, line: 592, baseType: !1049, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1027, file: !1005, line: 593, baseType: !1065, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1027, file: !1005, line: 596, baseType: !36, size: 32, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1027, file: !1005, line: 597, baseType: !81, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !1027, file: !1005, line: 632, baseType: !1069, size: 2880, offset: 1152)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1027, file: !1005, line: 599, size: 2880, elements: !1070)
!1070 = !{!1071, !1135}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1069, file: !1005, line: 622, baseType: !1072, size: 1728)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1005, line: 601, size: 1728, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1080, !1092, !1093, !1095, !1104, !1118, !1119, !1120, !1124, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1072, file: !1005, line: 603, baseType: !120, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1072, file: !1005, line: 604, baseType: !81, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1072, file: !1005, line: 605, baseType: !1077, size: 208, offset: 128)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 208, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 26)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1072, file: !1005, line: 606, baseType: !1081, size: 288, offset: 352)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !1005, line: 55, size: 288, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1081, file: !1005, line: 57, baseType: !36, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1081, file: !1005, line: 58, baseType: !36, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1081, file: !1005, line: 59, baseType: !36, size: 32, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1081, file: !1005, line: 60, baseType: !36, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1081, file: !1005, line: 61, baseType: !36, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1081, file: !1005, line: 62, baseType: !36, size: 32, offset: 160)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1081, file: !1005, line: 63, baseType: !36, size: 32, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1081, file: !1005, line: 64, baseType: !36, size: 32, offset: 224)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1081, file: !1005, line: 65, baseType: !36, size: 32, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1072, file: !1005, line: 607, baseType: !36, size: 32, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1072, file: !1005, line: 608, baseType: !1094, size: 64, offset: 704)
!1094 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1072, file: !1005, line: 609, baseType: !1096, size: 112, offset: 768)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !1005, line: 319, size: 112, elements: !1097)
!1097 = !{!1098, !1102, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1096, file: !1005, line: 320, baseType: !1099, size: 48)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 48, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 3)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1096, file: !1005, line: 321, baseType: !1099, size: 48, offset: 48)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1096, file: !1005, line: 322, baseType: !142, size: 16, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1072, file: !1005, line: 610, baseType: !1105, size: 64, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !80, line: 171, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 163, size: 64, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1106, file: !80, line: 165, baseType: !36, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1106, file: !80, line: 170, baseType: !1110, size: 32, offset: 32)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !80, line: 166, size: 32, elements: !1111)
!1111 = !{!1112, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1110, file: !80, line: 168, baseType: !1113, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !492, line: 124, baseType: !120)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1110, file: !80, line: 169, baseType: !1115, size: 32)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 4)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1072, file: !1005, line: 611, baseType: !1105, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1072, file: !1005, line: 612, baseType: !1105, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1072, file: !1005, line: 613, baseType: !1121, size: 64, offset: 1088)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 8)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1072, file: !1005, line: 614, baseType: !1125, size: 192, offset: 1152)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 192, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 24)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1072, file: !1005, line: 615, baseType: !36, size: 32, offset: 1344)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1072, file: !1005, line: 616, baseType: !1105, size: 64, offset: 1376)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1072, file: !1005, line: 617, baseType: !1105, size: 64, offset: 1440)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1072, file: !1005, line: 618, baseType: !1105, size: 64, offset: 1504)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1072, file: !1005, line: 619, baseType: !1105, size: 64, offset: 1568)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1072, file: !1005, line: 620, baseType: !1105, size: 64, offset: 1632)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1072, file: !1005, line: 621, baseType: !36, size: 32, offset: 1696)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1069, file: !1005, line: 631, baseType: !1136, size: 2880)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1005, line: 626, size: 2880, elements: !1137)
!1137 = !{!1138, !1142}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !1136, file: !1005, line: 629, baseType: !1139, size: 1920)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 1920, elements: !1140)
!1140 = !{!1141}
!1141 = !DISubrange(count: 30)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !1136, file: !1005, line: 630, baseType: !1143, size: 960, offset: 1920)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 960, elements: !1140)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1027, file: !1005, line: 636, baseType: !1145, size: 64, offset: 4032)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !1005, line: 93, size: 6336, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1157}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1146, file: !1005, line: 94, baseType: !1145, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1146, file: !1005, line: 95, baseType: !36, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1146, file: !1005, line: 97, baseType: !1151, size: 2048, offset: 128)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 2048, elements: !1155)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null}
!1155 = !{!1156}
!1156 = !DISubrange(count: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !1146, file: !1005, line: 98, baseType: !1158, size: 4160, offset: 2176)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !1005, line: 74, size: 4160, elements: !1159)
!1159 = !{!1160, !1162, !1163, !1164}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1158, file: !1005, line: 75, baseType: !1161, size: 2048)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1155)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1158, file: !1005, line: 76, baseType: !1161, size: 2048, offset: 2048)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1158, file: !1005, line: 78, baseType: !1059, size: 32, offset: 4096)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1158, file: !1005, line: 81, baseType: !1059, size: 32, offset: 4128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1027, file: !1005, line: 637, baseType: !1146, size: 6336, offset: 4096)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1027, file: !1005, line: 641, baseType: !1167, size: 64, offset: 10432)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !36}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1027, file: !1005, line: 646, baseType: !1172, size: 192, offset: 10496)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !1005, line: 291, size: 192, elements: !1173)
!1173 = !{!1174, !1176, !1177}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1172, file: !1005, line: 293, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1172, file: !1005, line: 294, baseType: !36, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1172, file: !1005, line: 295, baseType: !1031, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1027, file: !1005, line: 648, baseType: !1179, size: 4224, offset: 10688)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 4224, elements: !1100)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1006, file: !1005, line: 199, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1025, !1026, !4, !74, !36}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1006, file: !1005, line: 202, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1188, !1026, !4, !1188, !36}
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !80, line: 114, baseType: !5)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1006, file: !1005, line: 203, baseType: !1190, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!36, !1026, !4}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1006, file: !1005, line: 206, baseType: !1015, size: 128, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !1006, file: !1005, line: 207, baseType: !624, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1006, file: !1005, line: 208, baseType: !36, size: 32, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1006, file: !1005, line: 211, baseType: !1197, size: 24, offset: 928)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 24, elements: !1100)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1006, file: !1005, line: 212, baseType: !1199, size: 8, offset: 952)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 8, elements: !1060)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1006, file: !1005, line: 215, baseType: !1015, size: 128, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1006, file: !1005, line: 218, baseType: !36, size: 32, offset: 1088)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1006, file: !1005, line: 219, baseType: !977, size: 64, offset: 1152)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1006, file: !1005, line: 222, baseType: !1026, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1006, file: !1005, line: 226, baseType: !1205, size: 32, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !80, line: 175, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !1207, line: 12, baseType: !36)
!1207 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !1006, file: !1005, line: 228, baseType: !1105, size: 64, offset: 1312)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1006, file: !1005, line: 229, baseType: !36, size: 32, offset: 1376)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !998, file: !958, line: 73, baseType: !974, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !998, file: !958, line: 74, baseType: !974, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !990, file: !958, line: 83, baseType: !1213, size: 320)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !990, file: !958, line: 77, size: 320, elements: !1214)
!1214 = !{!1215, !1217, !1218, !1219, !1220}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !1213, file: !958, line: 78, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1213, file: !958, line: 79, baseType: !1216, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !1213, file: !958, line: 80, baseType: !36, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1213, file: !958, line: 81, baseType: !974, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1213, file: !958, line: 82, baseType: !98, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !952, file: !84, line: 558, baseType: !938, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !952, file: !84, line: 559, baseType: !36, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !952, file: !84, line: 560, baseType: !36, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !952, file: !84, line: 562, baseType: !1225, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !84, line: 499, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !952, file: !84, line: 563, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !940, file: !84, line: 521, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !84, line: 507, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !951, !4}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !940, file: !84, line: 522, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !84, line: 510, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !951, !1228, !4}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !940, file: !84, line: 523, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !84, line: 512, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!77, !25}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !940, file: !84, line: 524, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !84, line: 511, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !1249, !4}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !84, line: 583, size: 320, elements: !1251)
!1251 = !{!1252, !1256}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !1250, file: !84, line: 584, baseType: !1253, size: 160)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 160, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 20)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1250, file: !84, line: 585, baseType: !1253, size: 160, offset: 160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !940, file: !84, line: 525, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !84, line: 513, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !4}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !940, file: !84, line: 526, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !84, line: 508, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!36, !951, !36, !36}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !940, file: !84, line: 527, baseType: !1268, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !84, line: 509, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !951, !36}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !940, file: !84, line: 528, baseType: !36, size: 32, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !940, file: !84, line: 529, baseType: !1274, size: 80, offset: 672)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 80, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 10)
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "mt", arg: 1, scope: !935, file: !1, line: 274, type: !938)
!1279 = !DILocalVariable(name: "value", arg: 2, scope: !935, file: !1, line: 274, type: !4)
!1280 = !DILocalVariable(name: "mv", scope: !935, file: !1, line: 275, type: !1281)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !84, line: 550, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !84, line: 547, size: 128, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1283, file: !84, line: 548, baseType: !938, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1283, file: !84, line: 549, baseType: !4, size: 64, offset: 64)
!1287 = !DILocation(line: 274, column: 38, scope: !935)
!1288 = !DILocation(line: 274, column: 48, scope: !935)
!1289 = !DILocation(line: 275, column: 23, scope: !935)
!1290 = !DILocation(line: 275, column: 18, scope: !935)
!1291 = !DILocation(line: 276, column: 9, scope: !935)
!1292 = !DILocation(line: 276, column: 14, scope: !935)
!1293 = !{!1294, !187, i64 0}
!1294 = !{!"moduleValue", !187, i64 0, !187, i64 8}
!1295 = !DILocation(line: 277, column: 9, scope: !935)
!1296 = !DILocation(line: 277, column: 15, scope: !935)
!1297 = !{!1294, !187, i64 8}
!1298 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 278, column: 12, scope: !935)
!1300 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !1299)
!1301 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !1299)
!1302 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !1299)
!1303 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !1299)
!1304 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !1299)
!1305 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !1299)
!1306 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !1299)
!1307 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !1299)
!1308 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !1299)
!1309 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !1299)
!1310 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !1299)
!1311 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !1299)
!1312 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !1299)
!1313 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !1299)
!1314 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !1299)
!1315 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !1299)
!1316 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !1299)
!1317 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !1299)
!1318 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !1299)
!1319 = !DILocation(line: 0, scope: !204, inlinedAt: !1299)
!1320 = !DILocation(line: 55, column: 5, scope: !166, inlinedAt: !1299)
!1321 = !DILocation(line: 278, column: 5, scope: !935)
!1322 = distinct !DISubprogram(name: "freeStringObject", scope: !1, file: !1, line: 281, type: !384, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1323)
!1323 = !{!1324}
!1324 = !DILocalVariable(name: "o", arg: 1, scope: !1322, file: !1, line: 281, type: !115)
!1325 = !DILocation(line: 281, column: 29, scope: !1322)
!1326 = !DILocation(line: 282, column: 12, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 282, column: 9)
!1328 = !DILocation(line: 282, column: 21, scope: !1327)
!1329 = !DILocation(line: 282, column: 9, scope: !1322)
!1330 = !DILocation(line: 283, column: 20, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 282, column: 42)
!1332 = !DILocation(line: 283, column: 9, scope: !1331)
!1333 = !DILocation(line: 284, column: 5, scope: !1331)
!1334 = !DILocation(line: 285, column: 1, scope: !1322)
!1335 = distinct !DISubprogram(name: "freeListObject", scope: !1, file: !1, line: 287, type: !384, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1336)
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !1, line: 287, type: !115)
!1338 = !DILocation(line: 287, column: 27, scope: !1335)
!1339 = !DILocation(line: 288, column: 12, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 288, column: 9)
!1341 = !DILocation(line: 288, column: 21, scope: !1340)
!1342 = !DILocation(line: 288, column: 9, scope: !1335)
!1343 = !DILocation(line: 289, column: 29, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 288, column: 48)
!1345 = !DILocation(line: 289, column: 9, scope: !1344)
!1346 = !DILocation(line: 293, column: 1, scope: !1335)
!1347 = !DILocation(line: 291, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 290, column: 12)
!1349 = distinct !DISubprogram(name: "freeSetObject", scope: !1, file: !1, line: 295, type: !384, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1350)
!1350 = !{!1351}
!1351 = !DILocalVariable(name: "o", arg: 1, scope: !1349, file: !1, line: 295, type: !115)
!1352 = !DILocation(line: 295, column: 26, scope: !1349)
!1353 = !DILocation(line: 296, column: 16, scope: !1349)
!1354 = !DILocation(line: 296, column: 5, scope: !1349)
!1355 = !DILocation(line: 298, column: 32, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 296, column: 26)
!1357 = !DILocation(line: 298, column: 9, scope: !1356)
!1358 = !DILocation(line: 299, column: 9, scope: !1356)
!1359 = !DILocation(line: 301, column: 18, scope: !1356)
!1360 = !DILocation(line: 301, column: 9, scope: !1356)
!1361 = !DILocation(line: 302, column: 9, scope: !1356)
!1362 = !DILocation(line: 304, column: 9, scope: !1356)
!1363 = !DILocation(line: 306, column: 1, scope: !1349)
!1364 = distinct !DISubprogram(name: "freeZsetObject", scope: !1, file: !1, line: 308, type: !384, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1365)
!1365 = !{!1366, !1367}
!1366 = !DILocalVariable(name: "o", arg: 1, scope: !1364, file: !1, line: 308, type: !115)
!1367 = !DILocalVariable(name: "zs", scope: !1364, file: !1, line: 309, type: !82)
!1368 = !DILocation(line: 308, column: 27, scope: !1364)
!1369 = !DILocation(line: 310, column: 16, scope: !1364)
!1370 = !DILocation(line: 310, column: 5, scope: !1364)
!1371 = !DILocation(line: 312, column: 17, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !1, line: 310, column: 26)
!1373 = !DILocation(line: 309, column: 11, scope: !1364)
!1374 = !DILocation(line: 313, column: 25, scope: !1372)
!1375 = !DILocation(line: 313, column: 9, scope: !1372)
!1376 = !DILocation(line: 314, column: 21, scope: !1372)
!1377 = !DILocation(line: 314, column: 9, scope: !1372)
!1378 = !DILocation(line: 315, column: 9, scope: !1372)
!1379 = !DILocation(line: 316, column: 9, scope: !1372)
!1380 = !DILocation(line: 318, column: 18, scope: !1372)
!1381 = !DILocation(line: 318, column: 9, scope: !1372)
!1382 = !DILocation(line: 319, column: 9, scope: !1372)
!1383 = !DILocation(line: 321, column: 9, scope: !1372)
!1384 = !DILocation(line: 323, column: 1, scope: !1364)
!1385 = distinct !DISubprogram(name: "freeHashObject", scope: !1, file: !1, line: 325, type: !384, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1386)
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "o", arg: 1, scope: !1385, file: !1, line: 325, type: !115)
!1388 = !DILocation(line: 325, column: 27, scope: !1385)
!1389 = !DILocation(line: 326, column: 16, scope: !1385)
!1390 = !DILocation(line: 326, column: 5, scope: !1385)
!1391 = !DILocation(line: 328, column: 32, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !1, line: 326, column: 26)
!1393 = !DILocation(line: 328, column: 9, scope: !1392)
!1394 = !DILocation(line: 329, column: 9, scope: !1392)
!1395 = !DILocation(line: 331, column: 18, scope: !1392)
!1396 = !DILocation(line: 331, column: 9, scope: !1392)
!1397 = !DILocation(line: 332, column: 9, scope: !1392)
!1398 = !DILocation(line: 334, column: 9, scope: !1392)
!1399 = !DILocation(line: 337, column: 1, scope: !1385)
!1400 = distinct !DISubprogram(name: "freeModuleObject", scope: !1, file: !1, line: 339, type: !384, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1401)
!1401 = !{!1402, !1403}
!1402 = !DILocalVariable(name: "o", arg: 1, scope: !1400, file: !1, line: 339, type: !115)
!1403 = !DILocalVariable(name: "mv", scope: !1400, file: !1, line: 340, type: !1281)
!1404 = !DILocation(line: 339, column: 29, scope: !1400)
!1405 = !DILocation(line: 340, column: 26, scope: !1400)
!1406 = !DILocation(line: 340, column: 18, scope: !1400)
!1407 = !DILocation(line: 341, column: 9, scope: !1400)
!1408 = !DILocation(line: 341, column: 15, scope: !1400)
!1409 = !{!1410, !187, i64 56}
!1410 = !{!"RedisModuleType", !195, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !184, i64 80, !185, i64 84}
!1411 = !DILocation(line: 341, column: 24, scope: !1400)
!1412 = !DILocation(line: 341, column: 5, scope: !1400)
!1413 = !DILocation(line: 342, column: 5, scope: !1400)
!1414 = !DILocation(line: 343, column: 1, scope: !1400)
!1415 = distinct !DISubprogram(name: "freeStreamObject", scope: !1, file: !1, line: 345, type: !384, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1416)
!1416 = !{!1417}
!1417 = !DILocalVariable(name: "o", arg: 1, scope: !1415, file: !1, line: 345, type: !115)
!1418 = !DILocation(line: 345, column: 29, scope: !1415)
!1419 = !DILocation(line: 346, column: 19, scope: !1415)
!1420 = !DILocation(line: 346, column: 5, scope: !1415)
!1421 = !DILocation(line: 347, column: 1, scope: !1415)
!1422 = distinct !DISubprogram(name: "decrRefCount", scope: !1, file: !1, line: 353, type: !384, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1423)
!1423 = !{!1424}
!1424 = !DILocalVariable(name: "o", arg: 1, scope: !1422, file: !1, line: 353, type: !115)
!1425 = !DILocation(line: 353, column: 25, scope: !1422)
!1426 = !DILocation(line: 354, column: 12, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 354, column: 9)
!1428 = !DILocation(line: 354, column: 21, scope: !1427)
!1429 = !DILocation(line: 354, column: 9, scope: !1422)
!1430 = !DILocation(line: 355, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 354, column: 27)
!1432 = !DILocation(line: 355, column: 9, scope: !1431)
!1433 = !DILocation(line: 281, column: 29, scope: !1322, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 356, column: 26, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 355, column: 25)
!1436 = !DILocation(line: 282, column: 12, scope: !1327, inlinedAt: !1434)
!1437 = !DILocation(line: 282, column: 21, scope: !1327, inlinedAt: !1434)
!1438 = !DILocation(line: 282, column: 9, scope: !1322, inlinedAt: !1434)
!1439 = !DILocation(line: 283, column: 20, scope: !1331, inlinedAt: !1434)
!1440 = !DILocation(line: 283, column: 9, scope: !1331, inlinedAt: !1434)
!1441 = !DILocation(line: 284, column: 5, scope: !1331, inlinedAt: !1434)
!1442 = !DILocation(line: 285, column: 1, scope: !1322, inlinedAt: !1434)
!1443 = !DILocation(line: 356, column: 47, scope: !1435)
!1444 = !DILocation(line: 287, column: 27, scope: !1335, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 357, column: 24, scope: !1435)
!1446 = !DILocation(line: 288, column: 12, scope: !1340, inlinedAt: !1445)
!1447 = !DILocation(line: 288, column: 21, scope: !1340, inlinedAt: !1445)
!1448 = !DILocation(line: 288, column: 9, scope: !1335, inlinedAt: !1445)
!1449 = !DILocation(line: 291, column: 9, scope: !1348, inlinedAt: !1445)
!1450 = !DILocation(line: 289, column: 29, scope: !1344, inlinedAt: !1445)
!1451 = !DILocation(line: 289, column: 9, scope: !1344, inlinedAt: !1445)
!1452 = !DILocation(line: 293, column: 1, scope: !1335, inlinedAt: !1445)
!1453 = !DILocation(line: 357, column: 43, scope: !1435)
!1454 = !DILocation(line: 295, column: 26, scope: !1349, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 358, column: 23, scope: !1435)
!1456 = !DILocation(line: 296, column: 16, scope: !1349, inlinedAt: !1455)
!1457 = !DILocation(line: 296, column: 5, scope: !1349, inlinedAt: !1455)
!1458 = !DILocation(line: 298, column: 32, scope: !1356, inlinedAt: !1455)
!1459 = !DILocation(line: 298, column: 9, scope: !1356, inlinedAt: !1455)
!1460 = !DILocation(line: 299, column: 9, scope: !1356, inlinedAt: !1455)
!1461 = !DILocation(line: 301, column: 18, scope: !1356, inlinedAt: !1455)
!1462 = !DILocation(line: 301, column: 9, scope: !1356, inlinedAt: !1455)
!1463 = !DILocation(line: 302, column: 9, scope: !1356, inlinedAt: !1455)
!1464 = !DILocation(line: 304, column: 9, scope: !1356, inlinedAt: !1455)
!1465 = !DILocation(line: 306, column: 1, scope: !1349, inlinedAt: !1455)
!1466 = !DILocation(line: 358, column: 41, scope: !1435)
!1467 = !DILocation(line: 359, column: 24, scope: !1435)
!1468 = !DILocation(line: 359, column: 43, scope: !1435)
!1469 = !DILocation(line: 325, column: 27, scope: !1385, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 360, column: 24, scope: !1435)
!1471 = !DILocation(line: 326, column: 16, scope: !1385, inlinedAt: !1470)
!1472 = !DILocation(line: 326, column: 5, scope: !1385, inlinedAt: !1470)
!1473 = !DILocation(line: 328, column: 32, scope: !1392, inlinedAt: !1470)
!1474 = !DILocation(line: 328, column: 9, scope: !1392, inlinedAt: !1470)
!1475 = !DILocation(line: 329, column: 9, scope: !1392, inlinedAt: !1470)
!1476 = !DILocation(line: 331, column: 18, scope: !1392, inlinedAt: !1470)
!1477 = !DILocation(line: 331, column: 9, scope: !1392, inlinedAt: !1470)
!1478 = !DILocation(line: 332, column: 9, scope: !1392, inlinedAt: !1470)
!1479 = !DILocation(line: 334, column: 9, scope: !1392, inlinedAt: !1470)
!1480 = !DILocation(line: 337, column: 1, scope: !1385, inlinedAt: !1470)
!1481 = !DILocation(line: 360, column: 43, scope: !1435)
!1482 = !DILocation(line: 339, column: 29, scope: !1400, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 361, column: 26, scope: !1435)
!1484 = !DILocation(line: 340, column: 26, scope: !1400, inlinedAt: !1483)
!1485 = !DILocation(line: 340, column: 18, scope: !1400, inlinedAt: !1483)
!1486 = !DILocation(line: 341, column: 9, scope: !1400, inlinedAt: !1483)
!1487 = !DILocation(line: 341, column: 15, scope: !1400, inlinedAt: !1483)
!1488 = !DILocation(line: 341, column: 24, scope: !1400, inlinedAt: !1483)
!1489 = !DILocation(line: 341, column: 5, scope: !1400, inlinedAt: !1483)
!1490 = !DILocation(line: 342, column: 5, scope: !1400, inlinedAt: !1483)
!1491 = !DILocation(line: 343, column: 1, scope: !1400, inlinedAt: !1483)
!1492 = !DILocation(line: 361, column: 47, scope: !1435)
!1493 = !DILocation(line: 345, column: 29, scope: !1415, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 362, column: 26, scope: !1435)
!1495 = !DILocation(line: 346, column: 19, scope: !1415, inlinedAt: !1494)
!1496 = !DILocation(line: 346, column: 5, scope: !1415, inlinedAt: !1494)
!1497 = !DILocation(line: 347, column: 1, scope: !1415, inlinedAt: !1494)
!1498 = !DILocation(line: 362, column: 47, scope: !1435)
!1499 = !DILocation(line: 363, column: 18, scope: !1435)
!1500 = !DILocation(line: 365, column: 15, scope: !1431)
!1501 = !DILocation(line: 365, column: 9, scope: !1431)
!1502 = !DILocation(line: 366, column: 5, scope: !1431)
!1503 = !DILocation(line: 367, column: 25, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 367, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 366, column: 12)
!1506 = !DILocation(line: 367, column: 13, scope: !1505)
!1507 = !DILocation(line: 367, column: 31, scope: !1504)
!1508 = !DILocation(line: 368, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !1, line: 368, column: 13)
!1510 = !DILocation(line: 368, column: 13, scope: !1505)
!1511 = !DILocation(line: 368, column: 60, scope: !1509)
!1512 = !DILocation(line: 368, column: 49, scope: !1509)
!1513 = !DILocation(line: 370, column: 1, scope: !1422)
!1514 = distinct !DISubprogram(name: "decrRefCountVoid", scope: !1, file: !1, line: 375, type: !1260, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1515)
!1515 = !{!1516}
!1516 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !1, line: 375, type: !4)
!1517 = !DILocation(line: 375, column: 29, scope: !1514)
!1518 = !DILocation(line: 376, column: 18, scope: !1514)
!1519 = !DILocation(line: 376, column: 5, scope: !1514)
!1520 = !DILocation(line: 377, column: 1, scope: !1514)
!1521 = distinct !DISubprogram(name: "resetRefCount", scope: !1, file: !1, line: 391, type: !214, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1522)
!1522 = !{!1523}
!1523 = !DILocalVariable(name: "obj", arg: 1, scope: !1521, file: !1, line: 391, type: !115)
!1524 = !DILocation(line: 391, column: 27, scope: !1521)
!1525 = !DILocation(line: 392, column: 10, scope: !1521)
!1526 = !DILocation(line: 392, column: 19, scope: !1521)
!1527 = !DILocation(line: 393, column: 5, scope: !1521)
!1528 = distinct !DISubprogram(name: "checkType", scope: !1, file: !1, line: 396, type: !1529, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1686)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!36, !1531, !115, !36}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !84, line: 780, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !84, line: 723, size: 135360, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1583, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1635, !1636, !1640, !1641, !1657, !1658, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1533, file: !84, line: 724, baseType: !20, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1533, file: !84, line: 725, baseType: !36, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1533, file: !84, line: 726, baseType: !1538, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !84, line: 656, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !84, line: 647, size: 512, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1540, file: !84, line: 648, baseType: !6, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1540, file: !84, line: 649, baseType: !6, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1540, file: !84, line: 650, baseType: !6, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1540, file: !84, line: 651, baseType: !6, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1540, file: !84, line: 652, baseType: !6, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1540, file: !84, line: 653, baseType: !36, size: 32, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1540, file: !84, line: 654, baseType: !360, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1540, file: !84, line: 655, baseType: !1550, size: 64, offset: 448)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1552, line: 54, baseType: !1553)
!1552 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1552, line: 47, size: 384, elements: !1554)
!1554 = !{!1555, !1564, !1565, !1569, !1570, !1574}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1553, file: !1552, line: 48, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1552, line: 40, baseType: !1558)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1552, line: 36, size: 192, elements: !1559)
!1559 = !{!1560, !1562, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1558, file: !1552, line: 37, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1558, file: !1552, line: 38, baseType: !1561, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1558, file: !1552, line: 39, baseType: !4, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1553, file: !1552, line: 49, baseType: !1556, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1553, file: !1552, line: 50, baseType: !1566, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!4, !4}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1553, file: !1552, line: 51, baseType: !1259, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1553, file: !1552, line: 52, baseType: !1571, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!36, !4, !4}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1553, file: !1552, line: 53, baseType: !24, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1533, file: !84, line: 727, baseType: !115, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1533, file: !84, line: 728, baseType: !98, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1533, file: !84, line: 729, baseType: !77, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1533, file: !84, line: 730, baseType: !98, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1533, file: !84, line: 734, baseType: !77, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1533, file: !84, line: 735, baseType: !36, size: 32, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1533, file: !84, line: 736, baseType: !1582, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1533, file: !84, line: 737, baseType: !1584, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !84, line: 1307, size: 640, elements: !1586)
!1586 = !{!1587, !1588, !1593, !1594, !1595, !1596, !1601, !1602, !1603, !1604, !1605}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !84, line: 1308, baseType: !81, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1585, file: !84, line: 1309, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !84, line: 1305, baseType: !1591)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1531}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1585, file: !84, line: 1310, baseType: !36, size: 32, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1585, file: !84, line: 1311, baseType: !81, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !84, line: 1312, baseType: !36, size: 32, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1585, file: !84, line: 1315, baseType: !1597, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !84, line: 1306, baseType: !1599)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1216, !1584, !1582, !36, !1216}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1585, file: !84, line: 1317, baseType: !36, size: 32, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1585, file: !84, line: 1318, baseType: !36, size: 32, offset: 416)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1585, file: !84, line: 1319, baseType: !36, size: 32, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1585, file: !84, line: 1320, baseType: !360, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1585, file: !84, line: 1320, baseType: !360, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1533, file: !84, line: 737, baseType: !1584, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1533, file: !84, line: 738, baseType: !36, size: 32, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1533, file: !84, line: 739, baseType: !36, size: 32, offset: 800)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1533, file: !84, line: 740, baseType: !5, size: 64, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1533, file: !84, line: 741, baseType: !1550, size: 64, offset: 896)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1533, file: !84, line: 742, baseType: !1094, size: 64, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1533, file: !84, line: 743, baseType: !77, size: 64, offset: 1024)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1533, file: !84, line: 745, baseType: !1614, size: 64, offset: 1088)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1615, line: 34, baseType: !5)
!1615 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1533, file: !84, line: 746, baseType: !1614, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1533, file: !84, line: 747, baseType: !1614, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1533, file: !84, line: 748, baseType: !36, size: 32, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1533, file: !84, line: 749, baseType: !36, size: 32, offset: 1312)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1533, file: !84, line: 750, baseType: !36, size: 32, offset: 1344)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1533, file: !84, line: 751, baseType: !36, size: 32, offset: 1376)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1533, file: !84, line: 752, baseType: !36, size: 32, offset: 1408)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1533, file: !84, line: 753, baseType: !974, size: 64, offset: 1472)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1533, file: !84, line: 754, baseType: !974, size: 64, offset: 1536)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1533, file: !84, line: 755, baseType: !98, size: 64, offset: 1600)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1533, file: !84, line: 756, baseType: !360, size: 64, offset: 1664)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1533, file: !84, line: 757, baseType: !360, size: 64, offset: 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1533, file: !84, line: 758, baseType: !360, size: 64, offset: 1792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1533, file: !84, line: 759, baseType: !360, size: 64, offset: 1856)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1533, file: !84, line: 760, baseType: !360, size: 64, offset: 1920)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1533, file: !84, line: 763, baseType: !1632, size: 328, offset: 1984)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 328, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 41)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1533, file: !84, line: 764, baseType: !36, size: 32, offset: 2336)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1533, file: !84, line: 765, baseType: !1637, size: 368, offset: 2368)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 368, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 46)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1533, file: !84, line: 766, baseType: !36, size: 32, offset: 2752)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1533, file: !84, line: 767, baseType: !1642, size: 256, offset: 2816)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !84, line: 673, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !84, line: 665, size: 256, elements: !1644)
!1644 = !{!1645, !1653, !1654, !1655, !1656}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1643, file: !84, line: 666, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !84, line: 663, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !84, line: 659, size: 192, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1648, file: !84, line: 660, baseType: !1582, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1648, file: !84, line: 661, baseType: !36, size: 32, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1648, file: !84, line: 662, baseType: !1584, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1643, file: !84, line: 667, baseType: !36, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1643, file: !84, line: 668, baseType: !36, size: 32, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1643, file: !84, line: 671, baseType: !36, size: 32, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1643, file: !84, line: 672, baseType: !1614, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1533, file: !84, line: 768, baseType: !36, size: 32, offset: 3072)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1533, file: !84, line: 769, baseType: !1659, size: 704, offset: 3136)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !84, line: 703, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !84, line: 677, size: 704, elements: !1661)
!1661 = !{!1662, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1660, file: !84, line: 679, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !84, line: 52, baseType: !360)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1660, file: !84, line: 683, baseType: !6, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1660, file: !84, line: 685, baseType: !115, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1660, file: !84, line: 689, baseType: !77, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1660, file: !84, line: 690, baseType: !115, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1660, file: !84, line: 691, baseType: !115, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1660, file: !84, line: 692, baseType: !1663, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1660, file: !84, line: 692, baseType: !1663, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1660, file: !84, line: 693, baseType: !36, size: 32, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1660, file: !84, line: 696, baseType: !36, size: 32, offset: 544)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1660, file: !84, line: 697, baseType: !360, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1660, file: !84, line: 700, baseType: !4, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1533, file: !84, line: 770, baseType: !360, size: 64, offset: 3840)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1533, file: !84, line: 771, baseType: !1550, size: 64, offset: 3904)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1533, file: !84, line: 772, baseType: !6, size: 64, offset: 3968)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1533, file: !84, line: 773, baseType: !1550, size: 64, offset: 4032)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1533, file: !84, line: 774, baseType: !98, size: 64, offset: 4096)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1533, file: !84, line: 775, baseType: !1556, size: 64, offset: 4160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1533, file: !84, line: 778, baseType: !36, size: 32, offset: 4224)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1533, file: !84, line: 779, baseType: !1683, size: 131072, offset: 4256)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 131072, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 16384)
!1686 = !{!1687, !1688, !1689}
!1687 = !DILocalVariable(name: "c", arg: 1, scope: !1528, file: !1, line: 396, type: !1531)
!1688 = !DILocalVariable(name: "o", arg: 2, scope: !1528, file: !1, line: 396, type: !115)
!1689 = !DILocalVariable(name: "type", arg: 3, scope: !1528, file: !1, line: 396, type: !36)
!1690 = !DILocation(line: 396, column: 23, scope: !1528)
!1691 = !DILocation(line: 396, column: 32, scope: !1528)
!1692 = !DILocation(line: 396, column: 39, scope: !1528)
!1693 = !DILocation(line: 397, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 397, column: 9)
!1695 = !DILocation(line: 397, column: 17, scope: !1694)
!1696 = !DILocation(line: 397, column: 9, scope: !1528)
!1697 = !DILocation(line: 398, column: 27, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !1, line: 397, column: 26)
!1699 = !{!1700, !187, i64 112}
!1700 = !{!"sharedObjectsStruct", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !187, i64 208, !187, i64 216, !187, i64 224, !187, i64 232, !187, i64 240, !187, i64 248, !187, i64 256, !187, i64 264, !187, i64 272, !187, i64 280, !187, i64 288, !187, i64 296, !187, i64 304, !187, i64 312, !187, i64 320, !187, i64 328, !187, i64 336, !187, i64 344, !187, i64 352, !187, i64 360, !185, i64 368, !185, i64 448, !185, i64 80448, !185, i64 80704, !187, i64 80960, !187, i64 80968}
!1701 = !DILocation(line: 398, column: 9, scope: !1698)
!1702 = !DILocation(line: 399, column: 9, scope: !1698)
!1703 = !DILocation(line: 0, scope: !1528)
!1704 = !DILocation(line: 402, column: 1, scope: !1528)
!1705 = distinct !DISubprogram(name: "isSdsRepresentableAsLongLong", scope: !1, file: !1, line: 404, type: !1706, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1709)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!36, !98, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!1709 = !{!1710, !1711}
!1710 = !DILocalVariable(name: "s", arg: 1, scope: !1705, file: !1, line: 404, type: !98)
!1711 = !DILocalVariable(name: "llval", arg: 2, scope: !1705, file: !1, line: 404, type: !1708)
!1712 = !DILocation(line: 404, column: 38, scope: !1705)
!1713 = !DILocation(line: 404, column: 52, scope: !1705)
!1714 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 405, column: 24, scope: !1705)
!1716 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !1715)
!1717 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1715)
!1718 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !1715)
!1719 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !1715)
!1720 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !1715)
!1721 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !1715)
!1722 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !1715)
!1723 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1715)
!1724 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !1715)
!1725 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !1715)
!1726 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1715)
!1727 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1715)
!1728 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !1715)
!1729 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1715)
!1730 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !1715)
!1731 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !1715)
!1732 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1715)
!1733 = !DILocation(line: 0, scope: !502, inlinedAt: !1715)
!1734 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1715)
!1735 = !DILocation(line: 405, column: 12, scope: !1705)
!1736 = !DILocation(line: 405, column: 5, scope: !1705)
!1737 = distinct !DISubprogram(name: "isObjectRepresentableAsLongLong", scope: !1, file: !1, line: 408, type: !1738, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!36, !115, !1708}
!1740 = !{!1741, !1742}
!1741 = !DILocalVariable(name: "o", arg: 1, scope: !1737, file: !1, line: 408, type: !115)
!1742 = !DILocalVariable(name: "llval", arg: 2, scope: !1737, file: !1, line: 408, type: !1708)
!1743 = !DILocation(line: 408, column: 43, scope: !1737)
!1744 = !DILocation(line: 408, column: 57, scope: !1737)
!1745 = !DILocation(line: 409, column: 5, scope: !1737)
!1746 = !DILocation(line: 410, column: 12, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 410, column: 9)
!1748 = !DILocation(line: 410, column: 21, scope: !1747)
!1749 = !DILocation(line: 410, column: 9, scope: !1737)
!1750 = !DILocation(line: 411, column: 13, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 411, column: 13)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 410, column: 42)
!1753 = !DILocation(line: 411, column: 13, scope: !1752)
!1754 = !DILocation(line: 411, column: 39, scope: !1751)
!1755 = !DILocation(line: 411, column: 27, scope: !1751)
!1756 = !{!196, !196, i64 0}
!1757 = !DILocation(line: 411, column: 20, scope: !1751)
!1758 = !DILocation(line: 414, column: 48, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 413, column: 12)
!1760 = !DILocation(line: 404, column: 38, scope: !1705, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 414, column: 16, scope: !1759)
!1762 = !DILocation(line: 404, column: 52, scope: !1705, inlinedAt: !1761)
!1763 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 405, column: 24, scope: !1705, inlinedAt: !1761)
!1765 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !1764)
!1766 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1764)
!1767 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !1764)
!1768 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !1764)
!1769 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !1764)
!1770 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !1764)
!1771 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !1764)
!1772 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1764)
!1773 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !1764)
!1774 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !1764)
!1775 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1764)
!1776 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1764)
!1777 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !1764)
!1778 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1764)
!1779 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !1764)
!1780 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !1764)
!1781 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1764)
!1782 = !DILocation(line: 0, scope: !502, inlinedAt: !1764)
!1783 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1764)
!1784 = !DILocation(line: 405, column: 12, scope: !1705, inlinedAt: !1761)
!1785 = !DILocation(line: 405, column: 5, scope: !1705, inlinedAt: !1761)
!1786 = !DILocation(line: 414, column: 9, scope: !1759)
!1787 = !DILocation(line: 0, scope: !1759)
!1788 = !DILocation(line: 416, column: 1, scope: !1737)
!1789 = distinct !DISubprogram(name: "trimStringObjectIfNeeded", scope: !1, file: !1, line: 422, type: !384, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1790)
!1790 = !{!1791}
!1791 = !DILocalVariable(name: "o", arg: 1, scope: !1789, file: !1, line: 422, type: !115)
!1792 = !DILocation(line: 422, column: 37, scope: !1789)
!1793 = !DILocation(line: 423, column: 12, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !1, line: 423, column: 9)
!1795 = !DILocation(line: 423, column: 21, scope: !1794)
!1796 = !DILocation(line: 423, column: 41, scope: !1794)
!1797 = !DILocation(line: 424, column: 21, scope: !1794)
!1798 = !DILocalVariable(name: "s", arg: 1, scope: !1799, file: !99, line: 104, type: !493)
!1799 = distinct !DISubprogram(name: "sdsavail", scope: !99, file: !99, line: 104, type: !489, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1800)
!1800 = !{!1798, !1801, !1802, !1805, !1807, !1809}
!1801 = !DILocalVariable(name: "flags", scope: !1799, file: !99, line: 105, type: !131)
!1802 = !DILocalVariable(name: "sh", scope: !1803, file: !99, line: 111, type: !125)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !99, line: 110, column: 26)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !99, line: 106, column: 33)
!1805 = !DILocalVariable(name: "sh", scope: !1806, file: !99, line: 115, type: !136)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !99, line: 114, column: 27)
!1807 = !DILocalVariable(name: "sh", scope: !1808, file: !99, line: 119, type: !146)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !99, line: 118, column: 27)
!1809 = !DILocalVariable(name: "sh", scope: !1810, file: !99, line: 123, type: !155)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !99, line: 122, column: 27)
!1811 = !DILocation(line: 104, column: 41, scope: !1799, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 424, column: 9, scope: !1794)
!1813 = !DILocation(line: 105, column: 27, scope: !1799, inlinedAt: !1812)
!1814 = !DILocation(line: 105, column: 19, scope: !1799, inlinedAt: !1812)
!1815 = !DILocation(line: 106, column: 5, scope: !1799, inlinedAt: !1812)
!1816 = !DILocation(line: 111, column: 13, scope: !1803, inlinedAt: !1812)
!1817 = !DILocation(line: 112, column: 24, scope: !1803, inlinedAt: !1812)
!1818 = !DILocation(line: 112, column: 20, scope: !1803, inlinedAt: !1812)
!1819 = !DILocation(line: 112, column: 36, scope: !1803, inlinedAt: !1812)
!1820 = !DILocation(line: 112, column: 32, scope: !1803, inlinedAt: !1812)
!1821 = !DILocation(line: 112, column: 30, scope: !1803, inlinedAt: !1812)
!1822 = !DILocation(line: 128, column: 1, scope: !1799, inlinedAt: !1812)
!1823 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 424, column: 28, scope: !1794)
!1825 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1824)
!1826 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1824)
!1827 = !DILocation(line: 115, column: 13, scope: !1806, inlinedAt: !1812)
!1828 = !DILocation(line: 116, column: 24, scope: !1806, inlinedAt: !1812)
!1829 = !DILocation(line: 116, column: 20, scope: !1806, inlinedAt: !1812)
!1830 = !DILocation(line: 116, column: 36, scope: !1806, inlinedAt: !1812)
!1831 = !DILocation(line: 116, column: 32, scope: !1806, inlinedAt: !1812)
!1832 = !DILocation(line: 116, column: 30, scope: !1806, inlinedAt: !1812)
!1833 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1824)
!1834 = !DILocation(line: 119, column: 13, scope: !1808, inlinedAt: !1812)
!1835 = !DILocation(line: 120, column: 24, scope: !1808, inlinedAt: !1812)
!1836 = !DILocation(line: 120, column: 36, scope: !1808, inlinedAt: !1812)
!1837 = !DILocation(line: 120, column: 30, scope: !1808, inlinedAt: !1812)
!1838 = !DILocation(line: 120, column: 20, scope: !1808, inlinedAt: !1812)
!1839 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1824)
!1840 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1824)
!1841 = !DILocation(line: 123, column: 13, scope: !1810, inlinedAt: !1812)
!1842 = !DILocation(line: 124, column: 24, scope: !1810, inlinedAt: !1812)
!1843 = !DILocation(line: 124, column: 36, scope: !1810, inlinedAt: !1812)
!1844 = !DILocation(line: 124, column: 30, scope: !1810, inlinedAt: !1812)
!1845 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1824)
!1846 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1824)
!1847 = !DILocation(line: 423, column: 9, scope: !1789)
!1848 = !DILocation(line: 0, scope: !502, inlinedAt: !1824)
!1849 = !DILocation(line: 424, column: 42, scope: !1794)
!1850 = !DILocation(line: 424, column: 26, scope: !1794)
!1851 = !DILocation(line: 426, column: 18, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 425, column: 5)
!1853 = !DILocation(line: 426, column: 16, scope: !1852)
!1854 = !DILocation(line: 427, column: 5, scope: !1852)
!1855 = !DILocation(line: 428, column: 1, scope: !1789)
!1856 = distinct !DISubprogram(name: "tryObjectEncoding", scope: !1, file: !1, line: 431, type: !214, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862}
!1858 = !DILocalVariable(name: "o", arg: 1, scope: !1856, file: !1, line: 431, type: !115)
!1859 = !DILocalVariable(name: "value", scope: !1856, file: !1, line: 432, type: !5)
!1860 = !DILocalVariable(name: "s", scope: !1856, file: !1, line: 433, type: !98)
!1861 = !DILocalVariable(name: "len", scope: !1856, file: !1, line: 434, type: !77)
!1862 = !DILocalVariable(name: "emb", scope: !1863, file: !1, line: 487, type: !115)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 486, column: 48)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 486, column: 9)
!1865 = !DILocation(line: 431, column: 31, scope: !1856)
!1866 = !DILocation(line: 432, column: 5, scope: !1856)
!1867 = !DILocation(line: 433, column: 16, scope: !1856)
!1868 = !DILocation(line: 433, column: 9, scope: !1856)
!1869 = !DILocation(line: 440, column: 5, scope: !1856)
!1870 = !DILocation(line: 445, column: 10, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 445, column: 9)
!1872 = !DILocation(line: 450, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 450, column: 10)
!1874 = !DILocation(line: 450, column: 22, scope: !1873)
!1875 = !DILocation(line: 450, column: 10, scope: !1856)
!1876 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 455, column: 11, scope: !1856)
!1878 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !1877)
!1879 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1877)
!1880 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !1877)
!1881 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1877)
!1882 = !DILocation(line: 434, column: 12, scope: !1856)
!1883 = !DILocation(line: 456, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 456, column: 9)
!1885 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !1877)
!1886 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !1877)
!1887 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !1877)
!1888 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !1877)
!1889 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1877)
!1890 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !1877)
!1891 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !1877)
!1892 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1877)
!1893 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1877)
!1894 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !1877)
!1895 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1877)
!1896 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !1877)
!1897 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !1877)
!1898 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1877)
!1899 = !DILocation(line: 0, scope: !502, inlinedAt: !1877)
!1900 = !DILocation(line: 456, column: 13, scope: !1884)
!1901 = !DILocation(line: 432, column: 10, scope: !1856)
!1902 = !DILocation(line: 456, column: 22, scope: !1884)
!1903 = !DILocation(line: 456, column: 9, scope: !1856)
!1904 = !DILocation(line: 489, column: 16, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1863, file: !1, line: 489, column: 13)
!1906 = !DILocation(line: 461, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !1, line: 461, column: 13)
!1908 = distinct !DILexicalBlock(scope: !1884, file: !1, line: 456, column: 46)
!1909 = !DILocation(line: 461, column: 31, scope: !1907)
!1910 = !DILocation(line: 461, column: 36, scope: !1907)
!1911 = !DILocation(line: 462, column: 22, scope: !1907)
!1912 = !DILocation(line: 462, column: 39, scope: !1907)
!1913 = !DILocation(line: 463, column: 13, scope: !1907)
!1914 = !DILocation(line: 462, column: 77, scope: !1907)
!1915 = !DILocation(line: 463, column: 24, scope: !1907)
!1916 = !DILocation(line: 466, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1907, file: !1, line: 465, column: 9)
!1918 = !DILocation(line: 467, column: 42, scope: !1917)
!1919 = !DILocation(line: 467, column: 26, scope: !1917)
!1920 = !DILocation(line: 349, column: 25, scope: !383, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 467, column: 13, scope: !1917)
!1922 = !DILocation(line: 350, column: 12, scope: !390, inlinedAt: !1921)
!1923 = !DILocation(line: 350, column: 21, scope: !390, inlinedAt: !1921)
!1924 = !DILocation(line: 350, column: 9, scope: !383, inlinedAt: !1921)
!1925 = !DILocation(line: 350, column: 56, scope: !390, inlinedAt: !1921)
!1926 = !DILocation(line: 350, column: 45, scope: !390, inlinedAt: !1921)
!1927 = !DILocation(line: 351, column: 1, scope: !383, inlinedAt: !1921)
!1928 = !DILocation(line: 468, column: 13, scope: !1917)
!1929 = !DILocation(line: 470, column: 20, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 470, column: 17)
!1931 = distinct !DILexicalBlock(scope: !1907, file: !1, line: 469, column: 16)
!1932 = !DILocation(line: 470, column: 17, scope: !1931)
!1933 = !DILocation(line: 471, column: 28, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 470, column: 50)
!1935 = !DILocation(line: 471, column: 17, scope: !1934)
!1936 = !DILocation(line: 472, column: 29, scope: !1934)
!1937 = !DILocation(line: 473, column: 34, scope: !1934)
!1938 = !DILocation(line: 473, column: 24, scope: !1934)
!1939 = !DILocation(line: 474, column: 17, scope: !1934)
!1940 = !DILocation(line: 476, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 475, column: 60)
!1942 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 475, column: 24)
!1943 = !DILocation(line: 477, column: 63, scope: !1941)
!1944 = !DILocation(line: 169, column: 56, scope: !445, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 477, column: 24, scope: !1941)
!1946 = !DILocation(line: 170, column: 12, scope: !445, inlinedAt: !1945)
!1947 = !DILocation(line: 170, column: 5, scope: !445, inlinedAt: !1945)
!1948 = !DILocation(line: 477, column: 17, scope: !1941)
!1949 = !DILocation(line: 486, column: 13, scope: !1864)
!1950 = !DILocation(line: 486, column: 9, scope: !1856)
!1951 = !DILocation(line: 489, column: 25, scope: !1905)
!1952 = !DILocation(line: 489, column: 13, scope: !1863)
!1953 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 490, column: 44, scope: !1863)
!1955 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !1954)
!1956 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1954)
!1957 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !1954)
!1958 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !1954)
!1959 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !1954)
!1960 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !1954)
!1961 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !1954)
!1962 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1954)
!1963 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !1954)
!1964 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !1954)
!1965 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1954)
!1966 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1954)
!1967 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !1954)
!1968 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1954)
!1969 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !1954)
!1970 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !1954)
!1971 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1954)
!1972 = !DILocation(line: 0, scope: !502, inlinedAt: !1954)
!1973 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1954)
!1974 = !DILocation(line: 490, column: 15, scope: !1863)
!1975 = !DILocation(line: 487, column: 15, scope: !1863)
!1976 = !DILocation(line: 491, column: 9, scope: !1863)
!1977 = !DILocation(line: 492, column: 9, scope: !1863)
!1978 = !DILocation(line: 422, column: 37, scope: !1789, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 504, column: 5, scope: !1856)
!1980 = !DILocation(line: 423, column: 12, scope: !1794, inlinedAt: !1979)
!1981 = !DILocation(line: 423, column: 21, scope: !1794, inlinedAt: !1979)
!1982 = !DILocation(line: 423, column: 41, scope: !1794, inlinedAt: !1979)
!1983 = !DILocation(line: 104, column: 41, scope: !1799, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 424, column: 9, scope: !1794, inlinedAt: !1979)
!1985 = !DILocation(line: 105, column: 19, scope: !1799, inlinedAt: !1984)
!1986 = !DILocation(line: 106, column: 5, scope: !1799, inlinedAt: !1984)
!1987 = !DILocation(line: 111, column: 13, scope: !1803, inlinedAt: !1984)
!1988 = !DILocation(line: 112, column: 24, scope: !1803, inlinedAt: !1984)
!1989 = !DILocation(line: 112, column: 20, scope: !1803, inlinedAt: !1984)
!1990 = !DILocation(line: 112, column: 36, scope: !1803, inlinedAt: !1984)
!1991 = !DILocation(line: 112, column: 32, scope: !1803, inlinedAt: !1984)
!1992 = !DILocation(line: 112, column: 30, scope: !1803, inlinedAt: !1984)
!1993 = !DILocation(line: 128, column: 1, scope: !1799, inlinedAt: !1984)
!1994 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 424, column: 28, scope: !1794, inlinedAt: !1979)
!1996 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !1995)
!1997 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !1995)
!1998 = !DILocation(line: 115, column: 13, scope: !1806, inlinedAt: !1984)
!1999 = !DILocation(line: 116, column: 24, scope: !1806, inlinedAt: !1984)
!2000 = !DILocation(line: 116, column: 20, scope: !1806, inlinedAt: !1984)
!2001 = !DILocation(line: 116, column: 36, scope: !1806, inlinedAt: !1984)
!2002 = !DILocation(line: 116, column: 32, scope: !1806, inlinedAt: !1984)
!2003 = !DILocation(line: 116, column: 30, scope: !1806, inlinedAt: !1984)
!2004 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !1995)
!2005 = !DILocation(line: 119, column: 13, scope: !1808, inlinedAt: !1984)
!2006 = !DILocation(line: 120, column: 24, scope: !1808, inlinedAt: !1984)
!2007 = !DILocation(line: 120, column: 36, scope: !1808, inlinedAt: !1984)
!2008 = !DILocation(line: 120, column: 30, scope: !1808, inlinedAt: !1984)
!2009 = !DILocation(line: 120, column: 20, scope: !1808, inlinedAt: !1984)
!2010 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !1995)
!2011 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !1995)
!2012 = !DILocation(line: 123, column: 13, scope: !1810, inlinedAt: !1984)
!2013 = !DILocation(line: 124, column: 24, scope: !1810, inlinedAt: !1984)
!2014 = !DILocation(line: 124, column: 36, scope: !1810, inlinedAt: !1984)
!2015 = !DILocation(line: 124, column: 30, scope: !1810, inlinedAt: !1984)
!2016 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !1995)
!2017 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !1995)
!2018 = !DILocation(line: 423, column: 9, scope: !1789, inlinedAt: !1979)
!2019 = !DILocation(line: 0, scope: !502, inlinedAt: !1995)
!2020 = !DILocation(line: 424, column: 42, scope: !1794, inlinedAt: !1979)
!2021 = !DILocation(line: 424, column: 26, scope: !1794, inlinedAt: !1979)
!2022 = !DILocation(line: 426, column: 18, scope: !1852, inlinedAt: !1979)
!2023 = !DILocation(line: 426, column: 16, scope: !1852, inlinedAt: !1979)
!2024 = !DILocation(line: 427, column: 5, scope: !1852, inlinedAt: !1979)
!2025 = !DILocation(line: 428, column: 1, scope: !1789, inlinedAt: !1979)
!2026 = !DILocation(line: 507, column: 5, scope: !1856)
!2027 = !DILocation(line: 0, scope: !1871)
!2028 = !DILocation(line: 508, column: 1, scope: !1856)
!2029 = distinct !DISubprogram(name: "getDecodedObject", scope: !1, file: !1, line: 512, type: !214, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DILocalVariable(name: "o", arg: 1, scope: !2029, file: !1, line: 512, type: !115)
!2032 = !DILocalVariable(name: "dec", scope: !2029, file: !1, line: 513, type: !115)
!2033 = !DILocalVariable(name: "buf", scope: !2034, file: !1, line: 520, type: !2036)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 519, column: 67)
!2035 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 519, column: 9)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1155)
!2037 = !DILocation(line: 512, column: 30, scope: !2029)
!2038 = !DILocation(line: 515, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 515, column: 9)
!2040 = !DILocation(line: 349, column: 25, scope: !383, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 516, column: 9, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 515, column: 30)
!2043 = !DILocation(line: 350, column: 12, scope: !390, inlinedAt: !2041)
!2044 = !DILocation(line: 350, column: 21, scope: !390, inlinedAt: !2041)
!2045 = !DILocation(line: 350, column: 9, scope: !383, inlinedAt: !2041)
!2046 = !DILocation(line: 350, column: 56, scope: !390, inlinedAt: !2041)
!2047 = !DILocation(line: 350, column: 45, scope: !390, inlinedAt: !2041)
!2048 = !DILocation(line: 351, column: 1, scope: !383, inlinedAt: !2041)
!2049 = !DILocation(line: 517, column: 9, scope: !2042)
!2050 = !DILocation(line: 519, column: 31, scope: !2035)
!2051 = !DILocation(line: 520, column: 9, scope: !2034)
!2052 = !DILocation(line: 520, column: 14, scope: !2034)
!2053 = !DILocation(line: 522, column: 35, scope: !2034)
!2054 = !DILocation(line: 522, column: 9, scope: !2034)
!2055 = !DILocation(line: 523, column: 38, scope: !2034)
!2056 = !DILocation(line: 523, column: 15, scope: !2034)
!2057 = !DILocation(line: 513, column: 11, scope: !2029)
!2058 = !DILocation(line: 525, column: 5, scope: !2035)
!2059 = !DILocation(line: 526, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 525, column: 12)
!2061 = !DILocation(line: 0, scope: !2034)
!2062 = !DILocation(line: 528, column: 1, scope: !2029)
!2063 = distinct !DISubprogram(name: "compareStringObjectsWithFlags", scope: !1, file: !1, line: 541, type: !2064, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2066)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!36, !115, !115, !36}
!2066 = !{!2067, !2068, !2069, !2070, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2067 = !DILocalVariable(name: "a", arg: 1, scope: !2063, file: !1, line: 541, type: !115)
!2068 = !DILocalVariable(name: "b", arg: 2, scope: !2063, file: !1, line: 541, type: !115)
!2069 = !DILocalVariable(name: "flags", arg: 3, scope: !2063, file: !1, line: 541, type: !36)
!2070 = !DILocalVariable(name: "bufa", scope: !2063, file: !1, line: 543, type: !2071)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !2072)
!2072 = !{!2073}
!2073 = !DISubrange(count: 128)
!2074 = !DILocalVariable(name: "bufb", scope: !2063, file: !1, line: 543, type: !2071)
!2075 = !DILocalVariable(name: "astr", scope: !2063, file: !1, line: 543, type: !81)
!2076 = !DILocalVariable(name: "bstr", scope: !2063, file: !1, line: 543, type: !81)
!2077 = !DILocalVariable(name: "alen", scope: !2063, file: !1, line: 544, type: !77)
!2078 = !DILocalVariable(name: "blen", scope: !2063, file: !1, line: 544, type: !77)
!2079 = !DILocalVariable(name: "minlen", scope: !2063, file: !1, line: 544, type: !77)
!2080 = !DILocalVariable(name: "cmp", scope: !2081, file: !1, line: 564, type: !36)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 563, column: 12)
!2082 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 561, column: 9)
!2083 = !DILocation(line: 541, column: 41, scope: !2063)
!2084 = !DILocation(line: 541, column: 50, scope: !2063)
!2085 = !DILocation(line: 541, column: 57, scope: !2063)
!2086 = !DILocation(line: 542, column: 5, scope: !2063)
!2087 = !DILocation(line: 543, column: 5, scope: !2063)
!2088 = !DILocation(line: 543, column: 10, scope: !2063)
!2089 = !DILocation(line: 543, column: 21, scope: !2063)
!2090 = !DILocation(line: 546, column: 11, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 546, column: 9)
!2092 = !DILocation(line: 546, column: 9, scope: !2063)
!2093 = !DILocation(line: 547, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 547, column: 9)
!2095 = !DILocation(line: 548, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 547, column: 30)
!2097 = !DILocation(line: 543, column: 33, scope: !2063)
!2098 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 549, column: 16, scope: !2096)
!2100 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2099)
!2101 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2099)
!2102 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2099)
!2103 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2099)
!2104 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2099)
!2105 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2099)
!2106 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2099)
!2107 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2099)
!2108 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2099)
!2109 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2099)
!2110 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2099)
!2111 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2099)
!2112 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2099)
!2113 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2099)
!2114 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2099)
!2115 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2099)
!2116 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2099)
!2117 = !DILocation(line: 0, scope: !502, inlinedAt: !2099)
!2118 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2099)
!2119 = !DILocation(line: 544, column: 12, scope: !2063)
!2120 = !DILocation(line: 550, column: 5, scope: !2096)
!2121 = !DILocation(line: 551, column: 54, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 550, column: 12)
!2123 = !DILocation(line: 551, column: 16, scope: !2122)
!2124 = !DILocation(line: 554, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 554, column: 9)
!2126 = !DILocation(line: 0, scope: !2122)
!2127 = !DILocation(line: 555, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !1, line: 554, column: 30)
!2129 = !DILocation(line: 543, column: 40, scope: !2063)
!2130 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 556, column: 16, scope: !2128)
!2132 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2131)
!2133 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2131)
!2134 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2131)
!2135 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2131)
!2136 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2131)
!2137 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2131)
!2138 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2131)
!2139 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2131)
!2140 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2131)
!2141 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2131)
!2142 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2131)
!2143 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2131)
!2144 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2131)
!2145 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2131)
!2146 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2131)
!2147 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2131)
!2148 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2131)
!2149 = !DILocation(line: 0, scope: !502, inlinedAt: !2131)
!2150 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2131)
!2151 = !DILocation(line: 544, column: 18, scope: !2063)
!2152 = !DILocation(line: 557, column: 5, scope: !2128)
!2153 = !DILocation(line: 558, column: 54, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2125, file: !1, line: 557, column: 12)
!2155 = !DILocation(line: 558, column: 16, scope: !2154)
!2156 = !DILocation(line: 0, scope: !2154)
!2157 = !DILocation(line: 561, column: 15, scope: !2082)
!2158 = !DILocation(line: 561, column: 9, scope: !2063)
!2159 = !DILocation(line: 562, column: 16, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 561, column: 37)
!2161 = !DILocation(line: 562, column: 9, scope: !2160)
!2162 = !DILocation(line: 566, column: 24, scope: !2081)
!2163 = !DILocation(line: 566, column: 18, scope: !2081)
!2164 = !DILocation(line: 544, column: 24, scope: !2063)
!2165 = !DILocation(line: 567, column: 15, scope: !2081)
!2166 = !DILocation(line: 564, column: 13, scope: !2081)
!2167 = !DILocation(line: 568, column: 17, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2081, file: !1, line: 568, column: 13)
!2169 = !DILocation(line: 568, column: 34, scope: !2168)
!2170 = !DILocation(line: 568, column: 30, scope: !2168)
!2171 = !DILocation(line: 568, column: 13, scope: !2081)
!2172 = !DILocation(line: 0, scope: !2168)
!2173 = !DILocation(line: 571, column: 1, scope: !2063)
!2174 = distinct !DISubprogram(name: "compareStringObjects", scope: !1, file: !1, line: 574, type: !2175, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!36, !115, !115}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "a", arg: 1, scope: !2174, file: !1, line: 574, type: !115)
!2179 = !DILocalVariable(name: "b", arg: 2, scope: !2174, file: !1, line: 574, type: !115)
!2180 = !DILocation(line: 574, column: 32, scope: !2174)
!2181 = !DILocation(line: 574, column: 41, scope: !2174)
!2182 = !DILocation(line: 575, column: 12, scope: !2174)
!2183 = !DILocation(line: 575, column: 5, scope: !2174)
!2184 = distinct !DISubprogram(name: "collateStringObjects", scope: !1, file: !1, line: 579, type: !2175, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2185)
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "a", arg: 1, scope: !2184, file: !1, line: 579, type: !115)
!2187 = !DILocalVariable(name: "b", arg: 2, scope: !2184, file: !1, line: 579, type: !115)
!2188 = !DILocation(line: 579, column: 32, scope: !2184)
!2189 = !DILocation(line: 579, column: 41, scope: !2184)
!2190 = !DILocation(line: 580, column: 12, scope: !2184)
!2191 = !DILocation(line: 580, column: 5, scope: !2184)
!2192 = distinct !DISubprogram(name: "equalStringObjects", scope: !1, file: !1, line: 587, type: !2175, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2193)
!2193 = !{!2194, !2195}
!2194 = !DILocalVariable(name: "a", arg: 1, scope: !2192, file: !1, line: 587, type: !115)
!2195 = !DILocalVariable(name: "b", arg: 2, scope: !2192, file: !1, line: 587, type: !115)
!2196 = !DILocation(line: 587, column: 30, scope: !2192)
!2197 = !DILocation(line: 587, column: 39, scope: !2192)
!2198 = !DILocation(line: 588, column: 12, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 588, column: 9)
!2200 = !DILocation(line: 588, column: 21, scope: !2199)
!2201 = !DILocation(line: 588, column: 41, scope: !2199)
!2202 = !DILocation(line: 589, column: 12, scope: !2199)
!2203 = !DILocation(line: 589, column: 21, scope: !2199)
!2204 = !DILocation(line: 588, column: 9, scope: !2192)
!2205 = !DILocation(line: 592, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 589, column: 41)
!2207 = !DILocation(line: 592, column: 29, scope: !2206)
!2208 = !DILocation(line: 592, column: 23, scope: !2206)
!2209 = !DILocation(line: 592, column: 9, scope: !2206)
!2210 = !DILocation(line: 574, column: 32, scope: !2174, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 594, column: 16, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 593, column: 12)
!2213 = !DILocation(line: 574, column: 41, scope: !2174, inlinedAt: !2211)
!2214 = !DILocation(line: 575, column: 12, scope: !2174, inlinedAt: !2211)
!2215 = !DILocation(line: 575, column: 5, scope: !2174, inlinedAt: !2211)
!2216 = !DILocation(line: 594, column: 42, scope: !2212)
!2217 = !DILocation(line: 594, column: 9, scope: !2212)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 596, column: 1, scope: !2192)
!2220 = distinct !DISubprogram(name: "stringObjectLen", scope: !1, file: !1, line: 598, type: !2221, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!77, !115}
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "o", arg: 1, scope: !2220, file: !1, line: 598, type: !115)
!2225 = !DILocation(line: 598, column: 30, scope: !2220)
!2226 = !DILocation(line: 599, column: 5, scope: !2220)
!2227 = !DILocation(line: 600, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 600, column: 9)
!2229 = !DILocation(line: 601, column: 26, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 600, column: 30)
!2231 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 601, column: 16, scope: !2230)
!2233 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2232)
!2234 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2232)
!2235 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2232)
!2236 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2232)
!2237 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2232)
!2238 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2232)
!2239 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2232)
!2240 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2232)
!2241 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2232)
!2242 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2232)
!2243 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2232)
!2244 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2232)
!2245 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2232)
!2246 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2232)
!2247 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2232)
!2248 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2232)
!2249 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2232)
!2250 = !DILocation(line: 0, scope: !502, inlinedAt: !2232)
!2251 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2232)
!2252 = !DILocation(line: 601, column: 9, scope: !2230)
!2253 = !DILocation(line: 603, column: 35, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 602, column: 12)
!2255 = !DILocation(line: 603, column: 16, scope: !2254)
!2256 = !DILocation(line: 603, column: 9, scope: !2254)
!2257 = !DILocation(line: 0, scope: !2254)
!2258 = !DILocation(line: 605, column: 1, scope: !2220)
!2259 = distinct !DISubprogram(name: "getDoubleFromObject", scope: !1, file: !1, line: 607, type: !2260, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2263)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!36, !476, !2262}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2263 = !{!2264, !2265, !2266, !2267}
!2264 = !DILocalVariable(name: "o", arg: 1, scope: !2259, file: !1, line: 607, type: !476)
!2265 = !DILocalVariable(name: "target", arg: 2, scope: !2259, file: !1, line: 607, type: !2262)
!2266 = !DILocalVariable(name: "value", scope: !2259, file: !1, line: 608, type: !64)
!2267 = !DILocalVariable(name: "eptr", scope: !2259, file: !1, line: 609, type: !81)
!2268 = !DILocation(line: 607, column: 37, scope: !2259)
!2269 = !DILocation(line: 607, column: 48, scope: !2259)
!2270 = !DILocation(line: 609, column: 5, scope: !2259)
!2271 = !DILocation(line: 611, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2259, file: !1, line: 611, column: 9)
!2273 = !DILocation(line: 611, column: 9, scope: !2259)
!2274 = !DILocation(line: 614, column: 9, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 613, column: 12)
!2276 = !DILocation(line: 615, column: 13, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2275, file: !1, line: 615, column: 13)
!2278 = !DILocation(line: 616, column: 13, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 615, column: 34)
!2280 = !DILocation(line: 616, column: 19, scope: !2279)
!2281 = !DILocation(line: 617, column: 31, scope: !2279)
!2282 = !DILocation(line: 609, column: 11, scope: !2259)
!2283 = !DILocation(line: 617, column: 21, scope: !2279)
!2284 = !DILocation(line: 608, column: 12, scope: !2259)
!2285 = !DILocation(line: 618, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 618, column: 17)
!2287 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 618, column: 17, scope: !2286)
!2289 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2288)
!2290 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2288)
!2291 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2288)
!2292 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2288)
!2293 = !DILocation(line: 618, column: 37, scope: !2286)
!2294 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2288)
!2295 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2288)
!2296 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2288)
!2297 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2288)
!2298 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2288)
!2299 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2288)
!2300 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2288)
!2301 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2288)
!2302 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2288)
!2303 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2288)
!2304 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2288)
!2305 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2288)
!2306 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2288)
!2307 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2288)
!2308 = !DILocation(line: 0, scope: !502, inlinedAt: !2288)
!2309 = !DILocation(line: 618, column: 32, scope: !2286)
!2310 = !DILocation(line: 619, column: 17, scope: !2286)
!2311 = !DILocation(line: 619, column: 51, scope: !2286)
!2312 = !DILocation(line: 620, column: 26, scope: !2286)
!2313 = !DILocation(line: 620, column: 30, scope: !2286)
!2314 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 620, column: 49, scope: !2286)
!2316 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2315)
!2317 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2315)
!2318 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2315)
!2319 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2315)
!2320 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2315)
!2321 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2315)
!2322 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2315)
!2323 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2315)
!2324 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2315)
!2325 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2315)
!2326 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2315)
!2327 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2315)
!2328 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2315)
!2329 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2315)
!2330 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2315)
!2331 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2315)
!2332 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2315)
!2333 = !DILocation(line: 0, scope: !502, inlinedAt: !2315)
!2334 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2315)
!2335 = !DILocation(line: 620, column: 46, scope: !2286)
!2336 = !DILocation(line: 620, column: 64, scope: !2286)
!2337 = !DILocation(line: 621, column: 18, scope: !2286)
!2338 = !DILocation(line: 621, column: 24, scope: !2286)
!2339 = !DILocation(line: 621, column: 34, scope: !2286)
!2340 = !DILocation(line: 622, column: 28, scope: !2286)
!2341 = !DILocation(line: 622, column: 49, scope: !2286)
!2342 = !DILocation(line: 622, column: 40, scope: !2286)
!2343 = !DILocation(line: 622, column: 71, scope: !2286)
!2344 = !DILocation(line: 623, column: 17, scope: !2286)
!2345 = !DILocation(line: 618, column: 17, scope: !2279)
!2346 = !DILocation(line: 626, column: 30, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !1, line: 625, column: 53)
!2348 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 625, column: 20)
!2349 = !DILocation(line: 626, column: 21, scope: !2347)
!2350 = !DILocation(line: 628, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !1, line: 627, column: 16)
!2352 = !DILocation(line: 0, scope: !2347)
!2353 = !DILocation(line: 631, column: 13, scope: !2259)
!2354 = !{!197, !197, i64 0}
!2355 = !DILocation(line: 632, column: 5, scope: !2259)
!2356 = !DILocation(line: 0, scope: !2286)
!2357 = !DILocation(line: 633, column: 1, scope: !2259)
!2358 = distinct !DISubprogram(name: "getDoubleFromObjectOrReply", scope: !1, file: !1, line: 635, type: !2359, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!36, !1531, !115, !2262, !74}
!2361 = !{!2362, !2363, !2364, !2365, !2366}
!2362 = !DILocalVariable(name: "c", arg: 1, scope: !2358, file: !1, line: 635, type: !1531)
!2363 = !DILocalVariable(name: "o", arg: 2, scope: !2358, file: !1, line: 635, type: !115)
!2364 = !DILocalVariable(name: "target", arg: 3, scope: !2358, file: !1, line: 635, type: !2262)
!2365 = !DILocalVariable(name: "msg", arg: 4, scope: !2358, file: !1, line: 635, type: !74)
!2366 = !DILocalVariable(name: "value", scope: !2358, file: !1, line: 636, type: !64)
!2367 = !DILocation(line: 635, column: 40, scope: !2358)
!2368 = !DILocation(line: 635, column: 49, scope: !2358)
!2369 = !DILocation(line: 635, column: 60, scope: !2358)
!2370 = !DILocation(line: 635, column: 80, scope: !2358)
!2371 = !DILocation(line: 636, column: 5, scope: !2358)
!2372 = !DILocation(line: 636, column: 12, scope: !2358)
!2373 = !DILocation(line: 637, column: 9, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 637, column: 9)
!2375 = !DILocation(line: 637, column: 40, scope: !2374)
!2376 = !DILocation(line: 637, column: 9, scope: !2358)
!2377 = !DILocation(line: 638, column: 17, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 638, column: 13)
!2379 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 637, column: 49)
!2380 = !DILocation(line: 638, column: 13, scope: !2379)
!2381 = !DILocation(line: 639, column: 13, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !1, line: 638, column: 26)
!2383 = !DILocation(line: 640, column: 9, scope: !2382)
!2384 = !DILocation(line: 641, column: 13, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2378, file: !1, line: 640, column: 16)
!2386 = !DILocation(line: 645, column: 15, scope: !2358)
!2387 = !DILocation(line: 645, column: 13, scope: !2358)
!2388 = !DILocation(line: 646, column: 5, scope: !2358)
!2389 = !DILocation(line: 0, scope: !2358)
!2390 = !DILocation(line: 647, column: 1, scope: !2358)
!2391 = distinct !DISubprogram(name: "getLongDoubleFromObject", scope: !1, file: !1, line: 649, type: !2392, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2395)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!36, !115, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!2395 = !{!2396, !2397, !2398, !2399}
!2396 = !DILocalVariable(name: "o", arg: 1, scope: !2391, file: !1, line: 649, type: !115)
!2397 = !DILocalVariable(name: "target", arg: 2, scope: !2391, file: !1, line: 649, type: !2394)
!2398 = !DILocalVariable(name: "value", scope: !2391, file: !1, line: 650, type: !454)
!2399 = !DILocalVariable(name: "eptr", scope: !2391, file: !1, line: 651, type: !81)
!2400 = !DILocation(line: 649, column: 35, scope: !2391)
!2401 = !DILocation(line: 649, column: 51, scope: !2391)
!2402 = !DILocation(line: 651, column: 5, scope: !2391)
!2403 = !DILocation(line: 653, column: 11, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2391, file: !1, line: 653, column: 9)
!2405 = !DILocation(line: 653, column: 9, scope: !2391)
!2406 = !DILocation(line: 656, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 655, column: 12)
!2408 = !DILocation(line: 657, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 657, column: 13)
!2410 = !DILocation(line: 658, column: 13, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 657, column: 34)
!2412 = !DILocation(line: 658, column: 19, scope: !2411)
!2413 = !DILocation(line: 659, column: 32, scope: !2411)
!2414 = !DILocation(line: 651, column: 11, scope: !2391)
!2415 = !DILocation(line: 659, column: 21, scope: !2411)
!2416 = !DILocation(line: 650, column: 17, scope: !2391)
!2417 = !DILocation(line: 660, column: 27, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2411, file: !1, line: 660, column: 17)
!2419 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 660, column: 17, scope: !2418)
!2421 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2420)
!2422 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2420)
!2423 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2420)
!2424 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2420)
!2425 = !DILocation(line: 660, column: 37, scope: !2418)
!2426 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2420)
!2427 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2420)
!2428 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2420)
!2429 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2420)
!2430 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2420)
!2431 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2420)
!2432 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2420)
!2433 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2420)
!2434 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2420)
!2435 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2420)
!2436 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2420)
!2437 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2420)
!2438 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2420)
!2439 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2420)
!2440 = !DILocation(line: 0, scope: !502, inlinedAt: !2420)
!2441 = !DILocation(line: 660, column: 32, scope: !2418)
!2442 = !DILocation(line: 661, column: 17, scope: !2418)
!2443 = !DILocation(line: 661, column: 51, scope: !2418)
!2444 = !DILocation(line: 662, column: 26, scope: !2418)
!2445 = !DILocation(line: 662, column: 30, scope: !2418)
!2446 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 662, column: 49, scope: !2418)
!2448 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2447)
!2449 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2447)
!2450 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2447)
!2451 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2447)
!2452 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2447)
!2453 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2447)
!2454 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2447)
!2455 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2447)
!2456 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2447)
!2457 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2447)
!2458 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2447)
!2459 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2447)
!2460 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2447)
!2461 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2447)
!2462 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2447)
!2463 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2447)
!2464 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2447)
!2465 = !DILocation(line: 0, scope: !502, inlinedAt: !2447)
!2466 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2447)
!2467 = !DILocation(line: 662, column: 46, scope: !2418)
!2468 = !DILocation(line: 662, column: 64, scope: !2418)
!2469 = !DILocation(line: 663, column: 18, scope: !2418)
!2470 = !DILocation(line: 663, column: 24, scope: !2418)
!2471 = !DILocation(line: 663, column: 34, scope: !2418)
!2472 = !DILocation(line: 664, column: 28, scope: !2418)
!2473 = !DILocation(line: 664, column: 49, scope: !2418)
!2474 = !DILocation(line: 664, column: 40, scope: !2418)
!2475 = !DILocation(line: 664, column: 71, scope: !2418)
!2476 = !DILocation(line: 665, column: 17, scope: !2418)
!2477 = !DILocation(line: 660, column: 17, scope: !2411)
!2478 = !DILocation(line: 668, column: 30, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !1, line: 667, column: 53)
!2480 = distinct !DILexicalBlock(scope: !2409, file: !1, line: 667, column: 20)
!2481 = !DILocation(line: 668, column: 21, scope: !2479)
!2482 = !DILocation(line: 670, column: 13, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !1, line: 669, column: 16)
!2484 = !DILocation(line: 0, scope: !2479)
!2485 = !DILocation(line: 673, column: 13, scope: !2391)
!2486 = !{!2487, !2487, i64 0}
!2487 = !{!"long double", !185, i64 0}
!2488 = !DILocation(line: 674, column: 5, scope: !2391)
!2489 = !DILocation(line: 0, scope: !2418)
!2490 = !DILocation(line: 675, column: 1, scope: !2391)
!2491 = distinct !DISubprogram(name: "getLongDoubleFromObjectOrReply", scope: !1, file: !1, line: 677, type: !2492, isLocal: false, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!36, !1531, !115, !2394, !74}
!2494 = !{!2495, !2496, !2497, !2498, !2499}
!2495 = !DILocalVariable(name: "c", arg: 1, scope: !2491, file: !1, line: 677, type: !1531)
!2496 = !DILocalVariable(name: "o", arg: 2, scope: !2491, file: !1, line: 677, type: !115)
!2497 = !DILocalVariable(name: "target", arg: 3, scope: !2491, file: !1, line: 677, type: !2394)
!2498 = !DILocalVariable(name: "msg", arg: 4, scope: !2491, file: !1, line: 677, type: !74)
!2499 = !DILocalVariable(name: "value", scope: !2491, file: !1, line: 678, type: !454)
!2500 = !DILocation(line: 677, column: 44, scope: !2491)
!2501 = !DILocation(line: 677, column: 53, scope: !2491)
!2502 = !DILocation(line: 677, column: 69, scope: !2491)
!2503 = !DILocation(line: 677, column: 89, scope: !2491)
!2504 = !DILocation(line: 678, column: 5, scope: !2491)
!2505 = !DILocation(line: 678, column: 17, scope: !2491)
!2506 = !DILocation(line: 679, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 679, column: 9)
!2508 = !DILocation(line: 679, column: 44, scope: !2507)
!2509 = !DILocation(line: 679, column: 9, scope: !2491)
!2510 = !DILocation(line: 680, column: 17, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 680, column: 13)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !1, line: 679, column: 53)
!2513 = !DILocation(line: 680, column: 13, scope: !2512)
!2514 = !DILocation(line: 681, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 680, column: 26)
!2516 = !DILocation(line: 682, column: 9, scope: !2515)
!2517 = !DILocation(line: 683, column: 13, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 682, column: 16)
!2519 = !DILocation(line: 687, column: 15, scope: !2491)
!2520 = !DILocation(line: 687, column: 13, scope: !2491)
!2521 = !DILocation(line: 688, column: 5, scope: !2491)
!2522 = !DILocation(line: 0, scope: !2491)
!2523 = !DILocation(line: 689, column: 1, scope: !2491)
!2524 = distinct !DISubprogram(name: "getLongLongFromObject", scope: !1, file: !1, line: 691, type: !1738, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "o", arg: 1, scope: !2524, file: !1, line: 691, type: !115)
!2527 = !DILocalVariable(name: "target", arg: 2, scope: !2524, file: !1, line: 691, type: !1708)
!2528 = !DILocalVariable(name: "value", scope: !2524, file: !1, line: 692, type: !360)
!2529 = !DILocation(line: 691, column: 33, scope: !2524)
!2530 = !DILocation(line: 691, column: 47, scope: !2524)
!2531 = !DILocation(line: 692, column: 5, scope: !2524)
!2532 = !DILocation(line: 694, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2524, file: !1, line: 694, column: 9)
!2534 = !DILocation(line: 694, column: 9, scope: !2524)
!2535 = !DILocation(line: 692, column: 15, scope: !2524)
!2536 = !DILocation(line: 695, column: 15, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 694, column: 20)
!2538 = !DILocation(line: 696, column: 5, scope: !2537)
!2539 = !DILocation(line: 697, column: 9, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2533, file: !1, line: 696, column: 12)
!2541 = !DILocation(line: 698, column: 13, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 698, column: 13)
!2543 = !DILocation(line: 699, column: 30, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 699, column: 17)
!2545 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 698, column: 34)
!2546 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 699, column: 34, scope: !2544)
!2548 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2547)
!2549 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2547)
!2550 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2547)
!2551 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2547)
!2552 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2547)
!2553 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2547)
!2554 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2547)
!2555 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2547)
!2556 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2547)
!2557 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2547)
!2558 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2547)
!2559 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2547)
!2560 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2547)
!2561 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2547)
!2562 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2547)
!2563 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2547)
!2564 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2547)
!2565 = !DILocation(line: 0, scope: !502, inlinedAt: !2547)
!2566 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2547)
!2567 = !DILocation(line: 699, column: 17, scope: !2544)
!2568 = !DILocation(line: 699, column: 57, scope: !2544)
!2569 = !DILocation(line: 699, column: 17, scope: !2545)
!2570 = !DILocation(line: 701, column: 30, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 700, column: 53)
!2572 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 700, column: 20)
!2573 = !DILocation(line: 701, column: 19, scope: !2571)
!2574 = !DILocation(line: 703, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 702, column: 16)
!2576 = !DILocation(line: 706, column: 9, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2524, file: !1, line: 706, column: 9)
!2578 = !DILocation(line: 706, column: 9, scope: !2524)
!2579 = !DILocation(line: 706, column: 27, scope: !2577)
!2580 = !DILocation(line: 706, column: 25, scope: !2577)
!2581 = !DILocation(line: 706, column: 17, scope: !2577)
!2582 = !DILocation(line: 0, scope: !2544)
!2583 = !DILocation(line: 708, column: 1, scope: !2524)
!2584 = distinct !DISubprogram(name: "getLongLongFromObjectOrReply", scope: !1, file: !1, line: 710, type: !2585, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!36, !1531, !115, !1708, !74}
!2587 = !{!2588, !2589, !2590, !2591, !2592}
!2588 = !DILocalVariable(name: "c", arg: 1, scope: !2584, file: !1, line: 710, type: !1531)
!2589 = !DILocalVariable(name: "o", arg: 2, scope: !2584, file: !1, line: 710, type: !115)
!2590 = !DILocalVariable(name: "target", arg: 3, scope: !2584, file: !1, line: 710, type: !1708)
!2591 = !DILocalVariable(name: "msg", arg: 4, scope: !2584, file: !1, line: 710, type: !74)
!2592 = !DILocalVariable(name: "value", scope: !2584, file: !1, line: 711, type: !360)
!2593 = !DILocation(line: 710, column: 42, scope: !2584)
!2594 = !DILocation(line: 710, column: 51, scope: !2584)
!2595 = !DILocation(line: 710, column: 65, scope: !2584)
!2596 = !DILocation(line: 710, column: 85, scope: !2584)
!2597 = !DILocation(line: 711, column: 5, scope: !2584)
!2598 = !DILocation(line: 711, column: 15, scope: !2584)
!2599 = !DILocation(line: 712, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2584, file: !1, line: 712, column: 9)
!2601 = !DILocation(line: 712, column: 42, scope: !2600)
!2602 = !DILocation(line: 712, column: 9, scope: !2584)
!2603 = !DILocation(line: 713, column: 17, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 713, column: 13)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 712, column: 51)
!2606 = !DILocation(line: 713, column: 13, scope: !2605)
!2607 = !DILocation(line: 714, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !1, line: 713, column: 26)
!2609 = !DILocation(line: 715, column: 9, scope: !2608)
!2610 = !DILocation(line: 716, column: 13, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2604, file: !1, line: 715, column: 16)
!2612 = !DILocation(line: 720, column: 15, scope: !2584)
!2613 = !DILocation(line: 720, column: 13, scope: !2584)
!2614 = !DILocation(line: 721, column: 5, scope: !2584)
!2615 = !DILocation(line: 0, scope: !2584)
!2616 = !DILocation(line: 722, column: 1, scope: !2584)
!2617 = distinct !DISubprogram(name: "getLongFromObjectOrReply", scope: !1, file: !1, line: 724, type: !2618, isLocal: false, isDefinition: true, scopeLine: 724, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2621)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!36, !1531, !115, !2620, !74}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2621 = !{!2622, !2623, !2624, !2625, !2626}
!2622 = !DILocalVariable(name: "c", arg: 1, scope: !2617, file: !1, line: 724, type: !1531)
!2623 = !DILocalVariable(name: "o", arg: 2, scope: !2617, file: !1, line: 724, type: !115)
!2624 = !DILocalVariable(name: "target", arg: 3, scope: !2617, file: !1, line: 724, type: !2620)
!2625 = !DILocalVariable(name: "msg", arg: 4, scope: !2617, file: !1, line: 724, type: !74)
!2626 = !DILocalVariable(name: "value", scope: !2617, file: !1, line: 725, type: !360)
!2627 = !DILocation(line: 724, column: 38, scope: !2617)
!2628 = !DILocation(line: 724, column: 47, scope: !2617)
!2629 = !DILocation(line: 724, column: 56, scope: !2617)
!2630 = !DILocation(line: 724, column: 76, scope: !2617)
!2631 = !DILocation(line: 710, column: 42, scope: !2584, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 727, column: 9, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2617, file: !1, line: 727, column: 9)
!2634 = !DILocation(line: 710, column: 51, scope: !2584, inlinedAt: !2632)
!2635 = !DILocation(line: 710, column: 85, scope: !2584, inlinedAt: !2632)
!2636 = !DILocation(line: 711, column: 5, scope: !2584, inlinedAt: !2632)
!2637 = !DILocation(line: 711, column: 15, scope: !2584, inlinedAt: !2632)
!2638 = !DILocation(line: 712, column: 9, scope: !2600, inlinedAt: !2632)
!2639 = !DILocation(line: 712, column: 42, scope: !2600, inlinedAt: !2632)
!2640 = !DILocation(line: 712, column: 9, scope: !2584, inlinedAt: !2632)
!2641 = !DILocation(line: 713, column: 17, scope: !2604, inlinedAt: !2632)
!2642 = !DILocation(line: 713, column: 13, scope: !2605, inlinedAt: !2632)
!2643 = !DILocation(line: 714, column: 13, scope: !2608, inlinedAt: !2632)
!2644 = !DILocation(line: 715, column: 9, scope: !2608, inlinedAt: !2632)
!2645 = !DILocation(line: 716, column: 13, scope: !2611, inlinedAt: !2632)
!2646 = !DILocation(line: 722, column: 1, scope: !2584, inlinedAt: !2632)
!2647 = !DILocation(line: 727, column: 9, scope: !2617)
!2648 = !DILocation(line: 720, column: 15, scope: !2584, inlinedAt: !2632)
!2649 = !DILocation(line: 725, column: 15, scope: !2617)
!2650 = !DILocation(line: 736, column: 13, scope: !2617)
!2651 = !DILocation(line: 737, column: 5, scope: !2617)
!2652 = !DILocation(line: 0, scope: !2617)
!2653 = !DILocation(line: 738, column: 1, scope: !2617)
!2654 = distinct !DISubprogram(name: "strEncoding", scope: !1, file: !1, line: 740, type: !2655, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!81, !36}
!2657 = !{!2658}
!2658 = !DILocalVariable(name: "encoding", arg: 1, scope: !2654, file: !1, line: 740, type: !36)
!2659 = !DILocation(line: 740, column: 23, scope: !2654)
!2660 = !DILocation(line: 741, column: 5, scope: !2654)
!2661 = !DILocation(line: 0, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 741, column: 22)
!2663 = !DILocation(line: 752, column: 1, scope: !2654)
!2664 = distinct !DISubprogram(name: "streamRadixTreeMemoryUsage", scope: !1, file: !1, line: 771, type: !2665, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!77, !881}
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "rax", arg: 1, scope: !2664, file: !1, line: 771, type: !881)
!2669 = !DILocalVariable(name: "size", scope: !2664, file: !1, line: 772, type: !77)
!2670 = !DILocation(line: 771, column: 40, scope: !2664)
!2671 = !DILocation(line: 773, column: 17, scope: !2664)
!2672 = !{!2673, !195, i64 8}
!2673 = !{!"rax", !187, i64 0, !195, i64 8, !195, i64 16}
!2674 = !DILocation(line: 773, column: 24, scope: !2664)
!2675 = !DILocation(line: 772, column: 12, scope: !2664)
!2676 = !DILocation(line: 774, column: 18, scope: !2664)
!2677 = !{!2673, !195, i64 16}
!2678 = !DILocation(line: 776, column: 10, scope: !2664)
!2679 = !DILocation(line: 777, column: 5, scope: !2664)
!2680 = distinct !DISubprogram(name: "objectComputeSize", scope: !1, file: !1, line: 785, type: !2681, isLocal: false, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!77, !115, !77}
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2701, !2702, !2703, !2704, !2705, !2711, !2712, !2718, !2724, !2727, !2731, !2760, !2761, !2762, !2764, !2775, !2776, !2785, !2788}
!2684 = !DILocalVariable(name: "o", arg: 1, scope: !2680, file: !1, line: 785, type: !115)
!2685 = !DILocalVariable(name: "sample_size", arg: 2, scope: !2680, file: !1, line: 785, type: !77)
!2686 = !DILocalVariable(name: "ele", scope: !2680, file: !1, line: 786, type: !98)
!2687 = !DILocalVariable(name: "ele2", scope: !2680, file: !1, line: 786, type: !98)
!2688 = !DILocalVariable(name: "d", scope: !2680, file: !1, line: 787, type: !6)
!2689 = !DILocalVariable(name: "di", scope: !2680, file: !1, line: 788, type: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !8, line: 95, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !8, line: 88, size: 384, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2692, file: !8, line: 89, baseType: !6, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2692, file: !8, line: 90, baseType: !5, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2692, file: !8, line: 91, baseType: !36, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !2692, file: !8, line: 91, baseType: !36, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2692, file: !8, line: 92, baseType: !50, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !2692, file: !8, line: 92, baseType: !50, size: 64, offset: 256)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !2692, file: !8, line: 94, baseType: !360, size: 64, offset: 320)
!2701 = !DILocalVariable(name: "de", scope: !2680, file: !1, line: 789, type: !66)
!2702 = !DILocalVariable(name: "asize", scope: !2680, file: !1, line: 790, type: !77)
!2703 = !DILocalVariable(name: "elesize", scope: !2680, file: !1, line: 790, type: !77)
!2704 = !DILocalVariable(name: "samples", scope: !2680, file: !1, line: 790, type: !77)
!2705 = !DILocalVariable(name: "ql", scope: !2706, file: !1, line: 804, type: !610)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !1, line: 803, column: 52)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 803, column: 13)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 802, column: 37)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !1, line: 802, column: 16)
!2710 = distinct !DILexicalBlock(scope: !2680, file: !1, line: 792, column: 9)
!2711 = !DILocalVariable(name: "node", scope: !2706, file: !1, line: 805, type: !616)
!2712 = !DILocalVariable(name: "is", scope: !2713, file: !1, line: 830, type: !730)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 829, column: 56)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 829, column: 20)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 818, column: 13)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 817, column: 36)
!2717 = distinct !DILexicalBlock(scope: !2709, file: !1, line: 817, column: 16)
!2718 = !DILocalVariable(name: "zsl", scope: !2719, file: !1, line: 840, type: !89)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 838, column: 58)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !1, line: 838, column: 20)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 836, column: 13)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 835, column: 37)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 835, column: 16)
!2724 = !DILocalVariable(name: "znode", scope: !2719, file: !1, line: 841, type: !2725)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !84, line: 818, baseType: !95)
!2727 = !DILocalVariable(name: "s", scope: !2728, file: !1, line: 875, type: !875)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 874, column: 39)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 874, column: 16)
!2730 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 855, column: 16)
!2731 = !DILocalVariable(name: "ri", scope: !2728, file: !1, line: 883, type: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !883, line: 186, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !883, line: 175, size: 3840, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2743, !2744, !2754}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2733, file: !883, line: 176, baseType: !36, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2733, file: !883, line: 177, baseType: !881, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2733, file: !883, line: 178, baseType: !624, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2733, file: !883, line: 179, baseType: !4, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2733, file: !883, line: 180, baseType: !77, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !2733, file: !883, line: 181, baseType: !77, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !2733, file: !883, line: 182, baseType: !2742, size: 1024, offset: 384)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !2072)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2733, file: !883, line: 183, baseType: !887, size: 64, offset: 1408)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2733, file: !883, line: 184, baseType: !2745, size: 2304, offset: 1472)
!2745 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !883, line: 150, baseType: !2746)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !883, line: 143, size: 2304, elements: !2747)
!2747 = !{!2748, !2750, !2751, !2752, !2753}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2746, file: !883, line: 144, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !2746, file: !883, line: 145, baseType: !77, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !2746, file: !883, line: 145, baseType: !77, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !2746, file: !883, line: 148, baseType: !1161, size: 2048, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !2746, file: !883, line: 149, baseType: !36, size: 32, offset: 2240)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !2733, file: !883, line: 185, baseType: !2755, size: 64, offset: 3776)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !883, line: 165, baseType: !2756)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!36, !2759}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!2760 = !DILocalVariable(name: "lpsize", scope: !2728, file: !1, line: 886, type: !77)
!2761 = !DILocalVariable(name: "samples", scope: !2728, file: !1, line: 886, type: !77)
!2762 = !DILocalVariable(name: "lp", scope: !2763, file: !1, line: 888, type: !624)
!2763 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 887, column: 54)
!2764 = !DILocalVariable(name: "cg", scope: !2765, file: !1, line: 913, type: !2768)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !1, line: 912, column: 33)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 909, column: 25)
!2767 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 909, column: 13)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !877, line: 64, baseType: !2770)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !877, line: 51, size: 256, elements: !2771)
!2771 = !{!2772, !2773, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !2770, file: !877, line: 52, baseType: !901, size: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2770, file: !877, line: 55, baseType: !881, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2770, file: !877, line: 61, baseType: !881, size: 64, offset: 192)
!2775 = !DILocalVariable(name: "cri", scope: !2765, file: !1, line: 920, type: !2732)
!2776 = !DILocalVariable(name: "consumer", scope: !2777, file: !1, line: 924, type: !2778)
!2777 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 923, column: 38)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !877, line: 79, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !877, line: 67, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !2780, file: !877, line: 68, baseType: !1663, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2780, file: !877, line: 69, baseType: !98, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2780, file: !877, line: 72, baseType: !881, size: 64, offset: 128)
!2785 = !DILocalVariable(name: "mv", scope: !2786, file: !1, line: 936, type: !1281)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !1, line: 935, column: 39)
!2787 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 935, column: 16)
!2788 = !DILocalVariable(name: "mt", scope: !2786, file: !1, line: 937, type: !938)
!2789 = !DILocation(line: 785, column: 32, scope: !2680)
!2790 = !DILocation(line: 785, column: 42, scope: !2680)
!2791 = !DILocation(line: 790, column: 12, scope: !2680)
!2792 = !DILocation(line: 790, column: 23, scope: !2680)
!2793 = !DILocation(line: 790, column: 36, scope: !2680)
!2794 = !DILocation(line: 792, column: 12, scope: !2710)
!2795 = !DILocation(line: 792, column: 9, scope: !2680)
!2796 = !DILocation(line: 793, column: 15, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !1, line: 793, column: 12)
!2798 = distinct !DILexicalBlock(scope: !2710, file: !1, line: 792, column: 32)
!2799 = !DILocation(line: 793, column: 12, scope: !2798)
!2800 = !DILocation(line: 796, column: 37, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 795, column: 52)
!2802 = distinct !DILexicalBlock(scope: !2797, file: !1, line: 795, column: 19)
!2803 = !DILocation(line: 796, column: 21, scope: !2801)
!2804 = !DILocation(line: 796, column: 41, scope: !2801)
!2805 = !DILocation(line: 797, column: 9, scope: !2801)
!2806 = !DILocation(line: 798, column: 31, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 797, column: 55)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !1, line: 797, column: 19)
!2809 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 798, column: 21, scope: !2807)
!2811 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !2810)
!2812 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !2810)
!2813 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !2810)
!2814 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !2810)
!2815 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !2810)
!2816 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !2810)
!2817 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !2810)
!2818 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !2810)
!2819 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !2810)
!2820 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !2810)
!2821 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !2810)
!2822 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !2810)
!2823 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !2810)
!2824 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !2810)
!2825 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !2810)
!2826 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !2810)
!2827 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !2810)
!2828 = !DILocation(line: 0, scope: !502, inlinedAt: !2810)
!2829 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !2810)
!2830 = !DILocation(line: 798, column: 37, scope: !2807)
!2831 = !DILocation(line: 800, column: 13, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 799, column: 16)
!2833 = !DILocation(line: 803, column: 16, scope: !2707)
!2834 = !DILocation(line: 803, column: 13, scope: !2708)
!2835 = !DILocation(line: 804, column: 32, scope: !2706)
!2836 = !DILocation(line: 804, column: 24, scope: !2706)
!2837 = !DILocation(line: 805, column: 39, scope: !2706)
!2838 = !{!2839, !187, i64 0}
!2839 = !{!"quicklist", !187, i64 0, !187, i64 8, !195, i64 16, !195, i64 24, !184, i64 32, !184, i64 34}
!2840 = !DILocation(line: 805, column: 28, scope: !2706)
!2841 = !DILocation(line: 807, column: 13, scope: !2706)
!2842 = !DILocation(line: 0, scope: !2706)
!2843 = !DILocation(line: 0, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 807, column: 16)
!2845 = !DILocation(line: 808, column: 71, scope: !2844)
!2846 = !{!2847, !187, i64 16}
!2847 = !{!"quicklistNode", !187, i64 0, !187, i64 8, !187, i64 16, !184, i64 24, !184, i64 28, !184, i64 30, !184, i64 30, !184, i64 30, !184, i64 30, !184, i64 30}
!2848 = !DILocation(line: 808, column: 50, scope: !2844)
!2849 = !DILocation(line: 808, column: 49, scope: !2844)
!2850 = !DILocation(line: 808, column: 25, scope: !2844)
!2851 = !DILocation(line: 809, column: 24, scope: !2844)
!2852 = !DILocation(line: 810, column: 36, scope: !2706)
!2853 = !{!2847, !187, i64 8}
!2854 = !DILocation(line: 810, column: 28, scope: !2706)
!2855 = !DILocation(line: 810, column: 53, scope: !2706)
!2856 = !DILocation(line: 810, column: 42, scope: !2706)
!2857 = distinct !{!2857, !2841, !2858}
!2858 = !DILocation(line: 810, column: 66, scope: !2706)
!2859 = !DILocation(line: 811, column: 22, scope: !2706)
!2860 = !DILocation(line: 811, column: 38, scope: !2706)
!2861 = !DILocation(line: 811, column: 37, scope: !2706)
!2862 = !DILocation(line: 811, column: 50, scope: !2706)
!2863 = !{!2839, !195, i64 24}
!2864 = !DILocation(line: 811, column: 46, scope: !2706)
!2865 = !DILocation(line: 811, column: 45, scope: !2706)
!2866 = !DILocation(line: 811, column: 19, scope: !2706)
!2867 = !DILocation(line: 812, column: 9, scope: !2706)
!2868 = !DILocation(line: 813, column: 50, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 812, column: 57)
!2870 = distinct !DILexicalBlock(scope: !2707, file: !1, line: 812, column: 20)
!2871 = !DILocation(line: 813, column: 32, scope: !2869)
!2872 = !DILocation(line: 813, column: 31, scope: !2869)
!2873 = !DILocation(line: 815, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !1, line: 814, column: 16)
!2875 = !DILocation(line: 818, column: 16, scope: !2715)
!2876 = !DILocation(line: 818, column: 13, scope: !2716)
!2877 = !DILocation(line: 819, column: 20, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2715, file: !1, line: 818, column: 45)
!2879 = !DILocation(line: 787, column: 11, scope: !2680)
!2880 = !DILocation(line: 820, column: 18, scope: !2878)
!2881 = !DILocation(line: 788, column: 19, scope: !2680)
!2882 = !DILocation(line: 821, column: 72, scope: !2878)
!2883 = !{!2884, !195, i64 8}
!2884 = !{!"dictht", !187, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!2885 = !DILocation(line: 821, column: 71, scope: !2878)
!2886 = !DILocation(line: 821, column: 44, scope: !2878)
!2887 = !DILocation(line: 822, column: 25, scope: !2878)
!2888 = !DILocation(line: 789, column: 23, scope: !2680)
!2889 = !DILocation(line: 822, column: 39, scope: !2878)
!2890 = !DILocation(line: 822, column: 58, scope: !2878)
!2891 = !DILocation(line: 822, column: 47, scope: !2878)
!2892 = !DILocation(line: 827, column: 13, scope: !2878)
!2893 = !DILocation(line: 828, column: 17, scope: !2878)
!2894 = !DILocation(line: 823, column: 23, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2878, file: !1, line: 822, column: 73)
!2896 = !{!2897, !187, i64 0}
!2897 = !{!"dictEntry", !187, i64 0, !185, i64 8, !187, i64 16}
!2898 = !DILocation(line: 786, column: 9, scope: !2680)
!2899 = !DILocation(line: 824, column: 55, scope: !2895)
!2900 = !DILocation(line: 824, column: 53, scope: !2895)
!2901 = !DILocation(line: 824, column: 25, scope: !2895)
!2902 = !DILocation(line: 825, column: 24, scope: !2895)
!2903 = distinct !{!2903, !2904, !2905}
!2904 = !DILocation(line: 822, column: 13, scope: !2878)
!2905 = !DILocation(line: 826, column: 13, scope: !2878)
!2906 = !DILocation(line: 828, column: 51, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2878, file: !1, line: 828, column: 17)
!2908 = !DILocation(line: 828, column: 50, scope: !2907)
!2909 = !DILocation(line: 828, column: 59, scope: !2907)
!2910 = !{!2884, !195, i64 24}
!2911 = !DILocation(line: 828, column: 58, scope: !2907)
!2912 = !DILocation(line: 828, column: 32, scope: !2907)
!2913 = !DILocation(line: 828, column: 26, scope: !2907)
!2914 = !DILocation(line: 830, column: 29, scope: !2713)
!2915 = !DILocation(line: 830, column: 21, scope: !2713)
!2916 = !DILocation(line: 831, column: 48, scope: !2713)
!2917 = !DILocation(line: 831, column: 61, scope: !2713)
!2918 = !DILocation(line: 831, column: 56, scope: !2713)
!2919 = !DILocation(line: 831, column: 44, scope: !2713)
!2920 = !DILocation(line: 831, column: 43, scope: !2713)
!2921 = !DILocation(line: 833, column: 13, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 832, column: 16)
!2923 = !DILocation(line: 836, column: 16, scope: !2721)
!2924 = !DILocation(line: 836, column: 13, scope: !2722)
!2925 = !DILocation(line: 837, column: 51, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2721, file: !1, line: 836, column: 50)
!2927 = !DILocation(line: 837, column: 33, scope: !2926)
!2928 = !DILocation(line: 837, column: 31, scope: !2926)
!2929 = !DILocation(line: 838, column: 9, scope: !2926)
!2930 = !DILocation(line: 839, column: 28, scope: !2719)
!2931 = !DILocation(line: 839, column: 34, scope: !2719)
!2932 = !DILocation(line: 840, column: 47, scope: !2719)
!2933 = !DILocation(line: 840, column: 24, scope: !2719)
!2934 = !DILocation(line: 841, column: 41, scope: !2719)
!2935 = !{!2936, !187, i64 0}
!2936 = !{!"zskiplist", !187, i64 0, !187, i64 8, !195, i64 16, !184, i64 24}
!2937 = !DILocation(line: 841, column: 58, scope: !2719)
!2938 = !{!2939, !187, i64 0}
!2939 = !{!"zskiplistLevel", !187, i64 0, !195, i64 8}
!2940 = !DILocation(line: 841, column: 28, scope: !2719)
!2941 = !DILocation(line: 843, column: 48, scope: !2719)
!2942 = !DILocation(line: 843, column: 47, scope: !2719)
!2943 = !DILocation(line: 844, column: 34, scope: !2719)
!2944 = !DILocation(line: 844, column: 21, scope: !2719)
!2945 = !DILocation(line: 842, column: 75, scope: !2719)
!2946 = !DILocation(line: 843, column: 61, scope: !2719)
!2947 = !DILocation(line: 845, column: 25, scope: !2719)
!2948 = !DILocation(line: 845, column: 44, scope: !2719)
!2949 = !DILocation(line: 845, column: 33, scope: !2719)
!2950 = !DILocation(line: 846, column: 48, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 845, column: 59)
!2952 = !DILocation(line: 846, column: 28, scope: !2951)
!2953 = !DILocation(line: 847, column: 55, scope: !2951)
!2954 = !DILocation(line: 847, column: 53, scope: !2951)
!2955 = !DILocation(line: 846, column: 25, scope: !2951)
!2956 = !DILocation(line: 847, column: 25, scope: !2951)
!2957 = !DILocation(line: 848, column: 24, scope: !2951)
!2958 = !DILocation(line: 849, column: 41, scope: !2951)
!2959 = distinct !{!2959, !2960, !2961}
!2960 = !DILocation(line: 845, column: 13, scope: !2719)
!2961 = !DILocation(line: 850, column: 13, scope: !2719)
!2962 = !DILocation(line: 851, column: 17, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 851, column: 17)
!2964 = !DILocation(line: 851, column: 51, scope: !2963)
!2965 = !DILocation(line: 851, column: 50, scope: !2963)
!2966 = !DILocation(line: 851, column: 59, scope: !2963)
!2967 = !DILocation(line: 851, column: 58, scope: !2963)
!2968 = !DILocation(line: 851, column: 32, scope: !2963)
!2969 = !DILocation(line: 851, column: 26, scope: !2963)
!2970 = !DILocation(line: 853, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 852, column: 16)
!2972 = !DILocation(line: 856, column: 16, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 856, column: 13)
!2974 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 855, column: 37)
!2975 = !DILocation(line: 856, column: 13, scope: !2974)
!2976 = !DILocation(line: 857, column: 51, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 856, column: 50)
!2978 = !DILocation(line: 857, column: 33, scope: !2977)
!2979 = !DILocation(line: 857, column: 31, scope: !2977)
!2980 = !DILocation(line: 858, column: 9, scope: !2977)
!2981 = !DILocation(line: 859, column: 20, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !1, line: 858, column: 52)
!2983 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 858, column: 20)
!2984 = !DILocation(line: 860, column: 18, scope: !2982)
!2985 = !DILocation(line: 861, column: 72, scope: !2982)
!2986 = !DILocation(line: 861, column: 71, scope: !2982)
!2987 = !DILocation(line: 861, column: 44, scope: !2982)
!2988 = !DILocation(line: 862, column: 25, scope: !2982)
!2989 = !DILocation(line: 862, column: 39, scope: !2982)
!2990 = !DILocation(line: 862, column: 58, scope: !2982)
!2991 = !DILocation(line: 862, column: 47, scope: !2982)
!2992 = !DILocation(line: 869, column: 13, scope: !2982)
!2993 = !DILocation(line: 870, column: 17, scope: !2982)
!2994 = !DILocation(line: 863, column: 23, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2982, file: !1, line: 862, column: 73)
!2996 = !DILocation(line: 864, column: 24, scope: !2995)
!2997 = !DILocation(line: 786, column: 14, scope: !2680)
!2998 = !DILocation(line: 865, column: 28, scope: !2995)
!2999 = !DILocation(line: 865, column: 48, scope: !2995)
!3000 = !DILocation(line: 865, column: 46, scope: !2995)
!3001 = !DILocation(line: 865, column: 25, scope: !2995)
!3002 = !DILocation(line: 866, column: 25, scope: !2995)
!3003 = !DILocation(line: 867, column: 24, scope: !2995)
!3004 = distinct !{!3004, !3005, !3006}
!3005 = !DILocation(line: 862, column: 13, scope: !2982)
!3006 = !DILocation(line: 868, column: 13, scope: !2982)
!3007 = !DILocation(line: 870, column: 51, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2982, file: !1, line: 870, column: 17)
!3009 = !DILocation(line: 870, column: 50, scope: !3008)
!3010 = !DILocation(line: 870, column: 59, scope: !3008)
!3011 = !DILocation(line: 870, column: 58, scope: !3008)
!3012 = !DILocation(line: 870, column: 32, scope: !3008)
!3013 = !DILocation(line: 870, column: 26, scope: !3008)
!3014 = !DILocation(line: 872, column: 13, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2983, file: !1, line: 871, column: 16)
!3016 = !DILocation(line: 875, column: 24, scope: !2728)
!3017 = !DILocation(line: 875, column: 17, scope: !2728)
!3018 = !DILocation(line: 877, column: 48, scope: !2728)
!3019 = !{!3020, !187, i64 0}
!3020 = !{!"stream", !187, i64 0, !195, i64 8, !3021, i64 16, !187, i64 32}
!3021 = !{!"streamID", !195, i64 0, !195, i64 8}
!3022 = !DILocation(line: 771, column: 40, scope: !2664, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 877, column: 18, scope: !2728)
!3024 = !DILocation(line: 773, column: 17, scope: !2664, inlinedAt: !3023)
!3025 = !DILocation(line: 773, column: 24, scope: !2664, inlinedAt: !3023)
!3026 = !DILocation(line: 772, column: 12, scope: !2664, inlinedAt: !3023)
!3027 = !DILocation(line: 774, column: 18, scope: !2664, inlinedAt: !3023)
!3028 = !DILocation(line: 777, column: 5, scope: !2664, inlinedAt: !3023)
!3029 = !DILocation(line: 776, column: 10, scope: !2664, inlinedAt: !3023)
!3030 = !DILocation(line: 877, column: 15, scope: !2728)
!3031 = !DILocation(line: 883, column: 9, scope: !2728)
!3032 = !DILocation(line: 883, column: 21, scope: !2728)
!3033 = !DILocation(line: 884, column: 9, scope: !2728)
!3034 = !DILocation(line: 885, column: 9, scope: !2728)
!3035 = !DILocation(line: 886, column: 16, scope: !2728)
!3036 = !DILocation(line: 886, column: 28, scope: !2728)
!3037 = !DILocation(line: 887, column: 23, scope: !2728)
!3038 = !DILocation(line: 887, column: 37, scope: !2728)
!3039 = !DILocation(line: 887, column: 40, scope: !2728)
!3040 = !DILocation(line: 887, column: 9, scope: !2728)
!3041 = !DILocation(line: 888, column: 36, scope: !2763)
!3042 = !{!3043, !187, i64 24}
!3043 = !{!"raxIterator", !184, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !195, i64 32, !195, i64 40, !185, i64 48, !187, i64 176, !3044, i64 184, !187, i64 472}
!3044 = !{!"raxStack", !187, i64 0, !195, i64 8, !195, i64 16, !185, i64 24, !184, i64 280}
!3045 = !DILocation(line: 888, column: 28, scope: !2763)
!3046 = !DILocation(line: 889, column: 23, scope: !2763)
!3047 = !DILocation(line: 889, column: 20, scope: !2763)
!3048 = !DILocation(line: 890, column: 20, scope: !2763)
!3049 = distinct !{!3049, !3040, !3050}
!3050 = !DILocation(line: 891, column: 9, scope: !2728)
!3051 = !DILocation(line: 0, scope: !2763)
!3052 = !DILocation(line: 892, column: 16, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 892, column: 13)
!3054 = !DILocation(line: 892, column: 21, scope: !3053)
!3055 = !DILocation(line: 892, column: 28, scope: !3053)
!3056 = !DILocation(line: 892, column: 13, scope: !2728)
!3057 = !DILocation(line: 893, column: 19, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 892, column: 40)
!3059 = !DILocation(line: 894, column: 9, scope: !3058)
!3060 = !DILocation(line: 895, column: 17, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !1, line: 895, column: 17)
!3062 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 894, column: 16)
!3063 = !DILocation(line: 895, column: 17, scope: !3062)
!3064 = !DILocation(line: 895, column: 33, scope: !3061)
!3065 = !DILocation(line: 895, column: 26, scope: !3061)
!3066 = !DILocation(line: 0, scope: !2728)
!3067 = !DILocation(line: 896, column: 46, scope: !3062)
!3068 = !DILocation(line: 896, column: 29, scope: !3062)
!3069 = !DILocation(line: 896, column: 19, scope: !3062)
!3070 = !DILocation(line: 899, column: 13, scope: !3062)
!3071 = !DILocation(line: 900, column: 13, scope: !3062)
!3072 = !DILocation(line: 901, column: 33, scope: !3062)
!3073 = !DILocation(line: 901, column: 22, scope: !3062)
!3074 = !DILocation(line: 901, column: 19, scope: !3062)
!3075 = !DILocation(line: 0, scope: !3062)
!3076 = !DILocation(line: 903, column: 9, scope: !2728)
!3077 = !DILocation(line: 909, column: 16, scope: !2767)
!3078 = !{!3020, !187, i64 32}
!3079 = !DILocation(line: 909, column: 13, scope: !2767)
!3080 = !DILocation(line: 909, column: 13, scope: !2728)
!3081 = !DILocation(line: 910, column: 13, scope: !2766)
!3082 = !DILocation(line: 911, column: 13, scope: !2766)
!3083 = !DILocation(line: 912, column: 19, scope: !2766)
!3084 = !DILocation(line: 912, column: 13, scope: !2766)
!3085 = !DILocation(line: 913, column: 35, scope: !2765)
!3086 = !DILocation(line: 913, column: 27, scope: !2765)
!3087 = !DILocation(line: 915, column: 57, scope: !2765)
!3088 = !{!3089, !187, i64 16}
!3089 = !{!"streamCG", !3021, i64 0, !187, i64 16, !187, i64 24}
!3090 = !DILocation(line: 771, column: 40, scope: !2664, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 915, column: 26, scope: !2765)
!3092 = !DILocation(line: 773, column: 17, scope: !2664, inlinedAt: !3091)
!3093 = !DILocation(line: 773, column: 24, scope: !2664, inlinedAt: !3091)
!3094 = !DILocation(line: 772, column: 12, scope: !2664, inlinedAt: !3091)
!3095 = !DILocation(line: 774, column: 18, scope: !2664, inlinedAt: !3091)
!3096 = !DILocation(line: 777, column: 5, scope: !2664, inlinedAt: !3091)
!3097 = !DILocation(line: 916, column: 45, scope: !2765)
!3098 = !DILocation(line: 916, column: 44, scope: !2765)
!3099 = !DILocation(line: 776, column: 10, scope: !2664, inlinedAt: !3091)
!3100 = !DILocation(line: 914, column: 23, scope: !2765)
!3101 = !DILocation(line: 915, column: 23, scope: !2765)
!3102 = !DILocation(line: 916, column: 23, scope: !2765)
!3103 = !DILocation(line: 920, column: 17, scope: !2765)
!3104 = !DILocation(line: 921, column: 35, scope: !2765)
!3105 = !{!3089, !187, i64 24}
!3106 = !DILocation(line: 920, column: 29, scope: !2765)
!3107 = !DILocation(line: 921, column: 17, scope: !2765)
!3108 = !DILocation(line: 922, column: 17, scope: !2765)
!3109 = !DILocation(line: 923, column: 23, scope: !2765)
!3110 = !DILocation(line: 923, column: 17, scope: !2765)
!3111 = !DILocation(line: 924, column: 52, scope: !2777)
!3112 = !DILocation(line: 924, column: 37, scope: !2777)
!3113 = !DILocation(line: 926, column: 47, scope: !2777)
!3114 = !{!3115, !187, i64 8}
!3115 = !{!"streamConsumer", !196, i64 0, !187, i64 8, !187, i64 16}
!3116 = !DILocation(line: 87, column: 39, scope: !488, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 926, column: 30, scope: !2777)
!3118 = !DILocation(line: 88, column: 27, scope: !488, inlinedAt: !3117)
!3119 = !DILocation(line: 88, column: 19, scope: !488, inlinedAt: !3117)
!3120 = !DILocation(line: 89, column: 5, scope: !488, inlinedAt: !3117)
!3121 = !DILocation(line: 91, column: 20, scope: !502, inlinedAt: !3117)
!3122 = !DILocation(line: 91, column: 13, scope: !502, inlinedAt: !3117)
!3123 = !DILocation(line: 93, column: 20, scope: !502, inlinedAt: !3117)
!3124 = !DILocation(line: 93, column: 34, scope: !502, inlinedAt: !3117)
!3125 = !DILocation(line: 93, column: 13, scope: !502, inlinedAt: !3117)
!3126 = !DILocation(line: 95, column: 20, scope: !502, inlinedAt: !3117)
!3127 = !DILocation(line: 95, column: 35, scope: !502, inlinedAt: !3117)
!3128 = !DILocation(line: 95, column: 13, scope: !502, inlinedAt: !3117)
!3129 = !DILocation(line: 97, column: 20, scope: !502, inlinedAt: !3117)
!3130 = !DILocation(line: 97, column: 35, scope: !502, inlinedAt: !3117)
!3131 = !DILocation(line: 97, column: 13, scope: !502, inlinedAt: !3117)
!3132 = !DILocation(line: 99, column: 20, scope: !502, inlinedAt: !3117)
!3133 = !DILocation(line: 99, column: 35, scope: !502, inlinedAt: !3117)
!3134 = !DILocation(line: 99, column: 13, scope: !502, inlinedAt: !3117)
!3135 = !DILocation(line: 0, scope: !502, inlinedAt: !3117)
!3136 = !DILocation(line: 102, column: 1, scope: !488, inlinedAt: !3117)
!3137 = !DILocation(line: 927, column: 67, scope: !2777)
!3138 = !{!3115, !187, i64 16}
!3139 = !DILocation(line: 771, column: 40, scope: !2664, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 927, column: 30, scope: !2777)
!3141 = !DILocation(line: 773, column: 17, scope: !2664, inlinedAt: !3140)
!3142 = !DILocation(line: 773, column: 24, scope: !2664, inlinedAt: !3140)
!3143 = !DILocation(line: 772, column: 12, scope: !2664, inlinedAt: !3140)
!3144 = !DILocation(line: 774, column: 18, scope: !2664, inlinedAt: !3140)
!3145 = !DILocation(line: 777, column: 5, scope: !2664, inlinedAt: !3140)
!3146 = !DILocation(line: 776, column: 10, scope: !2664, inlinedAt: !3140)
!3147 = !DILocation(line: 925, column: 27, scope: !2777)
!3148 = !DILocation(line: 926, column: 27, scope: !2777)
!3149 = !DILocation(line: 927, column: 27, scope: !2777)
!3150 = distinct !{!3150, !3110, !3151}
!3151 = !DILocation(line: 930, column: 17, scope: !2765)
!3152 = !DILocation(line: 0, scope: !2777)
!3153 = !DILocation(line: 931, column: 17, scope: !2765)
!3154 = !DILocation(line: 932, column: 13, scope: !2766)
!3155 = distinct !{!3155, !3084, !3154}
!3156 = !DILocation(line: 0, scope: !2765)
!3157 = !DILocation(line: 933, column: 13, scope: !2766)
!3158 = !DILocation(line: 934, column: 9, scope: !2766)
!3159 = !DILocation(line: 935, column: 5, scope: !2729)
!3160 = !DILocation(line: 935, column: 5, scope: !2728)
!3161 = !DILocation(line: 936, column: 30, scope: !2786)
!3162 = !DILocation(line: 936, column: 22, scope: !2786)
!3163 = !DILocation(line: 937, column: 30, scope: !2786)
!3164 = !DILocation(line: 937, column: 21, scope: !2786)
!3165 = !DILocation(line: 938, column: 17, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !2786, file: !1, line: 938, column: 13)
!3167 = !{!1410, !187, i64 40}
!3168 = !DILocation(line: 938, column: 27, scope: !3166)
!3169 = !DILocation(line: 938, column: 13, scope: !2786)
!3170 = !DILocation(line: 939, column: 39, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 938, column: 36)
!3172 = !DILocation(line: 939, column: 21, scope: !3171)
!3173 = !DILocation(line: 940, column: 9, scope: !3171)
!3174 = !DILocation(line: 944, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !2787, file: !1, line: 943, column: 12)
!3176 = !DILocation(line: 0, scope: !3171)
!3177 = !DILocation(line: 946, column: 5, scope: !2680)
!3178 = distinct !DISubprogram(name: "freeMemoryOverheadData", scope: !1, file: !1, line: 950, type: !3179, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3215)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisMemOverhead", file: !84, line: 865, size: 1472, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "peak_allocated", scope: !3182, file: !84, line: 866, baseType: !77, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "total_allocated", scope: !3182, file: !84, line: 867, baseType: !77, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "startup_allocated", scope: !3182, file: !84, line: 868, baseType: !77, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "repl_backlog", scope: !3182, file: !84, line: 869, baseType: !77, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "clients_slaves", scope: !3182, file: !84, line: 870, baseType: !77, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "clients_normal", scope: !3182, file: !84, line: 871, baseType: !77, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "aof_buffer", scope: !3182, file: !84, line: 872, baseType: !77, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lua_caches", scope: !3182, file: !84, line: 873, baseType: !77, size: 64, offset: 448)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_total", scope: !3182, file: !84, line: 874, baseType: !77, size: 64, offset: 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "dataset", scope: !3182, file: !84, line: 875, baseType: !77, size: 64, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "total_keys", scope: !3182, file: !84, line: 876, baseType: !77, size: 64, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_key", scope: !3182, file: !84, line: 877, baseType: !77, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dataset_perc", scope: !3182, file: !84, line: 878, baseType: !113, size: 32, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "peak_perc", scope: !3182, file: !84, line: 879, baseType: !113, size: 32, offset: 800)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "total_frag", scope: !3182, file: !84, line: 880, baseType: !113, size: 32, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "total_frag_bytes", scope: !3182, file: !84, line: 881, baseType: !3200, size: 64, offset: 896)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !975, line: 200, baseType: !1025)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_frag", scope: !3182, file: !84, line: 882, baseType: !113, size: 32, offset: 960)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_frag_bytes", scope: !3182, file: !84, line: 883, baseType: !3200, size: 64, offset: 1024)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_rss", scope: !3182, file: !84, line: 884, baseType: !113, size: 32, offset: 1088)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_rss_bytes", scope: !3182, file: !84, line: 885, baseType: !3200, size: 64, offset: 1152)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rss_extra", scope: !3182, file: !84, line: 886, baseType: !113, size: 32, offset: 1216)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rss_extra_bytes", scope: !3182, file: !84, line: 887, baseType: !77, size: 64, offset: 1280)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "num_dbs", scope: !3182, file: !84, line: 888, baseType: !77, size: 64, offset: 1344)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !3182, file: !84, line: 893, baseType: !3209, size: 64, offset: 1408)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3182, file: !84, line: 889, size: 192, elements: !3211)
!3211 = !{!3212, !3213, !3214}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dbid", scope: !3210, file: !84, line: 890, baseType: !77, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_ht_main", scope: !3210, file: !84, line: 891, baseType: !77, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_ht_expires", scope: !3210, file: !84, line: 892, baseType: !77, size: 64, offset: 128)
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "mh", arg: 1, scope: !3178, file: !1, line: 950, type: !3181)
!3217 = !DILocation(line: 950, column: 54, scope: !3178)
!3218 = !DILocation(line: 951, column: 15, scope: !3178)
!3219 = !{!3220, !187, i64 176}
!3220 = !{!"redisMemOverhead", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !3221, i64 96, !3221, i64 100, !3221, i64 104, !195, i64 112, !3221, i64 120, !195, i64 128, !3221, i64 136, !195, i64 144, !3221, i64 152, !195, i64 160, !195, i64 168, !187, i64 176}
!3221 = !{!"float", !185, i64 0}
!3222 = !DILocation(line: 951, column: 5, scope: !3178)
!3223 = !DILocation(line: 952, column: 11, scope: !3178)
!3224 = !DILocation(line: 952, column: 5, scope: !3178)
!3225 = !DILocation(line: 953, column: 1, scope: !3178)
!3226 = distinct !DISubprogram(name: "getMemoryOverheadData", scope: !1, file: !1, line: 958, type: !3227, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!3181}
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3243, !3244, !3246, !3249, !3250, !3252, !3256, !3257}
!3230 = !DILocalVariable(name: "j", scope: !3226, file: !1, line: 959, type: !36)
!3231 = !DILocalVariable(name: "mem_total", scope: !3226, file: !1, line: 960, type: !77)
!3232 = !DILocalVariable(name: "mem", scope: !3226, file: !1, line: 961, type: !77)
!3233 = !DILocalVariable(name: "zmalloc_used", scope: !3226, file: !1, line: 962, type: !77)
!3234 = !DILocalVariable(name: "mh", scope: !3226, file: !1, line: 963, type: !3181)
!3235 = !DILocalVariable(name: "li", scope: !3236, file: !1, line: 995, type: !3238)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !1, line: 994, column: 36)
!3237 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 994, column: 9)
!3238 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !1552, line: 45, baseType: !3239)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !1552, line: 42, size: 128, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3239, file: !1552, line: 43, baseType: !1556, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3239, file: !1552, line: 44, baseType: !36, size: 32, offset: 64)
!3243 = !DILocalVariable(name: "ln", scope: !3236, file: !1, line: 996, type: !1556)
!3244 = !DILocalVariable(name: "c", scope: !3245, file: !1, line: 1000, type: !1531)
!3245 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 999, column: 37)
!3246 = !DILocalVariable(name: "li", scope: !3247, file: !1, line: 1011, type: !3238)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 1010, column: 37)
!3248 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1010, column: 9)
!3249 = !DILocalVariable(name: "ln", scope: !3247, file: !1, line: 1012, type: !1556)
!3250 = !DILocalVariable(name: "c", scope: !3251, file: !1, line: 1016, type: !1531)
!3251 = distinct !DILexicalBlock(scope: !3247, file: !1, line: 1015, column: 37)
!3252 = !DILocalVariable(name: "db", scope: !3253, file: !1, line: 1048, type: !1538)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !1, line: 1047, column: 40)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !1, line: 1047, column: 5)
!3255 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1047, column: 5)
!3256 = !DILocalVariable(name: "keyscount", scope: !3253, file: !1, line: 1049, type: !360)
!3257 = !DILocalVariable(name: "net_usage", scope: !3226, file: !1, line: 1076, type: !77)
!3258 = !DILocation(line: 960, column: 12, scope: !3226)
!3259 = !DILocation(line: 961, column: 12, scope: !3226)
!3260 = !DILocation(line: 962, column: 27, scope: !3226)
!3261 = !DILocation(line: 962, column: 12, scope: !3226)
!3262 = !DILocation(line: 963, column: 35, scope: !3226)
!3263 = !DILocation(line: 963, column: 30, scope: !3226)
!3264 = !DILocation(line: 965, column: 9, scope: !3226)
!3265 = !DILocation(line: 965, column: 25, scope: !3226)
!3266 = !{!3220, !195, i64 8}
!3267 = !DILocation(line: 966, column: 36, scope: !3226)
!3268 = !{!194, !195, i64 168}
!3269 = !DILocation(line: 966, column: 9, scope: !3226)
!3270 = !DILocation(line: 966, column: 27, scope: !3226)
!3271 = !{!3220, !195, i64 16}
!3272 = !DILocation(line: 967, column: 33, scope: !3226)
!3273 = !{!194, !195, i64 1112}
!3274 = !DILocation(line: 967, column: 9, scope: !3226)
!3275 = !DILocation(line: 967, column: 24, scope: !3226)
!3276 = !{!3220, !195, i64 0}
!3277 = !DILocation(line: 969, column: 41, scope: !3226)
!3278 = !{!194, !195, i64 1208}
!3279 = !DILocation(line: 969, column: 9, scope: !3226)
!3280 = !DILocation(line: 969, column: 80, scope: !3226)
!3281 = !{!194, !195, i64 1200}
!3282 = !DILocation(line: 969, column: 55, scope: !3226)
!3283 = !DILocation(line: 969, column: 53, scope: !3226)
!3284 = !DILocation(line: 968, column: 9, scope: !3226)
!3285 = !DILocation(line: 968, column: 20, scope: !3226)
!3286 = !{!3220, !3221, i64 104}
!3287 = !DILocation(line: 971, column: 46, scope: !3226)
!3288 = !DILocation(line: 970, column: 9, scope: !3226)
!3289 = !DILocation(line: 970, column: 26, scope: !3226)
!3290 = !{!3220, !195, i64 112}
!3291 = !DILocation(line: 973, column: 41, scope: !3226)
!3292 = !{!194, !195, i64 1224}
!3293 = !DILocation(line: 973, column: 9, scope: !3226)
!3294 = !DILocation(line: 973, column: 85, scope: !3226)
!3295 = !{!194, !195, i64 1216}
!3296 = !DILocation(line: 973, column: 60, scope: !3226)
!3297 = !DILocation(line: 973, column: 58, scope: !3226)
!3298 = !DILocation(line: 972, column: 9, scope: !3226)
!3299 = !DILocation(line: 972, column: 24, scope: !3226)
!3300 = !{!3220, !3221, i64 120}
!3301 = !DILocation(line: 975, column: 51, scope: !3226)
!3302 = !DILocation(line: 974, column: 9, scope: !3226)
!3303 = !DILocation(line: 974, column: 30, scope: !3226)
!3304 = !{!3220, !195, i64 128}
!3305 = !DILocation(line: 977, column: 41, scope: !3226)
!3306 = !{!194, !195, i64 1232}
!3307 = !DILocation(line: 977, column: 9, scope: !3226)
!3308 = !DILocation(line: 977, column: 60, scope: !3226)
!3309 = !DILocation(line: 976, column: 9, scope: !3226)
!3310 = !DILocation(line: 976, column: 23, scope: !3226)
!3311 = !{!3220, !3221, i64 136}
!3312 = !DILocation(line: 979, column: 53, scope: !3226)
!3313 = !DILocation(line: 978, column: 9, scope: !3226)
!3314 = !DILocation(line: 978, column: 29, scope: !3226)
!3315 = !{!3220, !195, i64 144}
!3316 = !DILocation(line: 981, column: 53, scope: !3226)
!3317 = !DILocation(line: 980, column: 9, scope: !3226)
!3318 = !DILocation(line: 980, column: 19, scope: !3226)
!3319 = !{!3220, !3221, i64 152}
!3320 = !DILocation(line: 983, column: 46, scope: !3226)
!3321 = !DILocation(line: 982, column: 9, scope: !3226)
!3322 = !DILocation(line: 982, column: 25, scope: !3226)
!3323 = !{!3220, !195, i64 160}
!3324 = !DILocation(line: 988, column: 16, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 988, column: 9)
!3326 = !{!194, !187, i64 2376}
!3327 = !DILocation(line: 988, column: 9, scope: !3325)
!3328 = !DILocation(line: 988, column: 9, scope: !3226)
!3329 = !DILocation(line: 989, column: 16, scope: !3325)
!3330 = !DILocation(line: 989, column: 9, scope: !3325)
!3331 = !DILocation(line: 0, scope: !3226)
!3332 = !DILocation(line: 990, column: 9, scope: !3226)
!3333 = !DILocation(line: 990, column: 22, scope: !3226)
!3334 = !{!3220, !195, i64 24}
!3335 = !DILocation(line: 991, column: 15, scope: !3226)
!3336 = !DILocation(line: 994, column: 9, scope: !3237)
!3337 = !{!194, !187, i64 536}
!3338 = !{!3339, !195, i64 40}
!3339 = !{!"list", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !195, i64 40}
!3340 = !DILocation(line: 994, column: 9, scope: !3226)
!3341 = !DILocation(line: 995, column: 9, scope: !3236)
!3342 = !DILocation(line: 995, column: 18, scope: !3236)
!3343 = !DILocation(line: 998, column: 9, scope: !3236)
!3344 = !DILocation(line: 999, column: 21, scope: !3236)
!3345 = !DILocation(line: 996, column: 19, scope: !3236)
!3346 = !DILocation(line: 999, column: 9, scope: !3236)
!3347 = !DILocation(line: 1000, column: 25, scope: !3245)
!3348 = !{!3349, !187, i64 16}
!3349 = !{!"listNode", !187, i64 0, !187, i64 8, !187, i64 16}
!3350 = !DILocation(line: 1000, column: 21, scope: !3245)
!3351 = !DILocation(line: 1001, column: 20, scope: !3245)
!3352 = !DILocation(line: 1002, column: 36, scope: !3245)
!3353 = !{!3354, !187, i64 32}
!3354 = !{!"client", !195, i64 0, !184, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !195, i64 40, !187, i64 48, !195, i64 56, !184, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !184, i64 96, !184, i64 100, !195, i64 104, !187, i64 112, !196, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !184, i64 160, !184, i64 164, !184, i64 168, !184, i64 172, !184, i64 176, !195, i64 184, !195, i64 192, !187, i64 200, !196, i64 208, !196, i64 216, !196, i64 224, !196, i64 232, !196, i64 240, !185, i64 248, !184, i64 292, !185, i64 296, !184, i64 344, !3355, i64 352, !184, i64 384, !3356, i64 392, !196, i64 480, !187, i64 488, !187, i64 496, !187, i64 504, !187, i64 512, !187, i64 520, !184, i64 528, !185, i64 532}
!3355 = !{!"multiState", !187, i64 0, !184, i64 8, !184, i64 12, !184, i64 16, !195, i64 24}
!3356 = !{!"blockingState", !196, i64 0, !187, i64 8, !187, i64 16, !195, i64 24, !187, i64 32, !187, i64 40, !196, i64 48, !196, i64 56, !184, i64 64, !184, i64 68, !196, i64 72, !187, i64 80}
!3357 = !DILocation(line: 1002, column: 20, scope: !3245)
!3358 = !DILocation(line: 1001, column: 17, scope: !3245)
!3359 = !DILocation(line: 1002, column: 17, scope: !3245)
!3360 = !DILocation(line: 1003, column: 17, scope: !3245)
!3361 = distinct !{!3361, !3346, !3362}
!3362 = !DILocation(line: 1004, column: 9, scope: !3236)
!3363 = !DILocation(line: 0, scope: !3245)
!3364 = !DILocation(line: 1005, column: 5, scope: !3237)
!3365 = !DILocation(line: 1005, column: 5, scope: !3236)
!3366 = !DILocation(line: 993, column: 9, scope: !3226)
!3367 = !DILocation(line: 1006, column: 9, scope: !3226)
!3368 = !DILocation(line: 1006, column: 24, scope: !3226)
!3369 = !{!3220, !195, i64 32}
!3370 = !DILocation(line: 1007, column: 14, scope: !3226)
!3371 = !DILocation(line: 1010, column: 9, scope: !3248)
!3372 = !{!194, !187, i64 512}
!3373 = !DILocation(line: 1010, column: 9, scope: !3226)
!3374 = !DILocation(line: 1011, column: 9, scope: !3247)
!3375 = !DILocation(line: 1011, column: 18, scope: !3247)
!3376 = !DILocation(line: 1014, column: 9, scope: !3247)
!3377 = !DILocation(line: 1015, column: 21, scope: !3247)
!3378 = !DILocation(line: 1012, column: 19, scope: !3247)
!3379 = !DILocation(line: 1015, column: 9, scope: !3247)
!3380 = !DILocation(line: 1016, column: 25, scope: !3251)
!3381 = !DILocation(line: 1016, column: 21, scope: !3251)
!3382 = !DILocation(line: 1017, column: 20, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3251, file: !1, line: 1017, column: 17)
!3384 = !{!3354, !184, i64 160}
!3385 = !DILocation(line: 1017, column: 41, scope: !3383)
!3386 = distinct !{!3386, !3379, !3387}
!3387 = !DILocation(line: 1022, column: 9, scope: !3247)
!3388 = !DILocation(line: 1019, column: 20, scope: !3251)
!3389 = !DILocation(line: 1020, column: 36, scope: !3251)
!3390 = !DILocation(line: 1020, column: 20, scope: !3251)
!3391 = !DILocation(line: 1019, column: 17, scope: !3251)
!3392 = !DILocation(line: 1020, column: 17, scope: !3251)
!3393 = !DILocation(line: 1021, column: 17, scope: !3251)
!3394 = !DILocation(line: 0, scope: !3251)
!3395 = !DILocation(line: 1023, column: 5, scope: !3248)
!3396 = !DILocation(line: 1023, column: 5, scope: !3247)
!3397 = !DILocation(line: 1009, column: 9, scope: !3226)
!3398 = !DILocation(line: 1024, column: 9, scope: !3226)
!3399 = !DILocation(line: 1024, column: 24, scope: !3226)
!3400 = !{!3220, !195, i64 40}
!3401 = !DILocation(line: 1025, column: 14, scope: !3226)
!3402 = !DILocation(line: 1028, column: 16, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1028, column: 9)
!3404 = !{!194, !184, i64 1880}
!3405 = !DILocation(line: 1028, column: 26, scope: !3403)
!3406 = !DILocation(line: 1028, column: 9, scope: !3226)
!3407 = !DILocation(line: 1029, column: 32, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3403, file: !1, line: 1028, column: 38)
!3409 = !{!194, !187, i64 1952}
!3410 = !DILocalVariable(name: "s", arg: 1, scope: !3411, file: !99, line: 180, type: !493)
!3411 = distinct !DISubprogram(name: "sdsalloc", scope: !99, file: !99, line: 180, type: !489, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3412)
!3412 = !{!3410, !3413}
!3413 = !DILocalVariable(name: "flags", scope: !3411, file: !99, line: 181, type: !131)
!3414 = !DILocation(line: 180, column: 41, scope: !3411, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1029, column: 16, scope: !3408)
!3416 = !DILocation(line: 181, column: 27, scope: !3411, inlinedAt: !3415)
!3417 = !DILocation(line: 181, column: 19, scope: !3411, inlinedAt: !3415)
!3418 = !DILocation(line: 182, column: 5, scope: !3411, inlinedAt: !3415)
!3419 = !DILocation(line: 184, column: 20, scope: !3420, inlinedAt: !3415)
!3420 = distinct !DILexicalBlock(scope: !3411, file: !99, line: 182, column: 33)
!3421 = !DILocation(line: 184, column: 13, scope: !3420, inlinedAt: !3415)
!3422 = !DILocation(line: 186, column: 34, scope: !3420, inlinedAt: !3415)
!3423 = !DILocation(line: 186, column: 20, scope: !3420, inlinedAt: !3415)
!3424 = !DILocation(line: 186, column: 13, scope: !3420, inlinedAt: !3415)
!3425 = !DILocation(line: 188, column: 35, scope: !3420, inlinedAt: !3415)
!3426 = !DILocation(line: 188, column: 20, scope: !3420, inlinedAt: !3415)
!3427 = !DILocation(line: 188, column: 13, scope: !3420, inlinedAt: !3415)
!3428 = !DILocation(line: 190, column: 35, scope: !3420, inlinedAt: !3415)
!3429 = !DILocation(line: 190, column: 20, scope: !3420, inlinedAt: !3415)
!3430 = !DILocation(line: 190, column: 13, scope: !3420, inlinedAt: !3415)
!3431 = !DILocation(line: 192, column: 35, scope: !3420, inlinedAt: !3415)
!3432 = !DILocation(line: 192, column: 13, scope: !3420, inlinedAt: !3415)
!3433 = !DILocation(line: 0, scope: !3420, inlinedAt: !3415)
!3434 = !DILocation(line: 195, column: 1, scope: !3411, inlinedAt: !3415)
!3435 = !DILocation(line: 1030, column: 16, scope: !3408)
!3436 = !DILocation(line: 1030, column: 13, scope: !3408)
!3437 = !DILocation(line: 1031, column: 5, scope: !3408)
!3438 = !DILocation(line: 1032, column: 9, scope: !3226)
!3439 = !DILocation(line: 1032, column: 20, scope: !3226)
!3440 = !{!3220, !195, i64 48}
!3441 = !DILocation(line: 1033, column: 14, scope: !3226)
!3442 = !DILocation(line: 1035, column: 18, scope: !3226)
!3443 = !{!194, !196, i64 3024}
!3444 = !DILocation(line: 1036, column: 12, scope: !3226)
!3445 = !{!194, !187, i64 3016}
!3446 = !DILocation(line: 1037, column: 9, scope: !3226)
!3447 = !DILocation(line: 1038, column: 12, scope: !3226)
!3448 = !{!194, !187, i64 2664}
!3449 = !DILocation(line: 1039, column: 9, scope: !3226)
!3450 = !DILocation(line: 1036, column: 9, scope: !3226)
!3451 = !DILocation(line: 1038, column: 9, scope: !3226)
!3452 = !DILocation(line: 1040, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1040, column: 9)
!3454 = !{!194, !187, i64 2672}
!3455 = !DILocation(line: 1040, column: 50, scope: !3453)
!3456 = !DILocation(line: 1040, column: 9, scope: !3226)
!3457 = !DILocation(line: 1042, column: 28, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3453, file: !1, line: 1040, column: 55)
!3459 = !{!3339, !187, i64 0}
!3460 = !DILocation(line: 1042, column: 13, scope: !3458)
!3461 = !DILocation(line: 1041, column: 77, scope: !3458)
!3462 = !DILocation(line: 1041, column: 57, scope: !3458)
!3463 = !DILocation(line: 1041, column: 13, scope: !3458)
!3464 = !DILocation(line: 1043, column: 5, scope: !3458)
!3465 = !DILocation(line: 1044, column: 9, scope: !3226)
!3466 = !DILocation(line: 1044, column: 20, scope: !3226)
!3467 = !{!3220, !195, i64 56}
!3468 = !DILocation(line: 1045, column: 14, scope: !3226)
!3469 = !DILocation(line: 959, column: 9, scope: !3226)
!3470 = !DILocation(line: 1047, column: 28, scope: !3254)
!3471 = !{!194, !184, i64 1792}
!3472 = !DILocation(line: 1047, column: 19, scope: !3254)
!3473 = !DILocation(line: 1047, column: 5, scope: !3255)
!3474 = !DILocation(line: 1048, column: 30, scope: !3253)
!3475 = !{!194, !187, i64 48}
!3476 = !DILocation(line: 1049, column: 31, scope: !3253)
!3477 = !{!3478, !187, i64 0}
!3478 = !{!"redisDb", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !184, i64 40, !196, i64 48, !187, i64 56}
!3479 = !DILocation(line: 1049, column: 19, scope: !3253)
!3480 = !DILocation(line: 1050, column: 22, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 1050, column: 13)
!3482 = !DILocation(line: 1050, column: 13, scope: !3253)
!3483 = !DILocation(line: 1052, column: 24, scope: !3253)
!3484 = !{!3220, !195, i64 80}
!3485 = !DILocation(line: 1053, column: 31, scope: !3253)
!3486 = !DILocation(line: 1053, column: 57, scope: !3253)
!3487 = !{!3220, !195, i64 168}
!3488 = !DILocation(line: 1053, column: 51, scope: !3253)
!3489 = !DILocation(line: 1053, column: 18, scope: !3253)
!3490 = !DILocation(line: 1053, column: 16, scope: !3253)
!3491 = !DILocation(line: 1054, column: 20, scope: !3253)
!3492 = !DILocation(line: 1054, column: 29, scope: !3253)
!3493 = !DILocation(line: 1054, column: 34, scope: !3253)
!3494 = !{!3495, !195, i64 0}
!3495 = !{!"", !195, i64 0, !195, i64 8, !195, i64 16}
!3496 = !DILocation(line: 1056, column: 15, scope: !3253)
!3497 = !DILocation(line: 1057, column: 15, scope: !3253)
!3498 = !DILocation(line: 1057, column: 35, scope: !3253)
!3499 = !DILocation(line: 1056, column: 54, scope: !3253)
!3500 = !DILocation(line: 1057, column: 56, scope: !3253)
!3501 = !DILocation(line: 1059, column: 29, scope: !3253)
!3502 = !DILocation(line: 1059, column: 46, scope: !3253)
!3503 = !{!3495, !195, i64 8}
!3504 = !DILocation(line: 1060, column: 18, scope: !3253)
!3505 = !DILocation(line: 1062, column: 15, scope: !3253)
!3506 = !{!3478, !187, i64 8}
!3507 = !DILocation(line: 1062, column: 37, scope: !3253)
!3508 = !DILocation(line: 1063, column: 15, scope: !3253)
!3509 = !DILocation(line: 1063, column: 38, scope: !3253)
!3510 = !DILocation(line: 1062, column: 57, scope: !3253)
!3511 = !DILocation(line: 1064, column: 29, scope: !3253)
!3512 = !DILocation(line: 1064, column: 49, scope: !3253)
!3513 = !{!3495, !195, i64 16}
!3514 = !DILocation(line: 1065, column: 18, scope: !3253)
!3515 = !DILocation(line: 1067, column: 20, scope: !3253)
!3516 = !DILocation(line: 1068, column: 5, scope: !3254)
!3517 = !DILocation(line: 0, scope: !3253)
!3518 = !DILocation(line: 1047, column: 36, scope: !3254)
!3519 = distinct !{!3519, !3473, !3520}
!3520 = !DILocation(line: 1068, column: 5, scope: !3255)
!3521 = !DILocation(line: 1070, column: 9, scope: !3226)
!3522 = !DILocation(line: 1070, column: 24, scope: !3226)
!3523 = !{!3220, !195, i64 64}
!3524 = !DILocation(line: 1071, column: 32, scope: !3226)
!3525 = !DILocation(line: 1071, column: 9, scope: !3226)
!3526 = !DILocation(line: 1071, column: 17, scope: !3226)
!3527 = !{!3220, !195, i64 72}
!3528 = !DILocation(line: 1072, column: 21, scope: !3226)
!3529 = !DILocation(line: 1072, column: 40, scope: !3226)
!3530 = !DILocation(line: 1072, column: 49, scope: !3226)
!3531 = !DILocation(line: 1072, column: 45, scope: !3226)
!3532 = !DILocation(line: 1072, column: 44, scope: !3226)
!3533 = !DILocation(line: 1072, column: 9, scope: !3226)
!3534 = !DILocation(line: 1072, column: 19, scope: !3226)
!3535 = !{!3220, !3221, i64 100}
!3536 = !DILocation(line: 1076, column: 12, scope: !3226)
!3537 = !DILocation(line: 1077, column: 28, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1077, column: 9)
!3539 = !DILocation(line: 1077, column: 22, scope: !3538)
!3540 = !DILocation(line: 1078, column: 34, scope: !3538)
!3541 = !DILocation(line: 1077, column: 9, scope: !3226)
!3542 = !DILocation(line: 1079, column: 24, scope: !3226)
!3543 = !DILocation(line: 1079, column: 42, scope: !3226)
!3544 = !DILocation(line: 1079, column: 47, scope: !3226)
!3545 = !DILocation(line: 1079, column: 46, scope: !3226)
!3546 = !DILocation(line: 1079, column: 9, scope: !3226)
!3547 = !DILocation(line: 1079, column: 22, scope: !3226)
!3548 = !{!3220, !3221, i64 96}
!3549 = !DILocation(line: 1080, column: 29, scope: !3226)
!3550 = !DILocation(line: 1080, column: 25, scope: !3226)
!3551 = !DILocation(line: 1080, column: 53, scope: !3226)
!3552 = !DILocation(line: 1080, column: 9, scope: !3226)
!3553 = !DILocation(line: 1080, column: 23, scope: !3226)
!3554 = !{!3220, !195, i64 88}
!3555 = !DILocation(line: 1082, column: 5, scope: !3226)
!3556 = distinct !DISubprogram(name: "inputCatSds", scope: !1, file: !1, line: 1087, type: !3557, isLocal: false, isDefinition: true, scopeLine: 1087, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !4, !74}
!3559 = !{!3560, !3561, !3562}
!3560 = !DILocalVariable(name: "result", arg: 1, scope: !3556, file: !1, line: 1087, type: !4)
!3561 = !DILocalVariable(name: "str", arg: 2, scope: !3556, file: !1, line: 1087, type: !74)
!3562 = !DILocalVariable(name: "info", scope: !3556, file: !1, line: 1089, type: !114)
!3563 = !DILocation(line: 1087, column: 24, scope: !3556)
!3564 = !DILocation(line: 1087, column: 44, scope: !3556)
!3565 = !DILocation(line: 1089, column: 17, scope: !3556)
!3566 = !DILocation(line: 1089, column: 10, scope: !3556)
!3567 = !DILocation(line: 1090, column: 20, scope: !3556)
!3568 = !DILocation(line: 1090, column: 13, scope: !3556)
!3569 = !DILocation(line: 1090, column: 11, scope: !3556)
!3570 = !DILocation(line: 1091, column: 1, scope: !3556)
!3571 = distinct !DISubprogram(name: "getMemoryDoctorReport", scope: !1, file: !1, line: 1095, type: !3572, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3574)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!98}
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3589, !3590}
!3575 = !DILocalVariable(name: "empty", scope: !3571, file: !1, line: 1096, type: !36)
!3576 = !DILocalVariable(name: "big_peak", scope: !3571, file: !1, line: 1097, type: !36)
!3577 = !DILocalVariable(name: "high_frag", scope: !3571, file: !1, line: 1098, type: !36)
!3578 = !DILocalVariable(name: "high_alloc_frag", scope: !3571, file: !1, line: 1099, type: !36)
!3579 = !DILocalVariable(name: "high_proc_rss", scope: !3571, file: !1, line: 1100, type: !36)
!3580 = !DILocalVariable(name: "high_alloc_rss", scope: !3571, file: !1, line: 1101, type: !36)
!3581 = !DILocalVariable(name: "big_slave_buf", scope: !3571, file: !1, line: 1102, type: !36)
!3582 = !DILocalVariable(name: "big_client_buf", scope: !3571, file: !1, line: 1103, type: !36)
!3583 = !DILocalVariable(name: "many_scripts", scope: !3571, file: !1, line: 1104, type: !36)
!3584 = !DILocalVariable(name: "num_reports", scope: !3571, file: !1, line: 1105, type: !36)
!3585 = !DILocalVariable(name: "mh", scope: !3571, file: !1, line: 1106, type: !3181)
!3586 = !DILocalVariable(name: "numslaves", scope: !3587, file: !1, line: 1143, type: !5)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !1, line: 1111, column: 12)
!3588 = distinct !DILexicalBlock(scope: !3571, file: !1, line: 1108, column: 9)
!3589 = !DILocalVariable(name: "numclients", scope: !3587, file: !1, line: 1144, type: !5)
!3590 = !DILocalVariable(name: "s", scope: !3571, file: !1, line: 1163, type: !98)
!3591 = !DILocation(line: 1096, column: 9, scope: !3571)
!3592 = !DILocation(line: 1097, column: 9, scope: !3571)
!3593 = !DILocation(line: 1098, column: 9, scope: !3571)
!3594 = !DILocation(line: 1099, column: 9, scope: !3571)
!3595 = !DILocation(line: 1100, column: 9, scope: !3571)
!3596 = !DILocation(line: 1101, column: 9, scope: !3571)
!3597 = !DILocation(line: 1102, column: 9, scope: !3571)
!3598 = !DILocation(line: 1103, column: 9, scope: !3571)
!3599 = !DILocation(line: 1104, column: 9, scope: !3571)
!3600 = !DILocation(line: 1105, column: 9, scope: !3571)
!3601 = !DILocation(line: 1106, column: 35, scope: !3571)
!3602 = !DILocation(line: 1106, column: 30, scope: !3571)
!3603 = !DILocation(line: 1108, column: 13, scope: !3588)
!3604 = !DILocation(line: 1108, column: 29, scope: !3588)
!3605 = !DILocation(line: 1108, column: 9, scope: !3571)
!3606 = !DILocation(line: 1113, column: 25, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1113, column: 13)
!3608 = !DILocation(line: 1113, column: 14, scope: !3607)
!3609 = !DILocation(line: 1113, column: 42, scope: !3607)
!3610 = !DILocation(line: 1113, column: 40, scope: !3607)
!3611 = !DILocation(line: 1113, column: 63, scope: !3607)
!3612 = !DILocation(line: 1113, column: 13, scope: !3587)
!3613 = !DILocation(line: 1119, column: 17, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1119, column: 13)
!3615 = !DILocation(line: 1119, column: 13, scope: !3614)
!3616 = !DILocation(line: 1119, column: 28, scope: !3614)
!3617 = !DILocation(line: 1119, column: 34, scope: !3614)
!3618 = !DILocation(line: 1119, column: 41, scope: !3614)
!3619 = !DILocation(line: 1119, column: 58, scope: !3614)
!3620 = !DILocation(line: 1121, column: 24, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3614, file: !1, line: 1119, column: 68)
!3622 = !DILocation(line: 1119, column: 13, scope: !3587)
!3623 = !DILocation(line: 0, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3607, file: !1, line: 1113, column: 70)
!3625 = !DILocation(line: 0, scope: !3571)
!3626 = !DILocation(line: 1125, column: 17, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1125, column: 13)
!3628 = !DILocation(line: 1125, column: 13, scope: !3627)
!3629 = !DILocation(line: 1125, column: 32, scope: !3627)
!3630 = !DILocation(line: 1125, column: 38, scope: !3627)
!3631 = !DILocation(line: 1125, column: 45, scope: !3627)
!3632 = !DILocation(line: 1125, column: 66, scope: !3627)
!3633 = !DILocation(line: 1125, column: 13, scope: !3587)
!3634 = !DILocation(line: 0, scope: !3621)
!3635 = !DILocation(line: 1131, column: 17, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1131, column: 13)
!3637 = !DILocation(line: 1131, column: 13, scope: !3636)
!3638 = !DILocation(line: 1131, column: 31, scope: !3636)
!3639 = !DILocation(line: 1131, column: 37, scope: !3636)
!3640 = !DILocation(line: 1131, column: 44, scope: !3636)
!3641 = !DILocation(line: 1131, column: 64, scope: !3636)
!3642 = !DILocation(line: 1131, column: 13, scope: !3587)
!3643 = !DILocation(line: 0, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 1125, column: 76)
!3645 = !DILocation(line: 1137, column: 17, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1137, column: 13)
!3647 = !DILocation(line: 1137, column: 13, scope: !3646)
!3648 = !DILocation(line: 1137, column: 27, scope: !3646)
!3649 = !DILocation(line: 1137, column: 33, scope: !3646)
!3650 = !DILocation(line: 1137, column: 40, scope: !3646)
!3651 = !DILocation(line: 1137, column: 56, scope: !3646)
!3652 = !DILocation(line: 1137, column: 13, scope: !3587)
!3653 = !DILocation(line: 0, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1131, column: 74)
!3655 = !DILocation(line: 1143, column: 26, scope: !3587)
!3656 = !DILocation(line: 1143, column: 14, scope: !3587)
!3657 = !DILocation(line: 1144, column: 27, scope: !3587)
!3658 = !DILocation(line: 1144, column: 53, scope: !3587)
!3659 = !DILocation(line: 1144, column: 14, scope: !3587)
!3660 = !DILocation(line: 1145, column: 17, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1145, column: 13)
!3662 = !DILocation(line: 1145, column: 32, scope: !3661)
!3663 = !DILocation(line: 1145, column: 45, scope: !3661)
!3664 = !DILocation(line: 1145, column: 13, scope: !3587)
!3665 = !DILocation(line: 1151, column: 23, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1151, column: 13)
!3667 = !DILocation(line: 1151, column: 27, scope: !3666)
!3668 = !DILocation(line: 1151, column: 34, scope: !3666)
!3669 = !DILocation(line: 1151, column: 49, scope: !3666)
!3670 = !DILocation(line: 1151, column: 61, scope: !3666)
!3671 = !DILocation(line: 1151, column: 13, scope: !3587)
!3672 = !DILocation(line: 0, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1145, column: 59)
!3674 = !DILocation(line: 1157, column: 13, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 1157, column: 13)
!3676 = !DILocation(line: 1157, column: 42, scope: !3675)
!3677 = !DILocation(line: 1164, column: 21, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3571, file: !1, line: 1164, column: 9)
!3679 = !DILocation(line: 1164, column: 9, scope: !3571)
!3680 = !DILocation(line: 1165, column: 13, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1164, column: 27)
!3682 = !DILocation(line: 1163, column: 9, scope: !3571)
!3683 = !DILocation(line: 1168, column: 5, scope: !3681)
!3684 = !DILocation(line: 1169, column: 13, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !1, line: 1168, column: 28)
!3686 = distinct !DILexicalBlock(scope: !3678, file: !1, line: 1168, column: 16)
!3687 = !DILocation(line: 1175, column: 5, scope: !3685)
!3688 = !DILocation(line: 1176, column: 13, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3686, file: !1, line: 1175, column: 12)
!3690 = !DILocation(line: 1177, column: 13, scope: !3689)
!3691 = !DILocation(line: 1178, column: 17, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !1, line: 1177, column: 23)
!3693 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1177, column: 13)
!3694 = !DILocation(line: 1179, column: 9, scope: !3692)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 1180, column: 13, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1180, column: 13)
!3698 = !DILocation(line: 1180, column: 13, scope: !3689)
!3699 = !DILocation(line: 1181, column: 17, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !1, line: 1180, column: 24)
!3701 = !DILocation(line: 1182, column: 9, scope: !3700)
!3702 = !DILocation(line: 0, scope: !3692)
!3703 = !DILocation(line: 1183, column: 13, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1183, column: 13)
!3705 = !DILocation(line: 1183, column: 13, scope: !3689)
!3706 = !DILocation(line: 1184, column: 17, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !1, line: 1183, column: 30)
!3708 = !DILocation(line: 1185, column: 9, scope: !3707)
!3709 = !DILocation(line: 0, scope: !3700)
!3710 = !DILocation(line: 1186, column: 13, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1186, column: 13)
!3712 = !DILocation(line: 1186, column: 13, scope: !3689)
!3713 = !DILocation(line: 1187, column: 17, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1186, column: 29)
!3715 = !DILocation(line: 1188, column: 9, scope: !3714)
!3716 = !DILocation(line: 0, scope: !3707)
!3717 = !DILocation(line: 1189, column: 13, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1189, column: 13)
!3719 = !DILocation(line: 1189, column: 13, scope: !3689)
!3720 = !DILocation(line: 1190, column: 17, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 1189, column: 28)
!3722 = !DILocation(line: 1191, column: 9, scope: !3721)
!3723 = !DILocation(line: 0, scope: !3714)
!3724 = !DILocation(line: 1192, column: 13, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1192, column: 13)
!3726 = !DILocation(line: 1192, column: 13, scope: !3689)
!3727 = !DILocation(line: 1193, column: 17, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 1192, column: 28)
!3729 = !DILocation(line: 1194, column: 9, scope: !3728)
!3730 = !DILocation(line: 0, scope: !3721)
!3731 = !DILocation(line: 1195, column: 13, scope: !3689)
!3732 = !DILocation(line: 1196, column: 17, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3734, file: !1, line: 1195, column: 29)
!3734 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1195, column: 13)
!3735 = !DILocation(line: 1197, column: 9, scope: !3733)
!3736 = !DILocation(line: 0, scope: !3728)
!3737 = !DILocation(line: 1198, column: 13, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1198, column: 13)
!3739 = !DILocation(line: 1198, column: 13, scope: !3689)
!3740 = !DILocation(line: 1199, column: 17, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3738, file: !1, line: 1198, column: 27)
!3742 = !DILocation(line: 1200, column: 9, scope: !3741)
!3743 = !DILocation(line: 0, scope: !3733)
!3744 = !DILocation(line: 1201, column: 13, scope: !3689)
!3745 = !DILocation(line: 950, column: 54, scope: !3178, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 1203, column: 5, scope: !3571)
!3747 = !DILocation(line: 951, column: 15, scope: !3178, inlinedAt: !3746)
!3748 = !DILocation(line: 951, column: 5, scope: !3178, inlinedAt: !3746)
!3749 = !DILocation(line: 952, column: 11, scope: !3178, inlinedAt: !3746)
!3750 = !DILocation(line: 952, column: 5, scope: !3178, inlinedAt: !3746)
!3751 = !DILocation(line: 953, column: 1, scope: !3178, inlinedAt: !3746)
!3752 = !DILocation(line: 1204, column: 5, scope: !3571)
!3753 = distinct !DISubprogram(name: "objectSetLRUOrLFU", scope: !1, file: !1, line: 1212, type: !3754, isLocal: false, isDefinition: true, scopeLine: 1213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !115, !360, !360, !360}
!3756 = !{!3757, !3758, !3759, !3760, !3761}
!3757 = !DILocalVariable(name: "val", arg: 1, scope: !3753, file: !1, line: 1212, type: !115)
!3758 = !DILocalVariable(name: "lfu_freq", arg: 2, scope: !3753, file: !1, line: 1212, type: !360)
!3759 = !DILocalVariable(name: "lru_idle", arg: 3, scope: !3753, file: !1, line: 1212, type: !360)
!3760 = !DILocalVariable(name: "lru_clock", arg: 4, scope: !3753, file: !1, line: 1213, type: !360)
!3761 = !DILocalVariable(name: "lru_abs", scope: !3762, file: !1, line: 1225, type: !5)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 1219, column: 31)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 1219, column: 16)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !1, line: 1214, column: 9)
!3765 = !DILocation(line: 1212, column: 30, scope: !3753)
!3766 = !DILocation(line: 1212, column: 45, scope: !3753)
!3767 = !DILocation(line: 1212, column: 65, scope: !3753)
!3768 = !DILocation(line: 1213, column: 34, scope: !3753)
!3769 = !DILocation(line: 1214, column: 16, scope: !3764)
!3770 = !DILocation(line: 1214, column: 33, scope: !3764)
!3771 = !DILocation(line: 1214, column: 9, scope: !3753)
!3772 = !DILocation(line: 1215, column: 22, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !1, line: 1215, column: 13)
!3774 = distinct !DILexicalBlock(scope: !3764, file: !1, line: 1214, column: 55)
!3775 = !DILocation(line: 1215, column: 13, scope: !3774)
!3776 = !DILocation(line: 1216, column: 13, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 1215, column: 28)
!3778 = !DILocation(line: 1217, column: 25, scope: !3777)
!3779 = !DILocation(line: 1217, column: 46, scope: !3777)
!3780 = !DILocation(line: 1217, column: 51, scope: !3777)
!3781 = !DILocation(line: 1217, column: 24, scope: !3777)
!3782 = !DILocation(line: 1217, column: 18, scope: !3777)
!3783 = !DILocation(line: 1217, column: 22, scope: !3777)
!3784 = !DILocation(line: 1218, column: 9, scope: !3777)
!3785 = !DILocation(line: 1219, column: 25, scope: !3763)
!3786 = !DILocation(line: 1219, column: 16, scope: !3764)
!3787 = !DILocation(line: 1225, column: 34, scope: !3762)
!3788 = !DILocation(line: 1225, column: 14, scope: !3762)
!3789 = !DILocation(line: 1231, column: 21, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 1231, column: 13)
!3791 = !DILocation(line: 1231, column: 13, scope: !3762)
!3792 = !DILocation(line: 1232, column: 33, scope: !3790)
!3793 = !DILocation(line: 1232, column: 53, scope: !3790)
!3794 = !DILocation(line: 1232, column: 13, scope: !3790)
!3795 = !DILocation(line: 0, scope: !3762)
!3796 = !DILocation(line: 1233, column: 20, scope: !3762)
!3797 = !DILocation(line: 1233, column: 14, scope: !3762)
!3798 = !DILocation(line: 1233, column: 18, scope: !3762)
!3799 = !DILocation(line: 1234, column: 5, scope: !3762)
!3800 = !DILocation(line: 1235, column: 1, scope: !3753)
!3801 = distinct !DISubprogram(name: "objectCommandLookup", scope: !1, file: !1, line: 1241, type: !3802, isLocal: false, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!115, !1531, !115}
!3804 = !{!3805, !3806, !3807}
!3805 = !DILocalVariable(name: "c", arg: 1, scope: !3801, file: !1, line: 1241, type: !1531)
!3806 = !DILocalVariable(name: "key", arg: 2, scope: !3801, file: !1, line: 1241, type: !115)
!3807 = !DILocalVariable(name: "de", scope: !3801, file: !1, line: 1242, type: !50)
!3808 = !DILocation(line: 1241, column: 35, scope: !3801)
!3809 = !DILocation(line: 1241, column: 44, scope: !3801)
!3810 = !DILocation(line: 1244, column: 27, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 1244, column: 9)
!3812 = !{!3354, !187, i64 16}
!3813 = !DILocation(line: 1244, column: 31, scope: !3811)
!3814 = !DILocation(line: 1244, column: 41, scope: !3811)
!3815 = !DILocation(line: 1244, column: 15, scope: !3811)
!3816 = !DILocation(line: 1242, column: 16, scope: !3801)
!3817 = !DILocation(line: 1244, column: 47, scope: !3811)
!3818 = !DILocation(line: 1244, column: 9, scope: !3801)
!3819 = !DILocation(line: 1245, column: 20, scope: !3801)
!3820 = !DILocation(line: 1245, column: 5, scope: !3801)
!3821 = !DILocation(line: 0, scope: !3801)
!3822 = !DILocation(line: 1246, column: 1, scope: !3801)
!3823 = distinct !DISubprogram(name: "objectCommandLookupOrReply", scope: !1, file: !1, line: 1248, type: !3824, isLocal: false, isDefinition: true, scopeLine: 1248, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!115, !1531, !115, !115}
!3826 = !{!3827, !3828, !3829, !3830}
!3827 = !DILocalVariable(name: "c", arg: 1, scope: !3823, file: !1, line: 1248, type: !1531)
!3828 = !DILocalVariable(name: "key", arg: 2, scope: !3823, file: !1, line: 1248, type: !115)
!3829 = !DILocalVariable(name: "reply", arg: 3, scope: !3823, file: !1, line: 1248, type: !115)
!3830 = !DILocalVariable(name: "o", scope: !3823, file: !1, line: 1249, type: !115)
!3831 = !DILocation(line: 1248, column: 42, scope: !3823)
!3832 = !DILocation(line: 1248, column: 51, scope: !3823)
!3833 = !DILocation(line: 1248, column: 62, scope: !3823)
!3834 = !DILocation(line: 1241, column: 35, scope: !3801, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 1249, column: 15, scope: !3823)
!3836 = !DILocation(line: 1241, column: 44, scope: !3801, inlinedAt: !3835)
!3837 = !DILocation(line: 1244, column: 27, scope: !3811, inlinedAt: !3835)
!3838 = !DILocation(line: 1244, column: 31, scope: !3811, inlinedAt: !3835)
!3839 = !DILocation(line: 1244, column: 41, scope: !3811, inlinedAt: !3835)
!3840 = !DILocation(line: 1244, column: 15, scope: !3811, inlinedAt: !3835)
!3841 = !DILocation(line: 1242, column: 16, scope: !3801, inlinedAt: !3835)
!3842 = !DILocation(line: 1244, column: 47, scope: !3811, inlinedAt: !3835)
!3843 = !DILocation(line: 1244, column: 9, scope: !3801, inlinedAt: !3835)
!3844 = !DILocation(line: 1246, column: 1, scope: !3801, inlinedAt: !3835)
!3845 = !DILocation(line: 1249, column: 11, scope: !3823)
!3846 = !DILocation(line: 1251, column: 9, scope: !3823)
!3847 = !DILocation(line: 1245, column: 20, scope: !3801, inlinedAt: !3835)
!3848 = !DILocation(line: 1251, column: 10, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3823, file: !1, line: 1251, column: 9)
!3850 = !DILocation(line: 1251, column: 13, scope: !3849)
!3851 = !DILocation(line: 1252, column: 5, scope: !3823)
!3852 = distinct !DISubprogram(name: "objectCommand", scope: !1, file: !1, line: 1257, type: !1591, isLocal: false, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3853)
!3853 = !{!3854, !3855, !3856}
!3854 = !DILocalVariable(name: "c", arg: 1, scope: !3852, file: !1, line: 1257, type: !1531)
!3855 = !DILocalVariable(name: "o", scope: !3852, file: !1, line: 1258, type: !115)
!3856 = !DILocalVariable(name: "help", scope: !3857, file: !1, line: 1261, type: !3859)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !1, line: 1260, column: 62)
!3858 = distinct !DILexicalBlock(scope: !3852, file: !1, line: 1260, column: 9)
!3859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 320, elements: !3860)
!3860 = !{!3861}
!3861 = !DISubrange(count: 5)
!3862 = !DILocation(line: 1257, column: 28, scope: !3852)
!3863 = !DILocation(line: 1260, column: 12, scope: !3858)
!3864 = !{!3354, !184, i64 64}
!3865 = !DILocation(line: 1260, column: 17, scope: !3858)
!3866 = !DILocation(line: 0, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3858, file: !1, line: 1269, column: 16)
!3868 = !{!3354, !187, i64 72}
!3869 = !DILocation(line: 1260, column: 22, scope: !3858)
!3870 = !DILocation(line: 1260, column: 26, scope: !3858)
!3871 = !DILocation(line: 1260, column: 9, scope: !3852)
!3872 = !DILocation(line: 1261, column: 9, scope: !3857)
!3873 = !DILocation(line: 1261, column: 21, scope: !3857)
!3874 = !DILocation(line: 1268, column: 9, scope: !3857)
!3875 = !DILocation(line: 1269, column: 5, scope: !3858)
!3876 = !DILocation(line: 1269, column: 5, scope: !3857)
!3877 = !DILocation(line: 1269, column: 17, scope: !3867)
!3878 = !DILocation(line: 1269, column: 67, scope: !3867)
!3879 = !DILocation(line: 1269, column: 56, scope: !3867)
!3880 = !DILocation(line: 1270, column: 47, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !1, line: 1270, column: 13)
!3882 = distinct !DILexicalBlock(scope: !3867, file: !1, line: 1269, column: 73)
!3883 = !DILocation(line: 1270, column: 65, scope: !3881)
!3884 = !{!1700, !187, i64 80}
!3885 = !DILocation(line: 1248, column: 42, scope: !3823, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 1270, column: 18, scope: !3881)
!3887 = !DILocation(line: 1248, column: 51, scope: !3823, inlinedAt: !3886)
!3888 = !DILocation(line: 1248, column: 62, scope: !3823, inlinedAt: !3886)
!3889 = !DILocation(line: 1241, column: 35, scope: !3801, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 1249, column: 15, scope: !3823, inlinedAt: !3886)
!3891 = !DILocation(line: 1241, column: 44, scope: !3801, inlinedAt: !3890)
!3892 = !DILocation(line: 1244, column: 27, scope: !3811, inlinedAt: !3890)
!3893 = !DILocation(line: 1244, column: 31, scope: !3811, inlinedAt: !3890)
!3894 = !DILocation(line: 1244, column: 41, scope: !3811, inlinedAt: !3890)
!3895 = !DILocation(line: 1244, column: 15, scope: !3811, inlinedAt: !3890)
!3896 = !DILocation(line: 1242, column: 16, scope: !3801, inlinedAt: !3890)
!3897 = !DILocation(line: 1244, column: 47, scope: !3811, inlinedAt: !3890)
!3898 = !DILocation(line: 1244, column: 9, scope: !3801, inlinedAt: !3890)
!3899 = !DILocation(line: 1246, column: 1, scope: !3801, inlinedAt: !3890)
!3900 = !DILocation(line: 1249, column: 11, scope: !3823, inlinedAt: !3886)
!3901 = !DILocation(line: 1251, column: 9, scope: !3823, inlinedAt: !3886)
!3902 = !DILocation(line: 1245, column: 20, scope: !3801, inlinedAt: !3890)
!3903 = !DILocation(line: 1251, column: 10, scope: !3849, inlinedAt: !3886)
!3904 = !DILocation(line: 1251, column: 13, scope: !3849, inlinedAt: !3886)
!3905 = !DILocation(line: 1252, column: 5, scope: !3823, inlinedAt: !3886)
!3906 = !DILocation(line: 1258, column: 11, scope: !3852)
!3907 = !DILocation(line: 1270, column: 13, scope: !3882)
!3908 = !DILocation(line: 1272, column: 31, scope: !3882)
!3909 = !DILocation(line: 1272, column: 28, scope: !3882)
!3910 = !DILocation(line: 1272, column: 9, scope: !3882)
!3911 = !DILocation(line: 1273, column: 5, scope: !3882)
!3912 = !DILocation(line: 1273, column: 17, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3867, file: !1, line: 1273, column: 16)
!3914 = !DILocation(line: 1273, column: 56, scope: !3913)
!3915 = !DILocation(line: 1274, column: 47, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !1, line: 1274, column: 13)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !1, line: 1273, column: 73)
!3918 = !DILocation(line: 1274, column: 65, scope: !3916)
!3919 = !DILocation(line: 1248, column: 42, scope: !3823, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 1274, column: 18, scope: !3916)
!3921 = !DILocation(line: 1248, column: 51, scope: !3823, inlinedAt: !3920)
!3922 = !DILocation(line: 1248, column: 62, scope: !3823, inlinedAt: !3920)
!3923 = !DILocation(line: 1241, column: 35, scope: !3801, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 1249, column: 15, scope: !3823, inlinedAt: !3920)
!3925 = !DILocation(line: 1241, column: 44, scope: !3801, inlinedAt: !3924)
!3926 = !DILocation(line: 1244, column: 27, scope: !3811, inlinedAt: !3924)
!3927 = !DILocation(line: 1244, column: 31, scope: !3811, inlinedAt: !3924)
!3928 = !DILocation(line: 1244, column: 41, scope: !3811, inlinedAt: !3924)
!3929 = !DILocation(line: 1244, column: 15, scope: !3811, inlinedAt: !3924)
!3930 = !DILocation(line: 1242, column: 16, scope: !3801, inlinedAt: !3924)
!3931 = !DILocation(line: 1244, column: 47, scope: !3811, inlinedAt: !3924)
!3932 = !DILocation(line: 1244, column: 9, scope: !3801, inlinedAt: !3924)
!3933 = !DILocation(line: 1246, column: 1, scope: !3801, inlinedAt: !3924)
!3934 = !DILocation(line: 1249, column: 11, scope: !3823, inlinedAt: !3920)
!3935 = !DILocation(line: 1251, column: 9, scope: !3823, inlinedAt: !3920)
!3936 = !DILocation(line: 1245, column: 20, scope: !3801, inlinedAt: !3924)
!3937 = !DILocation(line: 1251, column: 10, scope: !3849, inlinedAt: !3920)
!3938 = !DILocation(line: 1251, column: 13, scope: !3849, inlinedAt: !3920)
!3939 = !DILocation(line: 1252, column: 5, scope: !3823, inlinedAt: !3920)
!3940 = !DILocation(line: 1274, column: 13, scope: !3917)
!3941 = !DILocation(line: 1276, column: 46, scope: !3917)
!3942 = !DILocation(line: 740, column: 23, scope: !2654, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 1276, column: 31, scope: !3917)
!3944 = !DILocation(line: 741, column: 5, scope: !2654, inlinedAt: !3943)
!3945 = !DILocation(line: 752, column: 1, scope: !2654, inlinedAt: !3943)
!3946 = !DILocation(line: 1276, column: 9, scope: !3917)
!3947 = !DILocation(line: 1277, column: 5, scope: !3917)
!3948 = !DILocation(line: 1277, column: 17, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3913, file: !1, line: 1277, column: 16)
!3950 = !DILocation(line: 1277, column: 56, scope: !3949)
!3951 = !DILocation(line: 1278, column: 47, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !1, line: 1278, column: 13)
!3953 = distinct !DILexicalBlock(scope: !3949, file: !1, line: 1277, column: 73)
!3954 = !DILocation(line: 1278, column: 65, scope: !3952)
!3955 = !DILocation(line: 1248, column: 42, scope: !3823, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 1278, column: 18, scope: !3952)
!3957 = !DILocation(line: 1248, column: 51, scope: !3823, inlinedAt: !3956)
!3958 = !DILocation(line: 1248, column: 62, scope: !3823, inlinedAt: !3956)
!3959 = !DILocation(line: 1241, column: 35, scope: !3801, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 1249, column: 15, scope: !3823, inlinedAt: !3956)
!3961 = !DILocation(line: 1241, column: 44, scope: !3801, inlinedAt: !3960)
!3962 = !DILocation(line: 1244, column: 27, scope: !3811, inlinedAt: !3960)
!3963 = !DILocation(line: 1244, column: 31, scope: !3811, inlinedAt: !3960)
!3964 = !DILocation(line: 1244, column: 41, scope: !3811, inlinedAt: !3960)
!3965 = !DILocation(line: 1244, column: 15, scope: !3811, inlinedAt: !3960)
!3966 = !DILocation(line: 1242, column: 16, scope: !3801, inlinedAt: !3960)
!3967 = !DILocation(line: 1244, column: 47, scope: !3811, inlinedAt: !3960)
!3968 = !DILocation(line: 1244, column: 9, scope: !3801, inlinedAt: !3960)
!3969 = !DILocation(line: 1246, column: 1, scope: !3801, inlinedAt: !3960)
!3970 = !DILocation(line: 1249, column: 11, scope: !3823, inlinedAt: !3956)
!3971 = !DILocation(line: 1251, column: 9, scope: !3823, inlinedAt: !3956)
!3972 = !DILocation(line: 1245, column: 20, scope: !3801, inlinedAt: !3960)
!3973 = !DILocation(line: 1251, column: 10, scope: !3849, inlinedAt: !3956)
!3974 = !DILocation(line: 1251, column: 13, scope: !3849, inlinedAt: !3956)
!3975 = !DILocation(line: 1252, column: 5, scope: !3823, inlinedAt: !3956)
!3976 = !DILocation(line: 1278, column: 13, scope: !3953)
!3977 = !DILocation(line: 1280, column: 20, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3953, file: !1, line: 1280, column: 13)
!3979 = !DILocation(line: 1280, column: 37, scope: !3978)
!3980 = !DILocation(line: 1280, column: 13, scope: !3953)
!3981 = !DILocation(line: 1281, column: 13, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !1, line: 1280, column: 59)
!3983 = !DILocation(line: 1282, column: 13, scope: !3982)
!3984 = !DILocation(line: 1284, column: 28, scope: !3953)
!3985 = !DILocation(line: 1284, column: 53, scope: !3953)
!3986 = !DILocation(line: 1284, column: 9, scope: !3953)
!3987 = !DILocation(line: 1285, column: 5, scope: !3953)
!3988 = !DILocation(line: 1285, column: 17, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3949, file: !1, line: 1285, column: 16)
!3990 = !DILocation(line: 1285, column: 52, scope: !3989)
!3991 = !DILocation(line: 1286, column: 47, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !1, line: 1286, column: 13)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !1, line: 1285, column: 69)
!3994 = !DILocation(line: 1286, column: 65, scope: !3992)
!3995 = !DILocation(line: 1248, column: 42, scope: !3823, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 1286, column: 18, scope: !3992)
!3997 = !DILocation(line: 1248, column: 51, scope: !3823, inlinedAt: !3996)
!3998 = !DILocation(line: 1248, column: 62, scope: !3823, inlinedAt: !3996)
!3999 = !DILocation(line: 1241, column: 35, scope: !3801, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 1249, column: 15, scope: !3823, inlinedAt: !3996)
!4001 = !DILocation(line: 1241, column: 44, scope: !3801, inlinedAt: !4000)
!4002 = !DILocation(line: 1244, column: 27, scope: !3811, inlinedAt: !4000)
!4003 = !DILocation(line: 1244, column: 31, scope: !3811, inlinedAt: !4000)
!4004 = !DILocation(line: 1244, column: 41, scope: !3811, inlinedAt: !4000)
!4005 = !DILocation(line: 1244, column: 15, scope: !3811, inlinedAt: !4000)
!4006 = !DILocation(line: 1242, column: 16, scope: !3801, inlinedAt: !4000)
!4007 = !DILocation(line: 1244, column: 47, scope: !3811, inlinedAt: !4000)
!4008 = !DILocation(line: 1244, column: 9, scope: !3801, inlinedAt: !4000)
!4009 = !DILocation(line: 1246, column: 1, scope: !3801, inlinedAt: !4000)
!4010 = !DILocation(line: 1249, column: 11, scope: !3823, inlinedAt: !3996)
!4011 = !DILocation(line: 1251, column: 9, scope: !3823, inlinedAt: !3996)
!4012 = !DILocation(line: 1245, column: 20, scope: !3801, inlinedAt: !4000)
!4013 = !DILocation(line: 1251, column: 10, scope: !3849, inlinedAt: !3996)
!4014 = !DILocation(line: 1251, column: 13, scope: !3849, inlinedAt: !3996)
!4015 = !DILocation(line: 1252, column: 5, scope: !3823, inlinedAt: !3996)
!4016 = !DILocation(line: 1286, column: 13, scope: !3993)
!4017 = !DILocation(line: 1288, column: 22, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3993, file: !1, line: 1288, column: 13)
!4019 = !DILocation(line: 1288, column: 39, scope: !4018)
!4020 = !DILocation(line: 1288, column: 13, scope: !3993)
!4021 = !DILocation(line: 1289, column: 13, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4018, file: !1, line: 1288, column: 62)
!4023 = !DILocation(line: 1290, column: 13, scope: !4022)
!4024 = !DILocation(line: 1296, column: 28, scope: !3993)
!4025 = !DILocation(line: 1296, column: 9, scope: !3993)
!4026 = !DILocation(line: 1297, column: 5, scope: !3993)
!4027 = !DILocation(line: 1298, column: 9, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3989, file: !1, line: 1297, column: 12)
!4029 = !DILocation(line: 1300, column: 1, scope: !3852)
!4030 = distinct !DISubprogram(name: "memoryCommand", scope: !1, file: !1, line: 1306, type: !1591, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4031)
!4031 = !{!4032, !4033, !4039, !4042, !4043, !4045, !4046, !4049, !4051, !4054}
!4032 = !DILocalVariable(name: "c", arg: 1, scope: !4030, file: !1, line: 1306, type: !1531)
!4033 = !DILocalVariable(name: "help", scope: !4034, file: !1, line: 1308, type: !4036)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 1307, column: 62)
!4035 = distinct !DILexicalBlock(scope: !4030, file: !1, line: 1307, column: 9)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 384, elements: !4037)
!4037 = !{!4038}
!4038 = !DISubrange(count: 6)
!4039 = !DILocalVariable(name: "de", scope: !4040, file: !1, line: 1318, type: !50)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !1, line: 1317, column: 70)
!4041 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 1317, column: 16)
!4042 = !DILocalVariable(name: "samples", scope: !4040, file: !1, line: 1319, type: !360)
!4043 = !DILocalVariable(name: "j", scope: !4044, file: !1, line: 1320, type: !36)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !1, line: 1320, column: 9)
!4045 = !DILocalVariable(name: "usage", scope: !4040, file: !1, line: 1341, type: !77)
!4046 = !DILocalVariable(name: "mh", scope: !4047, file: !1, line: 1346, type: !3181)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 1345, column: 70)
!4048 = distinct !DILexicalBlock(scope: !4041, file: !1, line: 1345, column: 16)
!4049 = !DILocalVariable(name: "j", scope: !4050, file: !1, line: 1374, type: !77)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !1, line: 1374, column: 9)
!4051 = !DILocalVariable(name: "dbname", scope: !4052, file: !1, line: 1375, type: !2036)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !1, line: 1374, column: 50)
!4053 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 1374, column: 9)
!4054 = !DILocalVariable(name: "report", scope: !4055, file: !1, line: 1448, type: !98)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !1, line: 1447, column: 71)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 1447, column: 16)
!4057 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 1439, column: 16)
!4058 = !DILocation(line: 1306, column: 28, scope: !4030)
!4059 = !DILocation(line: 1307, column: 24, scope: !4035)
!4060 = !DILocation(line: 1307, column: 21, scope: !4035)
!4061 = !DILocation(line: 1307, column: 33, scope: !4035)
!4062 = !DILocation(line: 1307, column: 10, scope: !4035)
!4063 = !DILocation(line: 1307, column: 45, scope: !4035)
!4064 = !DILocation(line: 1307, column: 51, scope: !4035)
!4065 = !DILocation(line: 1307, column: 56, scope: !4035)
!4066 = !DILocation(line: 1307, column: 9, scope: !4030)
!4067 = !DILocation(line: 1308, column: 9, scope: !4034)
!4068 = !DILocation(line: 1308, column: 21, scope: !4034)
!4069 = !DILocation(line: 1316, column: 9, scope: !4034)
!4070 = !DILocation(line: 1317, column: 5, scope: !4035)
!4071 = !DILocation(line: 1317, column: 5, scope: !4034)
!4072 = !DILocation(line: 1317, column: 17, scope: !4041)
!4073 = !DILocation(line: 1317, column: 53, scope: !4041)
!4074 = !DILocation(line: 1317, column: 59, scope: !4041)
!4075 = !DILocation(line: 1317, column: 64, scope: !4041)
!4076 = !DILocation(line: 1317, column: 16, scope: !4035)
!4077 = !DILocation(line: 1320, column: 18, scope: !4044)
!4078 = !DILocation(line: 1320, column: 27, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4044, file: !1, line: 1320, column: 9)
!4080 = !DILocation(line: 1320, column: 9, scope: !4044)
!4081 = !DILocation(line: 1321, column: 29, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !1, line: 1321, column: 17)
!4083 = distinct !DILexicalBlock(scope: !4079, file: !1, line: 1320, column: 43)
!4084 = !DILocation(line: 1321, column: 41, scope: !4082)
!4085 = !DILocation(line: 1321, column: 18, scope: !4082)
!4086 = !DILocation(line: 1321, column: 56, scope: !4082)
!4087 = !DILocation(line: 1322, column: 18, scope: !4082)
!4088 = !DILocation(line: 1322, column: 21, scope: !4082)
!4089 = !DILocation(line: 1321, column: 17, scope: !4083)
!4090 = !DILocation(line: 1324, column: 52, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 1324, column: 21)
!4092 = distinct !DILexicalBlock(scope: !4082, file: !1, line: 1323, column: 13)
!4093 = !DILocation(line: 710, column: 42, scope: !2584, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 1324, column: 21, scope: !4091)
!4095 = !DILocation(line: 710, column: 51, scope: !2584, inlinedAt: !4094)
!4096 = !DILocation(line: 710, column: 85, scope: !2584, inlinedAt: !4094)
!4097 = !DILocation(line: 711, column: 5, scope: !2584, inlinedAt: !4094)
!4098 = !DILocation(line: 711, column: 15, scope: !2584, inlinedAt: !4094)
!4099 = !DILocation(line: 712, column: 9, scope: !2600, inlinedAt: !4094)
!4100 = !DILocation(line: 712, column: 42, scope: !2600, inlinedAt: !4094)
!4101 = !DILocation(line: 712, column: 9, scope: !2584, inlinedAt: !4094)
!4102 = !DILocation(line: 716, column: 13, scope: !2611, inlinedAt: !4094)
!4103 = !DILocation(line: 722, column: 1, scope: !2584, inlinedAt: !4094)
!4104 = !DILocation(line: 1324, column: 21, scope: !4092)
!4105 = !DILocation(line: 720, column: 15, scope: !2584, inlinedAt: !4094)
!4106 = !DILocation(line: 1319, column: 19, scope: !4040)
!4107 = !DILocation(line: 1326, column: 29, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 1326, column: 21)
!4109 = !DILocation(line: 1326, column: 21, scope: !4092)
!4110 = !DILocation(line: 1327, column: 39, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1326, column: 34)
!4112 = !{!1700, !187, i64 128}
!4113 = !DILocation(line: 1327, column: 21, scope: !4111)
!4114 = !DILocation(line: 1320, column: 39, scope: !4079)
!4115 = !DILocation(line: 1320, column: 32, scope: !4079)
!4116 = distinct !{!4116, !4080, !4117}
!4117 = !DILocation(line: 1336, column: 9, scope: !4044)
!4118 = !DILocation(line: 1321, column: 32, scope: !4082)
!4119 = !DILocation(line: 1333, column: 35, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4082, file: !1, line: 1332, column: 20)
!4121 = !DILocation(line: 1333, column: 17, scope: !4120)
!4122 = !DILocation(line: 1330, column: 29, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4092, file: !1, line: 1330, column: 21)
!4124 = !DILocation(line: 1330, column: 21, scope: !4092)
!4125 = !DILocation(line: 1337, column: 43, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4040, file: !1, line: 1337, column: 13)
!4127 = !DILocation(line: 0, scope: !4123)
!4128 = !DILocation(line: 1337, column: 31, scope: !4126)
!4129 = !DILocation(line: 1337, column: 35, scope: !4126)
!4130 = !DILocation(line: 1337, column: 40, scope: !4126)
!4131 = !DILocation(line: 1337, column: 52, scope: !4126)
!4132 = !DILocation(line: 1337, column: 19, scope: !4126)
!4133 = !DILocation(line: 1318, column: 20, scope: !4040)
!4134 = !DILocation(line: 1337, column: 58, scope: !4126)
!4135 = !DILocation(line: 1337, column: 13, scope: !4040)
!4136 = !DILocation(line: 1338, column: 32, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4126, file: !1, line: 1337, column: 67)
!4138 = !DILocation(line: 1338, column: 13, scope: !4137)
!4139 = !DILocation(line: 1339, column: 13, scope: !4137)
!4140 = !DILocation(line: 1341, column: 42, scope: !4040)
!4141 = !DILocation(line: 1341, column: 24, scope: !4040)
!4142 = !DILocation(line: 1341, column: 16, scope: !4040)
!4143 = !DILocation(line: 1342, column: 31, scope: !4040)
!4144 = !DILocation(line: 1342, column: 18, scope: !4040)
!4145 = !DILocation(line: 1342, column: 15, scope: !4040)
!4146 = !DILocation(line: 1343, column: 15, scope: !4040)
!4147 = !DILocation(line: 1344, column: 9, scope: !4040)
!4148 = !DILocation(line: 1345, column: 5, scope: !4041)
!4149 = !DILocation(line: 1345, column: 17, scope: !4048)
!4150 = !DILocation(line: 1345, column: 53, scope: !4048)
!4151 = !DILocation(line: 1345, column: 59, scope: !4048)
!4152 = !DILocation(line: 1345, column: 64, scope: !4048)
!4153 = !DILocation(line: 1345, column: 16, scope: !4041)
!4154 = !DILocation(line: 1346, column: 39, scope: !4047)
!4155 = !DILocation(line: 1346, column: 34, scope: !4047)
!4156 = !DILocation(line: 1348, column: 40, scope: !4047)
!4157 = !DILocation(line: 1348, column: 48, scope: !4047)
!4158 = !DILocation(line: 1348, column: 9, scope: !4047)
!4159 = !DILocation(line: 1350, column: 9, scope: !4047)
!4160 = !DILocation(line: 1351, column: 32, scope: !4047)
!4161 = !DILocation(line: 1351, column: 9, scope: !4047)
!4162 = !DILocation(line: 1353, column: 9, scope: !4047)
!4163 = !DILocation(line: 1354, column: 32, scope: !4047)
!4164 = !DILocation(line: 1354, column: 9, scope: !4047)
!4165 = !DILocation(line: 1356, column: 9, scope: !4047)
!4166 = !DILocation(line: 1357, column: 32, scope: !4047)
!4167 = !DILocation(line: 1357, column: 9, scope: !4047)
!4168 = !DILocation(line: 1359, column: 9, scope: !4047)
!4169 = !DILocation(line: 1360, column: 32, scope: !4047)
!4170 = !DILocation(line: 1360, column: 9, scope: !4047)
!4171 = !DILocation(line: 1362, column: 9, scope: !4047)
!4172 = !DILocation(line: 1363, column: 32, scope: !4047)
!4173 = !DILocation(line: 1363, column: 9, scope: !4047)
!4174 = !DILocation(line: 1365, column: 9, scope: !4047)
!4175 = !DILocation(line: 1366, column: 32, scope: !4047)
!4176 = !DILocation(line: 1366, column: 9, scope: !4047)
!4177 = !DILocation(line: 1368, column: 9, scope: !4047)
!4178 = !DILocation(line: 1369, column: 32, scope: !4047)
!4179 = !DILocation(line: 1369, column: 9, scope: !4047)
!4180 = !DILocation(line: 1371, column: 9, scope: !4047)
!4181 = !DILocation(line: 1372, column: 32, scope: !4047)
!4182 = !DILocation(line: 1372, column: 9, scope: !4047)
!4183 = !DILocation(line: 1374, column: 21, scope: !4050)
!4184 = !DILocation(line: 1374, column: 36, scope: !4053)
!4185 = !DILocation(line: 1374, column: 30, scope: !4053)
!4186 = !DILocation(line: 1374, column: 9, scope: !4050)
!4187 = !DILocation(line: 951, column: 15, scope: !3178, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 1438, column: 9, scope: !4047)
!4189 = !DILocation(line: 1387, column: 9, scope: !4047)
!4190 = !DILocation(line: 1388, column: 32, scope: !4047)
!4191 = !DILocation(line: 1388, column: 9, scope: !4047)
!4192 = !DILocation(line: 1390, column: 9, scope: !4047)
!4193 = !DILocation(line: 1391, column: 32, scope: !4047)
!4194 = !DILocation(line: 1391, column: 9, scope: !4047)
!4195 = !DILocation(line: 1393, column: 9, scope: !4047)
!4196 = !DILocation(line: 1394, column: 32, scope: !4047)
!4197 = !DILocation(line: 1394, column: 9, scope: !4047)
!4198 = !DILocation(line: 1396, column: 9, scope: !4047)
!4199 = !DILocation(line: 1397, column: 32, scope: !4047)
!4200 = !DILocation(line: 1397, column: 9, scope: !4047)
!4201 = !DILocation(line: 1399, column: 9, scope: !4047)
!4202 = !DILocation(line: 1400, column: 30, scope: !4047)
!4203 = !DILocation(line: 1400, column: 26, scope: !4047)
!4204 = !DILocation(line: 1400, column: 9, scope: !4047)
!4205 = !DILocation(line: 1402, column: 9, scope: !4047)
!4206 = !DILocation(line: 1403, column: 30, scope: !4047)
!4207 = !DILocation(line: 1403, column: 26, scope: !4047)
!4208 = !DILocation(line: 1403, column: 9, scope: !4047)
!4209 = !DILocation(line: 1405, column: 9, scope: !4047)
!4210 = !DILocation(line: 1406, column: 53, scope: !4047)
!4211 = !DILocation(line: 1406, column: 9, scope: !4047)
!4212 = !DILocation(line: 1408, column: 9, scope: !4047)
!4213 = !DILocation(line: 1409, column: 53, scope: !4047)
!4214 = !DILocation(line: 1409, column: 9, scope: !4047)
!4215 = !DILocation(line: 1411, column: 9, scope: !4047)
!4216 = !DILocation(line: 1412, column: 53, scope: !4047)
!4217 = !DILocation(line: 1412, column: 9, scope: !4047)
!4218 = !DILocation(line: 1414, column: 9, scope: !4047)
!4219 = !DILocation(line: 1415, column: 30, scope: !4047)
!4220 = !DILocation(line: 1415, column: 26, scope: !4047)
!4221 = !DILocation(line: 1415, column: 9, scope: !4047)
!4222 = !DILocation(line: 1417, column: 9, scope: !4047)
!4223 = !DILocation(line: 1418, column: 32, scope: !4047)
!4224 = !DILocation(line: 1418, column: 9, scope: !4047)
!4225 = !DILocation(line: 1420, column: 9, scope: !4047)
!4226 = !DILocation(line: 1421, column: 30, scope: !4047)
!4227 = !DILocation(line: 1421, column: 26, scope: !4047)
!4228 = !DILocation(line: 1421, column: 9, scope: !4047)
!4229 = !DILocation(line: 1423, column: 9, scope: !4047)
!4230 = !DILocation(line: 1424, column: 32, scope: !4047)
!4231 = !DILocation(line: 1424, column: 9, scope: !4047)
!4232 = !DILocation(line: 1426, column: 9, scope: !4047)
!4233 = !DILocation(line: 1427, column: 30, scope: !4047)
!4234 = !DILocation(line: 1427, column: 26, scope: !4047)
!4235 = !DILocation(line: 1427, column: 9, scope: !4047)
!4236 = !DILocation(line: 1429, column: 9, scope: !4047)
!4237 = !DILocation(line: 1430, column: 32, scope: !4047)
!4238 = !DILocation(line: 1430, column: 9, scope: !4047)
!4239 = !DILocation(line: 1432, column: 9, scope: !4047)
!4240 = !DILocation(line: 1433, column: 30, scope: !4047)
!4241 = !DILocation(line: 1433, column: 26, scope: !4047)
!4242 = !DILocation(line: 1433, column: 9, scope: !4047)
!4243 = !DILocation(line: 1435, column: 9, scope: !4047)
!4244 = !DILocation(line: 1436, column: 32, scope: !4047)
!4245 = !DILocation(line: 1436, column: 9, scope: !4047)
!4246 = !DILocation(line: 950, column: 54, scope: !3178, inlinedAt: !4188)
!4247 = !DILocation(line: 951, column: 5, scope: !3178, inlinedAt: !4188)
!4248 = !DILocation(line: 952, column: 11, scope: !3178, inlinedAt: !4188)
!4249 = !DILocation(line: 952, column: 5, scope: !3178, inlinedAt: !4188)
!4250 = !DILocation(line: 953, column: 1, scope: !3178, inlinedAt: !4188)
!4251 = !DILocation(line: 1439, column: 5, scope: !4047)
!4252 = !DILocation(line: 1375, column: 13, scope: !4052)
!4253 = !DILocation(line: 1375, column: 18, scope: !4052)
!4254 = !DILocation(line: 1376, column: 57, scope: !4052)
!4255 = !DILocation(line: 1376, column: 63, scope: !4052)
!4256 = !DILocation(line: 1376, column: 13, scope: !4052)
!4257 = !DILocation(line: 1377, column: 13, scope: !4052)
!4258 = !DILocation(line: 1378, column: 13, scope: !4052)
!4259 = !DILocation(line: 1380, column: 13, scope: !4052)
!4260 = !DILocation(line: 1381, column: 36, scope: !4052)
!4261 = !DILocation(line: 1381, column: 42, scope: !4052)
!4262 = !DILocation(line: 1381, column: 13, scope: !4052)
!4263 = !DILocation(line: 1383, column: 13, scope: !4052)
!4264 = !DILocation(line: 1384, column: 36, scope: !4052)
!4265 = !DILocation(line: 1384, column: 42, scope: !4052)
!4266 = !DILocation(line: 1384, column: 13, scope: !4052)
!4267 = !DILocation(line: 1385, column: 9, scope: !4053)
!4268 = !DILocation(line: 1374, column: 46, scope: !4053)
!4269 = distinct !{!4269, !4186, !4270}
!4270 = !DILocation(line: 1385, column: 9, scope: !4050)
!4271 = !DILocation(line: 1439, column: 17, scope: !4057)
!4272 = !DILocation(line: 1439, column: 60, scope: !4057)
!4273 = !DILocation(line: 1439, column: 66, scope: !4057)
!4274 = !DILocation(line: 1439, column: 71, scope: !4057)
!4275 = !DILocation(line: 1439, column: 16, scope: !4048)
!4276 = !DILocation(line: 1445, column: 9, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4057, file: !1, line: 1439, column: 77)
!4278 = !DILocation(line: 1447, column: 5, scope: !4277)
!4279 = !DILocation(line: 1447, column: 17, scope: !4056)
!4280 = !DILocation(line: 1447, column: 54, scope: !4056)
!4281 = !DILocation(line: 1447, column: 60, scope: !4056)
!4282 = !DILocation(line: 1447, column: 65, scope: !4056)
!4283 = !DILocation(line: 1447, column: 16, scope: !4057)
!4284 = !DILocation(line: 1448, column: 22, scope: !4055)
!4285 = !DILocation(line: 1448, column: 13, scope: !4055)
!4286 = !DILocation(line: 1449, column: 9, scope: !4055)
!4287 = !DILocation(line: 1450, column: 5, scope: !4055)
!4288 = !DILocation(line: 1450, column: 17, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4056, file: !1, line: 1450, column: 16)
!4290 = !DILocation(line: 1450, column: 53, scope: !4289)
!4291 = !DILocation(line: 1450, column: 59, scope: !4289)
!4292 = !DILocation(line: 1450, column: 64, scope: !4289)
!4293 = !DILocation(line: 1450, column: 16, scope: !4056)
!4294 = !DILocation(line: 1464, column: 28, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4289, file: !1, line: 1450, column: 70)
!4296 = !{!1700, !187, i64 8}
!4297 = !DILocation(line: 1464, column: 9, scope: !4295)
!4298 = !DILocation(line: 1467, column: 5, scope: !4295)
!4299 = !DILocation(line: 1468, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4289, file: !1, line: 1467, column: 12)
!4301 = !DILocation(line: 1470, column: 1, scope: !4030)
