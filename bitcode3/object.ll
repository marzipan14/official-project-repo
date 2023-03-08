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
@switch.table.strEncoding = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)]
@switch.table.objectCommand = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #0 !dbg !166 {
  %3 = tail call i8* @zmalloc(i64 16) #8, !dbg !175
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
  %18 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !203
  %19 = trunc i64 %18 to i32, !dbg !205
  %20 = load i32, i32* %5, align 8, !dbg !206
  %21 = shl i32 %19, 16, !dbg !206
  %22 = and i32 %20, 255, !dbg !206
  %23 = or i32 %21, %22, !dbg !206
  %24 = or i32 %23, 1280, !dbg !206
  br label %31, !dbg !207

; <label>:25:                                     ; preds = %2
  %26 = tail call i32 @LRU_CLOCK() #8, !dbg !208
  %27 = load i32, i32* %5, align 8, !dbg !210
  %28 = shl i32 %26, 8, !dbg !210
  %29 = and i32 %27, 255, !dbg !210
  %30 = or i32 %29, %28, !dbg !210
  br label %31

; <label>:31:                                     ; preds = %25, %17
  %32 = phi i32 [ %30, %25 ], [ %24, %17 ]
  store i32 %32, i32* %5, align 8, !dbg !211
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
  tail call void @_serverAssert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 70) #8, !dbg !219
  tail call void @_exit(i32 1) #9, !dbg !219
  unreachable, !dbg !219

; <label>:6:                                      ; preds = %1
  store i32 2147483647, i32* %2, align 4, !dbg !220, !tbaa !190
  ret %struct.redisObject* %0, !dbg !221
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createRawStringObject(i8*, i64) local_unnamed_addr #0 !dbg !222 {
  %3 = tail call i8* @sdsnewlen(i8* %0, i64 %1) #8, !dbg !230
  %4 = tail call i8* @zmalloc(i64 16) #8, !dbg !234
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
  %17 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !246
  %18 = trunc i64 %17 to i32, !dbg !247
  %19 = load i32, i32* %6, align 8, !dbg !248
  %20 = shl i32 %18, 16, !dbg !248
  %21 = and i32 %19, 255, !dbg !248
  %22 = or i32 %21, %20, !dbg !248
  %23 = or i32 %22, 1280, !dbg !248
  br label %30, !dbg !249

; <label>:24:                                     ; preds = %2
  %25 = tail call i32 @LRU_CLOCK() #8, !dbg !250
  %26 = load i32, i32* %6, align 8, !dbg !251
  %27 = shl i32 %25, 8, !dbg !251
  %28 = and i32 %26, 255, !dbg !251
  %29 = or i32 %28, %27, !dbg !251
  br label %30

; <label>:30:                                     ; preds = %16, %24
  %31 = phi i32 [ %29, %24 ], [ %23, %16 ]
  store i32 %31, i32* %6, align 8, !dbg !252
  ret %struct.redisObject* %5, !dbg !253
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createEmbeddedStringObject(i8*, i64) local_unnamed_addr #0 !dbg !254 {
  %3 = add i64 %1, 20, !dbg !262
  %4 = tail call i8* @zmalloc(i64 %3) #8, !dbg !263
  %5 = bitcast i8* %4 to %struct.redisObject*, !dbg !263
  %6 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !265
  %7 = bitcast i8* %4 to i32*, !dbg !267
  %8 = load i32, i32* %7, align 8, !dbg !268
  %9 = and i32 %8, -256, !dbg !269
  %10 = or i32 %9, 128, !dbg !269
  store i32 %10, i32* %7, align 8, !dbg !269
  %11 = getelementptr inbounds i8, i8* %4, i64 19, !dbg !270
  %12 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !271
  %13 = bitcast i8* %12 to i8**, !dbg !271
  store i8* %11, i8** %13, align 8, !dbg !272, !tbaa !182
  %14 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !273
  %15 = bitcast i8* %14 to i32*, !dbg !273
  store i32 1, i32* %15, align 4, !dbg !274, !tbaa !190
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !275, !tbaa !193
  %17 = and i32 %16, 2, !dbg !277
  %18 = icmp eq i32 %17, 0, !dbg !277
  br i1 %18, label %27, label %19, !dbg !278

; <label>:19:                                     ; preds = %2
  %20 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !279
  %21 = trunc i64 %20 to i32, !dbg !281
  %22 = load i32, i32* %7, align 8, !dbg !282
  %23 = shl i32 %21, 16, !dbg !282
  %24 = and i32 %22, 255, !dbg !282
  %25 = or i32 %23, %24, !dbg !282
  %26 = or i32 %25, 1280, !dbg !282
  br label %33, !dbg !283

; <label>:27:                                     ; preds = %2
  %28 = tail call i32 @LRU_CLOCK() #8, !dbg !284
  %29 = load i32, i32* %7, align 8, !dbg !286
  %30 = shl i32 %28, 8, !dbg !286
  %31 = and i32 %29, 255, !dbg !286
  %32 = or i32 %31, %30, !dbg !286
  br label %33

; <label>:33:                                     ; preds = %27, %19
  %34 = phi i32 [ %32, %27 ], [ %26, %19 ]
  store i32 %34, i32* %7, align 8, !dbg !287
  %35 = trunc i64 %1 to i8, !dbg !288
  store i8 %35, i8* %6, align 1, !dbg !289, !tbaa !290
  %36 = getelementptr inbounds i8, i8* %4, i64 17, !dbg !291
  store i8 %35, i8* %36, align 1, !dbg !292, !tbaa !290
  %37 = getelementptr inbounds i8, i8* %4, i64 18, !dbg !293
  store i8 1, i8* %37, align 1, !dbg !294, !tbaa !290
  %38 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !295, !tbaa !297
  %39 = icmp eq i8* %38, %0, !dbg !298
  br i1 %39, label %40, label %42, !dbg !299

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds i8, i8* %11, i64 %1, !dbg !300
  store i8 0, i8* %41, align 1, !dbg !301, !tbaa !290
  br label %50, !dbg !300

; <label>:42:                                     ; preds = %33
  %43 = icmp eq i8* %0, null, !dbg !302
  br i1 %43, label %47, label %44, !dbg !304

; <label>:44:                                     ; preds = %42
  %45 = tail call i8* @memcpy(i8* nonnull %11, i8* nonnull %0, i64 %1) #8, !dbg !305
  %46 = getelementptr inbounds i8, i8* %11, i64 %1, !dbg !307
  store i8 0, i8* %46, align 1, !dbg !308, !tbaa !290
  br label %50, !dbg !309

; <label>:47:                                     ; preds = %42
  %48 = add i64 %1, 1, !dbg !310
  %49 = tail call i8* @memset(i8* nonnull %11, i32 0, i64 %48) #8, !dbg !312
  br label %50

; <label>:50:                                     ; preds = %44, %47, %40
  ret %struct.redisObject* %5, !dbg !313
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #0 !dbg !314 {
  %3 = icmp ult i64 %1, 45, !dbg !320
  br i1 %3, label %4, label %6, !dbg !322

; <label>:4:                                      ; preds = %2
  %5 = tail call %struct.redisObject* @createEmbeddedStringObject(i8* %0, i64 %1) #11, !dbg !323
  br label %36, !dbg !324

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @sdsnewlen(i8* %0, i64 %1) #8, !dbg !328
  %8 = tail call i8* @zmalloc(i64 16) #8, !dbg !332
  %9 = bitcast i8* %8 to %struct.redisObject*, !dbg !332
  %10 = bitcast i8* %8 to i32*, !dbg !334
  %11 = load i32, i32* %10, align 8, !dbg !335
  %12 = and i32 %11, -256, !dbg !335
  store i32 %12, i32* %10, align 8, !dbg !336
  %13 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !337
  %14 = bitcast i8* %13 to i8**, !dbg !337
  store i8* %7, i8** %14, align 8, !dbg !338, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !339
  %16 = bitcast i8* %15 to i32*, !dbg !339
  store i32 1, i32* %16, align 4, !dbg !340, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !341, !tbaa !193
  %18 = and i32 %17, 2, !dbg !342
  %19 = icmp eq i32 %18, 0, !dbg !342
  br i1 %19, label %28, label %20, !dbg !343

; <label>:20:                                     ; preds = %6
  %21 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !344
  %22 = trunc i64 %21 to i32, !dbg !345
  %23 = load i32, i32* %10, align 8, !dbg !346
  %24 = shl i32 %22, 16, !dbg !346
  %25 = and i32 %23, 255, !dbg !346
  %26 = or i32 %24, %25, !dbg !346
  %27 = or i32 %26, 1280, !dbg !346
  br label %34, !dbg !347

; <label>:28:                                     ; preds = %6
  %29 = tail call i32 @LRU_CLOCK() #8, !dbg !348
  %30 = load i32, i32* %10, align 8, !dbg !349
  %31 = shl i32 %29, 8, !dbg !349
  %32 = and i32 %30, 255, !dbg !349
  %33 = or i32 %32, %31, !dbg !349
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  store i32 %35, i32* %10, align 8, !dbg !350
  br label %36, !dbg !351

; <label>:36:                                     ; preds = %34, %4
  %37 = phi %struct.redisObject* [ %5, %4 ], [ %9, %34 ], !dbg !352
  ret %struct.redisObject* %37, !dbg !353
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64, i32) local_unnamed_addr #0 !dbg !354 {
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !364, !tbaa !366
  %4 = icmp eq i64 %3, 0, !dbg !367
  br i1 %4, label %9, label %5, !dbg !368

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !369, !tbaa !193
  %7 = and i32 %6, 3, !dbg !370
  %8 = icmp eq i32 %7, 0, !dbg !370
  br i1 %8, label %9, label %10, !dbg !371

; <label>:9:                                      ; preds = %5, %2
  br label %10, !dbg !372

; <label>:10:                                     ; preds = %5, %9
  %11 = phi i32 [ 0, %9 ], [ %1, %5 ]
  %12 = icmp ult i64 %0, 10000, !dbg !374
  %13 = icmp eq i32 %11, 0, !dbg !376
  %14 = and i1 %12, %13, !dbg !374
  br i1 %14, label %15, label %23, !dbg !374

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 47, i64 %0, !dbg !377
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !377, !tbaa !297
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 1, !dbg !386
  %19 = load i32, i32* %18, align 4, !dbg !386, !tbaa !190
  %20 = icmp eq i32 %19, 2147483647, !dbg !388
  br i1 %20, label %55, label %21, !dbg !389

; <label>:21:                                     ; preds = %15
  %22 = add nsw i32 %19, 1, !dbg !390
  store i32 %22, i32* %18, align 4, !dbg !390, !tbaa !190
  br label %55, !dbg !391

; <label>:23:                                     ; preds = %10
  %24 = tail call i8* @zmalloc(i64 16) #8, !dbg !398
  %25 = bitcast i8* %24 to %struct.redisObject*, !dbg !398
  %26 = bitcast i8* %24 to i32*, !dbg !400
  %27 = load i32, i32* %26, align 8, !dbg !401
  %28 = and i32 %27, -256, !dbg !401
  store i32 %28, i32* %26, align 8, !dbg !402
  %29 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !403
  %30 = bitcast i8* %29 to i8**, !dbg !403
  store i8* null, i8** %30, align 8, !dbg !404, !tbaa !182
  %31 = getelementptr inbounds i8, i8* %24, i64 4, !dbg !405
  %32 = bitcast i8* %31 to i32*, !dbg !405
  store i32 1, i32* %32, align 4, !dbg !406, !tbaa !190
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !407, !tbaa !193
  %34 = and i32 %33, 2, !dbg !408
  %35 = icmp eq i32 %34, 0, !dbg !408
  br i1 %35, label %44, label %36, !dbg !409

; <label>:36:                                     ; preds = %23
  %37 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !410
  %38 = trunc i64 %37 to i32, !dbg !411
  %39 = load i32, i32* %26, align 8, !dbg !412
  %40 = shl i32 %38, 16, !dbg !412
  %41 = and i32 %39, 255, !dbg !412
  %42 = or i32 %41, %40, !dbg !412
  %43 = or i32 %42, 1280, !dbg !412
  br label %50, !dbg !413

; <label>:44:                                     ; preds = %23
  %45 = tail call i32 @LRU_CLOCK() #8, !dbg !414
  %46 = load i32, i32* %26, align 8, !dbg !415
  %47 = shl i32 %45, 8, !dbg !415
  %48 = and i32 %46, 255, !dbg !415
  %49 = or i32 %48, %47, !dbg !415
  br label %50

; <label>:50:                                     ; preds = %36, %44
  %51 = phi i32 [ %49, %44 ], [ %43, %36 ]
  %52 = and i32 %51, -241, !dbg !417
  %53 = or i32 %52, 16, !dbg !417
  store i32 %53, i32* %26, align 8, !dbg !417
  %54 = inttoptr i64 %0 to i8*, !dbg !418
  store i8* %54, i8** %30, align 8, !dbg !419, !tbaa !182
  br label %55, !dbg !420

; <label>:55:                                     ; preds = %21, %15, %50
  %56 = phi %struct.redisObject* [ %25, %50 ], [ %17, %15 ], [ %17, %21 ], !dbg !421
  ret %struct.redisObject* %56, !dbg !423
}

; Function Attrs: noredzone nounwind
define dso_local void @incrRefCount(%struct.redisObject* nocapture) local_unnamed_addr #0 !dbg !380 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !425
  %3 = load i32, i32* %2, align 4, !dbg !425, !tbaa !190
  %4 = icmp eq i32 %3, 2147483647, !dbg !426
  br i1 %4, label %7, label %5, !dbg !427

; <label>:5:                                      ; preds = %1
  %6 = add nsw i32 %3, 1, !dbg !428
  store i32 %6, i32* %2, align 4, !dbg !428, !tbaa !190
  br label %7, !dbg !429

; <label>:7:                                      ; preds = %1, %5
  ret void, !dbg !430
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #0 !dbg !431 {
  %2 = tail call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %0, i32 0) #11, !dbg !437
  ret %struct.redisObject* %2, !dbg !438
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongLongForValue(i64) local_unnamed_addr #0 !dbg !439 {
  %2 = tail call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %0, i32 1) #11, !dbg !443
  ret %struct.redisObject* %2, !dbg !444
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #0 !dbg !445 {
  %3 = alloca [5120 x i8], align 16
  %4 = getelementptr inbounds [5120 x i8], [5120 x i8]* %3, i64 0, i64 0, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 5120, i8* nonnull %4) #10, !dbg !459
  %5 = call i32 @ld2string(i8* nonnull %4, i64 5120, x86_fp80 %0, i32 %1) #8, !dbg !461
  %6 = sext i32 %5 to i64, !dbg !463
  %7 = call %struct.redisObject* @createStringObject(i8* nonnull %4, i64 %6) #11, !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 5120, i8* nonnull %4) #10, !dbg !465
  ret %struct.redisObject* %7, !dbg !466
}

; Function Attrs: noredzone
declare dso_local i32 @ld2string(i8*, i64, x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @dupStringObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !467 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !476
  %3 = load i32, i32* %2, align 8, !dbg !476
  %4 = and i32 %3, 15, !dbg !476
  %5 = icmp eq i32 %4, 0, !dbg !476
  br i1 %5, label %7, label %6, !dbg !476

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 196) #8, !dbg !476
  tail call void @_exit(i32 1) #9, !dbg !476
  unreachable, !dbg !476

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !477
  %9 = trunc i32 %8 to i4, !dbg !478
  switch i4 %9, label %133 [
    i4 0, label %10
    i4 -8, label %68
    i4 1, label %98
  ], !dbg !478

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !479
  %12 = load i8*, i8** %11, align 8, !dbg !479, !tbaa !182
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !492
  %14 = load i8, i8* %13, align 1, !dbg !492, !tbaa !290
  %15 = trunc i8 %14 to i3, !dbg !494
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !494

; <label>:16:                                     ; preds = %10
  %17 = lshr i8 %14, 3, !dbg !495
  %18 = zext i8 %17 to i64, !dbg !495
  br label %37, !dbg !497

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !498
  %21 = load i8, i8* %20, align 1, !dbg !499, !tbaa !290
  %22 = zext i8 %21 to i64, !dbg !498
  br label %37, !dbg !500

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !501
  %25 = bitcast i8* %24 to i16*, !dbg !502
  %26 = load i16, i16* %25, align 1, !dbg !502, !tbaa !503
  %27 = zext i16 %26 to i64, !dbg !501
  br label %37, !dbg !505

; <label>:28:                                     ; preds = %10
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !506
  %30 = bitcast i8* %29 to i32*, !dbg !507
  %31 = load i32, i32* %30, align 1, !dbg !507, !tbaa !508
  %32 = zext i32 %31 to i64, !dbg !506
  br label %37, !dbg !509

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !510
  %35 = bitcast i8* %34 to i64*, !dbg !511
  %36 = load i64, i64* %35, align 1, !dbg !511, !tbaa !512
  br label %37, !dbg !513

; <label>:37:                                     ; preds = %10, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %10 ], !dbg !514
  %39 = tail call i8* @sdsnewlen(i8* %12, i64 %38) #8, !dbg !518
  %40 = tail call i8* @zmalloc(i64 16) #8, !dbg !522
  %41 = bitcast i8* %40 to %struct.redisObject*, !dbg !522
  %42 = bitcast i8* %40 to i32*, !dbg !524
  %43 = load i32, i32* %42, align 8, !dbg !525
  %44 = and i32 %43, -256, !dbg !525
  store i32 %44, i32* %42, align 8, !dbg !526
  %45 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !527
  %46 = bitcast i8* %45 to i8**, !dbg !527
  store i8* %39, i8** %46, align 8, !dbg !528, !tbaa !182
  %47 = getelementptr inbounds i8, i8* %40, i64 4, !dbg !529
  %48 = bitcast i8* %47 to i32*, !dbg !529
  store i32 1, i32* %48, align 4, !dbg !530, !tbaa !190
  %49 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !531, !tbaa !193
  %50 = and i32 %49, 2, !dbg !532
  %51 = icmp eq i32 %50, 0, !dbg !532
  br i1 %51, label %60, label %52, !dbg !533

; <label>:52:                                     ; preds = %37
  %53 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !534
  %54 = trunc i64 %53 to i32, !dbg !535
  %55 = load i32, i32* %42, align 8, !dbg !536
  %56 = shl i32 %54, 16, !dbg !536
  %57 = and i32 %55, 255, !dbg !536
  %58 = or i32 %56, %57, !dbg !536
  %59 = or i32 %58, 1280, !dbg !536
  br label %66, !dbg !537

; <label>:60:                                     ; preds = %37
  %61 = tail call i32 @LRU_CLOCK() #8, !dbg !538
  %62 = load i32, i32* %42, align 8, !dbg !539
  %63 = shl i32 %61, 8, !dbg !539
  %64 = and i32 %62, 255, !dbg !539
  %65 = or i32 %64, %63, !dbg !539
  br label %66

; <label>:66:                                     ; preds = %52, %60
  %67 = phi i32 [ %65, %60 ], [ %59, %52 ]
  store i32 %67, i32* %42, align 8, !dbg !540
  br label %134, !dbg !541

; <label>:68:                                     ; preds = %7
  %69 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !542
  %70 = load i8*, i8** %69, align 8, !dbg !542, !tbaa !182
  %71 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !545
  %72 = load i8, i8* %71, align 1, !dbg !545, !tbaa !290
  %73 = trunc i8 %72 to i3, !dbg !547
  switch i3 %73, label %95 [
    i3 0, label %74
    i3 1, label %77
    i3 2, label %81
    i3 3, label %86
    i3 -4, label %91
  ], !dbg !547

; <label>:74:                                     ; preds = %68
  %75 = lshr i8 %72, 3, !dbg !548
  %76 = zext i8 %75 to i64, !dbg !548
  br label %95, !dbg !549

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i8, i8* %70, i64 -3, !dbg !550
  %79 = load i8, i8* %78, align 1, !dbg !551, !tbaa !290
  %80 = zext i8 %79 to i64, !dbg !550
  br label %95, !dbg !552

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds i8, i8* %70, i64 -5, !dbg !553
  %83 = bitcast i8* %82 to i16*, !dbg !554
  %84 = load i16, i16* %83, align 1, !dbg !554, !tbaa !503
  %85 = zext i16 %84 to i64, !dbg !553
  br label %95, !dbg !555

; <label>:86:                                     ; preds = %68
  %87 = getelementptr inbounds i8, i8* %70, i64 -9, !dbg !556
  %88 = bitcast i8* %87 to i32*, !dbg !557
  %89 = load i32, i32* %88, align 1, !dbg !557, !tbaa !508
  %90 = zext i32 %89 to i64, !dbg !556
  br label %95, !dbg !558

; <label>:91:                                     ; preds = %68
  %92 = getelementptr inbounds i8, i8* %70, i64 -17, !dbg !559
  %93 = bitcast i8* %92 to i64*, !dbg !560
  %94 = load i64, i64* %93, align 1, !dbg !560, !tbaa !512
  br label %95, !dbg !561

; <label>:95:                                     ; preds = %68, %74, %77, %81, %86, %91
  %96 = phi i64 [ %94, %91 ], [ %90, %86 ], [ %85, %81 ], [ %80, %77 ], [ %76, %74 ], [ 0, %68 ], !dbg !562
  %97 = tail call %struct.redisObject* @createEmbeddedStringObject(i8* %70, i64 %96) #11, !dbg !563
  br label %134, !dbg !564

; <label>:98:                                     ; preds = %7
  %99 = tail call i8* @zmalloc(i64 16) #8, !dbg !568
  %100 = bitcast i8* %99 to %struct.redisObject*, !dbg !568
  %101 = bitcast i8* %99 to i32*, !dbg !570
  %102 = load i32, i32* %101, align 8, !dbg !571
  %103 = and i32 %102, -256, !dbg !571
  store i32 %103, i32* %101, align 8, !dbg !572
  %104 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !573
  %105 = bitcast i8* %104 to i8**, !dbg !573
  store i8* null, i8** %105, align 8, !dbg !574, !tbaa !182
  %106 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !575
  %107 = bitcast i8* %106 to i32*, !dbg !575
  store i32 1, i32* %107, align 4, !dbg !576, !tbaa !190
  %108 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !577, !tbaa !193
  %109 = and i32 %108, 2, !dbg !578
  %110 = icmp eq i32 %109, 0, !dbg !578
  br i1 %110, label %119, label %111, !dbg !579

; <label>:111:                                    ; preds = %98
  %112 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !580
  %113 = trunc i64 %112 to i32, !dbg !581
  %114 = load i32, i32* %101, align 8, !dbg !582
  %115 = shl i32 %113, 16, !dbg !582
  %116 = and i32 %114, 255, !dbg !582
  %117 = or i32 %116, %115, !dbg !582
  %118 = or i32 %117, 1280, !dbg !582
  br label %125, !dbg !583

; <label>:119:                                    ; preds = %98
  %120 = tail call i32 @LRU_CLOCK() #8, !dbg !584
  %121 = load i32, i32* %101, align 8, !dbg !585
  %122 = shl i32 %120, 8, !dbg !585
  %123 = and i32 %121, 255, !dbg !585
  %124 = or i32 %123, %122, !dbg !585
  br label %125

; <label>:125:                                    ; preds = %111, %119
  %126 = phi i32 [ %124, %119 ], [ %118, %111 ]
  %127 = and i32 %126, -241, !dbg !587
  %128 = or i32 %127, 16, !dbg !587
  store i32 %128, i32* %101, align 8, !dbg !587
  %129 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !588
  %130 = bitcast i8** %129 to i64*, !dbg !588
  %131 = load i64, i64* %130, align 8, !dbg !588, !tbaa !182
  %132 = bitcast i8* %104 to i64*, !dbg !589
  store i64 %131, i64* %132, align 8, !dbg !589, !tbaa !182
  br label %134, !dbg !590

; <label>:133:                                    ; preds = %7
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !591
  tail call void @_exit(i32 1) #9, !dbg !591
  unreachable, !dbg !591

; <label>:134:                                    ; preds = %125, %95, %66
  %135 = phi %struct.redisObject* [ %100, %125 ], [ %97, %95 ], [ %41, %66 ], !dbg !592
  ret %struct.redisObject* %135, !dbg !593
}

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createQuicklistObject() local_unnamed_addr #0 !dbg !594 {
  %1 = tail call %struct.quicklist* @quicklistCreate() #8, !dbg !627
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !632
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !632
  %4 = bitcast i8* %2 to i32*, !dbg !634
  %5 = load i32, i32* %4, align 8, !dbg !635
  %6 = and i32 %5, -256, !dbg !635
  %7 = or i32 %6, 1, !dbg !635
  store i32 %7, i32* %4, align 8, !dbg !636
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !637
  %9 = bitcast i8* %8 to %struct.quicklist**, !dbg !638
  store %struct.quicklist* %1, %struct.quicklist** %9, align 8, !dbg !638, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !639
  %11 = bitcast i8* %10 to i32*, !dbg !639
  store i32 1, i32* %11, align 4, !dbg !640, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !641, !tbaa !193
  %13 = and i32 %12, 2, !dbg !642
  %14 = icmp eq i32 %13, 0, !dbg !642
  br i1 %14, label %23, label %15, !dbg !643

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !644
  %17 = trunc i64 %16 to i32, !dbg !645
  %18 = load i32, i32* %4, align 8, !dbg !646
  %19 = shl i32 %17, 16, !dbg !646
  %20 = and i32 %18, 255, !dbg !646
  %21 = or i32 %20, %19, !dbg !646
  %22 = or i32 %21, 1280, !dbg !646
  br label %29, !dbg !647

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !648
  %25 = load i32, i32* %4, align 8, !dbg !649
  %26 = shl i32 %24, 8, !dbg !649
  %27 = and i32 %25, 255, !dbg !649
  %28 = or i32 %27, %26, !dbg !649
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !651
  %32 = or i32 %31, 144, !dbg !651
  store i32 %32, i32* %4, align 8, !dbg !651
  ret %struct.redisObject* %3, !dbg !652
}

; Function Attrs: noredzone
declare dso_local %struct.quicklist* @quicklistCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZiplistObject() local_unnamed_addr #0 !dbg !653 {
  %1 = tail call i8* @ziplistNew() #8, !dbg !657
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !662
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !662
  %4 = bitcast i8* %2 to i32*, !dbg !664
  %5 = load i32, i32* %4, align 8, !dbg !665
  %6 = and i32 %5, -256, !dbg !665
  %7 = or i32 %6, 1, !dbg !665
  store i32 %7, i32* %4, align 8, !dbg !666
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !667
  %9 = bitcast i8* %8 to i8**, !dbg !667
  store i8* %1, i8** %9, align 8, !dbg !668, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !669
  %11 = bitcast i8* %10 to i32*, !dbg !669
  store i32 1, i32* %11, align 4, !dbg !670, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !671, !tbaa !193
  %13 = and i32 %12, 2, !dbg !672
  %14 = icmp eq i32 %13, 0, !dbg !672
  br i1 %14, label %23, label %15, !dbg !673

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !674
  %17 = trunc i64 %16 to i32, !dbg !675
  %18 = load i32, i32* %4, align 8, !dbg !676
  %19 = shl i32 %17, 16, !dbg !676
  %20 = and i32 %18, 255, !dbg !676
  %21 = or i32 %20, %19, !dbg !676
  %22 = or i32 %21, 1280, !dbg !676
  br label %29, !dbg !677

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !678
  %25 = load i32, i32* %4, align 8, !dbg !679
  %26 = shl i32 %24, 8, !dbg !679
  %27 = and i32 %25, 255, !dbg !679
  %28 = or i32 %27, %26, !dbg !679
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !681
  %32 = or i32 %31, 80, !dbg !681
  store i32 %32, i32* %4, align 8, !dbg !681
  ret %struct.redisObject* %3, !dbg !682
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createSetObject() local_unnamed_addr #0 !dbg !683 {
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @setDictType, i8* null) #8, !dbg !687
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !692
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !692
  %4 = bitcast i8* %2 to i32*, !dbg !694
  %5 = load i32, i32* %4, align 8, !dbg !695
  %6 = and i32 %5, -256, !dbg !695
  %7 = or i32 %6, 2, !dbg !695
  store i32 %7, i32* %4, align 8, !dbg !696
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !697
  %9 = bitcast i8* %8 to %struct.dict**, !dbg !698
  store %struct.dict* %1, %struct.dict** %9, align 8, !dbg !698, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !699
  %11 = bitcast i8* %10 to i32*, !dbg !699
  store i32 1, i32* %11, align 4, !dbg !700, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !701, !tbaa !193
  %13 = and i32 %12, 2, !dbg !702
  %14 = icmp eq i32 %13, 0, !dbg !702
  br i1 %14, label %23, label %15, !dbg !703

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !704
  %17 = trunc i64 %16 to i32, !dbg !705
  %18 = load i32, i32* %4, align 8, !dbg !706
  %19 = shl i32 %17, 16, !dbg !706
  %20 = and i32 %18, 255, !dbg !706
  %21 = or i32 %20, %19, !dbg !706
  %22 = or i32 %21, 1280, !dbg !706
  br label %29, !dbg !707

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !708
  %25 = load i32, i32* %4, align 8, !dbg !709
  %26 = shl i32 %24, 8, !dbg !709
  %27 = and i32 %25, 255, !dbg !709
  %28 = or i32 %27, %26, !dbg !709
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !711
  %32 = or i32 %31, 32, !dbg !711
  store i32 %32, i32* %4, align 8, !dbg !711
  ret %struct.redisObject* %3, !dbg !712
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createIntsetObject() local_unnamed_addr #0 !dbg !713 {
  %1 = tail call %struct.intset* @intsetNew() #8, !dbg !729
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !734
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !734
  %4 = bitcast i8* %2 to i32*, !dbg !736
  %5 = load i32, i32* %4, align 8, !dbg !737
  %6 = and i32 %5, -256, !dbg !737
  %7 = or i32 %6, 2, !dbg !737
  store i32 %7, i32* %4, align 8, !dbg !738
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !739
  %9 = bitcast i8* %8 to %struct.intset**, !dbg !740
  store %struct.intset* %1, %struct.intset** %9, align 8, !dbg !740, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !741
  %11 = bitcast i8* %10 to i32*, !dbg !741
  store i32 1, i32* %11, align 4, !dbg !742, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !743, !tbaa !193
  %13 = and i32 %12, 2, !dbg !744
  %14 = icmp eq i32 %13, 0, !dbg !744
  br i1 %14, label %23, label %15, !dbg !745

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !746
  %17 = trunc i64 %16 to i32, !dbg !747
  %18 = load i32, i32* %4, align 8, !dbg !748
  %19 = shl i32 %17, 16, !dbg !748
  %20 = and i32 %18, 255, !dbg !748
  %21 = or i32 %20, %19, !dbg !748
  %22 = or i32 %21, 1280, !dbg !748
  br label %29, !dbg !749

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !750
  %25 = load i32, i32* %4, align 8, !dbg !751
  %26 = shl i32 %24, 8, !dbg !751
  %27 = and i32 %25, 255, !dbg !751
  %28 = or i32 %27, %26, !dbg !751
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !753
  %32 = or i32 %31, 96, !dbg !753
  store i32 %32, i32* %4, align 8, !dbg !753
  ret %struct.redisObject* %3, !dbg !754
}

; Function Attrs: noredzone
declare dso_local %struct.intset* @intsetNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createHashObject() local_unnamed_addr #0 !dbg !755 {
  %1 = tail call i8* @ziplistNew() #8, !dbg !759
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !764
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !764
  %4 = bitcast i8* %2 to i32*, !dbg !766
  %5 = load i32, i32* %4, align 8, !dbg !767
  %6 = and i32 %5, -256, !dbg !767
  %7 = or i32 %6, 4, !dbg !767
  store i32 %7, i32* %4, align 8, !dbg !768
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !769
  %9 = bitcast i8* %8 to i8**, !dbg !769
  store i8* %1, i8** %9, align 8, !dbg !770, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !771
  %11 = bitcast i8* %10 to i32*, !dbg !771
  store i32 1, i32* %11, align 4, !dbg !772, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !773, !tbaa !193
  %13 = and i32 %12, 2, !dbg !774
  %14 = icmp eq i32 %13, 0, !dbg !774
  br i1 %14, label %23, label %15, !dbg !775

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !776
  %17 = trunc i64 %16 to i32, !dbg !777
  %18 = load i32, i32* %4, align 8, !dbg !778
  %19 = shl i32 %17, 16, !dbg !778
  %20 = and i32 %18, 255, !dbg !778
  %21 = or i32 %20, %19, !dbg !778
  %22 = or i32 %21, 1280, !dbg !778
  br label %29, !dbg !779

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !780
  %25 = load i32, i32* %4, align 8, !dbg !781
  %26 = shl i32 %24, 8, !dbg !781
  %27 = and i32 %25, 255, !dbg !781
  %28 = or i32 %27, %26, !dbg !781
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !783
  %32 = or i32 %31, 80, !dbg !783
  store i32 %32, i32* %4, align 8, !dbg !783
  ret %struct.redisObject* %3, !dbg !784
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZsetObject() local_unnamed_addr #0 !dbg !785 {
  %1 = tail call i8* @zmalloc(i64 16) #8, !dbg !789
  %2 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @zsetDictType, i8* null) #8, !dbg !791
  %3 = bitcast i8* %1 to %struct.dict**, !dbg !792
  store %struct.dict* %2, %struct.dict** %3, align 8, !dbg !793, !tbaa !794
  %4 = tail call %struct.zskiplist* @zslCreate() #8, !dbg !796
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !797
  %6 = bitcast i8* %5 to %struct.zskiplist**, !dbg !797
  store %struct.zskiplist* %4, %struct.zskiplist** %6, align 8, !dbg !798, !tbaa !799
  %7 = tail call i8* @zmalloc(i64 16) #8, !dbg !803
  %8 = bitcast i8* %7 to %struct.redisObject*, !dbg !803
  %9 = bitcast i8* %7 to i32*, !dbg !805
  %10 = load i32, i32* %9, align 8, !dbg !806
  %11 = and i32 %10, -256, !dbg !806
  %12 = or i32 %11, 3, !dbg !806
  store i32 %12, i32* %9, align 8, !dbg !807
  %13 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !808
  %14 = bitcast i8* %13 to i8**, !dbg !808
  store i8* %1, i8** %14, align 8, !dbg !809, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !810
  %16 = bitcast i8* %15 to i32*, !dbg !810
  store i32 1, i32* %16, align 4, !dbg !811, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !812, !tbaa !193
  %18 = and i32 %17, 2, !dbg !813
  %19 = icmp eq i32 %18, 0, !dbg !813
  br i1 %19, label %28, label %20, !dbg !814

; <label>:20:                                     ; preds = %0
  %21 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !815
  %22 = trunc i64 %21 to i32, !dbg !816
  %23 = load i32, i32* %9, align 8, !dbg !817
  %24 = shl i32 %22, 16, !dbg !817
  %25 = and i32 %23, 255, !dbg !817
  %26 = or i32 %25, %24, !dbg !817
  %27 = or i32 %26, 1280, !dbg !817
  br label %34, !dbg !818

; <label>:28:                                     ; preds = %0
  %29 = tail call i32 @LRU_CLOCK() #8, !dbg !819
  %30 = load i32, i32* %9, align 8, !dbg !820
  %31 = shl i32 %29, 8, !dbg !820
  %32 = and i32 %30, 255, !dbg !820
  %33 = or i32 %32, %31, !dbg !820
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  %36 = and i32 %35, -241, !dbg !822
  %37 = or i32 %36, 112, !dbg !822
  store i32 %37, i32* %9, align 8, !dbg !822
  ret %struct.redisObject* %8, !dbg !823
}

; Function Attrs: noredzone
declare dso_local %struct.zskiplist* @zslCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createZsetZiplistObject() local_unnamed_addr #0 !dbg !824 {
  %1 = tail call i8* @ziplistNew() #8, !dbg !828
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !833
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !833
  %4 = bitcast i8* %2 to i32*, !dbg !835
  %5 = load i32, i32* %4, align 8, !dbg !836
  %6 = and i32 %5, -256, !dbg !836
  %7 = or i32 %6, 3, !dbg !836
  store i32 %7, i32* %4, align 8, !dbg !837
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !838
  %9 = bitcast i8* %8 to i8**, !dbg !838
  store i8* %1, i8** %9, align 8, !dbg !839, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !840
  %11 = bitcast i8* %10 to i32*, !dbg !840
  store i32 1, i32* %11, align 4, !dbg !841, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !842, !tbaa !193
  %13 = and i32 %12, 2, !dbg !843
  %14 = icmp eq i32 %13, 0, !dbg !843
  br i1 %14, label %23, label %15, !dbg !844

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !845
  %17 = trunc i64 %16 to i32, !dbg !846
  %18 = load i32, i32* %4, align 8, !dbg !847
  %19 = shl i32 %17, 16, !dbg !847
  %20 = and i32 %18, 255, !dbg !847
  %21 = or i32 %20, %19, !dbg !847
  %22 = or i32 %21, 1280, !dbg !847
  br label %29, !dbg !848

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !849
  %25 = load i32, i32* %4, align 8, !dbg !850
  %26 = shl i32 %24, 8, !dbg !850
  %27 = and i32 %25, 255, !dbg !850
  %28 = or i32 %27, %26, !dbg !850
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !852
  %32 = or i32 %31, 80, !dbg !852
  store i32 %32, i32* %4, align 8, !dbg !852
  ret %struct.redisObject* %3, !dbg !853
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createStreamObject() local_unnamed_addr #0 !dbg !854 {
  %1 = tail call %struct.stream* @streamNew() #8, !dbg !890
  %2 = tail call i8* @zmalloc(i64 16) #8, !dbg !895
  %3 = bitcast i8* %2 to %struct.redisObject*, !dbg !895
  %4 = bitcast i8* %2 to i32*, !dbg !897
  %5 = load i32, i32* %4, align 8, !dbg !898
  %6 = and i32 %5, -256, !dbg !898
  %7 = or i32 %6, 6, !dbg !898
  store i32 %7, i32* %4, align 8, !dbg !899
  %8 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !900
  %9 = bitcast i8* %8 to %struct.stream**, !dbg !901
  store %struct.stream* %1, %struct.stream** %9, align 8, !dbg !901, !tbaa !182
  %10 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !902
  %11 = bitcast i8* %10 to i32*, !dbg !902
  store i32 1, i32* %11, align 4, !dbg !903, !tbaa !190
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !904, !tbaa !193
  %13 = and i32 %12, 2, !dbg !905
  %14 = icmp eq i32 %13, 0, !dbg !905
  br i1 %14, label %23, label %15, !dbg !906

; <label>:15:                                     ; preds = %0
  %16 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !907
  %17 = trunc i64 %16 to i32, !dbg !908
  %18 = load i32, i32* %4, align 8, !dbg !909
  %19 = shl i32 %17, 16, !dbg !909
  %20 = and i32 %18, 255, !dbg !909
  %21 = or i32 %20, %19, !dbg !909
  %22 = or i32 %21, 1280, !dbg !909
  br label %29, !dbg !910

; <label>:23:                                     ; preds = %0
  %24 = tail call i32 @LRU_CLOCK() #8, !dbg !911
  %25 = load i32, i32* %4, align 8, !dbg !912
  %26 = shl i32 %24, 8, !dbg !912
  %27 = and i32 %25, 255, !dbg !912
  %28 = or i32 %27, %26, !dbg !912
  br label %29

; <label>:29:                                     ; preds = %15, %23
  %30 = phi i32 [ %28, %23 ], [ %22, %15 ]
  %31 = and i32 %30, -241, !dbg !914
  %32 = or i32 %31, 160, !dbg !914
  store i32 %32, i32* %4, align 8, !dbg !914
  ret %struct.redisObject* %3, !dbg !915
}

; Function Attrs: noredzone
declare dso_local %struct.stream* @streamNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createModuleObject(%struct.RedisModuleType*, i8*) local_unnamed_addr #0 !dbg !916 {
  %3 = tail call i8* @zmalloc(i64 16) #8, !dbg !1270
  %4 = bitcast i8* %3 to %struct.RedisModuleType**, !dbg !1272
  store %struct.RedisModuleType* %0, %struct.RedisModuleType** %4, align 8, !dbg !1273, !tbaa !1274
  %5 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1276
  %6 = bitcast i8* %5 to i8**, !dbg !1276
  store i8* %1, i8** %6, align 8, !dbg !1277, !tbaa !1278
  %7 = tail call i8* @zmalloc(i64 16) #8, !dbg !1282
  %8 = bitcast i8* %7 to %struct.redisObject*, !dbg !1282
  %9 = bitcast i8* %7 to i32*, !dbg !1284
  %10 = load i32, i32* %9, align 8, !dbg !1285
  %11 = and i32 %10, -256, !dbg !1285
  %12 = or i32 %11, 5, !dbg !1285
  store i32 %12, i32* %9, align 8, !dbg !1286
  %13 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !1287
  %14 = bitcast i8* %13 to i8**, !dbg !1287
  store i8* %3, i8** %14, align 8, !dbg !1288, !tbaa !182
  %15 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !1289
  %16 = bitcast i8* %15 to i32*, !dbg !1289
  store i32 1, i32* %16, align 4, !dbg !1290, !tbaa !190
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1291, !tbaa !193
  %18 = and i32 %17, 2, !dbg !1292
  %19 = icmp eq i32 %18, 0, !dbg !1292
  br i1 %19, label %28, label %20, !dbg !1293

; <label>:20:                                     ; preds = %2
  %21 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !1294
  %22 = trunc i64 %21 to i32, !dbg !1295
  %23 = load i32, i32* %9, align 8, !dbg !1296
  %24 = shl i32 %22, 16, !dbg !1296
  %25 = and i32 %23, 255, !dbg !1296
  %26 = or i32 %25, %24, !dbg !1296
  %27 = or i32 %26, 1280, !dbg !1296
  br label %34, !dbg !1297

; <label>:28:                                     ; preds = %2
  %29 = tail call i32 @LRU_CLOCK() #8, !dbg !1298
  %30 = load i32, i32* %9, align 8, !dbg !1299
  %31 = shl i32 %29, 8, !dbg !1299
  %32 = and i32 %30, 255, !dbg !1299
  %33 = or i32 %32, %31, !dbg !1299
  br label %34

; <label>:34:                                     ; preds = %20, %28
  %35 = phi i32 [ %33, %28 ], [ %27, %20 ]
  store i32 %35, i32* %9, align 8, !dbg !1300
  ret %struct.redisObject* %8, !dbg !1301
}

; Function Attrs: noredzone nounwind
define dso_local void @freeStringObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1302 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1306
  %3 = load i32, i32* %2, align 8, !dbg !1306
  %4 = and i32 %3, 240, !dbg !1306
  %5 = icmp eq i32 %4, 0, !dbg !1308
  br i1 %5, label %6, label %9, !dbg !1309

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1310
  %8 = load i8*, i8** %7, align 8, !dbg !1310, !tbaa !182
  tail call void @sdsfree(i8* %8) #8, !dbg !1312
  br label %9, !dbg !1313

; <label>:9:                                      ; preds = %6, %1
  ret void, !dbg !1314
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeListObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1315 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1319
  %3 = load i32, i32* %2, align 8, !dbg !1319
  %4 = and i32 %3, 240, !dbg !1319
  %5 = icmp eq i32 %4, 144, !dbg !1321
  br i1 %5, label %6, label %10, !dbg !1322

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1323
  %8 = bitcast i8** %7 to %struct.quicklist**, !dbg !1323
  %9 = load %struct.quicklist*, %struct.quicklist** %8, align 8, !dbg !1323, !tbaa !182
  tail call void @quicklistRelease(%struct.quicklist* %9) #8, !dbg !1325
  ret void, !dbg !1326

; <label>:10:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1327
  tail call void @_exit(i32 1) #9, !dbg !1327
  unreachable, !dbg !1327
}

; Function Attrs: noredzone
declare dso_local void @quicklistRelease(%struct.quicklist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeSetObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1329 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1333
  %3 = load i32, i32* %2, align 8, !dbg !1333
  %4 = lshr i32 %3, 4, !dbg !1333
  %5 = trunc i32 %4 to i4, !dbg !1334
  switch i4 %5, label %13 [
    i4 2, label %6
    i4 6, label %10
  ], !dbg !1334

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1335
  %8 = bitcast i8** %7 to %struct.dict**, !dbg !1335
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !1335, !tbaa !182
  tail call void @dictRelease(%struct.dict* %9) #8, !dbg !1337
  br label %14, !dbg !1338

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1339
  %12 = load i8*, i8** %11, align 8, !dbg !1339, !tbaa !182
  tail call void @zfree(i8* %12) #8, !dbg !1340
  br label %14, !dbg !1341

; <label>:13:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1342
  tail call void @_exit(i32 1) #9, !dbg !1342
  unreachable, !dbg !1342

; <label>:14:                                     ; preds = %10, %6
  ret void, !dbg !1343
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeZsetObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1344 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1349
  %3 = load i32, i32* %2, align 8, !dbg !1349
  %4 = lshr i32 %3, 4, !dbg !1349
  %5 = trunc i32 %4 to i4, !dbg !1350
  switch i4 %5, label %17 [
    i4 7, label %6
    i4 5, label %14
  ], !dbg !1350

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1351
  %8 = load i8*, i8** %7, align 8, !dbg !1351, !tbaa !182
  %9 = bitcast i8* %8 to %struct.dict**, !dbg !1354
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1354, !tbaa !794
  tail call void @dictRelease(%struct.dict* %10) #8, !dbg !1355
  %11 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !1356
  %12 = bitcast i8* %11 to %struct.zskiplist**, !dbg !1356
  %13 = load %struct.zskiplist*, %struct.zskiplist** %12, align 8, !dbg !1356, !tbaa !799
  tail call void @zslFree(%struct.zskiplist* %13) #8, !dbg !1357
  tail call void @zfree(i8* %8) #8, !dbg !1358
  br label %18, !dbg !1359

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1360
  %16 = load i8*, i8** %15, align 8, !dbg !1360, !tbaa !182
  tail call void @zfree(i8* %16) #8, !dbg !1361
  br label %18, !dbg !1362

; <label>:17:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 321, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1363
  tail call void @_exit(i32 1) #9, !dbg !1363
  unreachable, !dbg !1363

; <label>:18:                                     ; preds = %14, %6
  ret void, !dbg !1364
}

; Function Attrs: noredzone
declare dso_local void @zslFree(%struct.zskiplist*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeHashObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1365 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1369
  %3 = load i32, i32* %2, align 8, !dbg !1369
  %4 = lshr i32 %3, 4, !dbg !1369
  %5 = trunc i32 %4 to i4, !dbg !1370
  switch i4 %5, label %13 [
    i4 2, label %6
    i4 5, label %10
  ], !dbg !1370

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1371
  %8 = bitcast i8** %7 to %struct.dict**, !dbg !1371
  %9 = load %struct.dict*, %struct.dict** %8, align 8, !dbg !1371, !tbaa !182
  tail call void @dictRelease(%struct.dict* %9) #8, !dbg !1373
  br label %14, !dbg !1374

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1375
  %12 = load i8*, i8** %11, align 8, !dbg !1375, !tbaa !182
  tail call void @zfree(i8* %12) #8, !dbg !1376
  br label %14, !dbg !1377

; <label>:13:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1378
  tail call void @_exit(i32 1) #9, !dbg !1378
  unreachable, !dbg !1378

; <label>:14:                                     ; preds = %10, %6
  ret void, !dbg !1379
}

; Function Attrs: noredzone nounwind
define dso_local void @freeModuleObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1380 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1385
  %3 = load i8*, i8** %2, align 8, !dbg !1385, !tbaa !182
  %4 = bitcast i8* %3 to %struct.RedisModuleType**, !dbg !1387
  %5 = load %struct.RedisModuleType*, %struct.RedisModuleType** %4, align 8, !dbg !1387, !tbaa !1274
  %6 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %5, i64 0, i32 7, !dbg !1388
  %7 = load void (i8*)*, void (i8*)** %6, align 8, !dbg !1388, !tbaa !1389
  %8 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1391
  %9 = bitcast i8* %8 to i8**, !dbg !1391
  %10 = load i8*, i8** %9, align 8, !dbg !1391, !tbaa !1278
  tail call void %7(i8* %10) #8, !dbg !1392
  tail call void @zfree(i8* %3) #8, !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: noredzone nounwind
define dso_local void @freeStreamObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1395 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1399
  %3 = bitcast i8** %2 to %struct.stream**, !dbg !1399
  %4 = load %struct.stream*, %struct.stream** %3, align 8, !dbg !1399, !tbaa !182
  tail call void @freeStream(%struct.stream* %4) #8, !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: noredzone
declare dso_local void @freeStream(%struct.stream*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #0 !dbg !1402 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1406
  %3 = load i32, i32* %2, align 4, !dbg !1406, !tbaa !190
  %4 = icmp eq i32 %3, 1, !dbg !1408
  br i1 %4, label %5, label %63, !dbg !1409

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1410
  %7 = load i32, i32* %6, align 8, !dbg !1410
  %8 = trunc i32 %7 to i4, !dbg !1412
  switch i4 %8, label %60 [
    i4 0, label %9
    i4 1, label %15
    i4 2, label %23
    i4 3, label %34
    i4 4, label %35
    i4 5, label %46
    i4 6, label %56
  ], !dbg !1412

; <label>:9:                                      ; preds = %5
  %10 = and i32 %7, 240, !dbg !1416
  %11 = icmp eq i32 %10, 0, !dbg !1417
  br i1 %11, label %12, label %61, !dbg !1418

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1419
  %14 = load i8*, i8** %13, align 8, !dbg !1419, !tbaa !182
  tail call void @sdsfree(i8* %14) #8, !dbg !1420
  br label %61, !dbg !1421

; <label>:15:                                     ; preds = %5
  %16 = and i32 %7, 240, !dbg !1424
  %17 = icmp eq i32 %16, 144, !dbg !1425
  br i1 %17, label %19, label %18, !dbg !1426

; <label>:18:                                     ; preds = %15
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1427
  tail call void @_exit(i32 1) #9, !dbg !1427
  unreachable, !dbg !1427

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1428
  %21 = bitcast i8** %20 to %struct.quicklist**, !dbg !1428
  %22 = load %struct.quicklist*, %struct.quicklist** %21, align 8, !dbg !1428, !tbaa !182
  tail call void @quicklistRelease(%struct.quicklist* %22) #8, !dbg !1429
  br label %61, !dbg !1430

; <label>:23:                                     ; preds = %5
  %24 = lshr i32 %7, 4, !dbg !1433
  %25 = trunc i32 %24 to i4, !dbg !1434
  switch i4 %25, label %33 [
    i4 2, label %26
    i4 6, label %30
  ], !dbg !1434

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1435
  %28 = bitcast i8** %27 to %struct.dict**, !dbg !1435
  %29 = load %struct.dict*, %struct.dict** %28, align 8, !dbg !1435, !tbaa !182
  tail call void @dictRelease(%struct.dict* %29) #8, !dbg !1436
  br label %61, !dbg !1437

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1438
  %32 = load i8*, i8** %31, align 8, !dbg !1438, !tbaa !182
  tail call void @zfree(i8* %32) #8, !dbg !1439
  br label %61, !dbg !1440

; <label>:33:                                     ; preds = %23
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1441
  tail call void @_exit(i32 1) #9, !dbg !1441
  unreachable, !dbg !1441

; <label>:34:                                     ; preds = %5
  tail call void @freeZsetObject(%struct.redisObject* nonnull %0) #11, !dbg !1442
  br label %61, !dbg !1443

; <label>:35:                                     ; preds = %5
  %36 = lshr i32 %7, 4, !dbg !1446
  %37 = trunc i32 %36 to i4, !dbg !1447
  switch i4 %37, label %45 [
    i4 2, label %38
    i4 5, label %42
  ], !dbg !1447

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1448
  %40 = bitcast i8** %39 to %struct.dict**, !dbg !1448
  %41 = load %struct.dict*, %struct.dict** %40, align 8, !dbg !1448, !tbaa !182
  tail call void @dictRelease(%struct.dict* %41) #8, !dbg !1449
  br label %61, !dbg !1450

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1451
  %44 = load i8*, i8** %43, align 8, !dbg !1451, !tbaa !182
  tail call void @zfree(i8* %44) #8, !dbg !1452
  br label %61, !dbg !1453

; <label>:45:                                     ; preds = %35
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1454
  tail call void @_exit(i32 1) #9, !dbg !1454
  unreachable, !dbg !1454

; <label>:46:                                     ; preds = %5
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1457
  %48 = load i8*, i8** %47, align 8, !dbg !1457, !tbaa !182
  %49 = bitcast i8* %48 to %struct.RedisModuleType**, !dbg !1459
  %50 = load %struct.RedisModuleType*, %struct.RedisModuleType** %49, align 8, !dbg !1459, !tbaa !1274
  %51 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %50, i64 0, i32 7, !dbg !1460
  %52 = load void (i8*)*, void (i8*)** %51, align 8, !dbg !1460, !tbaa !1389
  %53 = getelementptr inbounds i8, i8* %48, i64 8, !dbg !1461
  %54 = bitcast i8* %53 to i8**, !dbg !1461
  %55 = load i8*, i8** %54, align 8, !dbg !1461, !tbaa !1278
  tail call void %52(i8* %55) #8, !dbg !1462
  tail call void @zfree(i8* %48) #8, !dbg !1463
  br label %61, !dbg !1464

; <label>:56:                                     ; preds = %5
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1467
  %58 = bitcast i8** %57 to %struct.stream**, !dbg !1467
  %59 = load %struct.stream*, %struct.stream** %58, align 8, !dbg !1467, !tbaa !182
  tail call void @freeStream(%struct.stream* %59) #8, !dbg !1468
  br label %61, !dbg !1469

; <label>:60:                                     ; preds = %5
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1470
  tail call void @_exit(i32 1) #9, !dbg !1470
  unreachable, !dbg !1470

; <label>:61:                                     ; preds = %42, %38, %30, %26, %12, %9, %56, %46, %34, %19
  %62 = bitcast %struct.redisObject* %0 to i8*, !dbg !1471
  tail call void @zfree(i8* %62) #8, !dbg !1472
  br label %70, !dbg !1473

; <label>:63:                                     ; preds = %1
  %64 = icmp slt i32 %3, 1, !dbg !1474
  br i1 %64, label %65, label %66, !dbg !1477

; <label>:65:                                     ; preds = %63
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1478
  tail call void @_exit(i32 1) #9, !dbg !1478
  unreachable, !dbg !1478

; <label>:66:                                     ; preds = %63
  %67 = icmp eq i32 %3, 2147483647, !dbg !1479
  br i1 %67, label %70, label %68, !dbg !1481

; <label>:68:                                     ; preds = %66
  %69 = add nsw i32 %3, -1, !dbg !1482
  store i32 %69, i32* %2, align 4, !dbg !1482, !tbaa !190
  br label %70, !dbg !1483

; <label>:70:                                     ; preds = %66, %68, %61
  ret void, !dbg !1484
}

; Function Attrs: noredzone nounwind
define dso_local void @decrRefCountVoid(i8*) local_unnamed_addr #0 !dbg !1485 {
  %2 = bitcast i8* %0 to %struct.redisObject*, !dbg !1489
  tail call void @decrRefCount(%struct.redisObject* %2) #11, !dbg !1490
  ret void, !dbg !1491
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @resetRefCount(%struct.redisObject* returned) local_unnamed_addr #0 !dbg !1492 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1496
  store i32 0, i32* %2, align 4, !dbg !1497, !tbaa !190
  ret %struct.redisObject* %0, !dbg !1498
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkType(%struct.client*, %struct.redisObject* nocapture readonly, i32) local_unnamed_addr #0 !dbg !1499 {
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1664
  %5 = load i32, i32* %4, align 8, !dbg !1664
  %6 = and i32 %5, 15, !dbg !1664
  %7 = icmp eq i32 %6, %2, !dbg !1666
  br i1 %7, label %10, label %8, !dbg !1667

; <label>:8:                                      ; preds = %3
  %9 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !1668, !tbaa !1670
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #8, !dbg !1672
  br label %10, !dbg !1673

; <label>:10:                                     ; preds = %3, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %3 ], !dbg !1674
  ret i32 %11, !dbg !1675
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @isSdsRepresentableAsLongLong(i8*, i64*) local_unnamed_addr #0 !dbg !1676 {
  %3 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1687
  %4 = load i8, i8* %3, align 1, !dbg !1687, !tbaa !290
  %5 = trunc i8 %4 to i3, !dbg !1689
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !1689

; <label>:6:                                      ; preds = %2
  %7 = lshr i8 %4, 3, !dbg !1690
  %8 = zext i8 %7 to i64, !dbg !1690
  br label %27, !dbg !1691

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1692
  %11 = load i8, i8* %10, align 1, !dbg !1693, !tbaa !290
  %12 = zext i8 %11 to i64, !dbg !1692
  br label %27, !dbg !1694

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1695
  %15 = bitcast i8* %14 to i16*, !dbg !1696
  %16 = load i16, i16* %15, align 1, !dbg !1696, !tbaa !503
  %17 = zext i16 %16 to i64, !dbg !1695
  br label %27, !dbg !1697

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1698
  %20 = bitcast i8* %19 to i32*, !dbg !1699
  %21 = load i32, i32* %20, align 1, !dbg !1699, !tbaa !508
  %22 = zext i32 %21 to i64, !dbg !1698
  br label %27, !dbg !1700

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1701
  %25 = bitcast i8* %24 to i64*, !dbg !1702
  %26 = load i64, i64* %25, align 1, !dbg !1702, !tbaa !512
  br label %27, !dbg !1703

; <label>:27:                                     ; preds = %2, %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], [ 0, %2 ], !dbg !1704
  %29 = tail call i32 @string2ll(i8* nonnull %0, i64 %28, i64* %1) #8, !dbg !1705
  %30 = icmp eq i32 %29, 0, !dbg !1705
  %31 = sext i1 %30 to i32, !dbg !1705
  ret i32 %31, !dbg !1706
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @isObjectRepresentableAsLongLong(%struct.redisObject*, i64*) local_unnamed_addr #0 !dbg !1707 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1715
  %4 = load i32, i32* %3, align 8, !dbg !1715
  %5 = and i32 %4, 15, !dbg !1715
  %6 = icmp eq i32 %5, 0, !dbg !1715
  br i1 %6, label %8, label %7, !dbg !1715

; <label>:7:                                      ; preds = %2
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 409) #8, !dbg !1715
  tail call void @_exit(i32 1) #9, !dbg !1715
  unreachable, !dbg !1715

; <label>:8:                                      ; preds = %2
  %9 = and i32 %4, 240, !dbg !1716
  %10 = icmp eq i32 %9, 16, !dbg !1718
  br i1 %10, label %11, label %17, !dbg !1719

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i64* %1, null, !dbg !1720
  br i1 %12, label %49, label %13, !dbg !1723

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1724
  %15 = bitcast i8** %14 to i64*, !dbg !1724
  %16 = load i64, i64* %15, align 8, !dbg !1724, !tbaa !182
  store i64 %16, i64* %1, align 8, !dbg !1725, !tbaa !1726
  br label %49, !dbg !1727

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1728
  %19 = load i8*, i8** %18, align 8, !dbg !1728, !tbaa !182
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1735
  %21 = load i8, i8* %20, align 1, !dbg !1735, !tbaa !290
  %22 = trunc i8 %21 to i3, !dbg !1737
  switch i3 %22, label %44 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !1737

; <label>:23:                                     ; preds = %17
  %24 = lshr i8 %21, 3, !dbg !1738
  %25 = zext i8 %24 to i64, !dbg !1738
  br label %44, !dbg !1739

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds i8, i8* %19, i64 -3, !dbg !1740
  %28 = load i8, i8* %27, align 1, !dbg !1741, !tbaa !290
  %29 = zext i8 %28 to i64, !dbg !1740
  br label %44, !dbg !1742

; <label>:30:                                     ; preds = %17
  %31 = getelementptr inbounds i8, i8* %19, i64 -5, !dbg !1743
  %32 = bitcast i8* %31 to i16*, !dbg !1744
  %33 = load i16, i16* %32, align 1, !dbg !1744, !tbaa !503
  %34 = zext i16 %33 to i64, !dbg !1743
  br label %44, !dbg !1745

; <label>:35:                                     ; preds = %17
  %36 = getelementptr inbounds i8, i8* %19, i64 -9, !dbg !1746
  %37 = bitcast i8* %36 to i32*, !dbg !1747
  %38 = load i32, i32* %37, align 1, !dbg !1747, !tbaa !508
  %39 = zext i32 %38 to i64, !dbg !1746
  br label %44, !dbg !1748

; <label>:40:                                     ; preds = %17
  %41 = getelementptr inbounds i8, i8* %19, i64 -17, !dbg !1749
  %42 = bitcast i8* %41 to i64*, !dbg !1750
  %43 = load i64, i64* %42, align 1, !dbg !1750, !tbaa !512
  br label %44, !dbg !1751

; <label>:44:                                     ; preds = %17, %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], [ 0, %17 ], !dbg !1752
  %46 = tail call i32 @string2ll(i8* nonnull %19, i64 %45, i64* %1) #8, !dbg !1753
  %47 = icmp eq i32 %46, 0, !dbg !1753
  %48 = sext i1 %47 to i32, !dbg !1753
  br label %49, !dbg !1754

; <label>:49:                                     ; preds = %13, %11, %44
  %50 = phi i32 [ %48, %44 ], [ 0, %11 ], [ 0, %13 ], !dbg !1755
  ret i32 %50, !dbg !1756
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @trimStringObjectIfNeeded(%struct.redisObject* nocapture) local_unnamed_addr #0 !dbg !1757 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1761
  %3 = load i32, i32* %2, align 8, !dbg !1761
  %4 = and i32 %3, 240, !dbg !1761
  %5 = icmp eq i32 %4, 0, !dbg !1763
  br i1 %5, label %6, label %55, !dbg !1764

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1765
  %8 = load i8*, i8** %7, align 8, !dbg !1765, !tbaa !182
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1781
  %10 = load i8, i8* %9, align 1, !dbg !1781, !tbaa !290
  %11 = trunc i8 %10 to i3, !dbg !1783
  switch i3 %11, label %55 [
    i3 -4, label %40
    i3 1, label %12
    i3 2, label %20
    i3 3, label %30
  ], !dbg !1783

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1784
  %14 = getelementptr inbounds i8, i8* %8, i64 -2, !dbg !1785
  %15 = load i8, i8* %14, align 1, !dbg !1785, !tbaa !290
  %16 = zext i8 %15 to i64, !dbg !1786
  %17 = load i8, i8* %13, align 1, !dbg !1787, !tbaa !290
  %18 = zext i8 %17 to i64, !dbg !1788
  %19 = sub nsw i64 %16, %18, !dbg !1789
  br label %48, !dbg !1793

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1794
  %22 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !1795
  %23 = bitcast i8* %22 to i16*, !dbg !1795
  %24 = load i16, i16* %23, align 1, !dbg !1795, !tbaa !503
  %25 = zext i16 %24 to i64, !dbg !1796
  %26 = bitcast i8* %21 to i16*, !dbg !1797
  %27 = load i16, i16* %26, align 1, !dbg !1797, !tbaa !503
  %28 = zext i16 %27 to i64, !dbg !1798
  %29 = sub nsw i64 %25, %28, !dbg !1799
  br label %48, !dbg !1800

; <label>:30:                                     ; preds = %6
  %31 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1801
  %32 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !1802
  %33 = bitcast i8* %32 to i32*, !dbg !1802
  %34 = load i32, i32* %33, align 1, !dbg !1802, !tbaa !508
  %35 = bitcast i8* %31 to i32*, !dbg !1803
  %36 = load i32, i32* %35, align 1, !dbg !1803, !tbaa !508
  %37 = sub i32 %34, %36, !dbg !1804
  %38 = zext i32 %37 to i64, !dbg !1805
  %39 = zext i32 %36 to i64, !dbg !1806
  br label %48, !dbg !1807

; <label>:40:                                     ; preds = %6
  %41 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !1808
  %42 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !1809
  %43 = bitcast i8* %42 to i64*, !dbg !1809
  %44 = load i64, i64* %43, align 1, !dbg !1809, !tbaa !512
  %45 = bitcast i8* %41 to i64*, !dbg !1810
  %46 = load i64, i64* %45, align 1, !dbg !1810, !tbaa !512
  %47 = sub i64 %44, %46, !dbg !1811
  br label %48, !dbg !1812

; <label>:48:                                     ; preds = %12, %20, %30, %40
  %49 = phi i64 [ %47, %40 ], [ %38, %30 ], [ %29, %20 ], [ %19, %12 ]
  %50 = phi i64 [ %46, %40 ], [ %39, %30 ], [ %28, %20 ], [ %18, %12 ], !dbg !1813
  %51 = udiv i64 %50, 10, !dbg !1814
  %52 = icmp ugt i64 %49, %51, !dbg !1815
  br i1 %52, label %53, label %55, !dbg !1816

; <label>:53:                                     ; preds = %48
  %54 = tail call i8* @sdsRemoveFreeSpace(i8* nonnull %8) #8, !dbg !1817
  store i8* %54, i8** %7, align 8, !dbg !1819, !tbaa !182
  br label %55, !dbg !1820

; <label>:55:                                     ; preds = %6, %53, %48, %1
  ret void, !dbg !1821
}

; Function Attrs: noredzone
declare dso_local i8* @sdsRemoveFreeSpace(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @tryObjectEncoding(%struct.redisObject*) local_unnamed_addr #0 !dbg !1822 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !1832
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1832
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !1833
  %5 = load i8*, i8** %4, align 8, !dbg !1833, !tbaa !182
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1835
  %7 = load i32, i32* %6, align 8, !dbg !1835
  %8 = and i32 %7, 15, !dbg !1835
  %9 = icmp eq i32 %8, 0, !dbg !1835
  br i1 %9, label %11, label %10, !dbg !1835

; <label>:10:                                     ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 440) #8, !dbg !1835
  tail call void @_exit(i32 1) #9, !dbg !1835
  unreachable, !dbg !1835

; <label>:11:                                     ; preds = %1
  %12 = lshr i32 %7, 4, !dbg !1836
  %13 = trunc i32 %12 to i4, !dbg !1836
  switch i4 %13, label %168 [
    i4 0, label %14
    i4 -8, label %14
  ], !dbg !1836

; <label>:14:                                     ; preds = %11, %11
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !1838
  %16 = load i32, i32* %15, align 4, !dbg !1838, !tbaa !190
  %17 = icmp sgt i32 %16, 1, !dbg !1840
  br i1 %17, label %168, label %18, !dbg !1841

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1844
  %20 = load i8, i8* %19, align 1, !dbg !1844, !tbaa !290
  %21 = trunc i8 %20 to i3, !dbg !1846
  switch i3 %21, label %46 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !1846

; <label>:22:                                     ; preds = %18
  %23 = lshr i8 %20, 3, !dbg !1847
  %24 = zext i8 %23 to i64, !dbg !1847
  br label %43, !dbg !1848

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1849
  %27 = load i8, i8* %26, align 1, !dbg !1850, !tbaa !290
  %28 = zext i8 %27 to i64, !dbg !1849
  br label %43, !dbg !1851

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1852
  %31 = bitcast i8* %30 to i16*, !dbg !1853
  %32 = load i16, i16* %31, align 1, !dbg !1853, !tbaa !503
  %33 = zext i16 %32 to i64, !dbg !1852
  br label %43, !dbg !1854

; <label>:34:                                     ; preds = %18
  %35 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1855
  %36 = bitcast i8* %35 to i32*, !dbg !1856
  %37 = load i32, i32* %36, align 1, !dbg !1856, !tbaa !508
  %38 = zext i32 %37 to i64, !dbg !1855
  br label %43, !dbg !1857

; <label>:39:                                     ; preds = %18
  %40 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !1858
  %41 = bitcast i8* %40 to i64*, !dbg !1859
  %42 = load i64, i64* %41, align 1, !dbg !1859, !tbaa !512
  br label %43, !dbg !1860

; <label>:43:                                     ; preds = %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], !dbg !1861
  %45 = icmp ult i64 %44, 21, !dbg !1863
  br i1 %45, label %46, label %88, !dbg !1865

; <label>:46:                                     ; preds = %18, %43
  %47 = phi i64 [ %44, %43 ], [ 0, %18 ]
  %48 = call i32 @string2l(i8* nonnull %5, i64 %47, i64* nonnull %2) #8, !dbg !1867
  %49 = icmp eq i32 %48, 0, !dbg !1867
  br i1 %49, label %50, label %52, !dbg !1868

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %6, align 8, !dbg !1869
  br label %90, !dbg !1868

; <label>:52:                                     ; preds = %46
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1871, !tbaa !366
  %54 = icmp eq i64 %53, 0, !dbg !1874
  br i1 %54, label %62, label %55, !dbg !1875

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !1876, !tbaa !193
  %57 = and i32 %56, 3, !dbg !1877
  %58 = icmp eq i32 %57, 0, !dbg !1877
  %59 = load i64, i64* %2, align 8, !dbg !1878
  %60 = icmp ult i64 %59, 10000, !dbg !1879
  %61 = and i1 %60, %58, !dbg !1879
  br i1 %61, label %65, label %74, !dbg !1879

; <label>:62:                                     ; preds = %52
  %63 = load i64, i64* %2, align 8, !dbg !1878, !tbaa !512
  %64 = icmp ult i64 %63, 10000, !dbg !1880
  br i1 %64, label %65, label %74, !dbg !1880

; <label>:65:                                     ; preds = %62, %55
  call void @decrRefCount(%struct.redisObject* nonnull %0) #11, !dbg !1881
  %66 = load i64, i64* %2, align 8, !dbg !1883, !tbaa !512
  %67 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 47, i64 %66, !dbg !1884
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !1884, !tbaa !297
  %69 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %68, i64 0, i32 1, !dbg !1887
  %70 = load i32, i32* %69, align 4, !dbg !1887, !tbaa !190
  %71 = icmp eq i32 %70, 2147483647, !dbg !1888
  br i1 %71, label %168, label %72, !dbg !1889

; <label>:72:                                     ; preds = %65
  %73 = add nsw i32 %70, 1, !dbg !1890
  store i32 %73, i32* %69, align 4, !dbg !1890, !tbaa !190
  br label %168, !dbg !1891

; <label>:74:                                     ; preds = %55, %62
  %75 = load i32, i32* %6, align 8, !dbg !1892
  %76 = lshr i32 %75, 4, !dbg !1892
  %77 = trunc i32 %76 to i4, !dbg !1895
  switch i4 %77, label %90 [
    i4 0, label %78
    i4 -8, label %85
  ], !dbg !1895

; <label>:78:                                     ; preds = %74
  %79 = load i8*, i8** %4, align 8, !dbg !1896, !tbaa !182
  call void @sdsfree(i8* %79) #8, !dbg !1898
  %80 = load i32, i32* %6, align 8, !dbg !1899
  %81 = and i32 %80, -241, !dbg !1899
  %82 = or i32 %81, 16, !dbg !1899
  store i32 %82, i32* %6, align 8, !dbg !1899
  %83 = load i64, i64* %2, align 8, !dbg !1900, !tbaa !512
  %84 = bitcast i8** %4 to i64*, !dbg !1901
  store i64 %83, i64* %84, align 8, !dbg !1901, !tbaa !182
  br label %168, !dbg !1902

; <label>:85:                                     ; preds = %74
  call void @decrRefCount(%struct.redisObject* nonnull %0) #11, !dbg !1903
  %86 = load i64, i64* %2, align 8, !dbg !1906, !tbaa !512
  %87 = call %struct.redisObject* @createStringObjectFromLongLongWithOptions(i64 %86, i32 1) #8, !dbg !1909
  br label %168, !dbg !1910

; <label>:88:                                     ; preds = %43
  %89 = icmp ult i64 %44, 45, !dbg !1911
  br i1 %89, label %90, label %121, !dbg !1912

; <label>:90:                                     ; preds = %50, %74, %88
  %91 = phi i32 [ %51, %50 ], [ %75, %74 ], [ %7, %88 ], !dbg !1869
  %92 = and i32 %91, 240, !dbg !1869
  %93 = icmp eq i32 %92, 128, !dbg !1913
  br i1 %93, label %168, label %94, !dbg !1914

; <label>:94:                                     ; preds = %90
  %95 = load i8, i8* %19, align 1, !dbg !1917, !tbaa !290
  %96 = trunc i8 %95 to i3, !dbg !1919
  switch i3 %96, label %118 [
    i3 0, label %97
    i3 1, label %100
    i3 2, label %104
    i3 3, label %109
    i3 -4, label %114
  ], !dbg !1919

; <label>:97:                                     ; preds = %94
  %98 = lshr i8 %95, 3, !dbg !1920
  %99 = zext i8 %98 to i64, !dbg !1920
  br label %118, !dbg !1921

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1922
  %102 = load i8, i8* %101, align 1, !dbg !1923, !tbaa !290
  %103 = zext i8 %102 to i64, !dbg !1922
  br label %118, !dbg !1924

; <label>:104:                                    ; preds = %94
  %105 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1925
  %106 = bitcast i8* %105 to i16*, !dbg !1926
  %107 = load i16, i16* %106, align 1, !dbg !1926, !tbaa !503
  %108 = zext i16 %107 to i64, !dbg !1925
  br label %118, !dbg !1927

; <label>:109:                                    ; preds = %94
  %110 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1928
  %111 = bitcast i8* %110 to i32*, !dbg !1929
  %112 = load i32, i32* %111, align 1, !dbg !1929, !tbaa !508
  %113 = zext i32 %112 to i64, !dbg !1928
  br label %118, !dbg !1930

; <label>:114:                                    ; preds = %94
  %115 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !1931
  %116 = bitcast i8* %115 to i64*, !dbg !1932
  %117 = load i64, i64* %116, align 1, !dbg !1932, !tbaa !512
  br label %118, !dbg !1933

; <label>:118:                                    ; preds = %94, %97, %100, %104, %109, %114
  %119 = phi i64 [ %117, %114 ], [ %113, %109 ], [ %108, %104 ], [ %103, %100 ], [ %99, %97 ], [ 0, %94 ], !dbg !1934
  %120 = call %struct.redisObject* @createEmbeddedStringObject(i8* nonnull %5, i64 %119) #11, !dbg !1935
  call void @decrRefCount(%struct.redisObject* nonnull %0) #11, !dbg !1937
  br label %168, !dbg !1938

; <label>:121:                                    ; preds = %88
  %122 = and i32 %7, 240, !dbg !1941
  %123 = icmp eq i32 %122, 0, !dbg !1942
  br i1 %123, label %124, label %168, !dbg !1943

; <label>:124:                                    ; preds = %121
  switch i3 %21, label %168 [
    i3 -4, label %153
    i3 1, label %125
    i3 2, label %133
    i3 3, label %143
  ], !dbg !1947

; <label>:125:                                    ; preds = %124
  %126 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1948
  %127 = getelementptr inbounds i8, i8* %5, i64 -2, !dbg !1949
  %128 = load i8, i8* %127, align 1, !dbg !1949, !tbaa !290
  %129 = zext i8 %128 to i64, !dbg !1950
  %130 = load i8, i8* %126, align 1, !dbg !1951, !tbaa !290
  %131 = zext i8 %130 to i64, !dbg !1952
  %132 = sub nsw i64 %129, %131, !dbg !1953
  br label %161, !dbg !1957

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1958
  %135 = getelementptr inbounds i8, i8* %5, i64 -3, !dbg !1959
  %136 = bitcast i8* %135 to i16*, !dbg !1959
  %137 = load i16, i16* %136, align 1, !dbg !1959, !tbaa !503
  %138 = zext i16 %137 to i64, !dbg !1960
  %139 = bitcast i8* %134 to i16*, !dbg !1961
  %140 = load i16, i16* %139, align 1, !dbg !1961, !tbaa !503
  %141 = zext i16 %140 to i64, !dbg !1962
  %142 = sub nsw i64 %138, %141, !dbg !1963
  br label %161, !dbg !1964

; <label>:143:                                    ; preds = %124
  %144 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1965
  %145 = getelementptr inbounds i8, i8* %5, i64 -5, !dbg !1966
  %146 = bitcast i8* %145 to i32*, !dbg !1966
  %147 = load i32, i32* %146, align 1, !dbg !1966, !tbaa !508
  %148 = bitcast i8* %144 to i32*, !dbg !1967
  %149 = load i32, i32* %148, align 1, !dbg !1967, !tbaa !508
  %150 = sub i32 %147, %149, !dbg !1968
  %151 = zext i32 %150 to i64, !dbg !1969
  %152 = zext i32 %149 to i64, !dbg !1970
  br label %161, !dbg !1971

; <label>:153:                                    ; preds = %124
  %154 = getelementptr inbounds i8, i8* %5, i64 -17, !dbg !1972
  %155 = getelementptr inbounds i8, i8* %5, i64 -9, !dbg !1973
  %156 = bitcast i8* %155 to i64*, !dbg !1973
  %157 = load i64, i64* %156, align 1, !dbg !1973, !tbaa !512
  %158 = bitcast i8* %154 to i64*, !dbg !1974
  %159 = load i64, i64* %158, align 1, !dbg !1974, !tbaa !512
  %160 = sub i64 %157, %159, !dbg !1975
  br label %161, !dbg !1976

; <label>:161:                                    ; preds = %153, %143, %133, %125
  %162 = phi i64 [ %160, %153 ], [ %151, %143 ], [ %142, %133 ], [ %132, %125 ]
  %163 = phi i64 [ %159, %153 ], [ %152, %143 ], [ %141, %133 ], [ %131, %125 ], !dbg !1977
  %164 = udiv i64 %163, 10, !dbg !1978
  %165 = icmp ugt i64 %162, %164, !dbg !1979
  br i1 %165, label %166, label %168, !dbg !1980

; <label>:166:                                    ; preds = %161
  %167 = tail call i8* @sdsRemoveFreeSpace(i8* nonnull %5) #8, !dbg !1981
  store i8* %167, i8** %4, align 8, !dbg !1982, !tbaa !182
  br label %168, !dbg !1983

; <label>:168:                                    ; preds = %166, %161, %124, %121, %72, %65, %118, %90, %14, %11, %85, %78
  %169 = phi %struct.redisObject* [ %0, %78 ], [ %87, %85 ], [ %0, %11 ], [ %0, %14 ], [ %120, %118 ], [ %0, %90 ], [ %68, %65 ], [ %68, %72 ], [ %0, %121 ], [ %0, %124 ], [ %0, %161 ], [ %0, %166 ], !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10, !dbg !1985
  ret %struct.redisObject* %169, !dbg !1985
}

; Function Attrs: noredzone
declare dso_local i32 @string2l(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #0 !dbg !1986 {
  %2 = alloca [32 x i8], align 16
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !1995
  %4 = load i32, i32* %3, align 8, !dbg !1995
  %5 = lshr i32 %4, 4, !dbg !1995
  %6 = trunc i32 %5 to i4, !dbg !1995
  switch i4 %6, label %13 [
    i4 0, label %7
    i4 -8, label %7
  ], !dbg !1995

; <label>:7:                                      ; preds = %1, %1
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 1, !dbg !2000
  %9 = load i32, i32* %8, align 4, !dbg !2000, !tbaa !190
  %10 = icmp eq i32 %9, 2147483647, !dbg !2001
  br i1 %10, label %25, label %11, !dbg !2002

; <label>:11:                                     ; preds = %7
  %12 = add nsw i32 %9, 1, !dbg !2003
  store i32 %12, i32* %8, align 4, !dbg !2003, !tbaa !190
  br label %25, !dbg !2004

; <label>:13:                                     ; preds = %1
  %14 = and i32 %4, 255, !dbg !2005
  %15 = icmp eq i32 %14, 16, !dbg !2005
  br i1 %15, label %16, label %24, !dbg !2005

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #10, !dbg !2006
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2008
  %19 = bitcast i8** %18 to i64*, !dbg !2008
  %20 = load i64, i64* %19, align 8, !dbg !2008, !tbaa !182
  %21 = call i32 @ll2string(i8* nonnull %17, i64 32, i64 %20) #8, !dbg !2009
  %22 = call i64 @strlen(i8* nonnull %17) #8, !dbg !2010
  %23 = call %struct.redisObject* @createStringObject(i8* nonnull %17, i64 %22) #11, !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #10, !dbg !2013
  br label %25

; <label>:24:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !2014
  tail call void @_exit(i32 1) #9, !dbg !2014
  unreachable, !dbg !2014

; <label>:25:                                     ; preds = %11, %7, %16
  %26 = phi %struct.redisObject* [ %23, %16 ], [ %0, %7 ], [ %0, %11 ], !dbg !2016
  ret %struct.redisObject* %26, !dbg !2017
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @compareStringObjectsWithFlags(%struct.redisObject*, %struct.redisObject* readonly, i32) local_unnamed_addr #0 !dbg !2018 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2041
  %7 = load i32, i32* %6, align 8, !dbg !2041
  %8 = and i32 %7, 15, !dbg !2041
  %9 = icmp eq i32 %8, 0, !dbg !2041
  br i1 %9, label %10, label %15, !dbg !2041

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2041
  %12 = load i32, i32* %11, align 8, !dbg !2041
  %13 = and i32 %12, 15, !dbg !2041
  %14 = icmp eq i32 %13, 0, !dbg !2041
  br i1 %14, label %16, label %15, !dbg !2041

; <label>:15:                                     ; preds = %10, %3
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 542) #8, !dbg !2041
  tail call void @_exit(i32 1) #9, !dbg !2041
  unreachable, !dbg !2041

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %17) #10, !dbg !2042
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %18) #10, !dbg !2042
  %19 = icmp eq %struct.redisObject* %0, %1, !dbg !2045
  br i1 %19, label %111, label %20, !dbg !2047

; <label>:20:                                     ; preds = %16
  %21 = lshr i32 %7, 4, !dbg !2048
  %22 = trunc i32 %21 to i4, !dbg !2048
  switch i4 %22, label %50 [
    i4 0, label %23
    i4 -8, label %23
  ], !dbg !2048

; <label>:23:                                     ; preds = %20, %20
  %24 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2050
  %25 = load i8*, i8** %24, align 8, !dbg !2050, !tbaa !182
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !2055
  %27 = load i8, i8* %26, align 1, !dbg !2055, !tbaa !290
  %28 = trunc i8 %27 to i3, !dbg !2057
  switch i3 %28, label %57 [
    i3 0, label %29
    i3 1, label %32
    i3 2, label %36
    i3 3, label %41
    i3 -4, label %46
  ], !dbg !2057

; <label>:29:                                     ; preds = %23
  %30 = lshr i8 %27, 3, !dbg !2058
  %31 = zext i8 %30 to i64, !dbg !2058
  br label %57, !dbg !2059

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !2060
  %34 = load i8, i8* %33, align 1, !dbg !2061, !tbaa !290
  %35 = zext i8 %34 to i64, !dbg !2060
  br label %57, !dbg !2062

; <label>:36:                                     ; preds = %23
  %37 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !2063
  %38 = bitcast i8* %37 to i16*, !dbg !2064
  %39 = load i16, i16* %38, align 1, !dbg !2064, !tbaa !503
  %40 = zext i16 %39 to i64, !dbg !2063
  br label %57, !dbg !2065

; <label>:41:                                     ; preds = %23
  %42 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !2066
  %43 = bitcast i8* %42 to i32*, !dbg !2067
  %44 = load i32, i32* %43, align 1, !dbg !2067, !tbaa !508
  %45 = zext i32 %44 to i64, !dbg !2066
  br label %57, !dbg !2068

; <label>:46:                                     ; preds = %23
  %47 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !2069
  %48 = bitcast i8* %47 to i64*, !dbg !2070
  %49 = load i64, i64* %48, align 1, !dbg !2070, !tbaa !512
  br label %57, !dbg !2071

; <label>:50:                                     ; preds = %20
  %51 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2072
  %52 = bitcast i8** %51 to i64*, !dbg !2072
  %53 = load i64, i64* %52, align 8, !dbg !2072, !tbaa !182
  %54 = call i32 @ll2string(i8* nonnull %17, i64 128, i64 %53) #8, !dbg !2074
  %55 = sext i32 %54 to i64, !dbg !2074
  %56 = load i32, i32* %11, align 8, !dbg !2076
  br label %57

; <label>:57:                                     ; preds = %46, %41, %36, %32, %29, %23, %50
  %58 = phi i32 [ %56, %50 ], [ %12, %46 ], [ %12, %41 ], [ %12, %36 ], [ %12, %32 ], [ %12, %29 ], [ %12, %23 ], !dbg !2076
  %59 = phi i64 [ %55, %50 ], [ %49, %46 ], [ %45, %41 ], [ %40, %36 ], [ %35, %32 ], [ %31, %29 ], [ 0, %23 ], !dbg !2078
  %60 = phi i8* [ %17, %50 ], [ %25, %46 ], [ %25, %41 ], [ %25, %36 ], [ %25, %32 ], [ %25, %29 ], [ %25, %23 ], !dbg !2078
  %61 = lshr i32 %58, 4, !dbg !2076
  %62 = trunc i32 %61 to i4, !dbg !2076
  switch i4 %62, label %90 [
    i4 0, label %63
    i4 -8, label %63
  ], !dbg !2076

; <label>:63:                                     ; preds = %57, %57
  %64 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2079
  %65 = load i8*, i8** %64, align 8, !dbg !2079, !tbaa !182
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !2084
  %67 = load i8, i8* %66, align 1, !dbg !2084, !tbaa !290
  %68 = trunc i8 %67 to i3, !dbg !2086
  switch i3 %68, label %96 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !2086

; <label>:69:                                     ; preds = %63
  %70 = lshr i8 %67, 3, !dbg !2087
  %71 = zext i8 %70 to i64, !dbg !2087
  br label %96, !dbg !2088

; <label>:72:                                     ; preds = %63
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !2089
  %74 = load i8, i8* %73, align 1, !dbg !2090, !tbaa !290
  %75 = zext i8 %74 to i64, !dbg !2089
  br label %96, !dbg !2091

; <label>:76:                                     ; preds = %63
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !2092
  %78 = bitcast i8* %77 to i16*, !dbg !2093
  %79 = load i16, i16* %78, align 1, !dbg !2093, !tbaa !503
  %80 = zext i16 %79 to i64, !dbg !2092
  br label %96, !dbg !2094

; <label>:81:                                     ; preds = %63
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !2095
  %83 = bitcast i8* %82 to i32*, !dbg !2096
  %84 = load i32, i32* %83, align 1, !dbg !2096, !tbaa !508
  %85 = zext i32 %84 to i64, !dbg !2095
  br label %96, !dbg !2097

; <label>:86:                                     ; preds = %63
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !2098
  %88 = bitcast i8* %87 to i64*, !dbg !2099
  %89 = load i64, i64* %88, align 1, !dbg !2099, !tbaa !512
  br label %96, !dbg !2100

; <label>:90:                                     ; preds = %57
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2101
  %92 = bitcast i8** %91 to i64*, !dbg !2101
  %93 = load i64, i64* %92, align 8, !dbg !2101, !tbaa !182
  %94 = call i32 @ll2string(i8* nonnull %18, i64 128, i64 %93) #8, !dbg !2103
  %95 = sext i32 %94 to i64, !dbg !2103
  br label %96

; <label>:96:                                     ; preds = %86, %81, %76, %72, %69, %63, %90
  %97 = phi i8* [ %18, %90 ], [ %65, %63 ], [ %65, %69 ], [ %65, %72 ], [ %65, %76 ], [ %65, %81 ], [ %65, %86 ], !dbg !2105
  %98 = phi i64 [ %95, %90 ], [ 0, %63 ], [ %71, %69 ], [ %75, %72 ], [ %80, %76 ], [ %85, %81 ], [ %89, %86 ], !dbg !2105
  %99 = and i32 %2, 2, !dbg !2106
  %100 = icmp eq i32 %99, 0, !dbg !2106
  br i1 %100, label %103, label %101, !dbg !2107

; <label>:101:                                    ; preds = %96
  %102 = call i32 @strcoll(i8* %60, i8* %97) #8, !dbg !2108
  br label %111, !dbg !2110

; <label>:103:                                    ; preds = %96
  %104 = icmp ult i64 %59, %98, !dbg !2111
  %105 = select i1 %104, i64 %59, i64 %98, !dbg !2112
  %106 = call i32 @memcmp(i8* %60, i8* %97, i64 %105) #8, !dbg !2114
  %107 = icmp eq i32 %106, 0, !dbg !2116
  %108 = sub i64 %59, %98, !dbg !2118
  %109 = trunc i64 %108 to i32, !dbg !2119
  %110 = select i1 %107, i32 %109, i32 %106, !dbg !2120
  br label %111, !dbg !2120

; <label>:111:                                    ; preds = %103, %16, %101
  %112 = phi i32 [ %102, %101 ], [ 0, %16 ], [ %110, %103 ], !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %18) #10, !dbg !2122
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %17) #10, !dbg !2122
  ret i32 %112, !dbg !2122
}

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @compareStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2123 {
  %3 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* %0, %struct.redisObject* %1, i32 1) #11, !dbg !2131
  ret i32 %3, !dbg !2132
}

; Function Attrs: noredzone nounwind
define dso_local i32 @collateStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2133 {
  %3 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* %0, %struct.redisObject* %1, i32 2) #11, !dbg !2139
  ret i32 %3, !dbg !2140
}

; Function Attrs: noredzone nounwind
define dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject* readonly) local_unnamed_addr #0 !dbg !2141 {
  %3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2147
  %4 = load i32, i32* %3, align 8, !dbg !2147
  %5 = and i32 %4, 240, !dbg !2147
  %6 = icmp eq i32 %5, 16, !dbg !2149
  br i1 %6, label %7, label %18, !dbg !2150

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2151
  %9 = load i32, i32* %8, align 8, !dbg !2151
  %10 = and i32 %9, 240, !dbg !2151
  %11 = icmp eq i32 %10, 16, !dbg !2152
  br i1 %11, label %12, label %18, !dbg !2153

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2154
  %14 = load i8*, i8** %13, align 8, !dbg !2154, !tbaa !182
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2156
  %16 = load i8*, i8** %15, align 8, !dbg !2156, !tbaa !182
  %17 = icmp eq i8* %14, %16, !dbg !2157
  br label %21, !dbg !2158

; <label>:18:                                     ; preds = %7, %2
  %19 = tail call i32 @compareStringObjectsWithFlags(%struct.redisObject* nonnull %0, %struct.redisObject* %1, i32 1) #8, !dbg !2163
  %20 = icmp eq i32 %19, 0, !dbg !2164
  br label %21, !dbg !2165

; <label>:21:                                     ; preds = %18, %12
  %22 = phi i1 [ %17, %12 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32, !dbg !2166
  ret i32 %23, !dbg !2167
}

; Function Attrs: noredzone nounwind
define dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #0 !dbg !2168 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2174
  %3 = load i32, i32* %2, align 8, !dbg !2174
  %4 = and i32 %3, 15, !dbg !2174
  %5 = icmp eq i32 %4, 0, !dbg !2174
  br i1 %5, label %7, label %6, !dbg !2174

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 599) #8, !dbg !2174
  tail call void @_exit(i32 1) #9, !dbg !2174
  unreachable, !dbg !2174

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !2175
  %9 = trunc i32 %8 to i4, !dbg !2175
  switch i4 %9, label %37 [
    i4 0, label %10
    i4 -8, label %10
  ], !dbg !2175

; <label>:10:                                     ; preds = %7, %7
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2177
  %12 = load i8*, i8** %11, align 8, !dbg !2177, !tbaa !182
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !2181
  %14 = load i8, i8* %13, align 1, !dbg !2181, !tbaa !290
  %15 = trunc i8 %14 to i3, !dbg !2183
  switch i3 %15, label %43 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !2183

; <label>:16:                                     ; preds = %10
  %17 = lshr i8 %14, 3, !dbg !2184
  %18 = zext i8 %17 to i64, !dbg !2184
  br label %43, !dbg !2185

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !2186
  %21 = load i8, i8* %20, align 1, !dbg !2187, !tbaa !290
  %22 = zext i8 %21 to i64, !dbg !2186
  br label %43, !dbg !2188

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !2189
  %25 = bitcast i8* %24 to i16*, !dbg !2190
  %26 = load i16, i16* %25, align 1, !dbg !2190, !tbaa !503
  %27 = zext i16 %26 to i64, !dbg !2189
  br label %43, !dbg !2191

; <label>:28:                                     ; preds = %10
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !2192
  %30 = bitcast i8* %29 to i32*, !dbg !2193
  %31 = load i32, i32* %30, align 1, !dbg !2193, !tbaa !508
  %32 = zext i32 %31 to i64, !dbg !2192
  br label %43, !dbg !2194

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !2195
  %35 = bitcast i8* %34 to i64*, !dbg !2196
  %36 = load i64, i64* %35, align 1, !dbg !2196, !tbaa !512
  br label %43, !dbg !2197

; <label>:37:                                     ; preds = %7
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2198
  %39 = bitcast i8** %38 to i64*, !dbg !2198
  %40 = load i64, i64* %39, align 8, !dbg !2198, !tbaa !182
  %41 = tail call i32 @sdigits10(i64 %40) #8, !dbg !2200
  %42 = zext i32 %41 to i64, !dbg !2200
  br label %43, !dbg !2201

; <label>:43:                                     ; preds = %33, %28, %23, %19, %16, %10, %37
  %44 = phi i64 [ %42, %37 ], [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %10 ], !dbg !2202
  ret i64 %44, !dbg !2203
}

; Function Attrs: noredzone
declare dso_local i32 @sdigits10(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getDoubleFromObject(%struct.redisObject*, double* nocapture) local_unnamed_addr #0 !dbg !2204 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2215
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2216
  br i1 %5, label %109, label %6, !dbg !2218

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2219
  %8 = load i32, i32* %7, align 8, !dbg !2219
  %9 = and i32 %8, 15, !dbg !2219
  %10 = icmp eq i32 %9, 0, !dbg !2219
  br i1 %10, label %12, label %11, !dbg !2219

; <label>:11:                                     ; preds = %6
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 614) #8, !dbg !2219
  tail call void @_exit(i32 1) #9, !dbg !2219
  unreachable, !dbg !2219

; <label>:12:                                     ; preds = %6
  %13 = lshr i32 %8, 4, !dbg !2221
  %14 = trunc i32 %13 to i4, !dbg !2221
  switch i4 %14, label %108 [
    i4 0, label %15
    i4 -8, label %15
    i4 1, label %103
  ], !dbg !2221

; <label>:15:                                     ; preds = %12, %12
  %16 = tail call i32* @__errno() #8, !dbg !2223
  store i32 0, i32* %16, align 4, !dbg !2225, !tbaa !508
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2226
  %18 = load i8*, i8** %17, align 8, !dbg !2226, !tbaa !182
  %19 = call double @strtod(i8* %18, i8** nonnull %3) #8, !dbg !2228
  %20 = load i8*, i8** %17, align 8, !dbg !2230, !tbaa !182
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !2234
  %22 = load i8, i8* %21, align 1, !dbg !2234, !tbaa !290
  %23 = trunc i8 %22 to i3, !dbg !2236
  switch i3 %23, label %111 [
    i3 0, label %24
    i3 1, label %27
    i3 2, label %31
    i3 3, label %36
    i3 -4, label %41
  ], !dbg !2236

; <label>:24:                                     ; preds = %15
  %25 = lshr i8 %22, 3, !dbg !2237
  %26 = zext i8 %25 to i64, !dbg !2237
  br label %45, !dbg !2238

; <label>:27:                                     ; preds = %15
  %28 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !2239
  %29 = load i8, i8* %28, align 1, !dbg !2240, !tbaa !290
  %30 = zext i8 %29 to i64, !dbg !2239
  br label %45, !dbg !2241

; <label>:31:                                     ; preds = %15
  %32 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !2242
  %33 = bitcast i8* %32 to i16*, !dbg !2243
  %34 = load i16, i16* %33, align 1, !dbg !2243, !tbaa !503
  %35 = zext i16 %34 to i64, !dbg !2242
  br label %45, !dbg !2244

; <label>:36:                                     ; preds = %15
  %37 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !2245
  %38 = bitcast i8* %37 to i32*, !dbg !2246
  %39 = load i32, i32* %38, align 1, !dbg !2246, !tbaa !508
  %40 = zext i32 %39 to i64, !dbg !2245
  br label %45, !dbg !2247

; <label>:41:                                     ; preds = %15
  %42 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !2248
  %43 = bitcast i8* %42 to i64*, !dbg !2249
  %44 = load i64, i64* %43, align 1, !dbg !2249, !tbaa !512
  br label %45, !dbg !2250

; <label>:45:                                     ; preds = %24, %27, %31, %36, %41
  %46 = phi i64 [ %44, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %27 ], [ %26, %24 ], !dbg !2251
  %47 = icmp eq i64 %46, 0, !dbg !2252
  br i1 %47, label %111, label %48, !dbg !2253

; <label>:48:                                     ; preds = %45
  %49 = call i8* @__locale_ctype_ptr() #8, !dbg !2254
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !2254
  %51 = load i8*, i8** %17, align 8, !dbg !2254, !tbaa !182
  %52 = load i8, i8* %51, align 1, !dbg !2254, !tbaa !290
  %53 = sext i8 %52 to i64, !dbg !2254
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !2254
  %55 = load i8, i8* %54, align 1, !dbg !2254, !tbaa !290
  %56 = and i8 %55, 8, !dbg !2254
  %57 = icmp eq i8 %56, 0, !dbg !2254
  br i1 %57, label %58, label %111, !dbg !2255

; <label>:58:                                     ; preds = %48
  %59 = bitcast i8** %3 to i64*, !dbg !2256
  %60 = load i64, i64* %59, align 8, !dbg !2256, !tbaa !297
  %61 = ptrtoint i8* %51 to i64, !dbg !2257
  %62 = sub i64 %60, %61, !dbg !2257
  %63 = getelementptr inbounds i8, i8* %51, i64 -1, !dbg !2260
  %64 = load i8, i8* %63, align 1, !dbg !2260, !tbaa !290
  %65 = trunc i8 %64 to i3, !dbg !2262
  switch i3 %65, label %87 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !2262

; <label>:66:                                     ; preds = %58
  %67 = lshr i8 %64, 3, !dbg !2263
  %68 = zext i8 %67 to i64, !dbg !2263
  br label %87, !dbg !2264

; <label>:69:                                     ; preds = %58
  %70 = getelementptr inbounds i8, i8* %51, i64 -3, !dbg !2265
  %71 = load i8, i8* %70, align 1, !dbg !2266, !tbaa !290
  %72 = zext i8 %71 to i64, !dbg !2265
  br label %87, !dbg !2267

; <label>:73:                                     ; preds = %58
  %74 = getelementptr inbounds i8, i8* %51, i64 -5, !dbg !2268
  %75 = bitcast i8* %74 to i16*, !dbg !2269
  %76 = load i16, i16* %75, align 1, !dbg !2269, !tbaa !503
  %77 = zext i16 %76 to i64, !dbg !2268
  br label %87, !dbg !2270

; <label>:78:                                     ; preds = %58
  %79 = getelementptr inbounds i8, i8* %51, i64 -9, !dbg !2271
  %80 = bitcast i8* %79 to i32*, !dbg !2272
  %81 = load i32, i32* %80, align 1, !dbg !2272, !tbaa !508
  %82 = zext i32 %81 to i64, !dbg !2271
  br label %87, !dbg !2273

; <label>:83:                                     ; preds = %58
  %84 = getelementptr inbounds i8, i8* %51, i64 -17, !dbg !2274
  %85 = bitcast i8* %84 to i64*, !dbg !2275
  %86 = load i64, i64* %85, align 1, !dbg !2275, !tbaa !512
  br label %87, !dbg !2276

; <label>:87:                                     ; preds = %58, %66, %69, %73, %78, %83
  %88 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], [ 0, %58 ], !dbg !2277
  %89 = icmp eq i64 %62, %88, !dbg !2278
  br i1 %89, label %90, label %111, !dbg !2279

; <label>:90:                                     ; preds = %87
  %91 = call i32* @__errno() #8, !dbg !2280
  %92 = load i32, i32* %91, align 4, !dbg !2280, !tbaa !508
  %93 = icmp eq i32 %92, 34, !dbg !2281
  br i1 %93, label %94, label %100, !dbg !2282

; <label>:94:                                     ; preds = %90
  %95 = fcmp oeq double %19, 0x7FF0000000000000, !dbg !2283
  %96 = fcmp oeq double %19, 0xFFF0000000000000, !dbg !2284
  %97 = or i1 %95, %96, !dbg !2285
  %98 = fcmp oeq double %19, 0.000000e+00, !dbg !2286
  %99 = or i1 %98, %97, !dbg !2285
  br i1 %99, label %111, label %100, !dbg !2285

; <label>:100:                                    ; preds = %94, %90
  %101 = call i32 @__fpclassifyd(double %19) #8, !dbg !2287
  %102 = icmp eq i32 %101, 0, !dbg !2287
  br i1 %102, label %111, label %109, !dbg !2288

; <label>:103:                                    ; preds = %12
  %104 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2289
  %105 = bitcast i8** %104 to i64*, !dbg !2289
  %106 = load i64, i64* %105, align 8, !dbg !2289, !tbaa !182
  %107 = sitofp i64 %106 to double, !dbg !2292
  br label %109

; <label>:108:                                    ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 628, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2293
  tail call void @_exit(i32 1) #9, !dbg !2293
  unreachable, !dbg !2293

; <label>:109:                                    ; preds = %2, %103, %100
  %110 = phi double [ %19, %100 ], [ %107, %103 ], [ 0.000000e+00, %2 ], !dbg !2295
  store double %110, double* %1, align 8, !dbg !2296, !tbaa !2297
  br label %111, !dbg !2298

; <label>:111:                                    ; preds = %15, %45, %94, %100, %48, %87, %109
  %112 = phi i32 [ 0, %109 ], [ -1, %87 ], [ -1, %48 ], [ -1, %100 ], [ -1, %94 ], [ -1, %45 ], [ -1, %15 ], !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2300
  ret i32 %112, !dbg !2300
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
define dso_local i32 @getDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, double* nocapture, i8*) local_unnamed_addr #0 !dbg !2301 {
  %5 = alloca double, align 8
  %6 = bitcast double* %5 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2314
  %7 = call i32 @getDoubleFromObject(%struct.redisObject* %1, double* nonnull %5) #11, !dbg !2316
  %8 = icmp eq i32 %7, 0, !dbg !2318
  br i1 %8, label %13, label %9, !dbg !2319

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2320
  br i1 %10, label %12, label %11, !dbg !2323

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* nonnull %3) #8, !dbg !2324
  br label %17, !dbg !2326

; <label>:12:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2327
  br label %17

; <label>:13:                                     ; preds = %4
  %14 = bitcast double* %5 to i64*, !dbg !2329
  %15 = load i64, i64* %14, align 8, !dbg !2329, !tbaa !2297
  %16 = bitcast double* %2 to i64*, !dbg !2330
  store i64 %15, i64* %16, align 8, !dbg !2330, !tbaa !2297
  br label %17, !dbg !2331

; <label>:17:                                     ; preds = %11, %12, %13
  %18 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2333
  ret i32 %18, !dbg !2333
}

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongDoubleFromObject(%struct.redisObject*, x86_fp80* nocapture) local_unnamed_addr #0 !dbg !2334 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*, !dbg !2345
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2345
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2346
  br i1 %5, label %110, label %6, !dbg !2348

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2349
  %8 = load i32, i32* %7, align 8, !dbg !2349
  %9 = and i32 %8, 15, !dbg !2349
  %10 = icmp eq i32 %9, 0, !dbg !2349
  br i1 %10, label %12, label %11, !dbg !2349

; <label>:11:                                     ; preds = %6
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 656) #8, !dbg !2349
  tail call void @_exit(i32 1) #9, !dbg !2349
  unreachable, !dbg !2349

; <label>:12:                                     ; preds = %6
  %13 = lshr i32 %8, 4, !dbg !2351
  %14 = trunc i32 %13 to i4, !dbg !2351
  switch i4 %14, label %109 [
    i4 0, label %15
    i4 -8, label %15
    i4 1, label %104
  ], !dbg !2351

; <label>:15:                                     ; preds = %12, %12
  %16 = tail call i32* @__errno() #8, !dbg !2353
  store i32 0, i32* %16, align 4, !dbg !2355, !tbaa !508
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2356
  %18 = load i8*, i8** %17, align 8, !dbg !2356, !tbaa !182
  %19 = call x86_fp80 @strtold(i8* %18, i8** nonnull %3) #8, !dbg !2358
  %20 = load i8*, i8** %17, align 8, !dbg !2360, !tbaa !182
  %21 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !2364
  %22 = load i8, i8* %21, align 1, !dbg !2364, !tbaa !290
  %23 = trunc i8 %22 to i3, !dbg !2366
  switch i3 %23, label %112 [
    i3 0, label %24
    i3 1, label %27
    i3 2, label %31
    i3 3, label %36
    i3 -4, label %41
  ], !dbg !2366

; <label>:24:                                     ; preds = %15
  %25 = lshr i8 %22, 3, !dbg !2367
  %26 = zext i8 %25 to i64, !dbg !2367
  br label %45, !dbg !2368

; <label>:27:                                     ; preds = %15
  %28 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !2369
  %29 = load i8, i8* %28, align 1, !dbg !2370, !tbaa !290
  %30 = zext i8 %29 to i64, !dbg !2369
  br label %45, !dbg !2371

; <label>:31:                                     ; preds = %15
  %32 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !2372
  %33 = bitcast i8* %32 to i16*, !dbg !2373
  %34 = load i16, i16* %33, align 1, !dbg !2373, !tbaa !503
  %35 = zext i16 %34 to i64, !dbg !2372
  br label %45, !dbg !2374

; <label>:36:                                     ; preds = %15
  %37 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !2375
  %38 = bitcast i8* %37 to i32*, !dbg !2376
  %39 = load i32, i32* %38, align 1, !dbg !2376, !tbaa !508
  %40 = zext i32 %39 to i64, !dbg !2375
  br label %45, !dbg !2377

; <label>:41:                                     ; preds = %15
  %42 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !2378
  %43 = bitcast i8* %42 to i64*, !dbg !2379
  %44 = load i64, i64* %43, align 1, !dbg !2379, !tbaa !512
  br label %45, !dbg !2380

; <label>:45:                                     ; preds = %24, %27, %31, %36, %41
  %46 = phi i64 [ %44, %41 ], [ %40, %36 ], [ %35, %31 ], [ %30, %27 ], [ %26, %24 ], !dbg !2381
  %47 = icmp eq i64 %46, 0, !dbg !2382
  br i1 %47, label %112, label %48, !dbg !2383

; <label>:48:                                     ; preds = %45
  %49 = call i8* @__locale_ctype_ptr() #8, !dbg !2384
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !2384
  %51 = load i8*, i8** %17, align 8, !dbg !2384, !tbaa !182
  %52 = load i8, i8* %51, align 1, !dbg !2384, !tbaa !290
  %53 = sext i8 %52 to i64, !dbg !2384
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !2384
  %55 = load i8, i8* %54, align 1, !dbg !2384, !tbaa !290
  %56 = and i8 %55, 8, !dbg !2384
  %57 = icmp eq i8 %56, 0, !dbg !2384
  br i1 %57, label %58, label %112, !dbg !2385

; <label>:58:                                     ; preds = %48
  %59 = bitcast i8** %3 to i64*, !dbg !2386
  %60 = load i64, i64* %59, align 8, !dbg !2386, !tbaa !297
  %61 = ptrtoint i8* %51 to i64, !dbg !2387
  %62 = sub i64 %60, %61, !dbg !2387
  %63 = getelementptr inbounds i8, i8* %51, i64 -1, !dbg !2390
  %64 = load i8, i8* %63, align 1, !dbg !2390, !tbaa !290
  %65 = trunc i8 %64 to i3, !dbg !2392
  switch i3 %65, label %87 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !2392

; <label>:66:                                     ; preds = %58
  %67 = lshr i8 %64, 3, !dbg !2393
  %68 = zext i8 %67 to i64, !dbg !2393
  br label %87, !dbg !2394

; <label>:69:                                     ; preds = %58
  %70 = getelementptr inbounds i8, i8* %51, i64 -3, !dbg !2395
  %71 = load i8, i8* %70, align 1, !dbg !2396, !tbaa !290
  %72 = zext i8 %71 to i64, !dbg !2395
  br label %87, !dbg !2397

; <label>:73:                                     ; preds = %58
  %74 = getelementptr inbounds i8, i8* %51, i64 -5, !dbg !2398
  %75 = bitcast i8* %74 to i16*, !dbg !2399
  %76 = load i16, i16* %75, align 1, !dbg !2399, !tbaa !503
  %77 = zext i16 %76 to i64, !dbg !2398
  br label %87, !dbg !2400

; <label>:78:                                     ; preds = %58
  %79 = getelementptr inbounds i8, i8* %51, i64 -9, !dbg !2401
  %80 = bitcast i8* %79 to i32*, !dbg !2402
  %81 = load i32, i32* %80, align 1, !dbg !2402, !tbaa !508
  %82 = zext i32 %81 to i64, !dbg !2401
  br label %87, !dbg !2403

; <label>:83:                                     ; preds = %58
  %84 = getelementptr inbounds i8, i8* %51, i64 -17, !dbg !2404
  %85 = bitcast i8* %84 to i64*, !dbg !2405
  %86 = load i64, i64* %85, align 1, !dbg !2405, !tbaa !512
  br label %87, !dbg !2406

; <label>:87:                                     ; preds = %58, %66, %69, %73, %78, %83
  %88 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], [ 0, %58 ], !dbg !2407
  %89 = icmp eq i64 %62, %88, !dbg !2408
  br i1 %89, label %90, label %112, !dbg !2409

; <label>:90:                                     ; preds = %87
  %91 = call i32* @__errno() #8, !dbg !2410
  %92 = load i32, i32* %91, align 4, !dbg !2410, !tbaa !508
  %93 = icmp eq i32 %92, 34, !dbg !2411
  br i1 %93, label %94, label %100, !dbg !2412

; <label>:94:                                     ; preds = %90
  %95 = fcmp oeq x86_fp80 %19, 0xK7FFF8000000000000000, !dbg !2413
  %96 = fcmp oeq x86_fp80 %19, 0xKFFFF8000000000000000, !dbg !2414
  %97 = or i1 %95, %96, !dbg !2415
  %98 = fcmp oeq x86_fp80 %19, 0xK00000000000000000000, !dbg !2416
  %99 = or i1 %98, %97, !dbg !2415
  br i1 %99, label %112, label %100, !dbg !2415

; <label>:100:                                    ; preds = %94, %90
  %101 = fptrunc x86_fp80 %19 to double, !dbg !2417
  %102 = call i32 @__fpclassifyd(double %101) #8, !dbg !2417
  %103 = icmp eq i32 %102, 0, !dbg !2417
  br i1 %103, label %112, label %110, !dbg !2418

; <label>:104:                                    ; preds = %12
  %105 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2419
  %106 = bitcast i8** %105 to i64*, !dbg !2419
  %107 = load i64, i64* %106, align 8, !dbg !2419, !tbaa !182
  %108 = sitofp i64 %107 to x86_fp80, !dbg !2422
  br label %110

; <label>:109:                                    ; preds = %12
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2423
  tail call void @_exit(i32 1) #9, !dbg !2423
  unreachable, !dbg !2423

; <label>:110:                                    ; preds = %2, %104, %100
  %111 = phi x86_fp80 [ %19, %100 ], [ %108, %104 ], [ 0xK00000000000000000000, %2 ], !dbg !2425
  store x86_fp80 %111, x86_fp80* %1, align 16, !dbg !2426, !tbaa !2427
  br label %112, !dbg !2429

; <label>:112:                                    ; preds = %15, %45, %94, %100, %48, %87, %110
  %113 = phi i32 [ 0, %110 ], [ -1, %87 ], [ -1, %48 ], [ -1, %100 ], [ -1, %94 ], [ -1, %45 ], [ -1, %15 ], !dbg !2430
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2431
  ret i32 %113, !dbg !2431
}

; Function Attrs: noredzone
declare dso_local x86_fp80 @strtold(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, x86_fp80* nocapture, i8*) local_unnamed_addr #0 !dbg !2432 {
  %5 = alloca x86_fp80, align 16
  %6 = bitcast x86_fp80* %5 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #10, !dbg !2445
  %7 = call i32 @getLongDoubleFromObject(%struct.redisObject* %1, x86_fp80* nonnull %5) #11, !dbg !2447
  %8 = icmp eq i32 %7, 0, !dbg !2449
  br i1 %8, label %13, label %9, !dbg !2450

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2451
  br i1 %10, label %12, label %11, !dbg !2454

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* nonnull %3) #8, !dbg !2455
  br label %15, !dbg !2457

; <label>:12:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2458
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = load x86_fp80, x86_fp80* %5, align 16, !dbg !2460, !tbaa !2427
  store x86_fp80 %14, x86_fp80* %2, align 16, !dbg !2461, !tbaa !2427
  br label %15, !dbg !2462

; <label>:15:                                     ; preds = %11, %12, %13
  %16 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #10, !dbg !2464
  ret i32 %16, !dbg !2464
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #0 !dbg !2465 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*, !dbg !2472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2472
  %5 = icmp eq %struct.redisObject* %0, null, !dbg !2473
  br i1 %5, label %6, label %7, !dbg !2475

; <label>:6:                                      ; preds = %2
  store i64 0, i64* %3, align 8, !dbg !2477, !tbaa !1726
  br label %52, !dbg !2479

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2480
  %9 = load i32, i32* %8, align 8, !dbg !2480
  %10 = and i32 %9, 15, !dbg !2480
  %11 = icmp eq i32 %10, 0, !dbg !2480
  br i1 %11, label %13, label %12, !dbg !2480

; <label>:12:                                     ; preds = %7
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 697) #8, !dbg !2480
  tail call void @_exit(i32 1) #9, !dbg !2480
  unreachable, !dbg !2480

; <label>:13:                                     ; preds = %7
  %14 = lshr i32 %9, 4, !dbg !2482
  %15 = trunc i32 %14 to i4, !dbg !2482
  switch i4 %15, label %51 [
    i4 0, label %16
    i4 -8, label %16
    i4 1, label %47
  ], !dbg !2482

; <label>:16:                                     ; preds = %13, %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2484
  %18 = load i8*, i8** %17, align 8, !dbg !2484, !tbaa !182
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !2489
  %20 = load i8, i8* %19, align 1, !dbg !2489, !tbaa !290
  %21 = trunc i8 %20 to i3, !dbg !2491
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !2491

; <label>:22:                                     ; preds = %16
  %23 = lshr i8 %20, 3, !dbg !2492
  %24 = zext i8 %23 to i64, !dbg !2492
  br label %43, !dbg !2493

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !2494
  %27 = load i8, i8* %26, align 1, !dbg !2495, !tbaa !290
  %28 = zext i8 %27 to i64, !dbg !2494
  br label %43, !dbg !2496

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !2497
  %31 = bitcast i8* %30 to i16*, !dbg !2498
  %32 = load i16, i16* %31, align 1, !dbg !2498, !tbaa !503
  %33 = zext i16 %32 to i64, !dbg !2497
  br label %43, !dbg !2499

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !2500
  %36 = bitcast i8* %35 to i32*, !dbg !2501
  %37 = load i32, i32* %36, align 1, !dbg !2501, !tbaa !508
  %38 = zext i32 %37 to i64, !dbg !2500
  br label %43, !dbg !2502

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !2503
  %41 = bitcast i8* %40 to i64*, !dbg !2504
  %42 = load i64, i64* %41, align 1, !dbg !2504, !tbaa !512
  br label %43, !dbg !2505

; <label>:43:                                     ; preds = %16, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %16 ], !dbg !2506
  %45 = call i32 @string2ll(i8* %18, i64 %44, i64* nonnull %3) #8, !dbg !2507
  %46 = icmp eq i32 %45, 0, !dbg !2508
  br i1 %46, label %56, label %52, !dbg !2509

; <label>:47:                                     ; preds = %13
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2510
  %49 = bitcast i8** %48 to i64*, !dbg !2510
  %50 = load i64, i64* %49, align 8, !dbg !2510, !tbaa !182
  store i64 %50, i64* %3, align 8, !dbg !2513, !tbaa !1726
  br label %52

; <label>:51:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 703, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2514
  tail call void @_exit(i32 1) #9, !dbg !2514
  unreachable, !dbg !2514

; <label>:52:                                     ; preds = %47, %43, %6
  %53 = icmp eq i64* %1, null, !dbg !2516
  br i1 %53, label %56, label %54, !dbg !2518

; <label>:54:                                     ; preds = %52
  %55 = load i64, i64* %3, align 8, !dbg !2519, !tbaa !1726
  store i64 %55, i64* %1, align 8, !dbg !2520, !tbaa !1726
  br label %56, !dbg !2521

; <label>:56:                                     ; preds = %54, %52, %43
  %57 = phi i32 [ -1, %43 ], [ 0, %52 ], [ 0, %54 ], !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10, !dbg !2523
  ret i32 %57, !dbg !2523
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !2524 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2537
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2537
  %7 = call i32 @getLongLongFromObject(%struct.redisObject* %1, i64* nonnull %5) #11, !dbg !2539
  %8 = icmp eq i32 %7, 0, !dbg !2541
  br i1 %8, label %13, label %9, !dbg !2542

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2543
  br i1 %10, label %12, label %11, !dbg !2546

; <label>:11:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* nonnull %3) #8, !dbg !2547
  br label %15, !dbg !2549

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2550
  br label %15

; <label>:13:                                     ; preds = %4
  %14 = load i64, i64* %5, align 8, !dbg !2552, !tbaa !1726
  store i64 %14, i64* %2, align 8, !dbg !2553, !tbaa !1726
  br label %15, !dbg !2554

; <label>:15:                                     ; preds = %11, %12, %13
  %16 = phi i32 [ 0, %13 ], [ -1, %12 ], [ -1, %11 ], !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2556
  ret i32 %16, !dbg !2556
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !2557 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2576
  %7 = call i32 @getLongLongFromObject(%struct.redisObject* %1, i64* nonnull %5) #8, !dbg !2578
  %8 = icmp eq i32 %7, 0, !dbg !2579
  br i1 %8, label %14, label %9, !dbg !2580

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %3, null, !dbg !2581
  br i1 %10, label %12, label %11, !dbg !2582

; <label>:11:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* nonnull %3) #8, !dbg !2583
  br label %13, !dbg !2584

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2585
  br label %13

; <label>:13:                                     ; preds = %12, %11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2586
  br label %16, !dbg !2587

; <label>:14:                                     ; preds = %4
  %15 = load i64, i64* %5, align 8, !dbg !2588, !tbaa !1726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #10, !dbg !2586
  store i64 %15, i64* %2, align 8, !dbg !2590, !tbaa !512
  br label %16, !dbg !2591

; <label>:16:                                     ; preds = %13, %14
  %17 = phi i32 [ 0, %14 ], [ -1, %13 ], !dbg !2592
  ret i32 %17, !dbg !2593
}

; Function Attrs: noredzone nounwind readnone
define dso_local i8* @strEncoding(i32) local_unnamed_addr #5 !dbg !2594 {
  %2 = icmp ult i32 %0, 10, !dbg !2600
  br i1 %2, label %3, label %7, !dbg !2600

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !2600
  %5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @switch.table.strEncoding, i64 0, i64 %4, !dbg !2600
  %6 = load i8*, i8** %5, align 8, !dbg !2600
  ret i8* %6, !dbg !2600

; <label>:7:                                      ; preds = %1
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), !dbg !2601
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @streamRadixTreeMemoryUsage(%struct.rax* nocapture readonly) local_unnamed_addr #6 !dbg !2602 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !2609
  %3 = load i64, i64* %2, align 8, !dbg !2609, !tbaa !2610
  %4 = shl i64 %3, 4, !dbg !2612
  %5 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2614
  %6 = load i64, i64* %5, align 8, !dbg !2614, !tbaa !2615
  %7 = mul i64 %6, 244
  %8 = add i64 %7, %4, !dbg !2616
  ret i64 %8, !dbg !2617
}

; Function Attrs: noredzone nounwind
define dso_local i64 @objectComputeSize(%struct.redisObject* nocapture readonly, i64) local_unnamed_addr #0 !dbg !2618 {
  %3 = alloca %struct.raxIterator, align 8
  %4 = alloca %struct.raxIterator, align 8
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !2732
  %6 = load i32, i32* %5, align 8, !dbg !2732
  %7 = trunc i32 %6 to i4, !dbg !2733
  switch i4 %7, label %430 [
    i4 0, label %8
    i4 1, label %47
    i4 2, label %87
    i4 3, label %147
    i4 4, label %213
    i4 6, label %271
    i4 5, label %417
  ], !dbg !2733

; <label>:8:                                      ; preds = %2
  %9 = lshr i32 %6, 4, !dbg !2734
  %10 = trunc i32 %9 to i4, !dbg !2737
  switch i4 %10, label %46 [
    i4 1, label %431
    i4 0, label %11
    i4 -8, label %16
  ], !dbg !2737

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2738
  %13 = load i8*, i8** %12, align 8, !dbg !2738, !tbaa !182
  %14 = tail call i64 @sdsAllocSize(i8* %13) #8, !dbg !2741
  %15 = add i64 %14, 16, !dbg !2742
  br label %431, !dbg !2743

; <label>:16:                                     ; preds = %8
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2744
  %18 = load i8*, i8** %17, align 8, !dbg !2744, !tbaa !182
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !2749
  %20 = load i8, i8* %19, align 1, !dbg !2749, !tbaa !290
  %21 = trunc i8 %20 to i3, !dbg !2751
  switch i3 %21, label %43 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !2751

; <label>:22:                                     ; preds = %16
  %23 = lshr i8 %20, 3, !dbg !2752
  %24 = zext i8 %23 to i64, !dbg !2752
  br label %43, !dbg !2753

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !2754
  %27 = load i8, i8* %26, align 1, !dbg !2755, !tbaa !290
  %28 = zext i8 %27 to i64, !dbg !2754
  br label %43, !dbg !2756

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !2757
  %31 = bitcast i8* %30 to i16*, !dbg !2758
  %32 = load i16, i16* %31, align 1, !dbg !2758, !tbaa !503
  %33 = zext i16 %32 to i64, !dbg !2757
  br label %43, !dbg !2759

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !2760
  %36 = bitcast i8* %35 to i32*, !dbg !2761
  %37 = load i32, i32* %36, align 1, !dbg !2761, !tbaa !508
  %38 = zext i32 %37 to i64, !dbg !2760
  br label %43, !dbg !2762

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !2763
  %41 = bitcast i8* %40 to i64*, !dbg !2764
  %42 = load i64, i64* %41, align 1, !dbg !2764, !tbaa !512
  br label %43, !dbg !2765

; <label>:43:                                     ; preds = %16, %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], [ 0, %16 ], !dbg !2766
  %45 = add i64 %44, 18, !dbg !2767
  br label %431

; <label>:46:                                     ; preds = %8
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 800, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2768
  tail call void @_exit(i32 1) #9, !dbg !2768
  unreachable, !dbg !2768

; <label>:47:                                     ; preds = %2
  %48 = lshr i32 %6, 4, !dbg !2770
  %49 = trunc i32 %48 to i4, !dbg !2771
  switch i4 %49, label %86 [
    i4 -7, label %50
    i4 5, label %81
  ], !dbg !2771

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2772
  %52 = bitcast i8** %51 to %struct.quicklist**, !dbg !2772
  %53 = load %struct.quicklist*, %struct.quicklist** %52, align 8, !dbg !2772, !tbaa !182
  %54 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %53, i64 0, i32 0, !dbg !2774
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %54, align 8, !dbg !2774, !tbaa !2775
  br label %56, !dbg !2778

; <label>:56:                                     ; preds = %56, %50
  %57 = phi %struct.quicklistNode* [ %55, %50 ], [ %67, %56 ], !dbg !2779
  %58 = phi i64 [ 0, %50 ], [ %65, %56 ], !dbg !2780
  %59 = phi i64 [ 0, %50 ], [ %64, %56 ], !dbg !2780
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %57, i64 0, i32 2, !dbg !2782
  %61 = load i8*, i8** %60, align 8, !dbg !2782, !tbaa !2783
  %62 = tail call i64 @ziplistBlobLen(i8* %61) #8, !dbg !2785
  %63 = add i64 %59, 32, !dbg !2786
  %64 = add i64 %63, %62, !dbg !2787
  %65 = add nuw i64 %58, 1, !dbg !2788
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %57, i64 0, i32 1, !dbg !2789
  %67 = load %struct.quicklistNode*, %struct.quicklistNode** %66, align 8, !dbg !2789, !tbaa !2790
  %68 = icmp ne %struct.quicklistNode* %67, null, !dbg !2791
  %69 = icmp ult i64 %65, %1, !dbg !2792
  %70 = and i1 %69, %68, !dbg !2793
  br i1 %70, label %56, label %71, !dbg !2793, !llvm.loop !2794

; <label>:71:                                     ; preds = %56
  %72 = uitofp i64 %64 to double, !dbg !2796
  %73 = uitofp i64 %65 to double, !dbg !2797
  %74 = fdiv double %72, %73, !dbg !2798
  %75 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %53, i64 0, i32 3, !dbg !2799
  %76 = load i64, i64* %75, align 8, !dbg !2799, !tbaa !2800
  %77 = uitofp i64 %76 to double, !dbg !2801
  %78 = fmul double %74, %77, !dbg !2802
  %79 = fadd double %78, 5.600000e+01, !dbg !2803
  %80 = fptoui double %79 to i64, !dbg !2803
  br label %431, !dbg !2804

; <label>:81:                                     ; preds = %47
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2805
  %83 = load i8*, i8** %82, align 8, !dbg !2805, !tbaa !182
  %84 = tail call i64 @ziplistBlobLen(i8* %83) #8, !dbg !2808
  %85 = add i64 %84, 16, !dbg !2809
  br label %431

; <label>:86:                                     ; preds = %47
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 815, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2810
  tail call void @_exit(i32 1) #9, !dbg !2810
  unreachable, !dbg !2810

; <label>:87:                                     ; preds = %2
  %88 = lshr i32 %6, 4, !dbg !2812
  %89 = trunc i32 %88 to i4, !dbg !2813
  switch i4 %89, label %146 [
    i4 2, label %90
    i4 6, label %135
  ], !dbg !2813

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2814
  %92 = bitcast i8** %91 to %struct.dict**, !dbg !2814
  %93 = load %struct.dict*, %struct.dict** %92, align 8, !dbg !2814, !tbaa !182
  %94 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %93) #8, !dbg !2817
  %95 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 0, i32 1, !dbg !2819
  %96 = load i64, i64* %95, align 8, !dbg !2819, !tbaa !2820
  %97 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 1, i32 1, !dbg !2819
  %98 = load i64, i64* %97, align 8, !dbg !2819, !tbaa !2820
  %99 = add i64 %98, %96, !dbg !2819
  %100 = shl i64 %99, 3, !dbg !2822
  %101 = add i64 %100, 112, !dbg !2823
  %102 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #8, !dbg !2824
  %103 = icmp ne %struct.dictEntry* %102, null, !dbg !2826
  %104 = icmp ne i64 %1, 0, !dbg !2827
  %105 = and i1 %104, %103, !dbg !2828
  br i1 %105, label %107, label %106, !dbg !2828

; <label>:106:                                    ; preds = %90
  tail call void @dictReleaseIterator(%struct.dictIterator* %94) #8, !dbg !2829
  br label %431, !dbg !2830

; <label>:107:                                    ; preds = %90, %107
  %108 = phi %struct.dictEntry* [ %117, %107 ], [ %102, %90 ]
  %109 = phi i64 [ %115, %107 ], [ 0, %90 ]
  %110 = phi i64 [ %116, %107 ], [ 0, %90 ]
  %111 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %108, i64 0, i32 0, !dbg !2831
  %112 = load i8*, i8** %111, align 8, !dbg !2831, !tbaa !2833
  %113 = tail call i64 @sdsAllocSize(i8* %112) #8, !dbg !2836
  %114 = add i64 %109, 24, !dbg !2837
  %115 = add i64 %114, %113, !dbg !2838
  %116 = add nuw i64 %110, 1, !dbg !2839
  %117 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %94) #8, !dbg !2824
  %118 = icmp ne %struct.dictEntry* %117, null, !dbg !2826
  %119 = icmp ult i64 %116, %1, !dbg !2827
  %120 = and i1 %119, %118, !dbg !2828
  br i1 %120, label %107, label %121, !dbg !2828, !llvm.loop !2840

; <label>:121:                                    ; preds = %107
  %122 = uitofp i64 %115 to double, !dbg !2829
  tail call void @dictReleaseIterator(%struct.dictIterator* %94) #8, !dbg !2829
  %123 = uitofp i64 %116 to double, !dbg !2843
  %124 = fdiv double %122, %123, !dbg !2845
  %125 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 0, i32 3, !dbg !2846
  %126 = load i64, i64* %125, align 8, !dbg !2846, !tbaa !2847
  %127 = getelementptr inbounds %struct.dict, %struct.dict* %93, i64 0, i32 2, i64 1, i32 3, !dbg !2846
  %128 = load i64, i64* %127, align 8, !dbg !2846, !tbaa !2847
  %129 = add i64 %128, %126, !dbg !2846
  %130 = uitofp i64 %129 to double, !dbg !2846
  %131 = fmul double %124, %130, !dbg !2848
  %132 = uitofp i64 %101 to double, !dbg !2849
  %133 = fadd double %131, %132, !dbg !2849
  %134 = fptoui double %133 to i64, !dbg !2849
  br label %431, !dbg !2850

; <label>:135:                                    ; preds = %87
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2851
  %137 = bitcast i8** %136 to %struct.intset**, !dbg !2851
  %138 = load %struct.intset*, %struct.intset** %137, align 8, !dbg !2851, !tbaa !182
  %139 = getelementptr inbounds %struct.intset, %struct.intset* %138, i64 0, i32 0, !dbg !2853
  %140 = load i32, i32* %139, align 4, !dbg !2853, !tbaa !508
  %141 = getelementptr inbounds %struct.intset, %struct.intset* %138, i64 0, i32 1, !dbg !2854
  %142 = load i32, i32* %141, align 4, !dbg !2854, !tbaa !508
  %143 = mul i32 %142, %140, !dbg !2855
  %144 = zext i32 %143 to i64, !dbg !2856
  %145 = add nuw nsw i64 %144, 24, !dbg !2857
  br label %431

; <label>:146:                                    ; preds = %87
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 833, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !2858
  tail call void @_exit(i32 1) #9, !dbg !2858
  unreachable, !dbg !2858

; <label>:147:                                    ; preds = %2
  %148 = lshr i32 %6, 4, !dbg !2860
  %149 = trunc i32 %148 to i4, !dbg !2861
  switch i4 %149, label %212 [
    i4 5, label %150
    i4 7, label %155
  ], !dbg !2861

; <label>:150:                                    ; preds = %147
  %151 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2862
  %152 = load i8*, i8** %151, align 8, !dbg !2862, !tbaa !182
  %153 = tail call i64 @ziplistBlobLen(i8* %152) #8, !dbg !2864
  %154 = add i64 %153, 16, !dbg !2865
  br label %431, !dbg !2866

; <label>:155:                                    ; preds = %147
  %156 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2867
  %157 = bitcast i8** %156 to %struct.zset**, !dbg !2867
  %158 = load %struct.zset*, %struct.zset** %157, align 8, !dbg !2867, !tbaa !182
  %159 = getelementptr inbounds %struct.zset, %struct.zset* %158, i64 0, i32 0, !dbg !2868
  %160 = load %struct.dict*, %struct.dict** %159, align 8, !dbg !2868, !tbaa !794
  %161 = getelementptr inbounds %struct.zset, %struct.zset* %158, i64 0, i32 1, !dbg !2869
  %162 = load %struct.zskiplist*, %struct.zskiplist** %161, align 8, !dbg !2869, !tbaa !799
  %163 = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %162, i64 0, i32 0, !dbg !2871
  %164 = load %struct.zskiplistNode*, %struct.zskiplistNode** %163, align 8, !dbg !2871, !tbaa !2872
  %165 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %164, i64 0, i32 3, i64 0, i32 0, !dbg !2874
  %166 = load %struct.zskiplistNode*, %struct.zskiplistNode** %165, align 8, !dbg !2874, !tbaa !2875
  %167 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 0, i32 1, !dbg !2878
  %168 = load i64, i64* %167, align 8, !dbg !2878, !tbaa !2820
  %169 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 1, i32 1, !dbg !2878
  %170 = load i64, i64* %169, align 8, !dbg !2878, !tbaa !2820
  %171 = add i64 %170, %168, !dbg !2878
  %172 = shl i64 %171, 3, !dbg !2879
  %173 = bitcast %struct.zskiplistNode* %164 to i8*, !dbg !2880
  %174 = tail call i64 @zmalloc_size(i8* %173) #8, !dbg !2881
  %175 = add i64 %174, 160, !dbg !2882
  %176 = add i64 %175, %172, !dbg !2883
  %177 = icmp ne %struct.zskiplistNode* %166, null, !dbg !2884
  %178 = icmp ne i64 %1, 0, !dbg !2885
  %179 = and i1 %178, %177, !dbg !2886
  br i1 %179, label %180, label %431, !dbg !2886

; <label>:180:                                    ; preds = %155, %180
  %181 = phi i64 [ %191, %180 ], [ 0, %155 ]
  %182 = phi %struct.zskiplistNode* [ %194, %180 ], [ %166, %155 ]
  %183 = phi i64 [ %192, %180 ], [ 0, %155 ]
  %184 = bitcast %struct.zskiplistNode* %182 to i8*, !dbg !2877
  %185 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %182, i64 0, i32 0, !dbg !2887
  %186 = load i8*, i8** %185, align 8, !dbg !2887, !tbaa !297
  %187 = tail call i64 @sdsAllocSize(i8* %186) #8, !dbg !2889
  %188 = tail call i64 @zmalloc_size(i8* %184) #8, !dbg !2890
  %189 = add i64 %181, 24, !dbg !2891
  %190 = add i64 %189, %187, !dbg !2892
  %191 = add i64 %190, %188, !dbg !2893
  %192 = add nuw i64 %183, 1, !dbg !2894
  %193 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %182, i64 0, i32 3, i64 0, i32 0, !dbg !2895
  %194 = load %struct.zskiplistNode*, %struct.zskiplistNode** %193, align 8, !dbg !2895, !tbaa !2875
  %195 = icmp ne %struct.zskiplistNode* %194, null, !dbg !2884
  %196 = icmp ult i64 %192, %1, !dbg !2885
  %197 = and i1 %196, %195, !dbg !2886
  br i1 %197, label %180, label %198, !dbg !2886, !llvm.loop !2896

; <label>:198:                                    ; preds = %180
  %199 = uitofp i64 %191 to double, !dbg !2899
  %200 = uitofp i64 %192 to double, !dbg !2901
  %201 = fdiv double %199, %200, !dbg !2902
  %202 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 0, i32 3, !dbg !2903
  %203 = load i64, i64* %202, align 8, !dbg !2903, !tbaa !2847
  %204 = getelementptr inbounds %struct.dict, %struct.dict* %160, i64 0, i32 2, i64 1, i32 3, !dbg !2903
  %205 = load i64, i64* %204, align 8, !dbg !2903, !tbaa !2847
  %206 = add i64 %205, %203, !dbg !2903
  %207 = uitofp i64 %206 to double, !dbg !2903
  %208 = fmul double %201, %207, !dbg !2904
  %209 = uitofp i64 %176 to double, !dbg !2905
  %210 = fadd double %208, %209, !dbg !2905
  %211 = fptoui double %210 to i64, !dbg !2905
  br label %431, !dbg !2906

; <label>:212:                                    ; preds = %147
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 853, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !2907
  tail call void @_exit(i32 1) #9, !dbg !2907
  unreachable, !dbg !2907

; <label>:213:                                    ; preds = %2
  %214 = lshr i32 %6, 4, !dbg !2909
  %215 = trunc i32 %214 to i4, !dbg !2912
  switch i4 %215, label %270 [
    i4 5, label %216
    i4 2, label %221
  ], !dbg !2912

; <label>:216:                                    ; preds = %213
  %217 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2913
  %218 = load i8*, i8** %217, align 8, !dbg !2913, !tbaa !182
  %219 = tail call i64 @ziplistBlobLen(i8* %218) #8, !dbg !2915
  %220 = add i64 %219, 16, !dbg !2916
  br label %431, !dbg !2917

; <label>:221:                                    ; preds = %213
  %222 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2918
  %223 = bitcast i8** %222 to %struct.dict**, !dbg !2918
  %224 = load %struct.dict*, %struct.dict** %223, align 8, !dbg !2918, !tbaa !182
  %225 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %224) #8, !dbg !2921
  %226 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 0, i32 1, !dbg !2922
  %227 = load i64, i64* %226, align 8, !dbg !2922, !tbaa !2820
  %228 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 1, i32 1, !dbg !2922
  %229 = load i64, i64* %228, align 8, !dbg !2922, !tbaa !2820
  %230 = add i64 %229, %227, !dbg !2922
  %231 = shl i64 %230, 3, !dbg !2923
  %232 = add i64 %231, 112, !dbg !2924
  %233 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %225) #8, !dbg !2925
  %234 = icmp ne %struct.dictEntry* %233, null, !dbg !2926
  %235 = icmp ne i64 %1, 0, !dbg !2927
  %236 = and i1 %235, %234, !dbg !2928
  br i1 %236, label %238, label %237, !dbg !2928

; <label>:237:                                    ; preds = %221
  tail call void @dictReleaseIterator(%struct.dictIterator* %225) #8, !dbg !2929
  br label %431, !dbg !2930

; <label>:238:                                    ; preds = %221, %238
  %239 = phi %struct.dictEntry* [ %252, %238 ], [ %233, %221 ]
  %240 = phi i64 [ %250, %238 ], [ 0, %221 ]
  %241 = phi i64 [ %251, %238 ], [ 0, %221 ]
  %242 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 0, !dbg !2931
  %243 = load i8*, i8** %242, align 8, !dbg !2931, !tbaa !2833
  %244 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %239, i64 0, i32 1, i32 0, !dbg !2933
  %245 = load i8*, i8** %244, align 8, !dbg !2933, !tbaa !290
  %246 = tail call i64 @sdsAllocSize(i8* %243) #8, !dbg !2935
  %247 = tail call i64 @sdsAllocSize(i8* %245) #8, !dbg !2936
  %248 = add i64 %240, 24, !dbg !2937
  %249 = add i64 %248, %246, !dbg !2938
  %250 = add i64 %249, %247, !dbg !2939
  %251 = add nuw i64 %241, 1, !dbg !2940
  %252 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %225) #8, !dbg !2925
  %253 = icmp ne %struct.dictEntry* %252, null, !dbg !2926
  %254 = icmp ult i64 %251, %1, !dbg !2927
  %255 = and i1 %254, %253, !dbg !2928
  br i1 %255, label %238, label %256, !dbg !2928, !llvm.loop !2941

; <label>:256:                                    ; preds = %238
  %257 = uitofp i64 %250 to double, !dbg !2929
  tail call void @dictReleaseIterator(%struct.dictIterator* %225) #8, !dbg !2929
  %258 = uitofp i64 %251 to double, !dbg !2944
  %259 = fdiv double %257, %258, !dbg !2946
  %260 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 0, i32 3, !dbg !2947
  %261 = load i64, i64* %260, align 8, !dbg !2947, !tbaa !2847
  %262 = getelementptr inbounds %struct.dict, %struct.dict* %224, i64 0, i32 2, i64 1, i32 3, !dbg !2947
  %263 = load i64, i64* %262, align 8, !dbg !2947, !tbaa !2847
  %264 = add i64 %263, %261, !dbg !2947
  %265 = uitofp i64 %264 to double, !dbg !2947
  %266 = fmul double %259, %265, !dbg !2948
  %267 = uitofp i64 %232 to double, !dbg !2949
  %268 = fadd double %266, %267, !dbg !2949
  %269 = fptoui double %268 to i64, !dbg !2949
  br label %431, !dbg !2950

; <label>:270:                                    ; preds = %213
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 872, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2951
  tail call void @_exit(i32 1) #9, !dbg !2951
  unreachable, !dbg !2951

; <label>:271:                                    ; preds = %2
  %272 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !2953
  %273 = bitcast i8** %272 to %struct.stream**, !dbg !2953
  %274 = load %struct.stream*, %struct.stream** %273, align 8, !dbg !2953, !tbaa !182
  %275 = getelementptr inbounds %struct.stream, %struct.stream* %274, i64 0, i32 0, !dbg !2955
  %276 = load %struct.rax*, %struct.rax** %275, align 8, !dbg !2955, !tbaa !2956
  %277 = getelementptr inbounds %struct.rax, %struct.rax* %276, i64 0, i32 1, !dbg !2961
  %278 = load i64, i64* %277, align 8, !dbg !2961, !tbaa !2610
  %279 = shl i64 %278, 4, !dbg !2962
  %280 = getelementptr inbounds %struct.rax, %struct.rax* %276, i64 0, i32 2, !dbg !2964
  %281 = load i64, i64* %280, align 8, !dbg !2964, !tbaa !2615
  %282 = mul i64 %281, 244
  %283 = add i64 %279, 16, !dbg !2965
  %284 = add i64 %283, %282, !dbg !2966
  %285 = bitcast %struct.raxIterator* %3 to i8*, !dbg !2967
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %285) #10, !dbg !2967
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %276) #8, !dbg !2969
  %286 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #8, !dbg !2970
  %287 = icmp eq i64 %1, 0, !dbg !2973
  br i1 %287, label %302, label %288, !dbg !2974

; <label>:288:                                    ; preds = %271
  %289 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  br label %290, !dbg !2974

; <label>:290:                                    ; preds = %288, %295
  %291 = phi i64 [ 0, %288 ], [ %300, %295 ]
  %292 = phi i64 [ 0, %288 ], [ %299, %295 ]
  %293 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #8, !dbg !2975
  %294 = icmp eq i32 %293, 0, !dbg !2974
  br i1 %294, label %302, label %295, !dbg !2976

; <label>:295:                                    ; preds = %290
  %296 = load i8*, i8** %289, align 8, !dbg !2977, !tbaa !2978
  %297 = call i32 @lpBytes(i8* %296) #8, !dbg !2982
  %298 = zext i32 %297 to i64, !dbg !2982
  %299 = add i64 %292, %298, !dbg !2983
  %300 = add nuw i64 %291, 1, !dbg !2984
  %301 = icmp ult i64 %300, %1, !dbg !2973
  br i1 %301, label %290, label %302, !dbg !2974, !llvm.loop !2985

; <label>:302:                                    ; preds = %295, %290, %271
  %303 = phi i64 [ 0, %271 ], [ %292, %290 ], [ %299, %295 ], !dbg !2987
  %304 = phi i64 [ 0, %271 ], [ %291, %290 ], [ %300, %295 ], !dbg !2987
  %305 = load %struct.rax*, %struct.rax** %275, align 8, !dbg !2988, !tbaa !2956
  %306 = getelementptr inbounds %struct.rax, %struct.rax* %305, i64 0, i32 1, !dbg !2990
  %307 = load i64, i64* %306, align 8, !dbg !2990, !tbaa !2610
  %308 = icmp ugt i64 %307, %304, !dbg !2991
  br i1 %308, label %311, label %309, !dbg !2992

; <label>:309:                                    ; preds = %302
  %310 = add i64 %303, %284, !dbg !2993
  br label %327, !dbg !2995

; <label>:311:                                    ; preds = %302
  %312 = icmp eq i64 %304, 0, !dbg !2996
  br i1 %312, label %315, label %313, !dbg !2999

; <label>:313:                                    ; preds = %311
  %314 = udiv i64 %303, %304, !dbg !3000
  br label %315, !dbg !3001

; <label>:315:                                    ; preds = %311, %313
  %316 = phi i64 [ %314, %313 ], [ %303, %311 ], !dbg !3002
  %317 = add i64 %307, -1, !dbg !3003
  %318 = mul i64 %316, %317, !dbg !3004
  %319 = add i64 %318, %284, !dbg !3005
  %320 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* null, i64 0) #8, !dbg !3006
  %321 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #8, !dbg !3007
  %322 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3, !dbg !3008
  %323 = load i8*, i8** %322, align 8, !dbg !3008, !tbaa !2978
  %324 = call i32 @lpBytes(i8* %323) #8, !dbg !3009
  %325 = zext i32 %324 to i64, !dbg !3009
  %326 = add i64 %319, %325, !dbg !3010
  br label %327

; <label>:327:                                    ; preds = %315, %309
  %328 = phi i64 [ %310, %309 ], [ %326, %315 ], !dbg !3011
  call void @raxStop(%struct.raxIterator* nonnull %3) #8, !dbg !3012
  %329 = getelementptr inbounds %struct.stream, %struct.stream* %274, i64 0, i32 3, !dbg !3013
  %330 = load %struct.rax*, %struct.rax** %329, align 8, !dbg !3013, !tbaa !3014
  %331 = icmp eq %struct.rax* %330, null, !dbg !3015
  br i1 %331, label %415, label %332, !dbg !3016

; <label>:332:                                    ; preds = %327
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* nonnull %330) #8, !dbg !3017
  %333 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #8, !dbg !3018
  %334 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #8, !dbg !3019
  %335 = icmp eq i32 %334, 0, !dbg !3020
  br i1 %335, label %413, label %336, !dbg !3020

; <label>:336:                                    ; preds = %332
  %337 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %338 = bitcast i8** %337 to %struct.streamCG**
  %339 = bitcast %struct.raxIterator* %4 to i8*
  %340 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 3
  %341 = bitcast i8** %340 to %struct.streamConsumer**
  br label %342, !dbg !3020

; <label>:342:                                    ; preds = %336, %409
  %343 = phi i64 [ %328, %336 ], [ %410, %409 ]
  %344 = load %struct.streamCG*, %struct.streamCG** %338, align 8, !dbg !3021, !tbaa !2978
  %345 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %344, i64 0, i32 1, !dbg !3023
  %346 = load %struct.rax*, %struct.rax** %345, align 8, !dbg !3023, !tbaa !3024
  %347 = getelementptr inbounds %struct.rax, %struct.rax* %346, i64 0, i32 1, !dbg !3028
  %348 = load i64, i64* %347, align 8, !dbg !3028, !tbaa !2610
  %349 = shl i64 %348, 4, !dbg !3029
  %350 = getelementptr inbounds %struct.rax, %struct.rax* %346, i64 0, i32 2, !dbg !3031
  %351 = load i64, i64* %350, align 8, !dbg !3031, !tbaa !2615
  %352 = mul i64 %351, 244
  %353 = call i64 @raxSize(%struct.rax* %346) #8, !dbg !3032
  %354 = mul i64 %353, 24, !dbg !3033
  %355 = add i64 %343, 32, !dbg !3034
  %356 = add i64 %355, %349, !dbg !3035
  %357 = add i64 %356, %352, !dbg !3036
  %358 = add i64 %357, %354, !dbg !3037
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %339) #10, !dbg !3038
  %359 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %344, i64 0, i32 2, !dbg !3039
  %360 = load %struct.rax*, %struct.rax** %359, align 8, !dbg !3039, !tbaa !3040
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %360) #8, !dbg !3042
  %361 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* null, i64 0) #8, !dbg !3043
  %362 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #8, !dbg !3044
  %363 = icmp eq i32 %362, 0, !dbg !3045
  br i1 %363, label %409, label %364, !dbg !3045

; <label>:364:                                    ; preds = %342, %393
  %365 = phi i64 [ %406, %393 ], [ %358, %342 ]
  %366 = load %struct.streamConsumer*, %struct.streamConsumer** %341, align 8, !dbg !3046, !tbaa !2978
  %367 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %366, i64 0, i32 1, !dbg !3048
  %368 = load i8*, i8** %367, align 8, !dbg !3048, !tbaa !3049
  %369 = getelementptr inbounds i8, i8* %368, i64 -1, !dbg !3053
  %370 = load i8, i8* %369, align 1, !dbg !3053, !tbaa !290
  %371 = trunc i8 %370 to i3, !dbg !3055
  switch i3 %371, label %393 [
    i3 0, label %372
    i3 1, label %375
    i3 2, label %379
    i3 3, label %384
    i3 -4, label %389
  ], !dbg !3055

; <label>:372:                                    ; preds = %364
  %373 = lshr i8 %370, 3, !dbg !3056
  %374 = zext i8 %373 to i64, !dbg !3056
  br label %393, !dbg !3057

; <label>:375:                                    ; preds = %364
  %376 = getelementptr inbounds i8, i8* %368, i64 -3, !dbg !3058
  %377 = load i8, i8* %376, align 1, !dbg !3059, !tbaa !290
  %378 = zext i8 %377 to i64, !dbg !3058
  br label %393, !dbg !3060

; <label>:379:                                    ; preds = %364
  %380 = getelementptr inbounds i8, i8* %368, i64 -5, !dbg !3061
  %381 = bitcast i8* %380 to i16*, !dbg !3062
  %382 = load i16, i16* %381, align 1, !dbg !3062, !tbaa !503
  %383 = zext i16 %382 to i64, !dbg !3061
  br label %393, !dbg !3063

; <label>:384:                                    ; preds = %364
  %385 = getelementptr inbounds i8, i8* %368, i64 -9, !dbg !3064
  %386 = bitcast i8* %385 to i32*, !dbg !3065
  %387 = load i32, i32* %386, align 1, !dbg !3065, !tbaa !508
  %388 = zext i32 %387 to i64, !dbg !3064
  br label %393, !dbg !3066

; <label>:389:                                    ; preds = %364
  %390 = getelementptr inbounds i8, i8* %368, i64 -17, !dbg !3067
  %391 = bitcast i8* %390 to i64*, !dbg !3068
  %392 = load i64, i64* %391, align 1, !dbg !3068, !tbaa !512
  br label %393, !dbg !3069

; <label>:393:                                    ; preds = %364, %372, %375, %379, %384, %389
  %394 = phi i64 [ %392, %389 ], [ %388, %384 ], [ %383, %379 ], [ %378, %375 ], [ %374, %372 ], [ 0, %364 ], !dbg !3070
  %395 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %366, i64 0, i32 2, !dbg !3071
  %396 = load %struct.rax*, %struct.rax** %395, align 8, !dbg !3071, !tbaa !3072
  %397 = getelementptr inbounds %struct.rax, %struct.rax* %396, i64 0, i32 1, !dbg !3075
  %398 = load i64, i64* %397, align 8, !dbg !3075, !tbaa !2610
  %399 = shl i64 %398, 4, !dbg !3076
  %400 = getelementptr inbounds %struct.rax, %struct.rax* %396, i64 0, i32 2, !dbg !3078
  %401 = load i64, i64* %400, align 8, !dbg !3078, !tbaa !2615
  %402 = mul i64 %401, 244
  %403 = add i64 %365, 24, !dbg !3079
  %404 = add i64 %403, %394, !dbg !3080
  %405 = add i64 %404, %399, !dbg !3081
  %406 = add i64 %405, %402, !dbg !3082
  %407 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #8, !dbg !3044
  %408 = icmp eq i32 %407, 0, !dbg !3045
  br i1 %408, label %409, label %364, !dbg !3045, !llvm.loop !3083

; <label>:409:                                    ; preds = %393, %342
  %410 = phi i64 [ %358, %342 ], [ %406, %393 ], !dbg !3085
  call void @raxStop(%struct.raxIterator* nonnull %4) #8, !dbg !3086
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %339) #10, !dbg !3087
  %411 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #8, !dbg !3019
  %412 = icmp eq i32 %411, 0, !dbg !3020
  br i1 %412, label %413, label %342, !dbg !3020, !llvm.loop !3088

; <label>:413:                                    ; preds = %409, %332
  %414 = phi i64 [ %328, %332 ], [ %410, %409 ], !dbg !3089
  call void @raxStop(%struct.raxIterator* nonnull %3) #8, !dbg !3090
  br label %415, !dbg !3091

; <label>:415:                                    ; preds = %327, %413
  %416 = phi i64 [ %414, %413 ], [ %328, %327 ], !dbg !2993
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %285) #10, !dbg !3092
  br label %431, !dbg !3093

; <label>:417:                                    ; preds = %2
  %418 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !3094
  %419 = bitcast i8** %418 to %struct.moduleValue**, !dbg !3094
  %420 = load %struct.moduleValue*, %struct.moduleValue** %419, align 8, !dbg !3094, !tbaa !182
  %421 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %420, i64 0, i32 0, !dbg !3096
  %422 = load %struct.RedisModuleType*, %struct.RedisModuleType** %421, align 8, !dbg !3096, !tbaa !1274
  %423 = getelementptr inbounds %struct.RedisModuleType, %struct.RedisModuleType* %422, i64 0, i32 5, !dbg !3098
  %424 = load i64 (i8*)*, i64 (i8*)** %423, align 8, !dbg !3098, !tbaa !3100
  %425 = icmp eq i64 (i8*)* %424, null, !dbg !3101
  br i1 %425, label %431, label %426, !dbg !3102

; <label>:426:                                    ; preds = %417
  %427 = getelementptr inbounds %struct.moduleValue, %struct.moduleValue* %420, i64 0, i32 1, !dbg !3103
  %428 = load i8*, i8** %427, align 8, !dbg !3103, !tbaa !1278
  %429 = tail call i64 %424(i8* %428) #8, !dbg !3105
  br label %431, !dbg !3106

; <label>:430:                                    ; preds = %2
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 944, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !3107
  tail call void @_exit(i32 1) #9, !dbg !3107
  unreachable, !dbg !3107

; <label>:431:                                    ; preds = %155, %237, %106, %426, %417, %198, %8, %81, %71, %150, %415, %216, %256, %135, %121, %43, %11
  %432 = phi i64 [ %15, %11 ], [ %45, %43 ], [ %80, %71 ], [ %85, %81 ], [ %134, %121 ], [ %145, %135 ], [ %154, %150 ], [ %220, %216 ], [ %269, %256 ], [ %416, %415 ], [ 16, %8 ], [ %211, %198 ], [ %429, %426 ], [ 0, %417 ], [ %101, %106 ], [ %232, %237 ], [ %176, %155 ], !dbg !3109
  ret i64 %432, !dbg !3110
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
define dso_local void @freeMemoryOverheadData(%struct.redisMemOverhead*) local_unnamed_addr #0 !dbg !3111 {
  %2 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %0, i64 0, i32 23, !dbg !3151
  %3 = bitcast %struct.anon.9** %2 to i8**, !dbg !3151
  %4 = load i8*, i8** %3, align 8, !dbg !3151, !tbaa !3152
  tail call void @zfree(i8* %4) #8, !dbg !3155
  %5 = bitcast %struct.redisMemOverhead* %0 to i8*, !dbg !3156
  tail call void @zfree(i8* %5) #8, !dbg !3157
  ret void, !dbg !3158
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisMemOverhead* @getMemoryOverheadData() local_unnamed_addr #0 !dbg !3159 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = tail call i64 @zmalloc_used_memory() #8, !dbg !3193
  %4 = tail call i8* @zcalloc(i64 184) #8, !dbg !3195
  %5 = bitcast i8* %4 to %struct.redisMemOverhead*, !dbg !3195
  %6 = getelementptr inbounds i8, i8* %4, i64 8, !dbg !3197
  %7 = bitcast i8* %6 to i64*, !dbg !3197
  store i64 %3, i64* %7, align 8, !dbg !3198, !tbaa !3199
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 21), align 8, !dbg !3200, !tbaa !3201
  %9 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !3202
  %10 = bitcast i8* %9 to i64*, !dbg !3202
  store i64 %8, i64* %10, align 8, !dbg !3203, !tbaa !3204
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 83), align 8, !dbg !3205, !tbaa !3206
  %12 = bitcast i8* %4 to i64*, !dbg !3207
  store i64 %11, i64* %12, align 8, !dbg !3208, !tbaa !3209
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 1), align 8, !dbg !3210, !tbaa !3211
  %14 = uitofp i64 %13 to float, !dbg !3212
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 0), align 8, !dbg !3213, !tbaa !3214
  %16 = uitofp i64 %15 to float, !dbg !3215
  %17 = fdiv float %14, %16, !dbg !3216
  %18 = getelementptr inbounds i8, i8* %4, i64 104, !dbg !3217
  %19 = bitcast i8* %18 to float*, !dbg !3217
  store float %17, float* %19, align 8, !dbg !3218, !tbaa !3219
  %20 = sub i64 %13, %15, !dbg !3220
  %21 = getelementptr inbounds i8, i8* %4, i64 112, !dbg !3221
  %22 = bitcast i8* %21 to i64*, !dbg !3221
  store i64 %20, i64* %22, align 8, !dbg !3222, !tbaa !3223
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 3), align 8, !dbg !3224, !tbaa !3225
  %24 = uitofp i64 %23 to float, !dbg !3226
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 2), align 8, !dbg !3227, !tbaa !3228
  %26 = uitofp i64 %25 to float, !dbg !3229
  %27 = fdiv float %24, %26, !dbg !3230
  %28 = getelementptr inbounds i8, i8* %4, i64 120, !dbg !3231
  %29 = bitcast i8* %28 to float*, !dbg !3231
  store float %27, float* %29, align 8, !dbg !3232, !tbaa !3233
  %30 = sub i64 %23, %25, !dbg !3234
  %31 = getelementptr inbounds i8, i8* %4, i64 128, !dbg !3235
  %32 = bitcast i8* %31 to i64*, !dbg !3235
  store i64 %30, i64* %32, align 8, !dbg !3236, !tbaa !3237
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 4), align 8, !dbg !3238, !tbaa !3239
  %34 = uitofp i64 %33 to float, !dbg !3240
  %35 = fdiv float %34, %24, !dbg !3241
  %36 = getelementptr inbounds i8, i8* %4, i64 136, !dbg !3242
  %37 = bitcast i8* %36 to float*, !dbg !3242
  store float %35, float* %37, align 8, !dbg !3243, !tbaa !3244
  %38 = sub i64 %33, %23, !dbg !3245
  %39 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !3246
  %40 = bitcast i8* %39 to i64*, !dbg !3246
  store i64 %38, i64* %40, align 8, !dbg !3247, !tbaa !3248
  %41 = fdiv float %14, %34, !dbg !3249
  %42 = getelementptr inbounds i8, i8* %4, i64 152, !dbg !3250
  %43 = bitcast i8* %42 to float*, !dbg !3250
  store float %41, float* %43, align 8, !dbg !3251, !tbaa !3252
  %44 = sub i64 %13, %33, !dbg !3253
  %45 = getelementptr inbounds i8, i8* %4, i64 160, !dbg !3254
  %46 = bitcast i8* %45 to i64*, !dbg !3254
  store i64 %44, i64* %46, align 8, !dbg !3255, !tbaa !3256
  %47 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3257, !tbaa !3259
  %48 = icmp eq i8* %47, null, !dbg !3260
  br i1 %48, label %51, label %49, !dbg !3261

; <label>:49:                                     ; preds = %0
  %50 = tail call i64 @zmalloc_size(i8* nonnull %47) #8, !dbg !3262
  br label %51, !dbg !3263

; <label>:51:                                     ; preds = %0, %49
  %52 = phi i64 [ %50, %49 ], [ 0, %0 ], !dbg !3264
  %53 = getelementptr inbounds i8, i8* %4, i64 24, !dbg !3265
  %54 = bitcast i8* %53 to i64*, !dbg !3265
  store i64 %52, i64* %54, align 8, !dbg !3266, !tbaa !3267
  %55 = add i64 %52, %8, !dbg !3268
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3269, !tbaa !3270
  %57 = getelementptr inbounds %struct.list, %struct.list* %56, i64 0, i32 5, !dbg !3269
  %58 = load i64, i64* %57, align 8, !dbg !3269, !tbaa !3271
  %59 = icmp eq i64 %58, 0, !dbg !3269
  br i1 %59, label %81, label %60, !dbg !3273

; <label>:60:                                     ; preds = %51
  %61 = bitcast %struct.listIter* %1 to i8*, !dbg !3274
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %61) #10, !dbg !3274
  call void @listRewind(%struct.list* %56, %struct.listIter* nonnull %1) #8, !dbg !3276
  %62 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3277
  %63 = icmp eq %struct.listNode* %62, null, !dbg !3279
  br i1 %63, label %79, label %64, !dbg !3279

; <label>:64:                                     ; preds = %60, %64
  %65 = phi %struct.listNode* [ %77, %64 ], [ %62, %60 ]
  %66 = phi i64 [ %76, %64 ], [ 0, %60 ]
  %67 = getelementptr inbounds %struct.listNode, %struct.listNode* %65, i64 0, i32 2, !dbg !3280
  %68 = bitcast i8** %67 to %struct.client**, !dbg !3280
  %69 = load %struct.client*, %struct.client** %68, align 8, !dbg !3280, !tbaa !3281
  %70 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %69) #8, !dbg !3284
  %71 = getelementptr inbounds %struct.client, %struct.client* %69, i64 0, i32 4, !dbg !3285
  %72 = load i8*, i8** %71, align 8, !dbg !3285, !tbaa !3286
  %73 = call i64 @sdsAllocSize(i8* %72) #8, !dbg !3290
  %74 = add i64 %66, 16920, !dbg !3291
  %75 = add i64 %74, %70, !dbg !3292
  %76 = add i64 %75, %73, !dbg !3293
  %77 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3277
  %78 = icmp eq %struct.listNode* %77, null, !dbg !3279
  br i1 %78, label %79, label %64, !dbg !3279, !llvm.loop !3294

; <label>:79:                                     ; preds = %64, %60
  %80 = phi i64 [ 0, %60 ], [ %76, %64 ], !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %61) #10, !dbg !3297
  br label %81, !dbg !3298

; <label>:81:                                     ; preds = %51, %79
  %82 = phi i64 [ %80, %79 ], [ 0, %51 ], !dbg !3299
  %83 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !3300
  %84 = bitcast i8* %83 to i64*, !dbg !3300
  store i64 %82, i64* %84, align 8, !dbg !3301, !tbaa !3302
  %85 = add i64 %55, %82, !dbg !3303
  %86 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !3304, !tbaa !3305
  %87 = getelementptr inbounds %struct.list, %struct.list* %86, i64 0, i32 5, !dbg !3304
  %88 = load i64, i64* %87, align 8, !dbg !3304, !tbaa !3271
  %89 = icmp eq i64 %88, 0, !dbg !3304
  br i1 %89, label %118, label %90, !dbg !3306

; <label>:90:                                     ; preds = %81
  %91 = bitcast %struct.listIter* %2 to i8*, !dbg !3307
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #10, !dbg !3307
  call void @listRewind(%struct.list* %86, %struct.listIter* nonnull %2) #8, !dbg !3309
  %92 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3310
  %93 = icmp eq %struct.listNode* %92, null, !dbg !3312
  br i1 %93, label %116, label %94, !dbg !3312

; <label>:94:                                     ; preds = %90, %112
  %95 = phi %struct.listNode* [ %114, %112 ], [ %92, %90 ]
  %96 = phi i64 [ %113, %112 ], [ 0, %90 ]
  %97 = getelementptr inbounds %struct.listNode, %struct.listNode* %95, i64 0, i32 2, !dbg !3313
  %98 = bitcast i8** %97 to %struct.client**, !dbg !3313
  %99 = load %struct.client*, %struct.client** %98, align 8, !dbg !3313, !tbaa !3281
  %100 = getelementptr inbounds %struct.client, %struct.client* %99, i64 0, i32 21, !dbg !3315
  %101 = load i32, i32* %100, align 8, !dbg !3315, !tbaa !3317
  %102 = and i32 %101, 5, !dbg !3318
  %103 = icmp eq i32 %102, 1, !dbg !3318
  br i1 %103, label %112, label %104, !dbg !3318, !llvm.loop !3319

; <label>:104:                                    ; preds = %94
  %105 = call i64 @getClientOutputBufferMemoryUsage(%struct.client* %99) #8, !dbg !3321
  %106 = getelementptr inbounds %struct.client, %struct.client* %99, i64 0, i32 4, !dbg !3322
  %107 = load i8*, i8** %106, align 8, !dbg !3322, !tbaa !3286
  %108 = call i64 @sdsAllocSize(i8* %107) #8, !dbg !3323
  %109 = add i64 %96, 16920, !dbg !3324
  %110 = add i64 %109, %105, !dbg !3325
  %111 = add i64 %110, %108, !dbg !3326
  br label %112, !dbg !3320

; <label>:112:                                    ; preds = %94, %104
  %113 = phi i64 [ %111, %104 ], [ %96, %94 ], !dbg !3264
  %114 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3310
  %115 = icmp eq %struct.listNode* %114, null, !dbg !3312
  br i1 %115, label %116, label %94, !dbg !3312

; <label>:116:                                    ; preds = %112, %90
  %117 = phi i64 [ 0, %90 ], [ %113, %112 ], !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #10, !dbg !3328
  br label %118, !dbg !3329

; <label>:118:                                    ; preds = %81, %116
  %119 = phi i64 [ %117, %116 ], [ 0, %81 ], !dbg !3330
  %120 = getelementptr inbounds i8, i8* %4, i64 40, !dbg !3331
  %121 = bitcast i8* %120 to i64*, !dbg !3331
  store i64 %119, i64* %121, align 8, !dbg !3332, !tbaa !3333
  %122 = add i64 %85, %119, !dbg !3334
  %123 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3335, !tbaa !3337
  %124 = icmp eq i32 %123, 0, !dbg !3338
  br i1 %124, label %155, label %125, !dbg !3339

; <label>:125:                                    ; preds = %118
  %126 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 129), align 8, !dbg !3340, !tbaa !3342
  %127 = getelementptr inbounds i8, i8* %126, i64 -1, !dbg !3349
  %128 = load i8, i8* %127, align 1, !dbg !3349, !tbaa !290
  %129 = trunc i8 %128 to i3, !dbg !3351
  switch i3 %129, label %151 [
    i3 0, label %130
    i3 1, label %133
    i3 2, label %137
    i3 3, label %142
    i3 -4, label %147
  ], !dbg !3351

; <label>:130:                                    ; preds = %125
  %131 = lshr i8 %128, 3, !dbg !3352
  %132 = zext i8 %131 to i64, !dbg !3352
  br label %151, !dbg !3354

; <label>:133:                                    ; preds = %125
  %134 = getelementptr inbounds i8, i8* %126, i64 -2, !dbg !3355
  %135 = load i8, i8* %134, align 1, !dbg !3355, !tbaa !290
  %136 = zext i8 %135 to i64, !dbg !3356
  br label %151, !dbg !3357

; <label>:137:                                    ; preds = %125
  %138 = getelementptr inbounds i8, i8* %126, i64 -3, !dbg !3358
  %139 = bitcast i8* %138 to i16*, !dbg !3358
  %140 = load i16, i16* %139, align 1, !dbg !3358, !tbaa !503
  %141 = zext i16 %140 to i64, !dbg !3359
  br label %151, !dbg !3360

; <label>:142:                                    ; preds = %125
  %143 = getelementptr inbounds i8, i8* %126, i64 -5, !dbg !3361
  %144 = bitcast i8* %143 to i32*, !dbg !3361
  %145 = load i32, i32* %144, align 1, !dbg !3361, !tbaa !508
  %146 = zext i32 %145 to i64, !dbg !3362
  br label %151, !dbg !3363

; <label>:147:                                    ; preds = %125
  %148 = getelementptr inbounds i8, i8* %126, i64 -9, !dbg !3364
  %149 = bitcast i8* %148 to i64*, !dbg !3364
  %150 = load i64, i64* %149, align 1, !dbg !3364, !tbaa !512
  br label %151, !dbg !3365

; <label>:151:                                    ; preds = %125, %130, %133, %137, %142, %147
  %152 = phi i64 [ %150, %147 ], [ %146, %142 ], [ %141, %137 ], [ %136, %133 ], [ %132, %130 ], [ 0, %125 ], !dbg !3366
  %153 = call i64 @aofRewriteBufferSize() #8, !dbg !3367
  %154 = add i64 %153, %152, !dbg !3368
  br label %155, !dbg !3369

; <label>:155:                                    ; preds = %118, %151
  %156 = phi i64 [ %154, %151 ], [ 0, %118 ], !dbg !3264
  %157 = getelementptr inbounds i8, i8* %4, i64 48, !dbg !3370
  %158 = bitcast i8* %157 to i64*, !dbg !3370
  store i64 %156, i64* %158, align 8, !dbg !3371, !tbaa !3372
  %159 = add i64 %122, %156, !dbg !3373
  %160 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !3374, !tbaa !3375
  %161 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3376, !tbaa !3377
  %162 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 0, i32 3, !dbg !3376
  %163 = load i64, i64* %162, align 8, !dbg !3376, !tbaa !2847
  %164 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 1, i32 3, !dbg !3376
  %165 = load i64, i64* %164, align 8, !dbg !3376, !tbaa !2847
  %166 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 0, i32 1, !dbg !3378
  %167 = load i64, i64* %166, align 8, !dbg !3378, !tbaa !2820
  %168 = getelementptr inbounds %struct.dict, %struct.dict* %161, i64 0, i32 2, i64 1, i32 1, !dbg !3378
  %169 = load i64, i64* %168, align 8, !dbg !3378, !tbaa !2820
  %170 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !3379, !tbaa !3380
  %171 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 0, i32 3, !dbg !3379
  %172 = load i64, i64* %171, align 8, !dbg !3379, !tbaa !2847
  %173 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 1, i32 3, !dbg !3379
  %174 = load i64, i64* %173, align 8, !dbg !3379, !tbaa !2847
  %175 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 0, i32 1, !dbg !3381
  %176 = load i64, i64* %175, align 8, !dbg !3381, !tbaa !2820
  %177 = getelementptr inbounds %struct.dict, %struct.dict* %170, i64 0, i32 2, i64 1, i32 1, !dbg !3381
  %178 = load i64, i64* %177, align 8, !dbg !3381, !tbaa !2820
  %179 = add i64 %169, %167, !dbg !3381
  %180 = add i64 %179, %176, !dbg !3378
  %181 = add i64 %180, %178
  %182 = shl i64 %181, 3
  %183 = add i64 %165, %163, !dbg !3379
  %184 = add i64 %183, %172, !dbg !3376
  %185 = add i64 %184, %174
  %186 = mul i64 %185, 24
  %187 = add i64 %186, %160, !dbg !3382
  %188 = add i64 %187, %182, !dbg !3383
  %189 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !3384, !tbaa !3386
  %190 = getelementptr inbounds %struct.list, %struct.list* %189, i64 0, i32 5, !dbg !3384
  %191 = load i64, i64* %190, align 8, !dbg !3384, !tbaa !3271
  %192 = icmp eq i64 %191, 0, !dbg !3387
  br i1 %192, label %202, label %193, !dbg !3388

; <label>:193:                                    ; preds = %155
  %194 = getelementptr inbounds %struct.list, %struct.list* %189, i64 0, i32 0, !dbg !3389
  %195 = load %struct.listNode*, %struct.listNode** %194, align 8, !dbg !3389, !tbaa !3391
  %196 = getelementptr inbounds %struct.listNode, %struct.listNode* %195, i64 0, i32 2, !dbg !3389
  %197 = load i8*, i8** %196, align 8, !dbg !3389, !tbaa !3281
  %198 = call i64 @sdsZmallocSize(i8* %197) #8, !dbg !3392
  %199 = add i64 %198, 24, !dbg !3393
  %200 = mul i64 %199, %191, !dbg !3394
  %201 = add i64 %200, %188, !dbg !3395
  br label %202, !dbg !3396

; <label>:202:                                    ; preds = %155, %193
  %203 = phi i64 [ %201, %193 ], [ %188, %155 ], !dbg !3264
  %204 = getelementptr inbounds i8, i8* %4, i64 56, !dbg !3397
  %205 = bitcast i8* %204 to i64*, !dbg !3397
  store i64 %203, i64* %205, align 8, !dbg !3398, !tbaa !3399
  %206 = add i64 %159, %203, !dbg !3400
  %207 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3402, !tbaa !3403
  %208 = icmp sgt i32 %207, 0, !dbg !3404
  %209 = getelementptr inbounds i8, i8* %4, i64 80
  %210 = bitcast i8* %209 to i64*
  br i1 %208, label %211, label %281, !dbg !3405

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds i8, i8* %4, i64 176
  %213 = bitcast i8* %212 to i8**
  %214 = getelementptr inbounds i8, i8* %4, i64 168
  %215 = bitcast i8* %214 to i64*
  br label %216, !dbg !3405

; <label>:216:                                    ; preds = %211, %275
  %217 = phi i32 [ %207, %211 ], [ %276, %275 ]
  %218 = phi i64 [ 0, %211 ], [ %278, %275 ]
  %219 = phi i64 [ %206, %211 ], [ %277, %275 ]
  %220 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 7), align 8, !dbg !3406, !tbaa !3407
  %221 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %220, i64 %218, i32 0, !dbg !3408
  %222 = load %struct.dict*, %struct.dict** %221, align 8, !dbg !3408, !tbaa !3409
  %223 = getelementptr inbounds %struct.dict, %struct.dict* %222, i64 0, i32 2, i64 0, i32 3, !dbg !3408
  %224 = load i64, i64* %223, align 8, !dbg !3408, !tbaa !2847
  %225 = getelementptr inbounds %struct.dict, %struct.dict* %222, i64 0, i32 2, i64 1, i32 3, !dbg !3408
  %226 = load i64, i64* %225, align 8, !dbg !3408, !tbaa !2847
  %227 = add i64 %226, %224, !dbg !3408
  %228 = icmp eq i64 %227, 0, !dbg !3412
  br i1 %228, label %275, label %229, !dbg !3414

; <label>:229:                                    ; preds = %216
  %230 = load i64, i64* %210, align 8, !dbg !3415, !tbaa !3416
  %231 = add i64 %230, %227, !dbg !3415
  store i64 %231, i64* %210, align 8, !dbg !3415, !tbaa !3416
  %232 = load i8*, i8** %213, align 8, !dbg !3417, !tbaa !3152
  %233 = load i64, i64* %215, align 8, !dbg !3418, !tbaa !3419
  %234 = mul i64 %233, 24, !dbg !3420
  %235 = add i64 %234, 24, !dbg !3420
  %236 = call i8* @zrealloc(i8* %232, i64 %235) #8, !dbg !3421
  %237 = bitcast i8* %236 to %struct.anon.9*, !dbg !3421
  store i8* %236, i8** %213, align 8, !dbg !3422, !tbaa !3152
  %238 = load i64, i64* %215, align 8, !dbg !3423, !tbaa !3419
  %239 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 0, !dbg !3424
  store i64 %218, i64* %239, align 8, !dbg !3425, !tbaa !3426
  %240 = load %struct.dict*, %struct.dict** %221, align 8, !dbg !3428, !tbaa !3409
  %241 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 0, i32 3, !dbg !3428
  %242 = load i64, i64* %241, align 8, !dbg !3428, !tbaa !2847
  %243 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 1, i32 3, !dbg !3428
  %244 = load i64, i64* %243, align 8, !dbg !3428, !tbaa !2847
  %245 = add i64 %244, %242, !dbg !3428
  %246 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 0, i32 1, !dbg !3429
  %247 = load i64, i64* %246, align 8, !dbg !3429, !tbaa !2820
  %248 = getelementptr inbounds %struct.dict, %struct.dict* %240, i64 0, i32 2, i64 1, i32 1, !dbg !3429
  %249 = load i64, i64* %248, align 8, !dbg !3429, !tbaa !2820
  %250 = add i64 %249, %247, !dbg !3429
  %251 = shl i64 %250, 3, !dbg !3430
  %252 = mul i64 %245, 40, !dbg !3431
  %253 = add i64 %252, %251, !dbg !3432
  %254 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 1, !dbg !3433
  store i64 %253, i64* %254, align 8, !dbg !3434, !tbaa !3435
  %255 = add i64 %253, %219, !dbg !3436
  %256 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %220, i64 %218, i32 1, !dbg !3437
  %257 = load %struct.dict*, %struct.dict** %256, align 8, !dbg !3437, !tbaa !3438
  %258 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 0, i32 3, !dbg !3437
  %259 = load i64, i64* %258, align 8, !dbg !3437, !tbaa !2847
  %260 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 1, i32 3, !dbg !3437
  %261 = load i64, i64* %260, align 8, !dbg !3437, !tbaa !2847
  %262 = add i64 %261, %259, !dbg !3437
  %263 = mul i64 %262, 24, !dbg !3439
  %264 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 0, i32 1, !dbg !3440
  %265 = load i64, i64* %264, align 8, !dbg !3440, !tbaa !2820
  %266 = getelementptr inbounds %struct.dict, %struct.dict* %257, i64 0, i32 2, i64 1, i32 1, !dbg !3440
  %267 = load i64, i64* %266, align 8, !dbg !3440, !tbaa !2820
  %268 = add i64 %267, %265, !dbg !3440
  %269 = shl i64 %268, 3, !dbg !3441
  %270 = add i64 %269, %263, !dbg !3442
  %271 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %237, i64 %238, i32 2, !dbg !3443
  store i64 %270, i64* %271, align 8, !dbg !3444, !tbaa !3445
  %272 = add i64 %255, %270, !dbg !3446
  %273 = add i64 %238, 1, !dbg !3447
  store i64 %273, i64* %215, align 8, !dbg !3447, !tbaa !3419
  %274 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 112), align 8, !dbg !3402, !tbaa !3403
  br label %275, !dbg !3448

; <label>:275:                                    ; preds = %216, %229
  %276 = phi i32 [ %274, %229 ], [ %217, %216 ], !dbg !3402
  %277 = phi i64 [ %272, %229 ], [ %219, %216 ], !dbg !3449
  %278 = add nuw nsw i64 %218, 1, !dbg !3450
  %279 = sext i32 %276 to i64, !dbg !3404
  %280 = icmp slt i64 %278, %279, !dbg !3404
  br i1 %280, label %216, label %281, !dbg !3405, !llvm.loop !3451

; <label>:281:                                    ; preds = %275, %202
  %282 = phi i64 [ %206, %202 ], [ %277, %275 ], !dbg !3400
  %283 = getelementptr inbounds i8, i8* %4, i64 64, !dbg !3453
  %284 = bitcast i8* %283 to i64*, !dbg !3453
  store i64 %282, i64* %284, align 8, !dbg !3454, !tbaa !3455
  %285 = sub i64 %3, %282, !dbg !3456
  %286 = getelementptr inbounds i8, i8* %4, i64 72, !dbg !3457
  %287 = bitcast i8* %286 to i64*, !dbg !3457
  store i64 %285, i64* %287, align 8, !dbg !3458, !tbaa !3459
  %288 = uitofp i64 %3 to float, !dbg !3460
  %289 = fmul float %288, 1.000000e+02, !dbg !3461
  %290 = load i64, i64* %12, align 8, !dbg !3462, !tbaa !3209
  %291 = uitofp i64 %290 to float, !dbg !3463
  %292 = fdiv float %289, %291, !dbg !3464
  %293 = getelementptr inbounds i8, i8* %4, i64 100, !dbg !3465
  %294 = bitcast i8* %293 to float*, !dbg !3465
  store float %292, float* %294, align 4, !dbg !3466, !tbaa !3467
  %295 = load i64, i64* %10, align 8, !dbg !3469, !tbaa !3204
  %296 = icmp ugt i64 %3, %295, !dbg !3471
  %297 = sub i64 %3, %295, !dbg !3472
  %298 = select i1 %296, i64 %297, i64 1, !dbg !3473
  %299 = uitofp i64 %285 to float, !dbg !3474
  %300 = fmul float %299, 1.000000e+02, !dbg !3475
  %301 = uitofp i64 %298 to float, !dbg !3476
  %302 = fdiv float %300, %301, !dbg !3477
  %303 = getelementptr inbounds i8, i8* %4, i64 96, !dbg !3478
  %304 = bitcast i8* %303 to float*, !dbg !3478
  store float %302, float* %304, align 8, !dbg !3479, !tbaa !3480
  %305 = load i64, i64* %210, align 8, !dbg !3481, !tbaa !3416
  %306 = icmp eq i64 %305, 0, !dbg !3482
  br i1 %306, label %309, label %307, !dbg !3482

; <label>:307:                                    ; preds = %281
  %308 = udiv i64 %298, %305, !dbg !3483
  br label %309, !dbg !3482

; <label>:309:                                    ; preds = %281, %307
  %310 = phi i64 [ %308, %307 ], [ 0, %281 ], !dbg !3482
  %311 = getelementptr inbounds i8, i8* %4, i64 88, !dbg !3484
  %312 = bitcast i8* %311 to i64*, !dbg !3484
  store i64 %310, i64* %312, align 8, !dbg !3485, !tbaa !3486
  ret %struct.redisMemOverhead* %5, !dbg !3487
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
define dso_local void @inputCatSds(i8* nocapture, i8*) local_unnamed_addr #0 !dbg !3488 {
  %3 = bitcast i8* %0 to i8**, !dbg !3497
  %4 = load i8*, i8** %3, align 8, !dbg !3499, !tbaa !297
  %5 = tail call i8* @sdscat(i8* %4, i8* %1) #8, !dbg !3500
  store i8* %5, i8** %3, align 8, !dbg !3501, !tbaa !297
  ret void, !dbg !3502
}

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getMemoryDoctorReport() local_unnamed_addr #0 !dbg !3503 {
  %1 = tail call %struct.redisMemOverhead* @getMemoryOverheadData() #11, !dbg !3533
  %2 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 1, !dbg !3535
  %3 = load i64, i64* %2, align 8, !dbg !3535, !tbaa !3199
  %4 = icmp ult i64 %3, 5242880, !dbg !3536
  br i1 %4, label %101, label %5, !dbg !3537

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 0, !dbg !3538
  %7 = load i64, i64* %6, align 8, !dbg !3538, !tbaa !3209
  %8 = uitofp i64 %7 to float, !dbg !3540
  %9 = uitofp i64 %3 to float, !dbg !3541
  %10 = fdiv float %8, %9, !dbg !3542
  %11 = fcmp ogt float %10, 1.500000e+00, !dbg !3543
  %12 = zext i1 %11 to i32, !dbg !3544
  %13 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 14, !dbg !3545
  %14 = load float, float* %13, align 8, !dbg !3545, !tbaa !3219
  %15 = fpext float %14 to double, !dbg !3547
  %16 = fcmp ogt double %15, 1.400000e+00, !dbg !3548
  br i1 %16, label %17, label %24, !dbg !3549

; <label>:17:                                     ; preds = %5
  %18 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 15, !dbg !3550
  %19 = load i64, i64* %18, align 8, !dbg !3550, !tbaa !3223
  %20 = icmp sgt i64 %19, 10485760, !dbg !3551
  %21 = select i1 %11, i32 2, i32 1, !dbg !3552
  %22 = select i1 %20, i32 %21, i32 %12, !dbg !3554
  %23 = zext i1 %20 to i32, !dbg !3554
  br label %24, !dbg !3554

; <label>:24:                                     ; preds = %17, %5
  %25 = phi i32 [ %12, %5 ], [ %22, %17 ], !dbg !3555
  %26 = phi i32 [ 0, %5 ], [ %23, %17 ], !dbg !3557
  %27 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 16, !dbg !3558
  %28 = load float, float* %27, align 8, !dbg !3558, !tbaa !3233
  %29 = fpext float %28 to double, !dbg !3560
  %30 = fcmp ogt double %29, 1.100000e+00, !dbg !3561
  br i1 %30, label %31, label %37, !dbg !3562

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 17, !dbg !3563
  %33 = load i64, i64* %32, align 8, !dbg !3563, !tbaa !3237
  %34 = icmp sgt i64 %33, 10485760, !dbg !3564
  %35 = zext i1 %34 to i32, !dbg !3565
  %36 = add nsw i32 %25, %35, !dbg !3565
  br label %37, !dbg !3565

; <label>:37:                                     ; preds = %31, %24
  %38 = phi i32 [ 0, %24 ], [ %35, %31 ], !dbg !3557
  %39 = phi i32 [ %25, %24 ], [ %36, %31 ], !dbg !3566
  %40 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 18, !dbg !3567
  %41 = load float, float* %40, align 8, !dbg !3567, !tbaa !3244
  %42 = fpext float %41 to double, !dbg !3569
  %43 = fcmp ogt double %42, 1.100000e+00, !dbg !3570
  br i1 %43, label %44, label %50, !dbg !3571

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 19, !dbg !3572
  %46 = load i64, i64* %45, align 8, !dbg !3572, !tbaa !3248
  %47 = icmp sgt i64 %46, 10485760, !dbg !3573
  %48 = zext i1 %47 to i32, !dbg !3574
  %49 = add nsw i32 %39, %48, !dbg !3574
  br label %50, !dbg !3574

; <label>:50:                                     ; preds = %44, %37
  %51 = phi i32 [ 0, %37 ], [ %48, %44 ], !dbg !3557
  %52 = phi i32 [ %39, %37 ], [ %49, %44 ], !dbg !3575
  %53 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 20, !dbg !3577
  %54 = load float, float* %53, align 8, !dbg !3577, !tbaa !3252
  %55 = fpext float %54 to double, !dbg !3579
  %56 = fcmp ogt double %55, 1.100000e+00, !dbg !3580
  br i1 %56, label %57, label %63, !dbg !3581

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 21, !dbg !3582
  %59 = load i64, i64* %58, align 8, !dbg !3582, !tbaa !3256
  %60 = icmp ugt i64 %59, 10485760, !dbg !3583
  %61 = zext i1 %60 to i32, !dbg !3584
  %62 = add nsw i32 %52, %61, !dbg !3584
  br label %63, !dbg !3584

; <label>:63:                                     ; preds = %57, %50
  %64 = phi i32 [ 0, %50 ], [ %61, %57 ], !dbg !3557
  %65 = phi i32 [ %52, %50 ], [ %62, %57 ], !dbg !3585
  %66 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3587, !tbaa !3270
  %67 = getelementptr inbounds %struct.list, %struct.list* %66, i64 0, i32 5, !dbg !3587
  %68 = load i64, i64* %67, align 8, !dbg !3587, !tbaa !3271
  %69 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !3589, !tbaa !3305
  %70 = getelementptr inbounds %struct.list, %struct.list* %69, i64 0, i32 5, !dbg !3589
  %71 = load i64, i64* %70, align 8, !dbg !3589, !tbaa !3271
  %72 = sub i64 %71, %68, !dbg !3590
  %73 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 5, !dbg !3592
  %74 = load i64, i64* %73, align 8, !dbg !3592, !tbaa !3333
  %75 = udiv i64 %74, %72, !dbg !3594
  %76 = icmp ugt i64 %75, 204800, !dbg !3595
  %77 = zext i1 %76 to i32, !dbg !3596
  %78 = add nsw i32 %65, %77, !dbg !3596
  %79 = icmp sgt i64 %68, 0, !dbg !3597
  br i1 %79, label %80, label %87, !dbg !3599

; <label>:80:                                     ; preds = %63
  %81 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 4, !dbg !3600
  %82 = load i64, i64* %81, align 8, !dbg !3600, !tbaa !3302
  %83 = udiv i64 %82, %68, !dbg !3601
  %84 = icmp ugt i64 %83, 10485760, !dbg !3602
  %85 = zext i1 %84 to i32, !dbg !3603
  %86 = add nsw i32 %78, %85, !dbg !3603
  br label %87, !dbg !3603

; <label>:87:                                     ; preds = %80, %63
  %88 = phi i32 [ 0, %63 ], [ %85, %80 ], !dbg !3557
  %89 = phi i32 [ %78, %63 ], [ %86, %80 ], !dbg !3604
  %90 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3606, !tbaa !3377
  %91 = getelementptr inbounds %struct.dict, %struct.dict* %90, i64 0, i32 2, i64 0, i32 3, !dbg !3606
  %92 = load i64, i64* %91, align 8, !dbg !3606, !tbaa !2847
  %93 = getelementptr inbounds %struct.dict, %struct.dict* %90, i64 0, i32 2, i64 1, i32 3, !dbg !3606
  %94 = load i64, i64* %93, align 8, !dbg !3606, !tbaa !2847
  %95 = add i64 %94, %92, !dbg !3606
  %96 = icmp ugt i64 %95, 1000, !dbg !3608
  br i1 %96, label %103, label %97

; <label>:97:                                     ; preds = %87
  %98 = icmp eq i32 %89, 0, !dbg !3609
  br i1 %98, label %99, label %103, !dbg !3611

; <label>:99:                                     ; preds = %97
  %100 = tail call i8* @sdsnew(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !3612
  br label %145, !dbg !3615

; <label>:101:                                    ; preds = %0
  %102 = tail call i8* @sdsnew(i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3616
  br label %145, !dbg !3619

; <label>:103:                                    ; preds = %97, %87
  %104 = phi i32 [ 1, %87 ], [ 0, %97 ]
  %105 = tail call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3620
  br i1 %11, label %106, label %108, !dbg !3622

; <label>:106:                                    ; preds = %103
  %107 = tail call i8* @sdscat(i8* %105, i8* getelementptr inbounds ([641 x i8], [641 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3623
  br label %108, !dbg !3626

; <label>:108:                                    ; preds = %103, %106
  %109 = phi i8* [ %107, %106 ], [ %105, %103 ], !dbg !3627
  %110 = icmp eq i32 %26, 0, !dbg !3628
  br i1 %110, label %113, label %111, !dbg !3630

; <label>:111:                                    ; preds = %108
  %112 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %109, i8* getelementptr inbounds ([627 x i8], [627 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3631
  br label %113, !dbg !3633

; <label>:113:                                    ; preds = %108, %111
  %114 = phi i8* [ %112, %111 ], [ %109, %108 ], !dbg !3634
  %115 = icmp eq i32 %38, 0, !dbg !3635
  br i1 %115, label %118, label %116, !dbg !3637

; <label>:116:                                    ; preds = %113
  %117 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %114, i8* getelementptr inbounds ([358 x i8], [358 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3638
  br label %118, !dbg !3640

; <label>:118:                                    ; preds = %113, %116
  %119 = phi i8* [ %117, %116 ], [ %114, %113 ], !dbg !3641
  %120 = icmp eq i32 %51, 0, !dbg !3642
  br i1 %120, label %123, label %121, !dbg !3644

; <label>:121:                                    ; preds = %118
  %122 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %119, i8* getelementptr inbounds ([379 x i8], [379 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !3645
  br label %123, !dbg !3647

; <label>:123:                                    ; preds = %118, %121
  %124 = phi i8* [ %122, %121 ], [ %119, %118 ], !dbg !3648
  %125 = icmp eq i32 %64, 0, !dbg !3649
  br i1 %125, label %128, label %126, !dbg !3651

; <label>:126:                                    ; preds = %123
  %127 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %124, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !3652
  br label %128, !dbg !3654

; <label>:128:                                    ; preds = %123, %126
  %129 = phi i8* [ %127, %126 ], [ %124, %123 ], !dbg !3655
  %130 = icmp eq i32 %88, 0, !dbg !3656
  br i1 %130, label %133, label %131, !dbg !3658

; <label>:131:                                    ; preds = %128
  %132 = tail call i8* @sdscat(i8* %129, i8* getelementptr inbounds ([545 x i8], [545 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !3659
  br label %133, !dbg !3661

; <label>:133:                                    ; preds = %128, %131
  %134 = phi i8* [ %132, %131 ], [ %129, %128 ], !dbg !3662
  br i1 %76, label %135, label %137, !dbg !3663

; <label>:135:                                    ; preds = %133
  %136 = tail call i8* @sdscat(i8* %134, i8* getelementptr inbounds ([583 x i8], [583 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !3664
  br label %137, !dbg !3667

; <label>:137:                                    ; preds = %133, %135
  %138 = phi i8* [ %136, %135 ], [ %134, %133 ], !dbg !3668
  %139 = icmp eq i32 %104, 0, !dbg !3669
  br i1 %139, label %142, label %140, !dbg !3671

; <label>:140:                                    ; preds = %137
  %141 = tail call i8* @sdscat(i8* %138, i8* getelementptr inbounds ([341 x i8], [341 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !3672
  br label %142, !dbg !3674

; <label>:142:                                    ; preds = %137, %140
  %143 = phi i8* [ %141, %140 ], [ %138, %137 ], !dbg !3675
  %144 = tail call i8* @sdscat(i8* %143, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !3676
  br label %145

; <label>:145:                                    ; preds = %101, %142, %99
  %146 = phi i8* [ %100, %99 ], [ %102, %101 ], [ %144, %142 ], !dbg !3627
  %147 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %1, i64 0, i32 23, !dbg !3679
  %148 = bitcast %struct.anon.9** %147 to i8**, !dbg !3679
  %149 = load i8*, i8** %148, align 8, !dbg !3679, !tbaa !3152
  tail call void @zfree(i8* %149) #8, !dbg !3680
  %150 = bitcast %struct.redisMemOverhead* %1 to i8*, !dbg !3681
  tail call void @zfree(i8* %150) #8, !dbg !3682
  ret i8* %146, !dbg !3683
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @objectSetLRUOrLFU(%struct.redisObject* nocapture, i64, i64, i64) local_unnamed_addr #0 !dbg !3684 {
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !3700, !tbaa !193
  %6 = and i32 %5, 2, !dbg !3701
  %7 = icmp eq i32 %6, 0, !dbg !3701
  br i1 %7, label %23, label %8, !dbg !3702

; <label>:8:                                      ; preds = %4
  %9 = icmp sgt i64 %1, -1, !dbg !3703
  br i1 %9, label %10, label %39, !dbg !3706

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i64 %1, 256, !dbg !3707
  br i1 %11, label %13, label %12, !dbg !3707

; <label>:12:                                     ; preds = %10
  tail call void @_serverAssert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 1216) #8, !dbg !3707
  tail call void @_exit(i32 1) #9, !dbg !3707
  unreachable, !dbg !3707

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @LFUGetTimeInMinutes() #8, !dbg !3709
  %15 = shl i64 %14, 8, !dbg !3710
  %16 = or i64 %15, %1, !dbg !3711
  %17 = trunc i64 %16 to i32, !dbg !3712
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !3713
  %19 = load i32, i32* %18, align 8, !dbg !3714
  %20 = shl i32 %17, 8, !dbg !3714
  %21 = and i32 %19, 255, !dbg !3714
  %22 = or i32 %20, %21, !dbg !3714
  store i32 %22, i32* %18, align 8, !dbg !3714
  br label %39, !dbg !3715

; <label>:23:                                     ; preds = %4
  %24 = icmp sgt i64 %2, -1, !dbg !3716
  br i1 %24, label %25, label %39, !dbg !3717

; <label>:25:                                     ; preds = %23
  %26 = sub nsw i64 %3, %2, !dbg !3718
  %27 = icmp slt i64 %26, 0, !dbg !3720
  br i1 %27, label %28, label %31, !dbg !3722

; <label>:28:                                     ; preds = %25
  %29 = add nsw i64 %3, 8388607, !dbg !3723
  %30 = srem i64 %29, 16777215, !dbg !3724
  br label %31, !dbg !3725

; <label>:31:                                     ; preds = %28, %25
  %32 = phi i64 [ %30, %28 ], [ %26, %25 ], !dbg !3726
  %33 = trunc i64 %32 to i32, !dbg !3727
  %34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !3728
  %35 = load i32, i32* %34, align 8, !dbg !3729
  %36 = shl i32 %33, 8, !dbg !3729
  %37 = and i32 %35, 255, !dbg !3729
  %38 = or i32 %37, %36, !dbg !3729
  store i32 %38, i32* %34, align 8, !dbg !3729
  br label %39, !dbg !3730

; <label>:39:                                     ; preds = %23, %31, %8, %13
  ret void, !dbg !3731
}

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @objectCommandLookup(%struct.client* nocapture readonly, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !3732 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3741
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !3741, !tbaa !3743
  %5 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %4, i64 0, i32 0, !dbg !3744
  %6 = load %struct.dict*, %struct.dict** %5, align 8, !dbg !3744, !tbaa !3409
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !3745
  %8 = load i8*, i8** %7, align 8, !dbg !3745, !tbaa !182
  %9 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8) #8, !dbg !3746
  %10 = icmp eq %struct.dictEntry* %9, null, !dbg !3748
  br i1 %10, label %15, label %11, !dbg !3749

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 1, i32 0, !dbg !3750
  %13 = bitcast i8** %12 to %struct.redisObject**, !dbg !3750
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !3750, !tbaa !290
  br label %15, !dbg !3751

; <label>:15:                                     ; preds = %2, %11
  %16 = phi %struct.redisObject* [ %14, %11 ], [ null, %2 ], !dbg !3752
  ret %struct.redisObject* %16, !dbg !3753
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @objectCommandLookupOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !3754 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3768
  %5 = load %struct.redisDb*, %struct.redisDb** %4, align 8, !dbg !3768, !tbaa !3743
  %6 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %5, i64 0, i32 0, !dbg !3769
  %7 = load %struct.dict*, %struct.dict** %6, align 8, !dbg !3769, !tbaa !3409
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !3770
  %9 = load i8*, i8** %8, align 8, !dbg !3770, !tbaa !182
  %10 = tail call %struct.dictEntry* @dictFind(%struct.dict* %7, i8* %9) #8, !dbg !3771
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !3773
  br i1 %11, label %17, label %12, !dbg !3774

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %10, i64 0, i32 1, i32 0, !dbg !3775
  %14 = bitcast i8** %13 to %struct.redisObject**, !dbg !3775
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !3775, !tbaa !290
  %16 = icmp eq %struct.redisObject* %15, null, !dbg !3777
  br i1 %16, label %17, label %18, !dbg !3779

; <label>:17:                                     ; preds = %3, %12
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %2) #8, !dbg !3780
  br label %18, !dbg !3780

; <label>:18:                                     ; preds = %12, %17
  %19 = phi %struct.redisObject* [ %15, %12 ], [ null, %17 ]
  ret %struct.redisObject* %19, !dbg !3781
}

; Function Attrs: noredzone nounwind
define dso_local void @objectCommand(%struct.client*) local_unnamed_addr #0 !dbg !3782 {
  %2 = alloca [5 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3793
  %4 = load i32, i32* %3, align 8, !dbg !3793, !tbaa !3794
  %5 = icmp eq i32 %4, 2, !dbg !3795
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !3796, !tbaa !3798
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !3796, !tbaa !297
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !dbg !3796, !tbaa !182
  br i1 %5, label %12, label %23, !dbg !3799

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !3800
  %14 = icmp eq i32 %13, 0, !dbg !3800
  br i1 %14, label %15, label %23, !dbg !3801

; <label>:15:                                     ; preds = %12
  %16 = bitcast [5 x i8*]* %2 to i8*, !dbg !3802
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #10, !dbg !3802
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %18 = bitcast i8** %17 to i64*, !dbg !3803
  store i64 0, i64* %18, align 16, !dbg !3803
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !3803
  %20 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !3803
  store <2 x i8*> <i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.46, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3803
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !3803
  %22 = bitcast i8** %21 to <2 x i8*>*, !dbg !3803
  store <2 x i8*> <i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.48, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !3803
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %19) #8, !dbg !3804
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #10, !dbg !3805
  br label %141, !dbg !3806

; <label>:23:                                     ; preds = %1, %12
  %24 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #12, !dbg !3807
  %25 = icmp eq i32 %24, 0, !dbg !3807
  %26 = icmp eq i32 %4, 3, !dbg !3808
  %27 = and i1 %26, %25, !dbg !3809
  br i1 %27, label %28, label %50, !dbg !3809

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3810
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !3810, !tbaa !297
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3813, !tbaa !3814
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3822
  %33 = load %struct.redisDb*, %struct.redisDb** %32, align 8, !dbg !3822, !tbaa !3743
  %34 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %33, i64 0, i32 0, !dbg !3823
  %35 = load %struct.dict*, %struct.dict** %34, align 8, !dbg !3823, !tbaa !3409
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %30, i64 0, i32 2, !dbg !3824
  %37 = load i8*, i8** %36, align 8, !dbg !3824, !tbaa !182
  %38 = tail call %struct.dictEntry* @dictFind(%struct.dict* %35, i8* %37) #8, !dbg !3825
  %39 = icmp eq %struct.dictEntry* %38, null, !dbg !3827
  br i1 %39, label %45, label %40, !dbg !3828

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i64 0, i32 1, i32 0, !dbg !3829
  %42 = bitcast i8** %41 to %struct.redisObject**, !dbg !3829
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !3829, !tbaa !290
  %44 = icmp eq %struct.redisObject* %43, null, !dbg !3831
  br i1 %44, label %45, label %46, !dbg !3832

; <label>:45:                                     ; preds = %28, %40
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #8, !dbg !3833
  br label %141, !dbg !3835

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 1, !dbg !3836
  %48 = load i32, i32* %47, align 4, !dbg !3836, !tbaa !190
  %49 = sext i32 %48 to i64, !dbg !3837
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %49) #8, !dbg !3838
  br label %141, !dbg !3839

; <label>:50:                                     ; preds = %23
  %51 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !3840
  %52 = icmp eq i32 %51, 0, !dbg !3840
  %53 = and i1 %26, %52, !dbg !3842
  br i1 %53, label %54, label %81, !dbg !3842

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3843
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !3843, !tbaa !297
  %57 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3846, !tbaa !3814
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3854
  %59 = load %struct.redisDb*, %struct.redisDb** %58, align 8, !dbg !3854, !tbaa !3743
  %60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %59, i64 0, i32 0, !dbg !3855
  %61 = load %struct.dict*, %struct.dict** %60, align 8, !dbg !3855, !tbaa !3409
  %62 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !3856
  %63 = load i8*, i8** %62, align 8, !dbg !3856, !tbaa !182
  %64 = tail call %struct.dictEntry* @dictFind(%struct.dict* %61, i8* %63) #8, !dbg !3857
  %65 = icmp eq %struct.dictEntry* %64, null, !dbg !3859
  br i1 %65, label %71, label %66, !dbg !3860

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %64, i64 0, i32 1, i32 0, !dbg !3861
  %68 = bitcast i8** %67 to %struct.redisObject**, !dbg !3861
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !3861, !tbaa !290
  %70 = icmp eq %struct.redisObject* %69, null, !dbg !3863
  br i1 %70, label %71, label %72, !dbg !3864

; <label>:71:                                     ; preds = %54, %66
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %57) #8, !dbg !3865
  br label %141, !dbg !3866

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %69, i64 0, i32 0, !dbg !3867
  %74 = load i32, i32* %73, align 8, !dbg !3867
  %75 = lshr i32 %74, 4, !dbg !3867
  %76 = and i32 %75, 15, !dbg !3870
  %77 = xor i32 %76, 8, !dbg !3870
  %78 = zext i32 %77 to i64, !dbg !3870
  %79 = getelementptr inbounds [16 x i8*], [16 x i8*]* @switch.table.objectCommand, i64 0, i64 %78, !dbg !3870
  %80 = load i8*, i8** %79, align 8, !dbg !3870
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* nonnull %80) #8, !dbg !3871
  br label %141, !dbg !3872

; <label>:81:                                     ; preds = %50
  %82 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #12, !dbg !3873
  %83 = icmp eq i32 %82, 0, !dbg !3873
  %84 = and i1 %26, %83, !dbg !3875
  br i1 %84, label %85, label %111, !dbg !3875

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3876
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !3876, !tbaa !297
  %88 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3879, !tbaa !3814
  %89 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3887
  %90 = load %struct.redisDb*, %struct.redisDb** %89, align 8, !dbg !3887, !tbaa !3743
  %91 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %90, i64 0, i32 0, !dbg !3888
  %92 = load %struct.dict*, %struct.dict** %91, align 8, !dbg !3888, !tbaa !3409
  %93 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %87, i64 0, i32 2, !dbg !3889
  %94 = load i8*, i8** %93, align 8, !dbg !3889, !tbaa !182
  %95 = tail call %struct.dictEntry* @dictFind(%struct.dict* %92, i8* %94) #8, !dbg !3890
  %96 = icmp eq %struct.dictEntry* %95, null, !dbg !3892
  br i1 %96, label %102, label %97, !dbg !3893

; <label>:97:                                     ; preds = %85
  %98 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %95, i64 0, i32 1, i32 0, !dbg !3894
  %99 = bitcast i8** %98 to %struct.redisObject**, !dbg !3894
  %100 = load %struct.redisObject*, %struct.redisObject** %99, align 8, !dbg !3894, !tbaa !290
  %101 = icmp eq %struct.redisObject* %100, null, !dbg !3896
  br i1 %101, label %102, label %103, !dbg !3897

; <label>:102:                                    ; preds = %85, %97
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %88) #8, !dbg !3898
  br label %141, !dbg !3899

; <label>:103:                                    ; preds = %97
  %104 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !3900, !tbaa !193
  %105 = and i32 %104, 2, !dbg !3902
  %106 = icmp eq i32 %105, 0, !dbg !3902
  br i1 %106, label %108, label %107, !dbg !3903

; <label>:107:                                    ; preds = %103
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.52, i64 0, i64 0)) #8, !dbg !3904
  br label %141, !dbg !3906

; <label>:108:                                    ; preds = %103
  %109 = tail call i64 @estimateObjectIdleTime(%struct.redisObject* nonnull %100) #8, !dbg !3907
  %110 = udiv i64 %109, 1000, !dbg !3908
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %110) #8, !dbg !3909
  br label %141, !dbg !3910

; <label>:111:                                    ; preds = %81
  %112 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #12, !dbg !3911
  %113 = icmp eq i32 %112, 0, !dbg !3911
  %114 = and i1 %26, %113, !dbg !3913
  br i1 %114, label %115, label %140, !dbg !3913

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3914
  %117 = load %struct.redisObject*, %struct.redisObject** %116, align 8, !dbg !3914, !tbaa !297
  %118 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !3917, !tbaa !3814
  %119 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3925
  %120 = load %struct.redisDb*, %struct.redisDb** %119, align 8, !dbg !3925, !tbaa !3743
  %121 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %120, i64 0, i32 0, !dbg !3926
  %122 = load %struct.dict*, %struct.dict** %121, align 8, !dbg !3926, !tbaa !3409
  %123 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %117, i64 0, i32 2, !dbg !3927
  %124 = load i8*, i8** %123, align 8, !dbg !3927, !tbaa !182
  %125 = tail call %struct.dictEntry* @dictFind(%struct.dict* %122, i8* %124) #8, !dbg !3928
  %126 = icmp eq %struct.dictEntry* %125, null, !dbg !3930
  br i1 %126, label %132, label %127, !dbg !3931

; <label>:127:                                    ; preds = %115
  %128 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %125, i64 0, i32 1, i32 0, !dbg !3932
  %129 = bitcast i8** %128 to %struct.redisObject**, !dbg !3932
  %130 = load %struct.redisObject*, %struct.redisObject** %129, align 8, !dbg !3932, !tbaa !290
  %131 = icmp eq %struct.redisObject* %130, null, !dbg !3934
  br i1 %131, label %132, label %133, !dbg !3935

; <label>:132:                                    ; preds = %115, %127
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %118) #8, !dbg !3936
  br label %141, !dbg !3937

; <label>:133:                                    ; preds = %127
  %134 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 228), align 8, !dbg !3938, !tbaa !193
  %135 = and i32 %134, 2, !dbg !3940
  %136 = icmp eq i32 %135, 0, !dbg !3940
  br i1 %136, label %137, label %138, !dbg !3941

; <label>:137:                                    ; preds = %133
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !3942
  br label %141, !dbg !3944

; <label>:138:                                    ; preds = %133
  %139 = tail call i64 @LFUDecrAndReturn(%struct.redisObject* nonnull %130) #8, !dbg !3945
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %139) #8, !dbg !3946
  br label %141, !dbg !3947

; <label>:140:                                    ; preds = %111
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #8, !dbg !3948
  br label %141

; <label>:141:                                    ; preds = %132, %102, %71, %45, %15, %72, %138, %140, %108, %46, %137, %107
  ret void, !dbg !3950
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #7

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
define dso_local void @memoryCommand(%struct.client*) local_unnamed_addr #0 !dbg !3951 {
  %2 = alloca i64, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3980
  %6 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !3980, !tbaa !3798
  %7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 1, !dbg !3981
  %8 = load %struct.redisObject*, %struct.redisObject** %7, align 8, !dbg !3981, !tbaa !297
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !3982
  %10 = load i8*, i8** %9, align 8, !dbg !3982, !tbaa !182
  %11 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !3983
  %12 = icmp eq i32 %11, 0, !dbg !3983
  br i1 %12, label %13, label %24, !dbg !3984

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3985
  %15 = load i32, i32* %14, align 8, !dbg !3985, !tbaa !3794
  %16 = icmp eq i32 %15, 2, !dbg !3986
  br i1 %16, label %17, label %24, !dbg !3987

; <label>:17:                                     ; preds = %13
  %18 = bitcast [6 x i8*]* %3 to i8*, !dbg !3988
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #10, !dbg !3988
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 48, i1 false), !dbg !3989
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0, !dbg !3989
  %20 = bitcast [6 x i8*]* %3 to <2 x i8*>*, !dbg !3989
  store <2 x i8*> <i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3989
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 2, !dbg !3989
  %22 = bitcast i8** %21 to <2 x i8*>*, !dbg !3989
  store <2 x i8*> <i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %22, align 16, !dbg !3989
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 4, !dbg !3989
  store i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.59, i64 0, i64 0), i8** %23, align 16, !dbg !3989
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %19) #8, !dbg !3990
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #10, !dbg !3991
  br label %103, !dbg !3992

; <label>:24:                                     ; preds = %1, %13
  %25 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #12, !dbg !3993
  %26 = icmp eq i32 %25, 0, !dbg !3993
  br i1 %26, label %27, label %104, !dbg !3994

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3995
  %29 = load i32, i32* %28, align 8, !dbg !3995, !tbaa !3794
  %30 = icmp sgt i32 %29, 2, !dbg !3996
  br i1 %30, label %31, label %104, !dbg !3997

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i32 %29, 3, !dbg !3999
  br i1 %32, label %78, label %33, !dbg !4001

; <label>:33:                                     ; preds = %31
  %34 = bitcast i64* %2 to i8*
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 3, !dbg !4002
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !4002, !tbaa !297
  %37 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %36, i64 0, i32 2, !dbg !4005
  %38 = load i8*, i8** %37, align 8, !dbg !4005, !tbaa !182
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #12, !dbg !4006
  %40 = icmp eq i32 %39, 0, !dbg !4006
  br i1 %40, label %41, label %72, !dbg !4007

; <label>:41:                                     ; preds = %33, %64
  %42 = phi i32 [ %61, %64 ], [ %29, %33 ]
  %43 = phi i64 [ %60, %64 ], [ 3, %33 ]
  %44 = phi %struct.redisObject** [ %65, %64 ], [ %6, %33 ]
  %45 = add nuw nsw i64 %43, 1, !dbg !4008
  %46 = trunc i64 %45 to i32, !dbg !4009
  %47 = icmp sgt i32 %42, %46, !dbg !4009
  br i1 %47, label %48, label %72, !dbg !4010

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 %45, !dbg !4011
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !4011, !tbaa !297
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #10, !dbg !4018
  %51 = call i32 @getLongLongFromObject(%struct.redisObject* %50, i64* nonnull %2) #8, !dbg !4020
  %52 = icmp eq i32 %51, 0, !dbg !4021
  br i1 %52, label %54, label %53, !dbg !4022

; <label>:53:                                     ; preds = %48
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !4023
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #10, !dbg !4024
  br label %103, !dbg !4025

; <label>:54:                                     ; preds = %48
  %55 = load i64, i64* %2, align 8, !dbg !4026, !tbaa !1726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #10, !dbg !4024
  %56 = icmp slt i64 %55, 0, !dbg !4028
  br i1 %56, label %57, label %59, !dbg !4030

; <label>:57:                                     ; preds = %54
  %58 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4031, !tbaa !4033
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %58) #8, !dbg !4034
  br label %103

; <label>:59:                                     ; preds = %54
  %60 = add nuw i64 %43, 2, !dbg !4035
  %61 = load i32, i32* %28, align 8, !dbg !4036, !tbaa !3794
  %62 = trunc i64 %60 to i32, !dbg !3999
  %63 = icmp sgt i32 %61, %62, !dbg !3999
  br i1 %63, label %64, label %74, !dbg !4001, !llvm.loop !4037

; <label>:64:                                     ; preds = %59
  %65 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !4039, !tbaa !3798
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %65, i64 %60, !dbg !4002
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !4002, !tbaa !297
  %68 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !4005
  %69 = load i8*, i8** %68, align 8, !dbg !4005, !tbaa !182
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #12, !dbg !4006
  %71 = icmp eq i32 %70, 0, !dbg !4006
  br i1 %71, label %41, label %72, !dbg !4007

; <label>:72:                                     ; preds = %41, %64, %33
  %73 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4040, !tbaa !4033
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %73) #8, !dbg !4042
  br label %103

; <label>:74:                                     ; preds = %59
  %75 = icmp eq i64 %55, 0, !dbg !4043
  %76 = select i1 %75, i64 9223372036854775807, i64 %55, !dbg !4045
  %77 = load %struct.redisObject**, %struct.redisObject*** %5, align 8, !dbg !4046, !tbaa !3798
  br label %78, !dbg !4001

; <label>:78:                                     ; preds = %31, %74
  %79 = phi %struct.redisObject** [ %77, %74 ], [ %6, %31 ], !dbg !4046
  %80 = phi i64 [ %76, %74 ], [ 5, %31 ], !dbg !4048
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4049
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !4049, !tbaa !3743
  %83 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i64 0, i32 0, !dbg !4050
  %84 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !4050, !tbaa !3409
  %85 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 2, !dbg !4051
  %86 = load %struct.redisObject*, %struct.redisObject** %85, align 8, !dbg !4051, !tbaa !297
  %87 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %86, i64 0, i32 2, !dbg !4052
  %88 = load i8*, i8** %87, align 8, !dbg !4052, !tbaa !182
  %89 = call %struct.dictEntry* @dictFind(%struct.dict* %84, i8* %88) #8, !dbg !4053
  %90 = icmp eq %struct.dictEntry* %89, null, !dbg !4055
  br i1 %90, label %91, label %93, !dbg !4056

; <label>:91:                                     ; preds = %78
  %92 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !4057, !tbaa !3814
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %92) #8, !dbg !4059
  br label %103, !dbg !4060

; <label>:93:                                     ; preds = %78
  %94 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %89, i64 0, i32 1, i32 0, !dbg !4061
  %95 = bitcast i8** %94 to %struct.redisObject**, !dbg !4061
  %96 = load %struct.redisObject*, %struct.redisObject** %95, align 8, !dbg !4061, !tbaa !290
  %97 = call i64 @objectComputeSize(%struct.redisObject* %96, i64 %80) #11, !dbg !4062
  %98 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %89, i64 0, i32 0, !dbg !4064
  %99 = load i8*, i8** %98, align 8, !dbg !4064, !tbaa !2833
  %100 = call i64 @sdsAllocSize(i8* %99) #8, !dbg !4065
  %101 = add i64 %97, 24, !dbg !4066
  %102 = add i64 %101, %100, !dbg !4067
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %102) #8, !dbg !4068
  br label %103, !dbg !4069

; <label>:103:                                    ; preds = %17, %140, %212, %223, %221, %204, %53, %57, %72, %93, %91
  ret void

; <label>:104:                                    ; preds = %24, %27
  %105 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0)) #12, !dbg !4070
  %106 = icmp eq i32 %105, 0, !dbg !4070
  br i1 %106, label %107, label %197, !dbg !4071

; <label>:107:                                    ; preds = %104
  %108 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4072
  %109 = load i32, i32* %108, align 8, !dbg !4072, !tbaa !3794
  %110 = icmp eq i32 %109, 2, !dbg !4073
  br i1 %110, label %111, label %197, !dbg !4074

; <label>:111:                                    ; preds = %107
  %112 = tail call %struct.redisMemOverhead* @getMemoryOverheadData() #11, !dbg !4075
  %113 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 22, !dbg !4077
  %114 = load i64, i64* %113, align 8, !dbg !4077, !tbaa !3419
  %115 = shl i64 %114, 1, !dbg !4078
  %116 = add i64 %115, 50, !dbg !4078
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %116) #8, !dbg !4079
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !4080
  %117 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 0, !dbg !4081
  %118 = load i64, i64* %117, align 8, !dbg !4081, !tbaa !3209
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %118) #8, !dbg !4082
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !4083
  %119 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 1, !dbg !4084
  %120 = load i64, i64* %119, align 8, !dbg !4084, !tbaa !3199
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %120) #8, !dbg !4085
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !4086
  %121 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 2, !dbg !4087
  %122 = load i64, i64* %121, align 8, !dbg !4087, !tbaa !3204
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %122) #8, !dbg !4088
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !4089
  %123 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 3, !dbg !4090
  %124 = load i64, i64* %123, align 8, !dbg !4090, !tbaa !3267
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %124) #8, !dbg !4091
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !4092
  %125 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 4, !dbg !4093
  %126 = load i64, i64* %125, align 8, !dbg !4093, !tbaa !3302
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %126) #8, !dbg !4094
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !4095
  %127 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 5, !dbg !4096
  %128 = load i64, i64* %127, align 8, !dbg !4096, !tbaa !3333
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %128) #8, !dbg !4097
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !4098
  %129 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 6, !dbg !4099
  %130 = load i64, i64* %129, align 8, !dbg !4099, !tbaa !3372
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %130) #8, !dbg !4100
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !4101
  %131 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 7, !dbg !4102
  %132 = load i64, i64* %131, align 8, !dbg !4102, !tbaa !3399
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %132) #8, !dbg !4103
  %133 = load i64, i64* %113, align 8, !dbg !4105, !tbaa !3419
  %134 = icmp eq i64 %133, 0, !dbg !4106
  br i1 %134, label %135, label %137, !dbg !4107

; <label>:135:                                    ; preds = %111
  %136 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 23, !dbg !4108
  br label %140, !dbg !4107

; <label>:137:                                    ; preds = %111
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %139 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 23
  br label %182, !dbg !4107

; <label>:140:                                    ; preds = %182, %135
  %141 = phi %struct.anon.9** [ %136, %135 ], [ %139, %182 ], !dbg !4108
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !4110
  %142 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 8, !dbg !4111
  %143 = load i64, i64* %142, align 8, !dbg !4111, !tbaa !3455
  call void @addReplyLongLong(%struct.client* %0, i64 %143) #8, !dbg !4112
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !4113
  %144 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 10, !dbg !4114
  %145 = load i64, i64* %144, align 8, !dbg !4114, !tbaa !3416
  call void @addReplyLongLong(%struct.client* %0, i64 %145) #8, !dbg !4115
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !4116
  %146 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 11, !dbg !4117
  %147 = load i64, i64* %146, align 8, !dbg !4117, !tbaa !3486
  call void @addReplyLongLong(%struct.client* %0, i64 %147) #8, !dbg !4118
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0)) #8, !dbg !4119
  %148 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 9, !dbg !4120
  %149 = load i64, i64* %148, align 8, !dbg !4120, !tbaa !3459
  call void @addReplyLongLong(%struct.client* %0, i64 %149) #8, !dbg !4121
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !4122
  %150 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 12, !dbg !4123
  %151 = load float, float* %150, align 8, !dbg !4123, !tbaa !3480
  %152 = fpext float %151 to double, !dbg !4124
  call void @addReplyDouble(%struct.client* %0, double %152) #8, !dbg !4125
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !4126
  %153 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 13, !dbg !4127
  %154 = load float, float* %153, align 4, !dbg !4127, !tbaa !3467
  %155 = fpext float %154 to double, !dbg !4128
  call void @addReplyDouble(%struct.client* %0, double %155) #8, !dbg !4129
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !4130
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 2), align 8, !dbg !4131, !tbaa !3228
  call void @addReplyLongLong(%struct.client* %0, i64 %156) #8, !dbg !4132
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !4133
  %157 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 3), align 8, !dbg !4134, !tbaa !3225
  call void @addReplyLongLong(%struct.client* %0, i64 %157) #8, !dbg !4135
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !4136
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 94, i32 4), align 8, !dbg !4137, !tbaa !3239
  call void @addReplyLongLong(%struct.client* %0, i64 %158) #8, !dbg !4138
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !4139
  %159 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 16, !dbg !4140
  %160 = load float, float* %159, align 8, !dbg !4140, !tbaa !3233
  %161 = fpext float %160 to double, !dbg !4141
  call void @addReplyDouble(%struct.client* %0, double %161) #8, !dbg !4142
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !4143
  %162 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 17, !dbg !4144
  %163 = load i64, i64* %162, align 8, !dbg !4144, !tbaa !3237
  call void @addReplyLongLong(%struct.client* %0, i64 %163) #8, !dbg !4145
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !4146
  %164 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 18, !dbg !4147
  %165 = load float, float* %164, align 8, !dbg !4147, !tbaa !3244
  %166 = fpext float %165 to double, !dbg !4148
  call void @addReplyDouble(%struct.client* %0, double %166) #8, !dbg !4149
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !4150
  %167 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 19, !dbg !4151
  %168 = load i64, i64* %167, align 8, !dbg !4151, !tbaa !3248
  call void @addReplyLongLong(%struct.client* %0, i64 %168) #8, !dbg !4152
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !4153
  %169 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 20, !dbg !4154
  %170 = load float, float* %169, align 8, !dbg !4154, !tbaa !3252
  %171 = fpext float %170 to double, !dbg !4155
  call void @addReplyDouble(%struct.client* %0, double %171) #8, !dbg !4156
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !4157
  %172 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 21, !dbg !4158
  %173 = load i64, i64* %172, align 8, !dbg !4158, !tbaa !3256
  call void @addReplyLongLong(%struct.client* %0, i64 %173) #8, !dbg !4159
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !4160
  %174 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 14, !dbg !4161
  %175 = load float, float* %174, align 8, !dbg !4161, !tbaa !3219
  %176 = fpext float %175 to double, !dbg !4162
  call void @addReplyDouble(%struct.client* %0, double %176) #8, !dbg !4163
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !4164
  %177 = getelementptr inbounds %struct.redisMemOverhead, %struct.redisMemOverhead* %112, i64 0, i32 15, !dbg !4165
  %178 = load i64, i64* %177, align 8, !dbg !4165, !tbaa !3223
  call void @addReplyLongLong(%struct.client* %0, i64 %178) #8, !dbg !4166
  %179 = bitcast %struct.anon.9** %141 to i8**, !dbg !4108
  %180 = load i8*, i8** %179, align 8, !dbg !4108, !tbaa !3152
  call void @zfree(i8* %180) #8, !dbg !4168
  %181 = bitcast %struct.redisMemOverhead* %112 to i8*, !dbg !4169
  call void @zfree(i8* %181) #8, !dbg !4170
  br label %103, !dbg !4171

; <label>:182:                                    ; preds = %137, %182
  %183 = phi i64 [ 0, %137 ], [ %194, %182 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %138) #10, !dbg !4172
  %184 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4174, !tbaa !3152
  %185 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %184, i64 %183, i32 0, !dbg !4175
  %186 = load i64, i64* %185, align 8, !dbg !4175, !tbaa !3426
  %187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %138, i64 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i64 %186) #8, !dbg !4176
  call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %138) #8, !dbg !4177
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #8, !dbg !4178
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !4179
  %188 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4180, !tbaa !3152
  %189 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %188, i64 %183, i32 1, !dbg !4181
  %190 = load i64, i64* %189, align 8, !dbg !4181, !tbaa !3435
  call void @addReplyLongLong(%struct.client* %0, i64 %190) #8, !dbg !4182
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !4183
  %191 = load %struct.anon.9*, %struct.anon.9** %139, align 8, !dbg !4184, !tbaa !3152
  %192 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %191, i64 %183, i32 2, !dbg !4185
  %193 = load i64, i64* %192, align 8, !dbg !4185, !tbaa !3445
  call void @addReplyLongLong(%struct.client* %0, i64 %193) #8, !dbg !4186
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %138) #10, !dbg !4187
  %194 = add nuw i64 %183, 1, !dbg !4188
  %195 = load i64, i64* %113, align 8, !dbg !4105, !tbaa !3419
  %196 = icmp ult i64 %194, %195, !dbg !4106
  br i1 %196, label %182, label %140, !dbg !4107, !llvm.loop !4189

; <label>:197:                                    ; preds = %104, %107
  %198 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0)) #12, !dbg !4191
  %199 = icmp eq i32 %198, 0, !dbg !4191
  br i1 %199, label %200, label %205, !dbg !4192

; <label>:200:                                    ; preds = %197
  %201 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4193
  %202 = load i32, i32* %201, align 8, !dbg !4193, !tbaa !3794
  %203 = icmp eq i32 %202, 2, !dbg !4194
  br i1 %203, label %204, label %205, !dbg !4195

; <label>:204:                                    ; preds = %200
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !4196
  br label %103, !dbg !4198

; <label>:205:                                    ; preds = %197, %200
  %206 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0)) #12, !dbg !4199
  %207 = icmp eq i32 %206, 0, !dbg !4199
  br i1 %207, label %208, label %214, !dbg !4200

; <label>:208:                                    ; preds = %205
  %209 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4201
  %210 = load i32, i32* %209, align 8, !dbg !4201, !tbaa !3794
  %211 = icmp eq i32 %210, 2, !dbg !4202
  br i1 %211, label %212, label %214, !dbg !4203

; <label>:212:                                    ; preds = %208
  %213 = tail call i8* @getMemoryDoctorReport() #11, !dbg !4204
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %213) #8, !dbg !4206
  br label %103, !dbg !4207

; <label>:214:                                    ; preds = %205, %208
  %215 = tail call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0)) #12, !dbg !4208
  %216 = icmp eq i32 %215, 0, !dbg !4208
  br i1 %216, label %217, label %223, !dbg !4210

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4211
  %219 = load i32, i32* %218, align 8, !dbg !4211, !tbaa !3794
  %220 = icmp eq i32 %219, 2, !dbg !4212
  br i1 %220, label %221, label %223, !dbg !4213

; <label>:221:                                    ; preds = %217
  %222 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4214, !tbaa !4216
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %222) #8, !dbg !4217
  br label %103, !dbg !4218

; <label>:223:                                    ; preds = %214, %217
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.95, i64 0, i64 0), i8* %10) #8, !dbg !4219
  br label %103
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
attributes #5 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin noredzone }
attributes #12 = { nobuiltin noredzone nounwind readonly }

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
!253 = !DILocation(line: 78, column: 5, scope: !222)
!254 = distinct !DISubprogram(name: "createEmbeddedStringObject", scope: !1, file: !1, line: 84, type: !223, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DILocalVariable(name: "ptr", arg: 1, scope: !254, file: !1, line: 84, type: !74)
!257 = !DILocalVariable(name: "len", arg: 2, scope: !254, file: !1, line: 84, type: !77)
!258 = !DILocalVariable(name: "o", scope: !254, file: !1, line: 85, type: !115)
!259 = !DILocalVariable(name: "sh", scope: !254, file: !1, line: 86, type: !125)
!260 = !DILocation(line: 84, column: 46, scope: !254)
!261 = !DILocation(line: 84, column: 58, scope: !254)
!262 = !DILocation(line: 85, column: 62, scope: !254)
!263 = !DILocation(line: 85, column: 15, scope: !254)
!264 = !DILocation(line: 85, column: 11, scope: !254)
!265 = !DILocation(line: 86, column: 35, scope: !254)
!266 = !DILocation(line: 86, column: 21, scope: !254)
!267 = !DILocation(line: 88, column: 8, scope: !254)
!268 = !DILocation(line: 88, column: 13, scope: !254)
!269 = !DILocation(line: 89, column: 17, scope: !254)
!270 = !DILocation(line: 90, column: 16, scope: !254)
!271 = !DILocation(line: 90, column: 8, scope: !254)
!272 = !DILocation(line: 90, column: 12, scope: !254)
!273 = !DILocation(line: 91, column: 8, scope: !254)
!274 = !DILocation(line: 91, column: 17, scope: !254)
!275 = !DILocation(line: 92, column: 16, scope: !276)
!276 = distinct !DILexicalBlock(scope: !254, file: !1, line: 92, column: 9)
!277 = !DILocation(line: 92, column: 33, scope: !276)
!278 = !DILocation(line: 92, column: 9, scope: !254)
!279 = !DILocation(line: 93, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 92, column: 55)
!281 = !DILocation(line: 93, column: 18, scope: !280)
!282 = !DILocation(line: 93, column: 16, scope: !280)
!283 = !DILocation(line: 94, column: 5, scope: !280)
!284 = !DILocation(line: 95, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !276, file: !1, line: 94, column: 12)
!286 = !DILocation(line: 95, column: 16, scope: !285)
!287 = !DILocation(line: 0, scope: !280)
!288 = !DILocation(line: 98, column: 15, scope: !254)
!289 = !DILocation(line: 98, column: 13, scope: !254)
!290 = !{!185, !185, i64 0}
!291 = !DILocation(line: 99, column: 9, scope: !254)
!292 = !DILocation(line: 99, column: 15, scope: !254)
!293 = !DILocation(line: 100, column: 9, scope: !254)
!294 = !DILocation(line: 100, column: 15, scope: !254)
!295 = !DILocation(line: 101, column: 16, scope: !296)
!296 = distinct !DILexicalBlock(scope: !254, file: !1, line: 101, column: 9)
!297 = !{!187, !187, i64 0}
!298 = !DILocation(line: 101, column: 13, scope: !296)
!299 = !DILocation(line: 101, column: 9, scope: !254)
!300 = !DILocation(line: 102, column: 9, scope: !296)
!301 = !DILocation(line: 102, column: 22, scope: !296)
!302 = !DILocation(line: 103, column: 14, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 103, column: 14)
!304 = !DILocation(line: 103, column: 14, scope: !296)
!305 = !DILocation(line: 104, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 103, column: 19)
!307 = !DILocation(line: 105, column: 9, scope: !306)
!308 = !DILocation(line: 105, column: 22, scope: !306)
!309 = !DILocation(line: 106, column: 5, scope: !306)
!310 = !DILocation(line: 107, column: 29, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !1, line: 106, column: 12)
!312 = !DILocation(line: 107, column: 9, scope: !311)
!313 = !DILocation(line: 109, column: 5, scope: !254)
!314 = distinct !DISubprogram(name: "createStringObject", scope: !1, file: !1, line: 119, type: !223, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !315)
!315 = !{!316, !317}
!316 = !DILocalVariable(name: "ptr", arg: 1, scope: !314, file: !1, line: 119, type: !74)
!317 = !DILocalVariable(name: "len", arg: 2, scope: !314, file: !1, line: 119, type: !77)
!318 = !DILocation(line: 119, column: 38, scope: !314)
!319 = !DILocation(line: 119, column: 50, scope: !314)
!320 = !DILocation(line: 120, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !1, line: 120, column: 9)
!322 = !DILocation(line: 120, column: 9, scope: !314)
!323 = !DILocation(line: 121, column: 16, scope: !321)
!324 = !DILocation(line: 121, column: 9, scope: !321)
!325 = !DILocation(line: 77, column: 41, scope: !222, inlinedAt: !326)
!326 = distinct !DILocation(line: 123, column: 16, scope: !321)
!327 = !DILocation(line: 77, column: 53, scope: !222, inlinedAt: !326)
!328 = !DILocation(line: 78, column: 37, scope: !222, inlinedAt: !326)
!329 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !330)
!330 = distinct !DILocation(line: 78, column: 12, scope: !222, inlinedAt: !326)
!331 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !330)
!332 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !330)
!333 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !330)
!334 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !330)
!335 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !330)
!336 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !330)
!337 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !330)
!338 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !330)
!339 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !330)
!340 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !330)
!341 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !330)
!342 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !330)
!343 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !330)
!344 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !330)
!345 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !330)
!346 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !330)
!347 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !330)
!348 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !330)
!349 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !330)
!350 = !DILocation(line: 0, scope: !204, inlinedAt: !330)
!351 = !DILocation(line: 123, column: 9, scope: !321)
!352 = !DILocation(line: 0, scope: !321)
!353 = !DILocation(line: 124, column: 1, scope: !314)
!354 = distinct !DISubprogram(name: "createStringObjectFromLongLongWithOptions", scope: !1, file: !1, line: 133, type: !355, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !358)
!355 = !DISubroutineType(types: !356)
!356 = !{!115, !357, !36}
!357 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!358 = !{!359, !360, !361}
!359 = !DILocalVariable(name: "value", arg: 1, scope: !354, file: !1, line: 133, type: !357)
!360 = !DILocalVariable(name: "valueobj", arg: 2, scope: !354, file: !1, line: 133, type: !36)
!361 = !DILocalVariable(name: "o", scope: !354, file: !1, line: 134, type: !115)
!362 = !DILocation(line: 133, column: 59, scope: !354)
!363 = !DILocation(line: 133, column: 70, scope: !354)
!364 = !DILocation(line: 136, column: 16, scope: !365)
!365 = distinct !DILexicalBlock(scope: !354, file: !1, line: 136, column: 9)
!366 = !{!194, !196, i64 2704}
!367 = !DILocation(line: 136, column: 26, scope: !365)
!368 = !DILocation(line: 136, column: 31, scope: !365)
!369 = !DILocation(line: 137, column: 18, scope: !365)
!370 = !DILocation(line: 137, column: 35, scope: !365)
!371 = !DILocation(line: 136, column: 9, scope: !354)
!372 = !DILocation(line: 142, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !1, line: 138, column: 5)
!374 = !DILocation(line: 144, column: 20, scope: !375)
!375 = distinct !DILexicalBlock(scope: !354, file: !1, line: 144, column: 9)
!376 = !DILocation(line: 144, column: 63, scope: !375)
!377 = !DILocation(line: 145, column: 22, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !1, line: 144, column: 69)
!379 = !DILocalVariable(name: "o", arg: 1, scope: !380, file: !1, line: 349, type: !115)
!380 = distinct !DISubprogram(name: "incrRefCount", scope: !1, file: !1, line: 349, type: !381, isLocal: false, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !115}
!383 = !{!379}
!384 = !DILocation(line: 349, column: 25, scope: !380, inlinedAt: !385)
!385 = distinct !DILocation(line: 145, column: 9, scope: !378)
!386 = !DILocation(line: 350, column: 12, scope: !387, inlinedAt: !385)
!387 = distinct !DILexicalBlock(scope: !380, file: !1, line: 350, column: 9)
!388 = !DILocation(line: 350, column: 21, scope: !387, inlinedAt: !385)
!389 = !DILocation(line: 350, column: 9, scope: !380, inlinedAt: !385)
!390 = !DILocation(line: 350, column: 56, scope: !387, inlinedAt: !385)
!391 = !DILocation(line: 350, column: 45, scope: !387, inlinedAt: !385)
!392 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !393)
!393 = distinct !DILocation(line: 149, column: 17, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 148, column: 53)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 148, column: 13)
!396 = distinct !DILexicalBlock(scope: !375, file: !1, line: 147, column: 12)
!397 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !393)
!398 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !393)
!399 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !393)
!400 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !393)
!401 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !393)
!402 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !393)
!403 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !393)
!404 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !393)
!405 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !393)
!406 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !393)
!407 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !393)
!408 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !393)
!409 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !393)
!410 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !393)
!411 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !393)
!412 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !393)
!413 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !393)
!414 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !393)
!415 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !393)
!416 = !DILocation(line: 134, column: 11, scope: !354)
!417 = !DILocation(line: 150, column: 25, scope: !394)
!418 = !DILocation(line: 151, column: 22, scope: !394)
!419 = !DILocation(line: 151, column: 20, scope: !394)
!420 = !DILocation(line: 152, column: 9, scope: !394)
!421 = !DILocation(line: 0, scope: !422)
!422 = distinct !DILexicalBlock(scope: !395, file: !1, line: 152, column: 16)
!423 = !DILocation(line: 156, column: 5, scope: !354)
!424 = !DILocation(line: 349, column: 25, scope: !380)
!425 = !DILocation(line: 350, column: 12, scope: !387)
!426 = !DILocation(line: 350, column: 21, scope: !387)
!427 = !DILocation(line: 350, column: 9, scope: !380)
!428 = !DILocation(line: 350, column: 56, scope: !387)
!429 = !DILocation(line: 350, column: 45, scope: !387)
!430 = !DILocation(line: 351, column: 1, scope: !380)
!431 = distinct !DISubprogram(name: "createStringObjectFromLongLong", scope: !1, file: !1, line: 161, type: !432, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!115, !357}
!434 = !{!435}
!435 = !DILocalVariable(name: "value", arg: 1, scope: !431, file: !1, line: 161, type: !357)
!436 = !DILocation(line: 161, column: 48, scope: !431)
!437 = !DILocation(line: 162, column: 12, scope: !431)
!438 = !DILocation(line: 162, column: 5, scope: !431)
!439 = distinct !DISubprogram(name: "createStringObjectFromLongLongForValue", scope: !1, file: !1, line: 169, type: !432, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !440)
!440 = !{!441}
!441 = !DILocalVariable(name: "value", arg: 1, scope: !439, file: !1, line: 169, type: !357)
!442 = !DILocation(line: 169, column: 56, scope: !439)
!443 = !DILocation(line: 170, column: 12, scope: !439)
!444 = !DILocation(line: 170, column: 5, scope: !439)
!445 = distinct !DISubprogram(name: "createStringObjectFromLongDouble", scope: !1, file: !1, line: 179, type: !446, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !449)
!446 = !DISubroutineType(types: !447)
!447 = !{!115, !448, !36}
!448 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!449 = !{!450, !451, !452, !456}
!450 = !DILocalVariable(name: "value", arg: 1, scope: !445, file: !1, line: 179, type: !448)
!451 = !DILocalVariable(name: "humanfriendly", arg: 2, scope: !445, file: !1, line: 179, type: !36)
!452 = !DILocalVariable(name: "buf", scope: !445, file: !1, line: 180, type: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 40960, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 5120)
!456 = !DILocalVariable(name: "len", scope: !445, file: !1, line: 181, type: !36)
!457 = !DILocation(line: 179, column: 52, scope: !445)
!458 = !DILocation(line: 179, column: 63, scope: !445)
!459 = !DILocation(line: 180, column: 5, scope: !445)
!460 = !DILocation(line: 180, column: 10, scope: !445)
!461 = !DILocation(line: 181, column: 15, scope: !445)
!462 = !DILocation(line: 181, column: 9, scope: !445)
!463 = !DILocation(line: 182, column: 35, scope: !445)
!464 = !DILocation(line: 182, column: 12, scope: !445)
!465 = !DILocation(line: 183, column: 1, scope: !445)
!466 = !DILocation(line: 182, column: 5, scope: !445)
!467 = distinct !DISubprogram(name: "dupStringObject", scope: !1, file: !1, line: 193, type: !468, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !472)
!468 = !DISubroutineType(types: !469)
!469 = !{!115, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!472 = !{!473, !474}
!473 = !DILocalVariable(name: "o", arg: 1, scope: !467, file: !1, line: 193, type: !470)
!474 = !DILocalVariable(name: "d", scope: !467, file: !1, line: 194, type: !115)
!475 = !DILocation(line: 193, column: 35, scope: !467)
!476 = !DILocation(line: 196, column: 5, scope: !467)
!477 = !DILocation(line: 198, column: 15, scope: !467)
!478 = !DILocation(line: 198, column: 5, scope: !467)
!479 = !DILocation(line: 200, column: 41, scope: !480)
!480 = distinct !DILexicalBlock(scope: !467, file: !1, line: 198, column: 25)
!481 = !DILocalVariable(name: "s", arg: 1, scope: !482, file: !99, line: 87, type: !487)
!482 = distinct !DISubprogram(name: "sdslen", scope: !99, file: !99, line: 87, type: !483, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !488)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !487}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !486, line: 58, baseType: !24)
!486 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!488 = !{!481, !489}
!489 = !DILocalVariable(name: "flags", scope: !482, file: !99, line: 88, type: !131)
!490 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !491)
!491 = distinct !DILocation(line: 200, column: 45, scope: !480)
!492 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !491)
!493 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !491)
!494 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !491)
!495 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !491)
!496 = distinct !DILexicalBlock(scope: !482, file: !99, line: 89, column: 33)
!497 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !491)
!498 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !491)
!499 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !491)
!500 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !491)
!501 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !491)
!502 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !491)
!503 = !{!504, !504, i64 0}
!504 = !{!"short", !185, i64 0}
!505 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !491)
!506 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !491)
!507 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !491)
!508 = !{!184, !184, i64 0}
!509 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !491)
!510 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !491)
!511 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !491)
!512 = !{!195, !195, i64 0}
!513 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !491)
!514 = !DILocation(line: 0, scope: !496, inlinedAt: !491)
!515 = !DILocation(line: 77, column: 41, scope: !222, inlinedAt: !516)
!516 = distinct !DILocation(line: 200, column: 16, scope: !480)
!517 = !DILocation(line: 77, column: 53, scope: !222, inlinedAt: !516)
!518 = !DILocation(line: 78, column: 37, scope: !222, inlinedAt: !516)
!519 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !520)
!520 = distinct !DILocation(line: 78, column: 12, scope: !222, inlinedAt: !516)
!521 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !520)
!522 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !520)
!523 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !520)
!524 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !520)
!525 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !520)
!526 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !520)
!527 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !520)
!528 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !520)
!529 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !520)
!530 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !520)
!531 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !520)
!532 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !520)
!533 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !520)
!534 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !520)
!535 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !520)
!536 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !520)
!537 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !520)
!538 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !520)
!539 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !520)
!540 = !DILocation(line: 0, scope: !204, inlinedAt: !520)
!541 = !DILocation(line: 200, column: 9, scope: !480)
!542 = !DILocation(line: 202, column: 46, scope: !480)
!543 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !544)
!544 = distinct !DILocation(line: 202, column: 50, scope: !480)
!545 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !544)
!546 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !544)
!547 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !544)
!548 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !544)
!549 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !544)
!550 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !544)
!551 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !544)
!552 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !544)
!553 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !544)
!554 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !544)
!555 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !544)
!556 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !544)
!557 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !544)
!558 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !544)
!559 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !544)
!560 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !544)
!561 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !544)
!562 = !DILocation(line: 0, scope: !496, inlinedAt: !544)
!563 = !DILocation(line: 202, column: 16, scope: !480)
!564 = !DILocation(line: 202, column: 9, scope: !480)
!565 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !566)
!566 = distinct !DILocation(line: 204, column: 13, scope: !480)
!567 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !566)
!568 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !566)
!569 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !566)
!570 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !566)
!571 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !566)
!572 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !566)
!573 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !566)
!574 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !566)
!575 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !566)
!576 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !566)
!577 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !566)
!578 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !566)
!579 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !566)
!580 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !566)
!581 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !566)
!582 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !566)
!583 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !566)
!584 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !566)
!585 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !566)
!586 = !DILocation(line: 194, column: 11, scope: !467)
!587 = !DILocation(line: 205, column: 21, scope: !480)
!588 = !DILocation(line: 206, column: 21, scope: !480)
!589 = !DILocation(line: 206, column: 16, scope: !480)
!590 = !DILocation(line: 207, column: 9, scope: !480)
!591 = !DILocation(line: 209, column: 9, scope: !480)
!592 = !DILocation(line: 0, scope: !480)
!593 = !DILocation(line: 212, column: 1, scope: !467)
!594 = distinct !DISubprogram(name: "createQuicklistObject", scope: !1, file: !1, line: 214, type: !595, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!115}
!597 = !{!598, !626}
!598 = !DILocalVariable(name: "l", scope: !594, file: !1, line: 215, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !601, line: 80, baseType: !602)
!601 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !601, line: 73, size: 320, elements: !603)
!603 = !{!604, !621, !622, !623, !624, !625}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !602, file: !601, line: 74, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !601, line: 55, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !601, line: 44, size: 256, elements: !608)
!608 = !{!609, !611, !612, !614, !615, !616, !617, !618, !619, !620}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !607, file: !601, line: 45, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !601, line: 46, baseType: !610, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !607, file: !601, line: 47, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !607, file: !601, line: 48, baseType: !120, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !607, file: !601, line: 49, baseType: !120, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !607, file: !601, line: 50, baseType: !120, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !607, file: !601, line: 51, baseType: !120, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !607, file: !601, line: 52, baseType: !120, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !607, file: !601, line: 53, baseType: !120, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !607, file: !601, line: 54, baseType: !120, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !602, file: !601, line: 75, baseType: !605, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !602, file: !601, line: 76, baseType: !24, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !602, file: !601, line: 77, baseType: !24, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !602, file: !601, line: 78, baseType: !36, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !602, file: !601, line: 79, baseType: !120, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!626 = !DILocalVariable(name: "o", scope: !594, file: !1, line: 216, type: !115)
!627 = !DILocation(line: 215, column: 20, scope: !594)
!628 = !DILocation(line: 215, column: 16, scope: !594)
!629 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !630)
!630 = distinct !DILocation(line: 216, column: 15, scope: !594)
!631 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !630)
!632 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !630)
!633 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !630)
!634 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !630)
!635 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !630)
!636 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !630)
!637 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !630)
!638 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !630)
!639 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !630)
!640 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !630)
!641 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !630)
!642 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !630)
!643 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !630)
!644 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !630)
!645 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !630)
!646 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !630)
!647 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !630)
!648 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !630)
!649 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !630)
!650 = !DILocation(line: 216, column: 11, scope: !594)
!651 = !DILocation(line: 217, column: 17, scope: !594)
!652 = !DILocation(line: 218, column: 5, scope: !594)
!653 = distinct !DISubprogram(name: "createZiplistObject", scope: !1, file: !1, line: 221, type: !595, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !654)
!654 = !{!655, !656}
!655 = !DILocalVariable(name: "zl", scope: !653, file: !1, line: 222, type: !613)
!656 = !DILocalVariable(name: "o", scope: !653, file: !1, line: 223, type: !115)
!657 = !DILocation(line: 222, column: 25, scope: !653)
!658 = !DILocation(line: 222, column: 20, scope: !653)
!659 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !660)
!660 = distinct !DILocation(line: 223, column: 15, scope: !653)
!661 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !660)
!662 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !660)
!663 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !660)
!664 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !660)
!665 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !660)
!666 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !660)
!667 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !660)
!668 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !660)
!669 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !660)
!670 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !660)
!671 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !660)
!672 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !660)
!673 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !660)
!674 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !660)
!675 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !660)
!676 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !660)
!677 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !660)
!678 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !660)
!679 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !660)
!680 = !DILocation(line: 223, column: 11, scope: !653)
!681 = !DILocation(line: 224, column: 17, scope: !653)
!682 = !DILocation(line: 225, column: 5, scope: !653)
!683 = distinct !DISubprogram(name: "createSetObject", scope: !1, file: !1, line: 228, type: !595, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !684)
!684 = !{!685, !686}
!685 = !DILocalVariable(name: "d", scope: !683, file: !1, line: 229, type: !6)
!686 = !DILocalVariable(name: "o", scope: !683, file: !1, line: 230, type: !115)
!687 = !DILocation(line: 229, column: 15, scope: !683)
!688 = !DILocation(line: 229, column: 11, scope: !683)
!689 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !690)
!690 = distinct !DILocation(line: 230, column: 15, scope: !683)
!691 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !690)
!692 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !690)
!693 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !690)
!694 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !690)
!695 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !690)
!696 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !690)
!697 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !690)
!698 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !690)
!699 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !690)
!700 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !690)
!701 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !690)
!702 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !690)
!703 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !690)
!704 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !690)
!705 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !690)
!706 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !690)
!707 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !690)
!708 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !690)
!709 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !690)
!710 = !DILocation(line: 230, column: 11, scope: !683)
!711 = !DILocation(line: 231, column: 17, scope: !683)
!712 = !DILocation(line: 232, column: 5, scope: !683)
!713 = distinct !DISubprogram(name: "createIntsetObject", scope: !1, file: !1, line: 235, type: !595, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !714)
!714 = !{!715, !728}
!715 = !DILocalVariable(name: "is", scope: !713, file: !1, line: 236, type: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "intset", file: !718, line: 39, baseType: !719)
!718 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.h", directory: "/root/.unikraft/apps/redis/build")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intset", file: !718, line: 35, size: 64, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !719, file: !718, line: 36, baseType: !150, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !719, file: !718, line: 37, baseType: !150, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !719, file: !718, line: 38, baseType: !724, offset: 64)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, elements: !108)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !21, line: 20, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !23, line: 41, baseType: !727)
!727 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!728 = !DILocalVariable(name: "o", scope: !713, file: !1, line: 237, type: !115)
!729 = !DILocation(line: 236, column: 18, scope: !713)
!730 = !DILocation(line: 236, column: 13, scope: !713)
!731 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !732)
!732 = distinct !DILocation(line: 237, column: 15, scope: !713)
!733 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !732)
!734 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !732)
!735 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !732)
!736 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !732)
!737 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !732)
!738 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !732)
!739 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !732)
!740 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !732)
!741 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !732)
!742 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !732)
!743 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !732)
!744 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !732)
!745 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !732)
!746 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !732)
!747 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !732)
!748 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !732)
!749 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !732)
!750 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !732)
!751 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !732)
!752 = !DILocation(line: 237, column: 11, scope: !713)
!753 = !DILocation(line: 238, column: 17, scope: !713)
!754 = !DILocation(line: 239, column: 5, scope: !713)
!755 = distinct !DISubprogram(name: "createHashObject", scope: !1, file: !1, line: 242, type: !595, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !756)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "zl", scope: !755, file: !1, line: 243, type: !613)
!758 = !DILocalVariable(name: "o", scope: !755, file: !1, line: 244, type: !115)
!759 = !DILocation(line: 243, column: 25, scope: !755)
!760 = !DILocation(line: 243, column: 20, scope: !755)
!761 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !762)
!762 = distinct !DILocation(line: 244, column: 15, scope: !755)
!763 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !762)
!764 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !762)
!765 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !762)
!766 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !762)
!767 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !762)
!768 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !762)
!769 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !762)
!770 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !762)
!771 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !762)
!772 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !762)
!773 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !762)
!774 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !762)
!775 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !762)
!776 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !762)
!777 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !762)
!778 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !762)
!779 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !762)
!780 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !762)
!781 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !762)
!782 = !DILocation(line: 244, column: 11, scope: !755)
!783 = !DILocation(line: 245, column: 17, scope: !755)
!784 = !DILocation(line: 246, column: 5, scope: !755)
!785 = distinct !DISubprogram(name: "createZsetObject", scope: !1, file: !1, line: 249, type: !595, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !786)
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "zs", scope: !785, file: !1, line: 250, type: !82)
!788 = !DILocalVariable(name: "o", scope: !785, file: !1, line: 251, type: !115)
!789 = !DILocation(line: 250, column: 16, scope: !785)
!790 = !DILocation(line: 250, column: 11, scope: !785)
!791 = !DILocation(line: 253, column: 16, scope: !785)
!792 = !DILocation(line: 253, column: 9, scope: !785)
!793 = !DILocation(line: 253, column: 14, scope: !785)
!794 = !{!795, !187, i64 0}
!795 = !{!"zset", !187, i64 0, !187, i64 8}
!796 = !DILocation(line: 254, column: 15, scope: !785)
!797 = !DILocation(line: 254, column: 9, scope: !785)
!798 = !DILocation(line: 254, column: 13, scope: !785)
!799 = !{!795, !187, i64 8}
!800 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !801)
!801 = distinct !DILocation(line: 255, column: 9, scope: !785)
!802 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !801)
!803 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !801)
!804 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !801)
!805 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !801)
!806 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !801)
!807 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !801)
!808 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !801)
!809 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !801)
!810 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !801)
!811 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !801)
!812 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !801)
!813 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !801)
!814 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !801)
!815 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !801)
!816 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !801)
!817 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !801)
!818 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !801)
!819 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !801)
!820 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !801)
!821 = !DILocation(line: 251, column: 11, scope: !785)
!822 = !DILocation(line: 256, column: 17, scope: !785)
!823 = !DILocation(line: 257, column: 5, scope: !785)
!824 = distinct !DISubprogram(name: "createZsetZiplistObject", scope: !1, file: !1, line: 260, type: !595, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !825)
!825 = !{!826, !827}
!826 = !DILocalVariable(name: "zl", scope: !824, file: !1, line: 261, type: !613)
!827 = !DILocalVariable(name: "o", scope: !824, file: !1, line: 262, type: !115)
!828 = !DILocation(line: 261, column: 25, scope: !824)
!829 = !DILocation(line: 261, column: 20, scope: !824)
!830 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !831)
!831 = distinct !DILocation(line: 262, column: 15, scope: !824)
!832 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !831)
!833 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !831)
!834 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !831)
!835 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !831)
!836 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !831)
!837 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !831)
!838 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !831)
!839 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !831)
!840 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !831)
!841 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !831)
!842 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !831)
!843 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !831)
!844 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !831)
!845 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !831)
!846 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !831)
!847 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !831)
!848 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !831)
!849 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !831)
!850 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !831)
!851 = !DILocation(line: 262, column: 11, scope: !824)
!852 = !DILocation(line: 263, column: 17, scope: !824)
!853 = !DILocation(line: 264, column: 5, scope: !824)
!854 = distinct !DISubprogram(name: "createStreamObject", scope: !1, file: !1, line: 267, type: !595, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !855)
!855 = !{!856, !889}
!856 = !DILocalVariable(name: "s", scope: !854, file: !1, line: 268, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !859, line: 21, baseType: !860)
!859 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !859, line: 16, size: 320, elements: !861)
!861 = !{!862, !881, !882, !888}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !860, file: !859, line: 17, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !865, line: 137, baseType: !866)
!865 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !865, line: 133, size: 192, elements: !867)
!867 = !{!868, !879, !880}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !866, file: !865, line: 134, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !865, line: 131, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !865, line: 98, size: 32, elements: !872)
!872 = !{!873, !874, !875, !876, !877}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !871, file: !865, line: 99, baseType: !150, size: 1, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !871, file: !865, line: 100, baseType: !150, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !871, file: !865, line: 101, baseType: !150, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !871, file: !865, line: 102, baseType: !150, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !871, file: !865, line: 130, baseType: !878, offset: 32)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !108)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !866, file: !865, line: 135, baseType: !20, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !866, file: !865, line: 136, baseType: !20, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !860, file: !859, line: 18, baseType: !20, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !860, file: !859, line: 19, baseType: !883, size: 128, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !859, line: 14, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !859, line: 11, size: 128, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !884, file: !859, line: 12, baseType: !20, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !884, file: !859, line: 13, baseType: !20, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !860, file: !859, line: 20, baseType: !863, size: 64, offset: 256)
!889 = !DILocalVariable(name: "o", scope: !854, file: !1, line: 269, type: !115)
!890 = !DILocation(line: 268, column: 17, scope: !854)
!891 = !DILocation(line: 268, column: 13, scope: !854)
!892 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !893)
!893 = distinct !DILocation(line: 269, column: 15, scope: !854)
!894 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !893)
!895 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !893)
!896 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !893)
!897 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !893)
!898 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !893)
!899 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !893)
!900 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !893)
!901 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !893)
!902 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !893)
!903 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !893)
!904 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !893)
!905 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !893)
!906 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !893)
!907 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !893)
!908 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !893)
!909 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !893)
!910 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !893)
!911 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !893)
!912 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !893)
!913 = !DILocation(line: 269, column: 11, scope: !854)
!914 = !DILocation(line: 270, column: 17, scope: !854)
!915 = !DILocation(line: 271, column: 5, scope: !854)
!916 = distinct !DISubprogram(name: "createModuleObject", scope: !1, file: !1, line: 274, type: !917, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1258)
!917 = !DISubroutineType(types: !918)
!918 = !{!115, !919, !4}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleType", file: !84, line: 530, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleType", file: !84, line: 517, size: 768, elements: !922)
!922 = !{!923, !924, !927, !1210, !1215, !1220, !1225, !1238, !1243, !1248, !1253, !1254}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !921, file: !84, line: 518, baseType: !20, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !921, file: !84, line: 519, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModule", file: !84, line: 496, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_load", scope: !921, file: !84, line: 520, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeLoadFunc", file: !84, line: 506, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!4, !932, !36}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleIO", file: !84, line: 555, size: 384, elements: !934)
!934 = !{!935, !936, !1202, !1203, !1204, !1205, !1208}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !933, file: !84, line: 556, baseType: !77, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !933, file: !84, line: 557, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !939, line: 87, baseType: !940)
!939 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rio.h", directory: "/root/.unikraft/apps/redis/build")
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !939, line: 39, size: 832, elements: !941)
!941 = !{!942, !947, !951, !959, !963, !967, !968, !969, !970}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !940, file: !939, line: 43, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!485, !946, !4, !485}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !940, file: !939, line: 44, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!485, !946, !25, !485}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !940, file: !939, line: 45, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!955, !946}
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !956, line: 173, baseType: !957)
!956 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 100, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !80, line: 44, baseType: !5)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !940, file: !939, line: 46, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!36, !946}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !940, file: !939, line: 52, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !946, !25, !485}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !940, file: !939, line: 55, baseType: !20, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !940, file: !939, line: 58, baseType: !485, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !940, file: !939, line: 61, baseType: !485, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !940, file: !939, line: 84, baseType: !971, size: 320, offset: 512)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !939, line: 64, size: 320, elements: !972)
!972 = !{!973, !978, !1193}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !971, file: !939, line: 69, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !939, line: 66, size: 128, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !974, file: !939, line: 67, baseType: !98, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !974, file: !939, line: 68, baseType: !955, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !971, file: !939, line: 75, baseType: !979, size: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !939, line: 71, size: 192, elements: !980)
!980 = !{!981, !1191, !1192}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !979, file: !939, line: 72, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !984, line: 66, baseType: !985)
!984 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !986, line: 287, baseType: !987)
!986 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !986, line: 181, size: 1408, elements: !988)
!988 = !{!989, !990, !991, !992, !994, !995, !1000, !1001, !1002, !1161, !1165, !1170, !1174, !1175, !1176, !1177, !1179, !1181, !1182, !1183, !1184, !1185, !1189, !1190}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !987, file: !986, line: 182, baseType: !613, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !987, file: !986, line: 183, baseType: !36, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !987, file: !986, line: 184, baseType: !36, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !987, file: !986, line: 185, baseType: !993, size: 16, offset: 128)
!993 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !987, file: !986, line: 186, baseType: !993, size: 16, offset: 144)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !987, file: !986, line: 187, baseType: !996, size: 128, offset: 192)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !986, line: 117, size: 128, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !996, file: !986, line: 118, baseType: !613, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !996, file: !986, line: 119, baseType: !36, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !987, file: !986, line: 188, baseType: !36, size: 32, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !987, file: !986, line: 195, baseType: !4, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !987, file: !986, line: 197, baseType: !1003, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !1007, !4, !81, !36}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !80, line: 145, baseType: !5)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !986, line: 569, size: 14912, elements: !1009)
!1009 = !{!1010, !1011, !1013, !1014, !1015, !1016, !1020, !1021, !1024, !1025, !1029, !1043, !1044, !1045, !1047, !1048, !1049, !1125, !1146, !1147, !1152, !1159}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1008, file: !986, line: 571, baseType: !36, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1008, file: !986, line: 576, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1008, file: !986, line: 576, baseType: !1012, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1008, file: !986, line: 576, baseType: !1012, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1008, file: !986, line: 578, baseType: !36, size: 32, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1008, file: !986, line: 579, baseType: !1017, size: 200, offset: 288)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 200, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 25)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1008, file: !986, line: 582, baseType: !36, size: 32, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1008, file: !986, line: 583, baseType: !1022, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !986, line: 40, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1008, file: !986, line: 585, baseType: !36, size: 32, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1008, file: !986, line: 587, baseType: !1026, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1007}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1008, file: !986, line: 590, baseType: !1030, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !986, line: 47, size: 256, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1031, file: !986, line: 49, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1031, file: !986, line: 50, baseType: !36, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1031, file: !986, line: 50, baseType: !36, size: 32, offset: 96)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1031, file: !986, line: 50, baseType: !36, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1031, file: !986, line: 50, baseType: !36, size: 32, offset: 160)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1031, file: !986, line: 51, baseType: !1039, size: 32, offset: 192)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 32, elements: !1041)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !986, line: 25, baseType: !120)
!1041 = !{!1042}
!1042 = !DISubrange(count: 1)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1008, file: !986, line: 591, baseType: !36, size: 32, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1008, file: !986, line: 592, baseType: !1030, size: 64, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1008, file: !986, line: 593, baseType: !1046, size: 64, offset: 960)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1008, file: !986, line: 596, baseType: !36, size: 32, offset: 1024)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1008, file: !986, line: 597, baseType: !81, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !1008, file: !986, line: 632, baseType: !1050, size: 2880, offset: 1152)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1008, file: !986, line: 599, size: 2880, elements: !1051)
!1051 = !{!1052, !1116}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !1050, file: !986, line: 622, baseType: !1053, size: 1728)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !986, line: 601, size: 1728, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1061, !1073, !1074, !1076, !1085, !1099, !1100, !1101, !1105, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !1053, file: !986, line: 603, baseType: !120, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1053, file: !986, line: 604, baseType: !81, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1053, file: !986, line: 605, baseType: !1058, size: 208, offset: 128)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 208, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 26)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1053, file: !986, line: 606, baseType: !1062, size: 288, offset: 352)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !986, line: 55, size: 288, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1062, file: !986, line: 57, baseType: !36, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1062, file: !986, line: 58, baseType: !36, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1062, file: !986, line: 59, baseType: !36, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1062, file: !986, line: 60, baseType: !36, size: 32, offset: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1062, file: !986, line: 61, baseType: !36, size: 32, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1062, file: !986, line: 62, baseType: !36, size: 32, offset: 160)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1062, file: !986, line: 63, baseType: !36, size: 32, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1062, file: !986, line: 64, baseType: !36, size: 32, offset: 224)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1062, file: !986, line: 65, baseType: !36, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1053, file: !986, line: 607, baseType: !36, size: 32, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1053, file: !986, line: 608, baseType: !1075, size: 64, offset: 704)
!1075 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1053, file: !986, line: 609, baseType: !1077, size: 112, offset: 768)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !986, line: 319, size: 112, elements: !1078)
!1078 = !{!1079, !1083, !1084}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1077, file: !986, line: 320, baseType: !1080, size: 48)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 48, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 3)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1077, file: !986, line: 321, baseType: !1080, size: 48, offset: 48)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1077, file: !986, line: 322, baseType: !142, size: 16, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1053, file: !986, line: 610, baseType: !1086, size: 64, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !80, line: 171, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !80, line: 163, size: 64, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1087, file: !80, line: 165, baseType: !36, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1087, file: !80, line: 170, baseType: !1091, size: 32, offset: 32)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !80, line: 166, size: 32, elements: !1092)
!1092 = !{!1093, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1091, file: !80, line: 168, baseType: !1094, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !486, line: 124, baseType: !120)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1091, file: !80, line: 169, baseType: !1096, size: 32)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 32, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 4)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1053, file: !986, line: 611, baseType: !1086, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1053, file: !986, line: 612, baseType: !1086, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1053, file: !986, line: 613, baseType: !1102, size: 64, offset: 1088)
!1102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DISubrange(count: 8)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1053, file: !986, line: 614, baseType: !1106, size: 192, offset: 1152)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 192, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 24)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1053, file: !986, line: 615, baseType: !36, size: 32, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1053, file: !986, line: 616, baseType: !1086, size: 64, offset: 1376)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1053, file: !986, line: 617, baseType: !1086, size: 64, offset: 1440)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1053, file: !986, line: 618, baseType: !1086, size: 64, offset: 1504)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1053, file: !986, line: 619, baseType: !1086, size: 64, offset: 1568)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1053, file: !986, line: 620, baseType: !1086, size: 64, offset: 1632)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !1053, file: !986, line: 621, baseType: !36, size: 32, offset: 1696)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !1050, file: !986, line: 631, baseType: !1117, size: 2880)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !986, line: 626, size: 2880, elements: !1118)
!1118 = !{!1119, !1123}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !1117, file: !986, line: 629, baseType: !1120, size: 1920)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 1920, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 30)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !1117, file: !986, line: 630, baseType: !1124, size: 960, offset: 1920)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 960, elements: !1121)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1008, file: !986, line: 636, baseType: !1126, size: 64, offset: 4032)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !986, line: 93, size: 6336, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1138}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1127, file: !986, line: 94, baseType: !1126, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1127, file: !986, line: 95, baseType: !36, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1127, file: !986, line: 97, baseType: !1132, size: 2048, offset: 128)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 2048, elements: !1136)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null}
!1136 = !{!1137}
!1137 = !DISubrange(count: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !1127, file: !986, line: 98, baseType: !1139, size: 4160, offset: 2176)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !986, line: 74, size: 4160, elements: !1140)
!1140 = !{!1141, !1143, !1144, !1145}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1139, file: !986, line: 75, baseType: !1142, size: 2048)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1136)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1139, file: !986, line: 76, baseType: !1142, size: 2048, offset: 2048)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1139, file: !986, line: 78, baseType: !1040, size: 32, offset: 4096)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1139, file: !986, line: 81, baseType: !1040, size: 32, offset: 4128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1008, file: !986, line: 637, baseType: !1127, size: 6336, offset: 4096)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1008, file: !986, line: 641, baseType: !1148, size: 64, offset: 10432)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !36}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1008, file: !986, line: 646, baseType: !1153, size: 192, offset: 10496)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !986, line: 291, size: 192, elements: !1154)
!1154 = !{!1155, !1157, !1158}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1153, file: !986, line: 293, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1153, file: !986, line: 294, baseType: !36, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1153, file: !986, line: 295, baseType: !1012, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1008, file: !986, line: 648, baseType: !1160, size: 4224, offset: 10688)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 4224, elements: !1081)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !987, file: !986, line: 199, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!1006, !1007, !4, !74, !36}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !987, file: !986, line: 202, baseType: !1166, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1169, !1007, !4, !1169, !36}
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !80, line: 114, baseType: !5)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !987, file: !986, line: 203, baseType: !1171, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!36, !1007, !4}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !987, file: !986, line: 206, baseType: !996, size: 128, offset: 704)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !987, file: !986, line: 207, baseType: !613, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !987, file: !986, line: 208, baseType: !36, size: 32, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !987, file: !986, line: 211, baseType: !1178, size: 24, offset: 928)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 24, elements: !1081)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !987, file: !986, line: 212, baseType: !1180, size: 8, offset: 952)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 8, elements: !1041)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !987, file: !986, line: 215, baseType: !996, size: 128, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !987, file: !986, line: 218, baseType: !36, size: 32, offset: 1088)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !987, file: !986, line: 219, baseType: !958, size: 64, offset: 1152)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !987, file: !986, line: 222, baseType: !1007, size: 64, offset: 1216)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !987, file: !986, line: 226, baseType: !1186, size: 32, offset: 1280)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !80, line: 175, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !1188, line: 12, baseType: !36)
!1188 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !987, file: !986, line: 228, baseType: !1086, size: 64, offset: 1312)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !987, file: !986, line: 229, baseType: !36, size: 32, offset: 1376)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !979, file: !939, line: 73, baseType: !955, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !979, file: !939, line: 74, baseType: !955, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fdset", scope: !971, file: !939, line: 83, baseType: !1194, size: 320)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !939, line: 77, size: 320, elements: !1195)
!1195 = !{!1196, !1198, !1199, !1200, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fds", scope: !1194, file: !939, line: 78, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1194, file: !939, line: 79, baseType: !1197, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "numfds", scope: !1194, file: !939, line: 80, baseType: !36, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1194, file: !939, line: 81, baseType: !955, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1194, file: !939, line: 82, baseType: !98, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !84, line: 558, baseType: !919, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !933, file: !84, line: 559, baseType: !36, size: 32, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !933, file: !84, line: 560, baseType: !36, size: 32, offset: 224)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !933, file: !84, line: 562, baseType: !1206, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCtx", file: !84, line: 499, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !933, file: !84, line: 563, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rdb_save", scope: !921, file: !84, line: 521, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeSaveFunc", file: !84, line: 507, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !932, !4}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "aof_rewrite", scope: !921, file: !84, line: 522, baseType: !1216, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeRewriteFunc", file: !84, line: 510, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !932, !1209, !4}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage", scope: !921, file: !84, line: 523, baseType: !1221, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeMemUsageFunc", file: !84, line: 512, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!77, !25}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !921, file: !84, line: 524, baseType: !1226, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeDigestFunc", file: !84, line: 511, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !1230, !4}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleDigest", file: !84, line: 583, size: 320, elements: !1232)
!1232 = !{!1233, !1237}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !1231, file: !84, line: 584, baseType: !1234, size: 160)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 160, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 20)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1231, file: !84, line: 585, baseType: !1234, size: 160, offset: 160)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !921, file: !84, line: 525, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeFreeFunc", file: !84, line: 513, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !4}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "aux_load", scope: !921, file: !84, line: 526, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxLoadFunc", file: !84, line: 508, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!36, !932, !36, !36}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save", scope: !921, file: !84, line: 527, baseType: !1249, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleTypeAuxSaveFunc", file: !84, line: 509, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !932, !36}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "aux_save_triggers", scope: !921, file: !84, line: 528, baseType: !36, size: 32, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !921, file: !84, line: 529, baseType: !1255, size: 80, offset: 672)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 80, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 10)
!1258 = !{!1259, !1260, !1261}
!1259 = !DILocalVariable(name: "mt", arg: 1, scope: !916, file: !1, line: 274, type: !919)
!1260 = !DILocalVariable(name: "value", arg: 2, scope: !916, file: !1, line: 274, type: !4)
!1261 = !DILocalVariable(name: "mv", scope: !916, file: !1, line: 275, type: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "moduleValue", file: !84, line: 550, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "moduleValue", file: !84, line: 547, size: 128, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1264, file: !84, line: 548, baseType: !919, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1264, file: !84, line: 549, baseType: !4, size: 64, offset: 64)
!1268 = !DILocation(line: 274, column: 38, scope: !916)
!1269 = !DILocation(line: 274, column: 48, scope: !916)
!1270 = !DILocation(line: 275, column: 23, scope: !916)
!1271 = !DILocation(line: 275, column: 18, scope: !916)
!1272 = !DILocation(line: 276, column: 9, scope: !916)
!1273 = !DILocation(line: 276, column: 14, scope: !916)
!1274 = !{!1275, !187, i64 0}
!1275 = !{!"moduleValue", !187, i64 0, !187, i64 8}
!1276 = !DILocation(line: 277, column: 9, scope: !916)
!1277 = !DILocation(line: 277, column: 15, scope: !916)
!1278 = !{!1275, !187, i64 8}
!1279 = !DILocation(line: 41, column: 24, scope: !166, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 278, column: 12, scope: !916)
!1281 = !DILocation(line: 41, column: 36, scope: !166, inlinedAt: !1280)
!1282 = !DILocation(line: 42, column: 15, scope: !166, inlinedAt: !1280)
!1283 = !DILocation(line: 42, column: 11, scope: !166, inlinedAt: !1280)
!1284 = !DILocation(line: 43, column: 8, scope: !166, inlinedAt: !1280)
!1285 = !DILocation(line: 43, column: 13, scope: !166, inlinedAt: !1280)
!1286 = !DILocation(line: 44, column: 17, scope: !166, inlinedAt: !1280)
!1287 = !DILocation(line: 45, column: 8, scope: !166, inlinedAt: !1280)
!1288 = !DILocation(line: 45, column: 12, scope: !166, inlinedAt: !1280)
!1289 = !DILocation(line: 46, column: 8, scope: !166, inlinedAt: !1280)
!1290 = !DILocation(line: 46, column: 17, scope: !166, inlinedAt: !1280)
!1291 = !DILocation(line: 50, column: 16, scope: !192, inlinedAt: !1280)
!1292 = !DILocation(line: 50, column: 33, scope: !192, inlinedAt: !1280)
!1293 = !DILocation(line: 50, column: 9, scope: !166, inlinedAt: !1280)
!1294 = !DILocation(line: 51, column: 19, scope: !204, inlinedAt: !1280)
!1295 = !DILocation(line: 51, column: 18, scope: !204, inlinedAt: !1280)
!1296 = !DILocation(line: 51, column: 16, scope: !204, inlinedAt: !1280)
!1297 = !DILocation(line: 52, column: 5, scope: !204, inlinedAt: !1280)
!1298 = !DILocation(line: 53, column: 18, scope: !209, inlinedAt: !1280)
!1299 = !DILocation(line: 53, column: 16, scope: !209, inlinedAt: !1280)
!1300 = !DILocation(line: 0, scope: !204, inlinedAt: !1280)
!1301 = !DILocation(line: 278, column: 5, scope: !916)
!1302 = distinct !DISubprogram(name: "freeStringObject", scope: !1, file: !1, line: 281, type: !381, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1303)
!1303 = !{!1304}
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1302, file: !1, line: 281, type: !115)
!1305 = !DILocation(line: 281, column: 29, scope: !1302)
!1306 = !DILocation(line: 282, column: 12, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 282, column: 9)
!1308 = !DILocation(line: 282, column: 21, scope: !1307)
!1309 = !DILocation(line: 282, column: 9, scope: !1302)
!1310 = !DILocation(line: 283, column: 20, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 282, column: 42)
!1312 = !DILocation(line: 283, column: 9, scope: !1311)
!1313 = !DILocation(line: 284, column: 5, scope: !1311)
!1314 = !DILocation(line: 285, column: 1, scope: !1302)
!1315 = distinct !DISubprogram(name: "freeListObject", scope: !1, file: !1, line: 287, type: !381, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1316)
!1316 = !{!1317}
!1317 = !DILocalVariable(name: "o", arg: 1, scope: !1315, file: !1, line: 287, type: !115)
!1318 = !DILocation(line: 287, column: 27, scope: !1315)
!1319 = !DILocation(line: 288, column: 12, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 288, column: 9)
!1321 = !DILocation(line: 288, column: 21, scope: !1320)
!1322 = !DILocation(line: 288, column: 9, scope: !1315)
!1323 = !DILocation(line: 289, column: 29, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 288, column: 48)
!1325 = !DILocation(line: 289, column: 9, scope: !1324)
!1326 = !DILocation(line: 293, column: 1, scope: !1315)
!1327 = !DILocation(line: 291, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 290, column: 12)
!1329 = distinct !DISubprogram(name: "freeSetObject", scope: !1, file: !1, line: 295, type: !381, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1330)
!1330 = !{!1331}
!1331 = !DILocalVariable(name: "o", arg: 1, scope: !1329, file: !1, line: 295, type: !115)
!1332 = !DILocation(line: 295, column: 26, scope: !1329)
!1333 = !DILocation(line: 296, column: 16, scope: !1329)
!1334 = !DILocation(line: 296, column: 5, scope: !1329)
!1335 = !DILocation(line: 298, column: 32, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 296, column: 26)
!1337 = !DILocation(line: 298, column: 9, scope: !1336)
!1338 = !DILocation(line: 299, column: 9, scope: !1336)
!1339 = !DILocation(line: 301, column: 18, scope: !1336)
!1340 = !DILocation(line: 301, column: 9, scope: !1336)
!1341 = !DILocation(line: 302, column: 9, scope: !1336)
!1342 = !DILocation(line: 304, column: 9, scope: !1336)
!1343 = !DILocation(line: 306, column: 1, scope: !1329)
!1344 = distinct !DISubprogram(name: "freeZsetObject", scope: !1, file: !1, line: 308, type: !381, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1345)
!1345 = !{!1346, !1347}
!1346 = !DILocalVariable(name: "o", arg: 1, scope: !1344, file: !1, line: 308, type: !115)
!1347 = !DILocalVariable(name: "zs", scope: !1344, file: !1, line: 309, type: !82)
!1348 = !DILocation(line: 308, column: 27, scope: !1344)
!1349 = !DILocation(line: 310, column: 16, scope: !1344)
!1350 = !DILocation(line: 310, column: 5, scope: !1344)
!1351 = !DILocation(line: 312, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 310, column: 26)
!1353 = !DILocation(line: 309, column: 11, scope: !1344)
!1354 = !DILocation(line: 313, column: 25, scope: !1352)
!1355 = !DILocation(line: 313, column: 9, scope: !1352)
!1356 = !DILocation(line: 314, column: 21, scope: !1352)
!1357 = !DILocation(line: 314, column: 9, scope: !1352)
!1358 = !DILocation(line: 315, column: 9, scope: !1352)
!1359 = !DILocation(line: 316, column: 9, scope: !1352)
!1360 = !DILocation(line: 318, column: 18, scope: !1352)
!1361 = !DILocation(line: 318, column: 9, scope: !1352)
!1362 = !DILocation(line: 319, column: 9, scope: !1352)
!1363 = !DILocation(line: 321, column: 9, scope: !1352)
!1364 = !DILocation(line: 323, column: 1, scope: !1344)
!1365 = distinct !DISubprogram(name: "freeHashObject", scope: !1, file: !1, line: 325, type: !381, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1366)
!1366 = !{!1367}
!1367 = !DILocalVariable(name: "o", arg: 1, scope: !1365, file: !1, line: 325, type: !115)
!1368 = !DILocation(line: 325, column: 27, scope: !1365)
!1369 = !DILocation(line: 326, column: 16, scope: !1365)
!1370 = !DILocation(line: 326, column: 5, scope: !1365)
!1371 = !DILocation(line: 328, column: 32, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 326, column: 26)
!1373 = !DILocation(line: 328, column: 9, scope: !1372)
!1374 = !DILocation(line: 329, column: 9, scope: !1372)
!1375 = !DILocation(line: 331, column: 18, scope: !1372)
!1376 = !DILocation(line: 331, column: 9, scope: !1372)
!1377 = !DILocation(line: 332, column: 9, scope: !1372)
!1378 = !DILocation(line: 334, column: 9, scope: !1372)
!1379 = !DILocation(line: 337, column: 1, scope: !1365)
!1380 = distinct !DISubprogram(name: "freeModuleObject", scope: !1, file: !1, line: 339, type: !381, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1381)
!1381 = !{!1382, !1383}
!1382 = !DILocalVariable(name: "o", arg: 1, scope: !1380, file: !1, line: 339, type: !115)
!1383 = !DILocalVariable(name: "mv", scope: !1380, file: !1, line: 340, type: !1262)
!1384 = !DILocation(line: 339, column: 29, scope: !1380)
!1385 = !DILocation(line: 340, column: 26, scope: !1380)
!1386 = !DILocation(line: 340, column: 18, scope: !1380)
!1387 = !DILocation(line: 341, column: 9, scope: !1380)
!1388 = !DILocation(line: 341, column: 15, scope: !1380)
!1389 = !{!1390, !187, i64 56}
!1390 = !{!"RedisModuleType", !195, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !184, i64 80, !185, i64 84}
!1391 = !DILocation(line: 341, column: 24, scope: !1380)
!1392 = !DILocation(line: 341, column: 5, scope: !1380)
!1393 = !DILocation(line: 342, column: 5, scope: !1380)
!1394 = !DILocation(line: 343, column: 1, scope: !1380)
!1395 = distinct !DISubprogram(name: "freeStreamObject", scope: !1, file: !1, line: 345, type: !381, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1396)
!1396 = !{!1397}
!1397 = !DILocalVariable(name: "o", arg: 1, scope: !1395, file: !1, line: 345, type: !115)
!1398 = !DILocation(line: 345, column: 29, scope: !1395)
!1399 = !DILocation(line: 346, column: 19, scope: !1395)
!1400 = !DILocation(line: 346, column: 5, scope: !1395)
!1401 = !DILocation(line: 347, column: 1, scope: !1395)
!1402 = distinct !DISubprogram(name: "decrRefCount", scope: !1, file: !1, line: 353, type: !381, isLocal: false, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1403)
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "o", arg: 1, scope: !1402, file: !1, line: 353, type: !115)
!1405 = !DILocation(line: 353, column: 25, scope: !1402)
!1406 = !DILocation(line: 354, column: 12, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 354, column: 9)
!1408 = !DILocation(line: 354, column: 21, scope: !1407)
!1409 = !DILocation(line: 354, column: 9, scope: !1402)
!1410 = !DILocation(line: 355, column: 19, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 354, column: 27)
!1412 = !DILocation(line: 355, column: 9, scope: !1411)
!1413 = !DILocation(line: 281, column: 29, scope: !1302, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 356, column: 26, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 355, column: 25)
!1416 = !DILocation(line: 282, column: 12, scope: !1307, inlinedAt: !1414)
!1417 = !DILocation(line: 282, column: 21, scope: !1307, inlinedAt: !1414)
!1418 = !DILocation(line: 282, column: 9, scope: !1302, inlinedAt: !1414)
!1419 = !DILocation(line: 283, column: 20, scope: !1311, inlinedAt: !1414)
!1420 = !DILocation(line: 283, column: 9, scope: !1311, inlinedAt: !1414)
!1421 = !DILocation(line: 284, column: 5, scope: !1311, inlinedAt: !1414)
!1422 = !DILocation(line: 287, column: 27, scope: !1315, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 357, column: 24, scope: !1415)
!1424 = !DILocation(line: 288, column: 12, scope: !1320, inlinedAt: !1423)
!1425 = !DILocation(line: 288, column: 21, scope: !1320, inlinedAt: !1423)
!1426 = !DILocation(line: 288, column: 9, scope: !1315, inlinedAt: !1423)
!1427 = !DILocation(line: 291, column: 9, scope: !1328, inlinedAt: !1423)
!1428 = !DILocation(line: 289, column: 29, scope: !1324, inlinedAt: !1423)
!1429 = !DILocation(line: 289, column: 9, scope: !1324, inlinedAt: !1423)
!1430 = !DILocation(line: 357, column: 43, scope: !1415)
!1431 = !DILocation(line: 295, column: 26, scope: !1329, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 358, column: 23, scope: !1415)
!1433 = !DILocation(line: 296, column: 16, scope: !1329, inlinedAt: !1432)
!1434 = !DILocation(line: 296, column: 5, scope: !1329, inlinedAt: !1432)
!1435 = !DILocation(line: 298, column: 32, scope: !1336, inlinedAt: !1432)
!1436 = !DILocation(line: 298, column: 9, scope: !1336, inlinedAt: !1432)
!1437 = !DILocation(line: 299, column: 9, scope: !1336, inlinedAt: !1432)
!1438 = !DILocation(line: 301, column: 18, scope: !1336, inlinedAt: !1432)
!1439 = !DILocation(line: 301, column: 9, scope: !1336, inlinedAt: !1432)
!1440 = !DILocation(line: 302, column: 9, scope: !1336, inlinedAt: !1432)
!1441 = !DILocation(line: 304, column: 9, scope: !1336, inlinedAt: !1432)
!1442 = !DILocation(line: 359, column: 24, scope: !1415)
!1443 = !DILocation(line: 359, column: 43, scope: !1415)
!1444 = !DILocation(line: 325, column: 27, scope: !1365, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 360, column: 24, scope: !1415)
!1446 = !DILocation(line: 326, column: 16, scope: !1365, inlinedAt: !1445)
!1447 = !DILocation(line: 326, column: 5, scope: !1365, inlinedAt: !1445)
!1448 = !DILocation(line: 328, column: 32, scope: !1372, inlinedAt: !1445)
!1449 = !DILocation(line: 328, column: 9, scope: !1372, inlinedAt: !1445)
!1450 = !DILocation(line: 329, column: 9, scope: !1372, inlinedAt: !1445)
!1451 = !DILocation(line: 331, column: 18, scope: !1372, inlinedAt: !1445)
!1452 = !DILocation(line: 331, column: 9, scope: !1372, inlinedAt: !1445)
!1453 = !DILocation(line: 332, column: 9, scope: !1372, inlinedAt: !1445)
!1454 = !DILocation(line: 334, column: 9, scope: !1372, inlinedAt: !1445)
!1455 = !DILocation(line: 339, column: 29, scope: !1380, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 361, column: 26, scope: !1415)
!1457 = !DILocation(line: 340, column: 26, scope: !1380, inlinedAt: !1456)
!1458 = !DILocation(line: 340, column: 18, scope: !1380, inlinedAt: !1456)
!1459 = !DILocation(line: 341, column: 9, scope: !1380, inlinedAt: !1456)
!1460 = !DILocation(line: 341, column: 15, scope: !1380, inlinedAt: !1456)
!1461 = !DILocation(line: 341, column: 24, scope: !1380, inlinedAt: !1456)
!1462 = !DILocation(line: 341, column: 5, scope: !1380, inlinedAt: !1456)
!1463 = !DILocation(line: 342, column: 5, scope: !1380, inlinedAt: !1456)
!1464 = !DILocation(line: 361, column: 47, scope: !1415)
!1465 = !DILocation(line: 345, column: 29, scope: !1395, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 362, column: 26, scope: !1415)
!1467 = !DILocation(line: 346, column: 19, scope: !1395, inlinedAt: !1466)
!1468 = !DILocation(line: 346, column: 5, scope: !1395, inlinedAt: !1466)
!1469 = !DILocation(line: 362, column: 47, scope: !1415)
!1470 = !DILocation(line: 363, column: 18, scope: !1415)
!1471 = !DILocation(line: 365, column: 15, scope: !1411)
!1472 = !DILocation(line: 365, column: 9, scope: !1411)
!1473 = !DILocation(line: 366, column: 5, scope: !1411)
!1474 = !DILocation(line: 367, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 367, column: 13)
!1476 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 366, column: 12)
!1477 = !DILocation(line: 367, column: 13, scope: !1476)
!1478 = !DILocation(line: 367, column: 31, scope: !1475)
!1479 = !DILocation(line: 368, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !1, line: 368, column: 13)
!1481 = !DILocation(line: 368, column: 13, scope: !1476)
!1482 = !DILocation(line: 368, column: 60, scope: !1480)
!1483 = !DILocation(line: 368, column: 49, scope: !1480)
!1484 = !DILocation(line: 370, column: 1, scope: !1402)
!1485 = distinct !DISubprogram(name: "decrRefCountVoid", scope: !1, file: !1, line: 375, type: !1241, isLocal: false, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1486)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1485, file: !1, line: 375, type: !4)
!1488 = !DILocation(line: 375, column: 29, scope: !1485)
!1489 = !DILocation(line: 376, column: 18, scope: !1485)
!1490 = !DILocation(line: 376, column: 5, scope: !1485)
!1491 = !DILocation(line: 377, column: 1, scope: !1485)
!1492 = distinct !DISubprogram(name: "resetRefCount", scope: !1, file: !1, line: 391, type: !214, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1493)
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "obj", arg: 1, scope: !1492, file: !1, line: 391, type: !115)
!1495 = !DILocation(line: 391, column: 27, scope: !1492)
!1496 = !DILocation(line: 392, column: 10, scope: !1492)
!1497 = !DILocation(line: 392, column: 19, scope: !1492)
!1498 = !DILocation(line: 393, column: 5, scope: !1492)
!1499 = distinct !DISubprogram(name: "checkType", scope: !1, file: !1, line: 396, type: !1500, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1657)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!36, !1502, !115, !36}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !84, line: 780, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !84, line: 723, size: 135360, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1554, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1606, !1607, !1611, !1612, !1628, !1629, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1504, file: !84, line: 724, baseType: !20, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1504, file: !84, line: 725, baseType: !36, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1504, file: !84, line: 726, baseType: !1509, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !84, line: 656, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !84, line: 647, size: 512, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1511, file: !84, line: 648, baseType: !6, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1511, file: !84, line: 649, baseType: !6, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1511, file: !84, line: 650, baseType: !6, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1511, file: !84, line: 651, baseType: !6, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1511, file: !84, line: 652, baseType: !6, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1511, file: !84, line: 653, baseType: !36, size: 32, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1511, file: !84, line: 654, baseType: !357, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1511, file: !84, line: 655, baseType: !1521, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1523, line: 54, baseType: !1524)
!1523 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1523, line: 47, size: 384, elements: !1525)
!1525 = !{!1526, !1535, !1536, !1540, !1541, !1545}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1524, file: !1523, line: 48, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1523, line: 40, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1523, line: 36, size: 192, elements: !1530)
!1530 = !{!1531, !1533, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1529, file: !1523, line: 37, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !1523, line: 38, baseType: !1532, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1529, file: !1523, line: 39, baseType: !4, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1524, file: !1523, line: 49, baseType: !1527, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1524, file: !1523, line: 50, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!4, !4}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1524, file: !1523, line: 51, baseType: !1240, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1524, file: !1523, line: 52, baseType: !1542, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!36, !4, !4}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1524, file: !1523, line: 53, baseType: !24, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1504, file: !84, line: 727, baseType: !115, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1504, file: !84, line: 728, baseType: !98, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1504, file: !84, line: 729, baseType: !77, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !1504, file: !84, line: 730, baseType: !98, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1504, file: !84, line: 734, baseType: !77, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1504, file: !84, line: 735, baseType: !36, size: 32, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1504, file: !84, line: 736, baseType: !1553, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1504, file: !84, line: 737, baseType: !1555, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !84, line: 1307, size: 640, elements: !1557)
!1557 = !{!1558, !1559, !1564, !1565, !1566, !1567, !1572, !1573, !1574, !1575, !1576}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1556, file: !84, line: 1308, baseType: !81, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1556, file: !84, line: 1309, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !84, line: 1305, baseType: !1562)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1502}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1556, file: !84, line: 1310, baseType: !36, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !1556, file: !84, line: 1311, baseType: !81, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1556, file: !84, line: 1312, baseType: !36, size: 32, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1556, file: !84, line: 1315, baseType: !1568, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !84, line: 1306, baseType: !1570)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1197, !1555, !1553, !36, !1197}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1556, file: !84, line: 1317, baseType: !36, size: 32, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1556, file: !84, line: 1318, baseType: !36, size: 32, offset: 416)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1556, file: !84, line: 1319, baseType: !36, size: 32, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1556, file: !84, line: 1320, baseType: !357, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1556, file: !84, line: 1320, baseType: !357, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1504, file: !84, line: 737, baseType: !1555, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1504, file: !84, line: 738, baseType: !36, size: 32, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1504, file: !84, line: 739, baseType: !36, size: 32, offset: 800)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1504, file: !84, line: 740, baseType: !5, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1504, file: !84, line: 741, baseType: !1521, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1504, file: !84, line: 742, baseType: !1075, size: 64, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1504, file: !84, line: 743, baseType: !77, size: 64, offset: 1024)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1504, file: !84, line: 745, baseType: !1585, size: 64, offset: 1088)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1586, line: 34, baseType: !5)
!1586 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1504, file: !84, line: 746, baseType: !1585, size: 64, offset: 1152)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1504, file: !84, line: 747, baseType: !1585, size: 64, offset: 1216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !84, line: 748, baseType: !36, size: 32, offset: 1280)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1504, file: !84, line: 749, baseType: !36, size: 32, offset: 1312)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1504, file: !84, line: 750, baseType: !36, size: 32, offset: 1344)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !1504, file: !84, line: 751, baseType: !36, size: 32, offset: 1376)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1504, file: !84, line: 752, baseType: !36, size: 32, offset: 1408)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1504, file: !84, line: 753, baseType: !955, size: 64, offset: 1472)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1504, file: !84, line: 754, baseType: !955, size: 64, offset: 1536)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1504, file: !84, line: 755, baseType: !98, size: 64, offset: 1600)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1504, file: !84, line: 756, baseType: !357, size: 64, offset: 1664)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1504, file: !84, line: 757, baseType: !357, size: 64, offset: 1728)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1504, file: !84, line: 758, baseType: !357, size: 64, offset: 1792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1504, file: !84, line: 759, baseType: !357, size: 64, offset: 1856)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1504, file: !84, line: 760, baseType: !357, size: 64, offset: 1920)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1504, file: !84, line: 763, baseType: !1603, size: 328, offset: 1984)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 328, elements: !1604)
!1604 = !{!1605}
!1605 = !DISubrange(count: 41)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1504, file: !84, line: 764, baseType: !36, size: 32, offset: 2336)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !1504, file: !84, line: 765, baseType: !1608, size: 368, offset: 2368)
!1608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 368, elements: !1609)
!1609 = !{!1610}
!1610 = !DISubrange(count: 46)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1504, file: !84, line: 766, baseType: !36, size: 32, offset: 2752)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1504, file: !84, line: 767, baseType: !1613, size: 256, offset: 2816)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !84, line: 673, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !84, line: 665, size: 256, elements: !1615)
!1615 = !{!1616, !1624, !1625, !1626, !1627}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1614, file: !84, line: 666, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !84, line: 663, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !84, line: 659, size: 192, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1619, file: !84, line: 660, baseType: !1553, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1619, file: !84, line: 661, baseType: !36, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1619, file: !84, line: 662, baseType: !1555, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1614, file: !84, line: 667, baseType: !36, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1614, file: !84, line: 668, baseType: !36, size: 32, offset: 96)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !1614, file: !84, line: 671, baseType: !36, size: 32, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !1614, file: !84, line: 672, baseType: !1585, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1504, file: !84, line: 768, baseType: !36, size: 32, offset: 3072)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1504, file: !84, line: 769, baseType: !1630, size: 704, offset: 3136)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !84, line: 703, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !84, line: 677, size: 704, elements: !1632)
!1632 = !{!1633, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1631, file: !84, line: 679, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !84, line: 52, baseType: !357)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1631, file: !84, line: 683, baseType: !6, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1631, file: !84, line: 685, baseType: !115, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1631, file: !84, line: 689, baseType: !77, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1631, file: !84, line: 690, baseType: !115, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1631, file: !84, line: 691, baseType: !115, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !1631, file: !84, line: 692, baseType: !1634, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !1631, file: !84, line: 692, baseType: !1634, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1631, file: !84, line: 693, baseType: !36, size: 32, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1631, file: !84, line: 696, baseType: !36, size: 32, offset: 544)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1631, file: !84, line: 697, baseType: !357, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1631, file: !84, line: 700, baseType: !4, size: 64, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1504, file: !84, line: 770, baseType: !357, size: 64, offset: 3840)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1504, file: !84, line: 771, baseType: !1521, size: 64, offset: 3904)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1504, file: !84, line: 772, baseType: !6, size: 64, offset: 3968)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1504, file: !84, line: 773, baseType: !1521, size: 64, offset: 4032)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1504, file: !84, line: 774, baseType: !98, size: 64, offset: 4096)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1504, file: !84, line: 775, baseType: !1527, size: 64, offset: 4160)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1504, file: !84, line: 778, baseType: !36, size: 32, offset: 4224)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1504, file: !84, line: 779, baseType: !1654, size: 131072, offset: 4256)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 131072, elements: !1655)
!1655 = !{!1656}
!1656 = !DISubrange(count: 16384)
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "c", arg: 1, scope: !1499, file: !1, line: 396, type: !1502)
!1659 = !DILocalVariable(name: "o", arg: 2, scope: !1499, file: !1, line: 396, type: !115)
!1660 = !DILocalVariable(name: "type", arg: 3, scope: !1499, file: !1, line: 396, type: !36)
!1661 = !DILocation(line: 396, column: 23, scope: !1499)
!1662 = !DILocation(line: 396, column: 32, scope: !1499)
!1663 = !DILocation(line: 396, column: 39, scope: !1499)
!1664 = !DILocation(line: 397, column: 12, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 397, column: 9)
!1666 = !DILocation(line: 397, column: 17, scope: !1665)
!1667 = !DILocation(line: 397, column: 9, scope: !1499)
!1668 = !DILocation(line: 398, column: 27, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 397, column: 26)
!1670 = !{!1671, !187, i64 112}
!1671 = !{!"sharedObjectsStruct", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !187, i64 96, !187, i64 104, !187, i64 112, !187, i64 120, !187, i64 128, !187, i64 136, !187, i64 144, !187, i64 152, !187, i64 160, !187, i64 168, !187, i64 176, !187, i64 184, !187, i64 192, !187, i64 200, !187, i64 208, !187, i64 216, !187, i64 224, !187, i64 232, !187, i64 240, !187, i64 248, !187, i64 256, !187, i64 264, !187, i64 272, !187, i64 280, !187, i64 288, !187, i64 296, !187, i64 304, !187, i64 312, !187, i64 320, !187, i64 328, !187, i64 336, !187, i64 344, !187, i64 352, !187, i64 360, !185, i64 368, !185, i64 448, !185, i64 80448, !185, i64 80704, !187, i64 80960, !187, i64 80968}
!1672 = !DILocation(line: 398, column: 9, scope: !1669)
!1673 = !DILocation(line: 399, column: 9, scope: !1669)
!1674 = !DILocation(line: 0, scope: !1499)
!1675 = !DILocation(line: 402, column: 1, scope: !1499)
!1676 = distinct !DISubprogram(name: "isSdsRepresentableAsLongLong", scope: !1, file: !1, line: 404, type: !1677, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1680)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!36, !98, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1680 = !{!1681, !1682}
!1681 = !DILocalVariable(name: "s", arg: 1, scope: !1676, file: !1, line: 404, type: !98)
!1682 = !DILocalVariable(name: "llval", arg: 2, scope: !1676, file: !1, line: 404, type: !1679)
!1683 = !DILocation(line: 404, column: 38, scope: !1676)
!1684 = !DILocation(line: 404, column: 52, scope: !1676)
!1685 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 405, column: 24, scope: !1676)
!1687 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !1686)
!1688 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1686)
!1689 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !1686)
!1690 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !1686)
!1691 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !1686)
!1692 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !1686)
!1693 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !1686)
!1694 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1686)
!1695 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !1686)
!1696 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !1686)
!1697 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1686)
!1698 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1686)
!1699 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !1686)
!1700 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1686)
!1701 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !1686)
!1702 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !1686)
!1703 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1686)
!1704 = !DILocation(line: 0, scope: !496, inlinedAt: !1686)
!1705 = !DILocation(line: 405, column: 12, scope: !1676)
!1706 = !DILocation(line: 405, column: 5, scope: !1676)
!1707 = distinct !DISubprogram(name: "isObjectRepresentableAsLongLong", scope: !1, file: !1, line: 408, type: !1708, isLocal: false, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!36, !115, !1679}
!1710 = !{!1711, !1712}
!1711 = !DILocalVariable(name: "o", arg: 1, scope: !1707, file: !1, line: 408, type: !115)
!1712 = !DILocalVariable(name: "llval", arg: 2, scope: !1707, file: !1, line: 408, type: !1679)
!1713 = !DILocation(line: 408, column: 43, scope: !1707)
!1714 = !DILocation(line: 408, column: 57, scope: !1707)
!1715 = !DILocation(line: 409, column: 5, scope: !1707)
!1716 = !DILocation(line: 410, column: 12, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 410, column: 9)
!1718 = !DILocation(line: 410, column: 21, scope: !1717)
!1719 = !DILocation(line: 410, column: 9, scope: !1707)
!1720 = !DILocation(line: 411, column: 13, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 411, column: 13)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 410, column: 42)
!1723 = !DILocation(line: 411, column: 13, scope: !1722)
!1724 = !DILocation(line: 411, column: 39, scope: !1721)
!1725 = !DILocation(line: 411, column: 27, scope: !1721)
!1726 = !{!196, !196, i64 0}
!1727 = !DILocation(line: 411, column: 20, scope: !1721)
!1728 = !DILocation(line: 414, column: 48, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1717, file: !1, line: 413, column: 12)
!1730 = !DILocation(line: 404, column: 38, scope: !1676, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 414, column: 16, scope: !1729)
!1732 = !DILocation(line: 404, column: 52, scope: !1676, inlinedAt: !1731)
!1733 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 405, column: 24, scope: !1676, inlinedAt: !1731)
!1735 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !1734)
!1736 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1734)
!1737 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !1734)
!1738 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !1734)
!1739 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !1734)
!1740 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !1734)
!1741 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !1734)
!1742 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1734)
!1743 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !1734)
!1744 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !1734)
!1745 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1734)
!1746 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1734)
!1747 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !1734)
!1748 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1734)
!1749 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !1734)
!1750 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !1734)
!1751 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1734)
!1752 = !DILocation(line: 0, scope: !496, inlinedAt: !1734)
!1753 = !DILocation(line: 405, column: 12, scope: !1676, inlinedAt: !1731)
!1754 = !DILocation(line: 414, column: 9, scope: !1729)
!1755 = !DILocation(line: 0, scope: !1729)
!1756 = !DILocation(line: 416, column: 1, scope: !1707)
!1757 = distinct !DISubprogram(name: "trimStringObjectIfNeeded", scope: !1, file: !1, line: 422, type: !381, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "o", arg: 1, scope: !1757, file: !1, line: 422, type: !115)
!1760 = !DILocation(line: 422, column: 37, scope: !1757)
!1761 = !DILocation(line: 423, column: 12, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !1, line: 423, column: 9)
!1763 = !DILocation(line: 423, column: 21, scope: !1762)
!1764 = !DILocation(line: 423, column: 41, scope: !1762)
!1765 = !DILocation(line: 424, column: 21, scope: !1762)
!1766 = !DILocalVariable(name: "s", arg: 1, scope: !1767, file: !99, line: 104, type: !487)
!1767 = distinct !DISubprogram(name: "sdsavail", scope: !99, file: !99, line: 104, type: !483, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1768)
!1768 = !{!1766, !1769, !1770, !1773, !1775, !1777}
!1769 = !DILocalVariable(name: "flags", scope: !1767, file: !99, line: 105, type: !131)
!1770 = !DILocalVariable(name: "sh", scope: !1771, file: !99, line: 111, type: !125)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !99, line: 110, column: 26)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !99, line: 106, column: 33)
!1773 = !DILocalVariable(name: "sh", scope: !1774, file: !99, line: 115, type: !136)
!1774 = distinct !DILexicalBlock(scope: !1772, file: !99, line: 114, column: 27)
!1775 = !DILocalVariable(name: "sh", scope: !1776, file: !99, line: 119, type: !146)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !99, line: 118, column: 27)
!1777 = !DILocalVariable(name: "sh", scope: !1778, file: !99, line: 123, type: !155)
!1778 = distinct !DILexicalBlock(scope: !1772, file: !99, line: 122, column: 27)
!1779 = !DILocation(line: 104, column: 41, scope: !1767, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 424, column: 9, scope: !1762)
!1781 = !DILocation(line: 105, column: 27, scope: !1767, inlinedAt: !1780)
!1782 = !DILocation(line: 105, column: 19, scope: !1767, inlinedAt: !1780)
!1783 = !DILocation(line: 106, column: 5, scope: !1767, inlinedAt: !1780)
!1784 = !DILocation(line: 111, column: 13, scope: !1771, inlinedAt: !1780)
!1785 = !DILocation(line: 112, column: 24, scope: !1771, inlinedAt: !1780)
!1786 = !DILocation(line: 112, column: 20, scope: !1771, inlinedAt: !1780)
!1787 = !DILocation(line: 112, column: 36, scope: !1771, inlinedAt: !1780)
!1788 = !DILocation(line: 112, column: 32, scope: !1771, inlinedAt: !1780)
!1789 = !DILocation(line: 112, column: 30, scope: !1771, inlinedAt: !1780)
!1790 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 424, column: 28, scope: !1762)
!1792 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1791)
!1793 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1791)
!1794 = !DILocation(line: 115, column: 13, scope: !1774, inlinedAt: !1780)
!1795 = !DILocation(line: 116, column: 24, scope: !1774, inlinedAt: !1780)
!1796 = !DILocation(line: 116, column: 20, scope: !1774, inlinedAt: !1780)
!1797 = !DILocation(line: 116, column: 36, scope: !1774, inlinedAt: !1780)
!1798 = !DILocation(line: 116, column: 32, scope: !1774, inlinedAt: !1780)
!1799 = !DILocation(line: 116, column: 30, scope: !1774, inlinedAt: !1780)
!1800 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1791)
!1801 = !DILocation(line: 119, column: 13, scope: !1776, inlinedAt: !1780)
!1802 = !DILocation(line: 120, column: 24, scope: !1776, inlinedAt: !1780)
!1803 = !DILocation(line: 120, column: 36, scope: !1776, inlinedAt: !1780)
!1804 = !DILocation(line: 120, column: 30, scope: !1776, inlinedAt: !1780)
!1805 = !DILocation(line: 120, column: 20, scope: !1776, inlinedAt: !1780)
!1806 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1791)
!1807 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1791)
!1808 = !DILocation(line: 123, column: 13, scope: !1778, inlinedAt: !1780)
!1809 = !DILocation(line: 124, column: 24, scope: !1778, inlinedAt: !1780)
!1810 = !DILocation(line: 124, column: 36, scope: !1778, inlinedAt: !1780)
!1811 = !DILocation(line: 124, column: 30, scope: !1778, inlinedAt: !1780)
!1812 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1791)
!1813 = !DILocation(line: 0, scope: !496, inlinedAt: !1791)
!1814 = !DILocation(line: 424, column: 42, scope: !1762)
!1815 = !DILocation(line: 424, column: 26, scope: !1762)
!1816 = !DILocation(line: 423, column: 9, scope: !1757)
!1817 = !DILocation(line: 426, column: 18, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1762, file: !1, line: 425, column: 5)
!1819 = !DILocation(line: 426, column: 16, scope: !1818)
!1820 = !DILocation(line: 427, column: 5, scope: !1818)
!1821 = !DILocation(line: 428, column: 1, scope: !1757)
!1822 = distinct !DISubprogram(name: "tryObjectEncoding", scope: !1, file: !1, line: 431, type: !214, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828}
!1824 = !DILocalVariable(name: "o", arg: 1, scope: !1822, file: !1, line: 431, type: !115)
!1825 = !DILocalVariable(name: "value", scope: !1822, file: !1, line: 432, type: !5)
!1826 = !DILocalVariable(name: "s", scope: !1822, file: !1, line: 433, type: !98)
!1827 = !DILocalVariable(name: "len", scope: !1822, file: !1, line: 434, type: !77)
!1828 = !DILocalVariable(name: "emb", scope: !1829, file: !1, line: 487, type: !115)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 486, column: 48)
!1830 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 486, column: 9)
!1831 = !DILocation(line: 431, column: 31, scope: !1822)
!1832 = !DILocation(line: 432, column: 5, scope: !1822)
!1833 = !DILocation(line: 433, column: 16, scope: !1822)
!1834 = !DILocation(line: 433, column: 9, scope: !1822)
!1835 = !DILocation(line: 440, column: 5, scope: !1822)
!1836 = !DILocation(line: 445, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 445, column: 9)
!1838 = !DILocation(line: 450, column: 13, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 450, column: 10)
!1840 = !DILocation(line: 450, column: 22, scope: !1839)
!1841 = !DILocation(line: 450, column: 10, scope: !1822)
!1842 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 455, column: 11, scope: !1822)
!1844 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !1843)
!1845 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1843)
!1846 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !1843)
!1847 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !1843)
!1848 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !1843)
!1849 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !1843)
!1850 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !1843)
!1851 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1843)
!1852 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !1843)
!1853 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !1843)
!1854 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1843)
!1855 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1843)
!1856 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !1843)
!1857 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1843)
!1858 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !1843)
!1859 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !1843)
!1860 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1843)
!1861 = !DILocation(line: 0, scope: !496, inlinedAt: !1843)
!1862 = !DILocation(line: 434, column: 12, scope: !1822)
!1863 = !DILocation(line: 456, column: 13, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 456, column: 9)
!1865 = !DILocation(line: 456, column: 19, scope: !1864)
!1866 = !DILocation(line: 432, column: 10, scope: !1822)
!1867 = !DILocation(line: 456, column: 22, scope: !1864)
!1868 = !DILocation(line: 456, column: 9, scope: !1822)
!1869 = !DILocation(line: 489, column: 16, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 489, column: 13)
!1871 = !DILocation(line: 461, column: 21, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 461, column: 13)
!1873 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 456, column: 46)
!1874 = !DILocation(line: 461, column: 31, scope: !1872)
!1875 = !DILocation(line: 461, column: 36, scope: !1872)
!1876 = !DILocation(line: 462, column: 22, scope: !1872)
!1877 = !DILocation(line: 462, column: 39, scope: !1872)
!1878 = !DILocation(line: 463, column: 13, scope: !1872)
!1879 = !DILocation(line: 462, column: 77, scope: !1872)
!1880 = !DILocation(line: 463, column: 24, scope: !1872)
!1881 = !DILocation(line: 466, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 465, column: 9)
!1883 = !DILocation(line: 467, column: 42, scope: !1882)
!1884 = !DILocation(line: 467, column: 26, scope: !1882)
!1885 = !DILocation(line: 349, column: 25, scope: !380, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 467, column: 13, scope: !1882)
!1887 = !DILocation(line: 350, column: 12, scope: !387, inlinedAt: !1886)
!1888 = !DILocation(line: 350, column: 21, scope: !387, inlinedAt: !1886)
!1889 = !DILocation(line: 350, column: 9, scope: !380, inlinedAt: !1886)
!1890 = !DILocation(line: 350, column: 56, scope: !387, inlinedAt: !1886)
!1891 = !DILocation(line: 350, column: 45, scope: !387, inlinedAt: !1886)
!1892 = !DILocation(line: 470, column: 20, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !1, line: 470, column: 17)
!1894 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 469, column: 16)
!1895 = !DILocation(line: 470, column: 17, scope: !1894)
!1896 = !DILocation(line: 471, column: 28, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 470, column: 50)
!1898 = !DILocation(line: 471, column: 17, scope: !1897)
!1899 = !DILocation(line: 472, column: 29, scope: !1897)
!1900 = !DILocation(line: 473, column: 34, scope: !1897)
!1901 = !DILocation(line: 473, column: 24, scope: !1897)
!1902 = !DILocation(line: 474, column: 17, scope: !1897)
!1903 = !DILocation(line: 476, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 475, column: 60)
!1905 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 475, column: 24)
!1906 = !DILocation(line: 477, column: 63, scope: !1904)
!1907 = !DILocation(line: 169, column: 56, scope: !439, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 477, column: 24, scope: !1904)
!1909 = !DILocation(line: 170, column: 12, scope: !439, inlinedAt: !1908)
!1910 = !DILocation(line: 477, column: 17, scope: !1904)
!1911 = !DILocation(line: 486, column: 13, scope: !1830)
!1912 = !DILocation(line: 486, column: 9, scope: !1822)
!1913 = !DILocation(line: 489, column: 25, scope: !1870)
!1914 = !DILocation(line: 489, column: 13, scope: !1829)
!1915 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 490, column: 44, scope: !1829)
!1917 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !1916)
!1918 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1916)
!1919 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !1916)
!1920 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !1916)
!1921 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !1916)
!1922 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !1916)
!1923 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !1916)
!1924 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1916)
!1925 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !1916)
!1926 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !1916)
!1927 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1916)
!1928 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1916)
!1929 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !1916)
!1930 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1916)
!1931 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !1916)
!1932 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !1916)
!1933 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1916)
!1934 = !DILocation(line: 0, scope: !496, inlinedAt: !1916)
!1935 = !DILocation(line: 490, column: 15, scope: !1829)
!1936 = !DILocation(line: 487, column: 15, scope: !1829)
!1937 = !DILocation(line: 491, column: 9, scope: !1829)
!1938 = !DILocation(line: 492, column: 9, scope: !1829)
!1939 = !DILocation(line: 422, column: 37, scope: !1757, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 504, column: 5, scope: !1822)
!1941 = !DILocation(line: 423, column: 12, scope: !1762, inlinedAt: !1940)
!1942 = !DILocation(line: 423, column: 21, scope: !1762, inlinedAt: !1940)
!1943 = !DILocation(line: 423, column: 41, scope: !1762, inlinedAt: !1940)
!1944 = !DILocation(line: 104, column: 41, scope: !1767, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 424, column: 9, scope: !1762, inlinedAt: !1940)
!1946 = !DILocation(line: 105, column: 19, scope: !1767, inlinedAt: !1945)
!1947 = !DILocation(line: 106, column: 5, scope: !1767, inlinedAt: !1945)
!1948 = !DILocation(line: 111, column: 13, scope: !1771, inlinedAt: !1945)
!1949 = !DILocation(line: 112, column: 24, scope: !1771, inlinedAt: !1945)
!1950 = !DILocation(line: 112, column: 20, scope: !1771, inlinedAt: !1945)
!1951 = !DILocation(line: 112, column: 36, scope: !1771, inlinedAt: !1945)
!1952 = !DILocation(line: 112, column: 32, scope: !1771, inlinedAt: !1945)
!1953 = !DILocation(line: 112, column: 30, scope: !1771, inlinedAt: !1945)
!1954 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 424, column: 28, scope: !1762, inlinedAt: !1940)
!1956 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !1955)
!1957 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !1955)
!1958 = !DILocation(line: 115, column: 13, scope: !1774, inlinedAt: !1945)
!1959 = !DILocation(line: 116, column: 24, scope: !1774, inlinedAt: !1945)
!1960 = !DILocation(line: 116, column: 20, scope: !1774, inlinedAt: !1945)
!1961 = !DILocation(line: 116, column: 36, scope: !1774, inlinedAt: !1945)
!1962 = !DILocation(line: 116, column: 32, scope: !1774, inlinedAt: !1945)
!1963 = !DILocation(line: 116, column: 30, scope: !1774, inlinedAt: !1945)
!1964 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !1955)
!1965 = !DILocation(line: 119, column: 13, scope: !1776, inlinedAt: !1945)
!1966 = !DILocation(line: 120, column: 24, scope: !1776, inlinedAt: !1945)
!1967 = !DILocation(line: 120, column: 36, scope: !1776, inlinedAt: !1945)
!1968 = !DILocation(line: 120, column: 30, scope: !1776, inlinedAt: !1945)
!1969 = !DILocation(line: 120, column: 20, scope: !1776, inlinedAt: !1945)
!1970 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !1955)
!1971 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !1955)
!1972 = !DILocation(line: 123, column: 13, scope: !1778, inlinedAt: !1945)
!1973 = !DILocation(line: 124, column: 24, scope: !1778, inlinedAt: !1945)
!1974 = !DILocation(line: 124, column: 36, scope: !1778, inlinedAt: !1945)
!1975 = !DILocation(line: 124, column: 30, scope: !1778, inlinedAt: !1945)
!1976 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !1955)
!1977 = !DILocation(line: 0, scope: !496, inlinedAt: !1955)
!1978 = !DILocation(line: 424, column: 42, scope: !1762, inlinedAt: !1940)
!1979 = !DILocation(line: 424, column: 26, scope: !1762, inlinedAt: !1940)
!1980 = !DILocation(line: 423, column: 9, scope: !1757, inlinedAt: !1940)
!1981 = !DILocation(line: 426, column: 18, scope: !1818, inlinedAt: !1940)
!1982 = !DILocation(line: 426, column: 16, scope: !1818, inlinedAt: !1940)
!1983 = !DILocation(line: 427, column: 5, scope: !1818, inlinedAt: !1940)
!1984 = !DILocation(line: 0, scope: !1837)
!1985 = !DILocation(line: 508, column: 1, scope: !1822)
!1986 = distinct !DISubprogram(name: "getDecodedObject", scope: !1, file: !1, line: 512, type: !214, isLocal: false, isDefinition: true, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "o", arg: 1, scope: !1986, file: !1, line: 512, type: !115)
!1989 = !DILocalVariable(name: "dec", scope: !1986, file: !1, line: 513, type: !115)
!1990 = !DILocalVariable(name: "buf", scope: !1991, file: !1, line: 520, type: !1993)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 519, column: 67)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 519, column: 9)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !1136)
!1994 = !DILocation(line: 512, column: 30, scope: !1986)
!1995 = !DILocation(line: 515, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 515, column: 9)
!1997 = !DILocation(line: 349, column: 25, scope: !380, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 516, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !1, line: 515, column: 30)
!2000 = !DILocation(line: 350, column: 12, scope: !387, inlinedAt: !1998)
!2001 = !DILocation(line: 350, column: 21, scope: !387, inlinedAt: !1998)
!2002 = !DILocation(line: 350, column: 9, scope: !380, inlinedAt: !1998)
!2003 = !DILocation(line: 350, column: 56, scope: !387, inlinedAt: !1998)
!2004 = !DILocation(line: 350, column: 45, scope: !387, inlinedAt: !1998)
!2005 = !DILocation(line: 519, column: 31, scope: !1992)
!2006 = !DILocation(line: 520, column: 9, scope: !1991)
!2007 = !DILocation(line: 520, column: 14, scope: !1991)
!2008 = !DILocation(line: 522, column: 35, scope: !1991)
!2009 = !DILocation(line: 522, column: 9, scope: !1991)
!2010 = !DILocation(line: 523, column: 38, scope: !1991)
!2011 = !DILocation(line: 523, column: 15, scope: !1991)
!2012 = !DILocation(line: 513, column: 11, scope: !1986)
!2013 = !DILocation(line: 525, column: 5, scope: !1992)
!2014 = !DILocation(line: 526, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 525, column: 12)
!2016 = !DILocation(line: 0, scope: !1991)
!2017 = !DILocation(line: 528, column: 1, scope: !1986)
!2018 = distinct !DISubprogram(name: "compareStringObjectsWithFlags", scope: !1, file: !1, line: 541, type: !2019, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!36, !115, !115, !36}
!2021 = !{!2022, !2023, !2024, !2025, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2022 = !DILocalVariable(name: "a", arg: 1, scope: !2018, file: !1, line: 541, type: !115)
!2023 = !DILocalVariable(name: "b", arg: 2, scope: !2018, file: !1, line: 541, type: !115)
!2024 = !DILocalVariable(name: "flags", arg: 3, scope: !2018, file: !1, line: 541, type: !36)
!2025 = !DILocalVariable(name: "bufa", scope: !2018, file: !1, line: 543, type: !2026)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 1024, elements: !2027)
!2027 = !{!2028}
!2028 = !DISubrange(count: 128)
!2029 = !DILocalVariable(name: "bufb", scope: !2018, file: !1, line: 543, type: !2026)
!2030 = !DILocalVariable(name: "astr", scope: !2018, file: !1, line: 543, type: !81)
!2031 = !DILocalVariable(name: "bstr", scope: !2018, file: !1, line: 543, type: !81)
!2032 = !DILocalVariable(name: "alen", scope: !2018, file: !1, line: 544, type: !77)
!2033 = !DILocalVariable(name: "blen", scope: !2018, file: !1, line: 544, type: !77)
!2034 = !DILocalVariable(name: "minlen", scope: !2018, file: !1, line: 544, type: !77)
!2035 = !DILocalVariable(name: "cmp", scope: !2036, file: !1, line: 564, type: !36)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 563, column: 12)
!2037 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 561, column: 9)
!2038 = !DILocation(line: 541, column: 41, scope: !2018)
!2039 = !DILocation(line: 541, column: 50, scope: !2018)
!2040 = !DILocation(line: 541, column: 57, scope: !2018)
!2041 = !DILocation(line: 542, column: 5, scope: !2018)
!2042 = !DILocation(line: 543, column: 5, scope: !2018)
!2043 = !DILocation(line: 543, column: 10, scope: !2018)
!2044 = !DILocation(line: 543, column: 21, scope: !2018)
!2045 = !DILocation(line: 546, column: 11, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 546, column: 9)
!2047 = !DILocation(line: 546, column: 9, scope: !2018)
!2048 = !DILocation(line: 547, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 547, column: 9)
!2050 = !DILocation(line: 548, column: 19, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 547, column: 30)
!2052 = !DILocation(line: 543, column: 33, scope: !2018)
!2053 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 549, column: 16, scope: !2051)
!2055 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2054)
!2056 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2054)
!2057 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2054)
!2058 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2054)
!2059 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2054)
!2060 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2054)
!2061 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2054)
!2062 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2054)
!2063 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2054)
!2064 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2054)
!2065 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2054)
!2066 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2054)
!2067 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2054)
!2068 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2054)
!2069 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2054)
!2070 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2054)
!2071 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2054)
!2072 = !DILocation(line: 551, column: 54, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2049, file: !1, line: 550, column: 12)
!2074 = !DILocation(line: 551, column: 16, scope: !2073)
!2075 = !DILocation(line: 544, column: 12, scope: !2018)
!2076 = !DILocation(line: 554, column: 9, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2018, file: !1, line: 554, column: 9)
!2078 = !DILocation(line: 0, scope: !2073)
!2079 = !DILocation(line: 555, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 554, column: 30)
!2081 = !DILocation(line: 543, column: 40, scope: !2018)
!2082 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 556, column: 16, scope: !2080)
!2084 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2083)
!2085 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2083)
!2086 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2083)
!2087 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2083)
!2088 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2083)
!2089 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2083)
!2090 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2083)
!2091 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2083)
!2092 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2083)
!2093 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2083)
!2094 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2083)
!2095 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2083)
!2096 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2083)
!2097 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2083)
!2098 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2083)
!2099 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2083)
!2100 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2083)
!2101 = !DILocation(line: 558, column: 54, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2077, file: !1, line: 557, column: 12)
!2103 = !DILocation(line: 558, column: 16, scope: !2102)
!2104 = !DILocation(line: 544, column: 18, scope: !2018)
!2105 = !DILocation(line: 0, scope: !2102)
!2106 = !DILocation(line: 561, column: 15, scope: !2037)
!2107 = !DILocation(line: 561, column: 9, scope: !2018)
!2108 = !DILocation(line: 562, column: 16, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2037, file: !1, line: 561, column: 37)
!2110 = !DILocation(line: 562, column: 9, scope: !2109)
!2111 = !DILocation(line: 566, column: 24, scope: !2036)
!2112 = !DILocation(line: 566, column: 18, scope: !2036)
!2113 = !DILocation(line: 544, column: 24, scope: !2018)
!2114 = !DILocation(line: 567, column: 15, scope: !2036)
!2115 = !DILocation(line: 564, column: 13, scope: !2036)
!2116 = !DILocation(line: 568, column: 17, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2036, file: !1, line: 568, column: 13)
!2118 = !DILocation(line: 568, column: 34, scope: !2117)
!2119 = !DILocation(line: 568, column: 30, scope: !2117)
!2120 = !DILocation(line: 568, column: 13, scope: !2036)
!2121 = !DILocation(line: 0, scope: !2117)
!2122 = !DILocation(line: 571, column: 1, scope: !2018)
!2123 = distinct !DISubprogram(name: "compareStringObjects", scope: !1, file: !1, line: 574, type: !2124, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!36, !115, !115}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "a", arg: 1, scope: !2123, file: !1, line: 574, type: !115)
!2128 = !DILocalVariable(name: "b", arg: 2, scope: !2123, file: !1, line: 574, type: !115)
!2129 = !DILocation(line: 574, column: 32, scope: !2123)
!2130 = !DILocation(line: 574, column: 41, scope: !2123)
!2131 = !DILocation(line: 575, column: 12, scope: !2123)
!2132 = !DILocation(line: 575, column: 5, scope: !2123)
!2133 = distinct !DISubprogram(name: "collateStringObjects", scope: !1, file: !1, line: 579, type: !2124, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2134)
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "a", arg: 1, scope: !2133, file: !1, line: 579, type: !115)
!2136 = !DILocalVariable(name: "b", arg: 2, scope: !2133, file: !1, line: 579, type: !115)
!2137 = !DILocation(line: 579, column: 32, scope: !2133)
!2138 = !DILocation(line: 579, column: 41, scope: !2133)
!2139 = !DILocation(line: 580, column: 12, scope: !2133)
!2140 = !DILocation(line: 580, column: 5, scope: !2133)
!2141 = distinct !DISubprogram(name: "equalStringObjects", scope: !1, file: !1, line: 587, type: !2124, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2142)
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "a", arg: 1, scope: !2141, file: !1, line: 587, type: !115)
!2144 = !DILocalVariable(name: "b", arg: 2, scope: !2141, file: !1, line: 587, type: !115)
!2145 = !DILocation(line: 587, column: 30, scope: !2141)
!2146 = !DILocation(line: 587, column: 39, scope: !2141)
!2147 = !DILocation(line: 588, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 588, column: 9)
!2149 = !DILocation(line: 588, column: 21, scope: !2148)
!2150 = !DILocation(line: 588, column: 41, scope: !2148)
!2151 = !DILocation(line: 589, column: 12, scope: !2148)
!2152 = !DILocation(line: 589, column: 21, scope: !2148)
!2153 = !DILocation(line: 588, column: 9, scope: !2141)
!2154 = !DILocation(line: 592, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 589, column: 41)
!2156 = !DILocation(line: 592, column: 29, scope: !2155)
!2157 = !DILocation(line: 592, column: 23, scope: !2155)
!2158 = !DILocation(line: 592, column: 9, scope: !2155)
!2159 = !DILocation(line: 574, column: 32, scope: !2123, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 594, column: 16, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 593, column: 12)
!2162 = !DILocation(line: 574, column: 41, scope: !2123, inlinedAt: !2160)
!2163 = !DILocation(line: 575, column: 12, scope: !2123, inlinedAt: !2160)
!2164 = !DILocation(line: 594, column: 42, scope: !2161)
!2165 = !DILocation(line: 594, column: 9, scope: !2161)
!2166 = !DILocation(line: 0, scope: !2161)
!2167 = !DILocation(line: 596, column: 1, scope: !2141)
!2168 = distinct !DISubprogram(name: "stringObjectLen", scope: !1, file: !1, line: 598, type: !2169, isLocal: false, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!77, !115}
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "o", arg: 1, scope: !2168, file: !1, line: 598, type: !115)
!2173 = !DILocation(line: 598, column: 30, scope: !2168)
!2174 = !DILocation(line: 599, column: 5, scope: !2168)
!2175 = !DILocation(line: 600, column: 9, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 600, column: 9)
!2177 = !DILocation(line: 601, column: 26, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 600, column: 30)
!2179 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 601, column: 16, scope: !2178)
!2181 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2180)
!2182 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2180)
!2183 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2180)
!2184 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2180)
!2185 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2180)
!2186 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2180)
!2187 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2180)
!2188 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2180)
!2189 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2180)
!2190 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2180)
!2191 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2180)
!2192 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2180)
!2193 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2180)
!2194 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2180)
!2195 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2180)
!2196 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2180)
!2197 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2180)
!2198 = !DILocation(line: 603, column: 35, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 602, column: 12)
!2200 = !DILocation(line: 603, column: 16, scope: !2199)
!2201 = !DILocation(line: 603, column: 9, scope: !2199)
!2202 = !DILocation(line: 0, scope: !2199)
!2203 = !DILocation(line: 605, column: 1, scope: !2168)
!2204 = distinct !DISubprogram(name: "getDoubleFromObject", scope: !1, file: !1, line: 607, type: !2205, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2208)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!36, !470, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DILocalVariable(name: "o", arg: 1, scope: !2204, file: !1, line: 607, type: !470)
!2210 = !DILocalVariable(name: "target", arg: 2, scope: !2204, file: !1, line: 607, type: !2207)
!2211 = !DILocalVariable(name: "value", scope: !2204, file: !1, line: 608, type: !64)
!2212 = !DILocalVariable(name: "eptr", scope: !2204, file: !1, line: 609, type: !81)
!2213 = !DILocation(line: 607, column: 37, scope: !2204)
!2214 = !DILocation(line: 607, column: 48, scope: !2204)
!2215 = !DILocation(line: 609, column: 5, scope: !2204)
!2216 = !DILocation(line: 611, column: 11, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2204, file: !1, line: 611, column: 9)
!2218 = !DILocation(line: 611, column: 9, scope: !2204)
!2219 = !DILocation(line: 614, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !1, line: 613, column: 12)
!2221 = !DILocation(line: 615, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !1, line: 615, column: 13)
!2223 = !DILocation(line: 616, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 615, column: 34)
!2225 = !DILocation(line: 616, column: 19, scope: !2224)
!2226 = !DILocation(line: 617, column: 31, scope: !2224)
!2227 = !DILocation(line: 609, column: 11, scope: !2204)
!2228 = !DILocation(line: 617, column: 21, scope: !2224)
!2229 = !DILocation(line: 608, column: 12, scope: !2204)
!2230 = !DILocation(line: 618, column: 27, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 618, column: 17)
!2232 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 618, column: 17, scope: !2231)
!2234 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2233)
!2235 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2233)
!2236 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2233)
!2237 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2233)
!2238 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2233)
!2239 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2233)
!2240 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2233)
!2241 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2233)
!2242 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2233)
!2243 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2233)
!2244 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2233)
!2245 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2233)
!2246 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2233)
!2247 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2233)
!2248 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2233)
!2249 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2233)
!2250 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2233)
!2251 = !DILocation(line: 0, scope: !496, inlinedAt: !2233)
!2252 = !DILocation(line: 618, column: 32, scope: !2231)
!2253 = !DILocation(line: 618, column: 37, scope: !2231)
!2254 = !DILocation(line: 619, column: 17, scope: !2231)
!2255 = !DILocation(line: 619, column: 51, scope: !2231)
!2256 = !DILocation(line: 620, column: 26, scope: !2231)
!2257 = !DILocation(line: 620, column: 30, scope: !2231)
!2258 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 620, column: 49, scope: !2231)
!2260 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2259)
!2261 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2259)
!2262 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2259)
!2263 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2259)
!2264 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2259)
!2265 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2259)
!2266 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2259)
!2267 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2259)
!2268 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2259)
!2269 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2259)
!2270 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2259)
!2271 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2259)
!2272 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2259)
!2273 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2259)
!2274 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2259)
!2275 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2259)
!2276 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2259)
!2277 = !DILocation(line: 0, scope: !496, inlinedAt: !2259)
!2278 = !DILocation(line: 620, column: 46, scope: !2231)
!2279 = !DILocation(line: 620, column: 64, scope: !2231)
!2280 = !DILocation(line: 621, column: 18, scope: !2231)
!2281 = !DILocation(line: 621, column: 24, scope: !2231)
!2282 = !DILocation(line: 621, column: 34, scope: !2231)
!2283 = !DILocation(line: 622, column: 28, scope: !2231)
!2284 = !DILocation(line: 622, column: 49, scope: !2231)
!2285 = !DILocation(line: 622, column: 40, scope: !2231)
!2286 = !DILocation(line: 622, column: 71, scope: !2231)
!2287 = !DILocation(line: 623, column: 17, scope: !2231)
!2288 = !DILocation(line: 618, column: 17, scope: !2224)
!2289 = !DILocation(line: 626, column: 30, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 625, column: 53)
!2291 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 625, column: 20)
!2292 = !DILocation(line: 626, column: 21, scope: !2290)
!2293 = !DILocation(line: 628, column: 13, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !1, line: 627, column: 16)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 631, column: 13, scope: !2204)
!2297 = !{!197, !197, i64 0}
!2298 = !DILocation(line: 632, column: 5, scope: !2204)
!2299 = !DILocation(line: 0, scope: !2231)
!2300 = !DILocation(line: 633, column: 1, scope: !2204)
!2301 = distinct !DISubprogram(name: "getDoubleFromObjectOrReply", scope: !1, file: !1, line: 635, type: !2302, isLocal: false, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!36, !1502, !115, !2207, !74}
!2304 = !{!2305, !2306, !2307, !2308, !2309}
!2305 = !DILocalVariable(name: "c", arg: 1, scope: !2301, file: !1, line: 635, type: !1502)
!2306 = !DILocalVariable(name: "o", arg: 2, scope: !2301, file: !1, line: 635, type: !115)
!2307 = !DILocalVariable(name: "target", arg: 3, scope: !2301, file: !1, line: 635, type: !2207)
!2308 = !DILocalVariable(name: "msg", arg: 4, scope: !2301, file: !1, line: 635, type: !74)
!2309 = !DILocalVariable(name: "value", scope: !2301, file: !1, line: 636, type: !64)
!2310 = !DILocation(line: 635, column: 40, scope: !2301)
!2311 = !DILocation(line: 635, column: 49, scope: !2301)
!2312 = !DILocation(line: 635, column: 60, scope: !2301)
!2313 = !DILocation(line: 635, column: 80, scope: !2301)
!2314 = !DILocation(line: 636, column: 5, scope: !2301)
!2315 = !DILocation(line: 636, column: 12, scope: !2301)
!2316 = !DILocation(line: 637, column: 9, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 637, column: 9)
!2318 = !DILocation(line: 637, column: 40, scope: !2317)
!2319 = !DILocation(line: 637, column: 9, scope: !2301)
!2320 = !DILocation(line: 638, column: 17, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !1, line: 638, column: 13)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !1, line: 637, column: 49)
!2323 = !DILocation(line: 638, column: 13, scope: !2322)
!2324 = !DILocation(line: 639, column: 13, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 638, column: 26)
!2326 = !DILocation(line: 640, column: 9, scope: !2325)
!2327 = !DILocation(line: 641, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 640, column: 16)
!2329 = !DILocation(line: 645, column: 15, scope: !2301)
!2330 = !DILocation(line: 645, column: 13, scope: !2301)
!2331 = !DILocation(line: 646, column: 5, scope: !2301)
!2332 = !DILocation(line: 0, scope: !2301)
!2333 = !DILocation(line: 647, column: 1, scope: !2301)
!2334 = distinct !DISubprogram(name: "getLongDoubleFromObject", scope: !1, file: !1, line: 649, type: !2335, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2338)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!36, !115, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!2338 = !{!2339, !2340, !2341, !2342}
!2339 = !DILocalVariable(name: "o", arg: 1, scope: !2334, file: !1, line: 649, type: !115)
!2340 = !DILocalVariable(name: "target", arg: 2, scope: !2334, file: !1, line: 649, type: !2337)
!2341 = !DILocalVariable(name: "value", scope: !2334, file: !1, line: 650, type: !448)
!2342 = !DILocalVariable(name: "eptr", scope: !2334, file: !1, line: 651, type: !81)
!2343 = !DILocation(line: 649, column: 35, scope: !2334)
!2344 = !DILocation(line: 649, column: 51, scope: !2334)
!2345 = !DILocation(line: 651, column: 5, scope: !2334)
!2346 = !DILocation(line: 653, column: 11, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 653, column: 9)
!2348 = !DILocation(line: 653, column: 9, scope: !2334)
!2349 = !DILocation(line: 656, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2347, file: !1, line: 655, column: 12)
!2351 = !DILocation(line: 657, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2350, file: !1, line: 657, column: 13)
!2353 = !DILocation(line: 658, column: 13, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2352, file: !1, line: 657, column: 34)
!2355 = !DILocation(line: 658, column: 19, scope: !2354)
!2356 = !DILocation(line: 659, column: 32, scope: !2354)
!2357 = !DILocation(line: 651, column: 11, scope: !2334)
!2358 = !DILocation(line: 659, column: 21, scope: !2354)
!2359 = !DILocation(line: 650, column: 17, scope: !2334)
!2360 = !DILocation(line: 660, column: 27, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 660, column: 17)
!2362 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 660, column: 17, scope: !2361)
!2364 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2363)
!2365 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2363)
!2366 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2363)
!2367 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2363)
!2368 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2363)
!2369 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2363)
!2370 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2363)
!2371 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2363)
!2372 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2363)
!2373 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2363)
!2374 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2363)
!2375 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2363)
!2376 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2363)
!2377 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2363)
!2378 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2363)
!2379 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2363)
!2380 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2363)
!2381 = !DILocation(line: 0, scope: !496, inlinedAt: !2363)
!2382 = !DILocation(line: 660, column: 32, scope: !2361)
!2383 = !DILocation(line: 660, column: 37, scope: !2361)
!2384 = !DILocation(line: 661, column: 17, scope: !2361)
!2385 = !DILocation(line: 661, column: 51, scope: !2361)
!2386 = !DILocation(line: 662, column: 26, scope: !2361)
!2387 = !DILocation(line: 662, column: 30, scope: !2361)
!2388 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 662, column: 49, scope: !2361)
!2390 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2389)
!2391 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2389)
!2392 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2389)
!2393 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2389)
!2394 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2389)
!2395 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2389)
!2396 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2389)
!2397 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2389)
!2398 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2389)
!2399 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2389)
!2400 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2389)
!2401 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2389)
!2402 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2389)
!2403 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2389)
!2404 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2389)
!2405 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2389)
!2406 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2389)
!2407 = !DILocation(line: 0, scope: !496, inlinedAt: !2389)
!2408 = !DILocation(line: 662, column: 46, scope: !2361)
!2409 = !DILocation(line: 662, column: 64, scope: !2361)
!2410 = !DILocation(line: 663, column: 18, scope: !2361)
!2411 = !DILocation(line: 663, column: 24, scope: !2361)
!2412 = !DILocation(line: 663, column: 34, scope: !2361)
!2413 = !DILocation(line: 664, column: 28, scope: !2361)
!2414 = !DILocation(line: 664, column: 49, scope: !2361)
!2415 = !DILocation(line: 664, column: 40, scope: !2361)
!2416 = !DILocation(line: 664, column: 71, scope: !2361)
!2417 = !DILocation(line: 665, column: 17, scope: !2361)
!2418 = !DILocation(line: 660, column: 17, scope: !2354)
!2419 = !DILocation(line: 668, column: 30, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 667, column: 53)
!2421 = distinct !DILexicalBlock(scope: !2352, file: !1, line: 667, column: 20)
!2422 = !DILocation(line: 668, column: 21, scope: !2420)
!2423 = !DILocation(line: 670, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !1, line: 669, column: 16)
!2425 = !DILocation(line: 0, scope: !2420)
!2426 = !DILocation(line: 673, column: 13, scope: !2334)
!2427 = !{!2428, !2428, i64 0}
!2428 = !{!"long double", !185, i64 0}
!2429 = !DILocation(line: 674, column: 5, scope: !2334)
!2430 = !DILocation(line: 0, scope: !2361)
!2431 = !DILocation(line: 675, column: 1, scope: !2334)
!2432 = distinct !DISubprogram(name: "getLongDoubleFromObjectOrReply", scope: !1, file: !1, line: 677, type: !2433, isLocal: false, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!36, !1502, !115, !2337, !74}
!2435 = !{!2436, !2437, !2438, !2439, !2440}
!2436 = !DILocalVariable(name: "c", arg: 1, scope: !2432, file: !1, line: 677, type: !1502)
!2437 = !DILocalVariable(name: "o", arg: 2, scope: !2432, file: !1, line: 677, type: !115)
!2438 = !DILocalVariable(name: "target", arg: 3, scope: !2432, file: !1, line: 677, type: !2337)
!2439 = !DILocalVariable(name: "msg", arg: 4, scope: !2432, file: !1, line: 677, type: !74)
!2440 = !DILocalVariable(name: "value", scope: !2432, file: !1, line: 678, type: !448)
!2441 = !DILocation(line: 677, column: 44, scope: !2432)
!2442 = !DILocation(line: 677, column: 53, scope: !2432)
!2443 = !DILocation(line: 677, column: 69, scope: !2432)
!2444 = !DILocation(line: 677, column: 89, scope: !2432)
!2445 = !DILocation(line: 678, column: 5, scope: !2432)
!2446 = !DILocation(line: 678, column: 17, scope: !2432)
!2447 = !DILocation(line: 679, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2432, file: !1, line: 679, column: 9)
!2449 = !DILocation(line: 679, column: 44, scope: !2448)
!2450 = !DILocation(line: 679, column: 9, scope: !2432)
!2451 = !DILocation(line: 680, column: 17, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1, line: 680, column: 13)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !1, line: 679, column: 53)
!2454 = !DILocation(line: 680, column: 13, scope: !2453)
!2455 = !DILocation(line: 681, column: 13, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 680, column: 26)
!2457 = !DILocation(line: 682, column: 9, scope: !2456)
!2458 = !DILocation(line: 683, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 682, column: 16)
!2460 = !DILocation(line: 687, column: 15, scope: !2432)
!2461 = !DILocation(line: 687, column: 13, scope: !2432)
!2462 = !DILocation(line: 688, column: 5, scope: !2432)
!2463 = !DILocation(line: 0, scope: !2432)
!2464 = !DILocation(line: 689, column: 1, scope: !2432)
!2465 = distinct !DISubprogram(name: "getLongLongFromObject", scope: !1, file: !1, line: 691, type: !1708, isLocal: false, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "o", arg: 1, scope: !2465, file: !1, line: 691, type: !115)
!2468 = !DILocalVariable(name: "target", arg: 2, scope: !2465, file: !1, line: 691, type: !1679)
!2469 = !DILocalVariable(name: "value", scope: !2465, file: !1, line: 692, type: !357)
!2470 = !DILocation(line: 691, column: 33, scope: !2465)
!2471 = !DILocation(line: 691, column: 47, scope: !2465)
!2472 = !DILocation(line: 692, column: 5, scope: !2465)
!2473 = !DILocation(line: 694, column: 11, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2465, file: !1, line: 694, column: 9)
!2475 = !DILocation(line: 694, column: 9, scope: !2465)
!2476 = !DILocation(line: 692, column: 15, scope: !2465)
!2477 = !DILocation(line: 695, column: 15, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 694, column: 20)
!2479 = !DILocation(line: 696, column: 5, scope: !2478)
!2480 = !DILocation(line: 697, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 696, column: 12)
!2482 = !DILocation(line: 698, column: 13, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 698, column: 13)
!2484 = !DILocation(line: 699, column: 30, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !1, line: 699, column: 17)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 698, column: 34)
!2487 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 699, column: 34, scope: !2485)
!2489 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2488)
!2490 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2488)
!2491 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2488)
!2492 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2488)
!2493 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2488)
!2494 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2488)
!2495 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2488)
!2496 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2488)
!2497 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2488)
!2498 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2488)
!2499 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2488)
!2500 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2488)
!2501 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2488)
!2502 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2488)
!2503 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2488)
!2504 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2488)
!2505 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2488)
!2506 = !DILocation(line: 0, scope: !496, inlinedAt: !2488)
!2507 = !DILocation(line: 699, column: 17, scope: !2485)
!2508 = !DILocation(line: 699, column: 57, scope: !2485)
!2509 = !DILocation(line: 699, column: 17, scope: !2486)
!2510 = !DILocation(line: 701, column: 30, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 700, column: 53)
!2512 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 700, column: 20)
!2513 = !DILocation(line: 701, column: 19, scope: !2511)
!2514 = !DILocation(line: 703, column: 13, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 702, column: 16)
!2516 = !DILocation(line: 706, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2465, file: !1, line: 706, column: 9)
!2518 = !DILocation(line: 706, column: 9, scope: !2465)
!2519 = !DILocation(line: 706, column: 27, scope: !2517)
!2520 = !DILocation(line: 706, column: 25, scope: !2517)
!2521 = !DILocation(line: 706, column: 17, scope: !2517)
!2522 = !DILocation(line: 0, scope: !2485)
!2523 = !DILocation(line: 708, column: 1, scope: !2465)
!2524 = distinct !DISubprogram(name: "getLongLongFromObjectOrReply", scope: !1, file: !1, line: 710, type: !2525, isLocal: false, isDefinition: true, scopeLine: 710, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!36, !1502, !115, !1679, !74}
!2527 = !{!2528, !2529, !2530, !2531, !2532}
!2528 = !DILocalVariable(name: "c", arg: 1, scope: !2524, file: !1, line: 710, type: !1502)
!2529 = !DILocalVariable(name: "o", arg: 2, scope: !2524, file: !1, line: 710, type: !115)
!2530 = !DILocalVariable(name: "target", arg: 3, scope: !2524, file: !1, line: 710, type: !1679)
!2531 = !DILocalVariable(name: "msg", arg: 4, scope: !2524, file: !1, line: 710, type: !74)
!2532 = !DILocalVariable(name: "value", scope: !2524, file: !1, line: 711, type: !357)
!2533 = !DILocation(line: 710, column: 42, scope: !2524)
!2534 = !DILocation(line: 710, column: 51, scope: !2524)
!2535 = !DILocation(line: 710, column: 65, scope: !2524)
!2536 = !DILocation(line: 710, column: 85, scope: !2524)
!2537 = !DILocation(line: 711, column: 5, scope: !2524)
!2538 = !DILocation(line: 711, column: 15, scope: !2524)
!2539 = !DILocation(line: 712, column: 9, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !1, line: 712, column: 9)
!2541 = !DILocation(line: 712, column: 42, scope: !2540)
!2542 = !DILocation(line: 712, column: 9, scope: !2524)
!2543 = !DILocation(line: 713, column: 17, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 713, column: 13)
!2545 = distinct !DILexicalBlock(scope: !2540, file: !1, line: 712, column: 51)
!2546 = !DILocation(line: 713, column: 13, scope: !2545)
!2547 = !DILocation(line: 714, column: 13, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !1, line: 713, column: 26)
!2549 = !DILocation(line: 715, column: 9, scope: !2548)
!2550 = !DILocation(line: 716, column: 13, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2544, file: !1, line: 715, column: 16)
!2552 = !DILocation(line: 720, column: 15, scope: !2524)
!2553 = !DILocation(line: 720, column: 13, scope: !2524)
!2554 = !DILocation(line: 721, column: 5, scope: !2524)
!2555 = !DILocation(line: 0, scope: !2524)
!2556 = !DILocation(line: 722, column: 1, scope: !2524)
!2557 = distinct !DISubprogram(name: "getLongFromObjectOrReply", scope: !1, file: !1, line: 724, type: !2558, isLocal: false, isDefinition: true, scopeLine: 724, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2561)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!36, !1502, !115, !2560, !74}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2561 = !{!2562, !2563, !2564, !2565, !2566}
!2562 = !DILocalVariable(name: "c", arg: 1, scope: !2557, file: !1, line: 724, type: !1502)
!2563 = !DILocalVariable(name: "o", arg: 2, scope: !2557, file: !1, line: 724, type: !115)
!2564 = !DILocalVariable(name: "target", arg: 3, scope: !2557, file: !1, line: 724, type: !2560)
!2565 = !DILocalVariable(name: "msg", arg: 4, scope: !2557, file: !1, line: 724, type: !74)
!2566 = !DILocalVariable(name: "value", scope: !2557, file: !1, line: 725, type: !357)
!2567 = !DILocation(line: 724, column: 38, scope: !2557)
!2568 = !DILocation(line: 724, column: 47, scope: !2557)
!2569 = !DILocation(line: 724, column: 56, scope: !2557)
!2570 = !DILocation(line: 724, column: 76, scope: !2557)
!2571 = !DILocation(line: 710, column: 42, scope: !2524, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 727, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 727, column: 9)
!2574 = !DILocation(line: 710, column: 51, scope: !2524, inlinedAt: !2572)
!2575 = !DILocation(line: 710, column: 85, scope: !2524, inlinedAt: !2572)
!2576 = !DILocation(line: 711, column: 5, scope: !2524, inlinedAt: !2572)
!2577 = !DILocation(line: 711, column: 15, scope: !2524, inlinedAt: !2572)
!2578 = !DILocation(line: 712, column: 9, scope: !2540, inlinedAt: !2572)
!2579 = !DILocation(line: 712, column: 42, scope: !2540, inlinedAt: !2572)
!2580 = !DILocation(line: 712, column: 9, scope: !2524, inlinedAt: !2572)
!2581 = !DILocation(line: 713, column: 17, scope: !2544, inlinedAt: !2572)
!2582 = !DILocation(line: 713, column: 13, scope: !2545, inlinedAt: !2572)
!2583 = !DILocation(line: 714, column: 13, scope: !2548, inlinedAt: !2572)
!2584 = !DILocation(line: 715, column: 9, scope: !2548, inlinedAt: !2572)
!2585 = !DILocation(line: 716, column: 13, scope: !2551, inlinedAt: !2572)
!2586 = !DILocation(line: 722, column: 1, scope: !2524, inlinedAt: !2572)
!2587 = !DILocation(line: 727, column: 9, scope: !2557)
!2588 = !DILocation(line: 720, column: 15, scope: !2524, inlinedAt: !2572)
!2589 = !DILocation(line: 725, column: 15, scope: !2557)
!2590 = !DILocation(line: 736, column: 13, scope: !2557)
!2591 = !DILocation(line: 737, column: 5, scope: !2557)
!2592 = !DILocation(line: 0, scope: !2557)
!2593 = !DILocation(line: 738, column: 1, scope: !2557)
!2594 = distinct !DISubprogram(name: "strEncoding", scope: !1, file: !1, line: 740, type: !2595, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!81, !36}
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "encoding", arg: 1, scope: !2594, file: !1, line: 740, type: !36)
!2599 = !DILocation(line: 740, column: 23, scope: !2594)
!2600 = !DILocation(line: 741, column: 5, scope: !2594)
!2601 = !DILocation(line: 752, column: 1, scope: !2594)
!2602 = distinct !DISubprogram(name: "streamRadixTreeMemoryUsage", scope: !1, file: !1, line: 771, type: !2603, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!77, !863}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "rax", arg: 1, scope: !2602, file: !1, line: 771, type: !863)
!2607 = !DILocalVariable(name: "size", scope: !2602, file: !1, line: 772, type: !77)
!2608 = !DILocation(line: 771, column: 40, scope: !2602)
!2609 = !DILocation(line: 773, column: 17, scope: !2602)
!2610 = !{!2611, !195, i64 8}
!2611 = !{!"rax", !187, i64 0, !195, i64 8, !195, i64 16}
!2612 = !DILocation(line: 773, column: 24, scope: !2602)
!2613 = !DILocation(line: 772, column: 12, scope: !2602)
!2614 = !DILocation(line: 774, column: 18, scope: !2602)
!2615 = !{!2611, !195, i64 16}
!2616 = !DILocation(line: 776, column: 10, scope: !2602)
!2617 = !DILocation(line: 777, column: 5, scope: !2602)
!2618 = distinct !DISubprogram(name: "objectComputeSize", scope: !1, file: !1, line: 785, type: !2619, isLocal: false, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!77, !115, !77}
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2639, !2640, !2641, !2642, !2643, !2649, !2650, !2656, !2662, !2665, !2669, !2698, !2699, !2700, !2702, !2713, !2714, !2723, !2726}
!2622 = !DILocalVariable(name: "o", arg: 1, scope: !2618, file: !1, line: 785, type: !115)
!2623 = !DILocalVariable(name: "sample_size", arg: 2, scope: !2618, file: !1, line: 785, type: !77)
!2624 = !DILocalVariable(name: "ele", scope: !2618, file: !1, line: 786, type: !98)
!2625 = !DILocalVariable(name: "ele2", scope: !2618, file: !1, line: 786, type: !98)
!2626 = !DILocalVariable(name: "d", scope: !2618, file: !1, line: 787, type: !6)
!2627 = !DILocalVariable(name: "di", scope: !2618, file: !1, line: 788, type: !2628)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !8, line: 95, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !8, line: 88, size: 384, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2630, file: !8, line: 89, baseType: !6, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2630, file: !8, line: 90, baseType: !5, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2630, file: !8, line: 91, baseType: !36, size: 32, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !2630, file: !8, line: 91, baseType: !36, size: 32, offset: 160)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2630, file: !8, line: 92, baseType: !50, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !2630, file: !8, line: 92, baseType: !50, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !2630, file: !8, line: 94, baseType: !357, size: 64, offset: 320)
!2639 = !DILocalVariable(name: "de", scope: !2618, file: !1, line: 789, type: !66)
!2640 = !DILocalVariable(name: "asize", scope: !2618, file: !1, line: 790, type: !77)
!2641 = !DILocalVariable(name: "elesize", scope: !2618, file: !1, line: 790, type: !77)
!2642 = !DILocalVariable(name: "samples", scope: !2618, file: !1, line: 790, type: !77)
!2643 = !DILocalVariable(name: "ql", scope: !2644, file: !1, line: 804, type: !599)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 803, column: 52)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 803, column: 13)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 802, column: 37)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 802, column: 16)
!2648 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 792, column: 9)
!2649 = !DILocalVariable(name: "node", scope: !2644, file: !1, line: 805, type: !605)
!2650 = !DILocalVariable(name: "is", scope: !2651, file: !1, line: 830, type: !716)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 829, column: 56)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !1, line: 829, column: 20)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 818, column: 13)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !1, line: 817, column: 36)
!2655 = distinct !DILexicalBlock(scope: !2647, file: !1, line: 817, column: 16)
!2656 = !DILocalVariable(name: "zsl", scope: !2657, file: !1, line: 840, type: !89)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 838, column: 58)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 838, column: 20)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 836, column: 13)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 835, column: 37)
!2661 = distinct !DILexicalBlock(scope: !2655, file: !1, line: 835, column: 16)
!2662 = !DILocalVariable(name: "znode", scope: !2657, file: !1, line: 841, type: !2663)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !84, line: 818, baseType: !95)
!2665 = !DILocalVariable(name: "s", scope: !2666, file: !1, line: 875, type: !857)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 874, column: 39)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 874, column: 16)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !1, line: 855, column: 16)
!2669 = !DILocalVariable(name: "ri", scope: !2666, file: !1, line: 883, type: !2670)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !865, line: 186, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !865, line: 175, size: 3840, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2681, !2682, !2692}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2671, file: !865, line: 176, baseType: !36, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2671, file: !865, line: 177, baseType: !863, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2671, file: !865, line: 178, baseType: !613, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2671, file: !865, line: 179, baseType: !4, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2671, file: !865, line: 180, baseType: !77, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !2671, file: !865, line: 181, baseType: !77, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !2671, file: !865, line: 182, baseType: !2680, size: 1024, offset: 384)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 1024, elements: !2027)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2671, file: !865, line: 183, baseType: !869, size: 64, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2671, file: !865, line: 184, baseType: !2683, size: 2304, offset: 1472)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !865, line: 150, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !865, line: 143, size: 2304, elements: !2685)
!2685 = !{!2686, !2688, !2689, !2690, !2691}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2684, file: !865, line: 144, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !2684, file: !865, line: 145, baseType: !77, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !2684, file: !865, line: 145, baseType: !77, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !2684, file: !865, line: 148, baseType: !1142, size: 2048, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !2684, file: !865, line: 149, baseType: !36, size: 32, offset: 2240)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !2671, file: !865, line: 185, baseType: !2693, size: 64, offset: 3776)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !865, line: 165, baseType: !2694)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!36, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!2698 = !DILocalVariable(name: "lpsize", scope: !2666, file: !1, line: 886, type: !77)
!2699 = !DILocalVariable(name: "samples", scope: !2666, file: !1, line: 886, type: !77)
!2700 = !DILocalVariable(name: "lp", scope: !2701, file: !1, line: 888, type: !613)
!2701 = distinct !DILexicalBlock(scope: !2666, file: !1, line: 887, column: 54)
!2702 = !DILocalVariable(name: "cg", scope: !2703, file: !1, line: 913, type: !2706)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 912, column: 33)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !1, line: 909, column: 25)
!2705 = distinct !DILexicalBlock(scope: !2666, file: !1, line: 909, column: 13)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !859, line: 64, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !859, line: 51, size: 256, elements: !2709)
!2709 = !{!2710, !2711, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !2708, file: !859, line: 52, baseType: !883, size: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2708, file: !859, line: 55, baseType: !863, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2708, file: !859, line: 61, baseType: !863, size: 64, offset: 192)
!2713 = !DILocalVariable(name: "cri", scope: !2703, file: !1, line: 920, type: !2670)
!2714 = !DILocalVariable(name: "consumer", scope: !2715, file: !1, line: 924, type: !2716)
!2715 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 923, column: 38)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !859, line: 79, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !859, line: 67, size: 192, elements: !2719)
!2719 = !{!2720, !2721, !2722}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !2718, file: !859, line: 68, baseType: !1634, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2718, file: !859, line: 69, baseType: !98, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2718, file: !859, line: 72, baseType: !863, size: 64, offset: 128)
!2723 = !DILocalVariable(name: "mv", scope: !2724, file: !1, line: 936, type: !1262)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 935, column: 39)
!2725 = distinct !DILexicalBlock(scope: !2667, file: !1, line: 935, column: 16)
!2726 = !DILocalVariable(name: "mt", scope: !2724, file: !1, line: 937, type: !919)
!2727 = !DILocation(line: 785, column: 32, scope: !2618)
!2728 = !DILocation(line: 785, column: 42, scope: !2618)
!2729 = !DILocation(line: 790, column: 12, scope: !2618)
!2730 = !DILocation(line: 790, column: 23, scope: !2618)
!2731 = !DILocation(line: 790, column: 36, scope: !2618)
!2732 = !DILocation(line: 792, column: 12, scope: !2648)
!2733 = !DILocation(line: 792, column: 9, scope: !2618)
!2734 = !DILocation(line: 793, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !1, line: 793, column: 12)
!2736 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 792, column: 32)
!2737 = !DILocation(line: 793, column: 12, scope: !2736)
!2738 = !DILocation(line: 796, column: 37, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 795, column: 52)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !1, line: 795, column: 19)
!2741 = !DILocation(line: 796, column: 21, scope: !2739)
!2742 = !DILocation(line: 796, column: 41, scope: !2739)
!2743 = !DILocation(line: 797, column: 9, scope: !2739)
!2744 = !DILocation(line: 798, column: 31, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 797, column: 55)
!2746 = distinct !DILexicalBlock(scope: !2740, file: !1, line: 797, column: 19)
!2747 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 798, column: 21, scope: !2745)
!2749 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !2748)
!2750 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !2748)
!2751 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !2748)
!2752 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !2748)
!2753 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !2748)
!2754 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !2748)
!2755 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !2748)
!2756 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !2748)
!2757 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !2748)
!2758 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !2748)
!2759 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !2748)
!2760 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !2748)
!2761 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !2748)
!2762 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !2748)
!2763 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !2748)
!2764 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !2748)
!2765 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !2748)
!2766 = !DILocation(line: 0, scope: !496, inlinedAt: !2748)
!2767 = !DILocation(line: 798, column: 37, scope: !2745)
!2768 = !DILocation(line: 800, column: 13, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 799, column: 16)
!2770 = !DILocation(line: 803, column: 16, scope: !2645)
!2771 = !DILocation(line: 803, column: 13, scope: !2646)
!2772 = !DILocation(line: 804, column: 32, scope: !2644)
!2773 = !DILocation(line: 804, column: 24, scope: !2644)
!2774 = !DILocation(line: 805, column: 39, scope: !2644)
!2775 = !{!2776, !187, i64 0}
!2776 = !{!"quicklist", !187, i64 0, !187, i64 8, !195, i64 16, !195, i64 24, !184, i64 32, !184, i64 34}
!2777 = !DILocation(line: 805, column: 28, scope: !2644)
!2778 = !DILocation(line: 807, column: 13, scope: !2644)
!2779 = !DILocation(line: 0, scope: !2644)
!2780 = !DILocation(line: 0, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 807, column: 16)
!2782 = !DILocation(line: 808, column: 71, scope: !2781)
!2783 = !{!2784, !187, i64 16}
!2784 = !{!"quicklistNode", !187, i64 0, !187, i64 8, !187, i64 16, !184, i64 24, !184, i64 28, !184, i64 30, !184, i64 30, !184, i64 30, !184, i64 30, !184, i64 30}
!2785 = !DILocation(line: 808, column: 50, scope: !2781)
!2786 = !DILocation(line: 808, column: 49, scope: !2781)
!2787 = !DILocation(line: 808, column: 25, scope: !2781)
!2788 = !DILocation(line: 809, column: 24, scope: !2781)
!2789 = !DILocation(line: 810, column: 36, scope: !2644)
!2790 = !{!2784, !187, i64 8}
!2791 = !DILocation(line: 810, column: 28, scope: !2644)
!2792 = !DILocation(line: 810, column: 53, scope: !2644)
!2793 = !DILocation(line: 810, column: 42, scope: !2644)
!2794 = distinct !{!2794, !2778, !2795}
!2795 = !DILocation(line: 810, column: 66, scope: !2644)
!2796 = !DILocation(line: 811, column: 22, scope: !2644)
!2797 = !DILocation(line: 811, column: 38, scope: !2644)
!2798 = !DILocation(line: 811, column: 37, scope: !2644)
!2799 = !DILocation(line: 811, column: 50, scope: !2644)
!2800 = !{!2776, !195, i64 24}
!2801 = !DILocation(line: 811, column: 46, scope: !2644)
!2802 = !DILocation(line: 811, column: 45, scope: !2644)
!2803 = !DILocation(line: 811, column: 19, scope: !2644)
!2804 = !DILocation(line: 812, column: 9, scope: !2644)
!2805 = !DILocation(line: 813, column: 50, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 812, column: 57)
!2807 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 812, column: 20)
!2808 = !DILocation(line: 813, column: 32, scope: !2806)
!2809 = !DILocation(line: 813, column: 31, scope: !2806)
!2810 = !DILocation(line: 815, column: 13, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !1, line: 814, column: 16)
!2812 = !DILocation(line: 818, column: 16, scope: !2653)
!2813 = !DILocation(line: 818, column: 13, scope: !2654)
!2814 = !DILocation(line: 819, column: 20, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2653, file: !1, line: 818, column: 45)
!2816 = !DILocation(line: 787, column: 11, scope: !2618)
!2817 = !DILocation(line: 820, column: 18, scope: !2815)
!2818 = !DILocation(line: 788, column: 19, scope: !2618)
!2819 = !DILocation(line: 821, column: 72, scope: !2815)
!2820 = !{!2821, !195, i64 8}
!2821 = !{!"dictht", !187, i64 0, !195, i64 8, !195, i64 16, !195, i64 24}
!2822 = !DILocation(line: 821, column: 71, scope: !2815)
!2823 = !DILocation(line: 821, column: 44, scope: !2815)
!2824 = !DILocation(line: 822, column: 25, scope: !2815)
!2825 = !DILocation(line: 789, column: 23, scope: !2618)
!2826 = !DILocation(line: 822, column: 39, scope: !2815)
!2827 = !DILocation(line: 822, column: 58, scope: !2815)
!2828 = !DILocation(line: 822, column: 47, scope: !2815)
!2829 = !DILocation(line: 827, column: 13, scope: !2815)
!2830 = !DILocation(line: 828, column: 17, scope: !2815)
!2831 = !DILocation(line: 823, column: 23, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 822, column: 73)
!2833 = !{!2834, !187, i64 0}
!2834 = !{!"dictEntry", !187, i64 0, !185, i64 8, !187, i64 16}
!2835 = !DILocation(line: 786, column: 9, scope: !2618)
!2836 = !DILocation(line: 824, column: 55, scope: !2832)
!2837 = !DILocation(line: 824, column: 53, scope: !2832)
!2838 = !DILocation(line: 824, column: 25, scope: !2832)
!2839 = !DILocation(line: 825, column: 24, scope: !2832)
!2840 = distinct !{!2840, !2841, !2842}
!2841 = !DILocation(line: 822, column: 13, scope: !2815)
!2842 = !DILocation(line: 826, column: 13, scope: !2815)
!2843 = !DILocation(line: 828, column: 51, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2815, file: !1, line: 828, column: 17)
!2845 = !DILocation(line: 828, column: 50, scope: !2844)
!2846 = !DILocation(line: 828, column: 59, scope: !2844)
!2847 = !{!2821, !195, i64 24}
!2848 = !DILocation(line: 828, column: 58, scope: !2844)
!2849 = !DILocation(line: 828, column: 32, scope: !2844)
!2850 = !DILocation(line: 828, column: 26, scope: !2844)
!2851 = !DILocation(line: 830, column: 29, scope: !2651)
!2852 = !DILocation(line: 830, column: 21, scope: !2651)
!2853 = !DILocation(line: 831, column: 48, scope: !2651)
!2854 = !DILocation(line: 831, column: 61, scope: !2651)
!2855 = !DILocation(line: 831, column: 56, scope: !2651)
!2856 = !DILocation(line: 831, column: 44, scope: !2651)
!2857 = !DILocation(line: 831, column: 43, scope: !2651)
!2858 = !DILocation(line: 833, column: 13, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 832, column: 16)
!2860 = !DILocation(line: 836, column: 16, scope: !2659)
!2861 = !DILocation(line: 836, column: 13, scope: !2660)
!2862 = !DILocation(line: 837, column: 51, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 836, column: 50)
!2864 = !DILocation(line: 837, column: 33, scope: !2863)
!2865 = !DILocation(line: 837, column: 31, scope: !2863)
!2866 = !DILocation(line: 838, column: 9, scope: !2863)
!2867 = !DILocation(line: 839, column: 28, scope: !2657)
!2868 = !DILocation(line: 839, column: 34, scope: !2657)
!2869 = !DILocation(line: 840, column: 47, scope: !2657)
!2870 = !DILocation(line: 840, column: 24, scope: !2657)
!2871 = !DILocation(line: 841, column: 41, scope: !2657)
!2872 = !{!2873, !187, i64 0}
!2873 = !{!"zskiplist", !187, i64 0, !187, i64 8, !195, i64 16, !184, i64 24}
!2874 = !DILocation(line: 841, column: 58, scope: !2657)
!2875 = !{!2876, !187, i64 0}
!2876 = !{!"zskiplistLevel", !187, i64 0, !195, i64 8}
!2877 = !DILocation(line: 841, column: 28, scope: !2657)
!2878 = !DILocation(line: 843, column: 48, scope: !2657)
!2879 = !DILocation(line: 843, column: 47, scope: !2657)
!2880 = !DILocation(line: 844, column: 34, scope: !2657)
!2881 = !DILocation(line: 844, column: 21, scope: !2657)
!2882 = !DILocation(line: 842, column: 75, scope: !2657)
!2883 = !DILocation(line: 843, column: 61, scope: !2657)
!2884 = !DILocation(line: 845, column: 25, scope: !2657)
!2885 = !DILocation(line: 845, column: 44, scope: !2657)
!2886 = !DILocation(line: 845, column: 33, scope: !2657)
!2887 = !DILocation(line: 846, column: 48, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 845, column: 59)
!2889 = !DILocation(line: 846, column: 28, scope: !2888)
!2890 = !DILocation(line: 847, column: 55, scope: !2888)
!2891 = !DILocation(line: 847, column: 53, scope: !2888)
!2892 = !DILocation(line: 846, column: 25, scope: !2888)
!2893 = !DILocation(line: 847, column: 25, scope: !2888)
!2894 = !DILocation(line: 848, column: 24, scope: !2888)
!2895 = !DILocation(line: 849, column: 41, scope: !2888)
!2896 = distinct !{!2896, !2897, !2898}
!2897 = !DILocation(line: 845, column: 13, scope: !2657)
!2898 = !DILocation(line: 850, column: 13, scope: !2657)
!2899 = !DILocation(line: 851, column: 17, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 851, column: 17)
!2901 = !DILocation(line: 851, column: 51, scope: !2900)
!2902 = !DILocation(line: 851, column: 50, scope: !2900)
!2903 = !DILocation(line: 851, column: 59, scope: !2900)
!2904 = !DILocation(line: 851, column: 58, scope: !2900)
!2905 = !DILocation(line: 851, column: 32, scope: !2900)
!2906 = !DILocation(line: 851, column: 26, scope: !2900)
!2907 = !DILocation(line: 853, column: 13, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 852, column: 16)
!2909 = !DILocation(line: 856, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 856, column: 13)
!2911 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 855, column: 37)
!2912 = !DILocation(line: 856, column: 13, scope: !2911)
!2913 = !DILocation(line: 857, column: 51, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 856, column: 50)
!2915 = !DILocation(line: 857, column: 33, scope: !2914)
!2916 = !DILocation(line: 857, column: 31, scope: !2914)
!2917 = !DILocation(line: 858, column: 9, scope: !2914)
!2918 = !DILocation(line: 859, column: 20, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !1, line: 858, column: 52)
!2920 = distinct !DILexicalBlock(scope: !2910, file: !1, line: 858, column: 20)
!2921 = !DILocation(line: 860, column: 18, scope: !2919)
!2922 = !DILocation(line: 861, column: 72, scope: !2919)
!2923 = !DILocation(line: 861, column: 71, scope: !2919)
!2924 = !DILocation(line: 861, column: 44, scope: !2919)
!2925 = !DILocation(line: 862, column: 25, scope: !2919)
!2926 = !DILocation(line: 862, column: 39, scope: !2919)
!2927 = !DILocation(line: 862, column: 58, scope: !2919)
!2928 = !DILocation(line: 862, column: 47, scope: !2919)
!2929 = !DILocation(line: 869, column: 13, scope: !2919)
!2930 = !DILocation(line: 870, column: 17, scope: !2919)
!2931 = !DILocation(line: 863, column: 23, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2919, file: !1, line: 862, column: 73)
!2933 = !DILocation(line: 864, column: 24, scope: !2932)
!2934 = !DILocation(line: 786, column: 14, scope: !2618)
!2935 = !DILocation(line: 865, column: 28, scope: !2932)
!2936 = !DILocation(line: 865, column: 48, scope: !2932)
!2937 = !DILocation(line: 865, column: 46, scope: !2932)
!2938 = !DILocation(line: 865, column: 25, scope: !2932)
!2939 = !DILocation(line: 866, column: 25, scope: !2932)
!2940 = !DILocation(line: 867, column: 24, scope: !2932)
!2941 = distinct !{!2941, !2942, !2943}
!2942 = !DILocation(line: 862, column: 13, scope: !2919)
!2943 = !DILocation(line: 868, column: 13, scope: !2919)
!2944 = !DILocation(line: 870, column: 51, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2919, file: !1, line: 870, column: 17)
!2946 = !DILocation(line: 870, column: 50, scope: !2945)
!2947 = !DILocation(line: 870, column: 59, scope: !2945)
!2948 = !DILocation(line: 870, column: 58, scope: !2945)
!2949 = !DILocation(line: 870, column: 32, scope: !2945)
!2950 = !DILocation(line: 870, column: 26, scope: !2945)
!2951 = !DILocation(line: 872, column: 13, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2920, file: !1, line: 871, column: 16)
!2953 = !DILocation(line: 875, column: 24, scope: !2666)
!2954 = !DILocation(line: 875, column: 17, scope: !2666)
!2955 = !DILocation(line: 877, column: 48, scope: !2666)
!2956 = !{!2957, !187, i64 0}
!2957 = !{!"stream", !187, i64 0, !195, i64 8, !2958, i64 16, !187, i64 32}
!2958 = !{!"streamID", !195, i64 0, !195, i64 8}
!2959 = !DILocation(line: 771, column: 40, scope: !2602, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 877, column: 18, scope: !2666)
!2961 = !DILocation(line: 773, column: 17, scope: !2602, inlinedAt: !2960)
!2962 = !DILocation(line: 773, column: 24, scope: !2602, inlinedAt: !2960)
!2963 = !DILocation(line: 772, column: 12, scope: !2602, inlinedAt: !2960)
!2964 = !DILocation(line: 774, column: 18, scope: !2602, inlinedAt: !2960)
!2965 = !DILocation(line: 776, column: 10, scope: !2602, inlinedAt: !2960)
!2966 = !DILocation(line: 877, column: 15, scope: !2666)
!2967 = !DILocation(line: 883, column: 9, scope: !2666)
!2968 = !DILocation(line: 883, column: 21, scope: !2666)
!2969 = !DILocation(line: 884, column: 9, scope: !2666)
!2970 = !DILocation(line: 885, column: 9, scope: !2666)
!2971 = !DILocation(line: 886, column: 16, scope: !2666)
!2972 = !DILocation(line: 886, column: 28, scope: !2666)
!2973 = !DILocation(line: 887, column: 23, scope: !2666)
!2974 = !DILocation(line: 887, column: 37, scope: !2666)
!2975 = !DILocation(line: 887, column: 40, scope: !2666)
!2976 = !DILocation(line: 887, column: 9, scope: !2666)
!2977 = !DILocation(line: 888, column: 36, scope: !2701)
!2978 = !{!2979, !187, i64 24}
!2979 = !{!"raxIterator", !184, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !195, i64 32, !195, i64 40, !185, i64 48, !187, i64 176, !2980, i64 184, !187, i64 472}
!2980 = !{!"raxStack", !187, i64 0, !195, i64 8, !195, i64 16, !185, i64 24, !184, i64 280}
!2981 = !DILocation(line: 888, column: 28, scope: !2701)
!2982 = !DILocation(line: 889, column: 23, scope: !2701)
!2983 = !DILocation(line: 889, column: 20, scope: !2701)
!2984 = !DILocation(line: 890, column: 20, scope: !2701)
!2985 = distinct !{!2985, !2976, !2986}
!2986 = !DILocation(line: 891, column: 9, scope: !2666)
!2987 = !DILocation(line: 0, scope: !2701)
!2988 = !DILocation(line: 892, column: 16, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2666, file: !1, line: 892, column: 13)
!2990 = !DILocation(line: 892, column: 21, scope: !2989)
!2991 = !DILocation(line: 892, column: 28, scope: !2989)
!2992 = !DILocation(line: 892, column: 13, scope: !2666)
!2993 = !DILocation(line: 893, column: 19, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !1, line: 892, column: 40)
!2995 = !DILocation(line: 894, column: 9, scope: !2994)
!2996 = !DILocation(line: 895, column: 17, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !1, line: 895, column: 17)
!2998 = distinct !DILexicalBlock(scope: !2989, file: !1, line: 894, column: 16)
!2999 = !DILocation(line: 895, column: 17, scope: !2998)
!3000 = !DILocation(line: 895, column: 33, scope: !2997)
!3001 = !DILocation(line: 895, column: 26, scope: !2997)
!3002 = !DILocation(line: 0, scope: !2666)
!3003 = !DILocation(line: 896, column: 46, scope: !2998)
!3004 = !DILocation(line: 896, column: 29, scope: !2998)
!3005 = !DILocation(line: 896, column: 19, scope: !2998)
!3006 = !DILocation(line: 899, column: 13, scope: !2998)
!3007 = !DILocation(line: 900, column: 13, scope: !2998)
!3008 = !DILocation(line: 901, column: 33, scope: !2998)
!3009 = !DILocation(line: 901, column: 22, scope: !2998)
!3010 = !DILocation(line: 901, column: 19, scope: !2998)
!3011 = !DILocation(line: 0, scope: !2998)
!3012 = !DILocation(line: 903, column: 9, scope: !2666)
!3013 = !DILocation(line: 909, column: 16, scope: !2705)
!3014 = !{!2957, !187, i64 32}
!3015 = !DILocation(line: 909, column: 13, scope: !2705)
!3016 = !DILocation(line: 909, column: 13, scope: !2666)
!3017 = !DILocation(line: 910, column: 13, scope: !2704)
!3018 = !DILocation(line: 911, column: 13, scope: !2704)
!3019 = !DILocation(line: 912, column: 19, scope: !2704)
!3020 = !DILocation(line: 912, column: 13, scope: !2704)
!3021 = !DILocation(line: 913, column: 35, scope: !2703)
!3022 = !DILocation(line: 913, column: 27, scope: !2703)
!3023 = !DILocation(line: 915, column: 57, scope: !2703)
!3024 = !{!3025, !187, i64 16}
!3025 = !{!"streamCG", !2958, i64 0, !187, i64 16, !187, i64 24}
!3026 = !DILocation(line: 771, column: 40, scope: !2602, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 915, column: 26, scope: !2703)
!3028 = !DILocation(line: 773, column: 17, scope: !2602, inlinedAt: !3027)
!3029 = !DILocation(line: 773, column: 24, scope: !2602, inlinedAt: !3027)
!3030 = !DILocation(line: 772, column: 12, scope: !2602, inlinedAt: !3027)
!3031 = !DILocation(line: 774, column: 18, scope: !2602, inlinedAt: !3027)
!3032 = !DILocation(line: 916, column: 45, scope: !2703)
!3033 = !DILocation(line: 916, column: 44, scope: !2703)
!3034 = !DILocation(line: 776, column: 10, scope: !2602, inlinedAt: !3027)
!3035 = !DILocation(line: 914, column: 23, scope: !2703)
!3036 = !DILocation(line: 915, column: 23, scope: !2703)
!3037 = !DILocation(line: 916, column: 23, scope: !2703)
!3038 = !DILocation(line: 920, column: 17, scope: !2703)
!3039 = !DILocation(line: 921, column: 35, scope: !2703)
!3040 = !{!3025, !187, i64 24}
!3041 = !DILocation(line: 920, column: 29, scope: !2703)
!3042 = !DILocation(line: 921, column: 17, scope: !2703)
!3043 = !DILocation(line: 922, column: 17, scope: !2703)
!3044 = !DILocation(line: 923, column: 23, scope: !2703)
!3045 = !DILocation(line: 923, column: 17, scope: !2703)
!3046 = !DILocation(line: 924, column: 52, scope: !2715)
!3047 = !DILocation(line: 924, column: 37, scope: !2715)
!3048 = !DILocation(line: 926, column: 47, scope: !2715)
!3049 = !{!3050, !187, i64 8}
!3050 = !{!"streamConsumer", !196, i64 0, !187, i64 8, !187, i64 16}
!3051 = !DILocation(line: 87, column: 39, scope: !482, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 926, column: 30, scope: !2715)
!3053 = !DILocation(line: 88, column: 27, scope: !482, inlinedAt: !3052)
!3054 = !DILocation(line: 88, column: 19, scope: !482, inlinedAt: !3052)
!3055 = !DILocation(line: 89, column: 5, scope: !482, inlinedAt: !3052)
!3056 = !DILocation(line: 91, column: 20, scope: !496, inlinedAt: !3052)
!3057 = !DILocation(line: 91, column: 13, scope: !496, inlinedAt: !3052)
!3058 = !DILocation(line: 93, column: 20, scope: !496, inlinedAt: !3052)
!3059 = !DILocation(line: 93, column: 34, scope: !496, inlinedAt: !3052)
!3060 = !DILocation(line: 93, column: 13, scope: !496, inlinedAt: !3052)
!3061 = !DILocation(line: 95, column: 20, scope: !496, inlinedAt: !3052)
!3062 = !DILocation(line: 95, column: 35, scope: !496, inlinedAt: !3052)
!3063 = !DILocation(line: 95, column: 13, scope: !496, inlinedAt: !3052)
!3064 = !DILocation(line: 97, column: 20, scope: !496, inlinedAt: !3052)
!3065 = !DILocation(line: 97, column: 35, scope: !496, inlinedAt: !3052)
!3066 = !DILocation(line: 97, column: 13, scope: !496, inlinedAt: !3052)
!3067 = !DILocation(line: 99, column: 20, scope: !496, inlinedAt: !3052)
!3068 = !DILocation(line: 99, column: 35, scope: !496, inlinedAt: !3052)
!3069 = !DILocation(line: 99, column: 13, scope: !496, inlinedAt: !3052)
!3070 = !DILocation(line: 0, scope: !496, inlinedAt: !3052)
!3071 = !DILocation(line: 927, column: 67, scope: !2715)
!3072 = !{!3050, !187, i64 16}
!3073 = !DILocation(line: 771, column: 40, scope: !2602, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 927, column: 30, scope: !2715)
!3075 = !DILocation(line: 773, column: 17, scope: !2602, inlinedAt: !3074)
!3076 = !DILocation(line: 773, column: 24, scope: !2602, inlinedAt: !3074)
!3077 = !DILocation(line: 772, column: 12, scope: !2602, inlinedAt: !3074)
!3078 = !DILocation(line: 774, column: 18, scope: !2602, inlinedAt: !3074)
!3079 = !DILocation(line: 776, column: 10, scope: !2602, inlinedAt: !3074)
!3080 = !DILocation(line: 925, column: 27, scope: !2715)
!3081 = !DILocation(line: 926, column: 27, scope: !2715)
!3082 = !DILocation(line: 927, column: 27, scope: !2715)
!3083 = distinct !{!3083, !3045, !3084}
!3084 = !DILocation(line: 930, column: 17, scope: !2703)
!3085 = !DILocation(line: 0, scope: !2715)
!3086 = !DILocation(line: 931, column: 17, scope: !2703)
!3087 = !DILocation(line: 932, column: 13, scope: !2704)
!3088 = distinct !{!3088, !3020, !3087}
!3089 = !DILocation(line: 0, scope: !2703)
!3090 = !DILocation(line: 933, column: 13, scope: !2704)
!3091 = !DILocation(line: 934, column: 9, scope: !2704)
!3092 = !DILocation(line: 935, column: 5, scope: !2667)
!3093 = !DILocation(line: 935, column: 5, scope: !2666)
!3094 = !DILocation(line: 936, column: 30, scope: !2724)
!3095 = !DILocation(line: 936, column: 22, scope: !2724)
!3096 = !DILocation(line: 937, column: 30, scope: !2724)
!3097 = !DILocation(line: 937, column: 21, scope: !2724)
!3098 = !DILocation(line: 938, column: 17, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 938, column: 13)
!3100 = !{!1390, !187, i64 40}
!3101 = !DILocation(line: 938, column: 27, scope: !3099)
!3102 = !DILocation(line: 938, column: 13, scope: !2724)
!3103 = !DILocation(line: 939, column: 39, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3099, file: !1, line: 938, column: 36)
!3105 = !DILocation(line: 939, column: 21, scope: !3104)
!3106 = !DILocation(line: 940, column: 9, scope: !3104)
!3107 = !DILocation(line: 944, column: 9, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 943, column: 12)
!3109 = !DILocation(line: 0, scope: !3104)
!3110 = !DILocation(line: 946, column: 5, scope: !2618)
!3111 = distinct !DISubprogram(name: "freeMemoryOverheadData", scope: !1, file: !1, line: 950, type: !3112, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3148)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{null, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisMemOverhead", file: !84, line: 865, size: 1472, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "peak_allocated", scope: !3115, file: !84, line: 866, baseType: !77, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "total_allocated", scope: !3115, file: !84, line: 867, baseType: !77, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "startup_allocated", scope: !3115, file: !84, line: 868, baseType: !77, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "repl_backlog", scope: !3115, file: !84, line: 869, baseType: !77, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "clients_slaves", scope: !3115, file: !84, line: 870, baseType: !77, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "clients_normal", scope: !3115, file: !84, line: 871, baseType: !77, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "aof_buffer", scope: !3115, file: !84, line: 872, baseType: !77, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lua_caches", scope: !3115, file: !84, line: 873, baseType: !77, size: 64, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_total", scope: !3115, file: !84, line: 874, baseType: !77, size: 64, offset: 512)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dataset", scope: !3115, file: !84, line: 875, baseType: !77, size: 64, offset: 576)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "total_keys", scope: !3115, file: !84, line: 876, baseType: !77, size: 64, offset: 640)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_key", scope: !3115, file: !84, line: 877, baseType: !77, size: 64, offset: 704)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dataset_perc", scope: !3115, file: !84, line: 878, baseType: !113, size: 32, offset: 768)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "peak_perc", scope: !3115, file: !84, line: 879, baseType: !113, size: 32, offset: 800)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "total_frag", scope: !3115, file: !84, line: 880, baseType: !113, size: 32, offset: 832)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "total_frag_bytes", scope: !3115, file: !84, line: 881, baseType: !3133, size: 64, offset: 896)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !956, line: 200, baseType: !1006)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_frag", scope: !3115, file: !84, line: 882, baseType: !113, size: 32, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_frag_bytes", scope: !3115, file: !84, line: 883, baseType: !3133, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_rss", scope: !3115, file: !84, line: 884, baseType: !113, size: 32, offset: 1088)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "allocator_rss_bytes", scope: !3115, file: !84, line: 885, baseType: !3133, size: 64, offset: 1152)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "rss_extra", scope: !3115, file: !84, line: 886, baseType: !113, size: 32, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "rss_extra_bytes", scope: !3115, file: !84, line: 887, baseType: !77, size: 64, offset: 1280)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "num_dbs", scope: !3115, file: !84, line: 888, baseType: !77, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !3115, file: !84, line: 893, baseType: !3142, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !84, line: 889, size: 192, elements: !3144)
!3144 = !{!3145, !3146, !3147}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "dbid", scope: !3143, file: !84, line: 890, baseType: !77, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_ht_main", scope: !3143, file: !84, line: 891, baseType: !77, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "overhead_ht_expires", scope: !3143, file: !84, line: 892, baseType: !77, size: 64, offset: 128)
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "mh", arg: 1, scope: !3111, file: !1, line: 950, type: !3114)
!3150 = !DILocation(line: 950, column: 54, scope: !3111)
!3151 = !DILocation(line: 951, column: 15, scope: !3111)
!3152 = !{!3153, !187, i64 176}
!3153 = !{!"redisMemOverhead", !195, i64 0, !195, i64 8, !195, i64 16, !195, i64 24, !195, i64 32, !195, i64 40, !195, i64 48, !195, i64 56, !195, i64 64, !195, i64 72, !195, i64 80, !195, i64 88, !3154, i64 96, !3154, i64 100, !3154, i64 104, !195, i64 112, !3154, i64 120, !195, i64 128, !3154, i64 136, !195, i64 144, !3154, i64 152, !195, i64 160, !195, i64 168, !187, i64 176}
!3154 = !{!"float", !185, i64 0}
!3155 = !DILocation(line: 951, column: 5, scope: !3111)
!3156 = !DILocation(line: 952, column: 11, scope: !3111)
!3157 = !DILocation(line: 952, column: 5, scope: !3111)
!3158 = !DILocation(line: 953, column: 1, scope: !3111)
!3159 = distinct !DISubprogram(name: "getMemoryOverheadData", scope: !1, file: !1, line: 958, type: !3160, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!3114}
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3176, !3177, !3179, !3182, !3183, !3185, !3189, !3190}
!3163 = !DILocalVariable(name: "j", scope: !3159, file: !1, line: 959, type: !36)
!3164 = !DILocalVariable(name: "mem_total", scope: !3159, file: !1, line: 960, type: !77)
!3165 = !DILocalVariable(name: "mem", scope: !3159, file: !1, line: 961, type: !77)
!3166 = !DILocalVariable(name: "zmalloc_used", scope: !3159, file: !1, line: 962, type: !77)
!3167 = !DILocalVariable(name: "mh", scope: !3159, file: !1, line: 963, type: !3114)
!3168 = !DILocalVariable(name: "li", scope: !3169, file: !1, line: 995, type: !3171)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !1, line: 994, column: 36)
!3170 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 994, column: 9)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !1523, line: 45, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !1523, line: 42, size: 128, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3172, file: !1523, line: 43, baseType: !1527, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3172, file: !1523, line: 44, baseType: !36, size: 32, offset: 64)
!3176 = !DILocalVariable(name: "ln", scope: !3169, file: !1, line: 996, type: !1527)
!3177 = !DILocalVariable(name: "c", scope: !3178, file: !1, line: 1000, type: !1502)
!3178 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 999, column: 37)
!3179 = !DILocalVariable(name: "li", scope: !3180, file: !1, line: 1011, type: !3171)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !1, line: 1010, column: 37)
!3181 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1010, column: 9)
!3182 = !DILocalVariable(name: "ln", scope: !3180, file: !1, line: 1012, type: !1527)
!3183 = !DILocalVariable(name: "c", scope: !3184, file: !1, line: 1016, type: !1502)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !1, line: 1015, column: 37)
!3185 = !DILocalVariable(name: "db", scope: !3186, file: !1, line: 1048, type: !1509)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 1047, column: 40)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 1047, column: 5)
!3188 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1047, column: 5)
!3189 = !DILocalVariable(name: "keyscount", scope: !3186, file: !1, line: 1049, type: !357)
!3190 = !DILocalVariable(name: "net_usage", scope: !3159, file: !1, line: 1076, type: !77)
!3191 = !DILocation(line: 960, column: 12, scope: !3159)
!3192 = !DILocation(line: 961, column: 12, scope: !3159)
!3193 = !DILocation(line: 962, column: 27, scope: !3159)
!3194 = !DILocation(line: 962, column: 12, scope: !3159)
!3195 = !DILocation(line: 963, column: 35, scope: !3159)
!3196 = !DILocation(line: 963, column: 30, scope: !3159)
!3197 = !DILocation(line: 965, column: 9, scope: !3159)
!3198 = !DILocation(line: 965, column: 25, scope: !3159)
!3199 = !{!3153, !195, i64 8}
!3200 = !DILocation(line: 966, column: 36, scope: !3159)
!3201 = !{!194, !195, i64 168}
!3202 = !DILocation(line: 966, column: 9, scope: !3159)
!3203 = !DILocation(line: 966, column: 27, scope: !3159)
!3204 = !{!3153, !195, i64 16}
!3205 = !DILocation(line: 967, column: 33, scope: !3159)
!3206 = !{!194, !195, i64 1112}
!3207 = !DILocation(line: 967, column: 9, scope: !3159)
!3208 = !DILocation(line: 967, column: 24, scope: !3159)
!3209 = !{!3153, !195, i64 0}
!3210 = !DILocation(line: 969, column: 41, scope: !3159)
!3211 = !{!194, !195, i64 1208}
!3212 = !DILocation(line: 969, column: 9, scope: !3159)
!3213 = !DILocation(line: 969, column: 80, scope: !3159)
!3214 = !{!194, !195, i64 1200}
!3215 = !DILocation(line: 969, column: 55, scope: !3159)
!3216 = !DILocation(line: 969, column: 53, scope: !3159)
!3217 = !DILocation(line: 968, column: 9, scope: !3159)
!3218 = !DILocation(line: 968, column: 20, scope: !3159)
!3219 = !{!3153, !3154, i64 104}
!3220 = !DILocation(line: 971, column: 46, scope: !3159)
!3221 = !DILocation(line: 970, column: 9, scope: !3159)
!3222 = !DILocation(line: 970, column: 26, scope: !3159)
!3223 = !{!3153, !195, i64 112}
!3224 = !DILocation(line: 973, column: 41, scope: !3159)
!3225 = !{!194, !195, i64 1224}
!3226 = !DILocation(line: 973, column: 9, scope: !3159)
!3227 = !DILocation(line: 973, column: 85, scope: !3159)
!3228 = !{!194, !195, i64 1216}
!3229 = !DILocation(line: 973, column: 60, scope: !3159)
!3230 = !DILocation(line: 973, column: 58, scope: !3159)
!3231 = !DILocation(line: 972, column: 9, scope: !3159)
!3232 = !DILocation(line: 972, column: 24, scope: !3159)
!3233 = !{!3153, !3154, i64 120}
!3234 = !DILocation(line: 975, column: 51, scope: !3159)
!3235 = !DILocation(line: 974, column: 9, scope: !3159)
!3236 = !DILocation(line: 974, column: 30, scope: !3159)
!3237 = !{!3153, !195, i64 128}
!3238 = !DILocation(line: 977, column: 41, scope: !3159)
!3239 = !{!194, !195, i64 1232}
!3240 = !DILocation(line: 977, column: 9, scope: !3159)
!3241 = !DILocation(line: 977, column: 60, scope: !3159)
!3242 = !DILocation(line: 976, column: 9, scope: !3159)
!3243 = !DILocation(line: 976, column: 23, scope: !3159)
!3244 = !{!3153, !3154, i64 136}
!3245 = !DILocation(line: 979, column: 53, scope: !3159)
!3246 = !DILocation(line: 978, column: 9, scope: !3159)
!3247 = !DILocation(line: 978, column: 29, scope: !3159)
!3248 = !{!3153, !195, i64 144}
!3249 = !DILocation(line: 981, column: 53, scope: !3159)
!3250 = !DILocation(line: 980, column: 9, scope: !3159)
!3251 = !DILocation(line: 980, column: 19, scope: !3159)
!3252 = !{!3153, !3154, i64 152}
!3253 = !DILocation(line: 983, column: 46, scope: !3159)
!3254 = !DILocation(line: 982, column: 9, scope: !3159)
!3255 = !DILocation(line: 982, column: 25, scope: !3159)
!3256 = !{!3153, !195, i64 160}
!3257 = !DILocation(line: 988, column: 16, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 988, column: 9)
!3259 = !{!194, !187, i64 2376}
!3260 = !DILocation(line: 988, column: 9, scope: !3258)
!3261 = !DILocation(line: 988, column: 9, scope: !3159)
!3262 = !DILocation(line: 989, column: 16, scope: !3258)
!3263 = !DILocation(line: 989, column: 9, scope: !3258)
!3264 = !DILocation(line: 0, scope: !3159)
!3265 = !DILocation(line: 990, column: 9, scope: !3159)
!3266 = !DILocation(line: 990, column: 22, scope: !3159)
!3267 = !{!3153, !195, i64 24}
!3268 = !DILocation(line: 991, column: 15, scope: !3159)
!3269 = !DILocation(line: 994, column: 9, scope: !3170)
!3270 = !{!194, !187, i64 536}
!3271 = !{!3272, !195, i64 40}
!3272 = !{!"list", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !195, i64 40}
!3273 = !DILocation(line: 994, column: 9, scope: !3159)
!3274 = !DILocation(line: 995, column: 9, scope: !3169)
!3275 = !DILocation(line: 995, column: 18, scope: !3169)
!3276 = !DILocation(line: 998, column: 9, scope: !3169)
!3277 = !DILocation(line: 999, column: 21, scope: !3169)
!3278 = !DILocation(line: 996, column: 19, scope: !3169)
!3279 = !DILocation(line: 999, column: 9, scope: !3169)
!3280 = !DILocation(line: 1000, column: 25, scope: !3178)
!3281 = !{!3282, !187, i64 16}
!3282 = !{!"listNode", !187, i64 0, !187, i64 8, !187, i64 16}
!3283 = !DILocation(line: 1000, column: 21, scope: !3178)
!3284 = !DILocation(line: 1001, column: 20, scope: !3178)
!3285 = !DILocation(line: 1002, column: 36, scope: !3178)
!3286 = !{!3287, !187, i64 32}
!3287 = !{!"client", !195, i64 0, !184, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !195, i64 40, !187, i64 48, !195, i64 56, !184, i64 64, !187, i64 72, !187, i64 80, !187, i64 88, !184, i64 96, !184, i64 100, !195, i64 104, !187, i64 112, !196, i64 120, !195, i64 128, !195, i64 136, !195, i64 144, !195, i64 152, !184, i64 160, !184, i64 164, !184, i64 168, !184, i64 172, !184, i64 176, !195, i64 184, !195, i64 192, !187, i64 200, !196, i64 208, !196, i64 216, !196, i64 224, !196, i64 232, !196, i64 240, !185, i64 248, !184, i64 292, !185, i64 296, !184, i64 344, !3288, i64 352, !184, i64 384, !3289, i64 392, !196, i64 480, !187, i64 488, !187, i64 496, !187, i64 504, !187, i64 512, !187, i64 520, !184, i64 528, !185, i64 532}
!3288 = !{!"multiState", !187, i64 0, !184, i64 8, !184, i64 12, !184, i64 16, !195, i64 24}
!3289 = !{!"blockingState", !196, i64 0, !187, i64 8, !187, i64 16, !195, i64 24, !187, i64 32, !187, i64 40, !196, i64 48, !196, i64 56, !184, i64 64, !184, i64 68, !196, i64 72, !187, i64 80}
!3290 = !DILocation(line: 1002, column: 20, scope: !3178)
!3291 = !DILocation(line: 1001, column: 17, scope: !3178)
!3292 = !DILocation(line: 1002, column: 17, scope: !3178)
!3293 = !DILocation(line: 1003, column: 17, scope: !3178)
!3294 = distinct !{!3294, !3279, !3295}
!3295 = !DILocation(line: 1004, column: 9, scope: !3169)
!3296 = !DILocation(line: 0, scope: !3178)
!3297 = !DILocation(line: 1005, column: 5, scope: !3170)
!3298 = !DILocation(line: 1005, column: 5, scope: !3169)
!3299 = !DILocation(line: 993, column: 9, scope: !3159)
!3300 = !DILocation(line: 1006, column: 9, scope: !3159)
!3301 = !DILocation(line: 1006, column: 24, scope: !3159)
!3302 = !{!3153, !195, i64 32}
!3303 = !DILocation(line: 1007, column: 14, scope: !3159)
!3304 = !DILocation(line: 1010, column: 9, scope: !3181)
!3305 = !{!194, !187, i64 512}
!3306 = !DILocation(line: 1010, column: 9, scope: !3159)
!3307 = !DILocation(line: 1011, column: 9, scope: !3180)
!3308 = !DILocation(line: 1011, column: 18, scope: !3180)
!3309 = !DILocation(line: 1014, column: 9, scope: !3180)
!3310 = !DILocation(line: 1015, column: 21, scope: !3180)
!3311 = !DILocation(line: 1012, column: 19, scope: !3180)
!3312 = !DILocation(line: 1015, column: 9, scope: !3180)
!3313 = !DILocation(line: 1016, column: 25, scope: !3184)
!3314 = !DILocation(line: 1016, column: 21, scope: !3184)
!3315 = !DILocation(line: 1017, column: 20, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 1017, column: 17)
!3317 = !{!3287, !184, i64 160}
!3318 = !DILocation(line: 1017, column: 41, scope: !3316)
!3319 = distinct !{!3319, !3312, !3320}
!3320 = !DILocation(line: 1022, column: 9, scope: !3180)
!3321 = !DILocation(line: 1019, column: 20, scope: !3184)
!3322 = !DILocation(line: 1020, column: 36, scope: !3184)
!3323 = !DILocation(line: 1020, column: 20, scope: !3184)
!3324 = !DILocation(line: 1019, column: 17, scope: !3184)
!3325 = !DILocation(line: 1020, column: 17, scope: !3184)
!3326 = !DILocation(line: 1021, column: 17, scope: !3184)
!3327 = !DILocation(line: 0, scope: !3184)
!3328 = !DILocation(line: 1023, column: 5, scope: !3181)
!3329 = !DILocation(line: 1023, column: 5, scope: !3180)
!3330 = !DILocation(line: 1009, column: 9, scope: !3159)
!3331 = !DILocation(line: 1024, column: 9, scope: !3159)
!3332 = !DILocation(line: 1024, column: 24, scope: !3159)
!3333 = !{!3153, !195, i64 40}
!3334 = !DILocation(line: 1025, column: 14, scope: !3159)
!3335 = !DILocation(line: 1028, column: 16, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1028, column: 9)
!3337 = !{!194, !184, i64 1880}
!3338 = !DILocation(line: 1028, column: 26, scope: !3336)
!3339 = !DILocation(line: 1028, column: 9, scope: !3159)
!3340 = !DILocation(line: 1029, column: 32, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3336, file: !1, line: 1028, column: 38)
!3342 = !{!194, !187, i64 1952}
!3343 = !DILocalVariable(name: "s", arg: 1, scope: !3344, file: !99, line: 180, type: !487)
!3344 = distinct !DISubprogram(name: "sdsalloc", scope: !99, file: !99, line: 180, type: !483, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3345)
!3345 = !{!3343, !3346}
!3346 = !DILocalVariable(name: "flags", scope: !3344, file: !99, line: 181, type: !131)
!3347 = !DILocation(line: 180, column: 41, scope: !3344, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 1029, column: 16, scope: !3341)
!3349 = !DILocation(line: 181, column: 27, scope: !3344, inlinedAt: !3348)
!3350 = !DILocation(line: 181, column: 19, scope: !3344, inlinedAt: !3348)
!3351 = !DILocation(line: 182, column: 5, scope: !3344, inlinedAt: !3348)
!3352 = !DILocation(line: 184, column: 20, scope: !3353, inlinedAt: !3348)
!3353 = distinct !DILexicalBlock(scope: !3344, file: !99, line: 182, column: 33)
!3354 = !DILocation(line: 184, column: 13, scope: !3353, inlinedAt: !3348)
!3355 = !DILocation(line: 186, column: 34, scope: !3353, inlinedAt: !3348)
!3356 = !DILocation(line: 186, column: 20, scope: !3353, inlinedAt: !3348)
!3357 = !DILocation(line: 186, column: 13, scope: !3353, inlinedAt: !3348)
!3358 = !DILocation(line: 188, column: 35, scope: !3353, inlinedAt: !3348)
!3359 = !DILocation(line: 188, column: 20, scope: !3353, inlinedAt: !3348)
!3360 = !DILocation(line: 188, column: 13, scope: !3353, inlinedAt: !3348)
!3361 = !DILocation(line: 190, column: 35, scope: !3353, inlinedAt: !3348)
!3362 = !DILocation(line: 190, column: 20, scope: !3353, inlinedAt: !3348)
!3363 = !DILocation(line: 190, column: 13, scope: !3353, inlinedAt: !3348)
!3364 = !DILocation(line: 192, column: 35, scope: !3353, inlinedAt: !3348)
!3365 = !DILocation(line: 192, column: 13, scope: !3353, inlinedAt: !3348)
!3366 = !DILocation(line: 0, scope: !3353, inlinedAt: !3348)
!3367 = !DILocation(line: 1030, column: 16, scope: !3341)
!3368 = !DILocation(line: 1030, column: 13, scope: !3341)
!3369 = !DILocation(line: 1031, column: 5, scope: !3341)
!3370 = !DILocation(line: 1032, column: 9, scope: !3159)
!3371 = !DILocation(line: 1032, column: 20, scope: !3159)
!3372 = !{!3153, !195, i64 48}
!3373 = !DILocation(line: 1033, column: 14, scope: !3159)
!3374 = !DILocation(line: 1035, column: 18, scope: !3159)
!3375 = !{!194, !196, i64 3024}
!3376 = !DILocation(line: 1036, column: 12, scope: !3159)
!3377 = !{!194, !187, i64 3016}
!3378 = !DILocation(line: 1037, column: 9, scope: !3159)
!3379 = !DILocation(line: 1038, column: 12, scope: !3159)
!3380 = !{!194, !187, i64 2664}
!3381 = !DILocation(line: 1039, column: 9, scope: !3159)
!3382 = !DILocation(line: 1036, column: 9, scope: !3159)
!3383 = !DILocation(line: 1038, column: 9, scope: !3159)
!3384 = !DILocation(line: 1040, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1040, column: 9)
!3386 = !{!194, !187, i64 2672}
!3387 = !DILocation(line: 1040, column: 50, scope: !3385)
!3388 = !DILocation(line: 1040, column: 9, scope: !3159)
!3389 = !DILocation(line: 1042, column: 28, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3385, file: !1, line: 1040, column: 55)
!3391 = !{!3272, !187, i64 0}
!3392 = !DILocation(line: 1042, column: 13, scope: !3390)
!3393 = !DILocation(line: 1041, column: 77, scope: !3390)
!3394 = !DILocation(line: 1041, column: 57, scope: !3390)
!3395 = !DILocation(line: 1041, column: 13, scope: !3390)
!3396 = !DILocation(line: 1043, column: 5, scope: !3390)
!3397 = !DILocation(line: 1044, column: 9, scope: !3159)
!3398 = !DILocation(line: 1044, column: 20, scope: !3159)
!3399 = !{!3153, !195, i64 56}
!3400 = !DILocation(line: 1045, column: 14, scope: !3159)
!3401 = !DILocation(line: 959, column: 9, scope: !3159)
!3402 = !DILocation(line: 1047, column: 28, scope: !3187)
!3403 = !{!194, !184, i64 1792}
!3404 = !DILocation(line: 1047, column: 19, scope: !3187)
!3405 = !DILocation(line: 1047, column: 5, scope: !3188)
!3406 = !DILocation(line: 1048, column: 30, scope: !3186)
!3407 = !{!194, !187, i64 48}
!3408 = !DILocation(line: 1049, column: 31, scope: !3186)
!3409 = !{!3410, !187, i64 0}
!3410 = !{!"redisDb", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !184, i64 40, !196, i64 48, !187, i64 56}
!3411 = !DILocation(line: 1049, column: 19, scope: !3186)
!3412 = !DILocation(line: 1050, column: 22, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1050, column: 13)
!3414 = !DILocation(line: 1050, column: 13, scope: !3186)
!3415 = !DILocation(line: 1052, column: 24, scope: !3186)
!3416 = !{!3153, !195, i64 80}
!3417 = !DILocation(line: 1053, column: 31, scope: !3186)
!3418 = !DILocation(line: 1053, column: 57, scope: !3186)
!3419 = !{!3153, !195, i64 168}
!3420 = !DILocation(line: 1053, column: 51, scope: !3186)
!3421 = !DILocation(line: 1053, column: 18, scope: !3186)
!3422 = !DILocation(line: 1053, column: 16, scope: !3186)
!3423 = !DILocation(line: 1054, column: 20, scope: !3186)
!3424 = !DILocation(line: 1054, column: 29, scope: !3186)
!3425 = !DILocation(line: 1054, column: 34, scope: !3186)
!3426 = !{!3427, !195, i64 0}
!3427 = !{!"", !195, i64 0, !195, i64 8, !195, i64 16}
!3428 = !DILocation(line: 1056, column: 15, scope: !3186)
!3429 = !DILocation(line: 1057, column: 15, scope: !3186)
!3430 = !DILocation(line: 1057, column: 35, scope: !3186)
!3431 = !DILocation(line: 1056, column: 54, scope: !3186)
!3432 = !DILocation(line: 1057, column: 56, scope: !3186)
!3433 = !DILocation(line: 1059, column: 29, scope: !3186)
!3434 = !DILocation(line: 1059, column: 46, scope: !3186)
!3435 = !{!3427, !195, i64 8}
!3436 = !DILocation(line: 1060, column: 18, scope: !3186)
!3437 = !DILocation(line: 1062, column: 15, scope: !3186)
!3438 = !{!3410, !187, i64 8}
!3439 = !DILocation(line: 1062, column: 37, scope: !3186)
!3440 = !DILocation(line: 1063, column: 15, scope: !3186)
!3441 = !DILocation(line: 1063, column: 38, scope: !3186)
!3442 = !DILocation(line: 1062, column: 57, scope: !3186)
!3443 = !DILocation(line: 1064, column: 29, scope: !3186)
!3444 = !DILocation(line: 1064, column: 49, scope: !3186)
!3445 = !{!3427, !195, i64 16}
!3446 = !DILocation(line: 1065, column: 18, scope: !3186)
!3447 = !DILocation(line: 1067, column: 20, scope: !3186)
!3448 = !DILocation(line: 1068, column: 5, scope: !3187)
!3449 = !DILocation(line: 0, scope: !3186)
!3450 = !DILocation(line: 1047, column: 36, scope: !3187)
!3451 = distinct !{!3451, !3405, !3452}
!3452 = !DILocation(line: 1068, column: 5, scope: !3188)
!3453 = !DILocation(line: 1070, column: 9, scope: !3159)
!3454 = !DILocation(line: 1070, column: 24, scope: !3159)
!3455 = !{!3153, !195, i64 64}
!3456 = !DILocation(line: 1071, column: 32, scope: !3159)
!3457 = !DILocation(line: 1071, column: 9, scope: !3159)
!3458 = !DILocation(line: 1071, column: 17, scope: !3159)
!3459 = !{!3153, !195, i64 72}
!3460 = !DILocation(line: 1072, column: 21, scope: !3159)
!3461 = !DILocation(line: 1072, column: 40, scope: !3159)
!3462 = !DILocation(line: 1072, column: 49, scope: !3159)
!3463 = !DILocation(line: 1072, column: 45, scope: !3159)
!3464 = !DILocation(line: 1072, column: 44, scope: !3159)
!3465 = !DILocation(line: 1072, column: 9, scope: !3159)
!3466 = !DILocation(line: 1072, column: 19, scope: !3159)
!3467 = !{!3153, !3154, i64 100}
!3468 = !DILocation(line: 1076, column: 12, scope: !3159)
!3469 = !DILocation(line: 1077, column: 28, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3159, file: !1, line: 1077, column: 9)
!3471 = !DILocation(line: 1077, column: 22, scope: !3470)
!3472 = !DILocation(line: 1078, column: 34, scope: !3470)
!3473 = !DILocation(line: 1077, column: 9, scope: !3159)
!3474 = !DILocation(line: 1079, column: 24, scope: !3159)
!3475 = !DILocation(line: 1079, column: 42, scope: !3159)
!3476 = !DILocation(line: 1079, column: 47, scope: !3159)
!3477 = !DILocation(line: 1079, column: 46, scope: !3159)
!3478 = !DILocation(line: 1079, column: 9, scope: !3159)
!3479 = !DILocation(line: 1079, column: 22, scope: !3159)
!3480 = !{!3153, !3154, i64 96}
!3481 = !DILocation(line: 1080, column: 29, scope: !3159)
!3482 = !DILocation(line: 1080, column: 25, scope: !3159)
!3483 = !DILocation(line: 1080, column: 53, scope: !3159)
!3484 = !DILocation(line: 1080, column: 9, scope: !3159)
!3485 = !DILocation(line: 1080, column: 23, scope: !3159)
!3486 = !{!3153, !195, i64 88}
!3487 = !DILocation(line: 1082, column: 5, scope: !3159)
!3488 = distinct !DISubprogram(name: "inputCatSds", scope: !1, file: !1, line: 1087, type: !3489, isLocal: false, isDefinition: true, scopeLine: 1087, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !4, !74}
!3491 = !{!3492, !3493, !3494}
!3492 = !DILocalVariable(name: "result", arg: 1, scope: !3488, file: !1, line: 1087, type: !4)
!3493 = !DILocalVariable(name: "str", arg: 2, scope: !3488, file: !1, line: 1087, type: !74)
!3494 = !DILocalVariable(name: "info", scope: !3488, file: !1, line: 1089, type: !114)
!3495 = !DILocation(line: 1087, column: 24, scope: !3488)
!3496 = !DILocation(line: 1087, column: 44, scope: !3488)
!3497 = !DILocation(line: 1089, column: 17, scope: !3488)
!3498 = !DILocation(line: 1089, column: 10, scope: !3488)
!3499 = !DILocation(line: 1090, column: 20, scope: !3488)
!3500 = !DILocation(line: 1090, column: 13, scope: !3488)
!3501 = !DILocation(line: 1090, column: 11, scope: !3488)
!3502 = !DILocation(line: 1091, column: 1, scope: !3488)
!3503 = distinct !DISubprogram(name: "getMemoryDoctorReport", scope: !1, file: !1, line: 1095, type: !3504, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!98}
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3521, !3522}
!3507 = !DILocalVariable(name: "empty", scope: !3503, file: !1, line: 1096, type: !36)
!3508 = !DILocalVariable(name: "big_peak", scope: !3503, file: !1, line: 1097, type: !36)
!3509 = !DILocalVariable(name: "high_frag", scope: !3503, file: !1, line: 1098, type: !36)
!3510 = !DILocalVariable(name: "high_alloc_frag", scope: !3503, file: !1, line: 1099, type: !36)
!3511 = !DILocalVariable(name: "high_proc_rss", scope: !3503, file: !1, line: 1100, type: !36)
!3512 = !DILocalVariable(name: "high_alloc_rss", scope: !3503, file: !1, line: 1101, type: !36)
!3513 = !DILocalVariable(name: "big_slave_buf", scope: !3503, file: !1, line: 1102, type: !36)
!3514 = !DILocalVariable(name: "big_client_buf", scope: !3503, file: !1, line: 1103, type: !36)
!3515 = !DILocalVariable(name: "many_scripts", scope: !3503, file: !1, line: 1104, type: !36)
!3516 = !DILocalVariable(name: "num_reports", scope: !3503, file: !1, line: 1105, type: !36)
!3517 = !DILocalVariable(name: "mh", scope: !3503, file: !1, line: 1106, type: !3114)
!3518 = !DILocalVariable(name: "numslaves", scope: !3519, file: !1, line: 1143, type: !5)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 1111, column: 12)
!3520 = distinct !DILexicalBlock(scope: !3503, file: !1, line: 1108, column: 9)
!3521 = !DILocalVariable(name: "numclients", scope: !3519, file: !1, line: 1144, type: !5)
!3522 = !DILocalVariable(name: "s", scope: !3503, file: !1, line: 1163, type: !98)
!3523 = !DILocation(line: 1096, column: 9, scope: !3503)
!3524 = !DILocation(line: 1097, column: 9, scope: !3503)
!3525 = !DILocation(line: 1098, column: 9, scope: !3503)
!3526 = !DILocation(line: 1099, column: 9, scope: !3503)
!3527 = !DILocation(line: 1100, column: 9, scope: !3503)
!3528 = !DILocation(line: 1101, column: 9, scope: !3503)
!3529 = !DILocation(line: 1102, column: 9, scope: !3503)
!3530 = !DILocation(line: 1103, column: 9, scope: !3503)
!3531 = !DILocation(line: 1104, column: 9, scope: !3503)
!3532 = !DILocation(line: 1105, column: 9, scope: !3503)
!3533 = !DILocation(line: 1106, column: 35, scope: !3503)
!3534 = !DILocation(line: 1106, column: 30, scope: !3503)
!3535 = !DILocation(line: 1108, column: 13, scope: !3520)
!3536 = !DILocation(line: 1108, column: 29, scope: !3520)
!3537 = !DILocation(line: 1108, column: 9, scope: !3503)
!3538 = !DILocation(line: 1113, column: 25, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1113, column: 13)
!3540 = !DILocation(line: 1113, column: 14, scope: !3539)
!3541 = !DILocation(line: 1113, column: 42, scope: !3539)
!3542 = !DILocation(line: 1113, column: 40, scope: !3539)
!3543 = !DILocation(line: 1113, column: 63, scope: !3539)
!3544 = !DILocation(line: 1113, column: 13, scope: !3519)
!3545 = !DILocation(line: 1119, column: 17, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1119, column: 13)
!3547 = !DILocation(line: 1119, column: 13, scope: !3546)
!3548 = !DILocation(line: 1119, column: 28, scope: !3546)
!3549 = !DILocation(line: 1119, column: 34, scope: !3546)
!3550 = !DILocation(line: 1119, column: 41, scope: !3546)
!3551 = !DILocation(line: 1119, column: 58, scope: !3546)
!3552 = !DILocation(line: 1121, column: 24, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 1119, column: 68)
!3554 = !DILocation(line: 1119, column: 13, scope: !3519)
!3555 = !DILocation(line: 0, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3539, file: !1, line: 1113, column: 70)
!3557 = !DILocation(line: 0, scope: !3503)
!3558 = !DILocation(line: 1125, column: 17, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1125, column: 13)
!3560 = !DILocation(line: 1125, column: 13, scope: !3559)
!3561 = !DILocation(line: 1125, column: 32, scope: !3559)
!3562 = !DILocation(line: 1125, column: 38, scope: !3559)
!3563 = !DILocation(line: 1125, column: 45, scope: !3559)
!3564 = !DILocation(line: 1125, column: 66, scope: !3559)
!3565 = !DILocation(line: 1125, column: 13, scope: !3519)
!3566 = !DILocation(line: 0, scope: !3553)
!3567 = !DILocation(line: 1131, column: 17, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1131, column: 13)
!3569 = !DILocation(line: 1131, column: 13, scope: !3568)
!3570 = !DILocation(line: 1131, column: 31, scope: !3568)
!3571 = !DILocation(line: 1131, column: 37, scope: !3568)
!3572 = !DILocation(line: 1131, column: 44, scope: !3568)
!3573 = !DILocation(line: 1131, column: 64, scope: !3568)
!3574 = !DILocation(line: 1131, column: 13, scope: !3519)
!3575 = !DILocation(line: 0, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3559, file: !1, line: 1125, column: 76)
!3577 = !DILocation(line: 1137, column: 17, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1137, column: 13)
!3579 = !DILocation(line: 1137, column: 13, scope: !3578)
!3580 = !DILocation(line: 1137, column: 27, scope: !3578)
!3581 = !DILocation(line: 1137, column: 33, scope: !3578)
!3582 = !DILocation(line: 1137, column: 40, scope: !3578)
!3583 = !DILocation(line: 1137, column: 56, scope: !3578)
!3584 = !DILocation(line: 1137, column: 13, scope: !3519)
!3585 = !DILocation(line: 0, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3568, file: !1, line: 1131, column: 74)
!3587 = !DILocation(line: 1143, column: 26, scope: !3519)
!3588 = !DILocation(line: 1143, column: 14, scope: !3519)
!3589 = !DILocation(line: 1144, column: 27, scope: !3519)
!3590 = !DILocation(line: 1144, column: 53, scope: !3519)
!3591 = !DILocation(line: 1144, column: 14, scope: !3519)
!3592 = !DILocation(line: 1145, column: 17, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1145, column: 13)
!3594 = !DILocation(line: 1145, column: 32, scope: !3593)
!3595 = !DILocation(line: 1145, column: 45, scope: !3593)
!3596 = !DILocation(line: 1145, column: 13, scope: !3519)
!3597 = !DILocation(line: 1151, column: 23, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1151, column: 13)
!3599 = !DILocation(line: 1151, column: 27, scope: !3598)
!3600 = !DILocation(line: 1151, column: 34, scope: !3598)
!3601 = !DILocation(line: 1151, column: 49, scope: !3598)
!3602 = !DILocation(line: 1151, column: 61, scope: !3598)
!3603 = !DILocation(line: 1151, column: 13, scope: !3519)
!3604 = !DILocation(line: 0, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3593, file: !1, line: 1145, column: 59)
!3606 = !DILocation(line: 1157, column: 13, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3519, file: !1, line: 1157, column: 13)
!3608 = !DILocation(line: 1157, column: 42, scope: !3607)
!3609 = !DILocation(line: 1164, column: 21, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3503, file: !1, line: 1164, column: 9)
!3611 = !DILocation(line: 1164, column: 9, scope: !3503)
!3612 = !DILocation(line: 1165, column: 13, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !1, line: 1164, column: 27)
!3614 = !DILocation(line: 1163, column: 9, scope: !3503)
!3615 = !DILocation(line: 1168, column: 5, scope: !3613)
!3616 = !DILocation(line: 1169, column: 13, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 1168, column: 28)
!3618 = distinct !DILexicalBlock(scope: !3610, file: !1, line: 1168, column: 16)
!3619 = !DILocation(line: 1175, column: 5, scope: !3617)
!3620 = !DILocation(line: 1176, column: 13, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3618, file: !1, line: 1175, column: 12)
!3622 = !DILocation(line: 1177, column: 13, scope: !3621)
!3623 = !DILocation(line: 1178, column: 17, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !1, line: 1177, column: 23)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1177, column: 13)
!3626 = !DILocation(line: 1179, column: 9, scope: !3624)
!3627 = !DILocation(line: 0, scope: !3621)
!3628 = !DILocation(line: 1180, column: 13, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1180, column: 13)
!3630 = !DILocation(line: 1180, column: 13, scope: !3621)
!3631 = !DILocation(line: 1181, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 1180, column: 24)
!3633 = !DILocation(line: 1182, column: 9, scope: !3632)
!3634 = !DILocation(line: 0, scope: !3624)
!3635 = !DILocation(line: 1183, column: 13, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1183, column: 13)
!3637 = !DILocation(line: 1183, column: 13, scope: !3621)
!3638 = !DILocation(line: 1184, column: 17, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1183, column: 30)
!3640 = !DILocation(line: 1185, column: 9, scope: !3639)
!3641 = !DILocation(line: 0, scope: !3632)
!3642 = !DILocation(line: 1186, column: 13, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1186, column: 13)
!3644 = !DILocation(line: 1186, column: 13, scope: !3621)
!3645 = !DILocation(line: 1187, column: 17, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1186, column: 29)
!3647 = !DILocation(line: 1188, column: 9, scope: !3646)
!3648 = !DILocation(line: 0, scope: !3639)
!3649 = !DILocation(line: 1189, column: 13, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1189, column: 13)
!3651 = !DILocation(line: 1189, column: 13, scope: !3621)
!3652 = !DILocation(line: 1190, column: 17, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 1189, column: 28)
!3654 = !DILocation(line: 1191, column: 9, scope: !3653)
!3655 = !DILocation(line: 0, scope: !3646)
!3656 = !DILocation(line: 1192, column: 13, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1192, column: 13)
!3658 = !DILocation(line: 1192, column: 13, scope: !3621)
!3659 = !DILocation(line: 1193, column: 17, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !1, line: 1192, column: 28)
!3661 = !DILocation(line: 1194, column: 9, scope: !3660)
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 1195, column: 13, scope: !3621)
!3664 = !DILocation(line: 1196, column: 17, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !1, line: 1195, column: 29)
!3666 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1195, column: 13)
!3667 = !DILocation(line: 1197, column: 9, scope: !3665)
!3668 = !DILocation(line: 0, scope: !3660)
!3669 = !DILocation(line: 1198, column: 13, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3621, file: !1, line: 1198, column: 13)
!3671 = !DILocation(line: 1198, column: 13, scope: !3621)
!3672 = !DILocation(line: 1199, column: 17, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3670, file: !1, line: 1198, column: 27)
!3674 = !DILocation(line: 1200, column: 9, scope: !3673)
!3675 = !DILocation(line: 0, scope: !3665)
!3676 = !DILocation(line: 1201, column: 13, scope: !3621)
!3677 = !DILocation(line: 950, column: 54, scope: !3111, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1203, column: 5, scope: !3503)
!3679 = !DILocation(line: 951, column: 15, scope: !3111, inlinedAt: !3678)
!3680 = !DILocation(line: 951, column: 5, scope: !3111, inlinedAt: !3678)
!3681 = !DILocation(line: 952, column: 11, scope: !3111, inlinedAt: !3678)
!3682 = !DILocation(line: 952, column: 5, scope: !3111, inlinedAt: !3678)
!3683 = !DILocation(line: 1204, column: 5, scope: !3503)
!3684 = distinct !DISubprogram(name: "objectSetLRUOrLFU", scope: !1, file: !1, line: 1212, type: !3685, isLocal: false, isDefinition: true, scopeLine: 1213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !115, !357, !357, !357}
!3687 = !{!3688, !3689, !3690, !3691, !3692}
!3688 = !DILocalVariable(name: "val", arg: 1, scope: !3684, file: !1, line: 1212, type: !115)
!3689 = !DILocalVariable(name: "lfu_freq", arg: 2, scope: !3684, file: !1, line: 1212, type: !357)
!3690 = !DILocalVariable(name: "lru_idle", arg: 3, scope: !3684, file: !1, line: 1212, type: !357)
!3691 = !DILocalVariable(name: "lru_clock", arg: 4, scope: !3684, file: !1, line: 1213, type: !357)
!3692 = !DILocalVariable(name: "lru_abs", scope: !3693, file: !1, line: 1225, type: !5)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !1, line: 1219, column: 31)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 1219, column: 16)
!3695 = distinct !DILexicalBlock(scope: !3684, file: !1, line: 1214, column: 9)
!3696 = !DILocation(line: 1212, column: 30, scope: !3684)
!3697 = !DILocation(line: 1212, column: 45, scope: !3684)
!3698 = !DILocation(line: 1212, column: 65, scope: !3684)
!3699 = !DILocation(line: 1213, column: 34, scope: !3684)
!3700 = !DILocation(line: 1214, column: 16, scope: !3695)
!3701 = !DILocation(line: 1214, column: 33, scope: !3695)
!3702 = !DILocation(line: 1214, column: 9, scope: !3684)
!3703 = !DILocation(line: 1215, column: 22, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !1, line: 1215, column: 13)
!3705 = distinct !DILexicalBlock(scope: !3695, file: !1, line: 1214, column: 55)
!3706 = !DILocation(line: 1215, column: 13, scope: !3705)
!3707 = !DILocation(line: 1216, column: 13, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3704, file: !1, line: 1215, column: 28)
!3709 = !DILocation(line: 1217, column: 25, scope: !3708)
!3710 = !DILocation(line: 1217, column: 46, scope: !3708)
!3711 = !DILocation(line: 1217, column: 51, scope: !3708)
!3712 = !DILocation(line: 1217, column: 24, scope: !3708)
!3713 = !DILocation(line: 1217, column: 18, scope: !3708)
!3714 = !DILocation(line: 1217, column: 22, scope: !3708)
!3715 = !DILocation(line: 1218, column: 9, scope: !3708)
!3716 = !DILocation(line: 1219, column: 25, scope: !3694)
!3717 = !DILocation(line: 1219, column: 16, scope: !3695)
!3718 = !DILocation(line: 1225, column: 34, scope: !3693)
!3719 = !DILocation(line: 1225, column: 14, scope: !3693)
!3720 = !DILocation(line: 1231, column: 21, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3693, file: !1, line: 1231, column: 13)
!3722 = !DILocation(line: 1231, column: 13, scope: !3693)
!3723 = !DILocation(line: 1232, column: 33, scope: !3721)
!3724 = !DILocation(line: 1232, column: 53, scope: !3721)
!3725 = !DILocation(line: 1232, column: 13, scope: !3721)
!3726 = !DILocation(line: 0, scope: !3693)
!3727 = !DILocation(line: 1233, column: 20, scope: !3693)
!3728 = !DILocation(line: 1233, column: 14, scope: !3693)
!3729 = !DILocation(line: 1233, column: 18, scope: !3693)
!3730 = !DILocation(line: 1234, column: 5, scope: !3693)
!3731 = !DILocation(line: 1235, column: 1, scope: !3684)
!3732 = distinct !DISubprogram(name: "objectCommandLookup", scope: !1, file: !1, line: 1241, type: !3733, isLocal: false, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!115, !1502, !115}
!3735 = !{!3736, !3737, !3738}
!3736 = !DILocalVariable(name: "c", arg: 1, scope: !3732, file: !1, line: 1241, type: !1502)
!3737 = !DILocalVariable(name: "key", arg: 2, scope: !3732, file: !1, line: 1241, type: !115)
!3738 = !DILocalVariable(name: "de", scope: !3732, file: !1, line: 1242, type: !50)
!3739 = !DILocation(line: 1241, column: 35, scope: !3732)
!3740 = !DILocation(line: 1241, column: 44, scope: !3732)
!3741 = !DILocation(line: 1244, column: 27, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3732, file: !1, line: 1244, column: 9)
!3743 = !{!3287, !187, i64 16}
!3744 = !DILocation(line: 1244, column: 31, scope: !3742)
!3745 = !DILocation(line: 1244, column: 41, scope: !3742)
!3746 = !DILocation(line: 1244, column: 15, scope: !3742)
!3747 = !DILocation(line: 1242, column: 16, scope: !3732)
!3748 = !DILocation(line: 1244, column: 47, scope: !3742)
!3749 = !DILocation(line: 1244, column: 9, scope: !3732)
!3750 = !DILocation(line: 1245, column: 20, scope: !3732)
!3751 = !DILocation(line: 1245, column: 5, scope: !3732)
!3752 = !DILocation(line: 0, scope: !3732)
!3753 = !DILocation(line: 1246, column: 1, scope: !3732)
!3754 = distinct !DISubprogram(name: "objectCommandLookupOrReply", scope: !1, file: !1, line: 1248, type: !3755, isLocal: false, isDefinition: true, scopeLine: 1248, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3757)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!115, !1502, !115, !115}
!3757 = !{!3758, !3759, !3760, !3761}
!3758 = !DILocalVariable(name: "c", arg: 1, scope: !3754, file: !1, line: 1248, type: !1502)
!3759 = !DILocalVariable(name: "key", arg: 2, scope: !3754, file: !1, line: 1248, type: !115)
!3760 = !DILocalVariable(name: "reply", arg: 3, scope: !3754, file: !1, line: 1248, type: !115)
!3761 = !DILocalVariable(name: "o", scope: !3754, file: !1, line: 1249, type: !115)
!3762 = !DILocation(line: 1248, column: 42, scope: !3754)
!3763 = !DILocation(line: 1248, column: 51, scope: !3754)
!3764 = !DILocation(line: 1248, column: 62, scope: !3754)
!3765 = !DILocation(line: 1241, column: 35, scope: !3732, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 1249, column: 15, scope: !3754)
!3767 = !DILocation(line: 1241, column: 44, scope: !3732, inlinedAt: !3766)
!3768 = !DILocation(line: 1244, column: 27, scope: !3742, inlinedAt: !3766)
!3769 = !DILocation(line: 1244, column: 31, scope: !3742, inlinedAt: !3766)
!3770 = !DILocation(line: 1244, column: 41, scope: !3742, inlinedAt: !3766)
!3771 = !DILocation(line: 1244, column: 15, scope: !3742, inlinedAt: !3766)
!3772 = !DILocation(line: 1242, column: 16, scope: !3732, inlinedAt: !3766)
!3773 = !DILocation(line: 1244, column: 47, scope: !3742, inlinedAt: !3766)
!3774 = !DILocation(line: 1244, column: 9, scope: !3732, inlinedAt: !3766)
!3775 = !DILocation(line: 1245, column: 20, scope: !3732, inlinedAt: !3766)
!3776 = !DILocation(line: 1249, column: 11, scope: !3754)
!3777 = !DILocation(line: 1251, column: 10, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3754, file: !1, line: 1251, column: 9)
!3779 = !DILocation(line: 1251, column: 9, scope: !3754)
!3780 = !DILocation(line: 1251, column: 13, scope: !3778)
!3781 = !DILocation(line: 1252, column: 5, scope: !3754)
!3782 = distinct !DISubprogram(name: "objectCommand", scope: !1, file: !1, line: 1257, type: !1562, isLocal: false, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3783)
!3783 = !{!3784, !3785, !3786}
!3784 = !DILocalVariable(name: "c", arg: 1, scope: !3782, file: !1, line: 1257, type: !1502)
!3785 = !DILocalVariable(name: "o", scope: !3782, file: !1, line: 1258, type: !115)
!3786 = !DILocalVariable(name: "help", scope: !3787, file: !1, line: 1261, type: !3789)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !1, line: 1260, column: 62)
!3788 = distinct !DILexicalBlock(scope: !3782, file: !1, line: 1260, column: 9)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 320, elements: !3790)
!3790 = !{!3791}
!3791 = !DISubrange(count: 5)
!3792 = !DILocation(line: 1257, column: 28, scope: !3782)
!3793 = !DILocation(line: 1260, column: 12, scope: !3788)
!3794 = !{!3287, !184, i64 64}
!3795 = !DILocation(line: 1260, column: 17, scope: !3788)
!3796 = !DILocation(line: 0, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3788, file: !1, line: 1269, column: 16)
!3798 = !{!3287, !187, i64 72}
!3799 = !DILocation(line: 1260, column: 22, scope: !3788)
!3800 = !DILocation(line: 1260, column: 26, scope: !3788)
!3801 = !DILocation(line: 1260, column: 9, scope: !3782)
!3802 = !DILocation(line: 1261, column: 9, scope: !3787)
!3803 = !DILocation(line: 1261, column: 21, scope: !3787)
!3804 = !DILocation(line: 1268, column: 9, scope: !3787)
!3805 = !DILocation(line: 1269, column: 5, scope: !3788)
!3806 = !DILocation(line: 1269, column: 5, scope: !3787)
!3807 = !DILocation(line: 1269, column: 17, scope: !3797)
!3808 = !DILocation(line: 1269, column: 67, scope: !3797)
!3809 = !DILocation(line: 1269, column: 56, scope: !3797)
!3810 = !DILocation(line: 1270, column: 47, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !1, line: 1270, column: 13)
!3812 = distinct !DILexicalBlock(scope: !3797, file: !1, line: 1269, column: 73)
!3813 = !DILocation(line: 1270, column: 65, scope: !3811)
!3814 = !{!1671, !187, i64 80}
!3815 = !DILocation(line: 1248, column: 42, scope: !3754, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 1270, column: 18, scope: !3811)
!3817 = !DILocation(line: 1248, column: 51, scope: !3754, inlinedAt: !3816)
!3818 = !DILocation(line: 1248, column: 62, scope: !3754, inlinedAt: !3816)
!3819 = !DILocation(line: 1241, column: 35, scope: !3732, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 1249, column: 15, scope: !3754, inlinedAt: !3816)
!3821 = !DILocation(line: 1241, column: 44, scope: !3732, inlinedAt: !3820)
!3822 = !DILocation(line: 1244, column: 27, scope: !3742, inlinedAt: !3820)
!3823 = !DILocation(line: 1244, column: 31, scope: !3742, inlinedAt: !3820)
!3824 = !DILocation(line: 1244, column: 41, scope: !3742, inlinedAt: !3820)
!3825 = !DILocation(line: 1244, column: 15, scope: !3742, inlinedAt: !3820)
!3826 = !DILocation(line: 1242, column: 16, scope: !3732, inlinedAt: !3820)
!3827 = !DILocation(line: 1244, column: 47, scope: !3742, inlinedAt: !3820)
!3828 = !DILocation(line: 1244, column: 9, scope: !3732, inlinedAt: !3820)
!3829 = !DILocation(line: 1245, column: 20, scope: !3732, inlinedAt: !3820)
!3830 = !DILocation(line: 1249, column: 11, scope: !3754, inlinedAt: !3816)
!3831 = !DILocation(line: 1251, column: 10, scope: !3778, inlinedAt: !3816)
!3832 = !DILocation(line: 1251, column: 9, scope: !3754, inlinedAt: !3816)
!3833 = !DILocation(line: 1251, column: 13, scope: !3778, inlinedAt: !3816)
!3834 = !DILocation(line: 1258, column: 11, scope: !3782)
!3835 = !DILocation(line: 1270, column: 13, scope: !3812)
!3836 = !DILocation(line: 1272, column: 31, scope: !3812)
!3837 = !DILocation(line: 1272, column: 28, scope: !3812)
!3838 = !DILocation(line: 1272, column: 9, scope: !3812)
!3839 = !DILocation(line: 1273, column: 5, scope: !3812)
!3840 = !DILocation(line: 1273, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3797, file: !1, line: 1273, column: 16)
!3842 = !DILocation(line: 1273, column: 56, scope: !3841)
!3843 = !DILocation(line: 1274, column: 47, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !1, line: 1274, column: 13)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 1273, column: 73)
!3846 = !DILocation(line: 1274, column: 65, scope: !3844)
!3847 = !DILocation(line: 1248, column: 42, scope: !3754, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 1274, column: 18, scope: !3844)
!3849 = !DILocation(line: 1248, column: 51, scope: !3754, inlinedAt: !3848)
!3850 = !DILocation(line: 1248, column: 62, scope: !3754, inlinedAt: !3848)
!3851 = !DILocation(line: 1241, column: 35, scope: !3732, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 1249, column: 15, scope: !3754, inlinedAt: !3848)
!3853 = !DILocation(line: 1241, column: 44, scope: !3732, inlinedAt: !3852)
!3854 = !DILocation(line: 1244, column: 27, scope: !3742, inlinedAt: !3852)
!3855 = !DILocation(line: 1244, column: 31, scope: !3742, inlinedAt: !3852)
!3856 = !DILocation(line: 1244, column: 41, scope: !3742, inlinedAt: !3852)
!3857 = !DILocation(line: 1244, column: 15, scope: !3742, inlinedAt: !3852)
!3858 = !DILocation(line: 1242, column: 16, scope: !3732, inlinedAt: !3852)
!3859 = !DILocation(line: 1244, column: 47, scope: !3742, inlinedAt: !3852)
!3860 = !DILocation(line: 1244, column: 9, scope: !3732, inlinedAt: !3852)
!3861 = !DILocation(line: 1245, column: 20, scope: !3732, inlinedAt: !3852)
!3862 = !DILocation(line: 1249, column: 11, scope: !3754, inlinedAt: !3848)
!3863 = !DILocation(line: 1251, column: 10, scope: !3778, inlinedAt: !3848)
!3864 = !DILocation(line: 1251, column: 9, scope: !3754, inlinedAt: !3848)
!3865 = !DILocation(line: 1251, column: 13, scope: !3778, inlinedAt: !3848)
!3866 = !DILocation(line: 1274, column: 13, scope: !3845)
!3867 = !DILocation(line: 1276, column: 46, scope: !3845)
!3868 = !DILocation(line: 740, column: 23, scope: !2594, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 1276, column: 31, scope: !3845)
!3870 = !DILocation(line: 741, column: 5, scope: !2594, inlinedAt: !3869)
!3871 = !DILocation(line: 1276, column: 9, scope: !3845)
!3872 = !DILocation(line: 1277, column: 5, scope: !3845)
!3873 = !DILocation(line: 1277, column: 17, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 1277, column: 16)
!3875 = !DILocation(line: 1277, column: 56, scope: !3874)
!3876 = !DILocation(line: 1278, column: 47, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !1, line: 1278, column: 13)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 1277, column: 73)
!3879 = !DILocation(line: 1278, column: 65, scope: !3877)
!3880 = !DILocation(line: 1248, column: 42, scope: !3754, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 1278, column: 18, scope: !3877)
!3882 = !DILocation(line: 1248, column: 51, scope: !3754, inlinedAt: !3881)
!3883 = !DILocation(line: 1248, column: 62, scope: !3754, inlinedAt: !3881)
!3884 = !DILocation(line: 1241, column: 35, scope: !3732, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 1249, column: 15, scope: !3754, inlinedAt: !3881)
!3886 = !DILocation(line: 1241, column: 44, scope: !3732, inlinedAt: !3885)
!3887 = !DILocation(line: 1244, column: 27, scope: !3742, inlinedAt: !3885)
!3888 = !DILocation(line: 1244, column: 31, scope: !3742, inlinedAt: !3885)
!3889 = !DILocation(line: 1244, column: 41, scope: !3742, inlinedAt: !3885)
!3890 = !DILocation(line: 1244, column: 15, scope: !3742, inlinedAt: !3885)
!3891 = !DILocation(line: 1242, column: 16, scope: !3732, inlinedAt: !3885)
!3892 = !DILocation(line: 1244, column: 47, scope: !3742, inlinedAt: !3885)
!3893 = !DILocation(line: 1244, column: 9, scope: !3732, inlinedAt: !3885)
!3894 = !DILocation(line: 1245, column: 20, scope: !3732, inlinedAt: !3885)
!3895 = !DILocation(line: 1249, column: 11, scope: !3754, inlinedAt: !3881)
!3896 = !DILocation(line: 1251, column: 10, scope: !3778, inlinedAt: !3881)
!3897 = !DILocation(line: 1251, column: 9, scope: !3754, inlinedAt: !3881)
!3898 = !DILocation(line: 1251, column: 13, scope: !3778, inlinedAt: !3881)
!3899 = !DILocation(line: 1278, column: 13, scope: !3878)
!3900 = !DILocation(line: 1280, column: 20, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3878, file: !1, line: 1280, column: 13)
!3902 = !DILocation(line: 1280, column: 37, scope: !3901)
!3903 = !DILocation(line: 1280, column: 13, scope: !3878)
!3904 = !DILocation(line: 1281, column: 13, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3901, file: !1, line: 1280, column: 59)
!3906 = !DILocation(line: 1282, column: 13, scope: !3905)
!3907 = !DILocation(line: 1284, column: 28, scope: !3878)
!3908 = !DILocation(line: 1284, column: 53, scope: !3878)
!3909 = !DILocation(line: 1284, column: 9, scope: !3878)
!3910 = !DILocation(line: 1285, column: 5, scope: !3878)
!3911 = !DILocation(line: 1285, column: 17, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3874, file: !1, line: 1285, column: 16)
!3913 = !DILocation(line: 1285, column: 52, scope: !3912)
!3914 = !DILocation(line: 1286, column: 47, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 1286, column: 13)
!3916 = distinct !DILexicalBlock(scope: !3912, file: !1, line: 1285, column: 69)
!3917 = !DILocation(line: 1286, column: 65, scope: !3915)
!3918 = !DILocation(line: 1248, column: 42, scope: !3754, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 1286, column: 18, scope: !3915)
!3920 = !DILocation(line: 1248, column: 51, scope: !3754, inlinedAt: !3919)
!3921 = !DILocation(line: 1248, column: 62, scope: !3754, inlinedAt: !3919)
!3922 = !DILocation(line: 1241, column: 35, scope: !3732, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 1249, column: 15, scope: !3754, inlinedAt: !3919)
!3924 = !DILocation(line: 1241, column: 44, scope: !3732, inlinedAt: !3923)
!3925 = !DILocation(line: 1244, column: 27, scope: !3742, inlinedAt: !3923)
!3926 = !DILocation(line: 1244, column: 31, scope: !3742, inlinedAt: !3923)
!3927 = !DILocation(line: 1244, column: 41, scope: !3742, inlinedAt: !3923)
!3928 = !DILocation(line: 1244, column: 15, scope: !3742, inlinedAt: !3923)
!3929 = !DILocation(line: 1242, column: 16, scope: !3732, inlinedAt: !3923)
!3930 = !DILocation(line: 1244, column: 47, scope: !3742, inlinedAt: !3923)
!3931 = !DILocation(line: 1244, column: 9, scope: !3732, inlinedAt: !3923)
!3932 = !DILocation(line: 1245, column: 20, scope: !3732, inlinedAt: !3923)
!3933 = !DILocation(line: 1249, column: 11, scope: !3754, inlinedAt: !3919)
!3934 = !DILocation(line: 1251, column: 10, scope: !3778, inlinedAt: !3919)
!3935 = !DILocation(line: 1251, column: 9, scope: !3754, inlinedAt: !3919)
!3936 = !DILocation(line: 1251, column: 13, scope: !3778, inlinedAt: !3919)
!3937 = !DILocation(line: 1286, column: 13, scope: !3916)
!3938 = !DILocation(line: 1288, column: 22, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3916, file: !1, line: 1288, column: 13)
!3940 = !DILocation(line: 1288, column: 39, scope: !3939)
!3941 = !DILocation(line: 1288, column: 13, scope: !3916)
!3942 = !DILocation(line: 1289, column: 13, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3939, file: !1, line: 1288, column: 62)
!3944 = !DILocation(line: 1290, column: 13, scope: !3943)
!3945 = !DILocation(line: 1296, column: 28, scope: !3916)
!3946 = !DILocation(line: 1296, column: 9, scope: !3916)
!3947 = !DILocation(line: 1297, column: 5, scope: !3916)
!3948 = !DILocation(line: 1298, column: 9, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3912, file: !1, line: 1297, column: 12)
!3950 = !DILocation(line: 1300, column: 1, scope: !3782)
!3951 = distinct !DISubprogram(name: "memoryCommand", scope: !1, file: !1, line: 1306, type: !1562, isLocal: false, isDefinition: true, scopeLine: 1306, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3952)
!3952 = !{!3953, !3954, !3960, !3963, !3964, !3966, !3967, !3970, !3972, !3975}
!3953 = !DILocalVariable(name: "c", arg: 1, scope: !3951, file: !1, line: 1306, type: !1502)
!3954 = !DILocalVariable(name: "help", scope: !3955, file: !1, line: 1308, type: !3957)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !1, line: 1307, column: 62)
!3956 = distinct !DILexicalBlock(scope: !3951, file: !1, line: 1307, column: 9)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 384, elements: !3958)
!3958 = !{!3959}
!3959 = !DISubrange(count: 6)
!3960 = !DILocalVariable(name: "de", scope: !3961, file: !1, line: 1318, type: !50)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !1, line: 1317, column: 70)
!3962 = distinct !DILexicalBlock(scope: !3956, file: !1, line: 1317, column: 16)
!3963 = !DILocalVariable(name: "samples", scope: !3961, file: !1, line: 1319, type: !357)
!3964 = !DILocalVariable(name: "j", scope: !3965, file: !1, line: 1320, type: !36)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 1320, column: 9)
!3966 = !DILocalVariable(name: "usage", scope: !3961, file: !1, line: 1341, type: !77)
!3967 = !DILocalVariable(name: "mh", scope: !3968, file: !1, line: 1346, type: !3114)
!3968 = distinct !DILexicalBlock(scope: !3969, file: !1, line: 1345, column: 70)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !1, line: 1345, column: 16)
!3970 = !DILocalVariable(name: "j", scope: !3971, file: !1, line: 1374, type: !77)
!3971 = distinct !DILexicalBlock(scope: !3968, file: !1, line: 1374, column: 9)
!3972 = !DILocalVariable(name: "dbname", scope: !3973, file: !1, line: 1375, type: !1993)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !1, line: 1374, column: 50)
!3974 = distinct !DILexicalBlock(scope: !3971, file: !1, line: 1374, column: 9)
!3975 = !DILocalVariable(name: "report", scope: !3976, file: !1, line: 1448, type: !98)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !1, line: 1447, column: 71)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !1, line: 1447, column: 16)
!3978 = distinct !DILexicalBlock(scope: !3969, file: !1, line: 1439, column: 16)
!3979 = !DILocation(line: 1306, column: 28, scope: !3951)
!3980 = !DILocation(line: 1307, column: 24, scope: !3956)
!3981 = !DILocation(line: 1307, column: 21, scope: !3956)
!3982 = !DILocation(line: 1307, column: 33, scope: !3956)
!3983 = !DILocation(line: 1307, column: 10, scope: !3956)
!3984 = !DILocation(line: 1307, column: 45, scope: !3956)
!3985 = !DILocation(line: 1307, column: 51, scope: !3956)
!3986 = !DILocation(line: 1307, column: 56, scope: !3956)
!3987 = !DILocation(line: 1307, column: 9, scope: !3951)
!3988 = !DILocation(line: 1308, column: 9, scope: !3955)
!3989 = !DILocation(line: 1308, column: 21, scope: !3955)
!3990 = !DILocation(line: 1316, column: 9, scope: !3955)
!3991 = !DILocation(line: 1317, column: 5, scope: !3956)
!3992 = !DILocation(line: 1317, column: 5, scope: !3955)
!3993 = !DILocation(line: 1317, column: 17, scope: !3962)
!3994 = !DILocation(line: 1317, column: 53, scope: !3962)
!3995 = !DILocation(line: 1317, column: 59, scope: !3962)
!3996 = !DILocation(line: 1317, column: 64, scope: !3962)
!3997 = !DILocation(line: 1317, column: 16, scope: !3956)
!3998 = !DILocation(line: 1320, column: 18, scope: !3965)
!3999 = !DILocation(line: 1320, column: 27, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3965, file: !1, line: 1320, column: 9)
!4001 = !DILocation(line: 1320, column: 9, scope: !3965)
!4002 = !DILocation(line: 1321, column: 29, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 1321, column: 17)
!4004 = distinct !DILexicalBlock(scope: !4000, file: !1, line: 1320, column: 43)
!4005 = !DILocation(line: 1321, column: 41, scope: !4003)
!4006 = !DILocation(line: 1321, column: 18, scope: !4003)
!4007 = !DILocation(line: 1321, column: 56, scope: !4003)
!4008 = !DILocation(line: 1322, column: 18, scope: !4003)
!4009 = !DILocation(line: 1322, column: 21, scope: !4003)
!4010 = !DILocation(line: 1321, column: 17, scope: !4004)
!4011 = !DILocation(line: 1324, column: 52, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 1324, column: 21)
!4013 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1323, column: 13)
!4014 = !DILocation(line: 710, column: 42, scope: !2524, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 1324, column: 21, scope: !4012)
!4016 = !DILocation(line: 710, column: 51, scope: !2524, inlinedAt: !4015)
!4017 = !DILocation(line: 710, column: 85, scope: !2524, inlinedAt: !4015)
!4018 = !DILocation(line: 711, column: 5, scope: !2524, inlinedAt: !4015)
!4019 = !DILocation(line: 711, column: 15, scope: !2524, inlinedAt: !4015)
!4020 = !DILocation(line: 712, column: 9, scope: !2540, inlinedAt: !4015)
!4021 = !DILocation(line: 712, column: 42, scope: !2540, inlinedAt: !4015)
!4022 = !DILocation(line: 712, column: 9, scope: !2524, inlinedAt: !4015)
!4023 = !DILocation(line: 716, column: 13, scope: !2551, inlinedAt: !4015)
!4024 = !DILocation(line: 722, column: 1, scope: !2524, inlinedAt: !4015)
!4025 = !DILocation(line: 1324, column: 21, scope: !4013)
!4026 = !DILocation(line: 720, column: 15, scope: !2524, inlinedAt: !4015)
!4027 = !DILocation(line: 1319, column: 19, scope: !3961)
!4028 = !DILocation(line: 1326, column: 29, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 1326, column: 21)
!4030 = !DILocation(line: 1326, column: 21, scope: !4013)
!4031 = !DILocation(line: 1327, column: 39, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !1, line: 1326, column: 34)
!4033 = !{!1671, !187, i64 128}
!4034 = !DILocation(line: 1327, column: 21, scope: !4032)
!4035 = !DILocation(line: 1320, column: 39, scope: !4000)
!4036 = !DILocation(line: 1320, column: 32, scope: !4000)
!4037 = distinct !{!4037, !4001, !4038}
!4038 = !DILocation(line: 1336, column: 9, scope: !3965)
!4039 = !DILocation(line: 1321, column: 32, scope: !4003)
!4040 = !DILocation(line: 1333, column: 35, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 1332, column: 20)
!4042 = !DILocation(line: 1333, column: 17, scope: !4041)
!4043 = !DILocation(line: 1330, column: 29, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 1330, column: 21)
!4045 = !DILocation(line: 1330, column: 21, scope: !4013)
!4046 = !DILocation(line: 1337, column: 43, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 1337, column: 13)
!4048 = !DILocation(line: 0, scope: !4044)
!4049 = !DILocation(line: 1337, column: 31, scope: !4047)
!4050 = !DILocation(line: 1337, column: 35, scope: !4047)
!4051 = !DILocation(line: 1337, column: 40, scope: !4047)
!4052 = !DILocation(line: 1337, column: 52, scope: !4047)
!4053 = !DILocation(line: 1337, column: 19, scope: !4047)
!4054 = !DILocation(line: 1318, column: 20, scope: !3961)
!4055 = !DILocation(line: 1337, column: 58, scope: !4047)
!4056 = !DILocation(line: 1337, column: 13, scope: !3961)
!4057 = !DILocation(line: 1338, column: 32, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4047, file: !1, line: 1337, column: 67)
!4059 = !DILocation(line: 1338, column: 13, scope: !4058)
!4060 = !DILocation(line: 1339, column: 13, scope: !4058)
!4061 = !DILocation(line: 1341, column: 42, scope: !3961)
!4062 = !DILocation(line: 1341, column: 24, scope: !3961)
!4063 = !DILocation(line: 1341, column: 16, scope: !3961)
!4064 = !DILocation(line: 1342, column: 31, scope: !3961)
!4065 = !DILocation(line: 1342, column: 18, scope: !3961)
!4066 = !DILocation(line: 1342, column: 15, scope: !3961)
!4067 = !DILocation(line: 1343, column: 15, scope: !3961)
!4068 = !DILocation(line: 1344, column: 9, scope: !3961)
!4069 = !DILocation(line: 1345, column: 5, scope: !3962)
!4070 = !DILocation(line: 1345, column: 17, scope: !3969)
!4071 = !DILocation(line: 1345, column: 53, scope: !3969)
!4072 = !DILocation(line: 1345, column: 59, scope: !3969)
!4073 = !DILocation(line: 1345, column: 64, scope: !3969)
!4074 = !DILocation(line: 1345, column: 16, scope: !3962)
!4075 = !DILocation(line: 1346, column: 39, scope: !3968)
!4076 = !DILocation(line: 1346, column: 34, scope: !3968)
!4077 = !DILocation(line: 1348, column: 40, scope: !3968)
!4078 = !DILocation(line: 1348, column: 48, scope: !3968)
!4079 = !DILocation(line: 1348, column: 9, scope: !3968)
!4080 = !DILocation(line: 1350, column: 9, scope: !3968)
!4081 = !DILocation(line: 1351, column: 32, scope: !3968)
!4082 = !DILocation(line: 1351, column: 9, scope: !3968)
!4083 = !DILocation(line: 1353, column: 9, scope: !3968)
!4084 = !DILocation(line: 1354, column: 32, scope: !3968)
!4085 = !DILocation(line: 1354, column: 9, scope: !3968)
!4086 = !DILocation(line: 1356, column: 9, scope: !3968)
!4087 = !DILocation(line: 1357, column: 32, scope: !3968)
!4088 = !DILocation(line: 1357, column: 9, scope: !3968)
!4089 = !DILocation(line: 1359, column: 9, scope: !3968)
!4090 = !DILocation(line: 1360, column: 32, scope: !3968)
!4091 = !DILocation(line: 1360, column: 9, scope: !3968)
!4092 = !DILocation(line: 1362, column: 9, scope: !3968)
!4093 = !DILocation(line: 1363, column: 32, scope: !3968)
!4094 = !DILocation(line: 1363, column: 9, scope: !3968)
!4095 = !DILocation(line: 1365, column: 9, scope: !3968)
!4096 = !DILocation(line: 1366, column: 32, scope: !3968)
!4097 = !DILocation(line: 1366, column: 9, scope: !3968)
!4098 = !DILocation(line: 1368, column: 9, scope: !3968)
!4099 = !DILocation(line: 1369, column: 32, scope: !3968)
!4100 = !DILocation(line: 1369, column: 9, scope: !3968)
!4101 = !DILocation(line: 1371, column: 9, scope: !3968)
!4102 = !DILocation(line: 1372, column: 32, scope: !3968)
!4103 = !DILocation(line: 1372, column: 9, scope: !3968)
!4104 = !DILocation(line: 1374, column: 21, scope: !3971)
!4105 = !DILocation(line: 1374, column: 36, scope: !3974)
!4106 = !DILocation(line: 1374, column: 30, scope: !3974)
!4107 = !DILocation(line: 1374, column: 9, scope: !3971)
!4108 = !DILocation(line: 951, column: 15, scope: !3111, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1438, column: 9, scope: !3968)
!4110 = !DILocation(line: 1387, column: 9, scope: !3968)
!4111 = !DILocation(line: 1388, column: 32, scope: !3968)
!4112 = !DILocation(line: 1388, column: 9, scope: !3968)
!4113 = !DILocation(line: 1390, column: 9, scope: !3968)
!4114 = !DILocation(line: 1391, column: 32, scope: !3968)
!4115 = !DILocation(line: 1391, column: 9, scope: !3968)
!4116 = !DILocation(line: 1393, column: 9, scope: !3968)
!4117 = !DILocation(line: 1394, column: 32, scope: !3968)
!4118 = !DILocation(line: 1394, column: 9, scope: !3968)
!4119 = !DILocation(line: 1396, column: 9, scope: !3968)
!4120 = !DILocation(line: 1397, column: 32, scope: !3968)
!4121 = !DILocation(line: 1397, column: 9, scope: !3968)
!4122 = !DILocation(line: 1399, column: 9, scope: !3968)
!4123 = !DILocation(line: 1400, column: 30, scope: !3968)
!4124 = !DILocation(line: 1400, column: 26, scope: !3968)
!4125 = !DILocation(line: 1400, column: 9, scope: !3968)
!4126 = !DILocation(line: 1402, column: 9, scope: !3968)
!4127 = !DILocation(line: 1403, column: 30, scope: !3968)
!4128 = !DILocation(line: 1403, column: 26, scope: !3968)
!4129 = !DILocation(line: 1403, column: 9, scope: !3968)
!4130 = !DILocation(line: 1405, column: 9, scope: !3968)
!4131 = !DILocation(line: 1406, column: 53, scope: !3968)
!4132 = !DILocation(line: 1406, column: 9, scope: !3968)
!4133 = !DILocation(line: 1408, column: 9, scope: !3968)
!4134 = !DILocation(line: 1409, column: 53, scope: !3968)
!4135 = !DILocation(line: 1409, column: 9, scope: !3968)
!4136 = !DILocation(line: 1411, column: 9, scope: !3968)
!4137 = !DILocation(line: 1412, column: 53, scope: !3968)
!4138 = !DILocation(line: 1412, column: 9, scope: !3968)
!4139 = !DILocation(line: 1414, column: 9, scope: !3968)
!4140 = !DILocation(line: 1415, column: 30, scope: !3968)
!4141 = !DILocation(line: 1415, column: 26, scope: !3968)
!4142 = !DILocation(line: 1415, column: 9, scope: !3968)
!4143 = !DILocation(line: 1417, column: 9, scope: !3968)
!4144 = !DILocation(line: 1418, column: 32, scope: !3968)
!4145 = !DILocation(line: 1418, column: 9, scope: !3968)
!4146 = !DILocation(line: 1420, column: 9, scope: !3968)
!4147 = !DILocation(line: 1421, column: 30, scope: !3968)
!4148 = !DILocation(line: 1421, column: 26, scope: !3968)
!4149 = !DILocation(line: 1421, column: 9, scope: !3968)
!4150 = !DILocation(line: 1423, column: 9, scope: !3968)
!4151 = !DILocation(line: 1424, column: 32, scope: !3968)
!4152 = !DILocation(line: 1424, column: 9, scope: !3968)
!4153 = !DILocation(line: 1426, column: 9, scope: !3968)
!4154 = !DILocation(line: 1427, column: 30, scope: !3968)
!4155 = !DILocation(line: 1427, column: 26, scope: !3968)
!4156 = !DILocation(line: 1427, column: 9, scope: !3968)
!4157 = !DILocation(line: 1429, column: 9, scope: !3968)
!4158 = !DILocation(line: 1430, column: 32, scope: !3968)
!4159 = !DILocation(line: 1430, column: 9, scope: !3968)
!4160 = !DILocation(line: 1432, column: 9, scope: !3968)
!4161 = !DILocation(line: 1433, column: 30, scope: !3968)
!4162 = !DILocation(line: 1433, column: 26, scope: !3968)
!4163 = !DILocation(line: 1433, column: 9, scope: !3968)
!4164 = !DILocation(line: 1435, column: 9, scope: !3968)
!4165 = !DILocation(line: 1436, column: 32, scope: !3968)
!4166 = !DILocation(line: 1436, column: 9, scope: !3968)
!4167 = !DILocation(line: 950, column: 54, scope: !3111, inlinedAt: !4109)
!4168 = !DILocation(line: 951, column: 5, scope: !3111, inlinedAt: !4109)
!4169 = !DILocation(line: 952, column: 11, scope: !3111, inlinedAt: !4109)
!4170 = !DILocation(line: 952, column: 5, scope: !3111, inlinedAt: !4109)
!4171 = !DILocation(line: 1439, column: 5, scope: !3968)
!4172 = !DILocation(line: 1375, column: 13, scope: !3973)
!4173 = !DILocation(line: 1375, column: 18, scope: !3973)
!4174 = !DILocation(line: 1376, column: 57, scope: !3973)
!4175 = !DILocation(line: 1376, column: 63, scope: !3973)
!4176 = !DILocation(line: 1376, column: 13, scope: !3973)
!4177 = !DILocation(line: 1377, column: 13, scope: !3973)
!4178 = !DILocation(line: 1378, column: 13, scope: !3973)
!4179 = !DILocation(line: 1380, column: 13, scope: !3973)
!4180 = !DILocation(line: 1381, column: 36, scope: !3973)
!4181 = !DILocation(line: 1381, column: 42, scope: !3973)
!4182 = !DILocation(line: 1381, column: 13, scope: !3973)
!4183 = !DILocation(line: 1383, column: 13, scope: !3973)
!4184 = !DILocation(line: 1384, column: 36, scope: !3973)
!4185 = !DILocation(line: 1384, column: 42, scope: !3973)
!4186 = !DILocation(line: 1384, column: 13, scope: !3973)
!4187 = !DILocation(line: 1385, column: 9, scope: !3974)
!4188 = !DILocation(line: 1374, column: 46, scope: !3974)
!4189 = distinct !{!4189, !4107, !4190}
!4190 = !DILocation(line: 1385, column: 9, scope: !3971)
!4191 = !DILocation(line: 1439, column: 17, scope: !3978)
!4192 = !DILocation(line: 1439, column: 60, scope: !3978)
!4193 = !DILocation(line: 1439, column: 66, scope: !3978)
!4194 = !DILocation(line: 1439, column: 71, scope: !3978)
!4195 = !DILocation(line: 1439, column: 16, scope: !3969)
!4196 = !DILocation(line: 1445, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !3978, file: !1, line: 1439, column: 77)
!4198 = !DILocation(line: 1447, column: 5, scope: !4197)
!4199 = !DILocation(line: 1447, column: 17, scope: !3977)
!4200 = !DILocation(line: 1447, column: 54, scope: !3977)
!4201 = !DILocation(line: 1447, column: 60, scope: !3977)
!4202 = !DILocation(line: 1447, column: 65, scope: !3977)
!4203 = !DILocation(line: 1447, column: 16, scope: !3978)
!4204 = !DILocation(line: 1448, column: 22, scope: !3976)
!4205 = !DILocation(line: 1448, column: 13, scope: !3976)
!4206 = !DILocation(line: 1449, column: 9, scope: !3976)
!4207 = !DILocation(line: 1450, column: 5, scope: !3976)
!4208 = !DILocation(line: 1450, column: 17, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !3977, file: !1, line: 1450, column: 16)
!4210 = !DILocation(line: 1450, column: 53, scope: !4209)
!4211 = !DILocation(line: 1450, column: 59, scope: !4209)
!4212 = !DILocation(line: 1450, column: 64, scope: !4209)
!4213 = !DILocation(line: 1450, column: 16, scope: !3977)
!4214 = !DILocation(line: 1464, column: 28, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 1450, column: 70)
!4216 = !{!1671, !187, i64 8}
!4217 = !DILocation(line: 1464, column: 9, scope: !4215)
!4218 = !DILocation(line: 1467, column: 5, scope: !4215)
!4219 = !DILocation(line: 1468, column: 9, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4209, file: !1, line: 1467, column: 12)
