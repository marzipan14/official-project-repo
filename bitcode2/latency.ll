; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/latency.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/latency.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
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
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.latencyTimeSeries = type { i32, i32, [160 x %struct.latencySample] }
%struct.latencySample = type { i32, i32 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.latencyStats = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.sequence = type { i32, i32, %struct.sample*, double, double }
%struct.sample = type { double, i8* }

@latencyTimeSeriesDictType = dso_local global %struct.dictType { i64 (i8*)* @dictStringHash, i8* (i8*, i8*)* null, i8* (i8*, i8*)* null, i32 (i8*, i8*, i8*)* @dictStringKeyCompare, void (i8*, i8*)* @dictVanillaFree, void (i8*, i8*)* @dictVanillaFree }, align 8, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"AnonHugePages:\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.1 = private unnamed_addr constant [288 x i8] c"I'm sorry, Dave, I can't do that. Latency monitoring is disabled in this Redis instance. You may use \22CONFIG SET latency-monitor-threshold <milliseconds>.\22 in order to enable it. If we weren't in a deep space mission I'd suggest to take a look at http://redis.io/topics/latency-monitor.\0A\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"Dave, I have observed latency spikes in this Redis instance. You don't mind talking about it, do you Dave?\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"%d. %s: %d latency spikes (average %lums, mean deviation %lums, period %.2f sec). Worst all time event %lums.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"terrible\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"poor\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"excellent\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" Fork rate is %.2f GB/sec (%s).\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"rdb-unlik-temp-file\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [197 x i8] c"Dave, no latency spike was observed during the lifetime of this Redis instance, not in the slightest bit. I honestly think you ought to sit down calmly, take a stress pill, and think things over.\0A\00", align 1
@.str.25 = private unnamed_addr constant [172 x i8] c"\0AWhile there are latency events logged, I'm not able to suggest any easy fix. Please use the Redis community to get some help, providing this report in your help request.\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"\0AI have a few advices for you:\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [303 x i8] c"- If you are using a virtual machine, consider upgrading it with a faster one using an hypervisior that provides less latency during fork() calls. Xen is known to have poor fork() performance. Even in the context of the same VM provider, certain kinds of instances can execute fork faster than others.\0A\00", align 1
@.str.28 = private unnamed_addr constant [262 x i8] c"- There are latency issues with potentially slow commands you are using. Try to enable the Slow Log Redis feature using the command 'CONFIG SET slowlog-log-slower-than %llu'. If the Slow log is disabled Redis is not able to log slow commands execution for you.\0A\00", align 1
@.str.29 = private unnamed_addr constant [174 x i8] c"- Your current Slow Log configuration only logs events that are slower than your configured latency monitor threshold. Please use 'CONFIG SET slowlog-log-slower-than %llu'.\0A\00", align 1
@.str.30 = private unnamed_addr constant [174 x i8] c"- Check your Slow Log to understand what are the commands you are running which are too slow to execute. Please check http://redis.io/commands/slowlog for more information.\0A\00", align 1
@.str.31 = private unnamed_addr constant [618 x i8] c"- The system is slow to execute Redis code paths not containing system calls. This usually means the system does not provide Redis CPU time to run for long periods. You should try to:\0A  1) Lower the system load.\0A  2) Use a computer / VM just for Redis if you are running other softawre in the same system.\0A  3) Check if you have a \22noisy neighbour\22 problem.\0A  4) Check with 'redis-cli --intrinsic-latency 100' what is the intrinsic latency in your system.\0A  5) Check if the problem is allocator-related by recompiling Redis with MALLOC=libc, if you are using Jemalloc. However this may create fragmentation problems.\0A\00", align 1
@.str.32 = private unnamed_addr constant [174 x i8] c"- It is strongly advised to use local disks for persistence, especially if you are using AOF. Remote disks provided by platform-as-a-service providers are known to be slow.\0A\00", align 1
@.str.33 = private unnamed_addr constant [362 x i8] c"- SSD disks are able to reduce fsync latency, and total time needed for snapshotting and AOF log rewriting (resulting in smaller memory usage and smaller final AOF rewrite buffer flushes). With extremely high write load SSD disks can be a good option. However Redis should perform reasonably with high load using normal disks. Use this advice as a last resort.\0A\00", align 1
@.str.34 = private unnamed_addr constant [331 x i8] c"- Mounting ext3/4 filesystems with data=writeback can provide a performance boost compared to data=ordered, however this mode of operation provides less guarantees, and sometimes it can happen that after a hard crash the AOF file will have an half-written command at the end and will require to be repaired before Redis restarts.\0A\00", align 1
@.str.35 = private unnamed_addr constant [156 x i8] c"- Try to lower the disk contention. This is often caused by other disk intensive processes running in the same computer (including other Redis instances).\0A\00", align 1
@.str.36 = private unnamed_addr constant [307 x i8] c"- Assuming from the point of view of data safety this is viable in your environment, you could try to enable the 'no-appendfsync-on-rewrite' option, so that fsync will not be performed while there is a child rewriting the AOF file or producing an RDB file (the moment where there is high disk contention).\0A\00", align 1
@.str.37 = private unnamed_addr constant [156 x i8] c"- Your fsync policy is set to 'always'. It is very hard to get good performances with such a setup, if possible try to relax the fsync policy to 'onesec'.\0A\00", align 1
@.str.38 = private unnamed_addr constant [363 x i8] c"- Latency during the AOF atomic rename operation or when the final difference is flushed to the AOF file at the end of the rewrite, sometimes is caused by very high write load, causing the AOF buffer to get very large. If possible try to send less commands to accomplish the same work, or use Lua scripts to group multiple operations into a single EVALSHA call.\0A\00", align 1
@.str.39 = private unnamed_addr constant [148 x i8] c"- In order to make the Redis keys expiring process more incremental, try to set the 'hz' configuration parameter to 100 using 'CONFIG SET hz 100'.\0A\00", align 1
@.str.40 = private unnamed_addr constant [240 x i8] c"- Deleting, expiring or evicting (because of maxmemory policy) large objects is a blocking operation. If you have very large objects that are often deleted, expired, or evicted, try to fragment those objects into multiple smaller objects.\0A\00", align 1
@.str.41 = private unnamed_addr constant [295 x i8] c"- Sudden changes to the 'maxmemory' setting via 'CONFIG SET', or allocation of large objects via sets or sorted sets intersections, STORE option of SORT, Redis Cluster large keys migrations (RESTORE command), may create sudden memory pressure forcing the server to block trying to evict keys. \0A\00", align 1
@.str.42 = private unnamed_addr constant [530 x i8] c"- I detected a non zero amount of anonymous huge pages used by your process. This creates very serious latency events in different conditions, especially when Redis is persisting on disk. To disable THP support use the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled', make sure to also add it into /etc/rc.local so that the command will be executed again after a reboot. Note that even if you have already disabled THP, you still need to restart the Redis process to get rid of the huge pages already created.\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"%s - high %lu ms, low %lu ms (all time high %lu ms)\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [73 x i8] c"DOCTOR              -- Returns a human readable latency analysis report.\00", align 1
@.str.50 = private unnamed_addr constant [75 x i8] c"GRAPH   <event>     -- Returns an ASCII latency graph for the event class.\00", align 1
@.str.51 = private unnamed_addr constant [73 x i8] c"HISTORY <event>     -- Returns time-latency samples for the event class.\00", align 1
@.str.52 = private unnamed_addr constant [74 x i8] c"LATEST              -- Returns the latest latency samples for all events.\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"RESET   [event ...] -- Resets latency data of one or more event classes.\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"                       (default: reset all data for all event classes)\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"HELP                -- Prints this help.\00", align 1
@latencyCommand.help = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i8* null], align 16
@.str.56 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"No samples available for event '%s'\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @dictStringKeyCompare(i8* nocapture readnone, i8*, i8*) #0 !dbg !90 {
  %4 = tail call i32 @strcmp(i8* %1, i8* %2) #5, !dbg !98
  %5 = icmp eq i32 %4, 0, !dbg !99
  %6 = zext i1 %5 to i32, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret i32 %6, !dbg !100
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @dictStringHash(i8*) #0 !dbg !101 {
  %2 = tail call i64 @strlen(i8* %0) #5, !dbg !105
  %3 = trunc i64 %2 to i32, !dbg !105
  %4 = tail call i64 @dictGenHashFunction(i8* %0, i32 %3) #5, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  ret i64 %4, !dbg !107
}

; Function Attrs: noredzone
declare dso_local i64 @dictGenHashFunction(i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @dictVanillaFree(i8*, i8*) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @THPGetAnonHugePagesSize() local_unnamed_addr #0 !dbg !108 {
  %1 = tail call i64 @zmalloc_get_smap_bytes_by_field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 -1) #5, !dbg !111
  %2 = trunc i64 %1 to i32, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  ret i32 %2, !dbg !112
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_get_smap_bytes_by_field(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyMonitorInit() local_unnamed_addr #0 !dbg !113 {
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @latencyTimeSeriesDictType, i8* null) #5, !dbg !116
  store %struct.dict* %1, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !117, !tbaa !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  ret void, !dbg !130
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyAddSample(i8*, i64) local_unnamed_addr #0 !dbg !131 {
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !163, !tbaa !118
  %4 = tail call i8* @dictFetchValue(%struct.dict* %3, i8* %0) #5, !dbg !164
  %5 = tail call i64 @time(i64* null) #5, !dbg !166
  %6 = icmp eq i8* %4, null, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br i1 %6, label %10, label %7, !dbg !170

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !171
  %9 = bitcast i8* %8 to i32*, !dbg !171
  br label %20, !dbg !170

; <label>:10:                                     ; preds = %2
  %11 = tail call i8* @zmalloc(i64 1288) #5, !dbg !173
  %12 = bitcast i8* %11 to i32*, !dbg !175
  store i32 0, i32* %12, align 4, !dbg !176, !tbaa !177
  %13 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !179
  %14 = bitcast i8* %13 to i32*, !dbg !179
  store i32 0, i32* %14, align 4, !dbg !180, !tbaa !181
  %15 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !182
  %16 = tail call i8* @memset(i8* nonnull %15, i32 0, i64 1280) #5, !dbg !183
  %17 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !184, !tbaa !118
  %18 = tail call i8* @zstrdup(i8* %0) #5, !dbg !185
  %19 = tail call i32 @dictAdd(%struct.dict* %17, i8* %18, i8* %11) #5, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br label %20, !dbg !187

; <label>:20:                                     ; preds = %7, %10
  %21 = phi i32* [ %9, %7 ], [ %14, %10 ], !dbg !171
  %22 = phi i8* [ %4, %7 ], [ %11, %10 ]
  %23 = bitcast i8* %22 to %struct.latencyTimeSeries*, !dbg !188
  %24 = load i32, i32* %21, align 4, !dbg !171, !tbaa !181
  %25 = zext i32 %24 to i64, !dbg !189
  %26 = icmp slt i64 %25, %1, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %26, label %27, label %29, !dbg !191

; <label>:27:                                     ; preds = %20
  %28 = trunc i64 %1 to i32, !dbg !192
  store i32 %28, i32* %21, align 4, !dbg !193, !tbaa !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br label %29, !dbg !194

; <label>:29:                                     ; preds = %27, %20
  %30 = bitcast i8* %22 to i32*, !dbg !195
  %31 = load i32, i32* %30, align 4, !dbg !195, !tbaa !177
  %32 = add nsw i32 %31, 159, !dbg !196
  %33 = srem i32 %32, 160, !dbg !197
  %34 = sext i32 %33 to i64, !dbg !199
  %35 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i64 0, i32 2, i64 %34, i32 0, !dbg !201
  %36 = load i32, i32* %35, align 4, !dbg !201, !tbaa !202
  %37 = sext i32 %36 to i64, !dbg !199
  %38 = icmp eq i64 %5, %37, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %38, label %39, label %46, !dbg !205

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i64 0, i32 2, i64 %34, i32 1, !dbg !206
  %41 = load i32, i32* %40, align 4, !dbg !206, !tbaa !209
  %42 = zext i32 %41 to i64, !dbg !210
  %43 = icmp slt i64 %42, %1, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %43, label %44, label %57, !dbg !212

; <label>:44:                                     ; preds = %39
  %45 = trunc i64 %1 to i32, !dbg !213
  store i32 %45, i32* %40, align 4, !dbg !214, !tbaa !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br label %57, !dbg !215

; <label>:46:                                     ; preds = %29
  %47 = tail call i64 @time(i64* null) #5, !dbg !216
  %48 = trunc i64 %47 to i32, !dbg !216
  %49 = load i32, i32* %30, align 4, !dbg !217, !tbaa !177
  %50 = sext i32 %49 to i64, !dbg !218
  %51 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i64 0, i32 2, i64 %50, i32 0, !dbg !219
  store i32 %48, i32* %51, align 4, !dbg !220, !tbaa !202
  %52 = trunc i64 %1 to i32, !dbg !221
  %53 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i64 0, i32 2, i64 %50, i32 1, !dbg !222
  store i32 %52, i32* %53, align 4, !dbg !223, !tbaa !209
  %54 = add nsw i32 %49, 1, !dbg !224
  store i32 %54, i32* %30, align 4, !dbg !224, !tbaa !177
  %55 = icmp eq i32 %54, 160, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %55, label %56, label %57, !dbg !227

; <label>:56:                                     ; preds = %46
  store i32 0, i32* %30, align 4, !dbg !228, !tbaa !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br label %57, !dbg !229

; <label>:57:                                     ; preds = %46, %56, %39, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  ret void, !dbg !231
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zstrdup(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @latencyResetEvent(i8* readonly) local_unnamed_addr #0 !dbg !232 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !290, !tbaa !118
  %3 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %2) #5, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  %4 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %3) #5, !dbg !294
  %5 = icmp eq %struct.dictEntry* %4, null, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %5, label %24, label %6, !dbg !293

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i8* %0, null
  br label %8, !dbg !293

; <label>:8:                                      ; preds = %6, %20
  %9 = phi %struct.dictEntry* [ %4, %6 ], [ %22, %20 ]
  %10 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 0, !dbg !297
  %12 = load i8*, i8** %11, align 8, !dbg !297, !tbaa !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %7, label %16, label %13, !dbg !301

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @strcasecmp(i8* %12, i8* nonnull %0) #6, !dbg !303
  %15 = icmp eq i32 %14, 0, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %15, label %16, label %20, !dbg !305

; <label>:16:                                     ; preds = %13, %8
  %17 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !306, !tbaa !118
  %18 = tail call i32 @dictDelete(%struct.dict* %17, i8* %12) #5, !dbg !308
  %19 = add nsw i32 %10, 1, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br label %20, !dbg !310

; <label>:20:                                     ; preds = %16, %13
  %21 = phi i32 [ %19, %16 ], [ %10, %13 ], !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  %22 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %3) #5, !dbg !294
  %23 = icmp eq %struct.dictEntry* %22, null, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %23, label %24, label %8, !dbg !293, !llvm.loop !312

; <label>:24:                                     ; preds = %20, %1
  %25 = phi i32 [ 0, %1 ], [ %21, %20 ], !dbg !314
  tail call void @dictReleaseIterator(%struct.dictIterator* %3) #5, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  ret i32 %25, !dbg !316
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @analyzeLatencyForEvent(i8*, %struct.latencyStats* nocapture) local_unnamed_addr #0 !dbg !317 {
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !342, !tbaa !118
  %4 = tail call i8* @dictFetchValue(%struct.dict* %3, i8* %0) #5, !dbg !343
  %5 = icmp ne i8* %4, null, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %5, label %6, label %10, !dbg !344

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !346
  %8 = bitcast i8* %7 to i32*, !dbg !346
  %9 = load i32, i32* %8, align 4, !dbg !346, !tbaa !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br label %10, !dbg !344

; <label>:10:                                     ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ], !dbg !344
  %12 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 0, !dbg !347
  store i32 %11, i32* %12, align 8, !dbg !348, !tbaa !349
  %13 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 1, !dbg !351
  %14 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 2, !dbg !352
  %15 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 3, !dbg !353
  %16 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 4, !dbg !354
  %17 = bitcast i32* %13 to <4 x i32>*, !dbg !355
  store <4 x i32> zeroinitializer, <4 x i32>* %17, align 4, !dbg !355, !tbaa !356
  %18 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 5, !dbg !357
  store i32 0, i32* %18, align 4, !dbg !358, !tbaa !359
  %19 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 6, !dbg !360
  store i64 0, i64* %19, align 8, !dbg !361, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %5, label %20, label %109, !dbg !363

; <label>:20:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %21 = getelementptr inbounds i8, i8* %4, i64 8
  %22 = bitcast i8* %21 to [160 x %struct.latencySample]*
  br label %23, !dbg !368

; <label>:23:                                     ; preds = %58, %20
  %24 = phi i64 [ 0, %20 ], [ %59, %58 ]
  %25 = phi i32 [ 0, %20 ], [ %60, %58 ]
  %26 = phi i32 [ 0, %20 ], [ %61, %58 ]
  %27 = phi i32 [ 0, %20 ], [ %62, %58 ]
  %28 = phi i64 [ 0, %20 ], [ %64, %58 ]
  %29 = phi i64 [ 0, %20 ], [ %63, %58 ]
  %30 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %28, i32 0, !dbg !370
  %31 = load i32, i32* %30, align 4, !dbg !370, !tbaa !202
  %32 = icmp eq i32 %31, 0, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %32, label %58, label %33, !dbg !375

; <label>:33:                                     ; preds = %23
  %34 = add i32 %27, 1, !dbg !376
  store i32 %34, i32* %18, align 4, !dbg !376, !tbaa !359
  %35 = icmp eq i32 %27, 0, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %36 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %28, i32 1, !dbg !380
  %37 = load i32, i32* %36, align 4, !dbg !380, !tbaa !209
  br i1 %35, label %38, label %39, !dbg !379

; <label>:38:                                     ; preds = %33
  store i32 %37, i32* %15, align 4, !dbg !383, !tbaa !385
  store i32 %37, i32* %14, align 8, !dbg !386, !tbaa !387
  br label %46, !dbg !388

; <label>:39:                                     ; preds = %33
  %40 = icmp ugt i32 %26, %37, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %40, label %41, label %42, !dbg !390

; <label>:41:                                     ; preds = %39
  store i32 %37, i32* %14, align 8, !dbg !391, !tbaa !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br label %42, !dbg !392

; <label>:42:                                     ; preds = %41, %39
  %43 = phi i32 [ %37, %41 ], [ %26, %39 ]
  %44 = icmp ult i32 %25, %37, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %44, label %45, label %48, !dbg !395

; <label>:45:                                     ; preds = %42
  store i32 %37, i32* %15, align 4, !dbg !396, !tbaa !385
  br label %46, !dbg !397

; <label>:46:                                     ; preds = %38, %45
  %47 = phi i32 [ %37, %38 ], [ %43, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %48, !dbg !399

; <label>:48:                                     ; preds = %46, %42
  %49 = phi i32 [ %25, %42 ], [ %37, %46 ]
  %50 = phi i32 [ %43, %42 ], [ %47, %46 ]
  %51 = zext i32 %37 to i64, !dbg !399
  %52 = add i64 %29, %51, !dbg !400
  %53 = icmp eq i64 %24, 0, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  %54 = sext i32 %31 to i64, !dbg !404
  br i1 %53, label %57, label %55, !dbg !403

; <label>:55:                                     ; preds = %48
  %56 = icmp sgt i64 %24, %54, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %56, label %57, label %58, !dbg !406

; <label>:57:                                     ; preds = %48, %55
  store i64 %54, i64* %19, align 8, !dbg !407, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br label %58, !dbg !408

; <label>:58:                                     ; preds = %55, %57, %23
  %59 = phi i64 [ %24, %23 ], [ %54, %57 ], [ %24, %55 ]
  %60 = phi i32 [ %25, %23 ], [ %49, %57 ], [ %49, %55 ]
  %61 = phi i32 [ %26, %23 ], [ %50, %57 ], [ %50, %55 ]
  %62 = phi i32 [ %27, %23 ], [ %34, %57 ], [ %34, %55 ]
  %63 = phi i64 [ %29, %23 ], [ %52, %57 ], [ %52, %55 ], !dbg !409
  %64 = add nuw nsw i64 %28, 1, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  %65 = icmp eq i64 %64, 160, !dbg !412
  br i1 %65, label %66, label %23, !dbg !368, !llvm.loop !413

; <label>:66:                                     ; preds = %58
  %67 = icmp eq i32 %62, 0, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %67, label %77, label %68, !dbg !417

; <label>:68:                                     ; preds = %66
  %69 = zext i32 %62 to i64, !dbg !418
  %70 = udiv i64 %63, %69, !dbg !420
  %71 = trunc i64 %70 to i32, !dbg !421
  store i32 %71, i32* %13, align 4, !dbg !422, !tbaa !423
  %72 = tail call i64 @time(i64* null) #5, !dbg !424
  %73 = load i64, i64* %19, align 8, !dbg !425, !tbaa !362
  %74 = sub nsw i64 %72, %73, !dbg !426
  store i64 %74, i64* %19, align 8, !dbg !427, !tbaa !362
  %75 = icmp eq i64 %74, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %75, label %76, label %77, !dbg !430

; <label>:76:                                     ; preds = %68
  store i64 1, i64* %19, align 8, !dbg !431, !tbaa !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br label %77, !dbg !432

; <label>:77:                                     ; preds = %66, %68, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br label %78, !dbg !434

; <label>:78:                                     ; preds = %97, %77
  %79 = phi i64 [ 0, %77 ], [ %99, %97 ]
  %80 = phi i64 [ 0, %77 ], [ %98, %97 ]
  %81 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %79, i32 0, !dbg !435
  %82 = load i32, i32* %81, align 4, !dbg !435, !tbaa !202
  %83 = icmp eq i32 %82, 0, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %83, label %97, label %84, !dbg !438

; <label>:84:                                     ; preds = %78
  %85 = load i32, i32* %13, align 4, !dbg !439, !tbaa !423
  %86 = zext i32 %85 to i64, !dbg !440
  %87 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %79, i32 1, !dbg !441
  %88 = load i32, i32* %87, align 4, !dbg !441, !tbaa !209
  %89 = zext i32 %88 to i64, !dbg !442
  %90 = sub nsw i64 %86, %89, !dbg !443
  %91 = icmp slt i64 %90, 0, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %91, label %92, label %94, !dbg !447

; <label>:92:                                     ; preds = %84
  %93 = sub nsw i64 0, %90, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br label %94, !dbg !449

; <label>:94:                                     ; preds = %92, %84
  %95 = phi i64 [ %93, %92 ], [ %90, %84 ], !dbg !450
  %96 = add i64 %95, %80, !dbg !451
  br label %97, !dbg !452

; <label>:97:                                     ; preds = %78, %94
  %98 = phi i64 [ %96, %94 ], [ %80, %78 ], !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  %99 = add nuw nsw i64 %79, 1, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  %100 = icmp eq i64 %99, 160, !dbg !456
  br i1 %100, label %101, label %78, !dbg !434, !llvm.loop !457

; <label>:101:                                    ; preds = %97
  %102 = load i32, i32* %18, align 4, !dbg !459, !tbaa !359
  %103 = icmp eq i32 %102, 0, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %103, label %108, label %104, !dbg !462

; <label>:104:                                    ; preds = %101
  %105 = zext i32 %102 to i64, !dbg !463
  %106 = udiv i64 %98, %105, !dbg !464
  %107 = trunc i64 %106 to i32, !dbg !465
  store i32 %107, i32* %16, align 8, !dbg !466, !tbaa !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br label %108, !dbg !468

; <label>:108:                                    ; preds = %101, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br label %109, !dbg !469

; <label>:109:                                    ; preds = %10, %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  ret void, !dbg !469
}

; Function Attrs: noredzone nounwind
define dso_local i8* @createLatencyReport() local_unnamed_addr #0 !dbg !470 {
  %1 = alloca %struct.latencyStats, align 8
  %2 = tail call i8* @sdsempty() #5, !dbg !503
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !522, !tbaa !118
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !522
  %5 = load i64, i64* %4, align 8, !dbg !522, !tbaa !524
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !522
  %7 = load i64, i64* %6, align 8, !dbg !522, !tbaa !524
  %8 = sub i64 0, %7, !dbg !526
  %9 = icmp eq i64 %5, %8, !dbg !526
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !527
  %11 = icmp eq i64 %10, 0, !dbg !528
  %12 = and i1 %9, %11, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %12, label %13, label %15, !dbg !529

; <label>:13:                                     ; preds = %0
  %14 = tail call i8* @sdscat(i8* %2, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !530
  br label %357, !dbg !532

; <label>:15:                                     ; preds = %0
  %16 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %3) #5, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  %17 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %16) #5, !dbg !537
  %18 = icmp eq %struct.dictEntry* %17, null, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %18, label %228, label %19, !dbg !536

; <label>:19:                                     ; preds = %15
  %20 = bitcast %struct.latencyStats* %1 to i8*
  %21 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 5
  %22 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 1
  %23 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 4
  %24 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 6
  br label %25, !dbg !536

; <label>:25:                                     ; preds = %19, %207
  %26 = phi %struct.dictEntry* [ %17, %19 ], [ %226, %207 ]
  %27 = phi i8* [ %2, %19 ], [ %225, %207 ]
  %28 = phi i32 [ 0, %19 ], [ %224, %207 ]
  %29 = phi i32 [ 0, %19 ], [ %223, %207 ]
  %30 = phi i32 [ 0, %19 ], [ %222, %207 ]
  %31 = phi i32 [ 0, %19 ], [ %221, %207 ]
  %32 = phi i32 [ 0, %19 ], [ %220, %207 ]
  %33 = phi i32 [ 0, %19 ], [ %219, %207 ]
  %34 = phi i32 [ 0, %19 ], [ %218, %207 ]
  %35 = phi i32 [ 0, %19 ], [ %217, %207 ]
  %36 = phi i32 [ 0, %19 ], [ %216, %207 ]
  %37 = phi i32 [ 0, %19 ], [ %215, %207 ]
  %38 = phi i32 [ 0, %19 ], [ %214, %207 ]
  %39 = phi i32 [ 0, %19 ], [ %213, %207 ]
  %40 = phi i32 [ 0, %19 ], [ %212, %207 ]
  %41 = phi i32 [ 0, %19 ], [ %211, %207 ]
  %42 = phi i32 [ 0, %19 ], [ %210, %207 ]
  %43 = phi i32 [ 0, %19 ], [ %209, %207 ]
  %44 = phi i32 [ 0, %19 ], [ %208, %207 ]
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %26, i64 0, i32 0, !dbg !540
  %46 = load i8*, i8** %45, align 8, !dbg !540, !tbaa !298
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %26, i64 0, i32 1, i32 0, !dbg !542
  %48 = bitcast i8** %47 to %struct.latencyTimeSeries**, !dbg !542
  %49 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %48, align 8, !dbg !542, !tbaa !543
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #7, !dbg !545
  %50 = icmp eq %struct.latencyTimeSeries* %49, null, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %50, label %207, label %51, !dbg !548, !llvm.loop !549

; <label>:51:                                     ; preds = %25
  %52 = add nsw i32 %28, 1, !dbg !551
  %53 = icmp eq i32 %28, 0, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %53, label %54, label %56, !dbg !554

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @sdscat(i8* %27, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br label %56, !dbg !557

; <label>:56:                                     ; preds = %54, %51
  %57 = phi i8* [ %55, %54 ], [ %27, %51 ], !dbg !558
  call void @analyzeLatencyForEvent(i8* %46, %struct.latencyStats* nonnull %1) #8, !dbg !560
  %58 = load i32, i32* %21, align 4, !dbg !561, !tbaa !359
  %59 = load i32, i32* %22, align 4, !dbg !562, !tbaa !423
  %60 = zext i32 %59 to i64, !dbg !563
  %61 = load i32, i32* %23, align 8, !dbg !564, !tbaa !467
  %62 = zext i32 %61 to i64, !dbg !565
  %63 = load i64, i64* %24, align 8, !dbg !566, !tbaa !362
  %64 = sitofp i64 %63 to double, !dbg !567
  %65 = uitofp i32 %58 to double, !dbg !568
  %66 = fdiv double %64, %65, !dbg !569
  %67 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %49, i64 0, i32 1, !dbg !570
  %68 = load i32, i32* %67, align 4, !dbg !570, !tbaa !181
  %69 = zext i32 %68 to i64, !dbg !571
  %70 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %57, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %46, i32 %58, i64 %60, i64 %62, double %66, i64 %69) #5, !dbg !572
  %71 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !573
  %72 = icmp eq i32 %71, 0, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %72, label %73, label %90, !dbg !574

; <label>:73:                                     ; preds = %56
  %74 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 85), align 8, !dbg !575, !tbaa !577
  %75 = fcmp olt double %74, 1.000000e+01, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %75, label %76, label %78, !dbg !579

; <label>:76:                                     ; preds = %73
  %77 = add nsw i32 %31, 1, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br label %85, !dbg !582

; <label>:78:                                     ; preds = %73
  %79 = fcmp olt double %74, 2.500000e+01, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br i1 %79, label %80, label %82, !dbg !585

; <label>:80:                                     ; preds = %78
  %81 = add nsw i32 %31, 1, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br label %85, !dbg !588

; <label>:82:                                     ; preds = %78
  %83 = fcmp olt double %74, 1.000000e+02, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %84 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), !dbg !592
  br label %85, !dbg !592

; <label>:85:                                     ; preds = %82, %80, %76
  %86 = phi i32 [ %77, %76 ], [ %81, %80 ], [ %31, %82 ], !dbg !558
  %87 = phi i32 [ 1, %76 ], [ 1, %80 ], [ %29, %82 ], !dbg !558
  %88 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %76 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %80 ], [ %84, %82 ], !dbg !594
  %89 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), double %74, i8* %88) #5, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %90, !dbg !598

; <label>:90:                                     ; preds = %56, %85
  %91 = phi i32 [ %31, %56 ], [ %86, %85 ], !dbg !599
  %92 = phi i32 [ %29, %56 ], [ %87, %85 ], !dbg !599
  %93 = phi i8* [ %70, %56 ], [ %89, %85 ], !dbg !600
  %94 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !601
  %95 = icmp eq i32 %94, 0, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %95, label %96, label %112, !dbg !603

; <label>:96:                                     ; preds = %90
  %97 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 92), align 8, !dbg !604, !tbaa !607
  %98 = icmp slt i64 %97, 0, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %98, label %103, label %99, !dbg !609

; <label>:99:                                     ; preds = %96
  %100 = udiv i64 %97, 1000
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !610, !tbaa !612
  %102 = icmp sgt i64 %100, %101, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %102, label %103, label %107, !dbg !614

; <label>:103:                                    ; preds = %99, %96
  %104 = phi i32 [ %44, %96 ], [ 1, %99 ]
  %105 = phi i32 [ 1, %96 ], [ %30, %99 ]
  %106 = add nsw i32 %91, 1, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br label %107, !dbg !617

; <label>:107:                                    ; preds = %103, %99
  %108 = phi i32 [ %44, %99 ], [ %104, %103 ], !dbg !558
  %109 = phi i32 [ %91, %99 ], [ %106, %103 ], !dbg !558
  %110 = phi i32 [ %30, %99 ], [ %105, %103 ], !dbg !558
  %111 = add nsw i32 %109, 2, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %112, !dbg !618

; <label>:112:                                    ; preds = %90, %107
  %113 = phi i32 [ %44, %90 ], [ %108, %107 ], !dbg !507
  %114 = phi i32 [ %43, %90 ], [ 1, %107 ], !dbg !619
  %115 = phi i32 [ %34, %90 ], [ 1, %107 ], !dbg !619
  %116 = phi i32 [ %91, %90 ], [ %111, %107 ], !dbg !619
  %117 = phi i32 [ %30, %90 ], [ %110, %107 ], !dbg !615
  %118 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !620
  %119 = icmp eq i32 %118, 0, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %119, label %120, label %122, !dbg !622

; <label>:120:                                    ; preds = %112
  %121 = add nsw i32 %116, 1, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  br label %122, !dbg !625

; <label>:122:                                    ; preds = %112, %120
  %123 = phi i32 [ %41, %112 ], [ 1, %120 ], !dbg !626
  %124 = phi i32 [ %116, %112 ], [ %121, %120 ], !dbg !626
  %125 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !627
  %126 = icmp eq i32 %125, 0, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br i1 %126, label %127, label %129, !dbg !629

; <label>:127:                                    ; preds = %122
  %128 = add nsw i32 %124, 4, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br label %129, !dbg !632

; <label>:129:                                    ; preds = %122, %127
  %130 = phi i32 [ %42, %122 ], [ 1, %127 ], !dbg !633
  %131 = phi i32 [ %40, %122 ], [ 1, %127 ], !dbg !633
  %132 = phi i32 [ %38, %122 ], [ 1, %127 ], !dbg !633
  %133 = phi i32 [ %37, %122 ], [ 1, %127 ], !dbg !633
  %134 = phi i32 [ %124, %122 ], [ %128, %127 ], !dbg !633
  %135 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !634
  %136 = icmp eq i32 %135, 0, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %136, label %137, label %139, !dbg !636

; <label>:137:                                    ; preds = %129
  %138 = add nsw i32 %134, 3, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %139, !dbg !639

; <label>:139:                                    ; preds = %129, %137
  %140 = phi i32 [ %131, %129 ], [ 1, %137 ], !dbg !640
  %141 = phi i32 [ %39, %129 ], [ 1, %137 ], !dbg !640
  %142 = phi i32 [ %133, %129 ], [ 1, %137 ], !dbg !640
  %143 = phi i32 [ %134, %129 ], [ %138, %137 ], !dbg !640
  %144 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !641
  %145 = icmp eq i32 %144, 0, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %145, label %146, label %148, !dbg !643

; <label>:146:                                    ; preds = %139
  %147 = add nsw i32 %143, 3, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %148, !dbg !646

; <label>:148:                                    ; preds = %139, %146
  %149 = phi i32 [ %140, %139 ], [ 1, %146 ], !dbg !647
  %150 = phi i32 [ %132, %139 ], [ 1, %146 ], !dbg !647
  %151 = phi i32 [ %142, %139 ], [ 1, %146 ], !dbg !647
  %152 = phi i32 [ %143, %139 ], [ %147, %146 ], !dbg !647
  %153 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !648
  %154 = icmp eq i32 %153, 0, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %154, label %155, label %157, !dbg !650

; <label>:155:                                    ; preds = %148
  %156 = add nsw i32 %152, 1, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %157, !dbg !653

; <label>:157:                                    ; preds = %148, %155
  %158 = phi i32 [ %32, %148 ], [ 1, %155 ], !dbg !654
  %159 = phi i32 [ %152, %148 ], [ %156, %155 ], !dbg !654
  %160 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !655
  %161 = icmp eq i32 %160, 0, !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %161, label %165, label %162, !dbg !657

; <label>:162:                                    ; preds = %157
  %163 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !658
  %164 = icmp eq i32 %163, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %164, label %165, label %167, !dbg !659

; <label>:165:                                    ; preds = %162, %157
  %166 = add nsw i32 %159, 2, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br label %167, !dbg !662

; <label>:167:                                    ; preds = %162, %165
  %168 = phi i32 [ %130, %162 ], [ 1, %165 ], !dbg !663
  %169 = phi i32 [ %150, %162 ], [ 1, %165 ], !dbg !663
  %170 = phi i32 [ %159, %162 ], [ %166, %165 ], !dbg !663
  %171 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !664
  %172 = icmp eq i32 %171, 0, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %172, label %176, label %173, !dbg !666

; <label>:173:                                    ; preds = %167
  %174 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !667
  %175 = icmp eq i32 %174, 0, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %175, label %176, label %178, !dbg !668

; <label>:176:                                    ; preds = %173, %167
  %177 = add nsw i32 %170, 4, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br label %178, !dbg !671

; <label>:178:                                    ; preds = %173, %176
  %179 = phi i32 [ %149, %173 ], [ 1, %176 ], !dbg !672
  %180 = phi i32 [ %169, %173 ], [ 1, %176 ], !dbg !672
  %181 = phi i32 [ %151, %173 ], [ 1, %176 ], !dbg !672
  %182 = phi i32 [ %36, %173 ], [ 1, %176 ], !dbg !672
  %183 = phi i32 [ %170, %173 ], [ %177, %176 ], !dbg !672
  %184 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !673
  %185 = icmp eq i32 %184, 0, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %185, label %186, label %188, !dbg !675

; <label>:186:                                    ; preds = %178
  %187 = add nsw i32 %183, 2, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %188, !dbg !678

; <label>:188:                                    ; preds = %178, %186
  %189 = phi i32 [ %35, %178 ], [ 1, %186 ], !dbg !679
  %190 = phi i32 [ %115, %178 ], [ 1, %186 ], !dbg !679
  %191 = phi i32 [ %183, %178 ], [ %187, %186 ], !dbg !679
  %192 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !680
  %193 = icmp eq i32 %192, 0, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %193, label %194, label %196, !dbg !682

; <label>:194:                                    ; preds = %188
  %195 = add nsw i32 %191, 1, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br label %196, !dbg !685

; <label>:196:                                    ; preds = %188, %194
  %197 = phi i32 [ %190, %188 ], [ 1, %194 ], !dbg !686
  %198 = phi i32 [ %191, %188 ], [ %195, %194 ], !dbg !686
  %199 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !687
  %200 = icmp eq i32 %199, 0, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br i1 %200, label %201, label %203, !dbg !689

; <label>:201:                                    ; preds = %196
  %202 = add nsw i32 %198, 1, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br label %203, !dbg !692

; <label>:203:                                    ; preds = %196, %201
  %204 = phi i32 [ %33, %196 ], [ 1, %201 ], !dbg !693
  %205 = phi i32 [ %198, %196 ], [ %202, %201 ], !dbg !693
  %206 = tail call i8* @sdscatlen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1) #5, !dbg !694
  br label %207, !dbg !550

; <label>:207:                                    ; preds = %25, %203
  %208 = phi i32 [ %113, %203 ], [ %44, %25 ], !dbg !507
  %209 = phi i32 [ %114, %203 ], [ %43, %25 ], !dbg !508
  %210 = phi i32 [ %168, %203 ], [ %42, %25 ], !dbg !509
  %211 = phi i32 [ %123, %203 ], [ %41, %25 ], !dbg !510
  %212 = phi i32 [ %179, %203 ], [ %40, %25 ], !dbg !511
  %213 = phi i32 [ %141, %203 ], [ %39, %25 ], !dbg !512
  %214 = phi i32 [ %180, %203 ], [ %38, %25 ], !dbg !513
  %215 = phi i32 [ %181, %203 ], [ %37, %25 ], !dbg !514
  %216 = phi i32 [ %182, %203 ], [ %36, %25 ], !dbg !515
  %217 = phi i32 [ %189, %203 ], [ %35, %25 ], !dbg !516
  %218 = phi i32 [ %197, %203 ], [ %34, %25 ], !dbg !517
  %219 = phi i32 [ %204, %203 ], [ %33, %25 ], !dbg !518
  %220 = phi i32 [ %158, %203 ], [ %32, %25 ], !dbg !519
  %221 = phi i32 [ %205, %203 ], [ %31, %25 ], !dbg !521
  %222 = phi i32 [ %117, %203 ], [ %30, %25 ], !dbg !506
  %223 = phi i32 [ %92, %203 ], [ %29, %25 ], !dbg !505
  %224 = phi i32 [ %52, %203 ], [ %28, %25 ], !dbg !695
  %225 = phi i8* [ %206, %203 ], [ %27, %25 ], !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #7, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %226 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %16) #5, !dbg !537
  %227 = icmp eq %struct.dictEntry* %226, null, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %227, label %228, label %25, !dbg !536

; <label>:228:                                    ; preds = %207, %15
  %229 = phi i32 [ 0, %15 ], [ %208, %207 ], !dbg !507
  %230 = phi i32 [ 0, %15 ], [ %209, %207 ], !dbg !508
  %231 = phi i32 [ 0, %15 ], [ %210, %207 ], !dbg !509
  %232 = phi i32 [ 0, %15 ], [ %211, %207 ], !dbg !510
  %233 = phi i32 [ 0, %15 ], [ %212, %207 ], !dbg !511
  %234 = phi i32 [ 0, %15 ], [ %213, %207 ], !dbg !512
  %235 = phi i32 [ 0, %15 ], [ %214, %207 ], !dbg !513
  %236 = phi i32 [ 0, %15 ], [ %215, %207 ], !dbg !514
  %237 = phi i32 [ 0, %15 ], [ %216, %207 ], !dbg !515
  %238 = phi i32 [ 0, %15 ], [ %217, %207 ], !dbg !516
  %239 = phi i32 [ 0, %15 ], [ %218, %207 ], !dbg !517
  %240 = phi i32 [ 0, %15 ], [ %219, %207 ], !dbg !518
  %241 = phi i32 [ 0, %15 ], [ %220, %207 ], !dbg !519
  %242 = phi i32 [ 0, %15 ], [ %221, %207 ], !dbg !521
  %243 = phi i32 [ 0, %15 ], [ %222, %207 ], !dbg !506
  %244 = phi i32 [ 0, %15 ], [ %223, %207 ], !dbg !505
  %245 = phi i32 [ 0, %15 ], [ %224, %207 ], !dbg !533
  %246 = phi i8* [ %2, %15 ], [ %225, %207 ], !dbg !504
  tail call void @dictReleaseIterator(%struct.dictIterator* %16) #5, !dbg !697
  %247 = tail call i64 @zmalloc_get_smap_bytes_by_field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 -1) #5, !dbg !698
  %248 = trunc i64 %247 to i32, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  %249 = icmp sgt i32 %248, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %249, label %250, label %252, !dbg !703

; <label>:250:                                    ; preds = %228
  %251 = add nsw i32 %242, 1, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %252, !dbg !706

; <label>:252:                                    ; preds = %250, %228
  %253 = phi i32 [ 1, %250 ], [ 0, %228 ], !dbg !558
  %254 = phi i32 [ %251, %250 ], [ %242, %228 ], !dbg !558
  %255 = or i32 %254, %245, !dbg !707
  %256 = icmp eq i32 %255, 0, !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %256, label %257, label %259, !dbg !707

; <label>:257:                                    ; preds = %252
  %258 = tail call i8* @sdscat(i8* %246, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.24, i64 0, i64 0)) #5, !dbg !709
  br label %355, !dbg !711

; <label>:259:                                    ; preds = %252
  %260 = icmp eq i32 %254, 0, !dbg !712
  %261 = icmp sgt i32 %245, 0, !dbg !713
  %262 = and i1 %261, %260, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br i1 %262, label %263, label %265, !dbg !715

; <label>:263:                                    ; preds = %259
  %264 = tail call i8* @sdscat(i8* %246, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !716
  br label %355, !dbg !718

; <label>:265:                                    ; preds = %259
  %266 = tail call i8* @sdscat(i8* %246, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !719
  %267 = icmp eq i32 %244, 0, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %267, label %270, label %268, !dbg !723

; <label>:268:                                    ; preds = %265
  %269 = tail call i8* @sdscat(i8* %266, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br label %270, !dbg !726

; <label>:270:                                    ; preds = %265, %268
  %271 = phi i8* [ %269, %268 ], [ %266, %265 ], !dbg !727
  %272 = icmp eq i32 %243, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %272, label %277, label %273, !dbg !730

; <label>:273:                                    ; preds = %270
  %274 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !731, !tbaa !612
  %275 = mul i64 %274, 1000, !dbg !733
  %276 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %271, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.28, i64 0, i64 0), i64 %275) #5, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br label %277, !dbg !735

; <label>:277:                                    ; preds = %270, %273
  %278 = phi i8* [ %276, %273 ], [ %271, %270 ], !dbg !736
  %279 = icmp eq i32 %229, 0, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %279, label %284, label %280, !dbg !739

; <label>:280:                                    ; preds = %277
  %281 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !740, !tbaa !612
  %282 = mul i64 %281, 1000, !dbg !742
  %283 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %278, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.29, i64 0, i64 0), i64 %282) #5, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br label %284, !dbg !744

; <label>:284:                                    ; preds = %277, %280
  %285 = phi i8* [ %283, %280 ], [ %278, %277 ], !dbg !745
  %286 = icmp eq i32 %230, 0, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br i1 %286, label %289, label %287, !dbg !748

; <label>:287:                                    ; preds = %284
  %288 = tail call i8* @sdscat(i8* %285, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br label %289, !dbg !751

; <label>:289:                                    ; preds = %284, %287
  %290 = phi i8* [ %288, %287 ], [ %285, %284 ], !dbg !752
  %291 = icmp eq i32 %232, 0, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br i1 %291, label %294, label %292, !dbg !755

; <label>:292:                                    ; preds = %289
  %293 = tail call i8* @sdscat(i8* %290, i8* getelementptr inbounds ([618 x i8], [618 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  br label %294, !dbg !758

; <label>:294:                                    ; preds = %289, %292
  %295 = phi i8* [ %293, %292 ], [ %290, %289 ], !dbg !759
  %296 = icmp eq i32 %235, 0, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br i1 %296, label %299, label %297, !dbg !762

; <label>:297:                                    ; preds = %294
  %298 = tail call i8* @sdscat(i8* %295, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.32, i64 0, i64 0)) #5, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br label %299, !dbg !765

; <label>:299:                                    ; preds = %294, %297
  %300 = phi i8* [ %298, %297 ], [ %295, %294 ], !dbg !766
  %301 = icmp eq i32 %236, 0, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %301, label %304, label %302, !dbg !769

; <label>:302:                                    ; preds = %299
  %303 = tail call i8* @sdscat(i8* %300, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br label %304, !dbg !772

; <label>:304:                                    ; preds = %299, %302
  %305 = phi i8* [ %303, %302 ], [ %300, %299 ], !dbg !773
  %306 = icmp eq i32 %233, 0, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %306, label %309, label %307, !dbg !776

; <label>:307:                                    ; preds = %304
  %308 = tail call i8* @sdscat(i8* %305, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br label %309, !dbg !779

; <label>:309:                                    ; preds = %304, %307
  %310 = phi i8* [ %308, %307 ], [ %305, %304 ], !dbg !780
  %311 = icmp eq i32 %231, 0, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %311, label %314, label %312, !dbg !783

; <label>:312:                                    ; preds = %309
  %313 = tail call i8* @sdscat(i8* %310, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.35, i64 0, i64 0)) #5, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br label %314, !dbg !786

; <label>:314:                                    ; preds = %309, %312
  %315 = phi i8* [ %313, %312 ], [ %310, %309 ], !dbg !787
  %316 = icmp eq i32 %234, 0, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %316, label %319, label %317, !dbg !790

; <label>:317:                                    ; preds = %314
  %318 = tail call i8* @sdscat(i8* %315, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br label %319, !dbg !793

; <label>:319:                                    ; preds = %314, %317
  %320 = phi i8* [ %318, %317 ], [ %315, %314 ], !dbg !794
  %321 = icmp ne i32 %241, 0, !dbg !795
  %322 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !797
  %323 = icmp eq i32 %322, 1, !dbg !798
  %324 = and i1 %321, %323, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %324, label %325, label %327, !dbg !799

; <label>:325:                                    ; preds = %319
  %326 = tail call i8* @sdscat(i8* %320, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.37, i64 0, i64 0)) #5, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br label %327, !dbg !802

; <label>:327:                                    ; preds = %325, %319
  %328 = phi i8* [ %326, %325 ], [ %320, %319 ], !dbg !803
  %329 = icmp eq i32 %237, 0, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %329, label %332, label %330, !dbg !806

; <label>:330:                                    ; preds = %327
  %331 = tail call i8* @sdscat(i8* %328, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.38, i64 0, i64 0)) #5, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br label %332, !dbg !809

; <label>:332:                                    ; preds = %327, %330
  %333 = phi i8* [ %331, %330 ], [ %328, %327 ], !dbg !810
  %334 = icmp ne i32 %238, 0, !dbg !811
  %335 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !813
  %336 = icmp slt i32 %335, 100, !dbg !814
  %337 = and i1 %334, %336, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  br i1 %337, label %338, label %340, !dbg !815

; <label>:338:                                    ; preds = %332
  %339 = tail call i8* @sdscat(i8* %333, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.39, i64 0, i64 0)) #5, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  br label %340, !dbg !818

; <label>:340:                                    ; preds = %338, %332
  %341 = phi i8* [ %339, %338 ], [ %333, %332 ], !dbg !819
  %342 = icmp eq i32 %239, 0, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %342, label %345, label %343, !dbg !822

; <label>:343:                                    ; preds = %340
  %344 = tail call i8* @sdscat(i8* %341, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br label %345, !dbg !825

; <label>:345:                                    ; preds = %340, %343
  %346 = phi i8* [ %344, %343 ], [ %341, %340 ], !dbg !826
  %347 = icmp eq i32 %240, 0, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %347, label %350, label %348, !dbg !829

; <label>:348:                                    ; preds = %345
  %349 = tail call i8* @sdscat(i8* %346, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.41, i64 0, i64 0)) #5, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br label %350, !dbg !832

; <label>:350:                                    ; preds = %345, %348
  %351 = phi i8* [ %349, %348 ], [ %346, %345 ], !dbg !833
  %352 = icmp eq i32 %253, 0, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %352, label %357, label %353, !dbg !836

; <label>:353:                                    ; preds = %350
  %354 = tail call i8* @sdscat(i8* %351, i8* getelementptr inbounds ([530 x i8], [530 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !837
  br label %355, !dbg !839

; <label>:355:                                    ; preds = %257, %353, %263
  %356 = phi i8* [ %354, %353 ], [ %264, %263 ], [ %258, %257 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  br label %357

; <label>:357:                                    ; preds = %350, %355, %13
  %358 = phi i8* [ %14, %13 ], [ %351, %350 ], [ %356, %355 ], !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  ret i8* %358, !dbg !841
}

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyCommandReplyWithSamples(%struct.client*, %struct.latencyTimeSeries* nocapture readonly) local_unnamed_addr #0 !dbg !842 {
  %3 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #5, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %4 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 0
  br label %5, !dbg !1035

; <label>:5:                                      ; preds = %22, %2
  %6 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %7 = phi i32 [ 0, %2 ], [ %24, %22 ]
  %8 = load i32, i32* %4, align 4, !dbg !1036, !tbaa !177
  %9 = add nsw i32 %8, %7, !dbg !1037
  %10 = srem i32 %9, 160, !dbg !1038
  %11 = sext i32 %10 to i64, !dbg !1040
  %12 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %11, i32 0, !dbg !1042
  %13 = load i32, i32* %12, align 4, !dbg !1042, !tbaa !202
  %14 = icmp eq i32 %13, 0, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %14, label %22, label %15, !dbg !1044

; <label>:15:                                     ; preds = %5
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #5, !dbg !1045
  %16 = load i32, i32* %12, align 4, !dbg !1046, !tbaa !202
  %17 = sext i32 %16 to i64, !dbg !1047
  tail call void @addReplyLongLong(%struct.client* %0, i64 %17) #5, !dbg !1048
  %18 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %11, i32 1, !dbg !1049
  %19 = load i32, i32* %18, align 4, !dbg !1049, !tbaa !209
  %20 = zext i32 %19 to i64, !dbg !1050
  tail call void @addReplyLongLong(%struct.client* %0, i64 %20) #5, !dbg !1051
  %21 = add nsw i32 %6, 1, !dbg !1052
  br label %22, !dbg !1053

; <label>:22:                                     ; preds = %5, %15
  %23 = phi i32 [ %21, %15 ], [ %6, %5 ], !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  %24 = add nuw nsw i32 %7, 1, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  %25 = icmp eq i32 %24, 160, !dbg !1058
  br i1 %25, label %26, label %5, !dbg !1035, !llvm.loop !1059

; <label>:26:                                     ; preds = %22
  %27 = sext i32 %23 to i64, !dbg !1061
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %3, i64 %27) #5, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  ret void, !dbg !1063
}

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyCommandReplyWithLatestEvents(%struct.client*) local_unnamed_addr #0 !dbg !1064 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1074, !tbaa !118
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 0, i32 3, !dbg !1074
  %4 = load i64, i64* %3, align 8, !dbg !1074, !tbaa !524
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 1, i32 3, !dbg !1074
  %6 = load i64, i64* %5, align 8, !dbg !1074, !tbaa !524
  %7 = add i64 %6, %4, !dbg !1074
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 %7) #5, !dbg !1075
  %8 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1076, !tbaa !118
  %9 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %8) #5, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  %10 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %9) #5, !dbg !1080
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %11, label %35, label %12, !dbg !1079

; <label>:12:                                     ; preds = %1, %12
  %13 = phi %struct.dictEntry* [ %33, %12 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 0, !dbg !1083
  %15 = load i8*, i8** %14, align 8, !dbg !1083, !tbaa !298
  %16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 1, i32 0, !dbg !1085
  %17 = bitcast i8** %16 to %struct.latencyTimeSeries**, !dbg !1085
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %17, align 8, !dbg !1085, !tbaa !543
  %19 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 0, !dbg !1087
  %20 = load i32, i32* %19, align 4, !dbg !1087, !tbaa !177
  %21 = add nsw i32 %20, 159, !dbg !1088
  %22 = srem i32 %21, 160, !dbg !1089
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #5, !dbg !1091
  tail call void @addReplyBulkCString(%struct.client* %0, i8* %15) #5, !dbg !1092
  %23 = sext i32 %22 to i64, !dbg !1093
  %24 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 2, i64 %23, i32 0, !dbg !1094
  %25 = load i32, i32* %24, align 4, !dbg !1094, !tbaa !202
  %26 = sext i32 %25 to i64, !dbg !1093
  tail call void @addReplyLongLong(%struct.client* %0, i64 %26) #5, !dbg !1095
  %27 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 2, i64 %23, i32 1, !dbg !1096
  %28 = load i32, i32* %27, align 4, !dbg !1096, !tbaa !209
  %29 = zext i32 %28 to i64, !dbg !1097
  tail call void @addReplyLongLong(%struct.client* %0, i64 %29) #5, !dbg !1098
  %30 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 1, !dbg !1099
  %31 = load i32, i32* %30, align 4, !dbg !1099, !tbaa !181
  %32 = zext i32 %31 to i64, !dbg !1100
  tail call void @addReplyLongLong(%struct.client* %0, i64 %32) #5, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  %33 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %9) #5, !dbg !1080
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %34, label %35, label %12, !dbg !1079, !llvm.loop !1102

; <label>:35:                                     ; preds = %12, %1
  tail call void @dictReleaseIterator(%struct.dictIterator* %9) #5, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  ret void, !dbg !1105
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @latencyCommandGenSparkeline(i8*, %struct.latencyTimeSeries* nocapture readonly) local_unnamed_addr #0 !dbg !1106 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call %struct.sequence* @createSparklineSequence() #5, !dbg !1142
  %5 = tail call i8* @sdsempty() #5, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  %6 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 0
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i64 0, i32 0
  br label %9, !dbg !1150

; <label>:9:                                      ; preds = %61, %2
  %10 = phi i32 [ 0, %2 ], [ %64, %61 ]
  %11 = phi i32 [ 0, %2 ], [ %63, %61 ]
  %12 = phi i32 [ 0, %2 ], [ %62, %61 ]
  %13 = load i32, i32* %6, align 4, !dbg !1151, !tbaa !177
  %14 = add nsw i32 %13, %10, !dbg !1152
  %15 = srem i32 %14, 160, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1155
  %16 = sext i32 %15 to i64, !dbg !1157
  %17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %16, i32 0, !dbg !1159
  %18 = load i32, i32* %17, align 4, !dbg !1159, !tbaa !202
  %19 = icmp eq i32 %18, 0, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %19, label %61, label %20, !dbg !1161

; <label>:20:                                     ; preds = %9
  %21 = load i32, i32* %8, align 8, !dbg !1162, !tbaa !1164
  %22 = icmp eq i32 %21, 0, !dbg !1166
  %23 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %16, i32 1, !dbg !1167
  %24 = load i32, i32* %23, align 4, !dbg !1167, !tbaa !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %22, label %31, label %25, !dbg !1170

; <label>:25:                                     ; preds = %20
  %26 = icmp ugt i32 %24, %11, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %26, label %27, label %28, !dbg !1172

; <label>:27:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br label %28, !dbg !1173

; <label>:28:                                     ; preds = %27, %25
  %29 = phi i32 [ %24, %27 ], [ %11, %25 ], !dbg !1174
  %30 = icmp ult i32 %24, %12, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  br i1 %30, label %31, label %33, !dbg !1177

; <label>:31:                                     ; preds = %28, %20
  %32 = phi i32 [ %24, %20 ], [ %29, %28 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %33, !dbg !1180

; <label>:33:                                     ; preds = %31, %28
  %34 = phi i32 [ %12, %28 ], [ %24, %31 ], !dbg !1174
  %35 = phi i32 [ %29, %28 ], [ %32, %31 ], !dbg !1167
  %36 = call i64 @time(i64* null) #5, !dbg !1180
  %37 = load i32, i32* %17, align 4, !dbg !1181, !tbaa !202
  %38 = trunc i64 %36 to i32, !dbg !1180
  %39 = sub i32 %38, %37, !dbg !1180
  %40 = icmp slt i32 %39, 60, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %40, label %41, label %43, !dbg !1185

; <label>:41:                                     ; preds = %33
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i32 %39) #5, !dbg !1186
  br label %58, !dbg !1186

; <label>:43:                                     ; preds = %33
  %44 = icmp slt i32 %39, 3600, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %44, label %45, label %50, !dbg !1189

; <label>:45:                                     ; preds = %43
  %46 = trunc i32 %39 to i16
  %47 = udiv i16 %46, 60
  %48 = zext i16 %47 to i32
  %49 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %48) #5, !dbg !1190
  br label %58, !dbg !1190

; <label>:50:                                     ; preds = %43
  %51 = icmp slt i32 %39, 86400, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %51, label %52, label %55, !dbg !1193

; <label>:52:                                     ; preds = %50
  %53 = udiv i32 %39, 3600
  %54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %53) #5, !dbg !1194
  br label %58, !dbg !1194

; <label>:55:                                     ; preds = %50
  %56 = udiv i32 %39, 86400
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i32 %56) #5, !dbg !1195
  br label %58

; <label>:58:                                     ; preds = %45, %55, %52, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %59 = load i32, i32* %23, align 4, !dbg !1196, !tbaa !209
  %60 = uitofp i32 %59 to double, !dbg !1197
  call void @sparklineSequenceAddSample(%struct.sequence* nonnull %4, double %60, i8* nonnull %7) #5, !dbg !1198
  br label %61, !dbg !1199

; <label>:61:                                     ; preds = %9, %58
  %62 = phi i32 [ %34, %58 ], [ %12, %9 ], !dbg !1178
  %63 = phi i32 [ %35, %58 ], [ %11, %9 ], !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1199
  %64 = add nuw nsw i32 %10, 1, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  %65 = icmp eq i32 %64, 160, !dbg !1203
  br i1 %65, label %66, label %9, !dbg !1150, !llvm.loop !1204

; <label>:66:                                     ; preds = %61
  %67 = zext i32 %63 to i64, !dbg !1206
  %68 = zext i32 %62 to i64, !dbg !1207
  %69 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 1, !dbg !1208
  %70 = load i32, i32* %69, align 4, !dbg !1208, !tbaa !181
  %71 = zext i32 %70 to i64, !dbg !1209
  %72 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0), i8* %0, i64 %67, i64 %68, i64 %71) #5, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  br label %73, !dbg !1213

; <label>:73:                                     ; preds = %73, %66
  %74 = phi i32 [ 0, %66 ], [ %77, %73 ]
  %75 = phi i8* [ %72, %66 ], [ %76, %73 ]
  %76 = call i8* @sdscatlen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #5, !dbg !1214
  %77 = add nuw nsw i32 %74, 1, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  %78 = icmp eq i32 %77, 80, !dbg !1218
  br i1 %78, label %79, label %73, !dbg !1213, !llvm.loop !1219

; <label>:79:                                     ; preds = %73
  %80 = call i8* @sdscatlen(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1) #5, !dbg !1221
  %81 = call i8* @sparklineRender(i8* %80, %struct.sequence* %4, i32 80, i32 4, i32 1) #5, !dbg !1222
  call void @freeSparklineSequence(%struct.sequence* %4) #5, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  ret i8* %81, !dbg !1224
}

; Function Attrs: noredzone
declare dso_local %struct.sequence* @createSparklineSequence() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @sparklineSequenceAddSample(%struct.sequence*, double, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @sparklineRender(i8*, %struct.sequence*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @freeSparklineSequence(%struct.sequence*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1225 {
  %2 = alloca [8 x i8*], align 16
  %3 = bitcast [8 x i8*]* %2 to i8*, !dbg !1252
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #7, !dbg !1252
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 16 bitcast ([8 x i8*]* @latencyCommand.help to i8*), i64 64, i1 false), !dbg !1253
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1254
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1254, !tbaa !1255
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1259
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1259, !tbaa !1260
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1261
  %9 = load i8*, i8** %8, align 8, !dbg !1261, !tbaa !1262
  %10 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !1264
  %11 = icmp eq i32 %10, 0, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br i1 %11, label %12, label %27, !dbg !1265

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1266
  %14 = load i32, i32* %13, align 8, !dbg !1266, !tbaa !1267
  %15 = icmp eq i32 %14, 3, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br i1 %15, label %16, label %27, !dbg !1269

; <label>:16:                                     ; preds = %12
  %17 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1270, !tbaa !118
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1272
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1272, !tbaa !1260
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !1273
  %21 = load i8*, i8** %20, align 8, !dbg !1273, !tbaa !1262
  %22 = tail call i8* @dictFetchValue(%struct.dict* %17, i8* %21) #5, !dbg !1274
  %23 = icmp eq i8* %22, null, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  br i1 %23, label %24, label %25, !dbg !1277

; <label>:24:                                     ; preds = %16
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #5, !dbg !1278
  br label %155, !dbg !1280

; <label>:25:                                     ; preds = %16
  %26 = bitcast i8* %22 to %struct.latencyTimeSeries*, !dbg !1274
  tail call void @latencyCommandReplyWithSamples(%struct.client* nonnull %0, %struct.latencyTimeSeries* %26) #8, !dbg !1282
  br label %155

; <label>:27:                                     ; preds = %1, %12
  %28 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !1284
  %29 = icmp eq i32 %28, 0, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br i1 %29, label %30, label %49, !dbg !1285

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1286
  %32 = load i32, i32* %31, align 8, !dbg !1286, !tbaa !1267
  %33 = icmp eq i32 %32, 3, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %33, label %34, label %49, !dbg !1288

; <label>:34:                                     ; preds = %30
  %35 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1289, !tbaa !118
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1290
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1290, !tbaa !1260
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1291
  %39 = load i8*, i8** %38, align 8, !dbg !1291, !tbaa !1262
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %35, i8* %39) #5, !dbg !1292
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %41, label %156, label %42, !dbg !1296

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 1, i32 0, !dbg !1297
  %44 = bitcast i8** %43 to %struct.latencyTimeSeries**, !dbg !1297
  %45 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %44, align 8, !dbg !1297, !tbaa !543
  %46 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 0, !dbg !1298
  %47 = load i8*, i8** %46, align 8, !dbg !1298, !tbaa !298
  %48 = tail call i8* @latencyCommandGenSparkeline(i8* %47, %struct.latencyTimeSeries* %45) #8, !dbg !1300
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* %48) #5, !dbg !1302
  tail call void @sdsfree(i8* %48) #5, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br label %155

; <label>:49:                                     ; preds = %27, %30
  %50 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !1305
  %51 = icmp eq i32 %50, 0, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  br i1 %51, label %52, label %57, !dbg !1306

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1307
  %54 = load i32, i32* %53, align 8, !dbg !1307, !tbaa !1267
  %55 = icmp eq i32 %54, 2, !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %55, label %56, label %57, !dbg !1309

; <label>:56:                                     ; preds = %52
  tail call void @latencyCommandReplyWithLatestEvents(%struct.client* nonnull %0) #8, !dbg !1310
  br label %155, !dbg !1312

; <label>:57:                                     ; preds = %49, %52
  %58 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !1313
  %59 = icmp eq i32 %58, 0, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %59, label %60, label %92, !dbg !1314

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1315
  %62 = load i32, i32* %61, align 8, !dbg !1315, !tbaa !1267
  %63 = icmp eq i32 %62, 2, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %63, label %64, label %92, !dbg !1317

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @createLatencyReport() #8, !dbg !1318
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !1331
  %67 = load i8, i8* %66, align 1, !dbg !1331, !tbaa !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  %68 = trunc i8 %67 to i3, !dbg !1333
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1333

; <label>:69:                                     ; preds = %64
  %70 = lshr i8 %67, 3, !dbg !1334
  %71 = zext i8 %70 to i64, !dbg !1334
  br label %90, !dbg !1336

; <label>:72:                                     ; preds = %64
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !1337
  %74 = load i8, i8* %73, align 1, !dbg !1338, !tbaa !543
  %75 = zext i8 %74 to i64, !dbg !1337
  br label %90, !dbg !1339

; <label>:76:                                     ; preds = %64
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !1340
  %78 = bitcast i8* %77 to i16*, !dbg !1341
  %79 = load i16, i16* %78, align 1, !dbg !1341, !tbaa !1342
  %80 = zext i16 %79 to i64, !dbg !1340
  br label %90, !dbg !1344

; <label>:81:                                     ; preds = %64
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !1345
  %83 = bitcast i8* %82 to i32*, !dbg !1346
  %84 = load i32, i32* %83, align 1, !dbg !1346, !tbaa !356
  %85 = zext i32 %84 to i64, !dbg !1345
  br label %90, !dbg !1347

; <label>:86:                                     ; preds = %64
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !1348
  %88 = bitcast i8* %87 to i64*, !dbg !1349
  %89 = load i64, i64* %88, align 1, !dbg !1349, !tbaa !1350
  br label %90, !dbg !1351

; <label>:90:                                     ; preds = %64, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %64 ], !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %65, i64 %91) #5, !dbg !1355
  tail call void @sdsfree(i8* %65) #5, !dbg !1356
  br label %155, !dbg !1357

; <label>:92:                                     ; preds = %57, %60
  %93 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !1358
  %94 = icmp eq i32 %93, 0, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %94, label %95, label %145, !dbg !1359

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1360
  %97 = load i32, i32* %96, align 8, !dbg !1360, !tbaa !1267
  %98 = icmp sgt i32 %97, 1, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br i1 %98, label %99, label %145, !dbg !1362

; <label>:99:                                     ; preds = %95
  %100 = icmp eq i32 %97, 2, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %100, label %101, label %120, !dbg !1364

; <label>:101:                                    ; preds = %99
  %102 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1369, !tbaa !118
  %103 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %102) #5, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  %104 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %103) #5, !dbg !1373
  %105 = icmp eq %struct.dictEntry* %104, null, !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %105, label %118, label %106, !dbg !1372

; <label>:106:                                    ; preds = %101, %106
  %107 = phi %struct.dictEntry* [ %114, %106 ], [ %104, %101 ]
  %108 = phi i32 [ %113, %106 ], [ 0, %101 ]
  %109 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %107, i64 0, i32 0, !dbg !1376
  %110 = load i8*, i8** %109, align 8, !dbg !1376, !tbaa !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  %111 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1379, !tbaa !118
  %112 = tail call i32 @dictDelete(%struct.dict* %111, i8* %110) #5, !dbg !1380
  %113 = add nuw nsw i32 %108, 1, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  %114 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %103) #5, !dbg !1373
  %115 = icmp eq %struct.dictEntry* %114, null, !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  br i1 %115, label %116, label %106, !dbg !1372, !llvm.loop !312

; <label>:116:                                    ; preds = %106
  %117 = zext i32 %113 to i64, !dbg !1383
  br label %118, !dbg !1383

; <label>:118:                                    ; preds = %116, %101
  %119 = phi i64 [ 0, %101 ], [ %117, %116 ]
  tail call void @dictReleaseIterator(%struct.dictIterator* %103) #5, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  tail call void @addReplyLongLong(%struct.client* %0, i64 %119) #5, !dbg !1385
  br label %155, !dbg !1386

; <label>:120:                                    ; preds = %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  %121 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1392
  %122 = load %struct.redisObject*, %struct.redisObject** %121, align 8, !dbg !1392, !tbaa !1260
  %123 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %122, i64 0, i32 2, !dbg !1394
  %124 = load i8*, i8** %123, align 8, !dbg !1394, !tbaa !1262
  %125 = tail call i32 @latencyResetEvent(i8* %124) #8, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  %126 = load i32, i32* %96, align 8, !dbg !1397, !tbaa !1267
  %127 = icmp sgt i32 %126, 3, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %127, label %128, label %142, !dbg !1391, !llvm.loop !1399

; <label>:128:                                    ; preds = %120, %128
  %129 = phi i64 [ %138, %128 ], [ 3, %120 ]
  %130 = phi i32 [ %137, %128 ], [ %125, %120 ]
  %131 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1401, !tbaa !1255
  %132 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %131, i64 %129, !dbg !1392
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !1392, !tbaa !1260
  %134 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %133, i64 0, i32 2, !dbg !1394
  %135 = load i8*, i8** %134, align 8, !dbg !1394, !tbaa !1262
  %136 = tail call i32 @latencyResetEvent(i8* %135) #8, !dbg !1395
  %137 = add nsw i32 %136, %130, !dbg !1402
  %138 = add nuw nsw i64 %129, 1, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  %139 = load i32, i32* %96, align 8, !dbg !1397, !tbaa !1267
  %140 = sext i32 %139 to i64, !dbg !1398
  %141 = icmp slt i64 %138, %140, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %141, label %128, label %142, !dbg !1391, !llvm.loop !1399

; <label>:142:                                    ; preds = %128, %120
  %143 = phi i32 [ %125, %120 ], [ %137, %128 ], !dbg !1402
  %144 = sext i32 %143 to i64, !dbg !1404
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %144) #5, !dbg !1405
  br label %155

; <label>:145:                                    ; preds = %92, %95
  %146 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !1406
  %147 = icmp eq i32 %146, 0, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %147, label %148, label %154, !dbg !1408

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1409
  %150 = load i32, i32* %149, align 8, !dbg !1409, !tbaa !1267
  %151 = icmp sgt i32 %150, 1, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br i1 %151, label %152, label %154, !dbg !1411

; <label>:152:                                    ; preds = %148
  %153 = getelementptr inbounds [8 x i8*], [8 x i8*]* %2, i64 0, i64 0, !dbg !1412
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %153) #5, !dbg !1414
  br label %155, !dbg !1415

; <label>:154:                                    ; preds = %145, %148
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #5, !dbg !1416
  br label %155

; <label>:155:                                    ; preds = %42, %90, %152, %154, %118, %142, %56, %24, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %162, !dbg !1418

; <label>:156:                                    ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %157 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1420, !tbaa !1255
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 2, !dbg !1421
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !1421, !tbaa !1260
  %160 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %159, i64 0, i32 2, !dbg !1422
  %161 = load i8*, i8** %160, align 8, !dbg !1422, !tbaa !1262
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i64 0, i64 0), i8* %161) #5, !dbg !1423
  br label %162, !dbg !1424

; <label>:162:                                    ; preds = %156, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #7, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  ret void, !dbg !1424
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "latencyTimeSeriesDictType", scope: !2, file: !3, line: 50, type: !61, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !60)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/latency.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !12, !13, !14, !15, !17, !31, !41, !51}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !8, line: 56, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !10, line: 103, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !19, line: 51, size: 24, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !18, file: !19, line: 52, baseType: !22, size: 8)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !8, line: 24, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !10, line: 43, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !18, file: !19, line: 53, baseType: !22, size: 8, offset: 8)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !18, file: !19, line: 54, baseType: !24, size: 8, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !18, file: !19, line: 55, baseType: !28, offset: 24)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: -1)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !19, line: 57, size: 40, elements: !33)
!33 = !{!34, !38, !39, !40}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !32, file: !19, line: 58, baseType: !35, size: 16)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !8, line: 36, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !10, line: 57, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !32, file: !19, line: 59, baseType: !35, size: 16, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !19, line: 60, baseType: !24, size: 8, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !32, file: !19, line: 61, baseType: !28, offset: 40)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !19, line: 63, size: 72, elements: !43)
!43 = !{!44, !48, !49, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !42, file: !19, line: 64, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 48, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 79, baseType: !47)
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !42, file: !19, line: 65, baseType: !45, size: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !19, line: 66, baseType: !24, size: 8, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !42, file: !19, line: 67, baseType: !28, offset: 72)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !19, line: 69, size: 136, elements: !53)
!53 = !{!54, !57, !58, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !52, file: !19, line: 70, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 60, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !10, line: 105, baseType: !12)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !52, file: !19, line: 71, baseType: !55, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !19, line: 72, baseType: !24, size: 8, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !52, file: !19, line: 73, baseType: !28, offset: 136)
!60 = !{!0}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !62, line: 65, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !62, line: 58, size: 384, elements: !64)
!64 = !{!65, !71, !75, !76, !81, !85}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !63, file: !62, line: 59, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!55, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !63, file: !62, line: 60, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!6, !6, !69}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !63, file: !62, line: 61, baseType: !72, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !63, file: !62, line: 62, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !6, !69, !69}
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !63, file: !62, line: 63, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !6, !6}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !63, file: !62, line: 64, baseType: !82, size: 64, offset: 320)
!86 = !{i32 2, !"Dwarf Version", i32 4}
!87 = !{i32 2, !"Debug Info Version", i32 3}
!88 = !{i32 1, !"wchar_size", i32 4}
!89 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!90 = distinct !DISubprogram(name: "dictStringKeyCompare", scope: !3, file: !3, line: 39, type: !78, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !91)
!91 = !{!92, !93, !94}
!92 = !DILocalVariable(name: "privdata", arg: 1, scope: !90, file: !3, line: 39, type: !6)
!93 = !DILocalVariable(name: "key1", arg: 2, scope: !90, file: !3, line: 39, type: !69)
!94 = !DILocalVariable(name: "key2", arg: 3, scope: !90, file: !3, line: 39, type: !69)
!95 = !DILocation(line: 39, column: 32, scope: !90)
!96 = !DILocation(line: 39, column: 54, scope: !90)
!97 = !DILocation(line: 39, column: 72, scope: !90)
!98 = !DILocation(line: 41, column: 12, scope: !90)
!99 = !DILocation(line: 41, column: 30, scope: !90)
!100 = !DILocation(line: 41, column: 5, scope: !90)
!101 = distinct !DISubprogram(name: "dictStringHash", scope: !3, file: !3, line: 44, type: !67, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !102)
!102 = !{!103}
!103 = !DILocalVariable(name: "key", arg: 1, scope: !101, file: !3, line: 44, type: !69)
!104 = !DILocation(line: 44, column: 37, scope: !101)
!105 = !DILocation(line: 45, column: 37, scope: !101)
!106 = !DILocation(line: 45, column: 12, scope: !101)
!107 = !DILocation(line: 45, column: 5, scope: !101)
!108 = distinct !DISubprogram(name: "THPGetAnonHugePagesSize", scope: !3, file: !3, line: 81, type: !109, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!109 = !DISubroutineType(types: !110)
!110 = !{!80}
!111 = !DILocation(line: 82, column: 12, scope: !108)
!112 = !DILocation(line: 82, column: 5, scope: !108)
!113 = distinct !DISubprogram(name: "latencyMonitorInit", scope: !3, file: !3, line: 90, type: !114, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!114 = !DISubroutineType(types: !115)
!115 = !{null}
!116 = !DILocation(line: 91, column: 29, scope: !113)
!117 = !DILocation(line: 91, column: 27, scope: !113)
!118 = !{!119, !123, i64 3104}
!119 = !{!"redisServer", !120, i64 0, !123, i64 8, !123, i64 16, !123, i64 24, !120, i64 32, !120, i64 36, !120, i64 40, !123, i64 48, !123, i64 56, !123, i64 64, !123, i64 72, !120, i64 80, !120, i64 84, !120, i64 88, !120, i64 92, !123, i64 96, !123, i64 104, !120, i64 112, !120, i64 116, !121, i64 120, !120, i64 164, !124, i64 168, !120, i64 176, !123, i64 184, !123, i64 192, !123, i64 200, !121, i64 208, !120, i64 216, !120, i64 220, !121, i64 224, !120, i64 352, !123, i64 360, !120, i64 368, !121, i64 372, !120, i64 436, !120, i64 440, !121, i64 444, !120, i64 508, !123, i64 512, !123, i64 520, !123, i64 528, !123, i64 536, !123, i64 544, !123, i64 552, !123, i64 560, !120, i64 568, !125, i64 576, !121, i64 584, !123, i64 840, !124, i64 848, !120, i64 856, !120, i64 860, !124, i64 864, !124, i64 872, !124, i64 880, !124, i64 888, !123, i64 896, !123, i64 904, !123, i64 912, !123, i64 920, !123, i64 928, !123, i64 936, !123, i64 944, !123, i64 952, !123, i64 960, !123, i64 968, !123, i64 976, !123, i64 984, !123, i64 992, !124, i64 1000, !125, i64 1008, !125, i64 1016, !125, i64 1024, !126, i64 1032, !125, i64 1040, !125, i64 1048, !125, i64 1056, !125, i64 1064, !125, i64 1072, !125, i64 1080, !125, i64 1088, !125, i64 1096, !125, i64 1104, !124, i64 1112, !125, i64 1120, !126, i64 1128, !125, i64 1136, !125, i64 1144, !125, i64 1152, !125, i64 1160, !123, i64 1168, !125, i64 1176, !125, i64 1184, !124, i64 1192, !127, i64 1200, !125, i64 1240, !125, i64 1248, !124, i64 1256, !124, i64 1264, !121, i64 1272, !120, i64 1728, !120, i64 1732, !120, i64 1736, !120, i64 1740, !120, i64 1744, !124, i64 1752, !120, i64 1760, !120, i64 1764, !120, i64 1768, !120, i64 1772, !124, i64 1776, !124, i64 1784, !120, i64 1792, !120, i64 1796, !120, i64 1800, !120, i64 1804, !121, i64 1808, !120, i64 1880, !120, i64 1884, !123, i64 1888, !120, i64 1896, !120, i64 1900, !124, i64 1904, !124, i64 1912, !124, i64 1920, !124, i64 1928, !120, i64 1936, !120, i64 1940, !123, i64 1944, !123, i64 1952, !120, i64 1960, !120, i64 1964, !124, i64 1968, !124, i64 1976, !124, i64 1984, !124, i64 1992, !120, i64 2000, !124, i64 2008, !120, i64 2016, !120, i64 2020, !120, i64 2024, !120, i64 2028, !120, i64 2032, !120, i64 2036, !120, i64 2040, !120, i64 2044, !120, i64 2048, !120, i64 2052, !120, i64 2056, !120, i64 2060, !120, i64 2064, !123, i64 2072, !125, i64 2080, !125, i64 2088, !120, i64 2096, !123, i64 2104, !120, i64 2112, !123, i64 2120, !120, i64 2128, !120, i64 2132, !124, i64 2136, !124, i64 2144, !124, i64 2152, !124, i64 2160, !120, i64 2168, !120, i64 2172, !120, i64 2176, !120, i64 2180, !120, i64 2184, !120, i64 2188, !121, i64 2192, !128, i64 2200, !129, i64 2224, !123, i64 2240, !120, i64 2248, !123, i64 2256, !120, i64 2264, !121, i64 2268, !121, i64 2309, !125, i64 2352, !125, i64 2360, !120, i64 2368, !120, i64 2372, !123, i64 2376, !125, i64 2384, !125, i64 2392, !125, i64 2400, !125, i64 2408, !124, i64 2416, !124, i64 2424, !120, i64 2432, !120, i64 2436, !120, i64 2440, !120, i64 2444, !120, i64 2448, !123, i64 2456, !123, i64 2464, !120, i64 2472, !120, i64 2476, !123, i64 2480, !123, i64 2488, !120, i64 2496, !120, i64 2500, !124, i64 2504, !124, i64 2512, !124, i64 2520, !120, i64 2528, !120, i64 2532, !123, i64 2536, !124, i64 2544, !120, i64 2552, !120, i64 2556, !120, i64 2560, !124, i64 2568, !120, i64 2576, !120, i64 2580, !120, i64 2584, !123, i64 2592, !121, i64 2600, !125, i64 2648, !120, i64 2656, !123, i64 2664, !123, i64 2672, !120, i64 2680, !123, i64 2688, !120, i64 2696, !120, i64 2700, !125, i64 2704, !120, i64 2712, !120, i64 2716, !120, i64 2720, !120, i64 2724, !125, i64 2728, !120, i64 2736, !121, i64 2740, !123, i64 2768, !123, i64 2776, !120, i64 2784, !120, i64 2788, !120, i64 2792, !120, i64 2796, !124, i64 2800, !124, i64 2808, !124, i64 2816, !124, i64 2824, !124, i64 2832, !124, i64 2840, !124, i64 2848, !124, i64 2856, !120, i64 2864, !120, i64 2868, !124, i64 2872, !124, i64 2880, !120, i64 2888, !125, i64 2896, !123, i64 2904, !123, i64 2912, !120, i64 2920, !120, i64 2924, !125, i64 2928, !123, i64 2936, !123, i64 2944, !120, i64 2952, !120, i64 2956, !120, i64 2960, !120, i64 2964, !123, i64 2968, !120, i64 2976, !120, i64 2980, !120, i64 2984, !123, i64 2992, !123, i64 3000, !123, i64 3008, !123, i64 3016, !125, i64 3024, !125, i64 3032, !125, i64 3040, !120, i64 3048, !120, i64 3052, !120, i64 3056, !120, i64 3060, !120, i64 3064, !120, i64 3068, !120, i64 3072, !120, i64 3076, !120, i64 3080, !120, i64 3084, !120, i64 3088, !125, i64 3096, !123, i64 3104, !123, i64 3112, !123, i64 3120, !120, i64 3128, !120, i64 3132, !120, i64 3136, !124, i64 3144, !123, i64 3152, !123, i64 3160, !123, i64 3168}
!120 = !{!"int", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!"any pointer", !121, i64 0}
!124 = !{!"long", !121, i64 0}
!125 = !{!"long long", !121, i64 0}
!126 = !{!"double", !121, i64 0}
!127 = !{!"malloc_stats", !124, i64 0, !124, i64 8, !124, i64 16, !124, i64 24, !124, i64 32}
!128 = !{!"", !120, i64 0, !124, i64 8, !125, i64 16}
!129 = !{!"redisOpArray", !123, i64 0, !120, i64 8}
!130 = !DILocation(line: 92, column: 1, scope: !113)
!131 = distinct !DISubprogram(name: "latencyAddSample", scope: !3, file: !3, line: 98, type: !132, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !137)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !15, !134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !135, line: 52, baseType: !136)
!135 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!136 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!137 = !{!138, !139, !140, !157, !160}
!138 = !DILocalVariable(name: "event", arg: 1, scope: !131, file: !3, line: 98, type: !15)
!139 = !DILocalVariable(name: "latency", arg: 2, scope: !131, file: !3, line: 98, type: !134)
!140 = !DILocalVariable(name: "ts", scope: !131, file: !3, line: 99, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencyTimeSeries", file: !143, line: 47, size: 10304, elements: !144)
!143 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/latency.h", directory: "/root/.unikraft/apps/redis/build")
!144 = !{!145, !146, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !142, file: !143, line: 48, baseType: !80, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !142, file: !143, line: 49, baseType: !45, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !142, file: !143, line: 50, baseType: !148, size: 10240, offset: 64)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 10240, elements: !155)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencySample", file: !143, line: 41, size: 64, elements: !150)
!150 = !{!151, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !149, file: !143, line: 42, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !8, line: 44, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !10, line: 77, baseType: !80)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !149, file: !143, line: 43, baseType: !45, size: 32, offset: 32)
!155 = !{!156}
!156 = !DISubrange(count: 160)
!157 = !DILocalVariable(name: "now", scope: !131, file: !3, line: 100, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !159, line: 34, baseType: !11)
!159 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!160 = !DILocalVariable(name: "prev", scope: !131, file: !3, line: 101, type: !80)
!161 = !DILocation(line: 98, column: 29, scope: !131)
!162 = !DILocation(line: 98, column: 45, scope: !131)
!163 = !DILocation(line: 99, column: 58, scope: !131)
!164 = !DILocation(line: 99, column: 36, scope: !131)
!165 = !DILocation(line: 99, column: 31, scope: !131)
!166 = !DILocation(line: 100, column: 18, scope: !131)
!167 = !DILocation(line: 100, column: 12, scope: !131)
!168 = !DILocation(line: 104, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !131, file: !3, line: 104, column: 9)
!170 = !DILocation(line: 104, column: 9, scope: !131)
!171 = !DILocation(line: 112, column: 23, scope: !172)
!172 = distinct !DILexicalBlock(scope: !131, file: !3, line: 112, column: 9)
!173 = !DILocation(line: 105, column: 14, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !3, line: 104, column: 21)
!175 = !DILocation(line: 106, column: 13, scope: !174)
!176 = !DILocation(line: 106, column: 17, scope: !174)
!177 = !{!178, !120, i64 0}
!178 = !{!"latencyTimeSeries", !120, i64 0, !120, i64 4, !121, i64 8}
!179 = !DILocation(line: 107, column: 13, scope: !174)
!180 = !DILocation(line: 107, column: 17, scope: !174)
!181 = !{!178, !120, i64 4}
!182 = !DILocation(line: 108, column: 20, scope: !174)
!183 = !DILocation(line: 108, column: 9, scope: !174)
!184 = !DILocation(line: 109, column: 24, scope: !174)
!185 = !DILocation(line: 109, column: 39, scope: !174)
!186 = !DILocation(line: 109, column: 9, scope: !174)
!187 = !DILocation(line: 110, column: 5, scope: !174)
!188 = !DILocation(line: 0, scope: !131)
!189 = !DILocation(line: 112, column: 19, scope: !172)
!190 = !DILocation(line: 112, column: 17, scope: !172)
!191 = !DILocation(line: 112, column: 9, scope: !131)
!192 = !DILocation(line: 112, column: 38, scope: !172)
!193 = !DILocation(line: 112, column: 36, scope: !172)
!194 = !DILocation(line: 112, column: 28, scope: !172)
!195 = !DILocation(line: 116, column: 17, scope: !131)
!196 = !DILocation(line: 116, column: 38, scope: !131)
!197 = !DILocation(line: 116, column: 43, scope: !131)
!198 = !DILocation(line: 101, column: 9, scope: !131)
!199 = !DILocation(line: 117, column: 9, scope: !200)
!200 = distinct !DILexicalBlock(scope: !131, file: !3, line: 117, column: 9)
!201 = !DILocation(line: 117, column: 27, scope: !200)
!202 = !{!203, !120, i64 0}
!203 = !{!"latencySample", !120, i64 0, !120, i64 4}
!204 = !DILocation(line: 117, column: 32, scope: !200)
!205 = !DILocation(line: 117, column: 9, scope: !131)
!206 = !DILocation(line: 118, column: 41, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 118, column: 13)
!208 = distinct !DILexicalBlock(scope: !200, file: !3, line: 117, column: 40)
!209 = !{!203, !120, i64 4}
!210 = !DILocation(line: 118, column: 23, scope: !207)
!211 = !DILocation(line: 118, column: 21, scope: !207)
!212 = !DILocation(line: 118, column: 13, scope: !208)
!213 = !DILocation(line: 119, column: 41, scope: !207)
!214 = !DILocation(line: 119, column: 39, scope: !207)
!215 = !DILocation(line: 119, column: 13, scope: !207)
!216 = !DILocation(line: 123, column: 33, scope: !131)
!217 = !DILocation(line: 123, column: 21, scope: !131)
!218 = !DILocation(line: 123, column: 5, scope: !131)
!219 = !DILocation(line: 123, column: 26, scope: !131)
!220 = !DILocation(line: 123, column: 31, scope: !131)
!221 = !DILocation(line: 124, column: 36, scope: !131)
!222 = !DILocation(line: 124, column: 26, scope: !131)
!223 = !DILocation(line: 124, column: 34, scope: !131)
!224 = !DILocation(line: 126, column: 12, scope: !131)
!225 = !DILocation(line: 127, column: 17, scope: !226)
!226 = distinct !DILexicalBlock(scope: !131, file: !3, line: 127, column: 9)
!227 = !DILocation(line: 127, column: 9, scope: !131)
!228 = !DILocation(line: 127, column: 44, scope: !226)
!229 = !DILocation(line: 127, column: 36, scope: !226)
!230 = !DILocation(line: 0, scope: !208)
!231 = !DILocation(line: 128, column: 1, scope: !131)
!232 = distinct !DISubprogram(name: "latencyResetEvent", scope: !3, file: !3, line: 135, type: !233, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{!80, !15}
!235 = !{!236, !237, !284, !285, !286}
!236 = !DILocalVariable(name: "event_to_reset", arg: 1, scope: !232, file: !3, line: 135, type: !15)
!237 = !DILocalVariable(name: "di", scope: !232, file: !3, line: 136, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !62, line: 95, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !62, line: 88, size: 384, elements: !241)
!241 = !{!242, !278, !279, !280, !281, !282, !283}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !240, file: !62, line: 89, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !62, line: 82, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !62, line: 76, size: 768, elements: !246)
!246 = !{!247, !249, !250, !276, !277}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !62, line: 77, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !245, file: !62, line: 78, baseType: !6, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !245, file: !62, line: 79, baseType: !251, size: 512, offset: 128)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 512, elements: !274)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !62, line: 74, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !62, line: 69, size: 256, elements: !254)
!254 = !{!255, !271, !272, !273}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !253, file: !62, line: 70, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !62, line: 56, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !62, line: 47, size: 192, elements: !260)
!260 = !{!261, !262, !269}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !259, file: !62, line: 48, baseType: !6, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !259, file: !62, line: 54, baseType: !263, size: 64, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !62, line: 49, size: 64, elements: !264)
!264 = !{!265, !266, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !263, file: !62, line: 50, baseType: !6, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !263, file: !62, line: 51, baseType: !55, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !263, file: !62, line: 52, baseType: !7, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !263, file: !62, line: 53, baseType: !13, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !62, line: 55, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !253, file: !62, line: 71, baseType: !12, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !253, file: !62, line: 72, baseType: !12, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !253, file: !62, line: 73, baseType: !12, size: 64, offset: 192)
!274 = !{!275}
!275 = !DISubrange(count: 2)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !245, file: !62, line: 80, baseType: !11, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !245, file: !62, line: 81, baseType: !12, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !240, file: !62, line: 90, baseType: !11, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !240, file: !62, line: 91, baseType: !80, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !240, file: !62, line: 91, baseType: !80, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !240, file: !62, line: 92, baseType: !257, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !240, file: !62, line: 92, baseType: !257, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !240, file: !62, line: 94, baseType: !136, size: 64, offset: 320)
!284 = !DILocalVariable(name: "de", scope: !232, file: !3, line: 137, type: !257)
!285 = !DILocalVariable(name: "resets", scope: !232, file: !3, line: 138, type: !80)
!286 = !DILocalVariable(name: "event", scope: !287, file: !3, line: 142, type: !15)
!287 = distinct !DILexicalBlock(scope: !232, file: !3, line: 141, column: 40)
!288 = !DILocation(line: 135, column: 29, scope: !232)
!289 = !DILocation(line: 138, column: 9, scope: !232)
!290 = !DILocation(line: 140, column: 37, scope: !232)
!291 = !DILocation(line: 140, column: 10, scope: !232)
!292 = !DILocation(line: 136, column: 19, scope: !232)
!293 = !DILocation(line: 141, column: 5, scope: !232)
!294 = !DILocation(line: 141, column: 17, scope: !232)
!295 = !DILocation(line: 137, column: 16, scope: !232)
!296 = !DILocation(line: 141, column: 31, scope: !232)
!297 = !DILocation(line: 142, column: 23, scope: !287)
!298 = !{!299, !123, i64 0}
!299 = !{!"dictEntry", !123, i64 0, !121, i64 8, !123, i64 16}
!300 = !DILocation(line: 142, column: 15, scope: !287)
!301 = !DILocation(line: 144, column: 36, scope: !302)
!302 = distinct !DILexicalBlock(scope: !287, file: !3, line: 144, column: 13)
!303 = !DILocation(line: 144, column: 39, scope: !302)
!304 = !DILocation(line: 144, column: 72, scope: !302)
!305 = !DILocation(line: 144, column: 13, scope: !287)
!306 = !DILocation(line: 145, column: 31, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 144, column: 78)
!308 = !DILocation(line: 145, column: 13, scope: !307)
!309 = !DILocation(line: 146, column: 19, scope: !307)
!310 = !DILocation(line: 147, column: 9, scope: !307)
!311 = !DILocation(line: 0, scope: !232)
!312 = distinct !{!312, !293, !313}
!313 = !DILocation(line: 148, column: 5, scope: !232)
!314 = !DILocation(line: 0, scope: !307)
!315 = !DILocation(line: 149, column: 5, scope: !232)
!316 = !DILocation(line: 150, column: 5, scope: !232)
!317 = distinct !DISubprogram(name: "analyzeLatencyForEvent", scope: !3, file: !3, line: 160, type: !318, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !330)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !15, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencyStats", file: !143, line: 54, size: 256, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "all_time_high", scope: !321, file: !143, line: 55, baseType: !45, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !321, file: !143, line: 56, baseType: !45, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !321, file: !143, line: 57, baseType: !45, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !321, file: !143, line: 58, baseType: !45, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mad", scope: !321, file: !143, line: 59, baseType: !45, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !321, file: !143, line: 60, baseType: !45, size: 32, offset: 160)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !321, file: !143, line: 61, baseType: !158, size: 64, offset: 192)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DILocalVariable(name: "event", arg: 1, scope: !317, file: !3, line: 160, type: !15)
!332 = !DILocalVariable(name: "ls", arg: 2, scope: !317, file: !3, line: 160, type: !320)
!333 = !DILocalVariable(name: "ts", scope: !317, file: !3, line: 161, type: !141)
!334 = !DILocalVariable(name: "j", scope: !317, file: !3, line: 162, type: !80)
!335 = !DILocalVariable(name: "sum", scope: !317, file: !3, line: 163, type: !55)
!336 = !DILocalVariable(name: "delta", scope: !337, file: !3, line: 206, type: !7)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 205, column: 42)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 205, column: 5)
!339 = distinct !DILexicalBlock(scope: !317, file: !3, line: 205, column: 5)
!340 = !DILocation(line: 160, column: 35, scope: !317)
!341 = !DILocation(line: 160, column: 63, scope: !317)
!342 = !DILocation(line: 161, column: 58, scope: !317)
!343 = !DILocation(line: 161, column: 36, scope: !317)
!344 = !DILocation(line: 165, column: 25, scope: !317)
!345 = !DILocation(line: 161, column: 31, scope: !317)
!346 = !DILocation(line: 165, column: 34, scope: !317)
!347 = !DILocation(line: 165, column: 9, scope: !317)
!348 = !DILocation(line: 165, column: 23, scope: !317)
!349 = !{!350, !120, i64 0}
!350 = !{!"latencyStats", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !120, i64 16, !120, i64 20, !124, i64 24}
!351 = !DILocation(line: 166, column: 9, scope: !317)
!352 = !DILocation(line: 167, column: 9, scope: !317)
!353 = !DILocation(line: 168, column: 9, scope: !317)
!354 = !DILocation(line: 169, column: 9, scope: !317)
!355 = !DILocation(line: 166, column: 13, scope: !317)
!356 = !{!120, !120, i64 0}
!357 = !DILocation(line: 170, column: 9, scope: !317)
!358 = !DILocation(line: 170, column: 17, scope: !317)
!359 = !{!350, !120, i64 20}
!360 = !DILocation(line: 171, column: 9, scope: !317)
!361 = !DILocation(line: 171, column: 16, scope: !317)
!362 = !{!350, !124, i64 24}
!363 = !DILocation(line: 172, column: 9, scope: !317)
!364 = !DILocation(line: 0, scope: !365)
!365 = distinct !DILexicalBlock(scope: !317, file: !3, line: 172, column: 9)
!366 = !DILocation(line: 163, column: 14, scope: !317)
!367 = !DILocation(line: 162, column: 9, scope: !317)
!368 = !DILocation(line: 176, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !317, file: !3, line: 176, column: 5)
!370 = !DILocation(line: 177, column: 28, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 177, column: 13)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 176, column: 42)
!373 = distinct !DILexicalBlock(scope: !369, file: !3, line: 176, column: 5)
!374 = !DILocation(line: 177, column: 33, scope: !371)
!375 = !DILocation(line: 177, column: 13, scope: !372)
!376 = !DILocation(line: 178, column: 20, scope: !372)
!377 = !DILocation(line: 179, column: 25, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !3, line: 179, column: 13)
!379 = !DILocation(line: 179, column: 13, scope: !372)
!380 = !DILocation(line: 0, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 182, column: 17)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 181, column: 16)
!383 = !DILocation(line: 180, column: 31, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !3, line: 179, column: 31)
!385 = !{!350, !120, i64 12}
!386 = !DILocation(line: 180, column: 21, scope: !384)
!387 = !{!350, !120, i64 8}
!388 = !DILocation(line: 181, column: 9, scope: !384)
!389 = !DILocation(line: 182, column: 25, scope: !381)
!390 = !DILocation(line: 182, column: 17, scope: !382)
!391 = !DILocation(line: 183, column: 25, scope: !381)
!392 = !DILocation(line: 183, column: 17, scope: !381)
!393 = !DILocation(line: 184, column: 25, scope: !394)
!394 = distinct !DILexicalBlock(scope: !382, file: !3, line: 184, column: 17)
!395 = !DILocation(line: 184, column: 17, scope: !382)
!396 = !DILocation(line: 185, column: 25, scope: !394)
!397 = !DILocation(line: 185, column: 17, scope: !394)
!398 = !DILocation(line: 0, scope: !384)
!399 = !DILocation(line: 187, column: 16, scope: !372)
!400 = !DILocation(line: 187, column: 13, scope: !372)
!401 = !DILocation(line: 190, column: 24, scope: !402)
!402 = distinct !DILexicalBlock(scope: !372, file: !3, line: 190, column: 13)
!403 = !DILocation(line: 190, column: 29, scope: !402)
!404 = !DILocation(line: 0, scope: !402)
!405 = !DILocation(line: 190, column: 52, scope: !402)
!406 = !DILocation(line: 190, column: 13, scope: !372)
!407 = !DILocation(line: 191, column: 24, scope: !402)
!408 = !DILocation(line: 191, column: 13, scope: !402)
!409 = !DILocation(line: 0, scope: !372)
!410 = !DILocation(line: 176, column: 38, scope: !373)
!411 = !DILocation(line: 176, column: 5, scope: !373)
!412 = !DILocation(line: 176, column: 19, scope: !373)
!413 = distinct !{!413, !368, !414}
!414 = !DILocation(line: 192, column: 5, scope: !369)
!415 = !DILocation(line: 197, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !317, file: !3, line: 197, column: 9)
!417 = !DILocation(line: 197, column: 9, scope: !317)
!418 = !DILocation(line: 198, column: 25, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 197, column: 22)
!420 = !DILocation(line: 198, column: 23, scope: !419)
!421 = !DILocation(line: 198, column: 19, scope: !419)
!422 = !DILocation(line: 198, column: 17, scope: !419)
!423 = !{!350, !120, i64 4}
!424 = !DILocation(line: 199, column: 22, scope: !419)
!425 = !DILocation(line: 199, column: 39, scope: !419)
!426 = !DILocation(line: 199, column: 33, scope: !419)
!427 = !DILocation(line: 199, column: 20, scope: !419)
!428 = !DILocation(line: 200, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !419, file: !3, line: 200, column: 13)
!430 = !DILocation(line: 200, column: 13, scope: !419)
!431 = !DILocation(line: 200, column: 41, scope: !429)
!432 = !DILocation(line: 200, column: 30, scope: !429)
!433 = !DILocation(line: 205, column: 10, scope: !339)
!434 = !DILocation(line: 205, column: 5, scope: !339)
!435 = !DILocation(line: 208, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !337, file: !3, line: 208, column: 13)
!437 = !DILocation(line: 208, column: 33, scope: !436)
!438 = !DILocation(line: 208, column: 13, scope: !337)
!439 = !DILocation(line: 209, column: 30, scope: !337)
!440 = !DILocation(line: 209, column: 17, scope: !337)
!441 = !DILocation(line: 209, column: 51, scope: !337)
!442 = !DILocation(line: 209, column: 36, scope: !337)
!443 = !DILocation(line: 209, column: 34, scope: !337)
!444 = !DILocation(line: 206, column: 17, scope: !337)
!445 = !DILocation(line: 210, column: 19, scope: !446)
!446 = distinct !DILexicalBlock(scope: !337, file: !3, line: 210, column: 13)
!447 = !DILocation(line: 210, column: 13, scope: !337)
!448 = !DILocation(line: 210, column: 32, scope: !446)
!449 = !DILocation(line: 210, column: 24, scope: !446)
!450 = !DILocation(line: 0, scope: !337)
!451 = !DILocation(line: 211, column: 13, scope: !337)
!452 = !DILocation(line: 212, column: 5, scope: !338)
!453 = !DILocation(line: 0, scope: !436)
!454 = !DILocation(line: 205, column: 38, scope: !338)
!455 = !DILocation(line: 205, column: 5, scope: !338)
!456 = !DILocation(line: 205, column: 19, scope: !338)
!457 = distinct !{!457, !434, !458}
!458 = !DILocation(line: 212, column: 5, scope: !339)
!459 = !DILocation(line: 213, column: 13, scope: !460)
!460 = distinct !DILexicalBlock(scope: !317, file: !3, line: 213, column: 9)
!461 = !DILocation(line: 213, column: 9, scope: !460)
!462 = !DILocation(line: 213, column: 9, scope: !317)
!463 = !DILocation(line: 213, column: 38, scope: !460)
!464 = !DILocation(line: 213, column: 36, scope: !460)
!465 = !DILocation(line: 213, column: 32, scope: !460)
!466 = !DILocation(line: 213, column: 30, scope: !460)
!467 = !{!350, !120, i64 16}
!468 = !DILocation(line: 213, column: 22, scope: !460)
!469 = !DILocation(line: 214, column: 1, scope: !317)
!470 = distinct !DISubprogram(name: "createLatencyReport", scope: !3, file: !3, line: 217, type: !471, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !474)
!471 = !DISubroutineType(types: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !19, line: 43, baseType: !15)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !498, !499, !500}
!475 = !DILocalVariable(name: "report", scope: !470, file: !3, line: 218, type: !473)
!476 = !DILocalVariable(name: "advise_better_vm", scope: !470, file: !3, line: 219, type: !80)
!477 = !DILocalVariable(name: "advise_slowlog_enabled", scope: !470, file: !3, line: 220, type: !80)
!478 = !DILocalVariable(name: "advise_slowlog_tuning", scope: !470, file: !3, line: 221, type: !80)
!479 = !DILocalVariable(name: "advise_slowlog_inspect", scope: !470, file: !3, line: 222, type: !80)
!480 = !DILocalVariable(name: "advise_disk_contention", scope: !470, file: !3, line: 223, type: !80)
!481 = !DILocalVariable(name: "advise_scheduler", scope: !470, file: !3, line: 224, type: !80)
!482 = !DILocalVariable(name: "advise_data_writeback", scope: !470, file: !3, line: 225, type: !80)
!483 = !DILocalVariable(name: "advise_no_appendfsync", scope: !470, file: !3, line: 226, type: !80)
!484 = !DILocalVariable(name: "advise_local_disk", scope: !470, file: !3, line: 227, type: !80)
!485 = !DILocalVariable(name: "advise_ssd", scope: !470, file: !3, line: 228, type: !80)
!486 = !DILocalVariable(name: "advise_write_load_info", scope: !470, file: !3, line: 229, type: !80)
!487 = !DILocalVariable(name: "advise_hz", scope: !470, file: !3, line: 230, type: !80)
!488 = !DILocalVariable(name: "advise_large_objects", scope: !470, file: !3, line: 231, type: !80)
!489 = !DILocalVariable(name: "advise_mass_eviction", scope: !470, file: !3, line: 232, type: !80)
!490 = !DILocalVariable(name: "advise_relax_fsync_policy", scope: !470, file: !3, line: 233, type: !80)
!491 = !DILocalVariable(name: "advise_disable_thp", scope: !470, file: !3, line: 234, type: !80)
!492 = !DILocalVariable(name: "advices", scope: !470, file: !3, line: 235, type: !80)
!493 = !DILocalVariable(name: "di", scope: !470, file: !3, line: 248, type: !238)
!494 = !DILocalVariable(name: "de", scope: !470, file: !3, line: 249, type: !257)
!495 = !DILocalVariable(name: "eventnum", scope: !470, file: !3, line: 250, type: !80)
!496 = !DILocalVariable(name: "event", scope: !497, file: !3, line: 254, type: !15)
!497 = distinct !DILexicalBlock(scope: !470, file: !3, line: 253, column: 40)
!498 = !DILocalVariable(name: "ts", scope: !497, file: !3, line: 255, type: !141)
!499 = !DILocalVariable(name: "ls", scope: !497, file: !3, line: 256, type: !321)
!500 = !DILocalVariable(name: "fork_quality", scope: !501, file: !3, line: 276, type: !15)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 275, column: 40)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 275, column: 13)
!503 = !DILocation(line: 218, column: 18, scope: !470)
!504 = !DILocation(line: 218, column: 9, scope: !470)
!505 = !DILocation(line: 219, column: 9, scope: !470)
!506 = !DILocation(line: 220, column: 9, scope: !470)
!507 = !DILocation(line: 221, column: 9, scope: !470)
!508 = !DILocation(line: 222, column: 9, scope: !470)
!509 = !DILocation(line: 223, column: 9, scope: !470)
!510 = !DILocation(line: 224, column: 9, scope: !470)
!511 = !DILocation(line: 225, column: 9, scope: !470)
!512 = !DILocation(line: 226, column: 9, scope: !470)
!513 = !DILocation(line: 227, column: 9, scope: !470)
!514 = !DILocation(line: 228, column: 9, scope: !470)
!515 = !DILocation(line: 229, column: 9, scope: !470)
!516 = !DILocation(line: 230, column: 9, scope: !470)
!517 = !DILocation(line: 231, column: 9, scope: !470)
!518 = !DILocation(line: 232, column: 9, scope: !470)
!519 = !DILocation(line: 233, column: 9, scope: !470)
!520 = !DILocation(line: 234, column: 9, scope: !470)
!521 = !DILocation(line: 235, column: 9, scope: !470)
!522 = !DILocation(line: 239, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !470, file: !3, line: 239, column: 9)
!524 = !{!525, !124, i64 24}
!525 = !{!"dictht", !123, i64 0, !124, i64 8, !124, i64 16, !124, i64 24}
!526 = !DILocation(line: 239, column: 41, scope: !523)
!527 = !DILocation(line: 240, column: 16, scope: !523)
!528 = !DILocation(line: 240, column: 42, scope: !523)
!529 = !DILocation(line: 239, column: 46, scope: !523)
!530 = !DILocation(line: 242, column: 18, scope: !531)
!531 = distinct !DILexicalBlock(scope: !523, file: !3, line: 241, column: 5)
!532 = !DILocation(line: 243, column: 9, scope: !531)
!533 = !DILocation(line: 250, column: 9, scope: !470)
!534 = !DILocation(line: 252, column: 10, scope: !470)
!535 = !DILocation(line: 248, column: 19, scope: !470)
!536 = !DILocation(line: 253, column: 5, scope: !470)
!537 = !DILocation(line: 253, column: 17, scope: !470)
!538 = !DILocation(line: 249, column: 16, scope: !470)
!539 = !DILocation(line: 253, column: 31, scope: !470)
!540 = !DILocation(line: 254, column: 23, scope: !497)
!541 = !DILocation(line: 254, column: 15, scope: !497)
!542 = !DILocation(line: 255, column: 40, scope: !497)
!543 = !{!121, !121, i64 0}
!544 = !DILocation(line: 255, column: 35, scope: !497)
!545 = !DILocation(line: 256, column: 9, scope: !497)
!546 = !DILocation(line: 258, column: 16, scope: !547)
!547 = distinct !DILexicalBlock(scope: !497, file: !3, line: 258, column: 13)
!548 = !DILocation(line: 258, column: 13, scope: !497)
!549 = distinct !{!549, !536, !550}
!550 = !DILocation(line: 380, column: 5, scope: !470)
!551 = !DILocation(line: 259, column: 17, scope: !497)
!552 = !DILocation(line: 260, column: 22, scope: !553)
!553 = distinct !DILexicalBlock(scope: !497, file: !3, line: 260, column: 13)
!554 = !DILocation(line: 260, column: 13, scope: !497)
!555 = !DILocation(line: 261, column: 22, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !3, line: 260, column: 28)
!557 = !DILocation(line: 262, column: 9, scope: !556)
!558 = !DILocation(line: 0, scope: !470)
!559 = !DILocation(line: 256, column: 29, scope: !497)
!560 = !DILocation(line: 263, column: 9, scope: !497)
!561 = !DILocation(line: 268, column: 16, scope: !497)
!562 = !DILocation(line: 269, column: 32, scope: !497)
!563 = !DILocation(line: 269, column: 13, scope: !497)
!564 = !DILocation(line: 270, column: 32, scope: !497)
!565 = !DILocation(line: 270, column: 13, scope: !497)
!566 = !DILocation(line: 271, column: 25, scope: !497)
!567 = !DILocation(line: 271, column: 13, scope: !497)
!568 = !DILocation(line: 271, column: 32, scope: !497)
!569 = !DILocation(line: 271, column: 31, scope: !497)
!570 = !DILocation(line: 272, column: 33, scope: !497)
!571 = !DILocation(line: 272, column: 13, scope: !497)
!572 = !DILocation(line: 265, column: 18, scope: !497)
!573 = !DILocation(line: 275, column: 14, scope: !502)
!574 = !DILocation(line: 275, column: 13, scope: !497)
!575 = !DILocation(line: 277, column: 24, scope: !576)
!576 = distinct !DILexicalBlock(scope: !501, file: !3, line: 277, column: 17)
!577 = !{!119, !126, i64 1128}
!578 = !DILocation(line: 277, column: 39, scope: !576)
!579 = !DILocation(line: 277, column: 17, scope: !501)
!580 = !DILocation(line: 280, column: 24, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !3, line: 277, column: 45)
!582 = !DILocation(line: 281, column: 13, scope: !581)
!583 = !DILocation(line: 281, column: 46, scope: !584)
!584 = distinct !DILexicalBlock(scope: !576, file: !3, line: 281, column: 24)
!585 = !DILocation(line: 281, column: 24, scope: !576)
!586 = !DILocation(line: 284, column: 24, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 281, column: 52)
!588 = !DILocation(line: 285, column: 13, scope: !587)
!589 = !DILocation(line: 285, column: 46, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !3, line: 285, column: 24)
!591 = !DILocation(line: 285, column: 24, scope: !584)
!592 = !DILocation(line: 287, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 285, column: 53)
!594 = !DILocation(line: 0, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !3, line: 287, column: 20)
!596 = !DILocation(line: 276, column: 19, scope: !501)
!597 = !DILocation(line: 290, column: 22, scope: !501)
!598 = !DILocation(line: 293, column: 9, scope: !501)
!599 = !DILocation(line: 0, scope: !581)
!600 = !DILocation(line: 0, scope: !501)
!601 = !DILocation(line: 296, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !497, file: !3, line: 296, column: 13)
!603 = !DILocation(line: 296, column: 13, scope: !497)
!604 = !DILocation(line: 297, column: 24, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 297, column: 17)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 296, column: 43)
!607 = !{!119, !125, i64 1184}
!608 = !DILocation(line: 297, column: 48, scope: !605)
!609 = !DILocation(line: 297, column: 17, scope: !606)
!610 = !DILocation(line: 301, column: 31, scope: !611)
!611 = distinct !DILexicalBlock(scope: !605, file: !3, line: 300, column: 24)
!612 = !{!119, !125, i64 3096}
!613 = !DILocation(line: 300, column: 60, scope: !611)
!614 = !DILocation(line: 300, column: 24, scope: !605)
!615 = !DILocation(line: 0, scope: !616)
!616 = distinct !DILexicalBlock(scope: !605, file: !3, line: 297, column: 53)
!617 = !DILocation(line: 308, column: 21, scope: !606)
!618 = !DILocation(line: 309, column: 9, scope: !606)
!619 = !DILocation(line: 0, scope: !606)
!620 = !DILocation(line: 312, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !497, file: !3, line: 312, column: 13)
!622 = !DILocation(line: 312, column: 13, scope: !497)
!623 = !DILocation(line: 314, column: 20, scope: !624)
!624 = distinct !DILexicalBlock(scope: !621, file: !3, line: 312, column: 48)
!625 = !DILocation(line: 315, column: 9, scope: !624)
!626 = !DILocation(line: 0, scope: !624)
!627 = !DILocation(line: 318, column: 14, scope: !628)
!628 = distinct !DILexicalBlock(scope: !497, file: !3, line: 318, column: 13)
!629 = !DILocation(line: 318, column: 13, scope: !497)
!630 = !DILocation(line: 323, column: 21, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !3, line: 318, column: 59)
!632 = !DILocation(line: 324, column: 9, scope: !631)
!633 = !DILocation(line: 0, scope: !631)
!634 = !DILocation(line: 326, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !497, file: !3, line: 326, column: 13)
!636 = !DILocation(line: 326, column: 13, scope: !497)
!637 = !DILocation(line: 330, column: 21, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 326, column: 58)
!639 = !DILocation(line: 331, column: 9, scope: !638)
!640 = !DILocation(line: 0, scope: !638)
!641 = !DILocation(line: 333, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !497, file: !3, line: 333, column: 13)
!643 = !DILocation(line: 333, column: 13, scope: !497)
!644 = !DILocation(line: 337, column: 21, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 333, column: 51)
!646 = !DILocation(line: 338, column: 9, scope: !645)
!647 = !DILocation(line: 0, scope: !645)
!648 = !DILocation(line: 340, column: 14, scope: !649)
!649 = distinct !DILexicalBlock(scope: !497, file: !3, line: 340, column: 13)
!650 = !DILocation(line: 340, column: 13, scope: !497)
!651 = !DILocation(line: 342, column: 20, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !3, line: 340, column: 52)
!653 = !DILocation(line: 343, column: 9, scope: !652)
!654 = !DILocation(line: 0, scope: !652)
!655 = !DILocation(line: 345, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !497, file: !3, line: 345, column: 13)
!657 = !DILocation(line: 345, column: 44, scope: !656)
!658 = !DILocation(line: 346, column: 14, scope: !656)
!659 = !DILocation(line: 345, column: 13, scope: !497)
!660 = !DILocation(line: 349, column: 21, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !3, line: 346, column: 55)
!662 = !DILocation(line: 350, column: 9, scope: !661)
!663 = !DILocation(line: 0, scope: !661)
!664 = !DILocation(line: 352, column: 14, scope: !665)
!665 = distinct !DILexicalBlock(scope: !497, file: !3, line: 352, column: 13)
!666 = !DILocation(line: 352, column: 57, scope: !665)
!667 = !DILocation(line: 353, column: 14, scope: !665)
!668 = !DILocation(line: 352, column: 13, scope: !497)
!669 = !DILocation(line: 358, column: 21, scope: !670)
!670 = distinct !DILexicalBlock(scope: !665, file: !3, line: 353, column: 46)
!671 = !DILocation(line: 359, column: 9, scope: !670)
!672 = !DILocation(line: 0, scope: !670)
!673 = !DILocation(line: 362, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !497, file: !3, line: 362, column: 13)
!675 = !DILocation(line: 362, column: 13, scope: !497)
!676 = !DILocation(line: 365, column: 21, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 362, column: 48)
!678 = !DILocation(line: 366, column: 9, scope: !677)
!679 = !DILocation(line: 0, scope: !677)
!680 = !DILocation(line: 369, column: 14, scope: !681)
!681 = distinct !DILexicalBlock(scope: !497, file: !3, line: 369, column: 13)
!682 = !DILocation(line: 369, column: 13, scope: !497)
!683 = !DILocation(line: 371, column: 20, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 369, column: 48)
!685 = !DILocation(line: 372, column: 9, scope: !684)
!686 = !DILocation(line: 0, scope: !684)
!687 = !DILocation(line: 374, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !497, file: !3, line: 374, column: 13)
!689 = !DILocation(line: 374, column: 13, scope: !497)
!690 = !DILocation(line: 376, column: 20, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 374, column: 50)
!692 = !DILocation(line: 377, column: 9, scope: !691)
!693 = !DILocation(line: 0, scope: !691)
!694 = !DILocation(line: 379, column: 18, scope: !497)
!695 = !DILocation(line: 0, scope: !497)
!696 = !DILocation(line: 0, scope: !547)
!697 = !DILocation(line: 381, column: 5, scope: !470)
!698 = !DILocation(line: 82, column: 12, scope: !108, inlinedAt: !699)
!699 = distinct !DILocation(line: 384, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !470, file: !3, line: 384, column: 9)
!701 = !DILocation(line: 82, column: 5, scope: !108, inlinedAt: !699)
!702 = !DILocation(line: 384, column: 35, scope: !700)
!703 = !DILocation(line: 384, column: 9, scope: !470)
!704 = !DILocation(line: 386, column: 16, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 384, column: 40)
!706 = !DILocation(line: 387, column: 5, scope: !705)
!707 = !DILocation(line: 389, column: 23, scope: !708)
!708 = distinct !DILexicalBlock(scope: !470, file: !3, line: 389, column: 9)
!709 = !DILocation(line: 390, column: 18, scope: !710)
!710 = distinct !DILexicalBlock(scope: !708, file: !3, line: 389, column: 40)
!711 = !DILocation(line: 391, column: 5, scope: !710)
!712 = !DILocation(line: 389, column: 34, scope: !708)
!713 = !DILocation(line: 391, column: 25, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !3, line: 391, column: 16)
!715 = !DILocation(line: 391, column: 29, scope: !714)
!716 = !DILocation(line: 392, column: 18, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 391, column: 46)
!718 = !DILocation(line: 393, column: 5, scope: !717)
!719 = !DILocation(line: 397, column: 18, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !3, line: 393, column: 12)
!721 = !DILocation(line: 398, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !3, line: 398, column: 13)
!723 = !DILocation(line: 398, column: 13, scope: !720)
!724 = !DILocation(line: 399, column: 22, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !3, line: 398, column: 31)
!726 = !DILocation(line: 400, column: 9, scope: !725)
!727 = !DILocation(line: 0, scope: !720)
!728 = !DILocation(line: 403, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !720, file: !3, line: 403, column: 13)
!730 = !DILocation(line: 403, column: 13, scope: !720)
!731 = !DILocation(line: 404, column: 335, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 403, column: 37)
!733 = !DILocation(line: 404, column: 360, scope: !732)
!734 = !DILocation(line: 404, column: 22, scope: !732)
!735 = !DILocation(line: 405, column: 9, scope: !732)
!736 = !DILocation(line: 0, scope: !725)
!737 = !DILocation(line: 407, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !720, file: !3, line: 407, column: 13)
!739 = !DILocation(line: 407, column: 13, scope: !720)
!740 = !DILocation(line: 408, column: 247, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !3, line: 407, column: 36)
!742 = !DILocation(line: 408, column: 272, scope: !741)
!743 = !DILocation(line: 408, column: 22, scope: !741)
!744 = !DILocation(line: 409, column: 9, scope: !741)
!745 = !DILocation(line: 0, scope: !732)
!746 = !DILocation(line: 411, column: 13, scope: !747)
!747 = distinct !DILexicalBlock(scope: !720, file: !3, line: 411, column: 13)
!748 = !DILocation(line: 411, column: 13, scope: !720)
!749 = !DILocation(line: 412, column: 22, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 411, column: 37)
!751 = !DILocation(line: 413, column: 9, scope: !750)
!752 = !DILocation(line: 0, scope: !741)
!753 = !DILocation(line: 416, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !720, file: !3, line: 416, column: 13)
!755 = !DILocation(line: 416, column: 13, scope: !720)
!756 = !DILocation(line: 417, column: 22, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !3, line: 416, column: 31)
!758 = !DILocation(line: 423, column: 9, scope: !757)
!759 = !DILocation(line: 0, scope: !750)
!760 = !DILocation(line: 426, column: 13, scope: !761)
!761 = distinct !DILexicalBlock(scope: !720, file: !3, line: 426, column: 13)
!762 = !DILocation(line: 426, column: 13, scope: !720)
!763 = !DILocation(line: 427, column: 22, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 426, column: 32)
!765 = !DILocation(line: 428, column: 9, scope: !764)
!766 = !DILocation(line: 0, scope: !757)
!767 = !DILocation(line: 430, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !720, file: !3, line: 430, column: 13)
!769 = !DILocation(line: 430, column: 13, scope: !720)
!770 = !DILocation(line: 431, column: 22, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !3, line: 430, column: 25)
!772 = !DILocation(line: 432, column: 9, scope: !771)
!773 = !DILocation(line: 0, scope: !764)
!774 = !DILocation(line: 434, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !720, file: !3, line: 434, column: 13)
!776 = !DILocation(line: 434, column: 13, scope: !720)
!777 = !DILocation(line: 435, column: 22, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 434, column: 36)
!779 = !DILocation(line: 436, column: 9, scope: !778)
!780 = !DILocation(line: 0, scope: !771)
!781 = !DILocation(line: 438, column: 13, scope: !782)
!782 = distinct !DILexicalBlock(scope: !720, file: !3, line: 438, column: 13)
!783 = !DILocation(line: 438, column: 13, scope: !720)
!784 = !DILocation(line: 439, column: 22, scope: !785)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 438, column: 37)
!786 = !DILocation(line: 440, column: 9, scope: !785)
!787 = !DILocation(line: 0, scope: !778)
!788 = !DILocation(line: 442, column: 13, scope: !789)
!789 = distinct !DILexicalBlock(scope: !720, file: !3, line: 442, column: 13)
!790 = !DILocation(line: 442, column: 13, scope: !720)
!791 = !DILocation(line: 443, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !789, file: !3, line: 442, column: 36)
!793 = !DILocation(line: 444, column: 9, scope: !792)
!794 = !DILocation(line: 0, scope: !785)
!795 = !DILocation(line: 446, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !720, file: !3, line: 446, column: 13)
!797 = !DILocation(line: 446, column: 49, scope: !796)
!798 = !DILocation(line: 446, column: 59, scope: !796)
!799 = !DILocation(line: 446, column: 39, scope: !796)
!800 = !DILocation(line: 447, column: 22, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !3, line: 446, column: 80)
!802 = !DILocation(line: 448, column: 9, scope: !801)
!803 = !DILocation(line: 0, scope: !792)
!804 = !DILocation(line: 450, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !720, file: !3, line: 450, column: 13)
!806 = !DILocation(line: 450, column: 13, scope: !720)
!807 = !DILocation(line: 451, column: 22, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 450, column: 37)
!809 = !DILocation(line: 452, column: 9, scope: !808)
!810 = !DILocation(line: 0, scope: !801)
!811 = !DILocation(line: 454, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !720, file: !3, line: 454, column: 13)
!813 = !DILocation(line: 454, column: 33, scope: !812)
!814 = !DILocation(line: 454, column: 36, scope: !812)
!815 = !DILocation(line: 454, column: 23, scope: !812)
!816 = !DILocation(line: 455, column: 22, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !3, line: 454, column: 43)
!818 = !DILocation(line: 456, column: 9, scope: !817)
!819 = !DILocation(line: 0, scope: !808)
!820 = !DILocation(line: 458, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !720, file: !3, line: 458, column: 13)
!822 = !DILocation(line: 458, column: 13, scope: !720)
!823 = !DILocation(line: 459, column: 22, scope: !824)
!824 = distinct !DILexicalBlock(scope: !821, file: !3, line: 458, column: 35)
!825 = !DILocation(line: 460, column: 9, scope: !824)
!826 = !DILocation(line: 0, scope: !817)
!827 = !DILocation(line: 462, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !720, file: !3, line: 462, column: 13)
!829 = !DILocation(line: 462, column: 13, scope: !720)
!830 = !DILocation(line: 463, column: 22, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 462, column: 35)
!832 = !DILocation(line: 464, column: 9, scope: !831)
!833 = !DILocation(line: 0, scope: !824)
!834 = !DILocation(line: 466, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !720, file: !3, line: 466, column: 13)
!836 = !DILocation(line: 466, column: 13, scope: !720)
!837 = !DILocation(line: 467, column: 22, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 466, column: 33)
!839 = !DILocation(line: 468, column: 9, scope: !838)
!840 = !DILocation(line: 0, scope: !710)
!841 = !DILocation(line: 472, column: 1, scope: !470)
!842 = distinct !DISubprogram(name: "latencyCommandReplyWithSamples", scope: !3, file: !3, line: 478, type: !843, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1018)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !845, !141}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !135, line: 780, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !135, line: 723, size: 135360, elements: !848)
!848 = !{!849, !850, !851, !892, !902, !903, !908, !909, !910, !911, !913, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !957, !958, !959, !960, !961, !962, !963, !964, !968, !969, !973, !974, !990, !991, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !847, file: !135, line: 724, baseType: !55, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !847, file: !135, line: 725, baseType: !80, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !847, file: !135, line: 726, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !135, line: 656, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !135, line: 647, size: 512, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !854, file: !135, line: 648, baseType: !243, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !854, file: !135, line: 649, baseType: !243, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !854, file: !135, line: 650, baseType: !243, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !854, file: !135, line: 651, baseType: !243, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !854, file: !135, line: 652, baseType: !243, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !854, file: !135, line: 653, baseType: !80, size: 32, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !854, file: !135, line: 654, baseType: !136, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !854, file: !135, line: 655, baseType: !864, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !866, line: 54, baseType: !867)
!866 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !866, line: 47, size: 384, elements: !868)
!868 = !{!869, !878, !879, !883, !887, !891}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !867, file: !866, line: 48, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !866, line: 40, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !866, line: 36, size: 192, elements: !873)
!873 = !{!874, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !872, file: !866, line: 37, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !866, line: 38, baseType: !875, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !872, file: !866, line: 39, baseType: !6, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !867, file: !866, line: 49, baseType: !870, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !867, file: !866, line: 50, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!6, !6}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !867, file: !866, line: 51, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !6}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !867, file: !866, line: 52, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!80, !6, !6}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !867, file: !866, line: 53, baseType: !12, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !847, file: !135, line: 727, baseType: !893, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !135, line: 622, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !135, line: 614, size: 128, elements: !896)
!896 = !{!897, !898, !899, !900, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !895, file: !135, line: 615, baseType: !47, size: 4, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !895, file: !135, line: 616, baseType: !47, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !895, file: !135, line: 617, baseType: !47, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !895, file: !135, line: 620, baseType: !80, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !895, file: !135, line: 621, baseType: !6, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !847, file: !135, line: 728, baseType: !473, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !847, file: !135, line: 729, baseType: !904, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !905, line: 40, baseType: !906)
!905 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !907, line: 129, baseType: !12)
!907 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !847, file: !135, line: 730, baseType: !473, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !847, file: !135, line: 734, baseType: !904, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !847, file: !135, line: 735, baseType: !80, size: 32, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !847, file: !135, line: 736, baseType: !912, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !847, file: !135, line: 737, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !135, line: 1307, size: 640, elements: !916)
!916 = !{!917, !918, !923, !924, !925, !926, !932, !933, !934, !935, !936}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !915, file: !135, line: 1308, baseType: !15, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !915, file: !135, line: 1309, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !135, line: 1305, baseType: !921)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !845}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !915, file: !135, line: 1310, baseType: !80, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !915, file: !135, line: 1311, baseType: !15, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !135, line: 1312, baseType: !80, size: 32, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !915, file: !135, line: 1315, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !135, line: 1306, baseType: !929)
!929 = !DISubroutineType(types: !930)
!930 = !{!931, !914, !912, !80, !931}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !915, file: !135, line: 1317, baseType: !80, size: 32, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !915, file: !135, line: 1318, baseType: !80, size: 32, offset: 416)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !915, file: !135, line: 1319, baseType: !80, size: 32, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !915, file: !135, line: 1320, baseType: !136, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !915, file: !135, line: 1320, baseType: !136, size: 64, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !847, file: !135, line: 737, baseType: !914, size: 64, offset: 704)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !847, file: !135, line: 738, baseType: !80, size: 32, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !847, file: !135, line: 739, baseType: !80, size: 32, offset: 800)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !847, file: !135, line: 740, baseType: !11, size: 64, offset: 832)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !847, file: !135, line: 741, baseType: !864, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !847, file: !135, line: 742, baseType: !14, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !847, file: !135, line: 743, baseType: !904, size: 64, offset: 1024)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !847, file: !135, line: 745, baseType: !158, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !847, file: !135, line: 746, baseType: !158, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !847, file: !135, line: 747, baseType: !158, size: 64, offset: 1216)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !135, line: 748, baseType: !80, size: 32, offset: 1280)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !847, file: !135, line: 749, baseType: !80, size: 32, offset: 1312)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !847, file: !135, line: 750, baseType: !80, size: 32, offset: 1344)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !847, file: !135, line: 751, baseType: !80, size: 32, offset: 1376)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !847, file: !135, line: 752, baseType: !80, size: 32, offset: 1408)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !847, file: !135, line: 753, baseType: !953, size: 64, offset: 1472)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !954, line: 173, baseType: !955)
!954 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !907, line: 100, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !907, line: 44, baseType: !11)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !847, file: !135, line: 754, baseType: !953, size: 64, offset: 1536)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !847, file: !135, line: 755, baseType: !473, size: 64, offset: 1600)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !847, file: !135, line: 756, baseType: !136, size: 64, offset: 1664)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !847, file: !135, line: 757, baseType: !136, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !847, file: !135, line: 758, baseType: !136, size: 64, offset: 1792)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !847, file: !135, line: 759, baseType: !136, size: 64, offset: 1856)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !847, file: !135, line: 760, baseType: !136, size: 64, offset: 1920)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !847, file: !135, line: 763, baseType: !965, size: 328, offset: 1984)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 328, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 41)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !847, file: !135, line: 764, baseType: !80, size: 32, offset: 2336)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !847, file: !135, line: 765, baseType: !970, size: 368, offset: 2368)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 368, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 46)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !847, file: !135, line: 766, baseType: !80, size: 32, offset: 2752)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !847, file: !135, line: 767, baseType: !975, size: 256, offset: 2816)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !135, line: 673, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !135, line: 665, size: 256, elements: !977)
!977 = !{!978, !986, !987, !988, !989}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !976, file: !135, line: 666, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !135, line: 663, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !135, line: 659, size: 192, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !981, file: !135, line: 660, baseType: !912, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !981, file: !135, line: 661, baseType: !80, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !981, file: !135, line: 662, baseType: !914, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !976, file: !135, line: 667, baseType: !80, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !976, file: !135, line: 668, baseType: !80, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !976, file: !135, line: 671, baseType: !80, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !976, file: !135, line: 672, baseType: !158, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !847, file: !135, line: 768, baseType: !80, size: 32, offset: 3072)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !847, file: !135, line: 769, baseType: !992, size: 704, offset: 3136)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !135, line: 703, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !135, line: 677, size: 704, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !993, file: !135, line: 679, baseType: !134, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !993, file: !135, line: 683, baseType: !243, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !993, file: !135, line: 685, baseType: !893, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !993, file: !135, line: 689, baseType: !904, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !993, file: !135, line: 690, baseType: !893, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !993, file: !135, line: 691, baseType: !893, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !993, file: !135, line: 692, baseType: !134, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !993, file: !135, line: 692, baseType: !134, size: 64, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !993, file: !135, line: 693, baseType: !80, size: 32, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !993, file: !135, line: 696, baseType: !80, size: 32, offset: 544)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !993, file: !135, line: 697, baseType: !136, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !993, file: !135, line: 700, baseType: !6, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !847, file: !135, line: 770, baseType: !136, size: 64, offset: 3840)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !847, file: !135, line: 771, baseType: !864, size: 64, offset: 3904)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !847, file: !135, line: 772, baseType: !243, size: 64, offset: 3968)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !847, file: !135, line: 773, baseType: !864, size: 64, offset: 4032)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !847, file: !135, line: 774, baseType: !473, size: 64, offset: 4096)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !847, file: !135, line: 775, baseType: !870, size: 64, offset: 4160)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !847, file: !135, line: 778, baseType: !80, size: 32, offset: 4224)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !847, file: !135, line: 779, baseType: !1015, size: 131072, offset: 4256)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 131072, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 16384)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024}
!1019 = !DILocalVariable(name: "c", arg: 1, scope: !842, file: !3, line: 478, type: !845)
!1020 = !DILocalVariable(name: "ts", arg: 2, scope: !842, file: !3, line: 478, type: !141)
!1021 = !DILocalVariable(name: "replylen", scope: !842, file: !3, line: 479, type: !6)
!1022 = !DILocalVariable(name: "samples", scope: !842, file: !3, line: 480, type: !80)
!1023 = !DILocalVariable(name: "j", scope: !842, file: !3, line: 480, type: !80)
!1024 = !DILocalVariable(name: "i", scope: !1025, file: !3, line: 483, type: !80)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 482, column: 42)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 482, column: 5)
!1027 = distinct !DILexicalBlock(scope: !842, file: !3, line: 482, column: 5)
!1028 = !DILocation(line: 478, column: 45, scope: !842)
!1029 = !DILocation(line: 478, column: 74, scope: !842)
!1030 = !DILocation(line: 479, column: 22, scope: !842)
!1031 = !DILocation(line: 479, column: 11, scope: !842)
!1032 = !DILocation(line: 480, column: 9, scope: !842)
!1033 = !DILocation(line: 480, column: 22, scope: !842)
!1034 = !DILocation(line: 482, column: 10, scope: !1027)
!1035 = !DILocation(line: 482, column: 5, scope: !1027)
!1036 = !DILocation(line: 483, column: 22, scope: !1025)
!1037 = !DILocation(line: 483, column: 26, scope: !1025)
!1038 = !DILocation(line: 483, column: 31, scope: !1025)
!1039 = !DILocation(line: 483, column: 13, scope: !1025)
!1040 = !DILocation(line: 485, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 485, column: 13)
!1042 = !DILocation(line: 485, column: 28, scope: !1041)
!1043 = !DILocation(line: 485, column: 33, scope: !1041)
!1044 = !DILocation(line: 485, column: 13, scope: !1025)
!1045 = !DILocation(line: 486, column: 9, scope: !1025)
!1046 = !DILocation(line: 487, column: 43, scope: !1025)
!1047 = !DILocation(line: 487, column: 28, scope: !1025)
!1048 = !DILocation(line: 487, column: 9, scope: !1025)
!1049 = !DILocation(line: 488, column: 43, scope: !1025)
!1050 = !DILocation(line: 488, column: 28, scope: !1025)
!1051 = !DILocation(line: 488, column: 9, scope: !1025)
!1052 = !DILocation(line: 489, column: 16, scope: !1025)
!1053 = !DILocation(line: 490, column: 5, scope: !1026)
!1054 = !DILocation(line: 0, scope: !1025)
!1055 = !DILocation(line: 0, scope: !1041)
!1056 = !DILocation(line: 482, column: 38, scope: !1026)
!1057 = !DILocation(line: 482, column: 5, scope: !1026)
!1058 = !DILocation(line: 482, column: 19, scope: !1026)
!1059 = distinct !{!1059, !1035, !1060}
!1060 = !DILocation(line: 490, column: 5, scope: !1027)
!1061 = !DILocation(line: 491, column: 43, scope: !842)
!1062 = !DILocation(line: 491, column: 5, scope: !842)
!1063 = !DILocation(line: 492, column: 1, scope: !842)
!1064 = distinct !DISubprogram(name: "latencyCommandReplyWithLatestEvents", scope: !3, file: !3, line: 496, type: !921, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1071, !1072}
!1066 = !DILocalVariable(name: "c", arg: 1, scope: !1064, file: !3, line: 496, type: !845)
!1067 = !DILocalVariable(name: "di", scope: !1064, file: !3, line: 497, type: !238)
!1068 = !DILocalVariable(name: "de", scope: !1064, file: !3, line: 498, type: !257)
!1069 = !DILocalVariable(name: "event", scope: !1070, file: !3, line: 503, type: !15)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 502, column: 40)
!1071 = !DILocalVariable(name: "ts", scope: !1070, file: !3, line: 504, type: !141)
!1072 = !DILocalVariable(name: "last", scope: !1070, file: !3, line: 505, type: !80)
!1073 = !DILocation(line: 496, column: 50, scope: !1064)
!1074 = !DILocation(line: 500, column: 28, scope: !1064)
!1075 = !DILocation(line: 500, column: 5, scope: !1064)
!1076 = !DILocation(line: 501, column: 33, scope: !1064)
!1077 = !DILocation(line: 501, column: 10, scope: !1064)
!1078 = !DILocation(line: 497, column: 19, scope: !1064)
!1079 = !DILocation(line: 502, column: 5, scope: !1064)
!1080 = !DILocation(line: 502, column: 17, scope: !1064)
!1081 = !DILocation(line: 498, column: 16, scope: !1064)
!1082 = !DILocation(line: 502, column: 31, scope: !1064)
!1083 = !DILocation(line: 503, column: 23, scope: !1070)
!1084 = !DILocation(line: 503, column: 15, scope: !1070)
!1085 = !DILocation(line: 504, column: 40, scope: !1070)
!1086 = !DILocation(line: 504, column: 35, scope: !1070)
!1087 = !DILocation(line: 505, column: 25, scope: !1070)
!1088 = !DILocation(line: 505, column: 46, scope: !1070)
!1089 = !DILocation(line: 505, column: 51, scope: !1070)
!1090 = !DILocation(line: 505, column: 13, scope: !1070)
!1091 = !DILocation(line: 507, column: 9, scope: !1070)
!1092 = !DILocation(line: 508, column: 9, scope: !1070)
!1093 = !DILocation(line: 509, column: 28, scope: !1070)
!1094 = !DILocation(line: 509, column: 46, scope: !1070)
!1095 = !DILocation(line: 509, column: 9, scope: !1070)
!1096 = !DILocation(line: 510, column: 46, scope: !1070)
!1097 = !DILocation(line: 510, column: 28, scope: !1070)
!1098 = !DILocation(line: 510, column: 9, scope: !1070)
!1099 = !DILocation(line: 511, column: 32, scope: !1070)
!1100 = !DILocation(line: 511, column: 28, scope: !1070)
!1101 = !DILocation(line: 511, column: 9, scope: !1070)
!1102 = distinct !{!1102, !1079, !1103}
!1103 = !DILocation(line: 512, column: 5, scope: !1064)
!1104 = !DILocation(line: 513, column: 5, scope: !1064)
!1105 = !DILocation(line: 514, column: 1, scope: !1064)
!1106 = distinct !DISubprogram(name: "latencyCommandGenSparkeline", scope: !3, file: !3, line: 517, type: !1107, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!473, !15, !141}
!1109 = !{!1110, !1111, !1112, !1113, !1128, !1129, !1130, !1131, !1135, !1136}
!1110 = !DILocalVariable(name: "event", arg: 1, scope: !1106, file: !3, line: 517, type: !15)
!1111 = !DILocalVariable(name: "ts", arg: 2, scope: !1106, file: !3, line: 517, type: !141)
!1112 = !DILocalVariable(name: "j", scope: !1106, file: !3, line: 518, type: !80)
!1113 = !DILocalVariable(name: "seq", scope: !1106, file: !3, line: 519, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sequence", file: !1116, line: 39, size: 256, elements: !1117)
!1116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.h", directory: "/root/.unikraft/apps/redis/build")
!1117 = !{!1118, !1119, !1120, !1126, !1127}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1115, file: !1116, line: 40, baseType: !80, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !1115, file: !1116, line: 41, baseType: !80, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !1115, file: !1116, line: 42, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sample", file: !1116, line: 34, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1122, file: !1116, line: 35, baseType: !13, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1122, file: !1116, line: 36, baseType: !15, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1115, file: !1116, line: 43, baseType: !13, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1115, file: !1116, line: 43, baseType: !13, size: 64, offset: 192)
!1128 = !DILocalVariable(name: "graph", scope: !1106, file: !3, line: 520, type: !473)
!1129 = !DILocalVariable(name: "min", scope: !1106, file: !3, line: 521, type: !45)
!1130 = !DILocalVariable(name: "max", scope: !1106, file: !3, line: 521, type: !45)
!1131 = !DILocalVariable(name: "i", scope: !1132, file: !3, line: 524, type: !80)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 523, column: 42)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 523, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 523, column: 5)
!1135 = !DILocalVariable(name: "elapsed", scope: !1132, file: !3, line: 525, type: !80)
!1136 = !DILocalVariable(name: "buf", scope: !1132, file: !3, line: 526, type: !1137)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !1138)
!1138 = !{!1139}
!1139 = !DISubrange(count: 64)
!1140 = !DILocation(line: 517, column: 39, scope: !1106)
!1141 = !DILocation(line: 517, column: 72, scope: !1106)
!1142 = !DILocation(line: 519, column: 28, scope: !1106)
!1143 = !DILocation(line: 519, column: 22, scope: !1106)
!1144 = !DILocation(line: 520, column: 17, scope: !1106)
!1145 = !DILocation(line: 520, column: 9, scope: !1106)
!1146 = !DILocation(line: 521, column: 14, scope: !1106)
!1147 = !DILocation(line: 521, column: 23, scope: !1106)
!1148 = !DILocation(line: 518, column: 9, scope: !1106)
!1149 = !DILocation(line: 523, column: 10, scope: !1134)
!1150 = !DILocation(line: 523, column: 5, scope: !1134)
!1151 = !DILocation(line: 524, column: 22, scope: !1132)
!1152 = !DILocation(line: 524, column: 26, scope: !1132)
!1153 = !DILocation(line: 524, column: 31, scope: !1132)
!1154 = !DILocation(line: 524, column: 13, scope: !1132)
!1155 = !DILocation(line: 526, column: 9, scope: !1132)
!1156 = !DILocation(line: 526, column: 14, scope: !1132)
!1157 = !DILocation(line: 528, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 528, column: 13)
!1159 = !DILocation(line: 528, column: 28, scope: !1158)
!1160 = !DILocation(line: 528, column: 33, scope: !1158)
!1161 = !DILocation(line: 528, column: 13, scope: !1132)
!1162 = !DILocation(line: 530, column: 18, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 530, column: 13)
!1164 = !{!1165, !120, i64 0}
!1165 = !{!"sequence", !120, i64 0, !120, i64 4, !123, i64 8, !126, i64 16, !126, i64 24}
!1166 = !DILocation(line: 530, column: 25, scope: !1163)
!1167 = !DILocation(line: 0, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 533, column: 17)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 532, column: 16)
!1170 = !DILocation(line: 530, column: 13, scope: !1132)
!1171 = !DILocation(line: 533, column: 40, scope: !1168)
!1172 = !DILocation(line: 533, column: 17, scope: !1169)
!1173 = !DILocation(line: 533, column: 47, scope: !1168)
!1174 = !DILocation(line: 0, scope: !1106)
!1175 = !DILocation(line: 534, column: 40, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 534, column: 17)
!1177 = !DILocation(line: 534, column: 17, scope: !1169)
!1178 = !DILocation(line: 0, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 530, column: 31)
!1180 = !DILocation(line: 538, column: 19, scope: !1132)
!1181 = !DILocation(line: 538, column: 47, scope: !1132)
!1182 = !DILocation(line: 525, column: 13, scope: !1132)
!1183 = !DILocation(line: 539, column: 21, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 539, column: 13)
!1185 = !DILocation(line: 539, column: 13, scope: !1132)
!1186 = !DILocation(line: 540, column: 13, scope: !1184)
!1187 = !DILocation(line: 541, column: 26, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 541, column: 18)
!1189 = !DILocation(line: 541, column: 18, scope: !1184)
!1190 = !DILocation(line: 542, column: 13, scope: !1188)
!1191 = !DILocation(line: 543, column: 26, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 543, column: 18)
!1193 = !DILocation(line: 543, column: 18, scope: !1188)
!1194 = !DILocation(line: 544, column: 13, scope: !1192)
!1195 = !DILocation(line: 546, column: 13, scope: !1192)
!1196 = !DILocation(line: 547, column: 55, scope: !1132)
!1197 = !DILocation(line: 547, column: 40, scope: !1132)
!1198 = !DILocation(line: 547, column: 9, scope: !1132)
!1199 = !DILocation(line: 548, column: 5, scope: !1133)
!1200 = !DILocation(line: 0, scope: !1158)
!1201 = !DILocation(line: 523, column: 38, scope: !1133)
!1202 = !DILocation(line: 523, column: 5, scope: !1133)
!1203 = !DILocation(line: 523, column: 19, scope: !1133)
!1204 = distinct !{!1204, !1150, !1205}
!1205 = !DILocation(line: 548, column: 5, scope: !1134)
!1206 = !DILocation(line: 552, column: 9, scope: !1106)
!1207 = !DILocation(line: 552, column: 30, scope: !1106)
!1208 = !DILocation(line: 552, column: 71, scope: !1106)
!1209 = !DILocation(line: 552, column: 51, scope: !1106)
!1210 = !DILocation(line: 550, column: 13, scope: !1106)
!1211 = !DILocation(line: 553, column: 10, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 553, column: 5)
!1213 = !DILocation(line: 553, column: 5, scope: !1212)
!1214 = !DILocation(line: 554, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 553, column: 5)
!1216 = !DILocation(line: 553, column: 42, scope: !1215)
!1217 = !DILocation(line: 553, column: 5, scope: !1215)
!1218 = !DILocation(line: 553, column: 19, scope: !1215)
!1219 = distinct !{!1219, !1213, !1220}
!1220 = !DILocation(line: 554, column: 38, scope: !1212)
!1221 = !DILocation(line: 555, column: 13, scope: !1106)
!1222 = !DILocation(line: 556, column: 13, scope: !1106)
!1223 = !DILocation(line: 557, column: 5, scope: !1106)
!1224 = !DILocation(line: 558, column: 5, scope: !1106)
!1225 = distinct !DISubprogram(name: "latencyCommand", scope: !3, file: !3, line: 569, type: !921, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1226)
!1226 = !{!1227, !1228, !1234, !1235, !1239, !1240, !1241, !1245, !1250}
!1227 = !DILocalVariable(name: "c", arg: 1, scope: !1225, file: !3, line: 569, type: !845)
!1228 = !DILocalVariable(name: "help", scope: !1225, file: !3, line: 570, type: !1229)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 512, elements: !1232)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!1232 = !{!1233}
!1233 = !DISubrange(count: 8)
!1234 = !DILocalVariable(name: "ts", scope: !1225, file: !3, line: 580, type: !141)
!1235 = !DILocalVariable(name: "graph", scope: !1236, file: !3, line: 592, type: !473)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 590, column: 70)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 590, column: 16)
!1238 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 582, column: 9)
!1239 = !DILocalVariable(name: "de", scope: !1236, file: !3, line: 593, type: !257)
!1240 = !DILocalVariable(name: "event", scope: !1236, file: !3, line: 594, type: !15)
!1241 = !DILocalVariable(name: "report", scope: !1242, file: !3, line: 609, type: !473)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 607, column: 71)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 607, column: 16)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 604, column: 16)
!1245 = !DILocalVariable(name: "j", scope: !1246, file: !3, line: 618, type: !80)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 617, column: 16)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 615, column: 13)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 613, column: 70)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 613, column: 16)
!1250 = !DILocalVariable(name: "resets", scope: !1246, file: !3, line: 618, type: !80)
!1251 = !DILocation(line: 569, column: 29, scope: !1225)
!1252 = !DILocation(line: 570, column: 5, scope: !1225)
!1253 = !DILocation(line: 570, column: 17, scope: !1225)
!1254 = !DILocation(line: 582, column: 24, scope: !1238)
!1255 = !{!1256, !123, i64 72}
!1256 = !{!"client", !124, i64 0, !120, i64 8, !123, i64 16, !123, i64 24, !123, i64 32, !124, i64 40, !123, i64 48, !124, i64 56, !120, i64 64, !123, i64 72, !123, i64 80, !123, i64 88, !120, i64 96, !120, i64 100, !124, i64 104, !123, i64 112, !125, i64 120, !124, i64 128, !124, i64 136, !124, i64 144, !124, i64 152, !120, i64 160, !120, i64 164, !120, i64 168, !120, i64 172, !120, i64 176, !124, i64 184, !124, i64 192, !123, i64 200, !125, i64 208, !125, i64 216, !125, i64 224, !125, i64 232, !125, i64 240, !121, i64 248, !120, i64 292, !121, i64 296, !120, i64 344, !1257, i64 352, !120, i64 384, !1258, i64 392, !125, i64 480, !123, i64 488, !123, i64 496, !123, i64 504, !123, i64 512, !123, i64 520, !120, i64 528, !121, i64 532}
!1257 = !{!"multiState", !123, i64 0, !120, i64 8, !120, i64 12, !120, i64 16, !124, i64 24}
!1258 = !{!"blockingState", !125, i64 0, !123, i64 8, !123, i64 16, !124, i64 24, !123, i64 32, !123, i64 40, !125, i64 48, !125, i64 56, !120, i64 64, !120, i64 68, !125, i64 72, !123, i64 80}
!1259 = !DILocation(line: 582, column: 21, scope: !1238)
!1260 = !{!123, !123, i64 0}
!1261 = !DILocation(line: 582, column: 33, scope: !1238)
!1262 = !{!1263, !123, i64 8}
!1263 = !{!"redisObject", !120, i64 0, !120, i64 0, !120, i64 1, !120, i64 4, !123, i64 8}
!1264 = !DILocation(line: 582, column: 10, scope: !1238)
!1265 = !DILocation(line: 582, column: 48, scope: !1238)
!1266 = !DILocation(line: 582, column: 54, scope: !1238)
!1267 = !{!1256, !120, i64 64}
!1268 = !DILocation(line: 582, column: 59, scope: !1238)
!1269 = !DILocation(line: 582, column: 9, scope: !1225)
!1270 = !DILocation(line: 584, column: 36, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 582, column: 65)
!1272 = !DILocation(line: 584, column: 51, scope: !1271)
!1273 = !DILocation(line: 584, column: 63, scope: !1271)
!1274 = !DILocation(line: 584, column: 14, scope: !1271)
!1275 = !DILocation(line: 585, column: 16, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 585, column: 13)
!1277 = !DILocation(line: 585, column: 13, scope: !1271)
!1278 = !DILocation(line: 586, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 585, column: 25)
!1280 = !DILocation(line: 587, column: 9, scope: !1279)
!1281 = !DILocation(line: 580, column: 31, scope: !1225)
!1282 = !DILocation(line: 588, column: 13, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 587, column: 16)
!1284 = !DILocation(line: 590, column: 17, scope: !1237)
!1285 = !DILocation(line: 590, column: 53, scope: !1237)
!1286 = !DILocation(line: 590, column: 59, scope: !1237)
!1287 = !DILocation(line: 590, column: 64, scope: !1237)
!1288 = !DILocation(line: 590, column: 16, scope: !1238)
!1289 = !DILocation(line: 596, column: 30, scope: !1236)
!1290 = !DILocation(line: 596, column: 45, scope: !1236)
!1291 = !DILocation(line: 596, column: 57, scope: !1236)
!1292 = !DILocation(line: 596, column: 14, scope: !1236)
!1293 = !DILocation(line: 593, column: 20, scope: !1236)
!1294 = !DILocation(line: 597, column: 16, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 597, column: 13)
!1296 = !DILocation(line: 597, column: 13, scope: !1236)
!1297 = !DILocation(line: 598, column: 14, scope: !1236)
!1298 = !DILocation(line: 599, column: 17, scope: !1236)
!1299 = !DILocation(line: 594, column: 15, scope: !1236)
!1300 = !DILocation(line: 601, column: 17, scope: !1236)
!1301 = !DILocation(line: 592, column: 13, scope: !1236)
!1302 = !DILocation(line: 602, column: 9, scope: !1236)
!1303 = !DILocation(line: 603, column: 9, scope: !1236)
!1304 = !DILocation(line: 604, column: 5, scope: !1237)
!1305 = !DILocation(line: 604, column: 17, scope: !1244)
!1306 = !DILocation(line: 604, column: 54, scope: !1244)
!1307 = !DILocation(line: 604, column: 60, scope: !1244)
!1308 = !DILocation(line: 604, column: 65, scope: !1244)
!1309 = !DILocation(line: 604, column: 16, scope: !1237)
!1310 = !DILocation(line: 606, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 604, column: 71)
!1312 = !DILocation(line: 607, column: 5, scope: !1311)
!1313 = !DILocation(line: 607, column: 17, scope: !1243)
!1314 = !DILocation(line: 607, column: 54, scope: !1243)
!1315 = !DILocation(line: 607, column: 60, scope: !1243)
!1316 = !DILocation(line: 607, column: 65, scope: !1243)
!1317 = !DILocation(line: 607, column: 16, scope: !1244)
!1318 = !DILocation(line: 609, column: 22, scope: !1242)
!1319 = !DILocation(line: 609, column: 13, scope: !1242)
!1320 = !DILocalVariable(name: "s", arg: 1, scope: !1321, file: !19, line: 87, type: !1326)
!1321 = distinct !DISubprogram(name: "sdslen", scope: !19, file: !19, line: 87, type: !1322, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1327)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1325, line: 58, baseType: !12)
!1325 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1327 = !{!1320, !1328}
!1328 = !DILocalVariable(name: "flags", scope: !1321, file: !19, line: 88, type: !24)
!1329 = !DILocation(line: 87, column: 39, scope: !1321, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 611, column: 38, scope: !1242)
!1331 = !DILocation(line: 88, column: 27, scope: !1321, inlinedAt: !1330)
!1332 = !DILocation(line: 88, column: 19, scope: !1321, inlinedAt: !1330)
!1333 = !DILocation(line: 89, column: 5, scope: !1321, inlinedAt: !1330)
!1334 = !DILocation(line: 91, column: 20, scope: !1335, inlinedAt: !1330)
!1335 = distinct !DILexicalBlock(scope: !1321, file: !19, line: 89, column: 33)
!1336 = !DILocation(line: 91, column: 13, scope: !1335, inlinedAt: !1330)
!1337 = !DILocation(line: 93, column: 20, scope: !1335, inlinedAt: !1330)
!1338 = !DILocation(line: 93, column: 34, scope: !1335, inlinedAt: !1330)
!1339 = !DILocation(line: 93, column: 13, scope: !1335, inlinedAt: !1330)
!1340 = !DILocation(line: 95, column: 20, scope: !1335, inlinedAt: !1330)
!1341 = !DILocation(line: 95, column: 35, scope: !1335, inlinedAt: !1330)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"short", !121, i64 0}
!1344 = !DILocation(line: 95, column: 13, scope: !1335, inlinedAt: !1330)
!1345 = !DILocation(line: 97, column: 20, scope: !1335, inlinedAt: !1330)
!1346 = !DILocation(line: 97, column: 35, scope: !1335, inlinedAt: !1330)
!1347 = !DILocation(line: 97, column: 13, scope: !1335, inlinedAt: !1330)
!1348 = !DILocation(line: 99, column: 20, scope: !1335, inlinedAt: !1330)
!1349 = !DILocation(line: 99, column: 35, scope: !1335, inlinedAt: !1330)
!1350 = !{!124, !124, i64 0}
!1351 = !DILocation(line: 99, column: 13, scope: !1335, inlinedAt: !1330)
!1352 = !DILocation(line: 0, scope: !1335, inlinedAt: !1330)
!1353 = !DILocation(line: 0, scope: !1242)
!1354 = !DILocation(line: 102, column: 1, scope: !1321, inlinedAt: !1330)
!1355 = !DILocation(line: 611, column: 9, scope: !1242)
!1356 = !DILocation(line: 612, column: 9, scope: !1242)
!1357 = !DILocation(line: 613, column: 5, scope: !1242)
!1358 = !DILocation(line: 613, column: 17, scope: !1249)
!1359 = !DILocation(line: 613, column: 53, scope: !1249)
!1360 = !DILocation(line: 613, column: 59, scope: !1249)
!1361 = !DILocation(line: 613, column: 64, scope: !1249)
!1362 = !DILocation(line: 613, column: 16, scope: !1243)
!1363 = !DILocation(line: 615, column: 21, scope: !1247)
!1364 = !DILocation(line: 615, column: 13, scope: !1248)
!1365 = !DILocation(line: 135, column: 29, scope: !232, inlinedAt: !1366)
!1366 = distinct !DILocation(line: 616, column: 32, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 615, column: 27)
!1368 = !DILocation(line: 138, column: 9, scope: !232, inlinedAt: !1366)
!1369 = !DILocation(line: 140, column: 37, scope: !232, inlinedAt: !1366)
!1370 = !DILocation(line: 140, column: 10, scope: !232, inlinedAt: !1366)
!1371 = !DILocation(line: 136, column: 19, scope: !232, inlinedAt: !1366)
!1372 = !DILocation(line: 141, column: 5, scope: !232, inlinedAt: !1366)
!1373 = !DILocation(line: 141, column: 17, scope: !232, inlinedAt: !1366)
!1374 = !DILocation(line: 137, column: 16, scope: !232, inlinedAt: !1366)
!1375 = !DILocation(line: 141, column: 31, scope: !232, inlinedAt: !1366)
!1376 = !DILocation(line: 142, column: 23, scope: !287, inlinedAt: !1366)
!1377 = !DILocation(line: 142, column: 15, scope: !287, inlinedAt: !1366)
!1378 = !DILocation(line: 144, column: 36, scope: !302, inlinedAt: !1366)
!1379 = !DILocation(line: 145, column: 31, scope: !307, inlinedAt: !1366)
!1380 = !DILocation(line: 145, column: 13, scope: !307, inlinedAt: !1366)
!1381 = !DILocation(line: 146, column: 19, scope: !307, inlinedAt: !1366)
!1382 = !DILocation(line: 147, column: 9, scope: !307, inlinedAt: !1366)
!1383 = !DILocation(line: 149, column: 5, scope: !232, inlinedAt: !1366)
!1384 = !DILocation(line: 150, column: 5, scope: !232, inlinedAt: !1366)
!1385 = !DILocation(line: 616, column: 13, scope: !1367)
!1386 = !DILocation(line: 617, column: 9, scope: !1367)
!1387 = !DILocation(line: 618, column: 20, scope: !1246)
!1388 = !DILocation(line: 618, column: 17, scope: !1246)
!1389 = !DILocation(line: 620, column: 18, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 620, column: 13)
!1391 = !DILocation(line: 620, column: 13, scope: !1390)
!1392 = !DILocation(line: 621, column: 45, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 620, column: 13)
!1394 = !DILocation(line: 621, column: 57, scope: !1393)
!1395 = !DILocation(line: 621, column: 27, scope: !1393)
!1396 = !DILocation(line: 620, column: 13, scope: !1393)
!1397 = !DILocation(line: 620, column: 32, scope: !1393)
!1398 = !DILocation(line: 620, column: 27, scope: !1393)
!1399 = distinct !{!1399, !1391, !1400}
!1400 = !DILocation(line: 621, column: 60, scope: !1390)
!1401 = !DILocation(line: 621, column: 48, scope: !1393)
!1402 = !DILocation(line: 621, column: 24, scope: !1393)
!1403 = !DILocation(line: 620, column: 39, scope: !1393)
!1404 = !DILocation(line: 622, column: 32, scope: !1246)
!1405 = !DILocation(line: 622, column: 13, scope: !1246)
!1406 = !DILocation(line: 624, column: 17, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 624, column: 16)
!1408 = !DILocation(line: 624, column: 52, scope: !1407)
!1409 = !DILocation(line: 624, column: 58, scope: !1407)
!1410 = !DILocation(line: 624, column: 63, scope: !1407)
!1411 = !DILocation(line: 624, column: 16, scope: !1249)
!1412 = !DILocation(line: 625, column: 25, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 624, column: 69)
!1414 = !DILocation(line: 625, column: 9, scope: !1413)
!1415 = !DILocation(line: 626, column: 5, scope: !1413)
!1416 = !DILocation(line: 627, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 626, column: 12)
!1418 = !DILocation(line: 629, column: 5, scope: !1225)
!1419 = !DILocation(line: 597, column: 25, scope: !1295)
!1420 = !DILocation(line: 635, column: 59, scope: !1225)
!1421 = !DILocation(line: 635, column: 56, scope: !1225)
!1422 = !DILocation(line: 635, column: 68, scope: !1225)
!1423 = !DILocation(line: 634, column: 5, scope: !1225)
!1424 = !DILocation(line: 636, column: 1, scope: !1225)
!1425 = !DILocation(line: 0, scope: !1225)
