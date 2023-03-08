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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64* nocapture, i32) local_unnamed_addr #0 !dbg !56 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !315
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !315
  %7 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %1, i64* nonnull %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #6, !dbg !317
  %8 = icmp eq i32 %7, 0, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %8, label %9, label %25, !dbg !320

; <label>:9:                                      ; preds = %4
  %10 = load i64, i64* %5, align 8, !dbg !321, !tbaa !323
  %11 = icmp slt i64 %10, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %11, label %12, label %13, !dbg !328

; <label>:12:                                     ; preds = %9
  call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !329
  br label %25, !dbg !331

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i64 %10, 0, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %14, label %23, label %15, !dbg !334

; <label>:15:                                     ; preds = %13
  %16 = icmp eq i32 %3, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %16, label %17, label %19, !dbg !338

; <label>:17:                                     ; preds = %15
  %18 = mul nsw i64 %10, 1000, !dbg !339
  store i64 %18, i64* %5, align 8, !dbg !339, !tbaa !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br label %19, !dbg !340

; <label>:19:                                     ; preds = %17, %15
  %20 = call i64 @mstime() #6, !dbg !341
  %21 = load i64, i64* %5, align 8, !dbg !342, !tbaa !323
  %22 = add nsw i64 %21, %20, !dbg !342
  store i64 %22, i64* %5, align 8, !dbg !342, !tbaa !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br label %23, !dbg !343

; <label>:23:                                     ; preds = %13, %19
  %24 = phi i64 [ 0, %13 ], [ %22, %19 ], !dbg !344
  store i64 %24, i64* %2, align 8, !dbg !345, !tbaa !323
  br label %25, !dbg !346

; <label>:25:                                     ; preds = %4, %23, %12
  %26 = phi i32 [ -1, %12 ], [ 0, %23 ], [ -1, %4 ], !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  ret i32 %26, !dbg !349
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
define dso_local void @blockClient(%struct.client* nocapture, i32) local_unnamed_addr #0 !dbg !350 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !358
  %4 = load i32, i32* %3, align 8, !dbg !359, !tbaa !360
  %5 = or i32 %4, 16, !dbg !359
  store i32 %5, i32* %3, align 8, !dbg !359, !tbaa !360
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !367
  store i32 %1, i32* %6, align 8, !dbg !368, !tbaa !369
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !370, !tbaa !371
  %8 = add i32 %7, 1, !dbg !370
  store i32 %8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !370, !tbaa !371
  %9 = sext i32 %1 to i64, !dbg !377
  %10 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %9, !dbg !377
  %11 = load i32, i32* %10, align 4, !dbg !378, !tbaa !379
  %12 = add i32 %11, 1, !dbg !378
  store i32 %12, i32* %10, align 4, !dbg !378, !tbaa !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  ret void, !dbg !380
}

; Function Attrs: noredzone nounwind
define dso_local void @processUnblockedClients() local_unnamed_addr #0 !dbg !381 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !388, !tbaa !389
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !388
  %3 = load i64, i64* %2, align 8, !dbg !388, !tbaa !390
  %4 = icmp eq i64 %3, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %4, label %59, label %5, !dbg !387

; <label>:5:                                      ; preds = %0, %54
  %6 = phi %struct.list* [ %55, %54 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !392
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !392, !tbaa !394
  %9 = icmp eq %struct.listNode* %8, null, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %9, label %10, label %11, !dbg !396

; <label>:10:                                     ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 118) #6, !dbg !396
  tail call void @_exit(i32 1) #7, !dbg !396
  unreachable

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !397
  %13 = bitcast i8** %12 to %struct.client**, !dbg !397
  %14 = load %struct.client*, %struct.client** %13, align 8, !dbg !397, !tbaa !398
  tail call void @listDelNode(%struct.list* nonnull %6, %struct.listNode* nonnull %8) #6, !dbg !401
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 21, !dbg !402
  %16 = load i32, i32* %15, align 8, !dbg !403, !tbaa !360
  %17 = and i32 %16, -129, !dbg !403
  store i32 %17, i32* %15, align 8, !dbg !403, !tbaa !360
  %18 = and i32 %16, 16, !dbg !404
  %19 = icmp eq i32 %18, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %19, label %20, label %54, !dbg !406

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 4, !dbg !407
  %22 = load i8*, i8** %21, align 8, !dbg !407, !tbaa !410
  %23 = icmp eq i8* %22, null, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %23, label %54, label %24, !dbg !412

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !424
  %26 = load i8, i8* %25, align 1, !dbg !424, !tbaa !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  %27 = trunc i8 %26 to i3, !dbg !427
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !427

; <label>:28:                                     ; preds = %24
  %29 = lshr i8 %26, 3, !dbg !428
  %30 = zext i8 %29 to i64, !dbg !428
  br label %50, !dbg !430

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !431
  %33 = load i8, i8* %32, align 1, !dbg !432, !tbaa !425
  %34 = zext i8 %33 to i64, !dbg !431
  br label %50, !dbg !433

; <label>:35:                                     ; preds = %24
  %36 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !434
  %37 = bitcast i8* %36 to i16*, !dbg !435
  %38 = load i16, i16* %37, align 1, !dbg !435, !tbaa !436
  %39 = zext i16 %38 to i64, !dbg !434
  br label %50, !dbg !438

; <label>:40:                                     ; preds = %24
  %41 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !439
  %42 = bitcast i8* %41 to i32*, !dbg !440
  %43 = load i32, i32* %42, align 1, !dbg !440, !tbaa !379
  %44 = zext i32 %43 to i64, !dbg !439
  br label %50, !dbg !441

; <label>:45:                                     ; preds = %24
  %46 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !442
  %47 = bitcast i8* %46 to i64*, !dbg !443
  %48 = load i64, i64* %47, align 1, !dbg !443, !tbaa !444
  br label %50, !dbg !445

; <label>:49:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br label %54, !dbg !448

; <label>:50:                                     ; preds = %28, %31, %35, %40, %45
  %51 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  %52 = icmp eq i64 %51, 0, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %52, label %54, label %53, !dbg !448

; <label>:53:                                     ; preds = %50
  tail call void @processInputBufferAndReplicate(%struct.client* nonnull %14) #6, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br label %54, !dbg !454

; <label>:54:                                     ; preds = %49, %50, %20, %11, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  %55 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !388, !tbaa !389
  %56 = getelementptr inbounds %struct.list, %struct.list* %55, i64 0, i32 5, !dbg !388
  %57 = load i64, i64* %56, align 8, !dbg !388, !tbaa !390
  %58 = icmp eq i64 %57, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %58, label %59, label %5, !dbg !387, !llvm.loop !455

; <label>:59:                                     ; preds = %54, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret void, !dbg !457
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
define dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #0 !dbg !458 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !462
  %3 = load i32, i32* %2, align 8, !dbg !462, !tbaa !360
  %4 = trunc i32 %3 to i8, !dbg !464
  %5 = icmp slt i8 %4, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %5, label %11, label %6, !dbg !465

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 128, !dbg !466
  store i32 %7, i32* %2, align 8, !dbg !466, !tbaa !360
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !468, !tbaa !389
  %9 = bitcast %struct.client* %0 to i8*, !dbg !469
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %8, i8* %9) #6, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %11, !dbg !471

; <label>:11:                                     ; preds = %6, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  ret void, !dbg !472
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @unblockClient(%struct.client*) local_unnamed_addr #0 !dbg !473 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !477
  %3 = load i32, i32* %2, align 8, !dbg !477, !tbaa !369
  %4 = icmp eq i32 %3, 1, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %4, label %9, label %5, !dbg !480

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %3, 5, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %6, label %9, label %7, !dbg !482

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i32 %3, 4, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %8, label %9, label %10, !dbg !484

; <label>:9:                                      ; preds = %7, %5, %1
  tail call void @unblockClientWaitingData(%struct.client* nonnull %0) #8, !dbg !485
  br label %17, !dbg !487

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i32 %3, 2, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br i1 %11, label %12, label %13, !dbg !490

; <label>:12:                                     ; preds = %10
  tail call void @unblockClientWaitingReplicas(%struct.client* nonnull %0) #6, !dbg !491
  br label %17, !dbg !493

; <label>:13:                                     ; preds = %10
  %14 = icmp eq i32 %3, 3, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br i1 %14, label %15, label %16, !dbg !496

; <label>:15:                                     ; preds = %13
  tail call void @unblockClientFromModule(%struct.client* nonnull %0) #6, !dbg !497
  br label %17

; <label>:16:                                     ; preds = %13
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !499
  tail call void @_exit(i32 1) #7, !dbg !499
  unreachable

; <label>:17:                                     ; preds = %12, %15, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !501, !tbaa !371
  %19 = add i32 %18, -1, !dbg !501
  store i32 %19, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !501, !tbaa !371
  %20 = load i32, i32* %2, align 8, !dbg !502, !tbaa !369
  %21 = sext i32 %20 to i64, !dbg !503
  %22 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %21, !dbg !503
  %23 = load i32, i32* %22, align 4, !dbg !504, !tbaa !379
  %24 = add i32 %23, -1, !dbg !504
  store i32 %24, i32* %22, align 4, !dbg !504, !tbaa !379
  %25 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !505
  %26 = load i32, i32* %25, align 8, !dbg !506, !tbaa !360
  %27 = and i32 %26, -17, !dbg !506
  store i32 %27, i32* %25, align 8, !dbg !506, !tbaa !360
  store i32 0, i32* %2, align 8, !dbg !507, !tbaa !369
  %28 = trunc i32 %26 to i8, !dbg !510
  %29 = icmp slt i8 %28, 0, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %29, label %35, label %30, !dbg !511

; <label>:30:                                     ; preds = %17
  %31 = or i32 %27, 128, !dbg !512
  store i32 %31, i32* %25, align 8, !dbg !512, !tbaa !360
  %32 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !513, !tbaa !389
  %33 = bitcast %struct.client* %0 to i8*, !dbg !514
  %34 = tail call %struct.list* @listAddNodeTail(%struct.list* %32, i8* %33) #6, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br label %35, !dbg !516

; <label>:35:                                     ; preds = %17, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  ret void, !dbg !518
}

; Function Attrs: noredzone nounwind
define dso_local void @unblockClientWaitingData(%struct.client*) local_unnamed_addr #0 !dbg !519 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1, !dbg !539
  %3 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !539, !tbaa !540
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 0, i32 3, !dbg !539
  %5 = load i64, i64* %4, align 8, !dbg !539, !tbaa !541
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %3, i64 0, i32 2, i64 1, i32 3, !dbg !539
  %7 = load i64, i64* %6, align 8, !dbg !539, !tbaa !541
  %8 = sub i64 0, %7, !dbg !539
  %9 = icmp eq i64 %5, %8, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br i1 %9, label %10, label %11, !dbg !539

; <label>:10:                                     ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 548) #6, !dbg !539
  tail call void @_exit(i32 1) #7, !dbg !539
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = tail call %struct.dictIterator* @dictGetIterator(%struct.dict* %3) #6, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  %13 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %12) #6, !dbg !546
  %14 = icmp eq %struct.dictEntry* %13, null, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %14, label %44, label %15, !dbg !545

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %17 = bitcast %struct.client* %0 to i8*
  br label %18, !dbg !545

; <label>:18:                                     ; preds = %15, %41
  %19 = phi %struct.dictEntry* [ %13, %15 ], [ %42, %41 ]
  %20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %19, i64 0, i32 0, !dbg !549
  %21 = load i8*, i8** %20, align 8, !dbg !549, !tbaa !550
  %22 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !552, !tbaa !553
  %23 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %22, i64 0, i32 2, !dbg !554
  %24 = load %struct.dict*, %struct.dict** %23, align 8, !dbg !554, !tbaa !555
  %25 = tail call i8* @dictFetchValue(%struct.dict* %24, i8* %21) #6, !dbg !557
  %26 = bitcast i8* %25 to %struct.list*, !dbg !557
  %27 = icmp eq i8* %25, null, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %27, label %28, label %30, !dbg !559

; <label>:28:                                     ; preds = %18
  %29 = bitcast i8* %21 to %struct.redisObject*, !dbg !549
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 556) #6, !dbg !559
  tail call void @_exit(i32 1) #7, !dbg !559
  unreachable

; <label>:30:                                     ; preds = %18
  %31 = tail call %struct.listNode* @listSearchKey(%struct.list* %26, i8* nonnull %17) #6, !dbg !561
  tail call void @listDelNode(%struct.list* %26, %struct.listNode* %31) #6, !dbg !562
  %32 = getelementptr inbounds i8, i8* %25, i64 40, !dbg !563
  %33 = bitcast i8* %32 to i64*, !dbg !563
  %34 = load i64, i64* %33, align 8, !dbg !563, !tbaa !390
  %35 = icmp eq i64 %34, 0, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %35, label %36, label %41, !dbg !566

; <label>:36:                                     ; preds = %30
  %37 = load %struct.redisDb*, %struct.redisDb** %16, align 8, !dbg !567, !tbaa !553
  %38 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %37, i64 0, i32 2, !dbg !568
  %39 = load %struct.dict*, %struct.dict** %38, align 8, !dbg !568, !tbaa !555
  %40 = tail call i32 @dictDelete(%struct.dict* %39, i8* %21) #6, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %41, !dbg !569

; <label>:41:                                     ; preds = %36, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  %42 = tail call %struct.dictEntry* @dictNext(%struct.dictIterator* %12) #6, !dbg !546
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %43, label %44, label %18, !dbg !545, !llvm.loop !570

; <label>:44:                                     ; preds = %41, %11
  tail call void @dictReleaseIterator(%struct.dictIterator* %12) #6, !dbg !572
  %45 = load %struct.dict*, %struct.dict** %2, align 8, !dbg !573, !tbaa !540
  tail call void @dictEmpty(%struct.dict* %45, void (i8*)* null) #6, !dbg !574
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 2, !dbg !575
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !575, !tbaa !577
  %48 = icmp eq %struct.redisObject* %47, null, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %48, label %50, label %49, !dbg !579

; <label>:49:                                     ; preds = %44
  tail call void @decrRefCount(%struct.redisObject* nonnull %47) #6, !dbg !580
  store %struct.redisObject* null, %struct.redisObject** %46, align 8, !dbg !582, !tbaa !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br label %50, !dbg !583

; <label>:50:                                     ; preds = %44, %49
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 4, !dbg !584
  %52 = load %struct.redisObject*, %struct.redisObject** %51, align 8, !dbg !584, !tbaa !586
  %53 = icmp eq %struct.redisObject* %52, null, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %53, label %58, label %54, !dbg !588

; <label>:54:                                     ; preds = %50
  tail call void @decrRefCount(%struct.redisObject* nonnull %52) #6, !dbg !589
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 5, !dbg !591
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !591, !tbaa !592
  tail call void @decrRefCount(%struct.redisObject* %56) #6, !dbg !593
  %57 = bitcast %struct.redisObject** %51 to <2 x %struct.redisObject*>*, !dbg !594
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %57, align 8, !dbg !594, !tbaa !595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  br label %58, !dbg !596

; <label>:58:                                     ; preds = %50, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  ret void, !dbg !597
}

; Function Attrs: noredzone
declare dso_local void @unblockClientWaitingReplicas(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @unblockClientFromModule(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replyToBlockedClientTimedOut(%struct.client*) local_unnamed_addr #0 !dbg !598 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !602
  %3 = load i32, i32* %2, align 8, !dbg !602, !tbaa !369
  %4 = icmp eq i32 %3, 1, !dbg !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !605
  br i1 %4, label %9, label %5, !dbg !605

; <label>:5:                                      ; preds = %1
  %6 = icmp eq i32 %3, 5, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %6, label %9, label %7, !dbg !607

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i32 %3, 4, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %8, label %9, label %11, !dbg !609

; <label>:9:                                      ; preds = %7, %5, %1
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 11), align 8, !dbg !610, !tbaa !612
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %10) #6, !dbg !614
  br label %22, !dbg !615

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i32 %3, 2, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %12, label %13, label %18, !dbg !618

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 10, !dbg !619
  %15 = load i64, i64* %14, align 8, !dbg !619, !tbaa !621
  %16 = tail call i32 @replicationCountAcksByOffset(i64 %15) #6, !dbg !622
  %17 = sext i32 %16 to i64, !dbg !622
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %17) #6, !dbg !623
  br label %22, !dbg !624

; <label>:18:                                     ; preds = %11
  %19 = icmp eq i32 %3, 3, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %19, label %20, label %21, !dbg !627

; <label>:20:                                     ; preds = %18
  tail call void @moduleBlockedClientTimedOut(%struct.client* nonnull %0) #6, !dbg !628
  br label %22

; <label>:21:                                     ; preds = %18
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !630
  tail call void @_exit(i32 1) #7, !dbg !630
  unreachable

; <label>:22:                                     ; preds = %13, %20, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  ret void, !dbg !632
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
define dso_local void @disconnectAllBlockedClients() local_unnamed_addr #0 !dbg !633 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !644
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !645, !tbaa !646
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #6, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !650
  %5 = icmp eq %struct.listNode* %4, null, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %5, label %22, label %6, !dbg !649

; <label>:6:                                      ; preds = %0, %19
  %7 = phi %struct.listNode* [ %20, %19 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !652
  %9 = bitcast i8** %8 to %struct.client**, !dbg !652
  %10 = load %struct.client*, %struct.client** %9, align 8, !dbg !652, !tbaa !398
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 21, !dbg !654
  %12 = load i32, i32* %11, align 8, !dbg !654, !tbaa !360
  %13 = and i32 %12, 16, !dbg !656
  %14 = icmp eq i32 %13, 0, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br i1 %14, label %19, label %15, !dbg !657

; <label>:15:                                     ; preds = %6
  %16 = call i8* @sdsnew(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !658
  call void @addReplySds(%struct.client* %10, i8* %16) #6, !dbg !660
  call void @unblockClient(%struct.client* %10) #8, !dbg !661
  %17 = load i32, i32* %11, align 8, !dbg !662, !tbaa !360
  %18 = or i32 %17, 64, !dbg !662
  store i32 %18, i32* %11, align 8, !dbg !662, !tbaa !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !663
  br label %19, !dbg !663

; <label>:19:                                     ; preds = %6, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %20 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #6, !dbg !650
  %21 = icmp eq %struct.listNode* %20, null, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %21, label %22, label %6, !dbg !649, !llvm.loop !664

; <label>:22:                                     ; preds = %19, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  ret void, !dbg !666
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
define dso_local void @handleClientsBlockedOnKeys() local_unnamed_addr #0 !dbg !667 {
  %1 = alloca [2 x %struct.redisObject*], align 16
  %2 = alloca %struct.listIter, align 8
  %3 = alloca %struct.streamID, align 8
  %4 = alloca %struct.sreamPropInfo, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !781, !tbaa !782
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !781
  %7 = load i64, i64* %6, align 8, !dbg !781, !tbaa !390
  %8 = icmp eq i64 %7, 0, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %8, label %289, label %9, !dbg !780

; <label>:9:                                      ; preds = %0
  %10 = bitcast [2 x %struct.redisObject*]* %1 to i8*
  %11 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %1, i64 0, i64 0
  %12 = getelementptr inbounds [2 x %struct.redisObject*], [2 x %struct.redisObject*]* %1, i64 0, i64 1
  %13 = bitcast %struct.redisObject** %12 to i64*
  %14 = bitcast %struct.listIter* %2 to i8*
  %15 = bitcast %struct.streamID* %3 to i8*
  %16 = getelementptr inbounds %struct.streamID, %struct.streamID* %3, i64 0, i32 1
  %17 = bitcast %struct.sreamPropInfo* %4 to i8*
  %18 = bitcast %struct.sreamPropInfo* %4 to i64*
  %19 = getelementptr inbounds %struct.sreamPropInfo, %struct.sreamPropInfo* %4, i64 0, i32 1
  %20 = bitcast %struct.redisObject** %19 to i64*
  br label %21, !dbg !780

; <label>:21:                                     ; preds = %9, %284
  %22 = phi i64* [ %6, %9 ], [ %286, %284 ]
  %23 = phi %struct.list* [ %5, %9 ], [ %285, %284 ]
  %24 = call %struct.list* @listCreate() #6, !dbg !785
  store %struct.list* %24, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !786, !tbaa !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  %25 = load i64, i64* %22, align 8, !dbg !788, !tbaa !390
  %26 = icmp eq i64 %25, 0, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %26, label %284, label %27, !dbg !787

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 0
  br label %29, !dbg !787

; <label>:29:                                     ; preds = %27, %280
  %30 = load %struct.listNode*, %struct.listNode** %28, align 8, !dbg !790, !tbaa !394
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %30, i64 0, i32 2, !dbg !792
  %32 = load i8*, i8** %31, align 8, !dbg !792, !tbaa !398
  %33 = bitcast i8* %32 to %struct.redisDb**, !dbg !794
  %34 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !794, !tbaa !795
  %35 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %34, i64 0, i32 3, !dbg !797
  %36 = load %struct.dict*, %struct.dict** %35, align 8, !dbg !797, !tbaa !798
  %37 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !799
  %38 = bitcast i8* %37 to %struct.redisObject**, !dbg !799
  %39 = bitcast i8* %37 to i8**, !dbg !799
  %40 = load i8*, i8** %39, align 8, !dbg !799, !tbaa !800
  %41 = call i32 @dictDelete(%struct.dict* %36, i8* %40) #6, !dbg !801
  %42 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !802, !tbaa !795
  %43 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !803, !tbaa !800
  %44 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %42, %struct.redisObject* %43) #6, !dbg !804
  %45 = icmp eq %struct.redisObject* %44, null, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %45, label %201, label %46, !dbg !807

; <label>:46:                                     ; preds = %29
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 0, !dbg !808
  %48 = load i32, i32* %47, align 8, !dbg !808
  %49 = and i32 %48, 15, !dbg !808
  %50 = icmp eq i32 %49, 1, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  br i1 %50, label %51, label %128, !dbg !810

; <label>:51:                                     ; preds = %46
  %52 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !811, !tbaa !795
  %53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %52, i64 0, i32 2, !dbg !812
  %54 = load %struct.dict*, %struct.dict** %53, align 8, !dbg !812, !tbaa !555
  %55 = load i8*, i8** %39, align 8, !dbg !813, !tbaa !800
  %56 = call %struct.dictEntry* @dictFind(%struct.dict* %54, i8* %55) #6, !dbg !814
  %57 = icmp eq %struct.dictEntry* %56, null, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %57, label %117, label %58, !dbg !817

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %56, i64 0, i32 1, i32 0, !dbg !818
  %60 = bitcast i8** %59 to %struct.list**, !dbg !818
  %61 = load %struct.list*, %struct.list** %60, align 8, !dbg !818, !tbaa !425
  %62 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 5, !dbg !820
  %63 = load i64, i64* %62, align 8, !dbg !820, !tbaa !390
  %64 = trunc i64 %63 to i32, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  %65 = getelementptr inbounds %struct.list, %struct.list* %61, i64 0, i32 0
  br label %66, !dbg !822

; <label>:66:                                     ; preds = %113, %58
  %67 = phi i32 [ %64, %58 ], [ %68, %113 ], !dbg !823
  %68 = add nsw i32 %67, -1, !dbg !824
  %69 = icmp eq i32 %67, 0, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %69, label %116, label %70, !dbg !822

; <label>:70:                                     ; preds = %66
  %71 = load %struct.listNode*, %struct.listNode** %65, align 8, !dbg !825, !tbaa !394
  %72 = getelementptr inbounds %struct.listNode, %struct.listNode* %71, i64 0, i32 2, !dbg !827
  %73 = load i8*, i8** %72, align 8, !dbg !827, !tbaa !398
  %74 = bitcast i8* %73 to %struct.client*, !dbg !828
  %75 = getelementptr inbounds i8, i8* %73, i64 384, !dbg !830
  %76 = bitcast i8* %75 to i32*, !dbg !830
  %77 = load i32, i32* %76, align 8, !dbg !830, !tbaa !369
  %78 = icmp eq i32 %77, 1, !dbg !832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  br i1 %78, label %81, label %79, !dbg !833

; <label>:79:                                     ; preds = %70
  call void @listDelNode(%struct.list* nonnull %61, %struct.listNode* %71) #6, !dbg !834
  %80 = call %struct.list* @listAddNodeTail(%struct.list* nonnull %61, i8* %73) #6, !dbg !836
  br label %113, !dbg !837, !llvm.loop !838

; <label>:81:                                     ; preds = %70
  %82 = getelementptr inbounds i8, i8* %73, i64 408, !dbg !840
  %83 = bitcast i8* %82 to %struct.redisObject**, !dbg !840
  %84 = load %struct.redisObject*, %struct.redisObject** %83, align 8, !dbg !840, !tbaa !577
  %85 = getelementptr inbounds i8, i8* %73, i64 88, !dbg !842
  %86 = bitcast i8* %85 to %struct.redisCommand**, !dbg !842
  %87 = load %struct.redisCommand*, %struct.redisCommand** %86, align 8, !dbg !842, !tbaa !843
  %88 = icmp eq %struct.redisCommand* %87, null, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br i1 %88, label %93, label %89, !dbg !845

; <label>:89:                                     ; preds = %81
  %90 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %87, i64 0, i32 1, !dbg !846
  %91 = load void (%struct.client*)*, void (%struct.client*)** %90, align 8, !dbg !846, !tbaa !847
  %92 = icmp eq void (%struct.client*)* %91, @blpopCommand, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %93

; <label>:93:                                     ; preds = %81, %89
  %94 = phi i1 [ false, %81 ], [ %92, %89 ], !dbg !850
  %95 = xor i1 %94, true, !dbg !851
  %96 = zext i1 %95 to i32, !dbg !851
  %97 = call %struct.redisObject* @listTypePop(%struct.redisObject* nonnull %44, i32 %96) #6, !dbg !853
  %98 = icmp eq %struct.redisObject* %97, null, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !857
  br i1 %98, label %111, label %99, !dbg !857

; <label>:99:                                     ; preds = %93
  %100 = icmp ne %struct.redisObject* %84, null, !dbg !858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %100, label %101, label %102, !dbg !861

; <label>:101:                                    ; preds = %99
  call void @incrRefCount(%struct.redisObject* nonnull %84) #6, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  br label %102, !dbg !862

; <label>:102:                                    ; preds = %101, %99
  call void @unblockClient(%struct.client* nonnull %74) #8, !dbg !863
  %103 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !864, !tbaa !800
  %104 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !866, !tbaa !795
  %105 = call i32 @serveClientBlockedOnList(%struct.client* nonnull %74, %struct.redisObject* %103, %struct.redisObject* %84, %struct.redisDb* %104, %struct.redisObject* nonnull %97, i32 %96) #6, !dbg !867
  %106 = icmp eq i32 %105, -1, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %106, label %107, label %108, !dbg !869

; <label>:107:                                    ; preds = %102
  call void @listTypePush(%struct.redisObject* nonnull %44, %struct.redisObject* nonnull %97, i32 %96) #6, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br label %108, !dbg !872

; <label>:108:                                    ; preds = %107, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %100, label %109, label %110, !dbg !873

; <label>:109:                                    ; preds = %108
  call void @decrRefCount(%struct.redisObject* nonnull %84) #6, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %110, !dbg !874

; <label>:110:                                    ; preds = %109, %108
  call void @decrRefCount(%struct.redisObject* nonnull %97) #6, !dbg !876
  br label %111, !dbg !839

; <label>:111:                                    ; preds = %93, %110
  %112 = phi i32 [ 0, %110 ], [ 7, %93 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br label %113

; <label>:113:                                    ; preds = %111, %79
  %114 = phi i32 [ 6, %79 ], [ %112, %111 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %115 = icmp eq i32 %114, 7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %115, label %116, label %66

; <label>:116:                                    ; preds = %66, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br label %117, !dbg !879

; <label>:117:                                    ; preds = %51, %116
  %118 = call i64 @listTypeLength(%struct.redisObject* nonnull %44) #6, !dbg !880
  %119 = icmp eq i64 %118, 0, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %119, label %120, label %279, !dbg !883

; <label>:120:                                    ; preds = %117
  %121 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !884, !tbaa !795
  %122 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !886, !tbaa !800
  %123 = call i32 @dbDelete(%struct.redisDb* %121, %struct.redisObject* %122) #6, !dbg !887
  %124 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !888, !tbaa !800
  %125 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !889, !tbaa !795
  %126 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %125, i64 0, i32 5, !dbg !890
  %127 = load i32, i32* %126, align 8, !dbg !890, !tbaa !891
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.redisObject* %124, i32 %127) #6, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br label %279, !dbg !893

; <label>:128:                                    ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  %129 = icmp eq i32 %49, 3, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br i1 %129, label %130, label %202, !dbg !896

; <label>:130:                                    ; preds = %128
  %131 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !897, !tbaa !795
  %132 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %131, i64 0, i32 2, !dbg !898
  %133 = load %struct.dict*, %struct.dict** %132, align 8, !dbg !898, !tbaa !555
  %134 = load i8*, i8** %39, align 8, !dbg !899, !tbaa !800
  %135 = call %struct.dictEntry* @dictFind(%struct.dict* %133, i8* %134) #6, !dbg !900
  %136 = icmp eq %struct.dictEntry* %135, null, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %136, label %279, label %137, !dbg !903

; <label>:137:                                    ; preds = %130
  %138 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %135, i64 0, i32 1, i32 0, !dbg !904
  %139 = bitcast i8** %138 to %struct.list**, !dbg !904
  %140 = load %struct.list*, %struct.list** %139, align 8, !dbg !904, !tbaa !425
  %141 = getelementptr inbounds %struct.list, %struct.list* %140, i64 0, i32 5, !dbg !906
  %142 = load i64, i64* %141, align 8, !dbg !906, !tbaa !390
  %143 = trunc i64 %142 to i32, !dbg !906
  %144 = call i64 @zsetLength(%struct.redisObject* nonnull %44) #6, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  %145 = icmp ne i32 %143, 0, !dbg !911
  %146 = icmp ne i64 %144, 0, !dbg !912
  %147 = and i1 %146, %145, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %147, label %148, label %200, !dbg !910

; <label>:148:                                    ; preds = %137
  %149 = getelementptr inbounds %struct.list, %struct.list* %140, i64 0, i32 0
  %150 = bitcast i8* %37 to i64*
  br label %151, !dbg !910

; <label>:151:                                    ; preds = %148, %195
  %152 = phi i32 [ %143, %148 ], [ %154, %195 ]
  %153 = phi i64 [ %144, %148 ], [ %196, %195 ]
  %154 = add nsw i32 %152, -1, !dbg !911
  %155 = load %struct.listNode*, %struct.listNode** %149, align 8, !dbg !913, !tbaa !394
  %156 = getelementptr inbounds %struct.listNode, %struct.listNode* %155, i64 0, i32 2, !dbg !915
  %157 = load i8*, i8** %156, align 8, !dbg !915, !tbaa !398
  %158 = bitcast i8* %157 to %struct.client*, !dbg !916
  %159 = getelementptr inbounds i8, i8* %157, i64 384, !dbg !918
  %160 = bitcast i8* %159 to i32*, !dbg !918
  %161 = load i32, i32* %160, align 8, !dbg !918, !tbaa !369
  %162 = icmp eq i32 %161, 5, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %162, label %165, label %163, !dbg !921

; <label>:163:                                    ; preds = %151
  call void @listDelNode(%struct.list* nonnull %140, %struct.listNode* %155) #6, !dbg !922
  %164 = call %struct.list* @listAddNodeTail(%struct.list* nonnull %140, i8* %157) #6, !dbg !924
  br label %195, !dbg !925, !llvm.loop !926

; <label>:165:                                    ; preds = %151
  %166 = getelementptr inbounds i8, i8* %157, i64 88, !dbg !928
  %167 = bitcast i8* %166 to %struct.redisCommand**, !dbg !928
  %168 = load %struct.redisCommand*, %struct.redisCommand** %167, align 8, !dbg !928, !tbaa !843
  %169 = icmp eq %struct.redisCommand* %168, null, !dbg !929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  br i1 %169, label %174, label %170, !dbg !930

; <label>:170:                                    ; preds = %165
  %171 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %168, i64 0, i32 1, !dbg !931
  %172 = load void (%struct.client*)*, void (%struct.client*)** %171, align 8, !dbg !931, !tbaa !847
  %173 = icmp eq void (%struct.client*)* %172, @bzpopminCommand, !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %174

; <label>:174:                                    ; preds = %165, %170
  %175 = phi i1 [ false, %165 ], [ %173, %170 ], !dbg !933
  %176 = xor i1 %175, true, !dbg !934
  %177 = zext i1 %176 to i32, !dbg !934
  call void @unblockClient(%struct.client* nonnull %158) #8, !dbg !936
  call void @genericZpopCommand(%struct.client* nonnull %158, %struct.redisObject** nonnull %38, i32 1, i32 %177, i32 1, %struct.redisObject* null) #6, !dbg !937
  %178 = add i64 %153, -1, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #5, !dbg !939
  %179 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 61), align 8, !dbg !941
  %180 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 62), align 8, !dbg !942
  %181 = select i1 %175, %struct.redisCommand* %179, %struct.redisCommand* %180, !dbg !943
  %182 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i64 0, i32 0, !dbg !945
  %183 = load i8*, i8** %182, align 8, !dbg !945, !tbaa !946
  %184 = call i64 @strlen(i8* %183) #6, !dbg !947
  %185 = call %struct.redisObject* @createStringObject(i8* %183, i64 %184) #6, !dbg !948
  store %struct.redisObject* %185, %struct.redisObject** %11, align 16, !dbg !949, !tbaa !595
  %186 = load i64, i64* %150, align 8, !dbg !950, !tbaa !800
  store i64 %186, i64* %13, align 8, !dbg !951, !tbaa !595
  %187 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !952, !tbaa !800
  call void @incrRefCount(%struct.redisObject* %187) #6, !dbg !953
  %188 = getelementptr inbounds i8, i8* %157, i64 16, !dbg !954
  %189 = bitcast i8* %188 to %struct.redisDb**, !dbg !954
  %190 = load %struct.redisDb*, %struct.redisDb** %189, align 8, !dbg !954, !tbaa !553
  %191 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %190, i64 0, i32 5, !dbg !955
  %192 = load i32, i32* %191, align 8, !dbg !955, !tbaa !891
  call void @propagate(%struct.redisCommand* %181, i32 %192, %struct.redisObject** nonnull %11, i32 2, i32 3) #6, !dbg !956
  %193 = load %struct.redisObject*, %struct.redisObject** %11, align 16, !dbg !957, !tbaa !595
  call void @decrRefCount(%struct.redisObject* %193) #6, !dbg !958
  %194 = load %struct.redisObject*, %struct.redisObject** %12, align 8, !dbg !959, !tbaa !595
  call void @decrRefCount(%struct.redisObject* %194) #6, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #5, !dbg !927
  br label %195, !dbg !927

; <label>:195:                                    ; preds = %174, %163
  %196 = phi i64 [ %153, %163 ], [ %178, %174 ], !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %197 = icmp ne i32 %154, 0, !dbg !911
  %198 = icmp ne i64 %196, 0, !dbg !912
  %199 = and i1 %198, %197, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  br i1 %199, label %151, label %200, !dbg !910

; <label>:200:                                    ; preds = %195, %137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !962
  br label %279, !dbg !962

; <label>:201:                                    ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br label %279

; <label>:202:                                    ; preds = %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  %203 = icmp eq i32 %49, 6, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %203, label %204, label %280, !dbg !965

; <label>:204:                                    ; preds = %202
  %205 = load %struct.redisDb*, %struct.redisDb** %33, align 8, !dbg !966, !tbaa !795
  %206 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %205, i64 0, i32 2, !dbg !967
  %207 = load %struct.dict*, %struct.dict** %206, align 8, !dbg !967, !tbaa !555
  %208 = load i8*, i8** %39, align 8, !dbg !968, !tbaa !800
  %209 = call %struct.dictEntry* @dictFind(%struct.dict* %207, i8* %208) #6, !dbg !969
  %210 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %44, i64 0, i32 2, !dbg !971
  %211 = bitcast i8** %210 to %struct.stream**, !dbg !971
  %212 = load %struct.stream*, %struct.stream** %211, align 8, !dbg !971, !tbaa !972
  %213 = icmp eq %struct.dictEntry* %209, null, !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %213, label %279, label %214, !dbg !976

; <label>:214:                                    ; preds = %204
  %215 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %209, i64 0, i32 1, i32 0, !dbg !977
  %216 = bitcast i8** %215 to %struct.list**, !dbg !977
  %217 = load %struct.list*, %struct.list** %216, align 8, !dbg !977, !tbaa !425
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #5, !dbg !979
  call void @listRewind(%struct.list* %217, %struct.listIter* nonnull %2) #6, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %218 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !983
  %219 = icmp eq %struct.listNode* %218, null, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %219, label %278, label %220, !dbg !982

; <label>:220:                                    ; preds = %214
  %221 = getelementptr inbounds %struct.stream, %struct.stream* %212, i64 0, i32 2
  %222 = bitcast i8* %37 to i64*
  br label %223, !dbg !982

; <label>:223:                                    ; preds = %220, %275
  %224 = phi %struct.listNode* [ %218, %220 ], [ %276, %275 ]
  %225 = getelementptr inbounds %struct.listNode, %struct.listNode* %224, i64 0, i32 2, !dbg !985
  %226 = bitcast i8** %225 to %struct.client**, !dbg !985
  %227 = load %struct.client*, %struct.client** %226, align 8, !dbg !985, !tbaa !398
  %228 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 39, !dbg !987
  %229 = load i32, i32* %228, align 8, !dbg !987, !tbaa !369
  %230 = icmp eq i32 %229, 4, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %230, label %231, label %275, !dbg !990, !llvm.loop !991

; <label>:231:                                    ; preds = %223
  %232 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 40, i32 1, !dbg !993
  %233 = load %struct.dict*, %struct.dict** %232, align 8, !dbg !993, !tbaa !540
  %234 = load i8*, i8** %39, align 8, !dbg !994, !tbaa !800
  %235 = call i8* @dictFetchValue(%struct.dict* %233, i8* %234) #6, !dbg !995
  %236 = bitcast i8* %235 to %struct.streamID*, !dbg !995
  %237 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 40, i32 4, !dbg !998
  %238 = load %struct.redisObject*, %struct.redisObject** %237, align 8, !dbg !998, !tbaa !586
  %239 = icmp eq %struct.redisObject* %238, null, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %239, label %248, label %240, !dbg !1001

; <label>:240:                                    ; preds = %231
  %241 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %238, i64 0, i32 2, !dbg !1002
  %242 = load i8*, i8** %241, align 8, !dbg !1002, !tbaa !972
  %243 = call %struct.streamCG* @streamLookupCG(%struct.stream* %212, i8* %242) #6, !dbg !1004
  %244 = icmp eq %struct.streamCG* %243, null, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %244, label %245, label %246, !dbg !1007

; <label>:245:                                    ; preds = %240
  call void @addReplyError(%struct.client* nonnull %227, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1008
  call void @unblockClient(%struct.client* nonnull %227) #8, !dbg !1010
  br label %274, !dbg !1011, !llvm.loop !991

; <label>:246:                                    ; preds = %240
  %247 = bitcast %struct.streamCG* %243 to i8*, !dbg !1012
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %247, i64 16, i1 false), !dbg !1012, !tbaa.struct !1014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br label %248, !dbg !1015

; <label>:248:                                    ; preds = %231, %246
  %249 = phi %struct.streamCG* [ %243, %246 ], [ null, %231 ], !dbg !1016
  %250 = call i32 @streamCompareID(%struct.streamID* nonnull %221, %struct.streamID* %236) #6, !dbg !1017
  %251 = icmp sgt i32 %250, 0, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %251, label %252, label %274, !dbg !1019

; <label>:252:                                    ; preds = %248
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #5, !dbg !1020
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* align 8 %235, i64 16, i1 false), !dbg !1021, !tbaa.struct !1014
  %253 = load i64, i64* %16, align 8, !dbg !1022, !tbaa !1023
  %254 = add i64 %253, 1, !dbg !1022
  store i64 %254, i64* %16, align 8, !dbg !1022, !tbaa !1023
  %255 = icmp eq %struct.streamCG* %249, null, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %255, label %264, label %256, !dbg !1029

; <label>:256:                                    ; preds = %252
  %257 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 40, i32 5, !dbg !1030
  %258 = load %struct.redisObject*, %struct.redisObject** %257, align 8, !dbg !1030, !tbaa !592
  %259 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %258, i64 0, i32 2, !dbg !1032
  %260 = load i8*, i8** %259, align 8, !dbg !1032, !tbaa !972
  %261 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* nonnull %249, i8* %260, i32 1) #6, !dbg !1033
  %262 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 40, i32 8, !dbg !1034
  %263 = load i32, i32* %262, align 8, !dbg !1034, !tbaa !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br label %264, !dbg !1036

; <label>:264:                                    ; preds = %252, %256
  %265 = phi %struct.streamConsumer* [ %261, %256 ], [ null, %252 ], !dbg !1037
  %266 = phi i32 [ %263, %256 ], [ 0, %252 ], !dbg !1037
  call void @addReplyMultiBulkLen(%struct.client* nonnull %227, i64 1) #6, !dbg !1038
  call void @addReplyMultiBulkLen(%struct.client* nonnull %227, i64 2) #6, !dbg !1039
  %267 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1040, !tbaa !800
  call void @addReplyBulk(%struct.client* nonnull %227, %struct.redisObject* %267) #6, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #5, !dbg !1042
  %268 = load i64, i64* %222, align 8, !dbg !1043, !tbaa !800
  store i64 %268, i64* %18, align 8, !dbg !1044, !tbaa !1045
  %269 = bitcast %struct.redisObject** %237 to i64*, !dbg !1047
  %270 = load i64, i64* %269, align 8, !dbg !1047, !tbaa !586
  store i64 %270, i64* %20, align 8, !dbg !1044, !tbaa !1048
  %271 = getelementptr inbounds %struct.client, %struct.client* %227, i64 0, i32 40, i32 3, !dbg !1049
  %272 = load i64, i64* %271, align 8, !dbg !1049, !tbaa !1050
  %273 = call i64 @streamReplyWithRange(%struct.client* nonnull %227, %struct.stream* %212, %struct.streamID* nonnull %3, %struct.streamID* null, i64 %272, i32 0, %struct.streamCG* %249, %struct.streamConsumer* %265, i32 %266, %struct.sreamPropInfo* nonnull %4) #6, !dbg !1053
  call void @unblockClient(%struct.client* nonnull %227) #8, !dbg !1054
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #5, !dbg !1055
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #5, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br label %274, !dbg !1056

; <label>:274:                                    ; preds = %248, %264, %245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  br label %275

; <label>:275:                                    ; preds = %223, %274
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %276 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #6, !dbg !983
  %277 = icmp eq %struct.listNode* %276, null, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  br i1 %277, label %278, label %223, !dbg !982

; <label>:278:                                    ; preds = %275, %214
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #5, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br label %279, !dbg !1059

; <label>:279:                                    ; preds = %278, %204, %200, %130, %117, %120, %201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  br label %280, !dbg !1061

; <label>:280:                                    ; preds = %279, %202
  %281 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !1061, !tbaa !800
  call void @decrRefCount(%struct.redisObject* %281) #6, !dbg !1062
  call void @zfree(i8* %32) #6, !dbg !1063
  call void @listDelNode(%struct.list* %23, %struct.listNode* %30) #6, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  %282 = load i64, i64* %22, align 8, !dbg !788, !tbaa !390
  %283 = icmp eq i64 %282, 0, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %283, label %284, label %29, !dbg !787, !llvm.loop !1065

; <label>:284:                                    ; preds = %280, %21
  call void @listRelease(%struct.list* nonnull %23) #6, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  %285 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !781, !tbaa !782
  %286 = getelementptr inbounds %struct.list, %struct.list* %285, i64 0, i32 5, !dbg !781
  %287 = load i64, i64* %286, align 8, !dbg !781, !tbaa !390
  %288 = icmp eq i64 %287, 0, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %288, label %289, label %21, !dbg !780, !llvm.loop !1068

; <label>:289:                                    ; preds = %284, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  ret void, !dbg !1070
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
define dso_local void @blockForKeys(%struct.client*, i32, %struct.redisObject** nocapture readonly, i32, i64, %struct.redisObject*, %struct.streamID*) local_unnamed_addr #0 !dbg !1071 {
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 0, !dbg !1099
  store i64 %4, i64* %8, align 8, !dbg !1100, !tbaa !1101
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 2, !dbg !1102
  store %struct.redisObject* %5, %struct.redisObject** %9, align 8, !dbg !1103, !tbaa !577
  %10 = icmp eq %struct.redisObject* %5, null, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %10, label %12, label %11, !dbg !1106

; <label>:11:                                     ; preds = %7
  tail call void @incrRefCount(%struct.redisObject* nonnull %5) #6, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br label %12, !dbg !1107

; <label>:12:                                     ; preds = %7, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  %13 = icmp sgt i32 %3, 0, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %13, label %14, label %66, !dbg !1111

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %1, 4
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2
  %18 = bitcast %struct.client* %0 to i8*
  %19 = sext i32 %3 to i64, !dbg !1111
  br label %20, !dbg !1111

; <label>:20:                                     ; preds = %14, %63
  %21 = phi i64 [ 0, %14 ], [ %64, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1113
  br i1 %15, label %22, label %27, !dbg !1113

; <label>:22:                                     ; preds = %20
  %23 = tail call i8* @zmalloc(i64 16) #6, !dbg !1114
  %24 = getelementptr inbounds %struct.streamID, %struct.streamID* %6, i64 %21, !dbg !1117
  %25 = bitcast %struct.streamID* %24 to i8*, !dbg !1118
  %26 = tail call i8* @memcpy(i8* %23, i8* %25, i64 16) #6, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br label %27, !dbg !1120

; <label>:27:                                     ; preds = %22, %20
  %28 = phi i8* [ %23, %22 ], [ null, %20 ], !dbg !1121
  %29 = load %struct.dict*, %struct.dict** %16, align 8, !dbg !1122, !tbaa !540
  %30 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %21, !dbg !1124
  %31 = bitcast %struct.redisObject** %30 to i8**, !dbg !1124
  %32 = load i8*, i8** %31, align 8, !dbg !1124, !tbaa !595
  %33 = tail call i32 @dictAdd(%struct.dict* %29, i8* %32, i8* %28) #6, !dbg !1125
  %34 = icmp eq i32 %33, 0, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %34, label %36, label %35, !dbg !1127

; <label>:35:                                     ; preds = %27
  tail call void @zfree(i8* %28) #6, !dbg !1128
  br label %63, !dbg !1130

; <label>:36:                                     ; preds = %27
  %37 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1131, !tbaa !595
  tail call void @incrRefCount(%struct.redisObject* %37) #6, !dbg !1132
  %38 = load %struct.redisDb*, %struct.redisDb** %17, align 8, !dbg !1133, !tbaa !553
  %39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i64 0, i32 2, !dbg !1134
  %40 = load %struct.dict*, %struct.dict** %39, align 8, !dbg !1134, !tbaa !555
  %41 = load i8*, i8** %31, align 8, !dbg !1135, !tbaa !595
  %42 = tail call %struct.dictEntry* @dictFind(%struct.dict* %40, i8* %41) #6, !dbg !1136
  %43 = icmp eq %struct.dictEntry* %42, null, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  br i1 %43, label %44, label %56, !dbg !1139

; <label>:44:                                     ; preds = %36
  %45 = tail call %struct.list* @listCreate() #6, !dbg !1140
  %46 = load %struct.redisDb*, %struct.redisDb** %17, align 8, !dbg !1142, !tbaa !553
  %47 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %46, i64 0, i32 2, !dbg !1143
  %48 = load %struct.dict*, %struct.dict** %47, align 8, !dbg !1143, !tbaa !555
  %49 = load i8*, i8** %31, align 8, !dbg !1144, !tbaa !595
  %50 = bitcast %struct.list* %45 to i8*, !dbg !1145
  %51 = tail call i32 @dictAdd(%struct.dict* %48, i8* %49, i8* %50) #6, !dbg !1146
  %52 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1148, !tbaa !595
  tail call void @incrRefCount(%struct.redisObject* %52) #6, !dbg !1149
  %53 = icmp eq i32 %51, 0, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %53, label %60, label %54, !dbg !1150

; <label>:54:                                     ; preds = %44
  %55 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !1150, !tbaa !595
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 532) #6, !dbg !1150
  tail call void @_exit(i32 1) #7, !dbg !1150
  unreachable

; <label>:56:                                     ; preds = %36
  %57 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 1, i32 0, !dbg !1151
  %58 = bitcast i8** %57 to %struct.list**, !dbg !1151
  %59 = load %struct.list*, %struct.list** %58, align 8, !dbg !1151, !tbaa !425
  br label %60

; <label>:60:                                     ; preds = %44, %56
  %61 = phi %struct.list* [ %59, %56 ], [ %45, %44 ], !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %62 = tail call %struct.list* @listAddNodeTail(%struct.list* %61, i8* nonnull %18) #6, !dbg !1154
  br label %63, !dbg !1155

; <label>:63:                                     ; preds = %60, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  %64 = add nuw nsw i64 %21, 1, !dbg !1157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  %65 = icmp slt i64 %64, %19, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %65, label %20, label %66, !dbg !1111, !llvm.loop !1159

; <label>:66:                                     ; preds = %63, %12
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1164
  %68 = load i32, i32* %67, align 8, !dbg !1165, !tbaa !360
  %69 = or i32 %68, 16, !dbg !1165
  store i32 %69, i32* %67, align 8, !dbg !1165, !tbaa !360
  %70 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39, !dbg !1166
  store i32 %1, i32* %70, align 8, !dbg !1167, !tbaa !369
  %71 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !1168, !tbaa !371
  %72 = add i32 %71, 1, !dbg !1168
  store i32 %72, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 233), align 8, !dbg !1168, !tbaa !371
  %73 = sext i32 %1 to i64, !dbg !1169
  %74 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 234, i64 %73, !dbg !1169
  %75 = load i32, i32* %74, align 4, !dbg !1170, !tbaa !379
  %76 = add i32 %75, 1, !dbg !1170
  store i32 %76, i32* %74, align 4, !dbg !1170, !tbaa !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  ret void, !dbg !1172
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
define dso_local void @signalKeyAsReady(%struct.redisDb*, %struct.redisObject*) local_unnamed_addr #0 !dbg !1173 {
  %3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 2, !dbg !1182
  %4 = load %struct.dict*, %struct.dict** %3, align 8, !dbg !1182, !tbaa !555
  %5 = bitcast %struct.redisObject* %1 to i8*, !dbg !1184
  %6 = tail call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %5) #6, !dbg !1185
  %7 = icmp eq %struct.dictEntry* %6, null, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %7, label %24, label %8, !dbg !1187

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i64 0, i32 3, !dbg !1188
  %10 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1188, !tbaa !798
  %11 = tail call %struct.dictEntry* @dictFind(%struct.dict* %10, i8* %5) #6, !dbg !1190
  %12 = icmp eq %struct.dictEntry* %11, null, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  br i1 %12, label %13, label %24, !dbg !1192

; <label>:13:                                     ; preds = %8
  %14 = tail call i8* @zmalloc(i64 16) #6, !dbg !1193
  %15 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !1195
  %16 = bitcast i8* %15 to %struct.redisObject**, !dbg !1195
  store %struct.redisObject* %1, %struct.redisObject** %16, align 8, !dbg !1196, !tbaa !800
  %17 = bitcast i8* %14 to %struct.redisDb**, !dbg !1197
  store %struct.redisDb* %0, %struct.redisDb** %17, align 8, !dbg !1198, !tbaa !795
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !1199
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 236), align 8, !dbg !1200, !tbaa !782
  %19 = tail call %struct.list* @listAddNodeTail(%struct.list* %18, i8* %14) #6, !dbg !1201
  tail call void @incrRefCount(%struct.redisObject* %1) #6, !dbg !1202
  %20 = load %struct.dict*, %struct.dict** %9, align 8, !dbg !1203, !tbaa !798
  %21 = tail call i32 @dictAdd(%struct.dict* %20, i8* %5, i8* null) #6, !dbg !1203
  %22 = icmp eq i32 %21, 0, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br i1 %22, label %24, label %23, !dbg !1203

; <label>:23:                                     ; preds = %13
  tail call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 605) #6, !dbg !1203
  tail call void @_exit(i32 1) #7, !dbg !1203
  unreachable

; <label>:24:                                     ; preds = %13, %8, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  ret void, !dbg !1205
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
!348 = !DILocation(line: 0, scope: !318)
!349 = !DILocation(line: 97, column: 1, scope: !56)
!350 = distinct !DISubprogram(name: "blockClient", scope: !1, file: !1, line: 102, type: !351, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !353)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !60, !59}
!353 = !{!354, !355}
!354 = !DILocalVariable(name: "c", arg: 1, scope: !350, file: !1, line: 102, type: !60)
!355 = !DILocalVariable(name: "btype", arg: 2, scope: !350, file: !1, line: 102, type: !59)
!356 = !DILocation(line: 102, column: 26, scope: !350)
!357 = !DILocation(line: 102, column: 33, scope: !350)
!358 = !DILocation(line: 103, column: 8, scope: !350)
!359 = !DILocation(line: 103, column: 14, scope: !350)
!360 = !{!361, !363, i64 160}
!361 = !{!"client", !362, i64 0, !363, i64 8, !364, i64 16, !364, i64 24, !364, i64 32, !362, i64 40, !364, i64 48, !362, i64 56, !363, i64 64, !364, i64 72, !364, i64 80, !364, i64 88, !363, i64 96, !363, i64 100, !362, i64 104, !364, i64 112, !324, i64 120, !362, i64 128, !362, i64 136, !362, i64 144, !362, i64 152, !363, i64 160, !363, i64 164, !363, i64 168, !363, i64 172, !363, i64 176, !362, i64 184, !362, i64 192, !364, i64 200, !324, i64 208, !324, i64 216, !324, i64 224, !324, i64 232, !324, i64 240, !325, i64 248, !363, i64 292, !325, i64 296, !363, i64 344, !365, i64 352, !363, i64 384, !366, i64 392, !324, i64 480, !364, i64 488, !364, i64 496, !364, i64 504, !364, i64 512, !364, i64 520, !363, i64 528, !325, i64 532}
!362 = !{!"long", !325, i64 0}
!363 = !{!"int", !325, i64 0}
!364 = !{!"any pointer", !325, i64 0}
!365 = !{!"multiState", !364, i64 0, !363, i64 8, !363, i64 12, !363, i64 16, !362, i64 24}
!366 = !{!"blockingState", !324, i64 0, !364, i64 8, !364, i64 16, !362, i64 24, !364, i64 32, !364, i64 40, !324, i64 48, !324, i64 56, !363, i64 64, !363, i64 68, !324, i64 72, !364, i64 80}
!367 = !DILocation(line: 104, column: 8, scope: !350)
!368 = !DILocation(line: 104, column: 14, scope: !350)
!369 = !{!361, !363, i64 384}
!370 = !DILocation(line: 105, column: 27, scope: !350)
!371 = !{!372, !363, i64 2736}
!372 = !{!"redisServer", !363, i64 0, !364, i64 8, !364, i64 16, !364, i64 24, !363, i64 32, !363, i64 36, !363, i64 40, !364, i64 48, !364, i64 56, !364, i64 64, !364, i64 72, !363, i64 80, !363, i64 84, !363, i64 88, !363, i64 92, !364, i64 96, !364, i64 104, !363, i64 112, !363, i64 116, !325, i64 120, !363, i64 164, !362, i64 168, !363, i64 176, !364, i64 184, !364, i64 192, !364, i64 200, !325, i64 208, !363, i64 216, !363, i64 220, !325, i64 224, !363, i64 352, !364, i64 360, !363, i64 368, !325, i64 372, !363, i64 436, !363, i64 440, !325, i64 444, !363, i64 508, !364, i64 512, !364, i64 520, !364, i64 528, !364, i64 536, !364, i64 544, !364, i64 552, !364, i64 560, !363, i64 568, !324, i64 576, !325, i64 584, !364, i64 840, !362, i64 848, !363, i64 856, !363, i64 860, !362, i64 864, !362, i64 872, !362, i64 880, !362, i64 888, !364, i64 896, !364, i64 904, !364, i64 912, !364, i64 920, !364, i64 928, !364, i64 936, !364, i64 944, !364, i64 952, !364, i64 960, !364, i64 968, !364, i64 976, !364, i64 984, !364, i64 992, !362, i64 1000, !324, i64 1008, !324, i64 1016, !324, i64 1024, !373, i64 1032, !324, i64 1040, !324, i64 1048, !324, i64 1056, !324, i64 1064, !324, i64 1072, !324, i64 1080, !324, i64 1088, !324, i64 1096, !324, i64 1104, !362, i64 1112, !324, i64 1120, !373, i64 1128, !324, i64 1136, !324, i64 1144, !324, i64 1152, !324, i64 1160, !364, i64 1168, !324, i64 1176, !324, i64 1184, !362, i64 1192, !374, i64 1200, !324, i64 1240, !324, i64 1248, !362, i64 1256, !362, i64 1264, !325, i64 1272, !363, i64 1728, !363, i64 1732, !363, i64 1736, !363, i64 1740, !363, i64 1744, !362, i64 1752, !363, i64 1760, !363, i64 1764, !363, i64 1768, !363, i64 1772, !362, i64 1776, !362, i64 1784, !363, i64 1792, !363, i64 1796, !363, i64 1800, !363, i64 1804, !325, i64 1808, !363, i64 1880, !363, i64 1884, !364, i64 1888, !363, i64 1896, !363, i64 1900, !362, i64 1904, !362, i64 1912, !362, i64 1920, !362, i64 1928, !363, i64 1936, !363, i64 1940, !364, i64 1944, !364, i64 1952, !363, i64 1960, !363, i64 1964, !362, i64 1968, !362, i64 1976, !362, i64 1984, !362, i64 1992, !363, i64 2000, !362, i64 2008, !363, i64 2016, !363, i64 2020, !363, i64 2024, !363, i64 2028, !363, i64 2032, !363, i64 2036, !363, i64 2040, !363, i64 2044, !363, i64 2048, !363, i64 2052, !363, i64 2056, !363, i64 2060, !363, i64 2064, !364, i64 2072, !324, i64 2080, !324, i64 2088, !363, i64 2096, !364, i64 2104, !363, i64 2112, !364, i64 2120, !363, i64 2128, !363, i64 2132, !362, i64 2136, !362, i64 2144, !362, i64 2152, !362, i64 2160, !363, i64 2168, !363, i64 2172, !363, i64 2176, !363, i64 2180, !363, i64 2184, !363, i64 2188, !325, i64 2192, !375, i64 2200, !376, i64 2224, !364, i64 2240, !363, i64 2248, !364, i64 2256, !363, i64 2264, !325, i64 2268, !325, i64 2309, !324, i64 2352, !324, i64 2360, !363, i64 2368, !363, i64 2372, !364, i64 2376, !324, i64 2384, !324, i64 2392, !324, i64 2400, !324, i64 2408, !362, i64 2416, !362, i64 2424, !363, i64 2432, !363, i64 2436, !363, i64 2440, !363, i64 2444, !363, i64 2448, !364, i64 2456, !364, i64 2464, !363, i64 2472, !363, i64 2476, !364, i64 2480, !364, i64 2488, !363, i64 2496, !363, i64 2500, !362, i64 2504, !362, i64 2512, !362, i64 2520, !363, i64 2528, !363, i64 2532, !364, i64 2536, !362, i64 2544, !363, i64 2552, !363, i64 2556, !363, i64 2560, !362, i64 2568, !363, i64 2576, !363, i64 2580, !363, i64 2584, !364, i64 2592, !325, i64 2600, !324, i64 2648, !363, i64 2656, !364, i64 2664, !364, i64 2672, !363, i64 2680, !364, i64 2688, !363, i64 2696, !363, i64 2700, !324, i64 2704, !363, i64 2712, !363, i64 2716, !363, i64 2720, !363, i64 2724, !324, i64 2728, !363, i64 2736, !325, i64 2740, !364, i64 2768, !364, i64 2776, !363, i64 2784, !363, i64 2788, !363, i64 2792, !363, i64 2796, !362, i64 2800, !362, i64 2808, !362, i64 2816, !362, i64 2824, !362, i64 2832, !362, i64 2840, !362, i64 2848, !362, i64 2856, !363, i64 2864, !363, i64 2868, !362, i64 2872, !362, i64 2880, !363, i64 2888, !324, i64 2896, !364, i64 2904, !364, i64 2912, !363, i64 2920, !363, i64 2924, !324, i64 2928, !364, i64 2936, !364, i64 2944, !363, i64 2952, !363, i64 2956, !363, i64 2960, !363, i64 2964, !364, i64 2968, !363, i64 2976, !363, i64 2980, !363, i64 2984, !364, i64 2992, !364, i64 3000, !364, i64 3008, !364, i64 3016, !324, i64 3024, !324, i64 3032, !324, i64 3040, !363, i64 3048, !363, i64 3052, !363, i64 3056, !363, i64 3060, !363, i64 3064, !363, i64 3068, !363, i64 3072, !363, i64 3076, !363, i64 3080, !363, i64 3084, !363, i64 3088, !324, i64 3096, !364, i64 3104, !364, i64 3112, !364, i64 3120, !363, i64 3128, !363, i64 3132, !363, i64 3136, !362, i64 3144, !364, i64 3152, !364, i64 3160, !364, i64 3168}
!373 = !{!"double", !325, i64 0}
!374 = !{!"malloc_stats", !362, i64 0, !362, i64 8, !362, i64 16, !362, i64 24, !362, i64 32}
!375 = !{!"", !363, i64 0, !362, i64 8, !324, i64 16}
!376 = !{!"redisOpArray", !364, i64 0, !363, i64 8}
!377 = !DILocation(line: 106, column: 5, scope: !350)
!378 = !DILocation(line: 106, column: 42, scope: !350)
!379 = !{!363, !363, i64 0}
!380 = !DILocation(line: 107, column: 1, scope: !350)
!381 = distinct !DISubprogram(name: "processUnblockedClients", scope: !1, file: !1, line: 112, type: !382, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "ln", scope: !381, file: !1, line: 113, type: !150)
!386 = !DILocalVariable(name: "c", scope: !381, file: !1, line: 114, type: !60)
!387 = !DILocation(line: 116, column: 5, scope: !381)
!388 = !DILocation(line: 116, column: 12, scope: !381)
!389 = !{!372, !364, i64 2768}
!390 = !{!391, !362, i64 40}
!391 = !{!"list", !364, i64 0, !364, i64 8, !364, i64 16, !364, i64 24, !364, i64 32, !362, i64 40}
!392 = !DILocation(line: 117, column: 14, scope: !393)
!393 = distinct !DILexicalBlock(scope: !381, file: !1, line: 116, column: 50)
!394 = !{!391, !364, i64 0}
!395 = !DILocation(line: 113, column: 15, scope: !381)
!396 = !DILocation(line: 118, column: 9, scope: !393)
!397 = !DILocation(line: 119, column: 17, scope: !393)
!398 = !{!399, !364, i64 16}
!399 = !{!"listNode", !364, i64 0, !364, i64 8, !364, i64 16}
!400 = !DILocation(line: 114, column: 13, scope: !381)
!401 = !DILocation(line: 120, column: 9, scope: !393)
!402 = !DILocation(line: 121, column: 12, scope: !393)
!403 = !DILocation(line: 121, column: 18, scope: !393)
!404 = !DILocation(line: 127, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !393, file: !1, line: 127, column: 13)
!406 = !DILocation(line: 127, column: 13, scope: !393)
!407 = !DILocation(line: 128, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 128, column: 17)
!409 = distinct !DILexicalBlock(scope: !405, file: !1, line: 127, column: 43)
!410 = !{!361, !364, i64 32}
!411 = !DILocation(line: 128, column: 17, scope: !408)
!412 = !DILocation(line: 128, column: 29, scope: !408)
!413 = !DILocalVariable(name: "s", arg: 1, scope: !414, file: !7, line: 87, type: !419)
!414 = distinct !DISubprogram(name: "sdslen", scope: !7, file: !7, line: 87, type: !415, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !420)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !418, line: 58, baseType: !48)
!418 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!420 = !{!413, !421}
!421 = !DILocalVariable(name: "flags", scope: !414, file: !7, line: 88, type: !14)
!422 = !DILocation(line: 87, column: 39, scope: !414, inlinedAt: !423)
!423 = distinct !DILocation(line: 128, column: 32, scope: !408)
!424 = !DILocation(line: 88, column: 27, scope: !414, inlinedAt: !423)
!425 = !{!325, !325, i64 0}
!426 = !DILocation(line: 88, column: 19, scope: !414, inlinedAt: !423)
!427 = !DILocation(line: 89, column: 5, scope: !414, inlinedAt: !423)
!428 = !DILocation(line: 91, column: 20, scope: !429, inlinedAt: !423)
!429 = distinct !DILexicalBlock(scope: !414, file: !7, line: 89, column: 33)
!430 = !DILocation(line: 91, column: 13, scope: !429, inlinedAt: !423)
!431 = !DILocation(line: 93, column: 20, scope: !429, inlinedAt: !423)
!432 = !DILocation(line: 93, column: 34, scope: !429, inlinedAt: !423)
!433 = !DILocation(line: 93, column: 13, scope: !429, inlinedAt: !423)
!434 = !DILocation(line: 95, column: 20, scope: !429, inlinedAt: !423)
!435 = !DILocation(line: 95, column: 35, scope: !429, inlinedAt: !423)
!436 = !{!437, !437, i64 0}
!437 = !{!"short", !325, i64 0}
!438 = !DILocation(line: 95, column: 13, scope: !429, inlinedAt: !423)
!439 = !DILocation(line: 97, column: 20, scope: !429, inlinedAt: !423)
!440 = !DILocation(line: 97, column: 35, scope: !429, inlinedAt: !423)
!441 = !DILocation(line: 97, column: 13, scope: !429, inlinedAt: !423)
!442 = !DILocation(line: 99, column: 20, scope: !429, inlinedAt: !423)
!443 = !DILocation(line: 99, column: 35, scope: !429, inlinedAt: !423)
!444 = !{!362, !362, i64 0}
!445 = !DILocation(line: 99, column: 13, scope: !429, inlinedAt: !423)
!446 = !DILocation(line: 101, column: 5, scope: !414, inlinedAt: !423)
!447 = !DILocation(line: 102, column: 1, scope: !414, inlinedAt: !423)
!448 = !DILocation(line: 128, column: 17, scope: !409)
!449 = !DILocation(line: 0, scope: !429, inlinedAt: !423)
!450 = !DILocation(line: 0, scope: !408)
!451 = !DILocation(line: 128, column: 52, scope: !408)
!452 = !DILocation(line: 129, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !408, file: !1, line: 128, column: 57)
!454 = !DILocation(line: 130, column: 13, scope: !453)
!455 = distinct !{!455, !387, !456}
!456 = !DILocation(line: 132, column: 5, scope: !381)
!457 = !DILocation(line: 133, column: 1, scope: !381)
!458 = distinct !DISubprogram(name: "queueClientForReprocessing", scope: !1, file: !1, line: 151, type: !203, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !459)
!459 = !{!460}
!460 = !DILocalVariable(name: "c", arg: 1, scope: !458, file: !1, line: 151, type: !60)
!461 = !DILocation(line: 151, column: 41, scope: !458)
!462 = !DILocation(line: 154, column: 14, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !1, line: 154, column: 9)
!464 = !DILocation(line: 154, column: 20, scope: !463)
!465 = !DILocation(line: 154, column: 9, scope: !458)
!466 = !DILocation(line: 155, column: 18, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !1, line: 154, column: 41)
!468 = !DILocation(line: 156, column: 32, scope: !467)
!469 = !DILocation(line: 156, column: 50, scope: !467)
!470 = !DILocation(line: 156, column: 9, scope: !467)
!471 = !DILocation(line: 157, column: 5, scope: !467)
!472 = !DILocation(line: 158, column: 1, scope: !458)
!473 = distinct !DISubprogram(name: "unblockClient", scope: !1, file: !1, line: 162, type: !203, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !474)
!474 = !{!475}
!475 = !DILocalVariable(name: "c", arg: 1, scope: !473, file: !1, line: 162, type: !60)
!476 = !DILocation(line: 162, column: 28, scope: !473)
!477 = !DILocation(line: 163, column: 12, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !1, line: 163, column: 9)
!479 = !DILocation(line: 163, column: 18, scope: !478)
!480 = !DILocation(line: 163, column: 34, scope: !478)
!481 = !DILocation(line: 164, column: 18, scope: !478)
!482 = !DILocation(line: 164, column: 34, scope: !478)
!483 = !DILocation(line: 165, column: 18, scope: !478)
!484 = !DILocation(line: 163, column: 9, scope: !473)
!485 = !DILocation(line: 166, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !1, line: 165, column: 37)
!487 = !DILocation(line: 167, column: 5, scope: !486)
!488 = !DILocation(line: 167, column: 25, scope: !489)
!489 = distinct !DILexicalBlock(scope: !478, file: !1, line: 167, column: 16)
!490 = !DILocation(line: 167, column: 16, scope: !478)
!491 = !DILocation(line: 168, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 167, column: 42)
!493 = !DILocation(line: 169, column: 5, scope: !492)
!494 = !DILocation(line: 169, column: 25, scope: !495)
!495 = distinct !DILexicalBlock(scope: !489, file: !1, line: 169, column: 16)
!496 = !DILocation(line: 169, column: 16, scope: !489)
!497 = !DILocation(line: 170, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !1, line: 169, column: 44)
!499 = !DILocation(line: 172, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 171, column: 12)
!501 = !DILocation(line: 176, column: 27, scope: !473)
!502 = !DILocation(line: 177, column: 39, scope: !473)
!503 = !DILocation(line: 177, column: 5, scope: !473)
!504 = !DILocation(line: 177, column: 45, scope: !473)
!505 = !DILocation(line: 178, column: 8, scope: !473)
!506 = !DILocation(line: 178, column: 14, scope: !473)
!507 = !DILocation(line: 179, column: 14, scope: !473)
!508 = !DILocation(line: 151, column: 41, scope: !458, inlinedAt: !509)
!509 = distinct !DILocation(line: 180, column: 5, scope: !473)
!510 = !DILocation(line: 154, column: 20, scope: !463, inlinedAt: !509)
!511 = !DILocation(line: 154, column: 9, scope: !458, inlinedAt: !509)
!512 = !DILocation(line: 155, column: 18, scope: !467, inlinedAt: !509)
!513 = !DILocation(line: 156, column: 32, scope: !467, inlinedAt: !509)
!514 = !DILocation(line: 156, column: 50, scope: !467, inlinedAt: !509)
!515 = !DILocation(line: 156, column: 9, scope: !467, inlinedAt: !509)
!516 = !DILocation(line: 157, column: 5, scope: !467, inlinedAt: !509)
!517 = !DILocation(line: 158, column: 1, scope: !458, inlinedAt: !509)
!518 = !DILocation(line: 181, column: 1, scope: !473)
!519 = distinct !DISubprogram(name: "unblockClientWaitingData", scope: !1, file: !1, line: 543, type: !203, isLocal: false, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !520)
!520 = !{!521, !522, !523, !535, !536}
!521 = !DILocalVariable(name: "c", arg: 1, scope: !519, file: !1, line: 543, type: !60)
!522 = !DILocalVariable(name: "de", scope: !519, file: !1, line: 544, type: !111)
!523 = !DILocalVariable(name: "di", scope: !519, file: !1, line: 545, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !75, line: 95, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !75, line: 88, size: 384, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !526, file: !75, line: 89, baseType: !73, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !526, file: !75, line: 90, baseType: !124, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !526, file: !75, line: 91, baseType: !59, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !526, file: !75, line: 91, baseType: !59, size: 32, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !526, file: !75, line: 92, baseType: !111, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !526, file: !75, line: 92, baseType: !111, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !526, file: !75, line: 94, baseType: !142, size: 64, offset: 320)
!535 = !DILocalVariable(name: "l", scope: !519, file: !1, line: 546, type: !144)
!536 = !DILocalVariable(name: "key", scope: !537, file: !1, line: 552, type: !173)
!537 = distinct !DILexicalBlock(scope: !519, file: !1, line: 551, column: 40)
!538 = !DILocation(line: 543, column: 39, scope: !519)
!539 = !DILocation(line: 548, column: 5, scope: !519)
!540 = !{!361, !364, i64 400}
!541 = !{!542, !362, i64 24}
!542 = !{!"dictht", !364, i64 0, !362, i64 8, !362, i64 16, !362, i64 24}
!543 = !DILocation(line: 549, column: 10, scope: !519)
!544 = !DILocation(line: 545, column: 19, scope: !519)
!545 = !DILocation(line: 551, column: 5, scope: !519)
!546 = !DILocation(line: 551, column: 17, scope: !519)
!547 = !DILocation(line: 544, column: 16, scope: !519)
!548 = !DILocation(line: 551, column: 31, scope: !519)
!549 = !DILocation(line: 552, column: 21, scope: !537)
!550 = !{!551, !364, i64 0}
!551 = !{!"dictEntry", !364, i64 0, !325, i64 8, !364, i64 16}
!552 = !DILocation(line: 555, column: 31, scope: !537)
!553 = !{!361, !364, i64 16}
!554 = !DILocation(line: 555, column: 35, scope: !537)
!555 = !{!556, !364, i64 16}
!556 = !{!"redisDb", !364, i64 0, !364, i64 8, !364, i64 16, !364, i64 24, !364, i64 32, !363, i64 40, !324, i64 48, !364, i64 56}
!557 = !DILocation(line: 555, column: 13, scope: !537)
!558 = !DILocation(line: 546, column: 11, scope: !519)
!559 = !DILocation(line: 556, column: 9, scope: !537)
!560 = !DILocation(line: 552, column: 15, scope: !537)
!561 = !DILocation(line: 557, column: 23, scope: !537)
!562 = !DILocation(line: 557, column: 9, scope: !537)
!563 = !DILocation(line: 559, column: 13, scope: !564)
!564 = distinct !DILexicalBlock(scope: !537, file: !1, line: 559, column: 13)
!565 = !DILocation(line: 559, column: 27, scope: !564)
!566 = !DILocation(line: 559, column: 13, scope: !537)
!567 = !DILocation(line: 560, column: 27, scope: !564)
!568 = !DILocation(line: 560, column: 31, scope: !564)
!569 = !DILocation(line: 560, column: 13, scope: !564)
!570 = distinct !{!570, !545, !571}
!571 = !DILocation(line: 561, column: 5, scope: !519)
!572 = !DILocation(line: 562, column: 5, scope: !519)
!573 = !DILocation(line: 565, column: 23, scope: !519)
!574 = !DILocation(line: 565, column: 5, scope: !519)
!575 = !DILocation(line: 566, column: 17, scope: !576)
!576 = distinct !DILexicalBlock(scope: !519, file: !1, line: 566, column: 9)
!577 = !{!361, !364, i64 408}
!578 = !DILocation(line: 566, column: 9, scope: !576)
!579 = !DILocation(line: 566, column: 9, scope: !519)
!580 = !DILocation(line: 567, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !576, file: !1, line: 566, column: 25)
!582 = !DILocation(line: 568, column: 24, scope: !581)
!583 = !DILocation(line: 569, column: 5, scope: !581)
!584 = !DILocation(line: 570, column: 17, scope: !585)
!585 = distinct !DILexicalBlock(scope: !519, file: !1, line: 570, column: 9)
!586 = !{!361, !364, i64 424}
!587 = !DILocation(line: 570, column: 9, scope: !585)
!588 = !DILocation(line: 570, column: 9, scope: !519)
!589 = !DILocation(line: 571, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !1, line: 570, column: 30)
!591 = !DILocation(line: 572, column: 30, scope: !590)
!592 = !{!361, !364, i64 432}
!593 = !DILocation(line: 572, column: 9, scope: !590)
!594 = !DILocation(line: 573, column: 29, scope: !590)
!595 = !{!364, !364, i64 0}
!596 = !DILocation(line: 575, column: 5, scope: !590)
!597 = !DILocation(line: 576, column: 1, scope: !519)
!598 = distinct !DISubprogram(name: "replyToBlockedClientTimedOut", scope: !1, file: !1, line: 186, type: !203, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !599)
!599 = !{!600}
!600 = !DILocalVariable(name: "c", arg: 1, scope: !598, file: !1, line: 186, type: !60)
!601 = !DILocation(line: 186, column: 43, scope: !598)
!602 = !DILocation(line: 187, column: 12, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !1, line: 187, column: 9)
!604 = !DILocation(line: 187, column: 18, scope: !603)
!605 = !DILocation(line: 187, column: 34, scope: !603)
!606 = !DILocation(line: 188, column: 18, scope: !603)
!607 = !DILocation(line: 188, column: 34, scope: !603)
!608 = !DILocation(line: 189, column: 18, scope: !603)
!609 = !DILocation(line: 187, column: 9, scope: !598)
!610 = !DILocation(line: 190, column: 27, scope: !611)
!611 = distinct !DILexicalBlock(scope: !603, file: !1, line: 189, column: 37)
!612 = !{!613, !364, i64 88}
!613 = !{!"sharedObjectsStruct", !364, i64 0, !364, i64 8, !364, i64 16, !364, i64 24, !364, i64 32, !364, i64 40, !364, i64 48, !364, i64 56, !364, i64 64, !364, i64 72, !364, i64 80, !364, i64 88, !364, i64 96, !364, i64 104, !364, i64 112, !364, i64 120, !364, i64 128, !364, i64 136, !364, i64 144, !364, i64 152, !364, i64 160, !364, i64 168, !364, i64 176, !364, i64 184, !364, i64 192, !364, i64 200, !364, i64 208, !364, i64 216, !364, i64 224, !364, i64 232, !364, i64 240, !364, i64 248, !364, i64 256, !364, i64 264, !364, i64 272, !364, i64 280, !364, i64 288, !364, i64 296, !364, i64 304, !364, i64 312, !364, i64 320, !364, i64 328, !364, i64 336, !364, i64 344, !364, i64 352, !364, i64 360, !325, i64 368, !325, i64 448, !325, i64 80448, !325, i64 80704, !364, i64 80960, !364, i64 80968}
!614 = !DILocation(line: 190, column: 9, scope: !611)
!615 = !DILocation(line: 191, column: 5, scope: !611)
!616 = !DILocation(line: 191, column: 25, scope: !617)
!617 = distinct !DILexicalBlock(scope: !603, file: !1, line: 191, column: 16)
!618 = !DILocation(line: 191, column: 16, scope: !603)
!619 = !DILocation(line: 192, column: 65, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !1, line: 191, column: 42)
!621 = !{!361, !324, i64 464}
!622 = !DILocation(line: 192, column: 28, scope: !620)
!623 = !DILocation(line: 192, column: 9, scope: !620)
!624 = !DILocation(line: 193, column: 5, scope: !620)
!625 = !DILocation(line: 193, column: 25, scope: !626)
!626 = distinct !DILexicalBlock(scope: !617, file: !1, line: 193, column: 16)
!627 = !DILocation(line: 193, column: 16, scope: !617)
!628 = !DILocation(line: 194, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !1, line: 193, column: 44)
!630 = !DILocation(line: 196, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !1, line: 195, column: 12)
!632 = !DILocation(line: 198, column: 1, scope: !598)
!633 = distinct !DISubprogram(name: "disconnectAllBlockedClients", scope: !1, file: !1, line: 207, type: !382, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !634)
!634 = !{!635, !636, !642}
!635 = !DILocalVariable(name: "ln", scope: !633, file: !1, line: 208, type: !150)
!636 = !DILocalVariable(name: "li", scope: !633, file: !1, line: 209, type: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !146, line: 45, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !146, line: 42, size: 128, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !146, line: 43, baseType: !150, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !638, file: !146, line: 44, baseType: !59, size: 32, offset: 64)
!642 = !DILocalVariable(name: "c", scope: !643, file: !1, line: 213, type: !60)
!643 = distinct !DILexicalBlock(scope: !633, file: !1, line: 212, column: 33)
!644 = !DILocation(line: 209, column: 5, scope: !633)
!645 = !DILocation(line: 211, column: 23, scope: !633)
!646 = !{!372, !364, i64 512}
!647 = !DILocation(line: 209, column: 14, scope: !633)
!648 = !DILocation(line: 211, column: 5, scope: !633)
!649 = !DILocation(line: 212, column: 5, scope: !633)
!650 = !DILocation(line: 212, column: 17, scope: !633)
!651 = !DILocation(line: 208, column: 15, scope: !633)
!652 = !DILocation(line: 213, column: 21, scope: !643)
!653 = !DILocation(line: 213, column: 17, scope: !643)
!654 = !DILocation(line: 215, column: 16, scope: !655)
!655 = distinct !DILexicalBlock(scope: !643, file: !1, line: 215, column: 13)
!656 = !DILocation(line: 215, column: 22, scope: !655)
!657 = !DILocation(line: 215, column: 13, scope: !643)
!658 = !DILocation(line: 216, column: 27, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !1, line: 215, column: 40)
!660 = !DILocation(line: 216, column: 13, scope: !659)
!661 = !DILocation(line: 219, column: 13, scope: !659)
!662 = !DILocation(line: 220, column: 22, scope: !659)
!663 = !DILocation(line: 221, column: 9, scope: !659)
!664 = distinct !{!664, !649, !665}
!665 = !DILocation(line: 222, column: 5, scope: !633)
!666 = !DILocation(line: 223, column: 1, scope: !633)
!667 = distinct !DISubprogram(name: "handleClientsBlockedOnKeys", scope: !1, file: !1, line: 246, type: !382, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !668)
!668 = !{!669, !671, !673, !680, !681, !684, !687, !688, !690, !691, !692, !693, !694, !697, !700, !701, !702, !704, !705, !706, !708, !709, !712, !745, !748, !749, !750, !752, !754, !762, !765, !773, !774}
!669 = !DILocalVariable(name: "l", scope: !670, file: !1, line: 248, type: !144)
!670 = distinct !DILexicalBlock(scope: !667, file: !1, line: 247, column: 47)
!671 = !DILocalVariable(name: "ln", scope: !672, file: !1, line: 258, type: !150)
!672 = distinct !DILexicalBlock(scope: !670, file: !1, line: 257, column: 35)
!673 = !DILocalVariable(name: "rl", scope: !672, file: !1, line: 259, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "readyList", file: !62, line: 719, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readyList", file: !62, line: 716, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !676, file: !62, line: 717, baseType: !68, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !676, file: !62, line: 718, baseType: !173, size: 64, offset: 64)
!680 = !DILocalVariable(name: "o", scope: !672, file: !1, line: 266, type: !173)
!681 = !DILocalVariable(name: "de", scope: !682, file: !1, line: 268, type: !111)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 267, column: 51)
!683 = distinct !DILexicalBlock(scope: !672, file: !1, line: 267, column: 17)
!684 = !DILocalVariable(name: "clients", scope: !685, file: !1, line: 274, type: !144)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 273, column: 25)
!686 = distinct !DILexicalBlock(scope: !682, file: !1, line: 273, column: 21)
!687 = !DILocalVariable(name: "numclients", scope: !685, file: !1, line: 275, type: !59)
!688 = !DILocalVariable(name: "clientnode", scope: !689, file: !1, line: 278, type: !150)
!689 = distinct !DILexicalBlock(scope: !685, file: !1, line: 277, column: 41)
!690 = !DILocalVariable(name: "receiver", scope: !689, file: !1, line: 279, type: !60)
!691 = !DILocalVariable(name: "dstkey", scope: !689, file: !1, line: 289, type: !173)
!692 = !DILocalVariable(name: "where", scope: !689, file: !1, line: 290, type: !59)
!693 = !DILocalVariable(name: "value", scope: !689, file: !1, line: 293, type: !173)
!694 = !DILocalVariable(name: "de", scope: !695, file: !1, line: 329, type: !111)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 328, column: 56)
!696 = distinct !DILexicalBlock(scope: !683, file: !1, line: 328, column: 22)
!697 = !DILocalVariable(name: "clients", scope: !698, file: !1, line: 335, type: !144)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 334, column: 25)
!699 = distinct !DILexicalBlock(scope: !695, file: !1, line: 334, column: 21)
!700 = !DILocalVariable(name: "numclients", scope: !698, file: !1, line: 336, type: !59)
!701 = !DILocalVariable(name: "zcard", scope: !698, file: !1, line: 337, type: !48)
!702 = !DILocalVariable(name: "clientnode", scope: !703, file: !1, line: 340, type: !150)
!703 = distinct !DILexicalBlock(scope: !698, file: !1, line: 339, column: 50)
!704 = !DILocalVariable(name: "receiver", scope: !703, file: !1, line: 341, type: !60)
!705 = !DILocalVariable(name: "where", scope: !703, file: !1, line: 351, type: !59)
!706 = !DILocalVariable(name: "argv", scope: !703, file: !1, line: 359, type: !707)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !132)
!708 = !DILocalVariable(name: "cmd", scope: !703, file: !1, line: 360, type: !196)
!709 = !DILocalVariable(name: "de", scope: !710, file: !1, line: 376, type: !111)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 375, column: 58)
!711 = distinct !DILexicalBlock(scope: !696, file: !1, line: 375, column: 22)
!712 = !DILocalVariable(name: "s", scope: !710, file: !1, line: 377, type: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !715, line: 21, baseType: !716)
!715 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/stream.h", directory: "/root/.unikraft/apps/redis/build")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !715, line: 16, size: 320, elements: !717)
!717 = !{!718, !737, !738, !744}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !716, file: !715, line: 17, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !721, line: 137, baseType: !722)
!721 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !721, line: 133, size: 192, elements: !723)
!723 = !{!724, !735, !736}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !722, file: !721, line: 134, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !721, line: 131, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !721, line: 98, size: 32, elements: !728)
!728 = !{!729, !730, !731, !732, !733}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !727, file: !721, line: 99, baseType: !36, size: 1, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !727, file: !721, line: 100, baseType: !36, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !727, file: !721, line: 101, baseType: !36, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !727, file: !721, line: 102, baseType: !36, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !727, file: !721, line: 130, baseType: !734, offset: 32)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !20)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !722, file: !721, line: 135, baseType: !46, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !722, file: !721, line: 136, baseType: !46, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !716, file: !715, line: 18, baseType: !46, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !716, file: !715, line: 19, baseType: !739, size: 128, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !715, line: 14, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !715, line: 11, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !740, file: !715, line: 12, baseType: !46, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !740, file: !715, line: 13, baseType: !46, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !716, file: !715, line: 20, baseType: !719, size: 64, offset: 256)
!745 = !DILocalVariable(name: "clients", scope: !746, file: !1, line: 383, type: !144)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 382, column: 25)
!747 = distinct !DILexicalBlock(scope: !710, file: !1, line: 382, column: 21)
!748 = !DILocalVariable(name: "ln", scope: !746, file: !1, line: 384, type: !150)
!749 = !DILocalVariable(name: "li", scope: !746, file: !1, line: 385, type: !637)
!750 = !DILocalVariable(name: "receiver", scope: !751, file: !1, line: 389, type: !60)
!751 = distinct !DILexicalBlock(scope: !746, file: !1, line: 388, column: 49)
!752 = !DILocalVariable(name: "gt", scope: !751, file: !1, line: 391, type: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!754 = !DILocalVariable(name: "group", scope: !751, file: !1, line: 403, type: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !715, line: 64, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !715, line: 51, size: 256, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !757, file: !715, line: 52, baseType: !739, size: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !757, file: !715, line: 55, baseType: !719, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !757, file: !715, line: 61, baseType: !719, size: 64, offset: 192)
!762 = !DILocalVariable(name: "start", scope: !763, file: !1, line: 421, type: !739)
!763 = distinct !DILexicalBlock(scope: !764, file: !1, line: 420, column: 67)
!764 = distinct !DILexicalBlock(scope: !751, file: !1, line: 420, column: 29)
!765 = !DILocalVariable(name: "consumer", scope: !763, file: !1, line: 425, type: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !715, line: 79, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !715, line: 67, size: 192, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !768, file: !715, line: 68, baseType: !281, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !768, file: !715, line: 69, baseType: !183, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !768, file: !715, line: 72, baseType: !719, size: 64, offset: 128)
!773 = !DILocalVariable(name: "noack", scope: !763, file: !1, line: 426, type: !59)
!774 = !DILocalVariable(name: "pi", scope: !763, file: !1, line: 443, type: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !715, line: 94, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sreamPropInfo", file: !715, line: 91, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !776, file: !715, line: 92, baseType: !173, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !776, file: !715, line: 93, baseType: !173, size: 64, offset: 64)
!780 = !DILocation(line: 247, column: 5, scope: !667)
!781 = !DILocation(line: 247, column: 11, scope: !667)
!782 = !{!372, !364, i64 2776}
!783 = !DILocation(line: 247, column: 41, scope: !667)
!784 = !DILocation(line: 248, column: 15, scope: !670)
!785 = !DILocation(line: 255, column: 29, scope: !670)
!786 = !DILocation(line: 255, column: 27, scope: !670)
!787 = !DILocation(line: 257, column: 9, scope: !670)
!788 = !DILocation(line: 257, column: 15, scope: !670)
!789 = !DILocation(line: 257, column: 29, scope: !670)
!790 = !DILocation(line: 258, column: 28, scope: !672)
!791 = !DILocation(line: 258, column: 23, scope: !672)
!792 = !DILocation(line: 259, column: 33, scope: !672)
!793 = !DILocation(line: 259, column: 24, scope: !672)
!794 = !DILocation(line: 263, column: 28, scope: !672)
!795 = !{!796, !364, i64 0}
!796 = !{!"readyList", !364, i64 0, !364, i64 8}
!797 = !DILocation(line: 263, column: 32, scope: !672)
!798 = !{!556, !364, i64 24}
!799 = !DILocation(line: 263, column: 47, scope: !672)
!800 = !{!796, !364, i64 8}
!801 = !DILocation(line: 263, column: 13, scope: !672)
!802 = !DILocation(line: 266, column: 42, scope: !672)
!803 = !DILocation(line: 266, column: 49, scope: !672)
!804 = !DILocation(line: 266, column: 23, scope: !672)
!805 = !DILocation(line: 266, column: 19, scope: !672)
!806 = !DILocation(line: 267, column: 19, scope: !683)
!807 = !DILocation(line: 267, column: 27, scope: !683)
!808 = !DILocation(line: 267, column: 33, scope: !683)
!809 = !DILocation(line: 267, column: 38, scope: !683)
!810 = !DILocation(line: 267, column: 17, scope: !672)
!811 = !DILocation(line: 272, column: 35, scope: !682)
!812 = !DILocation(line: 272, column: 39, scope: !682)
!813 = !DILocation(line: 272, column: 57, scope: !682)
!814 = !DILocation(line: 272, column: 22, scope: !682)
!815 = !DILocation(line: 268, column: 28, scope: !682)
!816 = !DILocation(line: 273, column: 21, scope: !686)
!817 = !DILocation(line: 273, column: 21, scope: !682)
!818 = !DILocation(line: 274, column: 37, scope: !685)
!819 = !DILocation(line: 274, column: 27, scope: !685)
!820 = !DILocation(line: 275, column: 38, scope: !685)
!821 = !DILocation(line: 275, column: 25, scope: !685)
!822 = !DILocation(line: 277, column: 21, scope: !685)
!823 = !DILocation(line: 0, scope: !685)
!824 = !DILocation(line: 277, column: 37, scope: !685)
!825 = !DILocation(line: 278, column: 48, scope: !689)
!826 = !DILocation(line: 278, column: 35, scope: !689)
!827 = !DILocation(line: 279, column: 56, scope: !689)
!828 = !DILocation(line: 279, column: 44, scope: !689)
!829 = !DILocation(line: 279, column: 33, scope: !689)
!830 = !DILocation(line: 281, column: 39, scope: !831)
!831 = distinct !DILexicalBlock(scope: !689, file: !1, line: 281, column: 29)
!832 = !DILocation(line: 281, column: 45, scope: !831)
!833 = !DILocation(line: 281, column: 29, scope: !689)
!834 = !DILocation(line: 284, column: 29, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !1, line: 281, column: 62)
!836 = !DILocation(line: 285, column: 29, scope: !835)
!837 = !DILocation(line: 286, column: 29, scope: !835)
!838 = distinct !{!838, !822, !839}
!839 = !DILocation(line: 316, column: 21, scope: !685)
!840 = !DILocation(line: 289, column: 55, scope: !689)
!841 = !DILocation(line: 289, column: 31, scope: !689)
!842 = !DILocation(line: 290, column: 48, scope: !689)
!843 = !{!361, !364, i64 88}
!844 = !DILocation(line: 290, column: 38, scope: !689)
!845 = !DILocation(line: 290, column: 56, scope: !689)
!846 = !DILocation(line: 291, column: 57, scope: !689)
!847 = !{!848, !364, i64 8}
!848 = !{!"redisCommand", !364, i64 0, !364, i64 8, !363, i64 16, !364, i64 24, !363, i64 32, !364, i64 40, !363, i64 48, !363, i64 52, !363, i64 56, !324, i64 64, !324, i64 72}
!849 = !DILocation(line: 291, column: 62, scope: !689)
!850 = !DILocation(line: 0, scope: !689)
!851 = !DILocation(line: 290, column: 37, scope: !689)
!852 = !DILocation(line: 290, column: 29, scope: !689)
!853 = !DILocation(line: 293, column: 39, scope: !689)
!854 = !DILocation(line: 293, column: 31, scope: !689)
!855 = !DILocation(line: 295, column: 29, scope: !856)
!856 = distinct !DILexicalBlock(scope: !689, file: !1, line: 295, column: 29)
!857 = !DILocation(line: 295, column: 29, scope: !689)
!858 = !DILocation(line: 299, column: 33, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 299, column: 33)
!860 = distinct !DILexicalBlock(scope: !856, file: !1, line: 295, column: 36)
!861 = !DILocation(line: 299, column: 33, scope: !860)
!862 = !DILocation(line: 299, column: 41, scope: !859)
!863 = !DILocation(line: 300, column: 29, scope: !860)
!864 = !DILocation(line: 303, column: 37, scope: !865)
!865 = distinct !DILexicalBlock(scope: !860, file: !1, line: 302, column: 33)
!866 = !DILocation(line: 303, column: 52, scope: !865)
!867 = !DILocation(line: 302, column: 33, scope: !865)
!868 = !DILocation(line: 304, column: 40, scope: !865)
!869 = !DILocation(line: 302, column: 33, scope: !860)
!870 = !DILocation(line: 308, column: 33, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !1, line: 305, column: 29)
!872 = !DILocation(line: 309, column: 29, scope: !871)
!873 = !DILocation(line: 311, column: 33, scope: !860)
!874 = !DILocation(line: 311, column: 41, scope: !875)
!875 = distinct !DILexicalBlock(scope: !860, file: !1, line: 311, column: 33)
!876 = !DILocation(line: 312, column: 29, scope: !860)
!877 = !DILocation(line: 0, scope: !878)
!878 = distinct !DILexicalBlock(scope: !856, file: !1, line: 313, column: 32)
!879 = !DILocation(line: 317, column: 17, scope: !685)
!880 = !DILocation(line: 319, column: 21, scope: !881)
!881 = distinct !DILexicalBlock(scope: !682, file: !1, line: 319, column: 21)
!882 = !DILocation(line: 319, column: 39, scope: !881)
!883 = !DILocation(line: 319, column: 21, scope: !682)
!884 = !DILocation(line: 320, column: 34, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !1, line: 319, column: 45)
!886 = !DILocation(line: 320, column: 41, scope: !885)
!887 = !DILocation(line: 320, column: 21, scope: !885)
!888 = !DILocation(line: 321, column: 66, scope: !885)
!889 = !DILocation(line: 321, column: 74, scope: !885)
!890 = !DILocation(line: 321, column: 78, scope: !885)
!891 = !{!556, !363, i64 40}
!892 = !DILocation(line: 321, column: 21, scope: !885)
!893 = !DILocation(line: 322, column: 17, scope: !885)
!894 = !DILocation(line: 328, column: 32, scope: !696)
!895 = !DILocation(line: 328, column: 43, scope: !696)
!896 = !DILocation(line: 328, column: 22, scope: !683)
!897 = !DILocation(line: 333, column: 35, scope: !695)
!898 = !DILocation(line: 333, column: 39, scope: !695)
!899 = !DILocation(line: 333, column: 57, scope: !695)
!900 = !DILocation(line: 333, column: 22, scope: !695)
!901 = !DILocation(line: 329, column: 28, scope: !695)
!902 = !DILocation(line: 334, column: 21, scope: !699)
!903 = !DILocation(line: 334, column: 21, scope: !695)
!904 = !DILocation(line: 335, column: 37, scope: !698)
!905 = !DILocation(line: 335, column: 27, scope: !698)
!906 = !DILocation(line: 336, column: 38, scope: !698)
!907 = !DILocation(line: 336, column: 25, scope: !698)
!908 = !DILocation(line: 337, column: 43, scope: !698)
!909 = !DILocation(line: 337, column: 35, scope: !698)
!910 = !DILocation(line: 339, column: 21, scope: !698)
!911 = !DILocation(line: 339, column: 37, scope: !698)
!912 = !DILocation(line: 339, column: 40, scope: !698)
!913 = !DILocation(line: 340, column: 48, scope: !703)
!914 = !DILocation(line: 340, column: 35, scope: !703)
!915 = !DILocation(line: 341, column: 56, scope: !703)
!916 = !DILocation(line: 341, column: 44, scope: !703)
!917 = !DILocation(line: 341, column: 33, scope: !703)
!918 = !DILocation(line: 343, column: 39, scope: !919)
!919 = distinct !DILexicalBlock(scope: !703, file: !1, line: 343, column: 29)
!920 = !DILocation(line: 343, column: 45, scope: !919)
!921 = !DILocation(line: 343, column: 29, scope: !703)
!922 = !DILocation(line: 346, column: 29, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !1, line: 343, column: 62)
!924 = !DILocation(line: 347, column: 29, scope: !923)
!925 = !DILocation(line: 348, column: 29, scope: !923)
!926 = distinct !{!926, !910, !927}
!927 = !DILocation(line: 370, column: 21, scope: !698)
!928 = !DILocation(line: 351, column: 48, scope: !703)
!929 = !DILocation(line: 351, column: 38, scope: !703)
!930 = !DILocation(line: 351, column: 56, scope: !703)
!931 = !DILocation(line: 352, column: 57, scope: !703)
!932 = !DILocation(line: 352, column: 62, scope: !703)
!933 = !DILocation(line: 0, scope: !703)
!934 = !DILocation(line: 351, column: 37, scope: !703)
!935 = !DILocation(line: 351, column: 29, scope: !703)
!936 = !DILocation(line: 354, column: 25, scope: !703)
!937 = !DILocation(line: 355, column: 25, scope: !703)
!938 = !DILocation(line: 356, column: 30, scope: !703)
!939 = !DILocation(line: 359, column: 25, scope: !703)
!940 = !DILocation(line: 359, column: 31, scope: !703)
!941 = !DILocation(line: 361, column: 59, scope: !703)
!942 = !DILocation(line: 362, column: 59, scope: !703)
!943 = !DILocation(line: 360, column: 52, scope: !703)
!944 = !DILocation(line: 360, column: 46, scope: !703)
!945 = !DILocation(line: 363, column: 59, scope: !703)
!946 = !{!848, !364, i64 0}
!947 = !DILocation(line: 363, column: 64, scope: !703)
!948 = !DILocation(line: 363, column: 35, scope: !703)
!949 = !DILocation(line: 363, column: 33, scope: !703)
!950 = !DILocation(line: 364, column: 39, scope: !703)
!951 = !DILocation(line: 364, column: 33, scope: !703)
!952 = !DILocation(line: 365, column: 42, scope: !703)
!953 = !DILocation(line: 365, column: 25, scope: !703)
!954 = !DILocation(line: 366, column: 49, scope: !703)
!955 = !DILocation(line: 366, column: 53, scope: !703)
!956 = !DILocation(line: 366, column: 25, scope: !703)
!957 = !DILocation(line: 368, column: 38, scope: !703)
!958 = !DILocation(line: 368, column: 25, scope: !703)
!959 = !DILocation(line: 369, column: 38, scope: !703)
!960 = !DILocation(line: 369, column: 25, scope: !703)
!961 = !DILocation(line: 0, scope: !923)
!962 = !DILocation(line: 371, column: 17, scope: !698)
!963 = !DILocation(line: 375, column: 32, scope: !711)
!964 = !DILocation(line: 375, column: 43, scope: !711)
!965 = !DILocation(line: 375, column: 22, scope: !696)
!966 = !DILocation(line: 376, column: 46, scope: !710)
!967 = !DILocation(line: 376, column: 50, scope: !710)
!968 = !DILocation(line: 376, column: 68, scope: !710)
!969 = !DILocation(line: 376, column: 33, scope: !710)
!970 = !DILocation(line: 376, column: 28, scope: !710)
!971 = !DILocation(line: 377, column: 32, scope: !710)
!972 = !{!973, !364, i64 8}
!973 = !{!"redisObject", !363, i64 0, !363, i64 0, !363, i64 1, !363, i64 4, !364, i64 8}
!974 = !DILocation(line: 377, column: 25, scope: !710)
!975 = !DILocation(line: 382, column: 21, scope: !747)
!976 = !DILocation(line: 382, column: 21, scope: !710)
!977 = !DILocation(line: 383, column: 37, scope: !746)
!978 = !DILocation(line: 383, column: 27, scope: !746)
!979 = !DILocation(line: 385, column: 21, scope: !746)
!980 = !DILocation(line: 385, column: 30, scope: !746)
!981 = !DILocation(line: 386, column: 21, scope: !746)
!982 = !DILocation(line: 388, column: 21, scope: !746)
!983 = !DILocation(line: 388, column: 33, scope: !746)
!984 = !DILocation(line: 384, column: 31, scope: !746)
!985 = !DILocation(line: 389, column: 44, scope: !751)
!986 = !DILocation(line: 389, column: 33, scope: !751)
!987 = !DILocation(line: 390, column: 39, scope: !988)
!988 = distinct !DILexicalBlock(scope: !751, file: !1, line: 390, column: 29)
!989 = !DILocation(line: 390, column: 45, scope: !988)
!990 = !DILocation(line: 390, column: 29, scope: !751)
!991 = distinct !{!991, !982, !992}
!992 = !DILocation(line: 457, column: 21, scope: !746)
!993 = !DILocation(line: 391, column: 70, scope: !751)
!994 = !DILocation(line: 392, column: 59, scope: !751)
!995 = !DILocation(line: 391, column: 40, scope: !751)
!996 = !DILocation(line: 391, column: 35, scope: !751)
!997 = !DILocation(line: 403, column: 35, scope: !751)
!998 = !DILocation(line: 404, column: 44, scope: !999)
!999 = distinct !DILexicalBlock(scope: !751, file: !1, line: 404, column: 29)
!1000 = !DILocation(line: 404, column: 29, scope: !999)
!1001 = !DILocation(line: 404, column: 29, scope: !751)
!1002 = !DILocation(line: 406, column: 65, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 404, column: 57)
!1004 = !DILocation(line: 405, column: 37, scope: !1003)
!1005 = !DILocation(line: 409, column: 34, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 409, column: 33)
!1007 = !DILocation(line: 409, column: 33, scope: !1003)
!1008 = !DILocation(line: 410, column: 33, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 409, column: 41)
!1010 = !DILocation(line: 413, column: 33, scope: !1009)
!1011 = !DILocation(line: 414, column: 33, scope: !1009)
!1012 = !DILocation(line: 416, column: 46, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 415, column: 36)
!1014 = !{i64 0, i64 8, !444, i64 8, i64 8, !444}
!1015 = !DILocation(line: 418, column: 25, scope: !1003)
!1016 = !DILocation(line: 0, scope: !751)
!1017 = !DILocation(line: 420, column: 29, scope: !764)
!1018 = !DILocation(line: 420, column: 62, scope: !764)
!1019 = !DILocation(line: 420, column: 29, scope: !751)
!1020 = !DILocation(line: 421, column: 29, scope: !763)
!1021 = !DILocation(line: 421, column: 46, scope: !763)
!1022 = !DILocation(line: 422, column: 38, scope: !763)
!1023 = !{!1024, !362, i64 8}
!1024 = !{!"streamID", !362, i64 0, !362, i64 8}
!1025 = !DILocation(line: 425, column: 45, scope: !763)
!1026 = !DILocation(line: 426, column: 33, scope: !763)
!1027 = !DILocation(line: 428, column: 33, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !763, file: !1, line: 428, column: 33)
!1029 = !DILocation(line: 428, column: 33, scope: !763)
!1030 = !DILocation(line: 430, column: 59, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 428, column: 40)
!1032 = !DILocation(line: 430, column: 75, scope: !1031)
!1033 = !DILocation(line: 429, column: 44, scope: !1031)
!1034 = !DILocation(line: 432, column: 56, scope: !1031)
!1035 = !{!361, !363, i64 456}
!1036 = !DILocation(line: 433, column: 29, scope: !1031)
!1037 = !DILocation(line: 0, scope: !763)
!1038 = !DILocation(line: 439, column: 29, scope: !763)
!1039 = !DILocation(line: 440, column: 29, scope: !763)
!1040 = !DILocation(line: 441, column: 55, scope: !763)
!1041 = !DILocation(line: 441, column: 29, scope: !763)
!1042 = !DILocation(line: 443, column: 29, scope: !763)
!1043 = !DILocation(line: 444, column: 37, scope: !763)
!1044 = !DILocation(line: 443, column: 49, scope: !763)
!1045 = !{!1046, !364, i64 0}
!1046 = !{!"sreamPropInfo", !364, i64 0, !364, i64 8}
!1047 = !DILocation(line: 445, column: 48, scope: !763)
!1048 = !{!1046, !364, i64 8}
!1049 = !DILocation(line: 448, column: 65, scope: !763)
!1050 = !{!361, !362, i64 416}
!1051 = !DILocation(line: 421, column: 38, scope: !763)
!1052 = !DILocation(line: 443, column: 44, scope: !763)
!1053 = !DILocation(line: 447, column: 29, scope: !763)
!1054 = !DILocation(line: 455, column: 29, scope: !763)
!1055 = !DILocation(line: 456, column: 25, scope: !764)
!1056 = !DILocation(line: 456, column: 25, scope: !763)
!1057 = !DILocation(line: 0, scope: !1009)
!1058 = !DILocation(line: 458, column: 17, scope: !747)
!1059 = !DILocation(line: 458, column: 17, scope: !746)
!1060 = !DILocation(line: 0, scope: !682)
!1061 = !DILocation(line: 462, column: 30, scope: !672)
!1062 = !DILocation(line: 462, column: 13, scope: !672)
!1063 = !DILocation(line: 463, column: 13, scope: !672)
!1064 = !DILocation(line: 464, column: 13, scope: !672)
!1065 = distinct !{!1065, !787, !1066}
!1066 = !DILocation(line: 465, column: 9, scope: !670)
!1067 = !DILocation(line: 466, column: 9, scope: !670)
!1068 = distinct !{!1068, !780, !1069}
!1069 = !DILocation(line: 467, column: 5, scope: !667)
!1070 = !DILocation(line: 468, column: 1, scope: !667)
!1071 = distinct !DISubprogram(name: "blockForKeys", scope: !1, file: !1, line: 497, type: !1072, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !60, !59, !194, !59, !281, !173, !753}
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1089}
!1075 = !DILocalVariable(name: "c", arg: 1, scope: !1071, file: !1, line: 497, type: !60)
!1076 = !DILocalVariable(name: "btype", arg: 2, scope: !1071, file: !1, line: 497, type: !59)
!1077 = !DILocalVariable(name: "keys", arg: 3, scope: !1071, file: !1, line: 497, type: !194)
!1078 = !DILocalVariable(name: "numkeys", arg: 4, scope: !1071, file: !1, line: 497, type: !59)
!1079 = !DILocalVariable(name: "timeout", arg: 5, scope: !1071, file: !1, line: 497, type: !281)
!1080 = !DILocalVariable(name: "target", arg: 6, scope: !1071, file: !1, line: 497, type: !173)
!1081 = !DILocalVariable(name: "ids", arg: 7, scope: !1071, file: !1, line: 497, type: !753)
!1082 = !DILocalVariable(name: "de", scope: !1071, file: !1, line: 498, type: !111)
!1083 = !DILocalVariable(name: "l", scope: !1071, file: !1, line: 499, type: !144)
!1084 = !DILocalVariable(name: "j", scope: !1071, file: !1, line: 500, type: !59)
!1085 = !DILocalVariable(name: "key_data", scope: !1086, file: !1, line: 510, type: !4)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 507, column: 35)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 507, column: 5)
!1088 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 507, column: 5)
!1089 = !DILocalVariable(name: "retval", scope: !1090, file: !1, line: 526, type: !59)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 525, column: 25)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 525, column: 13)
!1092 = !DILocation(line: 497, column: 27, scope: !1071)
!1093 = !DILocation(line: 497, column: 34, scope: !1071)
!1094 = !DILocation(line: 497, column: 48, scope: !1071)
!1095 = !DILocation(line: 497, column: 58, scope: !1071)
!1096 = !DILocation(line: 497, column: 76, scope: !1071)
!1097 = !DILocation(line: 497, column: 91, scope: !1071)
!1098 = !DILocation(line: 497, column: 109, scope: !1071)
!1099 = !DILocation(line: 502, column: 13, scope: !1071)
!1100 = !DILocation(line: 502, column: 21, scope: !1071)
!1101 = !{!361, !324, i64 392}
!1102 = !DILocation(line: 503, column: 13, scope: !1071)
!1103 = !DILocation(line: 503, column: 20, scope: !1071)
!1104 = !DILocation(line: 505, column: 16, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 505, column: 9)
!1106 = !DILocation(line: 505, column: 9, scope: !1071)
!1107 = !DILocation(line: 505, column: 25, scope: !1105)
!1108 = !DILocation(line: 500, column: 9, scope: !1071)
!1109 = !DILocation(line: 507, column: 10, scope: !1088)
!1110 = !DILocation(line: 507, column: 19, scope: !1087)
!1111 = !DILocation(line: 507, column: 5, scope: !1088)
!1112 = !DILocation(line: 510, column: 15, scope: !1086)
!1113 = !DILocation(line: 511, column: 13, scope: !1086)
!1114 = !DILocation(line: 512, column: 24, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 511, column: 38)
!1116 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 511, column: 13)
!1117 = !DILocation(line: 513, column: 32, scope: !1115)
!1118 = !DILocation(line: 513, column: 29, scope: !1115)
!1119 = !DILocation(line: 513, column: 13, scope: !1115)
!1120 = !DILocation(line: 514, column: 9, scope: !1115)
!1121 = !DILocation(line: 0, scope: !1086)
!1122 = !DILocation(line: 517, column: 29, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 517, column: 13)
!1124 = !DILocation(line: 517, column: 34, scope: !1123)
!1125 = !DILocation(line: 517, column: 13, scope: !1123)
!1126 = !DILocation(line: 517, column: 52, scope: !1123)
!1127 = !DILocation(line: 517, column: 13, scope: !1086)
!1128 = !DILocation(line: 518, column: 13, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 517, column: 64)
!1130 = !DILocation(line: 519, column: 13, scope: !1129)
!1131 = !DILocation(line: 521, column: 22, scope: !1086)
!1132 = !DILocation(line: 521, column: 9, scope: !1086)
!1133 = !DILocation(line: 524, column: 26, scope: !1086)
!1134 = !DILocation(line: 524, column: 30, scope: !1086)
!1135 = !DILocation(line: 524, column: 44, scope: !1086)
!1136 = !DILocation(line: 524, column: 14, scope: !1086)
!1137 = !DILocation(line: 498, column: 16, scope: !1071)
!1138 = !DILocation(line: 525, column: 16, scope: !1091)
!1139 = !DILocation(line: 525, column: 13, scope: !1086)
!1140 = !DILocation(line: 529, column: 17, scope: !1090)
!1141 = !DILocation(line: 499, column: 11, scope: !1071)
!1142 = !DILocation(line: 530, column: 33, scope: !1090)
!1143 = !DILocation(line: 530, column: 37, scope: !1090)
!1144 = !DILocation(line: 530, column: 51, scope: !1090)
!1145 = !DILocation(line: 530, column: 59, scope: !1090)
!1146 = !DILocation(line: 530, column: 22, scope: !1090)
!1147 = !DILocation(line: 526, column: 17, scope: !1090)
!1148 = !DILocation(line: 531, column: 26, scope: !1090)
!1149 = !DILocation(line: 531, column: 13, scope: !1090)
!1150 = !DILocation(line: 532, column: 13, scope: !1090)
!1151 = !DILocation(line: 534, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 533, column: 16)
!1153 = !DILocation(line: 0, scope: !1152)
!1154 = !DILocation(line: 536, column: 9, scope: !1086)
!1155 = !DILocation(line: 537, column: 5, scope: !1087)
!1156 = !DILocation(line: 0, scope: !1129)
!1157 = !DILocation(line: 507, column: 31, scope: !1087)
!1158 = !DILocation(line: 507, column: 5, scope: !1087)
!1159 = distinct !{!1159, !1111, !1160}
!1160 = !DILocation(line: 537, column: 5, scope: !1088)
!1161 = !DILocation(line: 102, column: 26, scope: !350, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 538, column: 5, scope: !1071)
!1163 = !DILocation(line: 102, column: 33, scope: !350, inlinedAt: !1162)
!1164 = !DILocation(line: 103, column: 8, scope: !350, inlinedAt: !1162)
!1165 = !DILocation(line: 103, column: 14, scope: !350, inlinedAt: !1162)
!1166 = !DILocation(line: 104, column: 8, scope: !350, inlinedAt: !1162)
!1167 = !DILocation(line: 104, column: 14, scope: !350, inlinedAt: !1162)
!1168 = !DILocation(line: 105, column: 27, scope: !350, inlinedAt: !1162)
!1169 = !DILocation(line: 106, column: 5, scope: !350, inlinedAt: !1162)
!1170 = !DILocation(line: 106, column: 42, scope: !350, inlinedAt: !1162)
!1171 = !DILocation(line: 107, column: 1, scope: !350, inlinedAt: !1162)
!1172 = !DILocation(line: 539, column: 1, scope: !1071)
!1173 = distinct !DISubprogram(name: "signalKeyAsReady", scope: !1, file: !1, line: 585, type: !1174, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !68, !173}
!1176 = !{!1177, !1178, !1179}
!1177 = !DILocalVariable(name: "db", arg: 1, scope: !1173, file: !1, line: 585, type: !68)
!1178 = !DILocalVariable(name: "key", arg: 2, scope: !1173, file: !1, line: 585, type: !173)
!1179 = !DILocalVariable(name: "rl", scope: !1173, file: !1, line: 586, type: !674)
!1180 = !DILocation(line: 585, column: 32, scope: !1173)
!1181 = !DILocation(line: 585, column: 42, scope: !1173)
!1182 = !DILocation(line: 589, column: 22, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 589, column: 9)
!1184 = !DILocation(line: 589, column: 36, scope: !1183)
!1185 = !DILocation(line: 589, column: 9, scope: !1183)
!1186 = !DILocation(line: 589, column: 41, scope: !1183)
!1187 = !DILocation(line: 589, column: 9, scope: !1173)
!1188 = !DILocation(line: 592, column: 22, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 592, column: 9)
!1190 = !DILocation(line: 592, column: 9, scope: !1189)
!1191 = !DILocation(line: 592, column: 38, scope: !1189)
!1192 = !DILocation(line: 592, column: 9, scope: !1173)
!1193 = !DILocation(line: 595, column: 10, scope: !1173)
!1194 = !DILocation(line: 586, column: 16, scope: !1173)
!1195 = !DILocation(line: 596, column: 9, scope: !1173)
!1196 = !DILocation(line: 596, column: 13, scope: !1173)
!1197 = !DILocation(line: 597, column: 9, scope: !1173)
!1198 = !DILocation(line: 597, column: 12, scope: !1173)
!1199 = !DILocation(line: 598, column: 5, scope: !1173)
!1200 = !DILocation(line: 599, column: 28, scope: !1173)
!1201 = !DILocation(line: 599, column: 5, scope: !1173)
!1202 = !DILocation(line: 604, column: 5, scope: !1173)
!1203 = !DILocation(line: 605, column: 5, scope: !1173)
!1204 = !DILocation(line: 0, scope: !1183)
!1205 = !DILocation(line: 606, column: 1, scope: !1173)
