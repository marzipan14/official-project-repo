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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @freePubsubPattern(i8*) local_unnamed_addr #0 !dbg !57 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !313
  %3 = bitcast i8* %2 to %struct.redisObject**, !dbg !313
  %4 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !313, !tbaa !314
  tail call void @decrRefCount(%struct.redisObject* %4) #6, !dbg !319
  tail call void @zfree(i8* %0) #6, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
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
  %15 = tail call i32 @equalStringObjects(%struct.redisObject* %11, %struct.redisObject* %14) #6, !dbg !339
  %16 = icmp ne i32 %15, 0, !dbg !334
  %17 = zext i1 %16 to i32
  br label %18

; <label>:18:                                     ; preds = %8, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret i32 %19, !dbg !340
}

; Function Attrs: noredzone
declare dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @clientSubscriptionsCount(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !341 {
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  ret i32 %14, !dbg !362
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubSubscribeChannel(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !363 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !376
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !376, !tbaa !348
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !378
  %6 = tail call i32 @dictAdd(%struct.dict* %4, i8* %5, i8* null) #6, !dbg !379
  %7 = icmp eq i32 %6, 0, !dbg !380
  br i1 %7, label %8, label %25, !dbg !381

; <label>:8:                                      ; preds = %2
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !382
  %9 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !384, !tbaa !385
  %10 = tail call %struct.dictEntry* @dictFind(%struct.dict* %9, i8* %5) #6, !dbg !391
  %11 = icmp eq %struct.dictEntry* %10, null, !dbg !393
  br i1 %11, label %12, label %17, !dbg !395

; <label>:12:                                     ; preds = %8
  %13 = tail call %struct.list* @listCreate() #6, !dbg !396
  %14 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !398, !tbaa !385
  %15 = bitcast %struct.list* %13 to i8*, !dbg !399
  %16 = tail call i32 @dictAdd(%struct.dict* %14, i8* %5, i8* %15) #6, !dbg !400
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !401
  br label %21, !dbg !402

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %10, i64 0, i32 1, i32 0, !dbg !403
  %19 = bitcast i8** %18 to %struct.list**, !dbg !403
  %20 = load %struct.list*, %struct.list** %19, align 8, !dbg !403, !tbaa !405
  br label %21

; <label>:21:                                     ; preds = %17, %12
  %22 = phi %struct.list* [ %13, %12 ], [ %20, %17 ], !dbg !406
  %23 = bitcast %struct.client* %0 to i8*, !dbg !407
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %22, i8* %23) #6, !dbg !408
  br label %25, !dbg !409

; <label>:25:                                     ; preds = %21, %2
  %26 = phi i32 [ 1, %21 ], [ 0, %2 ], !dbg !410
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !411, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %27) #6, !dbg !413
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 33), align 8, !dbg !414, !tbaa !415
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %28) #6, !dbg !417
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #6, !dbg !418
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %40 = shl i64 %39, 32, !dbg !425
  %41 = ashr exact i64 %40, 32, !dbg !425
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %41) #6, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret i32 %26, !dbg !427
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
define dso_local i32 @pubsubUnsubscribeChannel(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !428 {
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !443
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !444
  %5 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !444, !tbaa !348
  %6 = bitcast %struct.redisObject* %1 to i8*, !dbg !446
  %7 = tail call i32 @dictDelete(%struct.dict* %5, i8* %6) #6, !dbg !447
  %8 = icmp eq i32 %7, 0, !dbg !448
  br i1 %8, label %9, label %29, !dbg !449

; <label>:9:                                      ; preds = %3
  %10 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !450, !tbaa !385
  %11 = tail call %struct.dictEntry* @dictFind(%struct.dict* %10, i8* %6) #6, !dbg !452
  %12 = icmp eq %struct.dictEntry* %11, null, !dbg !454
  br i1 %12, label %13, label %14, !dbg !454

; <label>:13:                                     ; preds = %9
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 101) #6, !dbg !454
  tail call void @_exit(i32 1) #7, !dbg !454
  unreachable, !dbg !454

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i64 0, i32 1, i32 0, !dbg !455
  %16 = bitcast i8** %15 to %struct.list**, !dbg !455
  %17 = load %struct.list*, %struct.list** %16, align 8, !dbg !455, !tbaa !405
  %18 = bitcast %struct.client* %0 to i8*, !dbg !457
  %19 = tail call %struct.listNode* @listSearchKey(%struct.list* %17, i8* %18) #6, !dbg !458
  %20 = icmp eq %struct.listNode* %19, null, !dbg !460
  br i1 %20, label %21, label %22, !dbg !460

; <label>:21:                                     ; preds = %14
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 104) #6, !dbg !460
  tail call void @_exit(i32 1) #7, !dbg !460
  unreachable, !dbg !460

; <label>:22:                                     ; preds = %14
  tail call void @listDelNode(%struct.list* %17, %struct.listNode* nonnull %19) #6, !dbg !461
  %23 = getelementptr inbounds %struct.list, %struct.list* %17, i64 0, i32 5, !dbg !462
  %24 = load i64, i64* %23, align 8, !dbg !462, !tbaa !359
  %25 = icmp eq i64 %24, 0, !dbg !464
  br i1 %25, label %26, label %29, !dbg !465

; <label>:26:                                     ; preds = %22
  %27 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !466, !tbaa !385
  %28 = tail call i32 @dictDelete(%struct.dict* %27, i8* %6) #6, !dbg !468
  br label %29, !dbg !469

; <label>:29:                                     ; preds = %22, %26, %3
  %30 = phi i32 [ 1, %26 ], [ 1, %22 ], [ 0, %3 ], !dbg !470
  %31 = icmp eq i32 %2, 0, !dbg !471
  br i1 %31, label %46, label %32, !dbg !473

; <label>:32:                                     ; preds = %29
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !474, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #6, !dbg !476
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 34), align 8, !dbg !477, !tbaa !478
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #6, !dbg !479
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #6, !dbg !480
  %35 = load %struct.dict*, %struct.dict** %4, align 8, !dbg !481, !tbaa !348
  %36 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 0, i32 3, !dbg !481
  %37 = load i64, i64* %36, align 8, !dbg !481, !tbaa !355
  %38 = getelementptr inbounds %struct.dict, %struct.dict* %35, i64 0, i32 2, i64 1, i32 3, !dbg !481
  %39 = load i64, i64* %38, align 8, !dbg !481, !tbaa !355
  %40 = add i64 %39, %37, !dbg !481
  %41 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !482
  %42 = load %struct.list*, %struct.list** %41, align 8, !dbg !482, !tbaa !358
  %43 = getelementptr inbounds %struct.list, %struct.list* %42, i64 0, i32 5, !dbg !482
  %44 = load i64, i64* %43, align 8, !dbg !482, !tbaa !359
  %45 = add i64 %40, %44, !dbg !483
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %45) #6, !dbg !484
  br label %46, !dbg !485

; <label>:46:                                     ; preds = %29, %32
  tail call void @decrRefCount(%struct.redisObject* %1) #6, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  ret i32 %30, !dbg !487
}

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubSubscribePattern(%struct.client*, %struct.redisObject*) local_unnamed_addr #0 !dbg !488 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !499
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !499, !tbaa !358
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !500
  %6 = tail call %struct.listNode* @listSearchKey(%struct.list* %4, i8* %5) #6, !dbg !501
  %7 = icmp eq %struct.listNode* %6, null, !dbg !502
  br i1 %7, label %8, label %18, !dbg !503

; <label>:8:                                      ; preds = %2
  %9 = load %struct.list*, %struct.list** %3, align 8, !dbg !504, !tbaa !358
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %9, i8* %5) #6, !dbg !505
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !506
  %11 = tail call i8* @zmalloc(i64 16) #6, !dbg !507
  %12 = tail call %struct.redisObject* @getDecodedObject(%struct.redisObject* %1) #6, !dbg !509
  %13 = getelementptr inbounds i8, i8* %11, i64 8, !dbg !510
  %14 = bitcast i8* %13 to %struct.redisObject**, !dbg !510
  store %struct.redisObject* %12, %struct.redisObject** %14, align 8, !dbg !511, !tbaa !314
  %15 = bitcast i8* %11 to %struct.client**, !dbg !512
  store %struct.client* %0, %struct.client** %15, align 8, !dbg !513, !tbaa !331
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !514, !tbaa !515
  %17 = tail call %struct.list* @listAddNodeTail(%struct.list* %16, i8* %11) #6, !dbg !516
  br label %18, !dbg !517

; <label>:18:                                     ; preds = %8, %2
  %19 = phi i32 [ 1, %8 ], [ 0, %2 ], !dbg !518
  %20 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !519, !tbaa !412
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %20) #6, !dbg !520
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 35), align 8, !dbg !521, !tbaa !522
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %21) #6, !dbg !523
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #6, !dbg !524
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !527
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !527, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !527
  %25 = load i64, i64* %24, align 8, !dbg !527, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !527
  %27 = load i64, i64* %26, align 8, !dbg !527, !tbaa !355
  %28 = add i64 %27, %25, !dbg !527
  %29 = load %struct.list*, %struct.list** %3, align 8, !dbg !528, !tbaa !358
  %30 = getelementptr inbounds %struct.list, %struct.list* %29, i64 0, i32 5, !dbg !528
  %31 = load i64, i64* %30, align 8, !dbg !528, !tbaa !359
  %32 = add i64 %28, %31, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %33 = shl i64 %32, 32, !dbg !531
  %34 = ashr exact i64 %33, 32, !dbg !531
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #6, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  ret i32 %19, !dbg !533
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @getDecodedObject(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribePattern(%struct.client*, %struct.redisObject*, i32) local_unnamed_addr #0 !dbg !534 {
  %4 = alloca %struct.pubsubPattern, align 8
  %5 = bitcast %struct.pubsubPattern* %4 to i8*, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !545
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !547
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !548
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !548, !tbaa !358
  %8 = bitcast %struct.redisObject* %1 to i8*, !dbg !550
  %9 = tail call %struct.listNode* @listSearchKey(%struct.list* %7, i8* %8) #6, !dbg !551
  %10 = icmp eq %struct.listNode* %9, null, !dbg !553
  br i1 %10, label %18, label %11, !dbg !554

; <label>:11:                                     ; preds = %3
  %12 = load %struct.list*, %struct.list** %6, align 8, !dbg !555, !tbaa !358
  tail call void @listDelNode(%struct.list* %12, %struct.listNode* nonnull %9) #6, !dbg !557
  %13 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %4, i64 0, i32 0, !dbg !558
  store %struct.client* %0, %struct.client** %13, align 8, !dbg !559, !tbaa !331
  %14 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %4, i64 0, i32 1, !dbg !560
  store %struct.redisObject* %1, %struct.redisObject** %14, align 8, !dbg !561, !tbaa !314
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !562, !tbaa !515
  %16 = call %struct.listNode* @listSearchKey(%struct.list* %15, i8* nonnull %5) #6, !dbg !563
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !564, !tbaa !515
  call void @listDelNode(%struct.list* %17, %struct.listNode* %16) #6, !dbg !565
  br label %18, !dbg !566

; <label>:18:                                     ; preds = %3, %11
  %19 = phi i32 [ 1, %11 ], [ 0, %3 ], !dbg !567
  %20 = icmp eq i32 %2, 0, !dbg !568
  br i1 %20, label %35, label %21, !dbg !570

; <label>:21:                                     ; preds = %18
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !571, !tbaa !412
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %22) #6, !dbg !573
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 36), align 8, !dbg !574, !tbaa !575
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %23) #6, !dbg !576
  call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %1) #6, !dbg !577
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !578
  %25 = load %struct.dict*, %struct.dict** %24, align 8, !dbg !578, !tbaa !348
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %25, i64 0, i32 2, i64 0, i32 3, !dbg !578
  %27 = load i64, i64* %26, align 8, !dbg !578, !tbaa !355
  %28 = getelementptr inbounds %struct.dict, %struct.dict* %25, i64 0, i32 2, i64 1, i32 3, !dbg !578
  %29 = load i64, i64* %28, align 8, !dbg !578, !tbaa !355
  %30 = add i64 %29, %27, !dbg !578
  %31 = load %struct.list*, %struct.list** %6, align 8, !dbg !579, !tbaa !358
  %32 = getelementptr inbounds %struct.list, %struct.list* %31, i64 0, i32 5, !dbg !579
  %33 = load i64, i64* %32, align 8, !dbg !579, !tbaa !359
  %34 = add i64 %30, %33, !dbg !580
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %34) #6, !dbg !581
  br label %35, !dbg !582

; <label>:35:                                     ; preds = %18, %21
  call void @decrRefCount(%struct.redisObject* %1) #6, !dbg !583
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  ret i32 %19, !dbg !585
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribeAllChannels(%struct.client*, i32) local_unnamed_addr #0 !dbg !586 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !610
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !610, !tbaa !348
  %5 = tail call %struct.dictIterator* @dictGetSafeIterator(%struct.dict* %4) #6, !dbg !611
  %6 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %5) #6, !dbg !614
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !616
  br i1 %7, label %17, label %8, !dbg !617

; <label>:8:                                      ; preds = %2, %8
  %9 = phi %struct.dictEntry* [ %15, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %14, %8 ], [ 0, %2 ]
  %11 = bitcast %struct.dictEntry* %9 to %struct.redisObject**, !dbg !618
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !618, !tbaa !619
  %13 = tail call i32 @pubsubUnsubscribeChannel(%struct.client* %0, %struct.redisObject* %12, i32 %1) #9, !dbg !622
  %14 = add nsw i32 %13, %10, !dbg !623
  %15 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %5) #6, !dbg !614
  %16 = icmp eq %struct.dictEntry* %15, null, !dbg !616
  br i1 %16, label %17, label %8, !dbg !617, !llvm.loop !624

; <label>:17:                                     ; preds = %8, %2
  %18 = phi i32 [ 0, %2 ], [ %14, %8 ], !dbg !626
  %19 = icmp ne i32 %1, 0, !dbg !627
  %20 = icmp eq i32 %18, 0, !dbg !629
  %21 = and i1 %19, %20, !dbg !630
  br i1 %21, label %22, label %37, !dbg !630

; <label>:22:                                     ; preds = %17
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !631, !tbaa !412
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %23) #6, !dbg !633
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 34), align 8, !dbg !634, !tbaa !478
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %24) #6, !dbg !635
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !636, !tbaa !637
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %25) #6, !dbg !638
  %26 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !639, !tbaa !348
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 0, i32 3, !dbg !639
  %28 = load i64, i64* %27, align 8, !dbg !639, !tbaa !355
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %26, i64 0, i32 2, i64 1, i32 3, !dbg !639
  %30 = load i64, i64* %29, align 8, !dbg !639, !tbaa !355
  %31 = add i64 %30, %28, !dbg !639
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !640
  %33 = load %struct.list*, %struct.list** %32, align 8, !dbg !640, !tbaa !358
  %34 = getelementptr inbounds %struct.list, %struct.list* %33, i64 0, i32 5, !dbg !640
  %35 = load i64, i64* %34, align 8, !dbg !640, !tbaa !359
  %36 = add i64 %31, %35, !dbg !641
  tail call void @addReplyLongLong(%struct.client* %0, i64 %36) #6, !dbg !642
  br label %37, !dbg !643

; <label>:37:                                     ; preds = %22, %17
  tail call void @dictReleaseIterator(%struct.dictIterator* %5) #6, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  ret i32 %18, !dbg !645
}

; Function Attrs: noredzone
declare dso_local %struct.dictIterator* @dictGetSafeIterator(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictReleaseIterator(%struct.dictIterator*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubUnsubscribeAllPatterns(%struct.client*, i32) local_unnamed_addr #0 !dbg !646 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !662
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !662
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !664
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !664, !tbaa !358
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #6, !dbg !666
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !667
  %8 = icmp eq %struct.listNode* %7, null, !dbg !669
  br i1 %8, label %19, label %9, !dbg !670

; <label>:9:                                      ; preds = %2, %9
  %10 = phi %struct.listNode* [ %17, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !671
  %13 = bitcast i8** %12 to %struct.redisObject**, !dbg !671
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !671, !tbaa !672
  %15 = call i32 @pubsubUnsubscribePattern(%struct.client* %0, %struct.redisObject* %14, i32 %1) #9, !dbg !675
  %16 = add nsw i32 %15, %11, !dbg !676
  %17 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !667
  %18 = icmp eq %struct.listNode* %17, null, !dbg !669
  br i1 %18, label %19, label %9, !dbg !670, !llvm.loop !677

; <label>:19:                                     ; preds = %9, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %9 ], !dbg !679
  %21 = icmp ne i32 %1, 0, !dbg !680
  %22 = icmp eq i32 %20, 0, !dbg !682
  %23 = and i1 %21, %22, !dbg !683
  br i1 %23, label %24, label %39, !dbg !683

; <label>:24:                                     ; preds = %19
  %25 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !684, !tbaa !412
  call void @addReply(%struct.client* %0, %struct.redisObject* %25) #6, !dbg !686
  %26 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 36), align 8, !dbg !687, !tbaa !575
  call void @addReply(%struct.client* %0, %struct.redisObject* %26) #6, !dbg !688
  %27 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !689, !tbaa !637
  call void @addReply(%struct.client* %0, %struct.redisObject* %27) #6, !dbg !690
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !691
  %29 = load %struct.dict*, %struct.dict** %28, align 8, !dbg !691, !tbaa !348
  %30 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 0, i32 3, !dbg !691
  %31 = load i64, i64* %30, align 8, !dbg !691, !tbaa !355
  %32 = getelementptr inbounds %struct.dict, %struct.dict* %29, i64 0, i32 2, i64 1, i32 3, !dbg !691
  %33 = load i64, i64* %32, align 8, !dbg !691, !tbaa !355
  %34 = add i64 %33, %31, !dbg !691
  %35 = load %struct.list*, %struct.list** %5, align 8, !dbg !692, !tbaa !358
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i64 0, i32 5, !dbg !692
  %37 = load i64, i64* %36, align 8, !dbg !692, !tbaa !359
  %38 = add i64 %34, %37, !dbg !693
  call void @addReplyLongLong(%struct.client* %0, i64 %38) #6, !dbg !694
  br label %39, !dbg !695

; <label>:39:                                     ; preds = %24, %19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  ret i32 %20, !dbg !697
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @pubsubPublishMessage(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #0 !dbg !698 {
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.listIter, align 8
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !722
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !722
  %6 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !723, !tbaa !385
  %7 = bitcast %struct.redisObject* %0 to i8*, !dbg !724
  %8 = tail call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %7) #6, !dbg !725
  %9 = icmp eq %struct.dictEntry* %8, null, !dbg !727
  br i1 %9, label %30, label %10, !dbg !728

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i64 0, i32 1, i32 0, !dbg !729
  %12 = bitcast i8** %11 to %struct.list**, !dbg !729
  %13 = load %struct.list*, %struct.list** %12, align 8, !dbg !729, !tbaa !405
  %14 = bitcast %struct.listIter* %4 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #8, !dbg !731
  call void @listRewind(%struct.list* %13, %struct.listIter* nonnull %4) #6, !dbg !733
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !734
  %16 = icmp eq %struct.listNode* %15, null, !dbg !736
  br i1 %16, label %28, label %17, !dbg !737

; <label>:17:                                     ; preds = %10, %17
  %18 = phi %struct.listNode* [ %26, %17 ], [ %15, %10 ]
  %19 = phi i32 [ %25, %17 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.listNode, %struct.listNode* %18, i64 0, i32 2, !dbg !738
  %21 = bitcast i8** %20 to %struct.client**, !dbg !738
  %22 = load %struct.client*, %struct.client** %21, align 8, !dbg !738, !tbaa !672
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 3), align 8, !dbg !740, !tbaa !412
  call void @addReply(%struct.client* %22, %struct.redisObject* %23) #6, !dbg !741
  %24 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 31), align 8, !dbg !742, !tbaa !743
  call void @addReply(%struct.client* %22, %struct.redisObject* %24) #6, !dbg !744
  call void @addReplyBulk(%struct.client* %22, %struct.redisObject* %0) #6, !dbg !745
  call void @addReplyBulk(%struct.client* %22, %struct.redisObject* %1) #6, !dbg !746
  %25 = add nuw nsw i32 %19, 1, !dbg !747
  %26 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #6, !dbg !734
  %27 = icmp eq %struct.listNode* %26, null, !dbg !736
  br i1 %27, label %28, label %17, !dbg !737, !llvm.loop !748

; <label>:28:                                     ; preds = %17, %10
  %29 = phi i32 [ 0, %10 ], [ %25, %17 ], !dbg !750
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #8, !dbg !751
  br label %30, !dbg !752

; <label>:30:                                     ; preds = %2, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %2 ], !dbg !721
  %32 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !753, !tbaa !515
  %33 = getelementptr inbounds %struct.list, %struct.list* %32, i64 0, i32 5, !dbg !753
  %34 = load i64, i64* %33, align 8, !dbg !753, !tbaa !359
  %35 = icmp eq i64 %34, 0, !dbg !753
  br i1 %35, label %126, label %36, !dbg !754

; <label>:36:                                     ; preds = %30
  call void @listRewind(%struct.list* %32, %struct.listIter* nonnull %3) #6, !dbg !756
  %37 = call %struct.redisObject* @getDecodedObject(%struct.redisObject* %0) #6, !dbg !757
  %38 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !758
  %39 = icmp eq %struct.listNode* %38, null, !dbg !760
  br i1 %39, label %124, label %40, !dbg !761

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2
  br label %42, !dbg !761

; <label>:42:                                     ; preds = %40, %120
  %43 = phi %struct.listNode* [ %38, %40 ], [ %122, %120 ]
  %44 = phi i32 [ %31, %40 ], [ %121, %120 ]
  %45 = getelementptr inbounds %struct.listNode, %struct.listNode* %43, i64 0, i32 2, !dbg !762
  %46 = bitcast i8** %45 to %struct.pubsubPattern**, !dbg !762
  %47 = load %struct.pubsubPattern*, %struct.pubsubPattern** %46, align 8, !dbg !762, !tbaa !672
  %48 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %47, i64 0, i32 1, !dbg !764
  %49 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !764, !tbaa !314
  %50 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %49, i64 0, i32 2, !dbg !766
  %51 = load i8*, i8** %50, align 8, !dbg !766, !tbaa !767
  %52 = getelementptr inbounds i8, i8* %51, i64 -1, !dbg !780
  %53 = load i8, i8* %52, align 1, !dbg !780, !tbaa !405
  %54 = trunc i8 %53 to i3, !dbg !782
  switch i3 %54, label %76 [
    i3 0, label %55
    i3 1, label %58
    i3 2, label %62
    i3 3, label %67
    i3 -4, label %72
  ], !dbg !782

; <label>:55:                                     ; preds = %42
  %56 = lshr i8 %53, 3, !dbg !783
  %57 = zext i8 %56 to i64, !dbg !783
  br label %76, !dbg !785

; <label>:58:                                     ; preds = %42
  %59 = getelementptr inbounds i8, i8* %51, i64 -3, !dbg !786
  %60 = load i8, i8* %59, align 1, !dbg !787, !tbaa !405
  %61 = zext i8 %60 to i64, !dbg !786
  br label %76, !dbg !788

; <label>:62:                                     ; preds = %42
  %63 = getelementptr inbounds i8, i8* %51, i64 -5, !dbg !789
  %64 = bitcast i8* %63 to i16*, !dbg !790
  %65 = load i16, i16* %64, align 1, !dbg !790, !tbaa !791
  %66 = zext i16 %65 to i64, !dbg !789
  br label %76, !dbg !793

; <label>:67:                                     ; preds = %42
  %68 = getelementptr inbounds i8, i8* %51, i64 -9, !dbg !794
  %69 = bitcast i8* %68 to i32*, !dbg !795
  %70 = load i32, i32* %69, align 1, !dbg !795, !tbaa !796
  %71 = zext i32 %70 to i64, !dbg !794
  br label %76, !dbg !797

; <label>:72:                                     ; preds = %42
  %73 = getelementptr inbounds i8, i8* %51, i64 -17, !dbg !798
  %74 = bitcast i8* %73 to i64*, !dbg !799
  %75 = load i64, i64* %74, align 1, !dbg !799, !tbaa !800
  br label %76, !dbg !801

; <label>:76:                                     ; preds = %42, %55, %58, %62, %67, %72
  %77 = phi i64 [ %75, %72 ], [ %71, %67 ], [ %66, %62 ], [ %61, %58 ], [ %57, %55 ], [ 0, %42 ], !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  %78 = trunc i64 %77 to i32, !dbg !804
  %79 = load i8*, i8** %41, align 8, !dbg !805, !tbaa !767
  %80 = getelementptr inbounds i8, i8* %79, i64 -1, !dbg !808
  %81 = load i8, i8* %80, align 1, !dbg !808, !tbaa !405
  %82 = trunc i8 %81 to i3, !dbg !810
  switch i3 %82, label %104 [
    i3 0, label %83
    i3 1, label %86
    i3 2, label %90
    i3 3, label %95
    i3 -4, label %100
  ], !dbg !810

; <label>:83:                                     ; preds = %76
  %84 = lshr i8 %81, 3, !dbg !811
  %85 = zext i8 %84 to i64, !dbg !811
  br label %104, !dbg !812

; <label>:86:                                     ; preds = %76
  %87 = getelementptr inbounds i8, i8* %79, i64 -3, !dbg !813
  %88 = load i8, i8* %87, align 1, !dbg !814, !tbaa !405
  %89 = zext i8 %88 to i64, !dbg !813
  br label %104, !dbg !815

; <label>:90:                                     ; preds = %76
  %91 = getelementptr inbounds i8, i8* %79, i64 -5, !dbg !816
  %92 = bitcast i8* %91 to i16*, !dbg !817
  %93 = load i16, i16* %92, align 1, !dbg !817, !tbaa !791
  %94 = zext i16 %93 to i64, !dbg !816
  br label %104, !dbg !818

; <label>:95:                                     ; preds = %76
  %96 = getelementptr inbounds i8, i8* %79, i64 -9, !dbg !819
  %97 = bitcast i8* %96 to i32*, !dbg !820
  %98 = load i32, i32* %97, align 1, !dbg !820, !tbaa !796
  %99 = zext i32 %98 to i64, !dbg !819
  br label %104, !dbg !821

; <label>:100:                                    ; preds = %76
  %101 = getelementptr inbounds i8, i8* %79, i64 -17, !dbg !822
  %102 = bitcast i8* %101 to i64*, !dbg !823
  %103 = load i64, i64* %102, align 1, !dbg !823, !tbaa !800
  br label %104, !dbg !824

; <label>:104:                                    ; preds = %76, %83, %86, %90, %95, %100
  %105 = phi i64 [ %103, %100 ], [ %99, %95 ], [ %94, %90 ], [ %89, %86 ], [ %85, %83 ], [ 0, %76 ], !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %106 = trunc i64 %105 to i32, !dbg !827
  %107 = call i32 @stringmatchlen(i8* %51, i32 %78, i8* %79, i32 %106, i32 0) #6, !dbg !828
  %108 = icmp eq i32 %107, 0, !dbg !828
  br i1 %108, label %120, label %109, !dbg !829

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.pubsubPattern, %struct.pubsubPattern* %47, i64 0, i32 0, !dbg !830
  %111 = load %struct.client*, %struct.client** %110, align 8, !dbg !830, !tbaa !331
  %112 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 4), align 8, !dbg !832, !tbaa !412
  call void @addReply(%struct.client* %111, %struct.redisObject* %112) #6, !dbg !833
  %113 = load %struct.client*, %struct.client** %110, align 8, !dbg !834, !tbaa !331
  %114 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 32), align 8, !dbg !835, !tbaa !836
  call void @addReply(%struct.client* %113, %struct.redisObject* %114) #6, !dbg !837
  %115 = load %struct.client*, %struct.client** %110, align 8, !dbg !838, !tbaa !331
  %116 = load %struct.redisObject*, %struct.redisObject** %48, align 8, !dbg !839, !tbaa !314
  call void @addReplyBulk(%struct.client* %115, %struct.redisObject* %116) #6, !dbg !840
  %117 = load %struct.client*, %struct.client** %110, align 8, !dbg !841, !tbaa !331
  call void @addReplyBulk(%struct.client* %117, %struct.redisObject* nonnull %37) #6, !dbg !842
  %118 = load %struct.client*, %struct.client** %110, align 8, !dbg !843, !tbaa !331
  call void @addReplyBulk(%struct.client* %118, %struct.redisObject* %1) #6, !dbg !844
  %119 = add nsw i32 %44, 1, !dbg !845
  br label %120, !dbg !846

; <label>:120:                                    ; preds = %104, %109
  %121 = phi i32 [ %119, %109 ], [ %44, %104 ], !dbg !847
  %122 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #6, !dbg !758
  %123 = icmp eq %struct.listNode* %122, null, !dbg !760
  br i1 %123, label %124, label %42, !dbg !761, !llvm.loop !848

; <label>:124:                                    ; preds = %120, %36
  %125 = phi i32 [ %31, %36 ], [ %121, %120 ], !dbg !850
  call void @decrRefCount(%struct.redisObject* %37) #6, !dbg !851
  br label %126, !dbg !852

; <label>:126:                                    ; preds = %30, %124
  %127 = phi i32 [ %125, %124 ], [ %31, %30 ], !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  ret i32 %127, !dbg !854
}

; Function Attrs: noredzone
declare dso_local i32 @stringmatchlen(i8*, i32, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @subscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !855 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !861
  %3 = load i32, i32* %2, align 8, !dbg !861, !tbaa !864
  %4 = icmp sgt i32 %3, 1, !dbg !865
  br i1 %4, label %5, label %17, !dbg !866

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %7, !dbg !866

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i64 [ 1, %5 ], [ %13, %7 ]
  %9 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !867, !tbaa !868
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !869
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !869, !tbaa !412
  %12 = tail call i32 @pubsubSubscribeChannel(%struct.client* nonnull %0, %struct.redisObject* %11) #9, !dbg !870
  %13 = add nuw nsw i64 %8, 1, !dbg !871
  %14 = load i32, i32* %2, align 8, !dbg !861, !tbaa !864
  %15 = sext i32 %14 to i64, !dbg !865
  %16 = icmp slt i64 %13, %15, !dbg !865
  br i1 %16, label %7, label %17, !dbg !866, !llvm.loop !872

; <label>:17:                                     ; preds = %7, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !874
  %19 = load i32, i32* %18, align 8, !dbg !875, !tbaa !876
  %20 = or i32 %19, 262144, !dbg !875
  store i32 %20, i32* %18, align 8, !dbg !875, !tbaa !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  ret void, !dbg !877
}

; Function Attrs: noredzone nounwind
define dso_local void @unsubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !878 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !885
  %3 = load i32, i32* %2, align 8, !dbg !885, !tbaa !864
  %4 = icmp eq i32 %3, 1, !dbg !886
  br i1 %4, label %9, label %5, !dbg !887

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %3, 1, !dbg !889
  br i1 %6, label %7, label %21, !dbg !892

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !892

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @pubsubUnsubscribeAllChannels(%struct.client* nonnull %0, i32 1) #9, !dbg !893
  br label %21, !dbg !895

; <label>:11:                                     ; preds = %7, %11
  %12 = phi i64 [ 1, %7 ], [ %17, %11 ]
  %13 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !896, !tbaa !868
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 %12, !dbg !897
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !897, !tbaa !412
  %16 = tail call i32 @pubsubUnsubscribeChannel(%struct.client* nonnull %0, %struct.redisObject* %15, i32 1) #9, !dbg !898
  %17 = add nuw nsw i64 %12, 1, !dbg !899
  %18 = load i32, i32* %2, align 8, !dbg !900, !tbaa !864
  %19 = sext i32 %18 to i64, !dbg !889
  %20 = icmp slt i64 %17, %19, !dbg !889
  br i1 %20, label %11, label %21, !dbg !892, !llvm.loop !901

; <label>:21:                                     ; preds = %11, %5, %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !906
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !906, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !906
  %25 = load i64, i64* %24, align 8, !dbg !906, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !906
  %27 = load i64, i64* %26, align 8, !dbg !906, !tbaa !355
  %28 = add i64 %27, %25, !dbg !906
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !907
  %30 = load %struct.list*, %struct.list** %29, align 8, !dbg !907, !tbaa !358
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i64 0, i32 5, !dbg !907
  %32 = load i64, i64* %31, align 8, !dbg !907, !tbaa !359
  %33 = add i64 %28, %32, !dbg !908
  %34 = trunc i64 %33 to i32, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  %35 = icmp eq i32 %34, 0, !dbg !910
  br i1 %35, label %36, label %40, !dbg !911

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !912
  %38 = load i32, i32* %37, align 8, !dbg !913, !tbaa !876
  %39 = and i32 %38, -262145, !dbg !913
  store i32 %39, i32* %37, align 8, !dbg !913, !tbaa !876
  br label %40, !dbg !914

; <label>:40:                                     ; preds = %36, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  ret void, !dbg !915
}

; Function Attrs: noredzone nounwind
define dso_local void @psubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !916 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !922
  %3 = load i32, i32* %2, align 8, !dbg !922, !tbaa !864
  %4 = icmp sgt i32 %3, 1, !dbg !925
  br i1 %4, label %5, label %17, !dbg !926

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %7, !dbg !926

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i64 [ 1, %5 ], [ %13, %7 ]
  %9 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !927, !tbaa !868
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 %8, !dbg !928
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !928, !tbaa !412
  %12 = tail call i32 @pubsubSubscribePattern(%struct.client* nonnull %0, %struct.redisObject* %11) #9, !dbg !929
  %13 = add nuw nsw i64 %8, 1, !dbg !930
  %14 = load i32, i32* %2, align 8, !dbg !922, !tbaa !864
  %15 = sext i32 %14 to i64, !dbg !925
  %16 = icmp slt i64 %13, %15, !dbg !925
  br i1 %16, label %7, label %17, !dbg !926, !llvm.loop !931

; <label>:17:                                     ; preds = %7, %1
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !933
  %19 = load i32, i32* %18, align 8, !dbg !934, !tbaa !876
  %20 = or i32 %19, 262144, !dbg !934
  store i32 %20, i32* %18, align 8, !dbg !934, !tbaa !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  ret void, !dbg !935
}

; Function Attrs: noredzone nounwind
define dso_local void @punsubscribeCommand(%struct.client*) local_unnamed_addr #0 !dbg !936 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !943
  %3 = load i32, i32* %2, align 8, !dbg !943, !tbaa !864
  %4 = icmp eq i32 %3, 1, !dbg !944
  br i1 %4, label %9, label %5, !dbg !945

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %3, 1, !dbg !947
  br i1 %6, label %7, label %21, !dbg !950

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %11, !dbg !950

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @pubsubUnsubscribeAllPatterns(%struct.client* nonnull %0, i32 1) #9, !dbg !951
  br label %21, !dbg !953

; <label>:11:                                     ; preds = %7, %11
  %12 = phi i64 [ 1, %7 ], [ %17, %11 ]
  %13 = load %struct.redisObject**, %struct.redisObject*** %8, align 8, !dbg !954, !tbaa !868
  %14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 %12, !dbg !955
  %15 = load %struct.redisObject*, %struct.redisObject** %14, align 8, !dbg !955, !tbaa !412
  %16 = tail call i32 @pubsubUnsubscribePattern(%struct.client* nonnull %0, %struct.redisObject* %15, i32 1) #9, !dbg !956
  %17 = add nuw nsw i64 %12, 1, !dbg !957
  %18 = load i32, i32* %2, align 8, !dbg !958, !tbaa !864
  %19 = sext i32 %18 to i64, !dbg !947
  %20 = icmp slt i64 %17, %19, !dbg !947
  br i1 %20, label %11, label %21, !dbg !950, !llvm.loop !959

; <label>:21:                                     ; preds = %11, %5, %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !964
  %23 = load %struct.dict*, %struct.dict** %22, align 8, !dbg !964, !tbaa !348
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 0, i32 3, !dbg !964
  %25 = load i64, i64* %24, align 8, !dbg !964, !tbaa !355
  %26 = getelementptr inbounds %struct.dict, %struct.dict* %23, i64 0, i32 2, i64 1, i32 3, !dbg !964
  %27 = load i64, i64* %26, align 8, !dbg !964, !tbaa !355
  %28 = add i64 %27, %25, !dbg !964
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !965
  %30 = load %struct.list*, %struct.list** %29, align 8, !dbg !965, !tbaa !358
  %31 = getelementptr inbounds %struct.list, %struct.list* %30, i64 0, i32 5, !dbg !965
  %32 = load i64, i64* %31, align 8, !dbg !965, !tbaa !359
  %33 = add i64 %28, %32, !dbg !966
  %34 = trunc i64 %33 to i32, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  %35 = icmp eq i32 %34, 0, !dbg !968
  br i1 %35, label %36, label %40, !dbg !969

; <label>:36:                                     ; preds = %21
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !970
  %38 = load i32, i32* %37, align 8, !dbg !971, !tbaa !876
  %39 = and i32 %38, -262145, !dbg !971
  store i32 %39, i32* %37, align 8, !dbg !971, !tbaa !876
  br label %40, !dbg !972

; <label>:40:                                     ; preds = %36, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  ret void, !dbg !973
}

; Function Attrs: noredzone nounwind
define dso_local void @publishCommand(%struct.client*) local_unnamed_addr #0 !dbg !974 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !979
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !979, !tbaa !868
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !980
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !980, !tbaa !412
  %6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 2, !dbg !981
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !981, !tbaa !412
  %8 = tail call i32 @pubsubPublishMessage(%struct.redisObject* %5, %struct.redisObject* %7) #9, !dbg !982
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !984, !tbaa !986
  %10 = icmp eq i32 %9, 0, !dbg !987
  br i1 %10, label %17, label %11, !dbg !988

; <label>:11:                                     ; preds = %1
  %12 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !989, !tbaa !868
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 1, !dbg !990
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !990, !tbaa !412
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 2, !dbg !991
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !991, !tbaa !412
  tail call void @clusterPropagatePublish(%struct.redisObject* %14, %struct.redisObject* %16) #6, !dbg !992
  br label %18, !dbg !992

; <label>:17:                                     ; preds = %1
  tail call void @forceCommandPropagation(%struct.client* nonnull %0, i32 2) #6, !dbg !993
  br label %18

; <label>:18:                                     ; preds = %17, %11
  %19 = sext i32 %8 to i64, !dbg !994
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %19) #6, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  ret void, !dbg !996
}

; Function Attrs: noredzone
declare dso_local void @clusterPropagatePublish(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @forceCommandPropagation(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pubsubCommand(%struct.client*) local_unnamed_addr #0 !dbg !997 {
  %2 = alloca [4 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1026
  %4 = load i32, i32* %3, align 8, !dbg !1026, !tbaa !864
  %5 = icmp eq i32 %4, 2, !dbg !1027
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1028, !tbaa !868
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1028, !tbaa !412
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2
  %11 = load i8*, i8** %10, align 8, !dbg !1028, !tbaa !767
  br i1 %5, label %12, label %18, !dbg !1029

; <label>:12:                                     ; preds = %1
  %13 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1030
  %14 = icmp eq i32 %13, 0, !dbg !1030
  br i1 %14, label %15, label %18, !dbg !1031

; <label>:15:                                     ; preds = %12
  %16 = bitcast [4 x i8*]* %2 to i8*, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #8, !dbg !1032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %16, i8* align 16 bitcast ([4 x i8*]* @pubsubCommand.help to i8*), i64 32, i1 false), !dbg !1033
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0, !dbg !1034
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %17) #6, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #8, !dbg !1036
  br label %154, !dbg !1037

; <label>:18:                                     ; preds = %1, %12
  %19 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1038
  %20 = icmp eq i32 %19, 0, !dbg !1038
  %21 = and i32 %4, -2, !dbg !1039
  %22 = icmp eq i32 %21, 2, !dbg !1039
  %23 = and i1 %22, %20, !dbg !1040
  br i1 %23, label %24, label %111, !dbg !1040

; <label>:24:                                     ; preds = %18
  br i1 %5, label %30, label %25, !dbg !1041

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1042
  %27 = load %struct.redisObject*, %struct.redisObject** %26, align 8, !dbg !1042, !tbaa !412
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !1043
  %29 = load i8*, i8** %28, align 8, !dbg !1043, !tbaa !767
  br label %30, !dbg !1041

; <label>:30:                                     ; preds = %24, %25
  %31 = phi i8* [ %29, %25 ], [ null, %24 ], !dbg !1041
  %32 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !1045, !tbaa !385
  %33 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %32) #6, !dbg !1046
  %34 = tail call i8* @addDeferredMultiBulkLength(%struct.client* nonnull %0) #6, !dbg !1049
  %35 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #6, !dbg !1051
  %36 = icmp eq %struct.dictEntry* %35, null, !dbg !1053
  br i1 %36, label %109, label %37, !dbg !1054

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
  br label %47, !dbg !1054

; <label>:47:                                     ; preds = %37, %105
  %48 = phi %struct.dictEntry* [ %35, %37 ], [ %107, %105 ]
  %49 = phi i64 [ 0, %37 ], [ %106, %105 ]
  %50 = bitcast %struct.dictEntry* %48 to %struct.redisObject**, !dbg !1055
  %51 = load %struct.redisObject*, %struct.redisObject** %50, align 8, !dbg !1055, !tbaa !619
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i64 0, i32 2, !dbg !1057
  %53 = load i8*, i8** %52, align 8, !dbg !1057, !tbaa !767
  br i1 %38, label %103, label %54, !dbg !1059

; <label>:54:                                     ; preds = %47
  %55 = load i8, i8* %39, align 1, !dbg !1063, !tbaa !405
  %56 = trunc i8 %55 to i3, !dbg !1065
  switch i3 %56, label %71 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %63
    i3 3, label %66
    i3 -4, label %69
  ], !dbg !1065

; <label>:57:                                     ; preds = %54
  %58 = lshr i8 %55, 3, !dbg !1066
  %59 = zext i8 %58 to i64, !dbg !1066
  br label %71, !dbg !1067

; <label>:60:                                     ; preds = %54
  %61 = load i8, i8* %40, align 1, !dbg !1068, !tbaa !405
  %62 = zext i8 %61 to i64, !dbg !1069
  br label %71, !dbg !1070

; <label>:63:                                     ; preds = %54
  %64 = load i16, i16* %42, align 1, !dbg !1071, !tbaa !791
  %65 = zext i16 %64 to i64, !dbg !1072
  br label %71, !dbg !1073

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* %44, align 1, !dbg !1074, !tbaa !796
  %68 = zext i32 %67 to i64, !dbg !1075
  br label %71, !dbg !1076

; <label>:69:                                     ; preds = %54
  %70 = load i64, i64* %46, align 1, !dbg !1077, !tbaa !800
  br label %71, !dbg !1078

; <label>:71:                                     ; preds = %54, %57, %60, %63, %66, %69
  %72 = phi i64 [ %70, %69 ], [ %68, %66 ], [ %65, %63 ], [ %62, %60 ], [ %59, %57 ], [ 0, %54 ], !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  %73 = trunc i64 %72 to i32, !dbg !1081
  %74 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !1084
  %75 = load i8, i8* %74, align 1, !dbg !1084, !tbaa !405
  %76 = trunc i8 %75 to i3, !dbg !1086
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !1086

; <label>:77:                                     ; preds = %71
  %78 = lshr i8 %75, 3, !dbg !1087
  %79 = zext i8 %78 to i64, !dbg !1087
  br label %98, !dbg !1088

; <label>:80:                                     ; preds = %71
  %81 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !1089
  %82 = load i8, i8* %81, align 1, !dbg !1090, !tbaa !405
  %83 = zext i8 %82 to i64, !dbg !1089
  br label %98, !dbg !1091

; <label>:84:                                     ; preds = %71
  %85 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !1092
  %86 = bitcast i8* %85 to i16*, !dbg !1093
  %87 = load i16, i16* %86, align 1, !dbg !1093, !tbaa !791
  %88 = zext i16 %87 to i64, !dbg !1092
  br label %98, !dbg !1094

; <label>:89:                                     ; preds = %71
  %90 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !1095
  %91 = bitcast i8* %90 to i32*, !dbg !1096
  %92 = load i32, i32* %91, align 1, !dbg !1096, !tbaa !796
  %93 = zext i32 %92 to i64, !dbg !1095
  br label %98, !dbg !1097

; <label>:94:                                     ; preds = %71
  %95 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !1098
  %96 = bitcast i8* %95 to i64*, !dbg !1099
  %97 = load i64, i64* %96, align 1, !dbg !1099, !tbaa !800
  br label %98, !dbg !1100

; <label>:98:                                     ; preds = %71, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %71 ], !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  %100 = trunc i64 %99 to i32, !dbg !1103
  %101 = tail call i32 @stringmatchlen(i8* nonnull %31, i32 %73, i8* nonnull %53, i32 %100, i32 0) #6, !dbg !1104
  %102 = icmp eq i32 %101, 0, !dbg !1104
  br i1 %102, label %105, label %103, !dbg !1105

; <label>:103:                                    ; preds = %98, %47
  tail call void @addReplyBulk(%struct.client* %0, %struct.redisObject* %51) #6, !dbg !1106
  %104 = add nsw i64 %49, 1, !dbg !1108
  br label %105, !dbg !1109

; <label>:105:                                    ; preds = %98, %103
  %106 = phi i64 [ %104, %103 ], [ %49, %98 ], !dbg !1110
  %107 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %33) #6, !dbg !1051
  %108 = icmp eq %struct.dictEntry* %107, null, !dbg !1053
  br i1 %108, label %109, label %47, !dbg !1054, !llvm.loop !1111

; <label>:109:                                    ; preds = %105, %30
  %110 = phi i64 [ 0, %30 ], [ %106, %105 ], !dbg !1113
  tail call void @dictReleaseIterator(%struct.dictIterator* %33) #6, !dbg !1114
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %34, i64 %110) #6, !dbg !1115
  br label %154, !dbg !1116

; <label>:111:                                    ; preds = %18
  %112 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1117
  %113 = icmp eq i32 %112, 0, !dbg !1117
  %114 = icmp sgt i32 %4, 1, !dbg !1118
  %115 = and i1 %114, %113, !dbg !1119
  br i1 %115, label %116, label %144, !dbg !1119

; <label>:116:                                    ; preds = %111
  %117 = shl i32 %4, 1, !dbg !1120
  %118 = add i32 %117, -4, !dbg !1120
  %119 = sext i32 %118 to i64, !dbg !1121
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %119) #6, !dbg !1122
  %120 = load i32, i32* %3, align 8, !dbg !1124, !tbaa !864
  %121 = icmp sgt i32 %120, 2, !dbg !1125
  br i1 %121, label %122, label %154, !dbg !1126

; <label>:122:                                    ; preds = %116, %138
  %123 = phi i64 [ %140, %138 ], [ 2, %116 ]
  %124 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 255), align 8, !dbg !1127, !tbaa !385
  %125 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1128, !tbaa !868
  %126 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %125, i64 %123, !dbg !1129
  %127 = bitcast %struct.redisObject** %126 to i8**, !dbg !1129
  %128 = load i8*, i8** %127, align 8, !dbg !1129, !tbaa !412
  %129 = tail call i8* @dictFetchValue(%struct.dict* %124, i8* %128) #6, !dbg !1130
  %130 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1131, !tbaa !868
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 %123, !dbg !1132
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !1132, !tbaa !412
  tail call void @addReplyBulk(%struct.client* nonnull %0, %struct.redisObject* %132) #6, !dbg !1133
  %133 = icmp eq i8* %129, null, !dbg !1134
  br i1 %133, label %138, label %134, !dbg !1134

; <label>:134:                                    ; preds = %122
  %135 = getelementptr inbounds i8, i8* %129, i64 40, !dbg !1136
  %136 = bitcast i8* %135 to i64*, !dbg !1136
  %137 = load i64, i64* %136, align 8, !dbg !1136, !tbaa !359
  br label %138, !dbg !1134

; <label>:138:                                    ; preds = %122, %134
  %139 = phi i64 [ %137, %134 ], [ 0, %122 ], !dbg !1134
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %139) #6, !dbg !1137
  %140 = add nuw nsw i64 %123, 1, !dbg !1138
  %141 = load i32, i32* %3, align 8, !dbg !1124, !tbaa !864
  %142 = sext i32 %141 to i64, !dbg !1125
  %143 = icmp slt i64 %140, %142, !dbg !1125
  br i1 %143, label %122, label %154, !dbg !1126, !llvm.loop !1139

; <label>:144:                                    ; preds = %111
  %145 = tail call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1141
  %146 = icmp ne i32 %145, 0, !dbg !1141
  %147 = xor i1 %5, true, !dbg !1143
  %148 = or i1 %146, %147, !dbg !1143
  br i1 %148, label %153, label %149, !dbg !1143

; <label>:149:                                    ; preds = %144
  %150 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 256), align 8, !dbg !1144, !tbaa !515
  %151 = getelementptr inbounds %struct.list, %struct.list* %150, i64 0, i32 5, !dbg !1144
  %152 = load i64, i64* %151, align 8, !dbg !1144, !tbaa !359
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %152) #6, !dbg !1146
  br label %154, !dbg !1147

; <label>:153:                                    ; preds = %144
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #6, !dbg !1148
  br label %154

; <label>:154:                                    ; preds = %138, %116, %109, %149, %153, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  ret void, !dbg !1150
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

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
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone nounwind readonly }

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
!424 = !DILocation(line: 52, column: 5, scope: !341, inlinedAt: !420)
!425 = !DILocation(line: 82, column: 24, scope: !363)
!426 = !DILocation(line: 82, column: 5, scope: !363)
!427 = !DILocation(line: 83, column: 5, scope: !363)
!428 = distinct !DISubprogram(name: "pubsubUnsubscribeChannel", scope: !1, file: !1, line: 88, type: !429, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!75, !69, !180, !75}
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DILocalVariable(name: "c", arg: 1, scope: !428, file: !1, line: 88, type: !69)
!433 = !DILocalVariable(name: "channel", arg: 2, scope: !428, file: !1, line: 88, type: !180)
!434 = !DILocalVariable(name: "notify", arg: 3, scope: !428, file: !1, line: 88, type: !75)
!435 = !DILocalVariable(name: "de", scope: !428, file: !1, line: 89, type: !120)
!436 = !DILocalVariable(name: "clients", scope: !428, file: !1, line: 90, type: !153)
!437 = !DILocalVariable(name: "ln", scope: !428, file: !1, line: 91, type: !159)
!438 = !DILocalVariable(name: "retval", scope: !428, file: !1, line: 92, type: !75)
!439 = !DILocation(line: 88, column: 38, scope: !428)
!440 = !DILocation(line: 88, column: 47, scope: !428)
!441 = !DILocation(line: 88, column: 60, scope: !428)
!442 = !DILocation(line: 92, column: 9, scope: !428)
!443 = !DILocation(line: 95, column: 5, scope: !428)
!444 = !DILocation(line: 97, column: 23, scope: !445)
!445 = distinct !DILexicalBlock(scope: !428, file: !1, line: 97, column: 9)
!446 = !DILocation(line: 97, column: 39, scope: !445)
!447 = !DILocation(line: 97, column: 9, scope: !445)
!448 = !DILocation(line: 97, column: 48, scope: !445)
!449 = !DILocation(line: 97, column: 9, scope: !428)
!450 = !DILocation(line: 100, column: 30, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !1, line: 97, column: 60)
!452 = !DILocation(line: 100, column: 14, scope: !451)
!453 = !DILocation(line: 89, column: 16, scope: !428)
!454 = !DILocation(line: 101, column: 9, scope: !451)
!455 = !DILocation(line: 102, column: 19, scope: !451)
!456 = !DILocation(line: 90, column: 11, scope: !428)
!457 = !DILocation(line: 103, column: 36, scope: !451)
!458 = !DILocation(line: 103, column: 14, scope: !451)
!459 = !DILocation(line: 91, column: 15, scope: !428)
!460 = !DILocation(line: 104, column: 9, scope: !451)
!461 = !DILocation(line: 105, column: 9, scope: !451)
!462 = !DILocation(line: 106, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !451, file: !1, line: 106, column: 13)
!464 = !DILocation(line: 106, column: 33, scope: !463)
!465 = !DILocation(line: 106, column: 13, scope: !451)
!466 = !DILocation(line: 110, column: 31, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !1, line: 106, column: 39)
!468 = !DILocation(line: 110, column: 13, scope: !467)
!469 = !DILocation(line: 111, column: 9, scope: !467)
!470 = !DILocation(line: 0, scope: !428)
!471 = !DILocation(line: 114, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !428, file: !1, line: 114, column: 9)
!473 = !DILocation(line: 114, column: 9, scope: !428)
!474 = !DILocation(line: 115, column: 20, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !1, line: 114, column: 17)
!476 = !DILocation(line: 115, column: 9, scope: !475)
!477 = !DILocation(line: 116, column: 27, scope: !475)
!478 = !{!416, !316, i64 272}
!479 = !DILocation(line: 116, column: 9, scope: !475)
!480 = !DILocation(line: 117, column: 9, scope: !475)
!481 = !DILocation(line: 118, column: 28, scope: !475)
!482 = !DILocation(line: 119, column: 24, scope: !475)
!483 = !DILocation(line: 118, column: 56, scope: !475)
!484 = !DILocation(line: 118, column: 9, scope: !475)
!485 = !DILocation(line: 121, column: 5, scope: !475)
!486 = !DILocation(line: 122, column: 5, scope: !428)
!487 = !DILocation(line: 123, column: 5, scope: !428)
!488 = distinct !DISubprogram(name: "pubsubSubscribePattern", scope: !1, file: !1, line: 127, type: !364, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DILocalVariable(name: "c", arg: 1, scope: !488, file: !1, line: 127, type: !69)
!491 = !DILocalVariable(name: "pattern", arg: 2, scope: !488, file: !1, line: 127, type: !180)
!492 = !DILocalVariable(name: "retval", scope: !488, file: !1, line: 128, type: !75)
!493 = !DILocalVariable(name: "pat", scope: !494, file: !1, line: 132, type: !63)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 130, column: 60)
!495 = distinct !DILexicalBlock(scope: !488, file: !1, line: 130, column: 9)
!496 = !DILocation(line: 127, column: 36, scope: !488)
!497 = !DILocation(line: 127, column: 45, scope: !488)
!498 = !DILocation(line: 128, column: 9, scope: !488)
!499 = !DILocation(line: 130, column: 26, scope: !495)
!500 = !DILocation(line: 130, column: 42, scope: !495)
!501 = !DILocation(line: 130, column: 9, scope: !495)
!502 = !DILocation(line: 130, column: 51, scope: !495)
!503 = !DILocation(line: 130, column: 9, scope: !488)
!504 = !DILocation(line: 133, column: 28, scope: !494)
!505 = !DILocation(line: 133, column: 9, scope: !494)
!506 = !DILocation(line: 134, column: 9, scope: !494)
!507 = !DILocation(line: 135, column: 15, scope: !494)
!508 = !DILocation(line: 132, column: 24, scope: !494)
!509 = !DILocation(line: 136, column: 24, scope: !494)
!510 = !DILocation(line: 136, column: 14, scope: !494)
!511 = !DILocation(line: 136, column: 22, scope: !494)
!512 = !DILocation(line: 137, column: 14, scope: !494)
!513 = !DILocation(line: 137, column: 21, scope: !494)
!514 = !DILocation(line: 138, column: 32, scope: !494)
!515 = !{!386, !316, i64 2912}
!516 = !DILocation(line: 138, column: 9, scope: !494)
!517 = !DILocation(line: 139, column: 5, scope: !494)
!518 = !DILocation(line: 0, scope: !488)
!519 = !DILocation(line: 141, column: 16, scope: !488)
!520 = !DILocation(line: 141, column: 5, scope: !488)
!521 = !DILocation(line: 142, column: 23, scope: !488)
!522 = !{!416, !316, i64 280}
!523 = !DILocation(line: 142, column: 5, scope: !488)
!524 = !DILocation(line: 143, column: 5, scope: !488)
!525 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !526)
!526 = distinct !DILocation(line: 144, column: 24, scope: !488)
!527 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !526)
!528 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !526)
!529 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !526)
!530 = !DILocation(line: 52, column: 5, scope: !341, inlinedAt: !526)
!531 = !DILocation(line: 144, column: 24, scope: !488)
!532 = !DILocation(line: 144, column: 5, scope: !488)
!533 = !DILocation(line: 145, column: 5, scope: !488)
!534 = distinct !DISubprogram(name: "pubsubUnsubscribePattern", scope: !1, file: !1, line: 150, type: !429, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !535)
!535 = !{!536, !537, !538, !539, !540, !541}
!536 = !DILocalVariable(name: "c", arg: 1, scope: !534, file: !1, line: 150, type: !69)
!537 = !DILocalVariable(name: "pattern", arg: 2, scope: !534, file: !1, line: 150, type: !180)
!538 = !DILocalVariable(name: "notify", arg: 3, scope: !534, file: !1, line: 150, type: !75)
!539 = !DILocalVariable(name: "ln", scope: !534, file: !1, line: 151, type: !159)
!540 = !DILocalVariable(name: "pat", scope: !534, file: !1, line: 152, type: !64)
!541 = !DILocalVariable(name: "retval", scope: !534, file: !1, line: 153, type: !75)
!542 = !DILocation(line: 150, column: 38, scope: !534)
!543 = !DILocation(line: 150, column: 47, scope: !534)
!544 = !DILocation(line: 150, column: 60, scope: !534)
!545 = !DILocation(line: 152, column: 5, scope: !534)
!546 = !DILocation(line: 153, column: 9, scope: !534)
!547 = !DILocation(line: 155, column: 5, scope: !534)
!548 = !DILocation(line: 156, column: 32, scope: !549)
!549 = distinct !DILexicalBlock(scope: !534, file: !1, line: 156, column: 9)
!550 = !DILocation(line: 156, column: 48, scope: !549)
!551 = !DILocation(line: 156, column: 15, scope: !549)
!552 = !DILocation(line: 151, column: 15, scope: !534)
!553 = !DILocation(line: 156, column: 58, scope: !549)
!554 = !DILocation(line: 156, column: 9, scope: !534)
!555 = !DILocation(line: 158, column: 24, scope: !556)
!556 = distinct !DILexicalBlock(scope: !549, file: !1, line: 156, column: 67)
!557 = !DILocation(line: 158, column: 9, scope: !556)
!558 = !DILocation(line: 159, column: 13, scope: !556)
!559 = !DILocation(line: 159, column: 20, scope: !556)
!560 = !DILocation(line: 160, column: 13, scope: !556)
!561 = !DILocation(line: 160, column: 21, scope: !556)
!562 = !DILocation(line: 161, column: 35, scope: !556)
!563 = !DILocation(line: 161, column: 14, scope: !556)
!564 = !DILocation(line: 162, column: 28, scope: !556)
!565 = !DILocation(line: 162, column: 9, scope: !556)
!566 = !DILocation(line: 163, column: 5, scope: !556)
!567 = !DILocation(line: 0, scope: !534)
!568 = !DILocation(line: 165, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !534, file: !1, line: 165, column: 9)
!570 = !DILocation(line: 165, column: 9, scope: !534)
!571 = !DILocation(line: 166, column: 20, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 165, column: 17)
!573 = !DILocation(line: 166, column: 9, scope: !572)
!574 = !DILocation(line: 167, column: 27, scope: !572)
!575 = !{!416, !316, i64 288}
!576 = !DILocation(line: 167, column: 9, scope: !572)
!577 = !DILocation(line: 168, column: 9, scope: !572)
!578 = !DILocation(line: 169, column: 28, scope: !572)
!579 = !DILocation(line: 170, column: 24, scope: !572)
!580 = !DILocation(line: 169, column: 56, scope: !572)
!581 = !DILocation(line: 169, column: 9, scope: !572)
!582 = !DILocation(line: 171, column: 5, scope: !572)
!583 = !DILocation(line: 172, column: 5, scope: !534)
!584 = !DILocation(line: 174, column: 1, scope: !534)
!585 = !DILocation(line: 173, column: 5, scope: !534)
!586 = distinct !DISubprogram(name: "pubsubUnsubscribeAllChannels", scope: !1, file: !1, line: 178, type: !587, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{!75, !69, !75}
!589 = !{!590, !591, !592, !604, !605, !606}
!590 = !DILocalVariable(name: "c", arg: 1, scope: !586, file: !1, line: 178, type: !69)
!591 = !DILocalVariable(name: "notify", arg: 2, scope: !586, file: !1, line: 178, type: !75)
!592 = !DILocalVariable(name: "di", scope: !586, file: !1, line: 179, type: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !84, line: 95, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !84, line: 88, size: 384, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !595, file: !84, line: 89, baseType: !82, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !595, file: !84, line: 90, baseType: !133, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !595, file: !84, line: 91, baseType: !75, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !595, file: !84, line: 91, baseType: !75, size: 32, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !595, file: !84, line: 92, baseType: !120, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !595, file: !84, line: 92, baseType: !120, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !595, file: !84, line: 94, baseType: !151, size: 64, offset: 320)
!604 = !DILocalVariable(name: "de", scope: !586, file: !1, line: 180, type: !120)
!605 = !DILocalVariable(name: "count", scope: !586, file: !1, line: 181, type: !75)
!606 = !DILocalVariable(name: "channel", scope: !607, file: !1, line: 184, type: !180)
!607 = distinct !DILexicalBlock(scope: !586, file: !1, line: 183, column: 40)
!608 = !DILocation(line: 178, column: 42, scope: !586)
!609 = !DILocation(line: 178, column: 49, scope: !586)
!610 = !DILocation(line: 179, column: 47, scope: !586)
!611 = !DILocation(line: 179, column: 24, scope: !586)
!612 = !DILocation(line: 179, column: 19, scope: !586)
!613 = !DILocation(line: 181, column: 9, scope: !586)
!614 = !DILocation(line: 183, column: 17, scope: !586)
!615 = !DILocation(line: 180, column: 16, scope: !586)
!616 = !DILocation(line: 183, column: 31, scope: !586)
!617 = !DILocation(line: 183, column: 5, scope: !586)
!618 = !DILocation(line: 184, column: 25, scope: !607)
!619 = !{!620, !316, i64 0}
!620 = !{!"dictEntry", !316, i64 0, !317, i64 8, !316, i64 16}
!621 = !DILocation(line: 184, column: 15, scope: !607)
!622 = !DILocation(line: 186, column: 18, scope: !607)
!623 = !DILocation(line: 186, column: 15, scope: !607)
!624 = distinct !{!624, !617, !625}
!625 = !DILocation(line: 187, column: 5, scope: !586)
!626 = !DILocation(line: 0, scope: !607)
!627 = !DILocation(line: 189, column: 9, scope: !628)
!628 = distinct !DILexicalBlock(scope: !586, file: !1, line: 189, column: 9)
!629 = !DILocation(line: 189, column: 25, scope: !628)
!630 = !DILocation(line: 189, column: 16, scope: !628)
!631 = !DILocation(line: 190, column: 20, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !1, line: 189, column: 31)
!633 = !DILocation(line: 190, column: 9, scope: !632)
!634 = !DILocation(line: 191, column: 27, scope: !632)
!635 = !DILocation(line: 191, column: 9, scope: !632)
!636 = !DILocation(line: 192, column: 27, scope: !632)
!637 = !{!416, !316, i64 80}
!638 = !DILocation(line: 192, column: 9, scope: !632)
!639 = !DILocation(line: 193, column: 28, scope: !632)
!640 = !DILocation(line: 194, column: 24, scope: !632)
!641 = !DILocation(line: 193, column: 56, scope: !632)
!642 = !DILocation(line: 193, column: 9, scope: !632)
!643 = !DILocation(line: 195, column: 5, scope: !632)
!644 = !DILocation(line: 196, column: 5, scope: !586)
!645 = !DILocation(line: 197, column: 5, scope: !586)
!646 = distinct !DISubprogram(name: "pubsubUnsubscribeAllPatterns", scope: !1, file: !1, line: 202, type: !587, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !647)
!647 = !{!648, !649, !650, !651, !657, !658}
!648 = !DILocalVariable(name: "c", arg: 1, scope: !646, file: !1, line: 202, type: !69)
!649 = !DILocalVariable(name: "notify", arg: 2, scope: !646, file: !1, line: 202, type: !75)
!650 = !DILocalVariable(name: "ln", scope: !646, file: !1, line: 203, type: !159)
!651 = !DILocalVariable(name: "li", scope: !646, file: !1, line: 204, type: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !155, line: 45, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !155, line: 42, size: 128, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !155, line: 43, baseType: !159, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !653, file: !155, line: 44, baseType: !75, size: 32, offset: 64)
!657 = !DILocalVariable(name: "count", scope: !646, file: !1, line: 205, type: !75)
!658 = !DILocalVariable(name: "pattern", scope: !659, file: !1, line: 209, type: !180)
!659 = distinct !DILexicalBlock(scope: !646, file: !1, line: 208, column: 42)
!660 = !DILocation(line: 202, column: 42, scope: !646)
!661 = !DILocation(line: 202, column: 49, scope: !646)
!662 = !DILocation(line: 204, column: 5, scope: !646)
!663 = !DILocation(line: 205, column: 9, scope: !646)
!664 = !DILocation(line: 207, column: 19, scope: !646)
!665 = !DILocation(line: 204, column: 14, scope: !646)
!666 = !DILocation(line: 207, column: 5, scope: !646)
!667 = !DILocation(line: 208, column: 18, scope: !646)
!668 = !DILocation(line: 203, column: 15, scope: !646)
!669 = !DILocation(line: 208, column: 33, scope: !646)
!670 = !DILocation(line: 208, column: 5, scope: !646)
!671 = !DILocation(line: 209, column: 29, scope: !659)
!672 = !{!673, !316, i64 16}
!673 = !{!"listNode", !316, i64 0, !316, i64 8, !316, i64 16}
!674 = !DILocation(line: 209, column: 15, scope: !659)
!675 = !DILocation(line: 211, column: 18, scope: !659)
!676 = !DILocation(line: 211, column: 15, scope: !659)
!677 = distinct !{!677, !670, !678}
!678 = !DILocation(line: 212, column: 5, scope: !646)
!679 = !DILocation(line: 0, scope: !659)
!680 = !DILocation(line: 213, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !646, file: !1, line: 213, column: 9)
!682 = !DILocation(line: 213, column: 25, scope: !681)
!683 = !DILocation(line: 213, column: 16, scope: !681)
!684 = !DILocation(line: 215, column: 20, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !1, line: 213, column: 31)
!686 = !DILocation(line: 215, column: 9, scope: !685)
!687 = !DILocation(line: 216, column: 27, scope: !685)
!688 = !DILocation(line: 216, column: 9, scope: !685)
!689 = !DILocation(line: 217, column: 27, scope: !685)
!690 = !DILocation(line: 217, column: 9, scope: !685)
!691 = !DILocation(line: 218, column: 28, scope: !685)
!692 = !DILocation(line: 219, column: 24, scope: !685)
!693 = !DILocation(line: 218, column: 56, scope: !685)
!694 = !DILocation(line: 218, column: 9, scope: !685)
!695 = !DILocation(line: 220, column: 5, scope: !685)
!696 = !DILocation(line: 222, column: 1, scope: !646)
!697 = !DILocation(line: 221, column: 5, scope: !646)
!698 = distinct !DISubprogram(name: "pubsubPublishMessage", scope: !1, file: !1, line: 225, type: !699, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!75, !180, !180}
!701 = !{!702, !703, !704, !705, !706, !707, !708, !711, !712, !713, !715}
!702 = !DILocalVariable(name: "channel", arg: 1, scope: !698, file: !1, line: 225, type: !180)
!703 = !DILocalVariable(name: "message", arg: 2, scope: !698, file: !1, line: 225, type: !180)
!704 = !DILocalVariable(name: "receivers", scope: !698, file: !1, line: 226, type: !75)
!705 = !DILocalVariable(name: "de", scope: !698, file: !1, line: 227, type: !120)
!706 = !DILocalVariable(name: "ln", scope: !698, file: !1, line: 228, type: !159)
!707 = !DILocalVariable(name: "li", scope: !698, file: !1, line: 229, type: !652)
!708 = !DILocalVariable(name: "list", scope: !709, file: !1, line: 234, type: !153)
!709 = distinct !DILexicalBlock(scope: !710, file: !1, line: 233, column: 13)
!710 = distinct !DILexicalBlock(scope: !698, file: !1, line: 233, column: 9)
!711 = !DILocalVariable(name: "ln", scope: !709, file: !1, line: 235, type: !159)
!712 = !DILocalVariable(name: "li", scope: !709, file: !1, line: 236, type: !652)
!713 = !DILocalVariable(name: "c", scope: !714, file: !1, line: 240, type: !69)
!714 = distinct !DILexicalBlock(scope: !709, file: !1, line: 239, column: 46)
!715 = !DILocalVariable(name: "pat", scope: !716, file: !1, line: 254, type: !63)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 253, column: 46)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 250, column: 45)
!718 = distinct !DILexicalBlock(scope: !698, file: !1, line: 250, column: 9)
!719 = !DILocation(line: 225, column: 32, scope: !698)
!720 = !DILocation(line: 225, column: 47, scope: !698)
!721 = !DILocation(line: 226, column: 9, scope: !698)
!722 = !DILocation(line: 229, column: 5, scope: !698)
!723 = !DILocation(line: 232, column: 26, scope: !698)
!724 = !DILocation(line: 232, column: 42, scope: !698)
!725 = !DILocation(line: 232, column: 10, scope: !698)
!726 = !DILocation(line: 227, column: 16, scope: !698)
!727 = !DILocation(line: 233, column: 9, scope: !710)
!728 = !DILocation(line: 233, column: 9, scope: !698)
!729 = !DILocation(line: 234, column: 22, scope: !709)
!730 = !DILocation(line: 234, column: 15, scope: !709)
!731 = !DILocation(line: 236, column: 9, scope: !709)
!732 = !DILocation(line: 236, column: 18, scope: !709)
!733 = !DILocation(line: 238, column: 9, scope: !709)
!734 = !DILocation(line: 239, column: 22, scope: !709)
!735 = !DILocation(line: 235, column: 19, scope: !709)
!736 = !DILocation(line: 239, column: 37, scope: !709)
!737 = !DILocation(line: 239, column: 9, scope: !709)
!738 = !DILocation(line: 240, column: 29, scope: !714)
!739 = !DILocation(line: 240, column: 21, scope: !714)
!740 = !DILocation(line: 242, column: 24, scope: !714)
!741 = !DILocation(line: 242, column: 13, scope: !714)
!742 = !DILocation(line: 243, column: 31, scope: !714)
!743 = !{!416, !316, i64 248}
!744 = !DILocation(line: 243, column: 13, scope: !714)
!745 = !DILocation(line: 244, column: 13, scope: !714)
!746 = !DILocation(line: 245, column: 13, scope: !714)
!747 = !DILocation(line: 246, column: 22, scope: !714)
!748 = distinct !{!748, !737, !749}
!749 = !DILocation(line: 247, column: 9, scope: !709)
!750 = !DILocation(line: 0, scope: !714)
!751 = !DILocation(line: 248, column: 5, scope: !710)
!752 = !DILocation(line: 248, column: 5, scope: !709)
!753 = !DILocation(line: 250, column: 9, scope: !718)
!754 = !DILocation(line: 250, column: 9, scope: !698)
!755 = !DILocation(line: 229, column: 14, scope: !698)
!756 = !DILocation(line: 251, column: 9, scope: !717)
!757 = !DILocation(line: 252, column: 19, scope: !717)
!758 = !DILocation(line: 253, column: 22, scope: !717)
!759 = !DILocation(line: 228, column: 15, scope: !698)
!760 = !DILocation(line: 253, column: 37, scope: !717)
!761 = !DILocation(line: 253, column: 9, scope: !717)
!762 = !DILocation(line: 254, column: 38, scope: !716)
!763 = !DILocation(line: 254, column: 28, scope: !716)
!764 = !DILocation(line: 256, column: 44, scope: !765)
!765 = distinct !DILexicalBlock(scope: !716, file: !1, line: 256, column: 17)
!766 = !DILocation(line: 256, column: 53, scope: !765)
!767 = !{!768, !316, i64 8}
!768 = !{!"redisObject", !351, i64 0, !351, i64 0, !351, i64 1, !351, i64 4, !316, i64 8}
!769 = !DILocalVariable(name: "s", arg: 1, scope: !770, file: !9, line: 87, type: !775)
!770 = distinct !DISubprogram(name: "sdslen", scope: !9, file: !9, line: 87, type: !771, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !776)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !775}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !774, line: 58, baseType: !49)
!774 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!776 = !{!769, !777}
!777 = !DILocalVariable(name: "flags", scope: !770, file: !9, line: 88, type: !16)
!778 = !DILocation(line: 87, column: 39, scope: !770, inlinedAt: !779)
!779 = distinct !DILocation(line: 257, column: 33, scope: !765)
!780 = !DILocation(line: 88, column: 27, scope: !770, inlinedAt: !779)
!781 = !DILocation(line: 88, column: 19, scope: !770, inlinedAt: !779)
!782 = !DILocation(line: 89, column: 5, scope: !770, inlinedAt: !779)
!783 = !DILocation(line: 91, column: 20, scope: !784, inlinedAt: !779)
!784 = distinct !DILexicalBlock(scope: !770, file: !9, line: 89, column: 33)
!785 = !DILocation(line: 91, column: 13, scope: !784, inlinedAt: !779)
!786 = !DILocation(line: 93, column: 20, scope: !784, inlinedAt: !779)
!787 = !DILocation(line: 93, column: 34, scope: !784, inlinedAt: !779)
!788 = !DILocation(line: 93, column: 13, scope: !784, inlinedAt: !779)
!789 = !DILocation(line: 95, column: 20, scope: !784, inlinedAt: !779)
!790 = !DILocation(line: 95, column: 35, scope: !784, inlinedAt: !779)
!791 = !{!792, !792, i64 0}
!792 = !{!"short", !317, i64 0}
!793 = !DILocation(line: 95, column: 13, scope: !784, inlinedAt: !779)
!794 = !DILocation(line: 97, column: 20, scope: !784, inlinedAt: !779)
!795 = !DILocation(line: 97, column: 35, scope: !784, inlinedAt: !779)
!796 = !{!351, !351, i64 0}
!797 = !DILocation(line: 97, column: 13, scope: !784, inlinedAt: !779)
!798 = !DILocation(line: 99, column: 20, scope: !784, inlinedAt: !779)
!799 = !DILocation(line: 99, column: 35, scope: !784, inlinedAt: !779)
!800 = !{!350, !350, i64 0}
!801 = !DILocation(line: 99, column: 13, scope: !784, inlinedAt: !779)
!802 = !DILocation(line: 0, scope: !784, inlinedAt: !779)
!803 = !DILocation(line: 102, column: 1, scope: !770, inlinedAt: !779)
!804 = !DILocation(line: 257, column: 33, scope: !765)
!805 = !DILocation(line: 258, column: 49, scope: !765)
!806 = !DILocation(line: 87, column: 39, scope: !770, inlinedAt: !807)
!807 = distinct !DILocation(line: 259, column: 33, scope: !765)
!808 = !DILocation(line: 88, column: 27, scope: !770, inlinedAt: !807)
!809 = !DILocation(line: 88, column: 19, scope: !770, inlinedAt: !807)
!810 = !DILocation(line: 89, column: 5, scope: !770, inlinedAt: !807)
!811 = !DILocation(line: 91, column: 20, scope: !784, inlinedAt: !807)
!812 = !DILocation(line: 91, column: 13, scope: !784, inlinedAt: !807)
!813 = !DILocation(line: 93, column: 20, scope: !784, inlinedAt: !807)
!814 = !DILocation(line: 93, column: 34, scope: !784, inlinedAt: !807)
!815 = !DILocation(line: 93, column: 13, scope: !784, inlinedAt: !807)
!816 = !DILocation(line: 95, column: 20, scope: !784, inlinedAt: !807)
!817 = !DILocation(line: 95, column: 35, scope: !784, inlinedAt: !807)
!818 = !DILocation(line: 95, column: 13, scope: !784, inlinedAt: !807)
!819 = !DILocation(line: 97, column: 20, scope: !784, inlinedAt: !807)
!820 = !DILocation(line: 97, column: 35, scope: !784, inlinedAt: !807)
!821 = !DILocation(line: 97, column: 13, scope: !784, inlinedAt: !807)
!822 = !DILocation(line: 99, column: 20, scope: !784, inlinedAt: !807)
!823 = !DILocation(line: 99, column: 35, scope: !784, inlinedAt: !807)
!824 = !DILocation(line: 99, column: 13, scope: !784, inlinedAt: !807)
!825 = !DILocation(line: 0, scope: !784, inlinedAt: !807)
!826 = !DILocation(line: 102, column: 1, scope: !770, inlinedAt: !807)
!827 = !DILocation(line: 259, column: 33, scope: !765)
!828 = !DILocation(line: 256, column: 17, scope: !765)
!829 = !DILocation(line: 256, column: 17, scope: !716)
!830 = !DILocation(line: 260, column: 31, scope: !831)
!831 = distinct !DILexicalBlock(scope: !765, file: !1, line: 259, column: 58)
!832 = !DILocation(line: 260, column: 38, scope: !831)
!833 = !DILocation(line: 260, column: 17, scope: !831)
!834 = !DILocation(line: 261, column: 31, scope: !831)
!835 = !DILocation(line: 261, column: 45, scope: !831)
!836 = !{!416, !316, i64 256}
!837 = !DILocation(line: 261, column: 17, scope: !831)
!838 = !DILocation(line: 262, column: 35, scope: !831)
!839 = !DILocation(line: 262, column: 47, scope: !831)
!840 = !DILocation(line: 262, column: 17, scope: !831)
!841 = !DILocation(line: 263, column: 35, scope: !831)
!842 = !DILocation(line: 263, column: 17, scope: !831)
!843 = !DILocation(line: 264, column: 35, scope: !831)
!844 = !DILocation(line: 264, column: 17, scope: !831)
!845 = !DILocation(line: 265, column: 26, scope: !831)
!846 = !DILocation(line: 266, column: 13, scope: !831)
!847 = !DILocation(line: 0, scope: !698)
!848 = distinct !{!848, !761, !849}
!849 = !DILocation(line: 267, column: 9, scope: !717)
!850 = !DILocation(line: 0, scope: !831)
!851 = !DILocation(line: 268, column: 9, scope: !717)
!852 = !DILocation(line: 269, column: 5, scope: !717)
!853 = !DILocation(line: 271, column: 1, scope: !698)
!854 = !DILocation(line: 270, column: 5, scope: !698)
!855 = distinct !DISubprogram(name: "subscribeCommand", scope: !1, file: !1, line: 277, type: !209, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !856)
!856 = !{!857, !858}
!857 = !DILocalVariable(name: "c", arg: 1, scope: !855, file: !1, line: 277, type: !69)
!858 = !DILocalVariable(name: "j", scope: !855, file: !1, line: 278, type: !75)
!859 = !DILocation(line: 277, column: 31, scope: !855)
!860 = !DILocation(line: 278, column: 9, scope: !855)
!861 = !DILocation(line: 280, column: 24, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 280, column: 5)
!863 = distinct !DILexicalBlock(scope: !855, file: !1, line: 280, column: 5)
!864 = !{!349, !351, i64 64}
!865 = !DILocation(line: 280, column: 19, scope: !862)
!866 = !DILocation(line: 280, column: 5, scope: !863)
!867 = !DILocation(line: 281, column: 37, scope: !862)
!868 = !{!349, !316, i64 72}
!869 = !DILocation(line: 281, column: 34, scope: !862)
!870 = !DILocation(line: 281, column: 9, scope: !862)
!871 = !DILocation(line: 280, column: 31, scope: !862)
!872 = distinct !{!872, !866, !873}
!873 = !DILocation(line: 281, column: 44, scope: !863)
!874 = !DILocation(line: 282, column: 8, scope: !855)
!875 = !DILocation(line: 282, column: 14, scope: !855)
!876 = !{!349, !351, i64 160}
!877 = !DILocation(line: 283, column: 1, scope: !855)
!878 = distinct !DISubprogram(name: "unsubscribeCommand", scope: !1, file: !1, line: 285, type: !209, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !879)
!879 = !{!880, !881}
!880 = !DILocalVariable(name: "c", arg: 1, scope: !878, file: !1, line: 285, type: !69)
!881 = !DILocalVariable(name: "j", scope: !882, file: !1, line: 289, type: !75)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 288, column: 12)
!883 = distinct !DILexicalBlock(scope: !878, file: !1, line: 286, column: 9)
!884 = !DILocation(line: 285, column: 33, scope: !878)
!885 = !DILocation(line: 286, column: 12, scope: !883)
!886 = !DILocation(line: 286, column: 17, scope: !883)
!887 = !DILocation(line: 286, column: 9, scope: !878)
!888 = !DILocation(line: 289, column: 13, scope: !882)
!889 = !DILocation(line: 291, column: 23, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !1, line: 291, column: 9)
!891 = distinct !DILexicalBlock(scope: !882, file: !1, line: 291, column: 9)
!892 = !DILocation(line: 291, column: 9, scope: !891)
!893 = !DILocation(line: 287, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !883, file: !1, line: 286, column: 23)
!895 = !DILocation(line: 288, column: 5, scope: !894)
!896 = !DILocation(line: 292, column: 43, scope: !890)
!897 = !DILocation(line: 292, column: 40, scope: !890)
!898 = !DILocation(line: 292, column: 13, scope: !890)
!899 = !DILocation(line: 291, column: 35, scope: !890)
!900 = !DILocation(line: 291, column: 28, scope: !890)
!901 = distinct !{!901, !892, !902}
!902 = !DILocation(line: 292, column: 52, scope: !891)
!903 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !904)
!904 = distinct !DILocation(line: 294, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !878, file: !1, line: 294, column: 9)
!906 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !904)
!907 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !904)
!908 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !904)
!909 = !DILocation(line: 52, column: 5, scope: !341, inlinedAt: !904)
!910 = !DILocation(line: 294, column: 37, scope: !905)
!911 = !DILocation(line: 294, column: 9, scope: !878)
!912 = !DILocation(line: 294, column: 46, scope: !905)
!913 = !DILocation(line: 294, column: 52, scope: !905)
!914 = !DILocation(line: 294, column: 43, scope: !905)
!915 = !DILocation(line: 295, column: 1, scope: !878)
!916 = distinct !DISubprogram(name: "psubscribeCommand", scope: !1, file: !1, line: 297, type: !209, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !917)
!917 = !{!918, !919}
!918 = !DILocalVariable(name: "c", arg: 1, scope: !916, file: !1, line: 297, type: !69)
!919 = !DILocalVariable(name: "j", scope: !916, file: !1, line: 298, type: !75)
!920 = !DILocation(line: 297, column: 32, scope: !916)
!921 = !DILocation(line: 298, column: 9, scope: !916)
!922 = !DILocation(line: 300, column: 24, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 300, column: 5)
!924 = distinct !DILexicalBlock(scope: !916, file: !1, line: 300, column: 5)
!925 = !DILocation(line: 300, column: 19, scope: !923)
!926 = !DILocation(line: 300, column: 5, scope: !924)
!927 = !DILocation(line: 301, column: 37, scope: !923)
!928 = !DILocation(line: 301, column: 34, scope: !923)
!929 = !DILocation(line: 301, column: 9, scope: !923)
!930 = !DILocation(line: 300, column: 31, scope: !923)
!931 = distinct !{!931, !926, !932}
!932 = !DILocation(line: 301, column: 44, scope: !924)
!933 = !DILocation(line: 302, column: 8, scope: !916)
!934 = !DILocation(line: 302, column: 14, scope: !916)
!935 = !DILocation(line: 303, column: 1, scope: !916)
!936 = distinct !DISubprogram(name: "punsubscribeCommand", scope: !1, file: !1, line: 305, type: !209, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "c", arg: 1, scope: !936, file: !1, line: 305, type: !69)
!939 = !DILocalVariable(name: "j", scope: !940, file: !1, line: 309, type: !75)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 308, column: 12)
!941 = distinct !DILexicalBlock(scope: !936, file: !1, line: 306, column: 9)
!942 = !DILocation(line: 305, column: 34, scope: !936)
!943 = !DILocation(line: 306, column: 12, scope: !941)
!944 = !DILocation(line: 306, column: 17, scope: !941)
!945 = !DILocation(line: 306, column: 9, scope: !936)
!946 = !DILocation(line: 309, column: 13, scope: !940)
!947 = !DILocation(line: 311, column: 23, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 311, column: 9)
!949 = distinct !DILexicalBlock(scope: !940, file: !1, line: 311, column: 9)
!950 = !DILocation(line: 311, column: 9, scope: !949)
!951 = !DILocation(line: 307, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !941, file: !1, line: 306, column: 23)
!953 = !DILocation(line: 308, column: 5, scope: !952)
!954 = !DILocation(line: 312, column: 43, scope: !948)
!955 = !DILocation(line: 312, column: 40, scope: !948)
!956 = !DILocation(line: 312, column: 13, scope: !948)
!957 = !DILocation(line: 311, column: 35, scope: !948)
!958 = !DILocation(line: 311, column: 28, scope: !948)
!959 = distinct !{!959, !950, !960}
!960 = !DILocation(line: 312, column: 52, scope: !949)
!961 = !DILocation(line: 51, column: 38, scope: !341, inlinedAt: !962)
!962 = distinct !DILocation(line: 314, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !936, file: !1, line: 314, column: 9)
!964 = !DILocation(line: 52, column: 12, scope: !341, inlinedAt: !962)
!965 = !DILocation(line: 53, column: 12, scope: !341, inlinedAt: !962)
!966 = !DILocation(line: 52, column: 40, scope: !341, inlinedAt: !962)
!967 = !DILocation(line: 52, column: 5, scope: !341, inlinedAt: !962)
!968 = !DILocation(line: 314, column: 37, scope: !963)
!969 = !DILocation(line: 314, column: 9, scope: !936)
!970 = !DILocation(line: 314, column: 46, scope: !963)
!971 = !DILocation(line: 314, column: 52, scope: !963)
!972 = !DILocation(line: 314, column: 43, scope: !963)
!973 = !DILocation(line: 315, column: 1, scope: !936)
!974 = distinct !DISubprogram(name: "publishCommand", scope: !1, file: !1, line: 317, type: !209, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !975)
!975 = !{!976, !977}
!976 = !DILocalVariable(name: "c", arg: 1, scope: !974, file: !1, line: 317, type: !69)
!977 = !DILocalVariable(name: "receivers", scope: !974, file: !1, line: 318, type: !75)
!978 = !DILocation(line: 317, column: 29, scope: !974)
!979 = !DILocation(line: 318, column: 45, scope: !974)
!980 = !DILocation(line: 318, column: 42, scope: !974)
!981 = !DILocation(line: 318, column: 53, scope: !974)
!982 = !DILocation(line: 318, column: 21, scope: !974)
!983 = !DILocation(line: 318, column: 9, scope: !974)
!984 = !DILocation(line: 319, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !974, file: !1, line: 319, column: 9)
!986 = !{!386, !351, i64 2924}
!987 = !DILocation(line: 319, column: 9, scope: !985)
!988 = !DILocation(line: 319, column: 9, scope: !974)
!989 = !DILocation(line: 320, column: 36, scope: !985)
!990 = !DILocation(line: 320, column: 33, scope: !985)
!991 = !DILocation(line: 320, column: 44, scope: !985)
!992 = !DILocation(line: 320, column: 9, scope: !985)
!993 = !DILocation(line: 322, column: 9, scope: !985)
!994 = !DILocation(line: 323, column: 24, scope: !974)
!995 = !DILocation(line: 323, column: 5, scope: !974)
!996 = !DILocation(line: 324, column: 1, scope: !974)
!997 = distinct !DISubprogram(name: "pubsubCommand", scope: !1, file: !1, line: 327, type: !209, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !998)
!998 = !{!999, !1000, !1008, !1011, !1012, !1013, !1014, !1015, !1017, !1018, !1021}
!999 = !DILocalVariable(name: "c", arg: 1, scope: !997, file: !1, line: 327, type: !69)
!1000 = !DILocalVariable(name: "help", scope: !1001, file: !1, line: 329, type: !1003)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 328, column: 62)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 328, column: 9)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !1006)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1006 = !{!1007}
!1007 = !DISubrange(count: 4)
!1008 = !DILocalVariable(name: "pat", scope: !1009, file: !1, line: 340, type: !190)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 338, column: 5)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 336, column: 16)
!1011 = !DILocalVariable(name: "di", scope: !1009, file: !1, line: 341, type: !593)
!1012 = !DILocalVariable(name: "de", scope: !1009, file: !1, line: 342, type: !120)
!1013 = !DILocalVariable(name: "mblen", scope: !1009, file: !1, line: 343, type: !133)
!1014 = !DILocalVariable(name: "replylen", scope: !1009, file: !1, line: 344, type: !4)
!1015 = !DILocalVariable(name: "cobj", scope: !1016, file: !1, line: 348, type: !180)
!1016 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 347, column: 44)
!1017 = !DILocalVariable(name: "channel", scope: !1016, file: !1, line: 349, type: !190)
!1018 = !DILocalVariable(name: "j", scope: !1019, file: !1, line: 362, type: !75)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 360, column: 71)
!1020 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 360, column: 16)
!1021 = !DILocalVariable(name: "l", scope: !1022, file: !1, line: 366, type: !153)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 365, column: 39)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 365, column: 9)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 365, column: 9)
!1025 = !DILocation(line: 327, column: 28, scope: !997)
!1026 = !DILocation(line: 328, column: 12, scope: !1002)
!1027 = !DILocation(line: 328, column: 17, scope: !1002)
!1028 = !DILocation(line: 0, scope: !1010)
!1029 = !DILocation(line: 328, column: 22, scope: !1002)
!1030 = !DILocation(line: 328, column: 26, scope: !1002)
!1031 = !DILocation(line: 328, column: 9, scope: !997)
!1032 = !DILocation(line: 329, column: 9, scope: !1001)
!1033 = !DILocation(line: 329, column: 21, scope: !1001)
!1034 = !DILocation(line: 335, column: 25, scope: !1001)
!1035 = !DILocation(line: 335, column: 9, scope: !1001)
!1036 = !DILocation(line: 336, column: 5, scope: !1002)
!1037 = !DILocation(line: 336, column: 5, scope: !1001)
!1038 = !DILocation(line: 336, column: 17, scope: !1010)
!1039 = !DILocation(line: 337, column: 23, scope: !1010)
!1040 = !DILocation(line: 336, column: 56, scope: !1010)
!1041 = !DILocation(line: 340, column: 19, scope: !1009)
!1042 = !DILocation(line: 340, column: 43, scope: !1009)
!1043 = !DILocation(line: 340, column: 55, scope: !1009)
!1044 = !DILocation(line: 340, column: 13, scope: !1009)
!1045 = !DILocation(line: 341, column: 51, scope: !1009)
!1046 = !DILocation(line: 341, column: 28, scope: !1009)
!1047 = !DILocation(line: 341, column: 23, scope: !1009)
!1048 = !DILocation(line: 343, column: 14, scope: !1009)
!1049 = !DILocation(line: 346, column: 20, scope: !1009)
!1050 = !DILocation(line: 344, column: 15, scope: !1009)
!1051 = !DILocation(line: 347, column: 21, scope: !1009)
!1052 = !DILocation(line: 342, column: 20, scope: !1009)
!1053 = !DILocation(line: 347, column: 35, scope: !1009)
!1054 = !DILocation(line: 347, column: 9, scope: !1009)
!1055 = !DILocation(line: 348, column: 26, scope: !1016)
!1056 = !DILocation(line: 348, column: 19, scope: !1016)
!1057 = !DILocation(line: 349, column: 33, scope: !1016)
!1058 = !DILocation(line: 349, column: 17, scope: !1016)
!1059 = !DILocation(line: 351, column: 22, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 351, column: 17)
!1061 = !DILocation(line: 87, column: 39, scope: !770, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 351, column: 45, scope: !1060)
!1063 = !DILocation(line: 88, column: 27, scope: !770, inlinedAt: !1062)
!1064 = !DILocation(line: 88, column: 19, scope: !770, inlinedAt: !1062)
!1065 = !DILocation(line: 89, column: 5, scope: !770, inlinedAt: !1062)
!1066 = !DILocation(line: 91, column: 20, scope: !784, inlinedAt: !1062)
!1067 = !DILocation(line: 91, column: 13, scope: !784, inlinedAt: !1062)
!1068 = !DILocation(line: 93, column: 34, scope: !784, inlinedAt: !1062)
!1069 = !DILocation(line: 93, column: 20, scope: !784, inlinedAt: !1062)
!1070 = !DILocation(line: 93, column: 13, scope: !784, inlinedAt: !1062)
!1071 = !DILocation(line: 95, column: 35, scope: !784, inlinedAt: !1062)
!1072 = !DILocation(line: 95, column: 20, scope: !784, inlinedAt: !1062)
!1073 = !DILocation(line: 95, column: 13, scope: !784, inlinedAt: !1062)
!1074 = !DILocation(line: 97, column: 35, scope: !784, inlinedAt: !1062)
!1075 = !DILocation(line: 97, column: 20, scope: !784, inlinedAt: !1062)
!1076 = !DILocation(line: 97, column: 13, scope: !784, inlinedAt: !1062)
!1077 = !DILocation(line: 99, column: 35, scope: !784, inlinedAt: !1062)
!1078 = !DILocation(line: 99, column: 13, scope: !784, inlinedAt: !1062)
!1079 = !DILocation(line: 0, scope: !784, inlinedAt: !1062)
!1080 = !DILocation(line: 102, column: 1, scope: !770, inlinedAt: !1062)
!1081 = !DILocation(line: 351, column: 45, scope: !1060)
!1082 = !DILocation(line: 87, column: 39, scope: !770, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 352, column: 49, scope: !1060)
!1084 = !DILocation(line: 88, column: 27, scope: !770, inlinedAt: !1083)
!1085 = !DILocation(line: 88, column: 19, scope: !770, inlinedAt: !1083)
!1086 = !DILocation(line: 89, column: 5, scope: !770, inlinedAt: !1083)
!1087 = !DILocation(line: 91, column: 20, scope: !784, inlinedAt: !1083)
!1088 = !DILocation(line: 91, column: 13, scope: !784, inlinedAt: !1083)
!1089 = !DILocation(line: 93, column: 20, scope: !784, inlinedAt: !1083)
!1090 = !DILocation(line: 93, column: 34, scope: !784, inlinedAt: !1083)
!1091 = !DILocation(line: 93, column: 13, scope: !784, inlinedAt: !1083)
!1092 = !DILocation(line: 95, column: 20, scope: !784, inlinedAt: !1083)
!1093 = !DILocation(line: 95, column: 35, scope: !784, inlinedAt: !1083)
!1094 = !DILocation(line: 95, column: 13, scope: !784, inlinedAt: !1083)
!1095 = !DILocation(line: 97, column: 20, scope: !784, inlinedAt: !1083)
!1096 = !DILocation(line: 97, column: 35, scope: !784, inlinedAt: !1083)
!1097 = !DILocation(line: 97, column: 13, scope: !784, inlinedAt: !1083)
!1098 = !DILocation(line: 99, column: 20, scope: !784, inlinedAt: !1083)
!1099 = !DILocation(line: 99, column: 35, scope: !784, inlinedAt: !1083)
!1100 = !DILocation(line: 99, column: 13, scope: !784, inlinedAt: !1083)
!1101 = !DILocation(line: 0, scope: !784, inlinedAt: !1083)
!1102 = !DILocation(line: 102, column: 1, scope: !770, inlinedAt: !1083)
!1103 = !DILocation(line: 352, column: 49, scope: !1060)
!1104 = !DILocation(line: 351, column: 25, scope: !1060)
!1105 = !DILocation(line: 351, column: 17, scope: !1016)
!1106 = !DILocation(line: 354, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 353, column: 13)
!1108 = !DILocation(line: 355, column: 22, scope: !1107)
!1109 = !DILocation(line: 356, column: 13, scope: !1107)
!1110 = !DILocation(line: 0, scope: !1009)
!1111 = distinct !{!1111, !1054, !1112}
!1112 = !DILocation(line: 357, column: 9, scope: !1009)
!1113 = !DILocation(line: 0, scope: !1107)
!1114 = !DILocation(line: 358, column: 9, scope: !1009)
!1115 = !DILocation(line: 359, column: 9, scope: !1009)
!1116 = !DILocation(line: 360, column: 5, scope: !1009)
!1117 = !DILocation(line: 360, column: 17, scope: !1020)
!1118 = !DILocation(line: 360, column: 65, scope: !1020)
!1119 = !DILocation(line: 360, column: 54, scope: !1020)
!1120 = !DILocation(line: 364, column: 43, scope: !1019)
!1121 = !DILocation(line: 364, column: 32, scope: !1019)
!1122 = !DILocation(line: 364, column: 9, scope: !1019)
!1123 = !DILocation(line: 362, column: 13, scope: !1019)
!1124 = !DILocation(line: 365, column: 28, scope: !1023)
!1125 = !DILocation(line: 365, column: 23, scope: !1023)
!1126 = !DILocation(line: 365, column: 9, scope: !1024)
!1127 = !DILocation(line: 366, column: 45, scope: !1022)
!1128 = !DILocation(line: 366, column: 64, scope: !1022)
!1129 = !DILocation(line: 366, column: 61, scope: !1022)
!1130 = !DILocation(line: 366, column: 23, scope: !1022)
!1131 = !DILocation(line: 368, column: 31, scope: !1022)
!1132 = !DILocation(line: 368, column: 28, scope: !1022)
!1133 = !DILocation(line: 368, column: 13, scope: !1022)
!1134 = !DILocation(line: 369, column: 32, scope: !1022)
!1135 = !DILocation(line: 366, column: 19, scope: !1022)
!1136 = !DILocation(line: 369, column: 36, scope: !1022)
!1137 = !DILocation(line: 369, column: 13, scope: !1022)
!1138 = !DILocation(line: 365, column: 35, scope: !1023)
!1139 = distinct !{!1139, !1126, !1140}
!1140 = !DILocation(line: 370, column: 9, scope: !1024)
!1141 = !DILocation(line: 371, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 371, column: 16)
!1143 = !DILocation(line: 371, column: 54, scope: !1142)
!1144 = !DILocation(line: 373, column: 28, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 371, column: 71)
!1146 = !DILocation(line: 373, column: 9, scope: !1145)
!1147 = !DILocation(line: 374, column: 5, scope: !1145)
!1148 = !DILocation(line: 375, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 374, column: 12)
!1150 = !DILocation(line: 377, column: 1, scope: !997)
