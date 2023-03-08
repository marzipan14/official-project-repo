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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.stream* @streamNew() local_unnamed_addr #0 !dbg !66 {
  %1 = tail call i8* @zmalloc(i64 40) #6, !dbg !103
  %2 = bitcast i8* %1 to %struct.stream*, !dbg !103
  %3 = tail call %struct.rax* @raxNew() #6, !dbg !105
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
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
  tail call void @raxFreeWithCallback(%struct.rax* %3, void (i8*)* nonnull @lpFree) #6, !dbg !132
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !133
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !133, !tbaa !123
  %6 = icmp eq %struct.rax* %5, null, !dbg !135
  br i1 %6, label %8, label %7, !dbg !136

; <label>:7:                                      ; preds = %1
  tail call void @raxFreeWithCallback(%struct.rax* nonnull %5, void (i8*)* bitcast (void (%struct.streamCG*)* @streamFreeCG to void (i8*)*)) #6, !dbg !137
  br label %8, !dbg !137

; <label>:8:                                      ; preds = %1, %7
  %9 = bitcast %struct.stream* %0 to i8*, !dbg !138
  tail call void @zfree(i8* %9) #6, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
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
  tail call void @raxFreeWithCallback(%struct.rax* %3, void (i8*)* bitcast (void (%struct.streamNACK*)* @streamFreeNACK to void (i8*)*)) #6, !dbg !157
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !158
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !158, !tbaa !159
  tail call void @raxFreeWithCallback(%struct.rax* %5, void (i8*)* bitcast (void (%struct.streamConsumer*)* @streamFreeConsumer to void (i8*)*)) #6, !dbg !160
  %6 = bitcast %struct.streamCG* %0 to i8*, !dbg !161
  tail call void @zfree(i8* %6) #6, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  ret void, !dbg !163
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamNextID(%struct.streamID* nocapture readonly, %struct.streamID* nocapture) local_unnamed_addr #0 !dbg !164 {
  %3 = tail call i64 @mstime() #6, !dbg !174
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  ret void, !dbg !192
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpAppendInteger(i8*, i64) local_unnamed_addr #0 !dbg !193 {
  %3 = alloca [21 x i8], align 16
  %4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0, !dbg !209
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %4) #7, !dbg !209
  %5 = call i32 @ll2string(i8* nonnull %4, i64 21, i64 %1) #6, !dbg !211
  %6 = call i8* @lpAppend(i8* %0, i8* nonnull %4, i32 %5) #6, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %4) #7, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
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
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %5) #7, !dbg !229
  %6 = call i32 @ll2string(i8* nonnull %5, i64 21, i64 %2) #6, !dbg !231
  %7 = load i8*, i8** %1, align 8, !dbg !233, !tbaa !234
  %8 = call i8* @lpInsert(i8* %0, i8* nonnull %5, i32 %6, i8* %7, i32 2, i8** %1) #6, !dbg !235
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %5) #7, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  ret i8* %8, !dbg !237
}

; Function Attrs: noredzone
declare dso_local i8* @lpInsert(i8*, i8*, i32, i8*, i32, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @lpGetInteger(i8*) local_unnamed_addr #0 !dbg !238 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %2 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !249
  %5 = call i8* @lpGet(i8* %0, i64* nonnull %2, i8* null) #6, !dbg !251
  %6 = icmp eq i8* %5, null, !dbg !253
  br i1 %6, label %7, label %9, !dbg !255

; <label>:7:                                      ; preds = %1
  %8 = load i64, i64* %2, align 8, !dbg !256, !tbaa !117
  br label %17, !dbg !257

; <label>:9:                                      ; preds = %1
  %10 = bitcast i64* %3 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !258
  %11 = load i64, i64* %2, align 8, !dbg !259, !tbaa !117
  %12 = call i32 @string2ll(i8* nonnull %5, i64 %11, i64* nonnull %3) #6, !dbg !261
  %13 = icmp eq i32 %12, 0, !dbg !263
  br i1 %13, label %14, label %15, !dbg !263

; <label>:14:                                     ; preds = %9
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !263
  call void @_exit(i32 1) #8, !dbg !263
  unreachable, !dbg !263

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %3, align 8, !dbg !264, !tbaa !265
  store i64 %16, i64* %2, align 8, !dbg !267, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !268
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i64 [ %8, %7 ], [ %16, %15 ], !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
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
  %4 = tail call i8* @lpFirst(i8* %0) #6, !dbg !282
  %5 = icmp eq i8* %4, null, !dbg !284
  br i1 %5, label %16, label %6, !dbg !284

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %8 = bitcast i64* %3 to i8*
  br label %9, !dbg !284

; <label>:9:                                      ; preds = %6, %9
  %10 = phi i8* [ %4, %6 ], [ %14, %9 ]
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %7) #7, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !287
  %11 = call i8* @lpGet(i8* nonnull %10, i64* nonnull %3, i8* nonnull %7) #6, !dbg !289
  %12 = load i64, i64* %3, align 8, !dbg !291, !tbaa !117
  %13 = trunc i64 %12 to i32, !dbg !292
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %13, i8* %11) #6, !dbg !293
  %14 = call i8* @lpNext(i8* %0, i8* nonnull %10) #6, !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %7) #7, !dbg !295
  %15 = icmp eq i8* %14, null, !dbg !284
  br i1 %15, label %16, label %9, !dbg !284, !llvm.loop !296

; <label>:16:                                     ; preds = %9, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !310
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !312
  %6 = load i64, i64* %5, align 8, !dbg !312, !tbaa !178
  %7 = tail call i64 @intrev64(i64 %6) #6, !dbg !312
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !313
  store i64 %7, i64* %8, align 16, !dbg !314, !tbaa !117
  %9 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !315
  %10 = load i64, i64* %9, align 8, !dbg !315, !tbaa !188
  %11 = tail call i64 @intrev64(i64 %10) #6, !dbg !315
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !316
  store i64 %11, i64* %12, align 8, !dbg !317, !tbaa !117
  %13 = call i8* @memcpy(i8* %0, i8* nonnull %4, i64 16) #6, !dbg !318
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !327
  %5 = call i8* @memcpy(i8* nonnull %4, i8* %0, i64 16) #6, !dbg !329
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !330
  %7 = load i64, i64* %6, align 16, !dbg !330, !tbaa !117
  %8 = call i64 @intrev64(i64 %7) #6, !dbg !330
  %9 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !331
  store i64 %8, i64* %9, align 8, !dbg !332, !tbaa !178
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !333
  %11 = load i64, i64* %10, align 8, !dbg !333, !tbaa !117
  %12 = call i64 @intrev64(i64 %11) #6, !dbg !333
  %13 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !334
  store i64 %12, i64* %13, align 8, !dbg !335, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  ret void, !dbg !336
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamCompareID(%struct.streamID* nocapture readonly, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !337 {
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
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
  br i1 %19, label %20, label %36, !dbg !490

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !494
  %22 = load i64, i64* %21, align 8, !dbg !494, !tbaa !178
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !495
  %24 = load i64, i64* %23, align 8, !dbg !495, !tbaa !178
  %25 = icmp ugt i64 %22, %24, !dbg !496
  br i1 %25, label %35, label %26, !dbg !497

; <label>:26:                                     ; preds = %20
  %27 = icmp ult i64 %22, %24, !dbg !498
  br i1 %27, label %34, label %28, !dbg !499

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !500
  %30 = load i64, i64* %29, align 8, !dbg !500, !tbaa !188
  %31 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !501
  %32 = load i64, i64* %31, align 8, !dbg !501, !tbaa !188
  %33 = icmp ugt i64 %30, %32, !dbg !502
  br i1 %33, label %35, label %34, !dbg !503

; <label>:34:                                     ; preds = %26, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br label %407, !dbg !505

; <label>:35:                                     ; preds = %20, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br label %36

; <label>:36:                                     ; preds = %35, %5
  %37 = bitcast %struct.raxIterator* %14 to i8*, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %37) #7, !dbg !506
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !507
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !507, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %14, %struct.rax* %39) #6, !dbg !509
  %40 = call i32 @raxSeek(%struct.raxIterator* nonnull %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !510
  %41 = call i32 @raxNext(%struct.raxIterator* nonnull %14) #6, !dbg !513
  %42 = icmp eq i32 %41, 0, !dbg !513
  br i1 %42, label %48, label %43, !dbg !515

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !516
  %45 = load i8*, i8** %44, align 8, !dbg !516, !tbaa !518
  %46 = call i32 @lpBytes(i8* %45) #6, !dbg !522
  %47 = zext i32 %46 to i64, !dbg !522
  br label %48, !dbg !523

; <label>:48:                                     ; preds = %36, %43
  %49 = phi i8* [ %45, %43 ], [ null, %36 ], !dbg !524
  %50 = phi i64 [ %47, %43 ], [ 0, %36 ], !dbg !524
  call void @raxStop(%struct.raxIterator* nonnull %14) #6, !dbg !525
  br i1 %19, label %51, label %56, !dbg !526

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !527
  %53 = load i64, i64* %52, align 8, !dbg !527
  %54 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !527
  %55 = load i64, i64* %54, align 8, !dbg !527
  br label %68, !dbg !529

; <label>:56:                                     ; preds = %48
  %57 = call i64 @mstime() #6, !dbg !534
  %58 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !536
  %59 = load i64, i64* %58, align 8, !dbg !536, !tbaa !178
  %60 = icmp ugt i64 %57, %59, !dbg !537
  br i1 %60, label %65, label %61, !dbg !538

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !539
  %63 = load i64, i64* %62, align 8, !dbg !539, !tbaa !188
  %64 = add i64 %63, 1, !dbg !540
  br label %65

; <label>:65:                                     ; preds = %56, %61
  %66 = phi i64 [ %59, %61 ], [ %57, %56 ], !dbg !541
  %67 = phi i64 [ %64, %61 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %68

; <label>:68:                                     ; preds = %65, %51
  %69 = phi i64 [ %55, %51 ], [ %67, %65 ], !dbg !541
  %70 = phi i64 [ %53, %51 ], [ %66, %65 ], !dbg !541
  %71 = bitcast [2 x i64]* %15 to i8*, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #7, !dbg !543
  %72 = icmp eq i8* %49, null, !dbg !545
  br i1 %72, label %108, label %73, !dbg !546

; <label>:73:                                     ; preds = %68
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !547, !tbaa !548
  %75 = icmp ne i64 %74, 0, !dbg !554
  %76 = icmp ugt i64 %50, %74, !dbg !555
  %77 = and i1 %75, %76, !dbg !556
  br i1 %77, label %108, label %78, !dbg !556

; <label>:78:                                     ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !557, !tbaa !558
  %80 = icmp eq i64 %79, 0, !dbg !559
  br i1 %80, label %102, label %81, !dbg !560

; <label>:81:                                     ; preds = %78
  %82 = call i8* @lpFirst(i8* nonnull %49) #6, !dbg !561
  %83 = bitcast i64* %11 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #7, !dbg !564
  %84 = call i8* @lpGet(i8* %82, i64* nonnull %11, i8* null) #6, !dbg !566
  %85 = icmp eq i8* %84, null, !dbg !568
  br i1 %85, label %86, label %88, !dbg !569

; <label>:86:                                     ; preds = %81
  %87 = load i64, i64* %11, align 8, !dbg !570, !tbaa !117
  br label %96, !dbg !571

; <label>:88:                                     ; preds = %81
  %89 = bitcast i64* %12 to i8*, !dbg !572
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89) #7, !dbg !572
  %90 = load i64, i64* %11, align 8, !dbg !573, !tbaa !117
  %91 = call i32 @string2ll(i8* nonnull %84, i64 %90, i64* nonnull %12) #6, !dbg !575
  %92 = icmp eq i32 %91, 0, !dbg !577
  br i1 %92, label %93, label %94, !dbg !577

; <label>:93:                                     ; preds = %88
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !577
  call void @_exit(i32 1) #8, !dbg !577
  unreachable, !dbg !577

; <label>:94:                                     ; preds = %88
  %95 = load i64, i64* %12, align 8, !dbg !578, !tbaa !265
  store i64 %95, i64* %11, align 8, !dbg !579, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #7, !dbg !580
  br label %96

; <label>:96:                                     ; preds = %86, %94
  %97 = phi i64 [ %87, %86 ], [ %95, %94 ], !dbg !581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #7, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !583, !tbaa !558
  %99 = icmp sgt i64 %97, %98, !dbg !585
  %100 = select i1 %99, i8* null, i8* %49, !dbg !586
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !587
  br label %102, !dbg !588

; <label>:102:                                    ; preds = %78, %96
  %103 = phi i64 [ %101, %96 ], [ %74, %78 ], !dbg !587
  %104 = phi i8* [ %100, %96 ], [ %49, %78 ], !dbg !589
  %105 = icmp eq i8* %104, null, !dbg !591
  %106 = icmp ugt i64 %50, %103, !dbg !592
  %107 = or i1 %105, %106, !dbg !593
  br i1 %107, label %108, label %168, !dbg !593

; <label>:108:                                    ; preds = %73, %68, %102
  %109 = bitcast [2 x i64]* %10 to i8*, !dbg !596
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %109) #7, !dbg !596
  %110 = call i64 @intrev64(i64 %70) #6, !dbg !597
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !598
  store i64 %110, i64* %111, align 16, !dbg !599, !tbaa !117
  %112 = call i64 @intrev64(i64 %69) #6, !dbg !600
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !601
  store i64 %112, i64* %113, align 8, !dbg !602, !tbaa !117
  %114 = call i8* @memcpy(i8* nonnull %71, i8* nonnull %109, i64 16) #6, !dbg !603
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %109) #7, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  %115 = call i8* @lpNew() #6, !dbg !605
  %116 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %116) #7, !dbg !608
  %117 = call i32 @ll2string(i8* nonnull %116, i64 21, i64 1) #6, !dbg !609
  %118 = call i8* @lpAppend(i8* %115, i8* nonnull %116, i32 %117) #6, !dbg !611
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %116) #7, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %116) #7, !dbg !616
  %119 = call i32 @ll2string(i8* nonnull %116, i64 21, i64 0) #6, !dbg !617
  %120 = call i8* @lpAppend(i8* %118, i8* nonnull %116, i32 %119) #6, !dbg !619
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %116) #7, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %116) #7, !dbg !624
  %121 = call i32 @ll2string(i8* nonnull %116, i64 21, i64 %2) #6, !dbg !625
  %122 = call i8* @lpAppend(i8* %120, i8* nonnull %116, i32 %121) #6, !dbg !627
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %116) #7, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  %123 = icmp sgt i64 %2, 0, !dbg !631
  br i1 %123, label %130, label %124, !dbg !632

; <label>:124:                                    ; preds = %162, %108
  %125 = phi i8* [ %122, %108 ], [ %165, %162 ], !dbg !633
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %116) #7, !dbg !636
  %126 = call i32 @ll2string(i8* nonnull %116, i64 21, i64 0) #6, !dbg !637
  %127 = call i8* @lpAppend(i8* %125, i8* nonnull %116, i32 %126) #6, !dbg !639
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %116) #7, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %128 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !642, !tbaa !108
  %129 = call i32 @raxInsert(%struct.rax* %128, i8* nonnull %71, i64 16, i8* %127, i8** null) #6, !dbg !643
  br label %285, !dbg !644

; <label>:130:                                    ; preds = %108, %162
  %131 = phi i8* [ %165, %162 ], [ %122, %108 ]
  %132 = phi i64 [ %166, %162 ], [ 0, %108 ]
  %133 = shl nuw nsw i64 %132, 1, !dbg !645
  %134 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %133, !dbg !646
  %135 = load %struct.redisObject*, %struct.redisObject** %134, align 8, !dbg !646, !tbaa !234
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %135, i64 0, i32 2, !dbg !647
  %137 = load i8*, i8** %136, align 8, !dbg !647, !tbaa !648
  %138 = getelementptr inbounds i8, i8* %137, i64 -1, !dbg !662
  %139 = load i8, i8* %138, align 1, !dbg !662, !tbaa !663
  %140 = trunc i8 %139 to i3, !dbg !665
  switch i3 %140, label %162 [
    i3 0, label %141
    i3 1, label %144
    i3 2, label %148
    i3 3, label %153
    i3 -4, label %158
  ], !dbg !665

; <label>:141:                                    ; preds = %130
  %142 = lshr i8 %139, 3, !dbg !666
  %143 = zext i8 %142 to i64, !dbg !666
  br label %162, !dbg !668

; <label>:144:                                    ; preds = %130
  %145 = getelementptr inbounds i8, i8* %137, i64 -3, !dbg !669
  %146 = load i8, i8* %145, align 1, !dbg !670, !tbaa !663
  %147 = zext i8 %146 to i64, !dbg !669
  br label %162, !dbg !671

; <label>:148:                                    ; preds = %130
  %149 = getelementptr inbounds i8, i8* %137, i64 -5, !dbg !672
  %150 = bitcast i8* %149 to i16*, !dbg !673
  %151 = load i16, i16* %150, align 1, !dbg !673, !tbaa !674
  %152 = zext i16 %151 to i64, !dbg !672
  br label %162, !dbg !676

; <label>:153:                                    ; preds = %130
  %154 = getelementptr inbounds i8, i8* %137, i64 -9, !dbg !677
  %155 = bitcast i8* %154 to i32*, !dbg !678
  %156 = load i32, i32* %155, align 1, !dbg !678, !tbaa !679
  %157 = zext i32 %156 to i64, !dbg !677
  br label %162, !dbg !680

; <label>:158:                                    ; preds = %130
  %159 = getelementptr inbounds i8, i8* %137, i64 -17, !dbg !681
  %160 = bitcast i8* %159 to i64*, !dbg !682
  %161 = load i64, i64* %160, align 1, !dbg !682, !tbaa !117
  br label %162, !dbg !683

; <label>:162:                                    ; preds = %130, %141, %144, %148, %153, %158
  %163 = phi i64 [ %161, %158 ], [ %157, %153 ], [ %152, %148 ], [ %147, %144 ], [ %143, %141 ], [ 0, %130 ], !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  %164 = trunc i64 %163 to i32, !dbg !686
  %165 = call i8* @lpAppend(i8* %131, i8* %137, i32 %164) #6, !dbg !687
  %166 = add nuw nsw i64 %132, 1, !dbg !688
  %167 = icmp eq i64 %166, %2, !dbg !631
  br i1 %167, label %124, label %130, !dbg !632, !llvm.loop !689

; <label>:168:                                    ; preds = %102
  %169 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 4, !dbg !691
  %170 = load i64, i64* %169, align 8, !dbg !691, !tbaa !692
  %171 = icmp eq i64 %170, 16, !dbg !691
  br i1 %171, label %173, label %172, !dbg !691

; <label>:172:                                    ; preds = %168
  call void @_serverAssert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 273) #6, !dbg !691
  call void @_exit(i32 1) #8, !dbg !691
  unreachable, !dbg !691

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 2, !dbg !693
  %175 = load i8*, i8** %174, align 8, !dbg !693, !tbaa !694
  %176 = call i8* @memcpy(i8* nonnull %71, i8* %175, i64 16) #6, !dbg !695
  %177 = bitcast [2 x i64]* %10 to i8*, !dbg !699
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %177) #7, !dbg !699
  %178 = call i8* @memcpy(i8* nonnull %177, i8* nonnull %71, i64 16) #6, !dbg !700
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !701
  %180 = load i64, i64* %179, align 16, !dbg !701, !tbaa !117
  %181 = call i64 @intrev64(i64 %180) #6, !dbg !701
  %182 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !702
  %183 = load i64, i64* %182, align 8, !dbg !702, !tbaa !117
  %184 = call i64 @intrev64(i64 %183) #6, !dbg !702
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %177) #7, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %185 = bitcast i8** %16 to i8*, !dbg !704
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185) #7, !dbg !704
  %186 = call i8* @lpFirst(i8* nonnull %104) #6, !dbg !705
  store i8* %186, i8** %16, align 8, !dbg !706, !tbaa !234
  %187 = bitcast i64* %8 to i8*, !dbg !709
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %187) #7, !dbg !709
  %188 = call i8* @lpGet(i8* %186, i64* nonnull %8, i8* null) #6, !dbg !711
  %189 = icmp eq i8* %188, null, !dbg !713
  br i1 %189, label %190, label %192, !dbg !714

; <label>:190:                                    ; preds = %173
  %191 = load i64, i64* %8, align 8, !dbg !715, !tbaa !117
  br label %200, !dbg !716

; <label>:192:                                    ; preds = %173
  %193 = bitcast i64* %9 to i8*, !dbg !717
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %193) #7, !dbg !717
  %194 = load i64, i64* %8, align 8, !dbg !718, !tbaa !117
  %195 = call i32 @string2ll(i8* nonnull %188, i64 %194, i64* nonnull %9) #6, !dbg !720
  %196 = icmp eq i32 %195, 0, !dbg !722
  br i1 %196, label %197, label %198, !dbg !722

; <label>:197:                                    ; preds = %192
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !722
  call void @_exit(i32 1) #8, !dbg !722
  unreachable, !dbg !722

; <label>:198:                                    ; preds = %192
  %199 = load i64, i64* %9, align 8, !dbg !723, !tbaa !265
  store i64 %199, i64* %8, align 8, !dbg !724, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %193) #7, !dbg !725
  br label %200

; <label>:200:                                    ; preds = %190, %198
  %201 = phi i64 [ %191, %190 ], [ %199, %198 ], !dbg !726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %187) #7, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  %202 = add nsw i64 %201, 1, !dbg !728
  %203 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %203) #7, !dbg !732
  %204 = call i32 @ll2string(i8* nonnull %203, i64 21, i64 %202) #6, !dbg !733
  %205 = load i8*, i8** %16, align 8, !dbg !735, !tbaa !234
  %206 = call i8* @lpInsert(i8* nonnull %104, i8* nonnull %203, i32 %204, i8* %205, i32 2, i8** nonnull %16) #6, !dbg !736
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %203) #7, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %207 = load i8*, i8** %16, align 8, !dbg !739, !tbaa !234
  %208 = call i8* @lpNext(i8* %206, i8* %207) #6, !dbg !740
  store i8* %208, i8** %16, align 8, !dbg !741, !tbaa !234
  %209 = call i8* @lpNext(i8* %206, i8* %208) #6, !dbg !742
  store i8* %209, i8** %16, align 8, !dbg !743, !tbaa !234
  %210 = bitcast i64* %6 to i8*, !dbg !746
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %210) #7, !dbg !746
  %211 = call i8* @lpGet(i8* %209, i64* nonnull %6, i8* null) #6, !dbg !748
  %212 = icmp eq i8* %211, null, !dbg !750
  br i1 %212, label %213, label %215, !dbg !751

; <label>:213:                                    ; preds = %200
  %214 = load i64, i64* %6, align 8, !dbg !752, !tbaa !117
  br label %223, !dbg !753

; <label>:215:                                    ; preds = %200
  %216 = bitcast i64* %7 to i8*, !dbg !754
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216) #7, !dbg !754
  %217 = load i64, i64* %6, align 8, !dbg !755, !tbaa !117
  %218 = call i32 @string2ll(i8* nonnull %211, i64 %217, i64* nonnull %7) #6, !dbg !757
  %219 = icmp eq i32 %218, 0, !dbg !759
  br i1 %219, label %220, label %221, !dbg !759

; <label>:220:                                    ; preds = %215
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !759
  call void @_exit(i32 1) #8, !dbg !759
  unreachable, !dbg !759

; <label>:221:                                    ; preds = %215
  %222 = load i64, i64* %7, align 8, !dbg !760, !tbaa !265
  store i64 %222, i64* %6, align 8, !dbg !761, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216) #7, !dbg !762
  br label %223

; <label>:223:                                    ; preds = %213, %221
  %224 = phi i64 [ %214, %213 ], [ %222, %221 ], !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %210) #7, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %225 = load i8*, i8** %16, align 8, !dbg !765, !tbaa !234
  %226 = call i8* @lpNext(i8* %206, i8* %225) #6, !dbg !766
  store i8* %226, i8** %16, align 8, !dbg !767, !tbaa !234
  %227 = icmp eq i64 %224, %2, !dbg !768
  br i1 %227, label %228, label %283, !dbg !769

; <label>:228:                                    ; preds = %223
  %229 = icmp sgt i64 %2, 0, !dbg !771
  br i1 %229, label %230, label %279, !dbg !772

; <label>:230:                                    ; preds = %228
  %231 = bitcast i64* %17 to i8*
  %232 = getelementptr inbounds [21 x i8], [21 x i8]* %18, i64 0, i64 0
  br label %233, !dbg !772

; <label>:233:                                    ; preds = %230, %273
  %234 = phi i8* [ %226, %230 ], [ %275, %273 ], !dbg !773
  %235 = phi i64 [ 0, %230 ], [ %276, %273 ]
  %236 = shl nuw nsw i64 %235, 1, !dbg !774
  %237 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %236, !dbg !775
  %238 = load %struct.redisObject*, %struct.redisObject** %237, align 8, !dbg !775, !tbaa !234
  %239 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %238, i64 0, i32 2, !dbg !776
  %240 = load i8*, i8** %239, align 8, !dbg !776, !tbaa !648
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %231) #7, !dbg !778
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %232) #7, !dbg !779
  %241 = call i8* @lpGet(i8* %234, i64* nonnull %17, i8* nonnull %232) #6, !dbg !782
  %242 = getelementptr inbounds i8, i8* %240, i64 -1, !dbg !787
  %243 = load i8, i8* %242, align 1, !dbg !787, !tbaa !663
  %244 = trunc i8 %243 to i3, !dbg !789
  switch i3 %244, label %266 [
    i3 0, label %245
    i3 1, label %248
    i3 2, label %252
    i3 3, label %257
    i3 -4, label %262
  ], !dbg !789

; <label>:245:                                    ; preds = %233
  %246 = lshr i8 %243, 3, !dbg !790
  %247 = zext i8 %246 to i64, !dbg !790
  br label %266, !dbg !791

; <label>:248:                                    ; preds = %233
  %249 = getelementptr inbounds i8, i8* %240, i64 -3, !dbg !792
  %250 = load i8, i8* %249, align 1, !dbg !793, !tbaa !663
  %251 = zext i8 %250 to i64, !dbg !792
  br label %266, !dbg !794

; <label>:252:                                    ; preds = %233
  %253 = getelementptr inbounds i8, i8* %240, i64 -5, !dbg !795
  %254 = bitcast i8* %253 to i16*, !dbg !796
  %255 = load i16, i16* %254, align 1, !dbg !796, !tbaa !674
  %256 = zext i16 %255 to i64, !dbg !795
  br label %266, !dbg !797

; <label>:257:                                    ; preds = %233
  %258 = getelementptr inbounds i8, i8* %240, i64 -9, !dbg !798
  %259 = bitcast i8* %258 to i32*, !dbg !799
  %260 = load i32, i32* %259, align 1, !dbg !799, !tbaa !679
  %261 = zext i32 %260 to i64, !dbg !798
  br label %266, !dbg !800

; <label>:262:                                    ; preds = %233
  %263 = getelementptr inbounds i8, i8* %240, i64 -17, !dbg !801
  %264 = bitcast i8* %263 to i64*, !dbg !802
  %265 = load i64, i64* %264, align 1, !dbg !802, !tbaa !117
  br label %266, !dbg !803

; <label>:266:                                    ; preds = %233, %245, %248, %252, %257, %262
  %267 = phi i64 [ %265, %262 ], [ %261, %257 ], [ %256, %252 ], [ %251, %248 ], [ %247, %245 ], [ 0, %233 ], !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  %268 = load i64, i64* %17, align 8, !dbg !806, !tbaa !117
  %269 = icmp eq i64 %267, %268, !dbg !807
  br i1 %269, label %270, label %278, !dbg !808

; <label>:270:                                    ; preds = %266
  %271 = call i32 @memcmp(i8* %241, i8* %240, i64 %267) #6, !dbg !809
  %272 = icmp eq i32 %271, 0, !dbg !810
  br i1 %272, label %273, label %278, !dbg !811

; <label>:273:                                    ; preds = %270
  %274 = load i8*, i8** %16, align 8, !dbg !812, !tbaa !234
  %275 = call i8* @lpNext(i8* %206, i8* %274) #6, !dbg !813
  store i8* %275, i8** %16, align 8, !dbg !814, !tbaa !234
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %232) #7, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %231) #7, !dbg !815
  %276 = add nuw nsw i64 %235, 1, !dbg !816
  %277 = icmp slt i64 %276, %2, !dbg !771
  br i1 %277, label %233, label %279, !dbg !772, !llvm.loop !817

; <label>:278:                                    ; preds = %266, %270
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %232) #7, !dbg !815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %231) #7, !dbg !815
  br label %279

; <label>:279:                                    ; preds = %273, %228, %278
  %280 = phi i64 [ %235, %278 ], [ 0, %228 ], [ %276, %273 ]
  %281 = icmp eq i64 %280, %2, !dbg !819
  %282 = select i1 %281, i32 2, i32 0, !dbg !821
  br label %283, !dbg !822

; <label>:283:                                    ; preds = %279, %223
  %284 = phi i32 [ %282, %279 ], [ 0, %223 ], !dbg !524
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185) #7, !dbg !823
  br label %285

; <label>:285:                                    ; preds = %283, %124
  %286 = phi i8* [ %203, %283 ], [ %116, %124 ], !dbg !824
  %287 = phi i64 [ %184, %283 ], [ %69, %124 ], !dbg !825
  %288 = phi i64 [ %181, %283 ], [ %70, %124 ], !dbg !825
  %289 = phi i32 [ %284, %283 ], [ 2, %124 ], !dbg !826
  %290 = phi i8* [ %206, %283 ], [ %127, %124 ], !dbg !825
  %291 = sext i32 %289 to i64, !dbg !827
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %286) #7, !dbg !824
  %292 = call i32 @ll2string(i8* nonnull %286, i64 21, i64 %291) #6, !dbg !830
  %293 = call i8* @lpAppend(i8* %290, i8* nonnull %286, i32 %292) #6, !dbg !832
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %286) #7, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  %294 = sub i64 %70, %288, !dbg !835
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %286) #7, !dbg !838
  %295 = call i32 @ll2string(i8* nonnull %286, i64 21, i64 %294) #6, !dbg !839
  %296 = call i8* @lpAppend(i8* %293, i8* nonnull %286, i32 %295) #6, !dbg !841
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %286) #7, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %297 = sub i64 %69, %287, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %286) #7, !dbg !847
  %298 = call i32 @ll2string(i8* nonnull %286, i64 21, i64 %297) #6, !dbg !848
  %299 = call i8* @lpAppend(i8* %296, i8* nonnull %286, i32 %298) #6, !dbg !850
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %286) #7, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %300 = and i32 %289, 2, !dbg !853
  %301 = icmp ne i32 %300, 0, !dbg !853
  br i1 %301, label %305, label %302, !dbg !854

; <label>:302:                                    ; preds = %285
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %286) #7, !dbg !857
  %303 = call i32 @ll2string(i8* nonnull %286, i64 21, i64 %2) #6, !dbg !858
  %304 = call i8* @lpAppend(i8* %299, i8* nonnull %286, i32 %303) #6, !dbg !860
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %286) #7, !dbg !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br label %305, !dbg !863

; <label>:305:                                    ; preds = %302, %285
  %306 = phi i8* [ %299, %285 ], [ %304, %302 ], !dbg !864
  %307 = icmp sgt i64 %2, 0, !dbg !866
  br i1 %307, label %319, label %308, !dbg !867

; <label>:308:                                    ; preds = %387, %305
  %309 = phi i8* [ %306, %305 ], [ %390, %387 ], !dbg !868
  %310 = add nsw i64 %2, 3, !dbg !870
  %311 = add nsw i64 %2, 1, !dbg !871
  %312 = select i1 %301, i64 0, i64 %311, !dbg !874
  %313 = add nsw i64 %310, %312, !dbg !874
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %286) #7, !dbg !877
  %314 = call i32 @ll2string(i8* nonnull %286, i64 21, i64 %313) #6, !dbg !878
  %315 = call i8* @lpAppend(i8* %309, i8* nonnull %286, i32 %314) #6, !dbg !880
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %286) #7, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  %316 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !883
  %317 = load i8*, i8** %316, align 8, !dbg !883, !tbaa !518
  %318 = icmp eq i8* %317, %315, !dbg !885
  br i1 %318, label %396, label %393, !dbg !886

; <label>:319:                                    ; preds = %305, %387
  %320 = phi i64 [ %391, %387 ], [ 0, %305 ]
  %321 = phi i8* [ %390, %387 ], [ %306, %305 ]
  %322 = shl nuw nsw i64 %320, 1, !dbg !887
  %323 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %322, !dbg !888
  %324 = load %struct.redisObject*, %struct.redisObject** %323, align 8, !dbg !888, !tbaa !234
  %325 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %324, i64 0, i32 2, !dbg !889
  %326 = load i8*, i8** %325, align 8, !dbg !889, !tbaa !648
  %327 = or i64 %322, 1, !dbg !891
  %328 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %327, !dbg !892
  %329 = load %struct.redisObject*, %struct.redisObject** %328, align 8, !dbg !892, !tbaa !234
  %330 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %329, i64 0, i32 2, !dbg !893
  %331 = load i8*, i8** %330, align 8, !dbg !893, !tbaa !648
  br i1 %301, label %361, label %332, !dbg !895

; <label>:332:                                    ; preds = %319
  %333 = getelementptr inbounds i8, i8* %326, i64 -1, !dbg !899
  %334 = load i8, i8* %333, align 1, !dbg !899, !tbaa !663
  %335 = trunc i8 %334 to i3, !dbg !901
  switch i3 %335, label %357 [
    i3 0, label %336
    i3 1, label %339
    i3 2, label %343
    i3 3, label %348
    i3 -4, label %353
  ], !dbg !901

; <label>:336:                                    ; preds = %332
  %337 = lshr i8 %334, 3, !dbg !902
  %338 = zext i8 %337 to i64, !dbg !902
  br label %357, !dbg !903

; <label>:339:                                    ; preds = %332
  %340 = getelementptr inbounds i8, i8* %326, i64 -3, !dbg !904
  %341 = load i8, i8* %340, align 1, !dbg !905, !tbaa !663
  %342 = zext i8 %341 to i64, !dbg !904
  br label %357, !dbg !906

; <label>:343:                                    ; preds = %332
  %344 = getelementptr inbounds i8, i8* %326, i64 -5, !dbg !907
  %345 = bitcast i8* %344 to i16*, !dbg !908
  %346 = load i16, i16* %345, align 1, !dbg !908, !tbaa !674
  %347 = zext i16 %346 to i64, !dbg !907
  br label %357, !dbg !909

; <label>:348:                                    ; preds = %332
  %349 = getelementptr inbounds i8, i8* %326, i64 -9, !dbg !910
  %350 = bitcast i8* %349 to i32*, !dbg !911
  %351 = load i32, i32* %350, align 1, !dbg !911, !tbaa !679
  %352 = zext i32 %351 to i64, !dbg !910
  br label %357, !dbg !912

; <label>:353:                                    ; preds = %332
  %354 = getelementptr inbounds i8, i8* %326, i64 -17, !dbg !913
  %355 = bitcast i8* %354 to i64*, !dbg !914
  %356 = load i64, i64* %355, align 1, !dbg !914, !tbaa !117
  br label %357, !dbg !915

; <label>:357:                                    ; preds = %332, %336, %339, %343, %348, %353
  %358 = phi i64 [ %356, %353 ], [ %352, %348 ], [ %347, %343 ], [ %342, %339 ], [ %338, %336 ], [ 0, %332 ], !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  %359 = trunc i64 %358 to i32, !dbg !918
  %360 = call i8* @lpAppend(i8* %321, i8* nonnull %326, i32 %359) #6, !dbg !919
  br label %361, !dbg !920

; <label>:361:                                    ; preds = %357, %319
  %362 = phi i8* [ %321, %319 ], [ %360, %357 ], !dbg !921
  %363 = getelementptr inbounds i8, i8* %331, i64 -1, !dbg !924
  %364 = load i8, i8* %363, align 1, !dbg !924, !tbaa !663
  %365 = trunc i8 %364 to i3, !dbg !926
  switch i3 %365, label %387 [
    i3 0, label %366
    i3 1, label %369
    i3 2, label %373
    i3 3, label %378
    i3 -4, label %383
  ], !dbg !926

; <label>:366:                                    ; preds = %361
  %367 = lshr i8 %364, 3, !dbg !927
  %368 = zext i8 %367 to i64, !dbg !927
  br label %387, !dbg !928

; <label>:369:                                    ; preds = %361
  %370 = getelementptr inbounds i8, i8* %331, i64 -3, !dbg !929
  %371 = load i8, i8* %370, align 1, !dbg !930, !tbaa !663
  %372 = zext i8 %371 to i64, !dbg !929
  br label %387, !dbg !931

; <label>:373:                                    ; preds = %361
  %374 = getelementptr inbounds i8, i8* %331, i64 -5, !dbg !932
  %375 = bitcast i8* %374 to i16*, !dbg !933
  %376 = load i16, i16* %375, align 1, !dbg !933, !tbaa !674
  %377 = zext i16 %376 to i64, !dbg !932
  br label %387, !dbg !934

; <label>:378:                                    ; preds = %361
  %379 = getelementptr inbounds i8, i8* %331, i64 -9, !dbg !935
  %380 = bitcast i8* %379 to i32*, !dbg !936
  %381 = load i32, i32* %380, align 1, !dbg !936, !tbaa !679
  %382 = zext i32 %381 to i64, !dbg !935
  br label %387, !dbg !937

; <label>:383:                                    ; preds = %361
  %384 = getelementptr inbounds i8, i8* %331, i64 -17, !dbg !938
  %385 = bitcast i8* %384 to i64*, !dbg !939
  %386 = load i64, i64* %385, align 1, !dbg !939, !tbaa !117
  br label %387, !dbg !940

; <label>:387:                                    ; preds = %361, %366, %369, %373, %378, %383
  %388 = phi i64 [ %386, %383 ], [ %382, %378 ], [ %377, %373 ], [ %372, %369 ], [ %368, %366 ], [ 0, %361 ], !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  %389 = trunc i64 %388 to i32, !dbg !943
  %390 = call i8* @lpAppend(i8* %362, i8* nonnull %331, i32 %389) #6, !dbg !944
  %391 = add nuw nsw i64 %320, 1, !dbg !945
  %392 = icmp eq i64 %391, %2, !dbg !866
  br i1 %392, label %308, label %319, !dbg !867, !llvm.loop !946

; <label>:393:                                    ; preds = %308
  %394 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !948, !tbaa !108
  %395 = call i32 @raxInsert(%struct.rax* %394, i8* nonnull %71, i64 16, i8* %315, i8** null) #6, !dbg !949
  br label %396, !dbg !949

; <label>:396:                                    ; preds = %308, %393
  %397 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !950
  %398 = load i64, i64* %397, align 8, !dbg !951, !tbaa !952
  %399 = add i64 %398, 1, !dbg !951
  store i64 %399, i64* %397, align 8, !dbg !951, !tbaa !952
  %400 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !953
  store i64 %70, i64* %400, align 8, !dbg !953
  %401 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !953
  store i64 %69, i64* %401, align 8, !dbg !953
  %402 = icmp eq %struct.streamID* %3, null, !dbg !954
  br i1 %402, label %406, label %403, !dbg !956

; <label>:403:                                    ; preds = %396
  %404 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !957
  store i64 %70, i64* %404, align 8, !dbg !957
  %405 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !957
  store i64 %69, i64* %405, align 8, !dbg !957
  br label %406, !dbg !958

; <label>:406:                                    ; preds = %396, %403
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #7, !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %37) #7, !dbg !959
  br label %407

; <label>:407:                                    ; preds = %34, %406
  %408 = phi i32 [ 0, %406 ], [ -1, %34 ], !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  ret i32 %408, !dbg !959
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
define dso_local i64 @streamTrimByLength(%struct.stream* nocapture, i64, i32) local_unnamed_addr #0 !dbg !960 {
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
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !992
  %18 = load i64, i64* %17, align 8, !dbg !992, !tbaa !952
  %19 = icmp ugt i64 %18, %1, !dbg !994
  br i1 %19, label %20, label %215, !dbg !995

; <label>:20:                                     ; preds = %3
  %21 = bitcast %struct.raxIterator* %15 to i8*, !dbg !996
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %21) #7, !dbg !996
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !997
  %23 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !997, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %15, %struct.rax* %23) #6, !dbg !999
  %24 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1000
  %25 = load i64, i64* %17, align 8, !dbg !1002, !tbaa !952
  %26 = icmp ugt i64 %25, %1, !dbg !1003
  br i1 %26, label %27, label %213, !dbg !1004

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 3
  %29 = bitcast i8** %16 to i8*
  %30 = bitcast i64* %13 to i8*
  %31 = bitcast i64* %14 to i8*
  %32 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 2
  %33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 4
  br label %34, !dbg !1004

; <label>:34:                                     ; preds = %27, %201
  %35 = phi i64 [ 0, %27 ], [ %211, %201 ]
  %36 = call i32 @raxNext(%struct.raxIterator* nonnull %15) #6, !dbg !1005
  %37 = icmp eq i32 %36, 0, !dbg !1004
  br i1 %37, label %213, label %38, !dbg !1006

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %28, align 8, !dbg !1007, !tbaa !518
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1009
  %40 = call i8* @lpFirst(i8* %39) #6, !dbg !1010
  store i8* %40, i8** %16, align 8, !dbg !1011, !tbaa !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1014
  %41 = call i8* @lpGet(i8* %40, i64* nonnull %13, i8* null) #6, !dbg !1016
  %42 = icmp eq i8* %41, null, !dbg !1018
  br i1 %42, label %43, label %45, !dbg !1019

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %13, align 8, !dbg !1020, !tbaa !117
  br label %52, !dbg !1021

; <label>:45:                                     ; preds = %38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1022
  %46 = load i64, i64* %13, align 8, !dbg !1023, !tbaa !117
  %47 = call i32 @string2ll(i8* nonnull %41, i64 %46, i64* nonnull %14) #6, !dbg !1025
  %48 = icmp eq i32 %47, 0, !dbg !1027
  br i1 %48, label %49, label %50, !dbg !1027

; <label>:49:                                     ; preds = %45
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1027
  call void @_exit(i32 1) #8, !dbg !1027
  unreachable, !dbg !1027

; <label>:50:                                     ; preds = %45
  %51 = load i64, i64* %14, align 8, !dbg !1028, !tbaa !265
  store i64 %51, i64* %13, align 8, !dbg !1029, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1030
  br label %52

; <label>:52:                                     ; preds = %43, %50
  %53 = phi i64 [ %44, %43 ], [ %51, %50 ], !dbg !1031
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %54 = load i64, i64* %17, align 8, !dbg !1033, !tbaa !952
  %55 = sub i64 %54, %53, !dbg !1035
  %56 = icmp ult i64 %55, %1, !dbg !1036
  br i1 %56, label %57, label %201, !dbg !1037

; <label>:57:                                     ; preds = %52
  %58 = icmp eq i32 %2, 0, !dbg !1038
  br i1 %58, label %59, label %199, !dbg !1040

; <label>:59:                                     ; preds = %57
  %60 = sub i64 %54, %1, !dbg !1041
  %61 = icmp sgt i64 %53, %60, !dbg !1043
  br i1 %61, label %63, label %62, !dbg !1043

; <label>:62:                                     ; preds = %59
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 404) #6, !dbg !1043
  call void @_exit(i32 1) #8, !dbg !1043
  unreachable, !dbg !1043

; <label>:63:                                     ; preds = %59
  %64 = sub nsw i64 %53, %60, !dbg !1044
  %65 = getelementptr inbounds [21 x i8], [21 x i8]* %12, i64 0, i64 0, !dbg !1048
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1048
  %66 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %64) #6, !dbg !1049
  %67 = load i8*, i8** %16, align 8, !dbg !1051, !tbaa !234
  %68 = call i8* @lpInsert(i8* %39, i8* nonnull %65, i32 %66, i8* %67, i32 2, i8** nonnull %16) #6, !dbg !1052
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  %69 = load i8*, i8** %16, align 8, !dbg !1055, !tbaa !234
  %70 = call i8* @lpNext(i8* %68, i8* %69) #6, !dbg !1056
  store i8* %70, i8** %16, align 8, !dbg !1057, !tbaa !234
  %71 = bitcast i64* %10 to i8*, !dbg !1060
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1060
  %72 = call i8* @lpGet(i8* %70, i64* nonnull %10, i8* null) #6, !dbg !1062
  %73 = icmp eq i8* %72, null, !dbg !1064
  br i1 %73, label %74, label %76, !dbg !1065

; <label>:74:                                     ; preds = %63
  %75 = load i64, i64* %10, align 8, !dbg !1066, !tbaa !117
  br label %84, !dbg !1067

; <label>:76:                                     ; preds = %63
  %77 = bitcast i64* %11 to i8*, !dbg !1068
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #7, !dbg !1068
  %78 = load i64, i64* %10, align 8, !dbg !1069, !tbaa !117
  %79 = call i32 @string2ll(i8* nonnull %72, i64 %78, i64* nonnull %11) #6, !dbg !1071
  %80 = icmp eq i32 %79, 0, !dbg !1073
  br i1 %80, label %81, label %82, !dbg !1073

; <label>:81:                                     ; preds = %76
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1073
  call void @_exit(i32 1) #8, !dbg !1073
  unreachable, !dbg !1073

; <label>:82:                                     ; preds = %76
  %83 = load i64, i64* %11, align 8, !dbg !1074, !tbaa !265
  store i64 %83, i64* %10, align 8, !dbg !1075, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #7, !dbg !1076
  br label %84

; <label>:84:                                     ; preds = %74, %82
  %85 = phi i64 [ %75, %74 ], [ %83, %82 ], !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  %86 = add nsw i64 %85, %60, !dbg !1079
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1083
  %87 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %86) #6, !dbg !1084
  %88 = load i8*, i8** %16, align 8, !dbg !1086, !tbaa !234
  %89 = call i8* @lpInsert(i8* %68, i8* nonnull %65, i32 %87, i8* %88, i32 2, i8** nonnull %16) #6, !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  %90 = load i8*, i8** %16, align 8, !dbg !1090, !tbaa !234
  %91 = call i8* @lpNext(i8* %89, i8* %90) #6, !dbg !1091
  store i8* %91, i8** %16, align 8, !dbg !1092, !tbaa !234
  %92 = bitcast i64* %8 to i8*, !dbg !1095
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #7, !dbg !1095
  %93 = call i8* @lpGet(i8* %91, i64* nonnull %8, i8* null) #6, !dbg !1097
  %94 = icmp eq i8* %93, null, !dbg !1099
  br i1 %94, label %95, label %97, !dbg !1100

; <label>:95:                                     ; preds = %84
  %96 = load i64, i64* %8, align 8, !dbg !1101, !tbaa !117
  br label %105, !dbg !1102

; <label>:97:                                     ; preds = %84
  %98 = bitcast i64* %9 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98) #7, !dbg !1103
  %99 = load i64, i64* %8, align 8, !dbg !1104, !tbaa !117
  %100 = call i32 @string2ll(i8* nonnull %93, i64 %99, i64* nonnull %9) #6, !dbg !1106
  %101 = icmp eq i32 %100, 0, !dbg !1108
  br i1 %101, label %102, label %103, !dbg !1108

; <label>:102:                                    ; preds = %97
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1108
  call void @_exit(i32 1) #8, !dbg !1108
  unreachable, !dbg !1108

; <label>:103:                                    ; preds = %97
  %104 = load i64, i64* %9, align 8, !dbg !1109, !tbaa !265
  store i64 %104, i64* %8, align 8, !dbg !1110, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98) #7, !dbg !1111
  br label %105

; <label>:105:                                    ; preds = %95, %103
  %106 = phi i64 [ %96, %95 ], [ %104, %103 ], !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #7, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %107 = load i8*, i8** %16, align 8, !dbg !1114, !tbaa !234
  %108 = call i8* @lpNext(i8* %89, i8* %107) #6, !dbg !1115
  store i8* %108, i8** %16, align 8, !dbg !1116, !tbaa !234
  br label %109, !dbg !1118

; <label>:109:                                    ; preds = %109, %105
  %110 = phi i8* [ %108, %105 ], [ %113, %109 ], !dbg !1119
  %111 = phi i64 [ 0, %105 ], [ %114, %109 ], !dbg !1120
  %112 = icmp slt i64 %111, %106, !dbg !1122
  %113 = call i8* @lpNext(i8* %89, i8* %110) #6, !dbg !1119
  store i8* %113, i8** %16, align 8, !dbg !1119, !tbaa !234
  %114 = add nuw nsw i64 %111, 1, !dbg !1123
  br i1 %112, label %109, label %115, !dbg !1124, !llvm.loop !1125

; <label>:115:                                    ; preds = %109
  %116 = icmp eq i8* %113, null, !dbg !1127
  br i1 %116, label %192, label %117, !dbg !1127

; <label>:117:                                    ; preds = %115
  %118 = bitcast i64* %6 to i8*
  %119 = bitcast i64* %7 to i8*
  %120 = bitcast i64* %4 to i8*
  %121 = trunc i64 %106 to i32
  %122 = bitcast i64* %5 to i8*
  br label %123, !dbg !1128

; <label>:123:                                    ; preds = %117, %190
  %124 = phi i8* [ %189, %190 ], [ %113, %117 ], !dbg !1128
  %125 = phi i8* [ %154, %190 ], [ %89, %117 ], !dbg !1129
  %126 = phi i64 [ %155, %190 ], [ %35, %117 ], !dbg !1001
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118) #7, !dbg !1132
  %127 = call i8* @lpGet(i8* nonnull %124, i64* nonnull %6, i8* null) #6, !dbg !1134
  %128 = icmp eq i8* %127, null, !dbg !1136
  br i1 %128, label %129, label %131, !dbg !1137

; <label>:129:                                    ; preds = %123
  %130 = load i64, i64* %6, align 8, !dbg !1138, !tbaa !117
  br label %138, !dbg !1139

; <label>:131:                                    ; preds = %123
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119) #7, !dbg !1140
  %132 = load i64, i64* %6, align 8, !dbg !1141, !tbaa !117
  %133 = call i32 @string2ll(i8* nonnull %127, i64 %132, i64* nonnull %7) #6, !dbg !1143
  %134 = icmp eq i32 %133, 0, !dbg !1145
  br i1 %134, label %135, label %136, !dbg !1145

; <label>:135:                                    ; preds = %131
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1145
  call void @_exit(i32 1) #8, !dbg !1145
  unreachable, !dbg !1145

; <label>:136:                                    ; preds = %131
  %137 = load i64, i64* %7, align 8, !dbg !1146, !tbaa !265
  store i64 %137, i64* %6, align 8, !dbg !1147, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #7, !dbg !1148
  br label %138

; <label>:138:                                    ; preds = %129, %136
  %139 = phi i64 [ %130, %129 ], [ %137, %136 ], !dbg !1149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #7, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %140 = trunc i64 %139 to i32, !dbg !1150
  %141 = and i32 %140, 1, !dbg !1152
  %142 = icmp eq i32 %141, 0, !dbg !1152
  br i1 %142, label %143, label %153, !dbg !1153

; <label>:143:                                    ; preds = %138
  %144 = or i32 %140, 1, !dbg !1154
  %145 = sext i32 %144 to i64, !dbg !1155
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1159
  %146 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %145) #6, !dbg !1160
  %147 = load i8*, i8** %16, align 8, !dbg !1162, !tbaa !234
  %148 = call i8* @lpInsert(i8* %125, i8* nonnull %65, i32 %146, i8* %147, i32 2, i8** nonnull %16) #6, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1165
  %149 = add nsw i64 %126, 1, !dbg !1166
  %150 = load i64, i64* %17, align 8, !dbg !1167, !tbaa !952
  %151 = add i64 %150, -1, !dbg !1167
  store i64 %151, i64* %17, align 8, !dbg !1167, !tbaa !952
  %152 = icmp ugt i64 %151, %1, !dbg !1168
  br i1 %152, label %153, label %192, !dbg !1170

; <label>:153:                                    ; preds = %143, %138
  %154 = phi i8* [ %125, %138 ], [ %148, %143 ], !dbg !1171
  %155 = phi i64 [ %126, %138 ], [ %149, %143 ], !dbg !1171
  %156 = phi i32 [ %140, %138 ], [ %144, %143 ], !dbg !1171
  %157 = load i8*, i8** %16, align 8, !dbg !1172, !tbaa !234
  %158 = call i8* @lpNext(i8* %154, i8* %157) #6, !dbg !1173
  store i8* %158, i8** %16, align 8, !dbg !1174, !tbaa !234
  %159 = call i8* @lpNext(i8* %154, i8* %158) #6, !dbg !1175
  store i8* %159, i8** %16, align 8, !dbg !1176, !tbaa !234
  %160 = call i8* @lpNext(i8* %154, i8* %159) #6, !dbg !1177
  store i8* %160, i8** %16, align 8, !dbg !1178, !tbaa !234
  %161 = and i32 %156, 2, !dbg !1179
  %162 = icmp eq i32 %161, 0, !dbg !1179
  br i1 %162, label %163, label %181, !dbg !1181

; <label>:163:                                    ; preds = %153
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %120) #7, !dbg !1185
  %164 = call i8* @lpGet(i8* %160, i64* nonnull %4, i8* null) #6, !dbg !1187
  %165 = icmp eq i8* %164, null, !dbg !1189
  br i1 %165, label %166, label %168, !dbg !1190

; <label>:166:                                    ; preds = %163
  %167 = load i64, i64* %4, align 8, !dbg !1191, !tbaa !117
  br label %175, !dbg !1192

; <label>:168:                                    ; preds = %163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #7, !dbg !1193
  %169 = load i64, i64* %4, align 8, !dbg !1194, !tbaa !117
  %170 = call i32 @string2ll(i8* nonnull %164, i64 %169, i64* nonnull %5) #6, !dbg !1196
  %171 = icmp eq i32 %170, 0, !dbg !1198
  br i1 %171, label %172, label %173, !dbg !1198

; <label>:172:                                    ; preds = %168
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1198
  call void @_exit(i32 1) #8, !dbg !1198
  unreachable, !dbg !1198

; <label>:173:                                    ; preds = %168
  %174 = load i64, i64* %5, align 8, !dbg !1199, !tbaa !265
  store i64 %174, i64* %4, align 8, !dbg !1200, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #7, !dbg !1201
  br label %175

; <label>:175:                                    ; preds = %166, %173
  %176 = phi i64 [ %167, %166 ], [ %174, %173 ], !dbg !1202
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %120) #7, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  %177 = trunc i64 %176 to i32, !dbg !1203
  %178 = shl nsw i32 %177, 1, !dbg !1205
  %179 = or i32 %178, 1, !dbg !1206
  %180 = load i8*, i8** %16, align 8, !dbg !1207, !tbaa !234
  br label %181

; <label>:181:                                    ; preds = %153, %175
  %182 = phi i8* [ %160, %153 ], [ %180, %175 ]
  %183 = phi i32 [ %121, %153 ], [ %179, %175 ]
  br label %184, !dbg !1208

; <label>:184:                                    ; preds = %181, %184
  %185 = phi i8* [ %189, %184 ], [ %182, %181 ], !dbg !1207
  %186 = phi i32 [ %187, %184 ], [ %183, %181 ], !dbg !1207
  %187 = add nsw i32 %186, -1, !dbg !1208
  %188 = icmp eq i32 %186, 0, !dbg !1209
  %189 = call i8* @lpNext(i8* %154, i8* %185) #6, !dbg !1207
  store i8* %189, i8** %16, align 8, !dbg !1207, !tbaa !234
  br i1 %188, label %190, label %184, !dbg !1209, !llvm.loop !1210

; <label>:190:                                    ; preds = %184
  %191 = icmp eq i8* %189, null, !dbg !1127
  br i1 %191, label %192, label %123, !llvm.loop !1212

; <label>:192:                                    ; preds = %190, %143, %115
  %193 = phi i8* [ %89, %115 ], [ %148, %143 ], [ %154, %190 ], !dbg !1129
  %194 = phi i64 [ %35, %115 ], [ %149, %143 ], [ %155, %190 ], !dbg !1001
  %195 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1214, !tbaa !108
  %196 = load i8*, i8** %32, align 8, !dbg !1215, !tbaa !694
  %197 = load i64, i64* %33, align 8, !dbg !1216, !tbaa !692
  %198 = call i32 @raxInsert(%struct.rax* %195, i8* %196, i64 %197, i8* %193, i8** null) #6, !dbg !1217
  br label %199

; <label>:199:                                    ; preds = %192, %57
  %200 = phi i64 [ %35, %57 ], [ %194, %192 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1218
  br label %213

; <label>:201:                                    ; preds = %52
  call void @lpFree(i8* %39) #6, !dbg !1219
  %202 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1221, !tbaa !108
  %203 = load i8*, i8** %32, align 8, !dbg !1222, !tbaa !694
  %204 = load i64, i64* %33, align 8, !dbg !1223, !tbaa !692
  %205 = call i32 @raxRemove(%struct.rax* %202, i8* %203, i64 %204, i8** null) #6, !dbg !1224
  %206 = load i8*, i8** %32, align 8, !dbg !1225, !tbaa !694
  %207 = load i64, i64* %33, align 8, !dbg !1226, !tbaa !692
  %208 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %206, i64 %207) #6, !dbg !1227
  %209 = load i64, i64* %17, align 8, !dbg !1228, !tbaa !952
  %210 = sub i64 %209, %53, !dbg !1228
  store i64 %210, i64* %17, align 8, !dbg !1228, !tbaa !952
  %211 = add nsw i64 %53, %35, !dbg !1229
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1218
  %212 = icmp ugt i64 %210, %1, !dbg !1003
  br i1 %212, label %34, label %213, !dbg !1004

; <label>:213:                                    ; preds = %201, %34, %20, %199
  %214 = phi i64 [ %200, %199 ], [ 0, %20 ], [ %211, %201 ], [ %35, %34 ], !dbg !1230
  call void @raxStop(%struct.raxIterator* nonnull %15) #6, !dbg !1231
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %21) #7, !dbg !1232
  br label %215

; <label>:215:                                    ; preds = %3, %213
  %216 = phi i64 [ %214, %213 ], [ 0, %3 ], !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret i64 %216, !dbg !1232
}

; Function Attrs: noredzone
declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStart(%struct.streamIterator*, %struct.stream*, %struct.streamID* readonly, %struct.streamID* readonly, i32) local_unnamed_addr #0 !dbg !1233 {
  %6 = alloca [2 x i64], align 16
  %7 = icmp ne %struct.streamID* %2, null, !dbg !1274
  %8 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, !dbg !1275
  br i1 %7, label %9, label %21, !dbg !1277

; <label>:9:                                      ; preds = %5
  %10 = bitcast [2 x i64]* %8 to i8*, !dbg !1278
  %11 = bitcast [2 x i64]* %6 to i8*, !dbg !1281
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !1281
  %12 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1282
  %13 = load i64, i64* %12, align 8, !dbg !1282, !tbaa !178
  %14 = tail call i64 @intrev64(i64 %13) #6, !dbg !1282
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1283
  store i64 %14, i64* %15, align 16, !dbg !1284, !tbaa !117
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1285
  %17 = load i64, i64* %16, align 8, !dbg !1285, !tbaa !188
  %18 = tail call i64 @intrev64(i64 %17) #6, !dbg !1285
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1286
  store i64 %18, i64* %19, align 8, !dbg !1287, !tbaa !117
  %20 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %11, i64 16) #6, !dbg !1288
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1289
  br label %23, !dbg !1290

; <label>:21:                                     ; preds = %5
  %22 = bitcast [2 x i64]* %8 to <2 x i64>*, !dbg !1291
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !dbg !1291, !tbaa !117
  br label %23

; <label>:23:                                     ; preds = %21, %9
  %24 = icmp ne %struct.streamID* %3, null, !dbg !1292
  %25 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, !dbg !1293
  br i1 %24, label %26, label %38, !dbg !1295

; <label>:26:                                     ; preds = %23
  %27 = bitcast [2 x i64]* %25 to i8*, !dbg !1296
  %28 = bitcast [2 x i64]* %6 to i8*, !dbg !1299
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1299
  %29 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1300
  %30 = load i64, i64* %29, align 8, !dbg !1300, !tbaa !178
  %31 = call i64 @intrev64(i64 %30) #6, !dbg !1300
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1301
  store i64 %31, i64* %32, align 16, !dbg !1302, !tbaa !117
  %33 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1303
  %34 = load i64, i64* %33, align 8, !dbg !1303, !tbaa !188
  %35 = call i64 @intrev64(i64 %34) #6, !dbg !1303
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1304
  store i64 %35, i64* %36, align 8, !dbg !1305, !tbaa !117
  %37 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %28, i64 16) #6, !dbg !1306
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br label %40, !dbg !1308

; <label>:38:                                     ; preds = %23
  %39 = bitcast [2 x i64]* %25 to <2 x i64>*, !dbg !1309
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %39, align 8, !dbg !1309, !tbaa !117
  br label %40

; <label>:40:                                     ; preds = %38, %26
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !1310
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 0, !dbg !1311
  %43 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !1311, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %41, %struct.rax* %43) #6, !dbg !1312
  %44 = icmp eq i32 %4, 0, !dbg !1313
  br i1 %44, label %45, label %63, !dbg !1315

; <label>:45:                                     ; preds = %40
  br i1 %7, label %46, label %61, !dbg !1316

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1319
  %48 = load i64, i64* %47, align 8, !dbg !1319, !tbaa !178
  %49 = icmp eq i64 %48, 0, !dbg !1320
  br i1 %49, label %50, label %54, !dbg !1321

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1322
  %52 = load i64, i64* %51, align 8, !dbg !1322, !tbaa !188
  %53 = icmp eq i64 %52, 0, !dbg !1323
  br i1 %53, label %61, label %54, !dbg !1324

; <label>:54:                                     ; preds = %50, %46
  %55 = bitcast [2 x i64]* %8 to i8*, !dbg !1325
  %56 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %55, i64 16) #6, !dbg !1327
  %57 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #6, !dbg !1328
  %58 = icmp eq i32 %57, 0, !dbg !1328
  br i1 %58, label %81, label %59, !dbg !1330

; <label>:59:                                     ; preds = %54
  %60 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1331
  br label %81, !dbg !1331

; <label>:61:                                     ; preds = %50, %45
  %62 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1332
  br label %81

; <label>:63:                                     ; preds = %40
  br i1 %24, label %64, label %79, !dbg !1334

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1337
  %66 = load i64, i64* %65, align 8, !dbg !1337, !tbaa !178
  %67 = icmp eq i64 %66, 0, !dbg !1338
  br i1 %67, label %68, label %72, !dbg !1339

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1340
  %70 = load i64, i64* %69, align 8, !dbg !1340, !tbaa !188
  %71 = icmp eq i64 %70, 0, !dbg !1341
  br i1 %71, label %79, label %72, !dbg !1342

; <label>:72:                                     ; preds = %68, %64
  %73 = bitcast [2 x i64]* %25 to i8*, !dbg !1343
  %74 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %73, i64 16) #6, !dbg !1345
  %75 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #6, !dbg !1346
  %76 = icmp eq i32 %75, 0, !dbg !1346
  br i1 %76, label %81, label %77, !dbg !1348

; <label>:77:                                     ; preds = %72
  %78 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1349
  br label %81, !dbg !1349

; <label>:79:                                     ; preds = %68, %63
  %80 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1350
  br label %81

; <label>:81:                                     ; preds = %72, %54, %79, %77, %61, %59
  %82 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1352
  store %struct.stream* %1, %struct.stream** %82, align 8, !dbg !1353, !tbaa !1354
  %83 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1356
  %84 = bitcast i8** %83 to <2 x i8*>*, !dbg !1357
  store <2 x i8*> zeroinitializer, <2 x i8*>* %84, align 8, !dbg !1357, !tbaa !234
  %85 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !1358
  store i32 %4, i32* %85, align 4, !dbg !1359, !tbaa !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  ret void, !dbg !1361
}

; Function Attrs: noredzone
declare dso_local i32 @raxEOF(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamIteratorGetID(%struct.streamIterator*, %struct.streamID* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !1362 {
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
  br label %61, !dbg !1403

; <label>:61:                                     ; preds = %182, %3
  %62 = load i8*, i8** %20, align 8, !dbg !1404, !tbaa !1405
  %63 = icmp eq i8* %62, null, !dbg !1406
  br i1 %63, label %67, label %64, !dbg !1407

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %22, align 8, !dbg !1408, !tbaa !1409
  %66 = icmp eq i8* %65, null, !dbg !1410
  br i1 %66, label %67, label %128, !dbg !1411

; <label>:67:                                     ; preds = %64, %61
  %68 = load i32, i32* %21, align 4, !dbg !1412, !tbaa !1360
  %69 = icmp eq i32 %68, 0, !dbg !1414
  br i1 %69, label %70, label %76, !dbg !1415

; <label>:70:                                     ; preds = %67
  %71 = call i32 @raxNext(%struct.raxIterator* nonnull %49) #6, !dbg !1416
  %72 = icmp eq i32 %71, 0, !dbg !1416
  br i1 %72, label %342, label %73, !dbg !1417

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %21, align 4, !dbg !1418, !tbaa !1360
  %75 = icmp eq i32 %74, 0, !dbg !1420
  br i1 %75, label %79, label %76, !dbg !1421

; <label>:76:                                     ; preds = %67, %73
  %77 = call i32 @raxPrev(%struct.raxIterator* nonnull %49) #6, !dbg !1422
  %78 = icmp eq i32 %77, 0, !dbg !1422
  br i1 %78, label %342, label %79, !dbg !1423

; <label>:79:                                     ; preds = %76, %73
  %80 = load i64, i64* %50, align 8, !dbg !1424, !tbaa !1425
  %81 = icmp eq i64 %80, 16, !dbg !1424
  br i1 %81, label %83, label %82, !dbg !1424

; <label>:82:                                     ; preds = %79
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 541) #6, !dbg !1424
  call void @_exit(i32 1) #8, !dbg !1424
  unreachable, !dbg !1424

; <label>:83:                                     ; preds = %79
  %84 = load i8*, i8** %51, align 8, !dbg !1426, !tbaa !1427
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1430
  %85 = call i8* @memcpy(i8* nonnull %38, i8* %84, i64 16) #6, !dbg !1431
  %86 = load i64, i64* %39, align 16, !dbg !1432, !tbaa !117
  %87 = call i64 @intrev64(i64 %86) #6, !dbg !1432
  store i64 %87, i64* %52, align 8, !dbg !1433, !tbaa !178
  %88 = load i64, i64* %40, align 8, !dbg !1434, !tbaa !117
  %89 = call i64 @intrev64(i64 %88) #6, !dbg !1434
  store i64 %89, i64* %53, align 8, !dbg !1435, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  %90 = load i8*, i8** %54, align 8, !dbg !1437, !tbaa !1438
  store i8* %90, i8** %20, align 8, !dbg !1439, !tbaa !1405
  %91 = call i8* @lpFirst(i8* %90) #6, !dbg !1440
  store i8* %91, i8** %22, align 8, !dbg !1441, !tbaa !1409
  %92 = load i8*, i8** %20, align 8, !dbg !1442, !tbaa !1405
  %93 = call i8* @lpNext(i8* %92, i8* %91) #6, !dbg !1443
  store i8* %93, i8** %22, align 8, !dbg !1444, !tbaa !1409
  %94 = load i8*, i8** %20, align 8, !dbg !1445, !tbaa !1405
  %95 = call i8* @lpNext(i8* %94, i8* %93) #6, !dbg !1446
  store i8* %95, i8** %22, align 8, !dbg !1447, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #7, !dbg !1450
  %96 = call i8* @lpGet(i8* %95, i64* nonnull %16, i8* null) #6, !dbg !1452
  %97 = icmp eq i8* %96, null, !dbg !1454
  br i1 %97, label %98, label %100, !dbg !1455

; <label>:98:                                     ; preds = %83
  %99 = load i64, i64* %16, align 8, !dbg !1456, !tbaa !117
  br label %107, !dbg !1457

; <label>:100:                                    ; preds = %83
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #7, !dbg !1458
  %101 = load i64, i64* %16, align 8, !dbg !1459, !tbaa !117
  %102 = call i32 @string2ll(i8* nonnull %96, i64 %101, i64* nonnull %17) #6, !dbg !1461
  %103 = icmp eq i32 %102, 0, !dbg !1463
  br i1 %103, label %104, label %105, !dbg !1463

; <label>:104:                                    ; preds = %100
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1463
  call void @_exit(i32 1) #8, !dbg !1463
  unreachable, !dbg !1463

; <label>:105:                                    ; preds = %100
  %106 = load i64, i64* %17, align 8, !dbg !1464, !tbaa !265
  store i64 %106, i64* %16, align 8, !dbg !1465, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #7, !dbg !1466
  br label %107

; <label>:107:                                    ; preds = %98, %105
  %108 = phi i64 [ %99, %98 ], [ %106, %105 ], !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #7, !dbg !1466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  store i64 %108, i64* %42, align 8, !dbg !1468, !tbaa !1469
  %109 = load i8*, i8** %20, align 8, !dbg !1470, !tbaa !1405
  %110 = load i8*, i8** %22, align 8, !dbg !1471, !tbaa !1409
  %111 = call i8* @lpNext(i8* %109, i8* %110) #6, !dbg !1472
  store i8* %111, i8** %22, align 8, !dbg !1473, !tbaa !1409
  store i8* %111, i8** %57, align 8, !dbg !1474, !tbaa !1475
  %112 = load i32, i32* %21, align 4, !dbg !1476, !tbaa !1360
  %113 = icmp eq i32 %112, 0, !dbg !1477
  br i1 %113, label %114, label %125, !dbg !1478

; <label>:114:                                    ; preds = %107
  %115 = load i64, i64* %42, align 8, !dbg !1480, !tbaa !1469
  %116 = icmp eq i64 %115, 0, !dbg !1482
  br i1 %116, label %154, label %117, !dbg !1483

; <label>:117:                                    ; preds = %114, %117
  %118 = phi i8* [ %121, %117 ], [ %111, %114 ], !dbg !1484
  %119 = phi i64 [ %122, %117 ], [ 0, %114 ]
  %120 = load i8*, i8** %20, align 8, !dbg !1485, !tbaa !1405
  %121 = call i8* @lpNext(i8* %120, i8* %118) #6, !dbg !1486
  store i8* %121, i8** %22, align 8, !dbg !1487, !tbaa !1409
  %122 = add nuw i64 %119, 1, !dbg !1488
  %123 = load i64, i64* %42, align 8, !dbg !1480, !tbaa !1469
  %124 = icmp ult i64 %122, %123, !dbg !1482
  br i1 %124, label %117, label %154, !dbg !1483, !llvm.loop !1489

; <label>:125:                                    ; preds = %107
  %126 = load i8*, i8** %20, align 8, !dbg !1491, !tbaa !1405
  %127 = call i8* @lpLast(i8* %126) #6, !dbg !1493
  store i8* %127, i8** %22, align 8, !dbg !1494, !tbaa !1409
  br label %154

; <label>:128:                                    ; preds = %64
  %129 = load i32, i32* %21, align 4, !dbg !1495, !tbaa !1360
  %130 = icmp eq i32 %129, 0, !dbg !1496
  br i1 %130, label %154, label %131, !dbg !1497

; <label>:131:                                    ; preds = %128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #7, !dbg !1500
  %132 = call i8* @lpGet(i8* nonnull %65, i64* nonnull %14, i8* null) #6, !dbg !1502
  %133 = icmp eq i8* %132, null, !dbg !1504
  br i1 %133, label %134, label %136, !dbg !1505

; <label>:134:                                    ; preds = %131
  %135 = load i64, i64* %14, align 8, !dbg !1506, !tbaa !117
  br label %143, !dbg !1507

; <label>:136:                                    ; preds = %131
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #7, !dbg !1508
  %137 = load i64, i64* %14, align 8, !dbg !1509, !tbaa !117
  %138 = call i32 @string2ll(i8* nonnull %132, i64 %137, i64* nonnull %15) #6, !dbg !1511
  %139 = icmp eq i32 %138, 0, !dbg !1513
  br i1 %139, label %140, label %141, !dbg !1513

; <label>:140:                                    ; preds = %136
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1513
  call void @_exit(i32 1) #8, !dbg !1513
  unreachable, !dbg !1513

; <label>:141:                                    ; preds = %136
  %142 = load i64, i64* %15, align 8, !dbg !1514, !tbaa !265
  store i64 %142, i64* %14, align 8, !dbg !1515, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #7, !dbg !1516
  br label %143

; <label>:143:                                    ; preds = %134, %141
  %144 = phi i64 [ %135, %134 ], [ %142, %141 ], !dbg !1517
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #7, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %145 = trunc i64 %144 to i32, !dbg !1518
  %146 = load i8*, i8** %22, align 8, !dbg !1520, !tbaa !1409
  br label %147, !dbg !1521

; <label>:147:                                    ; preds = %147, %143
  %148 = phi i8* [ %146, %143 ], [ %153, %147 ], !dbg !1520
  %149 = phi i32 [ %145, %143 ], [ %150, %147 ], !dbg !1520
  %150 = add nsw i32 %149, -1, !dbg !1522
  %151 = icmp eq i32 %149, 0, !dbg !1521
  %152 = load i8*, i8** %20, align 8, !dbg !1520, !tbaa !1405
  %153 = call i8* @lpPrev(i8* %152, i8* %148) #6, !dbg !1520
  store i8* %153, i8** %22, align 8, !dbg !1520, !tbaa !1409
  br i1 %151, label %154, label %147, !dbg !1521, !llvm.loop !1523

; <label>:154:                                    ; preds = %147, %117, %114, %128, %125
  br label %155, !dbg !1525

; <label>:155:                                    ; preds = %154, %341
  %156 = load i32, i32* %21, align 4, !dbg !1525, !tbaa !1360
  %157 = icmp eq i32 %156, 0, !dbg !1526
  br i1 %157, label %158, label %163, !dbg !1527

; <label>:158:                                    ; preds = %155
  %159 = load i8*, i8** %20, align 8, !dbg !1528, !tbaa !1405
  %160 = load i8*, i8** %22, align 8, !dbg !1530, !tbaa !1409
  %161 = call i8* @lpNext(i8* %159, i8* %160) #6, !dbg !1531
  store i8* %161, i8** %22, align 8, !dbg !1532, !tbaa !1409
  %162 = icmp eq i8* %161, null, !dbg !1533
  br i1 %162, label %182, label %190, !dbg !1535, !llvm.loop !1536

; <label>:163:                                    ; preds = %155
  %164 = load i8*, i8** %22, align 8, !dbg !1538, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1541
  %165 = call i8* @lpGet(i8* %164, i64* nonnull %12, i8* null) #6, !dbg !1543
  %166 = icmp eq i8* %165, null, !dbg !1545
  br i1 %166, label %167, label %169, !dbg !1546

; <label>:167:                                    ; preds = %163
  %168 = load i64, i64* %12, align 8, !dbg !1547, !tbaa !117
  br label %176, !dbg !1548

; <label>:169:                                    ; preds = %163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #7, !dbg !1549
  %170 = load i64, i64* %12, align 8, !dbg !1550, !tbaa !117
  %171 = call i32 @string2ll(i8* nonnull %165, i64 %170, i64* nonnull %13) #6, !dbg !1552
  %172 = icmp eq i32 %171, 0, !dbg !1554
  br i1 %172, label %173, label %174, !dbg !1554

; <label>:173:                                    ; preds = %169
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1554
  call void @_exit(i32 1) #8, !dbg !1554
  unreachable, !dbg !1554

; <label>:174:                                    ; preds = %169
  %175 = load i64, i64* %13, align 8, !dbg !1555, !tbaa !265
  store i64 %175, i64* %12, align 8, !dbg !1556, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #7, !dbg !1557
  br label %176

; <label>:176:                                    ; preds = %167, %174
  %177 = phi i64 [ %168, %167 ], [ %175, %174 ], !dbg !1558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  %178 = icmp eq i64 %177, 0, !dbg !1560
  br i1 %178, label %181, label %179, !dbg !1562

; <label>:179:                                    ; preds = %176
  %180 = load i8*, i8** %22, align 8, !dbg !1563, !tbaa !1409
  br label %183, !dbg !1564

; <label>:181:                                    ; preds = %176
  store <2 x i8*> zeroinitializer, <2 x i8*>* %60, align 8, !dbg !1565, !tbaa !234
  br label %182

; <label>:182:                                    ; preds = %158, %181
  br label %61, !dbg !1404, !llvm.loop !1536

; <label>:183:                                    ; preds = %179, %183
  %184 = phi i8* [ %188, %183 ], [ %180, %179 ], !dbg !1563
  %185 = phi i64 [ %186, %183 ], [ %177, %179 ]
  %186 = add nsw i64 %185, -1, !dbg !1564
  %187 = load i8*, i8** %20, align 8, !dbg !1567, !tbaa !1405
  %188 = call i8* @lpPrev(i8* %187, i8* %184) #6, !dbg !1568
  store i8* %188, i8** %22, align 8, !dbg !1569, !tbaa !1409
  %189 = icmp eq i64 %186, 0, !dbg !1570
  br i1 %189, label %190, label %183, !dbg !1570, !llvm.loop !1571

; <label>:190:                                    ; preds = %183, %158
  %191 = phi i8* [ %161, %158 ], [ %188, %183 ]
  %192 = ptrtoint i8* %191 to i64, !dbg !1573
  store i64 %192, i64* %24, align 8, !dbg !1574, !tbaa !1575
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #7, !dbg !1578
  %193 = call i8* @lpGet(i8* %191, i64* nonnull %10, i8* null) #6, !dbg !1580
  %194 = icmp eq i8* %193, null, !dbg !1582
  br i1 %194, label %195, label %197, !dbg !1583

; <label>:195:                                    ; preds = %190
  %196 = load i64, i64* %10, align 8, !dbg !1584, !tbaa !117
  br label %204, !dbg !1585

; <label>:197:                                    ; preds = %190
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1586
  %198 = load i64, i64* %10, align 8, !dbg !1587, !tbaa !117
  %199 = call i32 @string2ll(i8* nonnull %193, i64 %198, i64* nonnull %11) #6, !dbg !1589
  %200 = icmp eq i32 %199, 0, !dbg !1591
  br i1 %200, label %201, label %202, !dbg !1591

; <label>:201:                                    ; preds = %197
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1591
  call void @_exit(i32 1) #8, !dbg !1591
  unreachable, !dbg !1591

; <label>:202:                                    ; preds = %197
  %203 = load i64, i64* %11, align 8, !dbg !1592, !tbaa !265
  store i64 %203, i64* %10, align 8, !dbg !1593, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1594
  br label %204

; <label>:204:                                    ; preds = %195, %202
  %205 = phi i64 [ %196, %195 ], [ %203, %202 ], !dbg !1595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #7, !dbg !1594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  %206 = trunc i64 %205 to i32, !dbg !1596
  %207 = load i8*, i8** %20, align 8, !dbg !1598, !tbaa !1405
  %208 = load i8*, i8** %22, align 8, !dbg !1599, !tbaa !1409
  %209 = call i8* @lpNext(i8* %207, i8* %208) #6, !dbg !1600
  store i8* %209, i8** %22, align 8, !dbg !1601, !tbaa !1409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* nonnull align 8 %29, i64 16, i1 false), !dbg !1602, !tbaa.struct !1603
  %210 = load i8*, i8** %22, align 8, !dbg !1604, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1607
  %211 = call i8* @lpGet(i8* %210, i64* nonnull %8, i8* null) #6, !dbg !1609
  %212 = icmp eq i8* %211, null, !dbg !1611
  br i1 %212, label %213, label %215, !dbg !1612

; <label>:213:                                    ; preds = %204
  %214 = load i64, i64* %8, align 8, !dbg !1613, !tbaa !117
  br label %222, !dbg !1614

; <label>:215:                                    ; preds = %204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #7, !dbg !1615
  %216 = load i64, i64* %8, align 8, !dbg !1616, !tbaa !117
  %217 = call i32 @string2ll(i8* nonnull %211, i64 %216, i64* nonnull %9) #6, !dbg !1618
  %218 = icmp eq i32 %217, 0, !dbg !1620
  br i1 %218, label %219, label %220, !dbg !1620

; <label>:219:                                    ; preds = %215
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1620
  call void @_exit(i32 1) #8, !dbg !1620
  unreachable, !dbg !1620

; <label>:220:                                    ; preds = %215
  %221 = load i64, i64* %9, align 8, !dbg !1621, !tbaa !265
  store i64 %221, i64* %8, align 8, !dbg !1622, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #7, !dbg !1623
  br label %222

; <label>:222:                                    ; preds = %213, %220
  %223 = phi i64 [ %214, %213 ], [ %221, %220 ], !dbg !1624
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %224 = load i64, i64* %33, align 8, !dbg !1625, !tbaa !178
  %225 = add i64 %224, %223, !dbg !1625
  store i64 %225, i64* %33, align 8, !dbg !1625, !tbaa !178
  %226 = load i8*, i8** %20, align 8, !dbg !1626, !tbaa !1405
  %227 = load i8*, i8** %22, align 8, !dbg !1627, !tbaa !1409
  %228 = call i8* @lpNext(i8* %226, i8* %227) #6, !dbg !1628
  store i8* %228, i8** %22, align 8, !dbg !1629, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #7, !dbg !1632
  %229 = call i8* @lpGet(i8* %228, i64* nonnull %6, i8* null) #6, !dbg !1634
  %230 = icmp eq i8* %229, null, !dbg !1636
  br i1 %230, label %231, label %233, !dbg !1637

; <label>:231:                                    ; preds = %222
  %232 = load i64, i64* %6, align 8, !dbg !1638, !tbaa !117
  br label %240, !dbg !1639

; <label>:233:                                    ; preds = %222
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #7, !dbg !1640
  %234 = load i64, i64* %6, align 8, !dbg !1641, !tbaa !117
  %235 = call i32 @string2ll(i8* nonnull %229, i64 %234, i64* nonnull %7) #6, !dbg !1643
  %236 = icmp eq i32 %235, 0, !dbg !1645
  br i1 %236, label %237, label %238, !dbg !1645

; <label>:237:                                    ; preds = %233
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1645
  call void @_exit(i32 1) #8, !dbg !1645
  unreachable, !dbg !1645

; <label>:238:                                    ; preds = %233
  %239 = load i64, i64* %7, align 8, !dbg !1646, !tbaa !265
  store i64 %239, i64* %6, align 8, !dbg !1647, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #7, !dbg !1648
  br label %240

; <label>:240:                                    ; preds = %231, %238
  %241 = phi i64 [ %232, %231 ], [ %239, %238 ], !dbg !1649
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  %242 = load i64, i64* %36, align 8, !dbg !1650, !tbaa !188
  %243 = add i64 %242, %241, !dbg !1650
  store i64 %243, i64* %36, align 8, !dbg !1650, !tbaa !188
  %244 = load i8*, i8** %20, align 8, !dbg !1651, !tbaa !1405
  %245 = load i8*, i8** %22, align 8, !dbg !1652, !tbaa !1409
  %246 = call i8* @lpNext(i8* %244, i8* %245) #6, !dbg !1653
  store i8* %246, i8** %22, align 8, !dbg !1654, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1655
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1659
  %247 = load i64, i64* %33, align 8, !dbg !1660, !tbaa !178
  %248 = call i64 @intrev64(i64 %247) #6, !dbg !1660
  store i64 %248, i64* %39, align 16, !dbg !1661, !tbaa !117
  %249 = load i64, i64* %36, align 8, !dbg !1662, !tbaa !188
  %250 = call i64 @intrev64(i64 %249) #6, !dbg !1662
  store i64 %250, i64* %40, align 8, !dbg !1663, !tbaa !117
  %251 = call i8* @memcpy(i8* nonnull %37, i8* nonnull %38, i64 16) #6, !dbg !1664
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %252 = and i32 %206, 2, !dbg !1666
  %253 = icmp ne i32 %252, 0, !dbg !1666
  br i1 %253, label %254, label %256, !dbg !1668

; <label>:254:                                    ; preds = %240
  %255 = load i64, i64* %42, align 8, !dbg !1669, !tbaa !1469
  store i64 %255, i64* %2, align 8, !dbg !1671, !tbaa !117
  br label %274, !dbg !1672

; <label>:256:                                    ; preds = %240
  %257 = load i8*, i8** %22, align 8, !dbg !1673, !tbaa !1409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #7, !dbg !1677
  %258 = call i8* @lpGet(i8* %257, i64* nonnull %4, i8* null) #6, !dbg !1679
  %259 = icmp eq i8* %258, null, !dbg !1681
  br i1 %259, label %260, label %262, !dbg !1682

; <label>:260:                                    ; preds = %256
  %261 = load i64, i64* %4, align 8, !dbg !1683, !tbaa !117
  br label %269, !dbg !1684

; <label>:262:                                    ; preds = %256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1685
  %263 = load i64, i64* %4, align 8, !dbg !1686, !tbaa !117
  %264 = call i32 @string2ll(i8* nonnull %258, i64 %263, i64* nonnull %5) #6, !dbg !1688
  %265 = icmp eq i32 %264, 0, !dbg !1690
  br i1 %265, label %266, label %267, !dbg !1690

; <label>:266:                                    ; preds = %262
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1690
  call void @_exit(i32 1) #8, !dbg !1690
  unreachable, !dbg !1690

; <label>:267:                                    ; preds = %262
  %268 = load i64, i64* %5, align 8, !dbg !1691, !tbaa !265
  store i64 %268, i64* %4, align 8, !dbg !1692, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1693
  br label %269

; <label>:269:                                    ; preds = %260, %267
  %270 = phi i64 [ %261, %260 ], [ %268, %267 ], !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #7, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  store i64 %270, i64* %2, align 8, !dbg !1695, !tbaa !117
  %271 = load i8*, i8** %20, align 8, !dbg !1696, !tbaa !1405
  %272 = load i8*, i8** %22, align 8, !dbg !1697, !tbaa !1409
  %273 = call i8* @lpNext(i8* %271, i8* %272) #6, !dbg !1698
  store i8* %273, i8** %22, align 8, !dbg !1699, !tbaa !1409
  br label %274

; <label>:274:                                    ; preds = %269, %254
  %275 = load i32, i32* %21, align 4, !dbg !1700, !tbaa !1360
  %276 = icmp eq i32 %275, 0, !dbg !1702
  br i1 %276, label %277, label %294, !dbg !1703

; <label>:277:                                    ; preds = %274
  %278 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #6, !dbg !1704
  %279 = icmp sgt i32 %278, -1, !dbg !1707
  %280 = and i32 %206, 1, !dbg !1708
  %281 = icmp eq i32 %280, 0, !dbg !1708
  %282 = and i1 %281, %279, !dbg !1709
  br i1 %282, label %283, label %311, !dbg !1709

; <label>:283:                                    ; preds = %277
  %284 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #6, !dbg !1710
  %285 = icmp sgt i32 %284, 0, !dbg !1713
  br i1 %285, label %339, label %286, !dbg !1714

; <label>:286:                                    ; preds = %283
  %287 = trunc i64 %205 to i32, !dbg !1596
  %288 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1715
  store i32 %287, i32* %288, align 8, !dbg !1716, !tbaa !1717
  br i1 %253, label %289, label %339, !dbg !1718

; <label>:289:                                    ; preds = %286
  %290 = bitcast i8** %57 to i64*, !dbg !1719
  %291 = load i64, i64* %290, align 8, !dbg !1719, !tbaa !1475
  %292 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1721
  %293 = bitcast i8** %292 to i64*, !dbg !1722
  store i64 %291, i64* %293, align 8, !dbg !1722, !tbaa !1723
  br label %339, !dbg !1724

; <label>:294:                                    ; preds = %274
  %295 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #6, !dbg !1725
  %296 = icmp slt i32 %295, 1, !dbg !1728
  %297 = and i32 %206, 1, !dbg !1729
  %298 = icmp eq i32 %297, 0, !dbg !1729
  %299 = and i1 %298, %296, !dbg !1730
  br i1 %299, label %300, label %311, !dbg !1730

; <label>:300:                                    ; preds = %294
  %301 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #6, !dbg !1731
  %302 = icmp slt i32 %301, 0, !dbg !1734
  br i1 %302, label %339, label %303, !dbg !1735

; <label>:303:                                    ; preds = %300
  %304 = trunc i64 %205 to i32, !dbg !1596
  %305 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1736
  store i32 %304, i32* %305, align 8, !dbg !1737, !tbaa !1717
  br i1 %253, label %306, label %339, !dbg !1738

; <label>:306:                                    ; preds = %303
  %307 = bitcast i8** %57 to i64*, !dbg !1739
  %308 = load i64, i64* %307, align 8, !dbg !1739, !tbaa !1475
  %309 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1741
  %310 = bitcast i8** %309 to i64*, !dbg !1742
  store i64 %308, i64* %310, align 8, !dbg !1742, !tbaa !1723
  br label %339, !dbg !1743

; <label>:311:                                    ; preds = %294, %277
  %312 = load i32, i32* %21, align 4, !dbg !1744, !tbaa !1360
  %313 = icmp eq i32 %312, 0, !dbg !1745
  br i1 %313, label %314, label %329, !dbg !1746

; <label>:314:                                    ; preds = %311
  %315 = load i64, i64* %2, align 8, !dbg !1747, !tbaa !117
  %316 = xor i1 %253, true, !dbg !1748
  %317 = zext i1 %316 to i64, !dbg !1748
  %318 = shl nsw i64 %315, %317, !dbg !1748
  %319 = icmp sgt i64 %318, 0, !dbg !1751
  br i1 %319, label %320, label %341, !dbg !1753

; <label>:320:                                    ; preds = %314
  %321 = load i8*, i8** %22, align 8, !dbg !1754, !tbaa !1409
  br label %322, !dbg !1755

; <label>:322:                                    ; preds = %322, %320
  %323 = phi i8* [ %326, %322 ], [ %321, %320 ], !dbg !1754
  %324 = phi i64 [ %327, %322 ], [ 0, %320 ]
  %325 = load i8*, i8** %20, align 8, !dbg !1755, !tbaa !1405
  %326 = call i8* @lpNext(i8* %325, i8* %323) #6, !dbg !1756
  store i8* %326, i8** %22, align 8, !dbg !1757, !tbaa !1409
  %327 = add nuw nsw i64 %324, 1, !dbg !1758
  %328 = icmp eq i64 %327, %318, !dbg !1751
  br i1 %328, label %341, label %322, !dbg !1753, !llvm.loop !1759

; <label>:329:                                    ; preds = %311
  %330 = select i1 %253, i64 4, i64 5, !dbg !1762
  %331 = load i8*, i8** %22, align 8, !dbg !1763, !tbaa !1409
  br label %332, !dbg !1764

; <label>:332:                                    ; preds = %329, %332
  %333 = phi i8* [ %331, %329 ], [ %337, %332 ], !dbg !1763
  %334 = phi i64 [ %330, %329 ], [ %335, %332 ]
  %335 = add nsw i64 %334, -1, !dbg !1765
  %336 = load i8*, i8** %20, align 8, !dbg !1766, !tbaa !1405
  %337 = call i8* @lpPrev(i8* %336, i8* %333) #6, !dbg !1767
  store i8* %337, i8** %22, align 8, !dbg !1768, !tbaa !1409
  %338 = icmp eq i64 %335, 0, !dbg !1764
  br i1 %338, label %341, label %332, !dbg !1764, !llvm.loop !1769

; <label>:339:                                    ; preds = %283, %289, %286, %300, %306, %303
  %340 = phi i32 [ 1, %303 ], [ 1, %306 ], [ 0, %300 ], [ 1, %286 ], [ 1, %289 ], [ 0, %283 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1771
  br label %342

; <label>:341:                                    ; preds = %332, %322, %314
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1771
  br label %155

; <label>:342:                                    ; preds = %76, %70, %339
  %343 = phi i32 [ %340, %339 ], [ 0, %70 ], [ 0, %76 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  ret i32 %343, !dbg !1772
}

; Function Attrs: noredzone
declare dso_local i32 @raxPrev(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpLast(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorGetField(%struct.streamIterator*, i8** nocapture, i8** nocapture, i64*, i64*) local_unnamed_addr #0 !dbg !1773 {
  %6 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1787
  %7 = load i32, i32* %6, align 8, !dbg !1787, !tbaa !1717
  %8 = and i32 %7, 2, !dbg !1789
  %9 = icmp eq i32 %8, 0, !dbg !1789
  br i1 %9, label %21, label %10, !dbg !1790

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1791
  %12 = load i8*, i8** %11, align 8, !dbg !1791, !tbaa !1723
  %13 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1793
  %14 = tail call i8* @lpGet(i8* %12, i64* %3, i8* nonnull %13) #6, !dbg !1794
  store i8* %14, i8** %1, align 8, !dbg !1795, !tbaa !234
  %15 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1796
  %16 = load i8*, i8** %15, align 8, !dbg !1796, !tbaa !1405
  %17 = load i8*, i8** %11, align 8, !dbg !1797, !tbaa !1723
  %18 = tail call i8* @lpNext(i8* %16, i8* %17) #6, !dbg !1798
  store i8* %18, i8** %11, align 8, !dbg !1799, !tbaa !1723
  %19 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11
  %20 = load i8*, i8** %19, align 8, !dbg !1800, !tbaa !1409
  br label %30, !dbg !1801

; <label>:21:                                     ; preds = %5
  %22 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11, !dbg !1802
  %23 = load i8*, i8** %22, align 8, !dbg !1802, !tbaa !1409
  %24 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1804
  %25 = tail call i8* @lpGet(i8* %23, i64* %3, i8* nonnull %24) #6, !dbg !1805
  store i8* %25, i8** %1, align 8, !dbg !1806, !tbaa !234
  %26 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1807
  %27 = load i8*, i8** %26, align 8, !dbg !1807, !tbaa !1405
  %28 = load i8*, i8** %22, align 8, !dbg !1808, !tbaa !1409
  %29 = tail call i8* @lpNext(i8* %27, i8* %28) #6, !dbg !1809
  store i8* %29, i8** %22, align 8, !dbg !1810, !tbaa !1409
  br label %30

; <label>:30:                                     ; preds = %21, %10
  %31 = phi i8** [ %26, %21 ], [ %15, %10 ], !dbg !1811
  %32 = phi i8** [ %22, %21 ], [ %19, %10 ], !dbg !1800
  %33 = phi i8* [ %29, %21 ], [ %20, %10 ], !dbg !1800
  %34 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 14, i64 0, !dbg !1812
  %35 = tail call i8* @lpGet(i8* %33, i64* %4, i8* nonnull %34) #6, !dbg !1813
  store i8* %35, i8** %2, align 8, !dbg !1814, !tbaa !234
  %36 = load i8*, i8** %31, align 8, !dbg !1811, !tbaa !1405
  %37 = load i8*, i8** %32, align 8, !dbg !1815, !tbaa !1409
  %38 = tail call i8* @lpNext(i8* %36, i8* %37) #6, !dbg !1816
  store i8* %38, i8** %32, align 8, !dbg !1817, !tbaa !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1818
  ret void, !dbg !1818
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorRemoveEntry(%struct.streamIterator*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !1819 {
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
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1848
  %15 = load i8*, i8** %14, align 8, !dbg !1848, !tbaa !1405
  %16 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 12, !dbg !1850
  %17 = load i8*, i8** %16, align 8, !dbg !1850, !tbaa !1575
  %18 = bitcast i64* %9 to i8*, !dbg !1853
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !1853
  %19 = call i8* @lpGet(i8* %17, i64* nonnull %9, i8* null) #6, !dbg !1855
  %20 = icmp eq i8* %19, null, !dbg !1857
  br i1 %20, label %21, label %23, !dbg !1858

; <label>:21:                                     ; preds = %2
  %22 = load i64, i64* %9, align 8, !dbg !1859, !tbaa !117
  br label %31, !dbg !1860

; <label>:23:                                     ; preds = %2
  %24 = bitcast i64* %10 to i8*, !dbg !1861
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #7, !dbg !1861
  %25 = load i64, i64* %9, align 8, !dbg !1862, !tbaa !117
  %26 = call i32 @string2ll(i8* nonnull %19, i64 %25, i64* nonnull %10) #6, !dbg !1864
  %27 = icmp eq i32 %26, 0, !dbg !1866
  br i1 %27, label %28, label %29, !dbg !1866

; <label>:28:                                     ; preds = %23
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1866
  call void @_exit(i32 1) #8, !dbg !1866
  unreachable, !dbg !1866

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %10, align 8, !dbg !1867, !tbaa !265
  store i64 %30, i64* %9, align 8, !dbg !1868, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #7, !dbg !1869
  br label %31

; <label>:31:                                     ; preds = %21, %29
  %32 = phi i64 [ %22, %21 ], [ %30, %29 ], !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  %33 = shl i64 %32, 32, !dbg !1871
  %34 = ashr exact i64 %33, 32, !dbg !1871
  %35 = or i64 %34, 1, !dbg !1871
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1875
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1875
  %37 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %35) #6, !dbg !1876
  %38 = load i8*, i8** %16, align 8, !dbg !1878, !tbaa !234
  %39 = call i8* @lpInsert(i8* %15, i8* nonnull %36, i32 %37, i8* %38, i32 2, i8** nonnull %16) #6, !dbg !1879
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  %40 = bitcast i8** %11 to i8*, !dbg !1882
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #7, !dbg !1882
  %41 = call i8* @lpFirst(i8* %39) #6, !dbg !1883
  store i8* %41, i8** %11, align 8, !dbg !1884, !tbaa !234
  %42 = bitcast i64* %6 to i8*, !dbg !1887
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #7, !dbg !1887
  %43 = call i8* @lpGet(i8* %41, i64* nonnull %6, i8* null) #6, !dbg !1889
  %44 = icmp eq i8* %43, null, !dbg !1891
  br i1 %44, label %45, label %47, !dbg !1892

; <label>:45:                                     ; preds = %31
  %46 = load i64, i64* %6, align 8, !dbg !1893, !tbaa !117
  br label %55, !dbg !1894

; <label>:47:                                     ; preds = %31
  %48 = bitcast i64* %7 to i8*, !dbg !1895
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1895
  %49 = load i64, i64* %6, align 8, !dbg !1896, !tbaa !117
  %50 = call i32 @string2ll(i8* nonnull %43, i64 %49, i64* nonnull %7) #6, !dbg !1898
  %51 = icmp eq i32 %50, 0, !dbg !1900
  br i1 %51, label %52, label %53, !dbg !1900

; <label>:52:                                     ; preds = %47
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1900
  call void @_exit(i32 1) #8, !dbg !1900
  unreachable, !dbg !1900

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %7, align 8, !dbg !1901, !tbaa !265
  store i64 %54, i64* %6, align 8, !dbg !1902, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1903
  br label %55

; <label>:55:                                     ; preds = %45, %53
  %56 = phi i64 [ %46, %45 ], [ %54, %53 ], !dbg !1904
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #7, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  %57 = icmp eq i64 %56, 1, !dbg !1906
  br i1 %57, label %58, label %68, !dbg !1907

; <label>:58:                                     ; preds = %55
  call void @lpFree(i8* %39) #6, !dbg !1908
  %59 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1910
  %60 = load %struct.stream*, %struct.stream** %59, align 8, !dbg !1910, !tbaa !1354
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i64 0, i32 0, !dbg !1911
  %62 = load %struct.rax*, %struct.rax** %61, align 8, !dbg !1911, !tbaa !108
  %63 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !1912
  %64 = load i8*, i8** %63, align 8, !dbg !1912, !tbaa !1427
  %65 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !1913
  %66 = load i64, i64* %65, align 8, !dbg !1913, !tbaa !1425
  %67 = call i32 @raxRemove(%struct.rax* %62, i8* %64, i64 %66, i8** null) #6, !dbg !1914
  br label %106, !dbg !1915

; <label>:68:                                     ; preds = %55
  %69 = add nsw i64 %56, -1, !dbg !1916
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1920
  %70 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %69) #6, !dbg !1921
  %71 = load i8*, i8** %11, align 8, !dbg !1923, !tbaa !234
  %72 = call i8* @lpInsert(i8* %39, i8* nonnull %36, i32 %70, i8* %71, i32 2, i8** nonnull %11) #6, !dbg !1924
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  %73 = load i8*, i8** %11, align 8, !dbg !1927, !tbaa !234
  %74 = call i8* @lpNext(i8* %72, i8* %73) #6, !dbg !1928
  store i8* %74, i8** %11, align 8, !dbg !1929, !tbaa !234
  %75 = bitcast i64* %4 to i8*, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #7, !dbg !1932
  %76 = call i8* @lpGet(i8* %74, i64* nonnull %4, i8* null) #6, !dbg !1934
  %77 = icmp eq i8* %76, null, !dbg !1936
  br i1 %77, label %78, label %80, !dbg !1937

; <label>:78:                                     ; preds = %68
  %79 = load i64, i64* %4, align 8, !dbg !1938, !tbaa !117
  br label %88, !dbg !1939

; <label>:80:                                     ; preds = %68
  %81 = bitcast i64* %5 to i8*, !dbg !1940
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %81) #7, !dbg !1940
  %82 = load i64, i64* %4, align 8, !dbg !1941, !tbaa !117
  %83 = call i32 @string2ll(i8* nonnull %76, i64 %82, i64* nonnull %5) #6, !dbg !1943
  %84 = icmp eq i32 %83, 0, !dbg !1945
  br i1 %84, label %85, label %86, !dbg !1945

; <label>:85:                                     ; preds = %80
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1945
  call void @_exit(i32 1) #8, !dbg !1945
  unreachable, !dbg !1945

; <label>:86:                                     ; preds = %80
  %87 = load i64, i64* %5, align 8, !dbg !1946, !tbaa !265
  store i64 %87, i64* %4, align 8, !dbg !1947, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %81) #7, !dbg !1948
  br label %88

; <label>:88:                                     ; preds = %78, %86
  %89 = phi i64 [ %79, %78 ], [ %87, %86 ], !dbg !1949
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #7, !dbg !1948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  %90 = add nsw i64 %89, 1, !dbg !1950
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1954
  %91 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %90) #6, !dbg !1955
  %92 = load i8*, i8** %11, align 8, !dbg !1957, !tbaa !234
  %93 = call i8* @lpInsert(i8* %72, i8* nonnull %36, i32 %91, i8* %92, i32 2, i8** nonnull %11) #6, !dbg !1958
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  %94 = load i8*, i8** %14, align 8, !dbg !1961, !tbaa !1405
  %95 = icmp eq i8* %94, %93, !dbg !1963
  %96 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1964
  br i1 %95, label %106, label %97, !dbg !1965

; <label>:97:                                     ; preds = %88
  %98 = load %struct.stream*, %struct.stream** %96, align 8, !dbg !1966, !tbaa !1354
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i64 0, i32 0, !dbg !1967
  %100 = load %struct.rax*, %struct.rax** %99, align 8, !dbg !1967, !tbaa !108
  %101 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !1968
  %102 = load i8*, i8** %101, align 8, !dbg !1968, !tbaa !1427
  %103 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !1969
  %104 = load i64, i64* %103, align 8, !dbg !1969, !tbaa !1425
  %105 = call i32 @raxInsert(%struct.rax* %100, i8* %102, i64 %104, i8* %93, i8** null) #6, !dbg !1970
  br label %106, !dbg !1970

; <label>:106:                                    ; preds = %88, %97, %58
  %107 = phi %struct.stream** [ %96, %97 ], [ %59, %58 ], [ %96, %88 ], !dbg !1971
  %108 = load %struct.stream*, %struct.stream** %107, align 8, !dbg !1971, !tbaa !1354
  %109 = getelementptr inbounds %struct.stream, %struct.stream* %108, i64 0, i32 1, !dbg !1972
  %110 = load i64, i64* %109, align 8, !dbg !1973, !tbaa !952
  %111 = add i64 %110, -1, !dbg !1973
  store i64 %111, i64* %109, align 8, !dbg !1973, !tbaa !952
  %112 = bitcast %struct.streamID* %12 to i8*, !dbg !1974
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %112) #7, !dbg !1974
  %113 = bitcast %struct.streamID* %13 to i8*, !dbg !1974
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %113) #7, !dbg !1974
  %114 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !1975
  %115 = load i32, i32* %114, align 4, !dbg !1975, !tbaa !1360
  %116 = icmp eq i32 %115, 0, !dbg !1976
  br i1 %116, label %131, label %117, !dbg !1977

; <label>:117:                                    ; preds = %106
  %118 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, i64 0, !dbg !1978
  %119 = bitcast i64* %118 to i8*, !dbg !1978
  %120 = bitcast [2 x i64]* %3 to i8*, !dbg !1982
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %120) #7, !dbg !1982
  %121 = call i8* @memcpy(i8* nonnull %120, i8* nonnull %119, i64 16) #6, !dbg !1983
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !1984
  %123 = load i64, i64* %122, align 16, !dbg !1984, !tbaa !117
  %124 = call i64 @intrev64(i64 %123) #6, !dbg !1984
  %125 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 0, !dbg !1985
  store i64 %124, i64* %125, align 8, !dbg !1986, !tbaa !178
  %126 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !1987
  %127 = load i64, i64* %126, align 8, !dbg !1987, !tbaa !117
  %128 = call i64 @intrev64(i64 %127) #6, !dbg !1987
  %129 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 1, !dbg !1988
  store i64 %128, i64* %129, align 8, !dbg !1989, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %120) #7, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  %130 = bitcast %struct.streamID* %1 to i8*, !dbg !1991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %113, i8* align 8 %130, i64 16, i1 false), !dbg !1991, !tbaa.struct !1603
  br label %145, !dbg !1992

; <label>:131:                                    ; preds = %106
  %132 = bitcast %struct.streamID* %1 to i8*, !dbg !1993
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %112, i8* align 8 %132, i64 16, i1 false), !dbg !1993, !tbaa.struct !1603
  %133 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, i64 0, !dbg !1994
  %134 = bitcast i64* %133 to i8*, !dbg !1994
  %135 = bitcast [2 x i64]* %3 to i8*, !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %135) #7, !dbg !1998
  %136 = call i8* @memcpy(i8* nonnull %135, i8* nonnull %134, i64 16) #6, !dbg !1999
  %137 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !2000
  %138 = load i64, i64* %137, align 16, !dbg !2000, !tbaa !117
  %139 = call i64 @intrev64(i64 %138) #6, !dbg !2000
  %140 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 0, !dbg !2001
  store i64 %139, i64* %140, align 8, !dbg !2002, !tbaa !178
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !2003
  %142 = load i64, i64* %141, align 8, !dbg !2003, !tbaa !117
  %143 = call i64 @intrev64(i64 %142) #6, !dbg !2003
  %144 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 1, !dbg !2004
  store i64 %143, i64* %144, align 8, !dbg !2005, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %135) #7, !dbg !2006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  br label %145

; <label>:145:                                    ; preds = %131, %117
  %146 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !2014
  call void @raxStop(%struct.raxIterator* nonnull %146) #6, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  %147 = load %struct.stream*, %struct.stream** %107, align 8, !dbg !2017, !tbaa !1354
  %148 = load i32, i32* %114, align 4, !dbg !2018, !tbaa !1360
  call void @streamIteratorStart(%struct.streamIterator* nonnull %0, %struct.stream* %147, %struct.streamID* nonnull %12, %struct.streamID* nonnull %13, i32 %148) #9, !dbg !2019
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %113) #7, !dbg !2020
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %112) #7, !dbg !2020
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #7, !dbg !2020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2020
  ret void, !dbg !2020
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStop(%struct.streamIterator*) local_unnamed_addr #0 !dbg !2008 {
  %2 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !2022
  tail call void @raxStop(%struct.raxIterator* nonnull %2) #6, !dbg !2023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2024
  ret void, !dbg !2024
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamDeleteItem(%struct.stream*, %struct.streamID* readonly) local_unnamed_addr #0 !dbg !2025 {
  %3 = alloca %struct.streamIterator, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamIterator* %3 to i8*, !dbg !2038
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %6) #7, !dbg !2038
  call void @streamIteratorStart(%struct.streamIterator* nonnull %3, %struct.stream* %0, %struct.streamID* %1, %struct.streamID* %1, i32 0) #9, !dbg !2040
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !2041
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2041
  %8 = bitcast i64* %5 to i8*, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2042
  %9 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4, i64* nonnull %5) #9, !dbg !2045
  %10 = icmp eq i32 %9, 0, !dbg !2045
  br i1 %10, label %12, label %11, !dbg !2047

; <label>:11:                                     ; preds = %2
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4) #9, !dbg !2048
  br label %12, !dbg !2050

; <label>:12:                                     ; preds = %2, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %2 ], !dbg !2051
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %3, i64 0, i32 9, !dbg !2054
  call void @raxStop(%struct.raxIterator* nonnull %14) #6, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2057
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2057
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %6) #7, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  ret i32 %13, !dbg !2058
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStreamID(%struct.client*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2059 {
  %3 = tail call i8* @sdsempty() #6, !dbg !2286
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !2287
  %5 = load i64, i64* %4, align 8, !dbg !2287, !tbaa !178
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !2288
  %7 = load i64, i64* %6, align 8, !dbg !2288, !tbaa !188
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %5, i64 %7) #6, !dbg !2289
  tail call void @addReplyBulkSds(%struct.client* %0, i8* %8) #6, !dbg !2291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  ret void, !dbg !2292
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createObjectFromStreamID(%struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2293 {
  %2 = tail call i8* @sdsempty() #6, !dbg !2299
  %3 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 0, !dbg !2300
  %4 = load i64, i64* %3, align 8, !dbg !2300, !tbaa !178
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !2301
  %6 = load i64, i64* %5, align 8, !dbg !2301, !tbaa !188
  %7 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %4, i64 %6) #6, !dbg !2302
  %8 = tail call %struct.redisObject* @createObject(i32 0, i8* %7) #6, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2304
  ret %struct.redisObject* %8, !dbg !2304
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamPropagateXCLAIM(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*, %struct.redisObject*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !2305 {
  %7 = alloca [14 x %struct.redisObject*], align 16
  %8 = bitcast [14 x %struct.redisObject*]* %7 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %8) #7, !dbg !2339
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 6) #6, !dbg !2341
  %10 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2342
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !2343, !tbaa !234
  %11 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2344
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !2345, !tbaa !234
  %12 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2346
  store %struct.redisObject* %3, %struct.redisObject** %12, align 16, !dbg !2347, !tbaa !234
  %13 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 2, !dbg !2348
  %14 = load %struct.streamConsumer*, %struct.streamConsumer** %13, align 8, !dbg !2348, !tbaa !2349
  %15 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %14, i64 0, i32 1, !dbg !2351
  %16 = load i8*, i8** %15, align 8, !dbg !2351, !tbaa !2352
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !2356
  %18 = load i8, i8* %17, align 1, !dbg !2356, !tbaa !663
  %19 = trunc i8 %18 to i3, !dbg !2358
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !2358

; <label>:20:                                     ; preds = %6
  %21 = lshr i8 %18, 3, !dbg !2359
  %22 = zext i8 %21 to i64, !dbg !2359
  br label %41, !dbg !2360

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !2361
  %25 = load i8, i8* %24, align 1, !dbg !2362, !tbaa !663
  %26 = zext i8 %25 to i64, !dbg !2361
  br label %41, !dbg !2363

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !2364
  %29 = bitcast i8* %28 to i16*, !dbg !2365
  %30 = load i16, i16* %29, align 1, !dbg !2365, !tbaa !674
  %31 = zext i16 %30 to i64, !dbg !2364
  br label %41, !dbg !2366

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !2367
  %34 = bitcast i8* %33 to i32*, !dbg !2368
  %35 = load i32, i32* %34, align 1, !dbg !2368, !tbaa !679
  %36 = zext i32 %35 to i64, !dbg !2367
  br label %41, !dbg !2369

; <label>:37:                                     ; preds = %6
  %38 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !2370
  %39 = bitcast i8* %38 to i64*, !dbg !2371
  %40 = load i64, i64* %39, align 1, !dbg !2371, !tbaa !117
  br label %41, !dbg !2372

; <label>:41:                                     ; preds = %6, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %6 ], !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  %43 = tail call %struct.redisObject* @createStringObject(i8* %16, i64 %42) #6, !dbg !2375
  %44 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 3, !dbg !2376
  store %struct.redisObject* %43, %struct.redisObject** %44, align 8, !dbg !2377, !tbaa !234
  %45 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 0) #6, !dbg !2378
  %46 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 4, !dbg !2379
  store %struct.redisObject* %45, %struct.redisObject** %46, align 16, !dbg !2380, !tbaa !234
  %47 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 5, !dbg !2381
  store %struct.redisObject* %4, %struct.redisObject** %47, align 8, !dbg !2382, !tbaa !234
  %48 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4) #6, !dbg !2383
  %49 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 6, !dbg !2384
  store %struct.redisObject* %48, %struct.redisObject** %49, align 16, !dbg !2385, !tbaa !234
  %50 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 0, !dbg !2386
  %51 = load i64, i64* %50, align 8, !dbg !2386, !tbaa !2387
  %52 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %51) #6, !dbg !2388
  %53 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 7, !dbg !2389
  store %struct.redisObject* %52, %struct.redisObject** %53, align 8, !dbg !2390, !tbaa !234
  %54 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 10) #6, !dbg !2391
  %55 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 8, !dbg !2392
  store %struct.redisObject* %54, %struct.redisObject** %55, align 16, !dbg !2393, !tbaa !234
  %56 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 1, !dbg !2394
  %57 = load i64, i64* %56, align 8, !dbg !2394, !tbaa !2395
  %58 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %57) #6, !dbg !2396
  %59 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 9, !dbg !2397
  store %struct.redisObject* %58, %struct.redisObject** %59, align 8, !dbg !2398, !tbaa !234
  %60 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 5) #6, !dbg !2399
  %61 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 10, !dbg !2400
  store %struct.redisObject* %60, %struct.redisObject** %61, align 16, !dbg !2401, !tbaa !234
  %62 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #6, !dbg !2402
  %63 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 11, !dbg !2403
  store %struct.redisObject* %62, %struct.redisObject** %63, align 8, !dbg !2404, !tbaa !234
  %64 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6) #6, !dbg !2405
  %65 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 12, !dbg !2406
  store %struct.redisObject* %64, %struct.redisObject** %65, align 16, !dbg !2407, !tbaa !234
  %66 = tail call i8* @sdsempty() #6, !dbg !2410
  %67 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2411
  %68 = load i64, i64* %67, align 8, !dbg !2411, !tbaa !178
  %69 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2412
  %70 = load i64, i64* %69, align 8, !dbg !2412, !tbaa !188
  %71 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %68, i64 %70) #6, !dbg !2413
  %72 = tail call %struct.redisObject* @createObject(i32 0, i8* %71) #6, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2415
  %73 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 13, !dbg !2416
  store %struct.redisObject* %72, %struct.redisObject** %73, align 8, !dbg !2417, !tbaa !234
  %74 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 67), align 8, !dbg !2418, !tbaa !2419
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2420
  %76 = load %struct.redisDb*, %struct.redisDb** %75, align 8, !dbg !2420, !tbaa !2421
  %77 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %76, i64 0, i32 5, !dbg !2425
  %78 = load i32, i32* %77, align 8, !dbg !2425, !tbaa !2426
  call void @propagate(%struct.redisCommand* %74, i32 %78, %struct.redisObject** nonnull %10, i32 14, i32 3) #6, !dbg !2428
  %79 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !2429, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %79) #6, !dbg !2430
  %80 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !2431, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %80) #6, !dbg !2432
  %81 = load %struct.redisObject*, %struct.redisObject** %46, align 16, !dbg !2433, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %81) #6, !dbg !2434
  %82 = load %struct.redisObject*, %struct.redisObject** %49, align 16, !dbg !2435, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %82) #6, !dbg !2436
  %83 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !2437, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %83) #6, !dbg !2438
  %84 = load %struct.redisObject*, %struct.redisObject** %55, align 16, !dbg !2439, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %84) #6, !dbg !2440
  %85 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2441, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %85) #6, !dbg !2442
  %86 = load %struct.redisObject*, %struct.redisObject** %61, align 16, !dbg !2443, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %86) #6, !dbg !2444
  %87 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !2445, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %87) #6, !dbg !2446
  %88 = load %struct.redisObject*, %struct.redisObject** %65, align 16, !dbg !2447, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %88) #6, !dbg !2448
  %89 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !2449, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %89) #6, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %8) #7, !dbg !2451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  ret void, !dbg !2451
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
define dso_local void @streamPropagateGroupID(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2452 {
  %5 = alloca [5 x %struct.redisObject*], align 16
  %6 = bitcast [5 x %struct.redisObject*]* %5 to i8*, !dbg !2468
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7, !dbg !2468
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6) #6, !dbg !2470
  %8 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !2471
  store %struct.redisObject* %7, %struct.redisObject** %8, align 16, !dbg !2472, !tbaa !234
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #6, !dbg !2473
  %10 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !2474
  store %struct.redisObject* %9, %struct.redisObject** %10, align 8, !dbg !2475, !tbaa !234
  %11 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !2476
  store %struct.redisObject* %1, %struct.redisObject** %11, align 16, !dbg !2477, !tbaa !234
  %12 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 3, !dbg !2478
  store %struct.redisObject* %3, %struct.redisObject** %12, align 8, !dbg !2479, !tbaa !234
  %13 = tail call i8* @sdsempty() #6, !dbg !2482
  %14 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2483
  %15 = load i64, i64* %14, align 8, !dbg !2483, !tbaa !178
  %16 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2484
  %17 = load i64, i64* %16, align 8, !dbg !2484, !tbaa !188
  %18 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %15, i64 %17) #6, !dbg !2485
  %19 = tail call %struct.redisObject* @createObject(i32 0, i8* %18) #6, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2487
  %20 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 4, !dbg !2488
  store %struct.redisObject* %19, %struct.redisObject** %20, align 16, !dbg !2489, !tbaa !234
  %21 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 68), align 8, !dbg !2490, !tbaa !2491
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2492
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2492, !tbaa !2421
  %24 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %23, i64 0, i32 5, !dbg !2493
  %25 = load i32, i32* %24, align 8, !dbg !2493, !tbaa !2426
  call void @propagate(%struct.redisCommand* %21, i32 %25, %struct.redisObject** nonnull %8, i32 5, i32 3) #6, !dbg !2494
  %26 = load %struct.redisObject*, %struct.redisObject** %8, align 16, !dbg !2495, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %26) #6, !dbg !2496
  %27 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2497, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %27) #6, !dbg !2498
  %28 = load %struct.redisObject*, %struct.redisObject** %20, align 16, !dbg !2499, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %28) #6, !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7, !dbg !2501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2501
  ret void, !dbg !2501
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRange(%struct.client*, %struct.stream*, %struct.streamID* readonly, %struct.streamID*, i64, i32, %struct.streamCG*, %struct.streamConsumer*, i32, %struct.sreamPropInfo* readonly) local_unnamed_addr #0 !dbg !2502 {
  %11 = alloca [2 x i64], align 16
  %12 = alloca %struct.streamIterator, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.streamID, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [16 x i8], align 16
  %20 = bitcast %struct.streamIterator* %12 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %20) #7, !dbg !2557
  %21 = bitcast i64* %13 to i8*, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2558
  %22 = bitcast %struct.streamID* %14 to i8*, !dbg !2559
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2559
  %23 = icmp ne %struct.streamCG* %6, null, !dbg !2561
  %24 = xor i1 %23, true, !dbg !2563
  %25 = and i32 %8, 4, !dbg !2564
  %26 = icmp eq i32 %25, 0, !dbg !2564
  %27 = or i1 %26, %24, !dbg !2563
  br i1 %27, label %30, label %28, !dbg !2563

; <label>:28:                                     ; preds = %10
  %29 = tail call i64 @streamReplyWithRangeFromConsumerPEL(%struct.client* %0, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i64 %4, %struct.streamConsumer* %7) #9, !dbg !2565
  br label %161, !dbg !2567

; <label>:30:                                     ; preds = %10
  %31 = and i32 %8, 2, !dbg !2568
  %32 = icmp eq i32 %31, 0, !dbg !2568
  br i1 %32, label %33, label %35, !dbg !2570

; <label>:33:                                     ; preds = %30
  %34 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #6, !dbg !2571
  br label %35, !dbg !2572

; <label>:35:                                     ; preds = %30, %33
  %36 = phi i8* [ null, %30 ], [ %34, %33 ], !dbg !2573
  call void @streamIteratorStart(%struct.streamIterator* nonnull %12, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i32 %5) #9, !dbg !2575
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
  br label %59, !dbg !2576

; <label>:59:                                     ; preds = %152, %35
  %60 = phi i32 [ 0, %35 ], [ %78, %152 ], !dbg !2577
  %61 = phi i64 [ 0, %35 ], [ %153, %152 ], !dbg !2580
  %62 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %12, %struct.streamID* nonnull %14, i64* nonnull %13) #9, !dbg !2583
  %63 = icmp eq i32 %62, 0, !dbg !2576
  br i1 %63, label %156, label %64, !dbg !2576

; <label>:64:                                     ; preds = %59
  %65 = load i64, i64* %37, align 8, !dbg !2580, !tbaa !178
  br i1 %23, label %66, label %77, !dbg !2584

; <label>:66:                                     ; preds = %64
  %67 = load i64, i64* %38, align 8, !dbg !2588, !tbaa !178
  %68 = icmp ugt i64 %65, %67, !dbg !2589
  br i1 %68, label %76, label %69, !dbg !2590

; <label>:69:                                     ; preds = %66
  %70 = icmp ult i64 %65, %67, !dbg !2591
  br i1 %70, label %75, label %71, !dbg !2592

; <label>:71:                                     ; preds = %69
  %72 = load i64, i64* %39, align 8, !dbg !2593, !tbaa !188
  %73 = load i64, i64* %48, align 8, !dbg !2594, !tbaa !188
  %74 = icmp ugt i64 %72, %73, !dbg !2595
  br i1 %74, label %76, label %75, !dbg !2596

; <label>:75:                                     ; preds = %71, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  br label %77

; <label>:76:                                     ; preds = %66, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %40, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2598, !tbaa.struct !1603
  br label %77, !dbg !2599

; <label>:77:                                     ; preds = %64, %75, %76
  %78 = phi i32 [ 1, %76 ], [ %60, %75 ], [ %60, %64 ], !dbg !2600
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2601
  %79 = call i8* @sdsempty() #6, !dbg !2605
  %80 = load i64, i64* %39, align 8, !dbg !2606, !tbaa !188
  %81 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %65, i64 %80) #6, !dbg !2607
  call void @addReplyBulkSds(%struct.client* %0, i8* %81) #6, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  %82 = load i64, i64* %13, align 8, !dbg !2611, !tbaa !117
  %83 = shl nsw i64 %82, 1, !dbg !2612
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %83) #6, !dbg !2613
  %84 = add nsw i64 %82, -1, !dbg !2614
  store i64 %84, i64* %13, align 8, !dbg !2614, !tbaa !117
  %85 = icmp eq i64 %82, 0, !dbg !2615
  br i1 %85, label %95, label %86, !dbg !2615

; <label>:86:                                     ; preds = %77, %86
  %87 = phi i64 [ %92, %86 ], [ %84, %77 ], !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #7, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #7, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #7, !dbg !2617
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #7, !dbg !2617
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %12, i8** nonnull %15, i8** nonnull %16, i64* nonnull %17, i64* nonnull %18) #9, !dbg !2622
  %88 = load i8*, i8** %15, align 8, !dbg !2623, !tbaa !234
  %89 = load i64, i64* %17, align 8, !dbg !2624, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %88, i64 %89) #6, !dbg !2625
  %90 = load i8*, i8** %16, align 8, !dbg !2626, !tbaa !234
  %91 = load i64, i64* %18, align 8, !dbg !2627, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %90, i64 %91) #6, !dbg !2628
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #7, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #7, !dbg !2629
  %92 = add nsw i64 %87, -1, !dbg !2614
  %93 = icmp eq i64 %87, 0, !dbg !2615
  br i1 %93, label %94, label %86, !dbg !2615, !llvm.loop !2630

; <label>:94:                                     ; preds = %86
  store i64 -1, i64* %13, align 8, !dbg !2614, !tbaa !117
  br label %95, !dbg !2615

; <label>:95:                                     ; preds = %94, %77
  br i1 %43, label %96, label %147, !dbg !2631

; <label>:96:                                     ; preds = %95
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #7, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #7, !dbg !2636
  %97 = call i64 @intrev64(i64 %65) #6, !dbg !2637
  store i64 %97, i64* %51, align 16, !dbg !2638, !tbaa !117
  %98 = call i64 @intrev64(i64 %80) #6, !dbg !2639
  store i64 %98, i64* %52, align 8, !dbg !2640, !tbaa !117
  %99 = call i8* @memcpy(i8* nonnull %49, i8* nonnull %50, i64 16) #6, !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #7, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  %100 = call i8* @zmalloc(i64 24) #6, !dbg !2651
  %101 = call i64 @mstime() #6, !dbg !2652
  %102 = bitcast i8* %100 to i64*, !dbg !2653
  store i64 %101, i64* %102, align 8, !dbg !2654, !tbaa !2387
  %103 = getelementptr inbounds i8, i8* %100, i64 8, !dbg !2655
  %104 = bitcast i8* %103 to i64*, !dbg !2655
  store i64 1, i64* %104, align 8, !dbg !2656, !tbaa !2395
  %105 = getelementptr inbounds i8, i8* %100, i64 16, !dbg !2657
  %106 = bitcast i8* %105 to %struct.streamConsumer**, !dbg !2657
  store %struct.streamConsumer* %7, %struct.streamConsumer** %106, align 8, !dbg !2658, !tbaa !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  %107 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !2660, !tbaa !155
  %108 = call i32 @raxTryInsert(%struct.rax* %107, i8* nonnull %49, i64 16, i8* %100, i8** null) #6, !dbg !2661
  %109 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !2663, !tbaa !2664
  %110 = call i32 @raxTryInsert(%struct.rax* %109, i8* nonnull %49, i64 16, i8* %100, i8** null) #6, !dbg !2665
  %111 = icmp eq i32 %108, 0, !dbg !2667
  br i1 %111, label %112, label %132, !dbg !2669

; <label>:112:                                    ; preds = %96
  call void @zfree(i8* %100) #6, !dbg !2678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  %113 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !2680, !tbaa !155
  %114 = call i8* @raxFind(%struct.rax* %113, i8* nonnull %49, i64 16) #6, !dbg !2681
  %115 = bitcast i8* %114 to %struct.streamNACK*, !dbg !2681
  %116 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !2683, !tbaa !234
  %117 = icmp eq %struct.streamNACK* %116, %115, !dbg !2683
  br i1 %117, label %118, label %119, !dbg !2683

; <label>:118:                                    ; preds = %112
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 969) #6, !dbg !2683
  call void @_exit(i32 1) #8, !dbg !2683
  unreachable, !dbg !2683

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !2684
  %121 = bitcast i8* %120 to %struct.streamConsumer**, !dbg !2684
  %122 = load %struct.streamConsumer*, %struct.streamConsumer** %121, align 8, !dbg !2684, !tbaa !2349
  %123 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %122, i64 0, i32 2, !dbg !2685
  %124 = load %struct.rax*, %struct.rax** %123, align 8, !dbg !2685, !tbaa !2664
  %125 = call i32 @raxRemove(%struct.rax* %124, i8* nonnull %49, i64 16, i8** null) #6, !dbg !2686
  store %struct.streamConsumer* %7, %struct.streamConsumer** %121, align 8, !dbg !2687, !tbaa !2349
  %126 = call i64 @mstime() #6, !dbg !2688
  %127 = bitcast i8* %114 to i64*, !dbg !2689
  store i64 %126, i64* %127, align 8, !dbg !2690, !tbaa !2387
  %128 = getelementptr inbounds i8, i8* %114, i64 8, !dbg !2691
  %129 = bitcast i8* %128 to i64*, !dbg !2691
  store i64 1, i64* %129, align 8, !dbg !2692, !tbaa !2395
  %130 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !2693, !tbaa !2664
  %131 = call i32 @raxInsert(%struct.rax* %130, i8* nonnull %49, i64 16, i8* %114, i8** null) #6, !dbg !2694
  br label %138, !dbg !2695

; <label>:132:                                    ; preds = %96
  %133 = bitcast i8* %100 to %struct.streamNACK*, !dbg !2651
  %134 = icmp eq i32 %108, 1, !dbg !2697
  %135 = icmp eq i32 %110, 0, !dbg !2699
  %136 = and i1 %134, %135, !dbg !2700
  br i1 %136, label %137, label %138, !dbg !2700

; <label>:137:                                    ; preds = %132
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 978, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2701
  call void @_exit(i32 1) #8, !dbg !2701
  unreachable, !dbg !2701

; <label>:138:                                    ; preds = %132, %119
  %139 = phi %struct.streamNACK* [ %115, %119 ], [ %133, %132 ], !dbg !2703
  br i1 %56, label %146, label %140, !dbg !2704

; <label>:140:                                    ; preds = %138
  %141 = call i8* @sdsempty() #6, !dbg !2707
  %142 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %65, i64 %80) #6, !dbg !2708
  %143 = call %struct.redisObject* @createObject(i32 0, i8* %142) #6, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  %144 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2712, !tbaa !2713
  %145 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2715, !tbaa !2716
  call void @streamPropagateXCLAIM(%struct.client* %0, %struct.redisObject* %144, %struct.streamCG* nonnull %6, %struct.redisObject* %145, %struct.redisObject* %143, %struct.streamNACK* %139) #9, !dbg !2717
  call void @decrRefCount(%struct.redisObject* %143) #6, !dbg !2718
  br label %146, !dbg !2719

; <label>:146:                                    ; preds = %138, %140
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #7, !dbg !2720
  br label %152, !dbg !2721

; <label>:147:                                    ; preds = %95
  %148 = icmp eq i32 %78, 0, !dbg !2722
  br i1 %148, label %152, label %149, !dbg !2725

; <label>:149:                                    ; preds = %147
  %150 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2726, !tbaa !2713
  %151 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2727, !tbaa !2716
  call void @streamPropagateGroupID(%struct.client* %0, %struct.redisObject* %150, %struct.streamCG* %6, %struct.redisObject* %151) #9, !dbg !2728
  br label %152, !dbg !2728

; <label>:152:                                    ; preds = %147, %149, %146
  %153 = add i64 %61, 1, !dbg !2729
  %154 = icmp eq i64 %153, %4, !dbg !2730
  %155 = and i1 %55, %154, !dbg !2732
  br i1 %155, label %156, label %59, !dbg !2732, !llvm.loop !2733

; <label>:156:                                    ; preds = %152, %59
  %157 = phi i64 [ %61, %59 ], [ %4, %152 ], !dbg !2600
  %158 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %12, i64 0, i32 9, !dbg !2737
  call void @raxStop(%struct.raxIterator* nonnull %158) #6, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2739
  %159 = icmp eq i8* %36, null, !dbg !2740
  br i1 %159, label %161, label %160, !dbg !2742

; <label>:160:                                    ; preds = %156
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* nonnull %36, i64 %157) #6, !dbg !2743
  br label %161, !dbg !2743

; <label>:161:                                    ; preds = %160, %156, %28
  %162 = phi i64 [ %29, %28 ], [ %157, %156 ], [ %157, %160 ], !dbg !2600
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2744
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2744
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %20) #7, !dbg !2744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  ret i64 %162, !dbg !2744
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRangeFromConsumerPEL(%struct.client*, %struct.stream*, %struct.streamID* nocapture readonly, %struct.streamID*, i64, %struct.streamConsumer* nocapture readonly) local_unnamed_addr #0 !dbg !2745 {
  %7 = alloca [2 x i64], align 16
  %8 = alloca %struct.raxIterator, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.streamID, align 8
  %12 = bitcast %struct.raxIterator* %8 to i8*, !dbg !2782
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %12) #7, !dbg !2782
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !2783
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2783
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2785
  %15 = bitcast [2 x i64]* %7 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2789
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !2790
  %17 = load i64, i64* %16, align 8, !dbg !2790, !tbaa !178
  %18 = tail call i64 @intrev64(i64 %17) #6, !dbg !2790
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2791
  store i64 %18, i64* %19, align 16, !dbg !2792, !tbaa !117
  %20 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !2793
  %21 = load i64, i64* %20, align 8, !dbg !2793, !tbaa !188
  %22 = tail call i64 @intrev64(i64 %21) #6, !dbg !2793
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2794
  store i64 %22, i64* %23, align 8, !dbg !2795, !tbaa !117
  %24 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %15, i64 16) #6, !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  %25 = icmp ne %struct.streamID* %3, null, !dbg !2798
  br i1 %25, label %26, label %34, !dbg !2799

; <label>:26:                                     ; preds = %6
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2802
  %27 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !2803
  %28 = load i64, i64* %27, align 8, !dbg !2803, !tbaa !178
  %29 = call i64 @intrev64(i64 %28) #6, !dbg !2803
  store i64 %29, i64* %19, align 16, !dbg !2804, !tbaa !117
  %30 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !2805
  %31 = load i64, i64* %30, align 8, !dbg !2805, !tbaa !188
  %32 = call i64 @intrev64(i64 %31) #6, !dbg !2805
  store i64 %32, i64* %23, align 8, !dbg !2806, !tbaa !117
  %33 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %15, i64 16) #6, !dbg !2807
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  br label %34, !dbg !2809

; <label>:34:                                     ; preds = %26, %6
  %35 = call i8* @addDeferredMultiBulkLength(%struct.client* %0) #6, !dbg !2811
  %36 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %5, i64 0, i32 2, !dbg !2813
  %37 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !2813, !tbaa !2664
  call void @raxStart(%struct.raxIterator* nonnull %8, %struct.rax* %37) #6, !dbg !2815
  %38 = call i32 @raxSeek(%struct.raxIterator* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %13, i64 16) #6, !dbg !2816
  %39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 2, !dbg !2817
  %40 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #6, !dbg !2819
  %41 = icmp eq i32 %40, 0, !dbg !2819
  %42 = add i64 %4, -1, !dbg !2820
  br i1 %41, label %90, label %43, !dbg !2821

; <label>:43:                                     ; preds = %34
  %44 = bitcast %struct.streamID* %3 to i8*
  %45 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 4
  %46 = bitcast %struct.streamID* %11 to i8*
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 0
  %48 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 1
  %49 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 3
  %50 = bitcast i8** %49 to %struct.streamNACK**
  br label %51, !dbg !2821

; <label>:51:                                     ; preds = %43, %84
  %52 = phi i64 [ 0, %43 ], [ %85, %84 ]
  br i1 %25, label %53, label %58, !dbg !2822

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %39, align 8, !dbg !2817, !tbaa !694
  %55 = load i64, i64* %45, align 8, !dbg !2823, !tbaa !692
  %56 = call i32 @memcmp(i8* %54, i8* %44, i64 %55) #6, !dbg !2824
  %57 = icmp sgt i32 %56, 0, !dbg !2825
  br i1 %57, label %90, label %58, !dbg !2826

; <label>:58:                                     ; preds = %53, %51
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #7, !dbg !2827
  %59 = load i8*, i8** %39, align 8, !dbg !2828, !tbaa !694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2832
  %60 = call i8* @memcpy(i8* nonnull %15, i8* %59, i64 16) #6, !dbg !2833
  %61 = load i64, i64* %19, align 16, !dbg !2834, !tbaa !117
  %62 = call i64 @intrev64(i64 %61) #6, !dbg !2834
  store i64 %62, i64* %47, align 8, !dbg !2835, !tbaa !178
  %63 = load i64, i64* %23, align 8, !dbg !2836, !tbaa !117
  %64 = call i64 @intrev64(i64 %63) #6, !dbg !2836
  store i64 %64, i64* %48, align 8, !dbg !2837, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  %65 = call i64 @streamReplyWithRange(%struct.client* %0, %struct.stream* %1, %struct.streamID* nonnull %11, %struct.streamID* nonnull %11, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !2839
  %66 = icmp eq i64 %65, 0, !dbg !2840
  br i1 %66, label %67, label %77, !dbg !2841

; <label>:67:                                     ; preds = %58
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2842
  %68 = load i8*, i8** %39, align 8, !dbg !2843, !tbaa !694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2847
  %69 = call i8* @memcpy(i8* nonnull %15, i8* %68, i64 16) #6, !dbg !2848
  %70 = load i64, i64* %19, align 16, !dbg !2849, !tbaa !117
  %71 = call i64 @intrev64(i64 %70) #6, !dbg !2849
  %72 = load i64, i64* %23, align 8, !dbg !2850, !tbaa !117
  %73 = call i64 @intrev64(i64 %72) #6, !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2851
  %74 = call i8* @sdsempty() #6, !dbg !2855
  %75 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %71, i64 %73) #6, !dbg !2856
  call void @addReplyBulkSds(%struct.client* %0, i8* %75) #6, !dbg !2858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  %76 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2860, !tbaa !2861
  call void @addReply(%struct.client* %0, %struct.redisObject* %76) #6, !dbg !2863
  br label %84, !dbg !2864

; <label>:77:                                     ; preds = %58
  %78 = load %struct.streamNACK*, %struct.streamNACK** %50, align 8, !dbg !2865, !tbaa !518
  %79 = call i64 @mstime() #6, !dbg !2867
  %80 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %78, i64 0, i32 0, !dbg !2868
  store i64 %79, i64* %80, align 8, !dbg !2869, !tbaa !2387
  %81 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %78, i64 0, i32 1, !dbg !2870
  %82 = load i64, i64* %81, align 8, !dbg !2871, !tbaa !2395
  %83 = add i64 %82, 1, !dbg !2871
  store i64 %83, i64* %81, align 8, !dbg !2871, !tbaa !2395
  br label %84

; <label>:84:                                     ; preds = %77, %67
  %85 = add i64 %52, 1, !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #7, !dbg !2873
  %86 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #6, !dbg !2819
  %87 = icmp eq i32 %86, 0, !dbg !2819
  %88 = icmp ult i64 %42, %85, !dbg !2820
  %89 = or i1 %88, %87, !dbg !2821
  br i1 %89, label %90, label %51, !dbg !2821, !llvm.loop !2874

; <label>:90:                                     ; preds = %53, %84, %34
  %91 = phi i64 [ 0, %34 ], [ %85, %84 ], [ %52, %53 ], !dbg !2876
  call void @raxStop(%struct.raxIterator* nonnull %8) #6, !dbg !2877
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %91) #6, !dbg !2878
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %12) #7, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  ret i64 %91, !dbg !2880
}

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamNACK* @streamCreateNACK(%struct.streamConsumer*) local_unnamed_addr #0 !dbg !2644 {
  %2 = tail call i8* @zmalloc(i64 24) #6, !dbg !2882
  %3 = bitcast i8* %2 to %struct.streamNACK*, !dbg !2882
  %4 = tail call i64 @mstime() #6, !dbg !2884
  %5 = bitcast i8* %2 to i64*, !dbg !2885
  store i64 %4, i64* %5, align 8, !dbg !2886, !tbaa !2387
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2887
  %7 = bitcast i8* %6 to i64*, !dbg !2887
  store i64 1, i64* %7, align 8, !dbg !2888, !tbaa !2395
  %8 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2889
  %9 = bitcast i8* %8 to %struct.streamConsumer**, !dbg !2889
  store %struct.streamConsumer* %0, %struct.streamConsumer** %9, align 8, !dbg !2890, !tbaa !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2891
  ret %struct.streamNACK* %3, !dbg !2891
}

; Function Attrs: noredzone
declare dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeNACK(%struct.streamNACK*) #0 !dbg !2671 {
  %2 = bitcast %struct.streamNACK* %0 to i8*, !dbg !2893
  tail call void @zfree(i8* %2) #6, !dbg !2894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2895
  ret void, !dbg !2895
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
define dso_local %struct.redisObject* @streamTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2896 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2905
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2905, !tbaa !2421
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #6, !dbg !2906
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !2908
  br i1 %6, label %7, label %10, !dbg !2910

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createStreamObject() #6, !dbg !2911
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2913, !tbaa !2421
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #6, !dbg !2914
  br label %17, !dbg !2915

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !2916
  %12 = load i32, i32* %11, align 8, !dbg !2916
  %13 = and i32 %12, 15, !dbg !2916
  %14 = icmp eq i32 %13, 6, !dbg !2919
  br i1 %14, label %17, label %15, !dbg !2920

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2921, !tbaa !2923
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !2924
  br label %17, !dbg !2925

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !2926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  ret %struct.redisObject* %18, !dbg !2927
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStreamObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ull(i8*, i64* nocapture) local_unnamed_addr #0 !dbg !2928 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2941
  %6 = tail call i64 @strlen(i8* %0) #6, !dbg !2942
  %7 = call i32 @string2ll(i8* %0, i64 %6, i64* nonnull %3) #6, !dbg !2945
  %8 = icmp eq i32 %7, 0, !dbg !2945
  br i1 %8, label %13, label %9, !dbg !2946

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %3, align 8, !dbg !2947, !tbaa !265
  %11 = icmp slt i64 %10, 0, !dbg !2950
  br i1 %11, label %34, label %12, !dbg !2951

; <label>:12:                                     ; preds = %9
  store i64 %10, i64* %1, align 8, !dbg !2952, !tbaa !265
  br label %34, !dbg !2953

; <label>:13:                                     ; preds = %2
  %14 = call i32* @__errno() #6, !dbg !2954
  store i32 0, i32* %14, align 4, !dbg !2955, !tbaa !679
  %15 = bitcast i8** %4 to i8*, !dbg !2956
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #7, !dbg !2956
  store i8* null, i8** %4, align 8, !dbg !2957, !tbaa !234
  %16 = call i64 @strtoull(i8* %0, i8** nonnull %4, i32 10) #6, !dbg !2958
  store i64 %16, i64* %1, align 8, !dbg !2959, !tbaa !265
  %17 = call i32* @__errno() #6, !dbg !2960
  %18 = load i32, i32* %17, align 4, !dbg !2960, !tbaa !679
  %19 = icmp eq i32 %18, 22, !dbg !2962
  br i1 %19, label %32, label %20, !dbg !2963

; <label>:20:                                     ; preds = %13
  %21 = call i32* @__errno() #6, !dbg !2964
  %22 = load i32, i32* %21, align 4, !dbg !2964, !tbaa !679
  %23 = icmp eq i32 %22, 34, !dbg !2965
  br i1 %23, label %32, label %24, !dbg !2966

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %0, align 1, !dbg !2967, !tbaa !663
  %26 = icmp eq i8 %25, 0, !dbg !2968
  br i1 %26, label %32, label %27, !dbg !2969

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %4, align 8, !dbg !2970, !tbaa !234
  %29 = load i8, i8* %28, align 1, !dbg !2971, !tbaa !663
  %30 = icmp eq i8 %29, 0, !dbg !2972
  %31 = zext i1 %30 to i32, !dbg !2973
  br label %32, !dbg !2973

; <label>:32:                                     ; preds = %27, %13, %20, %24
  %33 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %13 ], [ %31, %27 ], !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #7, !dbg !2975
  br label %34

; <label>:34:                                     ; preds = %9, %32, %12
  %35 = phi i32 [ 1, %12 ], [ %33, %32 ], [ 0, %9 ], !dbg !2976
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2975
  ret i32 %35, !dbg !2975
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoull(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamGenericParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64, i32) local_unnamed_addr #0 !dbg !2977 {
  %6 = alloca [128 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !2996
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2998
  %11 = load i8*, i8** %10, align 8, !dbg !2998, !tbaa !648
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3002
  %13 = load i8, i8* %12, align 1, !dbg !3002, !tbaa !663
  %14 = trunc i8 %13 to i3, !dbg !3004
  switch i3 %14, label %33 [
    i3 -4, label %29
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
  ], !dbg !3004

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3005
  %17 = load i8, i8* %16, align 1, !dbg !3006, !tbaa !663
  %18 = zext i8 %17 to i64, !dbg !3005
  br label %34, !dbg !3007

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3008
  %21 = bitcast i8* %20 to i16*, !dbg !3009
  %22 = load i16, i16* %21, align 1, !dbg !3009, !tbaa !674
  %23 = zext i16 %22 to i64, !dbg !3008
  br label %34, !dbg !3010

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3011
  %26 = bitcast i8* %25 to i32*, !dbg !3012
  %27 = load i32, i32* %26, align 1, !dbg !3012, !tbaa !679
  %28 = zext i32 %27 to i64, !dbg !3011
  br label %34, !dbg !3013

; <label>:29:                                     ; preds = %5
  %30 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3014
  %31 = bitcast i8* %30 to i64*, !dbg !3015
  %32 = load i64, i64* %31, align 1, !dbg !3015, !tbaa !117
  br label %34, !dbg !3016

; <label>:33:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3017
  br label %37, !dbg !3018

; <label>:34:                                     ; preds = %15, %19, %24, %29
  %35 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3017
  %36 = icmp ugt i64 %35, 127, !dbg !3020
  br i1 %36, label %103, label %37, !dbg !3018

; <label>:37:                                     ; preds = %33, %34
  switch i3 %14, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !3024

; <label>:38:                                     ; preds = %37
  %39 = lshr i8 %13, 3, !dbg !3025
  %40 = zext i8 %39 to i64, !dbg !3025
  br label %59, !dbg !3026

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3027
  %43 = load i8, i8* %42, align 1, !dbg !3028, !tbaa !663
  %44 = zext i8 %43 to i64, !dbg !3027
  br label %59, !dbg !3029

; <label>:45:                                     ; preds = %37
  %46 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3030
  %47 = bitcast i8* %46 to i16*, !dbg !3031
  %48 = load i16, i16* %47, align 1, !dbg !3031, !tbaa !674
  %49 = zext i16 %48 to i64, !dbg !3030
  br label %59, !dbg !3032

; <label>:50:                                     ; preds = %37
  %51 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3033
  %52 = bitcast i8* %51 to i32*, !dbg !3034
  %53 = load i32, i32* %52, align 1, !dbg !3034, !tbaa !679
  %54 = zext i32 %53 to i64, !dbg !3033
  br label %59, !dbg !3035

; <label>:55:                                     ; preds = %37
  %56 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3036
  %57 = bitcast i8* %56 to i64*, !dbg !3037
  %58 = load i64, i64* %57, align 1, !dbg !3037, !tbaa !117
  br label %59, !dbg !3038

; <label>:59:                                     ; preds = %37, %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], [ 0, %37 ], !dbg !3039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3040
  %61 = add i64 %60, 1, !dbg !3041
  %62 = call i8* @memcpy(i8* nonnull %9, i8* %11, i64 %61) #6, !dbg !3042
  %63 = icmp eq i32 %4, 0, !dbg !3043
  %64 = load i8, i8* %9, align 16, !dbg !3045, !tbaa !663
  br i1 %63, label %70, label %65, !dbg !3046

; <label>:65:                                     ; preds = %59
  switch i8 %64, label %83 [
    i8 45, label %66
    i8 43, label %66
  ], !dbg !3047

; <label>:66:                                     ; preds = %65, %65
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3048
  %68 = load i8, i8* %67, align 1, !dbg !3048, !tbaa !663
  %69 = icmp eq i8 %68, 0, !dbg !3049
  br i1 %69, label %103, label %70, !dbg !3050

; <label>:70:                                     ; preds = %59, %66
  switch i8 %64, label %83 [
    i8 45, label %71
    i8 43, label %77
  ], !dbg !3051

; <label>:71:                                     ; preds = %70
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3053
  %73 = load i8, i8* %72, align 1, !dbg !3053, !tbaa !663
  %74 = icmp eq i8 %73, 0, !dbg !3054
  br i1 %74, label %75, label %83, !dbg !3055

; <label>:75:                                     ; preds = %71
  %76 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3056
  store <2 x i64> zeroinitializer, <2 x i64>* %76, align 8, !dbg !3056, !tbaa !117
  br label %106, !dbg !3058

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3059
  %79 = load i8, i8* %78, align 1, !dbg !3059, !tbaa !663
  %80 = icmp eq i8 %79, 0, !dbg !3061
  br i1 %80, label %81, label %83, !dbg !3062

; <label>:81:                                     ; preds = %77
  %82 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3063
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %82, align 8, !dbg !3063, !tbaa !117
  br label %106, !dbg !3065

; <label>:83:                                     ; preds = %65, %70, %71, %77
  %84 = call i8* @strchr(i8* nonnull %9, i32 45) #6, !dbg !3066
  %85 = icmp ne i8* %84, null, !dbg !3068
  br i1 %85, label %86, label %87, !dbg !3070

; <label>:86:                                     ; preds = %83
  store i8 0, i8* %84, align 1, !dbg !3071, !tbaa !663
  br label %87, !dbg !3072

; <label>:87:                                     ; preds = %86, %83
  %88 = call i32 @string2ull(i8* nonnull %9, i64* nonnull %7) #9, !dbg !3074
  %89 = icmp eq i32 %88, 0, !dbg !3076
  br i1 %89, label %103, label %90, !dbg !3077

; <label>:90:                                     ; preds = %87
  br i1 %85, label %91, label %97, !dbg !3078

; <label>:91:                                     ; preds = %90
  %92 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !3080
  %93 = call i32 @string2ull(i8* nonnull %92, i64* nonnull %8) #9, !dbg !3082
  %94 = icmp eq i32 %93, 0, !dbg !3083
  br i1 %94, label %103, label %95, !dbg !3084

; <label>:95:                                     ; preds = %91
  %96 = load i64, i64* %8, align 8, !dbg !3085, !tbaa !265
  br label %98, !dbg !3084

; <label>:97:                                     ; preds = %90
  store i64 %3, i64* %8, align 8, !dbg !3086, !tbaa !265
  br label %98, !dbg !3088

; <label>:98:                                     ; preds = %95, %97
  %99 = phi i64 [ %96, %95 ], [ %3, %97 ], !dbg !3085
  %100 = load i64, i64* %7, align 8, !dbg !3089, !tbaa !265
  %101 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3090
  store i64 %100, i64* %101, align 8, !dbg !3091, !tbaa !178
  %102 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3092
  store i64 %99, i64* %102, align 8, !dbg !3093, !tbaa !188
  br label %106, !dbg !3094

; <label>:103:                                    ; preds = %91, %87, %66, %34
  %104 = icmp eq %struct.client* %0, null, !dbg !3095
  br i1 %104, label %106, label %105, !dbg !3097

; <label>:105:                                    ; preds = %103
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3098
  br label %106, !dbg !3098

; <label>:106:                                    ; preds = %105, %103, %98, %81, %75
  %107 = phi i32 [ 0, %75 ], [ 0, %81 ], [ 0, %98 ], [ -1, %103 ], [ -1, %105 ], !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  ret i32 %107, !dbg !3100
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3101 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 0) #9, !dbg !3113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3114
  ret i32 %5, !dbg !3114
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseStrictIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3115 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 1) #9, !dbg !3125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3126
  ret i32 %5, !dbg !3126
}

; Function Attrs: noredzone nounwind
define dso_local void @streamRewriteApproxMaxlen(%struct.client*, %struct.stream* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3127 {
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 1, !dbg !3139
  %5 = load i64, i64* %4, align 8, !dbg !3139, !tbaa !952
  %6 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %5) #6, !dbg !3140
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !3142
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %2, %struct.redisObject* %6) #6, !dbg !3144
  %8 = add nsw i32 %2, -1, !dbg !3145
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %8, %struct.redisObject* %7) #6, !dbg !3146
  tail call void @decrRefCount(%struct.redisObject* %7) #6, !dbg !3147
  tail call void @decrRefCount(%struct.redisObject* %6) #6, !dbg !3148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  ret void, !dbg !3149
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xaddCommand(%struct.client*) local_unnamed_addr #0 !dbg !3150 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.streamID* %2 to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3173
  %5 = bitcast i64* %3 to i8*, !dbg !3175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3175
  store i64 -1, i64* %3, align 8, !dbg !3176, !tbaa !265
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3180
  %7 = load i32, i32* %6, align 8, !dbg !3180, !tbaa !3181
  %8 = icmp sgt i32 %7, 2, !dbg !3182
  br i1 %8, label %9, label %86, !dbg !3183

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !3183

; <label>:11:                                     ; preds = %9, %78
  %12 = phi i32 [ %7, %9 ], [ %84, %78 ]
  %13 = phi i32 [ 0, %9 ], [ %79, %78 ]
  %14 = phi i32 [ 0, %9 ], [ %80, %78 ]
  %15 = phi i32 [ 0, %9 ], [ %81, %78 ]
  %16 = phi i32 [ 2, %9 ], [ %83, %78 ]
  %17 = xor i32 %16, -1, !dbg !3184
  %18 = add i32 %12, %17, !dbg !3184
  %19 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3186, !tbaa !3187
  %20 = sext i32 %16 to i64, !dbg !3188
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %20, !dbg !3188
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !3188, !tbaa !234
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !3189
  %24 = load i8*, i8** %23, align 8, !dbg !3189, !tbaa !648
  %25 = load i8, i8* %24, align 1, !dbg !3191, !tbaa !663
  %26 = icmp eq i8 %25, 42, !dbg !3192
  br i1 %26, label %27, label %31, !dbg !3193

; <label>:27:                                     ; preds = %11
  %28 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !3194
  %29 = load i8, i8* %28, align 1, !dbg !3194, !tbaa !663
  %30 = icmp eq i8 %29, 0, !dbg !3195
  br i1 %30, label %86, label %31, !dbg !3196

; <label>:31:                                     ; preds = %27, %11
  %32 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !3197
  %33 = icmp eq i32 %32, 0, !dbg !3197
  %34 = icmp ne i32 %18, 0, !dbg !3198
  %35 = and i1 %34, %33, !dbg !3199
  br i1 %35, label %36, label %70, !dbg !3199

; <label>:36:                                     ; preds = %31
  %37 = add nsw i32 %16, 1, !dbg !3200
  %38 = sext i32 %37 to i64, !dbg !3201
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %38, !dbg !3201
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !3201, !tbaa !234
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !3202
  %42 = load i8*, i8** %41, align 8, !dbg !3202, !tbaa !648
  %43 = icmp sgt i32 %18, 1, !dbg !3204
  br i1 %43, label %44, label %57, !dbg !3206

; <label>:44:                                     ; preds = %36
  %45 = load i8, i8* %42, align 1, !dbg !3207, !tbaa !663
  switch i8 %45, label %57 [
    i8 126, label %46
    i8 61, label %52
  ], !dbg !3208

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3209
  %48 = load i8, i8* %47, align 1, !dbg !3209, !tbaa !663
  %49 = icmp eq i8 %48, 0, !dbg !3210
  %50 = select i1 %49, i32 %37, i32 %16, !dbg !3211
  %51 = zext i1 %49 to i32, !dbg !3211
  br label %57, !dbg !3211

; <label>:52:                                     ; preds = %44
  %53 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3212
  %54 = load i8, i8* %53, align 1, !dbg !3212, !tbaa !663
  %55 = icmp eq i8 %54, 0, !dbg !3214
  %56 = select i1 %55, i32 %37, i32 %16, !dbg !3215
  br label %57, !dbg !3215

; <label>:57:                                     ; preds = %46, %44, %52, %36
  %58 = phi i32 [ %56, %52 ], [ %16, %36 ], [ %50, %46 ], [ %16, %44 ], !dbg !3216
  %59 = phi i32 [ 0, %52 ], [ 0, %36 ], [ %51, %46 ], [ 0, %44 ], !dbg !3217
  %60 = add nsw i32 %58, 1, !dbg !3218
  %61 = sext i32 %60 to i64, !dbg !3220
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %61, !dbg !3220
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !3220, !tbaa !234
  %64 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %63, i64* nonnull %3, i8* null) #6, !dbg !3221
  %65 = icmp eq i32 %64, 0, !dbg !3222
  br i1 %65, label %66, label %189, !dbg !3223

; <label>:66:                                     ; preds = %57
  %67 = load i64, i64* %3, align 8, !dbg !3224, !tbaa !265
  %68 = icmp slt i64 %67, 0, !dbg !3226
  br i1 %68, label %69, label %78, !dbg !3227

; <label>:69:                                     ; preds = %66
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !3228
  br label %189, !dbg !3230

; <label>:70:                                     ; preds = %31
  %71 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, %struct.streamID* nonnull %2, i64 0, i32 1) #6, !dbg !3239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  %72 = icmp eq i32 %71, 0, !dbg !3241
  %73 = select i1 %72, i32 2, i32 1, !dbg !3242
  %74 = select i1 %72, i32 1, i32 %13, !dbg !3242
  %75 = trunc i32 %73 to i2
  switch i2 %75, label %189 [
    i2 0, label %78
    i2 -2, label %76
  ]

; <label>:76:                                     ; preds = %70
  %77 = load i32, i32* %6, align 8, !dbg !3243, !tbaa !3181
  br label %86

; <label>:78:                                     ; preds = %66, %70
  %79 = phi i32 [ %74, %70 ], [ %13, %66 ]
  %80 = phi i32 [ %14, %70 ], [ %59, %66 ]
  %81 = phi i32 [ %15, %70 ], [ %60, %66 ]
  %82 = phi i32 [ %16, %70 ], [ %60, %66 ]
  %83 = add nsw i32 %82, 1, !dbg !3245
  %84 = load i32, i32* %6, align 8, !dbg !3180, !tbaa !3181
  %85 = icmp slt i32 %83, %84, !dbg !3182
  br i1 %85, label %11, label %86, !dbg !3183, !llvm.loop !3246

; <label>:86:                                     ; preds = %78, %27, %76, %1
  %87 = phi i32 [ %7, %1 ], [ %77, %76 ], [ %12, %27 ], [ %84, %78 ], !dbg !3243
  %88 = phi i32 [ 2, %1 ], [ %16, %76 ], [ %16, %27 ], [ %83, %78 ], !dbg !3179
  %89 = phi i32 [ 0, %1 ], [ %15, %76 ], [ %15, %27 ], [ %81, %78 ], !dbg !3178
  %90 = phi i32 [ 0, %1 ], [ %14, %76 ], [ %14, %27 ], [ %80, %78 ], !dbg !3177
  %91 = phi i32 [ 0, %1 ], [ %74, %76 ], [ %13, %27 ], [ %79, %78 ], !dbg !3174
  %92 = add nsw i32 %88, 1, !dbg !3248
  %93 = sub nsw i32 %87, %92, !dbg !3250
  %94 = icmp slt i32 %93, 2, !dbg !3251
  %95 = srem i32 %93, 2, !dbg !3252
  %96 = icmp eq i32 %95, 1, !dbg !3253
  %97 = or i1 %94, %96, !dbg !3254
  br i1 %97, label %98, label %99, !dbg !3254

; <label>:98:                                     ; preds = %86
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !3255
  br label %189, !dbg !3257

; <label>:99:                                     ; preds = %86
  %100 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3258
  %101 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3258, !tbaa !3187
  %102 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %101, i64 1, !dbg !3260
  %103 = load %struct.redisObject*, %struct.redisObject** %102, align 8, !dbg !3260, !tbaa !234
  %104 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3264
  %105 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3264, !tbaa !2421
  %106 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %105, %struct.redisObject* %103) #6, !dbg !3265
  %107 = icmp eq %struct.redisObject* %106, null, !dbg !3267
  br i1 %107, label %116, label %108, !dbg !3268

; <label>:108:                                    ; preds = %99
  %109 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %106, i64 0, i32 0, !dbg !3269
  %110 = load i32, i32* %109, align 8, !dbg !3269
  %111 = and i32 %110, 15, !dbg !3269
  %112 = icmp eq i32 %111, 6, !dbg !3270
  br i1 %112, label %113, label %114, !dbg !3271

; <label>:113:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br label %120, !dbg !3274

; <label>:114:                                    ; preds = %108
  %115 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !3275, !tbaa !2923
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %115) #6, !dbg !3276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br label %189, !dbg !3274

; <label>:116:                                    ; preds = %99
  %117 = call %struct.redisObject* @createStreamObject() #6, !dbg !3277
  %118 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3278, !tbaa !2421
  call void @dbAdd(%struct.redisDb* %118, %struct.redisObject* %103, %struct.redisObject* %117) #6, !dbg !3279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  %119 = icmp eq %struct.redisObject* %117, null, !dbg !3280
  br i1 %119, label %189, label %120, !dbg !3274

; <label>:120:                                    ; preds = %113, %116
  %121 = phi %struct.redisObject* [ %106, %113 ], [ %117, %116 ]
  %122 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %121, i64 0, i32 2, !dbg !3281
  %123 = bitcast i8** %122 to %struct.stream**, !dbg !3281
  %124 = load %struct.stream*, %struct.stream** %123, align 8, !dbg !3281, !tbaa !648
  %125 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3283, !tbaa !3187
  %126 = sext i32 %92 to i64, !dbg !3285
  %127 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %125, i64 %126, !dbg !3285
  %128 = load i32, i32* %6, align 8, !dbg !3286, !tbaa !3181
  %129 = sub nsw i32 %128, %92, !dbg !3287
  %130 = sdiv i32 %129, 2, !dbg !3288
  %131 = sext i32 %130 to i64, !dbg !3289
  %132 = icmp eq i32 %91, 0, !dbg !3290
  %133 = select i1 %132, %struct.streamID* null, %struct.streamID* %2, !dbg !3290
  %134 = call i32 @streamAppendItem(%struct.stream* %124, %struct.redisObject** %127, i64 %131, %struct.streamID* nonnull %2, %struct.streamID* %133) #9, !dbg !3291
  %135 = icmp eq i32 %134, -1, !dbg !3292
  br i1 %135, label %136, label %137, !dbg !3293

; <label>:136:                                    ; preds = %120
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !3294
  br label %189, !dbg !3296

; <label>:137:                                    ; preds = %120
  %138 = call i8* @sdsempty() #6, !dbg !3300
  %139 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3301
  %140 = load i64, i64* %139, align 8, !dbg !3301, !tbaa !178
  %141 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3302
  %142 = load i64, i64* %141, align 8, !dbg !3302, !tbaa !188
  %143 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %140, i64 %142) #6, !dbg !3303
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %143) #6, !dbg !3305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3306
  %144 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3307, !tbaa !2421
  %145 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3308, !tbaa !3187
  %146 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %145, i64 1, !dbg !3309
  %147 = load %struct.redisObject*, %struct.redisObject** %146, align 8, !dbg !3309, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %144, %struct.redisObject* %147) #6, !dbg !3310
  %148 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3311, !tbaa !3187
  %149 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %148, i64 1, !dbg !3312
  %150 = load %struct.redisObject*, %struct.redisObject** %149, align 8, !dbg !3312, !tbaa !234
  %151 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3313, !tbaa !2421
  %152 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %151, i64 0, i32 5, !dbg !3314
  %153 = load i32, i32* %152, align 8, !dbg !3314, !tbaa !2426
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %150, i32 %153) #6, !dbg !3315
  %154 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3316, !tbaa !3317
  %155 = add nsw i64 %154, 1, !dbg !3316
  store i64 %155, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3316, !tbaa !3317
  %156 = load i64, i64* %3, align 8, !dbg !3318, !tbaa !265
  %157 = icmp sgt i64 %156, -1, !dbg !3320
  br i1 %157, label %158, label %176, !dbg !3321

; <label>:158:                                    ; preds = %137
  %159 = call i64 @streamTrimByLength(%struct.stream* %124, i64 %156, i32 %90) #9, !dbg !3322
  %160 = icmp eq i64 %159, 0, !dbg !3322
  br i1 %160, label %168, label %161, !dbg !3325

; <label>:161:                                    ; preds = %158
  %162 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3326, !tbaa !3187
  %163 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %162, i64 1, !dbg !3328
  %164 = load %struct.redisObject*, %struct.redisObject** %163, align 8, !dbg !3328, !tbaa !234
  %165 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3329, !tbaa !2421
  %166 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %165, i64 0, i32 5, !dbg !3330
  %167 = load i32, i32* %166, align 8, !dbg !3330, !tbaa !2426
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %164, i32 %167) #6, !dbg !3331
  br label %168, !dbg !3332

; <label>:168:                                    ; preds = %158, %161
  %169 = icmp eq i32 %90, 0, !dbg !3333
  br i1 %169, label %176, label %170, !dbg !3335

; <label>:170:                                    ; preds = %168
  %171 = getelementptr inbounds %struct.stream, %struct.stream* %124, i64 0, i32 1, !dbg !3340
  %172 = load i64, i64* %171, align 8, !dbg !3340, !tbaa !952
  %173 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %172) #6, !dbg !3341
  %174 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !3343
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %89, %struct.redisObject* %173) #6, !dbg !3345
  %175 = add nsw i32 %89, -1, !dbg !3346
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %175, %struct.redisObject* %174) #6, !dbg !3347
  call void @decrRefCount(%struct.redisObject* %174) #6, !dbg !3348
  call void @decrRefCount(%struct.redisObject* %173) #6, !dbg !3349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br label %176, !dbg !3351

; <label>:176:                                    ; preds = %168, %170, %137
  %177 = call i8* @sdsempty() #6, !dbg !3354
  %178 = load i64, i64* %139, align 8, !dbg !3355, !tbaa !178
  %179 = load i64, i64* %141, align 8, !dbg !3356, !tbaa !188
  %180 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %178, i64 %179) #6, !dbg !3357
  %181 = call %struct.redisObject* @createObject(i32 0, i8* %180) #6, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %88, %struct.redisObject* %181) #6, !dbg !3361
  call void @decrRefCount(%struct.redisObject* %181) #6, !dbg !3362
  %182 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 4), align 4, !dbg !3363, !tbaa !679
  %183 = icmp eq i32 %182, 0, !dbg !3363
  br i1 %183, label %189, label %184, !dbg !3365

; <label>:184:                                    ; preds = %176
  %185 = load %struct.redisDb*, %struct.redisDb** %104, align 8, !dbg !3366, !tbaa !2421
  %186 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3367, !tbaa !3187
  %187 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %186, i64 1, !dbg !3368
  %188 = load %struct.redisObject*, %struct.redisObject** %187, align 8, !dbg !3368, !tbaa !234
  call void @signalKeyAsReady(%struct.redisDb* %185, %struct.redisObject* %188) #6, !dbg !3369
  br label %189, !dbg !3369

; <label>:189:                                    ; preds = %57, %70, %69, %114, %98, %184, %176, %116, %136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3370
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3370
  ret void, !dbg !3370
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalModifiedKey(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalKeyAsReady(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xrangeGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !3371 {
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamID* %3 to i8*, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3393
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3393
  %8 = bitcast i64* %5 to i8*, !dbg !3394
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3394
  store i64 -1, i64* %5, align 8, !dbg !3395, !tbaa !265
  %9 = icmp ne i32 %1, 0, !dbg !3396
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3397
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3397, !tbaa !3187
  %12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !3398
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 2, !dbg !3399
  %14 = select i1 %9, %struct.redisObject** %12, %struct.redisObject** %13, !dbg !3396
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !3396, !tbaa !234
  %16 = select i1 %9, %struct.redisObject** %13, %struct.redisObject** %12, !dbg !3401
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3401, !tbaa !234
  %18 = call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %15, %struct.streamID* nonnull %3, i64 0, i32 0) #6, !dbg !3410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3411
  %19 = icmp eq i32 %18, -1, !dbg !3412
  br i1 %19, label %80, label %20, !dbg !3413

; <label>:20:                                     ; preds = %2
  %21 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, %struct.streamID* nonnull %4, i64 -1, i32 0) #6, !dbg !3421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3422
  %22 = icmp eq i32 %21, -1, !dbg !3423
  br i1 %22, label %80, label %23, !dbg !3424

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3425
  %25 = load i32, i32* %24, align 8, !dbg !3425, !tbaa !3181
  %26 = icmp sgt i32 %25, 4, !dbg !3426
  br i1 %26, label %27, label %59, !dbg !3427

; <label>:27:                                     ; preds = %23, %54
  %28 = phi i64 [ %55, %54 ], [ 4, %23 ]
  %29 = phi i32 [ %56, %54 ], [ %25, %23 ]
  %30 = trunc i64 %28 to i32, !dbg !3429
  %31 = xor i32 %30, -1, !dbg !3429
  %32 = add i32 %29, %31, !dbg !3429
  %33 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3431, !tbaa !3187
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 %28, !dbg !3433
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !3433, !tbaa !234
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !3434
  %37 = load i8*, i8** %36, align 8, !dbg !3434, !tbaa !648
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !3435
  %39 = icmp eq i32 %38, 0, !dbg !3436
  %40 = icmp sgt i32 %32, 0, !dbg !3437
  %41 = and i1 %40, %39, !dbg !3438
  br i1 %41, label %42, label %52, !dbg !3438

; <label>:42:                                     ; preds = %27
  %43 = or i64 %28, 1, !dbg !3439
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 %43, !dbg !3442
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !3442, !tbaa !234
  %46 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %45, i64* nonnull %5, i8* null) #6, !dbg !3443
  %47 = icmp eq i32 %46, 0, !dbg !3444
  br i1 %47, label %48, label %80, !dbg !3445

; <label>:48:                                     ; preds = %42
  %49 = load i64, i64* %5, align 8, !dbg !3446, !tbaa !265
  %50 = icmp slt i64 %49, 0, !dbg !3448
  br i1 %50, label %51, label %54, !dbg !3449

; <label>:51:                                     ; preds = %48
  store i64 0, i64* %5, align 8, !dbg !3450, !tbaa !265
  br label %54, !dbg !3451

; <label>:52:                                     ; preds = %27
  %53 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3452, !tbaa !3454
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %53) #6, !dbg !3455
  br label %80, !dbg !3456

; <label>:54:                                     ; preds = %51, %48
  %55 = add nuw i64 %28, 2, !dbg !3457
  %56 = load i32, i32* %24, align 8, !dbg !3458, !tbaa !3181
  %57 = trunc i64 %55 to i32, !dbg !3459
  %58 = icmp sgt i32 %56, %57, !dbg !3459
  br i1 %58, label %27, label %59, !dbg !3460, !llvm.loop !3461

; <label>:59:                                     ; preds = %54, %23
  %60 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3463, !tbaa !3187
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 1, !dbg !3465
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !3465, !tbaa !234
  %63 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !3466, !tbaa !3467
  %64 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %62, %struct.redisObject* %63) #6, !dbg !3468
  %65 = icmp eq %struct.redisObject* %64, null, !dbg !3470
  br i1 %65, label %80, label %66, !dbg !3471

; <label>:66:                                     ; preds = %59
  %67 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %64, i32 6) #6, !dbg !3472
  %68 = icmp eq i32 %67, 0, !dbg !3472
  br i1 %68, label %69, label %80, !dbg !3473

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %64, i64 0, i32 2, !dbg !3474
  %71 = bitcast i8** %70 to %struct.stream**, !dbg !3474
  %72 = load %struct.stream*, %struct.stream** %71, align 8, !dbg !3474, !tbaa !648
  %73 = load i64, i64* %5, align 8, !dbg !3476, !tbaa !265
  switch i64 %73, label %77 [
    i64 0, label %74
    i64 -1, label %76
  ], !dbg !3478

; <label>:74:                                     ; preds = %69
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3479, !tbaa !2861
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %75) #6, !dbg !3481
  br label %80, !dbg !3482

; <label>:76:                                     ; preds = %69
  store i64 0, i64* %5, align 8, !dbg !3483, !tbaa !265
  br label %77, !dbg !3486

; <label>:77:                                     ; preds = %69, %76
  %78 = phi i64 [ %73, %69 ], [ 0, %76 ], !dbg !3487
  %79 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %72, %struct.streamID* nonnull %3, %struct.streamID* nonnull %4, i64 %78, i32 %1, %struct.streamCG* null, %struct.streamConsumer* null, i32 0, %struct.sreamPropInfo* null) #9, !dbg !3488
  br label %80

; <label>:80:                                     ; preds = %42, %52, %74, %77, %59, %66, %20, %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3489
  ret void, !dbg !3489
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3490 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 0) #9, !dbg !3494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  ret void, !dbg !3495
}

; Function Attrs: noredzone nounwind
define dso_local void @xrevrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3496 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 1) #9, !dbg !3500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  ret void, !dbg !3501
}

; Function Attrs: noredzone nounwind
define dso_local void @xlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !3502 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3508
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !3508, !tbaa !3187
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3510
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !3510, !tbaa !234
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3511, !tbaa !3512
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !3513
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !3515
  br i1 %8, label %18, label %9, !dbg !3516

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 6) #6, !dbg !3517
  %11 = icmp eq i32 %10, 0, !dbg !3517
  br i1 %11, label %12, label %18, !dbg !3518

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !3519
  %14 = bitcast i8** %13 to %struct.stream**, !dbg !3519
  %15 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !3519, !tbaa !648
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i64 0, i32 1, !dbg !3521
  %17 = load i64, i64* %16, align 8, !dbg !3521, !tbaa !952
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %17) #6, !dbg !3522
  br label %18, !dbg !3523

; <label>:18:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  ret void, !dbg !3523
}

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xreadCommand(%struct.client*) local_unnamed_addr #0 !dbg !3524 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [8 x %struct.streamID], align 16
  %5 = alloca %struct.streamID, align 8
  %6 = alloca %struct.sreamPropInfo, align 8
  %7 = bitcast i64* %2 to i8*, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !3584
  store i64 -1, i64* %2, align 8, !dbg !3585, !tbaa !265
  %8 = bitcast i64* %3 to i8*, !dbg !3586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3586
  store i64 0, i64* %3, align 8, !dbg !3587, !tbaa !265
  %9 = bitcast [8 x %struct.streamID]* %4 to i8*, !dbg !3591
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3591
  %10 = getelementptr inbounds [8 x %struct.streamID], [8 x %struct.streamID]* %4, i64 0, i64 0, !dbg !3593
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3596
  %12 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3596, !tbaa !3187
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3597, !tbaa !234
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !3598
  %15 = load i8*, i8** %14, align 8, !dbg !3598, !tbaa !648
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !3601
  %17 = load i8, i8* %16, align 1, !dbg !3601, !tbaa !663
  %18 = trunc i8 %17 to i3, !dbg !3603
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !3603

; <label>:19:                                     ; preds = %1
  %20 = lshr i8 %17, 3, !dbg !3604
  %21 = zext i8 %20 to i64, !dbg !3604
  br label %40, !dbg !3605

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %15, i64 -3, !dbg !3606
  %24 = load i8, i8* %23, align 1, !dbg !3607, !tbaa !663
  %25 = zext i8 %24 to i64, !dbg !3606
  br label %40, !dbg !3608

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds i8, i8* %15, i64 -5, !dbg !3609
  %28 = bitcast i8* %27 to i16*, !dbg !3610
  %29 = load i16, i16* %28, align 1, !dbg !3610, !tbaa !674
  %30 = zext i16 %29 to i64, !dbg !3609
  br label %40, !dbg !3611

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds i8, i8* %15, i64 -9, !dbg !3612
  %33 = bitcast i8* %32 to i32*, !dbg !3613
  %34 = load i32, i32* %33, align 1, !dbg !3613, !tbaa !679
  %35 = zext i32 %34 to i64, !dbg !3612
  br label %40, !dbg !3614

; <label>:36:                                     ; preds = %1
  %37 = getelementptr inbounds i8, i8* %15, i64 -17, !dbg !3615
  %38 = bitcast i8* %37 to i64*, !dbg !3616
  %39 = load i64, i64* %38, align 1, !dbg !3616, !tbaa !117
  br label %40, !dbg !3617

; <label>:40:                                     ; preds = %1, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %1 ], !dbg !3618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  %42 = icmp eq i64 %41, 10, !dbg !3620
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3624
  %44 = load i32, i32* %43, align 8, !dbg !3624, !tbaa !3181
  %45 = icmp sgt i32 %44, 1, !dbg !3625
  br i1 %45, label %46, label %132, !dbg !3626

; <label>:46:                                     ; preds = %40, %127
  %47 = phi %struct.redisObject** [ %128, %127 ], [ %12, %40 ], !dbg !3627
  %48 = phi i32 [ %125, %127 ], [ %44, %40 ]
  %49 = phi i32 [ %123, %127 ], [ 0, %40 ]
  %50 = phi %struct.redisObject* [ %122, %127 ], [ null, %40 ]
  %51 = phi %struct.redisObject* [ %121, %127 ], [ null, %40 ]
  %52 = phi i32 [ %124, %127 ], [ 1, %40 ]
  %53 = xor i32 %52, -1, !dbg !3628
  %54 = add i32 %48, %53, !dbg !3628
  %55 = sext i32 %52 to i64, !dbg !3630
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %55, !dbg !3630
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !3630, !tbaa !234
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2, !dbg !3631
  %59 = load i8*, i8** %58, align 8, !dbg !3631, !tbaa !648
  %60 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !3633
  %61 = icmp eq i32 %60, 0, !dbg !3633
  %62 = icmp ne i32 %54, 0, !dbg !3635
  %63 = and i1 %62, %61, !dbg !3636
  br i1 %63, label %64, label %71, !dbg !3636

; <label>:64:                                     ; preds = %46
  %65 = add nsw i32 %52, 1, !dbg !3637
  %66 = sext i32 %65 to i64, !dbg !3639
  %67 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %66, !dbg !3639
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !3639, !tbaa !234
  %69 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %68, i64* nonnull %2, i32 1) #6, !dbg !3641
  %70 = icmp eq i32 %69, 0, !dbg !3642
  br i1 %70, label %119, label %446, !dbg !3643

; <label>:71:                                     ; preds = %46
  %72 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !3644
  %73 = icmp eq i32 %72, 0, !dbg !3644
  %74 = and i1 %62, %73, !dbg !3646
  br i1 %74, label %75, label %86, !dbg !3646

; <label>:75:                                     ; preds = %71
  %76 = add nsw i32 %52, 1, !dbg !3647
  %77 = sext i32 %76 to i64, !dbg !3649
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %77, !dbg !3649
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !3649, !tbaa !234
  %80 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %79, i64* nonnull %3, i8* null) #6, !dbg !3651
  %81 = icmp eq i32 %80, 0, !dbg !3652
  br i1 %81, label %82, label %446, !dbg !3653

; <label>:82:                                     ; preds = %75
  %83 = load i64, i64* %3, align 8, !dbg !3654, !tbaa !265
  %84 = icmp slt i64 %83, 0, !dbg !3656
  br i1 %84, label %85, label %119, !dbg !3657

; <label>:85:                                     ; preds = %82
  store i64 0, i64* %3, align 8, !dbg !3658, !tbaa !265
  br label %119, !dbg !3659

; <label>:86:                                     ; preds = %71
  %87 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !3660
  %88 = icmp eq i32 %87, 0, !dbg !3660
  %89 = and i1 %62, %88, !dbg !3662
  br i1 %89, label %90, label %96, !dbg !3662

; <label>:90:                                     ; preds = %86
  %91 = add nsw i32 %52, 1, !dbg !3663
  %92 = sub nsw i32 %48, %91, !dbg !3665
  %93 = and i32 %92, 1, !dbg !3666
  %94 = icmp eq i32 %93, 0, !dbg !3666
  br i1 %94, label %129, label %95, !dbg !3668

; <label>:95:                                     ; preds = %90
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3669
  br label %446, !dbg !3671

; <label>:96:                                     ; preds = %86
  %97 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !3672
  %98 = icmp eq i32 %97, 0, !dbg !3672
  %99 = icmp sgt i32 %54, 1, !dbg !3674
  %100 = and i1 %99, %98, !dbg !3675
  br i1 %100, label %101, label %112, !dbg !3675

; <label>:101:                                    ; preds = %96
  br i1 %42, label %103, label %102, !dbg !3676

; <label>:102:                                    ; preds = %101
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !3678
  br label %446, !dbg !3681

; <label>:103:                                    ; preds = %101
  %104 = add nsw i32 %52, 1, !dbg !3682
  %105 = sext i32 %104 to i64, !dbg !3683
  %106 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %105, !dbg !3683
  %107 = load %struct.redisObject*, %struct.redisObject** %106, align 8, !dbg !3683, !tbaa !234
  %108 = add nsw i32 %52, 2, !dbg !3684
  %109 = sext i32 %108 to i64, !dbg !3685
  %110 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %47, i64 %109, !dbg !3685
  %111 = load %struct.redisObject*, %struct.redisObject** %110, align 8, !dbg !3685, !tbaa !234
  br label %119, !dbg !3686

; <label>:112:                                    ; preds = %96
  %113 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !3687
  %114 = icmp eq i32 %113, 0, !dbg !3687
  br i1 %114, label %115, label %117, !dbg !3689

; <label>:115:                                    ; preds = %112
  br i1 %42, label %119, label %116, !dbg !3690

; <label>:116:                                    ; preds = %115
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3692
  br label %446, !dbg !3695

; <label>:117:                                    ; preds = %112
  %118 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3696, !tbaa !3454
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %118) #6, !dbg !3698
  br label %446, !dbg !3699

; <label>:119:                                    ; preds = %115, %64, %85, %82, %103
  %120 = phi i32 [ %65, %64 ], [ %76, %85 ], [ %76, %82 ], [ %108, %103 ], [ %52, %115 ], !dbg !3700
  %121 = phi %struct.redisObject* [ %51, %64 ], [ %51, %85 ], [ %51, %82 ], [ %111, %103 ], [ %51, %115 ], !dbg !3701
  %122 = phi %struct.redisObject* [ %50, %64 ], [ %50, %85 ], [ %50, %82 ], [ %107, %103 ], [ %50, %115 ], !dbg !3701
  %123 = phi i32 [ %49, %64 ], [ %49, %85 ], [ %49, %82 ], [ %49, %103 ], [ 1, %115 ], !dbg !3702
  %124 = add nsw i32 %120, 1, !dbg !3703
  %125 = load i32, i32* %43, align 8, !dbg !3624, !tbaa !3181
  %126 = icmp sgt i32 %125, %124, !dbg !3625
  br i1 %126, label %127, label %132, !dbg !3626, !llvm.loop !3704

; <label>:127:                                    ; preds = %119
  %128 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3627, !tbaa !3187
  br label %46, !dbg !3626

; <label>:129:                                    ; preds = %90
  %130 = sdiv i32 %92, 2, !dbg !3706
  %131 = icmp eq i32 %91, 0, !dbg !3707
  br i1 %131, label %132, label %134, !dbg !3709

; <label>:132:                                    ; preds = %119, %40, %129
  %133 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3710, !tbaa !3454
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %133) #6, !dbg !3712
  br label %446, !dbg !3713

; <label>:134:                                    ; preds = %129
  %135 = icmp eq %struct.redisObject* %50, null, !dbg !3714
  %136 = and i1 %42, %135, !dbg !3716
  br i1 %136, label %137, label %138, !dbg !3716

; <label>:137:                                    ; preds = %134
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !3717
  br label %446, !dbg !3719

; <label>:138:                                    ; preds = %134
  %139 = icmp sgt i32 %92, 17, !dbg !3720
  br i1 %139, label %140, label %145, !dbg !3722

; <label>:140:                                    ; preds = %138
  %141 = sext i32 %130 to i64, !dbg !3723
  %142 = shl nsw i64 %141, 4, !dbg !3724
  %143 = call i8* @zmalloc(i64 %142) #6, !dbg !3725
  %144 = bitcast i8* %143 to %struct.streamID*, !dbg !3725
  br label %145, !dbg !3726

; <label>:145:                                    ; preds = %140, %138
  %146 = phi %struct.streamID* [ %144, %140 ], [ %10, %138 ], !dbg !3701
  %147 = icmp ne %struct.redisObject* %50, null, !dbg !3727
  br i1 %147, label %148, label %153, !dbg !3729

; <label>:148:                                    ; preds = %145
  %149 = sext i32 %130 to i64, !dbg !3730
  %150 = shl nsw i64 %149, 3, !dbg !3731
  %151 = call i8* @zmalloc(i64 %150) #6, !dbg !3732
  %152 = bitcast i8* %151 to %struct.streamCG**, !dbg !3732
  br label %153, !dbg !3733

; <label>:153:                                    ; preds = %148, %145
  %154 = phi i8* [ %151, %148 ], [ null, %145 ], !dbg !3701
  %155 = phi %struct.streamCG** [ %152, %148 ], [ null, %145 ], !dbg !3701
  %156 = add nsw i32 %130, %91, !dbg !3734
  %157 = load i32, i32* %43, align 8, !dbg !3736, !tbaa !3181
  %158 = icmp slt i32 %156, %157, !dbg !3737
  br i1 %158, label %159, label %285, !dbg !3738

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %161 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %50, i64 0, i32 2
  %162 = add i32 %52, %130, !dbg !3738
  %163 = add i32 %162, 1, !dbg !3738
  %164 = sext i32 %163 to i64, !dbg !3738
  %165 = sext i32 %130 to i64, !dbg !3738
  br label %166, !dbg !3738

; <label>:166:                                    ; preds = %159, %280
  %167 = phi i64 [ %164, %159 ], [ %281, %280 ]
  %168 = trunc i64 %167 to i32, !dbg !3739
  %169 = sub i32 %168, %91, !dbg !3739
  %170 = sub i32 %169, %130, !dbg !3739
  %171 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3741, !tbaa !3187
  %172 = sub nsw i64 %167, %165, !dbg !3742
  %173 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %171, i64 %172, !dbg !3743
  %174 = load %struct.redisObject*, %struct.redisObject** %173, align 8, !dbg !3743, !tbaa !234
  %175 = load %struct.redisDb*, %struct.redisDb** %160, align 8, !dbg !3745, !tbaa !2421
  %176 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %175, %struct.redisObject* %174) #6, !dbg !3746
  %177 = icmp ne %struct.redisObject* %176, null, !dbg !3748
  br i1 %177, label %178, label %181, !dbg !3750

; <label>:178:                                    ; preds = %166
  %179 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %176, i32 6) #6, !dbg !3751
  %180 = icmp eq i32 %179, 0, !dbg !3751
  br i1 %180, label %181, label %441, !dbg !3752

; <label>:181:                                    ; preds = %178, %166
  br i1 %147, label %182, label %234, !dbg !3754

; <label>:182:                                    ; preds = %181
  %183 = icmp eq %struct.redisObject* %176, null, !dbg !3755
  br i1 %183, label %226, label %184, !dbg !3759

; <label>:184:                                    ; preds = %182
  %185 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %176, i64 0, i32 2, !dbg !3760
  %186 = bitcast i8** %185 to %struct.stream**, !dbg !3760
  %187 = load %struct.stream*, %struct.stream** %186, align 8, !dbg !3760, !tbaa !648
  %188 = load i8*, i8** %161, align 8, !dbg !3761, !tbaa !648
  %189 = getelementptr inbounds %struct.stream, %struct.stream* %187, i64 0, i32 3, !dbg !3772
  %190 = load %struct.rax*, %struct.rax** %189, align 8, !dbg !3772, !tbaa !123
  %191 = icmp eq %struct.rax* %190, null, !dbg !3774
  br i1 %191, label %223, label %192, !dbg !3775

; <label>:192:                                    ; preds = %184
  %193 = getelementptr inbounds i8, i8* %188, i64 -1, !dbg !3778
  %194 = load i8, i8* %193, align 1, !dbg !3778, !tbaa !663
  %195 = trunc i8 %194 to i3, !dbg !3780
  switch i3 %195, label %217 [
    i3 0, label %196
    i3 1, label %199
    i3 2, label %203
    i3 3, label %208
    i3 -4, label %213
  ], !dbg !3780

; <label>:196:                                    ; preds = %192
  %197 = lshr i8 %194, 3, !dbg !3781
  %198 = zext i8 %197 to i64, !dbg !3781
  br label %217, !dbg !3782

; <label>:199:                                    ; preds = %192
  %200 = getelementptr inbounds i8, i8* %188, i64 -3, !dbg !3783
  %201 = load i8, i8* %200, align 1, !dbg !3784, !tbaa !663
  %202 = zext i8 %201 to i64, !dbg !3783
  br label %217, !dbg !3785

; <label>:203:                                    ; preds = %192
  %204 = getelementptr inbounds i8, i8* %188, i64 -5, !dbg !3786
  %205 = bitcast i8* %204 to i16*, !dbg !3787
  %206 = load i16, i16* %205, align 1, !dbg !3787, !tbaa !674
  %207 = zext i16 %206 to i64, !dbg !3786
  br label %217, !dbg !3788

; <label>:208:                                    ; preds = %192
  %209 = getelementptr inbounds i8, i8* %188, i64 -9, !dbg !3789
  %210 = bitcast i8* %209 to i32*, !dbg !3790
  %211 = load i32, i32* %210, align 1, !dbg !3790, !tbaa !679
  %212 = zext i32 %211 to i64, !dbg !3789
  br label %217, !dbg !3791

; <label>:213:                                    ; preds = %192
  %214 = getelementptr inbounds i8, i8* %188, i64 -17, !dbg !3792
  %215 = bitcast i8* %214 to i64*, !dbg !3793
  %216 = load i64, i64* %215, align 1, !dbg !3793, !tbaa !117
  br label %217, !dbg !3794

; <label>:217:                                    ; preds = %213, %208, %203, %199, %196, %192
  %218 = phi i64 [ %216, %213 ], [ %212, %208 ], [ %207, %203 ], [ %202, %199 ], [ %198, %196 ], [ 0, %192 ], !dbg !3795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3796
  %219 = call i8* @raxFind(%struct.rax* nonnull %190, i8* nonnull %188, i64 %218) #6, !dbg !3797
  %220 = bitcast i8* %219 to %struct.streamCG*, !dbg !3797
  %221 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !3799, !tbaa !234
  %222 = icmp eq %struct.streamCG* %221, %220, !dbg !3800
  br i1 %222, label %223, label %224

; <label>:223:                                    ; preds = %184, %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3801
  br label %226, !dbg !3802

; <label>:224:                                    ; preds = %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3801
  %225 = icmp eq i8* %219, null, !dbg !3803
  br i1 %225, label %226, label %230, !dbg !3802

; <label>:226:                                    ; preds = %224, %182, %223
  %227 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %174, i64 0, i32 2, !dbg !3804
  %228 = load i8*, i8** %227, align 8, !dbg !3804, !tbaa !648
  %229 = load i8*, i8** %161, align 8, !dbg !3806, !tbaa !648
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.38, i64 0, i64 0), i8* %228, i8* %229) #6, !dbg !3807
  br label %441, !dbg !3808

; <label>:230:                                    ; preds = %224
  %231 = sext i32 %170 to i64, !dbg !3809
  %232 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %231, !dbg !3809
  %233 = bitcast %struct.streamCG** %232 to i8**, !dbg !3810
  store i8* %219, i8** %233, align 8, !dbg !3810, !tbaa !234
  br label %234, !dbg !3811

; <label>:234:                                    ; preds = %230, %181
  %235 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3812, !tbaa !3187
  %236 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %235, i64 %167, !dbg !3813
  %237 = load %struct.redisObject*, %struct.redisObject** %236, align 8, !dbg !3813, !tbaa !234
  %238 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %237, i64 0, i32 2, !dbg !3814
  %239 = load i8*, i8** %238, align 8, !dbg !3814, !tbaa !648
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3815
  %241 = icmp eq i32 %240, 0, !dbg !3816
  br i1 %241, label %242, label %258, !dbg !3817

; <label>:242:                                    ; preds = %234
  br i1 %42, label %243, label %244, !dbg !3818

; <label>:243:                                    ; preds = %242
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !3819
  br label %441, !dbg !3822

; <label>:244:                                    ; preds = %242
  br i1 %177, label %245, label %254, !dbg !3823

; <label>:245:                                    ; preds = %244
  %246 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %176, i64 0, i32 2, !dbg !3824
  %247 = bitcast i8** %246 to %struct.stream**, !dbg !3824
  %248 = load %struct.stream*, %struct.stream** %247, align 8, !dbg !3824, !tbaa !648
  %249 = sext i32 %170 to i64, !dbg !3826
  %250 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %249, !dbg !3826
  %251 = getelementptr inbounds %struct.stream, %struct.stream* %248, i64 0, i32 2, !dbg !3827
  %252 = bitcast %struct.streamID* %250 to i8*, !dbg !3827
  %253 = bitcast %struct.streamID* %251 to i8*, !dbg !3827
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* nonnull align 8 %253, i64 16, i1 false), !dbg !3827, !tbaa.struct !1603
  br label %280, !dbg !3828

; <label>:254:                                    ; preds = %244
  %255 = sext i32 %170 to i64, !dbg !3829
  %256 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %255, i32 0, !dbg !3831
  %257 = bitcast i64* %256 to <2 x i64>*, !dbg !3832
  store <2 x i64> zeroinitializer, <2 x i64>* %257, align 8, !dbg !3832, !tbaa !117
  br label %280

; <label>:258:                                    ; preds = %234
  %259 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3833, !tbaa !3187
  %260 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %259, i64 %167, !dbg !3835
  %261 = load %struct.redisObject*, %struct.redisObject** %260, align 8, !dbg !3835, !tbaa !234
  %262 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %261, i64 0, i32 2, !dbg !3836
  %263 = load i8*, i8** %262, align 8, !dbg !3836, !tbaa !648
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !3837
  %265 = icmp eq i32 %264, 0, !dbg !3838
  br i1 %265, label %266, label %272, !dbg !3839

; <label>:266:                                    ; preds = %258
  br i1 %42, label %268, label %267, !dbg !3840

; <label>:267:                                    ; preds = %266
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3842
  br label %441, !dbg !3845

; <label>:268:                                    ; preds = %266
  %269 = sext i32 %170 to i64, !dbg !3846
  %270 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %269, i32 0, !dbg !3847
  %271 = bitcast i64* %270 to <2 x i64>*, !dbg !3848
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %271, align 8, !dbg !3848, !tbaa !117
  br label %280, !dbg !3849

; <label>:272:                                    ; preds = %258
  %273 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3850, !tbaa !3187
  %274 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %273, i64 %167, !dbg !3852
  %275 = load %struct.redisObject*, %struct.redisObject** %274, align 8, !dbg !3852, !tbaa !234
  %276 = sext i32 %170 to i64, !dbg !3853
  %277 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %276, !dbg !3853
  %278 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %275, %struct.streamID* %277, i64 0, i32 1) #6, !dbg !3859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3860
  %279 = icmp eq i32 %278, 0, !dbg !3861
  br i1 %279, label %280, label %441

; <label>:280:                                    ; preds = %272, %245, %254, %268
  %281 = add nsw i64 %167, 1, !dbg !3862
  %282 = load i32, i32* %43, align 8, !dbg !3736, !tbaa !3181
  %283 = sext i32 %282 to i64, !dbg !3737
  %284 = icmp slt i64 %281, %283, !dbg !3737
  br i1 %284, label %166, label %285, !dbg !3738, !llvm.loop !3863

; <label>:285:                                    ; preds = %280, %153
  %286 = icmp sgt i32 %92, 1, !dbg !3868
  br i1 %286, label %287, label %414, !dbg !3869

; <label>:287:                                    ; preds = %285
  %288 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %289 = icmp ne %struct.streamCG** %155, null
  %290 = bitcast %struct.streamID* %5 to i8*
  %291 = getelementptr inbounds %struct.streamID, %struct.streamID* %5, i64 0, i32 1
  %292 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2
  %293 = bitcast %struct.sreamPropInfo* %6 to i8*
  %294 = bitcast %struct.sreamPropInfo* %6 to i64*
  %295 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %6, i64 0, i32 1
  %296 = icmp ne i32 %49, 0
  %297 = zext i1 %296 to i32
  %298 = or i32 %297, 4
  %299 = sext i32 %91 to i64, !dbg !3869
  %300 = zext i32 %130 to i64
  br label %303, !dbg !3869

; <label>:301:                                    ; preds = %408
  %302 = icmp eq i64 %409, 0, !dbg !3870
  br i1 %302, label %414, label %413, !dbg !3872

; <label>:303:                                    ; preds = %408, %287
  %304 = phi i64 [ 0, %287 ], [ %411, %408 ]
  %305 = phi i8* [ null, %287 ], [ %410, %408 ]
  %306 = phi i64 [ 0, %287 ], [ %409, %408 ]
  %307 = load %struct.redisDb*, %struct.redisDb** %288, align 8, !dbg !3873, !tbaa !2421
  %308 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3874, !tbaa !3187
  %309 = add nsw i64 %304, %299, !dbg !3875
  %310 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %308, i64 %309, !dbg !3876
  %311 = load %struct.redisObject*, %struct.redisObject** %310, align 8, !dbg !3876, !tbaa !234
  %312 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %307, %struct.redisObject* %311) #6, !dbg !3877
  %313 = icmp eq %struct.redisObject* %312, null, !dbg !3879
  br i1 %313, label %408, label %314, !dbg !3881

; <label>:314:                                    ; preds = %303
  %315 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %312, i64 0, i32 2, !dbg !3882
  %316 = bitcast i8** %315 to %struct.stream**, !dbg !3882
  %317 = load %struct.stream*, %struct.stream** %316, align 8, !dbg !3882, !tbaa !648
  %318 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %304, !dbg !3884
  br i1 %289, label %319, label %351, !dbg !3888

; <label>:319:                                    ; preds = %314
  %320 = getelementptr inbounds %struct.streamID, %struct.streamID* %318, i64 0, i32 0, !dbg !3889
  %321 = load i64, i64* %320, align 8, !dbg !3889, !tbaa !178
  %322 = icmp eq i64 %321, -1, !dbg !3890
  br i1 %322, label %323, label %371, !dbg !3891

; <label>:323:                                    ; preds = %319
  %324 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %304, i32 1, !dbg !3892
  %325 = load i64, i64* %324, align 8, !dbg !3892, !tbaa !188
  %326 = icmp eq i64 %325, -1, !dbg !3893
  br i1 %326, label %327, label %371, !dbg !3894

; <label>:327:                                    ; preds = %323
  %328 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %304, !dbg !3895
  %329 = load %struct.streamCG*, %struct.streamCG** %328, align 8, !dbg !3895, !tbaa !234
  %330 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 1, !dbg !3896
  %331 = load i64, i64* %330, align 8, !dbg !3896, !tbaa !952
  %332 = icmp eq i64 %331, 0, !dbg !3898
  br i1 %332, label %408, label %333, !dbg !3899

; <label>:333:                                    ; preds = %327
  %334 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 2, i32 0, !dbg !3904
  %335 = load i64, i64* %334, align 8, !dbg !3904, !tbaa !178
  %336 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %329, i64 0, i32 0, i32 0, !dbg !3905
  %337 = load i64, i64* %336, align 8, !dbg !3905, !tbaa !178
  %338 = icmp ugt i64 %335, %337, !dbg !3906
  br i1 %338, label %348, label %339, !dbg !3907

; <label>:339:                                    ; preds = %333
  %340 = icmp ult i64 %335, %337, !dbg !3908
  br i1 %340, label %347, label %341, !dbg !3909

; <label>:341:                                    ; preds = %339
  %342 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 2, i32 1, !dbg !3910
  %343 = load i64, i64* %342, align 8, !dbg !3910, !tbaa !188
  %344 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %329, i64 0, i32 0, i32 1, !dbg !3911
  %345 = load i64, i64* %344, align 8, !dbg !3911, !tbaa !188
  %346 = icmp ugt i64 %343, %345, !dbg !3912
  br i1 %346, label %348, label %347, !dbg !3913

; <label>:347:                                    ; preds = %341, %339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3914
  br label %408

; <label>:348:                                    ; preds = %333, %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3914
  %349 = bitcast %struct.streamID* %318 to i8*, !dbg !3915
  %350 = bitcast %struct.streamCG* %329 to i8*, !dbg !3915
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %349, i8* align 8 %350, i64 16, i1 false), !dbg !3915, !tbaa.struct !1603
  br label %371, !dbg !3917

; <label>:351:                                    ; preds = %314
  %352 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 1, !dbg !3918
  %353 = load i64, i64* %352, align 8, !dbg !3918, !tbaa !952
  %354 = icmp eq i64 %353, 0, !dbg !3921
  br i1 %354, label %408, label %355, !dbg !3922

; <label>:355:                                    ; preds = %351
  %356 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 2, i32 0, !dbg !3926
  %357 = load i64, i64* %356, align 8, !dbg !3926, !tbaa !178
  %358 = getelementptr inbounds %struct.streamID, %struct.streamID* %318, i64 0, i32 0, !dbg !3927
  %359 = load i64, i64* %358, align 8, !dbg !3927, !tbaa !178
  %360 = icmp ugt i64 %357, %359, !dbg !3928
  br i1 %360, label %370, label %361, !dbg !3929

; <label>:361:                                    ; preds = %355
  %362 = icmp ult i64 %357, %359, !dbg !3930
  br i1 %362, label %369, label %363, !dbg !3931

; <label>:363:                                    ; preds = %361
  %364 = getelementptr inbounds %struct.stream, %struct.stream* %317, i64 0, i32 2, i32 1, !dbg !3932
  %365 = load i64, i64* %364, align 8, !dbg !3932, !tbaa !188
  %366 = getelementptr inbounds %struct.streamID, %struct.streamID* %146, i64 %304, i32 1, !dbg !3933
  %367 = load i64, i64* %366, align 8, !dbg !3933, !tbaa !188
  %368 = icmp ugt i64 %365, %367, !dbg !3934
  br i1 %368, label %370, label %369, !dbg !3935

; <label>:369:                                    ; preds = %363, %361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3936
  br label %408

; <label>:370:                                    ; preds = %355, %363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3936
  br label %371, !dbg !3937

; <label>:371:                                    ; preds = %323, %319, %348, %370
  %372 = phi i32 [ 1, %323 ], [ 1, %319 ], [ 0, %348 ], [ 0, %370 ], !dbg !3938
  %373 = add i64 %306, 1, !dbg !3939
  %374 = icmp eq i64 %306, 0, !dbg !3940
  br i1 %374, label %375, label %377, !dbg !3942

; <label>:375:                                    ; preds = %371
  %376 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !3943
  br label %377, !dbg !3944

; <label>:377:                                    ; preds = %375, %371
  %378 = phi i8* [ %376, %375 ], [ %305, %371 ], !dbg !3701
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %290) #7, !dbg !3945
  %379 = bitcast %struct.streamID* %318 to i8*, !dbg !3946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %290, i8* align 8 %379, i64 16, i1 false), !dbg !3946, !tbaa.struct !1603
  %380 = load i64, i64* %291, align 8, !dbg !3947, !tbaa !188
  %381 = add i64 %380, 1, !dbg !3947
  store i64 %381, i64* %291, align 8, !dbg !3947, !tbaa !188
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !3948
  %382 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3949, !tbaa !3187
  %383 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %382, i64 %309, !dbg !3950
  %384 = load %struct.redisObject*, %struct.redisObject** %383, align 8, !dbg !3950, !tbaa !234
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %384) #6, !dbg !3951
  br i1 %289, label %385, label %390, !dbg !3953

; <label>:385:                                    ; preds = %377
  %386 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %304, !dbg !3954
  %387 = load %struct.streamCG*, %struct.streamCG** %386, align 8, !dbg !3954, !tbaa !234
  %388 = load i8*, i8** %292, align 8, !dbg !3956, !tbaa !648
  %389 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* %387, i8* %388, i32 1) #9, !dbg !3957
  br label %390, !dbg !3958

; <label>:390:                                    ; preds = %385, %377
  %391 = phi %struct.streamConsumer* [ %389, %385 ], [ null, %377 ], !dbg !3959
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %293) #7, !dbg !3960
  %392 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3961, !tbaa !3187
  %393 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %392, i64 %309, !dbg !3962
  %394 = bitcast %struct.redisObject** %393 to i64*, !dbg !3962
  %395 = load i64, i64* %394, align 8, !dbg !3962, !tbaa !234
  store i64 %395, i64* %294, align 8, !dbg !3963, !tbaa !2713
  store %struct.redisObject* %50, %struct.redisObject** %295, align 8, !dbg !3963, !tbaa !2716
  %396 = icmp eq i32 %372, 0, !dbg !3965
  %397 = select i1 %396, i32 %297, i32 %298, !dbg !3967
  %398 = load i64, i64* %3, align 8, !dbg !3968, !tbaa !265
  br i1 %289, label %399, label %405, !dbg !3969

; <label>:399:                                    ; preds = %390
  %400 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %155, i64 %304, !dbg !3970
  %401 = load %struct.streamCG*, %struct.streamCG** %400, align 8, !dbg !3970, !tbaa !234
  %402 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %317, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %398, i32 0, %struct.streamCG* %401, %struct.streamConsumer* %391, i32 %397, %struct.sreamPropInfo* nonnull %6) #9, !dbg !3973
  %403 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3974, !tbaa !3317
  %404 = add nsw i64 %403, 1, !dbg !3974
  store i64 %404, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3974, !tbaa !3317
  br label %407, !dbg !3976

; <label>:405:                                    ; preds = %390
  %406 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %317, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %398, i32 0, %struct.streamCG* null, %struct.streamConsumer* %391, i32 %397, %struct.sreamPropInfo* nonnull %6) #9, !dbg !3973
  br label %407

; <label>:407:                                    ; preds = %405, %399
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %293) #7, !dbg !3977
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %290) #7, !dbg !3977
  br label %408, !dbg !3978

; <label>:408:                                    ; preds = %369, %327, %347, %351, %407, %303
  %409 = phi i64 [ %306, %303 ], [ %373, %407 ], [ %306, %351 ], [ %306, %347 ], [ %306, %327 ], [ %306, %369 ], !dbg !3959
  %410 = phi i8* [ %305, %303 ], [ %378, %407 ], [ %305, %351 ], [ %305, %347 ], [ %305, %327 ], [ %305, %369 ], !dbg !3979
  %411 = add nuw nsw i64 %304, 1, !dbg !3980
  %412 = icmp eq i64 %411, %300, !dbg !3868
  br i1 %412, label %301, label %303, !dbg !3869, !llvm.loop !3981

; <label>:413:                                    ; preds = %301
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %410, i64 %409) #6, !dbg !3983
  br label %441, !dbg !3985

; <label>:414:                                    ; preds = %285, %301
  %415 = load i64, i64* %2, align 8, !dbg !3986, !tbaa !265
  %416 = icmp eq i64 %415, -1, !dbg !3988
  br i1 %416, label %439, label %417, !dbg !3989

; <label>:417:                                    ; preds = %414
  %418 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3990
  %419 = load i32, i32* %418, align 8, !dbg !3990, !tbaa !3993
  %420 = and i32 %419, 8, !dbg !3994
  %421 = icmp eq i32 %420, 0, !dbg !3994
  br i1 %421, label %424, label %422, !dbg !3995

; <label>:422:                                    ; preds = %417
  %423 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3996, !tbaa !2861
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %423) #6, !dbg !3998
  br label %441, !dbg !3999

; <label>:424:                                    ; preds = %417
  %425 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !4000, !tbaa !3187
  %426 = sext i32 %91 to i64, !dbg !4001
  %427 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %425, i64 %426, !dbg !4001
  call void @blockForKeys(%struct.client* nonnull %0, i32 4, %struct.redisObject** %427, i32 %130, i64 %415, %struct.redisObject* null, %struct.streamID* %146) #6, !dbg !4002
  %428 = load i64, i64* %3, align 8, !dbg !4003, !tbaa !265
  %429 = icmp eq i64 %428, 0, !dbg !4003
  %430 = select i1 %429, i64 1000, i64 %428, !dbg !4003
  %431 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 3, !dbg !4004
  store i64 %430, i64* %431, align 8, !dbg !4005, !tbaa !4006
  br i1 %147, label %432, label %436, !dbg !4007

; <label>:432:                                    ; preds = %424
  call void @incrRefCount(%struct.redisObject* nonnull %50) #6, !dbg !4008
  call void @incrRefCount(%struct.redisObject* %51) #6, !dbg !4011
  %433 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !4012
  store %struct.redisObject* %50, %struct.redisObject** %433, align 8, !dbg !4013, !tbaa !4014
  %434 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 5, !dbg !4015
  store %struct.redisObject* %51, %struct.redisObject** %434, align 8, !dbg !4016, !tbaa !4017
  %435 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 8, !dbg !4018
  store i32 %49, i32* %435, align 8, !dbg !4019, !tbaa !4020
  br label %441, !dbg !4021

; <label>:436:                                    ; preds = %424
  %437 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !4022
  %438 = bitcast %struct.redisObject** %437 to <2 x %struct.redisObject*>*, !dbg !4024
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %438, align 8, !dbg !4024, !tbaa !234
  br label %441

; <label>:439:                                    ; preds = %414
  %440 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !4025, !tbaa !2861
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %440) #6, !dbg !4026
  br label %441, !dbg !4026

; <label>:441:                                    ; preds = %178, %272, %226, %243, %267, %432, %436, %439, %422, %413
  call void @preventCommandPropagation(%struct.client* nonnull %0) #6, !dbg !4027
  %442 = icmp eq %struct.streamID* %146, %10, !dbg !4028
  br i1 %442, label %445, label %443, !dbg !4030

; <label>:443:                                    ; preds = %441
  %444 = bitcast %struct.streamID* %146 to i8*, !dbg !4031
  call void @zfree(i8* %444) #6, !dbg !4032
  br label %445, !dbg !4032

; <label>:445:                                    ; preds = %441, %443
  call void @zfree(i8* %154) #6, !dbg !4033
  br label %446, !dbg !4034

; <label>:446:                                    ; preds = %64, %75, %95, %102, %117, %116, %445, %137, %132
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !4034
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4034
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !4034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4034
  ret void, !dbg !4034
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamLookupCG(%struct.stream* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !3763 {
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !4037
  %4 = load %struct.rax*, %struct.rax** %3, align 8, !dbg !4037, !tbaa !123
  %5 = icmp eq %struct.rax* %4, null, !dbg !4038
  br i1 %5, label %38, label %6, !dbg !4039

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4042
  %8 = load i8, i8* %7, align 1, !dbg !4042, !tbaa !663
  %9 = trunc i8 %8 to i3, !dbg !4044
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !4044

; <label>:10:                                     ; preds = %6
  %11 = lshr i8 %8, 3, !dbg !4045
  %12 = zext i8 %11 to i64, !dbg !4045
  br label %31, !dbg !4046

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4047
  %15 = load i8, i8* %14, align 1, !dbg !4048, !tbaa !663
  %16 = zext i8 %15 to i64, !dbg !4047
  br label %31, !dbg !4049

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4050
  %19 = bitcast i8* %18 to i16*, !dbg !4051
  %20 = load i16, i16* %19, align 1, !dbg !4051, !tbaa !674
  %21 = zext i16 %20 to i64, !dbg !4050
  br label %31, !dbg !4052

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4053
  %24 = bitcast i8* %23 to i32*, !dbg !4054
  %25 = load i32, i32* %24, align 1, !dbg !4054, !tbaa !679
  %26 = zext i32 %25 to i64, !dbg !4053
  br label %31, !dbg !4055

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4056
  %29 = bitcast i8* %28 to i64*, !dbg !4057
  %30 = load i64, i64* %29, align 1, !dbg !4057, !tbaa !117
  br label %31, !dbg !4058

; <label>:31:                                     ; preds = %6, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %6 ], !dbg !4059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4060
  %33 = tail call i8* @raxFind(%struct.rax* nonnull %4, i8* nonnull %1, i64 %32) #6, !dbg !4061
  %34 = bitcast i8* %33 to %struct.streamCG*, !dbg !4061
  %35 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4063, !tbaa !234
  %36 = icmp eq %struct.streamCG* %35, %34, !dbg !4064
  %37 = select i1 %36, %struct.streamCG* null, %struct.streamCG* %34, !dbg !4065
  br label %38

; <label>:38:                                     ; preds = %2, %31
  %39 = phi %struct.streamCG* [ %37, %31 ], [ null, %2 ], !dbg !4066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4067
  ret %struct.streamCG* %39, !dbg !4067
}

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !4068 {
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4079
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4079, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4082
  %7 = load i8, i8* %6, align 1, !dbg !4082, !tbaa !663
  %8 = trunc i8 %7 to i3, !dbg !4084
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4084

; <label>:9:                                      ; preds = %3
  %10 = lshr i8 %7, 3, !dbg !4085
  %11 = zext i8 %10 to i64, !dbg !4085
  br label %30, !dbg !4086

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4087
  %14 = load i8, i8* %13, align 1, !dbg !4088, !tbaa !663
  %15 = zext i8 %14 to i64, !dbg !4087
  br label %30, !dbg !4089

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4090
  %18 = bitcast i8* %17 to i16*, !dbg !4091
  %19 = load i16, i16* %18, align 1, !dbg !4091, !tbaa !674
  %20 = zext i16 %19 to i64, !dbg !4090
  br label %30, !dbg !4092

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4093
  %23 = bitcast i8* %22 to i32*, !dbg !4094
  %24 = load i32, i32* %23, align 1, !dbg !4094, !tbaa !679
  %25 = zext i32 %24 to i64, !dbg !4093
  br label %30, !dbg !4095

; <label>:26:                                     ; preds = %3
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4096
  %28 = bitcast i8* %27 to i64*, !dbg !4097
  %29 = load i64, i64* %28, align 1, !dbg !4097, !tbaa !117
  br label %30, !dbg !4098

; <label>:30:                                     ; preds = %3, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %3 ], !dbg !4099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4100
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #6, !dbg !4101
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4101
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4103, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4105
  br i1 %35, label %36, label %74, !dbg !4106

; <label>:36:                                     ; preds = %30
  %37 = icmp eq i32 %2, 0, !dbg !4107
  br i1 %37, label %78, label %38, !dbg !4110

; <label>:38:                                     ; preds = %36
  %39 = tail call i8* @zmalloc(i64 24) #6, !dbg !4111
  %40 = bitcast i8* %39 to %struct.streamConsumer*, !dbg !4111
  %41 = tail call i8* @sdsdup(i8* nonnull %1) #6, !dbg !4112
  %42 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !4113
  %43 = bitcast i8* %42 to i8**, !dbg !4113
  store i8* %41, i8** %43, align 8, !dbg !4114, !tbaa !2352
  %44 = tail call %struct.rax* @raxNew() #6, !dbg !4115
  %45 = getelementptr inbounds i8, i8* %39, i64 16, !dbg !4116
  %46 = bitcast i8* %45 to %struct.rax**, !dbg !4116
  store %struct.rax* %44, %struct.rax** %46, align 8, !dbg !4117, !tbaa !2664
  %47 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4118, !tbaa !159
  %48 = load i8, i8* %6, align 1, !dbg !4121, !tbaa !663
  %49 = trunc i8 %48 to i3, !dbg !4123
  switch i3 %49, label %71 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !4123

; <label>:50:                                     ; preds = %38
  %51 = lshr i8 %48, 3, !dbg !4124
  %52 = zext i8 %51 to i64, !dbg !4124
  br label %71, !dbg !4125

; <label>:53:                                     ; preds = %38
  %54 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4126
  %55 = load i8, i8* %54, align 1, !dbg !4127, !tbaa !663
  %56 = zext i8 %55 to i64, !dbg !4126
  br label %71, !dbg !4128

; <label>:57:                                     ; preds = %38
  %58 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4129
  %59 = bitcast i8* %58 to i16*, !dbg !4130
  %60 = load i16, i16* %59, align 1, !dbg !4130, !tbaa !674
  %61 = zext i16 %60 to i64, !dbg !4129
  br label %71, !dbg !4131

; <label>:62:                                     ; preds = %38
  %63 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4132
  %64 = bitcast i8* %63 to i32*, !dbg !4133
  %65 = load i32, i32* %64, align 1, !dbg !4133, !tbaa !679
  %66 = zext i32 %65 to i64, !dbg !4132
  br label %71, !dbg !4134

; <label>:67:                                     ; preds = %38
  %68 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4135
  %69 = bitcast i8* %68 to i64*, !dbg !4136
  %70 = load i64, i64* %69, align 1, !dbg !4136, !tbaa !117
  br label %71, !dbg !4137

; <label>:71:                                     ; preds = %38, %50, %53, %57, %62, %67
  %72 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], [ 0, %38 ], !dbg !4138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4139
  %73 = tail call i32 @raxInsert(%struct.rax* %47, i8* nonnull %1, i64 %72, i8* %39, i8** null) #6, !dbg !4140
  br label %74, !dbg !4141

; <label>:74:                                     ; preds = %71, %30
  %75 = phi %struct.streamConsumer* [ %40, %71 ], [ %33, %30 ], !dbg !4142
  %76 = tail call i64 @mstime() #6, !dbg !4143
  %77 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %75, i64 0, i32 0, !dbg !4144
  store i64 %76, i64* %77, align 8, !dbg !4145, !tbaa !4146
  br label %78, !dbg !4147

; <label>:78:                                     ; preds = %36, %74
  %79 = phi %struct.streamConsumer* [ %75, %74 ], [ null, %36 ], !dbg !4148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4149
  ret %struct.streamConsumer* %79, !dbg !4149
}

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @preventCommandPropagation(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeConsumer(%struct.streamConsumer*) #0 !dbg !4150 {
  %2 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 2, !dbg !4156
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !4156, !tbaa !2664
  tail call void @raxFree(%struct.rax* %3) #6, !dbg !4157
  %4 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 1, !dbg !4158
  %5 = load i8*, i8** %4, align 8, !dbg !4158, !tbaa !2352
  tail call void @sdsfree(i8* %5) #6, !dbg !4159
  %6 = bitcast %struct.streamConsumer* %0 to i8*, !dbg !4160
  tail call void @zfree(i8* %6) #6, !dbg !4161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4162
  ret void, !dbg !4162
}

; Function Attrs: noredzone
declare dso_local void @raxFree(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamCreateCG(%struct.stream* nocapture, i8*, i64, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !4163 {
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !4176
  %6 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4176, !tbaa !123
  %7 = icmp eq %struct.rax* %6, null, !dbg !4178
  br i1 %7, label %8, label %10, !dbg !4179

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.rax* @raxNew() #6, !dbg !4180
  store %struct.rax* %9, %struct.rax** %5, align 8, !dbg !4181, !tbaa !123
  br label %10, !dbg !4182

; <label>:10:                                     ; preds = %8, %4
  %11 = phi %struct.rax* [ %9, %8 ], [ %6, %4 ], !dbg !4183
  %12 = tail call i8* @raxFind(%struct.rax* %11, i8* %1, i64 %2) #6, !dbg !4185
  %13 = load i8*, i8** @raxNotFound, align 8, !dbg !4186, !tbaa !234
  %14 = icmp eq i8* %12, %13, !dbg !4187
  br i1 %14, label %15, label %27, !dbg !4188

; <label>:15:                                     ; preds = %10
  %16 = tail call i8* @zmalloc(i64 32) #6, !dbg !4189
  %17 = bitcast i8* %16 to %struct.streamCG*, !dbg !4189
  %18 = tail call %struct.rax* @raxNew() #6, !dbg !4191
  %19 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !4192
  %20 = bitcast i8* %19 to %struct.rax**, !dbg !4192
  store %struct.rax* %18, %struct.rax** %20, align 8, !dbg !4193, !tbaa !155
  %21 = tail call %struct.rax* @raxNew() #6, !dbg !4194
  %22 = getelementptr inbounds i8, i8* %16, i64 24, !dbg !4195
  %23 = bitcast i8* %22 to %struct.rax**, !dbg !4195
  store %struct.rax* %21, %struct.rax** %23, align 8, !dbg !4196, !tbaa !159
  %24 = bitcast %struct.streamID* %3 to i8*, !dbg !4197
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %24, i64 16, i1 false), !dbg !4197, !tbaa.struct !1603
  %25 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4198, !tbaa !123
  %26 = tail call i32 @raxInsert(%struct.rax* %25, i8* %1, i64 %2, i8* %16, i8** null) #6, !dbg !4199
  br label %27

; <label>:27:                                     ; preds = %10, %15
  %28 = phi %struct.streamCG* [ %17, %15 ], [ null, %10 ], !dbg !4200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4201
  ret %struct.streamCG* %28, !dbg !4201
}

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @streamDelConsumer(%struct.streamCG* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !4202 {
  %3 = alloca %struct.raxIterator, align 8
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4219
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4219, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4222
  %7 = load i8, i8* %6, align 1, !dbg !4222, !tbaa !663
  %8 = trunc i8 %7 to i3, !dbg !4224
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4224

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !4225
  %11 = zext i8 %10 to i64, !dbg !4225
  br label %30, !dbg !4226

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4227
  %14 = load i8, i8* %13, align 1, !dbg !4228, !tbaa !663
  %15 = zext i8 %14 to i64, !dbg !4227
  br label %30, !dbg !4229

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4230
  %18 = bitcast i8* %17 to i16*, !dbg !4231
  %19 = load i16, i16* %18, align 1, !dbg !4231, !tbaa !674
  %20 = zext i16 %19 to i64, !dbg !4230
  br label %30, !dbg !4232

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4233
  %23 = bitcast i8* %22 to i32*, !dbg !4234
  %24 = load i32, i32* %23, align 1, !dbg !4234, !tbaa !679
  %25 = zext i32 %24 to i64, !dbg !4233
  br label %30, !dbg !4235

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4236
  %28 = bitcast i8* %27 to i64*, !dbg !4237
  %29 = load i64, i64* %28, align 1, !dbg !4237, !tbaa !117
  br label %30, !dbg !4238

; <label>:30:                                     ; preds = %26, %21, %16, %12, %9, %2
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !4239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4240
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #6, !dbg !4241
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4241
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4243, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4244
  br i1 %35, label %36, label %37, !dbg !4245

; <label>:36:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4246
  br label %96, !dbg !4248

; <label>:37:                                     ; preds = %30
  %38 = tail call i64 @mstime() #6, !dbg !4249
  %39 = bitcast i8* %32 to i64*, !dbg !4250
  store i64 %38, i64* %39, align 8, !dbg !4251, !tbaa !4146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4246
  %40 = icmp eq i8* %32, null, !dbg !4252
  br i1 %40, label %96, label %41, !dbg !4248

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !4254
  %43 = bitcast i8* %42 to %struct.rax**, !dbg !4254
  %44 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4254, !tbaa !2664
  %45 = tail call i64 @raxSize(%struct.rax* %44) #6, !dbg !4255
  %46 = bitcast %struct.raxIterator* %3 to i8*, !dbg !4257
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %46) #7, !dbg !4257
  %47 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4258, !tbaa !2664
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %47) #6, !dbg !4260
  %48 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !4261
  %49 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !4262
  %50 = icmp eq i32 %49, 0, !dbg !4263
  br i1 %50, label %64, label %51, !dbg !4263

; <label>:51:                                     ; preds = %41
  %52 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %53 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 1
  %54 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 2
  %55 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 4
  br label %56, !dbg !4263

; <label>:56:                                     ; preds = %51, %56
  %57 = load i8*, i8** %52, align 8, !dbg !4264, !tbaa !518
  %58 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !4266, !tbaa !155
  %59 = load i8*, i8** %54, align 8, !dbg !4267, !tbaa !694
  %60 = load i64, i64* %55, align 8, !dbg !4268, !tbaa !692
  %61 = call i32 @raxRemove(%struct.rax* %58, i8* %59, i64 %60, i8** null) #6, !dbg !4269
  call void @zfree(i8* %57) #6, !dbg !4272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4273
  %62 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !4262
  %63 = icmp eq i32 %62, 0, !dbg !4263
  br i1 %63, label %64, label %56, !dbg !4263, !llvm.loop !4274

; <label>:64:                                     ; preds = %56, %41
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !4276
  %65 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4277, !tbaa !159
  %66 = load i8, i8* %6, align 1, !dbg !4280, !tbaa !663
  %67 = trunc i8 %66 to i3, !dbg !4282
  switch i3 %67, label %89 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %75
    i3 3, label %80
    i3 -4, label %85
  ], !dbg !4282

; <label>:68:                                     ; preds = %64
  %69 = lshr i8 %66, 3, !dbg !4283
  %70 = zext i8 %69 to i64, !dbg !4283
  br label %89, !dbg !4284

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4285
  %73 = load i8, i8* %72, align 1, !dbg !4286, !tbaa !663
  %74 = zext i8 %73 to i64, !dbg !4285
  br label %89, !dbg !4287

; <label>:75:                                     ; preds = %64
  %76 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4288
  %77 = bitcast i8* %76 to i16*, !dbg !4289
  %78 = load i16, i16* %77, align 1, !dbg !4289, !tbaa !674
  %79 = zext i16 %78 to i64, !dbg !4288
  br label %89, !dbg !4290

; <label>:80:                                     ; preds = %64
  %81 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4291
  %82 = bitcast i8* %81 to i32*, !dbg !4292
  %83 = load i32, i32* %82, align 1, !dbg !4292, !tbaa !679
  %84 = zext i32 %83 to i64, !dbg !4291
  br label %89, !dbg !4293

; <label>:85:                                     ; preds = %64
  %86 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4294
  %87 = bitcast i8* %86 to i64*, !dbg !4295
  %88 = load i64, i64* %87, align 1, !dbg !4295, !tbaa !117
  br label %89, !dbg !4296

; <label>:89:                                     ; preds = %64, %68, %71, %75, %80, %85
  %90 = phi i64 [ %88, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %71 ], [ %70, %68 ], [ 0, %64 ], !dbg !4297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4298
  %91 = call i32 @raxRemove(%struct.rax* %65, i8* nonnull %1, i64 %90, i8** null) #6, !dbg !4299
  %92 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4302, !tbaa !2664
  call void @raxFree(%struct.rax* %92) #6, !dbg !4303
  %93 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !4304
  %94 = bitcast i8* %93 to i8**, !dbg !4304
  %95 = load i8*, i8** %94, align 8, !dbg !4304, !tbaa !2352
  call void @sdsfree(i8* %95) #6, !dbg !4305
  call void @zfree(i8* nonnull %32) #6, !dbg !4306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4307
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %46) #7, !dbg !4308
  br label %96

; <label>:96:                                     ; preds = %36, %37, %89
  %97 = phi i64 [ %45, %89 ], [ 0, %37 ], [ 0, %36 ], !dbg !4309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4308
  ret i64 %97, !dbg !4308
}

; Function Attrs: noredzone
declare dso_local i64 @raxSize(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xgroupCommand(%struct.client*) local_unnamed_addr #0 !dbg !4310 {
  %2 = alloca [7 x i8*], align 16
  %3 = alloca <2 x i64>, align 16
  %4 = bitcast <2 x i64>* %3 to %struct.streamID*
  %5 = alloca %struct.streamID, align 8
  %6 = bitcast [7 x i8*]* %2 to i8*, !dbg !4335
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #7, !dbg !4335
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 6
  %8 = bitcast i8** %7 to i64*, !dbg !4336
  store i64 0, i64* %8, align 16, !dbg !4336
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 0, !dbg !4336
  %10 = bitcast [7 x i8*]* %2 to <2 x i8*>*, !dbg !4336
  store <2 x i8*> <i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0)>, <2 x i8*>* %10, align 16, !dbg !4336
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 2, !dbg !4336
  %12 = bitcast i8** %11 to <2 x i8*>*, !dbg !4336
  store <2 x i8*> <i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !4336
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 4, !dbg !4336
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !4336
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !4336
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4340
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4340, !tbaa !3187
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !4341
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !4341, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4342
  %20 = load i8*, i8** %19, align 8, !dbg !4342, !tbaa !648
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4345
  %22 = load i32, i32* %21, align 8, !dbg !4345, !tbaa !3181
  %23 = icmp eq i32 %22, 6, !dbg !4347
  br i1 %23, label %24, label %35, !dbg !4348

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !4349
  %26 = icmp eq i32 %25, 0, !dbg !4349
  br i1 %26, label %27, label %37, !dbg !4350

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 5, !dbg !4351
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !4351, !tbaa !234
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !4354
  %31 = load i8*, i8** %30, align 8, !dbg !4354, !tbaa !648
  %32 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !4355
  %33 = icmp eq i32 %32, 0, !dbg !4355
  br i1 %33, label %37, label %34, !dbg !4356

; <label>:34:                                     ; preds = %27
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !4357
  br label %325, !dbg !4359

; <label>:35:                                     ; preds = %1
  %36 = icmp sgt i32 %22, 3, !dbg !4360
  br i1 %36, label %37, label %116, !dbg !4362

; <label>:37:                                     ; preds = %27, %24, %35
  %38 = phi i32 [ 0, %35 ], [ 0, %24 ], [ 1, %27 ]
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4363
  %40 = load %struct.redisDb*, %struct.redisDb** %39, align 8, !dbg !4363, !tbaa !2421
  %41 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !4365
  %42 = load %struct.redisObject*, %struct.redisObject** %41, align 8, !dbg !4365, !tbaa !234
  %43 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %40, %struct.redisObject* %42) #6, !dbg !4366
  %44 = icmp eq %struct.redisObject* %43, null, !dbg !4368
  br i1 %44, label %52, label %45, !dbg !4370

; <label>:45:                                     ; preds = %37
  %46 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %43, i32 6) #6, !dbg !4371
  %47 = icmp eq i32 %46, 0, !dbg !4371
  br i1 %47, label %48, label %325, !dbg !4374

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !4375
  %50 = bitcast i8** %49 to %struct.stream**, !dbg !4375
  %51 = load %struct.stream*, %struct.stream** %50, align 8, !dbg !4375, !tbaa !648
  br label %52, !dbg !4376

; <label>:52:                                     ; preds = %48, %37
  %53 = phi %struct.stream* [ %51, %48 ], [ null, %37 ], !dbg !4377
  %54 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4378, !tbaa !3187
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 3, !dbg !4379
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !4379, !tbaa !234
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !4380
  %58 = load i8*, i8** %57, align 8, !dbg !4380, !tbaa !648
  %59 = load i32, i32* %21, align 8, !dbg !4381, !tbaa !3181
  %60 = icmp slt i32 %59, 4, !dbg !4383
  %61 = icmp ne i32 %38, 0, !dbg !4384
  %62 = or i1 %61, %60, !dbg !4385
  br i1 %62, label %116, label %63, !dbg !4385

; <label>:63:                                     ; preds = %52
  %64 = icmp eq %struct.stream* %53, null, !dbg !4386
  br i1 %64, label %65, label %66, !dbg !4389

; <label>:65:                                     ; preds = %63
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !4390
  br label %325, !dbg !4392

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %53, i64 0, i32 3, !dbg !4397
  %68 = load %struct.rax*, %struct.rax** %67, align 8, !dbg !4397, !tbaa !123
  %69 = icmp eq %struct.rax* %68, null, !dbg !4398
  br i1 %69, label %101, label %70, !dbg !4399

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !4402
  %72 = load i8, i8* %71, align 1, !dbg !4402, !tbaa !663
  %73 = trunc i8 %72 to i3, !dbg !4404
  switch i3 %73, label %95 [
    i3 0, label %74
    i3 1, label %77
    i3 2, label %81
    i3 3, label %86
    i3 -4, label %91
  ], !dbg !4404

; <label>:74:                                     ; preds = %70
  %75 = lshr i8 %72, 3, !dbg !4405
  %76 = zext i8 %75 to i64, !dbg !4405
  br label %95, !dbg !4406

; <label>:77:                                     ; preds = %70
  %78 = getelementptr inbounds i8, i8* %58, i64 -3, !dbg !4407
  %79 = load i8, i8* %78, align 1, !dbg !4408, !tbaa !663
  %80 = zext i8 %79 to i64, !dbg !4407
  br label %95, !dbg !4409

; <label>:81:                                     ; preds = %70
  %82 = getelementptr inbounds i8, i8* %58, i64 -5, !dbg !4410
  %83 = bitcast i8* %82 to i16*, !dbg !4411
  %84 = load i16, i16* %83, align 1, !dbg !4411, !tbaa !674
  %85 = zext i16 %84 to i64, !dbg !4410
  br label %95, !dbg !4412

; <label>:86:                                     ; preds = %70
  %87 = getelementptr inbounds i8, i8* %58, i64 -9, !dbg !4413
  %88 = bitcast i8* %87 to i32*, !dbg !4414
  %89 = load i32, i32* %88, align 1, !dbg !4414, !tbaa !679
  %90 = zext i32 %89 to i64, !dbg !4413
  br label %95, !dbg !4415

; <label>:91:                                     ; preds = %70
  %92 = getelementptr inbounds i8, i8* %58, i64 -17, !dbg !4416
  %93 = bitcast i8* %92 to i64*, !dbg !4417
  %94 = load i64, i64* %93, align 1, !dbg !4417, !tbaa !117
  br label %95, !dbg !4418

; <label>:95:                                     ; preds = %91, %86, %81, %77, %74, %70
  %96 = phi i64 [ %94, %91 ], [ %90, %86 ], [ %85, %81 ], [ %80, %77 ], [ %76, %74 ], [ 0, %70 ], !dbg !4419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4420
  %97 = tail call i8* @raxFind(%struct.rax* nonnull %68, i8* nonnull %58, i64 %96) #6, !dbg !4421
  %98 = bitcast i8* %97 to %struct.streamCG*, !dbg !4421
  %99 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4423, !tbaa !234
  %100 = icmp eq %struct.streamCG* %99, %98, !dbg !4424
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %66, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4425
  br label %104, !dbg !4426

; <label>:102:                                    ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4425
  %103 = icmp eq i8* %97, null, !dbg !4427
  br i1 %103, label %104, label %116, !dbg !4426

; <label>:104:                                    ; preds = %101, %102
  %105 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4428
  %106 = icmp eq i32 %105, 0, !dbg !4428
  br i1 %106, label %110, label %107, !dbg !4429

; <label>:107:                                    ; preds = %104
  %108 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !4430
  %109 = icmp eq i32 %108, 0, !dbg !4430
  br i1 %109, label %110, label %116, !dbg !4431

; <label>:110:                                    ; preds = %107, %104
  %111 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4432, !tbaa !3187
  %112 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %111, i64 2, !dbg !4434
  %113 = load %struct.redisObject*, %struct.redisObject** %112, align 8, !dbg !4434, !tbaa !234
  %114 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %113, i64 0, i32 2, !dbg !4435
  %115 = load i8*, i8** %114, align 8, !dbg !4435, !tbaa !648
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %58, i8* %115) #6, !dbg !4436
  br label %325, !dbg !4437

; <label>:116:                                    ; preds = %35, %107, %102, %52
  %117 = phi i1 [ %61, %52 ], [ %61, %107 ], [ %61, %102 ], [ false, %35 ]
  %118 = phi %struct.stream* [ %53, %52 ], [ %53, %107 ], [ %53, %102 ], [ null, %35 ]
  %119 = phi i8* [ %58, %52 ], [ %58, %107 ], [ %58, %102 ], [ null, %35 ]
  %120 = phi i8* [ null, %52 ], [ null, %107 ], [ %97, %102 ], [ null, %35 ], !dbg !4438
  %121 = phi %struct.streamCG* [ null, %52 ], [ null, %107 ], [ %98, %102 ], [ null, %35 ], !dbg !4438
  %122 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !4439
  %123 = icmp eq i32 %122, 0, !dbg !4439
  br i1 %123, label %124, label %207, !dbg !4440

; <label>:124:                                    ; preds = %116
  %125 = load i32, i32* %21, align 8, !dbg !4441, !tbaa !3181
  %126 = add i32 %125, -5, !dbg !4442
  %127 = icmp ult i32 %126, 2, !dbg !4442
  br i1 %127, label %128, label %207, !dbg !4442

; <label>:128:                                    ; preds = %124
  %129 = bitcast <2 x i64>* %3 to i8*, !dbg !4443
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #7, !dbg !4443
  %130 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4444, !tbaa !3187
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 4, !dbg !4446
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !4446, !tbaa !234
  %133 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %132, i64 0, i32 2, !dbg !4447
  %134 = load i8*, i8** %133, align 8, !dbg !4447, !tbaa !648
  %135 = tail call i32 @strcmp(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4448
  %136 = icmp eq i32 %135, 0, !dbg !4448
  br i1 %136, label %137, label %143, !dbg !4449

; <label>:137:                                    ; preds = %128
  %138 = icmp eq %struct.stream* %118, null, !dbg !4450
  br i1 %138, label %142, label %139, !dbg !4453

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds %struct.stream, %struct.stream* %118, i64 0, i32 2, !dbg !4454
  %141 = bitcast %struct.streamID* %140 to i8*, !dbg !4454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %129, i8* nonnull align 8 %141, i64 16, i1 false), !dbg !4454, !tbaa.struct !1603
  br label %163, !dbg !4456

; <label>:142:                                    ; preds = %137
  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16, !dbg !4457, !tbaa !117
  br label %151, !dbg !4456

; <label>:143:                                    ; preds = %128
  %144 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4459, !tbaa !3187
  %145 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %144, i64 4, !dbg !4461
  %146 = load %struct.redisObject*, %struct.redisObject** %145, align 8, !dbg !4461, !tbaa !234
  %147 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %146, %struct.streamID* nonnull %4, i64 0, i32 1) #6, !dbg !4468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4469
  %148 = icmp eq i32 %147, 0, !dbg !4470
  br i1 %148, label %149, label %324, !dbg !4471

; <label>:149:                                    ; preds = %143
  %150 = icmp eq %struct.stream* %118, null, !dbg !4472
  br i1 %150, label %151, label %163, !dbg !4456

; <label>:151:                                    ; preds = %142, %149
  br i1 %117, label %153, label %152, !dbg !4474

; <label>:152:                                    ; preds = %151
  tail call void @_serverAssert(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 1781) #6, !dbg !4474
  tail call void @_exit(i32 1) #8, !dbg !4474
  unreachable, !dbg !4474

; <label>:153:                                    ; preds = %151
  %154 = tail call %struct.redisObject* @createStreamObject() #6, !dbg !4476
  %155 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4477
  %156 = load %struct.redisDb*, %struct.redisDb** %155, align 8, !dbg !4477, !tbaa !2421
  %157 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4478, !tbaa !3187
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 2, !dbg !4479
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !4479, !tbaa !234
  tail call void @dbAdd(%struct.redisDb* %156, %struct.redisObject* %159, %struct.redisObject* %154) #6, !dbg !4480
  %160 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %154, i64 0, i32 2, !dbg !4481
  %161 = bitcast i8** %160 to %struct.stream**, !dbg !4481
  %162 = load %struct.stream*, %struct.stream** %161, align 8, !dbg !4481, !tbaa !648
  br label %163, !dbg !4482

; <label>:163:                                    ; preds = %139, %153, %149
  %164 = phi %struct.stream* [ %162, %153 ], [ %118, %149 ], [ %118, %139 ], !dbg !4483
  %165 = getelementptr inbounds i8, i8* %119, i64 -1, !dbg !4486
  %166 = load i8, i8* %165, align 1, !dbg !4486, !tbaa !663
  %167 = trunc i8 %166 to i3, !dbg !4488
  switch i3 %167, label %189 [
    i3 0, label %168
    i3 1, label %171
    i3 2, label %175
    i3 3, label %180
    i3 -4, label %185
  ], !dbg !4488

; <label>:168:                                    ; preds = %163
  %169 = lshr i8 %166, 3, !dbg !4489
  %170 = zext i8 %169 to i64, !dbg !4489
  br label %189, !dbg !4490

; <label>:171:                                    ; preds = %163
  %172 = getelementptr inbounds i8, i8* %119, i64 -3, !dbg !4491
  %173 = load i8, i8* %172, align 1, !dbg !4492, !tbaa !663
  %174 = zext i8 %173 to i64, !dbg !4491
  br label %189, !dbg !4493

; <label>:175:                                    ; preds = %163
  %176 = getelementptr inbounds i8, i8* %119, i64 -5, !dbg !4494
  %177 = bitcast i8* %176 to i16*, !dbg !4495
  %178 = load i16, i16* %177, align 1, !dbg !4495, !tbaa !674
  %179 = zext i16 %178 to i64, !dbg !4494
  br label %189, !dbg !4496

; <label>:180:                                    ; preds = %163
  %181 = getelementptr inbounds i8, i8* %119, i64 -9, !dbg !4497
  %182 = bitcast i8* %181 to i32*, !dbg !4498
  %183 = load i32, i32* %182, align 1, !dbg !4498, !tbaa !679
  %184 = zext i32 %183 to i64, !dbg !4497
  br label %189, !dbg !4499

; <label>:185:                                    ; preds = %163
  %186 = getelementptr inbounds i8, i8* %119, i64 -17, !dbg !4500
  %187 = bitcast i8* %186 to i64*, !dbg !4501
  %188 = load i64, i64* %187, align 1, !dbg !4501, !tbaa !117
  br label %189, !dbg !4502

; <label>:189:                                    ; preds = %163, %168, %171, %175, %180, %185
  %190 = phi i64 [ %188, %185 ], [ %184, %180 ], [ %179, %175 ], [ %174, %171 ], [ %170, %168 ], [ 0, %163 ], !dbg !4503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4504
  %191 = call %struct.streamCG* @streamCreateCG(%struct.stream* %164, i8* nonnull %119, i64 %190, %struct.streamID* nonnull %4) #9, !dbg !4505
  %192 = icmp eq %struct.streamCG* %191, null, !dbg !4507
  br i1 %192, label %204, label %193, !dbg !4509

; <label>:193:                                    ; preds = %189
  %194 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4510, !tbaa !4512
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %194) #6, !dbg !4513
  %195 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4514, !tbaa !3317
  %196 = add nsw i64 %195, 1, !dbg !4514
  store i64 %196, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4514, !tbaa !3317
  %197 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4515, !tbaa !3187
  %198 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %197, i64 2, !dbg !4516
  %199 = load %struct.redisObject*, %struct.redisObject** %198, align 8, !dbg !4516, !tbaa !234
  %200 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4517
  %201 = load %struct.redisDb*, %struct.redisDb** %200, align 8, !dbg !4517, !tbaa !2421
  %202 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %201, i64 0, i32 5, !dbg !4518
  %203 = load i32, i32* %202, align 8, !dbg !4518, !tbaa !2426
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), %struct.redisObject* %199, i32 %203) #6, !dbg !4519
  br label %206, !dbg !4520

; <label>:204:                                    ; preds = %189
  %205 = tail call i8* @sdsnew(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !4521
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %205) #6, !dbg !4523
  br label %206

; <label>:206:                                    ; preds = %193, %204
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #7, !dbg !4524
  br label %325

; <label>:207:                                    ; preds = %124, %116
  %208 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4525
  %209 = icmp eq i32 %208, 0, !dbg !4525
  br i1 %209, label %210, label %243, !dbg !4526

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* %21, align 8, !dbg !4527, !tbaa !3181
  %212 = icmp eq i32 %211, 5, !dbg !4528
  br i1 %212, label %213, label %243, !dbg !4529

; <label>:213:                                    ; preds = %210
  %214 = bitcast %struct.streamID* %5 to i8*, !dbg !4530
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %214) #7, !dbg !4530
  %215 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4531, !tbaa !3187
  %216 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %215, i64 4, !dbg !4533
  %217 = load %struct.redisObject*, %struct.redisObject** %216, align 8, !dbg !4533, !tbaa !234
  %218 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %217, i64 0, i32 2, !dbg !4534
  %219 = load i8*, i8** %218, align 8, !dbg !4534, !tbaa !648
  %220 = tail call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4535
  %221 = icmp eq i32 %220, 0, !dbg !4535
  br i1 %221, label %222, label %225, !dbg !4536

; <label>:222:                                    ; preds = %213
  %223 = getelementptr inbounds %struct.stream, %struct.stream* %118, i64 0, i32 2, !dbg !4537
  %224 = bitcast %struct.streamID* %223 to i8*, !dbg !4537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %214, i8* nonnull align 8 %224, i64 16, i1 false), !dbg !4537, !tbaa.struct !1603
  br label %231, !dbg !4539

; <label>:225:                                    ; preds = %213
  %226 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4540, !tbaa !3187
  %227 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %226, i64 4, !dbg !4542
  %228 = load %struct.redisObject*, %struct.redisObject** %227, align 8, !dbg !4542, !tbaa !234
  %229 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %228, %struct.streamID* nonnull %5, i64 0, i32 0) #6, !dbg !4549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4550
  %230 = icmp eq i32 %229, 0, !dbg !4551
  br i1 %230, label %231, label %242, !dbg !4552

; <label>:231:                                    ; preds = %225, %222
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* nonnull align 8 %214, i64 16, i1 false), !dbg !4553, !tbaa.struct !1603
  %232 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4554, !tbaa !4512
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %232) #6, !dbg !4555
  %233 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4556, !tbaa !3317
  %234 = add nsw i64 %233, 1, !dbg !4556
  store i64 %234, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4556, !tbaa !3317
  %235 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4557, !tbaa !3187
  %236 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %235, i64 2, !dbg !4558
  %237 = load %struct.redisObject*, %struct.redisObject** %236, align 8, !dbg !4558, !tbaa !234
  %238 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4559
  %239 = load %struct.redisDb*, %struct.redisDb** %238, align 8, !dbg !4559, !tbaa !2421
  %240 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %239, i64 0, i32 5, !dbg !4560
  %241 = load i32, i32* %240, align 8, !dbg !4560, !tbaa !2426
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), %struct.redisObject* %237, i32 %241) #6, !dbg !4561
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %214) #7, !dbg !4562
  br label %325

; <label>:242:                                    ; preds = %225
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %214) #7, !dbg !4562
  br label %325

; <label>:243:                                    ; preds = %207, %210
  %244 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)) #10, !dbg !4563
  %245 = icmp eq i32 %244, 0, !dbg !4563
  br i1 %245, label %246, label %297, !dbg !4564

; <label>:246:                                    ; preds = %243
  %247 = load i32, i32* %21, align 8, !dbg !4565, !tbaa !3181
  %248 = icmp eq i32 %247, 4, !dbg !4566
  br i1 %248, label %249, label %297, !dbg !4567

; <label>:249:                                    ; preds = %246
  %250 = icmp eq %struct.streamCG* %121, null, !dbg !4568
  br i1 %250, label %295, label %251, !dbg !4571

; <label>:251:                                    ; preds = %249
  %252 = getelementptr inbounds %struct.stream, %struct.stream* %118, i64 0, i32 3, !dbg !4572
  %253 = load %struct.rax*, %struct.rax** %252, align 8, !dbg !4572, !tbaa !123
  %254 = getelementptr inbounds i8, i8* %119, i64 -1, !dbg !4576
  %255 = load i8, i8* %254, align 1, !dbg !4576, !tbaa !663
  %256 = trunc i8 %255 to i3, !dbg !4578
  switch i3 %256, label %278 [
    i3 0, label %257
    i3 1, label %260
    i3 2, label %264
    i3 3, label %269
    i3 -4, label %274
  ], !dbg !4578

; <label>:257:                                    ; preds = %251
  %258 = lshr i8 %255, 3, !dbg !4579
  %259 = zext i8 %258 to i64, !dbg !4579
  br label %278, !dbg !4580

; <label>:260:                                    ; preds = %251
  %261 = getelementptr inbounds i8, i8* %119, i64 -3, !dbg !4581
  %262 = load i8, i8* %261, align 1, !dbg !4582, !tbaa !663
  %263 = zext i8 %262 to i64, !dbg !4581
  br label %278, !dbg !4583

; <label>:264:                                    ; preds = %251
  %265 = getelementptr inbounds i8, i8* %119, i64 -5, !dbg !4584
  %266 = bitcast i8* %265 to i16*, !dbg !4585
  %267 = load i16, i16* %266, align 1, !dbg !4585, !tbaa !674
  %268 = zext i16 %267 to i64, !dbg !4584
  br label %278, !dbg !4586

; <label>:269:                                    ; preds = %251
  %270 = getelementptr inbounds i8, i8* %119, i64 -9, !dbg !4587
  %271 = bitcast i8* %270 to i32*, !dbg !4588
  %272 = load i32, i32* %271, align 1, !dbg !4588, !tbaa !679
  %273 = zext i32 %272 to i64, !dbg !4587
  br label %278, !dbg !4589

; <label>:274:                                    ; preds = %251
  %275 = getelementptr inbounds i8, i8* %119, i64 -17, !dbg !4590
  %276 = bitcast i8* %275 to i64*, !dbg !4591
  %277 = load i64, i64* %276, align 1, !dbg !4591, !tbaa !117
  br label %278, !dbg !4592

; <label>:278:                                    ; preds = %251, %257, %260, %264, %269, %274
  %279 = phi i64 [ %277, %274 ], [ %273, %269 ], [ %268, %264 ], [ %263, %260 ], [ %259, %257 ], [ 0, %251 ], !dbg !4593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4594
  %280 = tail call i32 @raxRemove(%struct.rax* %253, i8* nonnull %119, i64 %279, i8** null) #6, !dbg !4595
  %281 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %121, i64 0, i32 1, !dbg !4598
  %282 = load %struct.rax*, %struct.rax** %281, align 8, !dbg !4598, !tbaa !155
  tail call void @raxFreeWithCallback(%struct.rax* %282, void (i8*)* bitcast (void (%struct.streamNACK*)* @streamFreeNACK to void (i8*)*)) #6, !dbg !4599
  %283 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %121, i64 0, i32 2, !dbg !4600
  %284 = load %struct.rax*, %struct.rax** %283, align 8, !dbg !4600, !tbaa !159
  tail call void @raxFreeWithCallback(%struct.rax* %284, void (i8*)* bitcast (void (%struct.streamConsumer*)* @streamFreeConsumer to void (i8*)*)) #6, !dbg !4601
  tail call void @zfree(i8* %120) #6, !dbg !4602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4603
  %285 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !4604, !tbaa !4605
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %285) #6, !dbg !4606
  %286 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4607, !tbaa !3317
  %287 = add nsw i64 %286, 1, !dbg !4607
  store i64 %287, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4607, !tbaa !3317
  %288 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4608, !tbaa !3187
  %289 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %288, i64 2, !dbg !4609
  %290 = load %struct.redisObject*, %struct.redisObject** %289, align 8, !dbg !4609, !tbaa !234
  %291 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4610
  %292 = load %struct.redisDb*, %struct.redisDb** %291, align 8, !dbg !4610, !tbaa !2421
  %293 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %292, i64 0, i32 5, !dbg !4611
  %294 = load i32, i32* %293, align 8, !dbg !4611, !tbaa !2426
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), %struct.redisObject* %290, i32 %294) #6, !dbg !4612
  br label %325, !dbg !4613

; <label>:295:                                    ; preds = %249
  %296 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4614, !tbaa !3512
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %296) #6, !dbg !4616
  br label %325

; <label>:297:                                    ; preds = %243, %246
  %298 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !4617
  %299 = icmp eq i32 %298, 0, !dbg !4617
  br i1 %299, label %300, label %319, !dbg !4618

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* %21, align 8, !dbg !4619, !tbaa !3181
  %302 = icmp eq i32 %301, 5, !dbg !4620
  br i1 %302, label %303, label %319, !dbg !4621

; <label>:303:                                    ; preds = %300
  %304 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4622, !tbaa !3187
  %305 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %304, i64 4, !dbg !4623
  %306 = load %struct.redisObject*, %struct.redisObject** %305, align 8, !dbg !4623, !tbaa !234
  %307 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %306, i64 0, i32 2, !dbg !4624
  %308 = load i8*, i8** %307, align 8, !dbg !4624, !tbaa !648
  %309 = tail call i64 @streamDelConsumer(%struct.streamCG* %121, i8* %308) #9, !dbg !4625
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %309) #6, !dbg !4627
  %310 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4628, !tbaa !3317
  %311 = add nsw i64 %310, 1, !dbg !4628
  store i64 %311, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4628, !tbaa !3317
  %312 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4629, !tbaa !3187
  %313 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %312, i64 2, !dbg !4630
  %314 = load %struct.redisObject*, %struct.redisObject** %313, align 8, !dbg !4630, !tbaa !234
  %315 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4631
  %316 = load %struct.redisDb*, %struct.redisDb** %315, align 8, !dbg !4631, !tbaa !2421
  %317 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %316, i64 0, i32 5, !dbg !4632
  %318 = load i32, i32* %317, align 8, !dbg !4632, !tbaa !2426
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), %struct.redisObject* %314, i32 %318) #6, !dbg !4633
  br label %325, !dbg !4634

; <label>:319:                                    ; preds = %297, %300
  %320 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !4635
  %321 = icmp eq i32 %320, 0, !dbg !4635
  br i1 %321, label %322, label %323, !dbg !4637

; <label>:322:                                    ; preds = %319
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %9) #6, !dbg !4638
  br label %325, !dbg !4640

; <label>:323:                                    ; preds = %319
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !4641
  br label %325

; <label>:324:                                    ; preds = %143
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #7, !dbg !4524
  br label %325

; <label>:325:                                    ; preds = %295, %278, %322, %323, %303, %206, %231, %242, %324, %45, %110, %65, %34
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #7, !dbg !4643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4643
  ret void, !dbg !4643
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
define dso_local void @xsetidCommand(%struct.client*) local_unnamed_addr #0 !dbg !4644 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamIterator, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4656
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4656, !tbaa !3187
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !4657
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !4657, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !4658, !tbaa !4659
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #6, !dbg !4660
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4662
  br i1 %12, label %80, label %13, !dbg !4664

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !4665
  %15 = icmp eq i32 %14, 0, !dbg !4665
  br i1 %15, label %16, label %80, !dbg !4666

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4667
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4667
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4667, !tbaa !648
  %20 = bitcast %struct.streamID* %2 to i8*, !dbg !4669
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4669
  %21 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4670, !tbaa !3187
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !4672
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !4672, !tbaa !234
  %24 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.streamID* nonnull %2, i64 0, i32 1) #6, !dbg !4679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4680
  %25 = icmp eq i32 %24, 0, !dbg !4681
  br i1 %25, label %26, label %79, !dbg !4682

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 1, !dbg !4683
  %28 = load i64, i64* %27, align 8, !dbg !4683, !tbaa !952
  %29 = icmp eq i64 %28, 0, !dbg !4684
  br i1 %29, label %66, label %30, !dbg !4685

; <label>:30:                                     ; preds = %26
  %31 = bitcast %struct.streamID* %3 to i8*, !dbg !4686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4686
  %32 = bitcast %struct.streamIterator* %4 to i8*, !dbg !4687
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4687
  %33 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 7, i64 0, !dbg !4695
  %34 = bitcast i64* %33 to <2 x i64>*, !dbg !4696
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 8, !dbg !4696, !tbaa !117
  %35 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 8, i64 0, !dbg !4697
  %36 = bitcast i64* %35 to <2 x i64>*, !dbg !4698
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %36, align 8, !dbg !4698, !tbaa !117
  %37 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 9, !dbg !4699
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 0, !dbg !4700
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !4700, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %37, %struct.rax* %39) #6, !dbg !4701
  %40 = call i32 @raxSeek(%struct.raxIterator* nonnull %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !4702
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 0, !dbg !4703
  store %struct.stream* %19, %struct.stream** %41, align 8, !dbg !4704, !tbaa !1354
  %42 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 10, !dbg !4705
  %43 = bitcast i8** %42 to <2 x i8*>*, !dbg !4706
  store <2 x i8*> zeroinitializer, <2 x i8*>* %43, align 8, !dbg !4706, !tbaa !234
  %44 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 6, !dbg !4707
  store i32 1, i32* %44, align 4, !dbg !4708, !tbaa !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4709
  %45 = bitcast i64* %5 to i8*, !dbg !4710
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4710
  %46 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %3, i64* nonnull %5) #9, !dbg !4713
  call void @raxStop(%struct.raxIterator* nonnull %37) #6, !dbg !4716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4717
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !4722
  %48 = load i64, i64* %47, align 8, !dbg !4722, !tbaa !178
  %49 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !4723
  %50 = load i64, i64* %49, align 8, !dbg !4723, !tbaa !178
  %51 = icmp ugt i64 %48, %50, !dbg !4724
  br i1 %51, label %61, label %52, !dbg !4725

; <label>:52:                                     ; preds = %30
  %53 = icmp ult i64 %48, %50, !dbg !4726
  br i1 %53, label %54, label %55, !dbg !4727

; <label>:54:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4728
  br label %64, !dbg !4729

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !4730
  %57 = load i64, i64* %56, align 8, !dbg !4730, !tbaa !188
  %58 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !4731
  %59 = load i64, i64* %58, align 8, !dbg !4731, !tbaa !188
  %60 = icmp ugt i64 %57, %59, !dbg !4732
  br i1 %60, label %61, label %62, !dbg !4733

; <label>:61:                                     ; preds = %30, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4728
  br label %65, !dbg !4729

; <label>:62:                                     ; preds = %55
  %63 = icmp ult i64 %57, %59, !dbg !4734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4728
  br i1 %63, label %64, label %65, !dbg !4729

; <label>:64:                                     ; preds = %54, %62
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !4735
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4737
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4737
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4737
  br label %79

; <label>:65:                                     ; preds = %61, %62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4737
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4737
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4737
  br label %66

; <label>:66:                                     ; preds = %65, %26
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 2, !dbg !4738
  %68 = bitcast %struct.streamID* %67 to i8*, !dbg !4739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %68, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !4739, !tbaa.struct !1603
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4740, !tbaa !4512
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %69) #6, !dbg !4741
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4742, !tbaa !3317
  %71 = add nsw i64 %70, 1, !dbg !4742
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4742, !tbaa !3317
  %72 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4743, !tbaa !3187
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !4744
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !4744, !tbaa !234
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4745
  %76 = load %struct.redisDb*, %struct.redisDb** %75, align 8, !dbg !4745, !tbaa !2421
  %77 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %76, i64 0, i32 5, !dbg !4746
  %78 = load i32, i32* %77, align 8, !dbg !4746, !tbaa !2426
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), %struct.redisObject* %74, i32 %78) #6, !dbg !4747
  br label %79, !dbg !4748

; <label>:79:                                     ; preds = %64, %16, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4748
  br label %80

; <label>:80:                                     ; preds = %1, %13, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4748
  ret void, !dbg !4748
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xackCommand(%struct.client*) local_unnamed_addr #0 !dbg !4749 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca [16 x i8], align 16
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4766
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !4766, !tbaa !2421
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4767
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4767, !tbaa !3187
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !4768
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !4768, !tbaa !234
  %11 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %6, %struct.redisObject* %10) #6, !dbg !4769
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4771
  br i1 %12, label %76, label %13, !dbg !4773

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !4774
  %15 = icmp eq i32 %14, 0, !dbg !4774
  br i1 %15, label %16, label %119, !dbg !4777

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4778
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4778
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4778, !tbaa !648
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4779, !tbaa !3187
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4780
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4780, !tbaa !234
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !4781
  %24 = load i8*, i8** %23, align 8, !dbg !4781, !tbaa !648
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 3, !dbg !4785
  %26 = load %struct.rax*, %struct.rax** %25, align 8, !dbg !4785, !tbaa !123
  %27 = icmp eq %struct.rax* %26, null, !dbg !4786
  br i1 %27, label %28, label %29, !dbg !4787

; <label>:28:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4788
  br label %76, !dbg !4789

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !4793
  %31 = load i8, i8* %30, align 1, !dbg !4793, !tbaa !663
  %32 = trunc i8 %31 to i3, !dbg !4795
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !4795

; <label>:33:                                     ; preds = %29
  %34 = lshr i8 %31, 3, !dbg !4796
  %35 = zext i8 %34 to i64, !dbg !4796
  br label %54, !dbg !4797

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !4798
  %38 = load i8, i8* %37, align 1, !dbg !4799, !tbaa !663
  %39 = zext i8 %38 to i64, !dbg !4798
  br label %54, !dbg !4800

; <label>:40:                                     ; preds = %29
  %41 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !4801
  %42 = bitcast i8* %41 to i16*, !dbg !4802
  %43 = load i16, i16* %42, align 1, !dbg !4802, !tbaa !674
  %44 = zext i16 %43 to i64, !dbg !4801
  br label %54, !dbg !4803

; <label>:45:                                     ; preds = %29
  %46 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !4804
  %47 = bitcast i8* %46 to i32*, !dbg !4805
  %48 = load i32, i32* %47, align 1, !dbg !4805, !tbaa !679
  %49 = zext i32 %48 to i64, !dbg !4804
  br label %54, !dbg !4806

; <label>:50:                                     ; preds = %29
  %51 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !4807
  %52 = bitcast i8* %51 to i64*, !dbg !4808
  %53 = load i64, i64* %52, align 1, !dbg !4808, !tbaa !117
  br label %54, !dbg !4809

; <label>:54:                                     ; preds = %29, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %29 ], !dbg !4810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4811
  %56 = tail call i8* @raxFind(%struct.rax* nonnull %26, i8* nonnull %24, i64 %55) #6, !dbg !4812
  %57 = bitcast i8* %56 to %struct.streamCG*, !dbg !4812
  %58 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4814, !tbaa !234
  %59 = icmp eq %struct.streamCG* %58, %57, !dbg !4815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4788
  %60 = icmp eq i8* %56, null, !dbg !4816
  %61 = or i1 %59, %60, !dbg !4816
  br i1 %61, label %76, label %62, !dbg !4789

; <label>:62:                                     ; preds = %54
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4819
  %64 = load i32, i32* %63, align 8, !dbg !4819, !tbaa !3181
  %65 = icmp sgt i32 %64, 3, !dbg !4820
  br i1 %65, label %66, label %116, !dbg !4821

; <label>:66:                                     ; preds = %62
  %67 = bitcast %struct.streamID* %3 to i8*
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %69 = bitcast [2 x i64]* %2 to i8*
  %70 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %72 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1
  %73 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %74 = getelementptr inbounds i8, i8* %56, i64 16
  %75 = bitcast i8* %74 to %struct.rax**
  br label %78, !dbg !4821

; <label>:76:                                     ; preds = %1, %28, %54
  %77 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4822, !tbaa !3512
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %77) #6, !dbg !4824
  br label %119, !dbg !4825

; <label>:78:                                     ; preds = %66, %109
  %79 = phi i64 [ 3, %66 ], [ %111, %109 ]
  %80 = phi i32 [ 0, %66 ], [ %110, %109 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %67) #7, !dbg !4826
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #7, !dbg !4827
  %81 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4829, !tbaa !3187
  %82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %81, i64 %79, !dbg !4831
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !4831, !tbaa !234
  %84 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %83, %struct.streamID* nonnull %3, i64 0, i32 1) #6, !dbg !4838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4839
  %85 = icmp eq i32 %84, 0, !dbg !4840
  br i1 %85, label %86, label %115, !dbg !4841

; <label>:86:                                     ; preds = %78
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #7, !dbg !4844
  %87 = load i64, i64* %70, align 8, !dbg !4845, !tbaa !178
  %88 = call i64 @intrev64(i64 %87) #6, !dbg !4845
  store i64 %88, i64* %71, align 16, !dbg !4846, !tbaa !117
  %89 = load i64, i64* %72, align 8, !dbg !4847, !tbaa !188
  %90 = call i64 @intrev64(i64 %89) #6, !dbg !4847
  store i64 %90, i64* %73, align 8, !dbg !4848, !tbaa !117
  %91 = call i8* @memcpy(i8* nonnull %68, i8* nonnull %69, i64 16) #6, !dbg !4849
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #7, !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4850
  %92 = load %struct.rax*, %struct.rax** %75, align 8, !dbg !4851, !tbaa !155
  %93 = call i8* @raxFind(%struct.rax* %92, i8* nonnull %68, i64 16) #6, !dbg !4852
  %94 = bitcast i8* %93 to %struct.streamNACK*, !dbg !4852
  %95 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !4854, !tbaa !234
  %96 = icmp eq %struct.streamNACK* %95, %94, !dbg !4856
  br i1 %96, label %109, label %97, !dbg !4857

; <label>:97:                                     ; preds = %86
  %98 = load %struct.rax*, %struct.rax** %75, align 8, !dbg !4858, !tbaa !155
  %99 = call i32 @raxRemove(%struct.rax* %98, i8* nonnull %68, i64 16, i8** null) #6, !dbg !4860
  %100 = getelementptr inbounds i8, i8* %93, i64 16, !dbg !4861
  %101 = bitcast i8* %100 to %struct.streamConsumer**, !dbg !4861
  %102 = load %struct.streamConsumer*, %struct.streamConsumer** %101, align 8, !dbg !4861, !tbaa !2349
  %103 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %102, i64 0, i32 2, !dbg !4862
  %104 = load %struct.rax*, %struct.rax** %103, align 8, !dbg !4862, !tbaa !2664
  %105 = call i32 @raxRemove(%struct.rax* %104, i8* nonnull %68, i64 16, i8** null) #6, !dbg !4863
  call void @zfree(i8* %93) #6, !dbg !4866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4867
  %106 = add nsw i32 %80, 1, !dbg !4868
  %107 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4869, !tbaa !3317
  %108 = add nsw i64 %107, 1, !dbg !4869
  store i64 %108, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4869, !tbaa !3317
  br label %109, !dbg !4870

; <label>:109:                                    ; preds = %86, %97
  %110 = phi i32 [ %80, %86 ], [ %106, %97 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #7, !dbg !4871
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #7, !dbg !4871
  %111 = add nuw nsw i64 %79, 1, !dbg !4872
  %112 = load i32, i32* %63, align 8, !dbg !4819, !tbaa !3181
  %113 = sext i32 %112 to i64, !dbg !4820
  %114 = icmp slt i64 %111, %113, !dbg !4820
  br i1 %114, label %78, label %116, !dbg !4821, !llvm.loop !4873

; <label>:115:                                    ; preds = %78
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #7, !dbg !4871
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %67) #7, !dbg !4871
  br label %119

; <label>:116:                                    ; preds = %109, %62
  %117 = phi i32 [ 0, %62 ], [ %110, %109 ], !dbg !4818
  %118 = sext i32 %117 to i64, !dbg !4875
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %118) #6, !dbg !4876
  br label %119, !dbg !4877

; <label>:119:                                    ; preds = %115, %116, %13, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4877
  ret void, !dbg !4877
}

; Function Attrs: noredzone nounwind
define dso_local void @xpendingCommand(%struct.client*) local_unnamed_addr #0 !dbg !4878 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.raxIterator, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.raxIterator, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4923
  %11 = load i32, i32* %10, align 8, !dbg !4923, !tbaa !3181
  %12 = icmp eq i32 %11, 3, !dbg !4924
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4925
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4925, !tbaa !3187
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !4926
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4926, !tbaa !234
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4928
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !4928, !tbaa !234
  %19 = icmp eq i32 %11, 7, !dbg !4930
  br i1 %19, label %20, label %26, !dbg !4931

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 6, !dbg !4932
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4932, !tbaa !234
  %23 = bitcast %struct.streamID* %3 to i8*, !dbg !4934
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #7, !dbg !4934
  %24 = bitcast %struct.streamID* %4 to i8*, !dbg !4934
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !4934
  %25 = bitcast i64* %5 to i8*, !dbg !4935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #7, !dbg !4935
  br label %34, !dbg !4936

; <label>:26:                                     ; preds = %1
  %27 = bitcast %struct.streamID* %3 to i8*, !dbg !4934
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4934
  %28 = bitcast %struct.streamID* %4 to i8*, !dbg !4934
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !4934
  %29 = bitcast i64* %5 to i8*, !dbg !4935
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !4935
  switch i32 %11, label %30 [
    i32 3, label %32
    i32 6, label %32
  ], !dbg !4937

; <label>:30:                                     ; preds = %26
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4939, !tbaa !3454
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %31) #6, !dbg !4941
  br label %342, !dbg !4942

; <label>:32:                                     ; preds = %26, %26
  %33 = icmp sgt i32 %11, 5, !dbg !4943
  br i1 %33, label %34, label %63, !dbg !4936

; <label>:34:                                     ; preds = %20, %32
  %35 = phi %struct.redisObject* [ %22, %20 ], [ null, %32 ]
  %36 = phi i8* [ %23, %20 ], [ %27, %32 ]
  %37 = phi i8* [ %24, %20 ], [ %28, %32 ]
  %38 = phi i8* [ %25, %20 ], [ %29, %32 ]
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 5, !dbg !4945
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !4945, !tbaa !234
  %41 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %40, i64* nonnull %5, i8* null) #6, !dbg !4949
  %42 = icmp eq i32 %41, -1, !dbg !4950
  br i1 %42, label %342, label %43, !dbg !4951

; <label>:43:                                     ; preds = %34
  %44 = load i64, i64* %5, align 8, !dbg !4952, !tbaa !265
  %45 = icmp slt i64 %44, 0, !dbg !4954
  br i1 %45, label %46, label %47, !dbg !4955

; <label>:46:                                     ; preds = %43
  store i64 0, i64* %5, align 8, !dbg !4956, !tbaa !265
  br label %47, !dbg !4957

; <label>:47:                                     ; preds = %46, %43
  %48 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4958, !tbaa !3187
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 3, !dbg !4960
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !4960, !tbaa !234
  %51 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, %struct.streamID* nonnull %3, i64 0, i32 0) #6, !dbg !4967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4968
  %52 = icmp eq i32 %51, -1, !dbg !4969
  br i1 %52, label %342, label %53, !dbg !4970

; <label>:53:                                     ; preds = %47
  %54 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4971, !tbaa !3187
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 4, !dbg !4973
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !4973, !tbaa !234
  %57 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %56, %struct.streamID* nonnull %4, i64 -1, i32 0) #6, !dbg !4980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4981
  %58 = icmp eq i32 %57, -1, !dbg !4982
  br i1 %58, label %342, label %59, !dbg !4983

; <label>:59:                                     ; preds = %53
  %60 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4984, !tbaa !3187
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 1
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !4985, !tbaa !234
  br label %63, !dbg !4983

; <label>:63:                                     ; preds = %59, %32
  %64 = phi %struct.redisObject* [ %62, %59 ], [ %16, %32 ], !dbg !4985
  %65 = phi %struct.redisObject* [ %35, %59 ], [ null, %32 ]
  %66 = phi i8* [ %36, %59 ], [ %27, %32 ]
  %67 = phi i8* [ %37, %59 ], [ %28, %32 ]
  %68 = phi i8* [ %38, %59 ], [ %29, %32 ]
  %69 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4986
  %70 = load %struct.redisDb*, %struct.redisDb** %69, align 8, !dbg !4986, !tbaa !2421
  %71 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %70, %struct.redisObject* %64) #6, !dbg !4987
  %72 = icmp eq %struct.redisObject* %71, null, !dbg !4989
  br i1 %72, label %73, label %75, !dbg !4989

; <label>:73:                                     ; preds = %63
  %74 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4991
  br label %121, !dbg !4989

; <label>:75:                                     ; preds = %63
  %76 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %71, i32 6) #6, !dbg !4994
  %77 = icmp eq i32 %76, 0, !dbg !4994
  br i1 %77, label %78, label %342, !dbg !4995

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %71, i64 0, i32 2, !dbg !4996
  %80 = bitcast i8** %79 to %struct.stream**, !dbg !4996
  %81 = load %struct.stream*, %struct.stream** %80, align 8, !dbg !4996, !tbaa !648
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4997
  %83 = load i8*, i8** %82, align 8, !dbg !4997, !tbaa !648
  %84 = getelementptr inbounds %struct.stream, %struct.stream* %81, i64 0, i32 3, !dbg !5001
  %85 = load %struct.rax*, %struct.rax** %84, align 8, !dbg !5001, !tbaa !123
  %86 = icmp eq %struct.rax* %85, null, !dbg !5002
  br i1 %86, label %118, label %87, !dbg !5003

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %83, i64 -1, !dbg !5006
  %89 = load i8, i8* %88, align 1, !dbg !5006, !tbaa !663
  %90 = trunc i8 %89 to i3, !dbg !5008
  switch i3 %90, label %112 [
    i3 0, label %91
    i3 1, label %94
    i3 2, label %98
    i3 3, label %103
    i3 -4, label %108
  ], !dbg !5008

; <label>:91:                                     ; preds = %87
  %92 = lshr i8 %89, 3, !dbg !5009
  %93 = zext i8 %92 to i64, !dbg !5009
  br label %112, !dbg !5010

; <label>:94:                                     ; preds = %87
  %95 = getelementptr inbounds i8, i8* %83, i64 -3, !dbg !5011
  %96 = load i8, i8* %95, align 1, !dbg !5012, !tbaa !663
  %97 = zext i8 %96 to i64, !dbg !5011
  br label %112, !dbg !5013

; <label>:98:                                     ; preds = %87
  %99 = getelementptr inbounds i8, i8* %83, i64 -5, !dbg !5014
  %100 = bitcast i8* %99 to i16*, !dbg !5015
  %101 = load i16, i16* %100, align 1, !dbg !5015, !tbaa !674
  %102 = zext i16 %101 to i64, !dbg !5014
  br label %112, !dbg !5016

; <label>:103:                                    ; preds = %87
  %104 = getelementptr inbounds i8, i8* %83, i64 -9, !dbg !5017
  %105 = bitcast i8* %104 to i32*, !dbg !5018
  %106 = load i32, i32* %105, align 1, !dbg !5018, !tbaa !679
  %107 = zext i32 %106 to i64, !dbg !5017
  br label %112, !dbg !5019

; <label>:108:                                    ; preds = %87
  %109 = getelementptr inbounds i8, i8* %83, i64 -17, !dbg !5020
  %110 = bitcast i8* %109 to i64*, !dbg !5021
  %111 = load i64, i64* %110, align 1, !dbg !5021, !tbaa !117
  br label %112, !dbg !5022

; <label>:112:                                    ; preds = %108, %103, %98, %94, %91, %87
  %113 = phi i64 [ %111, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %94 ], [ %93, %91 ], [ 0, %87 ], !dbg !5023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5024
  %114 = call i8* @raxFind(%struct.rax* nonnull %85, i8* nonnull %83, i64 %113) #6, !dbg !5025
  %115 = bitcast i8* %114 to %struct.streamCG*, !dbg !5025
  %116 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5027, !tbaa !234
  %117 = icmp eq %struct.streamCG* %116, %115, !dbg !5028
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %78, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5029
  br label %121, !dbg !5031

; <label>:119:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5029
  %120 = icmp eq i8* %114, null, !dbg !5032
  br i1 %120, label %121, label %126, !dbg !5031

; <label>:121:                                    ; preds = %73, %118, %119
  %122 = phi i8** [ %74, %73 ], [ %82, %118 ], [ %82, %119 ], !dbg !4991
  %123 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !5033
  %124 = load i8*, i8** %123, align 8, !dbg !5033, !tbaa !648
  %125 = load i8*, i8** %122, align 8, !dbg !4991, !tbaa !648
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %124, i8* %125) #6, !dbg !5034
  br label %342, !dbg !5035

; <label>:126:                                    ; preds = %119
  br i1 %12, label %127, label %200, !dbg !5036

; <label>:127:                                    ; preds = %126
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 4) #6, !dbg !5037
  %128 = getelementptr inbounds i8, i8* %114, i64 16, !dbg !5038
  %129 = bitcast i8* %128 to %struct.rax**, !dbg !5038
  %130 = load %struct.rax*, %struct.rax** %129, align 8, !dbg !5038, !tbaa !155
  %131 = call i64 @raxSize(%struct.rax* %130) #6, !dbg !5039
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %131) #6, !dbg !5040
  %132 = load %struct.rax*, %struct.rax** %129, align 8, !dbg !5041, !tbaa !155
  %133 = call i64 @raxSize(%struct.rax* %132) #6, !dbg !5042
  %134 = icmp eq i64 %133, 0, !dbg !5043
  br i1 %134, label %135, label %139, !dbg !5044

; <label>:135:                                    ; preds = %127
  %136 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5045, !tbaa !5047
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %136) #6, !dbg !5048
  %137 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5049, !tbaa !5047
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %137) #6, !dbg !5050
  %138 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !5051, !tbaa !2861
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %138) #6, !dbg !5052
  br label %342, !dbg !5053

; <label>:139:                                    ; preds = %127
  %140 = bitcast %struct.raxIterator* %6 to i8*, !dbg !5054
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %140) #7, !dbg !5054
  %141 = load %struct.rax*, %struct.rax** %129, align 8, !dbg !5055, !tbaa !155
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %141) #6, !dbg !5057
  %142 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5058
  %143 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5059
  %144 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 2, !dbg !5060
  %145 = load i8*, i8** %144, align 8, !dbg !5060, !tbaa !694
  %146 = bitcast [2 x i64]* %2 to i8*, !dbg !5063
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %146) #7, !dbg !5063
  %147 = call i8* @memcpy(i8* nonnull %146, i8* %145, i64 16) #6, !dbg !5064
  %148 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !5065
  %149 = load i64, i64* %148, align 16, !dbg !5065, !tbaa !117
  %150 = call i64 @intrev64(i64 %149) #6, !dbg !5065
  %151 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !5066
  store i64 %150, i64* %151, align 8, !dbg !5067, !tbaa !178
  %152 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !5068
  %153 = load i64, i64* %152, align 8, !dbg !5068, !tbaa !117
  %154 = call i64 @intrev64(i64 %153) #6, !dbg !5068
  %155 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !5069
  store i64 %154, i64* %155, align 8, !dbg !5070, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %146) #7, !dbg !5071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5071
  %156 = call i8* @sdsempty() #6, !dbg !5075
  %157 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %150, i64 %154) #6, !dbg !5076
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %157) #6, !dbg !5078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5079
  %158 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5080
  %159 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5081
  %160 = load i8*, i8** %144, align 8, !dbg !5082, !tbaa !694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %146) #7, !dbg !5085
  %161 = call i8* @memcpy(i8* nonnull %146, i8* %160, i64 16) #6, !dbg !5086
  %162 = load i64, i64* %148, align 16, !dbg !5087, !tbaa !117
  %163 = call i64 @intrev64(i64 %162) #6, !dbg !5087
  %164 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5088
  store i64 %163, i64* %164, align 8, !dbg !5089, !tbaa !178
  %165 = load i64, i64* %152, align 8, !dbg !5090, !tbaa !117
  %166 = call i64 @intrev64(i64 %165) #6, !dbg !5090
  %167 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5091
  store i64 %166, i64* %167, align 8, !dbg !5092, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %146) #7, !dbg !5093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5093
  %168 = call i8* @sdsempty() #6, !dbg !5097
  %169 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %163, i64 %166) #6, !dbg !5098
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %169) #6, !dbg !5100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5101
  call void @raxStop(%struct.raxIterator* nonnull %6) #6, !dbg !5102
  %170 = getelementptr inbounds i8, i8* %114, i64 24, !dbg !5103
  %171 = bitcast i8* %170 to %struct.rax**, !dbg !5103
  %172 = load %struct.rax*, %struct.rax** %171, align 8, !dbg !5103, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %172) #6, !dbg !5104
  %173 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5105
  %174 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5106
  %175 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5109
  %176 = icmp eq i32 %175, 0, !dbg !5110
  br i1 %176, label %198, label %177, !dbg !5110

; <label>:177:                                    ; preds = %139
  %178 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 3
  %179 = bitcast i8** %178 to %struct.streamConsumer**
  %180 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 4
  br label %181, !dbg !5110

; <label>:181:                                    ; preds = %177, %194
  %182 = phi i64 [ 0, %177 ], [ %195, %194 ]
  %183 = load %struct.streamConsumer*, %struct.streamConsumer** %179, align 8, !dbg !5111, !tbaa !518
  %184 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %183, i64 0, i32 2, !dbg !5113
  %185 = load %struct.rax*, %struct.rax** %184, align 8, !dbg !5113, !tbaa !2664
  %186 = call i64 @raxSize(%struct.rax* %185) #6, !dbg !5115
  %187 = icmp eq i64 %186, 0, !dbg !5116
  br i1 %187, label %194, label %188, !dbg !5117, !llvm.loop !5118

; <label>:188:                                    ; preds = %181
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !5120
  %189 = load i8*, i8** %144, align 8, !dbg !5121, !tbaa !694
  %190 = load i64, i64* %180, align 8, !dbg !5122, !tbaa !692
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %189, i64 %190) #6, !dbg !5123
  %191 = load %struct.rax*, %struct.rax** %184, align 8, !dbg !5124, !tbaa !2664
  %192 = call i64 @raxSize(%struct.rax* %191) #6, !dbg !5125
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %192) #6, !dbg !5126
  %193 = add i64 %182, 1, !dbg !5127
  br label %194, !dbg !5119

; <label>:194:                                    ; preds = %181, %188
  %195 = phi i64 [ %193, %188 ], [ %182, %181 ], !dbg !5128
  %196 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5109
  %197 = icmp eq i32 %196, 0, !dbg !5110
  br i1 %197, label %198, label %181, !dbg !5110

; <label>:198:                                    ; preds = %194, %139
  %199 = phi i64 [ 0, %139 ], [ %195, %194 ], !dbg !5108
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %174, i64 %199) #6, !dbg !5129
  call void @raxStop(%struct.raxIterator* nonnull %6) #6, !dbg !5130
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %140) #7, !dbg !5131
  br label %342

; <label>:200:                                    ; preds = %126
  %201 = icmp eq %struct.redisObject* %65, null, !dbg !5132
  br i1 %201, label %243, label %202, !dbg !5132

; <label>:202:                                    ; preds = %200
  %203 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %65, i64 0, i32 2, !dbg !5133
  %204 = load i8*, i8** %203, align 8, !dbg !5133, !tbaa !648
  %205 = getelementptr inbounds i8, i8* %114, i64 24, !dbg !5138
  %206 = bitcast i8* %205 to %struct.rax**, !dbg !5138
  %207 = load %struct.rax*, %struct.rax** %206, align 8, !dbg !5138, !tbaa !159
  %208 = getelementptr inbounds i8, i8* %204, i64 -1, !dbg !5141
  %209 = load i8, i8* %208, align 1, !dbg !5141, !tbaa !663
  %210 = trunc i8 %209 to i3, !dbg !5143
  switch i3 %210, label %232 [
    i3 0, label %211
    i3 1, label %214
    i3 2, label %218
    i3 3, label %223
    i3 -4, label %228
  ], !dbg !5143

; <label>:211:                                    ; preds = %202
  %212 = lshr i8 %209, 3, !dbg !5144
  %213 = zext i8 %212 to i64, !dbg !5144
  br label %232, !dbg !5145

; <label>:214:                                    ; preds = %202
  %215 = getelementptr inbounds i8, i8* %204, i64 -3, !dbg !5146
  %216 = load i8, i8* %215, align 1, !dbg !5147, !tbaa !663
  %217 = zext i8 %216 to i64, !dbg !5146
  br label %232, !dbg !5148

; <label>:218:                                    ; preds = %202
  %219 = getelementptr inbounds i8, i8* %204, i64 -5, !dbg !5149
  %220 = bitcast i8* %219 to i16*, !dbg !5150
  %221 = load i16, i16* %220, align 1, !dbg !5150, !tbaa !674
  %222 = zext i16 %221 to i64, !dbg !5149
  br label %232, !dbg !5151

; <label>:223:                                    ; preds = %202
  %224 = getelementptr inbounds i8, i8* %204, i64 -9, !dbg !5152
  %225 = bitcast i8* %224 to i32*, !dbg !5153
  %226 = load i32, i32* %225, align 1, !dbg !5153, !tbaa !679
  %227 = zext i32 %226 to i64, !dbg !5152
  br label %232, !dbg !5154

; <label>:228:                                    ; preds = %202
  %229 = getelementptr inbounds i8, i8* %204, i64 -17, !dbg !5155
  %230 = bitcast i8* %229 to i64*, !dbg !5156
  %231 = load i64, i64* %230, align 1, !dbg !5156, !tbaa !117
  br label %232, !dbg !5157

; <label>:232:                                    ; preds = %228, %223, %218, %214, %211, %202
  %233 = phi i64 [ %231, %228 ], [ %227, %223 ], [ %222, %218 ], [ %217, %214 ], [ %213, %211 ], [ 0, %202 ], !dbg !5158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5159
  %234 = call i8* @raxFind(%struct.rax* %207, i8* nonnull %204, i64 %233) #6, !dbg !5160
  %235 = bitcast i8* %234 to %struct.streamConsumer*, !dbg !5160
  %236 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !5162, !tbaa !234
  %237 = icmp eq %struct.streamConsumer* %236, %235, !dbg !5163
  br i1 %237, label %242, label %238, !dbg !5164

; <label>:238:                                    ; preds = %232
  %239 = call i64 @mstime() #6, !dbg !5165
  %240 = bitcast i8* %234 to i64*, !dbg !5166
  store i64 %239, i64* %240, align 8, !dbg !5167, !tbaa !4146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5168
  %241 = icmp eq i8* %234, null, !dbg !5170
  br i1 %241, label %243, label %244, !dbg !5172

; <label>:242:                                    ; preds = %232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5168
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #6, !dbg !5173
  br label %342

; <label>:243:                                    ; preds = %200, %238
  br label %244, !dbg !5172

; <label>:244:                                    ; preds = %238, %243
  %245 = phi i8* [ %114, %243 ], [ %234, %238 ]
  %246 = getelementptr inbounds i8, i8* %245, i64 16, !dbg !5175
  %247 = bitcast i8* %246 to %struct.rax**, !dbg !5175
  %248 = load %struct.rax*, %struct.rax** %247, align 8, !dbg !5172, !tbaa !234
  %249 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !5177
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %249) #7, !dbg !5177
  %250 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !5179
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %250) #7, !dbg !5179
  %251 = bitcast %struct.raxIterator* %9 to i8*, !dbg !5181
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %251) #7, !dbg !5181
  %252 = call i64 @mstime() #6, !dbg !5182
  %253 = bitcast [2 x i64]* %2 to i8*, !dbg !5186
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5186
  %254 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !5187
  %255 = load i64, i64* %254, align 8, !dbg !5187, !tbaa !178
  %256 = call i64 @intrev64(i64 %255) #6, !dbg !5187
  %257 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !5188
  store i64 %256, i64* %257, align 16, !dbg !5189, !tbaa !117
  %258 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !5190
  %259 = load i64, i64* %258, align 8, !dbg !5190, !tbaa !188
  %260 = call i64 @intrev64(i64 %259) #6, !dbg !5190
  %261 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !5191
  store i64 %260, i64* %261, align 8, !dbg !5192, !tbaa !117
  %262 = call i8* @memcpy(i8* nonnull %249, i8* nonnull %253, i64 16) #6, !dbg !5193
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5194
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5197
  %263 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5198
  %264 = load i64, i64* %263, align 8, !dbg !5198, !tbaa !178
  %265 = call i64 @intrev64(i64 %264) #6, !dbg !5198
  store i64 %265, i64* %257, align 16, !dbg !5199, !tbaa !117
  %266 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5200
  %267 = load i64, i64* %266, align 8, !dbg !5200, !tbaa !188
  %268 = call i64 @intrev64(i64 %267) #6, !dbg !5200
  store i64 %268, i64* %261, align 8, !dbg !5201, !tbaa !117
  %269 = call i8* @memcpy(i8* nonnull %250, i8* nonnull %253, i64 16) #6, !dbg !5202
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5203
  call void @raxStart(%struct.raxIterator* nonnull %9, %struct.rax* %248) #6, !dbg !5205
  %270 = call i32 @raxSeek(%struct.raxIterator* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %249, i64 16) #6, !dbg !5206
  %271 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5207
  %272 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 2, !dbg !5210
  %273 = load i64, i64* %5, align 8, !dbg !5211, !tbaa !265
  %274 = icmp eq i64 %273, 0, !dbg !5211
  br i1 %274, label %340, label %275, !dbg !5212

; <label>:275:                                    ; preds = %244
  %276 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 4
  %277 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 3
  %278 = bitcast i8** %277 to %struct.streamNACK**
  br label %279, !dbg !5212

; <label>:279:                                    ; preds = %275, %329
  %280 = phi i64 [ 0, %275 ], [ %290, %329 ]
  %281 = call i32 @raxNext(%struct.raxIterator* nonnull %9) #6, !dbg !5213
  %282 = icmp eq i32 %281, 0, !dbg !5213
  br i1 %282, label %340, label %283, !dbg !5214

; <label>:283:                                    ; preds = %279
  %284 = load i8*, i8** %272, align 8, !dbg !5210, !tbaa !694
  %285 = load i64, i64* %276, align 8, !dbg !5215, !tbaa !692
  %286 = call i32 @memcmp(i8* %284, i8* nonnull %250, i64 %285) #6, !dbg !5216
  %287 = icmp slt i32 %286, 1, !dbg !5217
  br i1 %287, label %288, label %340, !dbg !5218

; <label>:288:                                    ; preds = %283
  %289 = load %struct.streamNACK*, %struct.streamNACK** %278, align 8, !dbg !5219, !tbaa !518
  %290 = add i64 %280, 1, !dbg !5221
  %291 = load i64, i64* %5, align 8, !dbg !5222, !tbaa !265
  %292 = add nsw i64 %291, -1, !dbg !5222
  store i64 %292, i64* %5, align 8, !dbg !5222, !tbaa !265
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #6, !dbg !5223
  %293 = load i8*, i8** %272, align 8, !dbg !5224, !tbaa !694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5228
  %294 = call i8* @memcpy(i8* nonnull %253, i8* %293, i64 16) #6, !dbg !5229
  %295 = load i64, i64* %257, align 16, !dbg !5230, !tbaa !117
  %296 = call i64 @intrev64(i64 %295) #6, !dbg !5230
  %297 = load i64, i64* %261, align 8, !dbg !5231, !tbaa !117
  %298 = call i64 @intrev64(i64 %297) #6, !dbg !5231
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %253) #7, !dbg !5232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5232
  %299 = call i8* @sdsempty() #6, !dbg !5236
  %300 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %296, i64 %298) #6, !dbg !5237
  call void @addReplyBulkSds(%struct.client* %0, i8* %300) #6, !dbg !5239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5240
  %301 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 2, !dbg !5241
  %302 = load %struct.streamConsumer*, %struct.streamConsumer** %301, align 8, !dbg !5241, !tbaa !2349
  %303 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %302, i64 0, i32 1, !dbg !5242
  %304 = load i8*, i8** %303, align 8, !dbg !5242, !tbaa !2352
  %305 = getelementptr inbounds i8, i8* %304, i64 -1, !dbg !5245
  %306 = load i8, i8* %305, align 1, !dbg !5245, !tbaa !663
  %307 = trunc i8 %306 to i3, !dbg !5247
  switch i3 %307, label %329 [
    i3 0, label %308
    i3 1, label %311
    i3 2, label %315
    i3 3, label %320
    i3 -4, label %325
  ], !dbg !5247

; <label>:308:                                    ; preds = %288
  %309 = lshr i8 %306, 3, !dbg !5248
  %310 = zext i8 %309 to i64, !dbg !5248
  br label %329, !dbg !5249

; <label>:311:                                    ; preds = %288
  %312 = getelementptr inbounds i8, i8* %304, i64 -3, !dbg !5250
  %313 = load i8, i8* %312, align 1, !dbg !5251, !tbaa !663
  %314 = zext i8 %313 to i64, !dbg !5250
  br label %329, !dbg !5252

; <label>:315:                                    ; preds = %288
  %316 = getelementptr inbounds i8, i8* %304, i64 -5, !dbg !5253
  %317 = bitcast i8* %316 to i16*, !dbg !5254
  %318 = load i16, i16* %317, align 1, !dbg !5254, !tbaa !674
  %319 = zext i16 %318 to i64, !dbg !5253
  br label %329, !dbg !5255

; <label>:320:                                    ; preds = %288
  %321 = getelementptr inbounds i8, i8* %304, i64 -9, !dbg !5256
  %322 = bitcast i8* %321 to i32*, !dbg !5257
  %323 = load i32, i32* %322, align 1, !dbg !5257, !tbaa !679
  %324 = zext i32 %323 to i64, !dbg !5256
  br label %329, !dbg !5258

; <label>:325:                                    ; preds = %288
  %326 = getelementptr inbounds i8, i8* %304, i64 -17, !dbg !5259
  %327 = bitcast i8* %326 to i64*, !dbg !5260
  %328 = load i64, i64* %327, align 1, !dbg !5260, !tbaa !117
  br label %329, !dbg !5261

; <label>:329:                                    ; preds = %288, %308, %311, %315, %320, %325
  %330 = phi i64 [ %328, %325 ], [ %324, %320 ], [ %319, %315 ], [ %314, %311 ], [ %310, %308 ], [ 0, %288 ], !dbg !5262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5263
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %304, i64 %330) #6, !dbg !5264
  %331 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 0, !dbg !5265
  %332 = load i64, i64* %331, align 8, !dbg !5265, !tbaa !2387
  %333 = sub nsw i64 %252, %332, !dbg !5266
  %334 = icmp sgt i64 %333, 0, !dbg !5268
  %335 = select i1 %334, i64 %333, i64 0, !dbg !5268
  call void @addReplyLongLong(%struct.client* %0, i64 %335) #6, !dbg !5269
  %336 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %289, i64 0, i32 1, !dbg !5270
  %337 = load i64, i64* %336, align 8, !dbg !5270, !tbaa !2395
  call void @addReplyLongLong(%struct.client* %0, i64 %337) #6, !dbg !5271
  %338 = load i64, i64* %5, align 8, !dbg !5211, !tbaa !265
  %339 = icmp eq i64 %338, 0, !dbg !5211
  br i1 %339, label %340, label %279, !dbg !5212, !llvm.loop !5272

; <label>:340:                                    ; preds = %283, %329, %279, %244
  %341 = phi i64 [ 0, %244 ], [ %280, %279 ], [ %290, %329 ], [ %280, %283 ], !dbg !5274
  call void @raxStop(%struct.raxIterator* nonnull %9) #6, !dbg !5275
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %271, i64 %341) #6, !dbg !5276
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %251) #7, !dbg !5277
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %250) #7, !dbg !5277
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %249) #7, !dbg !5277
  br label %342

; <label>:342:                                    ; preds = %121, %75, %242, %340, %135, %198, %53, %47, %34, %30
  %343 = phi i8* [ %68, %121 ], [ %68, %75 ], [ %68, %242 ], [ %68, %340 ], [ %68, %135 ], [ %68, %198 ], [ %38, %53 ], [ %38, %47 ], [ %38, %34 ], [ %29, %30 ]
  %344 = phi i8* [ %67, %121 ], [ %67, %75 ], [ %67, %242 ], [ %67, %340 ], [ %67, %135 ], [ %67, %198 ], [ %37, %53 ], [ %37, %47 ], [ %37, %34 ], [ %28, %30 ]
  %345 = phi i8* [ %66, %121 ], [ %66, %75 ], [ %66, %242 ], [ %66, %340 ], [ %66, %135 ], [ %66, %198 ], [ %36, %53 ], [ %36, %47 ], [ %36, %34 ], [ %27, %30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %343) #7, !dbg !5278
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %344) #7, !dbg !5278
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %345) #7, !dbg !5278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5278
  ret void, !dbg !5278
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xclaimCommand(%struct.client*) local_unnamed_addr #0 !dbg !5279 {
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
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5331
  %14 = load %struct.redisDb*, %struct.redisDb** %13, align 8, !dbg !5331, !tbaa !2421
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5332
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5332, !tbaa !3187
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !5333
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5333, !tbaa !234
  %19 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %14, %struct.redisObject* %18) #6, !dbg !5334
  %20 = bitcast i64* %3 to i8*, !dbg !5336
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7, !dbg !5336
  %21 = bitcast i64* %4 to i8*, !dbg !5337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !5337
  store i64 -1, i64* %4, align 8, !dbg !5338, !tbaa !265
  %22 = bitcast i64* %5 to i8*, !dbg !5339
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !5339
  store i64 -1, i64* %5, align 8, !dbg !5340, !tbaa !265
  %23 = icmp eq %struct.redisObject* %19, null, !dbg !5343
  br i1 %23, label %24, label %26, !dbg !5345

; <label>:24:                                     ; preds = %1
  %25 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5346, !tbaa !3187
  br label %76, !dbg !5348

; <label>:26:                                     ; preds = %1
  %27 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %19, i32 6) #6, !dbg !5350
  %28 = icmp eq i32 %27, 0, !dbg !5350
  br i1 %28, label %29, label %378, !dbg !5353

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !5354
  %31 = bitcast i8** %30 to %struct.stream**, !dbg !5354
  %32 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5354, !tbaa !648
  %33 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5355, !tbaa !3187
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 2, !dbg !5356
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !5356, !tbaa !234
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !5357
  %37 = load i8*, i8** %36, align 8, !dbg !5357, !tbaa !648
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %32, i64 0, i32 3, !dbg !5361
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !5361, !tbaa !123
  %40 = icmp eq %struct.rax* %39, null, !dbg !5362
  br i1 %40, label %41, label %42, !dbg !5363

; <label>:41:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5364
  br label %76, !dbg !5348

; <label>:42:                                     ; preds = %29
  %43 = getelementptr inbounds i8, i8* %37, i64 -1, !dbg !5367
  %44 = load i8, i8* %43, align 1, !dbg !5367, !tbaa !663
  %45 = trunc i8 %44 to i3, !dbg !5369
  switch i3 %45, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !5369

; <label>:46:                                     ; preds = %42
  %47 = lshr i8 %44, 3, !dbg !5370
  %48 = zext i8 %47 to i64, !dbg !5370
  br label %67, !dbg !5371

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !5372
  %51 = load i8, i8* %50, align 1, !dbg !5373, !tbaa !663
  %52 = zext i8 %51 to i64, !dbg !5372
  br label %67, !dbg !5374

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !5375
  %55 = bitcast i8* %54 to i16*, !dbg !5376
  %56 = load i16, i16* %55, align 1, !dbg !5376, !tbaa !674
  %57 = zext i16 %56 to i64, !dbg !5375
  br label %67, !dbg !5377

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !5378
  %60 = bitcast i8* %59 to i32*, !dbg !5379
  %61 = load i32, i32* %60, align 1, !dbg !5379, !tbaa !679
  %62 = zext i32 %61 to i64, !dbg !5378
  br label %67, !dbg !5380

; <label>:63:                                     ; preds = %42
  %64 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !5381
  %65 = bitcast i8* %64 to i64*, !dbg !5382
  %66 = load i64, i64* %65, align 1, !dbg !5382, !tbaa !117
  br label %67, !dbg !5383

; <label>:67:                                     ; preds = %42, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %42 ], !dbg !5384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5385
  %69 = tail call i8* @raxFind(%struct.rax* nonnull %39, i8* nonnull %37, i64 %68) #6, !dbg !5386
  %70 = bitcast i8* %69 to %struct.streamCG*, !dbg !5386
  %71 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5388, !tbaa !234
  %72 = icmp eq %struct.streamCG* %71, %70, !dbg !5389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5364
  %73 = icmp eq i8* %69, null, !dbg !5390
  %74 = or i1 %72, %73, !dbg !5390
  %75 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5346, !tbaa !3187
  br i1 %74, label %76, label %86, !dbg !5348

; <label>:76:                                     ; preds = %41, %24, %67
  %77 = phi %struct.redisObject** [ %25, %24 ], [ %75, %67 ], [ %33, %41 ]
  %78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %77, i64 1, !dbg !5391
  %79 = load %struct.redisObject*, %struct.redisObject** %78, align 8, !dbg !5391, !tbaa !234
  %80 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %79, i64 0, i32 2, !dbg !5393
  %81 = load i8*, i8** %80, align 8, !dbg !5393, !tbaa !648
  %82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %77, i64 2, !dbg !5394
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !5394, !tbaa !234
  %84 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %83, i64 0, i32 2, !dbg !5395
  %85 = load i8*, i8** %84, align 8, !dbg !5395, !tbaa !648
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %81, i8* %85) #6, !dbg !5396
  br label %378, !dbg !5397

; <label>:86:                                     ; preds = %67
  %87 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 4, !dbg !5398
  %88 = load %struct.redisObject*, %struct.redisObject** %87, align 8, !dbg !5398, !tbaa !234
  %89 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %88, i64* nonnull %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !5400
  %90 = icmp eq i32 %89, 0, !dbg !5401
  br i1 %90, label %91, label %378, !dbg !5402

; <label>:91:                                     ; preds = %86
  %92 = load i64, i64* %3, align 8, !dbg !5403, !tbaa !265
  %93 = icmp slt i64 %92, 0, !dbg !5405
  br i1 %93, label %94, label %95, !dbg !5406

; <label>:94:                                     ; preds = %91
  store i64 0, i64* %3, align 8, !dbg !5407, !tbaa !265
  br label %95, !dbg !5408

; <label>:95:                                     ; preds = %94, %91
  %96 = bitcast %struct.streamID* %6 to i8*, !dbg !5410
  %97 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5411
  %98 = load i32, i32* %97, align 8, !dbg !5411, !tbaa !3181
  %99 = icmp sgt i32 %98, 5, !dbg !5412
  br i1 %99, label %100, label %116, !dbg !5413

; <label>:100:                                    ; preds = %95, %108
  %101 = phi i64 [ %109, %108 ], [ 5, %95 ]
  %102 = phi i32 [ %110, %108 ], [ 5, %95 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %96) #7, !dbg !5410
  %103 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5414, !tbaa !3187
  %104 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %103, i64 %101, !dbg !5416
  %105 = load %struct.redisObject*, %struct.redisObject** %104, align 8, !dbg !5416, !tbaa !234
  %106 = call i32 @streamGenericParseIDOrReply(%struct.client* null, %struct.redisObject* %105, %struct.streamID* nonnull %6, i64 0, i32 1) #6, !dbg !5423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5424
  %107 = icmp eq i32 %106, 0, !dbg !5425
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %96) #7, !dbg !5426
  br i1 %107, label %108, label %114

; <label>:108:                                    ; preds = %100
  %109 = add nuw nsw i64 %101, 1, !dbg !5427
  %110 = add nuw nsw i32 %102, 1, !dbg !5427
  %111 = load i32, i32* %97, align 8, !dbg !5411, !tbaa !3181
  %112 = sext i32 %111 to i64, !dbg !5412
  %113 = icmp slt i64 %109, %112, !dbg !5412
  br i1 %113, label %100, label %116, !dbg !5413, !llvm.loop !5428

; <label>:114:                                    ; preds = %100
  %115 = trunc i64 %101 to i32
  br label %116, !dbg !5430

; <label>:116:                                    ; preds = %108, %114, %95
  %117 = phi i32 [ 5, %95 ], [ %115, %114 ], [ %110, %108 ], !dbg !5431
  %118 = call i64 @mstime() #6, !dbg !5430
  %119 = bitcast %struct.streamID* %7 to i8*, !dbg !5434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %119) #7, !dbg !5434
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %119, i8 0, i64 16, i1 false), !dbg !5435
  %120 = load i32, i32* %97, align 8, !dbg !5437, !tbaa !3181
  %121 = icmp slt i32 %117, %120, !dbg !5438
  br i1 %121, label %125, label %122, !dbg !5439

; <label>:122:                                    ; preds = %116
  %123 = bitcast i8* %69 to i64*, !dbg !5443
  %124 = load i64, i64* %123, align 8, !dbg !5443, !tbaa !178
  br label %200, !dbg !5444

; <label>:125:                                    ; preds = %116, %187
  %126 = phi i32 [ %192, %187 ], [ %120, %116 ]
  %127 = phi i32 [ %190, %187 ], [ 0, %116 ]
  %128 = phi i32 [ %189, %187 ], [ 0, %116 ]
  %129 = phi i32 [ %191, %187 ], [ %117, %116 ]
  %130 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5445, !tbaa !3187
  %131 = sext i32 %129 to i64, !dbg !5446
  %132 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %131, !dbg !5446
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !5446, !tbaa !234
  %134 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %133, i64 0, i32 2, !dbg !5447
  %135 = load i8*, i8** %134, align 8, !dbg !5447, !tbaa !648
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5449
  %137 = icmp eq i32 %136, 0, !dbg !5449
  br i1 %137, label %187, label %138, !dbg !5451

; <label>:138:                                    ; preds = %125
  %139 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !5452
  %140 = icmp eq i32 %139, 0, !dbg !5452
  br i1 %140, label %187, label %141, !dbg !5454

; <label>:141:                                    ; preds = %138
  %142 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !5455
  %143 = icmp eq i32 %142, 0, !dbg !5455
  %144 = add i32 %129, 1, !dbg !5457
  %145 = icmp ne i32 %126, %144, !dbg !5457
  %146 = and i1 %145, %143, !dbg !5458
  br i1 %146, label %147, label %156, !dbg !5458

; <label>:147:                                    ; preds = %141
  %148 = sext i32 %144 to i64, !dbg !5459
  %149 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %148, !dbg !5459
  %150 = load %struct.redisObject*, %struct.redisObject** %149, align 8, !dbg !5459, !tbaa !234
  %151 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %150, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !5462
  %152 = icmp eq i32 %151, 0, !dbg !5463
  br i1 %152, label %153, label %377, !dbg !5464

; <label>:153:                                    ; preds = %147
  %154 = load i64, i64* %5, align 8, !dbg !5465, !tbaa !265
  %155 = sub nsw i64 %118, %154, !dbg !5466
  store i64 %155, i64* %5, align 8, !dbg !5467, !tbaa !265
  br label %187, !dbg !5468

; <label>:156:                                    ; preds = %141
  %157 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5469
  %158 = icmp eq i32 %157, 0, !dbg !5469
  %159 = and i1 %145, %158, !dbg !5471
  br i1 %159, label %160, label %166, !dbg !5471

; <label>:160:                                    ; preds = %156
  %161 = sext i32 %144 to i64, !dbg !5472
  %162 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %161, !dbg !5472
  %163 = load %struct.redisObject*, %struct.redisObject** %162, align 8, !dbg !5472, !tbaa !234
  %164 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %163, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !5475
  %165 = icmp eq i32 %164, 0, !dbg !5476
  br i1 %165, label %187, label %377, !dbg !5477

; <label>:166:                                    ; preds = %156
  %167 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !5478
  %168 = icmp eq i32 %167, 0, !dbg !5478
  %169 = and i1 %145, %168, !dbg !5480
  br i1 %169, label %170, label %176, !dbg !5480

; <label>:170:                                    ; preds = %166
  %171 = sext i32 %144 to i64, !dbg !5481
  %172 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %171, !dbg !5481
  %173 = load %struct.redisObject*, %struct.redisObject** %172, align 8, !dbg !5481, !tbaa !234
  %174 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %173, i64* nonnull %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !5484
  %175 = icmp eq i32 %174, 0, !dbg !5485
  br i1 %175, label %187, label %377, !dbg !5486

; <label>:176:                                    ; preds = %166
  %177 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !5487
  %178 = icmp eq i32 %177, 0, !dbg !5487
  %179 = and i1 %145, %178, !dbg !5489
  br i1 %179, label %180, label %186, !dbg !5489

; <label>:180:                                    ; preds = %176
  %181 = sext i32 %144 to i64, !dbg !5490
  %182 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %181, !dbg !5490
  %183 = load %struct.redisObject*, %struct.redisObject** %182, align 8, !dbg !5490, !tbaa !234
  %184 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %183, %struct.streamID* nonnull %7, i64 0, i32 1) #6, !dbg !5498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5499
  %185 = icmp eq i32 %184, 0, !dbg !5500
  br i1 %185, label %187, label %377, !dbg !5501

; <label>:186:                                    ; preds = %176
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i64 0, i64 0), i8* %135) #6, !dbg !5502
  br label %377, !dbg !5504

; <label>:187:                                    ; preds = %138, %125, %160, %170, %180, %153
  %188 = phi i32 [ %144, %153 ], [ %144, %160 ], [ %144, %170 ], [ %144, %180 ], [ %129, %125 ], [ %129, %138 ], !dbg !5505
  %189 = phi i32 [ %128, %153 ], [ %128, %160 ], [ %128, %170 ], [ %128, %180 ], [ %128, %125 ], [ 1, %138 ], !dbg !5506
  %190 = phi i32 [ %127, %153 ], [ %127, %160 ], [ %127, %170 ], [ %127, %180 ], [ 1, %125 ], [ %127, %138 ], !dbg !5507
  %191 = add nsw i32 %188, 1, !dbg !5509
  %192 = load i32, i32* %97, align 8, !dbg !5437, !tbaa !3181
  %193 = icmp slt i32 %191, %192, !dbg !5438
  br i1 %193, label %125, label %194, !dbg !5439, !llvm.loop !5510

; <label>:194:                                    ; preds = %187
  %195 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 0
  %196 = load i64, i64* %195, align 8, !dbg !5512, !tbaa !178
  %197 = bitcast i8* %69 to i64*, !dbg !5443
  %198 = load i64, i64* %197, align 8, !dbg !5443, !tbaa !178
  %199 = icmp ugt i64 %196, %198, !dbg !5513
  br i1 %199, label %214, label %200, !dbg !5444

; <label>:200:                                    ; preds = %122, %194
  %201 = phi i64 [ %124, %122 ], [ %198, %194 ]
  %202 = phi i32 [ 0, %122 ], [ %190, %194 ]
  %203 = phi i32 [ 0, %122 ], [ %189, %194 ]
  %204 = phi i64 [ 0, %122 ], [ %196, %194 ]
  %205 = icmp ult i64 %204, %201, !dbg !5514
  br i1 %205, label %213, label %206, !dbg !5515

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 1, !dbg !5516
  %208 = load i64, i64* %207, align 8, !dbg !5516, !tbaa !188
  %209 = getelementptr inbounds i8, i8* %69, i64 8, !dbg !5517
  %210 = bitcast i8* %209 to i64*, !dbg !5517
  %211 = load i64, i64* %210, align 8, !dbg !5517, !tbaa !188
  %212 = icmp ugt i64 %208, %211, !dbg !5518
  br i1 %212, label %214, label %213, !dbg !5519

; <label>:213:                                    ; preds = %206, %200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5520
  br label %217

; <label>:214:                                    ; preds = %194, %206
  %215 = phi i32 [ %190, %194 ], [ %202, %206 ]
  %216 = phi i32 [ %189, %194 ], [ %203, %206 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %69, i8* nonnull align 8 %119, i64 16, i1 false), !dbg !5521, !tbaa.struct !1603
  br label %217, !dbg !5523

; <label>:217:                                    ; preds = %213, %214
  %218 = phi i32 [ %215, %214 ], [ %202, %213 ]
  %219 = phi i32 [ %216, %214 ], [ %203, %213 ]
  %220 = phi i32 [ 1, %214 ], [ 0, %213 ], !dbg !5506
  %221 = load i64, i64* %5, align 8, !dbg !5524, !tbaa !265
  %222 = icmp eq i64 %221, -1, !dbg !5526
  br i1 %222, label %228, label %223, !dbg !5527

; <label>:223:                                    ; preds = %217
  %224 = icmp slt i64 %221, 0, !dbg !5528
  %225 = icmp sgt i64 %221, %118, !dbg !5531
  %226 = or i1 %224, %225, !dbg !5532
  br i1 %226, label %227, label %229, !dbg !5532

; <label>:227:                                    ; preds = %223
  store i64 %118, i64* %5, align 8, !dbg !5533, !tbaa !265
  br label %229, !dbg !5534

; <label>:228:                                    ; preds = %217
  store i64 %118, i64* %5, align 8, !dbg !5535, !tbaa !265
  br label %229

; <label>:229:                                    ; preds = %223, %227, %228
  %230 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5537, !tbaa !3187
  %231 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %230, i64 3, !dbg !5538
  %232 = load %struct.redisObject*, %struct.redisObject** %231, align 8, !dbg !5538, !tbaa !234
  %233 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %232, i64 0, i32 2, !dbg !5539
  %234 = load i8*, i8** %233, align 8, !dbg !5539, !tbaa !648
  %235 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nonnull %70, i8* %234, i32 1) #9, !dbg !5540
  %236 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5542
  %237 = icmp ugt i32 %117, 5, !dbg !5546
  br i1 %237, label %238, label %256, !dbg !5547

; <label>:238:                                    ; preds = %229
  %239 = bitcast %struct.streamID* %8 to i8*
  %240 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %241 = bitcast [2 x i64]* %2 to i8*
  %242 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 0
  %243 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %244 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 1
  %245 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %246 = getelementptr inbounds i8, i8* %69, i64 16
  %247 = bitcast i8* %246 to %struct.rax**
  %248 = icmp ne i32 %218, 0
  %249 = bitcast %struct.streamIterator* %10 to i8*
  %250 = bitcast i64* %11 to i8*
  %251 = bitcast %struct.streamID* %12 to i8*
  %252 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %10, i64 0, i32 9
  %253 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %235, i64 0, i32 2
  %254 = icmp eq i32 %219, 0
  %255 = zext i32 %117 to i64, !dbg !5547
  br label %260, !dbg !5547

; <label>:256:                                    ; preds = %363, %229
  %257 = phi i32 [ %220, %229 ], [ %364, %363 ], !dbg !5548
  %258 = phi i64 [ 0, %229 ], [ %365, %363 ], !dbg !5548
  %259 = icmp eq i32 %257, 0, !dbg !5549
  br i1 %259, label %376, label %368, !dbg !5551

; <label>:260:                                    ; preds = %238, %363
  %261 = phi i64 [ 5, %238 ], [ %366, %363 ]
  %262 = phi i64 [ 0, %238 ], [ %365, %363 ]
  %263 = phi i32 [ %220, %238 ], [ %364, %363 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %239) #7, !dbg !5552
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %240) #7, !dbg !5553
  %264 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5555, !tbaa !3187
  %265 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %264, i64 %261, !dbg !5557
  %266 = load %struct.redisObject*, %struct.redisObject** %265, align 8, !dbg !5557, !tbaa !234
  %267 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %266, %struct.streamID* nonnull %8, i64 0, i32 1) #6, !dbg !5564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5565
  %268 = icmp eq i32 %267, 0, !dbg !5566
  br i1 %268, label %270, label %269, !dbg !5567

; <label>:269:                                    ; preds = %260
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 2232, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !5568
  call void @_exit(i32 1) #8, !dbg !5568
  unreachable, !dbg !5568

; <label>:270:                                    ; preds = %260
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %241) #7, !dbg !5571
  %271 = load i64, i64* %242, align 8, !dbg !5572, !tbaa !178
  %272 = call i64 @intrev64(i64 %271) #6, !dbg !5572
  store i64 %272, i64* %243, align 16, !dbg !5573, !tbaa !117
  %273 = load i64, i64* %244, align 8, !dbg !5574, !tbaa !188
  %274 = call i64 @intrev64(i64 %273) #6, !dbg !5574
  store i64 %274, i64* %245, align 8, !dbg !5575, !tbaa !117
  %275 = call i8* @memcpy(i8* nonnull %240, i8* nonnull %241, i64 16) #6, !dbg !5576
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %241) #7, !dbg !5577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5577
  %276 = load %struct.rax*, %struct.rax** %247, align 8, !dbg !5578, !tbaa !155
  %277 = call i8* @raxFind(%struct.rax* %276, i8* nonnull %240, i64 16) #6, !dbg !5579
  %278 = bitcast i8* %277 to %struct.streamNACK*, !dbg !5579
  %279 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5581
  %280 = icmp eq %struct.streamNACK* %279, %278, !dbg !5582
  %281 = and i1 %248, %280, !dbg !5583
  br i1 %281, label %282, label %299, !dbg !5583

; <label>:282:                                    ; preds = %270
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %249) #7, !dbg !5584
  %283 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5585, !tbaa !648
  call void @streamIteratorStart(%struct.streamIterator* nonnull %10, %struct.stream* %283, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i32 0) #9, !dbg !5587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %250) #7, !dbg !5588
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %251) #7, !dbg !5590
  %284 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %10, %struct.streamID* nonnull %12, i64* nonnull %11) #9, !dbg !5593
  %285 = icmp eq i32 %284, 0, !dbg !5593
  call void @raxStop(%struct.raxIterator* nonnull %252) #6, !dbg !5597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5598
  br i1 %285, label %298, label %286, !dbg !5599

; <label>:286:                                    ; preds = %282
  %287 = call i8* @zmalloc(i64 24) #6, !dbg !5602
  %288 = bitcast i8* %287 to %struct.streamNACK*, !dbg !5602
  %289 = call i64 @mstime() #6, !dbg !5604
  %290 = bitcast i8* %287 to i64*, !dbg !5605
  store i64 %289, i64* %290, align 8, !dbg !5606, !tbaa !2387
  %291 = getelementptr inbounds i8, i8* %287, i64 8, !dbg !5607
  %292 = bitcast i8* %291 to i64*, !dbg !5607
  store i64 1, i64* %292, align 8, !dbg !5608, !tbaa !2395
  %293 = getelementptr inbounds i8, i8* %287, i64 16, !dbg !5609
  %294 = bitcast i8* %293 to %struct.streamConsumer**, !dbg !5609
  store %struct.streamConsumer* null, %struct.streamConsumer** %294, align 8, !dbg !5610, !tbaa !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5611
  %295 = load %struct.rax*, %struct.rax** %247, align 8, !dbg !5612, !tbaa !155
  %296 = call i32 @raxInsert(%struct.rax* %295, i8* nonnull %240, i64 16, i8* %287, i8** null) #6, !dbg !5613
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %251) #7, !dbg !5614
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %250) #7, !dbg !5614
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %249) #7, !dbg !5614
  %297 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5615, !tbaa !234
  br label %299

; <label>:298:                                    ; preds = %282
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %251) #7, !dbg !5614
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %250) #7, !dbg !5614
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %249) #7, !dbg !5614
  br label %363

; <label>:299:                                    ; preds = %286, %270
  %300 = phi %struct.streamNACK* [ %279, %270 ], [ %297, %286 ], !dbg !5615
  %301 = phi i8* [ %277, %270 ], [ %287, %286 ], !dbg !5616
  %302 = phi %struct.streamNACK* [ %278, %270 ], [ %288, %286 ], !dbg !5616
  %303 = icmp eq %struct.streamNACK* %302, %300, !dbg !5617
  br i1 %303, label %363, label %304, !dbg !5618

; <label>:304:                                    ; preds = %299
  %305 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %302, i64 0, i32 2, !dbg !5619
  %306 = load %struct.streamConsumer*, %struct.streamConsumer** %305, align 8, !dbg !5619, !tbaa !2349
  %307 = icmp ne %struct.streamConsumer* %306, null, !dbg !5620
  %308 = load i64, i64* %3, align 8, !dbg !5621
  %309 = icmp ne i64 %308, 0, !dbg !5621
  %310 = and i1 %307, %309, !dbg !5622
  br i1 %310, label %311, label %316, !dbg !5622

; <label>:311:                                    ; preds = %304
  %312 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %302, i64 0, i32 0, !dbg !5623
  %313 = load i64, i64* %312, align 8, !dbg !5623, !tbaa !2387
  %314 = sub nsw i64 %118, %313, !dbg !5624
  %315 = icmp slt i64 %314, %308, !dbg !5626
  br i1 %315, label %363, label %318

; <label>:316:                                    ; preds = %304
  %317 = icmp eq %struct.streamConsumer* %306, null, !dbg !5628
  br i1 %317, label %322, label %318, !dbg !5630

; <label>:318:                                    ; preds = %311, %316
  %319 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %306, i64 0, i32 2, !dbg !5631
  %320 = load %struct.rax*, %struct.rax** %319, align 8, !dbg !5631, !tbaa !2664
  %321 = call i32 @raxRemove(%struct.rax* %320, i8* nonnull %240, i64 16, i8** null) #6, !dbg !5632
  br label %322, !dbg !5632

; <label>:322:                                    ; preds = %316, %318
  store %struct.streamConsumer* %235, %struct.streamConsumer** %305, align 8, !dbg !5633, !tbaa !2349
  %323 = load i64, i64* %5, align 8, !dbg !5634, !tbaa !265
  %324 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %302, i64 0, i32 0, !dbg !5635
  store i64 %323, i64* %324, align 8, !dbg !5636, !tbaa !2387
  %325 = load i64, i64* %4, align 8, !dbg !5637, !tbaa !265
  %326 = icmp sgt i64 %325, -1, !dbg !5639
  br i1 %326, label %337, label %327, !dbg !5640

; <label>:327:                                    ; preds = %322
  br i1 %254, label %331, label %328, !dbg !5641

; <label>:328:                                    ; preds = %327
  %329 = load %struct.rax*, %struct.rax** %253, align 8, !dbg !5642, !tbaa !2664
  %330 = call i32 @raxInsert(%struct.rax* %329, i8* nonnull %240, i64 16, i8* %301, i8** null) #6, !dbg !5643
  br label %341, !dbg !5644

; <label>:331:                                    ; preds = %327
  %332 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %302, i64 0, i32 1, !dbg !5645
  %333 = load i64, i64* %332, align 8, !dbg !5648, !tbaa !2395
  %334 = add i64 %333, 1, !dbg !5648
  store i64 %334, i64* %332, align 8, !dbg !5648, !tbaa !2395
  %335 = load %struct.rax*, %struct.rax** %253, align 8, !dbg !5642, !tbaa !2664
  %336 = call i32 @raxInsert(%struct.rax* %335, i8* nonnull %240, i64 16, i8* %301, i8** null) #6, !dbg !5643
  br label %346, !dbg !5644

; <label>:337:                                    ; preds = %322
  %338 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %302, i64 0, i32 1, !dbg !5649
  store i64 %325, i64* %338, align 8, !dbg !5651, !tbaa !2395
  %339 = load %struct.rax*, %struct.rax** %253, align 8, !dbg !5642, !tbaa !2664
  %340 = call i32 @raxInsert(%struct.rax* %339, i8* nonnull %240, i64 16, i8* %301, i8** null) #6, !dbg !5643
  br i1 %254, label %346, label %341, !dbg !5644

; <label>:341:                                    ; preds = %328, %337
  %342 = call i8* @sdsempty() #6, !dbg !5656
  %343 = load i64, i64* %242, align 8, !dbg !5657, !tbaa !178
  %344 = load i64, i64* %244, align 8, !dbg !5658, !tbaa !188
  %345 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %343, i64 %344) #6, !dbg !5659
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %345) #6, !dbg !5661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5662
  br label %352, !dbg !5663

; <label>:346:                                    ; preds = %331, %337
  %347 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5664, !tbaa !648
  %348 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %347, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !5665
  %349 = icmp eq i64 %348, 0, !dbg !5667
  br i1 %349, label %350, label %352, !dbg !5669

; <label>:350:                                    ; preds = %346
  %351 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5670, !tbaa !5047
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %351) #6, !dbg !5671
  br label %352, !dbg !5671

; <label>:352:                                    ; preds = %350, %346, %341
  %353 = add i64 %262, 1, !dbg !5672
  %354 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5673, !tbaa !3187
  %355 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %354, i64 1, !dbg !5674
  %356 = load %struct.redisObject*, %struct.redisObject** %355, align 8, !dbg !5674, !tbaa !234
  %357 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %354, i64 2, !dbg !5675
  %358 = load %struct.redisObject*, %struct.redisObject** %357, align 8, !dbg !5675, !tbaa !234
  %359 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %354, i64 %261, !dbg !5676
  %360 = load %struct.redisObject*, %struct.redisObject** %359, align 8, !dbg !5676, !tbaa !234
  call void @streamPropagateXCLAIM(%struct.client* nonnull %0, %struct.redisObject* %356, %struct.streamCG* nonnull %70, %struct.redisObject* %358, %struct.redisObject* %360, %struct.streamNACK* nonnull %302) #9, !dbg !5677
  %361 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5678, !tbaa !3317
  %362 = add nsw i64 %361, 1, !dbg !5678
  store i64 %362, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5678, !tbaa !3317
  br label %363, !dbg !5679

; <label>:363:                                    ; preds = %311, %298, %352, %299
  %364 = phi i32 [ %263, %311 ], [ %263, %298 ], [ 0, %352 ], [ %263, %299 ], !dbg !5680
  %365 = phi i64 [ %262, %311 ], [ %262, %298 ], [ %353, %352 ], [ %262, %299 ], !dbg !5506
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %240) #7, !dbg !5681
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %239) #7, !dbg !5681
  %366 = add nuw nsw i64 %261, 1, !dbg !5682
  %367 = icmp ult i64 %366, %255, !dbg !5546
  br i1 %367, label %260, label %256, !dbg !5547, !llvm.loop !5683

; <label>:368:                                    ; preds = %256
  %369 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5685, !tbaa !3187
  %370 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %369, i64 1, !dbg !5687
  %371 = load %struct.redisObject*, %struct.redisObject** %370, align 8, !dbg !5687, !tbaa !234
  %372 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %369, i64 2, !dbg !5688
  %373 = load %struct.redisObject*, %struct.redisObject** %372, align 8, !dbg !5688, !tbaa !234
  call void @streamPropagateGroupID(%struct.client* nonnull %0, %struct.redisObject* %371, %struct.streamCG* nonnull %70, %struct.redisObject* %373) #9, !dbg !5689
  %374 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5690, !tbaa !3317
  %375 = add nsw i64 %374, 1, !dbg !5690
  store i64 %375, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5690, !tbaa !3317
  br label %376, !dbg !5691

; <label>:376:                                    ; preds = %256, %368
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %236, i64 %258) #6, !dbg !5692
  call void @preventCommandPropagation(%struct.client* nonnull %0) #6, !dbg !5693
  br label %377, !dbg !5694

; <label>:377:                                    ; preds = %180, %170, %160, %147, %186, %376
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %119) #7, !dbg !5694
  br label %378

; <label>:378:                                    ; preds = %86, %26, %377, %76
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !5694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !5694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !5694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5694
  ret void, !dbg !5694
}

; Function Attrs: noredzone nounwind
define dso_local void @xdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !5695 {
  %2 = alloca %struct.streamIterator, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.streamID, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5707
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5707, !tbaa !3187
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !5709
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5709, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5710, !tbaa !3512
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #6, !dbg !5711
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !5713
  br i1 %12, label %80, label %13, !dbg !5714

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !5715
  %15 = icmp eq i32 %14, 0, !dbg !5715
  br i1 %15, label %16, label %80, !dbg !5716

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !5717
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !5717
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !5717, !tbaa !648
  %20 = bitcast %struct.streamID* %5 to i8*, !dbg !5719
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !5719
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5721
  %22 = load i32, i32* %21, align 8, !dbg !5721, !tbaa !3181
  %23 = icmp sgt i32 %22, 2, !dbg !5723
  br i1 %23, label %35, label %77, !dbg !5724

; <label>:24:                                     ; preds = %35
  %25 = load i32, i32* %21, align 8, !dbg !5721, !tbaa !3181
  %26 = sext i32 %25 to i64, !dbg !5723
  %27 = icmp slt i64 %42, %26, !dbg !5723
  br i1 %27, label %35, label %28, !dbg !5724, !llvm.loop !5725

; <label>:28:                                     ; preds = %24
  %29 = icmp sgt i32 %25, 2, !dbg !5729
  br i1 %29, label %30, label %77, !dbg !5731

; <label>:30:                                     ; preds = %28
  %31 = bitcast %struct.streamIterator* %2 to i8*
  %32 = bitcast %struct.streamID* %3 to i8*
  %33 = bitcast i64* %4 to i8*
  %34 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %2, i64 0, i32 9
  br label %45, !dbg !5731

; <label>:35:                                     ; preds = %16, %24
  %36 = phi i64 [ %42, %24 ], [ 2, %16 ]
  %37 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5732, !tbaa !3187
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %37, i64 %36, !dbg !5735
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !5735, !tbaa !234
  %40 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %39, %struct.streamID* nonnull %5, i64 0, i32 1) #6, !dbg !5742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5743
  %41 = icmp eq i32 %40, 0, !dbg !5744
  %42 = add nuw nsw i64 %36, 1, !dbg !5745
  br i1 %41, label %24, label %79, !dbg !5746

; <label>:43:                                     ; preds = %55
  %44 = icmp eq i32 %57, 0, !dbg !5747
  br i1 %44, label %77, label %62, !dbg !5749

; <label>:45:                                     ; preds = %30, %55
  %46 = phi i64 [ 2, %30 ], [ %58, %55 ]
  %47 = phi i32 [ 0, %30 ], [ %57, %55 ]
  %48 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5750, !tbaa !3187
  %49 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %46, !dbg !5752
  %50 = load %struct.redisObject*, %struct.redisObject** %49, align 8, !dbg !5752, !tbaa !234
  %51 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %50, %struct.streamID* nonnull %5, i64 0, i32 1) #6, !dbg !5758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5759
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %31) #7, !dbg !5764
  call void @streamIteratorStart(%struct.streamIterator* nonnull %2, %struct.stream* %19, %struct.streamID* nonnull %5, %struct.streamID* nonnull %5, i32 0) #6, !dbg !5766
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #7, !dbg !5767
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !5768
  %52 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3, i64* nonnull %4) #6, !dbg !5771
  %53 = icmp eq i32 %52, 0, !dbg !5771
  br i1 %53, label %55, label %54, !dbg !5772

; <label>:54:                                     ; preds = %45
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3) #6, !dbg !5773
  br label %55, !dbg !5774

; <label>:55:                                     ; preds = %45, %54
  %56 = phi i32 [ 1, %54 ], [ 0, %45 ], !dbg !5775
  call void @raxStop(%struct.raxIterator* nonnull %34) #6, !dbg !5778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5779
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !5780
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #7, !dbg !5780
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %31) #7, !dbg !5780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5781
  %57 = add nuw nsw i32 %56, %47, !dbg !5782
  %58 = add nuw nsw i64 %46, 1, !dbg !5783
  %59 = load i32, i32* %21, align 8, !dbg !5784, !tbaa !3181
  %60 = sext i32 %59 to i64, !dbg !5729
  %61 = icmp slt i64 %58, %60, !dbg !5729
  br i1 %61, label %45, label %43, !dbg !5731, !llvm.loop !5785

; <label>:62:                                     ; preds = %43
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5787
  %64 = load %struct.redisDb*, %struct.redisDb** %63, align 8, !dbg !5787, !tbaa !2421
  %65 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5789, !tbaa !3187
  %66 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %65, i64 1, !dbg !5790
  %67 = load %struct.redisObject*, %struct.redisObject** %66, align 8, !dbg !5790, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %64, %struct.redisObject* %67) #6, !dbg !5791
  %68 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5792, !tbaa !3187
  %69 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %68, i64 1, !dbg !5793
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !5793, !tbaa !234
  %71 = load %struct.redisDb*, %struct.redisDb** %63, align 8, !dbg !5794, !tbaa !2421
  %72 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %71, i64 0, i32 5, !dbg !5795
  %73 = load i32, i32* %72, align 8, !dbg !5795, !tbaa !2426
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), %struct.redisObject* %70, i32 %73) #6, !dbg !5796
  %74 = zext i32 %57 to i64, !dbg !5797
  %75 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5798, !tbaa !3317
  %76 = add nsw i64 %75, %74, !dbg !5798
  store i64 %76, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5798, !tbaa !3317
  br label %77, !dbg !5799

; <label>:77:                                     ; preds = %43, %28, %16, %62
  %78 = phi i64 [ %74, %62 ], [ 0, %16 ], [ 0, %28 ], [ 0, %43 ], !dbg !5800
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %78) #6, !dbg !5801
  br label %79, !dbg !5802

; <label>:79:                                     ; preds = %35, %77
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !5802
  br label %80

; <label>:80:                                     ; preds = %1, %13, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5802
  ret void, !dbg !5802
}

; Function Attrs: noredzone nounwind
define dso_local void @xtrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !5803 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5823
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5823, !tbaa !3187
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !5825
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !5825, !tbaa !234
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5826, !tbaa !3512
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !5827
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !5829
  br i1 %9, label %102, label %10, !dbg !5830

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 6) #6, !dbg !5831
  %12 = icmp eq i32 %11, 0, !dbg !5831
  br i1 %12, label %13, label %102, !dbg !5832

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !5833
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !5833
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !5833, !tbaa !648
  %17 = bitcast i64* %2 to i8*, !dbg !5836
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !5836
  store i64 -1, i64* %2, align 8, !dbg !5837, !tbaa !265
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5841
  %19 = load i32, i32* %18, align 8, !dbg !5841, !tbaa !3181
  %20 = icmp sgt i32 %19, 2, !dbg !5842
  br i1 %20, label %24, label %79, !dbg !5843

; <label>:21:                                     ; preds = %69
  %22 = load i32, i32* %18, align 8, !dbg !5841, !tbaa !3181
  %23 = icmp slt i32 %72, %22, !dbg !5842
  br i1 %23, label %24, label %76, !dbg !5843, !llvm.loop !5844

; <label>:24:                                     ; preds = %13, %21
  %25 = phi i32 [ %22, %21 ], [ %19, %13 ]
  %26 = phi i32 [ %72, %21 ], [ 2, %13 ]
  %27 = xor i32 %26, -1, !dbg !5846
  %28 = add i32 %25, %27, !dbg !5846
  %29 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5848, !tbaa !3187
  %30 = sext i32 %26 to i64, !dbg !5849
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %30, !dbg !5849
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !5849, !tbaa !234
  %33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !5850
  %34 = load i8*, i8** %33, align 8, !dbg !5850, !tbaa !648
  %35 = call i32 @strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !5852
  %36 = icmp eq i32 %35, 0, !dbg !5852
  %37 = icmp ne i32 %28, 0, !dbg !5853
  %38 = and i1 %37, %36, !dbg !5854
  br i1 %38, label %39, label %74, !dbg !5854

; <label>:39:                                     ; preds = %24
  %40 = add nsw i32 %26, 1, !dbg !5855
  %41 = sext i32 %40 to i64, !dbg !5856
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %41, !dbg !5856
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !5856, !tbaa !234
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !5857
  %45 = load i8*, i8** %44, align 8, !dbg !5857, !tbaa !648
  %46 = icmp sgt i32 %28, 1, !dbg !5859
  br i1 %46, label %47, label %60, !dbg !5861

; <label>:47:                                     ; preds = %39
  %48 = load i8, i8* %45, align 1, !dbg !5862, !tbaa !663
  switch i8 %48, label %60 [
    i8 126, label %49
    i8 61, label %55
  ], !dbg !5863

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !5864
  %51 = load i8, i8* %50, align 1, !dbg !5864, !tbaa !663
  %52 = icmp eq i8 %51, 0, !dbg !5865
  %53 = select i1 %52, i32 %40, i32 %26, !dbg !5866
  %54 = zext i1 %52 to i32, !dbg !5866
  br label %60, !dbg !5866

; <label>:55:                                     ; preds = %47
  %56 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !5867
  %57 = load i8, i8* %56, align 1, !dbg !5867, !tbaa !663
  %58 = icmp eq i8 %57, 0, !dbg !5869
  %59 = select i1 %58, i32 %40, i32 %26, !dbg !5870
  br label %60, !dbg !5870

; <label>:60:                                     ; preds = %49, %47, %55, %39
  %61 = phi i32 [ %59, %55 ], [ %26, %39 ], [ %53, %49 ], [ %26, %47 ], !dbg !5871
  %62 = phi i32 [ 0, %55 ], [ 0, %39 ], [ %54, %49 ], [ 0, %47 ], !dbg !5872
  %63 = add nsw i32 %61, 1, !dbg !5873
  %64 = sext i32 %63 to i64, !dbg !5875
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 %64, !dbg !5875
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !5875, !tbaa !234
  %67 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %66, i64* nonnull %2, i8* null) #6, !dbg !5876
  %68 = icmp eq i32 %67, 0, !dbg !5877
  br i1 %68, label %69, label %101, !dbg !5878

; <label>:69:                                     ; preds = %60
  %70 = load i64, i64* %2, align 8, !dbg !5879, !tbaa !265
  %71 = icmp slt i64 %70, 0, !dbg !5881
  %72 = add nsw i32 %61, 2, !dbg !5882
  br i1 %71, label %73, label %21, !dbg !5883

; <label>:73:                                     ; preds = %69
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !5884
  br label %101, !dbg !5886

; <label>:74:                                     ; preds = %24
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !5887, !tbaa !3454
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %75) #6, !dbg !5889
  br label %101

; <label>:76:                                     ; preds = %21
  %77 = call i64 @streamTrimByLength(%struct.stream* %16, i64 %70, i32 %62) #9, !dbg !5891
  %78 = icmp eq i64 %77, 0, !dbg !5894
  br i1 %78, label %100, label %80, !dbg !5896

; <label>:79:                                     ; preds = %13
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !5897
  br label %101, !dbg !5899

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5900
  %82 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !5900, !tbaa !2421
  %83 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5902, !tbaa !3187
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %83, i64 1, !dbg !5903
  %85 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !5903, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %82, %struct.redisObject* %85) #6, !dbg !5904
  %86 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !5905, !tbaa !3187
  %87 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %86, i64 1, !dbg !5906
  %88 = load %struct.redisObject*, %struct.redisObject** %87, align 8, !dbg !5906, !tbaa !234
  %89 = load %struct.redisDb*, %struct.redisDb** %81, align 8, !dbg !5907, !tbaa !2421
  %90 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %89, i64 0, i32 5, !dbg !5908
  %91 = load i32, i32* %90, align 8, !dbg !5908, !tbaa !2426
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %88, i32 %91) #6, !dbg !5909
  %92 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5910, !tbaa !3317
  %93 = add nsw i64 %92, %77, !dbg !5910
  store i64 %93, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5910, !tbaa !3317
  %94 = icmp eq i32 %62, 0, !dbg !5911
  br i1 %94, label %100, label %95, !dbg !5913

; <label>:95:                                     ; preds = %80
  %96 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !5918
  %97 = load i64, i64* %96, align 8, !dbg !5918, !tbaa !952
  %98 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %97) #6, !dbg !5919
  %99 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !5921
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %63, %struct.redisObject* %98) #6, !dbg !5923
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %61, %struct.redisObject* %99) #6, !dbg !5924
  call void @decrRefCount(%struct.redisObject* %99) #6, !dbg !5925
  call void @decrRefCount(%struct.redisObject* %98) #6, !dbg !5926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5927
  br label %100, !dbg !5928

; <label>:100:                                    ; preds = %80, %76, %95
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %77) #6, !dbg !5929
  br label %101, !dbg !5930

; <label>:101:                                    ; preds = %60, %73, %74, %79, %100
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !5930
  br label %102

; <label>:102:                                    ; preds = %1, %10, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5930
  ret void, !dbg !5930
}

; Function Attrs: noredzone nounwind
define dso_local void @xinfoCommand(%struct.client*) local_unnamed_addr #0 !dbg !5931 {
  %2 = alloca [5 x i8*], align 16
  %3 = alloca %struct.raxIterator, align 8
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca <2 x i64>, align 16
  %6 = bitcast <2 x i64>* %5 to %struct.streamID*
  %7 = alloca <2 x i64>, align 16
  %8 = bitcast <2 x i64>* %7 to %struct.streamID*
  %9 = bitcast [5 x i8*]* %2 to i8*, !dbg !5959
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7, !dbg !5959
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %11 = bitcast i8** %10 to i64*, !dbg !5960
  store i64 0, i64* %11, align 16, !dbg !5960
  %12 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !5960
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.74, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !5960
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !5960
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !5960
  store <2 x i8*> <i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !5960
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5962
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5962, !tbaa !3187
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !5964
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5964, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !5965
  %20 = load i8*, i8** %19, align 8, !dbg !5965, !tbaa !648
  %21 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !5966
  %22 = icmp eq i32 %21, 0, !dbg !5966
  br i1 %22, label %23, label %25, !dbg !5967

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !5960
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %24) #6, !dbg !5968
  br label %239, !dbg !5970

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5971
  %27 = load i32, i32* %26, align 8, !dbg !5971, !tbaa !3181
  %28 = icmp slt i32 %27, 3, !dbg !5973
  br i1 %28, label %29, label %30, !dbg !5974

; <label>:29:                                     ; preds = %25
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !5975
  br label %239, !dbg !5977

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !5979
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !5979, !tbaa !234
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !5981, !tbaa !4659
  %34 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %32, %struct.redisObject* %33) #6, !dbg !5982
  %35 = icmp eq %struct.redisObject* %34, null, !dbg !5984
  br i1 %35, label %239, label %36, !dbg !5986

; <label>:36:                                     ; preds = %30
  %37 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %34, i32 6) #6, !dbg !5987
  %38 = icmp eq i32 %37, 0, !dbg !5987
  br i1 %38, label %39, label %239, !dbg !5988

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i64 0, i32 2, !dbg !5989
  %41 = bitcast i8** %40 to %struct.stream**, !dbg !5989
  %42 = load %struct.stream*, %struct.stream** %41, align 8, !dbg !5989, !tbaa !648
  %43 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !5990
  %44 = icmp eq i32 %43, 0, !dbg !5990
  br i1 %44, label %45, label %154, !dbg !5991

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %26, align 8, !dbg !5992, !tbaa !3181
  %47 = icmp eq i32 %46, 4, !dbg !5993
  br i1 %47, label %48, label %154, !dbg !5994

; <label>:48:                                     ; preds = %45
  %49 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5995, !tbaa !3187
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 3, !dbg !5996
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !5996, !tbaa !234
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !5997
  %53 = load i8*, i8** %52, align 8, !dbg !5997, !tbaa !648
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6001
  %55 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !6001, !tbaa !123
  %56 = icmp eq %struct.rax* %55, null, !dbg !6002
  br i1 %56, label %88, label %57, !dbg !6003

; <label>:57:                                     ; preds = %48
  %58 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !6006
  %59 = load i8, i8* %58, align 1, !dbg !6006, !tbaa !663
  %60 = trunc i8 %59 to i3, !dbg !6008
  switch i3 %60, label %82 [
    i3 0, label %61
    i3 1, label %64
    i3 2, label %68
    i3 3, label %73
    i3 -4, label %78
  ], !dbg !6008

; <label>:61:                                     ; preds = %57
  %62 = lshr i8 %59, 3, !dbg !6009
  %63 = zext i8 %62 to i64, !dbg !6009
  br label %82, !dbg !6010

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !6011
  %66 = load i8, i8* %65, align 1, !dbg !6012, !tbaa !663
  %67 = zext i8 %66 to i64, !dbg !6011
  br label %82, !dbg !6013

; <label>:68:                                     ; preds = %57
  %69 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !6014
  %70 = bitcast i8* %69 to i16*, !dbg !6015
  %71 = load i16, i16* %70, align 1, !dbg !6015, !tbaa !674
  %72 = zext i16 %71 to i64, !dbg !6014
  br label %82, !dbg !6016

; <label>:73:                                     ; preds = %57
  %74 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !6017
  %75 = bitcast i8* %74 to i32*, !dbg !6018
  %76 = load i32, i32* %75, align 1, !dbg !6018, !tbaa !679
  %77 = zext i32 %76 to i64, !dbg !6017
  br label %82, !dbg !6019

; <label>:78:                                     ; preds = %57
  %79 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !6020
  %80 = bitcast i8* %79 to i64*, !dbg !6021
  %81 = load i64, i64* %80, align 1, !dbg !6021, !tbaa !117
  br label %82, !dbg !6022

; <label>:82:                                     ; preds = %78, %73, %68, %64, %61, %57
  %83 = phi i64 [ %81, %78 ], [ %77, %73 ], [ %72, %68 ], [ %67, %64 ], [ %63, %61 ], [ 0, %57 ], !dbg !6023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6024
  %84 = tail call i8* @raxFind(%struct.rax* nonnull %55, i8* nonnull %53, i64 %83) #6, !dbg !6025
  %85 = bitcast i8* %84 to %struct.streamCG*, !dbg !6025
  %86 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !6027, !tbaa !234
  %87 = icmp eq %struct.streamCG* %86, %85, !dbg !6028
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %48, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6029
  br label %91, !dbg !6031

; <label>:89:                                     ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6029
  %90 = icmp eq i8* %84, null, !dbg !6032
  br i1 %90, label %91, label %99, !dbg !6031

; <label>:91:                                     ; preds = %88, %89
  %92 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !6034, !tbaa !3187
  %93 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %92, i64 3, !dbg !6036
  %94 = load %struct.redisObject*, %struct.redisObject** %93, align 8, !dbg !6036, !tbaa !234
  %95 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %94, i64 0, i32 2, !dbg !6037
  %96 = load i8*, i8** %95, align 8, !dbg !6037, !tbaa !648
  %97 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !6038
  %98 = load i8*, i8** %97, align 8, !dbg !6038, !tbaa !648
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %96, i8* %98) #6, !dbg !6039
  br label %239

; <label>:99:                                     ; preds = %89
  %100 = getelementptr inbounds i8, i8* %84, i64 24, !dbg !6040
  %101 = bitcast i8* %100 to %struct.rax**, !dbg !6040
  %102 = load %struct.rax*, %struct.rax** %101, align 8, !dbg !6040, !tbaa !159
  %103 = tail call i64 @raxSize(%struct.rax* %102) #6, !dbg !6041
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %103) #6, !dbg !6042
  %104 = bitcast %struct.raxIterator* %3 to i8*, !dbg !6043
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %104) #7, !dbg !6043
  %105 = load %struct.rax*, %struct.rax** %101, align 8, !dbg !6044, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %105) #6, !dbg !6046
  %106 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !6047
  %107 = call i64 @mstime() #6, !dbg !6048
  %108 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !6050
  %109 = icmp eq i32 %108, 0, !dbg !6051
  br i1 %109, label %153, label %110, !dbg !6051

; <label>:110:                                    ; preds = %99
  %111 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %112 = bitcast i8** %111 to %struct.streamConsumer**
  br label %113, !dbg !6051

; <label>:113:                                    ; preds = %110, %146
  %114 = load %struct.streamConsumer*, %struct.streamConsumer** %112, align 8, !dbg !6052, !tbaa !518
  %115 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %114, i64 0, i32 0, !dbg !6054
  %116 = load i64, i64* %115, align 8, !dbg !6054, !tbaa !4146
  %117 = sub nsw i64 %107, %116, !dbg !6055
  %118 = icmp sgt i64 %117, 0, !dbg !6057
  %119 = select i1 %118, i64 %117, i64 0, !dbg !6057
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 6) #6, !dbg !6058
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !6059
  %120 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %114, i64 0, i32 1, !dbg !6060
  %121 = load i8*, i8** %120, align 8, !dbg !6060, !tbaa !2352
  %122 = getelementptr inbounds i8, i8* %121, i64 -1, !dbg !6063
  %123 = load i8, i8* %122, align 1, !dbg !6063, !tbaa !663
  %124 = trunc i8 %123 to i3, !dbg !6065
  switch i3 %124, label %146 [
    i3 0, label %125
    i3 1, label %128
    i3 2, label %132
    i3 3, label %137
    i3 -4, label %142
  ], !dbg !6065

; <label>:125:                                    ; preds = %113
  %126 = lshr i8 %123, 3, !dbg !6066
  %127 = zext i8 %126 to i64, !dbg !6066
  br label %146, !dbg !6067

; <label>:128:                                    ; preds = %113
  %129 = getelementptr inbounds i8, i8* %121, i64 -3, !dbg !6068
  %130 = load i8, i8* %129, align 1, !dbg !6069, !tbaa !663
  %131 = zext i8 %130 to i64, !dbg !6068
  br label %146, !dbg !6070

; <label>:132:                                    ; preds = %113
  %133 = getelementptr inbounds i8, i8* %121, i64 -5, !dbg !6071
  %134 = bitcast i8* %133 to i16*, !dbg !6072
  %135 = load i16, i16* %134, align 1, !dbg !6072, !tbaa !674
  %136 = zext i16 %135 to i64, !dbg !6071
  br label %146, !dbg !6073

; <label>:137:                                    ; preds = %113
  %138 = getelementptr inbounds i8, i8* %121, i64 -9, !dbg !6074
  %139 = bitcast i8* %138 to i32*, !dbg !6075
  %140 = load i32, i32* %139, align 1, !dbg !6075, !tbaa !679
  %141 = zext i32 %140 to i64, !dbg !6074
  br label %146, !dbg !6076

; <label>:142:                                    ; preds = %113
  %143 = getelementptr inbounds i8, i8* %121, i64 -17, !dbg !6077
  %144 = bitcast i8* %143 to i64*, !dbg !6078
  %145 = load i64, i64* %144, align 1, !dbg !6078, !tbaa !117
  br label %146, !dbg !6079

; <label>:146:                                    ; preds = %113, %125, %128, %132, %137, %142
  %147 = phi i64 [ %145, %142 ], [ %141, %137 ], [ %136, %132 ], [ %131, %128 ], [ %127, %125 ], [ 0, %113 ], !dbg !6080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6081
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %121, i64 %147) #6, !dbg !6082
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !6083
  %148 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %114, i64 0, i32 2, !dbg !6084
  %149 = load %struct.rax*, %struct.rax** %148, align 8, !dbg !6084, !tbaa !2664
  %150 = call i64 @raxSize(%struct.rax* %149) #6, !dbg !6085
  call void @addReplyLongLong(%struct.client* %0, i64 %150) #6, !dbg !6086
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !6087
  call void @addReplyLongLong(%struct.client* %0, i64 %119) #6, !dbg !6088
  %151 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !6050
  %152 = icmp eq i32 %151, 0, !dbg !6051
  br i1 %152, label %153, label %113, !dbg !6051, !llvm.loop !6089

; <label>:153:                                    ; preds = %146, %99
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !6091
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %104) #7, !dbg !6092
  br label %239

; <label>:154:                                    ; preds = %39, %45
  %155 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #10, !dbg !6093
  %156 = icmp eq i32 %155, 0, !dbg !6093
  br i1 %156, label %157, label %196, !dbg !6094

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %26, align 8, !dbg !6095, !tbaa !3181
  %159 = icmp eq i32 %158, 3, !dbg !6096
  br i1 %159, label %160, label %196, !dbg !6097

; <label>:160:                                    ; preds = %157
  %161 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6098
  %162 = load %struct.rax*, %struct.rax** %161, align 8, !dbg !6098, !tbaa !123
  %163 = icmp eq %struct.rax* %162, null, !dbg !6100
  br i1 %163, label %164, label %165, !dbg !6101

; <label>:164:                                    ; preds = %160
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #6, !dbg !6102
  br label %239, !dbg !6104

; <label>:165:                                    ; preds = %160
  %166 = tail call i64 @raxSize(%struct.rax* nonnull %162) #6, !dbg !6105
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %166) #6, !dbg !6106
  %167 = bitcast %struct.raxIterator* %4 to i8*, !dbg !6107
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %167) #7, !dbg !6107
  %168 = load %struct.rax*, %struct.rax** %161, align 8, !dbg !6108, !tbaa !123
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %168) #6, !dbg !6110
  %169 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !6111
  %170 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !6112
  %171 = icmp eq i32 %170, 0, !dbg !6113
  br i1 %171, label %195, label %172, !dbg !6113

; <label>:172:                                    ; preds = %165
  %173 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 3
  %174 = bitcast i8** %173 to %struct.streamCG**
  %175 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2
  %176 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %177, !dbg !6113

; <label>:177:                                    ; preds = %172, %177
  %178 = load %struct.streamCG*, %struct.streamCG** %174, align 8, !dbg !6114, !tbaa !518
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 8) #6, !dbg !6116
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !6117
  %179 = load i8*, i8** %175, align 8, !dbg !6118, !tbaa !694
  %180 = load i64, i64* %176, align 8, !dbg !6119, !tbaa !692
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %179, i64 %180) #6, !dbg !6120
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0)) #6, !dbg !6121
  %181 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %178, i64 0, i32 2, !dbg !6122
  %182 = load %struct.rax*, %struct.rax** %181, align 8, !dbg !6122, !tbaa !159
  %183 = call i64 @raxSize(%struct.rax* %182) #6, !dbg !6123
  call void @addReplyLongLong(%struct.client* %0, i64 %183) #6, !dbg !6124
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !6125
  %184 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %178, i64 0, i32 1, !dbg !6126
  %185 = load %struct.rax*, %struct.rax** %184, align 8, !dbg !6126, !tbaa !155
  %186 = call i64 @raxSize(%struct.rax* %185) #6, !dbg !6127
  call void @addReplyLongLong(%struct.client* %0, i64 %186) #6, !dbg !6128
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !6129
  %187 = call i8* @sdsempty() #6, !dbg !6133
  %188 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %178, i64 0, i32 0, i32 0, !dbg !6134
  %189 = load i64, i64* %188, align 8, !dbg !6134, !tbaa !178
  %190 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %178, i64 0, i32 0, i32 1, !dbg !6135
  %191 = load i64, i64* %190, align 8, !dbg !6135, !tbaa !188
  %192 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %189, i64 %191) #6, !dbg !6136
  call void @addReplyBulkSds(%struct.client* %0, i8* %192) #6, !dbg !6138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6139
  %193 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !6112
  %194 = icmp eq i32 %193, 0, !dbg !6113
  br i1 %194, label %195, label %177, !dbg !6113, !llvm.loop !6140

; <label>:195:                                    ; preds = %177, %165
  call void @raxStop(%struct.raxIterator* nonnull %4) #6, !dbg !6142
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %167) #7, !dbg !6143
  br label %239, !dbg !6144

; <label>:196:                                    ; preds = %154, %157
  %197 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !6145
  %198 = icmp eq i32 %197, 0, !dbg !6145
  br i1 %198, label %199, label %238, !dbg !6146

; <label>:199:                                    ; preds = %196
  %200 = load i32, i32* %26, align 8, !dbg !6147, !tbaa !3181
  %201 = icmp eq i32 %200, 3, !dbg !6148
  br i1 %201, label %202, label %238, !dbg !6149

; <label>:202:                                    ; preds = %199
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 14) #6, !dbg !6150
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0)) #6, !dbg !6151
  %203 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 1, !dbg !6152
  %204 = load i64, i64* %203, align 8, !dbg !6152, !tbaa !952
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %204) #6, !dbg !6153
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !6154
  %205 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 0, !dbg !6155
  %206 = load %struct.rax*, %struct.rax** %205, align 8, !dbg !6155, !tbaa !108
  %207 = tail call i64 @raxSize(%struct.rax* %206) #6, !dbg !6156
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %207) #6, !dbg !6157
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0)) #6, !dbg !6158
  %208 = load %struct.rax*, %struct.rax** %205, align 8, !dbg !6159, !tbaa !108
  %209 = getelementptr inbounds %struct.rax, %struct.rax* %208, i64 0, i32 2, !dbg !6160
  %210 = load i64, i64* %209, align 8, !dbg !6160, !tbaa !6161
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %210) #6, !dbg !6163
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #6, !dbg !6164
  %211 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6165
  %212 = load %struct.rax*, %struct.rax** %211, align 8, !dbg !6165, !tbaa !123
  %213 = icmp eq %struct.rax* %212, null, !dbg !6166
  br i1 %213, label %216, label %214, !dbg !6166

; <label>:214:                                    ; preds = %202
  %215 = tail call i64 @raxSize(%struct.rax* nonnull %212) #6, !dbg !6167
  br label %216, !dbg !6166

; <label>:216:                                    ; preds = %202, %214
  %217 = phi i64 [ %215, %214 ], [ 0, %202 ], !dbg !6166
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %217) #6, !dbg !6168
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #6, !dbg !6169
  %218 = tail call i8* @sdsempty() #6, !dbg !6173
  %219 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 0, !dbg !6174
  %220 = load i64, i64* %219, align 8, !dbg !6174, !tbaa !178
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 1, !dbg !6175
  %222 = load i64, i64* %221, align 8, !dbg !6175, !tbaa !188
  %223 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %220, i64 %222) #6, !dbg !6176
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %223) #6, !dbg !6178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6179
  %224 = bitcast <2 x i64>* %5 to i8*, !dbg !6180
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %224) #7, !dbg !6180
  %225 = bitcast <2 x i64>* %7 to i8*, !dbg !6180
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %225) #7, !dbg !6180
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16, !dbg !6181, !tbaa !117
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %7, align 16, !dbg !6182, !tbaa !117
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0)) #6, !dbg !6183
  %226 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !6186
  %227 = trunc i64 %226 to i32, !dbg !6186
  %228 = icmp eq i32 %227, 0, !dbg !6188
  br i1 %228, label %229, label %231, !dbg !6190

; <label>:229:                                    ; preds = %216
  %230 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6191, !tbaa !5047
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %230) #6, !dbg !6192
  br label %231, !dbg !6192

; <label>:231:                                    ; preds = %216, %229
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0)) #6, !dbg !6193
  %232 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 1, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !6194
  %233 = trunc i64 %232 to i32, !dbg !6194
  %234 = icmp eq i32 %233, 0, !dbg !6195
  br i1 %234, label %235, label %237, !dbg !6197

; <label>:235:                                    ; preds = %231
  %236 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6198, !tbaa !5047
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %236) #6, !dbg !6199
  br label %237, !dbg !6199

; <label>:237:                                    ; preds = %231, %235
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %225) #7, !dbg !6200
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %224) #7, !dbg !6200
  br label %239, !dbg !6201

; <label>:238:                                    ; preds = %196, %199
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !6202
  br label %239

; <label>:239:                                    ; preds = %164, %36, %30, %91, %153, %195, %238, %237, %29, %23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7, !dbg !6204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6204
  ret void, !dbg !6204
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }

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
!504 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !492)
!505 = !DILocation(line: 178, column: 9, scope: !363)
!506 = !DILocation(line: 181, column: 5, scope: !363)
!507 = !DILocation(line: 182, column: 21, scope: !363)
!508 = !DILocation(line: 181, column: 17, scope: !363)
!509 = !DILocation(line: 182, column: 5, scope: !363)
!510 = !DILocation(line: 183, column: 5, scope: !363)
!511 = !DILocation(line: 185, column: 12, scope: !363)
!512 = !DILocation(line: 186, column: 20, scope: !363)
!513 = !DILocation(line: 189, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !363, file: !1, line: 189, column: 9)
!515 = !DILocation(line: 189, column: 9, scope: !363)
!516 = !DILocation(line: 190, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 189, column: 23)
!518 = !{!519, !110, i64 24}
!519 = !{!"raxIterator", !520, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !113, i64 32, !113, i64 40, !111, i64 48, !110, i64 176, !521, i64 184, !110, i64 472}
!520 = !{!"int", !111, i64 0}
!521 = !{!"raxStack", !110, i64 0, !113, i64 8, !113, i64 16, !111, i64 24, !520, i64 280}
!522 = !DILocation(line: 191, column: 20, scope: !517)
!523 = !DILocation(line: 192, column: 5, scope: !517)
!524 = !DILocation(line: 0, scope: !363)
!525 = !DILocation(line: 193, column: 5, scope: !363)
!526 = !DILocation(line: 197, column: 9, scope: !363)
!527 = !DILocation(line: 198, column: 14, scope: !528)
!528 = distinct !DILexicalBlock(scope: !363, file: !1, line: 197, column: 9)
!529 = !DILocation(line: 198, column: 9, scope: !528)
!530 = !DILocation(line: 196, column: 14, scope: !363)
!531 = !DILocation(line: 74, column: 29, scope: !164, inlinedAt: !532)
!532 = distinct !DILocation(line: 200, column: 9, scope: !528)
!533 = !DILocation(line: 74, column: 48, scope: !164, inlinedAt: !532)
!534 = !DILocation(line: 75, column: 19, scope: !164, inlinedAt: !532)
!535 = !DILocation(line: 75, column: 14, scope: !164, inlinedAt: !532)
!536 = !DILocation(line: 76, column: 23, scope: !177, inlinedAt: !532)
!537 = !DILocation(line: 76, column: 12, scope: !177, inlinedAt: !532)
!538 = !DILocation(line: 76, column: 9, scope: !164, inlinedAt: !532)
!539 = !DILocation(line: 81, column: 32, scope: !181, inlinedAt: !532)
!540 = !DILocation(line: 81, column: 35, scope: !181, inlinedAt: !532)
!541 = !DILocation(line: 0, scope: !528)
!542 = !DILocation(line: 83, column: 1, scope: !164, inlinedAt: !532)
!543 = !DILocation(line: 205, column: 5, scope: !363)
!544 = !DILocation(line: 205, column: 14, scope: !363)
!545 = !DILocation(line: 243, column: 12, scope: !427)
!546 = !DILocation(line: 243, column: 9, scope: !363)
!547 = !DILocation(line: 244, column: 20, scope: !425)
!548 = !{!549, !113, i64 2848}
!549 = !{!"redisServer", !520, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !520, i64 32, !520, i64 36, !520, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !520, i64 80, !520, i64 84, !520, i64 88, !520, i64 92, !110, i64 96, !110, i64 104, !520, i64 112, !520, i64 116, !111, i64 120, !520, i64 164, !113, i64 168, !520, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !111, i64 208, !520, i64 216, !520, i64 220, !111, i64 224, !520, i64 352, !110, i64 360, !520, i64 368, !111, i64 372, !520, i64 436, !520, i64 440, !111, i64 444, !520, i64 508, !110, i64 512, !110, i64 520, !110, i64 528, !110, i64 536, !110, i64 544, !110, i64 552, !110, i64 560, !520, i64 568, !266, i64 576, !111, i64 584, !110, i64 840, !113, i64 848, !520, i64 856, !520, i64 860, !113, i64 864, !113, i64 872, !113, i64 880, !113, i64 888, !110, i64 896, !110, i64 904, !110, i64 912, !110, i64 920, !110, i64 928, !110, i64 936, !110, i64 944, !110, i64 952, !110, i64 960, !110, i64 968, !110, i64 976, !110, i64 984, !110, i64 992, !113, i64 1000, !266, i64 1008, !266, i64 1016, !266, i64 1024, !550, i64 1032, !266, i64 1040, !266, i64 1048, !266, i64 1056, !266, i64 1064, !266, i64 1072, !266, i64 1080, !266, i64 1088, !266, i64 1096, !266, i64 1104, !113, i64 1112, !266, i64 1120, !550, i64 1128, !266, i64 1136, !266, i64 1144, !266, i64 1152, !266, i64 1160, !110, i64 1168, !266, i64 1176, !266, i64 1184, !113, i64 1192, !551, i64 1200, !266, i64 1240, !266, i64 1248, !113, i64 1256, !113, i64 1264, !111, i64 1272, !520, i64 1728, !520, i64 1732, !520, i64 1736, !520, i64 1740, !520, i64 1744, !113, i64 1752, !520, i64 1760, !520, i64 1764, !520, i64 1768, !520, i64 1772, !113, i64 1776, !113, i64 1784, !520, i64 1792, !520, i64 1796, !520, i64 1800, !520, i64 1804, !111, i64 1808, !520, i64 1880, !520, i64 1884, !110, i64 1888, !520, i64 1896, !520, i64 1900, !113, i64 1904, !113, i64 1912, !113, i64 1920, !113, i64 1928, !520, i64 1936, !520, i64 1940, !110, i64 1944, !110, i64 1952, !520, i64 1960, !520, i64 1964, !113, i64 1968, !113, i64 1976, !113, i64 1984, !113, i64 1992, !520, i64 2000, !113, i64 2008, !520, i64 2016, !520, i64 2020, !520, i64 2024, !520, i64 2028, !520, i64 2032, !520, i64 2036, !520, i64 2040, !520, i64 2044, !520, i64 2048, !520, i64 2052, !520, i64 2056, !520, i64 2060, !520, i64 2064, !110, i64 2072, !266, i64 2080, !266, i64 2088, !520, i64 2096, !110, i64 2104, !520, i64 2112, !110, i64 2120, !520, i64 2128, !520, i64 2132, !113, i64 2136, !113, i64 2144, !113, i64 2152, !113, i64 2160, !520, i64 2168, !520, i64 2172, !520, i64 2176, !520, i64 2180, !520, i64 2184, !520, i64 2188, !111, i64 2192, !552, i64 2200, !553, i64 2224, !110, i64 2240, !520, i64 2248, !110, i64 2256, !520, i64 2264, !111, i64 2268, !111, i64 2309, !266, i64 2352, !266, i64 2360, !520, i64 2368, !520, i64 2372, !110, i64 2376, !266, i64 2384, !266, i64 2392, !266, i64 2400, !266, i64 2408, !113, i64 2416, !113, i64 2424, !520, i64 2432, !520, i64 2436, !520, i64 2440, !520, i64 2444, !520, i64 2448, !110, i64 2456, !110, i64 2464, !520, i64 2472, !520, i64 2476, !110, i64 2480, !110, i64 2488, !520, i64 2496, !520, i64 2500, !113, i64 2504, !113, i64 2512, !113, i64 2520, !520, i64 2528, !520, i64 2532, !110, i64 2536, !113, i64 2544, !520, i64 2552, !520, i64 2556, !520, i64 2560, !113, i64 2568, !520, i64 2576, !520, i64 2580, !520, i64 2584, !110, i64 2592, !111, i64 2600, !266, i64 2648, !520, i64 2656, !110, i64 2664, !110, i64 2672, !520, i64 2680, !110, i64 2688, !520, i64 2696, !520, i64 2700, !266, i64 2704, !520, i64 2712, !520, i64 2716, !520, i64 2720, !520, i64 2724, !266, i64 2728, !520, i64 2736, !111, i64 2740, !110, i64 2768, !110, i64 2776, !520, i64 2784, !520, i64 2788, !520, i64 2792, !520, i64 2796, !113, i64 2800, !113, i64 2808, !113, i64 2816, !113, i64 2824, !113, i64 2832, !113, i64 2840, !113, i64 2848, !113, i64 2856, !520, i64 2864, !520, i64 2868, !113, i64 2872, !113, i64 2880, !520, i64 2888, !266, i64 2896, !110, i64 2904, !110, i64 2912, !520, i64 2920, !520, i64 2924, !266, i64 2928, !110, i64 2936, !110, i64 2944, !520, i64 2952, !520, i64 2956, !520, i64 2960, !520, i64 2964, !110, i64 2968, !520, i64 2976, !520, i64 2980, !520, i64 2984, !110, i64 2992, !110, i64 3000, !110, i64 3008, !110, i64 3016, !266, i64 3024, !266, i64 3032, !266, i64 3040, !520, i64 3048, !520, i64 3052, !520, i64 3056, !520, i64 3060, !520, i64 3064, !520, i64 3068, !520, i64 3072, !520, i64 3076, !520, i64 3080, !520, i64 3084, !520, i64 3088, !266, i64 3096, !110, i64 3104, !110, i64 3112, !110, i64 3120, !520, i64 3128, !520, i64 3132, !520, i64 3136, !113, i64 3144, !110, i64 3152, !110, i64 3160, !110, i64 3168}
!550 = !{!"double", !111, i64 0}
!551 = !{!"malloc_stats", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32}
!552 = !{!"", !520, i64 0, !113, i64 8, !266, i64 16}
!553 = !{!"redisOpArray", !110, i64 0, !520, i64 8}
!554 = !DILocation(line: 244, column: 13, scope: !425)
!555 = !DILocation(line: 245, column: 22, scope: !425)
!556 = !DILocation(line: 244, column: 42, scope: !425)
!557 = !DILocation(line: 248, column: 27, scope: !424)
!558 = !{!549, !113, i64 2856}
!559 = !DILocation(line: 248, column: 20, scope: !424)
!560 = !DILocation(line: 248, column: 20, scope: !425)
!561 = !DILocation(line: 249, column: 42, scope: !423)
!562 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !563)
!563 = distinct !DILocation(line: 249, column: 29, scope: !423)
!564 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !563)
!565 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !563)
!566 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !563)
!567 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !563)
!568 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !563)
!569 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !563)
!570 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !563)
!571 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !563)
!572 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !563)
!573 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !563)
!574 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !563)
!575 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !563)
!576 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !563)
!577 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !563)
!578 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !563)
!579 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !563)
!580 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !563)
!581 = !DILocation(line: 0, scope: !238, inlinedAt: !563)
!582 = !DILocation(line: 249, column: 21, scope: !423)
!583 = !DILocation(line: 250, column: 32, scope: !584)
!584 = distinct !DILexicalBlock(scope: !423, file: !1, line: 250, column: 17)
!585 = !DILocation(line: 250, column: 23, scope: !584)
!586 = !DILocation(line: 250, column: 17, scope: !423)
!587 = !DILocation(line: 255, column: 41, scope: !432)
!588 = !DILocation(line: 251, column: 9, scope: !423)
!589 = !DILocation(line: 0, scope: !517)
!590 = !DILocation(line: 254, column: 9, scope: !363)
!591 = !DILocation(line: 255, column: 12, scope: !432)
!592 = !DILocation(line: 255, column: 32, scope: !432)
!593 = !DILocation(line: 255, column: 20, scope: !432)
!594 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !461)
!595 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !461)
!596 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !461)
!597 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !461)
!598 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !461)
!599 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !461)
!600 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !461)
!601 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !461)
!602 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !461)
!603 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !461)
!604 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !461)
!605 = !DILocation(line: 259, column: 14, scope: !431)
!606 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !480)
!607 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !480)
!608 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !480)
!609 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !480)
!610 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !480)
!611 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !480)
!612 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !480)
!613 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !480)
!614 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !478)
!615 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !478)
!616 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !478)
!617 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !478)
!618 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !478)
!619 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !478)
!620 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !478)
!621 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !478)
!622 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !476)
!623 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !476)
!624 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !476)
!625 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !476)
!626 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !476)
!627 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !476)
!628 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !476)
!629 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !476)
!630 = !DILocation(line: 263, column: 22, scope: !430)
!631 = !DILocation(line: 263, column: 31, scope: !435)
!632 = !DILocation(line: 263, column: 9, scope: !430)
!633 = !DILocation(line: 0, scope: !434)
!634 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !474)
!635 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !474)
!636 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !474)
!637 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !474)
!638 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !474)
!639 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !474)
!640 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !474)
!641 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !474)
!642 = !DILocation(line: 268, column: 22, scope: !431)
!643 = !DILocation(line: 268, column: 9, scope: !431)
!644 = !DILocation(line: 272, column: 5, scope: !431)
!645 = !DILocation(line: 264, column: 31, scope: !434)
!646 = !DILocation(line: 264, column: 25, scope: !434)
!647 = !DILocation(line: 264, column: 36, scope: !434)
!648 = !{!649, !110, i64 8}
!649 = !{!"redisObject", !520, i64 0, !520, i64 0, !520, i64 1, !520, i64 4, !110, i64 8}
!650 = !DILocation(line: 264, column: 17, scope: !434)
!651 = !DILocalVariable(name: "s", arg: 1, scope: !652, file: !20, line: 87, type: !657)
!652 = distinct !DISubprogram(name: "sdslen", scope: !20, file: !20, line: 87, type: !653, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !658)
!653 = !DISubroutineType(types: !654)
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !656, line: 58, baseType: !17)
!656 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!658 = !{!651, !659}
!659 = !DILocalVariable(name: "flags", scope: !652, file: !20, line: 88, type: !9)
!660 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !661)
!661 = distinct !DILocation(line: 265, column: 52, scope: !434)
!662 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !661)
!663 = !{!111, !111, i64 0}
!664 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !661)
!665 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !661)
!666 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !661)
!667 = distinct !DILexicalBlock(scope: !652, file: !20, line: 89, column: 33)
!668 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !661)
!669 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !661)
!670 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !661)
!671 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !661)
!672 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !661)
!673 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !661)
!674 = !{!675, !675, i64 0}
!675 = !{!"short", !111, i64 0}
!676 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !661)
!677 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !661)
!678 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !661)
!679 = !{!520, !520, i64 0}
!680 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !661)
!681 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !661)
!682 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !661)
!683 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !661)
!684 = !DILocation(line: 0, scope: !667, inlinedAt: !661)
!685 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !661)
!686 = !DILocation(line: 265, column: 52, scope: !434)
!687 = !DILocation(line: 265, column: 18, scope: !434)
!688 = !DILocation(line: 263, column: 45, scope: !435)
!689 = distinct !{!689, !632, !690}
!690 = !DILocation(line: 266, column: 9, scope: !430)
!691 = !DILocation(line: 273, column: 9, scope: !438)
!692 = !{!519, !113, i64 32}
!693 = !DILocation(line: 274, column: 27, scope: !438)
!694 = !{!519, !110, i64 16}
!695 = !DILocation(line: 274, column: 9, scope: !438)
!696 = !DILocation(line: 206, column: 14, scope: !363)
!697 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !459)
!698 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !459)
!699 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !459)
!700 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !459)
!701 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !459)
!702 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !459)
!703 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !459)
!704 = !DILocation(line: 278, column: 9, scope: !438)
!705 = !DILocation(line: 278, column: 33, scope: !438)
!706 = !DILocation(line: 278, column: 24, scope: !438)
!707 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !708)
!708 = distinct !DILocation(line: 281, column: 25, scope: !438)
!709 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !708)
!710 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !708)
!711 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !708)
!712 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !708)
!713 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !708)
!714 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !708)
!715 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !708)
!716 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !708)
!717 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !708)
!718 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !708)
!719 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !708)
!720 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !708)
!721 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !708)
!722 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !708)
!723 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !708)
!724 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !708)
!725 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !708)
!726 = !DILocation(line: 0, scope: !238, inlinedAt: !708)
!727 = !DILocation(line: 281, column: 17, scope: !438)
!728 = !DILocation(line: 282, column: 47, scope: !438)
!729 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !472)
!730 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !472)
!731 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !472)
!732 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !472)
!733 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !472)
!734 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !472)
!735 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !472)
!736 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !472)
!737 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !472)
!738 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !472)
!739 = !DILocation(line: 283, column: 28, scope: !438)
!740 = !DILocation(line: 283, column: 18, scope: !438)
!741 = !DILocation(line: 283, column: 16, scope: !438)
!742 = !DILocation(line: 284, column: 18, scope: !438)
!743 = !DILocation(line: 284, column: 16, scope: !438)
!744 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !745)
!745 = distinct !DILocation(line: 288, column: 39, scope: !438)
!746 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !745)
!747 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !745)
!748 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !745)
!749 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !745)
!750 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !745)
!751 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !745)
!752 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !745)
!753 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !745)
!754 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !745)
!755 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !745)
!756 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !745)
!757 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !745)
!758 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !745)
!759 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !745)
!760 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !745)
!761 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !745)
!762 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !745)
!763 = !DILocation(line: 0, scope: !238, inlinedAt: !745)
!764 = !DILocation(line: 288, column: 17, scope: !438)
!765 = !DILocation(line: 289, column: 28, scope: !438)
!766 = !DILocation(line: 289, column: 18, scope: !438)
!767 = !DILocation(line: 289, column: 16, scope: !438)
!768 = !DILocation(line: 290, column: 23, scope: !443)
!769 = !DILocation(line: 290, column: 13, scope: !438)
!770 = !DILocation(line: 291, column: 21, scope: !442)
!771 = !DILocation(line: 292, column: 27, scope: !446)
!772 = !DILocation(line: 292, column: 13, scope: !447)
!773 = !DILocation(line: 296, column: 42, scope: !445)
!774 = !DILocation(line: 293, column: 35, scope: !445)
!775 = !DILocation(line: 293, column: 29, scope: !445)
!776 = !DILocation(line: 293, column: 40, scope: !445)
!777 = !DILocation(line: 293, column: 21, scope: !445)
!778 = !DILocation(line: 294, column: 17, scope: !445)
!779 = !DILocation(line: 295, column: 17, scope: !445)
!780 = !DILocation(line: 295, column: 31, scope: !445)
!781 = !DILocation(line: 294, column: 25, scope: !445)
!782 = !DILocation(line: 296, column: 36, scope: !445)
!783 = !DILocation(line: 296, column: 32, scope: !445)
!784 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !785)
!785 = distinct !DILocation(line: 298, column: 21, scope: !786)
!786 = distinct !DILexicalBlock(scope: !445, file: !1, line: 298, column: 21)
!787 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !785)
!788 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !785)
!789 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !785)
!790 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !785)
!791 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !785)
!792 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !785)
!793 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !785)
!794 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !785)
!795 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !785)
!796 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !785)
!797 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !785)
!798 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !785)
!799 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !785)
!800 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !785)
!801 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !785)
!802 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !785)
!803 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !785)
!804 = !DILocation(line: 0, scope: !667, inlinedAt: !785)
!805 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !785)
!806 = !DILocation(line: 298, column: 46, scope: !786)
!807 = !DILocation(line: 298, column: 35, scope: !786)
!808 = !DILocation(line: 298, column: 52, scope: !786)
!809 = !DILocation(line: 299, column: 21, scope: !786)
!810 = !DILocation(line: 299, column: 43, scope: !786)
!811 = !DILocation(line: 298, column: 21, scope: !445)
!812 = !DILocation(line: 300, column: 36, scope: !445)
!813 = !DILocation(line: 300, column: 26, scope: !445)
!814 = !DILocation(line: 300, column: 24, scope: !445)
!815 = !DILocation(line: 301, column: 13, scope: !446)
!816 = !DILocation(line: 292, column: 51, scope: !446)
!817 = distinct !{!817, !772, !818}
!818 = !DILocation(line: 301, column: 13, scope: !447)
!819 = !DILocation(line: 304, column: 19, scope: !820)
!820 = distinct !DILexicalBlock(scope: !442, file: !1, line: 304, column: 17)
!821 = !DILocation(line: 304, column: 17, scope: !442)
!822 = !DILocation(line: 305, column: 9, scope: !442)
!823 = !DILocation(line: 306, column: 5, scope: !432)
!824 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !470)
!825 = !DILocation(line: 0, scope: !438)
!826 = !DILocation(line: 0, scope: !820)
!827 = !DILocation(line: 330, column: 29, scope: !363)
!828 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !470)
!829 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !470)
!830 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !470)
!831 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !470)
!832 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !470)
!833 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !470)
!834 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !470)
!835 = !DILocation(line: 331, column: 35, scope: !363)
!836 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !468)
!837 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !468)
!838 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !468)
!839 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !468)
!840 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !468)
!841 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !468)
!842 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !468)
!843 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !468)
!844 = !DILocation(line: 332, column: 36, scope: !363)
!845 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !466)
!846 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !466)
!847 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !466)
!848 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !466)
!849 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !466)
!850 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !466)
!851 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !466)
!852 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !466)
!853 = !DILocation(line: 333, column: 17, scope: !464)
!854 = !DILocation(line: 333, column: 9, scope: !363)
!855 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !463)
!856 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !463)
!857 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !463)
!858 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !463)
!859 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !463)
!860 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !463)
!861 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !463)
!862 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !463)
!863 = !DILocation(line: 334, column: 9, scope: !464)
!864 = !DILocation(line: 0, scope: !464)
!865 = !DILocation(line: 335, column: 18, scope: !452)
!866 = !DILocation(line: 335, column: 27, scope: !455)
!867 = !DILocation(line: 335, column: 5, scope: !452)
!868 = !DILocation(line: 0, scope: !454)
!869 = !DILocation(line: 342, column: 13, scope: !363)
!870 = !DILocation(line: 343, column: 14, scope: !363)
!871 = !DILocation(line: 347, column: 30, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 344, column: 49)
!873 = distinct !DILexicalBlock(scope: !363, file: !1, line: 344, column: 9)
!874 = !DILocation(line: 344, column: 9, scope: !363)
!875 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !482)
!876 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !482)
!877 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !482)
!878 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !482)
!879 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !482)
!880 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !482)
!881 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !482)
!882 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !482)
!883 = !DILocation(line: 352, column: 12, scope: !884)
!884 = distinct !DILexicalBlock(scope: !363, file: !1, line: 352, column: 9)
!885 = !DILocation(line: 352, column: 17, scope: !884)
!886 = !DILocation(line: 352, column: 9, scope: !363)
!887 = !DILocation(line: 336, column: 27, scope: !454)
!888 = !DILocation(line: 336, column: 21, scope: !454)
!889 = !DILocation(line: 336, column: 32, scope: !454)
!890 = !DILocation(line: 336, column: 13, scope: !454)
!891 = !DILocation(line: 336, column: 53, scope: !454)
!892 = !DILocation(line: 336, column: 45, scope: !454)
!893 = !DILocation(line: 336, column: 58, scope: !454)
!894 = !DILocation(line: 336, column: 37, scope: !454)
!895 = !DILocation(line: 337, column: 13, scope: !454)
!896 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !897)
!897 = distinct !DILocation(line: 338, column: 52, scope: !898)
!898 = distinct !DILexicalBlock(scope: !454, file: !1, line: 337, column: 13)
!899 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !897)
!900 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !897)
!901 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !897)
!902 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !897)
!903 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !897)
!904 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !897)
!905 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !897)
!906 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !897)
!907 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !897)
!908 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !897)
!909 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !897)
!910 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !897)
!911 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !897)
!912 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !897)
!913 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !897)
!914 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !897)
!915 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !897)
!916 = !DILocation(line: 0, scope: !667, inlinedAt: !897)
!917 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !897)
!918 = !DILocation(line: 338, column: 52, scope: !898)
!919 = !DILocation(line: 338, column: 18, scope: !898)
!920 = !DILocation(line: 338, column: 13, scope: !898)
!921 = !DILocation(line: 0, scope: !898)
!922 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !923)
!923 = distinct !DILocation(line: 339, column: 48, scope: !454)
!924 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !923)
!925 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !923)
!926 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !923)
!927 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !923)
!928 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !923)
!929 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !923)
!930 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !923)
!931 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !923)
!932 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !923)
!933 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !923)
!934 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !923)
!935 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !923)
!936 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !923)
!937 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !923)
!938 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !923)
!939 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !923)
!940 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !923)
!941 = !DILocation(line: 0, scope: !667, inlinedAt: !923)
!942 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !923)
!943 = !DILocation(line: 339, column: 48, scope: !454)
!944 = !DILocation(line: 339, column: 14, scope: !454)
!945 = !DILocation(line: 335, column: 41, scope: !455)
!946 = distinct !{!946, !867, !947}
!947 = !DILocation(line: 340, column: 5, scope: !452)
!948 = !DILocation(line: 353, column: 22, scope: !884)
!949 = !DILocation(line: 353, column: 9, scope: !884)
!950 = !DILocation(line: 354, column: 8, scope: !363)
!951 = !DILocation(line: 354, column: 14, scope: !363)
!952 = !{!109, !113, i64 8}
!953 = !DILocation(line: 355, column: 18, scope: !363)
!954 = !DILocation(line: 356, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !363, file: !1, line: 356, column: 9)
!956 = !DILocation(line: 356, column: 9, scope: !363)
!957 = !DILocation(line: 356, column: 31, scope: !955)
!958 = !DILocation(line: 356, column: 19, scope: !955)
!959 = !DILocation(line: 358, column: 1, scope: !363)
!960 = distinct !DISubprogram(name: "streamTrimByLength", scope: !1, file: !1, line: 374, type: !961, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !963)
!961 = !DISubroutineType(types: !962)
!962 = !{!196, !69, !13, !12}
!963 = !{!964, !965, !966, !967, !968, !969, !971, !972, !973, !974, !975, !976, !978, !980}
!964 = !DILocalVariable(name: "s", arg: 1, scope: !960, file: !1, line: 374, type: !69)
!965 = !DILocalVariable(name: "maxlen", arg: 2, scope: !960, file: !1, line: 374, type: !13)
!966 = !DILocalVariable(name: "approx", arg: 3, scope: !960, file: !1, line: 374, type: !12)
!967 = !DILocalVariable(name: "ri", scope: !960, file: !1, line: 377, type: !384)
!968 = !DILocalVariable(name: "deleted", scope: !960, file: !1, line: 381, type: !196)
!969 = !DILocalVariable(name: "lp", scope: !970, file: !1, line: 383, type: !8)
!970 = distinct !DILexicalBlock(scope: !960, file: !1, line: 382, column: 47)
!971 = !DILocalVariable(name: "p", scope: !970, file: !1, line: 383, type: !8)
!972 = !DILocalVariable(name: "entries", scope: !970, file: !1, line: 384, type: !196)
!973 = !DILocalVariable(name: "to_delete", scope: !970, file: !1, line: 403, type: !196)
!974 = !DILocalVariable(name: "marked_deleted", scope: !970, file: !1, line: 407, type: !196)
!975 = !DILocalVariable(name: "master_fields_count", scope: !970, file: !1, line: 412, type: !196)
!976 = !DILocalVariable(name: "j", scope: !977, file: !1, line: 414, type: !196)
!977 = distinct !DILexicalBlock(scope: !970, file: !1, line: 414, column: 9)
!978 = !DILocalVariable(name: "flags", scope: !979, file: !1, line: 422, type: !12)
!979 = distinct !DILexicalBlock(scope: !970, file: !1, line: 421, column: 18)
!980 = !DILocalVariable(name: "to_skip", scope: !979, file: !1, line: 423, type: !12)
!981 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !982)
!982 = distinct !DILocation(line: 428, column: 22, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 426, column: 54)
!984 = distinct !DILexicalBlock(scope: !979, file: !1, line: 426, column: 17)
!985 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !986)
!986 = distinct !DILocation(line: 408, column: 14, scope: !970)
!987 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !988)
!988 = distinct !DILocation(line: 405, column: 14, scope: !970)
!989 = !DILocation(line: 374, column: 36, scope: !960)
!990 = !DILocation(line: 374, column: 46, scope: !960)
!991 = !DILocation(line: 374, column: 58, scope: !960)
!992 = !DILocation(line: 375, column: 12, scope: !993)
!993 = distinct !DILexicalBlock(scope: !960, file: !1, line: 375, column: 9)
!994 = !DILocation(line: 375, column: 19, scope: !993)
!995 = !DILocation(line: 375, column: 9, scope: !960)
!996 = !DILocation(line: 377, column: 5, scope: !960)
!997 = !DILocation(line: 378, column: 21, scope: !960)
!998 = !DILocation(line: 377, column: 17, scope: !960)
!999 = !DILocation(line: 378, column: 5, scope: !960)
!1000 = !DILocation(line: 379, column: 5, scope: !960)
!1001 = !DILocation(line: 381, column: 13, scope: !960)
!1002 = !DILocation(line: 382, column: 14, scope: !960)
!1003 = !DILocation(line: 382, column: 21, scope: !960)
!1004 = !DILocation(line: 382, column: 30, scope: !960)
!1005 = !DILocation(line: 382, column: 33, scope: !960)
!1006 = !DILocation(line: 382, column: 5, scope: !960)
!1007 = !DILocation(line: 383, column: 32, scope: !970)
!1008 = !DILocation(line: 383, column: 24, scope: !970)
!1009 = !DILocation(line: 383, column: 9, scope: !970)
!1010 = !DILocation(line: 383, column: 43, scope: !970)
!1011 = !DILocation(line: 383, column: 39, scope: !970)
!1012 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 384, column: 27, scope: !970)
!1014 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1013)
!1015 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1013)
!1016 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1013)
!1017 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1013)
!1018 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1013)
!1019 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1013)
!1020 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1013)
!1021 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1013)
!1022 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1013)
!1023 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1013)
!1024 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1013)
!1025 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1013)
!1026 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1013)
!1027 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1013)
!1028 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1013)
!1029 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1013)
!1030 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1013)
!1031 = !DILocation(line: 0, scope: !238, inlinedAt: !1013)
!1032 = !DILocation(line: 384, column: 17, scope: !970)
!1033 = !DILocation(line: 388, column: 16, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !970, file: !1, line: 388, column: 13)
!1035 = !DILocation(line: 388, column: 23, scope: !1034)
!1036 = !DILocation(line: 388, column: 33, scope: !1034)
!1037 = !DILocation(line: 388, column: 13, scope: !970)
!1038 = !DILocation(line: 399, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !970, file: !1, line: 399, column: 13)
!1040 = !DILocation(line: 399, column: 13, scope: !970)
!1041 = !DILocation(line: 403, column: 39, scope: !970)
!1042 = !DILocation(line: 403, column: 17, scope: !970)
!1043 = !DILocation(line: 404, column: 9, scope: !970)
!1044 = !DILocation(line: 405, column: 44, scope: !970)
!1045 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !988)
!1046 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !988)
!1047 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !988)
!1048 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !988)
!1049 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !988)
!1050 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !988)
!1051 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !988)
!1052 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !988)
!1053 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !988)
!1054 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !988)
!1055 = !DILocation(line: 406, column: 23, scope: !970)
!1056 = !DILocation(line: 406, column: 13, scope: !970)
!1057 = !DILocation(line: 406, column: 11, scope: !970)
!1058 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 407, column: 34, scope: !970)
!1060 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1059)
!1061 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1059)
!1062 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1059)
!1063 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1059)
!1064 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1059)
!1065 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1059)
!1066 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1059)
!1067 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1059)
!1068 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1059)
!1069 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1059)
!1070 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1059)
!1071 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1059)
!1072 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1059)
!1073 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1059)
!1074 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1059)
!1075 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1059)
!1076 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1059)
!1077 = !DILocation(line: 0, scope: !238, inlinedAt: !1059)
!1078 = !DILocation(line: 407, column: 17, scope: !970)
!1079 = !DILocation(line: 408, column: 51, scope: !970)
!1080 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !986)
!1081 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !986)
!1082 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !986)
!1083 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !986)
!1084 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !986)
!1085 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !986)
!1086 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !986)
!1087 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !986)
!1088 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !986)
!1089 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !986)
!1090 = !DILocation(line: 409, column: 23, scope: !970)
!1091 = !DILocation(line: 409, column: 13, scope: !970)
!1092 = !DILocation(line: 409, column: 11, scope: !970)
!1093 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 412, column: 39, scope: !970)
!1095 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1094)
!1096 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1094)
!1097 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1094)
!1098 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1094)
!1099 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1094)
!1100 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1094)
!1101 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1094)
!1102 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1094)
!1103 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1094)
!1104 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1094)
!1105 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1094)
!1106 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1094)
!1107 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1094)
!1108 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1094)
!1109 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1094)
!1110 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1094)
!1111 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1094)
!1112 = !DILocation(line: 0, scope: !238, inlinedAt: !1094)
!1113 = !DILocation(line: 412, column: 17, scope: !970)
!1114 = !DILocation(line: 413, column: 23, scope: !970)
!1115 = !DILocation(line: 413, column: 13, scope: !970)
!1116 = !DILocation(line: 413, column: 11, scope: !970)
!1117 = !DILocation(line: 414, column: 22, scope: !977)
!1118 = !DILocation(line: 414, column: 14, scope: !977)
!1119 = !DILocation(line: 0, scope: !970)
!1120 = !DILocation(line: 0, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !977, file: !1, line: 414, column: 9)
!1122 = !DILocation(line: 414, column: 31, scope: !1121)
!1123 = !DILocation(line: 414, column: 55, scope: !1121)
!1124 = !DILocation(line: 414, column: 9, scope: !977)
!1125 = distinct !{!1125, !1124, !1126}
!1126 = !DILocation(line: 415, column: 28, scope: !977)
!1127 = !DILocation(line: 421, column: 9, scope: !970)
!1128 = !DILocation(line: 422, column: 38, scope: !979)
!1129 = !DILocation(line: 408, column: 12, scope: !970)
!1130 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 422, column: 25, scope: !979)
!1132 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1131)
!1133 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1131)
!1134 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1131)
!1135 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1131)
!1136 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1131)
!1137 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1131)
!1138 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1131)
!1139 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1131)
!1140 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1131)
!1141 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1131)
!1142 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1131)
!1143 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1131)
!1144 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1131)
!1145 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1131)
!1146 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1131)
!1147 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1131)
!1148 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1131)
!1149 = !DILocation(line: 0, scope: !238, inlinedAt: !1131)
!1150 = !DILocation(line: 422, column: 25, scope: !979)
!1151 = !DILocation(line: 422, column: 17, scope: !979)
!1152 = !DILocation(line: 426, column: 25, scope: !984)
!1153 = !DILocation(line: 426, column: 17, scope: !979)
!1154 = !DILocation(line: 427, column: 23, scope: !983)
!1155 = !DILocation(line: 428, column: 45, scope: !983)
!1156 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !982)
!1157 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !982)
!1158 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !982)
!1159 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !982)
!1160 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !982)
!1161 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !982)
!1162 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !982)
!1163 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !982)
!1164 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !982)
!1165 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !982)
!1166 = !DILocation(line: 429, column: 24, scope: !983)
!1167 = !DILocation(line: 430, column: 26, scope: !983)
!1168 = !DILocation(line: 431, column: 31, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !983, file: !1, line: 431, column: 21)
!1170 = !DILocation(line: 431, column: 21, scope: !983)
!1171 = !DILocation(line: 0, scope: !983)
!1172 = !DILocation(line: 434, column: 27, scope: !979)
!1173 = !DILocation(line: 434, column: 17, scope: !979)
!1174 = !DILocation(line: 434, column: 15, scope: !979)
!1175 = !DILocation(line: 435, column: 17, scope: !979)
!1176 = !DILocation(line: 435, column: 15, scope: !979)
!1177 = !DILocation(line: 436, column: 17, scope: !979)
!1178 = !DILocation(line: 436, column: 15, scope: !979)
!1179 = !DILocation(line: 437, column: 23, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !979, file: !1, line: 437, column: 17)
!1181 = !DILocation(line: 437, column: 17, scope: !979)
!1182 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 440, column: 27, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 439, column: 20)
!1185 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1183)
!1186 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1183)
!1187 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1183)
!1188 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1183)
!1189 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1183)
!1190 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1183)
!1191 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1183)
!1192 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1183)
!1193 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1183)
!1194 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1183)
!1195 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1183)
!1196 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1183)
!1197 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1183)
!1198 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1183)
!1199 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1183)
!1200 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1183)
!1201 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1183)
!1202 = !DILocation(line: 0, scope: !238, inlinedAt: !1183)
!1203 = !DILocation(line: 440, column: 27, scope: !1184)
!1204 = !DILocation(line: 423, column: 17, scope: !979)
!1205 = !DILocation(line: 441, column: 37, scope: !1184)
!1206 = !DILocation(line: 441, column: 28, scope: !1184)
!1207 = !DILocation(line: 0, scope: !979)
!1208 = !DILocation(line: 444, column: 26, scope: !979)
!1209 = !DILocation(line: 444, column: 13, scope: !979)
!1210 = distinct !{!1210, !1209, !1211}
!1211 = !DILocation(line: 444, column: 45, scope: !979)
!1212 = distinct !{!1212, !1127, !1213}
!1213 = !DILocation(line: 446, column: 9, scope: !970)
!1214 = !DILocation(line: 457, column: 22, scope: !970)
!1215 = !DILocation(line: 457, column: 29, scope: !970)
!1216 = !DILocation(line: 457, column: 36, scope: !970)
!1217 = !DILocation(line: 457, column: 9, scope: !970)
!1218 = !DILocation(line: 461, column: 5, scope: !960)
!1219 = !DILocation(line: 389, column: 13, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 388, column: 44)
!1221 = !DILocation(line: 390, column: 26, scope: !1220)
!1222 = !DILocation(line: 390, column: 33, scope: !1220)
!1223 = !DILocation(line: 390, column: 40, scope: !1220)
!1224 = !DILocation(line: 390, column: 13, scope: !1220)
!1225 = !DILocation(line: 391, column: 33, scope: !1220)
!1226 = !DILocation(line: 391, column: 40, scope: !1220)
!1227 = !DILocation(line: 391, column: 13, scope: !1220)
!1228 = !DILocation(line: 392, column: 23, scope: !1220)
!1229 = !DILocation(line: 393, column: 21, scope: !1220)
!1230 = !DILocation(line: 0, scope: !960)
!1231 = !DILocation(line: 463, column: 5, scope: !960)
!1232 = !DILocation(line: 465, column: 1, scope: !960)
!1233 = distinct !DISubprogram(name: "streamIteratorStart", scope: !1, file: !1, line: 488, type: !1234, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1255)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1236, !69, !167, !167, !12}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !71, line: 48, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !71, line: 29, size: 5120, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1238, file: !71, line: 30, baseType: !69, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !1238, file: !71, line: 31, baseType: !95, size: 128, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !1238, file: !71, line: 32, baseType: !57, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !1238, file: !71, line: 33, baseType: !8, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !1238, file: !71, line: 34, baseType: !8, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !1238, file: !71, line: 35, baseType: !12, size: 32, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1238, file: !71, line: 36, baseType: !12, size: 32, offset: 416)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !1238, file: !71, line: 37, baseType: !305, size: 128, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !1238, file: !71, line: 38, baseType: !305, size: 128, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !1238, file: !71, line: 39, baseType: !384, size: 3840, offset: 704)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !1238, file: !71, line: 40, baseType: !8, size: 64, offset: 4544)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !1238, file: !71, line: 41, baseType: !8, size: 64, offset: 4608)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !1238, file: !71, line: 42, baseType: !8, size: 64, offset: 4672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !1238, file: !71, line: 46, baseType: !278, size: 168, offset: 4736)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !1238, file: !71, line: 47, baseType: !278, size: 168, offset: 4904)
!1255 = !{!1256, !1257, !1258, !1259, !1260}
!1256 = !DILocalVariable(name: "si", arg: 1, scope: !1233, file: !1, line: 488, type: !1236)
!1257 = !DILocalVariable(name: "s", arg: 2, scope: !1233, file: !1, line: 488, type: !69)
!1258 = !DILocalVariable(name: "start", arg: 3, scope: !1233, file: !1, line: 488, type: !167)
!1259 = !DILocalVariable(name: "end", arg: 4, scope: !1233, file: !1, line: 488, type: !167)
!1260 = !DILocalVariable(name: "rev", arg: 5, scope: !1233, file: !1, line: 488, type: !12)
!1261 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 499, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 498, column: 14)
!1264 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 498, column: 9)
!1265 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 492, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 491, column: 16)
!1268 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 491, column: 9)
!1269 = !DILocation(line: 488, column: 42, scope: !1233)
!1270 = !DILocation(line: 488, column: 54, scope: !1233)
!1271 = !DILocation(line: 488, column: 67, scope: !1233)
!1272 = !DILocation(line: 488, column: 84, scope: !1233)
!1273 = !DILocation(line: 488, column: 93, scope: !1233)
!1274 = !DILocation(line: 491, column: 9, scope: !1268)
!1275 = !DILocation(line: 0, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 493, column: 12)
!1277 = !DILocation(line: 491, column: 9, scope: !1233)
!1278 = !DILocation(line: 492, column: 24, scope: !1267)
!1279 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1266)
!1280 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1266)
!1281 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1266)
!1282 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1266)
!1283 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1266)
!1284 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1266)
!1285 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1266)
!1286 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1266)
!1287 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1266)
!1288 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1266)
!1289 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1266)
!1290 = !DILocation(line: 493, column: 5, scope: !1267)
!1291 = !DILocation(line: 494, column: 26, scope: !1276)
!1292 = !DILocation(line: 498, column: 9, scope: !1264)
!1293 = !DILocation(line: 0, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 500, column: 12)
!1295 = !DILocation(line: 498, column: 9, scope: !1233)
!1296 = !DILocation(line: 499, column: 24, scope: !1263)
!1297 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1262)
!1298 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1262)
!1299 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1262)
!1300 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1262)
!1301 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1262)
!1302 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1262)
!1303 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1262)
!1304 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1262)
!1305 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1262)
!1306 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1262)
!1307 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1262)
!1308 = !DILocation(line: 500, column: 5, scope: !1263)
!1309 = !DILocation(line: 501, column: 24, scope: !1294)
!1310 = !DILocation(line: 506, column: 19, scope: !1233)
!1311 = !DILocation(line: 506, column: 25, scope: !1233)
!1312 = !DILocation(line: 506, column: 5, scope: !1233)
!1313 = !DILocation(line: 507, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 507, column: 9)
!1315 = !DILocation(line: 507, column: 9, scope: !1233)
!1316 = !DILocation(line: 508, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 508, column: 13)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 507, column: 15)
!1319 = !DILocation(line: 508, column: 30, scope: !1317)
!1320 = !DILocation(line: 508, column: 23, scope: !1317)
!1321 = !DILocation(line: 508, column: 33, scope: !1317)
!1322 = !DILocation(line: 508, column: 43, scope: !1317)
!1323 = !DILocation(line: 508, column: 36, scope: !1317)
!1324 = !DILocation(line: 508, column: 13, scope: !1318)
!1325 = !DILocation(line: 509, column: 34, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 508, column: 49)
!1327 = !DILocation(line: 509, column: 13, scope: !1326)
!1328 = !DILocation(line: 511, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 511, column: 17)
!1330 = !DILocation(line: 511, column: 17, scope: !1326)
!1331 = !DILocation(line: 511, column: 34, scope: !1329)
!1332 = !DILocation(line: 513, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 512, column: 16)
!1334 = !DILocation(line: 516, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1, line: 516, column: 13)
!1336 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 515, column: 12)
!1337 = !DILocation(line: 516, column: 26, scope: !1335)
!1338 = !DILocation(line: 516, column: 21, scope: !1335)
!1339 = !DILocation(line: 516, column: 29, scope: !1335)
!1340 = !DILocation(line: 516, column: 37, scope: !1335)
!1341 = !DILocation(line: 516, column: 32, scope: !1335)
!1342 = !DILocation(line: 516, column: 13, scope: !1336)
!1343 = !DILocation(line: 517, column: 34, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 516, column: 43)
!1345 = !DILocation(line: 517, column: 13, scope: !1344)
!1346 = !DILocation(line: 519, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 519, column: 17)
!1348 = !DILocation(line: 519, column: 17, scope: !1344)
!1349 = !DILocation(line: 519, column: 34, scope: !1347)
!1350 = !DILocation(line: 521, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 520, column: 16)
!1352 = !DILocation(line: 524, column: 9, scope: !1233)
!1353 = !DILocation(line: 524, column: 16, scope: !1233)
!1354 = !{!1355, !110, i64 0}
!1355 = !{!"streamIterator", !110, i64 0, !114, i64 8, !113, i64 24, !110, i64 32, !110, i64 40, !520, i64 48, !520, i64 52, !111, i64 56, !111, i64 72, !519, i64 88, !110, i64 568, !110, i64 576, !110, i64 584, !111, i64 592, !111, i64 613}
!1356 = !DILocation(line: 525, column: 9, scope: !1233)
!1357 = !DILocation(line: 525, column: 12, scope: !1233)
!1358 = !DILocation(line: 527, column: 9, scope: !1233)
!1359 = !DILocation(line: 527, column: 13, scope: !1233)
!1360 = !{!1355, !520, i64 52}
!1361 = !DILocation(line: 528, column: 1, scope: !1233)
!1362 = distinct !DISubprogram(name: "streamIteratorGetID", scope: !1, file: !1, line: 533, type: !1363, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1366)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!12, !1236, !167, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1366 = !{!1367, !1368, !1369, !1370, !1377, !1380, !1384, !1385, !1389, !1392, !1394}
!1367 = !DILocalVariable(name: "si", arg: 1, scope: !1362, file: !1, line: 533, type: !1236)
!1368 = !DILocalVariable(name: "id", arg: 2, scope: !1362, file: !1, line: 533, type: !167)
!1369 = !DILocalVariable(name: "numfields", arg: 3, scope: !1362, file: !1, line: 533, type: !1365)
!1370 = !DILocalVariable(name: "i", scope: !1371, file: !1, line: 558, type: !57)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 558, column: 17)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 555, column: 27)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 555, column: 17)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 538, column: 51)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 538, column: 13)
!1376 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 534, column: 14)
!1377 = !DILocalVariable(name: "lp_count", scope: !1378, file: !1, line: 571, type: !12)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 566, column: 29)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 566, column: 20)
!1380 = !DILocalVariable(name: "lp_count", scope: !1381, file: !1, line: 590, type: !196)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 586, column: 20)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 580, column: 17)
!1383 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 579, column: 18)
!1384 = !DILocalVariable(name: "flags", scope: !1383, file: !1, line: 601, type: !12)
!1385 = !DILocalVariable(name: "buf", scope: !1383, file: !1, line: 611, type: !1386)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 16)
!1389 = !DILocalVariable(name: "to_discard", scope: !1390, file: !1, line: 653, type: !196)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 652, column: 27)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 652, column: 17)
!1392 = !DILocalVariable(name: "i", scope: !1393, file: !1, line: 655, type: !196)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 655, column: 17)
!1394 = !DILocalVariable(name: "prev_times", scope: !1395, file: !1, line: 658, type: !196)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 657, column: 20)
!1396 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 612, column: 13, scope: !1383)
!1398 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 543, column: 13, scope: !1374)
!1400 = !DILocation(line: 533, column: 41, scope: !1362)
!1401 = !DILocation(line: 533, column: 55, scope: !1362)
!1402 = !DILocation(line: 533, column: 68, scope: !1362)
!1403 = !DILocation(line: 534, column: 5, scope: !1362)
!1404 = !DILocation(line: 538, column: 17, scope: !1375)
!1405 = !{!1355, !110, i64 568}
!1406 = !DILocation(line: 538, column: 20, scope: !1375)
!1407 = !DILocation(line: 538, column: 28, scope: !1375)
!1408 = !DILocation(line: 538, column: 35, scope: !1375)
!1409 = !{!1355, !110, i64 576}
!1410 = !DILocation(line: 538, column: 42, scope: !1375)
!1411 = !DILocation(line: 538, column: 13, scope: !1376)
!1412 = !DILocation(line: 539, column: 22, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 539, column: 17)
!1414 = !DILocation(line: 539, column: 18, scope: !1413)
!1415 = !DILocation(line: 539, column: 26, scope: !1413)
!1416 = !DILocation(line: 539, column: 30, scope: !1413)
!1417 = !DILocation(line: 539, column: 17, scope: !1374)
!1418 = !DILocation(line: 540, column: 26, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 540, column: 22)
!1420 = !DILocation(line: 540, column: 22, scope: !1419)
!1421 = !DILocation(line: 540, column: 30, scope: !1419)
!1422 = !DILocation(line: 540, column: 34, scope: !1419)
!1423 = !DILocation(line: 540, column: 22, scope: !1413)
!1424 = !DILocation(line: 541, column: 13, scope: !1374)
!1425 = !{!1355, !113, i64 120}
!1426 = !DILocation(line: 543, column: 35, scope: !1374)
!1427 = !{!1355, !110, i64 104}
!1428 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1399)
!1429 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1399)
!1430 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1399)
!1431 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1399)
!1432 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1399)
!1433 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1399)
!1434 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1399)
!1435 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1399)
!1436 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1399)
!1437 = !DILocation(line: 545, column: 29, scope: !1374)
!1438 = !{!1355, !110, i64 112}
!1439 = !DILocation(line: 545, column: 20, scope: !1374)
!1440 = !DILocation(line: 546, column: 26, scope: !1374)
!1441 = !DILocation(line: 546, column: 24, scope: !1374)
!1442 = !DILocation(line: 547, column: 37, scope: !1374)
!1443 = !DILocation(line: 547, column: 26, scope: !1374)
!1444 = !DILocation(line: 547, column: 24, scope: !1374)
!1445 = !DILocation(line: 548, column: 37, scope: !1374)
!1446 = !DILocation(line: 548, column: 26, scope: !1374)
!1447 = !DILocation(line: 548, column: 24, scope: !1374)
!1448 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 549, column: 39, scope: !1374)
!1450 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1449)
!1451 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1449)
!1452 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1449)
!1453 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1449)
!1454 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1449)
!1455 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1449)
!1456 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1449)
!1457 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1449)
!1458 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1449)
!1459 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1449)
!1460 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1449)
!1461 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1449)
!1462 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1449)
!1463 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1449)
!1464 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1449)
!1465 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1449)
!1466 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1449)
!1467 = !DILocation(line: 0, scope: !238, inlinedAt: !1449)
!1468 = !DILocation(line: 549, column: 37, scope: !1374)
!1469 = !{!1355, !113, i64 24}
!1470 = !DILocation(line: 550, column: 37, scope: !1374)
!1471 = !DILocation(line: 550, column: 44, scope: !1374)
!1472 = !DILocation(line: 550, column: 26, scope: !1374)
!1473 = !DILocation(line: 550, column: 24, scope: !1374)
!1474 = !DILocation(line: 551, column: 37, scope: !1374)
!1475 = !{!1355, !110, i64 32}
!1476 = !DILocation(line: 555, column: 22, scope: !1373)
!1477 = !DILocation(line: 555, column: 18, scope: !1373)
!1478 = !DILocation(line: 555, column: 17, scope: !1374)
!1479 = !DILocation(line: 558, column: 31, scope: !1371)
!1480 = !DILocation(line: 558, column: 46, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 558, column: 17)
!1482 = !DILocation(line: 558, column: 40, scope: !1481)
!1483 = !DILocation(line: 558, column: 17, scope: !1371)
!1484 = !DILocation(line: 559, column: 52, scope: !1481)
!1485 = !DILocation(line: 559, column: 45, scope: !1481)
!1486 = !DILocation(line: 559, column: 34, scope: !1481)
!1487 = !DILocation(line: 559, column: 32, scope: !1481)
!1488 = !DILocation(line: 558, column: 68, scope: !1481)
!1489 = distinct !{!1489, !1483, !1490}
!1490 = !DILocation(line: 559, column: 58, scope: !1371)
!1491 = !DILocation(line: 564, column: 41, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 560, column: 20)
!1493 = !DILocation(line: 564, column: 30, scope: !1492)
!1494 = !DILocation(line: 564, column: 28, scope: !1492)
!1495 = !DILocation(line: 566, column: 24, scope: !1379)
!1496 = !DILocation(line: 566, column: 20, scope: !1379)
!1497 = !DILocation(line: 566, column: 20, scope: !1375)
!1498 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 571, column: 28, scope: !1378)
!1500 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1499)
!1501 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1499)
!1502 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1499)
!1503 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1499)
!1504 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1499)
!1505 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1499)
!1506 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1499)
!1507 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1499)
!1508 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1499)
!1509 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1499)
!1510 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1499)
!1511 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1499)
!1512 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1499)
!1513 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1499)
!1514 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1499)
!1515 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1499)
!1516 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1499)
!1517 = !DILocation(line: 0, scope: !238, inlinedAt: !1499)
!1518 = !DILocation(line: 571, column: 28, scope: !1378)
!1519 = !DILocation(line: 571, column: 17, scope: !1378)
!1520 = !DILocation(line: 0, scope: !1378)
!1521 = !DILocation(line: 572, column: 13, scope: !1378)
!1522 = !DILocation(line: 572, column: 27, scope: !1378)
!1523 = distinct !{!1523, !1521, !1524}
!1524 = !DILocation(line: 572, column: 68, scope: !1378)
!1525 = !DILocation(line: 580, column: 22, scope: !1382)
!1526 = !DILocation(line: 580, column: 18, scope: !1382)
!1527 = !DILocation(line: 580, column: 17, scope: !1383)
!1528 = !DILocation(line: 584, column: 41, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 580, column: 27)
!1530 = !DILocation(line: 584, column: 48, scope: !1529)
!1531 = !DILocation(line: 584, column: 30, scope: !1529)
!1532 = !DILocation(line: 584, column: 28, scope: !1529)
!1533 = !DILocation(line: 585, column: 32, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !1, line: 585, column: 21)
!1535 = !DILocation(line: 585, column: 21, scope: !1529)
!1536 = distinct !{!1536, !1403, !1537}
!1537 = !DILocation(line: 669, column: 5, scope: !1362)
!1538 = !DILocation(line: 590, column: 53, scope: !1381)
!1539 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 590, column: 36, scope: !1381)
!1541 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1540)
!1542 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1540)
!1543 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1540)
!1544 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1540)
!1545 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1540)
!1546 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1540)
!1547 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1540)
!1548 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1540)
!1549 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1540)
!1550 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1540)
!1551 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1540)
!1552 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1540)
!1553 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1540)
!1554 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1540)
!1555 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1540)
!1556 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1540)
!1557 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1540)
!1558 = !DILocation(line: 0, scope: !238, inlinedAt: !1540)
!1559 = !DILocation(line: 590, column: 25, scope: !1381)
!1560 = !DILocation(line: 591, column: 30, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 591, column: 21)
!1562 = !DILocation(line: 591, column: 21, scope: !1381)
!1563 = !DILocation(line: 596, column: 66, scope: !1381)
!1564 = !DILocation(line: 596, column: 31, scope: !1381)
!1565 = !DILocation(line: 592, column: 28, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 591, column: 36)
!1567 = !DILocation(line: 596, column: 59, scope: !1381)
!1568 = !DILocation(line: 596, column: 48, scope: !1381)
!1569 = !DILocation(line: 596, column: 46, scope: !1381)
!1570 = !DILocation(line: 596, column: 17, scope: !1381)
!1571 = distinct !{!1571, !1570, !1572}
!1572 = !DILocation(line: 596, column: 72, scope: !1381)
!1573 = !DILocation(line: 600, column: 32, scope: !1383)
!1574 = !DILocation(line: 600, column: 26, scope: !1383)
!1575 = !{!1355, !110, i64 584}
!1576 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 601, column: 25, scope: !1383)
!1578 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1577)
!1579 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1577)
!1580 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1577)
!1581 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1577)
!1582 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1577)
!1583 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1577)
!1584 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1577)
!1585 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1577)
!1586 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1577)
!1587 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1577)
!1588 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1577)
!1589 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1577)
!1590 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1577)
!1591 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1577)
!1592 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1577)
!1593 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1577)
!1594 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1577)
!1595 = !DILocation(line: 0, scope: !238, inlinedAt: !1577)
!1596 = !DILocation(line: 601, column: 25, scope: !1383)
!1597 = !DILocation(line: 601, column: 17, scope: !1383)
!1598 = !DILocation(line: 602, column: 37, scope: !1383)
!1599 = !DILocation(line: 602, column: 44, scope: !1383)
!1600 = !DILocation(line: 602, column: 26, scope: !1383)
!1601 = !DILocation(line: 602, column: 24, scope: !1383)
!1602 = !DILocation(line: 606, column: 23, scope: !1383)
!1603 = !{i64 0, i64 8, !117, i64 8, i64 8, !117}
!1604 = !DILocation(line: 607, column: 40, scope: !1383)
!1605 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 607, column: 23, scope: !1383)
!1607 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1606)
!1608 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1606)
!1609 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1606)
!1610 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1606)
!1611 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1606)
!1612 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1606)
!1613 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1606)
!1614 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1606)
!1615 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1606)
!1616 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1606)
!1617 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1606)
!1618 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1606)
!1619 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1606)
!1620 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1606)
!1621 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1606)
!1622 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1606)
!1623 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1606)
!1624 = !DILocation(line: 0, scope: !238, inlinedAt: !1606)
!1625 = !DILocation(line: 607, column: 20, scope: !1383)
!1626 = !DILocation(line: 608, column: 37, scope: !1383)
!1627 = !DILocation(line: 608, column: 44, scope: !1383)
!1628 = !DILocation(line: 608, column: 26, scope: !1383)
!1629 = !DILocation(line: 608, column: 24, scope: !1383)
!1630 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 609, column: 24, scope: !1383)
!1632 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1631)
!1633 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1631)
!1634 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1631)
!1635 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1631)
!1636 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1631)
!1637 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1631)
!1638 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1631)
!1639 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1631)
!1640 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1631)
!1641 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1631)
!1642 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1631)
!1643 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1631)
!1644 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1631)
!1645 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1631)
!1646 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1631)
!1647 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1631)
!1648 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1631)
!1649 = !DILocation(line: 0, scope: !238, inlinedAt: !1631)
!1650 = !DILocation(line: 609, column: 21, scope: !1383)
!1651 = !DILocation(line: 610, column: 37, scope: !1383)
!1652 = !DILocation(line: 610, column: 44, scope: !1383)
!1653 = !DILocation(line: 610, column: 26, scope: !1383)
!1654 = !DILocation(line: 610, column: 24, scope: !1383)
!1655 = !DILocation(line: 611, column: 13, scope: !1383)
!1656 = !DILocation(line: 611, column: 27, scope: !1383)
!1657 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1397)
!1658 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1397)
!1659 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1397)
!1660 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1397)
!1661 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1397)
!1662 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1397)
!1663 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1397)
!1664 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1397)
!1665 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1397)
!1666 = !DILocation(line: 616, column: 23, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 616, column: 17)
!1668 = !DILocation(line: 616, column: 17, scope: !1383)
!1669 = !DILocation(line: 617, column: 34, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 616, column: 54)
!1671 = !DILocation(line: 617, column: 28, scope: !1670)
!1672 = !DILocation(line: 618, column: 13, scope: !1670)
!1673 = !DILocation(line: 619, column: 47, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !1, line: 618, column: 20)
!1675 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 619, column: 30, scope: !1674)
!1677 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1676)
!1678 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1676)
!1679 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1676)
!1680 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1676)
!1681 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1676)
!1682 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1676)
!1683 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1676)
!1684 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1676)
!1685 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1676)
!1686 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1676)
!1687 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1676)
!1688 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1676)
!1689 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1676)
!1690 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1676)
!1691 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1676)
!1692 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1676)
!1693 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1676)
!1694 = !DILocation(line: 0, scope: !238, inlinedAt: !1676)
!1695 = !DILocation(line: 619, column: 28, scope: !1674)
!1696 = !DILocation(line: 620, column: 41, scope: !1674)
!1697 = !DILocation(line: 620, column: 48, scope: !1674)
!1698 = !DILocation(line: 620, column: 30, scope: !1674)
!1699 = !DILocation(line: 620, column: 28, scope: !1674)
!1700 = !DILocation(line: 625, column: 22, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1383, file: !1, line: 625, column: 17)
!1702 = !DILocation(line: 625, column: 18, scope: !1701)
!1703 = !DILocation(line: 625, column: 17, scope: !1383)
!1704 = !DILocation(line: 626, column: 21, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 626, column: 21)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 625, column: 27)
!1707 = !DILocation(line: 626, column: 64, scope: !1705)
!1708 = !DILocation(line: 627, column: 29, scope: !1705)
!1709 = !DILocation(line: 626, column: 69, scope: !1705)
!1710 = !DILocation(line: 629, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 629, column: 25)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 628, column: 17)
!1713 = !DILocation(line: 629, column: 66, scope: !1711)
!1714 = !DILocation(line: 629, column: 25, scope: !1712)
!1715 = !DILocation(line: 631, column: 25, scope: !1712)
!1716 = !DILocation(line: 631, column: 37, scope: !1712)
!1717 = !{!1355, !520, i64 48}
!1718 = !DILocation(line: 632, column: 25, scope: !1712)
!1719 = !DILocation(line: 633, column: 53, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !1, line: 632, column: 25)
!1721 = !DILocation(line: 633, column: 29, scope: !1720)
!1722 = !DILocation(line: 633, column: 47, scope: !1720)
!1723 = !{!1355, !110, i64 40}
!1724 = !DILocation(line: 633, column: 25, scope: !1720)
!1725 = !DILocation(line: 637, column: 21, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 637, column: 21)
!1727 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 636, column: 20)
!1728 = !DILocation(line: 637, column: 62, scope: !1726)
!1729 = !DILocation(line: 638, column: 29, scope: !1726)
!1730 = !DILocation(line: 637, column: 67, scope: !1726)
!1731 = !DILocation(line: 640, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 640, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 639, column: 17)
!1734 = !DILocation(line: 640, column: 68, scope: !1732)
!1735 = !DILocation(line: 640, column: 25, scope: !1733)
!1736 = !DILocation(line: 642, column: 25, scope: !1733)
!1737 = !DILocation(line: 642, column: 37, scope: !1733)
!1738 = !DILocation(line: 643, column: 25, scope: !1733)
!1739 = !DILocation(line: 644, column: 53, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 643, column: 25)
!1741 = !DILocation(line: 644, column: 29, scope: !1740)
!1742 = !DILocation(line: 644, column: 47, scope: !1740)
!1743 = !DILocation(line: 644, column: 25, scope: !1740)
!1744 = !DILocation(line: 652, column: 22, scope: !1391)
!1745 = !DILocation(line: 652, column: 18, scope: !1391)
!1746 = !DILocation(line: 652, column: 17, scope: !1383)
!1747 = !DILocation(line: 0, scope: !1390)
!1748 = !DILocation(line: 653, column: 38, scope: !1390)
!1749 = !DILocation(line: 653, column: 25, scope: !1390)
!1750 = !DILocation(line: 655, column: 30, scope: !1393)
!1751 = !DILocation(line: 655, column: 39, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 655, column: 17)
!1753 = !DILocation(line: 655, column: 17, scope: !1393)
!1754 = !DILocation(line: 656, column: 52, scope: !1752)
!1755 = !DILocation(line: 656, column: 45, scope: !1752)
!1756 = !DILocation(line: 656, column: 34, scope: !1752)
!1757 = !DILocation(line: 656, column: 32, scope: !1752)
!1758 = !DILocation(line: 655, column: 54, scope: !1752)
!1759 = distinct !{!1759, !1753, !1760}
!1760 = !DILocation(line: 656, column: 58, scope: !1393)
!1761 = !DILocation(line: 658, column: 25, scope: !1395)
!1762 = !DILocation(line: 663, column: 21, scope: !1395)
!1763 = !DILocation(line: 664, column: 68, scope: !1395)
!1764 = !DILocation(line: 664, column: 17, scope: !1395)
!1765 = !DILocation(line: 664, column: 33, scope: !1395)
!1766 = !DILocation(line: 664, column: 61, scope: !1395)
!1767 = !DILocation(line: 664, column: 50, scope: !1395)
!1768 = !DILocation(line: 664, column: 48, scope: !1395)
!1769 = distinct !{!1769, !1764, !1770}
!1770 = !DILocation(line: 664, column: 74, scope: !1395)
!1771 = !DILocation(line: 666, column: 9, scope: !1376)
!1772 = !DILocation(line: 670, column: 1, scope: !1362)
!1773 = distinct !DISubprogram(name: "streamIteratorGetField", scope: !1, file: !1, line: 678, type: !1774, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1236, !219, !219, !1365, !1365}
!1776 = !{!1777, !1778, !1779, !1780, !1781}
!1777 = !DILocalVariable(name: "si", arg: 1, scope: !1773, file: !1, line: 678, type: !1236)
!1778 = !DILocalVariable(name: "fieldptr", arg: 2, scope: !1773, file: !1, line: 678, type: !219)
!1779 = !DILocalVariable(name: "valueptr", arg: 3, scope: !1773, file: !1, line: 678, type: !219)
!1780 = !DILocalVariable(name: "fieldlen", arg: 4, scope: !1773, file: !1, line: 678, type: !1365)
!1781 = !DILocalVariable(name: "valuelen", arg: 5, scope: !1773, file: !1, line: 678, type: !1365)
!1782 = !DILocation(line: 678, column: 45, scope: !1773)
!1783 = !DILocation(line: 678, column: 65, scope: !1773)
!1784 = !DILocation(line: 678, column: 91, scope: !1773)
!1785 = !DILocation(line: 678, column: 110, scope: !1773)
!1786 = !DILocation(line: 678, column: 129, scope: !1773)
!1787 = !DILocation(line: 679, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 679, column: 9)
!1789 = !DILocation(line: 679, column: 25, scope: !1788)
!1790 = !DILocation(line: 679, column: 9, scope: !1773)
!1791 = !DILocation(line: 680, column: 31, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 679, column: 56)
!1793 = !DILocation(line: 680, column: 58, scope: !1792)
!1794 = !DILocation(line: 680, column: 21, scope: !1792)
!1795 = !DILocation(line: 680, column: 19, scope: !1792)
!1796 = !DILocation(line: 681, column: 44, scope: !1792)
!1797 = !DILocation(line: 681, column: 51, scope: !1792)
!1798 = !DILocation(line: 681, column: 33, scope: !1792)
!1799 = !DILocation(line: 681, column: 31, scope: !1792)
!1800 = !DILocation(line: 686, column: 27, scope: !1773)
!1801 = !DILocation(line: 682, column: 5, scope: !1792)
!1802 = !DILocation(line: 683, column: 31, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 682, column: 12)
!1804 = !DILocation(line: 683, column: 47, scope: !1803)
!1805 = !DILocation(line: 683, column: 21, scope: !1803)
!1806 = !DILocation(line: 683, column: 19, scope: !1803)
!1807 = !DILocation(line: 684, column: 33, scope: !1803)
!1808 = !DILocation(line: 684, column: 40, scope: !1803)
!1809 = !DILocation(line: 684, column: 22, scope: !1803)
!1810 = !DILocation(line: 684, column: 20, scope: !1803)
!1811 = !DILocation(line: 687, column: 29, scope: !1773)
!1812 = !DILocation(line: 686, column: 43, scope: !1773)
!1813 = !DILocation(line: 686, column: 17, scope: !1773)
!1814 = !DILocation(line: 686, column: 15, scope: !1773)
!1815 = !DILocation(line: 687, column: 36, scope: !1773)
!1816 = !DILocation(line: 687, column: 18, scope: !1773)
!1817 = !DILocation(line: 687, column: 16, scope: !1773)
!1818 = !DILocation(line: 688, column: 1, scope: !1773)
!1819 = distinct !DISubprogram(name: "streamIteratorRemoveEntry", scope: !1, file: !1, line: 700, type: !1820, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{null, !1236, !167}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1823 = !DILocalVariable(name: "si", arg: 1, scope: !1819, file: !1, line: 700, type: !1236)
!1824 = !DILocalVariable(name: "current", arg: 2, scope: !1819, file: !1, line: 700, type: !167)
!1825 = !DILocalVariable(name: "lp", scope: !1819, file: !1, line: 701, type: !8)
!1826 = !DILocalVariable(name: "aux", scope: !1819, file: !1, line: 702, type: !196)
!1827 = !DILocalVariable(name: "flags", scope: !1819, file: !1, line: 709, type: !12)
!1828 = !DILocalVariable(name: "p", scope: !1819, file: !1, line: 714, type: !8)
!1829 = !DILocalVariable(name: "start", scope: !1819, file: !1, line: 738, type: !95)
!1830 = !DILocalVariable(name: "end", scope: !1819, file: !1, line: 738, type: !95)
!1831 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 744, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 742, column: 12)
!1834 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 739, column: 9)
!1835 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 740, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 739, column: 18)
!1838 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 727, column: 14, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 722, column: 12)
!1841 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 717, column: 9)
!1842 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 724, column: 14, scope: !1840)
!1844 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 711, column: 10, scope: !1819)
!1846 = !DILocation(line: 700, column: 48, scope: !1819)
!1847 = !DILocation(line: 700, column: 62, scope: !1819)
!1848 = !DILocation(line: 701, column: 29, scope: !1819)
!1849 = !DILocation(line: 701, column: 20, scope: !1819)
!1850 = !DILocation(line: 709, column: 34, scope: !1819)
!1851 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 709, column: 17, scope: !1819)
!1853 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1852)
!1854 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1852)
!1855 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1852)
!1856 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1852)
!1857 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1852)
!1858 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1852)
!1859 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1852)
!1860 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1852)
!1861 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1852)
!1862 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1852)
!1863 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1852)
!1864 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1852)
!1865 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1852)
!1866 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1852)
!1867 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1852)
!1868 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1852)
!1869 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1852)
!1870 = !DILocation(line: 0, scope: !238, inlinedAt: !1852)
!1871 = !DILocation(line: 711, column: 44, scope: !1819)
!1872 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1845)
!1873 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1845)
!1874 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1845)
!1875 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1845)
!1876 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1845)
!1877 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1845)
!1878 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1845)
!1879 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1845)
!1880 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1845)
!1881 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1845)
!1882 = !DILocation(line: 714, column: 5, scope: !1819)
!1883 = !DILocation(line: 714, column: 24, scope: !1819)
!1884 = !DILocation(line: 714, column: 20, scope: !1819)
!1885 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 715, column: 11, scope: !1819)
!1887 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1886)
!1888 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1886)
!1889 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1886)
!1890 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1886)
!1891 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1886)
!1892 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1886)
!1893 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1886)
!1894 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1886)
!1895 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1886)
!1896 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1886)
!1897 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1886)
!1898 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1886)
!1899 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1886)
!1900 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1886)
!1901 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1886)
!1902 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1886)
!1903 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1886)
!1904 = !DILocation(line: 0, scope: !238, inlinedAt: !1886)
!1905 = !DILocation(line: 702, column: 13, scope: !1819)
!1906 = !DILocation(line: 717, column: 13, scope: !1841)
!1907 = !DILocation(line: 717, column: 9, scope: !1819)
!1908 = !DILocation(line: 720, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1841, file: !1, line: 717, column: 19)
!1910 = !DILocation(line: 721, column: 23, scope: !1909)
!1911 = !DILocation(line: 721, column: 31, scope: !1909)
!1912 = !DILocation(line: 721, column: 42, scope: !1909)
!1913 = !DILocation(line: 721, column: 53, scope: !1909)
!1914 = !DILocation(line: 721, column: 9, scope: !1909)
!1915 = !DILocation(line: 722, column: 5, scope: !1909)
!1916 = !DILocation(line: 724, column: 40, scope: !1840)
!1917 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1843)
!1918 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1843)
!1919 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1843)
!1920 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1843)
!1921 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1843)
!1922 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1843)
!1923 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1843)
!1924 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1843)
!1925 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1843)
!1926 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1843)
!1927 = !DILocation(line: 725, column: 23, scope: !1840)
!1928 = !DILocation(line: 725, column: 13, scope: !1840)
!1929 = !DILocation(line: 725, column: 11, scope: !1840)
!1930 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 726, column: 15, scope: !1840)
!1932 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1931)
!1933 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1931)
!1934 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1931)
!1935 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1931)
!1936 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1931)
!1937 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1931)
!1938 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1931)
!1939 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1931)
!1940 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1931)
!1941 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1931)
!1942 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1931)
!1943 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1931)
!1944 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1931)
!1945 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1931)
!1946 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1931)
!1947 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1931)
!1948 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1931)
!1949 = !DILocation(line: 0, scope: !238, inlinedAt: !1931)
!1950 = !DILocation(line: 727, column: 40, scope: !1840)
!1951 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1839)
!1952 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1839)
!1953 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1839)
!1954 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1839)
!1955 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1839)
!1956 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1839)
!1957 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1839)
!1958 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1839)
!1959 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1839)
!1960 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1839)
!1961 = !DILocation(line: 730, column: 17, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 730, column: 13)
!1963 = !DILocation(line: 730, column: 20, scope: !1962)
!1964 = !DILocation(line: 0, scope: !1962)
!1965 = !DILocation(line: 730, column: 13, scope: !1840)
!1966 = !DILocation(line: 731, column: 27, scope: !1962)
!1967 = !DILocation(line: 731, column: 35, scope: !1962)
!1968 = !DILocation(line: 731, column: 46, scope: !1962)
!1969 = !DILocation(line: 731, column: 57, scope: !1962)
!1970 = !DILocation(line: 731, column: 13, scope: !1962)
!1971 = !DILocation(line: 735, column: 9, scope: !1819)
!1972 = !DILocation(line: 735, column: 17, scope: !1819)
!1973 = !DILocation(line: 735, column: 23, scope: !1819)
!1974 = !DILocation(line: 738, column: 5, scope: !1819)
!1975 = !DILocation(line: 739, column: 13, scope: !1834)
!1976 = !DILocation(line: 739, column: 9, scope: !1834)
!1977 = !DILocation(line: 739, column: 9, scope: !1819)
!1978 = !DILocation(line: 740, column: 24, scope: !1837)
!1979 = !DILocation(line: 738, column: 14, scope: !1819)
!1980 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1836)
!1981 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1836)
!1982 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1836)
!1983 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1836)
!1984 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1836)
!1985 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1836)
!1986 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1836)
!1987 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1836)
!1988 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1836)
!1989 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1836)
!1990 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1836)
!1991 = !DILocation(line: 741, column: 15, scope: !1837)
!1992 = !DILocation(line: 742, column: 5, scope: !1837)
!1993 = !DILocation(line: 743, column: 17, scope: !1833)
!1994 = !DILocation(line: 744, column: 24, scope: !1833)
!1995 = !DILocation(line: 738, column: 21, scope: !1819)
!1996 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1832)
!1997 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1832)
!1998 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1832)
!1999 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1832)
!2000 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1832)
!2001 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1832)
!2002 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1832)
!2003 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1832)
!2004 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1832)
!2005 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1832)
!2006 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1832)
!2007 = !DILocalVariable(name: "si", arg: 1, scope: !2008, file: !1, line: 756, type: !1236)
!2008 = distinct !DISubprogram(name: "streamIteratorStop", scope: !1, file: !1, line: 756, type: !2009, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !1236}
!2011 = !{!2007}
!2012 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 746, column: 5, scope: !1819)
!2014 = !DILocation(line: 757, column: 18, scope: !2008, inlinedAt: !2013)
!2015 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !2013)
!2016 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !2013)
!2017 = !DILocation(line: 747, column: 32, scope: !1819)
!2018 = !DILocation(line: 747, column: 55, scope: !1819)
!2019 = !DILocation(line: 747, column: 5, scope: !1819)
!2020 = !DILocation(line: 751, column: 1, scope: !1819)
!2021 = !DILocation(line: 756, column: 41, scope: !2008)
!2022 = !DILocation(line: 757, column: 18, scope: !2008)
!2023 = !DILocation(line: 757, column: 5, scope: !2008)
!2024 = !DILocation(line: 758, column: 1, scope: !2008)
!2025 = distinct !DISubprogram(name: "streamDeleteItem", scope: !1, file: !1, line: 762, type: !2026, isLocal: false, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!12, !69, !167}
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034}
!2029 = !DILocalVariable(name: "s", arg: 1, scope: !2025, file: !1, line: 762, type: !69)
!2030 = !DILocalVariable(name: "id", arg: 2, scope: !2025, file: !1, line: 762, type: !167)
!2031 = !DILocalVariable(name: "deleted", scope: !2025, file: !1, line: 763, type: !12)
!2032 = !DILocalVariable(name: "si", scope: !2025, file: !1, line: 764, type: !1237)
!2033 = !DILocalVariable(name: "myid", scope: !2025, file: !1, line: 766, type: !95)
!2034 = !DILocalVariable(name: "numfields", scope: !2025, file: !1, line: 767, type: !196)
!2035 = !DILocation(line: 762, column: 30, scope: !2025)
!2036 = !DILocation(line: 762, column: 43, scope: !2025)
!2037 = !DILocation(line: 763, column: 9, scope: !2025)
!2038 = !DILocation(line: 764, column: 5, scope: !2025)
!2039 = !DILocation(line: 764, column: 20, scope: !2025)
!2040 = !DILocation(line: 765, column: 5, scope: !2025)
!2041 = !DILocation(line: 766, column: 5, scope: !2025)
!2042 = !DILocation(line: 767, column: 5, scope: !2025)
!2043 = !DILocation(line: 766, column: 14, scope: !2025)
!2044 = !DILocation(line: 767, column: 13, scope: !2025)
!2045 = !DILocation(line: 768, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 768, column: 9)
!2047 = !DILocation(line: 768, column: 9, scope: !2025)
!2048 = !DILocation(line: 769, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 768, column: 52)
!2050 = !DILocation(line: 771, column: 5, scope: !2049)
!2051 = !DILocation(line: 0, scope: !2025)
!2052 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 772, column: 5, scope: !2025)
!2054 = !DILocation(line: 757, column: 18, scope: !2008, inlinedAt: !2053)
!2055 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !2053)
!2056 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !2053)
!2057 = !DILocation(line: 774, column: 1, scope: !2025)
!2058 = !DILocation(line: 773, column: 5, scope: !2025)
!2059 = distinct !DISubprogram(name: "addReplyStreamID", scope: !1, file: !1, line: 779, type: !2060, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2280)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062, !167}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !369, line: 780, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !369, line: 723, size: 135360, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2195, !2196, !2197, !2198, !2199, !2200, !2202, !2203, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2229, !2230, !2234, !2235, !2251, !2252, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2064, file: !369, line: 724, baseType: !57, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2064, file: !369, line: 725, baseType: !12, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !2064, file: !369, line: 726, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !369, line: 656, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !369, line: 647, size: 512, elements: !2072)
!2072 = !{!2073, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !2071, file: !369, line: 648, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !2076, line: 82, baseType: !2077)
!2076 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !2076, line: 76, size: 768, elements: !2078)
!2078 = !{!2079, !2104, !2105, !2130, !2131}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2077, file: !2076, line: 77, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !2076, line: 65, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !2076, line: 58, size: 384, elements: !2083)
!2083 = !{!2084, !2090, !2094, !2095, !2099, !2103}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !2082, file: !2076, line: 59, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!57, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !2082, file: !2076, line: 60, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!7, !7, !2088}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !2082, file: !2076, line: 61, baseType: !2091, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !2082, file: !2076, line: 62, baseType: !2096, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!12, !7, !2088, !2088}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !2082, file: !2076, line: 63, baseType: !2100, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !7, !7}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !2082, file: !2076, line: 64, baseType: !2100, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !2077, file: !2076, line: 78, baseType: !7, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2077, file: !2076, line: 79, baseType: !2106, size: 512, offset: 128)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 512, elements: !306)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !2076, line: 74, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !2076, line: 69, size: 256, elements: !2109)
!2109 = !{!2110, !2127, !2128, !2129}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2108, file: !2076, line: 70, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !2076, line: 56, baseType: !2114)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !2076, line: 47, size: 192, elements: !2115)
!2115 = !{!2116, !2117, !2125}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2114, file: !2076, line: 48, baseType: !7, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2114, file: !2076, line: 54, baseType: !2118, size: 64, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2114, file: !2076, line: 49, size: 64, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2118, file: !2076, line: 50, baseType: !7, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !2118, file: !2076, line: 51, baseType: !57, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !2118, file: !2076, line: 52, baseType: !196, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2118, file: !2076, line: 53, baseType: !2124, size: 64)
!2124 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2114, file: !2076, line: 55, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2108, file: !2076, line: 71, baseType: !17, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !2108, file: !2076, line: 72, baseType: !17, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2108, file: !2076, line: 73, baseType: !17, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !2077, file: !2076, line: 80, baseType: !198, size: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !2077, file: !2076, line: 81, baseType: !17, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2071, file: !369, line: 649, baseType: !2074, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !2071, file: !369, line: 650, baseType: !2074, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !2071, file: !369, line: 651, baseType: !2074, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2071, file: !369, line: 652, baseType: !2074, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2071, file: !369, line: 653, baseType: !12, size: 32, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !2071, file: !369, line: 654, baseType: !246, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !2071, file: !369, line: 655, baseType: !2139, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !2141, line: 54, baseType: !2142)
!2141 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !2141, line: 47, size: 384, elements: !2143)
!2143 = !{!2144, !2153, !2154, !2158, !2159, !2163}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2142, file: !2141, line: 48, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !2141, line: 40, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !2141, line: 36, size: 192, elements: !2148)
!2148 = !{!2149, !2151, !2152}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2147, file: !2141, line: 37, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !2141, line: 38, baseType: !2150, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2147, file: !2141, line: 39, baseType: !7, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2142, file: !2141, line: 49, baseType: !2145, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !2142, file: !2141, line: 50, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!7, !7}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2142, file: !2141, line: 51, baseType: !4, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2142, file: !2141, line: 52, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!12, !7, !7}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2142, file: !2141, line: 53, baseType: !17, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2064, file: !369, line: 727, baseType: !367, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !2064, file: !369, line: 728, baseType: !436, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !2064, file: !369, line: 729, baseType: !13, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !2064, file: !369, line: 730, baseType: !436, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !2064, file: !369, line: 734, baseType: !13, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2064, file: !369, line: 735, baseType: !12, size: 32, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2064, file: !369, line: 736, baseType: !366, size: 64, offset: 576)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2064, file: !369, line: 737, baseType: !2172, size: 64, offset: 640)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !369, line: 1307, size: 640, elements: !2174)
!2174 = !{!2175, !2176, !2181, !2182, !2183, !2184, !2190, !2191, !2192, !2193, !2194}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2173, file: !369, line: 1308, baseType: !10, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !2173, file: !369, line: 1309, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !369, line: 1305, baseType: !2179)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2062}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !2173, file: !369, line: 1310, baseType: !12, size: 32, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !2173, file: !369, line: 1311, baseType: !10, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !369, line: 1312, baseType: !12, size: 32, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !2173, file: !369, line: 1315, baseType: !2185, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !369, line: 1306, baseType: !2187)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!2189, !2172, !366, !12, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !2173, file: !369, line: 1317, baseType: !12, size: 32, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !2173, file: !369, line: 1318, baseType: !12, size: 32, offset: 416)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !2173, file: !369, line: 1319, baseType: !12, size: 32, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !2173, file: !369, line: 1320, baseType: !246, size: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !2173, file: !369, line: 1320, baseType: !246, size: 64, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !2064, file: !369, line: 737, baseType: !2172, size: 64, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !2064, file: !369, line: 738, baseType: !12, size: 32, offset: 768)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !2064, file: !369, line: 739, baseType: !12, size: 32, offset: 800)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !2064, file: !369, line: 740, baseType: !198, size: 64, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !2064, file: !369, line: 741, baseType: !2139, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !2064, file: !369, line: 742, baseType: !2201, size: 64, offset: 960)
!2201 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !2064, file: !369, line: 743, baseType: !13, size: 64, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2064, file: !369, line: 745, baseType: !2204, size: 64, offset: 1088)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2205, line: 34, baseType: !198)
!2205 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !2064, file: !369, line: 746, baseType: !2204, size: 64, offset: 1152)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !2064, file: !369, line: 747, baseType: !2204, size: 64, offset: 1216)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !369, line: 748, baseType: !12, size: 32, offset: 1280)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !2064, file: !369, line: 749, baseType: !12, size: 32, offset: 1312)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !2064, file: !369, line: 750, baseType: !12, size: 32, offset: 1344)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !2064, file: !369, line: 751, baseType: !12, size: 32, offset: 1376)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !2064, file: !369, line: 752, baseType: !12, size: 32, offset: 1408)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !2064, file: !369, line: 753, baseType: !2214, size: 64, offset: 1472)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2215, line: 173, baseType: !2216)
!2215 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 100, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !16, line: 44, baseType: !198)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !2064, file: !369, line: 754, baseType: !2214, size: 64, offset: 1536)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !2064, file: !369, line: 755, baseType: !436, size: 64, offset: 1600)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !2064, file: !369, line: 756, baseType: !246, size: 64, offset: 1664)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !2064, file: !369, line: 757, baseType: !246, size: 64, offset: 1728)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !2064, file: !369, line: 758, baseType: !246, size: 64, offset: 1792)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !2064, file: !369, line: 759, baseType: !246, size: 64, offset: 1856)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !2064, file: !369, line: 760, baseType: !246, size: 64, offset: 1920)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !2064, file: !369, line: 763, baseType: !2226, size: 328, offset: 1984)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 328, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 41)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !2064, file: !369, line: 764, baseType: !12, size: 32, offset: 2336)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !2064, file: !369, line: 765, baseType: !2231, size: 368, offset: 2368)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 368, elements: !2232)
!2232 = !{!2233}
!2233 = !DISubrange(count: 46)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !2064, file: !369, line: 766, baseType: !12, size: 32, offset: 2752)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !2064, file: !369, line: 767, baseType: !2236, size: 256, offset: 2816)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !369, line: 673, baseType: !2237)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !369, line: 665, size: 256, elements: !2238)
!2238 = !{!2239, !2247, !2248, !2249, !2250}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !2237, file: !369, line: 666, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !369, line: 663, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !369, line: 659, size: 192, elements: !2243)
!2243 = !{!2244, !2245, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2242, file: !369, line: 660, baseType: !366, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2242, file: !369, line: 661, baseType: !12, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2242, file: !369, line: 662, baseType: !2172, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2237, file: !369, line: 667, baseType: !12, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2237, file: !369, line: 668, baseType: !12, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !2237, file: !369, line: 671, baseType: !12, size: 32, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !2237, file: !369, line: 672, baseType: !2204, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !2064, file: !369, line: 768, baseType: !12, size: 32, offset: 3072)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !2064, file: !369, line: 769, baseType: !2253, size: 704, offset: 3136)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !369, line: 703, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !369, line: 677, size: 704, elements: !2255)
!2255 = !{!2256, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2254, file: !369, line: 679, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !369, line: 52, baseType: !246)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2254, file: !369, line: 683, baseType: !2074, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2254, file: !369, line: 685, baseType: !367, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !2254, file: !369, line: 689, baseType: !13, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !2254, file: !369, line: 690, baseType: !367, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !2254, file: !369, line: 691, baseType: !367, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !2254, file: !369, line: 692, baseType: !2257, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !2254, file: !369, line: 692, baseType: !2257, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !2254, file: !369, line: 693, baseType: !12, size: 32, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !2254, file: !369, line: 696, baseType: !12, size: 32, offset: 544)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !2254, file: !369, line: 697, baseType: !246, size: 64, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !2254, file: !369, line: 700, baseType: !7, size: 64, offset: 640)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !2064, file: !369, line: 770, baseType: !246, size: 64, offset: 3840)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2064, file: !369, line: 771, baseType: !2139, size: 64, offset: 3904)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !2064, file: !369, line: 772, baseType: !2074, size: 64, offset: 3968)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !2064, file: !369, line: 773, baseType: !2139, size: 64, offset: 4032)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !2064, file: !369, line: 774, baseType: !436, size: 64, offset: 4096)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !2064, file: !369, line: 775, baseType: !2145, size: 64, offset: 4160)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !2064, file: !369, line: 778, baseType: !12, size: 32, offset: 4224)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2064, file: !369, line: 779, baseType: !2277, size: 131072, offset: 4256)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 16384)
!2280 = !{!2281, !2282, !2283}
!2281 = !DILocalVariable(name: "c", arg: 1, scope: !2059, file: !1, line: 779, type: !2062)
!2282 = !DILocalVariable(name: "id", arg: 2, scope: !2059, file: !1, line: 779, type: !167)
!2283 = !DILocalVariable(name: "replyid", scope: !2059, file: !1, line: 780, type: !436)
!2284 = !DILocation(line: 779, column: 31, scope: !2059)
!2285 = !DILocation(line: 779, column: 44, scope: !2059)
!2286 = !DILocation(line: 780, column: 29, scope: !2059)
!2287 = !DILocation(line: 780, column: 52, scope: !2059)
!2288 = !DILocation(line: 780, column: 59, scope: !2059)
!2289 = !DILocation(line: 780, column: 19, scope: !2059)
!2290 = !DILocation(line: 780, column: 9, scope: !2059)
!2291 = !DILocation(line: 781, column: 5, scope: !2059)
!2292 = !DILocation(line: 782, column: 1, scope: !2059)
!2293 = distinct !DISubprogram(name: "createObjectFromStreamID", scope: !1, file: !1, line: 786, type: !2294, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!367, !167}
!2296 = !{!2297}
!2297 = !DILocalVariable(name: "id", arg: 1, scope: !2293, file: !1, line: 786, type: !167)
!2298 = !DILocation(line: 786, column: 42, scope: !2293)
!2299 = !DILocation(line: 787, column: 47, scope: !2293)
!2300 = !DILocation(line: 788, column: 29, scope: !2293)
!2301 = !DILocation(line: 788, column: 36, scope: !2293)
!2302 = !DILocation(line: 787, column: 37, scope: !2293)
!2303 = !DILocation(line: 787, column: 12, scope: !2293)
!2304 = !DILocation(line: 787, column: 5, scope: !2293)
!2305 = distinct !DISubprogram(name: "streamPropagateXCLAIM", scope: !1, file: !1, line: 794, type: !2306, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2322)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2062, !367, !144, !367, !367, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !71, line: 87, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !71, line: 82, size: 192, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !2310, file: !71, line: 83, baseType: !2257, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !2310, file: !71, line: 84, baseType: !57, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !2310, file: !71, line: 85, baseType: !2315, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !71, line: 79, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !71, line: 67, size: 192, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !2317, file: !71, line: 68, baseType: !2257, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2317, file: !71, line: 69, baseType: !436, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2317, file: !71, line: 72, baseType: !75, size: 64, offset: 128)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2323 = !DILocalVariable(name: "c", arg: 1, scope: !2305, file: !1, line: 794, type: !2062)
!2324 = !DILocalVariable(name: "key", arg: 2, scope: !2305, file: !1, line: 794, type: !367)
!2325 = !DILocalVariable(name: "group", arg: 3, scope: !2305, file: !1, line: 794, type: !144)
!2326 = !DILocalVariable(name: "groupname", arg: 4, scope: !2305, file: !1, line: 794, type: !367)
!2327 = !DILocalVariable(name: "id", arg: 5, scope: !2305, file: !1, line: 794, type: !367)
!2328 = !DILocalVariable(name: "nack", arg: 6, scope: !2305, file: !1, line: 794, type: !2308)
!2329 = !DILocalVariable(name: "argv", scope: !2305, file: !1, line: 802, type: !2330)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 896, elements: !2331)
!2331 = !{!2332}
!2332 = !DISubrange(count: 14)
!2333 = !DILocation(line: 794, column: 36, scope: !2305)
!2334 = !DILocation(line: 794, column: 45, scope: !2305)
!2335 = !DILocation(line: 794, column: 60, scope: !2305)
!2336 = !DILocation(line: 794, column: 73, scope: !2305)
!2337 = !DILocation(line: 794, column: 90, scope: !2305)
!2338 = !DILocation(line: 794, column: 106, scope: !2305)
!2339 = !DILocation(line: 802, column: 5, scope: !2305)
!2340 = !DILocation(line: 802, column: 11, scope: !2305)
!2341 = !DILocation(line: 803, column: 15, scope: !2305)
!2342 = !DILocation(line: 803, column: 5, scope: !2305)
!2343 = !DILocation(line: 803, column: 13, scope: !2305)
!2344 = !DILocation(line: 804, column: 5, scope: !2305)
!2345 = !DILocation(line: 804, column: 13, scope: !2305)
!2346 = !DILocation(line: 805, column: 5, scope: !2305)
!2347 = !DILocation(line: 805, column: 13, scope: !2305)
!2348 = !DILocation(line: 806, column: 40, scope: !2305)
!2349 = !{!2350, !110, i64 16}
!2350 = !{!"streamNACK", !266, i64 0, !113, i64 8, !110, i64 16}
!2351 = !DILocation(line: 806, column: 50, scope: !2305)
!2352 = !{!2353, !110, i64 8}
!2353 = !{!"streamConsumer", !266, i64 0, !110, i64 8, !110, i64 16}
!2354 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 806, column: 55, scope: !2305)
!2356 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !2355)
!2357 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !2355)
!2358 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !2355)
!2359 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !2355)
!2360 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !2355)
!2361 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !2355)
!2362 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !2355)
!2363 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !2355)
!2364 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !2355)
!2365 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !2355)
!2366 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !2355)
!2367 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !2355)
!2368 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !2355)
!2369 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !2355)
!2370 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !2355)
!2371 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !2355)
!2372 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !2355)
!2373 = !DILocation(line: 0, scope: !667, inlinedAt: !2355)
!2374 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !2355)
!2375 = !DILocation(line: 806, column: 15, scope: !2305)
!2376 = !DILocation(line: 806, column: 5, scope: !2305)
!2377 = !DILocation(line: 806, column: 13, scope: !2305)
!2378 = !DILocation(line: 807, column: 15, scope: !2305)
!2379 = !DILocation(line: 807, column: 5, scope: !2305)
!2380 = !DILocation(line: 807, column: 13, scope: !2305)
!2381 = !DILocation(line: 808, column: 5, scope: !2305)
!2382 = !DILocation(line: 808, column: 13, scope: !2305)
!2383 = !DILocation(line: 809, column: 15, scope: !2305)
!2384 = !DILocation(line: 809, column: 5, scope: !2305)
!2385 = !DILocation(line: 809, column: 13, scope: !2305)
!2386 = !DILocation(line: 810, column: 52, scope: !2305)
!2387 = !{!2350, !266, i64 0}
!2388 = !DILocation(line: 810, column: 15, scope: !2305)
!2389 = !DILocation(line: 810, column: 5, scope: !2305)
!2390 = !DILocation(line: 810, column: 13, scope: !2305)
!2391 = !DILocation(line: 811, column: 15, scope: !2305)
!2392 = !DILocation(line: 811, column: 5, scope: !2305)
!2393 = !DILocation(line: 811, column: 13, scope: !2305)
!2394 = !DILocation(line: 812, column: 52, scope: !2305)
!2395 = !{!2350, !113, i64 8}
!2396 = !DILocation(line: 812, column: 15, scope: !2305)
!2397 = !DILocation(line: 812, column: 5, scope: !2305)
!2398 = !DILocation(line: 812, column: 13, scope: !2305)
!2399 = !DILocation(line: 813, column: 16, scope: !2305)
!2400 = !DILocation(line: 813, column: 5, scope: !2305)
!2401 = !DILocation(line: 813, column: 14, scope: !2305)
!2402 = !DILocation(line: 814, column: 16, scope: !2305)
!2403 = !DILocation(line: 814, column: 5, scope: !2305)
!2404 = !DILocation(line: 814, column: 14, scope: !2305)
!2405 = !DILocation(line: 815, column: 16, scope: !2305)
!2406 = !DILocation(line: 815, column: 5, scope: !2305)
!2407 = !DILocation(line: 815, column: 14, scope: !2305)
!2408 = !DILocation(line: 786, column: 42, scope: !2293, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 816, column: 16, scope: !2305)
!2410 = !DILocation(line: 787, column: 47, scope: !2293, inlinedAt: !2409)
!2411 = !DILocation(line: 788, column: 29, scope: !2293, inlinedAt: !2409)
!2412 = !DILocation(line: 788, column: 36, scope: !2293, inlinedAt: !2409)
!2413 = !DILocation(line: 787, column: 37, scope: !2293, inlinedAt: !2409)
!2414 = !DILocation(line: 787, column: 12, scope: !2293, inlinedAt: !2409)
!2415 = !DILocation(line: 787, column: 5, scope: !2293, inlinedAt: !2409)
!2416 = !DILocation(line: 816, column: 5, scope: !2305)
!2417 = !DILocation(line: 816, column: 14, scope: !2305)
!2418 = !DILocation(line: 817, column: 22, scope: !2305)
!2419 = !{!549, !110, i64 984}
!2420 = !DILocation(line: 817, column: 39, scope: !2305)
!2421 = !{!2422, !110, i64 16}
!2422 = !{!"client", !113, i64 0, !520, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !113, i64 40, !110, i64 48, !113, i64 56, !520, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !520, i64 96, !520, i64 100, !113, i64 104, !110, i64 112, !266, i64 120, !113, i64 128, !113, i64 136, !113, i64 144, !113, i64 152, !520, i64 160, !520, i64 164, !520, i64 168, !520, i64 172, !520, i64 176, !113, i64 184, !113, i64 192, !110, i64 200, !266, i64 208, !266, i64 216, !266, i64 224, !266, i64 232, !266, i64 240, !111, i64 248, !520, i64 292, !111, i64 296, !520, i64 344, !2423, i64 352, !520, i64 384, !2424, i64 392, !266, i64 480, !110, i64 488, !110, i64 496, !110, i64 504, !110, i64 512, !110, i64 520, !520, i64 528, !111, i64 532}
!2423 = !{!"multiState", !110, i64 0, !520, i64 8, !520, i64 12, !520, i64 16, !113, i64 24}
!2424 = !{!"blockingState", !266, i64 0, !110, i64 8, !110, i64 16, !113, i64 24, !110, i64 32, !110, i64 40, !266, i64 48, !266, i64 56, !520, i64 64, !520, i64 68, !266, i64 72, !110, i64 80}
!2425 = !DILocation(line: 817, column: 43, scope: !2305)
!2426 = !{!2427, !520, i64 40}
!2427 = !{!"redisDb", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !520, i64 40, !266, i64 48, !110, i64 56}
!2428 = !DILocation(line: 817, column: 5, scope: !2305)
!2429 = !DILocation(line: 818, column: 18, scope: !2305)
!2430 = !DILocation(line: 818, column: 5, scope: !2305)
!2431 = !DILocation(line: 819, column: 18, scope: !2305)
!2432 = !DILocation(line: 819, column: 5, scope: !2305)
!2433 = !DILocation(line: 820, column: 18, scope: !2305)
!2434 = !DILocation(line: 820, column: 5, scope: !2305)
!2435 = !DILocation(line: 821, column: 18, scope: !2305)
!2436 = !DILocation(line: 821, column: 5, scope: !2305)
!2437 = !DILocation(line: 822, column: 18, scope: !2305)
!2438 = !DILocation(line: 822, column: 5, scope: !2305)
!2439 = !DILocation(line: 823, column: 18, scope: !2305)
!2440 = !DILocation(line: 823, column: 5, scope: !2305)
!2441 = !DILocation(line: 824, column: 18, scope: !2305)
!2442 = !DILocation(line: 824, column: 5, scope: !2305)
!2443 = !DILocation(line: 825, column: 18, scope: !2305)
!2444 = !DILocation(line: 825, column: 5, scope: !2305)
!2445 = !DILocation(line: 826, column: 18, scope: !2305)
!2446 = !DILocation(line: 826, column: 5, scope: !2305)
!2447 = !DILocation(line: 827, column: 18, scope: !2305)
!2448 = !DILocation(line: 827, column: 5, scope: !2305)
!2449 = !DILocation(line: 828, column: 18, scope: !2305)
!2450 = !DILocation(line: 828, column: 5, scope: !2305)
!2451 = !DILocation(line: 829, column: 1, scope: !2305)
!2452 = distinct !DISubprogram(name: "streamPropagateGroupID", scope: !1, file: !1, line: 837, type: !2453, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2062, !367, !144, !367}
!2455 = !{!2456, !2457, !2458, !2459, !2460}
!2456 = !DILocalVariable(name: "c", arg: 1, scope: !2452, file: !1, line: 837, type: !2062)
!2457 = !DILocalVariable(name: "key", arg: 2, scope: !2452, file: !1, line: 837, type: !367)
!2458 = !DILocalVariable(name: "group", arg: 3, scope: !2452, file: !1, line: 837, type: !144)
!2459 = !DILocalVariable(name: "groupname", arg: 4, scope: !2452, file: !1, line: 837, type: !367)
!2460 = !DILocalVariable(name: "argv", scope: !2452, file: !1, line: 838, type: !2461)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 320, elements: !2462)
!2462 = !{!2463}
!2463 = !DISubrange(count: 5)
!2464 = !DILocation(line: 837, column: 37, scope: !2452)
!2465 = !DILocation(line: 837, column: 46, scope: !2452)
!2466 = !DILocation(line: 837, column: 61, scope: !2452)
!2467 = !DILocation(line: 837, column: 74, scope: !2452)
!2468 = !DILocation(line: 838, column: 5, scope: !2452)
!2469 = !DILocation(line: 838, column: 11, scope: !2452)
!2470 = !DILocation(line: 839, column: 15, scope: !2452)
!2471 = !DILocation(line: 839, column: 5, scope: !2452)
!2472 = !DILocation(line: 839, column: 13, scope: !2452)
!2473 = !DILocation(line: 840, column: 15, scope: !2452)
!2474 = !DILocation(line: 840, column: 5, scope: !2452)
!2475 = !DILocation(line: 840, column: 13, scope: !2452)
!2476 = !DILocation(line: 841, column: 5, scope: !2452)
!2477 = !DILocation(line: 841, column: 13, scope: !2452)
!2478 = !DILocation(line: 842, column: 5, scope: !2452)
!2479 = !DILocation(line: 842, column: 13, scope: !2452)
!2480 = !DILocation(line: 786, column: 42, scope: !2293, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 843, column: 15, scope: !2452)
!2482 = !DILocation(line: 787, column: 47, scope: !2293, inlinedAt: !2481)
!2483 = !DILocation(line: 788, column: 29, scope: !2293, inlinedAt: !2481)
!2484 = !DILocation(line: 788, column: 36, scope: !2293, inlinedAt: !2481)
!2485 = !DILocation(line: 787, column: 37, scope: !2293, inlinedAt: !2481)
!2486 = !DILocation(line: 787, column: 12, scope: !2293, inlinedAt: !2481)
!2487 = !DILocation(line: 787, column: 5, scope: !2293, inlinedAt: !2481)
!2488 = !DILocation(line: 843, column: 5, scope: !2452)
!2489 = !DILocation(line: 843, column: 13, scope: !2452)
!2490 = !DILocation(line: 844, column: 22, scope: !2452)
!2491 = !{!549, !110, i64 992}
!2492 = !DILocation(line: 844, column: 39, scope: !2452)
!2493 = !DILocation(line: 844, column: 43, scope: !2452)
!2494 = !DILocation(line: 844, column: 5, scope: !2452)
!2495 = !DILocation(line: 845, column: 18, scope: !2452)
!2496 = !DILocation(line: 845, column: 5, scope: !2452)
!2497 = !DILocation(line: 846, column: 18, scope: !2452)
!2498 = !DILocation(line: 846, column: 5, scope: !2452)
!2499 = !DILocation(line: 847, column: 18, scope: !2452)
!2500 = !DILocation(line: 847, column: 5, scope: !2452)
!2501 = !DILocation(line: 848, column: 1, scope: !2452)
!2502 = distinct !DISubprogram(name: "streamReplyWithRange", scope: !1, file: !1, line: 898, type: !2503, isLocal: false, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2511)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!13, !2062, !69, !167, !167, !13, !12, !144, !2315, !12, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !71, line: 94, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreamPropInfo", file: !71, line: 91, size: 128, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !2507, file: !71, line: 92, baseType: !367, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !2507, file: !71, line: 93, baseType: !367, size: 64, offset: 64)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2531, !2532, !2533, !2534, !2537, !2538, !2539, !2540}
!2512 = !DILocalVariable(name: "c", arg: 1, scope: !2502, file: !1, line: 898, type: !2062)
!2513 = !DILocalVariable(name: "s", arg: 2, scope: !2502, file: !1, line: 898, type: !69)
!2514 = !DILocalVariable(name: "start", arg: 3, scope: !2502, file: !1, line: 898, type: !167)
!2515 = !DILocalVariable(name: "end", arg: 4, scope: !2502, file: !1, line: 898, type: !167)
!2516 = !DILocalVariable(name: "count", arg: 5, scope: !2502, file: !1, line: 898, type: !13)
!2517 = !DILocalVariable(name: "rev", arg: 6, scope: !2502, file: !1, line: 898, type: !12)
!2518 = !DILocalVariable(name: "group", arg: 7, scope: !2502, file: !1, line: 898, type: !144)
!2519 = !DILocalVariable(name: "consumer", arg: 8, scope: !2502, file: !1, line: 898, type: !2315)
!2520 = !DILocalVariable(name: "flags", arg: 9, scope: !2502, file: !1, line: 898, type: !12)
!2521 = !DILocalVariable(name: "spi", arg: 10, scope: !2502, file: !1, line: 898, type: !2505)
!2522 = !DILocalVariable(name: "arraylen_ptr", scope: !2502, file: !1, line: 899, type: !7)
!2523 = !DILocalVariable(name: "arraylen", scope: !2502, file: !1, line: 900, type: !13)
!2524 = !DILocalVariable(name: "si", scope: !2502, file: !1, line: 901, type: !1237)
!2525 = !DILocalVariable(name: "numfields", scope: !2502, file: !1, line: 902, type: !196)
!2526 = !DILocalVariable(name: "id", scope: !2502, file: !1, line: 903, type: !95)
!2527 = !DILocalVariable(name: "propagate_last_id", scope: !2502, file: !1, line: 904, type: !12)
!2528 = !DILocalVariable(name: "key", scope: !2529, file: !1, line: 934, type: !8)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 933, column: 28)
!2530 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 919, column: 52)
!2531 = !DILocalVariable(name: "value", scope: !2529, file: !1, line: 934, type: !8)
!2532 = !DILocalVariable(name: "key_len", scope: !2529, file: !1, line: 935, type: !196)
!2533 = !DILocalVariable(name: "value_len", scope: !2529, file: !1, line: 935, type: !196)
!2534 = !DILocalVariable(name: "buf", scope: !2535, file: !1, line: 951, type: !1386)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 950, column: 51)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 950, column: 13)
!2537 = !DILocalVariable(name: "nack", scope: !2535, file: !1, line: 957, type: !2308)
!2538 = !DILocalVariable(name: "group_inserted", scope: !2535, file: !1, line: 958, type: !12)
!2539 = !DILocalVariable(name: "consumer_inserted", scope: !2535, file: !1, line: 960, type: !12)
!2540 = !DILocalVariable(name: "idarg", scope: !2541, file: !1, line: 983, type: !367)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 982, column: 22)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 982, column: 17)
!2543 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 952, column: 13, scope: !2535)
!2545 = !DILocation(line: 898, column: 37, scope: !2502)
!2546 = !DILocation(line: 898, column: 48, scope: !2502)
!2547 = !DILocation(line: 898, column: 61, scope: !2502)
!2548 = !DILocation(line: 898, column: 78, scope: !2502)
!2549 = !DILocation(line: 898, column: 90, scope: !2502)
!2550 = !DILocation(line: 898, column: 101, scope: !2502)
!2551 = !DILocation(line: 898, column: 116, scope: !2502)
!2552 = !DILocation(line: 898, column: 139, scope: !2502)
!2553 = !DILocation(line: 898, column: 153, scope: !2502)
!2554 = !DILocation(line: 898, column: 176, scope: !2502)
!2555 = !DILocation(line: 899, column: 11, scope: !2502)
!2556 = !DILocation(line: 900, column: 12, scope: !2502)
!2557 = !DILocation(line: 901, column: 5, scope: !2502)
!2558 = !DILocation(line: 902, column: 5, scope: !2502)
!2559 = !DILocation(line: 903, column: 5, scope: !2502)
!2560 = !DILocation(line: 904, column: 9, scope: !2502)
!2561 = !DILocation(line: 911, column: 9, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 911, column: 9)
!2563 = !DILocation(line: 911, column: 15, scope: !2562)
!2564 = !DILocation(line: 911, column: 25, scope: !2562)
!2565 = !DILocation(line: 912, column: 16, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 911, column: 48)
!2567 = !DILocation(line: 912, column: 9, scope: !2566)
!2568 = !DILocation(line: 916, column: 17, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 916, column: 9)
!2570 = !DILocation(line: 916, column: 9, scope: !2502)
!2571 = !DILocation(line: 917, column: 24, scope: !2569)
!2572 = !DILocation(line: 917, column: 9, scope: !2569)
!2573 = !DILocation(line: 0, scope: !2569)
!2574 = !DILocation(line: 901, column: 20, scope: !2502)
!2575 = !DILocation(line: 918, column: 5, scope: !2502)
!2576 = !DILocation(line: 919, column: 5, scope: !2502)
!2577 = !DILocation(line: 0, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 921, column: 64)
!2579 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 921, column: 13)
!2580 = !DILocation(line: 0, scope: !2530)
!2581 = !DILocation(line: 902, column: 13, scope: !2502)
!2582 = !DILocation(line: 903, column: 14, scope: !2502)
!2583 = !DILocation(line: 919, column: 11, scope: !2502)
!2584 = !DILocation(line: 921, column: 19, scope: !2579)
!2585 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 921, column: 22, scope: !2579)
!2587 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !2586)
!2588 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !2586)
!2589 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !2586)
!2590 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !2586)
!2591 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !2586)
!2592 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !2586)
!2593 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !2586)
!2594 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !2586)
!2595 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !2586)
!2596 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !2586)
!2597 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !2586)
!2598 = !DILocation(line: 922, column: 30, scope: !2578)
!2599 = !DILocation(line: 924, column: 9, scope: !2578)
!2600 = !DILocation(line: 0, scope: !2502)
!2601 = !DILocation(line: 928, column: 9, scope: !2530)
!2602 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 929, column: 9, scope: !2530)
!2604 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !2603)
!2605 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !2603)
!2606 = !DILocation(line: 780, column: 59, scope: !2059, inlinedAt: !2603)
!2607 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !2603)
!2608 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !2603)
!2609 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !2603)
!2610 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !2603)
!2611 = !DILocation(line: 930, column: 32, scope: !2530)
!2612 = !DILocation(line: 930, column: 41, scope: !2530)
!2613 = !DILocation(line: 930, column: 9, scope: !2530)
!2614 = !DILocation(line: 933, column: 24, scope: !2530)
!2615 = !DILocation(line: 933, column: 9, scope: !2530)
!2616 = !DILocation(line: 934, column: 13, scope: !2529)
!2617 = !DILocation(line: 935, column: 13, scope: !2529)
!2618 = !DILocation(line: 934, column: 28, scope: !2529)
!2619 = !DILocation(line: 934, column: 34, scope: !2529)
!2620 = !DILocation(line: 935, column: 21, scope: !2529)
!2621 = !DILocation(line: 935, column: 30, scope: !2529)
!2622 = !DILocation(line: 936, column: 13, scope: !2529)
!2623 = !DILocation(line: 937, column: 35, scope: !2529)
!2624 = !DILocation(line: 937, column: 39, scope: !2529)
!2625 = !DILocation(line: 937, column: 13, scope: !2529)
!2626 = !DILocation(line: 938, column: 35, scope: !2529)
!2627 = !DILocation(line: 938, column: 41, scope: !2529)
!2628 = !DILocation(line: 938, column: 13, scope: !2529)
!2629 = !DILocation(line: 939, column: 9, scope: !2530)
!2630 = distinct !{!2630, !2615, !2629}
!2631 = !DILocation(line: 950, column: 19, scope: !2536)
!2632 = !DILocation(line: 951, column: 13, scope: !2535)
!2633 = !DILocation(line: 951, column: 27, scope: !2535)
!2634 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2544)
!2635 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2544)
!2636 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2544)
!2637 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2544)
!2638 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2544)
!2639 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2544)
!2640 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2544)
!2641 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2544)
!2642 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2544)
!2643 = !DILocalVariable(name: "consumer", arg: 1, scope: !2644, file: !1, line: 1592, type: !2315)
!2644 = distinct !DISubprogram(name: "streamCreateNACK", scope: !1, file: !1, line: 1592, type: !2645, isLocal: false, isDefinition: true, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2308, !2315}
!2647 = !{!2643, !2648}
!2648 = !DILocalVariable(name: "nack", scope: !2644, file: !1, line: 1593, type: !2308)
!2649 = !DILocation(line: 1592, column: 46, scope: !2644, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 957, column: 32, scope: !2535)
!2651 = !DILocation(line: 1593, column: 24, scope: !2644, inlinedAt: !2650)
!2652 = !DILocation(line: 1594, column: 27, scope: !2644, inlinedAt: !2650)
!2653 = !DILocation(line: 1594, column: 11, scope: !2644, inlinedAt: !2650)
!2654 = !DILocation(line: 1594, column: 25, scope: !2644, inlinedAt: !2650)
!2655 = !DILocation(line: 1595, column: 11, scope: !2644, inlinedAt: !2650)
!2656 = !DILocation(line: 1595, column: 26, scope: !2644, inlinedAt: !2650)
!2657 = !DILocation(line: 1596, column: 11, scope: !2644, inlinedAt: !2650)
!2658 = !DILocation(line: 1596, column: 20, scope: !2644, inlinedAt: !2650)
!2659 = !DILocation(line: 1597, column: 5, scope: !2644, inlinedAt: !2650)
!2660 = !DILocation(line: 959, column: 37, scope: !2535)
!2661 = !DILocation(line: 959, column: 17, scope: !2535)
!2662 = !DILocation(line: 958, column: 17, scope: !2535)
!2663 = !DILocation(line: 961, column: 40, scope: !2535)
!2664 = !{!2353, !110, i64 16}
!2665 = !DILocation(line: 961, column: 17, scope: !2535)
!2666 = !DILocation(line: 960, column: 17, scope: !2535)
!2667 = !DILocation(line: 966, column: 32, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 966, column: 17)
!2669 = !DILocation(line: 966, column: 17, scope: !2535)
!2670 = !DILocalVariable(name: "na", arg: 1, scope: !2671, file: !1, line: 1601, type: !2308)
!2671 = distinct !DISubprogram(name: "streamFreeNACK", scope: !1, file: !1, line: 1601, type: !2672, isLocal: false, isDefinition: true, scopeLine: 1601, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2308}
!2674 = !{!2670}
!2675 = !DILocation(line: 1601, column: 33, scope: !2671, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 967, column: 17, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 966, column: 38)
!2678 = !DILocation(line: 1602, column: 5, scope: !2671, inlinedAt: !2676)
!2679 = !DILocation(line: 1603, column: 1, scope: !2671, inlinedAt: !2676)
!2680 = !DILocation(line: 968, column: 39, scope: !2677)
!2681 = !DILocation(line: 968, column: 24, scope: !2677)
!2682 = !DILocation(line: 957, column: 25, scope: !2535)
!2683 = !DILocation(line: 969, column: 17, scope: !2677)
!2684 = !DILocation(line: 970, column: 33, scope: !2677)
!2685 = !DILocation(line: 970, column: 43, scope: !2677)
!2686 = !DILocation(line: 970, column: 17, scope: !2677)
!2687 = !DILocation(line: 972, column: 32, scope: !2677)
!2688 = !DILocation(line: 973, column: 39, scope: !2677)
!2689 = !DILocation(line: 973, column: 23, scope: !2677)
!2690 = !DILocation(line: 973, column: 37, scope: !2677)
!2691 = !DILocation(line: 974, column: 23, scope: !2677)
!2692 = !DILocation(line: 974, column: 38, scope: !2677)
!2693 = !DILocation(line: 976, column: 37, scope: !2677)
!2694 = !DILocation(line: 976, column: 17, scope: !2677)
!2695 = !DILocation(line: 977, column: 13, scope: !2677)
!2696 = !DILocation(line: 1593, column: 17, scope: !2644, inlinedAt: !2650)
!2697 = !DILocation(line: 977, column: 39, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 977, column: 24)
!2699 = !DILocation(line: 977, column: 65, scope: !2698)
!2700 = !DILocation(line: 977, column: 44, scope: !2698)
!2701 = !DILocation(line: 978, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 977, column: 71)
!2703 = !DILocation(line: 0, scope: !2535)
!2704 = !DILocation(line: 982, column: 17, scope: !2535)
!2705 = !DILocation(line: 786, column: 42, scope: !2293, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 983, column: 31, scope: !2541)
!2707 = !DILocation(line: 787, column: 47, scope: !2293, inlinedAt: !2706)
!2708 = !DILocation(line: 787, column: 37, scope: !2293, inlinedAt: !2706)
!2709 = !DILocation(line: 787, column: 12, scope: !2293, inlinedAt: !2706)
!2710 = !DILocation(line: 787, column: 5, scope: !2293, inlinedAt: !2706)
!2711 = !DILocation(line: 983, column: 23, scope: !2541)
!2712 = !DILocation(line: 984, column: 46, scope: !2541)
!2713 = !{!2714, !110, i64 0}
!2714 = !{!"sreamPropInfo", !110, i64 0, !110, i64 8}
!2715 = !DILocation(line: 984, column: 65, scope: !2541)
!2716 = !{!2714, !110, i64 8}
!2717 = !DILocation(line: 984, column: 17, scope: !2541)
!2718 = !DILocation(line: 985, column: 17, scope: !2541)
!2719 = !DILocation(line: 986, column: 13, scope: !2541)
!2720 = !DILocation(line: 987, column: 9, scope: !2536)
!2721 = !DILocation(line: 987, column: 9, scope: !2535)
!2722 = !DILocation(line: 988, column: 17, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 988, column: 17)
!2724 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 987, column: 16)
!2725 = !DILocation(line: 988, column: 17, scope: !2724)
!2726 = !DILocation(line: 989, column: 47, scope: !2723)
!2727 = !DILocation(line: 989, column: 66, scope: !2723)
!2728 = !DILocation(line: 989, column: 17, scope: !2723)
!2729 = !DILocation(line: 992, column: 17, scope: !2530)
!2730 = !DILocation(line: 993, column: 28, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2530, file: !1, line: 993, column: 13)
!2732 = !DILocation(line: 993, column: 19, scope: !2731)
!2733 = distinct !{!2733, !2576, !2734}
!2734 = !DILocation(line: 994, column: 5, scope: !2502)
!2735 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 995, column: 5, scope: !2502)
!2737 = !DILocation(line: 757, column: 18, scope: !2008, inlinedAt: !2736)
!2738 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !2736)
!2739 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !2736)
!2740 = !DILocation(line: 996, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 996, column: 9)
!2742 = !DILocation(line: 996, column: 9, scope: !2502)
!2743 = !DILocation(line: 996, column: 23, scope: !2741)
!2744 = !DILocation(line: 998, column: 1, scope: !2502)
!2745 = distinct !DISubprogram(name: "streamReplyWithRangeFromConsumerPEL", scope: !1, file: !1, line: 1013, type: !2746, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!13, !2062, !69, !167, !167, !13, !2315}
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2762, !2765}
!2749 = !DILocalVariable(name: "c", arg: 1, scope: !2745, file: !1, line: 1013, type: !2062)
!2750 = !DILocalVariable(name: "s", arg: 2, scope: !2745, file: !1, line: 1013, type: !69)
!2751 = !DILocalVariable(name: "start", arg: 3, scope: !2745, file: !1, line: 1013, type: !167)
!2752 = !DILocalVariable(name: "end", arg: 4, scope: !2745, file: !1, line: 1013, type: !167)
!2753 = !DILocalVariable(name: "count", arg: 5, scope: !2745, file: !1, line: 1013, type: !13)
!2754 = !DILocalVariable(name: "consumer", arg: 6, scope: !2745, file: !1, line: 1013, type: !2315)
!2755 = !DILocalVariable(name: "ri", scope: !2745, file: !1, line: 1014, type: !384)
!2756 = !DILocalVariable(name: "startkey", scope: !2745, file: !1, line: 1015, type: !1386)
!2757 = !DILocalVariable(name: "endkey", scope: !2745, file: !1, line: 1016, type: !1386)
!2758 = !DILocalVariable(name: "arraylen", scope: !2745, file: !1, line: 1020, type: !13)
!2759 = !DILocalVariable(name: "arraylen_ptr", scope: !2745, file: !1, line: 1021, type: !7)
!2760 = !DILocalVariable(name: "thisid", scope: !2761, file: !1, line: 1026, type: !95)
!2761 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 1024, column: 57)
!2762 = !DILocalVariable(name: "id", scope: !2763, file: !1, line: 1036, type: !95)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 1030, column: 9)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 1028, column: 13)
!2765 = !DILocalVariable(name: "nack", scope: !2766, file: !1, line: 1041, type: !2308)
!2766 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 1040, column: 16)
!2767 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1037, column: 13, scope: !2763)
!2769 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1027, column: 9, scope: !2761)
!2771 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1018, column: 14, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2745, file: !1, line: 1018, column: 9)
!2774 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1017, column: 5, scope: !2745)
!2776 = !DILocation(line: 1013, column: 52, scope: !2745)
!2777 = !DILocation(line: 1013, column: 63, scope: !2745)
!2778 = !DILocation(line: 1013, column: 76, scope: !2745)
!2779 = !DILocation(line: 1013, column: 93, scope: !2745)
!2780 = !DILocation(line: 1013, column: 105, scope: !2745)
!2781 = !DILocation(line: 1013, column: 128, scope: !2745)
!2782 = !DILocation(line: 1014, column: 5, scope: !2745)
!2783 = !DILocation(line: 1015, column: 5, scope: !2745)
!2784 = !DILocation(line: 1015, column: 19, scope: !2745)
!2785 = !DILocation(line: 1016, column: 5, scope: !2745)
!2786 = !DILocation(line: 1016, column: 19, scope: !2745)
!2787 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2775)
!2788 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2775)
!2789 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2775)
!2790 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2775)
!2791 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !2775)
!2792 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2775)
!2793 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2775)
!2794 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !2775)
!2795 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2775)
!2796 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2775)
!2797 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2775)
!2798 = !DILocation(line: 1018, column: 9, scope: !2773)
!2799 = !DILocation(line: 1018, column: 9, scope: !2745)
!2800 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2772)
!2801 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2772)
!2802 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2772)
!2803 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2772)
!2804 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2772)
!2805 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2772)
!2806 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2772)
!2807 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2772)
!2808 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2772)
!2809 = !DILocation(line: 1018, column: 14, scope: !2773)
!2810 = !DILocation(line: 1020, column: 12, scope: !2745)
!2811 = !DILocation(line: 1021, column: 26, scope: !2745)
!2812 = !DILocation(line: 1021, column: 11, scope: !2745)
!2813 = !DILocation(line: 1022, column: 28, scope: !2745)
!2814 = !DILocation(line: 1014, column: 17, scope: !2745)
!2815 = !DILocation(line: 1022, column: 5, scope: !2745)
!2816 = !DILocation(line: 1023, column: 5, scope: !2745)
!2817 = !DILocation(line: 1025, column: 30, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 1025, column: 13)
!2819 = !DILocation(line: 1024, column: 11, scope: !2745)
!2820 = !DILocation(line: 1024, column: 35, scope: !2745)
!2821 = !DILocation(line: 1024, column: 24, scope: !2745)
!2822 = !DILocation(line: 1025, column: 17, scope: !2818)
!2823 = !DILocation(line: 1025, column: 41, scope: !2818)
!2824 = !DILocation(line: 1025, column: 20, scope: !2818)
!2825 = !DILocation(line: 1025, column: 50, scope: !2818)
!2826 = !DILocation(line: 1025, column: 13, scope: !2761)
!2827 = !DILocation(line: 1026, column: 9, scope: !2761)
!2828 = !DILocation(line: 1027, column: 27, scope: !2761)
!2829 = !DILocation(line: 1026, column: 18, scope: !2761)
!2830 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2770)
!2831 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2770)
!2832 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2770)
!2833 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2770)
!2834 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2770)
!2835 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !2770)
!2836 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2770)
!2837 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !2770)
!2838 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2770)
!2839 = !DILocation(line: 1028, column: 13, scope: !2764)
!2840 = !DILocation(line: 1029, column: 62, scope: !2764)
!2841 = !DILocation(line: 1028, column: 13, scope: !2761)
!2842 = !DILocation(line: 1035, column: 13, scope: !2763)
!2843 = !DILocation(line: 1037, column: 31, scope: !2763)
!2844 = !DILocation(line: 1036, column: 22, scope: !2763)
!2845 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2768)
!2846 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2768)
!2847 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2768)
!2848 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2768)
!2849 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2768)
!2850 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2768)
!2851 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2768)
!2852 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1038, column: 13, scope: !2763)
!2854 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !2853)
!2855 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !2853)
!2856 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !2853)
!2857 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !2853)
!2858 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !2853)
!2859 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !2853)
!2860 = !DILocation(line: 1039, column: 31, scope: !2763)
!2861 = !{!2862, !110, i64 88}
!2862 = !{!"sharedObjectsStruct", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !110, i64 96, !110, i64 104, !110, i64 112, !110, i64 120, !110, i64 128, !110, i64 136, !110, i64 144, !110, i64 152, !110, i64 160, !110, i64 168, !110, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !110, i64 208, !110, i64 216, !110, i64 224, !110, i64 232, !110, i64 240, !110, i64 248, !110, i64 256, !110, i64 264, !110, i64 272, !110, i64 280, !110, i64 288, !110, i64 296, !110, i64 304, !110, i64 312, !110, i64 320, !110, i64 328, !110, i64 336, !110, i64 344, !110, i64 352, !110, i64 360, !111, i64 368, !111, i64 448, !111, i64 80448, !111, i64 80704, !110, i64 80960, !110, i64 80968}
!2863 = !DILocation(line: 1039, column: 13, scope: !2763)
!2864 = !DILocation(line: 1040, column: 9, scope: !2763)
!2865 = !DILocation(line: 1041, column: 35, scope: !2766)
!2866 = !DILocation(line: 1041, column: 25, scope: !2766)
!2867 = !DILocation(line: 1042, column: 35, scope: !2766)
!2868 = !DILocation(line: 1042, column: 19, scope: !2766)
!2869 = !DILocation(line: 1042, column: 33, scope: !2766)
!2870 = !DILocation(line: 1043, column: 19, scope: !2766)
!2871 = !DILocation(line: 1043, column: 33, scope: !2766)
!2872 = !DILocation(line: 1045, column: 17, scope: !2761)
!2873 = !DILocation(line: 1046, column: 5, scope: !2745)
!2874 = distinct !{!2874, !2875, !2873}
!2875 = !DILocation(line: 1024, column: 5, scope: !2745)
!2876 = !DILocation(line: 0, scope: !2761)
!2877 = !DILocation(line: 1047, column: 5, scope: !2745)
!2878 = !DILocation(line: 1048, column: 5, scope: !2745)
!2879 = !DILocation(line: 1050, column: 1, scope: !2745)
!2880 = !DILocation(line: 1049, column: 5, scope: !2745)
!2881 = !DILocation(line: 1592, column: 46, scope: !2644)
!2882 = !DILocation(line: 1593, column: 24, scope: !2644)
!2883 = !DILocation(line: 1593, column: 17, scope: !2644)
!2884 = !DILocation(line: 1594, column: 27, scope: !2644)
!2885 = !DILocation(line: 1594, column: 11, scope: !2644)
!2886 = !DILocation(line: 1594, column: 25, scope: !2644)
!2887 = !DILocation(line: 1595, column: 11, scope: !2644)
!2888 = !DILocation(line: 1595, column: 26, scope: !2644)
!2889 = !DILocation(line: 1596, column: 11, scope: !2644)
!2890 = !DILocation(line: 1596, column: 20, scope: !2644)
!2891 = !DILocation(line: 1597, column: 5, scope: !2644)
!2892 = !DILocation(line: 1601, column: 33, scope: !2671)
!2893 = !DILocation(line: 1602, column: 11, scope: !2671)
!2894 = !DILocation(line: 1602, column: 5, scope: !2671)
!2895 = !DILocation(line: 1603, column: 1, scope: !2671)
!2896 = distinct !DISubprogram(name: "streamTypeLookupWriteOrCreate", scope: !1, file: !1, line: 1058, type: !2897, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!367, !2062, !367}
!2899 = !{!2900, !2901, !2902}
!2900 = !DILocalVariable(name: "c", arg: 1, scope: !2896, file: !1, line: 1058, type: !2062)
!2901 = !DILocalVariable(name: "key", arg: 2, scope: !2896, file: !1, line: 1058, type: !367)
!2902 = !DILocalVariable(name: "o", scope: !2896, file: !1, line: 1059, type: !367)
!2903 = !DILocation(line: 1058, column: 45, scope: !2896)
!2904 = !DILocation(line: 1058, column: 54, scope: !2896)
!2905 = !DILocation(line: 1059, column: 33, scope: !2896)
!2906 = !DILocation(line: 1059, column: 15, scope: !2896)
!2907 = !DILocation(line: 1059, column: 11, scope: !2896)
!2908 = !DILocation(line: 1060, column: 11, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2896, file: !1, line: 1060, column: 9)
!2910 = !DILocation(line: 1060, column: 9, scope: !2896)
!2911 = !DILocation(line: 1061, column: 13, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !1, line: 1060, column: 20)
!2913 = !DILocation(line: 1062, column: 18, scope: !2912)
!2914 = !DILocation(line: 1062, column: 9, scope: !2912)
!2915 = !DILocation(line: 1063, column: 5, scope: !2912)
!2916 = !DILocation(line: 1064, column: 16, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !1, line: 1064, column: 13)
!2918 = distinct !DILexicalBlock(scope: !2909, file: !1, line: 1063, column: 12)
!2919 = !DILocation(line: 1064, column: 21, scope: !2917)
!2920 = !DILocation(line: 1064, column: 13, scope: !2918)
!2921 = !DILocation(line: 1065, column: 31, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !1, line: 1064, column: 36)
!2923 = !{!2862, !110, i64 112}
!2924 = !DILocation(line: 1065, column: 13, scope: !2922)
!2925 = !DILocation(line: 1066, column: 13, scope: !2922)
!2926 = !DILocation(line: 0, scope: !2922)
!2927 = !DILocation(line: 1070, column: 1, scope: !2896)
!2928 = distinct !DISubprogram(name: "string2ull", scope: !1, file: !1, line: 1077, type: !2929, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2934)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!12, !2931, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2934 = !{!2935, !2936, !2937, !2938}
!2935 = !DILocalVariable(name: "s", arg: 1, scope: !2928, file: !1, line: 1077, type: !2931)
!2936 = !DILocalVariable(name: "value", arg: 2, scope: !2928, file: !1, line: 1077, type: !2933)
!2937 = !DILocalVariable(name: "ll", scope: !2928, file: !1, line: 1078, type: !246)
!2938 = !DILocalVariable(name: "endptr", scope: !2928, file: !1, line: 1085, type: !10)
!2939 = !DILocation(line: 1077, column: 28, scope: !2928)
!2940 = !DILocation(line: 1077, column: 51, scope: !2928)
!2941 = !DILocation(line: 1078, column: 5, scope: !2928)
!2942 = !DILocation(line: 1079, column: 21, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2928, file: !1, line: 1079, column: 9)
!2944 = !DILocation(line: 1078, column: 15, scope: !2928)
!2945 = !DILocation(line: 1079, column: 9, scope: !2943)
!2946 = !DILocation(line: 1079, column: 9, scope: !2928)
!2947 = !DILocation(line: 1080, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !1, line: 1080, column: 13)
!2949 = distinct !DILexicalBlock(scope: !2943, file: !1, line: 1079, column: 37)
!2950 = !DILocation(line: 1080, column: 16, scope: !2948)
!2951 = !DILocation(line: 1080, column: 13, scope: !2949)
!2952 = !DILocation(line: 1081, column: 16, scope: !2949)
!2953 = !DILocation(line: 1082, column: 9, scope: !2949)
!2954 = !DILocation(line: 1084, column: 5, scope: !2928)
!2955 = !DILocation(line: 1084, column: 11, scope: !2928)
!2956 = !DILocation(line: 1085, column: 5, scope: !2928)
!2957 = !DILocation(line: 1085, column: 11, scope: !2928)
!2958 = !DILocation(line: 1086, column: 14, scope: !2928)
!2959 = !DILocation(line: 1086, column: 12, scope: !2928)
!2960 = !DILocation(line: 1087, column: 9, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2928, file: !1, line: 1087, column: 9)
!2962 = !DILocation(line: 1087, column: 15, scope: !2961)
!2963 = !DILocation(line: 1087, column: 25, scope: !2961)
!2964 = !DILocation(line: 1087, column: 28, scope: !2961)
!2965 = !DILocation(line: 1087, column: 34, scope: !2961)
!2966 = !DILocation(line: 1087, column: 44, scope: !2961)
!2967 = !DILocation(line: 1087, column: 49, scope: !2961)
!2968 = !DILocation(line: 1087, column: 52, scope: !2961)
!2969 = !DILocation(line: 1087, column: 60, scope: !2961)
!2970 = !DILocation(line: 1087, column: 64, scope: !2961)
!2971 = !DILocation(line: 1087, column: 63, scope: !2961)
!2972 = !DILocation(line: 1087, column: 71, scope: !2961)
!2973 = !DILocation(line: 1087, column: 9, scope: !2928)
!2974 = !DILocation(line: 0, scope: !2928)
!2975 = !DILocation(line: 1090, column: 1, scope: !2928)
!2976 = !DILocation(line: 0, scope: !2961)
!2977 = distinct !DISubprogram(name: "streamGenericParseIDOrReply", scope: !1, file: !1, line: 1104, type: !2978, isLocal: false, isDefinition: true, scopeLine: 1104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!12, !2062, !367, !167, !57, !12}
!2980 = !{!2981, !2982, !2983, !2984, !2985, !2986, !2988, !2989, !2990}
!2981 = !DILocalVariable(name: "c", arg: 1, scope: !2977, file: !1, line: 1104, type: !2062)
!2982 = !DILocalVariable(name: "o", arg: 2, scope: !2977, file: !1, line: 1104, type: !367)
!2983 = !DILocalVariable(name: "id", arg: 3, scope: !2977, file: !1, line: 1104, type: !167)
!2984 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !2977, file: !1, line: 1104, type: !57)
!2985 = !DILocalVariable(name: "strict", arg: 5, scope: !2977, file: !1, line: 1104, type: !12)
!2986 = !DILocalVariable(name: "buf", scope: !2977, file: !1, line: 1105, type: !2987)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !395)
!2988 = !DILocalVariable(name: "dot", scope: !2977, file: !1, line: 1124, type: !10)
!2989 = !DILocalVariable(name: "ms", scope: !2977, file: !1, line: 1126, type: !2201)
!2990 = !DILocalVariable(name: "seq", scope: !2977, file: !1, line: 1126, type: !2201)
!2991 = !DILocation(line: 1104, column: 41, scope: !2977)
!2992 = !DILocation(line: 1104, column: 50, scope: !2977)
!2993 = !DILocation(line: 1104, column: 63, scope: !2977)
!2994 = !DILocation(line: 1104, column: 76, scope: !2977)
!2995 = !DILocation(line: 1104, column: 93, scope: !2977)
!2996 = !DILocation(line: 1105, column: 5, scope: !2977)
!2997 = !DILocation(line: 1105, column: 10, scope: !2977)
!2998 = !DILocation(line: 1106, column: 19, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1106, column: 9)
!3000 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 1106, column: 9, scope: !2999)
!3002 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !3001)
!3003 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !3001)
!3004 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !3001)
!3005 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !3001)
!3006 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !3001)
!3007 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !3001)
!3008 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !3001)
!3009 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !3001)
!3010 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !3001)
!3011 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !3001)
!3012 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !3001)
!3013 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !3001)
!3014 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !3001)
!3015 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !3001)
!3016 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !3001)
!3017 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !3001)
!3018 = !DILocation(line: 1106, column: 9, scope: !2977)
!3019 = !DILocation(line: 0, scope: !667, inlinedAt: !3001)
!3020 = !DILocation(line: 1106, column: 24, scope: !2999)
!3021 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1107, column: 23, scope: !2977)
!3023 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !3022)
!3024 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !3022)
!3025 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !3022)
!3026 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !3022)
!3027 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !3022)
!3028 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !3022)
!3029 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !3022)
!3030 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !3022)
!3031 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !3022)
!3032 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !3022)
!3033 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !3022)
!3034 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !3022)
!3035 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !3022)
!3036 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !3022)
!3037 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !3022)
!3038 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !3022)
!3039 = !DILocation(line: 0, scope: !667, inlinedAt: !3022)
!3040 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !3022)
!3041 = !DILocation(line: 1107, column: 37, scope: !2977)
!3042 = !DILocation(line: 1107, column: 5, scope: !2977)
!3043 = !DILocation(line: 1109, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1109, column: 9)
!3045 = !DILocation(line: 0, scope: !3044)
!3046 = !DILocation(line: 1109, column: 16, scope: !3044)
!3047 = !DILocation(line: 1109, column: 34, scope: !3044)
!3048 = !DILocation(line: 1109, column: 55, scope: !3044)
!3049 = !DILocation(line: 1109, column: 62, scope: !3044)
!3050 = !DILocation(line: 1109, column: 9, scope: !2977)
!3051 = !DILocation(line: 1113, column: 23, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1113, column: 9)
!3053 = !DILocation(line: 1113, column: 26, scope: !3052)
!3054 = !DILocation(line: 1113, column: 33, scope: !3052)
!3055 = !DILocation(line: 1113, column: 9, scope: !2977)
!3056 = !DILocation(line: 1114, column: 16, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 1113, column: 42)
!3058 = !DILocation(line: 1116, column: 9, scope: !3057)
!3059 = !DILocation(line: 1117, column: 33, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 1117, column: 16)
!3061 = !DILocation(line: 1117, column: 40, scope: !3060)
!3062 = !DILocation(line: 1117, column: 16, scope: !3052)
!3063 = !DILocation(line: 1118, column: 16, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 1117, column: 49)
!3065 = !DILocation(line: 1120, column: 9, scope: !3064)
!3066 = !DILocation(line: 1124, column: 17, scope: !2977)
!3067 = !DILocation(line: 1124, column: 11, scope: !2977)
!3068 = !DILocation(line: 1125, column: 9, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1125, column: 9)
!3070 = !DILocation(line: 1125, column: 9, scope: !2977)
!3071 = !DILocation(line: 1125, column: 19, scope: !3069)
!3072 = !DILocation(line: 1125, column: 14, scope: !3069)
!3073 = !DILocation(line: 1126, column: 24, scope: !2977)
!3074 = !DILocation(line: 1127, column: 9, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1127, column: 9)
!3076 = !DILocation(line: 1127, column: 29, scope: !3075)
!3077 = !DILocation(line: 1127, column: 9, scope: !2977)
!3078 = !DILocation(line: 1128, column: 13, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1128, column: 9)
!3080 = !DILocation(line: 1128, column: 30, scope: !3079)
!3081 = !DILocation(line: 1126, column: 28, scope: !2977)
!3082 = !DILocation(line: 1128, column: 16, scope: !3079)
!3083 = !DILocation(line: 1128, column: 39, scope: !3079)
!3084 = !DILocation(line: 1128, column: 9, scope: !2977)
!3085 = !DILocation(line: 1131, column: 15, scope: !2977)
!3086 = !DILocation(line: 1129, column: 19, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1129, column: 9)
!3088 = !DILocation(line: 1129, column: 15, scope: !3087)
!3089 = !DILocation(line: 1130, column: 14, scope: !2977)
!3090 = !DILocation(line: 1130, column: 9, scope: !2977)
!3091 = !DILocation(line: 1130, column: 12, scope: !2977)
!3092 = !DILocation(line: 1131, column: 9, scope: !2977)
!3093 = !DILocation(line: 1131, column: 13, scope: !2977)
!3094 = !DILocation(line: 1132, column: 5, scope: !2977)
!3095 = !DILocation(line: 1135, column: 9, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1135, column: 9)
!3097 = !DILocation(line: 1135, column: 9, scope: !2977)
!3098 = !DILocation(line: 1135, column: 12, scope: !3096)
!3099 = !DILocation(line: 0, scope: !2977)
!3100 = !DILocation(line: 1138, column: 1, scope: !2977)
!3101 = distinct !DISubprogram(name: "streamParseIDOrReply", scope: !1, file: !1, line: 1142, type: !3102, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!12, !2062, !367, !167, !57}
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DILocalVariable(name: "c", arg: 1, scope: !3101, file: !1, line: 1142, type: !2062)
!3106 = !DILocalVariable(name: "o", arg: 2, scope: !3101, file: !1, line: 1142, type: !367)
!3107 = !DILocalVariable(name: "id", arg: 3, scope: !3101, file: !1, line: 1142, type: !167)
!3108 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3101, file: !1, line: 1142, type: !57)
!3109 = !DILocation(line: 1142, column: 34, scope: !3101)
!3110 = !DILocation(line: 1142, column: 43, scope: !3101)
!3111 = !DILocation(line: 1142, column: 56, scope: !3101)
!3112 = !DILocation(line: 1142, column: 69, scope: !3101)
!3113 = !DILocation(line: 1143, column: 12, scope: !3101)
!3114 = !DILocation(line: 1143, column: 5, scope: !3101)
!3115 = distinct !DISubprogram(name: "streamParseStrictIDOrReply", scope: !1, file: !1, line: 1149, type: !3102, isLocal: false, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3116)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "c", arg: 1, scope: !3115, file: !1, line: 1149, type: !2062)
!3118 = !DILocalVariable(name: "o", arg: 2, scope: !3115, file: !1, line: 1149, type: !367)
!3119 = !DILocalVariable(name: "id", arg: 3, scope: !3115, file: !1, line: 1149, type: !167)
!3120 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3115, file: !1, line: 1149, type: !57)
!3121 = !DILocation(line: 1149, column: 40, scope: !3115)
!3122 = !DILocation(line: 1149, column: 49, scope: !3115)
!3123 = !DILocation(line: 1149, column: 62, scope: !3115)
!3124 = !DILocation(line: 1149, column: 75, scope: !3115)
!3125 = !DILocation(line: 1150, column: 12, scope: !3115)
!3126 = !DILocation(line: 1150, column: 5, scope: !3115)
!3127 = distinct !DISubprogram(name: "streamRewriteApproxMaxlen", scope: !1, file: !1, line: 1155, type: !3128, isLocal: false, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !2062, !69, !12}
!3130 = !{!3131, !3132, !3133, !3134, !3135}
!3131 = !DILocalVariable(name: "c", arg: 1, scope: !3127, file: !1, line: 1155, type: !2062)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3127, file: !1, line: 1155, type: !69)
!3133 = !DILocalVariable(name: "maxlen_arg_idx", arg: 3, scope: !3127, file: !1, line: 1155, type: !12)
!3134 = !DILocalVariable(name: "maxlen_obj", scope: !3127, file: !1, line: 1156, type: !367)
!3135 = !DILocalVariable(name: "equal_obj", scope: !3127, file: !1, line: 1157, type: !367)
!3136 = !DILocation(line: 1155, column: 40, scope: !3127)
!3137 = !DILocation(line: 1155, column: 51, scope: !3127)
!3138 = !DILocation(line: 1155, column: 58, scope: !3127)
!3139 = !DILocation(line: 1156, column: 58, scope: !3127)
!3140 = !DILocation(line: 1156, column: 24, scope: !3127)
!3141 = !DILocation(line: 1156, column: 11, scope: !3127)
!3142 = !DILocation(line: 1157, column: 23, scope: !3127)
!3143 = !DILocation(line: 1157, column: 11, scope: !3127)
!3144 = !DILocation(line: 1159, column: 5, scope: !3127)
!3145 = !DILocation(line: 1160, column: 50, scope: !3127)
!3146 = !DILocation(line: 1160, column: 5, scope: !3127)
!3147 = !DILocation(line: 1162, column: 5, scope: !3127)
!3148 = !DILocation(line: 1163, column: 5, scope: !3127)
!3149 = !DILocation(line: 1164, column: 1, scope: !3127)
!3150 = distinct !DISubprogram(name: "xaddCommand", scope: !1, file: !1, line: 1167, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3163, !3164, !3168, !3169, !3170, !3171}
!3152 = !DILocalVariable(name: "c", arg: 1, scope: !3150, file: !1, line: 1167, type: !2062)
!3153 = !DILocalVariable(name: "id", scope: !3150, file: !1, line: 1168, type: !95)
!3154 = !DILocalVariable(name: "id_given", scope: !3150, file: !1, line: 1169, type: !12)
!3155 = !DILocalVariable(name: "maxlen", scope: !3150, file: !1, line: 1170, type: !246)
!3156 = !DILocalVariable(name: "approx_maxlen", scope: !3150, file: !1, line: 1171, type: !12)
!3157 = !DILocalVariable(name: "maxlen_arg_idx", scope: !3150, file: !1, line: 1173, type: !12)
!3158 = !DILocalVariable(name: "i", scope: !3150, file: !1, line: 1176, type: !12)
!3159 = !DILocalVariable(name: "moreargs", scope: !3160, file: !1, line: 1179, type: !12)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !1, line: 1178, column: 30)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !1, line: 1178, column: 5)
!3162 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1178, column: 5)
!3163 = !DILocalVariable(name: "opt", scope: !3160, file: !1, line: 1180, type: !10)
!3164 = !DILocalVariable(name: "next", scope: !3165, file: !1, line: 1187, type: !10)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 1185, column: 59)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !1, line: 1185, column: 20)
!3167 = distinct !DILexicalBlock(scope: !3160, file: !1, line: 1181, column: 13)
!3168 = !DILocalVariable(name: "field_pos", scope: !3150, file: !1, line: 1211, type: !12)
!3169 = !DILocalVariable(name: "o", scope: !3150, file: !1, line: 1220, type: !367)
!3170 = !DILocalVariable(name: "s", scope: !3150, file: !1, line: 1221, type: !69)
!3171 = !DILocalVariable(name: "idarg", scope: !3150, file: !1, line: 1250, type: !367)
!3172 = !DILocation(line: 1167, column: 26, scope: !3150)
!3173 = !DILocation(line: 1168, column: 5, scope: !3150)
!3174 = !DILocation(line: 1169, column: 9, scope: !3150)
!3175 = !DILocation(line: 1170, column: 5, scope: !3150)
!3176 = !DILocation(line: 1170, column: 15, scope: !3150)
!3177 = !DILocation(line: 1171, column: 9, scope: !3150)
!3178 = !DILocation(line: 1173, column: 9, scope: !3150)
!3179 = !DILocation(line: 1176, column: 9, scope: !3150)
!3180 = !DILocation(line: 1178, column: 19, scope: !3161)
!3181 = !{!2422, !520, i64 64}
!3182 = !DILocation(line: 1178, column: 14, scope: !3161)
!3183 = !DILocation(line: 1178, column: 5, scope: !3162)
!3184 = !DILocation(line: 1179, column: 36, scope: !3160)
!3185 = !DILocation(line: 1179, column: 13, scope: !3160)
!3186 = !DILocation(line: 1180, column: 24, scope: !3160)
!3187 = !{!2422, !110, i64 72}
!3188 = !DILocation(line: 1180, column: 21, scope: !3160)
!3189 = !DILocation(line: 1180, column: 33, scope: !3160)
!3190 = !DILocation(line: 1180, column: 15, scope: !3160)
!3191 = !DILocation(line: 1181, column: 13, scope: !3167)
!3192 = !DILocation(line: 1181, column: 20, scope: !3167)
!3193 = !DILocation(line: 1181, column: 27, scope: !3167)
!3194 = !DILocation(line: 1181, column: 30, scope: !3167)
!3195 = !DILocation(line: 1181, column: 37, scope: !3167)
!3196 = !DILocation(line: 1181, column: 13, scope: !3160)
!3197 = !DILocation(line: 1185, column: 21, scope: !3166)
!3198 = !DILocation(line: 1185, column: 49, scope: !3166)
!3199 = !DILocation(line: 1185, column: 46, scope: !3166)
!3200 = !DILocation(line: 1187, column: 35, scope: !3165)
!3201 = !DILocation(line: 1187, column: 26, scope: !3165)
!3202 = !DILocation(line: 1187, column: 40, scope: !3165)
!3203 = !DILocation(line: 1187, column: 19, scope: !3165)
!3204 = !DILocation(line: 1189, column: 26, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 1189, column: 17)
!3206 = !DILocation(line: 1189, column: 31, scope: !3205)
!3207 = !DILocation(line: 1189, column: 34, scope: !3205)
!3208 = !DILocation(line: 1189, column: 49, scope: !3205)
!3209 = !DILocation(line: 1189, column: 52, scope: !3205)
!3210 = !DILocation(line: 1189, column: 60, scope: !3205)
!3211 = !DILocation(line: 1189, column: 17, scope: !3165)
!3212 = !DILocation(line: 1192, column: 59, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !1, line: 1192, column: 24)
!3214 = !DILocation(line: 1192, column: 67, scope: !3213)
!3215 = !DILocation(line: 1192, column: 24, scope: !3205)
!3216 = !DILocation(line: 0, scope: !3150)
!3217 = !DILocation(line: 0, scope: !3165)
!3218 = !DILocation(line: 1195, column: 57, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 1195, column: 17)
!3220 = !DILocation(line: 1195, column: 48, scope: !3219)
!3221 = !DILocation(line: 1195, column: 17, scope: !3219)
!3222 = !DILocation(line: 1196, column: 17, scope: !3219)
!3223 = !DILocation(line: 1195, column: 17, scope: !3165)
!3224 = !DILocation(line: 1198, column: 17, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 1198, column: 17)
!3226 = !DILocation(line: 1198, column: 24, scope: !3225)
!3227 = !DILocation(line: 1198, column: 17, scope: !3165)
!3228 = !DILocation(line: 1199, column: 17, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1198, column: 29)
!3230 = !DILocation(line: 1200, column: 17, scope: !3229)
!3231 = !DILocation(line: 1168, column: 14, scope: !3150)
!3232 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1206, column: 17, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !1, line: 1206, column: 17)
!3235 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 1204, column: 16)
!3236 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !3233)
!3237 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !3233)
!3238 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !3233)
!3239 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !3233)
!3240 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !3233)
!3241 = !DILocation(line: 1206, column: 64, scope: !3234)
!3242 = !DILocation(line: 1208, column: 13, scope: !3235)
!3243 = !DILocation(line: 1214, column: 13, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1214, column: 9)
!3245 = !DILocation(line: 1178, column: 26, scope: !3161)
!3246 = distinct !{!3246, !3183, !3247}
!3247 = !DILocation(line: 1210, column: 5, scope: !3162)
!3248 = !DILocation(line: 1211, column: 22, scope: !3150)
!3249 = !DILocation(line: 1211, column: 9, scope: !3150)
!3250 = !DILocation(line: 1214, column: 18, scope: !3244)
!3251 = !DILocation(line: 1214, column: 31, scope: !3244)
!3252 = !DILocation(line: 1214, column: 59, scope: !3244)
!3253 = !DILocation(line: 1214, column: 64, scope: !3244)
!3254 = !DILocation(line: 1214, column: 35, scope: !3244)
!3255 = !DILocation(line: 1215, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3244, file: !1, line: 1214, column: 70)
!3257 = !DILocation(line: 1216, column: 9, scope: !3256)
!3258 = !DILocation(line: 1222, column: 49, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1222, column: 9)
!3260 = !DILocation(line: 1222, column: 46, scope: !3259)
!3261 = !DILocation(line: 1058, column: 45, scope: !2896, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1222, column: 14, scope: !3259)
!3263 = !DILocation(line: 1058, column: 54, scope: !2896, inlinedAt: !3262)
!3264 = !DILocation(line: 1059, column: 33, scope: !2896, inlinedAt: !3262)
!3265 = !DILocation(line: 1059, column: 15, scope: !2896, inlinedAt: !3262)
!3266 = !DILocation(line: 1059, column: 11, scope: !2896, inlinedAt: !3262)
!3267 = !DILocation(line: 1060, column: 11, scope: !2909, inlinedAt: !3262)
!3268 = !DILocation(line: 1060, column: 9, scope: !2896, inlinedAt: !3262)
!3269 = !DILocation(line: 1064, column: 16, scope: !2917, inlinedAt: !3262)
!3270 = !DILocation(line: 1064, column: 21, scope: !2917, inlinedAt: !3262)
!3271 = !DILocation(line: 1064, column: 13, scope: !2918, inlinedAt: !3262)
!3272 = !DILocation(line: 1070, column: 1, scope: !2896, inlinedAt: !3262)
!3273 = !DILocation(line: 1220, column: 11, scope: !3150)
!3274 = !DILocation(line: 1222, column: 9, scope: !3150)
!3275 = !DILocation(line: 1065, column: 31, scope: !2922, inlinedAt: !3262)
!3276 = !DILocation(line: 1065, column: 13, scope: !2922, inlinedAt: !3262)
!3277 = !DILocation(line: 1061, column: 13, scope: !2912, inlinedAt: !3262)
!3278 = !DILocation(line: 1062, column: 18, scope: !2912, inlinedAt: !3262)
!3279 = !DILocation(line: 1062, column: 9, scope: !2912, inlinedAt: !3262)
!3280 = !DILocation(line: 1222, column: 59, scope: !3259)
!3281 = !DILocation(line: 1223, column: 12, scope: !3150)
!3282 = !DILocation(line: 1221, column: 13, scope: !3150)
!3283 = !DILocation(line: 1226, column: 31, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1226, column: 9)
!3285 = !DILocation(line: 1226, column: 35, scope: !3284)
!3286 = !DILocation(line: 1226, column: 50, scope: !3284)
!3287 = !DILocation(line: 1226, column: 54, scope: !3284)
!3288 = !DILocation(line: 1226, column: 65, scope: !3284)
!3289 = !DILocation(line: 1226, column: 46, scope: !3284)
!3290 = !DILocation(line: 1227, column: 14, scope: !3284)
!3291 = !DILocation(line: 1226, column: 9, scope: !3284)
!3292 = !DILocation(line: 1228, column: 9, scope: !3284)
!3293 = !DILocation(line: 1226, column: 9, scope: !3150)
!3294 = !DILocation(line: 1230, column: 9, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3284, file: !1, line: 1229, column: 5)
!3296 = !DILocation(line: 1232, column: 9, scope: !3295)
!3297 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 1234, column: 5, scope: !3150)
!3299 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !3298)
!3300 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !3298)
!3301 = !DILocation(line: 780, column: 52, scope: !2059, inlinedAt: !3298)
!3302 = !DILocation(line: 780, column: 59, scope: !2059, inlinedAt: !3298)
!3303 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !3298)
!3304 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !3298)
!3305 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !3298)
!3306 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !3298)
!3307 = !DILocation(line: 1236, column: 26, scope: !3150)
!3308 = !DILocation(line: 1236, column: 32, scope: !3150)
!3309 = !DILocation(line: 1236, column: 29, scope: !3150)
!3310 = !DILocation(line: 1236, column: 5, scope: !3150)
!3311 = !DILocation(line: 1237, column: 49, scope: !3150)
!3312 = !DILocation(line: 1237, column: 46, scope: !3150)
!3313 = !DILocation(line: 1237, column: 60, scope: !3150)
!3314 = !DILocation(line: 1237, column: 64, scope: !3150)
!3315 = !DILocation(line: 1237, column: 5, scope: !3150)
!3316 = !DILocation(line: 1238, column: 17, scope: !3150)
!3317 = !{!549, !266, i64 2080}
!3318 = !DILocation(line: 1240, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1240, column: 9)
!3320 = !DILocation(line: 1240, column: 16, scope: !3319)
!3321 = !DILocation(line: 1240, column: 9, scope: !3150)
!3322 = !DILocation(line: 1242, column: 13, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !1, line: 1242, column: 13)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !1, line: 1240, column: 22)
!3325 = !DILocation(line: 1242, column: 13, scope: !3324)
!3326 = !DILocation(line: 1243, column: 58, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !1, line: 1242, column: 57)
!3328 = !DILocation(line: 1243, column: 55, scope: !3327)
!3329 = !DILocation(line: 1243, column: 69, scope: !3327)
!3330 = !DILocation(line: 1243, column: 73, scope: !3327)
!3331 = !DILocation(line: 1243, column: 13, scope: !3327)
!3332 = !DILocation(line: 1244, column: 9, scope: !3327)
!3333 = !DILocation(line: 1245, column: 13, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3324, file: !1, line: 1245, column: 13)
!3335 = !DILocation(line: 1245, column: 13, scope: !3324)
!3336 = !DILocation(line: 1155, column: 40, scope: !3127, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1245, column: 28, scope: !3334)
!3338 = !DILocation(line: 1155, column: 51, scope: !3127, inlinedAt: !3337)
!3339 = !DILocation(line: 1155, column: 58, scope: !3127, inlinedAt: !3337)
!3340 = !DILocation(line: 1156, column: 58, scope: !3127, inlinedAt: !3337)
!3341 = !DILocation(line: 1156, column: 24, scope: !3127, inlinedAt: !3337)
!3342 = !DILocation(line: 1156, column: 11, scope: !3127, inlinedAt: !3337)
!3343 = !DILocation(line: 1157, column: 23, scope: !3127, inlinedAt: !3337)
!3344 = !DILocation(line: 1157, column: 11, scope: !3127, inlinedAt: !3337)
!3345 = !DILocation(line: 1159, column: 5, scope: !3127, inlinedAt: !3337)
!3346 = !DILocation(line: 1160, column: 50, scope: !3127, inlinedAt: !3337)
!3347 = !DILocation(line: 1160, column: 5, scope: !3127, inlinedAt: !3337)
!3348 = !DILocation(line: 1162, column: 5, scope: !3127, inlinedAt: !3337)
!3349 = !DILocation(line: 1163, column: 5, scope: !3127, inlinedAt: !3337)
!3350 = !DILocation(line: 1164, column: 1, scope: !3127, inlinedAt: !3337)
!3351 = !DILocation(line: 1245, column: 28, scope: !3334)
!3352 = !DILocation(line: 786, column: 42, scope: !2293, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 1250, column: 19, scope: !3150)
!3354 = !DILocation(line: 787, column: 47, scope: !2293, inlinedAt: !3353)
!3355 = !DILocation(line: 788, column: 29, scope: !2293, inlinedAt: !3353)
!3356 = !DILocation(line: 788, column: 36, scope: !2293, inlinedAt: !3353)
!3357 = !DILocation(line: 787, column: 37, scope: !2293, inlinedAt: !3353)
!3358 = !DILocation(line: 787, column: 12, scope: !2293, inlinedAt: !3353)
!3359 = !DILocation(line: 787, column: 5, scope: !2293, inlinedAt: !3353)
!3360 = !DILocation(line: 1250, column: 11, scope: !3150)
!3361 = !DILocation(line: 1251, column: 5, scope: !3150)
!3362 = !DILocation(line: 1252, column: 5, scope: !3150)
!3363 = !DILocation(line: 1256, column: 9, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3150, file: !1, line: 1256, column: 9)
!3365 = !DILocation(line: 1256, column: 9, scope: !3150)
!3366 = !DILocation(line: 1257, column: 29, scope: !3364)
!3367 = !DILocation(line: 1257, column: 36, scope: !3364)
!3368 = !DILocation(line: 1257, column: 33, scope: !3364)
!3369 = !DILocation(line: 1257, column: 9, scope: !3364)
!3370 = !DILocation(line: 1258, column: 1, scope: !3150)
!3371 = distinct !DISubprogram(name: "xrangeGenericCommand", scope: !1, file: !1, line: 1261, type: !3372, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !2062, !12}
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3388}
!3375 = !DILocalVariable(name: "c", arg: 1, scope: !3371, file: !1, line: 1261, type: !2062)
!3376 = !DILocalVariable(name: "rev", arg: 2, scope: !3371, file: !1, line: 1261, type: !12)
!3377 = !DILocalVariable(name: "o", scope: !3371, file: !1, line: 1262, type: !367)
!3378 = !DILocalVariable(name: "s", scope: !3371, file: !1, line: 1263, type: !69)
!3379 = !DILocalVariable(name: "startid", scope: !3371, file: !1, line: 1264, type: !95)
!3380 = !DILocalVariable(name: "endid", scope: !3371, file: !1, line: 1264, type: !95)
!3381 = !DILocalVariable(name: "count", scope: !3371, file: !1, line: 1265, type: !246)
!3382 = !DILocalVariable(name: "startarg", scope: !3371, file: !1, line: 1266, type: !367)
!3383 = !DILocalVariable(name: "endarg", scope: !3371, file: !1, line: 1267, type: !367)
!3384 = !DILocalVariable(name: "j", scope: !3385, file: !1, line: 1274, type: !12)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !1, line: 1274, column: 9)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !1, line: 1273, column: 22)
!3387 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1273, column: 9)
!3388 = !DILocalVariable(name: "additional", scope: !3389, file: !1, line: 1275, type: !12)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !1, line: 1274, column: 43)
!3390 = distinct !DILexicalBlock(scope: !3385, file: !1, line: 1274, column: 9)
!3391 = !DILocation(line: 1261, column: 35, scope: !3371)
!3392 = !DILocation(line: 1261, column: 42, scope: !3371)
!3393 = !DILocation(line: 1264, column: 5, scope: !3371)
!3394 = !DILocation(line: 1265, column: 5, scope: !3371)
!3395 = !DILocation(line: 1265, column: 15, scope: !3371)
!3396 = !DILocation(line: 1266, column: 22, scope: !3371)
!3397 = !DILocation(line: 0, scope: !3371)
!3398 = !DILocation(line: 1266, column: 28, scope: !3371)
!3399 = !DILocation(line: 1266, column: 41, scope: !3371)
!3400 = !DILocation(line: 1266, column: 11, scope: !3371)
!3401 = !DILocation(line: 1267, column: 20, scope: !3371)
!3402 = !DILocation(line: 1267, column: 11, scope: !3371)
!3403 = !DILocation(line: 1264, column: 14, scope: !3371)
!3404 = !DILocation(line: 1142, column: 34, scope: !3101, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 1269, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1269, column: 9)
!3407 = !DILocation(line: 1142, column: 43, scope: !3101, inlinedAt: !3405)
!3408 = !DILocation(line: 1142, column: 56, scope: !3101, inlinedAt: !3405)
!3409 = !DILocation(line: 1142, column: 69, scope: !3101, inlinedAt: !3405)
!3410 = !DILocation(line: 1143, column: 12, scope: !3101, inlinedAt: !3405)
!3411 = !DILocation(line: 1143, column: 5, scope: !3101, inlinedAt: !3405)
!3412 = !DILocation(line: 1269, column: 53, scope: !3406)
!3413 = !DILocation(line: 1269, column: 9, scope: !3371)
!3414 = !DILocation(line: 1264, column: 23, scope: !3371)
!3415 = !DILocation(line: 1142, column: 34, scope: !3101, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1270, column: 9, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1270, column: 9)
!3418 = !DILocation(line: 1142, column: 43, scope: !3101, inlinedAt: !3416)
!3419 = !DILocation(line: 1142, column: 56, scope: !3101, inlinedAt: !3416)
!3420 = !DILocation(line: 1142, column: 69, scope: !3101, inlinedAt: !3416)
!3421 = !DILocation(line: 1143, column: 12, scope: !3101, inlinedAt: !3416)
!3422 = !DILocation(line: 1143, column: 5, scope: !3101, inlinedAt: !3416)
!3423 = !DILocation(line: 1270, column: 58, scope: !3417)
!3424 = !DILocation(line: 1270, column: 9, scope: !3371)
!3425 = !DILocation(line: 1273, column: 12, scope: !3387)
!3426 = !DILocation(line: 1273, column: 17, scope: !3387)
!3427 = !DILocation(line: 1273, column: 9, scope: !3371)
!3428 = !DILocation(line: 1274, column: 18, scope: !3385)
!3429 = !DILocation(line: 1275, column: 39, scope: !3389)
!3430 = !DILocation(line: 1275, column: 17, scope: !3389)
!3431 = !DILocation(line: 1276, column: 31, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 1276, column: 17)
!3433 = !DILocation(line: 1276, column: 28, scope: !3432)
!3434 = !DILocation(line: 1276, column: 40, scope: !3432)
!3435 = !DILocation(line: 1276, column: 17, scope: !3432)
!3436 = !DILocation(line: 1276, column: 53, scope: !3432)
!3437 = !DILocation(line: 1276, column: 72, scope: !3432)
!3438 = !DILocation(line: 1276, column: 58, scope: !3432)
!3439 = !DILocation(line: 1277, column: 61, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1277, column: 21)
!3441 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1276, column: 78)
!3442 = !DILocation(line: 1277, column: 52, scope: !3440)
!3443 = !DILocation(line: 1277, column: 21, scope: !3440)
!3444 = !DILocation(line: 1278, column: 21, scope: !3440)
!3445 = !DILocation(line: 1277, column: 21, scope: !3441)
!3446 = !DILocation(line: 1279, column: 21, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 1279, column: 21)
!3448 = !DILocation(line: 1279, column: 27, scope: !3447)
!3449 = !DILocation(line: 1279, column: 21, scope: !3441)
!3450 = !DILocation(line: 1279, column: 38, scope: !3447)
!3451 = !DILocation(line: 1279, column: 32, scope: !3447)
!3452 = !DILocation(line: 1282, column: 35, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1281, column: 20)
!3454 = !{!2862, !110, i64 128}
!3455 = !DILocation(line: 1282, column: 17, scope: !3453)
!3456 = !DILocation(line: 1283, column: 17, scope: !3453)
!3457 = !DILocation(line: 1274, column: 39, scope: !3390)
!3458 = !DILocation(line: 1274, column: 32, scope: !3390)
!3459 = !DILocation(line: 1274, column: 27, scope: !3390)
!3460 = !DILocation(line: 1274, column: 9, scope: !3385)
!3461 = distinct !{!3461, !3460, !3462}
!3462 = !DILocation(line: 1285, column: 9, scope: !3385)
!3463 = !DILocation(line: 1289, column: 40, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1289, column: 9)
!3465 = !DILocation(line: 1289, column: 37, scope: !3464)
!3466 = !DILocation(line: 1289, column: 55, scope: !3464)
!3467 = !{!2862, !110, i64 104}
!3468 = !DILocation(line: 1289, column: 14, scope: !3464)
!3469 = !DILocation(line: 1262, column: 11, scope: !3371)
!3470 = !DILocation(line: 1289, column: 72, scope: !3464)
!3471 = !DILocation(line: 1290, column: 9, scope: !3464)
!3472 = !DILocation(line: 1290, column: 12, scope: !3464)
!3473 = !DILocation(line: 1289, column: 9, scope: !3371)
!3474 = !DILocation(line: 1291, column: 12, scope: !3371)
!3475 = !DILocation(line: 1263, column: 13, scope: !3371)
!3476 = !DILocation(line: 1293, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3371, file: !1, line: 1293, column: 9)
!3478 = !DILocation(line: 1293, column: 9, scope: !3371)
!3479 = !DILocation(line: 1294, column: 27, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 1293, column: 21)
!3481 = !DILocation(line: 1294, column: 9, scope: !3480)
!3482 = !DILocation(line: 1295, column: 5, scope: !3480)
!3483 = !DILocation(line: 1296, column: 32, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !1, line: 1296, column: 13)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !1, line: 1295, column: 12)
!3486 = !DILocation(line: 1296, column: 26, scope: !3484)
!3487 = !DILocation(line: 1297, column: 50, scope: !3485)
!3488 = !DILocation(line: 1297, column: 9, scope: !3485)
!3489 = !DILocation(line: 1299, column: 1, scope: !3371)
!3490 = distinct !DISubprogram(name: "xrangeCommand", scope: !1, file: !1, line: 1302, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3491)
!3491 = !{!3492}
!3492 = !DILocalVariable(name: "c", arg: 1, scope: !3490, file: !1, line: 1302, type: !2062)
!3493 = !DILocation(line: 1302, column: 28, scope: !3490)
!3494 = !DILocation(line: 1303, column: 5, scope: !3490)
!3495 = !DILocation(line: 1304, column: 1, scope: !3490)
!3496 = distinct !DISubprogram(name: "xrevrangeCommand", scope: !1, file: !1, line: 1307, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "c", arg: 1, scope: !3496, file: !1, line: 1307, type: !2062)
!3499 = !DILocation(line: 1307, column: 31, scope: !3496)
!3500 = !DILocation(line: 1308, column: 5, scope: !3496)
!3501 = !DILocation(line: 1309, column: 1, scope: !3496)
!3502 = distinct !DISubprogram(name: "xlenCommand", scope: !1, file: !1, line: 1312, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3503)
!3503 = !{!3504, !3505, !3506}
!3504 = !DILocalVariable(name: "c", arg: 1, scope: !3502, file: !1, line: 1312, type: !2062)
!3505 = !DILocalVariable(name: "o", scope: !3502, file: !1, line: 1313, type: !367)
!3506 = !DILocalVariable(name: "s", scope: !3502, file: !1, line: 1316, type: !69)
!3507 = !DILocation(line: 1312, column: 26, scope: !3502)
!3508 = !DILocation(line: 1314, column: 40, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3502, file: !1, line: 1314, column: 9)
!3510 = !DILocation(line: 1314, column: 37, scope: !3509)
!3511 = !DILocation(line: 1314, column: 55, scope: !3509)
!3512 = !{!2862, !110, i64 32}
!3513 = !DILocation(line: 1314, column: 14, scope: !3509)
!3514 = !DILocation(line: 1313, column: 11, scope: !3502)
!3515 = !DILocation(line: 1314, column: 63, scope: !3509)
!3516 = !DILocation(line: 1315, column: 9, scope: !3509)
!3517 = !DILocation(line: 1315, column: 12, scope: !3509)
!3518 = !DILocation(line: 1314, column: 9, scope: !3502)
!3519 = !DILocation(line: 1316, column: 20, scope: !3502)
!3520 = !DILocation(line: 1316, column: 13, scope: !3502)
!3521 = !DILocation(line: 1317, column: 27, scope: !3502)
!3522 = !DILocation(line: 1317, column: 5, scope: !3502)
!3523 = !DILocation(line: 1318, column: 1, scope: !3502)
!3524 = distinct !DISubprogram(name: "xreadCommand", scope: !1, file: !1, line: 1328, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3536, !3537, !3539, !3540, !3541, !3542, !3544, !3547, !3548, !3550, !3553, !3554, !3555, !3556, !3561, !3562, !3563, !3565, !3568, !3569, !3570, !3571, !3572, !3577, !3580, !3581, !3582}
!3526 = !DILocalVariable(name: "c", arg: 1, scope: !3524, file: !1, line: 1328, type: !2062)
!3527 = !DILocalVariable(name: "timeout", scope: !3524, file: !1, line: 1329, type: !246)
!3528 = !DILocalVariable(name: "count", scope: !3524, file: !1, line: 1330, type: !246)
!3529 = !DILocalVariable(name: "streams_count", scope: !3524, file: !1, line: 1331, type: !12)
!3530 = !DILocalVariable(name: "streams_arg", scope: !3524, file: !1, line: 1332, type: !12)
!3531 = !DILocalVariable(name: "noack", scope: !3524, file: !1, line: 1333, type: !12)
!3532 = !DILocalVariable(name: "static_ids", scope: !3524, file: !1, line: 1335, type: !3533)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1024, elements: !3534)
!3534 = !{!3535}
!3535 = !DISubrange(count: 8)
!3536 = !DILocalVariable(name: "ids", scope: !3524, file: !1, line: 1336, type: !167)
!3537 = !DILocalVariable(name: "groups", scope: !3524, file: !1, line: 1337, type: !3538)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3539 = !DILocalVariable(name: "xreadgroup", scope: !3524, file: !1, line: 1338, type: !12)
!3540 = !DILocalVariable(name: "groupname", scope: !3524, file: !1, line: 1339, type: !367)
!3541 = !DILocalVariable(name: "consumername", scope: !3524, file: !1, line: 1340, type: !367)
!3542 = !DILocalVariable(name: "i", scope: !3543, file: !1, line: 1343, type: !12)
!3543 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1343, column: 5)
!3544 = !DILocalVariable(name: "moreargs", scope: !3545, file: !1, line: 1344, type: !12)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !1, line: 1343, column: 39)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !1, line: 1343, column: 5)
!3547 = !DILocalVariable(name: "o", scope: !3545, file: !1, line: 1345, type: !10)
!3548 = !DILocalVariable(name: "i", scope: !3549, file: !1, line: 1406, type: !12)
!3549 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1406, column: 5)
!3550 = !DILocalVariable(name: "id_idx", scope: !3551, file: !1, line: 1410, type: !12)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !1, line: 1406, column: 65)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !1, line: 1406, column: 5)
!3553 = !DILocalVariable(name: "key", scope: !3551, file: !1, line: 1411, type: !367)
!3554 = !DILocalVariable(name: "o", scope: !3551, file: !1, line: 1412, type: !367)
!3555 = !DILocalVariable(name: "group", scope: !3551, file: !1, line: 1414, type: !144)
!3556 = !DILocalVariable(name: "s", scope: !3557, file: !1, line: 1441, type: !69)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1440, column: 20)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !1, line: 1440, column: 17)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 1431, column: 47)
!3560 = distinct !DILexicalBlock(scope: !3551, file: !1, line: 1431, column: 13)
!3561 = !DILocalVariable(name: "arraylen", scope: !3524, file: !1, line: 1467, type: !13)
!3562 = !DILocalVariable(name: "arraylen_ptr", scope: !3524, file: !1, line: 1468, type: !7)
!3563 = !DILocalVariable(name: "i", scope: !3564, file: !1, line: 1469, type: !12)
!3564 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1469, column: 5)
!3565 = !DILocalVariable(name: "o", scope: !3566, file: !1, line: 1470, type: !367)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 1469, column: 45)
!3567 = distinct !DILexicalBlock(scope: !3564, file: !1, line: 1469, column: 5)
!3568 = !DILocalVariable(name: "s", scope: !3566, file: !1, line: 1472, type: !69)
!3569 = !DILocalVariable(name: "gt", scope: !3566, file: !1, line: 1473, type: !167)
!3570 = !DILocalVariable(name: "serve_synchronously", scope: !3566, file: !1, line: 1474, type: !12)
!3571 = !DILocalVariable(name: "serve_history", scope: !3566, file: !1, line: 1475, type: !12)
!3572 = !DILocalVariable(name: "last", scope: !3573, file: !1, line: 1492, type: !167)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !1, line: 1488, column: 20)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1483, column: 17)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 1479, column: 21)
!3576 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 1479, column: 13)
!3577 = !DILocalVariable(name: "start", scope: !3578, file: !1, line: 1512, type: !95)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 1506, column: 34)
!3579 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 1506, column: 13)
!3580 = !DILocalVariable(name: "consumer", scope: !3578, file: !1, line: 1519, type: !2315)
!3581 = !DILocalVariable(name: "spi", scope: !3578, file: !1, line: 1522, type: !2506)
!3582 = !DILocalVariable(name: "flags", scope: !3578, file: !1, line: 1523, type: !12)
!3583 = !DILocation(line: 1328, column: 27, scope: !3524)
!3584 = !DILocation(line: 1329, column: 5, scope: !3524)
!3585 = !DILocation(line: 1329, column: 15, scope: !3524)
!3586 = !DILocation(line: 1330, column: 5, scope: !3524)
!3587 = !DILocation(line: 1330, column: 15, scope: !3524)
!3588 = !DILocation(line: 1331, column: 9, scope: !3524)
!3589 = !DILocation(line: 1332, column: 9, scope: !3524)
!3590 = !DILocation(line: 1333, column: 9, scope: !3524)
!3591 = !DILocation(line: 1335, column: 5, scope: !3524)
!3592 = !DILocation(line: 1335, column: 14, scope: !3524)
!3593 = !DILocation(line: 1336, column: 21, scope: !3524)
!3594 = !DILocation(line: 1336, column: 15, scope: !3524)
!3595 = !DILocation(line: 1337, column: 16, scope: !3524)
!3596 = !DILocation(line: 1338, column: 32, scope: !3524)
!3597 = !DILocation(line: 1338, column: 29, scope: !3524)
!3598 = !DILocation(line: 1338, column: 41, scope: !3524)
!3599 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 1338, column: 22, scope: !3524)
!3601 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !3600)
!3602 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !3600)
!3603 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !3600)
!3604 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !3600)
!3605 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !3600)
!3606 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !3600)
!3607 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !3600)
!3608 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !3600)
!3609 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !3600)
!3610 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !3600)
!3611 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !3600)
!3612 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !3600)
!3613 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !3600)
!3614 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !3600)
!3615 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !3600)
!3616 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !3600)
!3617 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !3600)
!3618 = !DILocation(line: 0, scope: !667, inlinedAt: !3600)
!3619 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !3600)
!3620 = !DILocation(line: 1338, column: 46, scope: !3524)
!3621 = !DILocation(line: 1339, column: 11, scope: !3524)
!3622 = !DILocation(line: 1340, column: 11, scope: !3524)
!3623 = !DILocation(line: 1343, column: 14, scope: !3543)
!3624 = !DILocation(line: 1343, column: 28, scope: !3546)
!3625 = !DILocation(line: 1343, column: 23, scope: !3546)
!3626 = !DILocation(line: 1343, column: 5, scope: !3543)
!3627 = !DILocation(line: 1345, column: 22, scope: !3545)
!3628 = !DILocation(line: 1344, column: 33, scope: !3545)
!3629 = !DILocation(line: 1344, column: 13, scope: !3545)
!3630 = !DILocation(line: 1345, column: 19, scope: !3545)
!3631 = !DILocation(line: 1345, column: 31, scope: !3545)
!3632 = !DILocation(line: 1345, column: 15, scope: !3545)
!3633 = !DILocation(line: 1346, column: 14, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3545, file: !1, line: 1346, column: 13)
!3635 = !DILocation(line: 1346, column: 39, scope: !3634)
!3636 = !DILocation(line: 1346, column: 36, scope: !3634)
!3637 = !DILocation(line: 1347, column: 14, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !1, line: 1346, column: 49)
!3639 = !DILocation(line: 1348, column: 47, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1348, column: 17)
!3641 = !DILocation(line: 1348, column: 17, scope: !3640)
!3642 = !DILocation(line: 1349, column: 36, scope: !3640)
!3643 = !DILocation(line: 1348, column: 17, scope: !3638)
!3644 = !DILocation(line: 1350, column: 21, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3634, file: !1, line: 1350, column: 20)
!3646 = !DILocation(line: 1350, column: 43, scope: !3645)
!3647 = !DILocation(line: 1351, column: 14, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 1350, column: 56)
!3649 = !DILocation(line: 1352, column: 48, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3648, file: !1, line: 1352, column: 17)
!3651 = !DILocation(line: 1352, column: 17, scope: !3650)
!3652 = !DILocation(line: 1352, column: 72, scope: !3650)
!3653 = !DILocation(line: 1352, column: 17, scope: !3648)
!3654 = !DILocation(line: 1354, column: 17, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3648, file: !1, line: 1354, column: 17)
!3656 = !DILocation(line: 1354, column: 23, scope: !3655)
!3657 = !DILocation(line: 1354, column: 17, scope: !3648)
!3658 = !DILocation(line: 1354, column: 34, scope: !3655)
!3659 = !DILocation(line: 1354, column: 28, scope: !3655)
!3660 = !DILocation(line: 1355, column: 21, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 1355, column: 20)
!3662 = !DILocation(line: 1355, column: 45, scope: !3661)
!3663 = !DILocation(line: 1356, column: 28, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1355, column: 58)
!3665 = !DILocation(line: 1357, column: 37, scope: !3664)
!3666 = !DILocation(line: 1358, column: 37, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !1, line: 1358, column: 17)
!3668 = !DILocation(line: 1358, column: 17, scope: !3664)
!3669 = !DILocation(line: 1359, column: 17, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !1, line: 1358, column: 43)
!3671 = !DILocation(line: 1362, column: 17, scope: !3670)
!3672 = !DILocation(line: 1366, column: 21, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1366, column: 20)
!3674 = !DILocation(line: 1366, column: 55, scope: !3673)
!3675 = !DILocation(line: 1366, column: 43, scope: !3673)
!3676 = !DILocation(line: 1367, column: 17, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !1, line: 1366, column: 61)
!3678 = !DILocation(line: 1368, column: 17, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !1, line: 1367, column: 30)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !1, line: 1367, column: 17)
!3681 = !DILocation(line: 1370, column: 17, scope: !3679)
!3682 = !DILocation(line: 1372, column: 34, scope: !3677)
!3683 = !DILocation(line: 1372, column: 25, scope: !3677)
!3684 = !DILocation(line: 1373, column: 37, scope: !3677)
!3685 = !DILocation(line: 1373, column: 28, scope: !3677)
!3686 = !DILocation(line: 1375, column: 9, scope: !3677)
!3687 = !DILocation(line: 1375, column: 21, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3673, file: !1, line: 1375, column: 20)
!3689 = !DILocation(line: 1375, column: 20, scope: !3673)
!3690 = !DILocation(line: 1376, column: 17, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !1, line: 1375, column: 44)
!3692 = !DILocation(line: 1377, column: 17, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !1, line: 1376, column: 30)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !1, line: 1376, column: 17)
!3695 = !DILocation(line: 1379, column: 17, scope: !3693)
!3696 = !DILocation(line: 1383, column: 31, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3688, file: !1, line: 1382, column: 16)
!3698 = !DILocation(line: 1383, column: 13, scope: !3697)
!3699 = !DILocation(line: 1384, column: 13, scope: !3697)
!3700 = !DILocation(line: 0, scope: !3543)
!3701 = !DILocation(line: 0, scope: !3524)
!3702 = !DILocation(line: 0, scope: !3691)
!3703 = !DILocation(line: 1343, column: 35, scope: !3546)
!3704 = distinct !{!3704, !3626, !3705}
!3705 = !DILocation(line: 1386, column: 5, scope: !3543)
!3706 = !DILocation(line: 1364, column: 27, scope: !3664)
!3707 = !DILocation(line: 1389, column: 21, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1389, column: 9)
!3709 = !DILocation(line: 1389, column: 9, scope: !3524)
!3710 = !DILocation(line: 1390, column: 27, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3708, file: !1, line: 1389, column: 27)
!3712 = !DILocation(line: 1390, column: 9, scope: !3711)
!3713 = !DILocation(line: 1391, column: 9, scope: !3711)
!3714 = !DILocation(line: 1396, column: 33, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1396, column: 9)
!3716 = !DILocation(line: 1396, column: 20, scope: !3715)
!3717 = !DILocation(line: 1397, column: 9, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !1, line: 1396, column: 42)
!3719 = !DILocation(line: 1398, column: 9, scope: !3718)
!3720 = !DILocation(line: 1402, column: 23, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1402, column: 9)
!3722 = !DILocation(line: 1402, column: 9, scope: !3524)
!3723 = !DILocation(line: 1403, column: 40, scope: !3721)
!3724 = !DILocation(line: 1403, column: 39, scope: !3721)
!3725 = !DILocation(line: 1403, column: 15, scope: !3721)
!3726 = !DILocation(line: 1403, column: 9, scope: !3721)
!3727 = !DILocation(line: 1404, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1404, column: 9)
!3729 = !DILocation(line: 1404, column: 9, scope: !3524)
!3730 = !DILocation(line: 1404, column: 55, scope: !3728)
!3731 = !DILocation(line: 1404, column: 54, scope: !3728)
!3732 = !DILocation(line: 1404, column: 29, scope: !3728)
!3733 = !DILocation(line: 1404, column: 20, scope: !3728)
!3734 = !DILocation(line: 1406, column: 30, scope: !3549)
!3735 = !DILocation(line: 1406, column: 14, scope: !3549)
!3736 = !DILocation(line: 1406, column: 54, scope: !3552)
!3737 = !DILocation(line: 1406, column: 49, scope: !3552)
!3738 = !DILocation(line: 1406, column: 5, scope: !3549)
!3739 = !DILocation(line: 1410, column: 38, scope: !3551)
!3740 = !DILocation(line: 1410, column: 13, scope: !3551)
!3741 = !DILocation(line: 1411, column: 24, scope: !3551)
!3742 = !DILocation(line: 1411, column: 30, scope: !3551)
!3743 = !DILocation(line: 1411, column: 21, scope: !3551)
!3744 = !DILocation(line: 1411, column: 15, scope: !3551)
!3745 = !DILocation(line: 1412, column: 36, scope: !3551)
!3746 = !DILocation(line: 1412, column: 19, scope: !3551)
!3747 = !DILocation(line: 1412, column: 15, scope: !3551)
!3748 = !DILocation(line: 1413, column: 13, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3551, file: !1, line: 1413, column: 13)
!3750 = !DILocation(line: 1413, column: 15, scope: !3749)
!3751 = !DILocation(line: 1413, column: 18, scope: !3749)
!3752 = !DILocation(line: 1413, column: 13, scope: !3551)
!3753 = !DILocation(line: 1414, column: 19, scope: !3551)
!3754 = !DILocation(line: 1418, column: 13, scope: !3551)
!3755 = !DILocation(line: 1419, column: 19, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !1, line: 1419, column: 17)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !1, line: 1418, column: 24)
!3758 = distinct !DILexicalBlock(scope: !3551, file: !1, line: 1418, column: 13)
!3759 = !DILocation(line: 1419, column: 27, scope: !3756)
!3760 = !DILocation(line: 1420, column: 44, scope: !3756)
!3761 = !DILocation(line: 1420, column: 59, scope: !3756)
!3762 = !DILocalVariable(name: "s", arg: 1, scope: !3763, file: !1, line: 1643, type: !69)
!3763 = distinct !DISubprogram(name: "streamLookupCG", scope: !1, file: !1, line: 1643, type: !3764, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!144, !69, !436}
!3766 = !{!3762, !3767, !3768}
!3767 = !DILocalVariable(name: "groupname", arg: 2, scope: !3763, file: !1, line: 1643, type: !436)
!3768 = !DILocalVariable(name: "cg", scope: !3763, file: !1, line: 1645, type: !144)
!3769 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 1420, column: 26, scope: !3756)
!3771 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !3770)
!3772 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !3770)
!3773 = distinct !DILexicalBlock(scope: !3763, file: !1, line: 1644, column: 9)
!3774 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !3770)
!3775 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !3770)
!3776 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !3770)
!3778 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !3777)
!3779 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !3777)
!3780 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !3777)
!3781 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !3777)
!3782 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !3777)
!3783 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !3777)
!3784 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !3777)
!3785 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !3777)
!3786 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !3777)
!3787 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !3777)
!3788 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !3777)
!3789 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !3777)
!3790 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !3777)
!3791 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !3777)
!3792 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !3777)
!3793 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !3777)
!3794 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !3777)
!3795 = !DILocation(line: 0, scope: !667, inlinedAt: !3777)
!3796 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !3777)
!3797 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !3770)
!3798 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !3770)
!3799 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !3770)
!3800 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !3770)
!3801 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !3770)
!3802 = !DILocation(line: 1419, column: 17, scope: !3757)
!3803 = !DILocation(line: 1420, column: 65, scope: !3756)
!3804 = !DILocation(line: 1425, column: 49, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3756, file: !1, line: 1421, column: 13)
!3806 = !DILocation(line: 1425, column: 71, scope: !3805)
!3807 = !DILocation(line: 1422, column: 17, scope: !3805)
!3808 = !DILocation(line: 1426, column: 17, scope: !3805)
!3809 = !DILocation(line: 1428, column: 13, scope: !3757)
!3810 = !DILocation(line: 1428, column: 28, scope: !3757)
!3811 = !DILocation(line: 1429, column: 9, scope: !3757)
!3812 = !DILocation(line: 1431, column: 23, scope: !3560)
!3813 = !DILocation(line: 1431, column: 20, scope: !3560)
!3814 = !DILocation(line: 1431, column: 32, scope: !3560)
!3815 = !DILocation(line: 1431, column: 13, scope: !3560)
!3816 = !DILocation(line: 1431, column: 41, scope: !3560)
!3817 = !DILocation(line: 1431, column: 13, scope: !3551)
!3818 = !DILocation(line: 1432, column: 17, scope: !3559)
!3819 = !DILocation(line: 1433, column: 17, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !1, line: 1432, column: 29)
!3821 = distinct !DILexicalBlock(scope: !3559, file: !1, line: 1432, column: 17)
!3822 = !DILocation(line: 1438, column: 17, scope: !3820)
!3823 = !DILocation(line: 1440, column: 17, scope: !3559)
!3824 = !DILocation(line: 1441, column: 32, scope: !3557)
!3825 = !DILocation(line: 1441, column: 25, scope: !3557)
!3826 = !DILocation(line: 1442, column: 17, scope: !3557)
!3827 = !DILocation(line: 1442, column: 34, scope: !3557)
!3828 = !DILocation(line: 1443, column: 13, scope: !3557)
!3829 = !DILocation(line: 1444, column: 17, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1443, column: 20)
!3831 = !DILocation(line: 1444, column: 29, scope: !3830)
!3832 = !DILocation(line: 1444, column: 32, scope: !3830)
!3833 = !DILocation(line: 1448, column: 30, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3560, file: !1, line: 1448, column: 20)
!3835 = !DILocation(line: 1448, column: 27, scope: !3834)
!3836 = !DILocation(line: 1448, column: 39, scope: !3834)
!3837 = !DILocation(line: 1448, column: 20, scope: !3834)
!3838 = !DILocation(line: 1448, column: 48, scope: !3834)
!3839 = !DILocation(line: 1448, column: 20, scope: !3560)
!3840 = !DILocation(line: 1449, column: 17, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3834, file: !1, line: 1448, column: 54)
!3842 = !DILocation(line: 1450, column: 17, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !1, line: 1449, column: 30)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 1449, column: 17)
!3845 = !DILocation(line: 1453, column: 17, scope: !3843)
!3846 = !DILocation(line: 1458, column: 13, scope: !3841)
!3847 = !DILocation(line: 1458, column: 25, scope: !3841)
!3848 = !DILocation(line: 1458, column: 28, scope: !3841)
!3849 = !DILocation(line: 1460, column: 13, scope: !3841)
!3850 = !DILocation(line: 1462, column: 45, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3551, file: !1, line: 1462, column: 13)
!3852 = !DILocation(line: 1462, column: 42, scope: !3851)
!3853 = !DILocation(line: 1462, column: 56, scope: !3851)
!3854 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1462, column: 13, scope: !3851)
!3856 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !3855)
!3857 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !3855)
!3858 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !3855)
!3859 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !3855)
!3860 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !3855)
!3861 = !DILocation(line: 1462, column: 67, scope: !3851)
!3862 = !DILocation(line: 1406, column: 61, scope: !3552)
!3863 = distinct !{!3863, !3738, !3864}
!3864 = !DILocation(line: 1464, column: 5, scope: !3549)
!3865 = !DILocation(line: 1469, column: 14, scope: !3564)
!3866 = !DILocation(line: 1468, column: 11, scope: !3524)
!3867 = !DILocation(line: 1467, column: 12, scope: !3524)
!3868 = !DILocation(line: 1469, column: 23, scope: !3567)
!3869 = !DILocation(line: 1469, column: 5, scope: !3564)
!3870 = !DILocation(line: 1534, column: 9, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1534, column: 9)
!3872 = !DILocation(line: 1534, column: 9, scope: !3524)
!3873 = !DILocation(line: 1470, column: 36, scope: !3566)
!3874 = !DILocation(line: 1470, column: 42, scope: !3566)
!3875 = !DILocation(line: 1470, column: 58, scope: !3566)
!3876 = !DILocation(line: 1470, column: 39, scope: !3566)
!3877 = !DILocation(line: 1470, column: 19, scope: !3566)
!3878 = !DILocation(line: 1470, column: 15, scope: !3566)
!3879 = !DILocation(line: 1471, column: 15, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 1471, column: 13)
!3881 = !DILocation(line: 1471, column: 13, scope: !3566)
!3882 = !DILocation(line: 1472, column: 24, scope: !3566)
!3883 = !DILocation(line: 1472, column: 17, scope: !3566)
!3884 = !DILocation(line: 1473, column: 27, scope: !3566)
!3885 = !DILocation(line: 1473, column: 19, scope: !3566)
!3886 = !DILocation(line: 1474, column: 13, scope: !3566)
!3887 = !DILocation(line: 1475, column: 13, scope: !3566)
!3888 = !DILocation(line: 1479, column: 13, scope: !3566)
!3889 = !DILocation(line: 1483, column: 21, scope: !3574)
!3890 = !DILocation(line: 1483, column: 24, scope: !3574)
!3891 = !DILocation(line: 1483, column: 38, scope: !3574)
!3892 = !DILocation(line: 1484, column: 21, scope: !3574)
!3893 = !DILocation(line: 1484, column: 25, scope: !3574)
!3894 = !DILocation(line: 1483, column: 17, scope: !3575)
!3895 = !DILocation(line: 1492, column: 35, scope: !3573)
!3896 = !DILocation(line: 1493, column: 24, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 1493, column: 21)
!3898 = !DILocation(line: 1493, column: 21, scope: !3897)
!3899 = !DILocation(line: 1493, column: 31, scope: !3897)
!3900 = !DILocation(line: 1492, column: 27, scope: !3573)
!3901 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 1493, column: 35, scope: !3897)
!3903 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !3902)
!3904 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !3902)
!3905 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !3902)
!3906 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !3902)
!3907 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !3902)
!3908 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !3902)
!3909 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !3902)
!3910 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !3902)
!3911 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !3902)
!3912 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !3902)
!3913 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !3902)
!3914 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !3902)
!3915 = !DILocation(line: 1495, column: 27, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3897, file: !1, line: 1493, column: 76)
!3917 = !DILocation(line: 1496, column: 17, scope: !3916)
!3918 = !DILocation(line: 1501, column: 20, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !1, line: 1501, column: 17)
!3920 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 1498, column: 16)
!3921 = !DILocation(line: 1501, column: 17, scope: !3919)
!3922 = !DILocation(line: 1501, column: 27, scope: !3919)
!3923 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 1501, column: 31, scope: !3919)
!3925 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !3924)
!3926 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !3924)
!3927 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !3924)
!3928 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !3924)
!3929 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !3924)
!3930 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !3924)
!3931 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !3924)
!3932 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !3924)
!3933 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !3924)
!3934 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !3924)
!3935 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !3924)
!3936 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !3924)
!3937 = !DILocation(line: 1501, column: 17, scope: !3920)
!3938 = !DILocation(line: 0, scope: !3566)
!3939 = !DILocation(line: 1507, column: 21, scope: !3578)
!3940 = !DILocation(line: 1508, column: 26, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 1508, column: 17)
!3942 = !DILocation(line: 1508, column: 17, scope: !3578)
!3943 = !DILocation(line: 1508, column: 47, scope: !3941)
!3944 = !DILocation(line: 1508, column: 32, scope: !3941)
!3945 = !DILocation(line: 1512, column: 13, scope: !3578)
!3946 = !DILocation(line: 1512, column: 30, scope: !3578)
!3947 = !DILocation(line: 1513, column: 22, scope: !3578)
!3948 = !DILocation(line: 1517, column: 13, scope: !3578)
!3949 = !DILocation(line: 1518, column: 31, scope: !3578)
!3950 = !DILocation(line: 1518, column: 28, scope: !3578)
!3951 = !DILocation(line: 1518, column: 13, scope: !3578)
!3952 = !DILocation(line: 1519, column: 29, scope: !3578)
!3953 = !DILocation(line: 1520, column: 17, scope: !3578)
!3954 = !DILocation(line: 1520, column: 57, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 1520, column: 17)
!3956 = !DILocation(line: 1521, column: 71, scope: !3955)
!3957 = !DILocation(line: 1520, column: 36, scope: !3955)
!3958 = !DILocation(line: 1520, column: 25, scope: !3955)
!3959 = !DILocation(line: 0, scope: !3578)
!3960 = !DILocation(line: 1522, column: 13, scope: !3578)
!3961 = !DILocation(line: 1522, column: 38, scope: !3578)
!3962 = !DILocation(line: 1522, column: 35, scope: !3578)
!3963 = !DILocation(line: 1522, column: 34, scope: !3578)
!3964 = !DILocation(line: 1523, column: 17, scope: !3578)
!3965 = !DILocation(line: 1525, column: 17, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 1525, column: 17)
!3967 = !DILocation(line: 1525, column: 17, scope: !3578)
!3968 = !DILocation(line: 1526, column: 50, scope: !3578)
!3969 = !DILocation(line: 1527, column: 34, scope: !3578)
!3970 = !DILocation(line: 1527, column: 43, scope: !3578)
!3971 = !DILocation(line: 1512, column: 22, scope: !3578)
!3972 = !DILocation(line: 1522, column: 28, scope: !3578)
!3973 = !DILocation(line: 1526, column: 13, scope: !3578)
!3974 = !DILocation(line: 1529, column: 37, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 1529, column: 17)
!3976 = !DILocation(line: 1529, column: 25, scope: !3975)
!3977 = !DILocation(line: 1530, column: 9, scope: !3579)
!3978 = !DILocation(line: 1530, column: 9, scope: !3578)
!3979 = !DILocation(line: 0, scope: !3941)
!3980 = !DILocation(line: 1469, column: 41, scope: !3567)
!3981 = distinct !{!3981, !3869, !3982}
!3982 = !DILocation(line: 1531, column: 5, scope: !3564)
!3983 = !DILocation(line: 1535, column: 9, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3871, file: !1, line: 1534, column: 19)
!3985 = !DILocation(line: 1536, column: 9, scope: !3984)
!3986 = !DILocation(line: 1540, column: 9, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1540, column: 9)
!3988 = !DILocation(line: 1540, column: 17, scope: !3987)
!3989 = !DILocation(line: 1540, column: 9, scope: !3524)
!3990 = !DILocation(line: 1543, column: 16, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !1, line: 1543, column: 13)
!3992 = distinct !DILexicalBlock(scope: !3987, file: !1, line: 1540, column: 24)
!3993 = !{!2422, !520, i64 160}
!3994 = !DILocation(line: 1543, column: 22, scope: !3991)
!3995 = !DILocation(line: 1543, column: 13, scope: !3992)
!3996 = !DILocation(line: 1544, column: 31, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 1543, column: 38)
!3998 = !DILocation(line: 1544, column: 13, scope: !3997)
!3999 = !DILocation(line: 1545, column: 13, scope: !3997)
!4000 = !DILocation(line: 1547, column: 44, scope: !3992)
!4001 = !DILocation(line: 1547, column: 48, scope: !3992)
!4002 = !DILocation(line: 1547, column: 9, scope: !3992)
!4003 = !DILocation(line: 1552, column: 31, scope: !3992)
!4004 = !DILocation(line: 1552, column: 17, scope: !3992)
!4005 = !DILocation(line: 1552, column: 29, scope: !3992)
!4006 = !{!2422, !113, i64 416}
!4007 = !DILocation(line: 1558, column: 13, scope: !3992)
!4008 = !DILocation(line: 1559, column: 13, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !1, line: 1558, column: 24)
!4010 = distinct !DILexicalBlock(scope: !3992, file: !1, line: 1558, column: 13)
!4011 = !DILocation(line: 1560, column: 13, scope: !4009)
!4012 = !DILocation(line: 1561, column: 21, scope: !4009)
!4013 = !DILocation(line: 1561, column: 33, scope: !4009)
!4014 = !{!2422, !110, i64 424}
!4015 = !DILocation(line: 1562, column: 21, scope: !4009)
!4016 = !DILocation(line: 1562, column: 36, scope: !4009)
!4017 = !{!2422, !110, i64 432}
!4018 = !DILocation(line: 1563, column: 21, scope: !4009)
!4019 = !DILocation(line: 1563, column: 39, scope: !4009)
!4020 = !{!2422, !520, i64 456}
!4021 = !DILocation(line: 1564, column: 9, scope: !4009)
!4022 = !DILocation(line: 1565, column: 21, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4010, file: !1, line: 1564, column: 16)
!4024 = !DILocation(line: 1565, column: 33, scope: !4023)
!4025 = !DILocation(line: 1573, column: 23, scope: !3524)
!4026 = !DILocation(line: 1573, column: 5, scope: !3524)
!4027 = !DILocation(line: 1580, column: 5, scope: !3524)
!4028 = !DILocation(line: 1581, column: 13, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3524, file: !1, line: 1581, column: 9)
!4030 = !DILocation(line: 1581, column: 9, scope: !3524)
!4031 = !DILocation(line: 1581, column: 34, scope: !4029)
!4032 = !DILocation(line: 1581, column: 28, scope: !4029)
!4033 = !DILocation(line: 1582, column: 5, scope: !3524)
!4034 = !DILocation(line: 1583, column: 1, scope: !3524)
!4035 = !DILocation(line: 1643, column: 34, scope: !3763)
!4036 = !DILocation(line: 1643, column: 41, scope: !3763)
!4037 = !DILocation(line: 1644, column: 12, scope: !3773)
!4038 = !DILocation(line: 1644, column: 20, scope: !3773)
!4039 = !DILocation(line: 1644, column: 9, scope: !3763)
!4040 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 1646, column: 28, scope: !3763)
!4042 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4041)
!4043 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4041)
!4044 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4041)
!4045 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4041)
!4046 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4041)
!4047 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4041)
!4048 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4041)
!4049 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4041)
!4050 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4041)
!4051 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4041)
!4052 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4041)
!4053 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4041)
!4054 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4041)
!4055 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4041)
!4056 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4041)
!4057 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4041)
!4058 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4041)
!4059 = !DILocation(line: 0, scope: !667, inlinedAt: !4041)
!4060 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4041)
!4061 = !DILocation(line: 1645, column: 20, scope: !3763)
!4062 = !DILocation(line: 1645, column: 15, scope: !3763)
!4063 = !DILocation(line: 1647, column: 19, scope: !3763)
!4064 = !DILocation(line: 1647, column: 16, scope: !3763)
!4065 = !DILocation(line: 1647, column: 12, scope: !3763)
!4066 = !DILocation(line: 0, scope: !3763)
!4067 = !DILocation(line: 1648, column: 1, scope: !3763)
!4068 = distinct !DISubprogram(name: "streamLookupConsumer", scope: !1, file: !1, line: 1654, type: !4069, isLocal: false, isDefinition: true, scopeLine: 1654, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!2315, !144, !436, !12}
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DILocalVariable(name: "cg", arg: 1, scope: !4068, file: !1, line: 1654, type: !144)
!4073 = !DILocalVariable(name: "name", arg: 2, scope: !4068, file: !1, line: 1654, type: !436)
!4074 = !DILocalVariable(name: "create", arg: 3, scope: !4068, file: !1, line: 1654, type: !12)
!4075 = !DILocalVariable(name: "consumer", scope: !4068, file: !1, line: 1655, type: !2315)
!4076 = !DILocation(line: 1654, column: 48, scope: !4068)
!4077 = !DILocation(line: 1654, column: 56, scope: !4068)
!4078 = !DILocation(line: 1654, column: 66, scope: !4068)
!4079 = !DILocation(line: 1655, column: 44, scope: !4068)
!4080 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 1656, column: 32, scope: !4068)
!4082 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4081)
!4083 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4081)
!4084 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4081)
!4085 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4081)
!4086 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4081)
!4087 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4081)
!4088 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4081)
!4089 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4081)
!4090 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4081)
!4091 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4081)
!4092 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4081)
!4093 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4081)
!4094 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4081)
!4095 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4081)
!4096 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4081)
!4097 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4081)
!4098 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4081)
!4099 = !DILocation(line: 0, scope: !667, inlinedAt: !4081)
!4100 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4081)
!4101 = !DILocation(line: 1655, column: 32, scope: !4068)
!4102 = !DILocation(line: 1655, column: 21, scope: !4068)
!4103 = !DILocation(line: 1657, column: 21, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4068, file: !1, line: 1657, column: 9)
!4105 = !DILocation(line: 1657, column: 18, scope: !4104)
!4106 = !DILocation(line: 1657, column: 9, scope: !4068)
!4107 = !DILocation(line: 1658, column: 14, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 1658, column: 13)
!4109 = distinct !DILexicalBlock(scope: !4104, file: !1, line: 1657, column: 34)
!4110 = !DILocation(line: 1658, column: 13, scope: !4109)
!4111 = !DILocation(line: 1659, column: 20, scope: !4109)
!4112 = !DILocation(line: 1660, column: 26, scope: !4109)
!4113 = !DILocation(line: 1660, column: 19, scope: !4109)
!4114 = !DILocation(line: 1660, column: 24, scope: !4109)
!4115 = !DILocation(line: 1661, column: 25, scope: !4109)
!4116 = !DILocation(line: 1661, column: 19, scope: !4109)
!4117 = !DILocation(line: 1661, column: 23, scope: !4109)
!4118 = !DILocation(line: 1662, column: 23, scope: !4109)
!4119 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 1662, column: 54, scope: !4109)
!4121 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4120)
!4122 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4120)
!4123 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4120)
!4124 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4120)
!4125 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4120)
!4126 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4120)
!4127 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4120)
!4128 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4120)
!4129 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4120)
!4130 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4120)
!4131 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4120)
!4132 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4120)
!4133 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4120)
!4134 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4120)
!4135 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4120)
!4136 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4120)
!4137 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4120)
!4138 = !DILocation(line: 0, scope: !667, inlinedAt: !4120)
!4139 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4120)
!4140 = !DILocation(line: 1662, column: 9, scope: !4109)
!4141 = !DILocation(line: 1664, column: 5, scope: !4109)
!4142 = !DILocation(line: 0, scope: !4068)
!4143 = !DILocation(line: 1665, column: 27, scope: !4068)
!4144 = !DILocation(line: 1665, column: 15, scope: !4068)
!4145 = !DILocation(line: 1665, column: 25, scope: !4068)
!4146 = !{!2353, !266, i64 0}
!4147 = !DILocation(line: 1666, column: 5, scope: !4068)
!4148 = !DILocation(line: 0, scope: !4108)
!4149 = !DILocation(line: 1667, column: 1, scope: !4068)
!4150 = distinct !DISubprogram(name: "streamFreeConsumer", scope: !1, file: !1, line: 1610, type: !4151, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !2315}
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "sc", arg: 1, scope: !4150, file: !1, line: 1610, type: !2315)
!4155 = !DILocation(line: 1610, column: 41, scope: !4150)
!4156 = !DILocation(line: 1611, column: 17, scope: !4150)
!4157 = !DILocation(line: 1611, column: 5, scope: !4150)
!4158 = !DILocation(line: 1613, column: 17, scope: !4150)
!4159 = !DILocation(line: 1613, column: 5, scope: !4150)
!4160 = !DILocation(line: 1614, column: 11, scope: !4150)
!4161 = !DILocation(line: 1614, column: 5, scope: !4150)
!4162 = !DILocation(line: 1615, column: 1, scope: !4150)
!4163 = distinct !DISubprogram(name: "streamCreateCG", scope: !1, file: !1, line: 1621, type: !4164, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!144, !69, !10, !13, !167}
!4166 = !{!4167, !4168, !4169, !4170, !4171}
!4167 = !DILocalVariable(name: "s", arg: 1, scope: !4163, file: !1, line: 1621, type: !69)
!4168 = !DILocalVariable(name: "name", arg: 2, scope: !4163, file: !1, line: 1621, type: !10)
!4169 = !DILocalVariable(name: "namelen", arg: 3, scope: !4163, file: !1, line: 1621, type: !13)
!4170 = !DILocalVariable(name: "id", arg: 4, scope: !4163, file: !1, line: 1621, type: !167)
!4171 = !DILocalVariable(name: "cg", scope: !4163, file: !1, line: 1626, type: !144)
!4172 = !DILocation(line: 1621, column: 34, scope: !4163)
!4173 = !DILocation(line: 1621, column: 43, scope: !4163)
!4174 = !DILocation(line: 1621, column: 56, scope: !4163)
!4175 = !DILocation(line: 1621, column: 75, scope: !4163)
!4176 = !DILocation(line: 1622, column: 12, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4163, file: !1, line: 1622, column: 9)
!4178 = !DILocation(line: 1622, column: 20, scope: !4177)
!4179 = !DILocation(line: 1622, column: 9, scope: !4163)
!4180 = !DILocation(line: 1622, column: 42, scope: !4177)
!4181 = !DILocation(line: 1622, column: 40, scope: !4177)
!4182 = !DILocation(line: 1622, column: 29, scope: !4177)
!4183 = !DILocation(line: 1623, column: 20, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4163, file: !1, line: 1623, column: 9)
!4185 = !DILocation(line: 1623, column: 9, scope: !4184)
!4186 = !DILocation(line: 1623, column: 61, scope: !4184)
!4187 = !DILocation(line: 1623, column: 58, scope: !4184)
!4188 = !DILocation(line: 1623, column: 9, scope: !4163)
!4189 = !DILocation(line: 1626, column: 20, scope: !4163)
!4190 = !DILocation(line: 1626, column: 15, scope: !4163)
!4191 = !DILocation(line: 1627, column: 15, scope: !4163)
!4192 = !DILocation(line: 1627, column: 9, scope: !4163)
!4193 = !DILocation(line: 1627, column: 13, scope: !4163)
!4194 = !DILocation(line: 1628, column: 21, scope: !4163)
!4195 = !DILocation(line: 1628, column: 9, scope: !4163)
!4196 = !DILocation(line: 1628, column: 19, scope: !4163)
!4197 = !DILocation(line: 1629, column: 19, scope: !4163)
!4198 = !DILocation(line: 1630, column: 18, scope: !4163)
!4199 = !DILocation(line: 1630, column: 5, scope: !4163)
!4200 = !DILocation(line: 0, scope: !4163)
!4201 = !DILocation(line: 1632, column: 1, scope: !4163)
!4202 = distinct !DISubprogram(name: "streamDelConsumer", scope: !1, file: !1, line: 1672, type: !4203, isLocal: false, isDefinition: true, scopeLine: 1672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!57, !144, !436}
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211}
!4206 = !DILocalVariable(name: "cg", arg: 1, scope: !4202, file: !1, line: 1672, type: !144)
!4207 = !DILocalVariable(name: "name", arg: 2, scope: !4202, file: !1, line: 1672, type: !436)
!4208 = !DILocalVariable(name: "consumer", scope: !4202, file: !1, line: 1673, type: !2315)
!4209 = !DILocalVariable(name: "retval", scope: !4202, file: !1, line: 1676, type: !57)
!4210 = !DILocalVariable(name: "ri", scope: !4202, file: !1, line: 1680, type: !384)
!4211 = !DILocalVariable(name: "nack", scope: !4212, file: !1, line: 1684, type: !2308)
!4212 = distinct !DILexicalBlock(scope: !4202, file: !1, line: 1683, column: 25)
!4213 = !DILocation(line: 1672, column: 38, scope: !4202)
!4214 = !DILocation(line: 1672, column: 46, scope: !4202)
!4215 = !DILocation(line: 1654, column: 48, scope: !4068, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 1673, column: 32, scope: !4202)
!4217 = !DILocation(line: 1654, column: 56, scope: !4068, inlinedAt: !4216)
!4218 = !DILocation(line: 1654, column: 66, scope: !4068, inlinedAt: !4216)
!4219 = !DILocation(line: 1655, column: 44, scope: !4068, inlinedAt: !4216)
!4220 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 1656, column: 32, scope: !4068, inlinedAt: !4216)
!4222 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4221)
!4223 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4221)
!4224 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4221)
!4225 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4221)
!4226 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4221)
!4227 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4221)
!4228 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4221)
!4229 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4221)
!4230 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4221)
!4231 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4221)
!4232 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4221)
!4233 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4221)
!4234 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4221)
!4235 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4221)
!4236 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4221)
!4237 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4221)
!4238 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4221)
!4239 = !DILocation(line: 0, scope: !667, inlinedAt: !4221)
!4240 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4221)
!4241 = !DILocation(line: 1655, column: 32, scope: !4068, inlinedAt: !4216)
!4242 = !DILocation(line: 1655, column: 21, scope: !4068, inlinedAt: !4216)
!4243 = !DILocation(line: 1657, column: 21, scope: !4104, inlinedAt: !4216)
!4244 = !DILocation(line: 1657, column: 18, scope: !4104, inlinedAt: !4216)
!4245 = !DILocation(line: 1657, column: 9, scope: !4068, inlinedAt: !4216)
!4246 = !DILocation(line: 1667, column: 1, scope: !4068, inlinedAt: !4216)
!4247 = !DILocation(line: 1673, column: 21, scope: !4202)
!4248 = !DILocation(line: 1674, column: 9, scope: !4202)
!4249 = !DILocation(line: 1665, column: 27, scope: !4068, inlinedAt: !4216)
!4250 = !DILocation(line: 1665, column: 15, scope: !4068, inlinedAt: !4216)
!4251 = !DILocation(line: 1665, column: 25, scope: !4068, inlinedAt: !4216)
!4252 = !DILocation(line: 1674, column: 18, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4202, file: !1, line: 1674, column: 9)
!4254 = !DILocation(line: 1676, column: 41, scope: !4202)
!4255 = !DILocation(line: 1676, column: 23, scope: !4202)
!4256 = !DILocation(line: 1676, column: 14, scope: !4202)
!4257 = !DILocation(line: 1680, column: 5, scope: !4202)
!4258 = !DILocation(line: 1681, column: 28, scope: !4202)
!4259 = !DILocation(line: 1680, column: 17, scope: !4202)
!4260 = !DILocation(line: 1681, column: 5, scope: !4202)
!4261 = !DILocation(line: 1682, column: 5, scope: !4202)
!4262 = !DILocation(line: 1683, column: 11, scope: !4202)
!4263 = !DILocation(line: 1683, column: 5, scope: !4202)
!4264 = !DILocation(line: 1684, column: 31, scope: !4212)
!4265 = !DILocation(line: 1684, column: 21, scope: !4212)
!4266 = !DILocation(line: 1685, column: 23, scope: !4212)
!4267 = !DILocation(line: 1685, column: 30, scope: !4212)
!4268 = !DILocation(line: 1685, column: 37, scope: !4212)
!4269 = !DILocation(line: 1685, column: 9, scope: !4212)
!4270 = !DILocation(line: 1601, column: 33, scope: !2671, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 1686, column: 9, scope: !4212)
!4272 = !DILocation(line: 1602, column: 5, scope: !2671, inlinedAt: !4271)
!4273 = !DILocation(line: 1603, column: 1, scope: !2671, inlinedAt: !4271)
!4274 = distinct !{!4274, !4263, !4275}
!4275 = !DILocation(line: 1687, column: 5, scope: !4202)
!4276 = !DILocation(line: 1688, column: 5, scope: !4202)
!4277 = !DILocation(line: 1691, column: 19, scope: !4202)
!4278 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4279)
!4279 = distinct !DILocation(line: 1691, column: 50, scope: !4202)
!4280 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4279)
!4281 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4279)
!4282 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4279)
!4283 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4279)
!4284 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4279)
!4285 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4279)
!4286 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4279)
!4287 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4279)
!4288 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4279)
!4289 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4279)
!4290 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4279)
!4291 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4279)
!4292 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4279)
!4293 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4279)
!4294 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4279)
!4295 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4279)
!4296 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4279)
!4297 = !DILocation(line: 0, scope: !667, inlinedAt: !4279)
!4298 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4279)
!4299 = !DILocation(line: 1691, column: 5, scope: !4202)
!4300 = !DILocation(line: 1610, column: 41, scope: !4150, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 1692, column: 5, scope: !4202)
!4302 = !DILocation(line: 1611, column: 17, scope: !4150, inlinedAt: !4301)
!4303 = !DILocation(line: 1611, column: 5, scope: !4150, inlinedAt: !4301)
!4304 = !DILocation(line: 1613, column: 17, scope: !4150, inlinedAt: !4301)
!4305 = !DILocation(line: 1613, column: 5, scope: !4150, inlinedAt: !4301)
!4306 = !DILocation(line: 1614, column: 5, scope: !4150, inlinedAt: !4301)
!4307 = !DILocation(line: 1615, column: 1, scope: !4150, inlinedAt: !4301)
!4308 = !DILocation(line: 1694, column: 1, scope: !4202)
!4309 = !DILocation(line: 0, scope: !4202)
!4310 = distinct !DISubprogram(name: "xgroupCommand", scope: !1, file: !1, line: 1704, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1704, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4311)
!4311 = !{!4312, !4313, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4326, !4327, !4330}
!4312 = !DILocalVariable(name: "c", arg: 1, scope: !4310, file: !1, line: 1704, type: !2062)
!4313 = !DILocalVariable(name: "help", scope: !4310, file: !1, line: 1705, type: !4314)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2931, size: 448, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 7)
!4317 = !DILocalVariable(name: "s", scope: !4310, file: !1, line: 1714, type: !69)
!4318 = !DILocalVariable(name: "grpname", scope: !4310, file: !1, line: 1715, type: !436)
!4319 = !DILocalVariable(name: "cg", scope: !4310, file: !1, line: 1716, type: !144)
!4320 = !DILocalVariable(name: "opt", scope: !4310, file: !1, line: 1717, type: !10)
!4321 = !DILocalVariable(name: "mkstream", scope: !4310, file: !1, line: 1718, type: !12)
!4322 = !DILocalVariable(name: "o", scope: !4310, file: !1, line: 1719, type: !367)
!4323 = !DILocalVariable(name: "id", scope: !4324, file: !1, line: 1767, type: !95)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !1, line: 1766, column: 70)
!4325 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 1766, column: 9)
!4326 = !DILocalVariable(name: "cg", scope: !4324, file: !1, line: 1787, type: !144)
!4327 = !DILocalVariable(name: "id", scope: !4328, file: !1, line: 1798, type: !95)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !1, line: 1797, column: 58)
!4329 = distinct !DILexicalBlock(scope: !4325, file: !1, line: 1797, column: 16)
!4330 = !DILocalVariable(name: "pending", scope: !4331, file: !1, line: 1822, type: !246)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1819, column: 64)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !1, line: 1819, column: 16)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !1, line: 1808, column: 16)
!4334 = !DILocation(line: 1704, column: 28, scope: !4310)
!4335 = !DILocation(line: 1705, column: 5, scope: !4310)
!4336 = !DILocation(line: 1705, column: 17, scope: !4310)
!4337 = !DILocation(line: 1714, column: 13, scope: !4310)
!4338 = !DILocation(line: 1715, column: 9, scope: !4310)
!4339 = !DILocation(line: 1716, column: 15, scope: !4310)
!4340 = !DILocation(line: 1717, column: 20, scope: !4310)
!4341 = !DILocation(line: 1717, column: 17, scope: !4310)
!4342 = !DILocation(line: 1717, column: 29, scope: !4310)
!4343 = !DILocation(line: 1717, column: 11, scope: !4310)
!4344 = !DILocation(line: 1718, column: 9, scope: !4310)
!4345 = !DILocation(line: 1723, column: 12, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 1723, column: 9)
!4347 = !DILocation(line: 1723, column: 17, scope: !4346)
!4348 = !DILocation(line: 1723, column: 22, scope: !4346)
!4349 = !DILocation(line: 1723, column: 26, scope: !4346)
!4350 = !DILocation(line: 1723, column: 9, scope: !4310)
!4351 = !DILocation(line: 1724, column: 24, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !1, line: 1724, column: 13)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !1, line: 1723, column: 52)
!4354 = !DILocation(line: 1724, column: 36, scope: !4352)
!4355 = !DILocation(line: 1724, column: 13, scope: !4352)
!4356 = !DILocation(line: 1724, column: 13, scope: !4353)
!4357 = !DILocation(line: 1725, column: 13, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4352, file: !1, line: 1724, column: 53)
!4359 = !DILocation(line: 1726, column: 13, scope: !4358)
!4360 = !DILocation(line: 1733, column: 17, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 1733, column: 9)
!4362 = !DILocation(line: 1733, column: 9, scope: !4310)
!4363 = !DILocation(line: 1734, column: 31, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4361, file: !1, line: 1733, column: 23)
!4365 = !DILocation(line: 1734, column: 34, scope: !4364)
!4366 = !DILocation(line: 1734, column: 13, scope: !4364)
!4367 = !DILocation(line: 1719, column: 11, scope: !4310)
!4368 = !DILocation(line: 1735, column: 13, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4364, file: !1, line: 1735, column: 13)
!4370 = !DILocation(line: 1735, column: 13, scope: !4364)
!4371 = !DILocation(line: 1736, column: 17, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !1, line: 1736, column: 17)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !1, line: 1735, column: 16)
!4374 = !DILocation(line: 1736, column: 17, scope: !4373)
!4375 = !DILocation(line: 1737, column: 20, scope: !4373)
!4376 = !DILocation(line: 1738, column: 9, scope: !4373)
!4377 = !DILocation(line: 0, scope: !4310)
!4378 = !DILocation(line: 1739, column: 22, scope: !4364)
!4379 = !DILocation(line: 1739, column: 19, scope: !4364)
!4380 = !DILocation(line: 1739, column: 31, scope: !4364)
!4381 = !DILocation(line: 1743, column: 12, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 1743, column: 9)
!4383 = !DILocation(line: 1743, column: 17, scope: !4382)
!4384 = !DILocation(line: 1743, column: 26, scope: !4382)
!4385 = !DILocation(line: 1743, column: 22, scope: !4382)
!4386 = !DILocation(line: 1745, column: 15, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 1745, column: 13)
!4388 = distinct !DILexicalBlock(scope: !4382, file: !1, line: 1743, column: 36)
!4389 = !DILocation(line: 1745, column: 13, scope: !4388)
!4390 = !DILocation(line: 1746, column: 13, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4387, file: !1, line: 1745, column: 24)
!4392 = !DILocation(line: 1750, column: 13, scope: !4391)
!4393 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 1754, column: 19, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 1754, column: 13)
!4396 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !4394)
!4397 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !4394)
!4398 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !4394)
!4399 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !4394)
!4400 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !4394)
!4402 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4401)
!4403 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4401)
!4404 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4401)
!4405 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4401)
!4406 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4401)
!4407 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4401)
!4408 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4401)
!4409 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4401)
!4410 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4401)
!4411 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4401)
!4412 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4401)
!4413 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4401)
!4414 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4401)
!4415 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4401)
!4416 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4401)
!4417 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4401)
!4418 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4401)
!4419 = !DILocation(line: 0, scope: !667, inlinedAt: !4401)
!4420 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4401)
!4421 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !4394)
!4422 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !4394)
!4423 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !4394)
!4424 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !4394)
!4425 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !4394)
!4426 = !DILocation(line: 1754, column: 54, scope: !4395)
!4427 = !DILocation(line: 1754, column: 46, scope: !4395)
!4428 = !DILocation(line: 1755, column: 15, scope: !4395)
!4429 = !DILocation(line: 1755, column: 39, scope: !4395)
!4430 = !DILocation(line: 1756, column: 15, scope: !4395)
!4431 = !DILocation(line: 1754, column: 13, scope: !4388)
!4432 = !DILocation(line: 1760, column: 62, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 1757, column: 9)
!4434 = !DILocation(line: 1760, column: 59, scope: !4433)
!4435 = !DILocation(line: 1760, column: 71, scope: !4433)
!4436 = !DILocation(line: 1758, column: 13, scope: !4433)
!4437 = !DILocation(line: 1761, column: 13, scope: !4433)
!4438 = !DILocation(line: 0, scope: !4395)
!4439 = !DILocation(line: 1766, column: 10, scope: !4325)
!4440 = !DILocation(line: 1766, column: 35, scope: !4325)
!4441 = !DILocation(line: 1766, column: 42, scope: !4325)
!4442 = !DILocation(line: 1766, column: 52, scope: !4325)
!4443 = !DILocation(line: 1767, column: 9, scope: !4324)
!4444 = !DILocation(line: 1768, column: 24, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 1768, column: 13)
!4446 = !DILocation(line: 1768, column: 21, scope: !4445)
!4447 = !DILocation(line: 1768, column: 33, scope: !4445)
!4448 = !DILocation(line: 1768, column: 14, scope: !4445)
!4449 = !DILocation(line: 1768, column: 13, scope: !4324)
!4450 = !DILocation(line: 1769, column: 17, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !1, line: 1769, column: 17)
!4452 = distinct !DILexicalBlock(scope: !4445, file: !1, line: 1768, column: 43)
!4453 = !DILocation(line: 1769, column: 17, scope: !4452)
!4454 = !DILocation(line: 1770, column: 25, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1769, column: 20)
!4456 = !DILocation(line: 1780, column: 13, scope: !4324)
!4457 = !DILocation(line: 1772, column: 23, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1771, column: 20)
!4459 = !DILocation(line: 1775, column: 52, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4445, file: !1, line: 1775, column: 20)
!4461 = !DILocation(line: 1775, column: 49, scope: !4460)
!4462 = !DILocation(line: 1767, column: 18, scope: !4324)
!4463 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 1775, column: 20, scope: !4460)
!4465 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !4464)
!4466 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !4464)
!4467 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !4464)
!4468 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !4464)
!4469 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !4464)
!4470 = !DILocation(line: 1775, column: 67, scope: !4460)
!4471 = !DILocation(line: 1775, column: 20, scope: !4445)
!4472 = !DILocation(line: 1780, column: 15, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 1780, column: 13)
!4474 = !DILocation(line: 1781, column: 13, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !1, line: 1780, column: 24)
!4476 = !DILocation(line: 1782, column: 17, scope: !4475)
!4477 = !DILocation(line: 1783, column: 22, scope: !4475)
!4478 = !DILocation(line: 1783, column: 28, scope: !4475)
!4479 = !DILocation(line: 1783, column: 25, scope: !4475)
!4480 = !DILocation(line: 1783, column: 13, scope: !4475)
!4481 = !DILocation(line: 1784, column: 20, scope: !4475)
!4482 = !DILocation(line: 1785, column: 9, scope: !4475)
!4483 = !DILocation(line: 0, scope: !4373)
!4484 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 1787, column: 49, scope: !4324)
!4486 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4485)
!4487 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4485)
!4488 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4485)
!4489 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4485)
!4490 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4485)
!4491 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4485)
!4492 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4485)
!4493 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4485)
!4494 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4485)
!4495 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4485)
!4496 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4485)
!4497 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4485)
!4498 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4485)
!4499 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4485)
!4500 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4485)
!4501 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4485)
!4502 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4485)
!4503 = !DILocation(line: 0, scope: !667, inlinedAt: !4485)
!4504 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4485)
!4505 = !DILocation(line: 1787, column: 24, scope: !4324)
!4506 = !DILocation(line: 1787, column: 19, scope: !4324)
!4507 = !DILocation(line: 1788, column: 13, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 1788, column: 13)
!4509 = !DILocation(line: 1788, column: 13, scope: !4324)
!4510 = !DILocation(line: 1789, column: 31, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !1, line: 1788, column: 17)
!4512 = !{!2862, !110, i64 8}
!4513 = !DILocation(line: 1789, column: 13, scope: !4511)
!4514 = !DILocation(line: 1790, column: 25, scope: !4511)
!4515 = !DILocation(line: 1792, column: 36, scope: !4511)
!4516 = !DILocation(line: 1792, column: 33, scope: !4511)
!4517 = !DILocation(line: 1792, column: 47, scope: !4511)
!4518 = !DILocation(line: 1792, column: 51, scope: !4511)
!4519 = !DILocation(line: 1791, column: 13, scope: !4511)
!4520 = !DILocation(line: 1793, column: 9, scope: !4511)
!4521 = !DILocation(line: 1795, column: 17, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4508, file: !1, line: 1793, column: 16)
!4523 = !DILocation(line: 1794, column: 13, scope: !4522)
!4524 = !DILocation(line: 1797, column: 5, scope: !4325)
!4525 = !DILocation(line: 1797, column: 17, scope: !4329)
!4526 = !DILocation(line: 1797, column: 41, scope: !4329)
!4527 = !DILocation(line: 1797, column: 47, scope: !4329)
!4528 = !DILocation(line: 1797, column: 52, scope: !4329)
!4529 = !DILocation(line: 1797, column: 16, scope: !4325)
!4530 = !DILocation(line: 1798, column: 9, scope: !4328)
!4531 = !DILocation(line: 1799, column: 24, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4328, file: !1, line: 1799, column: 13)
!4533 = !DILocation(line: 1799, column: 21, scope: !4532)
!4534 = !DILocation(line: 1799, column: 33, scope: !4532)
!4535 = !DILocation(line: 1799, column: 14, scope: !4532)
!4536 = !DILocation(line: 1799, column: 13, scope: !4328)
!4537 = !DILocation(line: 1800, column: 21, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4532, file: !1, line: 1799, column: 43)
!4539 = !DILocation(line: 1801, column: 9, scope: !4538)
!4540 = !DILocation(line: 1801, column: 46, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4532, file: !1, line: 1801, column: 20)
!4542 = !DILocation(line: 1801, column: 43, scope: !4541)
!4543 = !DILocation(line: 1798, column: 18, scope: !4328)
!4544 = !DILocation(line: 1142, column: 34, scope: !3101, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 1801, column: 20, scope: !4541)
!4546 = !DILocation(line: 1142, column: 43, scope: !3101, inlinedAt: !4545)
!4547 = !DILocation(line: 1142, column: 56, scope: !3101, inlinedAt: !4545)
!4548 = !DILocation(line: 1142, column: 69, scope: !3101, inlinedAt: !4545)
!4549 = !DILocation(line: 1143, column: 12, scope: !3101, inlinedAt: !4545)
!4550 = !DILocation(line: 1143, column: 5, scope: !3101, inlinedAt: !4545)
!4551 = !DILocation(line: 1801, column: 61, scope: !4541)
!4552 = !DILocation(line: 1801, column: 20, scope: !4532)
!4553 = !DILocation(line: 1804, column: 23, scope: !4328)
!4554 = !DILocation(line: 1805, column: 27, scope: !4328)
!4555 = !DILocation(line: 1805, column: 9, scope: !4328)
!4556 = !DILocation(line: 1806, column: 21, scope: !4328)
!4557 = !DILocation(line: 1807, column: 61, scope: !4328)
!4558 = !DILocation(line: 1807, column: 58, scope: !4328)
!4559 = !DILocation(line: 1807, column: 72, scope: !4328)
!4560 = !DILocation(line: 1807, column: 76, scope: !4328)
!4561 = !DILocation(line: 1807, column: 9, scope: !4328)
!4562 = !DILocation(line: 1808, column: 5, scope: !4329)
!4563 = !DILocation(line: 1808, column: 17, scope: !4333)
!4564 = !DILocation(line: 1808, column: 43, scope: !4333)
!4565 = !DILocation(line: 1808, column: 49, scope: !4333)
!4566 = !DILocation(line: 1808, column: 54, scope: !4333)
!4567 = !DILocation(line: 1808, column: 16, scope: !4329)
!4568 = !DILocation(line: 1809, column: 13, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !1, line: 1809, column: 13)
!4570 = distinct !DILexicalBlock(scope: !4333, file: !1, line: 1808, column: 60)
!4571 = !DILocation(line: 1809, column: 13, scope: !4570)
!4572 = !DILocation(line: 1810, column: 26, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !1, line: 1809, column: 17)
!4574 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 1810, column: 58, scope: !4573)
!4576 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4575)
!4577 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4575)
!4578 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4575)
!4579 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4575)
!4580 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4575)
!4581 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4575)
!4582 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4575)
!4583 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4575)
!4584 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4575)
!4585 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4575)
!4586 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4575)
!4587 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4575)
!4588 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4575)
!4589 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4575)
!4590 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4575)
!4591 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4575)
!4592 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4575)
!4593 = !DILocation(line: 0, scope: !667, inlinedAt: !4575)
!4594 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4575)
!4595 = !DILocation(line: 1810, column: 13, scope: !4573)
!4596 = !DILocation(line: 1635, column: 29, scope: !141, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 1811, column: 13, scope: !4573)
!4598 = !DILocation(line: 1636, column: 29, scope: !141, inlinedAt: !4597)
!4599 = !DILocation(line: 1636, column: 5, scope: !141, inlinedAt: !4597)
!4600 = !DILocation(line: 1637, column: 29, scope: !141, inlinedAt: !4597)
!4601 = !DILocation(line: 1637, column: 5, scope: !141, inlinedAt: !4597)
!4602 = !DILocation(line: 1638, column: 5, scope: !141, inlinedAt: !4597)
!4603 = !DILocation(line: 1639, column: 1, scope: !141, inlinedAt: !4597)
!4604 = !DILocation(line: 1812, column: 31, scope: !4573)
!4605 = !{!2862, !110, i64 40}
!4606 = !DILocation(line: 1812, column: 13, scope: !4573)
!4607 = !DILocation(line: 1813, column: 25, scope: !4573)
!4608 = !DILocation(line: 1815, column: 36, scope: !4573)
!4609 = !DILocation(line: 1815, column: 33, scope: !4573)
!4610 = !DILocation(line: 1815, column: 47, scope: !4573)
!4611 = !DILocation(line: 1815, column: 51, scope: !4573)
!4612 = !DILocation(line: 1814, column: 13, scope: !4573)
!4613 = !DILocation(line: 1816, column: 9, scope: !4573)
!4614 = !DILocation(line: 1817, column: 31, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4569, file: !1, line: 1816, column: 16)
!4616 = !DILocation(line: 1817, column: 13, scope: !4615)
!4617 = !DILocation(line: 1819, column: 17, scope: !4332)
!4618 = !DILocation(line: 1819, column: 47, scope: !4332)
!4619 = !DILocation(line: 1819, column: 53, scope: !4332)
!4620 = !DILocation(line: 1819, column: 58, scope: !4332)
!4621 = !DILocation(line: 1819, column: 16, scope: !4333)
!4622 = !DILocation(line: 1822, column: 53, scope: !4331)
!4623 = !DILocation(line: 1822, column: 50, scope: !4331)
!4624 = !DILocation(line: 1822, column: 62, scope: !4331)
!4625 = !DILocation(line: 1822, column: 29, scope: !4331)
!4626 = !DILocation(line: 1822, column: 19, scope: !4331)
!4627 = !DILocation(line: 1823, column: 9, scope: !4331)
!4628 = !DILocation(line: 1824, column: 21, scope: !4331)
!4629 = !DILocation(line: 1826, column: 32, scope: !4331)
!4630 = !DILocation(line: 1826, column: 29, scope: !4331)
!4631 = !DILocation(line: 1826, column: 43, scope: !4331)
!4632 = !DILocation(line: 1826, column: 47, scope: !4331)
!4633 = !DILocation(line: 1825, column: 9, scope: !4331)
!4634 = !DILocation(line: 1827, column: 5, scope: !4331)
!4635 = !DILocation(line: 1827, column: 17, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 1827, column: 16)
!4637 = !DILocation(line: 1827, column: 16, scope: !4332)
!4638 = !DILocation(line: 1828, column: 9, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4636, file: !1, line: 1827, column: 41)
!4640 = !DILocation(line: 1829, column: 5, scope: !4639)
!4641 = !DILocation(line: 1830, column: 9, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4636, file: !1, line: 1829, column: 12)
!4643 = !DILocation(line: 1832, column: 1, scope: !4310)
!4644 = distinct !DISubprogram(name: "xsetidCommand", scope: !1, file: !1, line: 1837, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4645)
!4645 = !{!4646, !4647, !4648, !4649, !4650, !4653, !4654}
!4646 = !DILocalVariable(name: "c", arg: 1, scope: !4644, file: !1, line: 1837, type: !2062)
!4647 = !DILocalVariable(name: "o", scope: !4644, file: !1, line: 1838, type: !367)
!4648 = !DILocalVariable(name: "s", scope: !4644, file: !1, line: 1841, type: !69)
!4649 = !DILocalVariable(name: "id", scope: !4644, file: !1, line: 1842, type: !95)
!4650 = !DILocalVariable(name: "maxid", scope: !4651, file: !1, line: 1849, type: !95)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !1, line: 1848, column: 24)
!4652 = distinct !DILexicalBlock(scope: !4644, file: !1, line: 1848, column: 9)
!4653 = !DILocalVariable(name: "si", scope: !4651, file: !1, line: 1850, type: !1237)
!4654 = !DILocalVariable(name: "numfields", scope: !4651, file: !1, line: 1852, type: !196)
!4655 = !DILocation(line: 1837, column: 28, scope: !4644)
!4656 = !DILocation(line: 1838, column: 42, scope: !4644)
!4657 = !DILocation(line: 1838, column: 39, scope: !4644)
!4658 = !DILocation(line: 1838, column: 57, scope: !4644)
!4659 = !{!2862, !110, i64 120}
!4660 = !DILocation(line: 1838, column: 15, scope: !4644)
!4661 = !DILocation(line: 1838, column: 11, scope: !4644)
!4662 = !DILocation(line: 1839, column: 11, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4644, file: !1, line: 1839, column: 9)
!4664 = !DILocation(line: 1839, column: 19, scope: !4663)
!4665 = !DILocation(line: 1839, column: 22, scope: !4663)
!4666 = !DILocation(line: 1839, column: 9, scope: !4644)
!4667 = !DILocation(line: 1841, column: 20, scope: !4644)
!4668 = !DILocation(line: 1841, column: 13, scope: !4644)
!4669 = !DILocation(line: 1842, column: 5, scope: !4644)
!4670 = !DILocation(line: 1843, column: 41, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4644, file: !1, line: 1843, column: 9)
!4672 = !DILocation(line: 1843, column: 38, scope: !4671)
!4673 = !DILocation(line: 1842, column: 14, scope: !4644)
!4674 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 1843, column: 9, scope: !4671)
!4676 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !4675)
!4677 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !4675)
!4678 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !4675)
!4679 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !4675)
!4680 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !4675)
!4681 = !DILocation(line: 1843, column: 56, scope: !4671)
!4682 = !DILocation(line: 1843, column: 9, scope: !4644)
!4683 = !DILocation(line: 1848, column: 12, scope: !4652)
!4684 = !DILocation(line: 1848, column: 19, scope: !4652)
!4685 = !DILocation(line: 1848, column: 9, scope: !4644)
!4686 = !DILocation(line: 1849, column: 9, scope: !4651)
!4687 = !DILocation(line: 1850, column: 9, scope: !4651)
!4688 = !DILocation(line: 1850, column: 24, scope: !4651)
!4689 = !DILocation(line: 488, column: 42, scope: !1233, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 1851, column: 9, scope: !4651)
!4691 = !DILocation(line: 488, column: 54, scope: !1233, inlinedAt: !4690)
!4692 = !DILocation(line: 488, column: 67, scope: !1233, inlinedAt: !4690)
!4693 = !DILocation(line: 488, column: 84, scope: !1233, inlinedAt: !4690)
!4694 = !DILocation(line: 488, column: 93, scope: !1233, inlinedAt: !4690)
!4695 = !DILocation(line: 494, column: 9, scope: !1276, inlinedAt: !4690)
!4696 = !DILocation(line: 494, column: 26, scope: !1276, inlinedAt: !4690)
!4697 = !DILocation(line: 501, column: 9, scope: !1294, inlinedAt: !4690)
!4698 = !DILocation(line: 501, column: 24, scope: !1294, inlinedAt: !4690)
!4699 = !DILocation(line: 506, column: 19, scope: !1233, inlinedAt: !4690)
!4700 = !DILocation(line: 506, column: 25, scope: !1233, inlinedAt: !4690)
!4701 = !DILocation(line: 506, column: 5, scope: !1233, inlinedAt: !4690)
!4702 = !DILocation(line: 521, column: 13, scope: !1351, inlinedAt: !4690)
!4703 = !DILocation(line: 524, column: 9, scope: !1233, inlinedAt: !4690)
!4704 = !DILocation(line: 524, column: 16, scope: !1233, inlinedAt: !4690)
!4705 = !DILocation(line: 525, column: 9, scope: !1233, inlinedAt: !4690)
!4706 = !DILocation(line: 525, column: 12, scope: !1233, inlinedAt: !4690)
!4707 = !DILocation(line: 527, column: 9, scope: !1233, inlinedAt: !4690)
!4708 = !DILocation(line: 527, column: 13, scope: !1233, inlinedAt: !4690)
!4709 = !DILocation(line: 528, column: 1, scope: !1233, inlinedAt: !4690)
!4710 = !DILocation(line: 1852, column: 9, scope: !4651)
!4711 = !DILocation(line: 1849, column: 18, scope: !4651)
!4712 = !DILocation(line: 1852, column: 17, scope: !4651)
!4713 = !DILocation(line: 1853, column: 9, scope: !4651)
!4714 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 1854, column: 9, scope: !4651)
!4716 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !4715)
!4717 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !4715)
!4718 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 1856, column: 13, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4651, file: !1, line: 1856, column: 13)
!4721 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !4719)
!4722 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !4719)
!4723 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !4719)
!4724 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !4719)
!4725 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !4719)
!4726 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !4719)
!4727 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !4719)
!4728 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !4719)
!4729 = !DILocation(line: 1856, column: 13, scope: !4651)
!4730 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !4719)
!4731 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !4719)
!4732 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !4719)
!4733 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !4719)
!4734 = !DILocation(line: 158, column: 21, scope: !359, inlinedAt: !4719)
!4735 = !DILocation(line: 1857, column: 13, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4720, file: !1, line: 1856, column: 46)
!4737 = !DILocation(line: 1861, column: 5, scope: !4652)
!4738 = !DILocation(line: 1862, column: 8, scope: !4644)
!4739 = !DILocation(line: 1862, column: 18, scope: !4644)
!4740 = !DILocation(line: 1863, column: 23, scope: !4644)
!4741 = !DILocation(line: 1863, column: 5, scope: !4644)
!4742 = !DILocation(line: 1864, column: 17, scope: !4644)
!4743 = !DILocation(line: 1865, column: 51, scope: !4644)
!4744 = !DILocation(line: 1865, column: 48, scope: !4644)
!4745 = !DILocation(line: 1865, column: 62, scope: !4644)
!4746 = !DILocation(line: 1865, column: 66, scope: !4644)
!4747 = !DILocation(line: 1865, column: 5, scope: !4644)
!4748 = !DILocation(line: 1866, column: 1, scope: !4644)
!4749 = distinct !DISubprogram(name: "xackCommand", scope: !1, file: !1, line: 1877, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1877, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4750)
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4757, !4760, !4761}
!4751 = !DILocalVariable(name: "c", arg: 1, scope: !4749, file: !1, line: 1877, type: !2062)
!4752 = !DILocalVariable(name: "group", scope: !4749, file: !1, line: 1878, type: !144)
!4753 = !DILocalVariable(name: "o", scope: !4749, file: !1, line: 1879, type: !367)
!4754 = !DILocalVariable(name: "acknowledged", scope: !4749, file: !1, line: 1891, type: !12)
!4755 = !DILocalVariable(name: "j", scope: !4756, file: !1, line: 1892, type: !12)
!4756 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 1892, column: 5)
!4757 = !DILocalVariable(name: "id", scope: !4758, file: !1, line: 1893, type: !95)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 1892, column: 39)
!4759 = distinct !DILexicalBlock(scope: !4756, file: !1, line: 1892, column: 5)
!4760 = !DILocalVariable(name: "buf", scope: !4758, file: !1, line: 1894, type: !1386)
!4761 = !DILocalVariable(name: "nack", scope: !4758, file: !1, line: 1901, type: !2308)
!4762 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 1896, column: 9, scope: !4758)
!4764 = !DILocation(line: 1877, column: 26, scope: !4749)
!4765 = !DILocation(line: 1878, column: 15, scope: !4749)
!4766 = !DILocation(line: 1879, column: 32, scope: !4749)
!4767 = !DILocation(line: 1879, column: 38, scope: !4749)
!4768 = !DILocation(line: 1879, column: 35, scope: !4749)
!4769 = !DILocation(line: 1879, column: 15, scope: !4749)
!4770 = !DILocation(line: 1879, column: 11, scope: !4749)
!4771 = !DILocation(line: 1880, column: 9, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 1880, column: 9)
!4773 = !DILocation(line: 1880, column: 9, scope: !4749)
!4774 = !DILocation(line: 1881, column: 13, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !1, line: 1881, column: 13)
!4776 = distinct !DILexicalBlock(scope: !4772, file: !1, line: 1880, column: 12)
!4777 = !DILocation(line: 1881, column: 13, scope: !4776)
!4778 = !DILocation(line: 1882, column: 35, scope: !4776)
!4779 = !DILocation(line: 1882, column: 42, scope: !4776)
!4780 = !DILocation(line: 1882, column: 39, scope: !4776)
!4781 = !DILocation(line: 1882, column: 51, scope: !4776)
!4782 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 1882, column: 17, scope: !4776)
!4784 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !4783)
!4785 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !4783)
!4786 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !4783)
!4787 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !4783)
!4788 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !4783)
!4789 = !DILocation(line: 1886, column: 19, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 1886, column: 9)
!4791 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !4783)
!4793 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !4792)
!4794 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !4792)
!4795 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !4792)
!4796 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !4792)
!4797 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !4792)
!4798 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !4792)
!4799 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !4792)
!4800 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !4792)
!4801 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !4792)
!4802 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !4792)
!4803 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !4792)
!4804 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !4792)
!4805 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !4792)
!4806 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !4792)
!4807 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !4792)
!4808 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !4792)
!4809 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !4792)
!4810 = !DILocation(line: 0, scope: !667, inlinedAt: !4792)
!4811 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !4792)
!4812 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !4783)
!4813 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !4783)
!4814 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !4783)
!4815 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !4783)
!4816 = !DILocation(line: 1886, column: 28, scope: !4790)
!4817 = !DILocation(line: 1892, column: 14, scope: !4756)
!4818 = !DILocation(line: 1891, column: 9, scope: !4749)
!4819 = !DILocation(line: 1892, column: 28, scope: !4759)
!4820 = !DILocation(line: 1892, column: 23, scope: !4759)
!4821 = !DILocation(line: 1892, column: 5, scope: !4756)
!4822 = !DILocation(line: 1887, column: 27, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4790, file: !1, line: 1886, column: 37)
!4824 = !DILocation(line: 1887, column: 9, scope: !4823)
!4825 = !DILocation(line: 1888, column: 9, scope: !4823)
!4826 = !DILocation(line: 1893, column: 9, scope: !4758)
!4827 = !DILocation(line: 1894, column: 9, scope: !4758)
!4828 = !DILocation(line: 1894, column: 23, scope: !4758)
!4829 = !DILocation(line: 1895, column: 45, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 1895, column: 13)
!4831 = !DILocation(line: 1895, column: 42, scope: !4830)
!4832 = !DILocation(line: 1893, column: 18, scope: !4758)
!4833 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !4834)
!4834 = distinct !DILocation(line: 1895, column: 13, scope: !4830)
!4835 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !4834)
!4836 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !4834)
!4837 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !4834)
!4838 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !4834)
!4839 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !4834)
!4840 = !DILocation(line: 1895, column: 60, scope: !4830)
!4841 = !DILocation(line: 1895, column: 13, scope: !4758)
!4842 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4763)
!4843 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4763)
!4844 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4763)
!4845 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4763)
!4846 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4763)
!4847 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4763)
!4848 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4763)
!4849 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4763)
!4850 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4763)
!4851 = !DILocation(line: 1901, column: 43, scope: !4758)
!4852 = !DILocation(line: 1901, column: 28, scope: !4758)
!4853 = !DILocation(line: 1901, column: 21, scope: !4758)
!4854 = !DILocation(line: 1902, column: 21, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 1902, column: 13)
!4856 = !DILocation(line: 1902, column: 18, scope: !4855)
!4857 = !DILocation(line: 1902, column: 13, scope: !4758)
!4858 = !DILocation(line: 1903, column: 30, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !1, line: 1902, column: 34)
!4860 = !DILocation(line: 1903, column: 13, scope: !4859)
!4861 = !DILocation(line: 1904, column: 29, scope: !4859)
!4862 = !DILocation(line: 1904, column: 39, scope: !4859)
!4863 = !DILocation(line: 1904, column: 13, scope: !4859)
!4864 = !DILocation(line: 1601, column: 33, scope: !2671, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 1905, column: 13, scope: !4859)
!4866 = !DILocation(line: 1602, column: 5, scope: !2671, inlinedAt: !4865)
!4867 = !DILocation(line: 1603, column: 1, scope: !2671, inlinedAt: !4865)
!4868 = !DILocation(line: 1906, column: 25, scope: !4859)
!4869 = !DILocation(line: 1907, column: 25, scope: !4859)
!4870 = !DILocation(line: 1908, column: 9, scope: !4859)
!4871 = !DILocation(line: 1909, column: 5, scope: !4759)
!4872 = !DILocation(line: 1892, column: 35, scope: !4759)
!4873 = distinct !{!4873, !4821, !4874}
!4874 = !DILocation(line: 1909, column: 5, scope: !4756)
!4875 = !DILocation(line: 1910, column: 24, scope: !4749)
!4876 = !DILocation(line: 1910, column: 5, scope: !4749)
!4877 = !DILocation(line: 1911, column: 1, scope: !4749)
!4878 = distinct !DISubprogram(name: "xpendingCommand", scope: !1, file: !1, line: 1922, type: !2179, isLocal: false, isDefinition: true, scopeLine: 1922, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4879)
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4895, !4896, !4897, !4899, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4910, !4911}
!4880 = !DILocalVariable(name: "c", arg: 1, scope: !4878, file: !1, line: 1922, type: !2062)
!4881 = !DILocalVariable(name: "justinfo", scope: !4878, file: !1, line: 1923, type: !12)
!4882 = !DILocalVariable(name: "key", scope: !4878, file: !1, line: 1925, type: !367)
!4883 = !DILocalVariable(name: "groupname", scope: !4878, file: !1, line: 1926, type: !367)
!4884 = !DILocalVariable(name: "consumername", scope: !4878, file: !1, line: 1927, type: !367)
!4885 = !DILocalVariable(name: "startid", scope: !4878, file: !1, line: 1928, type: !95)
!4886 = !DILocalVariable(name: "endid", scope: !4878, file: !1, line: 1928, type: !95)
!4887 = !DILocalVariable(name: "count", scope: !4878, file: !1, line: 1929, type: !246)
!4888 = !DILocalVariable(name: "o", scope: !4878, file: !1, line: 1950, type: !367)
!4889 = !DILocalVariable(name: "group", scope: !4878, file: !1, line: 1951, type: !144)
!4890 = !DILocalVariable(name: "ri", scope: !4891, file: !1, line: 1975, type: !384)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !1, line: 1973, column: 16)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !1, line: 1969, column: 13)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 1964, column: 19)
!4894 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 1964, column: 9)
!4895 = !DILocalVariable(name: "arraylen_ptr", scope: !4891, file: !1, line: 1992, type: !7)
!4896 = !DILocalVariable(name: "arraylen", scope: !4891, file: !1, line: 1993, type: !13)
!4897 = !DILocalVariable(name: "consumer", scope: !4898, file: !1, line: 1995, type: !2315)
!4898 = distinct !DILexicalBlock(scope: !4891, file: !1, line: 1994, column: 33)
!4899 = !DILocalVariable(name: "consumer", scope: !4900, file: !1, line: 2008, type: !2315)
!4900 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 2007, column: 10)
!4901 = !DILocalVariable(name: "pel", scope: !4900, file: !1, line: 2019, type: !75)
!4902 = !DILocalVariable(name: "startkey", scope: !4900, file: !1, line: 2020, type: !1386)
!4903 = !DILocalVariable(name: "endkey", scope: !4900, file: !1, line: 2021, type: !1386)
!4904 = !DILocalVariable(name: "ri", scope: !4900, file: !1, line: 2022, type: !384)
!4905 = !DILocalVariable(name: "now", scope: !4900, file: !1, line: 2023, type: !2257)
!4906 = !DILocalVariable(name: "arraylen_ptr", scope: !4900, file: !1, line: 2029, type: !7)
!4907 = !DILocalVariable(name: "arraylen", scope: !4900, file: !1, line: 2030, type: !13)
!4908 = !DILocalVariable(name: "nack", scope: !4909, file: !1, line: 2033, type: !2308)
!4909 = distinct !DILexicalBlock(scope: !4900, file: !1, line: 2032, column: 79)
!4910 = !DILocalVariable(name: "id", scope: !4909, file: !1, line: 2040, type: !95)
!4911 = !DILocalVariable(name: "elapsed", scope: !4909, file: !1, line: 2049, type: !2257)
!4912 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 2041, column: 13, scope: !4909)
!4914 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 2026, column: 9, scope: !4900)
!4916 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 2025, column: 9, scope: !4900)
!4918 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 1985, column: 13, scope: !4891)
!4920 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 1979, column: 13, scope: !4891)
!4922 = !DILocation(line: 1922, column: 30, scope: !4878)
!4923 = !DILocation(line: 1923, column: 23, scope: !4878)
!4924 = !DILocation(line: 1923, column: 28, scope: !4878)
!4925 = !DILocation(line: 1925, column: 20, scope: !4878)
!4926 = !DILocation(line: 1925, column: 17, scope: !4878)
!4927 = !DILocation(line: 1925, column: 11, scope: !4878)
!4928 = !DILocation(line: 1926, column: 23, scope: !4878)
!4929 = !DILocation(line: 1926, column: 11, scope: !4878)
!4930 = !DILocation(line: 1927, column: 35, scope: !4878)
!4931 = !DILocation(line: 1927, column: 26, scope: !4878)
!4932 = !DILocation(line: 1927, column: 43, scope: !4878)
!4933 = !DILocation(line: 1927, column: 11, scope: !4878)
!4934 = !DILocation(line: 1928, column: 5, scope: !4878)
!4935 = !DILocation(line: 1929, column: 5, scope: !4878)
!4936 = !DILocation(line: 1939, column: 9, scope: !4878)
!4937 = !DILocation(line: 1932, column: 22, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 1932, column: 9)
!4939 = !DILocation(line: 1933, column: 27, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4938, file: !1, line: 1932, column: 55)
!4941 = !DILocation(line: 1933, column: 9, scope: !4940)
!4942 = !DILocation(line: 1934, column: 9, scope: !4940)
!4943 = !DILocation(line: 1939, column: 17, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 1939, column: 9)
!4945 = !DILocation(line: 1940, column: 44, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 1940, column: 13)
!4947 = distinct !DILexicalBlock(scope: !4944, file: !1, line: 1939, column: 23)
!4948 = !DILocation(line: 1929, column: 15, scope: !4878)
!4949 = !DILocation(line: 1940, column: 13, scope: !4946)
!4950 = !DILocation(line: 1940, column: 68, scope: !4946)
!4951 = !DILocation(line: 1940, column: 13, scope: !4947)
!4952 = !DILocation(line: 1942, column: 13, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 1942, column: 13)
!4954 = !DILocation(line: 1942, column: 19, scope: !4953)
!4955 = !DILocation(line: 1942, column: 13, scope: !4947)
!4956 = !DILocation(line: 1942, column: 30, scope: !4953)
!4957 = !DILocation(line: 1942, column: 24, scope: !4953)
!4958 = !DILocation(line: 1943, column: 39, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 1943, column: 13)
!4960 = !DILocation(line: 1943, column: 36, scope: !4959)
!4961 = !DILocation(line: 1928, column: 14, scope: !4878)
!4962 = !DILocation(line: 1142, column: 34, scope: !3101, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 1943, column: 13, scope: !4959)
!4964 = !DILocation(line: 1142, column: 43, scope: !3101, inlinedAt: !4963)
!4965 = !DILocation(line: 1142, column: 56, scope: !3101, inlinedAt: !4963)
!4966 = !DILocation(line: 1142, column: 69, scope: !3101, inlinedAt: !4963)
!4967 = !DILocation(line: 1143, column: 12, scope: !3101, inlinedAt: !4963)
!4968 = !DILocation(line: 1143, column: 5, scope: !3101, inlinedAt: !4963)
!4969 = !DILocation(line: 1943, column: 59, scope: !4959)
!4970 = !DILocation(line: 1943, column: 13, scope: !4947)
!4971 = !DILocation(line: 1945, column: 39, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 1945, column: 13)
!4973 = !DILocation(line: 1945, column: 36, scope: !4972)
!4974 = !DILocation(line: 1928, column: 23, scope: !4878)
!4975 = !DILocation(line: 1142, column: 34, scope: !3101, inlinedAt: !4976)
!4976 = distinct !DILocation(line: 1945, column: 13, scope: !4972)
!4977 = !DILocation(line: 1142, column: 43, scope: !3101, inlinedAt: !4976)
!4978 = !DILocation(line: 1142, column: 56, scope: !3101, inlinedAt: !4976)
!4979 = !DILocation(line: 1142, column: 69, scope: !3101, inlinedAt: !4976)
!4980 = !DILocation(line: 1143, column: 12, scope: !3101, inlinedAt: !4976)
!4981 = !DILocation(line: 1143, column: 5, scope: !3101, inlinedAt: !4976)
!4982 = !DILocation(line: 1945, column: 66, scope: !4972)
!4983 = !DILocation(line: 1945, column: 13, scope: !4947)
!4984 = !DILocation(line: 1950, column: 38, scope: !4878)
!4985 = !DILocation(line: 1950, column: 35, scope: !4878)
!4986 = !DILocation(line: 1950, column: 32, scope: !4878)
!4987 = !DILocation(line: 1950, column: 15, scope: !4878)
!4988 = !DILocation(line: 1950, column: 11, scope: !4878)
!4989 = !DILocation(line: 1953, column: 11, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 1953, column: 9)
!4991 = !DILocation(line: 1959, column: 66, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !1, line: 1956, column: 5)
!4993 = distinct !DILexicalBlock(scope: !4878, file: !1, line: 1954, column: 9)
!4994 = !DILocation(line: 1953, column: 14, scope: !4990)
!4995 = !DILocation(line: 1953, column: 9, scope: !4878)
!4996 = !DILocation(line: 1955, column: 36, scope: !4993)
!4997 = !DILocation(line: 1955, column: 51, scope: !4993)
!4998 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !4999)
!4999 = distinct !DILocation(line: 1955, column: 18, scope: !4993)
!5000 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !4999)
!5001 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !4999)
!5002 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !4999)
!5003 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !4999)
!5004 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !4999)
!5006 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !5005)
!5007 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !5005)
!5008 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !5005)
!5009 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !5005)
!5010 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !5005)
!5011 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !5005)
!5012 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !5005)
!5013 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !5005)
!5014 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !5005)
!5015 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !5005)
!5016 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !5005)
!5017 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !5005)
!5018 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !5005)
!5019 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !5005)
!5020 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !5005)
!5021 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !5005)
!5022 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !5005)
!5023 = !DILocation(line: 0, scope: !667, inlinedAt: !5005)
!5024 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !5005)
!5025 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !4999)
!5026 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !4999)
!5027 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !4999)
!5028 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !4999)
!5029 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !4999)
!5030 = !DILocation(line: 1951, column: 15, scope: !4878)
!5031 = !DILocation(line: 1954, column: 9, scope: !4878)
!5032 = !DILocation(line: 1955, column: 57, scope: !4993)
!5033 = !DILocation(line: 1959, column: 44, scope: !4992)
!5034 = !DILocation(line: 1957, column: 9, scope: !4992)
!5035 = !DILocation(line: 1960, column: 9, scope: !4992)
!5036 = !DILocation(line: 1964, column: 9, scope: !4878)
!5037 = !DILocation(line: 1965, column: 9, scope: !4893)
!5038 = !DILocation(line: 1967, column: 43, scope: !4893)
!5039 = !DILocation(line: 1967, column: 28, scope: !4893)
!5040 = !DILocation(line: 1967, column: 9, scope: !4893)
!5041 = !DILocation(line: 1969, column: 28, scope: !4892)
!5042 = !DILocation(line: 1969, column: 13, scope: !4892)
!5043 = !DILocation(line: 1969, column: 33, scope: !4892)
!5044 = !DILocation(line: 1969, column: 13, scope: !4893)
!5045 = !DILocation(line: 1970, column: 31, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !4892, file: !1, line: 1969, column: 39)
!5047 = !{!2862, !110, i64 80}
!5048 = !DILocation(line: 1970, column: 13, scope: !5046)
!5049 = !DILocation(line: 1971, column: 31, scope: !5046)
!5050 = !DILocation(line: 1971, column: 13, scope: !5046)
!5051 = !DILocation(line: 1972, column: 31, scope: !5046)
!5052 = !DILocation(line: 1972, column: 13, scope: !5046)
!5053 = !DILocation(line: 1973, column: 9, scope: !5046)
!5054 = !DILocation(line: 1975, column: 13, scope: !4891)
!5055 = !DILocation(line: 1976, column: 33, scope: !4891)
!5056 = !DILocation(line: 1975, column: 25, scope: !4891)
!5057 = !DILocation(line: 1976, column: 13, scope: !4891)
!5058 = !DILocation(line: 1977, column: 13, scope: !4891)
!5059 = !DILocation(line: 1978, column: 13, scope: !4891)
!5060 = !DILocation(line: 1979, column: 31, scope: !4891)
!5061 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4921)
!5062 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4921)
!5063 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4921)
!5064 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4921)
!5065 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4921)
!5066 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !4921)
!5067 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !4921)
!5068 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4921)
!5069 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !4921)
!5070 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !4921)
!5071 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4921)
!5072 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 1980, column: 13, scope: !4891)
!5074 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !5073)
!5075 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !5073)
!5076 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !5073)
!5077 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !5073)
!5078 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !5073)
!5079 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !5073)
!5080 = !DILocation(line: 1983, column: 13, scope: !4891)
!5081 = !DILocation(line: 1984, column: 13, scope: !4891)
!5082 = !DILocation(line: 1985, column: 31, scope: !4891)
!5083 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4919)
!5084 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4919)
!5085 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4919)
!5086 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4919)
!5087 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4919)
!5088 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !4919)
!5089 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !4919)
!5090 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4919)
!5091 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !4919)
!5092 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !4919)
!5093 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4919)
!5094 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 1986, column: 13, scope: !4891)
!5096 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !5095)
!5097 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !5095)
!5098 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !5095)
!5099 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !5095)
!5100 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !5095)
!5101 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !5095)
!5102 = !DILocation(line: 1987, column: 13, scope: !4891)
!5103 = !DILocation(line: 1990, column: 33, scope: !4891)
!5104 = !DILocation(line: 1990, column: 13, scope: !4891)
!5105 = !DILocation(line: 1991, column: 13, scope: !4891)
!5106 = !DILocation(line: 1992, column: 34, scope: !4891)
!5107 = !DILocation(line: 1992, column: 19, scope: !4891)
!5108 = !DILocation(line: 1993, column: 20, scope: !4891)
!5109 = !DILocation(line: 1994, column: 19, scope: !4891)
!5110 = !DILocation(line: 1994, column: 13, scope: !4891)
!5111 = !DILocation(line: 1995, column: 47, scope: !4898)
!5112 = !DILocation(line: 1995, column: 33, scope: !4898)
!5113 = !DILocation(line: 1996, column: 39, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !4898, file: !1, line: 1996, column: 21)
!5115 = !DILocation(line: 1996, column: 21, scope: !5114)
!5116 = !DILocation(line: 1996, column: 44, scope: !5114)
!5117 = !DILocation(line: 1996, column: 21, scope: !4898)
!5118 = distinct !{!5118, !5110, !5119}
!5119 = !DILocation(line: 2001, column: 13, scope: !4891)
!5120 = !DILocation(line: 1997, column: 17, scope: !4898)
!5121 = !DILocation(line: 1998, column: 42, scope: !4898)
!5122 = !DILocation(line: 1998, column: 49, scope: !4898)
!5123 = !DILocation(line: 1998, column: 17, scope: !4898)
!5124 = !DILocation(line: 1999, column: 58, scope: !4898)
!5125 = !DILocation(line: 1999, column: 40, scope: !4898)
!5126 = !DILocation(line: 1999, column: 17, scope: !4898)
!5127 = !DILocation(line: 2000, column: 25, scope: !4898)
!5128 = !DILocation(line: 0, scope: !4898)
!5129 = !DILocation(line: 2002, column: 13, scope: !4891)
!5130 = !DILocation(line: 2003, column: 13, scope: !4891)
!5131 = !DILocation(line: 2004, column: 9, scope: !4892)
!5132 = !DILocation(line: 2008, column: 36, scope: !4900)
!5133 = !DILocation(line: 2009, column: 74, scope: !4900)
!5134 = !DILocation(line: 1654, column: 48, scope: !4068, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 2009, column: 33, scope: !4900)
!5136 = !DILocation(line: 1654, column: 56, scope: !4068, inlinedAt: !5135)
!5137 = !DILocation(line: 1654, column: 66, scope: !4068, inlinedAt: !5135)
!5138 = !DILocation(line: 1655, column: 44, scope: !4068, inlinedAt: !5135)
!5139 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !5140)
!5140 = distinct !DILocation(line: 1656, column: 32, scope: !4068, inlinedAt: !5135)
!5141 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !5140)
!5142 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !5140)
!5143 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !5140)
!5144 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !5140)
!5145 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !5140)
!5146 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !5140)
!5147 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !5140)
!5148 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !5140)
!5149 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !5140)
!5150 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !5140)
!5151 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !5140)
!5152 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !5140)
!5153 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !5140)
!5154 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !5140)
!5155 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !5140)
!5156 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !5140)
!5157 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !5140)
!5158 = !DILocation(line: 0, scope: !667, inlinedAt: !5140)
!5159 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !5140)
!5160 = !DILocation(line: 1655, column: 32, scope: !4068, inlinedAt: !5135)
!5161 = !DILocation(line: 1655, column: 21, scope: !4068, inlinedAt: !5135)
!5162 = !DILocation(line: 1657, column: 21, scope: !4104, inlinedAt: !5135)
!5163 = !DILocation(line: 1657, column: 18, scope: !4104, inlinedAt: !5135)
!5164 = !DILocation(line: 1657, column: 9, scope: !4068, inlinedAt: !5135)
!5165 = !DILocation(line: 1665, column: 27, scope: !4068, inlinedAt: !5135)
!5166 = !DILocation(line: 1665, column: 15, scope: !4068, inlinedAt: !5135)
!5167 = !DILocation(line: 1665, column: 25, scope: !4068, inlinedAt: !5135)
!5168 = !DILocation(line: 1667, column: 1, scope: !4068, inlinedAt: !5135)
!5169 = !DILocation(line: 2008, column: 25, scope: !4900)
!5170 = !DILocation(line: 2014, column: 38, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !4900, file: !1, line: 2014, column: 13)
!5172 = !DILocation(line: 2019, column: 20, scope: !4900)
!5173 = !DILocation(line: 2015, column: 13, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5171, file: !1, line: 2014, column: 47)
!5175 = !DILocation(line: 0, scope: !4900)
!5176 = !DILocation(line: 2019, column: 14, scope: !4900)
!5177 = !DILocation(line: 2020, column: 9, scope: !4900)
!5178 = !DILocation(line: 2020, column: 23, scope: !4900)
!5179 = !DILocation(line: 2021, column: 9, scope: !4900)
!5180 = !DILocation(line: 2021, column: 23, scope: !4900)
!5181 = !DILocation(line: 2022, column: 9, scope: !4900)
!5182 = !DILocation(line: 2023, column: 24, scope: !4900)
!5183 = !DILocation(line: 2023, column: 18, scope: !4900)
!5184 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4917)
!5185 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4917)
!5186 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4917)
!5187 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4917)
!5188 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !4917)
!5189 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4917)
!5190 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4917)
!5191 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !4917)
!5192 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4917)
!5193 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4917)
!5194 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4917)
!5195 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4915)
!5196 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4915)
!5197 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4915)
!5198 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4915)
!5199 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4915)
!5200 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4915)
!5201 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4915)
!5202 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4915)
!5203 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4915)
!5204 = !DILocation(line: 2022, column: 21, scope: !4900)
!5205 = !DILocation(line: 2027, column: 9, scope: !4900)
!5206 = !DILocation(line: 2028, column: 9, scope: !4900)
!5207 = !DILocation(line: 2029, column: 30, scope: !4900)
!5208 = !DILocation(line: 2029, column: 15, scope: !4900)
!5209 = !DILocation(line: 2030, column: 16, scope: !4900)
!5210 = !DILocation(line: 2032, column: 50, scope: !4900)
!5211 = !DILocation(line: 2032, column: 15, scope: !4900)
!5212 = !DILocation(line: 2032, column: 21, scope: !4900)
!5213 = !DILocation(line: 2032, column: 24, scope: !4900)
!5214 = !DILocation(line: 2032, column: 37, scope: !4900)
!5215 = !DILocation(line: 2032, column: 64, scope: !4900)
!5216 = !DILocation(line: 2032, column: 40, scope: !4900)
!5217 = !DILocation(line: 2032, column: 73, scope: !4900)
!5218 = !DILocation(line: 2032, column: 9, scope: !4900)
!5219 = !DILocation(line: 2033, column: 35, scope: !4909)
!5220 = !DILocation(line: 2033, column: 25, scope: !4909)
!5221 = !DILocation(line: 2035, column: 21, scope: !4909)
!5222 = !DILocation(line: 2036, column: 18, scope: !4909)
!5223 = !DILocation(line: 2037, column: 13, scope: !4909)
!5224 = !DILocation(line: 2041, column: 31, scope: !4909)
!5225 = !DILocation(line: 2040, column: 22, scope: !4909)
!5226 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !4913)
!5227 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !4913)
!5228 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !4913)
!5229 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !4913)
!5230 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !4913)
!5231 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !4913)
!5232 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !4913)
!5233 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 2042, column: 13, scope: !4909)
!5235 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !5234)
!5236 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !5234)
!5237 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !5234)
!5238 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !5234)
!5239 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !5234)
!5240 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !5234)
!5241 = !DILocation(line: 2045, column: 41, scope: !4909)
!5242 = !DILocation(line: 2045, column: 51, scope: !4909)
!5243 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 2046, column: 33, scope: !4909)
!5245 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !5244)
!5246 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !5244)
!5247 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !5244)
!5248 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !5244)
!5249 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !5244)
!5250 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !5244)
!5251 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !5244)
!5252 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !5244)
!5253 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !5244)
!5254 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !5244)
!5255 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !5244)
!5256 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !5244)
!5257 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !5244)
!5258 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !5244)
!5259 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !5244)
!5260 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !5244)
!5261 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !5244)
!5262 = !DILocation(line: 0, scope: !667, inlinedAt: !5244)
!5263 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !5244)
!5264 = !DILocation(line: 2045, column: 13, scope: !4909)
!5265 = !DILocation(line: 2049, column: 44, scope: !4909)
!5266 = !DILocation(line: 2049, column: 36, scope: !4909)
!5267 = !DILocation(line: 2049, column: 22, scope: !4909)
!5268 = !DILocation(line: 2050, column: 17, scope: !4909)
!5269 = !DILocation(line: 2051, column: 13, scope: !4909)
!5270 = !DILocation(line: 2054, column: 38, scope: !4909)
!5271 = !DILocation(line: 2054, column: 13, scope: !4909)
!5272 = distinct !{!5272, !5218, !5273}
!5273 = !DILocation(line: 2055, column: 9, scope: !4900)
!5274 = !DILocation(line: 0, scope: !4909)
!5275 = !DILocation(line: 2056, column: 9, scope: !4900)
!5276 = !DILocation(line: 2057, column: 9, scope: !4900)
!5277 = !DILocation(line: 2058, column: 5, scope: !4894)
!5278 = !DILocation(line: 2059, column: 1, scope: !4878)
!5279 = distinct !DISubprogram(name: "xclaimCommand", scope: !1, file: !1, line: 2127, type: !2179, isLocal: false, isDefinition: true, scopeLine: 2127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5280)
!5280 = !{!5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5294, !5295, !5296, !5297, !5298, !5302, !5303, !5304, !5305, !5306, !5308, !5311, !5312, !5313, !5316, !5317, !5318, !5319, !5324}
!5281 = !DILocalVariable(name: "c", arg: 1, scope: !5279, file: !1, line: 2127, type: !2062)
!5282 = !DILocalVariable(name: "group", scope: !5279, file: !1, line: 2128, type: !144)
!5283 = !DILocalVariable(name: "o", scope: !5279, file: !1, line: 2129, type: !367)
!5284 = !DILocalVariable(name: "minidle", scope: !5279, file: !1, line: 2130, type: !246)
!5285 = !DILocalVariable(name: "retrycount", scope: !5279, file: !1, line: 2131, type: !246)
!5286 = !DILocalVariable(name: "deliverytime", scope: !5279, file: !1, line: 2132, type: !2257)
!5287 = !DILocalVariable(name: "force", scope: !5279, file: !1, line: 2133, type: !12)
!5288 = !DILocalVariable(name: "justid", scope: !5279, file: !1, line: 2134, type: !12)
!5289 = !DILocalVariable(name: "j", scope: !5279, file: !1, line: 2159, type: !12)
!5290 = !DILocalVariable(name: "id", scope: !5291, file: !1, line: 2161, type: !95)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !1, line: 2160, column: 35)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !1, line: 2160, column: 5)
!5293 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2160, column: 5)
!5294 = !DILocalVariable(name: "last_id_arg", scope: !5279, file: !1, line: 2164, type: !12)
!5295 = !DILocalVariable(name: "now", scope: !5279, file: !1, line: 2168, type: !2257)
!5296 = !DILocalVariable(name: "last_id", scope: !5279, file: !1, line: 2169, type: !95)
!5297 = !DILocalVariable(name: "propagate_last_id", scope: !5279, file: !1, line: 2170, type: !12)
!5298 = !DILocalVariable(name: "moreargs", scope: !5299, file: !1, line: 2172, type: !12)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !1, line: 2171, column: 30)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !1, line: 2171, column: 5)
!5301 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2171, column: 5)
!5302 = !DILocalVariable(name: "opt", scope: !5299, file: !1, line: 2173, type: !10)
!5303 = !DILocalVariable(name: "consumer", scope: !5279, file: !1, line: 2225, type: !2315)
!5304 = !DILocalVariable(name: "arraylenptr", scope: !5279, file: !1, line: 2226, type: !7)
!5305 = !DILocalVariable(name: "arraylen", scope: !5279, file: !1, line: 2227, type: !13)
!5306 = !DILocalVariable(name: "j", scope: !5307, file: !1, line: 2228, type: !12)
!5307 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2228, column: 5)
!5308 = !DILocalVariable(name: "id", scope: !5309, file: !1, line: 2229, type: !95)
!5309 = distinct !DILexicalBlock(scope: !5310, file: !1, line: 2228, column: 44)
!5310 = distinct !DILexicalBlock(scope: !5307, file: !1, line: 2228, column: 5)
!5311 = !DILocalVariable(name: "buf", scope: !5309, file: !1, line: 2230, type: !1386)
!5312 = !DILocalVariable(name: "nack", scope: !5309, file: !1, line: 2236, type: !2308)
!5313 = !DILocalVariable(name: "myiterator", scope: !5314, file: !1, line: 2244, type: !1237)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 2243, column: 43)
!5315 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 2243, column: 13)
!5316 = !DILocalVariable(name: "numfields", scope: !5314, file: !1, line: 2246, type: !196)
!5317 = !DILocalVariable(name: "found", scope: !5314, file: !1, line: 2247, type: !12)
!5318 = !DILocalVariable(name: "item_id", scope: !5314, file: !1, line: 2248, type: !95)
!5319 = !DILocalVariable(name: "this_idle", scope: !5320, file: !1, line: 2268, type: !2257)
!5320 = distinct !DILexicalBlock(scope: !5321, file: !1, line: 2267, column: 44)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !1, line: 2267, column: 17)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !1, line: 2260, column: 34)
!5323 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 2260, column: 13)
!5324 = !DILocalVariable(name: "emitted", scope: !5325, file: !1, line: 2292, type: !13)
!5325 = distinct !DILexicalBlock(scope: !5326, file: !1, line: 2291, column: 20)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !1, line: 2289, column: 17)
!5327 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 2233, column: 9, scope: !5309)
!5329 = !DILocation(line: 2127, column: 28, scope: !5279)
!5330 = !DILocation(line: 2128, column: 15, scope: !5279)
!5331 = !DILocation(line: 2129, column: 32, scope: !5279)
!5332 = !DILocation(line: 2129, column: 38, scope: !5279)
!5333 = !DILocation(line: 2129, column: 35, scope: !5279)
!5334 = !DILocation(line: 2129, column: 15, scope: !5279)
!5335 = !DILocation(line: 2129, column: 11, scope: !5279)
!5336 = !DILocation(line: 2130, column: 5, scope: !5279)
!5337 = !DILocation(line: 2131, column: 5, scope: !5279)
!5338 = !DILocation(line: 2131, column: 15, scope: !5279)
!5339 = !DILocation(line: 2132, column: 5, scope: !5279)
!5340 = !DILocation(line: 2132, column: 14, scope: !5279)
!5341 = !DILocation(line: 2133, column: 9, scope: !5279)
!5342 = !DILocation(line: 2134, column: 9, scope: !5279)
!5343 = !DILocation(line: 2136, column: 9, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2136, column: 9)
!5345 = !DILocation(line: 2136, column: 9, scope: !5279)
!5346 = !DILocation(line: 0, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2150, column: 9)
!5348 = !DILocation(line: 2143, column: 19, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2143, column: 9)
!5350 = !DILocation(line: 2137, column: 13, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !1, line: 2137, column: 13)
!5352 = distinct !DILexicalBlock(scope: !5344, file: !1, line: 2136, column: 12)
!5353 = !DILocation(line: 2137, column: 13, scope: !5352)
!5354 = !DILocation(line: 2138, column: 35, scope: !5352)
!5355 = !DILocation(line: 2138, column: 42, scope: !5352)
!5356 = !DILocation(line: 2138, column: 39, scope: !5352)
!5357 = !DILocation(line: 2138, column: 51, scope: !5352)
!5358 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !5359)
!5359 = distinct !DILocation(line: 2138, column: 17, scope: !5352)
!5360 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !5359)
!5361 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !5359)
!5362 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !5359)
!5363 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !5359)
!5364 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !5359)
!5365 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !5366)
!5366 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !5359)
!5367 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !5366)
!5368 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !5366)
!5369 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !5366)
!5370 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !5366)
!5371 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !5366)
!5372 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !5366)
!5373 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !5366)
!5374 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !5366)
!5375 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !5366)
!5376 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !5366)
!5377 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !5366)
!5378 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !5366)
!5379 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !5366)
!5380 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !5366)
!5381 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !5366)
!5382 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !5366)
!5383 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !5366)
!5384 = !DILocation(line: 0, scope: !667, inlinedAt: !5366)
!5385 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !5366)
!5386 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !5359)
!5387 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !5359)
!5388 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !5359)
!5389 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !5359)
!5390 = !DILocation(line: 2143, column: 28, scope: !5349)
!5391 = !DILocation(line: 2145, column: 61, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5349, file: !1, line: 2143, column: 37)
!5393 = !DILocation(line: 2145, column: 73, scope: !5392)
!5394 = !DILocation(line: 2146, column: 38, scope: !5392)
!5395 = !DILocation(line: 2146, column: 50, scope: !5392)
!5396 = !DILocation(line: 2144, column: 9, scope: !5392)
!5397 = !DILocation(line: 2147, column: 9, scope: !5392)
!5398 = !DILocation(line: 2150, column: 40, scope: !5347)
!5399 = !DILocation(line: 2130, column: 15, scope: !5279)
!5400 = !DILocation(line: 2150, column: 9, scope: !5347)
!5401 = !DILocation(line: 2152, column: 9, scope: !5347)
!5402 = !DILocation(line: 2150, column: 9, scope: !5279)
!5403 = !DILocation(line: 2153, column: 9, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2153, column: 9)
!5405 = !DILocation(line: 2153, column: 17, scope: !5404)
!5406 = !DILocation(line: 2153, column: 9, scope: !5279)
!5407 = !DILocation(line: 2153, column: 30, scope: !5404)
!5408 = !DILocation(line: 2153, column: 22, scope: !5404)
!5409 = !DILocation(line: 2159, column: 9, scope: !5279)
!5410 = !DILocation(line: 2161, column: 9, scope: !5291)
!5411 = !DILocation(line: 2160, column: 24, scope: !5292)
!5412 = !DILocation(line: 2160, column: 19, scope: !5292)
!5413 = !DILocation(line: 2160, column: 5, scope: !5293)
!5414 = !DILocation(line: 2162, column: 48, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 2162, column: 13)
!5416 = !DILocation(line: 2162, column: 45, scope: !5415)
!5417 = !DILocation(line: 2161, column: 18, scope: !5291)
!5418 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !5419)
!5419 = distinct !DILocation(line: 2162, column: 13, scope: !5415)
!5420 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !5419)
!5421 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !5419)
!5422 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !5419)
!5423 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !5419)
!5424 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !5419)
!5425 = !DILocation(line: 2162, column: 63, scope: !5415)
!5426 = !DILocation(line: 2163, column: 5, scope: !5292)
!5427 = !DILocation(line: 2160, column: 31, scope: !5292)
!5428 = distinct !{!5428, !5413, !5429}
!5429 = !DILocation(line: 2163, column: 5, scope: !5293)
!5430 = !DILocation(line: 2168, column: 20, scope: !5279)
!5431 = !DILocation(line: 0, scope: !5292)
!5432 = !DILocation(line: 2164, column: 9, scope: !5279)
!5433 = !DILocation(line: 2168, column: 14, scope: !5279)
!5434 = !DILocation(line: 2169, column: 5, scope: !5279)
!5435 = !DILocation(line: 2169, column: 14, scope: !5279)
!5436 = !DILocation(line: 2170, column: 9, scope: !5279)
!5437 = !DILocation(line: 2171, column: 19, scope: !5300)
!5438 = !DILocation(line: 2171, column: 14, scope: !5300)
!5439 = !DILocation(line: 2171, column: 5, scope: !5301)
!5440 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !5441)
!5441 = distinct !DILocation(line: 2203, column: 9, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2203, column: 9)
!5443 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !5441)
!5444 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !5441)
!5445 = !DILocation(line: 2173, column: 24, scope: !5299)
!5446 = !DILocation(line: 2173, column: 21, scope: !5299)
!5447 = !DILocation(line: 2173, column: 33, scope: !5299)
!5448 = !DILocation(line: 2173, column: 15, scope: !5299)
!5449 = !DILocation(line: 2174, column: 14, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5299, file: !1, line: 2174, column: 13)
!5451 = !DILocation(line: 2174, column: 13, scope: !5299)
!5452 = !DILocation(line: 2176, column: 21, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !1, line: 2176, column: 20)
!5454 = !DILocation(line: 2176, column: 20, scope: !5450)
!5455 = !DILocation(line: 2178, column: 21, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5453, file: !1, line: 2178, column: 20)
!5457 = !DILocation(line: 2178, column: 47, scope: !5456)
!5458 = !DILocation(line: 2178, column: 44, scope: !5456)
!5459 = !DILocation(line: 2180, column: 48, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !1, line: 2180, column: 17)
!5461 = distinct !DILexicalBlock(scope: !5456, file: !1, line: 2178, column: 57)
!5462 = !DILocation(line: 2180, column: 17, scope: !5460)
!5463 = !DILocation(line: 2182, column: 17, scope: !5460)
!5464 = !DILocation(line: 2180, column: 17, scope: !5461)
!5465 = !DILocation(line: 2183, column: 34, scope: !5461)
!5466 = !DILocation(line: 2183, column: 32, scope: !5461)
!5467 = !DILocation(line: 2183, column: 26, scope: !5461)
!5468 = !DILocation(line: 2184, column: 9, scope: !5461)
!5469 = !DILocation(line: 2184, column: 21, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5456, file: !1, line: 2184, column: 20)
!5471 = !DILocation(line: 2184, column: 44, scope: !5470)
!5472 = !DILocation(line: 2186, column: 48, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 2186, column: 17)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !1, line: 2184, column: 57)
!5475 = !DILocation(line: 2186, column: 17, scope: !5473)
!5476 = !DILocation(line: 2188, column: 17, scope: !5473)
!5477 = !DILocation(line: 2186, column: 17, scope: !5474)
!5478 = !DILocation(line: 2189, column: 21, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5470, file: !1, line: 2189, column: 20)
!5480 = !DILocation(line: 2189, column: 50, scope: !5479)
!5481 = !DILocation(line: 2191, column: 48, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5483, file: !1, line: 2191, column: 17)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !1, line: 2189, column: 63)
!5484 = !DILocation(line: 2191, column: 17, scope: !5482)
!5485 = !DILocation(line: 2193, column: 17, scope: !5482)
!5486 = !DILocation(line: 2191, column: 17, scope: !5483)
!5487 = !DILocation(line: 2194, column: 21, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5479, file: !1, line: 2194, column: 20)
!5489 = !DILocation(line: 2194, column: 46, scope: !5488)
!5490 = !DILocation(line: 2196, column: 46, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5492, file: !1, line: 2196, column: 17)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !1, line: 2194, column: 59)
!5493 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !5494)
!5494 = distinct !DILocation(line: 2196, column: 17, scope: !5491)
!5495 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !5494)
!5496 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !5494)
!5497 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !5494)
!5498 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !5494)
!5499 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !5494)
!5500 = !DILocation(line: 2196, column: 69, scope: !5491)
!5501 = !DILocation(line: 2196, column: 17, scope: !5492)
!5502 = !DILocation(line: 2198, column: 13, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5488, file: !1, line: 2197, column: 16)
!5504 = !DILocation(line: 2199, column: 13, scope: !5503)
!5505 = !DILocation(line: 0, scope: !5293)
!5506 = !DILocation(line: 0, scope: !5279)
!5507 = !DILocation(line: 0, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5450, file: !1, line: 2174, column: 39)
!5509 = !DILocation(line: 2171, column: 26, scope: !5300)
!5510 = distinct !{!5510, !5439, !5511}
!5511 = !DILocation(line: 2201, column: 5, scope: !5301)
!5512 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !5441)
!5513 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !5441)
!5514 = !DILocation(line: 155, column: 20, scope: !351, inlinedAt: !5441)
!5515 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !5441)
!5516 = !DILocation(line: 157, column: 17, scope: !354, inlinedAt: !5441)
!5517 = !DILocation(line: 157, column: 26, scope: !354, inlinedAt: !5441)
!5518 = !DILocation(line: 157, column: 21, scope: !354, inlinedAt: !5441)
!5519 = !DILocation(line: 157, column: 14, scope: !351, inlinedAt: !5441)
!5520 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !5441)
!5521 = !DILocation(line: 2204, column: 26, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5442, file: !1, line: 2203, column: 56)
!5523 = !DILocation(line: 2206, column: 5, scope: !5522)
!5524 = !DILocation(line: 2208, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2208, column: 9)
!5526 = !DILocation(line: 2208, column: 22, scope: !5525)
!5527 = !DILocation(line: 2208, column: 9, scope: !5279)
!5528 = !DILocation(line: 2216, column: 26, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !1, line: 2216, column: 13)
!5530 = distinct !DILexicalBlock(scope: !5525, file: !1, line: 2208, column: 29)
!5531 = !DILocation(line: 2216, column: 46, scope: !5529)
!5532 = !DILocation(line: 2216, column: 30, scope: !5529)
!5533 = !DILocation(line: 2216, column: 66, scope: !5529)
!5534 = !DILocation(line: 2216, column: 53, scope: !5529)
!5535 = !DILocation(line: 2221, column: 22, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5525, file: !1, line: 2217, column: 12)
!5537 = !DILocation(line: 2225, column: 62, scope: !5279)
!5538 = !DILocation(line: 2225, column: 59, scope: !5279)
!5539 = !DILocation(line: 2225, column: 71, scope: !5279)
!5540 = !DILocation(line: 2225, column: 32, scope: !5279)
!5541 = !DILocation(line: 2225, column: 21, scope: !5279)
!5542 = !DILocation(line: 2226, column: 25, scope: !5279)
!5543 = !DILocation(line: 2226, column: 11, scope: !5279)
!5544 = !DILocation(line: 2227, column: 12, scope: !5279)
!5545 = !DILocation(line: 2228, column: 14, scope: !5307)
!5546 = !DILocation(line: 2228, column: 23, scope: !5310)
!5547 = !DILocation(line: 2228, column: 5, scope: !5307)
!5548 = !DILocation(line: 0, scope: !5322)
!5549 = !DILocation(line: 2304, column: 9, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5279, file: !1, line: 2304, column: 9)
!5551 = !DILocation(line: 2304, column: 9, scope: !5279)
!5552 = !DILocation(line: 2229, column: 9, scope: !5309)
!5553 = !DILocation(line: 2230, column: 9, scope: !5309)
!5554 = !DILocation(line: 2230, column: 23, scope: !5309)
!5555 = !DILocation(line: 2231, column: 45, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 2231, column: 13)
!5557 = !DILocation(line: 2231, column: 42, scope: !5556)
!5558 = !DILocation(line: 2229, column: 18, scope: !5309)
!5559 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !5560)
!5560 = distinct !DILocation(line: 2231, column: 13, scope: !5556)
!5561 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !5560)
!5562 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !5560)
!5563 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !5560)
!5564 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !5560)
!5565 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !5560)
!5566 = !DILocation(line: 2231, column: 60, scope: !5556)
!5567 = !DILocation(line: 2231, column: 13, scope: !5309)
!5568 = !DILocation(line: 2232, column: 13, scope: !5556)
!5569 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !5328)
!5570 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !5328)
!5571 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !5328)
!5572 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !5328)
!5573 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !5328)
!5574 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !5328)
!5575 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !5328)
!5576 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !5328)
!5577 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !5328)
!5578 = !DILocation(line: 2236, column: 43, scope: !5309)
!5579 = !DILocation(line: 2236, column: 28, scope: !5309)
!5580 = !DILocation(line: 2236, column: 21, scope: !5309)
!5581 = !DILocation(line: 2243, column: 30, scope: !5315)
!5582 = !DILocation(line: 2243, column: 27, scope: !5315)
!5583 = !DILocation(line: 2243, column: 19, scope: !5315)
!5584 = !DILocation(line: 2244, column: 13, scope: !5314)
!5585 = !DILocation(line: 2245, column: 48, scope: !5314)
!5586 = !DILocation(line: 2244, column: 28, scope: !5314)
!5587 = !DILocation(line: 2245, column: 13, scope: !5314)
!5588 = !DILocation(line: 2246, column: 13, scope: !5314)
!5589 = !DILocation(line: 2247, column: 17, scope: !5314)
!5590 = !DILocation(line: 2248, column: 13, scope: !5314)
!5591 = !DILocation(line: 2246, column: 21, scope: !5314)
!5592 = !DILocation(line: 2248, column: 22, scope: !5314)
!5593 = !DILocation(line: 2249, column: 17, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5314, file: !1, line: 2249, column: 17)
!5595 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !5596)
!5596 = distinct !DILocation(line: 2250, column: 13, scope: !5314)
!5597 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !5596)
!5598 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !5596)
!5599 = !DILocation(line: 2253, column: 17, scope: !5314)
!5600 = !DILocation(line: 1592, column: 46, scope: !2644, inlinedAt: !5601)
!5601 = distinct !DILocation(line: 2256, column: 20, scope: !5314)
!5602 = !DILocation(line: 1593, column: 24, scope: !2644, inlinedAt: !5601)
!5603 = !DILocation(line: 1593, column: 17, scope: !2644, inlinedAt: !5601)
!5604 = !DILocation(line: 1594, column: 27, scope: !2644, inlinedAt: !5601)
!5605 = !DILocation(line: 1594, column: 11, scope: !2644, inlinedAt: !5601)
!5606 = !DILocation(line: 1594, column: 25, scope: !2644, inlinedAt: !5601)
!5607 = !DILocation(line: 1595, column: 11, scope: !2644, inlinedAt: !5601)
!5608 = !DILocation(line: 1595, column: 26, scope: !2644, inlinedAt: !5601)
!5609 = !DILocation(line: 1596, column: 11, scope: !2644, inlinedAt: !5601)
!5610 = !DILocation(line: 1596, column: 20, scope: !2644, inlinedAt: !5601)
!5611 = !DILocation(line: 1597, column: 5, scope: !2644, inlinedAt: !5601)
!5612 = !DILocation(line: 2257, column: 30, scope: !5314)
!5613 = !DILocation(line: 2257, column: 13, scope: !5314)
!5614 = !DILocation(line: 2258, column: 9, scope: !5315)
!5615 = !DILocation(line: 2260, column: 21, scope: !5323)
!5616 = !DILocation(line: 0, scope: !5309)
!5617 = !DILocation(line: 2260, column: 18, scope: !5323)
!5618 = !DILocation(line: 2260, column: 13, scope: !5309)
!5619 = !DILocation(line: 2267, column: 23, scope: !5321)
!5620 = !DILocation(line: 2267, column: 17, scope: !5321)
!5621 = !DILocation(line: 2267, column: 35, scope: !5321)
!5622 = !DILocation(line: 2267, column: 32, scope: !5321)
!5623 = !DILocation(line: 2268, column: 50, scope: !5320)
!5624 = !DILocation(line: 2268, column: 42, scope: !5320)
!5625 = !DILocation(line: 2268, column: 26, scope: !5320)
!5626 = !DILocation(line: 2269, column: 31, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5320, file: !1, line: 2269, column: 21)
!5628 = !DILocation(line: 2274, column: 17, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5322, file: !1, line: 2274, column: 17)
!5630 = !DILocation(line: 2274, column: 17, scope: !5322)
!5631 = !DILocation(line: 2275, column: 43, scope: !5629)
!5632 = !DILocation(line: 2275, column: 17, scope: !5629)
!5633 = !DILocation(line: 2277, column: 28, scope: !5322)
!5634 = !DILocation(line: 2278, column: 35, scope: !5322)
!5635 = !DILocation(line: 2278, column: 19, scope: !5322)
!5636 = !DILocation(line: 2278, column: 33, scope: !5322)
!5637 = !DILocation(line: 2281, column: 17, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5322, file: !1, line: 2281, column: 17)
!5639 = !DILocation(line: 2281, column: 28, scope: !5638)
!5640 = !DILocation(line: 2281, column: 17, scope: !5322)
!5641 = !DILocation(line: 2283, column: 24, scope: !5638)
!5642 = !DILocation(line: 2287, column: 33, scope: !5322)
!5643 = !DILocation(line: 2287, column: 13, scope: !5322)
!5644 = !DILocation(line: 2289, column: 17, scope: !5322)
!5645 = !DILocation(line: 2284, column: 23, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !1, line: 2283, column: 33)
!5647 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 2283, column: 24)
!5648 = !DILocation(line: 2284, column: 37, scope: !5646)
!5649 = !DILocation(line: 2282, column: 23, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 2281, column: 34)
!5651 = !DILocation(line: 2282, column: 38, scope: !5650)
!5652 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !5653)
!5653 = distinct !DILocation(line: 2290, column: 17, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5326, file: !1, line: 2289, column: 25)
!5655 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !5653)
!5656 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !5653)
!5657 = !DILocation(line: 780, column: 52, scope: !2059, inlinedAt: !5653)
!5658 = !DILocation(line: 780, column: 59, scope: !2059, inlinedAt: !5653)
!5659 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !5653)
!5660 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !5653)
!5661 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !5653)
!5662 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !5653)
!5663 = !DILocation(line: 2291, column: 13, scope: !5654)
!5664 = !DILocation(line: 2292, column: 60, scope: !5325)
!5665 = !DILocation(line: 2292, column: 34, scope: !5325)
!5666 = !DILocation(line: 2292, column: 24, scope: !5325)
!5667 = !DILocation(line: 2294, column: 22, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5325, file: !1, line: 2294, column: 21)
!5669 = !DILocation(line: 2294, column: 21, scope: !5325)
!5670 = !DILocation(line: 2294, column: 49, scope: !5668)
!5671 = !DILocation(line: 2294, column: 31, scope: !5668)
!5672 = !DILocation(line: 2296, column: 21, scope: !5322)
!5673 = !DILocation(line: 2299, column: 40, scope: !5322)
!5674 = !DILocation(line: 2299, column: 37, scope: !5322)
!5675 = !DILocation(line: 2299, column: 54, scope: !5322)
!5676 = !DILocation(line: 2299, column: 65, scope: !5322)
!5677 = !DILocation(line: 2299, column: 13, scope: !5322)
!5678 = !DILocation(line: 2301, column: 25, scope: !5322)
!5679 = !DILocation(line: 2302, column: 9, scope: !5322)
!5680 = !DILocation(line: 0, scope: !5522)
!5681 = !DILocation(line: 2303, column: 5, scope: !5310)
!5682 = !DILocation(line: 2228, column: 40, scope: !5310)
!5683 = distinct !{!5683, !5547, !5684}
!5684 = !DILocation(line: 2303, column: 5, scope: !5307)
!5685 = !DILocation(line: 2305, column: 37, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5550, file: !1, line: 2304, column: 28)
!5687 = !DILocation(line: 2305, column: 34, scope: !5686)
!5688 = !DILocation(line: 2305, column: 51, scope: !5686)
!5689 = !DILocation(line: 2305, column: 9, scope: !5686)
!5690 = !DILocation(line: 2306, column: 21, scope: !5686)
!5691 = !DILocation(line: 2307, column: 5, scope: !5686)
!5692 = !DILocation(line: 2308, column: 5, scope: !5279)
!5693 = !DILocation(line: 2309, column: 5, scope: !5279)
!5694 = !DILocation(line: 2310, column: 1, scope: !5279)
!5695 = distinct !DISubprogram(name: "xdelCommand", scope: !1, file: !1, line: 2318, type: !2179, isLocal: false, isDefinition: true, scopeLine: 2318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5696)
!5696 = !{!5697, !5698, !5699, !5700, !5701, !5703, !5704}
!5697 = !DILocalVariable(name: "c", arg: 1, scope: !5695, file: !1, line: 2318, type: !2062)
!5698 = !DILocalVariable(name: "o", scope: !5695, file: !1, line: 2319, type: !367)
!5699 = !DILocalVariable(name: "s", scope: !5695, file: !1, line: 2323, type: !69)
!5700 = !DILocalVariable(name: "id", scope: !5695, file: !1, line: 2328, type: !95)
!5701 = !DILocalVariable(name: "j", scope: !5702, file: !1, line: 2329, type: !12)
!5702 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 2329, column: 5)
!5703 = !DILocalVariable(name: "deleted", scope: !5695, file: !1, line: 2334, type: !12)
!5704 = !DILocalVariable(name: "j", scope: !5705, file: !1, line: 2335, type: !12)
!5705 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 2335, column: 5)
!5706 = !DILocation(line: 2318, column: 26, scope: !5695)
!5707 = !DILocation(line: 2321, column: 41, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 2321, column: 9)
!5709 = !DILocation(line: 2321, column: 38, scope: !5708)
!5710 = !DILocation(line: 2321, column: 56, scope: !5708)
!5711 = !DILocation(line: 2321, column: 14, scope: !5708)
!5712 = !DILocation(line: 2319, column: 11, scope: !5695)
!5713 = !DILocation(line: 2321, column: 64, scope: !5708)
!5714 = !DILocation(line: 2322, column: 9, scope: !5708)
!5715 = !DILocation(line: 2322, column: 12, scope: !5708)
!5716 = !DILocation(line: 2321, column: 9, scope: !5695)
!5717 = !DILocation(line: 2323, column: 20, scope: !5695)
!5718 = !DILocation(line: 2323, column: 13, scope: !5695)
!5719 = !DILocation(line: 2328, column: 5, scope: !5695)
!5720 = !DILocation(line: 2329, column: 14, scope: !5702)
!5721 = !DILocation(line: 2329, column: 28, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5702, file: !1, line: 2329, column: 5)
!5723 = !DILocation(line: 2329, column: 23, scope: !5722)
!5724 = !DILocation(line: 2329, column: 5, scope: !5702)
!5725 = distinct !{!5725, !5724, !5726}
!5726 = !DILocation(line: 2331, column: 5, scope: !5702)
!5727 = !DILocation(line: 2335, column: 14, scope: !5705)
!5728 = !DILocation(line: 2334, column: 9, scope: !5695)
!5729 = !DILocation(line: 2335, column: 23, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5705, file: !1, line: 2335, column: 5)
!5731 = !DILocation(line: 2335, column: 5, scope: !5705)
!5732 = !DILocation(line: 2330, column: 45, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !1, line: 2330, column: 13)
!5734 = distinct !DILexicalBlock(scope: !5722, file: !1, line: 2329, column: 39)
!5735 = !DILocation(line: 2330, column: 42, scope: !5733)
!5736 = !DILocation(line: 2328, column: 14, scope: !5695)
!5737 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !5738)
!5738 = distinct !DILocation(line: 2330, column: 13, scope: !5733)
!5739 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !5738)
!5740 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !5738)
!5741 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !5738)
!5742 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !5738)
!5743 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !5738)
!5744 = !DILocation(line: 2330, column: 60, scope: !5733)
!5745 = !DILocation(line: 2329, column: 35, scope: !5722)
!5746 = !DILocation(line: 2330, column: 13, scope: !5734)
!5747 = !DILocation(line: 2341, column: 9, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5695, file: !1, line: 2341, column: 9)
!5749 = !DILocation(line: 2341, column: 9, scope: !5695)
!5750 = !DILocation(line: 2336, column: 41, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5730, file: !1, line: 2335, column: 39)
!5752 = !DILocation(line: 2336, column: 38, scope: !5751)
!5753 = !DILocation(line: 1149, column: 40, scope: !3115, inlinedAt: !5754)
!5754 = distinct !DILocation(line: 2336, column: 9, scope: !5751)
!5755 = !DILocation(line: 1149, column: 49, scope: !3115, inlinedAt: !5754)
!5756 = !DILocation(line: 1149, column: 62, scope: !3115, inlinedAt: !5754)
!5757 = !DILocation(line: 1149, column: 75, scope: !3115, inlinedAt: !5754)
!5758 = !DILocation(line: 1150, column: 12, scope: !3115, inlinedAt: !5754)
!5759 = !DILocation(line: 1150, column: 5, scope: !3115, inlinedAt: !5754)
!5760 = !DILocation(line: 762, column: 30, scope: !2025, inlinedAt: !5761)
!5761 = distinct !DILocation(line: 2337, column: 20, scope: !5751)
!5762 = !DILocation(line: 762, column: 43, scope: !2025, inlinedAt: !5761)
!5763 = !DILocation(line: 763, column: 9, scope: !2025, inlinedAt: !5761)
!5764 = !DILocation(line: 764, column: 5, scope: !2025, inlinedAt: !5761)
!5765 = !DILocation(line: 764, column: 20, scope: !2025, inlinedAt: !5761)
!5766 = !DILocation(line: 765, column: 5, scope: !2025, inlinedAt: !5761)
!5767 = !DILocation(line: 766, column: 5, scope: !2025, inlinedAt: !5761)
!5768 = !DILocation(line: 767, column: 5, scope: !2025, inlinedAt: !5761)
!5769 = !DILocation(line: 766, column: 14, scope: !2025, inlinedAt: !5761)
!5770 = !DILocation(line: 767, column: 13, scope: !2025, inlinedAt: !5761)
!5771 = !DILocation(line: 768, column: 9, scope: !2046, inlinedAt: !5761)
!5772 = !DILocation(line: 768, column: 9, scope: !2025, inlinedAt: !5761)
!5773 = !DILocation(line: 769, column: 9, scope: !2049, inlinedAt: !5761)
!5774 = !DILocation(line: 771, column: 5, scope: !2049, inlinedAt: !5761)
!5775 = !DILocation(line: 0, scope: !2025, inlinedAt: !5761)
!5776 = !DILocation(line: 756, column: 41, scope: !2008, inlinedAt: !5777)
!5777 = distinct !DILocation(line: 772, column: 5, scope: !2025, inlinedAt: !5761)
!5778 = !DILocation(line: 757, column: 5, scope: !2008, inlinedAt: !5777)
!5779 = !DILocation(line: 758, column: 1, scope: !2008, inlinedAt: !5777)
!5780 = !DILocation(line: 774, column: 1, scope: !2025, inlinedAt: !5761)
!5781 = !DILocation(line: 773, column: 5, scope: !2025, inlinedAt: !5761)
!5782 = !DILocation(line: 2337, column: 17, scope: !5751)
!5783 = !DILocation(line: 2335, column: 35, scope: !5730)
!5784 = !DILocation(line: 2335, column: 28, scope: !5730)
!5785 = distinct !{!5785, !5731, !5786}
!5786 = !DILocation(line: 2338, column: 5, scope: !5705)
!5787 = !DILocation(line: 2342, column: 30, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5748, file: !1, line: 2341, column: 18)
!5789 = !DILocation(line: 2342, column: 36, scope: !5788)
!5790 = !DILocation(line: 2342, column: 33, scope: !5788)
!5791 = !DILocation(line: 2342, column: 9, scope: !5788)
!5792 = !DILocation(line: 2343, column: 53, scope: !5788)
!5793 = !DILocation(line: 2343, column: 50, scope: !5788)
!5794 = !DILocation(line: 2343, column: 64, scope: !5788)
!5795 = !DILocation(line: 2343, column: 68, scope: !5788)
!5796 = !DILocation(line: 2343, column: 9, scope: !5788)
!5797 = !DILocation(line: 2344, column: 25, scope: !5788)
!5798 = !DILocation(line: 2344, column: 22, scope: !5788)
!5799 = !DILocation(line: 2345, column: 5, scope: !5788)
!5800 = !DILocation(line: 2346, column: 24, scope: !5695)
!5801 = !DILocation(line: 2346, column: 5, scope: !5695)
!5802 = !DILocation(line: 2347, column: 1, scope: !5695)
!5803 = distinct !DISubprogram(name: "xtrimCommand", scope: !1, file: !1, line: 2361, type: !2179, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5804)
!5804 = !{!5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5817, !5818, !5821}
!5805 = !DILocalVariable(name: "c", arg: 1, scope: !5803, file: !1, line: 2361, type: !2062)
!5806 = !DILocalVariable(name: "o", scope: !5803, file: !1, line: 2362, type: !367)
!5807 = !DILocalVariable(name: "s", scope: !5803, file: !1, line: 2368, type: !69)
!5808 = !DILocalVariable(name: "trim_strategy", scope: !5803, file: !1, line: 2371, type: !12)
!5809 = !DILocalVariable(name: "maxlen", scope: !5803, file: !1, line: 2372, type: !246)
!5810 = !DILocalVariable(name: "approx_maxlen", scope: !5803, file: !1, line: 2373, type: !12)
!5811 = !DILocalVariable(name: "maxlen_arg_idx", scope: !5803, file: !1, line: 2375, type: !12)
!5812 = !DILocalVariable(name: "i", scope: !5803, file: !1, line: 2378, type: !12)
!5813 = !DILocalVariable(name: "moreargs", scope: !5814, file: !1, line: 2380, type: !12)
!5814 = distinct !DILexicalBlock(scope: !5815, file: !1, line: 2379, column: 30)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !1, line: 2379, column: 5)
!5816 = distinct !DILexicalBlock(scope: !5803, file: !1, line: 2379, column: 5)
!5817 = !DILocalVariable(name: "opt", scope: !5814, file: !1, line: 2381, type: !10)
!5818 = !DILocalVariable(name: "next", scope: !5819, file: !1, line: 2385, type: !10)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !1, line: 2382, column: 52)
!5820 = distinct !DILexicalBlock(scope: !5814, file: !1, line: 2382, column: 13)
!5821 = !DILocalVariable(name: "deleted", scope: !5803, file: !1, line: 2409, type: !196)
!5822 = !DILocation(line: 2361, column: 27, scope: !5803)
!5823 = !DILocation(line: 2366, column: 41, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5803, file: !1, line: 2366, column: 9)
!5825 = !DILocation(line: 2366, column: 38, scope: !5824)
!5826 = !DILocation(line: 2366, column: 56, scope: !5824)
!5827 = !DILocation(line: 2366, column: 14, scope: !5824)
!5828 = !DILocation(line: 2362, column: 11, scope: !5803)
!5829 = !DILocation(line: 2366, column: 64, scope: !5824)
!5830 = !DILocation(line: 2367, column: 9, scope: !5824)
!5831 = !DILocation(line: 2367, column: 12, scope: !5824)
!5832 = !DILocation(line: 2366, column: 9, scope: !5803)
!5833 = !DILocation(line: 2368, column: 20, scope: !5803)
!5834 = !DILocation(line: 2368, column: 13, scope: !5803)
!5835 = !DILocation(line: 2371, column: 9, scope: !5803)
!5836 = !DILocation(line: 2372, column: 5, scope: !5803)
!5837 = !DILocation(line: 2372, column: 15, scope: !5803)
!5838 = !DILocation(line: 2373, column: 9, scope: !5803)
!5839 = !DILocation(line: 2375, column: 9, scope: !5803)
!5840 = !DILocation(line: 2378, column: 9, scope: !5803)
!5841 = !DILocation(line: 2379, column: 19, scope: !5815)
!5842 = !DILocation(line: 2379, column: 14, scope: !5815)
!5843 = !DILocation(line: 2379, column: 5, scope: !5816)
!5844 = distinct !{!5844, !5843, !5845}
!5845 = !DILocation(line: 2406, column: 5, scope: !5816)
!5846 = !DILocation(line: 2380, column: 36, scope: !5814)
!5847 = !DILocation(line: 2380, column: 13, scope: !5814)
!5848 = !DILocation(line: 2381, column: 24, scope: !5814)
!5849 = !DILocation(line: 2381, column: 21, scope: !5814)
!5850 = !DILocation(line: 2381, column: 33, scope: !5814)
!5851 = !DILocation(line: 2381, column: 15, scope: !5814)
!5852 = !DILocation(line: 2382, column: 14, scope: !5820)
!5853 = !DILocation(line: 2382, column: 42, scope: !5820)
!5854 = !DILocation(line: 2382, column: 39, scope: !5820)
!5855 = !DILocation(line: 2385, column: 35, scope: !5819)
!5856 = !DILocation(line: 2385, column: 26, scope: !5819)
!5857 = !DILocation(line: 2385, column: 40, scope: !5819)
!5858 = !DILocation(line: 2385, column: 19, scope: !5819)
!5859 = !DILocation(line: 2387, column: 26, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5819, file: !1, line: 2387, column: 17)
!5861 = !DILocation(line: 2387, column: 31, scope: !5860)
!5862 = !DILocation(line: 2387, column: 34, scope: !5860)
!5863 = !DILocation(line: 2387, column: 49, scope: !5860)
!5864 = !DILocation(line: 2387, column: 52, scope: !5860)
!5865 = !DILocation(line: 2387, column: 60, scope: !5860)
!5866 = !DILocation(line: 2387, column: 17, scope: !5819)
!5867 = !DILocation(line: 2390, column: 59, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5860, file: !1, line: 2390, column: 24)
!5869 = !DILocation(line: 2390, column: 67, scope: !5868)
!5870 = !DILocation(line: 2390, column: 24, scope: !5860)
!5871 = !DILocation(line: 0, scope: !5803)
!5872 = !DILocation(line: 0, scope: !5819)
!5873 = !DILocation(line: 2393, column: 57, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5819, file: !1, line: 2393, column: 17)
!5875 = !DILocation(line: 2393, column: 48, scope: !5874)
!5876 = !DILocation(line: 2393, column: 17, scope: !5874)
!5877 = !DILocation(line: 2394, column: 17, scope: !5874)
!5878 = !DILocation(line: 2393, column: 17, scope: !5819)
!5879 = !DILocation(line: 2396, column: 17, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5819, file: !1, line: 2396, column: 17)
!5881 = !DILocation(line: 2396, column: 24, scope: !5880)
!5882 = !DILocation(line: 2379, column: 26, scope: !5815)
!5883 = !DILocation(line: 2396, column: 17, scope: !5819)
!5884 = !DILocation(line: 2397, column: 17, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5880, file: !1, line: 2396, column: 29)
!5886 = !DILocation(line: 2398, column: 17, scope: !5885)
!5887 = !DILocation(line: 2403, column: 31, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5820, file: !1, line: 2402, column: 16)
!5889 = !DILocation(line: 2403, column: 13, scope: !5888)
!5890 = !DILocation(line: 2409, column: 13, scope: !5803)
!5891 = !DILocation(line: 2411, column: 19, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !1, line: 2410, column: 48)
!5893 = distinct !DILexicalBlock(scope: !5803, file: !1, line: 2410, column: 9)
!5894 = !DILocation(line: 2418, column: 9, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5803, file: !1, line: 2418, column: 9)
!5896 = !DILocation(line: 2418, column: 9, scope: !5803)
!5897 = !DILocation(line: 2413, column: 9, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !1, line: 2412, column: 12)
!5899 = !DILocation(line: 2414, column: 9, scope: !5898)
!5900 = !DILocation(line: 2419, column: 30, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5895, file: !1, line: 2418, column: 18)
!5902 = !DILocation(line: 2419, column: 36, scope: !5901)
!5903 = !DILocation(line: 2419, column: 33, scope: !5901)
!5904 = !DILocation(line: 2419, column: 9, scope: !5901)
!5905 = !DILocation(line: 2420, column: 54, scope: !5901)
!5906 = !DILocation(line: 2420, column: 51, scope: !5901)
!5907 = !DILocation(line: 2420, column: 65, scope: !5901)
!5908 = !DILocation(line: 2420, column: 69, scope: !5901)
!5909 = !DILocation(line: 2420, column: 9, scope: !5901)
!5910 = !DILocation(line: 2421, column: 22, scope: !5901)
!5911 = !DILocation(line: 2422, column: 13, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5901, file: !1, line: 2422, column: 13)
!5913 = !DILocation(line: 2422, column: 13, scope: !5901)
!5914 = !DILocation(line: 1155, column: 40, scope: !3127, inlinedAt: !5915)
!5915 = distinct !DILocation(line: 2422, column: 28, scope: !5912)
!5916 = !DILocation(line: 1155, column: 51, scope: !3127, inlinedAt: !5915)
!5917 = !DILocation(line: 1155, column: 58, scope: !3127, inlinedAt: !5915)
!5918 = !DILocation(line: 1156, column: 58, scope: !3127, inlinedAt: !5915)
!5919 = !DILocation(line: 1156, column: 24, scope: !3127, inlinedAt: !5915)
!5920 = !DILocation(line: 1156, column: 11, scope: !3127, inlinedAt: !5915)
!5921 = !DILocation(line: 1157, column: 23, scope: !3127, inlinedAt: !5915)
!5922 = !DILocation(line: 1157, column: 11, scope: !3127, inlinedAt: !5915)
!5923 = !DILocation(line: 1159, column: 5, scope: !3127, inlinedAt: !5915)
!5924 = !DILocation(line: 1160, column: 5, scope: !3127, inlinedAt: !5915)
!5925 = !DILocation(line: 1162, column: 5, scope: !3127, inlinedAt: !5915)
!5926 = !DILocation(line: 1163, column: 5, scope: !3127, inlinedAt: !5915)
!5927 = !DILocation(line: 1164, column: 1, scope: !3127, inlinedAt: !5915)
!5928 = !DILocation(line: 2422, column: 28, scope: !5912)
!5929 = !DILocation(line: 2424, column: 5, scope: !5803)
!5930 = !DILocation(line: 2425, column: 1, scope: !5803)
!5931 = distinct !DISubprogram(name: "xinfoCommand", scope: !1, file: !1, line: 2431, type: !2179, isLocal: false, isDefinition: true, scopeLine: 2431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5932)
!5932 = !{!5933, !5934, !5936, !5937, !5938, !5939, !5940, !5943, !5944, !5945, !5947, !5948, !5951, !5953, !5956, !5957}
!5933 = !DILocalVariable(name: "c", arg: 1, scope: !5931, file: !1, line: 2431, type: !2062)
!5934 = !DILocalVariable(name: "help", scope: !5931, file: !1, line: 2432, type: !5935)
!5935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2931, size: 320, elements: !2462)
!5936 = !DILocalVariable(name: "s", scope: !5931, file: !1, line: 2439, type: !69)
!5937 = !DILocalVariable(name: "opt", scope: !5931, file: !1, line: 2440, type: !10)
!5938 = !DILocalVariable(name: "key", scope: !5931, file: !1, line: 2441, type: !367)
!5939 = !DILocalVariable(name: "o", scope: !5931, file: !1, line: 2458, type: !367)
!5940 = !DILocalVariable(name: "cg", scope: !5941, file: !1, line: 2465, type: !144)
!5941 = distinct !DILexicalBlock(scope: !5942, file: !1, line: 2463, column: 55)
!5942 = distinct !DILexicalBlock(scope: !5931, file: !1, line: 2463, column: 9)
!5943 = !DILocalVariable(name: "ri", scope: !5941, file: !1, line: 2474, type: !384)
!5944 = !DILocalVariable(name: "now", scope: !5941, file: !1, line: 2477, type: !2257)
!5945 = !DILocalVariable(name: "consumer", scope: !5946, file: !1, line: 2479, type: !2315)
!5946 = distinct !DILexicalBlock(scope: !5941, file: !1, line: 2478, column: 29)
!5947 = !DILocalVariable(name: "idle", scope: !5946, file: !1, line: 2480, type: !2257)
!5948 = !DILocalVariable(name: "ri", scope: !5949, file: !1, line: 2500, type: !384)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !1, line: 2492, column: 59)
!5950 = distinct !DILexicalBlock(scope: !5942, file: !1, line: 2492, column: 16)
!5951 = !DILocalVariable(name: "cg", scope: !5952, file: !1, line: 2504, type: !144)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !1, line: 2503, column: 29)
!5953 = !DILocalVariable(name: "count", scope: !5954, file: !1, line: 2532, type: !12)
!5954 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 2516, column: 59)
!5955 = distinct !DILexicalBlock(scope: !5950, file: !1, line: 2516, column: 16)
!5956 = !DILocalVariable(name: "start", scope: !5954, file: !1, line: 2533, type: !95)
!5957 = !DILocalVariable(name: "end", scope: !5954, file: !1, line: 2533, type: !95)
!5958 = !DILocation(line: 2431, column: 27, scope: !5931)
!5959 = !DILocation(line: 2432, column: 5, scope: !5931)
!5960 = !DILocation(line: 2432, column: 17, scope: !5931)
!5961 = !DILocation(line: 2439, column: 13, scope: !5931)
!5962 = !DILocation(line: 2444, column: 24, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5931, file: !1, line: 2444, column: 9)
!5964 = !DILocation(line: 2444, column: 21, scope: !5963)
!5965 = !DILocation(line: 2444, column: 33, scope: !5963)
!5966 = !DILocation(line: 2444, column: 10, scope: !5963)
!5967 = !DILocation(line: 2444, column: 9, scope: !5931)
!5968 = !DILocation(line: 2445, column: 9, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5963, file: !1, line: 2444, column: 46)
!5970 = !DILocation(line: 2446, column: 9, scope: !5969)
!5971 = !DILocation(line: 2447, column: 19, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5963, file: !1, line: 2447, column: 16)
!5973 = !DILocation(line: 2447, column: 24, scope: !5972)
!5974 = !DILocation(line: 2447, column: 16, scope: !5963)
!5975 = !DILocation(line: 2448, column: 9, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5972, file: !1, line: 2447, column: 29)
!5977 = !DILocation(line: 2449, column: 9, scope: !5976)
!5978 = !DILocation(line: 2440, column: 11, scope: !5931)
!5979 = !DILocation(line: 2455, column: 11, scope: !5931)
!5980 = !DILocation(line: 2441, column: 11, scope: !5931)
!5981 = !DILocation(line: 2458, column: 50, scope: !5931)
!5982 = !DILocation(line: 2458, column: 15, scope: !5931)
!5983 = !DILocation(line: 2458, column: 11, scope: !5931)
!5984 = !DILocation(line: 2459, column: 11, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5931, file: !1, line: 2459, column: 9)
!5986 = !DILocation(line: 2459, column: 19, scope: !5985)
!5987 = !DILocation(line: 2459, column: 22, scope: !5985)
!5988 = !DILocation(line: 2459, column: 9, scope: !5931)
!5989 = !DILocation(line: 2460, column: 12, scope: !5931)
!5990 = !DILocation(line: 2463, column: 10, scope: !5942)
!5991 = !DILocation(line: 2463, column: 38, scope: !5942)
!5992 = !DILocation(line: 2463, column: 44, scope: !5942)
!5993 = !DILocation(line: 2463, column: 49, scope: !5942)
!5994 = !DILocation(line: 2463, column: 9, scope: !5931)
!5995 = !DILocation(line: 2465, column: 44, scope: !5941)
!5996 = !DILocation(line: 2465, column: 41, scope: !5941)
!5997 = !DILocation(line: 2465, column: 53, scope: !5941)
!5998 = !DILocation(line: 1643, column: 34, scope: !3763, inlinedAt: !5999)
!5999 = distinct !DILocation(line: 2465, column: 24, scope: !5941)
!6000 = !DILocation(line: 1643, column: 41, scope: !3763, inlinedAt: !5999)
!6001 = !DILocation(line: 1644, column: 12, scope: !3773, inlinedAt: !5999)
!6002 = !DILocation(line: 1644, column: 20, scope: !3773, inlinedAt: !5999)
!6003 = !DILocation(line: 1644, column: 9, scope: !3763, inlinedAt: !5999)
!6004 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !6005)
!6005 = distinct !DILocation(line: 1646, column: 28, scope: !3763, inlinedAt: !5999)
!6006 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !6005)
!6007 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !6005)
!6008 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !6005)
!6009 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !6005)
!6010 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !6005)
!6011 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !6005)
!6012 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !6005)
!6013 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !6005)
!6014 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !6005)
!6015 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !6005)
!6016 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !6005)
!6017 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !6005)
!6018 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !6005)
!6019 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !6005)
!6020 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !6005)
!6021 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !6005)
!6022 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !6005)
!6023 = !DILocation(line: 0, scope: !667, inlinedAt: !6005)
!6024 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !6005)
!6025 = !DILocation(line: 1645, column: 20, scope: !3763, inlinedAt: !5999)
!6026 = !DILocation(line: 1645, column: 15, scope: !3763, inlinedAt: !5999)
!6027 = !DILocation(line: 1647, column: 19, scope: !3763, inlinedAt: !5999)
!6028 = !DILocation(line: 1647, column: 16, scope: !3763, inlinedAt: !5999)
!6029 = !DILocation(line: 1648, column: 1, scope: !3763, inlinedAt: !5999)
!6030 = !DILocation(line: 2465, column: 19, scope: !5941)
!6031 = !DILocation(line: 2466, column: 13, scope: !5941)
!6032 = !DILocation(line: 2466, column: 16, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5941, file: !1, line: 2466, column: 13)
!6034 = !DILocation(line: 2469, column: 46, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6033, file: !1, line: 2466, column: 25)
!6036 = !DILocation(line: 2469, column: 43, scope: !6035)
!6037 = !DILocation(line: 2469, column: 55, scope: !6035)
!6038 = !DILocation(line: 2469, column: 72, scope: !6035)
!6039 = !DILocation(line: 2467, column: 13, scope: !6035)
!6040 = !DILocation(line: 2473, column: 44, scope: !5941)
!6041 = !DILocation(line: 2473, column: 32, scope: !5941)
!6042 = !DILocation(line: 2473, column: 9, scope: !5941)
!6043 = !DILocation(line: 2474, column: 9, scope: !5941)
!6044 = !DILocation(line: 2475, column: 26, scope: !5941)
!6045 = !DILocation(line: 2474, column: 21, scope: !5941)
!6046 = !DILocation(line: 2475, column: 9, scope: !5941)
!6047 = !DILocation(line: 2476, column: 9, scope: !5941)
!6048 = !DILocation(line: 2477, column: 24, scope: !5941)
!6049 = !DILocation(line: 2477, column: 18, scope: !5941)
!6050 = !DILocation(line: 2478, column: 15, scope: !5941)
!6051 = !DILocation(line: 2478, column: 9, scope: !5941)
!6052 = !DILocation(line: 2479, column: 43, scope: !5946)
!6053 = !DILocation(line: 2479, column: 29, scope: !5946)
!6054 = !DILocation(line: 2480, column: 45, scope: !5946)
!6055 = !DILocation(line: 2480, column: 33, scope: !5946)
!6056 = !DILocation(line: 2480, column: 22, scope: !5946)
!6057 = !DILocation(line: 2481, column: 17, scope: !5946)
!6058 = !DILocation(line: 2483, column: 13, scope: !5946)
!6059 = !DILocation(line: 2484, column: 13, scope: !5946)
!6060 = !DILocation(line: 2485, column: 45, scope: !5946)
!6061 = !DILocation(line: 87, column: 39, scope: !652, inlinedAt: !6062)
!6062 = distinct !DILocation(line: 2485, column: 50, scope: !5946)
!6063 = !DILocation(line: 88, column: 27, scope: !652, inlinedAt: !6062)
!6064 = !DILocation(line: 88, column: 19, scope: !652, inlinedAt: !6062)
!6065 = !DILocation(line: 89, column: 5, scope: !652, inlinedAt: !6062)
!6066 = !DILocation(line: 91, column: 20, scope: !667, inlinedAt: !6062)
!6067 = !DILocation(line: 91, column: 13, scope: !667, inlinedAt: !6062)
!6068 = !DILocation(line: 93, column: 20, scope: !667, inlinedAt: !6062)
!6069 = !DILocation(line: 93, column: 34, scope: !667, inlinedAt: !6062)
!6070 = !DILocation(line: 93, column: 13, scope: !667, inlinedAt: !6062)
!6071 = !DILocation(line: 95, column: 20, scope: !667, inlinedAt: !6062)
!6072 = !DILocation(line: 95, column: 35, scope: !667, inlinedAt: !6062)
!6073 = !DILocation(line: 95, column: 13, scope: !667, inlinedAt: !6062)
!6074 = !DILocation(line: 97, column: 20, scope: !667, inlinedAt: !6062)
!6075 = !DILocation(line: 97, column: 35, scope: !667, inlinedAt: !6062)
!6076 = !DILocation(line: 97, column: 13, scope: !667, inlinedAt: !6062)
!6077 = !DILocation(line: 99, column: 20, scope: !667, inlinedAt: !6062)
!6078 = !DILocation(line: 99, column: 35, scope: !667, inlinedAt: !6062)
!6079 = !DILocation(line: 99, column: 13, scope: !667, inlinedAt: !6062)
!6080 = !DILocation(line: 0, scope: !667, inlinedAt: !6062)
!6081 = !DILocation(line: 102, column: 1, scope: !652, inlinedAt: !6062)
!6082 = !DILocation(line: 2485, column: 13, scope: !5946)
!6083 = !DILocation(line: 2486, column: 13, scope: !5946)
!6084 = !DILocation(line: 2487, column: 50, scope: !5946)
!6085 = !DILocation(line: 2487, column: 32, scope: !5946)
!6086 = !DILocation(line: 2487, column: 13, scope: !5946)
!6087 = !DILocation(line: 2488, column: 13, scope: !5946)
!6088 = !DILocation(line: 2489, column: 13, scope: !5946)
!6089 = distinct !{!6089, !6051, !6090}
!6090 = !DILocation(line: 2490, column: 9, scope: !5941)
!6091 = !DILocation(line: 2491, column: 9, scope: !5941)
!6092 = !DILocation(line: 2492, column: 5, scope: !5942)
!6093 = !DILocation(line: 2492, column: 17, scope: !5950)
!6094 = !DILocation(line: 2492, column: 42, scope: !5950)
!6095 = !DILocation(line: 2492, column: 48, scope: !5950)
!6096 = !DILocation(line: 2492, column: 53, scope: !5950)
!6097 = !DILocation(line: 2492, column: 16, scope: !5942)
!6098 = !DILocation(line: 2494, column: 16, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !5949, file: !1, line: 2494, column: 13)
!6100 = !DILocation(line: 2494, column: 24, scope: !6099)
!6101 = !DILocation(line: 2494, column: 13, scope: !5949)
!6102 = !DILocation(line: 2495, column: 13, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6099, file: !1, line: 2494, column: 33)
!6104 = !DILocation(line: 2496, column: 13, scope: !6103)
!6105 = !DILocation(line: 2499, column: 32, scope: !5949)
!6106 = !DILocation(line: 2499, column: 9, scope: !5949)
!6107 = !DILocation(line: 2500, column: 9, scope: !5949)
!6108 = !DILocation(line: 2501, column: 25, scope: !5949)
!6109 = !DILocation(line: 2500, column: 21, scope: !5949)
!6110 = !DILocation(line: 2501, column: 9, scope: !5949)
!6111 = !DILocation(line: 2502, column: 9, scope: !5949)
!6112 = !DILocation(line: 2503, column: 15, scope: !5949)
!6113 = !DILocation(line: 2503, column: 9, scope: !5949)
!6114 = !DILocation(line: 2504, column: 31, scope: !5952)
!6115 = !DILocation(line: 2504, column: 23, scope: !5952)
!6116 = !DILocation(line: 2505, column: 13, scope: !5952)
!6117 = !DILocation(line: 2506, column: 13, scope: !5952)
!6118 = !DILocation(line: 2507, column: 38, scope: !5952)
!6119 = !DILocation(line: 2507, column: 45, scope: !5952)
!6120 = !DILocation(line: 2507, column: 13, scope: !5952)
!6121 = !DILocation(line: 2508, column: 13, scope: !5952)
!6122 = !DILocation(line: 2509, column: 44, scope: !5952)
!6123 = !DILocation(line: 2509, column: 32, scope: !5952)
!6124 = !DILocation(line: 2509, column: 13, scope: !5952)
!6125 = !DILocation(line: 2510, column: 13, scope: !5952)
!6126 = !DILocation(line: 2511, column: 44, scope: !5952)
!6127 = !DILocation(line: 2511, column: 32, scope: !5952)
!6128 = !DILocation(line: 2511, column: 13, scope: !5952)
!6129 = !DILocation(line: 2512, column: 13, scope: !5952)
!6130 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !6131)
!6131 = distinct !DILocation(line: 2513, column: 13, scope: !5952)
!6132 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !6131)
!6133 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !6131)
!6134 = !DILocation(line: 780, column: 52, scope: !2059, inlinedAt: !6131)
!6135 = !DILocation(line: 780, column: 59, scope: !2059, inlinedAt: !6131)
!6136 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !6131)
!6137 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !6131)
!6138 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !6131)
!6139 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !6131)
!6140 = distinct !{!6140, !6113, !6141}
!6141 = !DILocation(line: 2514, column: 9, scope: !5949)
!6142 = !DILocation(line: 2515, column: 9, scope: !5949)
!6143 = !DILocation(line: 2516, column: 5, scope: !5950)
!6144 = !DILocation(line: 2516, column: 5, scope: !5949)
!6145 = !DILocation(line: 2516, column: 17, scope: !5955)
!6146 = !DILocation(line: 2516, column: 42, scope: !5955)
!6147 = !DILocation(line: 2516, column: 48, scope: !5955)
!6148 = !DILocation(line: 2516, column: 53, scope: !5955)
!6149 = !DILocation(line: 2516, column: 16, scope: !5950)
!6150 = !DILocation(line: 2518, column: 9, scope: !5954)
!6151 = !DILocation(line: 2519, column: 9, scope: !5954)
!6152 = !DILocation(line: 2520, column: 31, scope: !5954)
!6153 = !DILocation(line: 2520, column: 9, scope: !5954)
!6154 = !DILocation(line: 2521, column: 9, scope: !5954)
!6155 = !DILocation(line: 2522, column: 39, scope: !5954)
!6156 = !DILocation(line: 2522, column: 28, scope: !5954)
!6157 = !DILocation(line: 2522, column: 9, scope: !5954)
!6158 = !DILocation(line: 2523, column: 9, scope: !5954)
!6159 = !DILocation(line: 2524, column: 31, scope: !5954)
!6160 = !DILocation(line: 2524, column: 36, scope: !5954)
!6161 = !{!6162, !113, i64 16}
!6162 = !{!"rax", !110, i64 0, !113, i64 8, !113, i64 16}
!6163 = !DILocation(line: 2524, column: 9, scope: !5954)
!6164 = !DILocation(line: 2525, column: 9, scope: !5954)
!6165 = !DILocation(line: 2526, column: 31, scope: !5954)
!6166 = !DILocation(line: 2526, column: 28, scope: !5954)
!6167 = !DILocation(line: 2526, column: 41, scope: !5954)
!6168 = !DILocation(line: 2526, column: 9, scope: !5954)
!6169 = !DILocation(line: 2527, column: 9, scope: !5954)
!6170 = !DILocation(line: 779, column: 31, scope: !2059, inlinedAt: !6171)
!6171 = distinct !DILocation(line: 2528, column: 9, scope: !5954)
!6172 = !DILocation(line: 779, column: 44, scope: !2059, inlinedAt: !6171)
!6173 = !DILocation(line: 780, column: 29, scope: !2059, inlinedAt: !6171)
!6174 = !DILocation(line: 780, column: 52, scope: !2059, inlinedAt: !6171)
!6175 = !DILocation(line: 780, column: 59, scope: !2059, inlinedAt: !6171)
!6176 = !DILocation(line: 780, column: 19, scope: !2059, inlinedAt: !6171)
!6177 = !DILocation(line: 780, column: 9, scope: !2059, inlinedAt: !6171)
!6178 = !DILocation(line: 781, column: 5, scope: !2059, inlinedAt: !6171)
!6179 = !DILocation(line: 782, column: 1, scope: !2059, inlinedAt: !6171)
!6180 = !DILocation(line: 2533, column: 9, scope: !5954)
!6181 = !DILocation(line: 2534, column: 18, scope: !5954)
!6182 = !DILocation(line: 2535, column: 16, scope: !5954)
!6183 = !DILocation(line: 2536, column: 9, scope: !5954)
!6184 = !DILocation(line: 2533, column: 18, scope: !5954)
!6185 = !DILocation(line: 2533, column: 25, scope: !5954)
!6186 = !DILocation(line: 2537, column: 17, scope: !5954)
!6187 = !DILocation(line: 2532, column: 13, scope: !5954)
!6188 = !DILocation(line: 2539, column: 14, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !5954, file: !1, line: 2539, column: 13)
!6190 = !DILocation(line: 2539, column: 13, scope: !5954)
!6191 = !DILocation(line: 2539, column: 39, scope: !6189)
!6192 = !DILocation(line: 2539, column: 21, scope: !6189)
!6193 = !DILocation(line: 2540, column: 9, scope: !5954)
!6194 = !DILocation(line: 2541, column: 17, scope: !5954)
!6195 = !DILocation(line: 2543, column: 14, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !5954, file: !1, line: 2543, column: 13)
!6197 = !DILocation(line: 2543, column: 13, scope: !5954)
!6198 = !DILocation(line: 2543, column: 39, scope: !6196)
!6199 = !DILocation(line: 2543, column: 21, scope: !6196)
!6200 = !DILocation(line: 2544, column: 5, scope: !5955)
!6201 = !DILocation(line: 2544, column: 5, scope: !5954)
!6202 = !DILocation(line: 2545, column: 9, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !5955, file: !1, line: 2544, column: 12)
!6204 = !DILocation(line: 2547, column: 1, scope: !5931)
