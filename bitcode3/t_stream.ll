; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_stream.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_stream.c"
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
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.rax* }
%struct.streamID = type { i64, i64 }
%struct.streamCG = type { %struct.streamID, %struct.rax*, %struct.rax* }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.streamIterator = type { %struct.stream*, %struct.streamID, i64, i8*, i8*, i32, i32, [2 x i64], [2 x i64], %struct.raxIterator, i8*, i8*, i8*, [21 x i8], [21 x i8] }
%struct.streamNACK = type { i64, i64, %struct.streamConsumer* }
%struct.streamConsumer = type { i64, i8*, %struct.rax* }
%struct.sreamPropInfo = type { %struct.redisObject*, %struct.redisObject* }

@.str = private unnamed_addr constant [12 x i8] c"retval != 0\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_stream.c\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"- [%d] '%.*s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"ri.key_len == sizeof(rax_key)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"to_delete < entries\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"si->ri.key_len == sizeof(streamID)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%U-%U\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"XCLAIM\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"RETRYCOUNT\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"JUSTID\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"LASTID\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"XGROUP\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SETID\00", align 1
@raxNotFound = external dso_local local_unnamed_addr global i8*, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"nack != raxNotFound\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"NACK half-created. Should not be possible.\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.21 = private unnamed_addr constant [55 x i8] c"Invalid stream ID specified as stream command argument\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"The MAXLEN argument must be >= 0.\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"wrong number of arguments for XADD\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"The ID specified in XADD is equal or smaller than the target stream top item\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"xadd\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"xtrim\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"COUNT\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"STREAMS\00", align 1
@.str.32 = private unnamed_addr constant [86 x i8] c"Unbalanced XREAD list of streams: for each stream key an ID or '$' must be specified.\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.34 = private unnamed_addr constant [76 x i8] c"The GROUP option is only supported by XREADGROUP. You called XREAD instead.\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"NOACK\00", align 1
@.str.36 = private unnamed_addr constant [76 x i8] c"The NOACK option is only supported by XREADGROUP. You called XREAD instead.\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Missing GROUP option for XREADGROUP\00", align 1
@.str.38 = private unnamed_addr constant [81 x i8] c"-NOGROUP No such key '%s' or consumer group '%s' in XREADGROUP with GROUP option\00", align 1
@.str.39 = private unnamed_addr constant [212 x i8] c"The $ ID is meaningless in the context of XREADGROUP: you want to read the history of this consumer by specifying a proper ID, or use the > ID to get new messages. The $ ID would just return an empty result set.\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.41 = private unnamed_addr constant [98 x i8] c"The > ID can be specified only when calling XREADGROUP using the GROUP <group> <consumer> option.\00", align 1
@.str.42 = private unnamed_addr constant [78 x i8] c"CREATE      <key> <groupname> <id or $> [opt] -- Create a new consumer group.\00", align 1
@.str.43 = private unnamed_addr constant [75 x i8] c"            option MKSTREAM: create the empty stream if it does not exist.\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"SETID       <key> <groupname> <id or $>  -- Set the current group ID.\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"DESTROY     <key> <groupname>            -- Remove the specified group.\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"DELCONSUMER <key> <groupname> <consumer> -- Remove the specified consumer.\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"HELP                                     -- Prints this help.\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"MKSTREAM\00", align 1
@.str.50 = private unnamed_addr constant [151 x i8] c"The XGROUP subcommand requires the key to exist. Note that for CREATE you may want to use the MKSTREAM option to create an empty stream automatically.\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"DELCONSUMER\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"-NOGROUP No such consumer group '%s' for key name '%s'\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"mkstream\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"xgroup-create\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"-BUSYGROUP Consumer Group name already exists\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"xgroup-setid\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"xgroup-destroy\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"xgroup-delconsumer\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.61 = private unnamed_addr constant [70 x i8] c"The ID specified in XSETID is smaller than the target stream top item\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"xsetid\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"-NOGROUP No such key '%s' or consumer group '%s'\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"Invalid min-idle-time argument for XCLAIM\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"Invalid IDLE option argument for XCLAIM\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"Invalid TIME option argument for XCLAIM\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"Invalid RETRYCOUNT option argument for XCLAIM\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"Unrecognized XCLAIM option '%s'\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"StreamID invalid after check. Should not be possible.\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"xdel\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"XTRIM called without an option to trim the stream\00", align 1
@.str.73 = private unnamed_addr constant [75 x i8] c"CONSUMERS <key> <groupname>  -- Show consumer groups of group <groupname>.\00", align 1
@.str.74 = private unnamed_addr constant [65 x i8] c"GROUPS <key>                 -- Show the stream consumer groups.\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"STREAM <key>                 -- Show information about the stream.\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"HELP                         -- Print this help.\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"syntax error, try 'XINFO HELP'\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"CONSUMERS\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"GROUPS\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"consumers\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"last-delivered-id\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"STREAM\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"radix-tree-keys\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"radix-tree-nodes\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"last-generated-id\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"first-entry\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"last-entry\00", align 1

; Function Attrs: noredzone nounwind
define dso_local %struct.stream* @streamNew() local_unnamed_addr #0 !dbg !66 {
  %1 = tail call i8* @zmalloc(i64 40) #7, !dbg !103
  %2 = bitcast i8* %1 to %struct.stream*, !dbg !103
  %3 = tail call %struct.rax* @raxNew() #7, !dbg !105
  %4 = bitcast i8* %1 to %struct.rax**, !dbg !106
  store %struct.rax* %3, %struct.rax** %4, align 8, !dbg !107, !tbaa !108
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !115
  %6 = bitcast i8* %5 to <2 x i64>*, !dbg !116
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !dbg !116, !tbaa !117
  %7 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !118
  %8 = bitcast i8* %7 to i64*, !dbg !118
  store i64 0, i64* %8, align 8, !dbg !119, !tbaa !120
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !121
  %10 = bitcast i8* %9 to %struct.rax**, !dbg !121
  store %struct.rax* null, %struct.rax** %10, align 8, !dbg !122, !tbaa !123
  ret %struct.stream* %2, !dbg !124
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.rax* @raxNew() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @freeStream(%struct.stream*) local_unnamed_addr #0 !dbg !125 {
  %2 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !131
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !131, !tbaa !108
  tail call void @raxFreeWithCallback(%struct.rax* %3, void (i8*)* nonnull @lpFree) #7, !dbg !132
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !133
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !133, !tbaa !123
  %6 = icmp eq %struct.rax* %5, null, !dbg !135
  br i1 %6, label %8, label %7, !dbg !136

; <label>:7:                                      ; preds = %1
  tail call void @raxFreeWithCallback(%struct.rax* nonnull %5, void (i8*)* bitcast (void (%struct.streamCG*)* @streamFreeCG to void (i8*)*)) #7, !dbg !137
  br label %8, !dbg !137

; <label>:8:                                      ; preds = %1, %7
  %9 = bitcast %struct.stream* %0 to i8*, !dbg !138
  tail call void @zfree(i8* %9) #7, !dbg !139
  ret void, !dbg !140
}

; Function Attrs: noredzone
declare dso_local void @raxFreeWithCallback(%struct.rax*, void (i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lpFree(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeCG(%struct.streamCG*) #0 !dbg !141 {
  %2 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 1, !dbg !154
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !154, !tbaa !155
  tail call void @raxFreeWithCallback(%struct.rax* %3, void (i8*)* bitcast (void (%struct.streamNACK*)* @streamFreeNACK to void (i8*)*)) #7, !dbg !157
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !158
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !158, !tbaa !159
  tail call void @raxFreeWithCallback(%struct.rax* %5, void (i8*)* bitcast (void (%struct.streamConsumer*)* @streamFreeConsumer to void (i8*)*)) #7, !dbg !160
  %6 = bitcast %struct.streamCG* %0 to i8*, !dbg !161
  tail call void @zfree(i8* %6) #7, !dbg !162
  ret void, !dbg !163
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamNextID(%struct.streamID* nocapture readonly, %struct.streamID* nocapture) local_unnamed_addr #0 !dbg !164 {
  %3 = tail call i64 @mstime() #7, !dbg !174
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 0, !dbg !176
  %5 = load i64, i64* %4, align 8, !dbg !176, !tbaa !178
  %6 = icmp ugt i64 %3, %5, !dbg !179
  %7 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !180
  br i1 %6, label %8, label %9, !dbg !182

; <label>:8:                                      ; preds = %2
  store i64 %3, i64* %7, align 8, !dbg !183, !tbaa !178
  br label %13, !dbg !185

; <label>:9:                                      ; preds = %2
  store i64 %5, i64* %7, align 8, !dbg !186, !tbaa !178
  %10 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !187
  %11 = load i64, i64* %10, align 8, !dbg !187, !tbaa !188
  %12 = add i64 %11, 1, !dbg !189
  br label %13

; <label>:13:                                     ; preds = %9, %8
  %14 = phi i64 [ %12, %9 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !190
  store i64 %14, i64* %15, align 8, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpAppendInteger(i8*, i64) local_unnamed_addr #0 !dbg !193 {
  %3 = alloca [21 x i8], align 16
  %4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0, !dbg !209
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %4) #8, !dbg !209
  %5 = call i32 @ll2string(i8* nonnull %4, i64 21, i64 %1) #7, !dbg !211
  %6 = call i8* @lpAppend(i8* %0, i8* nonnull %4, i32 %5) #7, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %4) #8, !dbg !214
  ret i8* %6, !dbg !215
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpAppend(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpReplaceInteger(i8*, i8**, i64) local_unnamed_addr #0 !dbg !216 {
  %4 = alloca [21 x i8], align 16
  %5 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !229
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %5) #8, !dbg !229
  %6 = call i32 @ll2string(i8* nonnull %5, i64 21, i64 %2) #7, !dbg !231
  %7 = load i8*, i8** %1, align 8, !dbg !233, !tbaa !234
  %8 = call i8* @lpInsert(i8* %0, i8* nonnull %5, i32 %6, i8* %7, i32 2, i8** %1) #7, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %5) #8, !dbg !236
  ret i8* %8, !dbg !237
}

; Function Attrs: noredzone
declare dso_local i8* @lpInsert(i8*, i8*, i32, i8*, i32, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @lpGetInteger(i8*) local_unnamed_addr #0 !dbg !238 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !249
  %5 = call i8* @lpGet(i8* %0, i64* nonnull %2, i8* null) #7, !dbg !251
  %6 = icmp eq i8* %5, null, !dbg !253
  br i1 %6, label %7, label %9, !dbg !255

; <label>:7:                                      ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !256, !tbaa !117
  br label %17, !dbg !257

; <label>:9:                                      ; preds = %1
  %10 = bitcast i64* %3 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !258
  %11 = load i64, i64* %2, align 8, !dbg !259, !tbaa !117
  %12 = call i32 @string2ll(i8* nonnull %5, i64 %11, i64* nonnull %3) #7, !dbg !261
  %13 = icmp eq i32 %12, 0, !dbg !263
  br i1 %13, label %14, label %15, !dbg !263

; <label>:14:                                     ; preds = %9
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !263
  call void @_exit(i32 1) #9, !dbg !263
  unreachable, !dbg !263

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %3, align 8, !dbg !264, !tbaa !265
  store i64 %16, i64* %2, align 8, !dbg !267, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !268
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i64 [ %8, %7 ], [ %16, %15 ], !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !268
  ret i64 %18, !dbg !268
}

; Function Attrs: noredzone
declare dso_local i8* @lpGet(i8*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @streamLogListpackContent(i8*) local_unnamed_addr #0 !dbg !270 {
  %2 = alloca [21 x i8], align 16
  %3 = alloca i64, align 8
  %4 = tail call i8* @lpFirst(i8* %0) #7, !dbg !282
  %5 = icmp eq i8* %4, null, !dbg !284
  br i1 %5, label %16, label %6, !dbg !284

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %8 = bitcast i64* %3 to i8*
  br label %9, !dbg !284

; <label>:9:                                      ; preds = %6, %9
  %10 = phi i8* [ %4, %6 ], [ %14, %9 ]
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #8, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !287
  %11 = call i8* @lpGet(i8* nonnull %10, i64* nonnull %3, i8* nonnull %7) #7, !dbg !289
  %12 = load i64, i64* %3, align 8, !dbg !291, !tbaa !117
  %13 = trunc i64 %12 to i32, !dbg !292
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %13, i8* %11) #7, !dbg !293
  %14 = call i8* @lpNext(i8* %0, i8* nonnull %10) #7, !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #8, !dbg !295
  %15 = icmp eq i8* %14, null, !dbg !284
  br i1 %15, label %16, label %9, !dbg !284, !llvm.loop !296

; <label>:16:                                     ; preds = %9, %1
  ret void, !dbg !297
}

; Function Attrs: noredzone
declare dso_local i8* @lpFirst(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamEncodeID(i8*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !298 {
  %3 = alloca [2 x i64], align 16
  %4 = bitcast [2 x i64]* %3 to i8*, !dbg !310
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !310
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !312
  %6 = load i64, i64* %5, align 8, !dbg !312, !tbaa !178
  %7 = tail call i64 @intrev64(i64 %6) #7, !dbg !312
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !313
  store i64 %7, i64* %8, align 16, !dbg !314, !tbaa !117
  %9 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !315
  %10 = load i64, i64* %9, align 8, !dbg !315, !tbaa !188
  %11 = tail call i64 @intrev64(i64 %10) #7, !dbg !315
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !316
  store i64 %11, i64* %12, align 8, !dbg !317, !tbaa !117
  %13 = call i8* @memcpy(i8* %0, i8* nonnull %4, i64 16) #7, !dbg !318
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !319
  ret void, !dbg !319
}

; Function Attrs: noredzone
declare dso_local i64 @intrev64(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamDecodeID(i8*, %struct.streamID* nocapture) local_unnamed_addr #0 !dbg !320 {
  %3 = alloca [2 x i64], align 16
  %4 = bitcast [2 x i64]* %3 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !327
  %5 = call i8* @memcpy(i8* nonnull %4, i8* %0, i64 16) #7, !dbg !329
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !330
  %7 = load i64, i64* %6, align 16, !dbg !330, !tbaa !117
  %8 = call i64 @intrev64(i64 %7) #7, !dbg !330
  %9 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !331
  store i64 %8, i64* %9, align 8, !dbg !332, !tbaa !178
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !333
  %11 = load i64, i64* %10, align 8, !dbg !333, !tbaa !117
  %12 = call i64 @intrev64(i64 %11) #7, !dbg !333
  %13 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !334
  store i64 %12, i64* %13, align 8, !dbg !335, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !336
  ret void, !dbg !336
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @streamCompareID(%struct.streamID* nocapture readonly, %struct.streamID* nocapture readonly) local_unnamed_addr #5 !dbg !337 {
  %3 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 0, !dbg !345
  %4 = load i64, i64* %3, align 8, !dbg !345, !tbaa !178
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !347
  %6 = load i64, i64* %5, align 8, !dbg !347, !tbaa !178
  %7 = icmp ugt i64 %4, %6, !dbg !348
  br i1 %7, label %19, label %8, !dbg !349

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %4, %6, !dbg !350
  br i1 %9, label %19, label %10, !dbg !352

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !353
  %12 = load i64, i64* %11, align 8, !dbg !353, !tbaa !188
  %13 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !355
  %14 = load i64, i64* %13, align 8, !dbg !355, !tbaa !188
  %15 = icmp ugt i64 %12, %14, !dbg !356
  br i1 %15, label %19, label %16, !dbg !357

; <label>:16:                                     ; preds = %10
  %17 = icmp ult i64 %12, %14, !dbg !358
  %18 = sext i1 %17 to i32, !dbg !360
  br label %19, !dbg !360

; <label>:19:                                     ; preds = %16, %10, %8, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %8 ], [ 1, %10 ], [ %18, %16 ], !dbg !361
  ret i32 %20, !dbg !362
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamAppendItem(%struct.stream* nocapture, %struct.redisObject** nocapture readonly, i64, %struct.streamID*, %struct.streamID* readonly) local_unnamed_addr #0 !dbg !363 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [21 x i8], align 16
  %14 = alloca %struct.raxIterator, align 8
  %15 = alloca [2 x i64], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [21 x i8], align 16
  %19 = icmp ne %struct.streamID* %4, null, !dbg !488
  br i1 %19, label %20, label %34, !dbg !490

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !494
  %22 = load i64, i64* %21, align 8, !dbg !494, !tbaa !178
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !495
  %24 = load i64, i64* %23, align 8, !dbg !495, !tbaa !178
  %25 = icmp ugt i64 %22, %24, !dbg !496
  br i1 %25, label %34, label %26, !dbg !497

; <label>:26:                                     ; preds = %20
  %27 = icmp ult i64 %22, %24, !dbg !498
  br i1 %27, label %402, label %28, !dbg !499

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !500
  %30 = load i64, i64* %29, align 8, !dbg !500, !tbaa !188
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !501
  %32 = load i64, i64* %31, align 8, !dbg !501, !tbaa !188
  %33 = icmp ugt i64 %30, %32, !dbg !502
  br i1 %33, label %34, label %402, !dbg !503

; <label>:34:                                     ; preds = %28, %20, %5
  %35 = bitcast %struct.raxIterator* %14 to i8*, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %35) #8, !dbg !504
  %36 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !505
  %37 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !505, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %14, %struct.rax* %37) #7, !dbg !507
  %38 = call i32 @raxSeek(%struct.raxIterator* nonnull %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #7, !dbg !508
  %39 = call i32 @raxNext(%struct.raxIterator* nonnull %14) #7, !dbg !511
  %40 = icmp eq i32 %39, 0, !dbg !511
  br i1 %40, label %46, label %41, !dbg !513

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !514
  %43 = load i8*, i8** %42, align 8, !dbg !514, !tbaa !516
  %44 = call i32 @lpBytes(i8* %43) #7, !dbg !520
  %45 = zext i32 %44 to i64, !dbg !520
  br label %46, !dbg !521

; <label>:46:                                     ; preds = %34, %41
  %47 = phi i8* [ %43, %41 ], [ null, %34 ], !dbg !522
  %48 = phi i64 [ %45, %41 ], [ 0, %34 ], !dbg !522
  call void @raxStop(%struct.raxIterator* nonnull %14) #7, !dbg !523
  br i1 %19, label %49, label %54, !dbg !524

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !525
  %51 = load i64, i64* %50, align 8, !dbg !525
  %52 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !525
  %53 = load i64, i64* %52, align 8, !dbg !525
  br label %63, !dbg !527

; <label>:54:                                     ; preds = %46
  %55 = call i64 @mstime() #7, !dbg !532
  %56 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !534
  %57 = load i64, i64* %56, align 8, !dbg !534, !tbaa !178
  %58 = icmp ugt i64 %55, %57, !dbg !535
  br i1 %58, label %63, label %59, !dbg !536

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !537
  %61 = load i64, i64* %60, align 8, !dbg !537, !tbaa !188
  %62 = add i64 %61, 1, !dbg !538
  br label %63

; <label>:63:                                     ; preds = %59, %54, %49
  %64 = phi i64 [ %53, %49 ], [ %62, %59 ], [ 0, %54 ], !dbg !539
  %65 = phi i64 [ %51, %49 ], [ %57, %59 ], [ %55, %54 ], !dbg !539
  %66 = bitcast [2 x i64]* %15 to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %66) #8, !dbg !540
  %67 = icmp eq i8* %47, null, !dbg !542
  br i1 %67, label %103, label %68, !dbg !543

; <label>:68:                                     ; preds = %63
  %69 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !544, !tbaa !545
  %70 = icmp ne i64 %69, 0, !dbg !551
  %71 = icmp ugt i64 %48, %69, !dbg !552
  %72 = and i1 %70, %71, !dbg !553
  br i1 %72, label %103, label %73, !dbg !553

; <label>:73:                                     ; preds = %68
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !554, !tbaa !555
  %75 = icmp eq i64 %74, 0, !dbg !556
  br i1 %75, label %97, label %76, !dbg !557

; <label>:76:                                     ; preds = %73
  %77 = call i8* @lpFirst(i8* nonnull %47) #7, !dbg !558
  %78 = bitcast i64* %11 to i8*, !dbg !561
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #8, !dbg !561
  %79 = call i8* @lpGet(i8* %77, i64* nonnull %11, i8* null) #7, !dbg !563
  %80 = icmp eq i8* %79, null, !dbg !565
  br i1 %80, label %81, label %83, !dbg !566

; <label>:81:                                     ; preds = %76
  %82 = load i64, i64* %11, align 8, !dbg !567, !tbaa !117
  br label %91, !dbg !568

; <label>:83:                                     ; preds = %76
  %84 = bitcast i64* %12 to i8*, !dbg !569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84) #8, !dbg !569
  %85 = load i64, i64* %11, align 8, !dbg !570, !tbaa !117
  %86 = call i32 @string2ll(i8* nonnull %79, i64 %85, i64* nonnull %12) #7, !dbg !572
  %87 = icmp eq i32 %86, 0, !dbg !574
  br i1 %87, label %88, label %89, !dbg !574

; <label>:88:                                     ; preds = %83
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !574
  call void @_exit(i32 1) #9, !dbg !574
  unreachable, !dbg !574

; <label>:89:                                     ; preds = %83
  %90 = load i64, i64* %12, align 8, !dbg !575, !tbaa !265
  store i64 %90, i64* %11, align 8, !dbg !576, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84) #8, !dbg !577
  br label %91

; <label>:91:                                     ; preds = %81, %89
  %92 = phi i64 [ %82, %81 ], [ %90, %89 ], !dbg !578
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #8, !dbg !577
  %93 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !580, !tbaa !555
  %94 = icmp sgt i64 %92, %93, !dbg !582
  %95 = select i1 %94, i8* null, i8* %47, !dbg !583
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !584
  br label %97, !dbg !585

; <label>:97:                                     ; preds = %73, %91
  %98 = phi i64 [ %96, %91 ], [ %69, %73 ], !dbg !584
  %99 = phi i8* [ %95, %91 ], [ %47, %73 ], !dbg !586
  %100 = icmp eq i8* %99, null, !dbg !588
  %101 = icmp ugt i64 %48, %98, !dbg !589
  %102 = or i1 %100, %101, !dbg !590
  br i1 %102, label %103, label %163, !dbg !590

; <label>:103:                                    ; preds = %68, %63, %97
  %104 = bitcast [2 x i64]* %10 to i8*, !dbg !593
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #8, !dbg !593
  %105 = call i64 @intrev64(i64 %65) #7, !dbg !594
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !595
  store i64 %105, i64* %106, align 16, !dbg !596, !tbaa !117
  %107 = call i64 @intrev64(i64 %64) #7, !dbg !597
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !598
  store i64 %107, i64* %108, align 8, !dbg !599, !tbaa !117
  %109 = call i8* @memcpy(i8* nonnull %66, i8* nonnull %104, i64 16) #7, !dbg !600
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #8, !dbg !601
  %110 = call i8* @lpNew() #7, !dbg !602
  %111 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !605
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %111) #8, !dbg !605
  %112 = call i32 @ll2string(i8* nonnull %111, i64 21, i64 1) #7, !dbg !606
  %113 = call i8* @lpAppend(i8* %110, i8* nonnull %111, i32 %112) #7, !dbg !608
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %111) #8, !dbg !609
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %111) #8, !dbg !612
  %114 = call i32 @ll2string(i8* nonnull %111, i64 21, i64 0) #7, !dbg !613
  %115 = call i8* @lpAppend(i8* %113, i8* nonnull %111, i32 %114) #7, !dbg !615
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %111) #8, !dbg !616
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %111) #8, !dbg !619
  %116 = call i32 @ll2string(i8* nonnull %111, i64 21, i64 %2) #7, !dbg !620
  %117 = call i8* @lpAppend(i8* %115, i8* nonnull %111, i32 %116) #7, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %111) #8, !dbg !623
  %118 = icmp sgt i64 %2, 0, !dbg !625
  br i1 %118, label %125, label %119, !dbg !626

; <label>:119:                                    ; preds = %157, %103
  %120 = phi i8* [ %117, %103 ], [ %160, %157 ], !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %111) #8, !dbg !630
  %121 = call i32 @ll2string(i8* nonnull %111, i64 21, i64 0) #7, !dbg !631
  %122 = call i8* @lpAppend(i8* %120, i8* nonnull %111, i32 %121) #7, !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %111) #8, !dbg !634
  %123 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !635, !tbaa !108
  %124 = call i32 @raxInsert(%struct.rax* %123, i8* nonnull %66, i64 16, i8* %122, i8** null) #7, !dbg !636
  br label %280, !dbg !637

; <label>:125:                                    ; preds = %103, %157
  %126 = phi i8* [ %160, %157 ], [ %117, %103 ]
  %127 = phi i64 [ %161, %157 ], [ 0, %103 ]
  %128 = shl nuw nsw i64 %127, 1, !dbg !638
  %129 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %128, !dbg !639
  %130 = load %struct.redisObject*, %struct.redisObject** %129, align 8, !dbg !639, !tbaa !234
  %131 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %130, i64 0, i32 2, !dbg !640
  %132 = load i8*, i8** %131, align 8, !dbg !640, !tbaa !641
  %133 = getelementptr inbounds i8, i8* %132, i64 -1, !dbg !655
  %134 = load i8, i8* %133, align 1, !dbg !655, !tbaa !656
  %135 = trunc i8 %134 to i3, !dbg !658
  switch i3 %135, label %157 [
    i3 0, label %136
    i3 1, label %139
    i3 2, label %143
    i3 3, label %148
    i3 -4, label %153
  ], !dbg !658

; <label>:136:                                    ; preds = %125
  %137 = lshr i8 %134, 3, !dbg !659
  %138 = zext i8 %137 to i64, !dbg !659
  br label %157, !dbg !661

; <label>:139:                                    ; preds = %125
  %140 = getelementptr inbounds i8, i8* %132, i64 -3, !dbg !662
  %141 = load i8, i8* %140, align 1, !dbg !663, !tbaa !656
  %142 = zext i8 %141 to i64, !dbg !662
  br label %157, !dbg !664

; <label>:143:                                    ; preds = %125
  %144 = getelementptr inbounds i8, i8* %132, i64 -5, !dbg !665
  %145 = bitcast i8* %144 to i16*, !dbg !666
  %146 = load i16, i16* %145, align 1, !dbg !666, !tbaa !667
  %147 = zext i16 %146 to i64, !dbg !665
  br label %157, !dbg !669

; <label>:148:                                    ; preds = %125
  %149 = getelementptr inbounds i8, i8* %132, i64 -9, !dbg !670
  %150 = bitcast i8* %149 to i32*, !dbg !671
  %151 = load i32, i32* %150, align 1, !dbg !671, !tbaa !672
  %152 = zext i32 %151 to i64, !dbg !670
  br label %157, !dbg !673

; <label>:153:                                    ; preds = %125
  %154 = getelementptr inbounds i8, i8* %132, i64 -17, !dbg !674
  %155 = bitcast i8* %154 to i64*, !dbg !675
  %156 = load i64, i64* %155, align 1, !dbg !675, !tbaa !117
  br label %157, !dbg !676

; <label>:157:                                    ; preds = %125, %136, %139, %143, %148, %153
  %158 = phi i64 [ %156, %153 ], [ %152, %148 ], [ %147, %143 ], [ %142, %139 ], [ %138, %136 ], [ 0, %125 ], !dbg !677
  %159 = trunc i64 %158 to i32, !dbg !678
  %160 = call i8* @lpAppend(i8* %126, i8* %132, i32 %159) #7, !dbg !679
  %161 = add nuw nsw i64 %127, 1, !dbg !680
  %162 = icmp eq i64 %161, %2, !dbg !625
  br i1 %162, label %119, label %125, !dbg !626, !llvm.loop !681

; <label>:163:                                    ; preds = %97
  %164 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 4, !dbg !683
  %165 = load i64, i64* %164, align 8, !dbg !683, !tbaa !684
  %166 = icmp eq i64 %165, 16, !dbg !683
  br i1 %166, label %168, label %167, !dbg !683

; <label>:167:                                    ; preds = %163
  call void @_serverAssert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 273) #7, !dbg !683
  call void @_exit(i32 1) #9, !dbg !683
  unreachable, !dbg !683

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 2, !dbg !685
  %170 = load i8*, i8** %169, align 8, !dbg !685, !tbaa !686
  %171 = call i8* @memcpy(i8* nonnull %66, i8* %170, i64 16) #7, !dbg !687
  %172 = bitcast [2 x i64]* %10 to i8*, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %172) #8, !dbg !691
  %173 = call i8* @memcpy(i8* nonnull %172, i8* nonnull %66, i64 16) #7, !dbg !692
  %174 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !693
  %175 = load i64, i64* %174, align 16, !dbg !693, !tbaa !117
  %176 = call i64 @intrev64(i64 %175) #7, !dbg !693
  %177 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !694
  %178 = load i64, i64* %177, align 8, !dbg !694, !tbaa !117
  %179 = call i64 @intrev64(i64 %178) #7, !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %172) #8, !dbg !695
  %180 = bitcast i8** %16 to i8*, !dbg !696
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %180) #8, !dbg !696
  %181 = call i8* @lpFirst(i8* nonnull %99) #7, !dbg !697
  store i8* %181, i8** %16, align 8, !dbg !698, !tbaa !234
  %182 = bitcast i64* %8 to i8*, !dbg !701
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %182) #8, !dbg !701
  %183 = call i8* @lpGet(i8* %181, i64* nonnull %8, i8* null) #7, !dbg !703
  %184 = icmp eq i8* %183, null, !dbg !705
  br i1 %184, label %185, label %187, !dbg !706

; <label>:185:                                    ; preds = %168
  %186 = load i64, i64* %8, align 8, !dbg !707, !tbaa !117
  br label %195, !dbg !708

; <label>:187:                                    ; preds = %168
  %188 = bitcast i64* %9 to i8*, !dbg !709
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %188) #8, !dbg !709
  %189 = load i64, i64* %8, align 8, !dbg !710, !tbaa !117
  %190 = call i32 @string2ll(i8* nonnull %183, i64 %189, i64* nonnull %9) #7, !dbg !712
  %191 = icmp eq i32 %190, 0, !dbg !714
  br i1 %191, label %192, label %193, !dbg !714

; <label>:192:                                    ; preds = %187
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !714
  call void @_exit(i32 1) #9, !dbg !714
  unreachable, !dbg !714

; <label>:193:                                    ; preds = %187
  %194 = load i64, i64* %9, align 8, !dbg !715, !tbaa !265
  store i64 %194, i64* %8, align 8, !dbg !716, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %188) #8, !dbg !717
  br label %195

; <label>:195:                                    ; preds = %185, %193
  %196 = phi i64 [ %186, %185 ], [ %194, %193 ], !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %182) #8, !dbg !717
  %197 = add nsw i64 %196, 1, !dbg !720
  %198 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %198) #8, !dbg !724
  %199 = call i32 @ll2string(i8* nonnull %198, i64 21, i64 %197) #7, !dbg !725
  %200 = load i8*, i8** %16, align 8, !dbg !727, !tbaa !234
  %201 = call i8* @lpInsert(i8* nonnull %99, i8* nonnull %198, i32 %199, i8* %200, i32 2, i8** nonnull %16) #7, !dbg !728
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %198) #8, !dbg !729
  %202 = load i8*, i8** %16, align 8, !dbg !730, !tbaa !234
  %203 = call i8* @lpNext(i8* %201, i8* %202) #7, !dbg !731
  store i8* %203, i8** %16, align 8, !dbg !732, !tbaa !234
  %204 = call i8* @lpNext(i8* %201, i8* %203) #7, !dbg !733
  store i8* %204, i8** %16, align 8, !dbg !734, !tbaa !234
  %205 = bitcast i64* %6 to i8*, !dbg !737
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %205) #8, !dbg !737
  %206 = call i8* @lpGet(i8* %204, i64* nonnull %6, i8* null) #7, !dbg !739
  %207 = icmp eq i8* %206, null, !dbg !741
  br i1 %207, label %208, label %210, !dbg !742

; <label>:208:                                    ; preds = %195
  %209 = load i64, i64* %6, align 8, !dbg !743, !tbaa !117
  br label %218, !dbg !744

; <label>:210:                                    ; preds = %195
  %211 = bitcast i64* %7 to i8*, !dbg !745
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %211) #8, !dbg !745
  %212 = load i64, i64* %6, align 8, !dbg !746, !tbaa !117
  %213 = call i32 @string2ll(i8* nonnull %206, i64 %212, i64* nonnull %7) #7, !dbg !748
  %214 = icmp eq i32 %213, 0, !dbg !750
  br i1 %214, label %215, label %216, !dbg !750

; <label>:215:                                    ; preds = %210
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !750
  call void @_exit(i32 1) #9, !dbg !750
  unreachable, !dbg !750

; <label>:216:                                    ; preds = %210
  %217 = load i64, i64* %7, align 8, !dbg !751, !tbaa !265
  store i64 %217, i64* %6, align 8, !dbg !752, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %211) #8, !dbg !753
  br label %218

; <label>:218:                                    ; preds = %208, %216
  %219 = phi i64 [ %209, %208 ], [ %217, %216 ], !dbg !754
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %205) #8, !dbg !753
  %220 = load i8*, i8** %16, align 8, !dbg !756, !tbaa !234
  %221 = call i8* @lpNext(i8* %201, i8* %220) #7, !dbg !757
  store i8* %221, i8** %16, align 8, !dbg !758, !tbaa !234
  %222 = icmp eq i64 %219, %2, !dbg !759
  br i1 %222, label %223, label %278, !dbg !760

; <label>:223:                                    ; preds = %218
  %224 = icmp sgt i64 %2, 0, !dbg !762
  br i1 %224, label %225, label %274, !dbg !763

; <label>:225:                                    ; preds = %223
  %226 = bitcast i64* %17 to i8*
  %227 = getelementptr inbounds [21 x i8], [21 x i8]* %18, i64 0, i64 0
  br label %228, !dbg !763

; <label>:228:                                    ; preds = %225, %268
  %229 = phi i8* [ %221, %225 ], [ %270, %268 ], !dbg !764
  %230 = phi i64 [ 0, %225 ], [ %271, %268 ]
  %231 = shl nuw nsw i64 %230, 1, !dbg !765
  %232 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %231, !dbg !766
  %233 = load %struct.redisObject*, %struct.redisObject** %232, align 8, !dbg !766, !tbaa !234
  %234 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %233, i64 0, i32 2, !dbg !767
  %235 = load i8*, i8** %234, align 8, !dbg !767, !tbaa !641
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %226) #8, !dbg !769
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %227) #8, !dbg !770
  %236 = call i8* @lpGet(i8* %229, i64* nonnull %17, i8* nonnull %227) #7, !dbg !773
  %237 = getelementptr inbounds i8, i8* %235, i64 -1, !dbg !778
  %238 = load i8, i8* %237, align 1, !dbg !778, !tbaa !656
  %239 = trunc i8 %238 to i3, !dbg !780
  switch i3 %239, label %261 [
    i3 0, label %240
    i3 1, label %243
    i3 2, label %247
    i3 3, label %252
    i3 -4, label %257
  ], !dbg !780

; <label>:240:                                    ; preds = %228
  %241 = lshr i8 %238, 3, !dbg !781
  %242 = zext i8 %241 to i64, !dbg !781
  br label %261, !dbg !782

; <label>:243:                                    ; preds = %228
  %244 = getelementptr inbounds i8, i8* %235, i64 -3, !dbg !783
  %245 = load i8, i8* %244, align 1, !dbg !784, !tbaa !656
  %246 = zext i8 %245 to i64, !dbg !783
  br label %261, !dbg !785

; <label>:247:                                    ; preds = %228
  %248 = getelementptr inbounds i8, i8* %235, i64 -5, !dbg !786
  %249 = bitcast i8* %248 to i16*, !dbg !787
  %250 = load i16, i16* %249, align 1, !dbg !787, !tbaa !667
  %251 = zext i16 %250 to i64, !dbg !786
  br label %261, !dbg !788

; <label>:252:                                    ; preds = %228
  %253 = getelementptr inbounds i8, i8* %235, i64 -9, !dbg !789
  %254 = bitcast i8* %253 to i32*, !dbg !790
  %255 = load i32, i32* %254, align 1, !dbg !790, !tbaa !672
  %256 = zext i32 %255 to i64, !dbg !789
  br label %261, !dbg !791

; <label>:257:                                    ; preds = %228
  %258 = getelementptr inbounds i8, i8* %235, i64 -17, !dbg !792
  %259 = bitcast i8* %258 to i64*, !dbg !793
  %260 = load i64, i64* %259, align 1, !dbg !793, !tbaa !117
  br label %261, !dbg !794

; <label>:261:                                    ; preds = %228, %240, %243, %247, %252, %257
  %262 = phi i64 [ %260, %257 ], [ %256, %252 ], [ %251, %247 ], [ %246, %243 ], [ %242, %240 ], [ 0, %228 ], !dbg !795
  %263 = load i64, i64* %17, align 8, !dbg !796, !tbaa !117
  %264 = icmp eq i64 %262, %263, !dbg !797
  br i1 %264, label %265, label %273, !dbg !798

; <label>:265:                                    ; preds = %261
  %266 = call i32 @memcmp(i8* %236, i8* %235, i64 %262) #7, !dbg !799
  %267 = icmp eq i32 %266, 0, !dbg !800
  br i1 %267, label %268, label %273, !dbg !801

; <label>:268:                                    ; preds = %265
  %269 = load i8*, i8** %16, align 8, !dbg !802, !tbaa !234
  %270 = call i8* @lpNext(i8* %201, i8* %269) #7, !dbg !803
  store i8* %270, i8** %16, align 8, !dbg !804, !tbaa !234
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %227) #8, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %226) #8, !dbg !805
  %271 = add nuw nsw i64 %230, 1, !dbg !806
  %272 = icmp slt i64 %271, %2, !dbg !762
  br i1 %272, label %228, label %274, !dbg !763, !llvm.loop !807

; <label>:273:                                    ; preds = %261, %265
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %227) #8, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %226) #8, !dbg !805
  br label %274

; <label>:274:                                    ; preds = %268, %223, %273
  %275 = phi i64 [ %230, %273 ], [ 0, %223 ], [ %271, %268 ]
  %276 = icmp eq i64 %275, %2, !dbg !809
  %277 = select i1 %276, i32 2, i32 0, !dbg !811
  br label %278, !dbg !812

; <label>:278:                                    ; preds = %274, %218
  %279 = phi i32 [ %277, %274 ], [ 0, %218 ], !dbg !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %180) #8, !dbg !813
  br label %280

; <label>:280:                                    ; preds = %278, %119
  %281 = phi i8* [ %198, %278 ], [ %111, %119 ], !dbg !814
  %282 = phi i64 [ %179, %278 ], [ %64, %119 ], !dbg !815
  %283 = phi i64 [ %176, %278 ], [ %65, %119 ], !dbg !815
  %284 = phi i32 [ %279, %278 ], [ 2, %119 ], !dbg !816
  %285 = phi i8* [ %201, %278 ], [ %122, %119 ], !dbg !815
  %286 = sext i32 %284 to i64, !dbg !817
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %281) #8, !dbg !814
  %287 = call i32 @ll2string(i8* nonnull %281, i64 21, i64 %286) #7, !dbg !820
  %288 = call i8* @lpAppend(i8* %285, i8* nonnull %281, i32 %287) #7, !dbg !822
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %281) #8, !dbg !823
  %289 = sub i64 %65, %283, !dbg !824
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %281) #8, !dbg !827
  %290 = call i32 @ll2string(i8* nonnull %281, i64 21, i64 %289) #7, !dbg !828
  %291 = call i8* @lpAppend(i8* %288, i8* nonnull %281, i32 %290) #7, !dbg !830
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %281) #8, !dbg !831
  %292 = sub i64 %64, %282, !dbg !832
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %281) #8, !dbg !835
  %293 = call i32 @ll2string(i8* nonnull %281, i64 21, i64 %292) #7, !dbg !836
  %294 = call i8* @lpAppend(i8* %291, i8* nonnull %281, i32 %293) #7, !dbg !838
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %281) #8, !dbg !839
  %295 = and i32 %284, 2, !dbg !840
  %296 = icmp ne i32 %295, 0, !dbg !840
  br i1 %296, label %300, label %297, !dbg !841

; <label>:297:                                    ; preds = %280
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %281) #8, !dbg !844
  %298 = call i32 @ll2string(i8* nonnull %281, i64 21, i64 %2) #7, !dbg !845
  %299 = call i8* @lpAppend(i8* %294, i8* nonnull %281, i32 %298) #7, !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %281) #8, !dbg !848
  br label %300, !dbg !849

; <label>:300:                                    ; preds = %297, %280
  %301 = phi i8* [ %294, %280 ], [ %299, %297 ], !dbg !850
  %302 = icmp sgt i64 %2, 0, !dbg !852
  br i1 %302, label %314, label %303, !dbg !853

; <label>:303:                                    ; preds = %382, %300
  %304 = phi i8* [ %301, %300 ], [ %385, %382 ], !dbg !854
  %305 = add nsw i64 %2, 3, !dbg !856
  %306 = add nsw i64 %2, 1, !dbg !857
  %307 = select i1 %296, i64 0, i64 %306, !dbg !860
  %308 = add nsw i64 %305, %307, !dbg !860
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %281) #8, !dbg !863
  %309 = call i32 @ll2string(i8* nonnull %281, i64 21, i64 %308) #7, !dbg !864
  %310 = call i8* @lpAppend(i8* %304, i8* nonnull %281, i32 %309) #7, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %281) #8, !dbg !867
  %311 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !868
  %312 = load i8*, i8** %311, align 8, !dbg !868, !tbaa !516
  %313 = icmp eq i8* %312, %310, !dbg !870
  br i1 %313, label %391, label %388, !dbg !871

; <label>:314:                                    ; preds = %300, %382
  %315 = phi i64 [ %386, %382 ], [ 0, %300 ]
  %316 = phi i8* [ %385, %382 ], [ %301, %300 ]
  %317 = shl nuw nsw i64 %315, 1, !dbg !872
  %318 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %317, !dbg !873
  %319 = load %struct.redisObject*, %struct.redisObject** %318, align 8, !dbg !873, !tbaa !234
  %320 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %319, i64 0, i32 2, !dbg !874
  %321 = load i8*, i8** %320, align 8, !dbg !874, !tbaa !641
  %322 = or i64 %317, 1, !dbg !876
  %323 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %322, !dbg !877
  %324 = load %struct.redisObject*, %struct.redisObject** %323, align 8, !dbg !877, !tbaa !234
  %325 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %324, i64 0, i32 2, !dbg !878
  %326 = load i8*, i8** %325, align 8, !dbg !878, !tbaa !641
  br i1 %296, label %356, label %327, !dbg !880

; <label>:327:                                    ; preds = %314
  %328 = getelementptr inbounds i8, i8* %321, i64 -1, !dbg !884
  %329 = load i8, i8* %328, align 1, !dbg !884, !tbaa !656
  %330 = trunc i8 %329 to i3, !dbg !886
  switch i3 %330, label %352 [
    i3 0, label %331
    i3 1, label %334
    i3 2, label %338
    i3 3, label %343
    i3 -4, label %348
  ], !dbg !886

; <label>:331:                                    ; preds = %327
  %332 = lshr i8 %329, 3, !dbg !887
  %333 = zext i8 %332 to i64, !dbg !887
  br label %352, !dbg !888

; <label>:334:                                    ; preds = %327
  %335 = getelementptr inbounds i8, i8* %321, i64 -3, !dbg !889
  %336 = load i8, i8* %335, align 1, !dbg !890, !tbaa !656
  %337 = zext i8 %336 to i64, !dbg !889
  br label %352, !dbg !891

; <label>:338:                                    ; preds = %327
  %339 = getelementptr inbounds i8, i8* %321, i64 -5, !dbg !892
  %340 = bitcast i8* %339 to i16*, !dbg !893
  %341 = load i16, i16* %340, align 1, !dbg !893, !tbaa !667
  %342 = zext i16 %341 to i64, !dbg !892
  br label %352, !dbg !894

; <label>:343:                                    ; preds = %327
  %344 = getelementptr inbounds i8, i8* %321, i64 -9, !dbg !895
  %345 = bitcast i8* %344 to i32*, !dbg !896
  %346 = load i32, i32* %345, align 1, !dbg !896, !tbaa !672
  %347 = zext i32 %346 to i64, !dbg !895
  br label %352, !dbg !897

; <label>:348:                                    ; preds = %327
  %349 = getelementptr inbounds i8, i8* %321, i64 -17, !dbg !898
  %350 = bitcast i8* %349 to i64*, !dbg !899
  %351 = load i64, i64* %350, align 1, !dbg !899, !tbaa !117
  br label %352, !dbg !900

; <label>:352:                                    ; preds = %327, %331, %334, %338, %343, %348
  %353 = phi i64 [ %351, %348 ], [ %347, %343 ], [ %342, %338 ], [ %337, %334 ], [ %333, %331 ], [ 0, %327 ], !dbg !901
  %354 = trunc i64 %353 to i32, !dbg !902
  %355 = call i8* @lpAppend(i8* %316, i8* nonnull %321, i32 %354) #7, !dbg !903
  br label %356, !dbg !904

; <label>:356:                                    ; preds = %352, %314
  %357 = phi i8* [ %316, %314 ], [ %355, %352 ], !dbg !905
  %358 = getelementptr inbounds i8, i8* %326, i64 -1, !dbg !908
  %359 = load i8, i8* %358, align 1, !dbg !908, !tbaa !656
  %360 = trunc i8 %359 to i3, !dbg !910
  switch i3 %360, label %382 [
    i3 0, label %361
    i3 1, label %364
    i3 2, label %368
    i3 3, label %373
    i3 -4, label %378
  ], !dbg !910

; <label>:361:                                    ; preds = %356
  %362 = lshr i8 %359, 3, !dbg !911
  %363 = zext i8 %362 to i64, !dbg !911
  br label %382, !dbg !912

; <label>:364:                                    ; preds = %356
  %365 = getelementptr inbounds i8, i8* %326, i64 -3, !dbg !913
  %366 = load i8, i8* %365, align 1, !dbg !914, !tbaa !656
  %367 = zext i8 %366 to i64, !dbg !913
  br label %382, !dbg !915

; <label>:368:                                    ; preds = %356
  %369 = getelementptr inbounds i8, i8* %326, i64 -5, !dbg !916
  %370 = bitcast i8* %369 to i16*, !dbg !917
  %371 = load i16, i16* %370, align 1, !dbg !917, !tbaa !667
  %372 = zext i16 %371 to i64, !dbg !916
  br label %382, !dbg !918

; <label>:373:                                    ; preds = %356
  %374 = getelementptr inbounds i8, i8* %326, i64 -9, !dbg !919
  %375 = bitcast i8* %374 to i32*, !dbg !920
  %376 = load i32, i32* %375, align 1, !dbg !920, !tbaa !672
  %377 = zext i32 %376 to i64, !dbg !919
  br label %382, !dbg !921

; <label>:378:                                    ; preds = %356
  %379 = getelementptr inbounds i8, i8* %326, i64 -17, !dbg !922
  %380 = bitcast i8* %379 to i64*, !dbg !923
  %381 = load i64, i64* %380, align 1, !dbg !923, !tbaa !117
  br label %382, !dbg !924

; <label>:382:                                    ; preds = %356, %361, %364, %368, %373, %378
  %383 = phi i64 [ %381, %378 ], [ %377, %373 ], [ %372, %368 ], [ %367, %364 ], [ %363, %361 ], [ 0, %356 ], !dbg !925
  %384 = trunc i64 %383 to i32, !dbg !926
  %385 = call i8* @lpAppend(i8* %357, i8* nonnull %326, i32 %384) #7, !dbg !927
  %386 = add nuw nsw i64 %315, 1, !dbg !928
  %387 = icmp eq i64 %386, %2, !dbg !852
  br i1 %387, label %303, label %314, !dbg !853, !llvm.loop !929

; <label>:388:                                    ; preds = %303
  %389 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !931, !tbaa !108
  %390 = call i32 @raxInsert(%struct.rax* %389, i8* nonnull %66, i64 16, i8* %310, i8** null) #7, !dbg !932
  br label %391, !dbg !932

; <label>:391:                                    ; preds = %303, %388
  %392 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !933
  %393 = load i64, i64* %392, align 8, !dbg !934, !tbaa !935
  %394 = add i64 %393, 1, !dbg !934
  store i64 %394, i64* %392, align 8, !dbg !934, !tbaa !935
  %395 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !936
  store i64 %65, i64* %395, align 8, !dbg !936
  %396 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !936
  store i64 %64, i64* %396, align 8, !dbg !936
  %397 = icmp eq %struct.streamID* %3, null, !dbg !937
  br i1 %397, label %401, label %398, !dbg !939

; <label>:398:                                    ; preds = %391
  %399 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !940
  store i64 %65, i64* %399, align 8, !dbg !940
  %400 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !940
  store i64 %64, i64* %400, align 8, !dbg !940
  br label %401, !dbg !941

; <label>:401:                                    ; preds = %391, %398
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #8, !dbg !942
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %35) #8, !dbg !942
  br label %402

; <label>:402:                                    ; preds = %28, %26, %401
  %403 = phi i32 [ 0, %401 ], [ -1, %26 ], [ -1, %28 ], !dbg !522
  ret i32 %403, !dbg !942
}

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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: noredzone
declare dso_local i8* @lpNew() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @streamTrimByLength(%struct.stream* nocapture, i64, i32) local_unnamed_addr #0 !dbg !943 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [21 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.raxIterator, align 8
  %16 = alloca i8*, align 8
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !975
  %18 = load i64, i64* %17, align 8, !dbg !975, !tbaa !935
  %19 = icmp ugt i64 %18, %1, !dbg !977
  br i1 %19, label %20, label %215, !dbg !978

; <label>:20:                                     ; preds = %3
  %21 = bitcast %struct.raxIterator* %15 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %21) #8, !dbg !979
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !980
  %23 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !980, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %15, %struct.rax* %23) #7, !dbg !982
  %24 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !983
  %25 = load i64, i64* %17, align 8, !dbg !985, !tbaa !935
  %26 = icmp ugt i64 %25, %1, !dbg !986
  br i1 %26, label %27, label %213, !dbg !987

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 3
  %29 = bitcast i8** %16 to i8*
  %30 = bitcast i64* %13 to i8*
  %31 = bitcast i64* %14 to i8*
  %32 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 2
  %33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 4
  br label %34, !dbg !987

; <label>:34:                                     ; preds = %27, %201
  %35 = phi i64 [ 0, %27 ], [ %211, %201 ]
  %36 = call i32 @raxNext(%struct.raxIterator* nonnull %15) #7, !dbg !988
  %37 = icmp eq i32 %36, 0, !dbg !987
  br i1 %37, label %213, label %38, !dbg !989

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %28, align 8, !dbg !990, !tbaa !516
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #8, !dbg !992
  %40 = call i8* @lpFirst(i8* %39) #7, !dbg !993
  store i8* %40, i8** %16, align 8, !dbg !994, !tbaa !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #8, !dbg !997
  %41 = call i8* @lpGet(i8* %40, i64* nonnull %13, i8* null) #7, !dbg !999
  %42 = icmp eq i8* %41, null, !dbg !1001
  br i1 %42, label %43, label %45, !dbg !1002

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %13, align 8, !dbg !1003, !tbaa !117
  br label %52, !dbg !1004

; <label>:45:                                     ; preds = %38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #8, !dbg !1005
  %46 = load i64, i64* %13, align 8, !dbg !1006, !tbaa !117
  %47 = call i32 @string2ll(i8* nonnull %41, i64 %46, i64* nonnull %14) #7, !dbg !1008
  %48 = icmp eq i32 %47, 0, !dbg !1010
  br i1 %48, label %49, label %50, !dbg !1010

; <label>:49:                                     ; preds = %45
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1010
  call void @_exit(i32 1) #9, !dbg !1010
  unreachable, !dbg !1010

; <label>:50:                                     ; preds = %45
  %51 = load i64, i64* %14, align 8, !dbg !1011, !tbaa !265
  store i64 %51, i64* %13, align 8, !dbg !1012, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #8, !dbg !1013
  br label %52

; <label>:52:                                     ; preds = %43, %50
  %53 = phi i64 [ %44, %43 ], [ %51, %50 ], !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #8, !dbg !1013
  %54 = load i64, i64* %17, align 8, !dbg !1016, !tbaa !935
  %55 = sub i64 %54, %53, !dbg !1018
  %56 = icmp ult i64 %55, %1, !dbg !1019
  br i1 %56, label %57, label %201, !dbg !1020

; <label>:57:                                     ; preds = %52
  %58 = icmp eq i32 %2, 0, !dbg !1021
  br i1 %58, label %59, label %199, !dbg !1023

; <label>:59:                                     ; preds = %57
  %60 = sub i64 %54, %1, !dbg !1024
  %61 = icmp sgt i64 %53, %60, !dbg !1026
  br i1 %61, label %63, label %62, !dbg !1026

; <label>:62:                                     ; preds = %59
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 404) #7, !dbg !1026
  call void @_exit(i32 1) #9, !dbg !1026
  unreachable, !dbg !1026

; <label>:63:                                     ; preds = %59
  %64 = sub nsw i64 %53, %60, !dbg !1027
  %65 = getelementptr inbounds [21 x i8], [21 x i8]* %12, i64 0, i64 0, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1031
  %66 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %64) #7, !dbg !1032
  %67 = load i8*, i8** %16, align 8, !dbg !1034, !tbaa !234
  %68 = call i8* @lpInsert(i8* %39, i8* nonnull %65, i32 %66, i8* %67, i32 2, i8** nonnull %16) #7, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1036
  %69 = load i8*, i8** %16, align 8, !dbg !1037, !tbaa !234
  %70 = call i8* @lpNext(i8* %68, i8* %69) #7, !dbg !1038
  store i8* %70, i8** %16, align 8, !dbg !1039, !tbaa !234
  %71 = bitcast i64* %10 to i8*, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #8, !dbg !1042
  %72 = call i8* @lpGet(i8* %70, i64* nonnull %10, i8* null) #7, !dbg !1044
  %73 = icmp eq i8* %72, null, !dbg !1046
  br i1 %73, label %74, label %76, !dbg !1047

; <label>:74:                                     ; preds = %63
  %75 = load i64, i64* %10, align 8, !dbg !1048, !tbaa !117
  br label %84, !dbg !1049

; <label>:76:                                     ; preds = %63
  %77 = bitcast i64* %11 to i8*, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #8, !dbg !1050
  %78 = load i64, i64* %10, align 8, !dbg !1051, !tbaa !117
  %79 = call i32 @string2ll(i8* nonnull %72, i64 %78, i64* nonnull %11) #7, !dbg !1053
  %80 = icmp eq i32 %79, 0, !dbg !1055
  br i1 %80, label %81, label %82, !dbg !1055

; <label>:81:                                     ; preds = %76
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1055
  call void @_exit(i32 1) #9, !dbg !1055
  unreachable, !dbg !1055

; <label>:82:                                     ; preds = %76
  %83 = load i64, i64* %11, align 8, !dbg !1056, !tbaa !265
  store i64 %83, i64* %10, align 8, !dbg !1057, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #8, !dbg !1058
  br label %84

; <label>:84:                                     ; preds = %74, %82
  %85 = phi i64 [ %75, %74 ], [ %83, %82 ], !dbg !1059
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #8, !dbg !1058
  %86 = add nsw i64 %85, %60, !dbg !1061
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1065
  %87 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %86) #7, !dbg !1066
  %88 = load i8*, i8** %16, align 8, !dbg !1068, !tbaa !234
  %89 = call i8* @lpInsert(i8* %68, i8* nonnull %65, i32 %87, i8* %88, i32 2, i8** nonnull %16) #7, !dbg !1069
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1070
  %90 = load i8*, i8** %16, align 8, !dbg !1071, !tbaa !234
  %91 = call i8* @lpNext(i8* %89, i8* %90) #7, !dbg !1072
  store i8* %91, i8** %16, align 8, !dbg !1073, !tbaa !234
  %92 = bitcast i64* %8 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #8, !dbg !1076
  %93 = call i8* @lpGet(i8* %91, i64* nonnull %8, i8* null) #7, !dbg !1078
  %94 = icmp eq i8* %93, null, !dbg !1080
  br i1 %94, label %95, label %97, !dbg !1081

; <label>:95:                                     ; preds = %84
  %96 = load i64, i64* %8, align 8, !dbg !1082, !tbaa !117
  br label %105, !dbg !1083

; <label>:97:                                     ; preds = %84
  %98 = bitcast i64* %9 to i8*, !dbg !1084
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98) #8, !dbg !1084
  %99 = load i64, i64* %8, align 8, !dbg !1085, !tbaa !117
  %100 = call i32 @string2ll(i8* nonnull %93, i64 %99, i64* nonnull %9) #7, !dbg !1087
  %101 = icmp eq i32 %100, 0, !dbg !1089
  br i1 %101, label %102, label %103, !dbg !1089

; <label>:102:                                    ; preds = %97
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1089
  call void @_exit(i32 1) #9, !dbg !1089
  unreachable, !dbg !1089

; <label>:103:                                    ; preds = %97
  %104 = load i64, i64* %9, align 8, !dbg !1090, !tbaa !265
  store i64 %104, i64* %8, align 8, !dbg !1091, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98) #8, !dbg !1092
  br label %105

; <label>:105:                                    ; preds = %95, %103
  %106 = phi i64 [ %96, %95 ], [ %104, %103 ], !dbg !1093
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #8, !dbg !1092
  %107 = load i8*, i8** %16, align 8, !dbg !1095, !tbaa !234
  %108 = call i8* @lpNext(i8* %89, i8* %107) #7, !dbg !1096
  store i8* %108, i8** %16, align 8, !dbg !1097, !tbaa !234
  br label %109, !dbg !1099

; <label>:109:                                    ; preds = %109, %105
  %110 = phi i8* [ %108, %105 ], [ %113, %109 ], !dbg !1100
  %111 = phi i64 [ 0, %105 ], [ %114, %109 ], !dbg !1101
  %112 = icmp slt i64 %111, %106, !dbg !1103
  %113 = call i8* @lpNext(i8* %89, i8* %110) #7, !dbg !1100
  store i8* %113, i8** %16, align 8, !dbg !1100, !tbaa !234
  %114 = add nuw nsw i64 %111, 1, !dbg !1104
  br i1 %112, label %109, label %115, !dbg !1105, !llvm.loop !1106

; <label>:115:                                    ; preds = %109
  %116 = icmp eq i8* %113, null, !dbg !1108
  br i1 %116, label %192, label %117, !dbg !1108

; <label>:117:                                    ; preds = %115
  %118 = bitcast i64* %6 to i8*
  %119 = bitcast i64* %7 to i8*
  %120 = bitcast i64* %4 to i8*
  %121 = trunc i64 %106 to i32
  %122 = bitcast i64* %5 to i8*
  br label %123, !dbg !1109

; <label>:123:                                    ; preds = %117, %190
  %124 = phi i8* [ %189, %190 ], [ %113, %117 ], !dbg !1109
  %125 = phi i8* [ %154, %190 ], [ %89, %117 ], !dbg !1110
  %126 = phi i64 [ %155, %190 ], [ %35, %117 ], !dbg !984
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118) #8, !dbg !1113
  %127 = call i8* @lpGet(i8* nonnull %124, i64* nonnull %6, i8* null) #7, !dbg !1115
  %128 = icmp eq i8* %127, null, !dbg !1117
  br i1 %128, label %129, label %131, !dbg !1118

; <label>:129:                                    ; preds = %123
  %130 = load i64, i64* %6, align 8, !dbg !1119, !tbaa !117
  br label %138, !dbg !1120

; <label>:131:                                    ; preds = %123
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119) #8, !dbg !1121
  %132 = load i64, i64* %6, align 8, !dbg !1122, !tbaa !117
  %133 = call i32 @string2ll(i8* nonnull %127, i64 %132, i64* nonnull %7) #7, !dbg !1124
  %134 = icmp eq i32 %133, 0, !dbg !1126
  br i1 %134, label %135, label %136, !dbg !1126

; <label>:135:                                    ; preds = %131
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1126
  call void @_exit(i32 1) #9, !dbg !1126
  unreachable, !dbg !1126

; <label>:136:                                    ; preds = %131
  %137 = load i64, i64* %7, align 8, !dbg !1127, !tbaa !265
  store i64 %137, i64* %6, align 8, !dbg !1128, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #8, !dbg !1129
  br label %138

; <label>:138:                                    ; preds = %129, %136
  %139 = phi i64 [ %130, %129 ], [ %137, %136 ], !dbg !1130
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #8, !dbg !1129
  %140 = trunc i64 %139 to i32, !dbg !1131
  %141 = and i32 %140, 1, !dbg !1133
  %142 = icmp eq i32 %141, 0, !dbg !1133
  br i1 %142, label %143, label %153, !dbg !1134

; <label>:143:                                    ; preds = %138
  %144 = or i32 %140, 1, !dbg !1135
  %145 = sext i32 %144 to i64, !dbg !1136
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1140
  %146 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %145) #7, !dbg !1141
  %147 = load i8*, i8** %16, align 8, !dbg !1143, !tbaa !234
  %148 = call i8* @lpInsert(i8* %125, i8* nonnull %65, i32 %146, i8* %147, i32 2, i8** nonnull %16) #7, !dbg !1144
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #8, !dbg !1145
  %149 = add nsw i64 %126, 1, !dbg !1146
  %150 = load i64, i64* %17, align 8, !dbg !1147, !tbaa !935
  %151 = add i64 %150, -1, !dbg !1147
  store i64 %151, i64* %17, align 8, !dbg !1147, !tbaa !935
  %152 = icmp ugt i64 %151, %1, !dbg !1148
  br i1 %152, label %153, label %192, !dbg !1150

; <label>:153:                                    ; preds = %143, %138
  %154 = phi i8* [ %125, %138 ], [ %148, %143 ], !dbg !1151
  %155 = phi i64 [ %126, %138 ], [ %149, %143 ], !dbg !1151
  %156 = phi i32 [ %140, %138 ], [ %144, %143 ], !dbg !1151
  %157 = load i8*, i8** %16, align 8, !dbg !1152, !tbaa !234
  %158 = call i8* @lpNext(i8* %154, i8* %157) #7, !dbg !1153
  store i8* %158, i8** %16, align 8, !dbg !1154, !tbaa !234
  %159 = call i8* @lpNext(i8* %154, i8* %158) #7, !dbg !1155
  store i8* %159, i8** %16, align 8, !dbg !1156, !tbaa !234
  %160 = call i8* @lpNext(i8* %154, i8* %159) #7, !dbg !1157
  store i8* %160, i8** %16, align 8, !dbg !1158, !tbaa !234
  %161 = and i32 %156, 2, !dbg !1159
  %162 = icmp eq i32 %161, 0, !dbg !1159
  br i1 %162, label %163, label %181, !dbg !1161

; <label>:163:                                    ; preds = %153
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #8, !dbg !1165
  %164 = call i8* @lpGet(i8* %160, i64* nonnull %4, i8* null) #7, !dbg !1167
  %165 = icmp eq i8* %164, null, !dbg !1169
  br i1 %165, label %166, label %168, !dbg !1170

; <label>:166:                                    ; preds = %163
  %167 = load i64, i64* %4, align 8, !dbg !1171, !tbaa !117
  br label %175, !dbg !1172

; <label>:168:                                    ; preds = %163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #8, !dbg !1173
  %169 = load i64, i64* %4, align 8, !dbg !1174, !tbaa !117
  %170 = call i32 @string2ll(i8* nonnull %164, i64 %169, i64* nonnull %5) #7, !dbg !1176
  %171 = icmp eq i32 %170, 0, !dbg !1178
  br i1 %171, label %172, label %173, !dbg !1178

; <label>:172:                                    ; preds = %168
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1178
  call void @_exit(i32 1) #9, !dbg !1178
  unreachable, !dbg !1178

; <label>:173:                                    ; preds = %168
  %174 = load i64, i64* %5, align 8, !dbg !1179, !tbaa !265
  store i64 %174, i64* %4, align 8, !dbg !1180, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #8, !dbg !1181
  br label %175

; <label>:175:                                    ; preds = %166, %173
  %176 = phi i64 [ %167, %166 ], [ %174, %173 ], !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #8, !dbg !1181
  %177 = trunc i64 %176 to i32, !dbg !1183
  %178 = shl nsw i32 %177, 1, !dbg !1185
  %179 = or i32 %178, 1, !dbg !1186
  %180 = load i8*, i8** %16, align 8, !dbg !1187, !tbaa !234
  br label %181

; <label>:181:                                    ; preds = %153, %175
  %182 = phi i8* [ %160, %153 ], [ %180, %175 ]
  %183 = phi i32 [ %121, %153 ], [ %179, %175 ]
  br label %184, !dbg !1188

; <label>:184:                                    ; preds = %181, %184
  %185 = phi i8* [ %189, %184 ], [ %182, %181 ], !dbg !1187
  %186 = phi i32 [ %187, %184 ], [ %183, %181 ], !dbg !1187
  %187 = add nsw i32 %186, -1, !dbg !1188
  %188 = icmp eq i32 %186, 0, !dbg !1189
  %189 = call i8* @lpNext(i8* %154, i8* %185) #7, !dbg !1187
  store i8* %189, i8** %16, align 8, !dbg !1187, !tbaa !234
  br i1 %188, label %190, label %184, !dbg !1189, !llvm.loop !1190

; <label>:190:                                    ; preds = %184
  %191 = icmp eq i8* %189, null, !dbg !1108
  br i1 %191, label %192, label %123, !llvm.loop !1192

; <label>:192:                                    ; preds = %190, %143, %115
  %193 = phi i8* [ %89, %115 ], [ %148, %143 ], [ %154, %190 ], !dbg !1110
  %194 = phi i64 [ %35, %115 ], [ %149, %143 ], [ %155, %190 ], !dbg !984
  %195 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1194, !tbaa !108
  %196 = load i8*, i8** %32, align 8, !dbg !1195, !tbaa !686
  %197 = load i64, i64* %33, align 8, !dbg !1196, !tbaa !684
  %198 = call i32 @raxInsert(%struct.rax* %195, i8* %196, i64 %197, i8* %193, i8** null) #7, !dbg !1197
  br label %199

; <label>:199:                                    ; preds = %192, %57
  %200 = phi i64 [ %35, %57 ], [ %194, %192 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #8, !dbg !1198
  br label %213

; <label>:201:                                    ; preds = %52
  call void @lpFree(i8* %39) #7, !dbg !1199
  %202 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1201, !tbaa !108
  %203 = load i8*, i8** %32, align 8, !dbg !1202, !tbaa !686
  %204 = load i64, i64* %33, align 8, !dbg !1203, !tbaa !684
  %205 = call i32 @raxRemove(%struct.rax* %202, i8* %203, i64 %204, i8** null) #7, !dbg !1204
  %206 = load i8*, i8** %32, align 8, !dbg !1205, !tbaa !686
  %207 = load i64, i64* %33, align 8, !dbg !1206, !tbaa !684
  %208 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %206, i64 %207) #7, !dbg !1207
  %209 = load i64, i64* %17, align 8, !dbg !1208, !tbaa !935
  %210 = sub i64 %209, %53, !dbg !1208
  store i64 %210, i64* %17, align 8, !dbg !1208, !tbaa !935
  %211 = add nsw i64 %53, %35, !dbg !1209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #8, !dbg !1198
  %212 = icmp ugt i64 %210, %1, !dbg !986
  br i1 %212, label %34, label %213, !dbg !987

; <label>:213:                                    ; preds = %201, %34, %20, %199
  %214 = phi i64 [ %200, %199 ], [ 0, %20 ], [ %211, %201 ], [ %35, %34 ], !dbg !1210
  call void @raxStop(%struct.raxIterator* nonnull %15) #7, !dbg !1211
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %21) #8, !dbg !1212
  br label %215

; <label>:215:                                    ; preds = %3, %213
  %216 = phi i64 [ %214, %213 ], [ 0, %3 ], !dbg !1210
  ret i64 %216, !dbg !1212
}

; Function Attrs: noredzone
declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStart(%struct.streamIterator*, %struct.stream*, %struct.streamID* readonly, %struct.streamID* readonly, i32) local_unnamed_addr #0 !dbg !1213 {
  %6 = alloca [2 x i64], align 16
  %7 = icmp ne %struct.streamID* %2, null, !dbg !1254
  %8 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, !dbg !1255
  br i1 %7, label %9, label %21, !dbg !1257

; <label>:9:                                      ; preds = %5
  %10 = bitcast [2 x i64]* %8 to i8*, !dbg !1258
  %11 = bitcast [2 x i64]* %6 to i8*, !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !1261
  %12 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1262
  %13 = load i64, i64* %12, align 8, !dbg !1262, !tbaa !178
  %14 = tail call i64 @intrev64(i64 %13) #7, !dbg !1262
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1263
  store i64 %14, i64* %15, align 16, !dbg !1264, !tbaa !117
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1265
  %17 = load i64, i64* %16, align 8, !dbg !1265, !tbaa !188
  %18 = tail call i64 @intrev64(i64 %17) #7, !dbg !1265
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1266
  store i64 %18, i64* %19, align 8, !dbg !1267, !tbaa !117
  %20 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %11, i64 16) #7, !dbg !1268
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !1269
  br label %23, !dbg !1270

; <label>:21:                                     ; preds = %5
  %22 = bitcast [2 x i64]* %8 to <2 x i64>*, !dbg !1271
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !dbg !1271, !tbaa !117
  br label %23

; <label>:23:                                     ; preds = %21, %9
  %24 = icmp ne %struct.streamID* %3, null, !dbg !1272
  %25 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, !dbg !1273
  br i1 %24, label %26, label %38, !dbg !1275

; <label>:26:                                     ; preds = %23
  %27 = bitcast [2 x i64]* %25 to i8*, !dbg !1276
  %28 = bitcast [2 x i64]* %6 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #8, !dbg !1279
  %29 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1280
  %30 = load i64, i64* %29, align 8, !dbg !1280, !tbaa !178
  %31 = call i64 @intrev64(i64 %30) #7, !dbg !1280
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1281
  store i64 %31, i64* %32, align 16, !dbg !1282, !tbaa !117
  %33 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1283
  %34 = load i64, i64* %33, align 8, !dbg !1283, !tbaa !188
  %35 = call i64 @intrev64(i64 %34) #7, !dbg !1283
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1284
  store i64 %35, i64* %36, align 8, !dbg !1285, !tbaa !117
  %37 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %28, i64 16) #7, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #8, !dbg !1287
  br label %40, !dbg !1288

; <label>:38:                                     ; preds = %23
  %39 = bitcast [2 x i64]* %25 to <2 x i64>*, !dbg !1289
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %39, align 8, !dbg !1289, !tbaa !117
  br label %40

; <label>:40:                                     ; preds = %38, %26
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !1290
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 0, !dbg !1291
  %43 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !1291, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %41, %struct.rax* %43) #7, !dbg !1292
  %44 = icmp eq i32 %4, 0, !dbg !1293
  br i1 %44, label %45, label %63, !dbg !1295

; <label>:45:                                     ; preds = %40
  br i1 %7, label %46, label %61, !dbg !1296

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1299
  %48 = load i64, i64* %47, align 8, !dbg !1299, !tbaa !178
  %49 = icmp eq i64 %48, 0, !dbg !1300
  br i1 %49, label %50, label %54, !dbg !1301

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1302
  %52 = load i64, i64* %51, align 8, !dbg !1302, !tbaa !188
  %53 = icmp eq i64 %52, 0, !dbg !1303
  br i1 %53, label %61, label %54, !dbg !1304

; <label>:54:                                     ; preds = %50, %46
  %55 = bitcast [2 x i64]* %8 to i8*, !dbg !1305
  %56 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %55, i64 16) #7, !dbg !1307
  %57 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #7, !dbg !1308
  %58 = icmp eq i32 %57, 0, !dbg !1308
  br i1 %58, label %81, label %59, !dbg !1310

; <label>:59:                                     ; preds = %54
  %60 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !1311
  br label %81, !dbg !1311

; <label>:61:                                     ; preds = %50, %45
  %62 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !1312
  br label %81

; <label>:63:                                     ; preds = %40
  br i1 %24, label %64, label %79, !dbg !1314

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1317
  %66 = load i64, i64* %65, align 8, !dbg !1317, !tbaa !178
  %67 = icmp eq i64 %66, 0, !dbg !1318
  br i1 %67, label %68, label %72, !dbg !1319

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1320
  %70 = load i64, i64* %69, align 8, !dbg !1320, !tbaa !188
  %71 = icmp eq i64 %70, 0, !dbg !1321
  br i1 %71, label %79, label %72, !dbg !1322

; <label>:72:                                     ; preds = %68, %64
  %73 = bitcast [2 x i64]* %25 to i8*, !dbg !1323
  %74 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %73, i64 16) #7, !dbg !1325
  %75 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #7, !dbg !1326
  %76 = icmp eq i32 %75, 0, !dbg !1326
  br i1 %76, label %81, label %77, !dbg !1328

; <label>:77:                                     ; preds = %72
  %78 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #7, !dbg !1329
  br label %81, !dbg !1329

; <label>:79:                                     ; preds = %68, %63
  %80 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #7, !dbg !1330
  br label %81

; <label>:81:                                     ; preds = %72, %54, %79, %77, %61, %59
  %82 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1332
  store %struct.stream* %1, %struct.stream** %82, align 8, !dbg !1333, !tbaa !1334
  %83 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1336
  %84 = bitcast i8** %83 to <2 x i8*>*, !dbg !1337
  store <2 x i8*> zeroinitializer, <2 x i8*>* %84, align 8, !dbg !1337, !tbaa !234
  %85 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !1338
  store i32 %4, i32* %85, align 4, !dbg !1339, !tbaa !1340
  ret void, !dbg !1341
}

; Function Attrs: noredzone
declare dso_local i32 @raxEOF(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamIteratorGetID(%struct.streamIterator*, %struct.streamID* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !1342 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [2 x i64], align 16
  %19 = alloca [16 x i8], align 16
  %20 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11
  %23 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 12
  %24 = bitcast i8** %23 to i64*
  %25 = bitcast i64* %10 to i8*
  %26 = bitcast i64* %12 to i8*
  %27 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 1
  %28 = bitcast %struct.streamID* %1 to i8*
  %29 = bitcast %struct.streamID* %27 to i8*
  %30 = bitcast i64* %8 to i8*
  %31 = bitcast i64* %11 to i8*
  %32 = bitcast i64* %13 to i8*
  %33 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0
  %34 = bitcast i64* %6 to i8*
  %35 = bitcast i64* %9 to i8*
  %36 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %38 = bitcast [2 x i64]* %18 to i8*
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 1
  %41 = bitcast i64* %7 to i8*
  %42 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 2
  %43 = bitcast i64* %4 to i8*
  %44 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, i64 0
  %45 = bitcast i64* %44 to i8*
  %46 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, i64 0
  %47 = bitcast i64* %46 to i8*
  %48 = bitcast i64* %5 to i8*
  %49 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9
  %50 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4
  %51 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2
  %52 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 1, i32 0
  %53 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 1, i32 1
  %54 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 3
  %55 = bitcast i64* %16 to i8*
  %56 = bitcast i64* %14 to i8*
  %57 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 3
  %58 = bitcast i64* %17 to i8*
  %59 = bitcast i64* %15 to i8*
  %60 = bitcast i8** %20 to <2 x i8*>*
  br label %61, !dbg !1383

; <label>:61:                                     ; preds = %182, %3
  %62 = load i8*, i8** %20, align 8, !dbg !1384, !tbaa !1385
  %63 = icmp eq i8* %62, null, !dbg !1386
  br i1 %63, label %67, label %64, !dbg !1387

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %22, align 8, !dbg !1388, !tbaa !1389
  %66 = icmp eq i8* %65, null, !dbg !1390
  br i1 %66, label %67, label %128, !dbg !1391

; <label>:67:                                     ; preds = %64, %61
  %68 = load i32, i32* %21, align 4, !dbg !1392, !tbaa !1340
  %69 = icmp eq i32 %68, 0, !dbg !1394
  br i1 %69, label %70, label %76, !dbg !1395

; <label>:70:                                     ; preds = %67
  %71 = call i32 @raxNext(%struct.raxIterator* nonnull %49) #7, !dbg !1396
  %72 = icmp eq i32 %71, 0, !dbg !1396
  br i1 %72, label %342, label %73, !dbg !1397

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %21, align 4, !dbg !1398, !tbaa !1340
  %75 = icmp eq i32 %74, 0, !dbg !1400
  br i1 %75, label %79, label %76, !dbg !1401

; <label>:76:                                     ; preds = %67, %73
  %77 = call i32 @raxPrev(%struct.raxIterator* nonnull %49) #7, !dbg !1402
  %78 = icmp eq i32 %77, 0, !dbg !1402
  br i1 %78, label %342, label %79, !dbg !1403

; <label>:79:                                     ; preds = %76, %73
  %80 = load i64, i64* %50, align 8, !dbg !1404, !tbaa !1405
  %81 = icmp eq i64 %80, 16, !dbg !1404
  br i1 %81, label %83, label %82, !dbg !1404

; <label>:82:                                     ; preds = %79
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 541) #7, !dbg !1404
  call void @_exit(i32 1) #9, !dbg !1404
  unreachable, !dbg !1404

; <label>:83:                                     ; preds = %79
  %84 = load i8*, i8** %51, align 8, !dbg !1406, !tbaa !1407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #8, !dbg !1410
  %85 = call i8* @memcpy(i8* nonnull %38, i8* %84, i64 16) #7, !dbg !1411
  %86 = load i64, i64* %39, align 16, !dbg !1412, !tbaa !117
  %87 = call i64 @intrev64(i64 %86) #7, !dbg !1412
  store i64 %87, i64* %52, align 8, !dbg !1413, !tbaa !178
  %88 = load i64, i64* %40, align 8, !dbg !1414, !tbaa !117
  %89 = call i64 @intrev64(i64 %88) #7, !dbg !1414
  store i64 %89, i64* %53, align 8, !dbg !1415, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #8, !dbg !1416
  %90 = load i8*, i8** %54, align 8, !dbg !1417, !tbaa !1418
  store i8* %90, i8** %20, align 8, !dbg !1419, !tbaa !1385
  %91 = call i8* @lpFirst(i8* %90) #7, !dbg !1420
  store i8* %91, i8** %22, align 8, !dbg !1421, !tbaa !1389
  %92 = load i8*, i8** %20, align 8, !dbg !1422, !tbaa !1385
  %93 = call i8* @lpNext(i8* %92, i8* %91) #7, !dbg !1423
  store i8* %93, i8** %22, align 8, !dbg !1424, !tbaa !1389
  %94 = load i8*, i8** %20, align 8, !dbg !1425, !tbaa !1385
  %95 = call i8* @lpNext(i8* %94, i8* %93) #7, !dbg !1426
  store i8* %95, i8** %22, align 8, !dbg !1427, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #8, !dbg !1430
  %96 = call i8* @lpGet(i8* %95, i64* nonnull %16, i8* null) #7, !dbg !1432
  %97 = icmp eq i8* %96, null, !dbg !1434
  br i1 %97, label %98, label %100, !dbg !1435

; <label>:98:                                     ; preds = %83
  %99 = load i64, i64* %16, align 8, !dbg !1436, !tbaa !117
  br label %107, !dbg !1437

; <label>:100:                                    ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #8, !dbg !1438
  %101 = load i64, i64* %16, align 8, !dbg !1439, !tbaa !117
  %102 = call i32 @string2ll(i8* nonnull %96, i64 %101, i64* nonnull %17) #7, !dbg !1441
  %103 = icmp eq i32 %102, 0, !dbg !1443
  br i1 %103, label %104, label %105, !dbg !1443

; <label>:104:                                    ; preds = %100
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1443
  call void @_exit(i32 1) #9, !dbg !1443
  unreachable, !dbg !1443

; <label>:105:                                    ; preds = %100
  %106 = load i64, i64* %17, align 8, !dbg !1444, !tbaa !265
  store i64 %106, i64* %16, align 8, !dbg !1445, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #8, !dbg !1446
  br label %107

; <label>:107:                                    ; preds = %98, %105
  %108 = phi i64 [ %99, %98 ], [ %106, %105 ], !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #8, !dbg !1446
  store i64 %108, i64* %42, align 8, !dbg !1448, !tbaa !1449
  %109 = load i8*, i8** %20, align 8, !dbg !1450, !tbaa !1385
  %110 = load i8*, i8** %22, align 8, !dbg !1451, !tbaa !1389
  %111 = call i8* @lpNext(i8* %109, i8* %110) #7, !dbg !1452
  store i8* %111, i8** %22, align 8, !dbg !1453, !tbaa !1389
  store i8* %111, i8** %57, align 8, !dbg !1454, !tbaa !1455
  %112 = load i32, i32* %21, align 4, !dbg !1456, !tbaa !1340
  %113 = icmp eq i32 %112, 0, !dbg !1457
  br i1 %113, label %114, label %125, !dbg !1458

; <label>:114:                                    ; preds = %107
  %115 = load i64, i64* %42, align 8, !dbg !1460, !tbaa !1449
  %116 = icmp eq i64 %115, 0, !dbg !1462
  br i1 %116, label %154, label %117, !dbg !1463

; <label>:117:                                    ; preds = %114, %117
  %118 = phi i8* [ %121, %117 ], [ %111, %114 ], !dbg !1464
  %119 = phi i64 [ %122, %117 ], [ 0, %114 ]
  %120 = load i8*, i8** %20, align 8, !dbg !1465, !tbaa !1385
  %121 = call i8* @lpNext(i8* %120, i8* %118) #7, !dbg !1466
  store i8* %121, i8** %22, align 8, !dbg !1467, !tbaa !1389
  %122 = add nuw i64 %119, 1, !dbg !1468
  %123 = load i64, i64* %42, align 8, !dbg !1460, !tbaa !1449
  %124 = icmp ult i64 %122, %123, !dbg !1462
  br i1 %124, label %117, label %154, !dbg !1463, !llvm.loop !1469

; <label>:125:                                    ; preds = %107
  %126 = load i8*, i8** %20, align 8, !dbg !1471, !tbaa !1385
  %127 = call i8* @lpLast(i8* %126) #7, !dbg !1473
  store i8* %127, i8** %22, align 8, !dbg !1474, !tbaa !1389
  br label %154

; <label>:128:                                    ; preds = %64
  %129 = load i32, i32* %21, align 4, !dbg !1475, !tbaa !1340
  %130 = icmp eq i32 %129, 0, !dbg !1476
  br i1 %130, label %154, label %131, !dbg !1477

; <label>:131:                                    ; preds = %128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #8, !dbg !1480
  %132 = call i8* @lpGet(i8* nonnull %65, i64* nonnull %14, i8* null) #7, !dbg !1482
  %133 = icmp eq i8* %132, null, !dbg !1484
  br i1 %133, label %134, label %136, !dbg !1485

; <label>:134:                                    ; preds = %131
  %135 = load i64, i64* %14, align 8, !dbg !1486, !tbaa !117
  br label %143, !dbg !1487

; <label>:136:                                    ; preds = %131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #8, !dbg !1488
  %137 = load i64, i64* %14, align 8, !dbg !1489, !tbaa !117
  %138 = call i32 @string2ll(i8* nonnull %132, i64 %137, i64* nonnull %15) #7, !dbg !1491
  %139 = icmp eq i32 %138, 0, !dbg !1493
  br i1 %139, label %140, label %141, !dbg !1493

; <label>:140:                                    ; preds = %136
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1493
  call void @_exit(i32 1) #9, !dbg !1493
  unreachable, !dbg !1493

; <label>:141:                                    ; preds = %136
  %142 = load i64, i64* %15, align 8, !dbg !1494, !tbaa !265
  store i64 %142, i64* %14, align 8, !dbg !1495, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #8, !dbg !1496
  br label %143

; <label>:143:                                    ; preds = %134, %141
  %144 = phi i64 [ %135, %134 ], [ %142, %141 ], !dbg !1497
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #8, !dbg !1496
  %145 = trunc i64 %144 to i32, !dbg !1498
  %146 = load i8*, i8** %22, align 8, !dbg !1500, !tbaa !1389
  br label %147, !dbg !1501

; <label>:147:                                    ; preds = %147, %143
  %148 = phi i8* [ %146, %143 ], [ %153, %147 ], !dbg !1500
  %149 = phi i32 [ %145, %143 ], [ %150, %147 ], !dbg !1500
  %150 = add nsw i32 %149, -1, !dbg !1502
  %151 = icmp eq i32 %149, 0, !dbg !1501
  %152 = load i8*, i8** %20, align 8, !dbg !1500, !tbaa !1385
  %153 = call i8* @lpPrev(i8* %152, i8* %148) #7, !dbg !1500
  store i8* %153, i8** %22, align 8, !dbg !1500, !tbaa !1389
  br i1 %151, label %154, label %147, !dbg !1501, !llvm.loop !1503

; <label>:154:                                    ; preds = %147, %117, %114, %128, %125
  br label %155, !dbg !1505

; <label>:155:                                    ; preds = %154, %341
  %156 = load i32, i32* %21, align 4, !dbg !1505, !tbaa !1340
  %157 = icmp eq i32 %156, 0, !dbg !1506
  br i1 %157, label %158, label %163, !dbg !1507

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %20, align 8, !dbg !1508, !tbaa !1385
  %160 = load i8*, i8** %22, align 8, !dbg !1510, !tbaa !1389
  %161 = call i8* @lpNext(i8* %159, i8* %160) #7, !dbg !1511
  store i8* %161, i8** %22, align 8, !dbg !1512, !tbaa !1389
  %162 = icmp eq i8* %161, null, !dbg !1513
  br i1 %162, label %182, label %190, !dbg !1515, !llvm.loop !1516

; <label>:163:                                    ; preds = %155
  %164 = load i8*, i8** %22, align 8, !dbg !1518, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #8, !dbg !1521
  %165 = call i8* @lpGet(i8* %164, i64* nonnull %12, i8* null) #7, !dbg !1523
  %166 = icmp eq i8* %165, null, !dbg !1525
  br i1 %166, label %167, label %169, !dbg !1526

; <label>:167:                                    ; preds = %163
  %168 = load i64, i64* %12, align 8, !dbg !1527, !tbaa !117
  br label %176, !dbg !1528

; <label>:169:                                    ; preds = %163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #8, !dbg !1529
  %170 = load i64, i64* %12, align 8, !dbg !1530, !tbaa !117
  %171 = call i32 @string2ll(i8* nonnull %165, i64 %170, i64* nonnull %13) #7, !dbg !1532
  %172 = icmp eq i32 %171, 0, !dbg !1534
  br i1 %172, label %173, label %174, !dbg !1534

; <label>:173:                                    ; preds = %169
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1534
  call void @_exit(i32 1) #9, !dbg !1534
  unreachable, !dbg !1534

; <label>:174:                                    ; preds = %169
  %175 = load i64, i64* %13, align 8, !dbg !1535, !tbaa !265
  store i64 %175, i64* %12, align 8, !dbg !1536, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #8, !dbg !1537
  br label %176

; <label>:176:                                    ; preds = %167, %174
  %177 = phi i64 [ %168, %167 ], [ %175, %174 ], !dbg !1538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #8, !dbg !1537
  %178 = icmp eq i64 %177, 0, !dbg !1540
  br i1 %178, label %181, label %179, !dbg !1542

; <label>:179:                                    ; preds = %176
  %180 = load i8*, i8** %22, align 8, !dbg !1543, !tbaa !1389
  br label %183, !dbg !1544

; <label>:181:                                    ; preds = %176
  store <2 x i8*> zeroinitializer, <2 x i8*>* %60, align 8, !dbg !1545, !tbaa !234
  br label %182

; <label>:182:                                    ; preds = %158, %181
  br label %61, !dbg !1384, !llvm.loop !1516

; <label>:183:                                    ; preds = %179, %183
  %184 = phi i8* [ %188, %183 ], [ %180, %179 ], !dbg !1543
  %185 = phi i64 [ %186, %183 ], [ %177, %179 ]
  %186 = add nsw i64 %185, -1, !dbg !1544
  %187 = load i8*, i8** %20, align 8, !dbg !1547, !tbaa !1385
  %188 = call i8* @lpPrev(i8* %187, i8* %184) #7, !dbg !1548
  store i8* %188, i8** %22, align 8, !dbg !1549, !tbaa !1389
  %189 = icmp eq i64 %186, 0, !dbg !1550
  br i1 %189, label %190, label %183, !dbg !1550, !llvm.loop !1551

; <label>:190:                                    ; preds = %183, %158
  %191 = phi i8* [ %161, %158 ], [ %188, %183 ]
  %192 = ptrtoint i8* %191 to i64, !dbg !1553
  store i64 %192, i64* %24, align 8, !dbg !1554, !tbaa !1555
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #8, !dbg !1558
  %193 = call i8* @lpGet(i8* %191, i64* nonnull %10, i8* null) #7, !dbg !1560
  %194 = icmp eq i8* %193, null, !dbg !1562
  br i1 %194, label %195, label %197, !dbg !1563

; <label>:195:                                    ; preds = %190
  %196 = load i64, i64* %10, align 8, !dbg !1564, !tbaa !117
  br label %204, !dbg !1565

; <label>:197:                                    ; preds = %190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #8, !dbg !1566
  %198 = load i64, i64* %10, align 8, !dbg !1567, !tbaa !117
  %199 = call i32 @string2ll(i8* nonnull %193, i64 %198, i64* nonnull %11) #7, !dbg !1569
  %200 = icmp eq i32 %199, 0, !dbg !1571
  br i1 %200, label %201, label %202, !dbg !1571

; <label>:201:                                    ; preds = %197
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1571
  call void @_exit(i32 1) #9, !dbg !1571
  unreachable, !dbg !1571

; <label>:202:                                    ; preds = %197
  %203 = load i64, i64* %11, align 8, !dbg !1572, !tbaa !265
  store i64 %203, i64* %10, align 8, !dbg !1573, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #8, !dbg !1574
  br label %204

; <label>:204:                                    ; preds = %195, %202
  %205 = phi i64 [ %196, %195 ], [ %203, %202 ], !dbg !1575
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #8, !dbg !1574
  %206 = trunc i64 %205 to i32, !dbg !1576
  %207 = load i8*, i8** %20, align 8, !dbg !1578, !tbaa !1385
  %208 = load i8*, i8** %22, align 8, !dbg !1579, !tbaa !1389
  %209 = call i8* @lpNext(i8* %207, i8* %208) #7, !dbg !1580
  store i8* %209, i8** %22, align 8, !dbg !1581, !tbaa !1389
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* nonnull align 8 %29, i64 16, i1 false), !dbg !1582, !tbaa.struct !1583
  %210 = load i8*, i8** %22, align 8, !dbg !1584, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #8, !dbg !1587
  %211 = call i8* @lpGet(i8* %210, i64* nonnull %8, i8* null) #7, !dbg !1589
  %212 = icmp eq i8* %211, null, !dbg !1591
  br i1 %212, label %213, label %215, !dbg !1592

; <label>:213:                                    ; preds = %204
  %214 = load i64, i64* %8, align 8, !dbg !1593, !tbaa !117
  br label %222, !dbg !1594

; <label>:215:                                    ; preds = %204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #8, !dbg !1595
  %216 = load i64, i64* %8, align 8, !dbg !1596, !tbaa !117
  %217 = call i32 @string2ll(i8* nonnull %211, i64 %216, i64* nonnull %9) #7, !dbg !1598
  %218 = icmp eq i32 %217, 0, !dbg !1600
  br i1 %218, label %219, label %220, !dbg !1600

; <label>:219:                                    ; preds = %215
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1600
  call void @_exit(i32 1) #9, !dbg !1600
  unreachable, !dbg !1600

; <label>:220:                                    ; preds = %215
  %221 = load i64, i64* %9, align 8, !dbg !1601, !tbaa !265
  store i64 %221, i64* %8, align 8, !dbg !1602, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #8, !dbg !1603
  br label %222

; <label>:222:                                    ; preds = %213, %220
  %223 = phi i64 [ %214, %213 ], [ %221, %220 ], !dbg !1604
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #8, !dbg !1603
  %224 = load i64, i64* %33, align 8, !dbg !1605, !tbaa !178
  %225 = add i64 %224, %223, !dbg !1605
  store i64 %225, i64* %33, align 8, !dbg !1605, !tbaa !178
  %226 = load i8*, i8** %20, align 8, !dbg !1606, !tbaa !1385
  %227 = load i8*, i8** %22, align 8, !dbg !1607, !tbaa !1389
  %228 = call i8* @lpNext(i8* %226, i8* %227) #7, !dbg !1608
  store i8* %228, i8** %22, align 8, !dbg !1609, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #8, !dbg !1612
  %229 = call i8* @lpGet(i8* %228, i64* nonnull %6, i8* null) #7, !dbg !1614
  %230 = icmp eq i8* %229, null, !dbg !1616
  br i1 %230, label %231, label %233, !dbg !1617

; <label>:231:                                    ; preds = %222
  %232 = load i64, i64* %6, align 8, !dbg !1618, !tbaa !117
  br label %240, !dbg !1619

; <label>:233:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #8, !dbg !1620
  %234 = load i64, i64* %6, align 8, !dbg !1621, !tbaa !117
  %235 = call i32 @string2ll(i8* nonnull %229, i64 %234, i64* nonnull %7) #7, !dbg !1623
  %236 = icmp eq i32 %235, 0, !dbg !1625
  br i1 %236, label %237, label %238, !dbg !1625

; <label>:237:                                    ; preds = %233
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1625
  call void @_exit(i32 1) #9, !dbg !1625
  unreachable, !dbg !1625

; <label>:238:                                    ; preds = %233
  %239 = load i64, i64* %7, align 8, !dbg !1626, !tbaa !265
  store i64 %239, i64* %6, align 8, !dbg !1627, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #8, !dbg !1628
  br label %240

; <label>:240:                                    ; preds = %231, %238
  %241 = phi i64 [ %232, %231 ], [ %239, %238 ], !dbg !1629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #8, !dbg !1628
  %242 = load i64, i64* %36, align 8, !dbg !1630, !tbaa !188
  %243 = add i64 %242, %241, !dbg !1630
  store i64 %243, i64* %36, align 8, !dbg !1630, !tbaa !188
  %244 = load i8*, i8** %20, align 8, !dbg !1631, !tbaa !1385
  %245 = load i8*, i8** %22, align 8, !dbg !1632, !tbaa !1389
  %246 = call i8* @lpNext(i8* %244, i8* %245) #7, !dbg !1633
  store i8* %246, i8** %22, align 8, !dbg !1634, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #8, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #8, !dbg !1639
  %247 = load i64, i64* %33, align 8, !dbg !1640, !tbaa !178
  %248 = call i64 @intrev64(i64 %247) #7, !dbg !1640
  store i64 %248, i64* %39, align 16, !dbg !1641, !tbaa !117
  %249 = load i64, i64* %36, align 8, !dbg !1642, !tbaa !188
  %250 = call i64 @intrev64(i64 %249) #7, !dbg !1642
  store i64 %250, i64* %40, align 8, !dbg !1643, !tbaa !117
  %251 = call i8* @memcpy(i8* nonnull %37, i8* nonnull %38, i64 16) #7, !dbg !1644
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #8, !dbg !1645
  %252 = and i32 %206, 2, !dbg !1646
  %253 = icmp ne i32 %252, 0, !dbg !1646
  br i1 %253, label %254, label %256, !dbg !1648

; <label>:254:                                    ; preds = %240
  %255 = load i64, i64* %42, align 8, !dbg !1649, !tbaa !1449
  store i64 %255, i64* %2, align 8, !dbg !1651, !tbaa !117
  br label %274, !dbg !1652

; <label>:256:                                    ; preds = %240
  %257 = load i8*, i8** %22, align 8, !dbg !1653, !tbaa !1389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1657
  %258 = call i8* @lpGet(i8* %257, i64* nonnull %4, i8* null) #7, !dbg !1659
  %259 = icmp eq i8* %258, null, !dbg !1661
  br i1 %259, label %260, label %262, !dbg !1662

; <label>:260:                                    ; preds = %256
  %261 = load i64, i64* %4, align 8, !dbg !1663, !tbaa !117
  br label %269, !dbg !1664

; <label>:262:                                    ; preds = %256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #8, !dbg !1665
  %263 = load i64, i64* %4, align 8, !dbg !1666, !tbaa !117
  %264 = call i32 @string2ll(i8* nonnull %258, i64 %263, i64* nonnull %5) #7, !dbg !1668
  %265 = icmp eq i32 %264, 0, !dbg !1670
  br i1 %265, label %266, label %267, !dbg !1670

; <label>:266:                                    ; preds = %262
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1670
  call void @_exit(i32 1) #9, !dbg !1670
  unreachable, !dbg !1670

; <label>:267:                                    ; preds = %262
  %268 = load i64, i64* %5, align 8, !dbg !1671, !tbaa !265
  store i64 %268, i64* %4, align 8, !dbg !1672, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #8, !dbg !1673
  br label %269

; <label>:269:                                    ; preds = %260, %267
  %270 = phi i64 [ %261, %260 ], [ %268, %267 ], !dbg !1674
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #8, !dbg !1673
  store i64 %270, i64* %2, align 8, !dbg !1675, !tbaa !117
  %271 = load i8*, i8** %20, align 8, !dbg !1676, !tbaa !1385
  %272 = load i8*, i8** %22, align 8, !dbg !1677, !tbaa !1389
  %273 = call i8* @lpNext(i8* %271, i8* %272) #7, !dbg !1678
  store i8* %273, i8** %22, align 8, !dbg !1679, !tbaa !1389
  br label %274

; <label>:274:                                    ; preds = %269, %254
  %275 = load i32, i32* %21, align 4, !dbg !1680, !tbaa !1340
  %276 = icmp eq i32 %275, 0, !dbg !1682
  br i1 %276, label %277, label %294, !dbg !1683

; <label>:277:                                    ; preds = %274
  %278 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #7, !dbg !1684
  %279 = icmp sgt i32 %278, -1, !dbg !1687
  %280 = and i32 %206, 1, !dbg !1688
  %281 = icmp eq i32 %280, 0, !dbg !1688
  %282 = and i1 %281, %279, !dbg !1689
  br i1 %282, label %283, label %311, !dbg !1689

; <label>:283:                                    ; preds = %277
  %284 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #7, !dbg !1690
  %285 = icmp sgt i32 %284, 0, !dbg !1693
  br i1 %285, label %339, label %286, !dbg !1694

; <label>:286:                                    ; preds = %283
  %287 = trunc i64 %205 to i32, !dbg !1576
  %288 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1695
  store i32 %287, i32* %288, align 8, !dbg !1696, !tbaa !1697
  br i1 %253, label %289, label %339, !dbg !1698

; <label>:289:                                    ; preds = %286
  %290 = bitcast i8** %57 to i64*, !dbg !1699
  %291 = load i64, i64* %290, align 8, !dbg !1699, !tbaa !1455
  %292 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1701
  %293 = bitcast i8** %292 to i64*, !dbg !1702
  store i64 %291, i64* %293, align 8, !dbg !1702, !tbaa !1703
  br label %339, !dbg !1704

; <label>:294:                                    ; preds = %274
  %295 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #7, !dbg !1705
  %296 = icmp slt i32 %295, 1, !dbg !1708
  %297 = and i32 %206, 1, !dbg !1709
  %298 = icmp eq i32 %297, 0, !dbg !1709
  %299 = and i1 %298, %296, !dbg !1710
  br i1 %299, label %300, label %311, !dbg !1710

; <label>:300:                                    ; preds = %294
  %301 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #7, !dbg !1711
  %302 = icmp slt i32 %301, 0, !dbg !1714
  br i1 %302, label %339, label %303, !dbg !1715

; <label>:303:                                    ; preds = %300
  %304 = trunc i64 %205 to i32, !dbg !1576
  %305 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1716
  store i32 %304, i32* %305, align 8, !dbg !1717, !tbaa !1697
  br i1 %253, label %306, label %339, !dbg !1718

; <label>:306:                                    ; preds = %303
  %307 = bitcast i8** %57 to i64*, !dbg !1719
  %308 = load i64, i64* %307, align 8, !dbg !1719, !tbaa !1455
  %309 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1721
  %310 = bitcast i8** %309 to i64*, !dbg !1722
  store i64 %308, i64* %310, align 8, !dbg !1722, !tbaa !1703
  br label %339, !dbg !1723

; <label>:311:                                    ; preds = %294, %277
  %312 = load i32, i32* %21, align 4, !dbg !1724, !tbaa !1340
  %313 = icmp eq i32 %312, 0, !dbg !1725
  br i1 %313, label %314, label %329, !dbg !1726

; <label>:314:                                    ; preds = %311
  %315 = load i64, i64* %2, align 8, !dbg !1727, !tbaa !117
  %316 = xor i1 %253, true, !dbg !1728
  %317 = zext i1 %316 to i64, !dbg !1728
  %318 = shl nsw i64 %315, %317, !dbg !1728
  %319 = icmp sgt i64 %318, 0, !dbg !1731
  br i1 %319, label %320, label %341, !dbg !1733

; <label>:320:                                    ; preds = %314
  %321 = load i8*, i8** %22, align 8, !dbg !1734, !tbaa !1389
  br label %322, !dbg !1735

; <label>:322:                                    ; preds = %322, %320
  %323 = phi i8* [ %326, %322 ], [ %321, %320 ], !dbg !1734
  %324 = phi i64 [ %327, %322 ], [ 0, %320 ]
  %325 = load i8*, i8** %20, align 8, !dbg !1735, !tbaa !1385
  %326 = call i8* @lpNext(i8* %325, i8* %323) #7, !dbg !1736
  store i8* %326, i8** %22, align 8, !dbg !1737, !tbaa !1389
  %327 = add nuw nsw i64 %324, 1, !dbg !1738
  %328 = icmp eq i64 %327, %318, !dbg !1731
  br i1 %328, label %341, label %322, !dbg !1733, !llvm.loop !1739

; <label>:329:                                    ; preds = %311
  %330 = select i1 %253, i64 4, i64 5, !dbg !1742
  %331 = load i8*, i8** %22, align 8, !dbg !1743, !tbaa !1389
  br label %332, !dbg !1744

; <label>:332:                                    ; preds = %329, %332
  %333 = phi i8* [ %331, %329 ], [ %337, %332 ], !dbg !1743
  %334 = phi i64 [ %330, %329 ], [ %335, %332 ]
  %335 = add nsw i64 %334, -1, !dbg !1745
  %336 = load i8*, i8** %20, align 8, !dbg !1746, !tbaa !1385
  %337 = call i8* @lpPrev(i8* %336, i8* %333) #7, !dbg !1747
  store i8* %337, i8** %22, align 8, !dbg !1748, !tbaa !1389
  %338 = icmp eq i64 %335, 0, !dbg !1744
  br i1 %338, label %341, label %332, !dbg !1744, !llvm.loop !1749

; <label>:339:                                    ; preds = %283, %289, %286, %300, %306, %303
  %340 = phi i32 [ 1, %303 ], [ 1, %306 ], [ 0, %300 ], [ 1, %286 ], [ 1, %289 ], [ 0, %283 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #8, !dbg !1751
  br label %342

; <label>:341:                                    ; preds = %332, %322, %314
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #8, !dbg !1751
  br label %155

; <label>:342:                                    ; preds = %76, %70, %339
  %343 = phi i32 [ %340, %339 ], [ 0, %70 ], [ 0, %76 ]
  ret i32 %343, !dbg !1752
}

; Function Attrs: noredzone
declare dso_local i32 @raxPrev(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpLast(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorGetField(%struct.streamIterator*, i8** nocapture, i8** nocapture, i64*, i64*) local_unnamed_addr #0 !dbg !1753 {
  %6 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1767
  %7 = load i32, i32* %6, align 8, !dbg !1767, !tbaa !1697
  %8 = and i32 %7, 2, !dbg !1769
  %9 = icmp eq i32 %8, 0, !dbg !1769
  br i1 %9, label %21, label %10, !dbg !1770

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1771
  %12 = load i8*, i8** %11, align 8, !dbg !1771, !tbaa !1703
  %13 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1773
  %14 = tail call i8* @lpGet(i8* %12, i64* %3, i8* nonnull %13) #7, !dbg !1774
  store i8* %14, i8** %1, align 8, !dbg !1775, !tbaa !234
  %15 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1776
  %16 = load i8*, i8** %15, align 8, !dbg !1776, !tbaa !1385
  %17 = load i8*, i8** %11, align 8, !dbg !1777, !tbaa !1703
  %18 = tail call i8* @lpNext(i8* %16, i8* %17) #7, !dbg !1778
  store i8* %18, i8** %11, align 8, !dbg !1779, !tbaa !1703
  %19 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11
  %20 = load i8*, i8** %19, align 8, !dbg !1780, !tbaa !1389
  br label %30, !dbg !1781

; <label>:21:                                     ; preds = %5
  %22 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11, !dbg !1782
  %23 = load i8*, i8** %22, align 8, !dbg !1782, !tbaa !1389
  %24 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1784
  %25 = tail call i8* @lpGet(i8* %23, i64* %3, i8* nonnull %24) #7, !dbg !1785
  store i8* %25, i8** %1, align 8, !dbg !1786, !tbaa !234
  %26 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1787
  %27 = load i8*, i8** %26, align 8, !dbg !1787, !tbaa !1385
  %28 = load i8*, i8** %22, align 8, !dbg !1788, !tbaa !1389
  %29 = tail call i8* @lpNext(i8* %27, i8* %28) #7, !dbg !1789
  store i8* %29, i8** %22, align 8, !dbg !1790, !tbaa !1389
  br label %30

; <label>:30:                                     ; preds = %21, %10
  %31 = phi i8** [ %26, %21 ], [ %15, %10 ], !dbg !1791
  %32 = phi i8** [ %22, %21 ], [ %19, %10 ], !dbg !1780
  %33 = phi i8* [ %29, %21 ], [ %20, %10 ], !dbg !1780
  %34 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 14, i64 0, !dbg !1792
  %35 = tail call i8* @lpGet(i8* %33, i64* %4, i8* nonnull %34) #7, !dbg !1793
  store i8* %35, i8** %2, align 8, !dbg !1794, !tbaa !234
  %36 = load i8*, i8** %31, align 8, !dbg !1791, !tbaa !1385
  %37 = load i8*, i8** %32, align 8, !dbg !1795, !tbaa !1389
  %38 = tail call i8* @lpNext(i8* %36, i8* %37) #7, !dbg !1796
  store i8* %38, i8** %32, align 8, !dbg !1797, !tbaa !1389
  ret void, !dbg !1798
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorRemoveEntry(%struct.streamIterator*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !1799 {
  %3 = alloca [2 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.streamID, align 8
  %13 = alloca %struct.streamID, align 8
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1828
  %15 = load i8*, i8** %14, align 8, !dbg !1828, !tbaa !1385
  %16 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 12, !dbg !1830
  %17 = load i8*, i8** %16, align 8, !dbg !1830, !tbaa !1555
  %18 = bitcast i64* %9 to i8*, !dbg !1833
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #8, !dbg !1833
  %19 = call i8* @lpGet(i8* %17, i64* nonnull %9, i8* null) #7, !dbg !1835
  %20 = icmp eq i8* %19, null, !dbg !1837
  br i1 %20, label %21, label %23, !dbg !1838

; <label>:21:                                     ; preds = %2
  %22 = load i64, i64* %9, align 8, !dbg !1839, !tbaa !117
  br label %31, !dbg !1840

; <label>:23:                                     ; preds = %2
  %24 = bitcast i64* %10 to i8*, !dbg !1841
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #8, !dbg !1841
  %25 = load i64, i64* %9, align 8, !dbg !1842, !tbaa !117
  %26 = call i32 @string2ll(i8* nonnull %19, i64 %25, i64* nonnull %10) #7, !dbg !1844
  %27 = icmp eq i32 %26, 0, !dbg !1846
  br i1 %27, label %28, label %29, !dbg !1846

; <label>:28:                                     ; preds = %23
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1846
  call void @_exit(i32 1) #9, !dbg !1846
  unreachable, !dbg !1846

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %10, align 8, !dbg !1847, !tbaa !265
  store i64 %30, i64* %9, align 8, !dbg !1848, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #8, !dbg !1849
  br label %31

; <label>:31:                                     ; preds = %21, %29
  %32 = phi i64 [ %22, %21 ], [ %30, %29 ], !dbg !1850
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #8, !dbg !1849
  %33 = shl i64 %32, 32, !dbg !1851
  %34 = ashr exact i64 %33, 32, !dbg !1851
  %35 = or i64 %34, 1, !dbg !1851
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1855
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1855
  %37 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %35) #7, !dbg !1856
  %38 = load i8*, i8** %16, align 8, !dbg !1858, !tbaa !234
  %39 = call i8* @lpInsert(i8* %15, i8* nonnull %36, i32 %37, i8* %38, i32 2, i8** nonnull %16) #7, !dbg !1859
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1860
  %40 = bitcast i8** %11 to i8*, !dbg !1861
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #8, !dbg !1861
  %41 = call i8* @lpFirst(i8* %39) #7, !dbg !1862
  store i8* %41, i8** %11, align 8, !dbg !1863, !tbaa !234
  %42 = bitcast i64* %6 to i8*, !dbg !1866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #8, !dbg !1866
  %43 = call i8* @lpGet(i8* %41, i64* nonnull %6, i8* null) #7, !dbg !1868
  %44 = icmp eq i8* %43, null, !dbg !1870
  br i1 %44, label %45, label %47, !dbg !1871

; <label>:45:                                     ; preds = %31
  %46 = load i64, i64* %6, align 8, !dbg !1872, !tbaa !117
  br label %55, !dbg !1873

; <label>:47:                                     ; preds = %31
  %48 = bitcast i64* %7 to i8*, !dbg !1874
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #8, !dbg !1874
  %49 = load i64, i64* %6, align 8, !dbg !1875, !tbaa !117
  %50 = call i32 @string2ll(i8* nonnull %43, i64 %49, i64* nonnull %7) #7, !dbg !1877
  %51 = icmp eq i32 %50, 0, !dbg !1879
  br i1 %51, label %52, label %53, !dbg !1879

; <label>:52:                                     ; preds = %47
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1879
  call void @_exit(i32 1) #9, !dbg !1879
  unreachable, !dbg !1879

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %7, align 8, !dbg !1880, !tbaa !265
  store i64 %54, i64* %6, align 8, !dbg !1881, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #8, !dbg !1882
  br label %55

; <label>:55:                                     ; preds = %45, %53
  %56 = phi i64 [ %46, %45 ], [ %54, %53 ], !dbg !1883
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #8, !dbg !1882
  %57 = icmp eq i64 %56, 1, !dbg !1885
  br i1 %57, label %58, label %68, !dbg !1886

; <label>:58:                                     ; preds = %55
  call void @lpFree(i8* %39) #7, !dbg !1887
  %59 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1889
  %60 = load %struct.stream*, %struct.stream** %59, align 8, !dbg !1889, !tbaa !1334
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i64 0, i32 0, !dbg !1890
  %62 = load %struct.rax*, %struct.rax** %61, align 8, !dbg !1890, !tbaa !108
  %63 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !1891
  %64 = load i8*, i8** %63, align 8, !dbg !1891, !tbaa !1407
  %65 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !1892
  %66 = load i64, i64* %65, align 8, !dbg !1892, !tbaa !1405
  %67 = call i32 @raxRemove(%struct.rax* %62, i8* %64, i64 %66, i8** null) #7, !dbg !1893
  br label %106, !dbg !1894

; <label>:68:                                     ; preds = %55
  %69 = add nsw i64 %56, -1, !dbg !1895
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1899
  %70 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %69) #7, !dbg !1900
  %71 = load i8*, i8** %11, align 8, !dbg !1902, !tbaa !234
  %72 = call i8* @lpInsert(i8* %39, i8* nonnull %36, i32 %70, i8* %71, i32 2, i8** nonnull %11) #7, !dbg !1903
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1904
  %73 = load i8*, i8** %11, align 8, !dbg !1905, !tbaa !234
  %74 = call i8* @lpNext(i8* %72, i8* %73) #7, !dbg !1906
  store i8* %74, i8** %11, align 8, !dbg !1907, !tbaa !234
  %75 = bitcast i64* %4 to i8*, !dbg !1910
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #8, !dbg !1910
  %76 = call i8* @lpGet(i8* %74, i64* nonnull %4, i8* null) #7, !dbg !1912
  %77 = icmp eq i8* %76, null, !dbg !1914
  br i1 %77, label %78, label %80, !dbg !1915

; <label>:78:                                     ; preds = %68
  %79 = load i64, i64* %4, align 8, !dbg !1916, !tbaa !117
  br label %88, !dbg !1917

; <label>:80:                                     ; preds = %68
  %81 = bitcast i64* %5 to i8*, !dbg !1918
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %81) #8, !dbg !1918
  %82 = load i64, i64* %4, align 8, !dbg !1919, !tbaa !117
  %83 = call i32 @string2ll(i8* nonnull %76, i64 %82, i64* nonnull %5) #7, !dbg !1921
  %84 = icmp eq i32 %83, 0, !dbg !1923
  br i1 %84, label %85, label %86, !dbg !1923

; <label>:85:                                     ; preds = %80
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #7, !dbg !1923
  call void @_exit(i32 1) #9, !dbg !1923
  unreachable, !dbg !1923

; <label>:86:                                     ; preds = %80
  %87 = load i64, i64* %5, align 8, !dbg !1924, !tbaa !265
  store i64 %87, i64* %4, align 8, !dbg !1925, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %81) #8, !dbg !1926
  br label %88

; <label>:88:                                     ; preds = %78, %86
  %89 = phi i64 [ %79, %78 ], [ %87, %86 ], !dbg !1927
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #8, !dbg !1926
  %90 = add nsw i64 %89, 1, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1932
  %91 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %90) #7, !dbg !1933
  %92 = load i8*, i8** %11, align 8, !dbg !1935, !tbaa !234
  %93 = call i8* @lpInsert(i8* %72, i8* nonnull %36, i32 %91, i8* %92, i32 2, i8** nonnull %11) #7, !dbg !1936
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #8, !dbg !1937
  %94 = load i8*, i8** %14, align 8, !dbg !1938, !tbaa !1385
  %95 = icmp eq i8* %94, %93, !dbg !1940
  %96 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1941
  br i1 %95, label %106, label %97, !dbg !1942

; <label>:97:                                     ; preds = %88
  %98 = load %struct.stream*, %struct.stream** %96, align 8, !dbg !1943, !tbaa !1334
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i64 0, i32 0, !dbg !1944
  %100 = load %struct.rax*, %struct.rax** %99, align 8, !dbg !1944, !tbaa !108
  %101 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !1945
  %102 = load i8*, i8** %101, align 8, !dbg !1945, !tbaa !1407
  %103 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !1946
  %104 = load i64, i64* %103, align 8, !dbg !1946, !tbaa !1405
  %105 = call i32 @raxInsert(%struct.rax* %100, i8* %102, i64 %104, i8* %93, i8** null) #7, !dbg !1947
  br label %106, !dbg !1947

; <label>:106:                                    ; preds = %88, %97, %58
  %107 = phi %struct.stream** [ %96, %97 ], [ %59, %58 ], [ %96, %88 ], !dbg !1948
  %108 = load %struct.stream*, %struct.stream** %107, align 8, !dbg !1948, !tbaa !1334
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i64 0, i32 1, !dbg !1949
  %110 = load i64, i64* %109, align 8, !dbg !1950, !tbaa !935
  %111 = add i64 %110, -1, !dbg !1950
  store i64 %111, i64* %109, align 8, !dbg !1950, !tbaa !935
  %112 = bitcast %struct.streamID* %12 to i8*, !dbg !1951
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %112) #8, !dbg !1951
  %113 = bitcast %struct.streamID* %13 to i8*, !dbg !1951
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %113) #8, !dbg !1951
  %114 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !1952
  %115 = load i32, i32* %114, align 4, !dbg !1952, !tbaa !1340
  %116 = icmp eq i32 %115, 0, !dbg !1953
  br i1 %116, label %131, label %117, !dbg !1954

; <label>:117:                                    ; preds = %106
  %118 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, i64 0, !dbg !1955
  %119 = bitcast i64* %118 to i8*, !dbg !1955
  %120 = bitcast [2 x i64]* %3 to i8*, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %120) #8, !dbg !1959
  %121 = call i8* @memcpy(i8* nonnull %120, i8* nonnull %119, i64 16) #7, !dbg !1960
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !1961
  %123 = load i64, i64* %122, align 16, !dbg !1961, !tbaa !117
  %124 = call i64 @intrev64(i64 %123) #7, !dbg !1961
  %125 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 0, !dbg !1962
  store i64 %124, i64* %125, align 8, !dbg !1963, !tbaa !178
  %126 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !1964
  %127 = load i64, i64* %126, align 8, !dbg !1964, !tbaa !117
  %128 = call i64 @intrev64(i64 %127) #7, !dbg !1964
  %129 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 1, !dbg !1965
  store i64 %128, i64* %129, align 8, !dbg !1966, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %120) #8, !dbg !1967
  %130 = bitcast %struct.streamID* %1 to i8*, !dbg !1968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %113, i8* align 8 %130, i64 16, i1 false), !dbg !1968, !tbaa.struct !1583
  br label %145, !dbg !1969

; <label>:131:                                    ; preds = %106
  %132 = bitcast %struct.streamID* %1 to i8*, !dbg !1970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %112, i8* align 8 %132, i64 16, i1 false), !dbg !1970, !tbaa.struct !1583
  %133 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, i64 0, !dbg !1971
  %134 = bitcast i64* %133 to i8*, !dbg !1971
  %135 = bitcast [2 x i64]* %3 to i8*, !dbg !1975
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %135) #8, !dbg !1975
  %136 = call i8* @memcpy(i8* nonnull %135, i8* nonnull %134, i64 16) #7, !dbg !1976
  %137 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !1977
  %138 = load i64, i64* %137, align 16, !dbg !1977, !tbaa !117
  %139 = call i64 @intrev64(i64 %138) #7, !dbg !1977
  %140 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 0, !dbg !1978
  store i64 %139, i64* %140, align 8, !dbg !1979, !tbaa !178
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !1980
  %142 = load i64, i64* %141, align 8, !dbg !1980, !tbaa !117
  %143 = call i64 @intrev64(i64 %142) #7, !dbg !1980
  %144 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 1, !dbg !1981
  store i64 %143, i64* %144, align 8, !dbg !1982, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %135) #8, !dbg !1983
  br label %145

; <label>:145:                                    ; preds = %131, %117
  %146 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !1991
  call void @raxStop(%struct.raxIterator* nonnull %146) #7, !dbg !1992
  %147 = load %struct.stream*, %struct.stream** %107, align 8, !dbg !1993, !tbaa !1334
  %148 = load i32, i32* %114, align 4, !dbg !1994, !tbaa !1340
  call void @streamIteratorStart(%struct.streamIterator* nonnull %0, %struct.stream* %147, %struct.streamID* nonnull %12, %struct.streamID* nonnull %13, i32 %148) #10, !dbg !1995
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %113) #8, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %112) #8, !dbg !1996
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #8, !dbg !1996
  ret void, !dbg !1996
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStop(%struct.streamIterator*) local_unnamed_addr #0 !dbg !1985 {
  %2 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !1998
  tail call void @raxStop(%struct.raxIterator* nonnull %2) #7, !dbg !1999
  ret void, !dbg !2000
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamDeleteItem(%struct.stream*, %struct.streamID* readonly) local_unnamed_addr #0 !dbg !2001 {
  %3 = alloca %struct.streamIterator, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamIterator* %3 to i8*, !dbg !2014
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %6) #8, !dbg !2014
  call void @streamIteratorStart(%struct.streamIterator* nonnull %3, %struct.stream* %0, %struct.streamID* %1, %struct.streamID* %1, i32 0) #10, !dbg !2016
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2017
  %8 = bitcast i64* %5 to i8*, !dbg !2018
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2018
  %9 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4, i64* nonnull %5) #10, !dbg !2021
  %10 = icmp eq i32 %9, 0, !dbg !2021
  br i1 %10, label %12, label %11, !dbg !2023

; <label>:11:                                     ; preds = %2
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4) #10, !dbg !2024
  br label %12, !dbg !2026

; <label>:12:                                     ; preds = %2, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %2 ], !dbg !2027
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %3, i64 0, i32 9, !dbg !2030
  call void @raxStop(%struct.raxIterator* nonnull %14) #7, !dbg !2031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !2032
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2032
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %6) #8, !dbg !2032
  ret i32 %13, !dbg !2033
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStreamID(%struct.client*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2034 {
  %3 = tail call i8* @sdsempty() #7, !dbg !2261
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !2262
  %5 = load i64, i64* %4, align 8, !dbg !2262, !tbaa !178
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !2263
  %7 = load i64, i64* %6, align 8, !dbg !2263, !tbaa !188
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %5, i64 %7) #7, !dbg !2264
  tail call void @addReplyBulkSds(%struct.client* %0, i8* %8) #7, !dbg !2266
  ret void, !dbg !2267
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createObjectFromStreamID(%struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2268 {
  %2 = tail call i8* @sdsempty() #7, !dbg !2274
  %3 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 0, !dbg !2275
  %4 = load i64, i64* %3, align 8, !dbg !2275, !tbaa !178
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !2276
  %6 = load i64, i64* %5, align 8, !dbg !2276, !tbaa !188
  %7 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %4, i64 %6) #7, !dbg !2277
  %8 = tail call %struct.redisObject* @createObject(i32 0, i8* %7) #7, !dbg !2278
  ret %struct.redisObject* %8, !dbg !2279
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamPropagateXCLAIM(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*, %struct.redisObject*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !2280 {
  %7 = alloca [14 x %struct.redisObject*], align 16
  %8 = bitcast [14 x %struct.redisObject*]* %7 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %8) #8, !dbg !2314
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 6) #7, !dbg !2316
  %10 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2317
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !2318, !tbaa !234
  %11 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2319
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !2320, !tbaa !234
  %12 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2321
  store %struct.redisObject* %3, %struct.redisObject** %12, align 16, !dbg !2322, !tbaa !234
  %13 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 2, !dbg !2323
  %14 = load %struct.streamConsumer*, %struct.streamConsumer** %13, align 8, !dbg !2323, !tbaa !2324
  %15 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %14, i64 0, i32 1, !dbg !2326
  %16 = load i8*, i8** %15, align 8, !dbg !2326, !tbaa !2327
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !2331
  %18 = load i8, i8* %17, align 1, !dbg !2331, !tbaa !656
  %19 = trunc i8 %18 to i3, !dbg !2333
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !2333

; <label>:20:                                     ; preds = %6
  %21 = lshr i8 %18, 3, !dbg !2334
  %22 = zext i8 %21 to i64, !dbg !2334
  br label %41, !dbg !2335

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !2336
  %25 = load i8, i8* %24, align 1, !dbg !2337, !tbaa !656
  %26 = zext i8 %25 to i64, !dbg !2336
  br label %41, !dbg !2338

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !2339
  %29 = bitcast i8* %28 to i16*, !dbg !2340
  %30 = load i16, i16* %29, align 1, !dbg !2340, !tbaa !667
  %31 = zext i16 %30 to i64, !dbg !2339
  br label %41, !dbg !2341

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !2342
  %34 = bitcast i8* %33 to i32*, !dbg !2343
  %35 = load i32, i32* %34, align 1, !dbg !2343, !tbaa !672
  %36 = zext i32 %35 to i64, !dbg !2342
  br label %41, !dbg !2344

; <label>:37:                                     ; preds = %6
  %38 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !2345
  %39 = bitcast i8* %38 to i64*, !dbg !2346
  %40 = load i64, i64* %39, align 1, !dbg !2346, !tbaa !117
  br label %41, !dbg !2347

; <label>:41:                                     ; preds = %6, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %6 ], !dbg !2348
  %43 = tail call %struct.redisObject* @createStringObject(i8* %16, i64 %42) #7, !dbg !2349
  %44 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 3, !dbg !2350
  store %struct.redisObject* %43, %struct.redisObject** %44, align 8, !dbg !2351, !tbaa !234
  %45 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 0) #7, !dbg !2352
  %46 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 4, !dbg !2353
  store %struct.redisObject* %45, %struct.redisObject** %46, align 16, !dbg !2354, !tbaa !234
  %47 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 5, !dbg !2355
  store %struct.redisObject* %4, %struct.redisObject** %47, align 8, !dbg !2356, !tbaa !234
  %48 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4) #7, !dbg !2357
  %49 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 6, !dbg !2358
  store %struct.redisObject* %48, %struct.redisObject** %49, align 16, !dbg !2359, !tbaa !234
  %50 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 0, !dbg !2360
  %51 = load i64, i64* %50, align 8, !dbg !2360, !tbaa !2361
  %52 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %51) #7, !dbg !2362
  %53 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 7, !dbg !2363
  store %struct.redisObject* %52, %struct.redisObject** %53, align 8, !dbg !2364, !tbaa !234
  %54 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 10) #7, !dbg !2365
  %55 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 8, !dbg !2366
  store %struct.redisObject* %54, %struct.redisObject** %55, align 16, !dbg !2367, !tbaa !234
  %56 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 1, !dbg !2368
  %57 = load i64, i64* %56, align 8, !dbg !2368, !tbaa !2369
  %58 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %57) #7, !dbg !2370
  %59 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 9, !dbg !2371
  store %struct.redisObject* %58, %struct.redisObject** %59, align 8, !dbg !2372, !tbaa !234
  %60 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 5) #7, !dbg !2373
  %61 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 10, !dbg !2374
  store %struct.redisObject* %60, %struct.redisObject** %61, align 16, !dbg !2375, !tbaa !234
  %62 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #7, !dbg !2376
  %63 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 11, !dbg !2377
  store %struct.redisObject* %62, %struct.redisObject** %63, align 8, !dbg !2378, !tbaa !234
  %64 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6) #7, !dbg !2379
  %65 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 12, !dbg !2380
  store %struct.redisObject* %64, %struct.redisObject** %65, align 16, !dbg !2381, !tbaa !234
  %66 = tail call i8* @sdsempty() #7, !dbg !2384
  %67 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2385
  %68 = load i64, i64* %67, align 8, !dbg !2385, !tbaa !178
  %69 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2386
  %70 = load i64, i64* %69, align 8, !dbg !2386, !tbaa !188
  %71 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %68, i64 %70) #7, !dbg !2387
  %72 = tail call %struct.redisObject* @createObject(i32 0, i8* %71) #7, !dbg !2388
  %73 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 13, !dbg !2389
  store %struct.redisObject* %72, %struct.redisObject** %73, align 8, !dbg !2390, !tbaa !234
  %74 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 67), align 8, !dbg !2391, !tbaa !2392
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2393
  %76 = load %struct.redisDb*, %struct.redisDb** %75, align 8, !dbg !2393, !tbaa !2394
  %77 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %76, i64 0, i32 5, !dbg !2398
  %78 = load i32, i32* %77, align 8, !dbg !2398, !tbaa !2399
  call void @propagate(%struct.redisCommand* %74, i32 %78, %struct.redisObject** nonnull %10, i32 14, i32 3) #7, !dbg !2401
  %79 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !2402, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %79) #7, !dbg !2403
  %80 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !2404, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %80) #7, !dbg !2405
  %81 = load %struct.redisObject*, %struct.redisObject** %46, align 16, !dbg !2406, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %81) #7, !dbg !2407
  %82 = load %struct.redisObject*, %struct.redisObject** %49, align 16, !dbg !2408, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %82) #7, !dbg !2409
  %83 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !2410, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %83) #7, !dbg !2411
  %84 = load %struct.redisObject*, %struct.redisObject** %55, align 16, !dbg !2412, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %84) #7, !dbg !2413
  %85 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2414, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %85) #7, !dbg !2415
  %86 = load %struct.redisObject*, %struct.redisObject** %61, align 16, !dbg !2416, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %86) #7, !dbg !2417
  %87 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !2418, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %87) #7, !dbg !2419
  %88 = load %struct.redisObject*, %struct.redisObject** %65, align 16, !dbg !2420, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %88) #7, !dbg !2421
  %89 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !2422, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %89) #7, !dbg !2423
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %8) #8, !dbg !2424
  ret void, !dbg !2424
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamPropagateGroupID(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2425 {
  %5 = alloca [5 x %struct.redisObject*], align 16
  %6 = bitcast [5 x %struct.redisObject*]* %5 to i8*, !dbg !2441
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #8, !dbg !2441
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6) #7, !dbg !2443
  %8 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !2444
  store %struct.redisObject* %7, %struct.redisObject** %8, align 16, !dbg !2445, !tbaa !234
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !2446
  %10 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !2447
  store %struct.redisObject* %9, %struct.redisObject** %10, align 8, !dbg !2448, !tbaa !234
  %11 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !2449
  store %struct.redisObject* %1, %struct.redisObject** %11, align 16, !dbg !2450, !tbaa !234
  %12 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 3, !dbg !2451
  store %struct.redisObject* %3, %struct.redisObject** %12, align 8, !dbg !2452, !tbaa !234
  %13 = tail call i8* @sdsempty() #7, !dbg !2455
  %14 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2456
  %15 = load i64, i64* %14, align 8, !dbg !2456, !tbaa !178
  %16 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2457
  %17 = load i64, i64* %16, align 8, !dbg !2457, !tbaa !188
  %18 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %15, i64 %17) #7, !dbg !2458
  %19 = tail call %struct.redisObject* @createObject(i32 0, i8* %18) #7, !dbg !2459
  %20 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 4, !dbg !2460
  store %struct.redisObject* %19, %struct.redisObject** %20, align 16, !dbg !2461, !tbaa !234
  %21 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 68), align 8, !dbg !2462, !tbaa !2463
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2464
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2464, !tbaa !2394
  %24 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %23, i64 0, i32 5, !dbg !2465
  %25 = load i32, i32* %24, align 8, !dbg !2465, !tbaa !2399
  call void @propagate(%struct.redisCommand* %21, i32 %25, %struct.redisObject** nonnull %8, i32 5, i32 3) #7, !dbg !2466
  %26 = load %struct.redisObject*, %struct.redisObject** %8, align 16, !dbg !2467, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %26) #7, !dbg !2468
  %27 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2469, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %27) #7, !dbg !2470
  %28 = load %struct.redisObject*, %struct.redisObject** %20, align 16, !dbg !2471, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %28) #7, !dbg !2472
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #8, !dbg !2473
  ret void, !dbg !2473
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRange(%struct.client*, %struct.stream*, %struct.streamID* readonly, %struct.streamID*, i64, i32, %struct.streamCG*, %struct.streamConsumer*, i32, %struct.sreamPropInfo* readonly) local_unnamed_addr #0 !dbg !2474 {
  %11 = alloca [2 x i64], align 16
  %12 = alloca %struct.streamIterator, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.streamID, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [16 x i8], align 16
  %20 = bitcast %struct.streamIterator* %12 to i8*, !dbg !2529
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %20) #8, !dbg !2529
  %21 = bitcast i64* %13 to i8*, !dbg !2530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !2530
  %22 = bitcast %struct.streamID* %14 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2531
  %23 = icmp ne %struct.streamCG* %6, null, !dbg !2533
  %24 = xor i1 %23, true, !dbg !2535
  %25 = and i32 %8, 4, !dbg !2536
  %26 = icmp eq i32 %25, 0, !dbg !2536
  %27 = or i1 %26, %24, !dbg !2535
  br i1 %27, label %30, label %28, !dbg !2535

; <label>:28:                                     ; preds = %10
  %29 = tail call i64 @streamReplyWithRangeFromConsumerPEL(%struct.client* %0, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i64 %4, %struct.streamConsumer* %7) #10, !dbg !2537
  br label %160, !dbg !2539

; <label>:30:                                     ; preds = %10
  %31 = and i32 %8, 2, !dbg !2540
  %32 = icmp eq i32 %31, 0, !dbg !2540
  br i1 %32, label %33, label %35, !dbg !2542

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #7, !dbg !2543
  br label %35, !dbg !2544

; <label>:35:                                     ; preds = %30, %33
  %36 = phi i8* [ null, %30 ], [ %34, %33 ], !dbg !2545
  call void @streamIteratorStart(%struct.streamIterator* nonnull %12, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i32 %5) #10, !dbg !2547
  %37 = getelementptr inbounds %struct.streamID, %struct.streamID* %14, i64 0, i32 0
  %38 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 0, i32 0
  %39 = getelementptr inbounds %struct.streamID, %struct.streamID* %14, i64 0, i32 1
  %40 = bitcast %struct.streamCG* %6 to i8*
  %41 = and i32 %8, 1
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %23, %42
  %44 = bitcast i8** %15 to i8*
  %45 = bitcast i8** %16 to i8*
  %46 = bitcast i64* %17 to i8*
  %47 = bitcast i64* %18 to i8*
  %48 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 0, i32 1
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %50 = bitcast [2 x i64]* %11 to i8*
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %53 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 1
  %54 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %7, i64 0, i32 2
  %55 = icmp ne i64 %4, 0
  %56 = icmp eq %struct.sreamPropInfo* %9, null
  %57 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %9, i64 0, i32 0
  %58 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %9, i64 0, i32 1
  br label %59, !dbg !2548

; <label>:59:                                     ; preds = %151, %35
  %60 = phi i32 [ 0, %35 ], [ %77, %151 ], !dbg !2549
  %61 = phi i64 [ 0, %35 ], [ %152, %151 ], !dbg !2552
  %62 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %12, %struct.streamID* nonnull %14, i64* nonnull %13) #10, !dbg !2555
  %63 = icmp eq i32 %62, 0, !dbg !2548
  br i1 %63, label %155, label %64, !dbg !2548

; <label>:64:                                     ; preds = %59
  %65 = load i64, i64* %37, align 8, !dbg !2552, !tbaa !178
  br i1 %23, label %66, label %76, !dbg !2556

; <label>:66:                                     ; preds = %64
  %67 = load i64, i64* %38, align 8, !dbg !2560, !tbaa !178
  %68 = icmp ugt i64 %65, %67, !dbg !2561
  br i1 %68, label %75, label %69, !dbg !2562

; <label>:69:                                     ; preds = %66
  %70 = icmp ult i64 %65, %67, !dbg !2563
  br i1 %70, label %76, label %71, !dbg !2564

; <label>:71:                                     ; preds = %69
  %72 = load i64, i64* %39, align 8, !dbg !2565, !tbaa !188
  %73 = load i64, i64* %48, align 8, !dbg !2566, !tbaa !188
  %74 = icmp ugt i64 %72, %73, !dbg !2567
  br i1 %74, label %75, label %76, !dbg !2568

; <label>:75:                                     ; preds = %66, %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %40, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2569, !tbaa.struct !1583
  br label %76, !dbg !2570

; <label>:76:                                     ; preds = %64, %71, %69, %75
  %77 = phi i32 [ 1, %75 ], [ %60, %69 ], [ %60, %71 ], [ %60, %64 ], !dbg !2571
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #7, !dbg !2572
  %78 = call i8* @sdsempty() #7, !dbg !2576
  %79 = load i64, i64* %39, align 8, !dbg !2577, !tbaa !188
  %80 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %65, i64 %79) #7, !dbg !2578
  call void @addReplyBulkSds(%struct.client* %0, i8* %80) #7, !dbg !2580
  %81 = load i64, i64* %13, align 8, !dbg !2581, !tbaa !117
  %82 = shl nsw i64 %81, 1, !dbg !2582
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %82) #7, !dbg !2583
  %83 = add nsw i64 %81, -1, !dbg !2584
  store i64 %83, i64* %13, align 8, !dbg !2584, !tbaa !117
  %84 = icmp eq i64 %81, 0, !dbg !2585
  br i1 %84, label %94, label %85, !dbg !2585

; <label>:85:                                     ; preds = %76, %85
  %86 = phi i64 [ %91, %85 ], [ %83, %76 ], !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #8, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #8, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #8, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #8, !dbg !2587
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %12, i8** nonnull %15, i8** nonnull %16, i64* nonnull %17, i64* nonnull %18) #10, !dbg !2592
  %87 = load i8*, i8** %15, align 8, !dbg !2593, !tbaa !234
  %88 = load i64, i64* %17, align 8, !dbg !2594, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %87, i64 %88) #7, !dbg !2595
  %89 = load i8*, i8** %16, align 8, !dbg !2596, !tbaa !234
  %90 = load i64, i64* %18, align 8, !dbg !2597, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %89, i64 %90) #7, !dbg !2598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #8, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #8, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #8, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #8, !dbg !2599
  %91 = add nsw i64 %86, -1, !dbg !2584
  %92 = icmp eq i64 %86, 0, !dbg !2585
  br i1 %92, label %93, label %85, !dbg !2585, !llvm.loop !2600

; <label>:93:                                     ; preds = %85
  store i64 -1, i64* %13, align 8, !dbg !2584, !tbaa !117
  br label %94, !dbg !2585

; <label>:94:                                     ; preds = %93, %76
  br i1 %43, label %95, label %146, !dbg !2601

; <label>:95:                                     ; preds = %94
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #8, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #8, !dbg !2606
  %96 = call i64 @intrev64(i64 %65) #7, !dbg !2607
  store i64 %96, i64* %51, align 16, !dbg !2608, !tbaa !117
  %97 = call i64 @intrev64(i64 %79) #7, !dbg !2609
  store i64 %97, i64* %52, align 8, !dbg !2610, !tbaa !117
  %98 = call i8* @memcpy(i8* nonnull %49, i8* nonnull %50, i64 16) #7, !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #8, !dbg !2612
  %99 = call i8* @zmalloc(i64 24) #7, !dbg !2621
  %100 = call i64 @mstime() #7, !dbg !2622
  %101 = bitcast i8* %99 to i64*, !dbg !2623
  store i64 %100, i64* %101, align 8, !dbg !2624, !tbaa !2361
  %102 = getelementptr inbounds i8, i8* %99, i64 8, !dbg !2625
  %103 = bitcast i8* %102 to i64*, !dbg !2625
  store i64 1, i64* %103, align 8, !dbg !2626, !tbaa !2369
  %104 = getelementptr inbounds i8, i8* %99, i64 16, !dbg !2627
  %105 = bitcast i8* %104 to %struct.streamConsumer**, !dbg !2627
  store %struct.streamConsumer* %7, %struct.streamConsumer** %105, align 8, !dbg !2628, !tbaa !2324
  %106 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !2629, !tbaa !155
  %107 = call i32 @raxTryInsert(%struct.rax* %106, i8* nonnull %49, i64 16, i8* %99, i8** null) #7, !dbg !2630
  %108 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !2632, !tbaa !2633
  %109 = call i32 @raxTryInsert(%struct.rax* %108, i8* nonnull %49, i64 16, i8* %99, i8** null) #7, !dbg !2634
  %110 = icmp eq i32 %107, 0, !dbg !2636
  br i1 %110, label %111, label %131, !dbg !2638

; <label>:111:                                    ; preds = %95
  call void @zfree(i8* %99) #7, !dbg !2647
  %112 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !2648, !tbaa !155
  %113 = call i8* @raxFind(%struct.rax* %112, i8* nonnull %49, i64 16) #7, !dbg !2649
  %114 = bitcast i8* %113 to %struct.streamNACK*, !dbg !2649
  %115 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !2651, !tbaa !234
  %116 = icmp eq %struct.streamNACK* %115, %114, !dbg !2651
  br i1 %116, label %117, label %118, !dbg !2651

; <label>:117:                                    ; preds = %111
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 969) #7, !dbg !2651
  call void @_exit(i32 1) #9, !dbg !2651
  unreachable, !dbg !2651

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds i8, i8* %113, i64 16, !dbg !2652
  %120 = bitcast i8* %119 to %struct.streamConsumer**, !dbg !2652
  %121 = load %struct.streamConsumer*, %struct.streamConsumer** %120, align 8, !dbg !2652, !tbaa !2324
  %122 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %121, i64 0, i32 2, !dbg !2653
  %123 = load %struct.rax*, %struct.rax** %122, align 8, !dbg !2653, !tbaa !2633
  %124 = call i32 @raxRemove(%struct.rax* %123, i8* nonnull %49, i64 16, i8** null) #7, !dbg !2654
  store %struct.streamConsumer* %7, %struct.streamConsumer** %120, align 8, !dbg !2655, !tbaa !2324
  %125 = call i64 @mstime() #7, !dbg !2656
  %126 = bitcast i8* %113 to i64*, !dbg !2657
  store i64 %125, i64* %126, align 8, !dbg !2658, !tbaa !2361
  %127 = getelementptr inbounds i8, i8* %113, i64 8, !dbg !2659
  %128 = bitcast i8* %127 to i64*, !dbg !2659
  store i64 1, i64* %128, align 8, !dbg !2660, !tbaa !2369
  %129 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !2661, !tbaa !2633
  %130 = call i32 @raxInsert(%struct.rax* %129, i8* nonnull %49, i64 16, i8* %113, i8** null) #7, !dbg !2662
  br label %137, !dbg !2663

; <label>:131:                                    ; preds = %95
  %132 = bitcast i8* %99 to %struct.streamNACK*, !dbg !2621
  %133 = icmp eq i32 %107, 1, !dbg !2665
  %134 = icmp eq i32 %109, 0, !dbg !2667
  %135 = and i1 %133, %134, !dbg !2668
  br i1 %135, label %136, label %137, !dbg !2668

; <label>:136:                                    ; preds = %131
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 978, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !2669
  call void @_exit(i32 1) #9, !dbg !2669
  unreachable, !dbg !2669

; <label>:137:                                    ; preds = %131, %118
  %138 = phi %struct.streamNACK* [ %114, %118 ], [ %132, %131 ], !dbg !2671
  br i1 %56, label %145, label %139, !dbg !2672

; <label>:139:                                    ; preds = %137
  %140 = call i8* @sdsempty() #7, !dbg !2675
  %141 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %65, i64 %79) #7, !dbg !2676
  %142 = call %struct.redisObject* @createObject(i32 0, i8* %141) #7, !dbg !2677
  %143 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2679, !tbaa !2680
  %144 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2682, !tbaa !2683
  call void @streamPropagateXCLAIM(%struct.client* %0, %struct.redisObject* %143, %struct.streamCG* nonnull %6, %struct.redisObject* %144, %struct.redisObject* %142, %struct.streamNACK* %138) #10, !dbg !2684
  call void @decrRefCount(%struct.redisObject* %142) #7, !dbg !2685
  br label %145, !dbg !2686

; <label>:145:                                    ; preds = %137, %139
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #8, !dbg !2687
  br label %151, !dbg !2688

; <label>:146:                                    ; preds = %94
  %147 = icmp eq i32 %77, 0, !dbg !2689
  br i1 %147, label %151, label %148, !dbg !2692

; <label>:148:                                    ; preds = %146
  %149 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2693, !tbaa !2680
  %150 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2694, !tbaa !2683
  call void @streamPropagateGroupID(%struct.client* %0, %struct.redisObject* %149, %struct.streamCG* %6, %struct.redisObject* %150) #10, !dbg !2695
  br label %151, !dbg !2695

; <label>:151:                                    ; preds = %146, %148, %145
  %152 = add i64 %61, 1, !dbg !2696
  %153 = icmp eq i64 %152, %4, !dbg !2697
  %154 = and i1 %55, %153, !dbg !2699
  br i1 %154, label %155, label %59, !dbg !2699, !llvm.loop !2700

; <label>:155:                                    ; preds = %151, %59
  %156 = phi i64 [ %61, %59 ], [ %4, %151 ], !dbg !2571
  %157 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %12, i64 0, i32 9, !dbg !2704
  call void @raxStop(%struct.raxIterator* nonnull %157) #7, !dbg !2705
  %158 = icmp eq i8* %36, null, !dbg !2706
  br i1 %158, label %160, label %159, !dbg !2708

; <label>:159:                                    ; preds = %155
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* nonnull %36, i64 %156) #7, !dbg !2709
  br label %160, !dbg !2709

; <label>:160:                                    ; preds = %159, %155, %28
  %161 = phi i64 [ %29, %28 ], [ %156, %155 ], [ %156, %159 ], !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %20) #8, !dbg !2710
  ret i64 %161, !dbg !2710
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRangeFromConsumerPEL(%struct.client*, %struct.stream*, %struct.streamID* nocapture readonly, %struct.streamID*, i64, %struct.streamConsumer* nocapture readonly) local_unnamed_addr #0 !dbg !2711 {
  %7 = alloca [2 x i64], align 16
  %8 = alloca %struct.raxIterator, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.streamID, align 8
  %12 = bitcast %struct.raxIterator* %8 to i8*, !dbg !2748
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %12) #8, !dbg !2748
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2749
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !2751
  %15 = bitcast [2 x i64]* %7 to i8*, !dbg !2755
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2755
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !2756
  %17 = load i64, i64* %16, align 8, !dbg !2756, !tbaa !178
  %18 = tail call i64 @intrev64(i64 %17) #7, !dbg !2756
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2757
  store i64 %18, i64* %19, align 16, !dbg !2758, !tbaa !117
  %20 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !2759
  %21 = load i64, i64* %20, align 8, !dbg !2759, !tbaa !188
  %22 = tail call i64 @intrev64(i64 %21) #7, !dbg !2759
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2760
  store i64 %22, i64* %23, align 8, !dbg !2761, !tbaa !117
  %24 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %15, i64 16) #7, !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2763
  %25 = icmp ne %struct.streamID* %3, null, !dbg !2764
  br i1 %25, label %26, label %34, !dbg !2765

; <label>:26:                                     ; preds = %6
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2768
  %27 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !2769
  %28 = load i64, i64* %27, align 8, !dbg !2769, !tbaa !178
  %29 = call i64 @intrev64(i64 %28) #7, !dbg !2769
  store i64 %29, i64* %19, align 16, !dbg !2770, !tbaa !117
  %30 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !2771
  %31 = load i64, i64* %30, align 8, !dbg !2771, !tbaa !188
  %32 = call i64 @intrev64(i64 %31) #7, !dbg !2771
  store i64 %32, i64* %23, align 8, !dbg !2772, !tbaa !117
  %33 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %15, i64 16) #7, !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2774
  br label %34, !dbg !2775

; <label>:34:                                     ; preds = %26, %6
  %35 = call i8* @addDeferredMultiBulkLength(%struct.client* %0) #7, !dbg !2777
  %36 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %5, i64 0, i32 2, !dbg !2779
  %37 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !2779, !tbaa !2633
  call void @raxStart(%struct.raxIterator* nonnull %8, %struct.rax* %37) #7, !dbg !2781
  %38 = call i32 @raxSeek(%struct.raxIterator* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %13, i64 16) #7, !dbg !2782
  %39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 2, !dbg !2783
  %40 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #7, !dbg !2785
  %41 = icmp eq i32 %40, 0, !dbg !2785
  %42 = add i64 %4, -1, !dbg !2786
  br i1 %41, label %90, label %43, !dbg !2787

; <label>:43:                                     ; preds = %34
  %44 = bitcast %struct.streamID* %3 to i8*
  %45 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 4
  %46 = bitcast %struct.streamID* %11 to i8*
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 0
  %48 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 1
  %49 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 3
  %50 = bitcast i8** %49 to %struct.streamNACK**
  br label %51, !dbg !2787

; <label>:51:                                     ; preds = %43, %84
  %52 = phi i64 [ 0, %43 ], [ %85, %84 ]
  br i1 %25, label %53, label %58, !dbg !2788

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %39, align 8, !dbg !2783, !tbaa !686
  %55 = load i64, i64* %45, align 8, !dbg !2789, !tbaa !684
  %56 = call i32 @memcmp(i8* %54, i8* %44, i64 %55) #7, !dbg !2790
  %57 = icmp sgt i32 %56, 0, !dbg !2791
  br i1 %57, label %90, label %58, !dbg !2792

; <label>:58:                                     ; preds = %53, %51
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #8, !dbg !2793
  %59 = load i8*, i8** %39, align 8, !dbg !2794, !tbaa !686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2798
  %60 = call i8* @memcpy(i8* nonnull %15, i8* %59, i64 16) #7, !dbg !2799
  %61 = load i64, i64* %19, align 16, !dbg !2800, !tbaa !117
  %62 = call i64 @intrev64(i64 %61) #7, !dbg !2800
  store i64 %62, i64* %47, align 8, !dbg !2801, !tbaa !178
  %63 = load i64, i64* %23, align 8, !dbg !2802, !tbaa !117
  %64 = call i64 @intrev64(i64 %63) #7, !dbg !2802
  store i64 %64, i64* %48, align 8, !dbg !2803, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2804
  %65 = call i64 @streamReplyWithRange(%struct.client* %0, %struct.stream* %1, %struct.streamID* nonnull %11, %struct.streamID* nonnull %11, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #10, !dbg !2805
  %66 = icmp eq i64 %65, 0, !dbg !2806
  br i1 %66, label %67, label %77, !dbg !2807

; <label>:67:                                     ; preds = %58
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #7, !dbg !2808
  %68 = load i8*, i8** %39, align 8, !dbg !2809, !tbaa !686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2813
  %69 = call i8* @memcpy(i8* nonnull %15, i8* %68, i64 16) #7, !dbg !2814
  %70 = load i64, i64* %19, align 16, !dbg !2815, !tbaa !117
  %71 = call i64 @intrev64(i64 %70) #7, !dbg !2815
  %72 = load i64, i64* %23, align 8, !dbg !2816, !tbaa !117
  %73 = call i64 @intrev64(i64 %72) #7, !dbg !2816
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2817
  %74 = call i8* @sdsempty() #7, !dbg !2821
  %75 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %71, i64 %73) #7, !dbg !2822
  call void @addReplyBulkSds(%struct.client* %0, i8* %75) #7, !dbg !2824
  %76 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2825, !tbaa !2826
  call void @addReply(%struct.client* %0, %struct.redisObject* %76) #7, !dbg !2828
  br label %84, !dbg !2829

; <label>:77:                                     ; preds = %58
  %78 = load %struct.streamNACK*, %struct.streamNACK** %50, align 8, !dbg !2830, !tbaa !516
  %79 = call i64 @mstime() #7, !dbg !2832
  %80 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %78, i64 0, i32 0, !dbg !2833
  store i64 %79, i64* %80, align 8, !dbg !2834, !tbaa !2361
  %81 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %78, i64 0, i32 1, !dbg !2835
  %82 = load i64, i64* %81, align 8, !dbg !2836, !tbaa !2369
  %83 = add i64 %82, 1, !dbg !2836
  store i64 %83, i64* %81, align 8, !dbg !2836, !tbaa !2369
  br label %84

; <label>:84:                                     ; preds = %77, %67
  %85 = add i64 %52, 1, !dbg !2837
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #8, !dbg !2838
  %86 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #7, !dbg !2785
  %87 = icmp eq i32 %86, 0, !dbg !2785
  %88 = icmp ult i64 %42, %85, !dbg !2786
  %89 = or i1 %88, %87, !dbg !2787
  br i1 %89, label %90, label %51, !dbg !2787, !llvm.loop !2839

; <label>:90:                                     ; preds = %53, %84, %34
  %91 = phi i64 [ 0, %34 ], [ %85, %84 ], [ %52, %53 ], !dbg !2841
  call void @raxStop(%struct.raxIterator* nonnull %8) #7, !dbg !2842
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %91) #7, !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %12) #8, !dbg !2844
  ret i64 %91, !dbg !2845
}

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamNACK* @streamCreateNACK(%struct.streamConsumer*) local_unnamed_addr #0 !dbg !2614 {
  %2 = tail call i8* @zmalloc(i64 24) #7, !dbg !2847
  %3 = bitcast i8* %2 to %struct.streamNACK*, !dbg !2847
  %4 = tail call i64 @mstime() #7, !dbg !2849
  %5 = bitcast i8* %2 to i64*, !dbg !2850
  store i64 %4, i64* %5, align 8, !dbg !2851, !tbaa !2361
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2852
  %7 = bitcast i8* %6 to i64*, !dbg !2852
  store i64 1, i64* %7, align 8, !dbg !2853, !tbaa !2369
  %8 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2854
  %9 = bitcast i8* %8 to %struct.streamConsumer**, !dbg !2854
  store %struct.streamConsumer* %0, %struct.streamConsumer** %9, align 8, !dbg !2855, !tbaa !2324
  ret %struct.streamNACK* %3, !dbg !2856
}

; Function Attrs: noredzone
declare dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeNACK(%struct.streamNACK*) #0 !dbg !2640 {
  %2 = bitcast %struct.streamNACK* %0 to i8*, !dbg !2858
  tail call void @zfree(i8* %2) #7, !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: noredzone
declare dso_local i8* @raxFind(%struct.rax*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @streamTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2861 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2870
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2870, !tbaa !2394
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #7, !dbg !2871
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !2873
  br i1 %6, label %7, label %10, !dbg !2875

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createStreamObject() #7, !dbg !2876
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2878, !tbaa !2394
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #7, !dbg !2879
  br label %17, !dbg !2880

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !2881
  %12 = load i32, i32* %11, align 8, !dbg !2881
  %13 = and i32 %12, 15, !dbg !2881
  %14 = icmp eq i32 %13, 6, !dbg !2884
  br i1 %14, label %17, label %15, !dbg !2885

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2886, !tbaa !2888
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #7, !dbg !2889
  br label %17, !dbg !2890

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !2891
  ret %struct.redisObject* %18, !dbg !2892
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStreamObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ull(i8*, i64* nocapture) local_unnamed_addr #0 !dbg !2893 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2906
  %6 = tail call i64 @strlen(i8* %0) #7, !dbg !2907
  %7 = call i32 @string2ll(i8* %0, i64 %6, i64* nonnull %3) #7, !dbg !2910
  %8 = icmp eq i32 %7, 0, !dbg !2910
  br i1 %8, label %13, label %9, !dbg !2911

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %3, align 8, !dbg !2912, !tbaa !265
  %11 = icmp slt i64 %10, 0, !dbg !2915
  br i1 %11, label %34, label %12, !dbg !2916

; <label>:12:                                     ; preds = %9
  store i64 %10, i64* %1, align 8, !dbg !2917, !tbaa !265
  br label %34, !dbg !2918

; <label>:13:                                     ; preds = %2
  %14 = call i32* @__errno() #7, !dbg !2919
  store i32 0, i32* %14, align 4, !dbg !2920, !tbaa !672
  %15 = bitcast i8** %4 to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2921
  store i8* null, i8** %4, align 8, !dbg !2922, !tbaa !234
  %16 = call i64 @strtoull(i8* %0, i8** nonnull %4, i32 10) #7, !dbg !2923
  store i64 %16, i64* %1, align 8, !dbg !2924, !tbaa !265
  %17 = call i32* @__errno() #7, !dbg !2925
  %18 = load i32, i32* %17, align 4, !dbg !2925, !tbaa !672
  %19 = icmp eq i32 %18, 22, !dbg !2927
  br i1 %19, label %32, label %20, !dbg !2928

; <label>:20:                                     ; preds = %13
  %21 = call i32* @__errno() #7, !dbg !2929
  %22 = load i32, i32* %21, align 4, !dbg !2929, !tbaa !672
  %23 = icmp eq i32 %22, 34, !dbg !2930
  br i1 %23, label %32, label %24, !dbg !2931

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %0, align 1, !dbg !2932, !tbaa !656
  %26 = icmp eq i8 %25, 0, !dbg !2933
  br i1 %26, label %32, label %27, !dbg !2934

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %4, align 8, !dbg !2935, !tbaa !234
  %29 = load i8, i8* %28, align 1, !dbg !2936, !tbaa !656
  %30 = icmp eq i8 %29, 0, !dbg !2937
  %31 = zext i1 %30 to i32, !dbg !2938
  br label %32, !dbg !2938

; <label>:32:                                     ; preds = %27, %13, %20, %24
  %33 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %13 ], [ %31, %27 ], !dbg !2939
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2940
  br label %34

; <label>:34:                                     ; preds = %9, %32, %12
  %35 = phi i32 [ 1, %12 ], [ %33, %32 ], [ 0, %9 ], !dbg !2941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !2940
  ret i32 %35, !dbg !2940
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoull(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamGenericParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64, i32) local_unnamed_addr #0 !dbg !2942 {
  %6 = alloca [128 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #8, !dbg !2961
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2963
  %11 = load i8*, i8** %10, align 8, !dbg !2963, !tbaa !641
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !2967
  %13 = load i8, i8* %12, align 1, !dbg !2967, !tbaa !656
  %14 = trunc i8 %13 to i3, !dbg !2969
  switch i3 %14, label %58 [
    i3 -4, label %29
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 0, label %37
  ], !dbg !2969

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !2970
  %17 = load i8, i8* %16, align 1, !dbg !2971, !tbaa !656
  %18 = zext i8 %17 to i64, !dbg !2970
  br label %33, !dbg !2972

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !2973
  %21 = bitcast i8* %20 to i16*, !dbg !2974
  %22 = load i16, i16* %21, align 1, !dbg !2974, !tbaa !667
  %23 = zext i16 %22 to i64, !dbg !2973
  br label %33, !dbg !2975

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !2976
  %26 = bitcast i8* %25 to i32*, !dbg !2977
  %27 = load i32, i32* %26, align 1, !dbg !2977, !tbaa !672
  %28 = zext i32 %27 to i64, !dbg !2976
  br label %33, !dbg !2978

; <label>:29:                                     ; preds = %5
  %30 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !2979
  %31 = bitcast i8* %30 to i64*, !dbg !2980
  %32 = load i64, i64* %31, align 1, !dbg !2980, !tbaa !117
  br label %33, !dbg !2981

; <label>:33:                                     ; preds = %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], !dbg !2982
  %35 = icmp ugt i64 %34, 127, !dbg !2983
  br i1 %35, label %102, label %36, !dbg !2984

; <label>:36:                                     ; preds = %33
  switch i3 %14, label %58 [
    i3 -4, label %54
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
  ], !dbg !2988

; <label>:37:                                     ; preds = %5
  %38 = lshr i8 %13, 3, !dbg !2989
  %39 = zext i8 %38 to i64, !dbg !2989
  br label %58, !dbg !2990

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !2991
  %42 = load i8, i8* %41, align 1, !dbg !2992, !tbaa !656
  %43 = zext i8 %42 to i64, !dbg !2991
  br label %58, !dbg !2993

; <label>:44:                                     ; preds = %36
  %45 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !2994
  %46 = bitcast i8* %45 to i16*, !dbg !2995
  %47 = load i16, i16* %46, align 1, !dbg !2995, !tbaa !667
  %48 = zext i16 %47 to i64, !dbg !2994
  br label %58, !dbg !2996

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !2997
  %51 = bitcast i8* %50 to i32*, !dbg !2998
  %52 = load i32, i32* %51, align 1, !dbg !2998, !tbaa !672
  %53 = zext i32 %52 to i64, !dbg !2997
  br label %58, !dbg !2999

; <label>:54:                                     ; preds = %36
  %55 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3000
  %56 = bitcast i8* %55 to i64*, !dbg !3001
  %57 = load i64, i64* %56, align 1, !dbg !3001, !tbaa !117
  br label %58, !dbg !3002

; <label>:58:                                     ; preds = %5, %36, %37, %40, %44, %49, %54
  %59 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], [ 0, %36 ], [ 0, %5 ], !dbg !3003
  %60 = add i64 %59, 1, !dbg !3004
  %61 = call i8* @memcpy(i8* nonnull %9, i8* %11, i64 %60) #7, !dbg !3005
  %62 = icmp eq i32 %4, 0, !dbg !3006
  %63 = load i8, i8* %9, align 16, !dbg !3008, !tbaa !656
  br i1 %62, label %69, label %64, !dbg !3009

; <label>:64:                                     ; preds = %58
  switch i8 %63, label %82 [
    i8 45, label %65
    i8 43, label %65
  ], !dbg !3010

; <label>:65:                                     ; preds = %64, %64
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3011
  %67 = load i8, i8* %66, align 1, !dbg !3011, !tbaa !656
  %68 = icmp eq i8 %67, 0, !dbg !3012
  br i1 %68, label %102, label %69, !dbg !3013

; <label>:69:                                     ; preds = %58, %65
  switch i8 %63, label %82 [
    i8 45, label %70
    i8 43, label %76
  ], !dbg !3014

; <label>:70:                                     ; preds = %69
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3016
  %72 = load i8, i8* %71, align 1, !dbg !3016, !tbaa !656
  %73 = icmp eq i8 %72, 0, !dbg !3017
  br i1 %73, label %74, label %82, !dbg !3018

; <label>:74:                                     ; preds = %70
  %75 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3019
  store <2 x i64> zeroinitializer, <2 x i64>* %75, align 8, !dbg !3019, !tbaa !117
  br label %105, !dbg !3021

; <label>:76:                                     ; preds = %69
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3022
  %78 = load i8, i8* %77, align 1, !dbg !3022, !tbaa !656
  %79 = icmp eq i8 %78, 0, !dbg !3024
  br i1 %79, label %80, label %82, !dbg !3025

; <label>:80:                                     ; preds = %76
  %81 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3026
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %81, align 8, !dbg !3026, !tbaa !117
  br label %105, !dbg !3028

; <label>:82:                                     ; preds = %64, %69, %70, %76
  %83 = call i8* @strchr(i8* nonnull %9, i32 45) #7, !dbg !3029
  %84 = icmp ne i8* %83, null, !dbg !3031
  br i1 %84, label %85, label %86, !dbg !3033

; <label>:85:                                     ; preds = %82
  store i8 0, i8* %83, align 1, !dbg !3034, !tbaa !656
  br label %86, !dbg !3035

; <label>:86:                                     ; preds = %85, %82
  %87 = call i32 @string2ull(i8* nonnull %9, i64* nonnull %7) #10, !dbg !3037
  %88 = icmp eq i32 %87, 0, !dbg !3039
  br i1 %88, label %102, label %89, !dbg !3040

; <label>:89:                                     ; preds = %86
  br i1 %84, label %90, label %96, !dbg !3041

; <label>:90:                                     ; preds = %89
  %91 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !3043
  %92 = call i32 @string2ull(i8* nonnull %91, i64* nonnull %8) #10, !dbg !3045
  %93 = icmp eq i32 %92, 0, !dbg !3046
  br i1 %93, label %102, label %94, !dbg !3047

; <label>:94:                                     ; preds = %90
  %95 = load i64, i64* %8, align 8, !dbg !3048, !tbaa !265
  br label %97, !dbg !3047

; <label>:96:                                     ; preds = %89
  store i64 %3, i64* %8, align 8, !dbg !3049, !tbaa !265
  br label %97, !dbg !3051

; <label>:97:                                     ; preds = %94, %96
  %98 = phi i64 [ %95, %94 ], [ %3, %96 ], !dbg !3048
  %99 = load i64, i64* %7, align 8, !dbg !3052, !tbaa !265
  %100 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3053
  store i64 %99, i64* %100, align 8, !dbg !3054, !tbaa !178
  %101 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3055
  store i64 %98, i64* %101, align 8, !dbg !3056, !tbaa !188
  br label %105, !dbg !3057

; <label>:102:                                    ; preds = %90, %86, %65, %33
  %103 = icmp eq %struct.client* %0, null, !dbg !3058
  br i1 %103, label %105, label %104, !dbg !3060

; <label>:104:                                    ; preds = %102
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !3061
  br label %105, !dbg !3061

; <label>:105:                                    ; preds = %104, %102, %97, %80, %74
  %106 = phi i32 [ 0, %74 ], [ 0, %80 ], [ 0, %97 ], [ -1, %102 ], [ -1, %104 ], !dbg !3062
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3063
  ret i32 %106, !dbg !3063
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3064 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 0) #10, !dbg !3076
  ret i32 %5, !dbg !3077
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseStrictIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3078 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 1) #10, !dbg !3088
  ret i32 %5, !dbg !3089
}

; Function Attrs: noredzone nounwind
define dso_local void @streamRewriteApproxMaxlen(%struct.client*, %struct.stream* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3090 {
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 1, !dbg !3102
  %5 = load i64, i64* %4, align 8, !dbg !3102, !tbaa !935
  %6 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %5) #7, !dbg !3103
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #7, !dbg !3105
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %2, %struct.redisObject* %6) #7, !dbg !3107
  %8 = add nsw i32 %2, -1, !dbg !3108
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %8, %struct.redisObject* %7) #7, !dbg !3109
  tail call void @decrRefCount(%struct.redisObject* %7) #7, !dbg !3110
  tail call void @decrRefCount(%struct.redisObject* %6) #7, !dbg !3111
  ret void, !dbg !3112
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xaddCommand(%struct.client*) local_unnamed_addr #0 !dbg !3113 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.streamID* %2 to i8*, !dbg !3136
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3136
  %5 = bitcast i64* %3 to i8*, !dbg !3138
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3138
  store i64 -1, i64* %3, align 8, !dbg !3139, !tbaa !265
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3143
  %7 = load i32, i32* %6, align 8, !dbg !3143, !tbaa !3144
  %8 = icmp sgt i32 %7, 2, !dbg !3145
  br i1 %8, label %9, label %86, !dbg !3146

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !3146

; <label>:11:                                     ; preds = %9, %78
  %12 = phi i32 [ %7, %9 ], [ %84, %78 ]
  %13 = phi i32 [ 0, %9 ], [ %79, %78 ]
  %14 = phi i32 [ 0, %9 ], [ %80, %78 ]
  %15 = phi i32 [ 0, %9 ], [ %81, %78 ]
  %16 = phi i32 [ 2, %9 ], [ %83, %78 ]
  %17 = xor i32 %16, -1, !dbg !3147
  %18 = add i32 %12, %17, !dbg !3147
  %19 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3149, !tbaa !3150
  %20 = sext i32 %16 to i64, !dbg !3151
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %20, !dbg !3151
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !3151, !tbaa !234
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !3152
  %24 = load i8*, i8** %23, align 8, !dbg !3152, !tbaa !641
  %25 = load i8, i8* %24, align 1, !dbg !3154, !tbaa !656
  %26 = icmp eq i8 %25, 42, !dbg !3155
  br i1 %26, label %27, label %31, !dbg !3156

; <label>:27:                                     ; preds = %11
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !3157
  %29 = load i8, i8* %28, align 1, !dbg !3157, !tbaa !656
  %30 = icmp eq i8 %29, 0, !dbg !3158
  br i1 %30, label %86, label %31, !dbg !3159

; <label>:31:                                     ; preds = %27, %11
  %32 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !3160
  %33 = icmp eq i32 %32, 0, !dbg !3160
  %34 = icmp ne i32 %18, 0, !dbg !3161
  %35 = and i1 %34, %33, !dbg !3162
  br i1 %35, label %36, label %70, !dbg !3162

; <label>:36:                                     ; preds = %31
  %37 = add nsw i32 %16, 1, !dbg !3163
  %38 = sext i32 %37 to i64, !dbg !3164
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %38, !dbg !3164
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !3164, !tbaa !234
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !3165
  %42 = load i8*, i8** %41, align 8, !dbg !3165, !tbaa !641
  %43 = icmp sgt i32 %18, 1, !dbg !3167
  br i1 %43, label %44, label %57, !dbg !3169

; <label>:44:                                     ; preds = %36
  %45 = load i8, i8* %42, align 1, !dbg !3170, !tbaa !656
  switch i8 %45, label %57 [
    i8 126, label %46
    i8 61, label %52
  ], !dbg !3171

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3172
  %48 = load i8, i8* %47, align 1, !dbg !3172, !tbaa !656
  %49 = icmp eq i8 %48, 0, !dbg !3173
  %50 = select i1 %49, i32 %37, i32 %16, !dbg !3174
  %51 = zext i1 %49 to i32, !dbg !3174
  br label %57, !dbg !3174

; <label>:52:                                     ; preds = %44
  %53 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3175
  %54 = load i8, i8* %53, align 1, !dbg !3175, !tbaa !656
  %55 = icmp eq i8 %54, 0, !dbg !3177
  %56 = select i1 %55, i32 %37, i32 %16, !dbg !3178
  br label %57, !dbg !3178

; <label>:57:                                     ; preds = %46, %44, %52, %36
  %58 = phi i32 [ %56, %52 ], [ %16, %36 ], [ %50, %46 ], [ %16, %44 ], !dbg !3179
  %59 = phi i32 [ 0, %52 ], [ 0, %36 ], [ %51, %46 ], [ 0, %44 ], !dbg !3180
  %60 = add nsw i32 %58, 1, !dbg !3181
  %61 = sext i32 %60 to i64, !dbg !3183
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %61, !dbg !3183
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !3183, !tbaa !234
  %64 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %63, i64* nonnull %3, i8* null) #7, !dbg !3184
  %65 = icmp eq i32 %64, 0, !dbg !3185
  br i1 %65, label %66, label %188, !dbg !3186

; <label>:66:                                     ; preds = %57
  %67 = load i64, i64* %3, align 8, !dbg !3187, !tbaa !265
  %68 = icmp slt i64 %67, 0, !dbg !3189
  br i1 %68, label %69, label %78, !dbg !3190

; <label>:69:                                     ; preds = %66
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !3191
  br label %188, !dbg !3193

; <label>:70:                                     ; preds = %31
  %71 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, %struct.streamID* nonnull %2, i64 0, i32 1) #7, !dbg !3202
  %72 = icmp eq i32 %71, 0, !dbg !3203
  %73 = select i1 %72, i32 2, i32 1, !dbg !3204
  %74 = select i1 %72, i32 1, i32 %13, !dbg !3204
  %75 = trunc i32 %73 to i2
  switch i2 %75, label %188 [
    i2 0, label %78
    i2 -2, label %76
  ]

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %6, align 8, !dbg !3205, !tbaa !3144
  br label %86

; <label>:78:                                     ; preds = %66, %70
  %79 = phi i32 [ %74, %70 ], [ %13, %66 ]
  %80 = phi i32 [ %14, %70 ], [ %59, %66 ]
  %81 = phi i32 [ %15, %70 ], [ %60, %66 ]
  %82 = phi i32 [ %16, %70 ], [ %60, %66 ]
  %83 = add nsw i32 %82, 1, !dbg !3207
  %84 = load i32, i32* %6, align 8, !dbg !3143, !tbaa !3144
  %85 = icmp slt i32 %83, %84, !dbg !3145
  br i1 %85, label %11, label %86, !dbg !3146, !llvm.loop !3208

; <label>:86:                                     ; preds = %78, %27, %76, %1
  %87 = phi i32 [ %7, %1 ], [ %77, %76 ], [ %12, %27 ], [ %84, %78 ], !dbg !3205
  %88 = phi i32 [ 2, %1 ], [ %16, %76 ], [ %16, %27 ], [ %83, %78 ], !dbg !3142
  %89 = phi i32 [ 0, %1 ], [ %15, %76 ], [ %15, %27 ], [ %81, %78 ], !dbg !3141
  %90 = phi i32 [ 0, %1 ], [ %14, %76 ], [ %14, %27 ], [ %80, %78 ], !dbg !3140
  %91 = phi i32 [ 0, %1 ], [ %74, %76 ], [ %13, %27 ], [ %79, %78 ], !dbg !3137
  %92 = add nsw i32 %88, 1, !dbg !3210
  %93 = sub nsw i32 %87, %92, !dbg !3212
  %94 = icmp slt i32 %93, 2, !dbg !3213
  %95 = srem i32 %93, 2, !dbg !3214
  %96 = icmp eq i32 %95, 1, !dbg !3215
  %97 = or i1 %94, %96, !dbg !3216
  br i1 %97, label %98, label %99, !dbg !3216

; <label>:98:                                     ; preds = %86
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !3217
  br label %188, !dbg !3219

; <label>:99:                                     ; preds = %86
  %100 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3220
  %101 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3220, !tbaa !3150
  %102 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %101, i64 1, !dbg !3222
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !3222, !tbaa !234
  %104 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3226
  %105 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3226, !tbaa !2394
  %106 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %105, %struct.redisObject* %103) #7, !dbg !3227
  %107 = icmp eq %struct.redisObject* %106, null, !dbg !3229
  br i1 %107, label %115, label %108, !dbg !3230

; <label>:108:                                    ; preds = %99
  %109 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %106, i64 0, i32 0, !dbg !3231
  %110 = load i32, i32* %109, align 8, !dbg !3231
  %111 = and i32 %110, 15, !dbg !3231
  %112 = icmp eq i32 %111, 6, !dbg !3232
  br i1 %112, label %119, label %113, !dbg !3233

; <label>:113:                                    ; preds = %108
  %114 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !3234, !tbaa !2888
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %114) #7, !dbg !3235
  br label %188, !dbg !3237

; <label>:115:                                    ; preds = %99
  %116 = call %struct.redisObject* @createStreamObject() #7, !dbg !3238
  %117 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3239, !tbaa !2394
  call void @dbAdd(%struct.redisDb* %117, %struct.redisObject* %103, %struct.redisObject* %116) #7, !dbg !3240
  %118 = icmp eq %struct.redisObject* %116, null, !dbg !3241
  br i1 %118, label %188, label %119, !dbg !3237

; <label>:119:                                    ; preds = %108, %115
  %120 = phi %struct.redisObject* [ %116, %115 ], [ %106, %108 ]
  %121 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %120, i64 0, i32 2, !dbg !3242
  %122 = bitcast i8** %121 to %struct.stream**, !dbg !3242
  %123 = load %struct.stream*, %struct.stream** %122, align 8, !dbg !3242, !tbaa !641
  %124 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3244, !tbaa !3150
  %125 = sext i32 %92 to i64, !dbg !3246
  %126 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %124, i64 %125, !dbg !3246
  %127 = load i32, i32* %6, align 8, !dbg !3247, !tbaa !3144
  %128 = sub nsw i32 %127, %92, !dbg !3248
  %129 = sdiv i32 %128, 2, !dbg !3249
  %130 = sext i32 %129 to i64, !dbg !3250
  %131 = icmp eq i32 %91, 0, !dbg !3251
  %132 = select i1 %131, %struct.streamID* null, %struct.streamID* %2, !dbg !3251
  %133 = call i32 @streamAppendItem(%struct.stream* %123, %struct.redisObject** %126, i64 %130, %struct.streamID* nonnull %2, %struct.streamID* %132) #10, !dbg !3252
  %134 = icmp eq i32 %133, -1, !dbg !3253
  br i1 %134, label %135, label %136, !dbg !3254

; <label>:135:                                    ; preds = %119
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !3255
  br label %188, !dbg !3257

; <label>:136:                                    ; preds = %119
  %137 = call i8* @sdsempty() #7, !dbg !3261
  %138 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3262
  %139 = load i64, i64* %138, align 8, !dbg !3262, !tbaa !178
  %140 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3263
  %141 = load i64, i64* %140, align 8, !dbg !3263, !tbaa !188
  %142 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %139, i64 %141) #7, !dbg !3264
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %142) #7, !dbg !3266
  %143 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3267, !tbaa !2394
  %144 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3268, !tbaa !3150
  %145 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %144, i64 1, !dbg !3269
  %146 = load %struct.redisObject*, %struct.redisObject** %145, align 8, !dbg !3269, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %143, %struct.redisObject* %146) #7, !dbg !3270
  %147 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3271, !tbaa !3150
  %148 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %147, i64 1, !dbg !3272
  %149 = load %struct.redisObject*, %struct.redisObject** %148, align 8, !dbg !3272, !tbaa !234
  %150 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3273, !tbaa !2394
  %151 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %150, i64 0, i32 5, !dbg !3274
  %152 = load i32, i32* %151, align 8, !dbg !3274, !tbaa !2399
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %149, i32 %152) #7, !dbg !3275
  %153 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3276, !tbaa !3277
  %154 = add nsw i64 %153, 1, !dbg !3276
  store i64 %154, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3276, !tbaa !3277
  %155 = load i64, i64* %3, align 8, !dbg !3278, !tbaa !265
  %156 = icmp sgt i64 %155, -1, !dbg !3280
  br i1 %156, label %157, label %175, !dbg !3281

; <label>:157:                                    ; preds = %136
  %158 = call i64 @streamTrimByLength(%struct.stream* %123, i64 %155, i32 %90) #10, !dbg !3282
  %159 = icmp eq i64 %158, 0, !dbg !3282
  br i1 %159, label %167, label %160, !dbg !3285

; <label>:160:                                    ; preds = %157
  %161 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3286, !tbaa !3150
  %162 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %161, i64 1, !dbg !3288
  %163 = load %struct.redisObject*, %struct.redisObject** %162, align 8, !dbg !3288, !tbaa !234
  %164 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3289, !tbaa !2394
  %165 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %164, i64 0, i32 5, !dbg !3290
  %166 = load i32, i32* %165, align 8, !dbg !3290, !tbaa !2399
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %163, i32 %166) #7, !dbg !3291
  br label %167, !dbg !3292

; <label>:167:                                    ; preds = %157, %160
  %168 = icmp eq i32 %90, 0, !dbg !3293
  br i1 %168, label %175, label %169, !dbg !3295

; <label>:169:                                    ; preds = %167
  %170 = getelementptr inbounds %struct.stream, %struct.stream* %123, i64 0, i32 1, !dbg !3300
  %171 = load i64, i64* %170, align 8, !dbg !3300, !tbaa !935
  %172 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %171) #7, !dbg !3301
  %173 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #7, !dbg !3303
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %89, %struct.redisObject* %172) #7, !dbg !3305
  %174 = add nsw i32 %89, -1, !dbg !3306
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %174, %struct.redisObject* %173) #7, !dbg !3307
  call void @decrRefCount(%struct.redisObject* %173) #7, !dbg !3308
  call void @decrRefCount(%struct.redisObject* %172) #7, !dbg !3309
  br label %175, !dbg !3310

; <label>:175:                                    ; preds = %167, %169, %136
  %176 = call i8* @sdsempty() #7, !dbg !3313
  %177 = load i64, i64* %138, align 8, !dbg !3314, !tbaa !178
  %178 = load i64, i64* %140, align 8, !dbg !3315, !tbaa !188
  %179 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %177, i64 %178) #7, !dbg !3316
  %180 = call %struct.redisObject* @createObject(i32 0, i8* %179) #7, !dbg !3317
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %88, %struct.redisObject* %180) #7, !dbg !3319
  call void @decrRefCount(%struct.redisObject* %180) #7, !dbg !3320
  %181 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 4), align 4, !dbg !3321, !tbaa !672
  %182 = icmp eq i32 %181, 0, !dbg !3321
  br i1 %182, label %188, label %183, !dbg !3323

; <label>:183:                                    ; preds = %175
  %184 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3324, !tbaa !2394
  %185 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3325, !tbaa !3150
  %186 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %185, i64 1, !dbg !3326
  %187 = load %struct.redisObject*, %struct.redisObject** %186, align 8, !dbg !3326, !tbaa !234
  call void @signalKeyAsReady(%struct.redisDb* %184, %struct.redisObject* %187) #7, !dbg !3327
  br label %188, !dbg !3327

; <label>:188:                                    ; preds = %57, %70, %69, %113, %98, %183, %175, %115, %135
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !3328
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3328
  ret void, !dbg !3328
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalKeyAsReady(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xrangeGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !3329 {
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamID* %3 to i8*, !dbg !3351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3351
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !3351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3351
  %8 = bitcast i64* %5 to i8*, !dbg !3352
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3352
  store i64 -1, i64* %5, align 8, !dbg !3353, !tbaa !265
  %9 = icmp ne i32 %1, 0, !dbg !3354
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3355
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3355, !tbaa !3150
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !3356
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 2, !dbg !3357
  %14 = select i1 %9, %struct.redisObject** %12, %struct.redisObject** %13, !dbg !3354
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !3354, !tbaa !234
  %16 = select i1 %9, %struct.redisObject** %13, %struct.redisObject** %12, !dbg !3359
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3359, !tbaa !234
  %18 = call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %15, %struct.streamID* nonnull %3, i64 0, i32 0) #7, !dbg !3368
  %19 = icmp eq i32 %18, -1, !dbg !3369
  br i1 %19, label %80, label %20, !dbg !3370

; <label>:20:                                     ; preds = %2
  %21 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, %struct.streamID* nonnull %4, i64 -1, i32 0) #7, !dbg !3378
  %22 = icmp eq i32 %21, -1, !dbg !3379
  br i1 %22, label %80, label %23, !dbg !3380

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3381
  %25 = load i32, i32* %24, align 8, !dbg !3381, !tbaa !3144
  %26 = icmp sgt i32 %25, 4, !dbg !3382
  br i1 %26, label %27, label %59, !dbg !3383

; <label>:27:                                     ; preds = %23, %54
  %28 = phi i64 [ %55, %54 ], [ 4, %23 ]
  %29 = phi i32 [ %56, %54 ], [ %25, %23 ]
  %30 = trunc i64 %28 to i32, !dbg !3385
  %31 = xor i32 %30, -1, !dbg !3385
  %32 = add i32 %29, %31, !dbg !3385
  %33 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3387, !tbaa !3150
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 %28, !dbg !3389
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !3389, !tbaa !234
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !3390
  %37 = load i8*, i8** %36, align 8, !dbg !3390, !tbaa !641
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !3391
  %39 = icmp eq i32 %38, 0, !dbg !3392
  %40 = icmp sgt i32 %32, 0, !dbg !3393
  %41 = and i1 %40, %39, !dbg !3394
  br i1 %41, label %42, label %52, !dbg !3394

; <label>:42:                                     ; preds = %27
  %43 = or i64 %28, 1, !dbg !3395
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 %43, !dbg !3398
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !3398, !tbaa !234
  %46 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %45, i64* nonnull %5, i8* null) #7, !dbg !3399
  %47 = icmp eq i32 %46, 0, !dbg !3400
  br i1 %47, label %48, label %80, !dbg !3401

; <label>:48:                                     ; preds = %42
  %49 = load i64, i64* %5, align 8, !dbg !3402, !tbaa !265
  %50 = icmp slt i64 %49, 0, !dbg !3404
  br i1 %50, label %51, label %54, !dbg !3405

; <label>:51:                                     ; preds = %48
  store i64 0, i64* %5, align 8, !dbg !3406, !tbaa !265
  br label %54, !dbg !3407

; <label>:52:                                     ; preds = %27
  %53 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3408, !tbaa !3410
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %53) #7, !dbg !3411
  br label %80, !dbg !3412

; <label>:54:                                     ; preds = %51, %48
  %55 = add nuw i64 %28, 2, !dbg !3413
  %56 = load i32, i32* %24, align 8, !dbg !3414, !tbaa !3144
  %57 = trunc i64 %55 to i32, !dbg !3415
  %58 = icmp sgt i32 %56, %57, !dbg !3415
  br i1 %58, label %27, label %59, !dbg !3416, !llvm.loop !3417

; <label>:59:                                     ; preds = %54, %23
  %60 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3419, !tbaa !3150
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 1, !dbg !3421
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !3421, !tbaa !234
  %63 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !3422, !tbaa !3423
  %64 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %62, %struct.redisObject* %63) #7, !dbg !3424
  %65 = icmp eq %struct.redisObject* %64, null, !dbg !3426
  br i1 %65, label %80, label %66, !dbg !3427

; <label>:66:                                     ; preds = %59
  %67 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %64, i32 6) #7, !dbg !3428
  %68 = icmp eq i32 %67, 0, !dbg !3428
  br i1 %68, label %69, label %80, !dbg !3429

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %64, i64 0, i32 2, !dbg !3430
  %71 = bitcast i8** %70 to %struct.stream**, !dbg !3430
  %72 = load %struct.stream*, %struct.stream** %71, align 8, !dbg !3430, !tbaa !641
  %73 = load i64, i64* %5, align 8, !dbg !3432, !tbaa !265
  switch i64 %73, label %77 [
    i64 0, label %74
    i64 -1, label %76
  ], !dbg !3434

; <label>:74:                                     ; preds = %69
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3435, !tbaa !2826
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %75) #7, !dbg !3437
  br label %80, !dbg !3438

; <label>:76:                                     ; preds = %69
  store i64 0, i64* %5, align 8, !dbg !3439, !tbaa !265
  br label %77, !dbg !3442

; <label>:77:                                     ; preds = %69, %76
  %78 = phi i64 [ %73, %69 ], [ 0, %76 ], !dbg !3443
  %79 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %72, %struct.streamID* nonnull %3, %struct.streamID* nonnull %4, i64 %78, i32 %1, %struct.streamCG* null, %struct.streamConsumer* null, i32 0, %struct.sreamPropInfo* null) #10, !dbg !3444
  br label %80

; <label>:80:                                     ; preds = %42, %52, %74, %77, %59, %66, %20, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3445
  ret void, !dbg !3445
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3446 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 0) #10, !dbg !3450
  ret void, !dbg !3451
}

; Function Attrs: noredzone nounwind
define dso_local void @xrevrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3452 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 1) #10, !dbg !3456
  ret void, !dbg !3457
}

; Function Attrs: noredzone nounwind
define dso_local void @xlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !3458 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3464
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !3464, !tbaa !3150
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3466
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !3466, !tbaa !234
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3467, !tbaa !3468
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #7, !dbg !3469
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !3471
  br i1 %8, label %18, label %9, !dbg !3472

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 6) #7, !dbg !3473
  %11 = icmp eq i32 %10, 0, !dbg !3473
  br i1 %11, label %12, label %18, !dbg !3474

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !3475
  %14 = bitcast i8** %13 to %struct.stream**, !dbg !3475
  %15 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !3475, !tbaa !641
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i64 0, i32 1, !dbg !3477
  %17 = load i64, i64* %16, align 8, !dbg !3477, !tbaa !935
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %17) #7, !dbg !3478
  br label %18, !dbg !3479

; <label>:18:                                     ; preds = %1, %9, %12
  ret void, !dbg !3479
}

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xreadCommand(%struct.client*) local_unnamed_addr #0 !dbg !3480 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [8 x %struct.streamID], align 16
  %5 = alloca %struct.streamID, align 8
  %6 = alloca %struct.sreamPropInfo, align 8
  %7 = bitcast i64* %2 to i8*, !dbg !3540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !3540
  store i64 -1, i64* %2, align 8, !dbg !3541, !tbaa !265
  %8 = bitcast i64* %3 to i8*, !dbg !3542
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3542
  store i64 0, i64* %3, align 8, !dbg !3543, !tbaa !265
  %9 = bitcast [8 x %struct.streamID]* %4 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3547
  %10 = getelementptr inbounds [8 x %struct.streamID], [8 x %struct.streamID]* %4, i64 0, i64 0, !dbg !3549
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3552
  %12 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3552, !tbaa !3150
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3553, !tbaa !234
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !3554
  %15 = load i8*, i8** %14, align 8, !dbg !3554, !tbaa !641
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !3557
  %17 = load i8, i8* %16, align 1, !dbg !3557, !tbaa !656
  %18 = trunc i8 %17 to i3, !dbg !3559
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !3559

; <label>:19:                                     ; preds = %1
  %20 = lshr i8 %17, 3, !dbg !3560
  %21 = zext i8 %20 to i64, !dbg !3560
  br label %40, !dbg !3561

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %15, i64 -3, !dbg !3562
  %24 = load i8, i8* %23, align 1, !dbg !3563, !tbaa !656
  %25 = zext i8 %24 to i64, !dbg !3562
  br label %40, !dbg !3564

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds i8, i8* %15, i64 -5, !dbg !3565
  %28 = bitcast i8* %27 to i16*, !dbg !3566
  %29 = load i16, i16* %28, align 1, !dbg !3566, !tbaa !667
  %30 = zext i16 %29 to i64, !dbg !3565
  br label %40, !dbg !3567

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds i8, i8* %15, i64 -9, !dbg !3568
  %33 = bitcast i8* %32 to i32*, !dbg !3569
  %34 = load i32, i32* %33, align 1, !dbg !3569, !tbaa !672
  %35 = zext i32 %34 to i64, !dbg !3568
  br label %40, !dbg !3570

; <label>:36:                                     ; preds = %1
  %37 = getelementptr inbounds i8, i8* %15, i64 -17, !dbg !3571
  %38 = bitcast i8* %37 to i64*, !dbg !3572
  %39 = load i64, i64* %38, align 1, !dbg !3572, !tbaa !117
  br label %40, !dbg !3573

; <label>:40:                                     ; preds = %1, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %1 ], !dbg !3574
  %42 = icmp eq i64 %41, 10, !dbg !3575
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3579
  %44 = load i32, i32* %43, align 8, !dbg !3579, !tbaa !3144
  %45 = icmp sgt i32 %44, 1, !dbg !3580
  br i1 %45, label %46, label %132, !dbg !3581

; <label>:46:                                     ; preds = %40, %127
  %47 = phi %struct.redisObject** [ %128, %127 ], [ %12, %40 ], !dbg !3582
  %48 = phi i32 [ %125, %127 ], [ %44, %40 ]
  %49 = phi i32 [ %123, %127 ], [ 0, %40 ]
  %50 = phi %struct.redisObject* [ %122, %127 ], [ null, %40 ]
  %51 = phi %struct.redisObject* [ %121, %127 ], [ null, %40 ]
  %52 = phi i32 [ %124, %127 ], [ 1, %40 ]
  %53 = xor i32 %52, -1, !dbg !3583
  %54 = add i32 %48, %53, !dbg !3583
  %55 = sext i32 %52 to i64, !dbg !3585
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %55, !dbg !3585
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !3585, !tbaa !234
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2, !dbg !3586
  %59 = load i8*, i8** %58, align 8, !dbg !3586, !tbaa !641
  %60 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !3588
  %61 = icmp eq i32 %60, 0, !dbg !3588
  %62 = icmp ne i32 %54, 0, !dbg !3590
  %63 = and i1 %62, %61, !dbg !3591
  br i1 %63, label %64, label %71, !dbg !3591

; <label>:64:                                     ; preds = %46
  %65 = add nsw i32 %52, 1, !dbg !3592
  %66 = sext i32 %65 to i64, !dbg !3594
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %66, !dbg !3594
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !3594, !tbaa !234
  %69 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %68, i64* nonnull %2, i32 1) #7, !dbg !3596
  %70 = icmp eq i32 %69, 0, !dbg !3597
  br i1 %70, label %119, label %442, !dbg !3598

; <label>:71:                                     ; preds = %46
  %72 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #11, !dbg !3599
  %73 = icmp eq i32 %72, 0, !dbg !3599
  %74 = and i1 %62, %73, !dbg !3601
  br i1 %74, label %75, label %86, !dbg !3601

; <label>:75:                                     ; preds = %71
  %76 = add nsw i32 %52, 1, !dbg !3602
  %77 = sext i32 %76 to i64, !dbg !3604
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %77, !dbg !3604
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !3604, !tbaa !234
  %80 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %79, i64* nonnull %3, i8* null) #7, !dbg !3606
  %81 = icmp eq i32 %80, 0, !dbg !3607
  br i1 %81, label %82, label %442, !dbg !3608

; <label>:82:                                     ; preds = %75
  %83 = load i64, i64* %3, align 8, !dbg !3609, !tbaa !265
  %84 = icmp slt i64 %83, 0, !dbg !3611
  br i1 %84, label %85, label %119, !dbg !3612

; <label>:85:                                     ; preds = %82
  store i64 0, i64* %3, align 8, !dbg !3613, !tbaa !265
  br label %119, !dbg !3614

; <label>:86:                                     ; preds = %71
  %87 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !3615
  %88 = icmp eq i32 %87, 0, !dbg !3615
  %89 = and i1 %62, %88, !dbg !3617
  br i1 %89, label %90, label %96, !dbg !3617

; <label>:90:                                     ; preds = %86
  %91 = add nsw i32 %52, 1, !dbg !3618
  %92 = sub nsw i32 %48, %91, !dbg !3620
  %93 = and i32 %92, 1, !dbg !3621
  %94 = icmp eq i32 %93, 0, !dbg !3621
  br i1 %94, label %129, label %95, !dbg !3623

; <label>:95:                                     ; preds = %90
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !3624
  br label %442, !dbg !3626

; <label>:96:                                     ; preds = %86
  %97 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #11, !dbg !3627
  %98 = icmp eq i32 %97, 0, !dbg !3627
  %99 = icmp sgt i32 %54, 1, !dbg !3629
  %100 = and i1 %99, %98, !dbg !3630
  br i1 %100, label %101, label %112, !dbg !3630

; <label>:101:                                    ; preds = %96
  br i1 %42, label %103, label %102, !dbg !3631

; <label>:102:                                    ; preds = %101
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !3633
  br label %442, !dbg !3636

; <label>:103:                                    ; preds = %101
  %104 = add nsw i32 %52, 1, !dbg !3637
  %105 = sext i32 %104 to i64, !dbg !3638
  %106 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %105, !dbg !3638
  %107 = load %struct.redisObject*, %struct.redisObject** %106, align 8, !dbg !3638, !tbaa !234
  %108 = add nsw i32 %52, 2, !dbg !3639
  %109 = sext i32 %108 to i64, !dbg !3640
  %110 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %109, !dbg !3640
  %111 = load %struct.redisObject*, %struct.redisObject** %110, align 8, !dbg !3640, !tbaa !234
  br label %119, !dbg !3641

; <label>:112:                                    ; preds = %96
  %113 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !3642
  %114 = icmp eq i32 %113, 0, !dbg !3642
  br i1 %114, label %115, label %117, !dbg !3644

; <label>:115:                                    ; preds = %112
  br i1 %42, label %119, label %116, !dbg !3645

; <label>:116:                                    ; preds = %115
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !3647
  br label %442, !dbg !3650

; <label>:117:                                    ; preds = %112
  %118 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3651, !tbaa !3410
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %118) #7, !dbg !3653
  br label %442, !dbg !3654

; <label>:119:                                    ; preds = %115, %64, %85, %82, %103
  %120 = phi i32 [ %65, %64 ], [ %76, %85 ], [ %76, %82 ], [ %108, %103 ], [ %52, %115 ], !dbg !3655
  %121 = phi %struct.redisObject* [ %51, %64 ], [ %51, %85 ], [ %51, %82 ], [ %111, %103 ], [ %51, %115 ], !dbg !3656
  %122 = phi %struct.redisObject* [ %50, %64 ], [ %50, %85 ], [ %50, %82 ], [ %107, %103 ], [ %50, %115 ], !dbg !3656
  %123 = phi i32 [ %49, %64 ], [ %49, %85 ], [ %49, %82 ], [ %49, %103 ], [ 1, %115 ], !dbg !3657
  %124 = add nsw i32 %120, 1, !dbg !3658
  %125 = load i32, i32* %43, align 8, !dbg !3579, !tbaa !3144
  %126 = icmp sgt i32 %125, %124, !dbg !3580
  br i1 %126, label %127, label %132, !dbg !3581, !llvm.loop !3659

; <label>:127:                                    ; preds = %119
  %128 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3582, !tbaa !3150
  br label %46, !dbg !3581

; <label>:129:                                    ; preds = %90
  %130 = sdiv i32 %92, 2, !dbg !3661
  %131 = icmp eq i32 %91, 0, !dbg !3662
  br i1 %131, label %132, label %134, !dbg !3664

; <label>:132:                                    ; preds = %119, %40, %129
  %133 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3665, !tbaa !3410
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %133) #7, !dbg !3667
  br label %442, !dbg !3668

; <label>:134:                                    ; preds = %129
  %135 = icmp eq %struct.redisObject* %50, null, !dbg !3669
  %136 = and i1 %42, %135, !dbg !3671
  br i1 %136, label %137, label %138, !dbg !3671

; <label>:137:                                    ; preds = %134
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !3672
  br label %442, !dbg !3674

; <label>:138:                                    ; preds = %134
  %139 = icmp sgt i32 %92, 17, !dbg !3675
  br i1 %139, label %140, label %145, !dbg !3677

; <label>:140:                                    ; preds = %138
  %141 = sext i32 %130 to i64, !dbg !3678
  %142 = shl nsw i64 %141, 4, !dbg !3679
  %143 = call i8* @zmalloc(i64 %142) #7, !dbg !3680
  %144 = bitcast i8* %143 to %struct.streamID*, !dbg !3680
  br label %145, !dbg !3681

; <label>:145:                                    ; preds = %140, %138
  %146 = phi %struct.streamID* [ %144, %140 ], [ %10, %138 ], !dbg !3656
  %147 = icmp ne %struct.redisObject* %50, null, !dbg !3682
  br i1 %147, label %148, label %153, !dbg !3684

; <label>:148:                                    ; preds = %145
  %149 = sext i32 %130 to i64, !dbg !3685
  %150 = shl nsw i64 %149, 3, !dbg !3686
  %151 = call i8* @zmalloc(i64 %150) #7, !dbg !3687
  %152 = bitcast i8* %151 to %struct.streamCG**, !dbg !3687
  br label %153, !dbg !3688

; <label>:153:                                    ; preds = %148, %145
  %154 = phi i8* [ %151, %148 ], [ null, %145 ], !dbg !3656
  %155 = phi %struct.streamCG** [ %152, %148 ], [ null, %145 ], !dbg !3656
  %156 = add nsw i32 %130, %91, !dbg !3689
  %157 = load i32, i32* %43, align 8, !dbg !3691, !tbaa !3144
  %158 = icmp slt i32 %156, %157, !dbg !3692
  br i1 %158, label %159, label %284, !dbg !3693

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %161 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %50, i64 0, i32 2
  %162 = add i32 %52, %130, !dbg !3693
  %163 = add i32 %162, 1, !dbg !3693
  %164 = sext i32 %163 to i64, !dbg !3693
  %165 = sext i32 %130 to i64, !dbg !3693
  br label %166, !dbg !3693

; <label>:166:                                    ; preds = %159, %279
  %167 = phi i64 [ %164, %159 ], [ %280, %279 ]
  %168 = trunc i64 %167 to i32, !dbg !3694
  %169 = sub i32 %168, %91, !dbg !3694
  %170 = sub i32 %169, %130, !dbg !3694
  %171 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3696, !tbaa !3150
  %172 = sub nsw i64 %167, %165, !dbg !3697
  %173 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %171, i64 %172, !dbg !3698
  %174 = load %struct.redisObject*, %struct.redisObject** %173, align 8, !dbg !3698, !tbaa !234
  %175 = load %struct.redisDb*, %struct.redisDb** %160, align 8, !dbg !3700, !tbaa !2394
  %176 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %175, %struct.redisObject* %174) #7, !dbg !3701
  %177 = icmp ne %struct.redisObject* %176, null, !dbg !3703
  br i1 %177, label %178, label %181, !dbg !3705

; <label>:178:                                    ; preds = %166
  %179 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %176, i32 6) #7, !dbg !3706
  %180 = icmp eq i32 %179, 0, !dbg !3706
  br i1 %180, label %181, label %437, !dbg !3707

; <label>:181:                                    ; preds = %178, %166
  br i1 %147, label %182, label %233, !dbg !3709

; <label>:182:                                    ; preds = %181
  %183 = icmp eq %struct.redisObject* %176, null, !dbg !3710
  br i1 %183, label %225, label %184, !dbg !3714

; <label>:184:                                    ; preds = %182
  %185 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %176, i64 0, i32 2, !dbg !3715
  %186 = bitcast i8** %185 to %struct.stream**, !dbg !3715
  %187 = load %struct.stream*, %struct.stream** %186, align 8, !dbg !3715, !tbaa !641
  %188 = load i8*, i8** %161, align 8, !dbg !3716, !tbaa !641
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %187, i64 0, i32 3, !dbg !3727
  %190 = load %struct.rax*, %struct.rax** %189, align 8, !dbg !3727, !tbaa !123
  %191 = icmp eq %struct.rax* %190, null, !dbg !3729
  br i1 %191, label %225, label %192, !dbg !3730

; <label>:192:                                    ; preds = %184
  %193 = getelementptr inbounds i8, i8* %188, i64 -1, !dbg !3733
  %194 = load i8, i8* %193, align 1, !dbg !3733, !tbaa !656
  %195 = trunc i8 %194 to i3, !dbg !3735
  switch i3 %195, label %217 [
    i3 0, label %196
    i3 1, label %199
    i3 2, label %203
    i3 3, label %208
    i3 -4, label %213
  ], !dbg !3735

; <label>:196:                                    ; preds = %192
  %197 = lshr i8 %194, 3, !dbg !3736
  %198 = zext i8 %197 to i64, !dbg !3736
  br label %217, !dbg !3737

; <label>:199:                                    ; preds = %192
  %200 = getelementptr inbounds i8, i8* %188, i64 -3, !dbg !3738
  %201 = load i8, i8* %200, align 1, !dbg !3739, !tbaa !656
  %202 = zext i8 %201 to i64, !dbg !3738
  br label %217, !dbg !3740

; <label>:203:                                    ; preds = %192
  %204 = getelementptr inbounds i8, i8* %188, i64 -5, !dbg !3741
  %205 = bitcast i8* %204 to i16*, !dbg !3742
  %206 = load i16, i16* %205, align 1, !dbg !3742, !tbaa !667
  %207 = zext i16 %206 to i64, !dbg !3741
  br label %217, !dbg !3743

; <label>:208:                                    ; preds = %192
  %209 = getelementptr inbounds i8, i8* %188, i64 -9, !dbg !3744
  %210 = bitcast i8* %209 to i32*, !dbg !3745
  %211 = load i32, i32* %210, align 1, !dbg !3745, !tbaa !672
  %212 = zext i32 %211 to i64, !dbg !3744
  br label %217, !dbg !3746

; <label>:213:                                    ; preds = %192
  %214 = getelementptr inbounds i8, i8* %188, i64 -17, !dbg !3747
  %215 = bitcast i8* %214 to i64*, !dbg !3748
  %216 = load i64, i64* %215, align 1, !dbg !3748, !tbaa !117
  br label %217, !dbg !3749

; <label>:217:                                    ; preds = %213, %208, %203, %199, %196, %192
  %218 = phi i64 [ %216, %213 ], [ %212, %208 ], [ %207, %203 ], [ %202, %199 ], [ %198, %196 ], [ 0, %192 ], !dbg !3750
  %219 = call i8* @raxFind(%struct.rax* nonnull %190, i8* nonnull %188, i64 %218) #7, !dbg !3751
  %220 = bitcast i8* %219 to %struct.streamCG*, !dbg !3751
  %221 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !3753, !tbaa !234
  %222 = icmp eq %struct.streamCG* %221, %220, !dbg !3754
  %223 = icmp eq i8* %219, null, !dbg !3755
  %224 = or i1 %223, %222
  br i1 %224, label %225, label %229

; <label>:225:                                    ; preds = %217, %184, %182
  %226 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %174, i64 0, i32 2, !dbg !3756
  %227 = load i8*, i8** %226, align 8, !dbg !3756, !tbaa !641
  %228 = load i8*, i8** %161, align 8, !dbg !3758, !tbaa !641
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.38, i64 0, i64 0), i8* %227, i8* %228) #7, !dbg !3759
  br label %437, !dbg !3760

; <label>:229:                                    ; preds = %217
  %230 = sext i32 %170 to i64, !dbg !3761
  %231 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %230, !dbg !3761
  %232 = bitcast %struct.streamCG** %231 to i8**, !dbg !3762
  store i8* %219, i8** %232, align 8, !dbg !3762, !tbaa !234
  br label %233, !dbg !3763

; <label>:233:                                    ; preds = %229, %181
  %234 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3764, !tbaa !3150
  %235 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %234, i64 %167, !dbg !3765
  %236 = load %struct.redisObject*, %struct.redisObject** %235, align 8, !dbg !3765, !tbaa !234
  %237 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %236, i64 0, i32 2, !dbg !3766
  %238 = load i8*, i8** %237, align 8, !dbg !3766, !tbaa !641
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !3767
  %240 = icmp eq i32 %239, 0, !dbg !3768
  br i1 %240, label %241, label %257, !dbg !3769

; <label>:241:                                    ; preds = %233
  br i1 %42, label %242, label %243, !dbg !3770

; <label>:242:                                    ; preds = %241
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !3771
  br label %437, !dbg !3774

; <label>:243:                                    ; preds = %241
  br i1 %177, label %244, label %253, !dbg !3775

; <label>:244:                                    ; preds = %243
  %245 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %176, i64 0, i32 2, !dbg !3776
  %246 = bitcast i8** %245 to %struct.stream**, !dbg !3776
  %247 = load %struct.stream*, %struct.stream** %246, align 8, !dbg !3776, !tbaa !641
  %248 = sext i32 %170 to i64, !dbg !3778
  %249 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %248, !dbg !3778
  %250 = getelementptr inbounds %struct.stream, %struct.stream* %247, i64 0, i32 2, !dbg !3779
  %251 = bitcast %struct.streamID* %249 to i8*, !dbg !3779
  %252 = bitcast %struct.streamID* %250 to i8*, !dbg !3779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* nonnull align 8 %252, i64 16, i1 false), !dbg !3779, !tbaa.struct !1583
  br label %279, !dbg !3780

; <label>:253:                                    ; preds = %243
  %254 = sext i32 %170 to i64, !dbg !3781
  %255 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %254, i32 0, !dbg !3783
  %256 = bitcast i64* %255 to <2 x i64>*, !dbg !3784
  store <2 x i64> zeroinitializer, <2 x i64>* %256, align 8, !dbg !3784, !tbaa !117
  br label %279

; <label>:257:                                    ; preds = %233
  %258 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3785, !tbaa !3150
  %259 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %258, i64 %167, !dbg !3787
  %260 = load %struct.redisObject*, %struct.redisObject** %259, align 8, !dbg !3787, !tbaa !234
  %261 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %260, i64 0, i32 2, !dbg !3788
  %262 = load i8*, i8** %261, align 8, !dbg !3788, !tbaa !641
  %263 = call i32 @strcmp(i8* %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #7, !dbg !3789
  %264 = icmp eq i32 %263, 0, !dbg !3790
  br i1 %264, label %265, label %271, !dbg !3791

; <label>:265:                                    ; preds = %257
  br i1 %42, label %267, label %266, !dbg !3792

; <label>:266:                                    ; preds = %265
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.41, i64 0, i64 0)) #7, !dbg !3794
  br label %437, !dbg !3797

; <label>:267:                                    ; preds = %265
  %268 = sext i32 %170 to i64, !dbg !3798
  %269 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %268, i32 0, !dbg !3799
  %270 = bitcast i64* %269 to <2 x i64>*, !dbg !3800
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %270, align 8, !dbg !3800, !tbaa !117
  br label %279, !dbg !3801

; <label>:271:                                    ; preds = %257
  %272 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3802, !tbaa !3150
  %273 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %272, i64 %167, !dbg !3804
  %274 = load %struct.redisObject*, %struct.redisObject** %273, align 8, !dbg !3804, !tbaa !234
  %275 = sext i32 %170 to i64, !dbg !3805
  %276 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %275, !dbg !3805
  %277 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %274, %struct.streamID* %276, i64 0, i32 1) #7, !dbg !3811
  %278 = icmp eq i32 %277, 0, !dbg !3812
  br i1 %278, label %279, label %437

; <label>:279:                                    ; preds = %271, %244, %253, %267
  %280 = add nsw i64 %167, 1, !dbg !3813
  %281 = load i32, i32* %43, align 8, !dbg !3691, !tbaa !3144
  %282 = sext i32 %281 to i64, !dbg !3692
  %283 = icmp slt i64 %280, %282, !dbg !3692
  br i1 %283, label %166, label %284, !dbg !3693, !llvm.loop !3814

; <label>:284:                                    ; preds = %279, %153
  %285 = icmp sgt i32 %92, 1, !dbg !3819
  br i1 %285, label %286, label %410, !dbg !3820

; <label>:286:                                    ; preds = %284
  %287 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %288 = icmp ne %struct.streamCG** %155, null
  %289 = bitcast %struct.streamID* %5 to i8*
  %290 = getelementptr inbounds %struct.streamID, %struct.streamID* %5, i64 0, i32 1
  %291 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2
  %292 = bitcast %struct.sreamPropInfo* %6 to i8*
  %293 = bitcast %struct.sreamPropInfo* %6 to i64*
  %294 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %6, i64 0, i32 1
  %295 = icmp ne i32 %49, 0
  %296 = zext i1 %295 to i32
  %297 = or i32 %296, 4
  %298 = sext i32 %91 to i64, !dbg !3820
  %299 = zext i32 %130 to i64
  br label %302, !dbg !3820

; <label>:300:                                    ; preds = %404
  %301 = icmp eq i64 %405, 0, !dbg !3821
  br i1 %301, label %410, label %409, !dbg !3823

; <label>:302:                                    ; preds = %404, %286
  %303 = phi i64 [ 0, %286 ], [ %407, %404 ]
  %304 = phi i8* [ null, %286 ], [ %406, %404 ]
  %305 = phi i64 [ 0, %286 ], [ %405, %404 ]
  %306 = load %struct.redisDb*, %struct.redisDb** %287, align 8, !dbg !3824, !tbaa !2394
  %307 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3825, !tbaa !3150
  %308 = add nsw i64 %303, %298, !dbg !3826
  %309 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %307, i64 %308, !dbg !3827
  %310 = load %struct.redisObject*, %struct.redisObject** %309, align 8, !dbg !3827, !tbaa !234
  %311 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %306, %struct.redisObject* %310) #7, !dbg !3828
  %312 = icmp eq %struct.redisObject* %311, null, !dbg !3830
  br i1 %312, label %404, label %313, !dbg !3832

; <label>:313:                                    ; preds = %302
  %314 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %311, i64 0, i32 2, !dbg !3833
  %315 = bitcast i8** %314 to %struct.stream**, !dbg !3833
  %316 = load %struct.stream*, %struct.stream** %315, align 8, !dbg !3833, !tbaa !641
  %317 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %303, !dbg !3835
  br i1 %288, label %318, label %349, !dbg !3839

; <label>:318:                                    ; preds = %313
  %319 = getelementptr inbounds %struct.streamID, %struct.streamID* %317, i64 0, i32 0, !dbg !3840
  %320 = load i64, i64* %319, align 8, !dbg !3840, !tbaa !178
  %321 = icmp eq i64 %320, -1, !dbg !3841
  br i1 %321, label %322, label %367, !dbg !3842

; <label>:322:                                    ; preds = %318
  %323 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %303, i32 1, !dbg !3843
  %324 = load i64, i64* %323, align 8, !dbg !3843, !tbaa !188
  %325 = icmp eq i64 %324, -1, !dbg !3844
  br i1 %325, label %326, label %367, !dbg !3845

; <label>:326:                                    ; preds = %322
  %327 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %303, !dbg !3846
  %328 = load %struct.streamCG*, %struct.streamCG** %327, align 8, !dbg !3846, !tbaa !234
  %329 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 1, !dbg !3847
  %330 = load i64, i64* %329, align 8, !dbg !3847, !tbaa !935
  %331 = icmp eq i64 %330, 0, !dbg !3849
  br i1 %331, label %404, label %332, !dbg !3850

; <label>:332:                                    ; preds = %326
  %333 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 2, i32 0, !dbg !3855
  %334 = load i64, i64* %333, align 8, !dbg !3855, !tbaa !178
  %335 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %328, i64 0, i32 0, i32 0, !dbg !3856
  %336 = load i64, i64* %335, align 8, !dbg !3856, !tbaa !178
  %337 = icmp ugt i64 %334, %336, !dbg !3857
  br i1 %337, label %346, label %338, !dbg !3858

; <label>:338:                                    ; preds = %332
  %339 = icmp ult i64 %334, %336, !dbg !3859
  br i1 %339, label %404, label %340, !dbg !3860

; <label>:340:                                    ; preds = %338
  %341 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 2, i32 1, !dbg !3861
  %342 = load i64, i64* %341, align 8, !dbg !3861, !tbaa !188
  %343 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %328, i64 0, i32 0, i32 1, !dbg !3862
  %344 = load i64, i64* %343, align 8, !dbg !3862, !tbaa !188
  %345 = icmp ugt i64 %342, %344, !dbg !3863
  br i1 %345, label %346, label %404, !dbg !3864

; <label>:346:                                    ; preds = %332, %340
  %347 = bitcast %struct.streamID* %317 to i8*, !dbg !3865
  %348 = bitcast %struct.streamCG* %328 to i8*, !dbg !3865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %347, i8* align 8 %348, i64 16, i1 false), !dbg !3865, !tbaa.struct !1583
  br label %367, !dbg !3867

; <label>:349:                                    ; preds = %313
  %350 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 1, !dbg !3868
  %351 = load i64, i64* %350, align 8, !dbg !3868, !tbaa !935
  %352 = icmp eq i64 %351, 0, !dbg !3871
  br i1 %352, label %404, label %353, !dbg !3872

; <label>:353:                                    ; preds = %349
  %354 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 2, i32 0, !dbg !3876
  %355 = load i64, i64* %354, align 8, !dbg !3876, !tbaa !178
  %356 = getelementptr inbounds %struct.streamID, %struct.streamID* %317, i64 0, i32 0, !dbg !3877
  %357 = load i64, i64* %356, align 8, !dbg !3877, !tbaa !178
  %358 = icmp ugt i64 %355, %357, !dbg !3878
  br i1 %358, label %367, label %359, !dbg !3879

; <label>:359:                                    ; preds = %353
  %360 = icmp ult i64 %355, %357, !dbg !3880
  br i1 %360, label %404, label %361, !dbg !3881

; <label>:361:                                    ; preds = %359
  %362 = getelementptr inbounds %struct.stream, %struct.stream* %316, i64 0, i32 2, i32 1, !dbg !3882
  %363 = load i64, i64* %362, align 8, !dbg !3882, !tbaa !188
  %364 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %303, i32 1, !dbg !3883
  %365 = load i64, i64* %364, align 8, !dbg !3883, !tbaa !188
  %366 = icmp ugt i64 %363, %365, !dbg !3884
  br i1 %366, label %367, label %404, !dbg !3885

; <label>:367:                                    ; preds = %322, %318, %346, %361, %353
  %368 = phi i32 [ 1, %322 ], [ 1, %318 ], [ 0, %346 ], [ 0, %361 ], [ 0, %353 ], !dbg !3886
  %369 = add i64 %305, 1, !dbg !3887
  %370 = icmp eq i64 %305, 0, !dbg !3888
  br i1 %370, label %371, label %373, !dbg !3890

; <label>:371:                                    ; preds = %367
  %372 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !3891
  br label %373, !dbg !3892

; <label>:373:                                    ; preds = %371, %367
  %374 = phi i8* [ %372, %371 ], [ %304, %367 ], !dbg !3656
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %289) #8, !dbg !3893
  %375 = bitcast %struct.streamID* %317 to i8*, !dbg !3894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %289, i8* align 8 %375, i64 16, i1 false), !dbg !3894, !tbaa.struct !1583
  %376 = load i64, i64* %290, align 8, !dbg !3895, !tbaa !188
  %377 = add i64 %376, 1, !dbg !3895
  store i64 %377, i64* %290, align 8, !dbg !3895, !tbaa !188
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #7, !dbg !3896
  %378 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3897, !tbaa !3150
  %379 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %378, i64 %308, !dbg !3898
  %380 = load %struct.redisObject*, %struct.redisObject** %379, align 8, !dbg !3898, !tbaa !234
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %380) #7, !dbg !3899
  br i1 %288, label %381, label %386, !dbg !3901

; <label>:381:                                    ; preds = %373
  %382 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %303, !dbg !3902
  %383 = load %struct.streamCG*, %struct.streamCG** %382, align 8, !dbg !3902, !tbaa !234
  %384 = load i8*, i8** %291, align 8, !dbg !3904, !tbaa !641
  %385 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* %383, i8* %384, i32 1) #10, !dbg !3905
  br label %386, !dbg !3906

; <label>:386:                                    ; preds = %381, %373
  %387 = phi %struct.streamConsumer* [ %385, %381 ], [ null, %373 ], !dbg !3907
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %292) #8, !dbg !3908
  %388 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3909, !tbaa !3150
  %389 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %388, i64 %308, !dbg !3910
  %390 = bitcast %struct.redisObject** %389 to i64*, !dbg !3910
  %391 = load i64, i64* %390, align 8, !dbg !3910, !tbaa !234
  store i64 %391, i64* %293, align 8, !dbg !3911, !tbaa !2680
  store %struct.redisObject* %50, %struct.redisObject** %294, align 8, !dbg !3911, !tbaa !2683
  %392 = icmp eq i32 %368, 0, !dbg !3913
  %393 = select i1 %392, i32 %296, i32 %297, !dbg !3915
  %394 = load i64, i64* %3, align 8, !dbg !3916, !tbaa !265
  br i1 %288, label %395, label %401, !dbg !3917

; <label>:395:                                    ; preds = %386
  %396 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %303, !dbg !3918
  %397 = load %struct.streamCG*, %struct.streamCG** %396, align 8, !dbg !3918, !tbaa !234
  %398 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %316, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %394, i32 0, %struct.streamCG* %397, %struct.streamConsumer* %387, i32 %393, %struct.sreamPropInfo* nonnull %6) #10, !dbg !3921
  %399 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3922, !tbaa !3277
  %400 = add nsw i64 %399, 1, !dbg !3922
  store i64 %400, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3922, !tbaa !3277
  br label %403, !dbg !3924

; <label>:401:                                    ; preds = %386
  %402 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %316, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %394, i32 0, %struct.streamCG* null, %struct.streamConsumer* %387, i32 %393, %struct.sreamPropInfo* nonnull %6) #10, !dbg !3921
  br label %403

; <label>:403:                                    ; preds = %401, %395
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %292) #8, !dbg !3925
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %289) #8, !dbg !3925
  br label %404, !dbg !3926

; <label>:404:                                    ; preds = %361, %340, %359, %338, %326, %349, %403, %302
  %405 = phi i64 [ %305, %302 ], [ %369, %403 ], [ %305, %349 ], [ %305, %326 ], [ %305, %338 ], [ %305, %359 ], [ %305, %340 ], [ %305, %361 ], !dbg !3907
  %406 = phi i8* [ %304, %302 ], [ %374, %403 ], [ %304, %349 ], [ %304, %326 ], [ %304, %338 ], [ %304, %359 ], [ %304, %340 ], [ %304, %361 ], !dbg !3927
  %407 = add nuw nsw i64 %303, 1, !dbg !3928
  %408 = icmp eq i64 %407, %299, !dbg !3819
  br i1 %408, label %300, label %302, !dbg !3820, !llvm.loop !3929

; <label>:409:                                    ; preds = %300
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %406, i64 %405) #7, !dbg !3931
  br label %437, !dbg !3933

; <label>:410:                                    ; preds = %284, %300
  %411 = load i64, i64* %2, align 8, !dbg !3934, !tbaa !265
  %412 = icmp eq i64 %411, -1, !dbg !3936
  br i1 %412, label %435, label %413, !dbg !3937

; <label>:413:                                    ; preds = %410
  %414 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3938
  %415 = load i32, i32* %414, align 8, !dbg !3938, !tbaa !3941
  %416 = and i32 %415, 8, !dbg !3942
  %417 = icmp eq i32 %416, 0, !dbg !3942
  br i1 %417, label %420, label %418, !dbg !3943

; <label>:418:                                    ; preds = %413
  %419 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3944, !tbaa !2826
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %419) #7, !dbg !3946
  br label %437, !dbg !3947

; <label>:420:                                    ; preds = %413
  %421 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3948, !tbaa !3150
  %422 = sext i32 %91 to i64, !dbg !3949
  %423 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %421, i64 %422, !dbg !3949
  call void @blockForKeys(%struct.client* nonnull %0, i32 4, %struct.redisObject** %423, i32 %130, i64 %411, %struct.redisObject* null, %struct.streamID* %146) #7, !dbg !3950
  %424 = load i64, i64* %3, align 8, !dbg !3951, !tbaa !265
  %425 = icmp eq i64 %424, 0, !dbg !3951
  %426 = select i1 %425, i64 1000, i64 %424, !dbg !3951
  %427 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 3, !dbg !3952
  store i64 %426, i64* %427, align 8, !dbg !3953, !tbaa !3954
  br i1 %147, label %428, label %432, !dbg !3955

; <label>:428:                                    ; preds = %420
  call void @incrRefCount(%struct.redisObject* nonnull %50) #7, !dbg !3956
  call void @incrRefCount(%struct.redisObject* %51) #7, !dbg !3959
  %429 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !3960
  store %struct.redisObject* %50, %struct.redisObject** %429, align 8, !dbg !3961, !tbaa !3962
  %430 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 5, !dbg !3963
  store %struct.redisObject* %51, %struct.redisObject** %430, align 8, !dbg !3964, !tbaa !3965
  %431 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 8, !dbg !3966
  store i32 %49, i32* %431, align 8, !dbg !3967, !tbaa !3968
  br label %437, !dbg !3969

; <label>:432:                                    ; preds = %420
  %433 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !3970
  %434 = bitcast %struct.redisObject** %433 to <2 x %struct.redisObject*>*, !dbg !3972
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %434, align 8, !dbg !3972, !tbaa !234
  br label %437

; <label>:435:                                    ; preds = %410
  %436 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3973, !tbaa !2826
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %436) #7, !dbg !3974
  br label %437, !dbg !3974

; <label>:437:                                    ; preds = %178, %271, %225, %242, %266, %428, %432, %435, %418, %409
  call void @preventCommandPropagation(%struct.client* nonnull %0) #7, !dbg !3975
  %438 = icmp eq %struct.streamID* %146, %10, !dbg !3976
  br i1 %438, label %441, label %439, !dbg !3978

; <label>:439:                                    ; preds = %437
  %440 = bitcast %struct.streamID* %146 to i8*, !dbg !3979
  call void @zfree(i8* %440) #7, !dbg !3980
  br label %441, !dbg !3980

; <label>:441:                                    ; preds = %437, %439
  call void @zfree(i8* %154) #7, !dbg !3981
  br label %442, !dbg !3982

; <label>:442:                                    ; preds = %64, %75, %95, %102, %117, %116, %441, %137, %132
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #8, !dbg !3982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3982
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !3982
  ret void, !dbg !3982
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamLookupCG(%struct.stream* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !3718 {
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !3985
  %4 = load %struct.rax*, %struct.rax** %3, align 8, !dbg !3985, !tbaa !123
  %5 = icmp eq %struct.rax* %4, null, !dbg !3986
  br i1 %5, label %38, label %6, !dbg !3987

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !3990
  %8 = load i8, i8* %7, align 1, !dbg !3990, !tbaa !656
  %9 = trunc i8 %8 to i3, !dbg !3992
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !3992

; <label>:10:                                     ; preds = %6
  %11 = lshr i8 %8, 3, !dbg !3993
  %12 = zext i8 %11 to i64, !dbg !3993
  br label %31, !dbg !3994

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !3995
  %15 = load i8, i8* %14, align 1, !dbg !3996, !tbaa !656
  %16 = zext i8 %15 to i64, !dbg !3995
  br label %31, !dbg !3997

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !3998
  %19 = bitcast i8* %18 to i16*, !dbg !3999
  %20 = load i16, i16* %19, align 1, !dbg !3999, !tbaa !667
  %21 = zext i16 %20 to i64, !dbg !3998
  br label %31, !dbg !4000

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4001
  %24 = bitcast i8* %23 to i32*, !dbg !4002
  %25 = load i32, i32* %24, align 1, !dbg !4002, !tbaa !672
  %26 = zext i32 %25 to i64, !dbg !4001
  br label %31, !dbg !4003

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4004
  %29 = bitcast i8* %28 to i64*, !dbg !4005
  %30 = load i64, i64* %29, align 1, !dbg !4005, !tbaa !117
  br label %31, !dbg !4006

; <label>:31:                                     ; preds = %6, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %6 ], !dbg !4007
  %33 = tail call i8* @raxFind(%struct.rax* nonnull %4, i8* nonnull %1, i64 %32) #7, !dbg !4008
  %34 = bitcast i8* %33 to %struct.streamCG*, !dbg !4008
  %35 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4010, !tbaa !234
  %36 = icmp eq %struct.streamCG* %35, %34, !dbg !4011
  %37 = select i1 %36, %struct.streamCG* null, %struct.streamCG* %34, !dbg !4012
  br label %38

; <label>:38:                                     ; preds = %2, %31
  %39 = phi %struct.streamCG* [ %37, %31 ], [ null, %2 ], !dbg !4013
  ret %struct.streamCG* %39, !dbg !4014
}

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !4015 {
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4026
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4026, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4029
  %7 = load i8, i8* %6, align 1, !dbg !4029, !tbaa !656
  %8 = trunc i8 %7 to i3, !dbg !4031
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4031

; <label>:9:                                      ; preds = %3
  %10 = lshr i8 %7, 3, !dbg !4032
  %11 = zext i8 %10 to i64, !dbg !4032
  br label %30, !dbg !4033

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4034
  %14 = load i8, i8* %13, align 1, !dbg !4035, !tbaa !656
  %15 = zext i8 %14 to i64, !dbg !4034
  br label %30, !dbg !4036

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4037
  %18 = bitcast i8* %17 to i16*, !dbg !4038
  %19 = load i16, i16* %18, align 1, !dbg !4038, !tbaa !667
  %20 = zext i16 %19 to i64, !dbg !4037
  br label %30, !dbg !4039

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4040
  %23 = bitcast i8* %22 to i32*, !dbg !4041
  %24 = load i32, i32* %23, align 1, !dbg !4041, !tbaa !672
  %25 = zext i32 %24 to i64, !dbg !4040
  br label %30, !dbg !4042

; <label>:26:                                     ; preds = %3
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4043
  %28 = bitcast i8* %27 to i64*, !dbg !4044
  %29 = load i64, i64* %28, align 1, !dbg !4044, !tbaa !117
  br label %30, !dbg !4045

; <label>:30:                                     ; preds = %3, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %3 ], !dbg !4046
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #7, !dbg !4047
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4047
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4049, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4051
  br i1 %35, label %36, label %74, !dbg !4052

; <label>:36:                                     ; preds = %30
  %37 = icmp eq i32 %2, 0, !dbg !4053
  br i1 %37, label %78, label %38, !dbg !4056

; <label>:38:                                     ; preds = %36
  %39 = tail call i8* @zmalloc(i64 24) #7, !dbg !4057
  %40 = bitcast i8* %39 to %struct.streamConsumer*, !dbg !4057
  %41 = tail call i8* @sdsdup(i8* nonnull %1) #7, !dbg !4058
  %42 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !4059
  %43 = bitcast i8* %42 to i8**, !dbg !4059
  store i8* %41, i8** %43, align 8, !dbg !4060, !tbaa !2327
  %44 = tail call %struct.rax* @raxNew() #7, !dbg !4061
  %45 = getelementptr inbounds i8, i8* %39, i64 16, !dbg !4062
  %46 = bitcast i8* %45 to %struct.rax**, !dbg !4062
  store %struct.rax* %44, %struct.rax** %46, align 8, !dbg !4063, !tbaa !2633
  %47 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4064, !tbaa !159
  %48 = load i8, i8* %6, align 1, !dbg !4067, !tbaa !656
  %49 = trunc i8 %48 to i3, !dbg !4069
  switch i3 %49, label %71 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !4069

; <label>:50:                                     ; preds = %38
  %51 = lshr i8 %48, 3, !dbg !4070
  %52 = zext i8 %51 to i64, !dbg !4070
  br label %71, !dbg !4071

; <label>:53:                                     ; preds = %38
  %54 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4072
  %55 = load i8, i8* %54, align 1, !dbg !4073, !tbaa !656
  %56 = zext i8 %55 to i64, !dbg !4072
  br label %71, !dbg !4074

; <label>:57:                                     ; preds = %38
  %58 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4075
  %59 = bitcast i8* %58 to i16*, !dbg !4076
  %60 = load i16, i16* %59, align 1, !dbg !4076, !tbaa !667
  %61 = zext i16 %60 to i64, !dbg !4075
  br label %71, !dbg !4077

; <label>:62:                                     ; preds = %38
  %63 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4078
  %64 = bitcast i8* %63 to i32*, !dbg !4079
  %65 = load i32, i32* %64, align 1, !dbg !4079, !tbaa !672
  %66 = zext i32 %65 to i64, !dbg !4078
  br label %71, !dbg !4080

; <label>:67:                                     ; preds = %38
  %68 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4081
  %69 = bitcast i8* %68 to i64*, !dbg !4082
  %70 = load i64, i64* %69, align 1, !dbg !4082, !tbaa !117
  br label %71, !dbg !4083

; <label>:71:                                     ; preds = %38, %50, %53, %57, %62, %67
  %72 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], [ 0, %38 ], !dbg !4084
  %73 = tail call i32 @raxInsert(%struct.rax* %47, i8* nonnull %1, i64 %72, i8* %39, i8** null) #7, !dbg !4085
  br label %74, !dbg !4086

; <label>:74:                                     ; preds = %71, %30
  %75 = phi %struct.streamConsumer* [ %40, %71 ], [ %33, %30 ], !dbg !4087
  %76 = tail call i64 @mstime() #7, !dbg !4088
  %77 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %75, i64 0, i32 0, !dbg !4089
  store i64 %76, i64* %77, align 8, !dbg !4090, !tbaa !4091
  br label %78, !dbg !4092

; <label>:78:                                     ; preds = %36, %74
  %79 = phi %struct.streamConsumer* [ %75, %74 ], [ null, %36 ], !dbg !4093
  ret %struct.streamConsumer* %79, !dbg !4094
}

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @preventCommandPropagation(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeConsumer(%struct.streamConsumer*) #0 !dbg !4095 {
  %2 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 2, !dbg !4101
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !4101, !tbaa !2633
  tail call void @raxFree(%struct.rax* %3) #7, !dbg !4102
  %4 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 1, !dbg !4103
  %5 = load i8*, i8** %4, align 8, !dbg !4103, !tbaa !2327
  tail call void @sdsfree(i8* %5) #7, !dbg !4104
  %6 = bitcast %struct.streamConsumer* %0 to i8*, !dbg !4105
  tail call void @zfree(i8* %6) #7, !dbg !4106
  ret void, !dbg !4107
}

; Function Attrs: noredzone
declare dso_local void @raxFree(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamCreateCG(%struct.stream* nocapture, i8*, i64, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !4108 {
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !4121
  %6 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4121, !tbaa !123
  %7 = icmp eq %struct.rax* %6, null, !dbg !4123
  br i1 %7, label %8, label %10, !dbg !4124

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.rax* @raxNew() #7, !dbg !4125
  store %struct.rax* %9, %struct.rax** %5, align 8, !dbg !4126, !tbaa !123
  br label %10, !dbg !4127

; <label>:10:                                     ; preds = %8, %4
  %11 = phi %struct.rax* [ %9, %8 ], [ %6, %4 ], !dbg !4128
  %12 = tail call i8* @raxFind(%struct.rax* %11, i8* %1, i64 %2) #7, !dbg !4130
  %13 = load i8*, i8** @raxNotFound, align 8, !dbg !4131, !tbaa !234
  %14 = icmp eq i8* %12, %13, !dbg !4132
  br i1 %14, label %15, label %27, !dbg !4133

; <label>:15:                                     ; preds = %10
  %16 = tail call i8* @zmalloc(i64 32) #7, !dbg !4134
  %17 = bitcast i8* %16 to %struct.streamCG*, !dbg !4134
  %18 = tail call %struct.rax* @raxNew() #7, !dbg !4136
  %19 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !4137
  %20 = bitcast i8* %19 to %struct.rax**, !dbg !4137
  store %struct.rax* %18, %struct.rax** %20, align 8, !dbg !4138, !tbaa !155
  %21 = tail call %struct.rax* @raxNew() #7, !dbg !4139
  %22 = getelementptr inbounds i8, i8* %16, i64 24, !dbg !4140
  %23 = bitcast i8* %22 to %struct.rax**, !dbg !4140
  store %struct.rax* %21, %struct.rax** %23, align 8, !dbg !4141, !tbaa !159
  %24 = bitcast %struct.streamID* %3 to i8*, !dbg !4142
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %24, i64 16, i1 false), !dbg !4142, !tbaa.struct !1583
  %25 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4143, !tbaa !123
  %26 = tail call i32 @raxInsert(%struct.rax* %25, i8* %1, i64 %2, i8* %16, i8** null) #7, !dbg !4144
  br label %27

; <label>:27:                                     ; preds = %10, %15
  %28 = phi %struct.streamCG* [ %17, %15 ], [ null, %10 ], !dbg !4145
  ret %struct.streamCG* %28, !dbg !4146
}

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @streamDelConsumer(%struct.streamCG* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !4147 {
  %3 = alloca %struct.raxIterator, align 8
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4164
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4164, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4167
  %7 = load i8, i8* %6, align 1, !dbg !4167, !tbaa !656
  %8 = trunc i8 %7 to i3, !dbg !4169
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4169

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !4170
  %11 = zext i8 %10 to i64, !dbg !4170
  br label %30, !dbg !4171

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4172
  %14 = load i8, i8* %13, align 1, !dbg !4173, !tbaa !656
  %15 = zext i8 %14 to i64, !dbg !4172
  br label %30, !dbg !4174

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4175
  %18 = bitcast i8* %17 to i16*, !dbg !4176
  %19 = load i16, i16* %18, align 1, !dbg !4176, !tbaa !667
  %20 = zext i16 %19 to i64, !dbg !4175
  br label %30, !dbg !4177

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4178
  %23 = bitcast i8* %22 to i32*, !dbg !4179
  %24 = load i32, i32* %23, align 1, !dbg !4179, !tbaa !672
  %25 = zext i32 %24 to i64, !dbg !4178
  br label %30, !dbg !4180

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4181
  %28 = bitcast i8* %27 to i64*, !dbg !4182
  %29 = load i64, i64* %28, align 1, !dbg !4182, !tbaa !117
  br label %30, !dbg !4183

; <label>:30:                                     ; preds = %26, %21, %16, %12, %9, %2
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !4184
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #7, !dbg !4185
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4185
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4187, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4188
  br i1 %35, label %95, label %36, !dbg !4189

; <label>:36:                                     ; preds = %30
  %37 = tail call i64 @mstime() #7, !dbg !4190
  %38 = bitcast i8* %32 to i64*, !dbg !4191
  store i64 %37, i64* %38, align 8, !dbg !4192, !tbaa !4091
  %39 = icmp eq i8* %32, null, !dbg !4194
  br i1 %39, label %95, label %40, !dbg !4196

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !4197
  %42 = bitcast i8* %41 to %struct.rax**, !dbg !4197
  %43 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !4197, !tbaa !2633
  %44 = tail call i64 @raxSize(%struct.rax* %43) #7, !dbg !4198
  %45 = bitcast %struct.raxIterator* %3 to i8*, !dbg !4200
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %45) #8, !dbg !4200
  %46 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !4201, !tbaa !2633
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %46) #7, !dbg !4203
  %47 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !4204
  %48 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #7, !dbg !4205
  %49 = icmp eq i32 %48, 0, !dbg !4206
  br i1 %49, label %63, label %50, !dbg !4206

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %52 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 1
  %53 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 2
  %54 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 4
  br label %55, !dbg !4206

; <label>:55:                                     ; preds = %50, %55
  %56 = load i8*, i8** %51, align 8, !dbg !4207, !tbaa !516
  %57 = load %struct.rax*, %struct.rax** %52, align 8, !dbg !4209, !tbaa !155
  %58 = load i8*, i8** %53, align 8, !dbg !4210, !tbaa !686
  %59 = load i64, i64* %54, align 8, !dbg !4211, !tbaa !684
  %60 = call i32 @raxRemove(%struct.rax* %57, i8* %58, i64 %59, i8** null) #7, !dbg !4212
  call void @zfree(i8* %56) #7, !dbg !4215
  %61 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #7, !dbg !4205
  %62 = icmp eq i32 %61, 0, !dbg !4206
  br i1 %62, label %63, label %55, !dbg !4206, !llvm.loop !4216

; <label>:63:                                     ; preds = %55, %40
  call void @raxStop(%struct.raxIterator* nonnull %3) #7, !dbg !4218
  %64 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4219, !tbaa !159
  %65 = load i8, i8* %6, align 1, !dbg !4222, !tbaa !656
  %66 = trunc i8 %65 to i3, !dbg !4224
  switch i3 %66, label %88 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !4224

; <label>:67:                                     ; preds = %63
  %68 = lshr i8 %65, 3, !dbg !4225
  %69 = zext i8 %68 to i64, !dbg !4225
  br label %88, !dbg !4226

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4227
  %72 = load i8, i8* %71, align 1, !dbg !4228, !tbaa !656
  %73 = zext i8 %72 to i64, !dbg !4227
  br label %88, !dbg !4229

; <label>:74:                                     ; preds = %63
  %75 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4230
  %76 = bitcast i8* %75 to i16*, !dbg !4231
  %77 = load i16, i16* %76, align 1, !dbg !4231, !tbaa !667
  %78 = zext i16 %77 to i64, !dbg !4230
  br label %88, !dbg !4232

; <label>:79:                                     ; preds = %63
  %80 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4233
  %81 = bitcast i8* %80 to i32*, !dbg !4234
  %82 = load i32, i32* %81, align 1, !dbg !4234, !tbaa !672
  %83 = zext i32 %82 to i64, !dbg !4233
  br label %88, !dbg !4235

; <label>:84:                                     ; preds = %63
  %85 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4236
  %86 = bitcast i8* %85 to i64*, !dbg !4237
  %87 = load i64, i64* %86, align 1, !dbg !4237, !tbaa !117
  br label %88, !dbg !4238

; <label>:88:                                     ; preds = %63, %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], [ 0, %63 ], !dbg !4239
  %90 = call i32 @raxRemove(%struct.rax* %64, i8* nonnull %1, i64 %89, i8** null) #7, !dbg !4240
  %91 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !4243, !tbaa !2633
  call void @raxFree(%struct.rax* %91) #7, !dbg !4244
  %92 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !4245
  %93 = bitcast i8* %92 to i8**, !dbg !4245
  %94 = load i8*, i8** %93, align 8, !dbg !4245, !tbaa !2327
  call void @sdsfree(i8* %94) #7, !dbg !4246
  call void @zfree(i8* nonnull %32) #7, !dbg !4247
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %45) #8, !dbg !4248
  br label %95

; <label>:95:                                     ; preds = %30, %36, %88
  %96 = phi i64 [ %44, %88 ], [ 0, %36 ], [ 0, %30 ], !dbg !4249
  ret i64 %96, !dbg !4248
}

; Function Attrs: noredzone
declare dso_local i64 @raxSize(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xgroupCommand(%struct.client*) local_unnamed_addr #0 !dbg !4250 {
  %2 = alloca [7 x i8*], align 16
  %3 = alloca <2 x i64>, align 16
  %4 = bitcast <2 x i64>* %3 to %struct.streamID*
  %5 = alloca %struct.streamID, align 8
  %6 = bitcast [7 x i8*]* %2 to i8*, !dbg !4275
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #8, !dbg !4275
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 6
  %8 = bitcast i8** %7 to i64*, !dbg !4276
  store i64 0, i64* %8, align 16, !dbg !4276
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 0, !dbg !4276
  %10 = bitcast [7 x i8*]* %2 to <2 x i8*>*, !dbg !4276
  store <2 x i8*> <i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0)>, <2 x i8*>* %10, align 16, !dbg !4276
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 2, !dbg !4276
  %12 = bitcast i8** %11 to <2 x i8*>*, !dbg !4276
  store <2 x i8*> <i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !4276
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 4, !dbg !4276
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !4276
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !4276
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4280
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4280, !tbaa !3150
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !4281
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !4281, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4282
  %20 = load i8*, i8** %19, align 8, !dbg !4282, !tbaa !641
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4285
  %22 = load i32, i32* %21, align 8, !dbg !4285, !tbaa !3144
  %23 = icmp eq i32 %22, 6, !dbg !4287
  br i1 %23, label %24, label %35, !dbg !4288

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #11, !dbg !4289
  %26 = icmp eq i32 %25, 0, !dbg !4289
  br i1 %26, label %27, label %37, !dbg !4290

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 5, !dbg !4291
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !4291, !tbaa !234
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !4294
  %31 = load i8*, i8** %30, align 8, !dbg !4294, !tbaa !641
  %32 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !4295
  %33 = icmp eq i32 %32, 0, !dbg !4295
  br i1 %33, label %37, label %34, !dbg !4296

; <label>:34:                                     ; preds = %27
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !4297
  br label %324, !dbg !4299

; <label>:35:                                     ; preds = %1
  %36 = icmp sgt i32 %22, 3, !dbg !4300
  br i1 %36, label %37, label %115, !dbg !4302

; <label>:37:                                     ; preds = %27, %24, %35
  %38 = phi i32 [ 0, %35 ], [ 0, %24 ], [ 1, %27 ]
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4303
  %40 = load %struct.redisDb*, %struct.redisDb** %39, align 8, !dbg !4303, !tbaa !2394
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !4305
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !4305, !tbaa !234
  %43 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %40, %struct.redisObject* %42) #7, !dbg !4306
  %44 = icmp eq %struct.redisObject* %43, null, !dbg !4308
  br i1 %44, label %52, label %45, !dbg !4310

; <label>:45:                                     ; preds = %37
  %46 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %43, i32 6) #7, !dbg !4311
  %47 = icmp eq i32 %46, 0, !dbg !4311
  br i1 %47, label %48, label %324, !dbg !4314

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !4315
  %50 = bitcast i8** %49 to %struct.stream**, !dbg !4315
  %51 = load %struct.stream*, %struct.stream** %50, align 8, !dbg !4315, !tbaa !641
  br label %52, !dbg !4316

; <label>:52:                                     ; preds = %48, %37
  %53 = phi %struct.stream* [ %51, %48 ], [ null, %37 ], !dbg !4317
  %54 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4318, !tbaa !3150
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 3, !dbg !4319
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !4319, !tbaa !234
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !4320
  %58 = load i8*, i8** %57, align 8, !dbg !4320, !tbaa !641
  %59 = load i32, i32* %21, align 8, !dbg !4321, !tbaa !3144
  %60 = icmp slt i32 %59, 4, !dbg !4323
  %61 = icmp ne i32 %38, 0, !dbg !4324
  %62 = or i1 %61, %60, !dbg !4325
  br i1 %62, label %115, label %63, !dbg !4325

; <label>:63:                                     ; preds = %52
  %64 = icmp eq %struct.stream* %53, null, !dbg !4326
  br i1 %64, label %65, label %66, !dbg !4329

; <label>:65:                                     ; preds = %63
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !4330
  br label %324, !dbg !4332

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %53, i64 0, i32 3, !dbg !4337
  %68 = load %struct.rax*, %struct.rax** %67, align 8, !dbg !4337, !tbaa !123
  %69 = icmp eq %struct.rax* %68, null, !dbg !4338
  br i1 %69, label %103, label %70, !dbg !4339

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !4342
  %72 = load i8, i8* %71, align 1, !dbg !4342, !tbaa !656
  %73 = trunc i8 %72 to i3, !dbg !4344
  switch i3 %73, label %95 [
    i3 0, label %74
    i3 1, label %77
    i3 2, label %81
    i3 3, label %86
    i3 -4, label %91
  ], !dbg !4344

; <label>:74:                                     ; preds = %70
  %75 = lshr i8 %72, 3, !dbg !4345
  %76 = zext i8 %75 to i64, !dbg !4345
  br label %95, !dbg !4346

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds i8, i8* %58, i64 -3, !dbg !4347
  %79 = load i8, i8* %78, align 1, !dbg !4348, !tbaa !656
  %80 = zext i8 %79 to i64, !dbg !4347
  br label %95, !dbg !4349

; <label>:81:                                     ; preds = %70
  %82 = getelementptr inbounds i8, i8* %58, i64 -5, !dbg !4350
  %83 = bitcast i8* %82 to i16*, !dbg !4351
  %84 = load i16, i16* %83, align 1, !dbg !4351, !tbaa !667
  %85 = zext i16 %84 to i64, !dbg !4350
  br label %95, !dbg !4352

; <label>:86:                                     ; preds = %70
  %87 = getelementptr inbounds i8, i8* %58, i64 -9, !dbg !4353
  %88 = bitcast i8* %87 to i32*, !dbg !4354
  %89 = load i32, i32* %88, align 1, !dbg !4354, !tbaa !672
  %90 = zext i32 %89 to i64, !dbg !4353
  br label %95, !dbg !4355

; <label>:91:                                     ; preds = %70
  %92 = getelementptr inbounds i8, i8* %58, i64 -17, !dbg !4356
  %93 = bitcast i8* %92 to i64*, !dbg !4357
  %94 = load i64, i64* %93, align 1, !dbg !4357, !tbaa !117
  br label %95, !dbg !4358

; <label>:95:                                     ; preds = %91, %86, %81, %77, %74, %70
  %96 = phi i64 [ %94, %91 ], [ %90, %86 ], [ %85, %81 ], [ %80, %77 ], [ %76, %74 ], [ 0, %70 ], !dbg !4359
  %97 = tail call i8* @raxFind(%struct.rax* nonnull %68, i8* nonnull %58, i64 %96) #7, !dbg !4360
  %98 = bitcast i8* %97 to %struct.streamCG*, !dbg !4360
  %99 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4362, !tbaa !234
  %100 = icmp eq %struct.streamCG* %99, %98, !dbg !4363
  %101 = icmp eq i8* %97, null, !dbg !4364
  %102 = or i1 %101, %100
  br i1 %102, label %103, label %115

; <label>:103:                                    ; preds = %95, %66
  %104 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !4365
  %105 = icmp eq i32 %104, 0, !dbg !4365
  br i1 %105, label %109, label %106, !dbg !4366

; <label>:106:                                    ; preds = %103
  %107 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !4367
  %108 = icmp eq i32 %107, 0, !dbg !4367
  br i1 %108, label %109, label %115, !dbg !4368

; <label>:109:                                    ; preds = %106, %103
  %110 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4369, !tbaa !3150
  %111 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %110, i64 2, !dbg !4371
  %112 = load %struct.redisObject*, %struct.redisObject** %111, align 8, !dbg !4371, !tbaa !234
  %113 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %112, i64 0, i32 2, !dbg !4372
  %114 = load i8*, i8** %113, align 8, !dbg !4372, !tbaa !641
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %58, i8* %114) #7, !dbg !4373
  br label %324, !dbg !4374

; <label>:115:                                    ; preds = %35, %95, %106, %52
  %116 = phi i1 [ %61, %52 ], [ %61, %106 ], [ %61, %95 ], [ false, %35 ]
  %117 = phi %struct.stream* [ %53, %52 ], [ %53, %106 ], [ %53, %95 ], [ null, %35 ]
  %118 = phi i8* [ %58, %52 ], [ %58, %106 ], [ %58, %95 ], [ null, %35 ]
  %119 = phi i8* [ null, %52 ], [ null, %106 ], [ %97, %95 ], [ null, %35 ], !dbg !4375
  %120 = phi %struct.streamCG* [ null, %52 ], [ null, %106 ], [ %98, %95 ], [ null, %35 ], !dbg !4375
  %121 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #11, !dbg !4376
  %122 = icmp eq i32 %121, 0, !dbg !4376
  br i1 %122, label %123, label %206, !dbg !4377

; <label>:123:                                    ; preds = %115
  %124 = load i32, i32* %21, align 8, !dbg !4378, !tbaa !3144
  %125 = add i32 %124, -5, !dbg !4379
  %126 = icmp ult i32 %125, 2, !dbg !4379
  br i1 %126, label %127, label %206, !dbg !4379

; <label>:127:                                    ; preds = %123
  %128 = bitcast <2 x i64>* %3 to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %128) #8, !dbg !4380
  %129 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4381, !tbaa !3150
  %130 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 4, !dbg !4383
  %131 = load %struct.redisObject*, %struct.redisObject** %130, align 8, !dbg !4383, !tbaa !234
  %132 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %131, i64 0, i32 2, !dbg !4384
  %133 = load i8*, i8** %132, align 8, !dbg !4384, !tbaa !641
  %134 = tail call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4385
  %135 = icmp eq i32 %134, 0, !dbg !4385
  br i1 %135, label %136, label %142, !dbg !4386

; <label>:136:                                    ; preds = %127
  %137 = icmp eq %struct.stream* %117, null, !dbg !4387
  br i1 %137, label %141, label %138, !dbg !4390

; <label>:138:                                    ; preds = %136
  %139 = getelementptr inbounds %struct.stream, %struct.stream* %117, i64 0, i32 2, !dbg !4391
  %140 = bitcast %struct.streamID* %139 to i8*, !dbg !4391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %128, i8* nonnull align 8 %140, i64 16, i1 false), !dbg !4391, !tbaa.struct !1583
  br label %162, !dbg !4393

; <label>:141:                                    ; preds = %136
  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16, !dbg !4394, !tbaa !117
  br label %150, !dbg !4393

; <label>:142:                                    ; preds = %127
  %143 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4396, !tbaa !3150
  %144 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %143, i64 4, !dbg !4398
  %145 = load %struct.redisObject*, %struct.redisObject** %144, align 8, !dbg !4398, !tbaa !234
  %146 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %145, %struct.streamID* nonnull %4, i64 0, i32 1) #7, !dbg !4405
  %147 = icmp eq i32 %146, 0, !dbg !4406
  br i1 %147, label %148, label %323, !dbg !4407

; <label>:148:                                    ; preds = %142
  %149 = icmp eq %struct.stream* %117, null, !dbg !4408
  br i1 %149, label %150, label %162, !dbg !4393

; <label>:150:                                    ; preds = %141, %148
  br i1 %116, label %152, label %151, !dbg !4410

; <label>:151:                                    ; preds = %150
  tail call void @_serverAssert(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 1781) #7, !dbg !4410
  tail call void @_exit(i32 1) #9, !dbg !4410
  unreachable, !dbg !4410

; <label>:152:                                    ; preds = %150
  %153 = tail call %struct.redisObject* @createStreamObject() #7, !dbg !4412
  %154 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4413
  %155 = load %struct.redisDb*, %struct.redisDb** %154, align 8, !dbg !4413, !tbaa !2394
  %156 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4414, !tbaa !3150
  %157 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %156, i64 2, !dbg !4415
  %158 = load %struct.redisObject*, %struct.redisObject** %157, align 8, !dbg !4415, !tbaa !234
  tail call void @dbAdd(%struct.redisDb* %155, %struct.redisObject* %158, %struct.redisObject* %153) #7, !dbg !4416
  %159 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %153, i64 0, i32 2, !dbg !4417
  %160 = bitcast i8** %159 to %struct.stream**, !dbg !4417
  %161 = load %struct.stream*, %struct.stream** %160, align 8, !dbg !4417, !tbaa !641
  br label %162, !dbg !4418

; <label>:162:                                    ; preds = %138, %152, %148
  %163 = phi %struct.stream* [ %161, %152 ], [ %117, %148 ], [ %117, %138 ], !dbg !4419
  %164 = getelementptr inbounds i8, i8* %118, i64 -1, !dbg !4422
  %165 = load i8, i8* %164, align 1, !dbg !4422, !tbaa !656
  %166 = trunc i8 %165 to i3, !dbg !4424
  switch i3 %166, label %188 [
    i3 0, label %167
    i3 1, label %170
    i3 2, label %174
    i3 3, label %179
    i3 -4, label %184
  ], !dbg !4424

; <label>:167:                                    ; preds = %162
  %168 = lshr i8 %165, 3, !dbg !4425
  %169 = zext i8 %168 to i64, !dbg !4425
  br label %188, !dbg !4426

; <label>:170:                                    ; preds = %162
  %171 = getelementptr inbounds i8, i8* %118, i64 -3, !dbg !4427
  %172 = load i8, i8* %171, align 1, !dbg !4428, !tbaa !656
  %173 = zext i8 %172 to i64, !dbg !4427
  br label %188, !dbg !4429

; <label>:174:                                    ; preds = %162
  %175 = getelementptr inbounds i8, i8* %118, i64 -5, !dbg !4430
  %176 = bitcast i8* %175 to i16*, !dbg !4431
  %177 = load i16, i16* %176, align 1, !dbg !4431, !tbaa !667
  %178 = zext i16 %177 to i64, !dbg !4430
  br label %188, !dbg !4432

; <label>:179:                                    ; preds = %162
  %180 = getelementptr inbounds i8, i8* %118, i64 -9, !dbg !4433
  %181 = bitcast i8* %180 to i32*, !dbg !4434
  %182 = load i32, i32* %181, align 1, !dbg !4434, !tbaa !672
  %183 = zext i32 %182 to i64, !dbg !4433
  br label %188, !dbg !4435

; <label>:184:                                    ; preds = %162
  %185 = getelementptr inbounds i8, i8* %118, i64 -17, !dbg !4436
  %186 = bitcast i8* %185 to i64*, !dbg !4437
  %187 = load i64, i64* %186, align 1, !dbg !4437, !tbaa !117
  br label %188, !dbg !4438

; <label>:188:                                    ; preds = %162, %167, %170, %174, %179, %184
  %189 = phi i64 [ %187, %184 ], [ %183, %179 ], [ %178, %174 ], [ %173, %170 ], [ %169, %167 ], [ 0, %162 ], !dbg !4439
  %190 = call %struct.streamCG* @streamCreateCG(%struct.stream* %163, i8* nonnull %118, i64 %189, %struct.streamID* nonnull %4) #10, !dbg !4440
  %191 = icmp eq %struct.streamCG* %190, null, !dbg !4442
  br i1 %191, label %203, label %192, !dbg !4444

; <label>:192:                                    ; preds = %188
  %193 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4445, !tbaa !4447
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %193) #7, !dbg !4448
  %194 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4449, !tbaa !3277
  %195 = add nsw i64 %194, 1, !dbg !4449
  store i64 %195, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4449, !tbaa !3277
  %196 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4450, !tbaa !3150
  %197 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %196, i64 2, !dbg !4451
  %198 = load %struct.redisObject*, %struct.redisObject** %197, align 8, !dbg !4451, !tbaa !234
  %199 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4452
  %200 = load %struct.redisDb*, %struct.redisDb** %199, align 8, !dbg !4452, !tbaa !2394
  %201 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %200, i64 0, i32 5, !dbg !4453
  %202 = load i32, i32* %201, align 8, !dbg !4453, !tbaa !2399
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), %struct.redisObject* %198, i32 %202) #7, !dbg !4454
  br label %205, !dbg !4455

; <label>:203:                                    ; preds = %188
  %204 = tail call i8* @sdsnew(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i64 0, i64 0)) #7, !dbg !4456
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %204) #7, !dbg !4458
  br label %205

; <label>:205:                                    ; preds = %192, %203
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %128) #8, !dbg !4459
  br label %324

; <label>:206:                                    ; preds = %123, %115
  %207 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !4460
  %208 = icmp eq i32 %207, 0, !dbg !4460
  br i1 %208, label %209, label %242, !dbg !4461

; <label>:209:                                    ; preds = %206
  %210 = load i32, i32* %21, align 8, !dbg !4462, !tbaa !3144
  %211 = icmp eq i32 %210, 5, !dbg !4463
  br i1 %211, label %212, label %242, !dbg !4464

; <label>:212:                                    ; preds = %209
  %213 = bitcast %struct.streamID* %5 to i8*, !dbg !4465
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %213) #8, !dbg !4465
  %214 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4466, !tbaa !3150
  %215 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %214, i64 4, !dbg !4468
  %216 = load %struct.redisObject*, %struct.redisObject** %215, align 8, !dbg !4468, !tbaa !234
  %217 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %216, i64 0, i32 2, !dbg !4469
  %218 = load i8*, i8** %217, align 8, !dbg !4469, !tbaa !641
  %219 = tail call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4470
  %220 = icmp eq i32 %219, 0, !dbg !4470
  br i1 %220, label %221, label %224, !dbg !4471

; <label>:221:                                    ; preds = %212
  %222 = getelementptr inbounds %struct.stream, %struct.stream* %117, i64 0, i32 2, !dbg !4472
  %223 = bitcast %struct.streamID* %222 to i8*, !dbg !4472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %213, i8* nonnull align 8 %223, i64 16, i1 false), !dbg !4472, !tbaa.struct !1583
  br label %230, !dbg !4474

; <label>:224:                                    ; preds = %212
  %225 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4475, !tbaa !3150
  %226 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %225, i64 4, !dbg !4477
  %227 = load %struct.redisObject*, %struct.redisObject** %226, align 8, !dbg !4477, !tbaa !234
  %228 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %227, %struct.streamID* nonnull %5, i64 0, i32 0) #7, !dbg !4484
  %229 = icmp eq i32 %228, 0, !dbg !4485
  br i1 %229, label %230, label %241, !dbg !4486

; <label>:230:                                    ; preds = %224, %221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* nonnull align 8 %213, i64 16, i1 false), !dbg !4487, !tbaa.struct !1583
  %231 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4488, !tbaa !4447
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %231) #7, !dbg !4489
  %232 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4490, !tbaa !3277
  %233 = add nsw i64 %232, 1, !dbg !4490
  store i64 %233, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4490, !tbaa !3277
  %234 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4491, !tbaa !3150
  %235 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %234, i64 2, !dbg !4492
  %236 = load %struct.redisObject*, %struct.redisObject** %235, align 8, !dbg !4492, !tbaa !234
  %237 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4493
  %238 = load %struct.redisDb*, %struct.redisDb** %237, align 8, !dbg !4493, !tbaa !2394
  %239 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %238, i64 0, i32 5, !dbg !4494
  %240 = load i32, i32* %239, align 8, !dbg !4494, !tbaa !2399
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), %struct.redisObject* %236, i32 %240) #7, !dbg !4495
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %213) #8, !dbg !4496
  br label %324

; <label>:241:                                    ; preds = %224
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %213) #8, !dbg !4496
  br label %324

; <label>:242:                                    ; preds = %206, %209
  %243 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)) #11, !dbg !4497
  %244 = icmp eq i32 %243, 0, !dbg !4497
  br i1 %244, label %245, label %296, !dbg !4498

; <label>:245:                                    ; preds = %242
  %246 = load i32, i32* %21, align 8, !dbg !4499, !tbaa !3144
  %247 = icmp eq i32 %246, 4, !dbg !4500
  br i1 %247, label %248, label %296, !dbg !4501

; <label>:248:                                    ; preds = %245
  %249 = icmp eq %struct.streamCG* %120, null, !dbg !4502
  br i1 %249, label %294, label %250, !dbg !4505

; <label>:250:                                    ; preds = %248
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %117, i64 0, i32 3, !dbg !4506
  %252 = load %struct.rax*, %struct.rax** %251, align 8, !dbg !4506, !tbaa !123
  %253 = getelementptr inbounds i8, i8* %118, i64 -1, !dbg !4510
  %254 = load i8, i8* %253, align 1, !dbg !4510, !tbaa !656
  %255 = trunc i8 %254 to i3, !dbg !4512
  switch i3 %255, label %277 [
    i3 0, label %256
    i3 1, label %259
    i3 2, label %263
    i3 3, label %268
    i3 -4, label %273
  ], !dbg !4512

; <label>:256:                                    ; preds = %250
  %257 = lshr i8 %254, 3, !dbg !4513
  %258 = zext i8 %257 to i64, !dbg !4513
  br label %277, !dbg !4514

; <label>:259:                                    ; preds = %250
  %260 = getelementptr inbounds i8, i8* %118, i64 -3, !dbg !4515
  %261 = load i8, i8* %260, align 1, !dbg !4516, !tbaa !656
  %262 = zext i8 %261 to i64, !dbg !4515
  br label %277, !dbg !4517

; <label>:263:                                    ; preds = %250
  %264 = getelementptr inbounds i8, i8* %118, i64 -5, !dbg !4518
  %265 = bitcast i8* %264 to i16*, !dbg !4519
  %266 = load i16, i16* %265, align 1, !dbg !4519, !tbaa !667
  %267 = zext i16 %266 to i64, !dbg !4518
  br label %277, !dbg !4520

; <label>:268:                                    ; preds = %250
  %269 = getelementptr inbounds i8, i8* %118, i64 -9, !dbg !4521
  %270 = bitcast i8* %269 to i32*, !dbg !4522
  %271 = load i32, i32* %270, align 1, !dbg !4522, !tbaa !672
  %272 = zext i32 %271 to i64, !dbg !4521
  br label %277, !dbg !4523

; <label>:273:                                    ; preds = %250
  %274 = getelementptr inbounds i8, i8* %118, i64 -17, !dbg !4524
  %275 = bitcast i8* %274 to i64*, !dbg !4525
  %276 = load i64, i64* %275, align 1, !dbg !4525, !tbaa !117
  br label %277, !dbg !4526

; <label>:277:                                    ; preds = %250, %256, %259, %263, %268, %273
  %278 = phi i64 [ %276, %273 ], [ %272, %268 ], [ %267, %263 ], [ %262, %259 ], [ %258, %256 ], [ 0, %250 ], !dbg !4527
  %279 = tail call i32 @raxRemove(%struct.rax* %252, i8* nonnull %118, i64 %278, i8** null) #7, !dbg !4528
  %280 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %120, i64 0, i32 1, !dbg !4531
  %281 = load %struct.rax*, %struct.rax** %280, align 8, !dbg !4531, !tbaa !155
  tail call void @raxFreeWithCallback(%struct.rax* %281, void (i8*)* bitcast (void (%struct.streamNACK*)* @streamFreeNACK to void (i8*)*)) #7, !dbg !4532
  %282 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %120, i64 0, i32 2, !dbg !4533
  %283 = load %struct.rax*, %struct.rax** %282, align 8, !dbg !4533, !tbaa !159
  tail call void @raxFreeWithCallback(%struct.rax* %283, void (i8*)* bitcast (void (%struct.streamConsumer*)* @streamFreeConsumer to void (i8*)*)) #7, !dbg !4534
  tail call void @zfree(i8* %119) #7, !dbg !4535
  %284 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !4536, !tbaa !4537
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %284) #7, !dbg !4538
  %285 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4539, !tbaa !3277
  %286 = add nsw i64 %285, 1, !dbg !4539
  store i64 %286, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4539, !tbaa !3277
  %287 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4540, !tbaa !3150
  %288 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %287, i64 2, !dbg !4541
  %289 = load %struct.redisObject*, %struct.redisObject** %288, align 8, !dbg !4541, !tbaa !234
  %290 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4542
  %291 = load %struct.redisDb*, %struct.redisDb** %290, align 8, !dbg !4542, !tbaa !2394
  %292 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %291, i64 0, i32 5, !dbg !4543
  %293 = load i32, i32* %292, align 8, !dbg !4543, !tbaa !2399
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), %struct.redisObject* %289, i32 %293) #7, !dbg !4544
  br label %324, !dbg !4545

; <label>:294:                                    ; preds = %248
  %295 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4546, !tbaa !3468
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %295) #7, !dbg !4548
  br label %324

; <label>:296:                                    ; preds = %242, %245
  %297 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !4549
  %298 = icmp eq i32 %297, 0, !dbg !4549
  br i1 %298, label %299, label %318, !dbg !4550

; <label>:299:                                    ; preds = %296
  %300 = load i32, i32* %21, align 8, !dbg !4551, !tbaa !3144
  %301 = icmp eq i32 %300, 5, !dbg !4552
  br i1 %301, label %302, label %318, !dbg !4553

; <label>:302:                                    ; preds = %299
  %303 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4554, !tbaa !3150
  %304 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %303, i64 4, !dbg !4555
  %305 = load %struct.redisObject*, %struct.redisObject** %304, align 8, !dbg !4555, !tbaa !234
  %306 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %305, i64 0, i32 2, !dbg !4556
  %307 = load i8*, i8** %306, align 8, !dbg !4556, !tbaa !641
  %308 = tail call i64 @streamDelConsumer(%struct.streamCG* %120, i8* %307) #10, !dbg !4557
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %308) #7, !dbg !4559
  %309 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4560, !tbaa !3277
  %310 = add nsw i64 %309, 1, !dbg !4560
  store i64 %310, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4560, !tbaa !3277
  %311 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4561, !tbaa !3150
  %312 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %311, i64 2, !dbg !4562
  %313 = load %struct.redisObject*, %struct.redisObject** %312, align 8, !dbg !4562, !tbaa !234
  %314 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4563
  %315 = load %struct.redisDb*, %struct.redisDb** %314, align 8, !dbg !4563, !tbaa !2394
  %316 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %315, i64 0, i32 5, !dbg !4564
  %317 = load i32, i32* %316, align 8, !dbg !4564, !tbaa !2399
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), %struct.redisObject* %313, i32 %317) #7, !dbg !4565
  br label %324, !dbg !4566

; <label>:318:                                    ; preds = %296, %299
  %319 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #11, !dbg !4567
  %320 = icmp eq i32 %319, 0, !dbg !4567
  br i1 %320, label %321, label %322, !dbg !4569

; <label>:321:                                    ; preds = %318
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %9) #7, !dbg !4570
  br label %324, !dbg !4572

; <label>:322:                                    ; preds = %318
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !4573
  br label %324

; <label>:323:                                    ; preds = %142
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %128) #8, !dbg !4459
  br label %324

; <label>:324:                                    ; preds = %294, %277, %321, %322, %302, %205, %230, %241, %323, %45, %109, %65, %34
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #8, !dbg !4575
  ret void, !dbg !4575
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xsetidCommand(%struct.client*) local_unnamed_addr #0 !dbg !4576 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamIterator, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4588
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4588, !tbaa !3150
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !4589
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !4589, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !4590, !tbaa !4591
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #7, !dbg !4592
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4594
  br i1 %12, label %76, label %13, !dbg !4596

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #7, !dbg !4597
  %15 = icmp eq i32 %14, 0, !dbg !4597
  br i1 %15, label %16, label %76, !dbg !4598

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4599
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4599
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4599, !tbaa !641
  %20 = bitcast %struct.streamID* %2 to i8*, !dbg !4601
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #8, !dbg !4601
  %21 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4602, !tbaa !3150
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !4604
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !4604, !tbaa !234
  %24 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.streamID* nonnull %2, i64 0, i32 1) #7, !dbg !4611
  %25 = icmp eq i32 %24, 0, !dbg !4612
  br i1 %25, label %26, label %75, !dbg !4613

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 1, !dbg !4614
  %28 = load i64, i64* %27, align 8, !dbg !4614, !tbaa !935
  %29 = icmp eq i64 %28, 0, !dbg !4615
  br i1 %29, label %62, label %30, !dbg !4616

; <label>:30:                                     ; preds = %26
  %31 = bitcast %struct.streamID* %3 to i8*, !dbg !4617
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #8, !dbg !4617
  %32 = bitcast %struct.streamIterator* %4 to i8*, !dbg !4618
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %32) #8, !dbg !4618
  %33 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 7, i64 0, !dbg !4626
  %34 = bitcast i64* %33 to <2 x i64>*, !dbg !4627
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 8, !dbg !4627, !tbaa !117
  %35 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 8, i64 0, !dbg !4628
  %36 = bitcast i64* %35 to <2 x i64>*, !dbg !4629
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %36, align 8, !dbg !4629, !tbaa !117
  %37 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 9, !dbg !4630
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 0, !dbg !4631
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !4631, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %37, %struct.rax* %39) #7, !dbg !4632
  %40 = call i32 @raxSeek(%struct.raxIterator* nonnull %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #7, !dbg !4633
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 0, !dbg !4634
  store %struct.stream* %19, %struct.stream** %41, align 8, !dbg !4635, !tbaa !1334
  %42 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 10, !dbg !4636
  %43 = bitcast i8** %42 to <2 x i8*>*, !dbg !4637
  store <2 x i8*> zeroinitializer, <2 x i8*>* %43, align 8, !dbg !4637, !tbaa !234
  %44 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 6, !dbg !4638
  store i32 1, i32* %44, align 4, !dbg !4639, !tbaa !1340
  %45 = bitcast i64* %5 to i8*, !dbg !4640
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #8, !dbg !4640
  %46 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %3, i64* nonnull %5) #10, !dbg !4643
  call void @raxStop(%struct.raxIterator* nonnull %37) #7, !dbg !4646
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !4651
  %48 = load i64, i64* %47, align 8, !dbg !4651, !tbaa !178
  %49 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !4652
  %50 = load i64, i64* %49, align 8, !dbg !4652, !tbaa !178
  %51 = icmp ugt i64 %48, %50, !dbg !4653
  br i1 %51, label %61, label %52, !dbg !4654

; <label>:52:                                     ; preds = %30
  %53 = icmp ult i64 %48, %50, !dbg !4655
  br i1 %53, label %60, label %54, !dbg !4656

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !4657
  %56 = load i64, i64* %55, align 8, !dbg !4657, !tbaa !188
  %57 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !4658
  %58 = load i64, i64* %57, align 8, !dbg !4658, !tbaa !188
  %59 = icmp ult i64 %56, %58, !dbg !4659
  br i1 %59, label %60, label %61, !dbg !4660

; <label>:60:                                     ; preds = %54, %52
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.61, i64 0, i64 0)) #7, !dbg !4661
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #8, !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #8, !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8, !dbg !4663
  br label %75

; <label>:61:                                     ; preds = %54, %30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #8, !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #8, !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8, !dbg !4663
  br label %62

; <label>:62:                                     ; preds = %61, %26
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 2, !dbg !4664
  %64 = bitcast %struct.streamID* %63 to i8*, !dbg !4665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %64, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !4665, !tbaa.struct !1583
  %65 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4666, !tbaa !4447
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %65) #7, !dbg !4667
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4668, !tbaa !3277
  %67 = add nsw i64 %66, 1, !dbg !4668
  store i64 %67, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4668, !tbaa !3277
  %68 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4669, !tbaa !3150
  %69 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %68, i64 1, !dbg !4670
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !4670, !tbaa !234
  %71 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4671
  %72 = load %struct.redisDb*, %struct.redisDb** %71, align 8, !dbg !4671, !tbaa !2394
  %73 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %72, i64 0, i32 5, !dbg !4672
  %74 = load i32, i32* %73, align 8, !dbg !4672, !tbaa !2399
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), %struct.redisObject* %70, i32 %74) #7, !dbg !4673
  br label %75, !dbg !4674

; <label>:75:                                     ; preds = %60, %16, %62
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #8, !dbg !4674
  br label %76

; <label>:76:                                     ; preds = %1, %13, %75
  ret void, !dbg !4674
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xackCommand(%struct.client*) local_unnamed_addr #0 !dbg !4675 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca [16 x i8], align 16
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4692
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !4692, !tbaa !2394
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4693
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4693, !tbaa !3150
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !4694
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !4694, !tbaa !234
  %11 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %6, %struct.redisObject* %10) #7, !dbg !4695
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4697
  br i1 %12, label %75, label %13, !dbg !4699

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #7, !dbg !4700
  %15 = icmp eq i32 %14, 0, !dbg !4700
  br i1 %15, label %16, label %118, !dbg !4703

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4704
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4704
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4704, !tbaa !641
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4705, !tbaa !3150
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4706
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4706, !tbaa !234
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !4707
  %24 = load i8*, i8** %23, align 8, !dbg !4707, !tbaa !641
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 3, !dbg !4711
  %26 = load %struct.rax*, %struct.rax** %25, align 8, !dbg !4711, !tbaa !123
  %27 = icmp eq %struct.rax* %26, null, !dbg !4712
  br i1 %27, label %75, label %28, !dbg !4713

; <label>:28:                                     ; preds = %16
  %29 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !4716
  %30 = load i8, i8* %29, align 1, !dbg !4716, !tbaa !656
  %31 = trunc i8 %30 to i3, !dbg !4718
  switch i3 %31, label %53 [
    i3 0, label %32
    i3 1, label %35
    i3 2, label %39
    i3 3, label %44
    i3 -4, label %49
  ], !dbg !4718

; <label>:32:                                     ; preds = %28
  %33 = lshr i8 %30, 3, !dbg !4719
  %34 = zext i8 %33 to i64, !dbg !4719
  br label %53, !dbg !4720

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !4721
  %37 = load i8, i8* %36, align 1, !dbg !4722, !tbaa !656
  %38 = zext i8 %37 to i64, !dbg !4721
  br label %53, !dbg !4723

; <label>:39:                                     ; preds = %28
  %40 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !4724
  %41 = bitcast i8* %40 to i16*, !dbg !4725
  %42 = load i16, i16* %41, align 1, !dbg !4725, !tbaa !667
  %43 = zext i16 %42 to i64, !dbg !4724
  br label %53, !dbg !4726

; <label>:44:                                     ; preds = %28
  %45 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !4727
  %46 = bitcast i8* %45 to i32*, !dbg !4728
  %47 = load i32, i32* %46, align 1, !dbg !4728, !tbaa !672
  %48 = zext i32 %47 to i64, !dbg !4727
  br label %53, !dbg !4729

; <label>:49:                                     ; preds = %28
  %50 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !4730
  %51 = bitcast i8* %50 to i64*, !dbg !4731
  %52 = load i64, i64* %51, align 1, !dbg !4731, !tbaa !117
  br label %53, !dbg !4732

; <label>:53:                                     ; preds = %28, %32, %35, %39, %44, %49
  %54 = phi i64 [ %52, %49 ], [ %48, %44 ], [ %43, %39 ], [ %38, %35 ], [ %34, %32 ], [ 0, %28 ], !dbg !4733
  %55 = tail call i8* @raxFind(%struct.rax* nonnull %26, i8* nonnull %24, i64 %54) #7, !dbg !4734
  %56 = bitcast i8* %55 to %struct.streamCG*, !dbg !4734
  %57 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4736, !tbaa !234
  %58 = icmp eq %struct.streamCG* %57, %56, !dbg !4737
  %59 = icmp eq i8* %55, null, !dbg !4738
  %60 = or i1 %58, %59, !dbg !4738
  br i1 %60, label %75, label %61, !dbg !4740

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4743
  %63 = load i32, i32* %62, align 8, !dbg !4743, !tbaa !3144
  %64 = icmp sgt i32 %63, 3, !dbg !4744
  br i1 %64, label %65, label %115, !dbg !4745

; <label>:65:                                     ; preds = %61
  %66 = bitcast %struct.streamID* %3 to i8*
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %68 = bitcast [2 x i64]* %2 to i8*
  %69 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %71 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %73 = getelementptr inbounds i8, i8* %55, i64 16
  %74 = bitcast i8* %73 to %struct.rax**
  br label %77, !dbg !4745

; <label>:75:                                     ; preds = %16, %1, %53
  %76 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4746, !tbaa !3468
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %76) #7, !dbg !4748
  br label %118, !dbg !4749

; <label>:77:                                     ; preds = %65, %108
  %78 = phi i64 [ 3, %65 ], [ %110, %108 ]
  %79 = phi i32 [ 0, %65 ], [ %109, %108 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %66) #8, !dbg !4750
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #8, !dbg !4751
  %80 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4753, !tbaa !3150
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 %78, !dbg !4755
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !4755, !tbaa !234
  %83 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %82, %struct.streamID* nonnull %3, i64 0, i32 1) #7, !dbg !4762
  %84 = icmp eq i32 %83, 0, !dbg !4763
  br i1 %84, label %85, label %114, !dbg !4764

; <label>:85:                                     ; preds = %77
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #8, !dbg !4767
  %86 = load i64, i64* %69, align 8, !dbg !4768, !tbaa !178
  %87 = call i64 @intrev64(i64 %86) #7, !dbg !4768
  store i64 %87, i64* %70, align 16, !dbg !4769, !tbaa !117
  %88 = load i64, i64* %71, align 8, !dbg !4770, !tbaa !188
  %89 = call i64 @intrev64(i64 %88) #7, !dbg !4770
  store i64 %89, i64* %72, align 8, !dbg !4771, !tbaa !117
  %90 = call i8* @memcpy(i8* nonnull %67, i8* nonnull %68, i64 16) #7, !dbg !4772
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #8, !dbg !4773
  %91 = load %struct.rax*, %struct.rax** %74, align 8, !dbg !4774, !tbaa !155
  %92 = call i8* @raxFind(%struct.rax* %91, i8* nonnull %67, i64 16) #7, !dbg !4775
  %93 = bitcast i8* %92 to %struct.streamNACK*, !dbg !4775
  %94 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !4777, !tbaa !234
  %95 = icmp eq %struct.streamNACK* %94, %93, !dbg !4779
  br i1 %95, label %108, label %96, !dbg !4780

; <label>:96:                                     ; preds = %85
  %97 = load %struct.rax*, %struct.rax** %74, align 8, !dbg !4781, !tbaa !155
  %98 = call i32 @raxRemove(%struct.rax* %97, i8* nonnull %67, i64 16, i8** null) #7, !dbg !4783
  %99 = getelementptr inbounds i8, i8* %92, i64 16, !dbg !4784
  %100 = bitcast i8* %99 to %struct.streamConsumer**, !dbg !4784
  %101 = load %struct.streamConsumer*, %struct.streamConsumer** %100, align 8, !dbg !4784, !tbaa !2324
  %102 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %101, i64 0, i32 2, !dbg !4785
  %103 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !4785, !tbaa !2633
  %104 = call i32 @raxRemove(%struct.rax* %103, i8* nonnull %67, i64 16, i8** null) #7, !dbg !4786
  call void @zfree(i8* %92) #7, !dbg !4789
  %105 = add nsw i32 %79, 1, !dbg !4790
  %106 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4791, !tbaa !3277
  %107 = add nsw i64 %106, 1, !dbg !4791
  store i64 %107, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4791, !tbaa !3277
  br label %108, !dbg !4792

; <label>:108:                                    ; preds = %85, %96
  %109 = phi i32 [ %79, %85 ], [ %105, %96 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #8, !dbg !4793
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #8, !dbg !4793
  %110 = add nuw nsw i64 %78, 1, !dbg !4794
  %111 = load i32, i32* %62, align 8, !dbg !4743, !tbaa !3144
  %112 = sext i32 %111 to i64, !dbg !4744
  %113 = icmp slt i64 %110, %112, !dbg !4744
  br i1 %113, label %77, label %115, !dbg !4745, !llvm.loop !4795

; <label>:114:                                    ; preds = %77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #8, !dbg !4793
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %66) #8, !dbg !4793
  br label %118

; <label>:115:                                    ; preds = %108, %61
  %116 = phi i32 [ 0, %61 ], [ %109, %108 ], !dbg !4742
  %117 = sext i32 %116 to i64, !dbg !4797
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %117) #7, !dbg !4798
  br label %118, !dbg !4799

; <label>:118:                                    ; preds = %114, %115, %13, %75
  ret void, !dbg !4799
}

; Function Attrs: noredzone nounwind
define dso_local void @xpendingCommand(%struct.client*) local_unnamed_addr #0 !dbg !4800 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.raxIterator, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.raxIterator, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4845
  %11 = load i32, i32* %10, align 8, !dbg !4845, !tbaa !3144
  %12 = icmp eq i32 %11, 3, !dbg !4846
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4847
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4847, !tbaa !3150
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !4848
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4848, !tbaa !234
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4850
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !4850, !tbaa !234
  %19 = icmp eq i32 %11, 7, !dbg !4852
  br i1 %19, label %20, label %26, !dbg !4853

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 6, !dbg !4854
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4854, !tbaa !234
  %23 = bitcast %struct.streamID* %3 to i8*, !dbg !4856
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #8, !dbg !4856
  %24 = bitcast %struct.streamID* %4 to i8*, !dbg !4856
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8, !dbg !4856
  %25 = bitcast i64* %5 to i8*, !dbg !4857
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #8, !dbg !4857
  br label %34, !dbg !4858

; <label>:26:                                     ; preds = %1
  %27 = bitcast %struct.streamID* %3 to i8*, !dbg !4856
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #8, !dbg !4856
  %28 = bitcast %struct.streamID* %4 to i8*, !dbg !4856
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #8, !dbg !4856
  %29 = bitcast i64* %5 to i8*, !dbg !4857
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #8, !dbg !4857
  switch i32 %11, label %30 [
    i32 3, label %32
    i32 6, label %32
  ], !dbg !4859

; <label>:30:                                     ; preds = %26
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4861, !tbaa !3410
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #7, !dbg !4863
  br label %342, !dbg !4864

; <label>:32:                                     ; preds = %26, %26
  %33 = icmp sgt i32 %11, 5, !dbg !4865
  br i1 %33, label %34, label %63, !dbg !4858

; <label>:34:                                     ; preds = %20, %32
  %35 = phi %struct.redisObject* [ %22, %20 ], [ null, %32 ]
  %36 = phi i8* [ %23, %20 ], [ %27, %32 ]
  %37 = phi i8* [ %24, %20 ], [ %28, %32 ]
  %38 = phi i8* [ %25, %20 ], [ %29, %32 ]
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 5, !dbg !4867
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !4867, !tbaa !234
  %41 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %40, i64* nonnull %5, i8* null) #7, !dbg !4871
  %42 = icmp eq i32 %41, -1, !dbg !4872
  br i1 %42, label %342, label %43, !dbg !4873

; <label>:43:                                     ; preds = %34
  %44 = load i64, i64* %5, align 8, !dbg !4874, !tbaa !265
  %45 = icmp slt i64 %44, 0, !dbg !4876
  br i1 %45, label %46, label %47, !dbg !4877

; <label>:46:                                     ; preds = %43
  store i64 0, i64* %5, align 8, !dbg !4878, !tbaa !265
  br label %47, !dbg !4879

; <label>:47:                                     ; preds = %46, %43
  %48 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4880, !tbaa !3150
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 3, !dbg !4882
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !4882, !tbaa !234
  %51 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, %struct.streamID* nonnull %3, i64 0, i32 0) #7, !dbg !4889
  %52 = icmp eq i32 %51, -1, !dbg !4890
  br i1 %52, label %342, label %53, !dbg !4891

; <label>:53:                                     ; preds = %47
  %54 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4892, !tbaa !3150
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 4, !dbg !4894
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !4894, !tbaa !234
  %57 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %56, %struct.streamID* nonnull %4, i64 -1, i32 0) #7, !dbg !4901
  %58 = icmp eq i32 %57, -1, !dbg !4902
  br i1 %58, label %342, label %59, !dbg !4903

; <label>:59:                                     ; preds = %53
  %60 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4904, !tbaa !3150
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 1
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !4905, !tbaa !234
  br label %63, !dbg !4903

; <label>:63:                                     ; preds = %59, %32
  %64 = phi %struct.redisObject* [ %62, %59 ], [ %16, %32 ], !dbg !4905
  %65 = phi %struct.redisObject* [ %35, %59 ], [ null, %32 ]
  %66 = phi i8* [ %36, %59 ], [ %27, %32 ]
  %67 = phi i8* [ %37, %59 ], [ %28, %32 ]
  %68 = phi i8* [ %38, %59 ], [ %29, %32 ]
  %69 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4906
  %70 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !4906, !tbaa !2394
  %71 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %70, %struct.redisObject* %64) #7, !dbg !4907
  %72 = icmp eq %struct.redisObject* %71, null, !dbg !4909
  br i1 %72, label %73, label %75, !dbg !4909

; <label>:73:                                     ; preds = %63
  %74 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4911
  br label %120, !dbg !4909

; <label>:75:                                     ; preds = %63
  %76 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %71, i32 6) #7, !dbg !4914
  %77 = icmp eq i32 %76, 0, !dbg !4914
  br i1 %77, label %78, label %342, !dbg !4915

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %71, i64 0, i32 2, !dbg !4916
  %80 = bitcast i8** %79 to %struct.stream**, !dbg !4916
  %81 = load %struct.stream*, %struct.stream** %80, align 8, !dbg !4916, !tbaa !641
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4917
  %83 = load i8*, i8** %82, align 8, !dbg !4917, !tbaa !641
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %81, i64 0, i32 3, !dbg !4921
  %85 = load %struct.rax*, %struct.rax** %84, align 8, !dbg !4921, !tbaa !123
  %86 = icmp eq %struct.rax* %85, null, !dbg !4922
  br i1 %86, label %120, label %87, !dbg !4923

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %83, i64 -1, !dbg !4926
  %89 = load i8, i8* %88, align 1, !dbg !4926, !tbaa !656
  %90 = trunc i8 %89 to i3, !dbg !4928
  switch i3 %90, label %112 [
    i3 0, label %91
    i3 1, label %94
    i3 2, label %98
    i3 3, label %103
    i3 -4, label %108
  ], !dbg !4928

; <label>:91:                                     ; preds = %87
  %92 = lshr i8 %89, 3, !dbg !4929
  %93 = zext i8 %92 to i64, !dbg !4929
  br label %112, !dbg !4930

; <label>:94:                                     ; preds = %87
  %95 = getelementptr inbounds i8, i8* %83, i64 -3, !dbg !4931
  %96 = load i8, i8* %95, align 1, !dbg !4932, !tbaa !656
  %97 = zext i8 %96 to i64, !dbg !4931
  br label %112, !dbg !4933

; <label>:98:                                     ; preds = %87
  %99 = getelementptr inbounds i8, i8* %83, i64 -5, !dbg !4934
  %100 = bitcast i8* %99 to i16*, !dbg !4935
  %101 = load i16, i16* %100, align 1, !dbg !4935, !tbaa !667
  %102 = zext i16 %101 to i64, !dbg !4934
  br label %112, !dbg !4936

; <label>:103:                                    ; preds = %87
  %104 = getelementptr inbounds i8, i8* %83, i64 -9, !dbg !4937
  %105 = bitcast i8* %104 to i32*, !dbg !4938
  %106 = load i32, i32* %105, align 1, !dbg !4938, !tbaa !672
  %107 = zext i32 %106 to i64, !dbg !4937
  br label %112, !dbg !4939

; <label>:108:                                    ; preds = %87
  %109 = getelementptr inbounds i8, i8* %83, i64 -17, !dbg !4940
  %110 = bitcast i8* %109 to i64*, !dbg !4941
  %111 = load i64, i64* %110, align 1, !dbg !4941, !tbaa !117
  br label %112, !dbg !4942

; <label>:112:                                    ; preds = %108, %103, %98, %94, %91, %87
  %113 = phi i64 [ %111, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %94 ], [ %93, %91 ], [ 0, %87 ], !dbg !4943
  %114 = call i8* @raxFind(%struct.rax* nonnull %85, i8* nonnull %83, i64 %113) #7, !dbg !4944
  %115 = bitcast i8* %114 to %struct.streamCG*, !dbg !4944
  %116 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4946, !tbaa !234
  %117 = icmp eq %struct.streamCG* %116, %115, !dbg !4947
  %118 = icmp eq i8* %114, null, !dbg !4948
  %119 = or i1 %118, %117
  br i1 %119, label %120, label %125

; <label>:120:                                    ; preds = %73, %112, %78
  %121 = phi i8** [ %74, %73 ], [ %82, %112 ], [ %82, %78 ], !dbg !4911
  %122 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !4950
  %123 = load i8*, i8** %122, align 8, !dbg !4950, !tbaa !641
  %124 = load i8*, i8** %121, align 8, !dbg !4911, !tbaa !641
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %123, i8* %124) #7, !dbg !4951
  br label %342, !dbg !4952

; <label>:125:                                    ; preds = %112
  br i1 %12, label %126, label %199, !dbg !4953

; <label>:126:                                    ; preds = %125
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 4) #7, !dbg !4954
  %127 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !4955
  %128 = bitcast i8* %127 to %struct.rax**, !dbg !4955
  %129 = load %struct.rax*, %struct.rax** %128, align 8, !dbg !4955, !tbaa !155
  %130 = call i64 @raxSize(%struct.rax* %129) #7, !dbg !4956
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %130) #7, !dbg !4957
  %131 = load %struct.rax*, %struct.rax** %128, align 8, !dbg !4958, !tbaa !155
  %132 = call i64 @raxSize(%struct.rax* %131) #7, !dbg !4959
  %133 = icmp eq i64 %132, 0, !dbg !4960
  br i1 %133, label %134, label %138, !dbg !4961

; <label>:134:                                    ; preds = %126
  %135 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !4962, !tbaa !4964
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %135) #7, !dbg !4965
  %136 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !4966, !tbaa !4964
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %136) #7, !dbg !4967
  %137 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !4968, !tbaa !2826
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %137) #7, !dbg !4969
  br label %342, !dbg !4970

; <label>:138:                                    ; preds = %126
  %139 = bitcast %struct.raxIterator* %6 to i8*, !dbg !4971
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %139) #8, !dbg !4971
  %140 = load %struct.rax*, %struct.rax** %128, align 8, !dbg !4972, !tbaa !155
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %140) #7, !dbg !4974
  %141 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !4975
  %142 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #7, !dbg !4976
  %143 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 2, !dbg !4977
  %144 = load i8*, i8** %143, align 8, !dbg !4977, !tbaa !686
  %145 = bitcast [2 x i64]* %2 to i8*, !dbg !4980
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %145) #8, !dbg !4980
  %146 = call i8* @memcpy(i8* nonnull %145, i8* %144, i64 16) #7, !dbg !4981
  %147 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !4982
  %148 = load i64, i64* %147, align 16, !dbg !4982, !tbaa !117
  %149 = call i64 @intrev64(i64 %148) #7, !dbg !4982
  %150 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !4983
  store i64 %149, i64* %150, align 8, !dbg !4984, !tbaa !178
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !4985
  %152 = load i64, i64* %151, align 8, !dbg !4985, !tbaa !117
  %153 = call i64 @intrev64(i64 %152) #7, !dbg !4985
  %154 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !4986
  store i64 %153, i64* %154, align 8, !dbg !4987, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %145) #8, !dbg !4988
  %155 = call i8* @sdsempty() #7, !dbg !4992
  %156 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %149, i64 %153) #7, !dbg !4993
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %156) #7, !dbg !4995
  %157 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #7, !dbg !4996
  %158 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #7, !dbg !4997
  %159 = load i8*, i8** %143, align 8, !dbg !4998, !tbaa !686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %145) #8, !dbg !5001
  %160 = call i8* @memcpy(i8* nonnull %145, i8* %159, i64 16) #7, !dbg !5002
  %161 = load i64, i64* %147, align 16, !dbg !5003, !tbaa !117
  %162 = call i64 @intrev64(i64 %161) #7, !dbg !5003
  %163 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5004
  store i64 %162, i64* %163, align 8, !dbg !5005, !tbaa !178
  %164 = load i64, i64* %151, align 8, !dbg !5006, !tbaa !117
  %165 = call i64 @intrev64(i64 %164) #7, !dbg !5006
  %166 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5007
  store i64 %165, i64* %166, align 8, !dbg !5008, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %145) #8, !dbg !5009
  %167 = call i8* @sdsempty() #7, !dbg !5013
  %168 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %162, i64 %165) #7, !dbg !5014
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %168) #7, !dbg !5016
  call void @raxStop(%struct.raxIterator* nonnull %6) #7, !dbg !5017
  %169 = getelementptr inbounds i8, i8* %114, i64 24, !dbg !5018
  %170 = bitcast i8* %169 to %struct.rax**, !dbg !5018
  %171 = load %struct.rax*, %struct.rax** %170, align 8, !dbg !5018, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %171) #7, !dbg !5019
  %172 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !5020
  %173 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !5021
  %174 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #7, !dbg !5024
  %175 = icmp eq i32 %174, 0, !dbg !5025
  br i1 %175, label %197, label %176, !dbg !5025

; <label>:176:                                    ; preds = %138
  %177 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 3
  %178 = bitcast i8** %177 to %struct.streamConsumer**
  %179 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 4
  br label %180, !dbg !5025

; <label>:180:                                    ; preds = %176, %193
  %181 = phi i64 [ 0, %176 ], [ %194, %193 ]
  %182 = load %struct.streamConsumer*, %struct.streamConsumer** %178, align 8, !dbg !5026, !tbaa !516
  %183 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %182, i64 0, i32 2, !dbg !5028
  %184 = load %struct.rax*, %struct.rax** %183, align 8, !dbg !5028, !tbaa !2633
  %185 = call i64 @raxSize(%struct.rax* %184) #7, !dbg !5030
  %186 = icmp eq i64 %185, 0, !dbg !5031
  br i1 %186, label %193, label %187, !dbg !5032, !llvm.loop !5033

; <label>:187:                                    ; preds = %180
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #7, !dbg !5035
  %188 = load i8*, i8** %143, align 8, !dbg !5036, !tbaa !686
  %189 = load i64, i64* %179, align 8, !dbg !5037, !tbaa !684
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %188, i64 %189) #7, !dbg !5038
  %190 = load %struct.rax*, %struct.rax** %183, align 8, !dbg !5039, !tbaa !2633
  %191 = call i64 @raxSize(%struct.rax* %190) #7, !dbg !5040
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %191) #7, !dbg !5041
  %192 = add i64 %181, 1, !dbg !5042
  br label %193, !dbg !5034

; <label>:193:                                    ; preds = %180, %187
  %194 = phi i64 [ %192, %187 ], [ %181, %180 ], !dbg !5043
  %195 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #7, !dbg !5024
  %196 = icmp eq i32 %195, 0, !dbg !5025
  br i1 %196, label %197, label %180, !dbg !5025

; <label>:197:                                    ; preds = %193, %138
  %198 = phi i64 [ 0, %138 ], [ %194, %193 ], !dbg !5023
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %173, i64 %198) #7, !dbg !5044
  call void @raxStop(%struct.raxIterator* nonnull %6) #7, !dbg !5045
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %139) #8, !dbg !5046
  br label %342

; <label>:199:                                    ; preds = %125
  %200 = icmp eq %struct.redisObject* %65, null, !dbg !5047
  br i1 %200, label %241, label %201, !dbg !5047

; <label>:201:                                    ; preds = %199
  %202 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %65, i64 0, i32 2, !dbg !5048
  %203 = load i8*, i8** %202, align 8, !dbg !5048, !tbaa !641
  %204 = getelementptr inbounds i8, i8* %114, i64 24, !dbg !5053
  %205 = bitcast i8* %204 to %struct.rax**, !dbg !5053
  %206 = load %struct.rax*, %struct.rax** %205, align 8, !dbg !5053, !tbaa !159
  %207 = getelementptr inbounds i8, i8* %203, i64 -1, !dbg !5056
  %208 = load i8, i8* %207, align 1, !dbg !5056, !tbaa !656
  %209 = trunc i8 %208 to i3, !dbg !5058
  switch i3 %209, label %231 [
    i3 0, label %210
    i3 1, label %213
    i3 2, label %217
    i3 3, label %222
    i3 -4, label %227
  ], !dbg !5058

; <label>:210:                                    ; preds = %201
  %211 = lshr i8 %208, 3, !dbg !5059
  %212 = zext i8 %211 to i64, !dbg !5059
  br label %231, !dbg !5060

; <label>:213:                                    ; preds = %201
  %214 = getelementptr inbounds i8, i8* %203, i64 -3, !dbg !5061
  %215 = load i8, i8* %214, align 1, !dbg !5062, !tbaa !656
  %216 = zext i8 %215 to i64, !dbg !5061
  br label %231, !dbg !5063

; <label>:217:                                    ; preds = %201
  %218 = getelementptr inbounds i8, i8* %203, i64 -5, !dbg !5064
  %219 = bitcast i8* %218 to i16*, !dbg !5065
  %220 = load i16, i16* %219, align 1, !dbg !5065, !tbaa !667
  %221 = zext i16 %220 to i64, !dbg !5064
  br label %231, !dbg !5066

; <label>:222:                                    ; preds = %201
  %223 = getelementptr inbounds i8, i8* %203, i64 -9, !dbg !5067
  %224 = bitcast i8* %223 to i32*, !dbg !5068
  %225 = load i32, i32* %224, align 1, !dbg !5068, !tbaa !672
  %226 = zext i32 %225 to i64, !dbg !5067
  br label %231, !dbg !5069

; <label>:227:                                    ; preds = %201
  %228 = getelementptr inbounds i8, i8* %203, i64 -17, !dbg !5070
  %229 = bitcast i8* %228 to i64*, !dbg !5071
  %230 = load i64, i64* %229, align 1, !dbg !5071, !tbaa !117
  br label %231, !dbg !5072

; <label>:231:                                    ; preds = %227, %222, %217, %213, %210, %201
  %232 = phi i64 [ %230, %227 ], [ %226, %222 ], [ %221, %217 ], [ %216, %213 ], [ %212, %210 ], [ 0, %201 ], !dbg !5073
  %233 = call i8* @raxFind(%struct.rax* %206, i8* nonnull %203, i64 %232) #7, !dbg !5074
  %234 = bitcast i8* %233 to %struct.streamConsumer*, !dbg !5074
  %235 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !5076, !tbaa !234
  %236 = icmp eq %struct.streamConsumer* %235, %234, !dbg !5077
  br i1 %236, label %240, label %237, !dbg !5078

; <label>:237:                                    ; preds = %231
  %238 = call i64 @mstime() #7, !dbg !5079
  %239 = bitcast i8* %233 to i64*, !dbg !5080
  store i64 %238, i64* %239, align 8, !dbg !5081, !tbaa !4091
  br label %241, !dbg !5082

; <label>:240:                                    ; preds = %231
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #7, !dbg !5084
  br label %342

; <label>:241:                                    ; preds = %237, %199
  %242 = phi %struct.streamConsumer* [ %234, %237 ], [ null, %199 ]
  %243 = icmp eq %struct.streamConsumer* %242, null, !dbg !5087
  %244 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %242, i64 0, i32 2, !dbg !5088
  %245 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !5089
  %246 = bitcast i8* %245 to %struct.rax**, !dbg !5089
  %247 = select i1 %243, %struct.rax** %246, %struct.rax** %244, !dbg !5090
  %248 = load %struct.rax*, %struct.rax** %247, align 8, !dbg !5090, !tbaa !234
  %249 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !5092
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %249) #8, !dbg !5092
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !5094
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %250) #8, !dbg !5094
  %251 = bitcast %struct.raxIterator* %9 to i8*, !dbg !5096
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %251) #8, !dbg !5096
  %252 = call i64 @mstime() #7, !dbg !5097
  %253 = bitcast [2 x i64]* %2 to i8*, !dbg !5101
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5101
  %254 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !5102
  %255 = load i64, i64* %254, align 8, !dbg !5102, !tbaa !178
  %256 = call i64 @intrev64(i64 %255) #7, !dbg !5102
  %257 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !5103
  store i64 %256, i64* %257, align 16, !dbg !5104, !tbaa !117
  %258 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !5105
  %259 = load i64, i64* %258, align 8, !dbg !5105, !tbaa !188
  %260 = call i64 @intrev64(i64 %259) #7, !dbg !5105
  %261 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !5106
  store i64 %260, i64* %261, align 8, !dbg !5107, !tbaa !117
  %262 = call i8* @memcpy(i8* nonnull %249, i8* nonnull %253, i64 16) #7, !dbg !5108
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5109
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5112
  %263 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5113
  %264 = load i64, i64* %263, align 8, !dbg !5113, !tbaa !178
  %265 = call i64 @intrev64(i64 %264) #7, !dbg !5113
  store i64 %265, i64* %257, align 16, !dbg !5114, !tbaa !117
  %266 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5115
  %267 = load i64, i64* %266, align 8, !dbg !5115, !tbaa !188
  %268 = call i64 @intrev64(i64 %267) #7, !dbg !5115
  store i64 %268, i64* %261, align 8, !dbg !5116, !tbaa !117
  %269 = call i8* @memcpy(i8* nonnull %250, i8* nonnull %253, i64 16) #7, !dbg !5117
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5118
  call void @raxStart(%struct.raxIterator* nonnull %9, %struct.rax* %248) #7, !dbg !5120
  %270 = call i32 @raxSeek(%struct.raxIterator* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %249, i64 16) #7, !dbg !5121
  %271 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !5122
  %272 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 2, !dbg !5125
  %273 = load i64, i64* %5, align 8, !dbg !5126, !tbaa !265
  %274 = icmp eq i64 %273, 0, !dbg !5126
  br i1 %274, label %340, label %275, !dbg !5127

; <label>:275:                                    ; preds = %241
  %276 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 4
  %277 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 3
  %278 = bitcast i8** %277 to %struct.streamNACK**
  br label %279, !dbg !5127

; <label>:279:                                    ; preds = %275, %329
  %280 = phi i64 [ 0, %275 ], [ %290, %329 ]
  %281 = call i32 @raxNext(%struct.raxIterator* nonnull %9) #7, !dbg !5128
  %282 = icmp eq i32 %281, 0, !dbg !5128
  br i1 %282, label %340, label %283, !dbg !5129

; <label>:283:                                    ; preds = %279
  %284 = load i8*, i8** %272, align 8, !dbg !5125, !tbaa !686
  %285 = load i64, i64* %276, align 8, !dbg !5130, !tbaa !684
  %286 = call i32 @memcmp(i8* %284, i8* nonnull %250, i64 %285) #7, !dbg !5131
  %287 = icmp slt i32 %286, 1, !dbg !5132
  br i1 %287, label %288, label %340, !dbg !5133

; <label>:288:                                    ; preds = %283
  %289 = load %struct.streamNACK*, %struct.streamNACK** %278, align 8, !dbg !5134, !tbaa !516
  %290 = add i64 %280, 1, !dbg !5136
  %291 = load i64, i64* %5, align 8, !dbg !5137, !tbaa !265
  %292 = add nsw i64 %291, -1, !dbg !5137
  store i64 %292, i64* %5, align 8, !dbg !5137, !tbaa !265
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #7, !dbg !5138
  %293 = load i8*, i8** %272, align 8, !dbg !5139, !tbaa !686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5143
  %294 = call i8* @memcpy(i8* nonnull %253, i8* %293, i64 16) #7, !dbg !5144
  %295 = load i64, i64* %257, align 16, !dbg !5145, !tbaa !117
  %296 = call i64 @intrev64(i64 %295) #7, !dbg !5145
  %297 = load i64, i64* %261, align 8, !dbg !5146, !tbaa !117
  %298 = call i64 @intrev64(i64 %297) #7, !dbg !5146
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #8, !dbg !5147
  %299 = call i8* @sdsempty() #7, !dbg !5151
  %300 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %296, i64 %298) #7, !dbg !5152
  call void @addReplyBulkSds(%struct.client* %0, i8* %300) #7, !dbg !5154
  %301 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 2, !dbg !5155
  %302 = load %struct.streamConsumer*, %struct.streamConsumer** %301, align 8, !dbg !5155, !tbaa !2324
  %303 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %302, i64 0, i32 1, !dbg !5156
  %304 = load i8*, i8** %303, align 8, !dbg !5156, !tbaa !2327
  %305 = getelementptr inbounds i8, i8* %304, i64 -1, !dbg !5159
  %306 = load i8, i8* %305, align 1, !dbg !5159, !tbaa !656
  %307 = trunc i8 %306 to i3, !dbg !5161
  switch i3 %307, label %329 [
    i3 0, label %308
    i3 1, label %311
    i3 2, label %315
    i3 3, label %320
    i3 -4, label %325
  ], !dbg !5161

; <label>:308:                                    ; preds = %288
  %309 = lshr i8 %306, 3, !dbg !5162
  %310 = zext i8 %309 to i64, !dbg !5162
  br label %329, !dbg !5163

; <label>:311:                                    ; preds = %288
  %312 = getelementptr inbounds i8, i8* %304, i64 -3, !dbg !5164
  %313 = load i8, i8* %312, align 1, !dbg !5165, !tbaa !656
  %314 = zext i8 %313 to i64, !dbg !5164
  br label %329, !dbg !5166

; <label>:315:                                    ; preds = %288
  %316 = getelementptr inbounds i8, i8* %304, i64 -5, !dbg !5167
  %317 = bitcast i8* %316 to i16*, !dbg !5168
  %318 = load i16, i16* %317, align 1, !dbg !5168, !tbaa !667
  %319 = zext i16 %318 to i64, !dbg !5167
  br label %329, !dbg !5169

; <label>:320:                                    ; preds = %288
  %321 = getelementptr inbounds i8, i8* %304, i64 -9, !dbg !5170
  %322 = bitcast i8* %321 to i32*, !dbg !5171
  %323 = load i32, i32* %322, align 1, !dbg !5171, !tbaa !672
  %324 = zext i32 %323 to i64, !dbg !5170
  br label %329, !dbg !5172

; <label>:325:                                    ; preds = %288
  %326 = getelementptr inbounds i8, i8* %304, i64 -17, !dbg !5173
  %327 = bitcast i8* %326 to i64*, !dbg !5174
  %328 = load i64, i64* %327, align 1, !dbg !5174, !tbaa !117
  br label %329, !dbg !5175

; <label>:329:                                    ; preds = %288, %308, %311, %315, %320, %325
  %330 = phi i64 [ %328, %325 ], [ %324, %320 ], [ %319, %315 ], [ %314, %311 ], [ %310, %308 ], [ 0, %288 ], !dbg !5176
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %304, i64 %330) #7, !dbg !5177
  %331 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 0, !dbg !5178
  %332 = load i64, i64* %331, align 8, !dbg !5178, !tbaa !2361
  %333 = sub nsw i64 %252, %332, !dbg !5179
  %334 = icmp sgt i64 %333, 0, !dbg !5181
  %335 = select i1 %334, i64 %333, i64 0, !dbg !5181
  call void @addReplyLongLong(%struct.client* %0, i64 %335) #7, !dbg !5182
  %336 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 1, !dbg !5183
  %337 = load i64, i64* %336, align 8, !dbg !5183, !tbaa !2369
  call void @addReplyLongLong(%struct.client* %0, i64 %337) #7, !dbg !5184
  %338 = load i64, i64* %5, align 8, !dbg !5126, !tbaa !265
  %339 = icmp eq i64 %338, 0, !dbg !5126
  br i1 %339, label %340, label %279, !dbg !5127, !llvm.loop !5185

; <label>:340:                                    ; preds = %283, %329, %279, %241
  %341 = phi i64 [ 0, %241 ], [ %280, %279 ], [ %290, %329 ], [ %280, %283 ], !dbg !5187
  call void @raxStop(%struct.raxIterator* nonnull %9) #7, !dbg !5188
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %271, i64 %341) #7, !dbg !5189
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %251) #8, !dbg !5190
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %250) #8, !dbg !5190
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %249) #8, !dbg !5190
  br label %342

; <label>:342:                                    ; preds = %120, %75, %240, %340, %134, %197, %53, %47, %34, %30
  %343 = phi i8* [ %68, %120 ], [ %68, %75 ], [ %68, %240 ], [ %68, %340 ], [ %68, %134 ], [ %68, %197 ], [ %38, %53 ], [ %38, %47 ], [ %38, %34 ], [ %29, %30 ]
  %344 = phi i8* [ %67, %120 ], [ %67, %75 ], [ %67, %240 ], [ %67, %340 ], [ %67, %134 ], [ %67, %197 ], [ %37, %53 ], [ %37, %47 ], [ %37, %34 ], [ %28, %30 ]
  %345 = phi i8* [ %66, %120 ], [ %66, %75 ], [ %66, %240 ], [ %66, %340 ], [ %66, %134 ], [ %66, %197 ], [ %36, %53 ], [ %36, %47 ], [ %36, %34 ], [ %27, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %343) #8, !dbg !5191
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %344) #8, !dbg !5191
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %345) #8, !dbg !5191
  ret void, !dbg !5191
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xclaimCommand(%struct.client*) local_unnamed_addr #0 !dbg !5192 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.streamID, align 8
  %7 = alloca %struct.streamID, align 8
  %8 = alloca %struct.streamID, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca %struct.streamIterator, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.streamID, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5244
  %14 = load %struct.redisDb*, %struct.redisDb** %13, align 8, !dbg !5244, !tbaa !2394
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5245
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5245, !tbaa !3150
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !5246
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5246, !tbaa !234
  %19 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %14, %struct.redisObject* %18) #7, !dbg !5247
  %20 = bitcast i64* %3 to i8*, !dbg !5249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #8, !dbg !5249
  %21 = bitcast i64* %4 to i8*, !dbg !5250
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !5250
  store i64 -1, i64* %4, align 8, !dbg !5251, !tbaa !265
  %22 = bitcast i64* %5 to i8*, !dbg !5252
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !5252
  store i64 -1, i64* %5, align 8, !dbg !5253, !tbaa !265
  %23 = icmp eq %struct.redisObject* %19, null, !dbg !5256
  br i1 %23, label %24, label %26, !dbg !5258

; <label>:24:                                     ; preds = %1
  %25 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5259, !tbaa !3150
  br label %75, !dbg !5258

; <label>:26:                                     ; preds = %1
  %27 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %19, i32 6) #7, !dbg !5261
  %28 = icmp eq i32 %27, 0, !dbg !5261
  br i1 %28, label %29, label %376, !dbg !5264

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !5265
  %31 = bitcast i8** %30 to %struct.stream**, !dbg !5265
  %32 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5265, !tbaa !641
  %33 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5266, !tbaa !3150
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 2, !dbg !5267
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !5267, !tbaa !234
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !5268
  %37 = load i8*, i8** %36, align 8, !dbg !5268, !tbaa !641
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %32, i64 0, i32 3, !dbg !5272
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !5272, !tbaa !123
  %40 = icmp eq %struct.rax* %39, null, !dbg !5273
  br i1 %40, label %75, label %41, !dbg !5274

; <label>:41:                                     ; preds = %29
  %42 = getelementptr inbounds i8, i8* %37, i64 -1, !dbg !5277
  %43 = load i8, i8* %42, align 1, !dbg !5277, !tbaa !656
  %44 = trunc i8 %43 to i3, !dbg !5279
  switch i3 %44, label %66 [
    i3 0, label %45
    i3 1, label %48
    i3 2, label %52
    i3 3, label %57
    i3 -4, label %62
  ], !dbg !5279

; <label>:45:                                     ; preds = %41
  %46 = lshr i8 %43, 3, !dbg !5280
  %47 = zext i8 %46 to i64, !dbg !5280
  br label %66, !dbg !5281

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !5282
  %50 = load i8, i8* %49, align 1, !dbg !5283, !tbaa !656
  %51 = zext i8 %50 to i64, !dbg !5282
  br label %66, !dbg !5284

; <label>:52:                                     ; preds = %41
  %53 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !5285
  %54 = bitcast i8* %53 to i16*, !dbg !5286
  %55 = load i16, i16* %54, align 1, !dbg !5286, !tbaa !667
  %56 = zext i16 %55 to i64, !dbg !5285
  br label %66, !dbg !5287

; <label>:57:                                     ; preds = %41
  %58 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !5288
  %59 = bitcast i8* %58 to i32*, !dbg !5289
  %60 = load i32, i32* %59, align 1, !dbg !5289, !tbaa !672
  %61 = zext i32 %60 to i64, !dbg !5288
  br label %66, !dbg !5290

; <label>:62:                                     ; preds = %41
  %63 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !5291
  %64 = bitcast i8* %63 to i64*, !dbg !5292
  %65 = load i64, i64* %64, align 1, !dbg !5292, !tbaa !117
  br label %66, !dbg !5293

; <label>:66:                                     ; preds = %41, %45, %48, %52, %57, %62
  %67 = phi i64 [ %65, %62 ], [ %61, %57 ], [ %56, %52 ], [ %51, %48 ], [ %47, %45 ], [ 0, %41 ], !dbg !5294
  %68 = tail call i8* @raxFind(%struct.rax* nonnull %39, i8* nonnull %37, i64 %67) #7, !dbg !5295
  %69 = bitcast i8* %68 to %struct.streamCG*, !dbg !5295
  %70 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5297, !tbaa !234
  %71 = icmp eq %struct.streamCG* %70, %69, !dbg !5298
  %72 = icmp eq i8* %68, null, !dbg !5299
  %73 = or i1 %71, %72, !dbg !5299
  %74 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5259, !tbaa !3150
  br i1 %73, label %75, label %85, !dbg !5301

; <label>:75:                                     ; preds = %29, %24, %66
  %76 = phi %struct.redisObject** [ %74, %66 ], [ %25, %24 ], [ %33, %29 ]
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 1, !dbg !5302
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !5302, !tbaa !234
  %79 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %78, i64 0, i32 2, !dbg !5304
  %80 = load i8*, i8** %79, align 8, !dbg !5304, !tbaa !641
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %76, i64 2, !dbg !5305
  %82 = load %struct.redisObject*, %struct.redisObject** %81, align 8, !dbg !5305, !tbaa !234
  %83 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %82, i64 0, i32 2, !dbg !5306
  %84 = load i8*, i8** %83, align 8, !dbg !5306, !tbaa !641
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %80, i8* %84) #7, !dbg !5307
  br label %376, !dbg !5308

; <label>:85:                                     ; preds = %66
  %86 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 4, !dbg !5309
  %87 = load %struct.redisObject*, %struct.redisObject** %86, align 8, !dbg !5309, !tbaa !234
  %88 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %87, i64* nonnull %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !5311
  %89 = icmp eq i32 %88, 0, !dbg !5312
  br i1 %89, label %90, label %376, !dbg !5313

; <label>:90:                                     ; preds = %85
  %91 = load i64, i64* %3, align 8, !dbg !5314, !tbaa !265
  %92 = icmp slt i64 %91, 0, !dbg !5316
  br i1 %92, label %93, label %94, !dbg !5317

; <label>:93:                                     ; preds = %90
  store i64 0, i64* %3, align 8, !dbg !5318, !tbaa !265
  br label %94, !dbg !5319

; <label>:94:                                     ; preds = %93, %90
  %95 = bitcast %struct.streamID* %6 to i8*, !dbg !5321
  %96 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5322
  %97 = load i32, i32* %96, align 8, !dbg !5322, !tbaa !3144
  %98 = icmp sgt i32 %97, 5, !dbg !5323
  br i1 %98, label %99, label %115, !dbg !5324

; <label>:99:                                     ; preds = %94, %107
  %100 = phi i64 [ %108, %107 ], [ 5, %94 ]
  %101 = phi i32 [ %109, %107 ], [ 5, %94 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %95) #8, !dbg !5321
  %102 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5325, !tbaa !3150
  %103 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %102, i64 %100, !dbg !5327
  %104 = load %struct.redisObject*, %struct.redisObject** %103, align 8, !dbg !5327, !tbaa !234
  %105 = call i32 @streamGenericParseIDOrReply(%struct.client* null, %struct.redisObject* %104, %struct.streamID* nonnull %6, i64 0, i32 1) #7, !dbg !5334
  %106 = icmp eq i32 %105, 0, !dbg !5335
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %95) #8, !dbg !5336
  br i1 %106, label %107, label %113

; <label>:107:                                    ; preds = %99
  %108 = add nuw nsw i64 %100, 1, !dbg !5337
  %109 = add nuw nsw i32 %101, 1, !dbg !5337
  %110 = load i32, i32* %96, align 8, !dbg !5322, !tbaa !3144
  %111 = sext i32 %110 to i64, !dbg !5323
  %112 = icmp slt i64 %108, %111, !dbg !5323
  br i1 %112, label %99, label %115, !dbg !5324, !llvm.loop !5338

; <label>:113:                                    ; preds = %99
  %114 = trunc i64 %100 to i32
  br label %115, !dbg !5340

; <label>:115:                                    ; preds = %107, %113, %94
  %116 = phi i32 [ 5, %94 ], [ %114, %113 ], [ %109, %107 ], !dbg !5341
  %117 = call i64 @mstime() #7, !dbg !5340
  %118 = bitcast %struct.streamID* %7 to i8*, !dbg !5344
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %118) #8, !dbg !5344
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %118, i8 0, i64 16, i1 false), !dbg !5345
  %119 = load i32, i32* %96, align 8, !dbg !5347, !tbaa !3144
  %120 = icmp slt i32 %116, %119, !dbg !5348
  br i1 %120, label %124, label %121, !dbg !5349

; <label>:121:                                    ; preds = %115
  %122 = bitcast i8* %68 to i64*, !dbg !5353
  %123 = load i64, i64* %122, align 8, !dbg !5353, !tbaa !178
  br label %199, !dbg !5354

; <label>:124:                                    ; preds = %115, %186
  %125 = phi i32 [ %191, %186 ], [ %119, %115 ]
  %126 = phi i32 [ %189, %186 ], [ 0, %115 ]
  %127 = phi i32 [ %188, %186 ], [ 0, %115 ]
  %128 = phi i32 [ %190, %186 ], [ %116, %115 ]
  %129 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5355, !tbaa !3150
  %130 = sext i32 %128 to i64, !dbg !5356
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 %130, !dbg !5356
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !5356, !tbaa !234
  %133 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %132, i64 0, i32 2, !dbg !5357
  %134 = load i8*, i8** %133, align 8, !dbg !5357, !tbaa !641
  %135 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !5359
  %136 = icmp eq i32 %135, 0, !dbg !5359
  br i1 %136, label %186, label %137, !dbg !5361

; <label>:137:                                    ; preds = %124
  %138 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !5362
  %139 = icmp eq i32 %138, 0, !dbg !5362
  br i1 %139, label %186, label %140, !dbg !5364

; <label>:140:                                    ; preds = %137
  %141 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #11, !dbg !5365
  %142 = icmp eq i32 %141, 0, !dbg !5365
  %143 = add i32 %128, 1, !dbg !5367
  %144 = icmp ne i32 %125, %143, !dbg !5367
  %145 = and i1 %144, %142, !dbg !5368
  br i1 %145, label %146, label %155, !dbg !5368

; <label>:146:                                    ; preds = %140
  %147 = sext i32 %143 to i64, !dbg !5369
  %148 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 %147, !dbg !5369
  %149 = load %struct.redisObject*, %struct.redisObject** %148, align 8, !dbg !5369, !tbaa !234
  %150 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %149, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !5372
  %151 = icmp eq i32 %150, 0, !dbg !5373
  br i1 %151, label %152, label %375, !dbg !5374

; <label>:152:                                    ; preds = %146
  %153 = load i64, i64* %5, align 8, !dbg !5375, !tbaa !265
  %154 = sub nsw i64 %117, %153, !dbg !5376
  store i64 %154, i64* %5, align 8, !dbg !5377, !tbaa !265
  br label %186, !dbg !5378

; <label>:155:                                    ; preds = %140
  %156 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !5379
  %157 = icmp eq i32 %156, 0, !dbg !5379
  %158 = and i1 %144, %157, !dbg !5381
  br i1 %158, label %159, label %165, !dbg !5381

; <label>:159:                                    ; preds = %155
  %160 = sext i32 %143 to i64, !dbg !5382
  %161 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 %160, !dbg !5382
  %162 = load %struct.redisObject*, %struct.redisObject** %161, align 8, !dbg !5382, !tbaa !234
  %163 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %162, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0)) #7, !dbg !5385
  %164 = icmp eq i32 %163, 0, !dbg !5386
  br i1 %164, label %186, label %375, !dbg !5387

; <label>:165:                                    ; preds = %155
  %166 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !5388
  %167 = icmp eq i32 %166, 0, !dbg !5388
  %168 = and i1 %144, %167, !dbg !5390
  br i1 %168, label %169, label %175, !dbg !5390

; <label>:169:                                    ; preds = %165
  %170 = sext i32 %143 to i64, !dbg !5391
  %171 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 %170, !dbg !5391
  %172 = load %struct.redisObject*, %struct.redisObject** %171, align 8, !dbg !5391, !tbaa !234
  %173 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %172, i64* nonnull %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0)) #7, !dbg !5394
  %174 = icmp eq i32 %173, 0, !dbg !5395
  br i1 %174, label %186, label %375, !dbg !5396

; <label>:175:                                    ; preds = %165
  %176 = call i32 @strcasecmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !5397
  %177 = icmp eq i32 %176, 0, !dbg !5397
  %178 = and i1 %144, %177, !dbg !5399
  br i1 %178, label %179, label %185, !dbg !5399

; <label>:179:                                    ; preds = %175
  %180 = sext i32 %143 to i64, !dbg !5400
  %181 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %129, i64 %180, !dbg !5400
  %182 = load %struct.redisObject*, %struct.redisObject** %181, align 8, !dbg !5400, !tbaa !234
  %183 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %182, %struct.streamID* nonnull %7, i64 0, i32 1) #7, !dbg !5408
  %184 = icmp eq i32 %183, 0, !dbg !5409
  br i1 %184, label %186, label %375, !dbg !5410

; <label>:185:                                    ; preds = %175
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i64 0, i64 0), i8* %134) #7, !dbg !5411
  br label %375, !dbg !5413

; <label>:186:                                    ; preds = %137, %124, %159, %169, %179, %152
  %187 = phi i32 [ %143, %152 ], [ %143, %159 ], [ %143, %169 ], [ %143, %179 ], [ %128, %124 ], [ %128, %137 ], !dbg !5414
  %188 = phi i32 [ %127, %152 ], [ %127, %159 ], [ %127, %169 ], [ %127, %179 ], [ %127, %124 ], [ 1, %137 ], !dbg !5415
  %189 = phi i32 [ %126, %152 ], [ %126, %159 ], [ %126, %169 ], [ %126, %179 ], [ 1, %124 ], [ %126, %137 ], !dbg !5416
  %190 = add nsw i32 %187, 1, !dbg !5418
  %191 = load i32, i32* %96, align 8, !dbg !5347, !tbaa !3144
  %192 = icmp slt i32 %190, %191, !dbg !5348
  br i1 %192, label %124, label %193, !dbg !5349, !llvm.loop !5419

; <label>:193:                                    ; preds = %186
  %194 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 0
  %195 = load i64, i64* %194, align 8, !dbg !5421, !tbaa !178
  %196 = bitcast i8* %68 to i64*, !dbg !5353
  %197 = load i64, i64* %196, align 8, !dbg !5353, !tbaa !178
  %198 = icmp ugt i64 %195, %197, !dbg !5422
  br i1 %198, label %212, label %199, !dbg !5354

; <label>:199:                                    ; preds = %121, %193
  %200 = phi i64 [ %123, %121 ], [ %197, %193 ]
  %201 = phi i32 [ 0, %121 ], [ %189, %193 ]
  %202 = phi i32 [ 0, %121 ], [ %188, %193 ]
  %203 = phi i64 [ 0, %121 ], [ %195, %193 ]
  %204 = icmp ult i64 %203, %200, !dbg !5423
  br i1 %204, label %215, label %205, !dbg !5424

; <label>:205:                                    ; preds = %199
  %206 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 1, !dbg !5425
  %207 = load i64, i64* %206, align 8, !dbg !5425, !tbaa !188
  %208 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !5426
  %209 = bitcast i8* %208 to i64*, !dbg !5426
  %210 = load i64, i64* %209, align 8, !dbg !5426, !tbaa !188
  %211 = icmp ugt i64 %207, %210, !dbg !5427
  br i1 %211, label %212, label %215, !dbg !5428

; <label>:212:                                    ; preds = %193, %205
  %213 = phi i32 [ %189, %193 ], [ %201, %205 ]
  %214 = phi i32 [ %188, %193 ], [ %202, %205 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %68, i8* nonnull align 8 %118, i64 16, i1 false), !dbg !5429, !tbaa.struct !1583
  br label %215, !dbg !5431

; <label>:215:                                    ; preds = %205, %199, %212
  %216 = phi i32 [ %213, %212 ], [ %201, %199 ], [ %201, %205 ]
  %217 = phi i32 [ %214, %212 ], [ %202, %199 ], [ %202, %205 ]
  %218 = phi i32 [ 1, %212 ], [ 0, %199 ], [ 0, %205 ], !dbg !5415
  %219 = load i64, i64* %5, align 8, !dbg !5432, !tbaa !265
  %220 = icmp eq i64 %219, -1, !dbg !5434
  br i1 %220, label %226, label %221, !dbg !5435

; <label>:221:                                    ; preds = %215
  %222 = icmp slt i64 %219, 0, !dbg !5436
  %223 = icmp sgt i64 %219, %117, !dbg !5439
  %224 = or i1 %222, %223, !dbg !5440
  br i1 %224, label %225, label %227, !dbg !5440

; <label>:225:                                    ; preds = %221
  store i64 %117, i64* %5, align 8, !dbg !5441, !tbaa !265
  br label %227, !dbg !5442

; <label>:226:                                    ; preds = %215
  store i64 %117, i64* %5, align 8, !dbg !5443, !tbaa !265
  br label %227

; <label>:227:                                    ; preds = %221, %225, %226
  %228 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5445, !tbaa !3150
  %229 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %228, i64 3, !dbg !5446
  %230 = load %struct.redisObject*, %struct.redisObject** %229, align 8, !dbg !5446, !tbaa !234
  %231 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %230, i64 0, i32 2, !dbg !5447
  %232 = load i8*, i8** %231, align 8, !dbg !5447, !tbaa !641
  %233 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nonnull %69, i8* %232, i32 1) #10, !dbg !5448
  %234 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !5450
  %235 = icmp ugt i32 %116, 5, !dbg !5454
  br i1 %235, label %236, label %254, !dbg !5455

; <label>:236:                                    ; preds = %227
  %237 = bitcast %struct.streamID* %8 to i8*
  %238 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %239 = bitcast [2 x i64]* %2 to i8*
  %240 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 0
  %241 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %242 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 1
  %243 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %244 = getelementptr inbounds i8, i8* %68, i64 16
  %245 = bitcast i8* %244 to %struct.rax**
  %246 = icmp ne i32 %216, 0
  %247 = bitcast %struct.streamIterator* %10 to i8*
  %248 = bitcast i64* %11 to i8*
  %249 = bitcast %struct.streamID* %12 to i8*
  %250 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %10, i64 0, i32 9
  %251 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %233, i64 0, i32 2
  %252 = icmp eq i32 %217, 0
  %253 = zext i32 %116 to i64, !dbg !5455
  br label %258, !dbg !5455

; <label>:254:                                    ; preds = %361, %227
  %255 = phi i32 [ %218, %227 ], [ %362, %361 ], !dbg !5456
  %256 = phi i64 [ 0, %227 ], [ %363, %361 ], !dbg !5456
  %257 = icmp eq i32 %255, 0, !dbg !5457
  br i1 %257, label %374, label %366, !dbg !5459

; <label>:258:                                    ; preds = %236, %361
  %259 = phi i64 [ 5, %236 ], [ %364, %361 ]
  %260 = phi i64 [ 0, %236 ], [ %363, %361 ]
  %261 = phi i32 [ %218, %236 ], [ %362, %361 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %237) #8, !dbg !5460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %238) #8, !dbg !5461
  %262 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5463, !tbaa !3150
  %263 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %262, i64 %259, !dbg !5465
  %264 = load %struct.redisObject*, %struct.redisObject** %263, align 8, !dbg !5465, !tbaa !234
  %265 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %264, %struct.streamID* nonnull %8, i64 0, i32 1) #7, !dbg !5472
  %266 = icmp eq i32 %265, 0, !dbg !5473
  br i1 %266, label %268, label %267, !dbg !5474

; <label>:267:                                    ; preds = %258
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 2232, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i64 0, i64 0)) #7, !dbg !5475
  call void @_exit(i32 1) #9, !dbg !5475
  unreachable, !dbg !5475

; <label>:268:                                    ; preds = %258
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %239) #8, !dbg !5478
  %269 = load i64, i64* %240, align 8, !dbg !5479, !tbaa !178
  %270 = call i64 @intrev64(i64 %269) #7, !dbg !5479
  store i64 %270, i64* %241, align 16, !dbg !5480, !tbaa !117
  %271 = load i64, i64* %242, align 8, !dbg !5481, !tbaa !188
  %272 = call i64 @intrev64(i64 %271) #7, !dbg !5481
  store i64 %272, i64* %243, align 8, !dbg !5482, !tbaa !117
  %273 = call i8* @memcpy(i8* nonnull %238, i8* nonnull %239, i64 16) #7, !dbg !5483
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %239) #8, !dbg !5484
  %274 = load %struct.rax*, %struct.rax** %245, align 8, !dbg !5485, !tbaa !155
  %275 = call i8* @raxFind(%struct.rax* %274, i8* nonnull %238, i64 16) #7, !dbg !5486
  %276 = bitcast i8* %275 to %struct.streamNACK*, !dbg !5486
  %277 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5488
  %278 = icmp eq %struct.streamNACK* %277, %276, !dbg !5489
  %279 = and i1 %246, %278, !dbg !5490
  br i1 %279, label %280, label %297, !dbg !5490

; <label>:280:                                    ; preds = %268
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %247) #8, !dbg !5491
  %281 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5492, !tbaa !641
  call void @streamIteratorStart(%struct.streamIterator* nonnull %10, %struct.stream* %281, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i32 0) #10, !dbg !5494
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %248) #8, !dbg !5495
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %249) #8, !dbg !5497
  %282 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %10, %struct.streamID* nonnull %12, i64* nonnull %11) #10, !dbg !5500
  %283 = icmp eq i32 %282, 0, !dbg !5500
  call void @raxStop(%struct.raxIterator* nonnull %250) #7, !dbg !5504
  br i1 %283, label %296, label %284, !dbg !5505

; <label>:284:                                    ; preds = %280
  %285 = call i8* @zmalloc(i64 24) #7, !dbg !5508
  %286 = bitcast i8* %285 to %struct.streamNACK*, !dbg !5508
  %287 = call i64 @mstime() #7, !dbg !5510
  %288 = bitcast i8* %285 to i64*, !dbg !5511
  store i64 %287, i64* %288, align 8, !dbg !5512, !tbaa !2361
  %289 = getelementptr inbounds i8, i8* %285, i64 8, !dbg !5513
  %290 = bitcast i8* %289 to i64*, !dbg !5513
  store i64 1, i64* %290, align 8, !dbg !5514, !tbaa !2369
  %291 = getelementptr inbounds i8, i8* %285, i64 16, !dbg !5515
  %292 = bitcast i8* %291 to %struct.streamConsumer**, !dbg !5515
  store %struct.streamConsumer* null, %struct.streamConsumer** %292, align 8, !dbg !5516, !tbaa !2324
  %293 = load %struct.rax*, %struct.rax** %245, align 8, !dbg !5517, !tbaa !155
  %294 = call i32 @raxInsert(%struct.rax* %293, i8* nonnull %238, i64 16, i8* %285, i8** null) #7, !dbg !5518
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %249) #8, !dbg !5519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248) #8, !dbg !5519
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %247) #8, !dbg !5519
  %295 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5520, !tbaa !234
  br label %297

; <label>:296:                                    ; preds = %280
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %249) #8, !dbg !5519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248) #8, !dbg !5519
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %247) #8, !dbg !5519
  br label %361

; <label>:297:                                    ; preds = %284, %268
  %298 = phi %struct.streamNACK* [ %277, %268 ], [ %295, %284 ], !dbg !5520
  %299 = phi i8* [ %275, %268 ], [ %285, %284 ], !dbg !5521
  %300 = phi %struct.streamNACK* [ %276, %268 ], [ %286, %284 ], !dbg !5521
  %301 = icmp eq %struct.streamNACK* %300, %298, !dbg !5522
  br i1 %301, label %361, label %302, !dbg !5523

; <label>:302:                                    ; preds = %297
  %303 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %300, i64 0, i32 2, !dbg !5524
  %304 = load %struct.streamConsumer*, %struct.streamConsumer** %303, align 8, !dbg !5524, !tbaa !2324
  %305 = icmp ne %struct.streamConsumer* %304, null, !dbg !5525
  %306 = load i64, i64* %3, align 8, !dbg !5526
  %307 = icmp ne i64 %306, 0, !dbg !5526
  %308 = and i1 %305, %307, !dbg !5527
  br i1 %308, label %309, label %314, !dbg !5527

; <label>:309:                                    ; preds = %302
  %310 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %300, i64 0, i32 0, !dbg !5528
  %311 = load i64, i64* %310, align 8, !dbg !5528, !tbaa !2361
  %312 = sub nsw i64 %117, %311, !dbg !5529
  %313 = icmp slt i64 %312, %306, !dbg !5531
  br i1 %313, label %361, label %316

; <label>:314:                                    ; preds = %302
  %315 = icmp eq %struct.streamConsumer* %304, null, !dbg !5533
  br i1 %315, label %320, label %316, !dbg !5535

; <label>:316:                                    ; preds = %309, %314
  %317 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %304, i64 0, i32 2, !dbg !5536
  %318 = load %struct.rax*, %struct.rax** %317, align 8, !dbg !5536, !tbaa !2633
  %319 = call i32 @raxRemove(%struct.rax* %318, i8* nonnull %238, i64 16, i8** null) #7, !dbg !5537
  br label %320, !dbg !5537

; <label>:320:                                    ; preds = %314, %316
  store %struct.streamConsumer* %233, %struct.streamConsumer** %303, align 8, !dbg !5538, !tbaa !2324
  %321 = load i64, i64* %5, align 8, !dbg !5539, !tbaa !265
  %322 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %300, i64 0, i32 0, !dbg !5540
  store i64 %321, i64* %322, align 8, !dbg !5541, !tbaa !2361
  %323 = load i64, i64* %4, align 8, !dbg !5542, !tbaa !265
  %324 = icmp sgt i64 %323, -1, !dbg !5544
  br i1 %324, label %335, label %325, !dbg !5545

; <label>:325:                                    ; preds = %320
  br i1 %252, label %329, label %326, !dbg !5546

; <label>:326:                                    ; preds = %325
  %327 = load %struct.rax*, %struct.rax** %251, align 8, !dbg !5547, !tbaa !2633
  %328 = call i32 @raxInsert(%struct.rax* %327, i8* nonnull %238, i64 16, i8* %299, i8** null) #7, !dbg !5548
  br label %339, !dbg !5549

; <label>:329:                                    ; preds = %325
  %330 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %300, i64 0, i32 1, !dbg !5550
  %331 = load i64, i64* %330, align 8, !dbg !5553, !tbaa !2369
  %332 = add i64 %331, 1, !dbg !5553
  store i64 %332, i64* %330, align 8, !dbg !5553, !tbaa !2369
  %333 = load %struct.rax*, %struct.rax** %251, align 8, !dbg !5547, !tbaa !2633
  %334 = call i32 @raxInsert(%struct.rax* %333, i8* nonnull %238, i64 16, i8* %299, i8** null) #7, !dbg !5548
  br label %344, !dbg !5549

; <label>:335:                                    ; preds = %320
  %336 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %300, i64 0, i32 1, !dbg !5554
  store i64 %323, i64* %336, align 8, !dbg !5556, !tbaa !2369
  %337 = load %struct.rax*, %struct.rax** %251, align 8, !dbg !5547, !tbaa !2633
  %338 = call i32 @raxInsert(%struct.rax* %337, i8* nonnull %238, i64 16, i8* %299, i8** null) #7, !dbg !5548
  br i1 %252, label %344, label %339, !dbg !5549

; <label>:339:                                    ; preds = %326, %335
  %340 = call i8* @sdsempty() #7, !dbg !5561
  %341 = load i64, i64* %240, align 8, !dbg !5562, !tbaa !178
  %342 = load i64, i64* %242, align 8, !dbg !5563, !tbaa !188
  %343 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %341, i64 %342) #7, !dbg !5564
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %343) #7, !dbg !5566
  br label %350, !dbg !5567

; <label>:344:                                    ; preds = %329, %335
  %345 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5568, !tbaa !641
  %346 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %345, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #10, !dbg !5569
  %347 = icmp eq i64 %346, 0, !dbg !5571
  br i1 %347, label %348, label %350, !dbg !5573

; <label>:348:                                    ; preds = %344
  %349 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5574, !tbaa !4964
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %349) #7, !dbg !5575
  br label %350, !dbg !5575

; <label>:350:                                    ; preds = %348, %344, %339
  %351 = add i64 %260, 1, !dbg !5576
  %352 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5577, !tbaa !3150
  %353 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %352, i64 1, !dbg !5578
  %354 = load %struct.redisObject*, %struct.redisObject** %353, align 8, !dbg !5578, !tbaa !234
  %355 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %352, i64 2, !dbg !5579
  %356 = load %struct.redisObject*, %struct.redisObject** %355, align 8, !dbg !5579, !tbaa !234
  %357 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %352, i64 %259, !dbg !5580
  %358 = load %struct.redisObject*, %struct.redisObject** %357, align 8, !dbg !5580, !tbaa !234
  call void @streamPropagateXCLAIM(%struct.client* nonnull %0, %struct.redisObject* %354, %struct.streamCG* nonnull %69, %struct.redisObject* %356, %struct.redisObject* %358, %struct.streamNACK* nonnull %300) #10, !dbg !5581
  %359 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5582, !tbaa !3277
  %360 = add nsw i64 %359, 1, !dbg !5582
  store i64 %360, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5582, !tbaa !3277
  br label %361, !dbg !5583

; <label>:361:                                    ; preds = %309, %296, %350, %297
  %362 = phi i32 [ %261, %309 ], [ %261, %296 ], [ 0, %350 ], [ %261, %297 ], !dbg !5584
  %363 = phi i64 [ %260, %309 ], [ %260, %296 ], [ %351, %350 ], [ %260, %297 ], !dbg !5415
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %238) #8, !dbg !5585
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %237) #8, !dbg !5585
  %364 = add nuw nsw i64 %259, 1, !dbg !5586
  %365 = icmp ult i64 %364, %253, !dbg !5454
  br i1 %365, label %258, label %254, !dbg !5455, !llvm.loop !5587

; <label>:366:                                    ; preds = %254
  %367 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5589, !tbaa !3150
  %368 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %367, i64 1, !dbg !5591
  %369 = load %struct.redisObject*, %struct.redisObject** %368, align 8, !dbg !5591, !tbaa !234
  %370 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %367, i64 2, !dbg !5592
  %371 = load %struct.redisObject*, %struct.redisObject** %370, align 8, !dbg !5592, !tbaa !234
  call void @streamPropagateGroupID(%struct.client* nonnull %0, %struct.redisObject* %369, %struct.streamCG* nonnull %69, %struct.redisObject* %371) #10, !dbg !5593
  %372 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5594, !tbaa !3277
  %373 = add nsw i64 %372, 1, !dbg !5594
  store i64 %373, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5594, !tbaa !3277
  br label %374, !dbg !5595

; <label>:374:                                    ; preds = %254, %366
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %234, i64 %256) #7, !dbg !5596
  call void @preventCommandPropagation(%struct.client* nonnull %0) #7, !dbg !5597
  br label %375, !dbg !5598

; <label>:375:                                    ; preds = %179, %169, %159, %146, %185, %374
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %118) #8, !dbg !5598
  br label %376

; <label>:376:                                    ; preds = %85, %26, %375, %75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !5598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !5598
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #8, !dbg !5598
  ret void, !dbg !5598
}

; Function Attrs: noredzone nounwind
define dso_local void @xdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !5599 {
  %2 = alloca %struct.streamIterator, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.streamID, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5611
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5611, !tbaa !3150
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !5613
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5613, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5614, !tbaa !3468
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #7, !dbg !5615
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !5617
  br i1 %12, label %80, label %13, !dbg !5618

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #7, !dbg !5619
  %15 = icmp eq i32 %14, 0, !dbg !5619
  br i1 %15, label %16, label %80, !dbg !5620

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !5621
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !5621
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !5621, !tbaa !641
  %20 = bitcast %struct.streamID* %5 to i8*, !dbg !5623
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #8, !dbg !5623
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5625
  %22 = load i32, i32* %21, align 8, !dbg !5625, !tbaa !3144
  %23 = icmp sgt i32 %22, 2, !dbg !5627
  br i1 %23, label %35, label %77, !dbg !5628

; <label>:24:                                     ; preds = %35
  %25 = load i32, i32* %21, align 8, !dbg !5625, !tbaa !3144
  %26 = sext i32 %25 to i64, !dbg !5627
  %27 = icmp slt i64 %42, %26, !dbg !5627
  br i1 %27, label %35, label %28, !dbg !5628, !llvm.loop !5629

; <label>:28:                                     ; preds = %24
  %29 = icmp sgt i32 %25, 2, !dbg !5633
  br i1 %29, label %30, label %77, !dbg !5635

; <label>:30:                                     ; preds = %28
  %31 = bitcast %struct.streamIterator* %2 to i8*
  %32 = bitcast %struct.streamID* %3 to i8*
  %33 = bitcast i64* %4 to i8*
  %34 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %2, i64 0, i32 9
  br label %45, !dbg !5635

; <label>:35:                                     ; preds = %16, %24
  %36 = phi i64 [ %42, %24 ], [ 2, %16 ]
  %37 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5636, !tbaa !3150
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 %36, !dbg !5639
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !5639, !tbaa !234
  %40 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %39, %struct.streamID* nonnull %5, i64 0, i32 1) #7, !dbg !5646
  %41 = icmp eq i32 %40, 0, !dbg !5647
  %42 = add nuw nsw i64 %36, 1, !dbg !5648
  br i1 %41, label %24, label %79, !dbg !5649

; <label>:43:                                     ; preds = %55
  %44 = icmp eq i32 %57, 0, !dbg !5650
  br i1 %44, label %77, label %62, !dbg !5652

; <label>:45:                                     ; preds = %30, %55
  %46 = phi i64 [ 2, %30 ], [ %58, %55 ]
  %47 = phi i32 [ 0, %30 ], [ %57, %55 ]
  %48 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5653, !tbaa !3150
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %46, !dbg !5655
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !5655, !tbaa !234
  %51 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, %struct.streamID* nonnull %5, i64 0, i32 1) #7, !dbg !5661
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %31) #8, !dbg !5666
  call void @streamIteratorStart(%struct.streamIterator* nonnull %2, %struct.stream* %19, %struct.streamID* nonnull %5, %struct.streamID* nonnull %5, i32 0) #7, !dbg !5668
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #8, !dbg !5669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #8, !dbg !5670
  %52 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3, i64* nonnull %4) #7, !dbg !5673
  %53 = icmp eq i32 %52, 0, !dbg !5673
  br i1 %53, label %55, label %54, !dbg !5674

; <label>:54:                                     ; preds = %45
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3) #7, !dbg !5675
  br label %55, !dbg !5676

; <label>:55:                                     ; preds = %45, %54
  %56 = phi i32 [ 1, %54 ], [ 0, %45 ], !dbg !5677
  call void @raxStop(%struct.raxIterator* nonnull %34) #7, !dbg !5680
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #8, !dbg !5681
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #8, !dbg !5681
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %31) #8, !dbg !5681
  %57 = add nuw nsw i32 %56, %47, !dbg !5682
  %58 = add nuw nsw i64 %46, 1, !dbg !5683
  %59 = load i32, i32* %21, align 8, !dbg !5684, !tbaa !3144
  %60 = sext i32 %59 to i64, !dbg !5633
  %61 = icmp slt i64 %58, %60, !dbg !5633
  br i1 %61, label %45, label %43, !dbg !5635, !llvm.loop !5685

; <label>:62:                                     ; preds = %43
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5687
  %64 = load %struct.redisDb*, %struct.redisDb** %63, align 8, !dbg !5687, !tbaa !2394
  %65 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5689, !tbaa !3150
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %65, i64 1, !dbg !5690
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !5690, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %64, %struct.redisObject* %67) #7, !dbg !5691
  %68 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5692, !tbaa !3150
  %69 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %68, i64 1, !dbg !5693
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !5693, !tbaa !234
  %71 = load %struct.redisDb*, %struct.redisDb** %63, align 8, !dbg !5694, !tbaa !2394
  %72 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %71, i64 0, i32 5, !dbg !5695
  %73 = load i32, i32* %72, align 8, !dbg !5695, !tbaa !2399
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), %struct.redisObject* %70, i32 %73) #7, !dbg !5696
  %74 = zext i32 %57 to i64, !dbg !5697
  %75 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5698, !tbaa !3277
  %76 = add nsw i64 %75, %74, !dbg !5698
  store i64 %76, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5698, !tbaa !3277
  br label %77, !dbg !5699

; <label>:77:                                     ; preds = %43, %28, %16, %62
  %78 = phi i64 [ %74, %62 ], [ 0, %16 ], [ 0, %28 ], [ 0, %43 ], !dbg !5700
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %78) #7, !dbg !5701
  br label %79, !dbg !5702

; <label>:79:                                     ; preds = %35, %77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #8, !dbg !5702
  br label %80

; <label>:80:                                     ; preds = %1, %13, %79
  ret void, !dbg !5702
}

; Function Attrs: noredzone nounwind
define dso_local void @xtrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !5703 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5723
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5723, !tbaa !3150
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !5725
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !5725, !tbaa !234
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5726, !tbaa !3468
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #7, !dbg !5727
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !5729
  br i1 %9, label %102, label %10, !dbg !5730

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 6) #7, !dbg !5731
  %12 = icmp eq i32 %11, 0, !dbg !5731
  br i1 %12, label %13, label %102, !dbg !5732

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !5733
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !5733
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !5733, !tbaa !641
  %17 = bitcast i64* %2 to i8*, !dbg !5736
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !5736
  store i64 -1, i64* %2, align 8, !dbg !5737, !tbaa !265
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5741
  %19 = load i32, i32* %18, align 8, !dbg !5741, !tbaa !3144
  %20 = icmp sgt i32 %19, 2, !dbg !5742
  br i1 %20, label %24, label %79, !dbg !5743

; <label>:21:                                     ; preds = %69
  %22 = load i32, i32* %18, align 8, !dbg !5741, !tbaa !3144
  %23 = icmp slt i32 %72, %22, !dbg !5742
  br i1 %23, label %24, label %76, !dbg !5743, !llvm.loop !5744

; <label>:24:                                     ; preds = %13, %21
  %25 = phi i32 [ %22, %21 ], [ %19, %13 ]
  %26 = phi i32 [ %72, %21 ], [ 2, %13 ]
  %27 = xor i32 %26, -1, !dbg !5746
  %28 = add i32 %25, %27, !dbg !5746
  %29 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5748, !tbaa !3150
  %30 = sext i32 %26 to i64, !dbg !5749
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %30, !dbg !5749
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !5749, !tbaa !234
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !5750
  %34 = load i8*, i8** %33, align 8, !dbg !5750, !tbaa !641
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !5752
  %36 = icmp eq i32 %35, 0, !dbg !5752
  %37 = icmp ne i32 %28, 0, !dbg !5753
  %38 = and i1 %37, %36, !dbg !5754
  br i1 %38, label %39, label %74, !dbg !5754

; <label>:39:                                     ; preds = %24
  %40 = add nsw i32 %26, 1, !dbg !5755
  %41 = sext i32 %40 to i64, !dbg !5756
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %41, !dbg !5756
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !5756, !tbaa !234
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !5757
  %45 = load i8*, i8** %44, align 8, !dbg !5757, !tbaa !641
  %46 = icmp sgt i32 %28, 1, !dbg !5759
  br i1 %46, label %47, label %60, !dbg !5761

; <label>:47:                                     ; preds = %39
  %48 = load i8, i8* %45, align 1, !dbg !5762, !tbaa !656
  switch i8 %48, label %60 [
    i8 126, label %49
    i8 61, label %55
  ], !dbg !5763

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !5764
  %51 = load i8, i8* %50, align 1, !dbg !5764, !tbaa !656
  %52 = icmp eq i8 %51, 0, !dbg !5765
  %53 = select i1 %52, i32 %40, i32 %26, !dbg !5766
  %54 = zext i1 %52 to i32, !dbg !5766
  br label %60, !dbg !5766

; <label>:55:                                     ; preds = %47
  %56 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !5767
  %57 = load i8, i8* %56, align 1, !dbg !5767, !tbaa !656
  %58 = icmp eq i8 %57, 0, !dbg !5769
  %59 = select i1 %58, i32 %40, i32 %26, !dbg !5770
  br label %60, !dbg !5770

; <label>:60:                                     ; preds = %49, %47, %55, %39
  %61 = phi i32 [ %59, %55 ], [ %26, %39 ], [ %53, %49 ], [ %26, %47 ], !dbg !5771
  %62 = phi i32 [ 0, %55 ], [ 0, %39 ], [ %54, %49 ], [ 0, %47 ], !dbg !5772
  %63 = add nsw i32 %61, 1, !dbg !5773
  %64 = sext i32 %63 to i64, !dbg !5775
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %64, !dbg !5775
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !5775, !tbaa !234
  %67 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %66, i64* nonnull %2, i8* null) #7, !dbg !5776
  %68 = icmp eq i32 %67, 0, !dbg !5777
  br i1 %68, label %69, label %101, !dbg !5778

; <label>:69:                                     ; preds = %60
  %70 = load i64, i64* %2, align 8, !dbg !5779, !tbaa !265
  %71 = icmp slt i64 %70, 0, !dbg !5781
  %72 = add nsw i32 %61, 2, !dbg !5782
  br i1 %71, label %73, label %21, !dbg !5783

; <label>:73:                                     ; preds = %69
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !5784
  br label %101, !dbg !5786

; <label>:74:                                     ; preds = %24
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !5787, !tbaa !3410
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %75) #7, !dbg !5789
  br label %101

; <label>:76:                                     ; preds = %21
  %77 = call i64 @streamTrimByLength(%struct.stream* %16, i64 %70, i32 %62) #10, !dbg !5791
  %78 = icmp eq i64 %77, 0, !dbg !5794
  br i1 %78, label %100, label %80, !dbg !5796

; <label>:79:                                     ; preds = %13
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i64 0, i64 0)) #7, !dbg !5797
  br label %101, !dbg !5799

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5800
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !5800, !tbaa !2394
  %83 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5802, !tbaa !3150
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %83, i64 1, !dbg !5803
  %85 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !5803, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %82, %struct.redisObject* %85) #7, !dbg !5804
  %86 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5805, !tbaa !3150
  %87 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %86, i64 1, !dbg !5806
  %88 = load %struct.redisObject*, %struct.redisObject** %87, align 8, !dbg !5806, !tbaa !234
  %89 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !5807, !tbaa !2394
  %90 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %89, i64 0, i32 5, !dbg !5808
  %91 = load i32, i32* %90, align 8, !dbg !5808, !tbaa !2399
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %88, i32 %91) #7, !dbg !5809
  %92 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5810, !tbaa !3277
  %93 = add nsw i64 %92, %77, !dbg !5810
  store i64 %93, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5810, !tbaa !3277
  %94 = icmp eq i32 %62, 0, !dbg !5811
  br i1 %94, label %100, label %95, !dbg !5813

; <label>:95:                                     ; preds = %80
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !5818
  %97 = load i64, i64* %96, align 8, !dbg !5818, !tbaa !935
  %98 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %97) #7, !dbg !5819
  %99 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #7, !dbg !5821
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %63, %struct.redisObject* %98) #7, !dbg !5823
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %61, %struct.redisObject* %99) #7, !dbg !5824
  call void @decrRefCount(%struct.redisObject* %99) #7, !dbg !5825
  call void @decrRefCount(%struct.redisObject* %98) #7, !dbg !5826
  br label %100, !dbg !5827

; <label>:100:                                    ; preds = %80, %76, %95
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %77) #7, !dbg !5828
  br label %101, !dbg !5829

; <label>:101:                                    ; preds = %60, %73, %74, %79, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !5829
  br label %102

; <label>:102:                                    ; preds = %1, %10, %101
  ret void, !dbg !5829
}

; Function Attrs: noredzone nounwind
define dso_local void @xinfoCommand(%struct.client*) local_unnamed_addr #0 !dbg !5830 {
  %2 = alloca [5 x i8*], align 16
  %3 = alloca %struct.raxIterator, align 8
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca <2 x i64>, align 16
  %6 = bitcast <2 x i64>* %5 to %struct.streamID*
  %7 = alloca <2 x i64>, align 16
  %8 = bitcast <2 x i64>* %7 to %struct.streamID*
  %9 = bitcast [5 x i8*]* %2 to i8*, !dbg !5858
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #8, !dbg !5858
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %11 = bitcast i8** %10 to i64*, !dbg !5859
  store i64 0, i64* %11, align 16, !dbg !5859
  %12 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !5859
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.74, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !5859
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !5859
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !5859
  store <2 x i8*> <i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !5859
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5861
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5861, !tbaa !3150
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !5863
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5863, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !5864
  %20 = load i8*, i8** %19, align 8, !dbg !5864, !tbaa !641
  %21 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #11, !dbg !5865
  %22 = icmp eq i32 %21, 0, !dbg !5865
  br i1 %22, label %23, label %25, !dbg !5866

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !5859
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %24) #7, !dbg !5867
  br label %240, !dbg !5869

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5870
  %27 = load i32, i32* %26, align 8, !dbg !5870, !tbaa !3144
  %28 = icmp slt i32 %27, 3, !dbg !5872
  br i1 %28, label %29, label %30, !dbg !5873

; <label>:29:                                     ; preds = %25
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0)) #7, !dbg !5874
  br label %240, !dbg !5876

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !5878
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !5878, !tbaa !234
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !5880, !tbaa !4591
  %34 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %32, %struct.redisObject* %33) #7, !dbg !5881
  %35 = icmp eq %struct.redisObject* %34, null, !dbg !5883
  br i1 %35, label %240, label %36, !dbg !5885

; <label>:36:                                     ; preds = %30
  %37 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %34, i32 6) #7, !dbg !5886
  %38 = icmp eq i32 %37, 0, !dbg !5886
  br i1 %38, label %39, label %240, !dbg !5887

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i64 0, i32 2, !dbg !5888
  %41 = bitcast i8** %40 to %struct.stream**, !dbg !5888
  %42 = load %struct.stream*, %struct.stream** %41, align 8, !dbg !5888, !tbaa !641
  %43 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0)) #11, !dbg !5889
  %44 = icmp eq i32 %43, 0, !dbg !5889
  br i1 %44, label %45, label %155, !dbg !5890

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %26, align 8, !dbg !5891, !tbaa !3144
  %47 = icmp eq i32 %46, 4, !dbg !5892
  br i1 %47, label %48, label %155, !dbg !5893

; <label>:48:                                     ; preds = %45
  %49 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5894, !tbaa !3150
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 3, !dbg !5895
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !5895, !tbaa !234
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !5896
  %53 = load i8*, i8** %52, align 8, !dbg !5896, !tbaa !641
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !5900
  %55 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !5900, !tbaa !123
  %56 = icmp eq %struct.rax* %55, null, !dbg !5901
  br i1 %56, label %96, label %57, !dbg !5902

; <label>:57:                                     ; preds = %48
  %58 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !5905
  %59 = load i8, i8* %58, align 1, !dbg !5905, !tbaa !656
  %60 = trunc i8 %59 to i3, !dbg !5907
  switch i3 %60, label %82 [
    i3 0, label %61
    i3 1, label %64
    i3 2, label %68
    i3 3, label %73
    i3 -4, label %78
  ], !dbg !5907

; <label>:61:                                     ; preds = %57
  %62 = lshr i8 %59, 3, !dbg !5908
  %63 = zext i8 %62 to i64, !dbg !5908
  br label %82, !dbg !5909

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !5910
  %66 = load i8, i8* %65, align 1, !dbg !5911, !tbaa !656
  %67 = zext i8 %66 to i64, !dbg !5910
  br label %82, !dbg !5912

; <label>:68:                                     ; preds = %57
  %69 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !5913
  %70 = bitcast i8* %69 to i16*, !dbg !5914
  %71 = load i16, i16* %70, align 1, !dbg !5914, !tbaa !667
  %72 = zext i16 %71 to i64, !dbg !5913
  br label %82, !dbg !5915

; <label>:73:                                     ; preds = %57
  %74 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !5916
  %75 = bitcast i8* %74 to i32*, !dbg !5917
  %76 = load i32, i32* %75, align 1, !dbg !5917, !tbaa !672
  %77 = zext i32 %76 to i64, !dbg !5916
  br label %82, !dbg !5918

; <label>:78:                                     ; preds = %57
  %79 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !5919
  %80 = bitcast i8* %79 to i64*, !dbg !5920
  %81 = load i64, i64* %80, align 1, !dbg !5920, !tbaa !117
  br label %82, !dbg !5921

; <label>:82:                                     ; preds = %78, %73, %68, %64, %61, %57
  %83 = phi i64 [ %81, %78 ], [ %77, %73 ], [ %72, %68 ], [ %67, %64 ], [ %63, %61 ], [ 0, %57 ], !dbg !5922
  %84 = tail call i8* @raxFind(%struct.rax* nonnull %55, i8* nonnull %53, i64 %83) #7, !dbg !5923
  %85 = bitcast i8* %84 to %struct.streamCG*, !dbg !5923
  %86 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5925, !tbaa !234
  %87 = icmp eq %struct.streamCG* %86, %85, !dbg !5926
  %88 = icmp eq i8* %84, null, !dbg !5927
  %89 = or i1 %88, %87
  br i1 %89, label %90, label %100

; <label>:90:                                     ; preds = %82
  %91 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5930, !tbaa !3150
  %92 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %91, i64 3
  %93 = load %struct.redisObject*, %struct.redisObject** %92, align 8, !dbg !5932, !tbaa !234
  %94 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %93, i64 0, i32 2
  %95 = load i8*, i8** %94, align 8, !dbg !5933, !tbaa !641
  br label %96

; <label>:96:                                     ; preds = %90, %48
  %97 = phi i8* [ %95, %90 ], [ %53, %48 ], !dbg !5933
  %98 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !5934
  %99 = load i8*, i8** %98, align 8, !dbg !5934, !tbaa !641
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %97, i8* %99) #7, !dbg !5935
  br label %240

; <label>:100:                                    ; preds = %82
  %101 = getelementptr inbounds i8, i8* %84, i64 24, !dbg !5936
  %102 = bitcast i8* %101 to %struct.rax**, !dbg !5936
  %103 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !5936, !tbaa !159
  %104 = tail call i64 @raxSize(%struct.rax* %103) #7, !dbg !5937
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %104) #7, !dbg !5938
  %105 = bitcast %struct.raxIterator* %3 to i8*, !dbg !5939
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %105) #8, !dbg !5939
  %106 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !5940, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %106) #7, !dbg !5942
  %107 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !5943
  %108 = call i64 @mstime() #7, !dbg !5944
  %109 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #7, !dbg !5946
  %110 = icmp eq i32 %109, 0, !dbg !5947
  br i1 %110, label %154, label %111, !dbg !5947

; <label>:111:                                    ; preds = %100
  %112 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %113 = bitcast i8** %112 to %struct.streamConsumer**
  br label %114, !dbg !5947

; <label>:114:                                    ; preds = %111, %147
  %115 = load %struct.streamConsumer*, %struct.streamConsumer** %113, align 8, !dbg !5948, !tbaa !516
  %116 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 0, !dbg !5950
  %117 = load i64, i64* %116, align 8, !dbg !5950, !tbaa !4091
  %118 = sub nsw i64 %108, %117, !dbg !5951
  %119 = icmp sgt i64 %118, 0, !dbg !5953
  %120 = select i1 %119, i64 %118, i64 0, !dbg !5953
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 6) #7, !dbg !5954
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #7, !dbg !5955
  %121 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 1, !dbg !5956
  %122 = load i8*, i8** %121, align 8, !dbg !5956, !tbaa !2327
  %123 = getelementptr inbounds i8, i8* %122, i64 -1, !dbg !5959
  %124 = load i8, i8* %123, align 1, !dbg !5959, !tbaa !656
  %125 = trunc i8 %124 to i3, !dbg !5961
  switch i3 %125, label %147 [
    i3 0, label %126
    i3 1, label %129
    i3 2, label %133
    i3 3, label %138
    i3 -4, label %143
  ], !dbg !5961

; <label>:126:                                    ; preds = %114
  %127 = lshr i8 %124, 3, !dbg !5962
  %128 = zext i8 %127 to i64, !dbg !5962
  br label %147, !dbg !5963

; <label>:129:                                    ; preds = %114
  %130 = getelementptr inbounds i8, i8* %122, i64 -3, !dbg !5964
  %131 = load i8, i8* %130, align 1, !dbg !5965, !tbaa !656
  %132 = zext i8 %131 to i64, !dbg !5964
  br label %147, !dbg !5966

; <label>:133:                                    ; preds = %114
  %134 = getelementptr inbounds i8, i8* %122, i64 -5, !dbg !5967
  %135 = bitcast i8* %134 to i16*, !dbg !5968
  %136 = load i16, i16* %135, align 1, !dbg !5968, !tbaa !667
  %137 = zext i16 %136 to i64, !dbg !5967
  br label %147, !dbg !5969

; <label>:138:                                    ; preds = %114
  %139 = getelementptr inbounds i8, i8* %122, i64 -9, !dbg !5970
  %140 = bitcast i8* %139 to i32*, !dbg !5971
  %141 = load i32, i32* %140, align 1, !dbg !5971, !tbaa !672
  %142 = zext i32 %141 to i64, !dbg !5970
  br label %147, !dbg !5972

; <label>:143:                                    ; preds = %114
  %144 = getelementptr inbounds i8, i8* %122, i64 -17, !dbg !5973
  %145 = bitcast i8* %144 to i64*, !dbg !5974
  %146 = load i64, i64* %145, align 1, !dbg !5974, !tbaa !117
  br label %147, !dbg !5975

; <label>:147:                                    ; preds = %114, %126, %129, %133, %138, %143
  %148 = phi i64 [ %146, %143 ], [ %142, %138 ], [ %137, %133 ], [ %132, %129 ], [ %128, %126 ], [ 0, %114 ], !dbg !5976
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %122, i64 %148) #7, !dbg !5977
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #7, !dbg !5978
  %149 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 2, !dbg !5979
  %150 = load %struct.rax*, %struct.rax** %149, align 8, !dbg !5979, !tbaa !2633
  %151 = call i64 @raxSize(%struct.rax* %150) #7, !dbg !5980
  call void @addReplyLongLong(%struct.client* %0, i64 %151) #7, !dbg !5981
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #7, !dbg !5982
  call void @addReplyLongLong(%struct.client* %0, i64 %120) #7, !dbg !5983
  %152 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #7, !dbg !5946
  %153 = icmp eq i32 %152, 0, !dbg !5947
  br i1 %153, label %154, label %114, !dbg !5947, !llvm.loop !5984

; <label>:154:                                    ; preds = %147, %100
  call void @raxStop(%struct.raxIterator* nonnull %3) #7, !dbg !5986
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %105) #8, !dbg !5987
  br label %240

; <label>:155:                                    ; preds = %39, %45
  %156 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #11, !dbg !5988
  %157 = icmp eq i32 %156, 0, !dbg !5988
  br i1 %157, label %158, label %197, !dbg !5989

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %26, align 8, !dbg !5990, !tbaa !3144
  %160 = icmp eq i32 %159, 3, !dbg !5991
  br i1 %160, label %161, label %197, !dbg !5992

; <label>:161:                                    ; preds = %158
  %162 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !5993
  %163 = load %struct.rax*, %struct.rax** %162, align 8, !dbg !5993, !tbaa !123
  %164 = icmp eq %struct.rax* %163, null, !dbg !5995
  br i1 %164, label %165, label %166, !dbg !5996

; <label>:165:                                    ; preds = %161
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #7, !dbg !5997
  br label %240, !dbg !5999

; <label>:166:                                    ; preds = %161
  %167 = tail call i64 @raxSize(%struct.rax* nonnull %163) #7, !dbg !6000
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %167) #7, !dbg !6001
  %168 = bitcast %struct.raxIterator* %4 to i8*, !dbg !6002
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %168) #8, !dbg !6002
  %169 = load %struct.rax*, %struct.rax** %162, align 8, !dbg !6003, !tbaa !123
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %169) #7, !dbg !6005
  %170 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #7, !dbg !6006
  %171 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #7, !dbg !6007
  %172 = icmp eq i32 %171, 0, !dbg !6008
  br i1 %172, label %196, label %173, !dbg !6008

; <label>:173:                                    ; preds = %166
  %174 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 3
  %175 = bitcast i8** %174 to %struct.streamCG**
  %176 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2
  %177 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %178, !dbg !6008

; <label>:178:                                    ; preds = %173, %178
  %179 = load %struct.streamCG*, %struct.streamCG** %175, align 8, !dbg !6009, !tbaa !516
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 8) #7, !dbg !6011
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #7, !dbg !6012
  %180 = load i8*, i8** %176, align 8, !dbg !6013, !tbaa !686
  %181 = load i64, i64* %177, align 8, !dbg !6014, !tbaa !684
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %180, i64 %181) #7, !dbg !6015
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0)) #7, !dbg !6016
  %182 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 2, !dbg !6017
  %183 = load %struct.rax*, %struct.rax** %182, align 8, !dbg !6017, !tbaa !159
  %184 = call i64 @raxSize(%struct.rax* %183) #7, !dbg !6018
  call void @addReplyLongLong(%struct.client* %0, i64 %184) #7, !dbg !6019
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #7, !dbg !6020
  %185 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 1, !dbg !6021
  %186 = load %struct.rax*, %struct.rax** %185, align 8, !dbg !6021, !tbaa !155
  %187 = call i64 @raxSize(%struct.rax* %186) #7, !dbg !6022
  call void @addReplyLongLong(%struct.client* %0, i64 %187) #7, !dbg !6023
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i64 0, i64 0)) #7, !dbg !6024
  %188 = call i8* @sdsempty() #7, !dbg !6028
  %189 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 0, i32 0, !dbg !6029
  %190 = load i64, i64* %189, align 8, !dbg !6029, !tbaa !178
  %191 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 0, i32 1, !dbg !6030
  %192 = load i64, i64* %191, align 8, !dbg !6030, !tbaa !188
  %193 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %190, i64 %192) #7, !dbg !6031
  call void @addReplyBulkSds(%struct.client* %0, i8* %193) #7, !dbg !6033
  %194 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #7, !dbg !6007
  %195 = icmp eq i32 %194, 0, !dbg !6008
  br i1 %195, label %196, label %178, !dbg !6008, !llvm.loop !6034

; <label>:196:                                    ; preds = %178, %166
  call void @raxStop(%struct.raxIterator* nonnull %4) #7, !dbg !6036
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %168) #8, !dbg !6037
  br label %240, !dbg !6038

; <label>:197:                                    ; preds = %155, %158
  %198 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0)) #11, !dbg !6039
  %199 = icmp eq i32 %198, 0, !dbg !6039
  br i1 %199, label %200, label %239, !dbg !6040

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %26, align 8, !dbg !6041, !tbaa !3144
  %202 = icmp eq i32 %201, 3, !dbg !6042
  br i1 %202, label %203, label %239, !dbg !6043

; <label>:203:                                    ; preds = %200
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 14) #7, !dbg !6044
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0)) #7, !dbg !6045
  %204 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 1, !dbg !6046
  %205 = load i64, i64* %204, align 8, !dbg !6046, !tbaa !935
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %205) #7, !dbg !6047
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0)) #7, !dbg !6048
  %206 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 0, !dbg !6049
  %207 = load %struct.rax*, %struct.rax** %206, align 8, !dbg !6049, !tbaa !108
  %208 = tail call i64 @raxSize(%struct.rax* %207) #7, !dbg !6050
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %208) #7, !dbg !6051
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0)) #7, !dbg !6052
  %209 = load %struct.rax*, %struct.rax** %206, align 8, !dbg !6053, !tbaa !108
  %210 = getelementptr inbounds %struct.rax, %struct.rax* %209, i64 0, i32 2, !dbg !6054
  %211 = load i64, i64* %210, align 8, !dbg !6054, !tbaa !6055
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %211) #7, !dbg !6057
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #7, !dbg !6058
  %212 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6059
  %213 = load %struct.rax*, %struct.rax** %212, align 8, !dbg !6059, !tbaa !123
  %214 = icmp eq %struct.rax* %213, null, !dbg !6060
  br i1 %214, label %217, label %215, !dbg !6060

; <label>:215:                                    ; preds = %203
  %216 = tail call i64 @raxSize(%struct.rax* nonnull %213) #7, !dbg !6061
  br label %217, !dbg !6060

; <label>:217:                                    ; preds = %203, %215
  %218 = phi i64 [ %216, %215 ], [ 0, %203 ], !dbg !6060
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %218) #7, !dbg !6062
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #7, !dbg !6063
  %219 = tail call i8* @sdsempty() #7, !dbg !6067
  %220 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 0, !dbg !6068
  %221 = load i64, i64* %220, align 8, !dbg !6068, !tbaa !178
  %222 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 1, !dbg !6069
  %223 = load i64, i64* %222, align 8, !dbg !6069, !tbaa !188
  %224 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %221, i64 %223) #7, !dbg !6070
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %224) #7, !dbg !6072
  %225 = bitcast <2 x i64>* %5 to i8*, !dbg !6073
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %225) #8, !dbg !6073
  %226 = bitcast <2 x i64>* %7 to i8*, !dbg !6073
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %226) #8, !dbg !6073
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16, !dbg !6074, !tbaa !117
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %7, align 16, !dbg !6075, !tbaa !117
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0)) #7, !dbg !6076
  %227 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #10, !dbg !6079
  %228 = trunc i64 %227 to i32, !dbg !6079
  %229 = icmp eq i32 %228, 0, !dbg !6081
  br i1 %229, label %230, label %232, !dbg !6083

; <label>:230:                                    ; preds = %217
  %231 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6084, !tbaa !4964
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %231) #7, !dbg !6085
  br label %232, !dbg !6085

; <label>:232:                                    ; preds = %217, %230
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0)) #7, !dbg !6086
  %233 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 1, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #10, !dbg !6087
  %234 = trunc i64 %233 to i32, !dbg !6087
  %235 = icmp eq i32 %234, 0, !dbg !6088
  br i1 %235, label %236, label %238, !dbg !6090

; <label>:236:                                    ; preds = %232
  %237 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6091, !tbaa !4964
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %237) #7, !dbg !6092
  br label %238, !dbg !6092

; <label>:238:                                    ; preds = %232, %236
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %226) #8, !dbg !6093
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %225) #8, !dbg !6093
  br label %240, !dbg !6094

; <label>:239:                                    ; preds = %197, %200
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !6095
  br label %240

; <label>:240:                                    ; preds = %165, %36, %30, %96, %154, %196, %239, %238, %29, %23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #8, !dbg !6097
  ret void, !dbg !6097
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/t_stream.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !7, !10, !12, !13, !18, !33, !43, !53}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !20, line: 51, size: 24, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !27, !28, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !20, line: 52, baseType: !23, size: 8)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 43, baseType: !9)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !19, file: !20, line: 53, baseType: !23, size: 8, offset: 8)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !19, file: !20, line: 54, baseType: !9, size: 8, offset: 16)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !19, file: !20, line: 55, baseType: !30, offset: 24)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: -1)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !20, line: 57, size: 40, elements: !35)
!35 = !{!36, !40, !41, !42}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !34, file: !20, line: 58, baseType: !37, size: 16)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !24, line: 36, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !26, line: 57, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !34, file: !20, line: 59, baseType: !37, size: 16, offset: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !20, line: 60, baseType: !9, size: 8, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !34, file: !20, line: 61, baseType: !30, offset: 40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !20, line: 63, size: 72, elements: !45)
!45 = !{!46, !50, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !44, file: !20, line: 64, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !24, line: 48, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 79, baseType: !49)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !44, file: !20, line: 65, baseType: !47, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !20, line: 66, baseType: !9, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !44, file: !20, line: 67, baseType: !30, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !20, line: 69, size: 136, elements: !55)
!55 = !{!56, !59, !60, !61}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !20, line: 70, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 60, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 105, baseType: !17)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !54, file: !20, line: 71, baseType: !57, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !20, line: 72, baseType: !9, size: 8, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !54, file: !20, line: 73, baseType: !30, offset: 136)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"wchar_size", i32 4}
!65 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!66 = distinct !DISubprogram(name: "streamNew", scope: !1, file: !1, line: 52, type: !67, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !101)
!67 = !DISubroutineType(types: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !71, line: 21, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !71, line: 16, size: 320, elements: !73)
!73 = !{!74, !93, !94, !100}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !72, file: !71, line: 17, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !77, line: 137, baseType: !78)
!77 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !77, line: 133, size: 192, elements: !79)
!79 = !{!80, !91, !92}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !78, file: !77, line: 134, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !77, line: 131, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !77, line: 98, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !83, file: !77, line: 99, baseType: !47, size: 1, flags: DIFlagBitField, extraData: i64 0)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !83, file: !77, line: 100, baseType: !47, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !83, file: !77, line: 101, baseType: !47, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !83, file: !77, line: 102, baseType: !47, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !77, line: 130, baseType: !90, offset: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, elements: !31)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !78, file: !77, line: 135, baseType: !57, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !78, file: !77, line: 136, baseType: !57, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !71, line: 18, baseType: !57, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !72, file: !71, line: 19, baseType: !95, size: 128, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !71, line: 14, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !71, line: 11, size: 128, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !96, file: !71, line: 12, baseType: !57, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !96, file: !71, line: 13, baseType: !57, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !72, file: !71, line: 20, baseType: !75, size: 64, offset: 256)
!101 = !{!102}
!102 = !DILocalVariable(name: "s", scope: !66, file: !1, line: 53, type: !69)
!103 = !DILocation(line: 53, column: 17, scope: !66)
!104 = !DILocation(line: 53, column: 13, scope: !66)
!105 = !DILocation(line: 54, column: 14, scope: !66)
!106 = !DILocation(line: 54, column: 8, scope: !66)
!107 = !DILocation(line: 54, column: 12, scope: !66)
!108 = !{!109, !110, i64 0}
!109 = !{!"stream", !110, i64 0, !113, i64 8, !114, i64 16, !110, i64 32}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!"long", !111, i64 0}
!114 = !{!"streamID", !113, i64 0, !113, i64 8}
!115 = !DILocation(line: 55, column: 8, scope: !66)
!116 = !DILocation(line: 55, column: 15, scope: !66)
!117 = !{!113, !113, i64 0}
!118 = !DILocation(line: 57, column: 16, scope: !66)
!119 = !DILocation(line: 57, column: 20, scope: !66)
!120 = !{!109, !113, i64 24}
!121 = !DILocation(line: 58, column: 8, scope: !66)
!122 = !DILocation(line: 58, column: 16, scope: !66)
!123 = !{!109, !110, i64 32}
!124 = !DILocation(line: 59, column: 5, scope: !66)
!125 = distinct !DISubprogram(name: "freeStream", scope: !1, file: !1, line: 63, type: !126, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !69}
!128 = !{!129}
!129 = !DILocalVariable(name: "s", arg: 1, scope: !125, file: !1, line: 63, type: !69)
!130 = !DILocation(line: 63, column: 25, scope: !125)
!131 = !DILocation(line: 64, column: 28, scope: !125)
!132 = !DILocation(line: 64, column: 5, scope: !125)
!133 = !DILocation(line: 65, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !125, file: !1, line: 65, column: 9)
!135 = !DILocation(line: 65, column: 9, scope: !134)
!136 = !DILocation(line: 65, column: 9, scope: !125)
!137 = !DILocation(line: 66, column: 9, scope: !134)
!138 = !DILocation(line: 67, column: 11, scope: !125)
!139 = !DILocation(line: 67, column: 5, scope: !125)
!140 = !DILocation(line: 68, column: 1, scope: !125)
!141 = distinct !DISubprogram(name: "streamFreeCG", scope: !1, file: !1, line: 1635, type: !142, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !151)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !71, line: 64, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !71, line: 51, size: 256, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !146, file: !71, line: 52, baseType: !95, size: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !146, file: !71, line: 55, baseType: !75, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !146, file: !71, line: 61, baseType: !75, size: 64, offset: 192)
!151 = !{!152}
!152 = !DILocalVariable(name: "cg", arg: 1, scope: !141, file: !1, line: 1635, type: !144)
!153 = !DILocation(line: 1635, column: 29, scope: !141)
!154 = !DILocation(line: 1636, column: 29, scope: !141)
!155 = !{!156, !110, i64 16}
!156 = !{!"streamCG", !114, i64 0, !110, i64 16, !110, i64 24}
!157 = !DILocation(line: 1636, column: 5, scope: !141)
!158 = !DILocation(line: 1637, column: 29, scope: !141)
!159 = !{!156, !110, i64 24}
!160 = !DILocation(line: 1637, column: 5, scope: !141)
!161 = !DILocation(line: 1638, column: 11, scope: !141)
!162 = !DILocation(line: 1638, column: 5, scope: !141)
!163 = !DILocation(line: 1639, column: 1, scope: !141)
!164 = distinct !DISubprogram(name: "streamNextID", scope: !1, file: !1, line: 74, type: !165, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !168)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!168 = !{!169, !170, !171}
!169 = !DILocalVariable(name: "last_id", arg: 1, scope: !164, file: !1, line: 74, type: !167)
!170 = !DILocalVariable(name: "new_id", arg: 2, scope: !164, file: !1, line: 74, type: !167)
!171 = !DILocalVariable(name: "ms", scope: !164, file: !1, line: 75, type: !57)
!172 = !DILocation(line: 74, column: 29, scope: !164)
!173 = !DILocation(line: 74, column: 48, scope: !164)
!174 = !DILocation(line: 75, column: 19, scope: !164)
!175 = !DILocation(line: 75, column: 14, scope: !164)
!176 = !DILocation(line: 76, column: 23, scope: !177)
!177 = distinct !DILexicalBlock(scope: !164, file: !1, line: 76, column: 9)
!178 = !{!114, !113, i64 0}
!179 = !DILocation(line: 76, column: 12, scope: !177)
!180 = !DILocation(line: 0, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 79, column: 12)
!182 = !DILocation(line: 76, column: 9, scope: !164)
!183 = !DILocation(line: 77, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 76, column: 27)
!185 = !DILocation(line: 79, column: 5, scope: !184)
!186 = !DILocation(line: 80, column: 20, scope: !181)
!187 = !DILocation(line: 81, column: 32, scope: !181)
!188 = !{!114, !113, i64 8}
!189 = !DILocation(line: 81, column: 35, scope: !181)
!190 = !DILocation(line: 81, column: 17, scope: !181)
!191 = !DILocation(line: 81, column: 21, scope: !181)
!192 = !DILocation(line: 83, column: 1, scope: !164)
!193 = distinct !DISubprogram(name: "lpAppendInteger", scope: !1, file: !1, line: 87, type: !194, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !199)
!194 = !DISubroutineType(types: !195)
!195 = !{!8, !8, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !24, line: 56, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !26, line: 103, baseType: !198)
!198 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!199 = !{!200, !201, !202, !206}
!200 = !DILocalVariable(name: "lp", arg: 1, scope: !193, file: !1, line: 87, type: !8)
!201 = !DILocalVariable(name: "value", arg: 2, scope: !193, file: !1, line: 87, type: !196)
!202 = !DILocalVariable(name: "buf", scope: !193, file: !1, line: 88, type: !203)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 21)
!206 = !DILocalVariable(name: "slen", scope: !193, file: !1, line: 89, type: !12)
!207 = !DILocation(line: 87, column: 47, scope: !193)
!208 = !DILocation(line: 87, column: 59, scope: !193)
!209 = !DILocation(line: 88, column: 5, scope: !193)
!210 = !DILocation(line: 88, column: 10, scope: !193)
!211 = !DILocation(line: 89, column: 16, scope: !193)
!212 = !DILocation(line: 89, column: 9, scope: !193)
!213 = !DILocation(line: 90, column: 12, scope: !193)
!214 = !DILocation(line: 91, column: 1, scope: !193)
!215 = !DILocation(line: 90, column: 5, scope: !193)
!216 = distinct !DISubprogram(name: "lpReplaceInteger", scope: !1, file: !1, line: 97, type: !217, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !220)
!217 = !DISubroutineType(types: !218)
!218 = !{!8, !8, !219, !196}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DILocalVariable(name: "lp", arg: 1, scope: !216, file: !1, line: 97, type: !8)
!222 = !DILocalVariable(name: "pos", arg: 2, scope: !216, file: !1, line: 97, type: !219)
!223 = !DILocalVariable(name: "value", arg: 3, scope: !216, file: !1, line: 97, type: !196)
!224 = !DILocalVariable(name: "buf", scope: !216, file: !1, line: 98, type: !203)
!225 = !DILocalVariable(name: "slen", scope: !216, file: !1, line: 99, type: !12)
!226 = !DILocation(line: 97, column: 48, scope: !216)
!227 = !DILocation(line: 97, column: 68, scope: !216)
!228 = !DILocation(line: 97, column: 81, scope: !216)
!229 = !DILocation(line: 98, column: 5, scope: !216)
!230 = !DILocation(line: 98, column: 10, scope: !216)
!231 = !DILocation(line: 99, column: 16, scope: !216)
!232 = !DILocation(line: 99, column: 9, scope: !216)
!233 = !DILocation(line: 100, column: 52, scope: !216)
!234 = !{!110, !110, i64 0}
!235 = !DILocation(line: 100, column: 12, scope: !216)
!236 = !DILocation(line: 101, column: 1, scope: !216)
!237 = !DILocation(line: 100, column: 5, scope: !216)
!238 = distinct !DISubprogram(name: "lpGetInteger", scope: !1, file: !1, line: 106, type: !239, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!196, !8}
!241 = !{!242, !243, !244, !245, !247}
!242 = !DILocalVariable(name: "ele", arg: 1, scope: !238, file: !1, line: 106, type: !8)
!243 = !DILocalVariable(name: "v", scope: !238, file: !1, line: 107, type: !196)
!244 = !DILocalVariable(name: "e", scope: !238, file: !1, line: 108, type: !8)
!245 = !DILocalVariable(name: "ll", scope: !238, file: !1, line: 113, type: !246)
!246 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!247 = !DILocalVariable(name: "retval", scope: !238, file: !1, line: 114, type: !12)
!248 = !DILocation(line: 106, column: 37, scope: !238)
!249 = !DILocation(line: 107, column: 5, scope: !238)
!250 = !DILocation(line: 107, column: 13, scope: !238)
!251 = !DILocation(line: 108, column: 24, scope: !238)
!252 = !DILocation(line: 108, column: 20, scope: !238)
!253 = !DILocation(line: 109, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !238, file: !1, line: 109, column: 9)
!255 = !DILocation(line: 109, column: 9, scope: !238)
!256 = !DILocation(line: 109, column: 27, scope: !254)
!257 = !DILocation(line: 109, column: 20, scope: !254)
!258 = !DILocation(line: 113, column: 5, scope: !238)
!259 = !DILocation(line: 114, column: 37, scope: !238)
!260 = !DILocation(line: 113, column: 15, scope: !238)
!261 = !DILocation(line: 114, column: 18, scope: !238)
!262 = !DILocation(line: 114, column: 9, scope: !238)
!263 = !DILocation(line: 115, column: 5, scope: !238)
!264 = !DILocation(line: 116, column: 9, scope: !238)
!265 = !{!266, !266, i64 0}
!266 = !{!"long long", !111, i64 0}
!267 = !DILocation(line: 116, column: 7, scope: !238)
!268 = !DILocation(line: 118, column: 1, scope: !238)
!269 = !DILocation(line: 0, scope: !238)
!270 = distinct !DISubprogram(name: "streamLogListpackContent", scope: !1, file: !1, line: 122, type: !271, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !8}
!273 = !{!274, !275, !276, !279, !280}
!274 = !DILocalVariable(name: "lp", arg: 1, scope: !270, file: !1, line: 122, type: !8)
!275 = !DILocalVariable(name: "p", scope: !270, file: !1, line: 123, type: !8)
!276 = !DILocalVariable(name: "buf", scope: !277, file: !1, line: 125, type: !278)
!277 = distinct !DILexicalBlock(scope: !270, file: !1, line: 124, column: 14)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 168, elements: !204)
!279 = !DILocalVariable(name: "v", scope: !277, file: !1, line: 126, type: !196)
!280 = !DILocalVariable(name: "ele", scope: !277, file: !1, line: 127, type: !8)
!281 = !DILocation(line: 122, column: 46, scope: !270)
!282 = !DILocation(line: 123, column: 24, scope: !270)
!283 = !DILocation(line: 123, column: 20, scope: !270)
!284 = !DILocation(line: 124, column: 5, scope: !270)
!285 = !DILocation(line: 125, column: 9, scope: !277)
!286 = !DILocation(line: 125, column: 23, scope: !277)
!287 = !DILocation(line: 126, column: 9, scope: !277)
!288 = !DILocation(line: 126, column: 17, scope: !277)
!289 = !DILocation(line: 127, column: 30, scope: !277)
!290 = !DILocation(line: 127, column: 24, scope: !277)
!291 = !DILocation(line: 128, column: 52, scope: !277)
!292 = !DILocation(line: 128, column: 47, scope: !277)
!293 = !DILocation(line: 128, column: 9, scope: !277)
!294 = !DILocation(line: 129, column: 13, scope: !277)
!295 = !DILocation(line: 130, column: 5, scope: !270)
!296 = distinct !{!296, !284, !295}
!297 = !DILocation(line: 131, column: 1, scope: !270)
!298 = distinct !DISubprogram(name: "streamEncodeID", scope: !1, file: !1, line: 135, type: !299, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !7, !167}
!301 = !{!302, !303, !304}
!302 = !DILocalVariable(name: "buf", arg: 1, scope: !298, file: !1, line: 135, type: !7)
!303 = !DILocalVariable(name: "id", arg: 2, scope: !298, file: !1, line: 135, type: !167)
!304 = !DILocalVariable(name: "e", scope: !298, file: !1, line: 136, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 2)
!308 = !DILocation(line: 135, column: 27, scope: !298)
!309 = !DILocation(line: 135, column: 42, scope: !298)
!310 = !DILocation(line: 136, column: 5, scope: !298)
!311 = !DILocation(line: 136, column: 14, scope: !298)
!312 = !DILocation(line: 137, column: 12, scope: !298)
!313 = !DILocation(line: 137, column: 5, scope: !298)
!314 = !DILocation(line: 137, column: 10, scope: !298)
!315 = !DILocation(line: 138, column: 12, scope: !298)
!316 = !DILocation(line: 138, column: 5, scope: !298)
!317 = !DILocation(line: 138, column: 10, scope: !298)
!318 = !DILocation(line: 139, column: 5, scope: !298)
!319 = !DILocation(line: 140, column: 1, scope: !298)
!320 = distinct !DISubprogram(name: "streamDecodeID", scope: !1, file: !1, line: 145, type: !299, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !321)
!321 = !{!322, !323, !324}
!322 = !DILocalVariable(name: "buf", arg: 1, scope: !320, file: !1, line: 145, type: !7)
!323 = !DILocalVariable(name: "id", arg: 2, scope: !320, file: !1, line: 145, type: !167)
!324 = !DILocalVariable(name: "e", scope: !320, file: !1, line: 146, type: !305)
!325 = !DILocation(line: 145, column: 27, scope: !320)
!326 = !DILocation(line: 145, column: 42, scope: !320)
!327 = !DILocation(line: 146, column: 5, scope: !320)
!328 = !DILocation(line: 146, column: 14, scope: !320)
!329 = !DILocation(line: 147, column: 5, scope: !320)
!330 = !DILocation(line: 148, column: 14, scope: !320)
!331 = !DILocation(line: 148, column: 9, scope: !320)
!332 = !DILocation(line: 148, column: 12, scope: !320)
!333 = !DILocation(line: 149, column: 15, scope: !320)
!334 = !DILocation(line: 149, column: 9, scope: !320)
!335 = !DILocation(line: 149, column: 13, scope: !320)
!336 = !DILocation(line: 150, column: 1, scope: !320)
!337 = distinct !DISubprogram(name: "streamCompareID", scope: !1, file: !1, line: 153, type: !338, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!12, !167, !167}
!340 = !{!341, !342}
!341 = !DILocalVariable(name: "a", arg: 1, scope: !337, file: !1, line: 153, type: !167)
!342 = !DILocalVariable(name: "b", arg: 2, scope: !337, file: !1, line: 153, type: !167)
!343 = !DILocation(line: 153, column: 31, scope: !337)
!344 = !DILocation(line: 153, column: 44, scope: !337)
!345 = !DILocation(line: 154, column: 12, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !1, line: 154, column: 9)
!347 = !DILocation(line: 154, column: 20, scope: !346)
!348 = !DILocation(line: 154, column: 15, scope: !346)
!349 = !DILocation(line: 154, column: 9, scope: !337)
!350 = !DILocation(line: 155, column: 20, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 155, column: 14)
!352 = !DILocation(line: 155, column: 14, scope: !346)
!353 = !DILocation(line: 157, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 157, column: 14)
!355 = !DILocation(line: 157, column: 26, scope: !354)
!356 = !DILocation(line: 157, column: 21, scope: !354)
!357 = !DILocation(line: 157, column: 14, scope: !351)
!358 = !DILocation(line: 158, column: 21, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !1, line: 158, column: 14)
!360 = !DILocation(line: 158, column: 31, scope: !359)
!361 = !DILocation(line: 0, scope: !337)
!362 = !DILocation(line: 161, column: 1, scope: !337)
!363 = distinct !DISubprogram(name: "streamAppendItem", scope: !1, file: !1, line: 175, type: !364, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !377)
!364 = !DISubroutineType(types: !365)
!365 = !{!12, !69, !366, !196, !167, !167}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !369, line: 622, baseType: !370)
!369 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !369, line: 614, size: 128, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !370, file: !369, line: 615, baseType: !49, size: 4, flags: DIFlagBitField, extraData: i64 0)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !370, file: !369, line: 616, baseType: !49, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !370, file: !369, line: 617, baseType: !49, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !370, file: !369, line: 620, baseType: !12, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !370, file: !369, line: 621, baseType: !7, size: 64, offset: 64)
!377 = !{!378, !379, !380, !381, !382, !383, !417, !418, !419, !420, !421, !422, !428, !429, !433, !437, !439, !440, !441, !444, !448, !449, !450, !451, !453, !456, !457}
!378 = !DILocalVariable(name: "s", arg: 1, scope: !363, file: !1, line: 175, type: !69)
!379 = !DILocalVariable(name: "argv", arg: 2, scope: !363, file: !1, line: 175, type: !366)
!380 = !DILocalVariable(name: "numfields", arg: 3, scope: !363, file: !1, line: 175, type: !196)
!381 = !DILocalVariable(name: "added_id", arg: 4, scope: !363, file: !1, line: 175, type: !167)
!382 = !DILocalVariable(name: "use_id", arg: 5, scope: !363, file: !1, line: 175, type: !167)
!383 = !DILocalVariable(name: "ri", scope: !363, file: !1, line: 181, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !77, line: 186, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !77, line: 175, size: 3840, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !397, !398, !411}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !77, line: 176, baseType: !12, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !385, file: !77, line: 177, baseType: !75, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !385, file: !77, line: 178, baseType: !8, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !385, file: !77, line: 179, baseType: !7, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !385, file: !77, line: 180, baseType: !13, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !385, file: !77, line: 181, baseType: !13, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !385, file: !77, line: 182, baseType: !394, size: 1024, offset: 384)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !77, line: 183, baseType: !81, size: 64, offset: 1408)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !385, file: !77, line: 184, baseType: !399, size: 2304, offset: 1472)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !77, line: 150, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !77, line: 143, size: 2304, elements: !401)
!401 = !{!402, !404, !405, !406, !410}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !400, file: !77, line: 144, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !400, file: !77, line: 145, baseType: !13, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !400, file: !77, line: 145, baseType: !13, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !400, file: !77, line: 148, baseType: !407, size: 2048, offset: 192)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !400, file: !77, line: 149, baseType: !12, size: 32, offset: 2240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !385, file: !77, line: 185, baseType: !412, size: 64, offset: 3776)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !77, line: 165, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!12, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!417 = !DILocalVariable(name: "lp_bytes", scope: !363, file: !1, line: 185, type: !13)
!418 = !DILocalVariable(name: "lp", scope: !363, file: !1, line: 186, type: !8)
!419 = !DILocalVariable(name: "id", scope: !363, file: !1, line: 196, type: !95)
!420 = !DILocalVariable(name: "rax_key", scope: !363, file: !1, line: 205, type: !305)
!421 = !DILocalVariable(name: "master_id", scope: !363, file: !1, line: 206, type: !95)
!422 = !DILocalVariable(name: "count", scope: !423, file: !1, line: 249, type: !196)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 248, column: 52)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 248, column: 20)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 244, column: 13)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 243, column: 21)
!427 = distinct !DILexicalBlock(scope: !363, file: !1, line: 243, column: 9)
!428 = !DILocalVariable(name: "flags", scope: !363, file: !1, line: 254, type: !12)
!429 = !DILocalVariable(name: "i", scope: !430, file: !1, line: 263, type: !196)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 263, column: 9)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 255, column: 64)
!432 = distinct !DILexicalBlock(scope: !363, file: !1, line: 255, column: 9)
!433 = !DILocalVariable(name: "field", scope: !434, file: !1, line: 264, type: !436)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 263, column: 49)
!435 = distinct !DILexicalBlock(scope: !430, file: !1, line: 263, column: 9)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !20, line: 43, baseType: !10)
!437 = !DILocalVariable(name: "lp_ele", scope: !438, file: !1, line: 278, type: !8)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 272, column: 12)
!439 = !DILocalVariable(name: "count", scope: !438, file: !1, line: 281, type: !196)
!440 = !DILocalVariable(name: "master_fields_count", scope: !438, file: !1, line: 288, type: !196)
!441 = !DILocalVariable(name: "i", scope: !442, file: !1, line: 291, type: !196)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 290, column: 47)
!443 = distinct !DILexicalBlock(scope: !438, file: !1, line: 290, column: 13)
!444 = !DILocalVariable(name: "field", scope: !445, file: !1, line: 293, type: !436)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 292, column: 55)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 292, column: 13)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 292, column: 13)
!448 = !DILocalVariable(name: "e_len", scope: !445, file: !1, line: 294, type: !196)
!449 = !DILocalVariable(name: "buf", scope: !445, file: !1, line: 295, type: !278)
!450 = !DILocalVariable(name: "e", scope: !445, file: !1, line: 296, type: !8)
!451 = !DILocalVariable(name: "i", scope: !452, file: !1, line: 335, type: !196)
!452 = distinct !DILexicalBlock(scope: !363, file: !1, line: 335, column: 5)
!453 = !DILocalVariable(name: "field", scope: !454, file: !1, line: 336, type: !436)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 335, column: 45)
!455 = distinct !DILexicalBlock(scope: !452, file: !1, line: 335, column: 5)
!456 = !DILocalVariable(name: "value", scope: !454, file: !1, line: 336, type: !436)
!457 = !DILocalVariable(name: "lp_count", scope: !363, file: !1, line: 342, type: !196)
!458 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !459)
!459 = distinct !DILocation(line: 277, column: 9, scope: !438)
!460 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !461)
!461 = distinct !DILocation(line: 257, column: 9, scope: !431)
!462 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !463)
!463 = distinct !DILocation(line: 334, column: 14, scope: !464)
!464 = distinct !DILexicalBlock(scope: !363, file: !1, line: 333, column: 9)
!465 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !466)
!466 = distinct !DILocation(line: 332, column: 10, scope: !363)
!467 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !468)
!468 = distinct !DILocation(line: 331, column: 10, scope: !363)
!469 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !470)
!470 = distinct !DILocation(line: 330, column: 10, scope: !363)
!471 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !472)
!472 = distinct !DILocation(line: 282, column: 14, scope: !438)
!473 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !474)
!474 = distinct !DILocation(line: 267, column: 14, scope: !431)
!475 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !476)
!476 = distinct !DILocation(line: 262, column: 14, scope: !431)
!477 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !478)
!478 = distinct !DILocation(line: 261, column: 14, scope: !431)
!479 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !480)
!480 = distinct !DILocation(line: 260, column: 14, scope: !431)
!481 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !482)
!482 = distinct !DILocation(line: 349, column: 10, scope: !363)
!483 = !DILocation(line: 175, column: 30, scope: !363)
!484 = !DILocation(line: 175, column: 40, scope: !363)
!485 = !DILocation(line: 175, column: 54, scope: !363)
!486 = !DILocation(line: 175, column: 75, scope: !363)
!487 = !DILocation(line: 175, column: 95, scope: !363)
!488 = !DILocation(line: 178, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !363, file: !1, line: 178, column: 9)
!490 = !DILocation(line: 178, column: 16, scope: !489)
!491 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !492)
!492 = distinct !DILocation(line: 178, column: 19, scope: !489)
!493 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !492)
!494 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !492)
!495 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !492)
!496 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !492)
!497 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !492)
!498 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !492)
!499 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !492)
!500 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !492)
!501 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !492)
!502 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !492)
!503 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !492)
!504 = !DILocation(line: 181, column: 5, scope: !363)
!505 = !DILocation(line: 182, column: 21, scope: !363)
!506 = !DILocation(line: 181, column: 17, scope: !363)
!507 = !DILocation(line: 182, column: 5, scope: !363)
!508 = !DILocation(line: 183, column: 5, scope: !363)
!509 = !DILocation(line: 185, column: 12, scope: !363)
!510 = !DILocation(line: 186, column: 20, scope: !363)
!511 = !DILocation(line: 189, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !363, file: !1, line: 189, column: 9)
!513 = !DILocation(line: 189, column: 9, scope: !363)
!514 = !DILocation(line: 190, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !1, line: 189, column: 23)
!516 = !{!517, !110, i64 24}
!517 = !{!"raxIterator", !518, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !113, i64 32, !113, i64 40, !111, i64 48, !110, i64 176, !519, i64 184, !110, i64 472}
!518 = !{!"int", !111, i64 0}
!519 = !{!"raxStack", !110, i64 0, !113, i64 8, !113, i64 16, !111, i64 24, !518, i64 280}
!520 = !DILocation(line: 191, column: 20, scope: !515)
!521 = !DILocation(line: 192, column: 5, scope: !515)
!522 = !DILocation(line: 0, scope: !363)
!523 = !DILocation(line: 193, column: 5, scope: !363)
!524 = !DILocation(line: 197, column: 9, scope: !363)
!525 = !DILocation(line: 198, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !363, file: !1, line: 197, column: 9)
!527 = !DILocation(line: 198, column: 9, scope: !526)
!528 = !DILocation(line: 196, column: 14, scope: !363)
!529 = !DILocation(line: 74, column: 29, scope: !164, inlinedAt: !530)
!530 = distinct !DILocation(line: 200, column: 9, scope: !526)
!531 = !DILocation(line: 74, column: 48, scope: !164, inlinedAt: !530)
!532 = !DILocation(line: 75, column: 19, scope: !164, inlinedAt: !530)
!533 = !DILocation(line: 75, column: 14, scope: !164, inlinedAt: !530)
!534 = !DILocation(line: 76, column: 23, scope: !177, inlinedAt: !530)
!535 = !DILocation(line: 76, column: 12, scope: !177, inlinedAt: !530)
!536 = !DILocation(line: 76, column: 9, scope: !164, inlinedAt: !530)
!537 = !DILocation(line: 81, column: 32, scope: !181, inlinedAt: !530)
!538 = !DILocation(line: 81, column: 35, scope: !181, inlinedAt: !530)
!539 = !DILocation(line: 0, scope: !526)
!540 = !DILocation(line: 205, column: 5, scope: !363)
!541 = !DILocation(line: 205, column: 14, scope: !363)
!542 = !DILocation(line: 243, column: 12, scope: !427)
!543 = !DILocation(line: 243, column: 9, scope: !363)
!544 = !DILocation(line: 244, column: 20, scope: !425)
!545 = !{!546, !113, i64 2848}
!546 = !{!"redisServer", !518, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !518, i64 32, !518, i64 36, !518, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !518, i64 80, !518, i64 84, !518, i64 88, !518, i64 92, !110, i64 96, !110, i64 104, !518, i64 112, !518, i64 116, !111, i64 120, !518, i64 164, !113, i64 168, !518, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !111, i64 208, !518, i64 216, !518, i64 220, !111, i64 224, !518, i64 352, !110, i64 360, !518, i64 368, !111, i64 372, !518, i64 436, !518, i64 440, !111, i64 444, !518, i64 508, !110, i64 512, !110, i64 520, !110, i64 528, !110, i64 536, !110, i64 544, !110, i64 552, !110, i64 560, !518, i64 568, !266, i64 576, !111, i64 584, !110, i64 840, !113, i64 848, !518, i64 856, !518, i64 860, !113, i64 864, !113, i64 872, !113, i64 880, !113, i64 888, !110, i64 896, !110, i64 904, !110, i64 912, !110, i64 920, !110, i64 928, !110, i64 936, !110, i64 944, !110, i64 952, !110, i64 960, !110, i64 968, !110, i64 976, !110, i64 984, !110, i64 992, !113, i64 1000, !266, i64 1008, !266, i64 1016, !266, i64 1024, !547, i64 1032, !266, i64 1040, !266, i64 1048, !266, i64 1056, !266, i64 1064, !266, i64 1072, !266, i64 1080, !266, i64 1088, !266, i64 1096, !266, i64 1104, !113, i64 1112, !266, i64 1120, !547, i64 1128, !266, i64 1136, !266, i64 1144, !266, i64 1152, !266, i64 1160, !110, i64 1168, !266, i64 1176, !266, i64 1184, !113, i64 1192, !548, i64 1200, !266, i64 1240, !266, i64 1248, !113, i64 1256, !113, i64 1264, !111, i64 1272, !518, i64 1728, !518, i64 1732, !518, i64 1736, !518, i64 1740, !518, i64 1744, !113, i64 1752, !518, i64 1760, !518, i64 1764, !518, i64 1768, !518, i64 1772, !113, i64 1776, !113, i64 1784, !518, i64 1792, !518, i64 1796, !518, i64 1800, !518, i64 1804, !111, i64 1808, !518, i64 1880, !518, i64 1884, !110, i64 1888, !518, i64 1896, !518, i64 1900, !113, i64 1904, !113, i64 1912, !113, i64 1920, !113, i64 1928, !518, i64 1936, !518, i64 1940, !110, i64 1944, !110, i64 1952, !518, i64 1960, !518, i64 1964, !113, i64 1968, !113, i64 1976, !113, i64 1984, !113, i64 1992, !518, i64 2000, !113, i64 2008, !518, i64 2016, !518, i64 2020, !518, i64 2024, !518, i64 2028, !518, i64 2032, !518, i64 2036, !518, i64 2040, !518, i64 2044, !518, i64 2048, !518, i64 2052, !518, i64 2056, !518, i64 2060, !518, i64 2064, !110, i64 2072, !266, i64 2080, !266, i64 2088, !518, i64 2096, !110, i64 2104, !518, i64 2112, !110, i64 2120, !518, i64 2128, !518, i64 2132, !113, i64 2136, !113, i64 2144, !113, i64 2152, !113, i64 2160, !518, i64 2168, !518, i64 2172, !518, i64 2176, !518, i64 2180, !518, i64 2184, !518, i64 2188, !111, i64 2192, !549, i64 2200, !550, i64 2224, !110, i64 2240, !518, i64 2248, !110, i64 2256, !518, i64 2264, !111, i64 2268, !111, i64 2309, !266, i64 2352, !266, i64 2360, !518, i64 2368, !518, i64 2372, !110, i64 2376, !266, i64 2384, !266, i64 2392, !266, i64 2400, !266, i64 2408, !113, i64 2416, !113, i64 2424, !518, i64 2432, !518, i64 2436, !518, i64 2440, !518, i64 2444, !518, i64 2448, !110, i64 2456, !110, i64 2464, !518, i64 2472, !518, i64 2476, !110, i64 2480, !110, i64 2488, !518, i64 2496, !518, i64 2500, !113, i64 2504, !113, i64 2512, !113, i64 2520, !518, i64 2528, !518, i64 2532, !110, i64 2536, !113, i64 2544, !518, i64 2552, !518, i64 2556, !518, i64 2560, !113, i64 2568, !518, i64 2576, !518, i64 2580, !518, i64 2584, !110, i64 2592, !111, i64 2600, !266, i64 2648, !518, i64 2656, !110, i64 2664, !110, i64 2672, !518, i64 2680, !110, i64 2688, !518, i64 2696, !518, i64 2700, !266, i64 2704, !518, i64 2712, !518, i64 2716, !518, i64 2720, !518, i64 2724, !266, i64 2728, !518, i64 2736, !111, i64 2740, !110, i64 2768, !110, i64 2776, !518, i64 2784, !518, i64 2788, !518, i64 2792, !518, i64 2796, !113, i64 2800, !113, i64 2808, !113, i64 2816, !113, i64 2824, !113, i64 2832, !113, i64 2840, !113, i64 2848, !113, i64 2856, !518, i64 2864, !518, i64 2868, !113, i64 2872, !113, i64 2880, !518, i64 2888, !266, i64 2896, !110, i64 2904, !110, i64 2912, !518, i64 2920, !518, i64 2924, !266, i64 2928, !110, i64 2936, !110, i64 2944, !518, i64 2952, !518, i64 2956, !518, i64 2960, !518, i64 2964, !110, i64 2968, !518, i64 2976, !518, i64 2980, !518, i64 2984, !110, i64 2992, !110, i64 3000, !110, i64 3008, !110, i64 3016, !266, i64 3024, !266, i64 3032, !266, i64 3040, !518, i64 3048, !518, i64 3052, !518, i64 3056, !518, i64 3060, !518, i64 3064, !518, i64 3068, !518, i64 3072, !518, i64 3076, !518, i64 3080, !518, i64 3084, !518, i64 3088, !266, i64 3096, !110, i64 3104, !110, i64 3112, !110, i64 3120, !518, i64 3128, !518, i64 3132, !518, i64 3136, !113, i64 3144, !110, i64 3152, !110, i64 3160, !110, i64 3168}
!547 = !{!"double", !111, i64 0}
!548 = !{!"malloc_stats", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32}
!549 = !{!"", !518, i64 0, !113, i64 8, !266, i64 16}
!550 = !{!"redisOpArray", !110, i64 0, !518, i64 8}
!551 = !DILocation(line: 244, column: 13, scope: !425)
!552 = !DILocation(line: 245, column: 22, scope: !425)
!553 = !DILocation(line: 244, column: 42, scope: !425)
!554 = !DILocation(line: 248, column: 27, scope: !424)
!555 = !{!546, !113, i64 2856}
!556 = !DILocation(line: 248, column: 20, scope: !424)
!557 = !DILocation(line: 248, column: 20, scope: !425)
!558 = !DILocation(line: 249, column: 42, scope: !423)
!559 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !560)
!560 = distinct !DILocation(line: 249, column: 29, scope: !423)
!561 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !560)
!562 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !560)
!563 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !560)
!564 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !560)
!565 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !560)
!566 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !560)
!567 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !560)
!568 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !560)
!569 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !560)
!570 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !560)
!571 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !560)
!572 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !560)
!573 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !560)
!574 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !560)
!575 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !560)
!576 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !560)
!577 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !560)
!578 = !DILocation(line: 0, scope: !238, inlinedAt: !560)
!579 = !DILocation(line: 249, column: 21, scope: !423)
!580 = !DILocation(line: 250, column: 32, scope: !581)
!581 = distinct !DILexicalBlock(scope: !423, file: !1, line: 250, column: 17)
!582 = !DILocation(line: 250, column: 23, scope: !581)
!583 = !DILocation(line: 250, column: 17, scope: !423)
!584 = !DILocation(line: 255, column: 41, scope: !432)
!585 = !DILocation(line: 251, column: 9, scope: !423)
!586 = !DILocation(line: 0, scope: !515)
!587 = !DILocation(line: 254, column: 9, scope: !363)
!588 = !DILocation(line: 255, column: 12, scope: !432)
!589 = !DILocation(line: 255, column: 32, scope: !432)
!590 = !DILocation(line: 255, column: 20, scope: !432)
!591 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !461)
!592 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !461)
!593 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !461)
!594 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !461)
!595 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !461)
!596 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !461)
!597 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !461)
!598 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !461)
!599 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !461)
!600 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !461)
!601 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !461)
!602 = !DILocation(line: 259, column: 14, scope: !431)
!603 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !480)
!604 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !480)
!605 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !480)
!606 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !480)
!607 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !480)
!608 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !480)
!609 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !480)
!610 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !478)
!611 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !478)
!612 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !478)
!613 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !478)
!614 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !478)
!615 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !478)
!616 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !478)
!617 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !476)
!618 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !476)
!619 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !476)
!620 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !476)
!621 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !476)
!622 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !476)
!623 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !476)
!624 = !DILocation(line: 263, column: 22, scope: !430)
!625 = !DILocation(line: 263, column: 31, scope: !435)
!626 = !DILocation(line: 263, column: 9, scope: !430)
!627 = !DILocation(line: 0, scope: !434)
!628 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !474)
!629 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !474)
!630 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !474)
!631 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !474)
!632 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !474)
!633 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !474)
!634 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !474)
!635 = !DILocation(line: 268, column: 22, scope: !431)
!636 = !DILocation(line: 268, column: 9, scope: !431)
!637 = !DILocation(line: 272, column: 5, scope: !431)
!638 = !DILocation(line: 264, column: 31, scope: !434)
!639 = !DILocation(line: 264, column: 25, scope: !434)
!640 = !DILocation(line: 264, column: 36, scope: !434)
!641 = !{!642, !110, i64 8}
!642 = !{!"redisObject", !518, i64 0, !518, i64 0, !518, i64 1, !518, i64 4, !110, i64 8}
!643 = !DILocation(line: 264, column: 17, scope: !434)
!644 = !DILocalVariable(name: "s", arg: 1, scope: !645, file: !20, line: 87, type: !650)
!645 = distinct !DISubprogram(name: "sdslen", scope: !20, file: !20, line: 87, type: !646, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !651)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !650}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !649, line: 58, baseType: !17)
!649 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!651 = !{!644, !652}
!652 = !DILocalVariable(name: "flags", scope: !645, file: !20, line: 88, type: !9)
!653 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !654)
!654 = distinct !DILocation(line: 265, column: 52, scope: !434)
!655 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !654)
!656 = !{!111, !111, i64 0}
!657 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !654)
!658 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !654)
!659 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !654)
!660 = distinct !DILexicalBlock(scope: !645, file: !20, line: 89, column: 33)
!661 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !654)
!662 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !654)
!663 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !654)
!664 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !654)
!665 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !654)
!666 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !654)
!667 = !{!668, !668, i64 0}
!668 = !{!"short", !111, i64 0}
!669 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !654)
!670 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !654)
!671 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !654)
!672 = !{!518, !518, i64 0}
!673 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !654)
!674 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !654)
!675 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !654)
!676 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !654)
!677 = !DILocation(line: 0, scope: !660, inlinedAt: !654)
!678 = !DILocation(line: 265, column: 52, scope: !434)
!679 = !DILocation(line: 265, column: 18, scope: !434)
!680 = !DILocation(line: 263, column: 45, scope: !435)
!681 = distinct !{!681, !626, !682}
!682 = !DILocation(line: 266, column: 9, scope: !430)
!683 = !DILocation(line: 273, column: 9, scope: !438)
!684 = !{!517, !113, i64 32}
!685 = !DILocation(line: 274, column: 27, scope: !438)
!686 = !{!517, !110, i64 16}
!687 = !DILocation(line: 274, column: 9, scope: !438)
!688 = !DILocation(line: 206, column: 14, scope: !363)
!689 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !459)
!690 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !459)
!691 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !459)
!692 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !459)
!693 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !459)
!694 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !459)
!695 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !459)
!696 = !DILocation(line: 278, column: 9, scope: !438)
!697 = !DILocation(line: 278, column: 33, scope: !438)
!698 = !DILocation(line: 278, column: 24, scope: !438)
!699 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !700)
!700 = distinct !DILocation(line: 281, column: 25, scope: !438)
!701 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !700)
!702 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !700)
!703 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !700)
!704 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !700)
!705 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !700)
!706 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !700)
!707 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !700)
!708 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !700)
!709 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !700)
!710 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !700)
!711 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !700)
!712 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !700)
!713 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !700)
!714 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !700)
!715 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !700)
!716 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !700)
!717 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !700)
!718 = !DILocation(line: 0, scope: !238, inlinedAt: !700)
!719 = !DILocation(line: 281, column: 17, scope: !438)
!720 = !DILocation(line: 282, column: 47, scope: !438)
!721 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !472)
!722 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !472)
!723 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !472)
!724 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !472)
!725 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !472)
!726 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !472)
!727 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !472)
!728 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !472)
!729 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !472)
!730 = !DILocation(line: 283, column: 28, scope: !438)
!731 = !DILocation(line: 283, column: 18, scope: !438)
!732 = !DILocation(line: 283, column: 16, scope: !438)
!733 = !DILocation(line: 284, column: 18, scope: !438)
!734 = !DILocation(line: 284, column: 16, scope: !438)
!735 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !736)
!736 = distinct !DILocation(line: 288, column: 39, scope: !438)
!737 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !736)
!738 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !736)
!739 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !736)
!740 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !736)
!741 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !736)
!742 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !736)
!743 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !736)
!744 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !736)
!745 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !736)
!746 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !736)
!747 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !736)
!748 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !736)
!749 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !736)
!750 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !736)
!751 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !736)
!752 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !736)
!753 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !736)
!754 = !DILocation(line: 0, scope: !238, inlinedAt: !736)
!755 = !DILocation(line: 288, column: 17, scope: !438)
!756 = !DILocation(line: 289, column: 28, scope: !438)
!757 = !DILocation(line: 289, column: 18, scope: !438)
!758 = !DILocation(line: 289, column: 16, scope: !438)
!759 = !DILocation(line: 290, column: 23, scope: !443)
!760 = !DILocation(line: 290, column: 13, scope: !438)
!761 = !DILocation(line: 291, column: 21, scope: !442)
!762 = !DILocation(line: 292, column: 27, scope: !446)
!763 = !DILocation(line: 292, column: 13, scope: !447)
!764 = !DILocation(line: 296, column: 42, scope: !445)
!765 = !DILocation(line: 293, column: 35, scope: !445)
!766 = !DILocation(line: 293, column: 29, scope: !445)
!767 = !DILocation(line: 293, column: 40, scope: !445)
!768 = !DILocation(line: 293, column: 21, scope: !445)
!769 = !DILocation(line: 294, column: 17, scope: !445)
!770 = !DILocation(line: 295, column: 17, scope: !445)
!771 = !DILocation(line: 295, column: 31, scope: !445)
!772 = !DILocation(line: 294, column: 25, scope: !445)
!773 = !DILocation(line: 296, column: 36, scope: !445)
!774 = !DILocation(line: 296, column: 32, scope: !445)
!775 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !776)
!776 = distinct !DILocation(line: 298, column: 21, scope: !777)
!777 = distinct !DILexicalBlock(scope: !445, file: !1, line: 298, column: 21)
!778 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !776)
!779 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !776)
!780 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !776)
!781 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !776)
!782 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !776)
!783 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !776)
!784 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !776)
!785 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !776)
!786 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !776)
!787 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !776)
!788 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !776)
!789 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !776)
!790 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !776)
!791 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !776)
!792 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !776)
!793 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !776)
!794 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !776)
!795 = !DILocation(line: 0, scope: !660, inlinedAt: !776)
!796 = !DILocation(line: 298, column: 46, scope: !777)
!797 = !DILocation(line: 298, column: 35, scope: !777)
!798 = !DILocation(line: 298, column: 52, scope: !777)
!799 = !DILocation(line: 299, column: 21, scope: !777)
!800 = !DILocation(line: 299, column: 43, scope: !777)
!801 = !DILocation(line: 298, column: 21, scope: !445)
!802 = !DILocation(line: 300, column: 36, scope: !445)
!803 = !DILocation(line: 300, column: 26, scope: !445)
!804 = !DILocation(line: 300, column: 24, scope: !445)
!805 = !DILocation(line: 301, column: 13, scope: !446)
!806 = !DILocation(line: 292, column: 51, scope: !446)
!807 = distinct !{!807, !763, !808}
!808 = !DILocation(line: 301, column: 13, scope: !447)
!809 = !DILocation(line: 304, column: 19, scope: !810)
!810 = distinct !DILexicalBlock(scope: !442, file: !1, line: 304, column: 17)
!811 = !DILocation(line: 304, column: 17, scope: !442)
!812 = !DILocation(line: 305, column: 9, scope: !442)
!813 = !DILocation(line: 306, column: 5, scope: !432)
!814 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !470)
!815 = !DILocation(line: 0, scope: !438)
!816 = !DILocation(line: 0, scope: !810)
!817 = !DILocation(line: 330, column: 29, scope: !363)
!818 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !470)
!819 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !470)
!820 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !470)
!821 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !470)
!822 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !470)
!823 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !470)
!824 = !DILocation(line: 331, column: 35, scope: !363)
!825 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !468)
!826 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !468)
!827 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !468)
!828 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !468)
!829 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !468)
!830 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !468)
!831 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !468)
!832 = !DILocation(line: 332, column: 36, scope: !363)
!833 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !466)
!834 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !466)
!835 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !466)
!836 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !466)
!837 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !466)
!838 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !466)
!839 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !466)
!840 = !DILocation(line: 333, column: 17, scope: !464)
!841 = !DILocation(line: 333, column: 9, scope: !363)
!842 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !463)
!843 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !463)
!844 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !463)
!845 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !463)
!846 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !463)
!847 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !463)
!848 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !463)
!849 = !DILocation(line: 334, column: 9, scope: !464)
!850 = !DILocation(line: 0, scope: !464)
!851 = !DILocation(line: 335, column: 18, scope: !452)
!852 = !DILocation(line: 335, column: 27, scope: !455)
!853 = !DILocation(line: 335, column: 5, scope: !452)
!854 = !DILocation(line: 0, scope: !454)
!855 = !DILocation(line: 342, column: 13, scope: !363)
!856 = !DILocation(line: 343, column: 14, scope: !363)
!857 = !DILocation(line: 347, column: 30, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 344, column: 49)
!859 = distinct !DILexicalBlock(scope: !363, file: !1, line: 344, column: 9)
!860 = !DILocation(line: 344, column: 9, scope: !363)
!861 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !482)
!862 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !482)
!863 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !482)
!864 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !482)
!865 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !482)
!866 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !482)
!867 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !482)
!868 = !DILocation(line: 352, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !363, file: !1, line: 352, column: 9)
!870 = !DILocation(line: 352, column: 17, scope: !869)
!871 = !DILocation(line: 352, column: 9, scope: !363)
!872 = !DILocation(line: 336, column: 27, scope: !454)
!873 = !DILocation(line: 336, column: 21, scope: !454)
!874 = !DILocation(line: 336, column: 32, scope: !454)
!875 = !DILocation(line: 336, column: 13, scope: !454)
!876 = !DILocation(line: 336, column: 53, scope: !454)
!877 = !DILocation(line: 336, column: 45, scope: !454)
!878 = !DILocation(line: 336, column: 58, scope: !454)
!879 = !DILocation(line: 336, column: 37, scope: !454)
!880 = !DILocation(line: 337, column: 13, scope: !454)
!881 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !882)
!882 = distinct !DILocation(line: 338, column: 52, scope: !883)
!883 = distinct !DILexicalBlock(scope: !454, file: !1, line: 337, column: 13)
!884 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !882)
!885 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !882)
!886 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !882)
!887 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !882)
!888 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !882)
!889 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !882)
!890 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !882)
!891 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !882)
!892 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !882)
!893 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !882)
!894 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !882)
!895 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !882)
!896 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !882)
!897 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !882)
!898 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !882)
!899 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !882)
!900 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !882)
!901 = !DILocation(line: 0, scope: !660, inlinedAt: !882)
!902 = !DILocation(line: 338, column: 52, scope: !883)
!903 = !DILocation(line: 338, column: 18, scope: !883)
!904 = !DILocation(line: 338, column: 13, scope: !883)
!905 = !DILocation(line: 0, scope: !883)
!906 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !907)
!907 = distinct !DILocation(line: 339, column: 48, scope: !454)
!908 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !907)
!909 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !907)
!910 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !907)
!911 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !907)
!912 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !907)
!913 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !907)
!914 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !907)
!915 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !907)
!916 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !907)
!917 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !907)
!918 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !907)
!919 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !907)
!920 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !907)
!921 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !907)
!922 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !907)
!923 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !907)
!924 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !907)
!925 = !DILocation(line: 0, scope: !660, inlinedAt: !907)
!926 = !DILocation(line: 339, column: 48, scope: !454)
!927 = !DILocation(line: 339, column: 14, scope: !454)
!928 = !DILocation(line: 335, column: 41, scope: !455)
!929 = distinct !{!929, !853, !930}
!930 = !DILocation(line: 340, column: 5, scope: !452)
!931 = !DILocation(line: 353, column: 22, scope: !869)
!932 = !DILocation(line: 353, column: 9, scope: !869)
!933 = !DILocation(line: 354, column: 8, scope: !363)
!934 = !DILocation(line: 354, column: 14, scope: !363)
!935 = !{!109, !113, i64 8}
!936 = !DILocation(line: 355, column: 18, scope: !363)
!937 = !DILocation(line: 356, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !363, file: !1, line: 356, column: 9)
!939 = !DILocation(line: 356, column: 9, scope: !363)
!940 = !DILocation(line: 356, column: 31, scope: !938)
!941 = !DILocation(line: 356, column: 19, scope: !938)
!942 = !DILocation(line: 358, column: 1, scope: !363)
!943 = distinct !DISubprogram(name: "streamTrimByLength", scope: !1, file: !1, line: 374, type: !944, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!196, !69, !13, !12}
!946 = !{!947, !948, !949, !950, !951, !952, !954, !955, !956, !957, !958, !959, !961, !963}
!947 = !DILocalVariable(name: "s", arg: 1, scope: !943, file: !1, line: 374, type: !69)
!948 = !DILocalVariable(name: "maxlen", arg: 2, scope: !943, file: !1, line: 374, type: !13)
!949 = !DILocalVariable(name: "approx", arg: 3, scope: !943, file: !1, line: 374, type: !12)
!950 = !DILocalVariable(name: "ri", scope: !943, file: !1, line: 377, type: !384)
!951 = !DILocalVariable(name: "deleted", scope: !943, file: !1, line: 381, type: !196)
!952 = !DILocalVariable(name: "lp", scope: !953, file: !1, line: 383, type: !8)
!953 = distinct !DILexicalBlock(scope: !943, file: !1, line: 382, column: 47)
!954 = !DILocalVariable(name: "p", scope: !953, file: !1, line: 383, type: !8)
!955 = !DILocalVariable(name: "entries", scope: !953, file: !1, line: 384, type: !196)
!956 = !DILocalVariable(name: "to_delete", scope: !953, file: !1, line: 403, type: !196)
!957 = !DILocalVariable(name: "marked_deleted", scope: !953, file: !1, line: 407, type: !196)
!958 = !DILocalVariable(name: "master_fields_count", scope: !953, file: !1, line: 412, type: !196)
!959 = !DILocalVariable(name: "j", scope: !960, file: !1, line: 414, type: !196)
!960 = distinct !DILexicalBlock(scope: !953, file: !1, line: 414, column: 9)
!961 = !DILocalVariable(name: "flags", scope: !962, file: !1, line: 422, type: !12)
!962 = distinct !DILexicalBlock(scope: !953, file: !1, line: 421, column: 18)
!963 = !DILocalVariable(name: "to_skip", scope: !962, file: !1, line: 423, type: !12)
!964 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !965)
!965 = distinct !DILocation(line: 428, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 426, column: 54)
!967 = distinct !DILexicalBlock(scope: !962, file: !1, line: 426, column: 17)
!968 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !969)
!969 = distinct !DILocation(line: 408, column: 14, scope: !953)
!970 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !971)
!971 = distinct !DILocation(line: 405, column: 14, scope: !953)
!972 = !DILocation(line: 374, column: 36, scope: !943)
!973 = !DILocation(line: 374, column: 46, scope: !943)
!974 = !DILocation(line: 374, column: 58, scope: !943)
!975 = !DILocation(line: 375, column: 12, scope: !976)
!976 = distinct !DILexicalBlock(scope: !943, file: !1, line: 375, column: 9)
!977 = !DILocation(line: 375, column: 19, scope: !976)
!978 = !DILocation(line: 375, column: 9, scope: !943)
!979 = !DILocation(line: 377, column: 5, scope: !943)
!980 = !DILocation(line: 378, column: 21, scope: !943)
!981 = !DILocation(line: 377, column: 17, scope: !943)
!982 = !DILocation(line: 378, column: 5, scope: !943)
!983 = !DILocation(line: 379, column: 5, scope: !943)
!984 = !DILocation(line: 381, column: 13, scope: !943)
!985 = !DILocation(line: 382, column: 14, scope: !943)
!986 = !DILocation(line: 382, column: 21, scope: !943)
!987 = !DILocation(line: 382, column: 30, scope: !943)
!988 = !DILocation(line: 382, column: 33, scope: !943)
!989 = !DILocation(line: 382, column: 5, scope: !943)
!990 = !DILocation(line: 383, column: 32, scope: !953)
!991 = !DILocation(line: 383, column: 24, scope: !953)
!992 = !DILocation(line: 383, column: 9, scope: !953)
!993 = !DILocation(line: 383, column: 43, scope: !953)
!994 = !DILocation(line: 383, column: 39, scope: !953)
!995 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !996)
!996 = distinct !DILocation(line: 384, column: 27, scope: !953)
!997 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !996)
!998 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !996)
!999 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !996)
!1000 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !996)
!1001 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !996)
!1002 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !996)
!1003 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !996)
!1004 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !996)
!1005 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !996)
!1006 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !996)
!1007 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !996)
!1008 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !996)
!1009 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !996)
!1010 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !996)
!1011 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !996)
!1012 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !996)
!1013 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !996)
!1014 = !DILocation(line: 0, scope: !238, inlinedAt: !996)
!1015 = !DILocation(line: 384, column: 17, scope: !953)
!1016 = !DILocation(line: 388, column: 16, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !953, file: !1, line: 388, column: 13)
!1018 = !DILocation(line: 388, column: 23, scope: !1017)
!1019 = !DILocation(line: 388, column: 33, scope: !1017)
!1020 = !DILocation(line: 388, column: 13, scope: !953)
!1021 = !DILocation(line: 399, column: 13, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !953, file: !1, line: 399, column: 13)
!1023 = !DILocation(line: 399, column: 13, scope: !953)
!1024 = !DILocation(line: 403, column: 39, scope: !953)
!1025 = !DILocation(line: 403, column: 17, scope: !953)
!1026 = !DILocation(line: 404, column: 9, scope: !953)
!1027 = !DILocation(line: 405, column: 44, scope: !953)
!1028 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !971)
!1029 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !971)
!1030 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !971)
!1031 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !971)
!1032 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !971)
!1033 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !971)
!1034 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !971)
!1035 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !971)
!1036 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !971)
!1037 = !DILocation(line: 406, column: 23, scope: !953)
!1038 = !DILocation(line: 406, column: 13, scope: !953)
!1039 = !DILocation(line: 406, column: 11, scope: !953)
!1040 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 407, column: 34, scope: !953)
!1042 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1041)
!1043 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1041)
!1044 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1041)
!1045 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1041)
!1046 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1041)
!1047 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1041)
!1048 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1041)
!1049 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1041)
!1050 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1041)
!1051 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1041)
!1052 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1041)
!1053 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1041)
!1054 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1041)
!1055 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1041)
!1056 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1041)
!1057 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1041)
!1058 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1041)
!1059 = !DILocation(line: 0, scope: !238, inlinedAt: !1041)
!1060 = !DILocation(line: 407, column: 17, scope: !953)
!1061 = !DILocation(line: 408, column: 51, scope: !953)
!1062 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !969)
!1063 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !969)
!1064 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !969)
!1065 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !969)
!1066 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !969)
!1067 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !969)
!1068 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !969)
!1069 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !969)
!1070 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !969)
!1071 = !DILocation(line: 409, column: 23, scope: !953)
!1072 = !DILocation(line: 409, column: 13, scope: !953)
!1073 = !DILocation(line: 409, column: 11, scope: !953)
!1074 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 412, column: 39, scope: !953)
!1076 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1075)
!1077 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1075)
!1078 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1075)
!1079 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1075)
!1080 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1075)
!1081 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1075)
!1082 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1075)
!1083 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1075)
!1084 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1075)
!1085 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1075)
!1086 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1075)
!1087 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1075)
!1088 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1075)
!1089 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1075)
!1090 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1075)
!1091 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1075)
!1092 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1075)
!1093 = !DILocation(line: 0, scope: !238, inlinedAt: !1075)
!1094 = !DILocation(line: 412, column: 17, scope: !953)
!1095 = !DILocation(line: 413, column: 23, scope: !953)
!1096 = !DILocation(line: 413, column: 13, scope: !953)
!1097 = !DILocation(line: 413, column: 11, scope: !953)
!1098 = !DILocation(line: 414, column: 22, scope: !960)
!1099 = !DILocation(line: 414, column: 14, scope: !960)
!1100 = !DILocation(line: 0, scope: !953)
!1101 = !DILocation(line: 0, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !960, file: !1, line: 414, column: 9)
!1103 = !DILocation(line: 414, column: 31, scope: !1102)
!1104 = !DILocation(line: 414, column: 55, scope: !1102)
!1105 = !DILocation(line: 414, column: 9, scope: !960)
!1106 = distinct !{!1106, !1105, !1107}
!1107 = !DILocation(line: 415, column: 28, scope: !960)
!1108 = !DILocation(line: 421, column: 9, scope: !953)
!1109 = !DILocation(line: 422, column: 38, scope: !962)
!1110 = !DILocation(line: 408, column: 12, scope: !953)
!1111 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 422, column: 25, scope: !962)
!1113 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1112)
!1114 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1112)
!1115 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1112)
!1116 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1112)
!1117 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1112)
!1118 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1112)
!1119 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1112)
!1120 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1112)
!1121 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1112)
!1122 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1112)
!1123 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1112)
!1124 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1112)
!1125 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1112)
!1126 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1112)
!1127 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1112)
!1128 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1112)
!1129 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1112)
!1130 = !DILocation(line: 0, scope: !238, inlinedAt: !1112)
!1131 = !DILocation(line: 422, column: 25, scope: !962)
!1132 = !DILocation(line: 422, column: 17, scope: !962)
!1133 = !DILocation(line: 426, column: 25, scope: !967)
!1134 = !DILocation(line: 426, column: 17, scope: !962)
!1135 = !DILocation(line: 427, column: 23, scope: !966)
!1136 = !DILocation(line: 428, column: 45, scope: !966)
!1137 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !965)
!1138 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !965)
!1139 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !965)
!1140 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !965)
!1141 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !965)
!1142 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !965)
!1143 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !965)
!1144 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !965)
!1145 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !965)
!1146 = !DILocation(line: 429, column: 24, scope: !966)
!1147 = !DILocation(line: 430, column: 26, scope: !966)
!1148 = !DILocation(line: 431, column: 31, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !966, file: !1, line: 431, column: 21)
!1150 = !DILocation(line: 431, column: 21, scope: !966)
!1151 = !DILocation(line: 0, scope: !966)
!1152 = !DILocation(line: 434, column: 27, scope: !962)
!1153 = !DILocation(line: 434, column: 17, scope: !962)
!1154 = !DILocation(line: 434, column: 15, scope: !962)
!1155 = !DILocation(line: 435, column: 17, scope: !962)
!1156 = !DILocation(line: 435, column: 15, scope: !962)
!1157 = !DILocation(line: 436, column: 17, scope: !962)
!1158 = !DILocation(line: 436, column: 15, scope: !962)
!1159 = !DILocation(line: 437, column: 23, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !962, file: !1, line: 437, column: 17)
!1161 = !DILocation(line: 437, column: 17, scope: !962)
!1162 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 440, column: 27, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 439, column: 20)
!1165 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1163)
!1166 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1163)
!1167 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1163)
!1168 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1163)
!1169 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1163)
!1170 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1163)
!1171 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1163)
!1172 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1163)
!1173 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1163)
!1174 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1163)
!1175 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1163)
!1176 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1163)
!1177 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1163)
!1178 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1163)
!1179 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1163)
!1180 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1163)
!1181 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1163)
!1182 = !DILocation(line: 0, scope: !238, inlinedAt: !1163)
!1183 = !DILocation(line: 440, column: 27, scope: !1164)
!1184 = !DILocation(line: 423, column: 17, scope: !962)
!1185 = !DILocation(line: 441, column: 37, scope: !1164)
!1186 = !DILocation(line: 441, column: 28, scope: !1164)
!1187 = !DILocation(line: 0, scope: !962)
!1188 = !DILocation(line: 444, column: 26, scope: !962)
!1189 = !DILocation(line: 444, column: 13, scope: !962)
!1190 = distinct !{!1190, !1189, !1191}
!1191 = !DILocation(line: 444, column: 45, scope: !962)
!1192 = distinct !{!1192, !1108, !1193}
!1193 = !DILocation(line: 446, column: 9, scope: !953)
!1194 = !DILocation(line: 457, column: 22, scope: !953)
!1195 = !DILocation(line: 457, column: 29, scope: !953)
!1196 = !DILocation(line: 457, column: 36, scope: !953)
!1197 = !DILocation(line: 457, column: 9, scope: !953)
!1198 = !DILocation(line: 461, column: 5, scope: !943)
!1199 = !DILocation(line: 389, column: 13, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 388, column: 44)
!1201 = !DILocation(line: 390, column: 26, scope: !1200)
!1202 = !DILocation(line: 390, column: 33, scope: !1200)
!1203 = !DILocation(line: 390, column: 40, scope: !1200)
!1204 = !DILocation(line: 390, column: 13, scope: !1200)
!1205 = !DILocation(line: 391, column: 33, scope: !1200)
!1206 = !DILocation(line: 391, column: 40, scope: !1200)
!1207 = !DILocation(line: 391, column: 13, scope: !1200)
!1208 = !DILocation(line: 392, column: 23, scope: !1200)
!1209 = !DILocation(line: 393, column: 21, scope: !1200)
!1210 = !DILocation(line: 0, scope: !943)
!1211 = !DILocation(line: 463, column: 5, scope: !943)
!1212 = !DILocation(line: 465, column: 1, scope: !943)
!1213 = distinct !DISubprogram(name: "streamIteratorStart", scope: !1, file: !1, line: 488, type: !1214, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1235)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1216, !69, !167, !167, !12}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !71, line: 48, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !71, line: 29, size: 5120, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1218, file: !71, line: 30, baseType: !69, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !1218, file: !71, line: 31, baseType: !95, size: 128, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !1218, file: !71, line: 32, baseType: !57, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !1218, file: !71, line: 33, baseType: !8, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !1218, file: !71, line: 34, baseType: !8, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !1218, file: !71, line: 35, baseType: !12, size: 32, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1218, file: !71, line: 36, baseType: !12, size: 32, offset: 416)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !1218, file: !71, line: 37, baseType: !305, size: 128, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !1218, file: !71, line: 38, baseType: !305, size: 128, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !1218, file: !71, line: 39, baseType: !384, size: 3840, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !1218, file: !71, line: 40, baseType: !8, size: 64, offset: 4544)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !1218, file: !71, line: 41, baseType: !8, size: 64, offset: 4608)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !1218, file: !71, line: 42, baseType: !8, size: 64, offset: 4672)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !1218, file: !71, line: 46, baseType: !278, size: 168, offset: 4736)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !1218, file: !71, line: 47, baseType: !278, size: 168, offset: 4904)
!1235 = !{!1236, !1237, !1238, !1239, !1240}
!1236 = !DILocalVariable(name: "si", arg: 1, scope: !1213, file: !1, line: 488, type: !1216)
!1237 = !DILocalVariable(name: "s", arg: 2, scope: !1213, file: !1, line: 488, type: !69)
!1238 = !DILocalVariable(name: "start", arg: 3, scope: !1213, file: !1, line: 488, type: !167)
!1239 = !DILocalVariable(name: "end", arg: 4, scope: !1213, file: !1, line: 488, type: !167)
!1240 = !DILocalVariable(name: "rev", arg: 5, scope: !1213, file: !1, line: 488, type: !12)
!1241 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 499, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 498, column: 14)
!1244 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 498, column: 9)
!1245 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 492, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 491, column: 16)
!1248 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 491, column: 9)
!1249 = !DILocation(line: 488, column: 42, scope: !1213)
!1250 = !DILocation(line: 488, column: 54, scope: !1213)
!1251 = !DILocation(line: 488, column: 67, scope: !1213)
!1252 = !DILocation(line: 488, column: 84, scope: !1213)
!1253 = !DILocation(line: 488, column: 93, scope: !1213)
!1254 = !DILocation(line: 491, column: 9, scope: !1248)
!1255 = !DILocation(line: 0, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 493, column: 12)
!1257 = !DILocation(line: 491, column: 9, scope: !1213)
!1258 = !DILocation(line: 492, column: 24, scope: !1247)
!1259 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1246)
!1260 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1246)
!1261 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1246)
!1262 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1246)
!1263 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1246)
!1264 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1246)
!1265 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1246)
!1266 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1246)
!1267 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1246)
!1268 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1246)
!1269 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1246)
!1270 = !DILocation(line: 493, column: 5, scope: !1247)
!1271 = !DILocation(line: 494, column: 26, scope: !1256)
!1272 = !DILocation(line: 498, column: 9, scope: !1244)
!1273 = !DILocation(line: 0, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 500, column: 12)
!1275 = !DILocation(line: 498, column: 9, scope: !1213)
!1276 = !DILocation(line: 499, column: 24, scope: !1243)
!1277 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1242)
!1278 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1242)
!1279 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1242)
!1280 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1242)
!1281 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1242)
!1282 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1242)
!1283 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1242)
!1284 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1242)
!1285 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1242)
!1286 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1242)
!1287 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1242)
!1288 = !DILocation(line: 500, column: 5, scope: !1243)
!1289 = !DILocation(line: 501, column: 24, scope: !1274)
!1290 = !DILocation(line: 506, column: 19, scope: !1213)
!1291 = !DILocation(line: 506, column: 25, scope: !1213)
!1292 = !DILocation(line: 506, column: 5, scope: !1213)
!1293 = !DILocation(line: 507, column: 10, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 507, column: 9)
!1295 = !DILocation(line: 507, column: 9, scope: !1213)
!1296 = !DILocation(line: 508, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 508, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 507, column: 15)
!1299 = !DILocation(line: 508, column: 30, scope: !1297)
!1300 = !DILocation(line: 508, column: 23, scope: !1297)
!1301 = !DILocation(line: 508, column: 33, scope: !1297)
!1302 = !DILocation(line: 508, column: 43, scope: !1297)
!1303 = !DILocation(line: 508, column: 36, scope: !1297)
!1304 = !DILocation(line: 508, column: 13, scope: !1298)
!1305 = !DILocation(line: 509, column: 34, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 508, column: 49)
!1307 = !DILocation(line: 509, column: 13, scope: !1306)
!1308 = !DILocation(line: 511, column: 17, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 511, column: 17)
!1310 = !DILocation(line: 511, column: 17, scope: !1306)
!1311 = !DILocation(line: 511, column: 34, scope: !1309)
!1312 = !DILocation(line: 513, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 512, column: 16)
!1314 = !DILocation(line: 516, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 516, column: 13)
!1316 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 515, column: 12)
!1317 = !DILocation(line: 516, column: 26, scope: !1315)
!1318 = !DILocation(line: 516, column: 21, scope: !1315)
!1319 = !DILocation(line: 516, column: 29, scope: !1315)
!1320 = !DILocation(line: 516, column: 37, scope: !1315)
!1321 = !DILocation(line: 516, column: 32, scope: !1315)
!1322 = !DILocation(line: 516, column: 13, scope: !1316)
!1323 = !DILocation(line: 517, column: 34, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 516, column: 43)
!1325 = !DILocation(line: 517, column: 13, scope: !1324)
!1326 = !DILocation(line: 519, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 519, column: 17)
!1328 = !DILocation(line: 519, column: 17, scope: !1324)
!1329 = !DILocation(line: 519, column: 34, scope: !1327)
!1330 = !DILocation(line: 521, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 520, column: 16)
!1332 = !DILocation(line: 524, column: 9, scope: !1213)
!1333 = !DILocation(line: 524, column: 16, scope: !1213)
!1334 = !{!1335, !110, i64 0}
!1335 = !{!"streamIterator", !110, i64 0, !114, i64 8, !113, i64 24, !110, i64 32, !110, i64 40, !518, i64 48, !518, i64 52, !111, i64 56, !111, i64 72, !517, i64 88, !110, i64 568, !110, i64 576, !110, i64 584, !111, i64 592, !111, i64 613}
!1336 = !DILocation(line: 525, column: 9, scope: !1213)
!1337 = !DILocation(line: 525, column: 12, scope: !1213)
!1338 = !DILocation(line: 527, column: 9, scope: !1213)
!1339 = !DILocation(line: 527, column: 13, scope: !1213)
!1340 = !{!1335, !518, i64 52}
!1341 = !DILocation(line: 528, column: 1, scope: !1213)
!1342 = distinct !DISubprogram(name: "streamIteratorGetID", scope: !1, file: !1, line: 533, type: !1343, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1346)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!12, !1216, !167, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1346 = !{!1347, !1348, !1349, !1350, !1357, !1360, !1364, !1365, !1369, !1372, !1374}
!1347 = !DILocalVariable(name: "si", arg: 1, scope: !1342, file: !1, line: 533, type: !1216)
!1348 = !DILocalVariable(name: "id", arg: 2, scope: !1342, file: !1, line: 533, type: !167)
!1349 = !DILocalVariable(name: "numfields", arg: 3, scope: !1342, file: !1, line: 533, type: !1345)
!1350 = !DILocalVariable(name: "i", scope: !1351, file: !1, line: 558, type: !57)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 558, column: 17)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 555, column: 27)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 555, column: 17)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 538, column: 51)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 538, column: 13)
!1356 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 534, column: 14)
!1357 = !DILocalVariable(name: "lp_count", scope: !1358, file: !1, line: 571, type: !12)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 566, column: 29)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 566, column: 20)
!1360 = !DILocalVariable(name: "lp_count", scope: !1361, file: !1, line: 590, type: !196)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 586, column: 20)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 580, column: 17)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 579, column: 18)
!1364 = !DILocalVariable(name: "flags", scope: !1363, file: !1, line: 601, type: !12)
!1365 = !DILocalVariable(name: "buf", scope: !1363, file: !1, line: 611, type: !1366)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 16)
!1369 = !DILocalVariable(name: "to_discard", scope: !1370, file: !1, line: 653, type: !196)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 652, column: 27)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 652, column: 17)
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !1, line: 655, type: !196)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 655, column: 17)
!1374 = !DILocalVariable(name: "prev_times", scope: !1375, file: !1, line: 658, type: !196)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 657, column: 20)
!1376 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 612, column: 13, scope: !1363)
!1378 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 543, column: 13, scope: !1354)
!1380 = !DILocation(line: 533, column: 41, scope: !1342)
!1381 = !DILocation(line: 533, column: 55, scope: !1342)
!1382 = !DILocation(line: 533, column: 68, scope: !1342)
!1383 = !DILocation(line: 534, column: 5, scope: !1342)
!1384 = !DILocation(line: 538, column: 17, scope: !1355)
!1385 = !{!1335, !110, i64 568}
!1386 = !DILocation(line: 538, column: 20, scope: !1355)
!1387 = !DILocation(line: 538, column: 28, scope: !1355)
!1388 = !DILocation(line: 538, column: 35, scope: !1355)
!1389 = !{!1335, !110, i64 576}
!1390 = !DILocation(line: 538, column: 42, scope: !1355)
!1391 = !DILocation(line: 538, column: 13, scope: !1356)
!1392 = !DILocation(line: 539, column: 22, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 539, column: 17)
!1394 = !DILocation(line: 539, column: 18, scope: !1393)
!1395 = !DILocation(line: 539, column: 26, scope: !1393)
!1396 = !DILocation(line: 539, column: 30, scope: !1393)
!1397 = !DILocation(line: 539, column: 17, scope: !1354)
!1398 = !DILocation(line: 540, column: 26, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 540, column: 22)
!1400 = !DILocation(line: 540, column: 22, scope: !1399)
!1401 = !DILocation(line: 540, column: 30, scope: !1399)
!1402 = !DILocation(line: 540, column: 34, scope: !1399)
!1403 = !DILocation(line: 540, column: 22, scope: !1393)
!1404 = !DILocation(line: 541, column: 13, scope: !1354)
!1405 = !{!1335, !113, i64 120}
!1406 = !DILocation(line: 543, column: 35, scope: !1354)
!1407 = !{!1335, !110, i64 104}
!1408 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1379)
!1409 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1379)
!1410 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1379)
!1411 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1379)
!1412 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1379)
!1413 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1379)
!1414 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1379)
!1415 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1379)
!1416 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1379)
!1417 = !DILocation(line: 545, column: 29, scope: !1354)
!1418 = !{!1335, !110, i64 112}
!1419 = !DILocation(line: 545, column: 20, scope: !1354)
!1420 = !DILocation(line: 546, column: 26, scope: !1354)
!1421 = !DILocation(line: 546, column: 24, scope: !1354)
!1422 = !DILocation(line: 547, column: 37, scope: !1354)
!1423 = !DILocation(line: 547, column: 26, scope: !1354)
!1424 = !DILocation(line: 547, column: 24, scope: !1354)
!1425 = !DILocation(line: 548, column: 37, scope: !1354)
!1426 = !DILocation(line: 548, column: 26, scope: !1354)
!1427 = !DILocation(line: 548, column: 24, scope: !1354)
!1428 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 549, column: 39, scope: !1354)
!1430 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1429)
!1431 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1429)
!1432 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1429)
!1433 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1429)
!1434 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1429)
!1435 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1429)
!1436 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1429)
!1437 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1429)
!1438 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1429)
!1439 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1429)
!1440 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1429)
!1441 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1429)
!1442 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1429)
!1443 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1429)
!1444 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1429)
!1445 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1429)
!1446 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1429)
!1447 = !DILocation(line: 0, scope: !238, inlinedAt: !1429)
!1448 = !DILocation(line: 549, column: 37, scope: !1354)
!1449 = !{!1335, !113, i64 24}
!1450 = !DILocation(line: 550, column: 37, scope: !1354)
!1451 = !DILocation(line: 550, column: 44, scope: !1354)
!1452 = !DILocation(line: 550, column: 26, scope: !1354)
!1453 = !DILocation(line: 550, column: 24, scope: !1354)
!1454 = !DILocation(line: 551, column: 37, scope: !1354)
!1455 = !{!1335, !110, i64 32}
!1456 = !DILocation(line: 555, column: 22, scope: !1353)
!1457 = !DILocation(line: 555, column: 18, scope: !1353)
!1458 = !DILocation(line: 555, column: 17, scope: !1354)
!1459 = !DILocation(line: 558, column: 31, scope: !1351)
!1460 = !DILocation(line: 558, column: 46, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 558, column: 17)
!1462 = !DILocation(line: 558, column: 40, scope: !1461)
!1463 = !DILocation(line: 558, column: 17, scope: !1351)
!1464 = !DILocation(line: 559, column: 52, scope: !1461)
!1465 = !DILocation(line: 559, column: 45, scope: !1461)
!1466 = !DILocation(line: 559, column: 34, scope: !1461)
!1467 = !DILocation(line: 559, column: 32, scope: !1461)
!1468 = !DILocation(line: 558, column: 68, scope: !1461)
!1469 = distinct !{!1469, !1463, !1470}
!1470 = !DILocation(line: 559, column: 58, scope: !1351)
!1471 = !DILocation(line: 564, column: 41, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 560, column: 20)
!1473 = !DILocation(line: 564, column: 30, scope: !1472)
!1474 = !DILocation(line: 564, column: 28, scope: !1472)
!1475 = !DILocation(line: 566, column: 24, scope: !1359)
!1476 = !DILocation(line: 566, column: 20, scope: !1359)
!1477 = !DILocation(line: 566, column: 20, scope: !1355)
!1478 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 571, column: 28, scope: !1358)
!1480 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1479)
!1481 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1479)
!1482 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1479)
!1483 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1479)
!1484 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1479)
!1485 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1479)
!1486 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1479)
!1487 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1479)
!1488 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1479)
!1489 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1479)
!1490 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1479)
!1491 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1479)
!1492 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1479)
!1493 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1479)
!1494 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1479)
!1495 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1479)
!1496 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1479)
!1497 = !DILocation(line: 0, scope: !238, inlinedAt: !1479)
!1498 = !DILocation(line: 571, column: 28, scope: !1358)
!1499 = !DILocation(line: 571, column: 17, scope: !1358)
!1500 = !DILocation(line: 0, scope: !1358)
!1501 = !DILocation(line: 572, column: 13, scope: !1358)
!1502 = !DILocation(line: 572, column: 27, scope: !1358)
!1503 = distinct !{!1503, !1501, !1504}
!1504 = !DILocation(line: 572, column: 68, scope: !1358)
!1505 = !DILocation(line: 580, column: 22, scope: !1362)
!1506 = !DILocation(line: 580, column: 18, scope: !1362)
!1507 = !DILocation(line: 580, column: 17, scope: !1363)
!1508 = !DILocation(line: 584, column: 41, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 580, column: 27)
!1510 = !DILocation(line: 584, column: 48, scope: !1509)
!1511 = !DILocation(line: 584, column: 30, scope: !1509)
!1512 = !DILocation(line: 584, column: 28, scope: !1509)
!1513 = !DILocation(line: 585, column: 32, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !1, line: 585, column: 21)
!1515 = !DILocation(line: 585, column: 21, scope: !1509)
!1516 = distinct !{!1516, !1383, !1517}
!1517 = !DILocation(line: 669, column: 5, scope: !1342)
!1518 = !DILocation(line: 590, column: 53, scope: !1361)
!1519 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 590, column: 36, scope: !1361)
!1521 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1520)
!1522 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1520)
!1523 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1520)
!1524 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1520)
!1525 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1520)
!1526 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1520)
!1527 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1520)
!1528 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1520)
!1529 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1520)
!1530 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1520)
!1531 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1520)
!1532 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1520)
!1533 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1520)
!1534 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1520)
!1535 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1520)
!1536 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1520)
!1537 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1520)
!1538 = !DILocation(line: 0, scope: !238, inlinedAt: !1520)
!1539 = !DILocation(line: 590, column: 25, scope: !1361)
!1540 = !DILocation(line: 591, column: 30, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 591, column: 21)
!1542 = !DILocation(line: 591, column: 21, scope: !1361)
!1543 = !DILocation(line: 596, column: 66, scope: !1361)
!1544 = !DILocation(line: 596, column: 31, scope: !1361)
!1545 = !DILocation(line: 592, column: 28, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 591, column: 36)
!1547 = !DILocation(line: 596, column: 59, scope: !1361)
!1548 = !DILocation(line: 596, column: 48, scope: !1361)
!1549 = !DILocation(line: 596, column: 46, scope: !1361)
!1550 = !DILocation(line: 596, column: 17, scope: !1361)
!1551 = distinct !{!1551, !1550, !1552}
!1552 = !DILocation(line: 596, column: 72, scope: !1361)
!1553 = !DILocation(line: 600, column: 32, scope: !1363)
!1554 = !DILocation(line: 600, column: 26, scope: !1363)
!1555 = !{!1335, !110, i64 584}
!1556 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 601, column: 25, scope: !1363)
!1558 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1557)
!1559 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1557)
!1560 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1557)
!1561 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1557)
!1562 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1557)
!1563 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1557)
!1564 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1557)
!1565 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1557)
!1566 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1557)
!1567 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1557)
!1568 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1557)
!1569 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1557)
!1570 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1557)
!1571 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1557)
!1572 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1557)
!1573 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1557)
!1574 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1557)
!1575 = !DILocation(line: 0, scope: !238, inlinedAt: !1557)
!1576 = !DILocation(line: 601, column: 25, scope: !1363)
!1577 = !DILocation(line: 601, column: 17, scope: !1363)
!1578 = !DILocation(line: 602, column: 37, scope: !1363)
!1579 = !DILocation(line: 602, column: 44, scope: !1363)
!1580 = !DILocation(line: 602, column: 26, scope: !1363)
!1581 = !DILocation(line: 602, column: 24, scope: !1363)
!1582 = !DILocation(line: 606, column: 23, scope: !1363)
!1583 = !{i64 0, i64 8, !117, i64 8, i64 8, !117}
!1584 = !DILocation(line: 607, column: 40, scope: !1363)
!1585 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 607, column: 23, scope: !1363)
!1587 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1586)
!1588 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1586)
!1589 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1586)
!1590 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1586)
!1591 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1586)
!1592 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1586)
!1593 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1586)
!1594 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1586)
!1595 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1586)
!1596 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1586)
!1597 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1586)
!1598 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1586)
!1599 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1586)
!1600 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1586)
!1601 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1586)
!1602 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1586)
!1603 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1586)
!1604 = !DILocation(line: 0, scope: !238, inlinedAt: !1586)
!1605 = !DILocation(line: 607, column: 20, scope: !1363)
!1606 = !DILocation(line: 608, column: 37, scope: !1363)
!1607 = !DILocation(line: 608, column: 44, scope: !1363)
!1608 = !DILocation(line: 608, column: 26, scope: !1363)
!1609 = !DILocation(line: 608, column: 24, scope: !1363)
!1610 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 609, column: 24, scope: !1363)
!1612 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1611)
!1613 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1611)
!1614 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1611)
!1615 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1611)
!1616 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1611)
!1617 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1611)
!1618 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1611)
!1619 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1611)
!1620 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1611)
!1621 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1611)
!1622 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1611)
!1623 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1611)
!1624 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1611)
!1625 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1611)
!1626 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1611)
!1627 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1611)
!1628 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1611)
!1629 = !DILocation(line: 0, scope: !238, inlinedAt: !1611)
!1630 = !DILocation(line: 609, column: 21, scope: !1363)
!1631 = !DILocation(line: 610, column: 37, scope: !1363)
!1632 = !DILocation(line: 610, column: 44, scope: !1363)
!1633 = !DILocation(line: 610, column: 26, scope: !1363)
!1634 = !DILocation(line: 610, column: 24, scope: !1363)
!1635 = !DILocation(line: 611, column: 13, scope: !1363)
!1636 = !DILocation(line: 611, column: 27, scope: !1363)
!1637 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1377)
!1638 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1377)
!1639 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1377)
!1640 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1377)
!1641 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1377)
!1642 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1377)
!1643 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1377)
!1644 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1377)
!1645 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1377)
!1646 = !DILocation(line: 616, column: 23, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 616, column: 17)
!1648 = !DILocation(line: 616, column: 17, scope: !1363)
!1649 = !DILocation(line: 617, column: 34, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 616, column: 54)
!1651 = !DILocation(line: 617, column: 28, scope: !1650)
!1652 = !DILocation(line: 618, column: 13, scope: !1650)
!1653 = !DILocation(line: 619, column: 47, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 618, column: 20)
!1655 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 619, column: 30, scope: !1654)
!1657 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1656)
!1658 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1656)
!1659 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1656)
!1660 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1656)
!1661 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1656)
!1662 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1656)
!1663 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1656)
!1664 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1656)
!1665 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1656)
!1666 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1656)
!1667 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1656)
!1668 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1656)
!1669 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1656)
!1670 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1656)
!1671 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1656)
!1672 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1656)
!1673 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1656)
!1674 = !DILocation(line: 0, scope: !238, inlinedAt: !1656)
!1675 = !DILocation(line: 619, column: 28, scope: !1654)
!1676 = !DILocation(line: 620, column: 41, scope: !1654)
!1677 = !DILocation(line: 620, column: 48, scope: !1654)
!1678 = !DILocation(line: 620, column: 30, scope: !1654)
!1679 = !DILocation(line: 620, column: 28, scope: !1654)
!1680 = !DILocation(line: 625, column: 22, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 625, column: 17)
!1682 = !DILocation(line: 625, column: 18, scope: !1681)
!1683 = !DILocation(line: 625, column: 17, scope: !1363)
!1684 = !DILocation(line: 626, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 626, column: 21)
!1686 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 625, column: 27)
!1687 = !DILocation(line: 626, column: 64, scope: !1685)
!1688 = !DILocation(line: 627, column: 29, scope: !1685)
!1689 = !DILocation(line: 626, column: 69, scope: !1685)
!1690 = !DILocation(line: 629, column: 25, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 629, column: 25)
!1692 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 628, column: 17)
!1693 = !DILocation(line: 629, column: 66, scope: !1691)
!1694 = !DILocation(line: 629, column: 25, scope: !1692)
!1695 = !DILocation(line: 631, column: 25, scope: !1692)
!1696 = !DILocation(line: 631, column: 37, scope: !1692)
!1697 = !{!1335, !518, i64 48}
!1698 = !DILocation(line: 632, column: 25, scope: !1692)
!1699 = !DILocation(line: 633, column: 53, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 632, column: 25)
!1701 = !DILocation(line: 633, column: 29, scope: !1700)
!1702 = !DILocation(line: 633, column: 47, scope: !1700)
!1703 = !{!1335, !110, i64 40}
!1704 = !DILocation(line: 633, column: 25, scope: !1700)
!1705 = !DILocation(line: 637, column: 21, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 637, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1681, file: !1, line: 636, column: 20)
!1708 = !DILocation(line: 637, column: 62, scope: !1706)
!1709 = !DILocation(line: 638, column: 29, scope: !1706)
!1710 = !DILocation(line: 637, column: 67, scope: !1706)
!1711 = !DILocation(line: 640, column: 25, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 640, column: 25)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 639, column: 17)
!1714 = !DILocation(line: 640, column: 68, scope: !1712)
!1715 = !DILocation(line: 640, column: 25, scope: !1713)
!1716 = !DILocation(line: 642, column: 25, scope: !1713)
!1717 = !DILocation(line: 642, column: 37, scope: !1713)
!1718 = !DILocation(line: 643, column: 25, scope: !1713)
!1719 = !DILocation(line: 644, column: 53, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 643, column: 25)
!1721 = !DILocation(line: 644, column: 29, scope: !1720)
!1722 = !DILocation(line: 644, column: 47, scope: !1720)
!1723 = !DILocation(line: 644, column: 25, scope: !1720)
!1724 = !DILocation(line: 652, column: 22, scope: !1371)
!1725 = !DILocation(line: 652, column: 18, scope: !1371)
!1726 = !DILocation(line: 652, column: 17, scope: !1363)
!1727 = !DILocation(line: 0, scope: !1370)
!1728 = !DILocation(line: 653, column: 38, scope: !1370)
!1729 = !DILocation(line: 653, column: 25, scope: !1370)
!1730 = !DILocation(line: 655, column: 30, scope: !1373)
!1731 = !DILocation(line: 655, column: 39, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 655, column: 17)
!1733 = !DILocation(line: 655, column: 17, scope: !1373)
!1734 = !DILocation(line: 656, column: 52, scope: !1732)
!1735 = !DILocation(line: 656, column: 45, scope: !1732)
!1736 = !DILocation(line: 656, column: 34, scope: !1732)
!1737 = !DILocation(line: 656, column: 32, scope: !1732)
!1738 = !DILocation(line: 655, column: 54, scope: !1732)
!1739 = distinct !{!1739, !1733, !1740}
!1740 = !DILocation(line: 656, column: 58, scope: !1373)
!1741 = !DILocation(line: 658, column: 25, scope: !1375)
!1742 = !DILocation(line: 663, column: 21, scope: !1375)
!1743 = !DILocation(line: 664, column: 68, scope: !1375)
!1744 = !DILocation(line: 664, column: 17, scope: !1375)
!1745 = !DILocation(line: 664, column: 33, scope: !1375)
!1746 = !DILocation(line: 664, column: 61, scope: !1375)
!1747 = !DILocation(line: 664, column: 50, scope: !1375)
!1748 = !DILocation(line: 664, column: 48, scope: !1375)
!1749 = distinct !{!1749, !1744, !1750}
!1750 = !DILocation(line: 664, column: 74, scope: !1375)
!1751 = !DILocation(line: 666, column: 9, scope: !1356)
!1752 = !DILocation(line: 670, column: 1, scope: !1342)
!1753 = distinct !DISubprogram(name: "streamIteratorGetField", scope: !1, file: !1, line: 678, type: !1754, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1216, !219, !219, !1345, !1345}
!1756 = !{!1757, !1758, !1759, !1760, !1761}
!1757 = !DILocalVariable(name: "si", arg: 1, scope: !1753, file: !1, line: 678, type: !1216)
!1758 = !DILocalVariable(name: "fieldptr", arg: 2, scope: !1753, file: !1, line: 678, type: !219)
!1759 = !DILocalVariable(name: "valueptr", arg: 3, scope: !1753, file: !1, line: 678, type: !219)
!1760 = !DILocalVariable(name: "fieldlen", arg: 4, scope: !1753, file: !1, line: 678, type: !1345)
!1761 = !DILocalVariable(name: "valuelen", arg: 5, scope: !1753, file: !1, line: 678, type: !1345)
!1762 = !DILocation(line: 678, column: 45, scope: !1753)
!1763 = !DILocation(line: 678, column: 65, scope: !1753)
!1764 = !DILocation(line: 678, column: 91, scope: !1753)
!1765 = !DILocation(line: 678, column: 110, scope: !1753)
!1766 = !DILocation(line: 678, column: 129, scope: !1753)
!1767 = !DILocation(line: 679, column: 13, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 679, column: 9)
!1769 = !DILocation(line: 679, column: 25, scope: !1768)
!1770 = !DILocation(line: 679, column: 9, scope: !1753)
!1771 = !DILocation(line: 680, column: 31, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !1, line: 679, column: 56)
!1773 = !DILocation(line: 680, column: 58, scope: !1772)
!1774 = !DILocation(line: 680, column: 21, scope: !1772)
!1775 = !DILocation(line: 680, column: 19, scope: !1772)
!1776 = !DILocation(line: 681, column: 44, scope: !1772)
!1777 = !DILocation(line: 681, column: 51, scope: !1772)
!1778 = !DILocation(line: 681, column: 33, scope: !1772)
!1779 = !DILocation(line: 681, column: 31, scope: !1772)
!1780 = !DILocation(line: 686, column: 27, scope: !1753)
!1781 = !DILocation(line: 682, column: 5, scope: !1772)
!1782 = !DILocation(line: 683, column: 31, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1768, file: !1, line: 682, column: 12)
!1784 = !DILocation(line: 683, column: 47, scope: !1783)
!1785 = !DILocation(line: 683, column: 21, scope: !1783)
!1786 = !DILocation(line: 683, column: 19, scope: !1783)
!1787 = !DILocation(line: 684, column: 33, scope: !1783)
!1788 = !DILocation(line: 684, column: 40, scope: !1783)
!1789 = !DILocation(line: 684, column: 22, scope: !1783)
!1790 = !DILocation(line: 684, column: 20, scope: !1783)
!1791 = !DILocation(line: 687, column: 29, scope: !1753)
!1792 = !DILocation(line: 686, column: 43, scope: !1753)
!1793 = !DILocation(line: 686, column: 17, scope: !1753)
!1794 = !DILocation(line: 686, column: 15, scope: !1753)
!1795 = !DILocation(line: 687, column: 36, scope: !1753)
!1796 = !DILocation(line: 687, column: 18, scope: !1753)
!1797 = !DILocation(line: 687, column: 16, scope: !1753)
!1798 = !DILocation(line: 688, column: 1, scope: !1753)
!1799 = distinct !DISubprogram(name: "streamIteratorRemoveEntry", scope: !1, file: !1, line: 700, type: !1800, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1216, !167}
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810}
!1803 = !DILocalVariable(name: "si", arg: 1, scope: !1799, file: !1, line: 700, type: !1216)
!1804 = !DILocalVariable(name: "current", arg: 2, scope: !1799, file: !1, line: 700, type: !167)
!1805 = !DILocalVariable(name: "lp", scope: !1799, file: !1, line: 701, type: !8)
!1806 = !DILocalVariable(name: "aux", scope: !1799, file: !1, line: 702, type: !196)
!1807 = !DILocalVariable(name: "flags", scope: !1799, file: !1, line: 709, type: !12)
!1808 = !DILocalVariable(name: "p", scope: !1799, file: !1, line: 714, type: !8)
!1809 = !DILocalVariable(name: "start", scope: !1799, file: !1, line: 738, type: !95)
!1810 = !DILocalVariable(name: "end", scope: !1799, file: !1, line: 738, type: !95)
!1811 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 744, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 742, column: 12)
!1814 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 739, column: 9)
!1815 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 740, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 739, column: 18)
!1818 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 727, column: 14, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 722, column: 12)
!1821 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 717, column: 9)
!1822 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 724, column: 14, scope: !1820)
!1824 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 711, column: 10, scope: !1799)
!1826 = !DILocation(line: 700, column: 48, scope: !1799)
!1827 = !DILocation(line: 700, column: 62, scope: !1799)
!1828 = !DILocation(line: 701, column: 29, scope: !1799)
!1829 = !DILocation(line: 701, column: 20, scope: !1799)
!1830 = !DILocation(line: 709, column: 34, scope: !1799)
!1831 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 709, column: 17, scope: !1799)
!1833 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1832)
!1834 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1832)
!1835 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1832)
!1836 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1832)
!1837 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1832)
!1838 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1832)
!1839 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1832)
!1840 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1832)
!1841 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1832)
!1842 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1832)
!1843 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1832)
!1844 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1832)
!1845 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1832)
!1846 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1832)
!1847 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1832)
!1848 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1832)
!1849 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1832)
!1850 = !DILocation(line: 0, scope: !238, inlinedAt: !1832)
!1851 = !DILocation(line: 711, column: 44, scope: !1799)
!1852 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1825)
!1853 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1825)
!1854 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1825)
!1855 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1825)
!1856 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1825)
!1857 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1825)
!1858 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1825)
!1859 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1825)
!1860 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1825)
!1861 = !DILocation(line: 714, column: 5, scope: !1799)
!1862 = !DILocation(line: 714, column: 24, scope: !1799)
!1863 = !DILocation(line: 714, column: 20, scope: !1799)
!1864 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 715, column: 11, scope: !1799)
!1866 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1865)
!1867 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1865)
!1868 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1865)
!1869 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1865)
!1870 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1865)
!1871 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1865)
!1872 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1865)
!1873 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1865)
!1874 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1865)
!1875 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1865)
!1876 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1865)
!1877 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1865)
!1878 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1865)
!1879 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1865)
!1880 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1865)
!1881 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1865)
!1882 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1865)
!1883 = !DILocation(line: 0, scope: !238, inlinedAt: !1865)
!1884 = !DILocation(line: 702, column: 13, scope: !1799)
!1885 = !DILocation(line: 717, column: 13, scope: !1821)
!1886 = !DILocation(line: 717, column: 9, scope: !1799)
!1887 = !DILocation(line: 720, column: 9, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 717, column: 19)
!1889 = !DILocation(line: 721, column: 23, scope: !1888)
!1890 = !DILocation(line: 721, column: 31, scope: !1888)
!1891 = !DILocation(line: 721, column: 42, scope: !1888)
!1892 = !DILocation(line: 721, column: 53, scope: !1888)
!1893 = !DILocation(line: 721, column: 9, scope: !1888)
!1894 = !DILocation(line: 722, column: 5, scope: !1888)
!1895 = !DILocation(line: 724, column: 40, scope: !1820)
!1896 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1823)
!1897 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1823)
!1898 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1823)
!1899 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1823)
!1900 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1823)
!1901 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1823)
!1902 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1823)
!1903 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1823)
!1904 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1823)
!1905 = !DILocation(line: 725, column: 23, scope: !1820)
!1906 = !DILocation(line: 725, column: 13, scope: !1820)
!1907 = !DILocation(line: 725, column: 11, scope: !1820)
!1908 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 726, column: 15, scope: !1820)
!1910 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1909)
!1911 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1909)
!1912 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1909)
!1913 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1909)
!1914 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1909)
!1915 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1909)
!1916 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1909)
!1917 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1909)
!1918 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1909)
!1919 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1909)
!1920 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1909)
!1921 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1909)
!1922 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1909)
!1923 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1909)
!1924 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1909)
!1925 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1909)
!1926 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1909)
!1927 = !DILocation(line: 0, scope: !238, inlinedAt: !1909)
!1928 = !DILocation(line: 727, column: 40, scope: !1820)
!1929 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1819)
!1930 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1819)
!1931 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1819)
!1932 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1819)
!1933 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1819)
!1934 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1819)
!1935 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1819)
!1936 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1819)
!1937 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1819)
!1938 = !DILocation(line: 730, column: 17, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 730, column: 13)
!1940 = !DILocation(line: 730, column: 20, scope: !1939)
!1941 = !DILocation(line: 0, scope: !1939)
!1942 = !DILocation(line: 730, column: 13, scope: !1820)
!1943 = !DILocation(line: 731, column: 27, scope: !1939)
!1944 = !DILocation(line: 731, column: 35, scope: !1939)
!1945 = !DILocation(line: 731, column: 46, scope: !1939)
!1946 = !DILocation(line: 731, column: 57, scope: !1939)
!1947 = !DILocation(line: 731, column: 13, scope: !1939)
!1948 = !DILocation(line: 735, column: 9, scope: !1799)
!1949 = !DILocation(line: 735, column: 17, scope: !1799)
!1950 = !DILocation(line: 735, column: 23, scope: !1799)
!1951 = !DILocation(line: 738, column: 5, scope: !1799)
!1952 = !DILocation(line: 739, column: 13, scope: !1814)
!1953 = !DILocation(line: 739, column: 9, scope: !1814)
!1954 = !DILocation(line: 739, column: 9, scope: !1799)
!1955 = !DILocation(line: 740, column: 24, scope: !1817)
!1956 = !DILocation(line: 738, column: 14, scope: !1799)
!1957 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1816)
!1958 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1816)
!1959 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1816)
!1960 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1816)
!1961 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1816)
!1962 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1816)
!1963 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1816)
!1964 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1816)
!1965 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1816)
!1966 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1816)
!1967 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1816)
!1968 = !DILocation(line: 741, column: 15, scope: !1817)
!1969 = !DILocation(line: 742, column: 5, scope: !1817)
!1970 = !DILocation(line: 743, column: 17, scope: !1813)
!1971 = !DILocation(line: 744, column: 24, scope: !1813)
!1972 = !DILocation(line: 738, column: 21, scope: !1799)
!1973 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1812)
!1974 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1812)
!1975 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1812)
!1976 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1812)
!1977 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1812)
!1978 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1812)
!1979 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1812)
!1980 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1812)
!1981 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1812)
!1982 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1812)
!1983 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1812)
!1984 = !DILocalVariable(name: "si", arg: 1, scope: !1985, file: !1, line: 756, type: !1216)
!1985 = distinct !DISubprogram(name: "streamIteratorStop", scope: !1, file: !1, line: 756, type: !1986, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1988)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1216}
!1988 = !{!1984}
!1989 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 746, column: 5, scope: !1799)
!1991 = !DILocation(line: 757, column: 18, scope: !1985, inlinedAt: !1990)
!1992 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !1990)
!1993 = !DILocation(line: 747, column: 32, scope: !1799)
!1994 = !DILocation(line: 747, column: 55, scope: !1799)
!1995 = !DILocation(line: 747, column: 5, scope: !1799)
!1996 = !DILocation(line: 751, column: 1, scope: !1799)
!1997 = !DILocation(line: 756, column: 41, scope: !1985)
!1998 = !DILocation(line: 757, column: 18, scope: !1985)
!1999 = !DILocation(line: 757, column: 5, scope: !1985)
!2000 = !DILocation(line: 758, column: 1, scope: !1985)
!2001 = distinct !DISubprogram(name: "streamDeleteItem", scope: !1, file: !1, line: 762, type: !2002, isLocal: false, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!12, !69, !167}
!2004 = !{!2005, !2006, !2007, !2008, !2009, !2010}
!2005 = !DILocalVariable(name: "s", arg: 1, scope: !2001, file: !1, line: 762, type: !69)
!2006 = !DILocalVariable(name: "id", arg: 2, scope: !2001, file: !1, line: 762, type: !167)
!2007 = !DILocalVariable(name: "deleted", scope: !2001, file: !1, line: 763, type: !12)
!2008 = !DILocalVariable(name: "si", scope: !2001, file: !1, line: 764, type: !1217)
!2009 = !DILocalVariable(name: "myid", scope: !2001, file: !1, line: 766, type: !95)
!2010 = !DILocalVariable(name: "numfields", scope: !2001, file: !1, line: 767, type: !196)
!2011 = !DILocation(line: 762, column: 30, scope: !2001)
!2012 = !DILocation(line: 762, column: 43, scope: !2001)
!2013 = !DILocation(line: 763, column: 9, scope: !2001)
!2014 = !DILocation(line: 764, column: 5, scope: !2001)
!2015 = !DILocation(line: 764, column: 20, scope: !2001)
!2016 = !DILocation(line: 765, column: 5, scope: !2001)
!2017 = !DILocation(line: 766, column: 5, scope: !2001)
!2018 = !DILocation(line: 767, column: 5, scope: !2001)
!2019 = !DILocation(line: 766, column: 14, scope: !2001)
!2020 = !DILocation(line: 767, column: 13, scope: !2001)
!2021 = !DILocation(line: 768, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 768, column: 9)
!2023 = !DILocation(line: 768, column: 9, scope: !2001)
!2024 = !DILocation(line: 769, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 768, column: 52)
!2026 = !DILocation(line: 771, column: 5, scope: !2025)
!2027 = !DILocation(line: 0, scope: !2001)
!2028 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 772, column: 5, scope: !2001)
!2030 = !DILocation(line: 757, column: 18, scope: !1985, inlinedAt: !2029)
!2031 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !2029)
!2032 = !DILocation(line: 774, column: 1, scope: !2001)
!2033 = !DILocation(line: 773, column: 5, scope: !2001)
!2034 = distinct !DISubprogram(name: "addReplyStreamID", scope: !1, file: !1, line: 779, type: !2035, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2255)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2037, !167}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !369, line: 780, baseType: !2039)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !369, line: 723, size: 135360, elements: !2040)
!2040 = !{!2041, !2042, !2043, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2170, !2171, !2172, !2173, !2174, !2175, !2177, !2178, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2204, !2205, !2209, !2210, !2226, !2227, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2039, file: !369, line: 724, baseType: !57, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2039, file: !369, line: 725, baseType: !12, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !2039, file: !369, line: 726, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !369, line: 656, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !369, line: 647, size: 512, elements: !2047)
!2047 = !{!2048, !2107, !2108, !2109, !2110, !2111, !2112, !2113}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !2046, file: !369, line: 648, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !2051, line: 82, baseType: !2052)
!2051 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !2051, line: 76, size: 768, elements: !2053)
!2053 = !{!2054, !2079, !2080, !2105, !2106}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2052, file: !2051, line: 77, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !2051, line: 65, baseType: !2057)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !2051, line: 58, size: 384, elements: !2058)
!2058 = !{!2059, !2065, !2069, !2070, !2074, !2078}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !2057, file: !2051, line: 59, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!57, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !2057, file: !2051, line: 60, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!7, !7, !2063}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !2057, file: !2051, line: 61, baseType: !2066, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !2057, file: !2051, line: 62, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!12, !7, !2063, !2063}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !2057, file: !2051, line: 63, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !7, !7}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !2057, file: !2051, line: 64, baseType: !2075, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !2052, file: !2051, line: 78, baseType: !7, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2052, file: !2051, line: 79, baseType: !2081, size: 512, offset: 128)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2082, size: 512, elements: !306)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !2051, line: 74, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !2051, line: 69, size: 256, elements: !2084)
!2084 = !{!2085, !2102, !2103, !2104}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2083, file: !2051, line: 70, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !2051, line: 56, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !2051, line: 47, size: 192, elements: !2090)
!2090 = !{!2091, !2092, !2100}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2089, file: !2051, line: 48, baseType: !7, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2089, file: !2051, line: 54, baseType: !2093, size: 64, offset: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !2051, line: 49, size: 64, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2093, file: !2051, line: 50, baseType: !7, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !2093, file: !2051, line: 51, baseType: !57, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !2093, file: !2051, line: 52, baseType: !196, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2093, file: !2051, line: 53, baseType: !2099, size: 64)
!2099 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2089, file: !2051, line: 55, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2083, file: !2051, line: 71, baseType: !17, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !2083, file: !2051, line: 72, baseType: !17, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2083, file: !2051, line: 73, baseType: !17, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !2052, file: !2051, line: 80, baseType: !198, size: 64, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !2052, file: !2051, line: 81, baseType: !17, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2046, file: !369, line: 649, baseType: !2049, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !2046, file: !369, line: 650, baseType: !2049, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !2046, file: !369, line: 651, baseType: !2049, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2046, file: !369, line: 652, baseType: !2049, size: 64, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2046, file: !369, line: 653, baseType: !12, size: 32, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !2046, file: !369, line: 654, baseType: !246, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !2046, file: !369, line: 655, baseType: !2114, size: 64, offset: 448)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !2116, line: 54, baseType: !2117)
!2116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !2116, line: 47, size: 384, elements: !2118)
!2118 = !{!2119, !2128, !2129, !2133, !2134, !2138}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2117, file: !2116, line: 48, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !2116, line: 40, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !2116, line: 36, size: 192, elements: !2123)
!2123 = !{!2124, !2126, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2122, file: !2116, line: 37, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2122, file: !2116, line: 38, baseType: !2125, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2122, file: !2116, line: 39, baseType: !7, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2117, file: !2116, line: 49, baseType: !2120, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !2117, file: !2116, line: 50, baseType: !2130, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!7, !7}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2117, file: !2116, line: 51, baseType: !4, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2117, file: !2116, line: 52, baseType: !2135, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!12, !7, !7}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2117, file: !2116, line: 53, baseType: !17, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2039, file: !369, line: 727, baseType: !367, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !2039, file: !369, line: 728, baseType: !436, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !2039, file: !369, line: 729, baseType: !13, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !2039, file: !369, line: 730, baseType: !436, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !2039, file: !369, line: 734, baseType: !13, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2039, file: !369, line: 735, baseType: !12, size: 32, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2039, file: !369, line: 736, baseType: !366, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2039, file: !369, line: 737, baseType: !2147, size: 64, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !369, line: 1307, size: 640, elements: !2149)
!2149 = !{!2150, !2151, !2156, !2157, !2158, !2159, !2165, !2166, !2167, !2168, !2169}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2148, file: !369, line: 1308, baseType: !10, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !2148, file: !369, line: 1309, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !369, line: 1305, baseType: !2154)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2037}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !2148, file: !369, line: 1310, baseType: !12, size: 32, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !2148, file: !369, line: 1311, baseType: !10, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !369, line: 1312, baseType: !12, size: 32, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !2148, file: !369, line: 1315, baseType: !2160, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !369, line: 1306, baseType: !2162)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !2147, !366, !12, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !2148, file: !369, line: 1317, baseType: !12, size: 32, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !2148, file: !369, line: 1318, baseType: !12, size: 32, offset: 416)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !2148, file: !369, line: 1319, baseType: !12, size: 32, offset: 448)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !2148, file: !369, line: 1320, baseType: !246, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !2148, file: !369, line: 1320, baseType: !246, size: 64, offset: 576)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !2039, file: !369, line: 737, baseType: !2147, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !2039, file: !369, line: 738, baseType: !12, size: 32, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !2039, file: !369, line: 739, baseType: !12, size: 32, offset: 800)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !2039, file: !369, line: 740, baseType: !198, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !2039, file: !369, line: 741, baseType: !2114, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !2039, file: !369, line: 742, baseType: !2176, size: 64, offset: 960)
!2176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !2039, file: !369, line: 743, baseType: !13, size: 64, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2039, file: !369, line: 745, baseType: !2179, size: 64, offset: 1088)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2180, line: 34, baseType: !198)
!2180 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !2039, file: !369, line: 746, baseType: !2179, size: 64, offset: 1152)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !2039, file: !369, line: 747, baseType: !2179, size: 64, offset: 1216)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !369, line: 748, baseType: !12, size: 32, offset: 1280)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !2039, file: !369, line: 749, baseType: !12, size: 32, offset: 1312)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !2039, file: !369, line: 750, baseType: !12, size: 32, offset: 1344)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !2039, file: !369, line: 751, baseType: !12, size: 32, offset: 1376)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !2039, file: !369, line: 752, baseType: !12, size: 32, offset: 1408)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !2039, file: !369, line: 753, baseType: !2189, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2190, line: 173, baseType: !2191)
!2190 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 100, baseType: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !16, line: 44, baseType: !198)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !2039, file: !369, line: 754, baseType: !2189, size: 64, offset: 1536)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !2039, file: !369, line: 755, baseType: !436, size: 64, offset: 1600)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !2039, file: !369, line: 756, baseType: !246, size: 64, offset: 1664)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !2039, file: !369, line: 757, baseType: !246, size: 64, offset: 1728)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !2039, file: !369, line: 758, baseType: !246, size: 64, offset: 1792)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !2039, file: !369, line: 759, baseType: !246, size: 64, offset: 1856)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !2039, file: !369, line: 760, baseType: !246, size: 64, offset: 1920)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !2039, file: !369, line: 763, baseType: !2201, size: 328, offset: 1984)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 328, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 41)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !2039, file: !369, line: 764, baseType: !12, size: 32, offset: 2336)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !2039, file: !369, line: 765, baseType: !2206, size: 368, offset: 2368)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 368, elements: !2207)
!2207 = !{!2208}
!2208 = !DISubrange(count: 46)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !2039, file: !369, line: 766, baseType: !12, size: 32, offset: 2752)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !2039, file: !369, line: 767, baseType: !2211, size: 256, offset: 2816)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !369, line: 673, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !369, line: 665, size: 256, elements: !2213)
!2213 = !{!2214, !2222, !2223, !2224, !2225}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !2212, file: !369, line: 666, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !369, line: 663, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !369, line: 659, size: 192, elements: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2217, file: !369, line: 660, baseType: !366, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2217, file: !369, line: 661, baseType: !12, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2217, file: !369, line: 662, baseType: !2147, size: 64, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2212, file: !369, line: 667, baseType: !12, size: 32, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2212, file: !369, line: 668, baseType: !12, size: 32, offset: 96)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !2212, file: !369, line: 671, baseType: !12, size: 32, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !2212, file: !369, line: 672, baseType: !2179, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !2039, file: !369, line: 768, baseType: !12, size: 32, offset: 3072)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !2039, file: !369, line: 769, baseType: !2228, size: 704, offset: 3136)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !369, line: 703, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !369, line: 677, size: 704, elements: !2230)
!2230 = !{!2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2229, file: !369, line: 679, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !369, line: 52, baseType: !246)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2229, file: !369, line: 683, baseType: !2049, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2229, file: !369, line: 685, baseType: !367, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !2229, file: !369, line: 689, baseType: !13, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !2229, file: !369, line: 690, baseType: !367, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !2229, file: !369, line: 691, baseType: !367, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !2229, file: !369, line: 692, baseType: !2232, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !2229, file: !369, line: 692, baseType: !2232, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !2229, file: !369, line: 693, baseType: !12, size: 32, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !2229, file: !369, line: 696, baseType: !12, size: 32, offset: 544)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !2229, file: !369, line: 697, baseType: !246, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !2229, file: !369, line: 700, baseType: !7, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !2039, file: !369, line: 770, baseType: !246, size: 64, offset: 3840)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2039, file: !369, line: 771, baseType: !2114, size: 64, offset: 3904)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !2039, file: !369, line: 772, baseType: !2049, size: 64, offset: 3968)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !2039, file: !369, line: 773, baseType: !2114, size: 64, offset: 4032)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !2039, file: !369, line: 774, baseType: !436, size: 64, offset: 4096)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !2039, file: !369, line: 775, baseType: !2120, size: 64, offset: 4160)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !2039, file: !369, line: 778, baseType: !12, size: 32, offset: 4224)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2039, file: !369, line: 779, baseType: !2252, size: 131072, offset: 4256)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 16384)
!2255 = !{!2256, !2257, !2258}
!2256 = !DILocalVariable(name: "c", arg: 1, scope: !2034, file: !1, line: 779, type: !2037)
!2257 = !DILocalVariable(name: "id", arg: 2, scope: !2034, file: !1, line: 779, type: !167)
!2258 = !DILocalVariable(name: "replyid", scope: !2034, file: !1, line: 780, type: !436)
!2259 = !DILocation(line: 779, column: 31, scope: !2034)
!2260 = !DILocation(line: 779, column: 44, scope: !2034)
!2261 = !DILocation(line: 780, column: 29, scope: !2034)
!2262 = !DILocation(line: 780, column: 52, scope: !2034)
!2263 = !DILocation(line: 780, column: 59, scope: !2034)
!2264 = !DILocation(line: 780, column: 19, scope: !2034)
!2265 = !DILocation(line: 780, column: 9, scope: !2034)
!2266 = !DILocation(line: 781, column: 5, scope: !2034)
!2267 = !DILocation(line: 782, column: 1, scope: !2034)
!2268 = distinct !DISubprogram(name: "createObjectFromStreamID", scope: !1, file: !1, line: 786, type: !2269, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!367, !167}
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "id", arg: 1, scope: !2268, file: !1, line: 786, type: !167)
!2273 = !DILocation(line: 786, column: 42, scope: !2268)
!2274 = !DILocation(line: 787, column: 47, scope: !2268)
!2275 = !DILocation(line: 788, column: 29, scope: !2268)
!2276 = !DILocation(line: 788, column: 36, scope: !2268)
!2277 = !DILocation(line: 787, column: 37, scope: !2268)
!2278 = !DILocation(line: 787, column: 12, scope: !2268)
!2279 = !DILocation(line: 787, column: 5, scope: !2268)
!2280 = distinct !DISubprogram(name: "streamPropagateXCLAIM", scope: !1, file: !1, line: 794, type: !2281, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2297)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !2037, !367, !144, !367, !367, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !71, line: 87, baseType: !2285)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !71, line: 82, size: 192, elements: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !2285, file: !71, line: 83, baseType: !2232, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !2285, file: !71, line: 84, baseType: !57, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !2285, file: !71, line: 85, baseType: !2290, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !71, line: 79, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !71, line: 67, size: 192, elements: !2293)
!2293 = !{!2294, !2295, !2296}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !2292, file: !71, line: 68, baseType: !2232, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2292, file: !71, line: 69, baseType: !436, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2292, file: !71, line: 72, baseType: !75, size: 64, offset: 128)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2298 = !DILocalVariable(name: "c", arg: 1, scope: !2280, file: !1, line: 794, type: !2037)
!2299 = !DILocalVariable(name: "key", arg: 2, scope: !2280, file: !1, line: 794, type: !367)
!2300 = !DILocalVariable(name: "group", arg: 3, scope: !2280, file: !1, line: 794, type: !144)
!2301 = !DILocalVariable(name: "groupname", arg: 4, scope: !2280, file: !1, line: 794, type: !367)
!2302 = !DILocalVariable(name: "id", arg: 5, scope: !2280, file: !1, line: 794, type: !367)
!2303 = !DILocalVariable(name: "nack", arg: 6, scope: !2280, file: !1, line: 794, type: !2283)
!2304 = !DILocalVariable(name: "argv", scope: !2280, file: !1, line: 802, type: !2305)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 896, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 14)
!2308 = !DILocation(line: 794, column: 36, scope: !2280)
!2309 = !DILocation(line: 794, column: 45, scope: !2280)
!2310 = !DILocation(line: 794, column: 60, scope: !2280)
!2311 = !DILocation(line: 794, column: 73, scope: !2280)
!2312 = !DILocation(line: 794, column: 90, scope: !2280)
!2313 = !DILocation(line: 794, column: 106, scope: !2280)
!2314 = !DILocation(line: 802, column: 5, scope: !2280)
!2315 = !DILocation(line: 802, column: 11, scope: !2280)
!2316 = !DILocation(line: 803, column: 15, scope: !2280)
!2317 = !DILocation(line: 803, column: 5, scope: !2280)
!2318 = !DILocation(line: 803, column: 13, scope: !2280)
!2319 = !DILocation(line: 804, column: 5, scope: !2280)
!2320 = !DILocation(line: 804, column: 13, scope: !2280)
!2321 = !DILocation(line: 805, column: 5, scope: !2280)
!2322 = !DILocation(line: 805, column: 13, scope: !2280)
!2323 = !DILocation(line: 806, column: 40, scope: !2280)
!2324 = !{!2325, !110, i64 16}
!2325 = !{!"streamNACK", !266, i64 0, !113, i64 8, !110, i64 16}
!2326 = !DILocation(line: 806, column: 50, scope: !2280)
!2327 = !{!2328, !110, i64 8}
!2328 = !{!"streamConsumer", !266, i64 0, !110, i64 8, !110, i64 16}
!2329 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 806, column: 55, scope: !2280)
!2331 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !2330)
!2332 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !2330)
!2333 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !2330)
!2334 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2330)
!2335 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2330)
!2336 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2330)
!2337 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2330)
!2338 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2330)
!2339 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2330)
!2340 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2330)
!2341 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2330)
!2342 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2330)
!2343 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2330)
!2344 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2330)
!2345 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2330)
!2346 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2330)
!2347 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2330)
!2348 = !DILocation(line: 0, scope: !660, inlinedAt: !2330)
!2349 = !DILocation(line: 806, column: 15, scope: !2280)
!2350 = !DILocation(line: 806, column: 5, scope: !2280)
!2351 = !DILocation(line: 806, column: 13, scope: !2280)
!2352 = !DILocation(line: 807, column: 15, scope: !2280)
!2353 = !DILocation(line: 807, column: 5, scope: !2280)
!2354 = !DILocation(line: 807, column: 13, scope: !2280)
!2355 = !DILocation(line: 808, column: 5, scope: !2280)
!2356 = !DILocation(line: 808, column: 13, scope: !2280)
!2357 = !DILocation(line: 809, column: 15, scope: !2280)
!2358 = !DILocation(line: 809, column: 5, scope: !2280)
!2359 = !DILocation(line: 809, column: 13, scope: !2280)
!2360 = !DILocation(line: 810, column: 52, scope: !2280)
!2361 = !{!2325, !266, i64 0}
!2362 = !DILocation(line: 810, column: 15, scope: !2280)
!2363 = !DILocation(line: 810, column: 5, scope: !2280)
!2364 = !DILocation(line: 810, column: 13, scope: !2280)
!2365 = !DILocation(line: 811, column: 15, scope: !2280)
!2366 = !DILocation(line: 811, column: 5, scope: !2280)
!2367 = !DILocation(line: 811, column: 13, scope: !2280)
!2368 = !DILocation(line: 812, column: 52, scope: !2280)
!2369 = !{!2325, !113, i64 8}
!2370 = !DILocation(line: 812, column: 15, scope: !2280)
!2371 = !DILocation(line: 812, column: 5, scope: !2280)
!2372 = !DILocation(line: 812, column: 13, scope: !2280)
!2373 = !DILocation(line: 813, column: 16, scope: !2280)
!2374 = !DILocation(line: 813, column: 5, scope: !2280)
!2375 = !DILocation(line: 813, column: 14, scope: !2280)
!2376 = !DILocation(line: 814, column: 16, scope: !2280)
!2377 = !DILocation(line: 814, column: 5, scope: !2280)
!2378 = !DILocation(line: 814, column: 14, scope: !2280)
!2379 = !DILocation(line: 815, column: 16, scope: !2280)
!2380 = !DILocation(line: 815, column: 5, scope: !2280)
!2381 = !DILocation(line: 815, column: 14, scope: !2280)
!2382 = !DILocation(line: 786, column: 42, scope: !2268, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 816, column: 16, scope: !2280)
!2384 = !DILocation(line: 787, column: 47, scope: !2268, inlinedAt: !2383)
!2385 = !DILocation(line: 788, column: 29, scope: !2268, inlinedAt: !2383)
!2386 = !DILocation(line: 788, column: 36, scope: !2268, inlinedAt: !2383)
!2387 = !DILocation(line: 787, column: 37, scope: !2268, inlinedAt: !2383)
!2388 = !DILocation(line: 787, column: 12, scope: !2268, inlinedAt: !2383)
!2389 = !DILocation(line: 816, column: 5, scope: !2280)
!2390 = !DILocation(line: 816, column: 14, scope: !2280)
!2391 = !DILocation(line: 817, column: 22, scope: !2280)
!2392 = !{!546, !110, i64 984}
!2393 = !DILocation(line: 817, column: 39, scope: !2280)
!2394 = !{!2395, !110, i64 16}
!2395 = !{!"client", !113, i64 0, !518, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !113, i64 40, !110, i64 48, !113, i64 56, !518, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !518, i64 96, !518, i64 100, !113, i64 104, !110, i64 112, !266, i64 120, !113, i64 128, !113, i64 136, !113, i64 144, !113, i64 152, !518, i64 160, !518, i64 164, !518, i64 168, !518, i64 172, !518, i64 176, !113, i64 184, !113, i64 192, !110, i64 200, !266, i64 208, !266, i64 216, !266, i64 224, !266, i64 232, !266, i64 240, !111, i64 248, !518, i64 292, !111, i64 296, !518, i64 344, !2396, i64 352, !518, i64 384, !2397, i64 392, !266, i64 480, !110, i64 488, !110, i64 496, !110, i64 504, !110, i64 512, !110, i64 520, !518, i64 528, !111, i64 532}
!2396 = !{!"multiState", !110, i64 0, !518, i64 8, !518, i64 12, !518, i64 16, !113, i64 24}
!2397 = !{!"blockingState", !266, i64 0, !110, i64 8, !110, i64 16, !113, i64 24, !110, i64 32, !110, i64 40, !266, i64 48, !266, i64 56, !518, i64 64, !518, i64 68, !266, i64 72, !110, i64 80}
!2398 = !DILocation(line: 817, column: 43, scope: !2280)
!2399 = !{!2400, !518, i64 40}
!2400 = !{!"redisDb", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !518, i64 40, !266, i64 48, !110, i64 56}
!2401 = !DILocation(line: 817, column: 5, scope: !2280)
!2402 = !DILocation(line: 818, column: 18, scope: !2280)
!2403 = !DILocation(line: 818, column: 5, scope: !2280)
!2404 = !DILocation(line: 819, column: 18, scope: !2280)
!2405 = !DILocation(line: 819, column: 5, scope: !2280)
!2406 = !DILocation(line: 820, column: 18, scope: !2280)
!2407 = !DILocation(line: 820, column: 5, scope: !2280)
!2408 = !DILocation(line: 821, column: 18, scope: !2280)
!2409 = !DILocation(line: 821, column: 5, scope: !2280)
!2410 = !DILocation(line: 822, column: 18, scope: !2280)
!2411 = !DILocation(line: 822, column: 5, scope: !2280)
!2412 = !DILocation(line: 823, column: 18, scope: !2280)
!2413 = !DILocation(line: 823, column: 5, scope: !2280)
!2414 = !DILocation(line: 824, column: 18, scope: !2280)
!2415 = !DILocation(line: 824, column: 5, scope: !2280)
!2416 = !DILocation(line: 825, column: 18, scope: !2280)
!2417 = !DILocation(line: 825, column: 5, scope: !2280)
!2418 = !DILocation(line: 826, column: 18, scope: !2280)
!2419 = !DILocation(line: 826, column: 5, scope: !2280)
!2420 = !DILocation(line: 827, column: 18, scope: !2280)
!2421 = !DILocation(line: 827, column: 5, scope: !2280)
!2422 = !DILocation(line: 828, column: 18, scope: !2280)
!2423 = !DILocation(line: 828, column: 5, scope: !2280)
!2424 = !DILocation(line: 829, column: 1, scope: !2280)
!2425 = distinct !DISubprogram(name: "streamPropagateGroupID", scope: !1, file: !1, line: 837, type: !2426, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2037, !367, !144, !367}
!2428 = !{!2429, !2430, !2431, !2432, !2433}
!2429 = !DILocalVariable(name: "c", arg: 1, scope: !2425, file: !1, line: 837, type: !2037)
!2430 = !DILocalVariable(name: "key", arg: 2, scope: !2425, file: !1, line: 837, type: !367)
!2431 = !DILocalVariable(name: "group", arg: 3, scope: !2425, file: !1, line: 837, type: !144)
!2432 = !DILocalVariable(name: "groupname", arg: 4, scope: !2425, file: !1, line: 837, type: !367)
!2433 = !DILocalVariable(name: "argv", scope: !2425, file: !1, line: 838, type: !2434)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 320, elements: !2435)
!2435 = !{!2436}
!2436 = !DISubrange(count: 5)
!2437 = !DILocation(line: 837, column: 37, scope: !2425)
!2438 = !DILocation(line: 837, column: 46, scope: !2425)
!2439 = !DILocation(line: 837, column: 61, scope: !2425)
!2440 = !DILocation(line: 837, column: 74, scope: !2425)
!2441 = !DILocation(line: 838, column: 5, scope: !2425)
!2442 = !DILocation(line: 838, column: 11, scope: !2425)
!2443 = !DILocation(line: 839, column: 15, scope: !2425)
!2444 = !DILocation(line: 839, column: 5, scope: !2425)
!2445 = !DILocation(line: 839, column: 13, scope: !2425)
!2446 = !DILocation(line: 840, column: 15, scope: !2425)
!2447 = !DILocation(line: 840, column: 5, scope: !2425)
!2448 = !DILocation(line: 840, column: 13, scope: !2425)
!2449 = !DILocation(line: 841, column: 5, scope: !2425)
!2450 = !DILocation(line: 841, column: 13, scope: !2425)
!2451 = !DILocation(line: 842, column: 5, scope: !2425)
!2452 = !DILocation(line: 842, column: 13, scope: !2425)
!2453 = !DILocation(line: 786, column: 42, scope: !2268, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 843, column: 15, scope: !2425)
!2455 = !DILocation(line: 787, column: 47, scope: !2268, inlinedAt: !2454)
!2456 = !DILocation(line: 788, column: 29, scope: !2268, inlinedAt: !2454)
!2457 = !DILocation(line: 788, column: 36, scope: !2268, inlinedAt: !2454)
!2458 = !DILocation(line: 787, column: 37, scope: !2268, inlinedAt: !2454)
!2459 = !DILocation(line: 787, column: 12, scope: !2268, inlinedAt: !2454)
!2460 = !DILocation(line: 843, column: 5, scope: !2425)
!2461 = !DILocation(line: 843, column: 13, scope: !2425)
!2462 = !DILocation(line: 844, column: 22, scope: !2425)
!2463 = !{!546, !110, i64 992}
!2464 = !DILocation(line: 844, column: 39, scope: !2425)
!2465 = !DILocation(line: 844, column: 43, scope: !2425)
!2466 = !DILocation(line: 844, column: 5, scope: !2425)
!2467 = !DILocation(line: 845, column: 18, scope: !2425)
!2468 = !DILocation(line: 845, column: 5, scope: !2425)
!2469 = !DILocation(line: 846, column: 18, scope: !2425)
!2470 = !DILocation(line: 846, column: 5, scope: !2425)
!2471 = !DILocation(line: 847, column: 18, scope: !2425)
!2472 = !DILocation(line: 847, column: 5, scope: !2425)
!2473 = !DILocation(line: 848, column: 1, scope: !2425)
!2474 = distinct !DISubprogram(name: "streamReplyWithRange", scope: !1, file: !1, line: 898, type: !2475, isLocal: false, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2483)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!13, !2037, !69, !167, !167, !13, !12, !144, !2290, !12, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !71, line: 94, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreamPropInfo", file: !71, line: 91, size: 128, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !2479, file: !71, line: 92, baseType: !367, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !2479, file: !71, line: 93, baseType: !367, size: 64, offset: 64)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2503, !2504, !2505, !2506, !2509, !2510, !2511, !2512}
!2484 = !DILocalVariable(name: "c", arg: 1, scope: !2474, file: !1, line: 898, type: !2037)
!2485 = !DILocalVariable(name: "s", arg: 2, scope: !2474, file: !1, line: 898, type: !69)
!2486 = !DILocalVariable(name: "start", arg: 3, scope: !2474, file: !1, line: 898, type: !167)
!2487 = !DILocalVariable(name: "end", arg: 4, scope: !2474, file: !1, line: 898, type: !167)
!2488 = !DILocalVariable(name: "count", arg: 5, scope: !2474, file: !1, line: 898, type: !13)
!2489 = !DILocalVariable(name: "rev", arg: 6, scope: !2474, file: !1, line: 898, type: !12)
!2490 = !DILocalVariable(name: "group", arg: 7, scope: !2474, file: !1, line: 898, type: !144)
!2491 = !DILocalVariable(name: "consumer", arg: 8, scope: !2474, file: !1, line: 898, type: !2290)
!2492 = !DILocalVariable(name: "flags", arg: 9, scope: !2474, file: !1, line: 898, type: !12)
!2493 = !DILocalVariable(name: "spi", arg: 10, scope: !2474, file: !1, line: 898, type: !2477)
!2494 = !DILocalVariable(name: "arraylen_ptr", scope: !2474, file: !1, line: 899, type: !7)
!2495 = !DILocalVariable(name: "arraylen", scope: !2474, file: !1, line: 900, type: !13)
!2496 = !DILocalVariable(name: "si", scope: !2474, file: !1, line: 901, type: !1217)
!2497 = !DILocalVariable(name: "numfields", scope: !2474, file: !1, line: 902, type: !196)
!2498 = !DILocalVariable(name: "id", scope: !2474, file: !1, line: 903, type: !95)
!2499 = !DILocalVariable(name: "propagate_last_id", scope: !2474, file: !1, line: 904, type: !12)
!2500 = !DILocalVariable(name: "key", scope: !2501, file: !1, line: 934, type: !8)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 933, column: 28)
!2502 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 919, column: 52)
!2503 = !DILocalVariable(name: "value", scope: !2501, file: !1, line: 934, type: !8)
!2504 = !DILocalVariable(name: "key_len", scope: !2501, file: !1, line: 935, type: !196)
!2505 = !DILocalVariable(name: "value_len", scope: !2501, file: !1, line: 935, type: !196)
!2506 = !DILocalVariable(name: "buf", scope: !2507, file: !1, line: 951, type: !1366)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 950, column: 51)
!2508 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 950, column: 13)
!2509 = !DILocalVariable(name: "nack", scope: !2507, file: !1, line: 957, type: !2283)
!2510 = !DILocalVariable(name: "group_inserted", scope: !2507, file: !1, line: 958, type: !12)
!2511 = !DILocalVariable(name: "consumer_inserted", scope: !2507, file: !1, line: 960, type: !12)
!2512 = !DILocalVariable(name: "idarg", scope: !2513, file: !1, line: 983, type: !367)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 982, column: 22)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !1, line: 982, column: 17)
!2515 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 952, column: 13, scope: !2507)
!2517 = !DILocation(line: 898, column: 37, scope: !2474)
!2518 = !DILocation(line: 898, column: 48, scope: !2474)
!2519 = !DILocation(line: 898, column: 61, scope: !2474)
!2520 = !DILocation(line: 898, column: 78, scope: !2474)
!2521 = !DILocation(line: 898, column: 90, scope: !2474)
!2522 = !DILocation(line: 898, column: 101, scope: !2474)
!2523 = !DILocation(line: 898, column: 116, scope: !2474)
!2524 = !DILocation(line: 898, column: 139, scope: !2474)
!2525 = !DILocation(line: 898, column: 153, scope: !2474)
!2526 = !DILocation(line: 898, column: 176, scope: !2474)
!2527 = !DILocation(line: 899, column: 11, scope: !2474)
!2528 = !DILocation(line: 900, column: 12, scope: !2474)
!2529 = !DILocation(line: 901, column: 5, scope: !2474)
!2530 = !DILocation(line: 902, column: 5, scope: !2474)
!2531 = !DILocation(line: 903, column: 5, scope: !2474)
!2532 = !DILocation(line: 904, column: 9, scope: !2474)
!2533 = !DILocation(line: 911, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 911, column: 9)
!2535 = !DILocation(line: 911, column: 15, scope: !2534)
!2536 = !DILocation(line: 911, column: 25, scope: !2534)
!2537 = !DILocation(line: 912, column: 16, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 911, column: 48)
!2539 = !DILocation(line: 912, column: 9, scope: !2538)
!2540 = !DILocation(line: 916, column: 17, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 916, column: 9)
!2542 = !DILocation(line: 916, column: 9, scope: !2474)
!2543 = !DILocation(line: 917, column: 24, scope: !2541)
!2544 = !DILocation(line: 917, column: 9, scope: !2541)
!2545 = !DILocation(line: 0, scope: !2541)
!2546 = !DILocation(line: 901, column: 20, scope: !2474)
!2547 = !DILocation(line: 918, column: 5, scope: !2474)
!2548 = !DILocation(line: 919, column: 5, scope: !2474)
!2549 = !DILocation(line: 0, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !1, line: 921, column: 64)
!2551 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 921, column: 13)
!2552 = !DILocation(line: 0, scope: !2502)
!2553 = !DILocation(line: 902, column: 13, scope: !2474)
!2554 = !DILocation(line: 903, column: 14, scope: !2474)
!2555 = !DILocation(line: 919, column: 11, scope: !2474)
!2556 = !DILocation(line: 921, column: 19, scope: !2551)
!2557 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 921, column: 22, scope: !2551)
!2559 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !2558)
!2560 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !2558)
!2561 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !2558)
!2562 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !2558)
!2563 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !2558)
!2564 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !2558)
!2565 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !2558)
!2566 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !2558)
!2567 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !2558)
!2568 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !2558)
!2569 = !DILocation(line: 922, column: 30, scope: !2550)
!2570 = !DILocation(line: 924, column: 9, scope: !2550)
!2571 = !DILocation(line: 0, scope: !2474)
!2572 = !DILocation(line: 928, column: 9, scope: !2502)
!2573 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 929, column: 9, scope: !2502)
!2575 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !2574)
!2576 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !2574)
!2577 = !DILocation(line: 780, column: 59, scope: !2034, inlinedAt: !2574)
!2578 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !2574)
!2579 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !2574)
!2580 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !2574)
!2581 = !DILocation(line: 930, column: 32, scope: !2502)
!2582 = !DILocation(line: 930, column: 41, scope: !2502)
!2583 = !DILocation(line: 930, column: 9, scope: !2502)
!2584 = !DILocation(line: 933, column: 24, scope: !2502)
!2585 = !DILocation(line: 933, column: 9, scope: !2502)
!2586 = !DILocation(line: 934, column: 13, scope: !2501)
!2587 = !DILocation(line: 935, column: 13, scope: !2501)
!2588 = !DILocation(line: 934, column: 28, scope: !2501)
!2589 = !DILocation(line: 934, column: 34, scope: !2501)
!2590 = !DILocation(line: 935, column: 21, scope: !2501)
!2591 = !DILocation(line: 935, column: 30, scope: !2501)
!2592 = !DILocation(line: 936, column: 13, scope: !2501)
!2593 = !DILocation(line: 937, column: 35, scope: !2501)
!2594 = !DILocation(line: 937, column: 39, scope: !2501)
!2595 = !DILocation(line: 937, column: 13, scope: !2501)
!2596 = !DILocation(line: 938, column: 35, scope: !2501)
!2597 = !DILocation(line: 938, column: 41, scope: !2501)
!2598 = !DILocation(line: 938, column: 13, scope: !2501)
!2599 = !DILocation(line: 939, column: 9, scope: !2502)
!2600 = distinct !{!2600, !2585, !2599}
!2601 = !DILocation(line: 950, column: 19, scope: !2508)
!2602 = !DILocation(line: 951, column: 13, scope: !2507)
!2603 = !DILocation(line: 951, column: 27, scope: !2507)
!2604 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2516)
!2605 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2516)
!2606 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2516)
!2607 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2516)
!2608 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2516)
!2609 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2516)
!2610 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2516)
!2611 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2516)
!2612 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2516)
!2613 = !DILocalVariable(name: "consumer", arg: 1, scope: !2614, file: !1, line: 1592, type: !2290)
!2614 = distinct !DISubprogram(name: "streamCreateNACK", scope: !1, file: !1, line: 1592, type: !2615, isLocal: false, isDefinition: true, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!2283, !2290}
!2617 = !{!2613, !2618}
!2618 = !DILocalVariable(name: "nack", scope: !2614, file: !1, line: 1593, type: !2283)
!2619 = !DILocation(line: 1592, column: 46, scope: !2614, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 957, column: 32, scope: !2507)
!2621 = !DILocation(line: 1593, column: 24, scope: !2614, inlinedAt: !2620)
!2622 = !DILocation(line: 1594, column: 27, scope: !2614, inlinedAt: !2620)
!2623 = !DILocation(line: 1594, column: 11, scope: !2614, inlinedAt: !2620)
!2624 = !DILocation(line: 1594, column: 25, scope: !2614, inlinedAt: !2620)
!2625 = !DILocation(line: 1595, column: 11, scope: !2614, inlinedAt: !2620)
!2626 = !DILocation(line: 1595, column: 26, scope: !2614, inlinedAt: !2620)
!2627 = !DILocation(line: 1596, column: 11, scope: !2614, inlinedAt: !2620)
!2628 = !DILocation(line: 1596, column: 20, scope: !2614, inlinedAt: !2620)
!2629 = !DILocation(line: 959, column: 37, scope: !2507)
!2630 = !DILocation(line: 959, column: 17, scope: !2507)
!2631 = !DILocation(line: 958, column: 17, scope: !2507)
!2632 = !DILocation(line: 961, column: 40, scope: !2507)
!2633 = !{!2328, !110, i64 16}
!2634 = !DILocation(line: 961, column: 17, scope: !2507)
!2635 = !DILocation(line: 960, column: 17, scope: !2507)
!2636 = !DILocation(line: 966, column: 32, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2507, file: !1, line: 966, column: 17)
!2638 = !DILocation(line: 966, column: 17, scope: !2507)
!2639 = !DILocalVariable(name: "na", arg: 1, scope: !2640, file: !1, line: 1601, type: !2283)
!2640 = distinct !DISubprogram(name: "streamFreeNACK", scope: !1, file: !1, line: 1601, type: !2641, isLocal: false, isDefinition: true, scopeLine: 1601, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{null, !2283}
!2643 = !{!2639}
!2644 = !DILocation(line: 1601, column: 33, scope: !2640, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 967, column: 17, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 966, column: 38)
!2647 = !DILocation(line: 1602, column: 5, scope: !2640, inlinedAt: !2645)
!2648 = !DILocation(line: 968, column: 39, scope: !2646)
!2649 = !DILocation(line: 968, column: 24, scope: !2646)
!2650 = !DILocation(line: 957, column: 25, scope: !2507)
!2651 = !DILocation(line: 969, column: 17, scope: !2646)
!2652 = !DILocation(line: 970, column: 33, scope: !2646)
!2653 = !DILocation(line: 970, column: 43, scope: !2646)
!2654 = !DILocation(line: 970, column: 17, scope: !2646)
!2655 = !DILocation(line: 972, column: 32, scope: !2646)
!2656 = !DILocation(line: 973, column: 39, scope: !2646)
!2657 = !DILocation(line: 973, column: 23, scope: !2646)
!2658 = !DILocation(line: 973, column: 37, scope: !2646)
!2659 = !DILocation(line: 974, column: 23, scope: !2646)
!2660 = !DILocation(line: 974, column: 38, scope: !2646)
!2661 = !DILocation(line: 976, column: 37, scope: !2646)
!2662 = !DILocation(line: 976, column: 17, scope: !2646)
!2663 = !DILocation(line: 977, column: 13, scope: !2646)
!2664 = !DILocation(line: 1593, column: 17, scope: !2614, inlinedAt: !2620)
!2665 = !DILocation(line: 977, column: 39, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 977, column: 24)
!2667 = !DILocation(line: 977, column: 65, scope: !2666)
!2668 = !DILocation(line: 977, column: 44, scope: !2666)
!2669 = !DILocation(line: 978, column: 17, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !1, line: 977, column: 71)
!2671 = !DILocation(line: 0, scope: !2507)
!2672 = !DILocation(line: 982, column: 17, scope: !2507)
!2673 = !DILocation(line: 786, column: 42, scope: !2268, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 983, column: 31, scope: !2513)
!2675 = !DILocation(line: 787, column: 47, scope: !2268, inlinedAt: !2674)
!2676 = !DILocation(line: 787, column: 37, scope: !2268, inlinedAt: !2674)
!2677 = !DILocation(line: 787, column: 12, scope: !2268, inlinedAt: !2674)
!2678 = !DILocation(line: 983, column: 23, scope: !2513)
!2679 = !DILocation(line: 984, column: 46, scope: !2513)
!2680 = !{!2681, !110, i64 0}
!2681 = !{!"sreamPropInfo", !110, i64 0, !110, i64 8}
!2682 = !DILocation(line: 984, column: 65, scope: !2513)
!2683 = !{!2681, !110, i64 8}
!2684 = !DILocation(line: 984, column: 17, scope: !2513)
!2685 = !DILocation(line: 985, column: 17, scope: !2513)
!2686 = !DILocation(line: 986, column: 13, scope: !2513)
!2687 = !DILocation(line: 987, column: 9, scope: !2508)
!2688 = !DILocation(line: 987, column: 9, scope: !2507)
!2689 = !DILocation(line: 988, column: 17, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 988, column: 17)
!2691 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 987, column: 16)
!2692 = !DILocation(line: 988, column: 17, scope: !2691)
!2693 = !DILocation(line: 989, column: 47, scope: !2690)
!2694 = !DILocation(line: 989, column: 66, scope: !2690)
!2695 = !DILocation(line: 989, column: 17, scope: !2690)
!2696 = !DILocation(line: 992, column: 17, scope: !2502)
!2697 = !DILocation(line: 993, column: 28, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 993, column: 13)
!2699 = !DILocation(line: 993, column: 19, scope: !2698)
!2700 = distinct !{!2700, !2548, !2701}
!2701 = !DILocation(line: 994, column: 5, scope: !2474)
!2702 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 995, column: 5, scope: !2474)
!2704 = !DILocation(line: 757, column: 18, scope: !1985, inlinedAt: !2703)
!2705 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !2703)
!2706 = !DILocation(line: 996, column: 9, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 996, column: 9)
!2708 = !DILocation(line: 996, column: 9, scope: !2474)
!2709 = !DILocation(line: 996, column: 23, scope: !2707)
!2710 = !DILocation(line: 998, column: 1, scope: !2474)
!2711 = distinct !DISubprogram(name: "streamReplyWithRangeFromConsumerPEL", scope: !1, file: !1, line: 1013, type: !2712, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!13, !2037, !69, !167, !167, !13, !2290}
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2728, !2731}
!2715 = !DILocalVariable(name: "c", arg: 1, scope: !2711, file: !1, line: 1013, type: !2037)
!2716 = !DILocalVariable(name: "s", arg: 2, scope: !2711, file: !1, line: 1013, type: !69)
!2717 = !DILocalVariable(name: "start", arg: 3, scope: !2711, file: !1, line: 1013, type: !167)
!2718 = !DILocalVariable(name: "end", arg: 4, scope: !2711, file: !1, line: 1013, type: !167)
!2719 = !DILocalVariable(name: "count", arg: 5, scope: !2711, file: !1, line: 1013, type: !13)
!2720 = !DILocalVariable(name: "consumer", arg: 6, scope: !2711, file: !1, line: 1013, type: !2290)
!2721 = !DILocalVariable(name: "ri", scope: !2711, file: !1, line: 1014, type: !384)
!2722 = !DILocalVariable(name: "startkey", scope: !2711, file: !1, line: 1015, type: !1366)
!2723 = !DILocalVariable(name: "endkey", scope: !2711, file: !1, line: 1016, type: !1366)
!2724 = !DILocalVariable(name: "arraylen", scope: !2711, file: !1, line: 1020, type: !13)
!2725 = !DILocalVariable(name: "arraylen_ptr", scope: !2711, file: !1, line: 1021, type: !7)
!2726 = !DILocalVariable(name: "thisid", scope: !2727, file: !1, line: 1026, type: !95)
!2727 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 1024, column: 57)
!2728 = !DILocalVariable(name: "id", scope: !2729, file: !1, line: 1036, type: !95)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 1030, column: 9)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 1028, column: 13)
!2731 = !DILocalVariable(name: "nack", scope: !2732, file: !1, line: 1041, type: !2283)
!2732 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 1040, column: 16)
!2733 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1037, column: 13, scope: !2729)
!2735 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1027, column: 9, scope: !2727)
!2737 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1018, column: 14, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2711, file: !1, line: 1018, column: 9)
!2740 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1017, column: 5, scope: !2711)
!2742 = !DILocation(line: 1013, column: 52, scope: !2711)
!2743 = !DILocation(line: 1013, column: 63, scope: !2711)
!2744 = !DILocation(line: 1013, column: 76, scope: !2711)
!2745 = !DILocation(line: 1013, column: 93, scope: !2711)
!2746 = !DILocation(line: 1013, column: 105, scope: !2711)
!2747 = !DILocation(line: 1013, column: 128, scope: !2711)
!2748 = !DILocation(line: 1014, column: 5, scope: !2711)
!2749 = !DILocation(line: 1015, column: 5, scope: !2711)
!2750 = !DILocation(line: 1015, column: 19, scope: !2711)
!2751 = !DILocation(line: 1016, column: 5, scope: !2711)
!2752 = !DILocation(line: 1016, column: 19, scope: !2711)
!2753 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2741)
!2754 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2741)
!2755 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2741)
!2756 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2741)
!2757 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !2741)
!2758 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2741)
!2759 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2741)
!2760 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !2741)
!2761 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2741)
!2762 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2741)
!2763 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2741)
!2764 = !DILocation(line: 1018, column: 9, scope: !2739)
!2765 = !DILocation(line: 1018, column: 9, scope: !2711)
!2766 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2738)
!2767 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2738)
!2768 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2738)
!2769 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2738)
!2770 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2738)
!2771 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2738)
!2772 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2738)
!2773 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2738)
!2774 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2738)
!2775 = !DILocation(line: 1018, column: 14, scope: !2739)
!2776 = !DILocation(line: 1020, column: 12, scope: !2711)
!2777 = !DILocation(line: 1021, column: 26, scope: !2711)
!2778 = !DILocation(line: 1021, column: 11, scope: !2711)
!2779 = !DILocation(line: 1022, column: 28, scope: !2711)
!2780 = !DILocation(line: 1014, column: 17, scope: !2711)
!2781 = !DILocation(line: 1022, column: 5, scope: !2711)
!2782 = !DILocation(line: 1023, column: 5, scope: !2711)
!2783 = !DILocation(line: 1025, column: 30, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2727, file: !1, line: 1025, column: 13)
!2785 = !DILocation(line: 1024, column: 11, scope: !2711)
!2786 = !DILocation(line: 1024, column: 35, scope: !2711)
!2787 = !DILocation(line: 1024, column: 24, scope: !2711)
!2788 = !DILocation(line: 1025, column: 17, scope: !2784)
!2789 = !DILocation(line: 1025, column: 41, scope: !2784)
!2790 = !DILocation(line: 1025, column: 20, scope: !2784)
!2791 = !DILocation(line: 1025, column: 50, scope: !2784)
!2792 = !DILocation(line: 1025, column: 13, scope: !2727)
!2793 = !DILocation(line: 1026, column: 9, scope: !2727)
!2794 = !DILocation(line: 1027, column: 27, scope: !2727)
!2795 = !DILocation(line: 1026, column: 18, scope: !2727)
!2796 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2736)
!2797 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2736)
!2798 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2736)
!2799 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2736)
!2800 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2736)
!2801 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !2736)
!2802 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2736)
!2803 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !2736)
!2804 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2736)
!2805 = !DILocation(line: 1028, column: 13, scope: !2730)
!2806 = !DILocation(line: 1029, column: 62, scope: !2730)
!2807 = !DILocation(line: 1028, column: 13, scope: !2727)
!2808 = !DILocation(line: 1035, column: 13, scope: !2729)
!2809 = !DILocation(line: 1037, column: 31, scope: !2729)
!2810 = !DILocation(line: 1036, column: 22, scope: !2729)
!2811 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2734)
!2812 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2734)
!2813 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2734)
!2814 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2734)
!2815 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2734)
!2816 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2734)
!2817 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2734)
!2818 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1038, column: 13, scope: !2729)
!2820 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !2819)
!2821 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !2819)
!2822 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !2819)
!2823 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !2819)
!2824 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !2819)
!2825 = !DILocation(line: 1039, column: 31, scope: !2729)
!2826 = !{!2827, !110, i64 88}
!2827 = !{!"sharedObjectsStruct", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !110, i64 96, !110, i64 104, !110, i64 112, !110, i64 120, !110, i64 128, !110, i64 136, !110, i64 144, !110, i64 152, !110, i64 160, !110, i64 168, !110, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !110, i64 208, !110, i64 216, !110, i64 224, !110, i64 232, !110, i64 240, !110, i64 248, !110, i64 256, !110, i64 264, !110, i64 272, !110, i64 280, !110, i64 288, !110, i64 296, !110, i64 304, !110, i64 312, !110, i64 320, !110, i64 328, !110, i64 336, !110, i64 344, !110, i64 352, !110, i64 360, !111, i64 368, !111, i64 448, !111, i64 80448, !111, i64 80704, !110, i64 80960, !110, i64 80968}
!2828 = !DILocation(line: 1039, column: 13, scope: !2729)
!2829 = !DILocation(line: 1040, column: 9, scope: !2729)
!2830 = !DILocation(line: 1041, column: 35, scope: !2732)
!2831 = !DILocation(line: 1041, column: 25, scope: !2732)
!2832 = !DILocation(line: 1042, column: 35, scope: !2732)
!2833 = !DILocation(line: 1042, column: 19, scope: !2732)
!2834 = !DILocation(line: 1042, column: 33, scope: !2732)
!2835 = !DILocation(line: 1043, column: 19, scope: !2732)
!2836 = !DILocation(line: 1043, column: 33, scope: !2732)
!2837 = !DILocation(line: 1045, column: 17, scope: !2727)
!2838 = !DILocation(line: 1046, column: 5, scope: !2711)
!2839 = distinct !{!2839, !2840, !2838}
!2840 = !DILocation(line: 1024, column: 5, scope: !2711)
!2841 = !DILocation(line: 0, scope: !2727)
!2842 = !DILocation(line: 1047, column: 5, scope: !2711)
!2843 = !DILocation(line: 1048, column: 5, scope: !2711)
!2844 = !DILocation(line: 1050, column: 1, scope: !2711)
!2845 = !DILocation(line: 1049, column: 5, scope: !2711)
!2846 = !DILocation(line: 1592, column: 46, scope: !2614)
!2847 = !DILocation(line: 1593, column: 24, scope: !2614)
!2848 = !DILocation(line: 1593, column: 17, scope: !2614)
!2849 = !DILocation(line: 1594, column: 27, scope: !2614)
!2850 = !DILocation(line: 1594, column: 11, scope: !2614)
!2851 = !DILocation(line: 1594, column: 25, scope: !2614)
!2852 = !DILocation(line: 1595, column: 11, scope: !2614)
!2853 = !DILocation(line: 1595, column: 26, scope: !2614)
!2854 = !DILocation(line: 1596, column: 11, scope: !2614)
!2855 = !DILocation(line: 1596, column: 20, scope: !2614)
!2856 = !DILocation(line: 1597, column: 5, scope: !2614)
!2857 = !DILocation(line: 1601, column: 33, scope: !2640)
!2858 = !DILocation(line: 1602, column: 11, scope: !2640)
!2859 = !DILocation(line: 1602, column: 5, scope: !2640)
!2860 = !DILocation(line: 1603, column: 1, scope: !2640)
!2861 = distinct !DISubprogram(name: "streamTypeLookupWriteOrCreate", scope: !1, file: !1, line: 1058, type: !2862, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!367, !2037, !367}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "c", arg: 1, scope: !2861, file: !1, line: 1058, type: !2037)
!2866 = !DILocalVariable(name: "key", arg: 2, scope: !2861, file: !1, line: 1058, type: !367)
!2867 = !DILocalVariable(name: "o", scope: !2861, file: !1, line: 1059, type: !367)
!2868 = !DILocation(line: 1058, column: 45, scope: !2861)
!2869 = !DILocation(line: 1058, column: 54, scope: !2861)
!2870 = !DILocation(line: 1059, column: 33, scope: !2861)
!2871 = !DILocation(line: 1059, column: 15, scope: !2861)
!2872 = !DILocation(line: 1059, column: 11, scope: !2861)
!2873 = !DILocation(line: 1060, column: 11, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 1060, column: 9)
!2875 = !DILocation(line: 1060, column: 9, scope: !2861)
!2876 = !DILocation(line: 1061, column: 13, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 1060, column: 20)
!2878 = !DILocation(line: 1062, column: 18, scope: !2877)
!2879 = !DILocation(line: 1062, column: 9, scope: !2877)
!2880 = !DILocation(line: 1063, column: 5, scope: !2877)
!2881 = !DILocation(line: 1064, column: 16, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !1, line: 1064, column: 13)
!2883 = distinct !DILexicalBlock(scope: !2874, file: !1, line: 1063, column: 12)
!2884 = !DILocation(line: 1064, column: 21, scope: !2882)
!2885 = !DILocation(line: 1064, column: 13, scope: !2883)
!2886 = !DILocation(line: 1065, column: 31, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !1, line: 1064, column: 36)
!2888 = !{!2827, !110, i64 112}
!2889 = !DILocation(line: 1065, column: 13, scope: !2887)
!2890 = !DILocation(line: 1066, column: 13, scope: !2887)
!2891 = !DILocation(line: 0, scope: !2887)
!2892 = !DILocation(line: 1070, column: 1, scope: !2861)
!2893 = distinct !DISubprogram(name: "string2ull", scope: !1, file: !1, line: 1077, type: !2894, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2899)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!12, !2896, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DILocalVariable(name: "s", arg: 1, scope: !2893, file: !1, line: 1077, type: !2896)
!2901 = !DILocalVariable(name: "value", arg: 2, scope: !2893, file: !1, line: 1077, type: !2898)
!2902 = !DILocalVariable(name: "ll", scope: !2893, file: !1, line: 1078, type: !246)
!2903 = !DILocalVariable(name: "endptr", scope: !2893, file: !1, line: 1085, type: !10)
!2904 = !DILocation(line: 1077, column: 28, scope: !2893)
!2905 = !DILocation(line: 1077, column: 51, scope: !2893)
!2906 = !DILocation(line: 1078, column: 5, scope: !2893)
!2907 = !DILocation(line: 1079, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2893, file: !1, line: 1079, column: 9)
!2909 = !DILocation(line: 1078, column: 15, scope: !2893)
!2910 = !DILocation(line: 1079, column: 9, scope: !2908)
!2911 = !DILocation(line: 1079, column: 9, scope: !2893)
!2912 = !DILocation(line: 1080, column: 13, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !1, line: 1080, column: 13)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 1079, column: 37)
!2915 = !DILocation(line: 1080, column: 16, scope: !2913)
!2916 = !DILocation(line: 1080, column: 13, scope: !2914)
!2917 = !DILocation(line: 1081, column: 16, scope: !2914)
!2918 = !DILocation(line: 1082, column: 9, scope: !2914)
!2919 = !DILocation(line: 1084, column: 5, scope: !2893)
!2920 = !DILocation(line: 1084, column: 11, scope: !2893)
!2921 = !DILocation(line: 1085, column: 5, scope: !2893)
!2922 = !DILocation(line: 1085, column: 11, scope: !2893)
!2923 = !DILocation(line: 1086, column: 14, scope: !2893)
!2924 = !DILocation(line: 1086, column: 12, scope: !2893)
!2925 = !DILocation(line: 1087, column: 9, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2893, file: !1, line: 1087, column: 9)
!2927 = !DILocation(line: 1087, column: 15, scope: !2926)
!2928 = !DILocation(line: 1087, column: 25, scope: !2926)
!2929 = !DILocation(line: 1087, column: 28, scope: !2926)
!2930 = !DILocation(line: 1087, column: 34, scope: !2926)
!2931 = !DILocation(line: 1087, column: 44, scope: !2926)
!2932 = !DILocation(line: 1087, column: 49, scope: !2926)
!2933 = !DILocation(line: 1087, column: 52, scope: !2926)
!2934 = !DILocation(line: 1087, column: 60, scope: !2926)
!2935 = !DILocation(line: 1087, column: 64, scope: !2926)
!2936 = !DILocation(line: 1087, column: 63, scope: !2926)
!2937 = !DILocation(line: 1087, column: 71, scope: !2926)
!2938 = !DILocation(line: 1087, column: 9, scope: !2893)
!2939 = !DILocation(line: 0, scope: !2893)
!2940 = !DILocation(line: 1090, column: 1, scope: !2893)
!2941 = !DILocation(line: 0, scope: !2926)
!2942 = distinct !DISubprogram(name: "streamGenericParseIDOrReply", scope: !1, file: !1, line: 1104, type: !2943, isLocal: false, isDefinition: true, scopeLine: 1104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!12, !2037, !367, !167, !57, !12}
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2951, !2953, !2954, !2955}
!2946 = !DILocalVariable(name: "c", arg: 1, scope: !2942, file: !1, line: 1104, type: !2037)
!2947 = !DILocalVariable(name: "o", arg: 2, scope: !2942, file: !1, line: 1104, type: !367)
!2948 = !DILocalVariable(name: "id", arg: 3, scope: !2942, file: !1, line: 1104, type: !167)
!2949 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !2942, file: !1, line: 1104, type: !57)
!2950 = !DILocalVariable(name: "strict", arg: 5, scope: !2942, file: !1, line: 1104, type: !12)
!2951 = !DILocalVariable(name: "buf", scope: !2942, file: !1, line: 1105, type: !2952)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !395)
!2953 = !DILocalVariable(name: "dot", scope: !2942, file: !1, line: 1124, type: !10)
!2954 = !DILocalVariable(name: "ms", scope: !2942, file: !1, line: 1126, type: !2176)
!2955 = !DILocalVariable(name: "seq", scope: !2942, file: !1, line: 1126, type: !2176)
!2956 = !DILocation(line: 1104, column: 41, scope: !2942)
!2957 = !DILocation(line: 1104, column: 50, scope: !2942)
!2958 = !DILocation(line: 1104, column: 63, scope: !2942)
!2959 = !DILocation(line: 1104, column: 76, scope: !2942)
!2960 = !DILocation(line: 1104, column: 93, scope: !2942)
!2961 = !DILocation(line: 1105, column: 5, scope: !2942)
!2962 = !DILocation(line: 1105, column: 10, scope: !2942)
!2963 = !DILocation(line: 1106, column: 19, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1106, column: 9)
!2965 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1106, column: 9, scope: !2964)
!2967 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !2966)
!2968 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !2966)
!2969 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !2966)
!2970 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2966)
!2971 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2966)
!2972 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2966)
!2973 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2966)
!2974 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2966)
!2975 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2966)
!2976 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2966)
!2977 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2966)
!2978 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2966)
!2979 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2966)
!2980 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2966)
!2981 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2966)
!2982 = !DILocation(line: 0, scope: !660, inlinedAt: !2966)
!2983 = !DILocation(line: 1106, column: 24, scope: !2964)
!2984 = !DILocation(line: 1106, column: 9, scope: !2942)
!2985 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 1107, column: 23, scope: !2942)
!2987 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !2986)
!2988 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !2986)
!2989 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2986)
!2990 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2986)
!2991 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2986)
!2992 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2986)
!2993 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2986)
!2994 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2986)
!2995 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2986)
!2996 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2986)
!2997 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2986)
!2998 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2986)
!2999 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2986)
!3000 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2986)
!3001 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2986)
!3002 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2986)
!3003 = !DILocation(line: 0, scope: !660, inlinedAt: !2986)
!3004 = !DILocation(line: 1107, column: 37, scope: !2942)
!3005 = !DILocation(line: 1107, column: 5, scope: !2942)
!3006 = !DILocation(line: 1109, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1109, column: 9)
!3008 = !DILocation(line: 0, scope: !3007)
!3009 = !DILocation(line: 1109, column: 16, scope: !3007)
!3010 = !DILocation(line: 1109, column: 34, scope: !3007)
!3011 = !DILocation(line: 1109, column: 55, scope: !3007)
!3012 = !DILocation(line: 1109, column: 62, scope: !3007)
!3013 = !DILocation(line: 1109, column: 9, scope: !2942)
!3014 = !DILocation(line: 1113, column: 23, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1113, column: 9)
!3016 = !DILocation(line: 1113, column: 26, scope: !3015)
!3017 = !DILocation(line: 1113, column: 33, scope: !3015)
!3018 = !DILocation(line: 1113, column: 9, scope: !2942)
!3019 = !DILocation(line: 1114, column: 16, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3015, file: !1, line: 1113, column: 42)
!3021 = !DILocation(line: 1116, column: 9, scope: !3020)
!3022 = !DILocation(line: 1117, column: 33, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3015, file: !1, line: 1117, column: 16)
!3024 = !DILocation(line: 1117, column: 40, scope: !3023)
!3025 = !DILocation(line: 1117, column: 16, scope: !3015)
!3026 = !DILocation(line: 1118, column: 16, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !1, line: 1117, column: 49)
!3028 = !DILocation(line: 1120, column: 9, scope: !3027)
!3029 = !DILocation(line: 1124, column: 17, scope: !2942)
!3030 = !DILocation(line: 1124, column: 11, scope: !2942)
!3031 = !DILocation(line: 1125, column: 9, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1125, column: 9)
!3033 = !DILocation(line: 1125, column: 9, scope: !2942)
!3034 = !DILocation(line: 1125, column: 19, scope: !3032)
!3035 = !DILocation(line: 1125, column: 14, scope: !3032)
!3036 = !DILocation(line: 1126, column: 24, scope: !2942)
!3037 = !DILocation(line: 1127, column: 9, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1127, column: 9)
!3039 = !DILocation(line: 1127, column: 29, scope: !3038)
!3040 = !DILocation(line: 1127, column: 9, scope: !2942)
!3041 = !DILocation(line: 1128, column: 13, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1128, column: 9)
!3043 = !DILocation(line: 1128, column: 30, scope: !3042)
!3044 = !DILocation(line: 1126, column: 28, scope: !2942)
!3045 = !DILocation(line: 1128, column: 16, scope: !3042)
!3046 = !DILocation(line: 1128, column: 39, scope: !3042)
!3047 = !DILocation(line: 1128, column: 9, scope: !2942)
!3048 = !DILocation(line: 1131, column: 15, scope: !2942)
!3049 = !DILocation(line: 1129, column: 19, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1129, column: 9)
!3051 = !DILocation(line: 1129, column: 15, scope: !3050)
!3052 = !DILocation(line: 1130, column: 14, scope: !2942)
!3053 = !DILocation(line: 1130, column: 9, scope: !2942)
!3054 = !DILocation(line: 1130, column: 12, scope: !2942)
!3055 = !DILocation(line: 1131, column: 9, scope: !2942)
!3056 = !DILocation(line: 1131, column: 13, scope: !2942)
!3057 = !DILocation(line: 1132, column: 5, scope: !2942)
!3058 = !DILocation(line: 1135, column: 9, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 1135, column: 9)
!3060 = !DILocation(line: 1135, column: 9, scope: !2942)
!3061 = !DILocation(line: 1135, column: 12, scope: !3059)
!3062 = !DILocation(line: 0, scope: !2942)
!3063 = !DILocation(line: 1138, column: 1, scope: !2942)
!3064 = distinct !DISubprogram(name: "streamParseIDOrReply", scope: !1, file: !1, line: 1142, type: !3065, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!12, !2037, !367, !167, !57}
!3067 = !{!3068, !3069, !3070, !3071}
!3068 = !DILocalVariable(name: "c", arg: 1, scope: !3064, file: !1, line: 1142, type: !2037)
!3069 = !DILocalVariable(name: "o", arg: 2, scope: !3064, file: !1, line: 1142, type: !367)
!3070 = !DILocalVariable(name: "id", arg: 3, scope: !3064, file: !1, line: 1142, type: !167)
!3071 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3064, file: !1, line: 1142, type: !57)
!3072 = !DILocation(line: 1142, column: 34, scope: !3064)
!3073 = !DILocation(line: 1142, column: 43, scope: !3064)
!3074 = !DILocation(line: 1142, column: 56, scope: !3064)
!3075 = !DILocation(line: 1142, column: 69, scope: !3064)
!3076 = !DILocation(line: 1143, column: 12, scope: !3064)
!3077 = !DILocation(line: 1143, column: 5, scope: !3064)
!3078 = distinct !DISubprogram(name: "streamParseStrictIDOrReply", scope: !1, file: !1, line: 1149, type: !3065, isLocal: false, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3079)
!3079 = !{!3080, !3081, !3082, !3083}
!3080 = !DILocalVariable(name: "c", arg: 1, scope: !3078, file: !1, line: 1149, type: !2037)
!3081 = !DILocalVariable(name: "o", arg: 2, scope: !3078, file: !1, line: 1149, type: !367)
!3082 = !DILocalVariable(name: "id", arg: 3, scope: !3078, file: !1, line: 1149, type: !167)
!3083 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3078, file: !1, line: 1149, type: !57)
!3084 = !DILocation(line: 1149, column: 40, scope: !3078)
!3085 = !DILocation(line: 1149, column: 49, scope: !3078)
!3086 = !DILocation(line: 1149, column: 62, scope: !3078)
!3087 = !DILocation(line: 1149, column: 75, scope: !3078)
!3088 = !DILocation(line: 1150, column: 12, scope: !3078)
!3089 = !DILocation(line: 1150, column: 5, scope: !3078)
!3090 = distinct !DISubprogram(name: "streamRewriteApproxMaxlen", scope: !1, file: !1, line: 1155, type: !3091, isLocal: false, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !2037, !69, !12}
!3093 = !{!3094, !3095, !3096, !3097, !3098}
!3094 = !DILocalVariable(name: "c", arg: 1, scope: !3090, file: !1, line: 1155, type: !2037)
!3095 = !DILocalVariable(name: "s", arg: 2, scope: !3090, file: !1, line: 1155, type: !69)
!3096 = !DILocalVariable(name: "maxlen_arg_idx", arg: 3, scope: !3090, file: !1, line: 1155, type: !12)
!3097 = !DILocalVariable(name: "maxlen_obj", scope: !3090, file: !1, line: 1156, type: !367)
!3098 = !DILocalVariable(name: "equal_obj", scope: !3090, file: !1, line: 1157, type: !367)
!3099 = !DILocation(line: 1155, column: 40, scope: !3090)
!3100 = !DILocation(line: 1155, column: 51, scope: !3090)
!3101 = !DILocation(line: 1155, column: 58, scope: !3090)
!3102 = !DILocation(line: 1156, column: 58, scope: !3090)
!3103 = !DILocation(line: 1156, column: 24, scope: !3090)
!3104 = !DILocation(line: 1156, column: 11, scope: !3090)
!3105 = !DILocation(line: 1157, column: 23, scope: !3090)
!3106 = !DILocation(line: 1157, column: 11, scope: !3090)
!3107 = !DILocation(line: 1159, column: 5, scope: !3090)
!3108 = !DILocation(line: 1160, column: 50, scope: !3090)
!3109 = !DILocation(line: 1160, column: 5, scope: !3090)
!3110 = !DILocation(line: 1162, column: 5, scope: !3090)
!3111 = !DILocation(line: 1163, column: 5, scope: !3090)
!3112 = !DILocation(line: 1164, column: 1, scope: !3090)
!3113 = distinct !DISubprogram(name: "xaddCommand", scope: !1, file: !1, line: 1167, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3126, !3127, !3131, !3132, !3133, !3134}
!3115 = !DILocalVariable(name: "c", arg: 1, scope: !3113, file: !1, line: 1167, type: !2037)
!3116 = !DILocalVariable(name: "id", scope: !3113, file: !1, line: 1168, type: !95)
!3117 = !DILocalVariable(name: "id_given", scope: !3113, file: !1, line: 1169, type: !12)
!3118 = !DILocalVariable(name: "maxlen", scope: !3113, file: !1, line: 1170, type: !246)
!3119 = !DILocalVariable(name: "approx_maxlen", scope: !3113, file: !1, line: 1171, type: !12)
!3120 = !DILocalVariable(name: "maxlen_arg_idx", scope: !3113, file: !1, line: 1173, type: !12)
!3121 = !DILocalVariable(name: "i", scope: !3113, file: !1, line: 1176, type: !12)
!3122 = !DILocalVariable(name: "moreargs", scope: !3123, file: !1, line: 1179, type: !12)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !1, line: 1178, column: 30)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !1, line: 1178, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1178, column: 5)
!3126 = !DILocalVariable(name: "opt", scope: !3123, file: !1, line: 1180, type: !10)
!3127 = !DILocalVariable(name: "next", scope: !3128, file: !1, line: 1187, type: !10)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !1, line: 1185, column: 59)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !1, line: 1185, column: 20)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !1, line: 1181, column: 13)
!3131 = !DILocalVariable(name: "field_pos", scope: !3113, file: !1, line: 1211, type: !12)
!3132 = !DILocalVariable(name: "o", scope: !3113, file: !1, line: 1220, type: !367)
!3133 = !DILocalVariable(name: "s", scope: !3113, file: !1, line: 1221, type: !69)
!3134 = !DILocalVariable(name: "idarg", scope: !3113, file: !1, line: 1250, type: !367)
!3135 = !DILocation(line: 1167, column: 26, scope: !3113)
!3136 = !DILocation(line: 1168, column: 5, scope: !3113)
!3137 = !DILocation(line: 1169, column: 9, scope: !3113)
!3138 = !DILocation(line: 1170, column: 5, scope: !3113)
!3139 = !DILocation(line: 1170, column: 15, scope: !3113)
!3140 = !DILocation(line: 1171, column: 9, scope: !3113)
!3141 = !DILocation(line: 1173, column: 9, scope: !3113)
!3142 = !DILocation(line: 1176, column: 9, scope: !3113)
!3143 = !DILocation(line: 1178, column: 19, scope: !3124)
!3144 = !{!2395, !518, i64 64}
!3145 = !DILocation(line: 1178, column: 14, scope: !3124)
!3146 = !DILocation(line: 1178, column: 5, scope: !3125)
!3147 = !DILocation(line: 1179, column: 36, scope: !3123)
!3148 = !DILocation(line: 1179, column: 13, scope: !3123)
!3149 = !DILocation(line: 1180, column: 24, scope: !3123)
!3150 = !{!2395, !110, i64 72}
!3151 = !DILocation(line: 1180, column: 21, scope: !3123)
!3152 = !DILocation(line: 1180, column: 33, scope: !3123)
!3153 = !DILocation(line: 1180, column: 15, scope: !3123)
!3154 = !DILocation(line: 1181, column: 13, scope: !3130)
!3155 = !DILocation(line: 1181, column: 20, scope: !3130)
!3156 = !DILocation(line: 1181, column: 27, scope: !3130)
!3157 = !DILocation(line: 1181, column: 30, scope: !3130)
!3158 = !DILocation(line: 1181, column: 37, scope: !3130)
!3159 = !DILocation(line: 1181, column: 13, scope: !3123)
!3160 = !DILocation(line: 1185, column: 21, scope: !3129)
!3161 = !DILocation(line: 1185, column: 49, scope: !3129)
!3162 = !DILocation(line: 1185, column: 46, scope: !3129)
!3163 = !DILocation(line: 1187, column: 35, scope: !3128)
!3164 = !DILocation(line: 1187, column: 26, scope: !3128)
!3165 = !DILocation(line: 1187, column: 40, scope: !3128)
!3166 = !DILocation(line: 1187, column: 19, scope: !3128)
!3167 = !DILocation(line: 1189, column: 26, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 1189, column: 17)
!3169 = !DILocation(line: 1189, column: 31, scope: !3168)
!3170 = !DILocation(line: 1189, column: 34, scope: !3168)
!3171 = !DILocation(line: 1189, column: 49, scope: !3168)
!3172 = !DILocation(line: 1189, column: 52, scope: !3168)
!3173 = !DILocation(line: 1189, column: 60, scope: !3168)
!3174 = !DILocation(line: 1189, column: 17, scope: !3128)
!3175 = !DILocation(line: 1192, column: 59, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !1, line: 1192, column: 24)
!3177 = !DILocation(line: 1192, column: 67, scope: !3176)
!3178 = !DILocation(line: 1192, column: 24, scope: !3168)
!3179 = !DILocation(line: 0, scope: !3113)
!3180 = !DILocation(line: 0, scope: !3128)
!3181 = !DILocation(line: 1195, column: 57, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 1195, column: 17)
!3183 = !DILocation(line: 1195, column: 48, scope: !3182)
!3184 = !DILocation(line: 1195, column: 17, scope: !3182)
!3185 = !DILocation(line: 1196, column: 17, scope: !3182)
!3186 = !DILocation(line: 1195, column: 17, scope: !3128)
!3187 = !DILocation(line: 1198, column: 17, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3128, file: !1, line: 1198, column: 17)
!3189 = !DILocation(line: 1198, column: 24, scope: !3188)
!3190 = !DILocation(line: 1198, column: 17, scope: !3128)
!3191 = !DILocation(line: 1199, column: 17, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 1198, column: 29)
!3193 = !DILocation(line: 1200, column: 17, scope: !3192)
!3194 = !DILocation(line: 1168, column: 14, scope: !3113)
!3195 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 1206, column: 17, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !1, line: 1206, column: 17)
!3198 = distinct !DILexicalBlock(scope: !3129, file: !1, line: 1204, column: 16)
!3199 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !3196)
!3200 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !3196)
!3201 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !3196)
!3202 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !3196)
!3203 = !DILocation(line: 1206, column: 64, scope: !3197)
!3204 = !DILocation(line: 1208, column: 13, scope: !3198)
!3205 = !DILocation(line: 1214, column: 13, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1214, column: 9)
!3207 = !DILocation(line: 1178, column: 26, scope: !3124)
!3208 = distinct !{!3208, !3146, !3209}
!3209 = !DILocation(line: 1210, column: 5, scope: !3125)
!3210 = !DILocation(line: 1211, column: 22, scope: !3113)
!3211 = !DILocation(line: 1211, column: 9, scope: !3113)
!3212 = !DILocation(line: 1214, column: 18, scope: !3206)
!3213 = !DILocation(line: 1214, column: 31, scope: !3206)
!3214 = !DILocation(line: 1214, column: 59, scope: !3206)
!3215 = !DILocation(line: 1214, column: 64, scope: !3206)
!3216 = !DILocation(line: 1214, column: 35, scope: !3206)
!3217 = !DILocation(line: 1215, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3206, file: !1, line: 1214, column: 70)
!3219 = !DILocation(line: 1216, column: 9, scope: !3218)
!3220 = !DILocation(line: 1222, column: 49, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1222, column: 9)
!3222 = !DILocation(line: 1222, column: 46, scope: !3221)
!3223 = !DILocation(line: 1058, column: 45, scope: !2861, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 1222, column: 14, scope: !3221)
!3225 = !DILocation(line: 1058, column: 54, scope: !2861, inlinedAt: !3224)
!3226 = !DILocation(line: 1059, column: 33, scope: !2861, inlinedAt: !3224)
!3227 = !DILocation(line: 1059, column: 15, scope: !2861, inlinedAt: !3224)
!3228 = !DILocation(line: 1059, column: 11, scope: !2861, inlinedAt: !3224)
!3229 = !DILocation(line: 1060, column: 11, scope: !2874, inlinedAt: !3224)
!3230 = !DILocation(line: 1060, column: 9, scope: !2861, inlinedAt: !3224)
!3231 = !DILocation(line: 1064, column: 16, scope: !2882, inlinedAt: !3224)
!3232 = !DILocation(line: 1064, column: 21, scope: !2882, inlinedAt: !3224)
!3233 = !DILocation(line: 1064, column: 13, scope: !2883, inlinedAt: !3224)
!3234 = !DILocation(line: 1065, column: 31, scope: !2887, inlinedAt: !3224)
!3235 = !DILocation(line: 1065, column: 13, scope: !2887, inlinedAt: !3224)
!3236 = !DILocation(line: 1220, column: 11, scope: !3113)
!3237 = !DILocation(line: 1222, column: 9, scope: !3113)
!3238 = !DILocation(line: 1061, column: 13, scope: !2877, inlinedAt: !3224)
!3239 = !DILocation(line: 1062, column: 18, scope: !2877, inlinedAt: !3224)
!3240 = !DILocation(line: 1062, column: 9, scope: !2877, inlinedAt: !3224)
!3241 = !DILocation(line: 1222, column: 59, scope: !3221)
!3242 = !DILocation(line: 1223, column: 12, scope: !3113)
!3243 = !DILocation(line: 1221, column: 13, scope: !3113)
!3244 = !DILocation(line: 1226, column: 31, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1226, column: 9)
!3246 = !DILocation(line: 1226, column: 35, scope: !3245)
!3247 = !DILocation(line: 1226, column: 50, scope: !3245)
!3248 = !DILocation(line: 1226, column: 54, scope: !3245)
!3249 = !DILocation(line: 1226, column: 65, scope: !3245)
!3250 = !DILocation(line: 1226, column: 46, scope: !3245)
!3251 = !DILocation(line: 1227, column: 14, scope: !3245)
!3252 = !DILocation(line: 1226, column: 9, scope: !3245)
!3253 = !DILocation(line: 1228, column: 9, scope: !3245)
!3254 = !DILocation(line: 1226, column: 9, scope: !3113)
!3255 = !DILocation(line: 1230, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3245, file: !1, line: 1229, column: 5)
!3257 = !DILocation(line: 1232, column: 9, scope: !3256)
!3258 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1234, column: 5, scope: !3113)
!3260 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !3259)
!3261 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !3259)
!3262 = !DILocation(line: 780, column: 52, scope: !2034, inlinedAt: !3259)
!3263 = !DILocation(line: 780, column: 59, scope: !2034, inlinedAt: !3259)
!3264 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !3259)
!3265 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !3259)
!3266 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !3259)
!3267 = !DILocation(line: 1236, column: 26, scope: !3113)
!3268 = !DILocation(line: 1236, column: 32, scope: !3113)
!3269 = !DILocation(line: 1236, column: 29, scope: !3113)
!3270 = !DILocation(line: 1236, column: 5, scope: !3113)
!3271 = !DILocation(line: 1237, column: 49, scope: !3113)
!3272 = !DILocation(line: 1237, column: 46, scope: !3113)
!3273 = !DILocation(line: 1237, column: 60, scope: !3113)
!3274 = !DILocation(line: 1237, column: 64, scope: !3113)
!3275 = !DILocation(line: 1237, column: 5, scope: !3113)
!3276 = !DILocation(line: 1238, column: 17, scope: !3113)
!3277 = !{!546, !266, i64 2080}
!3278 = !DILocation(line: 1240, column: 9, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1240, column: 9)
!3280 = !DILocation(line: 1240, column: 16, scope: !3279)
!3281 = !DILocation(line: 1240, column: 9, scope: !3113)
!3282 = !DILocation(line: 1242, column: 13, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 1242, column: 13)
!3284 = distinct !DILexicalBlock(scope: !3279, file: !1, line: 1240, column: 22)
!3285 = !DILocation(line: 1242, column: 13, scope: !3284)
!3286 = !DILocation(line: 1243, column: 58, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !1, line: 1242, column: 57)
!3288 = !DILocation(line: 1243, column: 55, scope: !3287)
!3289 = !DILocation(line: 1243, column: 69, scope: !3287)
!3290 = !DILocation(line: 1243, column: 73, scope: !3287)
!3291 = !DILocation(line: 1243, column: 13, scope: !3287)
!3292 = !DILocation(line: 1244, column: 9, scope: !3287)
!3293 = !DILocation(line: 1245, column: 13, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 1245, column: 13)
!3295 = !DILocation(line: 1245, column: 13, scope: !3284)
!3296 = !DILocation(line: 1155, column: 40, scope: !3090, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 1245, column: 28, scope: !3294)
!3298 = !DILocation(line: 1155, column: 51, scope: !3090, inlinedAt: !3297)
!3299 = !DILocation(line: 1155, column: 58, scope: !3090, inlinedAt: !3297)
!3300 = !DILocation(line: 1156, column: 58, scope: !3090, inlinedAt: !3297)
!3301 = !DILocation(line: 1156, column: 24, scope: !3090, inlinedAt: !3297)
!3302 = !DILocation(line: 1156, column: 11, scope: !3090, inlinedAt: !3297)
!3303 = !DILocation(line: 1157, column: 23, scope: !3090, inlinedAt: !3297)
!3304 = !DILocation(line: 1157, column: 11, scope: !3090, inlinedAt: !3297)
!3305 = !DILocation(line: 1159, column: 5, scope: !3090, inlinedAt: !3297)
!3306 = !DILocation(line: 1160, column: 50, scope: !3090, inlinedAt: !3297)
!3307 = !DILocation(line: 1160, column: 5, scope: !3090, inlinedAt: !3297)
!3308 = !DILocation(line: 1162, column: 5, scope: !3090, inlinedAt: !3297)
!3309 = !DILocation(line: 1163, column: 5, scope: !3090, inlinedAt: !3297)
!3310 = !DILocation(line: 1245, column: 28, scope: !3294)
!3311 = !DILocation(line: 786, column: 42, scope: !2268, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1250, column: 19, scope: !3113)
!3313 = !DILocation(line: 787, column: 47, scope: !2268, inlinedAt: !3312)
!3314 = !DILocation(line: 788, column: 29, scope: !2268, inlinedAt: !3312)
!3315 = !DILocation(line: 788, column: 36, scope: !2268, inlinedAt: !3312)
!3316 = !DILocation(line: 787, column: 37, scope: !2268, inlinedAt: !3312)
!3317 = !DILocation(line: 787, column: 12, scope: !2268, inlinedAt: !3312)
!3318 = !DILocation(line: 1250, column: 11, scope: !3113)
!3319 = !DILocation(line: 1251, column: 5, scope: !3113)
!3320 = !DILocation(line: 1252, column: 5, scope: !3113)
!3321 = !DILocation(line: 1256, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3113, file: !1, line: 1256, column: 9)
!3323 = !DILocation(line: 1256, column: 9, scope: !3113)
!3324 = !DILocation(line: 1257, column: 29, scope: !3322)
!3325 = !DILocation(line: 1257, column: 36, scope: !3322)
!3326 = !DILocation(line: 1257, column: 33, scope: !3322)
!3327 = !DILocation(line: 1257, column: 9, scope: !3322)
!3328 = !DILocation(line: 1258, column: 1, scope: !3113)
!3329 = distinct !DISubprogram(name: "xrangeGenericCommand", scope: !1, file: !1, line: 1261, type: !3330, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !2037, !12}
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3346}
!3333 = !DILocalVariable(name: "c", arg: 1, scope: !3329, file: !1, line: 1261, type: !2037)
!3334 = !DILocalVariable(name: "rev", arg: 2, scope: !3329, file: !1, line: 1261, type: !12)
!3335 = !DILocalVariable(name: "o", scope: !3329, file: !1, line: 1262, type: !367)
!3336 = !DILocalVariable(name: "s", scope: !3329, file: !1, line: 1263, type: !69)
!3337 = !DILocalVariable(name: "startid", scope: !3329, file: !1, line: 1264, type: !95)
!3338 = !DILocalVariable(name: "endid", scope: !3329, file: !1, line: 1264, type: !95)
!3339 = !DILocalVariable(name: "count", scope: !3329, file: !1, line: 1265, type: !246)
!3340 = !DILocalVariable(name: "startarg", scope: !3329, file: !1, line: 1266, type: !367)
!3341 = !DILocalVariable(name: "endarg", scope: !3329, file: !1, line: 1267, type: !367)
!3342 = !DILocalVariable(name: "j", scope: !3343, file: !1, line: 1274, type: !12)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 1274, column: 9)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !1, line: 1273, column: 22)
!3345 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 1273, column: 9)
!3346 = !DILocalVariable(name: "additional", scope: !3347, file: !1, line: 1275, type: !12)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !1, line: 1274, column: 43)
!3348 = distinct !DILexicalBlock(scope: !3343, file: !1, line: 1274, column: 9)
!3349 = !DILocation(line: 1261, column: 35, scope: !3329)
!3350 = !DILocation(line: 1261, column: 42, scope: !3329)
!3351 = !DILocation(line: 1264, column: 5, scope: !3329)
!3352 = !DILocation(line: 1265, column: 5, scope: !3329)
!3353 = !DILocation(line: 1265, column: 15, scope: !3329)
!3354 = !DILocation(line: 1266, column: 22, scope: !3329)
!3355 = !DILocation(line: 0, scope: !3329)
!3356 = !DILocation(line: 1266, column: 28, scope: !3329)
!3357 = !DILocation(line: 1266, column: 41, scope: !3329)
!3358 = !DILocation(line: 1266, column: 11, scope: !3329)
!3359 = !DILocation(line: 1267, column: 20, scope: !3329)
!3360 = !DILocation(line: 1267, column: 11, scope: !3329)
!3361 = !DILocation(line: 1264, column: 14, scope: !3329)
!3362 = !DILocation(line: 1142, column: 34, scope: !3064, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 1269, column: 9, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 1269, column: 9)
!3365 = !DILocation(line: 1142, column: 43, scope: !3064, inlinedAt: !3363)
!3366 = !DILocation(line: 1142, column: 56, scope: !3064, inlinedAt: !3363)
!3367 = !DILocation(line: 1142, column: 69, scope: !3064, inlinedAt: !3363)
!3368 = !DILocation(line: 1143, column: 12, scope: !3064, inlinedAt: !3363)
!3369 = !DILocation(line: 1269, column: 53, scope: !3364)
!3370 = !DILocation(line: 1269, column: 9, scope: !3329)
!3371 = !DILocation(line: 1264, column: 23, scope: !3329)
!3372 = !DILocation(line: 1142, column: 34, scope: !3064, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1270, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 1270, column: 9)
!3375 = !DILocation(line: 1142, column: 43, scope: !3064, inlinedAt: !3373)
!3376 = !DILocation(line: 1142, column: 56, scope: !3064, inlinedAt: !3373)
!3377 = !DILocation(line: 1142, column: 69, scope: !3064, inlinedAt: !3373)
!3378 = !DILocation(line: 1143, column: 12, scope: !3064, inlinedAt: !3373)
!3379 = !DILocation(line: 1270, column: 58, scope: !3374)
!3380 = !DILocation(line: 1270, column: 9, scope: !3329)
!3381 = !DILocation(line: 1273, column: 12, scope: !3345)
!3382 = !DILocation(line: 1273, column: 17, scope: !3345)
!3383 = !DILocation(line: 1273, column: 9, scope: !3329)
!3384 = !DILocation(line: 1274, column: 18, scope: !3343)
!3385 = !DILocation(line: 1275, column: 39, scope: !3347)
!3386 = !DILocation(line: 1275, column: 17, scope: !3347)
!3387 = !DILocation(line: 1276, column: 31, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3347, file: !1, line: 1276, column: 17)
!3389 = !DILocation(line: 1276, column: 28, scope: !3388)
!3390 = !DILocation(line: 1276, column: 40, scope: !3388)
!3391 = !DILocation(line: 1276, column: 17, scope: !3388)
!3392 = !DILocation(line: 1276, column: 53, scope: !3388)
!3393 = !DILocation(line: 1276, column: 72, scope: !3388)
!3394 = !DILocation(line: 1276, column: 58, scope: !3388)
!3395 = !DILocation(line: 1277, column: 61, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 1277, column: 21)
!3397 = distinct !DILexicalBlock(scope: !3388, file: !1, line: 1276, column: 78)
!3398 = !DILocation(line: 1277, column: 52, scope: !3396)
!3399 = !DILocation(line: 1277, column: 21, scope: !3396)
!3400 = !DILocation(line: 1278, column: 21, scope: !3396)
!3401 = !DILocation(line: 1277, column: 21, scope: !3397)
!3402 = !DILocation(line: 1279, column: 21, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 1279, column: 21)
!3404 = !DILocation(line: 1279, column: 27, scope: !3403)
!3405 = !DILocation(line: 1279, column: 21, scope: !3397)
!3406 = !DILocation(line: 1279, column: 38, scope: !3403)
!3407 = !DILocation(line: 1279, column: 32, scope: !3403)
!3408 = !DILocation(line: 1282, column: 35, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3388, file: !1, line: 1281, column: 20)
!3410 = !{!2827, !110, i64 128}
!3411 = !DILocation(line: 1282, column: 17, scope: !3409)
!3412 = !DILocation(line: 1283, column: 17, scope: !3409)
!3413 = !DILocation(line: 1274, column: 39, scope: !3348)
!3414 = !DILocation(line: 1274, column: 32, scope: !3348)
!3415 = !DILocation(line: 1274, column: 27, scope: !3348)
!3416 = !DILocation(line: 1274, column: 9, scope: !3343)
!3417 = distinct !{!3417, !3416, !3418}
!3418 = !DILocation(line: 1285, column: 9, scope: !3343)
!3419 = !DILocation(line: 1289, column: 40, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 1289, column: 9)
!3421 = !DILocation(line: 1289, column: 37, scope: !3420)
!3422 = !DILocation(line: 1289, column: 55, scope: !3420)
!3423 = !{!2827, !110, i64 104}
!3424 = !DILocation(line: 1289, column: 14, scope: !3420)
!3425 = !DILocation(line: 1262, column: 11, scope: !3329)
!3426 = !DILocation(line: 1289, column: 72, scope: !3420)
!3427 = !DILocation(line: 1290, column: 9, scope: !3420)
!3428 = !DILocation(line: 1290, column: 12, scope: !3420)
!3429 = !DILocation(line: 1289, column: 9, scope: !3329)
!3430 = !DILocation(line: 1291, column: 12, scope: !3329)
!3431 = !DILocation(line: 1263, column: 13, scope: !3329)
!3432 = !DILocation(line: 1293, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 1293, column: 9)
!3434 = !DILocation(line: 1293, column: 9, scope: !3329)
!3435 = !DILocation(line: 1294, column: 27, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !1, line: 1293, column: 21)
!3437 = !DILocation(line: 1294, column: 9, scope: !3436)
!3438 = !DILocation(line: 1295, column: 5, scope: !3436)
!3439 = !DILocation(line: 1296, column: 32, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1296, column: 13)
!3441 = distinct !DILexicalBlock(scope: !3433, file: !1, line: 1295, column: 12)
!3442 = !DILocation(line: 1296, column: 26, scope: !3440)
!3443 = !DILocation(line: 1297, column: 50, scope: !3441)
!3444 = !DILocation(line: 1297, column: 9, scope: !3441)
!3445 = !DILocation(line: 1299, column: 1, scope: !3329)
!3446 = distinct !DISubprogram(name: "xrangeCommand", scope: !1, file: !1, line: 1302, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3447)
!3447 = !{!3448}
!3448 = !DILocalVariable(name: "c", arg: 1, scope: !3446, file: !1, line: 1302, type: !2037)
!3449 = !DILocation(line: 1302, column: 28, scope: !3446)
!3450 = !DILocation(line: 1303, column: 5, scope: !3446)
!3451 = !DILocation(line: 1304, column: 1, scope: !3446)
!3452 = distinct !DISubprogram(name: "xrevrangeCommand", scope: !1, file: !1, line: 1307, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3453)
!3453 = !{!3454}
!3454 = !DILocalVariable(name: "c", arg: 1, scope: !3452, file: !1, line: 1307, type: !2037)
!3455 = !DILocation(line: 1307, column: 31, scope: !3452)
!3456 = !DILocation(line: 1308, column: 5, scope: !3452)
!3457 = !DILocation(line: 1309, column: 1, scope: !3452)
!3458 = distinct !DISubprogram(name: "xlenCommand", scope: !1, file: !1, line: 1312, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3459)
!3459 = !{!3460, !3461, !3462}
!3460 = !DILocalVariable(name: "c", arg: 1, scope: !3458, file: !1, line: 1312, type: !2037)
!3461 = !DILocalVariable(name: "o", scope: !3458, file: !1, line: 1313, type: !367)
!3462 = !DILocalVariable(name: "s", scope: !3458, file: !1, line: 1316, type: !69)
!3463 = !DILocation(line: 1312, column: 26, scope: !3458)
!3464 = !DILocation(line: 1314, column: 40, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3458, file: !1, line: 1314, column: 9)
!3466 = !DILocation(line: 1314, column: 37, scope: !3465)
!3467 = !DILocation(line: 1314, column: 55, scope: !3465)
!3468 = !{!2827, !110, i64 32}
!3469 = !DILocation(line: 1314, column: 14, scope: !3465)
!3470 = !DILocation(line: 1313, column: 11, scope: !3458)
!3471 = !DILocation(line: 1314, column: 63, scope: !3465)
!3472 = !DILocation(line: 1315, column: 9, scope: !3465)
!3473 = !DILocation(line: 1315, column: 12, scope: !3465)
!3474 = !DILocation(line: 1314, column: 9, scope: !3458)
!3475 = !DILocation(line: 1316, column: 20, scope: !3458)
!3476 = !DILocation(line: 1316, column: 13, scope: !3458)
!3477 = !DILocation(line: 1317, column: 27, scope: !3458)
!3478 = !DILocation(line: 1317, column: 5, scope: !3458)
!3479 = !DILocation(line: 1318, column: 1, scope: !3458)
!3480 = distinct !DISubprogram(name: "xreadCommand", scope: !1, file: !1, line: 1328, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3481)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3492, !3493, !3495, !3496, !3497, !3498, !3500, !3503, !3504, !3506, !3509, !3510, !3511, !3512, !3517, !3518, !3519, !3521, !3524, !3525, !3526, !3527, !3528, !3533, !3536, !3537, !3538}
!3482 = !DILocalVariable(name: "c", arg: 1, scope: !3480, file: !1, line: 1328, type: !2037)
!3483 = !DILocalVariable(name: "timeout", scope: !3480, file: !1, line: 1329, type: !246)
!3484 = !DILocalVariable(name: "count", scope: !3480, file: !1, line: 1330, type: !246)
!3485 = !DILocalVariable(name: "streams_count", scope: !3480, file: !1, line: 1331, type: !12)
!3486 = !DILocalVariable(name: "streams_arg", scope: !3480, file: !1, line: 1332, type: !12)
!3487 = !DILocalVariable(name: "noack", scope: !3480, file: !1, line: 1333, type: !12)
!3488 = !DILocalVariable(name: "static_ids", scope: !3480, file: !1, line: 1335, type: !3489)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1024, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 8)
!3492 = !DILocalVariable(name: "ids", scope: !3480, file: !1, line: 1336, type: !167)
!3493 = !DILocalVariable(name: "groups", scope: !3480, file: !1, line: 1337, type: !3494)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3495 = !DILocalVariable(name: "xreadgroup", scope: !3480, file: !1, line: 1338, type: !12)
!3496 = !DILocalVariable(name: "groupname", scope: !3480, file: !1, line: 1339, type: !367)
!3497 = !DILocalVariable(name: "consumername", scope: !3480, file: !1, line: 1340, type: !367)
!3498 = !DILocalVariable(name: "i", scope: !3499, file: !1, line: 1343, type: !12)
!3499 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1343, column: 5)
!3500 = !DILocalVariable(name: "moreargs", scope: !3501, file: !1, line: 1344, type: !12)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 1343, column: 39)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 1343, column: 5)
!3503 = !DILocalVariable(name: "o", scope: !3501, file: !1, line: 1345, type: !10)
!3504 = !DILocalVariable(name: "i", scope: !3505, file: !1, line: 1406, type: !12)
!3505 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1406, column: 5)
!3506 = !DILocalVariable(name: "id_idx", scope: !3507, file: !1, line: 1410, type: !12)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !1, line: 1406, column: 65)
!3508 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 1406, column: 5)
!3509 = !DILocalVariable(name: "key", scope: !3507, file: !1, line: 1411, type: !367)
!3510 = !DILocalVariable(name: "o", scope: !3507, file: !1, line: 1412, type: !367)
!3511 = !DILocalVariable(name: "group", scope: !3507, file: !1, line: 1414, type: !144)
!3512 = !DILocalVariable(name: "s", scope: !3513, file: !1, line: 1441, type: !69)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !1, line: 1440, column: 20)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !1, line: 1440, column: 17)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !1, line: 1431, column: 47)
!3516 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1431, column: 13)
!3517 = !DILocalVariable(name: "arraylen", scope: !3480, file: !1, line: 1467, type: !13)
!3518 = !DILocalVariable(name: "arraylen_ptr", scope: !3480, file: !1, line: 1468, type: !7)
!3519 = !DILocalVariable(name: "i", scope: !3520, file: !1, line: 1469, type: !12)
!3520 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1469, column: 5)
!3521 = !DILocalVariable(name: "o", scope: !3522, file: !1, line: 1470, type: !367)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !1, line: 1469, column: 45)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 1469, column: 5)
!3524 = !DILocalVariable(name: "s", scope: !3522, file: !1, line: 1472, type: !69)
!3525 = !DILocalVariable(name: "gt", scope: !3522, file: !1, line: 1473, type: !167)
!3526 = !DILocalVariable(name: "serve_synchronously", scope: !3522, file: !1, line: 1474, type: !12)
!3527 = !DILocalVariable(name: "serve_history", scope: !3522, file: !1, line: 1475, type: !12)
!3528 = !DILocalVariable(name: "last", scope: !3529, file: !1, line: 1492, type: !167)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !1, line: 1488, column: 20)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !1, line: 1483, column: 17)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 1479, column: 21)
!3532 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 1479, column: 13)
!3533 = !DILocalVariable(name: "start", scope: !3534, file: !1, line: 1512, type: !95)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !1, line: 1506, column: 34)
!3535 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 1506, column: 13)
!3536 = !DILocalVariable(name: "consumer", scope: !3534, file: !1, line: 1519, type: !2290)
!3537 = !DILocalVariable(name: "spi", scope: !3534, file: !1, line: 1522, type: !2478)
!3538 = !DILocalVariable(name: "flags", scope: !3534, file: !1, line: 1523, type: !12)
!3539 = !DILocation(line: 1328, column: 27, scope: !3480)
!3540 = !DILocation(line: 1329, column: 5, scope: !3480)
!3541 = !DILocation(line: 1329, column: 15, scope: !3480)
!3542 = !DILocation(line: 1330, column: 5, scope: !3480)
!3543 = !DILocation(line: 1330, column: 15, scope: !3480)
!3544 = !DILocation(line: 1331, column: 9, scope: !3480)
!3545 = !DILocation(line: 1332, column: 9, scope: !3480)
!3546 = !DILocation(line: 1333, column: 9, scope: !3480)
!3547 = !DILocation(line: 1335, column: 5, scope: !3480)
!3548 = !DILocation(line: 1335, column: 14, scope: !3480)
!3549 = !DILocation(line: 1336, column: 21, scope: !3480)
!3550 = !DILocation(line: 1336, column: 15, scope: !3480)
!3551 = !DILocation(line: 1337, column: 16, scope: !3480)
!3552 = !DILocation(line: 1338, column: 32, scope: !3480)
!3553 = !DILocation(line: 1338, column: 29, scope: !3480)
!3554 = !DILocation(line: 1338, column: 41, scope: !3480)
!3555 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 1338, column: 22, scope: !3480)
!3557 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !3556)
!3558 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !3556)
!3559 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !3556)
!3560 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !3556)
!3561 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !3556)
!3562 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !3556)
!3563 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !3556)
!3564 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !3556)
!3565 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !3556)
!3566 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !3556)
!3567 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !3556)
!3568 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !3556)
!3569 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !3556)
!3570 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !3556)
!3571 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !3556)
!3572 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !3556)
!3573 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !3556)
!3574 = !DILocation(line: 0, scope: !660, inlinedAt: !3556)
!3575 = !DILocation(line: 1338, column: 46, scope: !3480)
!3576 = !DILocation(line: 1339, column: 11, scope: !3480)
!3577 = !DILocation(line: 1340, column: 11, scope: !3480)
!3578 = !DILocation(line: 1343, column: 14, scope: !3499)
!3579 = !DILocation(line: 1343, column: 28, scope: !3502)
!3580 = !DILocation(line: 1343, column: 23, scope: !3502)
!3581 = !DILocation(line: 1343, column: 5, scope: !3499)
!3582 = !DILocation(line: 1345, column: 22, scope: !3501)
!3583 = !DILocation(line: 1344, column: 33, scope: !3501)
!3584 = !DILocation(line: 1344, column: 13, scope: !3501)
!3585 = !DILocation(line: 1345, column: 19, scope: !3501)
!3586 = !DILocation(line: 1345, column: 31, scope: !3501)
!3587 = !DILocation(line: 1345, column: 15, scope: !3501)
!3588 = !DILocation(line: 1346, column: 14, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 1346, column: 13)
!3590 = !DILocation(line: 1346, column: 39, scope: !3589)
!3591 = !DILocation(line: 1346, column: 36, scope: !3589)
!3592 = !DILocation(line: 1347, column: 14, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3589, file: !1, line: 1346, column: 49)
!3594 = !DILocation(line: 1348, column: 47, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3593, file: !1, line: 1348, column: 17)
!3596 = !DILocation(line: 1348, column: 17, scope: !3595)
!3597 = !DILocation(line: 1349, column: 36, scope: !3595)
!3598 = !DILocation(line: 1348, column: 17, scope: !3593)
!3599 = !DILocation(line: 1350, column: 21, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3589, file: !1, line: 1350, column: 20)
!3601 = !DILocation(line: 1350, column: 43, scope: !3600)
!3602 = !DILocation(line: 1351, column: 14, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 1350, column: 56)
!3604 = !DILocation(line: 1352, column: 48, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3603, file: !1, line: 1352, column: 17)
!3606 = !DILocation(line: 1352, column: 17, scope: !3605)
!3607 = !DILocation(line: 1352, column: 72, scope: !3605)
!3608 = !DILocation(line: 1352, column: 17, scope: !3603)
!3609 = !DILocation(line: 1354, column: 17, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3603, file: !1, line: 1354, column: 17)
!3611 = !DILocation(line: 1354, column: 23, scope: !3610)
!3612 = !DILocation(line: 1354, column: 17, scope: !3603)
!3613 = !DILocation(line: 1354, column: 34, scope: !3610)
!3614 = !DILocation(line: 1354, column: 28, scope: !3610)
!3615 = !DILocation(line: 1355, column: 21, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 1355, column: 20)
!3617 = !DILocation(line: 1355, column: 45, scope: !3616)
!3618 = !DILocation(line: 1356, column: 28, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !1, line: 1355, column: 58)
!3620 = !DILocation(line: 1357, column: 37, scope: !3619)
!3621 = !DILocation(line: 1358, column: 37, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !1, line: 1358, column: 17)
!3623 = !DILocation(line: 1358, column: 17, scope: !3619)
!3624 = !DILocation(line: 1359, column: 17, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !1, line: 1358, column: 43)
!3626 = !DILocation(line: 1362, column: 17, scope: !3625)
!3627 = !DILocation(line: 1366, column: 21, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3616, file: !1, line: 1366, column: 20)
!3629 = !DILocation(line: 1366, column: 55, scope: !3628)
!3630 = !DILocation(line: 1366, column: 43, scope: !3628)
!3631 = !DILocation(line: 1367, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1366, column: 61)
!3633 = !DILocation(line: 1368, column: 17, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !1, line: 1367, column: 30)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !1, line: 1367, column: 17)
!3636 = !DILocation(line: 1370, column: 17, scope: !3634)
!3637 = !DILocation(line: 1372, column: 34, scope: !3632)
!3638 = !DILocation(line: 1372, column: 25, scope: !3632)
!3639 = !DILocation(line: 1373, column: 37, scope: !3632)
!3640 = !DILocation(line: 1373, column: 28, scope: !3632)
!3641 = !DILocation(line: 1375, column: 9, scope: !3632)
!3642 = !DILocation(line: 1375, column: 21, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1375, column: 20)
!3644 = !DILocation(line: 1375, column: 20, scope: !3628)
!3645 = !DILocation(line: 1376, column: 17, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1375, column: 44)
!3647 = !DILocation(line: 1377, column: 17, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !1, line: 1376, column: 30)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !1, line: 1376, column: 17)
!3650 = !DILocation(line: 1379, column: 17, scope: !3648)
!3651 = !DILocation(line: 1383, column: 31, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1382, column: 16)
!3653 = !DILocation(line: 1383, column: 13, scope: !3652)
!3654 = !DILocation(line: 1384, column: 13, scope: !3652)
!3655 = !DILocation(line: 0, scope: !3499)
!3656 = !DILocation(line: 0, scope: !3480)
!3657 = !DILocation(line: 0, scope: !3646)
!3658 = !DILocation(line: 1343, column: 35, scope: !3502)
!3659 = distinct !{!3659, !3581, !3660}
!3660 = !DILocation(line: 1386, column: 5, scope: !3499)
!3661 = !DILocation(line: 1364, column: 27, scope: !3619)
!3662 = !DILocation(line: 1389, column: 21, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1389, column: 9)
!3664 = !DILocation(line: 1389, column: 9, scope: !3480)
!3665 = !DILocation(line: 1390, column: 27, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1389, column: 27)
!3667 = !DILocation(line: 1390, column: 9, scope: !3666)
!3668 = !DILocation(line: 1391, column: 9, scope: !3666)
!3669 = !DILocation(line: 1396, column: 33, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1396, column: 9)
!3671 = !DILocation(line: 1396, column: 20, scope: !3670)
!3672 = !DILocation(line: 1397, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3670, file: !1, line: 1396, column: 42)
!3674 = !DILocation(line: 1398, column: 9, scope: !3673)
!3675 = !DILocation(line: 1402, column: 23, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1402, column: 9)
!3677 = !DILocation(line: 1402, column: 9, scope: !3480)
!3678 = !DILocation(line: 1403, column: 40, scope: !3676)
!3679 = !DILocation(line: 1403, column: 39, scope: !3676)
!3680 = !DILocation(line: 1403, column: 15, scope: !3676)
!3681 = !DILocation(line: 1403, column: 9, scope: !3676)
!3682 = !DILocation(line: 1404, column: 9, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1404, column: 9)
!3684 = !DILocation(line: 1404, column: 9, scope: !3480)
!3685 = !DILocation(line: 1404, column: 55, scope: !3683)
!3686 = !DILocation(line: 1404, column: 54, scope: !3683)
!3687 = !DILocation(line: 1404, column: 29, scope: !3683)
!3688 = !DILocation(line: 1404, column: 20, scope: !3683)
!3689 = !DILocation(line: 1406, column: 30, scope: !3505)
!3690 = !DILocation(line: 1406, column: 14, scope: !3505)
!3691 = !DILocation(line: 1406, column: 54, scope: !3508)
!3692 = !DILocation(line: 1406, column: 49, scope: !3508)
!3693 = !DILocation(line: 1406, column: 5, scope: !3505)
!3694 = !DILocation(line: 1410, column: 38, scope: !3507)
!3695 = !DILocation(line: 1410, column: 13, scope: !3507)
!3696 = !DILocation(line: 1411, column: 24, scope: !3507)
!3697 = !DILocation(line: 1411, column: 30, scope: !3507)
!3698 = !DILocation(line: 1411, column: 21, scope: !3507)
!3699 = !DILocation(line: 1411, column: 15, scope: !3507)
!3700 = !DILocation(line: 1412, column: 36, scope: !3507)
!3701 = !DILocation(line: 1412, column: 19, scope: !3507)
!3702 = !DILocation(line: 1412, column: 15, scope: !3507)
!3703 = !DILocation(line: 1413, column: 13, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1413, column: 13)
!3705 = !DILocation(line: 1413, column: 15, scope: !3704)
!3706 = !DILocation(line: 1413, column: 18, scope: !3704)
!3707 = !DILocation(line: 1413, column: 13, scope: !3507)
!3708 = !DILocation(line: 1414, column: 19, scope: !3507)
!3709 = !DILocation(line: 1418, column: 13, scope: !3507)
!3710 = !DILocation(line: 1419, column: 19, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !1, line: 1419, column: 17)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !1, line: 1418, column: 24)
!3713 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1418, column: 13)
!3714 = !DILocation(line: 1419, column: 27, scope: !3711)
!3715 = !DILocation(line: 1420, column: 44, scope: !3711)
!3716 = !DILocation(line: 1420, column: 59, scope: !3711)
!3717 = !DILocalVariable(name: "s", arg: 1, scope: !3718, file: !1, line: 1643, type: !69)
!3718 = distinct !DISubprogram(name: "streamLookupCG", scope: !1, file: !1, line: 1643, type: !3719, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!144, !69, !436}
!3721 = !{!3717, !3722, !3723}
!3722 = !DILocalVariable(name: "groupname", arg: 2, scope: !3718, file: !1, line: 1643, type: !436)
!3723 = !DILocalVariable(name: "cg", scope: !3718, file: !1, line: 1645, type: !144)
!3724 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 1420, column: 26, scope: !3711)
!3726 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !3725)
!3727 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !3725)
!3728 = distinct !DILexicalBlock(scope: !3718, file: !1, line: 1644, column: 9)
!3729 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !3725)
!3730 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !3725)
!3731 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !3725)
!3733 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !3732)
!3734 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !3732)
!3735 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !3732)
!3736 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !3732)
!3737 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !3732)
!3738 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !3732)
!3739 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !3732)
!3740 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !3732)
!3741 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !3732)
!3742 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !3732)
!3743 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !3732)
!3744 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !3732)
!3745 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !3732)
!3746 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !3732)
!3747 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !3732)
!3748 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !3732)
!3749 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !3732)
!3750 = !DILocation(line: 0, scope: !660, inlinedAt: !3732)
!3751 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !3725)
!3752 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !3725)
!3753 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !3725)
!3754 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !3725)
!3755 = !DILocation(line: 1420, column: 65, scope: !3711)
!3756 = !DILocation(line: 1425, column: 49, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3711, file: !1, line: 1421, column: 13)
!3758 = !DILocation(line: 1425, column: 71, scope: !3757)
!3759 = !DILocation(line: 1422, column: 17, scope: !3757)
!3760 = !DILocation(line: 1426, column: 17, scope: !3757)
!3761 = !DILocation(line: 1428, column: 13, scope: !3712)
!3762 = !DILocation(line: 1428, column: 28, scope: !3712)
!3763 = !DILocation(line: 1429, column: 9, scope: !3712)
!3764 = !DILocation(line: 1431, column: 23, scope: !3516)
!3765 = !DILocation(line: 1431, column: 20, scope: !3516)
!3766 = !DILocation(line: 1431, column: 32, scope: !3516)
!3767 = !DILocation(line: 1431, column: 13, scope: !3516)
!3768 = !DILocation(line: 1431, column: 41, scope: !3516)
!3769 = !DILocation(line: 1431, column: 13, scope: !3507)
!3770 = !DILocation(line: 1432, column: 17, scope: !3515)
!3771 = !DILocation(line: 1433, column: 17, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 1432, column: 29)
!3773 = distinct !DILexicalBlock(scope: !3515, file: !1, line: 1432, column: 17)
!3774 = !DILocation(line: 1438, column: 17, scope: !3772)
!3775 = !DILocation(line: 1440, column: 17, scope: !3515)
!3776 = !DILocation(line: 1441, column: 32, scope: !3513)
!3777 = !DILocation(line: 1441, column: 25, scope: !3513)
!3778 = !DILocation(line: 1442, column: 17, scope: !3513)
!3779 = !DILocation(line: 1442, column: 34, scope: !3513)
!3780 = !DILocation(line: 1443, column: 13, scope: !3513)
!3781 = !DILocation(line: 1444, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3514, file: !1, line: 1443, column: 20)
!3783 = !DILocation(line: 1444, column: 29, scope: !3782)
!3784 = !DILocation(line: 1444, column: 32, scope: !3782)
!3785 = !DILocation(line: 1448, column: 30, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3516, file: !1, line: 1448, column: 20)
!3787 = !DILocation(line: 1448, column: 27, scope: !3786)
!3788 = !DILocation(line: 1448, column: 39, scope: !3786)
!3789 = !DILocation(line: 1448, column: 20, scope: !3786)
!3790 = !DILocation(line: 1448, column: 48, scope: !3786)
!3791 = !DILocation(line: 1448, column: 20, scope: !3516)
!3792 = !DILocation(line: 1449, column: 17, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3786, file: !1, line: 1448, column: 54)
!3794 = !DILocation(line: 1450, column: 17, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !1, line: 1449, column: 30)
!3796 = distinct !DILexicalBlock(scope: !3793, file: !1, line: 1449, column: 17)
!3797 = !DILocation(line: 1453, column: 17, scope: !3795)
!3798 = !DILocation(line: 1458, column: 13, scope: !3793)
!3799 = !DILocation(line: 1458, column: 25, scope: !3793)
!3800 = !DILocation(line: 1458, column: 28, scope: !3793)
!3801 = !DILocation(line: 1460, column: 13, scope: !3793)
!3802 = !DILocation(line: 1462, column: 45, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1462, column: 13)
!3804 = !DILocation(line: 1462, column: 42, scope: !3803)
!3805 = !DILocation(line: 1462, column: 56, scope: !3803)
!3806 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 1462, column: 13, scope: !3803)
!3808 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !3807)
!3809 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !3807)
!3810 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !3807)
!3811 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !3807)
!3812 = !DILocation(line: 1462, column: 67, scope: !3803)
!3813 = !DILocation(line: 1406, column: 61, scope: !3508)
!3814 = distinct !{!3814, !3693, !3815}
!3815 = !DILocation(line: 1464, column: 5, scope: !3505)
!3816 = !DILocation(line: 1469, column: 14, scope: !3520)
!3817 = !DILocation(line: 1468, column: 11, scope: !3480)
!3818 = !DILocation(line: 1467, column: 12, scope: !3480)
!3819 = !DILocation(line: 1469, column: 23, scope: !3523)
!3820 = !DILocation(line: 1469, column: 5, scope: !3520)
!3821 = !DILocation(line: 1534, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1534, column: 9)
!3823 = !DILocation(line: 1534, column: 9, scope: !3480)
!3824 = !DILocation(line: 1470, column: 36, scope: !3522)
!3825 = !DILocation(line: 1470, column: 42, scope: !3522)
!3826 = !DILocation(line: 1470, column: 58, scope: !3522)
!3827 = !DILocation(line: 1470, column: 39, scope: !3522)
!3828 = !DILocation(line: 1470, column: 19, scope: !3522)
!3829 = !DILocation(line: 1470, column: 15, scope: !3522)
!3830 = !DILocation(line: 1471, column: 15, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3522, file: !1, line: 1471, column: 13)
!3832 = !DILocation(line: 1471, column: 13, scope: !3522)
!3833 = !DILocation(line: 1472, column: 24, scope: !3522)
!3834 = !DILocation(line: 1472, column: 17, scope: !3522)
!3835 = !DILocation(line: 1473, column: 27, scope: !3522)
!3836 = !DILocation(line: 1473, column: 19, scope: !3522)
!3837 = !DILocation(line: 1474, column: 13, scope: !3522)
!3838 = !DILocation(line: 1475, column: 13, scope: !3522)
!3839 = !DILocation(line: 1479, column: 13, scope: !3522)
!3840 = !DILocation(line: 1483, column: 21, scope: !3530)
!3841 = !DILocation(line: 1483, column: 24, scope: !3530)
!3842 = !DILocation(line: 1483, column: 38, scope: !3530)
!3843 = !DILocation(line: 1484, column: 21, scope: !3530)
!3844 = !DILocation(line: 1484, column: 25, scope: !3530)
!3845 = !DILocation(line: 1483, column: 17, scope: !3531)
!3846 = !DILocation(line: 1492, column: 35, scope: !3529)
!3847 = !DILocation(line: 1493, column: 24, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3529, file: !1, line: 1493, column: 21)
!3849 = !DILocation(line: 1493, column: 21, scope: !3848)
!3850 = !DILocation(line: 1493, column: 31, scope: !3848)
!3851 = !DILocation(line: 1492, column: 27, scope: !3529)
!3852 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 1493, column: 35, scope: !3848)
!3854 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !3853)
!3855 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !3853)
!3856 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !3853)
!3857 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !3853)
!3858 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !3853)
!3859 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !3853)
!3860 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !3853)
!3861 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !3853)
!3862 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !3853)
!3863 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !3853)
!3864 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !3853)
!3865 = !DILocation(line: 1495, column: 27, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3848, file: !1, line: 1493, column: 76)
!3867 = !DILocation(line: 1496, column: 17, scope: !3866)
!3868 = !DILocation(line: 1501, column: 20, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !1, line: 1501, column: 17)
!3870 = distinct !DILexicalBlock(scope: !3532, file: !1, line: 1498, column: 16)
!3871 = !DILocation(line: 1501, column: 17, scope: !3869)
!3872 = !DILocation(line: 1501, column: 27, scope: !3869)
!3873 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 1501, column: 31, scope: !3869)
!3875 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !3874)
!3876 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !3874)
!3877 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !3874)
!3878 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !3874)
!3879 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !3874)
!3880 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !3874)
!3881 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !3874)
!3882 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !3874)
!3883 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !3874)
!3884 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !3874)
!3885 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !3874)
!3886 = !DILocation(line: 0, scope: !3522)
!3887 = !DILocation(line: 1507, column: 21, scope: !3534)
!3888 = !DILocation(line: 1508, column: 26, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3534, file: !1, line: 1508, column: 17)
!3890 = !DILocation(line: 1508, column: 17, scope: !3534)
!3891 = !DILocation(line: 1508, column: 47, scope: !3889)
!3892 = !DILocation(line: 1508, column: 32, scope: !3889)
!3893 = !DILocation(line: 1512, column: 13, scope: !3534)
!3894 = !DILocation(line: 1512, column: 30, scope: !3534)
!3895 = !DILocation(line: 1513, column: 22, scope: !3534)
!3896 = !DILocation(line: 1517, column: 13, scope: !3534)
!3897 = !DILocation(line: 1518, column: 31, scope: !3534)
!3898 = !DILocation(line: 1518, column: 28, scope: !3534)
!3899 = !DILocation(line: 1518, column: 13, scope: !3534)
!3900 = !DILocation(line: 1519, column: 29, scope: !3534)
!3901 = !DILocation(line: 1520, column: 17, scope: !3534)
!3902 = !DILocation(line: 1520, column: 57, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3534, file: !1, line: 1520, column: 17)
!3904 = !DILocation(line: 1521, column: 71, scope: !3903)
!3905 = !DILocation(line: 1520, column: 36, scope: !3903)
!3906 = !DILocation(line: 1520, column: 25, scope: !3903)
!3907 = !DILocation(line: 0, scope: !3534)
!3908 = !DILocation(line: 1522, column: 13, scope: !3534)
!3909 = !DILocation(line: 1522, column: 38, scope: !3534)
!3910 = !DILocation(line: 1522, column: 35, scope: !3534)
!3911 = !DILocation(line: 1522, column: 34, scope: !3534)
!3912 = !DILocation(line: 1523, column: 17, scope: !3534)
!3913 = !DILocation(line: 1525, column: 17, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3534, file: !1, line: 1525, column: 17)
!3915 = !DILocation(line: 1525, column: 17, scope: !3534)
!3916 = !DILocation(line: 1526, column: 50, scope: !3534)
!3917 = !DILocation(line: 1527, column: 34, scope: !3534)
!3918 = !DILocation(line: 1527, column: 43, scope: !3534)
!3919 = !DILocation(line: 1512, column: 22, scope: !3534)
!3920 = !DILocation(line: 1522, column: 28, scope: !3534)
!3921 = !DILocation(line: 1526, column: 13, scope: !3534)
!3922 = !DILocation(line: 1529, column: 37, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3534, file: !1, line: 1529, column: 17)
!3924 = !DILocation(line: 1529, column: 25, scope: !3923)
!3925 = !DILocation(line: 1530, column: 9, scope: !3535)
!3926 = !DILocation(line: 1530, column: 9, scope: !3534)
!3927 = !DILocation(line: 0, scope: !3889)
!3928 = !DILocation(line: 1469, column: 41, scope: !3523)
!3929 = distinct !{!3929, !3820, !3930}
!3930 = !DILocation(line: 1531, column: 5, scope: !3520)
!3931 = !DILocation(line: 1535, column: 9, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3822, file: !1, line: 1534, column: 19)
!3933 = !DILocation(line: 1536, column: 9, scope: !3932)
!3934 = !DILocation(line: 1540, column: 9, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1540, column: 9)
!3936 = !DILocation(line: 1540, column: 17, scope: !3935)
!3937 = !DILocation(line: 1540, column: 9, scope: !3480)
!3938 = !DILocation(line: 1543, column: 16, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !1, line: 1543, column: 13)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 1540, column: 24)
!3941 = !{!2395, !518, i64 160}
!3942 = !DILocation(line: 1543, column: 22, scope: !3939)
!3943 = !DILocation(line: 1543, column: 13, scope: !3940)
!3944 = !DILocation(line: 1544, column: 31, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3939, file: !1, line: 1543, column: 38)
!3946 = !DILocation(line: 1544, column: 13, scope: !3945)
!3947 = !DILocation(line: 1545, column: 13, scope: !3945)
!3948 = !DILocation(line: 1547, column: 44, scope: !3940)
!3949 = !DILocation(line: 1547, column: 48, scope: !3940)
!3950 = !DILocation(line: 1547, column: 9, scope: !3940)
!3951 = !DILocation(line: 1552, column: 31, scope: !3940)
!3952 = !DILocation(line: 1552, column: 17, scope: !3940)
!3953 = !DILocation(line: 1552, column: 29, scope: !3940)
!3954 = !{!2395, !113, i64 416}
!3955 = !DILocation(line: 1558, column: 13, scope: !3940)
!3956 = !DILocation(line: 1559, column: 13, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !1, line: 1558, column: 24)
!3958 = distinct !DILexicalBlock(scope: !3940, file: !1, line: 1558, column: 13)
!3959 = !DILocation(line: 1560, column: 13, scope: !3957)
!3960 = !DILocation(line: 1561, column: 21, scope: !3957)
!3961 = !DILocation(line: 1561, column: 33, scope: !3957)
!3962 = !{!2395, !110, i64 424}
!3963 = !DILocation(line: 1562, column: 21, scope: !3957)
!3964 = !DILocation(line: 1562, column: 36, scope: !3957)
!3965 = !{!2395, !110, i64 432}
!3966 = !DILocation(line: 1563, column: 21, scope: !3957)
!3967 = !DILocation(line: 1563, column: 39, scope: !3957)
!3968 = !{!2395, !518, i64 456}
!3969 = !DILocation(line: 1564, column: 9, scope: !3957)
!3970 = !DILocation(line: 1565, column: 21, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3958, file: !1, line: 1564, column: 16)
!3972 = !DILocation(line: 1565, column: 33, scope: !3971)
!3973 = !DILocation(line: 1573, column: 23, scope: !3480)
!3974 = !DILocation(line: 1573, column: 5, scope: !3480)
!3975 = !DILocation(line: 1580, column: 5, scope: !3480)
!3976 = !DILocation(line: 1581, column: 13, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1581, column: 9)
!3978 = !DILocation(line: 1581, column: 9, scope: !3480)
!3979 = !DILocation(line: 1581, column: 34, scope: !3977)
!3980 = !DILocation(line: 1581, column: 28, scope: !3977)
!3981 = !DILocation(line: 1582, column: 5, scope: !3480)
!3982 = !DILocation(line: 1583, column: 1, scope: !3480)
!3983 = !DILocation(line: 1643, column: 34, scope: !3718)
!3984 = !DILocation(line: 1643, column: 41, scope: !3718)
!3985 = !DILocation(line: 1644, column: 12, scope: !3728)
!3986 = !DILocation(line: 1644, column: 20, scope: !3728)
!3987 = !DILocation(line: 1644, column: 9, scope: !3718)
!3988 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 1646, column: 28, scope: !3718)
!3990 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !3989)
!3991 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !3989)
!3992 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !3989)
!3993 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !3989)
!3994 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !3989)
!3995 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !3989)
!3996 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !3989)
!3997 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !3989)
!3998 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !3989)
!3999 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !3989)
!4000 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !3989)
!4001 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !3989)
!4002 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !3989)
!4003 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !3989)
!4004 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !3989)
!4005 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !3989)
!4006 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !3989)
!4007 = !DILocation(line: 0, scope: !660, inlinedAt: !3989)
!4008 = !DILocation(line: 1645, column: 20, scope: !3718)
!4009 = !DILocation(line: 1645, column: 15, scope: !3718)
!4010 = !DILocation(line: 1647, column: 19, scope: !3718)
!4011 = !DILocation(line: 1647, column: 16, scope: !3718)
!4012 = !DILocation(line: 1647, column: 12, scope: !3718)
!4013 = !DILocation(line: 0, scope: !3718)
!4014 = !DILocation(line: 1648, column: 1, scope: !3718)
!4015 = distinct !DISubprogram(name: "streamLookupConsumer", scope: !1, file: !1, line: 1654, type: !4016, isLocal: false, isDefinition: true, scopeLine: 1654, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4018)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!2290, !144, !436, !12}
!4018 = !{!4019, !4020, !4021, !4022}
!4019 = !DILocalVariable(name: "cg", arg: 1, scope: !4015, file: !1, line: 1654, type: !144)
!4020 = !DILocalVariable(name: "name", arg: 2, scope: !4015, file: !1, line: 1654, type: !436)
!4021 = !DILocalVariable(name: "create", arg: 3, scope: !4015, file: !1, line: 1654, type: !12)
!4022 = !DILocalVariable(name: "consumer", scope: !4015, file: !1, line: 1655, type: !2290)
!4023 = !DILocation(line: 1654, column: 48, scope: !4015)
!4024 = !DILocation(line: 1654, column: 56, scope: !4015)
!4025 = !DILocation(line: 1654, column: 66, scope: !4015)
!4026 = !DILocation(line: 1655, column: 44, scope: !4015)
!4027 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 1656, column: 32, scope: !4015)
!4029 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4028)
!4030 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4028)
!4031 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4028)
!4032 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4028)
!4033 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4028)
!4034 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4028)
!4035 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4028)
!4036 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4028)
!4037 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4028)
!4038 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4028)
!4039 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4028)
!4040 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4028)
!4041 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4028)
!4042 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4028)
!4043 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4028)
!4044 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4028)
!4045 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4028)
!4046 = !DILocation(line: 0, scope: !660, inlinedAt: !4028)
!4047 = !DILocation(line: 1655, column: 32, scope: !4015)
!4048 = !DILocation(line: 1655, column: 21, scope: !4015)
!4049 = !DILocation(line: 1657, column: 21, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4015, file: !1, line: 1657, column: 9)
!4051 = !DILocation(line: 1657, column: 18, scope: !4050)
!4052 = !DILocation(line: 1657, column: 9, scope: !4015)
!4053 = !DILocation(line: 1658, column: 14, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4055, file: !1, line: 1658, column: 13)
!4055 = distinct !DILexicalBlock(scope: !4050, file: !1, line: 1657, column: 34)
!4056 = !DILocation(line: 1658, column: 13, scope: !4055)
!4057 = !DILocation(line: 1659, column: 20, scope: !4055)
!4058 = !DILocation(line: 1660, column: 26, scope: !4055)
!4059 = !DILocation(line: 1660, column: 19, scope: !4055)
!4060 = !DILocation(line: 1660, column: 24, scope: !4055)
!4061 = !DILocation(line: 1661, column: 25, scope: !4055)
!4062 = !DILocation(line: 1661, column: 19, scope: !4055)
!4063 = !DILocation(line: 1661, column: 23, scope: !4055)
!4064 = !DILocation(line: 1662, column: 23, scope: !4055)
!4065 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 1662, column: 54, scope: !4055)
!4067 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4066)
!4068 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4066)
!4069 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4066)
!4070 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4066)
!4071 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4066)
!4072 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4066)
!4073 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4066)
!4074 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4066)
!4075 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4066)
!4076 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4066)
!4077 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4066)
!4078 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4066)
!4079 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4066)
!4080 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4066)
!4081 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4066)
!4082 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4066)
!4083 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4066)
!4084 = !DILocation(line: 0, scope: !660, inlinedAt: !4066)
!4085 = !DILocation(line: 1662, column: 9, scope: !4055)
!4086 = !DILocation(line: 1664, column: 5, scope: !4055)
!4087 = !DILocation(line: 0, scope: !4015)
!4088 = !DILocation(line: 1665, column: 27, scope: !4015)
!4089 = !DILocation(line: 1665, column: 15, scope: !4015)
!4090 = !DILocation(line: 1665, column: 25, scope: !4015)
!4091 = !{!2328, !266, i64 0}
!4092 = !DILocation(line: 1666, column: 5, scope: !4015)
!4093 = !DILocation(line: 0, scope: !4054)
!4094 = !DILocation(line: 1667, column: 1, scope: !4015)
!4095 = distinct !DISubprogram(name: "streamFreeConsumer", scope: !1, file: !1, line: 1610, type: !4096, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4098)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !2290}
!4098 = !{!4099}
!4099 = !DILocalVariable(name: "sc", arg: 1, scope: !4095, file: !1, line: 1610, type: !2290)
!4100 = !DILocation(line: 1610, column: 41, scope: !4095)
!4101 = !DILocation(line: 1611, column: 17, scope: !4095)
!4102 = !DILocation(line: 1611, column: 5, scope: !4095)
!4103 = !DILocation(line: 1613, column: 17, scope: !4095)
!4104 = !DILocation(line: 1613, column: 5, scope: !4095)
!4105 = !DILocation(line: 1614, column: 11, scope: !4095)
!4106 = !DILocation(line: 1614, column: 5, scope: !4095)
!4107 = !DILocation(line: 1615, column: 1, scope: !4095)
!4108 = distinct !DISubprogram(name: "streamCreateCG", scope: !1, file: !1, line: 1621, type: !4109, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!144, !69, !10, !13, !167}
!4111 = !{!4112, !4113, !4114, !4115, !4116}
!4112 = !DILocalVariable(name: "s", arg: 1, scope: !4108, file: !1, line: 1621, type: !69)
!4113 = !DILocalVariable(name: "name", arg: 2, scope: !4108, file: !1, line: 1621, type: !10)
!4114 = !DILocalVariable(name: "namelen", arg: 3, scope: !4108, file: !1, line: 1621, type: !13)
!4115 = !DILocalVariable(name: "id", arg: 4, scope: !4108, file: !1, line: 1621, type: !167)
!4116 = !DILocalVariable(name: "cg", scope: !4108, file: !1, line: 1626, type: !144)
!4117 = !DILocation(line: 1621, column: 34, scope: !4108)
!4118 = !DILocation(line: 1621, column: 43, scope: !4108)
!4119 = !DILocation(line: 1621, column: 56, scope: !4108)
!4120 = !DILocation(line: 1621, column: 75, scope: !4108)
!4121 = !DILocation(line: 1622, column: 12, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1622, column: 9)
!4123 = !DILocation(line: 1622, column: 20, scope: !4122)
!4124 = !DILocation(line: 1622, column: 9, scope: !4108)
!4125 = !DILocation(line: 1622, column: 42, scope: !4122)
!4126 = !DILocation(line: 1622, column: 40, scope: !4122)
!4127 = !DILocation(line: 1622, column: 29, scope: !4122)
!4128 = !DILocation(line: 1623, column: 20, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1623, column: 9)
!4130 = !DILocation(line: 1623, column: 9, scope: !4129)
!4131 = !DILocation(line: 1623, column: 61, scope: !4129)
!4132 = !DILocation(line: 1623, column: 58, scope: !4129)
!4133 = !DILocation(line: 1623, column: 9, scope: !4108)
!4134 = !DILocation(line: 1626, column: 20, scope: !4108)
!4135 = !DILocation(line: 1626, column: 15, scope: !4108)
!4136 = !DILocation(line: 1627, column: 15, scope: !4108)
!4137 = !DILocation(line: 1627, column: 9, scope: !4108)
!4138 = !DILocation(line: 1627, column: 13, scope: !4108)
!4139 = !DILocation(line: 1628, column: 21, scope: !4108)
!4140 = !DILocation(line: 1628, column: 9, scope: !4108)
!4141 = !DILocation(line: 1628, column: 19, scope: !4108)
!4142 = !DILocation(line: 1629, column: 19, scope: !4108)
!4143 = !DILocation(line: 1630, column: 18, scope: !4108)
!4144 = !DILocation(line: 1630, column: 5, scope: !4108)
!4145 = !DILocation(line: 0, scope: !4108)
!4146 = !DILocation(line: 1632, column: 1, scope: !4108)
!4147 = distinct !DISubprogram(name: "streamDelConsumer", scope: !1, file: !1, line: 1672, type: !4148, isLocal: false, isDefinition: true, scopeLine: 1672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!57, !144, !436}
!4150 = !{!4151, !4152, !4153, !4154, !4155, !4156}
!4151 = !DILocalVariable(name: "cg", arg: 1, scope: !4147, file: !1, line: 1672, type: !144)
!4152 = !DILocalVariable(name: "name", arg: 2, scope: !4147, file: !1, line: 1672, type: !436)
!4153 = !DILocalVariable(name: "consumer", scope: !4147, file: !1, line: 1673, type: !2290)
!4154 = !DILocalVariable(name: "retval", scope: !4147, file: !1, line: 1676, type: !57)
!4155 = !DILocalVariable(name: "ri", scope: !4147, file: !1, line: 1680, type: !384)
!4156 = !DILocalVariable(name: "nack", scope: !4157, file: !1, line: 1684, type: !2283)
!4157 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 1683, column: 25)
!4158 = !DILocation(line: 1672, column: 38, scope: !4147)
!4159 = !DILocation(line: 1672, column: 46, scope: !4147)
!4160 = !DILocation(line: 1654, column: 48, scope: !4015, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 1673, column: 32, scope: !4147)
!4162 = !DILocation(line: 1654, column: 56, scope: !4015, inlinedAt: !4161)
!4163 = !DILocation(line: 1654, column: 66, scope: !4015, inlinedAt: !4161)
!4164 = !DILocation(line: 1655, column: 44, scope: !4015, inlinedAt: !4161)
!4165 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 1656, column: 32, scope: !4015, inlinedAt: !4161)
!4167 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4166)
!4168 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4166)
!4169 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4166)
!4170 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4166)
!4171 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4166)
!4172 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4166)
!4173 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4166)
!4174 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4166)
!4175 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4166)
!4176 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4166)
!4177 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4166)
!4178 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4166)
!4179 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4166)
!4180 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4166)
!4181 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4166)
!4182 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4166)
!4183 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4166)
!4184 = !DILocation(line: 0, scope: !660, inlinedAt: !4166)
!4185 = !DILocation(line: 1655, column: 32, scope: !4015, inlinedAt: !4161)
!4186 = !DILocation(line: 1655, column: 21, scope: !4015, inlinedAt: !4161)
!4187 = !DILocation(line: 1657, column: 21, scope: !4050, inlinedAt: !4161)
!4188 = !DILocation(line: 1657, column: 18, scope: !4050, inlinedAt: !4161)
!4189 = !DILocation(line: 1657, column: 9, scope: !4015, inlinedAt: !4161)
!4190 = !DILocation(line: 1665, column: 27, scope: !4015, inlinedAt: !4161)
!4191 = !DILocation(line: 1665, column: 15, scope: !4015, inlinedAt: !4161)
!4192 = !DILocation(line: 1665, column: 25, scope: !4015, inlinedAt: !4161)
!4193 = !DILocation(line: 1673, column: 21, scope: !4147)
!4194 = !DILocation(line: 1674, column: 18, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 1674, column: 9)
!4196 = !DILocation(line: 1674, column: 9, scope: !4147)
!4197 = !DILocation(line: 1676, column: 41, scope: !4147)
!4198 = !DILocation(line: 1676, column: 23, scope: !4147)
!4199 = !DILocation(line: 1676, column: 14, scope: !4147)
!4200 = !DILocation(line: 1680, column: 5, scope: !4147)
!4201 = !DILocation(line: 1681, column: 28, scope: !4147)
!4202 = !DILocation(line: 1680, column: 17, scope: !4147)
!4203 = !DILocation(line: 1681, column: 5, scope: !4147)
!4204 = !DILocation(line: 1682, column: 5, scope: !4147)
!4205 = !DILocation(line: 1683, column: 11, scope: !4147)
!4206 = !DILocation(line: 1683, column: 5, scope: !4147)
!4207 = !DILocation(line: 1684, column: 31, scope: !4157)
!4208 = !DILocation(line: 1684, column: 21, scope: !4157)
!4209 = !DILocation(line: 1685, column: 23, scope: !4157)
!4210 = !DILocation(line: 1685, column: 30, scope: !4157)
!4211 = !DILocation(line: 1685, column: 37, scope: !4157)
!4212 = !DILocation(line: 1685, column: 9, scope: !4157)
!4213 = !DILocation(line: 1601, column: 33, scope: !2640, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 1686, column: 9, scope: !4157)
!4215 = !DILocation(line: 1602, column: 5, scope: !2640, inlinedAt: !4214)
!4216 = distinct !{!4216, !4206, !4217}
!4217 = !DILocation(line: 1687, column: 5, scope: !4147)
!4218 = !DILocation(line: 1688, column: 5, scope: !4147)
!4219 = !DILocation(line: 1691, column: 19, scope: !4147)
!4220 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 1691, column: 50, scope: !4147)
!4222 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4221)
!4223 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4221)
!4224 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4221)
!4225 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4221)
!4226 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4221)
!4227 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4221)
!4228 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4221)
!4229 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4221)
!4230 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4221)
!4231 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4221)
!4232 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4221)
!4233 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4221)
!4234 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4221)
!4235 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4221)
!4236 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4221)
!4237 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4221)
!4238 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4221)
!4239 = !DILocation(line: 0, scope: !660, inlinedAt: !4221)
!4240 = !DILocation(line: 1691, column: 5, scope: !4147)
!4241 = !DILocation(line: 1610, column: 41, scope: !4095, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 1692, column: 5, scope: !4147)
!4243 = !DILocation(line: 1611, column: 17, scope: !4095, inlinedAt: !4242)
!4244 = !DILocation(line: 1611, column: 5, scope: !4095, inlinedAt: !4242)
!4245 = !DILocation(line: 1613, column: 17, scope: !4095, inlinedAt: !4242)
!4246 = !DILocation(line: 1613, column: 5, scope: !4095, inlinedAt: !4242)
!4247 = !DILocation(line: 1614, column: 5, scope: !4095, inlinedAt: !4242)
!4248 = !DILocation(line: 1694, column: 1, scope: !4147)
!4249 = !DILocation(line: 0, scope: !4147)
!4250 = distinct !DISubprogram(name: "xgroupCommand", scope: !1, file: !1, line: 1704, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1704, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4251)
!4251 = !{!4252, !4253, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4266, !4267, !4270}
!4252 = !DILocalVariable(name: "c", arg: 1, scope: !4250, file: !1, line: 1704, type: !2037)
!4253 = !DILocalVariable(name: "help", scope: !4250, file: !1, line: 1705, type: !4254)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, size: 448, elements: !4255)
!4255 = !{!4256}
!4256 = !DISubrange(count: 7)
!4257 = !DILocalVariable(name: "s", scope: !4250, file: !1, line: 1714, type: !69)
!4258 = !DILocalVariable(name: "grpname", scope: !4250, file: !1, line: 1715, type: !436)
!4259 = !DILocalVariable(name: "cg", scope: !4250, file: !1, line: 1716, type: !144)
!4260 = !DILocalVariable(name: "opt", scope: !4250, file: !1, line: 1717, type: !10)
!4261 = !DILocalVariable(name: "mkstream", scope: !4250, file: !1, line: 1718, type: !12)
!4262 = !DILocalVariable(name: "o", scope: !4250, file: !1, line: 1719, type: !367)
!4263 = !DILocalVariable(name: "id", scope: !4264, file: !1, line: 1767, type: !95)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !1, line: 1766, column: 70)
!4265 = distinct !DILexicalBlock(scope: !4250, file: !1, line: 1766, column: 9)
!4266 = !DILocalVariable(name: "cg", scope: !4264, file: !1, line: 1787, type: !144)
!4267 = !DILocalVariable(name: "id", scope: !4268, file: !1, line: 1798, type: !95)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !1, line: 1797, column: 58)
!4269 = distinct !DILexicalBlock(scope: !4265, file: !1, line: 1797, column: 16)
!4270 = !DILocalVariable(name: "pending", scope: !4271, file: !1, line: 1822, type: !246)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !1, line: 1819, column: 64)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !1, line: 1819, column: 16)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !1, line: 1808, column: 16)
!4274 = !DILocation(line: 1704, column: 28, scope: !4250)
!4275 = !DILocation(line: 1705, column: 5, scope: !4250)
!4276 = !DILocation(line: 1705, column: 17, scope: !4250)
!4277 = !DILocation(line: 1714, column: 13, scope: !4250)
!4278 = !DILocation(line: 1715, column: 9, scope: !4250)
!4279 = !DILocation(line: 1716, column: 15, scope: !4250)
!4280 = !DILocation(line: 1717, column: 20, scope: !4250)
!4281 = !DILocation(line: 1717, column: 17, scope: !4250)
!4282 = !DILocation(line: 1717, column: 29, scope: !4250)
!4283 = !DILocation(line: 1717, column: 11, scope: !4250)
!4284 = !DILocation(line: 1718, column: 9, scope: !4250)
!4285 = !DILocation(line: 1723, column: 12, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4250, file: !1, line: 1723, column: 9)
!4287 = !DILocation(line: 1723, column: 17, scope: !4286)
!4288 = !DILocation(line: 1723, column: 22, scope: !4286)
!4289 = !DILocation(line: 1723, column: 26, scope: !4286)
!4290 = !DILocation(line: 1723, column: 9, scope: !4250)
!4291 = !DILocation(line: 1724, column: 24, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !1, line: 1724, column: 13)
!4293 = distinct !DILexicalBlock(scope: !4286, file: !1, line: 1723, column: 52)
!4294 = !DILocation(line: 1724, column: 36, scope: !4292)
!4295 = !DILocation(line: 1724, column: 13, scope: !4292)
!4296 = !DILocation(line: 1724, column: 13, scope: !4293)
!4297 = !DILocation(line: 1725, column: 13, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4292, file: !1, line: 1724, column: 53)
!4299 = !DILocation(line: 1726, column: 13, scope: !4298)
!4300 = !DILocation(line: 1733, column: 17, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4250, file: !1, line: 1733, column: 9)
!4302 = !DILocation(line: 1733, column: 9, scope: !4250)
!4303 = !DILocation(line: 1734, column: 31, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !1, line: 1733, column: 23)
!4305 = !DILocation(line: 1734, column: 34, scope: !4304)
!4306 = !DILocation(line: 1734, column: 13, scope: !4304)
!4307 = !DILocation(line: 1719, column: 11, scope: !4250)
!4308 = !DILocation(line: 1735, column: 13, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4304, file: !1, line: 1735, column: 13)
!4310 = !DILocation(line: 1735, column: 13, scope: !4304)
!4311 = !DILocation(line: 1736, column: 17, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !1, line: 1736, column: 17)
!4313 = distinct !DILexicalBlock(scope: !4309, file: !1, line: 1735, column: 16)
!4314 = !DILocation(line: 1736, column: 17, scope: !4313)
!4315 = !DILocation(line: 1737, column: 20, scope: !4313)
!4316 = !DILocation(line: 1738, column: 9, scope: !4313)
!4317 = !DILocation(line: 0, scope: !4250)
!4318 = !DILocation(line: 1739, column: 22, scope: !4304)
!4319 = !DILocation(line: 1739, column: 19, scope: !4304)
!4320 = !DILocation(line: 1739, column: 31, scope: !4304)
!4321 = !DILocation(line: 1743, column: 12, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4250, file: !1, line: 1743, column: 9)
!4323 = !DILocation(line: 1743, column: 17, scope: !4322)
!4324 = !DILocation(line: 1743, column: 26, scope: !4322)
!4325 = !DILocation(line: 1743, column: 22, scope: !4322)
!4326 = !DILocation(line: 1745, column: 15, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4328, file: !1, line: 1745, column: 13)
!4328 = distinct !DILexicalBlock(scope: !4322, file: !1, line: 1743, column: 36)
!4329 = !DILocation(line: 1745, column: 13, scope: !4328)
!4330 = !DILocation(line: 1746, column: 13, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4327, file: !1, line: 1745, column: 24)
!4332 = !DILocation(line: 1750, column: 13, scope: !4331)
!4333 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 1754, column: 19, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4328, file: !1, line: 1754, column: 13)
!4336 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !4334)
!4337 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !4334)
!4338 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !4334)
!4339 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !4334)
!4340 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !4334)
!4342 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4341)
!4343 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4341)
!4344 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4341)
!4345 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4341)
!4346 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4341)
!4347 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4341)
!4348 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4341)
!4349 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4341)
!4350 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4341)
!4351 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4341)
!4352 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4341)
!4353 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4341)
!4354 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4341)
!4355 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4341)
!4356 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4341)
!4357 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4341)
!4358 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4341)
!4359 = !DILocation(line: 0, scope: !660, inlinedAt: !4341)
!4360 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !4334)
!4361 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !4334)
!4362 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !4334)
!4363 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !4334)
!4364 = !DILocation(line: 1754, column: 46, scope: !4335)
!4365 = !DILocation(line: 1755, column: 15, scope: !4335)
!4366 = !DILocation(line: 1755, column: 39, scope: !4335)
!4367 = !DILocation(line: 1756, column: 15, scope: !4335)
!4368 = !DILocation(line: 1754, column: 13, scope: !4328)
!4369 = !DILocation(line: 1760, column: 62, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4335, file: !1, line: 1757, column: 9)
!4371 = !DILocation(line: 1760, column: 59, scope: !4370)
!4372 = !DILocation(line: 1760, column: 71, scope: !4370)
!4373 = !DILocation(line: 1758, column: 13, scope: !4370)
!4374 = !DILocation(line: 1761, column: 13, scope: !4370)
!4375 = !DILocation(line: 0, scope: !4335)
!4376 = !DILocation(line: 1766, column: 10, scope: !4265)
!4377 = !DILocation(line: 1766, column: 35, scope: !4265)
!4378 = !DILocation(line: 1766, column: 42, scope: !4265)
!4379 = !DILocation(line: 1766, column: 52, scope: !4265)
!4380 = !DILocation(line: 1767, column: 9, scope: !4264)
!4381 = !DILocation(line: 1768, column: 24, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4264, file: !1, line: 1768, column: 13)
!4383 = !DILocation(line: 1768, column: 21, scope: !4382)
!4384 = !DILocation(line: 1768, column: 33, scope: !4382)
!4385 = !DILocation(line: 1768, column: 14, scope: !4382)
!4386 = !DILocation(line: 1768, column: 13, scope: !4264)
!4387 = !DILocation(line: 1769, column: 17, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !1, line: 1769, column: 17)
!4389 = distinct !DILexicalBlock(scope: !4382, file: !1, line: 1768, column: 43)
!4390 = !DILocation(line: 1769, column: 17, scope: !4389)
!4391 = !DILocation(line: 1770, column: 25, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 1769, column: 20)
!4393 = !DILocation(line: 1780, column: 13, scope: !4264)
!4394 = !DILocation(line: 1772, column: 23, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 1771, column: 20)
!4396 = !DILocation(line: 1775, column: 52, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4382, file: !1, line: 1775, column: 20)
!4398 = !DILocation(line: 1775, column: 49, scope: !4397)
!4399 = !DILocation(line: 1767, column: 18, scope: !4264)
!4400 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 1775, column: 20, scope: !4397)
!4402 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !4401)
!4403 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !4401)
!4404 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !4401)
!4405 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !4401)
!4406 = !DILocation(line: 1775, column: 67, scope: !4397)
!4407 = !DILocation(line: 1775, column: 20, scope: !4382)
!4408 = !DILocation(line: 1780, column: 15, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4264, file: !1, line: 1780, column: 13)
!4410 = !DILocation(line: 1781, column: 13, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4409, file: !1, line: 1780, column: 24)
!4412 = !DILocation(line: 1782, column: 17, scope: !4411)
!4413 = !DILocation(line: 1783, column: 22, scope: !4411)
!4414 = !DILocation(line: 1783, column: 28, scope: !4411)
!4415 = !DILocation(line: 1783, column: 25, scope: !4411)
!4416 = !DILocation(line: 1783, column: 13, scope: !4411)
!4417 = !DILocation(line: 1784, column: 20, scope: !4411)
!4418 = !DILocation(line: 1785, column: 9, scope: !4411)
!4419 = !DILocation(line: 0, scope: !4313)
!4420 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4421)
!4421 = distinct !DILocation(line: 1787, column: 49, scope: !4264)
!4422 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4421)
!4423 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4421)
!4424 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4421)
!4425 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4421)
!4426 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4421)
!4427 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4421)
!4428 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4421)
!4429 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4421)
!4430 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4421)
!4431 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4421)
!4432 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4421)
!4433 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4421)
!4434 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4421)
!4435 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4421)
!4436 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4421)
!4437 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4421)
!4438 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4421)
!4439 = !DILocation(line: 0, scope: !660, inlinedAt: !4421)
!4440 = !DILocation(line: 1787, column: 24, scope: !4264)
!4441 = !DILocation(line: 1787, column: 19, scope: !4264)
!4442 = !DILocation(line: 1788, column: 13, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4264, file: !1, line: 1788, column: 13)
!4444 = !DILocation(line: 1788, column: 13, scope: !4264)
!4445 = !DILocation(line: 1789, column: 31, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !1, line: 1788, column: 17)
!4447 = !{!2827, !110, i64 8}
!4448 = !DILocation(line: 1789, column: 13, scope: !4446)
!4449 = !DILocation(line: 1790, column: 25, scope: !4446)
!4450 = !DILocation(line: 1792, column: 36, scope: !4446)
!4451 = !DILocation(line: 1792, column: 33, scope: !4446)
!4452 = !DILocation(line: 1792, column: 47, scope: !4446)
!4453 = !DILocation(line: 1792, column: 51, scope: !4446)
!4454 = !DILocation(line: 1791, column: 13, scope: !4446)
!4455 = !DILocation(line: 1793, column: 9, scope: !4446)
!4456 = !DILocation(line: 1795, column: 17, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4443, file: !1, line: 1793, column: 16)
!4458 = !DILocation(line: 1794, column: 13, scope: !4457)
!4459 = !DILocation(line: 1797, column: 5, scope: !4265)
!4460 = !DILocation(line: 1797, column: 17, scope: !4269)
!4461 = !DILocation(line: 1797, column: 41, scope: !4269)
!4462 = !DILocation(line: 1797, column: 47, scope: !4269)
!4463 = !DILocation(line: 1797, column: 52, scope: !4269)
!4464 = !DILocation(line: 1797, column: 16, scope: !4265)
!4465 = !DILocation(line: 1798, column: 9, scope: !4268)
!4466 = !DILocation(line: 1799, column: 24, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 1799, column: 13)
!4468 = !DILocation(line: 1799, column: 21, scope: !4467)
!4469 = !DILocation(line: 1799, column: 33, scope: !4467)
!4470 = !DILocation(line: 1799, column: 14, scope: !4467)
!4471 = !DILocation(line: 1799, column: 13, scope: !4268)
!4472 = !DILocation(line: 1800, column: 21, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4467, file: !1, line: 1799, column: 43)
!4474 = !DILocation(line: 1801, column: 9, scope: !4473)
!4475 = !DILocation(line: 1801, column: 46, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4467, file: !1, line: 1801, column: 20)
!4477 = !DILocation(line: 1801, column: 43, scope: !4476)
!4478 = !DILocation(line: 1798, column: 18, scope: !4268)
!4479 = !DILocation(line: 1142, column: 34, scope: !3064, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 1801, column: 20, scope: !4476)
!4481 = !DILocation(line: 1142, column: 43, scope: !3064, inlinedAt: !4480)
!4482 = !DILocation(line: 1142, column: 56, scope: !3064, inlinedAt: !4480)
!4483 = !DILocation(line: 1142, column: 69, scope: !3064, inlinedAt: !4480)
!4484 = !DILocation(line: 1143, column: 12, scope: !3064, inlinedAt: !4480)
!4485 = !DILocation(line: 1801, column: 61, scope: !4476)
!4486 = !DILocation(line: 1801, column: 20, scope: !4467)
!4487 = !DILocation(line: 1804, column: 23, scope: !4268)
!4488 = !DILocation(line: 1805, column: 27, scope: !4268)
!4489 = !DILocation(line: 1805, column: 9, scope: !4268)
!4490 = !DILocation(line: 1806, column: 21, scope: !4268)
!4491 = !DILocation(line: 1807, column: 61, scope: !4268)
!4492 = !DILocation(line: 1807, column: 58, scope: !4268)
!4493 = !DILocation(line: 1807, column: 72, scope: !4268)
!4494 = !DILocation(line: 1807, column: 76, scope: !4268)
!4495 = !DILocation(line: 1807, column: 9, scope: !4268)
!4496 = !DILocation(line: 1808, column: 5, scope: !4269)
!4497 = !DILocation(line: 1808, column: 17, scope: !4273)
!4498 = !DILocation(line: 1808, column: 43, scope: !4273)
!4499 = !DILocation(line: 1808, column: 49, scope: !4273)
!4500 = !DILocation(line: 1808, column: 54, scope: !4273)
!4501 = !DILocation(line: 1808, column: 16, scope: !4269)
!4502 = !DILocation(line: 1809, column: 13, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !1, line: 1809, column: 13)
!4504 = distinct !DILexicalBlock(scope: !4273, file: !1, line: 1808, column: 60)
!4505 = !DILocation(line: 1809, column: 13, scope: !4504)
!4506 = !DILocation(line: 1810, column: 26, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 1809, column: 17)
!4508 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 1810, column: 58, scope: !4507)
!4510 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4509)
!4511 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4509)
!4512 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4509)
!4513 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4509)
!4514 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4509)
!4515 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4509)
!4516 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4509)
!4517 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4509)
!4518 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4509)
!4519 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4509)
!4520 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4509)
!4521 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4509)
!4522 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4509)
!4523 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4509)
!4524 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4509)
!4525 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4509)
!4526 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4509)
!4527 = !DILocation(line: 0, scope: !660, inlinedAt: !4509)
!4528 = !DILocation(line: 1810, column: 13, scope: !4507)
!4529 = !DILocation(line: 1635, column: 29, scope: !141, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 1811, column: 13, scope: !4507)
!4531 = !DILocation(line: 1636, column: 29, scope: !141, inlinedAt: !4530)
!4532 = !DILocation(line: 1636, column: 5, scope: !141, inlinedAt: !4530)
!4533 = !DILocation(line: 1637, column: 29, scope: !141, inlinedAt: !4530)
!4534 = !DILocation(line: 1637, column: 5, scope: !141, inlinedAt: !4530)
!4535 = !DILocation(line: 1638, column: 5, scope: !141, inlinedAt: !4530)
!4536 = !DILocation(line: 1812, column: 31, scope: !4507)
!4537 = !{!2827, !110, i64 40}
!4538 = !DILocation(line: 1812, column: 13, scope: !4507)
!4539 = !DILocation(line: 1813, column: 25, scope: !4507)
!4540 = !DILocation(line: 1815, column: 36, scope: !4507)
!4541 = !DILocation(line: 1815, column: 33, scope: !4507)
!4542 = !DILocation(line: 1815, column: 47, scope: !4507)
!4543 = !DILocation(line: 1815, column: 51, scope: !4507)
!4544 = !DILocation(line: 1814, column: 13, scope: !4507)
!4545 = !DILocation(line: 1816, column: 9, scope: !4507)
!4546 = !DILocation(line: 1817, column: 31, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 1816, column: 16)
!4548 = !DILocation(line: 1817, column: 13, scope: !4547)
!4549 = !DILocation(line: 1819, column: 17, scope: !4272)
!4550 = !DILocation(line: 1819, column: 47, scope: !4272)
!4551 = !DILocation(line: 1819, column: 53, scope: !4272)
!4552 = !DILocation(line: 1819, column: 58, scope: !4272)
!4553 = !DILocation(line: 1819, column: 16, scope: !4273)
!4554 = !DILocation(line: 1822, column: 53, scope: !4271)
!4555 = !DILocation(line: 1822, column: 50, scope: !4271)
!4556 = !DILocation(line: 1822, column: 62, scope: !4271)
!4557 = !DILocation(line: 1822, column: 29, scope: !4271)
!4558 = !DILocation(line: 1822, column: 19, scope: !4271)
!4559 = !DILocation(line: 1823, column: 9, scope: !4271)
!4560 = !DILocation(line: 1824, column: 21, scope: !4271)
!4561 = !DILocation(line: 1826, column: 32, scope: !4271)
!4562 = !DILocation(line: 1826, column: 29, scope: !4271)
!4563 = !DILocation(line: 1826, column: 43, scope: !4271)
!4564 = !DILocation(line: 1826, column: 47, scope: !4271)
!4565 = !DILocation(line: 1825, column: 9, scope: !4271)
!4566 = !DILocation(line: 1827, column: 5, scope: !4271)
!4567 = !DILocation(line: 1827, column: 17, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4272, file: !1, line: 1827, column: 16)
!4569 = !DILocation(line: 1827, column: 16, scope: !4272)
!4570 = !DILocation(line: 1828, column: 9, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4568, file: !1, line: 1827, column: 41)
!4572 = !DILocation(line: 1829, column: 5, scope: !4571)
!4573 = !DILocation(line: 1830, column: 9, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4568, file: !1, line: 1829, column: 12)
!4575 = !DILocation(line: 1832, column: 1, scope: !4250)
!4576 = distinct !DISubprogram(name: "xsetidCommand", scope: !1, file: !1, line: 1837, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4577)
!4577 = !{!4578, !4579, !4580, !4581, !4582, !4585, !4586}
!4578 = !DILocalVariable(name: "c", arg: 1, scope: !4576, file: !1, line: 1837, type: !2037)
!4579 = !DILocalVariable(name: "o", scope: !4576, file: !1, line: 1838, type: !367)
!4580 = !DILocalVariable(name: "s", scope: !4576, file: !1, line: 1841, type: !69)
!4581 = !DILocalVariable(name: "id", scope: !4576, file: !1, line: 1842, type: !95)
!4582 = !DILocalVariable(name: "maxid", scope: !4583, file: !1, line: 1849, type: !95)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !1, line: 1848, column: 24)
!4584 = distinct !DILexicalBlock(scope: !4576, file: !1, line: 1848, column: 9)
!4585 = !DILocalVariable(name: "si", scope: !4583, file: !1, line: 1850, type: !1217)
!4586 = !DILocalVariable(name: "numfields", scope: !4583, file: !1, line: 1852, type: !196)
!4587 = !DILocation(line: 1837, column: 28, scope: !4576)
!4588 = !DILocation(line: 1838, column: 42, scope: !4576)
!4589 = !DILocation(line: 1838, column: 39, scope: !4576)
!4590 = !DILocation(line: 1838, column: 57, scope: !4576)
!4591 = !{!2827, !110, i64 120}
!4592 = !DILocation(line: 1838, column: 15, scope: !4576)
!4593 = !DILocation(line: 1838, column: 11, scope: !4576)
!4594 = !DILocation(line: 1839, column: 11, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4576, file: !1, line: 1839, column: 9)
!4596 = !DILocation(line: 1839, column: 19, scope: !4595)
!4597 = !DILocation(line: 1839, column: 22, scope: !4595)
!4598 = !DILocation(line: 1839, column: 9, scope: !4576)
!4599 = !DILocation(line: 1841, column: 20, scope: !4576)
!4600 = !DILocation(line: 1841, column: 13, scope: !4576)
!4601 = !DILocation(line: 1842, column: 5, scope: !4576)
!4602 = !DILocation(line: 1843, column: 41, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4576, file: !1, line: 1843, column: 9)
!4604 = !DILocation(line: 1843, column: 38, scope: !4603)
!4605 = !DILocation(line: 1842, column: 14, scope: !4576)
!4606 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 1843, column: 9, scope: !4603)
!4608 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !4607)
!4609 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !4607)
!4610 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !4607)
!4611 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !4607)
!4612 = !DILocation(line: 1843, column: 56, scope: !4603)
!4613 = !DILocation(line: 1843, column: 9, scope: !4576)
!4614 = !DILocation(line: 1848, column: 12, scope: !4584)
!4615 = !DILocation(line: 1848, column: 19, scope: !4584)
!4616 = !DILocation(line: 1848, column: 9, scope: !4576)
!4617 = !DILocation(line: 1849, column: 9, scope: !4583)
!4618 = !DILocation(line: 1850, column: 9, scope: !4583)
!4619 = !DILocation(line: 1850, column: 24, scope: !4583)
!4620 = !DILocation(line: 488, column: 42, scope: !1213, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 1851, column: 9, scope: !4583)
!4622 = !DILocation(line: 488, column: 54, scope: !1213, inlinedAt: !4621)
!4623 = !DILocation(line: 488, column: 67, scope: !1213, inlinedAt: !4621)
!4624 = !DILocation(line: 488, column: 84, scope: !1213, inlinedAt: !4621)
!4625 = !DILocation(line: 488, column: 93, scope: !1213, inlinedAt: !4621)
!4626 = !DILocation(line: 494, column: 9, scope: !1256, inlinedAt: !4621)
!4627 = !DILocation(line: 494, column: 26, scope: !1256, inlinedAt: !4621)
!4628 = !DILocation(line: 501, column: 9, scope: !1274, inlinedAt: !4621)
!4629 = !DILocation(line: 501, column: 24, scope: !1274, inlinedAt: !4621)
!4630 = !DILocation(line: 506, column: 19, scope: !1213, inlinedAt: !4621)
!4631 = !DILocation(line: 506, column: 25, scope: !1213, inlinedAt: !4621)
!4632 = !DILocation(line: 506, column: 5, scope: !1213, inlinedAt: !4621)
!4633 = !DILocation(line: 521, column: 13, scope: !1331, inlinedAt: !4621)
!4634 = !DILocation(line: 524, column: 9, scope: !1213, inlinedAt: !4621)
!4635 = !DILocation(line: 524, column: 16, scope: !1213, inlinedAt: !4621)
!4636 = !DILocation(line: 525, column: 9, scope: !1213, inlinedAt: !4621)
!4637 = !DILocation(line: 525, column: 12, scope: !1213, inlinedAt: !4621)
!4638 = !DILocation(line: 527, column: 9, scope: !1213, inlinedAt: !4621)
!4639 = !DILocation(line: 527, column: 13, scope: !1213, inlinedAt: !4621)
!4640 = !DILocation(line: 1852, column: 9, scope: !4583)
!4641 = !DILocation(line: 1849, column: 18, scope: !4583)
!4642 = !DILocation(line: 1852, column: 17, scope: !4583)
!4643 = !DILocation(line: 1853, column: 9, scope: !4583)
!4644 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 1854, column: 9, scope: !4583)
!4646 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !4645)
!4647 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 1856, column: 13, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4583, file: !1, line: 1856, column: 13)
!4650 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !4648)
!4651 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !4648)
!4652 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !4648)
!4653 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !4648)
!4654 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !4648)
!4655 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !4648)
!4656 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !4648)
!4657 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !4648)
!4658 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !4648)
!4659 = !DILocation(line: 158, column: 21, scope: !359, inlinedAt: !4648)
!4660 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !4648)
!4661 = !DILocation(line: 1857, column: 13, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4649, file: !1, line: 1856, column: 46)
!4663 = !DILocation(line: 1861, column: 5, scope: !4584)
!4664 = !DILocation(line: 1862, column: 8, scope: !4576)
!4665 = !DILocation(line: 1862, column: 18, scope: !4576)
!4666 = !DILocation(line: 1863, column: 23, scope: !4576)
!4667 = !DILocation(line: 1863, column: 5, scope: !4576)
!4668 = !DILocation(line: 1864, column: 17, scope: !4576)
!4669 = !DILocation(line: 1865, column: 51, scope: !4576)
!4670 = !DILocation(line: 1865, column: 48, scope: !4576)
!4671 = !DILocation(line: 1865, column: 62, scope: !4576)
!4672 = !DILocation(line: 1865, column: 66, scope: !4576)
!4673 = !DILocation(line: 1865, column: 5, scope: !4576)
!4674 = !DILocation(line: 1866, column: 1, scope: !4576)
!4675 = distinct !DISubprogram(name: "xackCommand", scope: !1, file: !1, line: 1877, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1877, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4683, !4686, !4687}
!4677 = !DILocalVariable(name: "c", arg: 1, scope: !4675, file: !1, line: 1877, type: !2037)
!4678 = !DILocalVariable(name: "group", scope: !4675, file: !1, line: 1878, type: !144)
!4679 = !DILocalVariable(name: "o", scope: !4675, file: !1, line: 1879, type: !367)
!4680 = !DILocalVariable(name: "acknowledged", scope: !4675, file: !1, line: 1891, type: !12)
!4681 = !DILocalVariable(name: "j", scope: !4682, file: !1, line: 1892, type: !12)
!4682 = distinct !DILexicalBlock(scope: !4675, file: !1, line: 1892, column: 5)
!4683 = !DILocalVariable(name: "id", scope: !4684, file: !1, line: 1893, type: !95)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !1, line: 1892, column: 39)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 1892, column: 5)
!4686 = !DILocalVariable(name: "buf", scope: !4684, file: !1, line: 1894, type: !1366)
!4687 = !DILocalVariable(name: "nack", scope: !4684, file: !1, line: 1901, type: !2283)
!4688 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 1896, column: 9, scope: !4684)
!4690 = !DILocation(line: 1877, column: 26, scope: !4675)
!4691 = !DILocation(line: 1878, column: 15, scope: !4675)
!4692 = !DILocation(line: 1879, column: 32, scope: !4675)
!4693 = !DILocation(line: 1879, column: 38, scope: !4675)
!4694 = !DILocation(line: 1879, column: 35, scope: !4675)
!4695 = !DILocation(line: 1879, column: 15, scope: !4675)
!4696 = !DILocation(line: 1879, column: 11, scope: !4675)
!4697 = !DILocation(line: 1880, column: 9, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4675, file: !1, line: 1880, column: 9)
!4699 = !DILocation(line: 1880, column: 9, scope: !4675)
!4700 = !DILocation(line: 1881, column: 13, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !1, line: 1881, column: 13)
!4702 = distinct !DILexicalBlock(scope: !4698, file: !1, line: 1880, column: 12)
!4703 = !DILocation(line: 1881, column: 13, scope: !4702)
!4704 = !DILocation(line: 1882, column: 35, scope: !4702)
!4705 = !DILocation(line: 1882, column: 42, scope: !4702)
!4706 = !DILocation(line: 1882, column: 39, scope: !4702)
!4707 = !DILocation(line: 1882, column: 51, scope: !4702)
!4708 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 1882, column: 17, scope: !4702)
!4710 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !4709)
!4711 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !4709)
!4712 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !4709)
!4713 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !4709)
!4714 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !4709)
!4716 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4715)
!4717 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4715)
!4718 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4715)
!4719 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4715)
!4720 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4715)
!4721 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4715)
!4722 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4715)
!4723 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4715)
!4724 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4715)
!4725 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4715)
!4726 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4715)
!4727 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4715)
!4728 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4715)
!4729 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4715)
!4730 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4715)
!4731 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4715)
!4732 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4715)
!4733 = !DILocation(line: 0, scope: !660, inlinedAt: !4715)
!4734 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !4709)
!4735 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !4709)
!4736 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !4709)
!4737 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !4709)
!4738 = !DILocation(line: 1886, column: 28, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4675, file: !1, line: 1886, column: 9)
!4740 = !DILocation(line: 1886, column: 19, scope: !4739)
!4741 = !DILocation(line: 1892, column: 14, scope: !4682)
!4742 = !DILocation(line: 1891, column: 9, scope: !4675)
!4743 = !DILocation(line: 1892, column: 28, scope: !4685)
!4744 = !DILocation(line: 1892, column: 23, scope: !4685)
!4745 = !DILocation(line: 1892, column: 5, scope: !4682)
!4746 = !DILocation(line: 1887, column: 27, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4739, file: !1, line: 1886, column: 37)
!4748 = !DILocation(line: 1887, column: 9, scope: !4747)
!4749 = !DILocation(line: 1888, column: 9, scope: !4747)
!4750 = !DILocation(line: 1893, column: 9, scope: !4684)
!4751 = !DILocation(line: 1894, column: 9, scope: !4684)
!4752 = !DILocation(line: 1894, column: 23, scope: !4684)
!4753 = !DILocation(line: 1895, column: 45, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4684, file: !1, line: 1895, column: 13)
!4755 = !DILocation(line: 1895, column: 42, scope: !4754)
!4756 = !DILocation(line: 1893, column: 18, scope: !4684)
!4757 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 1895, column: 13, scope: !4754)
!4759 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !4758)
!4760 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !4758)
!4761 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !4758)
!4762 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !4758)
!4763 = !DILocation(line: 1895, column: 60, scope: !4754)
!4764 = !DILocation(line: 1895, column: 13, scope: !4684)
!4765 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4689)
!4766 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4689)
!4767 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4689)
!4768 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4689)
!4769 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4689)
!4770 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4689)
!4771 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4689)
!4772 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4689)
!4773 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4689)
!4774 = !DILocation(line: 1901, column: 43, scope: !4684)
!4775 = !DILocation(line: 1901, column: 28, scope: !4684)
!4776 = !DILocation(line: 1901, column: 21, scope: !4684)
!4777 = !DILocation(line: 1902, column: 21, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4684, file: !1, line: 1902, column: 13)
!4779 = !DILocation(line: 1902, column: 18, scope: !4778)
!4780 = !DILocation(line: 1902, column: 13, scope: !4684)
!4781 = !DILocation(line: 1903, column: 30, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !1, line: 1902, column: 34)
!4783 = !DILocation(line: 1903, column: 13, scope: !4782)
!4784 = !DILocation(line: 1904, column: 29, scope: !4782)
!4785 = !DILocation(line: 1904, column: 39, scope: !4782)
!4786 = !DILocation(line: 1904, column: 13, scope: !4782)
!4787 = !DILocation(line: 1601, column: 33, scope: !2640, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 1905, column: 13, scope: !4782)
!4789 = !DILocation(line: 1602, column: 5, scope: !2640, inlinedAt: !4788)
!4790 = !DILocation(line: 1906, column: 25, scope: !4782)
!4791 = !DILocation(line: 1907, column: 25, scope: !4782)
!4792 = !DILocation(line: 1908, column: 9, scope: !4782)
!4793 = !DILocation(line: 1909, column: 5, scope: !4685)
!4794 = !DILocation(line: 1892, column: 35, scope: !4685)
!4795 = distinct !{!4795, !4745, !4796}
!4796 = !DILocation(line: 1909, column: 5, scope: !4682)
!4797 = !DILocation(line: 1910, column: 24, scope: !4675)
!4798 = !DILocation(line: 1910, column: 5, scope: !4675)
!4799 = !DILocation(line: 1911, column: 1, scope: !4675)
!4800 = distinct !DISubprogram(name: "xpendingCommand", scope: !1, file: !1, line: 1922, type: !2154, isLocal: false, isDefinition: true, scopeLine: 1922, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4801)
!4801 = !{!4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4817, !4818, !4819, !4821, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4832, !4833}
!4802 = !DILocalVariable(name: "c", arg: 1, scope: !4800, file: !1, line: 1922, type: !2037)
!4803 = !DILocalVariable(name: "justinfo", scope: !4800, file: !1, line: 1923, type: !12)
!4804 = !DILocalVariable(name: "key", scope: !4800, file: !1, line: 1925, type: !367)
!4805 = !DILocalVariable(name: "groupname", scope: !4800, file: !1, line: 1926, type: !367)
!4806 = !DILocalVariable(name: "consumername", scope: !4800, file: !1, line: 1927, type: !367)
!4807 = !DILocalVariable(name: "startid", scope: !4800, file: !1, line: 1928, type: !95)
!4808 = !DILocalVariable(name: "endid", scope: !4800, file: !1, line: 1928, type: !95)
!4809 = !DILocalVariable(name: "count", scope: !4800, file: !1, line: 1929, type: !246)
!4810 = !DILocalVariable(name: "o", scope: !4800, file: !1, line: 1950, type: !367)
!4811 = !DILocalVariable(name: "group", scope: !4800, file: !1, line: 1951, type: !144)
!4812 = !DILocalVariable(name: "ri", scope: !4813, file: !1, line: 1975, type: !384)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !1, line: 1973, column: 16)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !1, line: 1969, column: 13)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !1, line: 1964, column: 19)
!4816 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 1964, column: 9)
!4817 = !DILocalVariable(name: "arraylen_ptr", scope: !4813, file: !1, line: 1992, type: !7)
!4818 = !DILocalVariable(name: "arraylen", scope: !4813, file: !1, line: 1993, type: !13)
!4819 = !DILocalVariable(name: "consumer", scope: !4820, file: !1, line: 1995, type: !2290)
!4820 = distinct !DILexicalBlock(scope: !4813, file: !1, line: 1994, column: 33)
!4821 = !DILocalVariable(name: "consumer", scope: !4822, file: !1, line: 2008, type: !2290)
!4822 = distinct !DILexicalBlock(scope: !4816, file: !1, line: 2007, column: 10)
!4823 = !DILocalVariable(name: "pel", scope: !4822, file: !1, line: 2019, type: !75)
!4824 = !DILocalVariable(name: "startkey", scope: !4822, file: !1, line: 2020, type: !1366)
!4825 = !DILocalVariable(name: "endkey", scope: !4822, file: !1, line: 2021, type: !1366)
!4826 = !DILocalVariable(name: "ri", scope: !4822, file: !1, line: 2022, type: !384)
!4827 = !DILocalVariable(name: "now", scope: !4822, file: !1, line: 2023, type: !2232)
!4828 = !DILocalVariable(name: "arraylen_ptr", scope: !4822, file: !1, line: 2029, type: !7)
!4829 = !DILocalVariable(name: "arraylen", scope: !4822, file: !1, line: 2030, type: !13)
!4830 = !DILocalVariable(name: "nack", scope: !4831, file: !1, line: 2033, type: !2283)
!4831 = distinct !DILexicalBlock(scope: !4822, file: !1, line: 2032, column: 79)
!4832 = !DILocalVariable(name: "id", scope: !4831, file: !1, line: 2040, type: !95)
!4833 = !DILocalVariable(name: "elapsed", scope: !4831, file: !1, line: 2049, type: !2232)
!4834 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 2041, column: 13, scope: !4831)
!4836 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 2026, column: 9, scope: !4822)
!4838 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4839)
!4839 = distinct !DILocation(line: 2025, column: 9, scope: !4822)
!4840 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 1985, column: 13, scope: !4813)
!4842 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 1979, column: 13, scope: !4813)
!4844 = !DILocation(line: 1922, column: 30, scope: !4800)
!4845 = !DILocation(line: 1923, column: 23, scope: !4800)
!4846 = !DILocation(line: 1923, column: 28, scope: !4800)
!4847 = !DILocation(line: 1925, column: 20, scope: !4800)
!4848 = !DILocation(line: 1925, column: 17, scope: !4800)
!4849 = !DILocation(line: 1925, column: 11, scope: !4800)
!4850 = !DILocation(line: 1926, column: 23, scope: !4800)
!4851 = !DILocation(line: 1926, column: 11, scope: !4800)
!4852 = !DILocation(line: 1927, column: 35, scope: !4800)
!4853 = !DILocation(line: 1927, column: 26, scope: !4800)
!4854 = !DILocation(line: 1927, column: 43, scope: !4800)
!4855 = !DILocation(line: 1927, column: 11, scope: !4800)
!4856 = !DILocation(line: 1928, column: 5, scope: !4800)
!4857 = !DILocation(line: 1929, column: 5, scope: !4800)
!4858 = !DILocation(line: 1939, column: 9, scope: !4800)
!4859 = !DILocation(line: 1932, column: 22, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 1932, column: 9)
!4861 = !DILocation(line: 1933, column: 27, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4860, file: !1, line: 1932, column: 55)
!4863 = !DILocation(line: 1933, column: 9, scope: !4862)
!4864 = !DILocation(line: 1934, column: 9, scope: !4862)
!4865 = !DILocation(line: 1939, column: 17, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 1939, column: 9)
!4867 = !DILocation(line: 1940, column: 44, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4869, file: !1, line: 1940, column: 13)
!4869 = distinct !DILexicalBlock(scope: !4866, file: !1, line: 1939, column: 23)
!4870 = !DILocation(line: 1929, column: 15, scope: !4800)
!4871 = !DILocation(line: 1940, column: 13, scope: !4868)
!4872 = !DILocation(line: 1940, column: 68, scope: !4868)
!4873 = !DILocation(line: 1940, column: 13, scope: !4869)
!4874 = !DILocation(line: 1942, column: 13, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4869, file: !1, line: 1942, column: 13)
!4876 = !DILocation(line: 1942, column: 19, scope: !4875)
!4877 = !DILocation(line: 1942, column: 13, scope: !4869)
!4878 = !DILocation(line: 1942, column: 30, scope: !4875)
!4879 = !DILocation(line: 1942, column: 24, scope: !4875)
!4880 = !DILocation(line: 1943, column: 39, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4869, file: !1, line: 1943, column: 13)
!4882 = !DILocation(line: 1943, column: 36, scope: !4881)
!4883 = !DILocation(line: 1928, column: 14, scope: !4800)
!4884 = !DILocation(line: 1142, column: 34, scope: !3064, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 1943, column: 13, scope: !4881)
!4886 = !DILocation(line: 1142, column: 43, scope: !3064, inlinedAt: !4885)
!4887 = !DILocation(line: 1142, column: 56, scope: !3064, inlinedAt: !4885)
!4888 = !DILocation(line: 1142, column: 69, scope: !3064, inlinedAt: !4885)
!4889 = !DILocation(line: 1143, column: 12, scope: !3064, inlinedAt: !4885)
!4890 = !DILocation(line: 1943, column: 59, scope: !4881)
!4891 = !DILocation(line: 1943, column: 13, scope: !4869)
!4892 = !DILocation(line: 1945, column: 39, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4869, file: !1, line: 1945, column: 13)
!4894 = !DILocation(line: 1945, column: 36, scope: !4893)
!4895 = !DILocation(line: 1928, column: 23, scope: !4800)
!4896 = !DILocation(line: 1142, column: 34, scope: !3064, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 1945, column: 13, scope: !4893)
!4898 = !DILocation(line: 1142, column: 43, scope: !3064, inlinedAt: !4897)
!4899 = !DILocation(line: 1142, column: 56, scope: !3064, inlinedAt: !4897)
!4900 = !DILocation(line: 1142, column: 69, scope: !3064, inlinedAt: !4897)
!4901 = !DILocation(line: 1143, column: 12, scope: !3064, inlinedAt: !4897)
!4902 = !DILocation(line: 1945, column: 66, scope: !4893)
!4903 = !DILocation(line: 1945, column: 13, scope: !4869)
!4904 = !DILocation(line: 1950, column: 38, scope: !4800)
!4905 = !DILocation(line: 1950, column: 35, scope: !4800)
!4906 = !DILocation(line: 1950, column: 32, scope: !4800)
!4907 = !DILocation(line: 1950, column: 15, scope: !4800)
!4908 = !DILocation(line: 1950, column: 11, scope: !4800)
!4909 = !DILocation(line: 1953, column: 11, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 1953, column: 9)
!4911 = !DILocation(line: 1959, column: 66, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !1, line: 1956, column: 5)
!4913 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 1954, column: 9)
!4914 = !DILocation(line: 1953, column: 14, scope: !4910)
!4915 = !DILocation(line: 1953, column: 9, scope: !4800)
!4916 = !DILocation(line: 1955, column: 36, scope: !4913)
!4917 = !DILocation(line: 1955, column: 51, scope: !4913)
!4918 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 1955, column: 18, scope: !4913)
!4920 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !4919)
!4921 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !4919)
!4922 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !4919)
!4923 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !4919)
!4924 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !4919)
!4926 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !4925)
!4927 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !4925)
!4928 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !4925)
!4929 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !4925)
!4930 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !4925)
!4931 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !4925)
!4932 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !4925)
!4933 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !4925)
!4934 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !4925)
!4935 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !4925)
!4936 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !4925)
!4937 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !4925)
!4938 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !4925)
!4939 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !4925)
!4940 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !4925)
!4941 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !4925)
!4942 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !4925)
!4943 = !DILocation(line: 0, scope: !660, inlinedAt: !4925)
!4944 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !4919)
!4945 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !4919)
!4946 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !4919)
!4947 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !4919)
!4948 = !DILocation(line: 1955, column: 57, scope: !4913)
!4949 = !DILocation(line: 1951, column: 15, scope: !4800)
!4950 = !DILocation(line: 1959, column: 44, scope: !4912)
!4951 = !DILocation(line: 1957, column: 9, scope: !4912)
!4952 = !DILocation(line: 1960, column: 9, scope: !4912)
!4953 = !DILocation(line: 1964, column: 9, scope: !4800)
!4954 = !DILocation(line: 1965, column: 9, scope: !4815)
!4955 = !DILocation(line: 1967, column: 43, scope: !4815)
!4956 = !DILocation(line: 1967, column: 28, scope: !4815)
!4957 = !DILocation(line: 1967, column: 9, scope: !4815)
!4958 = !DILocation(line: 1969, column: 28, scope: !4814)
!4959 = !DILocation(line: 1969, column: 13, scope: !4814)
!4960 = !DILocation(line: 1969, column: 33, scope: !4814)
!4961 = !DILocation(line: 1969, column: 13, scope: !4815)
!4962 = !DILocation(line: 1970, column: 31, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4814, file: !1, line: 1969, column: 39)
!4964 = !{!2827, !110, i64 80}
!4965 = !DILocation(line: 1970, column: 13, scope: !4963)
!4966 = !DILocation(line: 1971, column: 31, scope: !4963)
!4967 = !DILocation(line: 1971, column: 13, scope: !4963)
!4968 = !DILocation(line: 1972, column: 31, scope: !4963)
!4969 = !DILocation(line: 1972, column: 13, scope: !4963)
!4970 = !DILocation(line: 1973, column: 9, scope: !4963)
!4971 = !DILocation(line: 1975, column: 13, scope: !4813)
!4972 = !DILocation(line: 1976, column: 33, scope: !4813)
!4973 = !DILocation(line: 1975, column: 25, scope: !4813)
!4974 = !DILocation(line: 1976, column: 13, scope: !4813)
!4975 = !DILocation(line: 1977, column: 13, scope: !4813)
!4976 = !DILocation(line: 1978, column: 13, scope: !4813)
!4977 = !DILocation(line: 1979, column: 31, scope: !4813)
!4978 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4843)
!4979 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4843)
!4980 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4843)
!4981 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4843)
!4982 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4843)
!4983 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !4843)
!4984 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !4843)
!4985 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4843)
!4986 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !4843)
!4987 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !4843)
!4988 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4843)
!4989 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !4990)
!4990 = distinct !DILocation(line: 1980, column: 13, scope: !4813)
!4991 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !4990)
!4992 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !4990)
!4993 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !4990)
!4994 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !4990)
!4995 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !4990)
!4996 = !DILocation(line: 1983, column: 13, scope: !4813)
!4997 = !DILocation(line: 1984, column: 13, scope: !4813)
!4998 = !DILocation(line: 1985, column: 31, scope: !4813)
!4999 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4841)
!5000 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4841)
!5001 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4841)
!5002 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4841)
!5003 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4841)
!5004 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !4841)
!5005 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !4841)
!5006 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4841)
!5007 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !4841)
!5008 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !4841)
!5009 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4841)
!5010 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !5011)
!5011 = distinct !DILocation(line: 1986, column: 13, scope: !4813)
!5012 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !5011)
!5013 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !5011)
!5014 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !5011)
!5015 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !5011)
!5016 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !5011)
!5017 = !DILocation(line: 1987, column: 13, scope: !4813)
!5018 = !DILocation(line: 1990, column: 33, scope: !4813)
!5019 = !DILocation(line: 1990, column: 13, scope: !4813)
!5020 = !DILocation(line: 1991, column: 13, scope: !4813)
!5021 = !DILocation(line: 1992, column: 34, scope: !4813)
!5022 = !DILocation(line: 1992, column: 19, scope: !4813)
!5023 = !DILocation(line: 1993, column: 20, scope: !4813)
!5024 = !DILocation(line: 1994, column: 19, scope: !4813)
!5025 = !DILocation(line: 1994, column: 13, scope: !4813)
!5026 = !DILocation(line: 1995, column: 47, scope: !4820)
!5027 = !DILocation(line: 1995, column: 33, scope: !4820)
!5028 = !DILocation(line: 1996, column: 39, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 1996, column: 21)
!5030 = !DILocation(line: 1996, column: 21, scope: !5029)
!5031 = !DILocation(line: 1996, column: 44, scope: !5029)
!5032 = !DILocation(line: 1996, column: 21, scope: !4820)
!5033 = distinct !{!5033, !5025, !5034}
!5034 = !DILocation(line: 2001, column: 13, scope: !4813)
!5035 = !DILocation(line: 1997, column: 17, scope: !4820)
!5036 = !DILocation(line: 1998, column: 42, scope: !4820)
!5037 = !DILocation(line: 1998, column: 49, scope: !4820)
!5038 = !DILocation(line: 1998, column: 17, scope: !4820)
!5039 = !DILocation(line: 1999, column: 58, scope: !4820)
!5040 = !DILocation(line: 1999, column: 40, scope: !4820)
!5041 = !DILocation(line: 1999, column: 17, scope: !4820)
!5042 = !DILocation(line: 2000, column: 25, scope: !4820)
!5043 = !DILocation(line: 0, scope: !4820)
!5044 = !DILocation(line: 2002, column: 13, scope: !4813)
!5045 = !DILocation(line: 2003, column: 13, scope: !4813)
!5046 = !DILocation(line: 2004, column: 9, scope: !4814)
!5047 = !DILocation(line: 2008, column: 36, scope: !4822)
!5048 = !DILocation(line: 2009, column: 74, scope: !4822)
!5049 = !DILocation(line: 1654, column: 48, scope: !4015, inlinedAt: !5050)
!5050 = distinct !DILocation(line: 2009, column: 33, scope: !4822)
!5051 = !DILocation(line: 1654, column: 56, scope: !4015, inlinedAt: !5050)
!5052 = !DILocation(line: 1654, column: 66, scope: !4015, inlinedAt: !5050)
!5053 = !DILocation(line: 1655, column: 44, scope: !4015, inlinedAt: !5050)
!5054 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 1656, column: 32, scope: !4015, inlinedAt: !5050)
!5056 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !5055)
!5057 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !5055)
!5058 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !5055)
!5059 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !5055)
!5060 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !5055)
!5061 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !5055)
!5062 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !5055)
!5063 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !5055)
!5064 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !5055)
!5065 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !5055)
!5066 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !5055)
!5067 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !5055)
!5068 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !5055)
!5069 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !5055)
!5070 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !5055)
!5071 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !5055)
!5072 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !5055)
!5073 = !DILocation(line: 0, scope: !660, inlinedAt: !5055)
!5074 = !DILocation(line: 1655, column: 32, scope: !4015, inlinedAt: !5050)
!5075 = !DILocation(line: 1655, column: 21, scope: !4015, inlinedAt: !5050)
!5076 = !DILocation(line: 1657, column: 21, scope: !4050, inlinedAt: !5050)
!5077 = !DILocation(line: 1657, column: 18, scope: !4050, inlinedAt: !5050)
!5078 = !DILocation(line: 1657, column: 9, scope: !4015, inlinedAt: !5050)
!5079 = !DILocation(line: 1665, column: 27, scope: !4015, inlinedAt: !5050)
!5080 = !DILocation(line: 1665, column: 15, scope: !4015, inlinedAt: !5050)
!5081 = !DILocation(line: 1665, column: 25, scope: !4015, inlinedAt: !5050)
!5082 = !DILocation(line: 1666, column: 5, scope: !4015, inlinedAt: !5050)
!5083 = !DILocation(line: 2008, column: 25, scope: !4822)
!5084 = !DILocation(line: 2015, column: 13, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !1, line: 2014, column: 47)
!5086 = distinct !DILexicalBlock(scope: !4822, file: !1, line: 2014, column: 13)
!5087 = !DILocation(line: 2014, column: 38, scope: !5086)
!5088 = !DILocation(line: 2019, column: 41, scope: !4822)
!5089 = !DILocation(line: 2019, column: 54, scope: !4822)
!5090 = !DILocation(line: 2019, column: 20, scope: !4822)
!5091 = !DILocation(line: 2019, column: 14, scope: !4822)
!5092 = !DILocation(line: 2020, column: 9, scope: !4822)
!5093 = !DILocation(line: 2020, column: 23, scope: !4822)
!5094 = !DILocation(line: 2021, column: 9, scope: !4822)
!5095 = !DILocation(line: 2021, column: 23, scope: !4822)
!5096 = !DILocation(line: 2022, column: 9, scope: !4822)
!5097 = !DILocation(line: 2023, column: 24, scope: !4822)
!5098 = !DILocation(line: 2023, column: 18, scope: !4822)
!5099 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4839)
!5100 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4839)
!5101 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4839)
!5102 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4839)
!5103 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !4839)
!5104 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4839)
!5105 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4839)
!5106 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !4839)
!5107 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4839)
!5108 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4839)
!5109 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4839)
!5110 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4837)
!5111 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4837)
!5112 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4837)
!5113 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4837)
!5114 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4837)
!5115 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4837)
!5116 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4837)
!5117 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4837)
!5118 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4837)
!5119 = !DILocation(line: 2022, column: 21, scope: !4822)
!5120 = !DILocation(line: 2027, column: 9, scope: !4822)
!5121 = !DILocation(line: 2028, column: 9, scope: !4822)
!5122 = !DILocation(line: 2029, column: 30, scope: !4822)
!5123 = !DILocation(line: 2029, column: 15, scope: !4822)
!5124 = !DILocation(line: 2030, column: 16, scope: !4822)
!5125 = !DILocation(line: 2032, column: 50, scope: !4822)
!5126 = !DILocation(line: 2032, column: 15, scope: !4822)
!5127 = !DILocation(line: 2032, column: 21, scope: !4822)
!5128 = !DILocation(line: 2032, column: 24, scope: !4822)
!5129 = !DILocation(line: 2032, column: 37, scope: !4822)
!5130 = !DILocation(line: 2032, column: 64, scope: !4822)
!5131 = !DILocation(line: 2032, column: 40, scope: !4822)
!5132 = !DILocation(line: 2032, column: 73, scope: !4822)
!5133 = !DILocation(line: 2032, column: 9, scope: !4822)
!5134 = !DILocation(line: 2033, column: 35, scope: !4831)
!5135 = !DILocation(line: 2033, column: 25, scope: !4831)
!5136 = !DILocation(line: 2035, column: 21, scope: !4831)
!5137 = !DILocation(line: 2036, column: 18, scope: !4831)
!5138 = !DILocation(line: 2037, column: 13, scope: !4831)
!5139 = !DILocation(line: 2041, column: 31, scope: !4831)
!5140 = !DILocation(line: 2040, column: 22, scope: !4831)
!5141 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4835)
!5142 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4835)
!5143 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4835)
!5144 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4835)
!5145 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4835)
!5146 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4835)
!5147 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4835)
!5148 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 2042, column: 13, scope: !4831)
!5150 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !5149)
!5151 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !5149)
!5152 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !5149)
!5153 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !5149)
!5154 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !5149)
!5155 = !DILocation(line: 2045, column: 41, scope: !4831)
!5156 = !DILocation(line: 2045, column: 51, scope: !4831)
!5157 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !5158)
!5158 = distinct !DILocation(line: 2046, column: 33, scope: !4831)
!5159 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !5158)
!5160 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !5158)
!5161 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !5158)
!5162 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !5158)
!5163 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !5158)
!5164 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !5158)
!5165 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !5158)
!5166 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !5158)
!5167 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !5158)
!5168 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !5158)
!5169 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !5158)
!5170 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !5158)
!5171 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !5158)
!5172 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !5158)
!5173 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !5158)
!5174 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !5158)
!5175 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !5158)
!5176 = !DILocation(line: 0, scope: !660, inlinedAt: !5158)
!5177 = !DILocation(line: 2045, column: 13, scope: !4831)
!5178 = !DILocation(line: 2049, column: 44, scope: !4831)
!5179 = !DILocation(line: 2049, column: 36, scope: !4831)
!5180 = !DILocation(line: 2049, column: 22, scope: !4831)
!5181 = !DILocation(line: 2050, column: 17, scope: !4831)
!5182 = !DILocation(line: 2051, column: 13, scope: !4831)
!5183 = !DILocation(line: 2054, column: 38, scope: !4831)
!5184 = !DILocation(line: 2054, column: 13, scope: !4831)
!5185 = distinct !{!5185, !5133, !5186}
!5186 = !DILocation(line: 2055, column: 9, scope: !4822)
!5187 = !DILocation(line: 0, scope: !4831)
!5188 = !DILocation(line: 2056, column: 9, scope: !4822)
!5189 = !DILocation(line: 2057, column: 9, scope: !4822)
!5190 = !DILocation(line: 2058, column: 5, scope: !4816)
!5191 = !DILocation(line: 2059, column: 1, scope: !4800)
!5192 = distinct !DISubprogram(name: "xclaimCommand", scope: !1, file: !1, line: 2127, type: !2154, isLocal: false, isDefinition: true, scopeLine: 2127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5193)
!5193 = !{!5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5207, !5208, !5209, !5210, !5211, !5215, !5216, !5217, !5218, !5219, !5221, !5224, !5225, !5226, !5229, !5230, !5231, !5232, !5237}
!5194 = !DILocalVariable(name: "c", arg: 1, scope: !5192, file: !1, line: 2127, type: !2037)
!5195 = !DILocalVariable(name: "group", scope: !5192, file: !1, line: 2128, type: !144)
!5196 = !DILocalVariable(name: "o", scope: !5192, file: !1, line: 2129, type: !367)
!5197 = !DILocalVariable(name: "minidle", scope: !5192, file: !1, line: 2130, type: !246)
!5198 = !DILocalVariable(name: "retrycount", scope: !5192, file: !1, line: 2131, type: !246)
!5199 = !DILocalVariable(name: "deliverytime", scope: !5192, file: !1, line: 2132, type: !2232)
!5200 = !DILocalVariable(name: "force", scope: !5192, file: !1, line: 2133, type: !12)
!5201 = !DILocalVariable(name: "justid", scope: !5192, file: !1, line: 2134, type: !12)
!5202 = !DILocalVariable(name: "j", scope: !5192, file: !1, line: 2159, type: !12)
!5203 = !DILocalVariable(name: "id", scope: !5204, file: !1, line: 2161, type: !95)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !1, line: 2160, column: 35)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !1, line: 2160, column: 5)
!5206 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2160, column: 5)
!5207 = !DILocalVariable(name: "last_id_arg", scope: !5192, file: !1, line: 2164, type: !12)
!5208 = !DILocalVariable(name: "now", scope: !5192, file: !1, line: 2168, type: !2232)
!5209 = !DILocalVariable(name: "last_id", scope: !5192, file: !1, line: 2169, type: !95)
!5210 = !DILocalVariable(name: "propagate_last_id", scope: !5192, file: !1, line: 2170, type: !12)
!5211 = !DILocalVariable(name: "moreargs", scope: !5212, file: !1, line: 2172, type: !12)
!5212 = distinct !DILexicalBlock(scope: !5213, file: !1, line: 2171, column: 30)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !1, line: 2171, column: 5)
!5214 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2171, column: 5)
!5215 = !DILocalVariable(name: "opt", scope: !5212, file: !1, line: 2173, type: !10)
!5216 = !DILocalVariable(name: "consumer", scope: !5192, file: !1, line: 2225, type: !2290)
!5217 = !DILocalVariable(name: "arraylenptr", scope: !5192, file: !1, line: 2226, type: !7)
!5218 = !DILocalVariable(name: "arraylen", scope: !5192, file: !1, line: 2227, type: !13)
!5219 = !DILocalVariable(name: "j", scope: !5220, file: !1, line: 2228, type: !12)
!5220 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2228, column: 5)
!5221 = !DILocalVariable(name: "id", scope: !5222, file: !1, line: 2229, type: !95)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !1, line: 2228, column: 44)
!5223 = distinct !DILexicalBlock(scope: !5220, file: !1, line: 2228, column: 5)
!5224 = !DILocalVariable(name: "buf", scope: !5222, file: !1, line: 2230, type: !1366)
!5225 = !DILocalVariable(name: "nack", scope: !5222, file: !1, line: 2236, type: !2283)
!5226 = !DILocalVariable(name: "myiterator", scope: !5227, file: !1, line: 2244, type: !1217)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !1, line: 2243, column: 43)
!5228 = distinct !DILexicalBlock(scope: !5222, file: !1, line: 2243, column: 13)
!5229 = !DILocalVariable(name: "numfields", scope: !5227, file: !1, line: 2246, type: !196)
!5230 = !DILocalVariable(name: "found", scope: !5227, file: !1, line: 2247, type: !12)
!5231 = !DILocalVariable(name: "item_id", scope: !5227, file: !1, line: 2248, type: !95)
!5232 = !DILocalVariable(name: "this_idle", scope: !5233, file: !1, line: 2268, type: !2232)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !1, line: 2267, column: 44)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !1, line: 2267, column: 17)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !1, line: 2260, column: 34)
!5236 = distinct !DILexicalBlock(scope: !5222, file: !1, line: 2260, column: 13)
!5237 = !DILocalVariable(name: "emitted", scope: !5238, file: !1, line: 2292, type: !13)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !1, line: 2291, column: 20)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !1, line: 2289, column: 17)
!5240 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !5241)
!5241 = distinct !DILocation(line: 2233, column: 9, scope: !5222)
!5242 = !DILocation(line: 2127, column: 28, scope: !5192)
!5243 = !DILocation(line: 2128, column: 15, scope: !5192)
!5244 = !DILocation(line: 2129, column: 32, scope: !5192)
!5245 = !DILocation(line: 2129, column: 38, scope: !5192)
!5246 = !DILocation(line: 2129, column: 35, scope: !5192)
!5247 = !DILocation(line: 2129, column: 15, scope: !5192)
!5248 = !DILocation(line: 2129, column: 11, scope: !5192)
!5249 = !DILocation(line: 2130, column: 5, scope: !5192)
!5250 = !DILocation(line: 2131, column: 5, scope: !5192)
!5251 = !DILocation(line: 2131, column: 15, scope: !5192)
!5252 = !DILocation(line: 2132, column: 5, scope: !5192)
!5253 = !DILocation(line: 2132, column: 14, scope: !5192)
!5254 = !DILocation(line: 2133, column: 9, scope: !5192)
!5255 = !DILocation(line: 2134, column: 9, scope: !5192)
!5256 = !DILocation(line: 2136, column: 9, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2136, column: 9)
!5258 = !DILocation(line: 2136, column: 9, scope: !5192)
!5259 = !DILocation(line: 0, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2150, column: 9)
!5261 = !DILocation(line: 2137, column: 13, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !1, line: 2137, column: 13)
!5263 = distinct !DILexicalBlock(scope: !5257, file: !1, line: 2136, column: 12)
!5264 = !DILocation(line: 2137, column: 13, scope: !5263)
!5265 = !DILocation(line: 2138, column: 35, scope: !5263)
!5266 = !DILocation(line: 2138, column: 42, scope: !5263)
!5267 = !DILocation(line: 2138, column: 39, scope: !5263)
!5268 = !DILocation(line: 2138, column: 51, scope: !5263)
!5269 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 2138, column: 17, scope: !5263)
!5271 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !5270)
!5272 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !5270)
!5273 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !5270)
!5274 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !5270)
!5275 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !5276)
!5276 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !5270)
!5277 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !5276)
!5278 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !5276)
!5279 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !5276)
!5280 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !5276)
!5281 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !5276)
!5282 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !5276)
!5283 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !5276)
!5284 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !5276)
!5285 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !5276)
!5286 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !5276)
!5287 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !5276)
!5288 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !5276)
!5289 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !5276)
!5290 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !5276)
!5291 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !5276)
!5292 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !5276)
!5293 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !5276)
!5294 = !DILocation(line: 0, scope: !660, inlinedAt: !5276)
!5295 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !5270)
!5296 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !5270)
!5297 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !5270)
!5298 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !5270)
!5299 = !DILocation(line: 2143, column: 28, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2143, column: 9)
!5301 = !DILocation(line: 2143, column: 19, scope: !5300)
!5302 = !DILocation(line: 2145, column: 61, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5300, file: !1, line: 2143, column: 37)
!5304 = !DILocation(line: 2145, column: 73, scope: !5303)
!5305 = !DILocation(line: 2146, column: 38, scope: !5303)
!5306 = !DILocation(line: 2146, column: 50, scope: !5303)
!5307 = !DILocation(line: 2144, column: 9, scope: !5303)
!5308 = !DILocation(line: 2147, column: 9, scope: !5303)
!5309 = !DILocation(line: 2150, column: 40, scope: !5260)
!5310 = !DILocation(line: 2130, column: 15, scope: !5192)
!5311 = !DILocation(line: 2150, column: 9, scope: !5260)
!5312 = !DILocation(line: 2152, column: 9, scope: !5260)
!5313 = !DILocation(line: 2150, column: 9, scope: !5192)
!5314 = !DILocation(line: 2153, column: 9, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2153, column: 9)
!5316 = !DILocation(line: 2153, column: 17, scope: !5315)
!5317 = !DILocation(line: 2153, column: 9, scope: !5192)
!5318 = !DILocation(line: 2153, column: 30, scope: !5315)
!5319 = !DILocation(line: 2153, column: 22, scope: !5315)
!5320 = !DILocation(line: 2159, column: 9, scope: !5192)
!5321 = !DILocation(line: 2161, column: 9, scope: !5204)
!5322 = !DILocation(line: 2160, column: 24, scope: !5205)
!5323 = !DILocation(line: 2160, column: 19, scope: !5205)
!5324 = !DILocation(line: 2160, column: 5, scope: !5206)
!5325 = !DILocation(line: 2162, column: 48, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5204, file: !1, line: 2162, column: 13)
!5327 = !DILocation(line: 2162, column: 45, scope: !5326)
!5328 = !DILocation(line: 2161, column: 18, scope: !5204)
!5329 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !5330)
!5330 = distinct !DILocation(line: 2162, column: 13, scope: !5326)
!5331 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !5330)
!5332 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !5330)
!5333 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !5330)
!5334 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !5330)
!5335 = !DILocation(line: 2162, column: 63, scope: !5326)
!5336 = !DILocation(line: 2163, column: 5, scope: !5205)
!5337 = !DILocation(line: 2160, column: 31, scope: !5205)
!5338 = distinct !{!5338, !5324, !5339}
!5339 = !DILocation(line: 2163, column: 5, scope: !5206)
!5340 = !DILocation(line: 2168, column: 20, scope: !5192)
!5341 = !DILocation(line: 0, scope: !5205)
!5342 = !DILocation(line: 2164, column: 9, scope: !5192)
!5343 = !DILocation(line: 2168, column: 14, scope: !5192)
!5344 = !DILocation(line: 2169, column: 5, scope: !5192)
!5345 = !DILocation(line: 2169, column: 14, scope: !5192)
!5346 = !DILocation(line: 2170, column: 9, scope: !5192)
!5347 = !DILocation(line: 2171, column: 19, scope: !5213)
!5348 = !DILocation(line: 2171, column: 14, scope: !5213)
!5349 = !DILocation(line: 2171, column: 5, scope: !5214)
!5350 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !5351)
!5351 = distinct !DILocation(line: 2203, column: 9, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2203, column: 9)
!5353 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !5351)
!5354 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !5351)
!5355 = !DILocation(line: 2173, column: 24, scope: !5212)
!5356 = !DILocation(line: 2173, column: 21, scope: !5212)
!5357 = !DILocation(line: 2173, column: 33, scope: !5212)
!5358 = !DILocation(line: 2173, column: 15, scope: !5212)
!5359 = !DILocation(line: 2174, column: 14, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5212, file: !1, line: 2174, column: 13)
!5361 = !DILocation(line: 2174, column: 13, scope: !5212)
!5362 = !DILocation(line: 2176, column: 21, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5360, file: !1, line: 2176, column: 20)
!5364 = !DILocation(line: 2176, column: 20, scope: !5360)
!5365 = !DILocation(line: 2178, column: 21, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5363, file: !1, line: 2178, column: 20)
!5367 = !DILocation(line: 2178, column: 47, scope: !5366)
!5368 = !DILocation(line: 2178, column: 44, scope: !5366)
!5369 = !DILocation(line: 2180, column: 48, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !1, line: 2180, column: 17)
!5371 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 2178, column: 57)
!5372 = !DILocation(line: 2180, column: 17, scope: !5370)
!5373 = !DILocation(line: 2182, column: 17, scope: !5370)
!5374 = !DILocation(line: 2180, column: 17, scope: !5371)
!5375 = !DILocation(line: 2183, column: 34, scope: !5371)
!5376 = !DILocation(line: 2183, column: 32, scope: !5371)
!5377 = !DILocation(line: 2183, column: 26, scope: !5371)
!5378 = !DILocation(line: 2184, column: 9, scope: !5371)
!5379 = !DILocation(line: 2184, column: 21, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 2184, column: 20)
!5381 = !DILocation(line: 2184, column: 44, scope: !5380)
!5382 = !DILocation(line: 2186, column: 48, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !1, line: 2186, column: 17)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !1, line: 2184, column: 57)
!5385 = !DILocation(line: 2186, column: 17, scope: !5383)
!5386 = !DILocation(line: 2188, column: 17, scope: !5383)
!5387 = !DILocation(line: 2186, column: 17, scope: !5384)
!5388 = !DILocation(line: 2189, column: 21, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5380, file: !1, line: 2189, column: 20)
!5390 = !DILocation(line: 2189, column: 50, scope: !5389)
!5391 = !DILocation(line: 2191, column: 48, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !1, line: 2191, column: 17)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !1, line: 2189, column: 63)
!5394 = !DILocation(line: 2191, column: 17, scope: !5392)
!5395 = !DILocation(line: 2193, column: 17, scope: !5392)
!5396 = !DILocation(line: 2191, column: 17, scope: !5393)
!5397 = !DILocation(line: 2194, column: 21, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5389, file: !1, line: 2194, column: 20)
!5399 = !DILocation(line: 2194, column: 46, scope: !5398)
!5400 = !DILocation(line: 2196, column: 46, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !1, line: 2196, column: 17)
!5402 = distinct !DILexicalBlock(scope: !5398, file: !1, line: 2194, column: 59)
!5403 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 2196, column: 17, scope: !5401)
!5405 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !5404)
!5406 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !5404)
!5407 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !5404)
!5408 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !5404)
!5409 = !DILocation(line: 2196, column: 69, scope: !5401)
!5410 = !DILocation(line: 2196, column: 17, scope: !5402)
!5411 = !DILocation(line: 2198, column: 13, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5398, file: !1, line: 2197, column: 16)
!5413 = !DILocation(line: 2199, column: 13, scope: !5412)
!5414 = !DILocation(line: 0, scope: !5206)
!5415 = !DILocation(line: 0, scope: !5192)
!5416 = !DILocation(line: 0, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5360, file: !1, line: 2174, column: 39)
!5418 = !DILocation(line: 2171, column: 26, scope: !5213)
!5419 = distinct !{!5419, !5349, !5420}
!5420 = !DILocation(line: 2201, column: 5, scope: !5214)
!5421 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !5351)
!5422 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !5351)
!5423 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !5351)
!5424 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !5351)
!5425 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !5351)
!5426 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !5351)
!5427 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !5351)
!5428 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !5351)
!5429 = !DILocation(line: 2204, column: 26, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5352, file: !1, line: 2203, column: 56)
!5431 = !DILocation(line: 2206, column: 5, scope: !5430)
!5432 = !DILocation(line: 2208, column: 9, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2208, column: 9)
!5434 = !DILocation(line: 2208, column: 22, scope: !5433)
!5435 = !DILocation(line: 2208, column: 9, scope: !5192)
!5436 = !DILocation(line: 2216, column: 26, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !1, line: 2216, column: 13)
!5438 = distinct !DILexicalBlock(scope: !5433, file: !1, line: 2208, column: 29)
!5439 = !DILocation(line: 2216, column: 46, scope: !5437)
!5440 = !DILocation(line: 2216, column: 30, scope: !5437)
!5441 = !DILocation(line: 2216, column: 66, scope: !5437)
!5442 = !DILocation(line: 2216, column: 53, scope: !5437)
!5443 = !DILocation(line: 2221, column: 22, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5433, file: !1, line: 2217, column: 12)
!5445 = !DILocation(line: 2225, column: 62, scope: !5192)
!5446 = !DILocation(line: 2225, column: 59, scope: !5192)
!5447 = !DILocation(line: 2225, column: 71, scope: !5192)
!5448 = !DILocation(line: 2225, column: 32, scope: !5192)
!5449 = !DILocation(line: 2225, column: 21, scope: !5192)
!5450 = !DILocation(line: 2226, column: 25, scope: !5192)
!5451 = !DILocation(line: 2226, column: 11, scope: !5192)
!5452 = !DILocation(line: 2227, column: 12, scope: !5192)
!5453 = !DILocation(line: 2228, column: 14, scope: !5220)
!5454 = !DILocation(line: 2228, column: 23, scope: !5223)
!5455 = !DILocation(line: 2228, column: 5, scope: !5220)
!5456 = !DILocation(line: 0, scope: !5235)
!5457 = !DILocation(line: 2304, column: 9, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5192, file: !1, line: 2304, column: 9)
!5459 = !DILocation(line: 2304, column: 9, scope: !5192)
!5460 = !DILocation(line: 2229, column: 9, scope: !5222)
!5461 = !DILocation(line: 2230, column: 9, scope: !5222)
!5462 = !DILocation(line: 2230, column: 23, scope: !5222)
!5463 = !DILocation(line: 2231, column: 45, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5222, file: !1, line: 2231, column: 13)
!5465 = !DILocation(line: 2231, column: 42, scope: !5464)
!5466 = !DILocation(line: 2229, column: 18, scope: !5222)
!5467 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !5468)
!5468 = distinct !DILocation(line: 2231, column: 13, scope: !5464)
!5469 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !5468)
!5470 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !5468)
!5471 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !5468)
!5472 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !5468)
!5473 = !DILocation(line: 2231, column: 60, scope: !5464)
!5474 = !DILocation(line: 2231, column: 13, scope: !5222)
!5475 = !DILocation(line: 2232, column: 13, scope: !5464)
!5476 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !5241)
!5477 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !5241)
!5478 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !5241)
!5479 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !5241)
!5480 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !5241)
!5481 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !5241)
!5482 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !5241)
!5483 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !5241)
!5484 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !5241)
!5485 = !DILocation(line: 2236, column: 43, scope: !5222)
!5486 = !DILocation(line: 2236, column: 28, scope: !5222)
!5487 = !DILocation(line: 2236, column: 21, scope: !5222)
!5488 = !DILocation(line: 2243, column: 30, scope: !5228)
!5489 = !DILocation(line: 2243, column: 27, scope: !5228)
!5490 = !DILocation(line: 2243, column: 19, scope: !5228)
!5491 = !DILocation(line: 2244, column: 13, scope: !5227)
!5492 = !DILocation(line: 2245, column: 48, scope: !5227)
!5493 = !DILocation(line: 2244, column: 28, scope: !5227)
!5494 = !DILocation(line: 2245, column: 13, scope: !5227)
!5495 = !DILocation(line: 2246, column: 13, scope: !5227)
!5496 = !DILocation(line: 2247, column: 17, scope: !5227)
!5497 = !DILocation(line: 2248, column: 13, scope: !5227)
!5498 = !DILocation(line: 2246, column: 21, scope: !5227)
!5499 = !DILocation(line: 2248, column: 22, scope: !5227)
!5500 = !DILocation(line: 2249, column: 17, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5227, file: !1, line: 2249, column: 17)
!5502 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !5503)
!5503 = distinct !DILocation(line: 2250, column: 13, scope: !5227)
!5504 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !5503)
!5505 = !DILocation(line: 2253, column: 17, scope: !5227)
!5506 = !DILocation(line: 1592, column: 46, scope: !2614, inlinedAt: !5507)
!5507 = distinct !DILocation(line: 2256, column: 20, scope: !5227)
!5508 = !DILocation(line: 1593, column: 24, scope: !2614, inlinedAt: !5507)
!5509 = !DILocation(line: 1593, column: 17, scope: !2614, inlinedAt: !5507)
!5510 = !DILocation(line: 1594, column: 27, scope: !2614, inlinedAt: !5507)
!5511 = !DILocation(line: 1594, column: 11, scope: !2614, inlinedAt: !5507)
!5512 = !DILocation(line: 1594, column: 25, scope: !2614, inlinedAt: !5507)
!5513 = !DILocation(line: 1595, column: 11, scope: !2614, inlinedAt: !5507)
!5514 = !DILocation(line: 1595, column: 26, scope: !2614, inlinedAt: !5507)
!5515 = !DILocation(line: 1596, column: 11, scope: !2614, inlinedAt: !5507)
!5516 = !DILocation(line: 1596, column: 20, scope: !2614, inlinedAt: !5507)
!5517 = !DILocation(line: 2257, column: 30, scope: !5227)
!5518 = !DILocation(line: 2257, column: 13, scope: !5227)
!5519 = !DILocation(line: 2258, column: 9, scope: !5228)
!5520 = !DILocation(line: 2260, column: 21, scope: !5236)
!5521 = !DILocation(line: 0, scope: !5222)
!5522 = !DILocation(line: 2260, column: 18, scope: !5236)
!5523 = !DILocation(line: 2260, column: 13, scope: !5222)
!5524 = !DILocation(line: 2267, column: 23, scope: !5234)
!5525 = !DILocation(line: 2267, column: 17, scope: !5234)
!5526 = !DILocation(line: 2267, column: 35, scope: !5234)
!5527 = !DILocation(line: 2267, column: 32, scope: !5234)
!5528 = !DILocation(line: 2268, column: 50, scope: !5233)
!5529 = !DILocation(line: 2268, column: 42, scope: !5233)
!5530 = !DILocation(line: 2268, column: 26, scope: !5233)
!5531 = !DILocation(line: 2269, column: 31, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5233, file: !1, line: 2269, column: 21)
!5533 = !DILocation(line: 2274, column: 17, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5235, file: !1, line: 2274, column: 17)
!5535 = !DILocation(line: 2274, column: 17, scope: !5235)
!5536 = !DILocation(line: 2275, column: 43, scope: !5534)
!5537 = !DILocation(line: 2275, column: 17, scope: !5534)
!5538 = !DILocation(line: 2277, column: 28, scope: !5235)
!5539 = !DILocation(line: 2278, column: 35, scope: !5235)
!5540 = !DILocation(line: 2278, column: 19, scope: !5235)
!5541 = !DILocation(line: 2278, column: 33, scope: !5235)
!5542 = !DILocation(line: 2281, column: 17, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5235, file: !1, line: 2281, column: 17)
!5544 = !DILocation(line: 2281, column: 28, scope: !5543)
!5545 = !DILocation(line: 2281, column: 17, scope: !5235)
!5546 = !DILocation(line: 2283, column: 24, scope: !5543)
!5547 = !DILocation(line: 2287, column: 33, scope: !5235)
!5548 = !DILocation(line: 2287, column: 13, scope: !5235)
!5549 = !DILocation(line: 2289, column: 17, scope: !5235)
!5550 = !DILocation(line: 2284, column: 23, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !1, line: 2283, column: 33)
!5552 = distinct !DILexicalBlock(scope: !5543, file: !1, line: 2283, column: 24)
!5553 = !DILocation(line: 2284, column: 37, scope: !5551)
!5554 = !DILocation(line: 2282, column: 23, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5543, file: !1, line: 2281, column: 34)
!5556 = !DILocation(line: 2282, column: 38, scope: !5555)
!5557 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !5558)
!5558 = distinct !DILocation(line: 2290, column: 17, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5239, file: !1, line: 2289, column: 25)
!5560 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !5558)
!5561 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !5558)
!5562 = !DILocation(line: 780, column: 52, scope: !2034, inlinedAt: !5558)
!5563 = !DILocation(line: 780, column: 59, scope: !2034, inlinedAt: !5558)
!5564 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !5558)
!5565 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !5558)
!5566 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !5558)
!5567 = !DILocation(line: 2291, column: 13, scope: !5559)
!5568 = !DILocation(line: 2292, column: 60, scope: !5238)
!5569 = !DILocation(line: 2292, column: 34, scope: !5238)
!5570 = !DILocation(line: 2292, column: 24, scope: !5238)
!5571 = !DILocation(line: 2294, column: 22, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5238, file: !1, line: 2294, column: 21)
!5573 = !DILocation(line: 2294, column: 21, scope: !5238)
!5574 = !DILocation(line: 2294, column: 49, scope: !5572)
!5575 = !DILocation(line: 2294, column: 31, scope: !5572)
!5576 = !DILocation(line: 2296, column: 21, scope: !5235)
!5577 = !DILocation(line: 2299, column: 40, scope: !5235)
!5578 = !DILocation(line: 2299, column: 37, scope: !5235)
!5579 = !DILocation(line: 2299, column: 54, scope: !5235)
!5580 = !DILocation(line: 2299, column: 65, scope: !5235)
!5581 = !DILocation(line: 2299, column: 13, scope: !5235)
!5582 = !DILocation(line: 2301, column: 25, scope: !5235)
!5583 = !DILocation(line: 2302, column: 9, scope: !5235)
!5584 = !DILocation(line: 0, scope: !5430)
!5585 = !DILocation(line: 2303, column: 5, scope: !5223)
!5586 = !DILocation(line: 2228, column: 40, scope: !5223)
!5587 = distinct !{!5587, !5455, !5588}
!5588 = !DILocation(line: 2303, column: 5, scope: !5220)
!5589 = !DILocation(line: 2305, column: 37, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5458, file: !1, line: 2304, column: 28)
!5591 = !DILocation(line: 2305, column: 34, scope: !5590)
!5592 = !DILocation(line: 2305, column: 51, scope: !5590)
!5593 = !DILocation(line: 2305, column: 9, scope: !5590)
!5594 = !DILocation(line: 2306, column: 21, scope: !5590)
!5595 = !DILocation(line: 2307, column: 5, scope: !5590)
!5596 = !DILocation(line: 2308, column: 5, scope: !5192)
!5597 = !DILocation(line: 2309, column: 5, scope: !5192)
!5598 = !DILocation(line: 2310, column: 1, scope: !5192)
!5599 = distinct !DISubprogram(name: "xdelCommand", scope: !1, file: !1, line: 2318, type: !2154, isLocal: false, isDefinition: true, scopeLine: 2318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5600)
!5600 = !{!5601, !5602, !5603, !5604, !5605, !5607, !5608}
!5601 = !DILocalVariable(name: "c", arg: 1, scope: !5599, file: !1, line: 2318, type: !2037)
!5602 = !DILocalVariable(name: "o", scope: !5599, file: !1, line: 2319, type: !367)
!5603 = !DILocalVariable(name: "s", scope: !5599, file: !1, line: 2323, type: !69)
!5604 = !DILocalVariable(name: "id", scope: !5599, file: !1, line: 2328, type: !95)
!5605 = !DILocalVariable(name: "j", scope: !5606, file: !1, line: 2329, type: !12)
!5606 = distinct !DILexicalBlock(scope: !5599, file: !1, line: 2329, column: 5)
!5607 = !DILocalVariable(name: "deleted", scope: !5599, file: !1, line: 2334, type: !12)
!5608 = !DILocalVariable(name: "j", scope: !5609, file: !1, line: 2335, type: !12)
!5609 = distinct !DILexicalBlock(scope: !5599, file: !1, line: 2335, column: 5)
!5610 = !DILocation(line: 2318, column: 26, scope: !5599)
!5611 = !DILocation(line: 2321, column: 41, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5599, file: !1, line: 2321, column: 9)
!5613 = !DILocation(line: 2321, column: 38, scope: !5612)
!5614 = !DILocation(line: 2321, column: 56, scope: !5612)
!5615 = !DILocation(line: 2321, column: 14, scope: !5612)
!5616 = !DILocation(line: 2319, column: 11, scope: !5599)
!5617 = !DILocation(line: 2321, column: 64, scope: !5612)
!5618 = !DILocation(line: 2322, column: 9, scope: !5612)
!5619 = !DILocation(line: 2322, column: 12, scope: !5612)
!5620 = !DILocation(line: 2321, column: 9, scope: !5599)
!5621 = !DILocation(line: 2323, column: 20, scope: !5599)
!5622 = !DILocation(line: 2323, column: 13, scope: !5599)
!5623 = !DILocation(line: 2328, column: 5, scope: !5599)
!5624 = !DILocation(line: 2329, column: 14, scope: !5606)
!5625 = !DILocation(line: 2329, column: 28, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5606, file: !1, line: 2329, column: 5)
!5627 = !DILocation(line: 2329, column: 23, scope: !5626)
!5628 = !DILocation(line: 2329, column: 5, scope: !5606)
!5629 = distinct !{!5629, !5628, !5630}
!5630 = !DILocation(line: 2331, column: 5, scope: !5606)
!5631 = !DILocation(line: 2335, column: 14, scope: !5609)
!5632 = !DILocation(line: 2334, column: 9, scope: !5599)
!5633 = !DILocation(line: 2335, column: 23, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 2335, column: 5)
!5635 = !DILocation(line: 2335, column: 5, scope: !5609)
!5636 = !DILocation(line: 2330, column: 45, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 2330, column: 13)
!5638 = distinct !DILexicalBlock(scope: !5626, file: !1, line: 2329, column: 39)
!5639 = !DILocation(line: 2330, column: 42, scope: !5637)
!5640 = !DILocation(line: 2328, column: 14, scope: !5599)
!5641 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !5642)
!5642 = distinct !DILocation(line: 2330, column: 13, scope: !5637)
!5643 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !5642)
!5644 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !5642)
!5645 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !5642)
!5646 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !5642)
!5647 = !DILocation(line: 2330, column: 60, scope: !5637)
!5648 = !DILocation(line: 2329, column: 35, scope: !5626)
!5649 = !DILocation(line: 2330, column: 13, scope: !5638)
!5650 = !DILocation(line: 2341, column: 9, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5599, file: !1, line: 2341, column: 9)
!5652 = !DILocation(line: 2341, column: 9, scope: !5599)
!5653 = !DILocation(line: 2336, column: 41, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5634, file: !1, line: 2335, column: 39)
!5655 = !DILocation(line: 2336, column: 38, scope: !5654)
!5656 = !DILocation(line: 1149, column: 40, scope: !3078, inlinedAt: !5657)
!5657 = distinct !DILocation(line: 2336, column: 9, scope: !5654)
!5658 = !DILocation(line: 1149, column: 49, scope: !3078, inlinedAt: !5657)
!5659 = !DILocation(line: 1149, column: 62, scope: !3078, inlinedAt: !5657)
!5660 = !DILocation(line: 1149, column: 75, scope: !3078, inlinedAt: !5657)
!5661 = !DILocation(line: 1150, column: 12, scope: !3078, inlinedAt: !5657)
!5662 = !DILocation(line: 762, column: 30, scope: !2001, inlinedAt: !5663)
!5663 = distinct !DILocation(line: 2337, column: 20, scope: !5654)
!5664 = !DILocation(line: 762, column: 43, scope: !2001, inlinedAt: !5663)
!5665 = !DILocation(line: 763, column: 9, scope: !2001, inlinedAt: !5663)
!5666 = !DILocation(line: 764, column: 5, scope: !2001, inlinedAt: !5663)
!5667 = !DILocation(line: 764, column: 20, scope: !2001, inlinedAt: !5663)
!5668 = !DILocation(line: 765, column: 5, scope: !2001, inlinedAt: !5663)
!5669 = !DILocation(line: 766, column: 5, scope: !2001, inlinedAt: !5663)
!5670 = !DILocation(line: 767, column: 5, scope: !2001, inlinedAt: !5663)
!5671 = !DILocation(line: 766, column: 14, scope: !2001, inlinedAt: !5663)
!5672 = !DILocation(line: 767, column: 13, scope: !2001, inlinedAt: !5663)
!5673 = !DILocation(line: 768, column: 9, scope: !2022, inlinedAt: !5663)
!5674 = !DILocation(line: 768, column: 9, scope: !2001, inlinedAt: !5663)
!5675 = !DILocation(line: 769, column: 9, scope: !2025, inlinedAt: !5663)
!5676 = !DILocation(line: 771, column: 5, scope: !2025, inlinedAt: !5663)
!5677 = !DILocation(line: 0, scope: !2001, inlinedAt: !5663)
!5678 = !DILocation(line: 756, column: 41, scope: !1985, inlinedAt: !5679)
!5679 = distinct !DILocation(line: 772, column: 5, scope: !2001, inlinedAt: !5663)
!5680 = !DILocation(line: 757, column: 5, scope: !1985, inlinedAt: !5679)
!5681 = !DILocation(line: 774, column: 1, scope: !2001, inlinedAt: !5663)
!5682 = !DILocation(line: 2337, column: 17, scope: !5654)
!5683 = !DILocation(line: 2335, column: 35, scope: !5634)
!5684 = !DILocation(line: 2335, column: 28, scope: !5634)
!5685 = distinct !{!5685, !5635, !5686}
!5686 = !DILocation(line: 2338, column: 5, scope: !5609)
!5687 = !DILocation(line: 2342, column: 30, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5651, file: !1, line: 2341, column: 18)
!5689 = !DILocation(line: 2342, column: 36, scope: !5688)
!5690 = !DILocation(line: 2342, column: 33, scope: !5688)
!5691 = !DILocation(line: 2342, column: 9, scope: !5688)
!5692 = !DILocation(line: 2343, column: 53, scope: !5688)
!5693 = !DILocation(line: 2343, column: 50, scope: !5688)
!5694 = !DILocation(line: 2343, column: 64, scope: !5688)
!5695 = !DILocation(line: 2343, column: 68, scope: !5688)
!5696 = !DILocation(line: 2343, column: 9, scope: !5688)
!5697 = !DILocation(line: 2344, column: 25, scope: !5688)
!5698 = !DILocation(line: 2344, column: 22, scope: !5688)
!5699 = !DILocation(line: 2345, column: 5, scope: !5688)
!5700 = !DILocation(line: 2346, column: 24, scope: !5599)
!5701 = !DILocation(line: 2346, column: 5, scope: !5599)
!5702 = !DILocation(line: 2347, column: 1, scope: !5599)
!5703 = distinct !DISubprogram(name: "xtrimCommand", scope: !1, file: !1, line: 2361, type: !2154, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5704)
!5704 = !{!5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5717, !5718, !5721}
!5705 = !DILocalVariable(name: "c", arg: 1, scope: !5703, file: !1, line: 2361, type: !2037)
!5706 = !DILocalVariable(name: "o", scope: !5703, file: !1, line: 2362, type: !367)
!5707 = !DILocalVariable(name: "s", scope: !5703, file: !1, line: 2368, type: !69)
!5708 = !DILocalVariable(name: "trim_strategy", scope: !5703, file: !1, line: 2371, type: !12)
!5709 = !DILocalVariable(name: "maxlen", scope: !5703, file: !1, line: 2372, type: !246)
!5710 = !DILocalVariable(name: "approx_maxlen", scope: !5703, file: !1, line: 2373, type: !12)
!5711 = !DILocalVariable(name: "maxlen_arg_idx", scope: !5703, file: !1, line: 2375, type: !12)
!5712 = !DILocalVariable(name: "i", scope: !5703, file: !1, line: 2378, type: !12)
!5713 = !DILocalVariable(name: "moreargs", scope: !5714, file: !1, line: 2380, type: !12)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !1, line: 2379, column: 30)
!5715 = distinct !DILexicalBlock(scope: !5716, file: !1, line: 2379, column: 5)
!5716 = distinct !DILexicalBlock(scope: !5703, file: !1, line: 2379, column: 5)
!5717 = !DILocalVariable(name: "opt", scope: !5714, file: !1, line: 2381, type: !10)
!5718 = !DILocalVariable(name: "next", scope: !5719, file: !1, line: 2385, type: !10)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !1, line: 2382, column: 52)
!5720 = distinct !DILexicalBlock(scope: !5714, file: !1, line: 2382, column: 13)
!5721 = !DILocalVariable(name: "deleted", scope: !5703, file: !1, line: 2409, type: !196)
!5722 = !DILocation(line: 2361, column: 27, scope: !5703)
!5723 = !DILocation(line: 2366, column: 41, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5703, file: !1, line: 2366, column: 9)
!5725 = !DILocation(line: 2366, column: 38, scope: !5724)
!5726 = !DILocation(line: 2366, column: 56, scope: !5724)
!5727 = !DILocation(line: 2366, column: 14, scope: !5724)
!5728 = !DILocation(line: 2362, column: 11, scope: !5703)
!5729 = !DILocation(line: 2366, column: 64, scope: !5724)
!5730 = !DILocation(line: 2367, column: 9, scope: !5724)
!5731 = !DILocation(line: 2367, column: 12, scope: !5724)
!5732 = !DILocation(line: 2366, column: 9, scope: !5703)
!5733 = !DILocation(line: 2368, column: 20, scope: !5703)
!5734 = !DILocation(line: 2368, column: 13, scope: !5703)
!5735 = !DILocation(line: 2371, column: 9, scope: !5703)
!5736 = !DILocation(line: 2372, column: 5, scope: !5703)
!5737 = !DILocation(line: 2372, column: 15, scope: !5703)
!5738 = !DILocation(line: 2373, column: 9, scope: !5703)
!5739 = !DILocation(line: 2375, column: 9, scope: !5703)
!5740 = !DILocation(line: 2378, column: 9, scope: !5703)
!5741 = !DILocation(line: 2379, column: 19, scope: !5715)
!5742 = !DILocation(line: 2379, column: 14, scope: !5715)
!5743 = !DILocation(line: 2379, column: 5, scope: !5716)
!5744 = distinct !{!5744, !5743, !5745}
!5745 = !DILocation(line: 2406, column: 5, scope: !5716)
!5746 = !DILocation(line: 2380, column: 36, scope: !5714)
!5747 = !DILocation(line: 2380, column: 13, scope: !5714)
!5748 = !DILocation(line: 2381, column: 24, scope: !5714)
!5749 = !DILocation(line: 2381, column: 21, scope: !5714)
!5750 = !DILocation(line: 2381, column: 33, scope: !5714)
!5751 = !DILocation(line: 2381, column: 15, scope: !5714)
!5752 = !DILocation(line: 2382, column: 14, scope: !5720)
!5753 = !DILocation(line: 2382, column: 42, scope: !5720)
!5754 = !DILocation(line: 2382, column: 39, scope: !5720)
!5755 = !DILocation(line: 2385, column: 35, scope: !5719)
!5756 = !DILocation(line: 2385, column: 26, scope: !5719)
!5757 = !DILocation(line: 2385, column: 40, scope: !5719)
!5758 = !DILocation(line: 2385, column: 19, scope: !5719)
!5759 = !DILocation(line: 2387, column: 26, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5719, file: !1, line: 2387, column: 17)
!5761 = !DILocation(line: 2387, column: 31, scope: !5760)
!5762 = !DILocation(line: 2387, column: 34, scope: !5760)
!5763 = !DILocation(line: 2387, column: 49, scope: !5760)
!5764 = !DILocation(line: 2387, column: 52, scope: !5760)
!5765 = !DILocation(line: 2387, column: 60, scope: !5760)
!5766 = !DILocation(line: 2387, column: 17, scope: !5719)
!5767 = !DILocation(line: 2390, column: 59, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5760, file: !1, line: 2390, column: 24)
!5769 = !DILocation(line: 2390, column: 67, scope: !5768)
!5770 = !DILocation(line: 2390, column: 24, scope: !5760)
!5771 = !DILocation(line: 0, scope: !5703)
!5772 = !DILocation(line: 0, scope: !5719)
!5773 = !DILocation(line: 2393, column: 57, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5719, file: !1, line: 2393, column: 17)
!5775 = !DILocation(line: 2393, column: 48, scope: !5774)
!5776 = !DILocation(line: 2393, column: 17, scope: !5774)
!5777 = !DILocation(line: 2394, column: 17, scope: !5774)
!5778 = !DILocation(line: 2393, column: 17, scope: !5719)
!5779 = !DILocation(line: 2396, column: 17, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5719, file: !1, line: 2396, column: 17)
!5781 = !DILocation(line: 2396, column: 24, scope: !5780)
!5782 = !DILocation(line: 2379, column: 26, scope: !5715)
!5783 = !DILocation(line: 2396, column: 17, scope: !5719)
!5784 = !DILocation(line: 2397, column: 17, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5780, file: !1, line: 2396, column: 29)
!5786 = !DILocation(line: 2398, column: 17, scope: !5785)
!5787 = !DILocation(line: 2403, column: 31, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5720, file: !1, line: 2402, column: 16)
!5789 = !DILocation(line: 2403, column: 13, scope: !5788)
!5790 = !DILocation(line: 2409, column: 13, scope: !5703)
!5791 = !DILocation(line: 2411, column: 19, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5793, file: !1, line: 2410, column: 48)
!5793 = distinct !DILexicalBlock(scope: !5703, file: !1, line: 2410, column: 9)
!5794 = !DILocation(line: 2418, column: 9, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5703, file: !1, line: 2418, column: 9)
!5796 = !DILocation(line: 2418, column: 9, scope: !5703)
!5797 = !DILocation(line: 2413, column: 9, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5793, file: !1, line: 2412, column: 12)
!5799 = !DILocation(line: 2414, column: 9, scope: !5798)
!5800 = !DILocation(line: 2419, column: 30, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5795, file: !1, line: 2418, column: 18)
!5802 = !DILocation(line: 2419, column: 36, scope: !5801)
!5803 = !DILocation(line: 2419, column: 33, scope: !5801)
!5804 = !DILocation(line: 2419, column: 9, scope: !5801)
!5805 = !DILocation(line: 2420, column: 54, scope: !5801)
!5806 = !DILocation(line: 2420, column: 51, scope: !5801)
!5807 = !DILocation(line: 2420, column: 65, scope: !5801)
!5808 = !DILocation(line: 2420, column: 69, scope: !5801)
!5809 = !DILocation(line: 2420, column: 9, scope: !5801)
!5810 = !DILocation(line: 2421, column: 22, scope: !5801)
!5811 = !DILocation(line: 2422, column: 13, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5801, file: !1, line: 2422, column: 13)
!5813 = !DILocation(line: 2422, column: 13, scope: !5801)
!5814 = !DILocation(line: 1155, column: 40, scope: !3090, inlinedAt: !5815)
!5815 = distinct !DILocation(line: 2422, column: 28, scope: !5812)
!5816 = !DILocation(line: 1155, column: 51, scope: !3090, inlinedAt: !5815)
!5817 = !DILocation(line: 1155, column: 58, scope: !3090, inlinedAt: !5815)
!5818 = !DILocation(line: 1156, column: 58, scope: !3090, inlinedAt: !5815)
!5819 = !DILocation(line: 1156, column: 24, scope: !3090, inlinedAt: !5815)
!5820 = !DILocation(line: 1156, column: 11, scope: !3090, inlinedAt: !5815)
!5821 = !DILocation(line: 1157, column: 23, scope: !3090, inlinedAt: !5815)
!5822 = !DILocation(line: 1157, column: 11, scope: !3090, inlinedAt: !5815)
!5823 = !DILocation(line: 1159, column: 5, scope: !3090, inlinedAt: !5815)
!5824 = !DILocation(line: 1160, column: 5, scope: !3090, inlinedAt: !5815)
!5825 = !DILocation(line: 1162, column: 5, scope: !3090, inlinedAt: !5815)
!5826 = !DILocation(line: 1163, column: 5, scope: !3090, inlinedAt: !5815)
!5827 = !DILocation(line: 2422, column: 28, scope: !5812)
!5828 = !DILocation(line: 2424, column: 5, scope: !5703)
!5829 = !DILocation(line: 2425, column: 1, scope: !5703)
!5830 = distinct !DISubprogram(name: "xinfoCommand", scope: !1, file: !1, line: 2431, type: !2154, isLocal: false, isDefinition: true, scopeLine: 2431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5831)
!5831 = !{!5832, !5833, !5835, !5836, !5837, !5838, !5839, !5842, !5843, !5844, !5846, !5847, !5850, !5852, !5855, !5856}
!5832 = !DILocalVariable(name: "c", arg: 1, scope: !5830, file: !1, line: 2431, type: !2037)
!5833 = !DILocalVariable(name: "help", scope: !5830, file: !1, line: 2432, type: !5834)
!5834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, size: 320, elements: !2435)
!5835 = !DILocalVariable(name: "s", scope: !5830, file: !1, line: 2439, type: !69)
!5836 = !DILocalVariable(name: "opt", scope: !5830, file: !1, line: 2440, type: !10)
!5837 = !DILocalVariable(name: "key", scope: !5830, file: !1, line: 2441, type: !367)
!5838 = !DILocalVariable(name: "o", scope: !5830, file: !1, line: 2458, type: !367)
!5839 = !DILocalVariable(name: "cg", scope: !5840, file: !1, line: 2465, type: !144)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !1, line: 2463, column: 55)
!5841 = distinct !DILexicalBlock(scope: !5830, file: !1, line: 2463, column: 9)
!5842 = !DILocalVariable(name: "ri", scope: !5840, file: !1, line: 2474, type: !384)
!5843 = !DILocalVariable(name: "now", scope: !5840, file: !1, line: 2477, type: !2232)
!5844 = !DILocalVariable(name: "consumer", scope: !5845, file: !1, line: 2479, type: !2290)
!5845 = distinct !DILexicalBlock(scope: !5840, file: !1, line: 2478, column: 29)
!5846 = !DILocalVariable(name: "idle", scope: !5845, file: !1, line: 2480, type: !2232)
!5847 = !DILocalVariable(name: "ri", scope: !5848, file: !1, line: 2500, type: !384)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !1, line: 2492, column: 59)
!5849 = distinct !DILexicalBlock(scope: !5841, file: !1, line: 2492, column: 16)
!5850 = !DILocalVariable(name: "cg", scope: !5851, file: !1, line: 2504, type: !144)
!5851 = distinct !DILexicalBlock(scope: !5848, file: !1, line: 2503, column: 29)
!5852 = !DILocalVariable(name: "count", scope: !5853, file: !1, line: 2532, type: !12)
!5853 = distinct !DILexicalBlock(scope: !5854, file: !1, line: 2516, column: 59)
!5854 = distinct !DILexicalBlock(scope: !5849, file: !1, line: 2516, column: 16)
!5855 = !DILocalVariable(name: "start", scope: !5853, file: !1, line: 2533, type: !95)
!5856 = !DILocalVariable(name: "end", scope: !5853, file: !1, line: 2533, type: !95)
!5857 = !DILocation(line: 2431, column: 27, scope: !5830)
!5858 = !DILocation(line: 2432, column: 5, scope: !5830)
!5859 = !DILocation(line: 2432, column: 17, scope: !5830)
!5860 = !DILocation(line: 2439, column: 13, scope: !5830)
!5861 = !DILocation(line: 2444, column: 24, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5830, file: !1, line: 2444, column: 9)
!5863 = !DILocation(line: 2444, column: 21, scope: !5862)
!5864 = !DILocation(line: 2444, column: 33, scope: !5862)
!5865 = !DILocation(line: 2444, column: 10, scope: !5862)
!5866 = !DILocation(line: 2444, column: 9, scope: !5830)
!5867 = !DILocation(line: 2445, column: 9, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5862, file: !1, line: 2444, column: 46)
!5869 = !DILocation(line: 2446, column: 9, scope: !5868)
!5870 = !DILocation(line: 2447, column: 19, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5862, file: !1, line: 2447, column: 16)
!5872 = !DILocation(line: 2447, column: 24, scope: !5871)
!5873 = !DILocation(line: 2447, column: 16, scope: !5862)
!5874 = !DILocation(line: 2448, column: 9, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5871, file: !1, line: 2447, column: 29)
!5876 = !DILocation(line: 2449, column: 9, scope: !5875)
!5877 = !DILocation(line: 2440, column: 11, scope: !5830)
!5878 = !DILocation(line: 2455, column: 11, scope: !5830)
!5879 = !DILocation(line: 2441, column: 11, scope: !5830)
!5880 = !DILocation(line: 2458, column: 50, scope: !5830)
!5881 = !DILocation(line: 2458, column: 15, scope: !5830)
!5882 = !DILocation(line: 2458, column: 11, scope: !5830)
!5883 = !DILocation(line: 2459, column: 11, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5830, file: !1, line: 2459, column: 9)
!5885 = !DILocation(line: 2459, column: 19, scope: !5884)
!5886 = !DILocation(line: 2459, column: 22, scope: !5884)
!5887 = !DILocation(line: 2459, column: 9, scope: !5830)
!5888 = !DILocation(line: 2460, column: 12, scope: !5830)
!5889 = !DILocation(line: 2463, column: 10, scope: !5841)
!5890 = !DILocation(line: 2463, column: 38, scope: !5841)
!5891 = !DILocation(line: 2463, column: 44, scope: !5841)
!5892 = !DILocation(line: 2463, column: 49, scope: !5841)
!5893 = !DILocation(line: 2463, column: 9, scope: !5830)
!5894 = !DILocation(line: 2465, column: 44, scope: !5840)
!5895 = !DILocation(line: 2465, column: 41, scope: !5840)
!5896 = !DILocation(line: 2465, column: 53, scope: !5840)
!5897 = !DILocation(line: 1643, column: 34, scope: !3718, inlinedAt: !5898)
!5898 = distinct !DILocation(line: 2465, column: 24, scope: !5840)
!5899 = !DILocation(line: 1643, column: 41, scope: !3718, inlinedAt: !5898)
!5900 = !DILocation(line: 1644, column: 12, scope: !3728, inlinedAt: !5898)
!5901 = !DILocation(line: 1644, column: 20, scope: !3728, inlinedAt: !5898)
!5902 = !DILocation(line: 1644, column: 9, scope: !3718, inlinedAt: !5898)
!5903 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !5904)
!5904 = distinct !DILocation(line: 1646, column: 28, scope: !3718, inlinedAt: !5898)
!5905 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !5904)
!5906 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !5904)
!5907 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !5904)
!5908 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !5904)
!5909 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !5904)
!5910 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !5904)
!5911 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !5904)
!5912 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !5904)
!5913 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !5904)
!5914 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !5904)
!5915 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !5904)
!5916 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !5904)
!5917 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !5904)
!5918 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !5904)
!5919 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !5904)
!5920 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !5904)
!5921 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !5904)
!5922 = !DILocation(line: 0, scope: !660, inlinedAt: !5904)
!5923 = !DILocation(line: 1645, column: 20, scope: !3718, inlinedAt: !5898)
!5924 = !DILocation(line: 1645, column: 15, scope: !3718, inlinedAt: !5898)
!5925 = !DILocation(line: 1647, column: 19, scope: !3718, inlinedAt: !5898)
!5926 = !DILocation(line: 1647, column: 16, scope: !3718, inlinedAt: !5898)
!5927 = !DILocation(line: 2466, column: 16, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5840, file: !1, line: 2466, column: 13)
!5929 = !DILocation(line: 2465, column: 19, scope: !5840)
!5930 = !DILocation(line: 2469, column: 46, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5928, file: !1, line: 2466, column: 25)
!5932 = !DILocation(line: 2469, column: 43, scope: !5931)
!5933 = !DILocation(line: 2469, column: 55, scope: !5931)
!5934 = !DILocation(line: 2469, column: 72, scope: !5931)
!5935 = !DILocation(line: 2467, column: 13, scope: !5931)
!5936 = !DILocation(line: 2473, column: 44, scope: !5840)
!5937 = !DILocation(line: 2473, column: 32, scope: !5840)
!5938 = !DILocation(line: 2473, column: 9, scope: !5840)
!5939 = !DILocation(line: 2474, column: 9, scope: !5840)
!5940 = !DILocation(line: 2475, column: 26, scope: !5840)
!5941 = !DILocation(line: 2474, column: 21, scope: !5840)
!5942 = !DILocation(line: 2475, column: 9, scope: !5840)
!5943 = !DILocation(line: 2476, column: 9, scope: !5840)
!5944 = !DILocation(line: 2477, column: 24, scope: !5840)
!5945 = !DILocation(line: 2477, column: 18, scope: !5840)
!5946 = !DILocation(line: 2478, column: 15, scope: !5840)
!5947 = !DILocation(line: 2478, column: 9, scope: !5840)
!5948 = !DILocation(line: 2479, column: 43, scope: !5845)
!5949 = !DILocation(line: 2479, column: 29, scope: !5845)
!5950 = !DILocation(line: 2480, column: 45, scope: !5845)
!5951 = !DILocation(line: 2480, column: 33, scope: !5845)
!5952 = !DILocation(line: 2480, column: 22, scope: !5845)
!5953 = !DILocation(line: 2481, column: 17, scope: !5845)
!5954 = !DILocation(line: 2483, column: 13, scope: !5845)
!5955 = !DILocation(line: 2484, column: 13, scope: !5845)
!5956 = !DILocation(line: 2485, column: 45, scope: !5845)
!5957 = !DILocation(line: 87, column: 39, scope: !645, inlinedAt: !5958)
!5958 = distinct !DILocation(line: 2485, column: 50, scope: !5845)
!5959 = !DILocation(line: 88, column: 27, scope: !645, inlinedAt: !5958)
!5960 = !DILocation(line: 88, column: 19, scope: !645, inlinedAt: !5958)
!5961 = !DILocation(line: 89, column: 5, scope: !645, inlinedAt: !5958)
!5962 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !5958)
!5963 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !5958)
!5964 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !5958)
!5965 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !5958)
!5966 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !5958)
!5967 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !5958)
!5968 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !5958)
!5969 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !5958)
!5970 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !5958)
!5971 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !5958)
!5972 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !5958)
!5973 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !5958)
!5974 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !5958)
!5975 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !5958)
!5976 = !DILocation(line: 0, scope: !660, inlinedAt: !5958)
!5977 = !DILocation(line: 2485, column: 13, scope: !5845)
!5978 = !DILocation(line: 2486, column: 13, scope: !5845)
!5979 = !DILocation(line: 2487, column: 50, scope: !5845)
!5980 = !DILocation(line: 2487, column: 32, scope: !5845)
!5981 = !DILocation(line: 2487, column: 13, scope: !5845)
!5982 = !DILocation(line: 2488, column: 13, scope: !5845)
!5983 = !DILocation(line: 2489, column: 13, scope: !5845)
!5984 = distinct !{!5984, !5947, !5985}
!5985 = !DILocation(line: 2490, column: 9, scope: !5840)
!5986 = !DILocation(line: 2491, column: 9, scope: !5840)
!5987 = !DILocation(line: 2492, column: 5, scope: !5841)
!5988 = !DILocation(line: 2492, column: 17, scope: !5849)
!5989 = !DILocation(line: 2492, column: 42, scope: !5849)
!5990 = !DILocation(line: 2492, column: 48, scope: !5849)
!5991 = !DILocation(line: 2492, column: 53, scope: !5849)
!5992 = !DILocation(line: 2492, column: 16, scope: !5841)
!5993 = !DILocation(line: 2494, column: 16, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5848, file: !1, line: 2494, column: 13)
!5995 = !DILocation(line: 2494, column: 24, scope: !5994)
!5996 = !DILocation(line: 2494, column: 13, scope: !5848)
!5997 = !DILocation(line: 2495, column: 13, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5994, file: !1, line: 2494, column: 33)
!5999 = !DILocation(line: 2496, column: 13, scope: !5998)
!6000 = !DILocation(line: 2499, column: 32, scope: !5848)
!6001 = !DILocation(line: 2499, column: 9, scope: !5848)
!6002 = !DILocation(line: 2500, column: 9, scope: !5848)
!6003 = !DILocation(line: 2501, column: 25, scope: !5848)
!6004 = !DILocation(line: 2500, column: 21, scope: !5848)
!6005 = !DILocation(line: 2501, column: 9, scope: !5848)
!6006 = !DILocation(line: 2502, column: 9, scope: !5848)
!6007 = !DILocation(line: 2503, column: 15, scope: !5848)
!6008 = !DILocation(line: 2503, column: 9, scope: !5848)
!6009 = !DILocation(line: 2504, column: 31, scope: !5851)
!6010 = !DILocation(line: 2504, column: 23, scope: !5851)
!6011 = !DILocation(line: 2505, column: 13, scope: !5851)
!6012 = !DILocation(line: 2506, column: 13, scope: !5851)
!6013 = !DILocation(line: 2507, column: 38, scope: !5851)
!6014 = !DILocation(line: 2507, column: 45, scope: !5851)
!6015 = !DILocation(line: 2507, column: 13, scope: !5851)
!6016 = !DILocation(line: 2508, column: 13, scope: !5851)
!6017 = !DILocation(line: 2509, column: 44, scope: !5851)
!6018 = !DILocation(line: 2509, column: 32, scope: !5851)
!6019 = !DILocation(line: 2509, column: 13, scope: !5851)
!6020 = !DILocation(line: 2510, column: 13, scope: !5851)
!6021 = !DILocation(line: 2511, column: 44, scope: !5851)
!6022 = !DILocation(line: 2511, column: 32, scope: !5851)
!6023 = !DILocation(line: 2511, column: 13, scope: !5851)
!6024 = !DILocation(line: 2512, column: 13, scope: !5851)
!6025 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !6026)
!6026 = distinct !DILocation(line: 2513, column: 13, scope: !5851)
!6027 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !6026)
!6028 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !6026)
!6029 = !DILocation(line: 780, column: 52, scope: !2034, inlinedAt: !6026)
!6030 = !DILocation(line: 780, column: 59, scope: !2034, inlinedAt: !6026)
!6031 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !6026)
!6032 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !6026)
!6033 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !6026)
!6034 = distinct !{!6034, !6008, !6035}
!6035 = !DILocation(line: 2514, column: 9, scope: !5848)
!6036 = !DILocation(line: 2515, column: 9, scope: !5848)
!6037 = !DILocation(line: 2516, column: 5, scope: !5849)
!6038 = !DILocation(line: 2516, column: 5, scope: !5848)
!6039 = !DILocation(line: 2516, column: 17, scope: !5854)
!6040 = !DILocation(line: 2516, column: 42, scope: !5854)
!6041 = !DILocation(line: 2516, column: 48, scope: !5854)
!6042 = !DILocation(line: 2516, column: 53, scope: !5854)
!6043 = !DILocation(line: 2516, column: 16, scope: !5849)
!6044 = !DILocation(line: 2518, column: 9, scope: !5853)
!6045 = !DILocation(line: 2519, column: 9, scope: !5853)
!6046 = !DILocation(line: 2520, column: 31, scope: !5853)
!6047 = !DILocation(line: 2520, column: 9, scope: !5853)
!6048 = !DILocation(line: 2521, column: 9, scope: !5853)
!6049 = !DILocation(line: 2522, column: 39, scope: !5853)
!6050 = !DILocation(line: 2522, column: 28, scope: !5853)
!6051 = !DILocation(line: 2522, column: 9, scope: !5853)
!6052 = !DILocation(line: 2523, column: 9, scope: !5853)
!6053 = !DILocation(line: 2524, column: 31, scope: !5853)
!6054 = !DILocation(line: 2524, column: 36, scope: !5853)
!6055 = !{!6056, !113, i64 16}
!6056 = !{!"rax", !110, i64 0, !113, i64 8, !113, i64 16}
!6057 = !DILocation(line: 2524, column: 9, scope: !5853)
!6058 = !DILocation(line: 2525, column: 9, scope: !5853)
!6059 = !DILocation(line: 2526, column: 31, scope: !5853)
!6060 = !DILocation(line: 2526, column: 28, scope: !5853)
!6061 = !DILocation(line: 2526, column: 41, scope: !5853)
!6062 = !DILocation(line: 2526, column: 9, scope: !5853)
!6063 = !DILocation(line: 2527, column: 9, scope: !5853)
!6064 = !DILocation(line: 779, column: 31, scope: !2034, inlinedAt: !6065)
!6065 = distinct !DILocation(line: 2528, column: 9, scope: !5853)
!6066 = !DILocation(line: 779, column: 44, scope: !2034, inlinedAt: !6065)
!6067 = !DILocation(line: 780, column: 29, scope: !2034, inlinedAt: !6065)
!6068 = !DILocation(line: 780, column: 52, scope: !2034, inlinedAt: !6065)
!6069 = !DILocation(line: 780, column: 59, scope: !2034, inlinedAt: !6065)
!6070 = !DILocation(line: 780, column: 19, scope: !2034, inlinedAt: !6065)
!6071 = !DILocation(line: 780, column: 9, scope: !2034, inlinedAt: !6065)
!6072 = !DILocation(line: 781, column: 5, scope: !2034, inlinedAt: !6065)
!6073 = !DILocation(line: 2533, column: 9, scope: !5853)
!6074 = !DILocation(line: 2534, column: 18, scope: !5853)
!6075 = !DILocation(line: 2535, column: 16, scope: !5853)
!6076 = !DILocation(line: 2536, column: 9, scope: !5853)
!6077 = !DILocation(line: 2533, column: 18, scope: !5853)
!6078 = !DILocation(line: 2533, column: 25, scope: !5853)
!6079 = !DILocation(line: 2537, column: 17, scope: !5853)
!6080 = !DILocation(line: 2532, column: 13, scope: !5853)
!6081 = !DILocation(line: 2539, column: 14, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !5853, file: !1, line: 2539, column: 13)
!6083 = !DILocation(line: 2539, column: 13, scope: !5853)
!6084 = !DILocation(line: 2539, column: 39, scope: !6082)
!6085 = !DILocation(line: 2539, column: 21, scope: !6082)
!6086 = !DILocation(line: 2540, column: 9, scope: !5853)
!6087 = !DILocation(line: 2541, column: 17, scope: !5853)
!6088 = !DILocation(line: 2543, column: 14, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !5853, file: !1, line: 2543, column: 13)
!6090 = !DILocation(line: 2543, column: 13, scope: !5853)
!6091 = !DILocation(line: 2543, column: 39, scope: !6089)
!6092 = !DILocation(line: 2543, column: 21, scope: !6089)
!6093 = !DILocation(line: 2544, column: 5, scope: !5854)
!6094 = !DILocation(line: 2544, column: 5, scope: !5853)
!6095 = !DILocation(line: 2545, column: 9, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !5854, file: !1, line: 2544, column: 12)
!6097 = !DILocation(line: 2547, column: 1, scope: !5830)
