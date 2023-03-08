; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/blocked.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/blocked.c"
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
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.listIter = type { %struct.listNode*, i32 }
%struct.streamID = type { i64, i64 }
%struct.sreamPropInfo = type { %struct.redisObject*, %struct.redisObject* }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.rax* }
%struct.streamCG = type { %struct.streamID, %struct.rax*, %struct.rax* }
%struct.streamConsumer = type { i64, i8*, %struct.rax* }

@.str = private unnamed_addr constant [42 x i8] c"timeout is not an integer or out of range\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"timeout is negative\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/blocked.c\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unknown btype in unblockClient().\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Unknown btype in replyToBlockedClientTimedOut().\00", align 1
@.str.6 = private unnamed_addr constant [96 x i8] c"-UNBLOCKED force unblock from blocking operation, instance state changed (master -> replica?)\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.8 = private unnamed_addr constant [72 x i8] c"-NOGROUP the consumer group this client was blocked on no longer exists\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"dictSize(c->bpop.keys) != 0\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"l != NULL\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"dictAdd(db->ready_keys,key,NULL) == DICT_OK\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i32) local_unnamed_addr #0 !dbg !56 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !315
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !315
  %7 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %1, i64* nonnull %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #6, !dbg !317
  %8 = icmp eq i32 %7, 0, !dbg !319
  br i1 %8, label %9, label %25, !dbg !320

; <label>:9:                                      ; preds = %4
  %10 = load i64, i64* %5, align 8, !dbg !321, !tbaa !323
  %11 = icmp slt i64 %10, 0, !dbg !327
  br i1 %11, label %12, label %13, !dbg !328

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !329
  br label %25, !dbg !331

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i64 %10, 0, !dbg !332
  br i1 %14, label %23, label %15, !dbg !334

; <label>:15:                                     ; preds = %13
  %16 = icmp eq i32 %3, 0, !dbg !335
  br i1 %16, label %17, label %19, !dbg !338

; <label>:17:                                     ; preds = %15
  %18 = mul nsw i64 %10, 1000, !dbg !339
  store i64 %18, i64* %5, align 8, !dbg !339, !tbaa !323
  br label %19, !dbg !340

; <label>:19:                                     ; preds = %17, %15
  %20 = call i64 @mstime() #6, !dbg !341
  %21 = load i64, i64* %5, align 8, !dbg !342, !tbaa !323
  %22 = add nsw i64 %21, %20, !dbg !342
  store i64 %22, i64* %5, align 8, !dbg !342, !tbaa !323
  br label %23, !dbg !343

; <label>:23:                                     ; preds = %13, %19
  %24 = phi i64 [ 0, %13 ], [ %22, %19 ], !dbg !344
  store i64 %24, i64* %2, align 8, !dbg !345, !tbaa !323
  br label %25, !dbg !346

; <label>:25:                                     ; preds = %4, %23, %12
  %26 = phi i32 [ -1, %12 ], [ 0, %23 ], [ -1, %4 ], !dbg !347
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !348
  ret i32 %26, !dbg !348
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @blockClient(%struct.client* nocapture, i32) local_unnamed_addr #0 !dbg !349 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !357
  %4 = load i32, i32* %3, align 8, !dbg !358, !tbaa !359
  %5 = or i32 %4, 16, !dbg !358
  store i32 %5, i32* %3, align 8, !dbg !358, !tbaa !359
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !366
  store i32 %1, i32* %6, align 8, !dbg !367, !tbaa !368
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !369, !tbaa !370
  %8 = add i32 %7, 1, !dbg !369
  store i32 %8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !369, !tbaa !370
  %9 = sext i32 %1 to i64, !dbg !376
  %10 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %9, !dbg !376
  %11 = load i32, i32* %10, align 4, !dbg !377, !tbaa !378
  %12 = add i32 %11, 1, !dbg !377
  store i32 %12, i32* %10, align 4, !dbg !377, !tbaa !378
  ret void, !dbg !379
}

; Function Attrs: noredzone nounwind
define dso_local void @processUnblockedClients() local_unnamed_addr #0 !dbg !380 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !386, !tbaa !387
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !386
  %3 = load i64, i64* %2, align 8, !dbg !386, !tbaa !388
  %4 = icmp eq i64 %3, 0, !dbg !390
  br i1 %4, label %58, label %5, !dbg !390

; <label>:5:                                      ; preds = %0, %53
  %6 = phi %struct.list* [ %54, %53 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !391
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !391, !tbaa !393
  %9 = icmp eq %struct.listNode* %8, null, !dbg !395
  br i1 %9, label %10, label %11, !dbg !395

; <label>:10:                                     ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 118) #6, !dbg !395
  tail call void @_exit(i32 1) #7, !dbg !395
  unreachable, !dbg !395

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !396
  %13 = bitcast i8** %12 to %struct.client**, !dbg !396
  %14 = load %struct.client*, %struct.client** %13, align 8, !dbg !396, !tbaa !397
  tail call void @listDelNode(%struct.list* nonnull %6, %struct.listNode* nonnull %8) #6, !dbg !400
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 21, !dbg !401
  %16 = load i32, i32* %15, align 8, !dbg !402, !tbaa !359
  %17 = and i32 %16, -129, !dbg !402
  store i32 %17, i32* %15, align 8, !dbg !402, !tbaa !359
  %18 = and i32 %16, 16, !dbg !403
  %19 = icmp eq i32 %18, 0, !dbg !403
  br i1 %19, label %20, label %53, !dbg !405

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 4, !dbg !406
  %22 = load i8*, i8** %21, align 8, !dbg !406, !tbaa !409
  %23 = icmp eq i8* %22, null, !dbg !410
  br i1 %23, label %53, label %24, !dbg !411

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !423
  %26 = load i8, i8* %25, align 1, !dbg !423, !tbaa !424
  %27 = trunc i8 %26 to i3, !dbg !426
  switch i3 %27, label %53 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !426

; <label>:28:                                     ; preds = %24
  %29 = lshr i8 %26, 3, !dbg !427
  %30 = zext i8 %29 to i64, !dbg !427
  br label %49, !dbg !429

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !430
  %33 = load i8, i8* %32, align 1, !dbg !431, !tbaa !424
  %34 = zext i8 %33 to i64, !dbg !430
  br label %49, !dbg !432

; <label>:35:                                     ; preds = %24
  %36 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !433
  %37 = bitcast i8* %36 to i16*, !dbg !434
  %38 = load i16, i16* %37, align 1, !dbg !434, !tbaa !435
  %39 = zext i16 %38 to i64, !dbg !433
  br label %49, !dbg !437

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !438
  %42 = bitcast i8* %41 to i32*, !dbg !439
  %43 = load i32, i32* %42, align 1, !dbg !439, !tbaa !378
  %44 = zext i32 %43 to i64, !dbg !438
  br label %49, !dbg !440

; <label>:45:                                     ; preds = %24
  %46 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !441
  %47 = bitcast i8* %46 to i64*, !dbg !442
  %48 = load i64, i64* %47, align 1, !dbg !442, !tbaa !443
  br label %49, !dbg !444

; <label>:49:                                     ; preds = %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], !dbg !445
  %51 = icmp eq i64 %50, 0, !dbg !446
  br i1 %51, label %53, label %52, !dbg !447

; <label>:52:                                     ; preds = %49
  tail call void @processInputBufferAndReplicate(%struct.client* nonnull %14) #6, !dbg !448
  br label %53, !dbg !450

; <label>:53:                                     ; preds = %24, %49, %20, %11, %52
  %54 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !386, !tbaa !387
  %55 = getelementptr inbounds %struct.list, %struct.list* %54, i64 0, i32 5, !dbg !386
  %56 = load i64, i64* %55, align 8, !dbg !386, !tbaa !388
  %57 = icmp eq i64 %56, 0, !dbg !390
  br i1 %57, label %58, label %5, !dbg !390, !llvm.loop !451

; <label>:58:                                     ; preds = %53, %0
  ret void, !dbg !453
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @processInputBufferAndReplicate(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #0 !dbg !454 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !458
  %3 = load i32, i32* %2, align 8, !dbg !458, !tbaa !359
  %4 = trunc i32 %3 to i8, !dbg !460
  %5 = icmp slt i8 %4, 0, !dbg !460
  br i1 %5, label %11, label %6, !dbg !461

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 128, !dbg !462
  store i32 %7, i32* %2, align 8, !dbg !462, !tbaa !359
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !464, !tbaa !387
  %9 = bitcast %struct.client* %0 to i8*, !dbg !465
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %8, i8* %9) #6, !dbg !466
  br label %11, !dbg !467

; <label>:11:                                     ; preds = %6, %1
  ret void, !dbg !468
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @unblockClient(%struct.client*) local_unnamed_addr #0 !dbg !469 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !473
  %3 = load i32, i32* %2, align 8, !dbg !473, !tbaa !368
  switch i32 %3, label %7 [
    i32 1, label %4
    i32 5, label %4
    i32 4, label %4
    i32 2, label %5
    i32 3, label %6
  ], !dbg !475

; <label>:4:                                      ; preds = %1, %1, %1
  tail call void @unblockClientWaitingData(%struct.client* nonnull %0) #8, !dbg !476
  br label %8, !dbg !478

; <label>:5:                                      ; preds = %1
  tail call void @unblockClientWaitingReplicas(%struct.client* nonnull %0) #6, !dbg !479
  br label %8, !dbg !482

; <label>:6:                                      ; preds = %1
  tail call void @unblockClientFromModule(%struct.client* nonnull %0) #6, !dbg !483
  br label %8

; <label>:7:                                      ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !486
  tail call void @_exit(i32 1) #7, !dbg !486
  unreachable, !dbg !486

; <label>:8:                                      ; preds = %5, %6, %4
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !488, !tbaa !370
  %10 = add i32 %9, -1, !dbg !488
  store i32 %10, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !488, !tbaa !370
  %11 = load i32, i32* %2, align 8, !dbg !489, !tbaa !368
  %12 = sext i32 %11 to i64, !dbg !490
  %13 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %12, !dbg !490
  %14 = load i32, i32* %13, align 4, !dbg !491, !tbaa !378
  %15 = add i32 %14, -1, !dbg !491
  store i32 %15, i32* %13, align 4, !dbg !491, !tbaa !378
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !492
  %17 = load i32, i32* %16, align 8, !dbg !493, !tbaa !359
  %18 = and i32 %17, -17, !dbg !493
  store i32 %18, i32* %16, align 8, !dbg !493, !tbaa !359
  store i32 0, i32* %2, align 8, !dbg !494, !tbaa !368
  %19 = trunc i32 %17 to i8, !dbg !497
  %20 = icmp slt i8 %19, 0, !dbg !497
  br i1 %20, label %26, label %21, !dbg !498

; <label>:21:                                     ; preds = %8
  %22 = or i32 %18, 128, !dbg !499
  store i32 %22, i32* %16, align 8, !dbg !499, !tbaa !359
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !500, !tbaa !387
  %24 = bitcast %struct.client* %0 to i8*, !dbg !501
  %25 = tail call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %24) #6, !dbg !502
  br label %26, !dbg !503

; <label>:26:                                     ; preds = %8, %21
  ret void, !dbg !504
}

; Function Attrs: noredzone nounwind
define dso_local void @unblockClientWaitingData(%struct.client*) local_unnamed_addr #0 !dbg !505 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1, !dbg !525
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !525, !tbaa !526
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !525
  %5 = load i64, i64* %4, align 8, !dbg !525, !tbaa !527
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !525
  %7 = load i64, i64* %6, align 8, !dbg !525, !tbaa !527
  %8 = sub i64 0, %7, !dbg !525
  %9 = icmp eq i64 %5, %8, !dbg !525
  br i1 %9, label %10, label %11, !dbg !525

; <label>:10:                                     ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 548) #6, !dbg !525
  tail call void @_exit(i32 1) #7, !dbg !525
  unreachable, !dbg !525

; <label>:11:                                     ; preds = %1
  %12 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %3) #6, !dbg !529
  %13 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %12) #6, !dbg !531
  %14 = icmp eq %struct.dictEntry* %13, null, !dbg !533
  br i1 %14, label %44, label %15, !dbg !534

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %17 = bitcast %struct.client* %0 to i8*
  br label %18, !dbg !534

; <label>:18:                                     ; preds = %15, %41
  %19 = phi %struct.dictEntry* [ %13, %15 ], [ %42, %41 ]
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %19, i64 0, i32 0, !dbg !535
  %21 = load i8*, i8** %20, align 8, !dbg !535, !tbaa !536
  %22 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !538, !tbaa !539
  %23 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %22, i64 0, i32 2, !dbg !540
  %24 = load %struct.dict*, %struct.dict** %23, align 8, !dbg !540, !tbaa !541
  %25 = tail call i8* @dictFetchValue(%struct.dict* %24, i8* %21) #6, !dbg !543
  %26 = bitcast i8* %25 to %struct.list*, !dbg !543
  %27 = icmp eq i8* %25, null, !dbg !545
  br i1 %27, label %28, label %30, !dbg !545

; <label>:28:                                     ; preds = %18
  %29 = bitcast i8* %21 to %struct.redisObject*, !dbg !535
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 556) #6, !dbg !545
  tail call void @_exit(i32 1) #7, !dbg !545
  unreachable, !dbg !545

; <label>:30:                                     ; preds = %18
  %31 = tail call %struct.listNode* @listSearchKey(%struct.list* %26, i8* nonnull %17) #6, !dbg !547
  tail call void @listDelNode(%struct.list* %26, %struct.listNode* %31) #6, !dbg !548
  %32 = getelementptr inbounds i8, i8* %25, i64 40, !dbg !549
  %33 = bitcast i8* %32 to i64*, !dbg !549
  %34 = load i64, i64* %33, align 8, !dbg !549, !tbaa !388
  %35 = icmp eq i64 %34, 0, !dbg !551
  br i1 %35, label %36, label %41, !dbg !552

; <label>:36:                                     ; preds = %30
  %37 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !553, !tbaa !539
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 2, !dbg !554
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !554, !tbaa !541
  %40 = tail call i32 @dictDelete(%struct.dict* %39, i8* %21) #6, !dbg !555
  br label %41, !dbg !555

; <label>:41:                                     ; preds = %36, %30
  %42 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %12) #6, !dbg !531
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !533
  br i1 %43, label %44, label %18, !dbg !534, !llvm.loop !556

; <label>:44:                                     ; preds = %41, %11
  tail call void @dictReleaseIterator(%struct.dictIterator* %12) #6, !dbg !558
  %45 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !559, !tbaa !526
  tail call void @dictEmpty(%struct.dict* %45, void (i8*)* null) #6, !dbg !560
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 2, !dbg !561
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !561, !tbaa !563
  %48 = icmp eq %struct.redisObject* %47, null, !dbg !564
  br i1 %48, label %50, label %49, !dbg !565

; <label>:49:                                     ; preds = %44
  tail call void @decrRefCount(%struct.redisObject* nonnull %47) #6, !dbg !566
  store %struct.redisObject* null, %struct.redisObject** %46, align 8, !dbg !568, !tbaa !563
  br label %50, !dbg !569

; <label>:50:                                     ; preds = %44, %49
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !570
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !570, !tbaa !572
  %53 = icmp eq %struct.redisObject* %52, null, !dbg !573
  br i1 %53, label %58, label %54, !dbg !574

; <label>:54:                                     ; preds = %50
  tail call void @decrRefCount(%struct.redisObject* nonnull %52) #6, !dbg !575
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 5, !dbg !577
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !577, !tbaa !578
  tail call void @decrRefCount(%struct.redisObject* %56) #6, !dbg !579
  %57 = bitcast %struct.redisObject** %51 to <2 x %struct.redisObject*>*, !dbg !580
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %57, align 8, !dbg !580, !tbaa !581
  br label %58, !dbg !582

; <label>:58:                                     ; preds = %50, %54
  ret void, !dbg !583
}

; Function Attrs: noredzone
declare dso_local void @unblockClientWaitingReplicas(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @unblockClientFromModule(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replyToBlockedClientTimedOut(%struct.client*) local_unnamed_addr #0 !dbg !584 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !588
  %3 = load i32, i32* %2, align 8, !dbg !588, !tbaa !368
  switch i32 %3, label %12 [
    i32 1, label %4
    i32 5, label %4
    i32 4, label %4
    i32 2, label %6
    i32 3, label %11
  ], !dbg !590

; <label>:4:                                      ; preds = %1, %1, %1
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !591, !tbaa !593
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %5) #6, !dbg !595
  br label %13, !dbg !596

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 10, !dbg !597
  %8 = load i64, i64* %7, align 8, !dbg !597, !tbaa !600
  %9 = tail call i32 @replicationCountAcksByOffset(i64 %8) #6, !dbg !601
  %10 = sext i32 %9 to i64, !dbg !601
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %10) #6, !dbg !602
  br label %13, !dbg !603

; <label>:11:                                     ; preds = %1
  tail call void @moduleBlockedClientTimedOut(%struct.client* nonnull %0) #6, !dbg !604
  br label %13

; <label>:12:                                     ; preds = %1
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !607
  tail call void @_exit(i32 1) #7, !dbg !607
  unreachable, !dbg !607

; <label>:13:                                     ; preds = %6, %11, %4
  ret void, !dbg !609
}

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @replicationCountAcksByOffset(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @moduleBlockedClientTimedOut(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disconnectAllBlockedClients() local_unnamed_addr #0 !dbg !610 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !621
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !622, !tbaa !623
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #6, !dbg !625
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !626
  %5 = icmp eq %struct.listNode* %4, null, !dbg !628
  br i1 %5, label %22, label %6, !dbg !628

; <label>:6:                                      ; preds = %0, %19
  %7 = phi %struct.listNode* [ %20, %19 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !629
  %9 = bitcast i8** %8 to %struct.client**, !dbg !629
  %10 = load %struct.client*, %struct.client** %9, align 8, !dbg !629, !tbaa !397
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 21, !dbg !631
  %12 = load i32, i32* %11, align 8, !dbg !631, !tbaa !359
  %13 = and i32 %12, 16, !dbg !633
  %14 = icmp eq i32 %13, 0, !dbg !633
  br i1 %14, label %19, label %15, !dbg !634

; <label>:15:                                     ; preds = %6
  %16 = call i8* @sdsnew(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !635
  call void @addReplySds(%struct.client* %10, i8* %16) #6, !dbg !637
  call void @unblockClient(%struct.client* %10) #8, !dbg !638
  %17 = load i32, i32* %11, align 8, !dbg !639, !tbaa !359
  %18 = or i32 %17, 64, !dbg !639
  store i32 %18, i32* %11, align 8, !dbg !639, !tbaa !359
  br label %19, !dbg !640

; <label>:19:                                     ; preds = %6, %15
  %20 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !626
  %21 = icmp eq %struct.listNode* %20, null, !dbg !628
  br i1 %21, label %22, label %6, !dbg !628, !llvm.loop !641

; <label>:22:                                     ; preds = %19, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !643
  ret void, !dbg !643
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @handleClientsBlockedOnKeys() local_unnamed_addr #0 !dbg !644 {
  %1 = alloca [2 x %struct.redisObject*], align 16
  %2 = alloca %struct.listIter, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.sreamPropInfo, align 8
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !757, !tbaa !758
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !757
  %7 = load i64, i64* %6, align 8, !dbg !757, !tbaa !388
  %8 = icmp eq i64 %7, 0, !dbg !759
  br i1 %8, label %276, label %9, !dbg !760

; <label>:9:                                      ; preds = %0
  %10 = bitcast %struct.listIter* %2 to i8*
  %11 = bitcast [2 x %struct.redisObject*]* %1 to i8*
  %12 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %1, i64 0, i64 0
  %13 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %1, i64 0, i64 1
  %14 = bitcast %struct.redisObject** %13 to i64*
  %15 = bitcast %struct.streamID* %3 to i8*
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1
  %17 = bitcast %struct.sreamPropInfo* %4 to i8*
  %18 = bitcast %struct.sreamPropInfo* %4 to i64*
  %19 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %4, i64 0, i32 1
  %20 = bitcast %struct.redisObject** %19 to i64*
  br label %21, !dbg !760

; <label>:21:                                     ; preds = %9, %271
  %22 = phi i64* [ %6, %9 ], [ %273, %271 ]
  %23 = phi %struct.list* [ %5, %9 ], [ %272, %271 ]
  %24 = call %struct.list* @listCreate() #6, !dbg !762
  store %struct.list* %24, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !763, !tbaa !758
  %25 = load i64, i64* %22, align 8, !dbg !764, !tbaa !388
  %26 = icmp eq i64 %25, 0, !dbg !765
  br i1 %26, label %271, label %27, !dbg !766

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 0
  br label %29, !dbg !766

; <label>:29:                                     ; preds = %27, %267
  %30 = load %struct.listNode*, %struct.listNode** %28, align 8, !dbg !767, !tbaa !393
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %30, i64 0, i32 2, !dbg !769
  %32 = load i8*, i8** %31, align 8, !dbg !769, !tbaa !397
  %33 = bitcast i8* %32 to %struct.redisDb**, !dbg !771
  %34 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !771, !tbaa !772
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 0, i32 3, !dbg !774
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !774, !tbaa !775
  %37 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !776
  %38 = bitcast i8* %37 to %struct.redisObject**, !dbg !776
  %39 = bitcast i8* %37 to i8**, !dbg !776
  %40 = load i8*, i8** %39, align 8, !dbg !776, !tbaa !777
  %41 = call i32 @dictDelete(%struct.dict* %36, i8* %40) #6, !dbg !778
  %42 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !779, !tbaa !772
  %43 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !780, !tbaa !777
  %44 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %42, %struct.redisObject* %43) #6, !dbg !781
  %45 = icmp eq %struct.redisObject* %44, null, !dbg !783
  br i1 %45, label %267, label %46, !dbg !784

; <label>:46:                                     ; preds = %29
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 0, !dbg !785
  %48 = load i32, i32* %47, align 8, !dbg !785
  %49 = trunc i32 %48 to i4, !dbg !786
  switch i4 %49, label %267 [
    i4 1, label %50
    i4 3, label %123
    i4 6, label %193
  ], !dbg !786

; <label>:50:                                     ; preds = %46
  %51 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !787, !tbaa !772
  %52 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %51, i64 0, i32 2, !dbg !788
  %53 = load %struct.dict*, %struct.dict** %52, align 8, !dbg !788, !tbaa !541
  %54 = load i8*, i8** %39, align 8, !dbg !789, !tbaa !777
  %55 = call %struct.dictEntry* @dictFind(%struct.dict* %53, i8* %54) #6, !dbg !790
  %56 = icmp eq %struct.dictEntry* %55, null, !dbg !792
  br i1 %56, label %112, label %57, !dbg !793

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %55, i64 0, i32 1, i32 0, !dbg !794
  %59 = bitcast i8** %58 to %struct.list**, !dbg !794
  %60 = load %struct.list*, %struct.list** %59, align 8, !dbg !794, !tbaa !424
  %61 = getelementptr inbounds %struct.list, %struct.list* %60, i64 0, i32 5, !dbg !796
  %62 = load i64, i64* %61, align 8, !dbg !796, !tbaa !388
  %63 = trunc i64 %62 to i32, !dbg !796
  %64 = icmp eq i32 %63, 0, !dbg !798
  br i1 %64, label %112, label %65, !dbg !798

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds %struct.list, %struct.list* %60, i64 0, i32 0
  br label %67, !dbg !798

; <label>:67:                                     ; preds = %65, %110
  %68 = phi i32 [ %63, %65 ], [ %69, %110 ]
  %69 = add nsw i32 %68, -1, !dbg !799
  %70 = load %struct.listNode*, %struct.listNode** %66, align 8, !dbg !800, !tbaa !393
  %71 = getelementptr inbounds %struct.listNode, %struct.listNode* %70, i64 0, i32 2, !dbg !802
  %72 = load i8*, i8** %71, align 8, !dbg !802, !tbaa !397
  %73 = bitcast i8* %72 to %struct.client*, !dbg !803
  %74 = getelementptr inbounds i8, i8* %72, i64 384, !dbg !805
  %75 = bitcast i8* %74 to i32*, !dbg !805
  %76 = load i32, i32* %75, align 8, !dbg !805, !tbaa !368
  %77 = icmp eq i32 %76, 1, !dbg !807
  br i1 %77, label %80, label %78, !dbg !808

; <label>:78:                                     ; preds = %67
  call void @listDelNode(%struct.list* nonnull %60, %struct.listNode* %70) #6, !dbg !809
  %79 = call %struct.list* @listAddNodeTail(%struct.list* nonnull %60, i8* %72) #6, !dbg !811
  br label %110, !dbg !812, !llvm.loop !813

; <label>:80:                                     ; preds = %67
  %81 = getelementptr inbounds i8, i8* %72, i64 408, !dbg !815
  %82 = bitcast i8* %81 to %struct.redisObject**, !dbg !815
  %83 = load %struct.redisObject*, %struct.redisObject** %82, align 8, !dbg !815, !tbaa !563
  %84 = getelementptr inbounds i8, i8* %72, i64 88, !dbg !817
  %85 = bitcast i8* %84 to %struct.redisCommand**, !dbg !817
  %86 = load %struct.redisCommand*, %struct.redisCommand** %85, align 8, !dbg !817, !tbaa !818
  %87 = icmp eq %struct.redisCommand* %86, null, !dbg !819
  br i1 %87, label %92, label %88, !dbg !820

; <label>:88:                                     ; preds = %80
  %89 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %86, i64 0, i32 1, !dbg !821
  %90 = load void (%struct.client*)*, void (%struct.client*)** %89, align 8, !dbg !821, !tbaa !822
  %91 = icmp eq void (%struct.client*)* %90, @blpopCommand, !dbg !824
  br label %92

; <label>:92:                                     ; preds = %80, %88
  %93 = phi i1 [ false, %80 ], [ %91, %88 ], !dbg !825
  %94 = xor i1 %93, true, !dbg !826
  %95 = zext i1 %94 to i32, !dbg !826
  %96 = call %struct.redisObject* @listTypePop(%struct.redisObject* nonnull %44, i32 %95) #6, !dbg !828
  %97 = icmp eq %struct.redisObject* %96, null, !dbg !830
  br i1 %97, label %112, label %98, !dbg !832

; <label>:98:                                     ; preds = %92
  %99 = icmp ne %struct.redisObject* %83, null, !dbg !833
  br i1 %99, label %100, label %101, !dbg !836

; <label>:100:                                    ; preds = %98
  call void @incrRefCount(%struct.redisObject* nonnull %83) #6, !dbg !837
  br label %101, !dbg !837

; <label>:101:                                    ; preds = %100, %98
  call void @unblockClient(%struct.client* nonnull %73) #8, !dbg !838
  %102 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !839, !tbaa !777
  %103 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !841, !tbaa !772
  %104 = call i32 @serveClientBlockedOnList(%struct.client* nonnull %73, %struct.redisObject* %102, %struct.redisObject* %83, %struct.redisDb* %103, %struct.redisObject* nonnull %96, i32 %95) #6, !dbg !842
  %105 = icmp eq i32 %104, -1, !dbg !843
  br i1 %105, label %106, label %107, !dbg !844

; <label>:106:                                    ; preds = %101
  call void @listTypePush(%struct.redisObject* nonnull %44, %struct.redisObject* nonnull %96, i32 %95) #6, !dbg !845
  br label %107, !dbg !847

; <label>:107:                                    ; preds = %106, %101
  br i1 %99, label %108, label %109, !dbg !848

; <label>:108:                                    ; preds = %107
  call void @decrRefCount(%struct.redisObject* nonnull %83) #6, !dbg !849
  br label %109, !dbg !849

; <label>:109:                                    ; preds = %108, %107
  call void @decrRefCount(%struct.redisObject* nonnull %96) #6, !dbg !851
  br label %110, !dbg !814

; <label>:110:                                    ; preds = %109, %78
  %111 = icmp eq i32 %69, 0, !dbg !798
  br i1 %111, label %112, label %67, !dbg !798

; <label>:112:                                    ; preds = %110, %92, %57, %50
  %113 = call i64 @listTypeLength(%struct.redisObject* nonnull %44) #6, !dbg !852
  %114 = icmp eq i64 %113, 0, !dbg !854
  br i1 %114, label %115, label %267, !dbg !855

; <label>:115:                                    ; preds = %112
  %116 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !856, !tbaa !772
  %117 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !858, !tbaa !777
  %118 = call i32 @dbDelete(%struct.redisDb* %116, %struct.redisObject* %117) #6, !dbg !859
  %119 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !860, !tbaa !777
  %120 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !861, !tbaa !772
  %121 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %120, i64 0, i32 5, !dbg !862
  %122 = load i32, i32* %121, align 8, !dbg !862, !tbaa !863
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %119, i32 %122) #6, !dbg !864
  br label %267, !dbg !865

; <label>:123:                                    ; preds = %46
  %124 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !866, !tbaa !772
  %125 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %124, i64 0, i32 2, !dbg !867
  %126 = load %struct.dict*, %struct.dict** %125, align 8, !dbg !867, !tbaa !541
  %127 = load i8*, i8** %39, align 8, !dbg !868, !tbaa !777
  %128 = call %struct.dictEntry* @dictFind(%struct.dict* %126, i8* %127) #6, !dbg !869
  %129 = icmp eq %struct.dictEntry* %128, null, !dbg !871
  br i1 %129, label %267, label %130, !dbg !872

; <label>:130:                                    ; preds = %123
  %131 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %128, i64 0, i32 1, i32 0, !dbg !873
  %132 = bitcast i8** %131 to %struct.list**, !dbg !873
  %133 = load %struct.list*, %struct.list** %132, align 8, !dbg !873, !tbaa !424
  %134 = getelementptr inbounds %struct.list, %struct.list* %133, i64 0, i32 5, !dbg !875
  %135 = load i64, i64* %134, align 8, !dbg !875, !tbaa !388
  %136 = trunc i64 %135 to i32, !dbg !875
  %137 = call i64 @zsetLength(%struct.redisObject* nonnull %44) #6, !dbg !877
  %138 = icmp ne i32 %136, 0, !dbg !879
  %139 = icmp ne i64 %137, 0, !dbg !880
  %140 = and i1 %139, %138, !dbg !880
  br i1 %140, label %141, label %267, !dbg !881

; <label>:141:                                    ; preds = %130
  %142 = getelementptr inbounds %struct.list, %struct.list* %133, i64 0, i32 0
  %143 = bitcast i8* %37 to i64*
  br label %144, !dbg !881

; <label>:144:                                    ; preds = %141, %188
  %145 = phi i32 [ %136, %141 ], [ %147, %188 ]
  %146 = phi i64 [ %137, %141 ], [ %189, %188 ]
  %147 = add nsw i32 %145, -1, !dbg !879
  %148 = load %struct.listNode*, %struct.listNode** %142, align 8, !dbg !882, !tbaa !393
  %149 = getelementptr inbounds %struct.listNode, %struct.listNode* %148, i64 0, i32 2, !dbg !884
  %150 = load i8*, i8** %149, align 8, !dbg !884, !tbaa !397
  %151 = bitcast i8* %150 to %struct.client*, !dbg !885
  %152 = getelementptr inbounds i8, i8* %150, i64 384, !dbg !887
  %153 = bitcast i8* %152 to i32*, !dbg !887
  %154 = load i32, i32* %153, align 8, !dbg !887, !tbaa !368
  %155 = icmp eq i32 %154, 5, !dbg !889
  br i1 %155, label %158, label %156, !dbg !890

; <label>:156:                                    ; preds = %144
  call void @listDelNode(%struct.list* nonnull %133, %struct.listNode* %148) #6, !dbg !891
  %157 = call %struct.list* @listAddNodeTail(%struct.list* nonnull %133, i8* %150) #6, !dbg !893
  br label %188, !dbg !894, !llvm.loop !895

; <label>:158:                                    ; preds = %144
  %159 = getelementptr inbounds i8, i8* %150, i64 88, !dbg !897
  %160 = bitcast i8* %159 to %struct.redisCommand**, !dbg !897
  %161 = load %struct.redisCommand*, %struct.redisCommand** %160, align 8, !dbg !897, !tbaa !818
  %162 = icmp eq %struct.redisCommand* %161, null, !dbg !898
  br i1 %162, label %167, label %163, !dbg !899

; <label>:163:                                    ; preds = %158
  %164 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %161, i64 0, i32 1, !dbg !900
  %165 = load void (%struct.client*)*, void (%struct.client*)** %164, align 8, !dbg !900, !tbaa !822
  %166 = icmp eq void (%struct.client*)* %165, @bzpopminCommand, !dbg !901
  br label %167

; <label>:167:                                    ; preds = %158, %163
  %168 = phi i1 [ false, %158 ], [ %166, %163 ], !dbg !902
  %169 = xor i1 %168, true, !dbg !903
  %170 = zext i1 %169 to i32, !dbg !903
  call void @unblockClient(%struct.client* nonnull %151) #8, !dbg !905
  call void @genericZpopCommand(%struct.client* nonnull %151, %struct.redisObject** nonnull %38, i32 1, i32 %170, i32 1, %struct.redisObject* null) #6, !dbg !906
  %171 = add i64 %146, -1, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #5, !dbg !908
  %172 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 61), align 8, !dbg !910
  %173 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 62), align 8, !dbg !911
  %174 = select i1 %168, %struct.redisCommand* %172, %struct.redisCommand* %173, !dbg !912
  %175 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %174, i64 0, i32 0, !dbg !914
  %176 = load i8*, i8** %175, align 8, !dbg !914, !tbaa !915
  %177 = call i64 @strlen(i8* %176) #6, !dbg !916
  %178 = call %struct.redisObject* @createStringObject(i8* %176, i64 %177) #6, !dbg !917
  store %struct.redisObject* %178, %struct.redisObject** %12, align 16, !dbg !918, !tbaa !581
  %179 = load i64, i64* %143, align 8, !dbg !919, !tbaa !777
  store i64 %179, i64* %14, align 8, !dbg !920, !tbaa !581
  %180 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !921, !tbaa !777
  call void @incrRefCount(%struct.redisObject* %180) #6, !dbg !922
  %181 = getelementptr inbounds i8, i8* %150, i64 16, !dbg !923
  %182 = bitcast i8* %181 to %struct.redisDb**, !dbg !923
  %183 = load %struct.redisDb*, %struct.redisDb** %182, align 8, !dbg !923, !tbaa !539
  %184 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %183, i64 0, i32 5, !dbg !924
  %185 = load i32, i32* %184, align 8, !dbg !924, !tbaa !863
  call void @propagate(%struct.redisCommand* %174, i32 %185, %struct.redisObject** nonnull %12, i32 2, i32 3) #6, !dbg !925
  %186 = load %struct.redisObject*, %struct.redisObject** %12, align 16, !dbg !926, !tbaa !581
  call void @decrRefCount(%struct.redisObject* %186) #6, !dbg !927
  %187 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !928, !tbaa !581
  call void @decrRefCount(%struct.redisObject* %187) #6, !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #5, !dbg !896
  br label %188, !dbg !896

; <label>:188:                                    ; preds = %167, %156
  %189 = phi i64 [ %146, %156 ], [ %171, %167 ], !dbg !902
  %190 = icmp ne i32 %147, 0, !dbg !879
  %191 = icmp ne i64 %189, 0, !dbg !880
  %192 = and i1 %191, %190, !dbg !880
  br i1 %192, label %144, label %267, !dbg !881

; <label>:193:                                    ; preds = %46
  %194 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !930, !tbaa !772
  %195 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %194, i64 0, i32 2, !dbg !931
  %196 = load %struct.dict*, %struct.dict** %195, align 8, !dbg !931, !tbaa !541
  %197 = load i8*, i8** %39, align 8, !dbg !932, !tbaa !777
  %198 = call %struct.dictEntry* @dictFind(%struct.dict* %196, i8* %197) #6, !dbg !933
  %199 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 2, !dbg !935
  %200 = bitcast i8** %199 to %struct.stream**, !dbg !935
  %201 = load %struct.stream*, %struct.stream** %200, align 8, !dbg !935, !tbaa !936
  %202 = icmp eq %struct.dictEntry* %198, null, !dbg !939
  br i1 %202, label %267, label %203, !dbg !940

; <label>:203:                                    ; preds = %193
  %204 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %198, i64 0, i32 1, i32 0, !dbg !941
  %205 = bitcast i8** %204 to %struct.list**, !dbg !941
  %206 = load %struct.list*, %struct.list** %205, align 8, !dbg !941, !tbaa !424
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #5, !dbg !943
  call void @listRewind(%struct.list* %206, %struct.listIter* nonnull %2) #6, !dbg !945
  %207 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !946
  %208 = icmp eq %struct.listNode* %207, null, !dbg !948
  br i1 %208, label %266, label %209, !dbg !948

; <label>:209:                                    ; preds = %203
  %210 = getelementptr inbounds %struct.stream, %struct.stream* %201, i64 0, i32 2
  %211 = bitcast i8* %37 to i64*
  br label %212, !dbg !948

; <label>:212:                                    ; preds = %209, %263
  %213 = phi %struct.listNode* [ %207, %209 ], [ %264, %263 ]
  %214 = getelementptr inbounds %struct.listNode, %struct.listNode* %213, i64 0, i32 2, !dbg !949
  %215 = bitcast i8** %214 to %struct.client**, !dbg !949
  %216 = load %struct.client*, %struct.client** %215, align 8, !dbg !949, !tbaa !397
  %217 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 39, !dbg !951
  %218 = load i32, i32* %217, align 8, !dbg !951, !tbaa !368
  %219 = icmp eq i32 %218, 4, !dbg !953
  br i1 %219, label %220, label %263, !dbg !954, !llvm.loop !955

; <label>:220:                                    ; preds = %212
  %221 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 40, i32 1, !dbg !957
  %222 = load %struct.dict*, %struct.dict** %221, align 8, !dbg !957, !tbaa !526
  %223 = load i8*, i8** %39, align 8, !dbg !958, !tbaa !777
  %224 = call i8* @dictFetchValue(%struct.dict* %222, i8* %223) #6, !dbg !959
  %225 = bitcast i8* %224 to %struct.streamID*, !dbg !959
  %226 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 40, i32 4, !dbg !962
  %227 = load %struct.redisObject*, %struct.redisObject** %226, align 8, !dbg !962, !tbaa !572
  %228 = icmp eq %struct.redisObject* %227, null, !dbg !964
  br i1 %228, label %237, label %229, !dbg !965

; <label>:229:                                    ; preds = %220
  %230 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %227, i64 0, i32 2, !dbg !966
  %231 = load i8*, i8** %230, align 8, !dbg !966, !tbaa !936
  %232 = call %struct.streamCG* @streamLookupCG(%struct.stream* %201, i8* %231) #6, !dbg !968
  %233 = icmp eq %struct.streamCG* %232, null, !dbg !969
  br i1 %233, label %234, label %235, !dbg !971

; <label>:234:                                    ; preds = %229
  call void @addReplyError(%struct.client* nonnull %216, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !972
  call void @unblockClient(%struct.client* nonnull %216) #8, !dbg !974
  br label %263, !dbg !975, !llvm.loop !955

; <label>:235:                                    ; preds = %229
  %236 = bitcast %struct.streamCG* %232 to i8*, !dbg !976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %224, i8* align 8 %236, i64 16, i1 false), !dbg !976, !tbaa.struct !978
  br label %237, !dbg !979

; <label>:237:                                    ; preds = %220, %235
  %238 = phi %struct.streamCG* [ %232, %235 ], [ null, %220 ], !dbg !980
  %239 = call i32 @streamCompareID(%struct.streamID* nonnull %210, %struct.streamID* %225) #6, !dbg !981
  %240 = icmp sgt i32 %239, 0, !dbg !982
  br i1 %240, label %241, label %263, !dbg !983

; <label>:241:                                    ; preds = %237
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #5, !dbg !984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* align 8 %224, i64 16, i1 false), !dbg !985, !tbaa.struct !978
  %242 = load i64, i64* %16, align 8, !dbg !986, !tbaa !987
  %243 = add i64 %242, 1, !dbg !986
  store i64 %243, i64* %16, align 8, !dbg !986, !tbaa !987
  %244 = icmp eq %struct.streamCG* %238, null, !dbg !991
  br i1 %244, label %253, label %245, !dbg !993

; <label>:245:                                    ; preds = %241
  %246 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 40, i32 5, !dbg !994
  %247 = load %struct.redisObject*, %struct.redisObject** %246, align 8, !dbg !994, !tbaa !578
  %248 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %247, i64 0, i32 2, !dbg !996
  %249 = load i8*, i8** %248, align 8, !dbg !996, !tbaa !936
  %250 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nonnull %238, i8* %249, i32 1) #6, !dbg !997
  %251 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 40, i32 8, !dbg !998
  %252 = load i32, i32* %251, align 8, !dbg !998, !tbaa !999
  br label %253, !dbg !1000

; <label>:253:                                    ; preds = %241, %245
  %254 = phi %struct.streamConsumer* [ %250, %245 ], [ null, %241 ], !dbg !1001
  %255 = phi i32 [ %252, %245 ], [ 0, %241 ], !dbg !1001
  call void @addReplyMultiBulkLen(%struct.client* nonnull %216, i64 1) #6, !dbg !1002
  call void @addReplyMultiBulkLen(%struct.client* nonnull %216, i64 2) #6, !dbg !1003
  %256 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1004, !tbaa !777
  call void @addReplyBulk(%struct.client* nonnull %216, %struct.redisObject* %256) #6, !dbg !1005
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #5, !dbg !1006
  %257 = load i64, i64* %211, align 8, !dbg !1007, !tbaa !777
  store i64 %257, i64* %18, align 8, !dbg !1008, !tbaa !1009
  %258 = bitcast %struct.redisObject** %226 to i64*, !dbg !1011
  %259 = load i64, i64* %258, align 8, !dbg !1011, !tbaa !572
  store i64 %259, i64* %20, align 8, !dbg !1008, !tbaa !1012
  %260 = getelementptr inbounds %struct.client, %struct.client* %216, i64 0, i32 40, i32 3, !dbg !1013
  %261 = load i64, i64* %260, align 8, !dbg !1013, !tbaa !1014
  %262 = call i64 @streamReplyWithRange(%struct.client* nonnull %216, %struct.stream* %201, %struct.streamID* nonnull %3, %struct.streamID* null, i64 %261, i32 0, %struct.streamCG* %238, %struct.streamConsumer* %254, i32 %255, %struct.sreamPropInfo* nonnull %4) #6, !dbg !1017
  call void @unblockClient(%struct.client* nonnull %216) #8, !dbg !1018
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #5, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #5, !dbg !1019
  br label %263, !dbg !1020

; <label>:263:                                    ; preds = %234, %253, %237, %212
  %264 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !946
  %265 = icmp eq %struct.listNode* %264, null, !dbg !948
  br i1 %265, label %266, label %212, !dbg !948

; <label>:266:                                    ; preds = %263, %203
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #5, !dbg !1021
  br label %267, !dbg !1022

; <label>:267:                                    ; preds = %188, %130, %29, %46, %266, %193, %123, %112, %115
  %268 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1023, !tbaa !777
  call void @decrRefCount(%struct.redisObject* %268) #6, !dbg !1024
  call void @zfree(i8* %32) #6, !dbg !1025
  call void @listDelNode(%struct.list* %23, %struct.listNode* %30) #6, !dbg !1026
  %269 = load i64, i64* %22, align 8, !dbg !764, !tbaa !388
  %270 = icmp eq i64 %269, 0, !dbg !765
  br i1 %270, label %271, label %29, !dbg !766, !llvm.loop !1027

; <label>:271:                                    ; preds = %267, %21
  call void @listRelease(%struct.list* nonnull %23) #6, !dbg !1029
  %272 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !757, !tbaa !758
  %273 = getelementptr inbounds %struct.list, %struct.list* %272, i64 0, i32 5, !dbg !757
  %274 = load i64, i64* %273, align 8, !dbg !757, !tbaa !388
  %275 = icmp eq i64 %274, 0, !dbg !759
  br i1 %275, label %276, label %21, !dbg !760, !llvm.loop !1030

; <label>:276:                                    ; preds = %271, %0
  ret void, !dbg !1032
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blpopCommand(%struct.client*) #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @listTypePop(%struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @serveClientBlockedOnList(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisDb*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listTypePush(%struct.redisObject*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @listTypeLength(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zsetLength(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @bzpopminCommand(%struct.client*) #3

; Function Attrs: noredzone
declare dso_local void @genericZpopCommand(%struct.client*, %struct.redisObject**, i32, i32, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @propagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.streamCG* @streamLookupCG(%struct.stream*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @streamCompareID(%struct.streamID*, %struct.streamID*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @streamReplyWithRange(%struct.client*, %struct.stream*, %struct.streamID*, %struct.streamID*, i64, i32, %struct.streamCG*, %struct.streamConsumer*, i32, %struct.sreamPropInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject** nocapture readonly, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #0 !dbg !1033 {
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 0, !dbg !1061
  store i64 %4, i64* %8, align 8, !dbg !1062, !tbaa !1063
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 2, !dbg !1064
  store %struct.redisObject* %5, %struct.redisObject** %9, align 8, !dbg !1065, !tbaa !563
  %10 = icmp eq %struct.redisObject* %5, null, !dbg !1066
  br i1 %10, label %12, label %11, !dbg !1068

; <label>:11:                                     ; preds = %7
  tail call void @incrRefCount(%struct.redisObject* nonnull %5) #6, !dbg !1069
  br label %12, !dbg !1069

; <label>:12:                                     ; preds = %7, %11
  %13 = icmp sgt i32 %3, 0, !dbg !1071
  br i1 %13, label %14, label %66, !dbg !1072

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %1, 4
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %18 = bitcast %struct.client* %0 to i8*
  %19 = sext i32 %3 to i64, !dbg !1072
  br label %20, !dbg !1072

; <label>:20:                                     ; preds = %14, %63
  %21 = phi i64 [ 0, %14 ], [ %64, %63 ]
  br i1 %15, label %22, label %27, !dbg !1074

; <label>:22:                                     ; preds = %20
  %23 = tail call i8* @zmalloc(i64 16) #6, !dbg !1075
  %24 = getelementptr inbounds %struct.streamID, %struct.streamID* %6, i64 %21, !dbg !1078
  %25 = bitcast %struct.streamID* %24 to i8*, !dbg !1079
  %26 = tail call i8* @memcpy(i8* %23, i8* %25, i64 16) #6, !dbg !1080
  br label %27, !dbg !1081

; <label>:27:                                     ; preds = %22, %20
  %28 = phi i8* [ %23, %22 ], [ null, %20 ], !dbg !1082
  %29 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !1083, !tbaa !526
  %30 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %21, !dbg !1085
  %31 = bitcast %struct.redisObject** %30 to i8**, !dbg !1085
  %32 = load i8*, i8** %31, align 8, !dbg !1085, !tbaa !581
  %33 = tail call i32 @dictAdd(%struct.dict* %29, i8* %32, i8* %28) #6, !dbg !1086
  %34 = icmp eq i32 %33, 0, !dbg !1087
  br i1 %34, label %36, label %35, !dbg !1088

; <label>:35:                                     ; preds = %27
  tail call void @zfree(i8* %28) #6, !dbg !1089
  br label %63, !dbg !1091

; <label>:36:                                     ; preds = %27
  %37 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1092, !tbaa !581
  tail call void @incrRefCount(%struct.redisObject* %37) #6, !dbg !1093
  %38 = load %struct.redisDb*, %struct.redisDb** %17, align 8, !dbg !1094, !tbaa !539
  %39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 0, i32 2, !dbg !1095
  %40 = load %struct.dict*, %struct.dict** %39, align 8, !dbg !1095, !tbaa !541
  %41 = load i8*, i8** %31, align 8, !dbg !1096, !tbaa !581
  %42 = tail call %struct.dictEntry* @dictFind(%struct.dict* %40, i8* %41) #6, !dbg !1097
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !1099
  br i1 %43, label %44, label %56, !dbg !1100

; <label>:44:                                     ; preds = %36
  %45 = tail call %struct.list* @listCreate() #6, !dbg !1101
  %46 = load %struct.redisDb*, %struct.redisDb** %17, align 8, !dbg !1103, !tbaa !539
  %47 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %46, i64 0, i32 2, !dbg !1104
  %48 = load %struct.dict*, %struct.dict** %47, align 8, !dbg !1104, !tbaa !541
  %49 = load i8*, i8** %31, align 8, !dbg !1105, !tbaa !581
  %50 = bitcast %struct.list* %45 to i8*, !dbg !1106
  %51 = tail call i32 @dictAdd(%struct.dict* %48, i8* %49, i8* %50) #6, !dbg !1107
  %52 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1109, !tbaa !581
  tail call void @incrRefCount(%struct.redisObject* %52) #6, !dbg !1110
  %53 = icmp eq i32 %51, 0, !dbg !1111
  br i1 %53, label %60, label %54, !dbg !1111

; <label>:54:                                     ; preds = %44
  %55 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1111, !tbaa !581
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 532) #6, !dbg !1111
  tail call void @_exit(i32 1) #7, !dbg !1111
  unreachable, !dbg !1111

; <label>:56:                                     ; preds = %36
  %57 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 1, i32 0, !dbg !1112
  %58 = bitcast i8** %57 to %struct.list**, !dbg !1112
  %59 = load %struct.list*, %struct.list** %58, align 8, !dbg !1112, !tbaa !424
  br label %60

; <label>:60:                                     ; preds = %44, %56
  %61 = phi %struct.list* [ %59, %56 ], [ %45, %44 ], !dbg !1114
  %62 = tail call %struct.list* @listAddNodeTail(%struct.list* %61, i8* nonnull %18) #6, !dbg !1115
  br label %63, !dbg !1116

; <label>:63:                                     ; preds = %60, %35
  %64 = add nuw nsw i64 %21, 1, !dbg !1117
  %65 = icmp slt i64 %64, %19, !dbg !1071
  br i1 %65, label %20, label %66, !dbg !1072, !llvm.loop !1118

; <label>:66:                                     ; preds = %63, %12
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1123
  %68 = load i32, i32* %67, align 8, !dbg !1124, !tbaa !359
  %69 = or i32 %68, 16, !dbg !1124
  store i32 %69, i32* %67, align 8, !dbg !1124, !tbaa !359
  %70 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !1125
  store i32 %1, i32* %70, align 8, !dbg !1126, !tbaa !368
  %71 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !1127, !tbaa !370
  %72 = add i32 %71, 1, !dbg !1127
  store i32 %72, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !1127, !tbaa !370
  %73 = sext i32 %1 to i64, !dbg !1128
  %74 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %73, !dbg !1128
  %75 = load i32, i32* %74, align 4, !dbg !1129, !tbaa !378
  %76 = add i32 %75, 1, !dbg !1129
  store i32 %76, i32* %74, align 4, !dbg !1129, !tbaa !378
  ret void, !dbg !1130
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictEmpty(%struct.dict*, void (i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @signalKeyAsReady(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1131 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 2, !dbg !1140
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1140, !tbaa !541
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !1142
  %6 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %5) #6, !dbg !1143
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !1144
  br i1 %7, label %24, label %8, !dbg !1145

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 3, !dbg !1146
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1146, !tbaa !775
  %11 = tail call %struct.dictEntry* @dictFind(%struct.dict* %10, i8* %5) #6, !dbg !1148
  %12 = icmp eq %struct.dictEntry* %11, null, !dbg !1149
  br i1 %12, label %13, label %24, !dbg !1150

; <label>:13:                                     ; preds = %8
  %14 = tail call i8* @zmalloc(i64 16) #6, !dbg !1151
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !1153
  %16 = bitcast i8* %15 to %struct.redisObject**, !dbg !1153
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !1154, !tbaa !777
  %17 = bitcast i8* %14 to %struct.redisDb**, !dbg !1155
  store %struct.redisDb* %0, %struct.redisDb** %17, align 8, !dbg !1156, !tbaa !772
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !1157
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !1158, !tbaa !758
  %19 = tail call %struct.list* @listAddNodeTail(%struct.list* %18, i8* %14) #6, !dbg !1159
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !1160
  %20 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1161, !tbaa !775
  %21 = tail call i32 @dictAdd(%struct.dict* %20, i8* %5, i8* null) #6, !dbg !1161
  %22 = icmp eq i32 %21, 0, !dbg !1161
  br i1 %22, label %24, label %23, !dbg !1161

; <label>:23:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 605) #6, !dbg !1161
  tail call void @_exit(i32 1) #7, !dbg !1161
  unreachable, !dbg !1161

; <label>:24:                                     ; preds = %13, %8, %2
  ret void, !dbg !1162
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/blocked.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !22, !32, !42}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !7, line: 51, size: 24, elements: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !{!9, !15, !16, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6, file: !7, line: 52, baseType: !10, size: 8)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 43, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !6, file: !7, line: 53, baseType: !10, size: 8, offset: 8)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 54, baseType: !14, size: 8, offset: 16)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !6, file: !7, line: 55, baseType: !18, offset: 24)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: -1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !7, line: 57, size: 40, elements: !24)
!24 = !{!25, !29, !30, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !23, file: !7, line: 58, baseType: !26, size: 16)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 36, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 57, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !23, file: !7, line: 59, baseType: !26, size: 16, offset: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !7, line: 60, baseType: !14, size: 8, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !23, file: !7, line: 61, baseType: !18, offset: 40)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !7, line: 63, size: 72, elements: !34)
!34 = !{!35, !39, !40, !41}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !33, file: !7, line: 64, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 48, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 79, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !33, file: !7, line: 65, baseType: !36, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !7, line: 66, baseType: !14, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !33, file: !7, line: 67, baseType: !18, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !7, line: 69, size: 136, elements: !44)
!44 = !{!45, !49, !50, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !43, file: !7, line: 70, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 60, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 105, baseType: !48)
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !43, file: !7, line: 71, baseType: !46, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !7, line: 72, baseType: !14, size: 8, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !43, file: !7, line: 73, baseType: !18, offset: 136)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!56 = distinct !DISubprogram(name: "getTimeoutFromObjectOrReply", scope: !1, file: !1, line: 78, type: !57, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !305)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !60, !173, !304, !59}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !62, line: 780, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !62, line: 723, size: 135360, elements: !64)
!64 = !{!65, !66, !67, !172, !182, !185, !190, !191, !192, !193, !195, !219, !220, !221, !222, !223, !224, !226, !227, !230, !231, !232, !233, !234, !235, !236, !237, !242, !243, !244, !245, !246, !247, !248, !249, !253, !254, !258, !259, !275, !276, !293, !294, !295, !296, !297, !298, !299, !300}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !62, line: 724, baseType: !46, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !63, file: !62, line: 725, baseType: !59, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !63, file: !62, line: 726, baseType: !68, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !62, line: 656, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !62, line: 647, size: 512, elements: !71)
!71 = !{!72, !136, !137, !138, !139, !140, !141, !143}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !70, file: !62, line: 648, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !75, line: 82, baseType: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !75, line: 76, size: 768, elements: !77)
!77 = !{!78, !103, !104, !134, !135}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !75, line: 77, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !75, line: 65, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !75, line: 58, size: 384, elements: !82)
!82 = !{!83, !89, !93, !94, !98, !102}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !81, file: !75, line: 59, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!46, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !81, file: !75, line: 60, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!4, !4, !87}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !81, file: !75, line: 61, baseType: !90, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !81, file: !75, line: 62, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!59, !4, !87, !87}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !81, file: !75, line: 63, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !4, !4}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !81, file: !75, line: 64, baseType: !99, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !76, file: !75, line: 78, baseType: !4, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !76, file: !75, line: 79, baseType: !105, size: 512, offset: 128)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 512, elements: !132)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !75, line: 74, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !75, line: 69, size: 256, elements: !108)
!108 = !{!109, !129, !130, !131}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !107, file: !75, line: 70, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !75, line: 56, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !75, line: 47, size: 192, elements: !114)
!114 = !{!115, !116, !127}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !113, file: !75, line: 48, baseType: !4, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !113, file: !75, line: 54, baseType: !117, size: 64, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !75, line: 49, size: 64, elements: !118)
!118 = !{!119, !120, !121, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !117, file: !75, line: 50, baseType: !4, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !117, file: !75, line: 51, baseType: !46, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !117, file: !75, line: 52, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !11, line: 56, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !13, line: 103, baseType: !124)
!124 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !117, file: !75, line: 53, baseType: !126, size: 64)
!126 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !75, line: 55, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !107, file: !75, line: 71, baseType: !48, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !107, file: !75, line: 72, baseType: !48, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !107, file: !75, line: 73, baseType: !48, size: 64, offset: 192)
!132 = !{!133}
!133 = !DISubrange(count: 2)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !76, file: !75, line: 80, baseType: !124, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !76, file: !75, line: 81, baseType: !48, size: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !70, file: !62, line: 649, baseType: !73, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !70, file: !62, line: 650, baseType: !73, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !70, file: !62, line: 651, baseType: !73, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !70, file: !62, line: 652, baseType: !73, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !62, line: 653, baseType: !59, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !70, file: !62, line: 654, baseType: !142, size: 64, offset: 384)
!142 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !70, file: !62, line: 655, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !146, line: 54, baseType: !147)
!146 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !146, line: 47, size: 384, elements: !148)
!148 = !{!149, !158, !159, !163, !167, !171}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !147, file: !146, line: 48, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !146, line: 40, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !146, line: 36, size: 192, elements: !153)
!153 = !{!154, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !146, line: 37, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !146, line: 38, baseType: !155, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !152, file: !146, line: 39, baseType: !4, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !147, file: !146, line: 49, baseType: !150, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !147, file: !146, line: 50, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!4, !4}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !147, file: !146, line: 51, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !4}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !147, file: !146, line: 52, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!59, !4, !4}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !147, file: !146, line: 53, baseType: !48, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !63, file: !62, line: 727, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !62, line: 622, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !62, line: 614, size: 128, elements: !176)
!176 = !{!177, !178, !179, !180, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !62, line: 615, baseType: !38, size: 4, flags: DIFlagBitField, extraData: i64 0)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !175, file: !62, line: 616, baseType: !38, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !175, file: !62, line: 617, baseType: !38, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !175, file: !62, line: 620, baseType: !59, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !175, file: !62, line: 621, baseType: !4, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !63, file: !62, line: 728, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !7, line: 43, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !63, file: !62, line: 729, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 40, baseType: !188)
!187 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !189, line: 129, baseType: !48)
!189 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !63, file: !62, line: 730, baseType: !183, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !63, file: !62, line: 734, baseType: !186, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !63, file: !62, line: 735, baseType: !59, size: 32, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !63, file: !62, line: 736, baseType: !194, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !63, file: !62, line: 737, baseType: !196, size: 64, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !62, line: 1307, size: 640, elements: !198)
!198 = !{!199, !200, !205, !206, !207, !208, !214, !215, !216, !217, !218}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !62, line: 1308, baseType: !184, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !197, file: !62, line: 1309, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !62, line: 1305, baseType: !203)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !60}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !197, file: !62, line: 1310, baseType: !59, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !197, file: !62, line: 1311, baseType: !184, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !62, line: 1312, baseType: !59, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !197, file: !62, line: 1315, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !62, line: 1306, baseType: !211)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !196, !194, !59, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !197, file: !62, line: 1317, baseType: !59, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !197, file: !62, line: 1318, baseType: !59, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !197, file: !62, line: 1319, baseType: !59, size: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !197, file: !62, line: 1320, baseType: !142, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !197, file: !62, line: 1320, baseType: !142, size: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !63, file: !62, line: 737, baseType: !196, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !63, file: !62, line: 738, baseType: !59, size: 32, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !63, file: !62, line: 739, baseType: !59, size: 32, offset: 800)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !63, file: !62, line: 740, baseType: !124, size: 64, offset: 832)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !63, file: !62, line: 741, baseType: !144, size: 64, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !63, file: !62, line: 742, baseType: !225, size: 64, offset: 960)
!225 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !63, file: !62, line: 743, baseType: !186, size: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !63, file: !62, line: 745, baseType: !228, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !229, line: 34, baseType: !124)
!229 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !63, file: !62, line: 746, baseType: !228, size: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !63, file: !62, line: 747, baseType: !228, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !62, line: 748, baseType: !59, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !63, file: !62, line: 749, baseType: !59, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !63, file: !62, line: 750, baseType: !59, size: 32, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !63, file: !62, line: 751, baseType: !59, size: 32, offset: 1376)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !63, file: !62, line: 752, baseType: !59, size: 32, offset: 1408)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !63, file: !62, line: 753, baseType: !238, size: 64, offset: 1472)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !239, line: 173, baseType: !240)
!239 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !189, line: 100, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !189, line: 44, baseType: !124)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !63, file: !62, line: 754, baseType: !238, size: 64, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !63, file: !62, line: 755, baseType: !183, size: 64, offset: 1600)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !63, file: !62, line: 756, baseType: !142, size: 64, offset: 1664)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !63, file: !62, line: 757, baseType: !142, size: 64, offset: 1728)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !63, file: !62, line: 758, baseType: !142, size: 64, offset: 1792)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !63, file: !62, line: 759, baseType: !142, size: 64, offset: 1856)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !63, file: !62, line: 760, baseType: !142, size: 64, offset: 1920)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !63, file: !62, line: 763, baseType: !250, size: 328, offset: 1984)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 328, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 41)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !63, file: !62, line: 764, baseType: !59, size: 32, offset: 2336)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !63, file: !62, line: 765, baseType: !255, size: 368, offset: 2368)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 368, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 46)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !63, file: !62, line: 766, baseType: !59, size: 32, offset: 2752)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !63, file: !62, line: 767, baseType: !260, size: 256, offset: 2816)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !62, line: 673, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !62, line: 665, size: 256, elements: !262)
!262 = !{!263, !271, !272, !273, !274}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !261, file: !62, line: 666, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !62, line: 663, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !62, line: 659, size: 192, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !62, line: 660, baseType: !194, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !266, file: !62, line: 661, baseType: !59, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !266, file: !62, line: 662, baseType: !196, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !261, file: !62, line: 667, baseType: !59, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !261, file: !62, line: 668, baseType: !59, size: 32, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !261, file: !62, line: 671, baseType: !59, size: 32, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !261, file: !62, line: 672, baseType: !228, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !63, file: !62, line: 768, baseType: !59, size: 32, offset: 3072)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !63, file: !62, line: 769, baseType: !277, size: 704, offset: 3136)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !62, line: 703, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !62, line: 677, size: 704, elements: !279)
!279 = !{!280, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !278, file: !62, line: 679, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !62, line: 52, baseType: !142)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !278, file: !62, line: 683, baseType: !73, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !278, file: !62, line: 685, baseType: !173, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !278, file: !62, line: 689, baseType: !186, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !278, file: !62, line: 690, baseType: !173, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !278, file: !62, line: 691, baseType: !173, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !278, file: !62, line: 692, baseType: !281, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !278, file: !62, line: 692, baseType: !281, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !278, file: !62, line: 693, baseType: !59, size: 32, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !278, file: !62, line: 696, baseType: !59, size: 32, offset: 544)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !278, file: !62, line: 697, baseType: !142, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !278, file: !62, line: 700, baseType: !4, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !63, file: !62, line: 770, baseType: !142, size: 64, offset: 3840)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !63, file: !62, line: 771, baseType: !144, size: 64, offset: 3904)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !63, file: !62, line: 772, baseType: !73, size: 64, offset: 3968)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !63, file: !62, line: 773, baseType: !144, size: 64, offset: 4032)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !63, file: !62, line: 774, baseType: !183, size: 64, offset: 4096)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !63, file: !62, line: 775, baseType: !150, size: 64, offset: 4160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !63, file: !62, line: 778, baseType: !59, size: 32, offset: 4224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !63, file: !62, line: 779, baseType: !301, size: 131072, offset: 4256)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 131072, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 16384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!305 = !{!306, !307, !308, !309, !310}
!306 = !DILocalVariable(name: "c", arg: 1, scope: !56, file: !1, line: 78, type: !60)
!307 = !DILocalVariable(name: "object", arg: 2, scope: !56, file: !1, line: 78, type: !173)
!308 = !DILocalVariable(name: "timeout", arg: 3, scope: !56, file: !1, line: 78, type: !304)
!309 = !DILocalVariable(name: "unit", arg: 4, scope: !56, file: !1, line: 78, type: !59)
!310 = !DILocalVariable(name: "tval", scope: !56, file: !1, line: 79, type: !142)
!311 = !DILocation(line: 78, column: 41, scope: !56)
!312 = !DILocation(line: 78, column: 50, scope: !56)
!313 = !DILocation(line: 78, column: 68, scope: !56)
!314 = !DILocation(line: 78, column: 81, scope: !56)
!315 = !DILocation(line: 79, column: 5, scope: !56)
!316 = !DILocation(line: 79, column: 15, scope: !56)
!317 = !DILocation(line: 81, column: 9, scope: !318)
!318 = distinct !DILexicalBlock(scope: !56, file: !1, line: 81, column: 9)
!319 = !DILocation(line: 82, column: 54, scope: !318)
!320 = !DILocation(line: 81, column: 9, scope: !56)
!321 = !DILocation(line: 85, column: 9, scope: !322)
!322 = distinct !DILexicalBlock(scope: !56, file: !1, line: 85, column: 9)
!323 = !{!324, !324, i64 0}
!324 = !{!"long long", !325, i64 0}
!325 = !{!"omnipotent char", !326, i64 0}
!326 = !{!"Simple C/C++ TBAA"}
!327 = !DILocation(line: 85, column: 14, scope: !322)
!328 = !DILocation(line: 85, column: 9, scope: !56)
!329 = !DILocation(line: 86, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !1, line: 85, column: 19)
!331 = !DILocation(line: 87, column: 9, scope: !330)
!332 = !DILocation(line: 90, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !56, file: !1, line: 90, column: 9)
!334 = !DILocation(line: 90, column: 9, scope: !56)
!335 = !DILocation(line: 91, column: 18, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 91, column: 13)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 90, column: 19)
!338 = !DILocation(line: 91, column: 13, scope: !337)
!339 = !DILocation(line: 91, column: 40, scope: !336)
!340 = !DILocation(line: 91, column: 35, scope: !336)
!341 = !DILocation(line: 92, column: 17, scope: !337)
!342 = !DILocation(line: 92, column: 14, scope: !337)
!343 = !DILocation(line: 93, column: 5, scope: !337)
!344 = !DILocation(line: 94, column: 16, scope: !56)
!345 = !DILocation(line: 94, column: 14, scope: !56)
!346 = !DILocation(line: 96, column: 5, scope: !56)
!347 = !DILocation(line: 0, scope: !56)
!348 = !DILocation(line: 97, column: 1, scope: !56)
!349 = distinct !DISubprogram(name: "blockClient", scope: !1, file: !1, line: 102, type: !350, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !60, !59}
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "c", arg: 1, scope: !349, file: !1, line: 102, type: !60)
!354 = !DILocalVariable(name: "btype", arg: 2, scope: !349, file: !1, line: 102, type: !59)
!355 = !DILocation(line: 102, column: 26, scope: !349)
!356 = !DILocation(line: 102, column: 33, scope: !349)
!357 = !DILocation(line: 103, column: 8, scope: !349)
!358 = !DILocation(line: 103, column: 14, scope: !349)
!359 = !{!360, !362, i64 160}
!360 = !{!"client", !361, i64 0, !362, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !361, i64 40, !363, i64 48, !361, i64 56, !362, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !362, i64 96, !362, i64 100, !361, i64 104, !363, i64 112, !324, i64 120, !361, i64 128, !361, i64 136, !361, i64 144, !361, i64 152, !362, i64 160, !362, i64 164, !362, i64 168, !362, i64 172, !362, i64 176, !361, i64 184, !361, i64 192, !363, i64 200, !324, i64 208, !324, i64 216, !324, i64 224, !324, i64 232, !324, i64 240, !325, i64 248, !362, i64 292, !325, i64 296, !362, i64 344, !364, i64 352, !362, i64 384, !365, i64 392, !324, i64 480, !363, i64 488, !363, i64 496, !363, i64 504, !363, i64 512, !363, i64 520, !362, i64 528, !325, i64 532}
!361 = !{!"long", !325, i64 0}
!362 = !{!"int", !325, i64 0}
!363 = !{!"any pointer", !325, i64 0}
!364 = !{!"multiState", !363, i64 0, !362, i64 8, !362, i64 12, !362, i64 16, !361, i64 24}
!365 = !{!"blockingState", !324, i64 0, !363, i64 8, !363, i64 16, !361, i64 24, !363, i64 32, !363, i64 40, !324, i64 48, !324, i64 56, !362, i64 64, !362, i64 68, !324, i64 72, !363, i64 80}
!366 = !DILocation(line: 104, column: 8, scope: !349)
!367 = !DILocation(line: 104, column: 14, scope: !349)
!368 = !{!360, !362, i64 384}
!369 = !DILocation(line: 105, column: 27, scope: !349)
!370 = !{!371, !362, i64 2736}
!371 = !{!"redisServer", !362, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !362, i64 32, !362, i64 36, !362, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !362, i64 80, !362, i64 84, !362, i64 88, !362, i64 92, !363, i64 96, !363, i64 104, !362, i64 112, !362, i64 116, !325, i64 120, !362, i64 164, !361, i64 168, !362, i64 176, !363, i64 184, !363, i64 192, !363, i64 200, !325, i64 208, !362, i64 216, !362, i64 220, !325, i64 224, !362, i64 352, !363, i64 360, !362, i64 368, !325, i64 372, !362, i64 436, !362, i64 440, !325, i64 444, !362, i64 508, !363, i64 512, !363, i64 520, !363, i64 528, !363, i64 536, !363, i64 544, !363, i64 552, !363, i64 560, !362, i64 568, !324, i64 576, !325, i64 584, !363, i64 840, !361, i64 848, !362, i64 856, !362, i64 860, !361, i64 864, !361, i64 872, !361, i64 880, !361, i64 888, !363, i64 896, !363, i64 904, !363, i64 912, !363, i64 920, !363, i64 928, !363, i64 936, !363, i64 944, !363, i64 952, !363, i64 960, !363, i64 968, !363, i64 976, !363, i64 984, !363, i64 992, !361, i64 1000, !324, i64 1008, !324, i64 1016, !324, i64 1024, !372, i64 1032, !324, i64 1040, !324, i64 1048, !324, i64 1056, !324, i64 1064, !324, i64 1072, !324, i64 1080, !324, i64 1088, !324, i64 1096, !324, i64 1104, !361, i64 1112, !324, i64 1120, !372, i64 1128, !324, i64 1136, !324, i64 1144, !324, i64 1152, !324, i64 1160, !363, i64 1168, !324, i64 1176, !324, i64 1184, !361, i64 1192, !373, i64 1200, !324, i64 1240, !324, i64 1248, !361, i64 1256, !361, i64 1264, !325, i64 1272, !362, i64 1728, !362, i64 1732, !362, i64 1736, !362, i64 1740, !362, i64 1744, !361, i64 1752, !362, i64 1760, !362, i64 1764, !362, i64 1768, !362, i64 1772, !361, i64 1776, !361, i64 1784, !362, i64 1792, !362, i64 1796, !362, i64 1800, !362, i64 1804, !325, i64 1808, !362, i64 1880, !362, i64 1884, !363, i64 1888, !362, i64 1896, !362, i64 1900, !361, i64 1904, !361, i64 1912, !361, i64 1920, !361, i64 1928, !362, i64 1936, !362, i64 1940, !363, i64 1944, !363, i64 1952, !362, i64 1960, !362, i64 1964, !361, i64 1968, !361, i64 1976, !361, i64 1984, !361, i64 1992, !362, i64 2000, !361, i64 2008, !362, i64 2016, !362, i64 2020, !362, i64 2024, !362, i64 2028, !362, i64 2032, !362, i64 2036, !362, i64 2040, !362, i64 2044, !362, i64 2048, !362, i64 2052, !362, i64 2056, !362, i64 2060, !362, i64 2064, !363, i64 2072, !324, i64 2080, !324, i64 2088, !362, i64 2096, !363, i64 2104, !362, i64 2112, !363, i64 2120, !362, i64 2128, !362, i64 2132, !361, i64 2136, !361, i64 2144, !361, i64 2152, !361, i64 2160, !362, i64 2168, !362, i64 2172, !362, i64 2176, !362, i64 2180, !362, i64 2184, !362, i64 2188, !325, i64 2192, !374, i64 2200, !375, i64 2224, !363, i64 2240, !362, i64 2248, !363, i64 2256, !362, i64 2264, !325, i64 2268, !325, i64 2309, !324, i64 2352, !324, i64 2360, !362, i64 2368, !362, i64 2372, !363, i64 2376, !324, i64 2384, !324, i64 2392, !324, i64 2400, !324, i64 2408, !361, i64 2416, !361, i64 2424, !362, i64 2432, !362, i64 2436, !362, i64 2440, !362, i64 2444, !362, i64 2448, !363, i64 2456, !363, i64 2464, !362, i64 2472, !362, i64 2476, !363, i64 2480, !363, i64 2488, !362, i64 2496, !362, i64 2500, !361, i64 2504, !361, i64 2512, !361, i64 2520, !362, i64 2528, !362, i64 2532, !363, i64 2536, !361, i64 2544, !362, i64 2552, !362, i64 2556, !362, i64 2560, !361, i64 2568, !362, i64 2576, !362, i64 2580, !362, i64 2584, !363, i64 2592, !325, i64 2600, !324, i64 2648, !362, i64 2656, !363, i64 2664, !363, i64 2672, !362, i64 2680, !363, i64 2688, !362, i64 2696, !362, i64 2700, !324, i64 2704, !362, i64 2712, !362, i64 2716, !362, i64 2720, !362, i64 2724, !324, i64 2728, !362, i64 2736, !325, i64 2740, !363, i64 2768, !363, i64 2776, !362, i64 2784, !362, i64 2788, !362, i64 2792, !362, i64 2796, !361, i64 2800, !361, i64 2808, !361, i64 2816, !361, i64 2824, !361, i64 2832, !361, i64 2840, !361, i64 2848, !361, i64 2856, !362, i64 2864, !362, i64 2868, !361, i64 2872, !361, i64 2880, !362, i64 2888, !324, i64 2896, !363, i64 2904, !363, i64 2912, !362, i64 2920, !362, i64 2924, !324, i64 2928, !363, i64 2936, !363, i64 2944, !362, i64 2952, !362, i64 2956, !362, i64 2960, !362, i64 2964, !363, i64 2968, !362, i64 2976, !362, i64 2980, !362, i64 2984, !363, i64 2992, !363, i64 3000, !363, i64 3008, !363, i64 3016, !324, i64 3024, !324, i64 3032, !324, i64 3040, !362, i64 3048, !362, i64 3052, !362, i64 3056, !362, i64 3060, !362, i64 3064, !362, i64 3068, !362, i64 3072, !362, i64 3076, !362, i64 3080, !362, i64 3084, !362, i64 3088, !324, i64 3096, !363, i64 3104, !363, i64 3112, !363, i64 3120, !362, i64 3128, !362, i64 3132, !362, i64 3136, !361, i64 3144, !363, i64 3152, !363, i64 3160, !363, i64 3168}
!372 = !{!"double", !325, i64 0}
!373 = !{!"malloc_stats", !361, i64 0, !361, i64 8, !361, i64 16, !361, i64 24, !361, i64 32}
!374 = !{!"", !362, i64 0, !361, i64 8, !324, i64 16}
!375 = !{!"redisOpArray", !363, i64 0, !362, i64 8}
!376 = !DILocation(line: 106, column: 5, scope: !349)
!377 = !DILocation(line: 106, column: 42, scope: !349)
!378 = !{!362, !362, i64 0}
!379 = !DILocation(line: 107, column: 1, scope: !349)
!380 = distinct !DISubprogram(name: "processUnblockedClients", scope: !1, file: !1, line: 112, type: !381, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{null}
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "ln", scope: !380, file: !1, line: 113, type: !150)
!385 = !DILocalVariable(name: "c", scope: !380, file: !1, line: 114, type: !60)
!386 = !DILocation(line: 116, column: 12, scope: !380)
!387 = !{!371, !363, i64 2768}
!388 = !{!389, !361, i64 40}
!389 = !{!"list", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !361, i64 40}
!390 = !DILocation(line: 116, column: 5, scope: !380)
!391 = !DILocation(line: 117, column: 14, scope: !392)
!392 = distinct !DILexicalBlock(scope: !380, file: !1, line: 116, column: 50)
!393 = !{!389, !363, i64 0}
!394 = !DILocation(line: 113, column: 15, scope: !380)
!395 = !DILocation(line: 118, column: 9, scope: !392)
!396 = !DILocation(line: 119, column: 17, scope: !392)
!397 = !{!398, !363, i64 16}
!398 = !{!"listNode", !363, i64 0, !363, i64 8, !363, i64 16}
!399 = !DILocation(line: 114, column: 13, scope: !380)
!400 = !DILocation(line: 120, column: 9, scope: !392)
!401 = !DILocation(line: 121, column: 12, scope: !392)
!402 = !DILocation(line: 121, column: 18, scope: !392)
!403 = !DILocation(line: 127, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !1, line: 127, column: 13)
!405 = !DILocation(line: 127, column: 13, scope: !392)
!406 = !DILocation(line: 128, column: 20, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 128, column: 17)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 127, column: 43)
!409 = !{!360, !363, i64 32}
!410 = !DILocation(line: 128, column: 17, scope: !407)
!411 = !DILocation(line: 128, column: 29, scope: !407)
!412 = !DILocalVariable(name: "s", arg: 1, scope: !413, file: !7, line: 87, type: !418)
!413 = distinct !DISubprogram(name: "sdslen", scope: !7, file: !7, line: 87, type: !414, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !419)
!414 = !DISubroutineType(types: !415)
!415 = !{!416, !418}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !417, line: 58, baseType: !48)
!417 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!419 = !{!412, !420}
!420 = !DILocalVariable(name: "flags", scope: !413, file: !7, line: 88, type: !14)
!421 = !DILocation(line: 87, column: 39, scope: !413, inlinedAt: !422)
!422 = distinct !DILocation(line: 128, column: 32, scope: !407)
!423 = !DILocation(line: 88, column: 27, scope: !413, inlinedAt: !422)
!424 = !{!325, !325, i64 0}
!425 = !DILocation(line: 88, column: 19, scope: !413, inlinedAt: !422)
!426 = !DILocation(line: 89, column: 5, scope: !413, inlinedAt: !422)
!427 = !DILocation(line: 91, column: 20, scope: !428, inlinedAt: !422)
!428 = distinct !DILexicalBlock(scope: !413, file: !7, line: 89, column: 33)
!429 = !DILocation(line: 91, column: 13, scope: !428, inlinedAt: !422)
!430 = !DILocation(line: 93, column: 20, scope: !428, inlinedAt: !422)
!431 = !DILocation(line: 93, column: 34, scope: !428, inlinedAt: !422)
!432 = !DILocation(line: 93, column: 13, scope: !428, inlinedAt: !422)
!433 = !DILocation(line: 95, column: 20, scope: !428, inlinedAt: !422)
!434 = !DILocation(line: 95, column: 35, scope: !428, inlinedAt: !422)
!435 = !{!436, !436, i64 0}
!436 = !{!"short", !325, i64 0}
!437 = !DILocation(line: 95, column: 13, scope: !428, inlinedAt: !422)
!438 = !DILocation(line: 97, column: 20, scope: !428, inlinedAt: !422)
!439 = !DILocation(line: 97, column: 35, scope: !428, inlinedAt: !422)
!440 = !DILocation(line: 97, column: 13, scope: !428, inlinedAt: !422)
!441 = !DILocation(line: 99, column: 20, scope: !428, inlinedAt: !422)
!442 = !DILocation(line: 99, column: 35, scope: !428, inlinedAt: !422)
!443 = !{!361, !361, i64 0}
!444 = !DILocation(line: 99, column: 13, scope: !428, inlinedAt: !422)
!445 = !DILocation(line: 0, scope: !428, inlinedAt: !422)
!446 = !DILocation(line: 128, column: 52, scope: !407)
!447 = !DILocation(line: 128, column: 17, scope: !408)
!448 = !DILocation(line: 129, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !407, file: !1, line: 128, column: 57)
!450 = !DILocation(line: 130, column: 13, scope: !449)
!451 = distinct !{!451, !390, !452}
!452 = !DILocation(line: 132, column: 5, scope: !380)
!453 = !DILocation(line: 133, column: 1, scope: !380)
!454 = distinct !DISubprogram(name: "queueClientForReprocessing", scope: !1, file: !1, line: 151, type: !203, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !455)
!455 = !{!456}
!456 = !DILocalVariable(name: "c", arg: 1, scope: !454, file: !1, line: 151, type: !60)
!457 = !DILocation(line: 151, column: 41, scope: !454)
!458 = !DILocation(line: 154, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 154, column: 9)
!460 = !DILocation(line: 154, column: 20, scope: !459)
!461 = !DILocation(line: 154, column: 9, scope: !454)
!462 = !DILocation(line: 155, column: 18, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !1, line: 154, column: 41)
!464 = !DILocation(line: 156, column: 32, scope: !463)
!465 = !DILocation(line: 156, column: 50, scope: !463)
!466 = !DILocation(line: 156, column: 9, scope: !463)
!467 = !DILocation(line: 157, column: 5, scope: !463)
!468 = !DILocation(line: 158, column: 1, scope: !454)
!469 = distinct !DISubprogram(name: "unblockClient", scope: !1, file: !1, line: 162, type: !203, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !470)
!470 = !{!471}
!471 = !DILocalVariable(name: "c", arg: 1, scope: !469, file: !1, line: 162, type: !60)
!472 = !DILocation(line: 162, column: 28, scope: !469)
!473 = !DILocation(line: 163, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !469, file: !1, line: 163, column: 9)
!475 = !DILocation(line: 163, column: 34, scope: !474)
!476 = !DILocation(line: 166, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !1, line: 165, column: 37)
!478 = !DILocation(line: 167, column: 5, scope: !477)
!479 = !DILocation(line: 168, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 167, column: 42)
!481 = distinct !DILexicalBlock(scope: !474, file: !1, line: 167, column: 16)
!482 = !DILocation(line: 169, column: 5, scope: !480)
!483 = !DILocation(line: 170, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 169, column: 44)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 169, column: 16)
!486 = !DILocation(line: 172, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !1, line: 171, column: 12)
!488 = !DILocation(line: 176, column: 27, scope: !469)
!489 = !DILocation(line: 177, column: 39, scope: !469)
!490 = !DILocation(line: 177, column: 5, scope: !469)
!491 = !DILocation(line: 177, column: 45, scope: !469)
!492 = !DILocation(line: 178, column: 8, scope: !469)
!493 = !DILocation(line: 178, column: 14, scope: !469)
!494 = !DILocation(line: 179, column: 14, scope: !469)
!495 = !DILocation(line: 151, column: 41, scope: !454, inlinedAt: !496)
!496 = distinct !DILocation(line: 180, column: 5, scope: !469)
!497 = !DILocation(line: 154, column: 20, scope: !459, inlinedAt: !496)
!498 = !DILocation(line: 154, column: 9, scope: !454, inlinedAt: !496)
!499 = !DILocation(line: 155, column: 18, scope: !463, inlinedAt: !496)
!500 = !DILocation(line: 156, column: 32, scope: !463, inlinedAt: !496)
!501 = !DILocation(line: 156, column: 50, scope: !463, inlinedAt: !496)
!502 = !DILocation(line: 156, column: 9, scope: !463, inlinedAt: !496)
!503 = !DILocation(line: 157, column: 5, scope: !463, inlinedAt: !496)
!504 = !DILocation(line: 181, column: 1, scope: !469)
!505 = distinct !DISubprogram(name: "unblockClientWaitingData", scope: !1, file: !1, line: 543, type: !203, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !506)
!506 = !{!507, !508, !509, !521, !522}
!507 = !DILocalVariable(name: "c", arg: 1, scope: !505, file: !1, line: 543, type: !60)
!508 = !DILocalVariable(name: "de", scope: !505, file: !1, line: 544, type: !111)
!509 = !DILocalVariable(name: "di", scope: !505, file: !1, line: 545, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !75, line: 95, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !75, line: 88, size: 384, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !512, file: !75, line: 89, baseType: !73, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !512, file: !75, line: 90, baseType: !124, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !512, file: !75, line: 91, baseType: !59, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !512, file: !75, line: 91, baseType: !59, size: 32, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !512, file: !75, line: 92, baseType: !111, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !512, file: !75, line: 92, baseType: !111, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !512, file: !75, line: 94, baseType: !142, size: 64, offset: 320)
!521 = !DILocalVariable(name: "l", scope: !505, file: !1, line: 546, type: !144)
!522 = !DILocalVariable(name: "key", scope: !523, file: !1, line: 552, type: !173)
!523 = distinct !DILexicalBlock(scope: !505, file: !1, line: 551, column: 40)
!524 = !DILocation(line: 543, column: 39, scope: !505)
!525 = !DILocation(line: 548, column: 5, scope: !505)
!526 = !{!360, !363, i64 400}
!527 = !{!528, !361, i64 24}
!528 = !{!"dictht", !363, i64 0, !361, i64 8, !361, i64 16, !361, i64 24}
!529 = !DILocation(line: 549, column: 10, scope: !505)
!530 = !DILocation(line: 545, column: 19, scope: !505)
!531 = !DILocation(line: 551, column: 17, scope: !505)
!532 = !DILocation(line: 544, column: 16, scope: !505)
!533 = !DILocation(line: 551, column: 31, scope: !505)
!534 = !DILocation(line: 551, column: 5, scope: !505)
!535 = !DILocation(line: 552, column: 21, scope: !523)
!536 = !{!537, !363, i64 0}
!537 = !{!"dictEntry", !363, i64 0, !325, i64 8, !363, i64 16}
!538 = !DILocation(line: 555, column: 31, scope: !523)
!539 = !{!360, !363, i64 16}
!540 = !DILocation(line: 555, column: 35, scope: !523)
!541 = !{!542, !363, i64 16}
!542 = !{!"redisDb", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !362, i64 40, !324, i64 48, !363, i64 56}
!543 = !DILocation(line: 555, column: 13, scope: !523)
!544 = !DILocation(line: 546, column: 11, scope: !505)
!545 = !DILocation(line: 556, column: 9, scope: !523)
!546 = !DILocation(line: 552, column: 15, scope: !523)
!547 = !DILocation(line: 557, column: 23, scope: !523)
!548 = !DILocation(line: 557, column: 9, scope: !523)
!549 = !DILocation(line: 559, column: 13, scope: !550)
!550 = distinct !DILexicalBlock(scope: !523, file: !1, line: 559, column: 13)
!551 = !DILocation(line: 559, column: 27, scope: !550)
!552 = !DILocation(line: 559, column: 13, scope: !523)
!553 = !DILocation(line: 560, column: 27, scope: !550)
!554 = !DILocation(line: 560, column: 31, scope: !550)
!555 = !DILocation(line: 560, column: 13, scope: !550)
!556 = distinct !{!556, !534, !557}
!557 = !DILocation(line: 561, column: 5, scope: !505)
!558 = !DILocation(line: 562, column: 5, scope: !505)
!559 = !DILocation(line: 565, column: 23, scope: !505)
!560 = !DILocation(line: 565, column: 5, scope: !505)
!561 = !DILocation(line: 566, column: 17, scope: !562)
!562 = distinct !DILexicalBlock(scope: !505, file: !1, line: 566, column: 9)
!563 = !{!360, !363, i64 408}
!564 = !DILocation(line: 566, column: 9, scope: !562)
!565 = !DILocation(line: 566, column: 9, scope: !505)
!566 = !DILocation(line: 567, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !562, file: !1, line: 566, column: 25)
!568 = !DILocation(line: 568, column: 24, scope: !567)
!569 = !DILocation(line: 569, column: 5, scope: !567)
!570 = !DILocation(line: 570, column: 17, scope: !571)
!571 = distinct !DILexicalBlock(scope: !505, file: !1, line: 570, column: 9)
!572 = !{!360, !363, i64 424}
!573 = !DILocation(line: 570, column: 9, scope: !571)
!574 = !DILocation(line: 570, column: 9, scope: !505)
!575 = !DILocation(line: 571, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 570, column: 30)
!577 = !DILocation(line: 572, column: 30, scope: !576)
!578 = !{!360, !363, i64 432}
!579 = !DILocation(line: 572, column: 9, scope: !576)
!580 = !DILocation(line: 573, column: 29, scope: !576)
!581 = !{!363, !363, i64 0}
!582 = !DILocation(line: 575, column: 5, scope: !576)
!583 = !DILocation(line: 576, column: 1, scope: !505)
!584 = distinct !DISubprogram(name: "replyToBlockedClientTimedOut", scope: !1, file: !1, line: 186, type: !203, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !585)
!585 = !{!586}
!586 = !DILocalVariable(name: "c", arg: 1, scope: !584, file: !1, line: 186, type: !60)
!587 = !DILocation(line: 186, column: 43, scope: !584)
!588 = !DILocation(line: 187, column: 12, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !1, line: 187, column: 9)
!590 = !DILocation(line: 187, column: 34, scope: !589)
!591 = !DILocation(line: 190, column: 27, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !1, line: 189, column: 37)
!593 = !{!594, !363, i64 88}
!594 = !{!"sharedObjectsStruct", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96, !363, i64 104, !363, i64 112, !363, i64 120, !363, i64 128, !363, i64 136, !363, i64 144, !363, i64 152, !363, i64 160, !363, i64 168, !363, i64 176, !363, i64 184, !363, i64 192, !363, i64 200, !363, i64 208, !363, i64 216, !363, i64 224, !363, i64 232, !363, i64 240, !363, i64 248, !363, i64 256, !363, i64 264, !363, i64 272, !363, i64 280, !363, i64 288, !363, i64 296, !363, i64 304, !363, i64 312, !363, i64 320, !363, i64 328, !363, i64 336, !363, i64 344, !363, i64 352, !363, i64 360, !325, i64 368, !325, i64 448, !325, i64 80448, !325, i64 80704, !363, i64 80960, !363, i64 80968}
!595 = !DILocation(line: 190, column: 9, scope: !592)
!596 = !DILocation(line: 191, column: 5, scope: !592)
!597 = !DILocation(line: 192, column: 65, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 191, column: 42)
!599 = distinct !DILexicalBlock(scope: !589, file: !1, line: 191, column: 16)
!600 = !{!360, !324, i64 464}
!601 = !DILocation(line: 192, column: 28, scope: !598)
!602 = !DILocation(line: 192, column: 9, scope: !598)
!603 = !DILocation(line: 193, column: 5, scope: !598)
!604 = !DILocation(line: 194, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 193, column: 44)
!606 = distinct !DILexicalBlock(scope: !599, file: !1, line: 193, column: 16)
!607 = !DILocation(line: 196, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !606, file: !1, line: 195, column: 12)
!609 = !DILocation(line: 198, column: 1, scope: !584)
!610 = distinct !DISubprogram(name: "disconnectAllBlockedClients", scope: !1, file: !1, line: 207, type: !381, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !611)
!611 = !{!612, !613, !619}
!612 = !DILocalVariable(name: "ln", scope: !610, file: !1, line: 208, type: !150)
!613 = !DILocalVariable(name: "li", scope: !610, file: !1, line: 209, type: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !146, line: 45, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !146, line: 42, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !146, line: 43, baseType: !150, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !615, file: !146, line: 44, baseType: !59, size: 32, offset: 64)
!619 = !DILocalVariable(name: "c", scope: !620, file: !1, line: 213, type: !60)
!620 = distinct !DILexicalBlock(scope: !610, file: !1, line: 212, column: 33)
!621 = !DILocation(line: 209, column: 5, scope: !610)
!622 = !DILocation(line: 211, column: 23, scope: !610)
!623 = !{!371, !363, i64 512}
!624 = !DILocation(line: 209, column: 14, scope: !610)
!625 = !DILocation(line: 211, column: 5, scope: !610)
!626 = !DILocation(line: 212, column: 17, scope: !610)
!627 = !DILocation(line: 208, column: 15, scope: !610)
!628 = !DILocation(line: 212, column: 5, scope: !610)
!629 = !DILocation(line: 213, column: 21, scope: !620)
!630 = !DILocation(line: 213, column: 17, scope: !620)
!631 = !DILocation(line: 215, column: 16, scope: !632)
!632 = distinct !DILexicalBlock(scope: !620, file: !1, line: 215, column: 13)
!633 = !DILocation(line: 215, column: 22, scope: !632)
!634 = !DILocation(line: 215, column: 13, scope: !620)
!635 = !DILocation(line: 216, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !1, line: 215, column: 40)
!637 = !DILocation(line: 216, column: 13, scope: !636)
!638 = !DILocation(line: 219, column: 13, scope: !636)
!639 = !DILocation(line: 220, column: 22, scope: !636)
!640 = !DILocation(line: 221, column: 9, scope: !636)
!641 = distinct !{!641, !628, !642}
!642 = !DILocation(line: 222, column: 5, scope: !610)
!643 = !DILocation(line: 223, column: 1, scope: !610)
!644 = distinct !DISubprogram(name: "handleClientsBlockedOnKeys", scope: !1, file: !1, line: 246, type: !381, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !645)
!645 = !{!646, !648, !650, !657, !658, !661, !664, !665, !667, !668, !669, !670, !671, !674, !677, !678, !679, !681, !682, !683, !685, !686, !689, !722, !725, !726, !727, !729, !731, !739, !742, !750, !751}
!646 = !DILocalVariable(name: "l", scope: !647, file: !1, line: 248, type: !144)
!647 = distinct !DILexicalBlock(scope: !644, file: !1, line: 247, column: 47)
!648 = !DILocalVariable(name: "ln", scope: !649, file: !1, line: 258, type: !150)
!649 = distinct !DILexicalBlock(scope: !647, file: !1, line: 257, column: 35)
!650 = !DILocalVariable(name: "rl", scope: !649, file: !1, line: 259, type: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "readyList", file: !62, line: 719, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readyList", file: !62, line: 716, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !653, file: !62, line: 717, baseType: !68, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !653, file: !62, line: 718, baseType: !173, size: 64, offset: 64)
!657 = !DILocalVariable(name: "o", scope: !649, file: !1, line: 266, type: !173)
!658 = !DILocalVariable(name: "de", scope: !659, file: !1, line: 268, type: !111)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 267, column: 51)
!660 = distinct !DILexicalBlock(scope: !649, file: !1, line: 267, column: 17)
!661 = !DILocalVariable(name: "clients", scope: !662, file: !1, line: 274, type: !144)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 273, column: 25)
!663 = distinct !DILexicalBlock(scope: !659, file: !1, line: 273, column: 21)
!664 = !DILocalVariable(name: "numclients", scope: !662, file: !1, line: 275, type: !59)
!665 = !DILocalVariable(name: "clientnode", scope: !666, file: !1, line: 278, type: !150)
!666 = distinct !DILexicalBlock(scope: !662, file: !1, line: 277, column: 41)
!667 = !DILocalVariable(name: "receiver", scope: !666, file: !1, line: 279, type: !60)
!668 = !DILocalVariable(name: "dstkey", scope: !666, file: !1, line: 289, type: !173)
!669 = !DILocalVariable(name: "where", scope: !666, file: !1, line: 290, type: !59)
!670 = !DILocalVariable(name: "value", scope: !666, file: !1, line: 293, type: !173)
!671 = !DILocalVariable(name: "de", scope: !672, file: !1, line: 329, type: !111)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 328, column: 56)
!673 = distinct !DILexicalBlock(scope: !660, file: !1, line: 328, column: 22)
!674 = !DILocalVariable(name: "clients", scope: !675, file: !1, line: 335, type: !144)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 334, column: 25)
!676 = distinct !DILexicalBlock(scope: !672, file: !1, line: 334, column: 21)
!677 = !DILocalVariable(name: "numclients", scope: !675, file: !1, line: 336, type: !59)
!678 = !DILocalVariable(name: "zcard", scope: !675, file: !1, line: 337, type: !48)
!679 = !DILocalVariable(name: "clientnode", scope: !680, file: !1, line: 340, type: !150)
!680 = distinct !DILexicalBlock(scope: !675, file: !1, line: 339, column: 50)
!681 = !DILocalVariable(name: "receiver", scope: !680, file: !1, line: 341, type: !60)
!682 = !DILocalVariable(name: "where", scope: !680, file: !1, line: 351, type: !59)
!683 = !DILocalVariable(name: "argv", scope: !680, file: !1, line: 359, type: !684)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !132)
!685 = !DILocalVariable(name: "cmd", scope: !680, file: !1, line: 360, type: !196)
!686 = !DILocalVariable(name: "de", scope: !687, file: !1, line: 376, type: !111)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 375, column: 58)
!688 = distinct !DILexicalBlock(scope: !673, file: !1, line: 375, column: 22)
!689 = !DILocalVariable(name: "s", scope: !687, file: !1, line: 377, type: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !692, line: 21, baseType: !693)
!692 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !692, line: 16, size: 320, elements: !694)
!694 = !{!695, !714, !715, !721}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !693, file: !692, line: 17, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !698, line: 137, baseType: !699)
!698 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !698, line: 133, size: 192, elements: !700)
!700 = !{!701, !712, !713}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !699, file: !698, line: 134, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !698, line: 131, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !698, line: 98, size: 32, elements: !705)
!705 = !{!706, !707, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !704, file: !698, line: 99, baseType: !36, size: 1, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !704, file: !698, line: 100, baseType: !36, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !704, file: !698, line: 101, baseType: !36, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !704, file: !698, line: 102, baseType: !36, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !704, file: !698, line: 130, baseType: !711, offset: 32)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !20)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !699, file: !698, line: 135, baseType: !46, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !699, file: !698, line: 136, baseType: !46, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !693, file: !692, line: 18, baseType: !46, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !693, file: !692, line: 19, baseType: !716, size: 128, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !692, line: 14, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !692, line: 11, size: 128, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !717, file: !692, line: 12, baseType: !46, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !717, file: !692, line: 13, baseType: !46, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !693, file: !692, line: 20, baseType: !696, size: 64, offset: 256)
!722 = !DILocalVariable(name: "clients", scope: !723, file: !1, line: 383, type: !144)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 382, column: 25)
!724 = distinct !DILexicalBlock(scope: !687, file: !1, line: 382, column: 21)
!725 = !DILocalVariable(name: "ln", scope: !723, file: !1, line: 384, type: !150)
!726 = !DILocalVariable(name: "li", scope: !723, file: !1, line: 385, type: !614)
!727 = !DILocalVariable(name: "receiver", scope: !728, file: !1, line: 389, type: !60)
!728 = distinct !DILexicalBlock(scope: !723, file: !1, line: 388, column: 49)
!729 = !DILocalVariable(name: "gt", scope: !728, file: !1, line: 391, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!731 = !DILocalVariable(name: "group", scope: !728, file: !1, line: 403, type: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !692, line: 64, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !692, line: 51, size: 256, elements: !735)
!735 = !{!736, !737, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !734, file: !692, line: 52, baseType: !716, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !734, file: !692, line: 55, baseType: !696, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !734, file: !692, line: 61, baseType: !696, size: 64, offset: 192)
!739 = !DILocalVariable(name: "start", scope: !740, file: !1, line: 421, type: !716)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 420, column: 67)
!741 = distinct !DILexicalBlock(scope: !728, file: !1, line: 420, column: 29)
!742 = !DILocalVariable(name: "consumer", scope: !740, file: !1, line: 425, type: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !692, line: 79, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !692, line: 67, size: 192, elements: !746)
!746 = !{!747, !748, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !745, file: !692, line: 68, baseType: !281, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !692, line: 69, baseType: !183, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !745, file: !692, line: 72, baseType: !696, size: 64, offset: 128)
!750 = !DILocalVariable(name: "noack", scope: !740, file: !1, line: 426, type: !59)
!751 = !DILocalVariable(name: "pi", scope: !740, file: !1, line: 443, type: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !692, line: 94, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreamPropInfo", file: !692, line: 91, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !753, file: !692, line: 92, baseType: !173, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !753, file: !692, line: 93, baseType: !173, size: 64, offset: 64)
!757 = !DILocation(line: 247, column: 11, scope: !644)
!758 = !{!371, !363, i64 2776}
!759 = !DILocation(line: 247, column: 41, scope: !644)
!760 = !DILocation(line: 247, column: 5, scope: !644)
!761 = !DILocation(line: 248, column: 15, scope: !647)
!762 = !DILocation(line: 255, column: 29, scope: !647)
!763 = !DILocation(line: 255, column: 27, scope: !647)
!764 = !DILocation(line: 257, column: 15, scope: !647)
!765 = !DILocation(line: 257, column: 29, scope: !647)
!766 = !DILocation(line: 257, column: 9, scope: !647)
!767 = !DILocation(line: 258, column: 28, scope: !649)
!768 = !DILocation(line: 258, column: 23, scope: !649)
!769 = !DILocation(line: 259, column: 33, scope: !649)
!770 = !DILocation(line: 259, column: 24, scope: !649)
!771 = !DILocation(line: 263, column: 28, scope: !649)
!772 = !{!773, !363, i64 0}
!773 = !{!"readyList", !363, i64 0, !363, i64 8}
!774 = !DILocation(line: 263, column: 32, scope: !649)
!775 = !{!542, !363, i64 24}
!776 = !DILocation(line: 263, column: 47, scope: !649)
!777 = !{!773, !363, i64 8}
!778 = !DILocation(line: 263, column: 13, scope: !649)
!779 = !DILocation(line: 266, column: 42, scope: !649)
!780 = !DILocation(line: 266, column: 49, scope: !649)
!781 = !DILocation(line: 266, column: 23, scope: !649)
!782 = !DILocation(line: 266, column: 19, scope: !649)
!783 = !DILocation(line: 267, column: 19, scope: !660)
!784 = !DILocation(line: 267, column: 27, scope: !660)
!785 = !DILocation(line: 267, column: 33, scope: !660)
!786 = !DILocation(line: 267, column: 17, scope: !649)
!787 = !DILocation(line: 272, column: 35, scope: !659)
!788 = !DILocation(line: 272, column: 39, scope: !659)
!789 = !DILocation(line: 272, column: 57, scope: !659)
!790 = !DILocation(line: 272, column: 22, scope: !659)
!791 = !DILocation(line: 268, column: 28, scope: !659)
!792 = !DILocation(line: 273, column: 21, scope: !663)
!793 = !DILocation(line: 273, column: 21, scope: !659)
!794 = !DILocation(line: 274, column: 37, scope: !662)
!795 = !DILocation(line: 274, column: 27, scope: !662)
!796 = !DILocation(line: 275, column: 38, scope: !662)
!797 = !DILocation(line: 275, column: 25, scope: !662)
!798 = !DILocation(line: 277, column: 21, scope: !662)
!799 = !DILocation(line: 277, column: 37, scope: !662)
!800 = !DILocation(line: 278, column: 48, scope: !666)
!801 = !DILocation(line: 278, column: 35, scope: !666)
!802 = !DILocation(line: 279, column: 56, scope: !666)
!803 = !DILocation(line: 279, column: 44, scope: !666)
!804 = !DILocation(line: 279, column: 33, scope: !666)
!805 = !DILocation(line: 281, column: 39, scope: !806)
!806 = distinct !DILexicalBlock(scope: !666, file: !1, line: 281, column: 29)
!807 = !DILocation(line: 281, column: 45, scope: !806)
!808 = !DILocation(line: 281, column: 29, scope: !666)
!809 = !DILocation(line: 284, column: 29, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !1, line: 281, column: 62)
!811 = !DILocation(line: 285, column: 29, scope: !810)
!812 = !DILocation(line: 286, column: 29, scope: !810)
!813 = distinct !{!813, !798, !814}
!814 = !DILocation(line: 316, column: 21, scope: !662)
!815 = !DILocation(line: 289, column: 55, scope: !666)
!816 = !DILocation(line: 289, column: 31, scope: !666)
!817 = !DILocation(line: 290, column: 48, scope: !666)
!818 = !{!360, !363, i64 88}
!819 = !DILocation(line: 290, column: 38, scope: !666)
!820 = !DILocation(line: 290, column: 56, scope: !666)
!821 = !DILocation(line: 291, column: 57, scope: !666)
!822 = !{!823, !363, i64 8}
!823 = !{!"redisCommand", !363, i64 0, !363, i64 8, !362, i64 16, !363, i64 24, !362, i64 32, !363, i64 40, !362, i64 48, !362, i64 52, !362, i64 56, !324, i64 64, !324, i64 72}
!824 = !DILocation(line: 291, column: 62, scope: !666)
!825 = !DILocation(line: 0, scope: !666)
!826 = !DILocation(line: 290, column: 37, scope: !666)
!827 = !DILocation(line: 290, column: 29, scope: !666)
!828 = !DILocation(line: 293, column: 39, scope: !666)
!829 = !DILocation(line: 293, column: 31, scope: !666)
!830 = !DILocation(line: 295, column: 29, scope: !831)
!831 = distinct !DILexicalBlock(scope: !666, file: !1, line: 295, column: 29)
!832 = !DILocation(line: 295, column: 29, scope: !666)
!833 = !DILocation(line: 299, column: 33, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 299, column: 33)
!835 = distinct !DILexicalBlock(scope: !831, file: !1, line: 295, column: 36)
!836 = !DILocation(line: 299, column: 33, scope: !835)
!837 = !DILocation(line: 299, column: 41, scope: !834)
!838 = !DILocation(line: 300, column: 29, scope: !835)
!839 = !DILocation(line: 303, column: 37, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 302, column: 33)
!841 = !DILocation(line: 303, column: 52, scope: !840)
!842 = !DILocation(line: 302, column: 33, scope: !840)
!843 = !DILocation(line: 304, column: 40, scope: !840)
!844 = !DILocation(line: 302, column: 33, scope: !835)
!845 = !DILocation(line: 308, column: 33, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !1, line: 305, column: 29)
!847 = !DILocation(line: 309, column: 29, scope: !846)
!848 = !DILocation(line: 311, column: 33, scope: !835)
!849 = !DILocation(line: 311, column: 41, scope: !850)
!850 = distinct !DILexicalBlock(scope: !835, file: !1, line: 311, column: 33)
!851 = !DILocation(line: 312, column: 29, scope: !835)
!852 = !DILocation(line: 319, column: 21, scope: !853)
!853 = distinct !DILexicalBlock(scope: !659, file: !1, line: 319, column: 21)
!854 = !DILocation(line: 319, column: 39, scope: !853)
!855 = !DILocation(line: 319, column: 21, scope: !659)
!856 = !DILocation(line: 320, column: 34, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !1, line: 319, column: 45)
!858 = !DILocation(line: 320, column: 41, scope: !857)
!859 = !DILocation(line: 320, column: 21, scope: !857)
!860 = !DILocation(line: 321, column: 66, scope: !857)
!861 = !DILocation(line: 321, column: 74, scope: !857)
!862 = !DILocation(line: 321, column: 78, scope: !857)
!863 = !{!542, !362, i64 40}
!864 = !DILocation(line: 321, column: 21, scope: !857)
!865 = !DILocation(line: 322, column: 17, scope: !857)
!866 = !DILocation(line: 333, column: 35, scope: !672)
!867 = !DILocation(line: 333, column: 39, scope: !672)
!868 = !DILocation(line: 333, column: 57, scope: !672)
!869 = !DILocation(line: 333, column: 22, scope: !672)
!870 = !DILocation(line: 329, column: 28, scope: !672)
!871 = !DILocation(line: 334, column: 21, scope: !676)
!872 = !DILocation(line: 334, column: 21, scope: !672)
!873 = !DILocation(line: 335, column: 37, scope: !675)
!874 = !DILocation(line: 335, column: 27, scope: !675)
!875 = !DILocation(line: 336, column: 38, scope: !675)
!876 = !DILocation(line: 336, column: 25, scope: !675)
!877 = !DILocation(line: 337, column: 43, scope: !675)
!878 = !DILocation(line: 337, column: 35, scope: !675)
!879 = !DILocation(line: 339, column: 37, scope: !675)
!880 = !DILocation(line: 339, column: 40, scope: !675)
!881 = !DILocation(line: 339, column: 21, scope: !675)
!882 = !DILocation(line: 340, column: 48, scope: !680)
!883 = !DILocation(line: 340, column: 35, scope: !680)
!884 = !DILocation(line: 341, column: 56, scope: !680)
!885 = !DILocation(line: 341, column: 44, scope: !680)
!886 = !DILocation(line: 341, column: 33, scope: !680)
!887 = !DILocation(line: 343, column: 39, scope: !888)
!888 = distinct !DILexicalBlock(scope: !680, file: !1, line: 343, column: 29)
!889 = !DILocation(line: 343, column: 45, scope: !888)
!890 = !DILocation(line: 343, column: 29, scope: !680)
!891 = !DILocation(line: 346, column: 29, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !1, line: 343, column: 62)
!893 = !DILocation(line: 347, column: 29, scope: !892)
!894 = !DILocation(line: 348, column: 29, scope: !892)
!895 = distinct !{!895, !881, !896}
!896 = !DILocation(line: 370, column: 21, scope: !675)
!897 = !DILocation(line: 351, column: 48, scope: !680)
!898 = !DILocation(line: 351, column: 38, scope: !680)
!899 = !DILocation(line: 351, column: 56, scope: !680)
!900 = !DILocation(line: 352, column: 57, scope: !680)
!901 = !DILocation(line: 352, column: 62, scope: !680)
!902 = !DILocation(line: 0, scope: !680)
!903 = !DILocation(line: 351, column: 37, scope: !680)
!904 = !DILocation(line: 351, column: 29, scope: !680)
!905 = !DILocation(line: 354, column: 25, scope: !680)
!906 = !DILocation(line: 355, column: 25, scope: !680)
!907 = !DILocation(line: 356, column: 30, scope: !680)
!908 = !DILocation(line: 359, column: 25, scope: !680)
!909 = !DILocation(line: 359, column: 31, scope: !680)
!910 = !DILocation(line: 361, column: 59, scope: !680)
!911 = !DILocation(line: 362, column: 59, scope: !680)
!912 = !DILocation(line: 360, column: 52, scope: !680)
!913 = !DILocation(line: 360, column: 46, scope: !680)
!914 = !DILocation(line: 363, column: 59, scope: !680)
!915 = !{!823, !363, i64 0}
!916 = !DILocation(line: 363, column: 64, scope: !680)
!917 = !DILocation(line: 363, column: 35, scope: !680)
!918 = !DILocation(line: 363, column: 33, scope: !680)
!919 = !DILocation(line: 364, column: 39, scope: !680)
!920 = !DILocation(line: 364, column: 33, scope: !680)
!921 = !DILocation(line: 365, column: 42, scope: !680)
!922 = !DILocation(line: 365, column: 25, scope: !680)
!923 = !DILocation(line: 366, column: 49, scope: !680)
!924 = !DILocation(line: 366, column: 53, scope: !680)
!925 = !DILocation(line: 366, column: 25, scope: !680)
!926 = !DILocation(line: 368, column: 38, scope: !680)
!927 = !DILocation(line: 368, column: 25, scope: !680)
!928 = !DILocation(line: 369, column: 38, scope: !680)
!929 = !DILocation(line: 369, column: 25, scope: !680)
!930 = !DILocation(line: 376, column: 46, scope: !687)
!931 = !DILocation(line: 376, column: 50, scope: !687)
!932 = !DILocation(line: 376, column: 68, scope: !687)
!933 = !DILocation(line: 376, column: 33, scope: !687)
!934 = !DILocation(line: 376, column: 28, scope: !687)
!935 = !DILocation(line: 377, column: 32, scope: !687)
!936 = !{!937, !363, i64 8}
!937 = !{!"redisObject", !362, i64 0, !362, i64 0, !362, i64 1, !362, i64 4, !363, i64 8}
!938 = !DILocation(line: 377, column: 25, scope: !687)
!939 = !DILocation(line: 382, column: 21, scope: !724)
!940 = !DILocation(line: 382, column: 21, scope: !687)
!941 = !DILocation(line: 383, column: 37, scope: !723)
!942 = !DILocation(line: 383, column: 27, scope: !723)
!943 = !DILocation(line: 385, column: 21, scope: !723)
!944 = !DILocation(line: 385, column: 30, scope: !723)
!945 = !DILocation(line: 386, column: 21, scope: !723)
!946 = !DILocation(line: 388, column: 33, scope: !723)
!947 = !DILocation(line: 384, column: 31, scope: !723)
!948 = !DILocation(line: 388, column: 21, scope: !723)
!949 = !DILocation(line: 389, column: 44, scope: !728)
!950 = !DILocation(line: 389, column: 33, scope: !728)
!951 = !DILocation(line: 390, column: 39, scope: !952)
!952 = distinct !DILexicalBlock(scope: !728, file: !1, line: 390, column: 29)
!953 = !DILocation(line: 390, column: 45, scope: !952)
!954 = !DILocation(line: 390, column: 29, scope: !728)
!955 = distinct !{!955, !948, !956}
!956 = !DILocation(line: 457, column: 21, scope: !723)
!957 = !DILocation(line: 391, column: 70, scope: !728)
!958 = !DILocation(line: 392, column: 59, scope: !728)
!959 = !DILocation(line: 391, column: 40, scope: !728)
!960 = !DILocation(line: 391, column: 35, scope: !728)
!961 = !DILocation(line: 403, column: 35, scope: !728)
!962 = !DILocation(line: 404, column: 44, scope: !963)
!963 = distinct !DILexicalBlock(scope: !728, file: !1, line: 404, column: 29)
!964 = !DILocation(line: 404, column: 29, scope: !963)
!965 = !DILocation(line: 404, column: 29, scope: !728)
!966 = !DILocation(line: 406, column: 65, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !1, line: 404, column: 57)
!968 = !DILocation(line: 405, column: 37, scope: !967)
!969 = !DILocation(line: 409, column: 34, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !1, line: 409, column: 33)
!971 = !DILocation(line: 409, column: 33, scope: !967)
!972 = !DILocation(line: 410, column: 33, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !1, line: 409, column: 41)
!974 = !DILocation(line: 413, column: 33, scope: !973)
!975 = !DILocation(line: 414, column: 33, scope: !973)
!976 = !DILocation(line: 416, column: 46, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !1, line: 415, column: 36)
!978 = !{i64 0, i64 8, !443, i64 8, i64 8, !443}
!979 = !DILocation(line: 418, column: 25, scope: !967)
!980 = !DILocation(line: 0, scope: !728)
!981 = !DILocation(line: 420, column: 29, scope: !741)
!982 = !DILocation(line: 420, column: 62, scope: !741)
!983 = !DILocation(line: 420, column: 29, scope: !728)
!984 = !DILocation(line: 421, column: 29, scope: !740)
!985 = !DILocation(line: 421, column: 46, scope: !740)
!986 = !DILocation(line: 422, column: 38, scope: !740)
!987 = !{!988, !361, i64 8}
!988 = !{!"streamID", !361, i64 0, !361, i64 8}
!989 = !DILocation(line: 425, column: 45, scope: !740)
!990 = !DILocation(line: 426, column: 33, scope: !740)
!991 = !DILocation(line: 428, column: 33, scope: !992)
!992 = distinct !DILexicalBlock(scope: !740, file: !1, line: 428, column: 33)
!993 = !DILocation(line: 428, column: 33, scope: !740)
!994 = !DILocation(line: 430, column: 59, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !1, line: 428, column: 40)
!996 = !DILocation(line: 430, column: 75, scope: !995)
!997 = !DILocation(line: 429, column: 44, scope: !995)
!998 = !DILocation(line: 432, column: 56, scope: !995)
!999 = !{!360, !362, i64 456}
!1000 = !DILocation(line: 433, column: 29, scope: !995)
!1001 = !DILocation(line: 0, scope: !740)
!1002 = !DILocation(line: 439, column: 29, scope: !740)
!1003 = !DILocation(line: 440, column: 29, scope: !740)
!1004 = !DILocation(line: 441, column: 55, scope: !740)
!1005 = !DILocation(line: 441, column: 29, scope: !740)
!1006 = !DILocation(line: 443, column: 29, scope: !740)
!1007 = !DILocation(line: 444, column: 37, scope: !740)
!1008 = !DILocation(line: 443, column: 49, scope: !740)
!1009 = !{!1010, !363, i64 0}
!1010 = !{!"sreamPropInfo", !363, i64 0, !363, i64 8}
!1011 = !DILocation(line: 445, column: 48, scope: !740)
!1012 = !{!1010, !363, i64 8}
!1013 = !DILocation(line: 448, column: 65, scope: !740)
!1014 = !{!360, !361, i64 416}
!1015 = !DILocation(line: 421, column: 38, scope: !740)
!1016 = !DILocation(line: 443, column: 44, scope: !740)
!1017 = !DILocation(line: 447, column: 29, scope: !740)
!1018 = !DILocation(line: 455, column: 29, scope: !740)
!1019 = !DILocation(line: 456, column: 25, scope: !741)
!1020 = !DILocation(line: 456, column: 25, scope: !740)
!1021 = !DILocation(line: 458, column: 17, scope: !724)
!1022 = !DILocation(line: 458, column: 17, scope: !723)
!1023 = !DILocation(line: 462, column: 30, scope: !649)
!1024 = !DILocation(line: 462, column: 13, scope: !649)
!1025 = !DILocation(line: 463, column: 13, scope: !649)
!1026 = !DILocation(line: 464, column: 13, scope: !649)
!1027 = distinct !{!1027, !766, !1028}
!1028 = !DILocation(line: 465, column: 9, scope: !647)
!1029 = !DILocation(line: 466, column: 9, scope: !647)
!1030 = distinct !{!1030, !760, !1031}
!1031 = !DILocation(line: 467, column: 5, scope: !644)
!1032 = !DILocation(line: 468, column: 1, scope: !644)
!1033 = distinct !DISubprogram(name: "blockForKeys", scope: !1, file: !1, line: 497, type: !1034, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !60, !59, !194, !59, !281, !173, !730}
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1051}
!1037 = !DILocalVariable(name: "c", arg: 1, scope: !1033, file: !1, line: 497, type: !60)
!1038 = !DILocalVariable(name: "btype", arg: 2, scope: !1033, file: !1, line: 497, type: !59)
!1039 = !DILocalVariable(name: "keys", arg: 3, scope: !1033, file: !1, line: 497, type: !194)
!1040 = !DILocalVariable(name: "numkeys", arg: 4, scope: !1033, file: !1, line: 497, type: !59)
!1041 = !DILocalVariable(name: "timeout", arg: 5, scope: !1033, file: !1, line: 497, type: !281)
!1042 = !DILocalVariable(name: "target", arg: 6, scope: !1033, file: !1, line: 497, type: !173)
!1043 = !DILocalVariable(name: "ids", arg: 7, scope: !1033, file: !1, line: 497, type: !730)
!1044 = !DILocalVariable(name: "de", scope: !1033, file: !1, line: 498, type: !111)
!1045 = !DILocalVariable(name: "l", scope: !1033, file: !1, line: 499, type: !144)
!1046 = !DILocalVariable(name: "j", scope: !1033, file: !1, line: 500, type: !59)
!1047 = !DILocalVariable(name: "key_data", scope: !1048, file: !1, line: 510, type: !4)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 507, column: 35)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 507, column: 5)
!1050 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 507, column: 5)
!1051 = !DILocalVariable(name: "retval", scope: !1052, file: !1, line: 526, type: !59)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 525, column: 25)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 525, column: 13)
!1054 = !DILocation(line: 497, column: 27, scope: !1033)
!1055 = !DILocation(line: 497, column: 34, scope: !1033)
!1056 = !DILocation(line: 497, column: 48, scope: !1033)
!1057 = !DILocation(line: 497, column: 58, scope: !1033)
!1058 = !DILocation(line: 497, column: 76, scope: !1033)
!1059 = !DILocation(line: 497, column: 91, scope: !1033)
!1060 = !DILocation(line: 497, column: 109, scope: !1033)
!1061 = !DILocation(line: 502, column: 13, scope: !1033)
!1062 = !DILocation(line: 502, column: 21, scope: !1033)
!1063 = !{!360, !324, i64 392}
!1064 = !DILocation(line: 503, column: 13, scope: !1033)
!1065 = !DILocation(line: 503, column: 20, scope: !1033)
!1066 = !DILocation(line: 505, column: 16, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 505, column: 9)
!1068 = !DILocation(line: 505, column: 9, scope: !1033)
!1069 = !DILocation(line: 505, column: 25, scope: !1067)
!1070 = !DILocation(line: 500, column: 9, scope: !1033)
!1071 = !DILocation(line: 507, column: 19, scope: !1049)
!1072 = !DILocation(line: 507, column: 5, scope: !1050)
!1073 = !DILocation(line: 510, column: 15, scope: !1048)
!1074 = !DILocation(line: 511, column: 13, scope: !1048)
!1075 = !DILocation(line: 512, column: 24, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 511, column: 38)
!1077 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 511, column: 13)
!1078 = !DILocation(line: 513, column: 32, scope: !1076)
!1079 = !DILocation(line: 513, column: 29, scope: !1076)
!1080 = !DILocation(line: 513, column: 13, scope: !1076)
!1081 = !DILocation(line: 514, column: 9, scope: !1076)
!1082 = !DILocation(line: 0, scope: !1048)
!1083 = !DILocation(line: 517, column: 29, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 517, column: 13)
!1085 = !DILocation(line: 517, column: 34, scope: !1084)
!1086 = !DILocation(line: 517, column: 13, scope: !1084)
!1087 = !DILocation(line: 517, column: 52, scope: !1084)
!1088 = !DILocation(line: 517, column: 13, scope: !1048)
!1089 = !DILocation(line: 518, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 517, column: 64)
!1091 = !DILocation(line: 519, column: 13, scope: !1090)
!1092 = !DILocation(line: 521, column: 22, scope: !1048)
!1093 = !DILocation(line: 521, column: 9, scope: !1048)
!1094 = !DILocation(line: 524, column: 26, scope: !1048)
!1095 = !DILocation(line: 524, column: 30, scope: !1048)
!1096 = !DILocation(line: 524, column: 44, scope: !1048)
!1097 = !DILocation(line: 524, column: 14, scope: !1048)
!1098 = !DILocation(line: 498, column: 16, scope: !1033)
!1099 = !DILocation(line: 525, column: 16, scope: !1053)
!1100 = !DILocation(line: 525, column: 13, scope: !1048)
!1101 = !DILocation(line: 529, column: 17, scope: !1052)
!1102 = !DILocation(line: 499, column: 11, scope: !1033)
!1103 = !DILocation(line: 530, column: 33, scope: !1052)
!1104 = !DILocation(line: 530, column: 37, scope: !1052)
!1105 = !DILocation(line: 530, column: 51, scope: !1052)
!1106 = !DILocation(line: 530, column: 59, scope: !1052)
!1107 = !DILocation(line: 530, column: 22, scope: !1052)
!1108 = !DILocation(line: 526, column: 17, scope: !1052)
!1109 = !DILocation(line: 531, column: 26, scope: !1052)
!1110 = !DILocation(line: 531, column: 13, scope: !1052)
!1111 = !DILocation(line: 532, column: 13, scope: !1052)
!1112 = !DILocation(line: 534, column: 17, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 533, column: 16)
!1114 = !DILocation(line: 0, scope: !1113)
!1115 = !DILocation(line: 536, column: 9, scope: !1048)
!1116 = !DILocation(line: 537, column: 5, scope: !1049)
!1117 = !DILocation(line: 507, column: 31, scope: !1049)
!1118 = distinct !{!1118, !1072, !1119}
!1119 = !DILocation(line: 537, column: 5, scope: !1050)
!1120 = !DILocation(line: 102, column: 26, scope: !349, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 538, column: 5, scope: !1033)
!1122 = !DILocation(line: 102, column: 33, scope: !349, inlinedAt: !1121)
!1123 = !DILocation(line: 103, column: 8, scope: !349, inlinedAt: !1121)
!1124 = !DILocation(line: 103, column: 14, scope: !349, inlinedAt: !1121)
!1125 = !DILocation(line: 104, column: 8, scope: !349, inlinedAt: !1121)
!1126 = !DILocation(line: 104, column: 14, scope: !349, inlinedAt: !1121)
!1127 = !DILocation(line: 105, column: 27, scope: !349, inlinedAt: !1121)
!1128 = !DILocation(line: 106, column: 5, scope: !349, inlinedAt: !1121)
!1129 = !DILocation(line: 106, column: 42, scope: !349, inlinedAt: !1121)
!1130 = !DILocation(line: 539, column: 1, scope: !1033)
!1131 = distinct !DISubprogram(name: "signalKeyAsReady", scope: !1, file: !1, line: 585, type: !1132, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1134)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !68, !173}
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "db", arg: 1, scope: !1131, file: !1, line: 585, type: !68)
!1136 = !DILocalVariable(name: "key", arg: 2, scope: !1131, file: !1, line: 585, type: !173)
!1137 = !DILocalVariable(name: "rl", scope: !1131, file: !1, line: 586, type: !651)
!1138 = !DILocation(line: 585, column: 32, scope: !1131)
!1139 = !DILocation(line: 585, column: 42, scope: !1131)
!1140 = !DILocation(line: 589, column: 22, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 589, column: 9)
!1142 = !DILocation(line: 589, column: 36, scope: !1141)
!1143 = !DILocation(line: 589, column: 9, scope: !1141)
!1144 = !DILocation(line: 589, column: 41, scope: !1141)
!1145 = !DILocation(line: 589, column: 9, scope: !1131)
!1146 = !DILocation(line: 592, column: 22, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 592, column: 9)
!1148 = !DILocation(line: 592, column: 9, scope: !1147)
!1149 = !DILocation(line: 592, column: 38, scope: !1147)
!1150 = !DILocation(line: 592, column: 9, scope: !1131)
!1151 = !DILocation(line: 595, column: 10, scope: !1131)
!1152 = !DILocation(line: 586, column: 16, scope: !1131)
!1153 = !DILocation(line: 596, column: 9, scope: !1131)
!1154 = !DILocation(line: 596, column: 13, scope: !1131)
!1155 = !DILocation(line: 597, column: 9, scope: !1131)
!1156 = !DILocation(line: 597, column: 12, scope: !1131)
!1157 = !DILocation(line: 598, column: 5, scope: !1131)
!1158 = !DILocation(line: 599, column: 28, scope: !1131)
!1159 = !DILocation(line: 599, column: 5, scope: !1131)
!1160 = !DILocation(line: 604, column: 5, scope: !1131)
!1161 = !DILocation(line: 605, column: 5, scope: !1131)
!1162 = !DILocation(line: 606, column: 1, scope: !1131)
