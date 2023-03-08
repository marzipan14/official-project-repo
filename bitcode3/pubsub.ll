; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/pubsub.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/pubsub.c"
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
%struct.pubsubPattern = type { %struct.client*, %struct.redisObject* }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.listIter = type { %struct.listNode*, i32 }

@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str = private unnamed_addr constant [11 x i8] c"de != NULL\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/pubsub.c\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [96 x i8] c"CHANNELS [<pattern>] -- Return the currently active channels matching a pattern (default: all).\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"NUMPAT -- Return number of subscriptions to patterns.\00", align 1
@.str.6 = private unnamed_addr constant [133 x i8] c"NUMSUB [channel-1 .. channel-N] -- Returns the number of subscribers for the specified channels (excluding patterns, default: none).\00", align 1
@pubsubCommand.help = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"numsub\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"numpat\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @freePubsubPattern(i8*) local_unnamed_addr #0 !dbg !57 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !313
  %3 = bitcast i8* %2 to %struct.redisObject**, !dbg !313
  %4 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !313, !tbaa !314
  tail call void @decrRefCount(%struct.redisObject* %4) #7, !dbg !319
  tail call void @zfree(i8* %0) #7, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @listMatchPubsubPattern(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0 !dbg !322 {
  %3 = bitcast i8* %0 to %struct.client**, !dbg !330
  %4 = load %struct.client*, %struct.client** %3, align 8, !dbg !330, !tbaa !331
  %5 = bitcast i8* %1 to %struct.client**, !dbg !332
  %6 = load %struct.client*, %struct.client** %5, align 8, !dbg !332, !tbaa !331
  %7 = icmp eq %struct.client* %4, %6, !dbg !333
  br i1 %7, label %8, label %18, !dbg !334

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !337
  %10 = bitcast i8* %9 to %struct.redisObject**, !dbg !337
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !337, !tbaa !314
  %12 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !338
  %13 = bitcast i8* %12 to %struct.redisObject**, !dbg !338
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !338, !tbaa !314
  %15 = tail call i32 @equalStringObjects(%struct.redisObject* %11, %struct.redisObject* %14) #7, !dbg !339
  %16 = icmp ne i32 %15, 0, !dbg !334
  %17 = zext i1 %16 to i32
  br label %18

; <label>:18:                                     ; preds = %8, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %8 ]
  ret i32 %19, !dbg !340
}

; Function Attrs: noredzone
declare dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @clientSubscriptionsCount(%struct.client* nocapture readonly) local_unnamed_addr #4 !dbg !341 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !347
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !347, !tbaa !348
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !347
  %5 = load i64, i64* %4, align 8, !dbg !347, !tbaa !355
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !347
  %7 = load i64, i64* %6, align 8, !dbg !347, !tbaa !355
  %8 = add i64 %7, %5, !dbg !347
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !357
  %10 = load %struct.list*, %struct.list** %9, align 8, !dbg !357, !tbaa !358
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i64 0, i32 5, !dbg !357
  %12 = load i64, i64* %11, align 8, !dbg !357, !tbaa !359
  %13 = add i64 %8, %12, !dbg !361
  %14 = trunc i64 %13 to i32, !dbg !347
  ret i32 %14, !dbg !362
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubSubscribeChannel(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !363 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !376
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !376, !tbaa !348
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !378
  %6 = tail call i32 @dictAdd(%struct.dict* %4, i8* %5, i8* null) #7, !dbg !379
  %7 = icmp eq i32 %6, 0, !dbg !380
  br i1 %7, label %8, label %25, !dbg !381

; <label>:8:                                      ; preds = %2
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !382
  %9 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !384, !tbaa !385
  %10 = tail call %struct.dictEntry* @dictFind(%struct.dict* %9, i8* %5) #7, !dbg !391
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !393
  br i1 %11, label %12, label %17, !dbg !395

; <label>:12:                                     ; preds = %8
  %13 = tail call %struct.list* @listCreate() #7, !dbg !396
  %14 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !398, !tbaa !385
  %15 = bitcast %struct.list* %13 to i8*, !dbg !399
  %16 = tail call i32 @dictAdd(%struct.dict* %14, i8* %5, i8* %15) #7, !dbg !400
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !401
  br label %21, !dbg !402

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %10, i64 0, i32 1, i32 0, !dbg !403
  %19 = bitcast i8** %18 to %struct.list**, !dbg !403
  %20 = load %struct.list*, %struct.list** %19, align 8, !dbg !403, !tbaa !405
  br label %21

; <label>:21:                                     ; preds = %17, %12
  %22 = phi %struct.list* [ %13, %12 ], [ %20, %17 ], !dbg !406
  %23 = bitcast %struct.client* %0 to i8*, !dbg !407
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %22, i8* %23) #7, !dbg !408
  br label %25, !dbg !409

; <label>:25:                                     ; preds = %21, %2
  %26 = phi i32 [ 1, %21 ], [ 0, %2 ], !dbg !410
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !411, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #7, !dbg !413
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 33), align 8, !dbg !414, !tbaa !415
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %28) #7, !dbg !417
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #7, !dbg !418
  %29 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !421, !tbaa !348
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 0, i32 3, !dbg !421
  %31 = load i64, i64* %30, align 8, !dbg !421, !tbaa !355
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 1, i32 3, !dbg !421
  %33 = load i64, i64* %32, align 8, !dbg !421, !tbaa !355
  %34 = add i64 %33, %31, !dbg !421
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !422
  %36 = load %struct.list*, %struct.list** %35, align 8, !dbg !422, !tbaa !358
  %37 = getelementptr inbounds %struct.list, %struct.list* %36, i64 0, i32 5, !dbg !422
  %38 = load i64, i64* %37, align 8, !dbg !422, !tbaa !359
  %39 = add i64 %34, %38, !dbg !423
  %40 = shl i64 %39, 32, !dbg !424
  %41 = ashr exact i64 %40, 32, !dbg !424
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %41) #7, !dbg !425
  ret i32 %26, !dbg !426
}

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribeChannel(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !427 {
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !442
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !443
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !443, !tbaa !348
  %6 = bitcast %struct.redisObject* %1 to i8*, !dbg !445
  %7 = tail call i32 @dictDelete(%struct.dict* %5, i8* %6) #7, !dbg !446
  %8 = icmp eq i32 %7, 0, !dbg !447
  br i1 %8, label %9, label %29, !dbg !448

; <label>:9:                                      ; preds = %3
  %10 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !449, !tbaa !385
  %11 = tail call %struct.dictEntry* @dictFind(%struct.dict* %10, i8* %6) #7, !dbg !451
  %12 = icmp eq %struct.dictEntry* %11, null, !dbg !453
  br i1 %12, label %13, label %14, !dbg !453

; <label>:13:                                     ; preds = %9
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 101) #7, !dbg !453
  tail call void @_exit(i32 1) #8, !dbg !453
  unreachable, !dbg !453

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 1, i32 0, !dbg !454
  %16 = bitcast i8** %15 to %struct.list**, !dbg !454
  %17 = load %struct.list*, %struct.list** %16, align 8, !dbg !454, !tbaa !405
  %18 = bitcast %struct.client* %0 to i8*, !dbg !456
  %19 = tail call %struct.listNode* @listSearchKey(%struct.list* %17, i8* %18) #7, !dbg !457
  %20 = icmp eq %struct.listNode* %19, null, !dbg !459
  br i1 %20, label %21, label %22, !dbg !459

; <label>:21:                                     ; preds = %14
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 104) #7, !dbg !459
  tail call void @_exit(i32 1) #8, !dbg !459
  unreachable, !dbg !459

; <label>:22:                                     ; preds = %14
  tail call void @listDelNode(%struct.list* %17, %struct.listNode* nonnull %19) #7, !dbg !460
  %23 = getelementptr inbounds %struct.list, %struct.list* %17, i64 0, i32 5, !dbg !461
  %24 = load i64, i64* %23, align 8, !dbg !461, !tbaa !359
  %25 = icmp eq i64 %24, 0, !dbg !463
  br i1 %25, label %26, label %29, !dbg !464

; <label>:26:                                     ; preds = %22
  %27 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !465, !tbaa !385
  %28 = tail call i32 @dictDelete(%struct.dict* %27, i8* %6) #7, !dbg !467
  br label %29, !dbg !468

; <label>:29:                                     ; preds = %22, %26, %3
  %30 = phi i32 [ 1, %26 ], [ 1, %22 ], [ 0, %3 ], !dbg !469
  %31 = icmp eq i32 %2, 0, !dbg !470
  br i1 %31, label %46, label %32, !dbg !472

; <label>:32:                                     ; preds = %29
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !473, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #7, !dbg !475
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 34), align 8, !dbg !476, !tbaa !477
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #7, !dbg !478
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #7, !dbg !479
  %35 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !480, !tbaa !348
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 0, i32 3, !dbg !480
  %37 = load i64, i64* %36, align 8, !dbg !480, !tbaa !355
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 1, i32 3, !dbg !480
  %39 = load i64, i64* %38, align 8, !dbg !480, !tbaa !355
  %40 = add i64 %39, %37, !dbg !480
  %41 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !481
  %42 = load %struct.list*, %struct.list** %41, align 8, !dbg !481, !tbaa !358
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i64 0, i32 5, !dbg !481
  %44 = load i64, i64* %43, align 8, !dbg !481, !tbaa !359
  %45 = add i64 %40, %44, !dbg !482
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %45) #7, !dbg !483
  br label %46, !dbg !484

; <label>:46:                                     ; preds = %29, %32
  tail call void @decrRefCount(%struct.redisObject* %1) #7, !dbg !485
  ret i32 %30, !dbg !486
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubSubscribePattern(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !487 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !498
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !498, !tbaa !358
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !499
  %6 = tail call %struct.listNode* @listSearchKey(%struct.list* %4, i8* %5) #7, !dbg !500
  %7 = icmp eq %struct.listNode* %6, null, !dbg !501
  br i1 %7, label %8, label %18, !dbg !502

; <label>:8:                                      ; preds = %2
  %9 = load %struct.list*, %struct.list** %3, align 8, !dbg !503, !tbaa !358
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %9, i8* %5) #7, !dbg !504
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !505
  %11 = tail call i8* @zmalloc(i64 16) #7, !dbg !506
  %12 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #7, !dbg !508
  %13 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !509
  %14 = bitcast i8* %13 to %struct.redisObject**, !dbg !509
  store %struct.redisObject* %12, %struct.redisObject** %14, align 8, !dbg !510, !tbaa !314
  %15 = bitcast i8* %11 to %struct.client**, !dbg !511
  store %struct.client* %0, %struct.client** %15, align 8, !dbg !512, !tbaa !331
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !513, !tbaa !514
  %17 = tail call %struct.list* @listAddNodeTail(%struct.list* %16, i8* %11) #7, !dbg !515
  br label %18, !dbg !516

; <label>:18:                                     ; preds = %8, %2
  %19 = phi i32 [ 1, %8 ], [ 0, %2 ], !dbg !517
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !518, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %20) #7, !dbg !519
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 35), align 8, !dbg !520, !tbaa !521
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %21) #7, !dbg !522
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #7, !dbg !523
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !526
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !526, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !526
  %25 = load i64, i64* %24, align 8, !dbg !526, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !526
  %27 = load i64, i64* %26, align 8, !dbg !526, !tbaa !355
  %28 = add i64 %27, %25, !dbg !526
  %29 = load %struct.list*, %struct.list** %3, align 8, !dbg !527, !tbaa !358
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 5, !dbg !527
  %31 = load i64, i64* %30, align 8, !dbg !527, !tbaa !359
  %32 = add i64 %28, %31, !dbg !528
  %33 = shl i64 %32, 32, !dbg !529
  %34 = ashr exact i64 %33, 32, !dbg !529
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #7, !dbg !530
  ret i32 %19, !dbg !531
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribePattern(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !532 {
  %4 = alloca %struct.pubsubPattern, align 8
  %5 = bitcast %struct.pubsubPattern* %4 to i8*, !dbg !543
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9, !dbg !543
  tail call void @incrRefCount(%struct.redisObject* %1) #7, !dbg !545
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !546
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !546, !tbaa !358
  %8 = bitcast %struct.redisObject* %1 to i8*, !dbg !548
  %9 = tail call %struct.listNode* @listSearchKey(%struct.list* %7, i8* %8) #7, !dbg !549
  %10 = icmp eq %struct.listNode* %9, null, !dbg !551
  br i1 %10, label %18, label %11, !dbg !552

; <label>:11:                                     ; preds = %3
  %12 = load %struct.list*, %struct.list** %6, align 8, !dbg !553, !tbaa !358
  tail call void @listDelNode(%struct.list* %12, %struct.listNode* nonnull %9) #7, !dbg !555
  %13 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %4, i64 0, i32 0, !dbg !556
  store %struct.client* %0, %struct.client** %13, align 8, !dbg !557, !tbaa !331
  %14 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %4, i64 0, i32 1, !dbg !558
  store %struct.redisObject* %1, %struct.redisObject** %14, align 8, !dbg !559, !tbaa !314
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !560, !tbaa !514
  %16 = call %struct.listNode* @listSearchKey(%struct.list* %15, i8* nonnull %5) #7, !dbg !561
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !562, !tbaa !514
  call void @listDelNode(%struct.list* %17, %struct.listNode* %16) #7, !dbg !563
  br label %18, !dbg !564

; <label>:18:                                     ; preds = %3, %11
  %19 = phi i32 [ 1, %11 ], [ 0, %3 ], !dbg !565
  %20 = icmp eq i32 %2, 0, !dbg !566
  br i1 %20, label %35, label %21, !dbg !568

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !569, !tbaa !412
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #7, !dbg !571
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 36), align 8, !dbg !572, !tbaa !573
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #7, !dbg !574
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #7, !dbg !575
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !576
  %25 = load %struct.dict*, %struct.dict** %24, align 8, !dbg !576, !tbaa !348
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %25, i64 0, i32 2, i64 0, i32 3, !dbg !576
  %27 = load i64, i64* %26, align 8, !dbg !576, !tbaa !355
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %25, i64 0, i32 2, i64 1, i32 3, !dbg !576
  %29 = load i64, i64* %28, align 8, !dbg !576, !tbaa !355
  %30 = add i64 %29, %27, !dbg !576
  %31 = load %struct.list*, %struct.list** %6, align 8, !dbg !577, !tbaa !358
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i64 0, i32 5, !dbg !577
  %33 = load i64, i64* %32, align 8, !dbg !577, !tbaa !359
  %34 = add i64 %30, %33, !dbg !578
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #7, !dbg !579
  br label %35, !dbg !580

; <label>:35:                                     ; preds = %18, %21
  call void @decrRefCount(%struct.redisObject* %1) #7, !dbg !581
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9, !dbg !582
  ret i32 %19, !dbg !583
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribeAllChannels(%struct.client*, i32) local_unnamed_addr #0 !dbg !584 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !608
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !608, !tbaa !348
  %5 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %4) #7, !dbg !609
  %6 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %5) #7, !dbg !612
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !614
  br i1 %7, label %17, label %8, !dbg !615

; <label>:8:                                      ; preds = %2, %8
  %9 = phi %struct.dictEntry* [ %15, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %2 ]
  %11 = bitcast %struct.dictEntry* %9 to %struct.redisObject**, !dbg !616
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !616, !tbaa !617
  %13 = tail call i32 @pubsubUnsubscribeChannel(%struct.client* %0, %struct.redisObject* %12, i32 %1) #10, !dbg !620
  %14 = add nsw i32 %13, %10, !dbg !621
  %15 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %5) #7, !dbg !612
  %16 = icmp eq %struct.dictEntry* %15, null, !dbg !614
  br i1 %16, label %17, label %8, !dbg !615, !llvm.loop !622

; <label>:17:                                     ; preds = %8, %2
  %18 = phi i32 [ 0, %2 ], [ %14, %8 ], !dbg !624
  %19 = icmp ne i32 %1, 0, !dbg !625
  %20 = icmp eq i32 %18, 0, !dbg !627
  %21 = and i1 %19, %20, !dbg !628
  br i1 %21, label %22, label %37, !dbg !628

; <label>:22:                                     ; preds = %17
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !629, !tbaa !412
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %23) #7, !dbg !631
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 34), align 8, !dbg !632, !tbaa !477
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %24) #7, !dbg !633
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !634, !tbaa !635
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %25) #7, !dbg !636
  %26 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !637, !tbaa !348
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !637
  %28 = load i64, i64* %27, align 8, !dbg !637, !tbaa !355
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !637
  %30 = load i64, i64* %29, align 8, !dbg !637, !tbaa !355
  %31 = add i64 %30, %28, !dbg !637
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !638
  %33 = load %struct.list*, %struct.list** %32, align 8, !dbg !638, !tbaa !358
  %34 = getelementptr inbounds %struct.list, %struct.list* %33, i64 0, i32 5, !dbg !638
  %35 = load i64, i64* %34, align 8, !dbg !638, !tbaa !359
  %36 = add i64 %31, %35, !dbg !639
  tail call void @addReplyLongLong(%struct.client* %0, i64 %36) #7, !dbg !640
  br label %37, !dbg !641

; <label>:37:                                     ; preds = %22, %17
  tail call void @dictReleaseIterator(%struct.dictIterator* %5) #7, !dbg !642
  ret i32 %18, !dbg !643
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribeAllPatterns(%struct.client*, i32) local_unnamed_addr #0 !dbg !644 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !660
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9, !dbg !660
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !662
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !662, !tbaa !358
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #7, !dbg !664
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #7, !dbg !665
  %8 = icmp eq %struct.listNode* %7, null, !dbg !667
  br i1 %8, label %19, label %9, !dbg !668

; <label>:9:                                      ; preds = %2, %9
  %10 = phi %struct.listNode* [ %17, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !669
  %13 = bitcast i8** %12 to %struct.redisObject**, !dbg !669
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !669, !tbaa !670
  %15 = call i32 @pubsubUnsubscribePattern(%struct.client* %0, %struct.redisObject* %14, i32 %1) #10, !dbg !673
  %16 = add nsw i32 %15, %11, !dbg !674
  %17 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #7, !dbg !665
  %18 = icmp eq %struct.listNode* %17, null, !dbg !667
  br i1 %18, label %19, label %9, !dbg !668, !llvm.loop !675

; <label>:19:                                     ; preds = %9, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %9 ], !dbg !677
  %21 = icmp ne i32 %1, 0, !dbg !678
  %22 = icmp eq i32 %20, 0, !dbg !680
  %23 = and i1 %21, %22, !dbg !681
  br i1 %23, label %24, label %39, !dbg !681

; <label>:24:                                     ; preds = %19
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !682, !tbaa !412
  call void @addReply(%struct.client* %0, %struct.redisObject* %25) #7, !dbg !684
  %26 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 36), align 8, !dbg !685, !tbaa !573
  call void @addReply(%struct.client* %0, %struct.redisObject* %26) #7, !dbg !686
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !687, !tbaa !635
  call void @addReply(%struct.client* %0, %struct.redisObject* %27) #7, !dbg !688
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !689
  %29 = load %struct.dict*, %struct.dict** %28, align 8, !dbg !689, !tbaa !348
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 0, i32 3, !dbg !689
  %31 = load i64, i64* %30, align 8, !dbg !689, !tbaa !355
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 1, i32 3, !dbg !689
  %33 = load i64, i64* %32, align 8, !dbg !689, !tbaa !355
  %34 = add i64 %33, %31, !dbg !689
  %35 = load %struct.list*, %struct.list** %5, align 8, !dbg !690, !tbaa !358
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i64 0, i32 5, !dbg !690
  %37 = load i64, i64* %36, align 8, !dbg !690, !tbaa !359
  %38 = add i64 %34, %37, !dbg !691
  call void @addReplyLongLong(%struct.client* %0, i64 %38) #7, !dbg !692
  br label %39, !dbg !693

; <label>:39:                                     ; preds = %24, %19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9, !dbg !694
  ret i32 %20, !dbg !695
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubPublishMessage(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !696 {
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.listIter, align 8
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !720
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9, !dbg !720
  %6 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !721, !tbaa !385
  %7 = bitcast %struct.redisObject* %0 to i8*, !dbg !722
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %7) #7, !dbg !723
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !725
  br i1 %9, label %30, label %10, !dbg !726

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !727
  %12 = bitcast i8** %11 to %struct.list**, !dbg !727
  %13 = load %struct.list*, %struct.list** %12, align 8, !dbg !727, !tbaa !405
  %14 = bitcast %struct.listIter* %4 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #9, !dbg !729
  call void @listRewind(%struct.list* %13, %struct.listIter* nonnull %4) #7, !dbg !731
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #7, !dbg !732
  %16 = icmp eq %struct.listNode* %15, null, !dbg !734
  br i1 %16, label %28, label %17, !dbg !735

; <label>:17:                                     ; preds = %10, %17
  %18 = phi %struct.listNode* [ %26, %17 ], [ %15, %10 ]
  %19 = phi i32 [ %25, %17 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.listNode, %struct.listNode* %18, i64 0, i32 2, !dbg !736
  %21 = bitcast i8** %20 to %struct.client**, !dbg !736
  %22 = load %struct.client*, %struct.client** %21, align 8, !dbg !736, !tbaa !670
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !738, !tbaa !412
  call void @addReply(%struct.client* %22, %struct.redisObject* %23) #7, !dbg !739
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 31), align 8, !dbg !740, !tbaa !741
  call void @addReply(%struct.client* %22, %struct.redisObject* %24) #7, !dbg !742
  call void @addReplyBulk(%struct.client* %22, %struct.redisObject* %0) #7, !dbg !743
  call void @addReplyBulk(%struct.client* %22, %struct.redisObject* %1) #7, !dbg !744
  %25 = add nuw nsw i32 %19, 1, !dbg !745
  %26 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #7, !dbg !732
  %27 = icmp eq %struct.listNode* %26, null, !dbg !734
  br i1 %27, label %28, label %17, !dbg !735, !llvm.loop !746

; <label>:28:                                     ; preds = %17, %10
  %29 = phi i32 [ 0, %10 ], [ %25, %17 ], !dbg !748
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #9, !dbg !749
  br label %30, !dbg !750

; <label>:30:                                     ; preds = %2, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %2 ], !dbg !719
  %32 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !751, !tbaa !514
  %33 = getelementptr inbounds %struct.list, %struct.list* %32, i64 0, i32 5, !dbg !751
  %34 = load i64, i64* %33, align 8, !dbg !751, !tbaa !359
  %35 = icmp eq i64 %34, 0, !dbg !751
  br i1 %35, label %126, label %36, !dbg !752

; <label>:36:                                     ; preds = %30
  call void @listRewind(%struct.list* %32, %struct.listIter* nonnull %3) #7, !dbg !754
  %37 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %0) #7, !dbg !755
  %38 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #7, !dbg !756
  %39 = icmp eq %struct.listNode* %38, null, !dbg !758
  br i1 %39, label %124, label %40, !dbg !759

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2
  br label %42, !dbg !759

; <label>:42:                                     ; preds = %40, %120
  %43 = phi %struct.listNode* [ %38, %40 ], [ %122, %120 ]
  %44 = phi i32 [ %31, %40 ], [ %121, %120 ]
  %45 = getelementptr inbounds %struct.listNode, %struct.listNode* %43, i64 0, i32 2, !dbg !760
  %46 = bitcast i8** %45 to %struct.pubsubPattern**, !dbg !760
  %47 = load %struct.pubsubPattern*, %struct.pubsubPattern** %46, align 8, !dbg !760, !tbaa !670
  %48 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %47, i64 0, i32 1, !dbg !762
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !762, !tbaa !314
  %50 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %49, i64 0, i32 2, !dbg !764
  %51 = load i8*, i8** %50, align 8, !dbg !764, !tbaa !765
  %52 = getelementptr inbounds i8, i8* %51, i64 -1, !dbg !778
  %53 = load i8, i8* %52, align 1, !dbg !778, !tbaa !405
  %54 = trunc i8 %53 to i3, !dbg !780
  switch i3 %54, label %76 [
    i3 0, label %55
    i3 1, label %58
    i3 2, label %62
    i3 3, label %67
    i3 -4, label %72
  ], !dbg !780

; <label>:55:                                     ; preds = %42
  %56 = lshr i8 %53, 3, !dbg !781
  %57 = zext i8 %56 to i64, !dbg !781
  br label %76, !dbg !783

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %51, i64 -3, !dbg !784
  %60 = load i8, i8* %59, align 1, !dbg !785, !tbaa !405
  %61 = zext i8 %60 to i64, !dbg !784
  br label %76, !dbg !786

; <label>:62:                                     ; preds = %42
  %63 = getelementptr inbounds i8, i8* %51, i64 -5, !dbg !787
  %64 = bitcast i8* %63 to i16*, !dbg !788
  %65 = load i16, i16* %64, align 1, !dbg !788, !tbaa !789
  %66 = zext i16 %65 to i64, !dbg !787
  br label %76, !dbg !791

; <label>:67:                                     ; preds = %42
  %68 = getelementptr inbounds i8, i8* %51, i64 -9, !dbg !792
  %69 = bitcast i8* %68 to i32*, !dbg !793
  %70 = load i32, i32* %69, align 1, !dbg !793, !tbaa !794
  %71 = zext i32 %70 to i64, !dbg !792
  br label %76, !dbg !795

; <label>:72:                                     ; preds = %42
  %73 = getelementptr inbounds i8, i8* %51, i64 -17, !dbg !796
  %74 = bitcast i8* %73 to i64*, !dbg !797
  %75 = load i64, i64* %74, align 1, !dbg !797, !tbaa !798
  br label %76, !dbg !799

; <label>:76:                                     ; preds = %42, %55, %58, %62, %67, %72
  %77 = phi i64 [ %75, %72 ], [ %71, %67 ], [ %66, %62 ], [ %61, %58 ], [ %57, %55 ], [ 0, %42 ], !dbg !800
  %78 = trunc i64 %77 to i32, !dbg !801
  %79 = load i8*, i8** %41, align 8, !dbg !802, !tbaa !765
  %80 = getelementptr inbounds i8, i8* %79, i64 -1, !dbg !805
  %81 = load i8, i8* %80, align 1, !dbg !805, !tbaa !405
  %82 = trunc i8 %81 to i3, !dbg !807
  switch i3 %82, label %104 [
    i3 0, label %83
    i3 1, label %86
    i3 2, label %90
    i3 3, label %95
    i3 -4, label %100
  ], !dbg !807

; <label>:83:                                     ; preds = %76
  %84 = lshr i8 %81, 3, !dbg !808
  %85 = zext i8 %84 to i64, !dbg !808
  br label %104, !dbg !809

; <label>:86:                                     ; preds = %76
  %87 = getelementptr inbounds i8, i8* %79, i64 -3, !dbg !810
  %88 = load i8, i8* %87, align 1, !dbg !811, !tbaa !405
  %89 = zext i8 %88 to i64, !dbg !810
  br label %104, !dbg !812

; <label>:90:                                     ; preds = %76
  %91 = getelementptr inbounds i8, i8* %79, i64 -5, !dbg !813
  %92 = bitcast i8* %91 to i16*, !dbg !814
  %93 = load i16, i16* %92, align 1, !dbg !814, !tbaa !789
  %94 = zext i16 %93 to i64, !dbg !813
  br label %104, !dbg !815

; <label>:95:                                     ; preds = %76
  %96 = getelementptr inbounds i8, i8* %79, i64 -9, !dbg !816
  %97 = bitcast i8* %96 to i32*, !dbg !817
  %98 = load i32, i32* %97, align 1, !dbg !817, !tbaa !794
  %99 = zext i32 %98 to i64, !dbg !816
  br label %104, !dbg !818

; <label>:100:                                    ; preds = %76
  %101 = getelementptr inbounds i8, i8* %79, i64 -17, !dbg !819
  %102 = bitcast i8* %101 to i64*, !dbg !820
  %103 = load i64, i64* %102, align 1, !dbg !820, !tbaa !798
  br label %104, !dbg !821

; <label>:104:                                    ; preds = %76, %83, %86, %90, %95, %100
  %105 = phi i64 [ %103, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %86 ], [ %85, %83 ], [ 0, %76 ], !dbg !822
  %106 = trunc i64 %105 to i32, !dbg !823
  %107 = call i32 @stringmatchlen(i8* %51, i32 %78, i8* %79, i32 %106, i32 0) #7, !dbg !824
  %108 = icmp eq i32 %107, 0, !dbg !824
  br i1 %108, label %120, label %109, !dbg !825

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %47, i64 0, i32 0, !dbg !826
  %111 = load %struct.client*, %struct.client** %110, align 8, !dbg !826, !tbaa !331
  %112 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 4), align 8, !dbg !828, !tbaa !412
  call void @addReply(%struct.client* %111, %struct.redisObject* %112) #7, !dbg !829
  %113 = load %struct.client*, %struct.client** %110, align 8, !dbg !830, !tbaa !331
  %114 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 32), align 8, !dbg !831, !tbaa !832
  call void @addReply(%struct.client* %113, %struct.redisObject* %114) #7, !dbg !833
  %115 = load %struct.client*, %struct.client** %110, align 8, !dbg !834, !tbaa !331
  %116 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !835, !tbaa !314
  call void @addReplyBulk(%struct.client* %115, %struct.redisObject* %116) #7, !dbg !836
  %117 = load %struct.client*, %struct.client** %110, align 8, !dbg !837, !tbaa !331
  call void @addReplyBulk(%struct.client* %117, %struct.redisObject* nonnull %37) #7, !dbg !838
  %118 = load %struct.client*, %struct.client** %110, align 8, !dbg !839, !tbaa !331
  call void @addReplyBulk(%struct.client* %118, %struct.redisObject* %1) #7, !dbg !840
  %119 = add nsw i32 %44, 1, !dbg !841
  br label %120, !dbg !842

; <label>:120:                                    ; preds = %104, %109
  %121 = phi i32 [ %119, %109 ], [ %44, %104 ], !dbg !843
  %122 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #7, !dbg !756
  %123 = icmp eq %struct.listNode* %122, null, !dbg !758
  br i1 %123, label %124, label %42, !dbg !759, !llvm.loop !844

; <label>:124:                                    ; preds = %120, %36
  %125 = phi i32 [ %31, %36 ], [ %121, %120 ], !dbg !846
  call void @decrRefCount(%struct.redisObject* %37) #7, !dbg !847
  br label %126, !dbg !848

; <label>:126:                                    ; preds = %30, %124
  %127 = phi i32 [ %125, %124 ], [ %31, %30 ], !dbg !719
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9, !dbg !849
  ret i32 %127, !dbg !850
}

; Function Attrs: noredzone
declare dso_local i32 @stringmatchlen(i8*, i32, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @subscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !851 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !857
  %3 = load i32, i32* %2, align 8, !dbg !857, !tbaa !860
  %4 = icmp sgt i32 %3, 1, !dbg !861
  br i1 %4, label %5, label %17, !dbg !862

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %7, !dbg !862

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i64 [ 1, %5 ], [ %13, %7 ]
  %9 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !863, !tbaa !864
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !865
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !865, !tbaa !412
  %12 = tail call i32 @pubsubSubscribeChannel(%struct.client* nonnull %0, %struct.redisObject* %11) #10, !dbg !866
  %13 = add nuw nsw i64 %8, 1, !dbg !867
  %14 = load i32, i32* %2, align 8, !dbg !857, !tbaa !860
  %15 = sext i32 %14 to i64, !dbg !861
  %16 = icmp slt i64 %13, %15, !dbg !861
  br i1 %16, label %7, label %17, !dbg !862, !llvm.loop !868

; <label>:17:                                     ; preds = %7, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !870
  %19 = load i32, i32* %18, align 8, !dbg !871, !tbaa !872
  %20 = or i32 %19, 262144, !dbg !871
  store i32 %20, i32* %18, align 8, !dbg !871, !tbaa !872
  ret void, !dbg !873
}

; Function Attrs: noredzone nounwind
define dso_local void @unsubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !874 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !881
  %3 = load i32, i32* %2, align 8, !dbg !881, !tbaa !860
  %4 = icmp eq i32 %3, 1, !dbg !882
  br i1 %4, label %9, label %5, !dbg !883

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %3, 1, !dbg !885
  br i1 %6, label %7, label %21, !dbg !888

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !888

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @pubsubUnsubscribeAllChannels(%struct.client* nonnull %0, i32 1) #10, !dbg !889
  br label %21, !dbg !891

; <label>:11:                                     ; preds = %7, %11
  %12 = phi i64 [ 1, %7 ], [ %17, %11 ]
  %13 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !892, !tbaa !864
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 %12, !dbg !893
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !893, !tbaa !412
  %16 = tail call i32 @pubsubUnsubscribeChannel(%struct.client* nonnull %0, %struct.redisObject* %15, i32 1) #10, !dbg !894
  %17 = add nuw nsw i64 %12, 1, !dbg !895
  %18 = load i32, i32* %2, align 8, !dbg !896, !tbaa !860
  %19 = sext i32 %18 to i64, !dbg !885
  %20 = icmp slt i64 %17, %19, !dbg !885
  br i1 %20, label %11, label %21, !dbg !888, !llvm.loop !897

; <label>:21:                                     ; preds = %11, %5, %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !902
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !902, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !902
  %25 = load i64, i64* %24, align 8, !dbg !902, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !902
  %27 = load i64, i64* %26, align 8, !dbg !902, !tbaa !355
  %28 = add i64 %27, %25, !dbg !902
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !903
  %30 = load %struct.list*, %struct.list** %29, align 8, !dbg !903, !tbaa !358
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i64 0, i32 5, !dbg !903
  %32 = load i64, i64* %31, align 8, !dbg !903, !tbaa !359
  %33 = add i64 %28, %32, !dbg !904
  %34 = trunc i64 %33 to i32, !dbg !902
  %35 = icmp eq i32 %34, 0, !dbg !905
  br i1 %35, label %36, label %40, !dbg !906

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !907
  %38 = load i32, i32* %37, align 8, !dbg !908, !tbaa !872
  %39 = and i32 %38, -262145, !dbg !908
  store i32 %39, i32* %37, align 8, !dbg !908, !tbaa !872
  br label %40, !dbg !909

; <label>:40:                                     ; preds = %36, %21
  ret void, !dbg !910
}

; Function Attrs: noredzone nounwind
define dso_local void @psubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !911 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !917
  %3 = load i32, i32* %2, align 8, !dbg !917, !tbaa !860
  %4 = icmp sgt i32 %3, 1, !dbg !920
  br i1 %4, label %5, label %17, !dbg !921

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %7, !dbg !921

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i64 [ 1, %5 ], [ %13, %7 ]
  %9 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !922, !tbaa !864
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !923
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !923, !tbaa !412
  %12 = tail call i32 @pubsubSubscribePattern(%struct.client* nonnull %0, %struct.redisObject* %11) #10, !dbg !924
  %13 = add nuw nsw i64 %8, 1, !dbg !925
  %14 = load i32, i32* %2, align 8, !dbg !917, !tbaa !860
  %15 = sext i32 %14 to i64, !dbg !920
  %16 = icmp slt i64 %13, %15, !dbg !920
  br i1 %16, label %7, label %17, !dbg !921, !llvm.loop !926

; <label>:17:                                     ; preds = %7, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !928
  %19 = load i32, i32* %18, align 8, !dbg !929, !tbaa !872
  %20 = or i32 %19, 262144, !dbg !929
  store i32 %20, i32* %18, align 8, !dbg !929, !tbaa !872
  ret void, !dbg !930
}

; Function Attrs: noredzone nounwind
define dso_local void @punsubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !931 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !938
  %3 = load i32, i32* %2, align 8, !dbg !938, !tbaa !860
  %4 = icmp eq i32 %3, 1, !dbg !939
  br i1 %4, label %9, label %5, !dbg !940

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %3, 1, !dbg !942
  br i1 %6, label %7, label %21, !dbg !945

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !945

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @pubsubUnsubscribeAllPatterns(%struct.client* nonnull %0, i32 1) #10, !dbg !946
  br label %21, !dbg !948

; <label>:11:                                     ; preds = %7, %11
  %12 = phi i64 [ 1, %7 ], [ %17, %11 ]
  %13 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !949, !tbaa !864
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 %12, !dbg !950
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !950, !tbaa !412
  %16 = tail call i32 @pubsubUnsubscribePattern(%struct.client* nonnull %0, %struct.redisObject* %15, i32 1) #10, !dbg !951
  %17 = add nuw nsw i64 %12, 1, !dbg !952
  %18 = load i32, i32* %2, align 8, !dbg !953, !tbaa !860
  %19 = sext i32 %18 to i64, !dbg !942
  %20 = icmp slt i64 %17, %19, !dbg !942
  br i1 %20, label %11, label %21, !dbg !945, !llvm.loop !954

; <label>:21:                                     ; preds = %11, %5, %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !959
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !959, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !959
  %25 = load i64, i64* %24, align 8, !dbg !959, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !959
  %27 = load i64, i64* %26, align 8, !dbg !959, !tbaa !355
  %28 = add i64 %27, %25, !dbg !959
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !960
  %30 = load %struct.list*, %struct.list** %29, align 8, !dbg !960, !tbaa !358
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i64 0, i32 5, !dbg !960
  %32 = load i64, i64* %31, align 8, !dbg !960, !tbaa !359
  %33 = add i64 %28, %32, !dbg !961
  %34 = trunc i64 %33 to i32, !dbg !959
  %35 = icmp eq i32 %34, 0, !dbg !962
  br i1 %35, label %36, label %40, !dbg !963

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !964
  %38 = load i32, i32* %37, align 8, !dbg !965, !tbaa !872
  %39 = and i32 %38, -262145, !dbg !965
  store i32 %39, i32* %37, align 8, !dbg !965, !tbaa !872
  br label %40, !dbg !966

; <label>:40:                                     ; preds = %36, %21
  ret void, !dbg !967
}

; Function Attrs: noredzone nounwind
define dso_local void @publishCommand(%struct.client*) local_unnamed_addr #0 !dbg !968 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !973
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !973, !tbaa !864
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !974
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !974, !tbaa !412
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !975
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !975, !tbaa !412
  %8 = tail call i32 @pubsubPublishMessage(%struct.redisObject* %5, %struct.redisObject* %7) #10, !dbg !976
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !978, !tbaa !980
  %10 = icmp eq i32 %9, 0, !dbg !981
  br i1 %10, label %17, label %11, !dbg !982

; <label>:11:                                     ; preds = %1
  %12 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !983, !tbaa !864
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 1, !dbg !984
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !984, !tbaa !412
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 2, !dbg !985
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !985, !tbaa !412
  tail call void @clusterPropagatePublish(%struct.redisObject* %14, %struct.redisObject* %16) #7, !dbg !986
  br label %18, !dbg !986

; <label>:17:                                     ; preds = %1
  tail call void @forceCommandPropagation(%struct.client* nonnull %0, i32 2) #7, !dbg !987
  br label %18

; <label>:18:                                     ; preds = %17, %11
  %19 = sext i32 %8 to i64, !dbg !988
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %19) #7, !dbg !989
  ret void, !dbg !990
}

; Function Attrs: noredzone
declare dso_local void @clusterPropagatePublish(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @forceCommandPropagation(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pubsubCommand(%struct.client*) local_unnamed_addr #0 !dbg !991 {
  %2 = alloca [4 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1020
  %4 = load i32, i32* %3, align 8, !dbg !1020, !tbaa !860
  %5 = icmp eq i32 %4, 2, !dbg !1021
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1022, !tbaa !864
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1022, !tbaa !412
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !dbg !1022, !tbaa !765
  br i1 %5, label %12, label %18, !dbg !1023

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !1024
  %14 = icmp eq i32 %13, 0, !dbg !1024
  br i1 %14, label %15, label %18, !dbg !1025

; <label>:15:                                     ; preds = %12
  %16 = bitcast [4 x i8*]* %2 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #9, !dbg !1026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %16, i8* align 16 bitcast ([4 x i8*]* @pubsubCommand.help to i8*), i64 32, i1 false), !dbg !1027
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0, !dbg !1028
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %17) #7, !dbg !1029
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #9, !dbg !1030
  br label %154, !dbg !1031

; <label>:18:                                     ; preds = %1, %12
  %19 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1032
  %20 = icmp eq i32 %19, 0, !dbg !1032
  %21 = and i32 %4, -2, !dbg !1033
  %22 = icmp eq i32 %21, 2, !dbg !1033
  %23 = and i1 %22, %20, !dbg !1034
  br i1 %23, label %24, label %111, !dbg !1034

; <label>:24:                                     ; preds = %18
  br i1 %5, label %30, label %25, !dbg !1035

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1036
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1036, !tbaa !412
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !1037
  %29 = load i8*, i8** %28, align 8, !dbg !1037, !tbaa !765
  br label %30, !dbg !1035

; <label>:30:                                     ; preds = %24, %25
  %31 = phi i8* [ %29, %25 ], [ null, %24 ], !dbg !1035
  %32 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !1039, !tbaa !385
  %33 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %32) #7, !dbg !1040
  %34 = tail call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #7, !dbg !1043
  %35 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #7, !dbg !1045
  %36 = icmp eq %struct.dictEntry* %35, null, !dbg !1047
  br i1 %36, label %109, label %37, !dbg !1048

; <label>:37:                                     ; preds = %30
  %38 = icmp eq i8* %31, null
  %39 = getelementptr inbounds i8, i8* %31, i64 -1
  %40 = getelementptr inbounds i8, i8* %31, i64 -3
  %41 = getelementptr inbounds i8, i8* %31, i64 -5
  %42 = bitcast i8* %41 to i16*
  %43 = getelementptr inbounds i8, i8* %31, i64 -9
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i8, i8* %31, i64 -17
  %46 = bitcast i8* %45 to i64*
  br label %47, !dbg !1048

; <label>:47:                                     ; preds = %37, %105
  %48 = phi %struct.dictEntry* [ %35, %37 ], [ %107, %105 ]
  %49 = phi i64 [ 0, %37 ], [ %106, %105 ]
  %50 = bitcast %struct.dictEntry* %48 to %struct.redisObject**, !dbg !1049
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1049, !tbaa !617
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !1051
  %53 = load i8*, i8** %52, align 8, !dbg !1051, !tbaa !765
  br i1 %38, label %103, label %54, !dbg !1053

; <label>:54:                                     ; preds = %47
  %55 = load i8, i8* %39, align 1, !dbg !1057, !tbaa !405
  %56 = trunc i8 %55 to i3, !dbg !1059
  switch i3 %56, label %71 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %63
    i3 3, label %66
    i3 -4, label %69
  ], !dbg !1059

; <label>:57:                                     ; preds = %54
  %58 = lshr i8 %55, 3, !dbg !1060
  %59 = zext i8 %58 to i64, !dbg !1060
  br label %71, !dbg !1061

; <label>:60:                                     ; preds = %54
  %61 = load i8, i8* %40, align 1, !dbg !1062, !tbaa !405
  %62 = zext i8 %61 to i64, !dbg !1063
  br label %71, !dbg !1064

; <label>:63:                                     ; preds = %54
  %64 = load i16, i16* %42, align 1, !dbg !1065, !tbaa !789
  %65 = zext i16 %64 to i64, !dbg !1066
  br label %71, !dbg !1067

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %44, align 1, !dbg !1068, !tbaa !794
  %68 = zext i32 %67 to i64, !dbg !1069
  br label %71, !dbg !1070

; <label>:69:                                     ; preds = %54
  %70 = load i64, i64* %46, align 1, !dbg !1071, !tbaa !798
  br label %71, !dbg !1072

; <label>:71:                                     ; preds = %54, %57, %60, %63, %66, %69
  %72 = phi i64 [ %70, %69 ], [ %68, %66 ], [ %65, %63 ], [ %62, %60 ], [ %59, %57 ], [ 0, %54 ], !dbg !1073
  %73 = trunc i64 %72 to i32, !dbg !1074
  %74 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !1077
  %75 = load i8, i8* %74, align 1, !dbg !1077, !tbaa !405
  %76 = trunc i8 %75 to i3, !dbg !1079
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !1079

; <label>:77:                                     ; preds = %71
  %78 = lshr i8 %75, 3, !dbg !1080
  %79 = zext i8 %78 to i64, !dbg !1080
  br label %98, !dbg !1081

; <label>:80:                                     ; preds = %71
  %81 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !1082
  %82 = load i8, i8* %81, align 1, !dbg !1083, !tbaa !405
  %83 = zext i8 %82 to i64, !dbg !1082
  br label %98, !dbg !1084

; <label>:84:                                     ; preds = %71
  %85 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !1085
  %86 = bitcast i8* %85 to i16*, !dbg !1086
  %87 = load i16, i16* %86, align 1, !dbg !1086, !tbaa !789
  %88 = zext i16 %87 to i64, !dbg !1085
  br label %98, !dbg !1087

; <label>:89:                                     ; preds = %71
  %90 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !1088
  %91 = bitcast i8* %90 to i32*, !dbg !1089
  %92 = load i32, i32* %91, align 1, !dbg !1089, !tbaa !794
  %93 = zext i32 %92 to i64, !dbg !1088
  br label %98, !dbg !1090

; <label>:94:                                     ; preds = %71
  %95 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !1091
  %96 = bitcast i8* %95 to i64*, !dbg !1092
  %97 = load i64, i64* %96, align 1, !dbg !1092, !tbaa !798
  br label %98, !dbg !1093

; <label>:98:                                     ; preds = %71, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %71 ], !dbg !1094
  %100 = trunc i64 %99 to i32, !dbg !1095
  %101 = tail call i32 @stringmatchlen(i8* nonnull %31, i32 %73, i8* nonnull %53, i32 %100, i32 0) #7, !dbg !1096
  %102 = icmp eq i32 %101, 0, !dbg !1096
  br i1 %102, label %105, label %103, !dbg !1097

; <label>:103:                                    ; preds = %98, %47
  tail call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %51) #7, !dbg !1098
  %104 = add nsw i64 %49, 1, !dbg !1100
  br label %105, !dbg !1101

; <label>:105:                                    ; preds = %98, %103
  %106 = phi i64 [ %104, %103 ], [ %49, %98 ], !dbg !1102
  %107 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #7, !dbg !1045
  %108 = icmp eq %struct.dictEntry* %107, null, !dbg !1047
  br i1 %108, label %109, label %47, !dbg !1048, !llvm.loop !1103

; <label>:109:                                    ; preds = %105, %30
  %110 = phi i64 [ 0, %30 ], [ %106, %105 ], !dbg !1105
  tail call void @dictReleaseIterator(%struct.dictIterator* %33) #7, !dbg !1106
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %34, i64 %110) #7, !dbg !1107
  br label %154, !dbg !1108

; <label>:111:                                    ; preds = %18
  %112 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !1109
  %113 = icmp eq i32 %112, 0, !dbg !1109
  %114 = icmp sgt i32 %4, 1, !dbg !1110
  %115 = and i1 %114, %113, !dbg !1111
  br i1 %115, label %116, label %144, !dbg !1111

; <label>:116:                                    ; preds = %111
  %117 = shl i32 %4, 1, !dbg !1112
  %118 = add i32 %117, -4, !dbg !1112
  %119 = sext i32 %118 to i64, !dbg !1113
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %119) #7, !dbg !1114
  %120 = load i32, i32* %3, align 8, !dbg !1116, !tbaa !860
  %121 = icmp sgt i32 %120, 2, !dbg !1117
  br i1 %121, label %122, label %154, !dbg !1118

; <label>:122:                                    ; preds = %116, %138
  %123 = phi i64 [ %140, %138 ], [ 2, %116 ]
  %124 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !1119, !tbaa !385
  %125 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1120, !tbaa !864
  %126 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %125, i64 %123, !dbg !1121
  %127 = bitcast %struct.redisObject** %126 to i8**, !dbg !1121
  %128 = load i8*, i8** %127, align 8, !dbg !1121, !tbaa !412
  %129 = tail call i8* @dictFetchValue(%struct.dict* %124, i8* %128) #7, !dbg !1122
  %130 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1123, !tbaa !864
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %123, !dbg !1124
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !1124, !tbaa !412
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %132) #7, !dbg !1125
  %133 = icmp eq i8* %129, null, !dbg !1126
  br i1 %133, label %138, label %134, !dbg !1126

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %129, i64 40, !dbg !1128
  %136 = bitcast i8* %135 to i64*, !dbg !1128
  %137 = load i64, i64* %136, align 8, !dbg !1128, !tbaa !359
  br label %138, !dbg !1126

; <label>:138:                                    ; preds = %122, %134
  %139 = phi i64 [ %137, %134 ], [ 0, %122 ], !dbg !1126
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %139) #7, !dbg !1129
  %140 = add nuw nsw i64 %123, 1, !dbg !1130
  %141 = load i32, i32* %3, align 8, !dbg !1116, !tbaa !860
  %142 = sext i32 %141 to i64, !dbg !1117
  %143 = icmp slt i64 %140, %142, !dbg !1117
  br i1 %143, label %122, label %154, !dbg !1118, !llvm.loop !1131

; <label>:144:                                    ; preds = %111
  %145 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !1133
  %146 = icmp ne i32 %145, 0, !dbg !1133
  %147 = xor i1 %5, true, !dbg !1135
  %148 = or i1 %146, %147, !dbg !1135
  br i1 %148, label %153, label %149, !dbg !1135

; <label>:149:                                    ; preds = %144
  %150 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !1136, !tbaa !514
  %151 = getelementptr inbounds %struct.list, %struct.list* %150, i64 0, i32 5, !dbg !1136
  %152 = load i64, i64* %151, align 8, !dbg !1136, !tbaa !359
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %152) #7, !dbg !1138
  br label %154, !dbg !1139

; <label>:153:                                    ; preds = %144
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #7, !dbg !1140
  br label %154

; <label>:154:                                    ; preds = %138, %116, %109, %149, %153, %15
  ret void, !dbg !1142
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/pubsub.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !23, !33, !43}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !9, line: 51, size: 24, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !17, !18, !19}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !8, file: !9, line: 52, baseType: !12, size: 8)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !8, file: !9, line: 53, baseType: !12, size: 8, offset: 8)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !8, file: !9, line: 54, baseType: !16, size: 8, offset: 16)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !8, file: !9, line: 55, baseType: !20, offset: 24)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: -1)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !9, line: 57, size: 40, elements: !25)
!25 = !{!26, !30, !31, !32}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !24, file: !9, line: 58, baseType: !27, size: 16)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !24, file: !9, line: 59, baseType: !27, size: 16, offset: 16)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !9, line: 60, baseType: !16, size: 8, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !24, file: !9, line: 61, baseType: !20, offset: 40)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !9, line: 63, size: 72, elements: !35)
!35 = !{!36, !40, !41, !42}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !34, file: !9, line: 64, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 48, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !34, file: !9, line: 65, baseType: !37, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !9, line: 66, baseType: !16, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !34, file: !9, line: 67, baseType: !20, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !9, line: 69, size: 136, elements: !45)
!45 = !{!46, !50, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !44, file: !9, line: 70, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 60, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !15, line: 105, baseType: !49)
!49 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !44, file: !9, line: 71, baseType: !47, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !9, line: 72, baseType: !16, size: 8, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !44, file: !9, line: 73, baseType: !20, offset: 136)
!53 = !{i32 2, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!57 = distinct !DISubprogram(name: "freePubsubPattern", scope: !1, file: !1, line: 36, type: !58, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !4}
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "p", arg: 1, scope: !57, file: !1, line: 36, type: !4)
!62 = !DILocalVariable(name: "pat", scope: !57, file: !1, line: 37, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "pubsubPattern", file: !65, line: 1303, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pubsubPattern", file: !65, line: 1300, size: 128, elements: !67)
!67 = !{!68, !310}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !66, file: !65, line: 1301, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !65, line: 780, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !65, line: 723, size: 135360, elements: !72)
!72 = !{!73, !74, !76, !179, !189, !191, !196, !197, !198, !199, !201, !225, !226, !227, !228, !229, !230, !232, !233, !236, !237, !238, !239, !240, !241, !242, !243, !248, !249, !250, !251, !252, !253, !254, !255, !259, !260, !264, !265, !281, !282, !299, !300, !301, !302, !303, !304, !305, !306}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !71, file: !65, line: 724, baseType: !47, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !71, file: !65, line: 725, baseType: !75, size: 32, offset: 64)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !71, file: !65, line: 726, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !65, line: 656, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !65, line: 647, size: 512, elements: !80)
!80 = !{!81, !145, !146, !147, !148, !149, !150, !152}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !79, file: !65, line: 648, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !84, line: 82, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !84, line: 76, size: 768, elements: !86)
!86 = !{!87, !112, !113, !143, !144}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !84, line: 77, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !84, line: 65, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !84, line: 58, size: 384, elements: !91)
!91 = !{!92, !98, !102, !103, !107, !111}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !90, file: !84, line: 59, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!47, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !90, file: !84, line: 60, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!4, !4, !96}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !90, file: !84, line: 61, baseType: !99, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !90, file: !84, line: 62, baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!75, !4, !96, !96}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !90, file: !84, line: 63, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !4, !4}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !90, file: !84, line: 64, baseType: !108, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !85, file: !84, line: 78, baseType: !4, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !85, file: !84, line: 79, baseType: !114, size: 512, offset: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 512, elements: !141)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !84, line: 74, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !84, line: 69, size: 256, elements: !117)
!117 = !{!118, !138, !139, !140}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !116, file: !84, line: 70, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !84, line: 56, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !84, line: 47, size: 192, elements: !123)
!123 = !{!124, !125, !136}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !122, file: !84, line: 48, baseType: !4, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !122, file: !84, line: 54, baseType: !126, size: 64, offset: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !84, line: 49, size: 64, elements: !127)
!127 = !{!128, !129, !130, !134}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !126, file: !84, line: 50, baseType: !4, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !126, file: !84, line: 51, baseType: !47, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !126, file: !84, line: 52, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 56, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !15, line: 103, baseType: !133)
!133 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !126, file: !84, line: 53, baseType: !135, size: 64)
!135 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !84, line: 55, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !116, file: !84, line: 71, baseType: !49, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !116, file: !84, line: 72, baseType: !49, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !116, file: !84, line: 73, baseType: !49, size: 64, offset: 192)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !85, file: !84, line: 80, baseType: !133, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !85, file: !84, line: 81, baseType: !49, size: 64, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !79, file: !65, line: 649, baseType: !82, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !79, file: !65, line: 650, baseType: !82, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !79, file: !65, line: 651, baseType: !82, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !79, file: !65, line: 652, baseType: !82, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !79, file: !65, line: 653, baseType: !75, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !79, file: !65, line: 654, baseType: !151, size: 64, offset: 384)
!151 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !79, file: !65, line: 655, baseType: !153, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !155, line: 54, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !155, line: 47, size: 384, elements: !157)
!157 = !{!158, !167, !168, !172, !174, !178}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !156, file: !155, line: 48, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !155, line: 40, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !155, line: 36, size: 192, elements: !162)
!162 = !{!163, !165, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !161, file: !155, line: 37, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !155, line: 38, baseType: !164, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !161, file: !155, line: 39, baseType: !4, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !156, file: !155, line: 49, baseType: !159, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !156, file: !155, line: 50, baseType: !169, size: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!4, !4}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !156, file: !155, line: 51, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !156, file: !155, line: 52, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!75, !4, !4}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !156, file: !155, line: 53, baseType: !49, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !65, line: 727, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !65, line: 622, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !65, line: 614, size: 128, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !65, line: 615, baseType: !39, size: 4, flags: DIFlagBitField, extraData: i64 0)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !182, file: !65, line: 616, baseType: !39, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !182, file: !65, line: 617, baseType: !39, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !182, file: !65, line: 620, baseType: !75, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !182, file: !65, line: 621, baseType: !4, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !71, file: !65, line: 728, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !9, line: 43, baseType: !5)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !71, file: !65, line: 729, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 40, baseType: !194)
!193 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !195, line: 129, baseType: !49)
!195 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !71, file: !65, line: 730, baseType: !190, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !71, file: !65, line: 734, baseType: !192, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !71, file: !65, line: 735, baseType: !75, size: 32, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !71, file: !65, line: 736, baseType: !200, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !71, file: !65, line: 737, baseType: !202, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !65, line: 1307, size: 640, elements: !204)
!204 = !{!205, !206, !211, !212, !213, !214, !220, !221, !222, !223, !224}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !65, line: 1308, baseType: !5, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !203, file: !65, line: 1309, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !65, line: 1305, baseType: !209)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !69}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !203, file: !65, line: 1310, baseType: !75, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !203, file: !65, line: 1311, baseType: !5, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !65, line: 1312, baseType: !75, size: 32, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !203, file: !65, line: 1315, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !65, line: 1306, baseType: !217)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !202, !200, !75, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !203, file: !65, line: 1317, baseType: !75, size: 32, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !203, file: !65, line: 1318, baseType: !75, size: 32, offset: 416)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !203, file: !65, line: 1319, baseType: !75, size: 32, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !203, file: !65, line: 1320, baseType: !151, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !203, file: !65, line: 1320, baseType: !151, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !71, file: !65, line: 737, baseType: !202, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !71, file: !65, line: 738, baseType: !75, size: 32, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !71, file: !65, line: 739, baseType: !75, size: 32, offset: 800)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !71, file: !65, line: 740, baseType: !133, size: 64, offset: 832)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !71, file: !65, line: 741, baseType: !153, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !71, file: !65, line: 742, baseType: !231, size: 64, offset: 960)
!231 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !71, file: !65, line: 743, baseType: !192, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !71, file: !65, line: 745, baseType: !234, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !235, line: 34, baseType: !133)
!235 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!236 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !71, file: !65, line: 746, baseType: !234, size: 64, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !71, file: !65, line: 747, baseType: !234, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !65, line: 748, baseType: !75, size: 32, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !71, file: !65, line: 749, baseType: !75, size: 32, offset: 1312)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !71, file: !65, line: 750, baseType: !75, size: 32, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !71, file: !65, line: 751, baseType: !75, size: 32, offset: 1376)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !71, file: !65, line: 752, baseType: !75, size: 32, offset: 1408)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !71, file: !65, line: 753, baseType: !244, size: 64, offset: 1472)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !245, line: 173, baseType: !246)
!245 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !195, line: 100, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !195, line: 44, baseType: !133)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !71, file: !65, line: 754, baseType: !244, size: 64, offset: 1536)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !71, file: !65, line: 755, baseType: !190, size: 64, offset: 1600)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !71, file: !65, line: 756, baseType: !151, size: 64, offset: 1664)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !71, file: !65, line: 757, baseType: !151, size: 64, offset: 1728)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !71, file: !65, line: 758, baseType: !151, size: 64, offset: 1792)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !71, file: !65, line: 759, baseType: !151, size: 64, offset: 1856)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !71, file: !65, line: 760, baseType: !151, size: 64, offset: 1920)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !71, file: !65, line: 763, baseType: !256, size: 328, offset: 1984)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 328, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 41)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !71, file: !65, line: 764, baseType: !75, size: 32, offset: 2336)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !71, file: !65, line: 765, baseType: !261, size: 368, offset: 2368)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 368, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 46)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !71, file: !65, line: 766, baseType: !75, size: 32, offset: 2752)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !71, file: !65, line: 767, baseType: !266, size: 256, offset: 2816)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !65, line: 673, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !65, line: 665, size: 256, elements: !268)
!268 = !{!269, !277, !278, !279, !280}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !267, file: !65, line: 666, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !65, line: 663, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !65, line: 659, size: 192, elements: !273)
!273 = !{!274, !275, !276}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !272, file: !65, line: 660, baseType: !200, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !272, file: !65, line: 661, baseType: !75, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !272, file: !65, line: 662, baseType: !202, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !267, file: !65, line: 667, baseType: !75, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !267, file: !65, line: 668, baseType: !75, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !267, file: !65, line: 671, baseType: !75, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !267, file: !65, line: 672, baseType: !234, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !71, file: !65, line: 768, baseType: !75, size: 32, offset: 3072)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !71, file: !65, line: 769, baseType: !283, size: 704, offset: 3136)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !65, line: 703, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !65, line: 677, size: 704, elements: !285)
!285 = !{!286, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !284, file: !65, line: 679, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !65, line: 52, baseType: !151)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !284, file: !65, line: 683, baseType: !82, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !284, file: !65, line: 685, baseType: !180, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !284, file: !65, line: 689, baseType: !192, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !284, file: !65, line: 690, baseType: !180, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !284, file: !65, line: 691, baseType: !180, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !284, file: !65, line: 692, baseType: !287, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !284, file: !65, line: 692, baseType: !287, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !284, file: !65, line: 693, baseType: !75, size: 32, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !284, file: !65, line: 696, baseType: !75, size: 32, offset: 544)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !284, file: !65, line: 697, baseType: !151, size: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !284, file: !65, line: 700, baseType: !4, size: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !71, file: !65, line: 770, baseType: !151, size: 64, offset: 3840)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !71, file: !65, line: 771, baseType: !153, size: 64, offset: 3904)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !71, file: !65, line: 772, baseType: !82, size: 64, offset: 3968)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !71, file: !65, line: 773, baseType: !153, size: 64, offset: 4032)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !71, file: !65, line: 774, baseType: !190, size: 64, offset: 4096)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !71, file: !65, line: 775, baseType: !159, size: 64, offset: 4160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !71, file: !65, line: 778, baseType: !75, size: 32, offset: 4224)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !71, file: !65, line: 779, baseType: !307, size: 131072, offset: 4256)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 131072, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 16384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !66, file: !65, line: 1302, baseType: !180, size: 64, offset: 64)
!311 = !DILocation(line: 36, column: 30, scope: !57)
!312 = !DILocation(line: 37, column: 20, scope: !57)
!313 = !DILocation(line: 39, column: 23, scope: !57)
!314 = !{!315, !316, i64 8}
!315 = !{!"pubsubPattern", !316, i64 0, !316, i64 8}
!316 = !{!"any pointer", !317, i64 0}
!317 = !{!"omnipotent char", !318, i64 0}
!318 = !{!"Simple C/C++ TBAA"}
!319 = !DILocation(line: 39, column: 5, scope: !57)
!320 = !DILocation(line: 40, column: 5, scope: !57)
!321 = !DILocation(line: 41, column: 1, scope: !57)
!322 = distinct !DISubprogram(name: "listMatchPubsubPattern", scope: !1, file: !1, line: 43, type: !176, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !323)
!323 = !{!324, !325, !326, !327}
!324 = !DILocalVariable(name: "a", arg: 1, scope: !322, file: !1, line: 43, type: !4)
!325 = !DILocalVariable(name: "b", arg: 2, scope: !322, file: !1, line: 43, type: !4)
!326 = !DILocalVariable(name: "pa", scope: !322, file: !1, line: 44, type: !63)
!327 = !DILocalVariable(name: "pb", scope: !322, file: !1, line: 44, type: !63)
!328 = !DILocation(line: 43, column: 34, scope: !322)
!329 = !DILocation(line: 43, column: 43, scope: !322)
!330 = !DILocation(line: 46, column: 17, scope: !322)
!331 = !{!315, !316, i64 0}
!332 = !DILocation(line: 46, column: 31, scope: !322)
!333 = !DILocation(line: 46, column: 24, scope: !322)
!334 = !DILocation(line: 46, column: 39, scope: !322)
!335 = !DILocation(line: 44, column: 29, scope: !322)
!336 = !DILocation(line: 44, column: 20, scope: !322)
!337 = !DILocation(line: 47, column: 36, scope: !322)
!338 = !DILocation(line: 47, column: 48, scope: !322)
!339 = !DILocation(line: 47, column: 13, scope: !322)
!340 = !DILocation(line: 46, column: 5, scope: !322)
!341 = distinct !DISubprogram(name: "clientSubscriptionsCount", scope: !1, file: !1, line: 51, type: !342, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{!75, !69}
!344 = !{!345}
!345 = !DILocalVariable(name: "c", arg: 1, scope: !341, file: !1, line: 51, type: !69)
!346 = !DILocation(line: 51, column: 38, scope: !341)
!347 = !DILocation(line: 52, column: 12, scope: !341)
!348 = !{!349, !316, i64 496}
!349 = !{!"client", !350, i64 0, !351, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !350, i64 40, !316, i64 48, !350, i64 56, !351, i64 64, !316, i64 72, !316, i64 80, !316, i64 88, !351, i64 96, !351, i64 100, !350, i64 104, !316, i64 112, !352, i64 120, !350, i64 128, !350, i64 136, !350, i64 144, !350, i64 152, !351, i64 160, !351, i64 164, !351, i64 168, !351, i64 172, !351, i64 176, !350, i64 184, !350, i64 192, !316, i64 200, !352, i64 208, !352, i64 216, !352, i64 224, !352, i64 232, !352, i64 240, !317, i64 248, !351, i64 292, !317, i64 296, !351, i64 344, !353, i64 352, !351, i64 384, !354, i64 392, !352, i64 480, !316, i64 488, !316, i64 496, !316, i64 504, !316, i64 512, !316, i64 520, !351, i64 528, !317, i64 532}
!350 = !{!"long", !317, i64 0}
!351 = !{!"int", !317, i64 0}
!352 = !{!"long long", !317, i64 0}
!353 = !{!"multiState", !316, i64 0, !351, i64 8, !351, i64 12, !351, i64 16, !350, i64 24}
!354 = !{!"blockingState", !352, i64 0, !316, i64 8, !316, i64 16, !350, i64 24, !316, i64 32, !316, i64 40, !352, i64 48, !352, i64 56, !351, i64 64, !351, i64 68, !352, i64 72, !316, i64 80}
!355 = !{!356, !350, i64 24}
!356 = !{!"dictht", !316, i64 0, !350, i64 8, !350, i64 16, !350, i64 24}
!357 = !DILocation(line: 53, column: 12, scope: !341)
!358 = !{!349, !316, i64 504}
!359 = !{!360, !350, i64 40}
!360 = !{!"list", !316, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !350, i64 40}
!361 = !DILocation(line: 52, column: 40, scope: !341)
!362 = !DILocation(line: 52, column: 5, scope: !341)
!363 = distinct !DISubprogram(name: "pubsubSubscribeChannel", scope: !1, file: !1, line: 58, type: !364, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!75, !69, !180}
!366 = !{!367, !368, !369, !370, !371}
!367 = !DILocalVariable(name: "c", arg: 1, scope: !363, file: !1, line: 58, type: !69)
!368 = !DILocalVariable(name: "channel", arg: 2, scope: !363, file: !1, line: 58, type: !180)
!369 = !DILocalVariable(name: "de", scope: !363, file: !1, line: 59, type: !120)
!370 = !DILocalVariable(name: "clients", scope: !363, file: !1, line: 60, type: !153)
!371 = !DILocalVariable(name: "retval", scope: !363, file: !1, line: 61, type: !75)
!372 = !DILocation(line: 58, column: 36, scope: !363)
!373 = !DILocation(line: 58, column: 45, scope: !363)
!374 = !DILocation(line: 60, column: 11, scope: !363)
!375 = !DILocation(line: 61, column: 9, scope: !363)
!376 = !DILocation(line: 64, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !363, file: !1, line: 64, column: 9)
!378 = !DILocation(line: 64, column: 36, scope: !377)
!379 = !DILocation(line: 64, column: 9, scope: !377)
!380 = !DILocation(line: 64, column: 50, scope: !377)
!381 = !DILocation(line: 64, column: 9, scope: !363)
!382 = !DILocation(line: 66, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !1, line: 64, column: 62)
!384 = !DILocation(line: 68, column: 30, scope: !383)
!385 = !{!386, !316, i64 2904}
!386 = !{!"redisServer", !351, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !351, i64 32, !351, i64 36, !351, i64 40, !316, i64 48, !316, i64 56, !316, i64 64, !316, i64 72, !351, i64 80, !351, i64 84, !351, i64 88, !351, i64 92, !316, i64 96, !316, i64 104, !351, i64 112, !351, i64 116, !317, i64 120, !351, i64 164, !350, i64 168, !351, i64 176, !316, i64 184, !316, i64 192, !316, i64 200, !317, i64 208, !351, i64 216, !351, i64 220, !317, i64 224, !351, i64 352, !316, i64 360, !351, i64 368, !317, i64 372, !351, i64 436, !351, i64 440, !317, i64 444, !351, i64 508, !316, i64 512, !316, i64 520, !316, i64 528, !316, i64 536, !316, i64 544, !316, i64 552, !316, i64 560, !351, i64 568, !352, i64 576, !317, i64 584, !316, i64 840, !350, i64 848, !351, i64 856, !351, i64 860, !350, i64 864, !350, i64 872, !350, i64 880, !350, i64 888, !316, i64 896, !316, i64 904, !316, i64 912, !316, i64 920, !316, i64 928, !316, i64 936, !316, i64 944, !316, i64 952, !316, i64 960, !316, i64 968, !316, i64 976, !316, i64 984, !316, i64 992, !350, i64 1000, !352, i64 1008, !352, i64 1016, !352, i64 1024, !387, i64 1032, !352, i64 1040, !352, i64 1048, !352, i64 1056, !352, i64 1064, !352, i64 1072, !352, i64 1080, !352, i64 1088, !352, i64 1096, !352, i64 1104, !350, i64 1112, !352, i64 1120, !387, i64 1128, !352, i64 1136, !352, i64 1144, !352, i64 1152, !352, i64 1160, !316, i64 1168, !352, i64 1176, !352, i64 1184, !350, i64 1192, !388, i64 1200, !352, i64 1240, !352, i64 1248, !350, i64 1256, !350, i64 1264, !317, i64 1272, !351, i64 1728, !351, i64 1732, !351, i64 1736, !351, i64 1740, !351, i64 1744, !350, i64 1752, !351, i64 1760, !351, i64 1764, !351, i64 1768, !351, i64 1772, !350, i64 1776, !350, i64 1784, !351, i64 1792, !351, i64 1796, !351, i64 1800, !351, i64 1804, !317, i64 1808, !351, i64 1880, !351, i64 1884, !316, i64 1888, !351, i64 1896, !351, i64 1900, !350, i64 1904, !350, i64 1912, !350, i64 1920, !350, i64 1928, !351, i64 1936, !351, i64 1940, !316, i64 1944, !316, i64 1952, !351, i64 1960, !351, i64 1964, !350, i64 1968, !350, i64 1976, !350, i64 1984, !350, i64 1992, !351, i64 2000, !350, i64 2008, !351, i64 2016, !351, i64 2020, !351, i64 2024, !351, i64 2028, !351, i64 2032, !351, i64 2036, !351, i64 2040, !351, i64 2044, !351, i64 2048, !351, i64 2052, !351, i64 2056, !351, i64 2060, !351, i64 2064, !316, i64 2072, !352, i64 2080, !352, i64 2088, !351, i64 2096, !316, i64 2104, !351, i64 2112, !316, i64 2120, !351, i64 2128, !351, i64 2132, !350, i64 2136, !350, i64 2144, !350, i64 2152, !350, i64 2160, !351, i64 2168, !351, i64 2172, !351, i64 2176, !351, i64 2180, !351, i64 2184, !351, i64 2188, !317, i64 2192, !389, i64 2200, !390, i64 2224, !316, i64 2240, !351, i64 2248, !316, i64 2256, !351, i64 2264, !317, i64 2268, !317, i64 2309, !352, i64 2352, !352, i64 2360, !351, i64 2368, !351, i64 2372, !316, i64 2376, !352, i64 2384, !352, i64 2392, !352, i64 2400, !352, i64 2408, !350, i64 2416, !350, i64 2424, !351, i64 2432, !351, i64 2436, !351, i64 2440, !351, i64 2444, !351, i64 2448, !316, i64 2456, !316, i64 2464, !351, i64 2472, !351, i64 2476, !316, i64 2480, !316, i64 2488, !351, i64 2496, !351, i64 2500, !350, i64 2504, !350, i64 2512, !350, i64 2520, !351, i64 2528, !351, i64 2532, !316, i64 2536, !350, i64 2544, !351, i64 2552, !351, i64 2556, !351, i64 2560, !350, i64 2568, !351, i64 2576, !351, i64 2580, !351, i64 2584, !316, i64 2592, !317, i64 2600, !352, i64 2648, !351, i64 2656, !316, i64 2664, !316, i64 2672, !351, i64 2680, !316, i64 2688, !351, i64 2696, !351, i64 2700, !352, i64 2704, !351, i64 2712, !351, i64 2716, !351, i64 2720, !351, i64 2724, !352, i64 2728, !351, i64 2736, !317, i64 2740, !316, i64 2768, !316, i64 2776, !351, i64 2784, !351, i64 2788, !351, i64 2792, !351, i64 2796, !350, i64 2800, !350, i64 2808, !350, i64 2816, !350, i64 2824, !350, i64 2832, !350, i64 2840, !350, i64 2848, !350, i64 2856, !351, i64 2864, !351, i64 2868, !350, i64 2872, !350, i64 2880, !351, i64 2888, !352, i64 2896, !316, i64 2904, !316, i64 2912, !351, i64 2920, !351, i64 2924, !352, i64 2928, !316, i64 2936, !316, i64 2944, !351, i64 2952, !351, i64 2956, !351, i64 2960, !351, i64 2964, !316, i64 2968, !351, i64 2976, !351, i64 2980, !351, i64 2984, !316, i64 2992, !316, i64 3000, !316, i64 3008, !316, i64 3016, !352, i64 3024, !352, i64 3032, !352, i64 3040, !351, i64 3048, !351, i64 3052, !351, i64 3056, !351, i64 3060, !351, i64 3064, !351, i64 3068, !351, i64 3072, !351, i64 3076, !351, i64 3080, !351, i64 3084, !351, i64 3088, !352, i64 3096, !316, i64 3104, !316, i64 3112, !316, i64 3120, !351, i64 3128, !351, i64 3132, !351, i64 3136, !350, i64 3144, !316, i64 3152, !316, i64 3160, !316, i64 3168}
!387 = !{!"double", !317, i64 0}
!388 = !{!"malloc_stats", !350, i64 0, !350, i64 8, !350, i64 16, !350, i64 24, !350, i64 32}
!389 = !{!"", !351, i64 0, !350, i64 8, !352, i64 16}
!390 = !{!"redisOpArray", !316, i64 0, !351, i64 8}
!391 = !DILocation(line: 68, column: 14, scope: !383)
!392 = !DILocation(line: 59, column: 16, scope: !363)
!393 = !DILocation(line: 69, column: 16, scope: !394)
!394 = distinct !DILexicalBlock(scope: !383, file: !1, line: 69, column: 13)
!395 = !DILocation(line: 69, column: 13, scope: !383)
!396 = !DILocation(line: 70, column: 23, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !1, line: 69, column: 25)
!398 = !DILocation(line: 71, column: 28, scope: !397)
!399 = !DILocation(line: 71, column: 52, scope: !397)
!400 = !DILocation(line: 71, column: 13, scope: !397)
!401 = !DILocation(line: 72, column: 13, scope: !397)
!402 = !DILocation(line: 73, column: 9, scope: !397)
!403 = !DILocation(line: 74, column: 23, scope: !404)
!404 = distinct !DILexicalBlock(scope: !394, file: !1, line: 73, column: 16)
!405 = !{!317, !317, i64 0}
!406 = !DILocation(line: 0, scope: !404)
!407 = !DILocation(line: 76, column: 33, scope: !383)
!408 = !DILocation(line: 76, column: 9, scope: !383)
!409 = !DILocation(line: 77, column: 5, scope: !383)
!410 = !DILocation(line: 0, scope: !363)
!411 = !DILocation(line: 79, column: 16, scope: !363)
!412 = !{!316, !316, i64 0}
!413 = !DILocation(line: 79, column: 5, scope: !363)
!414 = !DILocation(line: 80, column: 23, scope: !363)
!415 = !{!416, !316, i64 264}
!416 = !{!"sharedObjectsStruct", !316, i64 0, !316, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !316, i64 40, !316, i64 48, !316, i64 56, !316, i64 64, !316, i64 72, !316, i64 80, !316, i64 88, !316, i64 96, !316, i64 104, !316, i64 112, !316, i64 120, !316, i64 128, !316, i64 136, !316, i64 144, !316, i64 152, !316, i64 160, !316, i64 168, !316, i64 176, !316, i64 184, !316, i64 192, !316, i64 200, !316, i64 208, !316, i64 216, !316, i64 224, !316, i64 232, !316, i64 240, !316, i64 248, !316, i64 256, !316, i64 264, !316, i64 272, !316, i64 280, !316, i64 288, !316, i64 296, !316, i64 304, !316, i64 312, !316, i64 320, !316, i64 328, !316, i64 336, !316, i64 344, !316, i64 352, !316, i64 360, !317, i64 368, !317, i64 448, !317, i64 80448, !317, i64 80704, !316, i64 80960, !316, i64 80968}
!417 = !DILocation(line: 80, column: 5, scope: !363)
!418 = !DILocation(line: 81, column: 5, scope: !363)
!419 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !420)
!420 = distinct !DILocation(line: 82, column: 24, scope: !363)
!421 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !420)
!422 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !420)
!423 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !420)
!424 = !DILocation(line: 82, column: 24, scope: !363)
!425 = !DILocation(line: 82, column: 5, scope: !363)
!426 = !DILocation(line: 83, column: 5, scope: !363)
!427 = distinct !DISubprogram(name: "pubsubUnsubscribeChannel", scope: !1, file: !1, line: 88, type: !428, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!75, !69, !180, !75}
!430 = !{!431, !432, !433, !434, !435, !436, !437}
!431 = !DILocalVariable(name: "c", arg: 1, scope: !427, file: !1, line: 88, type: !69)
!432 = !DILocalVariable(name: "channel", arg: 2, scope: !427, file: !1, line: 88, type: !180)
!433 = !DILocalVariable(name: "notify", arg: 3, scope: !427, file: !1, line: 88, type: !75)
!434 = !DILocalVariable(name: "de", scope: !427, file: !1, line: 89, type: !120)
!435 = !DILocalVariable(name: "clients", scope: !427, file: !1, line: 90, type: !153)
!436 = !DILocalVariable(name: "ln", scope: !427, file: !1, line: 91, type: !159)
!437 = !DILocalVariable(name: "retval", scope: !427, file: !1, line: 92, type: !75)
!438 = !DILocation(line: 88, column: 38, scope: !427)
!439 = !DILocation(line: 88, column: 47, scope: !427)
!440 = !DILocation(line: 88, column: 60, scope: !427)
!441 = !DILocation(line: 92, column: 9, scope: !427)
!442 = !DILocation(line: 95, column: 5, scope: !427)
!443 = !DILocation(line: 97, column: 23, scope: !444)
!444 = distinct !DILexicalBlock(scope: !427, file: !1, line: 97, column: 9)
!445 = !DILocation(line: 97, column: 39, scope: !444)
!446 = !DILocation(line: 97, column: 9, scope: !444)
!447 = !DILocation(line: 97, column: 48, scope: !444)
!448 = !DILocation(line: 97, column: 9, scope: !427)
!449 = !DILocation(line: 100, column: 30, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 97, column: 60)
!451 = !DILocation(line: 100, column: 14, scope: !450)
!452 = !DILocation(line: 89, column: 16, scope: !427)
!453 = !DILocation(line: 101, column: 9, scope: !450)
!454 = !DILocation(line: 102, column: 19, scope: !450)
!455 = !DILocation(line: 90, column: 11, scope: !427)
!456 = !DILocation(line: 103, column: 36, scope: !450)
!457 = !DILocation(line: 103, column: 14, scope: !450)
!458 = !DILocation(line: 91, column: 15, scope: !427)
!459 = !DILocation(line: 104, column: 9, scope: !450)
!460 = !DILocation(line: 105, column: 9, scope: !450)
!461 = !DILocation(line: 106, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !450, file: !1, line: 106, column: 13)
!463 = !DILocation(line: 106, column: 33, scope: !462)
!464 = !DILocation(line: 106, column: 13, scope: !450)
!465 = !DILocation(line: 110, column: 31, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !1, line: 106, column: 39)
!467 = !DILocation(line: 110, column: 13, scope: !466)
!468 = !DILocation(line: 111, column: 9, scope: !466)
!469 = !DILocation(line: 0, scope: !427)
!470 = !DILocation(line: 114, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !427, file: !1, line: 114, column: 9)
!472 = !DILocation(line: 114, column: 9, scope: !427)
!473 = !DILocation(line: 115, column: 20, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 114, column: 17)
!475 = !DILocation(line: 115, column: 9, scope: !474)
!476 = !DILocation(line: 116, column: 27, scope: !474)
!477 = !{!416, !316, i64 272}
!478 = !DILocation(line: 116, column: 9, scope: !474)
!479 = !DILocation(line: 117, column: 9, scope: !474)
!480 = !DILocation(line: 118, column: 28, scope: !474)
!481 = !DILocation(line: 119, column: 24, scope: !474)
!482 = !DILocation(line: 118, column: 56, scope: !474)
!483 = !DILocation(line: 118, column: 9, scope: !474)
!484 = !DILocation(line: 121, column: 5, scope: !474)
!485 = !DILocation(line: 122, column: 5, scope: !427)
!486 = !DILocation(line: 123, column: 5, scope: !427)
!487 = distinct !DISubprogram(name: "pubsubSubscribePattern", scope: !1, file: !1, line: 127, type: !364, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !488)
!488 = !{!489, !490, !491, !492}
!489 = !DILocalVariable(name: "c", arg: 1, scope: !487, file: !1, line: 127, type: !69)
!490 = !DILocalVariable(name: "pattern", arg: 2, scope: !487, file: !1, line: 127, type: !180)
!491 = !DILocalVariable(name: "retval", scope: !487, file: !1, line: 128, type: !75)
!492 = !DILocalVariable(name: "pat", scope: !493, file: !1, line: 132, type: !63)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 130, column: 60)
!494 = distinct !DILexicalBlock(scope: !487, file: !1, line: 130, column: 9)
!495 = !DILocation(line: 127, column: 36, scope: !487)
!496 = !DILocation(line: 127, column: 45, scope: !487)
!497 = !DILocation(line: 128, column: 9, scope: !487)
!498 = !DILocation(line: 130, column: 26, scope: !494)
!499 = !DILocation(line: 130, column: 42, scope: !494)
!500 = !DILocation(line: 130, column: 9, scope: !494)
!501 = !DILocation(line: 130, column: 51, scope: !494)
!502 = !DILocation(line: 130, column: 9, scope: !487)
!503 = !DILocation(line: 133, column: 28, scope: !493)
!504 = !DILocation(line: 133, column: 9, scope: !493)
!505 = !DILocation(line: 134, column: 9, scope: !493)
!506 = !DILocation(line: 135, column: 15, scope: !493)
!507 = !DILocation(line: 132, column: 24, scope: !493)
!508 = !DILocation(line: 136, column: 24, scope: !493)
!509 = !DILocation(line: 136, column: 14, scope: !493)
!510 = !DILocation(line: 136, column: 22, scope: !493)
!511 = !DILocation(line: 137, column: 14, scope: !493)
!512 = !DILocation(line: 137, column: 21, scope: !493)
!513 = !DILocation(line: 138, column: 32, scope: !493)
!514 = !{!386, !316, i64 2912}
!515 = !DILocation(line: 138, column: 9, scope: !493)
!516 = !DILocation(line: 139, column: 5, scope: !493)
!517 = !DILocation(line: 0, scope: !487)
!518 = !DILocation(line: 141, column: 16, scope: !487)
!519 = !DILocation(line: 141, column: 5, scope: !487)
!520 = !DILocation(line: 142, column: 23, scope: !487)
!521 = !{!416, !316, i64 280}
!522 = !DILocation(line: 142, column: 5, scope: !487)
!523 = !DILocation(line: 143, column: 5, scope: !487)
!524 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !525)
!525 = distinct !DILocation(line: 144, column: 24, scope: !487)
!526 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !525)
!527 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !525)
!528 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !525)
!529 = !DILocation(line: 144, column: 24, scope: !487)
!530 = !DILocation(line: 144, column: 5, scope: !487)
!531 = !DILocation(line: 145, column: 5, scope: !487)
!532 = distinct !DISubprogram(name: "pubsubUnsubscribePattern", scope: !1, file: !1, line: 150, type: !428, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !533)
!533 = !{!534, !535, !536, !537, !538, !539}
!534 = !DILocalVariable(name: "c", arg: 1, scope: !532, file: !1, line: 150, type: !69)
!535 = !DILocalVariable(name: "pattern", arg: 2, scope: !532, file: !1, line: 150, type: !180)
!536 = !DILocalVariable(name: "notify", arg: 3, scope: !532, file: !1, line: 150, type: !75)
!537 = !DILocalVariable(name: "ln", scope: !532, file: !1, line: 151, type: !159)
!538 = !DILocalVariable(name: "pat", scope: !532, file: !1, line: 152, type: !64)
!539 = !DILocalVariable(name: "retval", scope: !532, file: !1, line: 153, type: !75)
!540 = !DILocation(line: 150, column: 38, scope: !532)
!541 = !DILocation(line: 150, column: 47, scope: !532)
!542 = !DILocation(line: 150, column: 60, scope: !532)
!543 = !DILocation(line: 152, column: 5, scope: !532)
!544 = !DILocation(line: 153, column: 9, scope: !532)
!545 = !DILocation(line: 155, column: 5, scope: !532)
!546 = !DILocation(line: 156, column: 32, scope: !547)
!547 = distinct !DILexicalBlock(scope: !532, file: !1, line: 156, column: 9)
!548 = !DILocation(line: 156, column: 48, scope: !547)
!549 = !DILocation(line: 156, column: 15, scope: !547)
!550 = !DILocation(line: 151, column: 15, scope: !532)
!551 = !DILocation(line: 156, column: 58, scope: !547)
!552 = !DILocation(line: 156, column: 9, scope: !532)
!553 = !DILocation(line: 158, column: 24, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !1, line: 156, column: 67)
!555 = !DILocation(line: 158, column: 9, scope: !554)
!556 = !DILocation(line: 159, column: 13, scope: !554)
!557 = !DILocation(line: 159, column: 20, scope: !554)
!558 = !DILocation(line: 160, column: 13, scope: !554)
!559 = !DILocation(line: 160, column: 21, scope: !554)
!560 = !DILocation(line: 161, column: 35, scope: !554)
!561 = !DILocation(line: 161, column: 14, scope: !554)
!562 = !DILocation(line: 162, column: 28, scope: !554)
!563 = !DILocation(line: 162, column: 9, scope: !554)
!564 = !DILocation(line: 163, column: 5, scope: !554)
!565 = !DILocation(line: 0, scope: !532)
!566 = !DILocation(line: 165, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !532, file: !1, line: 165, column: 9)
!568 = !DILocation(line: 165, column: 9, scope: !532)
!569 = !DILocation(line: 166, column: 20, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !1, line: 165, column: 17)
!571 = !DILocation(line: 166, column: 9, scope: !570)
!572 = !DILocation(line: 167, column: 27, scope: !570)
!573 = !{!416, !316, i64 288}
!574 = !DILocation(line: 167, column: 9, scope: !570)
!575 = !DILocation(line: 168, column: 9, scope: !570)
!576 = !DILocation(line: 169, column: 28, scope: !570)
!577 = !DILocation(line: 170, column: 24, scope: !570)
!578 = !DILocation(line: 169, column: 56, scope: !570)
!579 = !DILocation(line: 169, column: 9, scope: !570)
!580 = !DILocation(line: 171, column: 5, scope: !570)
!581 = !DILocation(line: 172, column: 5, scope: !532)
!582 = !DILocation(line: 174, column: 1, scope: !532)
!583 = !DILocation(line: 173, column: 5, scope: !532)
!584 = distinct !DISubprogram(name: "pubsubUnsubscribeAllChannels", scope: !1, file: !1, line: 178, type: !585, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!75, !69, !75}
!587 = !{!588, !589, !590, !602, !603, !604}
!588 = !DILocalVariable(name: "c", arg: 1, scope: !584, file: !1, line: 178, type: !69)
!589 = !DILocalVariable(name: "notify", arg: 2, scope: !584, file: !1, line: 178, type: !75)
!590 = !DILocalVariable(name: "di", scope: !584, file: !1, line: 179, type: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !84, line: 95, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !84, line: 88, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !593, file: !84, line: 89, baseType: !82, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !593, file: !84, line: 90, baseType: !133, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !593, file: !84, line: 91, baseType: !75, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !593, file: !84, line: 91, baseType: !75, size: 32, offset: 160)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !593, file: !84, line: 92, baseType: !120, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !593, file: !84, line: 92, baseType: !120, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !593, file: !84, line: 94, baseType: !151, size: 64, offset: 320)
!602 = !DILocalVariable(name: "de", scope: !584, file: !1, line: 180, type: !120)
!603 = !DILocalVariable(name: "count", scope: !584, file: !1, line: 181, type: !75)
!604 = !DILocalVariable(name: "channel", scope: !605, file: !1, line: 184, type: !180)
!605 = distinct !DILexicalBlock(scope: !584, file: !1, line: 183, column: 40)
!606 = !DILocation(line: 178, column: 42, scope: !584)
!607 = !DILocation(line: 178, column: 49, scope: !584)
!608 = !DILocation(line: 179, column: 47, scope: !584)
!609 = !DILocation(line: 179, column: 24, scope: !584)
!610 = !DILocation(line: 179, column: 19, scope: !584)
!611 = !DILocation(line: 181, column: 9, scope: !584)
!612 = !DILocation(line: 183, column: 17, scope: !584)
!613 = !DILocation(line: 180, column: 16, scope: !584)
!614 = !DILocation(line: 183, column: 31, scope: !584)
!615 = !DILocation(line: 183, column: 5, scope: !584)
!616 = !DILocation(line: 184, column: 25, scope: !605)
!617 = !{!618, !316, i64 0}
!618 = !{!"dictEntry", !316, i64 0, !317, i64 8, !316, i64 16}
!619 = !DILocation(line: 184, column: 15, scope: !605)
!620 = !DILocation(line: 186, column: 18, scope: !605)
!621 = !DILocation(line: 186, column: 15, scope: !605)
!622 = distinct !{!622, !615, !623}
!623 = !DILocation(line: 187, column: 5, scope: !584)
!624 = !DILocation(line: 0, scope: !605)
!625 = !DILocation(line: 189, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !584, file: !1, line: 189, column: 9)
!627 = !DILocation(line: 189, column: 25, scope: !626)
!628 = !DILocation(line: 189, column: 16, scope: !626)
!629 = !DILocation(line: 190, column: 20, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !1, line: 189, column: 31)
!631 = !DILocation(line: 190, column: 9, scope: !630)
!632 = !DILocation(line: 191, column: 27, scope: !630)
!633 = !DILocation(line: 191, column: 9, scope: !630)
!634 = !DILocation(line: 192, column: 27, scope: !630)
!635 = !{!416, !316, i64 80}
!636 = !DILocation(line: 192, column: 9, scope: !630)
!637 = !DILocation(line: 193, column: 28, scope: !630)
!638 = !DILocation(line: 194, column: 24, scope: !630)
!639 = !DILocation(line: 193, column: 56, scope: !630)
!640 = !DILocation(line: 193, column: 9, scope: !630)
!641 = !DILocation(line: 195, column: 5, scope: !630)
!642 = !DILocation(line: 196, column: 5, scope: !584)
!643 = !DILocation(line: 197, column: 5, scope: !584)
!644 = distinct !DISubprogram(name: "pubsubUnsubscribeAllPatterns", scope: !1, file: !1, line: 202, type: !585, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !645)
!645 = !{!646, !647, !648, !649, !655, !656}
!646 = !DILocalVariable(name: "c", arg: 1, scope: !644, file: !1, line: 202, type: !69)
!647 = !DILocalVariable(name: "notify", arg: 2, scope: !644, file: !1, line: 202, type: !75)
!648 = !DILocalVariable(name: "ln", scope: !644, file: !1, line: 203, type: !159)
!649 = !DILocalVariable(name: "li", scope: !644, file: !1, line: 204, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !155, line: 45, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !155, line: 42, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !155, line: 43, baseType: !159, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !651, file: !155, line: 44, baseType: !75, size: 32, offset: 64)
!655 = !DILocalVariable(name: "count", scope: !644, file: !1, line: 205, type: !75)
!656 = !DILocalVariable(name: "pattern", scope: !657, file: !1, line: 209, type: !180)
!657 = distinct !DILexicalBlock(scope: !644, file: !1, line: 208, column: 42)
!658 = !DILocation(line: 202, column: 42, scope: !644)
!659 = !DILocation(line: 202, column: 49, scope: !644)
!660 = !DILocation(line: 204, column: 5, scope: !644)
!661 = !DILocation(line: 205, column: 9, scope: !644)
!662 = !DILocation(line: 207, column: 19, scope: !644)
!663 = !DILocation(line: 204, column: 14, scope: !644)
!664 = !DILocation(line: 207, column: 5, scope: !644)
!665 = !DILocation(line: 208, column: 18, scope: !644)
!666 = !DILocation(line: 203, column: 15, scope: !644)
!667 = !DILocation(line: 208, column: 33, scope: !644)
!668 = !DILocation(line: 208, column: 5, scope: !644)
!669 = !DILocation(line: 209, column: 29, scope: !657)
!670 = !{!671, !316, i64 16}
!671 = !{!"listNode", !316, i64 0, !316, i64 8, !316, i64 16}
!672 = !DILocation(line: 209, column: 15, scope: !657)
!673 = !DILocation(line: 211, column: 18, scope: !657)
!674 = !DILocation(line: 211, column: 15, scope: !657)
!675 = distinct !{!675, !668, !676}
!676 = !DILocation(line: 212, column: 5, scope: !644)
!677 = !DILocation(line: 0, scope: !657)
!678 = !DILocation(line: 213, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !644, file: !1, line: 213, column: 9)
!680 = !DILocation(line: 213, column: 25, scope: !679)
!681 = !DILocation(line: 213, column: 16, scope: !679)
!682 = !DILocation(line: 215, column: 20, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 213, column: 31)
!684 = !DILocation(line: 215, column: 9, scope: !683)
!685 = !DILocation(line: 216, column: 27, scope: !683)
!686 = !DILocation(line: 216, column: 9, scope: !683)
!687 = !DILocation(line: 217, column: 27, scope: !683)
!688 = !DILocation(line: 217, column: 9, scope: !683)
!689 = !DILocation(line: 218, column: 28, scope: !683)
!690 = !DILocation(line: 219, column: 24, scope: !683)
!691 = !DILocation(line: 218, column: 56, scope: !683)
!692 = !DILocation(line: 218, column: 9, scope: !683)
!693 = !DILocation(line: 220, column: 5, scope: !683)
!694 = !DILocation(line: 222, column: 1, scope: !644)
!695 = !DILocation(line: 221, column: 5, scope: !644)
!696 = distinct !DISubprogram(name: "pubsubPublishMessage", scope: !1, file: !1, line: 225, type: !697, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!75, !180, !180}
!699 = !{!700, !701, !702, !703, !704, !705, !706, !709, !710, !711, !713}
!700 = !DILocalVariable(name: "channel", arg: 1, scope: !696, file: !1, line: 225, type: !180)
!701 = !DILocalVariable(name: "message", arg: 2, scope: !696, file: !1, line: 225, type: !180)
!702 = !DILocalVariable(name: "receivers", scope: !696, file: !1, line: 226, type: !75)
!703 = !DILocalVariable(name: "de", scope: !696, file: !1, line: 227, type: !120)
!704 = !DILocalVariable(name: "ln", scope: !696, file: !1, line: 228, type: !159)
!705 = !DILocalVariable(name: "li", scope: !696, file: !1, line: 229, type: !650)
!706 = !DILocalVariable(name: "list", scope: !707, file: !1, line: 234, type: !153)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 233, column: 13)
!708 = distinct !DILexicalBlock(scope: !696, file: !1, line: 233, column: 9)
!709 = !DILocalVariable(name: "ln", scope: !707, file: !1, line: 235, type: !159)
!710 = !DILocalVariable(name: "li", scope: !707, file: !1, line: 236, type: !650)
!711 = !DILocalVariable(name: "c", scope: !712, file: !1, line: 240, type: !69)
!712 = distinct !DILexicalBlock(scope: !707, file: !1, line: 239, column: 46)
!713 = !DILocalVariable(name: "pat", scope: !714, file: !1, line: 254, type: !63)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 253, column: 46)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 250, column: 45)
!716 = distinct !DILexicalBlock(scope: !696, file: !1, line: 250, column: 9)
!717 = !DILocation(line: 225, column: 32, scope: !696)
!718 = !DILocation(line: 225, column: 47, scope: !696)
!719 = !DILocation(line: 226, column: 9, scope: !696)
!720 = !DILocation(line: 229, column: 5, scope: !696)
!721 = !DILocation(line: 232, column: 26, scope: !696)
!722 = !DILocation(line: 232, column: 42, scope: !696)
!723 = !DILocation(line: 232, column: 10, scope: !696)
!724 = !DILocation(line: 227, column: 16, scope: !696)
!725 = !DILocation(line: 233, column: 9, scope: !708)
!726 = !DILocation(line: 233, column: 9, scope: !696)
!727 = !DILocation(line: 234, column: 22, scope: !707)
!728 = !DILocation(line: 234, column: 15, scope: !707)
!729 = !DILocation(line: 236, column: 9, scope: !707)
!730 = !DILocation(line: 236, column: 18, scope: !707)
!731 = !DILocation(line: 238, column: 9, scope: !707)
!732 = !DILocation(line: 239, column: 22, scope: !707)
!733 = !DILocation(line: 235, column: 19, scope: !707)
!734 = !DILocation(line: 239, column: 37, scope: !707)
!735 = !DILocation(line: 239, column: 9, scope: !707)
!736 = !DILocation(line: 240, column: 29, scope: !712)
!737 = !DILocation(line: 240, column: 21, scope: !712)
!738 = !DILocation(line: 242, column: 24, scope: !712)
!739 = !DILocation(line: 242, column: 13, scope: !712)
!740 = !DILocation(line: 243, column: 31, scope: !712)
!741 = !{!416, !316, i64 248}
!742 = !DILocation(line: 243, column: 13, scope: !712)
!743 = !DILocation(line: 244, column: 13, scope: !712)
!744 = !DILocation(line: 245, column: 13, scope: !712)
!745 = !DILocation(line: 246, column: 22, scope: !712)
!746 = distinct !{!746, !735, !747}
!747 = !DILocation(line: 247, column: 9, scope: !707)
!748 = !DILocation(line: 0, scope: !712)
!749 = !DILocation(line: 248, column: 5, scope: !708)
!750 = !DILocation(line: 248, column: 5, scope: !707)
!751 = !DILocation(line: 250, column: 9, scope: !716)
!752 = !DILocation(line: 250, column: 9, scope: !696)
!753 = !DILocation(line: 229, column: 14, scope: !696)
!754 = !DILocation(line: 251, column: 9, scope: !715)
!755 = !DILocation(line: 252, column: 19, scope: !715)
!756 = !DILocation(line: 253, column: 22, scope: !715)
!757 = !DILocation(line: 228, column: 15, scope: !696)
!758 = !DILocation(line: 253, column: 37, scope: !715)
!759 = !DILocation(line: 253, column: 9, scope: !715)
!760 = !DILocation(line: 254, column: 38, scope: !714)
!761 = !DILocation(line: 254, column: 28, scope: !714)
!762 = !DILocation(line: 256, column: 44, scope: !763)
!763 = distinct !DILexicalBlock(scope: !714, file: !1, line: 256, column: 17)
!764 = !DILocation(line: 256, column: 53, scope: !763)
!765 = !{!766, !316, i64 8}
!766 = !{!"redisObject", !351, i64 0, !351, i64 0, !351, i64 1, !351, i64 4, !316, i64 8}
!767 = !DILocalVariable(name: "s", arg: 1, scope: !768, file: !9, line: 87, type: !773)
!768 = distinct !DISubprogram(name: "sdslen", scope: !9, file: !9, line: 87, type: !769, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !774)
!769 = !DISubroutineType(types: !770)
!770 = !{!771, !773}
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !772, line: 58, baseType: !49)
!772 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!774 = !{!767, !775}
!775 = !DILocalVariable(name: "flags", scope: !768, file: !9, line: 88, type: !16)
!776 = !DILocation(line: 87, column: 39, scope: !768, inlinedAt: !777)
!777 = distinct !DILocation(line: 257, column: 33, scope: !763)
!778 = !DILocation(line: 88, column: 27, scope: !768, inlinedAt: !777)
!779 = !DILocation(line: 88, column: 19, scope: !768, inlinedAt: !777)
!780 = !DILocation(line: 89, column: 5, scope: !768, inlinedAt: !777)
!781 = !DILocation(line: 91, column: 20, scope: !782, inlinedAt: !777)
!782 = distinct !DILexicalBlock(scope: !768, file: !9, line: 89, column: 33)
!783 = !DILocation(line: 91, column: 13, scope: !782, inlinedAt: !777)
!784 = !DILocation(line: 93, column: 20, scope: !782, inlinedAt: !777)
!785 = !DILocation(line: 93, column: 34, scope: !782, inlinedAt: !777)
!786 = !DILocation(line: 93, column: 13, scope: !782, inlinedAt: !777)
!787 = !DILocation(line: 95, column: 20, scope: !782, inlinedAt: !777)
!788 = !DILocation(line: 95, column: 35, scope: !782, inlinedAt: !777)
!789 = !{!790, !790, i64 0}
!790 = !{!"short", !317, i64 0}
!791 = !DILocation(line: 95, column: 13, scope: !782, inlinedAt: !777)
!792 = !DILocation(line: 97, column: 20, scope: !782, inlinedAt: !777)
!793 = !DILocation(line: 97, column: 35, scope: !782, inlinedAt: !777)
!794 = !{!351, !351, i64 0}
!795 = !DILocation(line: 97, column: 13, scope: !782, inlinedAt: !777)
!796 = !DILocation(line: 99, column: 20, scope: !782, inlinedAt: !777)
!797 = !DILocation(line: 99, column: 35, scope: !782, inlinedAt: !777)
!798 = !{!350, !350, i64 0}
!799 = !DILocation(line: 99, column: 13, scope: !782, inlinedAt: !777)
!800 = !DILocation(line: 0, scope: !782, inlinedAt: !777)
!801 = !DILocation(line: 257, column: 33, scope: !763)
!802 = !DILocation(line: 258, column: 49, scope: !763)
!803 = !DILocation(line: 87, column: 39, scope: !768, inlinedAt: !804)
!804 = distinct !DILocation(line: 259, column: 33, scope: !763)
!805 = !DILocation(line: 88, column: 27, scope: !768, inlinedAt: !804)
!806 = !DILocation(line: 88, column: 19, scope: !768, inlinedAt: !804)
!807 = !DILocation(line: 89, column: 5, scope: !768, inlinedAt: !804)
!808 = !DILocation(line: 91, column: 20, scope: !782, inlinedAt: !804)
!809 = !DILocation(line: 91, column: 13, scope: !782, inlinedAt: !804)
!810 = !DILocation(line: 93, column: 20, scope: !782, inlinedAt: !804)
!811 = !DILocation(line: 93, column: 34, scope: !782, inlinedAt: !804)
!812 = !DILocation(line: 93, column: 13, scope: !782, inlinedAt: !804)
!813 = !DILocation(line: 95, column: 20, scope: !782, inlinedAt: !804)
!814 = !DILocation(line: 95, column: 35, scope: !782, inlinedAt: !804)
!815 = !DILocation(line: 95, column: 13, scope: !782, inlinedAt: !804)
!816 = !DILocation(line: 97, column: 20, scope: !782, inlinedAt: !804)
!817 = !DILocation(line: 97, column: 35, scope: !782, inlinedAt: !804)
!818 = !DILocation(line: 97, column: 13, scope: !782, inlinedAt: !804)
!819 = !DILocation(line: 99, column: 20, scope: !782, inlinedAt: !804)
!820 = !DILocation(line: 99, column: 35, scope: !782, inlinedAt: !804)
!821 = !DILocation(line: 99, column: 13, scope: !782, inlinedAt: !804)
!822 = !DILocation(line: 0, scope: !782, inlinedAt: !804)
!823 = !DILocation(line: 259, column: 33, scope: !763)
!824 = !DILocation(line: 256, column: 17, scope: !763)
!825 = !DILocation(line: 256, column: 17, scope: !714)
!826 = !DILocation(line: 260, column: 31, scope: !827)
!827 = distinct !DILexicalBlock(scope: !763, file: !1, line: 259, column: 58)
!828 = !DILocation(line: 260, column: 38, scope: !827)
!829 = !DILocation(line: 260, column: 17, scope: !827)
!830 = !DILocation(line: 261, column: 31, scope: !827)
!831 = !DILocation(line: 261, column: 45, scope: !827)
!832 = !{!416, !316, i64 256}
!833 = !DILocation(line: 261, column: 17, scope: !827)
!834 = !DILocation(line: 262, column: 35, scope: !827)
!835 = !DILocation(line: 262, column: 47, scope: !827)
!836 = !DILocation(line: 262, column: 17, scope: !827)
!837 = !DILocation(line: 263, column: 35, scope: !827)
!838 = !DILocation(line: 263, column: 17, scope: !827)
!839 = !DILocation(line: 264, column: 35, scope: !827)
!840 = !DILocation(line: 264, column: 17, scope: !827)
!841 = !DILocation(line: 265, column: 26, scope: !827)
!842 = !DILocation(line: 266, column: 13, scope: !827)
!843 = !DILocation(line: 0, scope: !696)
!844 = distinct !{!844, !759, !845}
!845 = !DILocation(line: 267, column: 9, scope: !715)
!846 = !DILocation(line: 0, scope: !827)
!847 = !DILocation(line: 268, column: 9, scope: !715)
!848 = !DILocation(line: 269, column: 5, scope: !715)
!849 = !DILocation(line: 271, column: 1, scope: !696)
!850 = !DILocation(line: 270, column: 5, scope: !696)
!851 = distinct !DISubprogram(name: "subscribeCommand", scope: !1, file: !1, line: 277, type: !209, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !852)
!852 = !{!853, !854}
!853 = !DILocalVariable(name: "c", arg: 1, scope: !851, file: !1, line: 277, type: !69)
!854 = !DILocalVariable(name: "j", scope: !851, file: !1, line: 278, type: !75)
!855 = !DILocation(line: 277, column: 31, scope: !851)
!856 = !DILocation(line: 278, column: 9, scope: !851)
!857 = !DILocation(line: 280, column: 24, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 280, column: 5)
!859 = distinct !DILexicalBlock(scope: !851, file: !1, line: 280, column: 5)
!860 = !{!349, !351, i64 64}
!861 = !DILocation(line: 280, column: 19, scope: !858)
!862 = !DILocation(line: 280, column: 5, scope: !859)
!863 = !DILocation(line: 281, column: 37, scope: !858)
!864 = !{!349, !316, i64 72}
!865 = !DILocation(line: 281, column: 34, scope: !858)
!866 = !DILocation(line: 281, column: 9, scope: !858)
!867 = !DILocation(line: 280, column: 31, scope: !858)
!868 = distinct !{!868, !862, !869}
!869 = !DILocation(line: 281, column: 44, scope: !859)
!870 = !DILocation(line: 282, column: 8, scope: !851)
!871 = !DILocation(line: 282, column: 14, scope: !851)
!872 = !{!349, !351, i64 160}
!873 = !DILocation(line: 283, column: 1, scope: !851)
!874 = distinct !DISubprogram(name: "unsubscribeCommand", scope: !1, file: !1, line: 285, type: !209, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !875)
!875 = !{!876, !877}
!876 = !DILocalVariable(name: "c", arg: 1, scope: !874, file: !1, line: 285, type: !69)
!877 = !DILocalVariable(name: "j", scope: !878, file: !1, line: 289, type: !75)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 288, column: 12)
!879 = distinct !DILexicalBlock(scope: !874, file: !1, line: 286, column: 9)
!880 = !DILocation(line: 285, column: 33, scope: !874)
!881 = !DILocation(line: 286, column: 12, scope: !879)
!882 = !DILocation(line: 286, column: 17, scope: !879)
!883 = !DILocation(line: 286, column: 9, scope: !874)
!884 = !DILocation(line: 289, column: 13, scope: !878)
!885 = !DILocation(line: 291, column: 23, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 291, column: 9)
!887 = distinct !DILexicalBlock(scope: !878, file: !1, line: 291, column: 9)
!888 = !DILocation(line: 291, column: 9, scope: !887)
!889 = !DILocation(line: 287, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !879, file: !1, line: 286, column: 23)
!891 = !DILocation(line: 288, column: 5, scope: !890)
!892 = !DILocation(line: 292, column: 43, scope: !886)
!893 = !DILocation(line: 292, column: 40, scope: !886)
!894 = !DILocation(line: 292, column: 13, scope: !886)
!895 = !DILocation(line: 291, column: 35, scope: !886)
!896 = !DILocation(line: 291, column: 28, scope: !886)
!897 = distinct !{!897, !888, !898}
!898 = !DILocation(line: 292, column: 52, scope: !887)
!899 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !900)
!900 = distinct !DILocation(line: 294, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !874, file: !1, line: 294, column: 9)
!902 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !900)
!903 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !900)
!904 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !900)
!905 = !DILocation(line: 294, column: 37, scope: !901)
!906 = !DILocation(line: 294, column: 9, scope: !874)
!907 = !DILocation(line: 294, column: 46, scope: !901)
!908 = !DILocation(line: 294, column: 52, scope: !901)
!909 = !DILocation(line: 294, column: 43, scope: !901)
!910 = !DILocation(line: 295, column: 1, scope: !874)
!911 = distinct !DISubprogram(name: "psubscribeCommand", scope: !1, file: !1, line: 297, type: !209, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !912)
!912 = !{!913, !914}
!913 = !DILocalVariable(name: "c", arg: 1, scope: !911, file: !1, line: 297, type: !69)
!914 = !DILocalVariable(name: "j", scope: !911, file: !1, line: 298, type: !75)
!915 = !DILocation(line: 297, column: 32, scope: !911)
!916 = !DILocation(line: 298, column: 9, scope: !911)
!917 = !DILocation(line: 300, column: 24, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 300, column: 5)
!919 = distinct !DILexicalBlock(scope: !911, file: !1, line: 300, column: 5)
!920 = !DILocation(line: 300, column: 19, scope: !918)
!921 = !DILocation(line: 300, column: 5, scope: !919)
!922 = !DILocation(line: 301, column: 37, scope: !918)
!923 = !DILocation(line: 301, column: 34, scope: !918)
!924 = !DILocation(line: 301, column: 9, scope: !918)
!925 = !DILocation(line: 300, column: 31, scope: !918)
!926 = distinct !{!926, !921, !927}
!927 = !DILocation(line: 301, column: 44, scope: !919)
!928 = !DILocation(line: 302, column: 8, scope: !911)
!929 = !DILocation(line: 302, column: 14, scope: !911)
!930 = !DILocation(line: 303, column: 1, scope: !911)
!931 = distinct !DISubprogram(name: "punsubscribeCommand", scope: !1, file: !1, line: 305, type: !209, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !932)
!932 = !{!933, !934}
!933 = !DILocalVariable(name: "c", arg: 1, scope: !931, file: !1, line: 305, type: !69)
!934 = !DILocalVariable(name: "j", scope: !935, file: !1, line: 309, type: !75)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 308, column: 12)
!936 = distinct !DILexicalBlock(scope: !931, file: !1, line: 306, column: 9)
!937 = !DILocation(line: 305, column: 34, scope: !931)
!938 = !DILocation(line: 306, column: 12, scope: !936)
!939 = !DILocation(line: 306, column: 17, scope: !936)
!940 = !DILocation(line: 306, column: 9, scope: !931)
!941 = !DILocation(line: 309, column: 13, scope: !935)
!942 = !DILocation(line: 311, column: 23, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 311, column: 9)
!944 = distinct !DILexicalBlock(scope: !935, file: !1, line: 311, column: 9)
!945 = !DILocation(line: 311, column: 9, scope: !944)
!946 = !DILocation(line: 307, column: 9, scope: !947)
!947 = distinct !DILexicalBlock(scope: !936, file: !1, line: 306, column: 23)
!948 = !DILocation(line: 308, column: 5, scope: !947)
!949 = !DILocation(line: 312, column: 43, scope: !943)
!950 = !DILocation(line: 312, column: 40, scope: !943)
!951 = !DILocation(line: 312, column: 13, scope: !943)
!952 = !DILocation(line: 311, column: 35, scope: !943)
!953 = !DILocation(line: 311, column: 28, scope: !943)
!954 = distinct !{!954, !945, !955}
!955 = !DILocation(line: 312, column: 52, scope: !944)
!956 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !957)
!957 = distinct !DILocation(line: 314, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !931, file: !1, line: 314, column: 9)
!959 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !957)
!960 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !957)
!961 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !957)
!962 = !DILocation(line: 314, column: 37, scope: !958)
!963 = !DILocation(line: 314, column: 9, scope: !931)
!964 = !DILocation(line: 314, column: 46, scope: !958)
!965 = !DILocation(line: 314, column: 52, scope: !958)
!966 = !DILocation(line: 314, column: 43, scope: !958)
!967 = !DILocation(line: 315, column: 1, scope: !931)
!968 = distinct !DISubprogram(name: "publishCommand", scope: !1, file: !1, line: 317, type: !209, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !969)
!969 = !{!970, !971}
!970 = !DILocalVariable(name: "c", arg: 1, scope: !968, file: !1, line: 317, type: !69)
!971 = !DILocalVariable(name: "receivers", scope: !968, file: !1, line: 318, type: !75)
!972 = !DILocation(line: 317, column: 29, scope: !968)
!973 = !DILocation(line: 318, column: 45, scope: !968)
!974 = !DILocation(line: 318, column: 42, scope: !968)
!975 = !DILocation(line: 318, column: 53, scope: !968)
!976 = !DILocation(line: 318, column: 21, scope: !968)
!977 = !DILocation(line: 318, column: 9, scope: !968)
!978 = !DILocation(line: 319, column: 16, scope: !979)
!979 = distinct !DILexicalBlock(scope: !968, file: !1, line: 319, column: 9)
!980 = !{!386, !351, i64 2924}
!981 = !DILocation(line: 319, column: 9, scope: !979)
!982 = !DILocation(line: 319, column: 9, scope: !968)
!983 = !DILocation(line: 320, column: 36, scope: !979)
!984 = !DILocation(line: 320, column: 33, scope: !979)
!985 = !DILocation(line: 320, column: 44, scope: !979)
!986 = !DILocation(line: 320, column: 9, scope: !979)
!987 = !DILocation(line: 322, column: 9, scope: !979)
!988 = !DILocation(line: 323, column: 24, scope: !968)
!989 = !DILocation(line: 323, column: 5, scope: !968)
!990 = !DILocation(line: 324, column: 1, scope: !968)
!991 = distinct !DISubprogram(name: "pubsubCommand", scope: !1, file: !1, line: 327, type: !209, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !992)
!992 = !{!993, !994, !1002, !1005, !1006, !1007, !1008, !1009, !1011, !1012, !1015}
!993 = !DILocalVariable(name: "c", arg: 1, scope: !991, file: !1, line: 327, type: !69)
!994 = !DILocalVariable(name: "help", scope: !995, file: !1, line: 329, type: !997)
!995 = distinct !DILexicalBlock(scope: !996, file: !1, line: 328, column: 62)
!996 = distinct !DILexicalBlock(scope: !991, file: !1, line: 328, column: 9)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, size: 256, elements: !1000)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1000 = !{!1001}
!1001 = !DISubrange(count: 4)
!1002 = !DILocalVariable(name: "pat", scope: !1003, file: !1, line: 340, type: !190)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 338, column: 5)
!1004 = distinct !DILexicalBlock(scope: !996, file: !1, line: 336, column: 16)
!1005 = !DILocalVariable(name: "di", scope: !1003, file: !1, line: 341, type: !591)
!1006 = !DILocalVariable(name: "de", scope: !1003, file: !1, line: 342, type: !120)
!1007 = !DILocalVariable(name: "mblen", scope: !1003, file: !1, line: 343, type: !133)
!1008 = !DILocalVariable(name: "replylen", scope: !1003, file: !1, line: 344, type: !4)
!1009 = !DILocalVariable(name: "cobj", scope: !1010, file: !1, line: 348, type: !180)
!1010 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 347, column: 44)
!1011 = !DILocalVariable(name: "channel", scope: !1010, file: !1, line: 349, type: !190)
!1012 = !DILocalVariable(name: "j", scope: !1013, file: !1, line: 362, type: !75)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 360, column: 71)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 360, column: 16)
!1015 = !DILocalVariable(name: "l", scope: !1016, file: !1, line: 366, type: !153)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 365, column: 39)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 365, column: 9)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 365, column: 9)
!1019 = !DILocation(line: 327, column: 28, scope: !991)
!1020 = !DILocation(line: 328, column: 12, scope: !996)
!1021 = !DILocation(line: 328, column: 17, scope: !996)
!1022 = !DILocation(line: 0, scope: !1004)
!1023 = !DILocation(line: 328, column: 22, scope: !996)
!1024 = !DILocation(line: 328, column: 26, scope: !996)
!1025 = !DILocation(line: 328, column: 9, scope: !991)
!1026 = !DILocation(line: 329, column: 9, scope: !995)
!1027 = !DILocation(line: 329, column: 21, scope: !995)
!1028 = !DILocation(line: 335, column: 25, scope: !995)
!1029 = !DILocation(line: 335, column: 9, scope: !995)
!1030 = !DILocation(line: 336, column: 5, scope: !996)
!1031 = !DILocation(line: 336, column: 5, scope: !995)
!1032 = !DILocation(line: 336, column: 17, scope: !1004)
!1033 = !DILocation(line: 337, column: 23, scope: !1004)
!1034 = !DILocation(line: 336, column: 56, scope: !1004)
!1035 = !DILocation(line: 340, column: 19, scope: !1003)
!1036 = !DILocation(line: 340, column: 43, scope: !1003)
!1037 = !DILocation(line: 340, column: 55, scope: !1003)
!1038 = !DILocation(line: 340, column: 13, scope: !1003)
!1039 = !DILocation(line: 341, column: 51, scope: !1003)
!1040 = !DILocation(line: 341, column: 28, scope: !1003)
!1041 = !DILocation(line: 341, column: 23, scope: !1003)
!1042 = !DILocation(line: 343, column: 14, scope: !1003)
!1043 = !DILocation(line: 346, column: 20, scope: !1003)
!1044 = !DILocation(line: 344, column: 15, scope: !1003)
!1045 = !DILocation(line: 347, column: 21, scope: !1003)
!1046 = !DILocation(line: 342, column: 20, scope: !1003)
!1047 = !DILocation(line: 347, column: 35, scope: !1003)
!1048 = !DILocation(line: 347, column: 9, scope: !1003)
!1049 = !DILocation(line: 348, column: 26, scope: !1010)
!1050 = !DILocation(line: 348, column: 19, scope: !1010)
!1051 = !DILocation(line: 349, column: 33, scope: !1010)
!1052 = !DILocation(line: 349, column: 17, scope: !1010)
!1053 = !DILocation(line: 351, column: 22, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 351, column: 17)
!1055 = !DILocation(line: 87, column: 39, scope: !768, inlinedAt: !1056)
!1056 = distinct !DILocation(line: 351, column: 45, scope: !1054)
!1057 = !DILocation(line: 88, column: 27, scope: !768, inlinedAt: !1056)
!1058 = !DILocation(line: 88, column: 19, scope: !768, inlinedAt: !1056)
!1059 = !DILocation(line: 89, column: 5, scope: !768, inlinedAt: !1056)
!1060 = !DILocation(line: 91, column: 20, scope: !782, inlinedAt: !1056)
!1061 = !DILocation(line: 91, column: 13, scope: !782, inlinedAt: !1056)
!1062 = !DILocation(line: 93, column: 34, scope: !782, inlinedAt: !1056)
!1063 = !DILocation(line: 93, column: 20, scope: !782, inlinedAt: !1056)
!1064 = !DILocation(line: 93, column: 13, scope: !782, inlinedAt: !1056)
!1065 = !DILocation(line: 95, column: 35, scope: !782, inlinedAt: !1056)
!1066 = !DILocation(line: 95, column: 20, scope: !782, inlinedAt: !1056)
!1067 = !DILocation(line: 95, column: 13, scope: !782, inlinedAt: !1056)
!1068 = !DILocation(line: 97, column: 35, scope: !782, inlinedAt: !1056)
!1069 = !DILocation(line: 97, column: 20, scope: !782, inlinedAt: !1056)
!1070 = !DILocation(line: 97, column: 13, scope: !782, inlinedAt: !1056)
!1071 = !DILocation(line: 99, column: 35, scope: !782, inlinedAt: !1056)
!1072 = !DILocation(line: 99, column: 13, scope: !782, inlinedAt: !1056)
!1073 = !DILocation(line: 0, scope: !782, inlinedAt: !1056)
!1074 = !DILocation(line: 351, column: 45, scope: !1054)
!1075 = !DILocation(line: 87, column: 39, scope: !768, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 352, column: 49, scope: !1054)
!1077 = !DILocation(line: 88, column: 27, scope: !768, inlinedAt: !1076)
!1078 = !DILocation(line: 88, column: 19, scope: !768, inlinedAt: !1076)
!1079 = !DILocation(line: 89, column: 5, scope: !768, inlinedAt: !1076)
!1080 = !DILocation(line: 91, column: 20, scope: !782, inlinedAt: !1076)
!1081 = !DILocation(line: 91, column: 13, scope: !782, inlinedAt: !1076)
!1082 = !DILocation(line: 93, column: 20, scope: !782, inlinedAt: !1076)
!1083 = !DILocation(line: 93, column: 34, scope: !782, inlinedAt: !1076)
!1084 = !DILocation(line: 93, column: 13, scope: !782, inlinedAt: !1076)
!1085 = !DILocation(line: 95, column: 20, scope: !782, inlinedAt: !1076)
!1086 = !DILocation(line: 95, column: 35, scope: !782, inlinedAt: !1076)
!1087 = !DILocation(line: 95, column: 13, scope: !782, inlinedAt: !1076)
!1088 = !DILocation(line: 97, column: 20, scope: !782, inlinedAt: !1076)
!1089 = !DILocation(line: 97, column: 35, scope: !782, inlinedAt: !1076)
!1090 = !DILocation(line: 97, column: 13, scope: !782, inlinedAt: !1076)
!1091 = !DILocation(line: 99, column: 20, scope: !782, inlinedAt: !1076)
!1092 = !DILocation(line: 99, column: 35, scope: !782, inlinedAt: !1076)
!1093 = !DILocation(line: 99, column: 13, scope: !782, inlinedAt: !1076)
!1094 = !DILocation(line: 0, scope: !782, inlinedAt: !1076)
!1095 = !DILocation(line: 352, column: 49, scope: !1054)
!1096 = !DILocation(line: 351, column: 25, scope: !1054)
!1097 = !DILocation(line: 351, column: 17, scope: !1010)
!1098 = !DILocation(line: 354, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 353, column: 13)
!1100 = !DILocation(line: 355, column: 22, scope: !1099)
!1101 = !DILocation(line: 356, column: 13, scope: !1099)
!1102 = !DILocation(line: 0, scope: !1003)
!1103 = distinct !{!1103, !1048, !1104}
!1104 = !DILocation(line: 357, column: 9, scope: !1003)
!1105 = !DILocation(line: 0, scope: !1099)
!1106 = !DILocation(line: 358, column: 9, scope: !1003)
!1107 = !DILocation(line: 359, column: 9, scope: !1003)
!1108 = !DILocation(line: 360, column: 5, scope: !1003)
!1109 = !DILocation(line: 360, column: 17, scope: !1014)
!1110 = !DILocation(line: 360, column: 65, scope: !1014)
!1111 = !DILocation(line: 360, column: 54, scope: !1014)
!1112 = !DILocation(line: 364, column: 43, scope: !1013)
!1113 = !DILocation(line: 364, column: 32, scope: !1013)
!1114 = !DILocation(line: 364, column: 9, scope: !1013)
!1115 = !DILocation(line: 362, column: 13, scope: !1013)
!1116 = !DILocation(line: 365, column: 28, scope: !1017)
!1117 = !DILocation(line: 365, column: 23, scope: !1017)
!1118 = !DILocation(line: 365, column: 9, scope: !1018)
!1119 = !DILocation(line: 366, column: 45, scope: !1016)
!1120 = !DILocation(line: 366, column: 64, scope: !1016)
!1121 = !DILocation(line: 366, column: 61, scope: !1016)
!1122 = !DILocation(line: 366, column: 23, scope: !1016)
!1123 = !DILocation(line: 368, column: 31, scope: !1016)
!1124 = !DILocation(line: 368, column: 28, scope: !1016)
!1125 = !DILocation(line: 368, column: 13, scope: !1016)
!1126 = !DILocation(line: 369, column: 32, scope: !1016)
!1127 = !DILocation(line: 366, column: 19, scope: !1016)
!1128 = !DILocation(line: 369, column: 36, scope: !1016)
!1129 = !DILocation(line: 369, column: 13, scope: !1016)
!1130 = !DILocation(line: 365, column: 35, scope: !1017)
!1131 = distinct !{!1131, !1118, !1132}
!1132 = !DILocation(line: 370, column: 9, scope: !1018)
!1133 = !DILocation(line: 371, column: 17, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 371, column: 16)
!1135 = !DILocation(line: 371, column: 54, scope: !1134)
!1136 = !DILocation(line: 373, column: 28, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 371, column: 71)
!1138 = !DILocation(line: 373, column: 9, scope: !1137)
!1139 = !DILocation(line: 374, column: 5, scope: !1137)
!1140 = !DILocation(line: 375, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 374, column: 12)
!1142 = !DILocation(line: 377, column: 1, scope: !991)
