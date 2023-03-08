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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %6, label %8, label %7, !dbg !136

; <label>:7:                                      ; preds = %1
  tail call void @raxFreeWithCallback(%struct.rax* nonnull %5, void (i8*)* bitcast (void (%struct.streamCG*)* @streamFreeCG to void (i8*)*)) #6, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  %7 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !181
  br i1 %6, label %8, label %9, !dbg !180

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %13, label %14, label %15, !dbg !263

; <label>:14:                                     ; preds = %9
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !263
  call void @_exit(i32 1) #8, !dbg !263
  unreachable

; <label>:15:                                     ; preds = %9
  %16 = load i64, i64* %3, align 8, !dbg !264, !tbaa !265
  store i64 %16, i64* %2, align 8, !dbg !267, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !268
  br label %17

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i64 [ %8, %7 ], [ %16, %15 ], !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %5 = icmp eq i8* %4, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %15 = icmp eq i8* %14, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %7, label %8, label %9, !dbg !349

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br label %22, !dbg !350

; <label>:9:                                      ; preds = %2
  %10 = icmp ult i64 %4, %6, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %10, label %11, label %12, !dbg !353

; <label>:11:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br label %22, !dbg !354

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !355
  %14 = load i64, i64* %13, align 8, !dbg !355, !tbaa !188
  %15 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !357
  %16 = load i64, i64* %15, align 8, !dbg !357, !tbaa !188
  %17 = icmp ugt i64 %14, %16, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %17, label %18, label %19, !dbg !359

; <label>:18:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br label %22, !dbg !360

; <label>:19:                                     ; preds = %12
  %20 = icmp ult i64 %14, %16, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %21 = sext i1 %20 to i32, !dbg !365
  br label %22, !dbg !365

; <label>:22:                                     ; preds = %19, %18, %11, %8
  %23 = phi i32 [ 1, %8 ], [ -1, %11 ], [ 1, %18 ], [ %21, %19 ], !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  ret i32 %23, !dbg !366
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamAppendItem(%struct.stream* nocapture, %struct.redisObject** nocapture readonly, i64, %struct.streamID*, %struct.streamID* readonly) local_unnamed_addr #0 !dbg !367 {
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
  %19 = icmp ne %struct.streamID* %4, null, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  br i1 %19, label %20, label %37, !dbg !494

; <label>:20:                                     ; preds = %5
  %21 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !498
  %22 = load i64, i64* %21, align 8, !dbg !498, !tbaa !178
  %23 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !499
  %24 = load i64, i64* %23, align 8, !dbg !499, !tbaa !178
  %25 = icmp ugt i64 %22, %24, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %25, label %26, label %27, !dbg !501

; <label>:26:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br label %35, !dbg !502

; <label>:27:                                     ; preds = %20
  %28 = icmp ult i64 %22, %24, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %28, label %36, label %29, !dbg !504

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !505
  %31 = load i64, i64* %30, align 8, !dbg !505, !tbaa !188
  %32 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !506
  %33 = load i64, i64* %32, align 8, !dbg !506, !tbaa !188
  %34 = icmp ugt i64 %31, %33, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br i1 %34, label %35, label %36, !dbg !508

; <label>:35:                                     ; preds = %29, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %37

; <label>:36:                                     ; preds = %29, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br label %412, !dbg !512

; <label>:37:                                     ; preds = %35, %5
  %38 = bitcast %struct.raxIterator* %14 to i8*, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %38) #7, !dbg !513
  %39 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !514
  %40 = load %struct.rax*, %struct.rax** %39, align 8, !dbg !514, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %14, %struct.rax* %40) #6, !dbg !516
  %41 = call i32 @raxSeek(%struct.raxIterator* nonnull %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !517
  %42 = call i32 @raxNext(%struct.raxIterator* nonnull %14) #6, !dbg !520
  %43 = icmp eq i32 %42, 0, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %43, label %49, label %44, !dbg !522

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !523
  %46 = load i8*, i8** %45, align 8, !dbg !523, !tbaa !525
  %47 = call i32 @lpBytes(i8* %46) #6, !dbg !529
  %48 = zext i32 %47 to i64, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %49, !dbg !530

; <label>:49:                                     ; preds = %37, %44
  %50 = phi i8* [ %46, %44 ], [ null, %37 ], !dbg !531
  %51 = phi i64 [ %48, %44 ], [ 0, %37 ], !dbg !531
  call void @raxStop(%struct.raxIterator* nonnull %14) #6, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %19, label %52, label %57, !dbg !533

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !534
  %54 = load i64, i64* %53, align 8, !dbg !534
  %55 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !534
  %56 = load i64, i64* %55, align 8, !dbg !534
  br label %69, !dbg !536

; <label>:57:                                     ; preds = %49
  %58 = call i64 @mstime() #6, !dbg !541
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !543
  %60 = load i64, i64* %59, align 8, !dbg !543, !tbaa !178
  %61 = icmp ugt i64 %58, %60, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %61, label %66, label %62, !dbg !545

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !546
  %64 = load i64, i64* %63, align 8, !dbg !546, !tbaa !188
  %65 = add i64 %64, 1, !dbg !547
  br label %66

; <label>:66:                                     ; preds = %57, %62
  %67 = phi i64 [ %60, %62 ], [ %58, %57 ], !dbg !548
  %68 = phi i64 [ %65, %62 ], [ 0, %57 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br label %69

; <label>:69:                                     ; preds = %66, %52
  %70 = phi i64 [ %56, %52 ], [ %68, %66 ], !dbg !548
  %71 = phi i64 [ %54, %52 ], [ %67, %66 ], !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %72 = bitcast [2 x i64]* %15 to i8*, !dbg !550
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %72) #7, !dbg !550
  %73 = icmp eq i8* %50, null, !dbg !552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %73, label %108, label %74, !dbg !553

; <label>:74:                                     ; preds = %69
  %75 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !554, !tbaa !555
  %76 = icmp eq i64 %75, 0, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %76, label %80, label %77, !dbg !562

; <label>:77:                                     ; preds = %74
  %78 = icmp ugt i64 %51, %75, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %78, label %79, label %80, !dbg !564

; <label>:79:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %108, !dbg !565

; <label>:80:                                     ; preds = %74, %77
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !567, !tbaa !568
  %82 = icmp eq i64 %81, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %82, label %83, label %84, !dbg !570

; <label>:83:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %105, !dbg !572

; <label>:84:                                     ; preds = %80
  %85 = call i8* @lpFirst(i8* nonnull %50) #6, !dbg !573
  %86 = bitcast i64* %11 to i8*, !dbg !576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #7, !dbg !576
  %87 = call i8* @lpGet(i8* %85, i64* nonnull %11, i8* null) #6, !dbg !578
  %88 = icmp eq i8* %87, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br i1 %88, label %89, label %91, !dbg !581

; <label>:89:                                     ; preds = %84
  %90 = load i64, i64* %11, align 8, !dbg !582, !tbaa !117
  br label %99, !dbg !583

; <label>:91:                                     ; preds = %84
  %92 = bitcast i64* %12 to i8*, !dbg !584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #7, !dbg !584
  %93 = load i64, i64* %11, align 8, !dbg !585, !tbaa !117
  %94 = call i32 @string2ll(i8* nonnull %87, i64 %93, i64* nonnull %12) #6, !dbg !587
  %95 = icmp eq i32 %94, 0, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br i1 %95, label %96, label %97, !dbg !589

; <label>:96:                                     ; preds = %91
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !589
  call void @_exit(i32 1) #8, !dbg !589
  unreachable

; <label>:97:                                     ; preds = %91
  %98 = load i64, i64* %12, align 8, !dbg !590, !tbaa !265
  store i64 %98, i64* %11, align 8, !dbg !591, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #7, !dbg !592
  br label %99

; <label>:99:                                     ; preds = %89, %97
  %100 = phi i64 [ %90, %89 ], [ %98, %97 ], !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #7, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 248), align 8, !dbg !595, !tbaa !568
  %102 = icmp sgt i64 %100, %101, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %102, label %108, label %103, !dbg !598

; <label>:103:                                    ; preds = %99
  %104 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 247), align 8, !dbg !601, !tbaa !555
  br label %105, !dbg !598

; <label>:105:                                    ; preds = %103, %83
  %106 = phi i64 [ %104, %103 ], [ %75, %83 ], !dbg !601
  %107 = icmp ugt i64 %51, %106, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %107, label %109, label %169, !dbg !603

; <label>:108:                                    ; preds = %69, %79, %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %109, !dbg !604

; <label>:109:                                    ; preds = %108, %105
  %110 = bitcast [2 x i64]* %10 to i8*, !dbg !604
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %110) #7, !dbg !604
  %111 = call i64 @intrev64(i64 %71) #6, !dbg !607
  %112 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !608
  store i64 %111, i64* %112, align 16, !dbg !609, !tbaa !117
  %113 = call i64 @intrev64(i64 %70) #6, !dbg !610
  %114 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !611
  store i64 %113, i64* %114, align 8, !dbg !612, !tbaa !117
  %115 = call i8* @memcpy(i8* nonnull %72, i8* nonnull %110, i64 16) #6, !dbg !613
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %110) #7, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %116 = call i8* @lpNew() #6, !dbg !615
  %117 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !618
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %117) #7, !dbg !618
  %118 = call i32 @ll2string(i8* nonnull %117, i64 21, i64 1) #6, !dbg !619
  %119 = call i8* @lpAppend(i8* %116, i8* nonnull %117, i32 %118) #6, !dbg !621
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %117) #7, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %117) #7, !dbg !626
  %120 = call i32 @ll2string(i8* nonnull %117, i64 21, i64 0) #6, !dbg !627
  %121 = call i8* @lpAppend(i8* %119, i8* nonnull %117, i32 %120) #6, !dbg !629
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %117) #7, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %117) #7, !dbg !634
  %122 = call i32 @ll2string(i8* nonnull %117, i64 21, i64 %2) #6, !dbg !635
  %123 = call i8* @lpAppend(i8* %121, i8* nonnull %117, i32 %122) #6, !dbg !637
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %117) #7, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %124 = icmp sgt i64 %2, 0, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br i1 %124, label %131, label %125, !dbg !643

; <label>:125:                                    ; preds = %163, %109
  %126 = phi i8* [ %123, %109 ], [ %166, %163 ], !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %117) #7, !dbg !647
  %127 = call i32 @ll2string(i8* nonnull %117, i64 21, i64 0) #6, !dbg !648
  %128 = call i8* @lpAppend(i8* %126, i8* nonnull %117, i32 %127) #6, !dbg !650
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %117) #7, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  %129 = load %struct.rax*, %struct.rax** %39, align 8, !dbg !653, !tbaa !108
  %130 = call i32 @raxInsert(%struct.rax* %129, i8* nonnull %72, i64 16, i8* %128, i8** null) #6, !dbg !654
  br label %288, !dbg !655

; <label>:131:                                    ; preds = %109, %163
  %132 = phi i8* [ %166, %163 ], [ %123, %109 ]
  %133 = phi i64 [ %167, %163 ], [ 0, %109 ]
  %134 = shl nuw nsw i64 %133, 1, !dbg !656
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %134, !dbg !657
  %136 = load %struct.redisObject*, %struct.redisObject** %135, align 8, !dbg !657, !tbaa !234
  %137 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %136, i64 0, i32 2, !dbg !658
  %138 = load i8*, i8** %137, align 8, !dbg !658, !tbaa !659
  %139 = getelementptr inbounds i8, i8* %138, i64 -1, !dbg !673
  %140 = load i8, i8* %139, align 1, !dbg !673, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %141 = trunc i8 %140 to i3, !dbg !676
  switch i3 %141, label %163 [
    i3 0, label %142
    i3 1, label %145
    i3 2, label %149
    i3 3, label %154
    i3 -4, label %159
  ], !dbg !676

; <label>:142:                                    ; preds = %131
  %143 = lshr i8 %140, 3, !dbg !677
  %144 = zext i8 %143 to i64, !dbg !677
  br label %163, !dbg !679

; <label>:145:                                    ; preds = %131
  %146 = getelementptr inbounds i8, i8* %138, i64 -3, !dbg !680
  %147 = load i8, i8* %146, align 1, !dbg !681, !tbaa !674
  %148 = zext i8 %147 to i64, !dbg !680
  br label %163, !dbg !682

; <label>:149:                                    ; preds = %131
  %150 = getelementptr inbounds i8, i8* %138, i64 -5, !dbg !683
  %151 = bitcast i8* %150 to i16*, !dbg !684
  %152 = load i16, i16* %151, align 1, !dbg !684, !tbaa !685
  %153 = zext i16 %152 to i64, !dbg !683
  br label %163, !dbg !687

; <label>:154:                                    ; preds = %131
  %155 = getelementptr inbounds i8, i8* %138, i64 -9, !dbg !688
  %156 = bitcast i8* %155 to i32*, !dbg !689
  %157 = load i32, i32* %156, align 1, !dbg !689, !tbaa !690
  %158 = zext i32 %157 to i64, !dbg !688
  br label %163, !dbg !691

; <label>:159:                                    ; preds = %131
  %160 = getelementptr inbounds i8, i8* %138, i64 -17, !dbg !692
  %161 = bitcast i8* %160 to i64*, !dbg !693
  %162 = load i64, i64* %161, align 1, !dbg !693, !tbaa !117
  br label %163, !dbg !694

; <label>:163:                                    ; preds = %131, %142, %145, %149, %154, %159
  %164 = phi i64 [ %162, %159 ], [ %158, %154 ], [ %153, %149 ], [ %148, %145 ], [ %144, %142 ], [ 0, %131 ], !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  %165 = trunc i64 %164 to i32, !dbg !697
  %166 = call i8* @lpAppend(i8* %132, i8* %138, i32 %165) #6, !dbg !698
  %167 = add nuw nsw i64 %133, 1, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %168 = icmp eq i64 %167, %2, !dbg !642
  br i1 %168, label %125, label %131, !dbg !643, !llvm.loop !701

; <label>:169:                                    ; preds = %105
  %170 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 4, !dbg !703
  %171 = load i64, i64* %170, align 8, !dbg !703, !tbaa !704
  %172 = icmp eq i64 %171, 16, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %172, label %174, label %173, !dbg !703

; <label>:173:                                    ; preds = %169
  call void @_serverAssert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 273) #6, !dbg !703
  call void @_exit(i32 1) #8, !dbg !703
  unreachable

; <label>:174:                                    ; preds = %169
  %175 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 2, !dbg !705
  %176 = load i8*, i8** %175, align 8, !dbg !705, !tbaa !706
  %177 = call i8* @memcpy(i8* nonnull %72, i8* %176, i64 16) #6, !dbg !707
  %178 = bitcast [2 x i64]* %10 to i8*, !dbg !711
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %178) #7, !dbg !711
  %179 = call i8* @memcpy(i8* nonnull %178, i8* nonnull %72, i64 16) #6, !dbg !712
  %180 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0, !dbg !713
  %181 = load i64, i64* %180, align 16, !dbg !713, !tbaa !117
  %182 = call i64 @intrev64(i64 %181) #6, !dbg !713
  %183 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1, !dbg !714
  %184 = load i64, i64* %183, align 8, !dbg !714, !tbaa !117
  %185 = call i64 @intrev64(i64 %184) #6, !dbg !714
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %178) #7, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %186 = bitcast i8** %16 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %186) #7, !dbg !716
  %187 = call i8* @lpFirst(i8* nonnull %50) #6, !dbg !717
  store i8* %187, i8** %16, align 8, !dbg !718, !tbaa !234
  %188 = bitcast i64* %8 to i8*, !dbg !721
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %188) #7, !dbg !721
  %189 = call i8* @lpGet(i8* %187, i64* nonnull %8, i8* null) #6, !dbg !723
  %190 = icmp eq i8* %189, null, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %190, label %191, label %193, !dbg !726

; <label>:191:                                    ; preds = %174
  %192 = load i64, i64* %8, align 8, !dbg !727, !tbaa !117
  br label %201, !dbg !728

; <label>:193:                                    ; preds = %174
  %194 = bitcast i64* %9 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %194) #7, !dbg !729
  %195 = load i64, i64* %8, align 8, !dbg !730, !tbaa !117
  %196 = call i32 @string2ll(i8* nonnull %189, i64 %195, i64* nonnull %9) #6, !dbg !732
  %197 = icmp eq i32 %196, 0, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br i1 %197, label %198, label %199, !dbg !734

; <label>:198:                                    ; preds = %193
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !734
  call void @_exit(i32 1) #8, !dbg !734
  unreachable

; <label>:199:                                    ; preds = %193
  %200 = load i64, i64* %9, align 8, !dbg !735, !tbaa !265
  store i64 %200, i64* %8, align 8, !dbg !736, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %194) #7, !dbg !737
  br label %201

; <label>:201:                                    ; preds = %191, %199
  %202 = phi i64 [ %192, %191 ], [ %200, %199 ], !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %188) #7, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %203 = add nsw i64 %202, 1, !dbg !740
  %204 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0, !dbg !744
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %204) #7, !dbg !744
  %205 = call i32 @ll2string(i8* nonnull %204, i64 21, i64 %203) #6, !dbg !745
  %206 = load i8*, i8** %16, align 8, !dbg !747, !tbaa !234
  %207 = call i8* @lpInsert(i8* nonnull %50, i8* nonnull %204, i32 %205, i8* %206, i32 2, i8** nonnull %16) #6, !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %204) #7, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  %208 = load i8*, i8** %16, align 8, !dbg !751, !tbaa !234
  %209 = call i8* @lpNext(i8* %207, i8* %208) #6, !dbg !752
  store i8* %209, i8** %16, align 8, !dbg !753, !tbaa !234
  %210 = call i8* @lpNext(i8* %207, i8* %209) #6, !dbg !754
  store i8* %210, i8** %16, align 8, !dbg !755, !tbaa !234
  %211 = bitcast i64* %6 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %211) #7, !dbg !758
  %212 = call i8* @lpGet(i8* %210, i64* nonnull %6, i8* null) #6, !dbg !760
  %213 = icmp eq i8* %212, null, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %213, label %214, label %216, !dbg !763

; <label>:214:                                    ; preds = %201
  %215 = load i64, i64* %6, align 8, !dbg !764, !tbaa !117
  br label %224, !dbg !765

; <label>:216:                                    ; preds = %201
  %217 = bitcast i64* %7 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %217) #7, !dbg !766
  %218 = load i64, i64* %6, align 8, !dbg !767, !tbaa !117
  %219 = call i32 @string2ll(i8* nonnull %212, i64 %218, i64* nonnull %7) #6, !dbg !769
  %220 = icmp eq i32 %219, 0, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %220, label %221, label %222, !dbg !771

; <label>:221:                                    ; preds = %216
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !771
  call void @_exit(i32 1) #8, !dbg !771
  unreachable

; <label>:222:                                    ; preds = %216
  %223 = load i64, i64* %7, align 8, !dbg !772, !tbaa !265
  store i64 %223, i64* %6, align 8, !dbg !773, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %217) #7, !dbg !774
  br label %224

; <label>:224:                                    ; preds = %214, %222
  %225 = phi i64 [ %215, %214 ], [ %223, %222 ], !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %211) #7, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %226 = load i8*, i8** %16, align 8, !dbg !777, !tbaa !234
  %227 = call i8* @lpNext(i8* %207, i8* %226) #6, !dbg !778
  store i8* %227, i8** %16, align 8, !dbg !779, !tbaa !234
  %228 = icmp eq i64 %225, %2, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br i1 %228, label %229, label %286, !dbg !781

; <label>:229:                                    ; preds = %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  %230 = icmp sgt i64 %2, 0, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %230, label %231, label %280, !dbg !785

; <label>:231:                                    ; preds = %229
  %232 = bitcast i64* %17 to i8*
  %233 = getelementptr inbounds [21 x i8], [21 x i8]* %18, i64 0, i64 0
  br label %234, !dbg !785

; <label>:234:                                    ; preds = %231, %275
  %235 = phi i8* [ %227, %231 ], [ %277, %275 ], !dbg !786
  %236 = phi i64 [ 0, %231 ], [ %278, %275 ]
  %237 = shl nuw nsw i64 %236, 1, !dbg !787
  %238 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %237, !dbg !788
  %239 = load %struct.redisObject*, %struct.redisObject** %238, align 8, !dbg !788, !tbaa !234
  %240 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %239, i64 0, i32 2, !dbg !789
  %241 = load i8*, i8** %240, align 8, !dbg !789, !tbaa !659
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %232) #7, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %233) #7, !dbg !792
  %242 = call i8* @lpGet(i8* %235, i64* nonnull %17, i8* nonnull %233) #6, !dbg !795
  %243 = getelementptr inbounds i8, i8* %241, i64 -1, !dbg !800
  %244 = load i8, i8* %243, align 1, !dbg !800, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  %245 = trunc i8 %244 to i3, !dbg !802
  switch i3 %245, label %267 [
    i3 0, label %246
    i3 1, label %249
    i3 2, label %253
    i3 3, label %258
    i3 -4, label %263
  ], !dbg !802

; <label>:246:                                    ; preds = %234
  %247 = lshr i8 %244, 3, !dbg !803
  %248 = zext i8 %247 to i64, !dbg !803
  br label %267, !dbg !804

; <label>:249:                                    ; preds = %234
  %250 = getelementptr inbounds i8, i8* %241, i64 -3, !dbg !805
  %251 = load i8, i8* %250, align 1, !dbg !806, !tbaa !674
  %252 = zext i8 %251 to i64, !dbg !805
  br label %267, !dbg !807

; <label>:253:                                    ; preds = %234
  %254 = getelementptr inbounds i8, i8* %241, i64 -5, !dbg !808
  %255 = bitcast i8* %254 to i16*, !dbg !809
  %256 = load i16, i16* %255, align 1, !dbg !809, !tbaa !685
  %257 = zext i16 %256 to i64, !dbg !808
  br label %267, !dbg !810

; <label>:258:                                    ; preds = %234
  %259 = getelementptr inbounds i8, i8* %241, i64 -9, !dbg !811
  %260 = bitcast i8* %259 to i32*, !dbg !812
  %261 = load i32, i32* %260, align 1, !dbg !812, !tbaa !690
  %262 = zext i32 %261 to i64, !dbg !811
  br label %267, !dbg !813

; <label>:263:                                    ; preds = %234
  %264 = getelementptr inbounds i8, i8* %241, i64 -17, !dbg !814
  %265 = bitcast i8* %264 to i64*, !dbg !815
  %266 = load i64, i64* %265, align 1, !dbg !815, !tbaa !117
  br label %267, !dbg !816

; <label>:267:                                    ; preds = %234, %246, %249, %253, %258, %263
  %268 = phi i64 [ %266, %263 ], [ %262, %258 ], [ %257, %253 ], [ %252, %249 ], [ %248, %246 ], [ 0, %234 ], !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  %269 = load i64, i64* %17, align 8, !dbg !820, !tbaa !117
  %270 = icmp eq i64 %268, %269, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %270, label %271, label %274, !dbg !822

; <label>:271:                                    ; preds = %267
  %272 = call i32 @memcmp(i8* %242, i8* %241, i64 %268) #6, !dbg !823
  %273 = icmp eq i32 %272, 0, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %273, label %275, label %274, !dbg !825

; <label>:274:                                    ; preds = %271, %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %233) #7, !dbg !827
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %232) #7, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %280

; <label>:275:                                    ; preds = %271
  %276 = load i8*, i8** %16, align 8, !dbg !828, !tbaa !234
  %277 = call i8* @lpNext(i8* %207, i8* %276) #6, !dbg !829
  store i8* %277, i8** %16, align 8, !dbg !830, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %233) #7, !dbg !827
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %232) #7, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %278 = add nuw nsw i64 %236, 1, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  %279 = icmp slt i64 %278, %2, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %279, label %234, label %280, !dbg !785, !llvm.loop !833

; <label>:280:                                    ; preds = %275, %229, %274
  %281 = phi i64 [ %236, %274 ], [ 0, %229 ], [ %278, %275 ]
  %282 = icmp eq i64 %281, %2, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br i1 %282, label %283, label %284, !dbg !837

; <label>:283:                                    ; preds = %280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br label %284, !dbg !838

; <label>:284:                                    ; preds = %283, %280
  %285 = phi i32 [ 2, %283 ], [ 0, %280 ], !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br label %286, !dbg !839

; <label>:286:                                    ; preds = %284, %224
  %287 = phi i32 [ %285, %284 ], [ 0, %224 ], !dbg !531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %186) #7, !dbg !840
  br label %288

; <label>:288:                                    ; preds = %286, %125
  %289 = phi i8* [ %204, %286 ], [ %117, %125 ], !dbg !841
  %290 = phi i64 [ %185, %286 ], [ %70, %125 ], !dbg !842
  %291 = phi i64 [ %182, %286 ], [ %71, %125 ], !dbg !842
  %292 = phi i32 [ %287, %286 ], [ 2, %125 ], !dbg !843
  %293 = phi i8* [ %207, %286 ], [ %128, %125 ], !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %294 = sext i32 %292 to i64, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %289) #7, !dbg !841
  %295 = call i32 @ll2string(i8* nonnull %289, i64 21, i64 %294) #6, !dbg !847
  %296 = call i8* @lpAppend(i8* %293, i8* nonnull %289, i32 %295) #6, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %289) #7, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  %297 = sub i64 %71, %291, !dbg !852
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %289) #7, !dbg !855
  %298 = call i32 @ll2string(i8* nonnull %289, i64 21, i64 %297) #6, !dbg !856
  %299 = call i8* @lpAppend(i8* %296, i8* nonnull %289, i32 %298) #6, !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %289) #7, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %300 = sub i64 %70, %290, !dbg !861
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %289) #7, !dbg !864
  %301 = call i32 @ll2string(i8* nonnull %289, i64 21, i64 %300) #6, !dbg !865
  %302 = call i8* @lpAppend(i8* %299, i8* nonnull %289, i32 %301) #6, !dbg !867
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %289) #7, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  %303 = and i32 %292, 2, !dbg !870
  %304 = icmp ne i32 %303, 0, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br i1 %304, label %308, label %305, !dbg !871

; <label>:305:                                    ; preds = %288
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %289) #7, !dbg !874
  %306 = call i32 @ll2string(i8* nonnull %289, i64 21, i64 %2) #6, !dbg !875
  %307 = call i8* @lpAppend(i8* %302, i8* nonnull %289, i32 %306) #6, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %289) #7, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br label %308, !dbg !880

; <label>:308:                                    ; preds = %305, %288
  %309 = phi i8* [ %302, %288 ], [ %307, %305 ], !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  %310 = icmp sgt i64 %2, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br i1 %310, label %314, label %311, !dbg !885

; <label>:311:                                    ; preds = %382, %308
  %312 = phi i8* [ %309, %308 ], [ %385, %382 ], !dbg !886
  %313 = add nsw i64 %2, 3, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  br i1 %304, label %391, label %388, !dbg !889

; <label>:314:                                    ; preds = %308, %382
  %315 = phi i64 [ %386, %382 ], [ 0, %308 ]
  %316 = phi i8* [ %385, %382 ], [ %309, %308 ]
  %317 = shl nuw nsw i64 %315, 1, !dbg !890
  %318 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %317, !dbg !891
  %319 = load %struct.redisObject*, %struct.redisObject** %318, align 8, !dbg !891, !tbaa !234
  %320 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %319, i64 0, i32 2, !dbg !892
  %321 = load i8*, i8** %320, align 8, !dbg !892, !tbaa !659
  %322 = or i64 %317, 1, !dbg !894
  %323 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 %322, !dbg !895
  %324 = load %struct.redisObject*, %struct.redisObject** %323, align 8, !dbg !895, !tbaa !234
  %325 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %324, i64 0, i32 2, !dbg !896
  %326 = load i8*, i8** %325, align 8, !dbg !896, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  br i1 %304, label %356, label %327, !dbg !898

; <label>:327:                                    ; preds = %314
  %328 = getelementptr inbounds i8, i8* %321, i64 -1, !dbg !902
  %329 = load i8, i8* %328, align 1, !dbg !902, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  %330 = trunc i8 %329 to i3, !dbg !904
  switch i3 %330, label %352 [
    i3 0, label %331
    i3 1, label %334
    i3 2, label %338
    i3 3, label %343
    i3 -4, label %348
  ], !dbg !904

; <label>:331:                                    ; preds = %327
  %332 = lshr i8 %329, 3, !dbg !905
  %333 = zext i8 %332 to i64, !dbg !905
  br label %352, !dbg !906

; <label>:334:                                    ; preds = %327
  %335 = getelementptr inbounds i8, i8* %321, i64 -3, !dbg !907
  %336 = load i8, i8* %335, align 1, !dbg !908, !tbaa !674
  %337 = zext i8 %336 to i64, !dbg !907
  br label %352, !dbg !909

; <label>:338:                                    ; preds = %327
  %339 = getelementptr inbounds i8, i8* %321, i64 -5, !dbg !910
  %340 = bitcast i8* %339 to i16*, !dbg !911
  %341 = load i16, i16* %340, align 1, !dbg !911, !tbaa !685
  %342 = zext i16 %341 to i64, !dbg !910
  br label %352, !dbg !912

; <label>:343:                                    ; preds = %327
  %344 = getelementptr inbounds i8, i8* %321, i64 -9, !dbg !913
  %345 = bitcast i8* %344 to i32*, !dbg !914
  %346 = load i32, i32* %345, align 1, !dbg !914, !tbaa !690
  %347 = zext i32 %346 to i64, !dbg !913
  br label %352, !dbg !915

; <label>:348:                                    ; preds = %327
  %349 = getelementptr inbounds i8, i8* %321, i64 -17, !dbg !916
  %350 = bitcast i8* %349 to i64*, !dbg !917
  %351 = load i64, i64* %350, align 1, !dbg !917, !tbaa !117
  br label %352, !dbg !918

; <label>:352:                                    ; preds = %327, %331, %334, %338, %343, %348
  %353 = phi i64 [ %351, %348 ], [ %347, %343 ], [ %342, %338 ], [ %337, %334 ], [ %333, %331 ], [ 0, %327 ], !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %354 = trunc i64 %353 to i32, !dbg !922
  %355 = call i8* @lpAppend(i8* %316, i8* nonnull %321, i32 %354) #6, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br label %356, !dbg !924

; <label>:356:                                    ; preds = %352, %314
  %357 = phi i8* [ %316, %314 ], [ %355, %352 ], !dbg !920
  %358 = getelementptr inbounds i8, i8* %326, i64 -1, !dbg !927
  %359 = load i8, i8* %358, align 1, !dbg !927, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  %360 = trunc i8 %359 to i3, !dbg !929
  switch i3 %360, label %382 [
    i3 0, label %361
    i3 1, label %364
    i3 2, label %368
    i3 3, label %373
    i3 -4, label %378
  ], !dbg !929

; <label>:361:                                    ; preds = %356
  %362 = lshr i8 %359, 3, !dbg !930
  %363 = zext i8 %362 to i64, !dbg !930
  br label %382, !dbg !931

; <label>:364:                                    ; preds = %356
  %365 = getelementptr inbounds i8, i8* %326, i64 -3, !dbg !932
  %366 = load i8, i8* %365, align 1, !dbg !933, !tbaa !674
  %367 = zext i8 %366 to i64, !dbg !932
  br label %382, !dbg !934

; <label>:368:                                    ; preds = %356
  %369 = getelementptr inbounds i8, i8* %326, i64 -5, !dbg !935
  %370 = bitcast i8* %369 to i16*, !dbg !936
  %371 = load i16, i16* %370, align 1, !dbg !936, !tbaa !685
  %372 = zext i16 %371 to i64, !dbg !935
  br label %382, !dbg !937

; <label>:373:                                    ; preds = %356
  %374 = getelementptr inbounds i8, i8* %326, i64 -9, !dbg !938
  %375 = bitcast i8* %374 to i32*, !dbg !939
  %376 = load i32, i32* %375, align 1, !dbg !939, !tbaa !690
  %377 = zext i32 %376 to i64, !dbg !938
  br label %382, !dbg !940

; <label>:378:                                    ; preds = %356
  %379 = getelementptr inbounds i8, i8* %326, i64 -17, !dbg !941
  %380 = bitcast i8* %379 to i64*, !dbg !942
  %381 = load i64, i64* %380, align 1, !dbg !942, !tbaa !117
  br label %382, !dbg !943

; <label>:382:                                    ; preds = %356, %361, %364, %368, %373, %378
  %383 = phi i64 [ %381, %378 ], [ %377, %373 ], [ %372, %368 ], [ %367, %364 ], [ %363, %361 ], [ 0, %356 ], !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  %384 = trunc i64 %383 to i32, !dbg !946
  %385 = call i8* @lpAppend(i8* %357, i8* nonnull %326, i32 %384) #6, !dbg !947
  %386 = add nuw nsw i64 %315, 1, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  %387 = icmp eq i64 %386, %2, !dbg !884
  br i1 %387, label %311, label %314, !dbg !885, !llvm.loop !950

; <label>:388:                                    ; preds = %311
  %389 = add nsw i64 %2, 1, !dbg !952
  %390 = add nsw i64 %389, %313, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br label %391, !dbg !956

; <label>:391:                                    ; preds = %388, %311
  %392 = phi i64 [ %313, %311 ], [ %390, %388 ], !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %289) #7, !dbg !960
  %393 = call i32 @ll2string(i8* nonnull %289, i64 21, i64 %392) #6, !dbg !961
  %394 = call i8* @lpAppend(i8* %312, i8* nonnull %289, i32 %393) #6, !dbg !963
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %289) #7, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  %395 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i64 0, i32 3, !dbg !966
  %396 = load i8*, i8** %395, align 8, !dbg !966, !tbaa !525
  %397 = icmp eq i8* %396, %394, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %397, label %401, label %398, !dbg !969

; <label>:398:                                    ; preds = %391
  %399 = load %struct.rax*, %struct.rax** %39, align 8, !dbg !970, !tbaa !108
  %400 = call i32 @raxInsert(%struct.rax* %399, i8* nonnull %72, i64 16, i8* %394, i8** null) #6, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %401, !dbg !971

; <label>:401:                                    ; preds = %391, %398
  %402 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !972
  %403 = load i64, i64* %402, align 8, !dbg !973, !tbaa !974
  %404 = add i64 %403, 1, !dbg !973
  store i64 %404, i64* %402, align 8, !dbg !973, !tbaa !974
  %405 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 0, !dbg !975
  store i64 %71, i64* %405, align 8, !dbg !975
  %406 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 2, i32 1, !dbg !975
  store i64 %70, i64* %406, align 8, !dbg !975
  %407 = icmp eq %struct.streamID* %3, null, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br i1 %407, label %411, label %408, !dbg !978

; <label>:408:                                    ; preds = %401
  %409 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !979
  store i64 %71, i64* %409, align 8, !dbg !979
  %410 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !979
  store i64 %70, i64* %410, align 8, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br label %411, !dbg !980

; <label>:411:                                    ; preds = %401, %408
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %72) #7, !dbg !981
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %38) #7, !dbg !981
  br label %412

; <label>:412:                                    ; preds = %411, %36
  %413 = phi i32 [ -1, %36 ], [ 0, %411 ], !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  ret i32 %413, !dbg !981
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
define dso_local i64 @streamTrimByLength(%struct.stream* nocapture, i64, i32) local_unnamed_addr #0 !dbg !982 {
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
  %17 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 1, !dbg !1014
  %18 = load i64, i64* %17, align 8, !dbg !1014, !tbaa !974
  %19 = icmp ugt i64 %18, %1, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  br i1 %19, label %20, label %220, !dbg !1017

; <label>:20:                                     ; preds = %3
  %21 = bitcast %struct.raxIterator* %15 to i8*, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %21) #7, !dbg !1018
  %22 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 0, !dbg !1019
  %23 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1019, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %15, %struct.rax* %23) #6, !dbg !1021
  %24 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  %25 = load i64, i64* %17, align 8, !dbg !1025, !tbaa !974
  %26 = icmp ugt i64 %25, %1, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %26, label %27, label %218, !dbg !1027

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 3
  %29 = bitcast i8** %16 to i8*
  %30 = bitcast i64* %13 to i8*
  %31 = bitcast i64* %14 to i8*
  %32 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 2
  %33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i64 0, i32 4
  br label %34, !dbg !1027

; <label>:34:                                     ; preds = %27, %206
  %35 = phi i64 [ 0, %27 ], [ %216, %206 ]
  %36 = call i32 @raxNext(%struct.raxIterator* nonnull %15) #6, !dbg !1028
  %37 = icmp eq i32 %36, 0, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  br i1 %37, label %218, label %38, !dbg !1024

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %28, align 8, !dbg !1029, !tbaa !525
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1031
  %40 = call i8* @lpFirst(i8* %39) #6, !dbg !1032
  store i8* %40, i8** %16, align 8, !dbg !1033, !tbaa !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1036
  %41 = call i8* @lpGet(i8* %40, i64* nonnull %13, i8* null) #6, !dbg !1038
  %42 = icmp eq i8* %41, null, !dbg !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  br i1 %42, label %43, label %45, !dbg !1041

; <label>:43:                                     ; preds = %38
  %44 = load i64, i64* %13, align 8, !dbg !1042, !tbaa !117
  br label %52, !dbg !1043

; <label>:45:                                     ; preds = %38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1044
  %46 = load i64, i64* %13, align 8, !dbg !1045, !tbaa !117
  %47 = call i32 @string2ll(i8* nonnull %41, i64 %46, i64* nonnull %14) #6, !dbg !1047
  %48 = icmp eq i32 %47, 0, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %48, label %49, label %50, !dbg !1049

; <label>:49:                                     ; preds = %45
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1049
  call void @_exit(i32 1) #8, !dbg !1049
  unreachable

; <label>:50:                                     ; preds = %45
  %51 = load i64, i64* %14, align 8, !dbg !1050, !tbaa !265
  store i64 %51, i64* %13, align 8, !dbg !1051, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1052
  br label %52

; <label>:52:                                     ; preds = %43, %50
  %53 = phi i64 [ %44, %43 ], [ %51, %50 ], !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  %54 = load i64, i64* %17, align 8, !dbg !1055, !tbaa !974
  %55 = sub i64 %54, %53, !dbg !1057
  %56 = icmp ult i64 %55, %1, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br i1 %56, label %57, label %206, !dbg !1059

; <label>:57:                                     ; preds = %52
  %58 = icmp eq i32 %2, 0, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %58, label %59, label %204, !dbg !1062

; <label>:59:                                     ; preds = %57
  %60 = sub i64 %54, %1, !dbg !1063
  %61 = icmp sgt i64 %53, %60, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %61, label %63, label %62, !dbg !1065

; <label>:62:                                     ; preds = %59
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 404) #6, !dbg !1065
  call void @_exit(i32 1) #8, !dbg !1065
  unreachable

; <label>:63:                                     ; preds = %59
  %64 = sub nsw i64 %53, %60, !dbg !1066
  %65 = getelementptr inbounds [21 x i8], [21 x i8]* %12, i64 0, i64 0, !dbg !1070
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1070
  %66 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %64) #6, !dbg !1071
  %67 = load i8*, i8** %16, align 8, !dbg !1073, !tbaa !234
  %68 = call i8* @lpInsert(i8* %39, i8* nonnull %65, i32 %66, i8* %67, i32 2, i8** nonnull %16) #6, !dbg !1074
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  %69 = load i8*, i8** %16, align 8, !dbg !1077, !tbaa !234
  %70 = call i8* @lpNext(i8* %68, i8* %69) #6, !dbg !1078
  store i8* %70, i8** %16, align 8, !dbg !1079, !tbaa !234
  %71 = bitcast i64* %10 to i8*, !dbg !1082
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1082
  %72 = call i8* @lpGet(i8* %70, i64* nonnull %10, i8* null) #6, !dbg !1084
  %73 = icmp eq i8* %72, null, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  br i1 %73, label %74, label %76, !dbg !1087

; <label>:74:                                     ; preds = %63
  %75 = load i64, i64* %10, align 8, !dbg !1088, !tbaa !117
  br label %84, !dbg !1089

; <label>:76:                                     ; preds = %63
  %77 = bitcast i64* %11 to i8*, !dbg !1090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #7, !dbg !1090
  %78 = load i64, i64* %10, align 8, !dbg !1091, !tbaa !117
  %79 = call i32 @string2ll(i8* nonnull %72, i64 %78, i64* nonnull %11) #6, !dbg !1093
  %80 = icmp eq i32 %79, 0, !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %80, label %81, label %82, !dbg !1095

; <label>:81:                                     ; preds = %76
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1095
  call void @_exit(i32 1) #8, !dbg !1095
  unreachable

; <label>:82:                                     ; preds = %76
  %83 = load i64, i64* %11, align 8, !dbg !1096, !tbaa !265
  store i64 %83, i64* %10, align 8, !dbg !1097, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #7, !dbg !1098
  br label %84

; <label>:84:                                     ; preds = %74, %82
  %85 = phi i64 [ %75, %74 ], [ %83, %82 ], !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  %86 = add nsw i64 %85, %60, !dbg !1101
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1105
  %87 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %86) #6, !dbg !1106
  %88 = load i8*, i8** %16, align 8, !dbg !1108, !tbaa !234
  %89 = call i8* @lpInsert(i8* %68, i8* nonnull %65, i32 %87, i8* %88, i32 2, i8** nonnull %16) #6, !dbg !1109
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %90 = load i8*, i8** %16, align 8, !dbg !1112, !tbaa !234
  %91 = call i8* @lpNext(i8* %89, i8* %90) #6, !dbg !1113
  store i8* %91, i8** %16, align 8, !dbg !1114, !tbaa !234
  %92 = bitcast i64* %8 to i8*, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #7, !dbg !1117
  %93 = call i8* @lpGet(i8* %91, i64* nonnull %8, i8* null) #6, !dbg !1119
  %94 = icmp eq i8* %93, null, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %94, label %95, label %97, !dbg !1122

; <label>:95:                                     ; preds = %84
  %96 = load i64, i64* %8, align 8, !dbg !1123, !tbaa !117
  br label %105, !dbg !1124

; <label>:97:                                     ; preds = %84
  %98 = bitcast i64* %9 to i8*, !dbg !1125
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98) #7, !dbg !1125
  %99 = load i64, i64* %8, align 8, !dbg !1126, !tbaa !117
  %100 = call i32 @string2ll(i8* nonnull %93, i64 %99, i64* nonnull %9) #6, !dbg !1128
  %101 = icmp eq i32 %100, 0, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br i1 %101, label %102, label %103, !dbg !1130

; <label>:102:                                    ; preds = %97
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1130
  call void @_exit(i32 1) #8, !dbg !1130
  unreachable

; <label>:103:                                    ; preds = %97
  %104 = load i64, i64* %9, align 8, !dbg !1131, !tbaa !265
  store i64 %104, i64* %8, align 8, !dbg !1132, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98) #7, !dbg !1133
  br label %105

; <label>:105:                                    ; preds = %95, %103
  %106 = phi i64 [ %96, %95 ], [ %104, %103 ], !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #7, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  %107 = load i8*, i8** %16, align 8, !dbg !1136, !tbaa !234
  %108 = call i8* @lpNext(i8* %89, i8* %107) #6, !dbg !1137
  store i8* %108, i8** %16, align 8, !dbg !1138, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %109 = icmp sgt i64 %106, 0, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  %110 = call i8* @lpNext(i8* %89, i8* %108) #6, !dbg !1144
  store i8* %110, i8** %16, align 8, !dbg !1144, !tbaa !234
  br i1 %109, label %120, label %111, !dbg !1143

; <label>:111:                                    ; preds = %120, %105
  %112 = phi i8* [ %110, %105 ], [ %124, %120 ], !dbg !1144
  %113 = icmp eq i8* %112, null, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %113, label %197, label %114, !dbg !1145

; <label>:114:                                    ; preds = %111
  %115 = bitcast i64* %6 to i8*
  %116 = bitcast i64* %7 to i8*
  %117 = bitcast i64* %4 to i8*
  %118 = trunc i64 %106 to i32
  %119 = bitcast i64* %5 to i8*
  br label %126, !dbg !1146

; <label>:120:                                    ; preds = %105, %120
  %121 = phi i8* [ %124, %120 ], [ %110, %105 ], !dbg !1144
  %122 = phi i64 [ %123, %120 ], [ 0, %105 ]
  %123 = add nuw nsw i64 %122, 1, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  %124 = call i8* @lpNext(i8* %89, i8* %121) #6, !dbg !1144
  store i8* %124, i8** %16, align 8, !dbg !1144, !tbaa !234
  %125 = icmp eq i64 %123, %106, !dbg !1141
  br i1 %125, label %111, label %120, !dbg !1143, !llvm.loop !1149

; <label>:126:                                    ; preds = %114, %195
  %127 = phi i8* [ %194, %195 ], [ %112, %114 ], !dbg !1146
  %128 = phi i8* [ %158, %195 ], [ %89, %114 ], !dbg !1151
  %129 = phi i64 [ %159, %195 ], [ %35, %114 ], !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #7, !dbg !1154
  %130 = call i8* @lpGet(i8* nonnull %127, i64* nonnull %6, i8* null) #6, !dbg !1156
  %131 = icmp eq i8* %130, null, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  br i1 %131, label %132, label %134, !dbg !1159

; <label>:132:                                    ; preds = %126
  %133 = load i64, i64* %6, align 8, !dbg !1160, !tbaa !117
  br label %141, !dbg !1161

; <label>:134:                                    ; preds = %126
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %116) #7, !dbg !1162
  %135 = load i64, i64* %6, align 8, !dbg !1163, !tbaa !117
  %136 = call i32 @string2ll(i8* nonnull %130, i64 %135, i64* nonnull %7) #6, !dbg !1165
  %137 = icmp eq i32 %136, 0, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  br i1 %137, label %138, label %139, !dbg !1167

; <label>:138:                                    ; preds = %134
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1167
  call void @_exit(i32 1) #8, !dbg !1167
  unreachable

; <label>:139:                                    ; preds = %134
  %140 = load i64, i64* %7, align 8, !dbg !1168, !tbaa !265
  store i64 %140, i64* %6, align 8, !dbg !1169, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %116) #7, !dbg !1170
  br label %141

; <label>:141:                                    ; preds = %132, %139
  %142 = phi i64 [ %133, %132 ], [ %140, %139 ], !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #7, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %143 = trunc i64 %142 to i32, !dbg !1172
  %144 = and i32 %143, 1, !dbg !1174
  %145 = icmp eq i32 %144, 0, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %145, label %146, label %157, !dbg !1175

; <label>:146:                                    ; preds = %141
  %147 = or i32 %143, 1, !dbg !1176
  %148 = sext i32 %147 to i64, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1181
  %149 = call i32 @ll2string(i8* nonnull %65, i64 21, i64 %148) #6, !dbg !1182
  %150 = load i8*, i8** %16, align 8, !dbg !1184, !tbaa !234
  %151 = call i8* @lpInsert(i8* %128, i8* nonnull %65, i32 %149, i8* %150, i32 2, i8** nonnull %16) #6, !dbg !1185
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %65) #7, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %152 = add nsw i64 %129, 1, !dbg !1188
  %153 = load i64, i64* %17, align 8, !dbg !1189, !tbaa !974
  %154 = add i64 %153, -1, !dbg !1189
  store i64 %154, i64* %17, align 8, !dbg !1189, !tbaa !974
  %155 = icmp ugt i64 %154, %1, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  br i1 %155, label %157, label %156, !dbg !1192

; <label>:156:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %197

; <label>:157:                                    ; preds = %146, %141
  %158 = phi i8* [ %128, %141 ], [ %151, %146 ], !dbg !1194
  %159 = phi i64 [ %129, %141 ], [ %152, %146 ], !dbg !1194
  %160 = phi i32 [ %143, %141 ], [ %147, %146 ], !dbg !1194
  %161 = load i8*, i8** %16, align 8, !dbg !1195, !tbaa !234
  %162 = call i8* @lpNext(i8* %158, i8* %161) #6, !dbg !1196
  store i8* %162, i8** %16, align 8, !dbg !1197, !tbaa !234
  %163 = call i8* @lpNext(i8* %158, i8* %162) #6, !dbg !1198
  store i8* %163, i8** %16, align 8, !dbg !1199, !tbaa !234
  %164 = call i8* @lpNext(i8* %158, i8* %163) #6, !dbg !1200
  store i8* %164, i8** %16, align 8, !dbg !1201, !tbaa !234
  %165 = and i32 %160, 2, !dbg !1202
  %166 = icmp eq i32 %165, 0, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  br i1 %166, label %168, label %167, !dbg !1204

; <label>:167:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  br label %186, !dbg !1206

; <label>:168:                                    ; preds = %157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %117) #7, !dbg !1211
  %169 = call i8* @lpGet(i8* %164, i64* nonnull %4, i8* null) #6, !dbg !1213
  %170 = icmp eq i8* %169, null, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %170, label %171, label %173, !dbg !1216

; <label>:171:                                    ; preds = %168
  %172 = load i64, i64* %4, align 8, !dbg !1217, !tbaa !117
  br label %180, !dbg !1218

; <label>:173:                                    ; preds = %168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119) #7, !dbg !1219
  %174 = load i64, i64* %4, align 8, !dbg !1220, !tbaa !117
  %175 = call i32 @string2ll(i8* nonnull %169, i64 %174, i64* nonnull %5) #6, !dbg !1222
  %176 = icmp eq i32 %175, 0, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %176, label %177, label %178, !dbg !1224

; <label>:177:                                    ; preds = %173
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1224
  call void @_exit(i32 1) #8, !dbg !1224
  unreachable

; <label>:178:                                    ; preds = %173
  %179 = load i64, i64* %5, align 8, !dbg !1225, !tbaa !265
  store i64 %179, i64* %4, align 8, !dbg !1226, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #7, !dbg !1227
  br label %180

; <label>:180:                                    ; preds = %171, %178
  %181 = phi i64 [ %172, %171 ], [ %179, %178 ], !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %117) #7, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %182 = trunc i64 %181 to i32, !dbg !1229
  %183 = shl nsw i32 %182, 1, !dbg !1230
  %184 = or i32 %183, 1, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %185 = load i8*, i8** %16, align 8, !dbg !1232, !tbaa !234
  br label %186

; <label>:186:                                    ; preds = %180, %167
  %187 = phi i8* [ %164, %167 ], [ %185, %180 ], !dbg !1232
  %188 = phi i32 [ %118, %167 ], [ %184, %180 ], !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br label %189, !dbg !1234

; <label>:189:                                    ; preds = %189, %186
  %190 = phi i8* [ %187, %186 ], [ %194, %189 ], !dbg !1232
  %191 = phi i32 [ %188, %186 ], [ %192, %189 ], !dbg !1232
  %192 = add nsw i32 %191, -1, !dbg !1235
  %193 = icmp eq i32 %191, 0, !dbg !1234
  %194 = call i8* @lpNext(i8* %158, i8* %190) #6, !dbg !1232
  store i8* %194, i8** %16, align 8, !dbg !1232, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1234
  br i1 %193, label %195, label %189, !dbg !1234, !llvm.loop !1236

; <label>:195:                                    ; preds = %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  %196 = icmp eq i8* %194, null, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %196, label %197, label %126, !llvm.loop !1239

; <label>:197:                                    ; preds = %195, %156, %111
  %198 = phi i8* [ %89, %111 ], [ %151, %156 ], [ %158, %195 ], !dbg !1151
  %199 = phi i64 [ %35, %111 ], [ %152, %156 ], [ %159, %195 ], !dbg !1023
  %200 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1240, !tbaa !108
  %201 = load i8*, i8** %32, align 8, !dbg !1241, !tbaa !706
  %202 = load i64, i64* %33, align 8, !dbg !1242, !tbaa !704
  %203 = call i32 @raxInsert(%struct.rax* %200, i8* %201, i64 %202, i8* %198, i8** null) #6, !dbg !1243
  br label %204

; <label>:204:                                    ; preds = %57, %197
  %205 = phi i64 [ %199, %197 ], [ %35, %57 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %218

; <label>:206:                                    ; preds = %52
  call void @lpFree(i8* %39) #6, !dbg !1245
  %207 = load %struct.rax*, %struct.rax** %22, align 8, !dbg !1247, !tbaa !108
  %208 = load i8*, i8** %32, align 8, !dbg !1248, !tbaa !706
  %209 = load i64, i64* %33, align 8, !dbg !1249, !tbaa !704
  %210 = call i32 @raxRemove(%struct.rax* %207, i8* %208, i64 %209, i8** null) #6, !dbg !1250
  %211 = load i8*, i8** %32, align 8, !dbg !1251, !tbaa !706
  %212 = load i64, i64* %33, align 8, !dbg !1252, !tbaa !704
  %213 = call i32 @raxSeek(%struct.raxIterator* nonnull %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %211, i64 %212) #6, !dbg !1253
  %214 = load i64, i64* %17, align 8, !dbg !1254, !tbaa !974
  %215 = sub i64 %214, %53, !dbg !1254
  store i64 %215, i64* %17, align 8, !dbg !1254, !tbaa !974
  %216 = add nsw i64 %53, %35, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %217 = icmp ugt i64 %215, %1, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %217, label %34, label %218, !dbg !1027

; <label>:218:                                    ; preds = %206, %34, %20, %204
  %219 = phi i64 [ %205, %204 ], [ 0, %20 ], [ %216, %206 ], [ %35, %34 ], !dbg !1257
  call void @raxStop(%struct.raxIterator* nonnull %15) #6, !dbg !1258
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %21) #7, !dbg !1259
  br label %220

; <label>:220:                                    ; preds = %3, %218
  %221 = phi i64 [ %219, %218 ], [ 0, %3 ], !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  ret i64 %221, !dbg !1259
}

; Function Attrs: noredzone
declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStart(%struct.streamIterator*, %struct.stream*, %struct.streamID* readonly, %struct.streamID* readonly, i32) local_unnamed_addr #0 !dbg !1260 {
  %6 = alloca [2 x i64], align 16
  %7 = icmp ne %struct.streamID* %2, null, !dbg !1301
  %8 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, !dbg !1302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %7, label %9, label %21, !dbg !1304

; <label>:9:                                      ; preds = %5
  %10 = bitcast [2 x i64]* %8 to i8*, !dbg !1305
  %11 = bitcast [2 x i64]* %6 to i8*, !dbg !1308
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !1308
  %12 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1309
  %13 = load i64, i64* %12, align 8, !dbg !1309, !tbaa !178
  %14 = tail call i64 @intrev64(i64 %13) #6, !dbg !1309
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1310
  store i64 %14, i64* %15, align 16, !dbg !1311, !tbaa !117
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1312
  %17 = load i64, i64* %16, align 8, !dbg !1312, !tbaa !188
  %18 = tail call i64 @intrev64(i64 %17) #6, !dbg !1312
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1313
  store i64 %18, i64* %19, align 8, !dbg !1314, !tbaa !117
  %20 = call i8* @memcpy(i8* nonnull %10, i8* nonnull %11, i64 16) #6, !dbg !1315
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br label %23, !dbg !1317

; <label>:21:                                     ; preds = %5
  %22 = bitcast [2 x i64]* %8 to <2 x i64>*, !dbg !1318
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !dbg !1318, !tbaa !117
  br label %23

; <label>:23:                                     ; preds = %21, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = icmp ne %struct.streamID* %3, null, !dbg !1319
  %25 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  br i1 %24, label %26, label %38, !dbg !1322

; <label>:26:                                     ; preds = %23
  %27 = bitcast [2 x i64]* %25 to i8*, !dbg !1323
  %28 = bitcast [2 x i64]* %6 to i8*, !dbg !1326
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1326
  %29 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1327
  %30 = load i64, i64* %29, align 8, !dbg !1327, !tbaa !178
  %31 = call i64 @intrev64(i64 %30) #6, !dbg !1327
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0, !dbg !1328
  store i64 %31, i64* %32, align 16, !dbg !1329, !tbaa !117
  %33 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1330
  %34 = load i64, i64* %33, align 8, !dbg !1330, !tbaa !188
  %35 = call i64 @intrev64(i64 %34) #6, !dbg !1330
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1, !dbg !1331
  store i64 %35, i64* %36, align 8, !dbg !1332, !tbaa !117
  %37 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %28, i64 16) #6, !dbg !1333
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br label %40, !dbg !1335

; <label>:38:                                     ; preds = %23
  %39 = bitcast [2 x i64]* %25 to <2 x i64>*, !dbg !1336
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %39, align 8, !dbg !1336, !tbaa !117
  br label %40

; <label>:40:                                     ; preds = %38, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !1337
  %42 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 0, !dbg !1338
  %43 = load %struct.rax*, %struct.rax** %42, align 8, !dbg !1338, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %41, %struct.rax* %43) #6, !dbg !1339
  %44 = icmp eq i32 %4, 0, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %44, label %45, label %63, !dbg !1342

; <label>:45:                                     ; preds = %40
  br i1 %7, label %46, label %61, !dbg !1346

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !1349
  %48 = load i64, i64* %47, align 8, !dbg !1349, !tbaa !178
  %49 = icmp eq i64 %48, 0, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %49, label %50, label %54, !dbg !1351

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !1352
  %52 = load i64, i64* %51, align 8, !dbg !1352, !tbaa !188
  %53 = icmp eq i64 %52, 0, !dbg !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1354
  br i1 %53, label %61, label %54, !dbg !1354

; <label>:54:                                     ; preds = %50, %46
  %55 = bitcast [2 x i64]* %8 to i8*, !dbg !1355
  %56 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %55, i64 16) #6, !dbg !1357
  %57 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #6, !dbg !1358
  %58 = icmp eq i32 %57, 0, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  br i1 %58, label %81, label %59, !dbg !1360

; <label>:59:                                     ; preds = %54
  %60 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  br label %81, !dbg !1361

; <label>:61:                                     ; preds = %50, %45
  %62 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81

; <label>:63:                                     ; preds = %40
  br i1 %24, label %64, label %79, !dbg !1364

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !1365
  %66 = load i64, i64* %65, align 8, !dbg !1365, !tbaa !178
  %67 = icmp eq i64 %66, 0, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1367
  br i1 %67, label %68, label %72, !dbg !1367

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !1368
  %70 = load i64, i64* %69, align 8, !dbg !1368, !tbaa !188
  %71 = icmp eq i64 %70, 0, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  br i1 %71, label %79, label %72, !dbg !1370

; <label>:72:                                     ; preds = %68, %64
  %73 = bitcast [2 x i64]* %25 to i8*, !dbg !1371
  %74 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %73, i64 16) #6, !dbg !1373
  %75 = call i32 @raxEOF(%struct.raxIterator* nonnull %41) #6, !dbg !1374
  %76 = icmp eq i32 %75, 0, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  br i1 %76, label %81, label %77, !dbg !1376

; <label>:77:                                     ; preds = %72
  %78 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br label %81, !dbg !1377

; <label>:79:                                     ; preds = %68, %63
  %80 = call i32 @raxSeek(%struct.raxIterator* nonnull %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %81

; <label>:81:                                     ; preds = %72, %54, %79, %77, %61, %59
  %82 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1380
  store %struct.stream* %1, %struct.stream** %82, align 8, !dbg !1381, !tbaa !1382
  %83 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1384
  %84 = bitcast i8** %83 to <2 x i8*>*, !dbg !1385
  store <2 x i8*> zeroinitializer, <2 x i8*>* %84, align 8, !dbg !1385, !tbaa !234
  %85 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !1386
  store i32 %4, i32* %85, align 4, !dbg !1387, !tbaa !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  ret void, !dbg !1389
}

; Function Attrs: noredzone
declare dso_local i32 @raxEOF(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamIteratorGetID(%struct.streamIterator*, %struct.streamID* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !1390 {
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
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
  br label %61, !dbg !1431

; <label>:61:                                     ; preds = %3, %346
  %62 = load i8*, i8** %20, align 8, !dbg !1432, !tbaa !1433
  %63 = icmp eq i8* %62, null, !dbg !1434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br i1 %63, label %67, label %64, !dbg !1435

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %22, align 8, !dbg !1436, !tbaa !1437
  %66 = icmp eq i8* %65, null, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  br i1 %66, label %67, label %129, !dbg !1439

; <label>:67:                                     ; preds = %64, %61
  %68 = load i32, i32* %21, align 4, !dbg !1440, !tbaa !1388
  %69 = icmp eq i32 %68, 0, !dbg !1442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  br i1 %69, label %71, label %70, !dbg !1443

; <label>:70:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br label %77, !dbg !1444

; <label>:71:                                     ; preds = %67
  %72 = call i32 @raxNext(%struct.raxIterator* nonnull %49) #6, !dbg !1446
  %73 = icmp eq i32 %72, 0, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %73, label %347, label %74, !dbg !1447

; <label>:74:                                     ; preds = %71
  %75 = load i32, i32* %21, align 4, !dbg !1448, !tbaa !1388
  %76 = icmp eq i32 %75, 0, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %76, label %80, label %77, !dbg !1444

; <label>:77:                                     ; preds = %70, %74
  %78 = call i32 @raxPrev(%struct.raxIterator* nonnull %49) #6, !dbg !1450
  %79 = icmp eq i32 %78, 0, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %79, label %347, label %80, !dbg !1451

; <label>:80:                                     ; preds = %77, %74
  %81 = load i64, i64* %50, align 8, !dbg !1452, !tbaa !1453
  %82 = icmp eq i64 %81, 16, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %82, label %84, label %83, !dbg !1452

; <label>:83:                                     ; preds = %80
  call void @_serverAssert(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 541) #6, !dbg !1452
  call void @_exit(i32 1) #8, !dbg !1452
  unreachable

; <label>:84:                                     ; preds = %80
  %85 = load i8*, i8** %51, align 8, !dbg !1454, !tbaa !1455
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1458
  %86 = call i8* @memcpy(i8* nonnull %38, i8* %85, i64 16) #6, !dbg !1459
  %87 = load i64, i64* %39, align 16, !dbg !1460, !tbaa !117
  %88 = call i64 @intrev64(i64 %87) #6, !dbg !1460
  store i64 %88, i64* %52, align 8, !dbg !1461, !tbaa !178
  %89 = load i64, i64* %40, align 8, !dbg !1462, !tbaa !117
  %90 = call i64 @intrev64(i64 %89) #6, !dbg !1462
  store i64 %90, i64* %53, align 8, !dbg !1463, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  %91 = load i8*, i8** %54, align 8, !dbg !1465, !tbaa !1466
  store i8* %91, i8** %20, align 8, !dbg !1467, !tbaa !1433
  %92 = call i8* @lpFirst(i8* %91) #6, !dbg !1468
  store i8* %92, i8** %22, align 8, !dbg !1469, !tbaa !1437
  %93 = load i8*, i8** %20, align 8, !dbg !1470, !tbaa !1433
  %94 = call i8* @lpNext(i8* %93, i8* %92) #6, !dbg !1471
  store i8* %94, i8** %22, align 8, !dbg !1472, !tbaa !1437
  %95 = load i8*, i8** %20, align 8, !dbg !1473, !tbaa !1433
  %96 = call i8* @lpNext(i8* %95, i8* %94) #6, !dbg !1474
  store i8* %96, i8** %22, align 8, !dbg !1475, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #7, !dbg !1478
  %97 = call i8* @lpGet(i8* %96, i64* nonnull %16, i8* null) #6, !dbg !1480
  %98 = icmp eq i8* %97, null, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %98, label %99, label %101, !dbg !1483

; <label>:99:                                     ; preds = %84
  %100 = load i64, i64* %16, align 8, !dbg !1484, !tbaa !117
  br label %108, !dbg !1485

; <label>:101:                                    ; preds = %84
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #7, !dbg !1486
  %102 = load i64, i64* %16, align 8, !dbg !1487, !tbaa !117
  %103 = call i32 @string2ll(i8* nonnull %97, i64 %102, i64* nonnull %17) #6, !dbg !1489
  %104 = icmp eq i32 %103, 0, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %104, label %105, label %106, !dbg !1491

; <label>:105:                                    ; preds = %101
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1491
  call void @_exit(i32 1) #8, !dbg !1491
  unreachable

; <label>:106:                                    ; preds = %101
  %107 = load i64, i64* %17, align 8, !dbg !1492, !tbaa !265
  store i64 %107, i64* %16, align 8, !dbg !1493, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #7, !dbg !1494
  br label %108

; <label>:108:                                    ; preds = %99, %106
  %109 = phi i64 [ %100, %99 ], [ %107, %106 ], !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #7, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  store i64 %109, i64* %42, align 8, !dbg !1496, !tbaa !1497
  %110 = load i8*, i8** %20, align 8, !dbg !1498, !tbaa !1433
  %111 = load i8*, i8** %22, align 8, !dbg !1499, !tbaa !1437
  %112 = call i8* @lpNext(i8* %110, i8* %111) #6, !dbg !1500
  store i8* %112, i8** %22, align 8, !dbg !1501, !tbaa !1437
  store i8* %112, i8** %57, align 8, !dbg !1502, !tbaa !1503
  %113 = load i32, i32* %21, align 4, !dbg !1504, !tbaa !1388
  %114 = icmp eq i32 %113, 0, !dbg !1505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br i1 %114, label %115, label %126, !dbg !1506

; <label>:115:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  %116 = load i64, i64* %42, align 8, !dbg !1509, !tbaa !1497
  %117 = icmp eq i64 %116, 0, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %117, label %155, label %118, !dbg !1512

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i8* [ %122, %118 ], [ %112, %115 ], !dbg !1513
  %120 = phi i64 [ %123, %118 ], [ 0, %115 ]
  %121 = load i8*, i8** %20, align 8, !dbg !1514, !tbaa !1433
  %122 = call i8* @lpNext(i8* %121, i8* %119) #6, !dbg !1515
  store i8* %122, i8** %22, align 8, !dbg !1516, !tbaa !1437
  %123 = add nuw i64 %120, 1, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  %124 = load i64, i64* %42, align 8, !dbg !1509, !tbaa !1497
  %125 = icmp ult i64 %123, %124, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %125, label %118, label %155, !dbg !1512, !llvm.loop !1519

; <label>:126:                                    ; preds = %108
  %127 = load i8*, i8** %20, align 8, !dbg !1521, !tbaa !1433
  %128 = call i8* @lpLast(i8* %127) #6, !dbg !1523
  store i8* %128, i8** %22, align 8, !dbg !1524, !tbaa !1437
  br label %155

; <label>:129:                                    ; preds = %64
  %130 = load i32, i32* %21, align 4, !dbg !1525, !tbaa !1388
  %131 = icmp eq i32 %130, 0, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %131, label %156, label %132, !dbg !1527

; <label>:132:                                    ; preds = %129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #7, !dbg !1530
  %133 = call i8* @lpGet(i8* nonnull %65, i64* nonnull %14, i8* null) #6, !dbg !1532
  %134 = icmp eq i8* %133, null, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br i1 %134, label %135, label %137, !dbg !1535

; <label>:135:                                    ; preds = %132
  %136 = load i64, i64* %14, align 8, !dbg !1536, !tbaa !117
  br label %144, !dbg !1537

; <label>:137:                                    ; preds = %132
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #7, !dbg !1538
  %138 = load i64, i64* %14, align 8, !dbg !1539, !tbaa !117
  %139 = call i32 @string2ll(i8* nonnull %133, i64 %138, i64* nonnull %15) #6, !dbg !1541
  %140 = icmp eq i32 %139, 0, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %140, label %141, label %142, !dbg !1543

; <label>:141:                                    ; preds = %137
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1543
  call void @_exit(i32 1) #8, !dbg !1543
  unreachable

; <label>:142:                                    ; preds = %137
  %143 = load i64, i64* %15, align 8, !dbg !1544, !tbaa !265
  store i64 %143, i64* %14, align 8, !dbg !1545, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #7, !dbg !1546
  br label %144

; <label>:144:                                    ; preds = %135, %142
  %145 = phi i64 [ %136, %135 ], [ %143, %142 ], !dbg !1547
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #7, !dbg !1546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  %146 = trunc i64 %145 to i32, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  %147 = load i8*, i8** %22, align 8, !dbg !1551, !tbaa !1437
  br label %148, !dbg !1550

; <label>:148:                                    ; preds = %148, %144
  %149 = phi i8* [ %147, %144 ], [ %154, %148 ], !dbg !1551
  %150 = phi i32 [ %146, %144 ], [ %151, %148 ], !dbg !1551
  %151 = add nsw i32 %150, -1, !dbg !1552
  %152 = icmp eq i32 %150, 0, !dbg !1550
  %153 = load i8*, i8** %20, align 8, !dbg !1551, !tbaa !1433
  %154 = call i8* @lpPrev(i8* %153, i8* %149) #6, !dbg !1551
  store i8* %154, i8** %22, align 8, !dbg !1551, !tbaa !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  br i1 %152, label %155, label %148, !dbg !1550, !llvm.loop !1553

; <label>:155:                                    ; preds = %148, %118, %115, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %156, !dbg !1555

; <label>:156:                                    ; preds = %155, %129
  br label %157

; <label>:157:                                    ; preds = %156, %345
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %158 = load i32, i32* %21, align 4, !dbg !1556, !tbaa !1388
  %159 = icmp eq i32 %158, 0, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br i1 %159, label %160, label %165, !dbg !1558

; <label>:160:                                    ; preds = %157
  %161 = load i8*, i8** %20, align 8, !dbg !1559, !tbaa !1433
  %162 = load i8*, i8** %22, align 8, !dbg !1561, !tbaa !1437
  %163 = call i8* @lpNext(i8* %161, i8* %162) #6, !dbg !1562
  store i8* %163, i8** %22, align 8, !dbg !1563, !tbaa !1437
  %164 = icmp eq i8* %163, null, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  br i1 %164, label %346, label %192, !dbg !1566

; <label>:165:                                    ; preds = %157
  %166 = load i8*, i8** %22, align 8, !dbg !1567, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1570
  %167 = call i8* @lpGet(i8* %166, i64* nonnull %12, i8* null) #6, !dbg !1572
  %168 = icmp eq i8* %167, null, !dbg !1574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %168, label %169, label %171, !dbg !1575

; <label>:169:                                    ; preds = %165
  %170 = load i64, i64* %12, align 8, !dbg !1576, !tbaa !117
  br label %178, !dbg !1577

; <label>:171:                                    ; preds = %165
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #7, !dbg !1578
  %172 = load i64, i64* %12, align 8, !dbg !1579, !tbaa !117
  %173 = call i32 @string2ll(i8* nonnull %167, i64 %172, i64* nonnull %13) #6, !dbg !1581
  %174 = icmp eq i32 %173, 0, !dbg !1583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br i1 %174, label %175, label %176, !dbg !1583

; <label>:175:                                    ; preds = %171
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1583
  call void @_exit(i32 1) #8, !dbg !1583
  unreachable

; <label>:176:                                    ; preds = %171
  %177 = load i64, i64* %13, align 8, !dbg !1584, !tbaa !265
  store i64 %177, i64* %12, align 8, !dbg !1585, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #7, !dbg !1586
  br label %178

; <label>:178:                                    ; preds = %169, %176
  %179 = phi i64 [ %170, %169 ], [ %177, %176 ], !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #7, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1586
  %180 = icmp eq i64 %179, 0, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  br i1 %180, label %183, label %181, !dbg !1591

; <label>:181:                                    ; preds = %178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  %182 = load i8*, i8** %22, align 8, !dbg !1593, !tbaa !1437
  br label %184, !dbg !1592

; <label>:183:                                    ; preds = %178
  store <2 x i8*> zeroinitializer, <2 x i8*>* %60, align 8, !dbg !1594, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %346

; <label>:184:                                    ; preds = %181, %184
  %185 = phi i8* [ %182, %181 ], [ %189, %184 ], !dbg !1593
  %186 = phi i64 [ %179, %181 ], [ %187, %184 ]
  %187 = add nsw i64 %186, -1, !dbg !1597
  %188 = load i8*, i8** %20, align 8, !dbg !1598, !tbaa !1433
  %189 = call i8* @lpPrev(i8* %188, i8* %185) #6, !dbg !1599
  store i8* %189, i8** %22, align 8, !dbg !1600, !tbaa !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  %190 = icmp eq i64 %187, 0, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %190, label %191, label %184, !dbg !1592, !llvm.loop !1601

; <label>:191:                                    ; preds = %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %192

; <label>:192:                                    ; preds = %191, %160
  %193 = phi i8* [ %189, %191 ], [ %163, %160 ]
  %194 = ptrtoint i8* %193 to i64, !dbg !1604
  store i64 %194, i64* %24, align 8, !dbg !1605, !tbaa !1606
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #7, !dbg !1609
  %195 = call i8* @lpGet(i8* %193, i64* nonnull %10, i8* null) #6, !dbg !1611
  %196 = icmp eq i8* %195, null, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %196, label %197, label %199, !dbg !1614

; <label>:197:                                    ; preds = %192
  %198 = load i64, i64* %10, align 8, !dbg !1615, !tbaa !117
  br label %206, !dbg !1616

; <label>:199:                                    ; preds = %192
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1617
  %200 = load i64, i64* %10, align 8, !dbg !1618, !tbaa !117
  %201 = call i32 @string2ll(i8* nonnull %195, i64 %200, i64* nonnull %11) #6, !dbg !1620
  %202 = icmp eq i32 %201, 0, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  br i1 %202, label %203, label %204, !dbg !1622

; <label>:203:                                    ; preds = %199
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1622
  call void @_exit(i32 1) #8, !dbg !1622
  unreachable

; <label>:204:                                    ; preds = %199
  %205 = load i64, i64* %11, align 8, !dbg !1623, !tbaa !265
  store i64 %205, i64* %10, align 8, !dbg !1624, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1625
  br label %206

; <label>:206:                                    ; preds = %197, %204
  %207 = phi i64 [ %198, %197 ], [ %205, %204 ], !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #7, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  %208 = trunc i64 %207 to i32, !dbg !1627
  %209 = load i8*, i8** %20, align 8, !dbg !1629, !tbaa !1433
  %210 = load i8*, i8** %22, align 8, !dbg !1630, !tbaa !1437
  %211 = call i8* @lpNext(i8* %209, i8* %210) #6, !dbg !1631
  store i8* %211, i8** %22, align 8, !dbg !1632, !tbaa !1437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* nonnull align 8 %29, i64 16, i1 false), !dbg !1633, !tbaa.struct !1634
  %212 = load i8*, i8** %22, align 8, !dbg !1635, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1638
  %213 = call i8* @lpGet(i8* %212, i64* nonnull %8, i8* null) #6, !dbg !1640
  %214 = icmp eq i8* %213, null, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  br i1 %214, label %215, label %217, !dbg !1643

; <label>:215:                                    ; preds = %206
  %216 = load i64, i64* %8, align 8, !dbg !1644, !tbaa !117
  br label %224, !dbg !1645

; <label>:217:                                    ; preds = %206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #7, !dbg !1646
  %218 = load i64, i64* %8, align 8, !dbg !1647, !tbaa !117
  %219 = call i32 @string2ll(i8* nonnull %213, i64 %218, i64* nonnull %9) #6, !dbg !1649
  %220 = icmp eq i32 %219, 0, !dbg !1651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  br i1 %220, label %221, label %222, !dbg !1651

; <label>:221:                                    ; preds = %217
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1651
  call void @_exit(i32 1) #8, !dbg !1651
  unreachable

; <label>:222:                                    ; preds = %217
  %223 = load i64, i64* %9, align 8, !dbg !1652, !tbaa !265
  store i64 %223, i64* %8, align 8, !dbg !1653, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #7, !dbg !1654
  br label %224

; <label>:224:                                    ; preds = %215, %222
  %225 = phi i64 [ %216, %215 ], [ %223, %222 ], !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  %226 = load i64, i64* %33, align 8, !dbg !1656, !tbaa !178
  %227 = add i64 %226, %225, !dbg !1656
  store i64 %227, i64* %33, align 8, !dbg !1656, !tbaa !178
  %228 = load i8*, i8** %20, align 8, !dbg !1657, !tbaa !1433
  %229 = load i8*, i8** %22, align 8, !dbg !1658, !tbaa !1437
  %230 = call i8* @lpNext(i8* %228, i8* %229) #6, !dbg !1659
  store i8* %230, i8** %22, align 8, !dbg !1660, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #7, !dbg !1663
  %231 = call i8* @lpGet(i8* %230, i64* nonnull %6, i8* null) #6, !dbg !1665
  %232 = icmp eq i8* %231, null, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %232, label %233, label %235, !dbg !1668

; <label>:233:                                    ; preds = %224
  %234 = load i64, i64* %6, align 8, !dbg !1669, !tbaa !117
  br label %242, !dbg !1670

; <label>:235:                                    ; preds = %224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #7, !dbg !1671
  %236 = load i64, i64* %6, align 8, !dbg !1672, !tbaa !117
  %237 = call i32 @string2ll(i8* nonnull %231, i64 %236, i64* nonnull %7) #6, !dbg !1674
  %238 = icmp eq i32 %237, 0, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br i1 %238, label %239, label %240, !dbg !1676

; <label>:239:                                    ; preds = %235
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1676
  call void @_exit(i32 1) #8, !dbg !1676
  unreachable

; <label>:240:                                    ; preds = %235
  %241 = load i64, i64* %7, align 8, !dbg !1677, !tbaa !265
  store i64 %241, i64* %6, align 8, !dbg !1678, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #7, !dbg !1679
  br label %242

; <label>:242:                                    ; preds = %233, %240
  %243 = phi i64 [ %234, %233 ], [ %241, %240 ], !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  %244 = load i64, i64* %36, align 8, !dbg !1681, !tbaa !188
  %245 = add i64 %244, %243, !dbg !1681
  store i64 %245, i64* %36, align 8, !dbg !1681, !tbaa !188
  %246 = load i8*, i8** %20, align 8, !dbg !1682, !tbaa !1433
  %247 = load i8*, i8** %22, align 8, !dbg !1683, !tbaa !1437
  %248 = call i8* @lpNext(i8* %246, i8* %247) #6, !dbg !1684
  store i8* %248, i8** %22, align 8, !dbg !1685, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1686
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1690
  %249 = load i64, i64* %33, align 8, !dbg !1691, !tbaa !178
  %250 = call i64 @intrev64(i64 %249) #6, !dbg !1691
  store i64 %250, i64* %39, align 16, !dbg !1692, !tbaa !117
  %251 = load i64, i64* %36, align 8, !dbg !1693, !tbaa !188
  %252 = call i64 @intrev64(i64 %251) #6, !dbg !1693
  store i64 %252, i64* %40, align 8, !dbg !1694, !tbaa !117
  %253 = call i8* @memcpy(i8* nonnull %37, i8* nonnull %38, i64 16) #6, !dbg !1695
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #7, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  %254 = and i32 %208, 2, !dbg !1697
  %255 = icmp ne i32 %254, 0, !dbg !1697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br i1 %255, label %256, label %258, !dbg !1699

; <label>:256:                                    ; preds = %242
  %257 = load i64, i64* %42, align 8, !dbg !1700, !tbaa !1497
  store i64 %257, i64* %2, align 8, !dbg !1702, !tbaa !117
  br label %276, !dbg !1703

; <label>:258:                                    ; preds = %242
  %259 = load i8*, i8** %22, align 8, !dbg !1704, !tbaa !1437
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #7, !dbg !1708
  %260 = call i8* @lpGet(i8* %259, i64* nonnull %4, i8* null) #6, !dbg !1710
  %261 = icmp eq i8* %260, null, !dbg !1712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  br i1 %261, label %262, label %264, !dbg !1713

; <label>:262:                                    ; preds = %258
  %263 = load i64, i64* %4, align 8, !dbg !1714, !tbaa !117
  br label %271, !dbg !1715

; <label>:264:                                    ; preds = %258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1716
  %265 = load i64, i64* %4, align 8, !dbg !1717, !tbaa !117
  %266 = call i32 @string2ll(i8* nonnull %260, i64 %265, i64* nonnull %5) #6, !dbg !1719
  %267 = icmp eq i32 %266, 0, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  br i1 %267, label %268, label %269, !dbg !1721

; <label>:268:                                    ; preds = %264
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1721
  call void @_exit(i32 1) #8, !dbg !1721
  unreachable

; <label>:269:                                    ; preds = %264
  %270 = load i64, i64* %5, align 8, !dbg !1722, !tbaa !265
  store i64 %270, i64* %4, align 8, !dbg !1723, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1724
  br label %271

; <label>:271:                                    ; preds = %262, %269
  %272 = phi i64 [ %263, %262 ], [ %270, %269 ], !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #7, !dbg !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  store i64 %272, i64* %2, align 8, !dbg !1726, !tbaa !117
  %273 = load i8*, i8** %20, align 8, !dbg !1727, !tbaa !1433
  %274 = load i8*, i8** %22, align 8, !dbg !1728, !tbaa !1437
  %275 = call i8* @lpNext(i8* %273, i8* %274) #6, !dbg !1729
  store i8* %275, i8** %22, align 8, !dbg !1730, !tbaa !1437
  br label %276

; <label>:276:                                    ; preds = %271, %256
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %277 = load i32, i32* %21, align 4, !dbg !1731, !tbaa !1388
  %278 = icmp eq i32 %277, 0, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  br i1 %278, label %279, label %296, !dbg !1734

; <label>:279:                                    ; preds = %276
  %280 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #6, !dbg !1735
  %281 = icmp sgt i32 %280, -1, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  br i1 %281, label %282, label %313, !dbg !1739

; <label>:282:                                    ; preds = %279
  %283 = and i32 %208, 1, !dbg !1740
  %284 = icmp eq i32 %283, 0, !dbg !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  br i1 %284, label %285, label %313, !dbg !1741

; <label>:285:                                    ; preds = %282
  %286 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #6, !dbg !1742
  %287 = icmp sgt i32 %286, 0, !dbg !1745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  br i1 %287, label %343, label %288, !dbg !1746

; <label>:288:                                    ; preds = %285
  %289 = trunc i64 %207 to i32, !dbg !1627
  %290 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1747
  store i32 %289, i32* %290, align 8, !dbg !1748, !tbaa !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  br i1 %255, label %291, label %343, !dbg !1750

; <label>:291:                                    ; preds = %288
  %292 = bitcast i8** %57 to i64*, !dbg !1751
  %293 = load i64, i64* %292, align 8, !dbg !1751, !tbaa !1503
  %294 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1753
  %295 = bitcast i8** %294 to i64*, !dbg !1754
  store i64 %293, i64* %295, align 8, !dbg !1754, !tbaa !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  br label %343, !dbg !1756

; <label>:296:                                    ; preds = %276
  %297 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %47, i64 16) #6, !dbg !1757
  %298 = icmp slt i32 %297, 1, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  br i1 %298, label %299, label %313, !dbg !1761

; <label>:299:                                    ; preds = %296
  %300 = and i32 %208, 1, !dbg !1762
  %301 = icmp eq i32 %300, 0, !dbg !1762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  br i1 %301, label %302, label %313, !dbg !1763

; <label>:302:                                    ; preds = %299
  %303 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %45, i64 16) #6, !dbg !1764
  %304 = icmp slt i32 %303, 0, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %304, label %343, label %305, !dbg !1768

; <label>:305:                                    ; preds = %302
  %306 = trunc i64 %207 to i32, !dbg !1627
  %307 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1769
  store i32 %306, i32* %307, align 8, !dbg !1770, !tbaa !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  br i1 %255, label %308, label %343, !dbg !1771

; <label>:308:                                    ; preds = %305
  %309 = bitcast i8** %57 to i64*, !dbg !1772
  %310 = load i64, i64* %309, align 8, !dbg !1772, !tbaa !1503
  %311 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1774
  %312 = bitcast i8** %311 to i64*, !dbg !1775
  store i64 %310, i64* %312, align 8, !dbg !1775, !tbaa !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  br label %343, !dbg !1776

; <label>:313:                                    ; preds = %299, %282, %296, %279
  %314 = load i32, i32* %21, align 4, !dbg !1777, !tbaa !1388
  %315 = icmp eq i32 %314, 0, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %315, label %316, label %331, !dbg !1779

; <label>:316:                                    ; preds = %313
  %317 = load i64, i64* %2, align 8, !dbg !1780, !tbaa !117
  %318 = xor i1 %255, true, !dbg !1781
  %319 = zext i1 %318 to i64, !dbg !1781
  %320 = shl nsw i64 %317, %319, !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  %321 = icmp sgt i64 %320, 0, !dbg !1785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br i1 %321, label %322, label %345, !dbg !1787

; <label>:322:                                    ; preds = %316
  %323 = load i8*, i8** %22, align 8, !dbg !1788, !tbaa !1437
  br label %324, !dbg !1789

; <label>:324:                                    ; preds = %324, %322
  %325 = phi i8* [ %328, %324 ], [ %323, %322 ], !dbg !1788
  %326 = phi i64 [ %329, %324 ], [ 0, %322 ]
  %327 = load i8*, i8** %20, align 8, !dbg !1789, !tbaa !1433
  %328 = call i8* @lpNext(i8* %327, i8* %325) #6, !dbg !1790
  store i8* %328, i8** %22, align 8, !dbg !1791, !tbaa !1437
  %329 = add nuw nsw i64 %326, 1, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  %330 = icmp eq i64 %329, %320, !dbg !1785
  br i1 %330, label %345, label %324, !dbg !1787, !llvm.loop !1794

; <label>:331:                                    ; preds = %313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1797
  br i1 %255, label %333, label %332, !dbg !1797

; <label>:332:                                    ; preds = %331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br label %333, !dbg !1798

; <label>:333:                                    ; preds = %332, %331
  %334 = phi i64 [ 4, %331 ], [ 5, %332 ], !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  %335 = load i8*, i8** %22, align 8, !dbg !1802, !tbaa !1437
  br label %336, !dbg !1801

; <label>:336:                                    ; preds = %333, %336
  %337 = phi i8* [ %335, %333 ], [ %341, %336 ], !dbg !1802
  %338 = phi i64 [ %334, %333 ], [ %339, %336 ]
  %339 = add nsw i64 %338, -1, !dbg !1803
  %340 = load i8*, i8** %20, align 8, !dbg !1804, !tbaa !1433
  %341 = call i8* @lpPrev(i8* %340, i8* %337) #6, !dbg !1805
  store i8* %341, i8** %22, align 8, !dbg !1806, !tbaa !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  %342 = icmp eq i64 %339, 0, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  br i1 %342, label %345, label %336, !dbg !1801, !llvm.loop !1807

; <label>:343:                                    ; preds = %305, %308, %302, %288, %291, %285
  %344 = phi i32 [ 0, %285 ], [ 1, %291 ], [ 1, %288 ], [ 0, %302 ], [ 1, %308 ], [ 1, %305 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1810
  br label %347

; <label>:345:                                    ; preds = %336, %324, %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1810
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #7, !dbg !1810
  br label %157

; <label>:346:                                    ; preds = %160, %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br label %61, !dbg !1431, !llvm.loop !1811

; <label>:347:                                    ; preds = %77, %71, %343
  %348 = phi i32 [ %344, %343 ], [ 0, %71 ], [ 0, %77 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  ret i32 %348, !dbg !1813
}

; Function Attrs: noredzone
declare dso_local i32 @raxPrev(%struct.raxIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpLast(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorGetField(%struct.streamIterator*, i8** nocapture, i8** nocapture, i64*, i64*) local_unnamed_addr #0 !dbg !1814 {
  %6 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 5, !dbg !1828
  %7 = load i32, i32* %6, align 8, !dbg !1828, !tbaa !1749
  %8 = and i32 %7, 2, !dbg !1830
  %9 = icmp eq i32 %8, 0, !dbg !1830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  br i1 %9, label %21, label %10, !dbg !1831

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 4, !dbg !1832
  %12 = load i8*, i8** %11, align 8, !dbg !1832, !tbaa !1755
  %13 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1834
  %14 = tail call i8* @lpGet(i8* %12, i64* %3, i8* nonnull %13) #6, !dbg !1835
  store i8* %14, i8** %1, align 8, !dbg !1836, !tbaa !234
  %15 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1837
  %16 = load i8*, i8** %15, align 8, !dbg !1837, !tbaa !1433
  %17 = load i8*, i8** %11, align 8, !dbg !1838, !tbaa !1755
  %18 = tail call i8* @lpNext(i8* %16, i8* %17) #6, !dbg !1839
  store i8* %18, i8** %11, align 8, !dbg !1840, !tbaa !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  %19 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11
  %20 = load i8*, i8** %19, align 8, !dbg !1842, !tbaa !1437
  br label %30, !dbg !1841

; <label>:21:                                     ; preds = %5
  %22 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 11, !dbg !1843
  %23 = load i8*, i8** %22, align 8, !dbg !1843, !tbaa !1437
  %24 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 13, i64 0, !dbg !1845
  %25 = tail call i8* @lpGet(i8* %23, i64* %3, i8* nonnull %24) #6, !dbg !1846
  store i8* %25, i8** %1, align 8, !dbg !1847, !tbaa !234
  %26 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1848
  %27 = load i8*, i8** %26, align 8, !dbg !1848, !tbaa !1433
  %28 = load i8*, i8** %22, align 8, !dbg !1849, !tbaa !1437
  %29 = tail call i8* @lpNext(i8* %27, i8* %28) #6, !dbg !1850
  store i8* %29, i8** %22, align 8, !dbg !1851, !tbaa !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30

; <label>:30:                                     ; preds = %21, %10
  %31 = phi i8** [ %26, %21 ], [ %15, %10 ], !dbg !1852
  %32 = phi i8** [ %22, %21 ], [ %19, %10 ], !dbg !1842
  %33 = phi i8* [ %29, %21 ], [ %20, %10 ], !dbg !1842
  %34 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 14, i64 0, !dbg !1853
  %35 = tail call i8* @lpGet(i8* %33, i64* %4, i8* nonnull %34) #6, !dbg !1854
  store i8* %35, i8** %2, align 8, !dbg !1855, !tbaa !234
  %36 = load i8*, i8** %31, align 8, !dbg !1852, !tbaa !1433
  %37 = load i8*, i8** %32, align 8, !dbg !1856, !tbaa !1437
  %38 = tail call i8* @lpNext(i8* %36, i8* %37) #6, !dbg !1857
  store i8* %38, i8** %32, align 8, !dbg !1858, !tbaa !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  ret void, !dbg !1859
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorRemoveEntry(%struct.streamIterator*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !1860 {
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
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 10, !dbg !1889
  %15 = load i8*, i8** %14, align 8, !dbg !1889, !tbaa !1433
  %16 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 12, !dbg !1891
  %17 = load i8*, i8** %16, align 8, !dbg !1891, !tbaa !1606
  %18 = bitcast i64* %9 to i8*, !dbg !1894
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !1894
  %19 = call i8* @lpGet(i8* %17, i64* nonnull %9, i8* null) #6, !dbg !1896
  %20 = icmp eq i8* %19, null, !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br i1 %20, label %21, label %23, !dbg !1899

; <label>:21:                                     ; preds = %2
  %22 = load i64, i64* %9, align 8, !dbg !1900, !tbaa !117
  br label %31, !dbg !1901

; <label>:23:                                     ; preds = %2
  %24 = bitcast i64* %10 to i8*, !dbg !1902
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #7, !dbg !1902
  %25 = load i64, i64* %9, align 8, !dbg !1903, !tbaa !117
  %26 = call i32 @string2ll(i8* nonnull %19, i64 %25, i64* nonnull %10) #6, !dbg !1905
  %27 = icmp eq i32 %26, 0, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  br i1 %27, label %28, label %29, !dbg !1907

; <label>:28:                                     ; preds = %23
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1907
  call void @_exit(i32 1) #8, !dbg !1907
  unreachable

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* %10, align 8, !dbg !1908, !tbaa !265
  store i64 %30, i64* %9, align 8, !dbg !1909, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #7, !dbg !1910
  br label %31

; <label>:31:                                     ; preds = %21, %29
  %32 = phi i64 [ %22, %21 ], [ %30, %29 ], !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %33 = shl i64 %32, 32, !dbg !1912
  %34 = ashr exact i64 %33, 32, !dbg !1912
  %35 = or i64 %34, 1, !dbg !1912
  %36 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1916
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1916
  %37 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %35) #6, !dbg !1917
  %38 = load i8*, i8** %16, align 8, !dbg !1919, !tbaa !234
  %39 = call i8* @lpInsert(i8* %15, i8* nonnull %36, i32 %37, i8* %38, i32 2, i8** nonnull %16) #6, !dbg !1920
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  %40 = bitcast i8** %11 to i8*, !dbg !1923
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #7, !dbg !1923
  %41 = call i8* @lpFirst(i8* %39) #6, !dbg !1924
  store i8* %41, i8** %11, align 8, !dbg !1925, !tbaa !234
  %42 = bitcast i64* %6 to i8*, !dbg !1928
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #7, !dbg !1928
  %43 = call i8* @lpGet(i8* %41, i64* nonnull %6, i8* null) #6, !dbg !1930
  %44 = icmp eq i8* %43, null, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  br i1 %44, label %45, label %47, !dbg !1933

; <label>:45:                                     ; preds = %31
  %46 = load i64, i64* %6, align 8, !dbg !1934, !tbaa !117
  br label %55, !dbg !1935

; <label>:47:                                     ; preds = %31
  %48 = bitcast i64* %7 to i8*, !dbg !1936
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1936
  %49 = load i64, i64* %6, align 8, !dbg !1937, !tbaa !117
  %50 = call i32 @string2ll(i8* nonnull %43, i64 %49, i64* nonnull %7) #6, !dbg !1939
  %51 = icmp eq i32 %50, 0, !dbg !1941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  br i1 %51, label %52, label %53, !dbg !1941

; <label>:52:                                     ; preds = %47
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1941
  call void @_exit(i32 1) #8, !dbg !1941
  unreachable

; <label>:53:                                     ; preds = %47
  %54 = load i64, i64* %7, align 8, !dbg !1942, !tbaa !265
  store i64 %54, i64* %6, align 8, !dbg !1943, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1944
  br label %55

; <label>:55:                                     ; preds = %45, %53
  %56 = phi i64 [ %46, %45 ], [ %54, %53 ], !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #7, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %57 = icmp eq i64 %56, 1, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  br i1 %57, label %58, label %68, !dbg !1948

; <label>:58:                                     ; preds = %55
  call void @lpFree(i8* %39) #6, !dbg !1949
  %59 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !1951
  %60 = load %struct.stream*, %struct.stream** %59, align 8, !dbg !1951, !tbaa !1382
  %61 = getelementptr inbounds %struct.stream, %struct.stream* %60, i64 0, i32 0, !dbg !1952
  %62 = load %struct.rax*, %struct.rax** %61, align 8, !dbg !1952, !tbaa !108
  %63 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !1953
  %64 = load i8*, i8** %63, align 8, !dbg !1953, !tbaa !1455
  %65 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !1954
  %66 = load i64, i64* %65, align 8, !dbg !1954, !tbaa !1453
  %67 = call i32 @raxRemove(%struct.rax* %62, i8* %64, i64 %66, i8** null) #6, !dbg !1955
  br label %106, !dbg !1956

; <label>:68:                                     ; preds = %55
  %69 = add nsw i64 %56, -1, !dbg !1957
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1961
  %70 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %69) #6, !dbg !1962
  %71 = load i8*, i8** %11, align 8, !dbg !1964, !tbaa !234
  %72 = call i8* @lpInsert(i8* %39, i8* nonnull %36, i32 %70, i8* %71, i32 2, i8** nonnull %11) #6, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  %73 = load i8*, i8** %11, align 8, !dbg !1968, !tbaa !234
  %74 = call i8* @lpNext(i8* %72, i8* %73) #6, !dbg !1969
  store i8* %74, i8** %11, align 8, !dbg !1970, !tbaa !234
  %75 = bitcast i64* %4 to i8*, !dbg !1973
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #7, !dbg !1973
  %76 = call i8* @lpGet(i8* %74, i64* nonnull %4, i8* null) #6, !dbg !1975
  %77 = icmp eq i8* %76, null, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  br i1 %77, label %78, label %80, !dbg !1978

; <label>:78:                                     ; preds = %68
  %79 = load i64, i64* %4, align 8, !dbg !1979, !tbaa !117
  br label %88, !dbg !1980

; <label>:80:                                     ; preds = %68
  %81 = bitcast i64* %5 to i8*, !dbg !1981
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %81) #7, !dbg !1981
  %82 = load i64, i64* %4, align 8, !dbg !1982, !tbaa !117
  %83 = call i32 @string2ll(i8* nonnull %76, i64 %82, i64* nonnull %5) #6, !dbg !1984
  %84 = icmp eq i32 %83, 0, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  br i1 %84, label %85, label %86, !dbg !1986

; <label>:85:                                     ; preds = %80
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 115) #6, !dbg !1986
  call void @_exit(i32 1) #8, !dbg !1986
  unreachable

; <label>:86:                                     ; preds = %80
  %87 = load i64, i64* %5, align 8, !dbg !1987, !tbaa !265
  store i64 %87, i64* %4, align 8, !dbg !1988, !tbaa !117
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %81) #7, !dbg !1989
  br label %88

; <label>:88:                                     ; preds = %78, %86
  %89 = phi i64 [ %79, %78 ], [ %87, %86 ], !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #7, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  %90 = add nsw i64 %89, 1, !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %36) #7, !dbg !1995
  %91 = call i32 @ll2string(i8* nonnull %36, i64 21, i64 %90) #6, !dbg !1996
  %92 = load i8*, i8** %11, align 8, !dbg !1998, !tbaa !234
  %93 = call i8* @lpInsert(i8* %72, i8* nonnull %36, i32 %91, i8* %92, i32 2, i8** nonnull %11) #6, !dbg !1999
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %36) #7, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  %94 = load i8*, i8** %14, align 8, !dbg !2002, !tbaa !1433
  %95 = icmp eq i8* %94, %93, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  %96 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 0, !dbg !2006
  br i1 %95, label %108, label %97, !dbg !2005

; <label>:97:                                     ; preds = %88
  %98 = load %struct.stream*, %struct.stream** %96, align 8, !dbg !2007, !tbaa !1382
  %99 = getelementptr inbounds %struct.stream, %struct.stream* %98, i64 0, i32 0, !dbg !2008
  %100 = load %struct.rax*, %struct.rax** %99, align 8, !dbg !2008, !tbaa !108
  %101 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 2, !dbg !2009
  %102 = load i8*, i8** %101, align 8, !dbg !2009, !tbaa !1455
  %103 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, i32 4, !dbg !2010
  %104 = load i64, i64* %103, align 8, !dbg !2010, !tbaa !1453
  %105 = call i32 @raxInsert(%struct.rax* %100, i8* %102, i64 %104, i8* %93, i8** null) #6, !dbg !2011
  br label %106, !dbg !2011

; <label>:106:                                    ; preds = %58, %97
  %107 = phi %struct.stream** [ %59, %58 ], [ %96, %97 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br label %108, !dbg !2013

; <label>:108:                                    ; preds = %106, %88
  %109 = phi %struct.stream** [ %96, %88 ], [ %107, %106 ], !dbg !2013
  %110 = load %struct.stream*, %struct.stream** %109, align 8, !dbg !2013, !tbaa !1382
  %111 = getelementptr inbounds %struct.stream, %struct.stream* %110, i64 0, i32 1, !dbg !2014
  %112 = load i64, i64* %111, align 8, !dbg !2015, !tbaa !974
  %113 = add i64 %112, -1, !dbg !2015
  store i64 %113, i64* %111, align 8, !dbg !2015, !tbaa !974
  %114 = bitcast %struct.streamID* %12 to i8*, !dbg !2016
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %114) #7, !dbg !2016
  %115 = bitcast %struct.streamID* %13 to i8*, !dbg !2016
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %115) #7, !dbg !2016
  %116 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 6, !dbg !2017
  %117 = load i32, i32* %116, align 4, !dbg !2017, !tbaa !1388
  %118 = icmp eq i32 %117, 0, !dbg !2018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br i1 %118, label %133, label %119, !dbg !2019

; <label>:119:                                    ; preds = %108
  %120 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 7, i64 0, !dbg !2020
  %121 = bitcast i64* %120 to i8*, !dbg !2020
  %122 = bitcast [2 x i64]* %3 to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %122) #7, !dbg !2024
  %123 = call i8* @memcpy(i8* nonnull %122, i8* nonnull %121, i64 16) #6, !dbg !2025
  %124 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !2026
  %125 = load i64, i64* %124, align 16, !dbg !2026, !tbaa !117
  %126 = call i64 @intrev64(i64 %125) #6, !dbg !2026
  %127 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 0, !dbg !2027
  store i64 %126, i64* %127, align 8, !dbg !2028, !tbaa !178
  %128 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !2029
  %129 = load i64, i64* %128, align 8, !dbg !2029, !tbaa !117
  %130 = call i64 @intrev64(i64 %129) #6, !dbg !2029
  %131 = getelementptr inbounds %struct.streamID, %struct.streamID* %12, i64 0, i32 1, !dbg !2030
  store i64 %130, i64* %131, align 8, !dbg !2031, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %122) #7, !dbg !2032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  %132 = bitcast %struct.streamID* %1 to i8*, !dbg !2033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %115, i8* align 8 %132, i64 16, i1 false), !dbg !2033, !tbaa.struct !1634
  br label %147, !dbg !2034

; <label>:133:                                    ; preds = %108
  %134 = bitcast %struct.streamID* %1 to i8*, !dbg !2035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %114, i8* align 8 %134, i64 16, i1 false), !dbg !2035, !tbaa.struct !1634
  %135 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 8, i64 0, !dbg !2036
  %136 = bitcast i64* %135 to i8*, !dbg !2036
  %137 = bitcast [2 x i64]* %3 to i8*, !dbg !2040
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %137) #7, !dbg !2040
  %138 = call i8* @memcpy(i8* nonnull %137, i8* nonnull %136, i64 16) #6, !dbg !2041
  %139 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 0, !dbg !2042
  %140 = load i64, i64* %139, align 16, !dbg !2042, !tbaa !117
  %141 = call i64 @intrev64(i64 %140) #6, !dbg !2042
  %142 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 0, !dbg !2043
  store i64 %141, i64* %142, align 8, !dbg !2044, !tbaa !178
  %143 = getelementptr inbounds [2 x i64], [2 x i64]* %3, i64 0, i64 1, !dbg !2045
  %144 = load i64, i64* %143, align 8, !dbg !2045, !tbaa !117
  %145 = call i64 @intrev64(i64 %144) #6, !dbg !2045
  %146 = getelementptr inbounds %struct.streamID, %struct.streamID* %13, i64 0, i32 1, !dbg !2046
  store i64 %145, i64* %146, align 8, !dbg !2047, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %137) #7, !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br label %147

; <label>:147:                                    ; preds = %133, %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %148 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !2056
  call void @raxStop(%struct.raxIterator* nonnull %148) #6, !dbg !2057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  %149 = load %struct.stream*, %struct.stream** %109, align 8, !dbg !2059, !tbaa !1382
  %150 = load i32, i32* %116, align 4, !dbg !2060, !tbaa !1388
  call void @streamIteratorStart(%struct.streamIterator* nonnull %0, %struct.stream* %149, %struct.streamID* nonnull %12, %struct.streamID* nonnull %13, i32 %150) #9, !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %115) #7, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %114) #7, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #7, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  ret void, !dbg !2062
}

; Function Attrs: noredzone nounwind
define dso_local void @streamIteratorStop(%struct.streamIterator*) local_unnamed_addr #0 !dbg !2050 {
  %2 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %0, i64 0, i32 9, !dbg !2064
  tail call void @raxStop(%struct.raxIterator* nonnull %2) #6, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  ret void, !dbg !2066
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamDeleteItem(%struct.stream*, %struct.streamID* readonly) local_unnamed_addr #0 !dbg !2067 {
  %3 = alloca %struct.streamIterator, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamIterator* %3 to i8*, !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %6) #7, !dbg !2080
  call void @streamIteratorStart(%struct.streamIterator* nonnull %3, %struct.stream* %0, %struct.streamID* %1, %struct.streamID* %1, i32 0) #9, !dbg !2082
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !2083
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2083
  %8 = bitcast i64* %5 to i8*, !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2084
  %9 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4, i64* nonnull %5) #9, !dbg !2087
  %10 = icmp eq i32 %9, 0, !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2089
  br i1 %10, label %12, label %11, !dbg !2089

; <label>:11:                                     ; preds = %2
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %3, %struct.streamID* nonnull %4) #9, !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2092
  br label %12, !dbg !2092

; <label>:12:                                     ; preds = %2, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %2 ], !dbg !2093
  %14 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %3, i64 0, i32 9, !dbg !2096
  call void @raxStop(%struct.raxIterator* nonnull %14) #6, !dbg !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2099
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2099
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %6) #7, !dbg !2099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2100
  ret i32 %13, !dbg !2100
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStreamID(%struct.client*, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2101 {
  %3 = tail call i8* @sdsempty() #6, !dbg !2328
  %4 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 0, !dbg !2329
  %5 = load i64, i64* %4, align 8, !dbg !2329, !tbaa !178
  %6 = getelementptr inbounds %struct.streamID, %struct.streamID* %1, i64 0, i32 1, !dbg !2330
  %7 = load i64, i64* %6, align 8, !dbg !2330, !tbaa !188
  %8 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %5, i64 %7) #6, !dbg !2331
  tail call void @addReplyBulkSds(%struct.client* %0, i8* %8) #6, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  ret void, !dbg !2334
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisObject* @createObjectFromStreamID(%struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !2335 {
  %2 = tail call i8* @sdsempty() #6, !dbg !2341
  %3 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 0, !dbg !2342
  %4 = load i64, i64* %3, align 8, !dbg !2342, !tbaa !178
  %5 = getelementptr inbounds %struct.streamID, %struct.streamID* %0, i64 0, i32 1, !dbg !2343
  %6 = load i64, i64* %5, align 8, !dbg !2343, !tbaa !188
  %7 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %4, i64 %6) #6, !dbg !2344
  %8 = tail call %struct.redisObject* @createObject(i32 0, i8* %7) #6, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  ret %struct.redisObject* %8, !dbg !2346
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamPropagateXCLAIM(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*, %struct.redisObject*, %struct.streamNACK* nocapture readonly) local_unnamed_addr #0 !dbg !2347 {
  %7 = alloca [14 x %struct.redisObject*], align 16
  %8 = bitcast [14 x %struct.redisObject*]* %7 to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %8) #7, !dbg !2381
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 6) #6, !dbg !2383
  %10 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2384
  store %struct.redisObject* %9, %struct.redisObject** %10, align 16, !dbg !2385, !tbaa !234
  %11 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 1, !dbg !2386
  store %struct.redisObject* %1, %struct.redisObject** %11, align 8, !dbg !2387, !tbaa !234
  %12 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 2, !dbg !2388
  store %struct.redisObject* %3, %struct.redisObject** %12, align 16, !dbg !2389, !tbaa !234
  %13 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 2, !dbg !2390
  %14 = load %struct.streamConsumer*, %struct.streamConsumer** %13, align 8, !dbg !2390, !tbaa !2391
  %15 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %14, i64 0, i32 1, !dbg !2393
  %16 = load i8*, i8** %15, align 8, !dbg !2393, !tbaa !2394
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !2398
  %18 = load i8, i8* %17, align 1, !dbg !2398, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  %19 = trunc i8 %18 to i3, !dbg !2400
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !2400

; <label>:20:                                     ; preds = %6
  %21 = lshr i8 %18, 3, !dbg !2401
  %22 = zext i8 %21 to i64, !dbg !2401
  br label %41, !dbg !2402

; <label>:23:                                     ; preds = %6
  %24 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !2403
  %25 = load i8, i8* %24, align 1, !dbg !2404, !tbaa !674
  %26 = zext i8 %25 to i64, !dbg !2403
  br label %41, !dbg !2405

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !2406
  %29 = bitcast i8* %28 to i16*, !dbg !2407
  %30 = load i16, i16* %29, align 1, !dbg !2407, !tbaa !685
  %31 = zext i16 %30 to i64, !dbg !2406
  br label %41, !dbg !2408

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !2409
  %34 = bitcast i8* %33 to i32*, !dbg !2410
  %35 = load i32, i32* %34, align 1, !dbg !2410, !tbaa !690
  %36 = zext i32 %35 to i64, !dbg !2409
  br label %41, !dbg !2411

; <label>:37:                                     ; preds = %6
  %38 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !2412
  %39 = bitcast i8* %38 to i64*, !dbg !2413
  %40 = load i64, i64* %39, align 1, !dbg !2413, !tbaa !117
  br label %41, !dbg !2414

; <label>:41:                                     ; preds = %6, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %6 ], !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2417
  %43 = tail call %struct.redisObject* @createStringObject(i8* %16, i64 %42) #6, !dbg !2418
  %44 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 3, !dbg !2419
  store %struct.redisObject* %43, %struct.redisObject** %44, align 8, !dbg !2420, !tbaa !234
  %45 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 0) #6, !dbg !2421
  %46 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 4, !dbg !2422
  store %struct.redisObject* %45, %struct.redisObject** %46, align 16, !dbg !2423, !tbaa !234
  %47 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 5, !dbg !2424
  store %struct.redisObject* %4, %struct.redisObject** %47, align 8, !dbg !2425, !tbaa !234
  %48 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4) #6, !dbg !2426
  %49 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 6, !dbg !2427
  store %struct.redisObject* %48, %struct.redisObject** %49, align 16, !dbg !2428, !tbaa !234
  %50 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 0, !dbg !2429
  %51 = load i64, i64* %50, align 8, !dbg !2429, !tbaa !2430
  %52 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %51) #6, !dbg !2431
  %53 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 7, !dbg !2432
  store %struct.redisObject* %52, %struct.redisObject** %53, align 8, !dbg !2433, !tbaa !234
  %54 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i64 10) #6, !dbg !2434
  %55 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 8, !dbg !2435
  store %struct.redisObject* %54, %struct.redisObject** %55, align 16, !dbg !2436, !tbaa !234
  %56 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %5, i64 0, i32 1, !dbg !2437
  %57 = load i64, i64* %56, align 8, !dbg !2437, !tbaa !2438
  %58 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %57) #6, !dbg !2439
  %59 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 9, !dbg !2440
  store %struct.redisObject* %58, %struct.redisObject** %59, align 8, !dbg !2441, !tbaa !234
  %60 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 5) #6, !dbg !2442
  %61 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 10, !dbg !2443
  store %struct.redisObject* %60, %struct.redisObject** %61, align 16, !dbg !2444, !tbaa !234
  %62 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 6) #6, !dbg !2445
  %63 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 11, !dbg !2446
  store %struct.redisObject* %62, %struct.redisObject** %63, align 8, !dbg !2447, !tbaa !234
  %64 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 6) #6, !dbg !2448
  %65 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 12, !dbg !2449
  store %struct.redisObject* %64, %struct.redisObject** %65, align 16, !dbg !2450, !tbaa !234
  %66 = tail call i8* @sdsempty() #6, !dbg !2453
  %67 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2454
  %68 = load i64, i64* %67, align 8, !dbg !2454, !tbaa !178
  %69 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2455
  %70 = load i64, i64* %69, align 8, !dbg !2455, !tbaa !188
  %71 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %68, i64 %70) #6, !dbg !2456
  %72 = tail call %struct.redisObject* @createObject(i32 0, i8* %71) #6, !dbg !2457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2458
  %73 = getelementptr inbounds [14 x %struct.redisObject*], [14 x %struct.redisObject*]* %7, i64 0, i64 13, !dbg !2459
  store %struct.redisObject* %72, %struct.redisObject** %73, align 8, !dbg !2460, !tbaa !234
  %74 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 67), align 8, !dbg !2461, !tbaa !2462
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2463
  %76 = load %struct.redisDb*, %struct.redisDb** %75, align 8, !dbg !2463, !tbaa !2464
  %77 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %76, i64 0, i32 5, !dbg !2468
  %78 = load i32, i32* %77, align 8, !dbg !2468, !tbaa !2469
  call void @propagate(%struct.redisCommand* %74, i32 %78, %struct.redisObject** nonnull %10, i32 14, i32 3) #6, !dbg !2471
  %79 = load %struct.redisObject*, %struct.redisObject** %10, align 16, !dbg !2472, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %79) #6, !dbg !2473
  %80 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !2474, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %80) #6, !dbg !2475
  %81 = load %struct.redisObject*, %struct.redisObject** %46, align 16, !dbg !2476, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %81) #6, !dbg !2477
  %82 = load %struct.redisObject*, %struct.redisObject** %49, align 16, !dbg !2478, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %82) #6, !dbg !2479
  %83 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !2480, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %83) #6, !dbg !2481
  %84 = load %struct.redisObject*, %struct.redisObject** %55, align 16, !dbg !2482, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %84) #6, !dbg !2483
  %85 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2484, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %85) #6, !dbg !2485
  %86 = load %struct.redisObject*, %struct.redisObject** %61, align 16, !dbg !2486, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %86) #6, !dbg !2487
  %87 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !2488, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %87) #6, !dbg !2489
  %88 = load %struct.redisObject*, %struct.redisObject** %65, align 16, !dbg !2490, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %88) #6, !dbg !2491
  %89 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !2492, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %89) #6, !dbg !2493
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %8) #7, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2494
  ret void, !dbg !2494
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
define dso_local void @streamPropagateGroupID(%struct.client* nocapture readonly, %struct.redisObject*, %struct.streamCG* nocapture readonly, %struct.redisObject*) local_unnamed_addr #0 !dbg !2495 {
  %5 = alloca [5 x %struct.redisObject*], align 16
  %6 = bitcast [5 x %struct.redisObject*]* %5 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7, !dbg !2511
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 6) #6, !dbg !2513
  %8 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 0, !dbg !2514
  store %struct.redisObject* %7, %struct.redisObject** %8, align 16, !dbg !2515, !tbaa !234
  %9 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #6, !dbg !2516
  %10 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 1, !dbg !2517
  store %struct.redisObject* %9, %struct.redisObject** %10, align 8, !dbg !2518, !tbaa !234
  %11 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 2, !dbg !2519
  store %struct.redisObject* %1, %struct.redisObject** %11, align 16, !dbg !2520, !tbaa !234
  %12 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 3, !dbg !2521
  store %struct.redisObject* %3, %struct.redisObject** %12, align 8, !dbg !2522, !tbaa !234
  %13 = tail call i8* @sdsempty() #6, !dbg !2525
  %14 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 0, !dbg !2526
  %15 = load i64, i64* %14, align 8, !dbg !2526, !tbaa !178
  %16 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %2, i64 0, i32 0, i32 1, !dbg !2527
  %17 = load i64, i64* %16, align 8, !dbg !2527, !tbaa !188
  %18 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %15, i64 %17) #6, !dbg !2528
  %19 = tail call %struct.redisObject* @createObject(i32 0, i8* %18) #6, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2530
  %20 = getelementptr inbounds [5 x %struct.redisObject*], [5 x %struct.redisObject*]* %5, i64 0, i64 4, !dbg !2531
  store %struct.redisObject* %19, %struct.redisObject** %20, align 16, !dbg !2532, !tbaa !234
  %21 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 68), align 8, !dbg !2533, !tbaa !2534
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2535
  %23 = load %struct.redisDb*, %struct.redisDb** %22, align 8, !dbg !2535, !tbaa !2464
  %24 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %23, i64 0, i32 5, !dbg !2536
  %25 = load i32, i32* %24, align 8, !dbg !2536, !tbaa !2469
  call void @propagate(%struct.redisCommand* %21, i32 %25, %struct.redisObject** nonnull %8, i32 5, i32 3) #6, !dbg !2537
  %26 = load %struct.redisObject*, %struct.redisObject** %8, align 16, !dbg !2538, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %26) #6, !dbg !2539
  %27 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2540, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %27) #6, !dbg !2541
  %28 = load %struct.redisObject*, %struct.redisObject** %20, align 16, !dbg !2542, !tbaa !234
  call void @decrRefCount(%struct.redisObject* %28) #6, !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7, !dbg !2544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  ret void, !dbg !2544
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRange(%struct.client*, %struct.stream*, %struct.streamID* readonly, %struct.streamID*, i64, i32, %struct.streamCG*, %struct.streamConsumer*, i32, %struct.sreamPropInfo* readonly) local_unnamed_addr #0 !dbg !2545 {
  %11 = alloca [2 x i64], align 16
  %12 = alloca %struct.streamIterator, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.streamID, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [16 x i8], align 16
  %20 = bitcast %struct.streamIterator* %12 to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %20) #7, !dbg !2600
  %21 = bitcast i64* %13 to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2601
  %22 = bitcast %struct.streamID* %14 to i8*, !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2602
  %23 = icmp ne %struct.streamCG* %6, null, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2606
  br i1 %23, label %24, label %29, !dbg !2606

; <label>:24:                                     ; preds = %10
  %25 = and i32 %8, 4, !dbg !2607
  %26 = icmp eq i32 %25, 0, !dbg !2607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2608
  br i1 %26, label %29, label %27, !dbg !2608

; <label>:27:                                     ; preds = %24
  %28 = tail call i64 @streamReplyWithRangeFromConsumerPEL(%struct.client* %0, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i64 %4, %struct.streamConsumer* %7) #9, !dbg !2609
  br label %167, !dbg !2611

; <label>:29:                                     ; preds = %24, %10
  %30 = and i32 %8, 2, !dbg !2612
  %31 = icmp eq i32 %30, 0, !dbg !2612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  br i1 %31, label %32, label %34, !dbg !2614

; <label>:32:                                     ; preds = %29
  %33 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #6, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br label %34, !dbg !2616

; <label>:34:                                     ; preds = %29, %32
  %35 = phi i8* [ null, %29 ], [ %33, %32 ], !dbg !2617
  call void @streamIteratorStart(%struct.streamIterator* nonnull %12, %struct.stream* %1, %struct.streamID* %2, %struct.streamID* %3, i32 %5) #9, !dbg !2619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  %36 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %12, %struct.streamID* nonnull %14, i64* nonnull %13) #9, !dbg !2623
  %37 = icmp eq i32 %36, 0, !dbg !2620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  br i1 %37, label %162, label %38, !dbg !2620

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.streamID, %struct.streamID* %14, i64 0, i32 0
  %40 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 0, i32 0
  %41 = getelementptr inbounds %struct.streamID, %struct.streamID* %14, i64 0, i32 1
  %42 = bitcast %struct.streamCG* %6 to i8*
  %43 = bitcast i8** %15 to i8*
  %44 = bitcast i8** %16 to i8*
  %45 = bitcast i64* %17 to i8*
  %46 = bitcast i64* %18 to i8*
  %47 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 0, i32 1
  %48 = and i32 %8, 1
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i64 %4, 0
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %52 = bitcast [2 x i64]* %11 to i8*
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %55 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %6, i64 0, i32 1
  %56 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %7, i64 0, i32 2
  %57 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %9, i64 0, i32 0
  %58 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %9, i64 0, i32 1
  %59 = icmp eq %struct.sreamPropInfo* %9, null
  br label %60, !dbg !2620

; <label>:60:                                     ; preds = %38, %159
  %61 = phi i64 [ 0, %38 ], [ %156, %159 ]
  %62 = phi i32 [ 0, %38 ], [ %79, %159 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2624
  %63 = load i64, i64* %39, align 8, !dbg !2626, !tbaa !178
  br i1 %23, label %64, label %78, !dbg !2624

; <label>:64:                                     ; preds = %60
  %65 = load i64, i64* %40, align 8, !dbg !2630, !tbaa !178
  %66 = icmp ugt i64 %63, %65, !dbg !2631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  br i1 %66, label %67, label %68, !dbg !2632

; <label>:67:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2633
  br label %75, !dbg !2633

; <label>:68:                                     ; preds = %64
  %69 = icmp ult i64 %63, %65, !dbg !2634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2635
  br i1 %69, label %74, label %70, !dbg !2635

; <label>:70:                                     ; preds = %68
  %71 = load i64, i64* %41, align 8, !dbg !2636, !tbaa !188
  %72 = load i64, i64* %47, align 8, !dbg !2637, !tbaa !188
  %73 = icmp ugt i64 %71, %72, !dbg !2638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  br i1 %73, label %75, label %74, !dbg !2639

; <label>:74:                                     ; preds = %70, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  br label %76

; <label>:75:                                     ; preds = %70, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %42, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2643, !tbaa.struct !1634
  br label %76, !dbg !2645

; <label>:76:                                     ; preds = %75, %74
  %77 = phi i32 [ %62, %74 ], [ 1, %75 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  br label %78, !dbg !2647

; <label>:78:                                     ; preds = %76, %60
  %79 = phi i32 [ %62, %60 ], [ %77, %76 ], !dbg !2648
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2647
  %80 = call i8* @sdsempty() #6, !dbg !2652
  %81 = load i64, i64* %41, align 8, !dbg !2653, !tbaa !188
  %82 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %63, i64 %81) #6, !dbg !2654
  call void @addReplyBulkSds(%struct.client* %0, i8* %82) #6, !dbg !2656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  %83 = load i64, i64* %13, align 8, !dbg !2658, !tbaa !117
  %84 = shl nsw i64 %83, 1, !dbg !2659
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 %84) #6, !dbg !2660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2661
  %85 = add nsw i64 %83, -1, !dbg !2662
  store i64 %85, i64* %13, align 8, !dbg !2662, !tbaa !117
  %86 = icmp eq i64 %83, 0, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2661
  br i1 %86, label %96, label %87, !dbg !2661

; <label>:87:                                     ; preds = %78, %87
  %88 = phi i64 [ %93, %87 ], [ %85, %78 ], !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #7, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #7, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #7, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #7, !dbg !2664
  call void @streamIteratorGetField(%struct.streamIterator* nonnull %12, i8** nonnull %15, i8** nonnull %16, i64* nonnull %17, i64* nonnull %18) #9, !dbg !2669
  %89 = load i8*, i8** %15, align 8, !dbg !2670, !tbaa !234
  %90 = load i64, i64* %17, align 8, !dbg !2671, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %89, i64 %90) #6, !dbg !2672
  %91 = load i8*, i8** %16, align 8, !dbg !2673, !tbaa !234
  %92 = load i64, i64* %18, align 8, !dbg !2674, !tbaa !117
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %91, i64 %92) #6, !dbg !2675
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #7, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #7, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #7, !dbg !2676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2661
  %93 = add nsw i64 %88, -1, !dbg !2662
  %94 = icmp eq i64 %88, 0, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2661
  br i1 %94, label %95, label %87, !dbg !2661, !llvm.loop !2677

; <label>:95:                                     ; preds = %87
  store i64 -1, i64* %13, align 8, !dbg !2662, !tbaa !117
  br label %96, !dbg !2661

; <label>:96:                                     ; preds = %95, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br i1 %23, label %97, label %149, !dbg !2678

; <label>:97:                                     ; preds = %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2679
  br i1 %49, label %98, label %149, !dbg !2679

; <label>:98:                                     ; preds = %97
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #7, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #7, !dbg !2684
  %99 = call i64 @intrev64(i64 %63) #6, !dbg !2685
  store i64 %99, i64* %53, align 16, !dbg !2686, !tbaa !117
  %100 = call i64 @intrev64(i64 %81) #6, !dbg !2687
  store i64 %100, i64* %54, align 8, !dbg !2688, !tbaa !117
  %101 = call i8* @memcpy(i8* nonnull %51, i8* nonnull %52, i64 16) #6, !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #7, !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  %102 = call i8* @zmalloc(i64 24) #6, !dbg !2699
  %103 = call i64 @mstime() #6, !dbg !2700
  %104 = bitcast i8* %102 to i64*, !dbg !2701
  store i64 %103, i64* %104, align 8, !dbg !2702, !tbaa !2430
  %105 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2703
  %106 = bitcast i8* %105 to i64*, !dbg !2703
  store i64 1, i64* %106, align 8, !dbg !2704, !tbaa !2438
  %107 = getelementptr inbounds i8, i8* %102, i64 16, !dbg !2705
  %108 = bitcast i8* %107 to %struct.streamConsumer**, !dbg !2705
  store %struct.streamConsumer* %7, %struct.streamConsumer** %108, align 8, !dbg !2706, !tbaa !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  %109 = load %struct.rax*, %struct.rax** %55, align 8, !dbg !2708, !tbaa !155
  %110 = call i32 @raxTryInsert(%struct.rax* %109, i8* nonnull %51, i64 16, i8* %102, i8** null) #6, !dbg !2709
  %111 = load %struct.rax*, %struct.rax** %56, align 8, !dbg !2711, !tbaa !2712
  %112 = call i32 @raxTryInsert(%struct.rax* %111, i8* nonnull %51, i64 16, i8* %102, i8** null) #6, !dbg !2713
  %113 = icmp eq i32 %110, 0, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  br i1 %113, label %114, label %134, !dbg !2717

; <label>:114:                                    ; preds = %98
  call void @zfree(i8* %102) #6, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  %115 = load %struct.rax*, %struct.rax** %55, align 8, !dbg !2728, !tbaa !155
  %116 = call i8* @raxFind(%struct.rax* %115, i8* nonnull %51, i64 16) #6, !dbg !2729
  %117 = bitcast i8* %116 to %struct.streamNACK*, !dbg !2729
  %118 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !2731, !tbaa !234
  %119 = icmp eq %struct.streamNACK* %118, %117, !dbg !2731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2731
  br i1 %119, label %120, label %121, !dbg !2731

; <label>:120:                                    ; preds = %114
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 969) #6, !dbg !2731
  call void @_exit(i32 1) #8, !dbg !2731
  unreachable

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds i8, i8* %116, i64 16, !dbg !2732
  %123 = bitcast i8* %122 to %struct.streamConsumer**, !dbg !2732
  %124 = load %struct.streamConsumer*, %struct.streamConsumer** %123, align 8, !dbg !2732, !tbaa !2391
  %125 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %124, i64 0, i32 2, !dbg !2733
  %126 = load %struct.rax*, %struct.rax** %125, align 8, !dbg !2733, !tbaa !2712
  %127 = call i32 @raxRemove(%struct.rax* %126, i8* nonnull %51, i64 16, i8** null) #6, !dbg !2734
  store %struct.streamConsumer* %7, %struct.streamConsumer** %123, align 8, !dbg !2735, !tbaa !2391
  %128 = call i64 @mstime() #6, !dbg !2736
  %129 = bitcast i8* %116 to i64*, !dbg !2737
  store i64 %128, i64* %129, align 8, !dbg !2738, !tbaa !2430
  %130 = getelementptr inbounds i8, i8* %116, i64 8, !dbg !2739
  %131 = bitcast i8* %130 to i64*, !dbg !2739
  store i64 1, i64* %131, align 8, !dbg !2740, !tbaa !2438
  %132 = load %struct.rax*, %struct.rax** %56, align 8, !dbg !2741, !tbaa !2712
  %133 = call i32 @raxInsert(%struct.rax* %132, i8* nonnull %51, i64 16, i8* %116, i8** null) #6, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br label %140, !dbg !2743

; <label>:134:                                    ; preds = %98
  %135 = bitcast i8* %102 to %struct.streamNACK*, !dbg !2699
  %136 = icmp eq i32 %110, 1, !dbg !2745
  %137 = icmp eq i32 %112, 0, !dbg !2747
  %138 = and i1 %136, %137, !dbg !2748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br i1 %138, label %139, label %140, !dbg !2748

; <label>:139:                                    ; preds = %134
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 978, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2749
  call void @_exit(i32 1) #8, !dbg !2749
  unreachable

; <label>:140:                                    ; preds = %134, %121
  %141 = phi %struct.streamNACK* [ %117, %121 ], [ %135, %134 ], !dbg !2751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2752
  br i1 %59, label %148, label %142, !dbg !2752

; <label>:142:                                    ; preds = %140
  %143 = call i8* @sdsempty() #6, !dbg !2755
  %144 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %63, i64 %81) #6, !dbg !2756
  %145 = call %struct.redisObject* @createObject(i32 0, i8* %144) #6, !dbg !2757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  %146 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2760, !tbaa !2761
  %147 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2763, !tbaa !2764
  call void @streamPropagateXCLAIM(%struct.client* %0, %struct.redisObject* %146, %struct.streamCG* nonnull %6, %struct.redisObject* %147, %struct.redisObject* %145, %struct.streamNACK* %141) #9, !dbg !2765
  call void @decrRefCount(%struct.redisObject* %145) #6, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  br label %148, !dbg !2767

; <label>:148:                                    ; preds = %140, %142
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #7, !dbg !2768
  br label %154, !dbg !2769

; <label>:149:                                    ; preds = %97, %96
  %150 = icmp eq i32 %79, 0, !dbg !2770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2773
  br i1 %150, label %155, label %151, !dbg !2773

; <label>:151:                                    ; preds = %149
  %152 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2774, !tbaa !2761
  %153 = load %struct.redisObject*, %struct.redisObject** %58, align 8, !dbg !2775, !tbaa !2764
  call void @streamPropagateGroupID(%struct.client* %0, %struct.redisObject* %152, %struct.streamCG* %6, %struct.redisObject* %153) #9, !dbg !2776
  br label %154, !dbg !2776

; <label>:154:                                    ; preds = %148, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  br label %155, !dbg !2777

; <label>:155:                                    ; preds = %154, %149
  %156 = add i64 %61, 1, !dbg !2777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2778
  br i1 %50, label %159, label %157, !dbg !2778

; <label>:157:                                    ; preds = %155
  %158 = icmp eq i64 %156, %4, !dbg !2780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  br i1 %158, label %162, label %159, !dbg !2781

; <label>:159:                                    ; preds = %155, %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  %160 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %12, %struct.streamID* nonnull %14, i64* nonnull %13) #9, !dbg !2623
  %161 = icmp eq i32 %160, 0, !dbg !2620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  br i1 %161, label %162, label %60, !dbg !2620, !llvm.loop !2782

; <label>:162:                                    ; preds = %157, %159, %34
  %163 = phi i64 [ 0, %34 ], [ %4, %157 ], [ %156, %159 ], !dbg !2648
  %164 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %12, i64 0, i32 9, !dbg !2786
  call void @raxStop(%struct.raxIterator* nonnull %164) #6, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  %165 = icmp eq i8* %35, null, !dbg !2789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2791
  br i1 %165, label %167, label %166, !dbg !2791

; <label>:166:                                    ; preds = %162
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* nonnull %35, i64 %163) #6, !dbg !2792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  br label %167, !dbg !2792

; <label>:167:                                    ; preds = %166, %162, %27
  %168 = phi i64 [ %28, %27 ], [ %163, %162 ], [ %163, %166 ], !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #7, !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %20) #7, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  ret i64 %168, !dbg !2794
}

; Function Attrs: noredzone nounwind
define dso_local i64 @streamReplyWithRangeFromConsumerPEL(%struct.client*, %struct.stream*, %struct.streamID* nocapture readonly, %struct.streamID*, i64, %struct.streamConsumer* nocapture readonly) local_unnamed_addr #0 !dbg !2795 {
  %7 = alloca [2 x i64], align 16
  %8 = alloca %struct.raxIterator, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.streamID, align 8
  %12 = bitcast %struct.raxIterator* %8 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %12) #7, !dbg !2832
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2833
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0, !dbg !2835
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2835
  %15 = bitcast [2 x i64]* %7 to i8*, !dbg !2839
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2839
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !2840
  %17 = load i64, i64* %16, align 8, !dbg !2840, !tbaa !178
  %18 = tail call i64 @intrev64(i64 %17) #6, !dbg !2840
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0, !dbg !2841
  store i64 %18, i64* %19, align 16, !dbg !2842, !tbaa !117
  %20 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !2843
  %21 = load i64, i64* %20, align 8, !dbg !2843, !tbaa !188
  %22 = tail call i64 @intrev64(i64 %21) #6, !dbg !2843
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1, !dbg !2844
  store i64 %22, i64* %23, align 8, !dbg !2845, !tbaa !117
  %24 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %15, i64 16) #6, !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2847
  %25 = icmp ne %struct.streamID* %3, null, !dbg !2848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  br i1 %25, label %26, label %34, !dbg !2849

; <label>:26:                                     ; preds = %6
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2852
  %27 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !2853
  %28 = load i64, i64* %27, align 8, !dbg !2853, !tbaa !178
  %29 = call i64 @intrev64(i64 %28) #6, !dbg !2853
  store i64 %29, i64* %19, align 16, !dbg !2854, !tbaa !117
  %30 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !2855
  %31 = load i64, i64* %30, align 8, !dbg !2855, !tbaa !188
  %32 = call i64 @intrev64(i64 %31) #6, !dbg !2855
  store i64 %32, i64* %23, align 8, !dbg !2856, !tbaa !117
  %33 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %15, i64 16) #6, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  br label %34, !dbg !2859

; <label>:34:                                     ; preds = %26, %6
  %35 = call i8* @addDeferredMultiBulkLength(%struct.client* %0) #6, !dbg !2861
  %36 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %5, i64 0, i32 2, !dbg !2863
  %37 = load %struct.rax*, %struct.rax** %36, align 8, !dbg !2863, !tbaa !2712
  call void @raxStart(%struct.raxIterator* nonnull %8, %struct.rax* %37) #6, !dbg !2865
  %38 = call i32 @raxSeek(%struct.raxIterator* nonnull %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %13, i64 16) #6, !dbg !2866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  %39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 2, !dbg !2868
  %40 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #6, !dbg !2870
  %41 = icmp eq i32 %40, 0, !dbg !2870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  br i1 %41, label %91, label %42, !dbg !2871

; <label>:42:                                     ; preds = %34
  %43 = icmp eq i64 %4, 0
  %44 = bitcast %struct.streamID* %3 to i8*
  %45 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 4
  %46 = bitcast %struct.streamID* %11 to i8*
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 0
  %48 = getelementptr inbounds %struct.streamID, %struct.streamID* %11, i64 0, i32 1
  %49 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i64 0, i32 3
  %50 = bitcast i8** %49 to %struct.streamNACK**
  br label %51, !dbg !2871

; <label>:51:                                     ; preds = %42, %87
  %52 = phi i64 [ 0, %42 ], [ %88, %87 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2872
  br i1 %43, label %55, label %53, !dbg !2872

; <label>:53:                                     ; preds = %51
  %54 = icmp ult i64 %52, %4, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  br i1 %54, label %55, label %91, !dbg !2867

; <label>:55:                                     ; preds = %51, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  br i1 %25, label %56, label %61, !dbg !2874

; <label>:56:                                     ; preds = %55
  %57 = load i8*, i8** %39, align 8, !dbg !2868, !tbaa !706
  %58 = load i64, i64* %45, align 8, !dbg !2875, !tbaa !704
  %59 = call i32 @memcmp(i8* %57, i8* %44, i64 %58) #6, !dbg !2876
  %60 = icmp sgt i32 %59, 0, !dbg !2877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  br i1 %60, label %91, label %61, !dbg !2878

; <label>:61:                                     ; preds = %56, %55
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #7, !dbg !2879
  %62 = load i8*, i8** %39, align 8, !dbg !2880, !tbaa !706
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2884
  %63 = call i8* @memcpy(i8* nonnull %15, i8* %62, i64 16) #6, !dbg !2885
  %64 = load i64, i64* %19, align 16, !dbg !2886, !tbaa !117
  %65 = call i64 @intrev64(i64 %64) #6, !dbg !2886
  store i64 %65, i64* %47, align 8, !dbg !2887, !tbaa !178
  %66 = load i64, i64* %23, align 8, !dbg !2888, !tbaa !117
  %67 = call i64 @intrev64(i64 %66) #6, !dbg !2888
  store i64 %67, i64* %48, align 8, !dbg !2889, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2890
  %68 = call i64 @streamReplyWithRange(%struct.client* %0, %struct.stream* %1, %struct.streamID* nonnull %11, %struct.streamID* nonnull %11, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !2891
  %69 = icmp eq i64 %68, 0, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  br i1 %69, label %70, label %80, !dbg !2893

; <label>:70:                                     ; preds = %61
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !2894
  %71 = load i8*, i8** %39, align 8, !dbg !2895, !tbaa !706
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2899
  %72 = call i8* @memcpy(i8* nonnull %15, i8* %71, i64 16) #6, !dbg !2900
  %73 = load i64, i64* %19, align 16, !dbg !2901, !tbaa !117
  %74 = call i64 @intrev64(i64 %73) #6, !dbg !2901
  %75 = load i64, i64* %23, align 8, !dbg !2902, !tbaa !117
  %76 = call i64 @intrev64(i64 %75) #6, !dbg !2902
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  %77 = call i8* @sdsempty() #6, !dbg !2907
  %78 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %74, i64 %76) #6, !dbg !2908
  call void @addReplyBulkSds(%struct.client* %0, i8* %78) #6, !dbg !2910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2911
  %79 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !2912, !tbaa !2913
  call void @addReply(%struct.client* %0, %struct.redisObject* %79) #6, !dbg !2915
  br label %87, !dbg !2916

; <label>:80:                                     ; preds = %61
  %81 = load %struct.streamNACK*, %struct.streamNACK** %50, align 8, !dbg !2917, !tbaa !525
  %82 = call i64 @mstime() #6, !dbg !2919
  %83 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %81, i64 0, i32 0, !dbg !2920
  store i64 %82, i64* %83, align 8, !dbg !2921, !tbaa !2430
  %84 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %81, i64 0, i32 1, !dbg !2922
  %85 = load i64, i64* %84, align 8, !dbg !2923, !tbaa !2438
  %86 = add i64 %85, 1, !dbg !2923
  store i64 %86, i64* %84, align 8, !dbg !2923, !tbaa !2438
  br label %87

; <label>:87:                                     ; preds = %80, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %88 = add i64 %52, 1, !dbg !2924
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #7, !dbg !2925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  %89 = call i32 @raxNext(%struct.raxIterator* nonnull %8) #6, !dbg !2870
  %90 = icmp eq i32 %89, 0, !dbg !2870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  br i1 %90, label %91, label %51, !dbg !2871, !llvm.loop !2926

; <label>:91:                                     ; preds = %53, %56, %87, %34
  %92 = phi i64 [ 0, %34 ], [ %88, %87 ], [ %52, %56 ], [ %52, %53 ], !dbg !2927
  call void @raxStop(%struct.raxIterator* nonnull %8) #6, !dbg !2928
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %92) #6, !dbg !2929
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #7, !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %12) #7, !dbg !2930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2931
  ret i64 %92, !dbg !2931
}

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamNACK* @streamCreateNACK(%struct.streamConsumer*) local_unnamed_addr #0 !dbg !2692 {
  %2 = tail call i8* @zmalloc(i64 24) #6, !dbg !2933
  %3 = bitcast i8* %2 to %struct.streamNACK*, !dbg !2933
  %4 = tail call i64 @mstime() #6, !dbg !2935
  %5 = bitcast i8* %2 to i64*, !dbg !2936
  store i64 %4, i64* %5, align 8, !dbg !2937, !tbaa !2430
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2938
  %7 = bitcast i8* %6 to i64*, !dbg !2938
  store i64 1, i64* %7, align 8, !dbg !2939, !tbaa !2438
  %8 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2940
  %9 = bitcast i8* %8 to %struct.streamConsumer**, !dbg !2940
  store %struct.streamConsumer* %0, %struct.streamConsumer** %9, align 8, !dbg !2941, !tbaa !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  ret %struct.streamNACK* %3, !dbg !2942
}

; Function Attrs: noredzone
declare dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeNACK(%struct.streamNACK*) #0 !dbg !2719 {
  %2 = bitcast %struct.streamNACK* %0 to i8*, !dbg !2944
  tail call void @zfree(i8* %2) #6, !dbg !2945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2946
  ret void, !dbg !2946
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
define dso_local %struct.redisObject* @streamTypeLookupWriteOrCreate(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2947 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2956
  %4 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2956, !tbaa !2464
  %5 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %4, %struct.redisObject* %1) #6, !dbg !2957
  %6 = icmp eq %struct.redisObject* %5, null, !dbg !2959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2961
  br i1 %6, label %7, label %10, !dbg !2961

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.redisObject* @createStreamObject() #6, !dbg !2962
  %9 = load %struct.redisDb*, %struct.redisDb** %3, align 8, !dbg !2964, !tbaa !2464
  tail call void @dbAdd(%struct.redisDb* %9, %struct.redisObject* %1, %struct.redisObject* %8) #6, !dbg !2965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2966
  br label %17, !dbg !2966

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 0, !dbg !2967
  %12 = load i32, i32* %11, align 8, !dbg !2967
  %13 = and i32 %12, 15, !dbg !2967
  %14 = icmp eq i32 %13, 6, !dbg !2970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2971
  br i1 %14, label %17, label %15, !dbg !2971

; <label>:15:                                     ; preds = %10
  %16 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !2972, !tbaa !2974
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %16) #6, !dbg !2975
  br label %17, !dbg !2976

; <label>:17:                                     ; preds = %7, %10, %15
  %18 = phi %struct.redisObject* [ null, %15 ], [ %8, %7 ], [ %5, %10 ], !dbg !2977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2978
  ret %struct.redisObject* %18, !dbg !2978
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStreamObject() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @string2ull(i8*, i64* nocapture) local_unnamed_addr #0 !dbg !2979 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2992
  %6 = tail call i64 @strlen(i8* %0) #6, !dbg !2993
  %7 = call i32 @string2ll(i8* %0, i64 %6, i64* nonnull %3) #6, !dbg !2996
  %8 = icmp eq i32 %7, 0, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  br i1 %8, label %13, label %9, !dbg !2997

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* %3, align 8, !dbg !2998, !tbaa !265
  %11 = icmp slt i64 %10, 0, !dbg !3001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  br i1 %11, label %34, label %12, !dbg !3002

; <label>:12:                                     ; preds = %9
  store i64 %10, i64* %1, align 8, !dbg !3003, !tbaa !265
  br label %34, !dbg !3004

; <label>:13:                                     ; preds = %2
  %14 = call i32* @__errno() #6, !dbg !3005
  store i32 0, i32* %14, align 4, !dbg !3006, !tbaa !690
  %15 = bitcast i8** %4 to i8*, !dbg !3007
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #7, !dbg !3007
  store i8* null, i8** %4, align 8, !dbg !3008, !tbaa !234
  %16 = call i64 @strtoull(i8* %0, i8** nonnull %4, i32 10) #6, !dbg !3009
  store i64 %16, i64* %1, align 8, !dbg !3010, !tbaa !265
  %17 = call i32* @__errno() #6, !dbg !3011
  %18 = load i32, i32* %17, align 4, !dbg !3011, !tbaa !690
  %19 = icmp eq i32 %18, 22, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  br i1 %19, label %32, label %20, !dbg !3014

; <label>:20:                                     ; preds = %13
  %21 = call i32* @__errno() #6, !dbg !3015
  %22 = load i32, i32* %21, align 4, !dbg !3015, !tbaa !690
  %23 = icmp eq i32 %22, 34, !dbg !3016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3017
  br i1 %23, label %32, label %24, !dbg !3017

; <label>:24:                                     ; preds = %20
  %25 = load i8, i8* %0, align 1, !dbg !3018, !tbaa !674
  %26 = icmp eq i8 %25, 0, !dbg !3019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  br i1 %26, label %32, label %27, !dbg !3020

; <label>:27:                                     ; preds = %24
  %28 = load i8*, i8** %4, align 8, !dbg !3021, !tbaa !234
  %29 = load i8, i8* %28, align 1, !dbg !3022, !tbaa !674
  %30 = icmp eq i8 %29, 0, !dbg !3023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3024
  %31 = zext i1 %30 to i32, !dbg !3024
  br label %32, !dbg !3024

; <label>:32:                                     ; preds = %27, %13, %20, %24
  %33 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %13 ], [ %31, %27 ], !dbg !3025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #7, !dbg !3027
  br label %34

; <label>:34:                                     ; preds = %9, %32, %12
  %35 = phi i32 [ 1, %12 ], [ %33, %32 ], [ 0, %9 ], !dbg !3026
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3027
  ret i32 %35, !dbg !3027
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoull(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamGenericParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64, i32) local_unnamed_addr #0 !dbg !3028 {
  %6 = alloca [128 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0, !dbg !3047
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3047
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !3049
  %11 = load i8*, i8** %10, align 8, !dbg !3049, !tbaa !659
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3053
  %13 = load i8, i8* %12, align 1, !dbg !3053, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3055
  %14 = trunc i8 %13 to i3, !dbg !3055
  switch i3 %14, label %33 [
    i3 -4, label %29
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
  ], !dbg !3055

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3056
  %17 = load i8, i8* %16, align 1, !dbg !3057, !tbaa !674
  %18 = zext i8 %17 to i64, !dbg !3056
  br label %34, !dbg !3058

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3059
  %21 = bitcast i8* %20 to i16*, !dbg !3060
  %22 = load i16, i16* %21, align 1, !dbg !3060, !tbaa !685
  %23 = zext i16 %22 to i64, !dbg !3059
  br label %34, !dbg !3061

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3062
  %26 = bitcast i8* %25 to i32*, !dbg !3063
  %27 = load i32, i32* %26, align 1, !dbg !3063, !tbaa !690
  %28 = zext i32 %27 to i64, !dbg !3062
  br label %34, !dbg !3064

; <label>:29:                                     ; preds = %5
  %30 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3065
  %31 = bitcast i8* %30 to i64*, !dbg !3066
  %32 = load i64, i64* %31, align 1, !dbg !3066, !tbaa !117
  br label %34, !dbg !3067

; <label>:33:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3070
  br label %37, !dbg !3070

; <label>:34:                                     ; preds = %15, %19, %24, %29
  %35 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], !dbg !3071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  %36 = icmp ugt i64 %35, 127, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3070
  br i1 %36, label %111, label %37, !dbg !3070

; <label>:37:                                     ; preds = %33, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3076
  switch i3 %14, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !3076

; <label>:38:                                     ; preds = %37
  %39 = lshr i8 %13, 3, !dbg !3077
  %40 = zext i8 %39 to i64, !dbg !3077
  br label %59, !dbg !3078

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3079
  %43 = load i8, i8* %42, align 1, !dbg !3080, !tbaa !674
  %44 = zext i8 %43 to i64, !dbg !3079
  br label %59, !dbg !3081

; <label>:45:                                     ; preds = %37
  %46 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3082
  %47 = bitcast i8* %46 to i16*, !dbg !3083
  %48 = load i16, i16* %47, align 1, !dbg !3083, !tbaa !685
  %49 = zext i16 %48 to i64, !dbg !3082
  br label %59, !dbg !3084

; <label>:50:                                     ; preds = %37
  %51 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3085
  %52 = bitcast i8* %51 to i32*, !dbg !3086
  %53 = load i32, i32* %52, align 1, !dbg !3086, !tbaa !690
  %54 = zext i32 %53 to i64, !dbg !3085
  br label %59, !dbg !3087

; <label>:55:                                     ; preds = %37
  %56 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3088
  %57 = bitcast i8* %56 to i64*, !dbg !3089
  %58 = load i64, i64* %57, align 1, !dbg !3089, !tbaa !117
  br label %59, !dbg !3090

; <label>:59:                                     ; preds = %37, %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], [ 0, %37 ], !dbg !3091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3093
  %61 = add i64 %60, 1, !dbg !3094
  %62 = call i8* @memcpy(i8* nonnull %9, i8* %11, i64 %61) #6, !dbg !3095
  %63 = icmp eq i32 %4, 0, !dbg !3096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  %64 = load i8, i8* %9, align 16, !dbg !3099, !tbaa !674
  br i1 %63, label %74, label %65, !dbg !3098

; <label>:65:                                     ; preds = %59
  %66 = icmp eq i8 %64, 45, !dbg !3100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3101
  br i1 %66, label %70, label %67, !dbg !3101

; <label>:67:                                     ; preds = %65
  %68 = icmp eq i8 %64, 43, !dbg !3102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br i1 %68, label %70, label %69, !dbg !3103

; <label>:69:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3104
  br label %83, !dbg !3104

; <label>:70:                                     ; preds = %67, %65
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3106
  %72 = load i8, i8* %71, align 1, !dbg !3106, !tbaa !674
  %73 = icmp eq i8 %72, 0, !dbg !3107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3108
  br i1 %73, label %111, label %74, !dbg !3108

; <label>:74:                                     ; preds = %59, %70
  %75 = icmp eq i8 %64, 45, !dbg !3109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3104
  br i1 %75, label %76, label %83, !dbg !3104

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3110
  %78 = load i8, i8* %77, align 1, !dbg !3110, !tbaa !674
  %79 = icmp eq i8 %78, 0, !dbg !3111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3112
  br i1 %79, label %81, label %80, !dbg !3112

; <label>:80:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3113
  br label %91, !dbg !3113

; <label>:81:                                     ; preds = %76
  %82 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3115
  store <2 x i64> zeroinitializer, <2 x i64>* %82, align 8, !dbg !3115, !tbaa !117
  br label %114, !dbg !3117

; <label>:83:                                     ; preds = %69, %74
  %84 = icmp eq i8 %64, 43, !dbg !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3113
  br i1 %84, label %85, label %91, !dbg !3113

; <label>:85:                                     ; preds = %83
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 1, !dbg !3119
  %87 = load i8, i8* %86, align 1, !dbg !3119, !tbaa !674
  %88 = icmp eq i8 %87, 0, !dbg !3120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  br i1 %88, label %89, label %91, !dbg !3121

; <label>:89:                                     ; preds = %85
  %90 = bitcast %struct.streamID* %2 to <2 x i64>*, !dbg !3122
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %90, align 8, !dbg !3122, !tbaa !117
  br label %114, !dbg !3124

; <label>:91:                                     ; preds = %80, %83, %85
  %92 = call i8* @strchr(i8* nonnull %9, i32 45) #6, !dbg !3125
  %93 = icmp ne i8* %92, null, !dbg !3127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3129
  br i1 %93, label %94, label %95, !dbg !3129

; <label>:94:                                     ; preds = %91
  store i8 0, i8* %92, align 1, !dbg !3130, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3131
  br label %95, !dbg !3131

; <label>:95:                                     ; preds = %94, %91
  %96 = call i32 @string2ull(i8* nonnull %9, i64* nonnull %7) #9, !dbg !3133
  %97 = icmp eq i32 %96, 0, !dbg !3135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  br i1 %97, label %111, label %98, !dbg !3136

; <label>:98:                                     ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3137
  br i1 %93, label %99, label %105, !dbg !3137

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !3139
  %101 = call i32 @string2ull(i8* nonnull %100, i64* nonnull %8) #9, !dbg !3141
  %102 = icmp eq i32 %101, 0, !dbg !3142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3143
  br i1 %102, label %111, label %103, !dbg !3143

; <label>:103:                                    ; preds = %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  %104 = load i64, i64* %8, align 8, !dbg !3145, !tbaa !265
  br label %106, !dbg !3144

; <label>:105:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3144
  store i64 %3, i64* %8, align 8, !dbg !3146, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br label %106, !dbg !3148

; <label>:106:                                    ; preds = %103, %105
  %107 = phi i64 [ %104, %103 ], [ %3, %105 ], !dbg !3145
  %108 = load i64, i64* %7, align 8, !dbg !3149, !tbaa !265
  %109 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3150
  store i64 %108, i64* %109, align 8, !dbg !3151, !tbaa !178
  %110 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3152
  store i64 %107, i64* %110, align 8, !dbg !3153, !tbaa !188
  br label %114, !dbg !3154

; <label>:111:                                    ; preds = %99, %95, %70, %34
  %112 = icmp eq %struct.client* %0, null, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3157
  br i1 %112, label %114, label %113, !dbg !3157

; <label>:113:                                    ; preds = %111
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  br label %114, !dbg !3158

; <label>:114:                                    ; preds = %113, %111, %106, %89, %81
  %115 = phi i32 [ 0, %81 ], [ 0, %89 ], [ 0, %106 ], [ -1, %111 ], [ -1, %113 ], !dbg !3092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3160
  ret i32 %115, !dbg !3160
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3161 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 0) #9, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  ret i32 %5, !dbg !3174
}

; Function Attrs: noredzone nounwind
define dso_local i32 @streamParseStrictIDOrReply(%struct.client*, %struct.redisObject* nocapture readonly, %struct.streamID* nocapture, i64) local_unnamed_addr #0 !dbg !3175 {
  %5 = tail call i32 @streamGenericParseIDOrReply(%struct.client* %0, %struct.redisObject* %1, %struct.streamID* %2, i64 %3, i32 1) #9, !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  ret i32 %5, !dbg !3186
}

; Function Attrs: noredzone nounwind
define dso_local void @streamRewriteApproxMaxlen(%struct.client*, %struct.stream* nocapture readonly, i32) local_unnamed_addr #0 !dbg !3187 {
  %4 = getelementptr inbounds %struct.stream, %struct.stream* %1, i64 0, i32 1, !dbg !3199
  %5 = load i64, i64* %4, align 8, !dbg !3199, !tbaa !974
  %6 = tail call %struct.redisObject* @createStringObjectFromLongLong(i64 %5) #6, !dbg !3200
  %7 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !3202
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %2, %struct.redisObject* %6) #6, !dbg !3204
  %8 = add nsw i32 %2, -1, !dbg !3205
  tail call void @rewriteClientCommandArgument(%struct.client* %0, i32 %8, %struct.redisObject* %7) #6, !dbg !3206
  tail call void @decrRefCount(%struct.redisObject* %7) #6, !dbg !3207
  tail call void @decrRefCount(%struct.redisObject* %6) #6, !dbg !3208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3209
  ret void, !dbg !3209
}

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xaddCommand(%struct.client*) local_unnamed_addr #0 !dbg !3210 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca i64, align 8
  %4 = bitcast %struct.streamID* %2 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3233
  %5 = bitcast i64* %3 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3235
  store i64 -1, i64* %3, align 8, !dbg !3236, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3241
  %7 = load i32, i32* %6, align 8, !dbg !3241, !tbaa !3242
  %8 = icmp sgt i32 %7, 2, !dbg !3243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  br i1 %8, label %9, label %83, !dbg !3244

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !3244

; <label>:11:                                     ; preds = %9, %74
  %12 = phi i32 [ %7, %9 ], [ %76, %74 ]
  %13 = phi i32 [ 0, %9 ], [ %62, %74 ]
  %14 = phi i32 [ 0, %9 ], [ %63, %74 ]
  %15 = phi i32 [ 2, %9 ], [ %75, %74 ]
  %16 = xor i32 %15, -1, !dbg !3245
  %17 = add i32 %12, %16, !dbg !3245
  %18 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3247, !tbaa !3248
  %19 = sext i32 %15 to i64, !dbg !3249
  %20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %19, !dbg !3249
  %21 = load %struct.redisObject*, %struct.redisObject** %20, align 8, !dbg !3249, !tbaa !234
  %22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i64 0, i32 2, !dbg !3250
  %23 = load i8*, i8** %22, align 8, !dbg !3250, !tbaa !659
  %24 = load i8, i8* %23, align 1, !dbg !3252, !tbaa !674
  %25 = icmp eq i8 %24, 42, !dbg !3253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3254
  br i1 %25, label %26, label %31, !dbg !3254

; <label>:26:                                     ; preds = %11
  %27 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !3255
  %28 = load i8, i8* %27, align 1, !dbg !3255, !tbaa !674
  %29 = icmp eq i8 %28, 0, !dbg !3256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  br i1 %29, label %30, label %31, !dbg !3257

; <label>:30:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3258
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %83

; <label>:31:                                     ; preds = %26, %11
  %32 = call i32 @strcasecmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !3260
  %33 = icmp eq i32 %32, 0, !dbg !3260
  %34 = icmp ne i32 %17, 0, !dbg !3261
  %35 = and i1 %34, %33, !dbg !3262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  br i1 %35, label %36, label %78, !dbg !3262

; <label>:36:                                     ; preds = %31
  %37 = add nsw i32 %15, 1, !dbg !3263
  %38 = sext i32 %37 to i64, !dbg !3264
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %38, !dbg !3264
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !3264, !tbaa !234
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !3265
  %42 = load i8*, i8** %41, align 8, !dbg !3265, !tbaa !659
  %43 = icmp sgt i32 %17, 1, !dbg !3267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  br i1 %43, label %44, label %59, !dbg !3269

; <label>:44:                                     ; preds = %36
  %45 = load i8, i8* %42, align 1, !dbg !3270, !tbaa !674
  %46 = icmp eq i8 %45, 126, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  br i1 %46, label %47, label %52, !dbg !3272

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3273
  %49 = load i8, i8* %48, align 1, !dbg !3273, !tbaa !674
  %50 = icmp eq i8 %49, 0, !dbg !3274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  br i1 %50, label %60, label %51, !dbg !3275

; <label>:51:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3278
  br label %60, !dbg !3278

; <label>:52:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3279
  %53 = icmp eq i8 %45, 61, !dbg !3280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3278
  br i1 %53, label %54, label %60, !dbg !3278

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !3281
  %56 = load i8, i8* %55, align 1, !dbg !3281, !tbaa !674
  %57 = icmp eq i8 %56, 0, !dbg !3282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3283
  br i1 %57, label %58, label %60, !dbg !3283

; <label>:58:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3284
  br label %60, !dbg !3284

; <label>:59:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3279
  br label %60

; <label>:60:                                     ; preds = %47, %51, %59, %52, %54, %58
  %61 = phi i32 [ %37, %58 ], [ %15, %54 ], [ %15, %52 ], [ %15, %59 ], [ %15, %51 ], [ %37, %47 ], !dbg !3286
  %62 = phi i32 [ 0, %58 ], [ 0, %54 ], [ 0, %52 ], [ 0, %59 ], [ 0, %51 ], [ 1, %47 ], !dbg !3287
  %63 = add nsw i32 %61, 1, !dbg !3288
  %64 = sext i32 %63 to i64, !dbg !3290
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %64, !dbg !3290
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !3290, !tbaa !234
  %67 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %66, i64* nonnull %3, i8* null) #6, !dbg !3291
  %68 = icmp eq i32 %67, 0, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %68, label %69, label %73, !dbg !3293

; <label>:69:                                     ; preds = %60
  %70 = load i64, i64* %3, align 8, !dbg !3294, !tbaa !265
  %71 = icmp slt i64 %70, 0, !dbg !3296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3297
  br i1 %71, label %72, label %74, !dbg !3297

; <label>:72:                                     ; preds = %69
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !3298
  br label %73, !dbg !3300

; <label>:73:                                     ; preds = %60, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  br label %187

; <label>:74:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3303
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %75 = add nsw i32 %61, 2, !dbg !3304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3305
  %76 = load i32, i32* %6, align 8, !dbg !3241, !tbaa !3242
  %77 = icmp slt i32 %75, %76, !dbg !3243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  br i1 %77, label %11, label %83, !dbg !3244, !llvm.loop !3306

; <label>:78:                                     ; preds = %31
  %79 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %21, %struct.streamID* nonnull %2, i64 0, i32 1) #6, !dbg !3316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  %80 = icmp eq i32 %79, 0, !dbg !3318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %80, label %81, label %188

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %6, align 8, !dbg !3321, !tbaa !3242
  br label %83

; <label>:83:                                     ; preds = %74, %81, %1, %30
  %84 = phi i32 [ %82, %81 ], [ %12, %30 ], [ %7, %1 ], [ %76, %74 ], !dbg !3321
  %85 = phi i32 [ %15, %81 ], [ %15, %30 ], [ 2, %1 ], [ %75, %74 ]
  %86 = phi i32 [ %14, %81 ], [ %14, %30 ], [ 0, %1 ], [ %63, %74 ]
  %87 = phi i32 [ %13, %81 ], [ %13, %30 ], [ 0, %1 ], [ %62, %74 ]
  %88 = phi i32 [ 1, %81 ], [ 0, %30 ], [ 0, %1 ], [ 0, %74 ], !dbg !3234
  %89 = add nsw i32 %85, 1, !dbg !3323
  %90 = sub nsw i32 %84, %89, !dbg !3325
  %91 = icmp slt i32 %90, 2, !dbg !3326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  br i1 %91, label %95, label %92, !dbg !3327

; <label>:92:                                     ; preds = %83
  %93 = and i32 %90, 1
  %94 = icmp eq i32 %93, 0, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  br i1 %94, label %96, label %95, !dbg !3329

; <label>:95:                                     ; preds = %92, %83
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !3330
  br label %187, !dbg !3332

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3333
  %98 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3333, !tbaa !3248
  %99 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %98, i64 1, !dbg !3335
  %100 = load %struct.redisObject*, %struct.redisObject** %99, align 8, !dbg !3335, !tbaa !234
  %101 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !3339
  %102 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3339, !tbaa !2464
  %103 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %102, %struct.redisObject* %100) #6, !dbg !3340
  %104 = icmp eq %struct.redisObject* %103, null, !dbg !3342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3343
  br i1 %104, label %113, label %105, !dbg !3343

; <label>:105:                                    ; preds = %96
  %106 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %103, i64 0, i32 0, !dbg !3344
  %107 = load i32, i32* %106, align 8, !dbg !3344
  %108 = and i32 %107, 15, !dbg !3344
  %109 = icmp eq i32 %108, 6, !dbg !3345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3346
  br i1 %109, label %110, label %111, !dbg !3346

; <label>:110:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br label %117, !dbg !3350

; <label>:111:                                    ; preds = %105
  %112 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 14), align 8, !dbg !3351, !tbaa !2974
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %112) #6, !dbg !3352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br label %186, !dbg !3350

; <label>:113:                                    ; preds = %96
  %114 = call %struct.redisObject* @createStreamObject() #6, !dbg !3354
  %115 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3355, !tbaa !2464
  call void @dbAdd(%struct.redisDb* %115, %struct.redisObject* %100, %struct.redisObject* %114) #6, !dbg !3356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3348
  %116 = icmp eq %struct.redisObject* %114, null, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br i1 %116, label %186, label %117, !dbg !3350

; <label>:117:                                    ; preds = %110, %113
  %118 = phi %struct.redisObject* [ %103, %110 ], [ %114, %113 ]
  %119 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %118, i64 0, i32 2, !dbg !3359
  %120 = bitcast i8** %119 to %struct.stream**, !dbg !3359
  %121 = load %struct.stream*, %struct.stream** %120, align 8, !dbg !3359, !tbaa !659
  %122 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3361, !tbaa !3248
  %123 = sext i32 %89 to i64, !dbg !3363
  %124 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %122, i64 %123, !dbg !3363
  %125 = load i32, i32* %6, align 8, !dbg !3364, !tbaa !3242
  %126 = sub nsw i32 %125, %89, !dbg !3365
  %127 = sdiv i32 %126, 2, !dbg !3366
  %128 = sext i32 %127 to i64, !dbg !3367
  %129 = icmp eq i32 %88, 0, !dbg !3368
  %130 = select i1 %129, %struct.streamID* null, %struct.streamID* %2, !dbg !3368
  %131 = call i32 @streamAppendItem(%struct.stream* %121, %struct.redisObject** %124, i64 %128, %struct.streamID* nonnull %2, %struct.streamID* %130) #9, !dbg !3369
  %132 = icmp eq i32 %131, -1, !dbg !3370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3371
  br i1 %132, label %133, label %134, !dbg !3371

; <label>:133:                                    ; preds = %117
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !3372
  br label %186, !dbg !3374

; <label>:134:                                    ; preds = %117
  %135 = call i8* @sdsempty() #6, !dbg !3378
  %136 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !3379
  %137 = load i64, i64* %136, align 8, !dbg !3379, !tbaa !178
  %138 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !3380
  %139 = load i64, i64* %138, align 8, !dbg !3380, !tbaa !188
  %140 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %137, i64 %139) #6, !dbg !3381
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %140) #6, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3384
  %141 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3385, !tbaa !2464
  %142 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3386, !tbaa !3248
  %143 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %142, i64 1, !dbg !3387
  %144 = load %struct.redisObject*, %struct.redisObject** %143, align 8, !dbg !3387, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %141, %struct.redisObject* %144) #6, !dbg !3388
  %145 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3389, !tbaa !3248
  %146 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %145, i64 1, !dbg !3390
  %147 = load %struct.redisObject*, %struct.redisObject** %146, align 8, !dbg !3390, !tbaa !234
  %148 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3391, !tbaa !2464
  %149 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %148, i64 0, i32 5, !dbg !3392
  %150 = load i32, i32* %149, align 8, !dbg !3392, !tbaa !2469
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %struct.redisObject* %147, i32 %150) #6, !dbg !3393
  %151 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3394, !tbaa !3395
  %152 = add nsw i64 %151, 1, !dbg !3394
  store i64 %152, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3394, !tbaa !3395
  %153 = load i64, i64* %3, align 8, !dbg !3396, !tbaa !265
  %154 = icmp sgt i64 %153, -1, !dbg !3398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3399
  br i1 %154, label %155, label %173, !dbg !3399

; <label>:155:                                    ; preds = %134
  %156 = call i64 @streamTrimByLength(%struct.stream* %121, i64 %153, i32 %87) #9, !dbg !3400
  %157 = icmp eq i64 %156, 0, !dbg !3400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3403
  br i1 %157, label %165, label %158, !dbg !3403

; <label>:158:                                    ; preds = %155
  %159 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3404, !tbaa !3248
  %160 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %159, i64 1, !dbg !3406
  %161 = load %struct.redisObject*, %struct.redisObject** %160, align 8, !dbg !3406, !tbaa !234
  %162 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3407, !tbaa !2464
  %163 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %162, i64 0, i32 5, !dbg !3408
  %164 = load i32, i32* %163, align 8, !dbg !3408, !tbaa !2469
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %161, i32 %164) #6, !dbg !3409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3410
  br label %165, !dbg !3410

; <label>:165:                                    ; preds = %155, %158
  %166 = icmp eq i32 %87, 0, !dbg !3411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3413
  br i1 %166, label %173, label %167, !dbg !3413

; <label>:167:                                    ; preds = %165
  %168 = getelementptr inbounds %struct.stream, %struct.stream* %121, i64 0, i32 1, !dbg !3418
  %169 = load i64, i64* %168, align 8, !dbg !3418, !tbaa !974
  %170 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %169) #6, !dbg !3419
  %171 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !3421
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %86, %struct.redisObject* %170) #6, !dbg !3423
  %172 = add nsw i32 %86, -1, !dbg !3424
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %172, %struct.redisObject* %171) #6, !dbg !3425
  call void @decrRefCount(%struct.redisObject* %171) #6, !dbg !3426
  call void @decrRefCount(%struct.redisObject* %170) #6, !dbg !3427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3429
  br label %173, !dbg !3429

; <label>:173:                                    ; preds = %165, %167, %134
  %174 = call i8* @sdsempty() #6, !dbg !3432
  %175 = load i64, i64* %136, align 8, !dbg !3433, !tbaa !178
  %176 = load i64, i64* %138, align 8, !dbg !3434, !tbaa !188
  %177 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %175, i64 %176) #6, !dbg !3435
  %178 = call %struct.redisObject* @createObject(i32 0, i8* %177) #6, !dbg !3436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %85, %struct.redisObject* %178) #6, !dbg !3439
  call void @decrRefCount(%struct.redisObject* %178) #6, !dbg !3440
  %179 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 4), align 4, !dbg !3441, !tbaa !690
  %180 = icmp eq i32 %179, 0, !dbg !3441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3443
  br i1 %180, label %186, label %181, !dbg !3443

; <label>:181:                                    ; preds = %173
  %182 = load %struct.redisDb*, %struct.redisDb** %101, align 8, !dbg !3444, !tbaa !2464
  %183 = load %struct.redisObject**, %struct.redisObject*** %97, align 8, !dbg !3445, !tbaa !3248
  %184 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %183, i64 1, !dbg !3446
  %185 = load %struct.redisObject*, %struct.redisObject** %184, align 8, !dbg !3446, !tbaa !234
  call void @signalKeyAsReady(%struct.redisDb* %182, %struct.redisObject* %185) #6, !dbg !3447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  br label %186, !dbg !3447

; <label>:186:                                    ; preds = %181, %173, %113, %111, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3448
  br label %187

; <label>:187:                                    ; preds = %95, %186, %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %188, !dbg !3449

; <label>:188:                                    ; preds = %187, %78
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !3449
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3449
  ret void, !dbg !3449
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
define dso_local void @xrangeGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !3450 {
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = bitcast %struct.streamID* %3 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3472
  %7 = bitcast %struct.streamID* %4 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3472
  %8 = bitcast i64* %5 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3473
  store i64 -1, i64* %5, align 8, !dbg !3474, !tbaa !265
  %9 = icmp eq i32 %1, 0, !dbg !3475
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3476
  %11 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3476, !tbaa !3248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  %12 = select i1 %9, i64 2, i64 3, !dbg !3475
  %13 = select i1 %9, i64 3, i64 2, !dbg !3475
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 %12, !dbg !3476
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !3476, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3478
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 %13, !dbg !3476
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3476, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3478
  %18 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %15, %struct.streamID* nonnull %3, i64 0, i32 0) #6, !dbg !3487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3488
  %19 = icmp eq i32 %18, -1, !dbg !3489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3490
  br i1 %19, label %87, label %20, !dbg !3490

; <label>:20:                                     ; preds = %2
  %21 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %17, %struct.streamID* nonnull %4, i64 -1, i32 0) #6, !dbg !3498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3499
  %22 = icmp eq i32 %21, -1, !dbg !3500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  br i1 %22, label %87, label %23, !dbg !3501

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3502
  %25 = load i32, i32* %24, align 8, !dbg !3502, !tbaa !3242
  %26 = icmp sgt i32 %25, 4, !dbg !3503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3504
  br i1 %26, label %27, label %62, !dbg !3504

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  br label %29, !dbg !3508

; <label>:28:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %62

; <label>:29:                                     ; preds = %27, %56
  %30 = phi i64 [ 4, %27 ], [ %57, %56 ]
  %31 = phi i32 [ %25, %27 ], [ %58, %56 ]
  %32 = trunc i64 %30 to i32, !dbg !3508
  %33 = xor i32 %32, -1, !dbg !3508
  %34 = add i32 %31, %33, !dbg !3508
  %35 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3510, !tbaa !3248
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %30, !dbg !3512
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3512, !tbaa !234
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !3513
  %39 = load i8*, i8** %38, align 8, !dbg !3513, !tbaa !659
  %40 = call i32 @strcasecmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !3514
  %41 = icmp eq i32 %40, 0, !dbg !3515
  %42 = icmp sgt i32 %34, 0, !dbg !3516
  %43 = and i1 %42, %41, !dbg !3517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3517
  br i1 %43, label %44, label %54, !dbg !3517

; <label>:44:                                     ; preds = %29
  %45 = or i64 %30, 1, !dbg !3518
  %46 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %45, !dbg !3521
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !3521, !tbaa !234
  %48 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %47, i64* nonnull %5, i8* null) #6, !dbg !3522
  %49 = icmp eq i32 %48, 0, !dbg !3523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3524
  br i1 %49, label %50, label %61, !dbg !3524

; <label>:50:                                     ; preds = %44
  %51 = load i64, i64* %5, align 8, !dbg !3525, !tbaa !265
  %52 = icmp slt i64 %51, 0, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3528
  br i1 %52, label %53, label %56, !dbg !3528

; <label>:53:                                     ; preds = %50
  store i64 0, i64* %5, align 8, !dbg !3529, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3530
  br label %56, !dbg !3530

; <label>:54:                                     ; preds = %29
  %55 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3531, !tbaa !3533
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %55) #6, !dbg !3534
  br label %61, !dbg !3535

; <label>:56:                                     ; preds = %53, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %57 = add nuw i64 %30, 2, !dbg !3537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3538
  %58 = load i32, i32* %24, align 8, !dbg !3539, !tbaa !3242
  %59 = trunc i64 %57 to i32, !dbg !3540
  %60 = icmp sgt i32 %58, %59, !dbg !3540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3507
  br i1 %60, label %29, label %28, !dbg !3507, !llvm.loop !3541

; <label>:61:                                     ; preds = %44, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %87

; <label>:62:                                     ; preds = %28, %23
  %63 = load %struct.redisObject**, %struct.redisObject*** %10, align 8, !dbg !3544, !tbaa !3248
  %64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %63, i64 1, !dbg !3546
  %65 = load %struct.redisObject*, %struct.redisObject** %64, align 8, !dbg !3546, !tbaa !234
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 13), align 8, !dbg !3547, !tbaa !3548
  %67 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* nonnull %0, %struct.redisObject* %65, %struct.redisObject* %66) #6, !dbg !3549
  %68 = icmp eq %struct.redisObject* %67, null, !dbg !3551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3552
  br i1 %68, label %87, label %69, !dbg !3552

; <label>:69:                                     ; preds = %62
  %70 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %67, i32 6) #6, !dbg !3553
  %71 = icmp eq i32 %70, 0, !dbg !3553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3554
  br i1 %71, label %72, label %87, !dbg !3554

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i64 0, i32 2, !dbg !3555
  %74 = bitcast i8** %73 to %struct.stream**, !dbg !3555
  %75 = load %struct.stream*, %struct.stream** %74, align 8, !dbg !3555, !tbaa !659
  %76 = load i64, i64* %5, align 8, !dbg !3557, !tbaa !265
  %77 = icmp eq i64 %76, 0, !dbg !3559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3560
  br i1 %77, label %78, label %80, !dbg !3560

; <label>:78:                                     ; preds = %72
  %79 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !3561, !tbaa !2913
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %79) #6, !dbg !3563
  br label %86, !dbg !3564

; <label>:80:                                     ; preds = %72
  %81 = icmp eq i64 %76, -1, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3568
  br i1 %81, label %82, label %83, !dbg !3568

; <label>:82:                                     ; preds = %80
  store i64 0, i64* %5, align 8, !dbg !3569, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3570
  br label %83, !dbg !3570

; <label>:83:                                     ; preds = %82, %80
  %84 = phi i64 [ 0, %82 ], [ %76, %80 ], !dbg !3571
  %85 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %75, %struct.streamID* nonnull %3, %struct.streamID* nonnull %4, i64 %84, i32 %1, %struct.streamCG* null, %struct.streamConsumer* null, i32 0, %struct.sreamPropInfo* null) #9, !dbg !3572
  br label %86

; <label>:86:                                     ; preds = %83, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %87, !dbg !3573

; <label>:87:                                     ; preds = %62, %69, %20, %2, %61, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3573
  ret void, !dbg !3573
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3574 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 0) #9, !dbg !3578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3579
  ret void, !dbg !3579
}

; Function Attrs: noredzone nounwind
define dso_local void @xrevrangeCommand(%struct.client*) local_unnamed_addr #0 !dbg !3580 {
  tail call void @xrangeGenericCommand(%struct.client* %0, i32 1) #9, !dbg !3584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3585
  ret void, !dbg !3585
}

; Function Attrs: noredzone nounwind
define dso_local void @xlenCommand(%struct.client*) local_unnamed_addr #0 !dbg !3586 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3592
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !3592, !tbaa !3248
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3594
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !3594, !tbaa !234
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3595, !tbaa !3596
  %7 = tail call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %0, %struct.redisObject* %5, %struct.redisObject* %6) #6, !dbg !3597
  %8 = icmp eq %struct.redisObject* %7, null, !dbg !3599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3600
  br i1 %8, label %18, label %9, !dbg !3600

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %7, i32 6) #6, !dbg !3601
  %11 = icmp eq i32 %10, 0, !dbg !3601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3602
  br i1 %11, label %12, label %18, !dbg !3602

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i64 0, i32 2, !dbg !3603
  %14 = bitcast i8** %13 to %struct.stream**, !dbg !3603
  %15 = load %struct.stream*, %struct.stream** %14, align 8, !dbg !3603, !tbaa !659
  %16 = getelementptr inbounds %struct.stream, %struct.stream* %15, i64 0, i32 1, !dbg !3605
  %17 = load i64, i64* %16, align 8, !dbg !3605, !tbaa !974
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %17) #6, !dbg !3606
  br label %18, !dbg !3607

; <label>:18:                                     ; preds = %1, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3607
  ret void, !dbg !3607
}

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xreadCommand(%struct.client*) local_unnamed_addr #0 !dbg !3609 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [8 x %struct.streamID], align 16
  %5 = alloca %struct.streamID, align 8
  %6 = alloca %struct.sreamPropInfo, align 8
  %7 = bitcast i64* %2 to i8*, !dbg !3669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !3669
  store i64 -1, i64* %2, align 8, !dbg !3670, !tbaa !265
  %8 = bitcast i64* %3 to i8*, !dbg !3671
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !3671
  store i64 0, i64* %3, align 8, !dbg !3672, !tbaa !265
  %9 = bitcast [8 x %struct.streamID]* %4 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #7, !dbg !3676
  %10 = getelementptr inbounds [8 x %struct.streamID], [8 x %struct.streamID]* %4, i64 0, i64 0, !dbg !3678
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3681
  %12 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3681, !tbaa !3248
  %13 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !3682, !tbaa !234
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i64 0, i32 2, !dbg !3683
  %15 = load i8*, i8** %14, align 8, !dbg !3683, !tbaa !659
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !3686
  %17 = load i8, i8* %16, align 1, !dbg !3686, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  %18 = trunc i8 %17 to i3, !dbg !3688
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !3688

; <label>:19:                                     ; preds = %1
  %20 = lshr i8 %17, 3, !dbg !3689
  %21 = zext i8 %20 to i64, !dbg !3689
  br label %40, !dbg !3690

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %15, i64 -3, !dbg !3691
  %24 = load i8, i8* %23, align 1, !dbg !3692, !tbaa !674
  %25 = zext i8 %24 to i64, !dbg !3691
  br label %40, !dbg !3693

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds i8, i8* %15, i64 -5, !dbg !3694
  %28 = bitcast i8* %27 to i16*, !dbg !3695
  %29 = load i16, i16* %28, align 1, !dbg !3695, !tbaa !685
  %30 = zext i16 %29 to i64, !dbg !3694
  br label %40, !dbg !3696

; <label>:31:                                     ; preds = %1
  %32 = getelementptr inbounds i8, i8* %15, i64 -9, !dbg !3697
  %33 = bitcast i8* %32 to i32*, !dbg !3698
  %34 = load i32, i32* %33, align 1, !dbg !3698, !tbaa !690
  %35 = zext i32 %34 to i64, !dbg !3697
  br label %40, !dbg !3699

; <label>:36:                                     ; preds = %1
  %37 = getelementptr inbounds i8, i8* %15, i64 -17, !dbg !3700
  %38 = bitcast i8* %37 to i64*, !dbg !3701
  %39 = load i64, i64* %38, align 1, !dbg !3701, !tbaa !117
  br label %40, !dbg !3702

; <label>:40:                                     ; preds = %1, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %1 ], !dbg !3703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3705
  %42 = icmp eq i64 %41, 10, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3710
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3711
  %44 = load i32, i32* %43, align 8, !dbg !3711, !tbaa !3242
  %45 = icmp sgt i32 %44, 1, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3713
  br i1 %45, label %47, label %46, !dbg !3713

; <label>:46:                                     ; preds = %121, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3713
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  br label %135, !dbg !3714

; <label>:47:                                     ; preds = %40, %129
  %48 = phi %struct.redisObject** [ %130, %129 ], [ %12, %40 ], !dbg !3715
  %49 = phi i32 [ %127, %129 ], [ %44, %40 ]
  %50 = phi i32 [ %125, %129 ], [ 0, %40 ]
  %51 = phi %struct.redisObject* [ %124, %129 ], [ null, %40 ]
  %52 = phi %struct.redisObject* [ %123, %129 ], [ null, %40 ]
  %53 = phi i32 [ %126, %129 ], [ 1, %40 ]
  %54 = xor i32 %53, -1, !dbg !3716
  %55 = add i32 %49, %54, !dbg !3716
  %56 = sext i32 %53 to i64, !dbg !3718
  %57 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %56, !dbg !3718
  %58 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !3718, !tbaa !234
  %59 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %58, i64 0, i32 2, !dbg !3719
  %60 = load i8*, i8** %59, align 8, !dbg !3719, !tbaa !659
  %61 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !3721
  %62 = icmp eq i32 %61, 0, !dbg !3721
  %63 = icmp ne i32 %55, 0, !dbg !3723
  %64 = and i1 %63, %62, !dbg !3724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3724
  br i1 %64, label %65, label %72, !dbg !3724

; <label>:65:                                     ; preds = %47
  %66 = add nsw i32 %53, 1, !dbg !3725
  %67 = sext i32 %66 to i64, !dbg !3727
  %68 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %67, !dbg !3727
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !3727, !tbaa !234
  %70 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %69, i64* nonnull %2, i32 1) #6, !dbg !3729
  %71 = icmp eq i32 %70, 0, !dbg !3730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  br i1 %71, label %121, label %131, !dbg !3731

; <label>:72:                                     ; preds = %47
  %73 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !3732
  %74 = icmp eq i32 %73, 0, !dbg !3732
  %75 = and i1 %63, %74, !dbg !3734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3734
  br i1 %75, label %76, label %87, !dbg !3734

; <label>:76:                                     ; preds = %72
  %77 = add nsw i32 %53, 1, !dbg !3735
  %78 = sext i32 %77 to i64, !dbg !3737
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %78, !dbg !3737
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !3737, !tbaa !234
  %81 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %80, i64* nonnull %3, i8* null) #6, !dbg !3739
  %82 = icmp eq i32 %81, 0, !dbg !3740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  br i1 %82, label %83, label %131, !dbg !3741

; <label>:83:                                     ; preds = %76
  %84 = load i64, i64* %3, align 8, !dbg !3742, !tbaa !265
  %85 = icmp slt i64 %84, 0, !dbg !3744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3745
  br i1 %85, label %86, label %121, !dbg !3745

; <label>:86:                                     ; preds = %83
  store i64 0, i64* %3, align 8, !dbg !3746, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3747
  br label %121, !dbg !3747

; <label>:87:                                     ; preds = %72
  %88 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !3748
  %89 = icmp eq i32 %88, 0, !dbg !3748
  %90 = and i1 %63, %89, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3750
  br i1 %90, label %91, label %97, !dbg !3750

; <label>:91:                                     ; preds = %87
  %92 = add nsw i32 %53, 1, !dbg !3751
  %93 = sub nsw i32 %49, %92, !dbg !3753
  %94 = and i32 %93, 1, !dbg !3754
  %95 = icmp eq i32 %94, 0, !dbg !3754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3756
  br i1 %95, label %132, label %96, !dbg !3756

; <label>:96:                                     ; preds = %91
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3757
  br label %131, !dbg !3759

; <label>:97:                                     ; preds = %87
  %98 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !3760
  %99 = icmp eq i32 %98, 0, !dbg !3760
  %100 = icmp sgt i32 %55, 1, !dbg !3762
  %101 = and i1 %100, %99, !dbg !3763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  br i1 %101, label %102, label %113, !dbg !3763

; <label>:102:                                    ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3764
  br i1 %42, label %104, label %103, !dbg !3764

; <label>:103:                                    ; preds = %102
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !3766
  br label %131, !dbg !3769

; <label>:104:                                    ; preds = %102
  %105 = add nsw i32 %53, 1, !dbg !3770
  %106 = sext i32 %105 to i64, !dbg !3771
  %107 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %106, !dbg !3771
  %108 = load %struct.redisObject*, %struct.redisObject** %107, align 8, !dbg !3771, !tbaa !234
  %109 = add nsw i32 %53, 2, !dbg !3772
  %110 = sext i32 %109 to i64, !dbg !3773
  %111 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %110, !dbg !3773
  %112 = load %struct.redisObject*, %struct.redisObject** %111, align 8, !dbg !3773, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3774
  br label %121, !dbg !3774

; <label>:113:                                    ; preds = %97
  %114 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !3775
  %115 = icmp eq i32 %114, 0, !dbg !3775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3777
  br i1 %115, label %116, label %119, !dbg !3777

; <label>:116:                                    ; preds = %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3778
  br i1 %42, label %118, label %117, !dbg !3778

; <label>:117:                                    ; preds = %116
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3780
  br label %131, !dbg !3783

; <label>:118:                                    ; preds = %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %121

; <label>:119:                                    ; preds = %113
  %120 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3784, !tbaa !3533
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %120) #6, !dbg !3786
  br label %131, !dbg !3787

; <label>:121:                                    ; preds = %65, %86, %83, %104, %118
  %122 = phi i32 [ %66, %65 ], [ %77, %86 ], [ %77, %83 ], [ %109, %104 ], [ %53, %118 ], !dbg !3788
  %123 = phi %struct.redisObject* [ %52, %65 ], [ %52, %86 ], [ %52, %83 ], [ %112, %104 ], [ %52, %118 ], !dbg !3704
  %124 = phi %struct.redisObject* [ %51, %65 ], [ %51, %86 ], [ %51, %83 ], [ %108, %104 ], [ %51, %118 ], !dbg !3704
  %125 = phi i32 [ %50, %65 ], [ %50, %86 ], [ %50, %83 ], [ %50, %104 ], [ 1, %118 ], !dbg !3789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3790
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %126 = add nsw i32 %122, 1, !dbg !3791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3792
  %127 = load i32, i32* %43, align 8, !dbg !3711, !tbaa !3242
  %128 = icmp sgt i32 %127, %126, !dbg !3712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3713
  br i1 %128, label %129, label %46, !dbg !3713, !llvm.loop !3793

; <label>:129:                                    ; preds = %121
  %130 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3715, !tbaa !3248
  br label %47, !dbg !3713

; <label>:131:                                    ; preds = %76, %65, %117, %119, %103, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3795
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %465

; <label>:132:                                    ; preds = %91
  %133 = sdiv i32 %93, 2, !dbg !3796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3797
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %134 = icmp eq i32 %92, 0, !dbg !3798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3714
  br i1 %134, label %135, label %137, !dbg !3714

; <label>:135:                                    ; preds = %46, %132
  %136 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !3800, !tbaa !3533
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %136) #6, !dbg !3802
  br label %465, !dbg !3803

; <label>:137:                                    ; preds = %132
  %138 = icmp eq %struct.redisObject* %51, null, !dbg !3804
  %139 = and i1 %42, %138, !dbg !3806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3806
  br i1 %139, label %140, label %141, !dbg !3806

; <label>:140:                                    ; preds = %137
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !3807
  br label %465, !dbg !3809

; <label>:141:                                    ; preds = %137
  %142 = icmp sgt i32 %93, 17, !dbg !3810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3812
  br i1 %142, label %143, label %148, !dbg !3812

; <label>:143:                                    ; preds = %141
  %144 = sext i32 %133 to i64, !dbg !3813
  %145 = shl nsw i64 %144, 4, !dbg !3814
  %146 = call i8* @zmalloc(i64 %145) #6, !dbg !3815
  %147 = bitcast i8* %146 to %struct.streamID*, !dbg !3815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3816
  br label %148, !dbg !3816

; <label>:148:                                    ; preds = %143, %141
  %149 = phi %struct.streamID* [ %147, %143 ], [ %10, %141 ], !dbg !3704
  %150 = icmp ne %struct.redisObject* %51, null, !dbg !3817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  br i1 %150, label %151, label %156, !dbg !3819

; <label>:151:                                    ; preds = %148
  %152 = sext i32 %133 to i64, !dbg !3820
  %153 = shl nsw i64 %152, 3, !dbg !3821
  %154 = call i8* @zmalloc(i64 %153) #6, !dbg !3822
  %155 = bitcast i8* %154 to %struct.streamCG**, !dbg !3822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3823
  br label %156, !dbg !3823

; <label>:156:                                    ; preds = %151, %148
  %157 = phi i8* [ %154, %151 ], [ null, %148 ], !dbg !3704
  %158 = phi %struct.streamCG** [ %155, %151 ], [ null, %148 ], !dbg !3704
  %159 = add nsw i32 %133, %92, !dbg !3824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3826
  %160 = load i32, i32* %43, align 8, !dbg !3827, !tbaa !3242
  %161 = icmp slt i32 %159, %160, !dbg !3828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3829
  br i1 %161, label %162, label %169, !dbg !3829

; <label>:162:                                    ; preds = %156
  %163 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %164 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2
  %165 = add i32 %53, %133, !dbg !3829
  %166 = add i32 %165, 1, !dbg !3829
  %167 = sext i32 %166 to i64, !dbg !3829
  %168 = sext i32 %133 to i64, !dbg !3829
  br label %184, !dbg !3829

; <label>:169:                                    ; preds = %302, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3829
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3833
  %170 = icmp sgt i32 %93, 1, !dbg !3834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3835
  br i1 %170, label %172, label %171, !dbg !3835

; <label>:171:                                    ; preds = %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3836
  br label %433, !dbg !3836

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %174 = icmp ne %struct.streamCG** %158, null
  %175 = bitcast %struct.streamID* %5 to i8*
  %176 = getelementptr inbounds %struct.streamID, %struct.streamID* %5, i64 0, i32 1
  %177 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %52, i64 0, i32 2
  %178 = bitcast %struct.sreamPropInfo* %6 to i8*
  %179 = bitcast %struct.sreamPropInfo* %6 to i64*
  %180 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %6, i64 0, i32 1
  %181 = icmp eq i32 %50, 0
  %182 = sext i32 %92 to i64, !dbg !3835
  %183 = zext i32 %133 to i64
  br label %310, !dbg !3835

; <label>:184:                                    ; preds = %162, %302
  %185 = phi i64 [ %167, %162 ], [ %303, %302 ]
  %186 = trunc i64 %185 to i32, !dbg !3837
  %187 = sub i32 %186, %92, !dbg !3837
  %188 = sub i32 %187, %133, !dbg !3837
  %189 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3839, !tbaa !3248
  %190 = sub nsw i64 %185, %168, !dbg !3840
  %191 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %189, i64 %190, !dbg !3841
  %192 = load %struct.redisObject*, %struct.redisObject** %191, align 8, !dbg !3841, !tbaa !234
  %193 = load %struct.redisDb*, %struct.redisDb** %163, align 8, !dbg !3843, !tbaa !2464
  %194 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %193, %struct.redisObject* %192) #6, !dbg !3844
  %195 = icmp ne %struct.redisObject* %194, null, !dbg !3846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3848
  br i1 %195, label %196, label %199, !dbg !3848

; <label>:196:                                    ; preds = %184
  %197 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %194, i32 6) #6, !dbg !3849
  %198 = icmp eq i32 %197, 0, !dbg !3849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3850
  br i1 %198, label %199, label %307, !dbg !3850

; <label>:199:                                    ; preds = %196, %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3852
  br i1 %150, label %200, label %253, !dbg !3852

; <label>:200:                                    ; preds = %199
  %201 = icmp eq %struct.redisObject* %194, null, !dbg !3853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3857
  br i1 %201, label %245, label %202, !dbg !3857

; <label>:202:                                    ; preds = %200
  %203 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %194, i64 0, i32 2, !dbg !3858
  %204 = bitcast i8** %203 to %struct.stream**, !dbg !3858
  %205 = load %struct.stream*, %struct.stream** %204, align 8, !dbg !3858, !tbaa !659
  %206 = load i8*, i8** %164, align 8, !dbg !3859, !tbaa !659
  %207 = getelementptr inbounds %struct.stream, %struct.stream* %205, i64 0, i32 3, !dbg !3870
  %208 = load %struct.rax*, %struct.rax** %207, align 8, !dbg !3870, !tbaa !123
  %209 = icmp eq %struct.rax* %208, null, !dbg !3872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3873
  br i1 %209, label %210, label %211, !dbg !3873

; <label>:210:                                    ; preds = %202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3874
  br label %242, !dbg !3874

; <label>:211:                                    ; preds = %202
  %212 = getelementptr inbounds i8, i8* %206, i64 -1, !dbg !3877
  %213 = load i8, i8* %212, align 1, !dbg !3877, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3879
  %214 = trunc i8 %213 to i3, !dbg !3879
  switch i3 %214, label %236 [
    i3 0, label %215
    i3 1, label %218
    i3 2, label %222
    i3 3, label %227
    i3 -4, label %232
  ], !dbg !3879

; <label>:215:                                    ; preds = %211
  %216 = lshr i8 %213, 3, !dbg !3880
  %217 = zext i8 %216 to i64, !dbg !3880
  br label %236, !dbg !3881

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds i8, i8* %206, i64 -3, !dbg !3882
  %220 = load i8, i8* %219, align 1, !dbg !3883, !tbaa !674
  %221 = zext i8 %220 to i64, !dbg !3882
  br label %236, !dbg !3884

; <label>:222:                                    ; preds = %211
  %223 = getelementptr inbounds i8, i8* %206, i64 -5, !dbg !3885
  %224 = bitcast i8* %223 to i16*, !dbg !3886
  %225 = load i16, i16* %224, align 1, !dbg !3886, !tbaa !685
  %226 = zext i16 %225 to i64, !dbg !3885
  br label %236, !dbg !3887

; <label>:227:                                    ; preds = %211
  %228 = getelementptr inbounds i8, i8* %206, i64 -9, !dbg !3888
  %229 = bitcast i8* %228 to i32*, !dbg !3889
  %230 = load i32, i32* %229, align 1, !dbg !3889, !tbaa !690
  %231 = zext i32 %230 to i64, !dbg !3888
  br label %236, !dbg !3890

; <label>:232:                                    ; preds = %211
  %233 = getelementptr inbounds i8, i8* %206, i64 -17, !dbg !3891
  %234 = bitcast i8* %233 to i64*, !dbg !3892
  %235 = load i64, i64* %234, align 1, !dbg !3892, !tbaa !117
  br label %236, !dbg !3893

; <label>:236:                                    ; preds = %211, %232, %227, %222, %218, %215
  %237 = phi i64 [ %235, %232 ], [ %231, %227 ], [ %226, %222 ], [ %221, %218 ], [ %217, %215 ], [ 0, %211 ], !dbg !3894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3896
  %238 = call i8* @raxFind(%struct.rax* nonnull %208, i8* nonnull %206, i64 %237) #6, !dbg !3897
  %239 = bitcast i8* %238 to %struct.streamCG*, !dbg !3897
  %240 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !3899, !tbaa !234
  %241 = icmp eq %struct.streamCG* %240, %239, !dbg !3900
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %241, label %242, label %243

; <label>:242:                                    ; preds = %236, %210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3902
  br label %245, !dbg !3902

; <label>:243:                                    ; preds = %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3901
  %244 = icmp eq i8* %238, null, !dbg !3903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3902
  br i1 %244, label %245, label %249, !dbg !3902

; <label>:245:                                    ; preds = %243, %200, %242
  %246 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %192, i64 0, i32 2, !dbg !3904
  %247 = load i8*, i8** %246, align 8, !dbg !3904, !tbaa !659
  %248 = load i8*, i8** %164, align 8, !dbg !3906, !tbaa !659
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.38, i64 0, i64 0), i8* %247, i8* %248) #6, !dbg !3907
  br label %292, !dbg !3908

; <label>:249:                                    ; preds = %243
  %250 = sext i32 %188 to i64, !dbg !3909
  %251 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %158, i64 %250, !dbg !3909
  %252 = bitcast %struct.streamCG** %251 to i8**, !dbg !3910
  store i8* %238, i8** %252, align 8, !dbg !3910, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3911
  br label %253, !dbg !3911

; <label>:253:                                    ; preds = %249, %199
  %254 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3912, !tbaa !3248
  %255 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %254, i64 %185, !dbg !3913
  %256 = load %struct.redisObject*, %struct.redisObject** %255, align 8, !dbg !3913, !tbaa !234
  %257 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %256, i64 0, i32 2, !dbg !3914
  %258 = load i8*, i8** %257, align 8, !dbg !3914, !tbaa !659
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3915
  %260 = icmp eq i32 %259, 0, !dbg !3916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3917
  br i1 %260, label %261, label %278, !dbg !3917

; <label>:261:                                    ; preds = %253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3918
  br i1 %42, label %262, label %263, !dbg !3918

; <label>:262:                                    ; preds = %261
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !3919
  br label %292, !dbg !3922

; <label>:263:                                    ; preds = %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3923
  br i1 %195, label %264, label %273, !dbg !3923

; <label>:264:                                    ; preds = %263
  %265 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %194, i64 0, i32 2, !dbg !3924
  %266 = bitcast i8** %265 to %struct.stream**, !dbg !3924
  %267 = load %struct.stream*, %struct.stream** %266, align 8, !dbg !3924, !tbaa !659
  %268 = sext i32 %188 to i64, !dbg !3926
  %269 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %268, !dbg !3926
  %270 = getelementptr inbounds %struct.stream, %struct.stream* %267, i64 0, i32 2, !dbg !3927
  %271 = bitcast %struct.streamID* %269 to i8*, !dbg !3927
  %272 = bitcast %struct.streamID* %270 to i8*, !dbg !3927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* nonnull align 8 %272, i64 16, i1 false), !dbg !3927, !tbaa.struct !1634
  br label %277, !dbg !3928

; <label>:273:                                    ; preds = %263
  %274 = sext i32 %188 to i64, !dbg !3929
  %275 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %274, i32 0, !dbg !3931
  %276 = bitcast i64* %275 to <2 x i64>*, !dbg !3932
  store <2 x i64> zeroinitializer, <2 x i64>* %276, align 8, !dbg !3932, !tbaa !117
  br label %277

; <label>:277:                                    ; preds = %273, %264
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %293, !dbg !3933

; <label>:278:                                    ; preds = %253
  %279 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3934, !tbaa !3248
  %280 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %279, i64 %185, !dbg !3936
  %281 = load %struct.redisObject*, %struct.redisObject** %280, align 8, !dbg !3936, !tbaa !234
  %282 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %281, i64 0, i32 2, !dbg !3937
  %283 = load i8*, i8** %282, align 8, !dbg !3937, !tbaa !659
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !3938
  %285 = icmp eq i32 %284, 0, !dbg !3939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3940
  br i1 %285, label %286, label %294, !dbg !3940

; <label>:286:                                    ; preds = %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3941
  br i1 %42, label %288, label %287, !dbg !3941

; <label>:287:                                    ; preds = %286
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3943
  br label %292, !dbg !3946

; <label>:288:                                    ; preds = %286
  %289 = sext i32 %188 to i64, !dbg !3947
  %290 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %289, i32 0, !dbg !3948
  %291 = bitcast i64* %290 to <2 x i64>*, !dbg !3949
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %291, align 8, !dbg !3949, !tbaa !117
  br label %293, !dbg !3950

; <label>:292:                                    ; preds = %245, %262, %287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3951
  br label %307

; <label>:293:                                    ; preds = %277, %288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3952
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %302

; <label>:294:                                    ; preds = %278
  %295 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3953, !tbaa !3248
  %296 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %295, i64 %185, !dbg !3955
  %297 = load %struct.redisObject*, %struct.redisObject** %296, align 8, !dbg !3955, !tbaa !234
  %298 = sext i32 %188 to i64, !dbg !3956
  %299 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %298, !dbg !3956
  %300 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %297, %struct.streamID* %299, i64 0, i32 1) #6, !dbg !3962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3963
  %301 = icmp eq i32 %300, 0, !dbg !3964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3966
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %301, label %302, label %460

; <label>:302:                                    ; preds = %294, %293
  %303 = add nsw i64 %185, 1, !dbg !3967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3968
  %304 = load i32, i32* %43, align 8, !dbg !3827, !tbaa !3242
  %305 = sext i32 %304 to i64, !dbg !3828
  %306 = icmp slt i64 %303, %305, !dbg !3828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3829
  br i1 %306, label %184, label %169, !dbg !3829, !llvm.loop !3969

; <label>:307:                                    ; preds = %196, %292
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %460

; <label>:308:                                    ; preds = %427
  %309 = icmp eq i64 %428, 0, !dbg !3971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3836
  br i1 %309, label %433, label %432, !dbg !3836

; <label>:310:                                    ; preds = %427, %172
  %311 = phi i64 [ 0, %172 ], [ %430, %427 ]
  %312 = phi i8* [ null, %172 ], [ %429, %427 ]
  %313 = phi i64 [ 0, %172 ], [ %428, %427 ]
  %314 = load %struct.redisDb*, %struct.redisDb** %173, align 8, !dbg !3973, !tbaa !2464
  %315 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !3974, !tbaa !3248
  %316 = add nsw i64 %311, %182, !dbg !3975
  %317 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %315, i64 %316, !dbg !3976
  %318 = load %struct.redisObject*, %struct.redisObject** %317, align 8, !dbg !3976, !tbaa !234
  %319 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %314, %struct.redisObject* %318) #6, !dbg !3977
  %320 = icmp eq %struct.redisObject* %319, null, !dbg !3979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3981
  br i1 %320, label %427, label %321, !dbg !3981

; <label>:321:                                    ; preds = %310
  %322 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %319, i64 0, i32 2, !dbg !3982
  %323 = bitcast i8** %322 to %struct.stream**, !dbg !3982
  %324 = load %struct.stream*, %struct.stream** %323, align 8, !dbg !3982, !tbaa !659
  %325 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %311, !dbg !3984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3988
  br i1 %174, label %326, label %356, !dbg !3988

; <label>:326:                                    ; preds = %321
  %327 = getelementptr inbounds %struct.streamID, %struct.streamID* %325, i64 0, i32 0, !dbg !3989
  %328 = load i64, i64* %327, align 8, !dbg !3989, !tbaa !178
  %329 = icmp eq i64 %328, -1, !dbg !3990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3991
  br i1 %329, label %330, label %381, !dbg !3991

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %311, i32 1, !dbg !3992
  %332 = load i64, i64* %331, align 8, !dbg !3992, !tbaa !188
  %333 = icmp eq i64 %332, -1, !dbg !3993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3994
  br i1 %333, label %334, label %381, !dbg !3994

; <label>:334:                                    ; preds = %330
  %335 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %158, i64 %311, !dbg !3995
  %336 = load %struct.streamCG*, %struct.streamCG** %335, align 8, !dbg !3995, !tbaa !234
  %337 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 1, !dbg !3996
  %338 = load i64, i64* %337, align 8, !dbg !3996, !tbaa !974
  %339 = icmp eq i64 %338, 0, !dbg !3998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3999
  br i1 %339, label %377, label %340, !dbg !3999

; <label>:340:                                    ; preds = %334
  %341 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 2, i32 0, !dbg !4004
  %342 = load i64, i64* %341, align 8, !dbg !4004, !tbaa !178
  %343 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %336, i64 0, i32 0, i32 0, !dbg !4005
  %344 = load i64, i64* %343, align 8, !dbg !4005, !tbaa !178
  %345 = icmp ugt i64 %342, %344, !dbg !4006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4007
  br i1 %345, label %346, label %347, !dbg !4007

; <label>:346:                                    ; preds = %340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4008
  br label %378, !dbg !4008

; <label>:347:                                    ; preds = %340
  %348 = icmp ult i64 %342, %344, !dbg !4009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4010
  br i1 %348, label %355, label %349, !dbg !4010

; <label>:349:                                    ; preds = %347
  %350 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 2, i32 1, !dbg !4011
  %351 = load i64, i64* %350, align 8, !dbg !4011, !tbaa !188
  %352 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %336, i64 0, i32 0, i32 1, !dbg !4012
  %353 = load i64, i64* %352, align 8, !dbg !4012, !tbaa !188
  %354 = icmp ugt i64 %351, %353, !dbg !4013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4015
  br i1 %354, label %378, label %355, !dbg !4014

; <label>:355:                                    ; preds = %349, %347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4017
  br label %377

; <label>:356:                                    ; preds = %321
  %357 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 1, !dbg !4018
  %358 = load i64, i64* %357, align 8, !dbg !4018, !tbaa !974
  %359 = icmp eq i64 %358, 0, !dbg !4021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4022
  br i1 %359, label %424, label %360, !dbg !4022

; <label>:360:                                    ; preds = %356
  %361 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 2, i32 0, !dbg !4026
  %362 = load i64, i64* %361, align 8, !dbg !4026, !tbaa !178
  %363 = getelementptr inbounds %struct.streamID, %struct.streamID* %325, i64 0, i32 0, !dbg !4027
  %364 = load i64, i64* %363, align 8, !dbg !4027, !tbaa !178
  %365 = icmp ugt i64 %362, %364, !dbg !4028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4029
  br i1 %365, label %366, label %367, !dbg !4029

; <label>:366:                                    ; preds = %360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4030
  br label %376, !dbg !4030

; <label>:367:                                    ; preds = %360
  %368 = icmp ult i64 %362, %364, !dbg !4031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4032
  br i1 %368, label %375, label %369, !dbg !4032

; <label>:369:                                    ; preds = %367
  %370 = getelementptr inbounds %struct.stream, %struct.stream* %324, i64 0, i32 2, i32 1, !dbg !4033
  %371 = load i64, i64* %370, align 8, !dbg !4033, !tbaa !188
  %372 = getelementptr inbounds %struct.streamID, %struct.streamID* %149, i64 %311, i32 1, !dbg !4034
  %373 = load i64, i64* %372, align 8, !dbg !4034, !tbaa !188
  %374 = icmp ugt i64 %371, %373, !dbg !4035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4037
  br i1 %374, label %376, label %375, !dbg !4036

; <label>:375:                                    ; preds = %369, %367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4039
  br label %424

; <label>:376:                                    ; preds = %369, %366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4039
  br label %381, !dbg !4040

; <label>:377:                                    ; preds = %355, %334
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %424, !dbg !4042

; <label>:378:                                    ; preds = %349, %346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4017
  %379 = bitcast %struct.streamID* %325 to i8*, !dbg !4043
  %380 = bitcast %struct.streamCG* %336 to i8*, !dbg !4043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %379, i8* align 8 %380, i64 16, i1 false), !dbg !4043, !tbaa.struct !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4045
  br label %381, !dbg !4042

; <label>:381:                                    ; preds = %376, %330, %326, %378
  %382 = phi i32 [ 0, %378 ], [ 0, %376 ], [ 1, %330 ], [ 1, %326 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4042
  %383 = add i64 %313, 1, !dbg !4046
  %384 = icmp eq i64 %313, 0, !dbg !4047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4049
  br i1 %384, label %385, label %387, !dbg !4049

; <label>:385:                                    ; preds = %381
  %386 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !4050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4051
  br label %387, !dbg !4051

; <label>:387:                                    ; preds = %385, %381
  %388 = phi i8* [ %386, %385 ], [ %312, %381 ], !dbg !3704
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %175) #7, !dbg !4052
  %389 = bitcast %struct.streamID* %325 to i8*, !dbg !4053
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %175, i8* align 8 %389, i64 16, i1 false), !dbg !4053, !tbaa.struct !1634
  %390 = load i64, i64* %176, align 8, !dbg !4054, !tbaa !188
  %391 = add i64 %390, 1, !dbg !4054
  store i64 %391, i64* %176, align 8, !dbg !4054, !tbaa !188
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 2) #6, !dbg !4055
  %392 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !4056, !tbaa !3248
  %393 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %392, i64 %316, !dbg !4057
  %394 = load %struct.redisObject*, %struct.redisObject** %393, align 8, !dbg !4057, !tbaa !234
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %394) #6, !dbg !4058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4060
  br i1 %174, label %395, label %400, !dbg !4060

; <label>:395:                                    ; preds = %387
  %396 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %158, i64 %311, !dbg !4061
  %397 = load %struct.streamCG*, %struct.streamCG** %396, align 8, !dbg !4061, !tbaa !234
  %398 = load i8*, i8** %177, align 8, !dbg !4063, !tbaa !659
  %399 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* %397, i8* %398, i32 1) #9, !dbg !4064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4065
  br label %400, !dbg !4065

; <label>:400:                                    ; preds = %395, %387
  %401 = phi %struct.streamConsumer* [ %399, %395 ], [ null, %387 ], !dbg !4066
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %178) #7, !dbg !4067
  %402 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !4068, !tbaa !3248
  %403 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %402, i64 %316, !dbg !4069
  %404 = bitcast %struct.redisObject** %403 to i64*, !dbg !4069
  %405 = load i64, i64* %404, align 8, !dbg !4069, !tbaa !234
  store i64 %405, i64* %179, align 8, !dbg !4070, !tbaa !2761
  store %struct.redisObject* %51, %struct.redisObject** %180, align 8, !dbg !4070, !tbaa !2764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4072
  br i1 %181, label %407, label %406, !dbg !4072

; <label>:406:                                    ; preds = %400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4073
  br label %407, !dbg !4073

; <label>:407:                                    ; preds = %400, %406
  %408 = phi i32 [ 1, %406 ], [ 0, %400 ], !dbg !4066
  %409 = icmp eq i32 %382, 0, !dbg !4075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4077
  br i1 %409, label %412, label %410, !dbg !4077

; <label>:410:                                    ; preds = %407
  %411 = or i32 %408, 4, !dbg !4078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4079
  br label %412, !dbg !4079

; <label>:412:                                    ; preds = %407, %410
  %413 = phi i32 [ %411, %410 ], [ %408, %407 ], !dbg !4080
  %414 = load i64, i64* %3, align 8, !dbg !4081, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4082
  br i1 %174, label %415, label %421, !dbg !4082

; <label>:415:                                    ; preds = %412
  %416 = getelementptr inbounds %struct.streamCG*, %struct.streamCG** %158, i64 %311, !dbg !4083
  %417 = load %struct.streamCG*, %struct.streamCG** %416, align 8, !dbg !4083, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4082
  %418 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %324, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %414, i32 0, %struct.streamCG* %417, %struct.streamConsumer* %401, i32 %413, %struct.sreamPropInfo* nonnull %6) #9, !dbg !4086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4087
  %419 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4088, !tbaa !3395
  %420 = add nsw i64 %419, 1, !dbg !4088
  store i64 %420, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4088, !tbaa !3395
  br label %423, !dbg !4090

; <label>:421:                                    ; preds = %412
  %422 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %324, %struct.streamID* nonnull %5, %struct.streamID* null, i64 %414, i32 0, %struct.streamCG* null, %struct.streamConsumer* %401, i32 %413, %struct.sreamPropInfo* nonnull %6) #9, !dbg !4086
  br label %423

; <label>:423:                                    ; preds = %421, %415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %178) #7, !dbg !4092
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %175) #7, !dbg !4092
  br label %424, !dbg !4093

; <label>:424:                                    ; preds = %356, %375, %377, %423
  %425 = phi i64 [ %383, %423 ], [ %313, %377 ], [ %313, %375 ], [ %313, %356 ], !dbg !3704
  %426 = phi i8* [ %388, %423 ], [ %312, %377 ], [ %312, %375 ], [ %312, %356 ], !dbg !3704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4066
  br label %427, !dbg !4094

; <label>:427:                                    ; preds = %310, %424
  %428 = phi i64 [ %425, %424 ], [ %313, %310 ], !dbg !4066
  %429 = phi i8* [ %426, %424 ], [ %312, %310 ], !dbg !4095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4096
  %430 = add nuw nsw i64 %311, 1, !dbg !4097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3835
  %431 = icmp eq i64 %430, %183, !dbg !3834
  br i1 %431, label %308, label %310, !dbg !3835, !llvm.loop !4099

; <label>:432:                                    ; preds = %308
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %429, i64 %428) #6, !dbg !4101
  br label %460, !dbg !4103

; <label>:433:                                    ; preds = %171, %308
  %434 = load i64, i64* %2, align 8, !dbg !4104, !tbaa !265
  %435 = icmp eq i64 %434, -1, !dbg !4106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4107
  br i1 %435, label %458, label %436, !dbg !4107

; <label>:436:                                    ; preds = %433
  %437 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4108
  %438 = load i32, i32* %437, align 8, !dbg !4108, !tbaa !4111
  %439 = and i32 %438, 8, !dbg !4112
  %440 = icmp eq i32 %439, 0, !dbg !4112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4113
  br i1 %440, label %443, label %441, !dbg !4113

; <label>:441:                                    ; preds = %436
  %442 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !4114, !tbaa !2913
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %442) #6, !dbg !4116
  br label %460, !dbg !4117

; <label>:443:                                    ; preds = %436
  %444 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !4118, !tbaa !3248
  %445 = sext i32 %92 to i64, !dbg !4119
  %446 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %444, i64 %445, !dbg !4119
  call void @blockForKeys(%struct.client* nonnull %0, i32 4, %struct.redisObject** %446, i32 %133, i64 %434, %struct.redisObject* null, %struct.streamID* %149) #6, !dbg !4120
  %447 = load i64, i64* %3, align 8, !dbg !4121, !tbaa !265
  %448 = icmp eq i64 %447, 0, !dbg !4121
  %449 = select i1 %448, i64 1000, i64 %447, !dbg !4121
  %450 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 3, !dbg !4122
  store i64 %449, i64* %450, align 8, !dbg !4123, !tbaa !4124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4125
  br i1 %150, label %451, label %455, !dbg !4125

; <label>:451:                                    ; preds = %443
  call void @incrRefCount(%struct.redisObject* nonnull %51) #6, !dbg !4126
  call void @incrRefCount(%struct.redisObject* %52) #6, !dbg !4129
  %452 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !4130
  store %struct.redisObject* %51, %struct.redisObject** %452, align 8, !dbg !4131, !tbaa !4132
  %453 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 5, !dbg !4133
  store %struct.redisObject* %52, %struct.redisObject** %453, align 8, !dbg !4134, !tbaa !4135
  %454 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 8, !dbg !4136
  store i32 %50, i32* %454, align 8, !dbg !4137, !tbaa !4138
  br label %460, !dbg !4139

; <label>:455:                                    ; preds = %443
  %456 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !4140
  %457 = bitcast %struct.redisObject** %456 to <2 x %struct.redisObject*>*, !dbg !4142
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %457, align 8, !dbg !4142, !tbaa !234
  br label %460

; <label>:458:                                    ; preds = %433
  %459 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !4143, !tbaa !2913
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %459) #6, !dbg !4144
  br label %460, !dbg !4144

; <label>:460:                                    ; preds = %294, %307, %451, %455, %458, %441, %432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @preventCommandPropagation(%struct.client* nonnull %0) #6, !dbg !4145
  %461 = icmp eq %struct.streamID* %149, %10, !dbg !4146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4148
  br i1 %461, label %464, label %462, !dbg !4148

; <label>:462:                                    ; preds = %460
  %463 = bitcast %struct.streamID* %149 to i8*, !dbg !4149
  call void @zfree(i8* %463) #6, !dbg !4150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4150
  br label %464, !dbg !4150

; <label>:464:                                    ; preds = %460, %462
  call void @zfree(i8* %157) #6, !dbg !4151
  br label %465, !dbg !4152

; <label>:465:                                    ; preds = %131, %464, %140, %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #7, !dbg !4152
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4152
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !4152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4152
  ret void, !dbg !4152
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamLookupCG(%struct.stream* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !3861 {
  %3 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !4155
  %4 = load %struct.rax*, %struct.rax** %3, align 8, !dbg !4155, !tbaa !123
  %5 = icmp eq %struct.rax* %4, null, !dbg !4156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4157
  br i1 %5, label %38, label %6, !dbg !4157

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4160
  %8 = load i8, i8* %7, align 1, !dbg !4160, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4162
  %9 = trunc i8 %8 to i3, !dbg !4162
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !4162

; <label>:10:                                     ; preds = %6
  %11 = lshr i8 %8, 3, !dbg !4163
  %12 = zext i8 %11 to i64, !dbg !4163
  br label %31, !dbg !4164

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4165
  %15 = load i8, i8* %14, align 1, !dbg !4166, !tbaa !674
  %16 = zext i8 %15 to i64, !dbg !4165
  br label %31, !dbg !4167

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4168
  %19 = bitcast i8* %18 to i16*, !dbg !4169
  %20 = load i16, i16* %19, align 1, !dbg !4169, !tbaa !685
  %21 = zext i16 %20 to i64, !dbg !4168
  br label %31, !dbg !4170

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4171
  %24 = bitcast i8* %23 to i32*, !dbg !4172
  %25 = load i32, i32* %24, align 1, !dbg !4172, !tbaa !690
  %26 = zext i32 %25 to i64, !dbg !4171
  br label %31, !dbg !4173

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4174
  %29 = bitcast i8* %28 to i64*, !dbg !4175
  %30 = load i64, i64* %29, align 1, !dbg !4175, !tbaa !117
  br label %31, !dbg !4176

; <label>:31:                                     ; preds = %6, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %6 ], !dbg !4177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4179
  %33 = tail call i8* @raxFind(%struct.rax* nonnull %4, i8* nonnull %1, i64 %32) #6, !dbg !4180
  %34 = bitcast i8* %33 to %struct.streamCG*, !dbg !4180
  %35 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4182, !tbaa !234
  %36 = icmp eq %struct.streamCG* %35, %34, !dbg !4183
  %37 = select i1 %36, %struct.streamCG* null, %struct.streamCG* %34, !dbg !4184
  br label %38

; <label>:38:                                     ; preds = %2, %31
  %39 = phi %struct.streamCG* [ %37, %31 ], [ null, %2 ], !dbg !4178
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4185
  ret %struct.streamCG* %39, !dbg !4185
}

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !4186 {
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4197
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4197, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4200
  %7 = load i8, i8* %6, align 1, !dbg !4200, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4202
  %8 = trunc i8 %7 to i3, !dbg !4202
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4202

; <label>:9:                                      ; preds = %3
  %10 = lshr i8 %7, 3, !dbg !4203
  %11 = zext i8 %10 to i64, !dbg !4203
  br label %30, !dbg !4204

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4205
  %14 = load i8, i8* %13, align 1, !dbg !4206, !tbaa !674
  %15 = zext i8 %14 to i64, !dbg !4205
  br label %30, !dbg !4207

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4208
  %18 = bitcast i8* %17 to i16*, !dbg !4209
  %19 = load i16, i16* %18, align 1, !dbg !4209, !tbaa !685
  %20 = zext i16 %19 to i64, !dbg !4208
  br label %30, !dbg !4210

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4211
  %23 = bitcast i8* %22 to i32*, !dbg !4212
  %24 = load i32, i32* %23, align 1, !dbg !4212, !tbaa !690
  %25 = zext i32 %24 to i64, !dbg !4211
  br label %30, !dbg !4213

; <label>:26:                                     ; preds = %3
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4214
  %28 = bitcast i8* %27 to i64*, !dbg !4215
  %29 = load i64, i64* %28, align 1, !dbg !4215, !tbaa !117
  br label %30, !dbg !4216

; <label>:30:                                     ; preds = %3, %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %3 ], !dbg !4217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4219
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #6, !dbg !4220
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4220
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4222, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4225
  br i1 %35, label %36, label %74, !dbg !4225

; <label>:36:                                     ; preds = %30
  %37 = icmp eq i32 %2, 0, !dbg !4226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4229
  br i1 %37, label %78, label %38, !dbg !4229

; <label>:38:                                     ; preds = %36
  %39 = tail call i8* @zmalloc(i64 24) #6, !dbg !4230
  %40 = bitcast i8* %39 to %struct.streamConsumer*, !dbg !4230
  %41 = tail call i8* @sdsdup(i8* nonnull %1) #6, !dbg !4231
  %42 = getelementptr inbounds i8, i8* %39, i64 8, !dbg !4232
  %43 = bitcast i8* %42 to i8**, !dbg !4232
  store i8* %41, i8** %43, align 8, !dbg !4233, !tbaa !2394
  %44 = tail call %struct.rax* @raxNew() #6, !dbg !4234
  %45 = getelementptr inbounds i8, i8* %39, i64 16, !dbg !4235
  %46 = bitcast i8* %45 to %struct.rax**, !dbg !4235
  store %struct.rax* %44, %struct.rax** %46, align 8, !dbg !4236, !tbaa !2712
  %47 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4237, !tbaa !159
  %48 = load i8, i8* %6, align 1, !dbg !4240, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4242
  %49 = trunc i8 %48 to i3, !dbg !4242
  switch i3 %49, label %71 [
    i3 0, label %50
    i3 1, label %53
    i3 2, label %57
    i3 3, label %62
    i3 -4, label %67
  ], !dbg !4242

; <label>:50:                                     ; preds = %38
  %51 = lshr i8 %48, 3, !dbg !4243
  %52 = zext i8 %51 to i64, !dbg !4243
  br label %71, !dbg !4244

; <label>:53:                                     ; preds = %38
  %54 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4245
  %55 = load i8, i8* %54, align 1, !dbg !4246, !tbaa !674
  %56 = zext i8 %55 to i64, !dbg !4245
  br label %71, !dbg !4247

; <label>:57:                                     ; preds = %38
  %58 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4248
  %59 = bitcast i8* %58 to i16*, !dbg !4249
  %60 = load i16, i16* %59, align 1, !dbg !4249, !tbaa !685
  %61 = zext i16 %60 to i64, !dbg !4248
  br label %71, !dbg !4250

; <label>:62:                                     ; preds = %38
  %63 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4251
  %64 = bitcast i8* %63 to i32*, !dbg !4252
  %65 = load i32, i32* %64, align 1, !dbg !4252, !tbaa !690
  %66 = zext i32 %65 to i64, !dbg !4251
  br label %71, !dbg !4253

; <label>:67:                                     ; preds = %38
  %68 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4254
  %69 = bitcast i8* %68 to i64*, !dbg !4255
  %70 = load i64, i64* %69, align 1, !dbg !4255, !tbaa !117
  br label %71, !dbg !4256

; <label>:71:                                     ; preds = %38, %50, %53, %57, %62, %67
  %72 = phi i64 [ %70, %67 ], [ %66, %62 ], [ %61, %57 ], [ %56, %53 ], [ %52, %50 ], [ 0, %38 ], !dbg !4257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4259
  %73 = tail call i32 @raxInsert(%struct.rax* %47, i8* nonnull %1, i64 %72, i8* %39, i8** null) #6, !dbg !4260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4261
  br label %74, !dbg !4261

; <label>:74:                                     ; preds = %71, %30
  %75 = phi %struct.streamConsumer* [ %40, %71 ], [ %33, %30 ], !dbg !4218
  %76 = tail call i64 @mstime() #6, !dbg !4262
  %77 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %75, i64 0, i32 0, !dbg !4263
  store i64 %76, i64* %77, align 8, !dbg !4264, !tbaa !4265
  br label %78, !dbg !4266

; <label>:78:                                     ; preds = %36, %74
  %79 = phi %struct.streamConsumer* [ %75, %74 ], [ null, %36 ], !dbg !4267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4268
  ret %struct.streamConsumer* %79, !dbg !4268
}

; Function Attrs: noredzone
declare dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject**, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @preventCommandPropagation(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @streamFreeConsumer(%struct.streamConsumer*) #0 !dbg !4269 {
  %2 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 2, !dbg !4275
  %3 = load %struct.rax*, %struct.rax** %2, align 8, !dbg !4275, !tbaa !2712
  tail call void @raxFree(%struct.rax* %3) #6, !dbg !4276
  %4 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %0, i64 0, i32 1, !dbg !4277
  %5 = load i8*, i8** %4, align 8, !dbg !4277, !tbaa !2394
  tail call void @sdsfree(i8* %5) #6, !dbg !4278
  %6 = bitcast %struct.streamConsumer* %0 to i8*, !dbg !4279
  tail call void @zfree(i8* %6) #6, !dbg !4280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4281
  ret void, !dbg !4281
}

; Function Attrs: noredzone
declare dso_local void @raxFree(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.streamCG* @streamCreateCG(%struct.stream* nocapture, i8*, i64, %struct.streamID* nocapture readonly) local_unnamed_addr #0 !dbg !4282 {
  %5 = getelementptr inbounds %struct.stream, %struct.stream* %0, i64 0, i32 3, !dbg !4295
  %6 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4295, !tbaa !123
  %7 = icmp eq %struct.rax* %6, null, !dbg !4297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4298
  br i1 %7, label %8, label %10, !dbg !4298

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.rax* @raxNew() #6, !dbg !4299
  store %struct.rax* %9, %struct.rax** %5, align 8, !dbg !4300, !tbaa !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4301
  br label %10, !dbg !4301

; <label>:10:                                     ; preds = %8, %4
  %11 = phi %struct.rax* [ %9, %8 ], [ %6, %4 ], !dbg !4302
  %12 = tail call i8* @raxFind(%struct.rax* %11, i8* %1, i64 %2) #6, !dbg !4304
  %13 = load i8*, i8** @raxNotFound, align 8, !dbg !4305, !tbaa !234
  %14 = icmp eq i8* %12, %13, !dbg !4306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4307
  br i1 %14, label %15, label %27, !dbg !4307

; <label>:15:                                     ; preds = %10
  %16 = tail call i8* @zmalloc(i64 32) #6, !dbg !4308
  %17 = bitcast i8* %16 to %struct.streamCG*, !dbg !4308
  %18 = tail call %struct.rax* @raxNew() #6, !dbg !4310
  %19 = getelementptr inbounds i8, i8* %16, i64 16, !dbg !4311
  %20 = bitcast i8* %19 to %struct.rax**, !dbg !4311
  store %struct.rax* %18, %struct.rax** %20, align 8, !dbg !4312, !tbaa !155
  %21 = tail call %struct.rax* @raxNew() #6, !dbg !4313
  %22 = getelementptr inbounds i8, i8* %16, i64 24, !dbg !4314
  %23 = bitcast i8* %22 to %struct.rax**, !dbg !4314
  store %struct.rax* %21, %struct.rax** %23, align 8, !dbg !4315, !tbaa !159
  %24 = bitcast %struct.streamID* %3 to i8*, !dbg !4316
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %24, i64 16, i1 false), !dbg !4316, !tbaa.struct !1634
  %25 = load %struct.rax*, %struct.rax** %5, align 8, !dbg !4317, !tbaa !123
  %26 = tail call i32 @raxInsert(%struct.rax* %25, i8* %1, i64 %2, i8* %16, i8** null) #6, !dbg !4318
  br label %27

; <label>:27:                                     ; preds = %10, %15
  %28 = phi %struct.streamCG* [ %17, %15 ], [ null, %10 ], !dbg !4319
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4320
  ret %struct.streamCG* %28, !dbg !4320
}

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @streamDelConsumer(%struct.streamCG* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !4321 {
  %3 = alloca %struct.raxIterator, align 8
  %4 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 2, !dbg !4338
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4338, !tbaa !159
  %6 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !4341
  %7 = load i8, i8* %6, align 1, !dbg !4341, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4343
  %8 = trunc i8 %7 to i3, !dbg !4343
  switch i3 %8, label %30 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !4343

; <label>:9:                                      ; preds = %2
  %10 = lshr i8 %7, 3, !dbg !4344
  %11 = zext i8 %10 to i64, !dbg !4344
  br label %30, !dbg !4345

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4346
  %14 = load i8, i8* %13, align 1, !dbg !4347, !tbaa !674
  %15 = zext i8 %14 to i64, !dbg !4346
  br label %30, !dbg !4348

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4349
  %18 = bitcast i8* %17 to i16*, !dbg !4350
  %19 = load i16, i16* %18, align 1, !dbg !4350, !tbaa !685
  %20 = zext i16 %19 to i64, !dbg !4349
  br label %30, !dbg !4351

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4352
  %23 = bitcast i8* %22 to i32*, !dbg !4353
  %24 = load i32, i32* %23, align 1, !dbg !4353, !tbaa !690
  %25 = zext i32 %24 to i64, !dbg !4352
  br label %30, !dbg !4354

; <label>:26:                                     ; preds = %2
  %27 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4355
  %28 = bitcast i8* %27 to i64*, !dbg !4356
  %29 = load i64, i64* %28, align 1, !dbg !4356, !tbaa !117
  br label %30, !dbg !4357

; <label>:30:                                     ; preds = %2, %26, %21, %16, %12, %9
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], [ 0, %2 ], !dbg !4358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4360
  %32 = tail call i8* @raxFind(%struct.rax* %5, i8* nonnull %1, i64 %31) #6, !dbg !4361
  %33 = bitcast i8* %32 to %struct.streamConsumer*, !dbg !4361
  %34 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !4363, !tbaa !234
  %35 = icmp eq %struct.streamConsumer* %34, %33, !dbg !4364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4365
  br i1 %35, label %36, label %37, !dbg !4365

; <label>:36:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4370
  br label %96, !dbg !4370

; <label>:37:                                     ; preds = %30
  %38 = tail call i64 @mstime() #6, !dbg !4371
  %39 = bitcast i8* %32 to i64*, !dbg !4372
  store i64 %38, i64* %39, align 8, !dbg !4373, !tbaa !4265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4368
  %40 = icmp eq i8* %32, null, !dbg !4375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4370
  br i1 %40, label %96, label %41, !dbg !4370

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !4377
  %43 = bitcast i8* %42 to %struct.rax**, !dbg !4377
  %44 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4377, !tbaa !2712
  %45 = tail call i64 @raxSize(%struct.rax* %44) #6, !dbg !4378
  %46 = bitcast %struct.raxIterator* %3 to i8*, !dbg !4380
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %46) #7, !dbg !4380
  %47 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4381, !tbaa !2712
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %47) #6, !dbg !4383
  %48 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !4384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4385
  %49 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !4386
  %50 = icmp eq i32 %49, 0, !dbg !4385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4385
  br i1 %50, label %64, label %51, !dbg !4385

; <label>:51:                                     ; preds = %41
  %52 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %53 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %0, i64 0, i32 1
  %54 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 2
  %55 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 4
  br label %56, !dbg !4385

; <label>:56:                                     ; preds = %51, %56
  %57 = load i8*, i8** %52, align 8, !dbg !4387, !tbaa !525
  %58 = load %struct.rax*, %struct.rax** %53, align 8, !dbg !4389, !tbaa !155
  %59 = load i8*, i8** %54, align 8, !dbg !4390, !tbaa !706
  %60 = load i64, i64* %55, align 8, !dbg !4391, !tbaa !704
  %61 = call i32 @raxRemove(%struct.rax* %58, i8* %59, i64 %60, i8** null) #6, !dbg !4392
  call void @zfree(i8* %57) #6, !dbg !4395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4385
  %62 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !4386
  %63 = icmp eq i32 %62, 0, !dbg !4385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4385
  br i1 %63, label %64, label %56, !dbg !4385, !llvm.loop !4397

; <label>:64:                                     ; preds = %56, %41
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !4399
  %65 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !4400, !tbaa !159
  %66 = load i8, i8* %6, align 1, !dbg !4403, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4405
  %67 = trunc i8 %66 to i3, !dbg !4405
  switch i3 %67, label %89 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %75
    i3 3, label %80
    i3 -4, label %85
  ], !dbg !4405

; <label>:68:                                     ; preds = %64
  %69 = lshr i8 %66, 3, !dbg !4406
  %70 = zext i8 %69 to i64, !dbg !4406
  br label %89, !dbg !4407

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !4408
  %73 = load i8, i8* %72, align 1, !dbg !4409, !tbaa !674
  %74 = zext i8 %73 to i64, !dbg !4408
  br label %89, !dbg !4410

; <label>:75:                                     ; preds = %64
  %76 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !4411
  %77 = bitcast i8* %76 to i16*, !dbg !4412
  %78 = load i16, i16* %77, align 1, !dbg !4412, !tbaa !685
  %79 = zext i16 %78 to i64, !dbg !4411
  br label %89, !dbg !4413

; <label>:80:                                     ; preds = %64
  %81 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !4414
  %82 = bitcast i8* %81 to i32*, !dbg !4415
  %83 = load i32, i32* %82, align 1, !dbg !4415, !tbaa !690
  %84 = zext i32 %83 to i64, !dbg !4414
  br label %89, !dbg !4416

; <label>:85:                                     ; preds = %64
  %86 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !4417
  %87 = bitcast i8* %86 to i64*, !dbg !4418
  %88 = load i64, i64* %87, align 1, !dbg !4418, !tbaa !117
  br label %89, !dbg !4419

; <label>:89:                                     ; preds = %64, %68, %71, %75, %80, %85
  %90 = phi i64 [ %88, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %71 ], [ %70, %68 ], [ 0, %64 ], !dbg !4420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4421
  %91 = call i32 @raxRemove(%struct.rax* %65, i8* nonnull %1, i64 %90, i8** null) #6, !dbg !4422
  %92 = load %struct.rax*, %struct.rax** %43, align 8, !dbg !4425, !tbaa !2712
  call void @raxFree(%struct.rax* %92) #6, !dbg !4426
  %93 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !4427
  %94 = bitcast i8* %93 to i8**, !dbg !4427
  %95 = load i8*, i8** %94, align 8, !dbg !4427, !tbaa !2394
  call void @sdsfree(i8* %95) #6, !dbg !4428
  call void @zfree(i8* nonnull %32) #6, !dbg !4429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4430
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %46) #7, !dbg !4431
  br label %96

; <label>:96:                                     ; preds = %37, %36, %89
  %97 = phi i64 [ %45, %89 ], [ 0, %36 ], [ 0, %37 ], !dbg !4359
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4431
  ret i64 %97, !dbg !4431
}

; Function Attrs: noredzone
declare dso_local i64 @raxSize(%struct.rax*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xgroupCommand(%struct.client*) local_unnamed_addr #0 !dbg !4432 {
  %2 = alloca [7 x i8*], align 16
  %3 = alloca <2 x i64>, align 16
  %4 = bitcast <2 x i64>* %3 to %struct.streamID*
  %5 = alloca %struct.streamID, align 8
  %6 = bitcast [7 x i8*]* %2 to i8*, !dbg !4457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #7, !dbg !4457
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 6
  %8 = bitcast i8** %7 to i64*, !dbg !4458
  store i64 0, i64* %8, align 16, !dbg !4458
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 0, !dbg !4458
  %10 = bitcast [7 x i8*]* %2 to <2 x i8*>*, !dbg !4458
  store <2 x i8*> <i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0)>, <2 x i8*>* %10, align 16, !dbg !4458
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 2, !dbg !4458
  %12 = bitcast i8** %11 to <2 x i8*>*, !dbg !4458
  store <2 x i8*> <i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !4458
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 4, !dbg !4458
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !4458
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !4458
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4462
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4462, !tbaa !3248
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !4463
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !4463, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !4464
  %20 = load i8*, i8** %19, align 8, !dbg !4464, !tbaa !659
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4467
  %22 = load i32, i32* %21, align 8, !dbg !4467, !tbaa !3242
  %23 = icmp eq i32 %22, 6, !dbg !4469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4470
  br i1 %23, label %24, label %38, !dbg !4470

; <label>:24:                                     ; preds = %1
  %25 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !4471
  %26 = icmp eq i32 %25, 0, !dbg !4471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4472
  br i1 %26, label %27, label %36, !dbg !4472

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 5, !dbg !4473
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !4473, !tbaa !234
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !4476
  %31 = load i8*, i8** %30, align 8, !dbg !4476, !tbaa !659
  %32 = tail call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !4477
  %33 = icmp eq i32 %32, 0, !dbg !4477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4478
  br i1 %33, label %35, label %34, !dbg !4478

; <label>:34:                                     ; preds = %27
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !4479
  br label %334, !dbg !4481

; <label>:35:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4482
  br label %36, !dbg !4482

; <label>:36:                                     ; preds = %24, %35
  %37 = phi i32 [ 1, %35 ], [ 0, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4483
  br label %41, !dbg !4483

; <label>:38:                                     ; preds = %1
  %39 = icmp sgt i32 %22, 3, !dbg !4484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4483
  br i1 %39, label %41, label %40, !dbg !4483

; <label>:40:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4486
  br label %121, !dbg !4486

; <label>:41:                                     ; preds = %36, %38
  %42 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4488
  %44 = load %struct.redisDb*, %struct.redisDb** %43, align 8, !dbg !4488, !tbaa !2464
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !4490
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !4490, !tbaa !234
  %47 = tail call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %44, %struct.redisObject* %46) #6, !dbg !4491
  %48 = icmp eq %struct.redisObject* %47, null, !dbg !4493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4495
  br i1 %48, label %56, label %49, !dbg !4495

; <label>:49:                                     ; preds = %41
  %50 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %47, i32 6) #6, !dbg !4496
  %51 = icmp eq i32 %50, 0, !dbg !4496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4499
  br i1 %51, label %52, label %334, !dbg !4499

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %47, i64 0, i32 2, !dbg !4500
  %54 = bitcast i8** %53 to %struct.stream**, !dbg !4500
  %55 = load %struct.stream*, %struct.stream** %54, align 8, !dbg !4500, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4501
  br label %56, !dbg !4501

; <label>:56:                                     ; preds = %52, %41
  %57 = phi %struct.stream* [ %55, %52 ], [ null, %41 ], !dbg !4502
  %58 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4503, !tbaa !3248
  %59 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 3, !dbg !4504
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !4504, !tbaa !234
  %61 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %60, i64 0, i32 2, !dbg !4505
  %62 = load i8*, i8** %61, align 8, !dbg !4505, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4506
  %63 = load i32, i32* %21, align 8, !dbg !4507, !tbaa !3242
  %64 = icmp slt i32 %63, 4, !dbg !4508
  %65 = icmp ne i32 %42, 0, !dbg !4509
  %66 = or i1 %65, %64, !dbg !4486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4486
  br i1 %66, label %121, label %67, !dbg !4486

; <label>:67:                                     ; preds = %56
  %68 = icmp eq %struct.stream* %57, null, !dbg !4510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4513
  br i1 %68, label %69, label %70, !dbg !4513

; <label>:69:                                     ; preds = %67
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !4514
  br label %334, !dbg !4516

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.stream, %struct.stream* %57, i64 0, i32 3, !dbg !4521
  %72 = load %struct.rax*, %struct.rax** %71, align 8, !dbg !4521, !tbaa !123
  %73 = icmp eq %struct.rax* %72, null, !dbg !4522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4523
  br i1 %73, label %74, label %75, !dbg !4523

; <label>:74:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4524
  br label %106, !dbg !4524

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !4527
  %77 = load i8, i8* %76, align 1, !dbg !4527, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4529
  %78 = trunc i8 %77 to i3, !dbg !4529
  switch i3 %78, label %100 [
    i3 0, label %79
    i3 1, label %82
    i3 2, label %86
    i3 3, label %91
    i3 -4, label %96
  ], !dbg !4529

; <label>:79:                                     ; preds = %75
  %80 = lshr i8 %77, 3, !dbg !4530
  %81 = zext i8 %80 to i64, !dbg !4530
  br label %100, !dbg !4531

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !4532
  %84 = load i8, i8* %83, align 1, !dbg !4533, !tbaa !674
  %85 = zext i8 %84 to i64, !dbg !4532
  br label %100, !dbg !4534

; <label>:86:                                     ; preds = %75
  %87 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !4535
  %88 = bitcast i8* %87 to i16*, !dbg !4536
  %89 = load i16, i16* %88, align 1, !dbg !4536, !tbaa !685
  %90 = zext i16 %89 to i64, !dbg !4535
  br label %100, !dbg !4537

; <label>:91:                                     ; preds = %75
  %92 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !4538
  %93 = bitcast i8* %92 to i32*, !dbg !4539
  %94 = load i32, i32* %93, align 1, !dbg !4539, !tbaa !690
  %95 = zext i32 %94 to i64, !dbg !4538
  br label %100, !dbg !4540

; <label>:96:                                     ; preds = %75
  %97 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !4541
  %98 = bitcast i8* %97 to i64*, !dbg !4542
  %99 = load i64, i64* %98, align 1, !dbg !4542, !tbaa !117
  br label %100, !dbg !4543

; <label>:100:                                    ; preds = %75, %96, %91, %86, %82, %79
  %101 = phi i64 [ %99, %96 ], [ %95, %91 ], [ %90, %86 ], [ %85, %82 ], [ %81, %79 ], [ 0, %75 ], !dbg !4544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4546
  %102 = tail call i8* @raxFind(%struct.rax* nonnull %72, i8* nonnull %62, i64 %101) #6, !dbg !4547
  %103 = bitcast i8* %102 to %struct.streamCG*, !dbg !4547
  %104 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4549, !tbaa !234
  %105 = icmp eq %struct.streamCG* %104, %103, !dbg !4550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %74, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4552
  br label %109, !dbg !4552

; <label>:107:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4551
  %108 = icmp eq i8* %102, null, !dbg !4553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4552
  br i1 %108, label %109, label %121, !dbg !4552

; <label>:109:                                    ; preds = %106, %107
  %110 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4554
  %111 = icmp eq i32 %110, 0, !dbg !4554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4555
  br i1 %111, label %115, label %112, !dbg !4555

; <label>:112:                                    ; preds = %109
  %113 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !4556
  %114 = icmp eq i32 %113, 0, !dbg !4556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4557
  br i1 %114, label %115, label %121, !dbg !4557

; <label>:115:                                    ; preds = %112, %109
  %116 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4558, !tbaa !3248
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 2, !dbg !4560
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !4560, !tbaa !234
  %119 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %118, i64 0, i32 2, !dbg !4561
  %120 = load i8*, i8** %119, align 8, !dbg !4561, !tbaa !659
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %62, i8* %120) #6, !dbg !4562
  br label %334, !dbg !4563

; <label>:121:                                    ; preds = %40, %112, %107, %56
  %122 = phi i1 [ %65, %56 ], [ %65, %112 ], [ %65, %107 ], [ false, %40 ]
  %123 = phi %struct.stream* [ %57, %56 ], [ %57, %112 ], [ %57, %107 ], [ null, %40 ]
  %124 = phi i8* [ %62, %56 ], [ %62, %112 ], [ %62, %107 ], [ null, %40 ]
  %125 = phi i8* [ null, %56 ], [ null, %112 ], [ %102, %107 ], [ null, %40 ], !dbg !4545
  %126 = phi %struct.streamCG* [ null, %56 ], [ null, %112 ], [ %103, %107 ], [ null, %40 ], !dbg !4545
  %127 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0)) #10, !dbg !4564
  %128 = icmp eq i32 %127, 0, !dbg !4564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4565
  br i1 %128, label %129, label %216, !dbg !4565

; <label>:129:                                    ; preds = %121
  %130 = load i32, i32* %21, align 8, !dbg !4566, !tbaa !3242
  %131 = icmp eq i32 %130, 5, !dbg !4567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4568
  br i1 %131, label %134, label %132, !dbg !4568

; <label>:132:                                    ; preds = %129
  %133 = icmp eq i32 %130, 6, !dbg !4569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4570
  br i1 %133, label %134, label %216, !dbg !4570

; <label>:134:                                    ; preds = %132, %129
  %135 = bitcast <2 x i64>* %3 to i8*, !dbg !4571
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %135) #7, !dbg !4571
  %136 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4572, !tbaa !3248
  %137 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %136, i64 4, !dbg !4574
  %138 = load %struct.redisObject*, %struct.redisObject** %137, align 8, !dbg !4574, !tbaa !234
  %139 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %138, i64 0, i32 2, !dbg !4575
  %140 = load i8*, i8** %139, align 8, !dbg !4575, !tbaa !659
  %141 = tail call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4576
  %142 = icmp eq i32 %141, 0, !dbg !4576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4577
  br i1 %142, label %143, label %149, !dbg !4577

; <label>:143:                                    ; preds = %134
  %144 = icmp eq %struct.stream* %123, null, !dbg !4578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4581
  br i1 %144, label %148, label %145, !dbg !4581

; <label>:145:                                    ; preds = %143
  %146 = getelementptr inbounds %struct.stream, %struct.stream* %123, i64 0, i32 2, !dbg !4582
  %147 = bitcast %struct.streamID* %146 to i8*, !dbg !4582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %135, i8* nonnull align 8 %147, i64 16, i1 false), !dbg !4582, !tbaa.struct !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4584
  br label %170, !dbg !4585

; <label>:148:                                    ; preds = %143
  store <2 x i64> zeroinitializer, <2 x i64>* %3, align 16, !dbg !4586, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4585
  br label %158, !dbg !4585

; <label>:149:                                    ; preds = %134
  %150 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4588, !tbaa !3248
  %151 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %150, i64 4, !dbg !4590
  %152 = load %struct.redisObject*, %struct.redisObject** %151, align 8, !dbg !4590, !tbaa !234
  %153 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %152, %struct.streamID* nonnull %4, i64 0, i32 1) #6, !dbg !4597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4598
  %154 = icmp eq i32 %153, 0, !dbg !4599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4600
  br i1 %154, label %156, label %155, !dbg !4600

; <label>:155:                                    ; preds = %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4601
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %135) #7, !dbg !4603
  br label %334

; <label>:156:                                    ; preds = %149
  %157 = icmp eq %struct.stream* %123, null, !dbg !4604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4585
  br i1 %157, label %158, label %172, !dbg !4585

; <label>:158:                                    ; preds = %148, %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4606
  br i1 %122, label %160, label %159, !dbg !4606

; <label>:159:                                    ; preds = %158
  tail call void @_serverAssert(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 1781) #6, !dbg !4606
  tail call void @_exit(i32 1) #8, !dbg !4606
  unreachable

; <label>:160:                                    ; preds = %158
  %161 = tail call %struct.redisObject* @createStreamObject() #6, !dbg !4608
  %162 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4609
  %163 = load %struct.redisDb*, %struct.redisDb** %162, align 8, !dbg !4609, !tbaa !2464
  %164 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4610, !tbaa !3248
  %165 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %164, i64 2, !dbg !4611
  %166 = load %struct.redisObject*, %struct.redisObject** %165, align 8, !dbg !4611, !tbaa !234
  tail call void @dbAdd(%struct.redisDb* %163, %struct.redisObject* %166, %struct.redisObject* %161) #6, !dbg !4612
  %167 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %161, i64 0, i32 2, !dbg !4613
  %168 = bitcast i8** %167 to %struct.stream**, !dbg !4613
  %169 = load %struct.stream*, %struct.stream** %168, align 8, !dbg !4613, !tbaa !659
  br label %170, !dbg !4614

; <label>:170:                                    ; preds = %160, %145
  %171 = phi %struct.stream* [ %123, %145 ], [ %169, %160 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4615
  br label %172, !dbg !4616

; <label>:172:                                    ; preds = %170, %156
  %173 = phi %struct.stream* [ %123, %156 ], [ %171, %170 ], !dbg !4618
  %174 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !4616
  %175 = load i8, i8* %174, align 1, !dbg !4616, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4621
  %176 = trunc i8 %175 to i3, !dbg !4621
  switch i3 %176, label %198 [
    i3 0, label %177
    i3 1, label %180
    i3 2, label %184
    i3 3, label %189
    i3 -4, label %194
  ], !dbg !4621

; <label>:177:                                    ; preds = %172
  %178 = lshr i8 %175, 3, !dbg !4622
  %179 = zext i8 %178 to i64, !dbg !4622
  br label %198, !dbg !4623

; <label>:180:                                    ; preds = %172
  %181 = getelementptr inbounds i8, i8* %124, i64 -3, !dbg !4624
  %182 = load i8, i8* %181, align 1, !dbg !4625, !tbaa !674
  %183 = zext i8 %182 to i64, !dbg !4624
  br label %198, !dbg !4626

; <label>:184:                                    ; preds = %172
  %185 = getelementptr inbounds i8, i8* %124, i64 -5, !dbg !4627
  %186 = bitcast i8* %185 to i16*, !dbg !4628
  %187 = load i16, i16* %186, align 1, !dbg !4628, !tbaa !685
  %188 = zext i16 %187 to i64, !dbg !4627
  br label %198, !dbg !4629

; <label>:189:                                    ; preds = %172
  %190 = getelementptr inbounds i8, i8* %124, i64 -9, !dbg !4630
  %191 = bitcast i8* %190 to i32*, !dbg !4631
  %192 = load i32, i32* %191, align 1, !dbg !4631, !tbaa !690
  %193 = zext i32 %192 to i64, !dbg !4630
  br label %198, !dbg !4632

; <label>:194:                                    ; preds = %172
  %195 = getelementptr inbounds i8, i8* %124, i64 -17, !dbg !4633
  %196 = bitcast i8* %195 to i64*, !dbg !4634
  %197 = load i64, i64* %196, align 1, !dbg !4634, !tbaa !117
  br label %198, !dbg !4635

; <label>:198:                                    ; preds = %172, %177, %180, %184, %189, %194
  %199 = phi i64 [ %197, %194 ], [ %193, %189 ], [ %188, %184 ], [ %183, %180 ], [ %179, %177 ], [ 0, %172 ], !dbg !4636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4638
  %200 = call %struct.streamCG* @streamCreateCG(%struct.stream* %173, i8* nonnull %124, i64 %199, %struct.streamID* nonnull %4) #9, !dbg !4639
  %201 = icmp eq %struct.streamCG* %200, null, !dbg !4641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4643
  br i1 %201, label %213, label %202, !dbg !4643

; <label>:202:                                    ; preds = %198
  %203 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4644, !tbaa !4646
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %203) #6, !dbg !4647
  %204 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4648, !tbaa !3395
  %205 = add nsw i64 %204, 1, !dbg !4648
  store i64 %205, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4648, !tbaa !3395
  %206 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4649, !tbaa !3248
  %207 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %206, i64 2, !dbg !4650
  %208 = load %struct.redisObject*, %struct.redisObject** %207, align 8, !dbg !4650, !tbaa !234
  %209 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4651
  %210 = load %struct.redisDb*, %struct.redisDb** %209, align 8, !dbg !4651, !tbaa !2464
  %211 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %210, i64 0, i32 5, !dbg !4652
  %212 = load i32, i32* %211, align 8, !dbg !4652, !tbaa !2469
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), %struct.redisObject* %208, i32 %212) #6, !dbg !4653
  br label %215, !dbg !4654

; <label>:213:                                    ; preds = %198
  %214 = tail call i8* @sdsnew(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i64 0, i64 0)) #6, !dbg !4655
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %214) #6, !dbg !4657
  br label %215

; <label>:215:                                    ; preds = %213, %202
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4603
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %135) #7, !dbg !4603
  br label %333

; <label>:216:                                    ; preds = %121, %132
  %217 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #10, !dbg !4658
  %218 = icmp eq i32 %217, 0, !dbg !4658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4659
  br i1 %218, label %219, label %252, !dbg !4659

; <label>:219:                                    ; preds = %216
  %220 = load i32, i32* %21, align 8, !dbg !4660, !tbaa !3242
  %221 = icmp eq i32 %220, 5, !dbg !4661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4662
  br i1 %221, label %222, label %252, !dbg !4662

; <label>:222:                                    ; preds = %219
  %223 = bitcast %struct.streamID* %5 to i8*, !dbg !4663
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %223) #7, !dbg !4663
  %224 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4664, !tbaa !3248
  %225 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %224, i64 4, !dbg !4666
  %226 = load %struct.redisObject*, %struct.redisObject** %225, align 8, !dbg !4666, !tbaa !234
  %227 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %226, i64 0, i32 2, !dbg !4667
  %228 = load i8*, i8** %227, align 8, !dbg !4667, !tbaa !659
  %229 = tail call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4668
  %230 = icmp eq i32 %229, 0, !dbg !4668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4669
  br i1 %230, label %231, label %234, !dbg !4669

; <label>:231:                                    ; preds = %222
  %232 = getelementptr inbounds %struct.stream, %struct.stream* %123, i64 0, i32 2, !dbg !4670
  %233 = bitcast %struct.streamID* %232 to i8*, !dbg !4670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %223, i8* nonnull align 8 %233, i64 16, i1 false), !dbg !4670, !tbaa.struct !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4672
  br label %241, !dbg !4672

; <label>:234:                                    ; preds = %222
  %235 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4673, !tbaa !3248
  %236 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %235, i64 4, !dbg !4675
  %237 = load %struct.redisObject*, %struct.redisObject** %236, align 8, !dbg !4675, !tbaa !234
  %238 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %237, %struct.streamID* nonnull %5, i64 0, i32 0) #6, !dbg !4682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4683
  %239 = icmp eq i32 %238, 0, !dbg !4684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4685
  br i1 %239, label %241, label %240, !dbg !4685

; <label>:240:                                    ; preds = %234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4686
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %223) #7, !dbg !4688
  br label %334

; <label>:241:                                    ; preds = %234, %231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* nonnull align 8 %223, i64 16, i1 false), !dbg !4689, !tbaa.struct !1634
  %242 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4690, !tbaa !4646
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %242) #6, !dbg !4691
  %243 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4692, !tbaa !3395
  %244 = add nsw i64 %243, 1, !dbg !4692
  store i64 %244, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4692, !tbaa !3395
  %245 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4693, !tbaa !3248
  %246 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %245, i64 2, !dbg !4694
  %247 = load %struct.redisObject*, %struct.redisObject** %246, align 8, !dbg !4694, !tbaa !234
  %248 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4695
  %249 = load %struct.redisDb*, %struct.redisDb** %248, align 8, !dbg !4695, !tbaa !2464
  %250 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %249, i64 0, i32 5, !dbg !4696
  %251 = load i32, i32* %250, align 8, !dbg !4696, !tbaa !2469
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), %struct.redisObject* %247, i32 %251) #6, !dbg !4697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4688
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %223) #7, !dbg !4688
  br label %333

; <label>:252:                                    ; preds = %216, %219
  %253 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)) #10, !dbg !4698
  %254 = icmp eq i32 %253, 0, !dbg !4698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4699
  br i1 %254, label %255, label %306, !dbg !4699

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* %21, align 8, !dbg !4700, !tbaa !3242
  %257 = icmp eq i32 %256, 4, !dbg !4701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4702
  br i1 %257, label %258, label %306, !dbg !4702

; <label>:258:                                    ; preds = %255
  %259 = icmp eq %struct.streamCG* %126, null, !dbg !4703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4706
  br i1 %259, label %304, label %260, !dbg !4706

; <label>:260:                                    ; preds = %258
  %261 = getelementptr inbounds %struct.stream, %struct.stream* %123, i64 0, i32 3, !dbg !4707
  %262 = load %struct.rax*, %struct.rax** %261, align 8, !dbg !4707, !tbaa !123
  %263 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !4711
  %264 = load i8, i8* %263, align 1, !dbg !4711, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4713
  %265 = trunc i8 %264 to i3, !dbg !4713
  switch i3 %265, label %287 [
    i3 0, label %266
    i3 1, label %269
    i3 2, label %273
    i3 3, label %278
    i3 -4, label %283
  ], !dbg !4713

; <label>:266:                                    ; preds = %260
  %267 = lshr i8 %264, 3, !dbg !4714
  %268 = zext i8 %267 to i64, !dbg !4714
  br label %287, !dbg !4715

; <label>:269:                                    ; preds = %260
  %270 = getelementptr inbounds i8, i8* %124, i64 -3, !dbg !4716
  %271 = load i8, i8* %270, align 1, !dbg !4717, !tbaa !674
  %272 = zext i8 %271 to i64, !dbg !4716
  br label %287, !dbg !4718

; <label>:273:                                    ; preds = %260
  %274 = getelementptr inbounds i8, i8* %124, i64 -5, !dbg !4719
  %275 = bitcast i8* %274 to i16*, !dbg !4720
  %276 = load i16, i16* %275, align 1, !dbg !4720, !tbaa !685
  %277 = zext i16 %276 to i64, !dbg !4719
  br label %287, !dbg !4721

; <label>:278:                                    ; preds = %260
  %279 = getelementptr inbounds i8, i8* %124, i64 -9, !dbg !4722
  %280 = bitcast i8* %279 to i32*, !dbg !4723
  %281 = load i32, i32* %280, align 1, !dbg !4723, !tbaa !690
  %282 = zext i32 %281 to i64, !dbg !4722
  br label %287, !dbg !4724

; <label>:283:                                    ; preds = %260
  %284 = getelementptr inbounds i8, i8* %124, i64 -17, !dbg !4725
  %285 = bitcast i8* %284 to i64*, !dbg !4726
  %286 = load i64, i64* %285, align 1, !dbg !4726, !tbaa !117
  br label %287, !dbg !4727

; <label>:287:                                    ; preds = %260, %266, %269, %273, %278, %283
  %288 = phi i64 [ %286, %283 ], [ %282, %278 ], [ %277, %273 ], [ %272, %269 ], [ %268, %266 ], [ 0, %260 ], !dbg !4728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4730
  %289 = tail call i32 @raxRemove(%struct.rax* %262, i8* nonnull %124, i64 %288, i8** null) #6, !dbg !4731
  %290 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %126, i64 0, i32 1, !dbg !4734
  %291 = load %struct.rax*, %struct.rax** %290, align 8, !dbg !4734, !tbaa !155
  tail call void @raxFreeWithCallback(%struct.rax* %291, void (i8*)* bitcast (void (%struct.streamNACK*)* @streamFreeNACK to void (i8*)*)) #6, !dbg !4735
  %292 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %126, i64 0, i32 2, !dbg !4736
  %293 = load %struct.rax*, %struct.rax** %292, align 8, !dbg !4736, !tbaa !159
  tail call void @raxFreeWithCallback(%struct.rax* %293, void (i8*)* bitcast (void (%struct.streamConsumer*)* @streamFreeConsumer to void (i8*)*)) #6, !dbg !4737
  tail call void @zfree(i8* %125) #6, !dbg !4738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4739
  %294 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !4740, !tbaa !4741
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %294) #6, !dbg !4742
  %295 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4743, !tbaa !3395
  %296 = add nsw i64 %295, 1, !dbg !4743
  store i64 %296, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4743, !tbaa !3395
  %297 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4744, !tbaa !3248
  %298 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %297, i64 2, !dbg !4745
  %299 = load %struct.redisObject*, %struct.redisObject** %298, align 8, !dbg !4745, !tbaa !234
  %300 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4746
  %301 = load %struct.redisDb*, %struct.redisDb** %300, align 8, !dbg !4746, !tbaa !2464
  %302 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %301, i64 0, i32 5, !dbg !4747
  %303 = load i32, i32* %302, align 8, !dbg !4747, !tbaa !2469
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), %struct.redisObject* %299, i32 %303) #6, !dbg !4748
  br label %333, !dbg !4749

; <label>:304:                                    ; preds = %258
  %305 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4750, !tbaa !3596
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %305) #6, !dbg !4752
  br label %333

; <label>:306:                                    ; preds = %252, %255
  %307 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #10, !dbg !4753
  %308 = icmp eq i32 %307, 0, !dbg !4753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4754
  br i1 %308, label %309, label %328, !dbg !4754

; <label>:309:                                    ; preds = %306
  %310 = load i32, i32* %21, align 8, !dbg !4755, !tbaa !3242
  %311 = icmp eq i32 %310, 5, !dbg !4756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4757
  br i1 %311, label %312, label %328, !dbg !4757

; <label>:312:                                    ; preds = %309
  %313 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4758, !tbaa !3248
  %314 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %313, i64 4, !dbg !4759
  %315 = load %struct.redisObject*, %struct.redisObject** %314, align 8, !dbg !4759, !tbaa !234
  %316 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %315, i64 0, i32 2, !dbg !4760
  %317 = load i8*, i8** %316, align 8, !dbg !4760, !tbaa !659
  %318 = tail call i64 @streamDelConsumer(%struct.streamCG* %126, i8* %317) #9, !dbg !4761
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %318) #6, !dbg !4763
  %319 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4764, !tbaa !3395
  %320 = add nsw i64 %319, 1, !dbg !4764
  store i64 %320, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4764, !tbaa !3395
  %321 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4765, !tbaa !3248
  %322 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %321, i64 2, !dbg !4766
  %323 = load %struct.redisObject*, %struct.redisObject** %322, align 8, !dbg !4766, !tbaa !234
  %324 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4767
  %325 = load %struct.redisDb*, %struct.redisDb** %324, align 8, !dbg !4767, !tbaa !2464
  %326 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %325, i64 0, i32 5, !dbg !4768
  %327 = load i32, i32* %326, align 8, !dbg !4768, !tbaa !2469
  tail call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), %struct.redisObject* %323, i32 %327) #6, !dbg !4769
  br label %333, !dbg !4770

; <label>:328:                                    ; preds = %306, %309
  %329 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !4771
  %330 = icmp eq i32 %329, 0, !dbg !4771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4773
  br i1 %330, label %331, label %332, !dbg !4773

; <label>:331:                                    ; preds = %328
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %9) #6, !dbg !4774
  br label %333, !dbg !4776

; <label>:332:                                    ; preds = %328
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !4777
  br label %333

; <label>:333:                                    ; preds = %241, %215, %312, %332, %331, %287, %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %334, !dbg !4779

; <label>:334:                                    ; preds = %49, %240, %155, %333, %115, %69, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #7, !dbg !4779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4779
  ret void, !dbg !4779
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
define dso_local void @xsetidCommand(%struct.client*) local_unnamed_addr #0 !dbg !4780 {
  %2 = alloca %struct.streamID, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamIterator, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4792
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4792, !tbaa !3248
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !4793
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !4793, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !4794, !tbaa !4795
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #6, !dbg !4796
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4800
  br i1 %12, label %80, label %13, !dbg !4800

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !4801
  %15 = icmp eq i32 %14, 0, !dbg !4801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4802
  br i1 %15, label %16, label %80, !dbg !4802

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4803
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4803
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4803, !tbaa !659
  %20 = bitcast %struct.streamID* %2 to i8*, !dbg !4805
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4805
  %21 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4806, !tbaa !3248
  %22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !4808
  %23 = load %struct.redisObject*, %struct.redisObject** %22, align 8, !dbg !4808, !tbaa !234
  %24 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %23, %struct.streamID* nonnull %2, i64 0, i32 1) #6, !dbg !4815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4816
  %25 = icmp eq i32 %24, 0, !dbg !4817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4818
  br i1 %25, label %26, label %79, !dbg !4818

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 1, !dbg !4819
  %28 = load i64, i64* %27, align 8, !dbg !4819, !tbaa !974
  %29 = icmp eq i64 %28, 0, !dbg !4820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4821
  br i1 %29, label %66, label %30, !dbg !4821

; <label>:30:                                     ; preds = %26
  %31 = bitcast %struct.streamID* %3 to i8*, !dbg !4822
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4822
  %32 = bitcast %struct.streamIterator* %4 to i8*, !dbg !4823
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4831
  %33 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 7, i64 0, !dbg !4832
  %34 = bitcast i64* %33 to <2 x i64>*, !dbg !4833
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 8, !dbg !4833, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4834
  %35 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 8, i64 0, !dbg !4835
  %36 = bitcast i64* %35 to <2 x i64>*, !dbg !4836
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %36, align 8, !dbg !4836, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 9, !dbg !4837
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 0, !dbg !4838
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !4838, !tbaa !108
  call void @raxStart(%struct.raxIterator* nonnull %37, %struct.rax* %39) #6, !dbg !4839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4841
  %40 = call i32 @raxSeek(%struct.raxIterator* nonnull %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !4842
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 0, !dbg !4843
  store %struct.stream* %19, %struct.stream** %41, align 8, !dbg !4844, !tbaa !1382
  %42 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 10, !dbg !4845
  %43 = bitcast i8** %42 to <2 x i8*>*, !dbg !4846
  store <2 x i8*> zeroinitializer, <2 x i8*>* %43, align 8, !dbg !4846, !tbaa !234
  %44 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %4, i64 0, i32 6, !dbg !4847
  store i32 1, i32* %44, align 4, !dbg !4848, !tbaa !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4849
  %45 = bitcast i64* %5 to i8*, !dbg !4850
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4850
  %46 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %4, %struct.streamID* nonnull %3, i64* nonnull %5) #9, !dbg !4853
  call void @raxStop(%struct.raxIterator* nonnull %37) #6, !dbg !4856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4857
  %47 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 0, !dbg !4862
  %48 = load i64, i64* %47, align 8, !dbg !4862, !tbaa !178
  %49 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !4863
  %50 = load i64, i64* %49, align 8, !dbg !4863, !tbaa !178
  %51 = icmp ugt i64 %48, %50, !dbg !4864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4865
  br i1 %51, label %61, label %52, !dbg !4865

; <label>:52:                                     ; preds = %30
  %53 = icmp ult i64 %48, %50, !dbg !4866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4867
  br i1 %53, label %54, label %55, !dbg !4867

; <label>:54:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4870
  br label %64, !dbg !4870

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds %struct.streamID, %struct.streamID* %2, i64 0, i32 1, !dbg !4871
  %57 = load i64, i64* %56, align 8, !dbg !4871, !tbaa !188
  %58 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !4872
  %59 = load i64, i64* %58, align 8, !dbg !4872, !tbaa !188
  %60 = icmp ugt i64 %57, %59, !dbg !4873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4874
  br i1 %60, label %61, label %62, !dbg !4874

; <label>:61:                                     ; preds = %55, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4870
  br label %65, !dbg !4870

; <label>:62:                                     ; preds = %55
  %63 = icmp ult i64 %57, %59, !dbg !4876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4870
  br i1 %63, label %64, label %65, !dbg !4870

; <label>:64:                                     ; preds = %54, %62
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !4879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4881
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4882
  br label %79

; <label>:65:                                     ; preds = %61, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #7, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %32) #7, !dbg !4882
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #7, !dbg !4882
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %26
  %67 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 2, !dbg !4883
  %68 = bitcast %struct.streamID* %67 to i8*, !dbg !4884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %68, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !4884, !tbaa.struct !1634
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4885, !tbaa !4646
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %69) #6, !dbg !4886
  %70 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4887, !tbaa !3395
  %71 = add nsw i64 %70, 1, !dbg !4887
  store i64 %71, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !4887, !tbaa !3395
  %72 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !4888, !tbaa !3248
  %73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !4889
  %74 = load %struct.redisObject*, %struct.redisObject** %73, align 8, !dbg !4889, !tbaa !234
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4890
  %76 = load %struct.redisDb*, %struct.redisDb** %75, align 8, !dbg !4890, !tbaa !2464
  %77 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %76, i64 0, i32 5, !dbg !4891
  %78 = load i32, i32* %77, align 8, !dbg !4891, !tbaa !2469
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), %struct.redisObject* %74, i32 %78) #6, !dbg !4892
  br label %79, !dbg !4893

; <label>:79:                                     ; preds = %16, %64, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !4893
  br label %80

; <label>:80:                                     ; preds = %1, %13, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4893
  ret void, !dbg !4893
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWriteOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xackCommand(%struct.client*) local_unnamed_addr #0 !dbg !4894 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca [16 x i8], align 16
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !4911
  %6 = load %struct.redisDb*, %struct.redisDb** %5, align 8, !dbg !4911, !tbaa !2464
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4912
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4912, !tbaa !3248
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !4913
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !4913, !tbaa !234
  %11 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %6, %struct.redisObject* %10) #6, !dbg !4914
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !4916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4918
  br i1 %12, label %62, label %13, !dbg !4918

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !4919
  %15 = icmp eq i32 %14, 0, !dbg !4919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4922
  br i1 %15, label %16, label %121, !dbg !4922

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !4923
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !4923
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !4923, !tbaa !659
  %20 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4924, !tbaa !3248
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4925
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4925, !tbaa !234
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !4926
  %24 = load i8*, i8** %23, align 8, !dbg !4926, !tbaa !659
  %25 = getelementptr inbounds %struct.stream, %struct.stream* %19, i64 0, i32 3, !dbg !4930
  %26 = load %struct.rax*, %struct.rax** %25, align 8, !dbg !4930, !tbaa !123
  %27 = icmp eq %struct.rax* %26, null, !dbg !4931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4932
  br i1 %27, label %28, label %29, !dbg !4932

; <label>:28:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4935
  br label %62, !dbg !4936

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !4940
  %31 = load i8, i8* %30, align 1, !dbg !4940, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4942
  %32 = trunc i8 %31 to i3, !dbg !4942
  switch i3 %32, label %54 [
    i3 0, label %33
    i3 1, label %36
    i3 2, label %40
    i3 3, label %45
    i3 -4, label %50
  ], !dbg !4942

; <label>:33:                                     ; preds = %29
  %34 = lshr i8 %31, 3, !dbg !4943
  %35 = zext i8 %34 to i64, !dbg !4943
  br label %54, !dbg !4944

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !4945
  %38 = load i8, i8* %37, align 1, !dbg !4946, !tbaa !674
  %39 = zext i8 %38 to i64, !dbg !4945
  br label %54, !dbg !4947

; <label>:40:                                     ; preds = %29
  %41 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !4948
  %42 = bitcast i8* %41 to i16*, !dbg !4949
  %43 = load i16, i16* %42, align 1, !dbg !4949, !tbaa !685
  %44 = zext i16 %43 to i64, !dbg !4948
  br label %54, !dbg !4950

; <label>:45:                                     ; preds = %29
  %46 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !4951
  %47 = bitcast i8* %46 to i32*, !dbg !4952
  %48 = load i32, i32* %47, align 1, !dbg !4952, !tbaa !690
  %49 = zext i32 %48 to i64, !dbg !4951
  br label %54, !dbg !4953

; <label>:50:                                     ; preds = %29
  %51 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !4954
  %52 = bitcast i8* %51 to i64*, !dbg !4955
  %53 = load i64, i64* %52, align 1, !dbg !4955, !tbaa !117
  br label %54, !dbg !4956

; <label>:54:                                     ; preds = %29, %33, %36, %40, %45, %50
  %55 = phi i64 [ %53, %50 ], [ %49, %45 ], [ %44, %40 ], [ %39, %36 ], [ %35, %33 ], [ 0, %29 ], !dbg !4957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4959
  %56 = tail call i8* @raxFind(%struct.rax* nonnull %26, i8* nonnull %24, i64 %55) #6, !dbg !4960
  %57 = bitcast i8* %56 to %struct.streamCG*, !dbg !4960
  %58 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !4962, !tbaa !234
  %59 = icmp eq %struct.streamCG* %58, %57, !dbg !4963
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4935
  %60 = icmp eq i8* %56, null, !dbg !4964
  %61 = or i1 %59, %60, !dbg !4964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4936
  br i1 %61, label %63, label %65, !dbg !4936

; <label>:62:                                     ; preds = %1, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4936
  br label %63, !dbg !4965

; <label>:63:                                     ; preds = %62, %54
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4965, !tbaa !3596
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #6, !dbg !4967
  br label %121, !dbg !4968

; <label>:65:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4971
  %66 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4972
  %67 = load i32, i32* %66, align 8, !dbg !4972, !tbaa !3242
  %68 = icmp sgt i32 %67, 3, !dbg !4973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4974
  br i1 %68, label %69, label %117, !dbg !4974

; <label>:69:                                     ; preds = %65
  %70 = bitcast %struct.streamID* %3 to i8*
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %72 = bitcast [2 x i64]* %2 to i8*
  %73 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %75 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1
  %76 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %77 = getelementptr inbounds i8, i8* %56, i64 16
  %78 = bitcast i8* %77 to %struct.rax**
  br label %79, !dbg !4974

; <label>:79:                                     ; preds = %69, %110
  %80 = phi i64 [ 3, %69 ], [ %112, %110 ]
  %81 = phi i32 [ 0, %69 ], [ %111, %110 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %70) #7, !dbg !4975
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %71) #7, !dbg !4976
  %82 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !4978, !tbaa !3248
  %83 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %82, i64 %80, !dbg !4980
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !4980, !tbaa !234
  %85 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %84, %struct.streamID* nonnull %3, i64 0, i32 1) #6, !dbg !4987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4988
  %86 = icmp eq i32 %85, 0, !dbg !4989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4990
  br i1 %86, label %87, label %116, !dbg !4990

; <label>:87:                                     ; preds = %79
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %72) #7, !dbg !4993
  %88 = load i64, i64* %73, align 8, !dbg !4994, !tbaa !178
  %89 = call i64 @intrev64(i64 %88) #6, !dbg !4994
  store i64 %89, i64* %74, align 16, !dbg !4995, !tbaa !117
  %90 = load i64, i64* %75, align 8, !dbg !4996, !tbaa !188
  %91 = call i64 @intrev64(i64 %90) #6, !dbg !4996
  store i64 %91, i64* %76, align 8, !dbg !4997, !tbaa !117
  %92 = call i8* @memcpy(i8* nonnull %71, i8* nonnull %72, i64 16) #6, !dbg !4998
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %72) #7, !dbg !4999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4999
  %93 = load %struct.rax*, %struct.rax** %78, align 8, !dbg !5000, !tbaa !155
  %94 = call i8* @raxFind(%struct.rax* %93, i8* nonnull %71, i64 16) #6, !dbg !5001
  %95 = bitcast i8* %94 to %struct.streamNACK*, !dbg !5001
  %96 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5003, !tbaa !234
  %97 = icmp eq %struct.streamNACK* %96, %95, !dbg !5005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5006
  br i1 %97, label %110, label %98, !dbg !5006

; <label>:98:                                     ; preds = %87
  %99 = load %struct.rax*, %struct.rax** %78, align 8, !dbg !5007, !tbaa !155
  %100 = call i32 @raxRemove(%struct.rax* %99, i8* nonnull %71, i64 16, i8** null) #6, !dbg !5009
  %101 = getelementptr inbounds i8, i8* %94, i64 16, !dbg !5010
  %102 = bitcast i8* %101 to %struct.streamConsumer**, !dbg !5010
  %103 = load %struct.streamConsumer*, %struct.streamConsumer** %102, align 8, !dbg !5010, !tbaa !2391
  %104 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %103, i64 0, i32 2, !dbg !5011
  %105 = load %struct.rax*, %struct.rax** %104, align 8, !dbg !5011, !tbaa !2712
  %106 = call i32 @raxRemove(%struct.rax* %105, i8* nonnull %71, i64 16, i8** null) #6, !dbg !5012
  call void @zfree(i8* %94) #6, !dbg !5015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5016
  %107 = add nsw i32 %81, 1, !dbg !5017
  %108 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5018, !tbaa !3395
  %109 = add nsw i64 %108, 1, !dbg !5018
  store i64 %109, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5018, !tbaa !3395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5019
  br label %110, !dbg !5019

; <label>:110:                                    ; preds = %98, %87
  %111 = phi i32 [ %107, %98 ], [ %81, %87 ], !dbg !5020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5021
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #7, !dbg !5021
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %70) #7, !dbg !5021
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %112 = add nuw nsw i64 %80, 1, !dbg !5022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5023
  %113 = load i32, i32* %66, align 8, !dbg !4972, !tbaa !3242
  %114 = sext i32 %113 to i64, !dbg !4973
  %115 = icmp slt i64 %112, %114, !dbg !4973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4974
  br i1 %115, label %79, label %117, !dbg !4974, !llvm.loop !5024

; <label>:116:                                    ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5026
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %71) #7, !dbg !5021
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %70) #7, !dbg !5021
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %120

; <label>:117:                                    ; preds = %110, %65
  %118 = phi i32 [ 0, %65 ], [ %111, %110 ], !dbg !4969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4974
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %119 = sext i32 %118 to i64, !dbg !5027
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %119) #6, !dbg !5028
  br label %120, !dbg !5029

; <label>:120:                                    ; preds = %116, %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %121

; <label>:121:                                    ; preds = %13, %120, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5029
  ret void, !dbg !5029
}

; Function Attrs: noredzone nounwind
define dso_local void @xpendingCommand(%struct.client*) local_unnamed_addr #0 !dbg !5030 {
  %2 = alloca [2 x i64], align 16
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.streamID, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.raxIterator, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.raxIterator, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5075
  %11 = load i32, i32* %10, align 8, !dbg !5075, !tbaa !3242
  %12 = icmp eq i32 %11, 3, !dbg !5076
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5077
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5077, !tbaa !3248
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !5078
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !5078, !tbaa !234
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5080
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5080, !tbaa !234
  %19 = icmp eq i32 %11, 7, !dbg !5082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5083
  br i1 %19, label %20, label %23, !dbg !5083

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 6, !dbg !5084
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !5084, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5083
  br label %23, !dbg !5083

; <label>:23:                                     ; preds = %1, %20
  %24 = phi %struct.redisObject* [ %22, %20 ], [ null, %1 ], !dbg !5083
  %25 = bitcast %struct.streamID* %3 to i8*, !dbg !5086
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #7, !dbg !5086
  %26 = bitcast %struct.streamID* %4 to i8*, !dbg !5086
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #7, !dbg !5086
  %27 = bitcast i64* %5 to i8*, !dbg !5087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !5087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5088
  br i1 %12, label %33, label %28, !dbg !5088

; <label>:28:                                     ; preds = %23
  %29 = icmp eq i32 %11, 6, !dbg !5090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5091
  br i1 %29, label %34, label %30, !dbg !5091

; <label>:30:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5092
  br i1 %19, label %34, label %31, !dbg !5092

; <label>:31:                                     ; preds = %30
  %32 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !5093, !tbaa !3533
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %32) #6, !dbg !5095
  br label %338, !dbg !5096

; <label>:33:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5097
  br label %59

; <label>:34:                                     ; preds = %30, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5097
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 5, !dbg !5098
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !5098, !tbaa !234
  %37 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %36, i64* nonnull %5, i8* null) #6, !dbg !5103
  %38 = icmp eq i32 %37, -1, !dbg !5104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5105
  br i1 %38, label %338, label %39, !dbg !5105

; <label>:39:                                     ; preds = %34
  %40 = load i64, i64* %5, align 8, !dbg !5106, !tbaa !265
  %41 = icmp slt i64 %40, 0, !dbg !5108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5109
  br i1 %41, label %42, label %43, !dbg !5109

; <label>:42:                                     ; preds = %39
  store i64 0, i64* %5, align 8, !dbg !5110, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5111
  br label %43, !dbg !5111

; <label>:43:                                     ; preds = %42, %39
  %44 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5112, !tbaa !3248
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 3, !dbg !5114
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !5114, !tbaa !234
  %47 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %46, %struct.streamID* nonnull %3, i64 0, i32 0) #6, !dbg !5121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5122
  %48 = icmp eq i32 %47, -1, !dbg !5123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5124
  br i1 %48, label %338, label %49, !dbg !5124

; <label>:49:                                     ; preds = %43
  %50 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5125, !tbaa !3248
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 4, !dbg !5127
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !5127, !tbaa !234
  %53 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %52, %struct.streamID* nonnull %4, i64 -1, i32 0) #6, !dbg !5134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5135
  %54 = icmp eq i32 %53, -1, !dbg !5136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5137
  br i1 %54, label %338, label %55, !dbg !5137

; <label>:55:                                     ; preds = %49
  %56 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5138, !tbaa !3248
  %57 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %56, i64 1
  %58 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !5139, !tbaa !234
  br label %59, !dbg !5137

; <label>:59:                                     ; preds = %55, %33
  %60 = phi %struct.redisObject* [ %58, %55 ], [ %16, %33 ], !dbg !5139
  %61 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5140
  %62 = load %struct.redisDb*, %struct.redisDb** %61, align 8, !dbg !5140, !tbaa !2464
  %63 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %62, %struct.redisObject* %60) #6, !dbg !5141
  %64 = icmp eq %struct.redisObject* %63, null, !dbg !5143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5145
  br i1 %64, label %65, label %67, !dbg !5145

; <label>:65:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5146
  %66 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !5148
  br label %114, !dbg !5146

; <label>:67:                                     ; preds = %59
  %68 = call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %63, i32 6) #6, !dbg !5150
  %69 = icmp eq i32 %68, 0, !dbg !5150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5152
  br i1 %69, label %70, label %338, !dbg !5151

; <label>:70:                                     ; preds = %67
  %71 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %63, i64 0, i32 2, !dbg !5153
  %72 = bitcast i8** %71 to %struct.stream**, !dbg !5153
  %73 = load %struct.stream*, %struct.stream** %72, align 8, !dbg !5153, !tbaa !659
  %74 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !5154
  %75 = load i8*, i8** %74, align 8, !dbg !5154, !tbaa !659
  %76 = getelementptr inbounds %struct.stream, %struct.stream* %73, i64 0, i32 3, !dbg !5158
  %77 = load %struct.rax*, %struct.rax** %76, align 8, !dbg !5158, !tbaa !123
  %78 = icmp eq %struct.rax* %77, null, !dbg !5159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5160
  br i1 %78, label %79, label %80, !dbg !5160

; <label>:79:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5161
  br label %111, !dbg !5161

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds i8, i8* %75, i64 -1, !dbg !5164
  %82 = load i8, i8* %81, align 1, !dbg !5164, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5166
  %83 = trunc i8 %82 to i3, !dbg !5166
  switch i3 %83, label %105 [
    i3 0, label %84
    i3 1, label %87
    i3 2, label %91
    i3 3, label %96
    i3 -4, label %101
  ], !dbg !5166

; <label>:84:                                     ; preds = %80
  %85 = lshr i8 %82, 3, !dbg !5167
  %86 = zext i8 %85 to i64, !dbg !5167
  br label %105, !dbg !5168

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds i8, i8* %75, i64 -3, !dbg !5169
  %89 = load i8, i8* %88, align 1, !dbg !5170, !tbaa !674
  %90 = zext i8 %89 to i64, !dbg !5169
  br label %105, !dbg !5171

; <label>:91:                                     ; preds = %80
  %92 = getelementptr inbounds i8, i8* %75, i64 -5, !dbg !5172
  %93 = bitcast i8* %92 to i16*, !dbg !5173
  %94 = load i16, i16* %93, align 1, !dbg !5173, !tbaa !685
  %95 = zext i16 %94 to i64, !dbg !5172
  br label %105, !dbg !5174

; <label>:96:                                     ; preds = %80
  %97 = getelementptr inbounds i8, i8* %75, i64 -9, !dbg !5175
  %98 = bitcast i8* %97 to i32*, !dbg !5176
  %99 = load i32, i32* %98, align 1, !dbg !5176, !tbaa !690
  %100 = zext i32 %99 to i64, !dbg !5175
  br label %105, !dbg !5177

; <label>:101:                                    ; preds = %80
  %102 = getelementptr inbounds i8, i8* %75, i64 -17, !dbg !5178
  %103 = bitcast i8* %102 to i64*, !dbg !5179
  %104 = load i64, i64* %103, align 1, !dbg !5179, !tbaa !117
  br label %105, !dbg !5180

; <label>:105:                                    ; preds = %80, %101, %96, %91, %87, %84
  %106 = phi i64 [ %104, %101 ], [ %100, %96 ], [ %95, %91 ], [ %90, %87 ], [ %86, %84 ], [ 0, %80 ], !dbg !5181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5183
  %107 = call i8* @raxFind(%struct.rax* nonnull %77, i8* nonnull %75, i64 %106) #6, !dbg !5184
  %108 = bitcast i8* %107 to %struct.streamCG*, !dbg !5184
  %109 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5186, !tbaa !234
  %110 = icmp eq %struct.streamCG* %109, %108, !dbg !5187
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %79, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5190
  br label %114, !dbg !5190

; <label>:112:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5188
  %113 = icmp eq i8* %107, null, !dbg !5191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5190
  br i1 %113, label %114, label %119, !dbg !5190

; <label>:114:                                    ; preds = %111, %65, %112
  %115 = phi i8** [ %74, %111 ], [ %66, %65 ], [ %74, %112 ], !dbg !5148
  %116 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2, !dbg !5192
  %117 = load i8*, i8** %116, align 8, !dbg !5192, !tbaa !659
  %118 = load i8*, i8** %115, align 8, !dbg !5148, !tbaa !659
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %117, i8* %118) #6, !dbg !5193
  br label %337, !dbg !5194

; <label>:119:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5195
  br i1 %12, label %120, label %193, !dbg !5195

; <label>:120:                                    ; preds = %119
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 4) #6, !dbg !5196
  %121 = getelementptr inbounds i8, i8* %107, i64 16, !dbg !5197
  %122 = bitcast i8* %121 to %struct.rax**, !dbg !5197
  %123 = load %struct.rax*, %struct.rax** %122, align 8, !dbg !5197, !tbaa !155
  %124 = call i64 @raxSize(%struct.rax* %123) #6, !dbg !5198
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %124) #6, !dbg !5199
  %125 = load %struct.rax*, %struct.rax** %122, align 8, !dbg !5200, !tbaa !155
  %126 = call i64 @raxSize(%struct.rax* %125) #6, !dbg !5201
  %127 = icmp eq i64 %126, 0, !dbg !5202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5203
  br i1 %127, label %128, label %132, !dbg !5203

; <label>:128:                                    ; preds = %120
  %129 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5204, !tbaa !5206
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %129) #6, !dbg !5207
  %130 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5208, !tbaa !5206
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %130) #6, !dbg !5209
  %131 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !5210, !tbaa !2913
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %131) #6, !dbg !5211
  br label %336, !dbg !5212

; <label>:132:                                    ; preds = %120
  %133 = bitcast %struct.raxIterator* %6 to i8*, !dbg !5213
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %133) #7, !dbg !5213
  %134 = load %struct.rax*, %struct.rax** %122, align 8, !dbg !5214, !tbaa !155
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %134) #6, !dbg !5216
  %135 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5217
  %136 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5218
  %137 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 2, !dbg !5219
  %138 = load i8*, i8** %137, align 8, !dbg !5219, !tbaa !706
  %139 = bitcast [2 x i64]* %2 to i8*, !dbg !5222
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139) #7, !dbg !5222
  %140 = call i8* @memcpy(i8* nonnull %139, i8* %138, i64 16) #6, !dbg !5223
  %141 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !5224
  %142 = load i64, i64* %141, align 16, !dbg !5224, !tbaa !117
  %143 = call i64 @intrev64(i64 %142) #6, !dbg !5224
  %144 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !5225
  store i64 %143, i64* %144, align 8, !dbg !5226, !tbaa !178
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !5227
  %146 = load i64, i64* %145, align 8, !dbg !5227, !tbaa !117
  %147 = call i64 @intrev64(i64 %146) #6, !dbg !5227
  %148 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !5228
  store i64 %147, i64* %148, align 8, !dbg !5229, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139) #7, !dbg !5230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5230
  %149 = call i8* @sdsempty() #6, !dbg !5234
  %150 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %143, i64 %147) #6, !dbg !5235
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %150) #6, !dbg !5237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5238
  %151 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5239
  %152 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5240
  %153 = load i8*, i8** %137, align 8, !dbg !5241, !tbaa !706
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %139) #7, !dbg !5244
  %154 = call i8* @memcpy(i8* nonnull %139, i8* %153, i64 16) #6, !dbg !5245
  %155 = load i64, i64* %141, align 16, !dbg !5246, !tbaa !117
  %156 = call i64 @intrev64(i64 %155) #6, !dbg !5246
  %157 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5247
  store i64 %156, i64* %157, align 8, !dbg !5248, !tbaa !178
  %158 = load i64, i64* %145, align 8, !dbg !5249, !tbaa !117
  %159 = call i64 @intrev64(i64 %158) #6, !dbg !5249
  %160 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5250
  store i64 %159, i64* %160, align 8, !dbg !5251, !tbaa !188
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %139) #7, !dbg !5252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5252
  %161 = call i8* @sdsempty() #6, !dbg !5256
  %162 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %156, i64 %159) #6, !dbg !5257
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %162) #6, !dbg !5259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5260
  call void @raxStop(%struct.raxIterator* nonnull %6) #6, !dbg !5261
  %163 = getelementptr inbounds i8, i8* %107, i64 24, !dbg !5262
  %164 = bitcast i8* %163 to %struct.rax**, !dbg !5262
  %165 = load %struct.rax*, %struct.rax** %164, align 8, !dbg !5262, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %6, %struct.rax* %165) #6, !dbg !5263
  %166 = call i32 @raxSeek(%struct.raxIterator* nonnull %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !5264
  %167 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5268
  %168 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5269
  %169 = icmp eq i32 %168, 0, !dbg !5268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5268
  br i1 %169, label %191, label %170, !dbg !5268

; <label>:170:                                    ; preds = %132
  %171 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 3
  %172 = bitcast i8** %171 to %struct.streamConsumer**
  %173 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i64 0, i32 4
  br label %174, !dbg !5268

; <label>:174:                                    ; preds = %170, %187
  %175 = phi i64 [ 0, %170 ], [ %188, %187 ]
  %176 = load %struct.streamConsumer*, %struct.streamConsumer** %172, align 8, !dbg !5270, !tbaa !525
  %177 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %176, i64 0, i32 2, !dbg !5272
  %178 = load %struct.rax*, %struct.rax** %177, align 8, !dbg !5272, !tbaa !2712
  %179 = call i64 @raxSize(%struct.rax* %178) #6, !dbg !5274
  %180 = icmp eq i64 %179, 0, !dbg !5275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5276
  br i1 %180, label %187, label %181, !dbg !5276, !llvm.loop !5277

; <label>:181:                                    ; preds = %174
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 2) #6, !dbg !5279
  %182 = load i8*, i8** %137, align 8, !dbg !5280, !tbaa !706
  %183 = load i64, i64* %173, align 8, !dbg !5281, !tbaa !704
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %182, i64 %183) #6, !dbg !5282
  %184 = load %struct.rax*, %struct.rax** %177, align 8, !dbg !5283, !tbaa !2712
  %185 = call i64 @raxSize(%struct.rax* %184) #6, !dbg !5284
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %185) #6, !dbg !5285
  %186 = add i64 %175, 1, !dbg !5286
  br label %187, !dbg !5278

; <label>:187:                                    ; preds = %174, %181
  %188 = phi i64 [ %186, %181 ], [ %175, %174 ], !dbg !5287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5288
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %189 = call i32 @raxNext(%struct.raxIterator* nonnull %6) #6, !dbg !5269
  %190 = icmp eq i32 %189, 0, !dbg !5268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5268
  br i1 %190, label %191, label %174, !dbg !5268

; <label>:191:                                    ; preds = %187, %132
  %192 = phi i64 [ 0, %132 ], [ %188, %187 ], !dbg !5267
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %167, i64 %192) #6, !dbg !5289
  call void @raxStop(%struct.raxIterator* nonnull %6) #6, !dbg !5290
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %133) #7, !dbg !5291
  br label %336

; <label>:193:                                    ; preds = %119
  %194 = icmp eq %struct.redisObject* %24, null, !dbg !5292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5292
  br i1 %194, label %195, label %196, !dbg !5292

; <label>:195:                                    ; preds = %193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5296
  br label %237, !dbg !5296

; <label>:196:                                    ; preds = %193
  %197 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !5297
  %198 = load i8*, i8** %197, align 8, !dbg !5297, !tbaa !659
  %199 = getelementptr inbounds i8, i8* %107, i64 24, !dbg !5302
  %200 = bitcast i8* %199 to %struct.rax**, !dbg !5302
  %201 = load %struct.rax*, %struct.rax** %200, align 8, !dbg !5302, !tbaa !159
  %202 = getelementptr inbounds i8, i8* %198, i64 -1, !dbg !5305
  %203 = load i8, i8* %202, align 1, !dbg !5305, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5307
  %204 = trunc i8 %203 to i3, !dbg !5307
  switch i3 %204, label %226 [
    i3 0, label %205
    i3 1, label %208
    i3 2, label %212
    i3 3, label %217
    i3 -4, label %222
  ], !dbg !5307

; <label>:205:                                    ; preds = %196
  %206 = lshr i8 %203, 3, !dbg !5308
  %207 = zext i8 %206 to i64, !dbg !5308
  br label %226, !dbg !5309

; <label>:208:                                    ; preds = %196
  %209 = getelementptr inbounds i8, i8* %198, i64 -3, !dbg !5310
  %210 = load i8, i8* %209, align 1, !dbg !5311, !tbaa !674
  %211 = zext i8 %210 to i64, !dbg !5310
  br label %226, !dbg !5312

; <label>:212:                                    ; preds = %196
  %213 = getelementptr inbounds i8, i8* %198, i64 -5, !dbg !5313
  %214 = bitcast i8* %213 to i16*, !dbg !5314
  %215 = load i16, i16* %214, align 1, !dbg !5314, !tbaa !685
  %216 = zext i16 %215 to i64, !dbg !5313
  br label %226, !dbg !5315

; <label>:217:                                    ; preds = %196
  %218 = getelementptr inbounds i8, i8* %198, i64 -9, !dbg !5316
  %219 = bitcast i8* %218 to i32*, !dbg !5317
  %220 = load i32, i32* %219, align 1, !dbg !5317, !tbaa !690
  %221 = zext i32 %220 to i64, !dbg !5316
  br label %226, !dbg !5318

; <label>:222:                                    ; preds = %196
  %223 = getelementptr inbounds i8, i8* %198, i64 -17, !dbg !5319
  %224 = bitcast i8* %223 to i64*, !dbg !5320
  %225 = load i64, i64* %224, align 1, !dbg !5320, !tbaa !117
  br label %226, !dbg !5321

; <label>:226:                                    ; preds = %196, %222, %217, %212, %208, %205
  %227 = phi i64 [ %225, %222 ], [ %221, %217 ], [ %216, %212 ], [ %211, %208 ], [ %207, %205 ], [ 0, %196 ], !dbg !5322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5324
  %228 = call i8* @raxFind(%struct.rax* %201, i8* nonnull %198, i64 %227) #6, !dbg !5325
  %229 = bitcast i8* %228 to %struct.streamConsumer*, !dbg !5325
  %230 = load %struct.streamConsumer*, %struct.streamConsumer** bitcast (i8** @raxNotFound to %struct.streamConsumer**), align 8, !dbg !5327, !tbaa !234
  %231 = icmp eq %struct.streamConsumer* %230, %229, !dbg !5328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5329
  br i1 %231, label %236, label %232, !dbg !5329

; <label>:232:                                    ; preds = %226
  %233 = call i64 @mstime() #6, !dbg !5330
  %234 = bitcast i8* %228 to i64*, !dbg !5331
  store i64 %233, i64* %234, align 8, !dbg !5332, !tbaa !4265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5292
  %235 = icmp eq i8* %228, null, !dbg !5335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5296
  br i1 %235, label %237, label %238, !dbg !5296

; <label>:236:                                    ; preds = %226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5294
  call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #6, !dbg !5338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5340
  br label %337

; <label>:237:                                    ; preds = %232, %195
  br label %238, !dbg !5296

; <label>:238:                                    ; preds = %232, %237
  %239 = phi i8* [ %107, %237 ], [ %228, %232 ]
  %240 = getelementptr inbounds i8, i8* %239, i64 16, !dbg !5323
  %241 = bitcast i8* %240 to %struct.rax**, !dbg !5323
  %242 = load %struct.rax*, %struct.rax** %241, align 8, !dbg !5323, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5296
  %243 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !5342
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #7, !dbg !5342
  %244 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0, !dbg !5344
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %244) #7, !dbg !5344
  %245 = bitcast %struct.raxIterator* %9 to i8*, !dbg !5346
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %245) #7, !dbg !5346
  %246 = call i64 @mstime() #6, !dbg !5347
  %247 = bitcast [2 x i64]* %2 to i8*, !dbg !5351
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5351
  %248 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 0, !dbg !5352
  %249 = load i64, i64* %248, align 8, !dbg !5352, !tbaa !178
  %250 = call i64 @intrev64(i64 %249) #6, !dbg !5352
  %251 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0, !dbg !5353
  store i64 %250, i64* %251, align 16, !dbg !5354, !tbaa !117
  %252 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1, !dbg !5355
  %253 = load i64, i64* %252, align 8, !dbg !5355, !tbaa !188
  %254 = call i64 @intrev64(i64 %253) #6, !dbg !5355
  %255 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1, !dbg !5356
  store i64 %254, i64* %255, align 8, !dbg !5357, !tbaa !117
  %256 = call i8* @memcpy(i8* nonnull %243, i8* nonnull %247, i64 16) #6, !dbg !5358
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5359
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5362
  %257 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 0, !dbg !5363
  %258 = load i64, i64* %257, align 8, !dbg !5363, !tbaa !178
  %259 = call i64 @intrev64(i64 %258) #6, !dbg !5363
  store i64 %259, i64* %251, align 16, !dbg !5364, !tbaa !117
  %260 = getelementptr inbounds %struct.streamID, %struct.streamID* %4, i64 0, i32 1, !dbg !5365
  %261 = load i64, i64* %260, align 8, !dbg !5365, !tbaa !188
  %262 = call i64 @intrev64(i64 %261) #6, !dbg !5365
  store i64 %262, i64* %255, align 8, !dbg !5366, !tbaa !117
  %263 = call i8* @memcpy(i8* nonnull %244, i8* nonnull %247, i64 16) #6, !dbg !5367
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5368
  call void @raxStart(%struct.raxIterator* nonnull %9, %struct.rax* %242) #6, !dbg !5370
  %264 = call i32 @raxSeek(%struct.raxIterator* nonnull %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %243, i64 16) #6, !dbg !5371
  %265 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5375
  %266 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 2, !dbg !5376
  %267 = load i64, i64* %5, align 8, !dbg !5377, !tbaa !265
  %268 = icmp eq i64 %267, 0, !dbg !5377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5378
  br i1 %268, label %334, label %269, !dbg !5378

; <label>:269:                                    ; preds = %238
  %270 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 4
  %271 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i64 0, i32 3
  %272 = bitcast i8** %271 to %struct.streamNACK**
  br label %273, !dbg !5378

; <label>:273:                                    ; preds = %269, %323
  %274 = phi i64 [ 0, %269 ], [ %284, %323 ]
  %275 = call i32 @raxNext(%struct.raxIterator* nonnull %9) #6, !dbg !5379
  %276 = icmp eq i32 %275, 0, !dbg !5379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5380
  br i1 %276, label %334, label %277, !dbg !5380

; <label>:277:                                    ; preds = %273
  %278 = load i8*, i8** %266, align 8, !dbg !5376, !tbaa !706
  %279 = load i64, i64* %270, align 8, !dbg !5381, !tbaa !704
  %280 = call i32 @memcmp(i8* %278, i8* nonnull %244, i64 %279) #6, !dbg !5382
  %281 = icmp slt i32 %280, 1, !dbg !5383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5375
  br i1 %281, label %282, label %334, !dbg !5375

; <label>:282:                                    ; preds = %277
  %283 = load %struct.streamNACK*, %struct.streamNACK** %272, align 8, !dbg !5384, !tbaa !525
  %284 = add i64 %274, 1, !dbg !5386
  %285 = load i64, i64* %5, align 8, !dbg !5387, !tbaa !265
  %286 = add nsw i64 %285, -1, !dbg !5387
  store i64 %286, i64* %5, align 8, !dbg !5387, !tbaa !265
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 4) #6, !dbg !5388
  %287 = load i8*, i8** %266, align 8, !dbg !5389, !tbaa !706
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5393
  %288 = call i8* @memcpy(i8* nonnull %247, i8* %287, i64 16) #6, !dbg !5394
  %289 = load i64, i64* %251, align 16, !dbg !5395, !tbaa !117
  %290 = call i64 @intrev64(i64 %289) #6, !dbg !5395
  %291 = load i64, i64* %255, align 8, !dbg !5396, !tbaa !117
  %292 = call i64 @intrev64(i64 %291) #6, !dbg !5396
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %247) #7, !dbg !5397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5397
  %293 = call i8* @sdsempty() #6, !dbg !5401
  %294 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %290, i64 %292) #6, !dbg !5402
  call void @addReplyBulkSds(%struct.client* %0, i8* %294) #6, !dbg !5404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5405
  %295 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %283, i64 0, i32 2, !dbg !5406
  %296 = load %struct.streamConsumer*, %struct.streamConsumer** %295, align 8, !dbg !5406, !tbaa !2391
  %297 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %296, i64 0, i32 1, !dbg !5407
  %298 = load i8*, i8** %297, align 8, !dbg !5407, !tbaa !2394
  %299 = getelementptr inbounds i8, i8* %298, i64 -1, !dbg !5410
  %300 = load i8, i8* %299, align 1, !dbg !5410, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5412
  %301 = trunc i8 %300 to i3, !dbg !5412
  switch i3 %301, label %323 [
    i3 0, label %302
    i3 1, label %305
    i3 2, label %309
    i3 3, label %314
    i3 -4, label %319
  ], !dbg !5412

; <label>:302:                                    ; preds = %282
  %303 = lshr i8 %300, 3, !dbg !5413
  %304 = zext i8 %303 to i64, !dbg !5413
  br label %323, !dbg !5414

; <label>:305:                                    ; preds = %282
  %306 = getelementptr inbounds i8, i8* %298, i64 -3, !dbg !5415
  %307 = load i8, i8* %306, align 1, !dbg !5416, !tbaa !674
  %308 = zext i8 %307 to i64, !dbg !5415
  br label %323, !dbg !5417

; <label>:309:                                    ; preds = %282
  %310 = getelementptr inbounds i8, i8* %298, i64 -5, !dbg !5418
  %311 = bitcast i8* %310 to i16*, !dbg !5419
  %312 = load i16, i16* %311, align 1, !dbg !5419, !tbaa !685
  %313 = zext i16 %312 to i64, !dbg !5418
  br label %323, !dbg !5420

; <label>:314:                                    ; preds = %282
  %315 = getelementptr inbounds i8, i8* %298, i64 -9, !dbg !5421
  %316 = bitcast i8* %315 to i32*, !dbg !5422
  %317 = load i32, i32* %316, align 1, !dbg !5422, !tbaa !690
  %318 = zext i32 %317 to i64, !dbg !5421
  br label %323, !dbg !5423

; <label>:319:                                    ; preds = %282
  %320 = getelementptr inbounds i8, i8* %298, i64 -17, !dbg !5424
  %321 = bitcast i8* %320 to i64*, !dbg !5425
  %322 = load i64, i64* %321, align 1, !dbg !5425, !tbaa !117
  br label %323, !dbg !5426

; <label>:323:                                    ; preds = %282, %302, %305, %309, %314, %319
  %324 = phi i64 [ %322, %319 ], [ %318, %314 ], [ %313, %309 ], [ %308, %305 ], [ %304, %302 ], [ 0, %282 ], !dbg !5427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5429
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %298, i64 %324) #6, !dbg !5430
  %325 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %283, i64 0, i32 0, !dbg !5431
  %326 = load i64, i64* %325, align 8, !dbg !5431, !tbaa !2430
  %327 = sub nsw i64 %246, %326, !dbg !5432
  %328 = icmp sgt i64 %327, 0, !dbg !5434
  %329 = select i1 %328, i64 %327, i64 0, !dbg !5434
  call void @addReplyLongLong(%struct.client* %0, i64 %329) #6, !dbg !5435
  %330 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %283, i64 0, i32 1, !dbg !5436
  %331 = load i64, i64* %330, align 8, !dbg !5436, !tbaa !2438
  call void @addReplyLongLong(%struct.client* %0, i64 %331) #6, !dbg !5437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5375
  %332 = load i64, i64* %5, align 8, !dbg !5377, !tbaa !265
  %333 = icmp eq i64 %332, 0, !dbg !5377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5378
  br i1 %333, label %334, label %273, !dbg !5378, !llvm.loop !5438

; <label>:334:                                    ; preds = %277, %323, %273, %238
  %335 = phi i64 [ 0, %238 ], [ %274, %273 ], [ %284, %323 ], [ %274, %277 ], !dbg !5428
  call void @raxStop(%struct.raxIterator* nonnull %9) #6, !dbg !5440
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %265, i64 %335) #6, !dbg !5441
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %245) #7, !dbg !5442
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %244) #7, !dbg !5442
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #7, !dbg !5442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5442
  br label %336

; <label>:336:                                    ; preds = %334, %128, %191
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %337, !dbg !5443

; <label>:337:                                    ; preds = %114, %336, %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %338

; <label>:338:                                    ; preds = %67, %337, %49, %43, %34, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !5443
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #7, !dbg !5443
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #7, !dbg !5443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5443
  ret void, !dbg !5443
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @xclaimCommand(%struct.client*) local_unnamed_addr #0 !dbg !5444 {
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
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5496
  %14 = load %struct.redisDb*, %struct.redisDb** %13, align 8, !dbg !5496, !tbaa !2464
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5497
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5497, !tbaa !3248
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !5498
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !5498, !tbaa !234
  %19 = tail call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %14, %struct.redisObject* %18) #6, !dbg !5499
  %20 = bitcast i64* %3 to i8*, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #7, !dbg !5501
  %21 = bitcast i64* %4 to i8*, !dbg !5502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !5502
  store i64 -1, i64* %4, align 8, !dbg !5503, !tbaa !265
  %22 = bitcast i64* %5 to i8*, !dbg !5504
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !5504
  store i64 -1, i64* %5, align 8, !dbg !5505, !tbaa !265
  %23 = icmp eq %struct.redisObject* %19, null, !dbg !5508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5510
  br i1 %23, label %24, label %26, !dbg !5510

; <label>:24:                                     ; preds = %1
  %25 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5511, !tbaa !3248
  br label %76, !dbg !5513

; <label>:26:                                     ; preds = %1
  %27 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %19, i32 6) #6, !dbg !5515
  %28 = icmp eq i32 %27, 0, !dbg !5515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5518
  br i1 %28, label %29, label %391, !dbg !5518

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i64 0, i32 2, !dbg !5519
  %31 = bitcast i8** %30 to %struct.stream**, !dbg !5519
  %32 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5519, !tbaa !659
  %33 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5520, !tbaa !3248
  %34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 2, !dbg !5521
  %35 = load %struct.redisObject*, %struct.redisObject** %34, align 8, !dbg !5521, !tbaa !234
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i64 0, i32 2, !dbg !5522
  %37 = load i8*, i8** %36, align 8, !dbg !5522, !tbaa !659
  %38 = getelementptr inbounds %struct.stream, %struct.stream* %32, i64 0, i32 3, !dbg !5526
  %39 = load %struct.rax*, %struct.rax** %38, align 8, !dbg !5526, !tbaa !123
  %40 = icmp eq %struct.rax* %39, null, !dbg !5527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5528
  br i1 %40, label %41, label %42, !dbg !5528

; <label>:41:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5531
  br label %76, !dbg !5513

; <label>:42:                                     ; preds = %29
  %43 = getelementptr inbounds i8, i8* %37, i64 -1, !dbg !5534
  %44 = load i8, i8* %43, align 1, !dbg !5534, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5536
  %45 = trunc i8 %44 to i3, !dbg !5536
  switch i3 %45, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !5536

; <label>:46:                                     ; preds = %42
  %47 = lshr i8 %44, 3, !dbg !5537
  %48 = zext i8 %47 to i64, !dbg !5537
  br label %67, !dbg !5538

; <label>:49:                                     ; preds = %42
  %50 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !5539
  %51 = load i8, i8* %50, align 1, !dbg !5540, !tbaa !674
  %52 = zext i8 %51 to i64, !dbg !5539
  br label %67, !dbg !5541

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !5542
  %55 = bitcast i8* %54 to i16*, !dbg !5543
  %56 = load i16, i16* %55, align 1, !dbg !5543, !tbaa !685
  %57 = zext i16 %56 to i64, !dbg !5542
  br label %67, !dbg !5544

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !5545
  %60 = bitcast i8* %59 to i32*, !dbg !5546
  %61 = load i32, i32* %60, align 1, !dbg !5546, !tbaa !690
  %62 = zext i32 %61 to i64, !dbg !5545
  br label %67, !dbg !5547

; <label>:63:                                     ; preds = %42
  %64 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !5548
  %65 = bitcast i8* %64 to i64*, !dbg !5549
  %66 = load i64, i64* %65, align 1, !dbg !5549, !tbaa !117
  br label %67, !dbg !5550

; <label>:67:                                     ; preds = %42, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %42 ], !dbg !5551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5553
  %69 = tail call i8* @raxFind(%struct.rax* nonnull %39, i8* nonnull %37, i64 %68) #6, !dbg !5554
  %70 = bitcast i8* %69 to %struct.streamCG*, !dbg !5554
  %71 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !5556, !tbaa !234
  %72 = icmp eq %struct.streamCG* %71, %70, !dbg !5557
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5531
  %73 = icmp eq i8* %69, null, !dbg !5558
  %74 = or i1 %72, %73, !dbg !5558
  %75 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5511, !tbaa !3248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5513
  br i1 %74, label %78, label %88, !dbg !5513

; <label>:76:                                     ; preds = %24, %41
  %77 = phi %struct.redisObject** [ %33, %41 ], [ %25, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5513
  br label %78, !dbg !5559

; <label>:78:                                     ; preds = %76, %67
  %79 = phi %struct.redisObject** [ %75, %67 ], [ %77, %76 ]
  %80 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 1, !dbg !5559
  %81 = load %struct.redisObject*, %struct.redisObject** %80, align 8, !dbg !5559, !tbaa !234
  %82 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %81, i64 0, i32 2, !dbg !5561
  %83 = load i8*, i8** %82, align 8, !dbg !5561, !tbaa !659
  %84 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %79, i64 2, !dbg !5562
  %85 = load %struct.redisObject*, %struct.redisObject** %84, align 8, !dbg !5562, !tbaa !234
  %86 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %85, i64 0, i32 2, !dbg !5563
  %87 = load i8*, i8** %86, align 8, !dbg !5563, !tbaa !659
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.63, i64 0, i64 0), i8* %83, i8* %87) #6, !dbg !5564
  br label %391, !dbg !5565

; <label>:88:                                     ; preds = %67
  %89 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 4, !dbg !5566
  %90 = load %struct.redisObject*, %struct.redisObject** %89, align 8, !dbg !5566, !tbaa !234
  %91 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %90, i64* nonnull %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !5568
  %92 = icmp eq i32 %91, 0, !dbg !5569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5570
  br i1 %92, label %93, label %391, !dbg !5570

; <label>:93:                                     ; preds = %88
  %94 = load i64, i64* %3, align 8, !dbg !5571, !tbaa !265
  %95 = icmp slt i64 %94, 0, !dbg !5573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5574
  br i1 %95, label %96, label %97, !dbg !5574

; <label>:96:                                     ; preds = %93
  store i64 0, i64* %3, align 8, !dbg !5575, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5576
  br label %97, !dbg !5576

; <label>:97:                                     ; preds = %96, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5578
  %98 = bitcast %struct.streamID* %6 to i8*, !dbg !5579
  %99 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5580
  %100 = load i32, i32* %99, align 8, !dbg !5580, !tbaa !3242
  %101 = icmp sgt i32 %100, 5, !dbg !5581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5582
  br i1 %101, label %102, label %118, !dbg !5582

; <label>:102:                                    ; preds = %97, %110
  %103 = phi i64 [ %111, %110 ], [ 5, %97 ]
  %104 = phi i32 [ %112, %110 ], [ 5, %97 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %98) #7, !dbg !5579
  %105 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5583, !tbaa !3248
  %106 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %105, i64 %103, !dbg !5585
  %107 = load %struct.redisObject*, %struct.redisObject** %106, align 8, !dbg !5585, !tbaa !234
  %108 = call i32 @streamGenericParseIDOrReply(%struct.client* null, %struct.redisObject* %107, %struct.streamID* nonnull %6, i64 0, i32 1) #6, !dbg !5592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5593
  %109 = icmp eq i32 %108, 0, !dbg !5594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5596
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %98) #7, !dbg !5597
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %109, label %110, label %116

; <label>:110:                                    ; preds = %102
  %111 = add nuw nsw i64 %103, 1, !dbg !5598
  %112 = add nuw nsw i32 %104, 1, !dbg !5598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5599
  %113 = load i32, i32* %99, align 8, !dbg !5580, !tbaa !3242
  %114 = sext i32 %113 to i64, !dbg !5581
  %115 = icmp slt i64 %111, %114, !dbg !5581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5582
  br i1 %115, label %102, label %118, !dbg !5582, !llvm.loop !5600

; <label>:116:                                    ; preds = %102
  %117 = trunc i64 %103 to i32
  br label %118, !dbg !5602

; <label>:118:                                    ; preds = %110, %116, %97
  %119 = phi i32 [ 5, %97 ], [ %117, %116 ], [ %112, %110 ], !dbg !5603
  %120 = call i64 @mstime() #6, !dbg !5602
  %121 = bitcast %struct.streamID* %7 to i8*, !dbg !5606
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #7, !dbg !5606
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %121, i8 0, i64 16, i1 false), !dbg !5607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5609
  %122 = load i32, i32* %99, align 8, !dbg !5610, !tbaa !3242
  %123 = icmp slt i32 %119, %122, !dbg !5611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5612
  br i1 %123, label %127, label %124, !dbg !5612

; <label>:124:                                    ; preds = %118
  %125 = bitcast i8* %69 to i64*, !dbg !5616
  %126 = load i64, i64* %125, align 8, !dbg !5616, !tbaa !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5617
  br label %206, !dbg !5617

; <label>:127:                                    ; preds = %118, %192
  %128 = phi i32 [ %197, %192 ], [ %122, %118 ]
  %129 = phi i32 [ %195, %192 ], [ 0, %118 ]
  %130 = phi i32 [ %194, %192 ], [ 0, %118 ]
  %131 = phi i32 [ %196, %192 ], [ %119, %118 ]
  %132 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5618, !tbaa !3248
  %133 = sext i32 %131 to i64, !dbg !5619
  %134 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %133, !dbg !5619
  %135 = load %struct.redisObject*, %struct.redisObject** %134, align 8, !dbg !5619, !tbaa !234
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %135, i64 0, i32 2, !dbg !5620
  %137 = load i8*, i8** %136, align 8, !dbg !5620, !tbaa !659
  %138 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !5622
  %139 = icmp eq i32 %138, 0, !dbg !5622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5624
  br i1 %139, label %140, label %141, !dbg !5624

; <label>:140:                                    ; preds = %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5625
  br label %192, !dbg !5625

; <label>:141:                                    ; preds = %127
  %142 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !5627
  %143 = icmp eq i32 %142, 0, !dbg !5627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5629
  br i1 %143, label %144, label %145, !dbg !5629

; <label>:144:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5630
  br label %192, !dbg !5630

; <label>:145:                                    ; preds = %141
  %146 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #10, !dbg !5632
  %147 = icmp eq i32 %146, 0, !dbg !5632
  %148 = add i32 %131, 1, !dbg !5634
  %149 = icmp ne i32 %128, %148, !dbg !5634
  %150 = and i1 %149, %147, !dbg !5635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5635
  br i1 %150, label %151, label %160, !dbg !5635

; <label>:151:                                    ; preds = %145
  %152 = sext i32 %148 to i64, !dbg !5636
  %153 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %152, !dbg !5636
  %154 = load %struct.redisObject*, %struct.redisObject** %153, align 8, !dbg !5636, !tbaa !234
  %155 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %154, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !5639
  %156 = icmp eq i32 %155, 0, !dbg !5640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5641
  br i1 %156, label %157, label %191, !dbg !5641

; <label>:157:                                    ; preds = %151
  %158 = load i64, i64* %5, align 8, !dbg !5642, !tbaa !265
  %159 = sub nsw i64 %120, %158, !dbg !5643
  store i64 %159, i64* %5, align 8, !dbg !5644, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5645
  br label %192, !dbg !5645

; <label>:160:                                    ; preds = %145
  %161 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5646
  %162 = icmp eq i32 %161, 0, !dbg !5646
  %163 = and i1 %149, %162, !dbg !5648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5648
  br i1 %163, label %164, label %170, !dbg !5648

; <label>:164:                                    ; preds = %160
  %165 = sext i32 %148 to i64, !dbg !5649
  %166 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %165, !dbg !5649
  %167 = load %struct.redisObject*, %struct.redisObject** %166, align 8, !dbg !5649, !tbaa !234
  %168 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %167, i64* nonnull %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !5652
  %169 = icmp eq i32 %168, 0, !dbg !5653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5654
  br i1 %169, label %192, label %191, !dbg !5654

; <label>:170:                                    ; preds = %160
  %171 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !5655
  %172 = icmp eq i32 %171, 0, !dbg !5655
  %173 = and i1 %149, %172, !dbg !5657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5657
  br i1 %173, label %174, label %180, !dbg !5657

; <label>:174:                                    ; preds = %170
  %175 = sext i32 %148 to i64, !dbg !5658
  %176 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %175, !dbg !5658
  %177 = load %struct.redisObject*, %struct.redisObject** %176, align 8, !dbg !5658, !tbaa !234
  %178 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %177, i64* nonnull %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !5661
  %179 = icmp eq i32 %178, 0, !dbg !5662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5663
  br i1 %179, label %192, label %191, !dbg !5663

; <label>:180:                                    ; preds = %170
  %181 = call i32 @strcasecmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !5664
  %182 = icmp eq i32 %181, 0, !dbg !5664
  %183 = and i1 %149, %182, !dbg !5666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5666
  br i1 %183, label %184, label %190, !dbg !5666

; <label>:184:                                    ; preds = %180
  %185 = sext i32 %148 to i64, !dbg !5667
  %186 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %132, i64 %185, !dbg !5667
  %187 = load %struct.redisObject*, %struct.redisObject** %186, align 8, !dbg !5667, !tbaa !234
  %188 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %187, %struct.streamID* nonnull %7, i64 0, i32 1) #6, !dbg !5675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5676
  %189 = icmp eq i32 %188, 0, !dbg !5677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5678
  br i1 %189, label %192, label %191, !dbg !5678

; <label>:190:                                    ; preds = %180
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i64 0, i64 0), i8* %137) #6, !dbg !5679
  br label %191, !dbg !5681

; <label>:191:                                    ; preds = %184, %174, %164, %151, %190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5682
  br label %390

; <label>:192:                                    ; preds = %164, %174, %184, %144, %157, %140
  %193 = phi i32 [ %148, %157 ], [ %148, %164 ], [ %148, %174 ], [ %148, %184 ], [ %131, %144 ], [ %131, %140 ], !dbg !5683
  %194 = phi i32 [ %130, %157 ], [ %130, %164 ], [ %130, %174 ], [ %130, %184 ], [ 1, %144 ], [ %130, %140 ], !dbg !5684
  %195 = phi i32 [ %129, %157 ], [ %129, %164 ], [ %129, %174 ], [ %129, %184 ], [ %129, %144 ], [ 1, %140 ], !dbg !5685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5686
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %196 = add nsw i32 %193, 1, !dbg !5687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5688
  %197 = load i32, i32* %99, align 8, !dbg !5610, !tbaa !3242
  %198 = icmp slt i32 %196, %197, !dbg !5611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5612
  br i1 %198, label %127, label %199, !dbg !5612, !llvm.loop !5689

; <label>:199:                                    ; preds = %192
  %200 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 0
  %201 = load i64, i64* %200, align 8, !dbg !5691, !tbaa !178
  %202 = bitcast i8* %69 to i64*, !dbg !5616
  %203 = load i64, i64* %202, align 8, !dbg !5616, !tbaa !178
  %204 = icmp ugt i64 %201, %203, !dbg !5692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5617
  br i1 %204, label %205, label %206, !dbg !5617

; <label>:205:                                    ; preds = %199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5693
  br label %220, !dbg !5693

; <label>:206:                                    ; preds = %124, %199
  %207 = phi i64 [ %126, %124 ], [ %203, %199 ]
  %208 = phi i32 [ 0, %124 ], [ %195, %199 ]
  %209 = phi i32 [ 0, %124 ], [ %194, %199 ]
  %210 = phi i64 [ 0, %124 ], [ %201, %199 ]
  %211 = icmp ult i64 %210, %207, !dbg !5694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5695
  br i1 %211, label %219, label %212, !dbg !5695

; <label>:212:                                    ; preds = %206
  %213 = getelementptr inbounds %struct.streamID, %struct.streamID* %7, i64 0, i32 1, !dbg !5696
  %214 = load i64, i64* %213, align 8, !dbg !5696, !tbaa !188
  %215 = getelementptr inbounds i8, i8* %69, i64 8, !dbg !5697
  %216 = bitcast i8* %215 to i64*, !dbg !5697
  %217 = load i64, i64* %216, align 8, !dbg !5697, !tbaa !188
  %218 = icmp ugt i64 %214, %217, !dbg !5698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5700
  br i1 %218, label %220, label %219, !dbg !5699

; <label>:219:                                    ; preds = %212, %206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5701
  br label %223

; <label>:220:                                    ; preds = %212, %205
  %221 = phi i32 [ %208, %212 ], [ %195, %205 ]
  %222 = phi i32 [ %209, %212 ], [ %194, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %69, i8* nonnull align 8 %121, i64 16, i1 false), !dbg !5703, !tbaa.struct !1634
  br label %223, !dbg !5705

; <label>:223:                                    ; preds = %219, %220
  %224 = phi i32 [ %221, %220 ], [ %208, %219 ]
  %225 = phi i32 [ %222, %220 ], [ %209, %219 ]
  %226 = phi i32 [ 1, %220 ], [ 0, %219 ], !dbg !5684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5706
  %227 = load i64, i64* %5, align 8, !dbg !5707, !tbaa !265
  %228 = icmp eq i64 %227, -1, !dbg !5709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5710
  br i1 %228, label %233, label %229, !dbg !5710

; <label>:229:                                    ; preds = %223
  %230 = icmp slt i64 %227, 0, !dbg !5711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5714
  br i1 %230, label %233, label %231, !dbg !5714

; <label>:231:                                    ; preds = %229
  %232 = icmp sgt i64 %227, %120, !dbg !5715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5716
  br i1 %232, label %233, label %234, !dbg !5716

; <label>:233:                                    ; preds = %223, %229, %231
  store i64 %120, i64* %5, align 8, !dbg !5717, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %234, !dbg !5719

; <label>:234:                                    ; preds = %233, %231
  %235 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5719, !tbaa !3248
  %236 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %235, i64 3, !dbg !5720
  %237 = load %struct.redisObject*, %struct.redisObject** %236, align 8, !dbg !5720, !tbaa !234
  %238 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %237, i64 0, i32 2, !dbg !5721
  %239 = load i8*, i8** %238, align 8, !dbg !5721, !tbaa !659
  %240 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nonnull %70, i8* %239, i32 1) #9, !dbg !5722
  %241 = call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !5724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5728
  %242 = icmp ugt i32 %119, 5, !dbg !5729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5730
  br i1 %242, label %243, label %261, !dbg !5730

; <label>:243:                                    ; preds = %234
  %244 = bitcast %struct.streamID* %8 to i8*
  %245 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %246 = bitcast [2 x i64]* %2 to i8*
  %247 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 0
  %248 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %249 = getelementptr inbounds %struct.streamID, %struct.streamID* %8, i64 0, i32 1
  %250 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %251 = getelementptr inbounds i8, i8* %69, i64 16
  %252 = bitcast i8* %251 to %struct.rax**
  %253 = icmp eq i32 %224, 0
  %254 = bitcast %struct.streamIterator* %10 to i8*
  %255 = bitcast i64* %11 to i8*
  %256 = bitcast %struct.streamID* %12 to i8*
  %257 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %10, i64 0, i32 9
  %258 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %240, i64 0, i32 2
  %259 = icmp eq i32 %225, 0
  %260 = zext i32 %119 to i64, !dbg !5730
  br label %265, !dbg !5730

; <label>:261:                                    ; preds = %376, %234
  %262 = phi i32 [ %226, %234 ], [ %377, %376 ], !dbg !5731
  %263 = phi i64 [ 0, %234 ], [ %378, %376 ], !dbg !5731
  %264 = icmp eq i32 %262, 0, !dbg !5732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5734
  br i1 %264, label %389, label %381, !dbg !5734

; <label>:265:                                    ; preds = %243, %376
  %266 = phi i64 [ 5, %243 ], [ %379, %376 ]
  %267 = phi i64 [ 0, %243 ], [ %378, %376 ]
  %268 = phi i32 [ %226, %243 ], [ %377, %376 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %244) #7, !dbg !5735
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %245) #7, !dbg !5736
  %269 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5738, !tbaa !3248
  %270 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %269, i64 %266, !dbg !5740
  %271 = load %struct.redisObject*, %struct.redisObject** %270, align 8, !dbg !5740, !tbaa !234
  %272 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %271, %struct.streamID* nonnull %8, i64 0, i32 1) #6, !dbg !5747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5748
  %273 = icmp eq i32 %272, 0, !dbg !5749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5750
  br i1 %273, label %275, label %274, !dbg !5750

; <label>:274:                                    ; preds = %265
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 2232, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !5751
  call void @_exit(i32 1) #8, !dbg !5751
  unreachable

; <label>:275:                                    ; preds = %265
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %246) #7, !dbg !5754
  %276 = load i64, i64* %247, align 8, !dbg !5755, !tbaa !178
  %277 = call i64 @intrev64(i64 %276) #6, !dbg !5755
  store i64 %277, i64* %248, align 16, !dbg !5756, !tbaa !117
  %278 = load i64, i64* %249, align 8, !dbg !5757, !tbaa !188
  %279 = call i64 @intrev64(i64 %278) #6, !dbg !5757
  store i64 %279, i64* %250, align 8, !dbg !5758, !tbaa !117
  %280 = call i8* @memcpy(i8* nonnull %245, i8* nonnull %246, i64 16) #6, !dbg !5759
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %246) #7, !dbg !5760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5760
  %281 = load %struct.rax*, %struct.rax** %252, align 8, !dbg !5761, !tbaa !155
  %282 = call i8* @raxFind(%struct.rax* %281, i8* nonnull %245, i64 16) #6, !dbg !5762
  %283 = bitcast i8* %282 to %struct.streamNACK*, !dbg !5762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5764
  br i1 %253, label %307, label %284, !dbg !5764

; <label>:284:                                    ; preds = %275
  %285 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5765, !tbaa !234
  %286 = icmp eq %struct.streamNACK* %285, %283, !dbg !5766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5767
  br i1 %286, label %287, label %307, !dbg !5767

; <label>:287:                                    ; preds = %284
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %254) #7, !dbg !5768
  %288 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5769, !tbaa !659
  call void @streamIteratorStart(%struct.streamIterator* nonnull %10, %struct.stream* %288, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i32 0) #9, !dbg !5771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %255) #7, !dbg !5772
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %256) #7, !dbg !5774
  %289 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %10, %struct.streamID* nonnull %12, i64* nonnull %11) #9, !dbg !5777
  %290 = icmp eq i32 %289, 0, !dbg !5777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5779
  br i1 %290, label %302, label %291, !dbg !5779

; <label>:291:                                    ; preds = %287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5780
  call void @raxStop(%struct.raxIterator* nonnull %257) #6, !dbg !5783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5785
  %292 = call i8* @zmalloc(i64 24) #6, !dbg !5788
  %293 = bitcast i8* %292 to %struct.streamNACK*, !dbg !5788
  %294 = call i64 @mstime() #6, !dbg !5790
  %295 = bitcast i8* %292 to i64*, !dbg !5791
  store i64 %294, i64* %295, align 8, !dbg !5792, !tbaa !2430
  %296 = getelementptr inbounds i8, i8* %292, i64 8, !dbg !5793
  %297 = bitcast i8* %296 to i64*, !dbg !5793
  store i64 1, i64* %297, align 8, !dbg !5794, !tbaa !2438
  %298 = getelementptr inbounds i8, i8* %292, i64 16, !dbg !5795
  %299 = bitcast i8* %298 to %struct.streamConsumer**, !dbg !5795
  store %struct.streamConsumer* null, %struct.streamConsumer** %299, align 8, !dbg !5796, !tbaa !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5797
  %300 = load %struct.rax*, %struct.rax** %252, align 8, !dbg !5798, !tbaa !155
  %301 = call i32 @raxInsert(%struct.rax* %300, i8* nonnull %245, i64 16, i8* %292, i8** null) #6, !dbg !5799
  br label %303, !dbg !5800

; <label>:302:                                    ; preds = %287
  call void @raxStop(%struct.raxIterator* nonnull %257) #6, !dbg !5803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5785
  br label %303, !dbg !5805

; <label>:303:                                    ; preds = %291, %302
  %304 = phi i1 [ true, %291 ], [ false, %302 ]
  %305 = phi i8* [ %292, %291 ], [ %282, %302 ], !dbg !5807
  %306 = phi %struct.streamNACK* [ %293, %291 ], [ %283, %302 ], !dbg !5807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5808
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %256) #7, !dbg !5800
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %255) #7, !dbg !5800
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %254) #7, !dbg !5800
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %304, label %307, label %376

; <label>:307:                                    ; preds = %275, %303, %284
  %308 = phi i8* [ %305, %303 ], [ %282, %284 ], [ %282, %275 ], !dbg !5807
  %309 = phi %struct.streamNACK* [ %306, %303 ], [ %283, %284 ], [ %283, %275 ], !dbg !5807
  %310 = load %struct.streamNACK*, %struct.streamNACK** bitcast (i8** @raxNotFound to %struct.streamNACK**), align 8, !dbg !5809, !tbaa !234
  %311 = icmp eq %struct.streamNACK* %309, %310, !dbg !5810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5811
  br i1 %311, label %373, label %312, !dbg !5811

; <label>:312:                                    ; preds = %307
  %313 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %309, i64 0, i32 2, !dbg !5812
  %314 = load %struct.streamConsumer*, %struct.streamConsumer** %313, align 8, !dbg !5812, !tbaa !2391
  %315 = icmp ne %struct.streamConsumer* %314, null, !dbg !5813
  %316 = load i64, i64* %3, align 8, !dbg !5814
  %317 = icmp ne i64 %316, 0, !dbg !5814
  %318 = and i1 %315, %317, !dbg !5815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5815
  br i1 %318, label %319, label %325, !dbg !5815

; <label>:319:                                    ; preds = %312
  %320 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %309, i64 0, i32 0, !dbg !5816
  %321 = load i64, i64* %320, align 8, !dbg !5816, !tbaa !2430
  %322 = sub nsw i64 %120, %321, !dbg !5817
  %323 = icmp slt i64 %322, %316, !dbg !5819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5822
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %323, label %376, label %324

; <label>:324:                                    ; preds = %319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5823
  br label %327, !dbg !5823

; <label>:325:                                    ; preds = %312
  %326 = icmp eq %struct.streamConsumer* %314, null, !dbg !5824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5823
  br i1 %326, label %331, label %327, !dbg !5823

; <label>:327:                                    ; preds = %324, %325
  %328 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %314, i64 0, i32 2, !dbg !5826
  %329 = load %struct.rax*, %struct.rax** %328, align 8, !dbg !5826, !tbaa !2712
  %330 = call i32 @raxRemove(%struct.rax* %329, i8* nonnull %245, i64 16, i8** null) #6, !dbg !5827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5827
  br label %331, !dbg !5827

; <label>:331:                                    ; preds = %325, %327
  store %struct.streamConsumer* %240, %struct.streamConsumer** %313, align 8, !dbg !5828, !tbaa !2391
  %332 = load i64, i64* %5, align 8, !dbg !5829, !tbaa !265
  %333 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %309, i64 0, i32 0, !dbg !5830
  store i64 %332, i64* %333, align 8, !dbg !5831, !tbaa !2430
  %334 = load i64, i64* %4, align 8, !dbg !5832, !tbaa !265
  %335 = icmp sgt i64 %334, -1, !dbg !5834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5835
  br i1 %335, label %346, label %336, !dbg !5835

; <label>:336:                                    ; preds = %331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5836
  br i1 %259, label %340, label %337, !dbg !5836

; <label>:337:                                    ; preds = %336
  %338 = load %struct.rax*, %struct.rax** %258, align 8, !dbg !5837, !tbaa !2712
  %339 = call i32 @raxInsert(%struct.rax* %338, i8* nonnull %245, i64 16, i8* %308, i8** null) #6, !dbg !5838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5839
  br label %350, !dbg !5839

; <label>:340:                                    ; preds = %336
  %341 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %309, i64 0, i32 1, !dbg !5840
  %342 = load i64, i64* %341, align 8, !dbg !5843, !tbaa !2438
  %343 = add i64 %342, 1, !dbg !5843
  store i64 %343, i64* %341, align 8, !dbg !5843, !tbaa !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5844
  %344 = load %struct.rax*, %struct.rax** %258, align 8, !dbg !5837, !tbaa !2712
  %345 = call i32 @raxInsert(%struct.rax* %344, i8* nonnull %245, i64 16, i8* %308, i8** null) #6, !dbg !5838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5839
  br label %355, !dbg !5839

; <label>:346:                                    ; preds = %331
  %347 = getelementptr inbounds %struct.streamNACK, %struct.streamNACK* %309, i64 0, i32 1, !dbg !5845
  store i64 %334, i64* %347, align 8, !dbg !5847, !tbaa !2438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5848
  %348 = load %struct.rax*, %struct.rax** %258, align 8, !dbg !5837, !tbaa !2712
  %349 = call i32 @raxInsert(%struct.rax* %348, i8* nonnull %245, i64 16, i8* %308, i8** null) #6, !dbg !5838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5839
  br i1 %259, label %355, label %350, !dbg !5839

; <label>:350:                                    ; preds = %337, %346
  %351 = call i8* @sdsempty() #6, !dbg !5853
  %352 = load i64, i64* %247, align 8, !dbg !5854, !tbaa !178
  %353 = load i64, i64* %249, align 8, !dbg !5855, !tbaa !188
  %354 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %352, i64 %353) #6, !dbg !5856
  call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %354) #6, !dbg !5858
  br label %361, !dbg !5859

; <label>:355:                                    ; preds = %340, %346
  %356 = load %struct.stream*, %struct.stream** %31, align 8, !dbg !5860, !tbaa !659
  %357 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* %356, %struct.streamID* nonnull %8, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !5861
  %358 = icmp eq i64 %357, 0, !dbg !5863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5865
  br i1 %358, label %359, label %362, !dbg !5865

; <label>:359:                                    ; preds = %355
  %360 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5866, !tbaa !5206
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %360) #6, !dbg !5867
  br label %361, !dbg !5867

; <label>:361:                                    ; preds = %350, %359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5868
  br label %362

; <label>:362:                                    ; preds = %361, %355
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %363 = add i64 %267, 1, !dbg !5869
  %364 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5870, !tbaa !3248
  %365 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %364, i64 1, !dbg !5871
  %366 = load %struct.redisObject*, %struct.redisObject** %365, align 8, !dbg !5871, !tbaa !234
  %367 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %364, i64 2, !dbg !5872
  %368 = load %struct.redisObject*, %struct.redisObject** %367, align 8, !dbg !5872, !tbaa !234
  %369 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %364, i64 %266, !dbg !5873
  %370 = load %struct.redisObject*, %struct.redisObject** %369, align 8, !dbg !5873, !tbaa !234
  call void @streamPropagateXCLAIM(%struct.client* nonnull %0, %struct.redisObject* %366, %struct.streamCG* nonnull %70, %struct.redisObject* %368, %struct.redisObject* %370, %struct.streamNACK* nonnull %309) #9, !dbg !5874
  %371 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5875, !tbaa !3395
  %372 = add nsw i64 %371, 1, !dbg !5875
  store i64 %372, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5875, !tbaa !3395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5876
  br label %373, !dbg !5876

; <label>:373:                                    ; preds = %307, %362
  %374 = phi i32 [ 0, %362 ], [ %268, %307 ], !dbg !5706
  %375 = phi i64 [ %363, %362 ], [ %267, %307 ], !dbg !5684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5877
  br label %376, !dbg !5877

; <label>:376:                                    ; preds = %319, %303, %373
  %377 = phi i32 [ %374, %373 ], [ %268, %319 ], [ %268, %303 ], !dbg !5706
  %378 = phi i64 [ %375, %373 ], [ %267, %319 ], [ %267, %303 ], !dbg !5684
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %245) #7, !dbg !5877
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %244) #7, !dbg !5877
  %379 = add nuw nsw i64 %266, 1, !dbg !5878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5879
  %380 = icmp ult i64 %379, %260, !dbg !5729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5730
  br i1 %380, label %265, label %261, !dbg !5730, !llvm.loop !5880

; <label>:381:                                    ; preds = %261
  %382 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !5882, !tbaa !3248
  %383 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %382, i64 1, !dbg !5884
  %384 = load %struct.redisObject*, %struct.redisObject** %383, align 8, !dbg !5884, !tbaa !234
  %385 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %382, i64 2, !dbg !5885
  %386 = load %struct.redisObject*, %struct.redisObject** %385, align 8, !dbg !5885, !tbaa !234
  call void @streamPropagateGroupID(%struct.client* nonnull %0, %struct.redisObject* %384, %struct.streamCG* nonnull %70, %struct.redisObject* %386) #9, !dbg !5886
  %387 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5887, !tbaa !3395
  %388 = add nsw i64 %387, 1, !dbg !5887
  store i64 %388, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !5887, !tbaa !3395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5888
  br label %389, !dbg !5888

; <label>:389:                                    ; preds = %261, %381
  call void @setDeferredMultiBulkLength(%struct.client* nonnull %0, i8* %241, i64 %263) #6, !dbg !5889
  call void @preventCommandPropagation(%struct.client* nonnull %0) #6, !dbg !5890
  br label %390, !dbg !5891

; <label>:390:                                    ; preds = %191, %389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #7, !dbg !5891
  br label %391

; <label>:391:                                    ; preds = %88, %26, %390, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !5891
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !5891
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #7, !dbg !5891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5891
  ret void, !dbg !5891
}

; Function Attrs: noredzone nounwind
define dso_local void @xdelCommand(%struct.client*) local_unnamed_addr #0 !dbg !5892 {
  %2 = alloca %struct.streamIterator, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.streamID, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5904
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5904, !tbaa !3248
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !5906
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5906, !tbaa !234
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5907, !tbaa !3596
  %11 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %9, %struct.redisObject* %10) #6, !dbg !5908
  %12 = icmp eq %struct.redisObject* %11, null, !dbg !5910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5911
  br i1 %12, label %84, label %13, !dbg !5911

; <label>:13:                                     ; preds = %1
  %14 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %11, i32 6) #6, !dbg !5912
  %15 = icmp eq i32 %14, 0, !dbg !5912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5913
  br i1 %15, label %16, label %84, !dbg !5913

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !5914
  %18 = bitcast i8** %17 to %struct.stream**, !dbg !5914
  %19 = load %struct.stream*, %struct.stream** %18, align 8, !dbg !5914, !tbaa !659
  %20 = bitcast %struct.streamID* %5 to i8*, !dbg !5916
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #7, !dbg !5916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5918
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5919
  %22 = load i32, i32* %21, align 8, !dbg !5919, !tbaa !3242
  %23 = icmp sgt i32 %22, 2, !dbg !5921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5922
  br i1 %23, label %32, label %24, !dbg !5922

; <label>:24:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5922
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5926
  br label %79, !dbg !5926

; <label>:25:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5922
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5925
  %26 = icmp sgt i32 %42, 2, !dbg !5927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5926
  br i1 %26, label %27, label %79, !dbg !5926

; <label>:27:                                     ; preds = %25
  %28 = bitcast %struct.streamIterator* %2 to i8*
  %29 = bitcast %struct.streamID* %3 to i8*
  %30 = bitcast i64* %4 to i8*
  %31 = getelementptr inbounds %struct.streamIterator, %struct.streamIterator* %2, i64 0, i32 9
  br label %47, !dbg !5926

; <label>:32:                                     ; preds = %16, %40
  %33 = phi i64 [ %41, %40 ], [ 2, %16 ]
  %34 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5929, !tbaa !3248
  %35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %34, i64 %33, !dbg !5932
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !5932, !tbaa !234
  %37 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %36, %struct.streamID* nonnull %5, i64 0, i32 1) #6, !dbg !5939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5940
  %38 = icmp eq i32 %37, 0, !dbg !5941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5942
  br i1 %38, label %40, label %39, !dbg !5942

; <label>:39:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5943
  br label %83

; <label>:40:                                     ; preds = %32
  %41 = add nuw nsw i64 %33, 1, !dbg !5944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5945
  %42 = load i32, i32* %21, align 8, !dbg !5919, !tbaa !3242
  %43 = sext i32 %42 to i64, !dbg !5921
  %44 = icmp slt i64 %41, %43, !dbg !5921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5922
  br i1 %44, label %32, label %25, !dbg !5922, !llvm.loop !5946

; <label>:45:                                     ; preds = %57
  %46 = icmp eq i32 %59, 0, !dbg !5948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5950
  br i1 %46, label %81, label %64, !dbg !5950

; <label>:47:                                     ; preds = %27, %57
  %48 = phi i64 [ 2, %27 ], [ %60, %57 ]
  %49 = phi i32 [ 0, %27 ], [ %59, %57 ]
  %50 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5951, !tbaa !3248
  %51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %50, i64 %48, !dbg !5953
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !5953, !tbaa !234
  %53 = call i32 @streamGenericParseIDOrReply(%struct.client* nonnull %0, %struct.redisObject* %52, %struct.streamID* nonnull %5, i64 0, i32 1) #6, !dbg !5959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5960
  call void @llvm.lifetime.start.p0i8(i64 640, i8* nonnull %28) #7, !dbg !5965
  call void @streamIteratorStart(%struct.streamIterator* nonnull %2, %struct.stream* %19, %struct.streamID* nonnull %5, %struct.streamID* nonnull %5, i32 0) #6, !dbg !5967
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #7, !dbg !5968
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !5969
  %54 = call i32 @streamIteratorGetID(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3, i64* nonnull %4) #6, !dbg !5972
  %55 = icmp eq i32 %54, 0, !dbg !5972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5973
  br i1 %55, label %57, label %56, !dbg !5973

; <label>:56:                                     ; preds = %47
  call void @streamIteratorRemoveEntry(%struct.streamIterator* nonnull %2, %struct.streamID* nonnull %3) #6, !dbg !5974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5975
  br label %57, !dbg !5975

; <label>:57:                                     ; preds = %47, %56
  %58 = phi i32 [ 1, %56 ], [ 0, %47 ], !dbg !5976
  call void @raxStop(%struct.raxIterator* nonnull %31) #6, !dbg !5979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !5981
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #7, !dbg !5981
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %28) #7, !dbg !5981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5982
  %59 = add nuw nsw i32 %58, %49, !dbg !5983
  %60 = add nuw nsw i64 %48, 1, !dbg !5984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5985
  %61 = load i32, i32* %21, align 8, !dbg !5986, !tbaa !3242
  %62 = sext i32 %61 to i64, !dbg !5927
  %63 = icmp slt i64 %60, %62, !dbg !5927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5926
  br i1 %63, label %47, label %45, !dbg !5926, !llvm.loop !5987

; <label>:64:                                     ; preds = %45
  %65 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !5989
  %66 = load %struct.redisDb*, %struct.redisDb** %65, align 8, !dbg !5989, !tbaa !2464
  %67 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5991, !tbaa !3248
  %68 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %67, i64 1, !dbg !5992
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !5992, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %66, %struct.redisObject* %69) #6, !dbg !5993
  %70 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !5994, !tbaa !3248
  %71 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %70, i64 1, !dbg !5995
  %72 = load %struct.redisObject*, %struct.redisObject** %71, align 8, !dbg !5995, !tbaa !234
  %73 = load %struct.redisDb*, %struct.redisDb** %65, align 8, !dbg !5996, !tbaa !2464
  %74 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %73, i64 0, i32 5, !dbg !5997
  %75 = load i32, i32* %74, align 8, !dbg !5997, !tbaa !2469
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), %struct.redisObject* %72, i32 %75) #6, !dbg !5998
  %76 = zext i32 %59 to i64, !dbg !5999
  %77 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !6000, !tbaa !3395
  %78 = add nsw i64 %77, %76, !dbg !6000
  store i64 %78, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !6000, !tbaa !3395
  br label %79, !dbg !6001

; <label>:79:                                     ; preds = %24, %25, %64
  %80 = phi i64 [ %76, %64 ], [ 0, %25 ], [ 0, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6002
  br label %81, !dbg !6003

; <label>:81:                                     ; preds = %79, %45
  %82 = phi i64 [ 0, %45 ], [ %80, %79 ], !dbg !6004
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %82) #6, !dbg !6003
  br label %83, !dbg !6005

; <label>:83:                                     ; preds = %39, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #7, !dbg !6005
  br label %84

; <label>:84:                                     ; preds = %1, %13, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6005
  ret void, !dbg !6005
}

; Function Attrs: noredzone nounwind
define dso_local void @xtrimCommand(%struct.client*) local_unnamed_addr #0 !dbg !6006 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !6026
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !6026, !tbaa !3248
  %5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !6028
  %6 = load %struct.redisObject*, %struct.redisObject** %5, align 8, !dbg !6028, !tbaa !234
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !6029, !tbaa !3596
  %8 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* %0, %struct.redisObject* %6, %struct.redisObject* %7) #6, !dbg !6030
  %9 = icmp eq %struct.redisObject* %8, null, !dbg !6032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6033
  br i1 %9, label %106, label %10, !dbg !6033

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %8, i32 6) #6, !dbg !6034
  %12 = icmp eq i32 %11, 0, !dbg !6034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6035
  br i1 %12, label %13, label %106, !dbg !6035

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i64 0, i32 2, !dbg !6036
  %15 = bitcast i8** %14 to %struct.stream**, !dbg !6036
  %16 = load %struct.stream*, %struct.stream** %15, align 8, !dbg !6036, !tbaa !659
  %17 = bitcast i64* %2 to i8*, !dbg !6039
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !6039
  store i64 -1, i64* %2, align 8, !dbg !6040, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6044
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !6045
  %19 = load i32, i32* %18, align 8, !dbg !6045, !tbaa !3242
  %20 = icmp sgt i32 %19, 2, !dbg !6046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6047
  br i1 %20, label %21, label %83, !dbg !6047

; <label>:21:                                     ; preds = %13, %76
  %22 = phi i32 [ %78, %76 ], [ %19, %13 ]
  %23 = phi i32 [ %77, %76 ], [ 2, %13 ]
  %24 = xor i32 %23, -1, !dbg !6048
  %25 = add i32 %22, %24, !dbg !6048
  %26 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !6050, !tbaa !3248
  %27 = sext i32 %23 to i64, !dbg !6051
  %28 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %27, !dbg !6051
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !6051, !tbaa !234
  %30 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %29, i64 0, i32 2, !dbg !6052
  %31 = load i8*, i8** %30, align 8, !dbg !6052, !tbaa !659
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !6054
  %33 = icmp eq i32 %32, 0, !dbg !6054
  %34 = icmp ne i32 %25, 0, !dbg !6055
  %35 = and i1 %34, %33, !dbg !6056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6056
  br i1 %35, label %36, label %74, !dbg !6056

; <label>:36:                                     ; preds = %21
  %37 = add nsw i32 %23, 1, !dbg !6057
  %38 = sext i32 %37 to i64, !dbg !6058
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %38, !dbg !6058
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !6058, !tbaa !234
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !6059
  %42 = load i8*, i8** %41, align 8, !dbg !6059, !tbaa !659
  %43 = icmp sgt i32 %25, 1, !dbg !6061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6063
  br i1 %43, label %44, label %59, !dbg !6063

; <label>:44:                                     ; preds = %36
  %45 = load i8, i8* %42, align 1, !dbg !6064, !tbaa !674
  %46 = icmp eq i8 %45, 126, !dbg !6065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6066
  br i1 %46, label %47, label %52, !dbg !6066

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !6067
  %49 = load i8, i8* %48, align 1, !dbg !6067, !tbaa !674
  %50 = icmp eq i8 %49, 0, !dbg !6068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6070
  br i1 %50, label %60, label %51, !dbg !6069

; <label>:51:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6072
  br label %60, !dbg !6072

; <label>:52:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6073
  %53 = icmp eq i8 %45, 61, !dbg !6074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6072
  br i1 %53, label %54, label %60, !dbg !6072

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !6075
  %56 = load i8, i8* %55, align 1, !dbg !6075, !tbaa !674
  %57 = icmp eq i8 %56, 0, !dbg !6076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6077
  br i1 %57, label %58, label %60, !dbg !6077

; <label>:58:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6078
  br label %60, !dbg !6078

; <label>:59:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6073
  br label %60

; <label>:60:                                     ; preds = %47, %51, %59, %52, %54, %58
  %61 = phi i32 [ %37, %58 ], [ %23, %54 ], [ %23, %52 ], [ %23, %59 ], [ %23, %51 ], [ %37, %47 ], !dbg !6080
  %62 = phi i32 [ 0, %58 ], [ 0, %54 ], [ 0, %52 ], [ 0, %59 ], [ 0, %51 ], [ 1, %47 ], !dbg !6081
  %63 = add nsw i32 %61, 1, !dbg !6082
  %64 = sext i32 %63 to i64, !dbg !6084
  %65 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %64, !dbg !6084
  %66 = load %struct.redisObject*, %struct.redisObject** %65, align 8, !dbg !6084, !tbaa !234
  %67 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %66, i64* nonnull %2, i8* null) #6, !dbg !6085
  %68 = icmp eq i32 %67, 0, !dbg !6086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6087
  br i1 %68, label %69, label %73, !dbg !6087

; <label>:69:                                     ; preds = %60
  %70 = load i64, i64* %2, align 8, !dbg !6088, !tbaa !265
  %71 = icmp slt i64 %70, 0, !dbg !6090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6091
  br i1 %71, label %72, label %76, !dbg !6091

; <label>:72:                                     ; preds = %69
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !6092
  br label %73, !dbg !6094

; <label>:73:                                     ; preds = %60, %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6095
  br label %105

; <label>:74:                                     ; preds = %21
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !6096, !tbaa !3533
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %75) #6, !dbg !6098
  br label %105, !dbg !6099

; <label>:76:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6100
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6101
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = add nsw i32 %61, 2, !dbg !6102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6103
  %78 = load i32, i32* %18, align 8, !dbg !6045, !tbaa !3242
  %79 = icmp slt i32 %77, %78, !dbg !6046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6047
  br i1 %79, label %21, label %80, !dbg !6047, !llvm.loop !6104

; <label>:80:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6107
  %81 = call i64 @streamTrimByLength(%struct.stream* %16, i64 %70, i32 %62) #9, !dbg !6108
  %82 = icmp eq i64 %81, 0, !dbg !6111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6113
  br i1 %82, label %104, label %84, !dbg !6113

; <label>:83:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6107
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !6114
  br label %105, !dbg !6116

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !6117
  %86 = load %struct.redisDb*, %struct.redisDb** %85, align 8, !dbg !6117, !tbaa !2464
  %87 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !6119, !tbaa !3248
  %88 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %87, i64 1, !dbg !6120
  %89 = load %struct.redisObject*, %struct.redisObject** %88, align 8, !dbg !6120, !tbaa !234
  call void @signalModifiedKey(%struct.redisDb* %86, %struct.redisObject* %89) #6, !dbg !6121
  %90 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !6122, !tbaa !3248
  %91 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %90, i64 1, !dbg !6123
  %92 = load %struct.redisObject*, %struct.redisObject** %91, align 8, !dbg !6123, !tbaa !234
  %93 = load %struct.redisDb*, %struct.redisDb** %85, align 8, !dbg !6124, !tbaa !2464
  %94 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %93, i64 0, i32 5, !dbg !6125
  %95 = load i32, i32* %94, align 8, !dbg !6125, !tbaa !2469
  call void @notifyKeyspaceEvent(i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), %struct.redisObject* %92, i32 %95) #6, !dbg !6126
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !6127, !tbaa !3395
  %97 = add nsw i64 %96, %81, !dbg !6127
  store i64 %97, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !6127, !tbaa !3395
  %98 = icmp eq i32 %62, 0, !dbg !6128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6130
  br i1 %98, label %104, label %99, !dbg !6130

; <label>:99:                                     ; preds = %84
  %100 = getelementptr inbounds %struct.stream, %struct.stream* %16, i64 0, i32 1, !dbg !6135
  %101 = load i64, i64* %100, align 8, !dbg !6135, !tbaa !974
  %102 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %101) #6, !dbg !6136
  %103 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1) #6, !dbg !6138
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %63, %struct.redisObject* %102) #6, !dbg !6140
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 %61, %struct.redisObject* %103) #6, !dbg !6141
  call void @decrRefCount(%struct.redisObject* %103) #6, !dbg !6142
  call void @decrRefCount(%struct.redisObject* %102) #6, !dbg !6143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6145
  br label %104, !dbg !6145

; <label>:104:                                    ; preds = %84, %80, %99
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %81) #6, !dbg !6146
  br label %105, !dbg !6147

; <label>:105:                                    ; preds = %83, %104, %73, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !6147
  br label %106

; <label>:106:                                    ; preds = %1, %10, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6147
  ret void, !dbg !6147
}

; Function Attrs: noredzone nounwind
define dso_local void @xinfoCommand(%struct.client*) local_unnamed_addr #0 !dbg !6148 {
  %2 = alloca [5 x i8*], align 16
  %3 = alloca %struct.raxIterator, align 8
  %4 = alloca %struct.raxIterator, align 8
  %5 = alloca <2 x i64>, align 16
  %6 = bitcast <2 x i64>* %5 to %struct.streamID*
  %7 = alloca <2 x i64>, align 16
  %8 = bitcast <2 x i64>* %7 to %struct.streamID*
  %9 = bitcast [5 x i8*]* %2 to i8*, !dbg !6176
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #7, !dbg !6176
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 4
  %11 = bitcast i8** %10 to i64*, !dbg !6177
  store i64 0, i64* %11, align 16, !dbg !6177
  %12 = bitcast [5 x i8*]* %2 to <2 x i8*>*, !dbg !6177
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.74, i64 0, i64 0)>, <2 x i8*>* %12, align 16, !dbg !6177
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 2, !dbg !6177
  %14 = bitcast i8** %13 to <2 x i8*>*, !dbg !6177
  store <2 x i8*> <i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i64 0, i64 0)>, <2 x i8*>* %14, align 16, !dbg !6177
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !6179
  %16 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !6179, !tbaa !3248
  %17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 1, !dbg !6181
  %18 = load %struct.redisObject*, %struct.redisObject** %17, align 8, !dbg !6181, !tbaa !234
  %19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i64 0, i32 2, !dbg !6182
  %20 = load i8*, i8** %19, align 8, !dbg !6182, !tbaa !659
  %21 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !6183
  %22 = icmp eq i32 %21, 0, !dbg !6183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6184
  br i1 %22, label %23, label %25, !dbg !6184

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0, !dbg !6177
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %24) #6, !dbg !6185
  br label %242, !dbg !6187

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !6188
  %27 = load i32, i32* %26, align 8, !dbg !6188, !tbaa !3242
  %28 = icmp slt i32 %27, 3, !dbg !6190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6191
  br i1 %28, label %29, label %30, !dbg !6191

; <label>:29:                                     ; preds = %25
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !6192
  br label %242, !dbg !6194

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !6196
  %32 = load %struct.redisObject*, %struct.redisObject** %31, align 8, !dbg !6196, !tbaa !234
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 15), align 8, !dbg !6198, !tbaa !4795
  %34 = tail call %struct.redisObject* @lookupKeyWriteOrReply(%struct.client* nonnull %0, %struct.redisObject* %32, %struct.redisObject* %33) #6, !dbg !6199
  %35 = icmp eq %struct.redisObject* %34, null, !dbg !6201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6203
  br i1 %35, label %241, label %36, !dbg !6203

; <label>:36:                                     ; preds = %30
  %37 = tail call i32 @checkType(%struct.client* nonnull %0, %struct.redisObject* nonnull %34, i32 6) #6, !dbg !6204
  %38 = icmp eq i32 %37, 0, !dbg !6204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6205
  br i1 %38, label %39, label %241, !dbg !6205

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i64 0, i32 2, !dbg !6206
  %41 = bitcast i8** %40 to %struct.stream**, !dbg !6206
  %42 = load %struct.stream*, %struct.stream** %41, align 8, !dbg !6206, !tbaa !659
  %43 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !6207
  %44 = icmp eq i32 %43, 0, !dbg !6207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6208
  br i1 %44, label %45, label %155, !dbg !6208

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %26, align 8, !dbg !6209, !tbaa !3242
  %47 = icmp eq i32 %46, 4, !dbg !6210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6211
  br i1 %47, label %48, label %155, !dbg !6211

; <label>:48:                                     ; preds = %45
  %49 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !6212, !tbaa !3248
  %50 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 3, !dbg !6213
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !6213, !tbaa !234
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !6214
  %53 = load i8*, i8** %52, align 8, !dbg !6214, !tbaa !659
  %54 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6218
  %55 = load %struct.rax*, %struct.rax** %54, align 8, !dbg !6218, !tbaa !123
  %56 = icmp eq %struct.rax* %55, null, !dbg !6219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6220
  br i1 %56, label %57, label %58, !dbg !6220

; <label>:57:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6221
  br label %89, !dbg !6221

; <label>:58:                                     ; preds = %48
  %59 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !6224
  %60 = load i8, i8* %59, align 1, !dbg !6224, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6226
  %61 = trunc i8 %60 to i3, !dbg !6226
  switch i3 %61, label %83 [
    i3 0, label %62
    i3 1, label %65
    i3 2, label %69
    i3 3, label %74
    i3 -4, label %79
  ], !dbg !6226

; <label>:62:                                     ; preds = %58
  %63 = lshr i8 %60, 3, !dbg !6227
  %64 = zext i8 %63 to i64, !dbg !6227
  br label %83, !dbg !6228

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !6229
  %67 = load i8, i8* %66, align 1, !dbg !6230, !tbaa !674
  %68 = zext i8 %67 to i64, !dbg !6229
  br label %83, !dbg !6231

; <label>:69:                                     ; preds = %58
  %70 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !6232
  %71 = bitcast i8* %70 to i16*, !dbg !6233
  %72 = load i16, i16* %71, align 1, !dbg !6233, !tbaa !685
  %73 = zext i16 %72 to i64, !dbg !6232
  br label %83, !dbg !6234

; <label>:74:                                     ; preds = %58
  %75 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !6235
  %76 = bitcast i8* %75 to i32*, !dbg !6236
  %77 = load i32, i32* %76, align 1, !dbg !6236, !tbaa !690
  %78 = zext i32 %77 to i64, !dbg !6235
  br label %83, !dbg !6237

; <label>:79:                                     ; preds = %58
  %80 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !6238
  %81 = bitcast i8* %80 to i64*, !dbg !6239
  %82 = load i64, i64* %81, align 1, !dbg !6239, !tbaa !117
  br label %83, !dbg !6240

; <label>:83:                                     ; preds = %58, %79, %74, %69, %65, %62
  %84 = phi i64 [ %82, %79 ], [ %78, %74 ], [ %73, %69 ], [ %68, %65 ], [ %64, %62 ], [ 0, %58 ], !dbg !6241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6243
  %85 = tail call i8* @raxFind(%struct.rax* nonnull %55, i8* nonnull %53, i64 %84) #6, !dbg !6244
  %86 = bitcast i8* %85 to %struct.streamCG*, !dbg !6244
  %87 = load %struct.streamCG*, %struct.streamCG** bitcast (i8** @raxNotFound to %struct.streamCG**), align 8, !dbg !6246, !tbaa !234
  %88 = icmp eq %struct.streamCG* %87, %86, !dbg !6247
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %57, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6250
  br label %92, !dbg !6250

; <label>:90:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6248
  %91 = icmp eq i8* %85, null, !dbg !6251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6250
  br i1 %91, label %92, label %100, !dbg !6250

; <label>:92:                                     ; preds = %89, %90
  %93 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !6253, !tbaa !3248
  %94 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %93, i64 3, !dbg !6255
  %95 = load %struct.redisObject*, %struct.redisObject** %94, align 8, !dbg !6255, !tbaa !234
  %96 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %95, i64 0, i32 2, !dbg !6256
  %97 = load i8*, i8** %96, align 8, !dbg !6256, !tbaa !659
  %98 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i64 0, i32 2, !dbg !6257
  %99 = load i8*, i8** %98, align 8, !dbg !6257, !tbaa !659
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0), i8* %97, i8* %99) #6, !dbg !6258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6259
  br label %241

; <label>:100:                                    ; preds = %90
  %101 = getelementptr inbounds i8, i8* %85, i64 24, !dbg !6260
  %102 = bitcast i8* %101 to %struct.rax**, !dbg !6260
  %103 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !6260, !tbaa !159
  %104 = tail call i64 @raxSize(%struct.rax* %103) #6, !dbg !6261
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %104) #6, !dbg !6262
  %105 = bitcast %struct.raxIterator* %3 to i8*, !dbg !6263
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %105) #7, !dbg !6263
  %106 = load %struct.rax*, %struct.rax** %102, align 8, !dbg !6264, !tbaa !159
  call void @raxStart(%struct.raxIterator* nonnull %3, %struct.rax* %106) #6, !dbg !6266
  %107 = call i32 @raxSeek(%struct.raxIterator* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !6267
  %108 = call i64 @mstime() #6, !dbg !6268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6270
  %109 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !6271
  %110 = icmp eq i32 %109, 0, !dbg !6270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6270
  br i1 %110, label %154, label %111, !dbg !6270

; <label>:111:                                    ; preds = %100
  %112 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i64 0, i32 3
  %113 = bitcast i8** %112 to %struct.streamConsumer**
  br label %114, !dbg !6270

; <label>:114:                                    ; preds = %111, %147
  %115 = load %struct.streamConsumer*, %struct.streamConsumer** %113, align 8, !dbg !6272, !tbaa !525
  %116 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 0, !dbg !6274
  %117 = load i64, i64* %116, align 8, !dbg !6274, !tbaa !4265
  %118 = sub nsw i64 %108, %117, !dbg !6275
  %119 = icmp sgt i64 %118, 0, !dbg !6277
  %120 = select i1 %119, i64 %118, i64 0, !dbg !6277
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 6) #6, !dbg !6278
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !6279
  %121 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 1, !dbg !6280
  %122 = load i8*, i8** %121, align 8, !dbg !6280, !tbaa !2394
  %123 = getelementptr inbounds i8, i8* %122, i64 -1, !dbg !6283
  %124 = load i8, i8* %123, align 1, !dbg !6283, !tbaa !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6285
  %125 = trunc i8 %124 to i3, !dbg !6285
  switch i3 %125, label %147 [
    i3 0, label %126
    i3 1, label %129
    i3 2, label %133
    i3 3, label %138
    i3 -4, label %143
  ], !dbg !6285

; <label>:126:                                    ; preds = %114
  %127 = lshr i8 %124, 3, !dbg !6286
  %128 = zext i8 %127 to i64, !dbg !6286
  br label %147, !dbg !6287

; <label>:129:                                    ; preds = %114
  %130 = getelementptr inbounds i8, i8* %122, i64 -3, !dbg !6288
  %131 = load i8, i8* %130, align 1, !dbg !6289, !tbaa !674
  %132 = zext i8 %131 to i64, !dbg !6288
  br label %147, !dbg !6290

; <label>:133:                                    ; preds = %114
  %134 = getelementptr inbounds i8, i8* %122, i64 -5, !dbg !6291
  %135 = bitcast i8* %134 to i16*, !dbg !6292
  %136 = load i16, i16* %135, align 1, !dbg !6292, !tbaa !685
  %137 = zext i16 %136 to i64, !dbg !6291
  br label %147, !dbg !6293

; <label>:138:                                    ; preds = %114
  %139 = getelementptr inbounds i8, i8* %122, i64 -9, !dbg !6294
  %140 = bitcast i8* %139 to i32*, !dbg !6295
  %141 = load i32, i32* %140, align 1, !dbg !6295, !tbaa !690
  %142 = zext i32 %141 to i64, !dbg !6294
  br label %147, !dbg !6296

; <label>:143:                                    ; preds = %114
  %144 = getelementptr inbounds i8, i8* %122, i64 -17, !dbg !6297
  %145 = bitcast i8* %144 to i64*, !dbg !6298
  %146 = load i64, i64* %145, align 1, !dbg !6298, !tbaa !117
  br label %147, !dbg !6299

; <label>:147:                                    ; preds = %114, %126, %129, %133, %138, %143
  %148 = phi i64 [ %146, %143 ], [ %142, %138 ], [ %137, %133 ], [ %132, %129 ], [ %128, %126 ], [ 0, %114 ], !dbg !6300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6302
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %122, i64 %148) #6, !dbg !6303
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !6304
  %149 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %115, i64 0, i32 2, !dbg !6305
  %150 = load %struct.rax*, %struct.rax** %149, align 8, !dbg !6305, !tbaa !2712
  %151 = call i64 @raxSize(%struct.rax* %150) #6, !dbg !6306
  call void @addReplyLongLong(%struct.client* %0, i64 %151) #6, !dbg !6307
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0)) #6, !dbg !6308
  call void @addReplyLongLong(%struct.client* %0, i64 %120) #6, !dbg !6309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6270
  %152 = call i32 @raxNext(%struct.raxIterator* nonnull %3) #6, !dbg !6271
  %153 = icmp eq i32 %152, 0, !dbg !6270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6270
  br i1 %153, label %154, label %114, !dbg !6270, !llvm.loop !6310

; <label>:154:                                    ; preds = %147, %100
  call void @raxStop(%struct.raxIterator* nonnull %3) #6, !dbg !6312
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %105) #7, !dbg !6313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6313
  br label %240

; <label>:155:                                    ; preds = %39, %45
  %156 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i64 0, i64 0)) #10, !dbg !6314
  %157 = icmp eq i32 %156, 0, !dbg !6314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6315
  br i1 %157, label %158, label %197, !dbg !6315

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %26, align 8, !dbg !6316, !tbaa !3242
  %160 = icmp eq i32 %159, 3, !dbg !6317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6318
  br i1 %160, label %161, label %197, !dbg !6318

; <label>:161:                                    ; preds = %158
  %162 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6319
  %163 = load %struct.rax*, %struct.rax** %162, align 8, !dbg !6319, !tbaa !123
  %164 = icmp eq %struct.rax* %163, null, !dbg !6321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6322
  br i1 %164, label %165, label %166, !dbg !6322

; <label>:165:                                    ; preds = %161
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 0) #6, !dbg !6323
  br label %241, !dbg !6325

; <label>:166:                                    ; preds = %161
  %167 = tail call i64 @raxSize(%struct.rax* nonnull %163) #6, !dbg !6326
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %167) #6, !dbg !6327
  %168 = bitcast %struct.raxIterator* %4 to i8*, !dbg !6328
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %168) #7, !dbg !6328
  %169 = load %struct.rax*, %struct.rax** %162, align 8, !dbg !6329, !tbaa !123
  call void @raxStart(%struct.raxIterator* nonnull %4, %struct.rax* %169) #6, !dbg !6331
  %170 = call i32 @raxSeek(%struct.raxIterator* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* null, i64 0) #6, !dbg !6332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6333
  %171 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !6334
  %172 = icmp eq i32 %171, 0, !dbg !6333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6333
  br i1 %172, label %196, label %173, !dbg !6333

; <label>:173:                                    ; preds = %166
  %174 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 3
  %175 = bitcast i8** %174 to %struct.streamCG**
  %176 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 2
  %177 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i64 0, i32 4
  br label %178, !dbg !6333

; <label>:178:                                    ; preds = %173, %178
  %179 = load %struct.streamCG*, %struct.streamCG** %175, align 8, !dbg !6335, !tbaa !525
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 8) #6, !dbg !6337
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #6, !dbg !6338
  %180 = load i8*, i8** %176, align 8, !dbg !6339, !tbaa !706
  %181 = load i64, i64* %177, align 8, !dbg !6340, !tbaa !704
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* %180, i64 %181) #6, !dbg !6341
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i64 0, i64 0)) #6, !dbg !6342
  %182 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 2, !dbg !6343
  %183 = load %struct.rax*, %struct.rax** %182, align 8, !dbg !6343, !tbaa !159
  %184 = call i64 @raxSize(%struct.rax* %183) #6, !dbg !6344
  call void @addReplyLongLong(%struct.client* %0, i64 %184) #6, !dbg !6345
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #6, !dbg !6346
  %185 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 1, !dbg !6347
  %186 = load %struct.rax*, %struct.rax** %185, align 8, !dbg !6347, !tbaa !155
  %187 = call i64 @raxSize(%struct.rax* %186) #6, !dbg !6348
  call void @addReplyLongLong(%struct.client* %0, i64 %187) #6, !dbg !6349
  call void @addReplyBulkCString(%struct.client* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i64 0, i64 0)) #6, !dbg !6350
  %188 = call i8* @sdsempty() #6, !dbg !6354
  %189 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 0, i32 0, !dbg !6355
  %190 = load i64, i64* %189, align 8, !dbg !6355, !tbaa !178
  %191 = getelementptr inbounds %struct.streamCG, %struct.streamCG* %179, i64 0, i32 0, i32 1, !dbg !6356
  %192 = load i64, i64* %191, align 8, !dbg !6356, !tbaa !188
  %193 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %190, i64 %192) #6, !dbg !6357
  call void @addReplyBulkSds(%struct.client* %0, i8* %193) #6, !dbg !6359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6333
  %194 = call i32 @raxNext(%struct.raxIterator* nonnull %4) #6, !dbg !6334
  %195 = icmp eq i32 %194, 0, !dbg !6333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6333
  br i1 %195, label %196, label %178, !dbg !6333, !llvm.loop !6361

; <label>:196:                                    ; preds = %178, %166
  call void @raxStop(%struct.raxIterator* nonnull %4) #6, !dbg !6363
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %168) #7, !dbg !6364
  br label %240, !dbg !6365

; <label>:197:                                    ; preds = %155, %158
  %198 = tail call i32 @strcasecmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0)) #10, !dbg !6366
  %199 = icmp eq i32 %198, 0, !dbg !6366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6367
  br i1 %199, label %200, label %239, !dbg !6367

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %26, align 8, !dbg !6368, !tbaa !3242
  %202 = icmp eq i32 %201, 3, !dbg !6369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6370
  br i1 %202, label %203, label %239, !dbg !6370

; <label>:203:                                    ; preds = %200
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 14) #6, !dbg !6371
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0)) #6, !dbg !6372
  %204 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 1, !dbg !6373
  %205 = load i64, i64* %204, align 8, !dbg !6373, !tbaa !974
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %205) #6, !dbg !6374
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0)) #6, !dbg !6375
  %206 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 0, !dbg !6376
  %207 = load %struct.rax*, %struct.rax** %206, align 8, !dbg !6376, !tbaa !108
  %208 = tail call i64 @raxSize(%struct.rax* %207) #6, !dbg !6377
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %208) #6, !dbg !6378
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.88, i64 0, i64 0)) #6, !dbg !6379
  %209 = load %struct.rax*, %struct.rax** %206, align 8, !dbg !6380, !tbaa !108
  %210 = getelementptr inbounds %struct.rax, %struct.rax* %209, i64 0, i32 2, !dbg !6381
  %211 = load i64, i64* %210, align 8, !dbg !6381, !tbaa !6382
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %211) #6, !dbg !6384
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0)) #6, !dbg !6385
  %212 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 3, !dbg !6386
  %213 = load %struct.rax*, %struct.rax** %212, align 8, !dbg !6386, !tbaa !123
  %214 = icmp eq %struct.rax* %213, null, !dbg !6387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6387
  br i1 %214, label %217, label %215, !dbg !6387

; <label>:215:                                    ; preds = %203
  %216 = tail call i64 @raxSize(%struct.rax* nonnull %213) #6, !dbg !6388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6387
  br label %217, !dbg !6387

; <label>:217:                                    ; preds = %203, %215
  %218 = phi i64 [ %216, %215 ], [ 0, %203 ], !dbg !6387
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %218) #6, !dbg !6389
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #6, !dbg !6390
  %219 = tail call i8* @sdsempty() #6, !dbg !6394
  %220 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 0, !dbg !6395
  %221 = load i64, i64* %220, align 8, !dbg !6395, !tbaa !178
  %222 = getelementptr inbounds %struct.stream, %struct.stream* %42, i64 0, i32 2, i32 1, !dbg !6396
  %223 = load i64, i64* %222, align 8, !dbg !6396, !tbaa !188
  %224 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %221, i64 %223) #6, !dbg !6397
  tail call void @addReplyBulkSds(%struct.client* nonnull %0, i8* %224) #6, !dbg !6399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6400
  %225 = bitcast <2 x i64>* %5 to i8*, !dbg !6401
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %225) #7, !dbg !6401
  %226 = bitcast <2 x i64>* %7 to i8*, !dbg !6401
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %226) #7, !dbg !6401
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 16, !dbg !6402, !tbaa !117
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %7, align 16, !dbg !6403, !tbaa !117
  tail call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0)) #6, !dbg !6404
  %227 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 0, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !6407
  %228 = trunc i64 %227 to i32, !dbg !6407
  %229 = icmp eq i32 %228, 0, !dbg !6409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6411
  br i1 %229, label %230, label %232, !dbg !6411

; <label>:230:                                    ; preds = %217
  %231 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6412, !tbaa !5206
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %231) #6, !dbg !6413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6413
  br label %232, !dbg !6413

; <label>:232:                                    ; preds = %217, %230
  call void @addReplyBulkCString(%struct.client* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0)) #6, !dbg !6414
  %233 = call i64 @streamReplyWithRange(%struct.client* nonnull %0, %struct.stream* nonnull %42, %struct.streamID* nonnull %6, %struct.streamID* nonnull %8, i64 1, i32 1, %struct.streamCG* null, %struct.streamConsumer* null, i32 2, %struct.sreamPropInfo* null) #9, !dbg !6415
  %234 = trunc i64 %233 to i32, !dbg !6415
  %235 = icmp eq i32 %234, 0, !dbg !6416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6418
  br i1 %235, label %236, label %238, !dbg !6418

; <label>:236:                                    ; preds = %232
  %237 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !6419, !tbaa !5206
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %237) #6, !dbg !6420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6420
  br label %238, !dbg !6420

; <label>:238:                                    ; preds = %232, %236
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %226) #7, !dbg !6421
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %225) #7, !dbg !6421
  br label %240, !dbg !6422

; <label>:239:                                    ; preds = %197, %200
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !6423
  br label %240

; <label>:240:                                    ; preds = %154, %196, %239, %238
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %241, !dbg !6425

; <label>:241:                                    ; preds = %30, %36, %92, %240, %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %242

; <label>:242:                                    ; preds = %241, %29, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #7, !dbg !6425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !6425
  ret void, !dbg !6425
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
!180 = !DILocation(line: 76, column: 9, scope: !164)
!181 = !DILocation(line: 0, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 79, column: 12)
!183 = !DILocation(line: 77, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 76, column: 27)
!185 = !DILocation(line: 79, column: 5, scope: !184)
!186 = !DILocation(line: 80, column: 20, scope: !182)
!187 = !DILocation(line: 81, column: 32, scope: !182)
!188 = !{!114, !113, i64 8}
!189 = !DILocation(line: 81, column: 35, scope: !182)
!190 = !DILocation(line: 81, column: 17, scope: !182)
!191 = !DILocation(line: 81, column: 21, scope: !182)
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
!350 = !DILocation(line: 154, column: 24, scope: !346)
!351 = !DILocation(line: 155, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !346, file: !1, line: 155, column: 14)
!353 = !DILocation(line: 155, column: 14, scope: !346)
!354 = !DILocation(line: 155, column: 29, scope: !352)
!355 = !DILocation(line: 157, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 157, column: 14)
!357 = !DILocation(line: 157, column: 26, scope: !356)
!358 = !DILocation(line: 157, column: 21, scope: !356)
!359 = !DILocation(line: 157, column: 14, scope: !352)
!360 = !DILocation(line: 157, column: 31, scope: !356)
!361 = !DILocation(line: 158, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !356, file: !1, line: 158, column: 14)
!363 = !DILocation(line: 158, column: 14, scope: !356)
!364 = !DILocation(line: 0, scope: !337)
!365 = !DILocation(line: 158, column: 31, scope: !362)
!366 = !DILocation(line: 161, column: 1, scope: !337)
!367 = distinct !DISubprogram(name: "streamAppendItem", scope: !1, file: !1, line: 175, type: !368, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !381)
!368 = !DISubroutineType(types: !369)
!369 = !{!12, !69, !370, !196, !167, !167}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !373, line: 622, baseType: !374)
!373 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !373, line: 614, size: 128, elements: !375)
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !373, line: 615, baseType: !49, size: 4, flags: DIFlagBitField, extraData: i64 0)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !374, file: !373, line: 616, baseType: !49, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !374, file: !373, line: 617, baseType: !49, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !374, file: !373, line: 620, baseType: !12, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !374, file: !373, line: 621, baseType: !7, size: 64, offset: 64)
!381 = !{!382, !383, !384, !385, !386, !387, !421, !422, !423, !424, !425, !426, !432, !433, !437, !441, !443, !444, !445, !448, !452, !453, !454, !455, !457, !460, !461}
!382 = !DILocalVariable(name: "s", arg: 1, scope: !367, file: !1, line: 175, type: !69)
!383 = !DILocalVariable(name: "argv", arg: 2, scope: !367, file: !1, line: 175, type: !370)
!384 = !DILocalVariable(name: "numfields", arg: 3, scope: !367, file: !1, line: 175, type: !196)
!385 = !DILocalVariable(name: "added_id", arg: 4, scope: !367, file: !1, line: 175, type: !167)
!386 = !DILocalVariable(name: "use_id", arg: 5, scope: !367, file: !1, line: 175, type: !167)
!387 = !DILocalVariable(name: "ri", scope: !367, file: !1, line: 181, type: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !77, line: 186, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !77, line: 175, size: 3840, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !401, !402, !415}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !77, line: 176, baseType: !12, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !389, file: !77, line: 177, baseType: !75, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !389, file: !77, line: 178, baseType: !8, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !389, file: !77, line: 179, baseType: !7, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !389, file: !77, line: 180, baseType: !13, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !389, file: !77, line: 181, baseType: !13, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !389, file: !77, line: 182, baseType: !398, size: 1024, offset: 384)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !389, file: !77, line: 183, baseType: !81, size: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !389, file: !77, line: 184, baseType: !403, size: 2304, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !77, line: 150, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !77, line: 143, size: 2304, elements: !405)
!405 = !{!406, !408, !409, !410, !414}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !404, file: !77, line: 144, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !404, file: !77, line: 145, baseType: !13, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !404, file: !77, line: 145, baseType: !13, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !404, file: !77, line: 148, baseType: !411, size: 2048, offset: 192)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !404, file: !77, line: 149, baseType: !12, size: 32, offset: 2240)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !389, file: !77, line: 185, baseType: !416, size: 64, offset: 3776)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !77, line: 165, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!12, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!421 = !DILocalVariable(name: "lp_bytes", scope: !367, file: !1, line: 185, type: !13)
!422 = !DILocalVariable(name: "lp", scope: !367, file: !1, line: 186, type: !8)
!423 = !DILocalVariable(name: "id", scope: !367, file: !1, line: 196, type: !95)
!424 = !DILocalVariable(name: "rax_key", scope: !367, file: !1, line: 205, type: !305)
!425 = !DILocalVariable(name: "master_id", scope: !367, file: !1, line: 206, type: !95)
!426 = !DILocalVariable(name: "count", scope: !427, file: !1, line: 249, type: !196)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 248, column: 52)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 248, column: 20)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 244, column: 13)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 243, column: 21)
!431 = distinct !DILexicalBlock(scope: !367, file: !1, line: 243, column: 9)
!432 = !DILocalVariable(name: "flags", scope: !367, file: !1, line: 254, type: !12)
!433 = !DILocalVariable(name: "i", scope: !434, file: !1, line: 263, type: !196)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 263, column: 9)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 255, column: 64)
!436 = distinct !DILexicalBlock(scope: !367, file: !1, line: 255, column: 9)
!437 = !DILocalVariable(name: "field", scope: !438, file: !1, line: 264, type: !440)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 263, column: 49)
!439 = distinct !DILexicalBlock(scope: !434, file: !1, line: 263, column: 9)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !20, line: 43, baseType: !10)
!441 = !DILocalVariable(name: "lp_ele", scope: !442, file: !1, line: 278, type: !8)
!442 = distinct !DILexicalBlock(scope: !436, file: !1, line: 272, column: 12)
!443 = !DILocalVariable(name: "count", scope: !442, file: !1, line: 281, type: !196)
!444 = !DILocalVariable(name: "master_fields_count", scope: !442, file: !1, line: 288, type: !196)
!445 = !DILocalVariable(name: "i", scope: !446, file: !1, line: 291, type: !196)
!446 = distinct !DILexicalBlock(scope: !447, file: !1, line: 290, column: 47)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 290, column: 13)
!448 = !DILocalVariable(name: "field", scope: !449, file: !1, line: 293, type: !440)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 292, column: 55)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 292, column: 13)
!451 = distinct !DILexicalBlock(scope: !446, file: !1, line: 292, column: 13)
!452 = !DILocalVariable(name: "e_len", scope: !449, file: !1, line: 294, type: !196)
!453 = !DILocalVariable(name: "buf", scope: !449, file: !1, line: 295, type: !278)
!454 = !DILocalVariable(name: "e", scope: !449, file: !1, line: 296, type: !8)
!455 = !DILocalVariable(name: "i", scope: !456, file: !1, line: 335, type: !196)
!456 = distinct !DILexicalBlock(scope: !367, file: !1, line: 335, column: 5)
!457 = !DILocalVariable(name: "field", scope: !458, file: !1, line: 336, type: !440)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 335, column: 45)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 335, column: 5)
!460 = !DILocalVariable(name: "value", scope: !458, file: !1, line: 336, type: !440)
!461 = !DILocalVariable(name: "lp_count", scope: !367, file: !1, line: 342, type: !196)
!462 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !463)
!463 = distinct !DILocation(line: 277, column: 9, scope: !442)
!464 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !465)
!465 = distinct !DILocation(line: 257, column: 9, scope: !435)
!466 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !467)
!467 = distinct !DILocation(line: 334, column: 14, scope: !468)
!468 = distinct !DILexicalBlock(scope: !367, file: !1, line: 333, column: 9)
!469 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !470)
!470 = distinct !DILocation(line: 332, column: 10, scope: !367)
!471 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !472)
!472 = distinct !DILocation(line: 331, column: 10, scope: !367)
!473 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !474)
!474 = distinct !DILocation(line: 330, column: 10, scope: !367)
!475 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !476)
!476 = distinct !DILocation(line: 282, column: 14, scope: !442)
!477 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !478)
!478 = distinct !DILocation(line: 267, column: 14, scope: !435)
!479 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !480)
!480 = distinct !DILocation(line: 262, column: 14, scope: !435)
!481 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !482)
!482 = distinct !DILocation(line: 261, column: 14, scope: !435)
!483 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !484)
!484 = distinct !DILocation(line: 260, column: 14, scope: !435)
!485 = !DILocation(line: 88, column: 10, scope: !193, inlinedAt: !486)
!486 = distinct !DILocation(line: 349, column: 10, scope: !367)
!487 = !DILocation(line: 175, column: 30, scope: !367)
!488 = !DILocation(line: 175, column: 40, scope: !367)
!489 = !DILocation(line: 175, column: 54, scope: !367)
!490 = !DILocation(line: 175, column: 75, scope: !367)
!491 = !DILocation(line: 175, column: 95, scope: !367)
!492 = !DILocation(line: 178, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !367, file: !1, line: 178, column: 9)
!494 = !DILocation(line: 178, column: 16, scope: !493)
!495 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !496)
!496 = distinct !DILocation(line: 178, column: 19, scope: !493)
!497 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !496)
!498 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !496)
!499 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !496)
!500 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !496)
!501 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !496)
!502 = !DILocation(line: 154, column: 24, scope: !346, inlinedAt: !496)
!503 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !496)
!504 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !496)
!505 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !496)
!506 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !496)
!507 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !496)
!508 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !496)
!509 = !DILocation(line: 0, scope: !493)
!510 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !496)
!511 = !DILocation(line: 178, column: 9, scope: !367)
!512 = !DILocation(line: 178, column: 61, scope: !493)
!513 = !DILocation(line: 181, column: 5, scope: !367)
!514 = !DILocation(line: 182, column: 21, scope: !367)
!515 = !DILocation(line: 181, column: 17, scope: !367)
!516 = !DILocation(line: 182, column: 5, scope: !367)
!517 = !DILocation(line: 183, column: 5, scope: !367)
!518 = !DILocation(line: 185, column: 12, scope: !367)
!519 = !DILocation(line: 186, column: 20, scope: !367)
!520 = !DILocation(line: 189, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !367, file: !1, line: 189, column: 9)
!522 = !DILocation(line: 189, column: 9, scope: !367)
!523 = !DILocation(line: 190, column: 17, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !1, line: 189, column: 23)
!525 = !{!526, !110, i64 24}
!526 = !{!"raxIterator", !527, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !113, i64 32, !113, i64 40, !111, i64 48, !110, i64 176, !528, i64 184, !110, i64 472}
!527 = !{!"int", !111, i64 0}
!528 = !{!"raxStack", !110, i64 0, !113, i64 8, !113, i64 16, !111, i64 24, !527, i64 280}
!529 = !DILocation(line: 191, column: 20, scope: !524)
!530 = !DILocation(line: 192, column: 5, scope: !524)
!531 = !DILocation(line: 0, scope: !367)
!532 = !DILocation(line: 193, column: 5, scope: !367)
!533 = !DILocation(line: 197, column: 9, scope: !367)
!534 = !DILocation(line: 198, column: 14, scope: !535)
!535 = distinct !DILexicalBlock(scope: !367, file: !1, line: 197, column: 9)
!536 = !DILocation(line: 198, column: 9, scope: !535)
!537 = !DILocation(line: 196, column: 14, scope: !367)
!538 = !DILocation(line: 74, column: 29, scope: !164, inlinedAt: !539)
!539 = distinct !DILocation(line: 200, column: 9, scope: !535)
!540 = !DILocation(line: 74, column: 48, scope: !164, inlinedAt: !539)
!541 = !DILocation(line: 75, column: 19, scope: !164, inlinedAt: !539)
!542 = !DILocation(line: 75, column: 14, scope: !164, inlinedAt: !539)
!543 = !DILocation(line: 76, column: 23, scope: !177, inlinedAt: !539)
!544 = !DILocation(line: 76, column: 12, scope: !177, inlinedAt: !539)
!545 = !DILocation(line: 76, column: 9, scope: !164, inlinedAt: !539)
!546 = !DILocation(line: 81, column: 32, scope: !182, inlinedAt: !539)
!547 = !DILocation(line: 81, column: 35, scope: !182, inlinedAt: !539)
!548 = !DILocation(line: 0, scope: !535)
!549 = !DILocation(line: 83, column: 1, scope: !164, inlinedAt: !539)
!550 = !DILocation(line: 205, column: 5, scope: !367)
!551 = !DILocation(line: 205, column: 14, scope: !367)
!552 = !DILocation(line: 243, column: 12, scope: !431)
!553 = !DILocation(line: 243, column: 9, scope: !367)
!554 = !DILocation(line: 244, column: 20, scope: !429)
!555 = !{!556, !113, i64 2848}
!556 = !{!"redisServer", !527, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !527, i64 32, !527, i64 36, !527, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !527, i64 80, !527, i64 84, !527, i64 88, !527, i64 92, !110, i64 96, !110, i64 104, !527, i64 112, !527, i64 116, !111, i64 120, !527, i64 164, !113, i64 168, !527, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !111, i64 208, !527, i64 216, !527, i64 220, !111, i64 224, !527, i64 352, !110, i64 360, !527, i64 368, !111, i64 372, !527, i64 436, !527, i64 440, !111, i64 444, !527, i64 508, !110, i64 512, !110, i64 520, !110, i64 528, !110, i64 536, !110, i64 544, !110, i64 552, !110, i64 560, !527, i64 568, !266, i64 576, !111, i64 584, !110, i64 840, !113, i64 848, !527, i64 856, !527, i64 860, !113, i64 864, !113, i64 872, !113, i64 880, !113, i64 888, !110, i64 896, !110, i64 904, !110, i64 912, !110, i64 920, !110, i64 928, !110, i64 936, !110, i64 944, !110, i64 952, !110, i64 960, !110, i64 968, !110, i64 976, !110, i64 984, !110, i64 992, !113, i64 1000, !266, i64 1008, !266, i64 1016, !266, i64 1024, !557, i64 1032, !266, i64 1040, !266, i64 1048, !266, i64 1056, !266, i64 1064, !266, i64 1072, !266, i64 1080, !266, i64 1088, !266, i64 1096, !266, i64 1104, !113, i64 1112, !266, i64 1120, !557, i64 1128, !266, i64 1136, !266, i64 1144, !266, i64 1152, !266, i64 1160, !110, i64 1168, !266, i64 1176, !266, i64 1184, !113, i64 1192, !558, i64 1200, !266, i64 1240, !266, i64 1248, !113, i64 1256, !113, i64 1264, !111, i64 1272, !527, i64 1728, !527, i64 1732, !527, i64 1736, !527, i64 1740, !527, i64 1744, !113, i64 1752, !527, i64 1760, !527, i64 1764, !527, i64 1768, !527, i64 1772, !113, i64 1776, !113, i64 1784, !527, i64 1792, !527, i64 1796, !527, i64 1800, !527, i64 1804, !111, i64 1808, !527, i64 1880, !527, i64 1884, !110, i64 1888, !527, i64 1896, !527, i64 1900, !113, i64 1904, !113, i64 1912, !113, i64 1920, !113, i64 1928, !527, i64 1936, !527, i64 1940, !110, i64 1944, !110, i64 1952, !527, i64 1960, !527, i64 1964, !113, i64 1968, !113, i64 1976, !113, i64 1984, !113, i64 1992, !527, i64 2000, !113, i64 2008, !527, i64 2016, !527, i64 2020, !527, i64 2024, !527, i64 2028, !527, i64 2032, !527, i64 2036, !527, i64 2040, !527, i64 2044, !527, i64 2048, !527, i64 2052, !527, i64 2056, !527, i64 2060, !527, i64 2064, !110, i64 2072, !266, i64 2080, !266, i64 2088, !527, i64 2096, !110, i64 2104, !527, i64 2112, !110, i64 2120, !527, i64 2128, !527, i64 2132, !113, i64 2136, !113, i64 2144, !113, i64 2152, !113, i64 2160, !527, i64 2168, !527, i64 2172, !527, i64 2176, !527, i64 2180, !527, i64 2184, !527, i64 2188, !111, i64 2192, !559, i64 2200, !560, i64 2224, !110, i64 2240, !527, i64 2248, !110, i64 2256, !527, i64 2264, !111, i64 2268, !111, i64 2309, !266, i64 2352, !266, i64 2360, !527, i64 2368, !527, i64 2372, !110, i64 2376, !266, i64 2384, !266, i64 2392, !266, i64 2400, !266, i64 2408, !113, i64 2416, !113, i64 2424, !527, i64 2432, !527, i64 2436, !527, i64 2440, !527, i64 2444, !527, i64 2448, !110, i64 2456, !110, i64 2464, !527, i64 2472, !527, i64 2476, !110, i64 2480, !110, i64 2488, !527, i64 2496, !527, i64 2500, !113, i64 2504, !113, i64 2512, !113, i64 2520, !527, i64 2528, !527, i64 2532, !110, i64 2536, !113, i64 2544, !527, i64 2552, !527, i64 2556, !527, i64 2560, !113, i64 2568, !527, i64 2576, !527, i64 2580, !527, i64 2584, !110, i64 2592, !111, i64 2600, !266, i64 2648, !527, i64 2656, !110, i64 2664, !110, i64 2672, !527, i64 2680, !110, i64 2688, !527, i64 2696, !527, i64 2700, !266, i64 2704, !527, i64 2712, !527, i64 2716, !527, i64 2720, !527, i64 2724, !266, i64 2728, !527, i64 2736, !111, i64 2740, !110, i64 2768, !110, i64 2776, !527, i64 2784, !527, i64 2788, !527, i64 2792, !527, i64 2796, !113, i64 2800, !113, i64 2808, !113, i64 2816, !113, i64 2824, !113, i64 2832, !113, i64 2840, !113, i64 2848, !113, i64 2856, !527, i64 2864, !527, i64 2868, !113, i64 2872, !113, i64 2880, !527, i64 2888, !266, i64 2896, !110, i64 2904, !110, i64 2912, !527, i64 2920, !527, i64 2924, !266, i64 2928, !110, i64 2936, !110, i64 2944, !527, i64 2952, !527, i64 2956, !527, i64 2960, !527, i64 2964, !110, i64 2968, !527, i64 2976, !527, i64 2980, !527, i64 2984, !110, i64 2992, !110, i64 3000, !110, i64 3008, !110, i64 3016, !266, i64 3024, !266, i64 3032, !266, i64 3040, !527, i64 3048, !527, i64 3052, !527, i64 3056, !527, i64 3060, !527, i64 3064, !527, i64 3068, !527, i64 3072, !527, i64 3076, !527, i64 3080, !527, i64 3084, !527, i64 3088, !266, i64 3096, !110, i64 3104, !110, i64 3112, !110, i64 3120, !527, i64 3128, !527, i64 3132, !527, i64 3136, !113, i64 3144, !110, i64 3152, !110, i64 3160, !110, i64 3168}
!557 = !{!"double", !111, i64 0}
!558 = !{!"malloc_stats", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32}
!559 = !{!"", !527, i64 0, !113, i64 8, !266, i64 16}
!560 = !{!"redisOpArray", !110, i64 0, !527, i64 8}
!561 = !DILocation(line: 244, column: 13, scope: !429)
!562 = !DILocation(line: 244, column: 42, scope: !429)
!563 = !DILocation(line: 245, column: 22, scope: !429)
!564 = !DILocation(line: 244, column: 13, scope: !430)
!565 = !DILocation(line: 248, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !429, file: !1, line: 246, column: 9)
!567 = !DILocation(line: 248, column: 27, scope: !428)
!568 = !{!556, !113, i64 2856}
!569 = !DILocation(line: 248, column: 20, scope: !428)
!570 = !DILocation(line: 248, column: 20, scope: !429)
!571 = !DILocation(line: 254, column: 9, scope: !367)
!572 = !DILocation(line: 255, column: 20, scope: !436)
!573 = !DILocation(line: 249, column: 42, scope: !427)
!574 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !575)
!575 = distinct !DILocation(line: 249, column: 29, scope: !427)
!576 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !575)
!577 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !575)
!578 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !575)
!579 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !575)
!580 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !575)
!581 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !575)
!582 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !575)
!583 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !575)
!584 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !575)
!585 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !575)
!586 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !575)
!587 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !575)
!588 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !575)
!589 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !575)
!590 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !575)
!591 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !575)
!592 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !575)
!593 = !DILocation(line: 0, scope: !238, inlinedAt: !575)
!594 = !DILocation(line: 249, column: 21, scope: !427)
!595 = !DILocation(line: 250, column: 32, scope: !596)
!596 = distinct !DILexicalBlock(scope: !427, file: !1, line: 250, column: 17)
!597 = !DILocation(line: 250, column: 23, scope: !596)
!598 = !DILocation(line: 250, column: 17, scope: !427)
!599 = !DILocation(line: 0, scope: !427)
!600 = !DILocation(line: 0, scope: !436)
!601 = !DILocation(line: 255, column: 41, scope: !436)
!602 = !DILocation(line: 255, column: 32, scope: !436)
!603 = !DILocation(line: 255, column: 9, scope: !367)
!604 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !465)
!605 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !465)
!606 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !465)
!607 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !465)
!608 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !465)
!609 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !465)
!610 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !465)
!611 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !465)
!612 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !465)
!613 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !465)
!614 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !465)
!615 = !DILocation(line: 259, column: 14, scope: !435)
!616 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !484)
!617 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !484)
!618 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !484)
!619 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !484)
!620 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !484)
!621 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !484)
!622 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !484)
!623 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !484)
!624 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !482)
!625 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !482)
!626 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !482)
!627 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !482)
!628 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !482)
!629 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !482)
!630 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !482)
!631 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !482)
!632 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !480)
!633 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !480)
!634 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !480)
!635 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !480)
!636 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !480)
!637 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !480)
!638 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !480)
!639 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !480)
!640 = !DILocation(line: 263, column: 22, scope: !434)
!641 = !DILocation(line: 263, column: 14, scope: !434)
!642 = !DILocation(line: 263, column: 31, scope: !439)
!643 = !DILocation(line: 263, column: 9, scope: !434)
!644 = !DILocation(line: 0, scope: !438)
!645 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !478)
!646 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !478)
!647 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !478)
!648 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !478)
!649 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !478)
!650 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !478)
!651 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !478)
!652 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !478)
!653 = !DILocation(line: 268, column: 22, scope: !435)
!654 = !DILocation(line: 268, column: 9, scope: !435)
!655 = !DILocation(line: 272, column: 5, scope: !435)
!656 = !DILocation(line: 264, column: 31, scope: !438)
!657 = !DILocation(line: 264, column: 25, scope: !438)
!658 = !DILocation(line: 264, column: 36, scope: !438)
!659 = !{!660, !110, i64 8}
!660 = !{!"redisObject", !527, i64 0, !527, i64 0, !527, i64 1, !527, i64 4, !110, i64 8}
!661 = !DILocation(line: 264, column: 17, scope: !438)
!662 = !DILocalVariable(name: "s", arg: 1, scope: !663, file: !20, line: 87, type: !668)
!663 = distinct !DISubprogram(name: "sdslen", scope: !20, file: !20, line: 87, type: !664, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !669)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !668}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !667, line: 58, baseType: !17)
!667 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!669 = !{!662, !670}
!670 = !DILocalVariable(name: "flags", scope: !663, file: !20, line: 88, type: !9)
!671 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !672)
!672 = distinct !DILocation(line: 265, column: 52, scope: !438)
!673 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !672)
!674 = !{!111, !111, i64 0}
!675 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !672)
!676 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !672)
!677 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !672)
!678 = distinct !DILexicalBlock(scope: !663, file: !20, line: 89, column: 33)
!679 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !672)
!680 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !672)
!681 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !672)
!682 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !672)
!683 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !672)
!684 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !672)
!685 = !{!686, !686, i64 0}
!686 = !{!"short", !111, i64 0}
!687 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !672)
!688 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !672)
!689 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !672)
!690 = !{!527, !527, i64 0}
!691 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !672)
!692 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !672)
!693 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !672)
!694 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !672)
!695 = !DILocation(line: 0, scope: !678, inlinedAt: !672)
!696 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !672)
!697 = !DILocation(line: 265, column: 52, scope: !438)
!698 = !DILocation(line: 265, column: 18, scope: !438)
!699 = !DILocation(line: 263, column: 45, scope: !439)
!700 = !DILocation(line: 263, column: 9, scope: !439)
!701 = distinct !{!701, !643, !702}
!702 = !DILocation(line: 266, column: 9, scope: !434)
!703 = !DILocation(line: 273, column: 9, scope: !442)
!704 = !{!526, !113, i64 32}
!705 = !DILocation(line: 274, column: 27, scope: !442)
!706 = !{!526, !110, i64 16}
!707 = !DILocation(line: 274, column: 9, scope: !442)
!708 = !DILocation(line: 206, column: 14, scope: !367)
!709 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !463)
!710 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !463)
!711 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !463)
!712 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !463)
!713 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !463)
!714 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !463)
!715 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !463)
!716 = !DILocation(line: 278, column: 9, scope: !442)
!717 = !DILocation(line: 278, column: 33, scope: !442)
!718 = !DILocation(line: 278, column: 24, scope: !442)
!719 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !720)
!720 = distinct !DILocation(line: 281, column: 25, scope: !442)
!721 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !720)
!722 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !720)
!723 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !720)
!724 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !720)
!725 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !720)
!726 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !720)
!727 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !720)
!728 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !720)
!729 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !720)
!730 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !720)
!731 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !720)
!732 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !720)
!733 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !720)
!734 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !720)
!735 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !720)
!736 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !720)
!737 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !720)
!738 = !DILocation(line: 0, scope: !238, inlinedAt: !720)
!739 = !DILocation(line: 281, column: 17, scope: !442)
!740 = !DILocation(line: 282, column: 47, scope: !442)
!741 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !476)
!742 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !476)
!743 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !476)
!744 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !476)
!745 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !476)
!746 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !476)
!747 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !476)
!748 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !476)
!749 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !476)
!750 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !476)
!751 = !DILocation(line: 283, column: 28, scope: !442)
!752 = !DILocation(line: 283, column: 18, scope: !442)
!753 = !DILocation(line: 283, column: 16, scope: !442)
!754 = !DILocation(line: 284, column: 18, scope: !442)
!755 = !DILocation(line: 284, column: 16, scope: !442)
!756 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !757)
!757 = distinct !DILocation(line: 288, column: 39, scope: !442)
!758 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !757)
!759 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !757)
!760 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !757)
!761 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !757)
!762 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !757)
!763 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !757)
!764 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !757)
!765 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !757)
!766 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !757)
!767 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !757)
!768 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !757)
!769 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !757)
!770 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !757)
!771 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !757)
!772 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !757)
!773 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !757)
!774 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !757)
!775 = !DILocation(line: 0, scope: !238, inlinedAt: !757)
!776 = !DILocation(line: 288, column: 17, scope: !442)
!777 = !DILocation(line: 289, column: 28, scope: !442)
!778 = !DILocation(line: 289, column: 18, scope: !442)
!779 = !DILocation(line: 289, column: 16, scope: !442)
!780 = !DILocation(line: 290, column: 23, scope: !447)
!781 = !DILocation(line: 290, column: 13, scope: !442)
!782 = !DILocation(line: 291, column: 21, scope: !446)
!783 = !DILocation(line: 292, column: 18, scope: !451)
!784 = !DILocation(line: 292, column: 27, scope: !450)
!785 = !DILocation(line: 292, column: 13, scope: !451)
!786 = !DILocation(line: 296, column: 42, scope: !449)
!787 = !DILocation(line: 293, column: 35, scope: !449)
!788 = !DILocation(line: 293, column: 29, scope: !449)
!789 = !DILocation(line: 293, column: 40, scope: !449)
!790 = !DILocation(line: 293, column: 21, scope: !449)
!791 = !DILocation(line: 294, column: 17, scope: !449)
!792 = !DILocation(line: 295, column: 17, scope: !449)
!793 = !DILocation(line: 295, column: 31, scope: !449)
!794 = !DILocation(line: 294, column: 25, scope: !449)
!795 = !DILocation(line: 296, column: 36, scope: !449)
!796 = !DILocation(line: 296, column: 32, scope: !449)
!797 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !798)
!798 = distinct !DILocation(line: 298, column: 21, scope: !799)
!799 = distinct !DILexicalBlock(scope: !449, file: !1, line: 298, column: 21)
!800 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !798)
!801 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !798)
!802 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !798)
!803 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !798)
!804 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !798)
!805 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !798)
!806 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !798)
!807 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !798)
!808 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !798)
!809 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !798)
!810 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !798)
!811 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !798)
!812 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !798)
!813 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !798)
!814 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !798)
!815 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !798)
!816 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !798)
!817 = !DILocation(line: 0, scope: !678, inlinedAt: !798)
!818 = !DILocation(line: 0, scope: !799)
!819 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !798)
!820 = !DILocation(line: 298, column: 46, scope: !799)
!821 = !DILocation(line: 298, column: 35, scope: !799)
!822 = !DILocation(line: 298, column: 52, scope: !799)
!823 = !DILocation(line: 299, column: 21, scope: !799)
!824 = !DILocation(line: 299, column: 43, scope: !799)
!825 = !DILocation(line: 298, column: 21, scope: !449)
!826 = !DILocation(line: 299, column: 49, scope: !799)
!827 = !DILocation(line: 301, column: 13, scope: !450)
!828 = !DILocation(line: 300, column: 36, scope: !449)
!829 = !DILocation(line: 300, column: 26, scope: !449)
!830 = !DILocation(line: 300, column: 24, scope: !449)
!831 = !DILocation(line: 292, column: 51, scope: !450)
!832 = !DILocation(line: 292, column: 13, scope: !450)
!833 = distinct !{!833, !785, !834}
!834 = !DILocation(line: 301, column: 13, scope: !451)
!835 = !DILocation(line: 304, column: 19, scope: !836)
!836 = distinct !DILexicalBlock(scope: !446, file: !1, line: 304, column: 17)
!837 = !DILocation(line: 304, column: 17, scope: !446)
!838 = !DILocation(line: 304, column: 43, scope: !836)
!839 = !DILocation(line: 305, column: 9, scope: !446)
!840 = !DILocation(line: 306, column: 5, scope: !436)
!841 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !474)
!842 = !DILocation(line: 0, scope: !442)
!843 = !DILocation(line: 0, scope: !836)
!844 = !DILocation(line: 330, column: 29, scope: !367)
!845 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !474)
!846 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !474)
!847 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !474)
!848 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !474)
!849 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !474)
!850 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !474)
!851 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !474)
!852 = !DILocation(line: 331, column: 35, scope: !367)
!853 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !472)
!854 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !472)
!855 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !472)
!856 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !472)
!857 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !472)
!858 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !472)
!859 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !472)
!860 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !472)
!861 = !DILocation(line: 332, column: 36, scope: !367)
!862 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !470)
!863 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !470)
!864 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !470)
!865 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !470)
!866 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !470)
!867 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !470)
!868 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !470)
!869 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !470)
!870 = !DILocation(line: 333, column: 17, scope: !468)
!871 = !DILocation(line: 333, column: 9, scope: !367)
!872 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !467)
!873 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !467)
!874 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !467)
!875 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !467)
!876 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !467)
!877 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !467)
!878 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !467)
!879 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !467)
!880 = !DILocation(line: 334, column: 9, scope: !468)
!881 = !DILocation(line: 0, scope: !468)
!882 = !DILocation(line: 335, column: 18, scope: !456)
!883 = !DILocation(line: 335, column: 10, scope: !456)
!884 = !DILocation(line: 335, column: 27, scope: !459)
!885 = !DILocation(line: 335, column: 5, scope: !456)
!886 = !DILocation(line: 0, scope: !458)
!887 = !DILocation(line: 342, column: 13, scope: !367)
!888 = !DILocation(line: 343, column: 14, scope: !367)
!889 = !DILocation(line: 344, column: 9, scope: !367)
!890 = !DILocation(line: 336, column: 27, scope: !458)
!891 = !DILocation(line: 336, column: 21, scope: !458)
!892 = !DILocation(line: 336, column: 32, scope: !458)
!893 = !DILocation(line: 336, column: 13, scope: !458)
!894 = !DILocation(line: 336, column: 53, scope: !458)
!895 = !DILocation(line: 336, column: 45, scope: !458)
!896 = !DILocation(line: 336, column: 58, scope: !458)
!897 = !DILocation(line: 336, column: 37, scope: !458)
!898 = !DILocation(line: 337, column: 13, scope: !458)
!899 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !900)
!900 = distinct !DILocation(line: 338, column: 52, scope: !901)
!901 = distinct !DILexicalBlock(scope: !458, file: !1, line: 337, column: 13)
!902 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !900)
!903 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !900)
!904 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !900)
!905 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !900)
!906 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !900)
!907 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !900)
!908 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !900)
!909 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !900)
!910 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !900)
!911 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !900)
!912 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !900)
!913 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !900)
!914 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !900)
!915 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !900)
!916 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !900)
!917 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !900)
!918 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !900)
!919 = !DILocation(line: 0, scope: !678, inlinedAt: !900)
!920 = !DILocation(line: 0, scope: !901)
!921 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !900)
!922 = !DILocation(line: 338, column: 52, scope: !901)
!923 = !DILocation(line: 338, column: 18, scope: !901)
!924 = !DILocation(line: 338, column: 13, scope: !901)
!925 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !926)
!926 = distinct !DILocation(line: 339, column: 48, scope: !458)
!927 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !926)
!928 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !926)
!929 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !926)
!930 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !926)
!931 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !926)
!932 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !926)
!933 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !926)
!934 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !926)
!935 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !926)
!936 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !926)
!937 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !926)
!938 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !926)
!939 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !926)
!940 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !926)
!941 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !926)
!942 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !926)
!943 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !926)
!944 = !DILocation(line: 0, scope: !678, inlinedAt: !926)
!945 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !926)
!946 = !DILocation(line: 339, column: 48, scope: !458)
!947 = !DILocation(line: 339, column: 14, scope: !458)
!948 = !DILocation(line: 335, column: 41, scope: !459)
!949 = !DILocation(line: 335, column: 5, scope: !459)
!950 = distinct !{!950, !885, !951}
!951 = !DILocation(line: 340, column: 5, scope: !456)
!952 = !DILocation(line: 347, column: 30, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 344, column: 49)
!954 = distinct !DILexicalBlock(scope: !367, file: !1, line: 344, column: 9)
!955 = !DILocation(line: 347, column: 18, scope: !953)
!956 = !DILocation(line: 348, column: 5, scope: !953)
!957 = !DILocation(line: 0, scope: !953)
!958 = !DILocation(line: 87, column: 47, scope: !193, inlinedAt: !486)
!959 = !DILocation(line: 87, column: 59, scope: !193, inlinedAt: !486)
!960 = !DILocation(line: 88, column: 5, scope: !193, inlinedAt: !486)
!961 = !DILocation(line: 89, column: 16, scope: !193, inlinedAt: !486)
!962 = !DILocation(line: 89, column: 9, scope: !193, inlinedAt: !486)
!963 = !DILocation(line: 90, column: 12, scope: !193, inlinedAt: !486)
!964 = !DILocation(line: 91, column: 1, scope: !193, inlinedAt: !486)
!965 = !DILocation(line: 90, column: 5, scope: !193, inlinedAt: !486)
!966 = !DILocation(line: 352, column: 12, scope: !967)
!967 = distinct !DILexicalBlock(scope: !367, file: !1, line: 352, column: 9)
!968 = !DILocation(line: 352, column: 17, scope: !967)
!969 = !DILocation(line: 352, column: 9, scope: !367)
!970 = !DILocation(line: 353, column: 22, scope: !967)
!971 = !DILocation(line: 353, column: 9, scope: !967)
!972 = !DILocation(line: 354, column: 8, scope: !367)
!973 = !DILocation(line: 354, column: 14, scope: !367)
!974 = !{!109, !113, i64 8}
!975 = !DILocation(line: 355, column: 18, scope: !367)
!976 = !DILocation(line: 356, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !367, file: !1, line: 356, column: 9)
!978 = !DILocation(line: 356, column: 9, scope: !367)
!979 = !DILocation(line: 356, column: 31, scope: !977)
!980 = !DILocation(line: 356, column: 19, scope: !977)
!981 = !DILocation(line: 358, column: 1, scope: !367)
!982 = distinct !DISubprogram(name: "streamTrimByLength", scope: !1, file: !1, line: 374, type: !983, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{!196, !69, !13, !12}
!985 = !{!986, !987, !988, !989, !990, !991, !993, !994, !995, !996, !997, !998, !1000, !1002}
!986 = !DILocalVariable(name: "s", arg: 1, scope: !982, file: !1, line: 374, type: !69)
!987 = !DILocalVariable(name: "maxlen", arg: 2, scope: !982, file: !1, line: 374, type: !13)
!988 = !DILocalVariable(name: "approx", arg: 3, scope: !982, file: !1, line: 374, type: !12)
!989 = !DILocalVariable(name: "ri", scope: !982, file: !1, line: 377, type: !388)
!990 = !DILocalVariable(name: "deleted", scope: !982, file: !1, line: 381, type: !196)
!991 = !DILocalVariable(name: "lp", scope: !992, file: !1, line: 383, type: !8)
!992 = distinct !DILexicalBlock(scope: !982, file: !1, line: 382, column: 47)
!993 = !DILocalVariable(name: "p", scope: !992, file: !1, line: 383, type: !8)
!994 = !DILocalVariable(name: "entries", scope: !992, file: !1, line: 384, type: !196)
!995 = !DILocalVariable(name: "to_delete", scope: !992, file: !1, line: 403, type: !196)
!996 = !DILocalVariable(name: "marked_deleted", scope: !992, file: !1, line: 407, type: !196)
!997 = !DILocalVariable(name: "master_fields_count", scope: !992, file: !1, line: 412, type: !196)
!998 = !DILocalVariable(name: "j", scope: !999, file: !1, line: 414, type: !196)
!999 = distinct !DILexicalBlock(scope: !992, file: !1, line: 414, column: 9)
!1000 = !DILocalVariable(name: "flags", scope: !1001, file: !1, line: 422, type: !12)
!1001 = distinct !DILexicalBlock(scope: !992, file: !1, line: 421, column: 18)
!1002 = !DILocalVariable(name: "to_skip", scope: !1001, file: !1, line: 423, type: !12)
!1003 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 428, column: 22, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 426, column: 54)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 426, column: 17)
!1007 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 408, column: 14, scope: !992)
!1009 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 405, column: 14, scope: !992)
!1011 = !DILocation(line: 374, column: 36, scope: !982)
!1012 = !DILocation(line: 374, column: 46, scope: !982)
!1013 = !DILocation(line: 374, column: 58, scope: !982)
!1014 = !DILocation(line: 375, column: 12, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !982, file: !1, line: 375, column: 9)
!1016 = !DILocation(line: 375, column: 19, scope: !1015)
!1017 = !DILocation(line: 375, column: 9, scope: !982)
!1018 = !DILocation(line: 377, column: 5, scope: !982)
!1019 = !DILocation(line: 378, column: 21, scope: !982)
!1020 = !DILocation(line: 377, column: 17, scope: !982)
!1021 = !DILocation(line: 378, column: 5, scope: !982)
!1022 = !DILocation(line: 379, column: 5, scope: !982)
!1023 = !DILocation(line: 381, column: 13, scope: !982)
!1024 = !DILocation(line: 382, column: 5, scope: !982)
!1025 = !DILocation(line: 382, column: 14, scope: !982)
!1026 = !DILocation(line: 382, column: 21, scope: !982)
!1027 = !DILocation(line: 382, column: 30, scope: !982)
!1028 = !DILocation(line: 382, column: 33, scope: !982)
!1029 = !DILocation(line: 383, column: 32, scope: !992)
!1030 = !DILocation(line: 383, column: 24, scope: !992)
!1031 = !DILocation(line: 383, column: 9, scope: !992)
!1032 = !DILocation(line: 383, column: 43, scope: !992)
!1033 = !DILocation(line: 383, column: 39, scope: !992)
!1034 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 384, column: 27, scope: !992)
!1036 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1035)
!1037 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1035)
!1038 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1035)
!1039 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1035)
!1040 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1035)
!1041 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1035)
!1042 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1035)
!1043 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1035)
!1044 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1035)
!1045 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1035)
!1046 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1035)
!1047 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1035)
!1048 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1035)
!1049 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1035)
!1050 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1035)
!1051 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1035)
!1052 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1035)
!1053 = !DILocation(line: 0, scope: !238, inlinedAt: !1035)
!1054 = !DILocation(line: 384, column: 17, scope: !992)
!1055 = !DILocation(line: 388, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !992, file: !1, line: 388, column: 13)
!1057 = !DILocation(line: 388, column: 23, scope: !1056)
!1058 = !DILocation(line: 388, column: 33, scope: !1056)
!1059 = !DILocation(line: 388, column: 13, scope: !992)
!1060 = !DILocation(line: 399, column: 13, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !992, file: !1, line: 399, column: 13)
!1062 = !DILocation(line: 399, column: 13, scope: !992)
!1063 = !DILocation(line: 403, column: 39, scope: !992)
!1064 = !DILocation(line: 403, column: 17, scope: !992)
!1065 = !DILocation(line: 404, column: 9, scope: !992)
!1066 = !DILocation(line: 405, column: 44, scope: !992)
!1067 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1010)
!1068 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1010)
!1069 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1010)
!1070 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1010)
!1071 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1010)
!1072 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1010)
!1073 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1010)
!1074 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1010)
!1075 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1010)
!1076 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1010)
!1077 = !DILocation(line: 406, column: 23, scope: !992)
!1078 = !DILocation(line: 406, column: 13, scope: !992)
!1079 = !DILocation(line: 406, column: 11, scope: !992)
!1080 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 407, column: 34, scope: !992)
!1082 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1081)
!1083 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1081)
!1084 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1081)
!1085 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1081)
!1086 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1081)
!1087 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1081)
!1088 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1081)
!1089 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1081)
!1090 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1081)
!1091 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1081)
!1092 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1081)
!1093 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1081)
!1094 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1081)
!1095 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1081)
!1096 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1081)
!1097 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1081)
!1098 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1081)
!1099 = !DILocation(line: 0, scope: !238, inlinedAt: !1081)
!1100 = !DILocation(line: 407, column: 17, scope: !992)
!1101 = !DILocation(line: 408, column: 51, scope: !992)
!1102 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1008)
!1103 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1008)
!1104 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1008)
!1105 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1008)
!1106 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1008)
!1107 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1008)
!1108 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1008)
!1109 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1008)
!1110 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1008)
!1111 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1008)
!1112 = !DILocation(line: 409, column: 23, scope: !992)
!1113 = !DILocation(line: 409, column: 13, scope: !992)
!1114 = !DILocation(line: 409, column: 11, scope: !992)
!1115 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 412, column: 39, scope: !992)
!1117 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1116)
!1118 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1116)
!1119 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1116)
!1120 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1116)
!1121 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1116)
!1122 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1116)
!1123 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1116)
!1124 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1116)
!1125 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1116)
!1126 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1116)
!1127 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1116)
!1128 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1116)
!1129 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1116)
!1130 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1116)
!1131 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1116)
!1132 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1116)
!1133 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1116)
!1134 = !DILocation(line: 0, scope: !238, inlinedAt: !1116)
!1135 = !DILocation(line: 412, column: 17, scope: !992)
!1136 = !DILocation(line: 413, column: 23, scope: !992)
!1137 = !DILocation(line: 413, column: 13, scope: !992)
!1138 = !DILocation(line: 413, column: 11, scope: !992)
!1139 = !DILocation(line: 414, column: 22, scope: !999)
!1140 = !DILocation(line: 414, column: 14, scope: !999)
!1141 = !DILocation(line: 414, column: 31, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !999, file: !1, line: 414, column: 9)
!1143 = !DILocation(line: 414, column: 9, scope: !999)
!1144 = !DILocation(line: 0, scope: !992)
!1145 = !DILocation(line: 421, column: 9, scope: !992)
!1146 = !DILocation(line: 422, column: 38, scope: !1001)
!1147 = !DILocation(line: 414, column: 55, scope: !1142)
!1148 = !DILocation(line: 414, column: 9, scope: !1142)
!1149 = distinct !{!1149, !1143, !1150}
!1150 = !DILocation(line: 415, column: 28, scope: !999)
!1151 = !DILocation(line: 408, column: 12, scope: !992)
!1152 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 422, column: 25, scope: !1001)
!1154 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1153)
!1155 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1153)
!1156 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1153)
!1157 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1153)
!1158 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1153)
!1159 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1153)
!1160 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1153)
!1161 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1153)
!1162 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1153)
!1163 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1153)
!1164 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1153)
!1165 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1153)
!1166 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1153)
!1167 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1153)
!1168 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1153)
!1169 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1153)
!1170 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1153)
!1171 = !DILocation(line: 0, scope: !238, inlinedAt: !1153)
!1172 = !DILocation(line: 422, column: 25, scope: !1001)
!1173 = !DILocation(line: 422, column: 17, scope: !1001)
!1174 = !DILocation(line: 426, column: 25, scope: !1006)
!1175 = !DILocation(line: 426, column: 17, scope: !1001)
!1176 = !DILocation(line: 427, column: 23, scope: !1005)
!1177 = !DILocation(line: 428, column: 45, scope: !1005)
!1178 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1004)
!1179 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1004)
!1180 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1004)
!1181 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1004)
!1182 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1004)
!1183 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1004)
!1184 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1004)
!1185 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1004)
!1186 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1004)
!1187 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1004)
!1188 = !DILocation(line: 429, column: 24, scope: !1005)
!1189 = !DILocation(line: 430, column: 26, scope: !1005)
!1190 = !DILocation(line: 431, column: 31, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 431, column: 21)
!1192 = !DILocation(line: 431, column: 21, scope: !1005)
!1193 = !DILocation(line: 431, column: 42, scope: !1191)
!1194 = !DILocation(line: 0, scope: !1005)
!1195 = !DILocation(line: 434, column: 27, scope: !1001)
!1196 = !DILocation(line: 434, column: 17, scope: !1001)
!1197 = !DILocation(line: 434, column: 15, scope: !1001)
!1198 = !DILocation(line: 435, column: 17, scope: !1001)
!1199 = !DILocation(line: 435, column: 15, scope: !1001)
!1200 = !DILocation(line: 436, column: 17, scope: !1001)
!1201 = !DILocation(line: 436, column: 15, scope: !1001)
!1202 = !DILocation(line: 437, column: 23, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 437, column: 17)
!1204 = !DILocation(line: 437, column: 17, scope: !1001)
!1205 = !DILocation(line: 423, column: 17, scope: !1001)
!1206 = !DILocation(line: 439, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 437, column: 54)
!1208 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 440, column: 27, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 439, column: 20)
!1211 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1209)
!1212 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1209)
!1213 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1209)
!1214 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1209)
!1215 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1209)
!1216 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1209)
!1217 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1209)
!1218 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1209)
!1219 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1209)
!1220 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1209)
!1221 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1209)
!1222 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1209)
!1223 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1209)
!1224 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1209)
!1225 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1209)
!1226 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1209)
!1227 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1209)
!1228 = !DILocation(line: 0, scope: !238, inlinedAt: !1209)
!1229 = !DILocation(line: 440, column: 27, scope: !1210)
!1230 = !DILocation(line: 441, column: 37, scope: !1210)
!1231 = !DILocation(line: 441, column: 28, scope: !1210)
!1232 = !DILocation(line: 0, scope: !1001)
!1233 = !DILocation(line: 0, scope: !1210)
!1234 = !DILocation(line: 444, column: 13, scope: !1001)
!1235 = !DILocation(line: 444, column: 26, scope: !1001)
!1236 = distinct !{!1236, !1234, !1237}
!1237 = !DILocation(line: 444, column: 45, scope: !1001)
!1238 = !DILocation(line: 446, column: 9, scope: !992)
!1239 = distinct !{!1239, !1145, !1238}
!1240 = !DILocation(line: 457, column: 22, scope: !992)
!1241 = !DILocation(line: 457, column: 29, scope: !992)
!1242 = !DILocation(line: 457, column: 36, scope: !992)
!1243 = !DILocation(line: 457, column: 9, scope: !992)
!1244 = !DILocation(line: 461, column: 5, scope: !982)
!1245 = !DILocation(line: 389, column: 13, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 388, column: 44)
!1247 = !DILocation(line: 390, column: 26, scope: !1246)
!1248 = !DILocation(line: 390, column: 33, scope: !1246)
!1249 = !DILocation(line: 390, column: 40, scope: !1246)
!1250 = !DILocation(line: 390, column: 13, scope: !1246)
!1251 = !DILocation(line: 391, column: 33, scope: !1246)
!1252 = !DILocation(line: 391, column: 40, scope: !1246)
!1253 = !DILocation(line: 391, column: 13, scope: !1246)
!1254 = !DILocation(line: 392, column: 23, scope: !1246)
!1255 = !DILocation(line: 393, column: 21, scope: !1246)
!1256 = !DILocation(line: 394, column: 13, scope: !1246)
!1257 = !DILocation(line: 0, scope: !982)
!1258 = !DILocation(line: 463, column: 5, scope: !982)
!1259 = !DILocation(line: 465, column: 1, scope: !982)
!1260 = distinct !DISubprogram(name: "streamIteratorStart", scope: !1, file: !1, line: 488, type: !1261, isLocal: false, isDefinition: true, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1282)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1263, !69, !167, !167, !12}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamIterator", file: !71, line: 48, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamIterator", file: !71, line: 29, size: 5120, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1265, file: !71, line: 30, baseType: !69, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "master_id", scope: !1265, file: !71, line: 31, baseType: !95, size: 128, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_count", scope: !1265, file: !71, line: 32, baseType: !57, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_start", scope: !1265, file: !71, line: 33, baseType: !8, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "master_fields_ptr", scope: !1265, file: !71, line: 34, baseType: !8, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "entry_flags", scope: !1265, file: !71, line: 35, baseType: !12, size: 32, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1265, file: !71, line: 36, baseType: !12, size: 32, offset: 416)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_key", scope: !1265, file: !71, line: 37, baseType: !305, size: 128, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "end_key", scope: !1265, file: !71, line: 38, baseType: !305, size: 128, offset: 576)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !1265, file: !71, line: 39, baseType: !388, size: 3840, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !1265, file: !71, line: 40, baseType: !8, size: 64, offset: 4544)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lp_ele", scope: !1265, file: !71, line: 41, baseType: !8, size: 64, offset: 4608)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lp_flags", scope: !1265, file: !71, line: 42, baseType: !8, size: 64, offset: 4672)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "field_buf", scope: !1265, file: !71, line: 46, baseType: !278, size: 168, offset: 4736)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "value_buf", scope: !1265, file: !71, line: 47, baseType: !278, size: 168, offset: 4904)
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DILocalVariable(name: "si", arg: 1, scope: !1260, file: !1, line: 488, type: !1263)
!1284 = !DILocalVariable(name: "s", arg: 2, scope: !1260, file: !1, line: 488, type: !69)
!1285 = !DILocalVariable(name: "start", arg: 3, scope: !1260, file: !1, line: 488, type: !167)
!1286 = !DILocalVariable(name: "end", arg: 4, scope: !1260, file: !1, line: 488, type: !167)
!1287 = !DILocalVariable(name: "rev", arg: 5, scope: !1260, file: !1, line: 488, type: !12)
!1288 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 499, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 498, column: 14)
!1291 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 498, column: 9)
!1292 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 492, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 491, column: 16)
!1295 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 491, column: 9)
!1296 = !DILocation(line: 488, column: 42, scope: !1260)
!1297 = !DILocation(line: 488, column: 54, scope: !1260)
!1298 = !DILocation(line: 488, column: 67, scope: !1260)
!1299 = !DILocation(line: 488, column: 84, scope: !1260)
!1300 = !DILocation(line: 488, column: 93, scope: !1260)
!1301 = !DILocation(line: 491, column: 9, scope: !1295)
!1302 = !DILocation(line: 0, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 493, column: 12)
!1304 = !DILocation(line: 491, column: 9, scope: !1260)
!1305 = !DILocation(line: 492, column: 24, scope: !1294)
!1306 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1293)
!1307 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1293)
!1308 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1293)
!1309 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1293)
!1310 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1293)
!1311 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1293)
!1312 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1293)
!1313 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1293)
!1314 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1293)
!1315 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1293)
!1316 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1293)
!1317 = !DILocation(line: 493, column: 5, scope: !1294)
!1318 = !DILocation(line: 494, column: 26, scope: !1303)
!1319 = !DILocation(line: 498, column: 9, scope: !1291)
!1320 = !DILocation(line: 0, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 500, column: 12)
!1322 = !DILocation(line: 498, column: 9, scope: !1260)
!1323 = !DILocation(line: 499, column: 24, scope: !1290)
!1324 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1289)
!1325 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1289)
!1326 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1289)
!1327 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1289)
!1328 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !1289)
!1329 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1289)
!1330 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1289)
!1331 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !1289)
!1332 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1289)
!1333 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1289)
!1334 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1289)
!1335 = !DILocation(line: 500, column: 5, scope: !1290)
!1336 = !DILocation(line: 501, column: 24, scope: !1321)
!1337 = !DILocation(line: 506, column: 19, scope: !1260)
!1338 = !DILocation(line: 506, column: 25, scope: !1260)
!1339 = !DILocation(line: 506, column: 5, scope: !1260)
!1340 = !DILocation(line: 507, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 507, column: 9)
!1342 = !DILocation(line: 507, column: 9, scope: !1260)
!1343 = !DILocation(line: 0, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 516, column: 13)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 515, column: 12)
!1346 = !DILocation(line: 508, column: 19, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 508, column: 13)
!1348 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 507, column: 15)
!1349 = !DILocation(line: 508, column: 30, scope: !1347)
!1350 = !DILocation(line: 508, column: 23, scope: !1347)
!1351 = !DILocation(line: 508, column: 33, scope: !1347)
!1352 = !DILocation(line: 508, column: 43, scope: !1347)
!1353 = !DILocation(line: 508, column: 36, scope: !1347)
!1354 = !DILocation(line: 508, column: 13, scope: !1348)
!1355 = !DILocation(line: 509, column: 34, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 508, column: 49)
!1357 = !DILocation(line: 509, column: 13, scope: !1356)
!1358 = !DILocation(line: 511, column: 17, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 511, column: 17)
!1360 = !DILocation(line: 511, column: 17, scope: !1356)
!1361 = !DILocation(line: 511, column: 34, scope: !1359)
!1362 = !DILocation(line: 513, column: 13, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1347, file: !1, line: 512, column: 16)
!1364 = !DILocation(line: 516, column: 17, scope: !1344)
!1365 = !DILocation(line: 516, column: 26, scope: !1344)
!1366 = !DILocation(line: 516, column: 21, scope: !1344)
!1367 = !DILocation(line: 516, column: 29, scope: !1344)
!1368 = !DILocation(line: 516, column: 37, scope: !1344)
!1369 = !DILocation(line: 516, column: 32, scope: !1344)
!1370 = !DILocation(line: 516, column: 13, scope: !1345)
!1371 = !DILocation(line: 517, column: 34, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 516, column: 43)
!1373 = !DILocation(line: 517, column: 13, scope: !1372)
!1374 = !DILocation(line: 519, column: 17, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 519, column: 17)
!1376 = !DILocation(line: 519, column: 17, scope: !1372)
!1377 = !DILocation(line: 519, column: 34, scope: !1375)
!1378 = !DILocation(line: 521, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 520, column: 16)
!1380 = !DILocation(line: 524, column: 9, scope: !1260)
!1381 = !DILocation(line: 524, column: 16, scope: !1260)
!1382 = !{!1383, !110, i64 0}
!1383 = !{!"streamIterator", !110, i64 0, !114, i64 8, !113, i64 24, !110, i64 32, !110, i64 40, !527, i64 48, !527, i64 52, !111, i64 56, !111, i64 72, !526, i64 88, !110, i64 568, !110, i64 576, !110, i64 584, !111, i64 592, !111, i64 613}
!1384 = !DILocation(line: 525, column: 9, scope: !1260)
!1385 = !DILocation(line: 525, column: 12, scope: !1260)
!1386 = !DILocation(line: 527, column: 9, scope: !1260)
!1387 = !DILocation(line: 527, column: 13, scope: !1260)
!1388 = !{!1383, !527, i64 52}
!1389 = !DILocation(line: 528, column: 1, scope: !1260)
!1390 = distinct !DISubprogram(name: "streamIteratorGetID", scope: !1, file: !1, line: 533, type: !1391, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1394)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!12, !1263, !167, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1394 = !{!1395, !1396, !1397, !1398, !1405, !1408, !1412, !1413, !1417, !1420, !1422}
!1395 = !DILocalVariable(name: "si", arg: 1, scope: !1390, file: !1, line: 533, type: !1263)
!1396 = !DILocalVariable(name: "id", arg: 2, scope: !1390, file: !1, line: 533, type: !167)
!1397 = !DILocalVariable(name: "numfields", arg: 3, scope: !1390, file: !1, line: 533, type: !1393)
!1398 = !DILocalVariable(name: "i", scope: !1399, file: !1, line: 558, type: !57)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 558, column: 17)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 555, column: 27)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 555, column: 17)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 538, column: 51)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 538, column: 13)
!1404 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 534, column: 14)
!1405 = !DILocalVariable(name: "lp_count", scope: !1406, file: !1, line: 571, type: !12)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !1, line: 566, column: 29)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 566, column: 20)
!1408 = !DILocalVariable(name: "lp_count", scope: !1409, file: !1, line: 590, type: !196)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 586, column: 20)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 580, column: 17)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 579, column: 18)
!1412 = !DILocalVariable(name: "flags", scope: !1411, file: !1, line: 601, type: !12)
!1413 = !DILocalVariable(name: "buf", scope: !1411, file: !1, line: 611, type: !1414)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 16)
!1417 = !DILocalVariable(name: "to_discard", scope: !1418, file: !1, line: 653, type: !196)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 652, column: 27)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 652, column: 17)
!1420 = !DILocalVariable(name: "i", scope: !1421, file: !1, line: 655, type: !196)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !1, line: 655, column: 17)
!1422 = !DILocalVariable(name: "prev_times", scope: !1423, file: !1, line: 658, type: !196)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 657, column: 20)
!1424 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 612, column: 13, scope: !1411)
!1426 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 543, column: 13, scope: !1402)
!1428 = !DILocation(line: 533, column: 41, scope: !1390)
!1429 = !DILocation(line: 533, column: 55, scope: !1390)
!1430 = !DILocation(line: 533, column: 68, scope: !1390)
!1431 = !DILocation(line: 534, column: 5, scope: !1390)
!1432 = !DILocation(line: 538, column: 17, scope: !1403)
!1433 = !{!1383, !110, i64 568}
!1434 = !DILocation(line: 538, column: 20, scope: !1403)
!1435 = !DILocation(line: 538, column: 28, scope: !1403)
!1436 = !DILocation(line: 538, column: 35, scope: !1403)
!1437 = !{!1383, !110, i64 576}
!1438 = !DILocation(line: 538, column: 42, scope: !1403)
!1439 = !DILocation(line: 538, column: 13, scope: !1404)
!1440 = !DILocation(line: 539, column: 22, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 539, column: 17)
!1442 = !DILocation(line: 539, column: 18, scope: !1441)
!1443 = !DILocation(line: 539, column: 26, scope: !1441)
!1444 = !DILocation(line: 540, column: 30, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 540, column: 22)
!1446 = !DILocation(line: 539, column: 30, scope: !1441)
!1447 = !DILocation(line: 539, column: 17, scope: !1402)
!1448 = !DILocation(line: 540, column: 26, scope: !1445)
!1449 = !DILocation(line: 540, column: 22, scope: !1445)
!1450 = !DILocation(line: 540, column: 34, scope: !1445)
!1451 = !DILocation(line: 540, column: 22, scope: !1441)
!1452 = !DILocation(line: 541, column: 13, scope: !1402)
!1453 = !{!1383, !113, i64 120}
!1454 = !DILocation(line: 543, column: 35, scope: !1402)
!1455 = !{!1383, !110, i64 104}
!1456 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1427)
!1457 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1427)
!1458 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1427)
!1459 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1427)
!1460 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1427)
!1461 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1427)
!1462 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1427)
!1463 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1427)
!1464 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1427)
!1465 = !DILocation(line: 545, column: 29, scope: !1402)
!1466 = !{!1383, !110, i64 112}
!1467 = !DILocation(line: 545, column: 20, scope: !1402)
!1468 = !DILocation(line: 546, column: 26, scope: !1402)
!1469 = !DILocation(line: 546, column: 24, scope: !1402)
!1470 = !DILocation(line: 547, column: 37, scope: !1402)
!1471 = !DILocation(line: 547, column: 26, scope: !1402)
!1472 = !DILocation(line: 547, column: 24, scope: !1402)
!1473 = !DILocation(line: 548, column: 37, scope: !1402)
!1474 = !DILocation(line: 548, column: 26, scope: !1402)
!1475 = !DILocation(line: 548, column: 24, scope: !1402)
!1476 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 549, column: 39, scope: !1402)
!1478 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1477)
!1479 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1477)
!1480 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1477)
!1481 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1477)
!1482 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1477)
!1483 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1477)
!1484 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1477)
!1485 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1477)
!1486 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1477)
!1487 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1477)
!1488 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1477)
!1489 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1477)
!1490 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1477)
!1491 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1477)
!1492 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1477)
!1493 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1477)
!1494 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1477)
!1495 = !DILocation(line: 0, scope: !238, inlinedAt: !1477)
!1496 = !DILocation(line: 549, column: 37, scope: !1402)
!1497 = !{!1383, !113, i64 24}
!1498 = !DILocation(line: 550, column: 37, scope: !1402)
!1499 = !DILocation(line: 550, column: 44, scope: !1402)
!1500 = !DILocation(line: 550, column: 26, scope: !1402)
!1501 = !DILocation(line: 550, column: 24, scope: !1402)
!1502 = !DILocation(line: 551, column: 37, scope: !1402)
!1503 = !{!1383, !110, i64 32}
!1504 = !DILocation(line: 555, column: 22, scope: !1401)
!1505 = !DILocation(line: 555, column: 18, scope: !1401)
!1506 = !DILocation(line: 555, column: 17, scope: !1402)
!1507 = !DILocation(line: 558, column: 31, scope: !1399)
!1508 = !DILocation(line: 558, column: 22, scope: !1399)
!1509 = !DILocation(line: 558, column: 46, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 558, column: 17)
!1511 = !DILocation(line: 558, column: 40, scope: !1510)
!1512 = !DILocation(line: 558, column: 17, scope: !1399)
!1513 = !DILocation(line: 559, column: 52, scope: !1510)
!1514 = !DILocation(line: 559, column: 45, scope: !1510)
!1515 = !DILocation(line: 559, column: 34, scope: !1510)
!1516 = !DILocation(line: 559, column: 32, scope: !1510)
!1517 = !DILocation(line: 558, column: 68, scope: !1510)
!1518 = !DILocation(line: 558, column: 17, scope: !1510)
!1519 = distinct !{!1519, !1512, !1520}
!1520 = !DILocation(line: 559, column: 58, scope: !1399)
!1521 = !DILocation(line: 564, column: 41, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 560, column: 20)
!1523 = !DILocation(line: 564, column: 30, scope: !1522)
!1524 = !DILocation(line: 564, column: 28, scope: !1522)
!1525 = !DILocation(line: 566, column: 24, scope: !1407)
!1526 = !DILocation(line: 566, column: 20, scope: !1407)
!1527 = !DILocation(line: 566, column: 20, scope: !1403)
!1528 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 571, column: 28, scope: !1406)
!1530 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1529)
!1531 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1529)
!1532 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1529)
!1533 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1529)
!1534 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1529)
!1535 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1529)
!1536 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1529)
!1537 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1529)
!1538 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1529)
!1539 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1529)
!1540 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1529)
!1541 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1529)
!1542 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1529)
!1543 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1529)
!1544 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1529)
!1545 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1529)
!1546 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1529)
!1547 = !DILocation(line: 0, scope: !238, inlinedAt: !1529)
!1548 = !DILocation(line: 571, column: 28, scope: !1406)
!1549 = !DILocation(line: 571, column: 17, scope: !1406)
!1550 = !DILocation(line: 572, column: 13, scope: !1406)
!1551 = !DILocation(line: 0, scope: !1406)
!1552 = !DILocation(line: 572, column: 27, scope: !1406)
!1553 = distinct !{!1553, !1550, !1554}
!1554 = !DILocation(line: 572, column: 68, scope: !1406)
!1555 = !DILocation(line: 579, column: 9, scope: !1404)
!1556 = !DILocation(line: 580, column: 22, scope: !1410)
!1557 = !DILocation(line: 580, column: 18, scope: !1410)
!1558 = !DILocation(line: 580, column: 17, scope: !1411)
!1559 = !DILocation(line: 584, column: 41, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 580, column: 27)
!1561 = !DILocation(line: 584, column: 48, scope: !1560)
!1562 = !DILocation(line: 584, column: 30, scope: !1560)
!1563 = !DILocation(line: 584, column: 28, scope: !1560)
!1564 = !DILocation(line: 585, column: 32, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 585, column: 21)
!1566 = !DILocation(line: 585, column: 21, scope: !1560)
!1567 = !DILocation(line: 590, column: 53, scope: !1409)
!1568 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 590, column: 36, scope: !1409)
!1570 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1569)
!1571 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1569)
!1572 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1569)
!1573 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1569)
!1574 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1569)
!1575 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1569)
!1576 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1569)
!1577 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1569)
!1578 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1569)
!1579 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1569)
!1580 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1569)
!1581 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1569)
!1582 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1569)
!1583 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1569)
!1584 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1569)
!1585 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1569)
!1586 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1569)
!1587 = !DILocation(line: 0, scope: !238, inlinedAt: !1569)
!1588 = !DILocation(line: 590, column: 25, scope: !1409)
!1589 = !DILocation(line: 591, column: 30, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 591, column: 21)
!1591 = !DILocation(line: 591, column: 21, scope: !1409)
!1592 = !DILocation(line: 596, column: 17, scope: !1409)
!1593 = !DILocation(line: 596, column: 66, scope: !1409)
!1594 = !DILocation(line: 592, column: 28, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 591, column: 36)
!1596 = !DILocation(line: 594, column: 21, scope: !1595)
!1597 = !DILocation(line: 596, column: 31, scope: !1409)
!1598 = !DILocation(line: 596, column: 59, scope: !1409)
!1599 = !DILocation(line: 596, column: 48, scope: !1409)
!1600 = !DILocation(line: 596, column: 46, scope: !1409)
!1601 = distinct !{!1601, !1592, !1602}
!1602 = !DILocation(line: 596, column: 72, scope: !1409)
!1603 = !DILocation(line: 597, column: 13, scope: !1410)
!1604 = !DILocation(line: 600, column: 32, scope: !1411)
!1605 = !DILocation(line: 600, column: 26, scope: !1411)
!1606 = !{!1383, !110, i64 584}
!1607 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 601, column: 25, scope: !1411)
!1609 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1608)
!1610 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1608)
!1611 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1608)
!1612 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1608)
!1613 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1608)
!1614 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1608)
!1615 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1608)
!1616 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1608)
!1617 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1608)
!1618 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1608)
!1619 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1608)
!1620 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1608)
!1621 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1608)
!1622 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1608)
!1623 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1608)
!1624 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1608)
!1625 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1608)
!1626 = !DILocation(line: 0, scope: !238, inlinedAt: !1608)
!1627 = !DILocation(line: 601, column: 25, scope: !1411)
!1628 = !DILocation(line: 601, column: 17, scope: !1411)
!1629 = !DILocation(line: 602, column: 37, scope: !1411)
!1630 = !DILocation(line: 602, column: 44, scope: !1411)
!1631 = !DILocation(line: 602, column: 26, scope: !1411)
!1632 = !DILocation(line: 602, column: 24, scope: !1411)
!1633 = !DILocation(line: 606, column: 23, scope: !1411)
!1634 = !{i64 0, i64 8, !117, i64 8, i64 8, !117}
!1635 = !DILocation(line: 607, column: 40, scope: !1411)
!1636 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 607, column: 23, scope: !1411)
!1638 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1637)
!1639 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1637)
!1640 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1637)
!1641 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1637)
!1642 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1637)
!1643 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1637)
!1644 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1637)
!1645 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1637)
!1646 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1637)
!1647 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1637)
!1648 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1637)
!1649 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1637)
!1650 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1637)
!1651 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1637)
!1652 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1637)
!1653 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1637)
!1654 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1637)
!1655 = !DILocation(line: 0, scope: !238, inlinedAt: !1637)
!1656 = !DILocation(line: 607, column: 20, scope: !1411)
!1657 = !DILocation(line: 608, column: 37, scope: !1411)
!1658 = !DILocation(line: 608, column: 44, scope: !1411)
!1659 = !DILocation(line: 608, column: 26, scope: !1411)
!1660 = !DILocation(line: 608, column: 24, scope: !1411)
!1661 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 609, column: 24, scope: !1411)
!1663 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1662)
!1664 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1662)
!1665 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1662)
!1666 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1662)
!1667 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1662)
!1668 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1662)
!1669 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1662)
!1670 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1662)
!1671 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1662)
!1672 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1662)
!1673 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1662)
!1674 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1662)
!1675 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1662)
!1676 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1662)
!1677 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1662)
!1678 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1662)
!1679 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1662)
!1680 = !DILocation(line: 0, scope: !238, inlinedAt: !1662)
!1681 = !DILocation(line: 609, column: 21, scope: !1411)
!1682 = !DILocation(line: 610, column: 37, scope: !1411)
!1683 = !DILocation(line: 610, column: 44, scope: !1411)
!1684 = !DILocation(line: 610, column: 26, scope: !1411)
!1685 = !DILocation(line: 610, column: 24, scope: !1411)
!1686 = !DILocation(line: 611, column: 13, scope: !1411)
!1687 = !DILocation(line: 611, column: 27, scope: !1411)
!1688 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !1425)
!1689 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !1425)
!1690 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !1425)
!1691 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !1425)
!1692 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !1425)
!1693 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !1425)
!1694 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !1425)
!1695 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !1425)
!1696 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !1425)
!1697 = !DILocation(line: 616, column: 23, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 616, column: 17)
!1699 = !DILocation(line: 616, column: 17, scope: !1411)
!1700 = !DILocation(line: 617, column: 34, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !1, line: 616, column: 54)
!1702 = !DILocation(line: 617, column: 28, scope: !1701)
!1703 = !DILocation(line: 618, column: 13, scope: !1701)
!1704 = !DILocation(line: 619, column: 47, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !1, line: 618, column: 20)
!1706 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 619, column: 30, scope: !1705)
!1708 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1707)
!1709 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1707)
!1710 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1707)
!1711 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1707)
!1712 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1707)
!1713 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1707)
!1714 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1707)
!1715 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1707)
!1716 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1707)
!1717 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1707)
!1718 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1707)
!1719 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1707)
!1720 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1707)
!1721 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1707)
!1722 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1707)
!1723 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1707)
!1724 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1707)
!1725 = !DILocation(line: 0, scope: !238, inlinedAt: !1707)
!1726 = !DILocation(line: 619, column: 28, scope: !1705)
!1727 = !DILocation(line: 620, column: 41, scope: !1705)
!1728 = !DILocation(line: 620, column: 48, scope: !1705)
!1729 = !DILocation(line: 620, column: 30, scope: !1705)
!1730 = !DILocation(line: 620, column: 28, scope: !1705)
!1731 = !DILocation(line: 625, column: 22, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 625, column: 17)
!1733 = !DILocation(line: 625, column: 18, scope: !1732)
!1734 = !DILocation(line: 625, column: 17, scope: !1411)
!1735 = !DILocation(line: 626, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 626, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 625, column: 27)
!1738 = !DILocation(line: 626, column: 64, scope: !1736)
!1739 = !DILocation(line: 626, column: 69, scope: !1736)
!1740 = !DILocation(line: 627, column: 29, scope: !1736)
!1741 = !DILocation(line: 626, column: 21, scope: !1737)
!1742 = !DILocation(line: 629, column: 25, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 629, column: 25)
!1744 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 628, column: 17)
!1745 = !DILocation(line: 629, column: 66, scope: !1743)
!1746 = !DILocation(line: 629, column: 25, scope: !1744)
!1747 = !DILocation(line: 631, column: 25, scope: !1744)
!1748 = !DILocation(line: 631, column: 37, scope: !1744)
!1749 = !{!1383, !527, i64 48}
!1750 = !DILocation(line: 632, column: 25, scope: !1744)
!1751 = !DILocation(line: 633, column: 53, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 632, column: 25)
!1753 = !DILocation(line: 633, column: 29, scope: !1752)
!1754 = !DILocation(line: 633, column: 47, scope: !1752)
!1755 = !{!1383, !110, i64 40}
!1756 = !DILocation(line: 633, column: 25, scope: !1752)
!1757 = !DILocation(line: 637, column: 21, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 637, column: 21)
!1759 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 636, column: 20)
!1760 = !DILocation(line: 637, column: 62, scope: !1758)
!1761 = !DILocation(line: 637, column: 67, scope: !1758)
!1762 = !DILocation(line: 638, column: 29, scope: !1758)
!1763 = !DILocation(line: 637, column: 21, scope: !1759)
!1764 = !DILocation(line: 640, column: 25, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 640, column: 25)
!1766 = distinct !DILexicalBlock(scope: !1758, file: !1, line: 639, column: 17)
!1767 = !DILocation(line: 640, column: 68, scope: !1765)
!1768 = !DILocation(line: 640, column: 25, scope: !1766)
!1769 = !DILocation(line: 642, column: 25, scope: !1766)
!1770 = !DILocation(line: 642, column: 37, scope: !1766)
!1771 = !DILocation(line: 643, column: 25, scope: !1766)
!1772 = !DILocation(line: 644, column: 53, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 643, column: 25)
!1774 = !DILocation(line: 644, column: 29, scope: !1773)
!1775 = !DILocation(line: 644, column: 47, scope: !1773)
!1776 = !DILocation(line: 644, column: 25, scope: !1773)
!1777 = !DILocation(line: 652, column: 22, scope: !1419)
!1778 = !DILocation(line: 652, column: 18, scope: !1419)
!1779 = !DILocation(line: 652, column: 17, scope: !1411)
!1780 = !DILocation(line: 0, scope: !1418)
!1781 = !DILocation(line: 653, column: 38, scope: !1418)
!1782 = !DILocation(line: 653, column: 25, scope: !1418)
!1783 = !DILocation(line: 655, column: 30, scope: !1421)
!1784 = !DILocation(line: 655, column: 22, scope: !1421)
!1785 = !DILocation(line: 655, column: 39, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 655, column: 17)
!1787 = !DILocation(line: 655, column: 17, scope: !1421)
!1788 = !DILocation(line: 656, column: 52, scope: !1786)
!1789 = !DILocation(line: 656, column: 45, scope: !1786)
!1790 = !DILocation(line: 656, column: 34, scope: !1786)
!1791 = !DILocation(line: 656, column: 32, scope: !1786)
!1792 = !DILocation(line: 655, column: 54, scope: !1786)
!1793 = !DILocation(line: 655, column: 17, scope: !1786)
!1794 = distinct !{!1794, !1787, !1795}
!1795 = !DILocation(line: 656, column: 58, scope: !1421)
!1796 = !DILocation(line: 658, column: 25, scope: !1423)
!1797 = !DILocation(line: 663, column: 21, scope: !1423)
!1798 = !DILocation(line: 663, column: 61, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 663, column: 21)
!1800 = !DILocation(line: 0, scope: !1799)
!1801 = !DILocation(line: 664, column: 17, scope: !1423)
!1802 = !DILocation(line: 664, column: 68, scope: !1423)
!1803 = !DILocation(line: 664, column: 33, scope: !1423)
!1804 = !DILocation(line: 664, column: 61, scope: !1423)
!1805 = !DILocation(line: 664, column: 50, scope: !1423)
!1806 = !DILocation(line: 664, column: 48, scope: !1423)
!1807 = distinct !{!1807, !1801, !1808}
!1808 = !DILocation(line: 664, column: 74, scope: !1423)
!1809 = !DILocation(line: 0, scope: !1744)
!1810 = !DILocation(line: 666, column: 9, scope: !1404)
!1811 = distinct !{!1811, !1431, !1812}
!1812 = !DILocation(line: 669, column: 5, scope: !1390)
!1813 = !DILocation(line: 670, column: 1, scope: !1390)
!1814 = distinct !DISubprogram(name: "streamIteratorGetField", scope: !1, file: !1, line: 678, type: !1815, isLocal: false, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1263, !219, !219, !1393, !1393}
!1817 = !{!1818, !1819, !1820, !1821, !1822}
!1818 = !DILocalVariable(name: "si", arg: 1, scope: !1814, file: !1, line: 678, type: !1263)
!1819 = !DILocalVariable(name: "fieldptr", arg: 2, scope: !1814, file: !1, line: 678, type: !219)
!1820 = !DILocalVariable(name: "valueptr", arg: 3, scope: !1814, file: !1, line: 678, type: !219)
!1821 = !DILocalVariable(name: "fieldlen", arg: 4, scope: !1814, file: !1, line: 678, type: !1393)
!1822 = !DILocalVariable(name: "valuelen", arg: 5, scope: !1814, file: !1, line: 678, type: !1393)
!1823 = !DILocation(line: 678, column: 45, scope: !1814)
!1824 = !DILocation(line: 678, column: 65, scope: !1814)
!1825 = !DILocation(line: 678, column: 91, scope: !1814)
!1826 = !DILocation(line: 678, column: 110, scope: !1814)
!1827 = !DILocation(line: 678, column: 129, scope: !1814)
!1828 = !DILocation(line: 679, column: 13, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 679, column: 9)
!1830 = !DILocation(line: 679, column: 25, scope: !1829)
!1831 = !DILocation(line: 679, column: 9, scope: !1814)
!1832 = !DILocation(line: 680, column: 31, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 679, column: 56)
!1834 = !DILocation(line: 680, column: 58, scope: !1833)
!1835 = !DILocation(line: 680, column: 21, scope: !1833)
!1836 = !DILocation(line: 680, column: 19, scope: !1833)
!1837 = !DILocation(line: 681, column: 44, scope: !1833)
!1838 = !DILocation(line: 681, column: 51, scope: !1833)
!1839 = !DILocation(line: 681, column: 33, scope: !1833)
!1840 = !DILocation(line: 681, column: 31, scope: !1833)
!1841 = !DILocation(line: 682, column: 5, scope: !1833)
!1842 = !DILocation(line: 686, column: 27, scope: !1814)
!1843 = !DILocation(line: 683, column: 31, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 682, column: 12)
!1845 = !DILocation(line: 683, column: 47, scope: !1844)
!1846 = !DILocation(line: 683, column: 21, scope: !1844)
!1847 = !DILocation(line: 683, column: 19, scope: !1844)
!1848 = !DILocation(line: 684, column: 33, scope: !1844)
!1849 = !DILocation(line: 684, column: 40, scope: !1844)
!1850 = !DILocation(line: 684, column: 22, scope: !1844)
!1851 = !DILocation(line: 684, column: 20, scope: !1844)
!1852 = !DILocation(line: 687, column: 29, scope: !1814)
!1853 = !DILocation(line: 686, column: 43, scope: !1814)
!1854 = !DILocation(line: 686, column: 17, scope: !1814)
!1855 = !DILocation(line: 686, column: 15, scope: !1814)
!1856 = !DILocation(line: 687, column: 36, scope: !1814)
!1857 = !DILocation(line: 687, column: 18, scope: !1814)
!1858 = !DILocation(line: 687, column: 16, scope: !1814)
!1859 = !DILocation(line: 688, column: 1, scope: !1814)
!1860 = distinct !DISubprogram(name: "streamIteratorRemoveEntry", scope: !1, file: !1, line: 700, type: !1861, isLocal: false, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1263, !167}
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871}
!1864 = !DILocalVariable(name: "si", arg: 1, scope: !1860, file: !1, line: 700, type: !1263)
!1865 = !DILocalVariable(name: "current", arg: 2, scope: !1860, file: !1, line: 700, type: !167)
!1866 = !DILocalVariable(name: "lp", scope: !1860, file: !1, line: 701, type: !8)
!1867 = !DILocalVariable(name: "aux", scope: !1860, file: !1, line: 702, type: !196)
!1868 = !DILocalVariable(name: "flags", scope: !1860, file: !1, line: 709, type: !12)
!1869 = !DILocalVariable(name: "p", scope: !1860, file: !1, line: 714, type: !8)
!1870 = !DILocalVariable(name: "start", scope: !1860, file: !1, line: 738, type: !95)
!1871 = !DILocalVariable(name: "end", scope: !1860, file: !1, line: 738, type: !95)
!1872 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 744, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 742, column: 12)
!1875 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 739, column: 9)
!1876 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 740, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 739, column: 18)
!1879 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 727, column: 14, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 722, column: 12)
!1882 = distinct !DILexicalBlock(scope: !1860, file: !1, line: 717, column: 9)
!1883 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 724, column: 14, scope: !1881)
!1885 = !DILocation(line: 98, column: 10, scope: !216, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 711, column: 10, scope: !1860)
!1887 = !DILocation(line: 700, column: 48, scope: !1860)
!1888 = !DILocation(line: 700, column: 62, scope: !1860)
!1889 = !DILocation(line: 701, column: 29, scope: !1860)
!1890 = !DILocation(line: 701, column: 20, scope: !1860)
!1891 = !DILocation(line: 709, column: 34, scope: !1860)
!1892 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 709, column: 17, scope: !1860)
!1894 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1893)
!1895 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1893)
!1896 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1893)
!1897 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1893)
!1898 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1893)
!1899 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1893)
!1900 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1893)
!1901 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1893)
!1902 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1893)
!1903 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1893)
!1904 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1893)
!1905 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1893)
!1906 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1893)
!1907 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1893)
!1908 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1893)
!1909 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1893)
!1910 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1893)
!1911 = !DILocation(line: 0, scope: !238, inlinedAt: !1893)
!1912 = !DILocation(line: 711, column: 44, scope: !1860)
!1913 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1886)
!1914 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1886)
!1915 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1886)
!1916 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1886)
!1917 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1886)
!1918 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1886)
!1919 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1886)
!1920 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1886)
!1921 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1886)
!1922 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1886)
!1923 = !DILocation(line: 714, column: 5, scope: !1860)
!1924 = !DILocation(line: 714, column: 24, scope: !1860)
!1925 = !DILocation(line: 714, column: 20, scope: !1860)
!1926 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 715, column: 11, scope: !1860)
!1928 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1927)
!1929 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1927)
!1930 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1927)
!1931 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1927)
!1932 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1927)
!1933 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1927)
!1934 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1927)
!1935 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1927)
!1936 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1927)
!1937 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1927)
!1938 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1927)
!1939 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1927)
!1940 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1927)
!1941 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1927)
!1942 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1927)
!1943 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1927)
!1944 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1927)
!1945 = !DILocation(line: 0, scope: !238, inlinedAt: !1927)
!1946 = !DILocation(line: 702, column: 13, scope: !1860)
!1947 = !DILocation(line: 717, column: 13, scope: !1882)
!1948 = !DILocation(line: 717, column: 9, scope: !1860)
!1949 = !DILocation(line: 720, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 717, column: 19)
!1951 = !DILocation(line: 721, column: 23, scope: !1950)
!1952 = !DILocation(line: 721, column: 31, scope: !1950)
!1953 = !DILocation(line: 721, column: 42, scope: !1950)
!1954 = !DILocation(line: 721, column: 53, scope: !1950)
!1955 = !DILocation(line: 721, column: 9, scope: !1950)
!1956 = !DILocation(line: 722, column: 5, scope: !1950)
!1957 = !DILocation(line: 724, column: 40, scope: !1881)
!1958 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1884)
!1959 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1884)
!1960 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1884)
!1961 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1884)
!1962 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1884)
!1963 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1884)
!1964 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1884)
!1965 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1884)
!1966 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1884)
!1967 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1884)
!1968 = !DILocation(line: 725, column: 23, scope: !1881)
!1969 = !DILocation(line: 725, column: 13, scope: !1881)
!1970 = !DILocation(line: 725, column: 11, scope: !1881)
!1971 = !DILocation(line: 106, column: 37, scope: !238, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 726, column: 15, scope: !1881)
!1973 = !DILocation(line: 107, column: 5, scope: !238, inlinedAt: !1972)
!1974 = !DILocation(line: 107, column: 13, scope: !238, inlinedAt: !1972)
!1975 = !DILocation(line: 108, column: 24, scope: !238, inlinedAt: !1972)
!1976 = !DILocation(line: 108, column: 20, scope: !238, inlinedAt: !1972)
!1977 = !DILocation(line: 109, column: 11, scope: !254, inlinedAt: !1972)
!1978 = !DILocation(line: 109, column: 9, scope: !238, inlinedAt: !1972)
!1979 = !DILocation(line: 109, column: 27, scope: !254, inlinedAt: !1972)
!1980 = !DILocation(line: 109, column: 20, scope: !254, inlinedAt: !1972)
!1981 = !DILocation(line: 113, column: 5, scope: !238, inlinedAt: !1972)
!1982 = !DILocation(line: 114, column: 37, scope: !238, inlinedAt: !1972)
!1983 = !DILocation(line: 113, column: 15, scope: !238, inlinedAt: !1972)
!1984 = !DILocation(line: 114, column: 18, scope: !238, inlinedAt: !1972)
!1985 = !DILocation(line: 114, column: 9, scope: !238, inlinedAt: !1972)
!1986 = !DILocation(line: 115, column: 5, scope: !238, inlinedAt: !1972)
!1987 = !DILocation(line: 116, column: 9, scope: !238, inlinedAt: !1972)
!1988 = !DILocation(line: 116, column: 7, scope: !238, inlinedAt: !1972)
!1989 = !DILocation(line: 118, column: 1, scope: !238, inlinedAt: !1972)
!1990 = !DILocation(line: 0, scope: !238, inlinedAt: !1972)
!1991 = !DILocation(line: 727, column: 40, scope: !1881)
!1992 = !DILocation(line: 97, column: 48, scope: !216, inlinedAt: !1880)
!1993 = !DILocation(line: 97, column: 68, scope: !216, inlinedAt: !1880)
!1994 = !DILocation(line: 97, column: 81, scope: !216, inlinedAt: !1880)
!1995 = !DILocation(line: 98, column: 5, scope: !216, inlinedAt: !1880)
!1996 = !DILocation(line: 99, column: 16, scope: !216, inlinedAt: !1880)
!1997 = !DILocation(line: 99, column: 9, scope: !216, inlinedAt: !1880)
!1998 = !DILocation(line: 100, column: 52, scope: !216, inlinedAt: !1880)
!1999 = !DILocation(line: 100, column: 12, scope: !216, inlinedAt: !1880)
!2000 = !DILocation(line: 101, column: 1, scope: !216, inlinedAt: !1880)
!2001 = !DILocation(line: 100, column: 5, scope: !216, inlinedAt: !1880)
!2002 = !DILocation(line: 730, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 730, column: 13)
!2004 = !DILocation(line: 730, column: 20, scope: !2003)
!2005 = !DILocation(line: 730, column: 13, scope: !1881)
!2006 = !DILocation(line: 0, scope: !2003)
!2007 = !DILocation(line: 731, column: 27, scope: !2003)
!2008 = !DILocation(line: 731, column: 35, scope: !2003)
!2009 = !DILocation(line: 731, column: 46, scope: !2003)
!2010 = !DILocation(line: 731, column: 57, scope: !2003)
!2011 = !DILocation(line: 731, column: 13, scope: !2003)
!2012 = !DILocation(line: 0, scope: !1950)
!2013 = !DILocation(line: 735, column: 9, scope: !1860)
!2014 = !DILocation(line: 735, column: 17, scope: !1860)
!2015 = !DILocation(line: 735, column: 23, scope: !1860)
!2016 = !DILocation(line: 738, column: 5, scope: !1860)
!2017 = !DILocation(line: 739, column: 13, scope: !1875)
!2018 = !DILocation(line: 739, column: 9, scope: !1875)
!2019 = !DILocation(line: 739, column: 9, scope: !1860)
!2020 = !DILocation(line: 740, column: 24, scope: !1878)
!2021 = !DILocation(line: 738, column: 14, scope: !1860)
!2022 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1877)
!2023 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1877)
!2024 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1877)
!2025 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1877)
!2026 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1877)
!2027 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1877)
!2028 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1877)
!2029 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1877)
!2030 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1877)
!2031 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1877)
!2032 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1877)
!2033 = !DILocation(line: 741, column: 15, scope: !1878)
!2034 = !DILocation(line: 742, column: 5, scope: !1878)
!2035 = !DILocation(line: 743, column: 17, scope: !1874)
!2036 = !DILocation(line: 744, column: 24, scope: !1874)
!2037 = !DILocation(line: 738, column: 21, scope: !1860)
!2038 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !1873)
!2039 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !1873)
!2040 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !1873)
!2041 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !1873)
!2042 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !1873)
!2043 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !1873)
!2044 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !1873)
!2045 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !1873)
!2046 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !1873)
!2047 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !1873)
!2048 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !1873)
!2049 = !DILocalVariable(name: "si", arg: 1, scope: !2050, file: !1, line: 756, type: !1263)
!2050 = distinct !DISubprogram(name: "streamIteratorStop", scope: !1, file: !1, line: 756, type: !2051, isLocal: false, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !1263}
!2053 = !{!2049}
!2054 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 746, column: 5, scope: !1860)
!2056 = !DILocation(line: 757, column: 18, scope: !2050, inlinedAt: !2055)
!2057 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !2055)
!2058 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !2055)
!2059 = !DILocation(line: 747, column: 32, scope: !1860)
!2060 = !DILocation(line: 747, column: 55, scope: !1860)
!2061 = !DILocation(line: 747, column: 5, scope: !1860)
!2062 = !DILocation(line: 751, column: 1, scope: !1860)
!2063 = !DILocation(line: 756, column: 41, scope: !2050)
!2064 = !DILocation(line: 757, column: 18, scope: !2050)
!2065 = !DILocation(line: 757, column: 5, scope: !2050)
!2066 = !DILocation(line: 758, column: 1, scope: !2050)
!2067 = distinct !DISubprogram(name: "streamDeleteItem", scope: !1, file: !1, line: 762, type: !2068, isLocal: false, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!12, !69, !167}
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2076}
!2071 = !DILocalVariable(name: "s", arg: 1, scope: !2067, file: !1, line: 762, type: !69)
!2072 = !DILocalVariable(name: "id", arg: 2, scope: !2067, file: !1, line: 762, type: !167)
!2073 = !DILocalVariable(name: "deleted", scope: !2067, file: !1, line: 763, type: !12)
!2074 = !DILocalVariable(name: "si", scope: !2067, file: !1, line: 764, type: !1264)
!2075 = !DILocalVariable(name: "myid", scope: !2067, file: !1, line: 766, type: !95)
!2076 = !DILocalVariable(name: "numfields", scope: !2067, file: !1, line: 767, type: !196)
!2077 = !DILocation(line: 762, column: 30, scope: !2067)
!2078 = !DILocation(line: 762, column: 43, scope: !2067)
!2079 = !DILocation(line: 763, column: 9, scope: !2067)
!2080 = !DILocation(line: 764, column: 5, scope: !2067)
!2081 = !DILocation(line: 764, column: 20, scope: !2067)
!2082 = !DILocation(line: 765, column: 5, scope: !2067)
!2083 = !DILocation(line: 766, column: 5, scope: !2067)
!2084 = !DILocation(line: 767, column: 5, scope: !2067)
!2085 = !DILocation(line: 766, column: 14, scope: !2067)
!2086 = !DILocation(line: 767, column: 13, scope: !2067)
!2087 = !DILocation(line: 768, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 768, column: 9)
!2089 = !DILocation(line: 768, column: 9, scope: !2067)
!2090 = !DILocation(line: 769, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 768, column: 52)
!2092 = !DILocation(line: 771, column: 5, scope: !2091)
!2093 = !DILocation(line: 0, scope: !2067)
!2094 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 772, column: 5, scope: !2067)
!2096 = !DILocation(line: 757, column: 18, scope: !2050, inlinedAt: !2095)
!2097 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !2095)
!2098 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !2095)
!2099 = !DILocation(line: 774, column: 1, scope: !2067)
!2100 = !DILocation(line: 773, column: 5, scope: !2067)
!2101 = distinct !DISubprogram(name: "addReplyStreamID", scope: !1, file: !1, line: 779, type: !2102, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2322)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !2104, !167}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !373, line: 780, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !373, line: 723, size: 135360, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2237, !2238, !2239, !2240, !2241, !2242, !2244, !2245, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2271, !2272, !2276, !2277, !2293, !2294, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2106, file: !373, line: 724, baseType: !57, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2106, file: !373, line: 725, baseType: !12, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !2106, file: !373, line: 726, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !373, line: 656, baseType: !2113)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !373, line: 647, size: 512, elements: !2114)
!2114 = !{!2115, !2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !2113, file: !373, line: 648, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !2118, line: 82, baseType: !2119)
!2118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !2118, line: 76, size: 768, elements: !2120)
!2120 = !{!2121, !2146, !2147, !2172, !2173}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2119, file: !2118, line: 77, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !2118, line: 65, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !2118, line: 58, size: 384, elements: !2125)
!2125 = !{!2126, !2132, !2136, !2137, !2141, !2145}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !2124, file: !2118, line: 59, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!57, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !2124, file: !2118, line: 60, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!7, !7, !2130}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !2124, file: !2118, line: 61, baseType: !2133, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !2124, file: !2118, line: 62, baseType: !2138, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!12, !7, !2130, !2130}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !2124, file: !2118, line: 63, baseType: !2142, size: 64, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !7, !7}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !2124, file: !2118, line: 64, baseType: !2142, size: 64, offset: 320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !2119, file: !2118, line: 78, baseType: !7, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !2119, file: !2118, line: 79, baseType: !2148, size: 512, offset: 128)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2149, size: 512, elements: !306)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !2118, line: 74, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !2118, line: 69, size: 256, elements: !2151)
!2151 = !{!2152, !2169, !2170, !2171}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2150, file: !2118, line: 70, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !2118, line: 56, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !2118, line: 47, size: 192, elements: !2157)
!2157 = !{!2158, !2159, !2167}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2156, file: !2118, line: 48, baseType: !7, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2156, file: !2118, line: 54, baseType: !2160, size: 64, offset: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2156, file: !2118, line: 49, size: 64, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2160, file: !2118, line: 50, baseType: !7, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !2160, file: !2118, line: 51, baseType: !57, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !2160, file: !2118, line: 52, baseType: !196, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2160, file: !2118, line: 53, baseType: !2166, size: 64)
!2166 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2156, file: !2118, line: 55, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2150, file: !2118, line: 71, baseType: !17, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !2150, file: !2118, line: 72, baseType: !17, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2150, file: !2118, line: 73, baseType: !17, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !2119, file: !2118, line: 80, baseType: !198, size: 64, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !2119, file: !2118, line: 81, baseType: !17, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2113, file: !373, line: 649, baseType: !2116, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !2113, file: !373, line: 650, baseType: !2116, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !2113, file: !373, line: 651, baseType: !2116, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2113, file: !373, line: 652, baseType: !2116, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2113, file: !373, line: 653, baseType: !12, size: 32, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !2113, file: !373, line: 654, baseType: !246, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !2113, file: !373, line: 655, baseType: !2181, size: 64, offset: 448)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !2183, line: 54, baseType: !2184)
!2183 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !2183, line: 47, size: 384, elements: !2185)
!2185 = !{!2186, !2195, !2196, !2200, !2201, !2205}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2184, file: !2183, line: 48, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !2183, line: 40, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !2183, line: 36, size: 192, elements: !2190)
!2190 = !{!2191, !2193, !2194}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2189, file: !2183, line: 37, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2189, file: !2183, line: 38, baseType: !2192, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2189, file: !2183, line: 39, baseType: !7, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2184, file: !2183, line: 49, baseType: !2187, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !2184, file: !2183, line: 50, baseType: !2197, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!7, !7}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2184, file: !2183, line: 51, baseType: !4, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2184, file: !2183, line: 52, baseType: !2202, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!12, !7, !7}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2184, file: !2183, line: 53, baseType: !17, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2106, file: !373, line: 727, baseType: !371, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !2106, file: !373, line: 728, baseType: !440, size: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !2106, file: !373, line: 729, baseType: !13, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !2106, file: !373, line: 730, baseType: !440, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !2106, file: !373, line: 734, baseType: !13, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2106, file: !373, line: 735, baseType: !12, size: 32, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2106, file: !373, line: 736, baseType: !370, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2106, file: !373, line: 737, baseType: !2214, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !373, line: 1307, size: 640, elements: !2216)
!2216 = !{!2217, !2218, !2223, !2224, !2225, !2226, !2232, !2233, !2234, !2235, !2236}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2215, file: !373, line: 1308, baseType: !10, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !2215, file: !373, line: 1309, baseType: !2219, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !373, line: 1305, baseType: !2221)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{null, !2104}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !2215, file: !373, line: 1310, baseType: !12, size: 32, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !2215, file: !373, line: 1311, baseType: !10, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2215, file: !373, line: 1312, baseType: !12, size: 32, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !2215, file: !373, line: 1315, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !373, line: 1306, baseType: !2229)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !2214, !370, !12, !2231}
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !2215, file: !373, line: 1317, baseType: !12, size: 32, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !2215, file: !373, line: 1318, baseType: !12, size: 32, offset: 416)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !2215, file: !373, line: 1319, baseType: !12, size: 32, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !2215, file: !373, line: 1320, baseType: !246, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !2215, file: !373, line: 1320, baseType: !246, size: 64, offset: 576)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !2106, file: !373, line: 737, baseType: !2214, size: 64, offset: 704)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !2106, file: !373, line: 738, baseType: !12, size: 32, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !2106, file: !373, line: 739, baseType: !12, size: 32, offset: 800)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !2106, file: !373, line: 740, baseType: !198, size: 64, offset: 832)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !2106, file: !373, line: 741, baseType: !2181, size: 64, offset: 896)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !2106, file: !373, line: 742, baseType: !2243, size: 64, offset: 960)
!2243 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !2106, file: !373, line: 743, baseType: !13, size: 64, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2106, file: !373, line: 745, baseType: !2246, size: 64, offset: 1088)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2247, line: 34, baseType: !198)
!2247 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !2106, file: !373, line: 746, baseType: !2246, size: 64, offset: 1152)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !2106, file: !373, line: 747, baseType: !2246, size: 64, offset: 1216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2106, file: !373, line: 748, baseType: !12, size: 32, offset: 1280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !2106, file: !373, line: 749, baseType: !12, size: 32, offset: 1312)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !2106, file: !373, line: 750, baseType: !12, size: 32, offset: 1344)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !2106, file: !373, line: 751, baseType: !12, size: 32, offset: 1376)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !2106, file: !373, line: 752, baseType: !12, size: 32, offset: 1408)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !2106, file: !373, line: 753, baseType: !2256, size: 64, offset: 1472)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2257, line: 173, baseType: !2258)
!2257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 100, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !16, line: 44, baseType: !198)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !2106, file: !373, line: 754, baseType: !2256, size: 64, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !2106, file: !373, line: 755, baseType: !440, size: 64, offset: 1600)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !2106, file: !373, line: 756, baseType: !246, size: 64, offset: 1664)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !2106, file: !373, line: 757, baseType: !246, size: 64, offset: 1728)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !2106, file: !373, line: 758, baseType: !246, size: 64, offset: 1792)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !2106, file: !373, line: 759, baseType: !246, size: 64, offset: 1856)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !2106, file: !373, line: 760, baseType: !246, size: 64, offset: 1920)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !2106, file: !373, line: 763, baseType: !2268, size: 328, offset: 1984)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 328, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 41)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !2106, file: !373, line: 764, baseType: !12, size: 32, offset: 2336)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !2106, file: !373, line: 765, baseType: !2273, size: 368, offset: 2368)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 368, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 46)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !2106, file: !373, line: 766, baseType: !12, size: 32, offset: 2752)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !2106, file: !373, line: 767, baseType: !2278, size: 256, offset: 2816)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !373, line: 673, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !373, line: 665, size: 256, elements: !2280)
!2280 = !{!2281, !2289, !2290, !2291, !2292}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !2279, file: !373, line: 666, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !373, line: 663, baseType: !2284)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !373, line: 659, size: 192, elements: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2284, file: !373, line: 660, baseType: !370, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2284, file: !373, line: 661, baseType: !12, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2284, file: !373, line: 662, baseType: !2214, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2279, file: !373, line: 667, baseType: !12, size: 32, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2279, file: !373, line: 668, baseType: !12, size: 32, offset: 96)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !2279, file: !373, line: 671, baseType: !12, size: 32, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !2279, file: !373, line: 672, baseType: !2246, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !2106, file: !373, line: 768, baseType: !12, size: 32, offset: 3072)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !2106, file: !373, line: 769, baseType: !2295, size: 704, offset: 3136)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !373, line: 703, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !373, line: 677, size: 704, elements: !2297)
!2297 = !{!2298, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2296, file: !373, line: 679, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !373, line: 52, baseType: !246)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2296, file: !373, line: 683, baseType: !2116, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2296, file: !373, line: 685, baseType: !371, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !2296, file: !373, line: 689, baseType: !13, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !2296, file: !373, line: 690, baseType: !371, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !2296, file: !373, line: 691, baseType: !371, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !2296, file: !373, line: 692, baseType: !2299, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !2296, file: !373, line: 692, baseType: !2299, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !2296, file: !373, line: 693, baseType: !12, size: 32, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !2296, file: !373, line: 696, baseType: !12, size: 32, offset: 544)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !2296, file: !373, line: 697, baseType: !246, size: 64, offset: 576)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !2296, file: !373, line: 700, baseType: !7, size: 64, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !2106, file: !373, line: 770, baseType: !246, size: 64, offset: 3840)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !2106, file: !373, line: 771, baseType: !2181, size: 64, offset: 3904)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !2106, file: !373, line: 772, baseType: !2116, size: 64, offset: 3968)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !2106, file: !373, line: 773, baseType: !2181, size: 64, offset: 4032)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !2106, file: !373, line: 774, baseType: !440, size: 64, offset: 4096)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !2106, file: !373, line: 775, baseType: !2187, size: 64, offset: 4160)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !2106, file: !373, line: 778, baseType: !12, size: 32, offset: 4224)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2106, file: !373, line: 779, baseType: !2319, size: 131072, offset: 4256)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !2320)
!2320 = !{!2321}
!2321 = !DISubrange(count: 16384)
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "c", arg: 1, scope: !2101, file: !1, line: 779, type: !2104)
!2324 = !DILocalVariable(name: "id", arg: 2, scope: !2101, file: !1, line: 779, type: !167)
!2325 = !DILocalVariable(name: "replyid", scope: !2101, file: !1, line: 780, type: !440)
!2326 = !DILocation(line: 779, column: 31, scope: !2101)
!2327 = !DILocation(line: 779, column: 44, scope: !2101)
!2328 = !DILocation(line: 780, column: 29, scope: !2101)
!2329 = !DILocation(line: 780, column: 52, scope: !2101)
!2330 = !DILocation(line: 780, column: 59, scope: !2101)
!2331 = !DILocation(line: 780, column: 19, scope: !2101)
!2332 = !DILocation(line: 780, column: 9, scope: !2101)
!2333 = !DILocation(line: 781, column: 5, scope: !2101)
!2334 = !DILocation(line: 782, column: 1, scope: !2101)
!2335 = distinct !DISubprogram(name: "createObjectFromStreamID", scope: !1, file: !1, line: 786, type: !2336, isLocal: false, isDefinition: true, scopeLine: 786, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!371, !167}
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "id", arg: 1, scope: !2335, file: !1, line: 786, type: !167)
!2340 = !DILocation(line: 786, column: 42, scope: !2335)
!2341 = !DILocation(line: 787, column: 47, scope: !2335)
!2342 = !DILocation(line: 788, column: 29, scope: !2335)
!2343 = !DILocation(line: 788, column: 36, scope: !2335)
!2344 = !DILocation(line: 787, column: 37, scope: !2335)
!2345 = !DILocation(line: 787, column: 12, scope: !2335)
!2346 = !DILocation(line: 787, column: 5, scope: !2335)
!2347 = distinct !DISubprogram(name: "streamPropagateXCLAIM", scope: !1, file: !1, line: 794, type: !2348, isLocal: false, isDefinition: true, scopeLine: 794, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2364)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !2104, !371, !144, !371, !371, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamNACK", file: !71, line: 87, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamNACK", file: !71, line: 82, size: 192, elements: !2353)
!2353 = !{!2354, !2355, !2356}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_time", scope: !2352, file: !71, line: 83, baseType: !2299, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_count", scope: !2352, file: !71, line: 84, baseType: !57, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !2352, file: !71, line: 85, baseType: !2357, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !71, line: 79, baseType: !2359)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !71, line: 67, size: 192, elements: !2360)
!2360 = !{!2361, !2362, !2363}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !2359, file: !71, line: 68, baseType: !2299, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2359, file: !71, line: 69, baseType: !440, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !2359, file: !71, line: 72, baseType: !75, size: 64, offset: 128)
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2365 = !DILocalVariable(name: "c", arg: 1, scope: !2347, file: !1, line: 794, type: !2104)
!2366 = !DILocalVariable(name: "key", arg: 2, scope: !2347, file: !1, line: 794, type: !371)
!2367 = !DILocalVariable(name: "group", arg: 3, scope: !2347, file: !1, line: 794, type: !144)
!2368 = !DILocalVariable(name: "groupname", arg: 4, scope: !2347, file: !1, line: 794, type: !371)
!2369 = !DILocalVariable(name: "id", arg: 5, scope: !2347, file: !1, line: 794, type: !371)
!2370 = !DILocalVariable(name: "nack", arg: 6, scope: !2347, file: !1, line: 794, type: !2350)
!2371 = !DILocalVariable(name: "argv", scope: !2347, file: !1, line: 802, type: !2372)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 896, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 14)
!2375 = !DILocation(line: 794, column: 36, scope: !2347)
!2376 = !DILocation(line: 794, column: 45, scope: !2347)
!2377 = !DILocation(line: 794, column: 60, scope: !2347)
!2378 = !DILocation(line: 794, column: 73, scope: !2347)
!2379 = !DILocation(line: 794, column: 90, scope: !2347)
!2380 = !DILocation(line: 794, column: 106, scope: !2347)
!2381 = !DILocation(line: 802, column: 5, scope: !2347)
!2382 = !DILocation(line: 802, column: 11, scope: !2347)
!2383 = !DILocation(line: 803, column: 15, scope: !2347)
!2384 = !DILocation(line: 803, column: 5, scope: !2347)
!2385 = !DILocation(line: 803, column: 13, scope: !2347)
!2386 = !DILocation(line: 804, column: 5, scope: !2347)
!2387 = !DILocation(line: 804, column: 13, scope: !2347)
!2388 = !DILocation(line: 805, column: 5, scope: !2347)
!2389 = !DILocation(line: 805, column: 13, scope: !2347)
!2390 = !DILocation(line: 806, column: 40, scope: !2347)
!2391 = !{!2392, !110, i64 16}
!2392 = !{!"streamNACK", !266, i64 0, !113, i64 8, !110, i64 16}
!2393 = !DILocation(line: 806, column: 50, scope: !2347)
!2394 = !{!2395, !110, i64 8}
!2395 = !{!"streamConsumer", !266, i64 0, !110, i64 8, !110, i64 16}
!2396 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 806, column: 55, scope: !2347)
!2398 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !2397)
!2399 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !2397)
!2400 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !2397)
!2401 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !2397)
!2402 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !2397)
!2403 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !2397)
!2404 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !2397)
!2405 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !2397)
!2406 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !2397)
!2407 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !2397)
!2408 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !2397)
!2409 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !2397)
!2410 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !2397)
!2411 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !2397)
!2412 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !2397)
!2413 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !2397)
!2414 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !2397)
!2415 = !DILocation(line: 0, scope: !678, inlinedAt: !2397)
!2416 = !DILocation(line: 0, scope: !2347)
!2417 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !2397)
!2418 = !DILocation(line: 806, column: 15, scope: !2347)
!2419 = !DILocation(line: 806, column: 5, scope: !2347)
!2420 = !DILocation(line: 806, column: 13, scope: !2347)
!2421 = !DILocation(line: 807, column: 15, scope: !2347)
!2422 = !DILocation(line: 807, column: 5, scope: !2347)
!2423 = !DILocation(line: 807, column: 13, scope: !2347)
!2424 = !DILocation(line: 808, column: 5, scope: !2347)
!2425 = !DILocation(line: 808, column: 13, scope: !2347)
!2426 = !DILocation(line: 809, column: 15, scope: !2347)
!2427 = !DILocation(line: 809, column: 5, scope: !2347)
!2428 = !DILocation(line: 809, column: 13, scope: !2347)
!2429 = !DILocation(line: 810, column: 52, scope: !2347)
!2430 = !{!2392, !266, i64 0}
!2431 = !DILocation(line: 810, column: 15, scope: !2347)
!2432 = !DILocation(line: 810, column: 5, scope: !2347)
!2433 = !DILocation(line: 810, column: 13, scope: !2347)
!2434 = !DILocation(line: 811, column: 15, scope: !2347)
!2435 = !DILocation(line: 811, column: 5, scope: !2347)
!2436 = !DILocation(line: 811, column: 13, scope: !2347)
!2437 = !DILocation(line: 812, column: 52, scope: !2347)
!2438 = !{!2392, !113, i64 8}
!2439 = !DILocation(line: 812, column: 15, scope: !2347)
!2440 = !DILocation(line: 812, column: 5, scope: !2347)
!2441 = !DILocation(line: 812, column: 13, scope: !2347)
!2442 = !DILocation(line: 813, column: 16, scope: !2347)
!2443 = !DILocation(line: 813, column: 5, scope: !2347)
!2444 = !DILocation(line: 813, column: 14, scope: !2347)
!2445 = !DILocation(line: 814, column: 16, scope: !2347)
!2446 = !DILocation(line: 814, column: 5, scope: !2347)
!2447 = !DILocation(line: 814, column: 14, scope: !2347)
!2448 = !DILocation(line: 815, column: 16, scope: !2347)
!2449 = !DILocation(line: 815, column: 5, scope: !2347)
!2450 = !DILocation(line: 815, column: 14, scope: !2347)
!2451 = !DILocation(line: 786, column: 42, scope: !2335, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 816, column: 16, scope: !2347)
!2453 = !DILocation(line: 787, column: 47, scope: !2335, inlinedAt: !2452)
!2454 = !DILocation(line: 788, column: 29, scope: !2335, inlinedAt: !2452)
!2455 = !DILocation(line: 788, column: 36, scope: !2335, inlinedAt: !2452)
!2456 = !DILocation(line: 787, column: 37, scope: !2335, inlinedAt: !2452)
!2457 = !DILocation(line: 787, column: 12, scope: !2335, inlinedAt: !2452)
!2458 = !DILocation(line: 787, column: 5, scope: !2335, inlinedAt: !2452)
!2459 = !DILocation(line: 816, column: 5, scope: !2347)
!2460 = !DILocation(line: 816, column: 14, scope: !2347)
!2461 = !DILocation(line: 817, column: 22, scope: !2347)
!2462 = !{!556, !110, i64 984}
!2463 = !DILocation(line: 817, column: 39, scope: !2347)
!2464 = !{!2465, !110, i64 16}
!2465 = !{!"client", !113, i64 0, !527, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !113, i64 40, !110, i64 48, !113, i64 56, !527, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !527, i64 96, !527, i64 100, !113, i64 104, !110, i64 112, !266, i64 120, !113, i64 128, !113, i64 136, !113, i64 144, !113, i64 152, !527, i64 160, !527, i64 164, !527, i64 168, !527, i64 172, !527, i64 176, !113, i64 184, !113, i64 192, !110, i64 200, !266, i64 208, !266, i64 216, !266, i64 224, !266, i64 232, !266, i64 240, !111, i64 248, !527, i64 292, !111, i64 296, !527, i64 344, !2466, i64 352, !527, i64 384, !2467, i64 392, !266, i64 480, !110, i64 488, !110, i64 496, !110, i64 504, !110, i64 512, !110, i64 520, !527, i64 528, !111, i64 532}
!2466 = !{!"multiState", !110, i64 0, !527, i64 8, !527, i64 12, !527, i64 16, !113, i64 24}
!2467 = !{!"blockingState", !266, i64 0, !110, i64 8, !110, i64 16, !113, i64 24, !110, i64 32, !110, i64 40, !266, i64 48, !266, i64 56, !527, i64 64, !527, i64 68, !266, i64 72, !110, i64 80}
!2468 = !DILocation(line: 817, column: 43, scope: !2347)
!2469 = !{!2470, !527, i64 40}
!2470 = !{!"redisDb", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !527, i64 40, !266, i64 48, !110, i64 56}
!2471 = !DILocation(line: 817, column: 5, scope: !2347)
!2472 = !DILocation(line: 818, column: 18, scope: !2347)
!2473 = !DILocation(line: 818, column: 5, scope: !2347)
!2474 = !DILocation(line: 819, column: 18, scope: !2347)
!2475 = !DILocation(line: 819, column: 5, scope: !2347)
!2476 = !DILocation(line: 820, column: 18, scope: !2347)
!2477 = !DILocation(line: 820, column: 5, scope: !2347)
!2478 = !DILocation(line: 821, column: 18, scope: !2347)
!2479 = !DILocation(line: 821, column: 5, scope: !2347)
!2480 = !DILocation(line: 822, column: 18, scope: !2347)
!2481 = !DILocation(line: 822, column: 5, scope: !2347)
!2482 = !DILocation(line: 823, column: 18, scope: !2347)
!2483 = !DILocation(line: 823, column: 5, scope: !2347)
!2484 = !DILocation(line: 824, column: 18, scope: !2347)
!2485 = !DILocation(line: 824, column: 5, scope: !2347)
!2486 = !DILocation(line: 825, column: 18, scope: !2347)
!2487 = !DILocation(line: 825, column: 5, scope: !2347)
!2488 = !DILocation(line: 826, column: 18, scope: !2347)
!2489 = !DILocation(line: 826, column: 5, scope: !2347)
!2490 = !DILocation(line: 827, column: 18, scope: !2347)
!2491 = !DILocation(line: 827, column: 5, scope: !2347)
!2492 = !DILocation(line: 828, column: 18, scope: !2347)
!2493 = !DILocation(line: 828, column: 5, scope: !2347)
!2494 = !DILocation(line: 829, column: 1, scope: !2347)
!2495 = distinct !DISubprogram(name: "streamPropagateGroupID", scope: !1, file: !1, line: 837, type: !2496, isLocal: false, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !2104, !371, !144, !371}
!2498 = !{!2499, !2500, !2501, !2502, !2503}
!2499 = !DILocalVariable(name: "c", arg: 1, scope: !2495, file: !1, line: 837, type: !2104)
!2500 = !DILocalVariable(name: "key", arg: 2, scope: !2495, file: !1, line: 837, type: !371)
!2501 = !DILocalVariable(name: "group", arg: 3, scope: !2495, file: !1, line: 837, type: !144)
!2502 = !DILocalVariable(name: "groupname", arg: 4, scope: !2495, file: !1, line: 837, type: !371)
!2503 = !DILocalVariable(name: "argv", scope: !2495, file: !1, line: 838, type: !2504)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 320, elements: !2505)
!2505 = !{!2506}
!2506 = !DISubrange(count: 5)
!2507 = !DILocation(line: 837, column: 37, scope: !2495)
!2508 = !DILocation(line: 837, column: 46, scope: !2495)
!2509 = !DILocation(line: 837, column: 61, scope: !2495)
!2510 = !DILocation(line: 837, column: 74, scope: !2495)
!2511 = !DILocation(line: 838, column: 5, scope: !2495)
!2512 = !DILocation(line: 838, column: 11, scope: !2495)
!2513 = !DILocation(line: 839, column: 15, scope: !2495)
!2514 = !DILocation(line: 839, column: 5, scope: !2495)
!2515 = !DILocation(line: 839, column: 13, scope: !2495)
!2516 = !DILocation(line: 840, column: 15, scope: !2495)
!2517 = !DILocation(line: 840, column: 5, scope: !2495)
!2518 = !DILocation(line: 840, column: 13, scope: !2495)
!2519 = !DILocation(line: 841, column: 5, scope: !2495)
!2520 = !DILocation(line: 841, column: 13, scope: !2495)
!2521 = !DILocation(line: 842, column: 5, scope: !2495)
!2522 = !DILocation(line: 842, column: 13, scope: !2495)
!2523 = !DILocation(line: 786, column: 42, scope: !2335, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 843, column: 15, scope: !2495)
!2525 = !DILocation(line: 787, column: 47, scope: !2335, inlinedAt: !2524)
!2526 = !DILocation(line: 788, column: 29, scope: !2335, inlinedAt: !2524)
!2527 = !DILocation(line: 788, column: 36, scope: !2335, inlinedAt: !2524)
!2528 = !DILocation(line: 787, column: 37, scope: !2335, inlinedAt: !2524)
!2529 = !DILocation(line: 787, column: 12, scope: !2335, inlinedAt: !2524)
!2530 = !DILocation(line: 787, column: 5, scope: !2335, inlinedAt: !2524)
!2531 = !DILocation(line: 843, column: 5, scope: !2495)
!2532 = !DILocation(line: 843, column: 13, scope: !2495)
!2533 = !DILocation(line: 844, column: 22, scope: !2495)
!2534 = !{!556, !110, i64 992}
!2535 = !DILocation(line: 844, column: 39, scope: !2495)
!2536 = !DILocation(line: 844, column: 43, scope: !2495)
!2537 = !DILocation(line: 844, column: 5, scope: !2495)
!2538 = !DILocation(line: 845, column: 18, scope: !2495)
!2539 = !DILocation(line: 845, column: 5, scope: !2495)
!2540 = !DILocation(line: 846, column: 18, scope: !2495)
!2541 = !DILocation(line: 846, column: 5, scope: !2495)
!2542 = !DILocation(line: 847, column: 18, scope: !2495)
!2543 = !DILocation(line: 847, column: 5, scope: !2495)
!2544 = !DILocation(line: 848, column: 1, scope: !2495)
!2545 = distinct !DISubprogram(name: "streamReplyWithRange", scope: !1, file: !1, line: 898, type: !2546, isLocal: false, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2554)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!13, !2104, !69, !167, !167, !13, !12, !144, !2357, !12, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !71, line: 94, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreamPropInfo", file: !71, line: 91, size: 128, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !2550, file: !71, line: 92, baseType: !371, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !2550, file: !71, line: 93, baseType: !371, size: 64, offset: 64)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2574, !2575, !2576, !2577, !2580, !2581, !2582, !2583}
!2555 = !DILocalVariable(name: "c", arg: 1, scope: !2545, file: !1, line: 898, type: !2104)
!2556 = !DILocalVariable(name: "s", arg: 2, scope: !2545, file: !1, line: 898, type: !69)
!2557 = !DILocalVariable(name: "start", arg: 3, scope: !2545, file: !1, line: 898, type: !167)
!2558 = !DILocalVariable(name: "end", arg: 4, scope: !2545, file: !1, line: 898, type: !167)
!2559 = !DILocalVariable(name: "count", arg: 5, scope: !2545, file: !1, line: 898, type: !13)
!2560 = !DILocalVariable(name: "rev", arg: 6, scope: !2545, file: !1, line: 898, type: !12)
!2561 = !DILocalVariable(name: "group", arg: 7, scope: !2545, file: !1, line: 898, type: !144)
!2562 = !DILocalVariable(name: "consumer", arg: 8, scope: !2545, file: !1, line: 898, type: !2357)
!2563 = !DILocalVariable(name: "flags", arg: 9, scope: !2545, file: !1, line: 898, type: !12)
!2564 = !DILocalVariable(name: "spi", arg: 10, scope: !2545, file: !1, line: 898, type: !2548)
!2565 = !DILocalVariable(name: "arraylen_ptr", scope: !2545, file: !1, line: 899, type: !7)
!2566 = !DILocalVariable(name: "arraylen", scope: !2545, file: !1, line: 900, type: !13)
!2567 = !DILocalVariable(name: "si", scope: !2545, file: !1, line: 901, type: !1264)
!2568 = !DILocalVariable(name: "numfields", scope: !2545, file: !1, line: 902, type: !196)
!2569 = !DILocalVariable(name: "id", scope: !2545, file: !1, line: 903, type: !95)
!2570 = !DILocalVariable(name: "propagate_last_id", scope: !2545, file: !1, line: 904, type: !12)
!2571 = !DILocalVariable(name: "key", scope: !2572, file: !1, line: 934, type: !8)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 933, column: 28)
!2573 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 919, column: 52)
!2574 = !DILocalVariable(name: "value", scope: !2572, file: !1, line: 934, type: !8)
!2575 = !DILocalVariable(name: "key_len", scope: !2572, file: !1, line: 935, type: !196)
!2576 = !DILocalVariable(name: "value_len", scope: !2572, file: !1, line: 935, type: !196)
!2577 = !DILocalVariable(name: "buf", scope: !2578, file: !1, line: 951, type: !1414)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 950, column: 51)
!2579 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 950, column: 13)
!2580 = !DILocalVariable(name: "nack", scope: !2578, file: !1, line: 957, type: !2350)
!2581 = !DILocalVariable(name: "group_inserted", scope: !2578, file: !1, line: 958, type: !12)
!2582 = !DILocalVariable(name: "consumer_inserted", scope: !2578, file: !1, line: 960, type: !12)
!2583 = !DILocalVariable(name: "idarg", scope: !2584, file: !1, line: 983, type: !371)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !1, line: 982, column: 22)
!2585 = distinct !DILexicalBlock(scope: !2578, file: !1, line: 982, column: 17)
!2586 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 952, column: 13, scope: !2578)
!2588 = !DILocation(line: 898, column: 37, scope: !2545)
!2589 = !DILocation(line: 898, column: 48, scope: !2545)
!2590 = !DILocation(line: 898, column: 61, scope: !2545)
!2591 = !DILocation(line: 898, column: 78, scope: !2545)
!2592 = !DILocation(line: 898, column: 90, scope: !2545)
!2593 = !DILocation(line: 898, column: 101, scope: !2545)
!2594 = !DILocation(line: 898, column: 116, scope: !2545)
!2595 = !DILocation(line: 898, column: 139, scope: !2545)
!2596 = !DILocation(line: 898, column: 153, scope: !2545)
!2597 = !DILocation(line: 898, column: 176, scope: !2545)
!2598 = !DILocation(line: 899, column: 11, scope: !2545)
!2599 = !DILocation(line: 900, column: 12, scope: !2545)
!2600 = !DILocation(line: 901, column: 5, scope: !2545)
!2601 = !DILocation(line: 902, column: 5, scope: !2545)
!2602 = !DILocation(line: 903, column: 5, scope: !2545)
!2603 = !DILocation(line: 904, column: 9, scope: !2545)
!2604 = !DILocation(line: 911, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 911, column: 9)
!2606 = !DILocation(line: 911, column: 15, scope: !2605)
!2607 = !DILocation(line: 911, column: 25, scope: !2605)
!2608 = !DILocation(line: 911, column: 9, scope: !2545)
!2609 = !DILocation(line: 912, column: 16, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !1, line: 911, column: 48)
!2611 = !DILocation(line: 912, column: 9, scope: !2610)
!2612 = !DILocation(line: 916, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 916, column: 9)
!2614 = !DILocation(line: 916, column: 9, scope: !2545)
!2615 = !DILocation(line: 917, column: 24, scope: !2613)
!2616 = !DILocation(line: 917, column: 9, scope: !2613)
!2617 = !DILocation(line: 0, scope: !2613)
!2618 = !DILocation(line: 901, column: 20, scope: !2545)
!2619 = !DILocation(line: 918, column: 5, scope: !2545)
!2620 = !DILocation(line: 919, column: 5, scope: !2545)
!2621 = !DILocation(line: 902, column: 13, scope: !2545)
!2622 = !DILocation(line: 903, column: 14, scope: !2545)
!2623 = !DILocation(line: 919, column: 11, scope: !2545)
!2624 = !DILocation(line: 921, column: 19, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 921, column: 13)
!2626 = !DILocation(line: 0, scope: !2573)
!2627 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 921, column: 22, scope: !2625)
!2629 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !2628)
!2630 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !2628)
!2631 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !2628)
!2632 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !2628)
!2633 = !DILocation(line: 154, column: 24, scope: !346, inlinedAt: !2628)
!2634 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !2628)
!2635 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !2628)
!2636 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !2628)
!2637 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !2628)
!2638 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !2628)
!2639 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !2628)
!2640 = !DILocation(line: 0, scope: !2625)
!2641 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !2628)
!2642 = !DILocation(line: 921, column: 13, scope: !2573)
!2643 = !DILocation(line: 922, column: 30, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 921, column: 64)
!2645 = !DILocation(line: 924, column: 9, scope: !2644)
!2646 = !DILocation(line: 0, scope: !2644)
!2647 = !DILocation(line: 928, column: 9, scope: !2573)
!2648 = !DILocation(line: 0, scope: !2545)
!2649 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 929, column: 9, scope: !2573)
!2651 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !2650)
!2652 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !2650)
!2653 = !DILocation(line: 780, column: 59, scope: !2101, inlinedAt: !2650)
!2654 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !2650)
!2655 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !2650)
!2656 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !2650)
!2657 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !2650)
!2658 = !DILocation(line: 930, column: 32, scope: !2573)
!2659 = !DILocation(line: 930, column: 41, scope: !2573)
!2660 = !DILocation(line: 930, column: 9, scope: !2573)
!2661 = !DILocation(line: 933, column: 9, scope: !2573)
!2662 = !DILocation(line: 933, column: 24, scope: !2573)
!2663 = !DILocation(line: 934, column: 13, scope: !2572)
!2664 = !DILocation(line: 935, column: 13, scope: !2572)
!2665 = !DILocation(line: 934, column: 28, scope: !2572)
!2666 = !DILocation(line: 934, column: 34, scope: !2572)
!2667 = !DILocation(line: 935, column: 21, scope: !2572)
!2668 = !DILocation(line: 935, column: 30, scope: !2572)
!2669 = !DILocation(line: 936, column: 13, scope: !2572)
!2670 = !DILocation(line: 937, column: 35, scope: !2572)
!2671 = !DILocation(line: 937, column: 39, scope: !2572)
!2672 = !DILocation(line: 937, column: 13, scope: !2572)
!2673 = !DILocation(line: 938, column: 35, scope: !2572)
!2674 = !DILocation(line: 938, column: 41, scope: !2572)
!2675 = !DILocation(line: 938, column: 13, scope: !2572)
!2676 = !DILocation(line: 939, column: 9, scope: !2573)
!2677 = distinct !{!2677, !2661, !2676}
!2678 = !DILocation(line: 950, column: 19, scope: !2579)
!2679 = !DILocation(line: 950, column: 13, scope: !2573)
!2680 = !DILocation(line: 951, column: 13, scope: !2578)
!2681 = !DILocation(line: 951, column: 27, scope: !2578)
!2682 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2587)
!2683 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2587)
!2684 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2587)
!2685 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2587)
!2686 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2587)
!2687 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2587)
!2688 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2587)
!2689 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2587)
!2690 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2587)
!2691 = !DILocalVariable(name: "consumer", arg: 1, scope: !2692, file: !1, line: 1592, type: !2357)
!2692 = distinct !DISubprogram(name: "streamCreateNACK", scope: !1, file: !1, line: 1592, type: !2693, isLocal: false, isDefinition: true, scopeLine: 1592, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!2350, !2357}
!2695 = !{!2691, !2696}
!2696 = !DILocalVariable(name: "nack", scope: !2692, file: !1, line: 1593, type: !2350)
!2697 = !DILocation(line: 1592, column: 46, scope: !2692, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 957, column: 32, scope: !2578)
!2699 = !DILocation(line: 1593, column: 24, scope: !2692, inlinedAt: !2698)
!2700 = !DILocation(line: 1594, column: 27, scope: !2692, inlinedAt: !2698)
!2701 = !DILocation(line: 1594, column: 11, scope: !2692, inlinedAt: !2698)
!2702 = !DILocation(line: 1594, column: 25, scope: !2692, inlinedAt: !2698)
!2703 = !DILocation(line: 1595, column: 11, scope: !2692, inlinedAt: !2698)
!2704 = !DILocation(line: 1595, column: 26, scope: !2692, inlinedAt: !2698)
!2705 = !DILocation(line: 1596, column: 11, scope: !2692, inlinedAt: !2698)
!2706 = !DILocation(line: 1596, column: 20, scope: !2692, inlinedAt: !2698)
!2707 = !DILocation(line: 1597, column: 5, scope: !2692, inlinedAt: !2698)
!2708 = !DILocation(line: 959, column: 37, scope: !2578)
!2709 = !DILocation(line: 959, column: 17, scope: !2578)
!2710 = !DILocation(line: 958, column: 17, scope: !2578)
!2711 = !DILocation(line: 961, column: 40, scope: !2578)
!2712 = !{!2395, !110, i64 16}
!2713 = !DILocation(line: 961, column: 17, scope: !2578)
!2714 = !DILocation(line: 960, column: 17, scope: !2578)
!2715 = !DILocation(line: 966, column: 32, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2578, file: !1, line: 966, column: 17)
!2717 = !DILocation(line: 966, column: 17, scope: !2578)
!2718 = !DILocalVariable(name: "na", arg: 1, scope: !2719, file: !1, line: 1601, type: !2350)
!2719 = distinct !DISubprogram(name: "streamFreeNACK", scope: !1, file: !1, line: 1601, type: !2720, isLocal: false, isDefinition: true, scopeLine: 1601, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !2350}
!2722 = !{!2718}
!2723 = !DILocation(line: 1601, column: 33, scope: !2719, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 967, column: 17, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 966, column: 38)
!2726 = !DILocation(line: 1602, column: 5, scope: !2719, inlinedAt: !2724)
!2727 = !DILocation(line: 1603, column: 1, scope: !2719, inlinedAt: !2724)
!2728 = !DILocation(line: 968, column: 39, scope: !2725)
!2729 = !DILocation(line: 968, column: 24, scope: !2725)
!2730 = !DILocation(line: 957, column: 25, scope: !2578)
!2731 = !DILocation(line: 969, column: 17, scope: !2725)
!2732 = !DILocation(line: 970, column: 33, scope: !2725)
!2733 = !DILocation(line: 970, column: 43, scope: !2725)
!2734 = !DILocation(line: 970, column: 17, scope: !2725)
!2735 = !DILocation(line: 972, column: 32, scope: !2725)
!2736 = !DILocation(line: 973, column: 39, scope: !2725)
!2737 = !DILocation(line: 973, column: 23, scope: !2725)
!2738 = !DILocation(line: 973, column: 37, scope: !2725)
!2739 = !DILocation(line: 974, column: 23, scope: !2725)
!2740 = !DILocation(line: 974, column: 38, scope: !2725)
!2741 = !DILocation(line: 976, column: 37, scope: !2725)
!2742 = !DILocation(line: 976, column: 17, scope: !2725)
!2743 = !DILocation(line: 977, column: 13, scope: !2725)
!2744 = !DILocation(line: 1593, column: 17, scope: !2692, inlinedAt: !2698)
!2745 = !DILocation(line: 977, column: 39, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 977, column: 24)
!2747 = !DILocation(line: 977, column: 65, scope: !2746)
!2748 = !DILocation(line: 977, column: 44, scope: !2746)
!2749 = !DILocation(line: 978, column: 17, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !1, line: 977, column: 71)
!2751 = !DILocation(line: 0, scope: !2578)
!2752 = !DILocation(line: 982, column: 17, scope: !2578)
!2753 = !DILocation(line: 786, column: 42, scope: !2335, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 983, column: 31, scope: !2584)
!2755 = !DILocation(line: 787, column: 47, scope: !2335, inlinedAt: !2754)
!2756 = !DILocation(line: 787, column: 37, scope: !2335, inlinedAt: !2754)
!2757 = !DILocation(line: 787, column: 12, scope: !2335, inlinedAt: !2754)
!2758 = !DILocation(line: 787, column: 5, scope: !2335, inlinedAt: !2754)
!2759 = !DILocation(line: 983, column: 23, scope: !2584)
!2760 = !DILocation(line: 984, column: 46, scope: !2584)
!2761 = !{!2762, !110, i64 0}
!2762 = !{!"sreamPropInfo", !110, i64 0, !110, i64 8}
!2763 = !DILocation(line: 984, column: 65, scope: !2584)
!2764 = !{!2762, !110, i64 8}
!2765 = !DILocation(line: 984, column: 17, scope: !2584)
!2766 = !DILocation(line: 985, column: 17, scope: !2584)
!2767 = !DILocation(line: 986, column: 13, scope: !2584)
!2768 = !DILocation(line: 987, column: 9, scope: !2579)
!2769 = !DILocation(line: 987, column: 9, scope: !2578)
!2770 = !DILocation(line: 988, column: 17, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !1, line: 988, column: 17)
!2772 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 987, column: 16)
!2773 = !DILocation(line: 988, column: 17, scope: !2772)
!2774 = !DILocation(line: 989, column: 47, scope: !2771)
!2775 = !DILocation(line: 989, column: 66, scope: !2771)
!2776 = !DILocation(line: 989, column: 17, scope: !2771)
!2777 = !DILocation(line: 992, column: 17, scope: !2573)
!2778 = !DILocation(line: 993, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2573, file: !1, line: 993, column: 13)
!2780 = !DILocation(line: 993, column: 28, scope: !2779)
!2781 = !DILocation(line: 993, column: 13, scope: !2573)
!2782 = distinct !{!2782, !2620, !2783}
!2783 = !DILocation(line: 994, column: 5, scope: !2545)
!2784 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 995, column: 5, scope: !2545)
!2786 = !DILocation(line: 757, column: 18, scope: !2050, inlinedAt: !2785)
!2787 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !2785)
!2788 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !2785)
!2789 = !DILocation(line: 996, column: 9, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 996, column: 9)
!2791 = !DILocation(line: 996, column: 9, scope: !2545)
!2792 = !DILocation(line: 996, column: 23, scope: !2790)
!2793 = !DILocation(line: 0, scope: !2610)
!2794 = !DILocation(line: 998, column: 1, scope: !2545)
!2795 = distinct !DISubprogram(name: "streamReplyWithRangeFromConsumerPEL", scope: !1, file: !1, line: 1013, type: !2796, isLocal: false, isDefinition: true, scopeLine: 1013, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!13, !2104, !69, !167, !167, !13, !2357}
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2812, !2815}
!2799 = !DILocalVariable(name: "c", arg: 1, scope: !2795, file: !1, line: 1013, type: !2104)
!2800 = !DILocalVariable(name: "s", arg: 2, scope: !2795, file: !1, line: 1013, type: !69)
!2801 = !DILocalVariable(name: "start", arg: 3, scope: !2795, file: !1, line: 1013, type: !167)
!2802 = !DILocalVariable(name: "end", arg: 4, scope: !2795, file: !1, line: 1013, type: !167)
!2803 = !DILocalVariable(name: "count", arg: 5, scope: !2795, file: !1, line: 1013, type: !13)
!2804 = !DILocalVariable(name: "consumer", arg: 6, scope: !2795, file: !1, line: 1013, type: !2357)
!2805 = !DILocalVariable(name: "ri", scope: !2795, file: !1, line: 1014, type: !388)
!2806 = !DILocalVariable(name: "startkey", scope: !2795, file: !1, line: 1015, type: !1414)
!2807 = !DILocalVariable(name: "endkey", scope: !2795, file: !1, line: 1016, type: !1414)
!2808 = !DILocalVariable(name: "arraylen", scope: !2795, file: !1, line: 1020, type: !13)
!2809 = !DILocalVariable(name: "arraylen_ptr", scope: !2795, file: !1, line: 1021, type: !7)
!2810 = !DILocalVariable(name: "thisid", scope: !2811, file: !1, line: 1026, type: !95)
!2811 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 1024, column: 57)
!2812 = !DILocalVariable(name: "id", scope: !2813, file: !1, line: 1036, type: !95)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !1, line: 1030, column: 9)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 1028, column: 13)
!2815 = !DILocalVariable(name: "nack", scope: !2816, file: !1, line: 1041, type: !2350)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !1, line: 1040, column: 16)
!2817 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 1037, column: 13, scope: !2813)
!2819 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1027, column: 9, scope: !2811)
!2821 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 1018, column: 14, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2795, file: !1, line: 1018, column: 9)
!2824 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1017, column: 5, scope: !2795)
!2826 = !DILocation(line: 1013, column: 52, scope: !2795)
!2827 = !DILocation(line: 1013, column: 63, scope: !2795)
!2828 = !DILocation(line: 1013, column: 76, scope: !2795)
!2829 = !DILocation(line: 1013, column: 93, scope: !2795)
!2830 = !DILocation(line: 1013, column: 105, scope: !2795)
!2831 = !DILocation(line: 1013, column: 128, scope: !2795)
!2832 = !DILocation(line: 1014, column: 5, scope: !2795)
!2833 = !DILocation(line: 1015, column: 5, scope: !2795)
!2834 = !DILocation(line: 1015, column: 19, scope: !2795)
!2835 = !DILocation(line: 1016, column: 5, scope: !2795)
!2836 = !DILocation(line: 1016, column: 19, scope: !2795)
!2837 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2825)
!2838 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2825)
!2839 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2825)
!2840 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2825)
!2841 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !2825)
!2842 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2825)
!2843 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2825)
!2844 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !2825)
!2845 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2825)
!2846 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2825)
!2847 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2825)
!2848 = !DILocation(line: 1018, column: 9, scope: !2823)
!2849 = !DILocation(line: 1018, column: 9, scope: !2795)
!2850 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !2822)
!2851 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !2822)
!2852 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !2822)
!2853 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !2822)
!2854 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !2822)
!2855 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !2822)
!2856 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !2822)
!2857 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !2822)
!2858 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !2822)
!2859 = !DILocation(line: 1018, column: 14, scope: !2823)
!2860 = !DILocation(line: 1020, column: 12, scope: !2795)
!2861 = !DILocation(line: 1021, column: 26, scope: !2795)
!2862 = !DILocation(line: 1021, column: 11, scope: !2795)
!2863 = !DILocation(line: 1022, column: 28, scope: !2795)
!2864 = !DILocation(line: 1014, column: 17, scope: !2795)
!2865 = !DILocation(line: 1022, column: 5, scope: !2795)
!2866 = !DILocation(line: 1023, column: 5, scope: !2795)
!2867 = !DILocation(line: 1024, column: 5, scope: !2795)
!2868 = !DILocation(line: 1025, column: 30, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 1025, column: 13)
!2870 = !DILocation(line: 1024, column: 11, scope: !2795)
!2871 = !DILocation(line: 1024, column: 24, scope: !2795)
!2872 = !DILocation(line: 1024, column: 35, scope: !2795)
!2873 = !DILocation(line: 1024, column: 47, scope: !2795)
!2874 = !DILocation(line: 1025, column: 17, scope: !2869)
!2875 = !DILocation(line: 1025, column: 41, scope: !2869)
!2876 = !DILocation(line: 1025, column: 20, scope: !2869)
!2877 = !DILocation(line: 1025, column: 50, scope: !2869)
!2878 = !DILocation(line: 1025, column: 13, scope: !2811)
!2879 = !DILocation(line: 1026, column: 9, scope: !2811)
!2880 = !DILocation(line: 1027, column: 27, scope: !2811)
!2881 = !DILocation(line: 1026, column: 18, scope: !2811)
!2882 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2820)
!2883 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2820)
!2884 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2820)
!2885 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2820)
!2886 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2820)
!2887 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !2820)
!2888 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2820)
!2889 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !2820)
!2890 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2820)
!2891 = !DILocation(line: 1028, column: 13, scope: !2814)
!2892 = !DILocation(line: 1029, column: 62, scope: !2814)
!2893 = !DILocation(line: 1028, column: 13, scope: !2811)
!2894 = !DILocation(line: 1035, column: 13, scope: !2813)
!2895 = !DILocation(line: 1037, column: 31, scope: !2813)
!2896 = !DILocation(line: 1036, column: 22, scope: !2813)
!2897 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !2818)
!2898 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !2818)
!2899 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !2818)
!2900 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !2818)
!2901 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !2818)
!2902 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !2818)
!2903 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !2818)
!2904 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1038, column: 13, scope: !2813)
!2906 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !2905)
!2907 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !2905)
!2908 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !2905)
!2909 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !2905)
!2910 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !2905)
!2911 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !2905)
!2912 = !DILocation(line: 1039, column: 31, scope: !2813)
!2913 = !{!2914, !110, i64 88}
!2914 = !{!"sharedObjectsStruct", !110, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !110, i64 72, !110, i64 80, !110, i64 88, !110, i64 96, !110, i64 104, !110, i64 112, !110, i64 120, !110, i64 128, !110, i64 136, !110, i64 144, !110, i64 152, !110, i64 160, !110, i64 168, !110, i64 176, !110, i64 184, !110, i64 192, !110, i64 200, !110, i64 208, !110, i64 216, !110, i64 224, !110, i64 232, !110, i64 240, !110, i64 248, !110, i64 256, !110, i64 264, !110, i64 272, !110, i64 280, !110, i64 288, !110, i64 296, !110, i64 304, !110, i64 312, !110, i64 320, !110, i64 328, !110, i64 336, !110, i64 344, !110, i64 352, !110, i64 360, !111, i64 368, !111, i64 448, !111, i64 80448, !111, i64 80704, !110, i64 80960, !110, i64 80968}
!2915 = !DILocation(line: 1039, column: 13, scope: !2813)
!2916 = !DILocation(line: 1040, column: 9, scope: !2813)
!2917 = !DILocation(line: 1041, column: 35, scope: !2816)
!2918 = !DILocation(line: 1041, column: 25, scope: !2816)
!2919 = !DILocation(line: 1042, column: 35, scope: !2816)
!2920 = !DILocation(line: 1042, column: 19, scope: !2816)
!2921 = !DILocation(line: 1042, column: 33, scope: !2816)
!2922 = !DILocation(line: 1043, column: 19, scope: !2816)
!2923 = !DILocation(line: 1043, column: 33, scope: !2816)
!2924 = !DILocation(line: 1045, column: 17, scope: !2811)
!2925 = !DILocation(line: 1046, column: 5, scope: !2795)
!2926 = distinct !{!2926, !2867, !2925}
!2927 = !DILocation(line: 0, scope: !2811)
!2928 = !DILocation(line: 1047, column: 5, scope: !2795)
!2929 = !DILocation(line: 1048, column: 5, scope: !2795)
!2930 = !DILocation(line: 1050, column: 1, scope: !2795)
!2931 = !DILocation(line: 1049, column: 5, scope: !2795)
!2932 = !DILocation(line: 1592, column: 46, scope: !2692)
!2933 = !DILocation(line: 1593, column: 24, scope: !2692)
!2934 = !DILocation(line: 1593, column: 17, scope: !2692)
!2935 = !DILocation(line: 1594, column: 27, scope: !2692)
!2936 = !DILocation(line: 1594, column: 11, scope: !2692)
!2937 = !DILocation(line: 1594, column: 25, scope: !2692)
!2938 = !DILocation(line: 1595, column: 11, scope: !2692)
!2939 = !DILocation(line: 1595, column: 26, scope: !2692)
!2940 = !DILocation(line: 1596, column: 11, scope: !2692)
!2941 = !DILocation(line: 1596, column: 20, scope: !2692)
!2942 = !DILocation(line: 1597, column: 5, scope: !2692)
!2943 = !DILocation(line: 1601, column: 33, scope: !2719)
!2944 = !DILocation(line: 1602, column: 11, scope: !2719)
!2945 = !DILocation(line: 1602, column: 5, scope: !2719)
!2946 = !DILocation(line: 1603, column: 1, scope: !2719)
!2947 = distinct !DISubprogram(name: "streamTypeLookupWriteOrCreate", scope: !1, file: !1, line: 1058, type: !2948, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!371, !2104, !371}
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "c", arg: 1, scope: !2947, file: !1, line: 1058, type: !2104)
!2952 = !DILocalVariable(name: "key", arg: 2, scope: !2947, file: !1, line: 1058, type: !371)
!2953 = !DILocalVariable(name: "o", scope: !2947, file: !1, line: 1059, type: !371)
!2954 = !DILocation(line: 1058, column: 45, scope: !2947)
!2955 = !DILocation(line: 1058, column: 54, scope: !2947)
!2956 = !DILocation(line: 1059, column: 33, scope: !2947)
!2957 = !DILocation(line: 1059, column: 15, scope: !2947)
!2958 = !DILocation(line: 1059, column: 11, scope: !2947)
!2959 = !DILocation(line: 1060, column: 11, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2947, file: !1, line: 1060, column: 9)
!2961 = !DILocation(line: 1060, column: 9, scope: !2947)
!2962 = !DILocation(line: 1061, column: 13, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2960, file: !1, line: 1060, column: 20)
!2964 = !DILocation(line: 1062, column: 18, scope: !2963)
!2965 = !DILocation(line: 1062, column: 9, scope: !2963)
!2966 = !DILocation(line: 1063, column: 5, scope: !2963)
!2967 = !DILocation(line: 1064, column: 16, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 1064, column: 13)
!2969 = distinct !DILexicalBlock(scope: !2960, file: !1, line: 1063, column: 12)
!2970 = !DILocation(line: 1064, column: 21, scope: !2968)
!2971 = !DILocation(line: 1064, column: 13, scope: !2969)
!2972 = !DILocation(line: 1065, column: 31, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !1, line: 1064, column: 36)
!2974 = !{!2914, !110, i64 112}
!2975 = !DILocation(line: 1065, column: 13, scope: !2973)
!2976 = !DILocation(line: 1066, column: 13, scope: !2973)
!2977 = !DILocation(line: 0, scope: !2973)
!2978 = !DILocation(line: 1070, column: 1, scope: !2947)
!2979 = distinct !DISubprogram(name: "string2ull", scope: !1, file: !1, line: 1077, type: !2980, isLocal: false, isDefinition: true, scopeLine: 1077, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2985)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!12, !2982, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DILocalVariable(name: "s", arg: 1, scope: !2979, file: !1, line: 1077, type: !2982)
!2987 = !DILocalVariable(name: "value", arg: 2, scope: !2979, file: !1, line: 1077, type: !2984)
!2988 = !DILocalVariable(name: "ll", scope: !2979, file: !1, line: 1078, type: !246)
!2989 = !DILocalVariable(name: "endptr", scope: !2979, file: !1, line: 1085, type: !10)
!2990 = !DILocation(line: 1077, column: 28, scope: !2979)
!2991 = !DILocation(line: 1077, column: 51, scope: !2979)
!2992 = !DILocation(line: 1078, column: 5, scope: !2979)
!2993 = !DILocation(line: 1079, column: 21, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2979, file: !1, line: 1079, column: 9)
!2995 = !DILocation(line: 1078, column: 15, scope: !2979)
!2996 = !DILocation(line: 1079, column: 9, scope: !2994)
!2997 = !DILocation(line: 1079, column: 9, scope: !2979)
!2998 = !DILocation(line: 1080, column: 13, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !1, line: 1080, column: 13)
!3000 = distinct !DILexicalBlock(scope: !2994, file: !1, line: 1079, column: 37)
!3001 = !DILocation(line: 1080, column: 16, scope: !2999)
!3002 = !DILocation(line: 1080, column: 13, scope: !3000)
!3003 = !DILocation(line: 1081, column: 16, scope: !3000)
!3004 = !DILocation(line: 1082, column: 9, scope: !3000)
!3005 = !DILocation(line: 1084, column: 5, scope: !2979)
!3006 = !DILocation(line: 1084, column: 11, scope: !2979)
!3007 = !DILocation(line: 1085, column: 5, scope: !2979)
!3008 = !DILocation(line: 1085, column: 11, scope: !2979)
!3009 = !DILocation(line: 1086, column: 14, scope: !2979)
!3010 = !DILocation(line: 1086, column: 12, scope: !2979)
!3011 = !DILocation(line: 1087, column: 9, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2979, file: !1, line: 1087, column: 9)
!3013 = !DILocation(line: 1087, column: 15, scope: !3012)
!3014 = !DILocation(line: 1087, column: 25, scope: !3012)
!3015 = !DILocation(line: 1087, column: 28, scope: !3012)
!3016 = !DILocation(line: 1087, column: 34, scope: !3012)
!3017 = !DILocation(line: 1087, column: 44, scope: !3012)
!3018 = !DILocation(line: 1087, column: 49, scope: !3012)
!3019 = !DILocation(line: 1087, column: 52, scope: !3012)
!3020 = !DILocation(line: 1087, column: 60, scope: !3012)
!3021 = !DILocation(line: 1087, column: 64, scope: !3012)
!3022 = !DILocation(line: 1087, column: 63, scope: !3012)
!3023 = !DILocation(line: 1087, column: 71, scope: !3012)
!3024 = !DILocation(line: 1087, column: 9, scope: !2979)
!3025 = !DILocation(line: 0, scope: !2979)
!3026 = !DILocation(line: 0, scope: !3012)
!3027 = !DILocation(line: 1090, column: 1, scope: !2979)
!3028 = distinct !DISubprogram(name: "streamGenericParseIDOrReply", scope: !1, file: !1, line: 1104, type: !3029, isLocal: false, isDefinition: true, scopeLine: 1104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!12, !2104, !371, !167, !57, !12}
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3039, !3040, !3041}
!3032 = !DILocalVariable(name: "c", arg: 1, scope: !3028, file: !1, line: 1104, type: !2104)
!3033 = !DILocalVariable(name: "o", arg: 2, scope: !3028, file: !1, line: 1104, type: !371)
!3034 = !DILocalVariable(name: "id", arg: 3, scope: !3028, file: !1, line: 1104, type: !167)
!3035 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3028, file: !1, line: 1104, type: !57)
!3036 = !DILocalVariable(name: "strict", arg: 5, scope: !3028, file: !1, line: 1104, type: !12)
!3037 = !DILocalVariable(name: "buf", scope: !3028, file: !1, line: 1105, type: !3038)
!3038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !399)
!3039 = !DILocalVariable(name: "dot", scope: !3028, file: !1, line: 1124, type: !10)
!3040 = !DILocalVariable(name: "ms", scope: !3028, file: !1, line: 1126, type: !2243)
!3041 = !DILocalVariable(name: "seq", scope: !3028, file: !1, line: 1126, type: !2243)
!3042 = !DILocation(line: 1104, column: 41, scope: !3028)
!3043 = !DILocation(line: 1104, column: 50, scope: !3028)
!3044 = !DILocation(line: 1104, column: 63, scope: !3028)
!3045 = !DILocation(line: 1104, column: 76, scope: !3028)
!3046 = !DILocation(line: 1104, column: 93, scope: !3028)
!3047 = !DILocation(line: 1105, column: 5, scope: !3028)
!3048 = !DILocation(line: 1105, column: 10, scope: !3028)
!3049 = !DILocation(line: 1106, column: 19, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1106, column: 9)
!3051 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1106, column: 9, scope: !3050)
!3053 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !3052)
!3054 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !3052)
!3055 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !3052)
!3056 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !3052)
!3057 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !3052)
!3058 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !3052)
!3059 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !3052)
!3060 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !3052)
!3061 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !3052)
!3062 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !3052)
!3063 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !3052)
!3064 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !3052)
!3065 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !3052)
!3066 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !3052)
!3067 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !3052)
!3068 = !DILocation(line: 0, scope: !3050)
!3069 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !3052)
!3070 = !DILocation(line: 1106, column: 9, scope: !3028)
!3071 = !DILocation(line: 0, scope: !678, inlinedAt: !3052)
!3072 = !DILocation(line: 1106, column: 24, scope: !3050)
!3073 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 1107, column: 23, scope: !3028)
!3075 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !3074)
!3076 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !3074)
!3077 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !3074)
!3078 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !3074)
!3079 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !3074)
!3080 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !3074)
!3081 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !3074)
!3082 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !3074)
!3083 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !3074)
!3084 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !3074)
!3085 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !3074)
!3086 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !3074)
!3087 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !3074)
!3088 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !3074)
!3089 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !3074)
!3090 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !3074)
!3091 = !DILocation(line: 0, scope: !678, inlinedAt: !3074)
!3092 = !DILocation(line: 0, scope: !3028)
!3093 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !3074)
!3094 = !DILocation(line: 1107, column: 37, scope: !3028)
!3095 = !DILocation(line: 1107, column: 5, scope: !3028)
!3096 = !DILocation(line: 1109, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1109, column: 9)
!3098 = !DILocation(line: 1109, column: 16, scope: !3097)
!3099 = !DILocation(line: 0, scope: !3097)
!3100 = !DILocation(line: 1109, column: 27, scope: !3097)
!3101 = !DILocation(line: 1109, column: 34, scope: !3097)
!3102 = !DILocation(line: 1109, column: 44, scope: !3097)
!3103 = !DILocation(line: 1109, column: 52, scope: !3097)
!3104 = !DILocation(line: 1113, column: 23, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1113, column: 9)
!3106 = !DILocation(line: 1109, column: 55, scope: !3097)
!3107 = !DILocation(line: 1109, column: 62, scope: !3097)
!3108 = !DILocation(line: 1109, column: 9, scope: !3028)
!3109 = !DILocation(line: 1113, column: 16, scope: !3105)
!3110 = !DILocation(line: 1113, column: 26, scope: !3105)
!3111 = !DILocation(line: 1113, column: 33, scope: !3105)
!3112 = !DILocation(line: 1113, column: 9, scope: !3028)
!3113 = !DILocation(line: 1117, column: 30, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3105, file: !1, line: 1117, column: 16)
!3115 = !DILocation(line: 1114, column: 16, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3105, file: !1, line: 1113, column: 42)
!3117 = !DILocation(line: 1116, column: 9, scope: !3116)
!3118 = !DILocation(line: 1117, column: 23, scope: !3114)
!3119 = !DILocation(line: 1117, column: 33, scope: !3114)
!3120 = !DILocation(line: 1117, column: 40, scope: !3114)
!3121 = !DILocation(line: 1117, column: 16, scope: !3105)
!3122 = !DILocation(line: 1118, column: 16, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 1117, column: 49)
!3124 = !DILocation(line: 1120, column: 9, scope: !3123)
!3125 = !DILocation(line: 1124, column: 17, scope: !3028)
!3126 = !DILocation(line: 1124, column: 11, scope: !3028)
!3127 = !DILocation(line: 1125, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1125, column: 9)
!3129 = !DILocation(line: 1125, column: 9, scope: !3028)
!3130 = !DILocation(line: 1125, column: 19, scope: !3128)
!3131 = !DILocation(line: 1125, column: 14, scope: !3128)
!3132 = !DILocation(line: 1126, column: 24, scope: !3028)
!3133 = !DILocation(line: 1127, column: 9, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1127, column: 9)
!3135 = !DILocation(line: 1127, column: 29, scope: !3134)
!3136 = !DILocation(line: 1127, column: 9, scope: !3028)
!3137 = !DILocation(line: 1128, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1128, column: 9)
!3139 = !DILocation(line: 1128, column: 30, scope: !3138)
!3140 = !DILocation(line: 1126, column: 28, scope: !3028)
!3141 = !DILocation(line: 1128, column: 16, scope: !3138)
!3142 = !DILocation(line: 1128, column: 39, scope: !3138)
!3143 = !DILocation(line: 1128, column: 9, scope: !3028)
!3144 = !DILocation(line: 1129, column: 9, scope: !3028)
!3145 = !DILocation(line: 1131, column: 15, scope: !3028)
!3146 = !DILocation(line: 1129, column: 19, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1129, column: 9)
!3148 = !DILocation(line: 1129, column: 15, scope: !3147)
!3149 = !DILocation(line: 1130, column: 14, scope: !3028)
!3150 = !DILocation(line: 1130, column: 9, scope: !3028)
!3151 = !DILocation(line: 1130, column: 12, scope: !3028)
!3152 = !DILocation(line: 1131, column: 9, scope: !3028)
!3153 = !DILocation(line: 1131, column: 13, scope: !3028)
!3154 = !DILocation(line: 1132, column: 5, scope: !3028)
!3155 = !DILocation(line: 1135, column: 9, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1135, column: 9)
!3157 = !DILocation(line: 1135, column: 9, scope: !3028)
!3158 = !DILocation(line: 1135, column: 12, scope: !3156)
!3159 = !DILocation(line: 0, scope: !3116)
!3160 = !DILocation(line: 1138, column: 1, scope: !3028)
!3161 = distinct !DISubprogram(name: "streamParseIDOrReply", scope: !1, file: !1, line: 1142, type: !3162, isLocal: false, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!12, !2104, !371, !167, !57}
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "c", arg: 1, scope: !3161, file: !1, line: 1142, type: !2104)
!3166 = !DILocalVariable(name: "o", arg: 2, scope: !3161, file: !1, line: 1142, type: !371)
!3167 = !DILocalVariable(name: "id", arg: 3, scope: !3161, file: !1, line: 1142, type: !167)
!3168 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3161, file: !1, line: 1142, type: !57)
!3169 = !DILocation(line: 1142, column: 34, scope: !3161)
!3170 = !DILocation(line: 1142, column: 43, scope: !3161)
!3171 = !DILocation(line: 1142, column: 56, scope: !3161)
!3172 = !DILocation(line: 1142, column: 69, scope: !3161)
!3173 = !DILocation(line: 1143, column: 12, scope: !3161)
!3174 = !DILocation(line: 1143, column: 5, scope: !3161)
!3175 = distinct !DISubprogram(name: "streamParseStrictIDOrReply", scope: !1, file: !1, line: 1149, type: !3162, isLocal: false, isDefinition: true, scopeLine: 1149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DILocalVariable(name: "c", arg: 1, scope: !3175, file: !1, line: 1149, type: !2104)
!3178 = !DILocalVariable(name: "o", arg: 2, scope: !3175, file: !1, line: 1149, type: !371)
!3179 = !DILocalVariable(name: "id", arg: 3, scope: !3175, file: !1, line: 1149, type: !167)
!3180 = !DILocalVariable(name: "missing_seq", arg: 4, scope: !3175, file: !1, line: 1149, type: !57)
!3181 = !DILocation(line: 1149, column: 40, scope: !3175)
!3182 = !DILocation(line: 1149, column: 49, scope: !3175)
!3183 = !DILocation(line: 1149, column: 62, scope: !3175)
!3184 = !DILocation(line: 1149, column: 75, scope: !3175)
!3185 = !DILocation(line: 1150, column: 12, scope: !3175)
!3186 = !DILocation(line: 1150, column: 5, scope: !3175)
!3187 = distinct !DISubprogram(name: "streamRewriteApproxMaxlen", scope: !1, file: !1, line: 1155, type: !3188, isLocal: false, isDefinition: true, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{null, !2104, !69, !12}
!3190 = !{!3191, !3192, !3193, !3194, !3195}
!3191 = !DILocalVariable(name: "c", arg: 1, scope: !3187, file: !1, line: 1155, type: !2104)
!3192 = !DILocalVariable(name: "s", arg: 2, scope: !3187, file: !1, line: 1155, type: !69)
!3193 = !DILocalVariable(name: "maxlen_arg_idx", arg: 3, scope: !3187, file: !1, line: 1155, type: !12)
!3194 = !DILocalVariable(name: "maxlen_obj", scope: !3187, file: !1, line: 1156, type: !371)
!3195 = !DILocalVariable(name: "equal_obj", scope: !3187, file: !1, line: 1157, type: !371)
!3196 = !DILocation(line: 1155, column: 40, scope: !3187)
!3197 = !DILocation(line: 1155, column: 51, scope: !3187)
!3198 = !DILocation(line: 1155, column: 58, scope: !3187)
!3199 = !DILocation(line: 1156, column: 58, scope: !3187)
!3200 = !DILocation(line: 1156, column: 24, scope: !3187)
!3201 = !DILocation(line: 1156, column: 11, scope: !3187)
!3202 = !DILocation(line: 1157, column: 23, scope: !3187)
!3203 = !DILocation(line: 1157, column: 11, scope: !3187)
!3204 = !DILocation(line: 1159, column: 5, scope: !3187)
!3205 = !DILocation(line: 1160, column: 50, scope: !3187)
!3206 = !DILocation(line: 1160, column: 5, scope: !3187)
!3207 = !DILocation(line: 1162, column: 5, scope: !3187)
!3208 = !DILocation(line: 1163, column: 5, scope: !3187)
!3209 = !DILocation(line: 1164, column: 1, scope: !3187)
!3210 = distinct !DISubprogram(name: "xaddCommand", scope: !1, file: !1, line: 1167, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3223, !3224, !3228, !3229, !3230, !3231}
!3212 = !DILocalVariable(name: "c", arg: 1, scope: !3210, file: !1, line: 1167, type: !2104)
!3213 = !DILocalVariable(name: "id", scope: !3210, file: !1, line: 1168, type: !95)
!3214 = !DILocalVariable(name: "id_given", scope: !3210, file: !1, line: 1169, type: !12)
!3215 = !DILocalVariable(name: "maxlen", scope: !3210, file: !1, line: 1170, type: !246)
!3216 = !DILocalVariable(name: "approx_maxlen", scope: !3210, file: !1, line: 1171, type: !12)
!3217 = !DILocalVariable(name: "maxlen_arg_idx", scope: !3210, file: !1, line: 1173, type: !12)
!3218 = !DILocalVariable(name: "i", scope: !3210, file: !1, line: 1176, type: !12)
!3219 = !DILocalVariable(name: "moreargs", scope: !3220, file: !1, line: 1179, type: !12)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !1, line: 1178, column: 30)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 1178, column: 5)
!3222 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1178, column: 5)
!3223 = !DILocalVariable(name: "opt", scope: !3220, file: !1, line: 1180, type: !10)
!3224 = !DILocalVariable(name: "next", scope: !3225, file: !1, line: 1187, type: !10)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1185, column: 59)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !1, line: 1185, column: 20)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !1, line: 1181, column: 13)
!3228 = !DILocalVariable(name: "field_pos", scope: !3210, file: !1, line: 1211, type: !12)
!3229 = !DILocalVariable(name: "o", scope: !3210, file: !1, line: 1220, type: !371)
!3230 = !DILocalVariable(name: "s", scope: !3210, file: !1, line: 1221, type: !69)
!3231 = !DILocalVariable(name: "idarg", scope: !3210, file: !1, line: 1250, type: !371)
!3232 = !DILocation(line: 1167, column: 26, scope: !3210)
!3233 = !DILocation(line: 1168, column: 5, scope: !3210)
!3234 = !DILocation(line: 1169, column: 9, scope: !3210)
!3235 = !DILocation(line: 1170, column: 5, scope: !3210)
!3236 = !DILocation(line: 1170, column: 15, scope: !3210)
!3237 = !DILocation(line: 1171, column: 9, scope: !3210)
!3238 = !DILocation(line: 1173, column: 9, scope: !3210)
!3239 = !DILocation(line: 1176, column: 9, scope: !3210)
!3240 = !DILocation(line: 1178, column: 5, scope: !3210)
!3241 = !DILocation(line: 1178, column: 19, scope: !3221)
!3242 = !{!2465, !527, i64 64}
!3243 = !DILocation(line: 1178, column: 14, scope: !3221)
!3244 = !DILocation(line: 1178, column: 5, scope: !3222)
!3245 = !DILocation(line: 1179, column: 36, scope: !3220)
!3246 = !DILocation(line: 1179, column: 13, scope: !3220)
!3247 = !DILocation(line: 1180, column: 24, scope: !3220)
!3248 = !{!2465, !110, i64 72}
!3249 = !DILocation(line: 1180, column: 21, scope: !3220)
!3250 = !DILocation(line: 1180, column: 33, scope: !3220)
!3251 = !DILocation(line: 1180, column: 15, scope: !3220)
!3252 = !DILocation(line: 1181, column: 13, scope: !3227)
!3253 = !DILocation(line: 1181, column: 20, scope: !3227)
!3254 = !DILocation(line: 1181, column: 27, scope: !3227)
!3255 = !DILocation(line: 1181, column: 30, scope: !3227)
!3256 = !DILocation(line: 1181, column: 37, scope: !3227)
!3257 = !DILocation(line: 1181, column: 13, scope: !3220)
!3258 = !DILocation(line: 1184, column: 13, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3227, file: !1, line: 1181, column: 46)
!3260 = !DILocation(line: 1185, column: 21, scope: !3226)
!3261 = !DILocation(line: 1185, column: 49, scope: !3226)
!3262 = !DILocation(line: 1185, column: 46, scope: !3226)
!3263 = !DILocation(line: 1187, column: 35, scope: !3225)
!3264 = !DILocation(line: 1187, column: 26, scope: !3225)
!3265 = !DILocation(line: 1187, column: 40, scope: !3225)
!3266 = !DILocation(line: 1187, column: 19, scope: !3225)
!3267 = !DILocation(line: 1189, column: 26, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1189, column: 17)
!3269 = !DILocation(line: 1189, column: 31, scope: !3268)
!3270 = !DILocation(line: 1189, column: 34, scope: !3268)
!3271 = !DILocation(line: 1189, column: 42, scope: !3268)
!3272 = !DILocation(line: 1189, column: 49, scope: !3268)
!3273 = !DILocation(line: 1189, column: 52, scope: !3268)
!3274 = !DILocation(line: 1189, column: 60, scope: !3268)
!3275 = !DILocation(line: 1189, column: 17, scope: !3225)
!3276 = !DILocation(line: 0, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3268, file: !1, line: 1192, column: 24)
!3278 = !DILocation(line: 1192, column: 56, scope: !3277)
!3279 = !DILocation(line: 1192, column: 38, scope: !3277)
!3280 = !DILocation(line: 1192, column: 49, scope: !3277)
!3281 = !DILocation(line: 1192, column: 59, scope: !3277)
!3282 = !DILocation(line: 1192, column: 67, scope: !3277)
!3283 = !DILocation(line: 1192, column: 24, scope: !3268)
!3284 = !DILocation(line: 1194, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3277, file: !1, line: 1192, column: 76)
!3286 = !DILocation(line: 0, scope: !3210)
!3287 = !DILocation(line: 0, scope: !3225)
!3288 = !DILocation(line: 1195, column: 57, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1195, column: 17)
!3290 = !DILocation(line: 1195, column: 48, scope: !3289)
!3291 = !DILocation(line: 1195, column: 17, scope: !3289)
!3292 = !DILocation(line: 1196, column: 17, scope: !3289)
!3293 = !DILocation(line: 1195, column: 17, scope: !3225)
!3294 = !DILocation(line: 1198, column: 17, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 1198, column: 17)
!3296 = !DILocation(line: 1198, column: 24, scope: !3295)
!3297 = !DILocation(line: 1198, column: 17, scope: !3225)
!3298 = !DILocation(line: 1199, column: 17, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3295, file: !1, line: 1198, column: 29)
!3300 = !DILocation(line: 1200, column: 17, scope: !3299)
!3301 = !DILocation(line: 0, scope: !3289)
!3302 = !DILocation(line: 1204, column: 9, scope: !3226)
!3303 = !DILocation(line: 1210, column: 5, scope: !3221)
!3304 = !DILocation(line: 1178, column: 26, scope: !3221)
!3305 = !DILocation(line: 1178, column: 5, scope: !3221)
!3306 = distinct !{!3306, !3244, !3307}
!3307 = !DILocation(line: 1210, column: 5, scope: !3222)
!3308 = !DILocation(line: 1168, column: 14, scope: !3210)
!3309 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 1206, column: 17, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !1, line: 1206, column: 17)
!3312 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 1204, column: 16)
!3313 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !3310)
!3314 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !3310)
!3315 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !3310)
!3316 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !3310)
!3317 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !3310)
!3318 = !DILocation(line: 1206, column: 64, scope: !3311)
!3319 = !DILocation(line: 1206, column: 17, scope: !3312)
!3320 = !DILocation(line: 0, scope: !3311)
!3321 = !DILocation(line: 1214, column: 13, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1214, column: 9)
!3323 = !DILocation(line: 1211, column: 22, scope: !3210)
!3324 = !DILocation(line: 1211, column: 9, scope: !3210)
!3325 = !DILocation(line: 1214, column: 18, scope: !3322)
!3326 = !DILocation(line: 1214, column: 31, scope: !3322)
!3327 = !DILocation(line: 1214, column: 35, scope: !3322)
!3328 = !DILocation(line: 1214, column: 64, scope: !3322)
!3329 = !DILocation(line: 1214, column: 9, scope: !3210)
!3330 = !DILocation(line: 1215, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 1214, column: 70)
!3332 = !DILocation(line: 1216, column: 9, scope: !3331)
!3333 = !DILocation(line: 1222, column: 49, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1222, column: 9)
!3335 = !DILocation(line: 1222, column: 46, scope: !3334)
!3336 = !DILocation(line: 1058, column: 45, scope: !2947, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1222, column: 14, scope: !3334)
!3338 = !DILocation(line: 1058, column: 54, scope: !2947, inlinedAt: !3337)
!3339 = !DILocation(line: 1059, column: 33, scope: !2947, inlinedAt: !3337)
!3340 = !DILocation(line: 1059, column: 15, scope: !2947, inlinedAt: !3337)
!3341 = !DILocation(line: 1059, column: 11, scope: !2947, inlinedAt: !3337)
!3342 = !DILocation(line: 1060, column: 11, scope: !2960, inlinedAt: !3337)
!3343 = !DILocation(line: 1060, column: 9, scope: !2947, inlinedAt: !3337)
!3344 = !DILocation(line: 1064, column: 16, scope: !2968, inlinedAt: !3337)
!3345 = !DILocation(line: 1064, column: 21, scope: !2968, inlinedAt: !3337)
!3346 = !DILocation(line: 1064, column: 13, scope: !2969, inlinedAt: !3337)
!3347 = !DILocation(line: 1069, column: 5, scope: !2947, inlinedAt: !3337)
!3348 = !DILocation(line: 1070, column: 1, scope: !2947, inlinedAt: !3337)
!3349 = !DILocation(line: 1220, column: 11, scope: !3210)
!3350 = !DILocation(line: 1222, column: 9, scope: !3210)
!3351 = !DILocation(line: 1065, column: 31, scope: !2973, inlinedAt: !3337)
!3352 = !DILocation(line: 1065, column: 13, scope: !2973, inlinedAt: !3337)
!3353 = !DILocation(line: 1066, column: 13, scope: !2973, inlinedAt: !3337)
!3354 = !DILocation(line: 1061, column: 13, scope: !2963, inlinedAt: !3337)
!3355 = !DILocation(line: 1062, column: 18, scope: !2963, inlinedAt: !3337)
!3356 = !DILocation(line: 1062, column: 9, scope: !2963, inlinedAt: !3337)
!3357 = !DILocation(line: 1063, column: 5, scope: !2963, inlinedAt: !3337)
!3358 = !DILocation(line: 1222, column: 59, scope: !3334)
!3359 = !DILocation(line: 1223, column: 12, scope: !3210)
!3360 = !DILocation(line: 1221, column: 13, scope: !3210)
!3361 = !DILocation(line: 1226, column: 31, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1226, column: 9)
!3363 = !DILocation(line: 1226, column: 35, scope: !3362)
!3364 = !DILocation(line: 1226, column: 50, scope: !3362)
!3365 = !DILocation(line: 1226, column: 54, scope: !3362)
!3366 = !DILocation(line: 1226, column: 65, scope: !3362)
!3367 = !DILocation(line: 1226, column: 46, scope: !3362)
!3368 = !DILocation(line: 1227, column: 14, scope: !3362)
!3369 = !DILocation(line: 1226, column: 9, scope: !3362)
!3370 = !DILocation(line: 1228, column: 9, scope: !3362)
!3371 = !DILocation(line: 1226, column: 9, scope: !3210)
!3372 = !DILocation(line: 1230, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3362, file: !1, line: 1229, column: 5)
!3374 = !DILocation(line: 1232, column: 9, scope: !3373)
!3375 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 1234, column: 5, scope: !3210)
!3377 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !3376)
!3378 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !3376)
!3379 = !DILocation(line: 780, column: 52, scope: !2101, inlinedAt: !3376)
!3380 = !DILocation(line: 780, column: 59, scope: !2101, inlinedAt: !3376)
!3381 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !3376)
!3382 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !3376)
!3383 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !3376)
!3384 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !3376)
!3385 = !DILocation(line: 1236, column: 26, scope: !3210)
!3386 = !DILocation(line: 1236, column: 32, scope: !3210)
!3387 = !DILocation(line: 1236, column: 29, scope: !3210)
!3388 = !DILocation(line: 1236, column: 5, scope: !3210)
!3389 = !DILocation(line: 1237, column: 49, scope: !3210)
!3390 = !DILocation(line: 1237, column: 46, scope: !3210)
!3391 = !DILocation(line: 1237, column: 60, scope: !3210)
!3392 = !DILocation(line: 1237, column: 64, scope: !3210)
!3393 = !DILocation(line: 1237, column: 5, scope: !3210)
!3394 = !DILocation(line: 1238, column: 17, scope: !3210)
!3395 = !{!556, !266, i64 2080}
!3396 = !DILocation(line: 1240, column: 9, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1240, column: 9)
!3398 = !DILocation(line: 1240, column: 16, scope: !3397)
!3399 = !DILocation(line: 1240, column: 9, scope: !3210)
!3400 = !DILocation(line: 1242, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 1242, column: 13)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 1240, column: 22)
!3403 = !DILocation(line: 1242, column: 13, scope: !3402)
!3404 = !DILocation(line: 1243, column: 58, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !1, line: 1242, column: 57)
!3406 = !DILocation(line: 1243, column: 55, scope: !3405)
!3407 = !DILocation(line: 1243, column: 69, scope: !3405)
!3408 = !DILocation(line: 1243, column: 73, scope: !3405)
!3409 = !DILocation(line: 1243, column: 13, scope: !3405)
!3410 = !DILocation(line: 1244, column: 9, scope: !3405)
!3411 = !DILocation(line: 1245, column: 13, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3402, file: !1, line: 1245, column: 13)
!3413 = !DILocation(line: 1245, column: 13, scope: !3402)
!3414 = !DILocation(line: 1155, column: 40, scope: !3187, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 1245, column: 28, scope: !3412)
!3416 = !DILocation(line: 1155, column: 51, scope: !3187, inlinedAt: !3415)
!3417 = !DILocation(line: 1155, column: 58, scope: !3187, inlinedAt: !3415)
!3418 = !DILocation(line: 1156, column: 58, scope: !3187, inlinedAt: !3415)
!3419 = !DILocation(line: 1156, column: 24, scope: !3187, inlinedAt: !3415)
!3420 = !DILocation(line: 1156, column: 11, scope: !3187, inlinedAt: !3415)
!3421 = !DILocation(line: 1157, column: 23, scope: !3187, inlinedAt: !3415)
!3422 = !DILocation(line: 1157, column: 11, scope: !3187, inlinedAt: !3415)
!3423 = !DILocation(line: 1159, column: 5, scope: !3187, inlinedAt: !3415)
!3424 = !DILocation(line: 1160, column: 50, scope: !3187, inlinedAt: !3415)
!3425 = !DILocation(line: 1160, column: 5, scope: !3187, inlinedAt: !3415)
!3426 = !DILocation(line: 1162, column: 5, scope: !3187, inlinedAt: !3415)
!3427 = !DILocation(line: 1163, column: 5, scope: !3187, inlinedAt: !3415)
!3428 = !DILocation(line: 1164, column: 1, scope: !3187, inlinedAt: !3415)
!3429 = !DILocation(line: 1245, column: 28, scope: !3412)
!3430 = !DILocation(line: 786, column: 42, scope: !2335, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 1250, column: 19, scope: !3210)
!3432 = !DILocation(line: 787, column: 47, scope: !2335, inlinedAt: !3431)
!3433 = !DILocation(line: 788, column: 29, scope: !2335, inlinedAt: !3431)
!3434 = !DILocation(line: 788, column: 36, scope: !2335, inlinedAt: !3431)
!3435 = !DILocation(line: 787, column: 37, scope: !2335, inlinedAt: !3431)
!3436 = !DILocation(line: 787, column: 12, scope: !2335, inlinedAt: !3431)
!3437 = !DILocation(line: 787, column: 5, scope: !2335, inlinedAt: !3431)
!3438 = !DILocation(line: 1250, column: 11, scope: !3210)
!3439 = !DILocation(line: 1251, column: 5, scope: !3210)
!3440 = !DILocation(line: 1252, column: 5, scope: !3210)
!3441 = !DILocation(line: 1256, column: 9, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 1256, column: 9)
!3443 = !DILocation(line: 1256, column: 9, scope: !3210)
!3444 = !DILocation(line: 1257, column: 29, scope: !3442)
!3445 = !DILocation(line: 1257, column: 36, scope: !3442)
!3446 = !DILocation(line: 1257, column: 33, scope: !3442)
!3447 = !DILocation(line: 1257, column: 9, scope: !3442)
!3448 = !DILocation(line: 0, scope: !3334)
!3449 = !DILocation(line: 1258, column: 1, scope: !3210)
!3450 = distinct !DISubprogram(name: "xrangeGenericCommand", scope: !1, file: !1, line: 1261, type: !3451, isLocal: false, isDefinition: true, scopeLine: 1261, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3453)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !2104, !12}
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3467}
!3454 = !DILocalVariable(name: "c", arg: 1, scope: !3450, file: !1, line: 1261, type: !2104)
!3455 = !DILocalVariable(name: "rev", arg: 2, scope: !3450, file: !1, line: 1261, type: !12)
!3456 = !DILocalVariable(name: "o", scope: !3450, file: !1, line: 1262, type: !371)
!3457 = !DILocalVariable(name: "s", scope: !3450, file: !1, line: 1263, type: !69)
!3458 = !DILocalVariable(name: "startid", scope: !3450, file: !1, line: 1264, type: !95)
!3459 = !DILocalVariable(name: "endid", scope: !3450, file: !1, line: 1264, type: !95)
!3460 = !DILocalVariable(name: "count", scope: !3450, file: !1, line: 1265, type: !246)
!3461 = !DILocalVariable(name: "startarg", scope: !3450, file: !1, line: 1266, type: !371)
!3462 = !DILocalVariable(name: "endarg", scope: !3450, file: !1, line: 1267, type: !371)
!3463 = !DILocalVariable(name: "j", scope: !3464, file: !1, line: 1274, type: !12)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !1, line: 1274, column: 9)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !1, line: 1273, column: 22)
!3466 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1273, column: 9)
!3467 = !DILocalVariable(name: "additional", scope: !3468, file: !1, line: 1275, type: !12)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !1, line: 1274, column: 43)
!3469 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 1274, column: 9)
!3470 = !DILocation(line: 1261, column: 35, scope: !3450)
!3471 = !DILocation(line: 1261, column: 42, scope: !3450)
!3472 = !DILocation(line: 1264, column: 5, scope: !3450)
!3473 = !DILocation(line: 1265, column: 5, scope: !3450)
!3474 = !DILocation(line: 1265, column: 15, scope: !3450)
!3475 = !DILocation(line: 1266, column: 22, scope: !3450)
!3476 = !DILocation(line: 0, scope: !3450)
!3477 = !DILocation(line: 1266, column: 11, scope: !3450)
!3478 = !DILocation(line: 1267, column: 20, scope: !3450)
!3479 = !DILocation(line: 1267, column: 11, scope: !3450)
!3480 = !DILocation(line: 1264, column: 14, scope: !3450)
!3481 = !DILocation(line: 1142, column: 34, scope: !3161, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1269, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1269, column: 9)
!3484 = !DILocation(line: 1142, column: 43, scope: !3161, inlinedAt: !3482)
!3485 = !DILocation(line: 1142, column: 56, scope: !3161, inlinedAt: !3482)
!3486 = !DILocation(line: 1142, column: 69, scope: !3161, inlinedAt: !3482)
!3487 = !DILocation(line: 1143, column: 12, scope: !3161, inlinedAt: !3482)
!3488 = !DILocation(line: 1143, column: 5, scope: !3161, inlinedAt: !3482)
!3489 = !DILocation(line: 1269, column: 53, scope: !3483)
!3490 = !DILocation(line: 1269, column: 9, scope: !3450)
!3491 = !DILocation(line: 1264, column: 23, scope: !3450)
!3492 = !DILocation(line: 1142, column: 34, scope: !3161, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 1270, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1270, column: 9)
!3495 = !DILocation(line: 1142, column: 43, scope: !3161, inlinedAt: !3493)
!3496 = !DILocation(line: 1142, column: 56, scope: !3161, inlinedAt: !3493)
!3497 = !DILocation(line: 1142, column: 69, scope: !3161, inlinedAt: !3493)
!3498 = !DILocation(line: 1143, column: 12, scope: !3161, inlinedAt: !3493)
!3499 = !DILocation(line: 1143, column: 5, scope: !3161, inlinedAt: !3493)
!3500 = !DILocation(line: 1270, column: 58, scope: !3494)
!3501 = !DILocation(line: 1270, column: 9, scope: !3450)
!3502 = !DILocation(line: 1273, column: 12, scope: !3466)
!3503 = !DILocation(line: 1273, column: 17, scope: !3466)
!3504 = !DILocation(line: 1273, column: 9, scope: !3450)
!3505 = !DILocation(line: 1274, column: 18, scope: !3464)
!3506 = !DILocation(line: 1274, column: 14, scope: !3464)
!3507 = !DILocation(line: 1274, column: 9, scope: !3464)
!3508 = !DILocation(line: 1275, column: 39, scope: !3468)
!3509 = !DILocation(line: 1275, column: 17, scope: !3468)
!3510 = !DILocation(line: 1276, column: 31, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3468, file: !1, line: 1276, column: 17)
!3512 = !DILocation(line: 1276, column: 28, scope: !3511)
!3513 = !DILocation(line: 1276, column: 40, scope: !3511)
!3514 = !DILocation(line: 1276, column: 17, scope: !3511)
!3515 = !DILocation(line: 1276, column: 53, scope: !3511)
!3516 = !DILocation(line: 1276, column: 72, scope: !3511)
!3517 = !DILocation(line: 1276, column: 58, scope: !3511)
!3518 = !DILocation(line: 1277, column: 61, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 1277, column: 21)
!3520 = distinct !DILexicalBlock(scope: !3511, file: !1, line: 1276, column: 78)
!3521 = !DILocation(line: 1277, column: 52, scope: !3519)
!3522 = !DILocation(line: 1277, column: 21, scope: !3519)
!3523 = !DILocation(line: 1278, column: 21, scope: !3519)
!3524 = !DILocation(line: 1277, column: 21, scope: !3520)
!3525 = !DILocation(line: 1279, column: 21, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 1279, column: 21)
!3527 = !DILocation(line: 1279, column: 27, scope: !3526)
!3528 = !DILocation(line: 1279, column: 21, scope: !3520)
!3529 = !DILocation(line: 1279, column: 38, scope: !3526)
!3530 = !DILocation(line: 1279, column: 32, scope: !3526)
!3531 = !DILocation(line: 1282, column: 35, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3511, file: !1, line: 1281, column: 20)
!3533 = !{!2914, !110, i64 128}
!3534 = !DILocation(line: 1282, column: 17, scope: !3532)
!3535 = !DILocation(line: 1283, column: 17, scope: !3532)
!3536 = !DILocation(line: 1285, column: 9, scope: !3469)
!3537 = !DILocation(line: 1274, column: 39, scope: !3469)
!3538 = !DILocation(line: 1274, column: 9, scope: !3469)
!3539 = !DILocation(line: 1274, column: 32, scope: !3469)
!3540 = !DILocation(line: 1274, column: 27, scope: !3469)
!3541 = distinct !{!3541, !3507, !3542}
!3542 = !DILocation(line: 1285, column: 9, scope: !3464)
!3543 = !DILocation(line: 0, scope: !3532)
!3544 = !DILocation(line: 1289, column: 40, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1289, column: 9)
!3546 = !DILocation(line: 1289, column: 37, scope: !3545)
!3547 = !DILocation(line: 1289, column: 55, scope: !3545)
!3548 = !{!2914, !110, i64 104}
!3549 = !DILocation(line: 1289, column: 14, scope: !3545)
!3550 = !DILocation(line: 1262, column: 11, scope: !3450)
!3551 = !DILocation(line: 1289, column: 72, scope: !3545)
!3552 = !DILocation(line: 1290, column: 9, scope: !3545)
!3553 = !DILocation(line: 1290, column: 12, scope: !3545)
!3554 = !DILocation(line: 1289, column: 9, scope: !3450)
!3555 = !DILocation(line: 1291, column: 12, scope: !3450)
!3556 = !DILocation(line: 1263, column: 13, scope: !3450)
!3557 = !DILocation(line: 1293, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3450, file: !1, line: 1293, column: 9)
!3559 = !DILocation(line: 1293, column: 15, scope: !3558)
!3560 = !DILocation(line: 1293, column: 9, scope: !3450)
!3561 = !DILocation(line: 1294, column: 27, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1293, column: 21)
!3563 = !DILocation(line: 1294, column: 9, scope: !3562)
!3564 = !DILocation(line: 1295, column: 5, scope: !3562)
!3565 = !DILocation(line: 1296, column: 19, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 1296, column: 13)
!3567 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1295, column: 12)
!3568 = !DILocation(line: 1296, column: 13, scope: !3567)
!3569 = !DILocation(line: 1296, column: 32, scope: !3566)
!3570 = !DILocation(line: 1296, column: 26, scope: !3566)
!3571 = !DILocation(line: 1297, column: 50, scope: !3567)
!3572 = !DILocation(line: 1297, column: 9, scope: !3567)
!3573 = !DILocation(line: 1299, column: 1, scope: !3450)
!3574 = distinct !DISubprogram(name: "xrangeCommand", scope: !1, file: !1, line: 1302, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3575)
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "c", arg: 1, scope: !3574, file: !1, line: 1302, type: !2104)
!3577 = !DILocation(line: 1302, column: 28, scope: !3574)
!3578 = !DILocation(line: 1303, column: 5, scope: !3574)
!3579 = !DILocation(line: 1304, column: 1, scope: !3574)
!3580 = distinct !DISubprogram(name: "xrevrangeCommand", scope: !1, file: !1, line: 1307, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1307, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3581)
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "c", arg: 1, scope: !3580, file: !1, line: 1307, type: !2104)
!3583 = !DILocation(line: 1307, column: 31, scope: !3580)
!3584 = !DILocation(line: 1308, column: 5, scope: !3580)
!3585 = !DILocation(line: 1309, column: 1, scope: !3580)
!3586 = distinct !DISubprogram(name: "xlenCommand", scope: !1, file: !1, line: 1312, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3587)
!3587 = !{!3588, !3589, !3590}
!3588 = !DILocalVariable(name: "c", arg: 1, scope: !3586, file: !1, line: 1312, type: !2104)
!3589 = !DILocalVariable(name: "o", scope: !3586, file: !1, line: 1313, type: !371)
!3590 = !DILocalVariable(name: "s", scope: !3586, file: !1, line: 1316, type: !69)
!3591 = !DILocation(line: 1312, column: 26, scope: !3586)
!3592 = !DILocation(line: 1314, column: 40, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !1, line: 1314, column: 9)
!3594 = !DILocation(line: 1314, column: 37, scope: !3593)
!3595 = !DILocation(line: 1314, column: 55, scope: !3593)
!3596 = !{!2914, !110, i64 32}
!3597 = !DILocation(line: 1314, column: 14, scope: !3593)
!3598 = !DILocation(line: 1313, column: 11, scope: !3586)
!3599 = !DILocation(line: 1314, column: 63, scope: !3593)
!3600 = !DILocation(line: 1315, column: 9, scope: !3593)
!3601 = !DILocation(line: 1315, column: 12, scope: !3593)
!3602 = !DILocation(line: 1314, column: 9, scope: !3586)
!3603 = !DILocation(line: 1316, column: 20, scope: !3586)
!3604 = !DILocation(line: 1316, column: 13, scope: !3586)
!3605 = !DILocation(line: 1317, column: 27, scope: !3586)
!3606 = !DILocation(line: 1317, column: 5, scope: !3586)
!3607 = !DILocation(line: 1318, column: 1, scope: !3586)
!3608 = !DILocation(line: 0, scope: !3593)
!3609 = distinct !DISubprogram(name: "xreadCommand", scope: !1, file: !1, line: 1328, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1328, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3621, !3622, !3624, !3625, !3626, !3627, !3629, !3632, !3633, !3635, !3638, !3639, !3640, !3641, !3646, !3647, !3648, !3650, !3653, !3654, !3655, !3656, !3657, !3662, !3665, !3666, !3667}
!3611 = !DILocalVariable(name: "c", arg: 1, scope: !3609, file: !1, line: 1328, type: !2104)
!3612 = !DILocalVariable(name: "timeout", scope: !3609, file: !1, line: 1329, type: !246)
!3613 = !DILocalVariable(name: "count", scope: !3609, file: !1, line: 1330, type: !246)
!3614 = !DILocalVariable(name: "streams_count", scope: !3609, file: !1, line: 1331, type: !12)
!3615 = !DILocalVariable(name: "streams_arg", scope: !3609, file: !1, line: 1332, type: !12)
!3616 = !DILocalVariable(name: "noack", scope: !3609, file: !1, line: 1333, type: !12)
!3617 = !DILocalVariable(name: "static_ids", scope: !3609, file: !1, line: 1335, type: !3618)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1024, elements: !3619)
!3619 = !{!3620}
!3620 = !DISubrange(count: 8)
!3621 = !DILocalVariable(name: "ids", scope: !3609, file: !1, line: 1336, type: !167)
!3622 = !DILocalVariable(name: "groups", scope: !3609, file: !1, line: 1337, type: !3623)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3624 = !DILocalVariable(name: "xreadgroup", scope: !3609, file: !1, line: 1338, type: !12)
!3625 = !DILocalVariable(name: "groupname", scope: !3609, file: !1, line: 1339, type: !371)
!3626 = !DILocalVariable(name: "consumername", scope: !3609, file: !1, line: 1340, type: !371)
!3627 = !DILocalVariable(name: "i", scope: !3628, file: !1, line: 1343, type: !12)
!3628 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1343, column: 5)
!3629 = !DILocalVariable(name: "moreargs", scope: !3630, file: !1, line: 1344, type: !12)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !1, line: 1343, column: 39)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1343, column: 5)
!3632 = !DILocalVariable(name: "o", scope: !3630, file: !1, line: 1345, type: !10)
!3633 = !DILocalVariable(name: "i", scope: !3634, file: !1, line: 1406, type: !12)
!3634 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1406, column: 5)
!3635 = !DILocalVariable(name: "id_idx", scope: !3636, file: !1, line: 1410, type: !12)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !1, line: 1406, column: 65)
!3637 = distinct !DILexicalBlock(scope: !3634, file: !1, line: 1406, column: 5)
!3638 = !DILocalVariable(name: "key", scope: !3636, file: !1, line: 1411, type: !371)
!3639 = !DILocalVariable(name: "o", scope: !3636, file: !1, line: 1412, type: !371)
!3640 = !DILocalVariable(name: "group", scope: !3636, file: !1, line: 1414, type: !144)
!3641 = !DILocalVariable(name: "s", scope: !3642, file: !1, line: 1441, type: !69)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1440, column: 20)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !1, line: 1440, column: 17)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 1431, column: 47)
!3645 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1431, column: 13)
!3646 = !DILocalVariable(name: "arraylen", scope: !3609, file: !1, line: 1467, type: !13)
!3647 = !DILocalVariable(name: "arraylen_ptr", scope: !3609, file: !1, line: 1468, type: !7)
!3648 = !DILocalVariable(name: "i", scope: !3649, file: !1, line: 1469, type: !12)
!3649 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1469, column: 5)
!3650 = !DILocalVariable(name: "o", scope: !3651, file: !1, line: 1470, type: !371)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !1, line: 1469, column: 45)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !1, line: 1469, column: 5)
!3653 = !DILocalVariable(name: "s", scope: !3651, file: !1, line: 1472, type: !69)
!3654 = !DILocalVariable(name: "gt", scope: !3651, file: !1, line: 1473, type: !167)
!3655 = !DILocalVariable(name: "serve_synchronously", scope: !3651, file: !1, line: 1474, type: !12)
!3656 = !DILocalVariable(name: "serve_history", scope: !3651, file: !1, line: 1475, type: !12)
!3657 = !DILocalVariable(name: "last", scope: !3658, file: !1, line: 1492, type: !167)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !1, line: 1488, column: 20)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !1, line: 1483, column: 17)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1479, column: 21)
!3661 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 1479, column: 13)
!3662 = !DILocalVariable(name: "start", scope: !3663, file: !1, line: 1512, type: !95)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !1, line: 1506, column: 34)
!3664 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 1506, column: 13)
!3665 = !DILocalVariable(name: "consumer", scope: !3663, file: !1, line: 1519, type: !2357)
!3666 = !DILocalVariable(name: "spi", scope: !3663, file: !1, line: 1522, type: !2549)
!3667 = !DILocalVariable(name: "flags", scope: !3663, file: !1, line: 1523, type: !12)
!3668 = !DILocation(line: 1328, column: 27, scope: !3609)
!3669 = !DILocation(line: 1329, column: 5, scope: !3609)
!3670 = !DILocation(line: 1329, column: 15, scope: !3609)
!3671 = !DILocation(line: 1330, column: 5, scope: !3609)
!3672 = !DILocation(line: 1330, column: 15, scope: !3609)
!3673 = !DILocation(line: 1331, column: 9, scope: !3609)
!3674 = !DILocation(line: 1332, column: 9, scope: !3609)
!3675 = !DILocation(line: 1333, column: 9, scope: !3609)
!3676 = !DILocation(line: 1335, column: 5, scope: !3609)
!3677 = !DILocation(line: 1335, column: 14, scope: !3609)
!3678 = !DILocation(line: 1336, column: 21, scope: !3609)
!3679 = !DILocation(line: 1336, column: 15, scope: !3609)
!3680 = !DILocation(line: 1337, column: 16, scope: !3609)
!3681 = !DILocation(line: 1338, column: 32, scope: !3609)
!3682 = !DILocation(line: 1338, column: 29, scope: !3609)
!3683 = !DILocation(line: 1338, column: 41, scope: !3609)
!3684 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 1338, column: 22, scope: !3609)
!3686 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !3685)
!3687 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !3685)
!3688 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !3685)
!3689 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !3685)
!3690 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !3685)
!3691 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !3685)
!3692 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !3685)
!3693 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !3685)
!3694 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !3685)
!3695 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !3685)
!3696 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !3685)
!3697 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !3685)
!3698 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !3685)
!3699 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !3685)
!3700 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !3685)
!3701 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !3685)
!3702 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !3685)
!3703 = !DILocation(line: 0, scope: !678, inlinedAt: !3685)
!3704 = !DILocation(line: 0, scope: !3609)
!3705 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !3685)
!3706 = !DILocation(line: 1338, column: 46, scope: !3609)
!3707 = !DILocation(line: 1339, column: 11, scope: !3609)
!3708 = !DILocation(line: 1340, column: 11, scope: !3609)
!3709 = !DILocation(line: 1343, column: 14, scope: !3628)
!3710 = !DILocation(line: 1343, column: 10, scope: !3628)
!3711 = !DILocation(line: 1343, column: 28, scope: !3631)
!3712 = !DILocation(line: 1343, column: 23, scope: !3631)
!3713 = !DILocation(line: 1343, column: 5, scope: !3628)
!3714 = !DILocation(line: 1389, column: 9, scope: !3609)
!3715 = !DILocation(line: 1345, column: 22, scope: !3630)
!3716 = !DILocation(line: 1344, column: 33, scope: !3630)
!3717 = !DILocation(line: 1344, column: 13, scope: !3630)
!3718 = !DILocation(line: 1345, column: 19, scope: !3630)
!3719 = !DILocation(line: 1345, column: 31, scope: !3630)
!3720 = !DILocation(line: 1345, column: 15, scope: !3630)
!3721 = !DILocation(line: 1346, column: 14, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1346, column: 13)
!3723 = !DILocation(line: 1346, column: 39, scope: !3722)
!3724 = !DILocation(line: 1346, column: 36, scope: !3722)
!3725 = !DILocation(line: 1347, column: 14, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3722, file: !1, line: 1346, column: 49)
!3727 = !DILocation(line: 1348, column: 47, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 1348, column: 17)
!3729 = !DILocation(line: 1348, column: 17, scope: !3728)
!3730 = !DILocation(line: 1349, column: 36, scope: !3728)
!3731 = !DILocation(line: 1348, column: 17, scope: !3726)
!3732 = !DILocation(line: 1350, column: 21, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3722, file: !1, line: 1350, column: 20)
!3734 = !DILocation(line: 1350, column: 43, scope: !3733)
!3735 = !DILocation(line: 1351, column: 14, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 1350, column: 56)
!3737 = !DILocation(line: 1352, column: 48, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3736, file: !1, line: 1352, column: 17)
!3739 = !DILocation(line: 1352, column: 17, scope: !3738)
!3740 = !DILocation(line: 1352, column: 72, scope: !3738)
!3741 = !DILocation(line: 1352, column: 17, scope: !3736)
!3742 = !DILocation(line: 1354, column: 17, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3736, file: !1, line: 1354, column: 17)
!3744 = !DILocation(line: 1354, column: 23, scope: !3743)
!3745 = !DILocation(line: 1354, column: 17, scope: !3736)
!3746 = !DILocation(line: 1354, column: 34, scope: !3743)
!3747 = !DILocation(line: 1354, column: 28, scope: !3743)
!3748 = !DILocation(line: 1355, column: 21, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3733, file: !1, line: 1355, column: 20)
!3750 = !DILocation(line: 1355, column: 45, scope: !3749)
!3751 = !DILocation(line: 1356, column: 28, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3749, file: !1, line: 1355, column: 58)
!3753 = !DILocation(line: 1357, column: 37, scope: !3752)
!3754 = !DILocation(line: 1358, column: 37, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 1358, column: 17)
!3756 = !DILocation(line: 1358, column: 17, scope: !3752)
!3757 = !DILocation(line: 1359, column: 17, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3755, file: !1, line: 1358, column: 43)
!3759 = !DILocation(line: 1362, column: 17, scope: !3758)
!3760 = !DILocation(line: 1366, column: 21, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3749, file: !1, line: 1366, column: 20)
!3762 = !DILocation(line: 1366, column: 55, scope: !3761)
!3763 = !DILocation(line: 1366, column: 43, scope: !3761)
!3764 = !DILocation(line: 1367, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !1, line: 1366, column: 61)
!3766 = !DILocation(line: 1368, column: 17, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !1, line: 1367, column: 30)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !1, line: 1367, column: 17)
!3769 = !DILocation(line: 1370, column: 17, scope: !3767)
!3770 = !DILocation(line: 1372, column: 34, scope: !3765)
!3771 = !DILocation(line: 1372, column: 25, scope: !3765)
!3772 = !DILocation(line: 1373, column: 37, scope: !3765)
!3773 = !DILocation(line: 1373, column: 28, scope: !3765)
!3774 = !DILocation(line: 1375, column: 9, scope: !3765)
!3775 = !DILocation(line: 1375, column: 21, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3761, file: !1, line: 1375, column: 20)
!3777 = !DILocation(line: 1375, column: 20, scope: !3761)
!3778 = !DILocation(line: 1376, column: 17, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 1375, column: 44)
!3780 = !DILocation(line: 1377, column: 17, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !1, line: 1376, column: 30)
!3782 = distinct !DILexicalBlock(scope: !3779, file: !1, line: 1376, column: 17)
!3783 = !DILocation(line: 1379, column: 17, scope: !3781)
!3784 = !DILocation(line: 1383, column: 31, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 1382, column: 16)
!3786 = !DILocation(line: 1383, column: 13, scope: !3785)
!3787 = !DILocation(line: 1384, column: 13, scope: !3785)
!3788 = !DILocation(line: 0, scope: !3628)
!3789 = !DILocation(line: 0, scope: !3779)
!3790 = !DILocation(line: 1386, column: 5, scope: !3631)
!3791 = !DILocation(line: 1343, column: 35, scope: !3631)
!3792 = !DILocation(line: 1343, column: 5, scope: !3631)
!3793 = distinct !{!3793, !3713, !3794}
!3794 = !DILocation(line: 1386, column: 5, scope: !3628)
!3795 = !DILocation(line: 0, scope: !3728)
!3796 = !DILocation(line: 1364, column: 27, scope: !3752)
!3797 = !DILocation(line: 1365, column: 13, scope: !3752)
!3798 = !DILocation(line: 1389, column: 21, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1389, column: 9)
!3800 = !DILocation(line: 1390, column: 27, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3799, file: !1, line: 1389, column: 27)
!3802 = !DILocation(line: 1390, column: 9, scope: !3801)
!3803 = !DILocation(line: 1391, column: 9, scope: !3801)
!3804 = !DILocation(line: 1396, column: 33, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1396, column: 9)
!3806 = !DILocation(line: 1396, column: 20, scope: !3805)
!3807 = !DILocation(line: 1397, column: 9, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3805, file: !1, line: 1396, column: 42)
!3809 = !DILocation(line: 1398, column: 9, scope: !3808)
!3810 = !DILocation(line: 1402, column: 23, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1402, column: 9)
!3812 = !DILocation(line: 1402, column: 9, scope: !3609)
!3813 = !DILocation(line: 1403, column: 40, scope: !3811)
!3814 = !DILocation(line: 1403, column: 39, scope: !3811)
!3815 = !DILocation(line: 1403, column: 15, scope: !3811)
!3816 = !DILocation(line: 1403, column: 9, scope: !3811)
!3817 = !DILocation(line: 1404, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1404, column: 9)
!3819 = !DILocation(line: 1404, column: 9, scope: !3609)
!3820 = !DILocation(line: 1404, column: 55, scope: !3818)
!3821 = !DILocation(line: 1404, column: 54, scope: !3818)
!3822 = !DILocation(line: 1404, column: 29, scope: !3818)
!3823 = !DILocation(line: 1404, column: 20, scope: !3818)
!3824 = !DILocation(line: 1406, column: 30, scope: !3634)
!3825 = !DILocation(line: 1406, column: 14, scope: !3634)
!3826 = !DILocation(line: 1406, column: 10, scope: !3634)
!3827 = !DILocation(line: 1406, column: 54, scope: !3637)
!3828 = !DILocation(line: 1406, column: 49, scope: !3637)
!3829 = !DILocation(line: 1406, column: 5, scope: !3634)
!3830 = !DILocation(line: 1467, column: 12, scope: !3609)
!3831 = !DILocation(line: 1468, column: 11, scope: !3609)
!3832 = !DILocation(line: 1469, column: 14, scope: !3649)
!3833 = !DILocation(line: 1469, column: 10, scope: !3649)
!3834 = !DILocation(line: 1469, column: 23, scope: !3652)
!3835 = !DILocation(line: 1469, column: 5, scope: !3649)
!3836 = !DILocation(line: 1534, column: 9, scope: !3609)
!3837 = !DILocation(line: 1410, column: 38, scope: !3636)
!3838 = !DILocation(line: 1410, column: 13, scope: !3636)
!3839 = !DILocation(line: 1411, column: 24, scope: !3636)
!3840 = !DILocation(line: 1411, column: 30, scope: !3636)
!3841 = !DILocation(line: 1411, column: 21, scope: !3636)
!3842 = !DILocation(line: 1411, column: 15, scope: !3636)
!3843 = !DILocation(line: 1412, column: 36, scope: !3636)
!3844 = !DILocation(line: 1412, column: 19, scope: !3636)
!3845 = !DILocation(line: 1412, column: 15, scope: !3636)
!3846 = !DILocation(line: 1413, column: 13, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1413, column: 13)
!3848 = !DILocation(line: 1413, column: 15, scope: !3847)
!3849 = !DILocation(line: 1413, column: 18, scope: !3847)
!3850 = !DILocation(line: 1413, column: 13, scope: !3636)
!3851 = !DILocation(line: 1414, column: 19, scope: !3636)
!3852 = !DILocation(line: 1418, column: 13, scope: !3636)
!3853 = !DILocation(line: 1419, column: 19, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !1, line: 1419, column: 17)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !1, line: 1418, column: 24)
!3856 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1418, column: 13)
!3857 = !DILocation(line: 1419, column: 27, scope: !3854)
!3858 = !DILocation(line: 1420, column: 44, scope: !3854)
!3859 = !DILocation(line: 1420, column: 59, scope: !3854)
!3860 = !DILocalVariable(name: "s", arg: 1, scope: !3861, file: !1, line: 1643, type: !69)
!3861 = distinct !DISubprogram(name: "streamLookupCG", scope: !1, file: !1, line: 1643, type: !3862, isLocal: false, isDefinition: true, scopeLine: 1643, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!144, !69, !440}
!3864 = !{!3860, !3865, !3866}
!3865 = !DILocalVariable(name: "groupname", arg: 2, scope: !3861, file: !1, line: 1643, type: !440)
!3866 = !DILocalVariable(name: "cg", scope: !3861, file: !1, line: 1645, type: !144)
!3867 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 1420, column: 26, scope: !3854)
!3869 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !3868)
!3870 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !3868)
!3871 = distinct !DILexicalBlock(scope: !3861, file: !1, line: 1644, column: 9)
!3872 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !3868)
!3873 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !3868)
!3874 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !3868)
!3875 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !3868)
!3877 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !3876)
!3878 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !3876)
!3879 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !3876)
!3880 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !3876)
!3881 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !3876)
!3882 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !3876)
!3883 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !3876)
!3884 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !3876)
!3885 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !3876)
!3886 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !3876)
!3887 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !3876)
!3888 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !3876)
!3889 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !3876)
!3890 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !3876)
!3891 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !3876)
!3892 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !3876)
!3893 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !3876)
!3894 = !DILocation(line: 0, scope: !678, inlinedAt: !3876)
!3895 = !DILocation(line: 0, scope: !3854)
!3896 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !3876)
!3897 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !3868)
!3898 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !3868)
!3899 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !3868)
!3900 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !3868)
!3901 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !3868)
!3902 = !DILocation(line: 1419, column: 17, scope: !3855)
!3903 = !DILocation(line: 1420, column: 65, scope: !3854)
!3904 = !DILocation(line: 1425, column: 49, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3854, file: !1, line: 1421, column: 13)
!3906 = !DILocation(line: 1425, column: 71, scope: !3905)
!3907 = !DILocation(line: 1422, column: 17, scope: !3905)
!3908 = !DILocation(line: 1426, column: 17, scope: !3905)
!3909 = !DILocation(line: 1428, column: 13, scope: !3855)
!3910 = !DILocation(line: 1428, column: 28, scope: !3855)
!3911 = !DILocation(line: 1429, column: 9, scope: !3855)
!3912 = !DILocation(line: 1431, column: 23, scope: !3645)
!3913 = !DILocation(line: 1431, column: 20, scope: !3645)
!3914 = !DILocation(line: 1431, column: 32, scope: !3645)
!3915 = !DILocation(line: 1431, column: 13, scope: !3645)
!3916 = !DILocation(line: 1431, column: 41, scope: !3645)
!3917 = !DILocation(line: 1431, column: 13, scope: !3636)
!3918 = !DILocation(line: 1432, column: 17, scope: !3644)
!3919 = !DILocation(line: 1433, column: 17, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !1, line: 1432, column: 29)
!3921 = distinct !DILexicalBlock(scope: !3644, file: !1, line: 1432, column: 17)
!3922 = !DILocation(line: 1438, column: 17, scope: !3920)
!3923 = !DILocation(line: 1440, column: 17, scope: !3644)
!3924 = !DILocation(line: 1441, column: 32, scope: !3642)
!3925 = !DILocation(line: 1441, column: 25, scope: !3642)
!3926 = !DILocation(line: 1442, column: 17, scope: !3642)
!3927 = !DILocation(line: 1442, column: 34, scope: !3642)
!3928 = !DILocation(line: 1443, column: 13, scope: !3642)
!3929 = !DILocation(line: 1444, column: 17, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 1443, column: 20)
!3931 = !DILocation(line: 1444, column: 29, scope: !3930)
!3932 = !DILocation(line: 1444, column: 32, scope: !3930)
!3933 = !DILocation(line: 1447, column: 13, scope: !3644)
!3934 = !DILocation(line: 1448, column: 30, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 1448, column: 20)
!3936 = !DILocation(line: 1448, column: 27, scope: !3935)
!3937 = !DILocation(line: 1448, column: 39, scope: !3935)
!3938 = !DILocation(line: 1448, column: 20, scope: !3935)
!3939 = !DILocation(line: 1448, column: 48, scope: !3935)
!3940 = !DILocation(line: 1448, column: 20, scope: !3645)
!3941 = !DILocation(line: 1449, column: 17, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3935, file: !1, line: 1448, column: 54)
!3943 = !DILocation(line: 1450, column: 17, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3945, file: !1, line: 1449, column: 30)
!3945 = distinct !DILexicalBlock(scope: !3942, file: !1, line: 1449, column: 17)
!3946 = !DILocation(line: 1453, column: 17, scope: !3944)
!3947 = !DILocation(line: 1458, column: 13, scope: !3942)
!3948 = !DILocation(line: 1458, column: 25, scope: !3942)
!3949 = !DILocation(line: 1458, column: 28, scope: !3942)
!3950 = !DILocation(line: 1460, column: 13, scope: !3942)
!3951 = !DILocation(line: 0, scope: !3944)
!3952 = !DILocation(line: 0, scope: !3942)
!3953 = !DILocation(line: 1462, column: 45, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3636, file: !1, line: 1462, column: 13)
!3955 = !DILocation(line: 1462, column: 42, scope: !3954)
!3956 = !DILocation(line: 1462, column: 56, scope: !3954)
!3957 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !3958)
!3958 = distinct !DILocation(line: 1462, column: 13, scope: !3954)
!3959 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !3958)
!3960 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !3958)
!3961 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !3958)
!3962 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !3958)
!3963 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !3958)
!3964 = !DILocation(line: 1462, column: 67, scope: !3954)
!3965 = !DILocation(line: 1462, column: 13, scope: !3636)
!3966 = !DILocation(line: 0, scope: !3954)
!3967 = !DILocation(line: 1406, column: 61, scope: !3637)
!3968 = !DILocation(line: 1406, column: 5, scope: !3637)
!3969 = distinct !{!3969, !3829, !3970}
!3970 = !DILocation(line: 1464, column: 5, scope: !3634)
!3971 = !DILocation(line: 1534, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1534, column: 9)
!3973 = !DILocation(line: 1470, column: 36, scope: !3651)
!3974 = !DILocation(line: 1470, column: 42, scope: !3651)
!3975 = !DILocation(line: 1470, column: 58, scope: !3651)
!3976 = !DILocation(line: 1470, column: 39, scope: !3651)
!3977 = !DILocation(line: 1470, column: 19, scope: !3651)
!3978 = !DILocation(line: 1470, column: 15, scope: !3651)
!3979 = !DILocation(line: 1471, column: 15, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3651, file: !1, line: 1471, column: 13)
!3981 = !DILocation(line: 1471, column: 13, scope: !3651)
!3982 = !DILocation(line: 1472, column: 24, scope: !3651)
!3983 = !DILocation(line: 1472, column: 17, scope: !3651)
!3984 = !DILocation(line: 1473, column: 27, scope: !3651)
!3985 = !DILocation(line: 1473, column: 19, scope: !3651)
!3986 = !DILocation(line: 1474, column: 13, scope: !3651)
!3987 = !DILocation(line: 1475, column: 13, scope: !3651)
!3988 = !DILocation(line: 1479, column: 13, scope: !3651)
!3989 = !DILocation(line: 1483, column: 21, scope: !3659)
!3990 = !DILocation(line: 1483, column: 24, scope: !3659)
!3991 = !DILocation(line: 1483, column: 38, scope: !3659)
!3992 = !DILocation(line: 1484, column: 21, scope: !3659)
!3993 = !DILocation(line: 1484, column: 25, scope: !3659)
!3994 = !DILocation(line: 1483, column: 17, scope: !3660)
!3995 = !DILocation(line: 1492, column: 35, scope: !3658)
!3996 = !DILocation(line: 1493, column: 24, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3658, file: !1, line: 1493, column: 21)
!3998 = !DILocation(line: 1493, column: 21, scope: !3997)
!3999 = !DILocation(line: 1493, column: 31, scope: !3997)
!4000 = !DILocation(line: 1492, column: 27, scope: !3658)
!4001 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 1493, column: 35, scope: !3997)
!4003 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !4002)
!4004 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !4002)
!4005 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !4002)
!4006 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !4002)
!4007 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !4002)
!4008 = !DILocation(line: 154, column: 24, scope: !346, inlinedAt: !4002)
!4009 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !4002)
!4010 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !4002)
!4011 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !4002)
!4012 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !4002)
!4013 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !4002)
!4014 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !4002)
!4015 = !DILocation(line: 0, scope: !3997)
!4016 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !4002)
!4017 = !DILocation(line: 1493, column: 21, scope: !3658)
!4018 = !DILocation(line: 1501, column: 20, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !1, line: 1501, column: 17)
!4020 = distinct !DILexicalBlock(scope: !3661, file: !1, line: 1498, column: 16)
!4021 = !DILocation(line: 1501, column: 17, scope: !4019)
!4022 = !DILocation(line: 1501, column: 27, scope: !4019)
!4023 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 1501, column: 31, scope: !4019)
!4025 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !4024)
!4026 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !4024)
!4027 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !4024)
!4028 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !4024)
!4029 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !4024)
!4030 = !DILocation(line: 154, column: 24, scope: !346, inlinedAt: !4024)
!4031 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !4024)
!4032 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !4024)
!4033 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !4024)
!4034 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !4024)
!4035 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !4024)
!4036 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !4024)
!4037 = !DILocation(line: 0, scope: !4019)
!4038 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !4024)
!4039 = !DILocation(line: 1501, column: 17, scope: !4020)
!4040 = !DILocation(line: 1503, column: 13, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4019, file: !1, line: 1501, column: 70)
!4042 = !DILocation(line: 1506, column: 13, scope: !3651)
!4043 = !DILocation(line: 1495, column: 27, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !3997, file: !1, line: 1493, column: 76)
!4045 = !DILocation(line: 1496, column: 17, scope: !4044)
!4046 = !DILocation(line: 1507, column: 21, scope: !3663)
!4047 = !DILocation(line: 1508, column: 26, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1508, column: 17)
!4049 = !DILocation(line: 1508, column: 17, scope: !3663)
!4050 = !DILocation(line: 1508, column: 47, scope: !4048)
!4051 = !DILocation(line: 1508, column: 32, scope: !4048)
!4052 = !DILocation(line: 1512, column: 13, scope: !3663)
!4053 = !DILocation(line: 1512, column: 30, scope: !3663)
!4054 = !DILocation(line: 1513, column: 22, scope: !3663)
!4055 = !DILocation(line: 1517, column: 13, scope: !3663)
!4056 = !DILocation(line: 1518, column: 31, scope: !3663)
!4057 = !DILocation(line: 1518, column: 28, scope: !3663)
!4058 = !DILocation(line: 1518, column: 13, scope: !3663)
!4059 = !DILocation(line: 1519, column: 29, scope: !3663)
!4060 = !DILocation(line: 1520, column: 17, scope: !3663)
!4061 = !DILocation(line: 1520, column: 57, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1520, column: 17)
!4063 = !DILocation(line: 1521, column: 71, scope: !4062)
!4064 = !DILocation(line: 1520, column: 36, scope: !4062)
!4065 = !DILocation(line: 1520, column: 25, scope: !4062)
!4066 = !DILocation(line: 0, scope: !3663)
!4067 = !DILocation(line: 1522, column: 13, scope: !3663)
!4068 = !DILocation(line: 1522, column: 38, scope: !3663)
!4069 = !DILocation(line: 1522, column: 35, scope: !3663)
!4070 = !DILocation(line: 1522, column: 34, scope: !3663)
!4071 = !DILocation(line: 1523, column: 17, scope: !3663)
!4072 = !DILocation(line: 1524, column: 17, scope: !3663)
!4073 = !DILocation(line: 1524, column: 24, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1524, column: 17)
!4075 = !DILocation(line: 1525, column: 17, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1525, column: 17)
!4077 = !DILocation(line: 1525, column: 17, scope: !3663)
!4078 = !DILocation(line: 1525, column: 38, scope: !4076)
!4079 = !DILocation(line: 1525, column: 32, scope: !4076)
!4080 = !DILocation(line: 0, scope: !4074)
!4081 = !DILocation(line: 1526, column: 50, scope: !3663)
!4082 = !DILocation(line: 1527, column: 34, scope: !3663)
!4083 = !DILocation(line: 1527, column: 43, scope: !3663)
!4084 = !DILocation(line: 1512, column: 22, scope: !3663)
!4085 = !DILocation(line: 1522, column: 28, scope: !3663)
!4086 = !DILocation(line: 1526, column: 13, scope: !3663)
!4087 = !DILocation(line: 1529, column: 17, scope: !3663)
!4088 = !DILocation(line: 1529, column: 37, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 1529, column: 17)
!4090 = !DILocation(line: 1529, column: 25, scope: !4089)
!4091 = !DILocation(line: 0, scope: !4089)
!4092 = !DILocation(line: 1530, column: 9, scope: !3664)
!4093 = !DILocation(line: 1530, column: 9, scope: !3663)
!4094 = !DILocation(line: 1531, column: 5, scope: !3652)
!4095 = !DILocation(line: 0, scope: !4048)
!4096 = !DILocation(line: 0, scope: !3980)
!4097 = !DILocation(line: 1469, column: 41, scope: !3652)
!4098 = !DILocation(line: 1469, column: 5, scope: !3652)
!4099 = distinct !{!4099, !3835, !4100}
!4100 = !DILocation(line: 1531, column: 5, scope: !3649)
!4101 = !DILocation(line: 1535, column: 9, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3972, file: !1, line: 1534, column: 19)
!4103 = !DILocation(line: 1536, column: 9, scope: !4102)
!4104 = !DILocation(line: 1540, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1540, column: 9)
!4106 = !DILocation(line: 1540, column: 17, scope: !4105)
!4107 = !DILocation(line: 1540, column: 9, scope: !3609)
!4108 = !DILocation(line: 1543, column: 16, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !1, line: 1543, column: 13)
!4110 = distinct !DILexicalBlock(scope: !4105, file: !1, line: 1540, column: 24)
!4111 = !{!2465, !527, i64 160}
!4112 = !DILocation(line: 1543, column: 22, scope: !4109)
!4113 = !DILocation(line: 1543, column: 13, scope: !4110)
!4114 = !DILocation(line: 1544, column: 31, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 1543, column: 38)
!4116 = !DILocation(line: 1544, column: 13, scope: !4115)
!4117 = !DILocation(line: 1545, column: 13, scope: !4115)
!4118 = !DILocation(line: 1547, column: 44, scope: !4110)
!4119 = !DILocation(line: 1547, column: 48, scope: !4110)
!4120 = !DILocation(line: 1547, column: 9, scope: !4110)
!4121 = !DILocation(line: 1552, column: 31, scope: !4110)
!4122 = !DILocation(line: 1552, column: 17, scope: !4110)
!4123 = !DILocation(line: 1552, column: 29, scope: !4110)
!4124 = !{!2465, !113, i64 416}
!4125 = !DILocation(line: 1558, column: 13, scope: !4110)
!4126 = !DILocation(line: 1559, column: 13, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !1, line: 1558, column: 24)
!4128 = distinct !DILexicalBlock(scope: !4110, file: !1, line: 1558, column: 13)
!4129 = !DILocation(line: 1560, column: 13, scope: !4127)
!4130 = !DILocation(line: 1561, column: 21, scope: !4127)
!4131 = !DILocation(line: 1561, column: 33, scope: !4127)
!4132 = !{!2465, !110, i64 424}
!4133 = !DILocation(line: 1562, column: 21, scope: !4127)
!4134 = !DILocation(line: 1562, column: 36, scope: !4127)
!4135 = !{!2465, !110, i64 432}
!4136 = !DILocation(line: 1563, column: 21, scope: !4127)
!4137 = !DILocation(line: 1563, column: 39, scope: !4127)
!4138 = !{!2465, !527, i64 456}
!4139 = !DILocation(line: 1564, column: 9, scope: !4127)
!4140 = !DILocation(line: 1565, column: 21, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4128, file: !1, line: 1564, column: 16)
!4142 = !DILocation(line: 1565, column: 33, scope: !4141)
!4143 = !DILocation(line: 1573, column: 23, scope: !3609)
!4144 = !DILocation(line: 1573, column: 5, scope: !3609)
!4145 = !DILocation(line: 1580, column: 5, scope: !3609)
!4146 = !DILocation(line: 1581, column: 13, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 1581, column: 9)
!4148 = !DILocation(line: 1581, column: 9, scope: !3609)
!4149 = !DILocation(line: 1581, column: 34, scope: !4147)
!4150 = !DILocation(line: 1581, column: 28, scope: !4147)
!4151 = !DILocation(line: 1582, column: 5, scope: !3609)
!4152 = !DILocation(line: 1583, column: 1, scope: !3609)
!4153 = !DILocation(line: 1643, column: 34, scope: !3861)
!4154 = !DILocation(line: 1643, column: 41, scope: !3861)
!4155 = !DILocation(line: 1644, column: 12, scope: !3871)
!4156 = !DILocation(line: 1644, column: 20, scope: !3871)
!4157 = !DILocation(line: 1644, column: 9, scope: !3861)
!4158 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 1646, column: 28, scope: !3861)
!4160 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4159)
!4161 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4159)
!4162 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4159)
!4163 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4159)
!4164 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4159)
!4165 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4159)
!4166 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4159)
!4167 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4159)
!4168 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4159)
!4169 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4159)
!4170 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4159)
!4171 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4159)
!4172 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4159)
!4173 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4159)
!4174 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4159)
!4175 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4159)
!4176 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4159)
!4177 = !DILocation(line: 0, scope: !678, inlinedAt: !4159)
!4178 = !DILocation(line: 0, scope: !3861)
!4179 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4159)
!4180 = !DILocation(line: 1645, column: 20, scope: !3861)
!4181 = !DILocation(line: 1645, column: 15, scope: !3861)
!4182 = !DILocation(line: 1647, column: 19, scope: !3861)
!4183 = !DILocation(line: 1647, column: 16, scope: !3861)
!4184 = !DILocation(line: 1647, column: 12, scope: !3861)
!4185 = !DILocation(line: 1648, column: 1, scope: !3861)
!4186 = distinct !DISubprogram(name: "streamLookupConsumer", scope: !1, file: !1, line: 1654, type: !4187, isLocal: false, isDefinition: true, scopeLine: 1654, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!2357, !144, !440, !12}
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "cg", arg: 1, scope: !4186, file: !1, line: 1654, type: !144)
!4191 = !DILocalVariable(name: "name", arg: 2, scope: !4186, file: !1, line: 1654, type: !440)
!4192 = !DILocalVariable(name: "create", arg: 3, scope: !4186, file: !1, line: 1654, type: !12)
!4193 = !DILocalVariable(name: "consumer", scope: !4186, file: !1, line: 1655, type: !2357)
!4194 = !DILocation(line: 1654, column: 48, scope: !4186)
!4195 = !DILocation(line: 1654, column: 56, scope: !4186)
!4196 = !DILocation(line: 1654, column: 66, scope: !4186)
!4197 = !DILocation(line: 1655, column: 44, scope: !4186)
!4198 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 1656, column: 32, scope: !4186)
!4200 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4199)
!4201 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4199)
!4202 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4199)
!4203 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4199)
!4204 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4199)
!4205 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4199)
!4206 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4199)
!4207 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4199)
!4208 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4199)
!4209 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4199)
!4210 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4199)
!4211 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4199)
!4212 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4199)
!4213 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4199)
!4214 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4199)
!4215 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4199)
!4216 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4199)
!4217 = !DILocation(line: 0, scope: !678, inlinedAt: !4199)
!4218 = !DILocation(line: 0, scope: !4186)
!4219 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4199)
!4220 = !DILocation(line: 1655, column: 32, scope: !4186)
!4221 = !DILocation(line: 1655, column: 21, scope: !4186)
!4222 = !DILocation(line: 1657, column: 21, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4186, file: !1, line: 1657, column: 9)
!4224 = !DILocation(line: 1657, column: 18, scope: !4223)
!4225 = !DILocation(line: 1657, column: 9, scope: !4186)
!4226 = !DILocation(line: 1658, column: 14, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !1, line: 1658, column: 13)
!4228 = distinct !DILexicalBlock(scope: !4223, file: !1, line: 1657, column: 34)
!4229 = !DILocation(line: 1658, column: 13, scope: !4228)
!4230 = !DILocation(line: 1659, column: 20, scope: !4228)
!4231 = !DILocation(line: 1660, column: 26, scope: !4228)
!4232 = !DILocation(line: 1660, column: 19, scope: !4228)
!4233 = !DILocation(line: 1660, column: 24, scope: !4228)
!4234 = !DILocation(line: 1661, column: 25, scope: !4228)
!4235 = !DILocation(line: 1661, column: 19, scope: !4228)
!4236 = !DILocation(line: 1661, column: 23, scope: !4228)
!4237 = !DILocation(line: 1662, column: 23, scope: !4228)
!4238 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 1662, column: 54, scope: !4228)
!4240 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4239)
!4241 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4239)
!4242 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4239)
!4243 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4239)
!4244 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4239)
!4245 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4239)
!4246 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4239)
!4247 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4239)
!4248 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4239)
!4249 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4239)
!4250 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4239)
!4251 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4239)
!4252 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4239)
!4253 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4239)
!4254 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4239)
!4255 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4239)
!4256 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4239)
!4257 = !DILocation(line: 0, scope: !678, inlinedAt: !4239)
!4258 = !DILocation(line: 0, scope: !4228)
!4259 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4239)
!4260 = !DILocation(line: 1662, column: 9, scope: !4228)
!4261 = !DILocation(line: 1664, column: 5, scope: !4228)
!4262 = !DILocation(line: 1665, column: 27, scope: !4186)
!4263 = !DILocation(line: 1665, column: 15, scope: !4186)
!4264 = !DILocation(line: 1665, column: 25, scope: !4186)
!4265 = !{!2395, !266, i64 0}
!4266 = !DILocation(line: 1666, column: 5, scope: !4186)
!4267 = !DILocation(line: 0, scope: !4227)
!4268 = !DILocation(line: 1667, column: 1, scope: !4186)
!4269 = distinct !DISubprogram(name: "streamFreeConsumer", scope: !1, file: !1, line: 1610, type: !4270, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !2357}
!4272 = !{!4273}
!4273 = !DILocalVariable(name: "sc", arg: 1, scope: !4269, file: !1, line: 1610, type: !2357)
!4274 = !DILocation(line: 1610, column: 41, scope: !4269)
!4275 = !DILocation(line: 1611, column: 17, scope: !4269)
!4276 = !DILocation(line: 1611, column: 5, scope: !4269)
!4277 = !DILocation(line: 1613, column: 17, scope: !4269)
!4278 = !DILocation(line: 1613, column: 5, scope: !4269)
!4279 = !DILocation(line: 1614, column: 11, scope: !4269)
!4280 = !DILocation(line: 1614, column: 5, scope: !4269)
!4281 = !DILocation(line: 1615, column: 1, scope: !4269)
!4282 = distinct !DISubprogram(name: "streamCreateCG", scope: !1, file: !1, line: 1621, type: !4283, isLocal: false, isDefinition: true, scopeLine: 1621, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!144, !69, !10, !13, !167}
!4285 = !{!4286, !4287, !4288, !4289, !4290}
!4286 = !DILocalVariable(name: "s", arg: 1, scope: !4282, file: !1, line: 1621, type: !69)
!4287 = !DILocalVariable(name: "name", arg: 2, scope: !4282, file: !1, line: 1621, type: !10)
!4288 = !DILocalVariable(name: "namelen", arg: 3, scope: !4282, file: !1, line: 1621, type: !13)
!4289 = !DILocalVariable(name: "id", arg: 4, scope: !4282, file: !1, line: 1621, type: !167)
!4290 = !DILocalVariable(name: "cg", scope: !4282, file: !1, line: 1626, type: !144)
!4291 = !DILocation(line: 1621, column: 34, scope: !4282)
!4292 = !DILocation(line: 1621, column: 43, scope: !4282)
!4293 = !DILocation(line: 1621, column: 56, scope: !4282)
!4294 = !DILocation(line: 1621, column: 75, scope: !4282)
!4295 = !DILocation(line: 1622, column: 12, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4282, file: !1, line: 1622, column: 9)
!4297 = !DILocation(line: 1622, column: 20, scope: !4296)
!4298 = !DILocation(line: 1622, column: 9, scope: !4282)
!4299 = !DILocation(line: 1622, column: 42, scope: !4296)
!4300 = !DILocation(line: 1622, column: 40, scope: !4296)
!4301 = !DILocation(line: 1622, column: 29, scope: !4296)
!4302 = !DILocation(line: 1623, column: 20, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4282, file: !1, line: 1623, column: 9)
!4304 = !DILocation(line: 1623, column: 9, scope: !4303)
!4305 = !DILocation(line: 1623, column: 61, scope: !4303)
!4306 = !DILocation(line: 1623, column: 58, scope: !4303)
!4307 = !DILocation(line: 1623, column: 9, scope: !4282)
!4308 = !DILocation(line: 1626, column: 20, scope: !4282)
!4309 = !DILocation(line: 1626, column: 15, scope: !4282)
!4310 = !DILocation(line: 1627, column: 15, scope: !4282)
!4311 = !DILocation(line: 1627, column: 9, scope: !4282)
!4312 = !DILocation(line: 1627, column: 13, scope: !4282)
!4313 = !DILocation(line: 1628, column: 21, scope: !4282)
!4314 = !DILocation(line: 1628, column: 9, scope: !4282)
!4315 = !DILocation(line: 1628, column: 19, scope: !4282)
!4316 = !DILocation(line: 1629, column: 19, scope: !4282)
!4317 = !DILocation(line: 1630, column: 18, scope: !4282)
!4318 = !DILocation(line: 1630, column: 5, scope: !4282)
!4319 = !DILocation(line: 0, scope: !4282)
!4320 = !DILocation(line: 1632, column: 1, scope: !4282)
!4321 = distinct !DISubprogram(name: "streamDelConsumer", scope: !1, file: !1, line: 1672, type: !4322, isLocal: false, isDefinition: true, scopeLine: 1672, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!57, !144, !440}
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330}
!4325 = !DILocalVariable(name: "cg", arg: 1, scope: !4321, file: !1, line: 1672, type: !144)
!4326 = !DILocalVariable(name: "name", arg: 2, scope: !4321, file: !1, line: 1672, type: !440)
!4327 = !DILocalVariable(name: "consumer", scope: !4321, file: !1, line: 1673, type: !2357)
!4328 = !DILocalVariable(name: "retval", scope: !4321, file: !1, line: 1676, type: !57)
!4329 = !DILocalVariable(name: "ri", scope: !4321, file: !1, line: 1680, type: !388)
!4330 = !DILocalVariable(name: "nack", scope: !4331, file: !1, line: 1684, type: !2350)
!4331 = distinct !DILexicalBlock(scope: !4321, file: !1, line: 1683, column: 25)
!4332 = !DILocation(line: 1672, column: 38, scope: !4321)
!4333 = !DILocation(line: 1672, column: 46, scope: !4321)
!4334 = !DILocation(line: 1654, column: 48, scope: !4186, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 1673, column: 32, scope: !4321)
!4336 = !DILocation(line: 1654, column: 56, scope: !4186, inlinedAt: !4335)
!4337 = !DILocation(line: 1654, column: 66, scope: !4186, inlinedAt: !4335)
!4338 = !DILocation(line: 1655, column: 44, scope: !4186, inlinedAt: !4335)
!4339 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 1656, column: 32, scope: !4186, inlinedAt: !4335)
!4341 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4340)
!4342 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4340)
!4343 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4340)
!4344 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4340)
!4345 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4340)
!4346 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4340)
!4347 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4340)
!4348 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4340)
!4349 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4340)
!4350 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4340)
!4351 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4340)
!4352 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4340)
!4353 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4340)
!4354 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4340)
!4355 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4340)
!4356 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4340)
!4357 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4340)
!4358 = !DILocation(line: 0, scope: !678, inlinedAt: !4340)
!4359 = !DILocation(line: 0, scope: !4321)
!4360 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4340)
!4361 = !DILocation(line: 1655, column: 32, scope: !4186, inlinedAt: !4335)
!4362 = !DILocation(line: 1655, column: 21, scope: !4186, inlinedAt: !4335)
!4363 = !DILocation(line: 1657, column: 21, scope: !4223, inlinedAt: !4335)
!4364 = !DILocation(line: 1657, column: 18, scope: !4223, inlinedAt: !4335)
!4365 = !DILocation(line: 1657, column: 9, scope: !4186, inlinedAt: !4335)
!4366 = !DILocation(line: 1658, column: 13, scope: !4228, inlinedAt: !4335)
!4367 = !DILocation(line: 1658, column: 22, scope: !4227, inlinedAt: !4335)
!4368 = !DILocation(line: 1667, column: 1, scope: !4186, inlinedAt: !4335)
!4369 = !DILocation(line: 1673, column: 21, scope: !4321)
!4370 = !DILocation(line: 1674, column: 9, scope: !4321)
!4371 = !DILocation(line: 1665, column: 27, scope: !4186, inlinedAt: !4335)
!4372 = !DILocation(line: 1665, column: 15, scope: !4186, inlinedAt: !4335)
!4373 = !DILocation(line: 1665, column: 25, scope: !4186, inlinedAt: !4335)
!4374 = !DILocation(line: 1666, column: 5, scope: !4186, inlinedAt: !4335)
!4375 = !DILocation(line: 1674, column: 18, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4321, file: !1, line: 1674, column: 9)
!4377 = !DILocation(line: 1676, column: 41, scope: !4321)
!4378 = !DILocation(line: 1676, column: 23, scope: !4321)
!4379 = !DILocation(line: 1676, column: 14, scope: !4321)
!4380 = !DILocation(line: 1680, column: 5, scope: !4321)
!4381 = !DILocation(line: 1681, column: 28, scope: !4321)
!4382 = !DILocation(line: 1680, column: 17, scope: !4321)
!4383 = !DILocation(line: 1681, column: 5, scope: !4321)
!4384 = !DILocation(line: 1682, column: 5, scope: !4321)
!4385 = !DILocation(line: 1683, column: 5, scope: !4321)
!4386 = !DILocation(line: 1683, column: 11, scope: !4321)
!4387 = !DILocation(line: 1684, column: 31, scope: !4331)
!4388 = !DILocation(line: 1684, column: 21, scope: !4331)
!4389 = !DILocation(line: 1685, column: 23, scope: !4331)
!4390 = !DILocation(line: 1685, column: 30, scope: !4331)
!4391 = !DILocation(line: 1685, column: 37, scope: !4331)
!4392 = !DILocation(line: 1685, column: 9, scope: !4331)
!4393 = !DILocation(line: 1601, column: 33, scope: !2719, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 1686, column: 9, scope: !4331)
!4395 = !DILocation(line: 1602, column: 5, scope: !2719, inlinedAt: !4394)
!4396 = !DILocation(line: 1603, column: 1, scope: !2719, inlinedAt: !4394)
!4397 = distinct !{!4397, !4385, !4398}
!4398 = !DILocation(line: 1687, column: 5, scope: !4321)
!4399 = !DILocation(line: 1688, column: 5, scope: !4321)
!4400 = !DILocation(line: 1691, column: 19, scope: !4321)
!4401 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4402)
!4402 = distinct !DILocation(line: 1691, column: 50, scope: !4321)
!4403 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4402)
!4404 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4402)
!4405 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4402)
!4406 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4402)
!4407 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4402)
!4408 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4402)
!4409 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4402)
!4410 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4402)
!4411 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4402)
!4412 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4402)
!4413 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4402)
!4414 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4402)
!4415 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4402)
!4416 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4402)
!4417 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4402)
!4418 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4402)
!4419 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4402)
!4420 = !DILocation(line: 0, scope: !678, inlinedAt: !4402)
!4421 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4402)
!4422 = !DILocation(line: 1691, column: 5, scope: !4321)
!4423 = !DILocation(line: 1610, column: 41, scope: !4269, inlinedAt: !4424)
!4424 = distinct !DILocation(line: 1692, column: 5, scope: !4321)
!4425 = !DILocation(line: 1611, column: 17, scope: !4269, inlinedAt: !4424)
!4426 = !DILocation(line: 1611, column: 5, scope: !4269, inlinedAt: !4424)
!4427 = !DILocation(line: 1613, column: 17, scope: !4269, inlinedAt: !4424)
!4428 = !DILocation(line: 1613, column: 5, scope: !4269, inlinedAt: !4424)
!4429 = !DILocation(line: 1614, column: 5, scope: !4269, inlinedAt: !4424)
!4430 = !DILocation(line: 1615, column: 1, scope: !4269, inlinedAt: !4424)
!4431 = !DILocation(line: 1694, column: 1, scope: !4321)
!4432 = distinct !DISubprogram(name: "xgroupCommand", scope: !1, file: !1, line: 1704, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1704, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4433)
!4433 = !{!4434, !4435, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4448, !4449, !4452}
!4434 = !DILocalVariable(name: "c", arg: 1, scope: !4432, file: !1, line: 1704, type: !2104)
!4435 = !DILocalVariable(name: "help", scope: !4432, file: !1, line: 1705, type: !4436)
!4436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 448, elements: !4437)
!4437 = !{!4438}
!4438 = !DISubrange(count: 7)
!4439 = !DILocalVariable(name: "s", scope: !4432, file: !1, line: 1714, type: !69)
!4440 = !DILocalVariable(name: "grpname", scope: !4432, file: !1, line: 1715, type: !440)
!4441 = !DILocalVariable(name: "cg", scope: !4432, file: !1, line: 1716, type: !144)
!4442 = !DILocalVariable(name: "opt", scope: !4432, file: !1, line: 1717, type: !10)
!4443 = !DILocalVariable(name: "mkstream", scope: !4432, file: !1, line: 1718, type: !12)
!4444 = !DILocalVariable(name: "o", scope: !4432, file: !1, line: 1719, type: !371)
!4445 = !DILocalVariable(name: "id", scope: !4446, file: !1, line: 1767, type: !95)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !1, line: 1766, column: 70)
!4447 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1766, column: 9)
!4448 = !DILocalVariable(name: "cg", scope: !4446, file: !1, line: 1787, type: !144)
!4449 = !DILocalVariable(name: "id", scope: !4450, file: !1, line: 1798, type: !95)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1797, column: 58)
!4451 = distinct !DILexicalBlock(scope: !4447, file: !1, line: 1797, column: 16)
!4452 = !DILocalVariable(name: "pending", scope: !4453, file: !1, line: 1822, type: !246)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !1, line: 1819, column: 64)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !1, line: 1819, column: 16)
!4455 = distinct !DILexicalBlock(scope: !4451, file: !1, line: 1808, column: 16)
!4456 = !DILocation(line: 1704, column: 28, scope: !4432)
!4457 = !DILocation(line: 1705, column: 5, scope: !4432)
!4458 = !DILocation(line: 1705, column: 17, scope: !4432)
!4459 = !DILocation(line: 1714, column: 13, scope: !4432)
!4460 = !DILocation(line: 1715, column: 9, scope: !4432)
!4461 = !DILocation(line: 1716, column: 15, scope: !4432)
!4462 = !DILocation(line: 1717, column: 20, scope: !4432)
!4463 = !DILocation(line: 1717, column: 17, scope: !4432)
!4464 = !DILocation(line: 1717, column: 29, scope: !4432)
!4465 = !DILocation(line: 1717, column: 11, scope: !4432)
!4466 = !DILocation(line: 1718, column: 9, scope: !4432)
!4467 = !DILocation(line: 1723, column: 12, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1723, column: 9)
!4469 = !DILocation(line: 1723, column: 17, scope: !4468)
!4470 = !DILocation(line: 1723, column: 22, scope: !4468)
!4471 = !DILocation(line: 1723, column: 26, scope: !4468)
!4472 = !DILocation(line: 1723, column: 9, scope: !4432)
!4473 = !DILocation(line: 1724, column: 24, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 1724, column: 13)
!4475 = distinct !DILexicalBlock(scope: !4468, file: !1, line: 1723, column: 52)
!4476 = !DILocation(line: 1724, column: 36, scope: !4474)
!4477 = !DILocation(line: 1724, column: 13, scope: !4474)
!4478 = !DILocation(line: 1724, column: 13, scope: !4475)
!4479 = !DILocation(line: 1725, column: 13, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4474, file: !1, line: 1724, column: 53)
!4481 = !DILocation(line: 1726, column: 13, scope: !4480)
!4482 = !DILocation(line: 1730, column: 5, scope: !4475)
!4483 = !DILocation(line: 1733, column: 9, scope: !4432)
!4484 = !DILocation(line: 1733, column: 17, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1733, column: 9)
!4486 = !DILocation(line: 1743, column: 22, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 1743, column: 9)
!4488 = !DILocation(line: 1734, column: 31, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4485, file: !1, line: 1733, column: 23)
!4490 = !DILocation(line: 1734, column: 34, scope: !4489)
!4491 = !DILocation(line: 1734, column: 13, scope: !4489)
!4492 = !DILocation(line: 1719, column: 11, scope: !4432)
!4493 = !DILocation(line: 1735, column: 13, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4489, file: !1, line: 1735, column: 13)
!4495 = !DILocation(line: 1735, column: 13, scope: !4489)
!4496 = !DILocation(line: 1736, column: 17, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !1, line: 1736, column: 17)
!4498 = distinct !DILexicalBlock(scope: !4494, file: !1, line: 1735, column: 16)
!4499 = !DILocation(line: 1736, column: 17, scope: !4498)
!4500 = !DILocation(line: 1737, column: 20, scope: !4498)
!4501 = !DILocation(line: 1738, column: 9, scope: !4498)
!4502 = !DILocation(line: 0, scope: !4432)
!4503 = !DILocation(line: 1739, column: 22, scope: !4489)
!4504 = !DILocation(line: 1739, column: 19, scope: !4489)
!4505 = !DILocation(line: 1739, column: 31, scope: !4489)
!4506 = !DILocation(line: 1740, column: 5, scope: !4489)
!4507 = !DILocation(line: 1743, column: 12, scope: !4487)
!4508 = !DILocation(line: 1743, column: 17, scope: !4487)
!4509 = !DILocation(line: 1743, column: 26, scope: !4487)
!4510 = !DILocation(line: 1745, column: 15, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 1745, column: 13)
!4512 = distinct !DILexicalBlock(scope: !4487, file: !1, line: 1743, column: 36)
!4513 = !DILocation(line: 1745, column: 13, scope: !4512)
!4514 = !DILocation(line: 1746, column: 13, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4511, file: !1, line: 1745, column: 24)
!4516 = !DILocation(line: 1750, column: 13, scope: !4515)
!4517 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 1754, column: 19, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 1754, column: 13)
!4520 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !4518)
!4521 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !4518)
!4522 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !4518)
!4523 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !4518)
!4524 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !4518)
!4525 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !4518)
!4527 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4526)
!4528 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4526)
!4529 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4526)
!4530 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4526)
!4531 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4526)
!4532 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4526)
!4533 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4526)
!4534 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4526)
!4535 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4526)
!4536 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4526)
!4537 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4526)
!4538 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4526)
!4539 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4526)
!4540 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4526)
!4541 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4526)
!4542 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4526)
!4543 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4526)
!4544 = !DILocation(line: 0, scope: !678, inlinedAt: !4526)
!4545 = !DILocation(line: 0, scope: !4519)
!4546 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4526)
!4547 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !4518)
!4548 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !4518)
!4549 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !4518)
!4550 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !4518)
!4551 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !4518)
!4552 = !DILocation(line: 1754, column: 54, scope: !4519)
!4553 = !DILocation(line: 1754, column: 46, scope: !4519)
!4554 = !DILocation(line: 1755, column: 15, scope: !4519)
!4555 = !DILocation(line: 1755, column: 39, scope: !4519)
!4556 = !DILocation(line: 1756, column: 15, scope: !4519)
!4557 = !DILocation(line: 1754, column: 13, scope: !4512)
!4558 = !DILocation(line: 1760, column: 62, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4519, file: !1, line: 1757, column: 9)
!4560 = !DILocation(line: 1760, column: 59, scope: !4559)
!4561 = !DILocation(line: 1760, column: 71, scope: !4559)
!4562 = !DILocation(line: 1758, column: 13, scope: !4559)
!4563 = !DILocation(line: 1761, column: 13, scope: !4559)
!4564 = !DILocation(line: 1766, column: 10, scope: !4447)
!4565 = !DILocation(line: 1766, column: 35, scope: !4447)
!4566 = !DILocation(line: 1766, column: 42, scope: !4447)
!4567 = !DILocation(line: 1766, column: 47, scope: !4447)
!4568 = !DILocation(line: 1766, column: 52, scope: !4447)
!4569 = !DILocation(line: 1766, column: 63, scope: !4447)
!4570 = !DILocation(line: 1766, column: 9, scope: !4432)
!4571 = !DILocation(line: 1767, column: 9, scope: !4446)
!4572 = !DILocation(line: 1768, column: 24, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4446, file: !1, line: 1768, column: 13)
!4574 = !DILocation(line: 1768, column: 21, scope: !4573)
!4575 = !DILocation(line: 1768, column: 33, scope: !4573)
!4576 = !DILocation(line: 1768, column: 14, scope: !4573)
!4577 = !DILocation(line: 1768, column: 13, scope: !4446)
!4578 = !DILocation(line: 1769, column: 17, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 1769, column: 17)
!4580 = distinct !DILexicalBlock(scope: !4573, file: !1, line: 1768, column: 43)
!4581 = !DILocation(line: 1769, column: 17, scope: !4580)
!4582 = !DILocation(line: 1770, column: 25, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !1, line: 1769, column: 20)
!4584 = !DILocation(line: 1771, column: 13, scope: !4583)
!4585 = !DILocation(line: 1780, column: 13, scope: !4446)
!4586 = !DILocation(line: 1772, column: 23, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4579, file: !1, line: 1771, column: 20)
!4588 = !DILocation(line: 1775, column: 52, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4573, file: !1, line: 1775, column: 20)
!4590 = !DILocation(line: 1775, column: 49, scope: !4589)
!4591 = !DILocation(line: 1767, column: 18, scope: !4446)
!4592 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 1775, column: 20, scope: !4589)
!4594 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !4593)
!4595 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !4593)
!4596 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !4593)
!4597 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !4593)
!4598 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !4593)
!4599 = !DILocation(line: 1775, column: 67, scope: !4589)
!4600 = !DILocation(line: 1775, column: 20, scope: !4573)
!4601 = !DILocation(line: 1776, column: 13, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4589, file: !1, line: 1775, column: 76)
!4603 = !DILocation(line: 1797, column: 5, scope: !4447)
!4604 = !DILocation(line: 1780, column: 15, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4446, file: !1, line: 1780, column: 13)
!4606 = !DILocation(line: 1781, column: 13, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4605, file: !1, line: 1780, column: 24)
!4608 = !DILocation(line: 1782, column: 17, scope: !4607)
!4609 = !DILocation(line: 1783, column: 22, scope: !4607)
!4610 = !DILocation(line: 1783, column: 28, scope: !4607)
!4611 = !DILocation(line: 1783, column: 25, scope: !4607)
!4612 = !DILocation(line: 1783, column: 13, scope: !4607)
!4613 = !DILocation(line: 1784, column: 20, scope: !4607)
!4614 = !DILocation(line: 1785, column: 9, scope: !4607)
!4615 = !DILocation(line: 0, scope: !4607)
!4616 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4617)
!4617 = distinct !DILocation(line: 1787, column: 49, scope: !4446)
!4618 = !DILocation(line: 0, scope: !4498)
!4619 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4617)
!4620 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4617)
!4621 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4617)
!4622 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4617)
!4623 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4617)
!4624 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4617)
!4625 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4617)
!4626 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4617)
!4627 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4617)
!4628 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4617)
!4629 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4617)
!4630 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4617)
!4631 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4617)
!4632 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4617)
!4633 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4617)
!4634 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4617)
!4635 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4617)
!4636 = !DILocation(line: 0, scope: !678, inlinedAt: !4617)
!4637 = !DILocation(line: 0, scope: !4446)
!4638 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4617)
!4639 = !DILocation(line: 1787, column: 24, scope: !4446)
!4640 = !DILocation(line: 1787, column: 19, scope: !4446)
!4641 = !DILocation(line: 1788, column: 13, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4446, file: !1, line: 1788, column: 13)
!4643 = !DILocation(line: 1788, column: 13, scope: !4446)
!4644 = !DILocation(line: 1789, column: 31, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4642, file: !1, line: 1788, column: 17)
!4646 = !{!2914, !110, i64 8}
!4647 = !DILocation(line: 1789, column: 13, scope: !4645)
!4648 = !DILocation(line: 1790, column: 25, scope: !4645)
!4649 = !DILocation(line: 1792, column: 36, scope: !4645)
!4650 = !DILocation(line: 1792, column: 33, scope: !4645)
!4651 = !DILocation(line: 1792, column: 47, scope: !4645)
!4652 = !DILocation(line: 1792, column: 51, scope: !4645)
!4653 = !DILocation(line: 1791, column: 13, scope: !4645)
!4654 = !DILocation(line: 1793, column: 9, scope: !4645)
!4655 = !DILocation(line: 1795, column: 17, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4642, file: !1, line: 1793, column: 16)
!4657 = !DILocation(line: 1794, column: 13, scope: !4656)
!4658 = !DILocation(line: 1797, column: 17, scope: !4451)
!4659 = !DILocation(line: 1797, column: 41, scope: !4451)
!4660 = !DILocation(line: 1797, column: 47, scope: !4451)
!4661 = !DILocation(line: 1797, column: 52, scope: !4451)
!4662 = !DILocation(line: 1797, column: 16, scope: !4447)
!4663 = !DILocation(line: 1798, column: 9, scope: !4450)
!4664 = !DILocation(line: 1799, column: 24, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4450, file: !1, line: 1799, column: 13)
!4666 = !DILocation(line: 1799, column: 21, scope: !4665)
!4667 = !DILocation(line: 1799, column: 33, scope: !4665)
!4668 = !DILocation(line: 1799, column: 14, scope: !4665)
!4669 = !DILocation(line: 1799, column: 13, scope: !4450)
!4670 = !DILocation(line: 1800, column: 21, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4665, file: !1, line: 1799, column: 43)
!4672 = !DILocation(line: 1801, column: 9, scope: !4671)
!4673 = !DILocation(line: 1801, column: 46, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4665, file: !1, line: 1801, column: 20)
!4675 = !DILocation(line: 1801, column: 43, scope: !4674)
!4676 = !DILocation(line: 1798, column: 18, scope: !4450)
!4677 = !DILocation(line: 1142, column: 34, scope: !3161, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 1801, column: 20, scope: !4674)
!4679 = !DILocation(line: 1142, column: 43, scope: !3161, inlinedAt: !4678)
!4680 = !DILocation(line: 1142, column: 56, scope: !3161, inlinedAt: !4678)
!4681 = !DILocation(line: 1142, column: 69, scope: !3161, inlinedAt: !4678)
!4682 = !DILocation(line: 1143, column: 12, scope: !3161, inlinedAt: !4678)
!4683 = !DILocation(line: 1143, column: 5, scope: !3161, inlinedAt: !4678)
!4684 = !DILocation(line: 1801, column: 61, scope: !4674)
!4685 = !DILocation(line: 1801, column: 20, scope: !4665)
!4686 = !DILocation(line: 1802, column: 13, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4674, file: !1, line: 1801, column: 70)
!4688 = !DILocation(line: 1808, column: 5, scope: !4451)
!4689 = !DILocation(line: 1804, column: 23, scope: !4450)
!4690 = !DILocation(line: 1805, column: 27, scope: !4450)
!4691 = !DILocation(line: 1805, column: 9, scope: !4450)
!4692 = !DILocation(line: 1806, column: 21, scope: !4450)
!4693 = !DILocation(line: 1807, column: 61, scope: !4450)
!4694 = !DILocation(line: 1807, column: 58, scope: !4450)
!4695 = !DILocation(line: 1807, column: 72, scope: !4450)
!4696 = !DILocation(line: 1807, column: 76, scope: !4450)
!4697 = !DILocation(line: 1807, column: 9, scope: !4450)
!4698 = !DILocation(line: 1808, column: 17, scope: !4455)
!4699 = !DILocation(line: 1808, column: 43, scope: !4455)
!4700 = !DILocation(line: 1808, column: 49, scope: !4455)
!4701 = !DILocation(line: 1808, column: 54, scope: !4455)
!4702 = !DILocation(line: 1808, column: 16, scope: !4451)
!4703 = !DILocation(line: 1809, column: 13, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !1, line: 1809, column: 13)
!4705 = distinct !DILexicalBlock(scope: !4455, file: !1, line: 1808, column: 60)
!4706 = !DILocation(line: 1809, column: 13, scope: !4705)
!4707 = !DILocation(line: 1810, column: 26, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4704, file: !1, line: 1809, column: 17)
!4709 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4710)
!4710 = distinct !DILocation(line: 1810, column: 58, scope: !4708)
!4711 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4710)
!4712 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4710)
!4713 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4710)
!4714 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4710)
!4715 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4710)
!4716 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4710)
!4717 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4710)
!4718 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4710)
!4719 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4710)
!4720 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4710)
!4721 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4710)
!4722 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4710)
!4723 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4710)
!4724 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4710)
!4725 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4710)
!4726 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4710)
!4727 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4710)
!4728 = !DILocation(line: 0, scope: !678, inlinedAt: !4710)
!4729 = !DILocation(line: 0, scope: !4708)
!4730 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4710)
!4731 = !DILocation(line: 1810, column: 13, scope: !4708)
!4732 = !DILocation(line: 1635, column: 29, scope: !141, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 1811, column: 13, scope: !4708)
!4734 = !DILocation(line: 1636, column: 29, scope: !141, inlinedAt: !4733)
!4735 = !DILocation(line: 1636, column: 5, scope: !141, inlinedAt: !4733)
!4736 = !DILocation(line: 1637, column: 29, scope: !141, inlinedAt: !4733)
!4737 = !DILocation(line: 1637, column: 5, scope: !141, inlinedAt: !4733)
!4738 = !DILocation(line: 1638, column: 5, scope: !141, inlinedAt: !4733)
!4739 = !DILocation(line: 1639, column: 1, scope: !141, inlinedAt: !4733)
!4740 = !DILocation(line: 1812, column: 31, scope: !4708)
!4741 = !{!2914, !110, i64 40}
!4742 = !DILocation(line: 1812, column: 13, scope: !4708)
!4743 = !DILocation(line: 1813, column: 25, scope: !4708)
!4744 = !DILocation(line: 1815, column: 36, scope: !4708)
!4745 = !DILocation(line: 1815, column: 33, scope: !4708)
!4746 = !DILocation(line: 1815, column: 47, scope: !4708)
!4747 = !DILocation(line: 1815, column: 51, scope: !4708)
!4748 = !DILocation(line: 1814, column: 13, scope: !4708)
!4749 = !DILocation(line: 1816, column: 9, scope: !4708)
!4750 = !DILocation(line: 1817, column: 31, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4704, file: !1, line: 1816, column: 16)
!4752 = !DILocation(line: 1817, column: 13, scope: !4751)
!4753 = !DILocation(line: 1819, column: 17, scope: !4454)
!4754 = !DILocation(line: 1819, column: 47, scope: !4454)
!4755 = !DILocation(line: 1819, column: 53, scope: !4454)
!4756 = !DILocation(line: 1819, column: 58, scope: !4454)
!4757 = !DILocation(line: 1819, column: 16, scope: !4455)
!4758 = !DILocation(line: 1822, column: 53, scope: !4453)
!4759 = !DILocation(line: 1822, column: 50, scope: !4453)
!4760 = !DILocation(line: 1822, column: 62, scope: !4453)
!4761 = !DILocation(line: 1822, column: 29, scope: !4453)
!4762 = !DILocation(line: 1822, column: 19, scope: !4453)
!4763 = !DILocation(line: 1823, column: 9, scope: !4453)
!4764 = !DILocation(line: 1824, column: 21, scope: !4453)
!4765 = !DILocation(line: 1826, column: 32, scope: !4453)
!4766 = !DILocation(line: 1826, column: 29, scope: !4453)
!4767 = !DILocation(line: 1826, column: 43, scope: !4453)
!4768 = !DILocation(line: 1826, column: 47, scope: !4453)
!4769 = !DILocation(line: 1825, column: 9, scope: !4453)
!4770 = !DILocation(line: 1827, column: 5, scope: !4453)
!4771 = !DILocation(line: 1827, column: 17, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4454, file: !1, line: 1827, column: 16)
!4773 = !DILocation(line: 1827, column: 16, scope: !4454)
!4774 = !DILocation(line: 1828, column: 9, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4772, file: !1, line: 1827, column: 41)
!4776 = !DILocation(line: 1829, column: 5, scope: !4775)
!4777 = !DILocation(line: 1830, column: 9, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4772, file: !1, line: 1829, column: 12)
!4779 = !DILocation(line: 1832, column: 1, scope: !4432)
!4780 = distinct !DISubprogram(name: "xsetidCommand", scope: !1, file: !1, line: 1837, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1837, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4781)
!4781 = !{!4782, !4783, !4784, !4785, !4786, !4789, !4790}
!4782 = !DILocalVariable(name: "c", arg: 1, scope: !4780, file: !1, line: 1837, type: !2104)
!4783 = !DILocalVariable(name: "o", scope: !4780, file: !1, line: 1838, type: !371)
!4784 = !DILocalVariable(name: "s", scope: !4780, file: !1, line: 1841, type: !69)
!4785 = !DILocalVariable(name: "id", scope: !4780, file: !1, line: 1842, type: !95)
!4786 = !DILocalVariable(name: "maxid", scope: !4787, file: !1, line: 1849, type: !95)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !1, line: 1848, column: 24)
!4788 = distinct !DILexicalBlock(scope: !4780, file: !1, line: 1848, column: 9)
!4789 = !DILocalVariable(name: "si", scope: !4787, file: !1, line: 1850, type: !1264)
!4790 = !DILocalVariable(name: "numfields", scope: !4787, file: !1, line: 1852, type: !196)
!4791 = !DILocation(line: 1837, column: 28, scope: !4780)
!4792 = !DILocation(line: 1838, column: 42, scope: !4780)
!4793 = !DILocation(line: 1838, column: 39, scope: !4780)
!4794 = !DILocation(line: 1838, column: 57, scope: !4780)
!4795 = !{!2914, !110, i64 120}
!4796 = !DILocation(line: 1838, column: 15, scope: !4780)
!4797 = !DILocation(line: 1838, column: 11, scope: !4780)
!4798 = !DILocation(line: 1839, column: 11, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4780, file: !1, line: 1839, column: 9)
!4800 = !DILocation(line: 1839, column: 19, scope: !4799)
!4801 = !DILocation(line: 1839, column: 22, scope: !4799)
!4802 = !DILocation(line: 1839, column: 9, scope: !4780)
!4803 = !DILocation(line: 1841, column: 20, scope: !4780)
!4804 = !DILocation(line: 1841, column: 13, scope: !4780)
!4805 = !DILocation(line: 1842, column: 5, scope: !4780)
!4806 = !DILocation(line: 1843, column: 41, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4780, file: !1, line: 1843, column: 9)
!4808 = !DILocation(line: 1843, column: 38, scope: !4807)
!4809 = !DILocation(line: 1842, column: 14, scope: !4780)
!4810 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !4811)
!4811 = distinct !DILocation(line: 1843, column: 9, scope: !4807)
!4812 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !4811)
!4813 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !4811)
!4814 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !4811)
!4815 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !4811)
!4816 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !4811)
!4817 = !DILocation(line: 1843, column: 56, scope: !4807)
!4818 = !DILocation(line: 1843, column: 9, scope: !4780)
!4819 = !DILocation(line: 1848, column: 12, scope: !4788)
!4820 = !DILocation(line: 1848, column: 19, scope: !4788)
!4821 = !DILocation(line: 1848, column: 9, scope: !4780)
!4822 = !DILocation(line: 1849, column: 9, scope: !4787)
!4823 = !DILocation(line: 1850, column: 9, scope: !4787)
!4824 = !DILocation(line: 1850, column: 24, scope: !4787)
!4825 = !DILocation(line: 488, column: 42, scope: !1260, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 1851, column: 9, scope: !4787)
!4827 = !DILocation(line: 488, column: 54, scope: !1260, inlinedAt: !4826)
!4828 = !DILocation(line: 488, column: 67, scope: !1260, inlinedAt: !4826)
!4829 = !DILocation(line: 488, column: 84, scope: !1260, inlinedAt: !4826)
!4830 = !DILocation(line: 488, column: 93, scope: !1260, inlinedAt: !4826)
!4831 = !DILocation(line: 491, column: 9, scope: !1260, inlinedAt: !4826)
!4832 = !DILocation(line: 494, column: 9, scope: !1303, inlinedAt: !4826)
!4833 = !DILocation(line: 494, column: 26, scope: !1303, inlinedAt: !4826)
!4834 = !DILocation(line: 498, column: 9, scope: !1260, inlinedAt: !4826)
!4835 = !DILocation(line: 501, column: 9, scope: !1321, inlinedAt: !4826)
!4836 = !DILocation(line: 501, column: 24, scope: !1321, inlinedAt: !4826)
!4837 = !DILocation(line: 506, column: 19, scope: !1260, inlinedAt: !4826)
!4838 = !DILocation(line: 506, column: 25, scope: !1260, inlinedAt: !4826)
!4839 = !DILocation(line: 506, column: 5, scope: !1260, inlinedAt: !4826)
!4840 = !DILocation(line: 507, column: 9, scope: !1260, inlinedAt: !4826)
!4841 = !DILocation(line: 0, scope: !1344, inlinedAt: !4826)
!4842 = !DILocation(line: 521, column: 13, scope: !1379, inlinedAt: !4826)
!4843 = !DILocation(line: 524, column: 9, scope: !1260, inlinedAt: !4826)
!4844 = !DILocation(line: 524, column: 16, scope: !1260, inlinedAt: !4826)
!4845 = !DILocation(line: 525, column: 9, scope: !1260, inlinedAt: !4826)
!4846 = !DILocation(line: 525, column: 12, scope: !1260, inlinedAt: !4826)
!4847 = !DILocation(line: 527, column: 9, scope: !1260, inlinedAt: !4826)
!4848 = !DILocation(line: 527, column: 13, scope: !1260, inlinedAt: !4826)
!4849 = !DILocation(line: 528, column: 1, scope: !1260, inlinedAt: !4826)
!4850 = !DILocation(line: 1852, column: 9, scope: !4787)
!4851 = !DILocation(line: 1849, column: 18, scope: !4787)
!4852 = !DILocation(line: 1852, column: 17, scope: !4787)
!4853 = !DILocation(line: 1853, column: 9, scope: !4787)
!4854 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 1854, column: 9, scope: !4787)
!4856 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !4855)
!4857 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !4855)
!4858 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 1856, column: 13, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4787, file: !1, line: 1856, column: 13)
!4861 = !DILocation(line: 153, column: 44, scope: !337, inlinedAt: !4859)
!4862 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !4859)
!4863 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !4859)
!4864 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !4859)
!4865 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !4859)
!4866 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !4859)
!4867 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !4859)
!4868 = !DILocation(line: 155, column: 29, scope: !352, inlinedAt: !4859)
!4869 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !4859)
!4870 = !DILocation(line: 1856, column: 13, scope: !4787)
!4871 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !4859)
!4872 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !4859)
!4873 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !4859)
!4874 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !4859)
!4875 = !DILocation(line: 0, scope: !4860)
!4876 = !DILocation(line: 158, column: 21, scope: !362, inlinedAt: !4859)
!4877 = !DILocation(line: 158, column: 14, scope: !356, inlinedAt: !4859)
!4878 = !DILocation(line: 0, scope: !337, inlinedAt: !4859)
!4879 = !DILocation(line: 1857, column: 13, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4860, file: !1, line: 1856, column: 46)
!4881 = !DILocation(line: 1859, column: 13, scope: !4880)
!4882 = !DILocation(line: 1861, column: 5, scope: !4788)
!4883 = !DILocation(line: 1862, column: 8, scope: !4780)
!4884 = !DILocation(line: 1862, column: 18, scope: !4780)
!4885 = !DILocation(line: 1863, column: 23, scope: !4780)
!4886 = !DILocation(line: 1863, column: 5, scope: !4780)
!4887 = !DILocation(line: 1864, column: 17, scope: !4780)
!4888 = !DILocation(line: 1865, column: 51, scope: !4780)
!4889 = !DILocation(line: 1865, column: 48, scope: !4780)
!4890 = !DILocation(line: 1865, column: 62, scope: !4780)
!4891 = !DILocation(line: 1865, column: 66, scope: !4780)
!4892 = !DILocation(line: 1865, column: 5, scope: !4780)
!4893 = !DILocation(line: 1866, column: 1, scope: !4780)
!4894 = distinct !DISubprogram(name: "xackCommand", scope: !1, file: !1, line: 1877, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1877, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !4895)
!4895 = !{!4896, !4897, !4898, !4899, !4900, !4902, !4905, !4906}
!4896 = !DILocalVariable(name: "c", arg: 1, scope: !4894, file: !1, line: 1877, type: !2104)
!4897 = !DILocalVariable(name: "group", scope: !4894, file: !1, line: 1878, type: !144)
!4898 = !DILocalVariable(name: "o", scope: !4894, file: !1, line: 1879, type: !371)
!4899 = !DILocalVariable(name: "acknowledged", scope: !4894, file: !1, line: 1891, type: !12)
!4900 = !DILocalVariable(name: "j", scope: !4901, file: !1, line: 1892, type: !12)
!4901 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 1892, column: 5)
!4902 = !DILocalVariable(name: "id", scope: !4903, file: !1, line: 1893, type: !95)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !1, line: 1892, column: 39)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !1, line: 1892, column: 5)
!4905 = !DILocalVariable(name: "buf", scope: !4903, file: !1, line: 1894, type: !1414)
!4906 = !DILocalVariable(name: "nack", scope: !4903, file: !1, line: 1901, type: !2350)
!4907 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 1896, column: 9, scope: !4903)
!4909 = !DILocation(line: 1877, column: 26, scope: !4894)
!4910 = !DILocation(line: 1878, column: 15, scope: !4894)
!4911 = !DILocation(line: 1879, column: 32, scope: !4894)
!4912 = !DILocation(line: 1879, column: 38, scope: !4894)
!4913 = !DILocation(line: 1879, column: 35, scope: !4894)
!4914 = !DILocation(line: 1879, column: 15, scope: !4894)
!4915 = !DILocation(line: 1879, column: 11, scope: !4894)
!4916 = !DILocation(line: 1880, column: 9, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 1880, column: 9)
!4918 = !DILocation(line: 1880, column: 9, scope: !4894)
!4919 = !DILocation(line: 1881, column: 13, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !1, line: 1881, column: 13)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !1, line: 1880, column: 12)
!4922 = !DILocation(line: 1881, column: 13, scope: !4921)
!4923 = !DILocation(line: 1882, column: 35, scope: !4921)
!4924 = !DILocation(line: 1882, column: 42, scope: !4921)
!4925 = !DILocation(line: 1882, column: 39, scope: !4921)
!4926 = !DILocation(line: 1882, column: 51, scope: !4921)
!4927 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 1882, column: 17, scope: !4921)
!4929 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !4928)
!4930 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !4928)
!4931 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !4928)
!4932 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !4928)
!4933 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !4928)
!4934 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !4928)
!4935 = !DILocation(line: 1883, column: 5, scope: !4921)
!4936 = !DILocation(line: 1886, column: 19, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 1886, column: 9)
!4938 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !4939)
!4939 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !4928)
!4940 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !4939)
!4941 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !4939)
!4942 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !4939)
!4943 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !4939)
!4944 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !4939)
!4945 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !4939)
!4946 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !4939)
!4947 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !4939)
!4948 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !4939)
!4949 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !4939)
!4950 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !4939)
!4951 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !4939)
!4952 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !4939)
!4953 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !4939)
!4954 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !4939)
!4955 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !4939)
!4956 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !4939)
!4957 = !DILocation(line: 0, scope: !678, inlinedAt: !4939)
!4958 = !DILocation(line: 0, scope: !4921)
!4959 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !4939)
!4960 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !4928)
!4961 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !4928)
!4962 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !4928)
!4963 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !4928)
!4964 = !DILocation(line: 1886, column: 28, scope: !4937)
!4965 = !DILocation(line: 1887, column: 27, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4937, file: !1, line: 1886, column: 37)
!4967 = !DILocation(line: 1887, column: 9, scope: !4966)
!4968 = !DILocation(line: 1888, column: 9, scope: !4966)
!4969 = !DILocation(line: 1891, column: 9, scope: !4894)
!4970 = !DILocation(line: 1892, column: 14, scope: !4901)
!4971 = !DILocation(line: 1892, column: 10, scope: !4901)
!4972 = !DILocation(line: 1892, column: 28, scope: !4904)
!4973 = !DILocation(line: 1892, column: 23, scope: !4904)
!4974 = !DILocation(line: 1892, column: 5, scope: !4901)
!4975 = !DILocation(line: 1893, column: 9, scope: !4903)
!4976 = !DILocation(line: 1894, column: 9, scope: !4903)
!4977 = !DILocation(line: 1894, column: 23, scope: !4903)
!4978 = !DILocation(line: 1895, column: 45, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4903, file: !1, line: 1895, column: 13)
!4980 = !DILocation(line: 1895, column: 42, scope: !4979)
!4981 = !DILocation(line: 1893, column: 18, scope: !4903)
!4982 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 1895, column: 13, scope: !4979)
!4984 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !4983)
!4985 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !4983)
!4986 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !4983)
!4987 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !4983)
!4988 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !4983)
!4989 = !DILocation(line: 1895, column: 60, scope: !4979)
!4990 = !DILocation(line: 1895, column: 13, scope: !4903)
!4991 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !4908)
!4992 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !4908)
!4993 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !4908)
!4994 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !4908)
!4995 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !4908)
!4996 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !4908)
!4997 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !4908)
!4998 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !4908)
!4999 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !4908)
!5000 = !DILocation(line: 1901, column: 43, scope: !4903)
!5001 = !DILocation(line: 1901, column: 28, scope: !4903)
!5002 = !DILocation(line: 1901, column: 21, scope: !4903)
!5003 = !DILocation(line: 1902, column: 21, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4903, file: !1, line: 1902, column: 13)
!5005 = !DILocation(line: 1902, column: 18, scope: !5004)
!5006 = !DILocation(line: 1902, column: 13, scope: !4903)
!5007 = !DILocation(line: 1903, column: 30, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5004, file: !1, line: 1902, column: 34)
!5009 = !DILocation(line: 1903, column: 13, scope: !5008)
!5010 = !DILocation(line: 1904, column: 29, scope: !5008)
!5011 = !DILocation(line: 1904, column: 39, scope: !5008)
!5012 = !DILocation(line: 1904, column: 13, scope: !5008)
!5013 = !DILocation(line: 1601, column: 33, scope: !2719, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 1905, column: 13, scope: !5008)
!5015 = !DILocation(line: 1602, column: 5, scope: !2719, inlinedAt: !5014)
!5016 = !DILocation(line: 1603, column: 1, scope: !2719, inlinedAt: !5014)
!5017 = !DILocation(line: 1906, column: 25, scope: !5008)
!5018 = !DILocation(line: 1907, column: 25, scope: !5008)
!5019 = !DILocation(line: 1908, column: 9, scope: !5008)
!5020 = !DILocation(line: 0, scope: !4894)
!5021 = !DILocation(line: 1909, column: 5, scope: !4904)
!5022 = !DILocation(line: 1892, column: 35, scope: !4904)
!5023 = !DILocation(line: 1892, column: 5, scope: !4904)
!5024 = distinct !{!5024, !4974, !5025}
!5025 = !DILocation(line: 1909, column: 5, scope: !4901)
!5026 = !DILocation(line: 1895, column: 69, scope: !4979)
!5027 = !DILocation(line: 1910, column: 24, scope: !4894)
!5028 = !DILocation(line: 1910, column: 5, scope: !4894)
!5029 = !DILocation(line: 1911, column: 1, scope: !4894)
!5030 = distinct !DISubprogram(name: "xpendingCommand", scope: !1, file: !1, line: 1922, type: !2221, isLocal: false, isDefinition: true, scopeLine: 1922, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5031)
!5031 = !{!5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5047, !5048, !5049, !5051, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5062, !5063}
!5032 = !DILocalVariable(name: "c", arg: 1, scope: !5030, file: !1, line: 1922, type: !2104)
!5033 = !DILocalVariable(name: "justinfo", scope: !5030, file: !1, line: 1923, type: !12)
!5034 = !DILocalVariable(name: "key", scope: !5030, file: !1, line: 1925, type: !371)
!5035 = !DILocalVariable(name: "groupname", scope: !5030, file: !1, line: 1926, type: !371)
!5036 = !DILocalVariable(name: "consumername", scope: !5030, file: !1, line: 1927, type: !371)
!5037 = !DILocalVariable(name: "startid", scope: !5030, file: !1, line: 1928, type: !95)
!5038 = !DILocalVariable(name: "endid", scope: !5030, file: !1, line: 1928, type: !95)
!5039 = !DILocalVariable(name: "count", scope: !5030, file: !1, line: 1929, type: !246)
!5040 = !DILocalVariable(name: "o", scope: !5030, file: !1, line: 1950, type: !371)
!5041 = !DILocalVariable(name: "group", scope: !5030, file: !1, line: 1951, type: !144)
!5042 = !DILocalVariable(name: "ri", scope: !5043, file: !1, line: 1975, type: !388)
!5043 = distinct !DILexicalBlock(scope: !5044, file: !1, line: 1973, column: 16)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !1, line: 1969, column: 13)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !1, line: 1964, column: 19)
!5046 = distinct !DILexicalBlock(scope: !5030, file: !1, line: 1964, column: 9)
!5047 = !DILocalVariable(name: "arraylen_ptr", scope: !5043, file: !1, line: 1992, type: !7)
!5048 = !DILocalVariable(name: "arraylen", scope: !5043, file: !1, line: 1993, type: !13)
!5049 = !DILocalVariable(name: "consumer", scope: !5050, file: !1, line: 1995, type: !2357)
!5050 = distinct !DILexicalBlock(scope: !5043, file: !1, line: 1994, column: 33)
!5051 = !DILocalVariable(name: "consumer", scope: !5052, file: !1, line: 2008, type: !2357)
!5052 = distinct !DILexicalBlock(scope: !5046, file: !1, line: 2007, column: 10)
!5053 = !DILocalVariable(name: "pel", scope: !5052, file: !1, line: 2019, type: !75)
!5054 = !DILocalVariable(name: "startkey", scope: !5052, file: !1, line: 2020, type: !1414)
!5055 = !DILocalVariable(name: "endkey", scope: !5052, file: !1, line: 2021, type: !1414)
!5056 = !DILocalVariable(name: "ri", scope: !5052, file: !1, line: 2022, type: !388)
!5057 = !DILocalVariable(name: "now", scope: !5052, file: !1, line: 2023, type: !2299)
!5058 = !DILocalVariable(name: "arraylen_ptr", scope: !5052, file: !1, line: 2029, type: !7)
!5059 = !DILocalVariable(name: "arraylen", scope: !5052, file: !1, line: 2030, type: !13)
!5060 = !DILocalVariable(name: "nack", scope: !5061, file: !1, line: 2033, type: !2350)
!5061 = distinct !DILexicalBlock(scope: !5052, file: !1, line: 2032, column: 79)
!5062 = !DILocalVariable(name: "id", scope: !5061, file: !1, line: 2040, type: !95)
!5063 = !DILocalVariable(name: "elapsed", scope: !5061, file: !1, line: 2049, type: !2299)
!5064 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !5065)
!5065 = distinct !DILocation(line: 2041, column: 13, scope: !5061)
!5066 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !5067)
!5067 = distinct !DILocation(line: 2026, column: 9, scope: !5052)
!5068 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !5069)
!5069 = distinct !DILocation(line: 2025, column: 9, scope: !5052)
!5070 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 1985, column: 13, scope: !5043)
!5072 = !DILocation(line: 146, column: 14, scope: !320, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 1979, column: 13, scope: !5043)
!5074 = !DILocation(line: 1922, column: 30, scope: !5030)
!5075 = !DILocation(line: 1923, column: 23, scope: !5030)
!5076 = !DILocation(line: 1923, column: 28, scope: !5030)
!5077 = !DILocation(line: 1925, column: 20, scope: !5030)
!5078 = !DILocation(line: 1925, column: 17, scope: !5030)
!5079 = !DILocation(line: 1925, column: 11, scope: !5030)
!5080 = !DILocation(line: 1926, column: 23, scope: !5030)
!5081 = !DILocation(line: 1926, column: 11, scope: !5030)
!5082 = !DILocation(line: 1927, column: 35, scope: !5030)
!5083 = !DILocation(line: 1927, column: 26, scope: !5030)
!5084 = !DILocation(line: 1927, column: 43, scope: !5030)
!5085 = !DILocation(line: 1927, column: 11, scope: !5030)
!5086 = !DILocation(line: 1928, column: 5, scope: !5030)
!5087 = !DILocation(line: 1929, column: 5, scope: !5030)
!5088 = !DILocation(line: 1932, column: 22, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5030, file: !1, line: 1932, column: 9)
!5090 = !DILocation(line: 1932, column: 33, scope: !5089)
!5091 = !DILocation(line: 1932, column: 38, scope: !5089)
!5092 = !DILocation(line: 1932, column: 9, scope: !5030)
!5093 = !DILocation(line: 1933, column: 27, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 1932, column: 55)
!5095 = !DILocation(line: 1933, column: 9, scope: !5094)
!5096 = !DILocation(line: 1934, column: 9, scope: !5094)
!5097 = !DILocation(line: 1939, column: 9, scope: !5030)
!5098 = !DILocation(line: 1940, column: 44, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5100, file: !1, line: 1940, column: 13)
!5100 = distinct !DILexicalBlock(scope: !5101, file: !1, line: 1939, column: 23)
!5101 = distinct !DILexicalBlock(scope: !5030, file: !1, line: 1939, column: 9)
!5102 = !DILocation(line: 1929, column: 15, scope: !5030)
!5103 = !DILocation(line: 1940, column: 13, scope: !5099)
!5104 = !DILocation(line: 1940, column: 68, scope: !5099)
!5105 = !DILocation(line: 1940, column: 13, scope: !5100)
!5106 = !DILocation(line: 1942, column: 13, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5100, file: !1, line: 1942, column: 13)
!5108 = !DILocation(line: 1942, column: 19, scope: !5107)
!5109 = !DILocation(line: 1942, column: 13, scope: !5100)
!5110 = !DILocation(line: 1942, column: 30, scope: !5107)
!5111 = !DILocation(line: 1942, column: 24, scope: !5107)
!5112 = !DILocation(line: 1943, column: 39, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5100, file: !1, line: 1943, column: 13)
!5114 = !DILocation(line: 1943, column: 36, scope: !5113)
!5115 = !DILocation(line: 1928, column: 14, scope: !5030)
!5116 = !DILocation(line: 1142, column: 34, scope: !3161, inlinedAt: !5117)
!5117 = distinct !DILocation(line: 1943, column: 13, scope: !5113)
!5118 = !DILocation(line: 1142, column: 43, scope: !3161, inlinedAt: !5117)
!5119 = !DILocation(line: 1142, column: 56, scope: !3161, inlinedAt: !5117)
!5120 = !DILocation(line: 1142, column: 69, scope: !3161, inlinedAt: !5117)
!5121 = !DILocation(line: 1143, column: 12, scope: !3161, inlinedAt: !5117)
!5122 = !DILocation(line: 1143, column: 5, scope: !3161, inlinedAt: !5117)
!5123 = !DILocation(line: 1943, column: 59, scope: !5113)
!5124 = !DILocation(line: 1943, column: 13, scope: !5100)
!5125 = !DILocation(line: 1945, column: 39, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5100, file: !1, line: 1945, column: 13)
!5127 = !DILocation(line: 1945, column: 36, scope: !5126)
!5128 = !DILocation(line: 1928, column: 23, scope: !5030)
!5129 = !DILocation(line: 1142, column: 34, scope: !3161, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 1945, column: 13, scope: !5126)
!5131 = !DILocation(line: 1142, column: 43, scope: !3161, inlinedAt: !5130)
!5132 = !DILocation(line: 1142, column: 56, scope: !3161, inlinedAt: !5130)
!5133 = !DILocation(line: 1142, column: 69, scope: !3161, inlinedAt: !5130)
!5134 = !DILocation(line: 1143, column: 12, scope: !3161, inlinedAt: !5130)
!5135 = !DILocation(line: 1143, column: 5, scope: !3161, inlinedAt: !5130)
!5136 = !DILocation(line: 1945, column: 66, scope: !5126)
!5137 = !DILocation(line: 1945, column: 13, scope: !5100)
!5138 = !DILocation(line: 1950, column: 38, scope: !5030)
!5139 = !DILocation(line: 1950, column: 35, scope: !5030)
!5140 = !DILocation(line: 1950, column: 32, scope: !5030)
!5141 = !DILocation(line: 1950, column: 15, scope: !5030)
!5142 = !DILocation(line: 1950, column: 11, scope: !5030)
!5143 = !DILocation(line: 1953, column: 9, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5030, file: !1, line: 1953, column: 9)
!5145 = !DILocation(line: 1953, column: 11, scope: !5144)
!5146 = !DILocation(line: 1954, column: 19, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5030, file: !1, line: 1954, column: 9)
!5148 = !DILocation(line: 1959, column: 66, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5147, file: !1, line: 1956, column: 5)
!5150 = !DILocation(line: 1953, column: 14, scope: !5144)
!5151 = !DILocation(line: 1953, column: 9, scope: !5030)
!5152 = !DILocation(line: 0, scope: !5144)
!5153 = !DILocation(line: 1955, column: 36, scope: !5147)
!5154 = !DILocation(line: 1955, column: 51, scope: !5147)
!5155 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 1955, column: 18, scope: !5147)
!5157 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !5156)
!5158 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !5156)
!5159 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !5156)
!5160 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !5156)
!5161 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !5156)
!5162 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !5163)
!5163 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !5156)
!5164 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !5163)
!5165 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !5163)
!5166 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !5163)
!5167 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !5163)
!5168 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !5163)
!5169 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !5163)
!5170 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !5163)
!5171 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !5163)
!5172 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !5163)
!5173 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !5163)
!5174 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !5163)
!5175 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !5163)
!5176 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !5163)
!5177 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !5163)
!5178 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !5163)
!5179 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !5163)
!5180 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !5163)
!5181 = !DILocation(line: 0, scope: !678, inlinedAt: !5163)
!5182 = !DILocation(line: 0, scope: !5147)
!5183 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !5163)
!5184 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !5156)
!5185 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !5156)
!5186 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !5156)
!5187 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !5156)
!5188 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !5156)
!5189 = !DILocation(line: 1951, column: 15, scope: !5030)
!5190 = !DILocation(line: 1954, column: 9, scope: !5030)
!5191 = !DILocation(line: 1955, column: 57, scope: !5147)
!5192 = !DILocation(line: 1959, column: 44, scope: !5149)
!5193 = !DILocation(line: 1957, column: 9, scope: !5149)
!5194 = !DILocation(line: 1960, column: 9, scope: !5149)
!5195 = !DILocation(line: 1964, column: 9, scope: !5030)
!5196 = !DILocation(line: 1965, column: 9, scope: !5045)
!5197 = !DILocation(line: 1967, column: 43, scope: !5045)
!5198 = !DILocation(line: 1967, column: 28, scope: !5045)
!5199 = !DILocation(line: 1967, column: 9, scope: !5045)
!5200 = !DILocation(line: 1969, column: 28, scope: !5044)
!5201 = !DILocation(line: 1969, column: 13, scope: !5044)
!5202 = !DILocation(line: 1969, column: 33, scope: !5044)
!5203 = !DILocation(line: 1969, column: 13, scope: !5045)
!5204 = !DILocation(line: 1970, column: 31, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5044, file: !1, line: 1969, column: 39)
!5206 = !{!2914, !110, i64 80}
!5207 = !DILocation(line: 1970, column: 13, scope: !5205)
!5208 = !DILocation(line: 1971, column: 31, scope: !5205)
!5209 = !DILocation(line: 1971, column: 13, scope: !5205)
!5210 = !DILocation(line: 1972, column: 31, scope: !5205)
!5211 = !DILocation(line: 1972, column: 13, scope: !5205)
!5212 = !DILocation(line: 1973, column: 9, scope: !5205)
!5213 = !DILocation(line: 1975, column: 13, scope: !5043)
!5214 = !DILocation(line: 1976, column: 33, scope: !5043)
!5215 = !DILocation(line: 1975, column: 25, scope: !5043)
!5216 = !DILocation(line: 1976, column: 13, scope: !5043)
!5217 = !DILocation(line: 1977, column: 13, scope: !5043)
!5218 = !DILocation(line: 1978, column: 13, scope: !5043)
!5219 = !DILocation(line: 1979, column: 31, scope: !5043)
!5220 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !5073)
!5221 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !5073)
!5222 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !5073)
!5223 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !5073)
!5224 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !5073)
!5225 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !5073)
!5226 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !5073)
!5227 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !5073)
!5228 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !5073)
!5229 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !5073)
!5230 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !5073)
!5231 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 1980, column: 13, scope: !5043)
!5233 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !5232)
!5234 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !5232)
!5235 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !5232)
!5236 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !5232)
!5237 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !5232)
!5238 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !5232)
!5239 = !DILocation(line: 1983, column: 13, scope: !5043)
!5240 = !DILocation(line: 1984, column: 13, scope: !5043)
!5241 = !DILocation(line: 1985, column: 31, scope: !5043)
!5242 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !5071)
!5243 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !5071)
!5244 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !5071)
!5245 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !5071)
!5246 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !5071)
!5247 = !DILocation(line: 148, column: 9, scope: !320, inlinedAt: !5071)
!5248 = !DILocation(line: 148, column: 12, scope: !320, inlinedAt: !5071)
!5249 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !5071)
!5250 = !DILocation(line: 149, column: 9, scope: !320, inlinedAt: !5071)
!5251 = !DILocation(line: 149, column: 13, scope: !320, inlinedAt: !5071)
!5252 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !5071)
!5253 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 1986, column: 13, scope: !5043)
!5255 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !5254)
!5256 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !5254)
!5257 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !5254)
!5258 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !5254)
!5259 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !5254)
!5260 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !5254)
!5261 = !DILocation(line: 1987, column: 13, scope: !5043)
!5262 = !DILocation(line: 1990, column: 33, scope: !5043)
!5263 = !DILocation(line: 1990, column: 13, scope: !5043)
!5264 = !DILocation(line: 1991, column: 13, scope: !5043)
!5265 = !DILocation(line: 1992, column: 34, scope: !5043)
!5266 = !DILocation(line: 1992, column: 19, scope: !5043)
!5267 = !DILocation(line: 1993, column: 20, scope: !5043)
!5268 = !DILocation(line: 1994, column: 13, scope: !5043)
!5269 = !DILocation(line: 1994, column: 19, scope: !5043)
!5270 = !DILocation(line: 1995, column: 47, scope: !5050)
!5271 = !DILocation(line: 1995, column: 33, scope: !5050)
!5272 = !DILocation(line: 1996, column: 39, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5050, file: !1, line: 1996, column: 21)
!5274 = !DILocation(line: 1996, column: 21, scope: !5273)
!5275 = !DILocation(line: 1996, column: 44, scope: !5273)
!5276 = !DILocation(line: 1996, column: 21, scope: !5050)
!5277 = distinct !{!5277, !5268, !5278}
!5278 = !DILocation(line: 2001, column: 13, scope: !5043)
!5279 = !DILocation(line: 1997, column: 17, scope: !5050)
!5280 = !DILocation(line: 1998, column: 42, scope: !5050)
!5281 = !DILocation(line: 1998, column: 49, scope: !5050)
!5282 = !DILocation(line: 1998, column: 17, scope: !5050)
!5283 = !DILocation(line: 1999, column: 58, scope: !5050)
!5284 = !DILocation(line: 1999, column: 40, scope: !5050)
!5285 = !DILocation(line: 1999, column: 17, scope: !5050)
!5286 = !DILocation(line: 2000, column: 25, scope: !5050)
!5287 = !DILocation(line: 0, scope: !5050)
!5288 = !DILocation(line: 0, scope: !5273)
!5289 = !DILocation(line: 2002, column: 13, scope: !5043)
!5290 = !DILocation(line: 2003, column: 13, scope: !5043)
!5291 = !DILocation(line: 2004, column: 9, scope: !5044)
!5292 = !DILocation(line: 2008, column: 36, scope: !5052)
!5293 = !DILocation(line: 2008, column: 25, scope: !5052)
!5294 = !DILocation(line: 2014, column: 26, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5052, file: !1, line: 2014, column: 13)
!5296 = !DILocation(line: 2019, column: 20, scope: !5052)
!5297 = !DILocation(line: 2009, column: 74, scope: !5052)
!5298 = !DILocation(line: 1654, column: 48, scope: !4186, inlinedAt: !5299)
!5299 = distinct !DILocation(line: 2009, column: 33, scope: !5052)
!5300 = !DILocation(line: 1654, column: 56, scope: !4186, inlinedAt: !5299)
!5301 = !DILocation(line: 1654, column: 66, scope: !4186, inlinedAt: !5299)
!5302 = !DILocation(line: 1655, column: 44, scope: !4186, inlinedAt: !5299)
!5303 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 1656, column: 32, scope: !4186, inlinedAt: !5299)
!5305 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !5304)
!5306 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !5304)
!5307 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !5304)
!5308 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !5304)
!5309 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !5304)
!5310 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !5304)
!5311 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !5304)
!5312 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !5304)
!5313 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !5304)
!5314 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !5304)
!5315 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !5304)
!5316 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !5304)
!5317 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !5304)
!5318 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !5304)
!5319 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !5304)
!5320 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !5304)
!5321 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !5304)
!5322 = !DILocation(line: 0, scope: !678, inlinedAt: !5304)
!5323 = !DILocation(line: 0, scope: !5052)
!5324 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !5304)
!5325 = !DILocation(line: 1655, column: 32, scope: !4186, inlinedAt: !5299)
!5326 = !DILocation(line: 1655, column: 21, scope: !4186, inlinedAt: !5299)
!5327 = !DILocation(line: 1657, column: 21, scope: !4223, inlinedAt: !5299)
!5328 = !DILocation(line: 1657, column: 18, scope: !4223, inlinedAt: !5299)
!5329 = !DILocation(line: 1657, column: 9, scope: !4186, inlinedAt: !5299)
!5330 = !DILocation(line: 1665, column: 27, scope: !4186, inlinedAt: !5299)
!5331 = !DILocation(line: 1665, column: 15, scope: !4186, inlinedAt: !5299)
!5332 = !DILocation(line: 1665, column: 25, scope: !4186, inlinedAt: !5299)
!5333 = !DILocation(line: 1666, column: 5, scope: !4186, inlinedAt: !5299)
!5334 = !DILocation(line: 1667, column: 1, scope: !4186, inlinedAt: !5299)
!5335 = !DILocation(line: 2014, column: 38, scope: !5295)
!5336 = !DILocation(line: 1658, column: 13, scope: !4228, inlinedAt: !5299)
!5337 = !DILocation(line: 1658, column: 22, scope: !4227, inlinedAt: !5299)
!5338 = !DILocation(line: 2015, column: 13, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5295, file: !1, line: 2014, column: 47)
!5340 = !DILocation(line: 2016, column: 13, scope: !5339)
!5341 = !DILocation(line: 2019, column: 14, scope: !5052)
!5342 = !DILocation(line: 2020, column: 9, scope: !5052)
!5343 = !DILocation(line: 2020, column: 23, scope: !5052)
!5344 = !DILocation(line: 2021, column: 9, scope: !5052)
!5345 = !DILocation(line: 2021, column: 23, scope: !5052)
!5346 = !DILocation(line: 2022, column: 9, scope: !5052)
!5347 = !DILocation(line: 2023, column: 24, scope: !5052)
!5348 = !DILocation(line: 2023, column: 18, scope: !5052)
!5349 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !5069)
!5350 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !5069)
!5351 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !5069)
!5352 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !5069)
!5353 = !DILocation(line: 137, column: 5, scope: !298, inlinedAt: !5069)
!5354 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !5069)
!5355 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !5069)
!5356 = !DILocation(line: 138, column: 5, scope: !298, inlinedAt: !5069)
!5357 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !5069)
!5358 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !5069)
!5359 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !5069)
!5360 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !5067)
!5361 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !5067)
!5362 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !5067)
!5363 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !5067)
!5364 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !5067)
!5365 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !5067)
!5366 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !5067)
!5367 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !5067)
!5368 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !5067)
!5369 = !DILocation(line: 2022, column: 21, scope: !5052)
!5370 = !DILocation(line: 2027, column: 9, scope: !5052)
!5371 = !DILocation(line: 2028, column: 9, scope: !5052)
!5372 = !DILocation(line: 2029, column: 30, scope: !5052)
!5373 = !DILocation(line: 2029, column: 15, scope: !5052)
!5374 = !DILocation(line: 2030, column: 16, scope: !5052)
!5375 = !DILocation(line: 2032, column: 9, scope: !5052)
!5376 = !DILocation(line: 2032, column: 50, scope: !5052)
!5377 = !DILocation(line: 2032, column: 15, scope: !5052)
!5378 = !DILocation(line: 2032, column: 21, scope: !5052)
!5379 = !DILocation(line: 2032, column: 24, scope: !5052)
!5380 = !DILocation(line: 2032, column: 37, scope: !5052)
!5381 = !DILocation(line: 2032, column: 64, scope: !5052)
!5382 = !DILocation(line: 2032, column: 40, scope: !5052)
!5383 = !DILocation(line: 2032, column: 73, scope: !5052)
!5384 = !DILocation(line: 2033, column: 35, scope: !5061)
!5385 = !DILocation(line: 2033, column: 25, scope: !5061)
!5386 = !DILocation(line: 2035, column: 21, scope: !5061)
!5387 = !DILocation(line: 2036, column: 18, scope: !5061)
!5388 = !DILocation(line: 2037, column: 13, scope: !5061)
!5389 = !DILocation(line: 2041, column: 31, scope: !5061)
!5390 = !DILocation(line: 2040, column: 22, scope: !5061)
!5391 = !DILocation(line: 145, column: 27, scope: !320, inlinedAt: !5065)
!5392 = !DILocation(line: 145, column: 42, scope: !320, inlinedAt: !5065)
!5393 = !DILocation(line: 146, column: 5, scope: !320, inlinedAt: !5065)
!5394 = !DILocation(line: 147, column: 5, scope: !320, inlinedAt: !5065)
!5395 = !DILocation(line: 148, column: 14, scope: !320, inlinedAt: !5065)
!5396 = !DILocation(line: 149, column: 15, scope: !320, inlinedAt: !5065)
!5397 = !DILocation(line: 150, column: 1, scope: !320, inlinedAt: !5065)
!5398 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 2042, column: 13, scope: !5061)
!5400 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !5399)
!5401 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !5399)
!5402 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !5399)
!5403 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !5399)
!5404 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !5399)
!5405 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !5399)
!5406 = !DILocation(line: 2045, column: 41, scope: !5061)
!5407 = !DILocation(line: 2045, column: 51, scope: !5061)
!5408 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !5409)
!5409 = distinct !DILocation(line: 2046, column: 33, scope: !5061)
!5410 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !5409)
!5411 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !5409)
!5412 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !5409)
!5413 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !5409)
!5414 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !5409)
!5415 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !5409)
!5416 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !5409)
!5417 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !5409)
!5418 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !5409)
!5419 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !5409)
!5420 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !5409)
!5421 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !5409)
!5422 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !5409)
!5423 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !5409)
!5424 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !5409)
!5425 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !5409)
!5426 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !5409)
!5427 = !DILocation(line: 0, scope: !678, inlinedAt: !5409)
!5428 = !DILocation(line: 0, scope: !5061)
!5429 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !5409)
!5430 = !DILocation(line: 2045, column: 13, scope: !5061)
!5431 = !DILocation(line: 2049, column: 44, scope: !5061)
!5432 = !DILocation(line: 2049, column: 36, scope: !5061)
!5433 = !DILocation(line: 2049, column: 22, scope: !5061)
!5434 = !DILocation(line: 2050, column: 17, scope: !5061)
!5435 = !DILocation(line: 2051, column: 13, scope: !5061)
!5436 = !DILocation(line: 2054, column: 38, scope: !5061)
!5437 = !DILocation(line: 2054, column: 13, scope: !5061)
!5438 = distinct !{!5438, !5375, !5439}
!5439 = !DILocation(line: 2055, column: 9, scope: !5052)
!5440 = !DILocation(line: 2056, column: 9, scope: !5052)
!5441 = !DILocation(line: 2057, column: 9, scope: !5052)
!5442 = !DILocation(line: 2058, column: 5, scope: !5046)
!5443 = !DILocation(line: 2059, column: 1, scope: !5030)
!5444 = distinct !DISubprogram(name: "xclaimCommand", scope: !1, file: !1, line: 2127, type: !2221, isLocal: false, isDefinition: true, scopeLine: 2127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5445)
!5445 = !{!5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5459, !5460, !5461, !5462, !5463, !5467, !5468, !5469, !5470, !5471, !5473, !5476, !5477, !5478, !5481, !5482, !5483, !5484, !5489}
!5446 = !DILocalVariable(name: "c", arg: 1, scope: !5444, file: !1, line: 2127, type: !2104)
!5447 = !DILocalVariable(name: "group", scope: !5444, file: !1, line: 2128, type: !144)
!5448 = !DILocalVariable(name: "o", scope: !5444, file: !1, line: 2129, type: !371)
!5449 = !DILocalVariable(name: "minidle", scope: !5444, file: !1, line: 2130, type: !246)
!5450 = !DILocalVariable(name: "retrycount", scope: !5444, file: !1, line: 2131, type: !246)
!5451 = !DILocalVariable(name: "deliverytime", scope: !5444, file: !1, line: 2132, type: !2299)
!5452 = !DILocalVariable(name: "force", scope: !5444, file: !1, line: 2133, type: !12)
!5453 = !DILocalVariable(name: "justid", scope: !5444, file: !1, line: 2134, type: !12)
!5454 = !DILocalVariable(name: "j", scope: !5444, file: !1, line: 2159, type: !12)
!5455 = !DILocalVariable(name: "id", scope: !5456, file: !1, line: 2161, type: !95)
!5456 = distinct !DILexicalBlock(scope: !5457, file: !1, line: 2160, column: 35)
!5457 = distinct !DILexicalBlock(scope: !5458, file: !1, line: 2160, column: 5)
!5458 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2160, column: 5)
!5459 = !DILocalVariable(name: "last_id_arg", scope: !5444, file: !1, line: 2164, type: !12)
!5460 = !DILocalVariable(name: "now", scope: !5444, file: !1, line: 2168, type: !2299)
!5461 = !DILocalVariable(name: "last_id", scope: !5444, file: !1, line: 2169, type: !95)
!5462 = !DILocalVariable(name: "propagate_last_id", scope: !5444, file: !1, line: 2170, type: !12)
!5463 = !DILocalVariable(name: "moreargs", scope: !5464, file: !1, line: 2172, type: !12)
!5464 = distinct !DILexicalBlock(scope: !5465, file: !1, line: 2171, column: 30)
!5465 = distinct !DILexicalBlock(scope: !5466, file: !1, line: 2171, column: 5)
!5466 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2171, column: 5)
!5467 = !DILocalVariable(name: "opt", scope: !5464, file: !1, line: 2173, type: !10)
!5468 = !DILocalVariable(name: "consumer", scope: !5444, file: !1, line: 2225, type: !2357)
!5469 = !DILocalVariable(name: "arraylenptr", scope: !5444, file: !1, line: 2226, type: !7)
!5470 = !DILocalVariable(name: "arraylen", scope: !5444, file: !1, line: 2227, type: !13)
!5471 = !DILocalVariable(name: "j", scope: !5472, file: !1, line: 2228, type: !12)
!5472 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2228, column: 5)
!5473 = !DILocalVariable(name: "id", scope: !5474, file: !1, line: 2229, type: !95)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !1, line: 2228, column: 44)
!5475 = distinct !DILexicalBlock(scope: !5472, file: !1, line: 2228, column: 5)
!5476 = !DILocalVariable(name: "buf", scope: !5474, file: !1, line: 2230, type: !1414)
!5477 = !DILocalVariable(name: "nack", scope: !5474, file: !1, line: 2236, type: !2350)
!5478 = !DILocalVariable(name: "myiterator", scope: !5479, file: !1, line: 2244, type: !1264)
!5479 = distinct !DILexicalBlock(scope: !5480, file: !1, line: 2243, column: 43)
!5480 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 2243, column: 13)
!5481 = !DILocalVariable(name: "numfields", scope: !5479, file: !1, line: 2246, type: !196)
!5482 = !DILocalVariable(name: "found", scope: !5479, file: !1, line: 2247, type: !12)
!5483 = !DILocalVariable(name: "item_id", scope: !5479, file: !1, line: 2248, type: !95)
!5484 = !DILocalVariable(name: "this_idle", scope: !5485, file: !1, line: 2268, type: !2299)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !1, line: 2267, column: 44)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !1, line: 2267, column: 17)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !1, line: 2260, column: 34)
!5488 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 2260, column: 13)
!5489 = !DILocalVariable(name: "emitted", scope: !5490, file: !1, line: 2292, type: !13)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !1, line: 2291, column: 20)
!5491 = distinct !DILexicalBlock(scope: !5487, file: !1, line: 2289, column: 17)
!5492 = !DILocation(line: 136, column: 14, scope: !298, inlinedAt: !5493)
!5493 = distinct !DILocation(line: 2233, column: 9, scope: !5474)
!5494 = !DILocation(line: 2127, column: 28, scope: !5444)
!5495 = !DILocation(line: 2128, column: 15, scope: !5444)
!5496 = !DILocation(line: 2129, column: 32, scope: !5444)
!5497 = !DILocation(line: 2129, column: 38, scope: !5444)
!5498 = !DILocation(line: 2129, column: 35, scope: !5444)
!5499 = !DILocation(line: 2129, column: 15, scope: !5444)
!5500 = !DILocation(line: 2129, column: 11, scope: !5444)
!5501 = !DILocation(line: 2130, column: 5, scope: !5444)
!5502 = !DILocation(line: 2131, column: 5, scope: !5444)
!5503 = !DILocation(line: 2131, column: 15, scope: !5444)
!5504 = !DILocation(line: 2132, column: 5, scope: !5444)
!5505 = !DILocation(line: 2132, column: 14, scope: !5444)
!5506 = !DILocation(line: 2133, column: 9, scope: !5444)
!5507 = !DILocation(line: 2134, column: 9, scope: !5444)
!5508 = !DILocation(line: 2136, column: 9, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2136, column: 9)
!5510 = !DILocation(line: 2136, column: 9, scope: !5444)
!5511 = !DILocation(line: 0, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2150, column: 9)
!5513 = !DILocation(line: 2143, column: 19, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2143, column: 9)
!5515 = !DILocation(line: 2137, column: 13, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !1, line: 2137, column: 13)
!5517 = distinct !DILexicalBlock(scope: !5509, file: !1, line: 2136, column: 12)
!5518 = !DILocation(line: 2137, column: 13, scope: !5517)
!5519 = !DILocation(line: 2138, column: 35, scope: !5517)
!5520 = !DILocation(line: 2138, column: 42, scope: !5517)
!5521 = !DILocation(line: 2138, column: 39, scope: !5517)
!5522 = !DILocation(line: 2138, column: 51, scope: !5517)
!5523 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !5524)
!5524 = distinct !DILocation(line: 2138, column: 17, scope: !5517)
!5525 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !5524)
!5526 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !5524)
!5527 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !5524)
!5528 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !5524)
!5529 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !5524)
!5530 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !5524)
!5531 = !DILocation(line: 2139, column: 5, scope: !5517)
!5532 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !5533)
!5533 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !5524)
!5534 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !5533)
!5535 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !5533)
!5536 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !5533)
!5537 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !5533)
!5538 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !5533)
!5539 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !5533)
!5540 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !5533)
!5541 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !5533)
!5542 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !5533)
!5543 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !5533)
!5544 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !5533)
!5545 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !5533)
!5546 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !5533)
!5547 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !5533)
!5548 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !5533)
!5549 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !5533)
!5550 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !5533)
!5551 = !DILocation(line: 0, scope: !678, inlinedAt: !5533)
!5552 = !DILocation(line: 0, scope: !5517)
!5553 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !5533)
!5554 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !5524)
!5555 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !5524)
!5556 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !5524)
!5557 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !5524)
!5558 = !DILocation(line: 2143, column: 28, scope: !5514)
!5559 = !DILocation(line: 2145, column: 61, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5514, file: !1, line: 2143, column: 37)
!5561 = !DILocation(line: 2145, column: 73, scope: !5560)
!5562 = !DILocation(line: 2146, column: 38, scope: !5560)
!5563 = !DILocation(line: 2146, column: 50, scope: !5560)
!5564 = !DILocation(line: 2144, column: 9, scope: !5560)
!5565 = !DILocation(line: 2147, column: 9, scope: !5560)
!5566 = !DILocation(line: 2150, column: 40, scope: !5512)
!5567 = !DILocation(line: 2130, column: 15, scope: !5444)
!5568 = !DILocation(line: 2150, column: 9, scope: !5512)
!5569 = !DILocation(line: 2152, column: 9, scope: !5512)
!5570 = !DILocation(line: 2150, column: 9, scope: !5444)
!5571 = !DILocation(line: 2153, column: 9, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2153, column: 9)
!5573 = !DILocation(line: 2153, column: 17, scope: !5572)
!5574 = !DILocation(line: 2153, column: 9, scope: !5444)
!5575 = !DILocation(line: 2153, column: 30, scope: !5572)
!5576 = !DILocation(line: 2153, column: 22, scope: !5572)
!5577 = !DILocation(line: 2159, column: 9, scope: !5444)
!5578 = !DILocation(line: 2160, column: 10, scope: !5458)
!5579 = !DILocation(line: 2161, column: 9, scope: !5456)
!5580 = !DILocation(line: 2160, column: 24, scope: !5457)
!5581 = !DILocation(line: 2160, column: 19, scope: !5457)
!5582 = !DILocation(line: 2160, column: 5, scope: !5458)
!5583 = !DILocation(line: 2162, column: 48, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5456, file: !1, line: 2162, column: 13)
!5585 = !DILocation(line: 2162, column: 45, scope: !5584)
!5586 = !DILocation(line: 2161, column: 18, scope: !5456)
!5587 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !5588)
!5588 = distinct !DILocation(line: 2162, column: 13, scope: !5584)
!5589 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !5588)
!5590 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !5588)
!5591 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !5588)
!5592 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !5588)
!5593 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !5588)
!5594 = !DILocation(line: 2162, column: 63, scope: !5584)
!5595 = !DILocation(line: 2162, column: 13, scope: !5456)
!5596 = !DILocation(line: 0, scope: !5584)
!5597 = !DILocation(line: 2163, column: 5, scope: !5457)
!5598 = !DILocation(line: 2160, column: 31, scope: !5457)
!5599 = !DILocation(line: 2160, column: 5, scope: !5457)
!5600 = distinct !{!5600, !5582, !5601}
!5601 = !DILocation(line: 2163, column: 5, scope: !5458)
!5602 = !DILocation(line: 2168, column: 20, scope: !5444)
!5603 = !DILocation(line: 0, scope: !5457)
!5604 = !DILocation(line: 2164, column: 9, scope: !5444)
!5605 = !DILocation(line: 2168, column: 14, scope: !5444)
!5606 = !DILocation(line: 2169, column: 5, scope: !5444)
!5607 = !DILocation(line: 2169, column: 14, scope: !5444)
!5608 = !DILocation(line: 2170, column: 9, scope: !5444)
!5609 = !DILocation(line: 2171, column: 5, scope: !5444)
!5610 = !DILocation(line: 2171, column: 19, scope: !5465)
!5611 = !DILocation(line: 2171, column: 14, scope: !5465)
!5612 = !DILocation(line: 2171, column: 5, scope: !5466)
!5613 = !DILocation(line: 153, column: 31, scope: !337, inlinedAt: !5614)
!5614 = distinct !DILocation(line: 2203, column: 9, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2203, column: 9)
!5616 = !DILocation(line: 154, column: 20, scope: !346, inlinedAt: !5614)
!5617 = !DILocation(line: 154, column: 9, scope: !337, inlinedAt: !5614)
!5618 = !DILocation(line: 2173, column: 24, scope: !5464)
!5619 = !DILocation(line: 2173, column: 21, scope: !5464)
!5620 = !DILocation(line: 2173, column: 33, scope: !5464)
!5621 = !DILocation(line: 2173, column: 15, scope: !5464)
!5622 = !DILocation(line: 2174, column: 14, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5464, file: !1, line: 2174, column: 13)
!5624 = !DILocation(line: 2174, column: 13, scope: !5464)
!5625 = !DILocation(line: 2176, column: 9, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5623, file: !1, line: 2174, column: 39)
!5627 = !DILocation(line: 2176, column: 21, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5623, file: !1, line: 2176, column: 20)
!5629 = !DILocation(line: 2176, column: 20, scope: !5623)
!5630 = !DILocation(line: 2178, column: 9, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5628, file: !1, line: 2176, column: 47)
!5632 = !DILocation(line: 2178, column: 21, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5628, file: !1, line: 2178, column: 20)
!5634 = !DILocation(line: 2178, column: 47, scope: !5633)
!5635 = !DILocation(line: 2178, column: 44, scope: !5633)
!5636 = !DILocation(line: 2180, column: 48, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !1, line: 2180, column: 17)
!5638 = distinct !DILexicalBlock(scope: !5633, file: !1, line: 2178, column: 57)
!5639 = !DILocation(line: 2180, column: 17, scope: !5637)
!5640 = !DILocation(line: 2182, column: 17, scope: !5637)
!5641 = !DILocation(line: 2180, column: 17, scope: !5638)
!5642 = !DILocation(line: 2183, column: 34, scope: !5638)
!5643 = !DILocation(line: 2183, column: 32, scope: !5638)
!5644 = !DILocation(line: 2183, column: 26, scope: !5638)
!5645 = !DILocation(line: 2184, column: 9, scope: !5638)
!5646 = !DILocation(line: 2184, column: 21, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5633, file: !1, line: 2184, column: 20)
!5648 = !DILocation(line: 2184, column: 44, scope: !5647)
!5649 = !DILocation(line: 2186, column: 48, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !1, line: 2186, column: 17)
!5651 = distinct !DILexicalBlock(scope: !5647, file: !1, line: 2184, column: 57)
!5652 = !DILocation(line: 2186, column: 17, scope: !5650)
!5653 = !DILocation(line: 2188, column: 17, scope: !5650)
!5654 = !DILocation(line: 2186, column: 17, scope: !5651)
!5655 = !DILocation(line: 2189, column: 21, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5647, file: !1, line: 2189, column: 20)
!5657 = !DILocation(line: 2189, column: 50, scope: !5656)
!5658 = !DILocation(line: 2191, column: 48, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !1, line: 2191, column: 17)
!5660 = distinct !DILexicalBlock(scope: !5656, file: !1, line: 2189, column: 63)
!5661 = !DILocation(line: 2191, column: 17, scope: !5659)
!5662 = !DILocation(line: 2193, column: 17, scope: !5659)
!5663 = !DILocation(line: 2191, column: 17, scope: !5660)
!5664 = !DILocation(line: 2194, column: 21, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5656, file: !1, line: 2194, column: 20)
!5666 = !DILocation(line: 2194, column: 46, scope: !5665)
!5667 = !DILocation(line: 2196, column: 46, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !1, line: 2196, column: 17)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 2194, column: 59)
!5670 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !5671)
!5671 = distinct !DILocation(line: 2196, column: 17, scope: !5668)
!5672 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !5671)
!5673 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !5671)
!5674 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !5671)
!5675 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !5671)
!5676 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !5671)
!5677 = !DILocation(line: 2196, column: 69, scope: !5668)
!5678 = !DILocation(line: 2196, column: 17, scope: !5669)
!5679 = !DILocation(line: 2198, column: 13, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5665, file: !1, line: 2197, column: 16)
!5681 = !DILocation(line: 2199, column: 13, scope: !5680)
!5682 = !DILocation(line: 0, scope: !5680)
!5683 = !DILocation(line: 0, scope: !5458)
!5684 = !DILocation(line: 0, scope: !5444)
!5685 = !DILocation(line: 0, scope: !5626)
!5686 = !DILocation(line: 2201, column: 5, scope: !5465)
!5687 = !DILocation(line: 2171, column: 26, scope: !5465)
!5688 = !DILocation(line: 2171, column: 5, scope: !5465)
!5689 = distinct !{!5689, !5612, !5690}
!5690 = !DILocation(line: 2201, column: 5, scope: !5466)
!5691 = !DILocation(line: 154, column: 12, scope: !346, inlinedAt: !5614)
!5692 = !DILocation(line: 154, column: 15, scope: !346, inlinedAt: !5614)
!5693 = !DILocation(line: 154, column: 24, scope: !346, inlinedAt: !5614)
!5694 = !DILocation(line: 155, column: 20, scope: !352, inlinedAt: !5614)
!5695 = !DILocation(line: 155, column: 14, scope: !346, inlinedAt: !5614)
!5696 = !DILocation(line: 157, column: 17, scope: !356, inlinedAt: !5614)
!5697 = !DILocation(line: 157, column: 26, scope: !356, inlinedAt: !5614)
!5698 = !DILocation(line: 157, column: 21, scope: !356, inlinedAt: !5614)
!5699 = !DILocation(line: 157, column: 14, scope: !352, inlinedAt: !5614)
!5700 = !DILocation(line: 0, scope: !5615)
!5701 = !DILocation(line: 161, column: 1, scope: !337, inlinedAt: !5614)
!5702 = !DILocation(line: 2203, column: 9, scope: !5444)
!5703 = !DILocation(line: 2204, column: 26, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5615, file: !1, line: 2203, column: 56)
!5705 = !DILocation(line: 2206, column: 5, scope: !5704)
!5706 = !DILocation(line: 0, scope: !5704)
!5707 = !DILocation(line: 2208, column: 9, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2208, column: 9)
!5709 = !DILocation(line: 2208, column: 22, scope: !5708)
!5710 = !DILocation(line: 2208, column: 9, scope: !5444)
!5711 = !DILocation(line: 2216, column: 26, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5713, file: !1, line: 2216, column: 13)
!5713 = distinct !DILexicalBlock(scope: !5708, file: !1, line: 2208, column: 29)
!5714 = !DILocation(line: 2216, column: 30, scope: !5712)
!5715 = !DILocation(line: 2216, column: 46, scope: !5712)
!5716 = !DILocation(line: 2216, column: 13, scope: !5713)
!5717 = !DILocation(line: 0, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5708, file: !1, line: 2217, column: 12)
!5719 = !DILocation(line: 2225, column: 62, scope: !5444)
!5720 = !DILocation(line: 2225, column: 59, scope: !5444)
!5721 = !DILocation(line: 2225, column: 71, scope: !5444)
!5722 = !DILocation(line: 2225, column: 32, scope: !5444)
!5723 = !DILocation(line: 2225, column: 21, scope: !5444)
!5724 = !DILocation(line: 2226, column: 25, scope: !5444)
!5725 = !DILocation(line: 2226, column: 11, scope: !5444)
!5726 = !DILocation(line: 2227, column: 12, scope: !5444)
!5727 = !DILocation(line: 2228, column: 14, scope: !5472)
!5728 = !DILocation(line: 2228, column: 10, scope: !5472)
!5729 = !DILocation(line: 2228, column: 23, scope: !5475)
!5730 = !DILocation(line: 2228, column: 5, scope: !5472)
!5731 = !DILocation(line: 0, scope: !5487)
!5732 = !DILocation(line: 2304, column: 9, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5444, file: !1, line: 2304, column: 9)
!5734 = !DILocation(line: 2304, column: 9, scope: !5444)
!5735 = !DILocation(line: 2229, column: 9, scope: !5474)
!5736 = !DILocation(line: 2230, column: 9, scope: !5474)
!5737 = !DILocation(line: 2230, column: 23, scope: !5474)
!5738 = !DILocation(line: 2231, column: 45, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 2231, column: 13)
!5740 = !DILocation(line: 2231, column: 42, scope: !5739)
!5741 = !DILocation(line: 2229, column: 18, scope: !5474)
!5742 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !5743)
!5743 = distinct !DILocation(line: 2231, column: 13, scope: !5739)
!5744 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !5743)
!5745 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !5743)
!5746 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !5743)
!5747 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !5743)
!5748 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !5743)
!5749 = !DILocation(line: 2231, column: 60, scope: !5739)
!5750 = !DILocation(line: 2231, column: 13, scope: !5474)
!5751 = !DILocation(line: 2232, column: 13, scope: !5739)
!5752 = !DILocation(line: 135, column: 27, scope: !298, inlinedAt: !5493)
!5753 = !DILocation(line: 135, column: 42, scope: !298, inlinedAt: !5493)
!5754 = !DILocation(line: 136, column: 5, scope: !298, inlinedAt: !5493)
!5755 = !DILocation(line: 137, column: 12, scope: !298, inlinedAt: !5493)
!5756 = !DILocation(line: 137, column: 10, scope: !298, inlinedAt: !5493)
!5757 = !DILocation(line: 138, column: 12, scope: !298, inlinedAt: !5493)
!5758 = !DILocation(line: 138, column: 10, scope: !298, inlinedAt: !5493)
!5759 = !DILocation(line: 139, column: 5, scope: !298, inlinedAt: !5493)
!5760 = !DILocation(line: 140, column: 1, scope: !298, inlinedAt: !5493)
!5761 = !DILocation(line: 2236, column: 43, scope: !5474)
!5762 = !DILocation(line: 2236, column: 28, scope: !5474)
!5763 = !DILocation(line: 2236, column: 21, scope: !5474)
!5764 = !DILocation(line: 2243, column: 19, scope: !5480)
!5765 = !DILocation(line: 2243, column: 30, scope: !5480)
!5766 = !DILocation(line: 2243, column: 27, scope: !5480)
!5767 = !DILocation(line: 2243, column: 13, scope: !5474)
!5768 = !DILocation(line: 2244, column: 13, scope: !5479)
!5769 = !DILocation(line: 2245, column: 48, scope: !5479)
!5770 = !DILocation(line: 2244, column: 28, scope: !5479)
!5771 = !DILocation(line: 2245, column: 13, scope: !5479)
!5772 = !DILocation(line: 2246, column: 13, scope: !5479)
!5773 = !DILocation(line: 2247, column: 17, scope: !5479)
!5774 = !DILocation(line: 2248, column: 13, scope: !5479)
!5775 = !DILocation(line: 2246, column: 21, scope: !5479)
!5776 = !DILocation(line: 2248, column: 22, scope: !5479)
!5777 = !DILocation(line: 2249, column: 17, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5479, file: !1, line: 2249, column: 17)
!5779 = !DILocation(line: 2249, column: 17, scope: !5479)
!5780 = !DILocation(line: 2249, column: 71, scope: !5778)
!5781 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !5782)
!5782 = distinct !DILocation(line: 2250, column: 13, scope: !5479)
!5783 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !5782)
!5784 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !5782)
!5785 = !DILocation(line: 2253, column: 17, scope: !5479)
!5786 = !DILocation(line: 1592, column: 46, scope: !2692, inlinedAt: !5787)
!5787 = distinct !DILocation(line: 2256, column: 20, scope: !5479)
!5788 = !DILocation(line: 1593, column: 24, scope: !2692, inlinedAt: !5787)
!5789 = !DILocation(line: 1593, column: 17, scope: !2692, inlinedAt: !5787)
!5790 = !DILocation(line: 1594, column: 27, scope: !2692, inlinedAt: !5787)
!5791 = !DILocation(line: 1594, column: 11, scope: !2692, inlinedAt: !5787)
!5792 = !DILocation(line: 1594, column: 25, scope: !2692, inlinedAt: !5787)
!5793 = !DILocation(line: 1595, column: 11, scope: !2692, inlinedAt: !5787)
!5794 = !DILocation(line: 1595, column: 26, scope: !2692, inlinedAt: !5787)
!5795 = !DILocation(line: 1596, column: 11, scope: !2692, inlinedAt: !5787)
!5796 = !DILocation(line: 1596, column: 20, scope: !2692, inlinedAt: !5787)
!5797 = !DILocation(line: 1597, column: 5, scope: !2692, inlinedAt: !5787)
!5798 = !DILocation(line: 2257, column: 30, scope: !5479)
!5799 = !DILocation(line: 2257, column: 13, scope: !5479)
!5800 = !DILocation(line: 2258, column: 9, scope: !5480)
!5801 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !5802)
!5802 = distinct !DILocation(line: 2250, column: 13, scope: !5479)
!5803 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !5802)
!5804 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !5802)
!5805 = !DILocation(line: 2253, column: 25, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5479, file: !1, line: 2253, column: 17)
!5807 = !DILocation(line: 0, scope: !5474)
!5808 = !DILocation(line: 0, scope: !5806)
!5809 = !DILocation(line: 2260, column: 21, scope: !5488)
!5810 = !DILocation(line: 2260, column: 18, scope: !5488)
!5811 = !DILocation(line: 2260, column: 13, scope: !5474)
!5812 = !DILocation(line: 2267, column: 23, scope: !5486)
!5813 = !DILocation(line: 2267, column: 17, scope: !5486)
!5814 = !DILocation(line: 2267, column: 35, scope: !5486)
!5815 = !DILocation(line: 2267, column: 32, scope: !5486)
!5816 = !DILocation(line: 2268, column: 50, scope: !5485)
!5817 = !DILocation(line: 2268, column: 42, scope: !5485)
!5818 = !DILocation(line: 2268, column: 26, scope: !5485)
!5819 = !DILocation(line: 2269, column: 31, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5485, file: !1, line: 2269, column: 21)
!5821 = !DILocation(line: 2269, column: 21, scope: !5485)
!5822 = !DILocation(line: 0, scope: !5486)
!5823 = !DILocation(line: 2274, column: 17, scope: !5487)
!5824 = !DILocation(line: 2274, column: 17, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5487, file: !1, line: 2274, column: 17)
!5826 = !DILocation(line: 2275, column: 43, scope: !5825)
!5827 = !DILocation(line: 2275, column: 17, scope: !5825)
!5828 = !DILocation(line: 2277, column: 28, scope: !5487)
!5829 = !DILocation(line: 2278, column: 35, scope: !5487)
!5830 = !DILocation(line: 2278, column: 19, scope: !5487)
!5831 = !DILocation(line: 2278, column: 33, scope: !5487)
!5832 = !DILocation(line: 2281, column: 17, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5487, file: !1, line: 2281, column: 17)
!5834 = !DILocation(line: 2281, column: 28, scope: !5833)
!5835 = !DILocation(line: 2281, column: 17, scope: !5487)
!5836 = !DILocation(line: 2283, column: 24, scope: !5833)
!5837 = !DILocation(line: 2287, column: 33, scope: !5487)
!5838 = !DILocation(line: 2287, column: 13, scope: !5487)
!5839 = !DILocation(line: 2289, column: 17, scope: !5487)
!5840 = !DILocation(line: 2284, column: 23, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !1, line: 2283, column: 33)
!5842 = distinct !DILexicalBlock(scope: !5833, file: !1, line: 2283, column: 24)
!5843 = !DILocation(line: 2284, column: 37, scope: !5841)
!5844 = !DILocation(line: 2285, column: 13, scope: !5841)
!5845 = !DILocation(line: 2282, column: 23, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5833, file: !1, line: 2281, column: 34)
!5847 = !DILocation(line: 2282, column: 38, scope: !5846)
!5848 = !DILocation(line: 2283, column: 13, scope: !5846)
!5849 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !5850)
!5850 = distinct !DILocation(line: 2290, column: 17, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5491, file: !1, line: 2289, column: 25)
!5852 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !5850)
!5853 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !5850)
!5854 = !DILocation(line: 780, column: 52, scope: !2101, inlinedAt: !5850)
!5855 = !DILocation(line: 780, column: 59, scope: !2101, inlinedAt: !5850)
!5856 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !5850)
!5857 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !5850)
!5858 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !5850)
!5859 = !DILocation(line: 2291, column: 13, scope: !5851)
!5860 = !DILocation(line: 2292, column: 60, scope: !5490)
!5861 = !DILocation(line: 2292, column: 34, scope: !5490)
!5862 = !DILocation(line: 2292, column: 24, scope: !5490)
!5863 = !DILocation(line: 2294, column: 22, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5490, file: !1, line: 2294, column: 21)
!5865 = !DILocation(line: 2294, column: 21, scope: !5490)
!5866 = !DILocation(line: 2294, column: 49, scope: !5864)
!5867 = !DILocation(line: 2294, column: 31, scope: !5864)
!5868 = !DILocation(line: 0, scope: !5851)
!5869 = !DILocation(line: 2296, column: 21, scope: !5487)
!5870 = !DILocation(line: 2299, column: 40, scope: !5487)
!5871 = !DILocation(line: 2299, column: 37, scope: !5487)
!5872 = !DILocation(line: 2299, column: 54, scope: !5487)
!5873 = !DILocation(line: 2299, column: 65, scope: !5487)
!5874 = !DILocation(line: 2299, column: 13, scope: !5487)
!5875 = !DILocation(line: 2301, column: 25, scope: !5487)
!5876 = !DILocation(line: 2302, column: 9, scope: !5487)
!5877 = !DILocation(line: 2303, column: 5, scope: !5475)
!5878 = !DILocation(line: 2228, column: 40, scope: !5475)
!5879 = !DILocation(line: 2228, column: 5, scope: !5475)
!5880 = distinct !{!5880, !5730, !5881}
!5881 = !DILocation(line: 2303, column: 5, scope: !5472)
!5882 = !DILocation(line: 2305, column: 37, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5733, file: !1, line: 2304, column: 28)
!5884 = !DILocation(line: 2305, column: 34, scope: !5883)
!5885 = !DILocation(line: 2305, column: 51, scope: !5883)
!5886 = !DILocation(line: 2305, column: 9, scope: !5883)
!5887 = !DILocation(line: 2306, column: 21, scope: !5883)
!5888 = !DILocation(line: 2307, column: 5, scope: !5883)
!5889 = !DILocation(line: 2308, column: 5, scope: !5444)
!5890 = !DILocation(line: 2309, column: 5, scope: !5444)
!5891 = !DILocation(line: 2310, column: 1, scope: !5444)
!5892 = distinct !DISubprogram(name: "xdelCommand", scope: !1, file: !1, line: 2318, type: !2221, isLocal: false, isDefinition: true, scopeLine: 2318, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !5893)
!5893 = !{!5894, !5895, !5896, !5897, !5898, !5900, !5901}
!5894 = !DILocalVariable(name: "c", arg: 1, scope: !5892, file: !1, line: 2318, type: !2104)
!5895 = !DILocalVariable(name: "o", scope: !5892, file: !1, line: 2319, type: !371)
!5896 = !DILocalVariable(name: "s", scope: !5892, file: !1, line: 2323, type: !69)
!5897 = !DILocalVariable(name: "id", scope: !5892, file: !1, line: 2328, type: !95)
!5898 = !DILocalVariable(name: "j", scope: !5899, file: !1, line: 2329, type: !12)
!5899 = distinct !DILexicalBlock(scope: !5892, file: !1, line: 2329, column: 5)
!5900 = !DILocalVariable(name: "deleted", scope: !5892, file: !1, line: 2334, type: !12)
!5901 = !DILocalVariable(name: "j", scope: !5902, file: !1, line: 2335, type: !12)
!5902 = distinct !DILexicalBlock(scope: !5892, file: !1, line: 2335, column: 5)
!5903 = !DILocation(line: 2318, column: 26, scope: !5892)
!5904 = !DILocation(line: 2321, column: 41, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5892, file: !1, line: 2321, column: 9)
!5906 = !DILocation(line: 2321, column: 38, scope: !5905)
!5907 = !DILocation(line: 2321, column: 56, scope: !5905)
!5908 = !DILocation(line: 2321, column: 14, scope: !5905)
!5909 = !DILocation(line: 2319, column: 11, scope: !5892)
!5910 = !DILocation(line: 2321, column: 64, scope: !5905)
!5911 = !DILocation(line: 2322, column: 9, scope: !5905)
!5912 = !DILocation(line: 2322, column: 12, scope: !5905)
!5913 = !DILocation(line: 2321, column: 9, scope: !5892)
!5914 = !DILocation(line: 2323, column: 20, scope: !5892)
!5915 = !DILocation(line: 2323, column: 13, scope: !5892)
!5916 = !DILocation(line: 2328, column: 5, scope: !5892)
!5917 = !DILocation(line: 2329, column: 14, scope: !5899)
!5918 = !DILocation(line: 2329, column: 10, scope: !5899)
!5919 = !DILocation(line: 2329, column: 28, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5899, file: !1, line: 2329, column: 5)
!5921 = !DILocation(line: 2329, column: 23, scope: !5920)
!5922 = !DILocation(line: 2329, column: 5, scope: !5899)
!5923 = !DILocation(line: 2334, column: 9, scope: !5892)
!5924 = !DILocation(line: 2335, column: 14, scope: !5902)
!5925 = !DILocation(line: 2335, column: 10, scope: !5902)
!5926 = !DILocation(line: 2335, column: 5, scope: !5902)
!5927 = !DILocation(line: 2335, column: 23, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5902, file: !1, line: 2335, column: 5)
!5929 = !DILocation(line: 2330, column: 45, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5931, file: !1, line: 2330, column: 13)
!5931 = distinct !DILexicalBlock(scope: !5920, file: !1, line: 2329, column: 39)
!5932 = !DILocation(line: 2330, column: 42, scope: !5930)
!5933 = !DILocation(line: 2328, column: 14, scope: !5892)
!5934 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !5935)
!5935 = distinct !DILocation(line: 2330, column: 13, scope: !5930)
!5936 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !5935)
!5937 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !5935)
!5938 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !5935)
!5939 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !5935)
!5940 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !5935)
!5941 = !DILocation(line: 2330, column: 60, scope: !5930)
!5942 = !DILocation(line: 2330, column: 13, scope: !5931)
!5943 = !DILocation(line: 2330, column: 69, scope: !5930)
!5944 = !DILocation(line: 2329, column: 35, scope: !5920)
!5945 = !DILocation(line: 2329, column: 5, scope: !5920)
!5946 = distinct !{!5946, !5922, !5947}
!5947 = !DILocation(line: 2331, column: 5, scope: !5899)
!5948 = !DILocation(line: 2341, column: 9, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5892, file: !1, line: 2341, column: 9)
!5950 = !DILocation(line: 2341, column: 9, scope: !5892)
!5951 = !DILocation(line: 2336, column: 41, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5928, file: !1, line: 2335, column: 39)
!5953 = !DILocation(line: 2336, column: 38, scope: !5952)
!5954 = !DILocation(line: 1149, column: 40, scope: !3175, inlinedAt: !5955)
!5955 = distinct !DILocation(line: 2336, column: 9, scope: !5952)
!5956 = !DILocation(line: 1149, column: 49, scope: !3175, inlinedAt: !5955)
!5957 = !DILocation(line: 1149, column: 62, scope: !3175, inlinedAt: !5955)
!5958 = !DILocation(line: 1149, column: 75, scope: !3175, inlinedAt: !5955)
!5959 = !DILocation(line: 1150, column: 12, scope: !3175, inlinedAt: !5955)
!5960 = !DILocation(line: 1150, column: 5, scope: !3175, inlinedAt: !5955)
!5961 = !DILocation(line: 762, column: 30, scope: !2067, inlinedAt: !5962)
!5962 = distinct !DILocation(line: 2337, column: 20, scope: !5952)
!5963 = !DILocation(line: 762, column: 43, scope: !2067, inlinedAt: !5962)
!5964 = !DILocation(line: 763, column: 9, scope: !2067, inlinedAt: !5962)
!5965 = !DILocation(line: 764, column: 5, scope: !2067, inlinedAt: !5962)
!5966 = !DILocation(line: 764, column: 20, scope: !2067, inlinedAt: !5962)
!5967 = !DILocation(line: 765, column: 5, scope: !2067, inlinedAt: !5962)
!5968 = !DILocation(line: 766, column: 5, scope: !2067, inlinedAt: !5962)
!5969 = !DILocation(line: 767, column: 5, scope: !2067, inlinedAt: !5962)
!5970 = !DILocation(line: 766, column: 14, scope: !2067, inlinedAt: !5962)
!5971 = !DILocation(line: 767, column: 13, scope: !2067, inlinedAt: !5962)
!5972 = !DILocation(line: 768, column: 9, scope: !2088, inlinedAt: !5962)
!5973 = !DILocation(line: 768, column: 9, scope: !2067, inlinedAt: !5962)
!5974 = !DILocation(line: 769, column: 9, scope: !2091, inlinedAt: !5962)
!5975 = !DILocation(line: 771, column: 5, scope: !2091, inlinedAt: !5962)
!5976 = !DILocation(line: 0, scope: !2067, inlinedAt: !5962)
!5977 = !DILocation(line: 756, column: 41, scope: !2050, inlinedAt: !5978)
!5978 = distinct !DILocation(line: 772, column: 5, scope: !2067, inlinedAt: !5962)
!5979 = !DILocation(line: 757, column: 5, scope: !2050, inlinedAt: !5978)
!5980 = !DILocation(line: 758, column: 1, scope: !2050, inlinedAt: !5978)
!5981 = !DILocation(line: 774, column: 1, scope: !2067, inlinedAt: !5962)
!5982 = !DILocation(line: 773, column: 5, scope: !2067, inlinedAt: !5962)
!5983 = !DILocation(line: 2337, column: 17, scope: !5952)
!5984 = !DILocation(line: 2335, column: 35, scope: !5928)
!5985 = !DILocation(line: 2335, column: 5, scope: !5928)
!5986 = !DILocation(line: 2335, column: 28, scope: !5928)
!5987 = distinct !{!5987, !5926, !5988}
!5988 = !DILocation(line: 2338, column: 5, scope: !5902)
!5989 = !DILocation(line: 2342, column: 30, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5949, file: !1, line: 2341, column: 18)
!5991 = !DILocation(line: 2342, column: 36, scope: !5990)
!5992 = !DILocation(line: 2342, column: 33, scope: !5990)
!5993 = !DILocation(line: 2342, column: 9, scope: !5990)
!5994 = !DILocation(line: 2343, column: 53, scope: !5990)
!5995 = !DILocation(line: 2343, column: 50, scope: !5990)
!5996 = !DILocation(line: 2343, column: 64, scope: !5990)
!5997 = !DILocation(line: 2343, column: 68, scope: !5990)
!5998 = !DILocation(line: 2343, column: 9, scope: !5990)
!5999 = !DILocation(line: 2344, column: 25, scope: !5990)
!6000 = !DILocation(line: 2344, column: 22, scope: !5990)
!6001 = !DILocation(line: 2345, column: 5, scope: !5990)
!6002 = !DILocation(line: 0, scope: !5990)
!6003 = !DILocation(line: 2346, column: 5, scope: !5892)
!6004 = !DILocation(line: 2346, column: 24, scope: !5892)
!6005 = !DILocation(line: 2347, column: 1, scope: !5892)
!6006 = distinct !DISubprogram(name: "xtrimCommand", scope: !1, file: !1, line: 2361, type: !2221, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !6007)
!6007 = !{!6008, !6009, !6010, !6011, !6012, !6013, !6014, !6015, !6016, !6020, !6021, !6024}
!6008 = !DILocalVariable(name: "c", arg: 1, scope: !6006, file: !1, line: 2361, type: !2104)
!6009 = !DILocalVariable(name: "o", scope: !6006, file: !1, line: 2362, type: !371)
!6010 = !DILocalVariable(name: "s", scope: !6006, file: !1, line: 2368, type: !69)
!6011 = !DILocalVariable(name: "trim_strategy", scope: !6006, file: !1, line: 2371, type: !12)
!6012 = !DILocalVariable(name: "maxlen", scope: !6006, file: !1, line: 2372, type: !246)
!6013 = !DILocalVariable(name: "approx_maxlen", scope: !6006, file: !1, line: 2373, type: !12)
!6014 = !DILocalVariable(name: "maxlen_arg_idx", scope: !6006, file: !1, line: 2375, type: !12)
!6015 = !DILocalVariable(name: "i", scope: !6006, file: !1, line: 2378, type: !12)
!6016 = !DILocalVariable(name: "moreargs", scope: !6017, file: !1, line: 2380, type: !12)
!6017 = distinct !DILexicalBlock(scope: !6018, file: !1, line: 2379, column: 30)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !1, line: 2379, column: 5)
!6019 = distinct !DILexicalBlock(scope: !6006, file: !1, line: 2379, column: 5)
!6020 = !DILocalVariable(name: "opt", scope: !6017, file: !1, line: 2381, type: !10)
!6021 = !DILocalVariable(name: "next", scope: !6022, file: !1, line: 2385, type: !10)
!6022 = distinct !DILexicalBlock(scope: !6023, file: !1, line: 2382, column: 52)
!6023 = distinct !DILexicalBlock(scope: !6017, file: !1, line: 2382, column: 13)
!6024 = !DILocalVariable(name: "deleted", scope: !6006, file: !1, line: 2409, type: !196)
!6025 = !DILocation(line: 2361, column: 27, scope: !6006)
!6026 = !DILocation(line: 2366, column: 41, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6006, file: !1, line: 2366, column: 9)
!6028 = !DILocation(line: 2366, column: 38, scope: !6027)
!6029 = !DILocation(line: 2366, column: 56, scope: !6027)
!6030 = !DILocation(line: 2366, column: 14, scope: !6027)
!6031 = !DILocation(line: 2362, column: 11, scope: !6006)
!6032 = !DILocation(line: 2366, column: 64, scope: !6027)
!6033 = !DILocation(line: 2367, column: 9, scope: !6027)
!6034 = !DILocation(line: 2367, column: 12, scope: !6027)
!6035 = !DILocation(line: 2366, column: 9, scope: !6006)
!6036 = !DILocation(line: 2368, column: 20, scope: !6006)
!6037 = !DILocation(line: 2368, column: 13, scope: !6006)
!6038 = !DILocation(line: 2371, column: 9, scope: !6006)
!6039 = !DILocation(line: 2372, column: 5, scope: !6006)
!6040 = !DILocation(line: 2372, column: 15, scope: !6006)
!6041 = !DILocation(line: 2373, column: 9, scope: !6006)
!6042 = !DILocation(line: 2375, column: 9, scope: !6006)
!6043 = !DILocation(line: 2378, column: 9, scope: !6006)
!6044 = !DILocation(line: 2379, column: 5, scope: !6006)
!6045 = !DILocation(line: 2379, column: 19, scope: !6018)
!6046 = !DILocation(line: 2379, column: 14, scope: !6018)
!6047 = !DILocation(line: 2379, column: 5, scope: !6019)
!6048 = !DILocation(line: 2380, column: 36, scope: !6017)
!6049 = !DILocation(line: 2380, column: 13, scope: !6017)
!6050 = !DILocation(line: 2381, column: 24, scope: !6017)
!6051 = !DILocation(line: 2381, column: 21, scope: !6017)
!6052 = !DILocation(line: 2381, column: 33, scope: !6017)
!6053 = !DILocation(line: 2381, column: 15, scope: !6017)
!6054 = !DILocation(line: 2382, column: 14, scope: !6023)
!6055 = !DILocation(line: 2382, column: 42, scope: !6023)
!6056 = !DILocation(line: 2382, column: 39, scope: !6023)
!6057 = !DILocation(line: 2385, column: 35, scope: !6022)
!6058 = !DILocation(line: 2385, column: 26, scope: !6022)
!6059 = !DILocation(line: 2385, column: 40, scope: !6022)
!6060 = !DILocation(line: 2385, column: 19, scope: !6022)
!6061 = !DILocation(line: 2387, column: 26, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6022, file: !1, line: 2387, column: 17)
!6063 = !DILocation(line: 2387, column: 31, scope: !6062)
!6064 = !DILocation(line: 2387, column: 34, scope: !6062)
!6065 = !DILocation(line: 2387, column: 42, scope: !6062)
!6066 = !DILocation(line: 2387, column: 49, scope: !6062)
!6067 = !DILocation(line: 2387, column: 52, scope: !6062)
!6068 = !DILocation(line: 2387, column: 60, scope: !6062)
!6069 = !DILocation(line: 2387, column: 17, scope: !6022)
!6070 = !DILocation(line: 0, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6062, file: !1, line: 2390, column: 24)
!6072 = !DILocation(line: 2390, column: 56, scope: !6071)
!6073 = !DILocation(line: 2390, column: 38, scope: !6071)
!6074 = !DILocation(line: 2390, column: 49, scope: !6071)
!6075 = !DILocation(line: 2390, column: 59, scope: !6071)
!6076 = !DILocation(line: 2390, column: 67, scope: !6071)
!6077 = !DILocation(line: 2390, column: 24, scope: !6062)
!6078 = !DILocation(line: 2392, column: 13, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6071, file: !1, line: 2390, column: 76)
!6080 = !DILocation(line: 0, scope: !6006)
!6081 = !DILocation(line: 0, scope: !6022)
!6082 = !DILocation(line: 2393, column: 57, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6022, file: !1, line: 2393, column: 17)
!6084 = !DILocation(line: 2393, column: 48, scope: !6083)
!6085 = !DILocation(line: 2393, column: 17, scope: !6083)
!6086 = !DILocation(line: 2394, column: 17, scope: !6083)
!6087 = !DILocation(line: 2393, column: 17, scope: !6022)
!6088 = !DILocation(line: 2396, column: 17, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6022, file: !1, line: 2396, column: 17)
!6090 = !DILocation(line: 2396, column: 24, scope: !6089)
!6091 = !DILocation(line: 2396, column: 17, scope: !6022)
!6092 = !DILocation(line: 2397, column: 17, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6089, file: !1, line: 2396, column: 29)
!6094 = !DILocation(line: 2398, column: 17, scope: !6093)
!6095 = !DILocation(line: 0, scope: !6093)
!6096 = !DILocation(line: 2403, column: 31, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6023, file: !1, line: 2402, column: 16)
!6098 = !DILocation(line: 2403, column: 13, scope: !6097)
!6099 = !DILocation(line: 2404, column: 13, scope: !6097)
!6100 = !DILocation(line: 2402, column: 9, scope: !6023)
!6101 = !DILocation(line: 2406, column: 5, scope: !6018)
!6102 = !DILocation(line: 2379, column: 26, scope: !6018)
!6103 = !DILocation(line: 2379, column: 5, scope: !6018)
!6104 = distinct !{!6104, !6047, !6105}
!6105 = !DILocation(line: 2406, column: 5, scope: !6019)
!6106 = !DILocation(line: 2409, column: 13, scope: !6006)
!6107 = !DILocation(line: 2410, column: 9, scope: !6006)
!6108 = !DILocation(line: 2411, column: 19, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6110, file: !1, line: 2410, column: 48)
!6110 = distinct !DILexicalBlock(scope: !6006, file: !1, line: 2410, column: 9)
!6111 = !DILocation(line: 2418, column: 9, scope: !6112)
!6112 = distinct !DILexicalBlock(scope: !6006, file: !1, line: 2418, column: 9)
!6113 = !DILocation(line: 2418, column: 9, scope: !6006)
!6114 = !DILocation(line: 2413, column: 9, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6110, file: !1, line: 2412, column: 12)
!6116 = !DILocation(line: 2414, column: 9, scope: !6115)
!6117 = !DILocation(line: 2419, column: 30, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6112, file: !1, line: 2418, column: 18)
!6119 = !DILocation(line: 2419, column: 36, scope: !6118)
!6120 = !DILocation(line: 2419, column: 33, scope: !6118)
!6121 = !DILocation(line: 2419, column: 9, scope: !6118)
!6122 = !DILocation(line: 2420, column: 54, scope: !6118)
!6123 = !DILocation(line: 2420, column: 51, scope: !6118)
!6124 = !DILocation(line: 2420, column: 65, scope: !6118)
!6125 = !DILocation(line: 2420, column: 69, scope: !6118)
!6126 = !DILocation(line: 2420, column: 9, scope: !6118)
!6127 = !DILocation(line: 2421, column: 22, scope: !6118)
!6128 = !DILocation(line: 2422, column: 13, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6118, file: !1, line: 2422, column: 13)
!6130 = !DILocation(line: 2422, column: 13, scope: !6118)
!6131 = !DILocation(line: 1155, column: 40, scope: !3187, inlinedAt: !6132)
!6132 = distinct !DILocation(line: 2422, column: 28, scope: !6129)
!6133 = !DILocation(line: 1155, column: 51, scope: !3187, inlinedAt: !6132)
!6134 = !DILocation(line: 1155, column: 58, scope: !3187, inlinedAt: !6132)
!6135 = !DILocation(line: 1156, column: 58, scope: !3187, inlinedAt: !6132)
!6136 = !DILocation(line: 1156, column: 24, scope: !3187, inlinedAt: !6132)
!6137 = !DILocation(line: 1156, column: 11, scope: !3187, inlinedAt: !6132)
!6138 = !DILocation(line: 1157, column: 23, scope: !3187, inlinedAt: !6132)
!6139 = !DILocation(line: 1157, column: 11, scope: !3187, inlinedAt: !6132)
!6140 = !DILocation(line: 1159, column: 5, scope: !3187, inlinedAt: !6132)
!6141 = !DILocation(line: 1160, column: 5, scope: !3187, inlinedAt: !6132)
!6142 = !DILocation(line: 1162, column: 5, scope: !3187, inlinedAt: !6132)
!6143 = !DILocation(line: 1163, column: 5, scope: !3187, inlinedAt: !6132)
!6144 = !DILocation(line: 1164, column: 1, scope: !3187, inlinedAt: !6132)
!6145 = !DILocation(line: 2422, column: 28, scope: !6129)
!6146 = !DILocation(line: 2424, column: 5, scope: !6006)
!6147 = !DILocation(line: 2425, column: 1, scope: !6006)
!6148 = distinct !DISubprogram(name: "xinfoCommand", scope: !1, file: !1, line: 2431, type: !2221, isLocal: false, isDefinition: true, scopeLine: 2431, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !6149)
!6149 = !{!6150, !6151, !6153, !6154, !6155, !6156, !6157, !6160, !6161, !6162, !6164, !6165, !6168, !6170, !6173, !6174}
!6150 = !DILocalVariable(name: "c", arg: 1, scope: !6148, file: !1, line: 2431, type: !2104)
!6151 = !DILocalVariable(name: "help", scope: !6148, file: !1, line: 2432, type: !6152)
!6152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2982, size: 320, elements: !2505)
!6153 = !DILocalVariable(name: "s", scope: !6148, file: !1, line: 2439, type: !69)
!6154 = !DILocalVariable(name: "opt", scope: !6148, file: !1, line: 2440, type: !10)
!6155 = !DILocalVariable(name: "key", scope: !6148, file: !1, line: 2441, type: !371)
!6156 = !DILocalVariable(name: "o", scope: !6148, file: !1, line: 2458, type: !371)
!6157 = !DILocalVariable(name: "cg", scope: !6158, file: !1, line: 2465, type: !144)
!6158 = distinct !DILexicalBlock(scope: !6159, file: !1, line: 2463, column: 55)
!6159 = distinct !DILexicalBlock(scope: !6148, file: !1, line: 2463, column: 9)
!6160 = !DILocalVariable(name: "ri", scope: !6158, file: !1, line: 2474, type: !388)
!6161 = !DILocalVariable(name: "now", scope: !6158, file: !1, line: 2477, type: !2299)
!6162 = !DILocalVariable(name: "consumer", scope: !6163, file: !1, line: 2479, type: !2357)
!6163 = distinct !DILexicalBlock(scope: !6158, file: !1, line: 2478, column: 29)
!6164 = !DILocalVariable(name: "idle", scope: !6163, file: !1, line: 2480, type: !2299)
!6165 = !DILocalVariable(name: "ri", scope: !6166, file: !1, line: 2500, type: !388)
!6166 = distinct !DILexicalBlock(scope: !6167, file: !1, line: 2492, column: 59)
!6167 = distinct !DILexicalBlock(scope: !6159, file: !1, line: 2492, column: 16)
!6168 = !DILocalVariable(name: "cg", scope: !6169, file: !1, line: 2504, type: !144)
!6169 = distinct !DILexicalBlock(scope: !6166, file: !1, line: 2503, column: 29)
!6170 = !DILocalVariable(name: "count", scope: !6171, file: !1, line: 2532, type: !12)
!6171 = distinct !DILexicalBlock(scope: !6172, file: !1, line: 2516, column: 59)
!6172 = distinct !DILexicalBlock(scope: !6167, file: !1, line: 2516, column: 16)
!6173 = !DILocalVariable(name: "start", scope: !6171, file: !1, line: 2533, type: !95)
!6174 = !DILocalVariable(name: "end", scope: !6171, file: !1, line: 2533, type: !95)
!6175 = !DILocation(line: 2431, column: 27, scope: !6148)
!6176 = !DILocation(line: 2432, column: 5, scope: !6148)
!6177 = !DILocation(line: 2432, column: 17, scope: !6148)
!6178 = !DILocation(line: 2439, column: 13, scope: !6148)
!6179 = !DILocation(line: 2444, column: 24, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6148, file: !1, line: 2444, column: 9)
!6181 = !DILocation(line: 2444, column: 21, scope: !6180)
!6182 = !DILocation(line: 2444, column: 33, scope: !6180)
!6183 = !DILocation(line: 2444, column: 10, scope: !6180)
!6184 = !DILocation(line: 2444, column: 9, scope: !6148)
!6185 = !DILocation(line: 2445, column: 9, scope: !6186)
!6186 = distinct !DILexicalBlock(scope: !6180, file: !1, line: 2444, column: 46)
!6187 = !DILocation(line: 2446, column: 9, scope: !6186)
!6188 = !DILocation(line: 2447, column: 19, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6180, file: !1, line: 2447, column: 16)
!6190 = !DILocation(line: 2447, column: 24, scope: !6189)
!6191 = !DILocation(line: 2447, column: 16, scope: !6180)
!6192 = !DILocation(line: 2448, column: 9, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !1, line: 2447, column: 29)
!6194 = !DILocation(line: 2449, column: 9, scope: !6193)
!6195 = !DILocation(line: 2440, column: 11, scope: !6148)
!6196 = !DILocation(line: 2455, column: 11, scope: !6148)
!6197 = !DILocation(line: 2441, column: 11, scope: !6148)
!6198 = !DILocation(line: 2458, column: 50, scope: !6148)
!6199 = !DILocation(line: 2458, column: 15, scope: !6148)
!6200 = !DILocation(line: 2458, column: 11, scope: !6148)
!6201 = !DILocation(line: 2459, column: 11, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6148, file: !1, line: 2459, column: 9)
!6203 = !DILocation(line: 2459, column: 19, scope: !6202)
!6204 = !DILocation(line: 2459, column: 22, scope: !6202)
!6205 = !DILocation(line: 2459, column: 9, scope: !6148)
!6206 = !DILocation(line: 2460, column: 12, scope: !6148)
!6207 = !DILocation(line: 2463, column: 10, scope: !6159)
!6208 = !DILocation(line: 2463, column: 38, scope: !6159)
!6209 = !DILocation(line: 2463, column: 44, scope: !6159)
!6210 = !DILocation(line: 2463, column: 49, scope: !6159)
!6211 = !DILocation(line: 2463, column: 9, scope: !6148)
!6212 = !DILocation(line: 2465, column: 44, scope: !6158)
!6213 = !DILocation(line: 2465, column: 41, scope: !6158)
!6214 = !DILocation(line: 2465, column: 53, scope: !6158)
!6215 = !DILocation(line: 1643, column: 34, scope: !3861, inlinedAt: !6216)
!6216 = distinct !DILocation(line: 2465, column: 24, scope: !6158)
!6217 = !DILocation(line: 1643, column: 41, scope: !3861, inlinedAt: !6216)
!6218 = !DILocation(line: 1644, column: 12, scope: !3871, inlinedAt: !6216)
!6219 = !DILocation(line: 1644, column: 20, scope: !3871, inlinedAt: !6216)
!6220 = !DILocation(line: 1644, column: 9, scope: !3861, inlinedAt: !6216)
!6221 = !DILocation(line: 1644, column: 29, scope: !3871, inlinedAt: !6216)
!6222 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !6223)
!6223 = distinct !DILocation(line: 1646, column: 28, scope: !3861, inlinedAt: !6216)
!6224 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !6223)
!6225 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !6223)
!6226 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !6223)
!6227 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !6223)
!6228 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !6223)
!6229 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !6223)
!6230 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !6223)
!6231 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !6223)
!6232 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !6223)
!6233 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !6223)
!6234 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !6223)
!6235 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !6223)
!6236 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !6223)
!6237 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !6223)
!6238 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !6223)
!6239 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !6223)
!6240 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !6223)
!6241 = !DILocation(line: 0, scope: !678, inlinedAt: !6223)
!6242 = !DILocation(line: 0, scope: !6158)
!6243 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !6223)
!6244 = !DILocation(line: 1645, column: 20, scope: !3861, inlinedAt: !6216)
!6245 = !DILocation(line: 1645, column: 15, scope: !3861, inlinedAt: !6216)
!6246 = !DILocation(line: 1647, column: 19, scope: !3861, inlinedAt: !6216)
!6247 = !DILocation(line: 1647, column: 16, scope: !3861, inlinedAt: !6216)
!6248 = !DILocation(line: 1648, column: 1, scope: !3861, inlinedAt: !6216)
!6249 = !DILocation(line: 2465, column: 19, scope: !6158)
!6250 = !DILocation(line: 2466, column: 13, scope: !6158)
!6251 = !DILocation(line: 2466, column: 16, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6158, file: !1, line: 2466, column: 13)
!6253 = !DILocation(line: 2469, column: 46, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6252, file: !1, line: 2466, column: 25)
!6255 = !DILocation(line: 2469, column: 43, scope: !6254)
!6256 = !DILocation(line: 2469, column: 55, scope: !6254)
!6257 = !DILocation(line: 2469, column: 72, scope: !6254)
!6258 = !DILocation(line: 2467, column: 13, scope: !6254)
!6259 = !DILocation(line: 2470, column: 13, scope: !6254)
!6260 = !DILocation(line: 2473, column: 44, scope: !6158)
!6261 = !DILocation(line: 2473, column: 32, scope: !6158)
!6262 = !DILocation(line: 2473, column: 9, scope: !6158)
!6263 = !DILocation(line: 2474, column: 9, scope: !6158)
!6264 = !DILocation(line: 2475, column: 26, scope: !6158)
!6265 = !DILocation(line: 2474, column: 21, scope: !6158)
!6266 = !DILocation(line: 2475, column: 9, scope: !6158)
!6267 = !DILocation(line: 2476, column: 9, scope: !6158)
!6268 = !DILocation(line: 2477, column: 24, scope: !6158)
!6269 = !DILocation(line: 2477, column: 18, scope: !6158)
!6270 = !DILocation(line: 2478, column: 9, scope: !6158)
!6271 = !DILocation(line: 2478, column: 15, scope: !6158)
!6272 = !DILocation(line: 2479, column: 43, scope: !6163)
!6273 = !DILocation(line: 2479, column: 29, scope: !6163)
!6274 = !DILocation(line: 2480, column: 45, scope: !6163)
!6275 = !DILocation(line: 2480, column: 33, scope: !6163)
!6276 = !DILocation(line: 2480, column: 22, scope: !6163)
!6277 = !DILocation(line: 2481, column: 17, scope: !6163)
!6278 = !DILocation(line: 2483, column: 13, scope: !6163)
!6279 = !DILocation(line: 2484, column: 13, scope: !6163)
!6280 = !DILocation(line: 2485, column: 45, scope: !6163)
!6281 = !DILocation(line: 87, column: 39, scope: !663, inlinedAt: !6282)
!6282 = distinct !DILocation(line: 2485, column: 50, scope: !6163)
!6283 = !DILocation(line: 88, column: 27, scope: !663, inlinedAt: !6282)
!6284 = !DILocation(line: 88, column: 19, scope: !663, inlinedAt: !6282)
!6285 = !DILocation(line: 89, column: 5, scope: !663, inlinedAt: !6282)
!6286 = !DILocation(line: 91, column: 20, scope: !678, inlinedAt: !6282)
!6287 = !DILocation(line: 91, column: 13, scope: !678, inlinedAt: !6282)
!6288 = !DILocation(line: 93, column: 20, scope: !678, inlinedAt: !6282)
!6289 = !DILocation(line: 93, column: 34, scope: !678, inlinedAt: !6282)
!6290 = !DILocation(line: 93, column: 13, scope: !678, inlinedAt: !6282)
!6291 = !DILocation(line: 95, column: 20, scope: !678, inlinedAt: !6282)
!6292 = !DILocation(line: 95, column: 35, scope: !678, inlinedAt: !6282)
!6293 = !DILocation(line: 95, column: 13, scope: !678, inlinedAt: !6282)
!6294 = !DILocation(line: 97, column: 20, scope: !678, inlinedAt: !6282)
!6295 = !DILocation(line: 97, column: 35, scope: !678, inlinedAt: !6282)
!6296 = !DILocation(line: 97, column: 13, scope: !678, inlinedAt: !6282)
!6297 = !DILocation(line: 99, column: 20, scope: !678, inlinedAt: !6282)
!6298 = !DILocation(line: 99, column: 35, scope: !678, inlinedAt: !6282)
!6299 = !DILocation(line: 99, column: 13, scope: !678, inlinedAt: !6282)
!6300 = !DILocation(line: 0, scope: !678, inlinedAt: !6282)
!6301 = !DILocation(line: 0, scope: !6163)
!6302 = !DILocation(line: 102, column: 1, scope: !663, inlinedAt: !6282)
!6303 = !DILocation(line: 2485, column: 13, scope: !6163)
!6304 = !DILocation(line: 2486, column: 13, scope: !6163)
!6305 = !DILocation(line: 2487, column: 50, scope: !6163)
!6306 = !DILocation(line: 2487, column: 32, scope: !6163)
!6307 = !DILocation(line: 2487, column: 13, scope: !6163)
!6308 = !DILocation(line: 2488, column: 13, scope: !6163)
!6309 = !DILocation(line: 2489, column: 13, scope: !6163)
!6310 = distinct !{!6310, !6270, !6311}
!6311 = !DILocation(line: 2490, column: 9, scope: !6158)
!6312 = !DILocation(line: 2491, column: 9, scope: !6158)
!6313 = !DILocation(line: 2492, column: 5, scope: !6159)
!6314 = !DILocation(line: 2492, column: 17, scope: !6167)
!6315 = !DILocation(line: 2492, column: 42, scope: !6167)
!6316 = !DILocation(line: 2492, column: 48, scope: !6167)
!6317 = !DILocation(line: 2492, column: 53, scope: !6167)
!6318 = !DILocation(line: 2492, column: 16, scope: !6159)
!6319 = !DILocation(line: 2494, column: 16, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6166, file: !1, line: 2494, column: 13)
!6321 = !DILocation(line: 2494, column: 24, scope: !6320)
!6322 = !DILocation(line: 2494, column: 13, scope: !6166)
!6323 = !DILocation(line: 2495, column: 13, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6320, file: !1, line: 2494, column: 33)
!6325 = !DILocation(line: 2496, column: 13, scope: !6324)
!6326 = !DILocation(line: 2499, column: 32, scope: !6166)
!6327 = !DILocation(line: 2499, column: 9, scope: !6166)
!6328 = !DILocation(line: 2500, column: 9, scope: !6166)
!6329 = !DILocation(line: 2501, column: 25, scope: !6166)
!6330 = !DILocation(line: 2500, column: 21, scope: !6166)
!6331 = !DILocation(line: 2501, column: 9, scope: !6166)
!6332 = !DILocation(line: 2502, column: 9, scope: !6166)
!6333 = !DILocation(line: 2503, column: 9, scope: !6166)
!6334 = !DILocation(line: 2503, column: 15, scope: !6166)
!6335 = !DILocation(line: 2504, column: 31, scope: !6169)
!6336 = !DILocation(line: 2504, column: 23, scope: !6169)
!6337 = !DILocation(line: 2505, column: 13, scope: !6169)
!6338 = !DILocation(line: 2506, column: 13, scope: !6169)
!6339 = !DILocation(line: 2507, column: 38, scope: !6169)
!6340 = !DILocation(line: 2507, column: 45, scope: !6169)
!6341 = !DILocation(line: 2507, column: 13, scope: !6169)
!6342 = !DILocation(line: 2508, column: 13, scope: !6169)
!6343 = !DILocation(line: 2509, column: 44, scope: !6169)
!6344 = !DILocation(line: 2509, column: 32, scope: !6169)
!6345 = !DILocation(line: 2509, column: 13, scope: !6169)
!6346 = !DILocation(line: 2510, column: 13, scope: !6169)
!6347 = !DILocation(line: 2511, column: 44, scope: !6169)
!6348 = !DILocation(line: 2511, column: 32, scope: !6169)
!6349 = !DILocation(line: 2511, column: 13, scope: !6169)
!6350 = !DILocation(line: 2512, column: 13, scope: !6169)
!6351 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !6352)
!6352 = distinct !DILocation(line: 2513, column: 13, scope: !6169)
!6353 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !6352)
!6354 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !6352)
!6355 = !DILocation(line: 780, column: 52, scope: !2101, inlinedAt: !6352)
!6356 = !DILocation(line: 780, column: 59, scope: !2101, inlinedAt: !6352)
!6357 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !6352)
!6358 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !6352)
!6359 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !6352)
!6360 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !6352)
!6361 = distinct !{!6361, !6333, !6362}
!6362 = !DILocation(line: 2514, column: 9, scope: !6166)
!6363 = !DILocation(line: 2515, column: 9, scope: !6166)
!6364 = !DILocation(line: 2516, column: 5, scope: !6167)
!6365 = !DILocation(line: 2516, column: 5, scope: !6166)
!6366 = !DILocation(line: 2516, column: 17, scope: !6172)
!6367 = !DILocation(line: 2516, column: 42, scope: !6172)
!6368 = !DILocation(line: 2516, column: 48, scope: !6172)
!6369 = !DILocation(line: 2516, column: 53, scope: !6172)
!6370 = !DILocation(line: 2516, column: 16, scope: !6167)
!6371 = !DILocation(line: 2518, column: 9, scope: !6171)
!6372 = !DILocation(line: 2519, column: 9, scope: !6171)
!6373 = !DILocation(line: 2520, column: 31, scope: !6171)
!6374 = !DILocation(line: 2520, column: 9, scope: !6171)
!6375 = !DILocation(line: 2521, column: 9, scope: !6171)
!6376 = !DILocation(line: 2522, column: 39, scope: !6171)
!6377 = !DILocation(line: 2522, column: 28, scope: !6171)
!6378 = !DILocation(line: 2522, column: 9, scope: !6171)
!6379 = !DILocation(line: 2523, column: 9, scope: !6171)
!6380 = !DILocation(line: 2524, column: 31, scope: !6171)
!6381 = !DILocation(line: 2524, column: 36, scope: !6171)
!6382 = !{!6383, !113, i64 16}
!6383 = !{!"rax", !110, i64 0, !113, i64 8, !113, i64 16}
!6384 = !DILocation(line: 2524, column: 9, scope: !6171)
!6385 = !DILocation(line: 2525, column: 9, scope: !6171)
!6386 = !DILocation(line: 2526, column: 31, scope: !6171)
!6387 = !DILocation(line: 2526, column: 28, scope: !6171)
!6388 = !DILocation(line: 2526, column: 41, scope: !6171)
!6389 = !DILocation(line: 2526, column: 9, scope: !6171)
!6390 = !DILocation(line: 2527, column: 9, scope: !6171)
!6391 = !DILocation(line: 779, column: 31, scope: !2101, inlinedAt: !6392)
!6392 = distinct !DILocation(line: 2528, column: 9, scope: !6171)
!6393 = !DILocation(line: 779, column: 44, scope: !2101, inlinedAt: !6392)
!6394 = !DILocation(line: 780, column: 29, scope: !2101, inlinedAt: !6392)
!6395 = !DILocation(line: 780, column: 52, scope: !2101, inlinedAt: !6392)
!6396 = !DILocation(line: 780, column: 59, scope: !2101, inlinedAt: !6392)
!6397 = !DILocation(line: 780, column: 19, scope: !2101, inlinedAt: !6392)
!6398 = !DILocation(line: 780, column: 9, scope: !2101, inlinedAt: !6392)
!6399 = !DILocation(line: 781, column: 5, scope: !2101, inlinedAt: !6392)
!6400 = !DILocation(line: 782, column: 1, scope: !2101, inlinedAt: !6392)
!6401 = !DILocation(line: 2533, column: 9, scope: !6171)
!6402 = !DILocation(line: 2534, column: 18, scope: !6171)
!6403 = !DILocation(line: 2535, column: 16, scope: !6171)
!6404 = !DILocation(line: 2536, column: 9, scope: !6171)
!6405 = !DILocation(line: 2533, column: 18, scope: !6171)
!6406 = !DILocation(line: 2533, column: 25, scope: !6171)
!6407 = !DILocation(line: 2537, column: 17, scope: !6171)
!6408 = !DILocation(line: 2532, column: 13, scope: !6171)
!6409 = !DILocation(line: 2539, column: 14, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6171, file: !1, line: 2539, column: 13)
!6411 = !DILocation(line: 2539, column: 13, scope: !6171)
!6412 = !DILocation(line: 2539, column: 39, scope: !6410)
!6413 = !DILocation(line: 2539, column: 21, scope: !6410)
!6414 = !DILocation(line: 2540, column: 9, scope: !6171)
!6415 = !DILocation(line: 2541, column: 17, scope: !6171)
!6416 = !DILocation(line: 2543, column: 14, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6171, file: !1, line: 2543, column: 13)
!6418 = !DILocation(line: 2543, column: 13, scope: !6171)
!6419 = !DILocation(line: 2543, column: 39, scope: !6417)
!6420 = !DILocation(line: 2543, column: 21, scope: !6417)
!6421 = !DILocation(line: 2544, column: 5, scope: !6172)
!6422 = !DILocation(line: 2544, column: 5, scope: !6171)
!6423 = !DILocation(line: 2545, column: 9, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6172, file: !1, line: 2544, column: 12)
!6425 = !DILocation(line: 2547, column: 1, scope: !6148)
