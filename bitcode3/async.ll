; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dictType = type { i32 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.redisAsyncContext = type { %struct.redisContext, i32, i8*, i8*, %struct.anon.1, void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)*, %struct.redisCallbackList, %struct.anon.2 }
%struct.redisContext = type { i32, [128 x i8], i32, i32, i8*, %struct.redisReader*, i32, %struct.timeval*, %struct.anon, %struct.anon.0 }
%struct.redisReader = type { i32, [128 x i8], i8*, i64, i64, i64, [9 x %struct.redisReadTask], i32, i8*, %struct.redisReplyObjectFunctions*, i8* }
%struct.redisReadTask = type { i32, i32, i32, i8*, %struct.redisReadTask*, i8* }
%struct.redisReplyObjectFunctions = type { i8* (%struct.redisReadTask*, i8*, i64)*, i8* (%struct.redisReadTask*, i32)*, i8* (%struct.redisReadTask*, i64)*, i8* (%struct.redisReadTask*)*, void (i8*)* }
%struct.timeval = type { i64, i64 }
%struct.anon = type { i8*, i8*, i32 }
%struct.anon.0 = type { i8* }
%struct.anon.1 = type { i8*, void (i8*)*, void (i8*)*, void (i8*)*, void (i8*)*, void (i8*)* }
%struct.redisCallbackList = type { %struct.redisCallback*, %struct.redisCallback* }
%struct.redisCallback = type { %struct.redisCallback*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8* }
%struct.anon.2 = type { %struct.redisCallbackList, %struct.dict*, %struct.dict* }
%struct.dict = type { %struct.dictEntry**, %struct.dictType*, i64, i64, i64, i8* }
%struct.dictEntry = type { i8*, i8*, %struct.dictEntry* }
%struct.redisReply = type { i32, i64, i64, i8*, i64, %struct.redisReply** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.c\00", align 1
@__func__.redisProcessCallbacks = private unnamed_addr constant [22 x i8] c"redisProcessCallbacks\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"(c->flags & REDIS_SUBSCRIBED || c->flags & REDIS_MONITORING)\00", align 1
@callbackDict = internal global %struct.dictType { i32 (i8*)* @callbackHash, i8* (i8*, i8*)* null, i8* (i8*, i8*)* @callbackValDup, i32 (i8*, i8*, i8*)* @callbackKeyCompare, void (i8*, i8*)* @callbackKeyDestructor, void (i8*, i8*)* @callbackValDestructor }, align 8, !dbg !0
@__func__.__redisAsyncDisconnect = private unnamed_addr constant [23 x i8] c"__redisAsyncDisconnect\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"__redisShiftCallback(&ac->replies,NULL) == REDIS_ERR\00", align 1
@__func__.__redisGetSubscribeCallback = private unnamed_addr constant [28 x i8] c"__redisGetSubscribeCallback\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"reply->elements >= 2\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"reply->element[0]->type == REDIS_REPLY_STRING\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"reply->element[1]->type == REDIS_REPLY_STRING\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"unsubscribe\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"reply->element[2]->type == REDIS_REPLY_INTEGER\00", align 1
@__func__.__redisAsyncCommand = private unnamed_addr constant [20 x i8] c"__redisAsyncCommand\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"subscribe\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsubscribe\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"monitor\0D\0A\00", align 1
@__func__.nextArgument = private unnamed_addr constant [13 x i8] c"nextArgument\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.c\00", align 1
@__func__.dictExpand = private unnamed_addr constant [11 x i8] c"dictExpand\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ht->used == 0\00", align 1

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnect(i8*, i32) local_unnamed_addr #0 !dbg !110 {
  %3 = tail call %struct.redisContext* @redisConnectNonBlock(i8* %0, i32 %1) #8, !dbg !283
  %4 = icmp eq %struct.redisContext* %3, null, !dbg !285
  br i1 %4, label %15, label %5, !dbg !287

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc %struct.redisAsyncContext* @redisAsyncInitialize(%struct.redisContext* nonnull %3) #9, !dbg !288
  %7 = icmp eq %struct.redisAsyncContext* %6, null, !dbg !290
  br i1 %7, label %8, label %9, !dbg !292

; <label>:8:                                      ; preds = %5
  tail call void @redisFree(%struct.redisContext* nonnull %3) #8, !dbg !293
  br label %15, !dbg !295

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %6, i64 0, i32 0, i32 0, !dbg !305
  %11 = load i32, i32* %10, align 8, !dbg !305, !tbaa !306
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %6, i64 0, i32 1, !dbg !314
  store i32 %11, i32* %12, align 8, !dbg !315, !tbaa !316
  %13 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %6, i64 0, i32 0, i32 1, i64 0, !dbg !321
  %14 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %6, i64 0, i32 2, !dbg !322
  store i8* %13, i8** %14, align 8, !dbg !323, !tbaa !324
  br label %15, !dbg !325

; <label>:15:                                     ; preds = %2, %9, %8
  %16 = phi %struct.redisAsyncContext* [ null, %8 ], [ %6, %9 ], [ null, %2 ], !dbg !326
  ret %struct.redisAsyncContext* %16, !dbg !327
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectNonBlock(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc %struct.redisAsyncContext* @redisAsyncInitialize(%struct.redisContext*) unnamed_addr #0 !dbg !328 {
  %2 = bitcast %struct.redisContext* %0 to i8*, !dbg !335
  %3 = tail call i8* @realloc(i8* %2, i64 344) #8, !dbg !336
  %4 = icmp eq i8* %3, null, !dbg !337
  br i1 %4, label %53, label %5, !dbg !339

; <label>:5:                                      ; preds = %1
  %6 = bitcast i8* %3 to %struct.redisAsyncContext*, !dbg !336
  %7 = getelementptr inbounds i8, i8* %3, i64 136, !dbg !341
  %8 = bitcast i8* %7 to i32*, !dbg !341
  %9 = load i32, i32* %8, align 8, !dbg !342, !tbaa !343
  %10 = and i32 %9, -3, !dbg !342
  store i32 %10, i32* %8, align 8, !dbg !342, !tbaa !343
  %11 = getelementptr inbounds i8, i8* %3, i64 208, !dbg !344
  %12 = bitcast i8* %11 to i32*, !dbg !344
  store i32 0, i32* %12, align 8, !dbg !345, !tbaa !316
  %13 = getelementptr inbounds i8, i8* %3, i64 216, !dbg !346
  %14 = bitcast i8* %13 to <2 x i8*>*, !dbg !347
  store <2 x i8*> zeroinitializer, <2 x i8*>* %14, align 8, !dbg !347, !tbaa !348
  %15 = getelementptr inbounds i8, i8* %3, i64 232, !dbg !349
  %16 = bitcast i8* %15 to i8**, !dbg !350
  store i8* null, i8** %16, align 8, !dbg !351, !tbaa !352
  %17 = getelementptr inbounds i8, i8* %3, i64 240, !dbg !353
  %18 = bitcast i8* %17 to <2 x void (i8*)*>*, !dbg !354
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %18, align 8, !dbg !354, !tbaa !348
  %19 = getelementptr inbounds i8, i8* %3, i64 256, !dbg !355
  %20 = bitcast i8* %19 to <2 x void (i8*)*>*, !dbg !356
  store <2 x void (i8*)*> zeroinitializer, <2 x void (i8*)*>* %20, align 8, !dbg !356, !tbaa !348
  %21 = getelementptr inbounds i8, i8* %3, i64 272, !dbg !357
  %22 = bitcast i8* %21 to void (i8*)**, !dbg !357
  store void (i8*)* null, void (i8*)** %22, align 8, !dbg !358, !tbaa !359
  %23 = getelementptr inbounds i8, i8* %3, i64 280, !dbg !360
  %24 = bitcast i8* %23 to <2 x void (%struct.redisAsyncContext*, i32)*>*, !dbg !361
  store <2 x void (%struct.redisAsyncContext*, i32)*> zeroinitializer, <2 x void (%struct.redisAsyncContext*, i32)*>* %24, align 8, !dbg !361, !tbaa !348
  %25 = getelementptr inbounds i8, i8* %3, i64 296, !dbg !362
  %26 = bitcast i8* %25 to <2 x %struct.redisCallback*>*, !dbg !363
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %26, align 8, !dbg !363, !tbaa !348
  %27 = getelementptr inbounds i8, i8* %3, i64 312, !dbg !364
  %28 = bitcast i8* %27 to <2 x %struct.redisCallback*>*, !dbg !365
  store <2 x %struct.redisCallback*> zeroinitializer, <2 x %struct.redisCallback*>* %28, align 8, !dbg !365, !tbaa !348
  %29 = tail call i8* @malloc(i64 48) #8, !dbg !379
  %30 = bitcast i8* %29 to %struct.dictEntry***, !dbg !399
  store %struct.dictEntry** null, %struct.dictEntry*** %30, align 8, !dbg !400, !tbaa !401
  %31 = getelementptr inbounds i8, i8* %29, i64 16, !dbg !404
  %32 = bitcast i8* %31 to <2 x i64>*, !dbg !405
  store <2 x i64> zeroinitializer, <2 x i64>* %32, align 8, !dbg !405, !tbaa !406
  %33 = getelementptr inbounds i8, i8* %29, i64 32, !dbg !407
  %34 = bitcast i8* %33 to i64*, !dbg !407
  store i64 0, i64* %34, align 8, !dbg !408, !tbaa !409
  %35 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !410
  %36 = bitcast i8* %35 to %struct.dictType**, !dbg !410
  store %struct.dictType* @callbackDict, %struct.dictType** %36, align 8, !dbg !411, !tbaa !412
  %37 = getelementptr inbounds i8, i8* %29, i64 40, !dbg !413
  %38 = bitcast i8* %37 to i8**, !dbg !413
  store i8* null, i8** %38, align 8, !dbg !414, !tbaa !415
  %39 = getelementptr inbounds i8, i8* %3, i64 328, !dbg !416
  %40 = bitcast i8* %39 to i8**, !dbg !417
  store i8* %29, i8** %40, align 8, !dbg !417, !tbaa !418
  %41 = tail call i8* @malloc(i64 48) #8, !dbg !422
  %42 = bitcast i8* %41 to %struct.dictEntry***, !dbg !430
  store %struct.dictEntry** null, %struct.dictEntry*** %42, align 8, !dbg !431, !tbaa !401
  %43 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !432
  %44 = bitcast i8* %43 to <2 x i64>*, !dbg !433
  store <2 x i64> zeroinitializer, <2 x i64>* %44, align 8, !dbg !433, !tbaa !406
  %45 = getelementptr inbounds i8, i8* %41, i64 32, !dbg !434
  %46 = bitcast i8* %45 to i64*, !dbg !434
  store i64 0, i64* %46, align 8, !dbg !435, !tbaa !409
  %47 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !436
  %48 = bitcast i8* %47 to %struct.dictType**, !dbg !436
  store %struct.dictType* @callbackDict, %struct.dictType** %48, align 8, !dbg !437, !tbaa !412
  %49 = getelementptr inbounds i8, i8* %41, i64 40, !dbg !438
  %50 = bitcast i8* %49 to i8**, !dbg !438
  store i8* null, i8** %50, align 8, !dbg !439, !tbaa !415
  %51 = getelementptr inbounds i8, i8* %3, i64 336, !dbg !440
  %52 = bitcast i8* %51 to i8**, !dbg !441
  store i8* %41, i8** %52, align 8, !dbg !441, !tbaa !442
  br label %53, !dbg !443

; <label>:53:                                     ; preds = %1, %5
  %54 = phi %struct.redisAsyncContext* [ %6, %5 ], [ null, %1 ], !dbg !444
  ret %struct.redisAsyncContext* %54, !dbg !445
}

; Function Attrs: noredzone
declare dso_local void @redisFree(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBind(i8*, i32, i8*) local_unnamed_addr #0 !dbg !446 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlock(i8* %0, i32 %1, i8* %2) #8, !dbg !458
  %5 = tail call fastcc %struct.redisAsyncContext* @redisAsyncInitialize(%struct.redisContext* %4) #9, !dbg !460
  %6 = icmp eq %struct.redisAsyncContext* %5, null, !dbg !464
  br i1 %6, label %13, label %7, !dbg !466

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 0, !dbg !468
  %9 = load i32, i32* %8, align 8, !dbg !468, !tbaa !306
  %10 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 1, !dbg !469
  store i32 %9, i32* %10, align 8, !dbg !470, !tbaa !316
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 1, i64 0, !dbg !471
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 2, !dbg !472
  store i8* %11, i8** %12, align 8, !dbg !473, !tbaa !324
  br label %13, !dbg !474

; <label>:13:                                     ; preds = %3, %7
  ret %struct.redisAsyncContext* %5, !dbg !475
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlock(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectBindWithReuse(i8*, i32, i8*) local_unnamed_addr #0 !dbg !476 {
  %4 = tail call %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8* %0, i32 %1, i8* %2) #8, !dbg !486
  %5 = tail call fastcc %struct.redisAsyncContext* @redisAsyncInitialize(%struct.redisContext* %4) #9, !dbg !488
  %6 = icmp eq %struct.redisAsyncContext* %5, null, !dbg !492
  br i1 %6, label %13, label %7, !dbg !493

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 0, !dbg !495
  %9 = load i32, i32* %8, align 8, !dbg !495, !tbaa !306
  %10 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 1, !dbg !496
  store i32 %9, i32* %10, align 8, !dbg !497, !tbaa !316
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 1, i64 0, !dbg !498
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 2, !dbg !499
  store i8* %11, i8** %12, align 8, !dbg !500, !tbaa !324
  br label %13, !dbg !501

; <label>:13:                                     ; preds = %3, %7
  ret %struct.redisAsyncContext* %5, !dbg !502
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectBindNonBlockWithReuse(i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.redisAsyncContext* @redisAsyncConnectUnix(i8*) local_unnamed_addr #0 !dbg !503 {
  %2 = tail call %struct.redisContext* @redisConnectUnixNonBlock(i8* %0) #8, !dbg !511
  %3 = icmp eq %struct.redisContext* %2, null, !dbg !513
  br i1 %3, label %14, label %4, !dbg !515

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc %struct.redisAsyncContext* @redisAsyncInitialize(%struct.redisContext* nonnull %2) #9, !dbg !516
  %6 = icmp eq %struct.redisAsyncContext* %5, null, !dbg !518
  br i1 %6, label %7, label %8, !dbg !520

; <label>:7:                                      ; preds = %4
  tail call void @redisFree(%struct.redisContext* nonnull %2) #8, !dbg !521
  br label %14, !dbg !523

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 0, !dbg !527
  %10 = load i32, i32* %9, align 8, !dbg !527, !tbaa !306
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 1, !dbg !528
  store i32 %10, i32* %11, align 8, !dbg !529, !tbaa !316
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 0, i32 1, i64 0, !dbg !530
  %13 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %5, i64 0, i32 2, !dbg !531
  store i8* %12, i8** %13, align 8, !dbg !532, !tbaa !324
  br label %14, !dbg !533

; <label>:14:                                     ; preds = %1, %8, %7
  %15 = phi %struct.redisAsyncContext* [ null, %7 ], [ %5, %8 ], [ null, %1 ], !dbg !534
  ret %struct.redisAsyncContext* %15, !dbg !535
}

; Function Attrs: noredzone
declare dso_local %struct.redisContext* @redisConnectUnixNonBlock(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetConnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !536 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !544
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !544, !tbaa !546
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !547
  br i1 %5, label %6, label %13, !dbg !548

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !549, !tbaa !546
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !551
  %8 = load void (i8*)*, void (i8*)** %7, align 8, !dbg !551, !tbaa !554
  %9 = icmp eq void (i8*)* %8, null, !dbg !551
  br i1 %9, label %13, label %10, !dbg !555

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !551
  %12 = load i8*, i8** %11, align 8, !dbg !551, !tbaa !352
  tail call void %8(i8* %12) #8, !dbg !551
  br label %13, !dbg !551

; <label>:13:                                     ; preds = %2, %10, %6
  %14 = phi i32 [ 0, %6 ], [ 0, %10 ], [ -1, %2 ], !dbg !556
  ret i32 %14, !dbg !557
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncSetDisconnectCallback(%struct.redisAsyncContext* nocapture, void (%struct.redisAsyncContext*, i32)*) local_unnamed_addr #0 !dbg !558 {
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !566
  %4 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !566, !tbaa !568
  %5 = icmp eq void (%struct.redisAsyncContext*, i32)* %4, null, !dbg !569
  br i1 %5, label %6, label %7, !dbg !570

; <label>:6:                                      ; preds = %2
  store void (%struct.redisAsyncContext*, i32)* %1, void (%struct.redisAsyncContext*, i32)** %3, align 8, !dbg !571, !tbaa !568
  br label %7, !dbg !573

; <label>:7:                                      ; preds = %2, %6
  %8 = phi i32 [ 0, %6 ], [ -1, %2 ], !dbg !574
  ret i32 %8, !dbg !575
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncFree(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !576 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !582
  %3 = load i32, i32* %2, align 8, !dbg !583, !tbaa !343
  %4 = or i32 %3, 8, !dbg !583
  store i32 %4, i32* %2, align 8, !dbg !583, !tbaa !343
  %5 = and i32 %3, 16, !dbg !584
  %6 = icmp eq i32 %5, 0, !dbg !584
  br i1 %6, label %7, label %8, !dbg !586

; <label>:7:                                      ; preds = %1
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #9, !dbg !587
  br label %8, !dbg !587

; <label>:8:                                      ; preds = %1, %7
  ret void, !dbg !588
}

; Function Attrs: noredzone nounwind
define internal fastcc void @__redisAsyncFree(%struct.redisAsyncContext*) unnamed_addr #0 !dbg !589 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !605
  %4 = bitcast %struct.redisCallback* %2 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !607
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !608
  %6 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %5, i64 0, i32 0, !dbg !621
  %7 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !621, !tbaa !622
  %8 = icmp eq %struct.redisCallback* %7, null, !dbg !624
  br i1 %8, label %15, label %9, !dbg !626

; <label>:9:                                      ; preds = %1
  %10 = bitcast %struct.redisCallbackList* %5 to i64*
  %11 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1
  %12 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %28, !dbg !626

; <label>:15:                                     ; preds = %46, %1
  %16 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !627
  %17 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %16, i64 0, i32 0, !dbg !631
  %18 = load %struct.redisCallback*, %struct.redisCallback** %17, align 8, !dbg !631, !tbaa !622
  %19 = icmp eq %struct.redisCallback* %18, null, !dbg !633
  br i1 %19, label %20, label %22, !dbg !634

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  br label %70, !dbg !634

; <label>:22:                                     ; preds = %15
  %23 = bitcast %struct.redisCallbackList* %16 to i64*
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %27 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  br label %49, !dbg !634

; <label>:28:                                     ; preds = %9, %46
  %29 = phi %struct.redisCallback* [ %7, %9 ], [ %47, %46 ]
  %30 = bitcast %struct.redisCallback* %29 to i64*, !dbg !635
  %31 = load i64, i64* %30, align 8, !dbg !635, !tbaa !637
  store i64 %31, i64* %10, align 8, !dbg !639, !tbaa !622
  %32 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !640, !tbaa !642
  %33 = icmp eq %struct.redisCallback* %29, %32, !dbg !643
  br i1 %33, label %34, label %35, !dbg !644

; <label>:34:                                     ; preds = %28
  store %struct.redisCallback* null, %struct.redisCallback** %11, align 8, !dbg !645, !tbaa !642
  br label %35, !dbg !646

; <label>:35:                                     ; preds = %28, %34
  %36 = bitcast %struct.redisCallback* %29 to i8*, !dbg !647
  %37 = call i8* @memcpy(i8* nonnull %4, i8* %36, i64 24) #8, !dbg !649
  call void @free(i8* %36) #8, !dbg !650
  %38 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !663, !tbaa !665
  %39 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %38, null, !dbg !666
  br i1 %39, label %46, label %40, !dbg !667

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %13, align 8, !dbg !669, !tbaa !343
  %42 = or i32 %41, 16, !dbg !669
  store i32 %42, i32* %13, align 8, !dbg !669, !tbaa !343
  %43 = load i8*, i8** %14, align 8, !dbg !671, !tbaa !672
  call void %38(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %43) #8, !dbg !673
  %44 = load i32, i32* %13, align 8, !dbg !674, !tbaa !343
  %45 = and i32 %44, -17, !dbg !674
  store i32 %45, i32* %13, align 8, !dbg !674, !tbaa !343
  br label %46, !dbg !675

; <label>:46:                                     ; preds = %35, %40
  %47 = load %struct.redisCallback*, %struct.redisCallback** %6, align 8, !dbg !621, !tbaa !622
  %48 = icmp eq %struct.redisCallback* %47, null, !dbg !624
  br i1 %48, label %15, label %28, !dbg !626, !llvm.loop !676

; <label>:49:                                     ; preds = %22, %67
  %50 = phi %struct.redisCallback* [ %18, %22 ], [ %68, %67 ]
  %51 = bitcast %struct.redisCallback* %50 to i64*, !dbg !679
  %52 = load i64, i64* %51, align 8, !dbg !679, !tbaa !637
  store i64 %52, i64* %23, align 8, !dbg !680, !tbaa !622
  %53 = load %struct.redisCallback*, %struct.redisCallback** %24, align 8, !dbg !681, !tbaa !642
  %54 = icmp eq %struct.redisCallback* %50, %53, !dbg !682
  br i1 %54, label %55, label %56, !dbg !683

; <label>:55:                                     ; preds = %49
  store %struct.redisCallback* null, %struct.redisCallback** %24, align 8, !dbg !684, !tbaa !642
  br label %56, !dbg !685

; <label>:56:                                     ; preds = %49, %55
  %57 = bitcast %struct.redisCallback* %50 to i8*, !dbg !686
  %58 = call i8* @memcpy(i8* nonnull %4, i8* %57, i64 24) #8, !dbg !687
  call void @free(i8* %57) #8, !dbg !688
  %59 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %25, align 8, !dbg !693, !tbaa !665
  %60 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %59, null, !dbg !694
  br i1 %60, label %67, label %61, !dbg !695

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %26, align 8, !dbg !697, !tbaa !343
  %63 = or i32 %62, 16, !dbg !697
  store i32 %63, i32* %26, align 8, !dbg !697, !tbaa !343
  %64 = load i8*, i8** %27, align 8, !dbg !698, !tbaa !672
  call void %59(%struct.redisAsyncContext* nonnull %0, i8* null, i8* %64) #8, !dbg !699
  %65 = load i32, i32* %26, align 8, !dbg !700, !tbaa !343
  %66 = and i32 %65, -17, !dbg !700
  store i32 %66, i32* %26, align 8, !dbg !700, !tbaa !343
  br label %67, !dbg !701

; <label>:67:                                     ; preds = %56, %61
  %68 = load %struct.redisCallback*, %struct.redisCallback** %17, align 8, !dbg !631, !tbaa !622
  %69 = icmp eq %struct.redisCallback* %68, null, !dbg !633
  br i1 %69, label %70, label %49, !dbg !634, !llvm.loop !702

; <label>:70:                                     ; preds = %67, %20
  %71 = phi i32* [ %21, %20 ], [ %26, %67 ]
  %72 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1, !dbg !705
  %73 = bitcast %struct.dict** %72 to i64*, !dbg !705
  %74 = load i64, i64* %73, align 8, !dbg !705, !tbaa !418
  %75 = call i8* @malloc(i64 32) #8, !dbg !714
  %76 = bitcast i8* %75 to i64*, !dbg !716
  store i64 %74, i64* %76, align 8, !dbg !716, !tbaa !717
  %77 = getelementptr inbounds i8, i8* %75, i64 8, !dbg !719
  %78 = bitcast i8* %77 to i32*, !dbg !719
  store i32 -1, i32* %78, align 8, !dbg !720, !tbaa !721
  %79 = getelementptr inbounds i8, i8* %75, i64 16, !dbg !722
  %80 = bitcast i8* %79 to %struct.dictEntry**, !dbg !722
  %81 = getelementptr inbounds i8, i8* %75, i64 24, !dbg !723
  %82 = bitcast i8* %79 to <2 x %struct.dictEntry*>*, !dbg !724
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %82, align 8, !dbg !724, !tbaa !348
  %83 = bitcast i8* %75 to %struct.dict**
  %84 = bitcast i8* %81 to i64*
  %85 = bitcast i8* %79 to i64*
  br label %86, !dbg !726

; <label>:86:                                     ; preds = %108, %70
  %87 = phi %struct.dictEntry* [ null, %70 ], [ %109, %108 ], !dbg !727
  %88 = icmp eq %struct.dictEntry* %87, null, !dbg !736
  br i1 %88, label %89, label %103, !dbg !737

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %78, align 8, !dbg !738, !tbaa !721
  %91 = add nsw i32 %90, 1, !dbg !738
  store i32 %91, i32* %78, align 8, !dbg !738, !tbaa !721
  %92 = load %struct.dict*, %struct.dict** %83, align 8, !dbg !740, !tbaa !717
  %93 = getelementptr inbounds %struct.dict, %struct.dict* %92, i64 0, i32 2, !dbg !742
  %94 = load i64, i64* %93, align 8, !dbg !742, !tbaa !743
  %95 = trunc i64 %94 to i32, !dbg !744
  %96 = icmp slt i32 %91, %95, !dbg !745
  br i1 %96, label %97, label %129, !dbg !746

; <label>:97:                                     ; preds = %89
  %98 = getelementptr inbounds %struct.dict, %struct.dict* %92, i64 0, i32 0, !dbg !747
  %99 = load %struct.dictEntry**, %struct.dictEntry*** %98, align 8, !dbg !747, !tbaa !401
  %100 = sext i32 %91 to i64, !dbg !748
  %101 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %99, i64 %100, !dbg !748
  %102 = bitcast %struct.dictEntry** %101 to i64*, !dbg !748
  br label %103, !dbg !749

; <label>:103:                                    ; preds = %86, %97
  %104 = phi i64* [ %102, %97 ], [ %84, %86 ]
  %105 = load i64, i64* %104, align 8, !dbg !750, !tbaa !348
  store i64 %105, i64* %85, align 8, !dbg !750, !tbaa !751
  %106 = inttoptr i64 %105 to %struct.dictEntry*
  %107 = icmp eq i64 %105, 0, !dbg !752
  br i1 %107, label %108, label %110, !dbg !754

; <label>:108:                                    ; preds = %103, %110, %121
  %109 = phi %struct.dictEntry* [ %106, %103 ], [ %111, %110 ], [ %128, %121 ]
  br label %86, !dbg !736, !llvm.loop !755

; <label>:110:                                    ; preds = %103
  %111 = inttoptr i64 %105 to %struct.dictEntry*
  %112 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %111, i64 0, i32 2, !dbg !757
  %113 = bitcast %struct.dictEntry** %112 to i64*, !dbg !757
  %114 = load i64, i64* %113, align 8, !dbg !757, !tbaa !759
  store i64 %114, i64* %84, align 8, !dbg !761, !tbaa !762
  %115 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %111, i64 0, i32 1, !dbg !764
  %116 = bitcast i8** %115 to %struct.redisCallback**, !dbg !764
  %117 = load %struct.redisCallback*, %struct.redisCallback** %116, align 8, !dbg !764, !tbaa !765
  %118 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %117, i64 0, i32 1, !dbg !770
  %119 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %118, align 8, !dbg !770, !tbaa !665
  %120 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %119, null, !dbg !771
  br i1 %120, label %108, label %121, !dbg !772

; <label>:121:                                    ; preds = %110
  %122 = load i32, i32* %71, align 8, !dbg !774, !tbaa !343
  %123 = or i32 %122, 16, !dbg !774
  store i32 %123, i32* %71, align 8, !dbg !774, !tbaa !343
  %124 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %117, i64 0, i32 2, !dbg !775
  %125 = load i8*, i8** %124, align 8, !dbg !775, !tbaa !672
  call void %119(%struct.redisAsyncContext* %0, i8* null, i8* %125) #8, !dbg !776
  %126 = load i32, i32* %71, align 8, !dbg !777, !tbaa !343
  %127 = and i32 %126, -17, !dbg !777
  store i32 %127, i32* %71, align 8, !dbg !777, !tbaa !343
  %128 = load %struct.dictEntry*, %struct.dictEntry** %80, align 8, !dbg !727, !tbaa !751
  br label %108, !dbg !778

; <label>:129:                                    ; preds = %89
  call void @free(i8* nonnull %75) #8, !dbg !786
  %130 = load %struct.dict*, %struct.dict** %72, align 8, !dbg !787, !tbaa !418
  call fastcc void @dictRelease(%struct.dict* %130) #9, !dbg !788
  %131 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2, !dbg !789
  %132 = bitcast %struct.dict** %131 to i64*, !dbg !789
  %133 = load i64, i64* %132, align 8, !dbg !789, !tbaa !442
  %134 = call i8* @malloc(i64 32) #8, !dbg !792
  %135 = bitcast i8* %134 to i64*, !dbg !794
  store i64 %133, i64* %135, align 8, !dbg !794, !tbaa !717
  %136 = getelementptr inbounds i8, i8* %134, i64 8, !dbg !795
  %137 = bitcast i8* %136 to i32*, !dbg !795
  store i32 -1, i32* %137, align 8, !dbg !796, !tbaa !721
  %138 = getelementptr inbounds i8, i8* %134, i64 16, !dbg !797
  %139 = bitcast i8* %138 to %struct.dictEntry**, !dbg !797
  %140 = getelementptr inbounds i8, i8* %134, i64 24, !dbg !798
  %141 = bitcast i8* %138 to <2 x %struct.dictEntry*>*, !dbg !799
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %141, align 8, !dbg !799, !tbaa !348
  %142 = bitcast i8* %134 to %struct.dict**
  %143 = bitcast i8* %140 to i64*
  %144 = bitcast i8* %138 to i64*
  br label %145, !dbg !800

; <label>:145:                                    ; preds = %167, %129
  %146 = phi %struct.dictEntry* [ null, %129 ], [ %168, %167 ], !dbg !801
  %147 = icmp eq %struct.dictEntry* %146, null, !dbg !803
  br i1 %147, label %148, label %162, !dbg !804

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %137, align 8, !dbg !805, !tbaa !721
  %150 = add nsw i32 %149, 1, !dbg !805
  store i32 %150, i32* %137, align 8, !dbg !805, !tbaa !721
  %151 = load %struct.dict*, %struct.dict** %142, align 8, !dbg !806, !tbaa !717
  %152 = getelementptr inbounds %struct.dict, %struct.dict* %151, i64 0, i32 2, !dbg !807
  %153 = load i64, i64* %152, align 8, !dbg !807, !tbaa !743
  %154 = trunc i64 %153 to i32, !dbg !808
  %155 = icmp slt i32 %150, %154, !dbg !809
  br i1 %155, label %156, label %188, !dbg !810

; <label>:156:                                    ; preds = %148
  %157 = getelementptr inbounds %struct.dict, %struct.dict* %151, i64 0, i32 0, !dbg !811
  %158 = load %struct.dictEntry**, %struct.dictEntry*** %157, align 8, !dbg !811, !tbaa !401
  %159 = sext i32 %150 to i64, !dbg !812
  %160 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %158, i64 %159, !dbg !812
  %161 = bitcast %struct.dictEntry** %160 to i64*, !dbg !812
  br label %162, !dbg !813

; <label>:162:                                    ; preds = %145, %156
  %163 = phi i64* [ %161, %156 ], [ %143, %145 ]
  %164 = load i64, i64* %163, align 8, !dbg !814, !tbaa !348
  store i64 %164, i64* %144, align 8, !dbg !814, !tbaa !751
  %165 = inttoptr i64 %164 to %struct.dictEntry*
  %166 = icmp eq i64 %164, 0, !dbg !815
  br i1 %166, label %167, label %169, !dbg !816

; <label>:167:                                    ; preds = %162, %169, %180
  %168 = phi %struct.dictEntry* [ %165, %162 ], [ %170, %169 ], [ %187, %180 ]
  br label %145, !dbg !803, !llvm.loop !817

; <label>:169:                                    ; preds = %162
  %170 = inttoptr i64 %164 to %struct.dictEntry*
  %171 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %170, i64 0, i32 2, !dbg !819
  %172 = bitcast %struct.dictEntry** %171 to i64*, !dbg !819
  %173 = load i64, i64* %172, align 8, !dbg !819, !tbaa !759
  store i64 %173, i64* %143, align 8, !dbg !820, !tbaa !762
  %174 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %170, i64 0, i32 1, !dbg !821
  %175 = bitcast i8** %174 to %struct.redisCallback**, !dbg !821
  %176 = load %struct.redisCallback*, %struct.redisCallback** %175, align 8, !dbg !821, !tbaa !765
  %177 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %176, i64 0, i32 1, !dbg !826
  %178 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %177, align 8, !dbg !826, !tbaa !665
  %179 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %178, null, !dbg !827
  br i1 %179, label %167, label %180, !dbg !828

; <label>:180:                                    ; preds = %169
  %181 = load i32, i32* %71, align 8, !dbg !830, !tbaa !343
  %182 = or i32 %181, 16, !dbg !830
  store i32 %182, i32* %71, align 8, !dbg !830, !tbaa !343
  %183 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %176, i64 0, i32 2, !dbg !831
  %184 = load i8*, i8** %183, align 8, !dbg !831, !tbaa !672
  call void %178(%struct.redisAsyncContext* %0, i8* null, i8* %184) #8, !dbg !832
  %185 = load i32, i32* %71, align 8, !dbg !833, !tbaa !343
  %186 = and i32 %185, -17, !dbg !833
  store i32 %186, i32* %71, align 8, !dbg !833, !tbaa !343
  %187 = load %struct.dictEntry*, %struct.dictEntry** %139, align 8, !dbg !801, !tbaa !751
  br label %167, !dbg !834

; <label>:188:                                    ; preds = %148
  call void @free(i8* nonnull %134) #8, !dbg !837
  %189 = load %struct.dict*, %struct.dict** %131, align 8, !dbg !838, !tbaa !442
  call fastcc void @dictRelease(%struct.dict* %189) #9, !dbg !839
  %190 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 5, !dbg !840
  %191 = load void (i8*)*, void (i8*)** %190, align 8, !dbg !840, !tbaa !359
  %192 = icmp eq void (i8*)* %191, null, !dbg !840
  br i1 %192, label %196, label %193, !dbg !843

; <label>:193:                                    ; preds = %188
  %194 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !840
  %195 = load i8*, i8** %194, align 8, !dbg !840, !tbaa !352
  call void %191(i8* %195) #8, !dbg !840
  br label %196, !dbg !840

; <label>:196:                                    ; preds = %188, %193
  %197 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 5, !dbg !844
  %198 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %197, align 8, !dbg !844, !tbaa !568
  %199 = icmp eq void (%struct.redisAsyncContext*, i32)* %198, null, !dbg !846
  br i1 %199, label %213, label %200, !dbg !847

; <label>:200:                                    ; preds = %196
  %201 = load i32, i32* %71, align 8, !dbg !848, !tbaa !343
  %202 = and i32 %201, 2, !dbg !849
  %203 = icmp eq i32 %202, 0, !dbg !849
  br i1 %203, label %213, label %204, !dbg !850

; <label>:204:                                    ; preds = %200
  %205 = and i32 %201, 8, !dbg !851
  %206 = icmp eq i32 %205, 0, !dbg !851
  br i1 %206, label %208, label %207, !dbg !854

; <label>:207:                                    ; preds = %204
  call void %198(%struct.redisAsyncContext* nonnull %0, i32 0) #8, !dbg !855
  br label %213, !dbg !857

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !858
  %210 = load i32, i32* %209, align 8, !dbg !858, !tbaa !316
  %211 = icmp ne i32 %210, 0, !dbg !860
  %212 = sext i1 %211 to i32, !dbg !861
  call void %198(%struct.redisAsyncContext* nonnull %0, i32 %212) #8, !dbg !862
  br label %213

; <label>:213:                                    ; preds = %200, %196, %207, %208
  call void @redisFree(%struct.redisContext* nonnull %3) #8, !dbg !863
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !864
  ret void, !dbg !864
}

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncDisconnect(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !865 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !871
  %3 = load i32, i32* %2, align 8, !dbg !872, !tbaa !343
  %4 = or i32 %3, 4, !dbg !872
  store i32 %4, i32* %2, align 8, !dbg !872, !tbaa !343
  %5 = and i32 %3, 16, !dbg !873
  %6 = icmp eq i32 %5, 0, !dbg !873
  br i1 %6, label %7, label %20, !dbg !875

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !876
  %9 = load %struct.redisCallback*, %struct.redisCallback** %8, align 8, !dbg !876, !tbaa !877
  %10 = icmp eq %struct.redisCallback* %9, null, !dbg !878
  br i1 %10, label %11, label %20, !dbg !879

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !889
  %13 = load i32, i32* %12, align 8, !dbg !889, !tbaa !306
  %14 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !890
  store i32 %13, i32* %14, align 8, !dbg !891, !tbaa !316
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !892
  %16 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !893
  store i8* %15, i8** %16, align 8, !dbg !894, !tbaa !324
  %17 = icmp eq i32 %13, 0, !dbg !895
  br i1 %17, label %19, label %18, !dbg !897

; <label>:18:                                     ; preds = %11
  store i32 %4, i32* %2, align 8, !dbg !899, !tbaa !343
  br label %19

; <label>:19:                                     ; preds = %11, %18
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !901
  br label %20, !dbg !902

; <label>:20:                                     ; preds = %1, %19, %7
  ret void, !dbg !903
}

; Function Attrs: noredzone nounwind
define dso_local void @redisProcessCallbacks(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !904 {
  %2 = alloca %struct.redisCallback, align 8
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !912
  %5 = bitcast %struct.redisCallback* %2 to i8*, !dbg !914
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #5, !dbg !914
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 24, i1 false), !dbg !915
  %6 = bitcast i8** %3 to i8*, !dbg !916
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !916
  store i8* null, i8** %3, align 8, !dbg !917, !tbaa !348
  %7 = call i32 @redisGetReply(%struct.redisContext* %4, i8** nonnull %3) #8, !dbg !918
  %8 = icmp eq i32 %7, 0, !dbg !920
  br i1 %8, label %9, label %377, !dbg !920

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %10, i64 0, i32 0
  %12 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 1
  %13 = bitcast %struct.redisCallbackList* %10 to i64*
  %14 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3
  %16 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %2, i64 0, i32 2
  %18 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0
  %19 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %18, i64 0, i32 0
  %20 = bitcast %struct.redisCallbackList* %18 to i64*
  %21 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1
  br label %24, !dbg !920

; <label>:24:                                     ; preds = %9, %374
  %25 = load i8*, i8** %3, align 8, !dbg !921, !tbaa !348
  %26 = icmp eq i8* %25, null, !dbg !924
  br i1 %26, label %27, label %95, !dbg !925

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %15, align 8, !dbg !926, !tbaa !343
  %29 = and i32 %28, 4, !dbg !929
  %30 = icmp eq i32 %29, 0, !dbg !929
  br i1 %30, label %75, label %31, !dbg !930

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 4, !dbg !931
  %33 = load i8*, i8** %32, align 8, !dbg !931, !tbaa !932
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !942
  %35 = load i8, i8* %34, align 1, !dbg !942, !tbaa !943
  %36 = trunc i8 %35 to i3, !dbg !945
  switch i3 %36, label %61 [
    i3 0, label %37
    i3 1, label %40
    i3 2, label %44
    i3 3, label %49
    i3 -4, label %54
  ], !dbg !945

; <label>:37:                                     ; preds = %31
  %38 = lshr i8 %35, 3, !dbg !946
  %39 = zext i8 %38 to i64, !dbg !946
  br label %58, !dbg !948

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds i8, i8* %33, i64 -3, !dbg !949
  %42 = load i8, i8* %41, align 1, !dbg !950, !tbaa !943
  %43 = zext i8 %42 to i64, !dbg !949
  br label %58, !dbg !951

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds i8, i8* %33, i64 -5, !dbg !952
  %46 = bitcast i8* %45 to i16*, !dbg !953
  %47 = load i16, i16* %46, align 1, !dbg !953, !tbaa !954
  %48 = zext i16 %47 to i64, !dbg !952
  br label %58, !dbg !956

; <label>:49:                                     ; preds = %31
  %50 = getelementptr inbounds i8, i8* %33, i64 -9, !dbg !957
  %51 = bitcast i8* %50 to i32*, !dbg !958
  %52 = load i32, i32* %51, align 1, !dbg !958, !tbaa !959
  %53 = zext i32 %52 to i64, !dbg !957
  br label %58, !dbg !960

; <label>:54:                                     ; preds = %31
  %55 = getelementptr inbounds i8, i8* %33, i64 -17, !dbg !961
  %56 = bitcast i8* %55 to i64*, !dbg !962
  %57 = load i64, i64* %56, align 1, !dbg !962, !tbaa !406
  br label %58, !dbg !963

; <label>:58:                                     ; preds = %37, %40, %44, %49, %54
  %59 = phi i64 [ %57, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %37 ], !dbg !964
  %60 = icmp eq i64 %59, 0, !dbg !965
  br i1 %60, label %61, label %75, !dbg !966

; <label>:61:                                     ; preds = %31, %58
  %62 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 0, !dbg !967
  %63 = load %struct.redisCallback*, %struct.redisCallback** %62, align 8, !dbg !967, !tbaa !877
  %64 = icmp eq %struct.redisCallback* %63, null, !dbg !968
  br i1 %64, label %65, label %75, !dbg !969

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !976
  %67 = load i32, i32* %66, align 8, !dbg !976, !tbaa !306
  %68 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !977
  store i32 %67, i32* %68, align 8, !dbg !978, !tbaa !316
  %69 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !979
  %70 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !980
  store i8* %69, i8** %70, align 8, !dbg !981, !tbaa !324
  %71 = icmp eq i32 %67, 0, !dbg !982
  br i1 %71, label %74, label %72, !dbg !983

; <label>:72:                                     ; preds = %65
  %73 = or i32 %28, 4, !dbg !985
  store i32 %73, i32* %15, align 8, !dbg !985, !tbaa !343
  br label %74

; <label>:74:                                     ; preds = %65, %72
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !986
  br label %410, !dbg !987

; <label>:75:                                     ; preds = %27, %61, %58
  %76 = and i32 %28, 64, !dbg !988
  %77 = icmp eq i32 %76, 0, !dbg !988
  br i1 %77, label %410, label %78, !dbg !990

; <label>:78:                                     ; preds = %75
  %79 = call i8* @malloc(i64 24) #8, !dbg !1000
  %80 = icmp eq i8* %79, null, !dbg !1002
  br i1 %80, label %410, label %81, !dbg !1004

; <label>:81:                                     ; preds = %78
  %82 = call i8* @memcpy(i8* nonnull %79, i8* nonnull %5, i64 24) #8, !dbg !1005
  %83 = bitcast i8* %79 to %struct.redisCallback**, !dbg !1008
  store %struct.redisCallback* null, %struct.redisCallback** %83, align 8, !dbg !1009, !tbaa !637
  %84 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1010, !tbaa !622
  %85 = icmp eq %struct.redisCallback* %84, null, !dbg !1012
  br i1 %85, label %86, label %88, !dbg !1013

; <label>:86:                                     ; preds = %81
  %87 = bitcast %struct.redisCallbackList* %10 to i8**, !dbg !1014
  store i8* %79, i8** %87, align 8, !dbg !1014, !tbaa !622
  br label %88, !dbg !1015

; <label>:88:                                     ; preds = %86, %81
  %89 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1016, !tbaa !642
  %90 = icmp eq %struct.redisCallback* %89, null, !dbg !1018
  br i1 %90, label %93, label %91, !dbg !1019

; <label>:91:                                     ; preds = %88
  %92 = bitcast %struct.redisCallback* %89 to i8**, !dbg !1020
  store i8* %79, i8** %92, align 8, !dbg !1020, !tbaa !637
  br label %93, !dbg !1021

; <label>:93:                                     ; preds = %91, %88
  %94 = bitcast %struct.redisCallback** %14 to i8**, !dbg !1022
  store i8* %79, i8** %94, align 8, !dbg !1022, !tbaa !642
  br label %410, !dbg !1023

; <label>:95:                                     ; preds = %24
  %96 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1028, !tbaa !622
  %97 = icmp eq %struct.redisCallback* %96, null, !dbg !1030
  br i1 %97, label %107, label %98, !dbg !1031

; <label>:98:                                     ; preds = %95
  %99 = bitcast %struct.redisCallback* %96 to i64*, !dbg !1032
  %100 = load i64, i64* %99, align 8, !dbg !1032, !tbaa !637
  store i64 %100, i64* %13, align 8, !dbg !1033, !tbaa !622
  %101 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1034, !tbaa !642
  %102 = icmp eq %struct.redisCallback* %96, %101, !dbg !1035
  br i1 %102, label %103, label %104, !dbg !1036

; <label>:103:                                    ; preds = %98
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1037, !tbaa !642
  br label %104, !dbg !1038

; <label>:104:                                    ; preds = %98, %103
  %105 = bitcast %struct.redisCallback* %96 to i8*, !dbg !1039
  %106 = call i8* @memcpy(i8* nonnull %5, i8* %105, i64 24) #8, !dbg !1040
  call void @free(i8* %105) #8, !dbg !1041
  br label %347, !dbg !1042

; <label>:107:                                    ; preds = %95
  %108 = bitcast i8* %25 to i32*, !dbg !1043
  %109 = load i32, i32* %108, align 8, !dbg !1043, !tbaa !1046
  %110 = icmp eq i32 %109, 6, !dbg !1049
  br i1 %110, label %111, label %143, !dbg !1050

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1051
  store i32 2, i32* %112, align 8, !dbg !1053, !tbaa !306
  %113 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1054
  %114 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !1055
  %115 = bitcast i8* %114 to i8**, !dbg !1055
  %116 = load i8*, i8** %115, align 8, !dbg !1055, !tbaa !1056
  %117 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %113, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %116) #8, !dbg !1057
  %118 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1058, !tbaa !1059
  %119 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %118, i64 0, i32 9, !dbg !1060
  %120 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %119, align 8, !dbg !1060, !tbaa !1061
  %121 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %120, i64 0, i32 4, !dbg !1063
  %122 = load void (i8*)*, void (i8*)** %121, align 8, !dbg !1063, !tbaa !1064
  %123 = load i8*, i8** %3, align 8, !dbg !1066, !tbaa !348
  call void %122(i8* %123) #8, !dbg !1067
  %124 = load i32, i32* %112, align 8, !dbg !1073, !tbaa !306
  %125 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1074
  store i32 %124, i32* %125, align 8, !dbg !1075, !tbaa !316
  %126 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1076
  store i8* %113, i8** %126, align 8, !dbg !1077, !tbaa !324
  %127 = icmp eq i32 %124, 0, !dbg !1078
  br i1 %127, label %128, label %139, !dbg !1079

; <label>:128:                                    ; preds = %111
  %129 = load %struct.redisCallback*, %struct.redisCallback** %11, align 8, !dbg !1084, !tbaa !622
  %130 = icmp eq %struct.redisCallback* %129, null, !dbg !1086
  br i1 %130, label %142, label %131, !dbg !1087

; <label>:131:                                    ; preds = %128
  %132 = bitcast %struct.redisCallback* %129 to i64*, !dbg !1088
  %133 = load i64, i64* %132, align 8, !dbg !1088, !tbaa !637
  store i64 %133, i64* %13, align 8, !dbg !1089, !tbaa !622
  %134 = load %struct.redisCallback*, %struct.redisCallback** %14, align 8, !dbg !1090, !tbaa !642
  %135 = icmp eq %struct.redisCallback* %129, %134, !dbg !1091
  br i1 %135, label %136, label %137, !dbg !1092

; <label>:136:                                    ; preds = %131
  store %struct.redisCallback* null, %struct.redisCallback** %14, align 8, !dbg !1093, !tbaa !642
  br label %137, !dbg !1094

; <label>:137:                                    ; preds = %136, %131
  %138 = bitcast %struct.redisCallback* %129 to i8*, !dbg !1095
  call void @free(i8* %138) #8, !dbg !1096
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1097
  unreachable, !dbg !1097

; <label>:139:                                    ; preds = %111
  %140 = load i32, i32* %15, align 8, !dbg !1099, !tbaa !343
  %141 = or i32 %140, 4, !dbg !1099
  store i32 %141, i32* %15, align 8, !dbg !1099, !tbaa !343
  br label %142

; <label>:142:                                    ; preds = %128, %139
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1100
  br label %410, !dbg !1101

; <label>:143:                                    ; preds = %107
  %144 = load i32, i32* %15, align 8, !dbg !1102, !tbaa !343
  %145 = and i32 %144, 96, !dbg !1102
  %146 = icmp eq i32 %145, 0, !dbg !1102
  br i1 %146, label %147, label %148, !dbg !1102

; <label>:147:                                    ; preds = %143
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 463, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.redisProcessCallbacks, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1102
  unreachable, !dbg !1102

; <label>:148:                                    ; preds = %143
  %149 = and i32 %144, 32, !dbg !1102
  %150 = icmp eq i32 %149, 0, !dbg !1102
  br i1 %150, label %347, label %151, !dbg !1103

; <label>:151:                                    ; preds = %148
  %152 = icmp eq i32 %109, 2, !dbg !1127
  br i1 %152, label %153, label %335, !dbg !1128

; <label>:153:                                    ; preds = %151
  %154 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !1129
  %155 = bitcast i8* %154 to i64*, !dbg !1129
  %156 = load i64, i64* %155, align 8, !dbg !1129, !tbaa !1130
  %157 = icmp ugt i64 %156, 1, !dbg !1129
  br i1 %157, label %159, label %158, !dbg !1129

; <label>:158:                                    ; preds = %153
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 375, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1129
  unreachable, !dbg !1129

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds i8, i8* %25, i64 40, !dbg !1131
  %161 = bitcast i8* %160 to %struct.redisReply***, !dbg !1131
  %162 = load %struct.redisReply**, %struct.redisReply*** %161, align 8, !dbg !1131, !tbaa !1132
  %163 = load %struct.redisReply*, %struct.redisReply** %162, align 8, !dbg !1131, !tbaa !348
  %164 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %163, i64 0, i32 0, !dbg !1131
  %165 = load i32, i32* %164, align 8, !dbg !1131, !tbaa !1046
  %166 = icmp eq i32 %165, 1, !dbg !1131
  br i1 %166, label %168, label %167, !dbg !1131

; <label>:167:                                    ; preds = %159
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !1131
  unreachable, !dbg !1131

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %163, i64 0, i32 3, !dbg !1133
  %170 = load i8*, i8** %169, align 8, !dbg !1133, !tbaa !1056
  %171 = load i8, i8* %170, align 1, !dbg !1135, !tbaa !943
  %172 = call i8* @__locale_ctype_ptr() #8, !dbg !1135
  %173 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !1135
  %174 = sext i8 %171 to i32, !dbg !1135
  %175 = sext i8 %171 to i64, !dbg !1135
  %176 = getelementptr inbounds i8, i8* %173, i64 %175, !dbg !1135
  %177 = load i8, i8* %176, align 1, !dbg !1135, !tbaa !943
  %178 = and i8 %177, 3, !dbg !1135
  %179 = icmp eq i8 %178, 1, !dbg !1135
  %180 = add nsw i32 %174, 32, !dbg !1135
  %181 = select i1 %179, i32 %180, i32 %174, !dbg !1135
  %182 = icmp eq i32 %181, 112, !dbg !1136
  %183 = select i1 %182, %struct.dict** %22, %struct.dict** %23, !dbg !1138
  %184 = load %struct.dict*, %struct.dict** %183, align 8, !dbg !1139, !tbaa !348
  %185 = load %struct.redisReply**, %struct.redisReply*** %161, align 8, !dbg !1141, !tbaa !1132
  %186 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %185, i64 1, !dbg !1141
  %187 = load %struct.redisReply*, %struct.redisReply** %186, align 8, !dbg !1141, !tbaa !348
  %188 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %187, i64 0, i32 0, !dbg !1141
  %189 = load i32, i32* %188, align 8, !dbg !1141, !tbaa !1046
  %190 = icmp eq i32 %189, 1, !dbg !1141
  br i1 %190, label %192, label %191, !dbg !1141

; <label>:191:                                    ; preds = %168
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1141
  unreachable, !dbg !1141

; <label>:192:                                    ; preds = %168
  %193 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %187, i64 0, i32 3, !dbg !1142
  %194 = load i8*, i8** %193, align 8, !dbg !1142, !tbaa !1056
  %195 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %187, i64 0, i32 2, !dbg !1143
  %196 = load i64, i64* %195, align 8, !dbg !1143, !tbaa !1144
  %197 = call i8* @sdsnewlen(i8* %194, i64 %196) #8, !dbg !1145
  %198 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 2, !dbg !1158
  %199 = load i64, i64* %198, align 8, !dbg !1158, !tbaa !743
  %200 = icmp eq i64 %199, 0, !dbg !1160
  br i1 %200, label %334, label %201, !dbg !1161

; <label>:201:                                    ; preds = %192
  %202 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 1, !dbg !1162
  %203 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1162, !tbaa !412
  %204 = getelementptr inbounds %struct.dictType, %struct.dictType* %203, i64 0, i32 0, !dbg !1162
  %205 = load i32 (i8*)*, i32 (i8*)** %204, align 8, !dbg !1162, !tbaa !1163
  %206 = call i32 %205(i8* %197) #8, !dbg !1162
  %207 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 3, !dbg !1165
  %208 = load i64, i64* %207, align 8, !dbg !1165, !tbaa !1166
  %209 = trunc i64 %208 to i32, !dbg !1162
  %210 = and i32 %206, %209, !dbg !1162
  %211 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 0, !dbg !1168
  %212 = load %struct.dictEntry**, %struct.dictEntry*** %211, align 8, !dbg !1168, !tbaa !401
  %213 = zext i32 %210 to i64, !dbg !1169
  %214 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %212, i64 %213, !dbg !1169
  %215 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 5, !dbg !1171
  %216 = load %struct.dictEntry*, %struct.dictEntry** %214, align 8, !dbg !1174, !tbaa !348
  %217 = icmp eq %struct.dictEntry* %216, null, !dbg !1175
  br i1 %217, label %334, label %218, !dbg !1175

; <label>:218:                                    ; preds = %201, %234
  %219 = phi %struct.dictEntry* [ %236, %234 ], [ %216, %201 ]
  %220 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1171, !tbaa !412
  %221 = getelementptr inbounds %struct.dictType, %struct.dictType* %220, i64 0, i32 3, !dbg !1171
  %222 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %221, align 8, !dbg !1171, !tbaa !1176
  %223 = icmp eq i32 (i8*, i8*, i8*)* %222, null, !dbg !1171
  br i1 %223, label %230, label %224, !dbg !1177

; <label>:224:                                    ; preds = %218
  %225 = load i8*, i8** %215, align 8, !dbg !1171, !tbaa !415
  %226 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %219, i64 0, i32 0, !dbg !1171
  %227 = load i8*, i8** %226, align 8, !dbg !1171, !tbaa !1178
  %228 = call i32 %222(i8* %225, i8* %197, i8* %227) #8, !dbg !1171
  %229 = icmp eq i32 %228, 0, !dbg !1171
  br i1 %229, label %234, label %238, !dbg !1171

; <label>:230:                                    ; preds = %218
  %231 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %219, i64 0, i32 0, !dbg !1171
  %232 = load i8*, i8** %231, align 8, !dbg !1171, !tbaa !1178
  %233 = icmp eq i8* %232, %197, !dbg !1171
  br i1 %233, label %238, label %234, !dbg !1177

; <label>:234:                                    ; preds = %230, %224
  %235 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %219, i64 0, i32 2, !dbg !1179
  %236 = load %struct.dictEntry*, %struct.dictEntry** %235, align 8, !dbg !1174, !tbaa !348
  %237 = icmp eq %struct.dictEntry* %236, null, !dbg !1175
  br i1 %237, label %334, label %218, !dbg !1175, !llvm.loop !1180

; <label>:238:                                    ; preds = %230, %224
  %239 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %219, i64 0, i32 1, !dbg !1184
  %240 = load i8*, i8** %239, align 8, !dbg !1184, !tbaa !765
  %241 = call i8* @memcpy(i8* nonnull %5, i8* %240, i64 24) #8, !dbg !1187
  %242 = zext i1 %182 to i64, !dbg !1188
  %243 = getelementptr inbounds i8, i8* %170, i64 %242, !dbg !1188
  %244 = call i32 @strcasecmp(i8* %243, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1190
  %245 = icmp eq i32 %244, 0, !dbg !1191
  br i1 %245, label %246, label %334, !dbg !1192

; <label>:246:                                    ; preds = %238
  %247 = load i64, i64* %198, align 8, !dbg !1206, !tbaa !743
  %248 = icmp eq i64 %247, 0, !dbg !1208
  br i1 %248, label %319, label %249, !dbg !1209

; <label>:249:                                    ; preds = %246
  %250 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1210, !tbaa !412
  %251 = getelementptr inbounds %struct.dictType, %struct.dictType* %250, i64 0, i32 0, !dbg !1210
  %252 = load i32 (i8*)*, i32 (i8*)** %251, align 8, !dbg !1210, !tbaa !1163
  %253 = call i32 %252(i8* %197) #8, !dbg !1210
  %254 = load i64, i64* %207, align 8, !dbg !1211, !tbaa !1166
  %255 = trunc i64 %254 to i32, !dbg !1210
  %256 = and i32 %253, %255, !dbg !1210
  %257 = load %struct.dictEntry**, %struct.dictEntry*** %211, align 8, !dbg !1213, !tbaa !401
  %258 = zext i32 %256 to i64, !dbg !1214
  %259 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %257, i64 %258, !dbg !1214
  %260 = load %struct.dictEntry*, %struct.dictEntry** %259, align 8, !dbg !1217, !tbaa !348
  %261 = icmp eq %struct.dictEntry* %260, null, !dbg !1219
  br i1 %261, label %319, label %262, !dbg !1219

; <label>:262:                                    ; preds = %249, %315
  %263 = phi %struct.dictEntry* [ %317, %315 ], [ %260, %249 ]
  %264 = phi %struct.dictEntry* [ %263, %315 ], [ null, %249 ]
  %265 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1220, !tbaa !412
  %266 = getelementptr inbounds %struct.dictType, %struct.dictType* %265, i64 0, i32 3, !dbg !1220
  %267 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %266, align 8, !dbg !1220, !tbaa !1176
  %268 = icmp eq i32 (i8*, i8*, i8*)* %267, null, !dbg !1220
  br i1 %268, label %275, label %269, !dbg !1222

; <label>:269:                                    ; preds = %262
  %270 = load i8*, i8** %215, align 8, !dbg !1220, !tbaa !415
  %271 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 0, !dbg !1220
  %272 = load i8*, i8** %271, align 8, !dbg !1220, !tbaa !1178
  %273 = call i32 %267(i8* %270, i8* %197, i8* %272) #8, !dbg !1220
  %274 = icmp eq i32 %273, 0, !dbg !1220
  br i1 %274, label %315, label %279, !dbg !1220

; <label>:275:                                    ; preds = %262
  %276 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 0, !dbg !1220
  %277 = load i8*, i8** %276, align 8, !dbg !1220, !tbaa !1178
  %278 = icmp eq i8* %277, %197, !dbg !1220
  br i1 %278, label %279, label %315, !dbg !1222

; <label>:279:                                    ; preds = %275, %269
  %280 = icmp eq %struct.dictEntry* %264, null, !dbg !1223
  %281 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 2, !dbg !1226
  %282 = bitcast %struct.dictEntry** %281 to i64*, !dbg !1226
  %283 = load i64, i64* %282, align 8, !dbg !1226, !tbaa !759
  br i1 %280, label %286, label %284, !dbg !1227

; <label>:284:                                    ; preds = %279
  %285 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %264, i64 0, i32 2, !dbg !1228
  br label %289, !dbg !1229

; <label>:286:                                    ; preds = %279
  %287 = load %struct.dictEntry**, %struct.dictEntry*** %211, align 8, !dbg !1230, !tbaa !401
  %288 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %287, i64 %258, !dbg !1231
  br label %289

; <label>:289:                                    ; preds = %286, %284
  %290 = phi %struct.dictEntry** [ %288, %286 ], [ %285, %284 ]
  %291 = bitcast %struct.dictEntry** %290 to i64*, !dbg !1232
  store i64 %283, i64* %291, align 8, !dbg !1232, !tbaa !348
  %292 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1233, !tbaa !412
  %293 = getelementptr inbounds %struct.dictType, %struct.dictType* %292, i64 0, i32 4, !dbg !1233
  %294 = load void (i8*, i8*)*, void (i8*, i8*)** %293, align 8, !dbg !1233, !tbaa !1235
  %295 = icmp eq void (i8*, i8*)* %294, null, !dbg !1233
  br i1 %295, label %301, label %296, !dbg !1236

; <label>:296:                                    ; preds = %289
  %297 = load i8*, i8** %215, align 8, !dbg !1233, !tbaa !415
  %298 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 0, !dbg !1233
  %299 = load i8*, i8** %298, align 8, !dbg !1233, !tbaa !1178
  call void %294(i8* %297, i8* %299) #8, !dbg !1233
  %300 = load %struct.dictType*, %struct.dictType** %202, align 8, !dbg !1237, !tbaa !412
  br label %301, !dbg !1233

; <label>:301:                                    ; preds = %296, %289
  %302 = phi %struct.dictType* [ %292, %289 ], [ %300, %296 ], !dbg !1237
  %303 = getelementptr inbounds %struct.dictType, %struct.dictType* %302, i64 0, i32 5, !dbg !1237
  %304 = load void (i8*, i8*)*, void (i8*, i8*)** %303, align 8, !dbg !1237, !tbaa !1239
  %305 = icmp eq void (i8*, i8*)* %304, null, !dbg !1237
  br i1 %305, label %310, label %306, !dbg !1240

; <label>:306:                                    ; preds = %301
  %307 = load i8*, i8** %215, align 8, !dbg !1237, !tbaa !415
  %308 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 1, !dbg !1237
  %309 = load i8*, i8** %308, align 8, !dbg !1237, !tbaa !765
  call void %304(i8* %307, i8* %309) #8, !dbg !1237
  br label %310, !dbg !1237

; <label>:310:                                    ; preds = %306, %301
  %311 = bitcast %struct.dictEntry* %263 to i8*, !dbg !1241
  call void @free(i8* %311) #8, !dbg !1242
  %312 = getelementptr inbounds %struct.dict, %struct.dict* %184, i64 0, i32 4, !dbg !1243
  %313 = load i64, i64* %312, align 8, !dbg !1244, !tbaa !409
  %314 = add i64 %313, -1, !dbg !1244
  store i64 %314, i64* %312, align 8, !dbg !1244, !tbaa !409
  br label %319, !dbg !1245

; <label>:315:                                    ; preds = %275, %269
  %316 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %263, i64 0, i32 2, !dbg !1246
  %317 = load %struct.dictEntry*, %struct.dictEntry** %316, align 8, !dbg !1217, !tbaa !348
  %318 = icmp eq %struct.dictEntry* %317, null, !dbg !1219
  br i1 %318, label %319, label %262, !dbg !1219, !llvm.loop !1247

; <label>:319:                                    ; preds = %315, %310, %249, %246
  %320 = load %struct.redisReply**, %struct.redisReply*** %161, align 8, !dbg !1250, !tbaa !1132
  %321 = getelementptr inbounds %struct.redisReply*, %struct.redisReply** %320, i64 2, !dbg !1250
  %322 = load %struct.redisReply*, %struct.redisReply** %321, align 8, !dbg !1250, !tbaa !348
  %323 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %322, i64 0, i32 0, !dbg !1250
  %324 = load i32, i32* %323, align 8, !dbg !1250, !tbaa !1046
  %325 = icmp eq i32 %324, 3, !dbg !1250
  br i1 %325, label %327, label %326, !dbg !1250

; <label>:326:                                    ; preds = %319
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.__redisGetSubscribeCallback, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !1250
  unreachable, !dbg !1250

; <label>:327:                                    ; preds = %319
  %328 = getelementptr inbounds %struct.redisReply, %struct.redisReply* %322, i64 0, i32 1, !dbg !1251
  %329 = load i64, i64* %328, align 8, !dbg !1251, !tbaa !1253
  %330 = icmp eq i64 %329, 0, !dbg !1254
  br i1 %330, label %331, label %334, !dbg !1255

; <label>:331:                                    ; preds = %327
  %332 = load i32, i32* %15, align 8, !dbg !1256, !tbaa !343
  %333 = and i32 %332, -33, !dbg !1256
  store i32 %333, i32* %15, align 8, !dbg !1256, !tbaa !343
  br label %334, !dbg !1257

; <label>:334:                                    ; preds = %234, %331, %327, %238, %201, %192
  call void @sdsfree(i8* %197) #8, !dbg !1258
  br label %347, !dbg !1259

; <label>:335:                                    ; preds = %151
  %336 = load %struct.redisCallback*, %struct.redisCallback** %19, align 8, !dbg !1264, !tbaa !622
  %337 = icmp eq %struct.redisCallback* %336, null, !dbg !1266
  br i1 %337, label %347, label %338, !dbg !1267

; <label>:338:                                    ; preds = %335
  %339 = bitcast %struct.redisCallback* %336 to i64*, !dbg !1268
  %340 = load i64, i64* %339, align 8, !dbg !1268, !tbaa !637
  store i64 %340, i64* %20, align 8, !dbg !1269, !tbaa !622
  %341 = load %struct.redisCallback*, %struct.redisCallback** %21, align 8, !dbg !1270, !tbaa !642
  %342 = icmp eq %struct.redisCallback* %336, %341, !dbg !1271
  br i1 %342, label %343, label %344, !dbg !1272

; <label>:343:                                    ; preds = %338
  store %struct.redisCallback* null, %struct.redisCallback** %21, align 8, !dbg !1273, !tbaa !642
  br label %344, !dbg !1274

; <label>:344:                                    ; preds = %343, %338
  %345 = bitcast %struct.redisCallback* %336 to i8*, !dbg !1275
  %346 = call i8* @memcpy(i8* nonnull %5, i8* %345, i64 24) #8, !dbg !1276
  call void @free(i8* %345) #8, !dbg !1277
  br label %347, !dbg !1278

; <label>:347:                                    ; preds = %344, %335, %334, %104, %148
  %348 = load void (%struct.redisAsyncContext*, i8*, i8*)*, void (%struct.redisAsyncContext*, i8*, i8*)** %12, align 8, !dbg !1279, !tbaa !665
  %349 = icmp eq void (%struct.redisAsyncContext*, i8*, i8*)* %348, null, !dbg !1281
  br i1 %349, label %367, label %350, !dbg !1282

; <label>:350:                                    ; preds = %347
  %351 = load i8*, i8** %3, align 8, !dbg !1283, !tbaa !348
  %352 = load i32, i32* %15, align 8, !dbg !1290, !tbaa !343
  %353 = or i32 %352, 16, !dbg !1290
  store i32 %353, i32* %15, align 8, !dbg !1290, !tbaa !343
  %354 = load i8*, i8** %17, align 8, !dbg !1291, !tbaa !672
  call void %348(%struct.redisAsyncContext* %0, i8* %351, i8* %354) #8, !dbg !1292
  %355 = load i32, i32* %15, align 8, !dbg !1293, !tbaa !343
  %356 = and i32 %355, -17, !dbg !1293
  store i32 %356, i32* %15, align 8, !dbg !1293, !tbaa !343
  %357 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1294, !tbaa !1059
  %358 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %357, i64 0, i32 9, !dbg !1295
  %359 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %358, align 8, !dbg !1295, !tbaa !1061
  %360 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %359, i64 0, i32 4, !dbg !1296
  %361 = load void (i8*)*, void (i8*)** %360, align 8, !dbg !1296, !tbaa !1064
  %362 = load i8*, i8** %3, align 8, !dbg !1297, !tbaa !348
  call void %361(i8* %362) #8, !dbg !1298
  %363 = load i32, i32* %15, align 8, !dbg !1299, !tbaa !343
  %364 = and i32 %363, 8, !dbg !1301
  %365 = icmp eq i32 %364, 0, !dbg !1301
  br i1 %365, label %374, label %366, !dbg !1302

; <label>:366:                                    ; preds = %350
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #9, !dbg !1303
  br label %410, !dbg !1305

; <label>:367:                                    ; preds = %347
  %368 = load %struct.redisReader*, %struct.redisReader** %16, align 8, !dbg !1306, !tbaa !1059
  %369 = getelementptr inbounds %struct.redisReader, %struct.redisReader* %368, i64 0, i32 9, !dbg !1308
  %370 = load %struct.redisReplyObjectFunctions*, %struct.redisReplyObjectFunctions** %369, align 8, !dbg !1308, !tbaa !1061
  %371 = getelementptr inbounds %struct.redisReplyObjectFunctions, %struct.redisReplyObjectFunctions* %370, i64 0, i32 4, !dbg !1309
  %372 = load void (i8*)*, void (i8*)** %371, align 8, !dbg !1309, !tbaa !1064
  %373 = load i8*, i8** %3, align 8, !dbg !1310, !tbaa !348
  call void %372(i8* %373) #8, !dbg !1311
  br label %374

; <label>:374:                                    ; preds = %350, %367
  %375 = call i32 @redisGetReply(%struct.redisContext* nonnull %4, i8** nonnull %3) #8, !dbg !918
  %376 = icmp eq i32 %375, 0, !dbg !920
  br i1 %376, label %24, label %381, !dbg !920, !llvm.loop !1312

; <label>:377:                                    ; preds = %1
  %378 = icmp eq %struct.redisAsyncContext* %0, null, !dbg !1319
  br i1 %378, label %379, label %381, !dbg !1320

; <label>:379:                                    ; preds = %377
  %380 = load i32, i32* inttoptr (i64 208 to i32*), align 16, !dbg !1321, !tbaa !316
  br label %387, !dbg !1320

; <label>:381:                                    ; preds = %374, %377
  %382 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1323
  %383 = load i32, i32* %382, align 8, !dbg !1323, !tbaa !306
  %384 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1324
  store i32 %383, i32* %384, align 8, !dbg !1325, !tbaa !316
  %385 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1326
  %386 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1327
  store i8* %385, i8** %386, align 8, !dbg !1328, !tbaa !324
  br label %387, !dbg !1329

; <label>:387:                                    ; preds = %381, %379
  %388 = phi i32 [ %380, %379 ], [ %383, %381 ], !dbg !1321
  %389 = icmp eq i32 %388, 0, !dbg !1330
  br i1 %389, label %390, label %405, !dbg !1331

; <label>:390:                                    ; preds = %387
  %391 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1332
  %392 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %391, i64 0, i32 0, !dbg !1336
  %393 = load %struct.redisCallback*, %struct.redisCallback** %392, align 8, !dbg !1336, !tbaa !622
  %394 = icmp eq %struct.redisCallback* %393, null, !dbg !1338
  br i1 %394, label %409, label %395, !dbg !1339

; <label>:395:                                    ; preds = %390
  %396 = bitcast %struct.redisCallback* %393 to i64*, !dbg !1340
  %397 = load i64, i64* %396, align 8, !dbg !1340, !tbaa !637
  %398 = bitcast %struct.redisCallbackList* %391 to i64*, !dbg !1341
  store i64 %397, i64* %398, align 8, !dbg !1341, !tbaa !622
  %399 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1342
  %400 = load %struct.redisCallback*, %struct.redisCallback** %399, align 8, !dbg !1342, !tbaa !642
  %401 = icmp eq %struct.redisCallback* %393, %400, !dbg !1343
  br i1 %401, label %402, label %403, !dbg !1344

; <label>:402:                                    ; preds = %395
  store %struct.redisCallback* null, %struct.redisCallback** %399, align 8, !dbg !1345, !tbaa !642
  br label %403, !dbg !1346

; <label>:403:                                    ; preds = %402, %395
  %404 = bitcast %struct.redisCallback* %393 to i8*, !dbg !1347
  call void @free(i8* %404) #8, !dbg !1348
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1332
  unreachable, !dbg !1332

; <label>:405:                                    ; preds = %387
  %406 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1350
  %407 = load i32, i32* %406, align 8, !dbg !1351, !tbaa !343
  %408 = or i32 %407, 4, !dbg !1351
  store i32 %408, i32* %406, align 8, !dbg !1351, !tbaa !343
  br label %409

; <label>:409:                                    ; preds = %390, %405
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1352
  br label %410, !dbg !1353

; <label>:410:                                    ; preds = %75, %78, %93, %409, %366, %142, %74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #5, !dbg !1354
  ret void, !dbg !1354
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @redisGetReply(%struct.redisContext*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncHandleRead(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1355 {
  %2 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1360
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1362
  %4 = load i32, i32* %3, align 8, !dbg !1362, !tbaa !343
  %5 = and i32 %4, 2, !dbg !1364
  %6 = icmp eq i32 %5, 0, !dbg !1364
  br i1 %6, label %7, label %56, !dbg !1365

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @redisCheckSocketError(%struct.redisContext* %2) #8, !dbg !1377
  %9 = icmp eq i32 %8, -1, !dbg !1379
  br i1 %9, label %10, label %44, !dbg !1380

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno() #8, !dbg !1381
  %12 = load i32, i32* %11, align 4, !dbg !1381, !tbaa !959
  %13 = icmp eq i32 %12, 119, !dbg !1384
  br i1 %13, label %52, label %14, !dbg !1385

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1386
  %16 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %15, align 8, !dbg !1386, !tbaa !546
  %17 = icmp eq void (%struct.redisAsyncContext*, i32)* %16, null, !dbg !1388
  br i1 %17, label %19, label %18, !dbg !1389

; <label>:18:                                     ; preds = %14
  tail call void %16(%struct.redisAsyncContext* nonnull %0, i32 -1) #8, !dbg !1390
  br label %19, !dbg !1390

; <label>:19:                                     ; preds = %18, %14
  %20 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1396
  %21 = load i32, i32* %20, align 8, !dbg !1396, !tbaa !306
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1397
  store i32 %21, i32* %22, align 8, !dbg !1398, !tbaa !316
  %23 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1399
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1400
  store i8* %23, i8** %24, align 8, !dbg !1401, !tbaa !324
  %25 = icmp eq i32 %21, 0, !dbg !1402
  br i1 %25, label %26, label %41, !dbg !1403

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1404
  %28 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %27, i64 0, i32 0, !dbg !1408
  %29 = load %struct.redisCallback*, %struct.redisCallback** %28, align 8, !dbg !1408, !tbaa !622
  %30 = icmp eq %struct.redisCallback* %29, null, !dbg !1410
  br i1 %30, label %51, label %31, !dbg !1411

; <label>:31:                                     ; preds = %26
  %32 = bitcast %struct.redisCallback* %29 to i64*, !dbg !1412
  %33 = load i64, i64* %32, align 8, !dbg !1412, !tbaa !637
  %34 = bitcast %struct.redisCallbackList* %27 to i64*, !dbg !1413
  store i64 %33, i64* %34, align 8, !dbg !1413, !tbaa !622
  %35 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1414
  %36 = load %struct.redisCallback*, %struct.redisCallback** %35, align 8, !dbg !1414, !tbaa !642
  %37 = icmp eq %struct.redisCallback* %29, %36, !dbg !1415
  br i1 %37, label %38, label %39, !dbg !1416

; <label>:38:                                     ; preds = %31
  store %struct.redisCallback* null, %struct.redisCallback** %35, align 8, !dbg !1417, !tbaa !642
  br label %39, !dbg !1418

; <label>:39:                                     ; preds = %38, %31
  %40 = bitcast %struct.redisCallback* %29 to i8*, !dbg !1419
  tail call void @free(i8* %40) #8, !dbg !1420
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1404
  unreachable, !dbg !1404

; <label>:41:                                     ; preds = %19
  %42 = load i32, i32* %3, align 8, !dbg !1422, !tbaa !343
  %43 = or i32 %42, 4, !dbg !1422
  store i32 %43, i32* %3, align 8, !dbg !1422, !tbaa !343
  br label %51

; <label>:44:                                     ; preds = %7
  %45 = load i32, i32* %3, align 8, !dbg !1423, !tbaa !343
  %46 = or i32 %45, 2, !dbg !1423
  store i32 %46, i32* %3, align 8, !dbg !1423, !tbaa !343
  %47 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1424
  %48 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %47, align 8, !dbg !1424, !tbaa !546
  %49 = icmp eq void (%struct.redisAsyncContext*, i32)* %48, null, !dbg !1426
  br i1 %49, label %52, label %50, !dbg !1427

; <label>:50:                                     ; preds = %44
  tail call void %48(%struct.redisAsyncContext* nonnull %0, i32 0) #8, !dbg !1428
  br label %52, !dbg !1428

; <label>:51:                                     ; preds = %41, %26
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1429
  br label %93, !dbg !1430

; <label>:52:                                     ; preds = %10, %44, %50
  %53 = load i32, i32* %3, align 8, !dbg !1431, !tbaa !343
  %54 = and i32 %53, 2, !dbg !1433
  %55 = icmp eq i32 %54, 0, !dbg !1433
  br i1 %55, label %93, label %56, !dbg !1434

; <label>:56:                                     ; preds = %52, %1
  %57 = tail call i32 @redisBufferRead(%struct.redisContext* %2) #8, !dbg !1435
  %58 = icmp eq i32 %57, -1, !dbg !1437
  br i1 %58, label %59, label %85, !dbg !1438

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1445
  %61 = load i32, i32* %60, align 8, !dbg !1445, !tbaa !306
  %62 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1446
  store i32 %61, i32* %62, align 8, !dbg !1447, !tbaa !316
  %63 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1448
  %64 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1449
  store i8* %63, i8** %64, align 8, !dbg !1450, !tbaa !324
  %65 = icmp eq i32 %61, 0, !dbg !1451
  br i1 %65, label %66, label %81, !dbg !1452

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1453
  %68 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %67, i64 0, i32 0, !dbg !1457
  %69 = load %struct.redisCallback*, %struct.redisCallback** %68, align 8, !dbg !1457, !tbaa !622
  %70 = icmp eq %struct.redisCallback* %69, null, !dbg !1459
  br i1 %70, label %84, label %71, !dbg !1460

; <label>:71:                                     ; preds = %66
  %72 = bitcast %struct.redisCallback* %69 to i64*, !dbg !1461
  %73 = load i64, i64* %72, align 8, !dbg !1461, !tbaa !637
  %74 = bitcast %struct.redisCallbackList* %67 to i64*, !dbg !1462
  store i64 %73, i64* %74, align 8, !dbg !1462, !tbaa !622
  %75 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1463
  %76 = load %struct.redisCallback*, %struct.redisCallback** %75, align 8, !dbg !1463, !tbaa !642
  %77 = icmp eq %struct.redisCallback* %69, %76, !dbg !1464
  br i1 %77, label %78, label %79, !dbg !1465

; <label>:78:                                     ; preds = %71
  store %struct.redisCallback* null, %struct.redisCallback** %75, align 8, !dbg !1466, !tbaa !642
  br label %79, !dbg !1467

; <label>:79:                                     ; preds = %78, %71
  %80 = bitcast %struct.redisCallback* %69 to i8*, !dbg !1468
  tail call void @free(i8* %80) #8, !dbg !1469
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1453
  unreachable, !dbg !1453

; <label>:81:                                     ; preds = %59
  %82 = load i32, i32* %3, align 8, !dbg !1471, !tbaa !343
  %83 = or i32 %82, 4, !dbg !1471
  store i32 %83, i32* %3, align 8, !dbg !1471, !tbaa !343
  br label %84

; <label>:84:                                     ; preds = %66, %81
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1472
  br label %93, !dbg !1473

; <label>:85:                                     ; preds = %56
  %86 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1474
  %87 = load void (i8*)*, void (i8*)** %86, align 8, !dbg !1474, !tbaa !1478
  %88 = icmp eq void (i8*)* %87, null, !dbg !1474
  br i1 %88, label %92, label %89, !dbg !1479

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1474
  %91 = load i8*, i8** %90, align 8, !dbg !1474, !tbaa !352
  tail call void %87(i8* %91) #8, !dbg !1474
  br label %92, !dbg !1474

; <label>:92:                                     ; preds = %85, %89
  tail call void @redisProcessCallbacks(%struct.redisAsyncContext* nonnull %0) #9, !dbg !1480
  br label %93

; <label>:93:                                     ; preds = %51, %84, %92, %52
  ret void, !dbg !1481
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferRead(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @redisAsyncHandleWrite(%struct.redisAsyncContext*) local_unnamed_addr #0 !dbg !1482 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1488
  %4 = bitcast i32* %2 to i8*, !dbg !1490
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1490
  store i32 0, i32* %2, align 4, !dbg !1491, !tbaa !959
  %5 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1492
  %6 = load i32, i32* %5, align 8, !dbg !1492, !tbaa !343
  %7 = and i32 %6, 2, !dbg !1494
  %8 = icmp eq i32 %7, 0, !dbg !1494
  br i1 %8, label %9, label %58, !dbg !1495

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @redisCheckSocketError(%struct.redisContext* %3) #8, !dbg !1501
  %11 = icmp eq i32 %10, -1, !dbg !1502
  br i1 %11, label %12, label %46, !dbg !1503

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno() #8, !dbg !1504
  %14 = load i32, i32* %13, align 4, !dbg !1504, !tbaa !959
  %15 = icmp eq i32 %14, 119, !dbg !1505
  br i1 %15, label %54, label %16, !dbg !1506

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1507
  %18 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %17, align 8, !dbg !1507, !tbaa !546
  %19 = icmp eq void (%struct.redisAsyncContext*, i32)* %18, null, !dbg !1508
  br i1 %19, label %21, label %20, !dbg !1509

; <label>:20:                                     ; preds = %16
  tail call void %18(%struct.redisAsyncContext* nonnull %0, i32 -1) #8, !dbg !1510
  br label %21, !dbg !1510

; <label>:21:                                     ; preds = %20, %16
  %22 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1516
  %23 = load i32, i32* %22, align 8, !dbg !1516, !tbaa !306
  %24 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1517
  store i32 %23, i32* %24, align 8, !dbg !1518, !tbaa !316
  %25 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1519
  %26 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1520
  store i8* %25, i8** %26, align 8, !dbg !1521, !tbaa !324
  %27 = icmp eq i32 %23, 0, !dbg !1522
  br i1 %27, label %28, label %43, !dbg !1523

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1524
  %30 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %29, i64 0, i32 0, !dbg !1528
  %31 = load %struct.redisCallback*, %struct.redisCallback** %30, align 8, !dbg !1528, !tbaa !622
  %32 = icmp eq %struct.redisCallback* %31, null, !dbg !1530
  br i1 %32, label %53, label %33, !dbg !1531

; <label>:33:                                     ; preds = %28
  %34 = bitcast %struct.redisCallback* %31 to i64*, !dbg !1532
  %35 = load i64, i64* %34, align 8, !dbg !1532, !tbaa !637
  %36 = bitcast %struct.redisCallbackList* %29 to i64*, !dbg !1533
  store i64 %35, i64* %36, align 8, !dbg !1533, !tbaa !622
  %37 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1534
  %38 = load %struct.redisCallback*, %struct.redisCallback** %37, align 8, !dbg !1534, !tbaa !642
  %39 = icmp eq %struct.redisCallback* %31, %38, !dbg !1535
  br i1 %39, label %40, label %41, !dbg !1536

; <label>:40:                                     ; preds = %33
  store %struct.redisCallback* null, %struct.redisCallback** %37, align 8, !dbg !1537, !tbaa !642
  br label %41, !dbg !1538

; <label>:41:                                     ; preds = %40, %33
  %42 = bitcast %struct.redisCallback* %31 to i8*, !dbg !1539
  tail call void @free(i8* %42) #8, !dbg !1540
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1524
  unreachable, !dbg !1524

; <label>:43:                                     ; preds = %21
  %44 = load i32, i32* %5, align 8, !dbg !1542, !tbaa !343
  %45 = or i32 %44, 4, !dbg !1542
  store i32 %45, i32* %5, align 8, !dbg !1542, !tbaa !343
  br label %53

; <label>:46:                                     ; preds = %9
  %47 = load i32, i32* %5, align 8, !dbg !1543, !tbaa !343
  %48 = or i32 %47, 2, !dbg !1543
  store i32 %48, i32* %5, align 8, !dbg !1543, !tbaa !343
  %49 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 6, !dbg !1544
  %50 = load void (%struct.redisAsyncContext*, i32)*, void (%struct.redisAsyncContext*, i32)** %49, align 8, !dbg !1544, !tbaa !546
  %51 = icmp eq void (%struct.redisAsyncContext*, i32)* %50, null, !dbg !1545
  br i1 %51, label %54, label %52, !dbg !1546

; <label>:52:                                     ; preds = %46
  tail call void %50(%struct.redisAsyncContext* nonnull %0, i32 0) #8, !dbg !1547
  br label %54, !dbg !1547

; <label>:53:                                     ; preds = %43, %28
  tail call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1548
  br label %112, !dbg !1549

; <label>:54:                                     ; preds = %12, %46, %52
  %55 = load i32, i32* %5, align 8, !dbg !1550, !tbaa !343
  %56 = and i32 %55, 2, !dbg !1552
  %57 = icmp eq i32 %56, 0, !dbg !1552
  br i1 %57, label %112, label %58, !dbg !1553

; <label>:58:                                     ; preds = %54, %1
  %59 = call i32 @redisBufferWrite(%struct.redisContext* %3, i32* nonnull %2) #8, !dbg !1554
  %60 = icmp eq i32 %59, -1, !dbg !1556
  br i1 %60, label %61, label %87, !dbg !1557

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 0, !dbg !1564
  %63 = load i32, i32* %62, align 8, !dbg !1564, !tbaa !306
  %64 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 1, !dbg !1565
  store i32 %63, i32* %64, align 8, !dbg !1566, !tbaa !316
  %65 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 1, i64 0, !dbg !1567
  %66 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 2, !dbg !1568
  store i8* %65, i8** %66, align 8, !dbg !1569, !tbaa !324
  %67 = icmp eq i32 %63, 0, !dbg !1570
  br i1 %67, label %68, label %83, !dbg !1571

; <label>:68:                                     ; preds = %61
  %69 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1572
  %70 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %69, i64 0, i32 0, !dbg !1576
  %71 = load %struct.redisCallback*, %struct.redisCallback** %70, align 8, !dbg !1576, !tbaa !622
  %72 = icmp eq %struct.redisCallback* %71, null, !dbg !1578
  br i1 %72, label %86, label %73, !dbg !1579

; <label>:73:                                     ; preds = %68
  %74 = bitcast %struct.redisCallback* %71 to i64*, !dbg !1580
  %75 = load i64, i64* %74, align 8, !dbg !1580, !tbaa !637
  %76 = bitcast %struct.redisCallbackList* %69 to i64*, !dbg !1581
  store i64 %75, i64* %76, align 8, !dbg !1581, !tbaa !622
  %77 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1582
  %78 = load %struct.redisCallback*, %struct.redisCallback** %77, align 8, !dbg !1582, !tbaa !642
  %79 = icmp eq %struct.redisCallback* %71, %78, !dbg !1583
  br i1 %79, label %80, label %81, !dbg !1584

; <label>:80:                                     ; preds = %73
  store %struct.redisCallback* null, %struct.redisCallback** %77, align 8, !dbg !1585, !tbaa !642
  br label %81, !dbg !1586

; <label>:81:                                     ; preds = %80, %73
  %82 = bitcast %struct.redisCallback* %71 to i8*, !dbg !1587
  call void @free(i8* %82) #8, !dbg !1588
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.__redisAsyncDisconnect, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1572
  unreachable, !dbg !1572

; <label>:83:                                     ; preds = %61
  %84 = load i32, i32* %5, align 8, !dbg !1590, !tbaa !343
  %85 = or i32 %84, 4, !dbg !1590
  store i32 %85, i32* %5, align 8, !dbg !1590, !tbaa !343
  br label %86

; <label>:86:                                     ; preds = %68, %83
  call fastcc void @__redisAsyncFree(%struct.redisAsyncContext* nonnull %0) #8, !dbg !1591
  br label %112, !dbg !1592

; <label>:87:                                     ; preds = %58
  %88 = load i32, i32* %2, align 4, !dbg !1593, !tbaa !959
  %89 = icmp eq i32 %88, 0, !dbg !1593
  %90 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, !dbg !1596
  br i1 %89, label %91, label %98, !dbg !1599

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !1600
  %93 = load void (i8*)*, void (i8*)** %92, align 8, !dbg !1600, !tbaa !554
  %94 = icmp eq void (i8*)* %93, null, !dbg !1600
  br i1 %94, label %105, label %95, !dbg !1601

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %90, i64 0, i32 0, !dbg !1600
  %97 = load i8*, i8** %96, align 8, !dbg !1600, !tbaa !352
  call void %93(i8* %97) #8, !dbg !1600
  br label %105, !dbg !1600

; <label>:98:                                     ; preds = %87
  %99 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 4, !dbg !1602
  %100 = load void (i8*)*, void (i8*)** %99, align 8, !dbg !1602, !tbaa !1605
  %101 = icmp eq void (i8*)* %100, null, !dbg !1602
  br i1 %101, label %105, label %102, !dbg !1606

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %90, i64 0, i32 0, !dbg !1602
  %104 = load i8*, i8** %103, align 8, !dbg !1602, !tbaa !352
  call void %100(i8* %104) #8, !dbg !1602
  br label %105, !dbg !1602

; <label>:105:                                    ; preds = %98, %91, %95, %102
  %106 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 1, !dbg !1607
  %107 = load void (i8*)*, void (i8*)** %106, align 8, !dbg !1607, !tbaa !1478
  %108 = icmp eq void (i8*)* %107, null, !dbg !1607
  br i1 %108, label %112, label %109, !dbg !1610

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %90, i64 0, i32 0, !dbg !1607
  %111 = load i8*, i8** %110, align 8, !dbg !1607, !tbaa !352
  call void %107(i8* %111) #8, !dbg !1607
  br label %112, !dbg !1607

; <label>:112:                                    ; preds = %53, %86, %109, %105, %54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5, !dbg !1611
  ret void, !dbg !1611
}

; Function Attrs: noredzone
declare dso_local i32 @redisBufferWrite(%struct.redisContext*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisvAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1612 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*, !dbg !1636
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1636
  %8 = call i32 @redisvFormatCommand(i8** nonnull %6, i8* %3, %struct.__va_list_tag* %4) #8, !dbg !1638
  %9 = icmp slt i32 %8, 0, !dbg !1640
  br i1 %9, label %15, label %10, !dbg !1642

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %6, align 8, !dbg !1643, !tbaa !348
  %12 = sext i32 %8 to i64, !dbg !1644
  %13 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %11, i64 %12) #9, !dbg !1645
  %14 = load i8*, i8** %6, align 8, !dbg !1647, !tbaa !348
  call void @free(i8* %14) #8, !dbg !1648
  br label %15, !dbg !1649

; <label>:15:                                     ; preds = %5, %10
  %16 = phi i32 [ %13, %10 ], [ -1, %5 ], !dbg !1650
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1651
  ret i32 %16, !dbg !1651
}

; Function Attrs: noredzone
declare dso_local i32 @redisvFormatCommand(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) unnamed_addr #0 !dbg !1652 {
  %6 = alloca %struct.redisCallback, align 8
  %7 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, !dbg !1679
  %8 = bitcast %struct.redisCallback* %6 to i8*, !dbg !1681
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #5, !dbg !1681
  %9 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 0, i32 3, !dbg !1682
  %10 = load i32, i32* %9, align 8, !dbg !1682, !tbaa !343
  %11 = and i32 %10, 12, !dbg !1684
  %12 = icmp eq i32 %11, 0, !dbg !1684
  br i1 %12, label %13, label %169, !dbg !1685

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 1, !dbg !1686
  store void (%struct.redisAsyncContext*, i8*, i8*)* %1, void (%struct.redisAsyncContext*, i8*, i8*)** %14, align 8, !dbg !1687, !tbaa !665
  %15 = getelementptr inbounds %struct.redisCallback, %struct.redisCallback* %6, i64 0, i32 2, !dbg !1688
  store i8* %2, i8** %15, align 8, !dbg !1689, !tbaa !672
  %16 = load i8, i8* %3, align 1, !dbg !1703, !tbaa !943
  %17 = icmp eq i8 %16, 36, !dbg !1705
  br i1 %17, label %21, label %18, !dbg !1706

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @strchr(i8* nonnull %3, i32 36) #8, !dbg !1707
  %20 = icmp eq i8* %19, null, !dbg !1709
  br i1 %20, label %28, label %21, !dbg !1711

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i8* [ %19, %18 ], [ %3, %13 ], !dbg !1712
  %23 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1713
  %24 = tail call i64 @strtol(i8* nonnull %23, i8** null, i32 10) #8, !dbg !1714
  %25 = tail call i8* @strchr(i8* nonnull %22, i32 13) #8, !dbg !1715
  %26 = icmp eq i8* %25, null, !dbg !1716
  br i1 %26, label %27, label %29, !dbg !1716

; <label>:27:                                     ; preds = %21
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1716
  unreachable, !dbg !1716

; <label>:28:                                     ; preds = %18
  tail call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.__redisAsyncCommand, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !1718
  unreachable, !dbg !1718

; <label>:29:                                     ; preds = %21
  %30 = shl i64 %24, 32, !dbg !1719
  %31 = ashr exact i64 %30, 32, !dbg !1719
  %32 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !1720
  %33 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !1721
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !1722
  %35 = load i8, i8* %34, align 1, !dbg !1723, !tbaa !943
  %36 = icmp eq i8 %35, 36, !dbg !1724
  %37 = load i8, i8* %32, align 1, !dbg !1726, !tbaa !943
  %38 = tail call i8* @__locale_ctype_ptr() #8, !dbg !1726
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1726
  %40 = sext i8 %37 to i32, !dbg !1726
  %41 = sext i8 %37 to i64, !dbg !1726
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !1726
  %43 = load i8, i8* %42, align 1, !dbg !1726, !tbaa !943
  %44 = and i8 %43, 3, !dbg !1726
  %45 = icmp eq i8 %44, 1, !dbg !1726
  %46 = add nsw i32 %40, 32, !dbg !1726
  %47 = select i1 %45, i32 %46, i32 %40, !dbg !1726
  %48 = icmp eq i32 %47, 112, !dbg !1727
  %49 = zext i1 %48 to i64, !dbg !1728
  %50 = getelementptr inbounds i8, i8* %32, i64 %49, !dbg !1728
  br i1 %36, label %51, label %86, !dbg !1730

; <label>:51:                                     ; preds = %29
  %52 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11) #11, !dbg !1732
  %53 = icmp eq i32 %52, 0, !dbg !1733
  br i1 %53, label %54, label %86, !dbg !1734

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %9, align 8, !dbg !1735, !tbaa !343
  %56 = or i32 %55, 32, !dbg !1735
  store i32 %56, i32* %9, align 8, !dbg !1735, !tbaa !343
  %57 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 2
  %58 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 1
  %59 = select i1 %48, %struct.dict** %57, %struct.dict** %58
  br label %60, !dbg !1737

; <label>:60:                                     ; preds = %85, %54
  %61 = phi i8* [ %34, %54 ], [ %79, %85 ], !dbg !1738
  %62 = load i8, i8* %61, align 1, !dbg !1742, !tbaa !943
  %63 = icmp eq i8 %62, 36, !dbg !1743
  br i1 %63, label %67, label %64, !dbg !1744

; <label>:64:                                     ; preds = %60
  %65 = call i8* @strchr(i8* nonnull %61, i32 36) #8, !dbg !1745
  %66 = icmp eq i8* %65, null, !dbg !1746
  br i1 %66, label %161, label %67, !dbg !1747

; <label>:67:                                     ; preds = %64, %60
  %68 = phi i8* [ %65, %64 ], [ %61, %60 ], !dbg !1748
  %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1749
  %70 = call i64 @strtol(i8* nonnull %69, i8** null, i32 10) #8, !dbg !1750
  %71 = shl i64 %70, 32, !dbg !1751
  %72 = ashr exact i64 %71, 32, !dbg !1751
  %73 = call i8* @strchr(i8* nonnull %68, i32 13) #8, !dbg !1752
  %74 = icmp eq i8* %73, null, !dbg !1753
  br i1 %74, label %75, label %76, !dbg !1753

; <label>:75:                                     ; preds = %67
  call void @__assert_func(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 575, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.nextArgument, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !1753
  unreachable, !dbg !1753

; <label>:76:                                     ; preds = %67
  %77 = getelementptr inbounds i8, i8* %73, i64 2, !dbg !1754
  %78 = getelementptr inbounds i8, i8* %73, i64 4, !dbg !1755
  %79 = getelementptr inbounds i8, i8* %78, i64 %72, !dbg !1756
  %80 = call i8* @sdsnewlen(i8* nonnull %77, i64 %72) #8, !dbg !1759
  %81 = load %struct.dict*, %struct.dict** %59, align 8, !dbg !1763, !tbaa !348
  %82 = call fastcc i32 @dictReplace(%struct.dict* %81, i8* %80, i8* nonnull %8) #9, !dbg !1763
  %83 = icmp eq i32 %82, 0, !dbg !1765
  br i1 %83, label %84, label %85, !dbg !1767

; <label>:84:                                     ; preds = %76
  call void @sdsfree(i8* %80) #8, !dbg !1768
  br label %85, !dbg !1768

; <label>:85:                                     ; preds = %84, %76
  br label %60, !dbg !1717, !llvm.loop !1769

; <label>:86:                                     ; preds = %51, %29
  %87 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 13) #11, !dbg !1771
  %88 = icmp eq i32 %87, 0, !dbg !1773
  br i1 %88, label %89, label %93, !dbg !1774

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %9, align 8, !dbg !1775, !tbaa !343
  %91 = and i32 %90, 32, !dbg !1778
  %92 = icmp eq i32 %91, 0, !dbg !1778
  br i1 %92, label %169, label %161, !dbg !1779

; <label>:93:                                     ; preds = %86
  %94 = tail call i32 @strncasecmp(i8* nonnull %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 9) #11, !dbg !1780
  %95 = icmp eq i32 %94, 0, !dbg !1782
  %96 = load i32, i32* %9, align 8, !dbg !1783, !tbaa !343
  br i1 %95, label %97, label %118, !dbg !1786

; <label>:97:                                     ; preds = %93
  %98 = or i32 %96, 64, !dbg !1787
  store i32 %98, i32* %9, align 8, !dbg !1787, !tbaa !343
  %99 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1789
  %100 = tail call i8* @malloc(i64 24) #8, !dbg !1794
  %101 = icmp eq i8* %100, null, !dbg !1796
  br i1 %101, label %161, label %102, !dbg !1797

; <label>:102:                                    ; preds = %97
  %103 = call i8* @memcpy(i8* nonnull %100, i8* nonnull %8, i64 24) #8, !dbg !1798
  %104 = bitcast i8* %100 to %struct.redisCallback**, !dbg !1799
  store %struct.redisCallback* null, %struct.redisCallback** %104, align 8, !dbg !1800, !tbaa !637
  %105 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %99, i64 0, i32 0, !dbg !1801
  %106 = load %struct.redisCallback*, %struct.redisCallback** %105, align 8, !dbg !1801, !tbaa !622
  %107 = icmp eq %struct.redisCallback* %106, null, !dbg !1802
  br i1 %107, label %108, label %110, !dbg !1803

; <label>:108:                                    ; preds = %102
  %109 = bitcast %struct.redisCallbackList* %99 to i8**, !dbg !1804
  store i8* %100, i8** %109, align 8, !dbg !1804, !tbaa !622
  br label %110, !dbg !1805

; <label>:110:                                    ; preds = %108, %102
  %111 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1806
  %112 = load %struct.redisCallback*, %struct.redisCallback** %111, align 8, !dbg !1806, !tbaa !642
  %113 = icmp eq %struct.redisCallback* %112, null, !dbg !1807
  br i1 %113, label %116, label %114, !dbg !1808

; <label>:114:                                    ; preds = %110
  %115 = bitcast %struct.redisCallback* %112 to i8**, !dbg !1809
  store i8* %100, i8** %115, align 8, !dbg !1809, !tbaa !637
  br label %116, !dbg !1810

; <label>:116:                                    ; preds = %114, %110
  %117 = bitcast %struct.redisCallback** %111 to i8**, !dbg !1811
  store i8* %100, i8** %117, align 8, !dbg !1811, !tbaa !642
  br label %161, !dbg !1812

; <label>:118:                                    ; preds = %93
  %119 = and i32 %96, 32, !dbg !1813
  %120 = icmp eq i32 %119, 0, !dbg !1813
  br i1 %120, label %141, label %121, !dbg !1814

; <label>:121:                                    ; preds = %118
  %122 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, !dbg !1815
  %123 = tail call i8* @malloc(i64 24) #8, !dbg !1819
  %124 = icmp eq i8* %123, null, !dbg !1821
  br i1 %124, label %161, label %125, !dbg !1822

; <label>:125:                                    ; preds = %121
  %126 = call i8* @memcpy(i8* nonnull %123, i8* nonnull %8, i64 24) #8, !dbg !1823
  %127 = bitcast i8* %123 to %struct.redisCallback**, !dbg !1824
  store %struct.redisCallback* null, %struct.redisCallback** %127, align 8, !dbg !1825, !tbaa !637
  %128 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %122, i64 0, i32 0, !dbg !1826
  %129 = load %struct.redisCallback*, %struct.redisCallback** %128, align 8, !dbg !1826, !tbaa !622
  %130 = icmp eq %struct.redisCallback* %129, null, !dbg !1827
  br i1 %130, label %131, label %133, !dbg !1828

; <label>:131:                                    ; preds = %125
  %132 = bitcast %struct.redisCallbackList* %122 to i8**, !dbg !1829
  store i8* %123, i8** %132, align 8, !dbg !1829, !tbaa !622
  br label %133, !dbg !1830

; <label>:133:                                    ; preds = %131, %125
  %134 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 8, i32 0, i32 1, !dbg !1831
  %135 = load %struct.redisCallback*, %struct.redisCallback** %134, align 8, !dbg !1831, !tbaa !642
  %136 = icmp eq %struct.redisCallback* %135, null, !dbg !1832
  br i1 %136, label %139, label %137, !dbg !1833

; <label>:137:                                    ; preds = %133
  %138 = bitcast %struct.redisCallback* %135 to i8**, !dbg !1834
  store i8* %123, i8** %138, align 8, !dbg !1834, !tbaa !637
  br label %139, !dbg !1835

; <label>:139:                                    ; preds = %137, %133
  %140 = bitcast %struct.redisCallback** %134 to i8**, !dbg !1836
  store i8* %123, i8** %140, align 8, !dbg !1836, !tbaa !642
  br label %161, !dbg !1837

; <label>:141:                                    ; preds = %118
  %142 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, !dbg !1838
  %143 = tail call i8* @malloc(i64 24) #8, !dbg !1842
  %144 = icmp eq i8* %143, null, !dbg !1844
  br i1 %144, label %161, label %145, !dbg !1845

; <label>:145:                                    ; preds = %141
  %146 = call i8* @memcpy(i8* nonnull %143, i8* nonnull %8, i64 24) #8, !dbg !1846
  %147 = bitcast i8* %143 to %struct.redisCallback**, !dbg !1847
  store %struct.redisCallback* null, %struct.redisCallback** %147, align 8, !dbg !1848, !tbaa !637
  %148 = getelementptr inbounds %struct.redisCallbackList, %struct.redisCallbackList* %142, i64 0, i32 0, !dbg !1849
  %149 = load %struct.redisCallback*, %struct.redisCallback** %148, align 8, !dbg !1849, !tbaa !622
  %150 = icmp eq %struct.redisCallback* %149, null, !dbg !1850
  br i1 %150, label %151, label %153, !dbg !1851

; <label>:151:                                    ; preds = %145
  %152 = bitcast %struct.redisCallbackList* %142 to i8**, !dbg !1852
  store i8* %143, i8** %152, align 8, !dbg !1852, !tbaa !622
  br label %153, !dbg !1853

; <label>:153:                                    ; preds = %151, %145
  %154 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 7, i32 1, !dbg !1854
  %155 = load %struct.redisCallback*, %struct.redisCallback** %154, align 8, !dbg !1854, !tbaa !642
  %156 = icmp eq %struct.redisCallback* %155, null, !dbg !1855
  br i1 %156, label %159, label %157, !dbg !1856

; <label>:157:                                    ; preds = %153
  %158 = bitcast %struct.redisCallback* %155 to i8**, !dbg !1857
  store i8* %143, i8** %158, align 8, !dbg !1857, !tbaa !637
  br label %159, !dbg !1858

; <label>:159:                                    ; preds = %157, %153
  %160 = bitcast %struct.redisCallback** %154 to i8**, !dbg !1859
  store i8* %143, i8** %160, align 8, !dbg !1859, !tbaa !642
  br label %161, !dbg !1860

; <label>:161:                                    ; preds = %64, %159, %141, %139, %121, %116, %97, %89
  %162 = call i32 @__redisAppendCommand(%struct.redisContext* nonnull %7, i8* %3, i64 %4) #8, !dbg !1861
  %163 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 3, !dbg !1862
  %164 = load void (i8*)*, void (i8*)** %163, align 8, !dbg !1862, !tbaa !554
  %165 = icmp eq void (i8*)* %164, null, !dbg !1862
  br i1 %165, label %169, label %166, !dbg !1865

; <label>:166:                                    ; preds = %161
  %167 = getelementptr inbounds %struct.redisAsyncContext, %struct.redisAsyncContext* %0, i64 0, i32 4, i32 0, !dbg !1862
  %168 = load i8*, i8** %167, align 8, !dbg !1862, !tbaa !352
  call void %164(i8* %168) #8, !dbg !1862
  br label %169, !dbg !1862

; <label>:169:                                    ; preds = %166, %161, %89, %5
  %170 = phi i32 [ -1, %5 ], [ -1, %89 ], [ 0, %161 ], [ 0, %166 ], !dbg !1866
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #5, !dbg !1867
  ret i32 %170, !dbg !1867
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, ...) local_unnamed_addr #0 !dbg !1868 {
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*, !dbg !1890
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #5, !dbg !1890
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, !dbg !1892
  call void @llvm.va_start(i8* nonnull %7), !dbg !1892
  %9 = bitcast i8** %5 to i8*, !dbg !1899
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !1899
  %10 = call i32 @redisvFormatCommand(i8** nonnull %5, i8* %3, %struct.__va_list_tag* nonnull %8) #8, !dbg !1901
  %11 = icmp slt i32 %10, 0, !dbg !1903
  br i1 %11, label %17, label %12, !dbg !1904

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %5, align 8, !dbg !1905, !tbaa !348
  %14 = sext i32 %10 to i64, !dbg !1906
  %15 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %13, i64 %14) #8, !dbg !1907
  %16 = load i8*, i8** %5, align 8, !dbg !1909, !tbaa !348
  call void @free(i8* %16) #8, !dbg !1910
  br label %17, !dbg !1911

; <label>:17:                                     ; preds = %4, %12
  %18 = phi i32 [ %15, %12 ], [ -1, %4 ], !dbg !1912
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !1913
  call void @llvm.va_end(i8* nonnull %7), !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #5, !dbg !1916
  ret i32 %18, !dbg !1917
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncCommandArgv(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i32, i8**, i64*) local_unnamed_addr #0 !dbg !1918 {
  %7 = alloca i8*, align 8
  %8 = bitcast i8** %7 to i8*, !dbg !1939
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1939
  %9 = call i32 @redisFormatSdsCommandArgv(i8** nonnull %7, i32 %3, i8** %4, i64* %5) #8, !dbg !1941
  %10 = load i8*, i8** %7, align 8, !dbg !1943, !tbaa !348
  %11 = sext i32 %9 to i64, !dbg !1944
  %12 = call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %10, i64 %11) #9, !dbg !1945
  %13 = load i8*, i8** %7, align 8, !dbg !1947, !tbaa !348
  call void @sdsfree(i8* %13) #8, !dbg !1948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #5, !dbg !1949
  ret i32 %12, !dbg !1950
}

; Function Attrs: noredzone
declare dso_local i32 @redisFormatSdsCommandArgv(i8**, i32, i8**, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redisAsyncFormattedCommand(%struct.redisAsyncContext*, void (%struct.redisAsyncContext*, i8*, i8*)*, i8*, i8*, i64) local_unnamed_addr #0 !dbg !1951 {
  %6 = tail call fastcc i32 @__redisAsyncCommand(%struct.redisAsyncContext* %0, void (%struct.redisAsyncContext*, i8*, i8*)* %1, i8* %2, i8* %3, i64 %4) #9, !dbg !1964
  ret i32 %6, !dbg !1966
}

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define internal i32 @callbackHash(i8* nocapture readonly) #6 !dbg !1967 {
  %2 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1973
  %3 = load i8, i8* %2, align 1, !dbg !1973, !tbaa !943
  %4 = trunc i8 %3 to i3, !dbg !1975
  switch i3 %4, label %78 [
    i3 0, label %5
    i3 1, label %8
    i3 2, label %12
    i3 3, label %17
    i3 -4, label %22
  ], !dbg !1975

; <label>:5:                                      ; preds = %1
  %6 = lshr i8 %3, 3, !dbg !1976
  %7 = zext i8 %6 to i64, !dbg !1976
  br label %26, !dbg !1977

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !1978
  %10 = load i8, i8* %9, align 1, !dbg !1979, !tbaa !943
  %11 = zext i8 %10 to i64, !dbg !1978
  br label %26, !dbg !1980

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !1981
  %14 = bitcast i8* %13 to i16*, !dbg !1982
  %15 = load i16, i16* %14, align 1, !dbg !1982, !tbaa !954
  %16 = zext i16 %15 to i64, !dbg !1981
  br label %26, !dbg !1983

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !1984
  %19 = bitcast i8* %18 to i32*, !dbg !1985
  %20 = load i32, i32* %19, align 1, !dbg !1985, !tbaa !959
  %21 = zext i32 %20 to i64, !dbg !1984
  br label %26, !dbg !1986

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !1987
  %24 = bitcast i8* %23 to i64*, !dbg !1988
  %25 = load i64, i64* %24, align 1, !dbg !1988, !tbaa !406
  br label %26, !dbg !1989

; <label>:26:                                     ; preds = %5, %8, %12, %17, %22
  %27 = phi i64 [ %25, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %7, %5 ], !dbg !1990
  %28 = trunc i64 %27 to i32, !dbg !1991
  %29 = icmp eq i32 %28, 0, !dbg !2003
  br i1 %29, label %78, label %30, !dbg !2003

; <label>:30:                                     ; preds = %26
  %31 = add i32 %28, -1, !dbg !2004
  %32 = and i32 %28, 3, !dbg !2004
  %33 = icmp ult i32 %31, 3, !dbg !2004
  br i1 %33, label %62, label %34, !dbg !2004

; <label>:34:                                     ; preds = %30
  %35 = sub i32 %28, %32, !dbg !2004
  br label %36, !dbg !2004

; <label>:36:                                     ; preds = %36, %34
  %37 = phi i32 [ 5381, %34 ], [ %59, %36 ]
  %38 = phi i8* [ %0, %34 ], [ %56, %36 ]
  %39 = phi i32 [ %35, %34 ], [ %60, %36 ]
  %40 = mul i32 %37, 33, !dbg !2005
  %41 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !2006
  %42 = load i8, i8* %38, align 1, !dbg !2007, !tbaa !943
  %43 = zext i8 %42 to i32, !dbg !2008
  %44 = add i32 %40, %43, !dbg !2009
  %45 = mul i32 %44, 33, !dbg !2005
  %46 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !2006
  %47 = load i8, i8* %41, align 1, !dbg !2007, !tbaa !943
  %48 = zext i8 %47 to i32, !dbg !2008
  %49 = add i32 %45, %48, !dbg !2009
  %50 = mul i32 %49, 33, !dbg !2005
  %51 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !2006
  %52 = load i8, i8* %46, align 1, !dbg !2007, !tbaa !943
  %53 = zext i8 %52 to i32, !dbg !2008
  %54 = add i32 %50, %53, !dbg !2009
  %55 = mul i32 %54, 33, !dbg !2005
  %56 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !2006
  %57 = load i8, i8* %51, align 1, !dbg !2007, !tbaa !943
  %58 = zext i8 %57 to i32, !dbg !2008
  %59 = add i32 %55, %58, !dbg !2009
  %60 = add i32 %39, -4, !dbg !2003
  %61 = icmp eq i32 %60, 0, !dbg !2003
  br i1 %61, label %62, label %36, !dbg !2003, !llvm.loop !2010

; <label>:62:                                     ; preds = %36, %30
  %63 = phi i32 [ undef, %30 ], [ %59, %36 ]
  %64 = phi i32 [ 5381, %30 ], [ %59, %36 ]
  %65 = phi i8* [ %0, %30 ], [ %56, %36 ]
  %66 = icmp eq i32 %32, 0, !dbg !2003
  br i1 %66, label %78, label %67, !dbg !2003

; <label>:67:                                     ; preds = %62, %67
  %68 = phi i32 [ %75, %67 ], [ %64, %62 ]
  %69 = phi i8* [ %72, %67 ], [ %65, %62 ]
  %70 = phi i32 [ %76, %67 ], [ %32, %62 ]
  %71 = mul i32 %68, 33, !dbg !2005
  %72 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !2006
  %73 = load i8, i8* %69, align 1, !dbg !2007, !tbaa !943
  %74 = zext i8 %73 to i32, !dbg !2008
  %75 = add i32 %71, %74, !dbg !2009
  %76 = add i32 %70, -1, !dbg !2003
  %77 = icmp eq i32 %76, 0, !dbg !2003
  br i1 %77, label %78, label %67, !dbg !2003, !llvm.loop !2013

; <label>:78:                                     ; preds = %62, %67, %1, %26
  %79 = phi i32 [ 5381, %26 ], [ 5381, %1 ], [ %63, %62 ], [ %75, %67 ], !dbg !2015
  ret i32 %79, !dbg !2016
}

; Function Attrs: noredzone nounwind
define internal i8* @callbackValDup(i8* nocapture readnone, i8*) #0 !dbg !2017 {
  %3 = tail call i8* @malloc(i64 24) #8, !dbg !2024
  %4 = tail call i8* @memcpy(i8* %3, i8* %1, i64 24) #8, !dbg !2026
  ret i8* %3, !dbg !2027
}

; Function Attrs: noredzone nounwind
define internal i32 @callbackKeyCompare(i8* nocapture readnone, i8*, i8*) #0 !dbg !2028 {
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2040
  %5 = load i8, i8* %4, align 1, !dbg !2040, !tbaa !943
  %6 = trunc i8 %5 to i3, !dbg !2042
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2042

; <label>:7:                                      ; preds = %3
  %8 = lshr i8 %5, 3, !dbg !2043
  %9 = zext i8 %8 to i64, !dbg !2043
  br label %28, !dbg !2044

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2045
  %12 = load i8, i8* %11, align 1, !dbg !2046, !tbaa !943
  %13 = zext i8 %12 to i64, !dbg !2045
  br label %28, !dbg !2047

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2048
  %16 = bitcast i8* %15 to i16*, !dbg !2049
  %17 = load i16, i16* %16, align 1, !dbg !2049, !tbaa !954
  %18 = zext i16 %17 to i64, !dbg !2048
  br label %28, !dbg !2050

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2051
  %21 = bitcast i8* %20 to i32*, !dbg !2052
  %22 = load i32, i32* %21, align 1, !dbg !2052, !tbaa !959
  %23 = zext i32 %22 to i64, !dbg !2051
  br label %28, !dbg !2053

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2054
  %26 = bitcast i8* %25 to i64*, !dbg !2055
  %27 = load i64, i64* %26, align 1, !dbg !2055, !tbaa !406
  br label %28, !dbg !2056

; <label>:28:                                     ; preds = %3, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %3 ], !dbg !2057
  %30 = trunc i64 %29 to i32, !dbg !2058
  %31 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !2062
  %32 = load i8, i8* %31, align 1, !dbg !2062, !tbaa !943
  %33 = trunc i8 %32 to i3, !dbg !2064
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !2064

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !2065
  %36 = zext i8 %35 to i64, !dbg !2065
  br label %55, !dbg !2066

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !2067
  %39 = load i8, i8* %38, align 1, !dbg !2068, !tbaa !943
  %40 = zext i8 %39 to i64, !dbg !2067
  br label %55, !dbg !2069

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !2070
  %43 = bitcast i8* %42 to i16*, !dbg !2071
  %44 = load i16, i16* %43, align 1, !dbg !2071, !tbaa !954
  %45 = zext i16 %44 to i64, !dbg !2070
  br label %55, !dbg !2072

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !2073
  %48 = bitcast i8* %47 to i32*, !dbg !2074
  %49 = load i32, i32* %48, align 1, !dbg !2074, !tbaa !959
  %50 = zext i32 %49 to i64, !dbg !2073
  br label %55, !dbg !2075

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !2076
  %53 = bitcast i8* %52 to i64*, !dbg !2077
  %54 = load i64, i64* %53, align 1, !dbg !2077, !tbaa !406
  br label %55, !dbg !2078

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !2079
  %57 = trunc i64 %56 to i32, !dbg !2080
  %58 = icmp eq i32 %30, %57, !dbg !2082
  br i1 %58, label %59, label %65, !dbg !2084

; <label>:59:                                     ; preds = %55
  %60 = shl i64 %29, 32, !dbg !2085
  %61 = ashr exact i64 %60, 32, !dbg !2085
  %62 = tail call i32 @memcmp(i8* nonnull %1, i8* nonnull %2, i64 %61) #8, !dbg !2086
  %63 = icmp eq i32 %62, 0, !dbg !2087
  %64 = zext i1 %63 to i32, !dbg !2087
  br label %65, !dbg !2088

; <label>:65:                                     ; preds = %55, %59
  %66 = phi i32 [ %64, %59 ], [ 0, %55 ], !dbg !2089
  ret i32 %66, !dbg !2090
}

; Function Attrs: noredzone nounwind
define internal void @callbackKeyDestructor(i8* nocapture readnone, i8*) #0 !dbg !2091 {
  tail call void @sdsfree(i8* %1) #8, !dbg !2097
  ret void, !dbg !2098
}

; Function Attrs: noredzone nounwind
define internal void @callbackValDestructor(i8* nocapture readnone, i8*) #0 !dbg !2099 {
  tail call void @free(i8* %1) #8, !dbg !2105
  ret void, !dbg !2106
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dictRelease(%struct.dict*) unnamed_addr #0 !dbg !2107 {
  %2 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2125
  %3 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2126
  %4 = load i64, i64* %3, align 8, !dbg !2126, !tbaa !743
  %5 = icmp eq i64 %4, 0, !dbg !2127
  %6 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  br i1 %5, label %55, label %7, !dbg !2128

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5
  %10 = load i64, i64* %2, align 8, !dbg !2125, !tbaa !409
  br label %11, !dbg !2128

; <label>:11:                                     ; preds = %50, %7
  %12 = phi i64 [ %4, %7 ], [ %51, %50 ]
  %13 = phi i64 [ %10, %7 ], [ %52, %50 ], !dbg !2125
  %14 = phi i64 [ 0, %7 ], [ %53, %50 ]
  %15 = icmp eq i64 %13, 0, !dbg !2129
  br i1 %15, label %55, label %16, !dbg !2130

; <label>:16:                                     ; preds = %11
  %17 = load %struct.dictEntry**, %struct.dictEntry*** %6, align 8, !dbg !2131, !tbaa !401
  %18 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %17, i64 %14, !dbg !2133
  %19 = load %struct.dictEntry*, %struct.dictEntry** %18, align 8, !dbg !2133, !tbaa !348
  %20 = icmp eq %struct.dictEntry* %19, null, !dbg !2135
  br i1 %20, label %50, label %21, !dbg !2136

; <label>:21:                                     ; preds = %16, %43
  %22 = phi %struct.dictEntry* [ %24, %43 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 2, !dbg !2137
  %24 = load %struct.dictEntry*, %struct.dictEntry** %23, align 8, !dbg !2137, !tbaa !759
  %25 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2140, !tbaa !412
  %26 = getelementptr inbounds %struct.dictType, %struct.dictType* %25, i64 0, i32 4, !dbg !2140
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %26, align 8, !dbg !2140, !tbaa !1235
  %28 = icmp eq void (i8*, i8*)* %27, null, !dbg !2140
  br i1 %28, label %34, label %29, !dbg !2142

; <label>:29:                                     ; preds = %21
  %30 = load i8*, i8** %9, align 8, !dbg !2140, !tbaa !415
  %31 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 0, !dbg !2140
  %32 = load i8*, i8** %31, align 8, !dbg !2140, !tbaa !1178
  tail call void %27(i8* %30, i8* %32) #8, !dbg !2140
  %33 = load %struct.dictType*, %struct.dictType** %8, align 8, !dbg !2143, !tbaa !412
  br label %34, !dbg !2140

; <label>:34:                                     ; preds = %29, %21
  %35 = phi %struct.dictType* [ %25, %21 ], [ %33, %29 ], !dbg !2143
  %36 = getelementptr inbounds %struct.dictType, %struct.dictType* %35, i64 0, i32 5, !dbg !2143
  %37 = load void (i8*, i8*)*, void (i8*, i8*)** %36, align 8, !dbg !2143, !tbaa !1239
  %38 = icmp eq void (i8*, i8*)* %37, null, !dbg !2143
  br i1 %38, label %43, label %39, !dbg !2145

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %9, align 8, !dbg !2143, !tbaa !415
  %41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %22, i64 0, i32 1, !dbg !2143
  %42 = load i8*, i8** %41, align 8, !dbg !2143, !tbaa !765
  tail call void %37(i8* %40, i8* %42) #8, !dbg !2143
  br label %43, !dbg !2143

; <label>:43:                                     ; preds = %39, %34
  %44 = bitcast %struct.dictEntry* %22 to i8*, !dbg !2146
  tail call void @free(i8* %44) #8, !dbg !2147
  %45 = load i64, i64* %2, align 8, !dbg !2148, !tbaa !409
  %46 = add i64 %45, -1, !dbg !2148
  store i64 %46, i64* %2, align 8, !dbg !2148, !tbaa !409
  %47 = icmp eq %struct.dictEntry* %24, null, !dbg !2149
  br i1 %47, label %48, label %21, !dbg !2149, !llvm.loop !2150

; <label>:48:                                     ; preds = %43
  %49 = load i64, i64* %3, align 8, !dbg !2126, !tbaa !743
  br label %50, !dbg !2153

; <label>:50:                                     ; preds = %48, %16
  %51 = phi i64 [ %49, %48 ], [ %12, %16 ], !dbg !2126
  %52 = phi i64 [ %46, %48 ], [ %13, %16 ]
  %53 = add nuw i64 %14, 1, !dbg !2153
  %54 = icmp ult i64 %53, %51, !dbg !2127
  br i1 %54, label %11, label %55, !dbg !2128, !llvm.loop !2154

; <label>:55:                                     ; preds = %11, %50, %1
  %56 = bitcast %struct.dict* %0 to i8**, !dbg !2157
  %57 = load i8*, i8** %56, align 8, !dbg !2157, !tbaa !401
  tail call void @free(i8* %57) #8, !dbg !2158
  store %struct.dictEntry** null, %struct.dictEntry*** %6, align 8, !dbg !2161, !tbaa !401
  %58 = bitcast i64* %3 to <2 x i64>*, !dbg !2162
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !dbg !2162, !tbaa !406
  store i64 0, i64* %2, align 8, !dbg !2163, !tbaa !409
  %59 = bitcast %struct.dict* %0 to i8*, !dbg !2164
  tail call void @free(i8* %59) #8, !dbg !2165
  ret void, !dbg !2166
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #7

; Function Attrs: noredzone
declare dso_local i32 @redisCheckSocketError(%struct.redisContext*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #7

; Function Attrs: noredzone nounwind
define internal fastcc i32 @dictReplace(%struct.dict* nocapture, i8*, i8*) unnamed_addr #0 !dbg !2167 {
  %4 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2207
  %5 = load i64, i64* %4, align 8, !dbg !2207, !tbaa !743
  %6 = icmp eq i64 %5, 0, !dbg !2209
  br i1 %6, label %13, label %7, !dbg !2210

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2211
  %9 = load i64, i64* %8, align 8, !dbg !2211, !tbaa !409
  %10 = icmp eq i64 %9, %5, !dbg !2213
  br i1 %10, label %11, label %17, !dbg !2214

; <label>:11:                                     ; preds = %7
  %12 = shl i64 %5, 1, !dbg !2215
  br label %13, !dbg !2216

; <label>:13:                                     ; preds = %3, %11
  %14 = phi i64 [ %12, %11 ], [ 4, %3 ]
  %15 = tail call fastcc i32 @dictExpand(%struct.dict* nonnull %0, i64 %14) #8, !dbg !2217
  %16 = icmp eq i32 %15, 1, !dbg !2218
  br i1 %16, label %92, label %17, !dbg !2219

; <label>:17:                                     ; preds = %13, %7
  %18 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2220
  %19 = load %struct.dictType*, %struct.dictType** %18, align 8, !dbg !2220, !tbaa !412
  %20 = getelementptr inbounds %struct.dictType, %struct.dictType* %19, i64 0, i32 0, !dbg !2220
  %21 = load i32 (i8*)*, i32 (i8*)** %20, align 8, !dbg !2220, !tbaa !1163
  %22 = tail call i32 %21(i8* %1) #8, !dbg !2220
  %23 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2221
  %24 = load i64, i64* %23, align 8, !dbg !2221, !tbaa !1166
  %25 = trunc i64 %24 to i32, !dbg !2220
  %26 = and i32 %22, %25, !dbg !2220
  %27 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2223
  %28 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !2223, !tbaa !401
  %29 = zext i32 %26 to i64, !dbg !2224
  %30 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %28, i64 %29, !dbg !2224
  %31 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2226
  %32 = load %struct.dictEntry*, %struct.dictEntry** %30, align 8, !dbg !2229, !tbaa !348
  %33 = icmp eq %struct.dictEntry* %32, null, !dbg !2230
  br i1 %33, label %54, label %34, !dbg !2230

; <label>:34:                                     ; preds = %17, %50
  %35 = phi %struct.dictEntry* [ %52, %50 ], [ %32, %17 ]
  %36 = load %struct.dictType*, %struct.dictType** %18, align 8, !dbg !2226, !tbaa !412
  %37 = getelementptr inbounds %struct.dictType, %struct.dictType* %36, i64 0, i32 3, !dbg !2226
  %38 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %37, align 8, !dbg !2226, !tbaa !1176
  %39 = icmp eq i32 (i8*, i8*, i8*)* %38, null, !dbg !2226
  br i1 %39, label %46, label %40, !dbg !2231

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %31, align 8, !dbg !2226, !tbaa !415
  %42 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 0, !dbg !2226
  %43 = load i8*, i8** %42, align 8, !dbg !2226, !tbaa !1178
  %44 = tail call i32 %38(i8* %41, i8* %1, i8* %43) #8, !dbg !2226
  %45 = icmp eq i32 %44, 0, !dbg !2226
  br i1 %45, label %50, label %92, !dbg !2226

; <label>:46:                                     ; preds = %34
  %47 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 0, !dbg !2226
  %48 = load i8*, i8** %47, align 8, !dbg !2226, !tbaa !1178
  %49 = icmp eq i8* %48, %1, !dbg !2226
  br i1 %49, label %92, label %50, !dbg !2231

; <label>:50:                                     ; preds = %46, %40
  %51 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %35, i64 0, i32 2, !dbg !2232
  %52 = load %struct.dictEntry*, %struct.dictEntry** %51, align 8, !dbg !2229, !tbaa !348
  %53 = icmp eq %struct.dictEntry* %52, null, !dbg !2230
  br i1 %53, label %54, label %34, !dbg !2230, !llvm.loop !2233

; <label>:54:                                     ; preds = %50, %17
  %55 = icmp eq i32 %26, -1, !dbg !2237
  br i1 %55, label %92, label %56, !dbg !2238

; <label>:56:                                     ; preds = %54
  %57 = tail call i8* @malloc(i64 24) #8, !dbg !2239
  %58 = load %struct.dictEntry**, %struct.dictEntry*** %27, align 8, !dbg !2240, !tbaa !401
  %59 = sext i32 %26 to i64, !dbg !2241
  %60 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %58, i64 %59, !dbg !2241
  %61 = bitcast %struct.dictEntry** %60 to i64*, !dbg !2241
  %62 = load i64, i64* %61, align 8, !dbg !2241, !tbaa !348
  %63 = getelementptr inbounds i8, i8* %57, i64 16, !dbg !2242
  %64 = bitcast i8* %63 to i64*, !dbg !2243
  store i64 %62, i64* %64, align 8, !dbg !2243, !tbaa !759
  %65 = bitcast %struct.dictEntry** %60 to i8**, !dbg !2244
  store i8* %57, i8** %65, align 8, !dbg !2244, !tbaa !348
  %66 = load %struct.dictType*, %struct.dictType** %18, align 8, !dbg !2245, !tbaa !412
  %67 = getelementptr inbounds %struct.dictType, %struct.dictType* %66, i64 0, i32 1, !dbg !2245
  %68 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %67, align 8, !dbg !2245, !tbaa !2248
  %69 = icmp eq i8* (i8*, i8*)* %68, null, !dbg !2245
  br i1 %69, label %75, label %70, !dbg !2249

; <label>:70:                                     ; preds = %56
  %71 = load i8*, i8** %31, align 8, !dbg !2245, !tbaa !415
  %72 = tail call i8* %68(i8* %71, i8* %1) #8, !dbg !2245
  %73 = bitcast i8* %57 to i8**, !dbg !2245
  store i8* %72, i8** %73, align 8, !dbg !2245, !tbaa !1178
  %74 = load %struct.dictType*, %struct.dictType** %18, align 8, !dbg !2251, !tbaa !412
  br label %77, !dbg !2245

; <label>:75:                                     ; preds = %56
  %76 = bitcast i8* %57 to i8**, !dbg !2245
  store i8* %1, i8** %76, align 8, !dbg !2245, !tbaa !1178
  br label %77

; <label>:77:                                     ; preds = %75, %70
  %78 = phi %struct.dictType* [ %74, %70 ], [ %66, %75 ], !dbg !2251
  %79 = getelementptr inbounds %struct.dictType, %struct.dictType* %78, i64 0, i32 2, !dbg !2251
  %80 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %79, align 8, !dbg !2251, !tbaa !2254
  %81 = icmp eq i8* (i8*, i8*)* %80, null, !dbg !2251
  br i1 %81, label %85, label %82, !dbg !2255

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %31, align 8, !dbg !2251, !tbaa !415
  %84 = tail call i8* %80(i8* %83, i8* %2) #8, !dbg !2251
  br label %85, !dbg !2251

; <label>:85:                                     ; preds = %77, %82
  %86 = phi i8* [ %84, %82 ], [ %2, %77 ]
  %87 = getelementptr inbounds i8, i8* %57, i64 8, !dbg !2251
  %88 = bitcast i8* %87 to i8**, !dbg !2251
  store i8* %86, i8** %88, align 8, !dbg !2251, !tbaa !765
  %89 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2256
  %90 = load i64, i64* %89, align 8, !dbg !2257, !tbaa !409
  %91 = add i64 %90, 1, !dbg !2257
  store i64 %91, i64* %89, align 8, !dbg !2257, !tbaa !409
  br label %154, !dbg !2258

; <label>:92:                                     ; preds = %40, %46, %54, %13
  %93 = load i64, i64* %4, align 8, !dbg !2262, !tbaa !743
  %94 = icmp eq i64 %93, 0, !dbg !2263
  %95 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2264
  br i1 %94, label %132, label %96, !dbg !2265

; <label>:96:                                     ; preds = %92
  %97 = load %struct.dictType*, %struct.dictType** %95, align 8, !dbg !2266, !tbaa !412
  %98 = getelementptr inbounds %struct.dictType, %struct.dictType* %97, i64 0, i32 0, !dbg !2266
  %99 = load i32 (i8*)*, i32 (i8*)** %98, align 8, !dbg !2266, !tbaa !1163
  %100 = tail call i32 %99(i8* %1) #8, !dbg !2266
  %101 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2267
  %102 = load i64, i64* %101, align 8, !dbg !2267, !tbaa !1166
  %103 = trunc i64 %102 to i32, !dbg !2266
  %104 = and i32 %100, %103, !dbg !2266
  %105 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0, !dbg !2269
  %106 = load %struct.dictEntry**, %struct.dictEntry*** %105, align 8, !dbg !2269, !tbaa !401
  %107 = zext i32 %104 to i64, !dbg !2270
  %108 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %106, i64 %107, !dbg !2270
  %109 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2272
  %110 = load %struct.dictEntry*, %struct.dictEntry** %108, align 8, !dbg !2273, !tbaa !348
  %111 = icmp eq %struct.dictEntry* %110, null, !dbg !2274
  br i1 %111, label %132, label %112, !dbg !2274

; <label>:112:                                    ; preds = %96, %128
  %113 = phi %struct.dictEntry* [ %130, %128 ], [ %110, %96 ]
  %114 = load %struct.dictType*, %struct.dictType** %95, align 8, !dbg !2272, !tbaa !412
  %115 = getelementptr inbounds %struct.dictType, %struct.dictType* %114, i64 0, i32 3, !dbg !2272
  %116 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %115, align 8, !dbg !2272, !tbaa !1176
  %117 = icmp eq i32 (i8*, i8*, i8*)* %116, null, !dbg !2272
  br i1 %117, label %124, label %118, !dbg !2275

; <label>:118:                                    ; preds = %112
  %119 = load i8*, i8** %109, align 8, !dbg !2272, !tbaa !415
  %120 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %113, i64 0, i32 0, !dbg !2272
  %121 = load i8*, i8** %120, align 8, !dbg !2272, !tbaa !1178
  %122 = tail call i32 %116(i8* %119, i8* %1, i8* %121) #8, !dbg !2272
  %123 = icmp eq i32 %122, 0, !dbg !2272
  br i1 %123, label %128, label %132, !dbg !2272

; <label>:124:                                    ; preds = %112
  %125 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %113, i64 0, i32 0, !dbg !2272
  %126 = load i8*, i8** %125, align 8, !dbg !2272, !tbaa !1178
  %127 = icmp eq i8* %126, %1, !dbg !2272
  br i1 %127, label %132, label %128, !dbg !2275

; <label>:128:                                    ; preds = %124, %118
  %129 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %113, i64 0, i32 2, !dbg !2276
  %130 = load %struct.dictEntry*, %struct.dictEntry** %129, align 8, !dbg !2273, !tbaa !348
  %131 = icmp eq %struct.dictEntry* %130, null, !dbg !2274
  br i1 %131, label %132, label %112, !dbg !2274, !llvm.loop !1180

; <label>:132:                                    ; preds = %118, %124, %128, %92, %96
  %133 = phi %struct.dictEntry* [ null, %96 ], [ null, %92 ], [ null, %128 ], [ %113, %124 ], [ %113, %118 ], !dbg !2277
  %134 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %133, i64 0, i32 1, !dbg !2280
  %135 = load i8*, i8** %134, align 8, !dbg !2280
  %136 = load %struct.dictType*, %struct.dictType** %95, align 8, !dbg !2281, !tbaa !412
  %137 = getelementptr inbounds %struct.dictType, %struct.dictType* %136, i64 0, i32 2, !dbg !2281
  %138 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %137, align 8, !dbg !2281, !tbaa !2254
  %139 = icmp eq i8* (i8*, i8*)* %138, null, !dbg !2281
  br i1 %139, label %145, label %140, !dbg !2284

; <label>:140:                                    ; preds = %132
  %141 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2281
  %142 = load i8*, i8** %141, align 8, !dbg !2281, !tbaa !415
  %143 = tail call i8* %138(i8* %142, i8* %2) #8, !dbg !2281
  %144 = load %struct.dictType*, %struct.dictType** %95, align 8, !dbg !2285, !tbaa !412
  br label %145, !dbg !2281

; <label>:145:                                    ; preds = %132, %140
  %146 = phi %struct.dictType* [ %144, %140 ], [ %136, %132 ], !dbg !2285
  %147 = phi i8* [ %143, %140 ], [ %2, %132 ]
  store i8* %147, i8** %134, align 8, !dbg !2281, !tbaa !765
  %148 = getelementptr inbounds %struct.dictType, %struct.dictType* %146, i64 0, i32 5, !dbg !2285
  %149 = load void (i8*, i8*)*, void (i8*, i8*)** %148, align 8, !dbg !2285, !tbaa !1239
  %150 = icmp eq void (i8*, i8*)* %149, null, !dbg !2285
  br i1 %150, label %154, label %151, !dbg !2287

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2285
  %153 = load i8*, i8** %152, align 8, !dbg !2285, !tbaa !415
  tail call void %149(i8* %153, i8* %135) #8, !dbg !2285
  br label %154, !dbg !2285

; <label>:154:                                    ; preds = %85, %151, %145
  %155 = phi i32 [ 1, %85 ], [ 0, %145 ], [ 0, %151 ], !dbg !2264
  ret i32 %155, !dbg !2288
}

; Function Attrs: noredzone
declare dso_local i32 @__redisAppendCommand(%struct.redisContext*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @dictExpand(%struct.dict* nocapture, i64) unnamed_addr #0 !dbg !2289 {
  %3 = icmp ugt i64 %1, 9223372036854775806, !dbg !2316
  br i1 %3, label %8, label %4, !dbg !2318

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %7, %4 ], [ 4, %2 ], !dbg !2319
  %6 = icmp ult i64 %5, %1, !dbg !2321
  %7 = shl i64 %5, 1, !dbg !2323
  br i1 %6, label %4, label %8, !dbg !2324, !llvm.loop !2325

; <label>:8:                                      ; preds = %4, %2
  %9 = phi i64 [ 9223372036854775807, %2 ], [ %5, %4 ], !dbg !2328
  %10 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !2330
  %11 = load i64, i64* %10, align 8, !dbg !2330, !tbaa !409
  %12 = icmp ugt i64 %11, %1, !dbg !2332
  br i1 %12, label %75, label %13, !dbg !2333

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 1, !dbg !2334
  %15 = bitcast %struct.dictType** %14 to i64*, !dbg !2334
  %16 = load i64, i64* %15, align 8, !dbg !2334, !tbaa !412
  %17 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 5, !dbg !2335
  %18 = bitcast i8** %17 to i64*, !dbg !2335
  %19 = load i64, i64* %18, align 8, !dbg !2335, !tbaa !415
  %20 = add i64 %9, -1, !dbg !2337
  %21 = tail call i8* @calloc(i64 %9, i64 8) #8, !dbg !2338
  %22 = bitcast i8* %21 to %struct.dictEntry**, !dbg !2339
  %23 = load i64, i64* %10, align 8, !dbg !2340, !tbaa !409
  %24 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, !dbg !2342
  %25 = load i64, i64* %24, align 8, !dbg !2342, !tbaa !743
  %26 = icmp eq i64 %25, 0, !dbg !2343
  %27 = icmp eq i64 %23, 0, !dbg !2344
  br i1 %26, label %68, label %28, !dbg !2345

; <label>:28:                                     ; preds = %13
  %29 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 0
  %30 = trunc i64 %20 to i32
  br label %31, !dbg !2345

; <label>:31:                                     ; preds = %28, %62
  %32 = phi i64 [ %23, %28 ], [ %63, %62 ]
  %33 = phi i64 [ %25, %28 ], [ %64, %62 ]
  %34 = phi i1 [ %27, %28 ], [ %67, %62 ]
  %35 = phi i64 [ 0, %28 ], [ %65, %62 ]
  br i1 %34, label %71, label %36, !dbg !2346

; <label>:36:                                     ; preds = %31
  %37 = load %struct.dictEntry**, %struct.dictEntry*** %29, align 8, !dbg !2347, !tbaa !401
  %38 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %37, i64 %35, !dbg !2349
  %39 = load %struct.dictEntry*, %struct.dictEntry** %38, align 8, !dbg !2349, !tbaa !348
  %40 = icmp eq %struct.dictEntry* %39, null, !dbg !2350
  br i1 %40, label %62, label %41, !dbg !2351

; <label>:41:                                     ; preds = %36, %41
  %42 = phi %struct.dictEntry* [ %44, %41 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 2, !dbg !2353
  %44 = load %struct.dictEntry*, %struct.dictEntry** %43, align 8, !dbg !2353, !tbaa !759
  %45 = load %struct.dictType*, %struct.dictType** %14, align 8, !dbg !2355, !tbaa !412
  %46 = getelementptr inbounds %struct.dictType, %struct.dictType* %45, i64 0, i32 0, !dbg !2355
  %47 = load i32 (i8*)*, i32 (i8*)** %46, align 8, !dbg !2355, !tbaa !1163
  %48 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %42, i64 0, i32 0, !dbg !2355
  %49 = load i8*, i8** %48, align 8, !dbg !2355, !tbaa !1178
  %50 = tail call i32 %47(i8* %49) #8, !dbg !2355
  %51 = and i32 %50, %30, !dbg !2355
  %52 = zext i32 %51 to i64, !dbg !2357
  %53 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %22, i64 %52, !dbg !2357
  %54 = bitcast %struct.dictEntry** %53 to i64*, !dbg !2357
  %55 = load i64, i64* %54, align 8, !dbg !2357, !tbaa !348
  %56 = bitcast %struct.dictEntry** %43 to i64*, !dbg !2358
  store i64 %55, i64* %56, align 8, !dbg !2358, !tbaa !759
  store %struct.dictEntry* %42, %struct.dictEntry** %53, align 8, !dbg !2359, !tbaa !348
  %57 = load i64, i64* %10, align 8, !dbg !2360, !tbaa !409
  %58 = add i64 %57, -1, !dbg !2360
  store i64 %58, i64* %10, align 8, !dbg !2360, !tbaa !409
  %59 = icmp eq %struct.dictEntry* %44, null, !dbg !2361
  br i1 %59, label %60, label %41, !dbg !2361, !llvm.loop !2362

; <label>:60:                                     ; preds = %41
  %61 = load i64, i64* %24, align 8, !dbg !2342, !tbaa !743
  br label %62, !dbg !2364

; <label>:62:                                     ; preds = %60, %36
  %63 = phi i64 [ %58, %60 ], [ %32, %36 ], !dbg !2344
  %64 = phi i64 [ %61, %60 ], [ %33, %36 ], !dbg !2342
  %65 = add nuw i64 %35, 1, !dbg !2364
  %66 = icmp ult i64 %65, %64, !dbg !2343
  %67 = icmp eq i64 %63, 0, !dbg !2344
  br i1 %66, label %31, label %68, !dbg !2345, !llvm.loop !2365

; <label>:68:                                     ; preds = %62, %13
  %69 = phi i1 [ %27, %13 ], [ %67, %62 ], !dbg !2344
  br i1 %69, label %71, label %70, !dbg !2367

; <label>:70:                                     ; preds = %68
  tail call void @__assert_func(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.dictExpand, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !2367
  unreachable, !dbg !2367

; <label>:71:                                     ; preds = %31, %68
  %72 = bitcast %struct.dict* %0 to i8**, !dbg !2368
  %73 = load i8*, i8** %72, align 8, !dbg !2368, !tbaa !401
  tail call void @free(i8* %73) #8, !dbg !2369
  store i8* %21, i8** %72, align 8, !dbg !2370
  store i64 %16, i64* %15, align 8, !dbg !2370
  store i64 %9, i64* %24, align 8, !dbg !2370
  %74 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !2370
  store i64 %20, i64* %74, align 8, !dbg !2370
  store i64 %23, i64* %10, align 8, !dbg !2370
  store i64 %19, i64* %18, align 8, !dbg !2370
  br label %75, !dbg !2371

; <label>:75:                                     ; preds = %8, %71
  %76 = phi i32 [ 0, %71 ], [ 1, %8 ], !dbg !2344
  ret i32 %76, !dbg !2372
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "callbackDict", scope: !2, file: !3, line: 96, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !81)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "redisConnectionType", file: !6, line: 134, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/hiredis.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "REDIS_CONN_TCP", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "REDIS_CONN_UNIX", value: 1, isUnsigned: true)
!11 = !{!12, !13, !34, !37, !18, !39, !53, !63, !72}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReply", file: !6, line: 119, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReply", file: !6, line: 112, size: 384, elements: !16)
!16 = !{!17, !19, !21, !27, !30, !31}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !6, line: 113, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !15, file: !6, line: 114, baseType: !20, size: 64, offset: 64)
!20 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !6, line: 115, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 40, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !25, line: 129, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !15, file: !6, line: 116, baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !15, file: !6, line: 117, baseType: !22, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !15, file: !6, line: 118, baseType: !32, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !38, line: 42, baseType: !28)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/sds.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !38, line: 50, size: 24, elements: !41)
!41 = !{!42, !47, !48, !49}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !38, line: 51, baseType: !43, size: 8)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !46, line: 43, baseType: !36)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !38, line: 52, baseType: !43, size: 8, offset: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !38, line: 53, baseType: !36, size: 8, offset: 16)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !38, line: 54, baseType: !50, offset: 24)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: -1)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !38, line: 56, size: 40, elements: !55)
!55 = !{!56, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !54, file: !38, line: 57, baseType: !57, size: 16)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !44, line: 36, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !46, line: 57, baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !54, file: !38, line: 58, baseType: !57, size: 16, offset: 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !38, line: 59, baseType: !36, size: 8, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !54, file: !38, line: 60, baseType: !50, offset: 40)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !38, line: 62, size: 72, elements: !65)
!65 = !{!66, !69, !70, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !64, file: !38, line: 63, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 48, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !46, line: 79, baseType: !7)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !64, file: !38, line: 64, baseType: !67, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !38, line: 65, baseType: !36, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !64, file: !38, line: 66, baseType: !50, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !38, line: 68, size: 136, elements: !74)
!74 = !{!75, !78, !79, !80}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !73, file: !38, line: 69, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !44, line: 60, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !46, line: 105, baseType: !26)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73, file: !38, line: 70, baseType: !76, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !38, line: 71, baseType: !36, size: 8, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !73, file: !38, line: 72, baseType: !50, offset: 136)
!81 = !{!0}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !83, line: 58, baseType: !84)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.h", directory: "/root/.unikraft/apps/redis/build")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !83, line: 51, size: 384, elements: !85)
!85 = !{!86, !92, !96, !97, !101, !105}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !84, file: !83, line: 52, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!7, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !84, file: !83, line: 53, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!12, !12, !90}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !84, file: !83, line: 54, baseType: !93, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !84, file: !83, line: 55, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!18, !12, !90, !90}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !84, file: !83, line: 56, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !12, !12}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !84, file: !83, line: 57, baseType: !102, size: 64, offset: 320)
!106 = !{i32 2, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!110 = distinct !DISubprogram(name: "redisAsyncConnect", scope: !3, file: !3, line: 153, type: !111, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !275)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !273, !18}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisAsyncContext", file: !115, line: 101, baseType: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.h", directory: "/root/.unikraft/apps/redis/build")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisAsyncContext", file: !115, line: 61, size: 2752, elements: !117)
!117 = !{!118, !207, !208, !209, !210, !219, !226, !229, !248}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !116, file: !115, line: 63, baseType: !119, size: 1664)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisContext", file: !6, line: 161, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisContext", file: !6, line: 140, size: 1664, elements: !121)
!121 = !{!122, !123, !127, !128, !129, !130, !186, !187, !197, !203}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !120, file: !6, line: 141, baseType: !18, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !120, file: !6, line: 142, baseType: !124, size: 1024, offset: 32)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !120, file: !6, line: 143, baseType: !18, size: 32, offset: 1056)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !6, line: 144, baseType: !18, size: 32, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !120, file: !6, line: 145, baseType: !28, size: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !120, file: !6, line: 146, baseType: !131, size: 64, offset: 1216)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReader", file: !133, line: 95, baseType: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/read.h", directory: "/root/.unikraft/apps/redis/build")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReader", file: !133, line: 80, size: 4480, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !156, !157, !158, !185}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !134, file: !133, line: 81, baseType: !18, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !134, file: !133, line: 82, baseType: !124, size: 1024, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !133, line: 84, baseType: !28, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !134, file: !133, line: 85, baseType: !22, size: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !134, file: !133, line: 86, baseType: !22, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "maxbuf", scope: !134, file: !133, line: 87, baseType: !22, size: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rstack", scope: !134, file: !133, line: 89, baseType: !143, size: 2880, offset: 1344)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2880, elements: !154)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReadTask", file: !133, line: 70, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReadTask", file: !133, line: 63, size: 320, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !153}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !133, line: 64, baseType: !18, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !145, file: !133, line: 65, baseType: !18, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !145, file: !133, line: 66, baseType: !18, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !145, file: !133, line: 67, baseType: !12, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !133, line: 68, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !145, file: !133, line: 69, baseType: !12, size: 64, offset: 256)
!154 = !{!155}
!155 = !DISubrange(count: 9)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ridx", scope: !134, file: !133, line: 90, baseType: !18, size: 32, offset: 4224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !134, file: !133, line: 91, baseType: !12, size: 64, offset: 4288)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !134, file: !133, line: 93, baseType: !159, size: 64, offset: 4352)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisReplyObjectFunctions", file: !133, line: 78, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisReplyObjectFunctions", file: !133, line: 72, size: 320, elements: !162)
!162 = !{!163, !169, !173, !177, !181}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "createString", scope: !161, file: !133, line: 73, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!12, !167, !28, !22}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "createArray", scope: !161, file: !133, line: 74, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!12, !167, !18}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "createInteger", scope: !161, file: !133, line: 75, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!12, !167, !20}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "createNil", scope: !161, file: !133, line: 76, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!12, !167}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "freeObject", scope: !161, file: !133, line: 77, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !12}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !134, file: !133, line: 94, baseType: !12, size: 64, offset: 4416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !120, file: !6, line: 148, baseType: !5, size: 32, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !120, file: !6, line: 149, baseType: !188, size: 64, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !190, line: 44, size: 128, elements: !191)
!190 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!191 = !{!192, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !189, file: !190, line: 45, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !190, line: 34, baseType: !194)
!194 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !189, file: !190, line: 46, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !190, line: 39, baseType: !194)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !120, file: !6, line: 155, baseType: !198, size: 192, offset: 1408)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !6, line: 151, size: 192, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !198, file: !6, line: 152, baseType: !28, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "source_addr", scope: !198, file: !6, line: 153, baseType: !28, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !198, file: !6, line: 154, baseType: !18, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "unix_sock", scope: !120, file: !6, line: 159, baseType: !204, size: 64, offset: 1600)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !6, line: 157, size: 64, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !204, file: !6, line: 158, baseType: !28, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !116, file: !115, line: 66, baseType: !18, size: 32, offset: 1664)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "errstr", scope: !116, file: !115, line: 67, baseType: !28, size: 64, offset: 1728)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !115, line: 70, baseType: !12, size: 64, offset: 1792)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !116, file: !115, line: 83, baseType: !211, size: 384, offset: 1856)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !116, file: !115, line: 73, size: 384, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !211, file: !115, line: 74, baseType: !12, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "addRead", scope: !211, file: !115, line: 78, baseType: !182, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "delRead", scope: !211, file: !115, line: 79, baseType: !182, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "addWrite", scope: !211, file: !115, line: 80, baseType: !182, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "delWrite", scope: !211, file: !115, line: 81, baseType: !182, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !211, file: !115, line: 82, baseType: !182, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "onDisconnect", scope: !116, file: !115, line: 87, baseType: !220, size: 64, offset: 2240)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDisconnectCallback", file: !115, line: 57, baseType: !222)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !18}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "onConnect", scope: !116, file: !115, line: 90, baseType: !227, size: 64, offset: 2304)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisConnectCallback", file: !115, line: 58, baseType: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "replies", scope: !116, file: !115, line: 93, baseType: !230, size: 128, offset: 2368)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallbackList", file: !115, line: 54, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCallbackList", file: !115, line: 52, size: 128, elements: !232)
!232 = !{!233, !247}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !231, file: !115, line: 53, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallback", file: !115, line: 49, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCallback", file: !115, line: 45, size: 192, elements: !237)
!237 = !{!238, !240, !246}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !115, line: 46, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !236, file: !115, line: 47, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCallbackFn", file: !115, line: 44, baseType: !243)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245, !12, !12}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !236, file: !115, line: 48, baseType: !12, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !231, file: !115, line: 53, baseType: !234, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !116, file: !115, line: 100, baseType: !249, size: 256, offset: 2496)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !116, file: !115, line: 96, size: 256, elements: !250)
!250 = !{!251, !252, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !249, file: !115, line: 97, baseType: !230, size: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !249, file: !115, line: 98, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !83, line: 60, size: 384, elements: !255)
!255 = !{!256, !266, !268, !269, !270, !271}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !254, file: !83, line: 61, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !83, line: 49, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !83, line: 45, size: 192, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !260, file: !83, line: 46, baseType: !12, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !260, file: !83, line: 47, baseType: !12, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !83, line: 48, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !254, file: !83, line: 62, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !254, file: !83, line: 63, baseType: !26, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !254, file: !83, line: 64, baseType: !26, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !254, file: !83, line: 65, baseType: !26, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !254, file: !83, line: 66, baseType: !12, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "patterns", scope: !249, file: !115, line: 99, baseType: !253, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!275 = !{!276, !277, !278, !280}
!276 = !DILocalVariable(name: "ip", arg: 1, scope: !110, file: !3, line: 153, type: !273)
!277 = !DILocalVariable(name: "port", arg: 2, scope: !110, file: !3, line: 153, type: !18)
!278 = !DILocalVariable(name: "c", scope: !110, file: !3, line: 154, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!280 = !DILocalVariable(name: "ac", scope: !110, file: !3, line: 155, type: !113)
!281 = !DILocation(line: 153, column: 50, scope: !110)
!282 = !DILocation(line: 153, column: 58, scope: !110)
!283 = !DILocation(line: 157, column: 9, scope: !110)
!284 = !DILocation(line: 154, column: 19, scope: !110)
!285 = !DILocation(line: 158, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !110, file: !3, line: 158, column: 9)
!287 = !DILocation(line: 158, column: 9, scope: !110)
!288 = !DILocation(line: 161, column: 10, scope: !110)
!289 = !DILocation(line: 155, column: 24, scope: !110)
!290 = !DILocation(line: 162, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !110, file: !3, line: 162, column: 9)
!292 = !DILocation(line: 162, column: 9, scope: !110)
!293 = !DILocation(line: 163, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !3, line: 162, column: 21)
!295 = !DILocation(line: 164, column: 9, scope: !294)
!296 = !DILocalVariable(name: "ac", arg: 1, scope: !297, file: !3, line: 144, type: !113)
!297 = distinct !DISubprogram(name: "__redisAsyncCopyError", scope: !3, file: !3, line: 144, type: !298, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !113}
!300 = !{!296, !301}
!301 = !DILocalVariable(name: "c", scope: !297, file: !3, line: 148, type: !279)
!302 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !303)
!303 = distinct !DILocation(line: 167, column: 5, scope: !110)
!304 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !303)
!305 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !303)
!306 = !{!307, !308, i64 0}
!307 = !{!"redisContext", !308, i64 0, !309, i64 4, !308, i64 132, !308, i64 136, !311, i64 144, !311, i64 152, !309, i64 160, !311, i64 168, !312, i64 176, !313, i64 200}
!308 = !{!"int", !309, i64 0}
!309 = !{!"omnipotent char", !310, i64 0}
!310 = !{!"Simple C/C++ TBAA"}
!311 = !{!"any pointer", !309, i64 0}
!312 = !{!"", !311, i64 0, !311, i64 8, !308, i64 16}
!313 = !{!"", !311, i64 0}
!314 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !303)
!315 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !303)
!316 = !{!317, !308, i64 208}
!317 = !{!"redisAsyncContext", !307, i64 0, !308, i64 208, !311, i64 216, !311, i64 224, !318, i64 232, !311, i64 280, !311, i64 288, !319, i64 296, !320, i64 312}
!318 = !{!"", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40}
!319 = !{!"redisCallbackList", !311, i64 0, !311, i64 8}
!320 = !{!"", !319, i64 0, !311, i64 16, !311, i64 24}
!321 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !303)
!322 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !303)
!323 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !303)
!324 = !{!317, !311, i64 216}
!325 = !DILocation(line: 168, column: 5, scope: !110)
!326 = !DILocation(line: 0, scope: !110)
!327 = !DILocation(line: 169, column: 1, scope: !110)
!328 = distinct !DISubprogram(name: "redisAsyncInitialize", scope: !3, file: !3, line: 105, type: !329, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!113, !279}
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "c", arg: 1, scope: !328, file: !3, line: 105, type: !279)
!333 = !DILocalVariable(name: "ac", scope: !328, file: !3, line: 106, type: !113)
!334 = !DILocation(line: 105, column: 62, scope: !328)
!335 = !DILocation(line: 108, column: 18, scope: !328)
!336 = !DILocation(line: 108, column: 10, scope: !328)
!337 = !DILocation(line: 109, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !328, file: !3, line: 109, column: 9)
!339 = !DILocation(line: 109, column: 9, scope: !328)
!340 = !DILocation(line: 106, column: 24, scope: !328)
!341 = !DILocation(line: 117, column: 8, scope: !328)
!342 = !DILocation(line: 117, column: 14, scope: !328)
!343 = !{!307, !308, i64 136}
!344 = !DILocation(line: 119, column: 9, scope: !328)
!345 = !DILocation(line: 119, column: 13, scope: !328)
!346 = !DILocation(line: 120, column: 9, scope: !328)
!347 = !DILocation(line: 120, column: 16, scope: !328)
!348 = !{!311, !311, i64 0}
!349 = !DILocation(line: 123, column: 9, scope: !328)
!350 = !DILocation(line: 123, column: 12, scope: !328)
!351 = !DILocation(line: 123, column: 17, scope: !328)
!352 = !{!317, !311, i64 232}
!353 = !DILocation(line: 124, column: 12, scope: !328)
!354 = !DILocation(line: 124, column: 20, scope: !328)
!355 = !DILocation(line: 126, column: 12, scope: !328)
!356 = !DILocation(line: 126, column: 21, scope: !328)
!357 = !DILocation(line: 128, column: 12, scope: !328)
!358 = !DILocation(line: 128, column: 20, scope: !328)
!359 = !{!317, !311, i64 272}
!360 = !DILocation(line: 131, column: 9, scope: !328)
!361 = !DILocation(line: 131, column: 22, scope: !328)
!362 = !DILocation(line: 133, column: 9, scope: !328)
!363 = !DILocation(line: 133, column: 22, scope: !328)
!364 = !DILocation(line: 135, column: 9, scope: !328)
!365 = !DILocation(line: 135, column: 26, scope: !328)
!366 = !DILocalVariable(name: "type", arg: 1, scope: !367, file: !368, line: 73, type: !267)
!367 = distinct !DISubprogram(name: "dictCreate", scope: !368, file: !368, line: 73, type: !369, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !373)
!368 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.c", directory: "/root/.unikraft/apps/redis/build")
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !267, !12}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !83, line: 67, baseType: !254)
!373 = !{!366, !374, !375}
!374 = !DILocalVariable(name: "privDataPtr", arg: 2, scope: !367, file: !368, line: 73, type: !12)
!375 = !DILocalVariable(name: "ht", scope: !367, file: !368, line: 74, type: !371)
!376 = !DILocation(line: 73, column: 35, scope: !367, inlinedAt: !377)
!377 = distinct !DILocation(line: 137, column: 24, scope: !328)
!378 = !DILocation(line: 73, column: 47, scope: !367, inlinedAt: !377)
!379 = !DILocation(line: 74, column: 16, scope: !367, inlinedAt: !377)
!380 = !DILocation(line: 74, column: 11, scope: !367, inlinedAt: !377)
!381 = !DILocalVariable(name: "ht", arg: 1, scope: !382, file: !368, line: 80, type: !371)
!382 = distinct !DISubprogram(name: "_dictInit", scope: !368, file: !368, line: 80, type: !383, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!18, !371, !267, !12}
!385 = !{!381, !386, !387}
!386 = !DILocalVariable(name: "type", arg: 2, scope: !382, file: !368, line: 80, type: !267)
!387 = !DILocalVariable(name: "privDataPtr", arg: 3, scope: !382, file: !368, line: 80, type: !12)
!388 = !DILocation(line: 80, column: 28, scope: !382, inlinedAt: !389)
!389 = distinct !DILocation(line: 75, column: 5, scope: !367, inlinedAt: !377)
!390 = !DILocation(line: 80, column: 42, scope: !382, inlinedAt: !389)
!391 = !DILocation(line: 80, column: 54, scope: !382, inlinedAt: !389)
!392 = !DILocalVariable(name: "ht", arg: 1, scope: !393, file: !368, line: 65, type: !371)
!393 = distinct !DISubprogram(name: "_dictReset", scope: !368, file: !368, line: 65, type: !394, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !371}
!396 = !{!392}
!397 = !DILocation(line: 65, column: 30, scope: !393, inlinedAt: !398)
!398 = distinct !DILocation(line: 81, column: 5, scope: !382, inlinedAt: !389)
!399 = !DILocation(line: 66, column: 9, scope: !393, inlinedAt: !398)
!400 = !DILocation(line: 66, column: 15, scope: !393, inlinedAt: !398)
!401 = !{!402, !311, i64 0}
!402 = !{!"dict", !311, i64 0, !311, i64 8, !403, i64 16, !403, i64 24, !403, i64 32, !311, i64 40}
!403 = !{!"long", !309, i64 0}
!404 = !DILocation(line: 67, column: 9, scope: !393, inlinedAt: !398)
!405 = !DILocation(line: 67, column: 14, scope: !393, inlinedAt: !398)
!406 = !{!403, !403, i64 0}
!407 = !DILocation(line: 69, column: 9, scope: !393, inlinedAt: !398)
!408 = !DILocation(line: 69, column: 14, scope: !393, inlinedAt: !398)
!409 = !{!402, !403, i64 32}
!410 = !DILocation(line: 82, column: 9, scope: !382, inlinedAt: !389)
!411 = !DILocation(line: 82, column: 14, scope: !382, inlinedAt: !389)
!412 = !{!402, !311, i64 8}
!413 = !DILocation(line: 83, column: 9, scope: !382, inlinedAt: !389)
!414 = !DILocation(line: 83, column: 18, scope: !382, inlinedAt: !389)
!415 = !{!402, !311, i64 40}
!416 = !DILocation(line: 137, column: 13, scope: !328)
!417 = !DILocation(line: 137, column: 22, scope: !328)
!418 = !{!317, !311, i64 328}
!419 = !DILocation(line: 73, column: 35, scope: !367, inlinedAt: !420)
!420 = distinct !DILocation(line: 138, column: 24, scope: !328)
!421 = !DILocation(line: 73, column: 47, scope: !367, inlinedAt: !420)
!422 = !DILocation(line: 74, column: 16, scope: !367, inlinedAt: !420)
!423 = !DILocation(line: 74, column: 11, scope: !367, inlinedAt: !420)
!424 = !DILocation(line: 80, column: 28, scope: !382, inlinedAt: !425)
!425 = distinct !DILocation(line: 75, column: 5, scope: !367, inlinedAt: !420)
!426 = !DILocation(line: 80, column: 42, scope: !382, inlinedAt: !425)
!427 = !DILocation(line: 80, column: 54, scope: !382, inlinedAt: !425)
!428 = !DILocation(line: 65, column: 30, scope: !393, inlinedAt: !429)
!429 = distinct !DILocation(line: 81, column: 5, scope: !382, inlinedAt: !425)
!430 = !DILocation(line: 66, column: 9, scope: !393, inlinedAt: !429)
!431 = !DILocation(line: 66, column: 15, scope: !393, inlinedAt: !429)
!432 = !DILocation(line: 67, column: 9, scope: !393, inlinedAt: !429)
!433 = !DILocation(line: 67, column: 14, scope: !393, inlinedAt: !429)
!434 = !DILocation(line: 69, column: 9, scope: !393, inlinedAt: !429)
!435 = !DILocation(line: 69, column: 14, scope: !393, inlinedAt: !429)
!436 = !DILocation(line: 82, column: 9, scope: !382, inlinedAt: !425)
!437 = !DILocation(line: 82, column: 14, scope: !382, inlinedAt: !425)
!438 = !DILocation(line: 83, column: 9, scope: !382, inlinedAt: !425)
!439 = !DILocation(line: 83, column: 18, scope: !382, inlinedAt: !425)
!440 = !DILocation(line: 138, column: 13, scope: !328)
!441 = !DILocation(line: 138, column: 22, scope: !328)
!442 = !{!317, !311, i64 336}
!443 = !DILocation(line: 139, column: 5, scope: !328)
!444 = !DILocation(line: 0, scope: !328)
!445 = !DILocation(line: 140, column: 1, scope: !328)
!446 = distinct !DISubprogram(name: "redisAsyncConnectBind", scope: !3, file: !3, line: 171, type: !447, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!113, !273, !18, !273}
!449 = !{!450, !451, !452, !453, !454}
!450 = !DILocalVariable(name: "ip", arg: 1, scope: !446, file: !3, line: 171, type: !273)
!451 = !DILocalVariable(name: "port", arg: 2, scope: !446, file: !3, line: 171, type: !18)
!452 = !DILocalVariable(name: "source_addr", arg: 3, scope: !446, file: !3, line: 172, type: !273)
!453 = !DILocalVariable(name: "c", scope: !446, file: !3, line: 173, type: !279)
!454 = !DILocalVariable(name: "ac", scope: !446, file: !3, line: 174, type: !113)
!455 = !DILocation(line: 171, column: 54, scope: !446)
!456 = !DILocation(line: 171, column: 62, scope: !446)
!457 = !DILocation(line: 172, column: 54, scope: !446)
!458 = !DILocation(line: 173, column: 23, scope: !446)
!459 = !DILocation(line: 173, column: 19, scope: !446)
!460 = !DILocation(line: 174, column: 29, scope: !446)
!461 = !DILocation(line: 174, column: 24, scope: !446)
!462 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !463)
!463 = distinct !DILocation(line: 175, column: 5, scope: !446)
!464 = !DILocation(line: 145, column: 10, scope: !465, inlinedAt: !463)
!465 = distinct !DILexicalBlock(scope: !297, file: !3, line: 145, column: 9)
!466 = !DILocation(line: 145, column: 9, scope: !297, inlinedAt: !463)
!467 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !463)
!468 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !463)
!469 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !463)
!470 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !463)
!471 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !463)
!472 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !463)
!473 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !463)
!474 = !DILocation(line: 151, column: 1, scope: !297, inlinedAt: !463)
!475 = !DILocation(line: 176, column: 5, scope: !446)
!476 = distinct !DISubprogram(name: "redisAsyncConnectBindWithReuse", scope: !3, file: !3, line: 179, type: !447, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !477)
!477 = !{!478, !479, !480, !481, !482}
!478 = !DILocalVariable(name: "ip", arg: 1, scope: !476, file: !3, line: 179, type: !273)
!479 = !DILocalVariable(name: "port", arg: 2, scope: !476, file: !3, line: 179, type: !18)
!480 = !DILocalVariable(name: "source_addr", arg: 3, scope: !476, file: !3, line: 180, type: !273)
!481 = !DILocalVariable(name: "c", scope: !476, file: !3, line: 181, type: !279)
!482 = !DILocalVariable(name: "ac", scope: !476, file: !3, line: 182, type: !113)
!483 = !DILocation(line: 179, column: 63, scope: !476)
!484 = !DILocation(line: 179, column: 71, scope: !476)
!485 = !DILocation(line: 180, column: 63, scope: !476)
!486 = !DILocation(line: 181, column: 23, scope: !476)
!487 = !DILocation(line: 181, column: 19, scope: !476)
!488 = !DILocation(line: 182, column: 29, scope: !476)
!489 = !DILocation(line: 182, column: 24, scope: !476)
!490 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !491)
!491 = distinct !DILocation(line: 183, column: 5, scope: !476)
!492 = !DILocation(line: 145, column: 10, scope: !465, inlinedAt: !491)
!493 = !DILocation(line: 145, column: 9, scope: !297, inlinedAt: !491)
!494 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !491)
!495 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !491)
!496 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !491)
!497 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !491)
!498 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !491)
!499 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !491)
!500 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !491)
!501 = !DILocation(line: 151, column: 1, scope: !297, inlinedAt: !491)
!502 = !DILocation(line: 184, column: 5, scope: !476)
!503 = distinct !DISubprogram(name: "redisAsyncConnectUnix", scope: !3, file: !3, line: 187, type: !504, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!113, !273}
!506 = !{!507, !508, !509}
!507 = !DILocalVariable(name: "path", arg: 1, scope: !503, file: !3, line: 187, type: !273)
!508 = !DILocalVariable(name: "c", scope: !503, file: !3, line: 188, type: !279)
!509 = !DILocalVariable(name: "ac", scope: !503, file: !3, line: 189, type: !113)
!510 = !DILocation(line: 187, column: 54, scope: !503)
!511 = !DILocation(line: 191, column: 9, scope: !503)
!512 = !DILocation(line: 188, column: 19, scope: !503)
!513 = !DILocation(line: 192, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !503, file: !3, line: 192, column: 9)
!515 = !DILocation(line: 192, column: 9, scope: !503)
!516 = !DILocation(line: 195, column: 10, scope: !503)
!517 = !DILocation(line: 189, column: 24, scope: !503)
!518 = !DILocation(line: 196, column: 12, scope: !519)
!519 = distinct !DILexicalBlock(scope: !503, file: !3, line: 196, column: 9)
!520 = !DILocation(line: 196, column: 9, scope: !503)
!521 = !DILocation(line: 197, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 196, column: 21)
!523 = !DILocation(line: 198, column: 9, scope: !522)
!524 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !525)
!525 = distinct !DILocation(line: 201, column: 5, scope: !503)
!526 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !525)
!527 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !525)
!528 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !525)
!529 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !525)
!530 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !525)
!531 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !525)
!532 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !525)
!533 = !DILocation(line: 202, column: 5, scope: !503)
!534 = !DILocation(line: 0, scope: !503)
!535 = !DILocation(line: 203, column: 1, scope: !503)
!536 = distinct !DISubprogram(name: "redisAsyncSetConnectCallback", scope: !3, file: !3, line: 205, type: !537, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{!18, !113, !227}
!539 = !{!540, !541}
!540 = !DILocalVariable(name: "ac", arg: 1, scope: !536, file: !3, line: 205, type: !113)
!541 = !DILocalVariable(name: "fn", arg: 2, scope: !536, file: !3, line: 205, type: !227)
!542 = !DILocation(line: 205, column: 53, scope: !536)
!543 = !DILocation(line: 205, column: 79, scope: !536)
!544 = !DILocation(line: 206, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !3, line: 206, column: 9)
!546 = !{!317, !311, i64 288}
!547 = !DILocation(line: 206, column: 23, scope: !545)
!548 = !DILocation(line: 206, column: 9, scope: !536)
!549 = !DILocation(line: 207, column: 23, scope: !550)
!550 = distinct !DILexicalBlock(scope: !545, file: !3, line: 206, column: 32)
!551 = !DILocation(line: 212, column: 9, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 212, column: 9)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 212, column: 9)
!554 = !{!317, !311, i64 256}
!555 = !DILocation(line: 212, column: 9, scope: !553)
!556 = !DILocation(line: 0, scope: !536)
!557 = !DILocation(line: 216, column: 1, scope: !536)
!558 = distinct !DISubprogram(name: "redisAsyncSetDisconnectCallback", scope: !3, file: !3, line: 218, type: !559, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!18, !113, !220}
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "ac", arg: 1, scope: !558, file: !3, line: 218, type: !113)
!563 = !DILocalVariable(name: "fn", arg: 2, scope: !558, file: !3, line: 218, type: !220)
!564 = !DILocation(line: 218, column: 56, scope: !558)
!565 = !DILocation(line: 218, column: 85, scope: !558)
!566 = !DILocation(line: 219, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !558, file: !3, line: 219, column: 9)
!568 = !{!317, !311, i64 280}
!569 = !DILocation(line: 219, column: 26, scope: !567)
!570 = !DILocation(line: 219, column: 9, scope: !558)
!571 = !DILocation(line: 220, column: 26, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !3, line: 219, column: 35)
!573 = !DILocation(line: 221, column: 9, scope: !572)
!574 = !DILocation(line: 0, scope: !558)
!575 = !DILocation(line: 224, column: 1, scope: !558)
!576 = distinct !DISubprogram(name: "redisAsyncFree", scope: !3, file: !3, line: 323, type: !298, isLocal: false, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !577)
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "ac", arg: 1, scope: !576, file: !3, line: 323, type: !113)
!579 = !DILocalVariable(name: "c", scope: !576, file: !3, line: 324, type: !279)
!580 = !DILocation(line: 323, column: 40, scope: !576)
!581 = !DILocation(line: 324, column: 19, scope: !576)
!582 = !DILocation(line: 325, column: 8, scope: !576)
!583 = !DILocation(line: 325, column: 14, scope: !576)
!584 = !DILocation(line: 326, column: 20, scope: !585)
!585 = distinct !DILexicalBlock(scope: !576, file: !3, line: 326, column: 9)
!586 = !DILocation(line: 326, column: 9, scope: !576)
!587 = !DILocation(line: 327, column: 9, scope: !585)
!588 = !DILocation(line: 328, column: 1, scope: !576)
!589 = distinct !DISubprogram(name: "__redisAsyncFree", scope: !3, file: !3, line: 275, type: !298, isLocal: true, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !590)
!590 = !{!591, !592, !593, !594, !603}
!591 = !DILocalVariable(name: "ac", arg: 1, scope: !589, file: !3, line: 275, type: !113)
!592 = !DILocalVariable(name: "c", scope: !589, file: !3, line: 276, type: !279)
!593 = !DILocalVariable(name: "cb", scope: !589, file: !3, line: 277, type: !235)
!594 = !DILocalVariable(name: "it", scope: !589, file: !3, line: 278, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !83, line: 73, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !83, line: 69, size: 256, elements: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !597, file: !83, line: 70, baseType: !371, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !597, file: !83, line: 71, baseType: !18, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !597, file: !83, line: 72, baseType: !258, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !597, file: !83, line: 72, baseType: !258, size: 64, offset: 192)
!603 = !DILocalVariable(name: "de", scope: !589, file: !3, line: 279, type: !258)
!604 = !DILocation(line: 275, column: 49, scope: !589)
!605 = !DILocation(line: 276, column: 29, scope: !589)
!606 = !DILocation(line: 276, column: 19, scope: !589)
!607 = !DILocation(line: 277, column: 5, scope: !589)
!608 = !DILocation(line: 282, column: 38, scope: !589)
!609 = !DILocation(line: 277, column: 19, scope: !589)
!610 = !DILocalVariable(name: "list", arg: 1, scope: !611, file: !3, line: 249, type: !614)
!611 = distinct !DISubprogram(name: "__redisShiftCallback", scope: !3, file: !3, line: 249, type: !612, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !615)
!612 = !DISubroutineType(types: !613)
!613 = !{!18, !614, !234}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!615 = !{!610, !616, !617}
!616 = !DILocalVariable(name: "target", arg: 2, scope: !611, file: !3, line: 249, type: !234)
!617 = !DILocalVariable(name: "cb", scope: !611, file: !3, line: 250, type: !234)
!618 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !619)
!619 = distinct !DILocation(line: 282, column: 12, scope: !589)
!620 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !619)
!621 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !619)
!622 = !{!319, !311, i64 0}
!623 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !619)
!624 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !619)
!625 = distinct !DILexicalBlock(scope: !611, file: !3, line: 251, column: 9)
!626 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !619)
!627 = !DILocation(line: 286, column: 42, scope: !589)
!628 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !629)
!629 = distinct !DILocation(line: 286, column: 12, scope: !589)
!630 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !629)
!631 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !629)
!632 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !629)
!633 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !629)
!634 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !629)
!635 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !619)
!636 = distinct !DILexicalBlock(scope: !625, file: !3, line: 251, column: 21)
!637 = !{!638, !311, i64 0}
!638 = !{!"redisCallback", !311, i64 0, !311, i64 8, !311, i64 16}
!639 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !619)
!640 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !619)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 253, column: 13)
!642 = !{!319, !311, i64 8}
!643 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !619)
!644 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !619)
!645 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !619)
!646 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !619)
!647 = !DILocation(line: 258, column: 27, scope: !648, inlinedAt: !619)
!648 = distinct !DILexicalBlock(scope: !636, file: !3, line: 257, column: 13)
!649 = !DILocation(line: 258, column: 13, scope: !648, inlinedAt: !619)
!650 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !619)
!651 = !DILocalVariable(name: "ac", arg: 1, scope: !652, file: !3, line: 265, type: !113)
!652 = distinct !DISubprogram(name: "__redisRunCallback", scope: !3, file: !3, line: 265, type: !653, isLocal: true, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !113, !234, !13}
!655 = !{!651, !656, !657, !658}
!656 = !DILocalVariable(name: "cb", arg: 2, scope: !652, file: !3, line: 265, type: !234)
!657 = !DILocalVariable(name: "reply", arg: 3, scope: !652, file: !3, line: 265, type: !13)
!658 = !DILocalVariable(name: "c", scope: !652, file: !3, line: 266, type: !279)
!659 = !DILocation(line: 265, column: 51, scope: !652, inlinedAt: !660)
!660 = distinct !DILocation(line: 283, column: 9, scope: !589)
!661 = !DILocation(line: 265, column: 70, scope: !652, inlinedAt: !660)
!662 = !DILocation(line: 265, column: 86, scope: !652, inlinedAt: !660)
!663 = !DILocation(line: 267, column: 13, scope: !664, inlinedAt: !660)
!664 = distinct !DILexicalBlock(scope: !652, file: !3, line: 267, column: 9)
!665 = !{!638, !311, i64 8}
!666 = !DILocation(line: 267, column: 16, scope: !664, inlinedAt: !660)
!667 = !DILocation(line: 267, column: 9, scope: !652, inlinedAt: !660)
!668 = !DILocation(line: 266, column: 19, scope: !652, inlinedAt: !660)
!669 = !DILocation(line: 268, column: 18, scope: !670, inlinedAt: !660)
!670 = distinct !DILexicalBlock(scope: !664, file: !3, line: 267, column: 25)
!671 = !DILocation(line: 269, column: 29, scope: !670, inlinedAt: !660)
!672 = !{!638, !311, i64 16}
!673 = !DILocation(line: 269, column: 9, scope: !670, inlinedAt: !660)
!674 = !DILocation(line: 270, column: 18, scope: !670, inlinedAt: !660)
!675 = !DILocation(line: 271, column: 5, scope: !670, inlinedAt: !660)
!676 = distinct !{!676, !677, !678}
!677 = !DILocation(line: 282, column: 5, scope: !589)
!678 = !DILocation(line: 283, column: 39, scope: !589)
!679 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !629)
!680 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !629)
!681 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !629)
!682 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !629)
!683 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !629)
!684 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !629)
!685 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !629)
!686 = !DILocation(line: 258, column: 27, scope: !648, inlinedAt: !629)
!687 = !DILocation(line: 258, column: 13, scope: !648, inlinedAt: !629)
!688 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !629)
!689 = !DILocation(line: 265, column: 51, scope: !652, inlinedAt: !690)
!690 = distinct !DILocation(line: 287, column: 9, scope: !589)
!691 = !DILocation(line: 265, column: 70, scope: !652, inlinedAt: !690)
!692 = !DILocation(line: 265, column: 86, scope: !652, inlinedAt: !690)
!693 = !DILocation(line: 267, column: 13, scope: !664, inlinedAt: !690)
!694 = !DILocation(line: 267, column: 16, scope: !664, inlinedAt: !690)
!695 = !DILocation(line: 267, column: 9, scope: !652, inlinedAt: !690)
!696 = !DILocation(line: 266, column: 19, scope: !652, inlinedAt: !690)
!697 = !DILocation(line: 268, column: 18, scope: !670, inlinedAt: !690)
!698 = !DILocation(line: 269, column: 29, scope: !670, inlinedAt: !690)
!699 = !DILocation(line: 269, column: 9, scope: !670, inlinedAt: !690)
!700 = !DILocation(line: 270, column: 18, scope: !670, inlinedAt: !690)
!701 = !DILocation(line: 271, column: 5, scope: !670, inlinedAt: !690)
!702 = distinct !{!702, !703, !704}
!703 = !DILocation(line: 286, column: 5, scope: !589)
!704 = !DILocation(line: 287, column: 39, scope: !589)
!705 = !DILocation(line: 290, column: 34, scope: !589)
!706 = !DILocalVariable(name: "ht", arg: 1, scope: !707, file: !368, line: 258, type: !371)
!707 = distinct !DISubprogram(name: "dictGetIterator", scope: !368, file: !368, line: 258, type: !708, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!595, !371}
!710 = !{!706, !711}
!711 = !DILocalVariable(name: "iter", scope: !707, file: !368, line: 259, type: !595)
!712 = !DILocation(line: 258, column: 44, scope: !707, inlinedAt: !713)
!713 = distinct !DILocation(line: 290, column: 10, scope: !589)
!714 = !DILocation(line: 259, column: 26, scope: !707, inlinedAt: !713)
!715 = !DILocation(line: 259, column: 19, scope: !707, inlinedAt: !713)
!716 = !DILocation(line: 261, column: 14, scope: !707, inlinedAt: !713)
!717 = !{!718, !311, i64 0}
!718 = !{!"dictIterator", !311, i64 0, !308, i64 8, !311, i64 16, !311, i64 24}
!719 = !DILocation(line: 262, column: 11, scope: !707, inlinedAt: !713)
!720 = !DILocation(line: 262, column: 17, scope: !707, inlinedAt: !713)
!721 = !{!718, !308, i64 8}
!722 = !DILocation(line: 263, column: 11, scope: !707, inlinedAt: !713)
!723 = !DILocation(line: 264, column: 11, scope: !707, inlinedAt: !713)
!724 = !DILocation(line: 263, column: 17, scope: !707, inlinedAt: !713)
!725 = !DILocation(line: 278, column: 19, scope: !589)
!726 = !DILocation(line: 291, column: 5, scope: !589)
!727 = !DILocation(line: 270, column: 19, scope: !728, inlinedAt: !735)
!728 = distinct !DILexicalBlock(scope: !729, file: !368, line: 270, column: 13)
!729 = distinct !DILexicalBlock(scope: !730, file: !368, line: 269, column: 15)
!730 = distinct !DISubprogram(name: "dictNext", scope: !368, file: !368, line: 268, type: !731, isLocal: true, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!258, !595}
!733 = !{!734}
!734 = !DILocalVariable(name: "iter", arg: 1, scope: !730, file: !368, line: 268, type: !595)
!735 = distinct !DILocation(line: 291, column: 18, scope: !589)
!736 = !DILocation(line: 270, column: 25, scope: !728, inlinedAt: !735)
!737 = !DILocation(line: 270, column: 13, scope: !729, inlinedAt: !735)
!738 = !DILocation(line: 271, column: 24, scope: !739, inlinedAt: !735)
!739 = distinct !DILexicalBlock(scope: !728, file: !368, line: 270, column: 34)
!740 = !DILocation(line: 273, column: 35, scope: !741, inlinedAt: !735)
!741 = distinct !DILexicalBlock(scope: !739, file: !368, line: 272, column: 17)
!742 = !DILocation(line: 273, column: 39, scope: !741, inlinedAt: !735)
!743 = !{!402, !403, i64 16}
!744 = !DILocation(line: 273, column: 21, scope: !741, inlinedAt: !735)
!745 = !DILocation(line: 272, column: 29, scope: !741, inlinedAt: !735)
!746 = !DILocation(line: 272, column: 17, scope: !739, inlinedAt: !735)
!747 = !DILocation(line: 274, column: 37, scope: !739, inlinedAt: !735)
!748 = !DILocation(line: 274, column: 27, scope: !739, inlinedAt: !735)
!749 = !DILocation(line: 275, column: 9, scope: !739, inlinedAt: !735)
!750 = !DILocation(line: 0, scope: !739, inlinedAt: !735)
!751 = !{!718, !311, i64 16}
!752 = !DILocation(line: 278, column: 13, scope: !753, inlinedAt: !735)
!753 = distinct !DILexicalBlock(scope: !729, file: !368, line: 278, column: 13)
!754 = !DILocation(line: 278, column: 13, scope: !729, inlinedAt: !735)
!755 = distinct !{!755, !726, !756}
!756 = !DILocation(line: 292, column: 55, scope: !589)
!757 = !DILocation(line: 281, column: 44, scope: !758, inlinedAt: !735)
!758 = distinct !DILexicalBlock(scope: !753, file: !368, line: 278, column: 26)
!759 = !{!760, !311, i64 16}
!760 = !{!"dictEntry", !311, i64 0, !311, i64 8, !311, i64 16}
!761 = !DILocation(line: 281, column: 29, scope: !758, inlinedAt: !735)
!762 = !{!718, !311, i64 24}
!763 = !DILocation(line: 279, column: 16, scope: !589)
!764 = !DILocation(line: 292, column: 31, scope: !589)
!765 = !{!760, !311, i64 8}
!766 = !DILocation(line: 265, column: 51, scope: !652, inlinedAt: !767)
!767 = distinct !DILocation(line: 292, column: 9, scope: !589)
!768 = !DILocation(line: 265, column: 70, scope: !652, inlinedAt: !767)
!769 = !DILocation(line: 265, column: 86, scope: !652, inlinedAt: !767)
!770 = !DILocation(line: 267, column: 13, scope: !664, inlinedAt: !767)
!771 = !DILocation(line: 267, column: 16, scope: !664, inlinedAt: !767)
!772 = !DILocation(line: 267, column: 9, scope: !652, inlinedAt: !767)
!773 = !DILocation(line: 266, column: 19, scope: !652, inlinedAt: !767)
!774 = !DILocation(line: 268, column: 18, scope: !670, inlinedAt: !767)
!775 = !DILocation(line: 269, column: 29, scope: !670, inlinedAt: !767)
!776 = !DILocation(line: 269, column: 9, scope: !670, inlinedAt: !767)
!777 = !DILocation(line: 270, column: 18, scope: !670, inlinedAt: !767)
!778 = !DILocation(line: 271, column: 5, scope: !670, inlinedAt: !767)
!779 = !DILocalVariable(name: "iter", arg: 1, scope: !780, file: !368, line: 288, type: !595)
!780 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !368, file: !368, line: 288, type: !781, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !595}
!783 = !{!779}
!784 = !DILocation(line: 288, column: 47, scope: !780, inlinedAt: !785)
!785 = distinct !DILocation(line: 293, column: 5, scope: !589)
!786 = !DILocation(line: 289, column: 5, scope: !780, inlinedAt: !785)
!787 = !DILocation(line: 294, column: 25, scope: !589)
!788 = !DILocation(line: 294, column: 5, scope: !589)
!789 = !DILocation(line: 296, column: 34, scope: !589)
!790 = !DILocation(line: 258, column: 44, scope: !707, inlinedAt: !791)
!791 = distinct !DILocation(line: 296, column: 10, scope: !589)
!792 = !DILocation(line: 259, column: 26, scope: !707, inlinedAt: !791)
!793 = !DILocation(line: 259, column: 19, scope: !707, inlinedAt: !791)
!794 = !DILocation(line: 261, column: 14, scope: !707, inlinedAt: !791)
!795 = !DILocation(line: 262, column: 11, scope: !707, inlinedAt: !791)
!796 = !DILocation(line: 262, column: 17, scope: !707, inlinedAt: !791)
!797 = !DILocation(line: 263, column: 11, scope: !707, inlinedAt: !791)
!798 = !DILocation(line: 264, column: 11, scope: !707, inlinedAt: !791)
!799 = !DILocation(line: 263, column: 17, scope: !707, inlinedAt: !791)
!800 = !DILocation(line: 297, column: 5, scope: !589)
!801 = !DILocation(line: 270, column: 19, scope: !728, inlinedAt: !802)
!802 = distinct !DILocation(line: 297, column: 18, scope: !589)
!803 = !DILocation(line: 270, column: 25, scope: !728, inlinedAt: !802)
!804 = !DILocation(line: 270, column: 13, scope: !729, inlinedAt: !802)
!805 = !DILocation(line: 271, column: 24, scope: !739, inlinedAt: !802)
!806 = !DILocation(line: 273, column: 35, scope: !741, inlinedAt: !802)
!807 = !DILocation(line: 273, column: 39, scope: !741, inlinedAt: !802)
!808 = !DILocation(line: 273, column: 21, scope: !741, inlinedAt: !802)
!809 = !DILocation(line: 272, column: 29, scope: !741, inlinedAt: !802)
!810 = !DILocation(line: 272, column: 17, scope: !739, inlinedAt: !802)
!811 = !DILocation(line: 274, column: 37, scope: !739, inlinedAt: !802)
!812 = !DILocation(line: 274, column: 27, scope: !739, inlinedAt: !802)
!813 = !DILocation(line: 275, column: 9, scope: !739, inlinedAt: !802)
!814 = !DILocation(line: 0, scope: !739, inlinedAt: !802)
!815 = !DILocation(line: 278, column: 13, scope: !753, inlinedAt: !802)
!816 = !DILocation(line: 278, column: 13, scope: !729, inlinedAt: !802)
!817 = distinct !{!817, !800, !818}
!818 = !DILocation(line: 298, column: 55, scope: !589)
!819 = !DILocation(line: 281, column: 44, scope: !758, inlinedAt: !802)
!820 = !DILocation(line: 281, column: 29, scope: !758, inlinedAt: !802)
!821 = !DILocation(line: 298, column: 31, scope: !589)
!822 = !DILocation(line: 265, column: 51, scope: !652, inlinedAt: !823)
!823 = distinct !DILocation(line: 298, column: 9, scope: !589)
!824 = !DILocation(line: 265, column: 70, scope: !652, inlinedAt: !823)
!825 = !DILocation(line: 265, column: 86, scope: !652, inlinedAt: !823)
!826 = !DILocation(line: 267, column: 13, scope: !664, inlinedAt: !823)
!827 = !DILocation(line: 267, column: 16, scope: !664, inlinedAt: !823)
!828 = !DILocation(line: 267, column: 9, scope: !652, inlinedAt: !823)
!829 = !DILocation(line: 266, column: 19, scope: !652, inlinedAt: !823)
!830 = !DILocation(line: 268, column: 18, scope: !670, inlinedAt: !823)
!831 = !DILocation(line: 269, column: 29, scope: !670, inlinedAt: !823)
!832 = !DILocation(line: 269, column: 9, scope: !670, inlinedAt: !823)
!833 = !DILocation(line: 270, column: 18, scope: !670, inlinedAt: !823)
!834 = !DILocation(line: 271, column: 5, scope: !670, inlinedAt: !823)
!835 = !DILocation(line: 288, column: 47, scope: !780, inlinedAt: !836)
!836 = distinct !DILocation(line: 299, column: 5, scope: !589)
!837 = !DILocation(line: 289, column: 5, scope: !780, inlinedAt: !836)
!838 = !DILocation(line: 300, column: 25, scope: !589)
!839 = !DILocation(line: 300, column: 5, scope: !589)
!840 = !DILocation(line: 303, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 303, column: 5)
!842 = distinct !DILexicalBlock(scope: !589, file: !3, line: 303, column: 5)
!843 = !DILocation(line: 303, column: 5, scope: !842)
!844 = !DILocation(line: 307, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !589, file: !3, line: 307, column: 9)
!846 = !DILocation(line: 307, column: 9, scope: !845)
!847 = !DILocation(line: 307, column: 26, scope: !845)
!848 = !DILocation(line: 307, column: 33, scope: !845)
!849 = !DILocation(line: 307, column: 39, scope: !845)
!850 = !DILocation(line: 307, column: 9, scope: !589)
!851 = !DILocation(line: 308, column: 22, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 308, column: 13)
!853 = distinct !DILexicalBlock(scope: !845, file: !3, line: 307, column: 59)
!854 = !DILocation(line: 308, column: 13, scope: !853)
!855 = !DILocation(line: 309, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 308, column: 39)
!857 = !DILocation(line: 310, column: 9, scope: !856)
!858 = !DILocation(line: 311, column: 38, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !3, line: 310, column: 16)
!860 = !DILocation(line: 311, column: 42, scope: !859)
!861 = !DILocation(line: 311, column: 33, scope: !859)
!862 = !DILocation(line: 311, column: 13, scope: !859)
!863 = !DILocation(line: 316, column: 5, scope: !589)
!864 = !DILocation(line: 317, column: 1, scope: !589)
!865 = distinct !DISubprogram(name: "redisAsyncDisconnect", scope: !3, file: !3, line: 357, type: !298, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !866)
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "ac", arg: 1, scope: !865, file: !3, line: 357, type: !113)
!868 = !DILocalVariable(name: "c", scope: !865, file: !3, line: 358, type: !279)
!869 = !DILocation(line: 357, column: 46, scope: !865)
!870 = !DILocation(line: 358, column: 19, scope: !865)
!871 = !DILocation(line: 359, column: 8, scope: !865)
!872 = !DILocation(line: 359, column: 14, scope: !865)
!873 = !DILocation(line: 360, column: 20, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !3, line: 360, column: 9)
!875 = !DILocation(line: 360, column: 41, scope: !874)
!876 = !DILocation(line: 360, column: 56, scope: !874)
!877 = !{!317, !311, i64 296}
!878 = !DILocation(line: 360, column: 61, scope: !874)
!879 = !DILocation(line: 360, column: 9, scope: !865)
!880 = !DILocalVariable(name: "ac", arg: 1, scope: !881, file: !3, line: 331, type: !113)
!881 = distinct !DISubprogram(name: "__redisAsyncDisconnect", scope: !3, file: !3, line: 331, type: !298, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !882)
!882 = !{!880, !883}
!883 = !DILocalVariable(name: "c", scope: !881, file: !3, line: 332, type: !279)
!884 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !885)
!885 = distinct !DILocation(line: 361, column: 9, scope: !874)
!886 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !887)
!887 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !885)
!888 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !887)
!889 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !887)
!890 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !887)
!891 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !887)
!892 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !887)
!893 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !887)
!894 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !887)
!895 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !885)
!896 = distinct !DILexicalBlock(scope: !881, file: !3, line: 337, column: 9)
!897 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !885)
!898 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !885)
!899 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !885)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 340, column: 12)
!901 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !885)
!902 = !DILocation(line: 361, column: 9, scope: !874)
!903 = !DILocation(line: 362, column: 1, scope: !865)
!904 = distinct !DISubprogram(name: "redisProcessCallbacks", scope: !3, file: !3, line: 411, type: !298, isLocal: false, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!905 = !{!906, !907, !908, !909, !910}
!906 = !DILocalVariable(name: "ac", arg: 1, scope: !904, file: !3, line: 411, type: !113)
!907 = !DILocalVariable(name: "c", scope: !904, file: !3, line: 412, type: !279)
!908 = !DILocalVariable(name: "cb", scope: !904, file: !3, line: 413, type: !235)
!909 = !DILocalVariable(name: "reply", scope: !904, file: !3, line: 414, type: !12)
!910 = !DILocalVariable(name: "status", scope: !904, file: !3, line: 415, type: !18)
!911 = !DILocation(line: 411, column: 47, scope: !904)
!912 = !DILocation(line: 412, column: 29, scope: !904)
!913 = !DILocation(line: 412, column: 19, scope: !904)
!914 = !DILocation(line: 413, column: 5, scope: !904)
!915 = !DILocation(line: 413, column: 19, scope: !904)
!916 = !DILocation(line: 414, column: 5, scope: !904)
!917 = !DILocation(line: 414, column: 11, scope: !904)
!918 = !DILocation(line: 417, column: 21, scope: !904)
!919 = !DILocation(line: 415, column: 9, scope: !904)
!920 = !DILocation(line: 417, column: 5, scope: !904)
!921 = !DILocation(line: 418, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 418, column: 13)
!923 = distinct !DILexicalBlock(scope: !904, file: !3, line: 417, column: 59)
!924 = !DILocation(line: 418, column: 19, scope: !922)
!925 = !DILocation(line: 418, column: 13, scope: !923)
!926 = !DILocation(line: 421, column: 20, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 421, column: 17)
!928 = distinct !DILexicalBlock(scope: !922, file: !3, line: 418, column: 28)
!929 = !DILocation(line: 421, column: 26, scope: !927)
!930 = !DILocation(line: 421, column: 48, scope: !927)
!931 = !DILocation(line: 421, column: 61, scope: !927)
!932 = !{!307, !311, i64 144}
!933 = !DILocalVariable(name: "s", arg: 1, scope: !934, file: !38, line: 86, type: !937)
!934 = distinct !DISubprogram(name: "sdslen", scope: !38, file: !38, line: 86, type: !935, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !938)
!935 = !DISubroutineType(types: !936)
!936 = !{!22, !937}
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!938 = !{!933, !939}
!939 = !DILocalVariable(name: "flags", scope: !934, file: !38, line: 87, type: !36)
!940 = !DILocation(line: 86, column: 39, scope: !934, inlinedAt: !941)
!941 = distinct !DILocation(line: 421, column: 51, scope: !927)
!942 = !DILocation(line: 87, column: 27, scope: !934, inlinedAt: !941)
!943 = !{!309, !309, i64 0}
!944 = !DILocation(line: 87, column: 19, scope: !934, inlinedAt: !941)
!945 = !DILocation(line: 88, column: 5, scope: !934, inlinedAt: !941)
!946 = !DILocation(line: 90, column: 20, scope: !947, inlinedAt: !941)
!947 = distinct !DILexicalBlock(scope: !934, file: !38, line: 88, column: 33)
!948 = !DILocation(line: 90, column: 13, scope: !947, inlinedAt: !941)
!949 = !DILocation(line: 92, column: 20, scope: !947, inlinedAt: !941)
!950 = !DILocation(line: 92, column: 34, scope: !947, inlinedAt: !941)
!951 = !DILocation(line: 92, column: 13, scope: !947, inlinedAt: !941)
!952 = !DILocation(line: 94, column: 20, scope: !947, inlinedAt: !941)
!953 = !DILocation(line: 94, column: 35, scope: !947, inlinedAt: !941)
!954 = !{!955, !955, i64 0}
!955 = !{!"short", !309, i64 0}
!956 = !DILocation(line: 94, column: 13, scope: !947, inlinedAt: !941)
!957 = !DILocation(line: 96, column: 20, scope: !947, inlinedAt: !941)
!958 = !DILocation(line: 96, column: 35, scope: !947, inlinedAt: !941)
!959 = !{!308, !308, i64 0}
!960 = !DILocation(line: 96, column: 13, scope: !947, inlinedAt: !941)
!961 = !DILocation(line: 98, column: 20, scope: !947, inlinedAt: !941)
!962 = !DILocation(line: 98, column: 35, scope: !947, inlinedAt: !941)
!963 = !DILocation(line: 98, column: 13, scope: !947, inlinedAt: !941)
!964 = !DILocation(line: 0, scope: !947, inlinedAt: !941)
!965 = !DILocation(line: 421, column: 67, scope: !927)
!966 = !DILocation(line: 422, column: 17, scope: !927)
!967 = !DILocation(line: 422, column: 32, scope: !927)
!968 = !DILocation(line: 422, column: 37, scope: !927)
!969 = !DILocation(line: 421, column: 17, scope: !928)
!970 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !971)
!971 = distinct !DILocation(line: 423, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !927, file: !3, line: 422, column: 46)
!973 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !974)
!974 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !971)
!975 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !974)
!976 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !974)
!977 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !974)
!978 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !974)
!979 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !974)
!980 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !974)
!981 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !974)
!982 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !971)
!983 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !971)
!984 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !971)
!985 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !971)
!986 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !971)
!987 = !DILocation(line: 424, column: 17, scope: !972)
!988 = !DILocation(line: 428, column: 25, scope: !989)
!989 = distinct !DILexicalBlock(scope: !928, file: !3, line: 428, column: 16)
!990 = !DILocation(line: 428, column: 16, scope: !928)
!991 = !DILocalVariable(name: "list", arg: 1, scope: !992, file: !3, line: 227, type: !614)
!992 = distinct !DISubprogram(name: "__redisPushCallback", scope: !3, file: !3, line: 227, type: !612, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !993)
!993 = !{!991, !994, !995}
!994 = !DILocalVariable(name: "source", arg: 2, scope: !992, file: !3, line: 227, type: !234)
!995 = !DILocalVariable(name: "cb", scope: !992, file: !3, line: 228, type: !234)
!996 = !DILocation(line: 227, column: 51, scope: !992, inlinedAt: !997)
!997 = distinct !DILocation(line: 429, column: 17, scope: !998)
!998 = distinct !DILexicalBlock(scope: !989, file: !3, line: 428, column: 45)
!999 = !DILocation(line: 227, column: 72, scope: !992, inlinedAt: !997)
!1000 = !DILocation(line: 231, column: 10, scope: !992, inlinedAt: !997)
!1001 = !DILocation(line: 228, column: 20, scope: !992, inlinedAt: !997)
!1002 = !DILocation(line: 232, column: 12, scope: !1003, inlinedAt: !997)
!1003 = distinct !DILexicalBlock(scope: !992, file: !3, line: 232, column: 9)
!1004 = !DILocation(line: 232, column: 9, scope: !992, inlinedAt: !997)
!1005 = !DILocation(line: 236, column: 9, scope: !1006, inlinedAt: !997)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 235, column: 25)
!1007 = distinct !DILexicalBlock(scope: !992, file: !3, line: 235, column: 9)
!1008 = !DILocation(line: 237, column: 13, scope: !1006, inlinedAt: !997)
!1009 = !DILocation(line: 237, column: 18, scope: !1006, inlinedAt: !997)
!1010 = !DILocation(line: 241, column: 15, scope: !1011, inlinedAt: !997)
!1011 = distinct !DILexicalBlock(scope: !992, file: !3, line: 241, column: 9)
!1012 = !DILocation(line: 241, column: 20, scope: !1011, inlinedAt: !997)
!1013 = !DILocation(line: 241, column: 9, scope: !992, inlinedAt: !997)
!1014 = !DILocation(line: 242, column: 20, scope: !1011, inlinedAt: !997)
!1015 = !DILocation(line: 242, column: 9, scope: !1011, inlinedAt: !997)
!1016 = !DILocation(line: 243, column: 15, scope: !1017, inlinedAt: !997)
!1017 = distinct !DILexicalBlock(scope: !992, file: !3, line: 243, column: 9)
!1018 = !DILocation(line: 243, column: 20, scope: !1017, inlinedAt: !997)
!1019 = !DILocation(line: 243, column: 9, scope: !992, inlinedAt: !997)
!1020 = !DILocation(line: 244, column: 26, scope: !1017, inlinedAt: !997)
!1021 = !DILocation(line: 244, column: 9, scope: !1017, inlinedAt: !997)
!1022 = !DILocation(line: 245, column: 16, scope: !992, inlinedAt: !997)
!1023 = !DILocation(line: 246, column: 5, scope: !992, inlinedAt: !997)
!1024 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 439, column: 13, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !923, file: !3, line: 439, column: 13)
!1027 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1025)
!1028 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1025)
!1029 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1025)
!1030 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1025)
!1031 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1025)
!1032 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1025)
!1033 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1025)
!1034 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1025)
!1035 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1025)
!1036 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1025)
!1037 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1025)
!1038 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1025)
!1039 = !DILocation(line: 258, column: 27, scope: !648, inlinedAt: !1025)
!1040 = !DILocation(line: 258, column: 13, scope: !648, inlinedAt: !1025)
!1041 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1025)
!1042 = !DILocation(line: 439, column: 13, scope: !923)
!1043 = !DILocation(line: 455, column: 39, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 455, column: 17)
!1045 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 439, column: 65)
!1046 = !{!1047, !308, i64 0}
!1047 = !{!"redisReply", !308, i64 0, !1048, i64 8, !403, i64 16, !311, i64 24, !403, i64 32, !311, i64 40}
!1048 = !{!"long long", !309, i64 0}
!1049 = !DILocation(line: 455, column: 44, scope: !1044)
!1050 = !DILocation(line: 455, column: 17, scope: !1045)
!1051 = !DILocation(line: 456, column: 20, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 455, column: 66)
!1053 = !DILocation(line: 456, column: 24, scope: !1052)
!1054 = !DILocation(line: 457, column: 26, scope: !1052)
!1055 = !DILocation(line: 457, column: 81, scope: !1052)
!1056 = !{!1047, !311, i64 24}
!1057 = !DILocation(line: 457, column: 17, scope: !1052)
!1058 = !DILocation(line: 458, column: 20, scope: !1052)
!1059 = !{!307, !311, i64 152}
!1060 = !DILocation(line: 458, column: 28, scope: !1052)
!1061 = !{!1062, !311, i64 544}
!1062 = !{!"redisReader", !308, i64 0, !309, i64 4, !311, i64 136, !403, i64 144, !403, i64 152, !403, i64 160, !309, i64 168, !308, i64 528, !311, i64 536, !311, i64 544, !311, i64 552}
!1063 = !DILocation(line: 458, column: 32, scope: !1052)
!1064 = !{!1065, !311, i64 32}
!1065 = !{!"redisReplyObjectFunctions", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32}
!1066 = !DILocation(line: 458, column: 43, scope: !1052)
!1067 = !DILocation(line: 458, column: 17, scope: !1052)
!1068 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 459, column: 17, scope: !1052)
!1070 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1069)
!1072 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1071)
!1073 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1071)
!1074 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1071)
!1075 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1071)
!1076 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1071)
!1077 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1071)
!1078 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1069)
!1079 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1069)
!1080 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1069)
!1082 = distinct !DILexicalBlock(scope: !896, file: !3, line: 337, column: 23)
!1083 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1081)
!1084 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1081)
!1085 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1081)
!1086 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1081)
!1087 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1081)
!1088 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1081)
!1089 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1081)
!1090 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1081)
!1091 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1081)
!1092 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1081)
!1093 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1081)
!1094 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1081)
!1095 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1081)
!1096 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1081)
!1097 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1069)
!1098 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1069)
!1099 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1069)
!1100 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1069)
!1101 = !DILocation(line: 460, column: 17, scope: !1052)
!1102 = !DILocation(line: 463, column: 13, scope: !1045)
!1103 = !DILocation(line: 464, column: 16, scope: !1045)
!1104 = !DILocalVariable(name: "ac", arg: 1, scope: !1105, file: !3, line: 364, type: !113)
!1105 = distinct !DISubprogram(name: "__redisGetSubscribeCallback", scope: !3, file: !3, line: 364, type: !1106, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!18, !113, !13, !234}
!1108 = !{!1104, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1109 = !DILocalVariable(name: "reply", arg: 2, scope: !1105, file: !3, line: 364, type: !13)
!1110 = !DILocalVariable(name: "dstcb", arg: 3, scope: !1105, file: !3, line: 364, type: !234)
!1111 = !DILocalVariable(name: "c", scope: !1105, file: !3, line: 365, type: !279)
!1112 = !DILocalVariable(name: "callbacks", scope: !1105, file: !3, line: 366, type: !371)
!1113 = !DILocalVariable(name: "de", scope: !1105, file: !3, line: 367, type: !258)
!1114 = !DILocalVariable(name: "pvariant", scope: !1105, file: !3, line: 368, type: !18)
!1115 = !DILocalVariable(name: "stype", scope: !1105, file: !3, line: 369, type: !28)
!1116 = !DILocalVariable(name: "sname", scope: !1105, file: !3, line: 370, type: !37)
!1117 = !DILocalVariable(name: "__x", scope: !1118, file: !3, line: 378, type: !29)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 378, column: 21)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 374, column: 43)
!1120 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 374, column: 9)
!1121 = !DILocation(line: 364, column: 59, scope: !1105, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 465, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 464, column: 16)
!1124 = !DILocation(line: 364, column: 75, scope: !1105, inlinedAt: !1122)
!1125 = !DILocation(line: 364, column: 97, scope: !1105, inlinedAt: !1122)
!1126 = !DILocation(line: 365, column: 19, scope: !1105, inlinedAt: !1122)
!1127 = !DILocation(line: 374, column: 21, scope: !1120, inlinedAt: !1122)
!1128 = !DILocation(line: 374, column: 9, scope: !1105, inlinedAt: !1122)
!1129 = !DILocation(line: 375, column: 9, scope: !1119, inlinedAt: !1122)
!1130 = !{!1047, !403, i64 32}
!1131 = !DILocation(line: 376, column: 9, scope: !1119, inlinedAt: !1122)
!1132 = !{!1047, !311, i64 40}
!1133 = !DILocation(line: 377, column: 36, scope: !1119, inlinedAt: !1122)
!1134 = !DILocation(line: 369, column: 11, scope: !1105, inlinedAt: !1122)
!1135 = !DILocation(line: 378, column: 21, scope: !1118, inlinedAt: !1122)
!1136 = !DILocation(line: 378, column: 39, scope: !1119, inlinedAt: !1122)
!1137 = !DILocation(line: 366, column: 11, scope: !1105, inlinedAt: !1122)
!1138 = !DILocation(line: 380, column: 13, scope: !1119, inlinedAt: !1122)
!1139 = !DILocation(line: 0, scope: !1140, inlinedAt: !1122)
!1140 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 380, column: 13)
!1141 = !DILocation(line: 386, column: 9, scope: !1119, inlinedAt: !1122)
!1142 = !DILocation(line: 387, column: 46, scope: !1119, inlinedAt: !1122)
!1143 = !DILocation(line: 387, column: 69, scope: !1119, inlinedAt: !1122)
!1144 = !{!1047, !403, i64 16}
!1145 = !DILocation(line: 387, column: 17, scope: !1119, inlinedAt: !1122)
!1146 = !DILocation(line: 370, column: 9, scope: !1105, inlinedAt: !1122)
!1147 = !DILocalVariable(name: "ht", arg: 1, scope: !1148, file: !368, line: 243, type: !371)
!1148 = distinct !DISubprogram(name: "dictFind", scope: !368, file: !368, line: 243, type: !1149, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!258, !371, !90}
!1151 = !{!1147, !1152, !1153, !1154}
!1152 = !DILocalVariable(name: "key", arg: 2, scope: !1148, file: !368, line: 243, type: !90)
!1153 = !DILocalVariable(name: "he", scope: !1148, file: !368, line: 244, type: !258)
!1154 = !DILocalVariable(name: "h", scope: !1148, file: !368, line: 245, type: !7)
!1155 = !DILocation(line: 243, column: 34, scope: !1148, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 388, column: 14, scope: !1119, inlinedAt: !1122)
!1157 = !DILocation(line: 243, column: 50, scope: !1148, inlinedAt: !1156)
!1158 = !DILocation(line: 247, column: 13, scope: !1159, inlinedAt: !1156)
!1159 = distinct !DILexicalBlock(scope: !1148, file: !368, line: 247, column: 9)
!1160 = !DILocation(line: 247, column: 18, scope: !1159, inlinedAt: !1156)
!1161 = !DILocation(line: 247, column: 9, scope: !1148, inlinedAt: !1156)
!1162 = !DILocation(line: 248, column: 9, scope: !1148, inlinedAt: !1156)
!1163 = !{!1164, !311, i64 0}
!1164 = !{!"dictType", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40}
!1165 = !DILocation(line: 248, column: 36, scope: !1148, inlinedAt: !1156)
!1166 = !{!402, !403, i64 24}
!1167 = !DILocation(line: 245, column: 18, scope: !1148, inlinedAt: !1156)
!1168 = !DILocation(line: 249, column: 14, scope: !1148, inlinedAt: !1156)
!1169 = !DILocation(line: 249, column: 10, scope: !1148, inlinedAt: !1156)
!1170 = !DILocation(line: 244, column: 16, scope: !1148, inlinedAt: !1156)
!1171 = !DILocation(line: 251, column: 13, scope: !1172, inlinedAt: !1156)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !368, line: 251, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1148, file: !368, line: 250, column: 15)
!1174 = !DILocation(line: 0, scope: !1173, inlinedAt: !1156)
!1175 = !DILocation(line: 250, column: 5, scope: !1148, inlinedAt: !1156)
!1176 = !{!1164, !311, i64 24}
!1177 = !DILocation(line: 251, column: 13, scope: !1173, inlinedAt: !1156)
!1178 = !{!760, !311, i64 0}
!1179 = !DILocation(line: 253, column: 18, scope: !1173, inlinedAt: !1156)
!1180 = distinct !{!1180, !1181, !1182}
!1181 = !DILocation(line: 250, column: 5, scope: !1148)
!1182 = !DILocation(line: 254, column: 5, scope: !1148)
!1183 = !DILocation(line: 367, column: 16, scope: !1105, inlinedAt: !1122)
!1184 = !DILocation(line: 390, column: 26, scope: !1185, inlinedAt: !1122)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 389, column: 25)
!1186 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 389, column: 13)
!1187 = !DILocation(line: 390, column: 13, scope: !1185, inlinedAt: !1122)
!1188 = !DILocation(line: 393, column: 33, scope: !1189, inlinedAt: !1122)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 393, column: 17)
!1190 = !DILocation(line: 393, column: 17, scope: !1189, inlinedAt: !1122)
!1191 = !DILocation(line: 393, column: 58, scope: !1189, inlinedAt: !1122)
!1192 = !DILocation(line: 393, column: 17, scope: !1185, inlinedAt: !1122)
!1193 = !DILocalVariable(name: "ht", arg: 1, scope: !1194, file: !368, line: 182, type: !371)
!1194 = distinct !DISubprogram(name: "dictDelete", scope: !368, file: !368, line: 182, type: !1195, isLocal: true, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!18, !371, !90}
!1197 = !{!1193, !1198, !1199, !1200, !1201}
!1198 = !DILocalVariable(name: "key", arg: 2, scope: !1194, file: !368, line: 182, type: !90)
!1199 = !DILocalVariable(name: "h", scope: !1194, file: !368, line: 183, type: !7)
!1200 = !DILocalVariable(name: "de", scope: !1194, file: !368, line: 184, type: !258)
!1201 = !DILocalVariable(name: "prevde", scope: !1194, file: !368, line: 184, type: !258)
!1202 = !DILocation(line: 182, column: 29, scope: !1194, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 394, column: 17, scope: !1204, inlinedAt: !1122)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 393, column: 64)
!1205 = !DILocation(line: 182, column: 45, scope: !1194, inlinedAt: !1203)
!1206 = !DILocation(line: 186, column: 13, scope: !1207, inlinedAt: !1203)
!1207 = distinct !DILexicalBlock(scope: !1194, file: !368, line: 186, column: 9)
!1208 = !DILocation(line: 186, column: 18, scope: !1207, inlinedAt: !1203)
!1209 = !DILocation(line: 186, column: 9, scope: !1194, inlinedAt: !1203)
!1210 = !DILocation(line: 188, column: 9, scope: !1194, inlinedAt: !1203)
!1211 = !DILocation(line: 188, column: 36, scope: !1194, inlinedAt: !1203)
!1212 = !DILocation(line: 183, column: 18, scope: !1194, inlinedAt: !1203)
!1213 = !DILocation(line: 189, column: 14, scope: !1194, inlinedAt: !1203)
!1214 = !DILocation(line: 189, column: 10, scope: !1194, inlinedAt: !1203)
!1215 = !DILocation(line: 184, column: 16, scope: !1194, inlinedAt: !1203)
!1216 = !DILocation(line: 184, column: 21, scope: !1194, inlinedAt: !1203)
!1217 = !DILocation(line: 0, scope: !1218, inlinedAt: !1203)
!1218 = distinct !DILexicalBlock(scope: !1194, file: !368, line: 192, column: 15)
!1219 = !DILocation(line: 192, column: 5, scope: !1194, inlinedAt: !1203)
!1220 = !DILocation(line: 193, column: 13, scope: !1221, inlinedAt: !1203)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !368, line: 193, column: 13)
!1222 = !DILocation(line: 193, column: 13, scope: !1218, inlinedAt: !1203)
!1223 = !DILocation(line: 195, column: 17, scope: !1224, inlinedAt: !1203)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !368, line: 195, column: 17)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !368, line: 193, column: 50)
!1226 = !DILocation(line: 0, scope: !1224, inlinedAt: !1203)
!1227 = !DILocation(line: 195, column: 17, scope: !1225, inlinedAt: !1203)
!1228 = !DILocation(line: 196, column: 25, scope: !1224, inlinedAt: !1203)
!1229 = !DILocation(line: 196, column: 17, scope: !1224, inlinedAt: !1203)
!1230 = !DILocation(line: 198, column: 21, scope: !1224, inlinedAt: !1203)
!1231 = !DILocation(line: 198, column: 17, scope: !1224, inlinedAt: !1203)
!1232 = !DILocation(line: 0, scope: !1204, inlinedAt: !1122)
!1233 = !DILocation(line: 200, column: 13, scope: !1234, inlinedAt: !1203)
!1234 = distinct !DILexicalBlock(scope: !1225, file: !368, line: 200, column: 13)
!1235 = !{!1164, !311, i64 32}
!1236 = !DILocation(line: 200, column: 13, scope: !1225, inlinedAt: !1203)
!1237 = !DILocation(line: 201, column: 13, scope: !1238, inlinedAt: !1203)
!1238 = distinct !DILexicalBlock(scope: !1225, file: !368, line: 201, column: 13)
!1239 = !{!1164, !311, i64 40}
!1240 = !DILocation(line: 201, column: 13, scope: !1225, inlinedAt: !1203)
!1241 = !DILocation(line: 202, column: 18, scope: !1225, inlinedAt: !1203)
!1242 = !DILocation(line: 202, column: 13, scope: !1225, inlinedAt: !1203)
!1243 = !DILocation(line: 203, column: 17, scope: !1225, inlinedAt: !1203)
!1244 = !DILocation(line: 203, column: 21, scope: !1225, inlinedAt: !1203)
!1245 = !DILocation(line: 204, column: 13, scope: !1225, inlinedAt: !1203)
!1246 = !DILocation(line: 207, column: 18, scope: !1218, inlinedAt: !1203)
!1247 = distinct !{!1247, !1248, !1249}
!1248 = !DILocation(line: 192, column: 5, scope: !1194)
!1249 = !DILocation(line: 208, column: 5, scope: !1194)
!1250 = !DILocation(line: 398, column: 17, scope: !1204, inlinedAt: !1122)
!1251 = !DILocation(line: 399, column: 40, scope: !1252, inlinedAt: !1122)
!1252 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 399, column: 21)
!1253 = !{!1047, !1048, i64 8}
!1254 = !DILocation(line: 399, column: 48, scope: !1252, inlinedAt: !1122)
!1255 = !DILocation(line: 399, column: 21, scope: !1204, inlinedAt: !1122)
!1256 = !DILocation(line: 400, column: 30, scope: !1252, inlinedAt: !1122)
!1257 = !DILocation(line: 400, column: 21, scope: !1252, inlinedAt: !1122)
!1258 = !DILocation(line: 403, column: 9, scope: !1119, inlinedAt: !1122)
!1259 = !DILocation(line: 404, column: 5, scope: !1119, inlinedAt: !1122)
!1260 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 406, column: 9, scope: !1262, inlinedAt: !1122)
!1262 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 404, column: 12)
!1263 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1261)
!1264 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1261)
!1265 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1261)
!1266 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1261)
!1267 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1261)
!1268 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1261)
!1269 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1261)
!1270 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1261)
!1271 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1261)
!1272 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1261)
!1273 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1261)
!1274 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1261)
!1275 = !DILocation(line: 258, column: 27, scope: !648, inlinedAt: !1261)
!1276 = !DILocation(line: 258, column: 13, scope: !648, inlinedAt: !1261)
!1277 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1261)
!1278 = !DILocation(line: 260, column: 9, scope: !636, inlinedAt: !1261)
!1279 = !DILocation(line: 468, column: 16, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !923, file: !3, line: 468, column: 13)
!1281 = !DILocation(line: 468, column: 19, scope: !1280)
!1282 = !DILocation(line: 468, column: 13, scope: !923)
!1283 = !DILocation(line: 469, column: 39, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 468, column: 28)
!1285 = !DILocation(line: 265, column: 51, scope: !652, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 469, column: 13, scope: !1284)
!1287 = !DILocation(line: 265, column: 70, scope: !652, inlinedAt: !1286)
!1288 = !DILocation(line: 265, column: 86, scope: !652, inlinedAt: !1286)
!1289 = !DILocation(line: 266, column: 19, scope: !652, inlinedAt: !1286)
!1290 = !DILocation(line: 268, column: 18, scope: !670, inlinedAt: !1286)
!1291 = !DILocation(line: 269, column: 29, scope: !670, inlinedAt: !1286)
!1292 = !DILocation(line: 269, column: 9, scope: !670, inlinedAt: !1286)
!1293 = !DILocation(line: 270, column: 18, scope: !670, inlinedAt: !1286)
!1294 = !DILocation(line: 470, column: 16, scope: !1284)
!1295 = !DILocation(line: 470, column: 24, scope: !1284)
!1296 = !DILocation(line: 470, column: 28, scope: !1284)
!1297 = !DILocation(line: 470, column: 39, scope: !1284)
!1298 = !DILocation(line: 470, column: 13, scope: !1284)
!1299 = !DILocation(line: 473, column: 20, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 473, column: 17)
!1301 = !DILocation(line: 473, column: 26, scope: !1300)
!1302 = !DILocation(line: 473, column: 17, scope: !1284)
!1303 = !DILocation(line: 474, column: 17, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 473, column: 43)
!1305 = !DILocation(line: 475, column: 17, scope: !1304)
!1306 = !DILocation(line: 482, column: 16, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 477, column: 16)
!1308 = !DILocation(line: 482, column: 24, scope: !1307)
!1309 = !DILocation(line: 482, column: 28, scope: !1307)
!1310 = !DILocation(line: 482, column: 39, scope: !1307)
!1311 = !DILocation(line: 482, column: 13, scope: !1307)
!1312 = distinct !{!1312, !920, !1313}
!1313 = !DILocation(line: 484, column: 5, scope: !904)
!1314 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 488, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !904, file: !3, line: 487, column: 9)
!1317 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1315)
!1319 = !DILocation(line: 145, column: 10, scope: !465, inlinedAt: !1318)
!1320 = !DILocation(line: 145, column: 9, scope: !297, inlinedAt: !1318)
!1321 = !DILocation(line: 337, column: 13, scope: !896, inlinedAt: !1315)
!1322 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1318)
!1323 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1318)
!1324 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1318)
!1325 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1318)
!1326 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !1318)
!1327 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1318)
!1328 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1318)
!1329 = !DILocation(line: 151, column: 1, scope: !297, inlinedAt: !1318)
!1330 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1315)
!1331 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1315)
!1332 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1315)
!1333 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1315)
!1335 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1334)
!1336 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1334)
!1337 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1334)
!1338 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1334)
!1339 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1334)
!1340 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1334)
!1341 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1334)
!1342 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1334)
!1343 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1334)
!1344 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1334)
!1345 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1334)
!1346 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1334)
!1347 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1334)
!1348 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1334)
!1349 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1315)
!1350 = !DILocation(line: 343, column: 12, scope: !900, inlinedAt: !1315)
!1351 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1315)
!1352 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1315)
!1353 = !DILocation(line: 488, column: 9, scope: !1316)
!1354 = !DILocation(line: 489, column: 1, scope: !904)
!1355 = distinct !DISubprogram(name: "redisAsyncHandleRead", scope: !3, file: !3, line: 516, type: !298, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1356)
!1356 = !{!1357, !1358}
!1357 = !DILocalVariable(name: "ac", arg: 1, scope: !1355, file: !3, line: 516, type: !113)
!1358 = !DILocalVariable(name: "c", scope: !1355, file: !3, line: 517, type: !279)
!1359 = !DILocation(line: 516, column: 46, scope: !1355)
!1360 = !DILocation(line: 517, column: 29, scope: !1355)
!1361 = !DILocation(line: 517, column: 19, scope: !1355)
!1362 = !DILocation(line: 519, column: 14, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 519, column: 9)
!1364 = !DILocation(line: 519, column: 20, scope: !1363)
!1365 = !DILocation(line: 519, column: 9, scope: !1355)
!1366 = !DILocalVariable(name: "ac", arg: 1, scope: !1367, file: !3, line: 494, type: !113)
!1367 = distinct !DISubprogram(name: "__redisAsyncHandleConnect", scope: !3, file: !3, line: 494, type: !1368, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!18, !113}
!1370 = !{!1366, !1371}
!1371 = !DILocalVariable(name: "c", scope: !1367, file: !3, line: 495, type: !279)
!1372 = !DILocation(line: 494, column: 57, scope: !1367, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 521, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 521, column: 13)
!1375 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 519, column: 40)
!1376 = !DILocation(line: 495, column: 19, scope: !1367, inlinedAt: !1373)
!1377 = !DILocation(line: 497, column: 9, scope: !1378, inlinedAt: !1373)
!1378 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 497, column: 9)
!1379 = !DILocation(line: 497, column: 34, scope: !1378, inlinedAt: !1373)
!1380 = !DILocation(line: 497, column: 9, scope: !1367, inlinedAt: !1373)
!1381 = !DILocation(line: 499, column: 13, scope: !1382, inlinedAt: !1373)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 499, column: 13)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 497, column: 48)
!1384 = !DILocation(line: 499, column: 19, scope: !1382, inlinedAt: !1373)
!1385 = !DILocation(line: 499, column: 13, scope: !1383, inlinedAt: !1373)
!1386 = !DILocation(line: 502, column: 17, scope: !1387, inlinedAt: !1373)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 502, column: 13)
!1388 = !DILocation(line: 502, column: 13, scope: !1387, inlinedAt: !1373)
!1389 = !DILocation(line: 502, column: 13, scope: !1383, inlinedAt: !1373)
!1390 = !DILocation(line: 502, column: 28, scope: !1387, inlinedAt: !1373)
!1391 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 503, column: 9, scope: !1383, inlinedAt: !1373)
!1393 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1392)
!1395 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1394)
!1396 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1394)
!1397 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1394)
!1398 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1394)
!1399 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !1394)
!1400 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1394)
!1401 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1394)
!1402 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1392)
!1403 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1392)
!1404 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1392)
!1405 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1392)
!1407 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1406)
!1408 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1406)
!1409 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1406)
!1410 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1406)
!1411 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1406)
!1412 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1406)
!1413 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1406)
!1414 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1406)
!1415 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1406)
!1416 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1406)
!1417 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1406)
!1418 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1406)
!1419 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1406)
!1420 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1406)
!1421 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1392)
!1422 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1392)
!1423 = !DILocation(line: 508, column: 14, scope: !1367, inlinedAt: !1373)
!1424 = !DILocation(line: 509, column: 13, scope: !1425, inlinedAt: !1373)
!1425 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 509, column: 9)
!1426 = !DILocation(line: 509, column: 9, scope: !1425, inlinedAt: !1373)
!1427 = !DILocation(line: 509, column: 9, scope: !1367, inlinedAt: !1373)
!1428 = !DILocation(line: 509, column: 24, scope: !1425, inlinedAt: !1373)
!1429 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1392)
!1430 = !DILocation(line: 521, column: 13, scope: !1375)
!1431 = !DILocation(line: 524, column: 18, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 524, column: 13)
!1433 = !DILocation(line: 524, column: 24, scope: !1432)
!1434 = !DILocation(line: 524, column: 13, scope: !1375)
!1435 = !DILocation(line: 528, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 528, column: 9)
!1437 = !DILocation(line: 528, column: 28, scope: !1436)
!1438 = !DILocation(line: 528, column: 9, scope: !1355)
!1439 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 529, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 528, column: 42)
!1442 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1440)
!1444 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1443)
!1445 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1443)
!1446 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1443)
!1447 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1443)
!1448 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !1443)
!1449 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1443)
!1450 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1443)
!1451 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1440)
!1452 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1440)
!1453 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1440)
!1454 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1440)
!1456 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1455)
!1457 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1455)
!1458 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1455)
!1459 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1455)
!1460 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1455)
!1461 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1455)
!1462 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1455)
!1463 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1455)
!1464 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1455)
!1465 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1455)
!1466 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1455)
!1467 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1455)
!1468 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1455)
!1469 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1455)
!1470 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1440)
!1471 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1440)
!1472 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1440)
!1473 = !DILocation(line: 530, column: 5, scope: !1441)
!1474 = !DILocation(line: 532, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 532, column: 9)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 532, column: 9)
!1477 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 530, column: 12)
!1478 = !{!317, !311, i64 240}
!1479 = !DILocation(line: 532, column: 9, scope: !1476)
!1480 = !DILocation(line: 533, column: 9, scope: !1477)
!1481 = !DILocation(line: 535, column: 1, scope: !1355)
!1482 = distinct !DISubprogram(name: "redisAsyncHandleWrite", scope: !3, file: !3, line: 537, type: !298, isLocal: false, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "ac", arg: 1, scope: !1482, file: !3, line: 537, type: !113)
!1485 = !DILocalVariable(name: "c", scope: !1482, file: !3, line: 538, type: !279)
!1486 = !DILocalVariable(name: "done", scope: !1482, file: !3, line: 539, type: !18)
!1487 = !DILocation(line: 537, column: 47, scope: !1482)
!1488 = !DILocation(line: 538, column: 29, scope: !1482)
!1489 = !DILocation(line: 538, column: 19, scope: !1482)
!1490 = !DILocation(line: 539, column: 5, scope: !1482)
!1491 = !DILocation(line: 539, column: 9, scope: !1482)
!1492 = !DILocation(line: 541, column: 14, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 541, column: 9)
!1494 = !DILocation(line: 541, column: 20, scope: !1493)
!1495 = !DILocation(line: 541, column: 9, scope: !1482)
!1496 = !DILocation(line: 494, column: 57, scope: !1367, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 543, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 543, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 541, column: 40)
!1500 = !DILocation(line: 495, column: 19, scope: !1367, inlinedAt: !1497)
!1501 = !DILocation(line: 497, column: 9, scope: !1378, inlinedAt: !1497)
!1502 = !DILocation(line: 497, column: 34, scope: !1378, inlinedAt: !1497)
!1503 = !DILocation(line: 497, column: 9, scope: !1367, inlinedAt: !1497)
!1504 = !DILocation(line: 499, column: 13, scope: !1382, inlinedAt: !1497)
!1505 = !DILocation(line: 499, column: 19, scope: !1382, inlinedAt: !1497)
!1506 = !DILocation(line: 499, column: 13, scope: !1383, inlinedAt: !1497)
!1507 = !DILocation(line: 502, column: 17, scope: !1387, inlinedAt: !1497)
!1508 = !DILocation(line: 502, column: 13, scope: !1387, inlinedAt: !1497)
!1509 = !DILocation(line: 502, column: 13, scope: !1383, inlinedAt: !1497)
!1510 = !DILocation(line: 502, column: 28, scope: !1387, inlinedAt: !1497)
!1511 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 503, column: 9, scope: !1383, inlinedAt: !1497)
!1513 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1512)
!1515 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1514)
!1516 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1514)
!1517 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1514)
!1518 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1514)
!1519 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !1514)
!1520 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1514)
!1521 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1514)
!1522 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1512)
!1523 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1512)
!1524 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1512)
!1525 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1512)
!1527 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1526)
!1528 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1526)
!1529 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1526)
!1530 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1526)
!1531 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1526)
!1532 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1526)
!1533 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1526)
!1534 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1526)
!1535 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1526)
!1536 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1526)
!1537 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1526)
!1538 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1526)
!1539 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1526)
!1540 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1526)
!1541 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1512)
!1542 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1512)
!1543 = !DILocation(line: 508, column: 14, scope: !1367, inlinedAt: !1497)
!1544 = !DILocation(line: 509, column: 13, scope: !1425, inlinedAt: !1497)
!1545 = !DILocation(line: 509, column: 9, scope: !1425, inlinedAt: !1497)
!1546 = !DILocation(line: 509, column: 9, scope: !1367, inlinedAt: !1497)
!1547 = !DILocation(line: 509, column: 24, scope: !1425, inlinedAt: !1497)
!1548 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1512)
!1549 = !DILocation(line: 543, column: 13, scope: !1499)
!1550 = !DILocation(line: 546, column: 18, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 546, column: 13)
!1552 = !DILocation(line: 546, column: 24, scope: !1551)
!1553 = !DILocation(line: 546, column: 13, scope: !1499)
!1554 = !DILocation(line: 550, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 550, column: 9)
!1556 = !DILocation(line: 550, column: 35, scope: !1555)
!1557 = !DILocation(line: 550, column: 9, scope: !1482)
!1558 = !DILocation(line: 331, column: 55, scope: !881, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 551, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 550, column: 49)
!1561 = !DILocation(line: 144, column: 54, scope: !297, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 335, column: 5, scope: !881, inlinedAt: !1559)
!1563 = !DILocation(line: 148, column: 19, scope: !297, inlinedAt: !1562)
!1564 = !DILocation(line: 149, column: 18, scope: !297, inlinedAt: !1562)
!1565 = !DILocation(line: 149, column: 9, scope: !297, inlinedAt: !1562)
!1566 = !DILocation(line: 149, column: 13, scope: !297, inlinedAt: !1562)
!1567 = !DILocation(line: 150, column: 18, scope: !297, inlinedAt: !1562)
!1568 = !DILocation(line: 150, column: 9, scope: !297, inlinedAt: !1562)
!1569 = !DILocation(line: 150, column: 16, scope: !297, inlinedAt: !1562)
!1570 = !DILocation(line: 337, column: 17, scope: !896, inlinedAt: !1559)
!1571 = !DILocation(line: 337, column: 9, scope: !881, inlinedAt: !1559)
!1572 = !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1559)
!1573 = !DILocation(line: 249, column: 52, scope: !611, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 339, column: 9, scope: !1082, inlinedAt: !1559)
!1575 = !DILocation(line: 249, column: 73, scope: !611, inlinedAt: !1574)
!1576 = !DILocation(line: 250, column: 31, scope: !611, inlinedAt: !1574)
!1577 = !DILocation(line: 250, column: 20, scope: !611, inlinedAt: !1574)
!1578 = !DILocation(line: 251, column: 12, scope: !625, inlinedAt: !1574)
!1579 = !DILocation(line: 251, column: 9, scope: !611, inlinedAt: !1574)
!1580 = !DILocation(line: 252, column: 26, scope: !636, inlinedAt: !1574)
!1581 = !DILocation(line: 252, column: 20, scope: !636, inlinedAt: !1574)
!1582 = !DILocation(line: 253, column: 25, scope: !641, inlinedAt: !1574)
!1583 = !DILocation(line: 253, column: 16, scope: !641, inlinedAt: !1574)
!1584 = !DILocation(line: 253, column: 13, scope: !636, inlinedAt: !1574)
!1585 = !DILocation(line: 254, column: 24, scope: !641, inlinedAt: !1574)
!1586 = !DILocation(line: 254, column: 13, scope: !641, inlinedAt: !1574)
!1587 = !DILocation(line: 259, column: 14, scope: !636, inlinedAt: !1574)
!1588 = !DILocation(line: 259, column: 9, scope: !636, inlinedAt: !1574)
!1589 = !DILocation(line: 332, column: 19, scope: !881, inlinedAt: !1559)
!1590 = !DILocation(line: 343, column: 18, scope: !900, inlinedAt: !1559)
!1591 = !DILocation(line: 348, column: 5, scope: !881, inlinedAt: !1559)
!1592 = !DILocation(line: 552, column: 5, scope: !1560)
!1593 = !DILocation(line: 554, column: 14, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 554, column: 13)
!1595 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 552, column: 12)
!1596 = !DILocation(line: 0, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 555, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 555, column: 13)
!1599 = !DILocation(line: 554, column: 13, scope: !1595)
!1600 = !DILocation(line: 555, column: 13, scope: !1597)
!1601 = !DILocation(line: 555, column: 13, scope: !1598)
!1602 = !DILocation(line: 557, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 557, column: 13)
!1604 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 557, column: 13)
!1605 = !{!317, !311, i64 264}
!1606 = !DILocation(line: 557, column: 13, scope: !1604)
!1607 = !DILocation(line: 560, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 560, column: 9)
!1609 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 560, column: 9)
!1610 = !DILocation(line: 560, column: 9, scope: !1609)
!1611 = !DILocation(line: 562, column: 1, scope: !1482)
!1612 = distinct !DISubprogram(name: "redisvAsyncCommand", scope: !3, file: !3, line: 650, type: !1613, isLocal: false, isDefinition: true, scopeLine: 650, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1622)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!18, !113, !241, !12, !273, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 562, size: 192, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1616, file: !3, line: 562, baseType: !7, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1616, file: !3, line: 562, baseType: !7, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1616, file: !3, line: 562, baseType: !12, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1616, file: !3, line: 562, baseType: !12, size: 64, offset: 128)
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1623 = !DILocalVariable(name: "ac", arg: 1, scope: !1612, file: !3, line: 650, type: !113)
!1624 = !DILocalVariable(name: "fn", arg: 2, scope: !1612, file: !3, line: 650, type: !241)
!1625 = !DILocalVariable(name: "privdata", arg: 3, scope: !1612, file: !3, line: 650, type: !12)
!1626 = !DILocalVariable(name: "format", arg: 4, scope: !1612, file: !3, line: 650, type: !273)
!1627 = !DILocalVariable(name: "ap", arg: 5, scope: !1612, file: !3, line: 650, type: !1615)
!1628 = !DILocalVariable(name: "cmd", scope: !1612, file: !3, line: 651, type: !28)
!1629 = !DILocalVariable(name: "len", scope: !1612, file: !3, line: 652, type: !18)
!1630 = !DILocalVariable(name: "status", scope: !1612, file: !3, line: 653, type: !18)
!1631 = !DILocation(line: 650, column: 43, scope: !1612)
!1632 = !DILocation(line: 650, column: 64, scope: !1612)
!1633 = !DILocation(line: 650, column: 74, scope: !1612)
!1634 = !DILocation(line: 650, column: 96, scope: !1612)
!1635 = !DILocation(line: 650, column: 112, scope: !1612)
!1636 = !DILocation(line: 651, column: 5, scope: !1612)
!1637 = !DILocation(line: 651, column: 11, scope: !1612)
!1638 = !DILocation(line: 654, column: 11, scope: !1612)
!1639 = !DILocation(line: 652, column: 9, scope: !1612)
!1640 = !DILocation(line: 657, column: 13, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 657, column: 9)
!1642 = !DILocation(line: 657, column: 9, scope: !1612)
!1643 = !DILocation(line: 660, column: 49, scope: !1612)
!1644 = !DILocation(line: 660, column: 53, scope: !1612)
!1645 = !DILocation(line: 660, column: 14, scope: !1612)
!1646 = !DILocation(line: 653, column: 9, scope: !1612)
!1647 = !DILocation(line: 661, column: 10, scope: !1612)
!1648 = !DILocation(line: 661, column: 5, scope: !1612)
!1649 = !DILocation(line: 662, column: 5, scope: !1612)
!1650 = !DILocation(line: 0, scope: !1612)
!1651 = !DILocation(line: 663, column: 1, scope: !1612)
!1652 = distinct !DISubprogram(name: "__redisAsyncCommand", scope: !3, file: !3, line: 583, type: !1653, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!18, !113, !241, !12, !273, !22}
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1656 = !DILocalVariable(name: "ac", arg: 1, scope: !1652, file: !3, line: 583, type: !113)
!1657 = !DILocalVariable(name: "fn", arg: 2, scope: !1652, file: !3, line: 583, type: !241)
!1658 = !DILocalVariable(name: "privdata", arg: 3, scope: !1652, file: !3, line: 583, type: !12)
!1659 = !DILocalVariable(name: "cmd", arg: 4, scope: !1652, file: !3, line: 583, type: !273)
!1660 = !DILocalVariable(name: "len", arg: 5, scope: !1652, file: !3, line: 583, type: !22)
!1661 = !DILocalVariable(name: "c", scope: !1652, file: !3, line: 584, type: !279)
!1662 = !DILocalVariable(name: "cb", scope: !1652, file: !3, line: 585, type: !235)
!1663 = !DILocalVariable(name: "pvariant", scope: !1652, file: !3, line: 586, type: !18)
!1664 = !DILocalVariable(name: "hasnext", scope: !1652, file: !3, line: 586, type: !18)
!1665 = !DILocalVariable(name: "cstr", scope: !1652, file: !3, line: 587, type: !273)
!1666 = !DILocalVariable(name: "astr", scope: !1652, file: !3, line: 587, type: !273)
!1667 = !DILocalVariable(name: "clen", scope: !1652, file: !3, line: 588, type: !22)
!1668 = !DILocalVariable(name: "alen", scope: !1652, file: !3, line: 588, type: !22)
!1669 = !DILocalVariable(name: "p", scope: !1652, file: !3, line: 589, type: !273)
!1670 = !DILocalVariable(name: "sname", scope: !1652, file: !3, line: 590, type: !37)
!1671 = !DILocalVariable(name: "ret", scope: !1652, file: !3, line: 591, type: !18)
!1672 = !DILocalVariable(name: "__x", scope: !1673, file: !3, line: 604, type: !274)
!1673 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 604, column: 17)
!1674 = !DILocation(line: 583, column: 51, scope: !1652)
!1675 = !DILocation(line: 583, column: 72, scope: !1652)
!1676 = !DILocation(line: 583, column: 82, scope: !1652)
!1677 = !DILocation(line: 583, column: 104, scope: !1652)
!1678 = !DILocation(line: 583, column: 116, scope: !1652)
!1679 = !DILocation(line: 584, column: 29, scope: !1652)
!1680 = !DILocation(line: 584, column: 19, scope: !1652)
!1681 = !DILocation(line: 585, column: 5, scope: !1652)
!1682 = !DILocation(line: 594, column: 12, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 594, column: 9)
!1684 = !DILocation(line: 594, column: 18, scope: !1683)
!1685 = !DILocation(line: 594, column: 9, scope: !1652)
!1686 = !DILocation(line: 597, column: 8, scope: !1652)
!1687 = !DILocation(line: 597, column: 11, scope: !1652)
!1688 = !DILocation(line: 598, column: 8, scope: !1652)
!1689 = !DILocation(line: 598, column: 17, scope: !1652)
!1690 = !DILocalVariable(name: "start", arg: 1, scope: !1691, file: !3, line: 566, type: !273)
!1691 = distinct !DISubprogram(name: "nextArgument", scope: !3, file: !3, line: 566, type: !1692, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1696)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!273, !273, !1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1696 = !{!1690, !1697, !1698, !1699}
!1697 = !DILocalVariable(name: "str", arg: 2, scope: !1691, file: !3, line: 566, type: !1694)
!1698 = !DILocalVariable(name: "len", arg: 3, scope: !1691, file: !3, line: 566, type: !1695)
!1699 = !DILocalVariable(name: "p", scope: !1691, file: !3, line: 567, type: !273)
!1700 = !DILocation(line: 566, column: 45, scope: !1691, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 601, column: 9, scope: !1652)
!1702 = !DILocation(line: 567, column: 17, scope: !1691, inlinedAt: !1701)
!1703 = !DILocation(line: 568, column: 9, scope: !1704, inlinedAt: !1701)
!1704 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 568, column: 9)
!1705 = !DILocation(line: 568, column: 14, scope: !1704, inlinedAt: !1701)
!1706 = !DILocation(line: 568, column: 9, scope: !1691, inlinedAt: !1701)
!1707 = !DILocation(line: 569, column: 13, scope: !1708, inlinedAt: !1701)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 568, column: 22)
!1709 = !DILocation(line: 570, column: 15, scope: !1710, inlinedAt: !1701)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 570, column: 13)
!1711 = !DILocation(line: 570, column: 13, scope: !1708, inlinedAt: !1701)
!1712 = !DILocation(line: 0, scope: !1691, inlinedAt: !1701)
!1713 = !DILocation(line: 573, column: 25, scope: !1691, inlinedAt: !1701)
!1714 = !DILocation(line: 573, column: 17, scope: !1691, inlinedAt: !1701)
!1715 = !DILocation(line: 574, column: 9, scope: !1691, inlinedAt: !1701)
!1716 = !DILocation(line: 575, column: 5, scope: !1691, inlinedAt: !1701)
!1717 = !DILocation(line: 589, column: 17, scope: !1652)
!1718 = !DILocation(line: 602, column: 5, scope: !1652)
!1719 = !DILocation(line: 573, column: 12, scope: !1691, inlinedAt: !1701)
!1720 = !DILocation(line: 576, column: 13, scope: !1691, inlinedAt: !1701)
!1721 = !DILocation(line: 577, column: 15, scope: !1691, inlinedAt: !1701)
!1722 = !DILocation(line: 577, column: 22, scope: !1691, inlinedAt: !1701)
!1723 = !DILocation(line: 603, column: 16, scope: !1652)
!1724 = !DILocation(line: 603, column: 21, scope: !1652)
!1725 = !DILocation(line: 587, column: 17, scope: !1652)
!1726 = !DILocation(line: 604, column: 17, scope: !1673)
!1727 = !DILocation(line: 604, column: 34, scope: !1652)
!1728 = !DILocation(line: 605, column: 10, scope: !1652)
!1729 = !DILocation(line: 588, column: 12, scope: !1652)
!1730 = !DILocation(line: 608, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 608, column: 9)
!1732 = !DILocation(line: 608, column: 20, scope: !1731)
!1733 = !DILocation(line: 608, column: 57, scope: !1731)
!1734 = !DILocation(line: 608, column: 9, scope: !1652)
!1735 = !DILocation(line: 609, column: 18, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 608, column: 63)
!1737 = !DILocation(line: 612, column: 9, scope: !1736)
!1738 = !DILocation(line: 0, scope: !1736)
!1739 = !DILocation(line: 566, column: 45, scope: !1691, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 612, column: 21, scope: !1736)
!1741 = !DILocation(line: 567, column: 17, scope: !1691, inlinedAt: !1740)
!1742 = !DILocation(line: 568, column: 9, scope: !1704, inlinedAt: !1740)
!1743 = !DILocation(line: 568, column: 14, scope: !1704, inlinedAt: !1740)
!1744 = !DILocation(line: 568, column: 9, scope: !1691, inlinedAt: !1740)
!1745 = !DILocation(line: 569, column: 13, scope: !1708, inlinedAt: !1740)
!1746 = !DILocation(line: 570, column: 15, scope: !1710, inlinedAt: !1740)
!1747 = !DILocation(line: 570, column: 13, scope: !1708, inlinedAt: !1740)
!1748 = !DILocation(line: 0, scope: !1691, inlinedAt: !1740)
!1749 = !DILocation(line: 573, column: 25, scope: !1691, inlinedAt: !1740)
!1750 = !DILocation(line: 573, column: 17, scope: !1691, inlinedAt: !1740)
!1751 = !DILocation(line: 573, column: 12, scope: !1691, inlinedAt: !1740)
!1752 = !DILocation(line: 574, column: 9, scope: !1691, inlinedAt: !1740)
!1753 = !DILocation(line: 575, column: 5, scope: !1691, inlinedAt: !1740)
!1754 = !DILocation(line: 576, column: 13, scope: !1691, inlinedAt: !1740)
!1755 = !DILocation(line: 577, column: 15, scope: !1691, inlinedAt: !1740)
!1756 = !DILocation(line: 577, column: 22, scope: !1691, inlinedAt: !1740)
!1757 = !DILocation(line: 587, column: 24, scope: !1652)
!1758 = !DILocation(line: 588, column: 18, scope: !1652)
!1759 = !DILocation(line: 613, column: 21, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 612, column: 59)
!1761 = !DILocation(line: 590, column: 9, scope: !1652)
!1762 = !DILocation(line: 591, column: 9, scope: !1652)
!1763 = !DILocation(line: 0, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 614, column: 17)
!1765 = !DILocation(line: 619, column: 21, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 619, column: 17)
!1767 = !DILocation(line: 619, column: 17, scope: !1760)
!1768 = !DILocation(line: 619, column: 27, scope: !1766)
!1769 = distinct !{!1769, !1737, !1770}
!1770 = !DILocation(line: 620, column: 9, scope: !1736)
!1771 = !DILocation(line: 621, column: 16, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 621, column: 16)
!1773 = !DILocation(line: 621, column: 55, scope: !1772)
!1774 = !DILocation(line: 621, column: 16, scope: !1731)
!1775 = !DILocation(line: 624, column: 18, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 624, column: 13)
!1777 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 621, column: 61)
!1778 = !DILocation(line: 624, column: 24, scope: !1776)
!1779 = !DILocation(line: 624, column: 13, scope: !1777)
!1780 = !DILocation(line: 629, column: 16, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 629, column: 16)
!1782 = !DILocation(line: 629, column: 50, scope: !1781)
!1783 = !DILocation(line: 0, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 634, column: 13)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 633, column: 12)
!1786 = !DILocation(line: 629, column: 16, scope: !1772)
!1787 = !DILocation(line: 631, column: 19, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 629, column: 56)
!1789 = !DILocation(line: 632, column: 35, scope: !1788)
!1790 = !DILocation(line: 585, column: 19, scope: !1652)
!1791 = !DILocation(line: 227, column: 51, scope: !992, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 632, column: 10, scope: !1788)
!1793 = !DILocation(line: 227, column: 72, scope: !992, inlinedAt: !1792)
!1794 = !DILocation(line: 231, column: 10, scope: !992, inlinedAt: !1792)
!1795 = !DILocation(line: 228, column: 20, scope: !992, inlinedAt: !1792)
!1796 = !DILocation(line: 232, column: 12, scope: !1003, inlinedAt: !1792)
!1797 = !DILocation(line: 232, column: 9, scope: !992, inlinedAt: !1792)
!1798 = !DILocation(line: 236, column: 9, scope: !1006, inlinedAt: !1792)
!1799 = !DILocation(line: 237, column: 13, scope: !1006, inlinedAt: !1792)
!1800 = !DILocation(line: 237, column: 18, scope: !1006, inlinedAt: !1792)
!1801 = !DILocation(line: 241, column: 15, scope: !1011, inlinedAt: !1792)
!1802 = !DILocation(line: 241, column: 20, scope: !1011, inlinedAt: !1792)
!1803 = !DILocation(line: 241, column: 9, scope: !992, inlinedAt: !1792)
!1804 = !DILocation(line: 242, column: 20, scope: !1011, inlinedAt: !1792)
!1805 = !DILocation(line: 242, column: 9, scope: !1011, inlinedAt: !1792)
!1806 = !DILocation(line: 243, column: 15, scope: !1017, inlinedAt: !1792)
!1807 = !DILocation(line: 243, column: 20, scope: !1017, inlinedAt: !1792)
!1808 = !DILocation(line: 243, column: 9, scope: !992, inlinedAt: !1792)
!1809 = !DILocation(line: 244, column: 26, scope: !1017, inlinedAt: !1792)
!1810 = !DILocation(line: 244, column: 9, scope: !1017, inlinedAt: !1792)
!1811 = !DILocation(line: 245, column: 16, scope: !992, inlinedAt: !1792)
!1812 = !DILocation(line: 246, column: 5, scope: !992, inlinedAt: !1792)
!1813 = !DILocation(line: 634, column: 22, scope: !1784)
!1814 = !DILocation(line: 634, column: 13, scope: !1785)
!1815 = !DILocation(line: 637, column: 42, scope: !1784)
!1816 = !DILocation(line: 227, column: 51, scope: !992, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 637, column: 13, scope: !1784)
!1818 = !DILocation(line: 227, column: 72, scope: !992, inlinedAt: !1817)
!1819 = !DILocation(line: 231, column: 10, scope: !992, inlinedAt: !1817)
!1820 = !DILocation(line: 228, column: 20, scope: !992, inlinedAt: !1817)
!1821 = !DILocation(line: 232, column: 12, scope: !1003, inlinedAt: !1817)
!1822 = !DILocation(line: 232, column: 9, scope: !992, inlinedAt: !1817)
!1823 = !DILocation(line: 236, column: 9, scope: !1006, inlinedAt: !1817)
!1824 = !DILocation(line: 237, column: 13, scope: !1006, inlinedAt: !1817)
!1825 = !DILocation(line: 237, column: 18, scope: !1006, inlinedAt: !1817)
!1826 = !DILocation(line: 241, column: 15, scope: !1011, inlinedAt: !1817)
!1827 = !DILocation(line: 241, column: 20, scope: !1011, inlinedAt: !1817)
!1828 = !DILocation(line: 241, column: 9, scope: !992, inlinedAt: !1817)
!1829 = !DILocation(line: 242, column: 20, scope: !1011, inlinedAt: !1817)
!1830 = !DILocation(line: 242, column: 9, scope: !1011, inlinedAt: !1817)
!1831 = !DILocation(line: 243, column: 15, scope: !1017, inlinedAt: !1817)
!1832 = !DILocation(line: 243, column: 20, scope: !1017, inlinedAt: !1817)
!1833 = !DILocation(line: 243, column: 9, scope: !992, inlinedAt: !1817)
!1834 = !DILocation(line: 244, column: 26, scope: !1017, inlinedAt: !1817)
!1835 = !DILocation(line: 244, column: 9, scope: !1017, inlinedAt: !1817)
!1836 = !DILocation(line: 245, column: 16, scope: !992, inlinedAt: !1817)
!1837 = !DILocation(line: 246, column: 5, scope: !992, inlinedAt: !1817)
!1838 = !DILocation(line: 639, column: 38, scope: !1784)
!1839 = !DILocation(line: 227, column: 51, scope: !992, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 639, column: 13, scope: !1784)
!1841 = !DILocation(line: 227, column: 72, scope: !992, inlinedAt: !1840)
!1842 = !DILocation(line: 231, column: 10, scope: !992, inlinedAt: !1840)
!1843 = !DILocation(line: 228, column: 20, scope: !992, inlinedAt: !1840)
!1844 = !DILocation(line: 232, column: 12, scope: !1003, inlinedAt: !1840)
!1845 = !DILocation(line: 232, column: 9, scope: !992, inlinedAt: !1840)
!1846 = !DILocation(line: 236, column: 9, scope: !1006, inlinedAt: !1840)
!1847 = !DILocation(line: 237, column: 13, scope: !1006, inlinedAt: !1840)
!1848 = !DILocation(line: 237, column: 18, scope: !1006, inlinedAt: !1840)
!1849 = !DILocation(line: 241, column: 15, scope: !1011, inlinedAt: !1840)
!1850 = !DILocation(line: 241, column: 20, scope: !1011, inlinedAt: !1840)
!1851 = !DILocation(line: 241, column: 9, scope: !992, inlinedAt: !1840)
!1852 = !DILocation(line: 242, column: 20, scope: !1011, inlinedAt: !1840)
!1853 = !DILocation(line: 242, column: 9, scope: !1011, inlinedAt: !1840)
!1854 = !DILocation(line: 243, column: 15, scope: !1017, inlinedAt: !1840)
!1855 = !DILocation(line: 243, column: 20, scope: !1017, inlinedAt: !1840)
!1856 = !DILocation(line: 243, column: 9, scope: !992, inlinedAt: !1840)
!1857 = !DILocation(line: 244, column: 26, scope: !1017, inlinedAt: !1840)
!1858 = !DILocation(line: 244, column: 9, scope: !1017, inlinedAt: !1840)
!1859 = !DILocation(line: 245, column: 16, scope: !992, inlinedAt: !1840)
!1860 = !DILocation(line: 246, column: 5, scope: !992, inlinedAt: !1840)
!1861 = !DILocation(line: 642, column: 5, scope: !1652)
!1862 = !DILocation(line: 645, column: 5, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 645, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 645, column: 5)
!1865 = !DILocation(line: 645, column: 5, scope: !1864)
!1866 = !DILocation(line: 0, scope: !1776)
!1867 = !DILocation(line: 648, column: 1, scope: !1652)
!1868 = distinct !DISubprogram(name: "redisAsyncCommand", scope: !3, file: !3, line: 665, type: !1869, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!18, !113, !241, !12, !273, null}
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1885}
!1872 = !DILocalVariable(name: "ac", arg: 1, scope: !1868, file: !3, line: 665, type: !113)
!1873 = !DILocalVariable(name: "fn", arg: 2, scope: !1868, file: !3, line: 665, type: !241)
!1874 = !DILocalVariable(name: "privdata", arg: 3, scope: !1868, file: !3, line: 665, type: !12)
!1875 = !DILocalVariable(name: "format", arg: 4, scope: !1868, file: !3, line: 665, type: !273)
!1876 = !DILocalVariable(name: "ap", scope: !1868, file: !3, line: 666, type: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1878, line: 46, baseType: !1879)
!1878 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1880, line: 51, baseType: !1881)
!1880 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 666, baseType: !1882)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 192, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 1)
!1885 = !DILocalVariable(name: "status", scope: !1868, file: !3, line: 667, type: !18)
!1886 = !DILocation(line: 665, column: 42, scope: !1868)
!1887 = !DILocation(line: 665, column: 63, scope: !1868)
!1888 = !DILocation(line: 665, column: 73, scope: !1868)
!1889 = !DILocation(line: 665, column: 95, scope: !1868)
!1890 = !DILocation(line: 666, column: 5, scope: !1868)
!1891 = !DILocation(line: 666, column: 13, scope: !1868)
!1892 = !DILocation(line: 668, column: 5, scope: !1868)
!1893 = !DILocation(line: 650, column: 43, scope: !1612, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 669, column: 14, scope: !1868)
!1895 = !DILocation(line: 650, column: 64, scope: !1612, inlinedAt: !1894)
!1896 = !DILocation(line: 650, column: 74, scope: !1612, inlinedAt: !1894)
!1897 = !DILocation(line: 650, column: 96, scope: !1612, inlinedAt: !1894)
!1898 = !DILocation(line: 650, column: 112, scope: !1612, inlinedAt: !1894)
!1899 = !DILocation(line: 651, column: 5, scope: !1612, inlinedAt: !1894)
!1900 = !DILocation(line: 651, column: 11, scope: !1612, inlinedAt: !1894)
!1901 = !DILocation(line: 654, column: 11, scope: !1612, inlinedAt: !1894)
!1902 = !DILocation(line: 652, column: 9, scope: !1612, inlinedAt: !1894)
!1903 = !DILocation(line: 657, column: 13, scope: !1641, inlinedAt: !1894)
!1904 = !DILocation(line: 657, column: 9, scope: !1612, inlinedAt: !1894)
!1905 = !DILocation(line: 660, column: 49, scope: !1612, inlinedAt: !1894)
!1906 = !DILocation(line: 660, column: 53, scope: !1612, inlinedAt: !1894)
!1907 = !DILocation(line: 660, column: 14, scope: !1612, inlinedAt: !1894)
!1908 = !DILocation(line: 653, column: 9, scope: !1612, inlinedAt: !1894)
!1909 = !DILocation(line: 661, column: 10, scope: !1612, inlinedAt: !1894)
!1910 = !DILocation(line: 661, column: 5, scope: !1612, inlinedAt: !1894)
!1911 = !DILocation(line: 662, column: 5, scope: !1612, inlinedAt: !1894)
!1912 = !DILocation(line: 0, scope: !1612, inlinedAt: !1894)
!1913 = !DILocation(line: 663, column: 1, scope: !1612, inlinedAt: !1894)
!1914 = !DILocation(line: 667, column: 9, scope: !1868)
!1915 = !DILocation(line: 670, column: 5, scope: !1868)
!1916 = !DILocation(line: 672, column: 1, scope: !1868)
!1917 = !DILocation(line: 671, column: 5, scope: !1868)
!1918 = distinct !DISubprogram(name: "redisAsyncCommandArgv", scope: !3, file: !3, line: 674, type: !1919, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1923)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!18, !113, !241, !12, !18, !1694, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1924 = !DILocalVariable(name: "ac", arg: 1, scope: !1918, file: !3, line: 674, type: !113)
!1925 = !DILocalVariable(name: "fn", arg: 2, scope: !1918, file: !3, line: 674, type: !241)
!1926 = !DILocalVariable(name: "privdata", arg: 3, scope: !1918, file: !3, line: 674, type: !12)
!1927 = !DILocalVariable(name: "argc", arg: 4, scope: !1918, file: !3, line: 674, type: !18)
!1928 = !DILocalVariable(name: "argv", arg: 5, scope: !1918, file: !3, line: 674, type: !1694)
!1929 = !DILocalVariable(name: "argvlen", arg: 6, scope: !1918, file: !3, line: 674, type: !1921)
!1930 = !DILocalVariable(name: "cmd", scope: !1918, file: !3, line: 675, type: !37)
!1931 = !DILocalVariable(name: "len", scope: !1918, file: !3, line: 676, type: !18)
!1932 = !DILocalVariable(name: "status", scope: !1918, file: !3, line: 677, type: !18)
!1933 = !DILocation(line: 674, column: 46, scope: !1918)
!1934 = !DILocation(line: 674, column: 67, scope: !1918)
!1935 = !DILocation(line: 674, column: 77, scope: !1918)
!1936 = !DILocation(line: 674, column: 91, scope: !1918)
!1937 = !DILocation(line: 674, column: 110, scope: !1918)
!1938 = !DILocation(line: 674, column: 130, scope: !1918)
!1939 = !DILocation(line: 675, column: 5, scope: !1918)
!1940 = !DILocation(line: 675, column: 9, scope: !1918)
!1941 = !DILocation(line: 678, column: 11, scope: !1918)
!1942 = !DILocation(line: 676, column: 9, scope: !1918)
!1943 = !DILocation(line: 679, column: 49, scope: !1918)
!1944 = !DILocation(line: 679, column: 53, scope: !1918)
!1945 = !DILocation(line: 679, column: 14, scope: !1918)
!1946 = !DILocation(line: 677, column: 9, scope: !1918)
!1947 = !DILocation(line: 680, column: 13, scope: !1918)
!1948 = !DILocation(line: 680, column: 5, scope: !1918)
!1949 = !DILocation(line: 682, column: 1, scope: !1918)
!1950 = !DILocation(line: 681, column: 5, scope: !1918)
!1951 = distinct !DISubprogram(name: "redisAsyncFormattedCommand", scope: !3, file: !3, line: 684, type: !1653, isLocal: false, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958}
!1953 = !DILocalVariable(name: "ac", arg: 1, scope: !1951, file: !3, line: 684, type: !113)
!1954 = !DILocalVariable(name: "fn", arg: 2, scope: !1951, file: !3, line: 684, type: !241)
!1955 = !DILocalVariable(name: "privdata", arg: 3, scope: !1951, file: !3, line: 684, type: !12)
!1956 = !DILocalVariable(name: "cmd", arg: 4, scope: !1951, file: !3, line: 684, type: !273)
!1957 = !DILocalVariable(name: "len", arg: 5, scope: !1951, file: !3, line: 684, type: !22)
!1958 = !DILocalVariable(name: "status", scope: !1951, file: !3, line: 685, type: !18)
!1959 = !DILocation(line: 684, column: 51, scope: !1951)
!1960 = !DILocation(line: 684, column: 72, scope: !1951)
!1961 = !DILocation(line: 684, column: 82, scope: !1951)
!1962 = !DILocation(line: 684, column: 104, scope: !1951)
!1963 = !DILocation(line: 684, column: 116, scope: !1951)
!1964 = !DILocation(line: 685, column: 18, scope: !1951)
!1965 = !DILocation(line: 685, column: 9, scope: !1951)
!1966 = !DILocation(line: 686, column: 5, scope: !1951)
!1967 = distinct !DISubprogram(name: "callbackHash", scope: !3, file: !3, line: 64, type: !88, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1968)
!1968 = !{!1969}
!1969 = !DILocalVariable(name: "key", arg: 1, scope: !1967, file: !3, line: 64, type: !90)
!1970 = !DILocation(line: 64, column: 46, scope: !1967)
!1971 = !DILocation(line: 86, column: 39, scope: !934, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 66, column: 32, scope: !1967)
!1973 = !DILocation(line: 87, column: 27, scope: !934, inlinedAt: !1972)
!1974 = !DILocation(line: 87, column: 19, scope: !934, inlinedAt: !1972)
!1975 = !DILocation(line: 88, column: 5, scope: !934, inlinedAt: !1972)
!1976 = !DILocation(line: 90, column: 20, scope: !947, inlinedAt: !1972)
!1977 = !DILocation(line: 90, column: 13, scope: !947, inlinedAt: !1972)
!1978 = !DILocation(line: 92, column: 20, scope: !947, inlinedAt: !1972)
!1979 = !DILocation(line: 92, column: 34, scope: !947, inlinedAt: !1972)
!1980 = !DILocation(line: 92, column: 13, scope: !947, inlinedAt: !1972)
!1981 = !DILocation(line: 94, column: 20, scope: !947, inlinedAt: !1972)
!1982 = !DILocation(line: 94, column: 35, scope: !947, inlinedAt: !1972)
!1983 = !DILocation(line: 94, column: 13, scope: !947, inlinedAt: !1972)
!1984 = !DILocation(line: 96, column: 20, scope: !947, inlinedAt: !1972)
!1985 = !DILocation(line: 96, column: 35, scope: !947, inlinedAt: !1972)
!1986 = !DILocation(line: 96, column: 13, scope: !947, inlinedAt: !1972)
!1987 = !DILocation(line: 98, column: 20, scope: !947, inlinedAt: !1972)
!1988 = !DILocation(line: 98, column: 35, scope: !947, inlinedAt: !1972)
!1989 = !DILocation(line: 98, column: 13, scope: !947, inlinedAt: !1972)
!1990 = !DILocation(line: 0, scope: !947, inlinedAt: !1972)
!1991 = !DILocation(line: 66, column: 32, scope: !1967)
!1992 = !DILocalVariable(name: "buf", arg: 1, scope: !1993, file: !368, line: 53, type: !34)
!1993 = distinct !DISubprogram(name: "dictGenHashFunction", scope: !368, file: !368, line: 53, type: !1994, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!7, !34, !18}
!1996 = !{!1992, !1997, !1998}
!1997 = !DILocalVariable(name: "len", arg: 2, scope: !1993, file: !368, line: 53, type: !18)
!1998 = !DILocalVariable(name: "hash", scope: !1993, file: !368, line: 54, type: !7)
!1999 = !DILocation(line: 53, column: 62, scope: !1993, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 65, column: 12, scope: !1967)
!2001 = !DILocation(line: 53, column: 71, scope: !1993, inlinedAt: !2000)
!2002 = !DILocation(line: 54, column: 18, scope: !1993, inlinedAt: !2000)
!2003 = !DILocation(line: 56, column: 5, scope: !1993, inlinedAt: !2000)
!2004 = !DILocation(line: 56, column: 15, scope: !1993, inlinedAt: !2000)
!2005 = !DILocation(line: 57, column: 29, scope: !1993, inlinedAt: !2000)
!2006 = !DILocation(line: 57, column: 44, scope: !1993, inlinedAt: !2000)
!2007 = !DILocation(line: 57, column: 40, scope: !1993, inlinedAt: !2000)
!2008 = !DILocation(line: 57, column: 39, scope: !1993, inlinedAt: !2000)
!2009 = !DILocation(line: 57, column: 37, scope: !1993, inlinedAt: !2000)
!2010 = distinct !{!2010, !2011, !2012}
!2011 = !DILocation(line: 56, column: 5, scope: !1993)
!2012 = !DILocation(line: 57, column: 46, scope: !1993)
!2013 = distinct !{!2013, !2014}
!2014 = !{!"llvm.loop.unroll.disable"}
!2015 = !DILocation(line: 0, scope: !1993, inlinedAt: !2000)
!2016 = !DILocation(line: 65, column: 5, scope: !1967)
!2017 = distinct !DISubprogram(name: "callbackValDup", scope: !3, file: !3, line: 69, type: !94, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DILocalVariable(name: "privdata", arg: 1, scope: !2017, file: !3, line: 69, type: !12)
!2020 = !DILocalVariable(name: "src", arg: 2, scope: !2017, file: !3, line: 69, type: !90)
!2021 = !DILocalVariable(name: "dup", scope: !2017, file: !3, line: 71, type: !234)
!2022 = !DILocation(line: 69, column: 35, scope: !2017)
!2023 = !DILocation(line: 69, column: 57, scope: !2017)
!2024 = !DILocation(line: 71, column: 26, scope: !2017)
!2025 = !DILocation(line: 71, column: 20, scope: !2017)
!2026 = !DILocation(line: 72, column: 5, scope: !2017)
!2027 = !DILocation(line: 73, column: 5, scope: !2017)
!2028 = distinct !DISubprogram(name: "callbackKeyCompare", scope: !3, file: !3, line: 76, type: !99, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034}
!2030 = !DILocalVariable(name: "privdata", arg: 1, scope: !2028, file: !3, line: 76, type: !12)
!2031 = !DILocalVariable(name: "key1", arg: 2, scope: !2028, file: !3, line: 76, type: !90)
!2032 = !DILocalVariable(name: "key2", arg: 3, scope: !2028, file: !3, line: 76, type: !90)
!2033 = !DILocalVariable(name: "l1", scope: !2028, file: !3, line: 77, type: !18)
!2034 = !DILocalVariable(name: "l2", scope: !2028, file: !3, line: 77, type: !18)
!2035 = !DILocation(line: 76, column: 37, scope: !2028)
!2036 = !DILocation(line: 76, column: 59, scope: !2028)
!2037 = !DILocation(line: 76, column: 77, scope: !2028)
!2038 = !DILocation(line: 86, column: 39, scope: !934, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 80, column: 10, scope: !2028)
!2040 = !DILocation(line: 87, column: 27, scope: !934, inlinedAt: !2039)
!2041 = !DILocation(line: 87, column: 19, scope: !934, inlinedAt: !2039)
!2042 = !DILocation(line: 88, column: 5, scope: !934, inlinedAt: !2039)
!2043 = !DILocation(line: 90, column: 20, scope: !947, inlinedAt: !2039)
!2044 = !DILocation(line: 90, column: 13, scope: !947, inlinedAt: !2039)
!2045 = !DILocation(line: 92, column: 20, scope: !947, inlinedAt: !2039)
!2046 = !DILocation(line: 92, column: 34, scope: !947, inlinedAt: !2039)
!2047 = !DILocation(line: 92, column: 13, scope: !947, inlinedAt: !2039)
!2048 = !DILocation(line: 94, column: 20, scope: !947, inlinedAt: !2039)
!2049 = !DILocation(line: 94, column: 35, scope: !947, inlinedAt: !2039)
!2050 = !DILocation(line: 94, column: 13, scope: !947, inlinedAt: !2039)
!2051 = !DILocation(line: 96, column: 20, scope: !947, inlinedAt: !2039)
!2052 = !DILocation(line: 96, column: 35, scope: !947, inlinedAt: !2039)
!2053 = !DILocation(line: 96, column: 13, scope: !947, inlinedAt: !2039)
!2054 = !DILocation(line: 98, column: 20, scope: !947, inlinedAt: !2039)
!2055 = !DILocation(line: 98, column: 35, scope: !947, inlinedAt: !2039)
!2056 = !DILocation(line: 98, column: 13, scope: !947, inlinedAt: !2039)
!2057 = !DILocation(line: 0, scope: !947, inlinedAt: !2039)
!2058 = !DILocation(line: 80, column: 10, scope: !2028)
!2059 = !DILocation(line: 77, column: 9, scope: !2028)
!2060 = !DILocation(line: 86, column: 39, scope: !934, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 81, column: 10, scope: !2028)
!2062 = !DILocation(line: 87, column: 27, scope: !934, inlinedAt: !2061)
!2063 = !DILocation(line: 87, column: 19, scope: !934, inlinedAt: !2061)
!2064 = !DILocation(line: 88, column: 5, scope: !934, inlinedAt: !2061)
!2065 = !DILocation(line: 90, column: 20, scope: !947, inlinedAt: !2061)
!2066 = !DILocation(line: 90, column: 13, scope: !947, inlinedAt: !2061)
!2067 = !DILocation(line: 92, column: 20, scope: !947, inlinedAt: !2061)
!2068 = !DILocation(line: 92, column: 34, scope: !947, inlinedAt: !2061)
!2069 = !DILocation(line: 92, column: 13, scope: !947, inlinedAt: !2061)
!2070 = !DILocation(line: 94, column: 20, scope: !947, inlinedAt: !2061)
!2071 = !DILocation(line: 94, column: 35, scope: !947, inlinedAt: !2061)
!2072 = !DILocation(line: 94, column: 13, scope: !947, inlinedAt: !2061)
!2073 = !DILocation(line: 96, column: 20, scope: !947, inlinedAt: !2061)
!2074 = !DILocation(line: 96, column: 35, scope: !947, inlinedAt: !2061)
!2075 = !DILocation(line: 96, column: 13, scope: !947, inlinedAt: !2061)
!2076 = !DILocation(line: 98, column: 20, scope: !947, inlinedAt: !2061)
!2077 = !DILocation(line: 98, column: 35, scope: !947, inlinedAt: !2061)
!2078 = !DILocation(line: 98, column: 13, scope: !947, inlinedAt: !2061)
!2079 = !DILocation(line: 0, scope: !947, inlinedAt: !2061)
!2080 = !DILocation(line: 81, column: 10, scope: !2028)
!2081 = !DILocation(line: 77, column: 13, scope: !2028)
!2082 = !DILocation(line: 82, column: 12, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 82, column: 9)
!2084 = !DILocation(line: 82, column: 9, scope: !2028)
!2085 = !DILocation(line: 83, column: 29, scope: !2028)
!2086 = !DILocation(line: 83, column: 12, scope: !2028)
!2087 = !DILocation(line: 83, column: 33, scope: !2028)
!2088 = !DILocation(line: 83, column: 5, scope: !2028)
!2089 = !DILocation(line: 0, scope: !2028)
!2090 = !DILocation(line: 84, column: 1, scope: !2028)
!2091 = distinct !DISubprogram(name: "callbackKeyDestructor", scope: !3, file: !3, line: 86, type: !103, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2092)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "privdata", arg: 1, scope: !2091, file: !3, line: 86, type: !12)
!2094 = !DILocalVariable(name: "key", arg: 2, scope: !2091, file: !3, line: 86, type: !12)
!2095 = !DILocation(line: 86, column: 41, scope: !2091)
!2096 = !DILocation(line: 86, column: 57, scope: !2091)
!2097 = !DILocation(line: 88, column: 5, scope: !2091)
!2098 = !DILocation(line: 89, column: 1, scope: !2091)
!2099 = distinct !DISubprogram(name: "callbackValDestructor", scope: !3, file: !3, line: 91, type: !103, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2100)
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "privdata", arg: 1, scope: !2099, file: !3, line: 91, type: !12)
!2102 = !DILocalVariable(name: "val", arg: 2, scope: !2099, file: !3, line: 91, type: !12)
!2103 = !DILocation(line: 91, column: 41, scope: !2099)
!2104 = !DILocation(line: 91, column: 57, scope: !2099)
!2105 = !DILocation(line: 93, column: 5, scope: !2099)
!2106 = !DILocation(line: 94, column: 1, scope: !2099)
!2107 = distinct !DISubprogram(name: "dictRelease", scope: !368, file: !368, line: 238, type: !394, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2108)
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "ht", arg: 1, scope: !2107, file: !368, line: 238, type: !371)
!2110 = !DILocation(line: 238, column: 31, scope: !2107)
!2111 = !DILocalVariable(name: "ht", arg: 1, scope: !2112, file: !368, line: 213, type: !371)
!2112 = distinct !DISubprogram(name: "_dictClear", scope: !368, file: !368, line: 213, type: !2113, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!18, !371}
!2115 = !{!2111, !2116, !2117, !2121}
!2116 = !DILocalVariable(name: "i", scope: !2112, file: !368, line: 214, type: !26)
!2117 = !DILocalVariable(name: "he", scope: !2118, file: !368, line: 218, type: !258)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !368, line: 217, column: 52)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !368, line: 217, column: 5)
!2120 = distinct !DILexicalBlock(scope: !2112, file: !368, line: 217, column: 5)
!2121 = !DILocalVariable(name: "nextHe", scope: !2118, file: !368, line: 218, type: !258)
!2122 = !DILocation(line: 213, column: 29, scope: !2112, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 239, column: 5, scope: !2107)
!2124 = !DILocation(line: 214, column: 19, scope: !2112, inlinedAt: !2123)
!2125 = !DILocation(line: 217, column: 37, scope: !2119, inlinedAt: !2123)
!2126 = !DILocation(line: 217, column: 25, scope: !2119, inlinedAt: !2123)
!2127 = !DILocation(line: 217, column: 19, scope: !2119, inlinedAt: !2123)
!2128 = !DILocation(line: 217, column: 30, scope: !2119, inlinedAt: !2123)
!2129 = !DILocation(line: 217, column: 42, scope: !2119, inlinedAt: !2123)
!2130 = !DILocation(line: 217, column: 5, scope: !2120, inlinedAt: !2123)
!2131 = !DILocation(line: 220, column: 23, scope: !2132, inlinedAt: !2123)
!2132 = distinct !DILexicalBlock(scope: !2118, file: !368, line: 220, column: 13)
!2133 = !DILocation(line: 220, column: 19, scope: !2132, inlinedAt: !2123)
!2134 = !DILocation(line: 218, column: 20, scope: !2118, inlinedAt: !2123)
!2135 = !DILocation(line: 220, column: 33, scope: !2132, inlinedAt: !2123)
!2136 = !DILocation(line: 220, column: 13, scope: !2118, inlinedAt: !2123)
!2137 = !DILocation(line: 222, column: 26, scope: !2138, inlinedAt: !2123)
!2138 = distinct !DILexicalBlock(scope: !2118, file: !368, line: 221, column: 19)
!2139 = !DILocation(line: 218, column: 25, scope: !2118, inlinedAt: !2123)
!2140 = !DILocation(line: 223, column: 13, scope: !2141, inlinedAt: !2123)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !368, line: 223, column: 13)
!2142 = !DILocation(line: 223, column: 13, scope: !2138, inlinedAt: !2123)
!2143 = !DILocation(line: 224, column: 13, scope: !2144, inlinedAt: !2123)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !368, line: 224, column: 13)
!2145 = !DILocation(line: 224, column: 13, scope: !2138, inlinedAt: !2123)
!2146 = !DILocation(line: 225, column: 18, scope: !2138, inlinedAt: !2123)
!2147 = !DILocation(line: 225, column: 13, scope: !2138, inlinedAt: !2123)
!2148 = !DILocation(line: 226, column: 21, scope: !2138, inlinedAt: !2123)
!2149 = !DILocation(line: 221, column: 9, scope: !2118, inlinedAt: !2123)
!2150 = distinct !{!2150, !2151, !2152}
!2151 = !DILocation(line: 221, column: 9, scope: !2118)
!2152 = !DILocation(line: 228, column: 9, scope: !2118)
!2153 = !DILocation(line: 217, column: 48, scope: !2119, inlinedAt: !2123)
!2154 = distinct !{!2154, !2155, !2156}
!2155 = !DILocation(line: 217, column: 5, scope: !2120)
!2156 = !DILocation(line: 229, column: 5, scope: !2120)
!2157 = !DILocation(line: 231, column: 14, scope: !2112, inlinedAt: !2123)
!2158 = !DILocation(line: 231, column: 5, scope: !2112, inlinedAt: !2123)
!2159 = !DILocation(line: 65, column: 30, scope: !393, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 233, column: 5, scope: !2112, inlinedAt: !2123)
!2161 = !DILocation(line: 66, column: 15, scope: !393, inlinedAt: !2160)
!2162 = !DILocation(line: 67, column: 14, scope: !393, inlinedAt: !2160)
!2163 = !DILocation(line: 69, column: 14, scope: !393, inlinedAt: !2160)
!2164 = !DILocation(line: 240, column: 10, scope: !2107)
!2165 = !DILocation(line: 240, column: 5, scope: !2107)
!2166 = !DILocation(line: 241, column: 1, scope: !2107)
!2167 = distinct !DISubprogram(name: "dictReplace", scope: !368, file: !368, line: 160, type: !2168, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!18, !371, !12, !12}
!2170 = !{!2171, !2172, !2173, !2174, !2175}
!2171 = !DILocalVariable(name: "ht", arg: 1, scope: !2167, file: !368, line: 160, type: !371)
!2172 = !DILocalVariable(name: "key", arg: 2, scope: !2167, file: !368, line: 160, type: !12)
!2173 = !DILocalVariable(name: "val", arg: 3, scope: !2167, file: !368, line: 160, type: !12)
!2174 = !DILocalVariable(name: "entry", scope: !2167, file: !368, line: 161, type: !258)
!2175 = !DILocalVariable(name: "auxentry", scope: !2167, file: !368, line: 161, type: !259)
!2176 = !DILocation(line: 160, column: 30, scope: !2167)
!2177 = !DILocation(line: 160, column: 40, scope: !2167)
!2178 = !DILocation(line: 160, column: 51, scope: !2167)
!2179 = !DILocalVariable(name: "ht", arg: 1, scope: !2180, file: !368, line: 135, type: !371)
!2180 = distinct !DISubprogram(name: "dictAdd", scope: !368, file: !368, line: 135, type: !2168, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2181)
!2181 = !{!2179, !2182, !2183, !2184, !2185}
!2182 = !DILocalVariable(name: "key", arg: 2, scope: !2180, file: !368, line: 135, type: !12)
!2183 = !DILocalVariable(name: "val", arg: 3, scope: !2180, file: !368, line: 135, type: !12)
!2184 = !DILocalVariable(name: "index", scope: !2180, file: !368, line: 136, type: !18)
!2185 = !DILocalVariable(name: "entry", scope: !2180, file: !368, line: 137, type: !258)
!2186 = !DILocation(line: 135, column: 26, scope: !2180, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 165, column: 9, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2167, file: !368, line: 165, column: 9)
!2189 = !DILocation(line: 135, column: 36, scope: !2180, inlinedAt: !2187)
!2190 = !DILocation(line: 135, column: 47, scope: !2180, inlinedAt: !2187)
!2191 = !DILocalVariable(name: "ht", arg: 1, scope: !2192, file: !368, line: 320, type: !371)
!2192 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !368, file: !368, line: 320, type: !1195, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2193)
!2193 = !{!2191, !2194, !2195, !2196}
!2194 = !DILocalVariable(name: "key", arg: 2, scope: !2192, file: !368, line: 320, type: !90)
!2195 = !DILocalVariable(name: "h", scope: !2192, file: !368, line: 321, type: !7)
!2196 = !DILocalVariable(name: "he", scope: !2192, file: !368, line: 322, type: !258)
!2197 = !DILocation(line: 320, column: 32, scope: !2192, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 141, column: 18, scope: !2199, inlinedAt: !2187)
!2199 = distinct !DILexicalBlock(scope: !2180, file: !368, line: 141, column: 9)
!2200 = !DILocation(line: 320, column: 48, scope: !2192, inlinedAt: !2198)
!2201 = !DILocalVariable(name: "ht", arg: 1, scope: !2202, file: !368, line: 295, type: !371)
!2202 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !368, file: !368, line: 295, type: !2113, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2203)
!2203 = !{!2201}
!2204 = !DILocation(line: 295, column: 38, scope: !2202, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 325, column: 9, scope: !2206, inlinedAt: !2198)
!2206 = distinct !DILexicalBlock(scope: !2192, file: !368, line: 325, column: 9)
!2207 = !DILocation(line: 298, column: 13, scope: !2208, inlinedAt: !2205)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !368, line: 298, column: 9)
!2209 = !DILocation(line: 298, column: 18, scope: !2208, inlinedAt: !2205)
!2210 = !DILocation(line: 298, column: 9, scope: !2202, inlinedAt: !2205)
!2211 = !DILocation(line: 300, column: 13, scope: !2212, inlinedAt: !2205)
!2212 = distinct !DILexicalBlock(scope: !2202, file: !368, line: 300, column: 9)
!2213 = !DILocation(line: 300, column: 18, scope: !2212, inlinedAt: !2205)
!2214 = !DILocation(line: 300, column: 9, scope: !2202, inlinedAt: !2205)
!2215 = !DILocation(line: 301, column: 39, scope: !2212, inlinedAt: !2205)
!2216 = !DILocation(line: 301, column: 9, scope: !2212, inlinedAt: !2205)
!2217 = !DILocation(line: 0, scope: !2206, inlinedAt: !2198)
!2218 = !DILocation(line: 325, column: 33, scope: !2206, inlinedAt: !2198)
!2219 = !DILocation(line: 325, column: 9, scope: !2192, inlinedAt: !2198)
!2220 = !DILocation(line: 328, column: 9, scope: !2192, inlinedAt: !2198)
!2221 = !DILocation(line: 328, column: 36, scope: !2192, inlinedAt: !2198)
!2222 = !DILocation(line: 321, column: 18, scope: !2192, inlinedAt: !2198)
!2223 = !DILocation(line: 330, column: 14, scope: !2192, inlinedAt: !2198)
!2224 = !DILocation(line: 330, column: 10, scope: !2192, inlinedAt: !2198)
!2225 = !DILocation(line: 322, column: 16, scope: !2192, inlinedAt: !2198)
!2226 = !DILocation(line: 332, column: 13, scope: !2227, inlinedAt: !2198)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !368, line: 332, column: 13)
!2228 = distinct !DILexicalBlock(scope: !2192, file: !368, line: 331, column: 15)
!2229 = !DILocation(line: 0, scope: !2228, inlinedAt: !2198)
!2230 = !DILocation(line: 331, column: 5, scope: !2192, inlinedAt: !2198)
!2231 = !DILocation(line: 332, column: 13, scope: !2228, inlinedAt: !2198)
!2232 = !DILocation(line: 334, column: 18, scope: !2228, inlinedAt: !2198)
!2233 = distinct !{!2233, !2234, !2235}
!2234 = !DILocation(line: 331, column: 5, scope: !2192)
!2235 = !DILocation(line: 335, column: 5, scope: !2192)
!2236 = !DILocation(line: 136, column: 9, scope: !2180, inlinedAt: !2187)
!2237 = !DILocation(line: 141, column: 42, scope: !2199, inlinedAt: !2187)
!2238 = !DILocation(line: 141, column: 9, scope: !2180, inlinedAt: !2187)
!2239 = !DILocation(line: 145, column: 13, scope: !2180, inlinedAt: !2187)
!2240 = !DILocation(line: 146, column: 23, scope: !2180, inlinedAt: !2187)
!2241 = !DILocation(line: 146, column: 19, scope: !2180, inlinedAt: !2187)
!2242 = !DILocation(line: 146, column: 12, scope: !2180, inlinedAt: !2187)
!2243 = !DILocation(line: 146, column: 17, scope: !2180, inlinedAt: !2187)
!2244 = !DILocation(line: 147, column: 22, scope: !2180, inlinedAt: !2187)
!2245 = !DILocation(line: 150, column: 5, scope: !2246, inlinedAt: !2187)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !368, line: 150, column: 5)
!2247 = distinct !DILexicalBlock(scope: !2180, file: !368, line: 150, column: 5)
!2248 = !{!1164, !311, i64 8}
!2249 = !DILocation(line: 150, column: 5, scope: !2247, inlinedAt: !2187)
!2250 = !DILocation(line: 137, column: 16, scope: !2180, inlinedAt: !2187)
!2251 = !DILocation(line: 151, column: 5, scope: !2252, inlinedAt: !2187)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !368, line: 151, column: 5)
!2253 = distinct !DILexicalBlock(scope: !2180, file: !368, line: 151, column: 5)
!2254 = !{!1164, !311, i64 16}
!2255 = !DILocation(line: 151, column: 5, scope: !2253, inlinedAt: !2187)
!2256 = !DILocation(line: 152, column: 9, scope: !2180, inlinedAt: !2187)
!2257 = !DILocation(line: 152, column: 13, scope: !2180, inlinedAt: !2187)
!2258 = !DILocation(line: 165, column: 9, scope: !2167)
!2259 = !DILocation(line: 243, column: 34, scope: !1148, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 168, column: 13, scope: !2167)
!2261 = !DILocation(line: 243, column: 50, scope: !1148, inlinedAt: !2260)
!2262 = !DILocation(line: 247, column: 13, scope: !1159, inlinedAt: !2260)
!2263 = !DILocation(line: 247, column: 18, scope: !1159, inlinedAt: !2260)
!2264 = !DILocation(line: 0, scope: !2167)
!2265 = !DILocation(line: 247, column: 9, scope: !1148, inlinedAt: !2260)
!2266 = !DILocation(line: 248, column: 9, scope: !1148, inlinedAt: !2260)
!2267 = !DILocation(line: 248, column: 36, scope: !1148, inlinedAt: !2260)
!2268 = !DILocation(line: 245, column: 18, scope: !1148, inlinedAt: !2260)
!2269 = !DILocation(line: 249, column: 14, scope: !1148, inlinedAt: !2260)
!2270 = !DILocation(line: 249, column: 10, scope: !1148, inlinedAt: !2260)
!2271 = !DILocation(line: 244, column: 16, scope: !1148, inlinedAt: !2260)
!2272 = !DILocation(line: 251, column: 13, scope: !1172, inlinedAt: !2260)
!2273 = !DILocation(line: 0, scope: !1173, inlinedAt: !2260)
!2274 = !DILocation(line: 250, column: 5, scope: !1148, inlinedAt: !2260)
!2275 = !DILocation(line: 251, column: 13, scope: !1173, inlinedAt: !2260)
!2276 = !DILocation(line: 253, column: 18, scope: !1173, inlinedAt: !2260)
!2277 = !DILocation(line: 0, scope: !1148, inlinedAt: !2260)
!2278 = !DILocation(line: 161, column: 16, scope: !2167)
!2279 = !DILocation(line: 161, column: 23, scope: !2167)
!2280 = !DILocation(line: 175, column: 16, scope: !2167)
!2281 = !DILocation(line: 176, column: 5, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !368, line: 176, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2167, file: !368, line: 176, column: 5)
!2284 = !DILocation(line: 176, column: 5, scope: !2283)
!2285 = !DILocation(line: 177, column: 5, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2167, file: !368, line: 177, column: 5)
!2287 = !DILocation(line: 177, column: 5, scope: !2167)
!2288 = !DILocation(line: 179, column: 1, scope: !2167)
!2289 = distinct !DISubprogram(name: "dictExpand", scope: !368, file: !368, line: 88, type: !2290, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!18, !371, !26}
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2302, !2303}
!2293 = !DILocalVariable(name: "ht", arg: 1, scope: !2289, file: !368, line: 88, type: !371)
!2294 = !DILocalVariable(name: "size", arg: 2, scope: !2289, file: !368, line: 88, type: !26)
!2295 = !DILocalVariable(name: "n", scope: !2289, file: !368, line: 89, type: !372)
!2296 = !DILocalVariable(name: "realsize", scope: !2289, file: !368, line: 90, type: !26)
!2297 = !DILocalVariable(name: "i", scope: !2289, file: !368, line: 90, type: !26)
!2298 = !DILocalVariable(name: "he", scope: !2299, file: !368, line: 107, type: !258)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !368, line: 106, column: 52)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !368, line: 106, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2289, file: !368, line: 106, column: 5)
!2302 = !DILocalVariable(name: "nextHe", scope: !2299, file: !368, line: 107, type: !258)
!2303 = !DILocalVariable(name: "h", scope: !2304, file: !368, line: 114, type: !7)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !368, line: 113, column: 19)
!2305 = !DILocation(line: 88, column: 29, scope: !2289)
!2306 = !DILocation(line: 88, column: 47, scope: !2289)
!2307 = !DILocalVariable(name: "size", arg: 1, scope: !2308, file: !368, line: 306, type: !26)
!2308 = distinct !DISubprogram(name: "_dictNextPower", scope: !368, file: !368, line: 306, type: !2309, isLocal: true, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!26, !26}
!2311 = !{!2307, !2312}
!2312 = !DILocalVariable(name: "i", scope: !2308, file: !368, line: 307, type: !26)
!2313 = !DILocation(line: 306, column: 51, scope: !2308, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 90, column: 30, scope: !2289)
!2315 = !DILocation(line: 307, column: 19, scope: !2308, inlinedAt: !2314)
!2316 = !DILocation(line: 309, column: 14, scope: !2317, inlinedAt: !2314)
!2317 = distinct !DILexicalBlock(scope: !2308, file: !368, line: 309, column: 9)
!2318 = !DILocation(line: 309, column: 9, scope: !2308, inlinedAt: !2314)
!2319 = !DILocation(line: 0, scope: !2320, inlinedAt: !2314)
!2320 = distinct !DILexicalBlock(scope: !2308, file: !368, line: 310, column: 14)
!2321 = !DILocation(line: 311, column: 15, scope: !2322, inlinedAt: !2314)
!2322 = distinct !DILexicalBlock(scope: !2320, file: !368, line: 311, column: 13)
!2323 = !DILocation(line: 313, column: 11, scope: !2320, inlinedAt: !2314)
!2324 = !DILocation(line: 311, column: 13, scope: !2320, inlinedAt: !2314)
!2325 = distinct !{!2325, !2326, !2327}
!2326 = !DILocation(line: 310, column: 5, scope: !2308)
!2327 = !DILocation(line: 314, column: 5, scope: !2308)
!2328 = !DILocation(line: 0, scope: !2322, inlinedAt: !2314)
!2329 = !DILocation(line: 90, column: 19, scope: !2289)
!2330 = !DILocation(line: 94, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2289, file: !368, line: 94, column: 9)
!2332 = !DILocation(line: 94, column: 18, scope: !2331)
!2333 = !DILocation(line: 94, column: 9, scope: !2289)
!2334 = !DILocation(line: 97, column: 23, scope: !2289)
!2335 = !DILocation(line: 97, column: 33, scope: !2289)
!2336 = !DILocation(line: 89, column: 10, scope: !2289)
!2337 = !DILocation(line: 99, column: 26, scope: !2289)
!2338 = !DILocation(line: 100, column: 15, scope: !2289)
!2339 = !DILocation(line: 100, column: 13, scope: !2289)
!2340 = !DILocation(line: 105, column: 18, scope: !2289)
!2341 = !DILocation(line: 90, column: 52, scope: !2289)
!2342 = !DILocation(line: 106, column: 25, scope: !2300)
!2343 = !DILocation(line: 106, column: 19, scope: !2300)
!2344 = !DILocation(line: 0, scope: !2289)
!2345 = !DILocation(line: 106, column: 30, scope: !2300)
!2346 = !DILocation(line: 106, column: 5, scope: !2301)
!2347 = !DILocation(line: 109, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2299, file: !368, line: 109, column: 13)
!2349 = !DILocation(line: 109, column: 13, scope: !2348)
!2350 = !DILocation(line: 109, column: 26, scope: !2348)
!2351 = !DILocation(line: 109, column: 13, scope: !2299)
!2352 = !DILocation(line: 107, column: 20, scope: !2299)
!2353 = !DILocation(line: 116, column: 26, scope: !2304)
!2354 = !DILocation(line: 107, column: 25, scope: !2299)
!2355 = !DILocation(line: 118, column: 17, scope: !2304)
!2356 = !DILocation(line: 114, column: 26, scope: !2304)
!2357 = !DILocation(line: 119, column: 24, scope: !2304)
!2358 = !DILocation(line: 119, column: 22, scope: !2304)
!2359 = !DILocation(line: 120, column: 24, scope: !2304)
!2360 = !DILocation(line: 121, column: 21, scope: !2304)
!2361 = !DILocation(line: 113, column: 9, scope: !2299)
!2362 = distinct !{!2362, !2361, !2363}
!2363 = !DILocation(line: 124, column: 9, scope: !2299)
!2364 = !DILocation(line: 106, column: 48, scope: !2300)
!2365 = distinct !{!2365, !2346, !2366}
!2366 = !DILocation(line: 125, column: 5, scope: !2301)
!2367 = !DILocation(line: 126, column: 5, scope: !2289)
!2368 = !DILocation(line: 127, column: 14, scope: !2289)
!2369 = !DILocation(line: 127, column: 5, scope: !2289)
!2370 = !DILocation(line: 130, column: 11, scope: !2289)
!2371 = !DILocation(line: 131, column: 5, scope: !2289)
!2372 = !DILocation(line: 132, column: 1, scope: !2289)
