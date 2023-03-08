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

; Function Attrs: noredzone nounwind
define dso_local i32 @dictStringKeyCompare(i8* nocapture readnone, i8*, i8*) #0 !dbg !90 {
  %4 = tail call i32 @strcmp(i8* %1, i8* %2) #5, !dbg !98
  %5 = icmp eq i32 %4, 0, !dbg !99
  %6 = zext i1 %5 to i32, !dbg !99
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
  ret i32 %2, !dbg !112
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_get_smap_bytes_by_field(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @latencyMonitorInit() local_unnamed_addr #0 !dbg !113 {
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @latencyTimeSeriesDictType, i8* null) #5, !dbg !116
  store %struct.dict* %1, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !117, !tbaa !118
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
  br label %20, !dbg !187

; <label>:20:                                     ; preds = %7, %10
  %21 = phi i32* [ %9, %7 ], [ %14, %10 ], !dbg !171
  %22 = phi i8* [ %4, %7 ], [ %11, %10 ]
  %23 = bitcast i8* %22 to %struct.latencyTimeSeries*, !dbg !188
  %24 = load i32, i32* %21, align 4, !dbg !171, !tbaa !181
  %25 = zext i32 %24 to i64, !dbg !189
  %26 = icmp slt i64 %25, %1, !dbg !190
  br i1 %26, label %27, label %29, !dbg !191

; <label>:27:                                     ; preds = %20
  %28 = trunc i64 %1 to i32, !dbg !192
  store i32 %28, i32* %21, align 4, !dbg !193, !tbaa !181
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
  br i1 %38, label %39, label %46, !dbg !205

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i64 0, i32 2, i64 %34, i32 1, !dbg !206
  %41 = load i32, i32* %40, align 4, !dbg !206, !tbaa !209
  %42 = zext i32 %41 to i64, !dbg !210
  %43 = icmp slt i64 %42, %1, !dbg !211
  br i1 %43, label %44, label %57, !dbg !212

; <label>:44:                                     ; preds = %39
  %45 = trunc i64 %1 to i32, !dbg !213
  store i32 %45, i32* %40, align 4, !dbg !214, !tbaa !209
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
  %55 = icmp eq i32 %54, 160, !dbg !225
  %56 = select i1 %55, i32 0, i32 %54, !dbg !227
  store i32 %56, i32* %30, align 4, !dbg !188, !tbaa !177
  br label %57, !dbg !228

; <label>:57:                                     ; preds = %39, %44, %46
  ret void, !dbg !228
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
define dso_local i32 @latencyResetEvent(i8* readonly) local_unnamed_addr #0 !dbg !229 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !287, !tbaa !118
  %3 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %2) #5, !dbg !288
  %4 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %3) #5, !dbg !290
  %5 = icmp eq %struct.dictEntry* %4, null, !dbg !292
  br i1 %5, label %24, label %6, !dbg !293

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i8* %0, null
  br label %8, !dbg !293

; <label>:8:                                      ; preds = %6, %20
  %9 = phi %struct.dictEntry* [ %4, %6 ], [ %22, %20 ]
  %10 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i64 0, i32 0, !dbg !294
  %12 = load i8*, i8** %11, align 8, !dbg !294, !tbaa !295
  br i1 %7, label %16, label %13, !dbg !298

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @strcasecmp(i8* %12, i8* nonnull %0) #6, !dbg !300
  %15 = icmp eq i32 %14, 0, !dbg !301
  br i1 %15, label %16, label %20, !dbg !302

; <label>:16:                                     ; preds = %13, %8
  %17 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !303, !tbaa !118
  %18 = tail call i32 @dictDelete(%struct.dict* %17, i8* %12) #5, !dbg !305
  %19 = add nsw i32 %10, 1, !dbg !306
  br label %20, !dbg !307

; <label>:20:                                     ; preds = %16, %13
  %21 = phi i32 [ %19, %16 ], [ %10, %13 ], !dbg !308
  %22 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %3) #5, !dbg !290
  %23 = icmp eq %struct.dictEntry* %22, null, !dbg !292
  br i1 %23, label %24, label %8, !dbg !293, !llvm.loop !309

; <label>:24:                                     ; preds = %20, %1
  %25 = phi i32 [ 0, %1 ], [ %21, %20 ], !dbg !311
  tail call void @dictReleaseIterator(%struct.dictIterator* %3) #5, !dbg !312
  ret i32 %25, !dbg !313
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
define dso_local void @analyzeLatencyForEvent(i8*, %struct.latencyStats* nocapture) local_unnamed_addr #0 !dbg !314 {
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !339, !tbaa !118
  %4 = tail call i8* @dictFetchValue(%struct.dict* %3, i8* %0) #5, !dbg !340
  %5 = icmp ne i8* %4, null, !dbg !341
  br i1 %5, label %6, label %10, !dbg !341

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i64 4, !dbg !343
  %8 = bitcast i8* %7 to i32*, !dbg !343
  %9 = load i32, i32* %8, align 4, !dbg !343, !tbaa !181
  br label %10, !dbg !341

; <label>:10:                                     ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ], !dbg !341
  %12 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 0, !dbg !344
  store i32 %11, i32* %12, align 8, !dbg !345, !tbaa !346
  %13 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 1, !dbg !348
  %14 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 2, !dbg !349
  %15 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 3, !dbg !350
  %16 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 4, !dbg !351
  %17 = bitcast i32* %13 to <4 x i32>*, !dbg !352
  store <4 x i32> zeroinitializer, <4 x i32>* %17, align 4, !dbg !352, !tbaa !353
  %18 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 5, !dbg !354
  store i32 0, i32* %18, align 4, !dbg !355, !tbaa !356
  %19 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 6, !dbg !357
  store i64 0, i64* %19, align 8, !dbg !358, !tbaa !359
  br i1 %5, label %20, label %106, !dbg !360

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds i8, i8* %4, i64 8
  %22 = bitcast i8* %21 to [160 x %struct.latencySample]*
  br label %23, !dbg !363

; <label>:23:                                     ; preds = %56, %20
  %24 = phi i64 [ 0, %20 ], [ %57, %56 ]
  %25 = phi i32 [ 0, %20 ], [ %58, %56 ]
  %26 = phi i32 [ 0, %20 ], [ %59, %56 ]
  %27 = phi i32 [ 0, %20 ], [ %60, %56 ]
  %28 = phi i64 [ 0, %20 ], [ %62, %56 ]
  %29 = phi i64 [ 0, %20 ], [ %61, %56 ]
  %30 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %28, i32 0, !dbg !365
  %31 = load i32, i32* %30, align 4, !dbg !365, !tbaa !202
  %32 = icmp eq i32 %31, 0, !dbg !369
  br i1 %32, label %56, label %33, !dbg !370

; <label>:33:                                     ; preds = %23
  %34 = add i32 %27, 1, !dbg !371
  store i32 %34, i32* %18, align 4, !dbg !371, !tbaa !356
  %35 = icmp eq i32 %27, 0, !dbg !372
  %36 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %28, i32 1, !dbg !374
  %37 = load i32, i32* %36, align 4, !dbg !374, !tbaa !209
  br i1 %35, label %38, label %39, !dbg !377

; <label>:38:                                     ; preds = %33
  store i32 %37, i32* %15, align 4, !dbg !378, !tbaa !380
  store i32 %37, i32* %14, align 8, !dbg !381, !tbaa !382
  br label %46, !dbg !383

; <label>:39:                                     ; preds = %33
  %40 = icmp ugt i32 %26, %37, !dbg !384
  br i1 %40, label %41, label %42, !dbg !385

; <label>:41:                                     ; preds = %39
  store i32 %37, i32* %14, align 8, !dbg !386, !tbaa !382
  br label %42, !dbg !387

; <label>:42:                                     ; preds = %41, %39
  %43 = phi i32 [ %37, %41 ], [ %26, %39 ]
  %44 = icmp ult i32 %25, %37, !dbg !388
  br i1 %44, label %45, label %46, !dbg !390

; <label>:45:                                     ; preds = %42
  store i32 %37, i32* %15, align 4, !dbg !391, !tbaa !380
  br label %46, !dbg !392

; <label>:46:                                     ; preds = %42, %45, %38
  %47 = phi i32 [ %25, %42 ], [ %37, %45 ], [ %37, %38 ]
  %48 = phi i32 [ %43, %42 ], [ %43, %45 ], [ %37, %38 ]
  %49 = zext i32 %37 to i64, !dbg !393
  %50 = add i64 %29, %49, !dbg !394
  %51 = icmp eq i64 %24, 0, !dbg !395
  %52 = sext i32 %31 to i64, !dbg !397
  %53 = icmp sgt i64 %24, %52, !dbg !398
  %54 = or i1 %51, %53, !dbg !399
  br i1 %54, label %55, label %56, !dbg !399

; <label>:55:                                     ; preds = %46
  store i64 %52, i64* %19, align 8, !dbg !400, !tbaa !359
  br label %56, !dbg !401

; <label>:56:                                     ; preds = %46, %55, %23
  %57 = phi i64 [ %24, %23 ], [ %52, %55 ], [ %24, %46 ]
  %58 = phi i32 [ %25, %23 ], [ %47, %55 ], [ %47, %46 ]
  %59 = phi i32 [ %26, %23 ], [ %48, %55 ], [ %48, %46 ]
  %60 = phi i32 [ %27, %23 ], [ %34, %55 ], [ %34, %46 ]
  %61 = phi i64 [ %29, %23 ], [ %50, %55 ], [ %50, %46 ], !dbg !402
  %62 = add nuw nsw i64 %28, 1, !dbg !403
  %63 = icmp eq i64 %62, 160, !dbg !404
  br i1 %63, label %64, label %23, !dbg !363, !llvm.loop !405

; <label>:64:                                     ; preds = %56
  %65 = icmp eq i32 %60, 0, !dbg !407
  br i1 %65, label %75, label %66, !dbg !409

; <label>:66:                                     ; preds = %64
  %67 = zext i32 %60 to i64, !dbg !410
  %68 = udiv i64 %61, %67, !dbg !412
  %69 = trunc i64 %68 to i32, !dbg !413
  store i32 %69, i32* %13, align 4, !dbg !414, !tbaa !415
  %70 = tail call i64 @time(i64* null) #5, !dbg !416
  %71 = load i64, i64* %19, align 8, !dbg !417, !tbaa !359
  %72 = sub nsw i64 %70, %71, !dbg !418
  %73 = icmp eq i64 %72, 0, !dbg !419
  %74 = select i1 %73, i64 1, i64 %72, !dbg !421
  store i64 %74, i64* %19, align 8, !dbg !422
  br label %75, !dbg !421

; <label>:75:                                     ; preds = %66, %64
  br label %76, !dbg !423

; <label>:76:                                     ; preds = %118, %75
  %77 = phi i64 [ 0, %75 ], [ %120, %118 ]
  %78 = phi i64 [ 0, %75 ], [ %119, %118 ]
  %79 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %77, i32 0, !dbg !423
  %80 = load i32, i32* %79, align 4, !dbg !423, !tbaa !202
  %81 = icmp eq i32 %80, 0, !dbg !425
  br i1 %81, label %93, label %82, !dbg !426

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* %13, align 4, !dbg !427, !tbaa !415
  %84 = zext i32 %83 to i64, !dbg !428
  %85 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %77, i32 1, !dbg !429
  %86 = load i32, i32* %85, align 4, !dbg !429, !tbaa !209
  %87 = zext i32 %86 to i64, !dbg !430
  %88 = sub nsw i64 %84, %87, !dbg !431
  %89 = icmp slt i64 %88, 0, !dbg !433
  %90 = sub nsw i64 0, %88, !dbg !435
  %91 = select i1 %89, i64 %90, i64 %88, !dbg !436
  %92 = add i64 %91, %78, !dbg !437
  br label %93, !dbg !438

; <label>:93:                                     ; preds = %76, %82
  %94 = phi i64 [ %92, %82 ], [ %78, %76 ], !dbg !439
  %95 = or i64 %77, 1, !dbg !440
  %96 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %95, i32 0, !dbg !423
  %97 = load i32, i32* %96, align 4, !dbg !423, !tbaa !202
  %98 = icmp eq i32 %97, 0, !dbg !425
  br i1 %98, label %118, label %107, !dbg !426

; <label>:99:                                     ; preds = %118
  %100 = load i32, i32* %18, align 4, !dbg !441, !tbaa !356
  %101 = icmp eq i32 %100, 0, !dbg !443
  br i1 %101, label %106, label %102, !dbg !444

; <label>:102:                                    ; preds = %99
  %103 = zext i32 %100 to i64, !dbg !445
  %104 = udiv i64 %119, %103, !dbg !446
  %105 = trunc i64 %104 to i32, !dbg !447
  store i32 %105, i32* %16, align 8, !dbg !448, !tbaa !449
  br label %106, !dbg !450

; <label>:106:                                    ; preds = %102, %99, %10
  ret void, !dbg !451

; <label>:107:                                    ; preds = %93
  %108 = load i32, i32* %13, align 4, !dbg !427, !tbaa !415
  %109 = zext i32 %108 to i64, !dbg !428
  %110 = getelementptr inbounds [160 x %struct.latencySample], [160 x %struct.latencySample]* %22, i64 0, i64 %95, i32 1, !dbg !429
  %111 = load i32, i32* %110, align 4, !dbg !429, !tbaa !209
  %112 = zext i32 %111 to i64, !dbg !430
  %113 = sub nsw i64 %109, %112, !dbg !431
  %114 = icmp slt i64 %113, 0, !dbg !433
  %115 = sub nsw i64 0, %113, !dbg !435
  %116 = select i1 %114, i64 %115, i64 %113, !dbg !436
  %117 = add i64 %116, %94, !dbg !437
  br label %118, !dbg !438

; <label>:118:                                    ; preds = %107, %93
  %119 = phi i64 [ %117, %107 ], [ %94, %93 ], !dbg !439
  %120 = add nuw nsw i64 %77, 2, !dbg !440
  %121 = icmp eq i64 %120, 160, !dbg !452
  br i1 %121, label %99, label %76, !dbg !453, !llvm.loop !454
}

; Function Attrs: noredzone nounwind
define dso_local i8* @createLatencyReport() local_unnamed_addr #0 !dbg !456 {
  %1 = alloca %struct.latencyStats, align 8
  %2 = tail call i8* @sdsempty() #5, !dbg !489
  %3 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !508, !tbaa !118
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !508
  %5 = load i64, i64* %4, align 8, !dbg !508, !tbaa !510
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !508
  %7 = load i64, i64* %6, align 8, !dbg !508, !tbaa !510
  %8 = sub i64 0, %7, !dbg !512
  %9 = icmp eq i64 %5, %8, !dbg !512
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !513
  %11 = icmp eq i64 %10, 0, !dbg !514
  %12 = and i1 %9, %11, !dbg !515
  br i1 %12, label %13, label %15, !dbg !515

; <label>:13:                                     ; preds = %0
  %14 = tail call i8* @sdscat(i8* %2, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !516
  br label %332, !dbg !518

; <label>:15:                                     ; preds = %0
  %16 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %3) #5, !dbg !520
  %17 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %16) #5, !dbg !522
  %18 = icmp eq %struct.dictEntry* %17, null, !dbg !524
  br i1 %18, label %209, label %19, !dbg !525

; <label>:19:                                     ; preds = %15
  %20 = bitcast %struct.latencyStats* %1 to i8*
  %21 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 5
  %22 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 1
  %23 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 4
  %24 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %1, i64 0, i32 6
  br label %25, !dbg !525

; <label>:25:                                     ; preds = %19, %188
  %26 = phi %struct.dictEntry* [ %17, %19 ], [ %207, %188 ]
  %27 = phi i8* [ %2, %19 ], [ %206, %188 ]
  %28 = phi i32 [ 0, %19 ], [ %205, %188 ]
  %29 = phi i32 [ 0, %19 ], [ %204, %188 ]
  %30 = phi i32 [ 0, %19 ], [ %203, %188 ]
  %31 = phi i32 [ 0, %19 ], [ %202, %188 ]
  %32 = phi i32 [ 0, %19 ], [ %201, %188 ]
  %33 = phi i32 [ 0, %19 ], [ %200, %188 ]
  %34 = phi i32 [ 0, %19 ], [ %199, %188 ]
  %35 = phi i32 [ 0, %19 ], [ %198, %188 ]
  %36 = phi i32 [ 0, %19 ], [ %197, %188 ]
  %37 = phi i32 [ 0, %19 ], [ %196, %188 ]
  %38 = phi i32 [ 0, %19 ], [ %195, %188 ]
  %39 = phi i32 [ 0, %19 ], [ %194, %188 ]
  %40 = phi i32 [ 0, %19 ], [ %193, %188 ]
  %41 = phi i32 [ 0, %19 ], [ %192, %188 ]
  %42 = phi i32 [ 0, %19 ], [ %191, %188 ]
  %43 = phi i32 [ 0, %19 ], [ %190, %188 ]
  %44 = phi i32 [ 0, %19 ], [ %189, %188 ]
  %45 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %26, i64 0, i32 0, !dbg !526
  %46 = load i8*, i8** %45, align 8, !dbg !526, !tbaa !295
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %26, i64 0, i32 1, i32 0, !dbg !528
  %48 = bitcast i8** %47 to %struct.latencyTimeSeries**, !dbg !528
  %49 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %48, align 8, !dbg !528, !tbaa !529
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #7, !dbg !531
  %50 = icmp eq %struct.latencyTimeSeries* %49, null, !dbg !532
  br i1 %50, label %188, label %51, !dbg !534, !llvm.loop !535

; <label>:51:                                     ; preds = %25
  %52 = add nsw i32 %28, 1, !dbg !537
  %53 = icmp eq i32 %28, 0, !dbg !538
  br i1 %53, label %54, label %56, !dbg !540

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @sdscat(i8* %27, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !541
  br label %56, !dbg !543

; <label>:56:                                     ; preds = %54, %51
  %57 = phi i8* [ %55, %54 ], [ %27, %51 ], !dbg !544
  call void @analyzeLatencyForEvent(i8* %46, %struct.latencyStats* nonnull %1) #8, !dbg !546
  %58 = load i32, i32* %21, align 4, !dbg !547, !tbaa !356
  %59 = load i32, i32* %22, align 4, !dbg !548, !tbaa !415
  %60 = zext i32 %59 to i64, !dbg !549
  %61 = load i32, i32* %23, align 8, !dbg !550, !tbaa !449
  %62 = zext i32 %61 to i64, !dbg !551
  %63 = load i64, i64* %24, align 8, !dbg !552, !tbaa !359
  %64 = sitofp i64 %63 to double, !dbg !553
  %65 = uitofp i32 %58 to double, !dbg !554
  %66 = fdiv double %64, %65, !dbg !555
  %67 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %49, i64 0, i32 1, !dbg !556
  %68 = load i32, i32* %67, align 4, !dbg !556, !tbaa !181
  %69 = zext i32 %68 to i64, !dbg !557
  %70 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %57, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %46, i32 %58, i64 %60, i64 %62, double %66, i64 %69) #5, !dbg !558
  %71 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !559
  %72 = icmp eq i32 %71, 0, !dbg !559
  br i1 %72, label %73, label %90, !dbg !560

; <label>:73:                                     ; preds = %56
  %74 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 85), align 8, !dbg !561, !tbaa !563
  %75 = fcmp olt double %74, 1.000000e+01, !dbg !564
  br i1 %75, label %76, label %78, !dbg !565

; <label>:76:                                     ; preds = %73
  %77 = add nsw i32 %31, 1, !dbg !566
  br label %85, !dbg !568

; <label>:78:                                     ; preds = %73
  %79 = fcmp olt double %74, 2.500000e+01, !dbg !569
  br i1 %79, label %80, label %82, !dbg !571

; <label>:80:                                     ; preds = %78
  %81 = add nsw i32 %31, 1, !dbg !572
  br label %85, !dbg !574

; <label>:82:                                     ; preds = %78
  %83 = fcmp olt double %74, 1.000000e+02, !dbg !575
  %84 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), !dbg !577
  br label %85, !dbg !577

; <label>:85:                                     ; preds = %82, %80, %76
  %86 = phi i32 [ %77, %76 ], [ %81, %80 ], [ %31, %82 ], !dbg !544
  %87 = phi i32 [ 1, %76 ], [ 1, %80 ], [ %29, %82 ], !dbg !544
  %88 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %76 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %80 ], [ %84, %82 ], !dbg !579
  %89 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), double %74, i8* %88) #5, !dbg !582
  br label %90, !dbg !583

; <label>:90:                                     ; preds = %56, %85
  %91 = phi i32 [ %31, %56 ], [ %86, %85 ], !dbg !584
  %92 = phi i32 [ %29, %56 ], [ %87, %85 ], !dbg !584
  %93 = phi i8* [ %70, %56 ], [ %89, %85 ], !dbg !585
  %94 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !586
  %95 = icmp eq i32 %94, 0, !dbg !586
  br i1 %95, label %96, label %111, !dbg !588

; <label>:96:                                     ; preds = %90
  %97 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 92), align 8, !dbg !589, !tbaa !592
  %98 = icmp slt i64 %97, 0, !dbg !593
  br i1 %98, label %105, label %99, !dbg !594

; <label>:99:                                     ; preds = %96
  %100 = udiv i64 %97, 1000
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !595, !tbaa !597
  %102 = icmp sgt i64 %100, %101, !dbg !598
  %103 = select i1 %102, i32 1, i32 %44, !dbg !599
  %104 = zext i1 %102 to i32, !dbg !599
  br label %105, !dbg !599

; <label>:105:                                    ; preds = %96, %99
  %106 = phi i32 [ %104, %99 ], [ 1, %96 ]
  %107 = phi i32 [ %103, %99 ], [ %44, %96 ], !dbg !544
  %108 = phi i32 [ %30, %99 ], [ 1, %96 ], !dbg !544
  %109 = add nsw i32 %91, %106, !dbg !600
  %110 = add nsw i32 %109, 2, !dbg !602
  br label %111, !dbg !603

; <label>:111:                                    ; preds = %90, %105
  %112 = phi i32 [ %44, %90 ], [ %107, %105 ], !dbg !493
  %113 = phi i32 [ %43, %90 ], [ 1, %105 ], !dbg !604
  %114 = phi i32 [ %34, %90 ], [ 1, %105 ], !dbg !604
  %115 = phi i32 [ %91, %90 ], [ %110, %105 ], !dbg !604
  %116 = phi i32 [ %30, %90 ], [ %108, %105 ], !dbg !600
  %117 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !605
  %118 = icmp eq i32 %117, 0, !dbg !605
  %119 = select i1 %118, i32 1, i32 %41, !dbg !607
  %120 = zext i1 %118 to i32, !dbg !607
  %121 = add nsw i32 %115, %120, !dbg !607
  %122 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !608
  %123 = icmp eq i32 %122, 0, !dbg !608
  %124 = add nsw i32 %121, 4, !dbg !610
  %125 = select i1 %123, i32 %124, i32 %121, !dbg !612
  %126 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !613
  %127 = icmp eq i32 %126, 0, !dbg !613
  %128 = add nsw i32 %125, 3, !dbg !615
  %129 = or i1 %123, %127, !dbg !617
  %130 = select i1 %127, i32 1, i32 %39, !dbg !617
  %131 = select i1 %127, i32 %128, i32 %125, !dbg !617
  %132 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !618
  %133 = icmp eq i32 %132, 0, !dbg !618
  %134 = add nsw i32 %131, 3, !dbg !620
  %135 = or i1 %133, %129, !dbg !622
  %136 = select i1 %135, i32 1, i32 %40, !dbg !622
  %137 = select i1 %135, i32 1, i32 %37, !dbg !622
  %138 = select i1 %133, i32 %134, i32 %131, !dbg !622
  %139 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !623
  %140 = icmp eq i32 %139, 0, !dbg !623
  %141 = select i1 %140, i32 1, i32 %32, !dbg !625
  %142 = zext i1 %140 to i32, !dbg !625
  %143 = add nsw i32 %138, %142, !dbg !625
  %144 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !626
  %145 = icmp eq i32 %144, 0, !dbg !626
  br i1 %145, label %152, label %146, !dbg !628

; <label>:146:                                    ; preds = %111
  %147 = or i1 %123, %133, !dbg !622
  %148 = select i1 %147, i32 1, i32 %38, !dbg !622
  %149 = select i1 %123, i32 1, i32 %42, !dbg !612
  %150 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !629
  %151 = icmp eq i32 %150, 0, !dbg !629
  br i1 %151, label %152, label %154, !dbg !630

; <label>:152:                                    ; preds = %146, %111
  %153 = add nsw i32 %143, 2, !dbg !631
  br label %154, !dbg !633

; <label>:154:                                    ; preds = %146, %152
  %155 = phi i32 [ %149, %146 ], [ 1, %152 ], !dbg !634
  %156 = phi i32 [ %148, %146 ], [ 1, %152 ], !dbg !634
  %157 = phi i32 [ %143, %146 ], [ %153, %152 ], !dbg !634
  %158 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !635
  %159 = icmp eq i32 %158, 0, !dbg !635
  br i1 %159, label %163, label %160, !dbg !637

; <label>:160:                                    ; preds = %154
  %161 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !638
  %162 = icmp eq i32 %161, 0, !dbg !638
  br i1 %162, label %163, label %165, !dbg !639

; <label>:163:                                    ; preds = %160, %154
  %164 = add nsw i32 %157, 4, !dbg !640
  br label %165, !dbg !642

; <label>:165:                                    ; preds = %160, %163
  %166 = phi i32 [ %136, %160 ], [ 1, %163 ], !dbg !643
  %167 = phi i32 [ %156, %160 ], [ 1, %163 ], !dbg !643
  %168 = phi i32 [ %137, %160 ], [ 1, %163 ], !dbg !643
  %169 = phi i32 [ %36, %160 ], [ 1, %163 ], !dbg !643
  %170 = phi i32 [ %157, %160 ], [ %164, %163 ], !dbg !643
  %171 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !644
  %172 = icmp eq i32 %171, 0, !dbg !644
  %173 = add nsw i32 %170, 2, !dbg !646
  %174 = select i1 %172, i32 1, i32 %35, !dbg !648
  %175 = select i1 %172, i32 %173, i32 %170, !dbg !648
  %176 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !649
  %177 = icmp eq i32 %176, 0, !dbg !649
  %178 = or i1 %172, %177, !dbg !651
  %179 = select i1 %178, i32 1, i32 %114, !dbg !651
  %180 = zext i1 %177 to i32, !dbg !651
  %181 = add nsw i32 %175, %180, !dbg !651
  %182 = tail call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !652
  %183 = icmp eq i32 %182, 0, !dbg !652
  %184 = select i1 %183, i32 1, i32 %33, !dbg !654
  %185 = zext i1 %183 to i32, !dbg !654
  %186 = add nsw i32 %181, %185, !dbg !654
  %187 = tail call i8* @sdscatlen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1) #5, !dbg !655
  br label %188, !dbg !536

; <label>:188:                                    ; preds = %25, %165
  %189 = phi i32 [ %112, %165 ], [ %44, %25 ], !dbg !493
  %190 = phi i32 [ %113, %165 ], [ %43, %25 ], !dbg !494
  %191 = phi i32 [ %155, %165 ], [ %42, %25 ], !dbg !495
  %192 = phi i32 [ %119, %165 ], [ %41, %25 ], !dbg !496
  %193 = phi i32 [ %166, %165 ], [ %40, %25 ], !dbg !497
  %194 = phi i32 [ %130, %165 ], [ %39, %25 ], !dbg !498
  %195 = phi i32 [ %167, %165 ], [ %38, %25 ], !dbg !499
  %196 = phi i32 [ %168, %165 ], [ %37, %25 ], !dbg !500
  %197 = phi i32 [ %169, %165 ], [ %36, %25 ], !dbg !501
  %198 = phi i32 [ %174, %165 ], [ %35, %25 ], !dbg !502
  %199 = phi i32 [ %179, %165 ], [ %34, %25 ], !dbg !503
  %200 = phi i32 [ %184, %165 ], [ %33, %25 ], !dbg !504
  %201 = phi i32 [ %141, %165 ], [ %32, %25 ], !dbg !505
  %202 = phi i32 [ %186, %165 ], [ %31, %25 ], !dbg !507
  %203 = phi i32 [ %116, %165 ], [ %30, %25 ], !dbg !492
  %204 = phi i32 [ %92, %165 ], [ %29, %25 ], !dbg !491
  %205 = phi i32 [ %52, %165 ], [ %28, %25 ], !dbg !656
  %206 = phi i8* [ %187, %165 ], [ %27, %25 ], !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #7, !dbg !536
  %207 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %16) #5, !dbg !522
  %208 = icmp eq %struct.dictEntry* %207, null, !dbg !524
  br i1 %208, label %209, label %25, !dbg !525

; <label>:209:                                    ; preds = %188, %15
  %210 = phi i32 [ 0, %15 ], [ %189, %188 ], !dbg !493
  %211 = phi i32 [ 0, %15 ], [ %190, %188 ], !dbg !494
  %212 = phi i32 [ 0, %15 ], [ %191, %188 ], !dbg !495
  %213 = phi i32 [ 0, %15 ], [ %192, %188 ], !dbg !496
  %214 = phi i32 [ 0, %15 ], [ %193, %188 ], !dbg !497
  %215 = phi i32 [ 0, %15 ], [ %194, %188 ], !dbg !498
  %216 = phi i32 [ 0, %15 ], [ %195, %188 ], !dbg !499
  %217 = phi i32 [ 0, %15 ], [ %196, %188 ], !dbg !500
  %218 = phi i32 [ 0, %15 ], [ %197, %188 ], !dbg !501
  %219 = phi i32 [ 0, %15 ], [ %198, %188 ], !dbg !502
  %220 = phi i32 [ 0, %15 ], [ %199, %188 ], !dbg !503
  %221 = phi i32 [ 0, %15 ], [ %200, %188 ], !dbg !504
  %222 = phi i32 [ 0, %15 ], [ %201, %188 ], !dbg !505
  %223 = phi i32 [ 0, %15 ], [ %202, %188 ], !dbg !507
  %224 = phi i32 [ 0, %15 ], [ %203, %188 ], !dbg !492
  %225 = phi i32 [ 0, %15 ], [ %204, %188 ], !dbg !491
  %226 = phi i32 [ 0, %15 ], [ %205, %188 ], !dbg !519
  %227 = phi i8* [ %2, %15 ], [ %206, %188 ], !dbg !490
  tail call void @dictReleaseIterator(%struct.dictIterator* %16) #5, !dbg !657
  %228 = tail call i64 @zmalloc_get_smap_bytes_by_field(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 -1) #5, !dbg !658
  %229 = trunc i64 %228 to i32, !dbg !658
  %230 = icmp sgt i32 %229, 0, !dbg !661
  %231 = zext i1 %230 to i32, !dbg !662
  %232 = add nsw i32 %223, %231, !dbg !662
  %233 = or i32 %232, %226, !dbg !663
  %234 = icmp eq i32 %233, 0, !dbg !663
  br i1 %234, label %235, label %237, !dbg !663

; <label>:235:                                    ; preds = %209
  %236 = tail call i8* @sdscat(i8* %227, i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.24, i64 0, i64 0)) #5, !dbg !665
  br label %332, !dbg !667

; <label>:237:                                    ; preds = %209
  %238 = icmp eq i32 %232, 0, !dbg !668
  %239 = icmp sgt i32 %226, 0, !dbg !669
  %240 = and i1 %239, %238, !dbg !671
  br i1 %240, label %241, label %243, !dbg !671

; <label>:241:                                    ; preds = %237
  %242 = tail call i8* @sdscat(i8* %227, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !672
  br label %332, !dbg !674

; <label>:243:                                    ; preds = %237
  %244 = tail call i8* @sdscat(i8* %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !675
  %245 = icmp eq i32 %225, 0, !dbg !677
  br i1 %245, label %248, label %246, !dbg !679

; <label>:246:                                    ; preds = %243
  %247 = tail call i8* @sdscat(i8* %244, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !680
  br label %248, !dbg !682

; <label>:248:                                    ; preds = %243, %246
  %249 = phi i8* [ %247, %246 ], [ %244, %243 ], !dbg !683
  %250 = icmp eq i32 %224, 0, !dbg !684
  br i1 %250, label %255, label %251, !dbg !686

; <label>:251:                                    ; preds = %248
  %252 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !687, !tbaa !597
  %253 = mul i64 %252, 1000, !dbg !689
  %254 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %249, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.28, i64 0, i64 0), i64 %253) #5, !dbg !690
  br label %255, !dbg !691

; <label>:255:                                    ; preds = %248, %251
  %256 = phi i8* [ %254, %251 ], [ %249, %248 ], !dbg !692
  %257 = icmp eq i32 %210, 0, !dbg !693
  br i1 %257, label %262, label %258, !dbg !695

; <label>:258:                                    ; preds = %255
  %259 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 288), align 8, !dbg !696, !tbaa !597
  %260 = mul i64 %259, 1000, !dbg !698
  %261 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %256, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.29, i64 0, i64 0), i64 %260) #5, !dbg !699
  br label %262, !dbg !700

; <label>:262:                                    ; preds = %255, %258
  %263 = phi i8* [ %261, %258 ], [ %256, %255 ], !dbg !701
  %264 = icmp eq i32 %211, 0, !dbg !702
  br i1 %264, label %267, label %265, !dbg !704

; <label>:265:                                    ; preds = %262
  %266 = tail call i8* @sdscat(i8* %263, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !705
  br label %267, !dbg !707

; <label>:267:                                    ; preds = %262, %265
  %268 = phi i8* [ %266, %265 ], [ %263, %262 ], !dbg !708
  %269 = icmp eq i32 %213, 0, !dbg !709
  br i1 %269, label %272, label %270, !dbg !711

; <label>:270:                                    ; preds = %267
  %271 = tail call i8* @sdscat(i8* %268, i8* getelementptr inbounds ([618 x i8], [618 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !712
  br label %272, !dbg !714

; <label>:272:                                    ; preds = %267, %270
  %273 = phi i8* [ %271, %270 ], [ %268, %267 ], !dbg !715
  %274 = icmp eq i32 %216, 0, !dbg !716
  br i1 %274, label %277, label %275, !dbg !718

; <label>:275:                                    ; preds = %272
  %276 = tail call i8* @sdscat(i8* %273, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.32, i64 0, i64 0)) #5, !dbg !719
  br label %277, !dbg !721

; <label>:277:                                    ; preds = %272, %275
  %278 = phi i8* [ %276, %275 ], [ %273, %272 ], !dbg !722
  %279 = icmp eq i32 %217, 0, !dbg !723
  br i1 %279, label %282, label %280, !dbg !725

; <label>:280:                                    ; preds = %277
  %281 = tail call i8* @sdscat(i8* %278, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !726
  br label %282, !dbg !728

; <label>:282:                                    ; preds = %277, %280
  %283 = phi i8* [ %281, %280 ], [ %278, %277 ], !dbg !729
  %284 = icmp eq i32 %214, 0, !dbg !730
  br i1 %284, label %287, label %285, !dbg !732

; <label>:285:                                    ; preds = %282
  %286 = tail call i8* @sdscat(i8* %283, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !733
  br label %287, !dbg !735

; <label>:287:                                    ; preds = %282, %285
  %288 = phi i8* [ %286, %285 ], [ %283, %282 ], !dbg !736
  %289 = icmp eq i32 %212, 0, !dbg !737
  br i1 %289, label %292, label %290, !dbg !739

; <label>:290:                                    ; preds = %287
  %291 = tail call i8* @sdscat(i8* %288, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.35, i64 0, i64 0)) #5, !dbg !740
  br label %292, !dbg !742

; <label>:292:                                    ; preds = %287, %290
  %293 = phi i8* [ %291, %290 ], [ %288, %287 ], !dbg !743
  %294 = icmp eq i32 %215, 0, !dbg !744
  br i1 %294, label %297, label %295, !dbg !746

; <label>:295:                                    ; preds = %292
  %296 = tail call i8* @sdscat(i8* %293, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !747
  br label %297, !dbg !749

; <label>:297:                                    ; preds = %292, %295
  %298 = phi i8* [ %296, %295 ], [ %293, %292 ], !dbg !750
  %299 = icmp ne i32 %222, 0, !dbg !751
  %300 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !753
  %301 = icmp eq i32 %300, 1, !dbg !754
  %302 = and i1 %299, %301, !dbg !755
  br i1 %302, label %303, label %305, !dbg !755

; <label>:303:                                    ; preds = %297
  %304 = tail call i8* @sdscat(i8* %298, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.37, i64 0, i64 0)) #5, !dbg !756
  br label %305, !dbg !758

; <label>:305:                                    ; preds = %303, %297
  %306 = phi i8* [ %304, %303 ], [ %298, %297 ], !dbg !759
  %307 = icmp eq i32 %218, 0, !dbg !760
  br i1 %307, label %310, label %308, !dbg !762

; <label>:308:                                    ; preds = %305
  %309 = tail call i8* @sdscat(i8* %306, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.38, i64 0, i64 0)) #5, !dbg !763
  br label %310, !dbg !765

; <label>:310:                                    ; preds = %305, %308
  %311 = phi i8* [ %309, %308 ], [ %306, %305 ], !dbg !766
  %312 = icmp ne i32 %219, 0, !dbg !767
  %313 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 6), align 8, !dbg !769
  %314 = icmp slt i32 %313, 100, !dbg !770
  %315 = and i1 %312, %314, !dbg !771
  br i1 %315, label %316, label %318, !dbg !771

; <label>:316:                                    ; preds = %310
  %317 = tail call i8* @sdscat(i8* %311, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.39, i64 0, i64 0)) #5, !dbg !772
  br label %318, !dbg !774

; <label>:318:                                    ; preds = %316, %310
  %319 = phi i8* [ %317, %316 ], [ %311, %310 ], !dbg !775
  %320 = icmp eq i32 %220, 0, !dbg !776
  br i1 %320, label %323, label %321, !dbg !778

; <label>:321:                                    ; preds = %318
  %322 = tail call i8* @sdscat(i8* %319, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !779
  br label %323, !dbg !781

; <label>:323:                                    ; preds = %318, %321
  %324 = phi i8* [ %322, %321 ], [ %319, %318 ], !dbg !782
  %325 = icmp eq i32 %221, 0, !dbg !783
  br i1 %325, label %328, label %326, !dbg !785

; <label>:326:                                    ; preds = %323
  %327 = tail call i8* @sdscat(i8* %324, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.41, i64 0, i64 0)) #5, !dbg !786
  br label %328, !dbg !788

; <label>:328:                                    ; preds = %323, %326
  %329 = phi i8* [ %327, %326 ], [ %324, %323 ], !dbg !789
  br i1 %230, label %330, label %332, !dbg !790

; <label>:330:                                    ; preds = %328
  %331 = tail call i8* @sdscat(i8* %329, i8* getelementptr inbounds ([530 x i8], [530 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !791
  br label %332, !dbg !794

; <label>:332:                                    ; preds = %328, %235, %330, %241, %13
  %333 = phi i8* [ %14, %13 ], [ %236, %235 ], [ %242, %241 ], [ %331, %330 ], [ %329, %328 ], !dbg !544
  ret i8* %333, !dbg !795
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
define dso_local void @latencyCommandReplyWithSamples(%struct.client*, %struct.latencyTimeSeries* nocapture readonly) local_unnamed_addr #0 !dbg !796 {
  %3 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #5, !dbg !984
  %4 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 0
  br label %5, !dbg !988

; <label>:5:                                      ; preds = %22, %2
  %6 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %7 = phi i32 [ 0, %2 ], [ %24, %22 ]
  %8 = load i32, i32* %4, align 4, !dbg !989, !tbaa !177
  %9 = add nsw i32 %8, %7, !dbg !990
  %10 = srem i32 %9, 160, !dbg !991
  %11 = sext i32 %10 to i64, !dbg !993
  %12 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %11, i32 0, !dbg !995
  %13 = load i32, i32* %12, align 4, !dbg !995, !tbaa !202
  %14 = icmp eq i32 %13, 0, !dbg !996
  br i1 %14, label %22, label %15, !dbg !997

; <label>:15:                                     ; preds = %5
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #5, !dbg !998
  %16 = load i32, i32* %12, align 4, !dbg !999, !tbaa !202
  %17 = sext i32 %16 to i64, !dbg !1000
  tail call void @addReplyLongLong(%struct.client* %0, i64 %17) #5, !dbg !1001
  %18 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %11, i32 1, !dbg !1002
  %19 = load i32, i32* %18, align 4, !dbg !1002, !tbaa !209
  %20 = zext i32 %19 to i64, !dbg !1003
  tail call void @addReplyLongLong(%struct.client* %0, i64 %20) #5, !dbg !1004
  %21 = add nsw i32 %6, 1, !dbg !1005
  br label %22, !dbg !1006

; <label>:22:                                     ; preds = %5, %15
  %23 = phi i32 [ %21, %15 ], [ %6, %5 ], !dbg !1007
  %24 = add nuw nsw i32 %7, 1, !dbg !1008
  %25 = icmp eq i32 %24, 160, !dbg !1009
  br i1 %25, label %26, label %5, !dbg !988, !llvm.loop !1010

; <label>:26:                                     ; preds = %22
  %27 = sext i32 %23 to i64, !dbg !1012
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %3, i64 %27) #5, !dbg !1013
  ret void, !dbg !1014
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
define dso_local void @latencyCommandReplyWithLatestEvents(%struct.client*) local_unnamed_addr #0 !dbg !1015 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1025, !tbaa !118
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 0, i32 3, !dbg !1025
  %4 = load i64, i64* %3, align 8, !dbg !1025, !tbaa !510
  %5 = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 2, i64 1, i32 3, !dbg !1025
  %6 = load i64, i64* %5, align 8, !dbg !1025, !tbaa !510
  %7 = add i64 %6, %4, !dbg !1025
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 %7) #5, !dbg !1026
  %8 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1027, !tbaa !118
  %9 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %8) #5, !dbg !1028
  %10 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %9) #5, !dbg !1030
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !1032
  br i1 %11, label %35, label %12, !dbg !1033

; <label>:12:                                     ; preds = %1, %12
  %13 = phi %struct.dictEntry* [ %33, %12 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 0, !dbg !1034
  %15 = load i8*, i8** %14, align 8, !dbg !1034, !tbaa !295
  %16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i64 0, i32 1, i32 0, !dbg !1036
  %17 = bitcast i8** %16 to %struct.latencyTimeSeries**, !dbg !1036
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %17, align 8, !dbg !1036, !tbaa !529
  %19 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 0, !dbg !1038
  %20 = load i32, i32* %19, align 4, !dbg !1038, !tbaa !177
  %21 = add nsw i32 %20, 159, !dbg !1039
  %22 = srem i32 %21, 160, !dbg !1040
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #5, !dbg !1042
  tail call void @addReplyBulkCString(%struct.client* %0, i8* %15) #5, !dbg !1043
  %23 = sext i32 %22 to i64, !dbg !1044
  %24 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 2, i64 %23, i32 0, !dbg !1045
  %25 = load i32, i32* %24, align 4, !dbg !1045, !tbaa !202
  %26 = sext i32 %25 to i64, !dbg !1044
  tail call void @addReplyLongLong(%struct.client* %0, i64 %26) #5, !dbg !1046
  %27 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 2, i64 %23, i32 1, !dbg !1047
  %28 = load i32, i32* %27, align 4, !dbg !1047, !tbaa !209
  %29 = zext i32 %28 to i64, !dbg !1048
  tail call void @addReplyLongLong(%struct.client* %0, i64 %29) #5, !dbg !1049
  %30 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i64 0, i32 1, !dbg !1050
  %31 = load i32, i32* %30, align 4, !dbg !1050, !tbaa !181
  %32 = zext i32 %31 to i64, !dbg !1051
  tail call void @addReplyLongLong(%struct.client* %0, i64 %32) #5, !dbg !1052
  %33 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %9) #5, !dbg !1030
  %34 = icmp eq %struct.dictEntry* %33, null, !dbg !1032
  br i1 %34, label %35, label %12, !dbg !1033, !llvm.loop !1053

; <label>:35:                                     ; preds = %12, %1
  tail call void @dictReleaseIterator(%struct.dictIterator* %9) #5, !dbg !1055
  ret void, !dbg !1056
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @latencyCommandGenSparkeline(i8*, %struct.latencyTimeSeries* nocapture readonly) local_unnamed_addr #0 !dbg !1057 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call %struct.sequence* @createSparklineSequence() #5, !dbg !1093
  %5 = tail call i8* @sdsempty() #5, !dbg !1095
  %6 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 0
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i64 0, i32 0
  br label %9, !dbg !1100

; <label>:9:                                      ; preds = %58, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %58 ]
  %11 = phi i32 [ 0, %2 ], [ %60, %58 ]
  %12 = phi i32 [ 0, %2 ], [ %59, %58 ]
  %13 = load i32, i32* %6, align 4, !dbg !1101, !tbaa !177
  %14 = add nsw i32 %13, %10, !dbg !1102
  %15 = srem i32 %14, 160, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1105
  %16 = sext i32 %15 to i64, !dbg !1107
  %17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %16, i32 0, !dbg !1109
  %18 = load i32, i32* %17, align 4, !dbg !1109, !tbaa !202
  %19 = icmp eq i32 %18, 0, !dbg !1110
  br i1 %19, label %58, label %20, !dbg !1111

; <label>:20:                                     ; preds = %9
  %21 = load i32, i32* %8, align 8, !dbg !1112, !tbaa !1114
  %22 = icmp eq i32 %21, 0, !dbg !1116
  %23 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 2, i64 %16, i32 1, !dbg !1117
  %24 = load i32, i32* %23, align 4, !dbg !1117, !tbaa !209
  br i1 %22, label %30, label %25, !dbg !1120

; <label>:25:                                     ; preds = %20
  %26 = icmp ugt i32 %24, %11, !dbg !1121
  %27 = select i1 %26, i32 %24, i32 %11, !dbg !1122
  %28 = icmp ult i32 %24, %12, !dbg !1123
  %29 = select i1 %28, i32 %24, i32 %12, !dbg !1125
  br label %30, !dbg !1125

; <label>:30:                                     ; preds = %25, %20
  %31 = phi i32 [ %24, %20 ], [ %29, %25 ], !dbg !1126
  %32 = phi i32 [ %24, %20 ], [ %27, %25 ], !dbg !1117
  %33 = call i64 @time(i64* null) #5, !dbg !1127
  %34 = load i32, i32* %17, align 4, !dbg !1128, !tbaa !202
  %35 = trunc i64 %33 to i32, !dbg !1127
  %36 = sub i32 %35, %34, !dbg !1127
  %37 = icmp slt i32 %36, 60, !dbg !1130
  br i1 %37, label %38, label %40, !dbg !1132

; <label>:38:                                     ; preds = %30
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i32 %36) #5, !dbg !1133
  br label %55, !dbg !1133

; <label>:40:                                     ; preds = %30
  %41 = icmp slt i32 %36, 3600, !dbg !1134
  br i1 %41, label %42, label %47, !dbg !1136

; <label>:42:                                     ; preds = %40
  %43 = trunc i32 %36 to i16
  %44 = udiv i16 %43, 60
  %45 = zext i16 %44 to i32
  %46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %45) #5, !dbg !1137
  br label %55, !dbg !1137

; <label>:47:                                     ; preds = %40
  %48 = icmp slt i32 %36, 86400, !dbg !1138
  br i1 %48, label %49, label %52, !dbg !1140

; <label>:49:                                     ; preds = %47
  %50 = udiv i32 %36, 3600
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %50) #5, !dbg !1141
  br label %55, !dbg !1141

; <label>:52:                                     ; preds = %47
  %53 = udiv i32 %36, 86400
  %54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i32 %53) #5, !dbg !1142
  br label %55

; <label>:55:                                     ; preds = %42, %52, %49, %38
  %56 = load i32, i32* %23, align 4, !dbg !1143, !tbaa !209
  %57 = uitofp i32 %56 to double, !dbg !1144
  call void @sparklineSequenceAddSample(%struct.sequence* nonnull %4, double %57, i8* nonnull %7) #5, !dbg !1145
  br label %58, !dbg !1146

; <label>:58:                                     ; preds = %9, %55
  %59 = phi i32 [ %31, %55 ], [ %12, %9 ], !dbg !1147
  %60 = phi i32 [ %32, %55 ], [ %11, %9 ], !dbg !1147
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7, !dbg !1146
  %61 = add nuw nsw i32 %10, 1, !dbg !1149
  %62 = icmp eq i32 %61, 160, !dbg !1150
  br i1 %62, label %63, label %9, !dbg !1100, !llvm.loop !1151

; <label>:63:                                     ; preds = %58
  %64 = zext i32 %60 to i64, !dbg !1153
  %65 = zext i32 %59 to i64, !dbg !1154
  %66 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %1, i64 0, i32 1, !dbg !1155
  %67 = load i32, i32* %66, align 4, !dbg !1155, !tbaa !181
  %68 = zext i32 %67 to i64, !dbg !1156
  %69 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %5, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0), i8* %0, i64 %64, i64 %65, i64 %68) #5, !dbg !1157
  br label %70, !dbg !1158

; <label>:70:                                     ; preds = %70, %63
  %71 = phi i32 [ 0, %63 ], [ %74, %70 ]
  %72 = phi i8* [ %69, %63 ], [ %73, %70 ]
  %73 = call i8* @sdscatlen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #5, !dbg !1160
  %74 = add nuw nsw i32 %71, 1, !dbg !1162
  %75 = icmp eq i32 %74, 80, !dbg !1163
  br i1 %75, label %76, label %70, !dbg !1158, !llvm.loop !1164

; <label>:76:                                     ; preds = %70
  %77 = call i8* @sdscatlen(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1) #5, !dbg !1166
  %78 = call i8* @sparklineRender(i8* %77, %struct.sequence* %4, i32 80, i32 4, i32 1) #5, !dbg !1167
  call void @freeSparklineSequence(%struct.sequence* %4) #5, !dbg !1168
  ret i8* %78, !dbg !1169
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
define dso_local void @latencyCommand(%struct.client*) local_unnamed_addr #0 !dbg !1170 {
  %2 = alloca [8 x i8*], align 16
  %3 = bitcast [8 x i8*]* %2 to i8*, !dbg !1197
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #7, !dbg !1197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 16 bitcast ([8 x i8*]* @latencyCommand.help to i8*), i64 64, i1 false), !dbg !1198
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1199
  %5 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1199, !tbaa !1200
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 1, !dbg !1204
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !1204, !tbaa !1205
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !1206
  %9 = load i8*, i8** %8, align 8, !dbg !1206, !tbaa !1207
  %10 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !1209
  %11 = icmp eq i32 %10, 0, !dbg !1209
  br i1 %11, label %12, label %27, !dbg !1210

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1211
  %14 = load i32, i32* %13, align 8, !dbg !1211, !tbaa !1212
  %15 = icmp eq i32 %14, 3, !dbg !1213
  br i1 %15, label %16, label %27, !dbg !1214

; <label>:16:                                     ; preds = %12
  %17 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1215, !tbaa !118
  %18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1217
  %19 = load %struct.redisObject*, %struct.redisObject** %18, align 8, !dbg !1217, !tbaa !1205
  %20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !1218
  %21 = load i8*, i8** %20, align 8, !dbg !1218, !tbaa !1207
  %22 = tail call i8* @dictFetchValue(%struct.dict* %17, i8* %21) #5, !dbg !1219
  %23 = icmp eq i8* %22, null, !dbg !1220
  br i1 %23, label %24, label %25, !dbg !1222

; <label>:24:                                     ; preds = %16
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #5, !dbg !1223
  br label %161, !dbg !1225

; <label>:25:                                     ; preds = %16
  %26 = bitcast i8* %22 to %struct.latencyTimeSeries*, !dbg !1219
  tail call void @latencyCommandReplyWithSamples(%struct.client* nonnull %0, %struct.latencyTimeSeries* %26) #8, !dbg !1227
  br label %161

; <label>:27:                                     ; preds = %1, %12
  %28 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !1229
  %29 = icmp eq i32 %28, 0, !dbg !1229
  br i1 %29, label %30, label %49, !dbg !1230

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1231
  %32 = load i32, i32* %31, align 8, !dbg !1231, !tbaa !1212
  %33 = icmp eq i32 %32, 3, !dbg !1232
  br i1 %33, label %34, label %49, !dbg !1233

; <label>:34:                                     ; preds = %30
  %35 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1234, !tbaa !118
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1235
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !1235, !tbaa !1205
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !1236
  %39 = load i8*, i8** %38, align 8, !dbg !1236, !tbaa !1207
  %40 = tail call %struct.dictEntry* @dictFind(%struct.dict* %35, i8* %39) #5, !dbg !1237
  %41 = icmp eq %struct.dictEntry* %40, null, !dbg !1239
  br i1 %41, label %155, label %42, !dbg !1241

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 1, i32 0, !dbg !1242
  %44 = bitcast i8** %43 to %struct.latencyTimeSeries**, !dbg !1242
  %45 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %44, align 8, !dbg !1242, !tbaa !529
  %46 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %40, i64 0, i32 0, !dbg !1243
  %47 = load i8*, i8** %46, align 8, !dbg !1243, !tbaa !295
  %48 = tail call i8* @latencyCommandGenSparkeline(i8* %47, %struct.latencyTimeSeries* %45) #8, !dbg !1245
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* %48) #5, !dbg !1247
  tail call void @sdsfree(i8* %48) #5, !dbg !1248
  br label %161

; <label>:49:                                     ; preds = %27, %30
  %50 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !1249
  %51 = icmp eq i32 %50, 0, !dbg !1249
  br i1 %51, label %52, label %57, !dbg !1250

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1251
  %54 = load i32, i32* %53, align 8, !dbg !1251, !tbaa !1212
  %55 = icmp eq i32 %54, 2, !dbg !1252
  br i1 %55, label %56, label %57, !dbg !1253

; <label>:56:                                     ; preds = %52
  tail call void @latencyCommandReplyWithLatestEvents(%struct.client* nonnull %0) #8, !dbg !1254
  br label %161, !dbg !1256

; <label>:57:                                     ; preds = %49, %52
  %58 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !1257
  %59 = icmp eq i32 %58, 0, !dbg !1257
  br i1 %59, label %60, label %92, !dbg !1258

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1259
  %62 = load i32, i32* %61, align 8, !dbg !1259, !tbaa !1212
  %63 = icmp eq i32 %62, 2, !dbg !1260
  br i1 %63, label %64, label %92, !dbg !1261

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @createLatencyReport() #8, !dbg !1262
  %66 = getelementptr inbounds i8, i8* %65, i64 -1, !dbg !1275
  %67 = load i8, i8* %66, align 1, !dbg !1275, !tbaa !529
  %68 = trunc i8 %67 to i3, !dbg !1277
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1277

; <label>:69:                                     ; preds = %64
  %70 = lshr i8 %67, 3, !dbg !1278
  %71 = zext i8 %70 to i64, !dbg !1278
  br label %90, !dbg !1280

; <label>:72:                                     ; preds = %64
  %73 = getelementptr inbounds i8, i8* %65, i64 -3, !dbg !1281
  %74 = load i8, i8* %73, align 1, !dbg !1282, !tbaa !529
  %75 = zext i8 %74 to i64, !dbg !1281
  br label %90, !dbg !1283

; <label>:76:                                     ; preds = %64
  %77 = getelementptr inbounds i8, i8* %65, i64 -5, !dbg !1284
  %78 = bitcast i8* %77 to i16*, !dbg !1285
  %79 = load i16, i16* %78, align 1, !dbg !1285, !tbaa !1286
  %80 = zext i16 %79 to i64, !dbg !1284
  br label %90, !dbg !1288

; <label>:81:                                     ; preds = %64
  %82 = getelementptr inbounds i8, i8* %65, i64 -9, !dbg !1289
  %83 = bitcast i8* %82 to i32*, !dbg !1290
  %84 = load i32, i32* %83, align 1, !dbg !1290, !tbaa !353
  %85 = zext i32 %84 to i64, !dbg !1289
  br label %90, !dbg !1291

; <label>:86:                                     ; preds = %64
  %87 = getelementptr inbounds i8, i8* %65, i64 -17, !dbg !1292
  %88 = bitcast i8* %87 to i64*, !dbg !1293
  %89 = load i64, i64* %88, align 1, !dbg !1293, !tbaa !1294
  br label %90, !dbg !1295

; <label>:90:                                     ; preds = %64, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %64 ], !dbg !1296
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %65, i64 %91) #5, !dbg !1297
  tail call void @sdsfree(i8* %65) #5, !dbg !1298
  br label %161, !dbg !1299

; <label>:92:                                     ; preds = %57, %60
  %93 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !1300
  %94 = icmp eq i32 %93, 0, !dbg !1300
  br i1 %94, label %95, label %145, !dbg !1301

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1302
  %97 = load i32, i32* %96, align 8, !dbg !1302, !tbaa !1212
  %98 = icmp sgt i32 %97, 1, !dbg !1303
  br i1 %98, label %99, label %145, !dbg !1304

; <label>:99:                                     ; preds = %95
  %100 = icmp eq i32 %97, 2, !dbg !1305
  br i1 %100, label %109, label %101, !dbg !1306

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %5, i64 2, !dbg !1309
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !1309, !tbaa !1205
  %104 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %103, i64 0, i32 2, !dbg !1312
  %105 = load i8*, i8** %104, align 8, !dbg !1312, !tbaa !1207
  %106 = tail call i32 @latencyResetEvent(i8* %105) #8, !dbg !1313
  %107 = load i32, i32* %96, align 8, !dbg !1314, !tbaa !1212
  %108 = icmp sgt i32 %107, 3, !dbg !1315
  br i1 %108, label %128, label %142, !dbg !1316, !llvm.loop !1317

; <label>:109:                                    ; preds = %99
  %110 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1323, !tbaa !118
  %111 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %110) #5, !dbg !1324
  %112 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %111) #5, !dbg !1326
  %113 = icmp eq %struct.dictEntry* %112, null, !dbg !1328
  br i1 %113, label %126, label %114, !dbg !1329

; <label>:114:                                    ; preds = %109, %114
  %115 = phi %struct.dictEntry* [ %122, %114 ], [ %112, %109 ]
  %116 = phi i32 [ %121, %114 ], [ 0, %109 ]
  %117 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %115, i64 0, i32 0, !dbg !1330
  %118 = load i8*, i8** %117, align 8, !dbg !1330, !tbaa !295
  %119 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 289), align 8, !dbg !1332, !tbaa !118
  %120 = tail call i32 @dictDelete(%struct.dict* %119, i8* %118) #5, !dbg !1333
  %121 = add nuw nsw i32 %116, 1, !dbg !1334
  %122 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %111) #5, !dbg !1326
  %123 = icmp eq %struct.dictEntry* %122, null, !dbg !1328
  br i1 %123, label %124, label %114, !dbg !1329, !llvm.loop !309

; <label>:124:                                    ; preds = %114
  %125 = zext i32 %121 to i64, !dbg !1335
  br label %126, !dbg !1335

; <label>:126:                                    ; preds = %124, %109
  %127 = phi i64 [ 0, %109 ], [ %125, %124 ]
  tail call void @dictReleaseIterator(%struct.dictIterator* %111) #5, !dbg !1335
  tail call void @addReplyLongLong(%struct.client* %0, i64 %127) #5, !dbg !1336
  br label %161, !dbg !1337

; <label>:128:                                    ; preds = %101, %128
  %129 = phi i64 [ %138, %128 ], [ 3, %101 ]
  %130 = phi i32 [ %137, %128 ], [ %106, %101 ]
  %131 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1338, !tbaa !1200
  %132 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %131, i64 %129, !dbg !1309
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !1309, !tbaa !1205
  %134 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %133, i64 0, i32 2, !dbg !1312
  %135 = load i8*, i8** %134, align 8, !dbg !1312, !tbaa !1207
  %136 = tail call i32 @latencyResetEvent(i8* %135) #8, !dbg !1313
  %137 = add nsw i32 %136, %130, !dbg !1339
  %138 = add nuw nsw i64 %129, 1, !dbg !1340
  %139 = load i32, i32* %96, align 8, !dbg !1314, !tbaa !1212
  %140 = sext i32 %139 to i64, !dbg !1315
  %141 = icmp slt i64 %138, %140, !dbg !1315
  br i1 %141, label %128, label %142, !dbg !1316, !llvm.loop !1317

; <label>:142:                                    ; preds = %128, %101
  %143 = phi i32 [ %106, %101 ], [ %137, %128 ], !dbg !1339
  %144 = sext i32 %143 to i64, !dbg !1341
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %144) #5, !dbg !1342
  br label %161

; <label>:145:                                    ; preds = %92, %95
  %146 = tail call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !1343
  %147 = icmp eq i32 %146, 0, !dbg !1343
  br i1 %147, label %148, label %154, !dbg !1345

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1346
  %150 = load i32, i32* %149, align 8, !dbg !1346, !tbaa !1212
  %151 = icmp sgt i32 %150, 1, !dbg !1347
  br i1 %151, label %152, label %154, !dbg !1348

; <label>:152:                                    ; preds = %148
  %153 = getelementptr inbounds [8 x i8*], [8 x i8*]* %2, i64 0, i64 0, !dbg !1349
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %153) #5, !dbg !1351
  br label %161, !dbg !1352

; <label>:154:                                    ; preds = %145, %148
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #5, !dbg !1353
  br label %161

; <label>:155:                                    ; preds = %34
  %156 = load %struct.redisObject**, %struct.redisObject*** %4, align 8, !dbg !1355, !tbaa !1200
  %157 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %156, i64 2, !dbg !1356
  %158 = load %struct.redisObject*, %struct.redisObject** %157, align 8, !dbg !1356, !tbaa !1205
  %159 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %158, i64 0, i32 2, !dbg !1357
  %160 = load i8*, i8** %159, align 8, !dbg !1357, !tbaa !1207
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i64 0, i64 0), i8* %160) #5, !dbg !1358
  br label %161, !dbg !1359

; <label>:161:                                    ; preds = %42, %25, %24, %56, %142, %126, %154, %152, %90, %155
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #7, !dbg !1359
  ret void, !dbg !1359
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
!228 = !DILocation(line: 128, column: 1, scope: !131)
!229 = distinct !DISubprogram(name: "latencyResetEvent", scope: !3, file: !3, line: 135, type: !230, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!80, !15}
!232 = !{!233, !234, !281, !282, !283}
!233 = !DILocalVariable(name: "event_to_reset", arg: 1, scope: !229, file: !3, line: 135, type: !15)
!234 = !DILocalVariable(name: "di", scope: !229, file: !3, line: 136, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !62, line: 95, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !62, line: 88, size: 384, elements: !238)
!238 = !{!239, !275, !276, !277, !278, !279, !280}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !237, file: !62, line: 89, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !62, line: 82, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !62, line: 76, size: 768, elements: !243)
!243 = !{!244, !246, !247, !273, !274}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !62, line: 77, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !242, file: !62, line: 78, baseType: !6, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !242, file: !62, line: 79, baseType: !248, size: 512, offset: 128)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 512, elements: !271)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !62, line: 74, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !62, line: 69, size: 256, elements: !251)
!251 = !{!252, !268, !269, !270}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !250, file: !62, line: 70, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !62, line: 56, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !62, line: 47, size: 192, elements: !257)
!257 = !{!258, !259, !266}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !256, file: !62, line: 48, baseType: !6, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !256, file: !62, line: 54, baseType: !260, size: 64, offset: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !62, line: 49, size: 64, elements: !261)
!261 = !{!262, !263, !264, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !260, file: !62, line: 50, baseType: !6, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !260, file: !62, line: 51, baseType: !55, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !260, file: !62, line: 52, baseType: !7, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !260, file: !62, line: 53, baseType: !13, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !62, line: 55, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !62, line: 71, baseType: !12, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !250, file: !62, line: 72, baseType: !12, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !250, file: !62, line: 73, baseType: !12, size: 64, offset: 192)
!271 = !{!272}
!272 = !DISubrange(count: 2)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !242, file: !62, line: 80, baseType: !11, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !242, file: !62, line: 81, baseType: !12, size: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !237, file: !62, line: 90, baseType: !11, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !237, file: !62, line: 91, baseType: !80, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !237, file: !62, line: 91, baseType: !80, size: 32, offset: 160)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !237, file: !62, line: 92, baseType: !254, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !237, file: !62, line: 92, baseType: !254, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !237, file: !62, line: 94, baseType: !136, size: 64, offset: 320)
!281 = !DILocalVariable(name: "de", scope: !229, file: !3, line: 137, type: !254)
!282 = !DILocalVariable(name: "resets", scope: !229, file: !3, line: 138, type: !80)
!283 = !DILocalVariable(name: "event", scope: !284, file: !3, line: 142, type: !15)
!284 = distinct !DILexicalBlock(scope: !229, file: !3, line: 141, column: 40)
!285 = !DILocation(line: 135, column: 29, scope: !229)
!286 = !DILocation(line: 138, column: 9, scope: !229)
!287 = !DILocation(line: 140, column: 37, scope: !229)
!288 = !DILocation(line: 140, column: 10, scope: !229)
!289 = !DILocation(line: 136, column: 19, scope: !229)
!290 = !DILocation(line: 141, column: 17, scope: !229)
!291 = !DILocation(line: 137, column: 16, scope: !229)
!292 = !DILocation(line: 141, column: 31, scope: !229)
!293 = !DILocation(line: 141, column: 5, scope: !229)
!294 = !DILocation(line: 142, column: 23, scope: !284)
!295 = !{!296, !123, i64 0}
!296 = !{!"dictEntry", !123, i64 0, !121, i64 8, !123, i64 16}
!297 = !DILocation(line: 142, column: 15, scope: !284)
!298 = !DILocation(line: 144, column: 36, scope: !299)
!299 = distinct !DILexicalBlock(scope: !284, file: !3, line: 144, column: 13)
!300 = !DILocation(line: 144, column: 39, scope: !299)
!301 = !DILocation(line: 144, column: 72, scope: !299)
!302 = !DILocation(line: 144, column: 13, scope: !284)
!303 = !DILocation(line: 145, column: 31, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !3, line: 144, column: 78)
!305 = !DILocation(line: 145, column: 13, scope: !304)
!306 = !DILocation(line: 146, column: 19, scope: !304)
!307 = !DILocation(line: 147, column: 9, scope: !304)
!308 = !DILocation(line: 0, scope: !229)
!309 = distinct !{!309, !293, !310}
!310 = !DILocation(line: 148, column: 5, scope: !229)
!311 = !DILocation(line: 0, scope: !304)
!312 = !DILocation(line: 149, column: 5, scope: !229)
!313 = !DILocation(line: 150, column: 5, scope: !229)
!314 = distinct !DISubprogram(name: "analyzeLatencyForEvent", scope: !3, file: !3, line: 160, type: !315, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !327)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !15, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latencyStats", file: !143, line: 54, size: 256, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "all_time_high", scope: !318, file: !143, line: 55, baseType: !45, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !318, file: !143, line: 56, baseType: !45, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !318, file: !143, line: 57, baseType: !45, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !318, file: !143, line: 58, baseType: !45, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mad", scope: !318, file: !143, line: 59, baseType: !45, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !318, file: !143, line: 60, baseType: !45, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !318, file: !143, line: 61, baseType: !158, size: 64, offset: 192)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DILocalVariable(name: "event", arg: 1, scope: !314, file: !3, line: 160, type: !15)
!329 = !DILocalVariable(name: "ls", arg: 2, scope: !314, file: !3, line: 160, type: !317)
!330 = !DILocalVariable(name: "ts", scope: !314, file: !3, line: 161, type: !141)
!331 = !DILocalVariable(name: "j", scope: !314, file: !3, line: 162, type: !80)
!332 = !DILocalVariable(name: "sum", scope: !314, file: !3, line: 163, type: !55)
!333 = !DILocalVariable(name: "delta", scope: !334, file: !3, line: 206, type: !7)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 205, column: 42)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 205, column: 5)
!336 = distinct !DILexicalBlock(scope: !314, file: !3, line: 205, column: 5)
!337 = !DILocation(line: 160, column: 35, scope: !314)
!338 = !DILocation(line: 160, column: 63, scope: !314)
!339 = !DILocation(line: 161, column: 58, scope: !314)
!340 = !DILocation(line: 161, column: 36, scope: !314)
!341 = !DILocation(line: 165, column: 25, scope: !314)
!342 = !DILocation(line: 161, column: 31, scope: !314)
!343 = !DILocation(line: 165, column: 34, scope: !314)
!344 = !DILocation(line: 165, column: 9, scope: !314)
!345 = !DILocation(line: 165, column: 23, scope: !314)
!346 = !{!347, !120, i64 0}
!347 = !{!"latencyStats", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !120, i64 16, !120, i64 20, !124, i64 24}
!348 = !DILocation(line: 166, column: 9, scope: !314)
!349 = !DILocation(line: 167, column: 9, scope: !314)
!350 = !DILocation(line: 168, column: 9, scope: !314)
!351 = !DILocation(line: 169, column: 9, scope: !314)
!352 = !DILocation(line: 166, column: 13, scope: !314)
!353 = !{!120, !120, i64 0}
!354 = !DILocation(line: 170, column: 9, scope: !314)
!355 = !DILocation(line: 170, column: 17, scope: !314)
!356 = !{!347, !120, i64 20}
!357 = !DILocation(line: 171, column: 9, scope: !314)
!358 = !DILocation(line: 171, column: 16, scope: !314)
!359 = !{!347, !124, i64 24}
!360 = !DILocation(line: 172, column: 9, scope: !314)
!361 = !DILocation(line: 163, column: 14, scope: !314)
!362 = !DILocation(line: 162, column: 9, scope: !314)
!363 = !DILocation(line: 176, column: 5, scope: !364)
!364 = distinct !DILexicalBlock(scope: !314, file: !3, line: 176, column: 5)
!365 = !DILocation(line: 177, column: 28, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 177, column: 13)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 176, column: 42)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 176, column: 5)
!369 = !DILocation(line: 177, column: 33, scope: !366)
!370 = !DILocation(line: 177, column: 13, scope: !367)
!371 = !DILocation(line: 178, column: 20, scope: !367)
!372 = !DILocation(line: 179, column: 25, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !3, line: 179, column: 13)
!374 = !DILocation(line: 0, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 182, column: 17)
!376 = distinct !DILexicalBlock(scope: !373, file: !3, line: 181, column: 16)
!377 = !DILocation(line: 179, column: 13, scope: !367)
!378 = !DILocation(line: 180, column: 31, scope: !379)
!379 = distinct !DILexicalBlock(scope: !373, file: !3, line: 179, column: 31)
!380 = !{!347, !120, i64 12}
!381 = !DILocation(line: 180, column: 21, scope: !379)
!382 = !{!347, !120, i64 8}
!383 = !DILocation(line: 181, column: 9, scope: !379)
!384 = !DILocation(line: 182, column: 25, scope: !375)
!385 = !DILocation(line: 182, column: 17, scope: !376)
!386 = !DILocation(line: 183, column: 25, scope: !375)
!387 = !DILocation(line: 183, column: 17, scope: !375)
!388 = !DILocation(line: 184, column: 25, scope: !389)
!389 = distinct !DILexicalBlock(scope: !376, file: !3, line: 184, column: 17)
!390 = !DILocation(line: 184, column: 17, scope: !376)
!391 = !DILocation(line: 185, column: 25, scope: !389)
!392 = !DILocation(line: 185, column: 17, scope: !389)
!393 = !DILocation(line: 187, column: 16, scope: !367)
!394 = !DILocation(line: 187, column: 13, scope: !367)
!395 = !DILocation(line: 190, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !367, file: !3, line: 190, column: 13)
!397 = !DILocation(line: 190, column: 32, scope: !396)
!398 = !DILocation(line: 190, column: 52, scope: !396)
!399 = !DILocation(line: 190, column: 29, scope: !396)
!400 = !DILocation(line: 191, column: 24, scope: !396)
!401 = !DILocation(line: 191, column: 13, scope: !396)
!402 = !DILocation(line: 0, scope: !367)
!403 = !DILocation(line: 176, column: 38, scope: !368)
!404 = !DILocation(line: 176, column: 19, scope: !368)
!405 = distinct !{!405, !363, !406}
!406 = !DILocation(line: 192, column: 5, scope: !364)
!407 = !DILocation(line: 197, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !314, file: !3, line: 197, column: 9)
!409 = !DILocation(line: 197, column: 9, scope: !314)
!410 = !DILocation(line: 198, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 197, column: 22)
!412 = !DILocation(line: 198, column: 23, scope: !411)
!413 = !DILocation(line: 198, column: 19, scope: !411)
!414 = !DILocation(line: 198, column: 17, scope: !411)
!415 = !{!347, !120, i64 4}
!416 = !DILocation(line: 199, column: 22, scope: !411)
!417 = !DILocation(line: 199, column: 39, scope: !411)
!418 = !DILocation(line: 199, column: 33, scope: !411)
!419 = !DILocation(line: 200, column: 24, scope: !420)
!420 = distinct !DILexicalBlock(scope: !411, file: !3, line: 200, column: 13)
!421 = !DILocation(line: 200, column: 13, scope: !411)
!422 = !DILocation(line: 0, scope: !420)
!423 = !DILocation(line: 208, column: 28, scope: !424)
!424 = distinct !DILexicalBlock(scope: !334, file: !3, line: 208, column: 13)
!425 = !DILocation(line: 208, column: 33, scope: !424)
!426 = !DILocation(line: 208, column: 13, scope: !334)
!427 = !DILocation(line: 209, column: 30, scope: !334)
!428 = !DILocation(line: 209, column: 17, scope: !334)
!429 = !DILocation(line: 209, column: 51, scope: !334)
!430 = !DILocation(line: 209, column: 36, scope: !334)
!431 = !DILocation(line: 209, column: 34, scope: !334)
!432 = !DILocation(line: 206, column: 17, scope: !334)
!433 = !DILocation(line: 210, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !334, file: !3, line: 210, column: 13)
!435 = !DILocation(line: 210, column: 32, scope: !434)
!436 = !DILocation(line: 210, column: 13, scope: !334)
!437 = !DILocation(line: 211, column: 13, scope: !334)
!438 = !DILocation(line: 212, column: 5, scope: !335)
!439 = !DILocation(line: 0, scope: !334)
!440 = !DILocation(line: 205, column: 38, scope: !335)
!441 = !DILocation(line: 213, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !314, file: !3, line: 213, column: 9)
!443 = !DILocation(line: 213, column: 9, scope: !442)
!444 = !DILocation(line: 213, column: 9, scope: !314)
!445 = !DILocation(line: 213, column: 38, scope: !442)
!446 = !DILocation(line: 213, column: 36, scope: !442)
!447 = !DILocation(line: 213, column: 32, scope: !442)
!448 = !DILocation(line: 213, column: 30, scope: !442)
!449 = !{!347, !120, i64 16}
!450 = !DILocation(line: 213, column: 22, scope: !442)
!451 = !DILocation(line: 214, column: 1, scope: !314)
!452 = !DILocation(line: 205, column: 19, scope: !335)
!453 = !DILocation(line: 205, column: 5, scope: !336)
!454 = distinct !{!454, !453, !455}
!455 = !DILocation(line: 212, column: 5, scope: !336)
!456 = distinct !DISubprogram(name: "createLatencyReport", scope: !3, file: !3, line: 217, type: !457, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !460)
!457 = !DISubroutineType(types: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !19, line: 43, baseType: !15)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484, !485, !486}
!461 = !DILocalVariable(name: "report", scope: !456, file: !3, line: 218, type: !459)
!462 = !DILocalVariable(name: "advise_better_vm", scope: !456, file: !3, line: 219, type: !80)
!463 = !DILocalVariable(name: "advise_slowlog_enabled", scope: !456, file: !3, line: 220, type: !80)
!464 = !DILocalVariable(name: "advise_slowlog_tuning", scope: !456, file: !3, line: 221, type: !80)
!465 = !DILocalVariable(name: "advise_slowlog_inspect", scope: !456, file: !3, line: 222, type: !80)
!466 = !DILocalVariable(name: "advise_disk_contention", scope: !456, file: !3, line: 223, type: !80)
!467 = !DILocalVariable(name: "advise_scheduler", scope: !456, file: !3, line: 224, type: !80)
!468 = !DILocalVariable(name: "advise_data_writeback", scope: !456, file: !3, line: 225, type: !80)
!469 = !DILocalVariable(name: "advise_no_appendfsync", scope: !456, file: !3, line: 226, type: !80)
!470 = !DILocalVariable(name: "advise_local_disk", scope: !456, file: !3, line: 227, type: !80)
!471 = !DILocalVariable(name: "advise_ssd", scope: !456, file: !3, line: 228, type: !80)
!472 = !DILocalVariable(name: "advise_write_load_info", scope: !456, file: !3, line: 229, type: !80)
!473 = !DILocalVariable(name: "advise_hz", scope: !456, file: !3, line: 230, type: !80)
!474 = !DILocalVariable(name: "advise_large_objects", scope: !456, file: !3, line: 231, type: !80)
!475 = !DILocalVariable(name: "advise_mass_eviction", scope: !456, file: !3, line: 232, type: !80)
!476 = !DILocalVariable(name: "advise_relax_fsync_policy", scope: !456, file: !3, line: 233, type: !80)
!477 = !DILocalVariable(name: "advise_disable_thp", scope: !456, file: !3, line: 234, type: !80)
!478 = !DILocalVariable(name: "advices", scope: !456, file: !3, line: 235, type: !80)
!479 = !DILocalVariable(name: "di", scope: !456, file: !3, line: 248, type: !235)
!480 = !DILocalVariable(name: "de", scope: !456, file: !3, line: 249, type: !254)
!481 = !DILocalVariable(name: "eventnum", scope: !456, file: !3, line: 250, type: !80)
!482 = !DILocalVariable(name: "event", scope: !483, file: !3, line: 254, type: !15)
!483 = distinct !DILexicalBlock(scope: !456, file: !3, line: 253, column: 40)
!484 = !DILocalVariable(name: "ts", scope: !483, file: !3, line: 255, type: !141)
!485 = !DILocalVariable(name: "ls", scope: !483, file: !3, line: 256, type: !318)
!486 = !DILocalVariable(name: "fork_quality", scope: !487, file: !3, line: 276, type: !15)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 275, column: 40)
!488 = distinct !DILexicalBlock(scope: !483, file: !3, line: 275, column: 13)
!489 = !DILocation(line: 218, column: 18, scope: !456)
!490 = !DILocation(line: 218, column: 9, scope: !456)
!491 = !DILocation(line: 219, column: 9, scope: !456)
!492 = !DILocation(line: 220, column: 9, scope: !456)
!493 = !DILocation(line: 221, column: 9, scope: !456)
!494 = !DILocation(line: 222, column: 9, scope: !456)
!495 = !DILocation(line: 223, column: 9, scope: !456)
!496 = !DILocation(line: 224, column: 9, scope: !456)
!497 = !DILocation(line: 225, column: 9, scope: !456)
!498 = !DILocation(line: 226, column: 9, scope: !456)
!499 = !DILocation(line: 227, column: 9, scope: !456)
!500 = !DILocation(line: 228, column: 9, scope: !456)
!501 = !DILocation(line: 229, column: 9, scope: !456)
!502 = !DILocation(line: 230, column: 9, scope: !456)
!503 = !DILocation(line: 231, column: 9, scope: !456)
!504 = !DILocation(line: 232, column: 9, scope: !456)
!505 = !DILocation(line: 233, column: 9, scope: !456)
!506 = !DILocation(line: 234, column: 9, scope: !456)
!507 = !DILocation(line: 235, column: 9, scope: !456)
!508 = !DILocation(line: 239, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !456, file: !3, line: 239, column: 9)
!510 = !{!511, !124, i64 24}
!511 = !{!"dictht", !123, i64 0, !124, i64 8, !124, i64 16, !124, i64 24}
!512 = !DILocation(line: 239, column: 41, scope: !509)
!513 = !DILocation(line: 240, column: 16, scope: !509)
!514 = !DILocation(line: 240, column: 42, scope: !509)
!515 = !DILocation(line: 239, column: 46, scope: !509)
!516 = !DILocation(line: 242, column: 18, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 241, column: 5)
!518 = !DILocation(line: 243, column: 9, scope: !517)
!519 = !DILocation(line: 250, column: 9, scope: !456)
!520 = !DILocation(line: 252, column: 10, scope: !456)
!521 = !DILocation(line: 248, column: 19, scope: !456)
!522 = !DILocation(line: 253, column: 17, scope: !456)
!523 = !DILocation(line: 249, column: 16, scope: !456)
!524 = !DILocation(line: 253, column: 31, scope: !456)
!525 = !DILocation(line: 253, column: 5, scope: !456)
!526 = !DILocation(line: 254, column: 23, scope: !483)
!527 = !DILocation(line: 254, column: 15, scope: !483)
!528 = !DILocation(line: 255, column: 40, scope: !483)
!529 = !{!121, !121, i64 0}
!530 = !DILocation(line: 255, column: 35, scope: !483)
!531 = !DILocation(line: 256, column: 9, scope: !483)
!532 = !DILocation(line: 258, column: 16, scope: !533)
!533 = distinct !DILexicalBlock(scope: !483, file: !3, line: 258, column: 13)
!534 = !DILocation(line: 258, column: 13, scope: !483)
!535 = distinct !{!535, !525, !536}
!536 = !DILocation(line: 380, column: 5, scope: !456)
!537 = !DILocation(line: 259, column: 17, scope: !483)
!538 = !DILocation(line: 260, column: 22, scope: !539)
!539 = distinct !DILexicalBlock(scope: !483, file: !3, line: 260, column: 13)
!540 = !DILocation(line: 260, column: 13, scope: !483)
!541 = !DILocation(line: 261, column: 22, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 260, column: 28)
!543 = !DILocation(line: 262, column: 9, scope: !542)
!544 = !DILocation(line: 0, scope: !456)
!545 = !DILocation(line: 256, column: 29, scope: !483)
!546 = !DILocation(line: 263, column: 9, scope: !483)
!547 = !DILocation(line: 268, column: 16, scope: !483)
!548 = !DILocation(line: 269, column: 32, scope: !483)
!549 = !DILocation(line: 269, column: 13, scope: !483)
!550 = !DILocation(line: 270, column: 32, scope: !483)
!551 = !DILocation(line: 270, column: 13, scope: !483)
!552 = !DILocation(line: 271, column: 25, scope: !483)
!553 = !DILocation(line: 271, column: 13, scope: !483)
!554 = !DILocation(line: 271, column: 32, scope: !483)
!555 = !DILocation(line: 271, column: 31, scope: !483)
!556 = !DILocation(line: 272, column: 33, scope: !483)
!557 = !DILocation(line: 272, column: 13, scope: !483)
!558 = !DILocation(line: 265, column: 18, scope: !483)
!559 = !DILocation(line: 275, column: 14, scope: !488)
!560 = !DILocation(line: 275, column: 13, scope: !483)
!561 = !DILocation(line: 277, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !487, file: !3, line: 277, column: 17)
!563 = !{!119, !126, i64 1128}
!564 = !DILocation(line: 277, column: 39, scope: !562)
!565 = !DILocation(line: 277, column: 17, scope: !487)
!566 = !DILocation(line: 280, column: 24, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 277, column: 45)
!568 = !DILocation(line: 281, column: 13, scope: !567)
!569 = !DILocation(line: 281, column: 46, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !3, line: 281, column: 24)
!571 = !DILocation(line: 281, column: 24, scope: !562)
!572 = !DILocation(line: 284, column: 24, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 281, column: 52)
!574 = !DILocation(line: 285, column: 13, scope: !573)
!575 = !DILocation(line: 285, column: 46, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !3, line: 285, column: 24)
!577 = !DILocation(line: 287, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !576, file: !3, line: 285, column: 53)
!579 = !DILocation(line: 0, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !3, line: 287, column: 20)
!581 = !DILocation(line: 276, column: 19, scope: !487)
!582 = !DILocation(line: 290, column: 22, scope: !487)
!583 = !DILocation(line: 293, column: 9, scope: !487)
!584 = !DILocation(line: 0, scope: !567)
!585 = !DILocation(line: 0, scope: !487)
!586 = !DILocation(line: 296, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !483, file: !3, line: 296, column: 13)
!588 = !DILocation(line: 296, column: 13, scope: !483)
!589 = !DILocation(line: 297, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 297, column: 17)
!591 = distinct !DILexicalBlock(scope: !587, file: !3, line: 296, column: 43)
!592 = !{!119, !125, i64 1184}
!593 = !DILocation(line: 297, column: 48, scope: !590)
!594 = !DILocation(line: 297, column: 17, scope: !591)
!595 = !DILocation(line: 301, column: 31, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !3, line: 300, column: 24)
!597 = !{!119, !125, i64 3096}
!598 = !DILocation(line: 300, column: 60, scope: !596)
!599 = !DILocation(line: 300, column: 24, scope: !590)
!600 = !DILocation(line: 0, scope: !601)
!601 = distinct !DILexicalBlock(scope: !590, file: !3, line: 297, column: 53)
!602 = !DILocation(line: 308, column: 21, scope: !591)
!603 = !DILocation(line: 309, column: 9, scope: !591)
!604 = !DILocation(line: 0, scope: !591)
!605 = !DILocation(line: 312, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !483, file: !3, line: 312, column: 13)
!607 = !DILocation(line: 312, column: 13, scope: !483)
!608 = !DILocation(line: 318, column: 14, scope: !609)
!609 = distinct !DILexicalBlock(scope: !483, file: !3, line: 318, column: 13)
!610 = !DILocation(line: 323, column: 21, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !3, line: 318, column: 59)
!612 = !DILocation(line: 318, column: 13, scope: !483)
!613 = !DILocation(line: 326, column: 14, scope: !614)
!614 = distinct !DILexicalBlock(scope: !483, file: !3, line: 326, column: 13)
!615 = !DILocation(line: 330, column: 21, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !3, line: 326, column: 58)
!617 = !DILocation(line: 326, column: 13, scope: !483)
!618 = !DILocation(line: 333, column: 14, scope: !619)
!619 = distinct !DILexicalBlock(scope: !483, file: !3, line: 333, column: 13)
!620 = !DILocation(line: 337, column: 21, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !3, line: 333, column: 51)
!622 = !DILocation(line: 333, column: 13, scope: !483)
!623 = !DILocation(line: 340, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !483, file: !3, line: 340, column: 13)
!625 = !DILocation(line: 340, column: 13, scope: !483)
!626 = !DILocation(line: 345, column: 14, scope: !627)
!627 = distinct !DILexicalBlock(scope: !483, file: !3, line: 345, column: 13)
!628 = !DILocation(line: 345, column: 44, scope: !627)
!629 = !DILocation(line: 346, column: 14, scope: !627)
!630 = !DILocation(line: 345, column: 13, scope: !483)
!631 = !DILocation(line: 349, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 346, column: 55)
!633 = !DILocation(line: 350, column: 9, scope: !632)
!634 = !DILocation(line: 0, scope: !632)
!635 = !DILocation(line: 352, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !483, file: !3, line: 352, column: 13)
!637 = !DILocation(line: 352, column: 57, scope: !636)
!638 = !DILocation(line: 353, column: 14, scope: !636)
!639 = !DILocation(line: 352, column: 13, scope: !483)
!640 = !DILocation(line: 358, column: 21, scope: !641)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 353, column: 46)
!642 = !DILocation(line: 359, column: 9, scope: !641)
!643 = !DILocation(line: 0, scope: !641)
!644 = !DILocation(line: 362, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !483, file: !3, line: 362, column: 13)
!646 = !DILocation(line: 365, column: 21, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !3, line: 362, column: 48)
!648 = !DILocation(line: 362, column: 13, scope: !483)
!649 = !DILocation(line: 369, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !483, file: !3, line: 369, column: 13)
!651 = !DILocation(line: 369, column: 13, scope: !483)
!652 = !DILocation(line: 374, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !483, file: !3, line: 374, column: 13)
!654 = !DILocation(line: 374, column: 13, scope: !483)
!655 = !DILocation(line: 379, column: 18, scope: !483)
!656 = !DILocation(line: 0, scope: !483)
!657 = !DILocation(line: 381, column: 5, scope: !456)
!658 = !DILocation(line: 82, column: 12, scope: !108, inlinedAt: !659)
!659 = distinct !DILocation(line: 384, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !456, file: !3, line: 384, column: 9)
!661 = !DILocation(line: 384, column: 35, scope: !660)
!662 = !DILocation(line: 384, column: 9, scope: !456)
!663 = !DILocation(line: 389, column: 23, scope: !664)
!664 = distinct !DILexicalBlock(scope: !456, file: !3, line: 389, column: 9)
!665 = !DILocation(line: 390, column: 18, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !3, line: 389, column: 40)
!667 = !DILocation(line: 391, column: 5, scope: !666)
!668 = !DILocation(line: 389, column: 34, scope: !664)
!669 = !DILocation(line: 391, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !3, line: 391, column: 16)
!671 = !DILocation(line: 391, column: 29, scope: !670)
!672 = !DILocation(line: 392, column: 18, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 391, column: 46)
!674 = !DILocation(line: 393, column: 5, scope: !673)
!675 = !DILocation(line: 397, column: 18, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !3, line: 393, column: 12)
!677 = !DILocation(line: 398, column: 13, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !3, line: 398, column: 13)
!679 = !DILocation(line: 398, column: 13, scope: !676)
!680 = !DILocation(line: 399, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !3, line: 398, column: 31)
!682 = !DILocation(line: 400, column: 9, scope: !681)
!683 = !DILocation(line: 0, scope: !676)
!684 = !DILocation(line: 403, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !676, file: !3, line: 403, column: 13)
!686 = !DILocation(line: 403, column: 13, scope: !676)
!687 = !DILocation(line: 404, column: 335, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 403, column: 37)
!689 = !DILocation(line: 404, column: 360, scope: !688)
!690 = !DILocation(line: 404, column: 22, scope: !688)
!691 = !DILocation(line: 405, column: 9, scope: !688)
!692 = !DILocation(line: 0, scope: !681)
!693 = !DILocation(line: 407, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !676, file: !3, line: 407, column: 13)
!695 = !DILocation(line: 407, column: 13, scope: !676)
!696 = !DILocation(line: 408, column: 247, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 407, column: 36)
!698 = !DILocation(line: 408, column: 272, scope: !697)
!699 = !DILocation(line: 408, column: 22, scope: !697)
!700 = !DILocation(line: 409, column: 9, scope: !697)
!701 = !DILocation(line: 0, scope: !688)
!702 = !DILocation(line: 411, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !676, file: !3, line: 411, column: 13)
!704 = !DILocation(line: 411, column: 13, scope: !676)
!705 = !DILocation(line: 412, column: 22, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 411, column: 37)
!707 = !DILocation(line: 413, column: 9, scope: !706)
!708 = !DILocation(line: 0, scope: !697)
!709 = !DILocation(line: 416, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !676, file: !3, line: 416, column: 13)
!711 = !DILocation(line: 416, column: 13, scope: !676)
!712 = !DILocation(line: 417, column: 22, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !3, line: 416, column: 31)
!714 = !DILocation(line: 423, column: 9, scope: !713)
!715 = !DILocation(line: 0, scope: !706)
!716 = !DILocation(line: 426, column: 13, scope: !717)
!717 = distinct !DILexicalBlock(scope: !676, file: !3, line: 426, column: 13)
!718 = !DILocation(line: 426, column: 13, scope: !676)
!719 = !DILocation(line: 427, column: 22, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !3, line: 426, column: 32)
!721 = !DILocation(line: 428, column: 9, scope: !720)
!722 = !DILocation(line: 0, scope: !713)
!723 = !DILocation(line: 430, column: 13, scope: !724)
!724 = distinct !DILexicalBlock(scope: !676, file: !3, line: 430, column: 13)
!725 = !DILocation(line: 430, column: 13, scope: !676)
!726 = !DILocation(line: 431, column: 22, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 430, column: 25)
!728 = !DILocation(line: 432, column: 9, scope: !727)
!729 = !DILocation(line: 0, scope: !720)
!730 = !DILocation(line: 434, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !676, file: !3, line: 434, column: 13)
!732 = !DILocation(line: 434, column: 13, scope: !676)
!733 = !DILocation(line: 435, column: 22, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !3, line: 434, column: 36)
!735 = !DILocation(line: 436, column: 9, scope: !734)
!736 = !DILocation(line: 0, scope: !727)
!737 = !DILocation(line: 438, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !676, file: !3, line: 438, column: 13)
!739 = !DILocation(line: 438, column: 13, scope: !676)
!740 = !DILocation(line: 439, column: 22, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !3, line: 438, column: 37)
!742 = !DILocation(line: 440, column: 9, scope: !741)
!743 = !DILocation(line: 0, scope: !734)
!744 = !DILocation(line: 442, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !676, file: !3, line: 442, column: 13)
!746 = !DILocation(line: 442, column: 13, scope: !676)
!747 = !DILocation(line: 443, column: 22, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 442, column: 36)
!749 = !DILocation(line: 444, column: 9, scope: !748)
!750 = !DILocation(line: 0, scope: !741)
!751 = !DILocation(line: 446, column: 13, scope: !752)
!752 = distinct !DILexicalBlock(scope: !676, file: !3, line: 446, column: 13)
!753 = !DILocation(line: 446, column: 49, scope: !752)
!754 = !DILocation(line: 446, column: 59, scope: !752)
!755 = !DILocation(line: 446, column: 39, scope: !752)
!756 = !DILocation(line: 447, column: 22, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !3, line: 446, column: 80)
!758 = !DILocation(line: 448, column: 9, scope: !757)
!759 = !DILocation(line: 0, scope: !748)
!760 = !DILocation(line: 450, column: 13, scope: !761)
!761 = distinct !DILexicalBlock(scope: !676, file: !3, line: 450, column: 13)
!762 = !DILocation(line: 450, column: 13, scope: !676)
!763 = !DILocation(line: 451, column: 22, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 450, column: 37)
!765 = !DILocation(line: 452, column: 9, scope: !764)
!766 = !DILocation(line: 0, scope: !757)
!767 = !DILocation(line: 454, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !676, file: !3, line: 454, column: 13)
!769 = !DILocation(line: 454, column: 33, scope: !768)
!770 = !DILocation(line: 454, column: 36, scope: !768)
!771 = !DILocation(line: 454, column: 23, scope: !768)
!772 = !DILocation(line: 455, column: 22, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 454, column: 43)
!774 = !DILocation(line: 456, column: 9, scope: !773)
!775 = !DILocation(line: 0, scope: !764)
!776 = !DILocation(line: 458, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !676, file: !3, line: 458, column: 13)
!778 = !DILocation(line: 458, column: 13, scope: !676)
!779 = !DILocation(line: 459, column: 22, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 458, column: 35)
!781 = !DILocation(line: 460, column: 9, scope: !780)
!782 = !DILocation(line: 0, scope: !773)
!783 = !DILocation(line: 462, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !676, file: !3, line: 462, column: 13)
!785 = !DILocation(line: 462, column: 13, scope: !676)
!786 = !DILocation(line: 463, column: 22, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 462, column: 35)
!788 = !DILocation(line: 464, column: 9, scope: !787)
!789 = !DILocation(line: 0, scope: !780)
!790 = !DILocation(line: 466, column: 13, scope: !676)
!791 = !DILocation(line: 467, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 466, column: 33)
!793 = distinct !DILexicalBlock(scope: !676, file: !3, line: 466, column: 13)
!794 = !DILocation(line: 468, column: 9, scope: !792)
!795 = !DILocation(line: 472, column: 1, scope: !456)
!796 = distinct !DISubprogram(name: "latencyCommandReplyWithSamples", scope: !3, file: !3, line: 478, type: !797, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !972)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !799, !141}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !135, line: 780, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !135, line: 723, size: 135360, elements: !802)
!802 = !{!803, !804, !805, !846, !856, !857, !862, !863, !864, !865, !867, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !911, !912, !913, !914, !915, !916, !917, !918, !922, !923, !927, !928, !944, !945, !961, !962, !963, !964, !965, !966, !967, !968}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !801, file: !135, line: 724, baseType: !55, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !801, file: !135, line: 725, baseType: !80, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !801, file: !135, line: 726, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !135, line: 656, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !135, line: 647, size: 512, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !808, file: !135, line: 648, baseType: !240, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !808, file: !135, line: 649, baseType: !240, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !808, file: !135, line: 650, baseType: !240, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !808, file: !135, line: 651, baseType: !240, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !808, file: !135, line: 652, baseType: !240, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !808, file: !135, line: 653, baseType: !80, size: 32, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !808, file: !135, line: 654, baseType: !136, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !808, file: !135, line: 655, baseType: !818, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !820, line: 54, baseType: !821)
!820 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !820, line: 47, size: 384, elements: !822)
!822 = !{!823, !832, !833, !837, !841, !845}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !821, file: !820, line: 48, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !820, line: 40, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !820, line: 36, size: 192, elements: !827)
!827 = !{!828, !830, !831}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !826, file: !820, line: 37, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !820, line: 38, baseType: !829, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !826, file: !820, line: 39, baseType: !6, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !821, file: !820, line: 49, baseType: !824, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !821, file: !820, line: 50, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!6, !6}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !821, file: !820, line: 51, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !6}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !821, file: !820, line: 52, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!80, !6, !6}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !821, file: !820, line: 53, baseType: !12, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !801, file: !135, line: 727, baseType: !847, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !135, line: 622, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !135, line: 614, size: 128, elements: !850)
!850 = !{!851, !852, !853, !854, !855}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !849, file: !135, line: 615, baseType: !47, size: 4, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !849, file: !135, line: 616, baseType: !47, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !849, file: !135, line: 617, baseType: !47, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !849, file: !135, line: 620, baseType: !80, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !849, file: !135, line: 621, baseType: !6, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !801, file: !135, line: 728, baseType: !459, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !801, file: !135, line: 729, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !859, line: 40, baseType: !860)
!859 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !861, line: 129, baseType: !12)
!861 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !801, file: !135, line: 730, baseType: !459, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !801, file: !135, line: 734, baseType: !858, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !801, file: !135, line: 735, baseType: !80, size: 32, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !801, file: !135, line: 736, baseType: !866, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !801, file: !135, line: 737, baseType: !868, size: 64, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !135, line: 1307, size: 640, elements: !870)
!870 = !{!871, !872, !877, !878, !879, !880, !886, !887, !888, !889, !890}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !869, file: !135, line: 1308, baseType: !15, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !869, file: !135, line: 1309, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !135, line: 1305, baseType: !875)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !799}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !869, file: !135, line: 1310, baseType: !80, size: 32, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !869, file: !135, line: 1311, baseType: !15, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !135, line: 1312, baseType: !80, size: 32, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !869, file: !135, line: 1315, baseType: !881, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !135, line: 1306, baseType: !883)
!883 = !DISubroutineType(types: !884)
!884 = !{!885, !868, !866, !80, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !869, file: !135, line: 1317, baseType: !80, size: 32, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !869, file: !135, line: 1318, baseType: !80, size: 32, offset: 416)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !869, file: !135, line: 1319, baseType: !80, size: 32, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !869, file: !135, line: 1320, baseType: !136, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !869, file: !135, line: 1320, baseType: !136, size: 64, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !801, file: !135, line: 737, baseType: !868, size: 64, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !801, file: !135, line: 738, baseType: !80, size: 32, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !801, file: !135, line: 739, baseType: !80, size: 32, offset: 800)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !801, file: !135, line: 740, baseType: !11, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !801, file: !135, line: 741, baseType: !818, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !801, file: !135, line: 742, baseType: !14, size: 64, offset: 960)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !801, file: !135, line: 743, baseType: !858, size: 64, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !801, file: !135, line: 745, baseType: !158, size: 64, offset: 1088)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !801, file: !135, line: 746, baseType: !158, size: 64, offset: 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !801, file: !135, line: 747, baseType: !158, size: 64, offset: 1216)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !135, line: 748, baseType: !80, size: 32, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !801, file: !135, line: 749, baseType: !80, size: 32, offset: 1312)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !801, file: !135, line: 750, baseType: !80, size: 32, offset: 1344)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !801, file: !135, line: 751, baseType: !80, size: 32, offset: 1376)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !801, file: !135, line: 752, baseType: !80, size: 32, offset: 1408)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !801, file: !135, line: 753, baseType: !907, size: 64, offset: 1472)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !908, line: 173, baseType: !909)
!908 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !861, line: 100, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !861, line: 44, baseType: !11)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !801, file: !135, line: 754, baseType: !907, size: 64, offset: 1536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !801, file: !135, line: 755, baseType: !459, size: 64, offset: 1600)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !801, file: !135, line: 756, baseType: !136, size: 64, offset: 1664)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !801, file: !135, line: 757, baseType: !136, size: 64, offset: 1728)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !801, file: !135, line: 758, baseType: !136, size: 64, offset: 1792)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !801, file: !135, line: 759, baseType: !136, size: 64, offset: 1856)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !801, file: !135, line: 760, baseType: !136, size: 64, offset: 1920)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !801, file: !135, line: 763, baseType: !919, size: 328, offset: 1984)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 328, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 41)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !801, file: !135, line: 764, baseType: !80, size: 32, offset: 2336)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !801, file: !135, line: 765, baseType: !924, size: 368, offset: 2368)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 368, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 46)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !801, file: !135, line: 766, baseType: !80, size: 32, offset: 2752)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !801, file: !135, line: 767, baseType: !929, size: 256, offset: 2816)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !135, line: 673, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !135, line: 665, size: 256, elements: !931)
!931 = !{!932, !940, !941, !942, !943}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !930, file: !135, line: 666, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !135, line: 663, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !135, line: 659, size: 192, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !935, file: !135, line: 660, baseType: !866, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !935, file: !135, line: 661, baseType: !80, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !935, file: !135, line: 662, baseType: !868, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !930, file: !135, line: 667, baseType: !80, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !930, file: !135, line: 668, baseType: !80, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !930, file: !135, line: 671, baseType: !80, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !930, file: !135, line: 672, baseType: !158, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !801, file: !135, line: 768, baseType: !80, size: 32, offset: 3072)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !801, file: !135, line: 769, baseType: !946, size: 704, offset: 3136)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !135, line: 703, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !135, line: 677, size: 704, elements: !948)
!948 = !{!949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !947, file: !135, line: 679, baseType: !134, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !947, file: !135, line: 683, baseType: !240, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !947, file: !135, line: 685, baseType: !847, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !947, file: !135, line: 689, baseType: !858, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !947, file: !135, line: 690, baseType: !847, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !947, file: !135, line: 691, baseType: !847, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !947, file: !135, line: 692, baseType: !134, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !947, file: !135, line: 692, baseType: !134, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !947, file: !135, line: 693, baseType: !80, size: 32, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !947, file: !135, line: 696, baseType: !80, size: 32, offset: 544)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !947, file: !135, line: 697, baseType: !136, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !947, file: !135, line: 700, baseType: !6, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !801, file: !135, line: 770, baseType: !136, size: 64, offset: 3840)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !801, file: !135, line: 771, baseType: !818, size: 64, offset: 3904)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !801, file: !135, line: 772, baseType: !240, size: 64, offset: 3968)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !801, file: !135, line: 773, baseType: !818, size: 64, offset: 4032)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !801, file: !135, line: 774, baseType: !459, size: 64, offset: 4096)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !801, file: !135, line: 775, baseType: !824, size: 64, offset: 4160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !801, file: !135, line: 778, baseType: !80, size: 32, offset: 4224)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !801, file: !135, line: 779, baseType: !969, size: 131072, offset: 4256)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 131072, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 16384)
!972 = !{!973, !974, !975, !976, !977, !978}
!973 = !DILocalVariable(name: "c", arg: 1, scope: !796, file: !3, line: 478, type: !799)
!974 = !DILocalVariable(name: "ts", arg: 2, scope: !796, file: !3, line: 478, type: !141)
!975 = !DILocalVariable(name: "replylen", scope: !796, file: !3, line: 479, type: !6)
!976 = !DILocalVariable(name: "samples", scope: !796, file: !3, line: 480, type: !80)
!977 = !DILocalVariable(name: "j", scope: !796, file: !3, line: 480, type: !80)
!978 = !DILocalVariable(name: "i", scope: !979, file: !3, line: 483, type: !80)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 482, column: 42)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 482, column: 5)
!981 = distinct !DILexicalBlock(scope: !796, file: !3, line: 482, column: 5)
!982 = !DILocation(line: 478, column: 45, scope: !796)
!983 = !DILocation(line: 478, column: 74, scope: !796)
!984 = !DILocation(line: 479, column: 22, scope: !796)
!985 = !DILocation(line: 479, column: 11, scope: !796)
!986 = !DILocation(line: 480, column: 9, scope: !796)
!987 = !DILocation(line: 480, column: 22, scope: !796)
!988 = !DILocation(line: 482, column: 5, scope: !981)
!989 = !DILocation(line: 483, column: 22, scope: !979)
!990 = !DILocation(line: 483, column: 26, scope: !979)
!991 = !DILocation(line: 483, column: 31, scope: !979)
!992 = !DILocation(line: 483, column: 13, scope: !979)
!993 = !DILocation(line: 485, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !979, file: !3, line: 485, column: 13)
!995 = !DILocation(line: 485, column: 28, scope: !994)
!996 = !DILocation(line: 485, column: 33, scope: !994)
!997 = !DILocation(line: 485, column: 13, scope: !979)
!998 = !DILocation(line: 486, column: 9, scope: !979)
!999 = !DILocation(line: 487, column: 43, scope: !979)
!1000 = !DILocation(line: 487, column: 28, scope: !979)
!1001 = !DILocation(line: 487, column: 9, scope: !979)
!1002 = !DILocation(line: 488, column: 43, scope: !979)
!1003 = !DILocation(line: 488, column: 28, scope: !979)
!1004 = !DILocation(line: 488, column: 9, scope: !979)
!1005 = !DILocation(line: 489, column: 16, scope: !979)
!1006 = !DILocation(line: 490, column: 5, scope: !980)
!1007 = !DILocation(line: 0, scope: !979)
!1008 = !DILocation(line: 482, column: 38, scope: !980)
!1009 = !DILocation(line: 482, column: 19, scope: !980)
!1010 = distinct !{!1010, !988, !1011}
!1011 = !DILocation(line: 490, column: 5, scope: !981)
!1012 = !DILocation(line: 491, column: 43, scope: !796)
!1013 = !DILocation(line: 491, column: 5, scope: !796)
!1014 = !DILocation(line: 492, column: 1, scope: !796)
!1015 = distinct !DISubprogram(name: "latencyCommandReplyWithLatestEvents", scope: !3, file: !3, line: 496, type: !875, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1022, !1023}
!1017 = !DILocalVariable(name: "c", arg: 1, scope: !1015, file: !3, line: 496, type: !799)
!1018 = !DILocalVariable(name: "di", scope: !1015, file: !3, line: 497, type: !235)
!1019 = !DILocalVariable(name: "de", scope: !1015, file: !3, line: 498, type: !254)
!1020 = !DILocalVariable(name: "event", scope: !1021, file: !3, line: 503, type: !15)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 502, column: 40)
!1022 = !DILocalVariable(name: "ts", scope: !1021, file: !3, line: 504, type: !141)
!1023 = !DILocalVariable(name: "last", scope: !1021, file: !3, line: 505, type: !80)
!1024 = !DILocation(line: 496, column: 50, scope: !1015)
!1025 = !DILocation(line: 500, column: 28, scope: !1015)
!1026 = !DILocation(line: 500, column: 5, scope: !1015)
!1027 = !DILocation(line: 501, column: 33, scope: !1015)
!1028 = !DILocation(line: 501, column: 10, scope: !1015)
!1029 = !DILocation(line: 497, column: 19, scope: !1015)
!1030 = !DILocation(line: 502, column: 17, scope: !1015)
!1031 = !DILocation(line: 498, column: 16, scope: !1015)
!1032 = !DILocation(line: 502, column: 31, scope: !1015)
!1033 = !DILocation(line: 502, column: 5, scope: !1015)
!1034 = !DILocation(line: 503, column: 23, scope: !1021)
!1035 = !DILocation(line: 503, column: 15, scope: !1021)
!1036 = !DILocation(line: 504, column: 40, scope: !1021)
!1037 = !DILocation(line: 504, column: 35, scope: !1021)
!1038 = !DILocation(line: 505, column: 25, scope: !1021)
!1039 = !DILocation(line: 505, column: 46, scope: !1021)
!1040 = !DILocation(line: 505, column: 51, scope: !1021)
!1041 = !DILocation(line: 505, column: 13, scope: !1021)
!1042 = !DILocation(line: 507, column: 9, scope: !1021)
!1043 = !DILocation(line: 508, column: 9, scope: !1021)
!1044 = !DILocation(line: 509, column: 28, scope: !1021)
!1045 = !DILocation(line: 509, column: 46, scope: !1021)
!1046 = !DILocation(line: 509, column: 9, scope: !1021)
!1047 = !DILocation(line: 510, column: 46, scope: !1021)
!1048 = !DILocation(line: 510, column: 28, scope: !1021)
!1049 = !DILocation(line: 510, column: 9, scope: !1021)
!1050 = !DILocation(line: 511, column: 32, scope: !1021)
!1051 = !DILocation(line: 511, column: 28, scope: !1021)
!1052 = !DILocation(line: 511, column: 9, scope: !1021)
!1053 = distinct !{!1053, !1033, !1054}
!1054 = !DILocation(line: 512, column: 5, scope: !1015)
!1055 = !DILocation(line: 513, column: 5, scope: !1015)
!1056 = !DILocation(line: 514, column: 1, scope: !1015)
!1057 = distinct !DISubprogram(name: "latencyCommandGenSparkeline", scope: !3, file: !3, line: 517, type: !1058, isLocal: false, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!459, !15, !141}
!1060 = !{!1061, !1062, !1063, !1064, !1079, !1080, !1081, !1082, !1086, !1087}
!1061 = !DILocalVariable(name: "event", arg: 1, scope: !1057, file: !3, line: 517, type: !15)
!1062 = !DILocalVariable(name: "ts", arg: 2, scope: !1057, file: !3, line: 517, type: !141)
!1063 = !DILocalVariable(name: "j", scope: !1057, file: !3, line: 518, type: !80)
!1064 = !DILocalVariable(name: "seq", scope: !1057, file: !3, line: 519, type: !1065)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sequence", file: !1067, line: 39, size: 256, elements: !1068)
!1067 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.h", directory: "/root/.unikraft/apps/redis/build")
!1068 = !{!1069, !1070, !1071, !1077, !1078}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1066, file: !1067, line: 40, baseType: !80, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !1066, file: !1067, line: 41, baseType: !80, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !1066, file: !1067, line: 42, baseType: !1072, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sample", file: !1067, line: 34, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1073, file: !1067, line: 35, baseType: !13, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1073, file: !1067, line: 36, baseType: !15, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1066, file: !1067, line: 43, baseType: !13, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1066, file: !1067, line: 43, baseType: !13, size: 64, offset: 192)
!1079 = !DILocalVariable(name: "graph", scope: !1057, file: !3, line: 520, type: !459)
!1080 = !DILocalVariable(name: "min", scope: !1057, file: !3, line: 521, type: !45)
!1081 = !DILocalVariable(name: "max", scope: !1057, file: !3, line: 521, type: !45)
!1082 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 524, type: !80)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 523, column: 42)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 523, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 523, column: 5)
!1086 = !DILocalVariable(name: "elapsed", scope: !1083, file: !3, line: 525, type: !80)
!1087 = !DILocalVariable(name: "buf", scope: !1083, file: !3, line: 526, type: !1088)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 64)
!1091 = !DILocation(line: 517, column: 39, scope: !1057)
!1092 = !DILocation(line: 517, column: 72, scope: !1057)
!1093 = !DILocation(line: 519, column: 28, scope: !1057)
!1094 = !DILocation(line: 519, column: 22, scope: !1057)
!1095 = !DILocation(line: 520, column: 17, scope: !1057)
!1096 = !DILocation(line: 520, column: 9, scope: !1057)
!1097 = !DILocation(line: 521, column: 14, scope: !1057)
!1098 = !DILocation(line: 521, column: 23, scope: !1057)
!1099 = !DILocation(line: 518, column: 9, scope: !1057)
!1100 = !DILocation(line: 523, column: 5, scope: !1085)
!1101 = !DILocation(line: 524, column: 22, scope: !1083)
!1102 = !DILocation(line: 524, column: 26, scope: !1083)
!1103 = !DILocation(line: 524, column: 31, scope: !1083)
!1104 = !DILocation(line: 524, column: 13, scope: !1083)
!1105 = !DILocation(line: 526, column: 9, scope: !1083)
!1106 = !DILocation(line: 526, column: 14, scope: !1083)
!1107 = !DILocation(line: 528, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 528, column: 13)
!1109 = !DILocation(line: 528, column: 28, scope: !1108)
!1110 = !DILocation(line: 528, column: 33, scope: !1108)
!1111 = !DILocation(line: 528, column: 13, scope: !1083)
!1112 = !DILocation(line: 530, column: 18, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 530, column: 13)
!1114 = !{!1115, !120, i64 0}
!1115 = !{!"sequence", !120, i64 0, !120, i64 4, !123, i64 8, !126, i64 16, !126, i64 24}
!1116 = !DILocation(line: 530, column: 25, scope: !1113)
!1117 = !DILocation(line: 0, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 533, column: 17)
!1119 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 532, column: 16)
!1120 = !DILocation(line: 530, column: 13, scope: !1083)
!1121 = !DILocation(line: 533, column: 40, scope: !1118)
!1122 = !DILocation(line: 533, column: 17, scope: !1119)
!1123 = !DILocation(line: 534, column: 40, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 534, column: 17)
!1125 = !DILocation(line: 534, column: 17, scope: !1119)
!1126 = !DILocation(line: 0, scope: !1057)
!1127 = !DILocation(line: 538, column: 19, scope: !1083)
!1128 = !DILocation(line: 538, column: 47, scope: !1083)
!1129 = !DILocation(line: 525, column: 13, scope: !1083)
!1130 = !DILocation(line: 539, column: 21, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 539, column: 13)
!1132 = !DILocation(line: 539, column: 13, scope: !1083)
!1133 = !DILocation(line: 540, column: 13, scope: !1131)
!1134 = !DILocation(line: 541, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 541, column: 18)
!1136 = !DILocation(line: 541, column: 18, scope: !1131)
!1137 = !DILocation(line: 542, column: 13, scope: !1135)
!1138 = !DILocation(line: 543, column: 26, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 543, column: 18)
!1140 = !DILocation(line: 543, column: 18, scope: !1135)
!1141 = !DILocation(line: 544, column: 13, scope: !1139)
!1142 = !DILocation(line: 546, column: 13, scope: !1139)
!1143 = !DILocation(line: 547, column: 55, scope: !1083)
!1144 = !DILocation(line: 547, column: 40, scope: !1083)
!1145 = !DILocation(line: 547, column: 9, scope: !1083)
!1146 = !DILocation(line: 548, column: 5, scope: !1084)
!1147 = !DILocation(line: 0, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 530, column: 31)
!1149 = !DILocation(line: 523, column: 38, scope: !1084)
!1150 = !DILocation(line: 523, column: 19, scope: !1084)
!1151 = distinct !{!1151, !1100, !1152}
!1152 = !DILocation(line: 548, column: 5, scope: !1085)
!1153 = !DILocation(line: 552, column: 9, scope: !1057)
!1154 = !DILocation(line: 552, column: 30, scope: !1057)
!1155 = !DILocation(line: 552, column: 71, scope: !1057)
!1156 = !DILocation(line: 552, column: 51, scope: !1057)
!1157 = !DILocation(line: 550, column: 13, scope: !1057)
!1158 = !DILocation(line: 553, column: 5, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 553, column: 5)
!1160 = !DILocation(line: 554, column: 17, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 553, column: 5)
!1162 = !DILocation(line: 553, column: 42, scope: !1161)
!1163 = !DILocation(line: 553, column: 19, scope: !1161)
!1164 = distinct !{!1164, !1158, !1165}
!1165 = !DILocation(line: 554, column: 38, scope: !1159)
!1166 = !DILocation(line: 555, column: 13, scope: !1057)
!1167 = !DILocation(line: 556, column: 13, scope: !1057)
!1168 = !DILocation(line: 557, column: 5, scope: !1057)
!1169 = !DILocation(line: 558, column: 5, scope: !1057)
!1170 = distinct !DISubprogram(name: "latencyCommand", scope: !3, file: !3, line: 569, type: !875, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1179, !1180, !1184, !1185, !1186, !1190, !1195}
!1172 = !DILocalVariable(name: "c", arg: 1, scope: !1170, file: !3, line: 569, type: !799)
!1173 = !DILocalVariable(name: "help", scope: !1170, file: !3, line: 570, type: !1174)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 512, elements: !1177)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!1177 = !{!1178}
!1178 = !DISubrange(count: 8)
!1179 = !DILocalVariable(name: "ts", scope: !1170, file: !3, line: 580, type: !141)
!1180 = !DILocalVariable(name: "graph", scope: !1181, file: !3, line: 592, type: !459)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 590, column: 70)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 590, column: 16)
!1183 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 582, column: 9)
!1184 = !DILocalVariable(name: "de", scope: !1181, file: !3, line: 593, type: !254)
!1185 = !DILocalVariable(name: "event", scope: !1181, file: !3, line: 594, type: !15)
!1186 = !DILocalVariable(name: "report", scope: !1187, file: !3, line: 609, type: !459)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 607, column: 71)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 607, column: 16)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 604, column: 16)
!1190 = !DILocalVariable(name: "j", scope: !1191, file: !3, line: 618, type: !80)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 617, column: 16)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 615, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 613, column: 70)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 613, column: 16)
!1195 = !DILocalVariable(name: "resets", scope: !1191, file: !3, line: 618, type: !80)
!1196 = !DILocation(line: 569, column: 29, scope: !1170)
!1197 = !DILocation(line: 570, column: 5, scope: !1170)
!1198 = !DILocation(line: 570, column: 17, scope: !1170)
!1199 = !DILocation(line: 582, column: 24, scope: !1183)
!1200 = !{!1201, !123, i64 72}
!1201 = !{!"client", !124, i64 0, !120, i64 8, !123, i64 16, !123, i64 24, !123, i64 32, !124, i64 40, !123, i64 48, !124, i64 56, !120, i64 64, !123, i64 72, !123, i64 80, !123, i64 88, !120, i64 96, !120, i64 100, !124, i64 104, !123, i64 112, !125, i64 120, !124, i64 128, !124, i64 136, !124, i64 144, !124, i64 152, !120, i64 160, !120, i64 164, !120, i64 168, !120, i64 172, !120, i64 176, !124, i64 184, !124, i64 192, !123, i64 200, !125, i64 208, !125, i64 216, !125, i64 224, !125, i64 232, !125, i64 240, !121, i64 248, !120, i64 292, !121, i64 296, !120, i64 344, !1202, i64 352, !120, i64 384, !1203, i64 392, !125, i64 480, !123, i64 488, !123, i64 496, !123, i64 504, !123, i64 512, !123, i64 520, !120, i64 528, !121, i64 532}
!1202 = !{!"multiState", !123, i64 0, !120, i64 8, !120, i64 12, !120, i64 16, !124, i64 24}
!1203 = !{!"blockingState", !125, i64 0, !123, i64 8, !123, i64 16, !124, i64 24, !123, i64 32, !123, i64 40, !125, i64 48, !125, i64 56, !120, i64 64, !120, i64 68, !125, i64 72, !123, i64 80}
!1204 = !DILocation(line: 582, column: 21, scope: !1183)
!1205 = !{!123, !123, i64 0}
!1206 = !DILocation(line: 582, column: 33, scope: !1183)
!1207 = !{!1208, !123, i64 8}
!1208 = !{!"redisObject", !120, i64 0, !120, i64 0, !120, i64 1, !120, i64 4, !123, i64 8}
!1209 = !DILocation(line: 582, column: 10, scope: !1183)
!1210 = !DILocation(line: 582, column: 48, scope: !1183)
!1211 = !DILocation(line: 582, column: 54, scope: !1183)
!1212 = !{!1201, !120, i64 64}
!1213 = !DILocation(line: 582, column: 59, scope: !1183)
!1214 = !DILocation(line: 582, column: 9, scope: !1170)
!1215 = !DILocation(line: 584, column: 36, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 582, column: 65)
!1217 = !DILocation(line: 584, column: 51, scope: !1216)
!1218 = !DILocation(line: 584, column: 63, scope: !1216)
!1219 = !DILocation(line: 584, column: 14, scope: !1216)
!1220 = !DILocation(line: 585, column: 16, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 585, column: 13)
!1222 = !DILocation(line: 585, column: 13, scope: !1216)
!1223 = !DILocation(line: 586, column: 13, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 585, column: 25)
!1225 = !DILocation(line: 587, column: 9, scope: !1224)
!1226 = !DILocation(line: 580, column: 31, scope: !1170)
!1227 = !DILocation(line: 588, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 587, column: 16)
!1229 = !DILocation(line: 590, column: 17, scope: !1182)
!1230 = !DILocation(line: 590, column: 53, scope: !1182)
!1231 = !DILocation(line: 590, column: 59, scope: !1182)
!1232 = !DILocation(line: 590, column: 64, scope: !1182)
!1233 = !DILocation(line: 590, column: 16, scope: !1183)
!1234 = !DILocation(line: 596, column: 30, scope: !1181)
!1235 = !DILocation(line: 596, column: 45, scope: !1181)
!1236 = !DILocation(line: 596, column: 57, scope: !1181)
!1237 = !DILocation(line: 596, column: 14, scope: !1181)
!1238 = !DILocation(line: 593, column: 20, scope: !1181)
!1239 = !DILocation(line: 597, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 597, column: 13)
!1241 = !DILocation(line: 597, column: 13, scope: !1181)
!1242 = !DILocation(line: 598, column: 14, scope: !1181)
!1243 = !DILocation(line: 599, column: 17, scope: !1181)
!1244 = !DILocation(line: 594, column: 15, scope: !1181)
!1245 = !DILocation(line: 601, column: 17, scope: !1181)
!1246 = !DILocation(line: 592, column: 13, scope: !1181)
!1247 = !DILocation(line: 602, column: 9, scope: !1181)
!1248 = !DILocation(line: 603, column: 9, scope: !1181)
!1249 = !DILocation(line: 604, column: 17, scope: !1189)
!1250 = !DILocation(line: 604, column: 54, scope: !1189)
!1251 = !DILocation(line: 604, column: 60, scope: !1189)
!1252 = !DILocation(line: 604, column: 65, scope: !1189)
!1253 = !DILocation(line: 604, column: 16, scope: !1182)
!1254 = !DILocation(line: 606, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 604, column: 71)
!1256 = !DILocation(line: 607, column: 5, scope: !1255)
!1257 = !DILocation(line: 607, column: 17, scope: !1188)
!1258 = !DILocation(line: 607, column: 54, scope: !1188)
!1259 = !DILocation(line: 607, column: 60, scope: !1188)
!1260 = !DILocation(line: 607, column: 65, scope: !1188)
!1261 = !DILocation(line: 607, column: 16, scope: !1189)
!1262 = !DILocation(line: 609, column: 22, scope: !1187)
!1263 = !DILocation(line: 609, column: 13, scope: !1187)
!1264 = !DILocalVariable(name: "s", arg: 1, scope: !1265, file: !19, line: 87, type: !1270)
!1265 = distinct !DISubprogram(name: "sdslen", scope: !19, file: !19, line: 87, type: !1266, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1271)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!1268, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1269, line: 58, baseType: !12)
!1269 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!1271 = !{!1264, !1272}
!1272 = !DILocalVariable(name: "flags", scope: !1265, file: !19, line: 88, type: !24)
!1273 = !DILocation(line: 87, column: 39, scope: !1265, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 611, column: 38, scope: !1187)
!1275 = !DILocation(line: 88, column: 27, scope: !1265, inlinedAt: !1274)
!1276 = !DILocation(line: 88, column: 19, scope: !1265, inlinedAt: !1274)
!1277 = !DILocation(line: 89, column: 5, scope: !1265, inlinedAt: !1274)
!1278 = !DILocation(line: 91, column: 20, scope: !1279, inlinedAt: !1274)
!1279 = distinct !DILexicalBlock(scope: !1265, file: !19, line: 89, column: 33)
!1280 = !DILocation(line: 91, column: 13, scope: !1279, inlinedAt: !1274)
!1281 = !DILocation(line: 93, column: 20, scope: !1279, inlinedAt: !1274)
!1282 = !DILocation(line: 93, column: 34, scope: !1279, inlinedAt: !1274)
!1283 = !DILocation(line: 93, column: 13, scope: !1279, inlinedAt: !1274)
!1284 = !DILocation(line: 95, column: 20, scope: !1279, inlinedAt: !1274)
!1285 = !DILocation(line: 95, column: 35, scope: !1279, inlinedAt: !1274)
!1286 = !{!1287, !1287, i64 0}
!1287 = !{!"short", !121, i64 0}
!1288 = !DILocation(line: 95, column: 13, scope: !1279, inlinedAt: !1274)
!1289 = !DILocation(line: 97, column: 20, scope: !1279, inlinedAt: !1274)
!1290 = !DILocation(line: 97, column: 35, scope: !1279, inlinedAt: !1274)
!1291 = !DILocation(line: 97, column: 13, scope: !1279, inlinedAt: !1274)
!1292 = !DILocation(line: 99, column: 20, scope: !1279, inlinedAt: !1274)
!1293 = !DILocation(line: 99, column: 35, scope: !1279, inlinedAt: !1274)
!1294 = !{!124, !124, i64 0}
!1295 = !DILocation(line: 99, column: 13, scope: !1279, inlinedAt: !1274)
!1296 = !DILocation(line: 0, scope: !1279, inlinedAt: !1274)
!1297 = !DILocation(line: 611, column: 9, scope: !1187)
!1298 = !DILocation(line: 612, column: 9, scope: !1187)
!1299 = !DILocation(line: 613, column: 5, scope: !1187)
!1300 = !DILocation(line: 613, column: 17, scope: !1194)
!1301 = !DILocation(line: 613, column: 53, scope: !1194)
!1302 = !DILocation(line: 613, column: 59, scope: !1194)
!1303 = !DILocation(line: 613, column: 64, scope: !1194)
!1304 = !DILocation(line: 613, column: 16, scope: !1188)
!1305 = !DILocation(line: 615, column: 21, scope: !1192)
!1306 = !DILocation(line: 615, column: 13, scope: !1193)
!1307 = !DILocation(line: 618, column: 20, scope: !1191)
!1308 = !DILocation(line: 618, column: 17, scope: !1191)
!1309 = !DILocation(line: 621, column: 45, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 620, column: 13)
!1311 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 620, column: 13)
!1312 = !DILocation(line: 621, column: 57, scope: !1310)
!1313 = !DILocation(line: 621, column: 27, scope: !1310)
!1314 = !DILocation(line: 620, column: 32, scope: !1310)
!1315 = !DILocation(line: 620, column: 27, scope: !1310)
!1316 = !DILocation(line: 620, column: 13, scope: !1311)
!1317 = distinct !{!1317, !1316, !1318}
!1318 = !DILocation(line: 621, column: 60, scope: !1311)
!1319 = !DILocation(line: 135, column: 29, scope: !229, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 616, column: 32, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 615, column: 27)
!1322 = !DILocation(line: 138, column: 9, scope: !229, inlinedAt: !1320)
!1323 = !DILocation(line: 140, column: 37, scope: !229, inlinedAt: !1320)
!1324 = !DILocation(line: 140, column: 10, scope: !229, inlinedAt: !1320)
!1325 = !DILocation(line: 136, column: 19, scope: !229, inlinedAt: !1320)
!1326 = !DILocation(line: 141, column: 17, scope: !229, inlinedAt: !1320)
!1327 = !DILocation(line: 137, column: 16, scope: !229, inlinedAt: !1320)
!1328 = !DILocation(line: 141, column: 31, scope: !229, inlinedAt: !1320)
!1329 = !DILocation(line: 141, column: 5, scope: !229, inlinedAt: !1320)
!1330 = !DILocation(line: 142, column: 23, scope: !284, inlinedAt: !1320)
!1331 = !DILocation(line: 142, column: 15, scope: !284, inlinedAt: !1320)
!1332 = !DILocation(line: 145, column: 31, scope: !304, inlinedAt: !1320)
!1333 = !DILocation(line: 145, column: 13, scope: !304, inlinedAt: !1320)
!1334 = !DILocation(line: 146, column: 19, scope: !304, inlinedAt: !1320)
!1335 = !DILocation(line: 149, column: 5, scope: !229, inlinedAt: !1320)
!1336 = !DILocation(line: 616, column: 13, scope: !1321)
!1337 = !DILocation(line: 617, column: 9, scope: !1321)
!1338 = !DILocation(line: 621, column: 48, scope: !1310)
!1339 = !DILocation(line: 621, column: 24, scope: !1310)
!1340 = !DILocation(line: 620, column: 39, scope: !1310)
!1341 = !DILocation(line: 622, column: 32, scope: !1191)
!1342 = !DILocation(line: 622, column: 13, scope: !1191)
!1343 = !DILocation(line: 624, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 624, column: 16)
!1345 = !DILocation(line: 624, column: 52, scope: !1344)
!1346 = !DILocation(line: 624, column: 58, scope: !1344)
!1347 = !DILocation(line: 624, column: 63, scope: !1344)
!1348 = !DILocation(line: 624, column: 16, scope: !1194)
!1349 = !DILocation(line: 625, column: 25, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 624, column: 69)
!1351 = !DILocation(line: 625, column: 9, scope: !1350)
!1352 = !DILocation(line: 626, column: 5, scope: !1350)
!1353 = !DILocation(line: 627, column: 9, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 626, column: 12)
!1355 = !DILocation(line: 635, column: 59, scope: !1170)
!1356 = !DILocation(line: 635, column: 56, scope: !1170)
!1357 = !DILocation(line: 635, column: 68, scope: !1170)
!1358 = !DILocation(line: 634, column: 5, scope: !1170)
!1359 = !DILocation(line: 636, column: 1, scope: !1170)
